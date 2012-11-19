;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/types.lisp

;; Initated 9/16/09. Added derivation tree nodes 10/6. 3/9/11 removed
;; co: from the defobject calls not that's it's been brought into utils.

(in-package :mumble) 


;;;---------------------------
;;; generic, high-level types
;;;---------------------------

;; Cribed from Zo set, which in turn was cribed from MWM's set. 

; named-object

; linguistic-object: features

; referential: referent, expressible-type

(defobject referential ()
  ((referent ;; a pointer to a model-level unit
    )))


; ?? linguistic-resource: choice-that-selects-this, anchors-adjunctions,
;                         higher-order-backpointers

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
  ((value)
     ;; Holds the value that the parameter gets in this instance.
   ))

(defobject adjunction-node (base-dt-node satellite-dt-node)
  ((ap)
   ;; points to one of Mumble's attachment-points
   ))

(defobject complement-node (base-dt-node satellite-dt-node)
  ((phrase-parameter)
     ;; points to the open parameter that the resource in the derivation
     ;; tree that this node will fill.
   ))




;;;---------------------
;;; Lexicalized phrases
;;;---------------------
;; These get decoded by instantiate-lexicalized-phrase

(defobject lexicalized-phrase ()
  ((resource))) ;; a phrase

(defobject saturated-lexicalized-phrase (lexicalized-phrase)
  ((bound))) ;; list of parameter-value-pair

(defobject partially-saturated-lexicalized-phrase 
    (saturated-lexicalized-phrase)
  ((free)))  ;; list of parameters


;;;---------
;;; go'fers
;;;---------

(defobject parameter-value-pair ()
  ((phrase-parameter) ;; Mumble parameter struct
   (value)))   ;; anything 



;;;----------
;;; printers
;;;----------

(defmethod print-object ((dtn base-dt-node) stream)
  (let ((r (referent dtn)))
    (format stream "#<dtn for ~a>" r)))

(defmethod print-object ((slp saturated-lexicalized-phrase) stream)
  (if (= 1 (length (bound slp)))
    (let ((pvp (car (bound slp))))
      (format stream "#<lp ~a: ~a = ~a>" (name (resource slp))
	      (name (phrase-parameter pvp)) (value pvp)))
    (call-next-method))) ;; how to print them??

(defmethod print-object ((cn complement-node) stream)
  (format stream "#<complement ~a = ~a>"
	  (name (phrase-parameter cn)) (value cn)))

(defmethod print-object ((an adjunction-node) stream)
  (format stream "#<adjunct ~a = ~a>"
	  (name (ap an)) (value an)))