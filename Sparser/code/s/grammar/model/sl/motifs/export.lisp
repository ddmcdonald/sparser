;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "export"
;;;  Module: "grammar/model/sl/motifs/
;;; version: January 2022

;; Initiated 1//12/22 for 'exporting' the results on the articles,
;; following the model in drivers/sinks/export.lisp

(in-package :sparser)

#| This is to feed the :article-json case in
analysis-core-return-value => drivers/sinks/return-value
|#


(defparameter *article-results-stream* *standard-output*
  "Compare to *sentence-results-stream* in objects/doc/save-doc-semantics.
   Used by pp-json to emit the json expression that encodes an article's
   motif results. Bound to a file stream by analyze-acumen-file..")

(defun acumen-output-on ()
  (declare (special *return-a-value* *what-value-to-return*))
  (setq *return-a-value* t
        *what-value-to-return* :article-json))

(defun acumen-output-off ()
  (declare (special *return-a-value*))
  (setq *return-a-value* nil))


(defgeneric emit-acumen-results (article-designator)
  (:documentation "Given the article object determined by
   the article designator, either an actual article or a number
   to retrieve it from list of processed articles, package the
   article's results into an sexp, form the json equivalent
   of that sexp, and send the json express through the
   article results stream.")
  
  (:method ((a article))
    (declare (special *article-results-stream*))
    (let ((sexp (json-format a)))
      (format *article-results-stream* "~&~%")
      (pp-sexp-to-json sexp t *article-results-stream*)))
  
  (:method ((designator symbol))
    (unless (eq designator :current)
      (error "Don't know how to interpret the article designator ~a"
             designator))
    (let ((a (article)))
      (unless (typep a 'article)
        (error "The article function didn't return an article.~
              ~%It returned ~a" a))
      (emit-acumen-results a)))

  (:method ((id integer))
    (let ((a (acumen-article id)))
      (when a
        (emit-acumen-results a)))))
                                 


;;----- clean article's location, ...

(defun remove-base-from-file-location (article)
  (declare (special *acumen-base*))
  (let* ((pathname (article-location article))
         (namestring (namestring pathname))
         (offset (length *acumen-base*)))
    (subseq namestring offset)))


;;---- json-format

(defgeneric json-format (object)
  (:documentation "Return a populated sexp (or a string) that has the
    information about the object that we want to include in the JSON.
    The returned sexp should be suitable for passing to sexp-to-json")

  (:method ((a article))
    (let* ((edge-records (collect-edge-records a))
           (record-json (loop for r in edge-records
                           collect (json-format r))))
      (with-slots (title date) a
        `(;; (:article-id . ,title)
          (:name . ,(name a))
          (:file . ,(remove-base-from-file-location a))
          (:analyzed . ,date)
          (:mentions ,@record-json)))))
  
  (:method ((r edge-record))
    "modeled on index-card in r3:code/evaluation/make-index-card.liap"
    (with-slots (spotted-string configuration indexes top-string form-labels) r
      `((:string . ,spotted-string)
        (:start . ,(car indexes))
        (:end . ,(cdr indexes))
        (:configuration . ,(symbol-name configuration))
        (:enclosing-string . ,top-string)
        (:context . ,(loop for sym in form-labels
                        collect (symbol-name sym)))) 
        )))



;;----- collect edge records

(defgeneric collect-edge-records (article)
  (:documentation "Collect all the germaine edge-record objects in the article.
   For the example about there will be six of them.")
  (:method ((a article))
    (let* ((contents (contents a))
           (group-instances (germaine-items contents)))
      (loop for note-group-instance in group-instances
         append (let* ((note-entries (note-instances note-group-instance))
                       (records               
                        (loop for note-entry in note-entries
                           append (text-strings note-entry))))
                  records)))))


#|sp> (run-specific-acumen-file 783 :quiet t :motific t :skip t)
783. "terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town"
468 words.  Time to parse: 118 msec  3,966.1 words/second
Parsing coverage: 5 (1 edge), 10 (2-5), 13 (> 5)
vague-names: 25  places: 10  identified-names: 8  chupacabra: 7  quantities: 4  
time: 3  brackets: 2  verbs: 2  
Functional categorizations for 6 out of 6 instances
  (subject 4)  (isolated-proper 1)  (np-head 1) 

sp> (collect-edge-records (article))
(#<695> #<557> #<487> #<294> #<183> #<71>) |#




