;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "traces"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  August 2013

;; Broken out from driver 2/5/13. Added more cases 9/11/14

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
  (declare (ignore position))
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

(deftrace :ns-scanned-punctuation (p)
  (when *trace-ns-sequences*
    (trace-msg "[ns] loop: scanned ~s" p)))

(deftrace :ns-terminating-punctuation (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: ~a is terminating punctuation"
	       word)))

(deftrace :ns-scanned-word (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] loop: scanned ~a" word)))

(deftrace :ns-installing-terminal-edges  (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] installing any edges on ~a" word)))

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

(deftrace :hyphen-specialist (left-edge right-edge)
  ;; called from nospace-hyphen-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns hyphen] looking for relationship between e~a and e~a"
               (edge-position-in-resource-array left-edge)
               (edge-position-in-resource-array right-edge))))

(deftrace :scare-quotes-creating-edge-around (word)
  ;; called from scare-quote-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns quotes] looking at single quotes around ~s"
               (word-pname word))))

(deftrace :scare-quotes-wrong-number-of-words (n)
  ;; called from scare-quote-specialist
  (when *trace-ns-sequences*
    (trace-msg "[ns quotes]  A scare quote involves 3 'word'. Got ~a" n)))

(deftrace :made-edge (edge)
  (when *trace-ns-sequences* ;;//// lots more cases probably
    (trace-msg "[ns]   made edge ~a" edge)))

(deftrace :trying-to-resolve-ns-pattern (pattern)
  (when *trace-ns-sequences*
    (trace-msg "[ns] Checking pattern: ~a" pattern)))

(deftrace :no-ns-pattern-matched ()
  (when *trace-ns-sequences* 
    (trace-msg "[ns]   No pattern matched")))

(deftrace :slash-ns-pattern (pos-before pos-after)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] Looking at ns-sequence with a slash between p~a and p~a"
               (pos-token-index pos-before)
               (pos-token-index pos-after))))

(deftrace :resolve-slash-segment (segment-pattern start-pos end-pos)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] Looking at slash segment from p~a to p~a~
              ~%   pattern = ~a~
              ~%   words = ~s"
          (pos-token-index start-pos)
          (pos-token-index end-pos)
          segment-pattern (string-of-words-between start-pos end-pos))))

(deftrace :slash-segment-covered (edge)
  (when *trace-ns-sequences* 
    (trace-msg "[ns]  The segment is already covered by e~a"
               (edge-position-in-resource-array edge))))

(deftrace :slash-recursive-resolution ()
  (when *trace-ns-sequences* 
    (trace-msg "[ns]   The segment has to be analyzed")))

(deftrace :reified-ns-name (referent start-pos end-pos)
  (when *trace-ns-sequences* 
    (trace-msg "[ns] The referent ~a~
              ~%   was created for the ns span ~s~
              ~%   between p~a and p~a"
               referent 
               (string-of-words-between start-pos end-pos)
               (pos-token-index start-pos)
               (pos-token-index end-pos))))
               

