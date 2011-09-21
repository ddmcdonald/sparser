;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$

;;; mumble-86:interface>stand-alone>interface-utilities.lisp
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved
;;;

(in-package :mumble)


;################################################################
;    Utility functions required for the interface to Mumble
;################################################################

(defun short-print-form (obj)
  "Constructs a string suitable as a short name for the object.
   Used by the pretty printing routines in the browser."
  (format nil "~a" obj))


(defun member-of-a-class? (obj)
  "Used by Instantiate-mapping. Does not make sense when there is
   no underlying conceptual model, hence this definition for
   purely stand-alone test demos."
  (declare (ignore obj))
  nil)


(defun first-mention? (obj)
 "Used by Process-determiner-accessory in conjunction with the
  determiner policy that will use `a' on first mentions and
  `the' on subsequent mentions."
  (declare (ignore obj))
  t)


;;used in characteristics -more complicated for some types
 ;; of objects

(defun actual-object (underlying-object)
      underlying-object)