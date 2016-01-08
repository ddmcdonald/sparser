;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sentence"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  June 1996

;; initiated 6/18/96

(in-package :sparser)


;; Define the 'word' that will be used to reference the sentence section marker
;; as an object in the chart.  (N.b. we need to do this -before- we define the
;; section marker itself, since the routine that def form uses to create the word
;; expects that the words it gets will be real ones (e.g. the "title" in "<title>")
;; and not these funny ones that have null print names because they are introduced
;; by NL routines and such rather than by explicit tags.

(defparameter *sentence-boundary*
  (define-section-marking-word "sentence-boundary"))

  ;; n.b. defining the section-marker-word also give it ].text-segment.[ brackets



;; Create the section-marker object. For the moment anyway it doesn't have
;; any actions. If we wanted to have the sentences of a text as the minimal
;; section that's noticed, then we'd at least include a :terminates-previous
;; case.

(defparameter *sentence-boundary-section-marker*
  (define-section-marker "sentence-boundary"))

