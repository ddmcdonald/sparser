;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "location kinds"
;;;   Module:  "model;dossiers:"
;;;  version:  December 2011

;; initiated 1/17/94 v2.3
;; Started populating it 6/18/08. 7/18/11 Made over as regions,
;; added a bunch. 9/13/11 adding border types. More 12/19/11.

(in-package :sparser)

(define-region-type "city")
(define-region-type "country")
(define-region-type "exit")
(define-region-type "forest")
(define-region-type "gulley")
(define-region-type "lake")
(define-region-type "ledge")
(define-region-type "province")
(define-region-type "parish")
(define-region-type "pond")
(define-region-type "town")
(define-region-type "village")
(define-region-type "ward")

(define-border-type "border")
(define-border-type "boundary")
(define-border-type "coast")
(define-border-type "edge")


