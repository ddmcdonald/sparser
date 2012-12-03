;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "prefixes"
;;;   Module:  "model;core:names:people:"
;;;  version:  2.1 November 2012

;; initiated 2 6/8/93 v2.3 carrying forward cases initiated 10/90
;; but now with a completely different implementation based on Krisp.
;; Populated 6/19.  Moved the form in from the dossier 2/23/95
;; 10/12/96 updated call to make the abbreviation to appreciate that these
;; are prefix abbreviations and so can't mask end-of-sentence periods.
;; 2.1 (11/30/12) Recoded to not drop the full forms on the floor. Existing
;;      version only did anything if there was an abbreviation, so it missed
;;      (define-person-prefix :full "sir")

(in-package :sparser)


(define-category  person-prefix     ;; e.g. "Mr."
  :instantiates self
  :specializes nil
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:word name))


;;;------
;;; form
;;;------

(defun define-person-prefix (&key abbrev full)
  ;; we need this just to package the abbreviation conveniently.
  ;; Note that it lets the abbreviation through as an instance
  ;; of the prefix even if it appears without the period,
  ;; which is a way of handling that fairly frequent typo.
  (cond
   ((and full abbrev)
    (define-individual 'person-prefix :name full)
    (define-abbreviation full abbrev :name-prefix))
   (full
    (define-individual 'person-prefix :name full))
   (abbrev
    (define-individual 'person-prefix :name abbrev)
    (define-abbreviation abbrev abbrev :name-prefix))
   (t
    (error "Neither full nor abbrev in this person-prefix definition"))))

