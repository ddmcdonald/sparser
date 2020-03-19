;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "specifiers"
;;;   Module:  "grammar/rules/syntax/"
;;;  version:  March 2020

;; initated 2/13/20 to collect NP specifier ('spec') material in one place

(in-package :sparser)

#| 'specifier' added as a form category in categories.lisp
   'selector' is a variable on endurant
|#

;;;---------------------------
;;; composition with the head
;;;---------------------------

(loop for nb in *n-bar-categories*
   collect (def-syntax-rule/expr `(specifier ,nb)
               :form 'n-bar
               :head :right-edge
               :referent '(:function attach-specifier left-edge right-edge)))

(defun attach-specifier (selector np-head)
  "We look for a selector that's already bound to the np-head.
   If it exists we add this selector individual to the list on that binding.
   If this is the first instance of the binding then we put the individual
   in a simple list and make the binding."
  (if *subcat-test*
    (and selector np-head) ; always goes through
    (let ((existing-value (value-of 'selector np-head)))
      (let ((value      
             (if existing-value ;; concatenate them for this level
               (cons selector existing-value)
               (list selector))))
        (bind-variable 'selector value np-head)))))


;;;-------
;;; cases
;;;-------

;;--- "third largest"

(define-category ordinal-ordering
  :specializes sequence-selector
  :documentation "The superlative ('ordering' binding) is applied first
 to determine the set of, e.g., 'large' members of the reference set.
 Then the ordinal selects the approriate member")

(def-cfr sequence-selector (ordinal superlative)
  :form specifier
  :referent (:instantiate-individual ordinal-ordering
             :with (position left-edge
                    ordering right-edge)))


;;--- "three largest"

(define-category number-ordering
  :specializes sequence-selector
  :documentation "The ordering determines a directed scale to sort
 the set then we select 'number' members from that end of the set.")

(def-cfr sequence-selector (number superlative)
  :form specifier
  :referent (:instantiate-individual ordinal-ordering
             :with (position left-edge
                    ordering right-edge)))


;;---  "largest three"

(define-category ordering-number
  :specializes sequence-selector
  :documentation "Given an ordering determined by the superlative,
 select that number of elements from the ordering")

(def-cfr sequence-selector (superlative number)
  :form specifier
  :referent (:instantiate-individual ordering-number
             :with (ordering left-edge
                    number right-edge)))


;;--- "first two"

(define-category ordinal-number
  :specializes sequence-selector
  :documentation "The reference set has some ordering, we select
 'number' elements from the 'ordinal'th position in the sequence.")


(def-cfr sequence-selector (ordinal number)
  :form specifier
  :referent (:instantiate-individual ordering-number
             :with (position left-edge
                    number right-edge)))

;;  "last two" 

;;  "the latter three"

;; "the first three", "the first three genes"

;; "the first three by height", "the second three by weight"

;; "the first three tallest..."

;; "first three proteins combine to form a complex, then ..."
