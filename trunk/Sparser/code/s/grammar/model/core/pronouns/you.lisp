;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "you"
;;;   Module:  "model;core:pronouns:"
;;;  version:  November 1994

;; initiated 11/14/94

(in-package :sparser)


(def-form-rule  ( pronoun/second  noun )
  :form np
  :referent (:
