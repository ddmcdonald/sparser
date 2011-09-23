;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "percentages"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  1.3 July 1998

;; 1.1 (7/16/92 v2.3) pilot instances of the new representation regime
;; 1.2 (1/10/94) stubbed measurement to get around load-order paradox
;;     (1/9/96) added string printer
;; 1.3 (7/5/98) redone with a schematic realization.

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

