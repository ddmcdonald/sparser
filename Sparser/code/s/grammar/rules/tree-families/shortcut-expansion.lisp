;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-expansion"
;;;   Module:  "grammar;rules;tree-families;"
;;;  Version:  May 2017

;; Broken out of shortcut-master 9/21/14 to allow both files to be
;; seen at once now that the cases have gotten intricate.
;; 1/14/2015 Changes to put :subject and :object selectional restrictions
;; in the subcat frame. 3/16/15 Small tweeks, lots of renaming to
;; handle multiple v/r's leading to multiple rules. 
;; 8/11/16 Revised and simplified.

(in-package :sparser)

;;;-----------------------------
;;; Prepositions owned by verbs
;;;-----------------------------

(defun apply-preposition (pname preposition category)
  (declare (ignore pname))
  (let* ((prep (resolve/make preposition))
         (prep-label (single-rewrite-label-over prep)) ;; fails if none
         (rule (define-cfr category `(,category ,prep-label)
                 :form category::vg
                 :referent '(:daughter left-referent))))
    (add-rule rule category)
    (assign-subcategorization category :prep prep nil)))

(defmethod single-rewrite-label-over ((pname string))
  (let ((word (word-named pname)))
    (unless word (error "There is no word spelled ~s" pname))
    (single-rewrite-label-over word)))

(defmethod single-rewrite-label-over ((w word))
  (let ((rs (word-rule-set w)))
    (unless rs (error "There is no rule set on ~a" w))
    (let ((single-term (rs-single-term-rewrites rs)))
      (unless single-term
        (error "~s does not have an single-term rewrite rules"
               (word-pname w)))
      ;; The motivating case is prepositions, so lets not
      ;; worry about multiple rewrite rules yet.
      (let ((rule (car single-term)))
        (cfr-category rule)))))


;;;-----------------------
;;; Assembling ETF schema
;;;-----------------------
                
(defun make-scheme-mapping (schema args-to-substitute category)
  "Rebuild the schematic mapping into a real mapping according to the
   category-specific substitution arguments; cf. decode-rdata-mapping."
  (loop for (term . value) in (schema-mapping schema)
        if (eq value :self)
          collect (cons term (or (override-label category) category))
        else if (stringp value)
          collect (cons term (resolve/make value))
        else
          collect (cons term
                        (let ((value (or (cdr (assq value args-to-substitute))
                                         (error "No value for ~a among the substitution args."
                                                value))))
                          (etypecase value
                            ((or category lambda-variable)
                             value)
                            (symbol
                             (or (category-named value)
                                 (find-variable-in-category value category)
                                 (error "No category or variable named ~a." value)))
                            ((cons (eql :or))
                             (assert (every #'category-p (cdr value))
                                     ((cdr value))
                                     "Bad disjunctive value restriction.")
                             (cdr value)))))))

(defun make-mumble-mapping (schematic-map substitution-map category)
  "Use the regular substitution map for this category to the replace the
   terms in the parameter mapping (e.g. subj-slot)."
  (loop for (parameter . schematic-value) in schematic-map
     if (eq schematic-value :self)
     collect `(,parameter ,category)
     else
     collect (cons parameter
                   (let ((value (or (cdr (assq schematic-value substitution-map))
                                    (error "No value for ~a among the substitution args."
                                           schematic-value))))
                     (etypecase value
                       (lambda-variable
                        value))) )))
