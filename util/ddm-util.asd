;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2011 David D. McDonald All Rights Reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$

;; initiated 3/30/07. Tweaked 2/18/11. Moved out ddm-util package
;; and added package file 3/8/11. Folded in bunch of Sparser util
;; files 3/9/11. Added test system 3/28/16.

(defsystem :ddm-util
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
  :in-order-to ((test-op (test-op :ddm-util/tests)))
  :perform (load-op :after (o c) (pushnew :ddm-utils *features*)))

(defsystem :ddm-util/tests
  :serial t
  :depends-on (:ddm-util)
  :components ((:file "../test/rt")
               (:file "../test/util"))
  :perform (test-op (o c)
             (let ((*package* (find-package :ddm-util)))
               (uiop:symbol-call :rt :do-tests))))
