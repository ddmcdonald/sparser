;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debris-sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

;; Initiated 1/15/20 to identify discourse relations and other
;; patterns in the debris left after pass one. Design is similar
;; to sweep-sentence-treetops but maintains state across multiple
;; sentences.

(in-package :sparser)

