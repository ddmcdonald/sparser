;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CL-USER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;    File: "alex-workspace"
;;;  Module: "init;workspaces;"
;;; Version: September 2016

(in-package :cl-user)

;;; Output control

(setq *compile-verbose* nil
      *compile-print* nil
      *load-verbose* nil
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

;;; Sparser loaders

(defun sparser (&key (package :sparser) (system :sparser) test dump)
  "Load Sparser and maybe run a test or dump an image."
  (progn
    (format t "~&Loading ~a.~%" system)
    (force-output))
  (handler-bind ((warning #'muffle-warning))
    (when (asdf:load-system system)
      (prog1 (setq *package* (find-package package))
        (case test
          ((nil))
          ((t) (asdf:test-system system))
          (t (uiop:symbol-call package test)))
        (when dump (uiop:dump-image
                    (asdf:system-relative-pathname system dump)))))))

(defmacro define-sparser-variant (name (&optional (super 'sparser)) &rest keys)
  `(defun ,name (&rest args &key ,@keys &allow-other-keys)
     (apply #',super
            ,@(loop for (key value) in keys
                    nconc (list (intern (symbol-name key) :keyword) key))
            args)))

(define-sparser-variant fire ()
  (system :sparser/fire))

(define-sparser-variant bio ()
  (system :sparser/biology))

(define-sparser-variant mbio (bio)
  (package :mumble)
  (system :mumble/biology)
  (test t))

(define-sparser-variant r3 ()
  (system :r3)
  (test :compare-to-snapshots))

(define-sparser-variant bw ()
  (system :sparser/blocks-world))

(define-sparser-variant mbw (bw)
  (package :mumble)
  (system :mumble/blocks-world)
  (test t))

(define-sparser-variant clic ()
  (package :clic)
  (system :clic/bw)
  (test t))
