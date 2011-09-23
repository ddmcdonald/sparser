;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "style"
;;;    Module:   "objects;forms:"
;;;   Version:   September 1995

;; initiated 12/93. Revised the return value to a backquoted form 5/4/94
;; 9/19/95 added features arg.

(in-package :sparser)


(defmacro define-document-style (style-name
                                 &key rules init-fn features)
  (unless (symbolp style-name)
    (error "The name of a style must be given as a symbol.~
            ~%  You passed in a ~A" (type-of style-name)))
  (when (null style-name)
    (error "Nil was supplied as the name of a style"))

  (when init-fn
    (unless (symbolp init-fn)
      (error "The initialization function for a style must be ~
              given as~%a symbol that names a function.~
              ~%   You passed in a ~A" (type-of init-fn))))

  `(define-document-style/expr ',style-name ',rules
                               ',init-fn ',features))

