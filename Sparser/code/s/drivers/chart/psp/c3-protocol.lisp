;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  October 2013

;; Initiated 9/18/13 by analogy to inititate-top-edges-protocol.
;; 10/9/13 started putting meat on its bones. 

(in-package :sparser)

(defun initiate-c3-protocol ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  ;; We pull in the start marker and check that we're in the
  ;; right place, then we start the actual scan.
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)))
    (push-debug `(,p0 ,ss))
    ;; They get passed to the equivalent of 
    ;; check-for-[-from-word-after to see whether ss introduces
    ;; a bracket, which it should.
    ;;  But for now ignore sementation in favor of just getting
    ;; the right things set up in the situation
    (check-if-word-starts-segment p0 ss)))

(defun check-if-word-starts-segment (position-before word)
  ;; Leading brackets introduced and pondered here
  ;; Then closing brackets and potentially terminating
  ;; the segment and doing the cleanup and state updating
  ;; that entails.
  (tr :check-if-word-starts-segment position-before word)
  (simple-eos-check word)
  (scan-next-word (chart-position-after position-before)))

(defun scan-next-word (position)
  ;;(break "position = ~a" position)
  ;; analog of the regular scan-next-pos with selected parts of
  ;; continue-scan-next-pos inlined. 
  (unless (pos-terminal position)
    ;; if the tail recursion is correct we don't need this check
    (scan-next-position))
  (let ((word (pos-terminal position)))
    ;;   Ignoring all the usual stuff we jump ahead to
    ;; introduce the edge(s) on the word.
    (introduce-known-edge/s-over-word position word)))


(defun introduce-known-edge/s-over-word (position-before word)
  (unless (word-with-single-edge-rules? word)
    (push-debug `(,position-before ,word))
    (error "C3 only runs on known words. The word ~s at p~a is unknown"
           (word-pname word) (pos-token-index position-before)))
  (let ((position-after (chart-position-after position-before)))
    (install-terminal-edges word position-before position-after)
    (push-debug `(,position-before ,word ,position-after)) ; 
    ;(break "Installed terminal edges over ~a at ~a" word position-before)
    ;; All the good stuff now happens in the referent processing
    (check-if-word-starts-segment position-before word)))


(defun simple-eos-check (word)
  ;; analogous to end-of-source-check but without any checking
  ;; to ensure we've tied up all the bits at the forest level.
  (when (eq word *end-of-source*)
    (terminate-chart-level-process))) ;; does a throw
