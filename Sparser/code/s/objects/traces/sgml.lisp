;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sgml"
;;;   Module:  "objects;traces:"
;;;  Version:  May 1994

(in-package :sparser)


(defparameter *trace-sgml* nil)

;(setq *trace-sgml* t)
;(setq *trace-sgml* nil)

(defun trace-sgml ()  ;; for meta-point
  (setq *trace-sgml* t))

(defun untrace-sgml ()
  (setq *trace-sgml* nil))


(deftrace :completed-sgml-start (sgml-tag)
  (when *trace-sgml*
    (trace-msg "[sgml] completed start edge for ~A" sgml-tag)))

(deftrace :completed-sgml-end (sgml-tag)
  (when *trace-sgml*
    (trace-msg "[sgml] completed termination edge for ~A" sgml-tag)))


(deftrace :sgml-start-fn (fn)
  (when *trace-sgml*
    (trace-msg "[sgml] calling start function: ~A" fn)))

(deftrace :sgml-termination-fn (fn)
  (when *trace-sgml*
    (trace-msg "[sgml] calling termination function: ~A" fn)))
