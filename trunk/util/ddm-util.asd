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
  :components (;;(:file "lispm") --  Mine for routines not in util
               (:file "package")
               (:file "alists")
               (:file "strings")
               (:file "list-hacking")
               (:file "predicates")
               (:file "then-and-else")
               (:file "time")
               (:file "util")
               (:file "walk-directories")
               (:file "push-debug")
               (:file "indexed-object")
               (:file "indentation")
               ;; (:file "csv-read")
               (:file "auto-gen")))

(defmethod perform :after ((op load-op)
                           (component
                            (eql (find-component (find-system :ddm-util)
                                                 "auto-gen"))))
  (push :ddm-utils *features*))


