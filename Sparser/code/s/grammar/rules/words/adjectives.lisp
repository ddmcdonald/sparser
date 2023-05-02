;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2014,2019-2023  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:words:"
;;;  version:  May 2023

;; initiated in 1/9/95. Redone in terms of fn words 4/12/95,
;; Rewritten from scratch 6/4/14. Added the other options 6/9/14
;; 8/8/14 Added parameter to check subcategorization info. 

(in-package :sparser)


(defun define-adjective (string
                         &key
                           form super-category
                           ((:cat use-cat-name))
                           er-est
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

  (let ((category
         (define-function-term string form
           :super-category (or super-category 
                               (super-category-for-POS :adjective))
           :use use-cat-name
           :rule-label (or rule-label
                           'modifier)
           :mixins mixin
           :binds binds
           :bindings bindings
           :realization realization
           :documentation documentation
           :discriminator discriminator
           :tree-families '(prenominal-adjective)
           :subcat-info 'adjective)))

    (when er-est
      ;; This is convoluted, but seemed to be the best of bad alternative
      ;; when setup-adjective was augmented to look for Comlex-specified
      ;; comparative words. The setup calls setup-anonymous-graded-adjective
      ;; to make it all work. This amounts to a recoding of the key parts
      ;; of it since from this direction the packaging is different.
      ;; /// if we were being 'correct' we'd abstract out this shared
      ;; suffix.
      (flet ((filter-out-more (er-est)
               (etypecase er-est
                 (string (unless (string-equal "more " (subseq er-est 0 5)) er-est))
                 (list (loop for s in er-est ; introduces a list we have to check for
                          unless (string-equal "more " (subseq s 0 5))
                          collect s)))))   
        (let ((comparative (filter-out-more (car er-est)))
              (superlative (filter-out-more (cdr er-est)))
              (attribute (create-scalar-attribute (resolve string))))
          (setup-comparatives (resolve string) ; base-adjective
                              (cat-name attribute)
                              string
                              nil ;  direction-flag
                              ;; Assumes the 'more' form is second
                              (if (consp comparative) (car comparative) comparative) ; er
                              (if (consp superlative) (car superlative) superlative) ; est
                              ))))
    category))

