;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013-2019  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   February 2019

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

(defgeneric semantic-rule? (rule)
  (:documentation "A semantic rule is a binary rule with
 no form labels on its righthand side.")
  (:method ((cfr cfr))
    (when (binary-rule? cfr)
      (get-tag :semantic-rule cfr)))) ;; see construct-cfr

(defgeneric context-sensitive-rule? (rule)
  (:documentation "A binary semantic rule where one of the
 constituents serves as a context for the other, which is
 relabeled according to the specification of the rule.")
  (:method ((cfr cfr))
    (get-tag :context-sensitive-rule cfr)))

(defun unary-rule? (cfr)
  (and (null (cfr-completion cfr))
       (= 1 (length (cfr-rhs cfr)))))

(defgeneric lexical-rule? (rule)
  (:documentation "Is this a unary rule over a word?")
  (:method ((cfr cfr))
    (when (unary-rule? cfr)
      (word-p (car (cfr-rhs cfr))))))

(defun polyword-rule? (cfr)
  (get-tag :polyword cfr))

(defun form-rule? (cfr)
  (get-tag :form-rule cfr))

(defun syntactic-rule? (cfr)
  (get-tag :syntax-rule cfr))

(defun rule-type (cfr)
  "Return a keyword indicating what type of rule this is"
  (cond
    ((get-tag :semantic-rule cfr) :semantic)
    ((get-tag :context-sensitive-rule cfr) :context-sensitive)
    ((get-tag :form-rule cfr) :form)
    ((get-tag :syntax-rule cfr) :syntactic)
    ((lexical-rule? cfr) :lexical)
    ((get-tag :polyword cfr) :polyword)
    (t :unknown-rule-type)))


(defun referent-uses-function? (cfr)
  (let ((ref (cfr-referent cfr)))
    (when (and ref (consp ref))
      (eq (car ref) :funcall))))

(defun referent-uses-method? (cfr)
  (let ((ref (cfr-referent cfr)))
    (when (and ref (consp ref))
      (eq (car ref) :method))))


;;;------------------------------------------
;;; examine the whole grammar for a property
;;;------------------------------------------

(defgeneric rules-using-label (label)
  (:documentation "Collect all the rules that include this
   label in any of their field. Walks over the master list
   maintained by catalog/cfr rather than one of the sublists
   organized by rule type.")
  (:method ((name symbol))
    (rules-using-label (category-named name t)))
  (:method ((label category))
    (declare (special *context-free-rules-defined*))
    (loop for cfr in *context-free-rules-defined*
       as lhs = (cfr-category cfr)
       as rhs = (cfr-rhs cfr)
       as form = (cfr-form cfr)
       when (or (and (category-p lhs) (eq lhs label))
                (memq label rhs)
                (and (category-p form) (eq form label)))
       collect cfr)))

(defgeneric rules-with-lhs (label)
  (:documentation "Collect all the rules that have this 
    labels as their left-hand side.")
  (:method ((name symbol))
    (rules-using-label (category-named name t)))
  (:method ((label category))
    (declare (special *context-free-rules-defined*))
    (loop for cfr in *context-free-rules-defined*
       as lhs = (rule-lhs cfr)
       when (eq lhs label)
       collect cfr)))
           
(defun rule-lhs (cfr)
  "Return the label that is the lefthand side of the rule.
   Requires a dispatch by type since the label is often not
   where you'd expect because the category field is being 
   used as an encoding cue in conjunction with some other field."
  (cond
    ((syntactic-rule? cfr)
     (lhs-of-syntactic-rule cfr))
    ((form-rule? cfr)
     (lhs-of-form-rule cfr))
    ((context-sensitive-rule? cfr)
     (lhs-of-csr cfr))
    (t (cfr-category cfr))))

(defun lhs-of-syntactic-rule (cfr)
  (cfr-form cfr))

(defun lhs-of-form-rule (cfr)
  (ecase (cfr-completion cfr)
    (:left-edge (first (cfr-rhs-cfr)))
    (:right-edge (second (cfr-rhs cfr)))))

(defun lhs-of-csr (cfr)
  (cfr-category cfr))



  

;;--- collect rules by type
    
(defun collect-lexical-rules () ;; 2,805 in Fire
  (loop for r in *cfrs-defined*
     when (lexical-rule? r) collect r))

(defun collect-semantic-cfrs () ;; 910 in Fire
  "The syntactic, context-sensitive, and form rules were distinguished
 when note-grammar-model was compiling the lists. That leaves rules that
 were created by def-cfr and define-cfr (ignoring the distinction 
 between rules written by hand and those written as part of expanding
 the realization specification of a category)."
  (loop for r in *cfrs-defined*
     unless (lexical-rule? r) collect r))

;; (measure-fsa-facts)
(defun words-without-rule-sets () ;; 843 in Fire
  (loop for word in *words-defined*
     unless (rule-set-for word) collect word))

(defun non-digits-without-rule-sets () ;; 832 in Fire (blocks-world?)
  (loop for word in *words-defined*
     unless (or (rule-set-for word) (eq (word-capitalization word) :digits))
     collect word))
;; Sampling show this includes US-states, military-ranks & units, countries,
;; at least some conjunctions, mideast/named-entities
;; The def function for us-states looks odd. Might be source of problem

(defun number-of-DA-rules ()
  (declare (special *debris-analysis-rules*))
  ;; See objects/rules/da/object.lisp for the machinery
  ;; Most of the rules are in grammar/rules/da/da-rules.lisp
  (hash-table-count *debris-analysis-rules*))


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

(defgeneric find-form-cfr (word form)
  (:documentation "Given a word, search its rule set for
    the first unary-rule of the specified form")
  (:method ((pname string) (form symbol))
    (let ((word (resolve pname)))
      (unless word (error "There is no word spelled ~s" pname))
      (find-form-cfr word form)))
  (:method ((word word) (name symbol))
    (find-form-cfr word (category-named name :error-if-missing)))
  (:method ((pw polyword) (name symbol))
    (find-form-cfr pw (category-named name :error-if-missing)))
  (:method ((word word) (form category))
    (find-form-cfr (rule-set-for word) form))
  (:method ((pw polyword) (form category))
    (find-form-cfr (rule-set-for pw) form))
  (:method ((none NULL) (form t))
    nil)
  (:method ((rs rule-set) (form category))
    (loop for cfr in (rs-single-term-rewrites rs)
       when (eq form (cfr-form cfr))
       do (return cfr))))

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

(defgeneric find-single-unary-cfr (word)
  (:documentation "Return the first unary rule for this word if there is one.
   Ignores the possibility of there being more than one rule.")
  (:method ((word word))
    (when (rule-set-for word)
      (find-single-unary-cfr (rule-set-for word))))
  (:method ((word polyword))
    (when  (rule-set-for word)
      (find-single-unary-cfr (rule-set-for word))))
  (:method ((rs rule-set))
    (when rs
      (let ((single-rewrites (rs-single-term-rewrites rs)))
        (when single-rewrites
          ;;/// check for there being more than one?
          (car single-rewrites))))))
;; c.f. single-term-rewrite? in rules/rule-links/generic.lisp
;; which does essentially this same thing

(defgeneric find-unary-rules (label)
  (:documentation "Returns a list of all the unary rules 
    on the rule-set of this label (word or category).")
  (:method ((ignore null)) nil)
  (:method ((rs rule-set))
    (when rs (rs-single-term-rewrites rs)))
  (:method ((pname string))
    (find-unary-rules (resolve pname)))
  (:method ((w word))
    (find-unary-rules (rule-set-for w)))
  (:method ((pw polyword))
    (find-unary-rules (rule-set-for pw)))
  (:method ((c category))
    (find-unary-rules (rule-set-for c))))


(defun form-of (word)
  (let ((cfr (find-single-unary-cfr word)))
    (when cfr
      (cfr-form cfr))))
#| from <r3>/code/sparser-extensions/new-words.lisp |#

(defgeneric find-rules-with-literal (word)
  (:method ((pname string))
    (find-rules-with-literal (resolve pname)))
  (:method ((ignore null)) nil)
  (:method ((w word))
    (loop for cfr in *cfrs-defined*
       as rhs = (cfr-rhs cfr)
       when (memq w rhs) collect cfr)))
    


(defvar *words-to-deleted-rules* (make-hash-table :test #'eq))

(defgeneric strip-single-term-rules (label)
  (:documentation "Remove every single-term rewrite rule from
    the word. Presumably because we want to define something else
    with it that the other rules are presently irrelevant.
    Motivating case is the single-capitalized-letter 'E' which 
    besides being a single-capitalized-letter (e.g. to use with
    a person's initials) it is also the short form of the
    direction 'east'.")
  (:method ((pname string))
    (strip-single-term-rules (word-named pname)))
  (:method ((ignore null)) ;; one of the transforms returned nil
    nil)
  (:method ((w word))
    (strip-single-term-rules (rule-set-for w)))
  (:method ((pw polyword))
    (strip-single-term-rules (rule-set-for pw)))
  (:method ((rs rule-set))
    (let ((rules (rs-single-term-rewrites rs))
          (word (rs-backpointer rs)))
      (when rules
        (setf (get-tag :deleted-rules word) rules)
        (setf (gethash word *words-to-deleted-rules*) rules)
        (loop for r in rules do (delete/cfr r))))))
