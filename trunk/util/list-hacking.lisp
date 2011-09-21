;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2010-2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "list hacking"
;;;    Module:   "tools:basics:syntactic sugar:"
;;;   Version:   July 2011

;; initiated 12/30/93 v2.3.  4/11/95 added nil-checkers. 
;; 8/24/10 moved in quote-every-second-one from forms/categories
;; (3/9/11) Reworked to fit in ddm-util. (7/31) Added lowercase-tree

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(pl
            add-to-the-end-of-the-list
            lowercase-tree
            some-item/s-in-list-is-nil
            remove-nils-from-list
            quote-every-second-one)))


(defun pl (list
           &optional (number-them? t)
                     (stream *standard-output*))
  "Prints the elements of the list on successive lines, giving
   each one a number by default."
  (let ((index 1))
    (dolist (l list)
      (if number-them?
        (format stream "~&~2t~A.  ~A~%" index l)
        (format stream "~&~A~%" l))
      (incf index)))
  (terpri stream)
  list)


(defun add-to-the-end-of-the-list (item list)
  ;; distructive -- pushes the last cons.
  (let ((prior-cons list)
        cons )

    (when (null (cdr list)) ;; one item
      (rplacd list
              (cons item nil))
      (return-from add-to-the-end-of-the-list list))

    (loop
      (setq cons (cdr prior-cons))
      (when (null (cdr cons)) ;; we're at the end of the list
        (rplacd prior-cons
                (cons (car cons)
                      (cons item nil)))
        (return-from add-to-the-end-of-the-list list))
      (setq prior-cons cons))))


(defun lowercase-tree (sexp &optional package)
  (typecase sexp
    (keyword 
     (intern (string-downcase (symbol-name sexp))
             (find-package :keyword)))
    (symbol
     (intern (string-downcase (symbol-name sexp)) package))
    (cons
     (cons (lowercase-tree (car sexp))
           (lowercase-tree (cdr sexp))))
    (otherwise
     ;; strings, numbers, any-non literals
     sexp)))

;;----------

(defun some-item/s-in-list-is-nil (list)
  (dolist (item list nil)
    (unless item
      (return-from some-item/s-in-list-is-nil t))))

(defun remove-nils-from-list (list)
  (if (some-item/s-in-list-is-nil list)
    (let ( new-list )
      (dolist (item list)
        (when item
          (push item new-list)))
      (nreverse new-list))
    list))


;;;--------------------
;;; for hacking macros
;;;--------------------

(defun quote-every-second-one (list)
  (let ((even nil)
        accumulator )
    (dolist (item list)
      (if even
        (push `(quote ,item)
              accumulator)
        (push item accumulator))
      (setq even (not even)))
    (nreverse accumulator)))