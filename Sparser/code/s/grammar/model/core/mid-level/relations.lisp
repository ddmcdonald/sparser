;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relations"
;;;   Module:  "model;core:mid-level::"
;;;  version:  March 2017

;; Initiated 12/3/15

(in-package :sparser)

;;;------------------------------------------------------------
;;; mixins defining the paradigms / subcategorization patterns
;;;------------------------------------------------------------

(define-mixin-category action-verb
  :specializes linguistic ;; daughter of abstract
  :instantiates nil
  :binds ((actor (:or pronoun endurant))
          (patient physical)
          (theme process))
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
          (theme process)) ;; "I want to go home"
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
  :binds ((theme #|??|# state))
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
     


;;;-------
;;; verbs
;;;-------
#|  N.b. if one of these verbs is also used in biology, there should
be an entry for it in bio;overrides.lisp that expunges it. |#


;;--- actions

;; I failed to find a block
(define-category fail
  :specializes process ;; acomplishment?
  :mixins (action-verb)
  :realization 
    (:verb "fail"  
     :etf (sv)))

(define-category find ;; see bio;harvard-terms
  :specializes process
  :mixins (action-verb)
  :restrict ((patient (:or physical-object location))) ;; find a block
  :realization
    (:verb ("find" :past-tense "found")
     :etf (svo-passive)))

;;--- directed actions

(define-category tell
  :specializes process
  :mixins (directed-action)
  :realization (:verb ("tell" :past-tense "told")))
;; tell someone to do something
;; tell someone that <proposition>


;; know -- that P, John, John will P ("that" optional),
;;   how to
(define-category know
  :specializes process
  :mixins (knowledge-verb)
  :realization
  (:verb ("know"
          :past-tense "knew"
          :past-participle "known")))

#| TO DO
 understand
|#
;; get / have
;; go  come    
;; going to X / gonna

;; -- BDI  --self action vs other action
#| <something> wants 
     <to do something> ;; they do something
     <something> (to do somthing)

 attempt try  -to
desire 

 (have) in mind

 constrain
 
 recognize
 wish -- to do, that P
 intend to / that

 promise --status of raised 'object' and complement
 persuade   Requires consulting the verb

|#
;; expect -- to do, that P, John to 
(define-category expect
  :specializes state
  :mixins (control-verb)
  :realization (:verb "expect"))

(define-category intend
  :specializes state
  :mixins (control-verb)
  :realization (:verb "intend"))
;;/// Fits control paradigm except for not taking a simple object

(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (control-verb)
  :realization (:verb "want"))
    
