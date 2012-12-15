;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "init chart"
;;;   Module:  "analyzers;psp:init:"
;;;  Version:  1.3 June 1994

;; 1.0 (10/5/92 v2.3) tweeked some things to accomodate new tokenizer
;; 1.1 (11/26) still more tweeking to be in sync with Bump-&-store-word
;; 1.2 (12/15) re-enabled the all-edges flags and counters
;; 1.3 (1/21/94) added *number-of-characters-to-subtract*.  6/15 added
;;      *preterminals-on-current-word*

(in-package :sparser)


(defvar *first-significant-position* nil)

(defvar *last-significant-position* nil)

;;;------------------------
;;; initializing the state
;;;------------------------

(defun initialize-chart-state ()
  ;; Called with the per-article initializations.
  ;; The position array has probably been used before, so we
  ;; have to make it look like it's empty.

  (when (null *the-chart*)
    (error "The session has not yet been initialized."))

  (setq *chart-empty* t
        *bracketing-progress* nil
        *position-array-is-wrapped* nil    ;; used by Add-terminal
        *next-array-position-to-fill*   0  ;; used by scan,Add-terminal
        *first-chart-position* 0           ;; used when wrapped
        *first-chart-position-object* (chart-position 0)
        *number-of-next-position* 0        ;; used by Add-terminal
        *next-chart-position-to-scan*   0  ;; used by scan,Sadf
        *first-significant-position* nil
        *last-significant-position* nil
        *preterminals-on-current-word* nil ;; set by Introduce-terminal-edges
        )

  (setq *number-of-characters-to-subtract* 0)
    ;; referenced by Bump-&-store. Incremented by a NL-fsa

  (initialize-edge-resource :initializing-run)

  (initialize-new-flags)
  (initialize-all-edges-state-vars)

  (let ((first-position
         (chart-position *next-array-position-to-fill*)))

    ;;(setq *last-position-marched-back-to* first-position)
    ;; 11/26 wasn't declared, so probably out of date

    ;;  (re-initialize-position-array)  11/26 replacing this with incremental cleanup
    (initialize-position first-position  ;; 0
                         *number-of-next-position*)
    (initialize-position (chart-position-after first-position)  ;; 1
                         (1+ *number-of-next-position*))

    (setq *chart-not-yet-initialized* nil)))

