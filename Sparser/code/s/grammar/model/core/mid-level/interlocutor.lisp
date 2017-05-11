;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interlocutor"
;;;   Module:  "model/core/mid-level/"
;;;  version:  July 2016

;; Moved out of model/sl/blocks-world/resources.lisp 7/21/16

(in-package :sparser)


;;--- me and you 

(define-category interlocutor
  :specializes physical-agent ;; thinking of us a robot
  ;; don't worry about location or movement yet
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


