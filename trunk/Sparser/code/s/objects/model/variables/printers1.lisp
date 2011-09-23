;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "objects;model:variables:"
;;;  version:  0.4 July 1994   

;; initiated 11/18/91 v2.1, additional form 12/1, 
;; tweeked 7/19/92 v2.3 when new regime came in, 9/3 added referential-category
;; 0.1 (7/16/93) pulled reference to GL
;; 0.2 (9/19) shortened the way structures print
;; 0.3 (3/10/94) tweeked princ-variable
;;     (7/1) added princ-variable/string
;; 0.4 (7/28) revised structure printer to notice *print-short*

(in-package :sparser)


(defun print-lambda-variable-structure (obj stream depth)
  (declare (ignore depth))
  (if *print-short*
    (then
      (write-string "#<" stream)
      (write-string (princ-variable/string obj) stream)
      (write-string ">" stream))
    (else
      (write-string "#<variable " stream)
      (princ (var-name obj) stream)
      (write-string " :: " stream)
      (princ-variable-value-restriction (var-value-restriction obj)
                                        stream)
      (write-string ">" stream))))


(defun princ-variable (v stream)
  (let ((string (princ-variable/string v)))
    (write-string ":" stream)
    (write-string string stream)
    (length string)))

(defun princ-variable/string (v)
  (if (eq v :deallocated)
    ;; the variable is from a binding that is no longer in use
    ""
    (string-downcase (symbol-name (var-name v)))))


(defun princ-variable-value-restriction (restr stream)
  (if restr
    (etypecase restr
      (list (format stream "~A" (first restr))
            (dolist (c (rest restr))
              (write-string " " stream)
              (if (category-p c)
                (princ-category c stream)
                (princ c stream))))
      ((or category referential-category)
       (princ-category restr stream)))
    (write-string "nil" stream)))



(defun princ-variable/dot-form (v stream)
  (let ((body (var-binding-sites v)))
    (when (null (cdr body))
      (etypecase (car body)
        ((or category referential-category)
         (princ-category (car body) stream)))
      (write-string "." stream))
    (write-string (symbol-name (var-name v)) stream)))

