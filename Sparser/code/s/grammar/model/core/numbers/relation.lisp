;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "relation"
;;;   Module:  "model;core:numbers:
;;;  version:  September 2007

;; initiated 8/16/07. Got it working for "three swans" in conjunction
;; with rule in amount/rules 9/4.

(in-package :sparser)

;;;---------------------------------------------------------------------
;;; The relationship to 'swans' imposed by the 'three' in "three swans"
;;;---------------------------------------------------------------------

(define-category  quantity)

(define-category quantity-of ;; could be named 'amount-of' or 'number-of'
  :instantiates self
  :binds ((quantity  :or quantity number) ;; same as in measurement
	  (item . collection)
	    ;; we're inferring that it's a collection, this tells how many
	    ;; items there are in the collection after we've made the
	    ;; coersion (assuming we didn't already know it was a collection)
	  ))


;;; rules to recognize the adjectival use of numbers

(def-csr ones-number quantity
  :right-context np-head
  :referent (:instantiate-individual quantity-of
             :with (quantity left-edge)))
