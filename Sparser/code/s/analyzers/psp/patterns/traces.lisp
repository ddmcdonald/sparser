;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.3 February 2013

;; Broken out from driver 2/5/13.

(in-package :sparser)

(defparameter *trace-ns-sequences* nil)

(defun trace-ns-sequences ()
  (setq *trace-ns-sequences* t))

(defun untrace-ns-sequences ()
  (setq *trace-ns-sequences* nil))

(deftrace :ns-considering-sequence-starting-with (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] first word: ~a, second word: ~a"
	       word-before word-after)))

(deftrace :moved-ns-start-pos-in-front-of-pw (pos-before)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is a polyword~
              ~%   moved position-before to ~a" pos-before)))

(deftrace :moved-ns-start-pos-in-front-of-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is an edge~
              ~%   moved position-before to start of ~a" edge)))

(deftrace :ns-second-word-not-in-ns-sequence (word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because ~a doesn't belong in a ns sequence"
	       word-after)))

(deftrace :ns-first-word-is-bracket-punct (word-before position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because first word, ~a, is bracket punctuation"
	       word-before)))

(deftrace :first-or-second-is-bracket-punct (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because one of these is bracket punctuation~
              ~%   ~a ~a" word-before word-after)))

(deftrace :ns-source-exhausted ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS")))

(deftrace :ns-whitespace (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: whitespace before ~a"
	       next-position)))

(deftrace :ns-terminating-punctuation (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: ~a is terminating punctuation"
	       word)))

(deftrace :ns-adding-word (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] adding the word ~a" word)))
  
(deftrace :ns-reached-eos-at (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS at ~a"
	       next-position)))

(deftrace :ns-parsing-between (pos-before next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] parsing between ~a and ~a"
	       pos-before next-position)))

(deftrace :ns-layout (layout)
  (when *trace-ns-sequences*
    (trace-msg "[ns] layout after parsing b/w boundaries is ~a"
	       layout)))

(deftrace :ns-returning-position (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] finished at position ~a" next-position)))

