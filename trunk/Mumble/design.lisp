;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$

;;;  MUMBLE-86:  design

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2010 David D. McDonald

;; Modified, 12/15/10 (ddm) to provides a location for packages and
;; exports to be defined across the whole system so that they can 
;; be available early before anything other than utilities have
;; been loaded.

(in-package :cl-user)


;;--- Utilities

(unless (find-package :ddm-util)
  (break "Setup problem -- ddm-util should have been loaded"))


;;--- Mumble 

(defpackage :mumble (:use :common-lisp :ddm-util))

(in-package :mumble)

#+openmcl (import '(ccl:memq) (find-package :mumble))

(export '(mumble demos build-mumble-frame)
	(find-package :mumble))

(shadow '(labels
	  locative
	  number)
	 (find-package :mumble))


;;--- Sparser
