;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE; -*-
;;; $Id: load-final.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;  MUMBLE-86:  load-final

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

(progn (mumble::postprocess-entire-system)
       ;; the return value is a list of all the objects - this keeps
       ;; it from cluttering the screen.
       :finished-postprocessing)


(setq *loading-whole-system* nil)
