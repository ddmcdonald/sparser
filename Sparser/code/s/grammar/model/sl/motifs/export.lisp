;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "export"
;;;  Module: "grammar/model/sl/motifs/
;;; version: January 2022

;; Initiated 1//12/22 for 'exporting' the results on the articles,
;; following the model in drivers/sinks/export.lisp

(in-package :sparser)

#| This is to feed the :export case (or a new cousin of it) in
analysis-core-return-value => drivers/sinks/return-value

We use something like the type-specific 'export' function in
drivers/sinks/export, though modernized to use methods and following
the data structures of word-spotting rather than raw Sparser chart
and Krisp structure.

1/17/22
We write one JSON file per article. It's what would be returned.
This entails
  1. Assembling the sexp that defines the content
  2. Passing that through a json converter. R3 cards were handled
     by json::encode-json-to-string. 
  3. The JSON converter send their output to a stream. We could
     set up a system of file names and write to them, at least for
     examples for Victor to consider.
|#


(defparameter *article-results-stream* *standard-output*
  "Compare to *sentence-results-stream* in objects/doc/save-doc-semantics.
   Used by pp-json to emit the json expression that encodes an article's
   motif results. Rebind as needed.")

(defun acumen-output-on () ; give it a stream input?
  (declare (special *return-a-value* *what-value-to-return*))
  (setq *return-a-value* t
        *what-value-to-return* :article-json))

(defun acumen-output-off ()
  (declare (special *return-a-value*))
  (setq *return-a-value* nil))


(defgeneric emit-acumen-results (article-designator)
  (:documentation "Given the article object determined by
   the article designator (either an actual article or a number
   to retrieve it from list of processed articles, package its
   results into an sexp then form its json equivalent and
   send it thru the article results stream.")
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
                                 


;;----- collect edge records

#|sp> (run-specific-acumen-file 783 :quiet t :motific t :skip t)
783. "terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town"
468 words.  Time to parse: 118 msec  3,966.1 words/second
Parsing coverage: 5 (1 edge), 10 (2-5), 13 (> 5)
vague-names: 25  places: 10  identified-names: 8  chupacabra: 7  quantities: 4  
time: 3  brackets: 2  verbs: 2  
Functional categorizations for 6 out of 6 instances
  (subject 4)  (isolated-proper 1)  (np-head 1)  |#

(defgeneric collect-edge-records (article)
  (:documentation "Collect all the germaine edge-record objects in the article.
   For the example about there will be six of them.")

#| sp> (article)
#<article 783 1/14/22 17:23:36>
sp> (d (contents *))
#<article-features unknown>
  s-count      = 01
  total-words  = 0
  wps          = "3,966.1 words/second"
  items-alist  = (#<note-group-instance vague-names> #<note-group-instance places>..
  germaine     = (#<note-group-instance chupacabra>)
  count-list   = nil
  great        = 5
  medium       = 10
  horrible     = 13
  name         = unknown
  backpointer  = #<article 783 1/14/22 17:23:36> |#

  (:method ((a article))
    (let* ((contents (contents a))
           (group-instances (germaine-items contents)))
      (loop for note-group-instance in group-instances
         append (let* ((note-entries (note-instances note-group-instance))
                       (records               
                        (loop for note-entry in note-entries
                           append (text-strings note-entry))))
                  records)))))
 
#|sp> (collect-edge-records (article))
(#<695> #<557> #<487> #<294> #<183> #<71>) |#



;;----- clean article's title, name, location, ...

(defun strip-number-from-name (article)
  (let* ((namestring (name article))
         (index (position #\space namestring)))
    (subseq namestring (1+ index))))

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
        `((:article-id . ,title)
          (:name . ,(strip-number-from-name a))
          (:file . ,(remove-base-from-file-location a))
          (:analyzed . ,date)
          (:mentions ,@record-json)))))
  
#|sp> (d (car germaine-records))
#<129>
  number          = 129
  spotted-string  = "chupacabra"
  chain           = #<e129..e538 >
  configuration   = :in-relation
  indexes         = (1587 . 1597)
  top-string      = "except for the very plump chupacabra"
  form-labels     = (common-noun n-bar np pp)
|#
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
          




#|
;;--- scratch pad 

;; How to we get examples for instances of motifs?
Get an article -- by index from the articles that have been analyzed

-- Reading from the inversion
(gethash :posessive *note-entries-to-where-used*) ; 37 articles
sp> (defvar articles-using-possessive (cdr *))
(car articles-using-possessive)
#<article 4 1/12/22 15:52:5>
sp> (defvar m4 *)

-- we  want the note-group-instance objects on the article.
   Germaine-items selects for groups about motifs
sp> (contents m4)
#<article-features unknown>
sp> (defvar contents *)
contents
sp> (defvar motific-group-instances (germaine-items contents))
motific-group-instances

sp> (car motific-group-instances)
#<note-group-instance golem>
sp> (note-instances *)
(#<golem 34> #<golems 2>) ; singular and plural


sp> (car *)
#<golem 34>
sp> (d *)
#<golem 34>
  name          = golem
  notable       = #<motif-spotter golem>
  count         = 34
  text-strings  = (#<e2205> #<e2202> #<e2106> #<e1998> #<e1997> #<e1879> #<e1878>..

sp> (text-strings *)
(#<e2205> #<e2202> #<e2106> #<e1998> #<e1997> #<e1879> #<e1878> #<e1877>
 #<e1653> #<e1651> #<e1514> #<e1511> #<e1408> #<e1297> #<e1296> #<e1191>
 #<e1190> #<e1025> #<e1020> #<e890> #<e766> #<e665> #<e461> #<e458> #<e191>
 #<e190> #<e189> #<e188> #<e187> #<e186> #<e185> #<e184> #<e59> #<e0>)
sp> (defvar edge-records *)
edge-records
sp> (length edge-records)
34
sp> (defvar record (car edge-records))
sp> (edge-record-string *)
"Golem"
|#
