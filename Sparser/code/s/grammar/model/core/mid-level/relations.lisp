;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relations"
;;;   Module:  "model;core:mid-level::"
;;;  version:  February 2017

;; Initiated 12/3/15

(in-package :sparser)

(define-category action-by-on
  :specializes process
  :instantiates nil
  :binds ((subject endurant) ;; matches bio-process
          (object endurant))
  :documentation "Provides standard bindings for ordinary transitive
   verbs. Could take most of what's on bio-process")

(define-category find ;; see bio;harvard-terms
  :specializes action-by-on
  :restrict ((object (:or physical-object location))) ;; find a block
  :realization
    (:verb ("find" :past-tense "found")
     :etf (svo-passive)
     :s subject       
     :o object))


;; -- BDI  --self action vs other action
#+ignore(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (with-an-agent)
  :binds ((action ???)))
#| <something> wants 
     <to do something> ;; they do something
     <something> (to have somthing)

 desire
 expect
|#
