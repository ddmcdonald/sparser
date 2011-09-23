;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "subject relatives"
;;;   Module:  "model;rules:syntax:"
;;;  version:  August 2007

;; initiated 6/18/93 v2.3
;; (8/9/07) Well something else can go in this file, but just now this
;; version of the rule for "who" is winning over the richer on just introduced
;; by WH-word-semantics when the interaction is driven by a form rule that's
;; keyed off of the two edges' pronoun label. 
;; 0.1 (1/1/08) Trying to do it using context to determine whether the
;;  function of a specific prounoun is relative or interogative.

(in-package :sparser)

;; who-pronoun

;;;-------------------
;;; Version from 1993
;;;-------------------

#| (8/07) I wanted the rules to work right off the word, e.g. "who" -> "," "who"
   but nothing seemed to happen -- check out whether there was a deep
   assumption that only an edge could combine withe a literal or some such
   at work here.  |#


;(def-cfr WH ("who")
;  :form NP )

;; comma absorbing rule is in who's news hacks, as is the CS rule that
;; converts names to people -- it should move to a load function that
;; executes at the end of the load.


