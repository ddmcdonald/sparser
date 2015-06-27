;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "months"
;;;   Module:  "model;core:time:"
;;;  version:  1.5 March 2006

;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it, fixed fencepost error 9/27
;; 1.2 (1/10/94) redid ordinals     10/20 broke out the cases
;; 1.3 (10/30) realized that treatment of ordinals was screwy & backed out of it
;;     (1/31/99) fixed details in def form.
;;     (2/14) made the abbreviation optional and pulled the indexing instruction
;;      from the category definition. 
;; 1.4 (10/10) Got enough of the schema-connection scheme working to shift all the
;;      rule-creation off to a head-word. Now Define-month is just orchestrating the
;;      set of arguments. // Needs extension for abbreviations an eventually something
;;      for the position in the year.
;; 1.5 (3/15/05) Replaced position-in-a-sequence v/r of position-in-year with ordinal
;;     (3/29/06) Missing close.
;; 1.6 (8/20/08) shifting from proper to common noun because proper noun introduces
;;      a leading ].proper-noun, which seems like overkill. Also rewriting the
;;      category to go to self instead of time
;; 1.7 (5/30/13) Re-labeled catgeory month as time syntactically.  
;; 1.8 (6/12/13) Backed out of the rule label.
;; 1.9 (5/25/14) Adding number of days and sequence.

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category  month
  :specializes time
  :instantiates self
  ;; :rule-label time
  :mixins (sequential cyclic)
  :binds ((name :primitive word)
          (abbreviation :primitive word)
          (position-in-year . ordinal)
          (number-of-days . number))
  :index (:permanent :key name)
  :realization (:common-noun name ))
                          


;;;------
;;; form
;;;------

(defun define-month (string integer &optional length  abbrev)
  (let ((month (define-or-find-individual
                   'month :name string))
        (ordinal (nth-ordinal integer))
        ;; Allowing dnumber of days to be optional to
        ;; accommodate cases where we don't know them,
        ;; see model/sl/middle-east/months.lisp
        (count (when length (find-or-make-number length))))
    (setq month (bind-dli-variable 'position-in-year ordinal month))
    (when count (setq month (bind-dli-variable 'number-of-days count month)))
    (when abbrev
      (define-abbreviation string abbrev))
    month ))
