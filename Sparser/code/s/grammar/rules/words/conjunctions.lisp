;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "conjunctions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.3 August 2014

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/11/94
;; added conjunction.] to "and" and "or" 3/17
;; 0.1 (5/12) removed conjunction.] -- solved segmentation problem better.
;;     (9/27) added "instead"
;;     (4/17/10] Added "thus"
;; 0.2 (11/22/12) reorganized the list under a simpler scheme of passing
;;      it through one function and added in a bunch from Comlex (particulary
;;      the multi-word ones). 12/4/12 Removed "only" in favor of its reading
;;      as an approximator. 8/28/14 Added "whereas"
;; 0.3 (8/31/14) Rewriting these as things that make an edge and have form
;;      labels so the new forest sweep can see them. Modeling them sort of
;;      on the way quantifiers are treated. 

(in-package :sparser)

;;--- these augment the definitions as form categories

(define-category conjunction
  :binds ((word  :primitive word)))

(define-category subordinate-conjunction
  :binds ((word  :primitive word)))

 
(defun define-conjunction (string &key brackets form)
  ;; Most conjunctions are subordinate conjunctions taking complements
  ;; rather than simple ones composing the phrases on their two sides
  ;; so that's the way the defaults are setup. 
  (unless brackets
    (setq brackets '( ].phrase  phrase.[ )))
  (unless form
    (setq form 'subordinate-conjunction))
  (let* ((word (define-function-word string
                 :brackets brackets
                 :form form))
         (category-name (name-to-use-for-category string))
         (object (find-individual form :word word))
         (superc (ecase form
                   (conjunction category::conjunction)
                   (subordinate-conjunction category::subordinate-conjunction)))
         cfrs )

    (let* ((category-form
            `(define-category ,category-name
               :specializes ,superc
               :instantiates :self
               :bindings (word ,word)))
           (category (eval category-form)))

      (unless object
        (setq object (define-individual form
                        :word word)))

      (let ((cfr ;; the base rule for the word
             (def-cfr/expr category ;; lhs
                    (list word) ;; rhs
                :form form
               :referent object)))
        (push cfr cfrs))

      (push-onto-plist object cfrs :rules)
      object )))
    

;;------- simple conjunctions

(define-conjunction "and" :form 'conjunction
  :brackets '( ].conjunction conjunction.[ ))

(define-conjunction "or"  :form 'conjunction
  :brackets '( ].conjunction conjunction.[ ))


;;------- paired coordinators
;;/// How do we represent their paired-ness ?

(mapcar #'define-conjunction
        '("neither" "nor"
          "if" "then" 
          ))

;;;------ subordinating conjunctions

(mapcar #'define-conjunction
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


