;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-

;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010-2015 David D. McDonald  All Rights Reserved

;; /Mumble/derivation-trees/make.lisp

;; 11/12 Picked it up again and making diverse little changes. More on
;; 11/19/13. Fixed bug in make-complement-node 11/18/15. 

(in-package :mumble)

;;;------------------
;;; store and access
;;;------------------

;;--- word to its lexicalized phrase 

(defparameter *strings-to-lexicalized-phrases*
  (make-hash-table :test 'equalp))

(defgeneric get-lexicalized-phrase (word)
  (:documentation "Given a word or a string, return
   the lexicalized-phrase it grounds."))

(defmethod get-lexicalized-phrase ((pname string))
  (gethash pname *strings-to-lexicalized-phrases*))

(defmethod get-lexicalized-phrase ((name symbol))
  (get-lexicalized-phrase (symbol-name name)))

;; There methods with Sparser signatures are in
;; Sparser/.../interface/mumble/interface.lisp

(defgeneric record-lexicalized-phrase (word lp)
  (:documentation "When a lexicalized phrase is defined,
   record the association of the head word and the phrase
   so that it can be retrieved by get-lexicalized-phrase."))

(defmethod record-lexicalized-phrase ((word word) 
                                      (lp lexicalized-resource))
  (record-lexicalized-phrase (pname word) lp))


(defmethod record-lexicalized-phrase ((pname string)
                                      (lp lexicalized-resource))
  ;;/// No provision for heading more than one phrase
  (setf (gethash pname *strings-to-lexicalized-phrases*) lp))


;;;-------------------------------------------
;;; shortcut for making parameter-value-pairs
;;;-------------------------------------------

(defun pvp (parameter-name value)
  (let ((parameter (parameter-named parameter-name)))
    (make-instance 'parameter-value-pair
      :phrase-parameter parameter
      :value value)))

;;;--------------------------------
;;; Operations on derivation trees
;;;--------------------------------

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

(defun derivation-tree ()
  "Return the current value of the global derivation tree
   which have been rebound to a local dynamic scope."
  *the-derivation-tree*)

(defun set-derivation-tree (dt)
  "Set the value of the global derivaton tree"
  (setq *the-derivation-tree* dt))

;;/// doesn't work -- a variable in the dt position
;; is unused
(defmacro with-derivation-tree (dt &body body)
  `(let ((*the-derivation-tree* ',dt))
     (declare (special *the-derivation-tree*))
     ,@body
     ))


;;--- base case

(defun make-dtn (&key referent resource)
  (let ((dtn (make-instance 'derivation-tree-node
               :referent referent
               :resource resource)))
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

(defun make-lexicalized-attachment (ap v)
  "The value 'v' can be anything that is can fill at slot.
   We ought to do a grammatical type-check though since we
   have the edge"
  (let ((ap (typecase ap
              (symbol (attachment-point-named ap))
              (attachment-point ap)
              (otherwise
               (push-debug `(,ap ,v))
               (error "~a does not name an attachment point" ap)))))
    (let ((la (make-instance 'lexicalized-attachment
                :point ap
                :value v)))
      la)))


(defmethod make-adjunction-node ((la lexicalized-attachment)
                                 (dtn derivation-tree-node))
  ;; Args are the attachment point, the individual that's its 'value' 
  ;; (the one we'll look to for the resource that we attach at that spot
  ;; -- the value we extracted in read-out-rnode) and the
  ;; derivation-tree-node that we add this ap node to. 
  (let ((ap (point la))
        (value (value la)))
    (let ((apn (make-instance 'adjunction-node 
                 :ap ap
                 :value value)))                 
      (push apn (adjuncts dtn))
      apn)))

(defmethod make-complement-node ((parameter-name symbol)
                                 i (dtn derivation-tree-node))
  (make-complement-node (parameter-named parameter-name)
                        i dtn))

(defmethod make-complement-node ((parameter parameter)
                                 i (dtn derivation-tree-node))
  (let ((cn (make-instance 'complement-node
              :phrase-parameter parameter
              :bkptrs dtn)))
    (setf (value cn) i) ;; could have folded these into the make-instance call
    (setf (referent cn) i) ;; ditto
    (push cn (complements dtn))
    cn))

;;;-----------------------------------------
;;; accessor-adding as function composition
;;;-----------------------------------------

(defmacro def-accessory-operator (name &rest body)
  `(defgeneric ,name (base)
     (:method ((base derivation-tree-node))
       ,@body)))






