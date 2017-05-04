(in-package :sparser)

;;; Find terms in a TRIPS terms list file.

(defun split-on-tab (string)
  (declare (string string) (optimize speed))
  (loop for i = 0 then (1+ j)
        for j = (position #\Tab string :start i)
        collect (subseq string i j)
        while j))

(defun split-on-curly-tab (string)
  (declare (string string))
  (loop for item in 
          (cl-ppcre::split "[	{]" string)
          collect (string-trim " " item)))
  

(defun split-terms (string)
  (declare (string string) (optimize speed))
  (loop for i = 0 then (1+ j)
        for j = (position-if-not #'alphanumericp string :start i)
        collect (subseq string i j)
        while j))

(defun read-terms (terms-file)
  (with-open-file (stream terms-file)
    (loop with terms = (make-hash-table :test #'equal)
          for line = (read-line stream nil)
          while line
          do (let ((fields (split-on-curly-tab line)))
               (push (cdr fields) (gethash (car fields) terms)))
          finally (return terms))))

(defvar *terms-file*
  (probe-file "~/projects/cwc-integ/trips/bob/src/TextTagger/drum-terms.tsv"))

(defparameter *terms*
  (when *terms-file*
    (format t "Reading terms from ~s" *terms-file*)
    (time (read-terms *terms-file*))))

(defun get-term (string &optional (terms *terms*) plurals)
  (declare (string string) (hash-table terms))
  (or (gethash string terms)
      (gethash (string-capitalize string) terms)
      (gethash (string-downcase string) terms)
      (and plurals
           (char-equal #\s (char string (1- (length string))))
           (get-term (subseq string 0 (1- (length string))) terms))))

(defun get-terms (string &rest args)
  (values-list (mapcar (lambda (string) (apply #'get-term string args))
                       (split-terms string))))

(defparameter *all-std-prot-comp-names-ht* (make-hash-table :size 150000 :test #'equalp))
(defun load-all-std-prot-comp-names-ht ()
  (declare (special *all-std-prot-comp-names* *all-std-prot-comp-names-ht*))
  (unless (and (boundp '*all-std-prot-comp-names*)
               *all-std-prot-comp-names*)
    (load "sparser:bio-not-loaded;all-protein-wds.lisp"))
  (unless (> (hash-table-count *all-std-prot-comp-names-ht*) 0)
    (loop for name in *all-std-prot-comp-names*
          do (setf (gethash name *all-std-prot-comp-names-ht*) t))))

(defparameter *simplified-fries-prot-uid* nil)
(defun load-simplified-fries-prot-uid ()
  (declare (special *simplified-fries-prot-uid* *simplified-fries-entities*))
  (unless (and (boundp '*simplified-fries-entities*)
               *simplified-fries-entities*)
    (load "sparser:bio-not-loaded;simplified-fries-entities.lisp"))
  (unless *simplified-fries-prot-uid*
    (length (setq *simplified-fries-prot-uid* 
                  (remove-duplicates 
                   (loop for item in *simplified-fries-entities*
                        when (and (member (fourth item) 
                                     '("gene" "gene-or-gene-product" "protein" "family") 
                                     :test #'equal)
                                  (equal (second item) "uniprot"))
                        collect (list (third item) (first item)))
                   :test #'equalp)))))

(defparameter *unknown-simplified-fries-prot-uid* nil)
(defun find-unknown-simplified-fries-prot-uid ()
  (declare (special *simplified-fries-prot-uid* *unknown-simplified-fries-prot-uid* *all-std-prot-comp-names-ht*))
  (unless *unknown-simplified-fries-prot-uid*
    (length (setq *unknown-simplified-fries-prot-uid* 
                   (loop for prot-uid in *simplified-fries-prot-uid* 
                         unless (gethash (car prot-uid) *all-std-prot-comp-names-ht*) 
                         collect prot-uid)))))

(defparameter *fries-prot-uid-with-trips-def* nil)
(defparameter *no-trips-fries-prot-uid* nil)
(defun find-fries-prot-uid-with-trips-def ()
  (declare (special *fries-prot-uid-with-trips-def* *unknown-simplified-fries-prot-uid* *no-trips-fries-prot-uid*))
  (unless (and *fries-prot-uid-with-trips-def*
               *no-trips-fries-prot-uid*)
    (loop for item in *unknown-simplified-fries-prot-uid* 
          do (if (get-term (car item))
                 (push item *fries-prot-uid-with-trips-def*)
                 (push item *no-trips-fries-prot-uid*)))
    (format t "has trips-def: ~s~%" (length *fries-prot-uid-with-trips-def*))
    (format t "no trips-def: ~s" (length *no-trips-fries-prot-uid*))))

(defun load-precursors-for-match-fries-to-trips ()
  (load-all-std-prot-comp-names-ht)
  (load-simplified-fries-prot-uid)
  (find-unknown-simplified-fries-prot-uid)
  (find-fries-prot-uid-with-trips-def))
;check items with no spaces that were unmatched and run through trips

(defparameter *matched-fries-trips-defs* nil)
(defparameter *unmatched-fries-trips-defs* nil)

(defun match-fries-to-trips (fries-list)
  (load-protein-id-hash-tables) 
  (loop for prot-uid in fries-list
          do (if (search-trips-for-uid prot-uid)
                 (push prot-uid *matched-fries-trips-defs*)
                 (push (list prot-uid (get-term (car prot-uid))) *unmatched-fries-trips-defs*)))
  (format t "matched: ~s~%" (length *matched-fries-trips-defs*))
  (format t "unmatched: ~s" (length *unmatched-fries-trips-defs*)))
  
(defun search-trips-for-uid (prot-uid)
  (loop for alt-list in (get-term (car prot-uid))
        thereis (loop for alt in alt-list
                      thereis (or (search (second prot-uid) alt)
                                  (and (search "HGNC:" alt)
                                       (search (second prot-uid) (gethash alt *hgnc-up-ht*)))))))

(defun matched->file (&optional (file "matched-fries-trips-defs") (matched *matched-fries-trips-defs*))
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;" file ".lisp")
                          :direction :output :if-exists :supersede
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (setq matched (sort
                   (loop for m in matched collect `(define-protein ,(format nil "UP:~a" (second m)) ,(list (car m))))
                   #'string<
                   :key #'second))
    (loop for pair in matched
          do (lc-one-line-print pair stream)))
  file)

(defparameter *fam-unmatched-fries-trips-defs* nil)
(defun find-fam-unmatched-fries-trips-defs ()
  (unless *fam-unmatched-fries-trips-defs*
    (length (setq *fam-unmatched-fries-trips-defs* 
                  (loop for def in *unmatched-fries-trips-defs* 
                        when (loop for alt-list in (second def) 
                                   thereis (loop for alt in alt-list 
                                                 thereis (or (search "XFAM:" alt) (search "FA:" alt))))
                        collect def)))))

(defparameter *no-trips-def-or-match-uids* nil)
(defun find-no-trips-def-or-match-uids ()
  (unless *no-trips-def-or-match-uids*
    (length (setq *no-trips-def-or-match-uids* 
                  (remove-duplicates  
                   (append (mapcar #'second *no-trips-fries-prot-uid*)
                           (mapcar #'cadar *unmatched-fries-trips-defs*))
                   :test #'equal)))))

(defun unique-no-trips-def-uids->file (&optional (file "no-trips-def-or-match-uids") (uids *no-trips-def-or-match-uids*))
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;" file ".lisp")
                          :direction :output :if-exists :supersede
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (loop for uid in uids
          do (format stream "~a " uid)))
  file)
