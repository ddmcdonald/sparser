;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "ERN loader"
;;;    Module:   "init;"
;;;   version:   February 2005

#| Loads Sparser in the right configuration for completing the ERN grammar
   and setting up to do style work by collecting statistics.  |#

;; Initiated 2/1/05 by cribbing from "scripts;Magi loader"


(in-package :cl-user)

;;---- Utility

(defmacro def-string (&rest strings)
  `(concatenate 'string ,@strings))

(export 'def-string (find-package :cl-user))


;;;---------------------------
;;; Platform-specific globals
;;;---------------------------

(unless (boundp 'location-of-sparser-directory)
  (defparameter location-of-sparser-directory
    #+apple "G4:Users:ddm:nlp:Sparser:"))


;;;--------------------------
;;; overriding flag defaults
;;;--------------------------

(unless (find-package :sparser)
  (make-package :sparser
                :use #+:apple '(ccl common-lisp)
                     #+:unix  '(lisp)))  ;; "unix" = Lucid

(defparameter sparser::*lattice-points* t)
(defparameter sparser::*no-image* t)

(defparameter sparser::*edges-from-referent-categories* nil)
;;  See Multiply-edges -- this is the idea of parsing off referents rather
;;   than just edge categories. ///Look up what the papers say.


;;;-----------------
;;; call the loader
;;;-----------------

(load (def-string location-of-sparser-directory "code:s:init:everything"))


;;;------------------------
;;; bring up the workspace 
;;;------------------------

(ed (def-string location-of-sparser-directory "code:s:init:workspaces:ERN"))

