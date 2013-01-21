;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005,2011-2013 David D. McDonald  -- all rights reserved
;;; copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "pre-head np modifiers"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.8 January 2013

;; initiated 4/28/94 v2.3
;; 0.1 (10/20) refined some of the distinctions amoung cases
;;     (12/29) added classifier-head/of/prep
;; 0.2 (2/22/95) started adding description strings
;; 0.3 (4/14) removed inclusion of def-np etf
;;     (7/26) added modifier-creates-subtype
;; 0.4 (8/11) modified  def+proper+np-head to use np-common-noun/DEFINITE,
;;      leaving out the indefinites.  11/15 added some definitions.
;; 0.5 (12/22) added a hyphen to modifier-creates-definite-individual to handle
;;      "first-quarter" - it overgenerates in the case of multiple mappings.
;; 0.6 (3/29/96) Added modifier-creates-individual and descriptions for its relatives.
;; 0.7 (7/12/98) Added definite-proper+np-head.
;;     (7/13) tweaked modifier-creates-individual to use subtype.
;;     (6/25/99) added number-of-quantity.
;;     (4/29/00) added quantity-of-kind.  (7/8) tweaked doc. and added
;;      designated-instance-of-set.  (2/9/05) adjusted modifier-creates-subtype so it
;;      would really make a subtype. (3/11/05) Added two possessive etf.
;;     (3/29/06) fixed :function referent in number-of-quantity. For unknown reasons
;;      it wasn't a list and it blocked the load.
;; 0.8 (8/8/11) Added a form-based modifier.
;;     (1/5/13) Removed common-noun/plural case from generic-np-premodifier because
;;      decode-rdata-mapping was taking it to be a slashed category. ///Check whether
;;      we'd ever get a form category of that name.

(in-package :sparser)

#|  ETFs in this file:

        modifier-creates-subtype --------------- "fiscal quarter"
        modifier-creates-individual ------------
        modifier-creates-definite-individual --- "last year"
        designated-instance-of-set ------------- "(the) third quarter"
        quantity+kind -------------- "7 tons"
        number-of-quantity --------- "10 million", "7 dozen"
        quantity-of-kind ----------- "three companies"
        quantity+idiomatic-head ---- "45(-year) old"
        def+proper+np-head --------- "the Southeast Bank unit"
        definite-proper+np-head ---- "Australian dollar"
        classifier-head/of/prep ---- "(the) CEO of Worlco", "(the) Worlco CEO"
        possessive/new-object ------ "Apple's third quarter"
        possessive/bind-slot ------- "Verizon's subsidiary"
        generic-np-premodifier ----- <mod> + <np-head>, with a method combination
|#




(define-exploded-tree-family  modifier-creates-subtype
  :description "An n-bar phrase (an np before the determiner is added) 
       consisting of a head noun (or n-bar phrase) with a 
        preceding modifier, where the combination denotes 
        an object type rather than an instance 
        and no substructure is retained. 
        Compare to Modifier-creates-individual or
            Modifier-creates-definite-individual."
  :binding-parameters (  )
  :labels ( n-bar subtyping-modifier np-head result-category )
  :cases
     ((:modifier (n-bar (subtyping-modifier np-head)
                   :head right-edge
                   :subtype left-edge))))




(define-exploded-tree-family  modifier-creates-individual
  :description "An n-bar phrase (an np before the determiner is added) 
       consisting of a head noun (or n-bar phrase) with a 
       preceding modifier, where the combination denotes 
       an instance of a different type than the head
       but one that still requires a determiner, 
       e.g. \"Dutch company\", \"publishing group\". 
       Compare to Modifier-creates-subtype or
                Modifier-creates-definite-individual."
  :binding-parameters ( modifier  head  )
  :labels ( n-bar subtyping-modifier np-head result-category )
  :cases
     ((:modifier (n-bar (subtyping-modifier np-head)
                   :subtype result-category 
                   :binds (modifier left-edge
                           head right-edge)
                   :head right-edge ))))




#|  The modifer takes a n-bar that denotes a category of stuff and
    creates an individual with a different type.
    The result is an NP that doesn't need a determiner.
      "last year"   |#

(define-exploded-tree-family  modifier-creates-definite-individual
  :description "A combination of a head noun (or n-bar) and a modifier 
     such as a sequencer. The resulting NP does not need a determiner 
     and now refers to a specific individual, a specific instance
     of the head term. E.g. \"last year\""
  :binding-parameters ( individuator  base-category )
  :labels ( np modifier np-head result-type )
  :cases
     ((:definite-modifier
        (np (modifier np-head)
          :instantiate-individual result-type
          :binds (individuator left-edge
                  base-category right-edge))
        :head right-edge )

      (:hyphenated (np-head ("-" np-head)
                    :head right-edge))))


#| The head denotes a component of some larger entity, in the examplars the larger 
   entity has a specific, fixed number of these components. The addition of the 
   modifier (qualifier usually) picks out one of these components and
   creates a psi. The choice of modifier is sufficent to pick out the component: 
   Since the entity isn't included, this phrase by itself isn't enough to pick
   out an individual: "third quarter", "seventh son". 
|#

(define-exploded-tree-family  designated-instance-of-set
  :description ""
  :binding-parameters ( designator )
  :labels ( np qualifier np-head )
  :cases ((:qualifier (np (qualifier np-head)
                       :head right-edge
                       :binds (designator left-edge)))
          ))



#|  "7 ton", "44 years"

  The result is an NP.  It doesn't need a determiner.
  The category of the np is different from the category of the head.
      but the head does contribute information |#

(define-exploded-tree-family  quantity+kind
  :description "A complete noun phrase consisting of a word or phrase 
       that refers to a quantity and then a head that names a kind of 
       individual. The combination creates a new individual 
       of a different type with the quantity and kind as its defining parts,
       that the np will refer to and the quantify adds, e.g. \"7 tons\", 
       which creates a measurement, or \"43 years\" which creates an age."
  :binding-parameters ( quantity base )
  :labels ( np modifier np-head result-type )
  :cases
     ((:modifier (np (modifier np-head)
                  :instantiate-individual result-type
                  :binds (quantity left-edge
                          base right-edge))
                  :head right-edge)

      (:hyphenated  (np-head ("-" np-head)
                      :daughter right-edge))))


#| A variation on quantity+kind's structure that might be specific to numbers.
It is just a way of assembling a number as a composition of other number phrases
always headed by an mulitplier word, e.g. "10 million"
|#

(define-exploded-tree-family  number-of-quantity
  :description "A way of formulating a number that consists of a number 
     modifying the name of a quantity, e.g. \"5 dozen\", \"1.52 trillion\". 
    The result is a complete noun phrase. Compounded instance of this family 
    are always left-branching, e.g. \"15 dozen dozen\" brackets as ((15 dozen) dozen). 
    The resulting number has to be calculated, and should include illions-distribution
    binding, so it deploys a function in its reference field."
  :binding-parameters ( )
  :labels ( np modifier np-head )
  :cases
     ((:modifier (np (modifier np-head)
                  :function (apply-multiplier))
                 :head right-edge)                 

      (:hyphenated  (np-head ("-" np-head)
                      :daughter right-edge))))


;; Same thing as quantity+kind, but the head doesn't contribute any information.
;; e.g. "(47 years) old"

(define-exploded-tree-family  quantity+idiomatic-head
  :binding-parameters ( quantity )
  :labels ( np modifier np-head result-type )
  :cases
     ((:modifier (np (modifier np-head)
                  :instantiate-individual result-type
                  :head right-edge
                  :binds (quantity left-edge)))

      (:hyphenated  (np-head ("-" np-head)
                      :daughter right-edge))))



#| Another variation where we create, e.g., a collection of objects of the type 
of the head by composing it with a numerical quantifier, e.g. "three companies".
Whether it's generic enough to hand all sorts of quantifying determiners
(e.g. "all") remains to be seen.  |#

(define-exploded-tree-family  quantity-of-kind
  :description "Creates or elaborates the collection on the head."
  :binding-parameters ( item )
  :labels ( np quantifier np-head )
  :cases
    ((:quantifier (np (quantifier np-head)
                    :head right-edge
                    :binds (item left-edge)))))



#| The head contributes no information beyond indicating the
   phrase type.  e.g. "(44-year)-old"   |#

(define-exploded-tree-family  item+idiomatic-head
  :description "A complete noun phrase that consists of a specific individual and a semantically empty word, often linked by a hyphen, where the function of the empty, idiomatic word is to indicate what kind of individual the phrase as a whole refers to, e.g. \"44-year-old\", which takes the amount of time into an age, or \"New York-based\", which takes the city into a location."
  :binding-parameters ( item )
  :labels ( np modifier np-head result-type )
  :cases
     ((:modifier (np (modifier np-head)
                  :instantiate-individual result-type
                  :binds (item left-edge))
                 :head right-edge)

      (:hyphenated  (np-head ("-" np-head)
                      :daughter right-edge))))


;; Written for "US 20" "MA 102". Quite idiosyncrating
;;
(define-exploded-tree-family  pair-instantiates-category
  :description "It takes both items to define the category, very weak notion of a head, but nonimally it's the second item."
  :binding-parameters ( item1  item2 )
  :labels ( np first second result-type )
  :cases ((:modifier ;;????
           (np (first second)
             :instantiate-individual result-type
             :binds (item1 left-edge
                     item1 right-edge)
             :head right-edge))))


#|  "the Southeast Bank unit"

  The result is an N-bar.  It requires a definite determiner.
  The modifier is a specific individual, hence the requirement of
   a definite determiner. 
|#

(define-exploded-tree-family  def+proper+np-head
  :description "A combination of a general head and a modifier that refers to a specific individual. The result needs a determiner to be a complete NP, and refers to a different kind of individual than the head does. E.g. \"(the) Southeast Bank unit\""
  :incorporates np-common-noun/definite
  :binding-parameters ( individual  base )
  :labels ( np n-bar proper-modifier np-head result-type )
  :cases
     ((:premodifier (n-bar (proper-modifier np-head)
                       :instantiate-individual result-type
                       :binds (individual left-edge
                               base right-edge))
                    :head right-edge )))


#|  "Australian dollar"
   
  Just like def+proper+np-head except that the definiteness of the modifier
  means that no additional determiner is needed. C.f. "an Australian dollar"
  where the determiner is interpreted as a count. 
|#
(define-exploded-tree-family  definite-proper+np-head
  :description "A combination of a general head and a modifier that refers to a specific individual. The modifier is a self-contained definite such as a country or a month. The result is a full np that does not require a determiner and it is of a different type than either of its elements. E.g. \"April showers\", \"Australian dollars\""
  :binding-parameters ( individual  base )
  :labels ( np proper-modifier np-head result-type )
  :cases 
     ((:premodifier (np (proper-modifier np-head)
                       :instantiate-individual result-type
                       :binds (individual left-edge
                               base right-edge))
                    :head right-edge )))

  



#|  "(a) Worlco director"  "(the) Worlco directors"  "(the) Worlco CEO"
    "(the) CEO of Worlco"   "(a) director at Worlco"

Cite: 13.57 of Quirk et al. (Brown)  pg.914
  "a rod of iron"             "an iron rod"
  "the door of the cupboard"  "the cupboard door"
  "the shooting of tigers"    "tiger shooting"
  "a story about the war"     "a war story"
  "a cloth for dishes"        "a dish cloth"
  "a village in Sussex"       "a Sussex village"
  "a man from Sussex"         "a Sussex man"

These things verge on being compound nouns.

These would be of/genitive except that
  (1) the relationship between the two items is arbitrary
  (2) the premodifier form is not possessive (probably because the
      resulting individual doesn't have to be specific)

  The modifier provides enough information to change the type
    of the phrase (though that construal might be part of my
    analysis of 'position' and not general -- all of Quirk's examples
    remain with the type of the head).
  The modifier is a noun (or n-bar, proper noun, etc.)
  Both the head and modifier carry information.
  Whether a determiner is needed is probably a function of the
    head, but I need more examples to be sure.  |#

(define-exploded-tree-family  classifier-head/of/prep
  :description "A pair of two nouns (gerunds, etc.) that combine to produce an object of a related but different type: \"Worlco director\", \"war story\", \"toy gun\", that can alternate with a prepositional form: \"director of Worlco\", \"story about (the) war\""
  :binding-parameters ( classifier  base )
  :labels ( np modifier np-head preposition pp result-type )
  :cases
     ((:premodifier (np (modifier np-head)
                      :instantiate-individual result-type
                      :binds (classifier left-edge
                              base right-edge))
                    :head right-edge )

      (:pp-adjunct (np (np-head pp)
                       :instantiate-individual result-type
                       :binds (classifier right-edge
                               base left-edge))
                   :head left-edge)

      (:pp  (pp (preposition modifier)
                :daughter right-edge))))



(define-exploded-tree-family  possessive/new-object
  :description ""
  :binding-parameters ( result-type pos-slot head-slot )
  :labels ( np possessive np-head )
  :cases 
    ((:possessive (np (possessive np-head)
                    :head right-edge
                    :instantiate-individual result-type
                    :binds (pos-slot left-edge)
                            head-slot right-edge))))


(define-exploded-tree-family  possessive/bind-slot
  :description ""
  :binding-parameters ( pos-slot )
  :labels ( np possessive np-head )
  :cases  
    ((:possessive (np (possessive np-head)
                    :head right-edge
                    :binds (pos-slot left-edge)))))



(define-exploded-tree-family  generic-np-premodifier
  :description "Form-rules to allow the combination of a designated modifier with any of the possible np heads. Have to specify the function/method to use for working out the referent."
  :binding-parameters ()
  :labels ( premod ) ;; n.b. this label can't be a form category
                     ;; or it will become the form of the rule
  ;; The premod is usually an adjective.
  ;; Could conceivably also be a noun-qualifier, but we usually want to
  ;; think of those as creating subclasses.
  :cases
     ;; Not pronoun, proper-noun, or (??) np
     ((:modifier (n-bar (premod common-noun)
                   :method (modifier+noun left-edge right-edge)
                   :head right-edge))
;; That category doesn't exist without subtyping, and might not even
;; do so then
;;      (:modifier (n-bar (premod common-noun/plural)
;;                   :method (modifier+noun left-edge right-edge)
;;                   :head right-edge))
      (:modifier (n-bar (premod n-bar)
                   :method (modifier+noun left-edge right-edge)
                   :head right-edge))
      (:modifier (n-bar (premod np-head)
                   :method (modifier+noun left-edge right-edge)
                   :head right-edge))))
