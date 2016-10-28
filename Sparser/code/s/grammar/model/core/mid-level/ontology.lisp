;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ontology"
;;;   Module:  "model;core:relations:"
;;;  version:  October 2016

;; Initiated 12/3/15.

#| Initially a migration from C3's ISR files. Break out into individual
files once an area looks big enough to warrant it.  |#

(in-package :sparser)

;;;-------------------------------------------
;;; ordinary things -- basis for blocks world
;;;-------------------------------------------

(define-category object 
  :specializes physical-object
  :mixins (has-spatial-location ;; adds location variable
           has-color ;; color
           has-size  ;; size
           ;; after discussion with Alex, but without discussion with David
           ;;  (after vacation?!)
           has-name  ;; blocks are not artifacts, but they do have names
           )
  :documentation
  "Conventional physical objects: chairs, amoeba, mountains, 
 breaths of air, blocks on a table.")





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
  :specializes physical-agent
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




