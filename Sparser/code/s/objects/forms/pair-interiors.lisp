;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pair interiors"
;;;    Module:   "objects;forms:"
;;;   Version:   May 1994

;; initiated 10/91, v2.0. Moved form to analyzers; 5/6/94

(in-package :sparser)


(defmacro define-interior-of-paired-punctuation
          (punct-type
           &key lhs rhs form referent )

  `(define-interior-of-paired-punctuation/expr
    ',punct-type ',lhs ',rhs ',form ',referent))

