;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "initialize"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defun initialize-da-search ()
  (da/zero-item-accumulators)

