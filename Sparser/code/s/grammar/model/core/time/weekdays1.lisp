;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "weekdays"
;;;   Module:  "model;core:time:"
;;;  version:  1.5 June 2013

;; 1.0 (9/18/93 v2.3) completely revamped for new semantics
;; 1.1 (1/10/94) redid ordinals.  Broke out the cases 10/20
;; 1.2 (10/30) realized that treatment of ordinals was screwy & backed out of it
;;     (1/31/99) tweaked the call to define-individual so that the ordinal
;;      was included.
;; 1.3 (3/15/05) Replaced position-in-a-sequence v/r of position-in-week with
;;      ordinal.
;; 1.4 (5/30/13) Re-labeled category weekday as time syntactically.
;;      weekday still labeled as both weekday and time, duplicate has remained elusive.
;; 1.5 (6/13/13) Found the problem. Original code needed to write the rule
;;      "by hand" in the def form. Now that's done by the act of defining the
;;      individual, and that version of doing it pays attention to rule-label.

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category  weekday
  :specializes time
  :instantiates time
  :rule-label time
  :binds ((name :primitive word)
          (abbreviation :primitive word)
          (position-in-week . ordinal))
  :realization (:common-noun name)
  :index (:permanent :key name))
  


;;;------
;;; form
;;;------

(defun define-weekday (string
                       abbrev-string     ;; n.b. no period
                       position-integer)
  (let ((weekday (define-or-find-individual 'weekday :name string))
        (ordinal (nth-ordinal position-integer)))
    (bind-variable 'position-in-week ordinal weekday)
    (define-abbreviation string abbrev-string)
    weekday ))
