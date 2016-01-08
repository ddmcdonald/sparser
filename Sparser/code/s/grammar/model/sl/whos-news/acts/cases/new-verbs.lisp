;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "new verbs"
;;;   Module:  "model forms;sl:whos news:acts:cases:"
;;;  version:  May 1991

;; initiated 5/8

(in-package :CTI-source)



;;;---------
;;; be with
;;;---------

(defparameter *je-with-co* (make-job-event :name 'be-with-company))

(define-cfr category::job-event/pers!__
            `( ,category::be ,category::with-company)
  :referent `(:composite ,category::job-event+company
                         ,*je-with-co* right-edge))



;;;--------
;;; choose
;;;--------

(define-job-event  'company-chooses-person  'job-event/co!__!pers
  :infinitive         "choose"
  :tensed/singular    "chooses"
  :past-participle    "chose"
  :present-participle "choosing"
  :nominalization     "choice")



;;;-----
;;; die
;;;-----

(define-job-event  'person-died  'job-event/pers!__
  :infinitive         "die"
  :tensed/singular    "dies"
  :past-participle    "died"
  :present-participle "dieing"
  :nominalization     "death")


;;; departure

(defparameter *depart-company*
  (make-job-event :name 'depart-company))
(index/job-event 'head-company *depart-company*)

(def-cfr nominalization/person ("departure")
  :referent (:eval *depart-company*))


;;;------
;;; head
;;;------
(defparameter *head-company*
  (make-job-event :name 'head-company))
(index/job-event 'head-company *head-company*)


(define-main-verb 'mvb/head
  :infinitive "head"             ;; also tensed/plural
  :tensed/singular "heads"
  :past-participle "headed"
  :present-participle "heading")

(def-cfr job-event/pers!__
         ( mvb/head  company )
  :referent (:composite job-event+company
                        (job-event-named 'head-company)
                        right-edge))


;;;------
;;; hire
;;;------

(define-job-event  'company-hires-person  'job-event/co!__!pers
  :infinitive         "hire"
  :tensed/singular    "hires"
  :past-participle    "hired"
  :present-participle "hiring")



;;;------
;;; keep
;;;------

(define-job-event  'keep-post  'job-event/pers!__!title
  :infinitive         "keep"
  :tensed/singular    "keeps"
  :past-participle    "kept"
  :present-participle "keeping")



;;;----------
;;; maintain
;;;----------

(define-job-event  'maintain-position  'job-event/pers!__!title
  :infinitive         "maintain"
  :tensed/singular    "maintains"
  :past-participle    "maintained"
  :present-participle "maintaining")



;;;------
;;; oust
;;;------

(define-job-event  'company-ousts-person  'job-event/co!__!pers
  :infinitive         "oust"
  :tensed/singular    "ousts"
  :past-participle    "ousted"
  :present-participle "ousting"
  :nominalization     "ouster")



;;;------
;;; quit
;;;------

(define-job-event  'person-quit  'job-event/pers!__
  :infinitive         "quit"
  :tensed/singular    "quits"
  :past-participle    "quit"
  :present-participle "quitting")   ;;??one "t" ??



;;;------------
;;; relinguish
;;;------------

(define-job-event  'relinquish-post  'job-event/pers!__!title
  :infinitive         "relinquish"
  :tensed/singular    "relinquishs"
  :past-participle    "relinquished"
  :present-participle "relinquishing")


;;;--------
;;; remove
;;;--------

(define-job-event  'remove-person-from-post  'job-event/co!__!pers
  :infinitive         "remove"
  :tensed/singular    "removes"
  :past-participle    "removed"
  :present-participle "removing"
  :nominalization     "removal")



;;;--------
;;; retain
;;;--------

(define-job-event  'retain-post  'job-event/pers!__!title
  :infinitive         "retain"
  :tensed/singular    "retains"
  :past-participle    "retained"
  :present-participle "retaining")


;;;--------
;;; return
;;;--------

;(c "Paul M. Anderson is returning to Panhandle as group
;  vice president")

(define-job-event  'return-to-company  'job-event/pers!__
  :infinitive         "return"
  :tensed/singular    "returns"
  :past-participle    "returned"
  :present-participle "returning")



;;;--------------
;;; step down as
;;;--------------

(defparameter *step-down-as*
  (make-job-event :name 'step-down-as))
(index/job-event 'step-down-as *step-down-as*)

(define-main-verb 'mvb/step
  :infinitive      "step"
  :tensed/singular "steps"
  :past-participle "stepped"
  :present-participle "steping")


(def-cfr job-event/pers!__
         ( mvb/step "down" )
  :referent (:eval *step-down-as*))


;;;---------------
;;; take the helm 
;;;---------------

(defparameter *take-helm-of-company*
  (make-job-event :name 'take-helm-of-company))
(index/job-event 'take-helm-of-company *take-helm-of-company*)

(define-main-verb 'mvb/take
  :infinitive      "take"
  :tensed/singular "takes"
  :past-participle "took"
  :present-participle "taking")

(def-cfr the-helm ("the helm"))

(def-cfr take-the-helm ( mvb/take the-helm ))

(def-cfr job-event/pers!__
         ( take-the-helm of-company )
  :referent (:composite job-event+company
                        (job-event-named 'take-helm-of-company)
                        right-edge))

