;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "verbs"
;;;   Module:  "model;core:mid-level::"
;;;  version:  March 2017

;; broken out of relations 3/7/15

(in-package :sparser)


#| -----------  TO DO
(define-main-verb 'break
    :infinitive "break"
    :past-tense "broke"
    :past-participle "broken"
    :present-participle "broken")
(define-main-verb 'catch
  :infinitive "catch"
  :past-tense "caught"
  :past-participle "caught"
  :present-participle "catching")


 create (bio;general-verbs)  "Is your intent to ~a something?"
   model (bio;bio-methods) -- as a noun
 change

 interpret
 mean (what you meant to change.)
 recognize (your intent) (what you're doing)
 understand (what you meant to change)

 wait

 get attempt try  -to

 desire 

 (have) in mind

 constrain
 
 recognize
 wish -- to do, that P
 intend to / that

 promise --status of raised 'object' and complement
 persuade   requires consulting the verb 

 go  come    
 going to X / gonna


|#
  

#|  N.b. if one of these verbs is also used in biology, there should
be an entry for it in bio;overrides.lisp that expunges it. |#


(define-category believe ;; in P, that P, J
  :specializes state
  :mixins (prop-attitude)
  :realization (:verb "believe"))


;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
    :specializes process
    ;; we're going through the steps of constucting the
    ;; staircase. With "lets'" we haven't even started
    :mixins (agent)
    :binds ((artifact artifact)) ;; what they build
    :restrict ((agent physical-agent))
    :realization (:verb ("build" :past-tense "built")
                  :etf (svo-passive)
                  :s agent
                  :o artifact
                  :mumble ("build" svo :s agent :o artifact)))

;; expect -- to do, that P, John to 
(define-category expect
  :specializes state
  :mixins (control-verb)
  :realization (:verb "expect"))


;; I failed to find a block
(define-category fail
  :specializes process ;; acomplishment?
  :mixins (action-on-eventuality)
  :realization 
    (:verb "fail"))

(define-category find ;; see bio;harvard-terms: bio-find
  :specializes process
  :mixins (action-verb)
  :restrict ((patient (:or physical-object location))) ;; find a block
  :realization
  (:verb ("find" :past-tense "found")))


(define-category give
  :specializes process
  :mixins (directed-action)
  :realization (:verb ("give" :past-tense "gave"
                       :past-participle "given"
                       :present-participle "giving")))
 
(define-category get
  :specializes accomplishment
  :mixins (action-verb)
  :restrict ((actor physical-agent)
             (patient physical))
  :realization (:verb ("get" :past-tense "got"
                       :past-participle "gotten")) ;; "have gotten a block"
  :documentation "'Get' as in 'come to have'. Could be
    construded as generalized possession: 'I've got a cold'.")

(define-category intend
  :specializes state
  :mixins (control-verb) ;;  except for not taking a simple object
  :realization (:verb "intend")
  :documentation "Ignoring obvious relationship to the noun
    'intention' -- need a good use-case to tie them together
    like some early transformational grammar did.")


;; know -- that P, John, John will P ("that" optional),
;;   how to
;;/// know of (any drug for cancer)
(define-category know
  :specializes process
  :mixins (knowledge-verb)
  :realization
    (:verb ("know" :past-tense "knew" :past-participle "known")))
;; "know the blocks are red", "what to do"
;; know Spencer to be a good car
;; know that Spencer is a good cat    


(define-category make
  :specializes process
  :mixins (action-verb)
  :restrict ((actor physical-agent)
             (patient (:or artifact ;; what they build ('result' ??)
                           object-dependent-location)))
  :binds ((adj-comp attribute-value)) ;; "make the stack green"
  :documentation "The :adjp-complement is seen by the syntax fn
 assimilate-adj-complement to deal with the 'green' when it 
 composes with 'make the stack'."
  :realization
    (:verb ("make" :past-tense "made")
     :adjp-complement adj-comp 
     :mumble ("make" svo :a actor :o patient)))

(define-category move-something-somewhere
  :specializes move
  :mixins (agent)
  :restrict ((agent physical-agent))
  :documentation "Inherits variables from move (in kinds/movement.lisp).
 The theme is restricted there to 'can-change-location'. 
 Could have been named PTRANS. Intended as the common parent of push, 
 put, place, nudge, etc."
   :realization (:verb "move"
                 :etf (svo-passive)
                 :s agent
                 :o theme
                 :from from-location
                 :to to-location
                 :mumble ("move" svo :s agent :o theme)))


#|
(define-category propose
    :specializes achievement
  :mixins (with-an-agent)
  :binds ((statement  ))
  :realization
  ((:verb "propose")
   (:mumble ("propose" svscomp :o statement))
   (:tree-family ))) |#
#|

(define-category show
    :specializes achievement
    :binds ((statement ))
    :realization
    ((:verb "show")
     (:mumble ("show" svscomp :s ? :o statement))))

(define-category suggest
    :specializes achievement
  :mixins
  :binds
  :realization
  ((:verb "suggest")
   (:mumble ("suggest" svscomp :s ? :o statement))))
|#
(define-category tell
  :specializes process
  :mixins (prop-attitude directed-action)
  :restrict ((beneficiary interlocutor))
  :realization (:verb ("tell" :past-tense "told")))
;; tell someone to do something
;; tell someone that <proposition>

(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (control-verb)
  :realization (:verb "want"))
  
