;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pname"
;;;    Module:   "objects;chart:generics:"
;;;   Version:   March 2013

;; (9/3/92 v2.3) added referential-category
;; (1/6/94) fixed accessor for polywords.  (7/11) added mixin-category
;; (3/18/13) Added psi and converted to regular typecase. 

(in-package :sparser)


(defun pname-for (obj)
  (typecase obj
    (word     (word-pname obj))
    (polyword (pw-pname obj))
    ((or category referential-category mixin-category)
     (symbol-name (cat-symbol obj)))
    (individual ;; subsumes psi
     (symbol-name (cat-symbol (itype-of obj))))
    (otherwise
     (push-debug ``(,obj))
     (error "Need the pname for new type: ~a" (type-of obj)))))

