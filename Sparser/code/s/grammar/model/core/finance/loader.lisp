;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996-2000,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "model;core:finance:"
;;;  Version:  1.0 December 2011

;; initiated 1/13/96
;; 1.0 (9/6/00) bumping files to add psi treatments. 12/14/11 added [stock],
;;      12/15 added [target]

(in-package :sparser)

(gload "finance;per share1")
(gload "finance;stock")
(gload "finance;elaborations to money1")
(gload "finance;target")

