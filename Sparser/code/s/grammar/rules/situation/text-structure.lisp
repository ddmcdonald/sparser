;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "text-structure"
;;;            grammar/rules/situation/
;;;  version:  January 2015

;; Initiated 1/29/15.

(in-package :sparser)

(defun identify-salient-text-structure (sentence)
  ;; The layout sweep may have identified the subject,
  ;; if not have to decide how hard we want to work to
  ;; infer it. 
  (let* ((layout (layout)) ;; the one after chunking
         (subj-edge (subject layout)))
    (when subj-edge
      (set-sentence-subject subj-edge sentence))
  
    ;; Inital phrases indicating function

))