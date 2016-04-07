;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CL-USER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;    File: "alex-workspace"
;;;  Module: "init;workspaces;"
;;; Version: January 2016

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

(defun sparser (&key dump test)
  "Load Sparser."
  (declare (special script))
  (progn
    (format t "~&Loading Sparser/~a...~%" script)
    (force-output))
  (handler-bind ((style-warning #'muffle-warning) ; shut up, SBCL
                 (undefined-function #'continue)  ; from Mumble
                 (unbound-variable #'continue))   ; these, too
    (when (asdf:load-system (format nil "sparser/~(~a~)" script))
      (prog1 (in-package :sparser)
        (when test (uiop:symbol-call :sparser test))
        (when dump (uiop:dump-image
                    (asdf:system-relative-pathname :sparser dump)))))))

(defun bio (&rest args &key (test "COMPARE-TO-SNAPSHOTS") &allow-other-keys)
  (declare (special script))
  (setq script :biology)
  (apply #'sparser :test test args))

(defun bw (&rest args)
  (declare (special script))
  (setq script :blocks-world)
  (apply #'sparser args))
