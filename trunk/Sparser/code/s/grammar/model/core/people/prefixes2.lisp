;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "prefixes"
;;;   Module:  "model;core:names:people:"
;;;  version:  2.0 October 1995

;; initiated 2 6/8/93 v2.3 carrying forward cases initiated 10/90
;; but now with a completely different implementation based on Krisp.
;; Populated 6/19.  Moved the form in from the dossier 2/23/95
;; 10/12 updated call to make the abbreviation to appreciate that these
;; are prefix abbreviations and so can't mask end-of-sentence periods.

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

  (when abbrev
    (let ((obj
           (define-individual 'person-prefix :name abbrev)))
      (if full
        ;; then we'd have the abbreviation expand into the
        ;; full form rather than the word given as the
        ;; abbreviation, which has to be the default
        (break "Stub: full names for person prefixes -- write the code")
        (else
          (define-abbreviation abbrev abbrev :name-prefix)))
      obj )))

