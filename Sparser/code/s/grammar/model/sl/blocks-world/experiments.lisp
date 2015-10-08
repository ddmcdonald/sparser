;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "experiments"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  October 2015

;; Initiated 10/7/15

(in-package :mumble)

;; "let's build a staircase"
#|
(defun build-a-staircase ()
  (let ((staircase
         (define-lexicalized-phrase common-noun ("staircase") (n))

|#