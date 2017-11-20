;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "answers"
;;;   Module:  "/interface/mumble/"
;;;  version:  Nobember 2017

;; initiated 11/17/17 for test-jig to frame answers to questions
;; using the form of the question.

(in-package :sparser) ;; mumble instead?

#|
(answer-polar-question
 :yes "are there drugs that treat pancreatic cancer?")
|#

(defun process-question (text-string)
  ;; 1. Parse the text. It should return one individual
  ;; For general use this will need an error catch
  ;; in case we don't get a single edge. Modify code
  ;; in analysis-core-return-value as needed.
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :object))
    (declare (special *return-a-value* *what-value-to-return*))
    (let ((q (analyze-text-from-string text-string)))
      (unless (itypep q 'polar-question)
        (error "Presently just doing polar questions.~%~s isn't"
               text-string))
      ;; 2. pull out the declarative portion
      ;; Generate it. Keep a copy of the mentions
      (let ((statement (value-of 'statement q)))
        ;; runs for side-effects. Muffled
        (with-output-to-string (mumble::*mumble-text-output*)
          (m::say statement))
        (let ((mentioned-in-question (copy-list m::*mentions*))
              (statement-dtn (m::get-dtn statement)))
          statement-dtn)))))
