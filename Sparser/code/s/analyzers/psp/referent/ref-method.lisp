;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2013 David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;      File:   "loader"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   July 2013

;; created 9/1/11. 10/3 Adapting to getting categories as arguments, e.g.
;; in the case of prepositions. 11/8/12 Adjusted argument order to match
;; order in the rule. 1/18/13 Removed the block from *grok* so it would
;; actually run. Cleaned up. 7/1/13 Added def-k-method as syntactic sugar
;; to hide the uglyness. 

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
           (right-shadow (get-nominal-instance (get-sclass right-type)))
           (*shadows-to-individuals*
            `((,left-shadow . ,left-referent)
               (,right-shadow . ,right-referent))))
      (declare (special *shadows-to-individuals*))
      (push-debug `(,left-shadow ,right-shadow))

      (let ((referent
             ;; Have to get the order of arguments correct
             (cond
              ((equal (cdr rule-field) '(left-referent right-referent))
               (funcall method left-shadow right-shadow))
              ((equal (cdr rule-field) '(right-referent left-referent))
               (funcall method right-shadow left-shadow))
              (t (push-debug `(,rule-field))
                 (error "Unanticipated layout of the rule field ~
                         in a method call:~%  ~a" (cdr rule-field))))))
        referent))))


;; Macro

(defmacro def-k-method (name args &body body)
  `(def-k-method/expr ',name ',args ',body))

(defun def-k-method/expr (name args body)
  ;;(push-debug `(,name ,args ,body))
  (unless (every #'symbolp args)
    (error "The arguments in a k-method must be symbols~
          ~%At least one of them is not: ~a" args))
  (unless (every #'category-named args)
    (error "As least of of the args to the k-method is not a category:~
          ~%~a" args))
  (let* ((categories (loop for arg in args collect (category-named arg)))
         (shadow-classes
          (loop for c in categories collect (get-sclass c)))
         (dummy-parameters
          (loop with i = 0
            collect (intern (string-append '#:d "-" (incf i))
                            (find-package :sparser))
            until (= i (length shadow-classes))))
         (method-args
          (loop for s in shadow-classes
            as d in dummy-parameters
            collect `(,d ,s)))
         (let-bindings
          (loop for d in dummy-parameters
            as s in args
            collect `(,s (dereference-shadow-individual ,d)) )))

    ;;(push-debug `(,let-bindings ,method-args ,dummy-parameters ,shadow-classes))
    (let ((form 
           `(defmethod ,name ,method-args
              (let ,let-bindings
                ,@body))))
      ;;(pprint form)      
      (eval form))))
  


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
