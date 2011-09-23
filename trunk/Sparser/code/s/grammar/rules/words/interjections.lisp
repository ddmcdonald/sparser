;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:   "interjections"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   December 1992

;; broken out from "fn words - cases" 12/17/92 v2.3.
;; 1/10/07 Added the brackets. These should probably be folded in with
;; the adverbs.

(in-package :sparser)


(define-function-word "apparently" :brackets '( ].adverb  adverb.[ ))
(define-function-word "obviously" :brackets '( ].adverb  adverb.[ ))
(define-function-word "separately" :brackets '( ].adverb  adverb.[ ))
(define-function-word "still" :brackets '( ].adverb  adverb.[ ))
