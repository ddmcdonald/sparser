;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "resources"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  January 2016

;; Initiated 1/17/16 to provide a place 

(in-package :sparser)

;;;----------------
;;; extra ontology
;;;----------------
;;--- This belongs in the upper-structure once there's consensus

;; Replaceement for agent mixin in things
(define-category physical-agent
  :specializes physical-object
  :documentation ;; from Dolce ExtDnS_397 agentive-physical-object
    "Within Physical objects, a special place have those to which
 we ascribe generic intentionality (compatibly to Brentano's 
 distinction, the ability to internally represent a description). 
 These are called Agentive, as opposite to Non-agentive. 
 In general, we assume that agentive objects are constituted by 
 non-agentive objects: an organism is constituted by bodily organs, 
 a robot is constituted by some machinery, and so on. 
 Among non-agentive physical objects we have for example houses, 
 bodily organs, pieces of wood, etc. Generic agentivity is defined 
 here in a wide sense as implying representation or conception 
 (to be characterized in a dedicated - but not developed as yet - 
 ontology of mind). A representation or conception only requires 
 intentionality in Brentano's terms (i.e., the ability to represent 
 something to oneself). See also 'rational physical object'.")


(define-mixin-category with-an-agent
  :specializes attribute
  :binds ((agent physical-agent)))
;; Dolce has 'agency' as the union of physical and social agent

;;--- me and you 

(define-category interlocutor
  :specializes physical-agent ;; thinking of us a robot
  :mixins (has-name) ;; don't worry about location or movement
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
  (define-individual 'interlocutor :name "us-and-person-qua-interlocutors"))

(defmethod mumble::realization-for ((i (eql *me*)))
  (mumble::mumble-value 'first-person-singular 'pronoun))
(defmethod mumble::realization-for ((i (eql *you*)))
  (mumble::mumble-value 'second-person-singular 'pronoun))
(defmethod mumble::realization-for ((i (eql *us*)))
  (mumble::mumble-value 'first-person-plural 'pronoun))



;;;-----------------------------
;;; pre-built lexical resources
;;;-----------------------------

(in-package :mumble)


