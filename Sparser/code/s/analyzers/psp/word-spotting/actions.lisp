;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "actions"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  May 2021

;; Initiated 5/18/21

(in-package :sparser)


(defun handle-spotted-word (spotter pos-before pos-after &key edge)
  )


;;--- traces

(defvar *trace-word-spotting* nil)

(defun trace-word-spotting ()
  (setq *trace-word-spotting* t))
(defun untrace-word-spotting ()
  (setq *trace-word-spotting* nil))

