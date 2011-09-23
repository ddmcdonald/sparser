;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993,1994,1995,1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "switch"
;;;   Module:  "drivers;chart:"
;;;  Version:   1.0  April 1991

;; initiated 4/11, tweeked 4/12

(in-package :sparser)


(defparameter *saved-toplevel-parsing-protocol* nil
  "A buffer for shallow binding the keyword that names the parsing
   protocol.")


(defun switch-to-embedded-parsing-protocol (keyword)
  ;; called from section-markers.  The throw is caught in
  ;; Lookup-the-kind-of-chart-processing-to-do.
  ;;
  (when *saved-toplevel-parsing-protocol*
    (error "Called to initiate an embedded parsing protocol: ~A~
           ~%but we're already embedded in ~A~%"
           keyword *kind-of-chart-processing-to-do*))

  ;; remember what we were doing
  (setq *saved-toplevel-parsing-protocol*
        *kind-of-chart-processing-to-do*)

  ;; switch over
  (establish-kind-of-chart-processing-to-do keyword)
  (throw 'change-kind-of-chart-processing keyword))



(defun resume-old-parsing-protocol ()
  (unless *saved-toplevel-parsing-protocol*
    (error "Asked to resume the original parsing protocol but ~
            no record of it was kept."))

  (establish-kind-of-chart-processing-to-do
   *saved-toplevel-parsing-protocol*)
  ;(break "resumed")
  (setq *saved-toplevel-parsing-protocol* nil)
  (throw 'change-kind-of-chart-processing
         *saved-toplevel-parsing-protocol*))

