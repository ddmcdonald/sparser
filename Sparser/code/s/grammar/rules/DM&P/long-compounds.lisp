;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "long compounds"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  November 1994

;; initiated 11/16/94 v2.3 by consolidating from other files

(in-package :sparser)

;;;------------------------------------------------------------------
;;; more than two adjacent terms that we'll have to re-analyze later
;;; once we've seen more instances of the term sets
;;;------------------------------------------------------------------

(define-category  unanalyzed-compound
  :specializes nil
  :instantiates self
  :binds ((terms . sequence))
  :index (:key terms))



;;;-----------------------------------------------------
;;; constructor called from mining or scanning routines
;;;-----------------------------------------------------

(defun construct-unanalyzed-multiword-compound (list-of-items)
  (let ((sequence (define-sequence list-of-items
                    category::unanalyzed-compound)))
    (define-individual 'unanalyzed-compound
      :terms sequence)))
