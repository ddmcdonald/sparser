;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "title qualifiers"
;;;   Module:  "model;dossiers:"
;;;  version:  October 2009

;; initiated 6/16/93 v2.3. Modified to use def-form 1/18/94
;; 10/12/09 Removed "formerly" when shifting the realization to :adjective
;; 5/256/13 Introduced 'title-status' for words that predominantly
;;  modify titles. Punting on the others. 

(in-package :sparser)

;; This one overwhelmingly is used just with titles.
;; The others take on a qualifying role when used with
;; titles, but have manny other uses. 
(define-title-status-term "former")


;; "ousted"  "emeritus"  (sequencer title) "the sixth director"
;; "a" vs. "the", (country title)

(define-title-qualifier "acting")
(define-title-qualifier "current")
(define-title-qualifier "late")    ;; "the late ..."
(define-title-qualifier "retired")

