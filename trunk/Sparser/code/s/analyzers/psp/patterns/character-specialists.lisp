;; ;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "character-specialists"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  September 2014

;; Initiated 9/9/14 to hold specialists dispatched from the no-space
;; scan 

(in-package :sparser)


(defun nospace-hyphen-specialist (hyphen-position/s pos-before next-position)
  (push-debug `(,hyphen-position/s ,pos-before ,next-position))
  (break "hyphen stub"))

(defun nospace-slash-specialist (slash-position/s pos-before next-position)
  (push-debug `(,slash-position/s ,pos-before ,next-position))
  (break "slash stub"))