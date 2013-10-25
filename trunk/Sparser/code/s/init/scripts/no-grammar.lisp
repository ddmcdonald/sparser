9;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1991-1996,201102013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "no grammar"
;;;    Module:   "init;scripts:"
;;;   version:   October 2013

;; This file sets up the parameter settings to load an otherwise
;; normal parsing engine but with no grammar beyond that which the
;; parser requires for its own operation.
;;
;; Note the hard pathname in the call that loads "everything".

;; Initiated 11/92. 6/19/96 updated the package references.
;; 2/14/10 Unpdated pathname for use with truename
;; 1/13/11 Modified it to just look for *load-truename* rather than presuming
;;  ACL. Switch settings to let it work with Clozure.
;; 5/9/13 Modified to work under load-nlp. 10/15/13 Fixed it to -really-
;;  work there. 

(in-package :cl-user)


#|  ----- This file is intended to be loaded from load-nlp ----- |#

(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :sparser)
    (error "The sparser package is not defined. Did you load this ~
            from ~/sparser/load-nlp.lisp ?")))


;;;----------------------
;;; setup the parameters
;;;----------------------

(defparameter sparser::*just-bracketing* t)


;;;-------------
;;; do the load
;;;-------------

(load (concatenate 'string
                   (namestring cl-user::*nlp-home*)
                   #+apple "Sparser:code:s:init:everything"
                   #+unix  "Sparser/code/s/init/everything.lisp"
                   #+mswindows "Sparser\\code\\s\\init\\everything.lisp"))

