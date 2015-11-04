;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:rule links:"
;;;   Version:   2.0 May 1995

;; 2.0 (9/4/92 v2.3) Changed the names and contents descriptions of the
;;      left/right combinations.
;;     (5/22/95) added Trivial-rule-set

(in-package :sparser)


(defstruct (rule-set
            (:conc-name #:rs-)
            (:print-function print-rule-set-structure))

  backpointer              ;; the object it's part of
  single-term-rewrites     ;; a list of rules
  right-looking-ids                ;; ( label-id . form-id )
  left-looking-ids                 ;; ( label-id . form-id )
  fsa
  phrase-boundary
  completion-actions       ;; a plist of keywords and function names
  plist
  )


(defun print-rule-set-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<rule-set for " stream)
  (format stream "~A" (rs-backpointer obj))
  (write-string ">" stream))



(defun trivial-rule-set (rs)
  (and (null (rs-single-term-rewrites rs))
       (null (rs-right-looking-ids rs))
       (null (rs-left-looking-ids rs))
       (null (rs-fsa rs))
       (null (rs-phrase-boundary rs))
       (null (rs-completion-actions rs))))

