;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "rules"
;;;   module:  "model;core:amounts:"
;;;  Version:  September 2007

;; original version initiated 10/2/91
;; completely made over 9/18/93 in new semantics.
;; Zero's 10/26/94 as subsumed by rdata -- nothing left but keeping
;; the file for later use.
;; 9/4/07 Added form rule for impuning type in "three swans". Put it here rather
;; than in numbers since it could have been "a dozen swans"

(in-package :sparser)

;;--- Transparently extending an NP

(def-form-rule (quantity np-head)
  :form np
  :referent (:function bind-open-var left-edge right-edge))


