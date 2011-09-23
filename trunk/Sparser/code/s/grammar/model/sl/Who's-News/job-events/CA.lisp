;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "CA"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.2  March 1991

;; 1.2  (2/8 v1.8.1)  Added call to Do-treetop
;; 1.2  (3/21 v1.8.1)  Added copy of the person routine for companies

(in-package :CTI-source)


;;;-------------------------------------------------
;;; what to do if the person subject isn't adjacent
;;;-------------------------------------------------

;;-------- persons

(set-ca-action (category-named 'job-event/pers!__)
               'search-for-subject/job-event/person)


(defun search-for-subject/job-event/person (vp-edge)
  (cond ((comma-just-to-its-left vp-edge)
         ;; check for this no-brainer case first, then go for the
         ;; less certain heuristics.
         (let ((person-edge
                (edge-with-label-at/ends-there?
                 category::person
                 (chart-position-before
                  (edge-starting-position vp-edge)))))
           (if person-edge
             (then
               (when *trace-CA-subjects*
                 (format t "~&(CA) Found person for job-event/pers!___ ~
                            just to the left of a comma~%"))
               (let ((job-event-edge
                      (make-default-binary-edge
                       person-edge
                       vp-edge
                       (lookup/cfr/resolved
                        category::job-event
                        `(,category::person ,category::job-event/pers!__)))))
                 (when *trace-do-edge*
                   (format t "~&(CA) created the edge ~A"
                           job-event-edge))
                 (do-treetop job-event-edge :moment 'CA)))
             (else
               (search-for-subject/person vp-edge)))))

        (t (search-for-subject/person vp-edge))))



;;-------- companies

#|(set-ca-action (category-named 'job-event/co!__)
               'search-for-subject/job-event/company)
|#

(defun search-for-subject/job-event/company (vp-edge)
  (cond ((comma-just-to-its-left vp-edge)
         ;; check for this no-brainer case first, then go for the
         ;; less certain heuristics.
         (let ((company-edge
                (edge-with-label-at/ends-there?
                 category::company
                 (chart-position-before
                  (edge-starting-position vp-edge)))))
           (if company-edge
             (then
               (when *trace-CA-subjects*
                 (format t "~&(CA) Found company for job-event/co!___ ~
                            just to the left of a comma~%"))
               (let ((job-event-edge
                      (make-default-binary-edge
                       company-edge
                       vp-edge
                       (lookup/cfr/resolved
                        category::job-event
                        `(,category::company ,category::job-event/co!__)))))
                 (when *trace-do-edge*
                   (format t "~&(CA) created the edge ~A"
                           job-event-edge))
                 (do-treetop job-event-edge :moment 'CA)))
             (else
               (search-for-subject/company vp-edge)))))

        (t (search-for-subject/company vp-edge))))

