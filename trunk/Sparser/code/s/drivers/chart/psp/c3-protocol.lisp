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
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)))
    (scan-segment p1)))


(defun scan-segment (start-pos)
  ;; Compare scan-next-segment in the regular protocol.
  ;; This is the fixed point where resume between segments.

  ;; first delimit the segment
  (let ((last-position (read-through-segment-to-end start-pos))
        (position start-pos))
    ;; Then walk through it left-to-right extending
    ;; the situation. Assume that the final word is the head.
    (break "last-position = ~a" last-position)
    (loop 
      (introduce-next-word position (eq position last-position))
      (setq position (chart-position-after position))
      (when (eq position last-position)
        (return)))
    ;; pts-style inside-the-segment parsing goes here
    (break "where are we?")))


(defun introduce-next-word (position-before head?)
  (declare (special *this-is-the-head*))
  (let ((word (pos-terminal position-before)))
    (unless (word-with-single-edge-rules? word)
      (push-debug `(,position-before ,word))
      (error "C3 only runs on known words. The word ~s at p~a is unknown"
             (word-pname word) (pos-token-index position-before)))
    (setq *this-is-the-head* head?)
    (let ((position-after (chart-position-after position-before)))
      ;; All the good stuff now happens in the referent processing
      (install-terminal-edges word position-before position-after))))



(defun read-through-segment-to-end (start-pos)
  (let ((start-bracket (bracket-that-starts-the-segment start-pos)))
    (interpret-open-bracket-as-segment-start start-bracket start-pos)
    (let ((position-before start-pos)
          word-after )
      (loop
        (unless (pos-terminal position-before)
          (scan-next-position))
        (break "position before = ~a" position-before)
        (setq word-after (pos-terminal position-before))

        (when (eq word-after *end-of-source*)
          (if *left-segment-boundary*
            ;; there's more processing to do
            (break "returning the correct position on eos?"
            (return-from read-through-segment-to-end
              (chart-position-before position-before))
            ;; else we're done
            (terminate-chart-level-process)))) ;; does a throw

        (introduce-leading-brackets word-after position-before) ;; brackets to the left
        ;; cribed from check-for-]-from-word-after
        (let ((] (]-on-position-because-of-word? position-before word-after)))
          (set-status :]-from-word-after-checked position-before)
          (if ]
            (if (bracket-ends-the-segment? ] position-before)
              (then
               (break "segment ended on brackets of ~a" word-after)
               ;; bracket-check set the right-boundary global
               (return position-before))
              (else ;; loop around
               (setq position-before 
                     (chart-position-after position-before))))))))))
 

;;;----------
;;;  gofers
;;;----------

(defun bracket-that-starts-the-segment (start-pos)
  ;; Should look at the position and think about it
  ;; so that the algebra works out.
  ;;/// once we're going the lead word may have included start brackets
  (declare (ignore start-pos))
  phrase.[ )

