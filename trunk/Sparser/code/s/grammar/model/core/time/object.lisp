;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:time:"
;;;  version:  July 1993

;; initiated 7/8/93 v2.3

(in-package :sparser)


;; This just provides a root in the hierarchy for the diverse kinds of
;; time-stuff and their categories of realization.  It isn't intended
;; to ever be instantiated directly, just inherited from

(define-category  time
  :instantiates nil
  :specializes nil )

