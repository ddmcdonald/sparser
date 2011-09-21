;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: short-printers.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86 >objects>short-printers

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

; 6/17  -ddm  commented out a reference to Accessory-type in Short-description
; since that wasn't folded into the Mumble-86 version yet



;;;#################################################################
;;;         MP  - general printer for M-objects
;;;#################################################################


(defun mp (thing)
  "Just for users--Mumble never calls this."
  (princ (short-description thing))
  thing)

(defun short-description (object)
  "returns a minimal string describing the object (usually the NAME field)
and hands it back for somebody else to print."
  (typecase object
    (mcatalog           (format nil "for type ~s" (the-type object)))
 ;; (accessory-type    (string-append ":" (symbol-name (name object))))
    (specification     (specification-short-printer object))
    (phrasal-context   (string-append
			 "for node "
			 (short-description (node object))))
    (further-specification
                       (short-description
			 (attachment-function object)))
    (named-object      (symbol-name (name object)))
    (null              "NIL")
    (list              (list-printer object))
    (symbol            (symbol-name object))
    (string            (string-printer object))
    (otherwise         (short-print-form object))))

;#################################################################
;        MP-FORMATS  for the idiosyncratic data types
;#################################################################

(defun specification-short-printer  (spec)
  (etypecase spec
    (kernel-specification  (short-description (realization-function spec)))
    (bundle-specification  (format nil "~a for ~a"
				   (name (bundle-type spec))
				   (short-description (head spec))))))

(defun list-printer (l)
  (if (eq (car l) 'quote)
      (string-append "'" (short-description (cadr l)))
      (let ((list-of-strings    (mapcar #'short-description l)))
	(format nil "~a" list-of-strings))))

(defun string-printer (string)
  (if (< (length string) 30)
      string
      (string-append (substring string 0 26) " ...")))
