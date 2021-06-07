;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 David D. McDonald all rights reserved

;;;      File: "note"
;;;    Module: "analyzers;SDM&P:
;;;   Version: June 2021

;; Initiated 1/29/20. To make an easy to use, structured, ability to
;; 'note and record interesting objects' 

(in-package :sparser)

;;--- record what we want to note

(defvar *noteworthy-categories* nil)

(defgeneric noteworthy (category)
  (:documentation "Instances of this category in a text should be
    recorded when they occur in a text as part of its meta data.
    The established list of notworthy categories is in 
    grammar/rules/sdmp/noteworthy.lisp")

  (:method ((name symbol))
    (let ((c (category-named name)))
      (when c
        ;; Not every load will include a noteworthy category.
        ;; E.g. biology doesn't include us-state
        (noteworthy c))))

  (:method ((c category))
    (pushnew c *noteworthy-categories*)
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
       -- grammar/model/core/names/fsa/driver")

  ;;/// Should only be being passed edges now (5/18/21). We used to get
  ;; individuals and categories. Take out the break's when we've run over
  ;; a lot of text and not encountered them.

  (:method ((e edge))
    (when (noteworthy? e)
      (tr :edge-is-noteworthy e)
      (cache-noteworthy-edge e)))
        
  (:method ((list cons))
    "Call from pnf/scan-classify-record will return a list of edges
     when it can't decide between them"
    ;; drop on the floor. Hits in 200, 201, 202, 203
    (let ((noteworthy (loop for item in list
                         when (noteworthy? item) collect item)))
      (when noteworthy
        (when (> (length noteworthy) 1)
          (break "Multiple noteworthy items: ~a" noteworthy))
        (loop for n in noteworthy do (note? n)))))

  (:method ((i individual))
    (break "note? was passed an individual")
    (when (noteworthy? i)
      (note i)))

  (:method ((c category))
    (break "note? was passed a category")
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

;; (announce-notes)

(defgeneric note (item)
  (:documentation "Add a noteworthy item to the sentence-level
    contents model using the list element of the accumulate-items
    class. For now, an alist on the category recording the count
    of how many we got. Like entities-and-relations we could make
    this more interesting at higher layers of document structure.")

  (:method ((e edge))
    (declare (special *edges-noted*))
    (push e *edges-noted*)
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
      (let ((s (sentence))
            (name (cat-name c)))
        (unless s (error "Current-sentence is not defined"))
        (let ((container (contents s)))
          (unless (and container (typep container 'accumulate-items))
            (error "wrong kind of container"))

          (let* ((alist ;;(slot-value container 'items-alist))
                  (items container))
                 (entry (assoc name alist :test #'eq)))
            (push-debug `(,container ,entry ,alist))
            (cond
              ((null alist)
               (setf (items container) (list (list name 1))))
              (entry
               (incf (cadr entry)))
              (t
               (setf (items container)
                     (cons (list name 1) alist))))

            (let* ((alist1 (items container))
                   (entry1 (assoc name alist1 :test #'eq))
                   (count (cadr entry1)))
              (when (null count)
                (push-debug `(,entry1 ,alist1)) (break "no counts"))
              (tr :noting-category name count)) ))))))

#+ignore ;; instrumented version to look at cases.
;; original problem was that `((,item 1)) let SBCL share the
;; (cons 1 nil) across the whole list.
  (:method ((c category))
    (unless (current-script :biology)
      (let ((s (sentence))
            (name (cat-name c)))
        (unless s (error "Current-sentence is not defined"))
        (let ((container (contents s)))
          (unless (and container (typep container 'accumulate-items))
            (error "wrong kind of container"))

          (format t "~&~%noting ~a~%" name)
          (let* ((alist ;;(slot-value container 'items-alist))
                  (items container))
                 (entry (assoc name alist :test #'eq)))
            (push-debug `(,container ,entry ,alist))
            
            (cond
              ((null alist)
               (setf (items container)
                     ;;(slot-value container 'items-alist)
                     (list (list name 1)))
               (format t "~&Null alist. items: ~a~%" (items container))
               )
              (entry
               (format t "~&Before Increment: entry: ~a~%" entry)
               (push-debug `(,entry ,alist ,container)) (break "incr")
               (incf (cadr entry))
               (format t "~&After Increment: entry: ~a~%" entry)
               )
              (t
               ;; (slot-value container 'items-alist)
               (format t "~&New item.")
               (setf (items container)
                     (cons (list name 1) alist))
               (format t "~&after alist: ~a" (items container))))

            (format t "~&Final alist: ~a~%" (items container)) (break "Break ?")

            (let* ((alist1 (items container))
                   (entry1 (assoc name alist1 :test #'eq))
                   (count (cadr entry1)))
              (when (null count)
                (push-debug `(,entry1 ,alist1)) (break "no counts"))
              (tr :noting-category name count))))))) 

