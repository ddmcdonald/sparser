;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2020 Smart Information Flow Technologies -- all rights reserved
;;;
;;;      File:   "misc-covid"
;;;    Module:   "sl;disease:"
;;;   version:   March 2020

;; initiated 3/30/20 as a place to define things associated with
;; the COVID-19 disease that aren't simply virus names

(in-package :sparser)

;;------------- these are mostly wrong, not thought out enough
;;              parking them here to make it easier to find any
;;              equivalents already in bio
;;;------
;;; the instances
;;;------




(define-pathogen-type "flu")

(define-pathogen-type "bacteria")

;; (define-pathogen-type "disease") ;;not really a kind of pathogen

;;(define-pathogen-type "strain") ;;same as above
