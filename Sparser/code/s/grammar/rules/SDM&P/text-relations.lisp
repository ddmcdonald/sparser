;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relations"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: March 2013

;; initiated 3/9/13

(in-package :sparser)
#|
(def-text-relation common ()
  :slots ((incident-count :type integer :accessor incident-count))
  :doc "The 'top' relation. Reposible for counting instances
    and any actions or slots shared by all the relations")

(def-text-relation segment-level (common)
  :slots ((start-pos :accessor start-pos)
          (end-pos :accessor end-pos))
  :action note-segment-location)

(def-text-relation head (segment-level)
  :slots ((head :type word :initform nil :accessor head-word))
  :args (word))
|#