;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2012-2018  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "obsolete-code"
;;;    Module:   "analyzers;forest:"
;;;   Version:   April 2018


;; Initiated  4/20/18
;; Code removed in refactoring of the various parse paths for documents and strings

(in-package :sparser)


;;; from printers

;;---- what print-segment-and-pending-out-of-segment-words used before
;; we decided to take the characters directly from the character buffers
;; so we'd get the right picture of the capitalizatoin.

(defun write-words-between-positions (start-pos end-pos stream)
  (do* ((position start-pos next-position)
        (next-position (chart-position-after position)
                       (chart-position-after position)))
       ((eq position end-pos) :done)
    (print-word-and-ws position stream)))

(defun print-words-between-segments (end-pos &optional (stream *standard-output*))
  (do* ((position (chart-position *where-print-segment-left-off*)
                  next-position)
        (next-position (chart-position-after position)
                       (chart-position-after position)))
       ((eq position end-pos)
        (print-preceding-whitespace end-pos stream))
    (print-word-and-ws position stream)))

(defun print-word-and-ws (position &optional (stream *standard-output*))
  (let ((terminal (pos-terminal position)))
    (print-preceding-whitespace position stream)
    (when terminal ;; could there ever not be?
      (typecase terminal
        (word (format stream "~a" (word-pname terminal)))
        (otherwise
         (push-debug `(,terminal))
         (break "New type of terminal: ~a" (type-of terminal)))))))

(defun print-preceding-whitespace (position stream)
  (let ((preceding-ws (pos-preceding-whitespace position)))
    (when preceding-ws
      (typecase preceding-ws
        (word
         (format stream "~a" (word-pname preceding-ws)))
        (otherwise
         (push-debug `(,preceding-ws))
         (break "New type of preceding-ws: ~a" (type-of preceding-ws)))))))
