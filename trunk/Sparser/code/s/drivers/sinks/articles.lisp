;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "articles"
;;;   module:  "drivers;sinks:"
;;;  Version:  June 1991

(in-package :sparser)


(defparameter *articles-with-records* nil)


(defun after-analysis/article (article)
  ;; called from Do-article
  (when *vetted-records-in-article*
    (push (cons article
                *vetted-records-in-article*)
          *articles-with-records*)))
    

