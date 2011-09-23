;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "generic"
;;;    Module:   "objects;rules:rule links:"
;;;   Version:   1.4 May 1995

;;  1.1  (v1.5)  cat-rules -> cat-rule-set
;;  1.2  (3/20/91 v1.8.1)  Changed Establish-rule-set-for to look for an
;;       already existing set before making a new one.
;;  1.3  (9/2/92 v2.3) added referential-category, mixed-category
;;  1.4  (7/11/94) "mixed" became "mixin" somewhere in the meantime
;;       (5/22/95) added Remove-rule-set-from

(in-package :sparser)


;;;---------------------------------
;;; transparent access to rule-sets
;;;---------------------------------

(defun rule-set-for (obj &optional ignore-otherwise-case)
  (if obj
    (typecase obj
      (word (word-rule-set obj))
      (polyword (pw-rules obj))
      ((or category referential-category mixin-category)
       (cat-rule-set obj))
      (otherwise
       (unless ignore-otherwise-case
         (error "No generic access function for rule-sets defined ~
                 ~%  for objects of type ~A" (type-of obj)))))

    nil ;; handle the case when Nil is passed in for some reason
        ;; /// probably deserves a trap
    ))


(defun establish-rule-set-for (obj)
  (or (rule-set-for obj)
      (let ((rs (make-rule-set
                 :backpointer obj)))
        (typecase obj
          (word     (setf (word-rule-set obj) rs))
          (polyword (setf (pw-rules obj)   rs))
          ((or category referential-category mixin-category)
           (setf (cat-rule-set obj)  rs))
          (otherwise
           (error "No generic access function for rule-sets defined ~
                   ~%  for objects of type ~A" (type-of obj)))))))


(defun remove-rule-set-from (obj)
  (when (rule-set-for obj)
    (typecase obj
      (word     (setf (word-rule-set obj) nil))
      (polyword (setf (pw-rules obj)      nil))
      ((or category referential-category mixin-category)
       (setf (cat-rule-set obj) nil))
      (otherwise
       (error "No generic access function for rule-sets defined ~
               ~%  for objects of type ~A" (type-of obj))))))

