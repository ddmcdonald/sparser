;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  October 2014

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.

(in-package :sparser)


;; vg+pp
(defun adjoin-pp-to-vg (vg pp)
  (push-debug `(,vg ,pp))
  (cond
   ((itypep pp 'upon-condition)
    ;; trace
    (bind-variable 'circumstance pp vg))
   (t 
    (bind-variable 'modifier pp vg)))
  vg)
     
    