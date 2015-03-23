;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2013 David D. McDonald All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "util"
;;;  version:  May 2013

;; Initiated 5/20/13 as a work-around if ASDF cannot be appled.
;; 3/23/2015 Move load of then-and-else to avoidn warnings from SBCL

(in-package :cl-user)

(defvar *here* *load-truename*)

(defun loadd (string)
  (let ((filename (merge-pathnames string *here*)))
    (load filename)))

(loadd "package")
(loadd "then-and-else")
(loadd "alists")
(loadd "strings")
(loadd "list-hacking")
(loadd "predicates")
(loadd "time")
(loadd "util")
(loadd "walk-directories" )
(loadd "push-debug")
(loadd "indexed-object")
(loadd "indentation")
(loadd "auto-gen")

;; Signals to downstream components 
;; that these are available
(push :ddm-utils *features*)
