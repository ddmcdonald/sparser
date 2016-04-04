;;; -*- Mode: Lisp;  Package: Mumble; Syntax: Common-lisp; Base: 10 -*-
;;; $Id: interface-to-text-output.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  browser; interface-to-text-output

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

(defvar *mumble-text-output* (make-synonym-stream '*standard-output*)
  "The stream to which the output text is sent.")

(defgeneric reset-display (display)
  (:method ((display stream))
    (fresh-line display)))

(defgeneric send-item-to-physical-word-stream (item stream)
  (:method ((item null) stream))
  (:method ((item (eql :fresh-line)) (stream stream))
    (fresh-line stream))
  (:method (item (stream stream))
    (princ item stream)))

(defun pass-a-space-to-the-text-output-stream ()
  "Separate from send-item-to-physical-word-stream so that we can use
a different criterion for judging how to break to new lines if we want to."
  (send-item-to-physical-word-stream #\Space *mumble-text-output*))
