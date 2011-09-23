;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "angle brackets"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  1.2 June 1994

;; initiated 7/11 (v1.8.6), tweeked 7/15
;; 1.1 (10/19 v2.0)  Added real content to the 'analyze-the-interior'
;;     facilities.
;;     (4/24 v2.2) tweeked a trace msg.
;; 1.2 (5/7/94 v2.3) added a forest-level scan. 6/8 added trap for unclassified
;;      cases

(in-package :sparser)


(def-category  angle-brackets :lattice-position :non-terminal)

(set-traversal-action  word::open-angle-bracket  'mark-open-angle-bracket)
(set-traversal-action  word::close-angle-bracket 'span-angle-brackets)
;(set-traversal-action  word::<  'mark-open-angle-bracket)
;(set-traversal-action  word::> 'span-angle-brackets)



(defun mark-open-angle-bracket (start-pos end-pos)
  (declare (ignore end-pos))
  ;(format t "~&marking open < at position ~A~%"
  ;        (pos-token-index start-pos))
  (setq *pending-open-angle-bracket* start-pos))



(defun span-angle-brackets (pos-before-close pos-after-close)
  (let ((pos-before-open *pending-open-angle-bracket*))
    ;(format t "~&Calling Span <> at p~A back to p~A~%"
    ;        (pos-token-index *pending-open-angle-bracket*)
    ;        (pos-token-index pos-before-close))
    (unless pos-before-open
      ;(if *debug-known-non-fatal-errors*
      (break/debug "Can't find matching open angle bracket"))
      ;(return-from Span-angle-brackets nil)))

    (let* ((pos-after-open (chart-position-after pos-before-open))
           (layout (analyze-segment-layout pos-after-open
                                           pos-before-close)))
      (when *trace-paired-punctuation*
        (format t "~&Looking at interior of angle brackets between ~
                   p~a and p~a~%  the segment is ~A~%"
                (pos-token-index pos-after-open)
                (pos-token-index pos-before-close) layout))

      (evaluate-angle-bracket-interior
       layout pos-before-close pos-after-close
       pos-before-open pos-after-open))))


(defun evaluate-angle-bracket-interior (layout
                                        pos-before-close pos-after-close
                                        pos-before-open pos-after-open)
  (case layout 
    (:single-span
     (dispatch-on-single-span-interior/angle-brackets
      pos-before-open pos-after-open
      pos-before-close pos-after-close))

    (:contiguous-edges
     (let ((revised-layout
            (parse-between-boundaries pos-after-open pos-before-close)))
       (if (eq revised-layout :contiguous-edges)
         (then
           (trap-unclassified-phenomena-inside-<>
            pos-after-open pos-before-close)
           (make-edge-over-long-span
            pos-before-open
            pos-after-close
            category::angle-brackets
            :rule  :traversal/angle-brackets))
         (evaluate-angle-bracket-interior
          revised-layout pos-before-close pos-after-close
          pos-before-open pos-after-open))))

    ((or :null-span
         :no-edges
         :has-unknown-words)
     (trap-unclassified-phenomena-inside-<> pos-after-open)
     (let ((edge (make-edge-over-long-span
                  pos-before-open
                  pos-after-close
                  category::angle-brackets
                  :rule  :traversal/angle-brackets)))
       edge))

    (otherwise
     (break "Layout has unanticipated value: ~A" layout))))


;;;--------
;;; a trap
;;;--------

(defparameter *check-out-unclassified-<>-interiors* nil
  "This gets set temporarily when one is looking at the phenomena
   that the bracketing is picking up.")

(defun trap-unclassified-phenomena-inside-<> (pos-after-open
                                              &optional pos-before-close)
  ;; The interior is either :null-span :no-edges or :has-unknown-words.
  ;; We list some interesting cases here.
  (when *check-out-unclassified-<>-interiors*
    ;; usually set from a workspace file
    (let ((spanning-edge (when pos-before-close
                           (edge-spanning pos-after-open
                                          pos-before-close)))
          initial-edge )

      (if spanning-edge
        (if (eq (edge-category spanning-edge)
                category::segment)
          ;; it's trivial, so it's an 'unclassified' case
          (when (eq (pos-terminal pos-after-open)
                    word::forward-slash)
            (format t
                    "~&~%Possible tag?  ~A"
                    (pos-terminal (chart-position-after pos-after-open))))
          (else
            nil ))
        (else
          (if (eq (pos-terminal pos-after-open)
                  word::forward-slash)
            (unless (and (setq initial-edge
                               (edge-starting-at pos-after-open))
                         (not (eq (edge-category initial-edge)
                                  category::segment)))
              (format t
                      "~&~%Possible tag?  ~A"
                      (pos-terminal (chart-position-after pos-after-open))))
            nil ))))))
