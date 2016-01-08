;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CL-USER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;    File: "alex-workspace"
;;;  Module: "init;workspaces;"
;;; Version: January 2016

(in-package :cl-user)

;;; Output control

(setq *compile-verbose* t
      *compile-print* nil
      *load-verbose* t
      *load-print* nil
      *print-length* nil)

(defmacro quietly (&body forms)
  "Execute FORMS with warnings and standard output suppressed."
  `(with-open-stream (*standard-output* (make-broadcast-stream))
     (handler-bind ((warning #'muffle-warning)) ,@forms)))

;;; Hook into ED

(defun run-editor (filename)
  "Open FILENAME in $EDITOR."
  #+asdf3
  (uiop:run-program
   (format nil "~a ~a"
           (or (uiop:getenv "EDITOR") "emacs")
           (uiop:escape-sh-token (namestring (truename filename)))))
  #-asdf3
  (error "Don't know how to run an editor for ~a." filename))

(defun edit (filename)
  "Edit FILENAME with Emacs or an inferior editor."
  #+swank
  (if swank::*connections*
    (swank:ed-in-emacs filename)
    (run-editor filename))
  #-swank
  (run-editor filename)
  t) ; SBCL stops searching once an ed-function returns true

#+ccl (setq ccl:*resident-editor-hook* 'edit)
#+sbcl (pushnew 'edit sb-ext:*ed-functions*)
