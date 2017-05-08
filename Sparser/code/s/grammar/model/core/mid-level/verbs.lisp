;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "verbs"
;;;   Module:  "model;core:mid-level::"
;;;  version:  March 2017

;; broken out of relations 3/7/15

(in-package :sparser)


#| -----------  TO DO
 understand
|
 get attempt try  -to

 desire 

 (have) in mind

 constrain
 
 recognize
 wish -- to do, that P
 intend to / that

 promise --status of raised 'object' and complement
 persuade   Requires consulting the verb / have

 go  come    
 going to X / gonna

 -- BDI  --self action vs other action
| <something> wants 
     <to do something> ;; they do something
     <something> (to do somthing)

|#
  


#|  N.b. if one of these verbs is also used in biology, there should
be an entry for it in bio;overrides.lisp that expunges it. |#


;; expect -- to do, that P, John to 
(define-category expect
  :specializes state
  :mixins (control-verb)
  :realization (:verb "expect"))


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

(define-category intend
  :specializes state
  :mixins (control-verb)
  :realization (:verb "intend"))
;;/// Fits control paradigm except for not taking a simple object


;; know -- that P, John, John will P ("that" optional),
;;   how to
(define-category know
  :specializes process
  :mixins (knowledge-verb)
  :realization
  (:verb ("know"
          :past-tense "knew"
          :past-participle "known")))
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
  :mixins (directed-action prop-attitude)
  :realization (:verb ("tell" :past-tense "told")))
;; tell someone to do something
;; tell someone that <proposition>

(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (control-verb)
  :realization (:verb "want"))
  
