;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "approximator rules"
;;;    Module:  "model;dossiers:"
;;;   version:  November 1995

;; initiated 11/15/95

(in-package :sparser)


(def-form-rule (approximator np)
  :form np
  :referent (:daughter right-edge))

