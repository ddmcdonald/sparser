(in-package :sparser)


(asdf::load-system :cl-csv)
(load "~/rxiv-1-500-unknown-words.lisp")
(setq cl-csv::*quote* nil)

(defparameter *drum-hash-table* (make-hash-table :size 2000000 :test #'equalp))

(defparameter *drum-tsvs*
  (cl-csv:read-csv
   (setq *drum-file*
         (probe-file
          "~/projects/cwc-integ/trips/bob/etc/TextTagger/drum-terms.tsv"))
   :separator #\Tab))

(loop for s in *drum-tsvs* do (setf (gethash (car s) *DRUM-HASH-TABLE*) s))

(defparameter *all-upper-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-All-Upper
        when (gethash w *drum-hash-table*) collect w))

(defparameter *all-lower-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-All-Lower
        when (gethash w *drum-hash-table*) collect w))

(defparameter *all-mixedcase-drum-terms*
  (loop for w in BIGMECH-RXIV-1-500-MixedCase
        when (gethash w *drum-hash-table*) collect w))

(defparameter *all-bio-entities-drum-terms* (loop for w in  BIO-ENTITY-RXIV-1-500  when (gethash w *drum-hash-table*) collect `(,w ,(gethash w *drum-hash-table*))))

(defparameter *first-name-drum-terms*
  (loop for w in FirstNames when (gethash w *drum-hash-table*) collect w))

(defparameter *last-name-drum-terms*
  (loop for w in LastNames when (gethash w *drum-hash-table*) collect w))

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
(defparameter *non-name-drum* `(,.*all-upper-drum-terms* ,.*all-lower-drum-terms* ,.*all-mixedcase-drum-terms*))

(defun make-split-defs-file (&optional (file "covid-rxiv-defs;rxiv-1-500-defs-divided.lisp"))
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;" file)
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

(defun make-get-defs-file (filename &optional (ents (mapcar #'car *non-name-drum*)))
  (with-open-file (stream (concatenate 'string "~/projects/r3/corpus/trips-defs/" filename)
                          :direction :output :if-exists :supersede 
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (let ((filt-ents (loop for ent in ents unless (< (length ent) 3) collect ent)))
      (format stream "(in-package :get-defs)~%~%")
      (format stream "(defparameter *terms*  ~%'~s~%)" filt-ents))))
