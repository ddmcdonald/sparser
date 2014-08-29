;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "conjunctions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.2 August 2014

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/11/94
;; added conjunction.] to "and" and "or" 3/17
;; 0.1 (5/12) removed conjunction.] -- solved segmentation problem better.
;;     (9/27) added "instead"
;;     (4/17/10] Added "thus"
;; 0.2 (11/22/12) reorganized the list under a simpler scheme of passing
;;      it through one function and added in a bunch from Comlex (particulary
;;      the multi-word ones). 12/4/12 Removed "only" in favor of its reading
;;      as an approximator. 8/28/14 Added "whereas"

(in-package :sparser)


;;--- Package up part of define-function-word, 
;;      allowing some options in the form category

(defun define-isolated-function-word (string &key form)
  (unless form
    (setq form 'subordinate-conjunction))
  (define-function-word string
    ;; Keep brackets here and in assign-brackets-to-standalone-word
    ;; in sync.
    :brackets '( ].phrase  phrase.[ )
    :form form))
    

;;------- simple conjunctions

(define-function-word "and" :brackets '( ].conjunction conjunction.[ ))
(define-function-word "or"  :brackets '( ].conjunction conjunction.[ ))


;;------- paired coordinators

(mapcar #'define-isolated-function-word
        '("neither" "nor"
          "if" "then" 
          ))

;;;------ subordinating conjunctions

(mapcar #'define-isolated-function-word
        '(
          "according as"
          "albeit"
          "although" 
          "among" 
          "as far as"
          "as if"
          "as soon as"
          "as though"
          "because"
          "besides"
          "but"    
          "even"
          "except"
          "except that"
          "however"
          "instead" 
          "inasmuch as"
          "lest"
          "on grounds that"
          "on the grounds that"
          "once"
          "otherwise"
          "prior to"
          "since"  
          "so"
          "such as"
          "such that"
          "though"
          "till"
          "thus"  
          "whereas"
          "while"   
          "unless"  
          "until"   
          "upon"
          ))


