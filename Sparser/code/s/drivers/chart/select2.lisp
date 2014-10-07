;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996,2013-2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "select"
;;;   Module:  "drivers;chart:"
;;;  Version:  2.4 October 2014

;; 2.0 (9/12/92) moved up to chart level from psp
;; 2.1 (4/7/93) commented out the wsj-headers option
;; 2.2 (4/23) added :new-toplevel-protocol option
;; 2.3 (9/8) cleaned out the cases that aren't defined any more
;; 2.4 (1/24/95) Added another kind :test-protocol, with call (initiate-test-protocol)
;;     (1/9/96) added :scan-for-closing-markup-tag
;;     (9/16/13) added :c3-protocol.
;;     (8/11/14) added :r3-entity-sweep
;;     (10/6/14) added :successive-sweeps

(in-package :sparser)

;;;------
;;; flag
;;;------

(defparameter *kind-of-chart-processing-to-do*  nil
  "This value is read by the switch inside Chart-based-analysis and
   dictate which substantial routine it dispatches to.")


(defun establish-kind-of-chart-processing-to-do (keyword)
  "Called as part of launch-time configuration"
  (setq *kind-of-chart-processing-to-do* keyword))


;;;--------
;;; driver
;;;--------

(defun chart-based-analysis ()
  ;; called from Analysis-core
  ;; Dispatches to the processing routine designated by the
  ;; current value of the switch.

  (start-timer '*time-at-chart-level*)

  (catch 'terminating-chart-processing
    ;; Thrown to by Terminate-chart-level-process, which is
    ;; called when the source is exhausted.  It is the only way
    ;; out of the chart-drivers.

    (lookup-the-kind-of-chart-processing-to-do))

  (stop-timer '*time-at-chart-level*))



(defun lookup-the-kind-of-chart-processing-to-do ()

  (catch 'change-kind-of-chart-processing
    ;; Thrown to by the routines that recognize embedded sections
    ;; within an article where the default rules for a text body
    ;; don't apply

    (let ((chart-protocol *kind-of-chart-processing-to-do*))
      ;; local kept here so that it can be seen in the stack when
      ;; debugging

      (ecase chart-protocol
        (:new-toplevel-protocol
         (inititate-top-edges-protocol))
        (:all-edges
         (initiate-all-edges-protocol))
        (:c3-protocol
         (initiate-c3-protocol))
        (:just-do-terminals
         (look-at-all-terminals))
        (:successive-sweeps
         (initiate-successive-sweeps))
        (:r3-entity-sweep
         (initiate-R3-entity-pass))
        (:scan-for-closing-markup-tag
         (initiate-scan-for-closing-markup-tag))
        ;(:test-protocol  ;; ?? where's the definition?
        ; (initiate-test-protocol))
        )))

  ;; we won't get here unless the throw is taken, because if we
  ;; stay within a single call to a protocol it will terminate by
  ;; throwing to Terminate-chart-processing
  ;;
  (lookup-the-kind-of-chart-processing-to-do))

