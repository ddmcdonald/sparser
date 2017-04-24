;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "verbs"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2017

;; Broken out of vocabulary 3/7/17

(in-package :sparser)

;; (p "Add another block")

(define-category add-to
  :specializes achievement
  :mixins (with-an-agent with-specified-location)
  :restrict ((goal built-out-of-bricks))
  :binds ((theme object))
  :realization
    (:verb "add"
     :etf (svo-passive)
     :s agent
     :o theme
     :loc-pp-complement (next\ to
                         on
                         on\ top\ of
                         at
                         to) ;; "... to the row" via adjoin-pp-to-vg
      :mumble ("add" svo :o theme)))


;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
    :specializes process
    ;; we're going through the steps of constucting the
    ;; staircase. With "lets'" we haven't even started
    :mixins (with-an-agent)
    :binds ((artifact artifact)) ;; what they build
    :realization (:verb ("build" :past-tense "built")
                  :etf (svo-passive)
                  :s agent
                  :o artifact
                  :mumble ("build" svo :o artifact)))

(define-category make
  :specializes process
  :mixins (with-an-agent)
  :binds ((object physical) ;; what they build
          (adj-comp attribute-value)) ;; "make the stack green"
  :realization
    (:verb ("make" :past-tense "made")
     :etf (svo-passive)
     :s agent
     :o object
     :adjp-complement adj-comp
     :mumble ("make" svo :o object)))
          
(define-category move-something-somewhere
  :specializes process
  :mixins (with-an-agent with-specified-location) ;; adds 'agent' variable and location variables
  :binds ((theme physical))
  :documentation "Could have been named PTRANS. Intended as the
    common parent of push, put, place, nudge, etc."
   :realization (:verb "move"
                 :etf (svo-passive)
                 :s agent
                 :o theme
                 :loc-pp-complement (to next\ to)
                 :mumble ("move" svo :s agent :o theme)))

(define-category push
    :specializes process
    :mixins (with-an-agent with-specified-location)
    :binds ((theme physical))
    :documentation "The meaning of push depends largly
    on what is pushed (= the type of the theme): block
    wall, door, etc. If the specific action to take
    is object (sort) specific then co-composition is
    involved in the interpretation of the literal 
    directive."
    :realization (:verb "push"
                  :etf (svo-passive)
                  :s agent
                  :o theme
                  :loc-pp-complement (to next\ to)
                  :mumble ("push" svo :s agent :o theme)))

(define-category push-together
  :specializes push
  :binds ((items collection))
  :realization (:verb "push together"
                :etf (svo-passive)
                :s agent
                :o theme
                :mumble (transitive-with-final-adverbial "push" "together")))

;; 1.2 "Put a block on the table"
(define-category put-something-somewhere
  :specializes process
  :mixins (with-an-agent with-specified-location)
  :binds ((theme physical))
  :realization
    (:verb "put"
     :etf (svo-passive)
     :s agent
     :o theme
     :loc-pp-complement (next\ to on on\ top\ of at)
     :mumble ("put" svo1o2 :o1 theme :o2 location)))

#| Moved there from mid-level/subcat-patterns.lisp
   to debug the mixin and its use in 'put' together

(define-mixin-category move-something-verb
  :specializes linguistic ;; daughter of abstract
  :instantiates nil
  :mixins (with-an-agent) ;; v/r = physical-agent
  :binds ((theme physical) ;; what moves
          (location location)) ;; where it is moved to
  :realization
    (:etf svol
     :s agent
     :o theme
     :l location)
  :documentation "For verbs like 'put' where an agent
 is moving the theme from one location to another.
 In TRIPS 'put' is  agent, affected, result.") 

(define-category put-something-somewhere
  :specializes process
  :mixins (move-something-verb)
  :realization
    (:verb "put"
     :mumble ("put" svo1o2 :o1 theme :o2 location))) |#


