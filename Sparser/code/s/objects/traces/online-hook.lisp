;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "online hook"
;;;   Module:  "objects;traces:"
;;;  Version:  December 2016

;; initiated 1/13/94 v2.3. Added stopping datum 3/17/94

(in-package :sparser)


;;;------------------------
;;; flags, state variables
;;;------------------------

(defparameter *position-to-start-tracing-at* nil
  "Flag read by rest-of-Scan-next-position and set by Set-traces-hook")

(defparameter *position-to-stop-tracing-at* nil
  "Flag read by rest-of-Scan-next-position and set by Set-traces-hook")



(defparameter *traces-to-turn-on* nil
  "List symbols that act as trace flags. When the position where
   tracing is to start is reached these traces are turned on.")

(defparameter *traces-on* nil
  "A list of the traces that are actually active at a given moment.")

#| n.b. there are both of these trace lists as just a hook for a
   eventual more elaborate treatement where specific traces are turned
   on/off at specific locations. |#


;;;------------------------
;;; initialization routine
;;;------------------------

(defun set-traces-hook (start-pos end-pos &optional trace-flags)
  (setq *position-to-start-tracing-at* start-pos
        *position-to-stop-tracing-at* end-pos)
  (when trace-flags
    (setq *traces-to-turn-on* trace-flags))
  (length *traces-to-turn-on*))


(defun turn-off-traces-hook ()
  ;; disarms the hook by zeroing the flags that are read in
  ;; Scan-next-position
  (setq *position-to-start-tracing-at* nil
        *position-to-stop-tracing-at* nil ))


;;;-------------------
;;; per-run init form
;;;-------------------

(define-per-run-init-form
  '(when *traces-on* (turn-off-traces)))


;;;-------------------
;;; driving functions
;;;-------------------

(defun turn-on-traces ()
  ;; called from Scan-next-position
  (dolist (symbol *traces-to-turn-on* (length *traces-to-turn-on*))
    (push symbol *traces-on*)
    (set symbol t)))

(defun turn-off-traces ()
  ;; called from Scan-next-position, or from the per-run init routines
  (dolist (symbol *traces-on*)
    (set symbol nil))
  (prog1 (length *traces-on*)
         (setq *traces-on* nil)))


;;;------------------------------------------------------
;;; analogous operation over paragraph document elements
;;;------------------------------------------------------

(defparameter *paragraph-to-trace* nil
  "Set-paragraph-trace-hook sets this to the toc-string of
   the paragraph we're to trace.")

;; e.g. (set-paragraph-trace-hook "indented-pmc2171479.3.a.p3" '(*trace-fsas*))
(defun set-paragraph-trace-hook (toc-id trace-flags)
  (declare (special *trace-to-to-turn-on*))
  (setq *paragraph-to-trace* toc-id)
  (setq *trace-to-to-turn-on* trace-flags)
  (length trace-flags))

(defun paragraph-trace-hook (p)
  (when *paragraph-to-trace*
    (if (string-equal *paragraph-to-trace*
                      (toc-index p))
      (turn-on-traces)
      (turn-off-traces))))
