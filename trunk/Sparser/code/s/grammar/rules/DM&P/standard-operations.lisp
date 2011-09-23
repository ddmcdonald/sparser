;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "standard operations"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  July 1994

;; initiated 7/11/94 v2.3

(in-package :sparser)


(define-special-printing-routine-for-category  segment
  :short
    ((let ((start-pos (value-of 'starts-at obj))
           (end-pos (value-of 'ends-at obj))
           (id (indiv-id obj)))
       (format stream "#< \"~A\" ~A>"
               (string-of-words-between start-pos end-pos) id)))
  :full
    ((let ((start-pos (value-of 'starts-at obj))
           (end-pos (value-of 'ends-at obj))
           (id (indiv-id obj)))
       (format stream "#<segment \"~A\" ~A>"
               (string-of-words-between start-pos end-pos) id)))
  :string
    ((let ((start-pos (value-of 'starts-at obj))
           (end-pos (value-of 'ends-at obj)))
       (string-of-words-between start-pos end-pos))))

