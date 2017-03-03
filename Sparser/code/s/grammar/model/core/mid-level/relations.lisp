;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relations"
;;;   Module:  "model;core:mid-level::"
;;;  version:  February 2017

;; Initiated 12/3/15

(in-package :sparser)

(define-mixin-category action-verb
  :specializes linguistic
  :instantiates nil
  :binds ((subject (:or pronoun endurant))
          (object endurant)) 
  :documentation "Provides standard bindings for ordinary transitive
    verbs. Could take most of what's on bio-process. Added 'action'
    to mimic bio;aspectual-relation"
  :realization
    (:s subject
     :o object ))
        
#|
;; I failed to find a block
(define-category fail
  :specializes process ;; acomplishment?
  :mixins (action-verb)
  :realization 
    (:verb "fail"  
     :etf (sv)
     ) |#


(define-category find ;; see bio;harvard-terms
  :specializes action-verb
  :mixins (action-verb)
  :restrict ((object (:or physical-object location))) ;; find a block
  :realization
    (:verb ("find" :past-tense "found")
     :etf (svo-passive)))



;; get / have
;; go
;; going to X / gonna

;; -- BDI  --self action vs other action
#| <something> wants 
     <to do something> ;; they do something
     <something> (to do somthing)


 attempt try
 desire
 expect
 intend |#

;; https://en.wikipedia.org/wiki/Control_(linguistics)
(define-mixin-category control-verb
  :specializes linguistic ;; daughter of abstract
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
;; "I want you to go home" -- agent v patieht theme
;;     But roll-up from the right parsing might
;;     argue for different structure

(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (control-verb)
  :realization (:verb "want"))
    
