;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:psi:"
;;;  version:  1.0 July 2009

;; initiated 2/15/99 excerpting from the original all-in-one structure file.
;; 3/26/00 Added an rnodes field. 4/19 pulled it because it's redundant (and
;; ignored) with the one already on individual.
;; 1.0 (7/25/09) Bumped to allow freedom is redesign of how psi work

(in-package :sparser)

(defstruct (psi
            (:include individual)
            (:conc-name #:psi-)
            (:print-function print-partially-saturated-individual-structure))

  ;; inherits from individual:
  ;;   id, type, binds, bound-in, rnodes

  lp  ;; a pointer to the lp that tells us what's bound/free

  v+v  ;; a list of the v+v objects accumulated by this psi.
       ;; Chains from those in psi above it.

  downlinks ;; alist by variable then by value to next psi(s) down

  source ;; the psi that this one builds on

  path  ;; the chain of psi that led to this one.

 )

