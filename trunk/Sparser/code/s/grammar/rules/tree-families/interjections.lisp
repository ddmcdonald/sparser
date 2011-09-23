;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "interjections"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  July 2009

;; initiated 7/23/09

(in-package :sparser)

#| ETFs in this file:

    sentence-interjection ------------ "ok you can go"
|#

(define-exploded-tree-family sentence-interjection
  :description ""
  :binding-parameters ( modifier )
  :labels ( interjection )
  :cases
    ((:modifier (s (interjection s)
		   :head right-edge
		   :binds (modifier left-edge)))
     (:modifier (vp (interjection vp)
		    :head right-edge
		    :binds (modifier left-edge)))))