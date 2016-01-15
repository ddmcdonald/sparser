;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  0.1 September 1995

;; broken out from [objects;forms] 5/6/94 v2.3.  Folded in material
;; from other traversal files 6/15.
;; 0.1 (9/13/95) changed the plist tags to fit the same ones as interior actions

(in-package :sparser)

(defun punct-tag (punct-type)
  (ecase punct-type
    (:angle-brackets  :interior-of-angle-brackets)
    (:curly-brackets  :interior-of-curly-brackets)
    (:square-brackets :interior-of-square-brackets)
    (:parentheses     :interior-of-parentheses)
    (:quotation-marks :interior-of-quotation-marks)))

;;;------------------
;;; using a function
;;;------------------

(defun define-interior-action (label punct-type function)
  (setf (get-tag (punct-tag punct-type) label) function))


;;;------------------------------------
;;; using a cannonically organized CFR
;;;------------------------------------

(defun define-interior-of-paired-punctuation/expr
       (punct-type lhs rhs form referent)
  (assert (= (length rhs) 1)
          (rhs)
          "Only one term allowed in the rhs of paired punctuation.")
  (let* ((lhs-category (resolve/make lhs))
         (rhs-category (resolve/make (car rhs)))
         (form-category (resolve/make form))
         (cfr (make-cfr :category lhs-category
                        :rhs      (list rhs-category)
                        :form     form-category
                        :referent referent)))
    ;; N.B. this cfr is not indexed. The only pointer to it will be on the
    ;; plist of of the rhs label. Also, its execution will be unusual - it's
    ;; just providing data for execution by the Span-interior code.
    (setf (get-tag (punct-tag punct-type) rhs-category) cfr)
    (values cfr rhs-category)))

