;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:sparser -*-
;;; copyright (c) 1992,2014,2017,2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "calculation"
;;;   Module:  "drivers;timing:"
;;;  Version:   June 2020

;; initiated 2/91. Added some usage documentation 1/27/14.

(in-package :sparser)

;;--- Timer globals

(defvar *time-at-chart-level* 0
  "Initialized and read in chart-based-analysis. Wrapped around 
  the inner loop of the analysis.")

(defvar *time-to-load-everything* 0
  "Started as early as possible within the-master-loader. Stopped
   during the session setup.")

(defvar *time-to-read-document* 0
  "Started in the 'when-reading' segment of the article method of
   read-from-document. Stopped in that segment at the method's end")


;;--- start/stop timers

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

