;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2016-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "WH-word-semantics"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2019

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

(defgeneric is-wh-pronoun? (item)
  (:documentation "Does the item inherit from wh-pronoun. Note that it
    will also inherit from pronoun, so we have to distinguish them
    to select only WH pronouns by checking for WH pronouns first.")
  (:method ((c category))
    (category-inherits-type? c category::wh-pronoun))
  (:method ((i individual))
    (is-wh-pronoun? (itype-of i)))
  (:method ((e edge))
    (is-wh-pronoun? (edge-referent e)))
  (:method ((w word))
    (eq (get-tag :function-word w) category::wh-pronoun))
  (:method ((ignore t))
    nil))
  

;;;---------------
;;; defining form
;;;---------------

(defun define-wh-pronoun (string &key ((:variable var-name)) on form)
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
              :form (or form category::wh-pronoun)
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
(define-wh-pronoun "whichever" :variable 'patient :on 'action-verb) ;; ??

(define-wh-pronoun "where" :variable 'location :on 'has-location)
(define-wh-pronoun "when" :variable 'time :on 'perdurant)

(define-wh-pronoun "why" :variable 'purpose :on 'perdurant)
;;  more like reason, motive.
;; 'purpose' is more like an attribute

(define-wh-pronoun "how" :variable 'manner :on 'perdurant)
(define-wh-pronoun "how many" :variable 'number :on 'endurant :form category::quantifier)
(define-wh-pronoun "how much" :variable 'number :on 'endurant :form category::quantifier) ;; should be amount?
;; not really manner, more 'method'

(define-wh-pronoun "whose") ;; possession

(define-wh-pronoun "whether") ;; polarity ?
;; overnight #15, aspp2 #20

;; "who else <vp>" -- discourse-oriented modifiers right on the wh word. 

(define-wh-pronoun "whoever")
;; wherever, whenever


(defun bind-wh-variable (wh statement)
  (declare (special *debug-questions*))
  (if (itypep statement 'perdurant)
    (let ((wh-category (itype-of wh)))
      (when wh-category
        (let ((wh-var (value-of 'variable wh-category)))
          (bind-variable wh-var wh statement))))
    (else
      (when *debug-questions*
        (break "~a is a ~a, not a perdurant"
               statement (itype-of statement)))
      statement)))


;;;--------------------
;;; WH nominal clauses
;;;--------------------

(define-mixin-category wh-nominal
  :specializes linguistic
  :binds ((wh-path :primitive list)
          (wh-element))
  :documentation "When we have identified a the referent of
 a clause as being an wh-nominal //or a wh-question, we subype it
 to include this mixin and bind the variables")

(define-mixin-category lifted
  :specializes linguistic
  :binds ((source))
  :documentation "When we pull out the wh-phrase from an
 embedded nominal clause, we mix this into the element 
 we've pulled out and bind the variable to the root of
 the individual it was pulled from")

(defgeneric takes-wh-nominals? (i)
  (:documentation "Do things of this type take embedded WH
 clauses are arguments? Provides syntactic sugar while we
 sort out what type (mixin category) to use consistently")
  (:method ((i individual))
    (itypep i 'ask/tell)))


;;;---------------------------------
;;; grammmar for embedded questions
;;;---------------------------------
;; called from make-subordinate-clause for wh + s

(def-k-method compose ((wh category::who) (stmt individual))
  (let* ((open-var (open-core-variable stmt))
         (wh-var (or open-var
                     (value-of 'variable wh))))
    (let ((q (make-wh-object
              wh :variable wh-var :statement stmt)))
      (tr :wh-who q)
      q)))

(def-k-method compose ((wh category::whom) (stmt individual))
  (let* ((open-var (open-core-variable stmt))
         (wh-var (or open-var
                     (value-of 'variable wh))))
    (let ((q (make-wh-object
              wh :variable wh-var :statement stmt)))
      ;;(tr :wh-who q)
      q)))

(def-k-method compose ((wh category::which) (stmt individual))
  (let* ((open-var (open-core-variable stmt))
         (wh-var (or open-var
                     (value-of 'variable wh))))
    (let ((q (make-wh-object
              wh :variable wh-var :statement stmt)))
      ;;(tr :wh-who q)
      q)))


;; (p/s "tell me what you want to do now.")
(def-k-method compose ((wh category::what) (stmt individual))
  (let* ((open-var (open-core-variable stmt))
         (wh-var (or open-var
                     (value-of 'variable wh))))
    (let ((q (make-wh-object
              wh :variable wh-var :statement stmt)))
      (tr :wh-what q)
      q)))

(def-k-method compose ((wh category::where) (stmt individual))
  (let* ((wh-var (value-of 'variable wh))
         (q (make-wh-object
             wh :variable wh-var :statement stmt)))
    (tr :wh-where q)
    q))

(def-k-method compose ((wh category::when) (stmt individual))
  (let* ((wh-var (value-of 'variable wh))
         (q (make-wh-object
             wh :variable wh-var :statement stmt)))
    (tr :wh-when q)
    q))

(def-k-method compose ((wh category::why) (stmt individual))
  (let* ((wh-var (value-of 'variable wh))
         (q (make-wh-object
             wh :variable wh-var :statement stmt)))
    (tr :wh-why q)
    q))

(def-k-method compose ((wh category::how) (stmt individual))
  (let* ((wh-var (value-of 'variable wh))
         (q (make-wh-object
             wh :variable wh-var :statement stmt)))
    (tr :wh-how q)
    q))
