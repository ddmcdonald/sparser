;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "display"
;;;   Module:  "init;versions:v2.3:workspace:"
;;;  version:  August 2014

;; Initiated 10/28/13 to put pointers to all the parameters 
;; that govern display in a single place for easy reference.
;; Added quiet and instance of undisplay-bracketing 1/27/14.
;; 8/10/14 moved in stranded *tts-after-each-section*. 

(in-package :sparser)

(defparameter *tts-after-each-section* nil
  "Gates displaying the chart after each section.
   Referenced in begin-new-paragraph")

(display-bracketing)
;; turns off *display-word-stream*
;; turns on *readout-segments-inline-with-text* and *record-bracketing-progress*

;; (undisplay-bracketing) goes back to *display-word-stream*

(defun quiet ()
  (undisplay-bracketing)
  (setq *display-word-stream* nil))

; (trace-lexicon-unpacking)
;; Spews each new word as it's added

;; Announces what file is being run
(setq *verbose-document-stream* t)

