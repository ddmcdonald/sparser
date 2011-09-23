;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010 David D. McDonald -- all rights reserved
;;; $Id:$
;;;
;;;      File:   "fire"
;;;    Module:   "init;scripts:"
;;;   version:   November 2010

;; Adapted from 'just dm&p' 6/20/07. 
;; 11/9/10 incorporated CLOS parameter. 3/9/11 added use ddm-util

(in-package :cl-user)

#|  ----- This file is intended to be loaded first. ----- |#

;;;------------------------
;;; Locate the base system
;;;------------------------

(unless (boundp 'location-of-sparser-directory)
  (defparameter location-of-sparser-directory
    (cond
      ((pathnamep *load-truename*)
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
                  :use (common-lisp
                        ddm-util
                        #+:apple ccl
                        #+:openmcl ccl )))



;;;-------------------------------------------------
;;; setup the parameters -- specialize the defaults
;;;-------------------------------------------------

(defparameter sparser::*fire* t
  "Turn on the flag that controls which grammar modules are 
   loaded and other governs other parameterized settings")

(defparameter sparser::*load-ad-hoc-rules* t)

(defparameter sparser::*no-image* t)

;(unless (boundp 'sparser::*CLOS*)
;  (defparameter sparser::*CLOS* nil))

#+allegro (defparameter sparser::*binaries-directory-name* "s")

(when nil ;; Ambush
  (defparameter sparser::*keep-number-sequence-raw* t)
  (defparameter sparser::*speech* t)
  )

(defparameter sparser::*do-strong-domain-modeling* t)
(defparameter sparser::*new-dm&p* t) ;; see globals


(when nil ;; CTAM
  (unless (member :allegro *features*)
    (break "Not running under Allegro Common Lisp. ~
            Can't construct relative pathname to location of Sparser"))
  (defparameter *location-of-ctam-grammar*
    (namestring
     (merge-pathnames
      (make-pathname :directory `(:relative
				  :up ;; scripts
				  :up ;; init
				  :up ;; s
				  :up ;; code
				  :up ;; Sparser
				  "Fire"
				  "CTAM-grammar"))
      (make-pathname :directory (pathname-directory *load-truename*)))))
  ;;(break "CTAM is at ~%~a" *location-of-ctam-grammar*)

  (defparameter sparser::*external-grammar-files* 
    (concatenate 'string *location-of-ctam-grammar* "loader.lisp"))


  ) ;; CTAM


;;;-----------------
;;; call the loader
;;;-----------------

(load (concatenate 'string 
        location-of-sparser-directory
	#+apple "code:s:init:everything"
	#+unix  "code/s/init/everything.lisp"
	#+mswindows "code\\s\\init\\everything.lisp"
	))

(in-package :sparser)

;; These flags aren't guarded by a 'unless boundp'
;; When we get a reasonably full set we'll package it
;; as a switch setting
(setq *treat-single-Capitalized-words-as-names* t)

(setq *annotate-realizations* nil)
 ;; This is part of the long-term project to record the style of
 ;; a test as a side effect of noticing what rules were used
 ;; when it was being parsed. Crucial for effective generation
 ;; but it presupposed that -all- rules are created by realization
 ;; schema, so it won't work when there are ad-hoc rules in the
 ;; mix. 

