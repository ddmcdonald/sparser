;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "resources"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  May 2016

;; Initiated 1/17/16 to provide a place 

(in-package :sparser)

;;;----------------
;;; extra ontology
;;;----------------

;;--- me and you 

(define-category interlocutor
  :specializes physical-agent ;; thinking of us a robot
  :mixins (has-name) ;; don't worry about location or movement yet
  :index (:permanent :key name)
  :documentation "Provides a category to instantiate as the
    basis of 'me', 'you', and 'us'. They need to be grounded
    in the TRIPS state-of-the-conversation model, its goals
    model, our situation model, and our planning model (re. who
    is supposed to do what. 
       The 'name' is just to  have something to display
    that's unlikely to appear in a text. Only the generation 
    direction has been set up.")

(defvar *me*
  (define-individual 'interlocutor :name "machine-qua-interlocutor"))
(defvar *you*
  (define-individual 'interlocutor :name "person-qua-interlocutor"))
(defvar *us*
  (define-individual 'interlocutor :name "me-and-you-qua-interlocutors"))

(in-package :mumble) ;; too many symbols would want qualifying
(defmethod realize ((i (eql sp::*me*)))
  (mumble-value 'first-person-singular 'pronoun))
(defmethod realize ((i (eql sp::*you*)))
  (mumble-value 'second-person-singular 'pronoun))
(defmethod realize ((i (eql sp::*us*)))
  (mumble-value 'first-person-plural 'pronoun))




;;;-----------------------------
;;; pre-built lexical resources
;;;-----------------------------

(in-package :mumble)

;;--- vocabulary

(define-word "let" (verb))

(defun setup-lexicalized-trees ()
  (define-lexicalized-phrase common-noun ("staircase") (n))
  (define-lexicalized-phrase SVO ("build") (v))
  (define-lexicalized-phrase SVOC ("let") (v))
  (define-lexicalized-phrase SVBeComp ("be") (v)) ;; s, c
  )
(setup-lexicalized-trees)


(define-dtn-operator let-us (let s sp::*you* o sp::*us*) command )

