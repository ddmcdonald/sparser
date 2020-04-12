;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "quantifiers"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   February 2019

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/13/94
;; 0.1 (7/25) revised "many" and "several" to be like the others rather than
;;      just having a ].phrase bracket
;; 0.2 (8/16) gave "not" a tentative bracketing   9/6 "{some,any,every}one", "much"
;; 1.0 (11/16) giving some of them all default edges so dm&p can generalize over them
;;      The ones that stand alone are still problematic.
;;     (12/5) added "additional"
;; 1.1 (8/16/97) gated the use of objects. 
;; 1.2 (12/26/99) redid the category with modern indexing scheme. (Haven't touched
;;      the def form yet.)
;;     (2/8/07) Removed toplevel check around the definition of the category - see note.
;; 1.3 (6/9/08) Made everything a quantifier, providing more rule options.
;;     (11/14) Added 'as xx as' phrase as quantifiers, which is a good fit syntactically
;; 1.4 (2/10/10) Revised the ]. bracket to be specific to quantifier to adjudicate correctly
;;      for np-internal instances: "a few ...".
;; 1.5 (8/30/11) Adding more form cases to the quantifier rule. 8/31 Added a rule
;;      for the word itself to give it the quantifier object as a referent.
;;     (5/17/12) Discovered a bunch of ordinary quantifiers were stranded in the
;;      other version of this file. 
;; 1.6 (11/2/12) Du'h the rules as written to rewrite a word as the saem word are circular.
;;      redoing them on the pattern of preposition. 11/30/12 fixed "no"
;; 1.7 (4/8/13) Made "not" look like an auxiliary.
;; 1.8 (8/22/13) Changed the rules for the quantifiers to use the constructed
;;      category for each quantifier, not the words -- they weren't triggering
;;      the method. 
;; 1.9 (4/20/15) Ignored comment about "not" making little sense as a quantifier
;;      and making it one instead of handling it as a adverb which was the
;;      case just before this.
;;     (9/22/15) Make quantifier specialize operator and moved in a bio mixin
;; 1.10 (12/15/15) Discovered that quantifiers were being reclaimed so rewrote the
;;     the def-form to make the quantifier the category, with a matching instance
;;     (which perhaps it shouldn't have).

(in-package :sparser)

#|
 This creates an object for the quantifier, an individual created
 from the quantiifer category just below. This is the hook that lets
 us (eventually) create a real quantification machanism using a full
 version of what's in /rules/syntax/quantifiers.lisp.
   1. We define the word as a function word with form and brackets.
   2. Create a category based on the name of the word to be the rule label
      that will largely operate by form rules
   3. Write a rule that rewrite to the constructed category with
      the quantifier individual as its referent. 
   4. We look at the rules field and build them as specified
    A. 'det' -- the quantifier acts as a determiner. We write a form rule 
 against noun and np that call the quantify method to convert the
 referent into an instance of quantified (/// which isn't really right
 since it's still an instance of what it is, but now it has this
 extra type. Same technical problem of modality or hedging at the
 clause level
    B. 'of' -- the word is typically followed by 'of'. See note in
 code. ///this loses the partitioning aspect of the quantification.

|#

;;;--------------------
;;; simple quantifiers
;;;--------------------

(define-category  quantifier
  :specializes predicate
  :instantiates nil
  :index (:permanent :key word)
  :binds ((word  :primitive word)))

(define-mixin-category with-quantifier
  :binds ((quantifier quantifier))
  :documentation "Was in bio taxonomy. May not make sense")


(defun define-quantifier (string &key brackets )
  (unless brackets
    (setq brackets '( ].quantifier  .[np )))
  (let* ((word (or (resolve string) ;; e.g. "no" is an acknowledgement
                   (define-function-word string
                       :brackets brackets
                       :form 'quantifier)))
         (category-name (name-to-use-for-category string))
         (object (find-individual 'quantifier :word word))
         cfrs )
    (let* ((form `(define-category ,category-name
                    :specializes ,category::quantifier
                    :instantiates nil
                    :index (:permanent :key word)
                    :bindings (word ,word)))
           (category (eval form)))

      (unless object
        (let ((object-form `(define-individual ',category-name
                               :word ,word)))
          (setq object (eval object-form))))

      (let ((cfr ;; the base rule for the word
             (def-cfr/expr category ;; lhs
                    (list word) ;; rhs
               :form 'quantifier
               :referent object)))
        (push cfr cfrs))

      ;; Not clear we need anything bigger
      (make-corresponding-mumble-resource word :quantifier object)

      (setf (get-rules object) cfrs)
      object )))


;; n.b. there are also the scalar quantifiers below

(define-quantifier "additional")
(define-quantifier "all")
(define-quantifier "any")
(define-quantifier "another")
(define-quantifier "both")
(define-quantifier "each")
(define-quantifier "either")
(define-quantifier "enough")
(define-quantifier "every")

(define-quantifier "neither")
(define-quantifier "numerous")
(define-quantifier "a number")
;;(define-quantifier "other")
(define-adjective "other") 
(define-quantifier "others")
(define-quantifier "several")
(define-quantifier "some")
(define-quantifier "such")

;; not sure if this is a quantifier, but it is similar 
(define-quantifier "such a"    )

(define-quantifier "various")


(define-quantifier "no") 

(define-quantifier "not"  :brackets '( ].verb .[modal ))

(define-quantifier "none" :brackets '( ].quantifier  phrase.[ ))


;;;-------------------------------------
;;; scalar / comparative quantification
;;;-------------------------------------

#+ignore(define-category comparative-quantification
  :specializes scalar-attribute
  :bindings (var (find-variable-for-category 'quantifier 'endurant))
  :documentation "Draft of the 'attribute' that scalar quantifiers
    are values of. Mostly serves to specific the variable, and that
    could use some work in handling the meaning of any quantifier")

;;/// there's also direction -- see specialize-direction
;; And we could refine the referent like setup-comparatives
;; does, but it would be best to see some inferential consequence
;; before we go too far down that road
;;/// These all relate back to the base quantifier. Should we record
;; the other direction as well? Say on q's plist

;; Attribute is 'quantity' or 'amount'

(define-category scalar-quantifier ; "many" "much"
  :specializes attribute-value
  :mixins (quantifier comparative)
  :realization (:adjective name))

(define-category comparative-scalar-quantifier ; "more"
  :specializes scalar-quantifier
  :mixins (quantifier comparative)
  ;; :bindings (attribute (category-named 'comparative-quantification))
  ;; :binds ((quantifier quantifier))
  ;; :documentation "For the actual quantifiers themselves"
  :rule-label comparative
  :index (:permanent :key name)
  :realization (:adjective name))

(define-category superlative-scalar-quantifier ; "most"
  :specializes comparative-scalar-quantifier
  :mixins (quantifier superlative)
  :rule-label superlative
  :index (:permanent :key name)
  :realization (:adjective name))

;; Have to go through constraint in maybe-extend-comparative-with-than-np
;; (for "a bigger block than that block" where we have to provide
;; a binding value (i.e. attribute-value) that is itypep 'comparative

(defun define-scalar-quantifier (&key dir base base-count base-mass er est)
  "All three (or four) words share the same basic meaning as a quantifier.
   The comparative (:er) and superlative  (:est) forms add the
   notion of a scale or attribute (attr) along with the
   term they quantify varies relative to some reference set.
   They pattern like adjectival comparatives."
  (let ((*inhibit-constructing-comparatives* t))
    (declare (special *inhibit-constructing-comparatives*))

    (let ((count-word (when base-count (resolve/make base-count)))
          (mass-word (when base-mass (resolve/make base-mass)))
          (er-word (when er (resolve/make er)))
          (est-word (when est (resolve/make est))))

      (when count-word ; "many"
        (define-function-term count-word 'quantifier ;; had been 'adjective
          :super-category (category-named 'scalar-quantifier)))
      ;; should these have :rule-label fields that identify
      ;; the attribute these are refering to? (cf. setup-comparatives)
      (when mass-word ; "much"
        (define-function-term mass-word 'quantifier
          :super-category (category-named 'scalar-quantifier)))

      (when er-word ; "more"
        (define-function-term er-word 'comparative-adjective
          :super-category (category-named 'comparative-scalar-quantifier)
          :rule-label 'comparative))

      (when est-word ; "most"
        (define-function-term est-word 'superlative-adjective
          :super-category (category-named 'superlative-scalar-quantifier)
          :rule-label 'superlative)))))
      

;; count
(define-scalar-quantifier :base-count "few" :er "fewer" :est "fewest")

;; mass
(define-scalar-quantifier :base-mass "a little" :er "less" :est "least")
;;/// "at least N"

(define-scalar-quantifier :base-count "many" :base-mass "much" :er "more" :est "most")
;;/// "most of all, ..."


#| Previous version where we start with quantifier
   and make these all instances instead of categories
    (flet ((switch-form (string old-cat-name new-cat-name)
             (let* ((word (resolve string))
                    (category (category-named old-cat-name :error))
                    (replacement (category-named new-cat-name :error))
                    (rule (find-form-cfr word category)))
               (unless rule
                 (error "Expected a rule on ~a with form ~a" category old-cat-name))
               (setf (cfr-form rule) replacement))))
  

      (let ((q (when base (define-quantifier base)))
             (comparative
              (when er ;;/// shouldn't we be making subtypes? of the quantifier?
                (define-or-find-individual 'comparative-quantifier
                    :name er :quantifier q)))
             (superlative
              (when est
                (define-or-find-individual 'superlative-quantifier
                    :name est :quantifier q))))
        ;; The :er and :est individuals are created with rewrite rules
        ;; with the form 'adjective because that's the realization
        ;; specified on their categories. These swap that form category
        ;; on the rule for another one, which is also useful for experimenting
        ;; while we sort out what we really want.
        (when base (switch-form base 'quantifier 'comparative)) ;;???
        (when er (switch-form er 'adjective 'comparative))
        (when est (switch-form est 'adjective 'adverb))
        (values q comparative superlative))) |#

