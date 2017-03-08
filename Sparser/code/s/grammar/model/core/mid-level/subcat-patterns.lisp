;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subcat-patterns"
;;;   Module:  "model;core:mid-level::"
;;;  version:  March 2017

;; broken out of relations 3/7/15

(in-package :sparser)

(define-mixin-category action-verb
  :specializes linguistic ;; daughter of abstract
  :instantiates nil
  :binds ((actor (:or pronoun endurant))
          (patient physical)
          (theme perdurant))
  :documentation "Provides standard bindings for ordinary transitive
    verbs. Could take most of what's on bio-process. Added 'action'
    to mimic bio;aspectual-relation"
  :realization
    (:s actor
     :o patient
     :to-comp theme))


(define-mixin-category directed-action ;; tell, give
  :specializes action-verb
  :instantiates nil
  :binds ((beneficiary (:or pronoun endurant)))
  :realization
    (:o beneficiary))
;; Have we ever had indirect objects? Using 'o' is just
;; a standin since it won't do "give him the ball" unless
;; it falls out from the times and the grammar doesn't notice.


;; https://en.wikipedia.org/wiki/Control_(linguistics)
(define-mixin-category control-verb
  :specializes linguistic
  :mixins (with-an-agent) ;; v/r = physical-agent
  :binds ((patient physical) ;; "I want a block"
          (theme perdurant)) ;; "I want to go home"
                ;; T: neutral, VN: theme
  :realization
    (:s agent
     :o patient
     :to-comp theme))
;; "I want a block" -- agent v patient
;; "I want to go home" -- agent v theme
;; "I want you to go home" -- agent v patient theme


(define-mixin-category prop-attitude
  :specializes linguistic
  :mixins (with-an-agent) ;; v/r = physical-agent
  :binds ((theme perdurant))
  :documentation "Breaks out a complement argument that
   common to many verbs -- taking a stance (e.g. 'believe',
   'doubt') towards a proposition."
  :realization (:o theme
                :thatcomp theme
                :whethercomp theme))   

;; "the blocks are red", "what to do"

(define-mixin-category knowledge-verb
  :specializes linguistic
  :binds ((experiencer (:or pronoun physical-agent))) ;; "I"
  :mixins (prop-attitude)
  :realization
    (:s experiencer))
     
