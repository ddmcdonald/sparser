;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: tense-markers.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  grammar > tense-markers
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

#|

(def-type TENSE-MARKER  temporary
  (name			"a symbol")
  (word-labels		"a list of labels"))

|#

(define-tense-marker past )


(define-tense-marker present )

