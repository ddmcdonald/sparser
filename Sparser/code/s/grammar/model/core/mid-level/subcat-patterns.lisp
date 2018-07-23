;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subcat-patterns"
;;;   Module:  "model;core:mid-level::"
;;;  version:  December 2017

(in-package :sparser)

#| The purpose of these mixins is to pre-package compositional
options for parsing and phrasal patterns and options for generation
into natural classes.

At the same time these provide the standard set of variables
for the specific verbs, drawing primarily from the ECI set as
implemented in core/kinds/roles.lisp. That should also encapsulate
the choice of role since in many cases all that has to be done
for categories of specific verbs is specify the verb. 

The set of 'families' that can appear in the etf field of
a simplified realization for a verb are (5/17)
  sv: s, v
  svo: s, v, o
  svol: s, v, o1, o2
  svo-passive: s, v, o
  svcomp: s, v, c

|#

(define-mixin-category action-verb
  :specializes subcategorization-pattern ;; daughter of linguistic, abstract
  :instantiates nil
  :mixins (actor patient)
  :restrict ((actor (:or pronoun endurant))
             (patient physical))       
  :realization
    (:s actor
     :o patient
     :mumble (svo :s actor :o patient)))


(define-mixin-category action-on-eventuality
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (actor theme)
  :restrict ((actor endurant)
             (theme perdurant))
  :realization
    (:s actor
     :to-comp theme
     :mumble ((sv :s actor)
              (svvpcomp :s actor :c theme)))
  :documentation "For 'fail', 'find' etc. where there can be a
 to-complement argument as in 'I failed to find a block'")


(define-mixin-category attributing-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (actor patient with-attribute)
  :restrict ((actor endurant)
             (patient physical)
             (attribute attribute))
  :realization
    (:s actor
     :o patient
     :a attribute
     :mumble (svo-adj :s actor :o patient :adj attribute)))


;; Have we ever had indirect objects? Using 'o' is just
;; a standin since it won't do "give him the ball" unless
;; it falls out from the times and the grammar doesn't notice.


(define-mixin-category control-verb
  ;; https://en.wikipedia.org/wiki/Control_(linguistics)
  :specializes subcategorization-pattern
  :mixins (with-an-agent patient theme)
  :restrict ((patient physical) ;; "I want a block"
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
  :specializes subcategorization-pattern
  :mixins (with-an-agent theme)
  :restrict ((theme perdurant))
  :realization
    (:s agent
     :to-comp theme))


(define-mixin-category directed-action ;; give, sell, tell, send
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (agent beneficiary theme)
  :restrict ((agent physical-agent)
             (beneficiary endurant)
             (theme endurant))
  :realization
    (:s agent
     :i beneficiary
     :to beneficiary
     :o theme
     :mumble (s-v-io-do :s agent :do theme :io beneficiary)))


(define-mixin-category move-something-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (agent theme has-location)
  :restrict ((agent (:or physical-agent social-agent))
(theme physical) ;; what moves
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


(define-mixin-category prop-attitude ;; "believe that"
  :specializes subcategorization-pattern
  :mixins (agent patient theme)
  :restrict ((agent physical-agent)
             (patient physical)
             (theme perdurant))
  :realization (:s agent
                :o patient
                :in patient ;; "believe in dragons" only NPs?
                :thatcomp theme
                :whethercomp theme
                :mumble ((svscomp :s agent :c theme)
                         (svo :s agent :o patient)
                         (svoscomp :s agent  :o patient :c theme)))
  :documentation "Breaks out a complement argument that
   common to many verbs -- taking a stance (e.g. 'believe',
   'doubt') towards a proposition.  The variants that take
   objects, particularly with 'in', may well want to be a
   separate category.")


(define-mixin-category knowledge-verb
  :specializes subcategorization-pattern
  :mixins (prop-attitude experiencer)
  :restrict ((experiencer (:or pronoun physical-agent))) ;; "I"
  :realization
    (:s experiencer
     :mumble (svscomp :s experiencer :c theme))) ;; I know that roses are red


(define-mixin-category raising-to-object
  ;;"allows X to ...", "consider X to ...", "enable X to ...", "know X to ...", "lead X to ...", "use X to ..."
  :specializes subcategorization-pattern
  :mixins (with-an-agent)
  :binds ((theme perdurant))
  :realization
    (:s agent
     :o patient
     :to-comp theme))

(define-mixin-category raising-to-subject
  ;; "X seems to ..."
  :specializes subcategorization-pattern
  :mixins (with-an-agent theme)
  :restrict ((theme perdurant))
  :realization
    (:s agent
     :to-comp theme))
