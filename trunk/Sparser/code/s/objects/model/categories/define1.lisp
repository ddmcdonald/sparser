;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2010-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "define"
;;;   Module:  "objects;model:categories:"
;;;  version:  1.5 January 2014

;; initiated 7/16/92 v2.3
;; 8/5 added call to process rdata, 8/31 gated it by the field having
;; a value.
;; 0.1 (9/1) Changed the source argument to find-or-make 
;;       from :define-category so that it will build a referential-
;;       categoryrather than a simple one.
;; 0.2 (10/13) added form for define-mixin-category
;; 0.3 (5/25/93) added standard specialized printer for individuals
;;      whose categories have words as the values of their criterial variables
;; 0.4 (9/18) added another indexing type: sequential-keys
;; 0.5 (1/7/94) added capability for real bindings
;;     (7/11) added case to Variables-allow-specialized-printer?
;;     (8/8) pulled the indexing code to [index instances]
;; 0.6 (11/1) tweeked Decode-category-to-instantiate to anticipate some of the 
;;      category names already being dereferenced.
;; 0.7 (11/23) changed define-category/expr to look for a non-referential version of
;;      the category and delete it. 
;; 0.8 (4/19/95) simple-categories could slip through via the specialized slot
;;      so wrote Convert-simple-to-referential-category
;; 1.0 (11/28/97) doing lattice points right in Decode-category-parameter-list
;;     (2/24/98) changed the name of that call. 3/3 changed its location.
;;      6/30 changed it yet again: the free variables weren't being set. 
;; 1.1 (12/25/99) modified Decode-category-parameter-list to make indexing
;;      constructors in all cases. 12/27 Decode-category-parameter-list had to
;;      have its call for constructors ordered before the rdata setup in order for
;;      the 'instantiates' trick in noun-creating rules to work right.
;;     (2/8/05) Added define-subtype-derived-category
;; 1.2 (11/9/10) folded in optional CLOS class creation.
;;     (8/21/11) Fixed bug in decode-category-to-instantiate
;; 1.3 (9/6/11) Added rule-label field to over-ride the default. 
;; 1.4 (8/26/13) Added mixins keyword to decode-category-parameter-list.
;;     (10/24/13) Added restrict to it.
;;     (4/15/14) Passing mixins to backing-class constructor.
;;     (5/12/14) Added mixin to define-subtype-derived-category
;;     (5/29/14) Moved in add-rules-to-category from diverse other files
;;      and generalized a little. 
;;     (6/9/14) Allow bindings on categories to consult the mixins for
;;      the variables.
;; 1.5 (7/17/14) Added :lemma option to categories for the word that corresponds
;;      to the name of the category. 
;;     (9/19/14) added add-rule(s)-to-individual overloading the category
;;      loading routines. 
;;     (12/11/14) folded in option to use the new, much shorter version
;;      for rdata. 1/5/15 made that a positive test not just a matter
;;      of falling through. 

(in-package :sparser)

;;;---------------------
;;; alternative drivers
;;;---------------------

(defun define-category/expr (symbol parameter-list)

  ;; called from Define-category when there are any arguments beyond
  ;; the symbol. If just the symbol is given it's an implicit action
  ;; by define-cfr to establish a non-terminal.

  (let ((old-obj (category-named symbol)))
    (when old-obj
      (when (not (referential-category-p old-obj))
        (delete/category old-obj)))

    (let ((category (find-or-make-category-object symbol :referential)))
      (apply #'decode-category-parameter-list category parameter-list)
      category )))


(defun define-mixin-category/expr (symbol parameter-list)
  ;; called from define-mixin-category.
  ;; These can't be instantiated
  (let ((category (find-or-make-category-object symbol :mixin)))
    (apply #'decode-category-parameter-list category parameter-list)
    category ))



;; Called from make-subtype
;;
(defun define-subtype-derived-category (subtype-lp super-category mixin)
  (let* ((namestring (lp-supertype-print-string subtype-lp))
         (category (find-or-make-category-object
                    (intern namestring)
                    :derived))
         (operations (make-category-operations :category category))
         (base-slots (cat-slots super-category))
         (mixin-slots (cat-slots mixin)))

    (setf (cat-slots category) 
          (append mixin-slots base-slots))
    (setf (cat-lattice-position category) subtype-lp)

    (let ((super-ops (cat-operations super-category)))
      ;; -- copy the other fields too? --
      (setf (cat-ops-print operations) (cat-ops-print super-ops))
      (setf (cat-operations category) operations)
      category)))




;;;-----------
;;; workhorse
;;;-----------

(defun decode-category-parameter-list (category
                                       &key mixins
                                            documentation
                                            instantiates
                                            specializes
                                            rule-label
                                            ((:binds var-v/r-pair))
                                            bindings
                                            ((:restrict restrictions))
                                            ((:realization rdata))
                                            lemma
                                            index )

  (let ((specialized-category
         (when specializes (etypecase specializes
                             (symbol (category-named specializes))
                             (referential-category specializes))))
        (mixin-categories
         (when mixins
           (loop for symbol in mixins
             collect (category-named symbol :break-if-missing)))))

    (remove-property-from category :super-categories) ;; clear the cache

    (when specializes
      (unless specialized-category
        (break "~A is supposed to be a specialization of ~A~
                ~%but that category has not been defined"
               (cat-symbol category) specializes))
      (when (not (or (referential-category-p specialized-category)
                     (mixin-category-p specialized-category)))
        ;; Then it's a simple category, probably because it has
        ;; already been mentioned in a rule even though its
        ;; definition hadn't been eval'd yet.  We have to convert
        ;; it to a referential category or else a lot of later
        ;; assumptions are going to go wrong.
        (setq specialized-category
              (convert-simple-to-referential-category
               specialized-category))))

    (when mixin-categories
      (setf (cat-mix-ins category) mixin-categories))

    (when documentation
      (store-category-documentation category documentation))
 
    (define-variables var-v/r-pair category)

    (when bindings
      (unless specialized-category
        (break "A category cannot be given bindings unless it ~
                is a specialization of some other category.~
                ~%  ~A is not." (cat-symbol category)))
      (attach-bindings-to-category category
                                   bindings
                                   specialized-category
                                   mixin-categories))

    (setf (cat-lattice-position category)
          (initialize-top-lattice-point 
           category :specializes specialized-category))

    (prepare-category-operations category index instantiates rule-label)
    ;; has to preceed rdata setup since some calculations there
    ;; can depend upon it.

    (when restrictions
      (handle-variable-restrictions category restrictions))

    (when rdata
      (cond
       ((includes-def-realization-keyword rdata)
        (setup-shortcut-rdata category rdata))
       (t (setup-rdata category rdata))))

    (when lemma
      (setup-category-lemma category lemma))

    (when *CLOS*
      (setup-backing-clos-class category mixins :referential))

    category ))



;;;----------------------------
;;; field-specific subroutines
;;;----------------------------

(defun prepare-category-operations (category
                                    index-field
                                    instantiates-field
                                    rule-label)

  ;; to permit redefinition of category definitions during development
  ;; we overwrite most of the indexes/objects that are created as a
  ;; side-effect of the definition.
  (let ((op-object
         (setf (cat-operations category)
               (make-category-operations :category category))))

    ;; printing
    (variables-allow-specialized-printer? category op-object)

    ;; instantiate in the discourse history
    (when instantiates-field
      (decode-category-to-instantiate category instantiates-field))

    ;; find, index, delete
    (decode-index-field category op-object index-field)

    ;; override default label when generating rules
    (setup-rule-label op-object rule-label)

    op-object ))

(defun setup-rule-label (op-object rule-label)
  (when rule-label
    (let ((label (typecase rule-label
                   (referential-category rule-label)
                   (symbol (resolve rule-label))
                   (otherwise
                    (push-debug `(,op-object ,rule-label))
                    (error "Unexpected type for rule-label in ~
                            definition of ~a: ~a"
                           (cat-ops-category op-object) rule-label)))))
      (setf (cat-ops-rule-label op-object) label))))


;;;------------------------
;;; bindings on categories
;;;------------------------

(defparameter *legal-to-add-bindings-to-categories* t
  "See note in bind-variable because unless we can determine the
   circumstances carefully we don't want to add bindings to
   categories. The issue is between-run reclaimation, since bindings
   are precisely the sort of thing we want to reclaim given
   the textual specificity of what they're usually encoding on
   an individual. More so on a category.")

(defun attach-bindings-to-category (category bindings-plist 
                                    parent mixins)
  ;; the values in the bindings plist will be expressions that
  ;; we have to eval.  Once we've done that we have to vet the
  ;; resulting value that it's valid given the variable involved.
  ;; This is what decode-category-specific-binding-instr-exps
  ;; would do for us if we already had values, so we're unbundling
  ;; it's effects.
  (let ((*legal-to-add-bindings-to-categories* t)
        bindings  variable  value  real-value  binding )
    (declare (special *legal-to-add-bindings-to-categories*))

    (do ((var-name (first bindings-plist) (first remainder))
         (value-exp (second bindings-plist) (second remainder))
         (remainder (cddr bindings-plist) (cddr remainder)))
        ((null var-name))

      (unless (symbolp var-name)
        (break "Variable designators in the bindings field of categories ~
                must be ~%categories. You passed in ~A" var-name))
      (setq variable (find-variable-in-category/named var-name parent))
      (unless variable
        (if mixins
          (let ( var )
            (dolist (m mixins)
              (setq var (find-variable-in-category/named var-name m))
              (when var
                (setq variable var)
                (return)))
            (unless variable
              (error "There is no variable named ~a~
                    ~%in the category ~a or mixins ~a" var-name parent mixins)))
          (error "There is no variable named ~a~
                ~%in the category ~a" var-name parent)))

      (setq value (eval value-exp))

      (when value
        (setq real-value (decode-value-for-variable value variable))

        (setq binding (bind-variable variable
                                     real-value
                                     category))
        (push binding bindings)))))




;;;----------
;;; printing
;;;----------

(defun variables-allow-specialized-printer? (category op-object)
  ;; /// special cased to look specially for the slot "name" rather
  ;; than interogate the indexing data for a key based on a word
  ;; like it eventually should
  (let ((variables (cat-slots category)))
    (when (or (find 'name variables :key #'var-name)
              (find 'word variables :key #'var-name))
      (setf (cat-ops-print op-object)
            'print-individual-with-name))))



;;;------------------------------------
;;; sorting out the define-time format
;;;------------------------------------

(defun decode-category-to-instantiate (category instantiates-field)
  ;; the field should be a symbol naming a category or the symbol :self
  (let ((category-to-instantiate
         (if (or (eq instantiates-field :self)
                 (eq instantiates-field 'self))
           category
           (if (listp instantiates-field)
             (mapcar #'(lambda (field-value)
                         (etypecase field-value
                           (referential-category field-value)
                           (symbol
                            (find-or-make-category-object field-value
                                                          :referential))))
                     instantiates-field)
             (etypecase instantiates-field
               (referential-category instantiates-field)
               (symbol
                (find-or-make-category-object instantiates-field
                                              :referential)))))))
    (setf (cat-ops-instantiate (cat-operations category))
          category-to-instantiate)))



;;;----------------
;;; fixup routines
;;;----------------

(defun convert-simple-to-referential-category (sc)
  ;; called from Decode-category-parameter-list
  ;; We delete this category object and return a new one with
  ;; the same name having copied over its properties
  (let ((plist (unit-plist sc))
        (c-symbol (cat-symbol sc))
        (rule-set (cat-rule-set sc)))
   ;  (break "1")
    ;; Copied from Delete/category 4/19/95
    (setq *categories-defined*
        (delete sc *categories-defined*))

    (when (member sc *grammatical-categories* :test #'eq)
      (setq *grammatical-categories*
            (delete sc *grammatical-categories* :test #'eq)))

    (let ((rc (make-referential-category
               :symbol c-symbol
               :plist plist
               :rule-set rule-set )))

      ;; copied from Find-or-make-category-object
      (catalog/category rc c-symbol)
      (note-file-location rc)
      (note-grammar-module rc)
      (push rc *referential-categories*)

      (values rc sc))))


;;;--------------------
;;; rules on the plist
;;;--------------------
;; This is also done by setup-rdata and related functions in
;; objects/model/tree-families/rdata1, but in a haphazard way.
;; These try to at least look before they leap.

(defgeneric get-rules (category)
  (:documentation "Provides abstraction since schema setup 
    will change because it's so weird"))
(defmethod get-rules ((name symbol))
  (get-rules (category-named name :break-if-none)))

(defmethod get-rules ((category model-category))
  (cadr (member :rules (cat-realization category))))

(defmethod get-rules ((i individual))
  (get-tag-for :rules i))


(defun add-rules-to-individual (i rules)
  (add-rules-to-category i rules))

(defun add-rule-to-individual (rule i)
  (add-rule-to-category rule i))


(defun add-rules-to-category (category rules)
  (let ((total-rules (get-rules category)))
    (dolist (rule rules)
      (setq total-rules (tail-cons rule total-rules)))
    (push-onto-plist category total-rules :rules)))

(defun add-rule-to-category (rule category)
  (let ((rule-list (get-rules category)))
    (if (null rule-list)
      (push-onto-plist category `(,rule) :rules)
      (rplacd (last rule-list)
              (list (car (last rule-list)) rule)))))


(defun find-rule-in-category (category relation)
  (let ((rules (get-rules category)))
    (dolist (rule rules)
      (let ((schema (cfr-schema rule)))
        (when schema
          (when (eq (schr-relation schema) relation)
            (return rule)))))))
