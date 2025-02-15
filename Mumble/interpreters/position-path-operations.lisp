;;; -*- Syntax: Common-lisp; Mode: LISP; -*-
;;;  MUMBLE-86:  interpreters> position-path-operations

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (C) 2005,2011-2017 David D. McDonald

(in-package :mumble)


(defun update (position)
  "What is the next position after this one on the position
   path of the ongoing phrase."
  (if (nodep position)
    (first-constituent position)
    (next position)))


(defun knit-phrase-into-tree (containing-slot node)
  (let ((first (get-first-sibling-of-node node))
	(last (get-last-sibling-of-node node)))
    (set-previous first containing-slot)
    (set-next last containing-slot)
    (set-contents containing-slot first)
    ))

(defun set-links-for-first-constituent (node slot)
  (set-first-constituent node slot)
  (set-previous slot node))


(defun set-links-for-last-constituent (node slot)
  (set-last-constituent node slot)
  (set-next slot node))


(defun set-links-for-slot (previous-slot slot)
  (set-next previous-slot slot)
  (set-previous slot previous-slot ))


(defun get-first-sibling-of-node (position)
  (if (previous position)
      (get-first-sibling-of-node (previous position))
      position))

(defun get-last-sibling-of-node (position)
  (if (next position)
      (get-last-sibling-of-node (next position))
      position))
