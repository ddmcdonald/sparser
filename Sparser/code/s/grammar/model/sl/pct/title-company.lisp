;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "title+company"
;;;   Module:  "model;sl:pct:"
;;;  version:  April 1995

;; initiated 10/12/94. 4/12/95 fixed stupid bug where it made people instead
;; of companies. 3/16/05 Pulled the 'title of company' rule in favor of a 
;; schema on the position-at-co object

(in-package :sparser)

;;;-------------------------
;;; context sensitive rules
;;;-------------------------

(def-csr of-name of-company
  :left-context title
  :referent (:function interpret-name-as-company right-edge))
