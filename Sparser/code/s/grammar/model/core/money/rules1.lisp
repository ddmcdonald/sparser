;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:money:"
;;;  version:  1.0 July 1998

;; initiated 10/22/93 v2.3 from treatment of 11/91.
;; 1/5/96 added two preposition cases. 1/16 added rule for "cents"
;; 1.0 (7/12/98) stripped it. The regular rules are coming from the realization
;;      specification on the category now.

(in-package :sparser)


;;;--------------
;;; prepositions
;;;--------------

(def-cfr of-money ("of" money)
  :form pp
  :referent (:daughter right-edge))

(def-cfr to-money ("to" money)
  :form pp
  :referent (:daughter right-edge))


