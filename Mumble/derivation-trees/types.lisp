;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2011,2015-2017 David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/types.lisp
;; July 2017

;; Initated 9/16/09. Added derivation tree nodes 10/6. 3/9/11 removed
;; co: from the defobject calls now that's it's been brought into utils.
;; Resumed work 10/7/15. Generalizing lexicalized types 1/11/16

(in-package :mumble) 

;;;---------------------------
;;; generic, high-level types
;;;---------------------------

;; Cribed from Zo set (in comments just before the class defintions),
;; which in turn was cribed from MWM's set. 

;; named-object

(defclass has-name ()
  ((mname :initform nil :accessor mname
    :documentation "Should be set to a symbol that is 
     a suitable short name for the object."))
  (:documentation
   "This would be more natural as 'name', but that is
 a field on the -struct- for named-object that's built using def-type.
 Probably the way to go is a thorough revision of def-type
 to produce classes and instances using the original set
 of accessors/setters."))

; linguistic-object: features

; referential: referent, expressible-type

(defclass referential ()
  ((referent :initarg :referent :initform nil :accessor referent
    :documentation "a pointer to a model-level unit")))
    


; ?? linguistic-resource: choice-that-selects-this, anchors-adjunctions,
;    higher-order-backpointers

(defobject includes-syntax-driven-choices ()
  ;; Would get filled in with a slot or slots that would layout
  ;; alternatives that cannot be selected among without knowing
  ;; details of the syntactic environment that aren't available
  ;; as the derivation tree is being assembled or earlier.
  ;; C-command is an obvious candidate for such things. 
  (   ))

; parameterized: parameters, bound-parameters, open-parameters


;;;-----------------------
;;; Derivation tree nodes
;;;-----------------------

(defclass derivation-tree ()
  ((participants :initarg :participants :initform nil :accessor participants
    :documentation "Lists of all the units referenced anywhere below 
      in an alist along with the derivation tree node for which they 
      are the referent."))
  (:documentation "The original design called for having a single
    instance of the derivation tree and reusing it. That idea 
    was abandoned early though the notion of a list of participants
    remains a good one that should be tried out (ddm 5/25/17)"))
   

(defclass base-dt-node (referential derivation-tree)
  ((resource :initarg :resource :initform nil :accessor resource
    :documentation "Could be of any size depending on the larger circumstances:
     a bare word (in Mumble's space of words), a lexicalized phrase,
     a dtn of arbitrary complexity.")
   (bkptrs :initarg :bkptrs :initform nil :accessor bkptrs
    :documentation "These are for ease of debugging and possibly for tactical 
      decisions by the microplanner. We probably want to point all the way 
      up to the top and to our immediate superior."))
  (:documentation
    "This is the top of the derivation tree taxonomy. 
     The inherited 'referent' slot from referential points back to the 
     individual or whatever we're realizing. The 'resource' slot points
     to the 'linguistic resource' we're going to use as the basis of
     our realization. It is typically a phrase or a lexicalized phrase"))


(defclass derivation-tree-node (base-dt-node)
  ((complements :initarg :complements :initform nil :accessor complements
    :documentation "Contains a list of complement nodes that specify the 
     values of the open variables for a parameterized resource like a 
     phrase or lexicalized phrase.")
   (adjuncts :initarg :adjuncts :initform nil :accessor adjuncts
    :documentation "Contains a list of adjunct nodes for any attachments.
      This is an ordered list. The attachments will be done in order from
      first to last. This is the only way at present to handle arbitrary
      ordering conventions (as in 'little brown fox'). The alternative
      would be a systemics-style approach that would differentiate the AP
      with each successive modifier.")
   (features :initarg :features :initform nil :accessor features
    :documentation "An unordered list of Mumble features. The ordering
      constraints are handled inside Mumble."))
  (:documentation
   "We give this class the full name because it's the prototype.
    In native Mumble terms it's the equivalent of a bundle, and
    the resource is the equivalent of a kernel."))


(defclass satellite-dt-node ()
  ((value :initarg :value :initform nil :accessor value
    :documentation "Points to whatever constitutes a 'value'
      in the incorporating class."))
  (:documentation
   "Provides slot used by both complement and adjunct nodes."))

(defclass  adjunction-node (base-dt-node satellite-dt-node)
  ((ap :initarg :ap :initform nil :accessor ap
    :documentation "Points to the attachment point to use"))
  (:documentation
   "Packages an attachment point an the resource it
    is supposed to attach."))

(defclass complement-node (base-dt-node satellite-dt-node)
  ((phrase-parameter :initarg :phrase-parameter :initform nil :accessor phrase-parameter
    :documentation "A phrase-parameter object"))
  (:documentation
   "Points to the open parameter that the resource in the derivation
    tree of this node will fill."))



;;;-----------------------
;;; Lexicalized resources
;;;----------------------

(defclass lexicalized-resource (has-name) ()
  (:documentation "Provides a common parent for lexicalized phrases
    and attachments."))

(defclass lexicalized-phrase (lexicalized-resource)
  ((phrase :initarg :phrase :initform nil :accessor phrase
   :documentation "Points to a phrase. See Mumble/grammar/phrases.lisp
     and Mumble/documentation/defined-phrases.lisp"))
  (:documentation "This is a 'lexicalized' phrase because the resources
    we use (saturated and partially-saturated phrases) will have
    one or more of their parameters bound. Typically to a head word."))

(defclass saturated-lexicalized-phrase (lexicalized-phrase)
  ((bound :initarg :bound :initform nil :accessor bound
    :documentation "A list of parameter-value-pair objects"))
  (:documentation
   "A lexicalized phrase is 'saturated' if a value has been provided
    for each of its parameters."))

(defclass partially-saturated-lexicalized-phrase (saturated-lexicalized-phrase)
  ((free :initarg :free :initform nil :accessor free
    :documentation "list of phrase parameters"))
  (:documentation
   "A lexicalized phrase is 'partially saturated' if some of its parameters
    are bound and some are open."))


(defclass lexicalized-attachment (lexicalized-resource)
  ((point :initarg :point :initform nil :accessor point
    :documentation "an attachment point. See Mumble/grammar/attachment-points.lisp")
   (value :initarg :value :initform nil :accessor value
    :documentation "the resource to attach"))
  (:documentation "The equivalent of a saturated phrase for attachment points"))


(defclass parameter-value-pair ()
  ((phrase-parameter :initarg :phrase-parameter :initform nil :accessor phrase-parameter
    :documentation "a Mumble parameter object")
   (value :initarg :value :initform nil :accessor value
    :documentation "any sort of resource"))
  (:documentation "Packaging for phrase parameters and their values
    for use with saturated or partially saturated lexicalized phrases"))


;;;-------------------------------------------------
;;; Sparser category - Mumble phrase correspondence
;;;-------------------------------------------------

(defclass parameter-variable-pair ()
  ((parameter :initarg :param :initform nil :accessor corresponding-parameter
    :documentation "a phrase parameter")
   (variable :initarg :var :initform nil :accessor corresponding-variable
    :documentation "a Krisp variable"))
  (:documentation "Data structure to hold the correspondence.
    Doesn't make sense outside the context of a particular
    category and phrase."))

(defclass category-linked-phrase ()
  ((class :initarg :class :initform nil :accessor linked-category
    :documentation "backpointer to the Sparser category")
   (lp :initarg :lp :initform nil :accessor linked-phrase
    :documentation "The lexicalized phrase that the parameters
      apply to. Prototypically a verb.")
   (map :initarg :map :initform nil :accessor parameter-variable-map
    :documentation "List of parameters and variables
      encoded as parameter-variable pairs"))
  (:documentation
   "Packages the essential elements of what goes into
 a dtn for a particular category by specifying the phrase
 to use ('lp' linked-phrase), and the mapping between 
 the variables of the category (bindings on an individual)
 and the parameters of the phrase."))

(defclass mumble-rdata (category-linked-phrase)
  ((variables :initarg  :vars :initform nil :accessor variables-consumed
    :documentation "An individual will often have more germane
      bindings than will be handled by this CLP. Here we list
      the variables we're using so they can be taken out of
      consideration in realize-via-binding.")
   (head :initarg :head :initform nil :accessor head-word
    :documentation "The head word (mumble-side)"))
  (:documentation "Build by setup-mumble-data to record everything
 that is necessary or just useful in realizing an individual of
 a particular category"))


(defclass variable-mdata-pair ()
  ((variables :initarg :vars :initform nil :accessor mpair-vars
    :documentation "a list of Krisp variables")
   (mdata :initarg :mdata :initform nil :accessor mpair-mdata
          :documentation "a mumble-rdata object"))
  (:documentation "Packaging for use in multi-subcat-mdata.
    It exposes the variables, which are the primary discriminator
    for selecting one of the mumble-rdata rather than another."))

(defclass multi-subcat-mdata ()
  ((pairs :initarg :mpairs :initform nil :accessor mdata-pairs
    :documentation "a list of variable-mdata-pair objects"))
  (:documentation "For cases where there are multiple subcategorization
    patterns for a given lexical item, and the choice will depend on
    how many variables we want to express in the realization."))


(defun mumble-rdata? (item)
  "Is this item one of the several kinds of mumble realization data?"
  (typecase item
    (category-linked-phrase t)
    (mumble-rdata t)
    (multi-subcat-mdata t)
    (cons (every #'mumble-rdata? item))
    (otherwise nil)))
