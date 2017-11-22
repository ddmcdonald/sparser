;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "answers"
;;;   Module:  "/interface/mumble/"
;;;  version:  Nobember 2017

;; initiated 11/17/17 for test-jig to frame answers to questions
;; using the form of the question.

(in-package :mumble) ;; mumble instead?

#|
(answer-polar-question
 :yes "are there drugs that treat pancreatic cancer?")
|#

(defun answer-polar-question (y/n text)
  ;; Get raw material
  (multiple-value-bind (i dtn-for-i)
      (sp::process-question text)
    (let ((yes/no ;; get the appropriate individual
           (ecase y/n
             (:yes (sp::find-individual 'acknowledgement :name "yes"))
             (:no (sp::find-individual 'acknowledgement :name "no")))))
      (let ((dtn (make-dtn :referent i
                           :resource (phrase-named 'response-s))))
        (make-complement-node 'r yes/no dtn)
        (make-complement-node 's dtn-for-i dtn)
        (let ((bigger-dtn (discourse-unit dtn)))
          (say bigger-dtn))))))

        
(in-package :sparser)
        
(defun process-question (text-string)
  ;; 1. Parse the text. It should return one individual
  ;; For general use this will need an error catch
  ;; in case we don't get a single edge. Modify code
  ;; in analysis-core-return-value as needed.
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :object))
    (declare (special *return-a-value* *what-value-to-return*))
    (let ((q (with-total-quiet
               (analyze-text-from-string text-string))))
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
          (values statement statement-dtn))))))
