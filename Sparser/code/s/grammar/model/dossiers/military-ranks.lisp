;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved

;;;     File:  "ranks"
;;;   Module:  model/dossiers/
;;;  version:  November 2012

;; Initiated 3/8/07. Copied over from Answer and added to 11/24/12

(in-package :sparser)

(define-military-rank "Brigadier") ;; :abbreviations '(""))
(define-military-rank "Captain" :abbreviations '("Cpt"))
(define-military-rank "General" :abbreviations '("Gen"))
(define-military-rank "Colonel" :abbreviations '("Col"))
(define-military-rank "Commander" :abbreviations '("Cdr"))
(define-military-rank "Leutenant" :abbreviations '("Lt"))
(define-military-rank "Major" :abbreviations '("Maj"))


