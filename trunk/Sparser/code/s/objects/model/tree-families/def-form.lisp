;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "def form"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  August 1992   

;; initiated 8/4/92 v2.3, tweeked 8/10

(in-package :sparser)


(defmacro define-exploded-tree-family (name &rest keys)
 `(define-exploded-tree-family/expr ',name ',keys))

