;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "vertexes"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Added indexing routine 5/12

(in-package :sparser)

;;;-----------
;;; base type
;;;-----------

(defstruct (vertex-base
            (:include unit)
            (:conc-name #:vertex-)
            (:print-function print-da-vertex-structure))

  reference-item   ;; 1st item of the trie it is part of
  count            ;; number of pattern items from the left
  )


;;--- indexing (but no reuse or dereferencing)

(defparameter *vertex-bases-to-objects* (make-hash-table
                                                :test #'equal))
(defun index-vertex (v)
  (setf (gethash (cons (vertex-reference-item v)
                       (vertex-count v))
                 *vertex-bases-to-objects*)
        v))

(defun vertex-with-base (reference-item count)  ;; arc-count ??
  (gethash (cons reference-item count)
           *vertex-bases-to-objects*))



;;;-------------------
;;; alternative types
;;;-------------------

(defstruct (start-vertex
            (:include vertex-base)
            (:conc-name #:vertex-)
            (:print-function print-da-vertex-structure))

  rightward-extensions   ;; list of arcs
  )

(defun make-the-start-vertex (pattern)
  (let ((1st-item (first pattern)))
    (let ((vertex
           (make-start-vertex :reference-item 1st-item
                              :count 1 )))
      (index-vertex vertex)
      vertex)))



(defstruct (vertex
            (:include start-vertex)
            (:conc-name #:vertex-)
            (:print-function print-da-vertex-structure))

  leftward-extensions    ;; list of arcs
  )

(defun make-middle-vertex (item count
                           &key leftward-arcs rightward-arcs)
  (let ((vertex (make-vertex
                 :reference-item  item
                 :count           count
                 :leftward-extensions   leftward-arcs
                 :rightward-extensions  rightward-arcs )))
    (index-vertex vertex)
    vertex))



(defstruct (end-vertex
            (:include vertex)
            (:conc-name #:vertex-)
            (:print-function print-da-vertex-structure))

  rule   ;; a da rule
  )

(defun make-an-end-vertex (item count rule
                        &key leftward-arcs rightward-arcs)
  (let ((vertex (make-end-vertex
                 :reference-item  item
                 :count count
                 :leftward-extensions leftward-arcs
                 :rightward-extensions rightward-arcs
                 :rule rule )))
    (index-vertex vertex)
    vertex ))



;;;----------
;;; printers
;;;----------

(defun print-da-vertex-structure (vertex stream depth)
  (declare (ignore depth))
  (let ((v-type (etypecase vertex
                  (vertex-base 'base)
                  (start-vertex 'start)
                  (vertex 'vertex)
                  (end-vertex 'end))))
    (format stream "#<~a-vertex ~a>"
            v-type (vertex-count vertex))))

;;/// revise if there are users
(defun short-string-for-vertex (v)
  (format nil "~A/~A"
          (pattern-item-as-string (vertex-reference-item v))
          (vertex-count v)))

