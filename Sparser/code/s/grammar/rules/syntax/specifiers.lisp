;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "specifiers"
;;;   Module:  "grammar/rules/syntax/"
;;;  version:  June 2020

;; initated 2/13/20 to collect NP specifier ('spec') material in one place

(in-package :sparser)

#| 

------- semantics

Available variables for the interpretation of an NP

-- on Top

modifier - supplies a property. May be adverbial
qualifier - a modifier that changes something's type: 'toy gun'
negation
quantifier
number (these two were motivated by plural)
items

-- on endurant (with some redundancy)
number
quantifier
selector


Given this set of rules, the selector variable will be bound
to an instance of sequence-selector (in core/collections/object.lisp)

Sequence-selector inherits from sequence and mixes in the
category part-of-a-sequence (both in that file). 
Collectively that binds:

number -- how many do we select
position -- construcing the reference set as a sequence, which one do we select
ordering -- a superlative or the like that imposes an order on the set


------- syntax

The rules for realizing sequence-selector all use 
the form label 'specifier' 
 
(This is the one we might specialize according whether or not
a head is semantically required or alternatively it will be
presumed from the discourse -- which would make them instances
of the category 'requires-context', just like pronouns and
demonstratives.)


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
        ;; nb. need to include the optional 'category' parameter
        ;;  to ensure that 'selector' isn't assumed to be anonymous
        (bind-variable 'selector value np-head category::endurant)))))


;;;------------------------
;;; incorporate determiner
;;;------------------------

(def-syntax-rule (det specifier)
  :head :right-edge
  :form specifier
  :referent (:function determiner-noun left-edge right-edge))

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
             :with (number left-edge
                    ordering right-edge)))


;;--- "the first three largest"
#| Given binary rules, this is going to come out in two pieces
    [ordinal/quantifier] [sequence-selector/specifier] |#

(def-cfr sequence-selector (ordinal sequence-selector)
  :form specifier
  :referent (:function compose-ss-and-ordinal left-edge right-edge))

(defun compose-ss-and-ordinal (ordinal ss)
  (if *subcat-test*
    (and ordinal ss)
    (let ((ss-prime (extend-set-selector ss :position ordinal)))
      ss-prime)))
 

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

#|  this clashes with a (now commented out) rule in ordinal |#
(def-cfr sequence-selector (ordinal number)
  :form specifier
  :referent (:instantiate-individual ordering-number
             :with (position left-edge
                    number right-edge)))


;;--- "last two",  "the latter three"

(define-category sequencer-number
  :specializes sequence-selector
  :documentation "The reference set is ordered. Selected 'number' of
 elements from the region of the set indicated by the sequencer.")

(def-cfr sequence-selector (sequencer number)
  :form specifier
  :referent (:instantiate-individual sequencer-number
             :with (position left-edge
                    number right-edge)))

   
;; "the first"

;; "the first three by height", "the second three by weight"

;; "first three proteins combine to form a complex, then ..."


;;;----------------------------
;;; <spec-elemement> of <head>
;;;----------------------------

(defun sort-out-specifier/of (spec head)
  "Called from interpret-pp-adjunct-to-np and has to return the
   interpretation of the phrase as a whole"
  (cond
    ((itypep spec 'measurement) ;; "42% of all new cases"
     ;; <measurement> of <head>
     (let ((inner-quantifier (value-of 'quantifier head)))
       (if inner-quantifier
         (qualify-quantifier spec inner-quantifier head)
         (bind-variable 'quantifier spec head))))
    
    ((itypep spec 'number) ;; "two of the cases"
     ;;/// test for a number already in the head: "two of the five"
     (bind-variable 'number spec head))

    ((itypep spec 'quantity) ;; "the majority of them
     (bind-variable 'number spec head))
    
    ((or (itypep spec 'quantifier) ;; "all of these lines"
         (itypep spec 'which))
     ;;/// test for interior case
     (bind-variable 'quantifier spec head))

    ((itypep spec 'wh-pronoun) ; "how much of the database binding site"
     (bind-variable 'quantifier spec head))

    (t
     (push-debug `(,spec ,head))
     (warn #|break|# "sort-out-specifier/of: no handler specifier: ~a~
            ~%of type: ~a~%in ~s"
           spec (itype-of spec) (current-string))
     ;; drop the spec on the floor
     head)))

(defun qualify-quantifier (measurement inner-quantifier head)
  (let* ((q (specialize-object inner-quantifier 'approximate))
         (qp (bind-variable 'qualifier measurement q)))
    (rebind-variable 'quantifier qp head)))



