;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "kinds"
;;;    Module:   "model;core:people:"
;;;   version:   December 2007

;; initiated 12/27/07.

(in-package :sparser)

(define-category  girl
  :instantiates person
  :specializes person
  ;;/// How do we index this sort of thing?
  :realization (:common-noun "girl"))

(define-category  boy
  :instantiates person
  :specializes person
  :realization (:common-noun "boy"))

(define-category  man
  :instantiates person
  :specializes person
  :realization (:common-noun ("man" :plural "men")))

(define-category  woman
  :instantiates person
  :specializes person
  :realization (:common-noun ("woman" :plural "women")))
