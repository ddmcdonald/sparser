;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "image"
;;;    Module:  "<current version>;config:"
;;;   version:  February 2005

;;; This file establishes the value for all the specializing parameters
;;; that the loaders respond to.  It is the first thing loaded after
;;; "init;everything" is launched; the next operation will be running
;;; this version's master load file.

(in-package :sparser)


;;;-----------------------------------------
;;; parameters used in establishing images
;;;-----------------------------------------

(case *type-of-image*
  (:development
   (defparameter *namestring-for-image* "Sparser;Sparser v2.7")
   (defparameter *config-file* "config;launch")
   (defparameter *update-file* "version;updating"))

  (:demo
   (defparameter *namestring-for-image* "Sparser;Sparser v2.7")
   (defparameter *config-file* nil)
   (defparameter *update-file* nil))

  (otherwise
   (break "The value of the *type-of-image* parameter: ~A~
           ~% is not an anticipated value")))
