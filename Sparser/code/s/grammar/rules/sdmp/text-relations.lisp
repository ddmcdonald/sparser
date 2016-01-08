;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relations"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: March 2013

;; initiated 3/9/13. Rough version on 13th.

(in-package :sparser)

;;-- The top class 'common' is defined explicitly 

(def-text-relation segment-level (common)
  :slots ((start-pos :initarg :start-pos :accessor start-pos)
          (end-pos :initarg :end-pos :accessor end-pos))
  :action note-segment-location)

(def-text-relation head (segment-level)
  :slots ((head :type (or word polyword) :initform nil :initarg :head :accessor head-word))
  :args (word))

(def-text-relation classifier-head (segment-level)
  :slots ((classifier :type word :initarg :classifier
                      :accessor classifier-of-head)
          (classified-head :type (or word polyword) :initarg :classified-head 
                           :accessor classified-head))
  :args (classifier head))

(def-text-relation modifier-head (segment-level)
  :slots ((modifier :type word :initarg :modifier
                      :accessor modifier-of-head)
          (modified-head :type (or word polyword) :initarg :modified-head 
                         :accessor modified-head))
  :args (modifier head))

(def-text-relation adjacent (segment-level)
  :slots ((left :type word :initarg :left
                :accessor left-side)
          (right :type word :initarg :right
                 :accessor right-side))
  :args (left right))

