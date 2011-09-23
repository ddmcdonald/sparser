;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title+status"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  1.0  January 1991      system version 1.8

(in-package :CTI-source)


(define-category
;(define-composite-category
  title+status)

(defun replace/title_in_title+status (t+s replacement)
  (setf (second t+s) replacement)
  t+s )

(defun find/title_in_title+status (t+s)
  (second t+s))


(define-cfr category::title
            (list category::status-of-a-position
                  category::title)
  :referent
    `(:composite ,(category-named 'title+status)
                 right-edge     ;; the title
                 left-edge))    ;; the status

