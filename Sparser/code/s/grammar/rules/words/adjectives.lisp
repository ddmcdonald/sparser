;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2014,2019-2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:words:"
;;;  version:  December 2020

;; initiated in 1/9/95. Redone in terms of fn words 4/12/95,
;; Rewritten from scratch 6/4/14. Added the other options 6/9/14
;; 8/8/14 Added parameter to check subcategorization info. 

(in-package :sparser)


(defun define-adjective (string
                         &key
                           form super-category
                           mixin
                           binds
                           bindings
                           realization
                           rule-label
                           discriminator
                           documentation)
  "The work is done by define-function-term, which creates the category
 for the adjective ('string') and the designated instance individual as
 the referent of the rewrite rule. See that function for the function
 of these arguments"
  (unless form
    (setq form 'adjective))
  (unless (member :adj realization)
    (setq realization `(:adj ,string ,@realization)))
  (define-function-term string form
    :super-category (or super-category 
                        (super-category-for-POS :adjective))
    :rule-label (or rule-label
                    'modifier)
    :mixins mixin
    :binds binds
    :realization realization
    :documentation documentation
    :discriminator discriminator
    :tree-families '(prenominal-adjective)
    :subcat-info 'adjective))

