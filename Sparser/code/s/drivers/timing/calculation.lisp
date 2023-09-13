;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:sparser -*-
;;; copyright (c) 1992,2014,2017,2020-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "calculation"
;;;   Module:  "drivers;timing:"
;;;  Version:   March 2021

;; initiated 2/91. Added some usage documentation 1/27/14.

;; Provides a simple basis for managing diverse timers based on
;; symbols that record the internal real time when they are
;; started and subtract that from the current real time when
;; they are stoped. Pairs of start and stop calls are the places
;; around the process you want to time.

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
   read-from-document. Stopped in that segment at the method's end.
   For operating over files, analyze-text-from-file starts the
   timer and finish-paragraph-based-article stops it.")


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
  (let ((delta (- (get-internal-real-time)
                  (symbol-value symbol))))
    ;; avoid potential downstream divide by zero
    (when (<= delta 0)
      (setq delta 1))
    (set symbol delta)))

