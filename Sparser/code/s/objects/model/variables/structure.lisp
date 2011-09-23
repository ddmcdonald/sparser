;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:variables:"
;;;  version:  August 1994

;; broken out from [object] file 8/12/94

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (lambda-variable
            (:include unit)
            (:conc-name #:var-)
            (:print-function print-lambda-variable-structure))

  name
  value-restriction
  instances
  binding-sites
  lattice-position
  )

