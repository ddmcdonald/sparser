;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "grok"
;;;    Module:   "init;scripts:"
;;;   version:   May 2013

;; initiated 10/30/12 building on just-dm&p script. Cleaned up 5/7/13.

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

(defparameter *grok* t
  "Dictates variable setting within everything.lisp and other
   initialization code. Note -- this setting turns off the partially-
   saturated-individuals facility in favor of only using ordinary bindings.")

(defparameter *no-image* t
  "Don't ask for dumping out an executable image 
   at the end of the load.")

(defparameter *load-ad-hoc-rules* t
  "Allows loading rules that don't have annotations for NLG.
   We ultimately want to set this to nil, but not yet.")

(defparameter *annotate-realizations* nil
  "Goes with load ad-hoc rules. If every rule was derived from
   or associated with a schemea, we would switch both values.")

(defparameter *incorporate-generic-lexicon* t
  "Include the COMLex lexicon")


;;;-----------------
;;; call the loader
;;;-----------------

(load (concatenate 'string
                   (namestring cl-user::*nlp-home*)
                   #+apple "Sparser:code:s:init:everything"
                   #+unix  "Sparser/code/s/init/everything.lisp"
                   #+mswindows "Sparser\\code\\s\\init\\everything.lisp"))


