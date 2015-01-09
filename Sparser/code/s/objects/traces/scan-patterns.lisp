;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: scan-patterns.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;; 
;;;     File:  "scan patterns"
;;;   Module:  "objects;traces:"
;;;  Version:  March 2007

;; initiated 10/6/95. Added/modified 7/11/96 through 7/12.
;; 3/5/07 Added cases to go with simpler treatment of no-space sequences.

(in-package :sparser)


(defun trace-scan-patterns ()
  (setq *trace-scan-patterns* t))

(defun unTrace-scan-patterns ()
  (setq *trace-scan-patterns* nil))


(deftrace :no-space-at (p)
  ;; called from Check-for/initiate-scan-patterns
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] no whitespace at p~A. Initiating scan-pattern check."
               (pos-token-index p))))




(deftrace :checking-starting-pair (position prior-word word)
  ;; called from Scan-pattern-starting-pair
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[1st ns] At p~A, checking \"~A\" and \"~A\""
               (pos-token-index position) (word-pname prior-word) (word-pname word))))

(deftrace :word-starts-patterns (word first-state/s)
  ;; called from Scan-pattern-starting-pair
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[1st ns] \"~A\" starts ~A" (word-pname word) first-state/s)))

(deftrace :scan-pattern-prefix-found (next-state/s prior-word word)
  ;; called from Scan-pattern-starting-pair
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[1st ns] \"~A\" and \"~A\" are a prefix for:~
              ~%         ~A" 
               (word-pname prior-word) (word-pname word) next-state/s)))

(deftrace :no-scan-pattern-initiated (prior-word word)
  ;; called from Scan-pattern-starting-pair
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[1st ns] \"~A\" and \"~A\" do not start a scan pattern"
               (word-pname prior-word) (word-pname word))))

(deftrace :no-pattern-initiated/source-start ()
  ;; called from Scan-pattern-starting-pair
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[1st ns] No pattern. Prior word is the source-start.")))





(deftrace :scan-pattern-search-initiated (position state-set)
  ;; called from Initiate-scan-pattern-driver
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] Starting the full pattern search at p~A~
              ~%   with ~A" (pos-token-index position) state-set)))

(deftrace :scan-pattern-search-reached-accept-state/s (sp/s)
  ;; called from Initiate-scan-pattern-driver
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] Reached accept state/s ~A~
              ~%   at p~A" sp/s 
               (pos-token-index *position-reached-by-scan-pattern*))))




(deftrace :pattern-search-scanned-pos (p)
  ;; called from Try-to-extend-scan-pattern
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] scanned p~A" (pos-token-index p))))

(deftrace :no-whitespace-at-pos-pattern-search-scanned (next-word)
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] no whitespace in front of \"~A\""
               (word-pname next-word))))

(deftrace :pattern-search-terminated-by-non-extension ()
  ;; called from Terminate-scan-pattern-search
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] no extensions from the current state(s)")))

(deftrace :pattern-search-terminated-by-whitespace (p)
  ;; called from Terminate-scan-pattern-search
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] search terminated by whitespace at p~A"
               (pos-token-index p))))




(deftrace :checking-for-scan-pattern-extension (word state/s)
  ;; called from Continuation-from-state/s?
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] checking whether \"~A\" extends~
              ~%       ~A" (word-pname word) state/s)))

(deftrace :scan-pattern-extension-succeeded (word state/s)
  ;; called from Continuation-from-state/s?
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] \"~A\" extends the pattern.~
              ~%   Next state(s):  ~A" (word-pname word) state/s)))
  
(deftrace :scan-pattern-extension-failed (word)
  ;; called from Continuation-from-state/s?
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] no extensions from \"~A\"" (word-pname word))))





(deftrace :checking-for-scan-pattern-transition (state word)
  ;; called from Pattern-transition?
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] checking \"~A\" as a transition out of ~A"
               (word-pname word) (label-symbol state))))

(deftrace :pattern-transition-found (state/s)
  ;; called from Pattern-transition?
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns]     found ~A" state/s)))

(deftrace :no-pattern-transition ()
  ;; called from Pattern-transition?
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns]     there isn't any")))


;;;--------------------------------------
;;; simpler scheme not based on patterns
;;;--------------------------------------

(deftrace :no-space-sequence-started-at (p)
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] simple-scheme started at p~a"
	       (pos-token-index p))))

(deftrace :no-space-sequence-made-word (word)
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] made word ~a" word)))

(deftrace :no-space-made-edge (edge)
  (when (or *trace-scan-patterns*)
    (trace-msg "[ns] made edge ~a" edge)))

(deftrace :looking-at-ns-segment (start-pos end-pos)
  (when *trace-scan-patterns*
    (trace-msg "[ns] Looking at the segment ~s"
               (string-of-words-between start-pos end-pos))))

(deftrace :segment-ns-pattern (pattern)
  (when *trace-scan-patterns*
    (trace-msg "[ns] The pattern is ~a" pattern)))

(deftrace :ns-segment-layout (layout)
  (when *trace-scan-patterns*
    (trace-msg "[ns] After parsing the layout is ~a" layout)))

(deftrace :ns-looking-at-slash-patterns ()
  (when *trace-scan-patterns*
    (trace-msg "[ns] Looking for a matching slash pattern")))

(deftrace :ns-looking-at-hypen-patterns ()
  (when *trace-scan-patterns*
    (trace-msg "[ns] Looking for a matching hyphen pattern")))

(deftrace :ns-taking-default ()
  (when *trace-scan-patterns*
    (trace-msg "[ns] Looking at default patterns")))

(deftrace :resolve-hyphen-between-two-words (words)
  (when *trace-scan-patterns*
    (trace-msg "[ns] Resolving hyphen between two words: ~s" words)))

(deftrace :two-word-hyphen-edge (edge)
  (when *trace-scan-patterns*
    (trace-msg "[ns]   resolved to e~a"
               (edge-position-in-resource-array edge))))

(deftrace :defaulting-two-word-hyphen ()
  (when *trace-scan-patterns*
    (trace-msg "[ns]   Using the default")))

(deftrace :two-hyphen-default-edge (edge)
  (when *trace-scan-patterns*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))

(deftrace :resolve-hyphens-between-three-words (words)
  (when *trace-scan-patterns*
    (trace-msg "[ns] Resolving hyphen between three words: ~s" words)))

(deftrace :three-hyphen-default-edge (edge)
  (when *trace-scan-patterns*
    (trace-msg "[ns]   Defaulted to e~a"
               (edge-position-in-resource-array edge))))



