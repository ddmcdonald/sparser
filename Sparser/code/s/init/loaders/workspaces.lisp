;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;      File: "workspaces"
;;;    Module: "init;loaders;"
;;;   Version: January 2016

(in-package :sparser)

(defun load-workspaces (&key all)
  "Load some or all of the workspace files."
  (cond (all (map nil #'load (directory "sparser:workspaces;*.lisp")))
        (t (labels ((workspace (name)
                      (and name
                           (sparser-logical-pathname
                            (format nil "workspaces;~a-workspace.lisp" name))))
                    (maybe-load-workspace (name)
                      (let ((workspace (workspace name)))
                        (when (and workspace (probe-file workspace))
                          (load workspace)))))
             (declare (special script))
             (maybe-load-workspace script)
             (maybe-load-workspace #+asdf3 (or (uiop:getenv "USER")
                                               (uiop:getenv "LOGNAME"))
                                   #-asdf3 nil)))))

(load-workspaces)
(redeclare-permanent-individuals-if-necessary)
