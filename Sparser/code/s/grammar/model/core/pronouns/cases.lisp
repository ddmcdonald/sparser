;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "cases"
;;;   Module:  "model;core:pronouns:"
;;;  version:  April 1991      system version 1.8.2

(in-package :sparser)


;;;-------------------
;;; kinds of pronouns
;;;-------------------

(def-category  pronoun/human/male                :lattice-position :non-terminal)
(def-category  pronoun/possessive/human/male     :lattice-position :non-terminal)
(def-category  pronoun/human/female              :lattice-position :non-terminal)
(def-category  pronoun/possessive/human/female   :lattice-position :non-terminal)
(def-category  pronoun/inanimate                 :lattice-position :non-terminal)
(def-category  pronoun/possessive/inanimate      :lattice-position :non-terminal)
(def-category  pronoun/animate/plural            :lattice-position :non-terminal)
(def-category  pronoun/possessive/animate/plural :lattice-position :non-terminal)

;;;-------
;;; cases
;;;-------

(define-pronoun "he"  category::pronoun/human/male)
(define-pronoun "his" category::pronoun/possessive/human/male)
(define-pronoun "she"  category::pronoun/human/female)
(define-pronoun "her" category::pronoun/possessive/human/female)
(define-pronoun "it"  category::pronoun/inanimate)
(define-pronoun "its" category::pronoun/possessive/inanimate)
(define-pronoun "they"  category::pronoun/animate/plural)
(define-pronoun "their" category::pronoun/possessive/animate/plural)

