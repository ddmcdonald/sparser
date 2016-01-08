;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 the SIFT-Brandeis C3 project  -- all rights reserved
;;;
;;;     File:  "draft-lexicon"
;;;   Module:  "grammar/sl/ISR/
;;;  version:  October 2013

;; Initiated 10/29/13 to try out forms

(in-package :sparser)

;; N.b. this file is in the loader but commented out.
;; (gload "isr;draft-lexicon")


;;---- Generation goal: "Ford makes trucks"

;; 1st try
(realization-pattern ;; clearly a macro. Easy to imagine abbreviated form
 :for maker-of-artifacts
 :where (agent = has-name) ;; pairs, for each restricted variable
)


;; 2d try
;; word, template, restrictions on its parts
(def-realization-form ("make" :ed-form "made") SVO
  ;; have to indicate that the verb is the word part ??
  ;; Or maybe fold into the mapping -- just have the template first,
  ;; though it's easy to get nice indentation if the form is
  ;;   (def-xxx item1 item2
  ;;     :keywords
  ;;
  ;;  Oh -- have to give the type of "make" too
  :restrictions ;; or :mapping, :constraints, ...
     ((s . maker-of-artifacts)
      (o . artifact)))



;; 3d try
(def-rspec (:verb "enter") transition 
  SVO 
  (s . can-change-location)
  (o . c3-region))

;; 4th
(define-realization 


