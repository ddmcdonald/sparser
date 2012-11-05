;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Grok"
;;;   Module:  "init;workspaces:"
;;;  version:  November 2012

;; Initiated 10/30/12 to take over from the Fire workspace. Tweeked through
;; 11/2

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

(setq *annotate-realizations* nil) ;; Will be t, but not ready yet

;;-- Default display setup. Interleave the segment markers with
;; the running text. 
(setq *display-word-stream* nil)
(setq *readout-segments-inline-with-text* t)

;;-- For Comlex shakeout
(trace-lexicon-unpacking)
;; (just-bracketing-setting)
;; (trace-brackets) (trace-segment-completion) (trace-segments)
;; (untrace-brackets) (untrace-segment-completion) (untrace-segments)

;; (p "Boeing Co. said the U.S. government has suspended the sale")
;; (f "/Users/ddm/Sparser/Sparser/code/s/drivers/timing/Bankruptcy/Eastern/just-body.lisp")






;;--- Traces
;; (trace-fsas)
;; (trace-jfp-sections)

;; ;; objects/traces/psp1
;; (trace-network) ;; for low-level scan
;; (trace-network-flow) ;; lower, e.g. bracket introduction and changes
;; (trace-brackets)

;; (trace-pnf)
;; (trace-segments)
;; (trace-treetops)
;; (trace-sdm&p)
;; (trace-ns-sequences)
;; (trace-edges) ;; = *parse-edges* + (trace-edge-creation) + (trace-edge-check)
;; (trace-treetops)
;; (trace-scan-patterns)

;; (trace-conjunction)
;; (trace-parentheses)

;; (trace-psi)
;; (trace-psi-construction)
;; (trace-referent-creation)
;; (trace-bind-open-var)



;; (no-Sparser-traces)
(defun no-Sparser-traces ()
  (untrace-fsas)
  (untrace-pnf)
  ;(untrace-jfp-sections)
  (untrace-network)
  (untrace-network-flow)
  (untrace-brackets)
  (untrace-segments)
  (untrace-treetops)
  (untrace-edges)
  (untrace-edge-multiplication)
  (untrace-treetops)
  (untrace-scan-patterns)
  (untrace-sdm&p)
  (untrace-ns-sequences)
  (untrace-conjunction)
  (untrace-parentheses)
  (untrace-psi)
  (untrace-psi-construction)
  (untrace-referent-creation)
  (untrace-bind-open-var)
  (setq *readout-segments* nil)
  (setq *trace-edge-creation* nil)
  (setq *trace-paired-punctuation* nil)
  (setq *trace-completion-hook* nil))
