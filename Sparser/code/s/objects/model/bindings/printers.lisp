;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "objects;model:bindings:"
;;;  version:  0.2 March 2015

;; initiated 11/30/91 v2.1
;; (7/21/92 v2.3) tweeked to fit new regime, 9/3 tweeked the way it looks
;; 0.1 (6/16/93) revised it to be shorted by leaving out the body
;;     (3/10/94) added Princ-binding and Princ-bound-in
;;     (8/8)/94 added case for a deallocated binding
;; 0.2 (8/10/94) added reference to id
;;     (3/12/15) Wrote binding-short-string and helpers as part
;;      of describe-individual.Princ routines print immediately
;;      which made them too hard to adapt. 

(in-package :sparser)


(defun print-binding-structure (b stream depth)
  (declare (ignore depth)
           (special **lambda-var**))
  (print-unreadable-object (b stream)
    (format stream "~@[~A ~]" (binding-id b))
    (let ((variable (binding-variable b))
          (value (binding-value b)))
      (cond ((not variable)
             (format stream "empty binding"))
            ((eq variable :fresh-binding)
             (format stream "fresh binding"))
            ((deallocated-binding? b)
             (format stream "deallocated binding"))
            ((eq value **lambda-var**)
             (format stream "λ.~(~A~)" (var-name variable)))
            (t
             (format stream "~(~A~) = ~A" (var-name variable) value))))))


;;;-----------------------------------------------------------
;;; pretty printing a binding as part of some other structure
;;;-----------------------------------------------------------

(defun princ-binding (b  &optional (stream *standard-output*) (indentation 0))
  ;; show the binding from the perspective of it's body
  (when (plusp indentation)
    (format stream "~&~VT" indentation))
  (let ((length-of-the-variable
         (princ-variable (binding-variable b) stream)))
    (write-string " = " stream)
    (pretty-princ-individual (binding-value b)
                             stream
                             indentation
                             (+ indentation
                                length-of-the-variable
                                3 ))))

(defmethod binding-short-string ((b binding))
  (let ((variable  (binding-variable b))
        (value (binding-value b)))
    (cond
     ((deallocated-binding? b)
      (format nil "#<~A deallocated binding>" (binding-id b)))
     (t
      (format nil "#<~a ~a: ~a>"
              (binding-id b)
              (string-downcase (var-name variable))
              (binding-value-short-string value))))))

(defmethod binding-value-short-string ((i individual))
  (format nil "~a" i))

(defmethod binding-value-short-string ((c category))
  (format nil "~a" c))

(defmethod binding-value-short-string ((w word))
  (format nil "~s" (word-pname w)))

(defmethod binding-value-short-string ((pw polyword))
  ;; SBCL caught use of w for pw
  (format nil "~s" (pw-pname pw)))

(defmethod binding-value-short-string ((v T))
  (format nil "~a" v))

(defmethod bound-in-short-string ((b binding))
  (let ((variable  (binding-variable b))
        (body (binding-body b)))
    (cond
     ((deallocated-binding? b)
      (format nil "#<~A deallocated binding>" (binding-id b)))
     (t
      (format nil "#<~a :~a of ~a>"
              (binding-id b)
              (string-downcase (var-name variable))
              body)))))


(defun princ-bound-in (b &optional (stream *standard-output*) (indentation 0))
  ;; show the binding from the perspective of what the body
  ;; is to the value:
  (when (plusp indentation)
    (format stream "~&~VT" indentation))
  (princ-variable (binding-variable b) stream)
  (write-string " of " stream)
  (princ-individual (binding-body b) stream))
    
