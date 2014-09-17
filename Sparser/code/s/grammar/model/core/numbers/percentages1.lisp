;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "percentages"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  1.3 September 2014

;; 1.1 (7/16/92 v2.3) pilot instances of the new representation regime
;; 1.2 (1/10/94) stubbed measurement to get around load-order paradox
;;     (1/9/96) added string printer
;; 1.3 (7/5/98) redone with a schematic realization.
;;     (9/9/14) added 'n-fold'

(in-package :sparser)

;; referenced by percent before it's loaded itself, so we supply a stub
(define-category  measurement
  :specializes nil)

;;;--------
;;; object
;;;--------

(define-category percent
  :instantiates :self
  :specializes  measurement
  :binds  ((number . number))
  :index (:temporary :list)
  :realization (:tree-family item+idiomatic-head
                :mapping ((np . :self)
                          (np-head . ("percent" "%"))
                          (modifier . number)
                          (result-type . :self)
                          (item . number))))


(defun string/percent (p)
  (format nil "~A%" (string-for (value-of 'number p))))



;;;--------
;;; N-fold
;;;--------
;; These describe changes in amount.
;;/// we ought to reflect that is some relation that 
;; can be used to organize search if it's not in construction
;; this this

(define-category n-fold
  :instantiates :self
  :specializes  measurement
  :rule-label measurement
  :binds  ((number . number))
  :index (:temporary :list)
  :realization (:tree-family item+idiomatic-head
                :mapping ((np . :self)
                          (np-head . "fold")
                          (modifier . number)
                          (result-type . :self)
                          (item . number))))

