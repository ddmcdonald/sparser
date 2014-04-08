;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "draft-categories"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  October 2013

;; Initiated 10/9/13 to hold the more general categories that
;; we're only trying out for C3. 

(in-package :sparser)

#| color -- on a physical surface. Vs. a weather front or anything else 
 that is visible only because its contents are. Some materials are transparent. |#
(define-mixin-category physical-surface
  :specializes nil ;; ???  border ?
  :binds ((color . color))
  :realization ((:tree-family premodifier-adds-property
                 :mapping ((property . color)
                           (np-head . :self)
                           (modifier . color)))
;                (:tree-family thing-is-description
;                 :mapping ((
))

;;---- These migrate to the upper model

;; What's the point of Endurant as a predicate-contributing category?
;;   supplies identity somehow
;;   and type ??  
;;   predicates associated with its lifetime

;;--- thin thread to handle the 1st NP

(define-category agent
  :specializes nil 
  ;; foundation says agent < PhysicalObject < Physical < Endurant < Top
  ;; What special sause does 'agent' add? 
  :realization (:common-noun "agent")) ;; n.b. "Mossad agent"



(define-category has-name
  :specializes nil ;; Endurant maybe? 
  :binds ((name :primitive word))
  ;; /// v/r should be 'name' from model/core/names/object.lisp
  ;; but that doesn't itself have a 'name' slot, as the decoder
  ;; wants (see def. of wakil) and if it did, it wouldn't know
  ;; what to do with a simple one word string.
  ;;
  ;; Can hang lots of realizations here
  ;; 'known as', 'called', ...
  :realization (:proper-noun name)) ;; Wakil

;; Need more interesting notion of names here rather than
;; this implicit category distinction

(define-category type-name
  :specializes has-name
  :binds ((type-of :primitive category))
  :realization (:common-noun name))




(define-category artifact
  :specializes nil ;; PhysicalObject?  
  :binds ((made-by . maker-of-artifacts))
  ;; also time-created or is it a specialization from the lifetime of Endurant?
  :realization (:common-noun "artifact"))


(define-category make-artifacts
  :specializes process 
  :binds (;; (maker . agent) [1]
          (procedure . process) ;; though instructions aren't a process
            ;; but what is this by itself?
          (product ;; ???? Would growing tomatoes count?
           . artifact)))
; [1] We get more milage if we remove the agent, because then
; we can treat Ford as an agent and mix this in.
; It would nice to have a notion of 'activity' which is a description
; of a process, where in order to carry out the process you need to
; incorporate an agent. 

(define-category maker-of-artifacts
  :specializes agent
  :mixins (make-artifacts type-name)) ;;has-name))
;; has-name makes proper nouns, hack "ford" to be a common noun.

;; Would "manufacturer" add anything useful? Maybe distinguish crofters
;; in the Shetlands knitting sweaters from industrial giants?
 ;; ?? company (corporate entity)

(define-category car-manufacturer
  :specializes maker-of-artifacts
  :restrict ((product . motor-vehicle))
  :index (:permanent :key name))
#| Notes for Ford qua manufacturer of cars, 
thence as a make of car (vehicle) http://en.wikipedia.org/wiki/Ford
Ford is a manufacturer
  what is manufactures is cars and trucks (farm equipment)
It creates artifacts,
  that concept licenses 'creator'{builder, assembler}
    and 'creation time' {birth date} 
      "came off the assembly line at <clock> on <date>"
It has buildings that it does its manufacturing in
 these are the place of the artifact creation
|#
      





