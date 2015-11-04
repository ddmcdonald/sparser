;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "lambdas"
;;;   Module:  "model forms;sl:whos news:mf:acts:job events:"
;;;  version:  1.2  April 1991

;; split out from je;job event on 2/18
;; 1.1 (3/7 v1.8.1) Fixed bug in Readout-composite/job-event+person
;; 1.2 (4/10 v1.8.2) wrote Check-for-passive and modified Readout-
;;     composite/job-event+person to use it.

(in-package :CTI-source)



;;;----------------------------------
;;; lambda abstractions (composites)
;;;----------------------------------

(define-category  ;(define-composite-category
  job-event+title)
  ;; the model allows one to calculate what this needs to be
  ;; a full relation, e.g  (lambda (person company) ...), with
  ;; specializations of what is needed according to the dictates
  ;; of specific categories of job-event.
;  :slots ((job-event job-event)
;          (title     title))

(define-category  job-event+replacing)
  ;; job-event, person

(define-category  job-event+person)
  ;; person,job-event

(define-category  job-event+company)
  ;; job-event, company

(defparameter *composites-replacement-vector-table*
  `(((,category::job-event+title . ,category::title+company)
     . ,category::title)
    ))

;;;------------------
;;; readout routines
;;;------------------
;;  These assume that one item is pealed off and bound to a variable,
;;  and the other item passes back under the assumption that it is a
;;  composite itself, to be decomposed in a later pass through the loop

(defun readout-composite/job-event+title (je+t)
  (unless *job-event/title*
    (setq *job-event/title* (third je+t)))
  (second je+t))

(defun readout-composite/job-event+person (je+p)
  (check-for-passive (third je+p))
  (second je+p))

(defun readout-composite/job-event+company (je+c)
  (unless *job-event/company*
    ;; check if it was set by an edge at a higher level in
    ;; in the object
    (setq *job-event/company* (third je+c)))
  (second je+c))

(defun readout-composite/job-event+replacing (je+p)
  (setq *job-event/replacing* (third je+p))
  (second je+p))


(defun check-for-passive (nominal-subject)
  (if *passive*
    (setq *job-event/replacing* nominal-subject)
    (setq *job-event/person*    nominal-subject)))



;;---------- move these!
(defun title+status/title (t+s)
  (second t+s))
         
(defun title+status/status (t+s)
  (third t+s))

(defun title+company/title (t+c)
  (second t+c))

(defun title+company/company (t+c)
  (third t+c))

;;;---------------------
;;; extraction routines
;;;---------------------

#| these routines navigate the composites to find objects of 
   specified type  |#

(defun extract-company (c)
  (unless (composite? c)
    (break "Argument passed to Extract-company is not a composite:~
            ~%   ~A" c))
  (case (cat-symbol (first c))
    (category::subsidiary/company+type-of-unit (second c))
    (category::name/unknown-referent
     (make-company
      :name (make-name-of-a-company
             :all-but-inc (rest c))))
    (category::title+company (third c))
    (category::unit+company
     ;; this throws away appreciation of the fact that we've
     ;; got a unit of the parent and just passes back the parent
     ;; but that's all the caller -- db-form/company -- is 
     ;; prepared to deal with
     (if *accept-all-records*
       (third c)
       (else
         (break/debug "Extend Extract-company for unit+company") :foo)))
    (category::subsidiary/name+type-of-unit
     ;; ditto, only worse
     (if *accept-all-records*
       (third c)
       (else
         (break/debug "Extend Extract-company for a subsidiary") :foo)))
    (otherwise
     (break/debug "New category of composite passed to ~
                   Extract-company:~%   ~A" c)
     :foo)))


;;;-------------------
;;; transfer routines
;;;-------------------

#|  Presently (6/3) these are called by hand as part of editing
a job-event record to make it suitable for writing out to the 
data base.  Later these will be called by inference routines. |#

(defun title-company-is-the-company ()
  ;; break apart the composite that is presently assigned to the
  ;; title variable and assign the record the company that's
  ;; in there.
  ;;
  (let* ((title-composite *job-event/title*))
    (case (cat-symbol (first title-composite))
      (category::title+company
       (setq *job-event/title*   (second title-composite)
             *job-event/company* (third title-composite)))
      (otherwise
       (break "New composite category: ~A"
              (first title-composite))))))

(defun title-is-in-e# (n)
  ;; The record's title should be taken from (somewhere within)
  ;; the designated edge's referent.
  (let ((title-composite (edge-referent (edge# n))))
    (if (composite? title-composite)
      (setq *job-event/title* 
            (case (cat-symbol (first title-composite))
              (category::plural-title  title-composite)
              (category::title+company (second title-composite))
              (otherwise
               (break/debug "New composite category: ~A"
                            (first title-composite)))))
      (setq *job-event/title*
            (cond ((eq title-composite category::board)
                   title-composite)
                  ((typep title-composite 'title)
                   title-composite)
                  (t (break/debug "New kind of object: ~A"
                                  title-composite)))))))

(defun company-is-in-e# (n)
  (let ((company (edge-referent (edge# n))))
    (setq *job-event/company*
          (cond
           ((typep company 'company)
            company)
           ((composite? company)
            (case (cat-symbol (first company))
              (category::name/unknown-referent  company)
              (otherwise
               (break/debug "New composite: ~A" 
                            (first company)))))
           (t (break/debug "New case: referent is ~A" company))))))


(defun use-the-topic-company ()
  (if *topic-company*
    (setq *job-event/company* (the-topic-company))
    (format t "~%There is no topic company defined~%")))


(defun decompose-board/company ()
  ;; the company field is filled with a title+company composite
  ;; because the "title" is a board of directors
  (let* ((company-composite *job-event/company*))
    (unless (eq (first company-composite)
                category::title+company)
      (break/debug "This routine only applies to title+company ~
                    composites, and this is~% ~A" company-composite))
    (setq *job-event/title* (second company-composite)
          *job-event/company* (third company-composite))))
    

