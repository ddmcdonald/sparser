;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:variables:"
;;;  version:  July 2009  

;; initiated 11/18/91  v2.1
;; 1.1 (7/92 v2.3) shifted from gl entries to straight categories
;; 1.2 (8/31) Removed the /check from the category lookup for the
;;     restrictions on variables.
;; 2.0 (6/19/09) Shifts to a lexical treatment, eliminates global indexes.
;;   (7/20) Accommodations for the toplevel form using symbols, first
;;   encountered in the load-order in sl/ambush/checkpoint

(in-package :sparser)

;;;-------------------------------------
;;; defining variables from expressions
;;;-------------------------------------

(defun define-lambda-variable (name-symbol
                               restriction-expression
                               category)

  (when (symbolp category)
    (setq category (resolve-symbol-to-category/check category)))

  (let ((restriction (resolve-variable-restriction
                      restriction-expression)))

    (find/make-lambda-variable-for-category 
     name-symbol restriction category)))



(defun resolve-variable-restriction (restriction-expression)
  (if restriction-expression
    (typecase restriction-expression
      (list
       (case (first restriction-expression)
         (:or
          `(:or ,@(mapcar #'resolve-symbol-to-category/check
                          (rest restriction-expression)) ))

         (:primitive  ;; e.g. "(:lisp-primitive number)"
          restriction-expression)

         (otherwise
          (error "Unknown key, ~A, in the restriction expression~
                  ~%   ~A"
                 (first restriction-expression) restriction-expression))))
      (symbol
       (resolve-symbol-to-category restriction-expression))
      (otherwise
       (error "Unknown type of restriction expression on lambda ~
               variable:~%    ~A" restriction-expression)))
    nil))

