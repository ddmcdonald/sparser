;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "fn word routine"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   0.9 June 2014

;; 0.1 (12/17/92 v2.3) redid the routine so it was caps insensitive and handled
;;      bracketing.
;; 0.2 (5/15/93) Added Function-word? and the marker on the word's plist
;; 0.3 (1/12/94) Having bracket assignment first remove any old brackets so that
;;      it's easy to make revisions.
;; 0.4 (7/29) extended the code to be able to handle polywords
;; 0.5 (8/7) removed its 'etypecase' and made the 'otherwise' nil.
;; 0.6 (10/24) embelleshed check to let brackets come in as bracket objects
;; 0.7 (11/16) added keyword for form category
;;     (5/12/95) fixed glitch in format stmt.
;;     (7/31/11) factored out backet operations as assign-brackets-to-word.
;;      and added make-minimal-word-form-rule
;; 0.8 (1/4/13) Moved in a generalized version of the define-adverb function
;;      that correctly build individuals and categories for meaning-bearing
;;      function words. (5/28/14) Smidgen of doc and clean-up. 
;; 0.9 (5/30/14) Adding more options to define-function-term to allow more
;;      tailoring of the results. 6/14/14 Replaced literal listing of POS
;;      bracket choices with new lists of them from rules/brackets/assignments

(in-package :sparser)


(defun function-word? (word)
  (typecase word
    (word (cadr (member :function-word (label-plist word))))
    (polyword
     (cadr (member :function-word (pw-plist word))))
    (otherwise
     nil )))


(defun define-function-word (string
                             &key ((:brackets bracket-symbols))
                                  ((:form name-of-form-category)))
  (let ((word (or (when (word-p string) string)
                  (when (polyword-p string) string)
                  (resolve-string-to-word/make string)))
        (form (if name-of-form-category
                (resolve-form-category name-of-form-category)
                t )))
    (etypecase word
      (word (setf (label-plist word)
                  `( :function-word ,form ,@(label-plist word) )))
      (polyword
       (setf (pw-plist word)
             `( :function-word ,form ,@(pw-plist word)))))

    (unless (rule-set-for word)
      (establish-rule-set-for word))

    (assign-brackets-to-word word bracket-symbols)

    word ))


(defun make-minimal-word-form-rule (word form-label)
  (let ((form-cat (resolve-form-category form-label)))
    (define-cfr word (list word)
      :form form-cat
      :referent word
      :source :form)))
  

;;--- auxiliaries

(defun resolve-form-category (form-label)
  (let ((category
         (etypecase form-label
           (symbol (category-named form-label))
           ((or referential-category mixin-category category)
            form-label))))
    (unless category
      (break "The category ~A isn't defined yet" form-label))
    (unless (form-category? category)
      (cerror "Just keep going"
              "You are proposing to use the category ~a~
             ~%as the form of a rule, but it's not defined as~
             ~%a form rule. See /grammar/rules/syntax/categories.lisp"
              form-label))
    category))



;;;-----------------------------------------------
;;; Generalized object creator for function words
;;;-----------------------------------------------

;; This is a generalization and extension of the pattern made
;; for adverbs circa December 2012 to better fit meaning-bearing 
;; function words into the method-application machinery.

;; It presently presumes that the tree-family is one of a small
;; set that involve a single label and lead to form-rules.
;; See etf-form-substitution-label for the list. 

;; (setq *name* T)
(defparameter *ignore-redefine-warning* nil)

(defun define-function-term (string form 
                             &key  brackets super-category
                                   rule-label discriminator
                                   tree-families)
  (unless form
    (setq form 'standalone)) ;; seems safest
  (unless brackets
    (setq brackets
          (case form ;; match with values in rules/brackets/assignments (!!)
            (adverb *adverb-brackets*)
            (comparative *comparative-brackets*)
            ((adjective spatial-adjective temporal-adjective) *adjective-brackets*)
            (det *default-determiner-brackets*)
            (standalone *standalone-brackets*)
            (otherwise
             (break "Need brackets for another syntactic form: ~a" form)))))
  (unless super-category
    (setq super-category 'adverbial))
  (when rule-label
    (setq rule-label (category-named rule-label :break-if-none)))

  (let ((word (if (typep string 'word)
                (prog1 string
                  (assign-brackets-to-word string brackets))
                (define-function-word string 
                  :brackets brackets ;; this does bracket assignment
                  :form form))))
    (let* ((base-name (name-to-use-for-category string))
           (category-name 
            (if discriminator ;;/// check mlisp version
              (intern (string-append base-name "-" discriminator)
                      (find-package :sparser))
              base-name)))
      (when (category-named category-name)
        (when *ignore-redefine-warning*
        (cerror "Ignore and keep going"
                "We're about to redefine the category ~a" category-name)))
    

      (let ((category ;; for the function word
             (define-category/expr category-name  ;; e.g. 'only'
               `(:specializes ,super-category
                 :instantiates :self ;;?? super-category ??
                 :rule-label ,(or rule-label
                                  super-category)
                 :bindings (name ,word)))))
       
        (let ((rule
               ;; Create the single-term rule that rewrites the word
               ;; as the category we've created for it
               (define-cfr (or rule-label
                               category)
                           (list word)
                 :form (category-named form)
                 :referent category)))
          (push-onto-plist category rule :rule)

          (when tree-families
            ;; Now knit the category into the right set of form rules
            (unless rule-label
              ;; But if there's a specified rule-label, e.g. specifying
              ;; sequencer for "next" instead of using the category
              ;; for "next" that we just created, then any other,
              ;; e.g., sequencer/determiner would make those same
              ;; form rules and we'd get a clash.
              (apply-function-term-etf category tree-families)))
 
          (values category
                  rule))))))



(defun apply-function-term-etf (category raw-tree-family-data)
  "We recreate rdata expressions where the mapping is just one
   label, which we replace with category, then we apply a farily
   deep entry point inside model/tree-tamilies/driver to create
   the rule."
  (let ( tree-family-pairs )
    (dolist (raw raw-tree-family-data)
      (cond
       ((symbolp raw)
        (let ((etf (exploded-tree-family-named raw)))
          (unless etf
            (error "There is no etf named ~a" raw))
          (push `(,etf ,(etf-form-substitution-label etf))
                tree-family-pairs)))
       (t
        (break "New case of raw tree-family-data: ~a" raw))))

    (dolist (tr-pair tree-family-pairs)
      (let* ((etf (car tr-pair))
             (schemas (etf-cases etf))
             (label (cadr tr-pair))
             (mapping `((,label . ,category)) )
              rules )
        (let ((*convert-eft-form-categories-to-form-rules* t))
          (declare (special *convert-eft-form-categories-to-form-rules*))
          (dolist (schema schemas)
            (let ((rule (instantiate-rule-schema
                         schema mapping category)))
              (push rule rules)))
          (add-rules-to-category category rules))))))


(defun etf-form-substitution-label (etf)
  (unless (memq (etf-name etf)
                '(generic-np-premodifier
                  prenominal-adjective
                  pre-verb-adverb 
                  post-verb-adverb 
                  sentence-adverb
                  pre-adj-adverb
                  pre-adv-adverb))
    (error "Haven't yet vetted this ETF for form rules: ~a" etf))
  (car (etf-labels etf)))

