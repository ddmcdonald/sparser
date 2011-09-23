;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "person exterior rules"        i.e. "Foo, 53 years old"
;;;   Module:  "model;dossiers:"                but not "Mr. Foo"
;;;  version:  March 2005

;; initiated 7/1/94 v2.3.  Put in 'age' 10/6. added another cs rule for it 10/13/95
;; 12/18 moved the cs rules to [model;core:people:names to people]
;; 3/16/05 Evicerated the comma-age rules in favor of realizations on the
;;  person object.

(in-package :sparser)

