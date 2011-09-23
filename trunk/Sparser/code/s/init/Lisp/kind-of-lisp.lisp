;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER CCL COMMON-LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: kind-of-lisp.lisp 113 2007-08-30 13:20:10Z cultmodel $
;;;
;;;      File:   "kind-of-lisp"
;;;    Module:   "init;Lisp:"
;;;   Version:   January 2007

;; initiated 12/4/91, modified 12/16, 12/28. 1/26/93 to change package
;; names.  4/19/94 broke out the compiler and MCL switch settings
;; to a version-specific file
;; 1/6/07 Swapped over to Unix defaults for OSX. 8/29 Added *windows-file-system*

(in-package :cl-user)


;;;-------------------
;;; file system flags
;;;-------------------
#|
   These parameter settings must fit the actual situation where Sparser
is being used. If they are off, the namestrings passed to load will be
inconsistent with the formatting presumptions of the operating system
and the loader will not work.

   Either the situation can be burned in here as the default, or it can
be overridden by a script file that is launched instead of [everything]
and loads that file, and via it this one on its own rather than building 
the system by launching [everything] directly).  A script is particularly
useful when testing a file configuration.
|#

(or (boundp '*windows-file-system*)
    (defparameter *windows-file-system* #+:mswindows t
		                        #-:mswindows nil
      "Should be non-nil when Sparser's files are being loaded on a real
       MSWindows file system"))
		 

(or (boundp '*unix-file-system*)
    (defparameter *unix-file-system* #+:unix t
		                     #-:unix nil
      "Should be non-nil when Sparser's files are being loaded on a real
       unix file system."))

(or (boundp '*unix-file-system-inside-mac*)
    (defparameter *unix-file-system-inside-mac* nil
      "Should be non-nil when Sparser's files are being loaded on a Macintosh
       file system, but using the version of the filenames that is appropriate
       to a unix file system."))

(or (boundp '*mac-file-system*)
    (defparameter *mac-file-system* #+:apple t
		                    #-:apple nil
      "Should be non-nil when Sparser's files are being loaded on a Macintosh
       file system using standard Macintosh format, i.e. with colons as the
       delimiters between directories."))

