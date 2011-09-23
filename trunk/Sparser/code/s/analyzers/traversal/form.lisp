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

;;;------------------
;;; using a function
;;;------------------

(defun define-interior-action (label type function)
  (ecase type
    (:angle-brackets
     (push-onto-plist label function :interior-of-angle-brackets))
    (:curly-brackets
     (push-onto-plist label function :interior-of-curly-brackets))
    (:square-brackets
     (push-onto-plist label function :interior-of-square-brackets))
    (:parentheses
     (push-onto-plist label function :interior-of-parentheses))
    (:quotation-marks
     (push-onto-plist label function :interior-of-quotation-marks))))




;;;------------------------------------
;;; using a cannonically organized CFR
;;;------------------------------------

(defun define-interior-of-paired-punctuation/expr
       (punct-type lhs rhs form referent)

  (unless (= (length rhs) 1)
    (break "Right now there can only be one term in the righthand ~
            side of paired punctuation.~
            ~%  after you correct this, if you continue the ~
            loading will continue")
    (return-from define-interior-of-paired-punctuation/expr))

  (let ((plist-tag
         #| original circa 5/94 and before
          (case punct-type
           (:angle-brackets :<_>interpretation)
           (otherwise
            (break "The paired-punctuation routines for ~A ~
                    punctuation is not yet defined.~
                    ~%  after you correct this, if you continue ~
                    the loading will continue" punct-type)
            (return-from
             define-interior-of-paired-punctuation/expr)))|#
         (case punct-type
           (:angle-brackets  :interior-of-angle-brackets)
           (:curly-brackets  :interior-of-curly-brackets)
           (:square-brackets :interior-of-square-brackets)
           (:parentheses     :interior-of-parentheses)
           (:quotation-marks :interior-of-quotation-marks))
         ))
    
    ;; make a rule, but don't enter it in the table
    (let ((lhs-category (resolve/make lhs))
          (rhs-category (resolve/make (car rhs)))
          (form-category (resolve/make form)))
      
      (let ((cfr (make-cfr :category lhs-category
                           :rhs      (list rhs-category)
                           :form     form-category
                           :referent referent)))
        
        ;; n.b. this cfr is not indexed.  The only pointer to it
        ;; will be on the plist of of the rhs label.
        ;; Also it's execution will be unusual, the cfr is just
        ;; providing data for execution by the Span-interior code.
        
        (let ((plist (cat-plist rhs-category)))
          (setf (cat-plist rhs-category)
                (if plist
                  (cons plist-tag (cons cfr plist))
                  `(,plist-tag ,cfr))))

        (values cfr rhs-category)))))

