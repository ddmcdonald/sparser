;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "gloss-interpretations"
;;;   Module:  "interface;mumble;"
;;;  Version:  October 2017

;; initiated 10/12/17 for the code that takes an sexp representing the
;; interpretation of an utterance by the BA and renders it into Engish.

(in-package :sparser)

#| Given a s-exp lifted from the capability of a method or in general
any ECI restatement of the results of a TRIPS parse, translate it to 
the corresponding Krisp individual.

The entry point gloss-BA-interpretation does all of the coarse, 
across the board changes operating over the s-expression. This includes
renaming role keywords that are always different in the Krisp ontology
(rename-roles-as-needed), and renaming symbols that are different between
the two ontologies (rename-eci-terms-as-needed).

Then is calls gloss-interpretation, which recursively walks through the
s-exp, which is structured as a plist. The :isa tag is used to lookup
the Krisp category to use (corresponding-krisp-category) which is usually
as direct symbol-names-category relationship but can also use a stipulated
mapping like the role and symbols do. 

From the category we get an individual and bind its variables by walking
through the rest of the expression. Identifiers in the sub-expressions
can identify specific, already created entities (find-individual-for-gloss)
or will make a fresh one given the category. 

Given the individual that is retrieved or made using the description lattice
we would next apply the needed default informaition (tense, mood, definiteness)
and produce a text. 

|#

;;--- examples to start from

(defparameter capability-1
  '(a ?g
    :isa put
    :agent SYS
    :theme (a ?blk :isa block)
    :final-location (a ?loc :isa on :ground (a ?shelf :isa shelf)))
  "From cwc-integ/spire/data/executive-structured-goals.lisp")
;; (gloss-BA-interpretation capability-1)

(defparameter interp-to-gloss-1
  '(a goal0
    :isa put
    :agent SYS
    :theme (a b1 :isa block)
    :final-location (a * :isa on :ground (a the-shelf :isa shelf)))
  "From cwc-integ/spire/test/test/lisp")
;; (gloss-BA-interpretation interp-to-gloss-1)


;;--- driver and minions

(defun gloss-BA-interpretation (raw-sexp)
  "Entry point for the interpretation expression. Does rote massaging
   of data types and values that aren't knowledge-based then calls
   gloss interpretation to do the converstion to Krisp."
  (let* ((sexp (reintern-symbols raw-sexp (find-package :sparser))))
    (rename-roles-as-needed sexp)
    (rename-eci-terms-as-needed sexp)
    (gloss-interpretation sexp)))
    
(defun gloss-interpretation (sexp)
  (cond
    ((symbolp sexp)
     (find-individual-for-gloss sexp nil))
    (t
     (let* ((specifier (first sexp))
            (identifier (second sexp))
            (name-of-predicate (cadr (memq :isa sexp)))
            (arg-plist (cdr (memq name-of-predicate sexp)))
            (role-names (loop for term in arg-plist
                           when (keywordp term) collect term)))
       (assert (eq specifier 'a) (sexp)
               "Dont' know how to understand a Spire expression like this ~a" sexp)
       (let ((category (corresponding-krisp-category name-of-predicate role-names)))
         ;; need a fallback strategy
         (let ((i (individual-for-gloss identifier category)))
           (do ((var-name (car arg-plist) (car rest))
                (value-exp (cadr arg-plist) (cadr rest))
                (rest (cddr arg-plist) (cddr rest)))
               ((null var-name))
             (let ((var (find-variable-for-category var-name category))
                   (j (gloss-interpretation value-exp)))
               (setq i (bind-variable var j i))))
           i))))))


;;--- Find or make individual

(defun individual-for-gloss (identifier category)
  "Return an individual of that category that we can retrieve from
   that indentifier if there is one, otherwise we'll make a new one"
  (or (find-individual-for-gloss identifier category)
      (individual-for-ref category)))

(defun find-individual-for-gloss (identifier category)
  ;; a set of unfortunately specific cases
  (declare (ignore category))
  (let* ((id-string (symbol-name identifier))
         (id-in-mumble (intern id-string (find-package :mumble))))
    (cond
      ((eq identifier '*) nil) ;; placeholder case
      ((eql (elt id-string 0) #\?) ;; it's a variable
       (formulate-individual-for-variable identifier category))
      ((and (or (eql (elt id-string 0) #\b) ;; name of a block
                (eql (elt id-string 0) #\B))
            (= 2 (length id-string)))
       (let ((block-name (string-append "B" (elt id-string 1))))
         (find-individual 'block :name block-name)))
      ((boundp id-in-mumble) ;; *the-table*
       (eval id-in-mumble))
      ((boundp identifier) ;; *me*
       (eval identifier)))))


(defun formulate-individual-for-variable (identifier category)
  ;; e.g. 'a block', 'a gene'
  )

;;--- translate role
  
(defparameter *spire-to-krisp-role-renaming*
  '((:final-location . :location))
  "Substitutions to make between Spire ECIs and Krisp")

(defun rename-roles-as-needed (sexp)
  "Runs for side-effects. Works on the entire tree at once
   to all levels."
  (nsublis *spire-to-krisp-role-renaming* sexp))


;;--- translate stray symbols

(defparameter *eci-term-names-to-krisp*
  '((SYS . *me*)
    (the-shelf . *the-shelf*)
    )
  "For swapping the names for things that aren't the same
   between ECI and Krisp models (for no good reason probably)")

(defun rename-eci-terms-as-needed (sexp)
  (nsublis *eci-term-names-to-krisp* sexp))


;;--- translate category

#| We could just do this as an in-line table in the ECIs like we note
related concepts in VerbNet or TRIPS. Question is whether the mapping
would vary according to which roles get values.
|#
(defparameter *eci-names-to-krisp-category-names*
  `((put . put-something-somewhere))
  "Correspondence of symbol naming ECI (via :isa) to name of
   equivalent Krisp category.")

(defun corresponding-krisp-category (eci-name role-names)
  (declare (ignore role-names))
  (or (category-named eci-name)
      (let* ((cat-name (cdr (assq eci-name *eci-names-to-krisp-category-names*)))
             (category (category-named cat-name)))
        (assert category (eci-name)
                "No corresponding Krisp category defined for ECI ~a" eci-name)
        category)))
