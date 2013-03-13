;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2010-2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "list hacking"
;;;    Module:   "tools:basics:syntactic sugar:"
;;;   Version:   March 2013

;; initiated 12/30/93 v2.3.  4/11/95 added nil-checkers. 
;; 8/24/10 moved in quote-every-second-one from forms/categories
;; (3/9/11) Reworked to fit in ddm-util. (7/31) Added lowercase-tree
;; (3/8/13) Changed pl to not return the list as its value. Very messy
;;  to deal with in case of list-per-run-init-forms. Added splice-out-nth-element

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(pl
            add-to-the-end-of-the-list
            lowercase-tree
            some-item/s-in-list-is-nil
            remove-nils-from-list
            splice-out-nth-element
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
  (terpri stream))


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


(defun splice-out-nth-element (list n)
  "Expected to be used in the Listner to fix things."
  (when (= n 1)
    (break "You are going to splice out the 1st element ~
            of the list.~%Anything that points to this ~
            list will be disconnected.~%Continue from ~
            this break if that is ok."))
  (unless (>= (length list) n)
    (error "Directed to splice-out item number ~a from list~
          ~%But it is only of length ~a" n (length list)))
  (let ((count 0)  earlier  remainder)
    (do ((item (car list) (car rest))
         (rest (cdr list) (cdr rest)))
        ((null item) (error "Should have exited earlier"))
      (incf count)
      (if (= count n)
        (then (setq remainder rest)
              (return))
        (push item earlier)))
    (append (nreverse earlier) remainder)))


      


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

