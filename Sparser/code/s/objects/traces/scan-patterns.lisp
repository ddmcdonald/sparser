;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996,2015  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "scan patterns"
;;;   Module:  "objects;traces:"
;;;  Version:  July 2015

;; initiated 10/6/95. Added/modified 7/11/96 through 7/12.
;; 3/5/07 Added cases to go with simpler treatment of no-space sequences.
;; 4/19/15 added trace to record there being white space before the ps
;; Gradually adding more through 7/18/15. Lifted out the no-space cases
;; to analyzers/psp/patterns/traces.lisp 7/21/15.

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

(deftrace :space-before (p)
  ;; called from pattern-sweep
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] there is whitespace before p~A"
               (pos-token-index p))))

(deftrace :successful-ns-pattern-reached (p)
  ;; called from pattern-sweep
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] specific ns pattern reached p~a"
               (pos-token-index p))))

(deftrace :no-specific-pattern-trying-uniform (p)
  ;; called from pattern-sweep
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] no specific ns pattern, trying ~
                uniform-pattern at p~a"
               (pos-token-index p))))

(deftrace :successful-uniform-ns-reached (p)
  ;; called from pattern-sweep
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] uniform-scan went to p~a"
               (pos-token-index p))))

(deftrace :uniform-ns-pattern-failed ()
  ;; called from pattern-sweep
  (when (or *trace-scan-patterns* *trace-network-flow*)
    (trace-msg "[scan] no uniform pattern succeeded")))




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

#+ignore(deftrace :no-whitespace-at-pos-pattern-search-scanned (next-word)
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] no whitespace in front of \"~A\""
               (word-pname next-word))))
(deftrace :no-whitespace-at-pos-pattern-search-scanned (next-pos)
  (when (or *trace-scan-patterns*)
    (trace-msg "[scan] no whitespace in front of p~a"
               (pos-token-index next-pos))))

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




