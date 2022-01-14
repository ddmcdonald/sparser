;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021-2022 David D. McDonald all rights reserved
;;;
;;;      File: "note-cleaner"
;;;    Module: analyzers/sdmp/
;;;   Version: January 2022

;; Initiated 12/15/21 to facilitate keeping information across article
;; runs.

(in-package :sparser)

#| This is sort of like long-term-ify. We want to retain the content
 of the results of an article without presuming that we still have
 access to edges or positions or anything else that gets re-initialized
 with the next call to analysis-core.

Requirements:
1. No interference from earlier articles' notes on accumulation and
 tablulation for the article currently being analyzed.

2. We can compare one article's noted properties to another ones. 

3. We can still normalize (article length, comparative converage, ...)


Containers are all instantiated, so no issue there.
The time to read and noted categories use data already on the article.
Show-noted-categories uses article contents.
However show-motif-term-context is completely bound to the current article
 because of *germaine-spotter-group-instances*, so have to stach it somewhere.

Time to read an article is not saved. Would be another slot(?) on article?
 or maybe piggyback on token-count(??)

|#

;;;----------------------
;;; pre-article cleaning
;;;----------------------

(defun preserve-long-term-records ()
  "Called from analysis core after initializing the tokenizer state
   and, crutially, before initializing the state of the chart which
   cleans all the edges that had been used.
   Presently just used for note and word-spotter data, but could be
   used for making mentions long-term as well."
  (let ((article (article)))
    ;; this will be the just-analysed article or nil if this is
    ;; the first analysis.
    (when article
      (clean-out-note-data article))))



(defun clean-out-note-data (article)
  "More a matter of making these valid as long-term information.
   This is called from per-article-initialization just before the
   article is reaped"
  ;;(when article ; initially it's nil
    (clear-spotting-tables article) ; no evidence we're getting here
    #+ignore(clear-note-tables article)) ;)



(defun clear-note-tables (article)
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. Since notables
   and note-groups persist across articles and are accessed by
   name, we have to clean out their per-article instance counterpart
   objects or else we would have misleading counts."
  (declare (ignore article))
  (clear-note-entry)
  (clear-note-group-instance))


(defun clear-spotting-tables (article)
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. 
   The point is to replace the edge-records with records that
   can stand by themselves without the chart and can include
   information only needed for export. We take the article
   as a parameter so that we can replace the objects directly in
   the fields of its content."
  (let* ((contents (contents article))
         (group-instances (germaine-items contents)))

    (break "~&~%Clearing article ~a~%" article)
    
    ;; For each group instance in the list, we go down to its
    ;; edge-records. We replace these with their permanent
    ;; equivalents -- setf'ing the field to the new list.
    (loop for note-group-instance in group-instances
       do (let ((note-entries (note-instances note-group-instance)))
            (loop for note-entry in note-entries
               do (let ((edge-records (text-strings note-entry)))
                    (let ((new-records
                           (loop for old-record in edge-records
                              collect (make-long-term-edge-record old-record article))))
                      (setf (text-strings note-entry) new-records)
                      (push-debug `(,note-entry ,new-records))
                      (break "note-entry: ~a" note-entry) )))))
    

    ;; emptry the hashtables
    (clear-spot-entry)
    (clear-word-spotting-group-instance)
    (initialize-spotter-edge-records)
    ))

#| base case
(defstruct (edge-record
             (:print-function print-edge-record))
  number ; the edge-position-in-the-resource-array of the edge, see edge#
  string ; its string-for-edge
  chain  ; its edge-chain following up its used-in field
  configuration)

(defclass edge-chain ()
  ((list :initarg :list :accessor edges
     :documentation "The list of edges as created by upward-used-in-chain")
   (top :initform nil :accessor top-edge
     :documentation "The edge at the high end of the chain")
   (labels :initform nil :accessor form-labels
           :documentation "list of the form labels for the edge"))
  (:documentation
   "Workhorse data structure for identifying position signatures.")) |#

(defclass permanent-edge-record ()
  ((article :initform nil :accessor record-article) ; ptr to article object
   (top-string :initform "" :accessor top-string)
   (spotted-string :initform "" :accessor string-over-motif)
   (number :initarg :number :accessor record-number)
   (indexes :initform nil :accessor motif-offsets) ; pair of character positions
   (form-labels :initform nil :accessor form-labels)
   (configuration :initform nil :accessor configuration)
   ))

(defmethod print-object ((pr permanent-edge-record) stream)
  (print-unreadable-object (pr stream)
    (let ((number (record-number pr)))
      (format stream "record ~a" number))))

(defun make-long-term-edge-record (record article)
  "Construct a permanent edge record from the transient edge-record
   and its chain. Long term objects only."
  (let* ((edge-number (edge-record-number record))
         (spotted-edge (edge# edge-number))
         (spotted-string (edge-record-string record))
         (config (edge-record-configuration record))
         (chain (edge-record-chain record))
         (top (top-edge chain))
         (top-string (string-for-edge top))
         (form-list (form-labels chain)))
    (let ((r (make-instance 'permanent-edge-record :number edge-number)))
      (setf (slot-value r 'article) article)
      (setf (slot-value r 'top-string) top-string)
      (setf (slot-value r 'spotted-string) spotted-string)
      (let* ((start (pos-edge-starts-at spotted-edge))
             (start-char-index (pos-character-index start))
             (end (pos-edge-ends-at spotted-edge))
             (end-char-index (pos-character-index end)))
        (setf (slot-value r 'indexes) (cons start-char-index end-char-index)))
      (setf (slot-value r 'form-labels) form-list)
      (setf (slot-value r 'configuration) config)
      r)))
         
    


;;==- stripping

(defun strip-unnecessary-article-parts (article)
  (setf (children article) nil))

(defun strip-parsed-articles ()
  (loop for a in *acumen-motific-articles*
     do (strip-unnecessary-article-parts (cdr a))))
