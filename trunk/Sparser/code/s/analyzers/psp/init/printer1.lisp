;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printer"
;;;   Module:  "analyzers;psp:init:"
;;;  Version:   1.0  November 1990      v1.5

;; initial version from before 11/90 
;; 1.0 (10/5/92 v2.3) tweeked some things to accomodate new tokenizer

(in-package :sparser)

(defun display-chart-state ( &optional (stream *standard-output*)
                                       (c *the-chart*))
  (declare (ignore c) 
           (special *chart-not-yet-initialized*
                    *chart-empty*
                    *position-array-is-wrapped*
                    *first-chart-position*
                    *next-array-position-to-fill*
                    *number-of-next-position*
                    *next-chart-position-to-scan*))
  (format stream
          "~&~%State of the chart:~
           ~%           *chart-not-yet-initialized* = ~A~
           ~%                         *chart-empty* = ~A~
           ~%           *position-array-is-wrapped* = ~A~
           ~%  first token index still in the array = ~A~
           ~%         *next-array-position-to-fill* = ~A~
           ~%              next token index to fill = ~A~
           ~%         *next-chart-position-to-scan* = ~A~
           ~%"
          *chart-not-yet-initialized*
          *chart-empty*
          *position-array-is-wrapped*
          *first-chart-position*
          *next-array-position-to-fill*
          *number-of-next-position*
          *next-chart-position-to-scan*
          ))

