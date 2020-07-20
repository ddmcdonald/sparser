;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 David D. McDonald all rights reserved
;;;
;;;      File: "infer-rules"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: July 2020

;; Initiated 7/15/20 to hold the actual 'grammar' for inferring
;; new rules from patterns in the debris

(in-package :sparser)


(defun infer-preposition-rule (word pp head)
  "The treetops 'pp' and 'head' are edges. The head is the edge
   returned by rightmost-salient-constituent applied to the treetop
   just to the left of the preposition (nearly always embedded in
   the pp). The 'word' is the preposition as a word, added to the
   trigger by make-preposition-trigger when it defined the
   function."  
  ;;/// check for "and" &such as the head
  (record-instance-of-preposition-pattern
   word pp head))
          
 
(make-preposition-trigger "against")
(make-preposition-trigger "as")
(make-preposition-trigger "at")
(make-preposition-trigger "between")
(make-preposition-trigger "by")
(make-preposition-trigger "in")
(make-preposition-trigger "from")
(make-preposition-trigger "of")
(make-preposition-trigger "on")
(make-preposition-trigger "to")
(make-preposition-trigger "with")
(make-preposition-trigger "via")
