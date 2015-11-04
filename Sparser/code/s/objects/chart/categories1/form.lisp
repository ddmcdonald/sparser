;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form
;;;   Module:  "objects;categories:"
;;;  Version:   1.4 September 1992

;; 1.1  (1/26/91 v1.8)  Added a data check to Resolve-... so that the error
;;      message would make more sense if the category wasn't already
;;      defined.
;; 1.2  (10/31 v2.0.1) Moved the resolution code to forms;resolve1
;; 1.3  (2/20/92 v2.2) Added a new intermediary between def-category
;;      and def-category/expr and a new form for internal use, define-
;;      category so the sources can be distinguished for purposes
;;      of cataloging objects by grammar module.  All these ultimately
;;      route through Construct-category, which is what define-category/expr
;;      used to be.
;; 1.4 (7/16 v2.3) Patched in a hook for the full-fledged definition of
;;       categories for representation, and added documentation to the other
;;       routines to rationalize their use. Renamed construct-category.
;;     (9/1) moved the find-or-make routine to [lookup]

(in-package :sparser)



(defun def-category/expr/toplevel (symbol &key lattice-position )

  ;; called as the expansion of the Def-category macro.
  ;; These categories should just represent non-terminals.

  (declare (ignore lattice-position))
  (def-category/expr symbol :source :def-category))



(defun def-category/expr (symbol &key source )

  ;; Target for definitions of non-terminal and internally by
  ;; Resolve/make via Resolve-or-make/symbol-to-category
  ;;     Typical usage is for the categories that are defined
  ;; implicitly when they are referred to in rules. In that case the
  ;; "source" argument is given explicitly as :def-category.
  ;;     The other use is via Resolve-make for the ad-hoc Def forms for
  ;; objects in the old representation scheme, and given that there are
  ;; so many of those and they'll eventually be rationalized, they are
  ;; given here the default source :define-category.

  (unless (symbolp symbol)
    (error "Symbols are the only valid argument type.~
            ~%  ~A is a ~A"
           symbol (type-of symbol)))
  (unless source (setq source :define-category))

  (find-or-make-category-object symbol source))

