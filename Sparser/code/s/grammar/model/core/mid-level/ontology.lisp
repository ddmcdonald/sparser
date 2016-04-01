;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ontology"
;;;   Module:  "model;core:relations:"
;;;  version:  April 2016

;; Initiated 12/3/15.

#| Initially a migration from C3's ISR files. Break out into individual
files once an area looks big enough to warrant it.  |#

(in-package :sparser)

;;;----------------
;;; categorization
;;;----------------

(define-category named-type  ;; "Honda"
  :specializes has-name ;; n.b. just simple names
  :binds ((type-of :primitive category))
  :realization (:common-noun name)
  :documentation
    "Describes or names something. Not a thing itself (not physical)
 because if anything it designates the whole class of the stuff 
 it names. The type-of variable indicates what actual kind of thing
 to instantiate when we have reason to deference this type to something
 physical.")


(define-category index
  :specializes name
  :instantiates nil
  :documentation "Functions as a selector by picking out
 one of some set or segence of things because they have
 this 'index'. Could be used for stree addresses, social 
 security numbers, serial numbers, etc. Could be used for
 a 'cursor' that changes as we iterate over some sequence.
 Motivating case is position-in-a sequence in numbers/ordinals.lisp")


;;;-----------
;;; artifacts 
;;;-----------

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
  :mixins (make-artifacts named-type has-name))
;; has-name makes proper nouns, hack "ford" to be a common noun.

;; Would "manufacturer" add anything useful? Maybe distinguish crofters
;; in the Shetlands knitting sweaters from industrial giants?
 ;; ?? company (corporate entity)
      

(define-category artifact
  :specializes physical  
  :mixins (has-name)
  :binds ((made-by . maker-of-artifacts))
  ;; also time-created or is it a specialization from the lifetime of Endurant?
  :lemma (:common-noun "artifact"))




