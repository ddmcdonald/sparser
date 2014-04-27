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


(define-category named-type
  :specializes has-name
  :binds ((type-of :primitive category))
  :realization (:common-noun name)
  :documentation
    "Describes or names something. Not a thing itself (not physical)
 because if anything it designates the whole class of the stuff 
 it names. The type-of variable indicates what actual kind of thing
 to instantiate when we have reason to deference this type to something
 physical.")



(define-category artifact
  :specializes physical  
  :binds ((made-by . maker-of-artifacts))
  ;; also time-created or is it a specialization from the lifetime of Endurant?
  :realization (:common-noun "artifact"))


(define-category make-artifacts
  :specializes process 
  :binds (;; (maker . agent) [1]
          (procedure . process) ;; though instructions aren't a process
            ;; but what is this by itself?
          (product ;; ???? Would growing tomatoes count?
           . artifact)
          (type-of-product . named-type)))
; [1] We get more milage if we remove the agent, because then
; we can treat Ford as an agent and mix this in.
; It would nice to have a notion of 'activity' which is a description
; of a process, where in order to carry out the process you need to
; incorporate an agent. 

(define-category maker-of-artifacts
  :specializes agent
  :mixins (make-artifacts named-type)) ;;has-name))
;; has-name makes proper nouns, hack "ford" to be a common noun.

;; Would "manufacturer" add anything useful? Maybe distinguish crofters
;; in the Shetlands knitting sweaters from industrial giants?
 ;; ?? company (corporate entity)
      





