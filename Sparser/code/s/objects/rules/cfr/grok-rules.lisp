;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "grok-rules"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   December 2020

;; Initiated 12/24/20 to formalize the opportunistic pattern rules
;; over syntactic configurations that were used in the Grok project

(in-package :sparser)

(defvar *allow-grok-rules* nil) ;; move to init/parameters


(defun apply-grok-rules ()
  ;; sentence by sentence -- after whacking
  (let ((*trivial-subcat-test* t))
    (declare (special *trivial-subcat-test*))

    ))
