;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-2005,2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:collections:"
;;;  version:  1.0 April 2012

;; initiated 6/7/93 v2.3, added Sequence 6/9.
;; 6/13/95 added searching routine: collection-of-type/dh
;; 1.0 (3/21/00) Started make-over to lattice points. Flushed indexes.
;;     (4/29) Added realization for "three companies".
;;     (2/2/05) Added commentary. (4/1/12) exposed collection-of-type/dh
;;     to quiet compiler

(in-package :sparser)

;;;----------------
;;; generic object
;;;----------------

#| A collection is an unordered bag of items.  We can have partial information
   about a collection and then extend it, though nothing is in place for that
   as yet. |#

(define-category  collection
  :instantiates self
  :specializes nil
  :binds ((items :primitive list)
          (type)
          (number :primitive integer))
  :realization ((:tree-family quantity-of-kind  ;; "three companies"
                 :mapping ((np-head . :self)
                           (quantifier . number)
                           (np . :self)
                           (item . number)))))


;;;-----------------
;;; specializations
;;;-----------------

#| A sequence is a collection where the order matters.  You can't have partial
   information about a sequence, and I'm not even sure that you can extend them
   without creating a new object.  |#

(define-category  sequence
  :instantiates collection
  :specializes collection
  :binds ((items :primitive list)   ;;/// ought to do inheritance
          (item)   ;; i.e. each individual item
          (type)
          (number :primitive integer)))



#|  Removed until we bring this sort of thing back.
    It's referenced in one place: deref-plural-post in the "position rules" file
    of PCT where we're looking for existing collections of titles.
;;;-----------------------------
;;; predicates over collections
;;;-----------------------------
|#
(defun collection-of-type/dh (collections-dh-entry  &rest possible-types )
  (push-debug `(,collections-dh-entry ,possible-types))
  (break "stub"))
#|  (let ( instances  instance   )
    (dolist (item collections-dh-entry)
      (setq instance (first item))
      ;(break)
      (when (member (first (value-of 'type instance))
                    possible-types :test #'eq)
        (push instance instances)))
    (nreverse instances)))
|#
