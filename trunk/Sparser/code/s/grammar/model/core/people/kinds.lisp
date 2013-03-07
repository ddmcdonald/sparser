;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "kinds"
;;;    Module:   "model;core:people:"
;;;   version:   March 2013

;; initiated 12/27/07. Relabeled 'person' for parsing 3/6/13.

(in-package :sparser)

(define-category  girl
  :instantiates person
  :specializes person
  :rule-label person
  ;;/// How do we index this sort of thing?
  :realization (:common-noun "girl"))

(define-category  boy
  :instantiates person
  :specializes person
  :rule-label person
  :realization (:common-noun "boy"))

(define-category  man
  :instantiates person
  :specializes person
  :rule-label person
  :realization (:common-noun ("man" :plural "men")))

(define-category  woman
  :instantiates person
  :specializes person
  :rule-label person
  :realization (:common-noun ("woman" :plural "women")))

; people person human -- need to know its underspecified
; male female ???


;;--- Relational terms

; father mother daughter son child aunt uncle niece nephew
;  These need ETF
