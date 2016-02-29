;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2011,2015-2016 David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/types.lisp

;; Initated 9/16/09. Added derivation tree nodes 10/6. 3/9/11 removed
;; co: from the defobject calls not that's it's been brought into utils.
;; Resumed work 10/7/15. Generalizing lexicalized types 1/11/16

(in-package :mumble) 


;;;---------------------------
;;; generic, high-level types
;;;---------------------------

;; Cribed from Zo set, which in turn was cribed from MWM's set. 

; named-object
(defobject has-name ()
  ((mname))) ;; just a symbol
#| This is problematic in that 'name' is a field on the
 -struct- for named-object that's built using def-type.
 Probably the way to go is a thorough revision of def-type
 to produce classes and instances using the original set
 of accessors/setters. 
|#
; linguistic-object: features

; referential: referent, expressible-type

(defobject referential ()
  ((referent ;; a pointer to a model-level unit
    )))


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

(defobject derivation-tree ()
  ;; This is what's passed to Mumble. It is not itself the basis of
  ;; the realization. Instead it points to it via its root slot. 
  ;; That lets us easily change the top resource. 
  ;;   We can either make a new one of these every time or have the
  ;; same one an keep clearing it. 
  ((root) ;; pointer to the 'real' top node of the tree
   (participants)))
      ;; lists of all the units referenced anywhere below in an alist
      ;; with the derivation tree node for which they are the referent.


(defobject base-dt-node (referential)
  ;; This is the top of the derivation tree taxonomy. 
  ;; The 'referent' slot from referential points back to the Individual
  ;; or whatever we're realizing. The 'resource' slot points to the
  ;; "linguistic resource" we're going to use
  ((resource)
     ;; Could be of any size depending on the larger circumstances:
     ;; a bare word (in Mumble's space of words), a lexicalized phrase,
     ;; a dt node of arbitrary complexity.
   (bkptrs)
     ;; These are for ease of debugging and possibly for tactical decisions
     ;; by the microplanner. We probably want to point all the way up to the
     ;; top and to our immediate superior.
   ))

(defobject derivation-tree-node (base-dt-node)
  ;; Gets the full name because it's the prototype.
  ;; In native Mumble terms it's the equivalent of a bundle
  ;; (The resource is the equivalent of a kernel.)
  ;; Inherits 'resource' and 'bkptrs'.
  ((complements)
    ;; "complement nodes" for the open variables when there is a parameterized
    ;; resource like a lexicalized phrase. 
   (adjuncts)
    ;; "adjunct nodes" for any attachments. This is an ordered list for cases
    ;; where the same attachment point is used "little brown fox" (the alternative
    ;; is a systemicist-style approach that would differentiate the AP.
   (features)  
    ;; Mumble has a set of features. This can be just an unordered list
   ))


(defobject satellite-dt-node ()
  ;; Holds the value that the parameter gets in this instance.
  ((value)
     
   ))

(defobject adjunction-node (base-dt-node satellite-dt-node)
  ;; points to one of Mumble's attachment-points
  ((ap)))

(defobject complement-node (base-dt-node satellite-dt-node)
  ;; points to the open parameter that the resource in the derivation
  ;; tree that this node will fill.
  ((phrase-parameter)))


;;;---------------------
;;; Lexicalized phrases
;;;---------------------

(defobject lexicalized-resource (has-name) ())

(defobject lexicalized-phrase (lexicalized-resource)
  ((phrase))) ;; a phrase

(defobject saturated-lexicalized-phrase (lexicalized-phrase)
  ((bound))) ;; list of parameter-value-pair

(defobject partially-saturated-lexicalized-phrase 
    (saturated-lexicalized-phrase)
  ((free)))  ;; list of parameters


(defobject lexicalized-attachment (lexicalized-resource)
  ((point)
   (value)))

;;;---------
;;; go'fers
;;;---------

(defobject parameter-value-pair ()
  ((phrase-parameter) ;; Mumble parameter struct
   (value)))   ;; anything 


;;;

(defclass category-linked-phrase ()
  ((class :initarg :class :accessor linked-category
    :documentation "backpointer to the category")
   (lp :initarg :lp :accessor linked-phrase
    :documentation "The lexicalized phrase that the parameters
      apply to. Prototypically a verb.")
   (map :initarg :map :accessor parameter-variable-map
    :documentation "List of parameters and variables
      encoded as parameter-variable pairs")))

(defclass parameter-variable-pair ()
  ((parameter :initarg :param :accessor corresponding-parameter
    :documentation "a phrase parameter")
   (variable :initarg :var :accessor corresponding-variable
    :documentation "a Krisp variable")))


;;;----------
;;; printers
;;;----------

(defmethod print-object ((dtn base-dt-node) stream)
  (let ((r (referent dtn)))
    (format stream "#<dtn for ~a>" r)))

(defmethod print-object ((slp saturated-lexicalized-phrase) stream)
  (print-unreadable-object (slp stream)
    (cond
     ((and (typep slp 'has-name) (mname slp))
      (format stream "<slp ~a>" (mname slp)))
     (t
      (format stream "slp: ~a" (name (phrase slp)))
      (loop for pvp in (bound slp)
        do (format stream "~&  ~a = ~a"
                   (name (phrase-parameter pvp))
                   (value pvp)))))))

(defmethod print-object ((pvp parameter-value-pair) stream)
  (print-unreadable-object (pvp stream ) ;; :type t)
    (format stream "pvp: ~a = ~a" 
            (name (phrase-parameter pvp)) (value pvp))))

(defmethod print-object ((cn complement-node) stream)
  (let ((parameter (phrase-parameter cn))
        (value (value cn)))
    (format stream "#<complement ~a = ~a>"
            (if parameter (name parameter) "<nil parameter>")
            value)))

(defmethod print-object ((an adjunction-node) stream)
  (let ((ap (ap an)))
    (format stream "#<adjunct ~a = ~a>"
            (if ap (name ap) "<nill AP>") (value an))))
