;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010-2012 David D. McDonald  All Rights Reserved

;; /Mumble/derivation-trees/make.lisp

;; 11/12 Picked it up again and making diverse little changes.

(in-package :mumble)


(defvar *the-derivation-tree* nil
  "This is the scratch pad for the microplanner as it works out what to say.")

(defun clear-derivation-tree-data ()
  (setq *the-derivation-tree* nil))

(defun initialize-derivation-tree-data (&key root) ;; participants too?
  ;;/// name reflects probability of more info acruing to this
  (setq *the-derivation-tree* (make-instance 'derivation-tree
					     :root root))
  (when root
    (typecase root
      (derivation-tree-node
       (let ((unit (referent root)))
	 (when unit
	   (push unit (participants *the-derivation-tree*))))))))



;;--- base case

(defun make-derivation-tree-node (&key referent)
  ;; hook for a resource
  (let ((dtn (make-instance 'derivation-tree-node
			    :referent referent)))
    dtn))



;;---

(defun provide-phrase-and-data (name-of-phrase)
  ;; Called by sparser::rule-descriptor-to-nlg-resource
  ;;/// There are 9 different np phrases. Where does the knowledge 
  ;; about them reside?
  ;; Besides (1) returning the phrases, this must return 
  ;;   (2) what argument or arguments to bind
  ;;   (3) what to draw on to get default features 
  ;;       (a vague notion as of 11/10/09, but the defaults have to come from somewhere)
  (let ((phrase (phrase-named name-of-phrase)))
    (unless phrase
      (error "There is no phrase named ~a" name-of-phrase))
    (values phrase (parameters-to-phrase phrase))))



;;---

#| For both adjuncts and complements, we get the most flexibility
in choice of realization if we have already determined how we
want them done as part of making the choice to treat as, e.g., 
a complement vs. the main verb ("acquire" vs. "acquisition").

Alreay determining the realization means having dtn's as the
values, rather than model-level objects (as at the moment 12/13/09).

With model-level objects as the values, the realization will
be determined in place (e.g. in a subject slot) by a call to 
realization-for, which is ok if a realization of the necessary
type is available (inevitable when reversing specific texts),
but we don't want to count on that.

|#

(defun make-adjunction-node (ap i dtn)
  ;; Args are the attachment point, the individual that's its 'value' 
  ;; (the one we'll look to for the resource that we attach at that spot
  ;; -- the value we extracted in read-out-rnode) and the
  ;; derivation-tree-node that we add this ap node to. 
  (let ((ap (typecase ap
              (symbol (attachment-point-named ap))
              (attachment-point ap)
              (otherwise
               (push-debug `(,ap ,i ,dtn))
               (error "~a does not name an attachment point" ap)))))
    (let ((apn (make-instance 'adjunction-node 
                 :ap ap
                 :value i
                 :referent i ;; is this right?
                 :bkptrs dtn)))
      (push apn (adjuncts dtn))
      apn)))

(defun make-complement-node (parameter i dtn)
  (let ((cn (make-instance 'complement-node
			   :phrase-parameter parameter
			   :bkptrs dtn)))
    (setf (value cn) i) ;; could have folded these into the make-instance call
    (setf (referent cn) i) ;; ditto
    ;;(setf (complements dtn) `(,cn)) ;; was causing duplicate complement-node
    (push cn (complements dtn))
    cn))
			    



