;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:bindings:"
;;;  version:  August 1994

;; broken out from [object] file 8/12/94

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (binding
            (:include unit)
            (:print-function print-binding-structure))

  variable
  value
  body
  id
  )

