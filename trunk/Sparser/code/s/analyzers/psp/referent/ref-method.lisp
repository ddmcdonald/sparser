;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   October 2011

;; created 9/1/11. 10/3 Adapting to getting categories as arguments, e.g.
;; in the case of prepositions. 

(in-package :sparser)

;;;---------------------------------------
;;; Call from dispatch-on-rule-field-keys
;;;---------------------------------------

(defun ref/method (rule-field left-referent right-referent)
  (declare (special *shadows-to-individuals*))
  ;; Assuming two-argument binary rules for now
  (unless (= 3 (length rule-field))
    (error "Method calls restricted to two arguments.~
         ~%%This is different:~%   ~a" rule-field))
  (push-debug `(,rule-field ,left-referent ,right-referent))
  ;; (setq rule-field (car *) left-referent (cadr *) right-referent (caddr *))
  (flet ((dispatch-type-of (o)
           (typecase o
             (psi (base-category-of-psi o))
             (individual (i-type-of o))
             (category o)
             (otherwise
              (push-debug `(,o ,rule-field))
              (error "Unexpected type of object passed to ref/method: ~
                      ~a~%   ~a" (type-of o) o)))))
    (let* ((method (car rule-field))
           (left-type (dispatch-type-of left-referent))
           (right-type (dispatch-type-of right-referent))
           (left-shadow (get-nominal-instance (get-sclass left-type)))
           (right-shadow (get-nominal-instance (get-sclass right-type))))
      (setq *shadows-to-individuals*
            `((,left-shadow . ,left-referent)
              (,right-shadow . ,right-referent)))
      (let ((referent
             (funcall method left-shadow right-shadow)))
        referent))))
  


;;;--------------------------------------------------------------
;;; getting back the individuals from the shadows invoke methods
;;;--------------------------------------------------------------

(defvar *shadows-to-individuals* nil
  "Set with each call to ref/method. Alist from the nominal category
 instance use to invoke the method and the referent (usually an
 individual) that is the 'real' referents.")

(defun dereference-shadow-individual (shadow)
  (let ((value (cdr (assoc shadow  *shadows-to-individuals*))))
    (unless value
      (error "No Krisp value found for nominal instance ~a"
             shadow))
    value))
