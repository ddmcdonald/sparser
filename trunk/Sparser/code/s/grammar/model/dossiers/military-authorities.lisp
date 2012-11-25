;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved

;;;     File:  "authorities"
;;;   Module:  model/dossiers/
;;;  version:  November 2012

;; Initiated 2/2/07. Initially populated 2/22C. opied over from Answer 11/24/12


(in-package :sparser)

;;--- commands

(define-command "USCENTCOM")
(define-command "USPACOM")
(define-command "USSTRATCOM")
(define-command "USEUCOM")
(define-command "USJFCOM")
(define-command "USSOCOM")
(define-command "USTRANSCOM")
(define-command "cdruscentcom")

(define-command "opcon") ;; ????
;(define-command "")


;;--- agencies

(define-agency "DLA")
(define-agency "NGA")
(define-agency "DTRA")
(define-agency "NSA")
;(define-agency "")
;(define-agency "")


;;--- services

(define-service "USCG")


;;--- authorities proper (??)

(define-authority "CJCS") ;; Chairman Joint Chiefs of Staff
(define-authority "SECDEF")


