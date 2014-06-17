;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "bio-script"
;;;    Module:   "init;scripts:"
;;;   version:   June 2014

;; Cloned 6/15/14 from the C3 script

(in-package :cl-user)

#|  ----- This file is intended to be loaded from load-nlp ----- |#

(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :sparser)
    (error "The sparser package is not defined. Did you load this ~
            from ~/sparser/load-nlp.lisp ?")))


;;;-------------------------------------------------
;;; setup the parameters -- specialize the defaults
;;;-------------------------------------------------

(in-package :sparser)

(defparameter *big-mechanism* t
  "Drives specializations in everthing and well beyond")



;;;-----------------
;;; call the loader
;;;-----------------

(load (concatenate 'string
                   (namestring cl-user::*nlp-home*)
                   #+apple "Sparser:code:s:init:everything"
                   #+unix  "Sparser/code/s/init/everything.lisp"
                   #+mswindows "Sparser\\code\\s\\init\\everything.lisp"))
