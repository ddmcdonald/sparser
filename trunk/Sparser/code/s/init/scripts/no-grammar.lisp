;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1991-1996, 2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "no grammar"
;;;    Module:   "init;scripts:"
;;;   version:   February 2010

;; This file sets up the parameter settings to load an otherwise
;; normal parsing engine but with no grammar beyond that which the
;; parser requires for its own operation.
;;
;; Note the hard pathname in the call that loads "everything".

;; Initiated 11/92. 6/19/96 updated the package references.
;; 2/14/10 Unpdated pathname for use with truename
;; 1/13/11 Modified it to just look for *load-truename* rather than presuming
;;  ACL. Switch settings to let it work with Clozure.

(in-package :cl-user)

;;;------------------------
;;; Locate the base system
;;;------------------------

(unless (boundp 'location-of-sparser-directory)
  (defparameter location-of-sparser-directory
    (cond
      ((pathnamep *load-truename*) ;;(member :allegro *features*)
       (namestring
	(merge-pathnames
	 (make-pathname :directory 
			'(:relative
			  :up ;; scripts
			  :up ;; init
			  :up ;; s
			  :up ;; code
			  ))
	 (make-pathname :directory (pathname-directory *load-truename*)))))
      (t
       (break "The system global *load-truename* doesn't point to a pathname. ~
              ~%Can't construct relative pathname to location of Sparser~
              ~%You'll have to set the value of ~
              ~%        cl-user::location-of-sparser-directory~
              ~%by hand in a wrapper to this file.")))))


;;;--------------------
;;; define the package
;;;--------------------

(or (find-package :sparser)
    (make-package :sparser
                  :use #+:apple '(ccl common-lisp)
                       #+:openmcl '(ccl common-lisp)
                       #+(and :unix (not :openmcl)) '(common-lisp)
                       ))


;;;----------------------
;;; setup the parameters
;;;----------------------

(defparameter sparser::*just-bracketing* t)


;;;-------------
;;; do the load
;;;-------------

(load (concatenate 'string 
        location-of-sparser-directory
	#+apple "code:s:init:everything"
	#+unix  "code/s/init/everything.lisp"
	#+mswindows "code\\s\\init\\everything.lisp"
	))

