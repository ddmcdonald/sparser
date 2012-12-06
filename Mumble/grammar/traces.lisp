;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: traces.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  grammar > traces
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

#|

(def-type TRACE  temporary
  (name			"a symbol")
  (original-item	"an object, elmt-instance or word-instance")
  (pname		"a string. Traces have to look like words.")
  (binder		"??the position, label, whatever that sanctioned it")
  )
|#


(define-trace aux-trace)

(define-trace wh-trace)

(define-trace arg-trace)


(defun build-trace (specification)
  (make-ttrace 
    :name 'trace
    :original-specification specification))

(defun build-there-trace (specification)
  (make-ttrace 
    :name 'there-trace    
    :pname "there"
    :original-specification specification))

;;original item will be backpointer of specification when mumble is hooked up
;;with some underlying program
