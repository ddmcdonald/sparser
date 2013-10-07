;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "clos-operations"
;;;   Module:  tools/basics/
;;;  Version:  October 2013

;; Initiated 10/4/13 to hold general methods on the basic clos-classes,
;; mostly as influenced by the needs of document elements and containers.

(in-package :sparser)

(defun do-over-ordered-chain (sentence)
  (loop 
    (display-contents sentence)
    (unless (slot-boundp sentence 'next)
      (return))
    (setq sentence (next sentence))))

(defmethod first-in-the-chain ((o ordered))
  (let ((item o))
    (loop
      (unless (slot-boundp item 'previous)
        (return item))
      (setq item (previous item)))))
