;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 2012 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "grok"
;;;    Module:   "init;scripts:"
;;;   version:   October 2012

;; initiated 10/30/12 building on just-dm&p script

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
   initialization code.")

(defparameter *no-image* t
  "Don't ask for dumping out an executable image 
   at the end of the load.")

;; This option is worth exploring
;;(setq *edges-from-referent-categories* t)

(defparameter *load-ad-hoc-rules* t
  "Allows loading rules that don't have annotations for NLG.
   We ultimately want to set this to nil, but not yet.")

(defparameter *incorporate-generic-lexicon* t
  "Include the COMLex lexicon")


;;;-----------------
;;; call the loader
;;;-----------------

(load (concatenate 'string
                   (namestring cl-user::*nlp-home*)
                   "Sparser/code/s/init/everything.lisp"))

