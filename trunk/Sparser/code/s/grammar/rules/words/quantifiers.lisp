;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "quantifiers"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   1.0 November 1994

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/13/94
;; 0.1 (7/25) revised "many" and "several" to be like the others rather than
;;      just having a ].phrase bracket
;; 0.2 (8/16) gave "not" a tentative bracketing   9/6 "{some,any,every}one", "much"
;; 1.0 (11/16) giving some of them all default edges so dm&p can generalize over them
;;      The ones that stand alone are still problematic

(in-package :sparser)

(define-category  quantifier
  :specializes nil
  :instantiates nil
  :binds ((word  :primitive word))
  :index (:key word))

(defun define-quantifier/determiner (string &key brackets)
  (let* ((word (define-function-word string
                 :brackets brackets
                 :form 'quantifier))
         (object (find-individual 'quantifier
                                  :word word)))
    (unless object
      ;; it's the first time the definition has been made.
      ;; Subsequent evaluations of the form will still update
      ;; the bracket information since that's done within the
      ;; function word processing regardless of whether the word
      ;; already exists
      (setq object (define-individual 'quantifier
                     :word word))
      (let ((cfr (def-form-rule/resolved 
                   `(,word ,category::noun)       ;; rhs
                   category::np                   ;; form
                   `(:daughter right-referent)))) ;; referent
        (push-onto-plist object `(,cfr) :rules)))
    object ))
                   


(define-quantifier/determiner "all"     :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "any"     :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "both"    :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "each"    :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "every"   :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "some"    :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "few"     :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "many"    :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "several" :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "such"    :brackets '( ].phrase  .[np ))


(define-function-word "much"    :brackets '( ].phrase  .[np ))

(define-function-word "none" :brackets '( ].phrase  phrase.[ ))

(define-quantifier/determiner "no"   :brackets '( ].phrase  .[np ))


(define-function-word "not"  :brackets '( ].phrase ))  ;; ??
  ;; gets you out of a problem with "...be careful not to..."
  ;; where without this there's a break before "to"


(define-quantifier/determiner "another"   :brackets '( ].phrase  .[np ))
(define-quantifier/determiner "other"     :brackets '( ].phrase  .[np ))

(define-function-word "others"  :brackets '( ].phrase  .[np  np]. ))


(define-function-word "something" :brackets '( ].phrase  .[np ))
(define-function-word "nothing"   :brackets '( ].phrase  .[np ))
(define-function-word "anything"  :brackets '( ].phrase  .[np ))


(define-function-word "someone"  :brackets '( ].phrase  .[np  np]. ))
(define-function-word "everyone" :brackets '( ].phrase  .[np  np]. ))
(define-function-word "anyone"   :brackets '( ].phrase  .[np  np]. ))
(define-function-word "no one"    :brackets '( ].phrase  .[np  np]. ))



