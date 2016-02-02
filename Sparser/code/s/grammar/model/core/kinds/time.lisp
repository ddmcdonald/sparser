;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "time"
;;;    Module:  grammar/model/core/kinds/
;;;   version:  February 2016

;; Initiated 2/1/16 to collect the basic parts of the time model
;; so they can be referenced by later modules without worry about
;; the order in which they're loaded.

(in-package :sparser)

;; This just provides a root in the hierarchy for the diverse kinds of
;; time-stuff and their categories of realization.  It isn't intended
;; to ever be instantiated directly, just inherited from

(define-category  time
  :instantiates nil
  :specializes abstract-region)
