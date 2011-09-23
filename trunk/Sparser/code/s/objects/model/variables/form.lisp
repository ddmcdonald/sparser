;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:variables:"
;;;  version:  1.1 July 1992  

;; broken out from [make] 7/19/92 v2.3

(in-package :sparser)


(defun define-variables (slot-v/r-pairs category)

  ;; called internally as part of defining a category.

  (let ( variables  variable-name  restriction )
    (dolist (pair slot-v/r-pairs)
      (setq variable-name (car pair))
      (setq restriction
            (cond ((not (consp (cdr pair)))  ;; ( var . restr )
                   (cdr pair))
                  ((caddr pair)      ;; ( var restr sub-restr )
                   (cdr pair))       
                  (t (cadr pair))))  ;; ( var restr )

      (push (define-lambda-variable
              variable-name restriction category)              
            variables))

    (setf (cat-slots category) (nreverse variables))
    category ))

