;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "caps fsa"
;;;   Module:  "tokenizer;"
;;;  Version:  0.1 June 1993

;; initated 9/28/92 v2.3
;; 0.1 (6/10/93) added :mixed-case state cases

(in-package :sparser)

;;;-----
;;; fsa
;;;-----

;; It's a bit tricky since the data on the characters comes in
;; in reverse order since we're popping off a list.  As a result
;; we have one extra call via a different function once all the
;; characters have been seen, and it's that one that has to return
;; a canonical value.
  
(defun capitalization-fsa (keyword state)
  ;; called from Finish-token as each character-descriptor set
  ;; is kpopped from the accumulated entries. Returns the next
  ;; state, with the record of the state kept by the caller
  (ecase keyword
    (:lowercase
     (ecase state
       (:start
        :all-lowercase-so-far)
       (:all-lowercase-so-far
        :all-lowercase-so-far)
       (:all-uppercase-so-far
        :mixed-case)
       (:lowercase-but-just-saw-a-capital
        :mixed-case)
       (:mixed-case
        :mixed-case)
       ))
    (:uppercase
     (ecase state
       (:start
        :all-uppercase-so-far)
       (:all-uppercase-so-far
        :all-uppercase-so-far)
       (:all-lowercase-so-far
        :lowercase-but-just-saw-a-capital)
       (:lowercase-but-just-saw-a-capital
        :mixed-case)
       (:mixed-case
        :mixed-case)
       ))
    (:digit :digits)))


(defun cleanup-call-to-caps-fsa (state word-length)
  (ecase state
    (:all-lowercase-so-far
     :lower-case )
    (:lowercase-but-just-saw-a-capital
     :initial-letter-capitalized )
    (:all-uppercase-so-far
     (if (= 1 word-length)
       :single-capitalized-letter
       :all-caps ))
    (:digits :digits)
    (:mixed-case
     :mixed-case)))

