;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "quantifiers"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.8 August 2013

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

(define-category  quantifier
    :specializes nil
    :instantiates nil
    :binds ((word  :primitive word)))


(defun define-quantifier (string &key brackets rules)
  (let* ((word (define-function-word string
                  :brackets brackets
                  :form 'quantifier))
         (category-name (name-to-use-for-category string))
         (object (find-individual 'quantifier :word word))
         cfrs )
    (let* ((form `(define-category ,category-name
                    :specializes ,category::quantifier
                    :instantiates :self
                    ;;  ??
                    :bindings (word ,word)))
           (category (eval form)))

      (unless object
        (setq object (define-individual 'quantifier
                        :word word)))

      (let ((cfr ;; the base rule for the word
             (def-cfr/expr category ;; lhs
                    (list word) ;; rhs
                :form 'quantifier
               :referent object)))
        (push cfr cfrs))

      (when (memq 'det rules)
        (let ((cfr1 (def-form-rule/expr `(,category ,category::noun)
                       :form 'np 
                       :referent '(:method quantify left-referent right-referent)))
              (cfr2 (def-form-rule/expr `(,category ,category::np)
                        :form 'np
                        :referent '(:method quantify left-referent right-referent))))
          (push cfr1 cfrs)
          (push cfr2 cfrs)))

      (when (memq 'of rules)
        ;; if we make this a conventional cfr, the bracket in front
        ;; of "of" will push us to the segment level before we can
        ;; see the rule, which is an unnecessary source of complexity
        (let* ((string (string-append string " of"))
               (pw (define-polyword/expr string))
               (cfr (def-cfr/expr 'quantifier-of `(,pw)
                       :form 'det
                      :referent object)))
          (push cfr cfrs)))

      ;;///  'the'  Swallow the preceding 'the' and add a 'definite'
      ;; type to the result. 
			  
      (push-onto-plist object cfrs :rules)
      object )))




(define-quantifier "all"     :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "any"     :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "both"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "each"    :brackets '( ].quantifier  .[np ))
(define-quantifier "enough"  :brackets '( ].quantifier  .[np ))
(define-quantifier "every"   :brackets '( ].quantifier  .[np ))
(define-quantifier "few"     :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "much"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "many"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "more"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "most"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "several" :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "some"    :brackets '( ].quantifier  .[np ) :rules '(of))
(define-quantifier "such"    :brackets '( ].quantifier  .[np ))


(define-quantifier "another" :brackets '( ].quantifier  .[np ) :rules '(det of))
  
  
(define-quantifier "additional" :brackets '( ].quantifier  .[np ) :rules '(det the))
(define-quantifier "other"      :brackets '( ].quantifier  .[np ) :rules '(det the))
(define-quantifier "others"     :brackets '( ].quantifier  .[np ) :rules '(the))

;;///////////////// don't belong here! want to be 'nominals' or some such
(define-function-word "something" :brackets '( ].quantifier  .[np ))
(define-function-word "someone"   :brackets '( ].quantifier  .[np  np]. ))
(define-function-word "nothing"   :brackets '( ].quantifier  .[np ))
(define-function-word "no one"    :brackets '( ].quantifier  .[np  np]. ))
(define-function-word "anything"  :brackets '( ].quantifier  .[np ))
(define-function-word "anyone"    :brackets '( ].quantifier  .[np  np]. ))
(define-function-word "everything"   :brackets '( ].quantifier  .[np  np]. ))
(define-function-word "everyone"  :brackets '( ].quantifier  .[np  np]. ))

  

(define-quantifier "no" :brackets '( ].quantifier  .[np )) 

(define-quantifier "not"  :brackets '( ].verb .[modal ))
  ;; had been '( ].quantifier ))  
  ;; which gets you out of a problem with "...be careful not to..."
  ;; where without this there's a break before "to"

(define-quantifier "none" :brackets '( ].quantifier  phrase.[ ) :rules '(of))


