(in-package :sparser)


(asdf::load-system :cl-csv)
(setq cl-csv::*quote* nil)

(defparameter *drum-hash-table* (make-hash-table :size 2000000 :test #'equalp))

(defparameter *drum-file* nil)
(defparameter *drum-tsvs*
  (cl-csv:read-csv
   (setq *drum-file*
         (probe-file
          "~/projects/cwc-integ/trips/bob/etc/TextTagger/drum-terms.tsv"))
   :separator #\Tab))

(loop for s in *drum-tsvs* do (setf (gethash (car s) *DRUM-HASH-TABLE*) s))

(defparameter *already-seen-string* (make-hash-table :size 2000000 :test #'equal))

;;(load "~/rxiv-1-500-unknown-words.lisp")
(defparameter *all-upper-drum-terms* nil)
(defparameter *all-lower-drum-terms* nil)
(defparameter *all-mixedcase-drum-terms* nil)
(defparameter *not-in-drum* nil)
(defparameter *has-diacritics* nil) ;; filtering these out as likely non-english so we don't get a bunch of trips defs for "misspellings" that aren't actually english - obviously occasionally english does adopt words with accents but this is a broad brush

(defun has-diacritics (string)
  (loop for char in '("à" "á" "â" "å" "ç" "é" "è" "ê" "ë" "e͒" "î" "ı" "ï" "í" "ñ" "ó" "ô" "ú" "ù" "û" "ü" "À" "Á" "Â" "Ã" "Ä" "É" "Î" "Ò" "Ó" "Ç" "ğ" "Š" "Ž" "č" "ć" "§" "Ô" "Õ" "ö" "å" "ø")
        thereis (search char string :test #'equalp)))

(defun get-drum-defs (terms)
  (loop for w in terms
          #|(car ;; currently has an extra layer because of mistake
           (symbol-value (intern (string-upcase str-case)
                                        ;(format nil "BIGMECH-~a~a" set-id case))
                                       ;(format nil "~a~a" case set-id))
                                      (find-package :sp))))|#
        unless (gethash w *already-seen-string*)
          do (setf (gethash w *already-seen-string*) t)
          if (gethash w *drum-hash-table*)
             collect `(,w ,(gethash w *drum-hash-table*))
          else
             do (if (has-diacritics w)
                    (push w *has-diacritics*)
                    (push w *not-in-drum*))
         end))

(defun process-bio-entities (bio-ent-list)
  (declare (special *undef-ns*))
  (ns-unknown-items nil bio-ent-list)
  (ns-unknown-rd-items)
  (remove-predef-ns)
  *undef-ns*)

(defun load-unknowns-file-and-set-up-vars (file &key not-in-ns set-id (reset-vars t))
  ;; not-in-ns says to look for the file by a full path rather than just the name in the ns-stuff folder
  ;; set-id is the part of the file name that shows up in the middle of the defvars (between "BIGMECH-" and "-All-Upper" for example)

  (when reset-vars
    (setq *All-Upper-Unknown-Words* nil)
    (setq *All-Lower-Unknown-Words* nil)
    (setq *MixedCase-Unknown-Words* nil))
  (let ((*Comlex-Words* nil)) ;; currently this is an empty hashtable and the automated files are trying to append as though it's a list
  (load (if not-in-ns
            file
            (concatenate 'string "sparser:tools;ns-stuff;" file ".lisp")))
  (unless set-id
    (if (and (null not-in-ns) (search "unknown-words" file :test #'equalp))
        (cond ((eq 0 (search "unknown-words-" file :test #'equalp))
               (setq set-id (subseq file 14)))
              ((search "-unknown-words" file :test #'equalp)
               (setq set-id (subseq file 0 (- (length file) 14))))
              (t
               (break "please provide set-id")))
        (break "please provide set-id")))
  (set-up-vars set-id)
  ))

(defun set-up-vars (set-id)
  (setq *all-upper-drum-terms* (get-drum-defs (car *All-Upper-Unknown-Words*)));set-id "-All-Upper"))
  (setq *all-lower-drum-terms* (get-drum-defs  (car *All-Lower-Unknown-Words*)));;set-id "-All-Lower"))
  (setq *all-mixedcase-drum-terms* (get-drum-defs  (car *MixedCase-Unknown-Words*)));;set-id "-MixedCase"))
  (setq *all-bio-ent-drum-terms* (get-drum-defs
                                  (process-bio-entities
                                   (car (symbol-value (intern (string-upcase
                                                               (format nil "BIO-ENTITY-~a" set-id))
                                                              (find-package :sp)))))))
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;covid-rxiv-defs;"
                                       set-id "-drum-groundings.lisp")
                          :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
      (format stream "(in-package :sparser)~%~%")
      (format stream "(defparameter *all-upper-drum-terms* ~%'~s~%)~%~%" *all-upper-drum-terms*)
      (format stream "(defparameter *all-lower-drum-terms* ~%'~s~%)~%~%" *all-lower-drum-terms*)
      (format stream "(defparameter *all-mixedcase-drum-terms* ~%'~s~%)~%~%" *all-mixedcase-drum-terms*)
      (format stream "(defparameter *all-bio-ent-drum-terms* ~%'~s~%)~%~%" *all-bio-ent-drum-terms*)
      ))


#+ignore
(defparameter *all-upper-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-All-Upper
        when (gethash w *drum-hash-table*) collect w))

#+ignore
(defparameter *all-lower-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-All-Lower
        when (gethash w *drum-hash-table*) collect w))

#+ignore
(defparameter *all-mixedcase-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-MixedCase
        when (gethash w *drum-hash-table*) collect w))

#+ignore
(defparameter *all-bio-entities-drum-terms*
  (loop for w in  BIO-ENTITY-RXIV-1-500
        when (gethash w *drum-hash-table*) collect `(,w ,(gethash w *drum-hash-table*))))

#+ignore(defparameter *first-name-drum-terms*
  (loop for w in FirstNames when (gethash w *drum-hash-table*) collect w))
#+ignore
(defparameter *last-name-drum-terms*
  (loop for w in LastNames when (gethash w *drum-hash-table*) collect w))
#+ignore
(with-open-file (stream "sparser:bio-not-loaded;covid-rxiv-defs;rxiv-1-500-drum-groundings.lisp"
                            :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
      (format stream "(in-package :sparser)~%~%")
      (format stream "(defparameter *all-upper-drum-terms* ~%'~s~%)~%~%"
              (mapcar #'(lambda(x) `(,x ,(gethash x *drum-hash-table*))) *all-upper-drum-terms*))
      (format stream "(defparameter *all-lower-drum-terms* ~%'~s~%)~%~%"
              (mapcar #'(lambda(x) `(,x ,(gethash x *drum-hash-table*))) *all-lower-drum-terms*))
      (format stream "(defparameter *all-mixedcase-drum-terms* ~%'~s~%)~%~%"
              (mapcar #'(lambda(x) `(,x ,(gethash x *drum-hash-table*))) *all-mixedcase-drum-terms*))
      (format stream "(defparameter *first-name-drum-terms* ~%'~s~%)~%~%"
              (mapcar #'(lambda(x) `(,x ,(gethash x *drum-hash-table*))) *first-name-drum-terms*))
      (format stream "(defparameter *last-name-drum-terms* ~%'~s~%)~%~%"
              (mapcar #'(lambda(x) `(,x ,(gethash x *drum-hash-table*))) *last-name-drum-terms*)))

;; as dad about the extracted by morphology and default morphology lists


#+ignore
(load "sparser:bio-not-loaded;rxiv-1-500-drum-groundings.lisp")

(defun capitalized? (string)
  (and (upper-case-p (char string 0))
       (every #'lower-case-p (subseq string 1))))

(defun split-defs (terms)
  (let (short-defs good-defs good-ncit-defs good-multi-defs single-defs ncit-defs multi-defs)
  (loop for item in terms
        as term = (car item)
        as def = (second item)
          do (cond ((< (length term) 3)
                    (push item short-defs))
                   ((or (equal term (second def))
                        (and (capitalized? term) ;; might just be sentence beginning, etc
                             (equal (string-downcase term) (second def))))
                    (if (eq (length def) 5)
                        (if (eq 0 (search "NCIT" (third def) :test #'equal))
                            (push item good-ncit-defs)
                            (push item good-defs))
                        (push item good-multi-defs)))
                   ((eq (length def) 5)
                    (if (eq 0 (search "NCIT" (third def) :test #'equal))
                            (push item ncit-defs)
                            (push item single-defs)))
                   (t (push item multi-defs))))
  (values short-defs good-defs good-ncit-defs good-multi-defs single-defs ncit-defs multi-defs)))

;; not first/last names
(defparameter *non-name-drum* `(,.*all-upper-drum-terms* ,.*all-lower-drum-terms* ,.*all-mixedcase-drum-terms* ,.*all-bio-ent-drum-terms*))

(defun make-split-defs-file (&optional (file "rxiv-1-500-defs-divided.lisp"))
  (unless *non-name-drum*
    (setq *non-name-drum* `(,.*all-upper-drum-terms* ,.*all-lower-drum-terms* ,.*all-mixedcase-drum-terms*)))
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;covid-rxiv-defs;" file)
                          :direction :output :if-exists :supersede 
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (format stream "(in-package :sparser)~%~%")
    (multiple-value-bind (short-defs good-defs good-ncit-defs good-multi-defs single-defs ncit-defs multi-defs)
        (split-defs *non-name-drum*)
      (format stream "(defparameter *good-defs* ~%'~s~%)~%~%" good-defs)
    (format stream "(defparameter *good-ncit-defs* ~%'~s~%)~%~%" good-ncit-defs)
    (format stream "(defparameter *good-multi-defs* ~%'~s~%)~%~%" good-multi-defs)
    (format stream "(defparameter *single-defs* ~%'~s~%)~%~%" single-defs)
    (format stream "(defparameter *ncit-defs* ~%'~s~%)~%~%" ncit-defs)
    (format stream "(defparameter *multi-defs* ~%'~s~%)~%~%" multi-defs)
    (format stream "(defparameter *short-defs* ~%'~s~%)~%~%" short-defs)))
  )

(defun make-get-defs-file (filename &optional (ents (mapcar #'car *non-name-drum*)))
  (with-open-file (stream (concatenate 'string "~/projects/r3/corpus/trips-defs/" filename)
                          :direction :output :if-exists :supersede 
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (let ((filt-ents (loop for ent in ents unless (< (length ent) 3) collect ent)))
      (format stream "(in-package :get-defs)~%~%")
      (format stream "(defparameter *terms*  ~%'~s~%)" filt-ents))))

