;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1995,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "just dm&p"
;;;    Module:   "init;scripts:"
;;;   version:   May 2013

;; initiated 7/13/95
;; 11/06 Started tweaking for situation reports
;; 11-1/07 Modified to get the switch settings right.
;; 1/28/13 Put in the right mswindows string. 5/9/13 modified to work
;; from load-nlp

(in-package :cl-user)


#|  ----- This file is intended to be loaded from load-nlp ----- |#

(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :sparser)
    (error "The sparser package is not defined. Did you load this ~
            from ~/sparser/load-nlp.lisp ?")))



;;;-------------------------------------------------
;;; setup the parameters -- specialize the defaults
;;;-------------------------------------------------

(defparameter sparser::*load-ad-hoc-rules* t)
(defparameter sparser::*sit-rep-grammar* t)

(defparameter sparser::*no-image* t)



;;;-----------------
;;; call the loader
;;;-----------------

(load (concatenate 'string 
        location-of-sparser-directory
	#+apple "code:s:init:everything"
	#+unix  "code/s/init/everything.lisp"
	#+mswindows "code\\s\\init\\everything.lisp"
	))


