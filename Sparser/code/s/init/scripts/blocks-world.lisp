;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "blocks-world"
;;;    Module:   "init;scripts:"
;;;   version:   October 2015

;; initiated 10/6/15 building on the C3 script.

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

(defparameter *CwC* t
  "Drives specializations in everthing and well beyond.
   This is for the Communicating with Computers project,
   using the blocks world configuration.")



;;;-----------------
;;; call the loader
;;;-----------------

(load (merge-pathnames "Sparser/code/s/init/everything.lisp" cl-user::*nlp-home*))
