;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  May 2015

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.
;; 4/15/15 modified resolve-hyphen-between-two-words to ignore syntax
;;  or form rules. 4/24/15 Debugged confustion in order of slash positions.
;; 5/15/15 Sited the handling of edges within patterns here for want of
;;  a better place. 
;; 5/30/2015 catch error caused by undefined words in resolve-hyphen-between-three-words before they get to make-hyphenated-triple
;; 6/27/2015 more informative error message in resolve-hyphen-between-two-terms when the right element is a word, not an edge
;; Moved out code to hyphen-patterns. 

(in-package :sparser)


;; endogenous C-RAF:B-RAF heterodimers
(defun divide-and-recombine-ns-pattern-with-colon (pattern words 
                                                   colon-positions hyphen-positions 
                                                   pos-before pos-after)
  (declare (ignore hyphen-positions colon-positions pattern))
  ;;(push-debug `(,hyphen-positions ,colon-positions ,pos-before ,pos-after ,words ,pattern))
  (let ((treetops (treetops-between pos-before pos-after)))
    (cond
     ((= (length treetops) 3)
      ;; nothing to do, there's already a parse of the consituents to either 
      ;; side of the colon
      (make-word-colon-word-structure (first treetops) (third treetops)))
     (*work-on-ns-patterns*
      (push-debug `(,treetops))
      (break "colon+hyphen stub: have to construct one of the constituents"))
     (t ;; bail
      (reify-ns-name-and-make-edge words pos-before pos-after)))))







    

