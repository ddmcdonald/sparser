;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan"
;;;   Module:  "analyzers;psp:scan:"
;;;  Version:  1.6 January 2014

;; 1.1  (??/92 v2.3) moved the file back to analyzers
;; 1.2  (10/5) added traces, made this level the one responsible for the
;;       first level marking of "assessing"
;; 1.3  (4/9/93) cleaned up error messages
;; 1.4  (1/13/94) added traces hook, 3/17 added 'stop tracing' hook.
;;       5/5 put in sugared call to set position status
;; 1.5  (2/13/95) broke the routine into two parts to accomodate more complex
;;       actions inside Add-terminal-to-chart.
;; 1.6  (1/8/14) Abstracted out the-next-position-to-scan so it can be used
;;       in the adjudicators.

(in-package :sparser)


(defun the-next-position-to-scan ()
  (aref *the-chart* *next-chart-position-to-scan*))

(defun scan-next-position ()
  ;; Called from Scan-and-assess
  ;; Intended to be the only means of advancing through the chart.
  ;; Always working at the chart's right-fringe.
  ;; Does its own calls to Add-terminal to keep the chart always
  ;;  full one position out.

  (let ((position (the-next-position-to-scan))
        (next-index (incf *next-chart-position-to-scan*)))

    (when (null position)
      (break "There should be a position object at array-index ~A ~
              of the chart,~%but there isn't~%"
             (1- *next-chart-position-to-scan*)))

    (when (= next-index *number-of-positions-in-the-chart*)
      (setq next-index (setq *next-chart-position-to-scan* 0)))

    (when (null (pos-terminal position))
      ;; the lack of a word at the position indicates that it
      ;; hasn't been filled yet, which is the usual situation.
      ;; /// prove that it's customary and flush the check.
      (add-terminal-to-chart))

    (rest-of-Scan-next-position position)))



(defun rest-of-Scan-next-position (position)
  ;; The routine is broken into these two parts to accomodate the
  ;; elaborate possibilities of what can happen inside Add-terminal-
  ;; to-chart such as throwing out above the call to Scan-next-position.
  ;; In such cases this routine will be called as part of getting
  ;; back into the mainline.
  
  (declare (special *position-to-start-tracing-at* 
                    *position-to-stop-tracing-at*))

  (set-status :scanned position)

  (when *position-to-start-tracing-at*
    (when (= (pos-token-index position) *position-to-start-tracing-at*)
      (turn-on-traces)))

  (when *position-to-stop-tracing-at*
    (when (= (pos-token-index position) *position-to-stop-tracing-at*)
      (turn-off-traces)))

  (tr :scan (pos-terminal position) position)
  ;; "Scanned ~S at p~A"

  position )

