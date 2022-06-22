;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subcat-patterns"
;;;   Module:  "model;core:mid-level::"
;;;  version:  June 2022

(in-package :sparser)

(defun define-subcat-patterns ()) ;; just for meta-dot retrieval

#| The purpose of these mixins is to pre-package compositional
options for parsing and phrasal patterns and options for generation
into natural classes.

At the same time these provide the standard set of variables
for the specific verbs, drawing primarily from the ECI set as
implemented in core/kinds/roles.lisp. We package these as mixins,
encapsulating the choice of variables and how the variables
participate in realizations. 

The goal is to makes these subcat mixins rich enough that all
we have to do to define the realization of a specific verb is
to specify the verb and any irregularities it has.


The set of 'families' that can appear in the etf field of
a simplified realization for a verb are (5/17)
  sv: s, v
  svo: s, v, o
  svol: s, v, o1, o2
  svo-passive: s, v, o
  svcomp: s, v, c

'subcategorization-pattern' is a daughter of linguistic, abstract

|#

;;;---------------
;;; Verb patterns
;;;---------------

(define-mixin-category basic-intransitive
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-patient)
  :realization (:s patient :mumble (sv :s patient)))
+

(define-category comlex-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :documentation "Designed for use by setup-verb which is
 used to provide a category for otherwise unknown words
 that are introduced by the Comlex machinery."
  :mixins (with-actor with-patient)
  ;; we really don't want to restrict these variables
  ;;  -- the subject and theme can be endurants, perdurants, abstract
  :binds ((subject)
          (object))
   :realization
    (:s subject
     :o object
     :mumble (svo :s subject :o object)))

(define-mixin-category comlex-noun
  :specializes subcategorization-pattern
  :instantiates nil
  :documentation "Designed for use by setup-common-noun which is
 used to provide a category for otherwise unknown nouns
 that are introduced by the Comlex machinery." )


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
  :restrict ((actor top)
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
     :to beneficiary
     :o theme
     :mumble ((s-v-io-do :s agent :do theme :io beneficiary)
     	      (S-V-DO-ToIO  :s agent :do theme :io beneficiary))))


(define-mixin-category double-object ; ditransitive
  :specializes subcategorization-pattern
  :instantiates nil
  :documentation "summarizing class for run-time checking")

(define-mixin-category double-np-ing
  :specializes double-object
  :instantiates nil
  :mixins (with-agent with-actor with-theme)
  :restrict ((agent (:or physical-agent social-agent))
             (actor)
             (theme perdurant))
  :realization
    (:s agent
     :i actor
     :o theme) ;;/// find mumble equiv
  :documentation "Quirk et al. Blue book 16.42 where takes
 an object ('them' - actor) followed by an ing-phrase ('simming in the dark'
 - theme ).")


(define-mixin-category say-verb ;; "remarked to Mark that ..."
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-agent with-beneficiary with-theme)
  :restrict ((agent (:or physical-agent social-agent))
             (beneficiary)
             (theme))
  :documentation "Levin 37.7. There is (optionally) someone
 who is being addressed ('said to the assembly that ...')
 the beneficiary And something being communicated to them
 (the 'theme')."
  :realization
    (:s agent
     :to beneficiary
     :o theme ; 'said a few things to her sister'
     :thatcomp theme
     :whethercomp theme
     :whycomp theme
        ))

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
     :o attribute
     :a attribute
     :mumble (svo-adj :s actor :o patient :adj attribute)))


(define-mixin-category measuring-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :documentation " 'He measured her height'
                   'her height is 4'10'
    Levin #54: measure, read, register, total, ,weigh
 With variants cost, sleep, price where the common element
 is that we're describing the value of an attribute of something"
  :mixins (with-actor with-patient with-attribute with-result)
  :restrict ((actor endurant)
             (patient physical)
             (attribute attribute)
             (result attribute))
  :realization
    (:s actor
     :o patient
     :o result
     :a attribute))


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
  ;; "X seems to... " "X likes ..._ing "
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :restrict ((agent (:or pronoun-animate physical-agent))
             (theme perdurant))
  :realization
    ((:s agent
     :to-comp theme
     :s-comp theme)))

(define-mixin-category expletive-subject
  ;; seem, appear
  ;; "It seems that/like ...
  ;;  With experiencer - "It seems to me that/like..."
  :specializes subcategorization-pattern
  :mixins (with-theme with-experiencer with-expletive)
  :restrict ((expletive pronoun-inanimate)
             (experiencer (:or pronoun physical-agent)))
  :realization
   (:s expletive
    :to experiencer
    :thatcomp theme
    :s-comp theme
    :mumble ((svscomp :s expletive :c theme)
             (svpcomp :s expletive :c theme)
             (svo1o2 :s expletive :o1 experiencer :o2 theme)
             (svo1o2 :s expletive :o1 experiencer :o2 theme))))


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

;;;;;;;;;;;;;;;

(define-mixin-category with-complement
  :specializes abstract
  :binds ((statement top))
  :documentation "Common parent to the other types of biological 
    complements to share the same standard set of bindings.")

;; closely related to prop-attitude and we should revise to take that into account
(define-mixin-category thatcomp :specializes with-complement
  :realization (:thatcomp statement)
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a
     better break-down of these -- at least for whether they are
     positive or negative in terms of belief state. The prefix -bio-
     may not be warranted, since these are quite general, but at the
     moment we are putting them below the bio-processes.")

(define-mixin-category howcomp :specializes with-complement
  :realization (:howcomp statement))

(define-mixin-category whethercomp :specializes with-complement
  :realization (:whethercomp statement))

(define-mixin-category whycomp :specializes with-complement
  :realization (:whycomp statement))
 
(define-mixin-category ifcomp  :specializes with-complement
  :realization (:ifcomp statement))


(define-mixin-category prop-attitude ;; "believe that"
  :specializes subcategorization-pattern
  :mixins (with-agent with-patient with-theme)
  :restrict ((agent physical-agent)
             (patient physical)
             (theme top)) ;; perdurant generalize
  :realization (:s agent
                :o patient
                :in patient ;; "believe in dragons" only NPs?
                :thatcomp theme
                :whethercomp theme
                :whycomp theme
                :mumble ((svscomp :s agent :c theme)
                         (svo :s agent :o patient)
                         (svoscomp :s agent  :o patient :c theme)))
  :documentation "Breaks out a complement argument that
   common to many verbs -- taking a stance (e.g. 'believe',
   'doubt') towards a proposition.  The variants that take
   objects, particularly with 'in', may well want to be a
   separate category.")

(define-mixin-category scomp-verb
    ;; "Let me know ...", "Make me ..."
    ;; -- Quirk calls these object + bare-infinitive complements
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
  :mixins (prop-attitude ; agent, patient, theme
           with-experiencer with-topic)
  :restrict ((experiencer (:or pronoun physical-agent social-agent))) ;; "I"
  :realization
  (:s experiencer ; "I know"
   :o patient  ; "I know something"
   :about topic
   :of topic
   :howcomp theme
   :whethercomp theme
   :whycomp theme
   :mumble (svscomp :s experiencer :c theme))) ;; I know that roses are red


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
                :whycomp theme
                :mumble ((svscomp :s agent :c theme)
                         (svo :s agent :o beneficiary)
                         (svoscomp :s agent  :o beneficiary :c theme))))



;; VerbNet additions

(define-mixin-category middle-construction
  :specializes subcategorization-pattern
  :documentation " 'The car drives well.'
  Can also include a co-patient, as in 'The egg whites and egg yolks separate easily.'
  Ultimately need a way to distinguish these from traditional SVADV where the subject is 
  an agent, i.e. 'She drives well', since I can't think of any verbs that involve middle 
  constructions as their main realization. Maybe solved via additional selectional restrictions
  on verbs, or attributes of nouns."
  :mixins (with-patient takes-adverb with-manner)
  :binds ((patient endurant) (manner adverb))
  :realization (:s patient
                :a manner
                :mumble (SVADV :s patient :a manner)))


(define-mixin-category resultative
  :specializes subcategorization-pattern
  :documentation "'I waltzed her dizzy.' "
  :mixins (with-agent with-patient with-result)
  :binds ((agent physical-agent)
          (patient top)
          (result (:or abstract quality)))
  :realization (:s agent
                :o patient
                :ac result
                :mumble (svo-adj :s agent :o patient :adj result)))

(define-mixin-category explicit-change-of-state
  :specializes subcategorization-pattern
  :documentation "Perhaps needs a better name.
  Any verb that represents an explicit change of state for a patient. 
  Rise, fall, change etc. Binds source and goal.
  'The company went from a failure to a success.'
  'Gas prices rose from $1.00 to $3.00.'  "
  :mixins (with-source with-goal with-patient)
  :realization (:s patient
                :from source
                :to goal
                :mumble ((svo1o2 :s patient :o1 source :o2 goal)
                         (svo :s patient :o goal))))


;;;---------------
;;; noun patterns
;;;---------------

(define-mixin-category takes-of
  :specializes subcategorization-pattern
  :mixins (with-theme)
  :documentation "There is a very wide array of of-construction
 patterns (Quirk et al. 17.38), from partives ('a cup of water')
 to gentives ('the population of a city', 'the city's population'),
 to this is weak choice of variables"
  :realization (:of theme))

(define-mixin-category takes-as
  :specializes subcategorization-pattern
  :mixins (with-role-or-purpose)
  :realization (:as role-or-purpose))

(define-mixin-category nominal-attribute
  :specializes subcategorization-pattern
  :mixins (with-theme)
  :restrict ((theme (:or endurant perdurant)))
  :documentation "This mixin is for the attribute,
    which is being attributed of the theme"
  :realization
    (:of theme ;; and possessive
     :s-comp theme
     :thatcomp theme
     :mumble (adj-that-comp :c theme)))

;;;-------------------------
;;; patterns for adjectives
;;;-------------------------

(define-mixin-category modifies-scalar
  :specializes subcategorization-pattern
  :mixins (with-theme)
  :restrict ((theme (:or scalar-attribute capable-of-being-measured)))
  :realization (:s theme)
  :documentation "Can be added to the definition of adjectives
    to spell out what class of things they apply to,
    typically what category of subjects they can be predicated of.")


;;;-------------------------------
;;; patterns for sets of adjuncts
;;;-------------------------------

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
                :to goal))






