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

(defun split-on-curly-tab-parens (string)
  (declare (string string))
  (loop for item in 
          (cl-ppcre::split "[	{()]" string)
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
          do (let* ((fields (split-on-curly-tab line))
                    (wd (car fields)))
               (loop for key
                     in (if (search "-" wd)
                            (list wd (replace-all wd "-" " ") (replace-all wd "-" ""))
                            (list wd))
                     do
                       (push (cdr fields) (gethash key terms))))
          finally (return terms))))



(defvar *terms-file*
  (probe-file "~/projects/cwc-integ/trips/bob/src/TextTagger/drum-terms.tsv"))

(defparameter *names-file*  (probe-file "sparser:bio;up-name.tsv"))

(defun read-uniprot-names ()
  (with-open-file (stream *names-file*)
    (loop with terms = (make-hash-table :test #'equal)
          for line = (read-line stream nil)
          while line
          do (let* ((fields (split-on-curly-tab-parens line))
                    (wd (car fields)))
               (loop for key
                     in (if (search "-" wd)
                            (list wd (replace-all wd "-" " ") (replace-all wd "-" ""))
                            (list wd))
                     do
                       (push (cdr fields) (gethash key terms))))
          finally (return terms))))

(defparameter *terms*
  (when *terms-file*
    (format t "Reading terms from ~s" *terms-file*)
    (time (read-terms *terms-file*))))

(defun get-term (wd &optional (terms *terms*) plurals)
  (let ((strings (if
                  (search "-" wd)
                  (list wd (replace-all wd "-" " ")
                        (replace-all wd "-" "")))))
    (loop for string in strings
          thereis
            (or (gethash string terms)
                (gethash (string-capitalize string) terms)
                (gethash (string-downcase string) terms)
                (and plurals
                     (char-equal #\s (char string (1- (length string))))
                     (get-term (subseq string 0 (1- (length string))) terms))))))

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
                                  (equal (second item) "uniprot")
                                  (not (eq 0 (search "-" (third item))))
                                  (not (cl-ppcre::scan "-$" (third item))))

                        collect (list (third item) (first item)))
                   :test #'equalp)))))

(defparameter *unknown-simplified-fries-prot-uid* nil)
(defun find-unknown-simplified-fries-prot-uid ()
  (declare (special *simplified-fries-prot-uid* *unknown-simplified-fries-prot-uid* *all-std-prot-comp-names-ht*))
  (load-simplified-fries-prot-uid)
  (unless *unknown-simplified-fries-prot-uid*
    (length (setq *unknown-simplified-fries-prot-uid* 
                   (loop for prot-uid in *simplified-fries-prot-uid* 
                         unless (gethash (car prot-uid) *all-std-prot-comp-names-ht*) 
                         collect prot-uid)))))

(defparameter *fries-prot-uid-with-trips-def* nil)
(defparameter *no-trips-fries-prot-uid* nil)
(defun find-fries-prot-uid-with-trips-def ()
  (declare (special *fries-prot-uid-with-trips-def* *unknown-simplified-fries-prot-uid* *no-trips-fries-prot-uid*))
  (find-unknown-simplified-fries-prot-uid)
  (unless (and *fries-prot-uid-with-trips-def*
               *no-trips-fries-prot-uid*)
    (loop for item in *unknown-simplified-fries-prot-uid* 
          do (if (get-term (car item))
                 (push item *fries-prot-uid-with-trips-def*)
                 (push item *no-trips-fries-prot-uid*)))
    (format t "has trips-def: ~s~%" (length *fries-prot-uid-with-trips-def*))
    (format t "no trips-def: ~s" (length *no-trips-fries-prot-uid*))))

(defun load-precursors-for-match-fries-to-trips ()
  (load-protein-id-hash-tables)
  (load-all-std-prot-comp-names-ht)
  (load-simplified-fries-prot-uid)
  (find-unknown-simplified-fries-prot-uid)
  (find-fries-prot-uid-with-trips-def))
  
;check items with no spaces that were unmatched and run through trips

(defparameter *matched-fries-trips-defs* nil)
(defparameter *unmatched-fries-trips-defs* nil)

(defun match-fries-to-trips ()
  (load-protein-id-hash-tables)
  (find-fries-prot-uid-with-trips-def)
  (setq *matched-fries-trips-defs* nil)
  (setq *unmatched-fries-trips-defs* nil)
  (loop for prot-uid in *fries-prot-uid-with-trips-def*
        do (if (search-trips-for-uid prot-uid)
               (push prot-uid *matched-fries-trips-defs*)
               (push (list prot-uid (get-term (car prot-uid))) *unmatched-fries-trips-defs*)))
  (terpri)
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


(defparameter *uniprot-def-ht* nil)
(defun read-uniprot-defs (&optional
                            (defs-file
                                (truename "sparser:bio-not-loaded;uniprotkb-no-trips-def-or-match-uids.tsv")))
  (with-open-file (stream defs-file)
    (let ((terms (make-hash-table :test #'equal)))
      (setq *uniprot-def-ht* terms)
      (loop for line = (read-line stream nil)
            while line
            do (let* ((fields (split-on-tab line))
                      (non-species-fields
                       (loop for wd in
                               (remove-duplicates
                                (loop for i from 1 to 9 as field in fields
                                      append
                                        (remove "" (split-on-curly-tab-parens field) :test #'equal))
                                :test #'equal)
                             append
                               (if (search "-" wd)
                                   (list wd (replace-all wd "-" " ")
                                         (replace-all wd "-" ""))
                                   (list wd)))))
                      
                 (setf  (gethash (car fields) terms) non-species-fields))
            finally (return terms)))))

(defparameter *validated-fries* nil)
(defparameter *validated-fries-defs* nil)
(defparameter *validated-fries-prot-ht* nil)
(defparameter *not-validated-fries* nil)

(defun validate-fries ()
  (read-uniprot-defs)
  (match-fries-to-trips)
  (setq *not-validated-fries* nil)
  (setq *validated-fries*
        (remove-duplicates (copy-list *matched-fries-trips-defs*) :test #'equal))
  (setq *validated-fries-prot-ht* (make-hash-table :size 15000 :test #'equal))
  (loop for pair in *no-trips-fries-prot-uid*
        do
          (if
           (and
              (not (eq 0 (search "-" (car pair))))
              (not (cl-ppcre::scan "-$" (car pair)))
              (or (loop for w in (gethash (second pair) *uniprot-def-ht*)
                        thereis (search (car pair) w :test #'equalp))
                  (and (search "-" (car pair))
                       (let ((hyphen->space (replace-all (car pair) "-" " "))
                             (delete-hyphen (replace-all (car pair) "-" "")))
                         (loop for w in (gethash (second pair) *uniprot-def-ht*)
                               thereis
                                 (or (search hyphen->space w :test #'equalp)
                                     (search delete-hyphen w :test #'equalp)))))))
           (then (push pair *validated-fries*)
                 (pushnew (car pair) (gethash (second pair) *validated-fries-prot-ht*)))
           (push pair *not-validated-fries*)))

  (setq *validated-fries-defs*
        (loop for prot in (hal *validated-fries-prot-ht*)
              collect
                `(define-protein ,(car prot)
                     ,(cdr prot))))
  (format t "~%~%There are ~s validated fries lexical items for ~s proteins in *validated-fries*~%"
          (length *validated-fries*)
          (length *validated-fries-defs*))
  (setq *not-validated-fries* (remove-duplicates *not-validated-fries* :test #'equal))
  (validated-fries-defs->file))


(defun validated-fries-defs->file (&optional (file "validated-fries-proteins") (defs *validated-fries-defs*))
  (with-open-file (stream (concatenate 'string "sparser:bio;" file ".lisp")
                          :direction :output :if-exists :supersede
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (lc-one-line-print `(in-package :sparser) stream)
    (terpri stream)
    (loop for def in (sort defs #'string< :key #'second) 
          do (lc-one-line-print def stream))
    file))

(defun one-line->file (items file &optional (sort-by #'car))
  (with-open-file (stream (concatenate 'string "sparser:bio;" file ".lisp")
                          :direction :output :if-exists :supersede
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (lc-one-line-print `(in-package :sparser) stream)
    (terpri stream)
    (loop for item in (sort items #'string< :key sort-by) 
          do (lc-one-line-print item stream))
    file))

#|
(validate-fries)
(defparameter *nv-fries-ht* (make-hash-table :size 100000 :test #'equal))
(loop for v in *not-validated-fries* do (setf (gethash (car v)*nv-fries-ht*) t))
(loop for f in (directory "/Users/rusty/projects/cwc-integ/sparser/Sparser/code/s/tools/ns-stuff/ns-unknown-rd*.lisp") do (load f))
;;(apropos ' *BIO-ENTITY-HEADS-PHASE3)
(defparameter *unk-vars* nil)
(do-all-symbols (v *unk-vars*) (if (eq 0 (search "*BIO-ENTITY-HEADS-PHASE3" (symbol-name v))) (push v *unk-vars*)))


(defparameter *bad-start-end-chars* 
  )
(defparameter *bad-char-ht* (make-hash-table :test #'equal))
(loop for char-str in 
        '("#" "$" "&" "'" "*" "+" "," "." "/"  ":" "=" "@"  "\\" "^" "_" "`" "|" "~" "£" "§" "©" "«" "­" "®" "°" "±" "´" "¶" "·" "º" "¼" "½" "¾"
          "¿" "Á" "Ä" "Å" "É" "Î" "Ö" "×" "Ø" "Ü" "ß" "à" "á" "â" "å" "é" "ê" "í" "ö"
          "÷" "Ć" "Č" "Ē" "ĥ" "Ī" "ĸ" "Ŧ" "Ɣ" "Ƙ" "Ǻ"  "ʹ" "˂" "˚" "˜" "̀"
          "̄" "̧" "͂" "΄"  "ϖ"   " " " " " " " " "‐" "‑" "‒" "–" "—" "―" "‘" "’" "„"
          "•" "…" " " " " "″" "‹" "⁄" "₂" "€" "™" "→" "↓" "↔" "∂" "∆" "∈" "∊" "−" "∙"
          "∧" "∶" "∷" "∼" "∽" "≅" "≈" "≠" "≤" "≥" "≦" "≧" "≪" "≫" "⊣" "⋅" "⋙" "〈" "⍺"
          "│" "□" "△" "▵" "▼" "●" "⩽" "⩾" "　" "、" "。" "与" "且" "信" "和" "因" "并" "患" "曲"
          "期" "治" "研" "能" "ﬀ" "ﬁ" "ﬂ" "（" "，")
do (setf (gethash char-str *bad-char-ht*) t))
(length (setq *be-wds* 
              (loop for wd in
                      (sort
                       (remove-duplicates
                        (loop for v in *unk-vars* when (boundp v) append (eval v))
                        :test #'equal) #'string<)
                      when  (and (not (eq 0 (search "-" wd))) 
                                 (not (cl-ppcre::scan "-$" wd))
                                 (not (cl-ppcre::scan "p[A-Z]" wd))
                                 (not (gethash (subseq wd 0 1) *bad-char-ht*))
                                 (not (search "/" wd))
                                 (not (eq 0 (search "3." wd)))
                                 (not (eq 0 (search "2." wd)))
                                 (not (eq 0 (search "1." wd)))
                                 (not (eq 0 (search "0." wd)))
                                 (not (eq 0 (search "which " wd)))
                                 (not (eq 0 (search "these " wd)))
                                 (not (gethash (subseq wd (1- (length wd))) *bad-char-ht*)))
                      collect wd)))

(length (setq *fries-unk-wds* (loop for w in *be-wds* when (gethash w *nv-fries-ht*) collect w)))
(length (setq *tterms* (loop for wd in *be-wds* when (get-term wd *terms* t) collect wd)))
(loop for term in *tterms* 
          when (loop for entry in (get-term term *terms* t) thereis (search "UP:" (second entry)))
          collect 
            (let ((up-id (loop for entry in (get-term term *terms* t) 
                                                               when (search "UP:" (second entry))
                                                               do (return (second entry)))))
              `(define-protein ,(subseq up-id 0 (search " " up-id))
                   (,term))))


|#
