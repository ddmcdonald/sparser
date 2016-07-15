;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; copyright (c) 2006-2007 BBN Solutions LLC.  -- all rights reserved
;;; 
;;;     File:  "punctuation rules"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  July 2016

;; 11/2006 version had a generic treetop action for hyphen
;; that was just an unfinished stub.

(in-package :sparser)

(defun create-punctuation-edge-rule (character)
  "Type-checking and uniform layout around standard rule-creating
   code."
  (let ((word (etypecase character
                (character (punctuation-named character))
                (word (assert (punctuation? character))
                      character))))
    
    (let ((rule (define-cfr word `(,word)
                  :form (category-named 'punctuation)
                  :referent word)))
      
      (setf (get-tag :rules word) `(,rule))
      
      (values word
              rule))))


(create-punctuation-edge-rule #\:)

