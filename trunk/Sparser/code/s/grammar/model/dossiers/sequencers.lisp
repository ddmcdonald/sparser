;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sequencers"
;;;   Module:  "model;dossiers:"
;;;  Version:  May 1994

;; initiated 5/27/94 v2.3

(in-package :sparser)

(define-sequencer/determiner "last")

(define-sequencer/determiner "next")
(define-sequencer/determiner "subsequent")

(define-sequencer/preposition "after")
(define-sequencer/preposition "before")


;; 11/15
(define-sequencer/preposition "during")

