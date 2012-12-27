;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1998.2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:individuals:"
;;;  version:  December 2012

;; broken out from [object] file 8/12/94
;; (6/30/98) added rnodes field to hold the realization annotations
;; that the individual receives. (12/14/12) Addes shadow to support
;; regular lisp methods.

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (individual
            (:include unit)
            (:conc-name #:indiv-)
            (:print-function print-individual-structure))

  id
  type
  binds
  bound-in
  rnodes

  shadow
  )

