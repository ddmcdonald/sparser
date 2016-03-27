;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2011 David D. McDonald All Rights Reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$

;; initiated 3/30/07. Tweaked 2/18/11. Moved out ddm-util package
;; and added package file 3/8/11. Folded in bunch of Sparser util
;; files 3/9/11.

(defpackage :ddm-util-asdf
  (:use :common-lisp :asdf))

(in-package :ddm-util-asdf)

(defsystem :ddm-util
  :serial t
  :components ((:file "package")
               (:file "util")
               (:file "lists")
               (:file "strings")
               (:file "hash-tables")
               (:file "indentation")
               (:file "indexed-object")
               (:file "push-debug")
               (:file "auto-gen")
               (:file "time"))
  :perform (load-op :after (o c) (pushnew :ddm-utils *features*)))
