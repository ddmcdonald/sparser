;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "actions"
;;;   Module:  "model:sl:NIH:"
;;;  version:  September 1996

;; started 9/12/96

(in-package :sparser)

#|  This is a stand-in for a more specific, though-out treatment. 
    It's intended for the cases in the shc abstract:
          "autophosphorylation site"
          "phosphorylation of Shc proteins"    |#

(define-category  biological-activity
  :instantiates self
  :specializes event
  :binds ((name (:primitive word)))   ;; obviously incomplete
  :index (:permanent :list)
  :realization (:word name))   ;; ? add a case called 'gerund' to automatically
                               ;; snarf that of phrase ??


(define-individual 'biological-activity
  :name "autophosphorylation")

(define-individual 'biological-activity
  :name "phosphorylation")

