;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2013-2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "biology-workspace"
;;;   Module: "init;workspaces:"
;;;  Version: April 2016

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them.
;; 6/5/2015 added methods to control whether breaks and errors halt processing of articles
;; (defparameter *break-during-read* nil), break-in-articles,  dont-break-in-articles
;; 6/20/2015 added control prameter *load-ras2* that can be used to turn off the loading of
;; the large model while doing tests...
;; 7/11/2015 New method TJ to test a single article and add to a file
;;  current "~/r3/code/evaluation/no-cards.lisp" but should be made more parameterizable
;; all the sentences that mention RAS2 proteins. This is particularly useful to figure out why we are not generating cards for some articles
;; Put in error handler around the card production code -- this should prevent errors in card production from killing an entire article
;; pt-card can produce NIL cards (when there is no substrate or agent).
;; Don't push them onto the list of cards to be printed in create-cards-for-article...
;; 10/8/15 Pulled out all the examples to file of that name in biology
;; 4/10/16 Pulled out R3 specifics (i.e., everything).

(in-package :sparser)

(defun setup-bio ()
  "Vestigial. Retained for backwards compatibility only."
  (pushnew :biology-loaded *features*))
