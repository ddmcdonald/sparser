;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2015,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "arcs"
;;;   Module:  "analyzers;DA:"
;;;  Version:  February 2020

;; initiated 5/5/95. Elaborating ..5/22
;; 3/25/2015 handle SBCL problem by making form-arc inherit from label-arc,
;;   instead of creating a duplicate definition for arc-lable

(in-package :sparser)


(defstruct (da-arc
            (:include unit)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  left-vertex
  right-vertex
  )


(defun make-arc-for-pattern-item (item left-vertex)
  (let ((arc
         (etypecase item
           ((or category referential-category mixin-category)
            (if (form-category? item)
              (make-form-arc :label item)
              (make-label-arc :label item)))

           (pattern-item
            (ecase (pattern-item-type item)
              (:morph 
               (make-morph-arc :morph-keyword
                               (first (pattern-item-spec item))))
              (:word
               (make-unknown-word/s-arc  :number-of-words 1))
              (:words
               (make-unknown-word/s-arc
                :number-of-words (first (pattern-item-spec item))))
              (:gap
               (make-gap-arc
                :scan-function (first (pattern-item-spec item))))                             
              ))

           (word
            (make-word-arc :word item))

           (polyword
            (make-polyword-arc :polyword item)))))

    (setf (arc-left-vertex arc) left-vertex)
    (index-item-as-somewhere-in-a-trie item arc)
    arc ))



(defstruct (label-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  label )


(defstruct (form-arc
            (:include label-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure)))


(defstruct (morph-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  morph-keyword )


(defstruct (word-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  word )


(defstruct (polyword-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  polyword )


(defstruct (unknown-word/s-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  number-of-words )


(defstruct (gap-arc
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  scan-function )


;;;-------------------
;;; structure printer
;;;-------------------




(defun print-da-arc-structure (arc stream depth)
  (declare (ignore depth))
  (let* ((arc-type (etypecase arc
                     (gap-arc 'gap)
                     (unknown-word/s-arc 'unknown)
                     (polyword-arc 'polyword)
                     (word-arc 'word)
                     (morph-arc 'morph)
                     (form-arc 'form)
                     (label-arc 'label)))
         (label (ecase arc-type
                  (form
                   (string-downcase (symbol-name (cat-symbol (arc-label arc)))))
                  (label
                   (string-downcase (symbol-name (cat-symbol (arc-label arc)))))
                  (morph
                   (arc-morph-keyword arc))
                  (word
                   (format nil "\"~A\"" (word-pname (arc-word arc))))
                  (polyword
                   (format nil "\"~A\"" (pw-pname (arc-polyword arc))))
                  (unknown
                   (format nil "~A unknown word/s"
                           (arc-number-of-words arc)))
                  (gap
                   (format nil "gap: ~A" (arc-scan-function arc))))))
    (format stream "#<~a-arc ~a>"
            arc-type label)))

#|
          (if (arc-left-vertex obj)
            (short-string-for-vertex (arc-left-vertex obj))
            "nil")

          (if (arc-right-vertex obj)
            (short-string-for-vertex (arc-right-vertex obj))
            "nil" )))  |#

