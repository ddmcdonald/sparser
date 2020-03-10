;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 David D. McDonald all rights reserved

;;;      File: "note"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2020

;; Initiated 1/29/20. To make an easy to use, structured, ability to
;; 'note and record interesting objects' 

(in-package :sparser)

;;--- record what we want to note

(defgeneric noteworthy (category)
  (:documentation "Instances of this category in a text should be
    recorded when they occur in a text as part of its meta data.
    The established list of notworthy statements is in grammar/
    rules/sdmp/noteworthy.lisp")

  (:method ((name symbol))
    (let ((c (category-named name)))
      ;; Not every load will include a noteworthy category.
      ;; E.g. biology doesn't include us-state
      (when c
        (noteworthy c))))

  (:method ((c category))
    (setf (get-tag :noteworthy c) t)))



;;--- runtime lookup

(defgeneric noteworthy? (item)
  (:documentation "Is this item something that is noteworthy?
    An item, usually an individiual of a particular category,
    is noteworthy if there is a statement to that effect in
    the grammar.
    Used as a gate controling whether this is an item to record.")

  (:method ((e edge))
    (noteworthy? (edge-referent e)))
  
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil)
  (:method ((ignore null)) nil)

  (:method ((i individual))
    (loop for c in (indiv-type i)
       when (noteworthy? c)
       do (note i)))

  (:method ((c category))
    (get-tag :noteworthy c)))



(defgeneric note? (item)
  (:documentation "Combines the check as to whether the item is
    noteworthy with the action ('note') that records it in the current
    content model.")

  (:method ((e edge))
    (let ((referent (edge-referent e)))
      (when (noteworthy? referent)
        (note referent))))

  (:method ((list cons))
    "Call from pnf/scan-classify-record will return a list of edges
     when it can't decide between them"
    (loop for e in list do (note? e)))

  (:method ((i individual))
    (when (noteworthy? i)
      (note i)))

  (:method ((c category))
    (when (noteworthy? c)
      (note c)))

  ;; We could devise eql methods for specific words, but seems
  ;; simpler to give them interpretations as edges
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil)

  (:method ((ignore null))
    ;; Aborted referent calculations return nil for *referent*
    ))


(defgeneric note (item)
  (:documentation "Add a noteworthy item to the sentence-level
    contents model using the list element of the accumulate-items
    class. For now, an alist on the category recording the count
    of how many we got. Like entities-and-relations we could make
    this more interesting at higher layers of document structure.")

  (:method ((i individual))
    (loop for c in (indiv-type i)
       do (note c)))

  (:method ((c category))
    (unless (current-script :biology)
      (let ((s (current-sentence))
            (name (cat-name c)))
        (unless s (error "Current-sentence is not defined"))
        (let ((container (contents s)))
          (unless (and container (typep container 'accumulate-items))
            (error "wrong kind of container"))
          (let* ((alist (slot-value container 'list))
                 (entry (assoc name alist :test #'eq)))
            (cond
              ((null alist)
               (setf (slot-value container 'list)
                     `((,name 1))))
              (entry
               (incf (cadr entry)))
              (t
               (setf (slot-value container 'list)
                     (cons `(,name 1) alist))))))))))


;;--- helpers

(defvar *show-note-candidates* nil
  "Flag in the various place that note is used to report the
   full list of things they've seen, noteworthy or not.
   Useful in gauging what groups of categories might be")

