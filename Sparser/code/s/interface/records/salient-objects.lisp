;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "salient objects"
;;;   Module:  "interface;records:"
;;;  Version:   1.0  January 1991

(in-package :sparser)

;;;-------------------------------------------------------
;;; declaring an object type to be salient and reportable
;;;-------------------------------------------------------

(defvar *salient-object-types* nil)



;;;-------------------
;;; per-article state
;;;-------------------

(defvar *pending-salient-objects* nil
  "Accumulates object found during the course of analyzing an
   article that are determined to be salient.")

(defun initialize-salient-object-record ()
  (setq *pending-salient-objects* nil)
  (when *open-file-for-db-records*
    (close-file-for-db-records)))

