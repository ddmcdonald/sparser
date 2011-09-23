;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;labels:"
;;;  Version:  July 1992

;; initiated 10/22 v2.0.
;; 7/16/92 v2.3  rewrote it to get the plist from #<unit>

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

(defstruct  (label
             (:include unit))
  symbol
  rule-set )


;; 10/25 temporary until the :include is done for words and polywords
(defun label-rule-set (obj)
  (rule-set-for obj))

