;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2011-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  1.2 January 2013

;; initiated 5/16/93 v2.3. Populated 1/11/94. Added to 1/12,1/13
;; 0.1 (5/26) redid the bracket label as 'adverb'
;; 0.2 (1/30/95) redid the adverb-adverbs as 'phrase' rather than 'adverb'
;;      to block triggering vg-mining of the segments they start
;; 0.3 (4/12) redone as 'define-adverb', etc.
;; 0.4 (10/13) redefined Define-adverb and moved it to [syntax;adverbs]
;;     (4/24/08) added more words. Moved in the category and def form
;;      from rules/syntax/adverbs to make this file more in the style
;;      of words/quantifies1, largely to keep "despite" from being spanned
;;      as a head noun because the 'adverb' aspect isn't introducing
;;      an edge. 
;;     (2/3/10) removed "few" since it should really be taken as a quantifier
;;     (2/10) Gave "too" and "very" ].adverb brackets: "a very small ..."
;; 1.0 (9/16/11) Very thorough make over now that methods are available.
;;     (3/2/12) Accommodate to adverbs coming in from Comlex. 
;; 1.1 (12/4/12) added .[adverb to the default to match what was done in
;;      morphology1 (now rules/brackets/assignments). 
;; 1.2 (12/15/12) Reworked it extensively so the category for the adverb
;;      is used in the cfr rather than 'adverbial' and we make an instance 
;;      of the category to serve as the referent, along with a shadow
;;      instance to use in the methods. (1/9/13) Moving out all
;;      the words per se to dossiers;modified so they can go through more
;;      specific definitions rather than the old two-step dance that had
;;      so much inconsistency.

(in-package :sparser)

;;;------------------------------------------------------------------------
;;; 
;;;------------------------------------------------------------------------
  
;;  This is one of the few places where I'd be comfortable with
;;  form+form rules.

;; N.b. Generalized this code into define-function-term
;; So should change this over too to avoid gratuitous digression. 

(defun define-adverb (string &key brackets super-category)
  ;; Create a category for the word that specialization of adverbial
  ;; but gets the label 'adverbial' so we can use the form rules
  ;; it defines, keeping the identity to use at a semantic level.
  ;; Sort of like the earlier 'anonymous-adverb' but with more
  ;; content.
  (unless brackets
    ;; Match these with set in assign-brackets-to-adverb that runs when
    ;; we get an adverb in a tree-family mapping. 
    (setq brackets '( ].adverb .[adverb)))
  (unless super-category
    (setq super-category 'adverbial))
  (let* ((category-name (name-to-use-for-category string))
         (word (if (typep string 'word)
                 (prog1
                     string
                   (assign-brackets-to-word string brackets))
                 (define-function-word string 
                   :brackets brackets ;; this does bracket assignment
                   :form 'adverb)))
         (category (category-named category-name))
         (new? (null category)))
    (when new?
      (let ((expr `(define-category ,category-name
                     :specializes ,super-category
                     :instantiates :self
                     :rule-label ,super-category
                     :bindings (name ,word)
                     :binds ((value)))))
        (setq category (eval expr))
        (let* ((individual (make-category-indexed-individual category)))               
          (create-shadow individual)
          (let ((rule    
                 (define-cfr category (list word)
                   :form (category-named 'adverb)
                   :referent individual)))
            (push-onto-plist category rule :rule)))))
    category))
