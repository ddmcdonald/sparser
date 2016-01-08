;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved

;;;      File: "traces"
;;;    Module: "analyzers;SDM&P:
;;;   Version: January 2013

;; Broken out from scan 1/23/12. 

(in-package :sparser)

(defparameter *trace-sdm&p* nil)

(defun trace-sdm&p ()
  (setq *trace-sdm&p* t))

(defun untrace-sdm&p ()
  (setq *trace-sdm&p* nil))

(deftrace :calling-sdm/analyze-segment (coverage)
  (when *trace-sdm&p*
    (trace-msg "[SDM] top -- coverage = ~a~
              ~%[SDM]   over \"~a\"" 
               coverage
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*))))


(deftrace :sdm-no-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] no edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))

(deftrace :sdm-discontinuous-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] discontinuous edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))
(deftrace :sdm-some-adjacent-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] some adjacent edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))

(deftrace :sdm-all-contiguous-edges ()
  (when *trace-sdm&p*
    (trace-msg "[SDM] contiguous edges over p~a to p~a - \"~a\""
      (when *left-segment-boundary*
	(pos-token-index *left-segment-boundary*))
      (when *right-segment-boundary*
	(pos-token-index *right-segment-boundary*))
      (when (and *left-segment-boundary* *right-segment-boundary*)
	(string-of-words-between *left-segment-boundary* 
				 *right-segment-boundary*)))))
(deftrace :sdm-all-contiguous-edges/running-parser ()
  (when *trace-sdm&p*
    (trace-msg "[SDM]    Runing parser over the edges")))
(deftrace :sdm-all-contiguous-edges/new-coverage (coverage)
  (when *trace-sdm&p*
    (trace-msg "[SDM]    The new coverage is ~a" coverage)))

(deftrace :sdm-span-segment (edge)
  (when *trace-sdm&p*
    (trace-msg "[SDM] made an edge over segment: ~a" edge)))
