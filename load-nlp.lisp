;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2010-2015 David D. McDonald
;;;
;;;   File:   load-nlp
;;; Version:  November 2015

;; This file loads the language understanding system Sparser,
;; the language generator Mumble, and a shared set of utilities.

;; Part of the system is loaded using ASDF, most is loaded by explicit 
;; load files. The common reference point is the location of this file. 
;; We collect the location of this file using *load-truename* in step 1.

;; What this file does:
;; 1. Records the location of this file as *nlp-home*
;; 2. Loads ASDF and pushes two file locations onto the ASDF registry
;; 3. Loads the utilities using ASDF
;; 4. Creates the SPARSER package
;; 5. Loads Mumble
;; 6. Chooses a specializing script and loads Sparser

(in-package :cl-user)

;; #1 --- set the base directory

(defparameter *nlp-home*
  (make-pathname :directory (pathname-directory *load-truename*)
                 :device (pathname-device *load-truename*))
  "The root Sparser/Mumble directory.")

;; #2 --- ASDF setup

(require :asdf)
(unless (find-package :asdf)
  (error "Require did not find an ASDF module.~
        ~%You need to install one. See http://common-lisp.net/project/asdf/"))

(let ((*default-pathname-defaults* *nlp-home*))
  (pushnew (make-pathname :directory '(:relative "util"))
           asdf:*central-registry*)
  (pushnew (make-pathname :directory '(:relative "Mumble" "derivation-trees"))
           asdf:*central-registry*))

;; #3 --- Load the utilities. Note that their exported symbols are
;; in the DDM-UTIL package, which is also the name of its ASDF file.

(asdf:operate 'asdf:load-op :ddm-util)

;; #4 --- Create the sparser package.
;; We do this here so that the package is available for reference
;; in Mumble's code. When Sparser/Mumble are part of another
;; system its package may have already have been defined, but
;; it can be redefined or elaborated here without a problem.

(defpackage :sparser
  (:nicknames :sp)
  (:use :common-lisp :ddm-util #+ccl :ccl)
  (:shadow :break :position)
  (:import-from :common-lisp-user :script)
  (:export
   :p :ie :e#
   :tr :deftrace :trace-msg
   :lload :def-logical-pathname
   :category-named :cat-realization :edge-referent
   :exploded-tree-family))

(defmacro sparser::position (&rest args)
  "Sparser has a data structure called position, which clashes
with the standard function of the same name. This macro aliases
the functional value of the former to that of the latter."
  `(common-lisp:position ,@args))

;; #5 --- Load Mumble.

;; Mumble does not currently (2015-12-21) load under SBCL.
#-sbcl
(load (merge-pathnames "Mumble/loader.lisp" *nlp-home*))

;; #6 --- Load Sparser.

(load (merge-pathnames "Sparser/code/s/init/everything" *nlp-home*))
