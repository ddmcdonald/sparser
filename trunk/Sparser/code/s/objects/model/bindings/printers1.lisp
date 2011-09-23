;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "objects;model:bindings:"
;;;  version:  0.2 August 1994

;; initiated 11/30/91 v2.1
;; (7/21/92 v2.3) tweeked to fit new regime, 9/3 tweeked the way it looks
;; 0.1 (6/16/93) revised it to be shorted by leaving out the body
;;     (3/10/94) added Princ-binding and Princ-bound-in
;;     (8/8) added case for a deallocated binding
;; 0.2 (8/10) added reference to id

(in-package :sparser)


(defun print-binding-structure (b stream depth)
  (declare (ignore depth))
  (let ((variable (binding-variable b)))
    (if variable
      (cond
       ((eq variable :fresh-binding)
        (format stream "#<fresh bindings ~A"
                (binding-id b)))
       ((deallocated-binding? b)
        (format stream "#<~A deallocated binding>"
                (binding-id b)))
       (t
        (format stream "#<~A " (binding-id b))
        (let ((var   (binding-variable b)))
          (write-string (string-downcase (var-name var)) stream)
          (write-string " = " stream)
          (format stream "~A" (binding-value b)))
        (write-string ">" stream)))

      (else
        (format stream "#<~A empty binding>"
                (binding-id b))))))



;;;-----------------------------------------------------------
;;; pretty printing a binding as part of some other structure
;;;-----------------------------------------------------------

(defun princ-binding (b  &optional (stream *standard-output*)
                                   (indentation 0))
  ;; show the binding from the perspective of it's body
  (when indentation
    (format stream "~&")
    (write-string (string-of-n-spaces indentation) stream))
  (let ((length-of-the-variable
         (princ-variable (binding-variable b) stream)))
    (write-string " = " stream)
    (pretty-princ-individual (binding-value b)
                             stream
                             indentation
                             (+ indentation
                                length-of-the-variable
                                3 ))))


(defun princ-bound-in (b  &optional (stream *standard-output*)
                                   (indentation 0))
  ;; show the binding from the perspective of what the body
  ;; is to the value:
  (when indentation
    (format stream "~&")
    (write-string (string-of-n-spaces indentation) stream))
  (princ-variable (binding-variable b) stream)
  (write-string " of " stream)
  (princ-individual (binding-body b) stream))
    
