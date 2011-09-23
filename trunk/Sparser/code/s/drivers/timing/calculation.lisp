;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:sparser -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "calculation"
;;;   Module:  "drivers;timing:"
;;;  Version:   February 1991

;; initiated 2/91

(in-package :sparser)



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

