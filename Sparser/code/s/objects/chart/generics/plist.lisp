;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2011-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "plist"
;;;    Module:   "objects;chart;generics;"
;;;   Version:   0.3 January 2016

;; (2/10/92 v2.2) added cases for cfr's.
;; (9/2 v2.3) added cases for referential-categories
;; (10/19,24) added mixin categories (7/19/94) added Get-tag-for
;; (11/14) added cases for 'individual'
;; 0.1 (11/16) for individual made the 'push' routine really push
;;     (12/1) in that routine changed indiv-plist to unit-plist
;;     (9/26/11) Added change-plist-value and added lattice-points
;;      to plist-for
;; 0.2 (6/3/13) converted the push to a pushnew. 
;;     (8/6/14) added has-tag? as sugar for memq
;;     (1/12/15) removed a break from remove
;;     (8/14/15) adding variable to the set. 
;; 0.3 (1/15/16) simplified using Common Lisp plist accessors.

(in-package :sparser)

(defun plist-for (obj)
  "Generic plist reader."
  (etypecase obj
    (null)
    (symbol (symbol-plist obj))
    (unit (unit-plist obj))))

(defun (setf plist-for) (plist obj)
  "Generic plist setter."
  (etypecase obj
    (symbol (setf (symbol-plist obj) plist))
    (unit (setf (unit-plist obj) plist))))

(defun get-tag (tag obj &optional default)
  "Return the value for TAG in the plist of OBJ.
N.B. the order of arguments matches MEMQ, not GETF."
  (declare (optimize (speed 3)(safety 0)))
  (check-type tag keyword "a tag")
  (getf (plist-for obj) tag default))

(defun (setf get-tag) (new-value tag obj &optional default)
  "Set a new value for TAG (a keyword) in the plist of OBJ.
N.B. the order of arguments matches MEMQ, not GETF."
  (check-type tag keyword "a tag")
  (setf (getf (plist-for obj) tag default) new-value))

(defun remove-tag (tag obj)
  "Remove TAG (a keyword) from the plist of OBJ.
N.B. the order of arguments matches REMQ, not REMF."
  (check-type tag keyword "a tag")
  (remf (plist-for obj) tag))
