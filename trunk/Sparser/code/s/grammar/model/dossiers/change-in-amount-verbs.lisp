;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "change-in-amount verbs"
;;;   Module:  "model;dossiers:"
;;;  version:  March 2005

;; initiated 12/22/95. Morphology extensions by hand 3/20/05, and
;; noun-variants added (and integrated forms commented out) 3/31

(in-package :sparser)


;; 12/26/95
(define-change-in-amount-verb/up "climb")
(define-change-in-amount-noun/up "climb")

;; 12/26/95
(define-change-in-amount-verb/down "drop")
(define-change-in-amount-noun/down "drop")

;; 12/26/95
(define-change-in-amount-verb/down
 `(:verb "fall"
      :ed-form "fell"))
(define-change-in-amount-noun/down "fall")

;; 12/26/95
(define-change-in-amount-verb/up "increase")
(define-change-in-amount-noun/up "increase")

;; 12/26/95
(define-change-in-amount-verb/up 
  '(:verb "rise"
    :ed-form "rose"))
(define-change-in-amount-noun/up "rise")


#| ==  integrated versions -- waiting on clean treatment
       of words that let verbal and nominal variants get
       picked out in rspecs.


(define-change-in-AMOUNT-VERB/DOWN
  `(:verb "drop"
      :nominalization "drop"))

(define-change-in-AMOUNT-VERB/UP 
 `(:verb "increase"
      :nominalization "increase"))

------ |#


;; 12/26/95
;; to-money ->  "to" money
(define-realization to-money
         transparent-pp
         ((complement . money)
          (preposition . "to")
          (pp . to-money)))
