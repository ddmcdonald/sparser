;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "titles"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  May 1991    

(in-package :CTI-source)

;;;-------------------------------------
;;; specific titles (done as polywords)
;;;-------------------------------------


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
(define-title "chairman" :synonyms '("chairmanship"))
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
(define-title "director" :plural "directors")

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
(define-title "senior executive")


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
(define-title "chief executive"
  ;;n.b. this setup is a hack to get the string passed to
  ;;the recursive-title-rule in the needed order
              :real-name "chief executive officer"
              :synonyms '("CEO"))

(define-title "financial officer")
(define-title "chief financial officer")

(define-title "investment officer")
(define-title "chief investment officer")

(define-title "operating officer"
              :real-name "chief operating officer")



;;------ "partner"
;;
(define-title "partner"  :plural "partners")
(define-title "general partner")
(define-title "managing partner")




;;----- headed by "president"
;;
(define-title "president")


;;(define-title "president pro tem")
;;//n.b. this won't parse in a left-collecting context.
;; It will have to bury under.


;;----- "vice president"
;;
(define-title "vice president")

(define-title "senior vice president")
  ;;; :synonyms '("senior vice presidents"))
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
(define-title "trustee"  :plural "trustees")

