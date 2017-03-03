;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2011-2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "construct"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   1.6 January 2015

;; broken out from [define] 9/6/92 v2.3
;; 1.0 (10/23) promulgated the fact that the rules for polywords are
;;      being made when they are defined, hence they no longer have
;;      to be sorted out here
;; 1.1 (11/1) Moved the point where the symbol is created to the very
;;      beginning so it's available to such things as n-ary rules.
;;     (3/9/93) Added a routine for changing the form and referent when
;;      redefining a known rule. Can't do it ad-hoc in the two places
;;      where this occurs because of complexities with n-ary rules.
;; 1.2 (8/17) elaborated changes-to-known-rule to handle case of
;;      multiple lhs's.
;;      Trivially tweaked 2/16/98 to bump the fasl for new source.
;; 1.3 (2/24/98) Added references to the global schema from which the
;;      rule derives to Changes-to-known-rule and Construct-cfr.
;; 1.4 (8/3/11) Added a :schema argument to permit overriding the default
;;      (which is set when working from an ETF).
;; 1.5 (11/22/11) Letting a stipulated schema pass through the parameters.
;;     (3/16/12) quiet the compiler
;; 1.6 (1/17/15) Modified changes-to-known-rule to react to a parameter
;;      and define a new rule rather than modifining the old one. 


(in-package :sparser)


(defun construct-cfr (lhs rhs form referent source
                      &optional schema-to-use)
  (declare (special *schema-being-instantiated*))
  (let* ((r-symbol (gen-cfr-symbol))
         (cfr (make-cfr
               :symbol   r-symbol
               :category lhs
               :rhs      rhs
               :form     form
               :referent referent
               :schema (or schema-to-use
                           *schema-being-instantiated*))))

    (note-file-location cfr)
    (note-category-for-word cfr)
    (note-grammar-module cfr :source source)

    (knit-into-psg-tables cfr)
    (catalog/cfr cfr r-symbol)

    cfr ))


(defparameter *deliberate-duplication* nil
  "There are words such as 'increase' that have both noun and verb
   readings for the same spelling form. In these cases the lhs and
   rhs will be the same (redefinition-of-rule) but we want the new
   rule to be created nevertheless.")


(defun changes-to-known-rule (cfr lhs rhs form referent source
                              &optional schema-to-use)

  ;; Called from def-cfr/expr and define-cfr when the righthand side
  ;; of this rule appears in other rules but it has passed the
  ;; Duplicate-rule check.  In the case where n-ary rules are
  ;; involved the "cfr" may well be a list of several rules each with
  ;; the same rhs but a different lhs. The duplicate check will have
  ;; been passed either because one of the lhs was assembled for 
  ;; a dotted rule, or because the flag is up that allows arbitrary
  ;; duplications.
  ;;    So when the cfr is a list we have to locate and work on
  ;; the rule with the appropriate lhs.
  (declare (special *schema-being-instantiated*
                    *deliberate-duplication*))
  (when (listp cfr)
    (let ((list-of-cfrs cfr))
      (setq cfr (find lhs list-of-cfrs :key #'cfr-category))
      (unless cfr
        (break "No cfr with the indicated lhs ~A~
                ~%has been found in the list of rules:~%~A"
               lhs list-of-cfrs))))
  (if *deliberate-duplication*
    (construct-cfr lhs rhs form referent source)
    (else
     ;; Check that we're putting the changes on the right object
     (when (nary-rule cfr)
       (setq cfr (first (intermediaries-of-nary-rule cfr))))

     (setf (cfr-form cfr) form)
     (setf (cfr-referent cfr) referent)
     (setf (cfr-schema cfr) (or schema-to-use
                                *schema-being-instantiated*))
     cfr )))

;;; temporary code to save realizations of categories
(defparameter *category-realizations* (make-hash-table :size 2000))

(defun note-category-for-word (cfr)
  (when (and
	 (referential-category-p (cfr-category cfr))
	 (unary-rule? cfr))
    (push (car (cfr-rhs cfr))
	  (gethash (cat-name (cfr-category cfr)) *category-realizations*))))

(defun get-category-realizations (cat)
  (loop for item in
       (typecase cat
	 (symbol (gethash cat *category-realizations*))
	 (category (gethash (cat-name cat) *category-realizations*)))
     collect
       (typecase item
	 (word (word-pname item))
	 (polyword (pw-pname item)))))

(defmethod get-cat-tree-realizations ((cat-tree cons) &optional (depth -1))
     (let
	 ((realizations (get-category-realizations (car cat-tree))))
       `(,(if realizations (list (car cat-tree) realizations) (car cat-tree))
	  ,@(loop for ct in (cdr cat-tree)
	       collect (get-cat-tree-realizations ct)))))

(defmethod get-cat-tree-realizations ((cat-name symbol) &optional (depth -1))
  (get-cat-tree-realizations (tree-below cat-name depth)))

(defmethod get-cat-tree-realizations ((cat category) &optional (depth -1))
  (if
   (get-category-realizations cat)
   `(,cat ,(get-category-realizations cat))
   cat))



(defgeneric specialize-referent (word new-category)
  (:documentation "Given a word that has a single interpretation
    given by a unary rule, e.g. the attribute 'length', specialize
    its interpretation (which will be a category) but setting its
    existing unary rule to the designated new category, which
    itself should be a specialization of the original category.
    If a category is supplied as the 'word' argument then
    it signals that there are several words to be converted
    and we consults the category's rules list.")

  (:method ((pname string) (cat-name symbol))
    (let ((word (resolve pname))
          (category (category-named cat-name)))
      (assert word () "The word must already be defined. ~a is not" pname)
      (assert category () "There is no category spelled '~a'" cat-name)
      (specialize-referent word category)))

  (:method ((w word) (c category))
    (let ((rule (find-single-unary-cfr w))) ;;/// want better fn.
      (assert rule () "~a does not have a unary rule" w)
      (specialize-referent rule c)))

  (:method ((cat-name symbol) (c category))
    (let ((category (category-named cat-name)))
      (assert category () "There is no category spelled '~a'" cat-name)
      (specialize-referent category c)))

  (:method ((old category) (new category))
    (let ((rules (get-rules old)))
      (assert rules () "There are no rules associated with ~a" old)
      (loop for r in rules
         when (unary-rule? r)
         do (specialize-referent r new))))

  (:method ((r cfr) (c category))
    (let ((current (cfr-referent r)))
      (assert (category-p current) ()
              "The referent of ~a is not a category")
      (unless (itypep c current)
        (error "~a is not a specialization of ~a" c current))
      (setf (cfr-referent r) c)
      r)))
