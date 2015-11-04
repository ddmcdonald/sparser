;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "versions"
;;;   Module:  "model;core:names:people:"
;;;  version:  1.0 October 1995

;; initiated 6/8/93 v2.3 carrying forward cases initiated 1/91
;; but now with a completely different implementation based on Krisp.
;; 2/23/95 gave it some content.   10/29 added string printer

(in-package :sparser)


(define-category  person-version     ;; e.g. "Jr."
  :instantiates self
  :specializes nil
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:word name))



(defun string/Person-version (pv)
  (word-pname (value-of 'name pv)))


;;;------
;;; form
;;;------

(defun define-person-version (&key abbrev full)
  ;; we need this just to package the abbreviation conveniently.
  ;; Note that it lets the abbreviation through as an instance
  ;; of the prefix even if it appears without the period,
  ;; which is a way of handling that fairly frequent typo.

  (let ((obj
         (define-individual 'person-version :name abbrev)))
    (if full
      (then
        (define-abbreviation full abbrev) ;; makes the word
        (let* ((full-word (word-named full))
               (cfr (define-cfr category::person-version
                                (list full-word)
                      :form category::noun
                      :referent obj)))
          (push-onto-plist obj cfr :rules)))

      (define-abbreviation abbrev abbrev))

    obj ))

