;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "section stack"
;;;   Module:  "objects;traces:"
;;;  Version:  May 1994

(in-package :sparser)


(defparameter *trace-section-stack* nil)

(defun trace-section-stack ()
  (setq *trace-section-stack* t))

(defun untrace-section-stack ()
  (setq *trace-section-stack* nil))


(deftrace :pushing-onto-section-stack (index obj)
  (when *trace-section-stack*
    (trace-msg "[sect. stack] ~A: pushed ~A" index obj)))

(deftrace :popping-off-section-stack (index obj)
  (when *trace-section-stack*
    (trace-msg "[sect. stack] ~A: popped ~A" index obj)))

