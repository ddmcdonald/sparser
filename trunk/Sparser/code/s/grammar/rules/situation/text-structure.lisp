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
  (let* ((layout (base-layout (contents sentence)))
         ;; the one after chunking
         (subj-edge (subject layout)))
    (cond
     (subj-edge
      (tr :set-sentence-subject subj-edge sentence)
      (set-sentence-subject subj-edge sentence))
     (t
      (when *debug-pronouns*
        (let ((deep-subj-edge
               (find-sentence-subject sentence layout)))
          (if deep-subj-edge
            (then
             (tr :set-sentence-subject deep-subj-edge sentence)
             (set-sentence-subject deep-subj-edge sentence))
            (else ;; put nil in the field
             (setf (sentence-subject (contents sentence))
                   nil)))))))

    ;; Inital phrases indicating rhetorical function
))

(defun find-sentence-subject (sentence layout)
  (push-debug `(,sentence ,layout))
  ;; if the layout points to a first-person plural pronoun
  ;; ("we") then it's the subject.
  ;; Otherwise we have to either walk down the tree or
  ;; on the other end, allow for preposed terms within
  ;; the sweep that creates the layout.
  nil)