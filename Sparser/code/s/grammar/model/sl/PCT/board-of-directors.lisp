;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "board of directors"
;;;   Module:  "model;sl:pct:"
;;;  version:  March 2005

;; initiated 10/7/94. 1st version finished 10/17. 3/16/05 Gave it some
;; realizations, working towards getting a psi out of "the board" when
;; the company isn't in construction with it.

(in-package :sparser)


(define-category  board-of-directors
  :specializes nil
  :instantiates self
  :binds ((company . company))
  :index (:key company)
  :realization ((:common-noun "board")
                (:tree-family  group-of-type
                 :mapping ((np . :self)
                           (complement . "directors")
                           (group . :self)
                           (type . company)))
                (:tree-family  np-common-noun/intrinsically-definite
                 :mapping ((np . :self)
                           (n-bar . :self)
                           (np-head . :self)))))

