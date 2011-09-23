;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   module:  "interface;windows:articles:"
;;;  Version:   November 1993

;; initiated 11/11/93

(in-package :sparser)

;;;--------
;;; window
;;;--------

(defclass text-output-window (ccl::fred-window)
  ()
  (:default-initargs
    :window-type :document-with-grow
    :window-title "test"
    :scratch-p t
    :view-position #@(2 40)
    :view-size #@(500 100)
    :view-font '("courier" 10 :plain)))

; "courier" prints both ss and eos characters -- as boxes
; "times" prints them as close brackets
; "new york" prints just ss
; "monaco" prints both -- as glifs for shift-option or something

(defparameter *text-out* (make-instance 'text-output-window))


;;;--------------------------
;;; displaying to the window
;;;--------------------------

(defun write-to-text-window (string)
  (write-string string *text-out*)
  (force-output *text-out*))

;(setq *display-text-to-special-window* t)
;(setq *display-text-to-special-window* nil)


;  selection-range (w)  -- returns the bounds of the selection
;  set-selection-range (w start end)  -- establishes the selection

(defun select-text-region (start end)
  (ccl::set-selection-range *text-out* start end)
  (ccl::fred-update *text-out*))


(defun clear-special-text-display-window ()
  (ccl::select-all *text-out*)
  (ccl::clear *text-out*))

