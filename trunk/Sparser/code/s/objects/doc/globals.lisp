;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "globals"
;;;   Module:  "objects;doc;"
;;;  Version:  February 2013

;; Created 2/6/13 to solve the problem of keeping document/section context.
;; [sfriedman:20130206.2010CST] I'm writing this using /objects/chart/edges/globals.lisp as an analog.

(in-package :sparser)

;;;----------
;;; resource globals
;;;----------

;; For articles.

(defparameter *all-articles* nil
  "A resource array, initialized by Initialize-article-array.")

(unless (boundp '*length-of-article-resource*)
  (defparameter *length-of-article-resource* 500))

;; For sections.

(defparameter *all-sections* nil
  "A resource array, initialized by Initialize-section-array.")

(unless (boundp '*length-of-section-resource*)
  (defparameter *length-of-section-resource* 500))

;;;-------------------
;;; resource pointers
;;;-------------------

;; For articles.

(defvar *index-of-furthest-article-ever-allocated* 0)

(defvar *position-of-next-available-article-in-resource* 0)

(defvar *first-active-article-in-resource* nil)

(defvar *some-articles-released* nil)

(defvar *article-resource-is-fragmented* nil)

(defvar *article-resource-is-wrapped* nil)


;; For sections.

(defvar *index-of-furthest-section-ever-allocated* 0)

(defvar *position-of-next-available-section-in-resource* 0)

(defvar *first-active-section-in-resource* nil)

(defvar *some-sections-released* nil)

(defvar *section-resource-is-fragmented* nil)

(defvar *section-resource-is-wrapped* nil)

;;;-------------------
;;; state management
;;;-------------------

(defvar *current-paragraph-number-in-article* 0)