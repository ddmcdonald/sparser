;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved

;;;     File:  "military-units"
;;;   Module:  model/dossiers/
;;;  version:  November 2012

;; Initiated 2/22/07. Copied over from Answer and added to 11/24/12

(in-package :sparser)

(define-type-of-military-unit "brigade" :abbreviations '("bg"))
(define-type-of-military-unit "battalion" :abbreviations '("bn"))
(define-type-of-military-unit "platoon")
(define-type-of-military-unit "marine expeditionary brigage" :abbreviations '("MEB"))
(define-type-of-military-unit "battalion landing team" :abbreviations '("BLT"))
(define-type-of-military-unit "ground combat element" :abbreviations '("GCE"))

;(define-type-of-military-unit "" :abbreviations '(""))

