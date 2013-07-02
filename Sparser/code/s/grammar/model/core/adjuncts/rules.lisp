;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "rules"
;;;    Module:  "grammar;model:core:adjuncts:"
;;;   version:  July 2013

;; This file is loaded after the regular grammar/model so that it can
;; freely refer to categories form any other module

;; initiated 7/1/13

(in-package :sparser)

(def-form-rule (sequencer np)
  :form np
  :referent (:head right-edge
             :method compose left-edge right-edge))


(def-k-method compose (sequencer amount-of-time)
  ;; "(the) last three years"
  (declare (ignore sequencer)) ;; should instantiate a new category
  amount-of-time)