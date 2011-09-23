;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:variables:"
;;;  version:  August 1992  

;; initiated 11/18/91  v2.1
;; 1.1 (7/92 v2.3) shifted from gl entries to straight categories
;; 1.2 (8/31) Removed the /check from the category lookup for the
;;     restrictions on variables.

(in-package :sparser)

;;;-------------------------------------
;;; defining variables from expressions
;;;-------------------------------------

(defun define-lambda-variable (name-symbol
                               restriction-expression
                               category)
  
  ;; this design establishes the variables as independent entities.
  ;; The alternative is to take them as strictly lexical (i.e. amenable
  ;; to alpha reduction) and so only meaningful within the particular
  ;; entry that is defining them.

  (let ((restriction (resolve-variable-restriction
                      restriction-expression)))

    (or (find/lambda-variable name-symbol restriction)
        (install-lambda-variable/global
         name-symbol restriction category))))



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

