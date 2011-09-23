;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader 2d part"
;;;   Module:  "model;core:numbers:"
;;;  Version:  December 1995

;; initiated 12/20/95

(in-package :sparser)


;; These make reference to measurements, which themselves make reference
;; to numbers, so we break this part out and have it loaded after
;; numbers and measurements. 

(lload "numbers;fractions")

