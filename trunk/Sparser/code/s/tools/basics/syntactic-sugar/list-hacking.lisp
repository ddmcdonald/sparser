;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995,2010  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "list hacking"
;;;    Module:   "tools:basics:syntactic sugar:"
;;;   Version:   April 1995

;; initiated 12/30/93 v2.3.  4/11/95 added nil-checkers. 
;; 8/24/10 moved in quote-every-second-one from forms/categories

(in-package :sparser)


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