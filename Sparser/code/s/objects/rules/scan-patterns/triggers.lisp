;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "triggers"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  July 2020

;; initiated 7/15/20 to hold the rule-definition machinery for inferring
;; rules. Somewhat analogous to the machinery behind do-generic-actions-off-treetop

(in-package :sparser)

;;;-----------------------------------
;;; machinery used in induction-sweep
;;;-----------------------------------

(defvar *rule-induction-trigger-table* (make-hash-table :test #'eq)
  "from labels to rule-trigger-objects")

(defun set-rule-induction-trigger (label function)
  "Initial version while figuring out what sort of representation
   to use. Associate a category (semantic or form) with a
   function and run the function when the trigger pattern
   is encountered."
  (setf (gethash label *rule-induction-trigger-table*) function))

(defun rule-trigger? (label)
  (gethash label *rule-induction-trigger-table*))

(defmacro def-rule-trigger (label function)
  (let ((category (category-named label :error)))
    (set-rule-induction-trigger category function)
    t))


;;;---------------------
;;; single-word trigger
;;;---------------------

(defmacro make-preposition-trigger (string)
  (multiple-value-bind (word rules)
      (rule-for string)
    (unless rules (break "no rule for ~s" string))
    (when (cdr rules)
      (let ((prep-rule
             (loop for cfr in rules ; for "as"
                when (eq (cat-name (cfr-form cfr)) 'preposition)
                  return cfr)))
        (setq rules (list prep-rule))))
    (let* ((rule (car rules))
           (category (cfr-category rule))
           (form (cfr-form rule)))
      (unless (eq (cat-name form) 'preposition)
        (break "~a isn't a rule for preposition?" rule))
      (let ((fn-name (intern (string-append '#:takes- (string-upcase string))
                             (find-package :sparser))))
        `(progn
           (defun ,fn-name (tt prior-tt)
             (let ((head (rightmost-salient-constituent prior-tt)))
               (infer-preposition-rule ,word tt head)))
           (def-rule-trigger ,(cat-name category) ,fn-name)
           ',fn-name) ))))
