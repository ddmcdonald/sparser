;;; -*- Syntax: Common-lisp; Mode: LISP -*-
;;; $Id: load-initial.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;  MUMBLE-86:  load-initial

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

(defconstant *window-code?*
	     nil  "Defined as a constant, NIL, because there is no way we will ever be 
executing window code on anything by a lispmachine, so we may as well let 
the compiler eliminate some dead code.")

(defvar *loading-whole-system*)


;;from Loader.lisp
;;; ============================================================================
;;; The Mumble initialization list.  This list lets other systems (e.g. the
;;; Tracker), arrange for functions to be run after Mumble is loaded.  It's not
;;; used a lot right now, and may be flushed someday.  Then again, maybe we 
;;; should put the top-level postprocessing function, postprocess-entire-system,
;;; on it.


(defvar *mumble-initialization-list*
        nil
  "A list of functions, all of which will be called after all the Mumble files 
are loaded.  This way, another system can transparently initialize things after
Mumble has loaded.  The Tracker does, for instance.")

(defun run-mumble-initializations ()
  (mapc #'funcall *mumble-initialization-list*))

(defun add-mumble-initialization (function)
  (setq *mumble-initialization-list*
	(nconc *mumble-initialization-list* (list function))))

