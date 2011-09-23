;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "reporter"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/8/96.

(in-package :sparser)


(define-context-variable *financial-reports-in-article* nil)


(define-after-analysis-action '(describe-any-financial-reports))

(defun describe-any-financial-reports ()
  (when *financial-reports-in-article*
    (dolist (fr *financial-reports-in-article*)

      (let ((stream *standard-output*))
        (format stream "~&~%------------------------")
        (describe-a-financial-report fr stream)
        (format stream "~%~%")))))



(defun describe-a-financial-report (fr  
                                    &optional (stream *standard-output*))

  (format stream "~&Financial report #~A"
          (indiv-id fr))
  (let ((company (value-of 'company fr))
        (datum (value-of 'datum fr))
        (reporting-period (value-of 'reporting-period fr))
        (value (value-of 'value fr))
        (value-per-share (value-of 'value-per-share fr))
        (percentage-changed (value-of 'percentage-changed fr))
        (direction-of-change (value-of 'direction-of-change fr))
        (comparative-value (value-of 'comparative-value fr))
        (comparative-value-per-share (value-of 'comparative-value-per-share fr))
        (reporting-period-compared (value-of 'reporting-period-compared fr)))

    (when company
      (format stream "~%   company: ~A"
              (string-for company)))
    (when datum
      (format stream "~%   datum: ~A"
              (string-for datum)))
    (when reporting-period
      (format stream "~%   reporting-period: ~A"
              (string-for reporting-period)))
    (when value
      (format stream "~%   value: ~A"
              (string-for value)))
    (when value-per-share
      (format stream "~%   value-per-share: ~A"
              (string-for value-per-share)))
    (when percentage-changed
      (format stream "~%   percentage-changed: ~A"
              (string-for percentage-changed)))
    (when direction-of-change
      (format stream "~%   direction-of-change: ~A"
              (string-for direction-of-change)))
    (when comparative-value
      (format stream "~%   comparative-value: ~A"
              (string-for comparative-value)))
    (when comparative-value-per-share
      (format stream "~%   comparative-value-per-share: ~A"
              (string-for comparative-value-per-share)))
    (when reporting-period-compared
      (format stream "~%   reporting-period-compared: ~A"
              (string-for reporting-period-compared)))

    fr ))
