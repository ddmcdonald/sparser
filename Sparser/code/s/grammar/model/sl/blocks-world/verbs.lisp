;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "verbs"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  July 2017

;; Broken out of vocabulary 3/7/17

(in-package :sparser)

;; (p "Add another block to the row")

(define-category add-to
  :specializes achievement
  :mixins (move-something-verb with-specified-location)
  :restrict ((goal built-out-of-bricks)) ;; on with-specified-location
  :documentation "This is the 'add' where we're extending
    a structure that's under construction. The 'to' picking out
    the assemblage is always present, even if it's been
    omitted as obvious."
  :realization
    (:verb "add"
     :etf (svol)
     :s agent
     :o theme
     :loc-pp-complement (on
                         at
                         to) ;; "... to the row" via adjoin-pp-to-vg
      :mumble ("add" svo1o2 :s agent :o1 theme :o2 location)))
;;///replace with explicit preposition phrase
;;///would be easier if the spatial operators -were- the relation


(define-category hold-something
  :specializes process
  :mixins (action-verb)
  :restrict ((patient object))
  :realization (:verb ("hold" :past-tense "held"))
  :documentation "Needs extension or a variant for variants
    like 'hold it up' or (?) 'hold it higher'")

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

(define-category pull
    :specializes process
    :mixins (with-an-agent with-specified-location)
    :binds ((theme physical))
    :realization (:verb "pull"
                  :etf (svo-passive)
                  :s agent
                  :o theme
                  :loc-pp-complement (to next\ to)
                  :mumble ("pull" svo :s agent :o theme)))

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

;; If push-together inherits from push, it will try to
;; inherit the mdata on push, which leads to an odd clash
;; that's not worth addressing yet (7/20/17)
(define-category push-together
  :specializes process
  :mixins (with-an-agent theme)
  :restrict ((theme object))
  :binds ((items collection))
  :realization (:verb "push together"
                :etf (svo-passive)
                :s agent
                :o theme
                :mumble ("push" svop :s agent :o theme :p "together")))


(define-category put-something-somewhere
  :specializes process
  :mixins (move-something-verb)
  :realization
    (:verb "put"
     :etf svol
     :mumble ("put" svo1o2 :o1 theme :o2 location)))

(define-category roll
  :specializes process
  :mixins (action-verb)
  :realization (:verb "roll" :etf (svo-passive))
  :documentation "Balls and cylinders roll. Blocks don't.
    need a constraint model for that")

(define-category rotate
  :specializes process
  :mixins (action-verb)
  :realization (:verb "rotate" :etf (svo-passive))
  :documentation "Need to indicate that the patient must
    have an axis that it can rotate around")
                      
