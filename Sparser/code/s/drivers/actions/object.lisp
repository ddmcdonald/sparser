;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "drivers;actions;"
;;;  Version:  January 2016

;; initiated 10/21/91, tweeked 10/23,10/26
;; 12/14/94 added the other kinds of categories to the dispatch check
;; 5/7/14 Modified delete-completion-action to not presume that there
;; is a completion action. Applied to case of period-hook which is
;; not on by default. 
;; 12/15/2015 SBCL fix -- change label-rule-set to rule-set-for in
;; define-completion-action.
;; 1/16/2016 Simplified using Common Lisp plist accessors.

(in-package :sparser)

#| There are no objects representing completion actions. Instead, the
routines are kept in the "completion-action" field of the rule-sets of
the labels for which actions are defined.
   A number of different actions can be defined for a given label.
Each is distinguished by a tag -- the rs field is essentially a plist.
|#

(defun define-completion-action (label tag function)
  (let ((rs (establish-rule-set-for label)))
    (setf (getf (rs-completion-actions rs) tag) function)
    label))

(defun delete-completion-action (label tag)
  (let ((rs (rule-set-for label)))
    (assert rs (rs) "Expected the label ~a to have a rule-set." label)
    (remf (rs-completion-actions rs) tag)))
