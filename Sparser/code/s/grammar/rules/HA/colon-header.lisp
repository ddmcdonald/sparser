;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "colon header"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  August 1995

;; initiated 1/5/95. Turned it off 8/9 'till it gets finished.

(in-package :sparser)

;;;--------------------
;;; detect the pattern
;;;--------------------

#|(define-completion-action (punctuation-named #\:)
                          'header-check
                          'check-for-capitalized-header-before-colon) |#

(defun check-for-capitalized-header-before-colon (colon
                                                  pos-before pos-after)
  (declare (ignore colon))
  (let ((next-pos-back (chart-position-before pos-before))
        next-word-back  accumulating-words )
    (loop
      (setq next-word-back (pos-terminal next-pos-back))
      
      (when (eq next-word-back *source-start*)
        (finish-colon-detected-header
         accumulating-words next-pos-back pos-after)
        (return))

      (cond
       ((capitalized-instance next-pos-back)
        (push next-word-back accumulating-words)
        (when (eq (pos-preceding-whitespace next-pos-back) *newline*)
          (finish-colon-detected-header
           accumulating-words next-pos-back pos-after)
          (return))
        (setq next-pos-back (chart-position-before next-pos-back)))

     #|((eq (pos-capitalization next-pos-back) :multi-token)
        ;; special case for "ISO-9001"
        (if (eq (pos-preceding-whitespace next-pos-back) *newline*)
          (then
            (push next-word-back accumulating-words)
            (finish-colon-detected-header
             accumulating-words next-pos-back pos-after)
            (return))
          (else ;; other purpose
            (return))))|#
       (t
        ;; some other purpose for the colon
        (return))))))

