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
                                  super-category obo-id
                                  mixin restrict rule-label
                                  subject theme goal complement 
                                  subcategorization
                                  agent patient by-category)
  (unless (symbolp pos) (error "The form must be a symbol"))
  (unless (keywordp pos)
    (setq pos (intern (symbol-name pos) (find-package :keyword))))
  ;; Look at the pattern of parameters that have values and dispatch
  (let ((category
         (cond ((and subject theme goal) ;; hydrolysis
                (def-subj-theme-goal-term pname pos
                  tree-families super-category
                  mixin restrict rule-label
                  subject theme goal preposition 
                  nominalization subcategorization))
               ((and subject theme) 
                (def-subj-theme-term pname pos
                  tree-families super-category
                  mixin restrict rule-label
                  subject theme preposition
                  nominalization subcategorization))
               ((and agent patient) ;; passive 
                (def-agent-patient-term pname pos
                  tree-families super-category 
                  mixin restrict rule-label
                  agent patient preposition
                  nominalization subcategorization))
               (t
                (push-debug `( ,adjective ,complement ,by-category))
                (break "New pattern")))))
    (when obo-id
      (bind-variable 'uid obo-id category))
    category))

(defun def-subj-theme-goal-term (pname pos
                                 tree-families super-category
                                 mixin restrict rule-label
                                 subject theme goal preposition 
                                 nominalization subcategorization)
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
                            nominalization subcategorization)
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
                                             (:common-noun . ,nominalization))
                                :args `((subj-slot . ,subj-slot)
                                        (theme-slot . ,theme-slot)
                                        (subj-v/r . ,subj-v/r)
                                        (theme-v/r . ,theme-v/r)))
          (apply-subcat-if-any subcategorization category pname)
          (apply-preposition-if-any pname preposition category)
          category)))))


(defun def-agent-patient-term (pname pos 
                               tree-families super-category 
                               mixin restrict rule-label
                               agent patient preposition
                               nominalization subcategorization)
    (with-name-and-superc pname super-category pos
      (with-agent agent
        (with-patient patient
          (let ((category (create-category-for-a-term
                           name superc 
                           mixin restrict rule-label
                           agent-slot agent-var ;;agent-v/r
                           patient-slot patient-var ;;patient-v/r
                          )))
            (push-debug `(,pname ,category))  ;(break "0")
            (apply-rdata-mappings category tree-families
                                  :word-keys `((:verb . ,pname)
                                               (:common-noun . ,nominalization))
                                  :args `((agent-slot . ,agent-slot)
                                          (patient-slot . ,patient-slot)
                                          (agent-v/r . ,agent-v/r)
                                          (patient-v/r . ,patient-v/r)
                                          ;; for of-nominal
                                          (theme-slot . ,agent-slot)
                                          (theme-v/r . ,agent-v/r)))
            (apply-subcat-if-any subcategorization category pname)
            (apply-preposition-if-any pname preposition category)
            category)))))


