;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "arcs"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95. Elaborating ..5/22

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
            (:include da-arc)
            (:conc-name #:arc-)
            (:print-function print-da-arc-structure))
  label )


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

(defun print-da-arc-structure (obj stream depth)
  (declare (ignore depth))
  (format stream "#<arc ~A ~A ~A>"
          (if (arc-left-vertex obj)
            (short-string-for-vertex (arc-left-vertex obj))
            "nil")
          (etypecase obj
            (label-arc
             (string-downcase (symbol-name (cat-symbol (arc-label obj)))))
            (form-arc
             (string-downcase (symbol-name (cat-symbol (arc-label obj)))))
            (morph-arc
             (arc-morph-keyword obj))
            (word-arc
             (format nil "\"~A\"" (word-pname (arc-word obj))))
            (polyword-arc
             (format nil "\"~A\"" (pw-pname (arc-word obj))))
            (unknown-word/s-arc
             (format nil "~A unknown word/s"
                     (arc-number-of-words obj)))
            (gap-arc
             (format nil "gap: ~A" (arc-scan-function obj))))
          (if (arc-right-vertex obj)
            (short-string-for-vertex (arc-right-vertex obj))
            "nil" )))

