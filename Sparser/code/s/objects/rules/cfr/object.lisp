;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   1.4 September 2013

;; 1.1  (v1.5) added new fields to handle the new rule regime
;; 1.2  (1/29 v1.8) Moved in Binary-rule?
;; 1.3  (7/30 v1.8.6) Added Polyword-rule?
;; 1.4  (2/16/98) added 'schema' field to cfrs.
;;      (2/7/05) added Unary-rule?
;;      (9/16/13) added category-to-apply
;; 1/5/2015 MAJOR CHANGE -- added new field rhs-forms to cfrs, and fill it from the ETF schema -- used to check syntactic plausibility of rule applications

(in-package :sparser)


(defstruct (cfr
            (:include unit)
            (:print-function print-cfr-structure))
  symbol
  category    ;; the lhs ("parent")
  rhs         ;; ordered list of categories or words
  rhs-forms   ;; orderd list of forms for the rhs (first start on syntax)
  completion  ;; a specialized expression or structure
  form        ;; the form category of the parent
  relation    ;; the grammatical relation this rule reflects
  referent    ;; the model object the edge will denote
  schema      ;; the case that spawned this rule when it comes from an etf
  )

;;;------------
;;; predicates
;;;------------

(defun binary-rule? (cfr)
  (and (null (cfr-completion cfr))
       (= 2 (length (cfr-rhs cfr)))))

(defun unary-rule? (cfr)
  (and (null (cfr-completion cfr))
       (= 1 (length (cfr-rhs cfr)))))

(defun polyword-rule? (cfr)
  (get-tag :polyword cfr))

;;;----------
;;; decoders
;;;----------

(defun category-to-apply (rule)
  "The rule was retrieved by hand and is being used for its parts.
This sorts out what to use as the category in the unusual cases."
  (ecase (cfr-completion rule)
    ((nil) (cfr-category rule))
    (:right-edge (form-rule-head-category rule :right-edge))
    (:left-edge (form-rule-head-category rule :left-edge))))


;;;---------------------------------------------
;;; accessing rules from the rule-sets of words
;;;---------------------------------------------

(defun find-form-cfr (word form)
  "Given a word, search its rule set for the first unary-rule
   of the specified form"
  (when (rule-set-p (rule-set-for word))
    (loop for cfr in (rs-single-term-rewrites (rule-set-for word))
      when (eq form (cfr-form cfr))
       do (return cfr))))

(defgeneric find-single-unary-cfr (word)
  (:documentation "Return the first unary rule for this word if there is one.
   Ignores the possibility of there being more than one rule.")
  ;; c.f. single-term-rewrite? in rules/rule-links/generic.lisp
  (:method ((word word))
    (let ((rs (rule-set-for word)))
      (when rs
        (let ((single-rewrites (rs-single-term-rewrites rs)))
          (when single-rewrites
            ;;/// check for there being more than one?
            (car single-rewrites)))))))

(defgeneric find-unary-cfr/referent (word category)
  (:documentation
   "Search through the unary rules of 'word' and collect all those
    whose referent is of the indicated category.")
  (:method ((pname string) (cat-name symbol))
    (let ((c (category-named cat-name :error-if-nil))
          (w (resolve pname)))
      (assert w (pname) "There is no already defined word for ~a" pname)
      (find-unary-cfr/referent w c)))
  (:method ((w word) (cat-name symbol))
    (let ((c (category-named cat-name :error-if-nil)))
      (find-unary-cfr/referent w c)))
  (:method ((w polyword) (cat-name symbol))
    (let ((c (category-named cat-name :error-if-nil)))
      (find-unary-cfr/referent w c)))
  (:method ((w word) (c category))
    (when (rule-set-p (rule-set-for w))
      (find-unary-cfr/referent (rule-set-for w) c)))
  (:method ((w polyword) (c category))
    (when (rule-set-p (rule-set-for w))
      (find-unary-cfr/referent (rule-set-for w) c)))
  (:method ((rs rule-set) (c category))    
      (loop for cfr in (rs-single-term-rewrites rs)
       as referent = (cfr-referent cfr)
       when (itypep referent c) ;; n.b. itypep takes anything
       collect cfr)))
    
