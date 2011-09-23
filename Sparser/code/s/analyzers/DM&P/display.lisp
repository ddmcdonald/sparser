;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "display"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  May 1994

;; initiated 5/24/94 v2.3

(in-package :sparser)

;;;--------------------------------
;;; print routines for the objects
;;;--------------------------------

(define-special-printing-routine-for-category   segment
  :short ((format stream "#<p~A ~A to p~A>"
                  (indiv-id obj)
                  (pos-token-index (value-of 'starts-at obj))
                  (pos-token-index (value-of 'ends-at obj))))
  :full ((format stream "#<segment~A from p~A to p~A>"
                 (indiv-id obj)
                 (pos-token-index (value-of 'starts-at obj))
                 (pos-token-index (value-of 'ends-at obj))))
  :string ((format nil "#<segment~A from p~A to p~A>"
                   (indiv-id obj)
                   (pos-token-index (value-of 'starts-at obj))
                   (pos-token-index (value-of 'ends-at obj)))))



(define-special-printing-routine-for-category   unknown-term
  :short ((format stream "#<\"~A\">"
                  (word-pname (value-of 'word obj))))
  :full ((format stream "#<term~A \"~A\">"
                 (indiv-id obj)
                 (word-pname (value-of 'word obj))))
  :string ((format nil "#<\"~A\">"
                   (word-pname (value-of 'word obj)))))

