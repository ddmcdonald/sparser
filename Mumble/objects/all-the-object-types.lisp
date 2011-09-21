;;; -*- Syntax: Common-lisp; Mode: LISP -*-
;;; $Id: all-the-object-types.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  objects;all-the-object-types

;;; Copyright (C) 1985-2002  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; 1/13/95 added types for interface to applications copied from
;; original Symbolics code
#| 8/31/00 The symbol position is also used in a defstruct by Sparser, 
and something about MCL's implementation has them clashing, even though
they're in two different packages. So to get around this, I hacked
Def-type to rename mumble::position 'mposition' on the fly during the
definition. -- but it also needs to be promulgated through the subtypes.
   3/3/02 MCL 4.3.1 says you can't redefine the built-in class CLASS, so
it's been renamed "mclass".
|#


(in-package :mumble)

(eval-when (compile load eval)

(def-type named-object permanent ()
  (name   "a symbol"))
)


;################################################################
;       Types used constructing the Surface Structure Tree
;################################################################
(eval-when (compile load eval)
(def-type position temporary named-object
  (next           "the next position--initially the dominating slot")
  (previous       "the previous position--initially the dominating slot")
  (labels         "a list of labels;  the first is the name")  
  (visited-status "nil, entered, or left "))
)


(eval-when (compile load eval)
(def-type  node     temporary  mposition
  (first-constituent "a slot. The rest of the node's constituents~
                      chain off of this one via next-position.")
  (last-constituent  "the last slot in the phrase dominated by this node"))
)

(def-type phrasal-root temporary node
  (context-object      "a phrasal-context"))

(def-type interior-node temporary node)

(def-type  slot    temporary    mposition
  (contents	"either a node, a realization specification, or a word"))


(def-type phrasal-context  temporary named-object
  (node   		"points to the root node")
  (position-table   	"a-list of position name and position")
  (available-aps	"a-list of attachment point and position")
  (state		"if clause node, then verb group state~
			  if np node, then noun phrase state")
  (original-rspec	"points to rspec this phrase was realized from")
  (objects-referenced   "a list of the underlying objects (np's) realized by PSE"))

;################################################################
;     Realization-specifications
;################################################################

(eval-when (compile load eval)
(def-type  specification   temporary named-object
  (underlying-object		"pointer to the obj this is an instance of"))
)


(def-type  kernel-specification   temporary specification
  (arguments			"a list of Realization-specifications")
  (realization-function		"any valid choice for realization"))

(def-type bundle-specification    temporary specification
  (bundle-type                  "a bundle-type")
  (head				"the head specification, a bundle or kernel")
  (accessories   		"an association list ")
  (further-specifications	"a list of further specifications"))

(def-type further-specification temporary named-object
  (specification	"a kernel or bundle specification")
  (attachment-function	"attachment restriction (still in flux)"))


;#################################################################
;     Bundles
;#################################################################


(def-type bundle-type permanent named-object
  (driver	   "the function that executes to process the bundle")
  (accessory-list  "a list of keyword which may optionally be followed by a value"))

;################################################################
;               Types used in classes
;  each class is a predefined set of annotated choices
;################################################################
(eval-when (compile load eval)

(def-type  mclass permanent named-object
  (parameters  		"a list of the formal parameters")
  (choices	      	"a list of annotated choices with their characteristics"))


(def-type annotated-choice permanent named-object
  (choice		)
  (argument-list	))


(def-type  characteristic    permanent named-object)

(def-type  parameter         pernament named-object)
)

;################################################################
;               Types used in Realization
;################################################################

(eval-when (compile load eval)
(def-type  tree-family permanent mclass)


(def-type  realization-choice permanent annotated-choice
  (grammatical-characteristics	"a list of grammatical characteristics")
  (argument-characteristics     "a list of characteristic-name argument pairs")
  (required-accessories		"a list of accessory and possibly an argument pairs"))
)


(def-type  curried-tree-family   permanent  tree-family
  (bindings  			"an alist of parameters and constant values")
  (reference-tree-family  "a tree-family"))


(def-type tree-family-choice permanent realization-choice)

(def-type single-choice permanent realization-choice)


(def-type  grammatical-characteristic permanent characteristic)
  
(def-type  argument-characteristic permanent characteristic
  (parameter			"a parameter of the tree-family")
  (consistency-test		"a function"))


;################################################################
;               Types for attachment
;################################################################

(eval-when (compile load eval)
(def-type attachment-class  permanent mclass)

(def-type attachment-choice permanent annotated-choice
  (ap-required-accessories		"a list of accessory and possibly an argument pairs in the bundle being attached")
  (ap-parent-required-accessories  "a list of accessory and possibly an argument pairs in the bundle being realized"  ))


(def-type  attachment-point    permanent named-object
  (actions  "a list of actions to be carried out when this ap is used"))
)


					   
(def-type single-attachment-choice permanent attachment-choice)


(def-type  splicing-attachment-point    permanent attachment-point    
  (reference-labels  "a list of labels this point may be spliced~
                           with reference to")
  (link              "previous or next--splice into this link" )
  (new-slot          "a label--splice in this structure"))

(def-type  lowering-attachment-point   permanent attachment-point 
  (new-phrase        "a phrase--lower current phrase into this phrase")
  (key-position      "a label--slot in phrase to put original tree"))


#| The design from Zo -- note the refactoring
				   
 (def-type  ATTACHMENT-POINT    permanent named-object
  (actions  "a list of actions to be carried out when this ap is used")
  (reference-labels  "a list of labels this point may be spliced with reference to")
  (style-data "a stylistic-data object that mediates choices among ~
               alternative attachment points"))

 (def-type  SPLICING-ATTACHMENT-POINT    permanent attachment-point    
  (link              "previous or next--splice into this link" )
  (new-slot          "a label--splice in this structure"))

 (def-type  LOWERING-ATTACHMENT-POINT   permanent attachment-point 
  (new-phrase        "a phrase--lower current phrase into this phrase")
  (key-position      "a label--slot in phrase to put original tree"))

;; inserting AP are literally a combination of splicing and
;; lowering, but we haven't got a scheme for multiple inheritance
;; so we need new accessor names for the type that we're not
;; building on top of.
;;   We make it inherit from lowering-AP because that's the more
;; elaborate operation and this lets us call its code directly.
;;   To avoid multiplying out instances of the ap that all have the
;; same new-phrase they are cached against the phrase by the rspec
;; compiler, which also computes the key-position by examing that
;; phrase. We have the base-inserting-ap so that we can match the
;; ap when filtering for composition.
;;
 (def-type INSERTING-ATTACHMENT-POINT permanent lowering-attachment-point
  (link-to-splice "Usually contents")
  (reference-slot "the slot whose contents we are going to replace")
  (base-inserting-ap  "the AP that specializations are based on"))

|#




;################################################################
;               Accessory Types 
;################################################################


(def-type  accessory-type  permanent named-object
  (possible-values   "a list of possible values for this type")
  )


(def-type  accessory-value  permanent named-object
  (corresponding-type   "the accessory-type for this value")
  )


;#################################################################
;  PHRASES
;#################################################################

(def-type  phrase   permanent named-object
  (parameters-to-phrase "the arguments it is called with")   
  (definition		"a special-purpose, postprocessed S-expression"))



;#################################################################
;  LABELS
;#################################################################

(eval-when (compile load eval)
(def-type  label   permanent named-object)
)


(eval-when (compile load eval)
(def-type position-label permanent label
  (word-stream-actions			"a list of word-stream-actions")
  (associated-attachment-points		"a list of attachment-points"))
)


(def-type  node-label   permanent position-label)

(def-type  slot-label   permanent position-label
  (grammatical-constraints  "a list of grammatical-characteristics"))

(def-type word-label   permanent label)

(def-type word-stream-action-type   permanent named-object
  (ws-action              "function that is the action")) 

(def-type  word-stream-action   permanent named-object
  (action-type		"a word-stream-action-type")
  (moment		"initial or final")
  (object		"a word, punctuation-mark (an tree-fam??)")
  (wsa-condition		"a function"))
 


;################################################################
;                          words
;################################################################

(eval-when (compile load eval)
(def-type word-stream-item  permanent named-object)
)


(def-type  pronoun    permanent word-stream-item
  (person    "a symbol, (member first second third)")
  (number    "a symbol, (member singular plural)")
  (gender    "nil, or a symbol, (member male female neuter)")
  (cases     "a structure, with a field for each possible English case.  The 
              value of the field is a quoted string to be sent to the output
              stream.  For instance, `me' or `I.'"))


(eval-when (compile load eval)
(def-type word-stream-item-with-pname permanent word-stream-item
  (pname		"a string"))
)
  
(def-type  word    permanent word-stream-item-with-pname
  (word-labels		"a list of labels")
  (irregularities       "a detached plist"))

(def-type ttrace  permanent word-stream-item-with-pname
  (original-specification  "a realization-specification"))

(def-type punctuation-mark permanent word-stream-item-with-pname)

(def-type tense-marker  permanent word-stream-item )

(def-type blip permanent  word-stream-item )

(def-type possessive-marker   permanent word-stream-item )


;###############################################################
;  Types for the Interface to Applications
;###############################################################

(def-type  specification-template  permanent   named-object
  (function-from-objects-to-rspecs  "a symbol that names a function")
  (parameter-list                   "a list of symbols"))

(def-type  object-to-specification-table-entry  permanent  named-object
  (object-assigned  "an object from the underlying program")
  (template         "a specification template"))

(def-type table-entry-for-individuals  permanent
                                       object-to-specification-table-entry
  (arguments-to-the-template  "a list of constants"))

(def-type  table-entry-for-classes  permanent
                              object-to-specification-table-entry
  (argument-expressions-to-the-template  "a list of expressions"))
