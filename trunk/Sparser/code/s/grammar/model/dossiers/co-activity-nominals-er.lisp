;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "co activity nominals-er"
;;;   Module:  "model;dossiers:"
;;;  version:  January 1994

;; initiated 1/20/94 v2.3

(in-package :sparser)

(define-co-activity-nominal/er "contractor")
(define-co-activity-nominal/er "developer")
(define-co-activity-nominal/er "insurer")
(define-co-activity-nominal/er "manufacturer" :abbrev '("mfg"))
(define-co-activity-nominal/er "maker")
(define-co-activity-nominal/er "marketer")
(define-co-activity-nominal/er "operator")
(define-co-activity-nominal/er "provider")
(define-co-activity-nominal/er "specialist")

;; 10/13
(define-co-activity-nominal/er "broker")

