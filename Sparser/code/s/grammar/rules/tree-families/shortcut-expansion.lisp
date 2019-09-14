;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-expansion"
;;;   Module:  "grammar;rules;tree-families;"
;;;  Version:  December 2018

;; Broken out of shortcut-master 9/21/14 to allow both files to be
;; seen at once now that the cases have gotten intricate.
;; 1/14/2015 Changes to put :subject and :object selectional restrictions
;; in the subcat frame. 3/16/15 Small tweeks, lots of renaming to
;; handle multiple v/r's leading to multiple rules. 
;; 8/11/16 Revised and simplified.

(in-package :sparser)

;;;-----------------------
;;; Assembling ETF schema
;;;-----------------------
                
(defun make-scheme-mapping (schema args-to-substitute category)
  "Rebuild the schematic mapping into a real mapping according to the
   category-specific substitution arguments; cf. decode-rdata-mapping,
   which calls this function on its way out to return to setup-rdata
   the values it expects."
  (loop for (term . value) in (schema-mapping schema)
     if (or (eq value :self)
            (eq value 'self))
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
  ;; Had mapped self to [ collect `(,parameter ,category) ] but the
  ;; rationale for that goes back to a incremental parsing design
  ;; and it's just clutter from an NLG perspective
  (loop for (parameter . schematic-value) in schematic-map
     unless (or (eq schematic-value :self)
                (eq schematic-value 'self))
     collect (cons parameter
                   (let ((value (or (cdr (assq schematic-value substitution-map))
                                    (error "No value for ~a among the substitution args."
                                           schematic-value))))
                     (etypecase value
                       (lambda-variable
                        value))) )))
