;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title adj"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  March 1991      system version 1.8.1

(in-package :CTI-source)

#|  These are words like "new" or "frivolous" that modifiy the
   possessor of the title rather than change what the title is way
   a word like "interim" or "district" does.  |#



;;;---------------
;;; defining form
;;;---------------

(defun define-title-adjunct (string)
  (let ((word (resolve/make string)))
    (define-cfr category::title `(,word ,category::title)
      :referent '(:daughter right-edge))))

;;;-------
;;; cases
;;;-------

(define-title-adjunct "longtime")
(define-title-adjunct "new")


