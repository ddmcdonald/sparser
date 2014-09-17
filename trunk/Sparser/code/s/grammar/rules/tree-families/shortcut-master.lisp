;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2014

;; Initiated 9/14/14 to make more flexible, complete shortcuts

(in-package :sparser)


(defmacro def-term (word form tree-families &rest parameter-plist)
  ;;/// simplest data checks on the minimal args
  `(def-term/expr ,word ',form ',tree-families ',parameter-plist))

(defun def-term/expr (word form tree-families &rest parameter-plist)
  (apply #'decode-def-term-call word form tree-families parameter-plist))

(defun decode-def-term-call (pname pos tree-families 
                             &key nominalization adjective preposition
                                  super-category 
                                  mixin restrict rule-label
                                  subject theme complement 
                                  agent patient by-category)
  ;; Look at the pattern of parameters that have values and dispatch
  (cond ((and subject theme) 
         (def-subj-theme-term pname pos
           tree-families super-category
           subject theme preposition
           mixin restrict rule-label))
        ((and agent patient) ;; passive 
         (def-agent-patient-term pname pos
           tree-families super-category 
           agent patient by-category preposition
           mixin restrict rule-label))
        (t
         (push-debug `(,nominalization ,adjective ,complement))
         (break "New pattern"))))
           
(defun def-subj-theme-term (pname pos tree-families super-category
                               subject theme preposition
                               mixin restrict rule-label)
  (push-debug `(,pname ,pos ,tree-families ,super-category
                ,subject ,theme ,preposition ,mixin ,restrict ,rule-label)))



(defun def-agent-patient-term (pname pos tree-families super-category 
                               agent patient by-category preposition
                               mixin restrict rule-label)
    (with-name-and-superc pname super-category pos
      (with-agent agent
        (with-patient patient
          (let ((category (create-category-for-a-term
                           name superc 
                           mixin restrict rule-label
                           agent-slot agent-var agent-v/r
                           patient-slot patient-var patient-v/r)))
            (apply-rdata-mappings category tree-families)
            category)))))
    

(defun create-category-for-a-term
                           (name superc 
                           mixin restrict rule-label
                           agent-slot agent-var agent-v/r
                           patient-slot patient-var patient-v/r)
  (push-debug ` (,name ,superc 
                           ,mixin ,restrict ,rule-label
                           ,agent-slot ,agent-var ,agent-v/r
                           ,patient-slot ,patient-var ,patient-v/r))
  (let ((form
         `(define-category ,name
            :nstantiates :self
            :specializes ,superc
            :restrict restrict
            :mixins restrict
            :rule-label rule-label
            ;; index ??
            :binds ((,agent-slot ,agent-var)
                    (,patient-slot ,patient-var)))))
    (eval form)))

(defun apply-rdata-mappings (category mapping-keys)
  (push-debug `(,category ,mapping-keys))
  ;(dolist
)




