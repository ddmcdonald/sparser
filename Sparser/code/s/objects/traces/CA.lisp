;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "CA"
;;;   Module:  "objects;traces:"
;;;  Version:  April 1995

;; initiated as just globals in 1991. Tr-traces folded in and elaborated 4/26/95. 

(in-package :sparser)

;; ?? still used ??
;(defparameter *trace-CA-subjects* nil
;  "Used in searches from the VP to a remote subject.")


;;;-------------------------------------------------------------
;;; the hook that determines whether there's something to apply
;;;-------------------------------------------------------------

(defparameter *trace-CA-hook* nil
  "Should just flag the hook, /// tends to do more than that.")

(defun trace-ca-hook ()
  (setq *trace-CA-hook* t))
(defun unTrace-ca-hook ()
  (setq *trace-CA-hook* nil))


(deftrace :checking-for-ca-action (tt)
  ;; called from Do-conceptual-analysis-off-new-treetop
  (when *trace-CA-hook*
    (trace-msg "[CA hook] checking ~A" tt)))

(deftrace :has-ca-action (fn)
  ;; called from Do-conceptual-analysis-off-new-treetop
  (when *trace-CA-hook*
    (trace-msg "[CA hook]     calling ~A" fn)))

(deftrace :has-no-ca-action ()
  ;; called from Do-conceptual-analysis-off-new-treetop
  (when *trace-CA-hook*
    (trace-msg "[CA hook]     no associated action")))



;;;-------------------
;;; search procedures
;;;-------------------

(defparameter *trace-CA-search* nil
  "Read by routines like Search/left/prep that walk through the
   forest and have to be concerned about search bounds.")

(defun trace-ca-search ()
  (setq *trace-CA-search* t))
(defun unTrace-ca-search ()
  (setq *trace-CA-search* nil))


(deftrace :ca/searching-left-for (label start-pos)
  ;; called from Search-left-for
  (when *trace-CA-search*
    (trace-msg "[CA] Searching left from p~A for a ~A"
               (pos-token-index start-pos) label)))

(deftrace :ca/searching-next-item (tt)
  ;; called from Search-left-for
  (when *trace-CA-search*
    (trace-msg "[CA]   looking at ~A" tt)))

(deftrace :ca/search-maxed-out (p bound)
  ;; called from Search-left-for
  (when *trace-CA-search*
    (trace-msg "[CA]   Didn't find it: hit the ~A tt bound at p~A"
               bound (pos-token-index p))))

(deftrace :ca/found-it (tt)
  ;; called from Search-left-for
  (when *trace-CA-search*
    (trace-msg "[CA]   Found it: ~A" tt)))

(deftrace :ca/search-hit-ss ()
  ;; called from Search-left-for
  (when *trace-CA-search*
    (trace-msg "[CA]   Didn't find it: reached the source start")))
