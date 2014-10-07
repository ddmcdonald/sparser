;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "nospace-categories"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  October 2014

;; Created 10/7/14 to hold categories and routines used by the
;; nospace character specialists (analyzers/psp/patterns/) since
;; the categories they refer to aren't yet loaded

(in-package :sparser)

;;;----------
;;; hyphens
;;;----------

(define-category hyphenated-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the slash
          (right))
  :index (:sequential-keys left right))

;;/// Could this stay back there?
(defun make-hypenated-structure (left-edge right-edge)
  ;; called from nospace-hyphen-specialist
  (push-debug `(,left-edge ,right-edge))
  (let ((i (find-or-make-individual 'hyphenated-pair
             :left (edge-referent left-edge)
             :right (edge-referent right-edge))))
    (when (eq (edge-category left-edge)
              (edge-category right-edge))
      (bind-variable 'type (edge-category left-edge)
                     i category::sequence))
    (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category::hyphenated-pair
                   :rule 'nospace-hyphen-specialist
                   :form category::common-noun
                   :referent i
                   :constituents `(,left-edge ,right-edge))))
        ;;(break "look at edge")
        ;;/// trace goe here
        edge)))


;;;---------
;;; slashes
;;;---------

;; identical to hypenated-pair -- consolidate?  Mostly want the category
(define-category slashed-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the slash
          (right))
  :index (:sequential-keys left right))

(define-category slashed-sequence
  :specializes sequence
  ;; inherits items, item, type, number
  ;; the sequence of the items follows the sequence of the slashes
  :instantiates :self
  :index (:permanent :key items))
