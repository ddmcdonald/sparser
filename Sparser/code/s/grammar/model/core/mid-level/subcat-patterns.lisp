;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subcat-patterns"
;;;   Module:  "model;core:mid-level::"
;;;  version:  June 2017

;; broken out of relations 3/7/15

(in-package :sparser)


(define-mixin-category action-verb
  :specializes subcategorization-pattern ;; daughter of linguistic, abstract
  :instantiates nil
  :binds ((actor (:or pronoun endurant))
          (patient physical)
          (theme perdurant))
  :documentation "For 'fail', 'find' etc. where there can be a
 to-complement argument as in 'I failed to find a block'"
  :realization
    (:s actor
     :o patient
     :to-comp theme))

(define-mixin-category move-something-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-an-agent) ;; v/r = physical-agent
  :binds ((theme physical) ;; what moves
          (location location)) ;; where it is moved to
  :realization
    (:s agent
     :o theme
     :l location
     :mumble (svo1o2 :s agent :o1 theme :o2 location))
  :documentation "For verbs like 'put' where an agent
 is moving the theme from one location to another.
 The ETF for this set of arguments is 'svol'.
 In TRIPS 'put' is  agent, affected, result.") 

(define-mixin-category directed-action ;; tell, give
  :specializes action-verb
  :instantiates nil
  :binds ((beneficiary (:or pronoun endurant)))
  :realization
    (:o beneficiary))
;; Have we ever had indirect objects? Using 'o' is just
;; a standin since it won't do "give him the ball" unless
;; it falls out from the times and the grammar doesn't notice.


(define-mixin-category control-verb
  ;; https://en.wikipedia.org/wiki/Control_(linguistics)
  :specializes subcategorization-pattern
  :mixins (with-an-agent) ;; v/r = physical-agent
  :binds ((patient physical) ;; "I want a block"
          (theme perdurant)) ;; "I want to go home"
                ;; T: neutral, VN: theme
  :realization
    (:s agent
     :o patient
     :to-comp theme
     :mumble ((svo :s agent :o patient)
              (svicomp :s agent :c theme)
              (svoicomp :s agent :o patient :c theme)) ))
;; "I want a block" -- agent v patient
;; "I want to go home" -- agent v theme
;; "I want you to go home" -- agent v patient theme

(define-mixin-category control-verb-intrans
    ;; need reference
    ;; "acts to ...", "fails to ..."
    :specializes linguistic
    :mixins (with-an-agent)  ;; v/r = physical-agent
    :binds ((theme perdurant)) ;; "I want to go home"
    ;; T: neutral, VN: theme
    :realization
    (:s agent
        :to-comp theme))

(define-mixin-category raising-to-object
    ;; need reference
    ;;"allows X to ...", "consider X to ...", "enable X to ...", "know X to ...", "lead X to ...", "use X to ..."
    :specializes linguistic
    :mixins (with-an-agent)  ;; v/r = physical-agent
    :binds ((theme perdurant)) ;; "I want to go home"
    ;; T: neutral, VN: theme
    :realization
    (:s agent
        :o patient
        :to-comp theme))

(define-mixin-category raising-to-subject
    ;; need reference
    ;; "X seems to ..."
    :specializes linguistic
    :mixins (with-an-agent)    ;; v/r = physical-agent
    :binds ((theme perdurant)) ;; "I want to go home"
    ;; T: neutral, VN: theme
    :realization
    (:s agent
        :to-comp theme))


(define-mixin-category prop-attitude
  :specializes subcategorization-pattern
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
  :specializes subcategorization-pattern
  :binds ((experiencer (:or pronoun physical-agent))) ;; "I"
  :mixins (prop-attitude)
  :realization
    (:s experiencer))
     
