;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 David D. McDonald all rights reserved

;;;      File: "note"
;;;    Module: "analyzers;SDM&P:
;;;   Version: May 2021

;; Initiated 1/29/20. To make an easy to use, structured, ability to
;; 'note and record interesting objects' 

(in-package :sparser)

;;--- record what we want to note

(defgeneric noteworthy (category)
  (:documentation "Instances of this category in a text should be
    recorded when they occur in a text as part of its meta data.
    The established list of notworthy categories is in 
    grammar/rules/sdmp/noteworthy.lisp")

  (:method ((name symbol))
    (let ((c (category-named name)))
      ;; Not every load will include a noteworthy category.
      ;; E.g. biology doesn't include us-state
      (when c
        (noteworthy c))))

  (:method ((c category))
    (setf (get-tag :noteworthy c) t)))



;;--- runtime lookup

;; (trace-notes)

(defgeneric noteworthy? (item)
  (:documentation "Is this item something that is noteworthy?
    An item, usually an individiual of a particular category,
    is noteworthy if there is a statement to that effect in
    the grammar.
    Used as a gate controling whether this is an item to record.")

  (:method ((e edge))
    (or (noteworthy? (edge-referent e))
        (noteworthy? (edge-category e))
        (noteworthy? (edge-form e))))
  
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil)
  (:method ((ignore null)) nil)

  (:method ((i individual))
    (loop for c in (indiv-type i)
       when (noteworthy? c) return t))

  (:method ((c category))
    (get-tag :noteworthy c)))



;;--- entry point from the referent-producing code

(defgeneric note? (item)
  (:documentation "Combines the check as to whether the item is
    noteworthy with the action ('note') that records it in the current
    content model.
    Presently seeded in the edge referent computation
       -- analyzers/psp/referent/ driver & unary
       -- grammar/model/core/names/fsa/driver
    ")

  (:method ((e edge))
    (when (noteworthy? e)
      (tr :edge-is-noteworthy e)
      (cache-noteworthy-edge e)))
        
  (:method ((list cons))
    "Call from pnf/scan-classify-record will return a list of edges
     when it can't decide between them"
    ) ;; drop on the floor. Hits in 200, 201, 202, 203
    ;;(break "Got a list passed to note?")
   ;; (loop for e in list do (note? e))

  (:method ((i individual))
    (break "note? got an individual")
    (when (noteworthy? i)
      (note i)))

  (:method ((c category))
    (when (noteworthy? c)
      (note c)))

  ;; We could devise eql methods for specific words, but seems
  ;; simpler to give them interpretations as edges
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil)

  (:method ((p position)) nil) ; "Bunnell BE, Davidson TM, Ruggiero KJ."

  (:method ((ignore null))
    ;; Aborted referent calculations return nil for *referent*
    ))



;;--- store the noted category

(defgeneric note (item)
  (:documentation "Add a noteworthy item to the sentence-level
    contents model using the list element of the accumulate-items
    class. For now, an alist on the category recording the count
    of how many we got. Like entities-and-relations we could make
    this more interesting at higher layers of document structure.")

  (:method ((e edge))
    (let ((c (cond ((noteworthy? (edge-referent e))
                    (edge-referent e))
                   ((noteworthy? (edge-form e))
                    (edge-form e))
                   ((noteworthy? (edge-category e))
                    (edge-category e))
                   (t (break "no noteworthy info on ~a" e)))))
      (note c)))

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
          (let* ((alist (slot-value container 'items-alist))
                 (entry (assoc name alist :test #'eq)))
            (tr :noting-category (cat-name c))
            ;; (push-debug `(,container ,entry)) (break "contain")
            (cond
              ((null alist)
               (setf (slot-value container 'items-alist)
                     `((,name 1))))
              (entry
               (incf (cadr entry)))
              (t
               (setf (slot-value container 'items-alist)
                     (cons `(,name 1) alist))))))))))


