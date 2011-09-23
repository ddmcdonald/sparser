;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  0.1 August 1994

;; redesigned from scratch 12/8/93 v2.3
;; 0.1 (7/18/94) added control of capitalization parameter.
;;     (8/17) added *ongoing-section-object*
;;     (8/29) added Cleanup-root-section-object

(in-package :sparser)


;;;---------
;;; globals
;;;---------

(defvar *current-section-type* nil
  "Set to a section-marker in texts where sections are defined.")

(defvar *pos-current-section-starts-at* nil
  "Set to the position just before the word that indicates that the
   current section has started.")

(defvar *ongoing-section-object* nil)


;;;----------------
;;; initialization
;;;----------------

(defun initialize-section-state ()
  ;; called from Per-article-initializations

  (setq *current-section-type* nil
        *pos-current-section-starts-at* nil
        *ongoing-section-object* nil)

  (when *root-section-object*
    (cleanup-root-section-object))

  (if *ignore-capitalization*
    (setq *capitalization-is-uninformative* t)
    (setq *capitalization-is-uninformative* nil)))

