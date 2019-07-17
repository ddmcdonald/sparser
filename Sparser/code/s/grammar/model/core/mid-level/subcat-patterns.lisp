;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subcat-patterns"
;;;   Module:  "model;core:mid-level::"
;;;  version:  February 2019

(in-package :sparser)

(defun define-subcat-patterns ()) ;; just for meta-dot retrieval

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

subcategorization-pattern is a daughter of linguistic, abstract

|#

(define-mixin-category comlex-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :documentation "Designed for use by setup-verb which is
 used to provide a category for otherwise unknown words
 that are introduced by the Comlex machinery."
  :mixins (with-actor with-patient)
  :restrict ((actor (:or pronoun endurant))
             (patient endurant))
   :realization
    (:s actor
     :o patient
     :mumble (svo :s actor :o patient)))

(define-mixin-category action-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-actor with-patient)
  :restrict ((actor (:or pronoun endurant))
             (patient physical))       
  :realization
    (:s actor
     :o patient
     :mumble (svo :s actor :o patient)))


(define-mixin-category action-on-eventuality
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-actor with-theme)
  :restrict ((actor endurant)
             (theme perdurant))
  :realization
    (:s actor
     :to-comp theme
     :mumble ((sv :s actor)
              (svvpcomp :s actor :c theme)))
  :documentation "For 'fail', 'find' etc. where there can be a
 to-complement argument as in 'I failed to find a block'")

(define-mixin-category simple-action
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-agent with-theme)
  :restrict ((agent physical-agent)
             (theme endurant))
  :realization
    (:s agent
     :o theme
     :mumble (svo :s agent :o theme)))

(define-mixin-category directed-action ;; give, sell, tell, send
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-agent with-beneficiary with-theme)
  :restrict ((agent physical-agent)
             (beneficiary top)
             (theme endurant))
  :realization
    (:s agent
     :i beneficiary
     :o theme
     :mumble ((s-v-io-do :s agent :do theme :io beneficiary)
     	      (S-V-DO-ToIO  :s agent :do theme :p "to" :io beneficiary))))


(define-mixin-category attributing-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-actor with-patient with-attribute)
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
  :mixins (with-agent with-patient with-theme)
  :restrict ((agent top) ;; perduants in bio, not just physical-agent's
             (patient physical) ;; "I want a block"
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
  :mixins (with-agent with-theme)
  :restrict ((agent (:or pronoun physical-agent))
             (theme perdurant))
  :realization
    (:s agent
     :to-comp theme))

(define-mixin-category raising-to-object
  ;;"allows X to ...", "consider X to ...", "enable X to ...", "know X to ...", "lead X to ...", "use X to ..."
  :specializes subcategorization-pattern
  :mixins (with-agent)
  :restrict ((agent (:or pronoun physical-agent)))
  :binds ((theme perdurant))
  :realization
    (:s agent
     :o patient
     :to-comp theme))

(define-mixin-category raising-to-subject
  ;; "X seems to...
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :restrict ((agent (:or pronoun-animate physical-agent))
             (theme perdurant))
  :realization
    ((:s agent
     :to-comp theme)))

(define-mixin-category raising-expletive-subject
  ;; "It seems that/like ...
  ;;  For now, includes unused "experiencer" role so that we can later account for "It seems to me that..."
  :specializes subcategorization-pattern
  :mixins (with-theme with-experiencer with-expletive)
  :restrict ((expletive pronoun-inanimate) (experiencer physical-agent) (theme perdurant))
  :realization (:s expletive
  :thatcomp theme
  :s-comp theme
  :mumble (svscomp :s expletive :c theme)))



(define-mixin-category move-something-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-agent with-theme has-location)
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
  :mixins (with-agent with-patient with-theme)
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

(define-mixin-category scomp-verb ;; "Let me know ...", "Make me ..." -- Quirk calls these object + bare-infinitive complements
    :specializes subcategorization-pattern
    :mixins (with-agent with-theme takes-tense-aspect-modal)
    :restrict ((agent (:or physical-agent social-agent))
               (theme perdurant))
    :binds ((complement perdurant))
    :realization (:s-comp complement)
    :documentation "Breaks out a complement argument that is
   common to a small class of verbs, like LET, MAKE, HEAR, ...
   that take an object and a bare-infinitive and (in Sparser)
   treat that combination like an S")


(define-mixin-category knowledge-verb
  :specializes subcategorization-pattern
  :mixins (prop-attitude with-experiencer)
  :restrict ((experiencer (:or pronoun physical-agent))) ;; "I"
  :realization
    (:s experiencer
     :mumble (svscomp :s experiencer :c theme))) ;; I know that roses are red



(define-mixin-category nominal-attribute
  :specializes subcategorization-pattern
  :mixins (with-theme)
  :restrict ((theme endurant))
  :documentation "This mixin is for the attribute,
    which is being attributed of the theme"
  :realization (:of theme)) ;; and possessive


(define-mixin-category ask/tell
  :specializes subcategorization-pattern
  :documentation "These have a large set of options.
    May turn out easier to break them out into groups"
  :mixins (with-actor directed-action)
  :restrict ((agent (:or physical-agent social-agent)) ; does the asking
             (actor (:or physical-agent social-agent)) ; ask them to do something
             (theme top)  ; the something -- or the other complements
             (beneficiary (:or physical-agent social-agent))) ; who you're asking
  :realization (:s agent
                :about theme
                :i beneficiary
                :for beneficiary
                :o theme
                :to-comp theme
                :thatcomp theme
                :whethercomp theme
                :mumble ((svscomp :s agent :c theme)
                         (svo :s agent :o beneficiary)
                         (svoscomp :s agent  :o beneficiary :c theme))))


;; Was in blocks/subcat-patterns.lisp
;;
(define-mixin-category with-specified-location
  :specializes subcategorization-pattern
  :binds ((supported-by physical)
          (next-to physical)
          (at-relative-location (:or location physical)) ;;relative-position)
          (goal (:or location physical)))
  :realization (;; :next\ to next-to ;;moved to regular prep's
                :on supported-by
                ;; :on\ top\ of supported-by
                :at at-relative-location ;; at the end
                :on at-relative-location ;; on the left
                :into at-relative-location
                :to goal)
  )

;; VerbNet additions

(define-mixin-category middle-construction
  :specializes subcategorization-pattern
  :documentation " 'The car drives well.'
  Can also include a co-patient, as in 'The egg whites and egg yolks separate easily.'
	
  Ultimately need a way to distinguish these from traditional SVADV where the subject is an agent, i.e.
  'She drives well', since I can't think of any verbs that involve middle constructions as their main
  realization. Maybe solved via additional selectional restrictions on verbs, or attributes of nouns."
  :mixins (with-patient takes-adverb with-manner)
  :binds ((patient endurant) (manner adverb))
  :realization (:s patient :a manner
  :mumble (SVADV :s patient :a manner)))

;; Still under construction

(define-mixin-category resultative
  :specializes subcategorization-pattern
  :documentation "'I waltzed her dizzy.' "
  :mixins (with-patient with-result-role)
  :binds ((agent physical-agent) (patient top) (result-role adjective))
  :realization (:s agent :o patient :adjp-complement result-role :mumble (svo-adj :s agent :o patient :adj result-role)))
