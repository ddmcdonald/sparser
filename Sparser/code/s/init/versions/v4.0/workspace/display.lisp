;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "display"
;;;   Module:  "init;versions:v2.3:workspace:"
;;;  version:  October 2013

;; Initiated 10/28/13 to put pointers to all the parameters 
;; that govern display in a single place for easy reference.

(in-package :sparser)


;; Referenced in begin-new-paragraph
;;   *tts-after-each-section*

(display-bracketing)
;; turns off *display-word-stream*
;; turns on *readout-segments-inline-with-text* and *record-bracketing-progress*

; (trace-lexicon-unpacking)
;; Spews each new word as it's added

;; Announces what file is being run
(setq *verbose-document-stream* t)