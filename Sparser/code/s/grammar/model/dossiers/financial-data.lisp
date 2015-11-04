;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2000  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "financial data"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  2.0 September 2000

;; initiated 12/20/95. Elaborated through 1/9/96
;; 1.0 (7/12/98) Started to rework the files into the new era of lattice-points.
;; 2.0 (9/5/00) Started completely reworking the model given psi.

(in-package :sparser)

;;---------- 9/25/13 something appears to load this, but it's not supposed
;;   to be in the dossiers directory as it's a duplication of what's in sl.