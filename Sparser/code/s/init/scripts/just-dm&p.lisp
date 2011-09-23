;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: just-dm&p.lisp 272 2009-08-28 16:46:51Z dmcdonal $
;;;
;;;      File:   "just dm&p"
;;;    Module:   "init;scripts:"
;;;   version:   January 2007

;; initiated 7/13/95
;; 11/06 Started tweaking for situation reports
;; 11-1/07 Modified to get the switch settings right.

(in-package :cl-user)

#|  ----- This file is intended to be loaded first. ----- |#

;;;---------------------------
;;; Platform-specific globals
;;;---------------------------

;;; Specialize this global to the equivalent place on your machine
;;; If running in a unix-based lisp such as Allegro (i.e. one that
;;; sets the  #+unix feature in *features*), this global can be
;;; removed because the code in everything.lisp will calculate its
;;; file location automatically.
;;;   If you don't set it, then provide a hard pathname in the
;;; call to load at the bottom on this file.

(unless (boundp 'location-of-sparser-directory)
  (defparameter location-of-sparser-directory
    #+apple "G4:Users:ddm:nlp:Sparser:"
    #+allegro "/Users/ddm/ws/nlp/Sparser/"
    ))


;;;--------------------
;;; define the package
;;;--------------------

(or (find-package :sparser)
    (make-package :sparser
                  :use #+:apple '(ccl common-lisp)
                       #+:unix  '(common-lisp)
                       ))


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
	#+mswindows "code/s/init/everything.lisp"
	))


