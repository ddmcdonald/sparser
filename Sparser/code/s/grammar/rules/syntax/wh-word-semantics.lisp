;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2016-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "WH-word-semantics"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  March 2017

;; initiated 8/8/07. Added relatives 1/1/08
;; 0.1 Changed the names of the categories to just be the name of the pronoun.
;;     Had been, e.g., WHERE-OBLIQUE-PRONOUN-PRONOUN. Changed the from from NP to
;;     wh-pronoun.
;; 0.2 (1/18/13) Complete make over on the style of prepositions
;;     (2/28/13) Changed the form of the rule to wh-pronoun
;; 4/24/2015 remove whether as a wh-pronoun, to allow adding whethercomp as a type of verb complement

(in-package :sparser)

;;;---------------
;;; base category
;;;---------------

(define-category wh-pronoun
  :specializes pronoun
  :binds ((variable :primitive lambda-variable))
  :documentation "")

;;;---------------
;;; defining form
;;;---------------

(defun define-wh-pronoun (string &key ((:variable var-name)) on)
  (let* ((word (define-function-word string
                 :brackets `( ].phrase .[np  np].  phrase.[ )
                 :form category::wh-pronoun))
         (category-name (name-to-use-for-category string))
         (category-for-var (when on (category-named on)))
         (variable (when var-name
                     (find-variable-for-category var-name category-for-var))))
    (when var-name
      (assert on () "variable name ~a specified without reference category" var-name)
      (assert variable () "~a on ~a did not specify a variable" var-name on))
      
    (let* ((expr `(define-category ,category-name
                    :specializes wh-pronoun
                    :instantiates :self
                    :bindings (variable ,variable)))
           (category (eval expr))
           (word-rule 
            (define-cfr category `(,word)
              :form category::wh-pronoun
              :schema (get-schematic-word-rule :word) ;;/// make schema for wh ??
              :referent category)))
      (add-rule word-rule category)
      (values category
              word-rule
              word))))

 
;;;-------
;;; cases
;;;-------

;; N.b. this replaces rules/words/WH words

(define-wh-pronoun "who" :variable 'actor :on 'action-verb)
(define-wh-pronoun "whom" :variable 'actor :on 'action-verb)

(define-wh-pronoun "what" :variable 'patient :on 'action-verb)
(define-wh-pronoun "which" :variable 'patient :on 'action-verb) ;; ??

(define-wh-pronoun "where" :variable 'location :on 'has-location)
(define-wh-pronoun "when" :variable 'time :on 'perdurant)

(define-wh-pronoun "why" :variable 'purpose :on 'perdurant)
;;  more like reason, motive.
;; 'purpose' is more like an attribute

(define-wh-pronoun "how" :variable 'manner :on 'perdurant)
;; not really manner, more 'method'

(define-wh-pronoun "whose") ;; possession

(define-wh-pronoun "whether") ;; polarity ?
;; overnight #15, aspp2 #20

;; "who else <vp>" -- discourse-oriented modifiers right on the wh word. 

(define-wh-pronoun "whoever")
;; wherever, whenever

;;;----------
;;; grammmar for embedded questions
;;;----------
  ;; called from make-subordinate-clause for wh + s

;; (p/s "tell me what you want to do now.")


(def-k-method compose ((wh category::who) (stmt individual))
  (declare (special category::wh-question))
  (let* ((var (sbuject-variable stmt))
         ;; The statement is probably open in its subject
         ;; and this is a essentially a description of it
        (wh-var
          (if (and var (null (value-of 'variable stmt)))
            var
            (value-of 'variable wh)))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))


(def-k-method compose ((wh category::what) (stmt individual))
  (declare (special category::wh-question))
  (let* ((var (object-variable stmt))
         ;; The statement is probably open in its object
        (wh-var
          (if (and var (null (value-of 'variable stmt)))
            var
            (value-of 'variable wh)))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))

(def-k-method compose ((wh category::where) (stmt individual))
  (declare (special category::wh-question))
  (let* ((wh-var (value-of 'variable wh))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))

(def-k-method compose ((wh category::when) (stmt individual))
  (declare (special category::wh-question))
  (let* ((wh-var (value-of 'variable wh))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))

(def-k-method compose ((wh category::why) (stmt individual))
  (declare (special category::wh-question))
  (let* ((wh-var (value-of 'variable wh))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))

(def-k-method compose ((wh category::how) (stmt individual))
  (declare (special category::wh-question))
  (let* ((wh-var (value-of 'variable wh))
         (q (define-an-individual category::wh-question
                :wh wh
                :var wh-var
                :statement stmt)))
      (setq q (add-category-to-individual q (itype-of stmt)))
      q))
