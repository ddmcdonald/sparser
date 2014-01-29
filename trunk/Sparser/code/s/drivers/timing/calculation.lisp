;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:sparser -*-
;;; copyright (c) 1992,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "calculation"
;;;   Module:  "drivers;timing:"
;;;  Version:   January 2014

;; initiated 2/91. Added some usage documentation 1/27/14.

(in-package :sparser)

#|
These are embedded in chart-based-analysis which is the inner loop 
of the analysis, using the symbol *time-at-chart-level* which is
bound in drivers/timing/cases.lisp.

In drivers/timing/presentation.lisp the function run-string-for-timing
uses this information. 
|#

(defun start-timer (symbol)
  (unless (boundp symbol)
    (error "The symbol passed to the timer is undefined.~
            ~%       Check the spelling."))
  (set symbol (get-internal-real-time)))


(defun stop-timer (symbol)
  (unless (boundp symbol)
    (error "The symbol passed to the timer is undefined.~
            ~%       Check the spelling."))
  (set symbol
       (- (get-internal-real-time)
          (symbol-value symbol))))

