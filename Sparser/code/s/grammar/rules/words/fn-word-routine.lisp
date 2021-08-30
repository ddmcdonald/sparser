;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2019 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "fn word routine"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   December 2020

;; 0.1 (12/17/92 v2.3) redid the routine so it was caps insensitive and handled
;;      bracketing.
;; 0.2 (5/15/93) Added Function-word? and the marker on the word's plist
;; 0.3 (1/12/94) Having bracket assignment first remove any old brackets so that
;;      it's easy to make revisions.
;; 0.4 (7/29) extended the code to be able to handle polywords
;; 0.5 (8/7) removed its 'etypecase' and made the 'otherwise' nil.
;; 0.6 (10/24) embelleshed check to let brackets come in as bracket objects
;; 0.7 (11/16) added keyword for form category
;;     (5/12/95) fixed glitch in format stmt.
;;     (7/31/11) factored out backet operations as assign-brackets-to-word.
;;      and added make-minimal-word-form-rule
;; 0.8 (1/4/13) Moved in a generalized version of the define-adverb function
;;      that correctly build individuals and categories for meaning-bearing
;;      function words. (5/28/14) Smidgen of doc and clean-up. 
;; 0.9 (5/30/14) Adding more options to define-function-term to allow more
;;      tailoring of the results. 6/14/14 Replaced literal listing of POS
;;      bracket choices with new lists of them from rules/brackets/assignments.
;;     (8/31/14) Moved in define-isolated-function-word which fits better here.

(in-package :sparser)

;;;-----------------------
;;; function words per se
;;;-----------------------

(defun function-word? (word)
  (etypecase word
    ((or word polyword)
     (get-tag :function-word word))))

(defun define-function-word (string
                             &key ((:brackets bracket-symbols))
                               ((:form name-of-form-category)))
  "Defines the word, notes its grammatical form, and assigns
   its brackets. Does not create any rules for it."
  (let ((word (etypecase string
                ((or word polyword) string)
                (string (resolve-string-to-word/make string))))
        (form (if name-of-form-category
                (resolve-form-category name-of-form-category)
                t)))
    (setf (get-tag :function-word word) form)
    (establish-rule-set-for word)
    (when bracket-symbols
      (assign-brackets-to-word word bracket-symbols))
    word))

(defun define-isolated-function-word (string &key form)
  "Used by unambiguous-comlex-primed-decoder for subordinate 
   conjunctions and quantifiers"
  (unless form
    (setq form 'subordinate-conjunction))
  (define-function-word string
    ;; Keep brackets here and in assign-brackets-to-standalone-word
    ;; in sync.
    :brackets '( ].phrase  phrase.[ )
    :form form))


;;--- auxiliaries

(defun resolve-form-category (form-label)
  (let ((category
         (etypecase form-label
           (symbol (category-named form-label))
           ((or referential-category mixin-category category)
            form-label))))
    (unless category
      (error "The category ~A isn't defined yet" form-label))
    (unless (form-category? category)
      (cerror "Just keep going"
              "You are proposing to use the category ~a~
             ~%as the form of a rule, but it's not defined as~
             ~%a form rule. See /grammar/rules/syntax/categories.lisp"
              form-label))
    category))



;;;-------
;;; flags
;;;-------

(defparameter *ignore-redefine-warning* t
  ;; Set this to nil if you want to find duplicate entries
  ;;   for function words
  "When you are deliberately reloading a set of function terms,
   you can set this flag to t and it will quiet the complaint
   about redefining an already known category.")


;;;-----------------------------------------------
;;; Generalized object creator for function words
;;;-----------------------------------------------

;; This is a generalization and extension of the pattern made
;; for adverbs circa December 2012 to better fit meaning-bearing 
;; function words into the method-application machinery.

;; It presently presumes that the tree-family is one of a small
;; set that involve a single label and lead to form-rules.
;; See etf-form-substitution-label for the list. 

(defun define-function-term (string form 
                             &key  brackets super-category
                                   ((:use category-name-to-use))
                                   rule-label discriminator
                                   tree-families subcat-info
                                   word-variable mixins
                                   binds bindings
                                   realization documentation)
  "Does for deliberately defined modifiers the same thing as is done for
   Comlex or morphologically identified nouns or verbs in grammar/rules/
   brackets/assignments.lisp. It creates a new category for this word
   (the string argument), where the name of the category is based on
   the word plus the optional 'discriminator' symbol. If that category
   name is the same as one that's already been defined, it will signal
   an error unless the *ignore-redefine-warnings* has been dynamically
   bound to non-nil. 
     If there are values for the mixins, bindings, documentation, 
   rule-label, or restrict parameters they are folded into the definition
   of the category in the normal way.
     To facilitate the possibility of lexically-specific k-methods,
   we also create one individual of this category and make that the
   referent of the unary rule that's created. We pass that individual
   to make-corresponding-mumble-resource to be sure it reverses.
     The supercategory of the to-be-created category can be
   specified by the 'super-category' argument. It defaults to 'adverbial'.
     The 'form' argument names the category that will be the form on the
   unary rule this creates. It also determines the choice of brackets,
   mirroring the choices in the setup code used with Comlex.
     The 'tree-famil'y argument should be a list of full ETF names; see example
   in define-adverb. 
     'Rule-labe'l has the same impact as it does in the definition of an
   ordinary category. It determines the label on the generated rules, which
   will otherwise be the generated category.
     'Word-variable' is the name of the variable to use to associate
   the word with the category in its bindings field. It defaults to
   'name', but that default assumes that variable is in fact defined
   on the supercategory. This pattern does not use the 'lemma' to hold
   the word that refers to the category since these 'categories' are
   single-purpose and only instantiated once. 
     For getting subcategorization information from Comlex the :subcat-info
   argument dictates which POS entry to use. Legal values are noun, verb, 
   adjective, and adverb."
  
  (unless form (setq form 'standalone)) ;; seems safest
  (unless word-variable (setq word-variable 'name))
  (unless brackets
    (setq brackets
          (case form ;; match with values in rules/brackets/assignments (!!)
            (adverb *adverb-brackets*)
            ((comparative comparative-adjective) *comparative-brackets*)
            ((superlative superlative-adjective)
             *comparative-brackets*)
            ((adjective spatial-adjective temporal-adjective) *adjective-brackets*)
            ((det approximator sequencer quantifier
              subordinate-conjunction)
             *default-determiner-brackets*)
            (standalone *standalone-brackets*)
            ((preposition #|spatial-preposition spatio-temporal-preposition|#)
             *preposition-brackets*)
            ((noun common-noun) *common-noun-brackets*)
            (otherwise
             (break "Need brackets for another syntactic form: ~a" form)))))
  (unless documentation (setq documentation ""))
  (unless super-category
    (setq super-category 'adverbial))
  (when rule-label
    (setq rule-label (category-named rule-label :break-if-none)))

  (let ((word (if (typep string 'word)
                (prog1 string
                  (assign-brackets-to-word string brackets))
                (define-function-word string 
                  :brackets brackets ;; this does bracket assignment
                  :form form))))
    (let* ((base-name (or category-name-to-use
                          (name-to-use-for-category string)))
           (category-name 
            (if discriminator
              (intern (string-append base-name "-" discriminator)
                      (find-package :sparser))
              base-name)))

      (when (category-named category-name)
        (unless *ignore-redefine-warning*
          ;; Intended to quiet complaints when we reloading
          ;; a file we've already loaded. If the flag is up
          ;; we just keep going. If it's nil then we probably
          ;; have a naming problem.
          (let* ((existing (category-named category-name))
                 (loc (file-location existing)))
            (push-debug `(,existing))
            (cerror "Redefine the existing category"
             "The name '~a' is already the name of the category ~a~
            ~%which was defined in ~a~
            ~%If you are deliberately reloading that file, bind ~
              *ignore-redefine-warning* to t"
             category-name existing loc))))

      (let* ((effective-rule-label (or rule-label category-name))
             (category ;; for the function word
              (define-category/expr category-name  ;; e.g. 'only'
                  `(:specializes ,super-category
                    :instantiates nil
                    :mixins ,mixins
                    :binds ,binds
                    :rule-label ,effective-rule-label
                    :bindings (,word-variable ,word)
                    :realization ,realization
                    :documentation ,documentation))))

        (let* ((word-key (intern (symbol-name word-variable)
                                 (find-package :keyword)))
               (instance-form `(define-individual ',category-name
                                   ,word-key ,word))
               i)
          (setq i (eval instance-form))

          (let ((rule ;; Create the single-term rule that rewrites the word
                 (define-cfr (or rule-label
                                 category)
                             (list word)
                   :form (category-named form)
                   :referent i)))
            
          (add-rule rule category)

          (when tree-families
            ;; Now knit the category into the correct set of form rules
            (unless (or *reduced-form-rules* rule-label)
              ;; But if there's a specified rule-label, e.g. specifying
              ;; 'sequencer' for "next" instead of using the category
              ;; for "next" that we just created, then some other routine
              ;; e.g., sequencer/determiner is responsible for making those 
              ;; form rules and we'd get a clash if we did them here. 
              (apply-function-term-etf category tree-families)))
          
          (let ((*head-rules-already-created* t))
            (declare (special *head-rules-already-created*))
            ;; Make realization-data object for the category
            (setup-word-data word (rationalize-pos form) category)
            ;; make the lexicalize phrase
            ;;///// FIXME the second argument (:common-noun) has to be
            ;;  based on the form parameter in a mapping something
            ;;  like the one for brackets at the top. Alternatively
            ;;  we pass in the form as it, and use the table in
            ;;  make-resource-for-sparser-word to the mapping
            (make-corresponding-mumble-resource word :common-noun i))

          ;; This isn't ready for prime time yet. The function it's
          ;; calling was never finished. We could get much of the same
          ;; effect by incorporating a tailored subcategorization mixin
          #+ignore(when subcat-info
            ;; Look up the Comlex subcategorization information for
            ;; this word. If there is any, and if it is of the specified
            ;; sort, add any rules that would apply.
            ;; Adjectives are the model case
            (add-specific-subcategorization-facts
             category word subcat-info))
 
          (values category
                  i
                  rule)))))))



(defun apply-function-term-etf (category raw-tree-family-data)
  "We recreate rdata expressions where the mapping is just one
   label, which we replace with category, then we apply a farily
   deep entry point inside model/tree-tamilies/driver to create
   the rule/s. Rules created here are stored on the category."
  (declare (special *convert-eft-form-categories-to-form-rules*))
  (loop with *convert-eft-form-categories-to-form-rules* = t
        for etf-name in raw-tree-family-data
        as etf = (exploded-tree-family-named etf-name)
        as label = (etf-form-substitution-label etf)
        as mapping = `((,label . ,category))
        do (loop for schema in (etf-cases etf)
                 do (add-rules (instantiate-rule-schema schema mapping category)
                               category))))

(defun etf-form-substitution-label (etf)
  (unless (memq (etf-name etf)
                '(generic-np-premodifier
                  prenominal-adjective
                  pre-verb-adverb 
                  post-verb-adverb 
                  sentence-adverb
                  pre-adj-adverb
                  pre-adv-adverb))
    (error "Haven't yet vetted this ETF for form rules: ~a" etf))
  (car (etf-labels etf)))


(defun rationalize-pos (form)
  "Convert from 'form' as used in define-function-term to one of the
   head-keyword part-of-speech options suitable for indicating its
   mumble equivalent."
  (ecase form
    (adverb :adverb)
    ((or adjective spatial-adjective temporal-adjective) :adjective)
    ((or comparative superlative
         comparative-adjective superlative-adjective) :adjective)
    ((or det approximator sequencer quantifier) :determiner)
    ((or conjunction subordinate-conjunction) :word) ;; i.e. ignore
    (preposition :preposition)
    ((noun common-noun) :common-noun)
    (standalone :word)))
