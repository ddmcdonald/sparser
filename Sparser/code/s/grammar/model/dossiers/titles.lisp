;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "titles"
;;;   Module:  "model;dossiers:"
;;;  version:  March 1994

;; initiated 6/10/93 v2.3.  3/21/94 fixed "chief executive"

(in-package :sparser)

;;============== This file not only won't execute, it's
;;==============   no longer loaded (2/21/11)
;;  It's the polyword treatment from the original rule set
;;  and does provide a nice test set.

;;;-------------------------------------
;;; specific titles (done as polywords)
;;;-------------------------------------
#|
;;------ "actuary"
;;
(define-title "actuary")
(define-title "corporate actuary")
(define-title "chief corporate actuary")


;;------ "advisor"
;;
(define-title "adviser")
(define-title "senior adviser")


;;------ "attorney"
;;
(define-title "attorney")
(define-title "district attorney")
(define-title "attorney general")


;;------ "cashier"
;;
(define-title "cashier")


;;----- "chairman"
;;
(define-title "chairman")
(define-title "vice chairman")

(define-title "chairperson")
(define-title "chairwoman")


;;----- "commissioner"
;;
(define-title "commissioner")
(define-title "associate commissioner")


;;----- "counsel"
;;
(define-title "counsel")
(define-title "general counsel")
(define-title "deputy general counsel")


;;----- "controller"
;;
(define-title "controller")



;;----- "deputy"
;;
(define-title "deputy")



;;-----  "director"
;;
(define-title "director")

(define-title "executive director")
(define-title "managing director")
(define-title "group managing director")
(define-title "marketing director")
(define-title "program director")
(define-title "research director")



;;----- "head"
;;
(define-title "head")



;;----- "executive"
;;

(define-title "executive")
;;(define-title "senior executive") kills sr.ex.v.p.


;;----- "founder"
;;
(define-title "founder")
(define-title "cofounder")


;;----- "manager"
;;
(define-title "manager")
(define-title "general manager")
(define-title "associate general manager")
(define-title "senior manager")



;;------ "officer"
;;
(define-title "officer")
(define-title "chief officer")

(define-title "administrative officer")
(define-title "chief administrative officer")

(define-title "credit officer")
(define-title "chief credit officer")

(define-title "executive officer")
(define-title "chief executive")
(define-title "chief executive officer")
(define-title "CEO")

(define-title "financial officer")
(define-title "chief financial officer")

(define-title "investment officer")
(define-title "chief investment officer")

(define-title "operating officer")
(define-title "chief operating officer")



;;------ "partner"
;;
(define-title "partner")
(define-title "general partner")
(define-title "managing partner")




;;----- headed by "president"
;;
(define-title "president")

(define-title "vice president")

(define-title "senior vice president")
(define-title "corporate senior vice president")
(define-title "executive vice president")
(define-title "senior executive vice president")
(define-title "group vice president")
(define-title "corporate vice president")



;;------ "principal"
;;
(define-title "principal")



;;------ "professor"
;;
(define-title "professor")
(define-title "assistant professor")
(define-title "associate professor")
(define-title "full professor")



;;------ "publisher"
;;
(define-title "publisher")



;;------ "secretary"
;;
(define-title "secretary")
(define-title "corporate secretary")



;;------ "treasurer"
;;
(define-title "treasurer")



;;------ "trustee"
;;
(define-title "trustee")
|#
