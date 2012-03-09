;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "objects;chart:edges:"
;;;  Version:  March 2012

;; Created 3/4/12 to solve problem of compiler complaining about undeclared
;; symbols. Symbols taken from resource4.

(in-package :sparser)

;;;----------
;;; globals
;;;----------

(defparameter *all-edges* nil
  "A resource array, initialized by Initialize-edge-array.")

(unless (boundp '*length-of-edge-resource*)
  (defparameter *length-of-edge-resource* 500))


;;;-------------------
;;; resource pointers
;;;-------------------

(defvar *index-of-furthest-edge-ever-allocated* 0)

(defvar *leftmost-edge-valid-position* nil)


(defvar *position-of-next-available-edge-in-resource* 0)

(defvar *first-active-edge-in-resource* nil)

(defvar *next-active-edge-to-do* nil)

(defvar *most-recently-activated-edge*  nil)


(defvar *some-edges-released* nil)

(defvar *edge-resource-is-fragmented* nil)

(defvar *edge-resource-is-wrapped* nil)


