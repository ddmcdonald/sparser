;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2003,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "of"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2011

;; formed 10/26/94 from [of genitive] and [group of type]. Added def-rule data 3/8/95
;; 7/13/98 added item-of-value. 7/8/00 added member-of.
;; (4/11/03) cloned item-of-value to item-of-value1 which has an instantiate-individual
;;  instruction in it -- otherwise "sales of $98.3 billion" won't work as an
;;  instance of an ern since that's based on psi.
;;  4/7/11 Addded of-complement. 8/18 added dependent-of. 8/26 fixed referent in
;; simple-of-complement. 9/26 reordered cases to make postprocessing happy, also
;; modified dependent-of so that the head and daughter would both pickout
;; the same edge, even if it doesn't make all that much sense.

(in-package :sparser)

#|  Tree families in this file:

       of-complement ----- "stock target of 62" No assumptions about meanings
       quantify-of-stuff - "530 tons of liquid nitrogen"
       of/genitive ------- "John's cat"
       group-of-type ----- "board of directors"
       item-of-value ----- "net income of $42 million"
       member-of --------- "first half of 1998", "borough of New York"
 dependent-of
|#

;;;--------------------------------------------
;;; X of Y  No assumptions about what they are.
;;;--------------------------------------------

(define-exploded-tree-family  simple-of-complement
  :binding-parameters ( np-item  of-item )
  :labels ( np  complement  base-np  result-type )
  :cases
    ((np+of-complement (np (base-np of-/complement)
                        :head left-edge
                        :instantiate-individual result-type
                        :binds (np-item right-edge
                                of-item left-edge)))

     (of-complement (of-/complement ("of"  complement)
                         :daughter right-edge
                         :head right-edge))))


;;;---------------------
;;; quantities of stuff
;;;---------------------

;; No additional determiner is needed.  There is no alternative formulation
;; without the 'of' (cp. of/genitive).  ////And the type of the result is an 
;; amalgam of the two parts
;;
;;   e.g. "all of the cake", "half of the morning", "530 tons of liquid nitrogen",  
;;        "a lot of people", "few of the inhabitants"  [Q/G/L/S sect. 4.25]
#|
(define-exploded-tree-family   quantify-of-stuff
  :binding-parameters ( quantity  stuff )
  :labels ( np  quantifier  np/after-of )
  :cases
    ((syntactic-of-complement (of-/np/after-of ("of" np/after-of)
                                 :head right-edge))
     (quantified-np  (np (quantifier of-/np/after-of)
                       :///subtype of the right by the left   |#




;;;--------------------------------------------------------------------------
;;; "The Foo Inc. subsidiary of Bar Corp.", "Bar Corp's Foo Inc. subsidiary"
;;;--------------------------------------------------------------------------

(define-exploded-tree-family   of/genitive
  :description "A part-whole relation. Relates two nps: a 'smaller', 'base' np is part of a 'larger', 'complement' np. They can be composed either using \"of\" or with a possessive."
  :binding-parameters ( larger  smaller )
  :labels ( np  possessive  complement  base-np  result-type )
  :cases
     ((np+genitive-of (np  (base-np  of-/complement)
                        :head left-edge
                        :instantiate-individual result-type
                        :binds (larger right-edge
                                smaller left-edge)))

      (possessive-formation (possessive/-s  (possessive  apostrophe-s)
                              :head left-edge))

      (possessive+np  (np  (possessive/-s  base-np)
                        :head right-edge
                        :instantiate-individual result-type
                        :binds (larger left-edge
                                smaller right-edge)))

      (of-complement  (of-/complement  ("of"  complement)
                         :head right-edge))))



;;;----------------------------
;;; e.g.  "board of directors"
;;;----------------------------
#|
  Head can and often does stand by itself when the complement is implicit
    from the context.

  Does not have a variant where the complement preposes and appears in
    the possessive as in "IBM's Japanese subsidiary".

  Does not have a variant where the complement preposes as just a classifier
    as in "squadron of marines" / "marine squadron".   |#   


(define-exploded-tree-family  group-of-type
  :description "These are formed from the name of a kind of group and the kind of individuals in the group as in \"board of directors\" or \"flock of birds\". The possessive is not possible, nor is there a variant where the complement appears as a premodifier."
  :binding-parameters ( type )
  :labels ( np group complement )
  :cases
     ((:complement (np (group of-/complement)
                     :head left-edge
                     :binds (type right-edge)))
    
      (:of-phrase (of-/complement ("of" complement)
                    :head right-edge
                    ))

    #|  this one needs a twitch in its semantics that makes it look to
          the discourse context to fill in its complement
      (:head-by-itself (??? (group)
                         :instantiates-individual group))   |#
      ))



;;;-----------------------------------------------------------------------
;;;  simple complement / direct object   e.g. "net income of $42 million"
;;;-----------------------------------------------------------------------

(define-exploded-tree-family  item-of-value
  :description ""
  :binding-parameters (item value)
  :labels (result-np np complement)
  :cases ((:complement (result-np (np of-/complement)
                         :head left-edge
                         :binds (item left-edge
                                 value right-edge)))
          (:of-phrase (of-/complement ("of" complement)
                        :head right-edge))))

;; includes a result-type -- don't want to mess with anything that's
;; using the equivalent without any as there aren't yet backpointers here.
(define-exploded-tree-family  item-of-value1
  :description ""
  :binding-parameters (item value)
  :labels (result-type result-np np complement)
  :cases ((:complement (result-np (np of-/complement)
                         :head left-edge
                         :instantiate-individual result-type
                         :binds (item left-edge
                                 value right-edge)))
          (:of-phrase (of-/complement ("of" complement)
                        :head right-edge))))


;;;-----------------------------------------------------------
;;; one of a set: "first half of 1998", "borough of New York"
;;;-----------------------------------------------------------

#| Retains the type of the head while adding information that makes
   the identity of the individual complete. |#

(define-exploded-tree-family  member-of
  :description ""
  :binding-parameters ( identifier )
  :labels ( np complement)
  :cases ((:complement (np (np of-/complement)
                          :head left-edge
                          :binds (identifier right-edge)))
          (:of-phrase (of-/complement ("of" complement)
                         :head right-edge))))


;;;------------------------------------
;;; dependent / substrate relationship 
;;;------------------------------------

;; Semantically the dependent only makes sense with, is part of,
;; the substrate. Notion from BFO (but not the correct terms).
;; Barnicles on rocks, dimples on cheeks, exits on thruways.
;; The choice of preposition depends on the specific relation 
;; but they're all a np-head + complement structure. 

(define-exploded-tree-family dependent-of
  :description ""
  :binding-parameters ( dependent substrate )
  :labels ( np prep complement )
  :cases ((:complement (np (np prep/complement)
                         :head left-edge
                         :binds (dependent left-edge
                                 substrate right-edge)))
          (:pp (prep/complement (prep complement)
                    :daughter right-edge
                    :head right-edge))))
