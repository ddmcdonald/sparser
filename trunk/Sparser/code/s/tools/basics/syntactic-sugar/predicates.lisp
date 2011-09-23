;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993,2011  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:  "predicates"
;;;    Module:   "tools:basics:syntactic sugar"
;;;   Version:   February 2011

(in-package :sparser)

;; (2/8/11) Conditionalized memq to Allegro so would load w/o complaint in Clozure.
;;  It must have been added in 2007 because ACL doesn't have it. For Clozure import
;;  its version.


(defun more-than-one (list)
  (unless (listp list)
    (error "This routine presently only operates on lists"))
  (> (length list) 1))

#+allegro ;; already present in Clozure
(defun memq (item list)
  (member item list :test #'eq))
#+ccl (import '(ccl:memq) (find-package :sparser))

