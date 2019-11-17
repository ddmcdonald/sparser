;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-

;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010-2017 David D. McDonald  All Rights Reserved

;; /Mumble/derivation-trees/make.lisp

;; 11/12 Picked it up again and making diverse little changes. More on
;; 11/19/13. Fixed bug in make-complement-node 11/18/15. 

(in-package :mumble)

;;;------------------
;;; store and access
;;;------------------

;;--- word to its lexicalized phrase 

(defparameter *words-to-lexicalized-phrases*
  (make-hash-table :size 20000 :test 'eq)
  "Map words to their lexicalized phrases. Lp are stored in
 an alist according to their part of speech. Tried using an
 equal hashtable but that had a dramatic bad effect on
 the time to work with the tables")
;; 7/14/17 CwC count was 1,452, R3 45,418

(defvar *count-of-calls-to-get-word-lp* 0) ;; r3 76,882 8/4/17

(defgeneric get-lexicalized-phrase (word pos)
  (:documentation "Given a word or a string and its part of speech, 
   return the lexicalized-phrase for it if there is one.")
  (:method ((name symbol) (pos symbol))
    (get-lexicalized-phrase (symbol-name name) pos))
  (:method ((pname string) (pos symbol))
    (let ((word (find-word pname pos)))
      (assert word (pos pname)
              "There is no Mumble word ~s with pos ~a" pname pos)
      (get-lexicalized-phrase word pos)))
  (:method ((word word) (pos symbol))
    (incf *count-of-calls-to-get-word-lp*)
    (let ((entry (gethash word *words-to-lexicalized-phrases*)))
      (cdr (assq pos entry)))))


(defvar *count-of-calls-to-record-word-lp* 0) ;; 76,869 r3 8/4/17

(defgeneric record-lexicalized-phrase (word lp pos)
  (:documentation "When a lexicalized phrase is defined,
   record the association of the head word (in the indicated
   part of speech) and the phrase so that it can be retrieved 
   by get-lexicalized-phrase. 
      N.b. There is no way to associate any Mumble word
   with more than one lexicalized phrase.")
  
  (:method ((word word) (lp lexicalized-resource) (pos symbol))
    "Trust the caller to have already looked for an existing lp
     before it calls this."
    (incf *count-of-calls-to-record-word-lp*)
    (let ((entry (gethash word *words-to-lexicalized-phrases*)))
      (if entry
        (let ((subentry (assq pos entry)))
          (unless subentry ;; multiple calls trap here
            (push `(,pos . ,lp) (cdr entry))))
        (setf (gethash word *words-to-lexicalized-phrases*)
              `((,pos . ,lp)) )))))


(defgeneric delete-lexicalized-phrase (word pos)
  (:documentation "This comes in handy when debugging lp choice")
  (:method ((word word) (pos symbol))
    (let ((entry (gethash word *words-to-lexicalized-phrases*)))
      (when entry
        (if (cdr entry) ;; word is on several parts of speech
          (error "stub")
          (setf (gethash word *words-to-lexicalized-phrases*) nil))))))
            


;;;-------------------------------------------
;;; shortcut for making parameter-value-pairs
;;;-------------------------------------------

(defgeneric pvp (parameter-name value)
  (:documentation "Return a parameter-value-pair, typically for use
   by a builder")
  (:method ((name symbol) value)
    (pvp (parameter-named name) value))
  (:method ((p parameter) value)
    (make-instance 'parameter-value-pair
      :phrase-parameter p
      :value value)))

;;;------------------
;;; derivation trees
;;;------------------

;;--- indexing

(defvar *referents-to-dtns* (make-hash-table)
  "Maps the referents of a dtn to the dtn to facilitate
   debugging")

(defgeneric store-dtn (referent dtn)
  (:method ((referent T) (dtn derivation-tree))
    (setf (gethash referent *referents-to-dtns*) dtn)))

(defgeneric get-dtn (referent)
  (:documentation "Most of the methods are on the Sparser side")
  (:method ((referent T))
    (gethash referent *referents-to-dtns*))
  (:method ((bad null)) nil))

;;--- base case

(defun make-dtn (&key referent resource)
  (let ((dtn (make-instance 'derivation-tree-node
               :referent referent
               :resource resource)))
    (when referent (store-dtn referent dtn))
    dtn))


;;--- copy

(defgeneric copy-dtn (dtn)
  (:documentation "Make a new derivation tree object that is 
   a toplevel replica of the original.")
  (:method ((original derivation-tree-node))
    (let ((new (make-instance 'derivation-tree-node
                              :resource (resource original))))
      ;; Ignoring root, participants, and bkptrs since these
      ;; aren't being used right now (4/17)
      (when (complements original)
        (setf (complements new) (copy-list (complements original))))
      (when (adjuncts original)
        (setf (adjuncts new) (copy-list (adjuncts original))))
      (when (features original)
        (setf (features new) (copy-list (features original))))
      new)))



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


(defgeneric add-attachment (ap value dtn)
  (:documentation "Does the functionality of make-lexicalized-attachment
   and make-adjunction node in one package.")
  
  (:method ((ap-name symbol) value (dtn derivation-tree-node))
    (let ((ap (attachment-point-named ap-name)))
      (assert ap (ap-name) "There is no attachment point named ~a" ap-name)
      (add-attachment ap value dtn)))

  (:method ((ap attachment-point) value (dtn derivation-tree-node))
    "It's unclear that the 'lexicalization' step means anything
     given what the bundle drivers actually do with an adjunction
     node."
    (let ((node (make-instance 'adjunction-node
                               :ap ap
                               :value value)))
      (push node (adjuncts dtn))
      dtn)))
    


(defgeneric make-adjunction-node (attachment dtn)
  (:documentation "The arguments are a lexicalized attachment
 point, i.e. an attachment point and the the individual that
 is its value, and the derivation-tree-node that it is to be
 added to.")
  (:method ((la lexicalized-attachment)
            (dtn derivation-tree-node))
    (let ((ap (point la))
          (value (value la)))
      (let ((apn (make-instance 'adjunction-node 
                   :ap ap
                   :value value)))                 
        (push apn (adjuncts dtn))
        apn))))

(defgeneric make-complement-node (parameter value dtn)
  (:documentation "Combine the parameter and its value into a
 new instance of a complement-node, then add that to the
 dtn.")
  (:method ((parameter-name symbol) i (dtn derivation-tree-node))
    (make-complement-node (parameter-named parameter-name)
                          i dtn))

  (:method ((parameter-name null) i (dtn derivation-tree-node))
    (break "value for mumble parameter is nil -- check package"))

  (:method ((parameter parameter) i (dtn derivation-tree-node))
    (assert i () "No value provided for ~a" parameter)
    (let ((cn (make-instance 'complement-node
                :phrase-parameter parameter
                :bkptrs dtn)))
      (setf (value cn) i) ;; could have folded these into the make-instance call
      (setf (referent cn) i) ;; ditto
      (push cn (complements dtn))
      cn)))

;;;-----------------------------------------
;;; accessor-adding as function composition
;;;-----------------------------------------

(defmacro def-accessory-operator (name &rest body)
  `(defgeneric ,name (base)
     (:method ((base derivation-tree-node))
       ,@body)))






