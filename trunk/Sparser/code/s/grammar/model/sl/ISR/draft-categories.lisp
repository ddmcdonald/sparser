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

;;---- Ford

;; These migrate to the upper model
(define-category agent
  :specializes nil 
  ;; foundation says agent < PhysicalObject < Physical < Endurant < Top
  ;; What special sause does 'agent' add? 
  :realization (:common-noun "agent")) ;; n.b. "Mossad agent"

(define-category artifact
  :specializes nil) ;; PhysicalObject?  Presumably binds the thing that makes it?

(define-category process
  :specializes nil) ;; Process < Perdurant

(define-category make-artifacts
  :specializes process 
  :binds (;; (maker . agent) [1]
          (procedure . process) ;; though instructions aren't a process
            ;; but what is this?
          (product ;; ???? Would growing tomatoes count?
           . artifact)))
; [1] We get more milage if we remove the agent, because then
; we can treat Ford as an agent and mix this in.
; It would nice to have a notion of 'activity' which is a description
; of a process, where in order to carry out the process you need to
; incorporate an agent. 

;; Generation goal: "Ford makes trucks"

(define-category maker-of-artifacts
  :specializes agent
  :mixins (make-artifacts) ;; company (corporate entity)
)

;; Would "manufacturer" add anything useful? Maybe distinguish crofters
;; in the Shetlands knitting sweaters from industrial giants?

(define-category car-manufacturer
  :specializes maker-of-artifacts
  :restrict ((product . motor-vehicle)))
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


