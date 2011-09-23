;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999-2000 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:psi:"
;;;  version:  April 2000

;; initiated 2/15/99 excerpting from the original all-in-one structure file.
;; 3/26/00 Added an rnodes field. 4/19 pulled it because it's redundant (and
;; ignored) with the one already on individual.

(in-package :sparser)

(defstruct (psi
            (:include individual)
            (:conc-name #:psi-)
            (:print-function print-partially-saturated-individual-structure))

  ;; from individual:
  ;;   id, type, binds, bound-in, rnodes

  lattice-point
    ;; a backpointer to the lp where it is recorded as an instance

  v+v
    ;; a list of the v+v objects accumulated by this psi.
    ;; It should chain from those in psi above it.

  source
    ;; the psi that this one builds on

 )

