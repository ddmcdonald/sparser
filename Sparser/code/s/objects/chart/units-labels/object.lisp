;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;labels:"
;;;  Version:  October 1991

;; initiated 10/22 v2.0.

(in-package :sparser)

#|
   Both words and categories are "labels", in the sense that one of their
primary uses is to label terminal and nonterminal edges to define their
syntactic properties.  
   This function has its attendant slots, which have the identical
meaning in both types of objects.  To make it transparent which object
is actually involved in a given case, we make those slots literally
identical by defining the "label" defstruct here and :include'ing it
in the definition of word and category.
|#

(defstruct  label
  symbol
  rule-set
  plist )

;; 10/25 temporary until the :include is done
(defun label-rule-set (obj)
  (rule-set-for obj))

