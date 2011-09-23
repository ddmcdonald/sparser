;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pname"
;;;    Module:   "objects;chart:generics:"
;;;   Version:   July 1994

;; (9/3/92 v2.3) added referential-category
;; (1/6/94) fixed accessor for polywords.  (7/11) added mixin-category

(in-package :sparser)


(defun pname-for (obj)
  (etypecase obj
    (word     (word-pname obj))
    (polyword (pw-pname obj))
    ((or category referential-category mixin-category)
     (symbol-name (cat-symbol obj)))))

