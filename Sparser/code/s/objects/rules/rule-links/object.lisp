;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2016 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:rule links:"
;;;   Version:   September 2016

;; 2.0 (9/4/92 v2.3) Changed the names and contents descriptions of the
;;      left/right combinations.
;;     (5/22/95) added Trivial-rule-set
;; (1/13/16) added rule-set-with-rules

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (rule-set
            (:conc-name #:rs-)
            (:print-function print-rule-set-structure))

  backpointer              ;; the object it's part of
  single-term-rewrites     ;; a list of rules
  right-looking-ids        ;; ( label-id . form-id )
  left-looking-ids         ;; ( label-id . form-id )
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


;;;---------------------------
;;; predicates over rule sets
;;;---------------------------

(defun trivial-rule-set (rs)
  (and (null (rs-single-term-rewrites rs))
       (null (rs-right-looking-ids rs))
       (null (rs-left-looking-ids rs))
       (null (rs-fsa rs))
       (null (rs-phrase-boundary rs))
       (null (rs-completion-actions rs))))

(defun rule-set-with-rules (rs)
  (or (rs-single-term-rewrites rs)
      (rs-right-looking-ids rs)
      (rs-left-looking-ids rs)))
