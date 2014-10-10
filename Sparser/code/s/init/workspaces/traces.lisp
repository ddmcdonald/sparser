;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "traces"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/9/14 as a place to collect the names of functions
;; the different sorts of traces there are and say a little about
;; when they are useful. 

(in-package :sparser)

;; a lowlevel scan of what the control code is doing
;  (trace-network)
;; Even lower level -- tracks each function call
;  (trace-network-flow)

;; Tracks the insertion of brackets and the decisions
;; to start or end segments in detail
;  (trace-brackets)
;; Summary information on segment creation
;  (trace-segments)

;; what the no-spaces-between words routine is doing
;  (trace-ns-sequences)


;; Notice what words Comlex is adding
;  (trace-lexicon-unpacking)
;; Notice words intoduced because of their morphology
;  (trace-morphology)

#|  These flags have to be set by hand
(setq *readout-segments* t)
(setq *trace-edge-creation* t)
(setq *trace-paired-punctuation* t)
(setq *trace-completion-hook* t)     |#

