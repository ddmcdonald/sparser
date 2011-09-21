;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: state.lisp 341 2009-12-29 17:09:23Z dmcdonal $

;;; MUMBLE-86:  interpreters> state

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)


(defun initialize-state (field new-state state-list )
  (push (cons field new-state) state-list))

(defun change-state (field new-state state-list )
  (unless (state-value field state-list)
    (break "Revise the caller. The state-list is nil~
          ~%field = ~a   new-state = ~a" field new-state))
  ;; This line worked with a nil from the assoc in Lispmachine lisp
  (setf (cdr (assoc field state-list)) new-state)
  state-list)

(defun update-state-field (field new-state context-object)
  ;; Written to compensate for behavior of Allegro on change-state.
  ;; See usage in call in carry-out-action
  (let* ((state-list (state context-object))
	 (entry (when state-list (assoc field state-list))))
    (if entry
      (setf (cdr entry) new-state)
      (setf (state context-object) `((,field . ,new-state))))))


(defun state-value  (field state-list)
  (cdr (assoc field state-list)))


;################################################################
;       calls on specific accessories (syntactic sugar)
;################################################################

(defun set-determiner-state (np-node value)
  (set-state (context-object np-node)
	     (initialize-state :determiner value
			       (state (context-object np-node)))))