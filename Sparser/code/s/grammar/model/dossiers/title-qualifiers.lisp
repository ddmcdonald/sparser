;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "title qualifiers"
;;;   Module:  "model;dossiers:"
;;;  version:  October 2009

;; initiated 6/16/93 v2.3. Modified to use def-form 1/18/94
;; 10/12/09 Removed "formerly" when shifting the realization to :adjective

(in-package :sparser)


(define-title-qualifier "acting")
(define-title-qualifier "current")
(define-title-qualifier "former")
;;(define-title-qualifier "formerly")
(define-title-qualifier "late")    ;; "the late ..."

;; 7/22
(define-title-qualifier "retired")

