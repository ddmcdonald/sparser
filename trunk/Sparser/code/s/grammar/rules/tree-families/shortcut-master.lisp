;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  November 2014

;; Initiated 9/14/14 to make more flexible, complete shortcuts.
;; 11/11/14 added keyword for obo-id

(in-package :sparser)


(defmacro def-term (word form tree-families &rest parameter-plist)
  ;;/// simplest data checks on the minimal args
  `(def-term/expr ,word ',form ',tree-families ',parameter-plist))

(defun def-term/expr (word form tree-families parameter-plist)
  (apply #'decode-def-term-call word form tree-families parameter-plist))

(defun decode-def-term-call (pname pos tree-families 
                             &key nominalization adjective preposition
                                  super-category obo-id irregular
                                  mixin restrict rule-label
                                  subject theme goal complement 
                                  subcategorization
                                  agent patient by-category)
  (unless (symbolp pos) (error "The form must be a symbol"))
  (unless (keywordp pos)
    (setq pos (intern (symbol-name pos) (find-package :keyword))))
  ;; Look at the pattern of parameters that have values and dispatch
  (when (includes-a-form-of-passive? tree-families)
    (unless by-category ;; already determined
      (setq by-category (formulate-by-category (or agent subject)))))
  (let ((category
         (cond ((and subject theme goal) ;; hydrolysis
                (def-subj-theme-goal-term pname pos
                  tree-families super-category
                  mixin restrict rule-label
                  subject theme goal preposition 
                  nominalization irregular subcategorization))
#| These call -only- differ in which set of 'standard variables' they handle.
The result of those with macros is sets of three symbols which are passed on
in backquoted expressions to create the category (with all its possible
elaborations such as mixin or rule-label) and then to create the mapping
tables for the realizations. ///If we lift out the three-tuple creation
from the rest then these calls can be reduced to a single call, which will
simplify extending this set of options. 
|#
               ((and subject theme) 
                (def-subj-theme-term pname pos
                  tree-families super-category
                  mixin restrict rule-label
                  subject theme preposition
                  nominalization irregular subcategorization))

               ((and agent patient) ;; passive 
                (def-agent-patient-term pname pos
                  tree-families super-category 
                  mixin restrict rule-label
                  agent patient by-category preposition
                  nominalization irregular subcategorization))

               ((and subject complement) ;; "suggest/suggestion" -- that-complement
                (def-subj-complement pname pos
                  tree-families super-category 
                  mixin restrict rule-label
                  subject complement by-category preposition
                  nominalization irregular subcategorization))

               (t
                (push-debug `( ,adjective ))
                (break "New pattern")))))
    (when obo-id
      (bind-variable 'uid obo-id category))
    category))

(defun def-subj-theme-goal-term (pname pos
                                 tree-families super-category
                                 mixin restrict rule-label
                                 subject theme goal preposition 
                                 nominalization irregular subcategorization)
  (with-name-and-superc pname super-category pos
    (with-subject subject
      (with-theme theme
        (with-goal goal
          (let ((category (create-category-for-a-term
                            name superc 
                            mixin restrict rule-label
                            subj-slot subj-var
                            theme-slot theme-var
                            goal-slot goal-var)))
            (apply-rdata-mappings category tree-families
                                :word-keys `((:verb . ,pname)
                                             (:irregulars . ,irregular)
                                             (:common-noun . ,nominalization))
                                :args `((subj-slot . ,subj-slot)
                                        (theme-slot . ,theme-slot)
                                        (subj-v/r . ,subj-v/r)
                                        (theme-v/r . ,theme-v/r)
                                        (goal-v/r . ,goal-v/r)))
            (apply-subcat-if-any subcategorization category pname)
            (apply-preposition-if-any pname preposition category)
            category))))))


(defun def-subj-theme-term (pname pos
                            tree-families super-category
                            mixin restrict rule-label
                            subject theme preposition 
                            nominalization irregular subcategorization)
  (push-debug `(,pname ,pos ,tree-families ,super-category
                ,subject ,theme ,preposition ,mixin ,restrict ,rule-label))
  (with-name-and-superc pname super-category pos
    (with-subject subject
      (with-theme theme
        (let ((category (create-category-for-a-term
                          name superc 
                          mixin restrict rule-label
                          subj-slot subj-var
                          theme-slot theme-var)))
          (apply-rdata-mappings category tree-families
                                :word-keys `((:verb . ,pname)
                                             (:irregulars . ,irregular)
                                             (:common-noun . ,nominalization))
                                :args `((subj-slot . ,subj-slot)
                                        (theme-slot . ,theme-slot)
                                        (subj-v/r . ,subj-v/r)
                                        (theme-v/r . ,theme-v/r)))
          (apply-subcat-if-any subcategorization category pname)
          (apply-preposition-if-any pname preposition category)
          category)))))


(defun def-subj-complement (pname pos
                            tree-families super-category 
                            mixin restrict rule-label
                            subject complement by-v/r preposition
                            nominalization irregular subcategorization)
  (with-name-and-superc pname super-category pos
    (with-subject subject
      (with-complement complement
        (let ((category (create-category-for-a-term
                          name superc 
                          mixin restrict rule-label
                          subj-slot subj-var
                          comp-slot comp-var)))
          (apply-rdata-mappings category tree-families
                                :word-keys `((:verb . ,pname)
                                             (:irregulars . ,irregular)
                                             (:common-noun . ,nominalization))
                                :args `((subj-slot . ,subj-slot)
                                        (comp-slot . ,comp-slot)
                                        (subj-v/r . ,subj-v/r)
                                        (comp-v/r . ,comp-v/r)
                                        (by-v/r . ,by-v/r)))
          (apply-subcat-if-any subcategorization category pname)
          (apply-preposition-if-any pname preposition category)
          category)))))


(defun def-agent-patient-term (pname pos 
                               tree-families super-category 
                               mixin restrict rule-label
                               agent patient by-v/r preposition
                               nominalization irregular subcategorization)
    (with-name-and-superc pname super-category pos
      (with-agent agent
        (with-patient patient
          (let ((category (create-category-for-a-term
                           name superc 
                           mixin restrict rule-label
                           agent-slot agent-var ;;agent-v/r
                           patient-slot patient-var))) ;;patient-v/r
            ;; (push-debug `(,pname ,category))  (break "0")
            (apply-rdata-mappings category tree-families
                                  :word-keys `((:verb . ,pname)
                                               (:irregulars . ,irregular)
                                               (:common-noun . ,nominalization))
                                  :args `((agent-slot . ,agent-slot)
                                          (patient-slot . ,patient-slot)
                                          (agent-v/r . ,agent-v/r)
                                          (patient-v/r . ,patient-v/r)
                                          (by-v/r . ,by-v/r)
                                          ;; for of-nominal
                                          (theme-slot . ,agent-slot)
                                          (theme-v/r . ,agent-v/r)))
            (apply-subcat-if-any subcategorization category pname)
            (apply-preposition-if-any pname preposition category)
            category)))))


