;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "rdata"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  1.5 December 2013

;; initiated 8/4/92 v2.3, fleshed out 8/10, added more cases 8/31
;; 0.1 (5/25/93) changed what got stored, keeping around a dereferenced
;;      version of the rdata so that individuals could prompt rule definition
;; 0.2 (10/25) Allowed mappings to multiple categories
;;     (1/17/94) added :adjective as a option for heads. 5/24 added 'time-deictic'
;;     5/26 aded 'adverb'  10/6 added option for a label to be a word
;; 0.3 (10/20) rewrote 'time-deictic' as 'standalone-word'
;; 0.4 (11/1) hacked Setup-rdata to have rules be written even when the head word
;;      specifies a variable rather than a word
;; 1.0 (12/6/97) bumped on general principles given new work on psi.
;;     (7/5/98) modified Decode-rdata-mapping to allow lists of words.
;; 1.1 (7/12) provided for multiple definitions.
;;     (6/24/99) Added standalone rdata assembler to solve timing problems.
;;     (7/3) renamed it '1'.
;; 1.2 (9/3) Adjusted Dereference-rdata to use the symbol :no-head-word
;;      when there isn't one, instead of the value nil. This solved a problem
;;      with the rdata of currency.
;;     (9/30) Tweaked Decode-rdata-mapping to appreciate the possibility that
;;      a parameter could get the value :self.
;;     (11/18) Added :preposition to the list in Vet-rdata-keywords and
;;      dereference-rdata. (7/11/00) added :quantifier.  (4/11/05) added check 
;;      to Decode-rdata-mapping to allow symbols to pass on through if they're
;;      the names of functions. (7/23/09) Added interjection.
;; 1.3 (2/21/11) Added define-marker-category as another standalone def form
;;      where we're defining a minimal category along with its realization.
;; 1.4 (8/11/11) moved in define-realization from the workbench file it
;;      was in (interface/workbench/def-rule/save1.lisp). Refactored setup-
;;      rdata a bit to allow a standalone realization spec to add to the
;;      existing rules rather than replace them: define-additional-realization.
;;      8/16 fixed decode-rdata-mapping to accommodate references to variables
;;      that are in the category's parents. 9/6/11 propogated change to
;;      override-label in decode-rdata-mapping. 12/10/11 added :verb to the
;;      set of rdata keywords. 
;;      (2/11/12) Took :verb out of the keywords because it interferes with
;;      the binding of the parameters in dereference-rdata by blocking the
;;      binding of :main-verb (created a preference for :verb), so no verbs
;;      were getting realizations. (1/5/13) minor in-line doc.
;;     (3/7/13) added :method to go with :function in ever-appears-in-function-referent
;;      that lets us supply functions to the mappings as though they were
;;      conventional binding-parameters. 
;;     (11/18/13) Added some routines to root around inside realization data.
;; 1.5 (12/4/13) Modified deref-rdata-word to look at all slots and not just local ones.
;;     (12/26/13) Tweeked decode-rdata-mapping to notice an explicit category
;;      as the equivalent of :self.

(in-package :sparser)


;;;----------------------
;;; standalone def forms
;;;----------------------

;; This is marked '1' because there's no utility yet in reconciling
;; its argument signature with the earlier Define-realization that
;; is part of the mechanics of writing out contructed definitions.
;; See interface;workbench:def rule.

;; N.b. As of 1/5/13 There are only two calls to define-realization1,
;; One in kinds/np-rules and one in numbers/objects1, so we should
;; be able to remove it

(defmacro define-realization1 (category &body rdata)
  `(if (category-named ',category)
     (setup-rdata (category-named ',category) ',rdata)
     (break "There is no category named ~a" ',category)))


(defmacro define-realization
          (category-name tree-family-name mapping-expression)
  `(define-realization/expr
     ',category-name ',tree-family-name ',mapping-expression))

(defun define-realization/expr (category-name
                                tree-family-name
                                mapping-expression )

  (let ((category (category-named category-name))
        (tree-family (exploded-tree-family-named tree-family-name))
        (mapping (vivify-mapping-exp mapping-expression)))
    ;; This version was written in 1995

    ;; ?? make a permanent hookup to the category ??
    ;; Could be useful if a word substitution is involved

    ;; copy of loop in Make-rules-for-rdata
    (dolist (cfr-template (etf-cases tree-family))
      (instantiate-rule-schema cfr-template mapping category))))




(defmacro define-marker-category (category-name &key realization)
  "This amounts to reversible syntactic sugar for the light, 'glue'
   categories that don't add any content (variables) but indicate
   a context for a complement (folded into the realization by name)
   that controls how it's incorporated into larger phrases.
     The category that's created is just the minimal form of
   simple syntactic categories. For something substantive use
   full arguments with define-category."
  `(define-marker-category/expr ',category-name ',realization))

(defun define-marker-category/expr (category-name realization-expr)
  (let ((category (or (category-named category-name)
                      (find-or-make-category  
                       category-name :def-category))))
    (setup-rdata category realization-expr)))



(defmacro define-additional-realization (category &body rdata)
  `(define-additional-realization/expr ',category ',rdata))

(defmethod define-additional-realization/expr ((category referential-category) rdata)
  (setup-rdata category rdata nil)) ;; nil overrides delete?

(defmethod define-additional-realization/expr ((category symbol) rdata)
  (if (category-named category)
    (setup-rdata (category-named category) rdata nil) ;; nil overrides delete?
    (break "There is no category named ~a" category)))


;;;-----------------------------------------------------------
;;; entry point from the definition of a referential category
;;;-----------------------------------------------------------

(defun setup-rdata (category rdata &optional (delete? t))
  ;; Setup-rdata ia called from decode-category-parameter-list as part of 
  ;; defining a category This routine is responsible for decoding the rdata field,
  ;; the routines in objects/model/tree-families/driver are the ones 
  ;; that actually create the rules when individualsof this category are
  ;; created. Runs for side-effects on the category object. The function
  ;; that actually makes the rules is make-rules-for-realization-data
 
  (let ((old-rules
         (when (cat-realization category)
           (cadr (member :rules (cat-realization category))))))

    (typecase (first rdata)
      (cons (setup-for-multiple-rdata category rdata))
      (keyword (setup-single-rdata category rdata))
      (otherwise
       (push-debug `(,category ,rdata))
       (error "Can not make sense of this realization expression ~
               for the category ~a~%   ~a" category rdata)))

    (let ((new-rules
           (cadr (member :rules (cat-realization category)))))

      (when old-rules
        (if delete?
          (then 
           ;(push-debug `((:new ,new-rules) (:old ,old-rules)))
           ;(break "forstall stupidness")
            (dolist (cfr old-rules)
              (unless (member cfr new-rules :test #'eq)
                (format t "~&~A ~A~%  no longer supported by rdata for ~A"
                        (symbol-name (cfr-symbol cfr)) cfr category)
                (delete/cfr cfr)))
            new-rules)
          ;; Otherwise we add the new ones
          (let ((merged old-rules))
            (format t "~&~a old rules, ~a new ones"
                    (length old-rules) 
                    (length (cadr (member :rules (cat-realization category)))))            
            (dolist (cfr new-rules)
              (pushnew cfr merged))
            (format t "~&~a merged" (length merged))
            (let ((cons-cell (member :rules (cat-realization category))))
              (rplaca (cdr cons-cell)
                      merged)
              merged)))))))


(defun setup-single-rdata (category rdata)
  ;; 1st check for spelling errors in the keywords
  (vet-rdata-keywords category rdata)
  ;; now dereference the symbols
  (dereference-and-store?-rdata-schema category rdata t))

(defun setup-for-multiple-rdata (category list-of-rdata)
  (let ( head-word  etf  mapping  rules  local-cases 
         all-schemas  all-rules )
    (dolist (rdata list-of-rdata)
      (vet-rdata-keywords category rdata)
      (multiple-value-setq (head-word etf mapping local-cases rules)
        (dereference-and-store?-rdata-schema category rdata nil)) ;; nil overrides store
      (push `(:schema (,head-word ,etf ,mapping ,local-cases))
            all-schemas)
      (setq all-rules (append rules all-rules)))
    (setf (cat-realization category)
          `(:rules ,all-rules ,@all-schemas))))


(defun dereference-and-store?-rdata-schema (category rdata store?)
  (multiple-value-bind (head-word etf mapping local-cases)
                       (apply #'dereference-rdata category rdata)
    (let ((rules (make-rules-for-realization-data ;; <<< does the work
                  category head-word etf mapping local-cases)))
      (if store?
        (setf (cat-realization category)
              `(:schema (,head-word
                         ,etf
                         ,mapping
                         ,local-cases)
                :rules ,rules))
        (values head-word etf mapping local-cases rules)))))



;;--- Check for legal keywords in realization field of category

(defun vet-rdata-keywords (category rdata)
  (do ((key (car rdata) (car rest))
       (rest (cddr rdata) (cddr rest)))
      ((null key))

    (unless (keywordp key)
      (error "Realization data for ~A includes ~A~
              ~%    which is in a keyword position but isn't a keyword"
             category key))

    (unless (member key
                    '(:tree-family :mapping
                      :main-verb :common-noun :proper-noun
                      :quantifier :adjective :interjection
                      :adverb :preposition :word :standalone-word
                      :special-case-head
                      :additional-rules )

                    :test #'eq)
      (error "In the realization data for ~A~
              ~%there is the key ~A~
              ~%which isn't one of the defined keys.~
              ~%Check the spelling."
             category key))))



;;--- methods for other routines (like NLG) that need to examine schema

(defmethod retrieve-schema-forms ((category referential-category))
  (let ((rdata  (cat-realization category)))
    (when rdata
      (retrieve-schema-forms rdata))))

(defmethod retrieve-schema-forms ((realization-data cons))
  (loop for form in realization-data
    when (and (consp form) (eq (car form) :schema))
    collect (cadr form)))

(defmethod identify-schema-with-variable ((schema-forms cons) &optional break?)
  ;; (:schema ((:proper-noun . #<variable nname>) nil nil nil))
  (let ((value
         (loop for form in schema-forms
           as head-field = (first (second form))
           as value = (cdr head-field)
           when (lambda-variable-p value) return form)))
    (or value
        (when break?
          (error "No realization schema based on a variable. Check definitions")))))
;; If I need a third one of these it goes into a macro
(defmethod identify-schema-with-word ((schema-forms cons) &optional break?)
  ;; (:schema (((:common-noun . #<word "waypoint">) nil nil nil))
  (let ((value
         (loop for form in schema-forms
           as head-field = (first form)
           as value = (cdr head-field)
           when (word-p value) return form)))
    (or value
        (when break?
          (error "No realization schema based on a variable. Check definitions")))))

  
;;;------------------------------------------------
;;; the real driver: symbols -> objects by keyword
;;;------------------------------------------------

(defvar *schematic?* nil
  "A device to communicate between deref-rdata-word, where the fact
   that a head-word has been given as the name of a variable rather
   than a string defines the rdata as being schematic, and the
   function below, where I want to pass that fact back to its caller.")

(defun dereference-rdata (category
                          &key ((:tree-family tf-name))
                               mapping
                               ((:main-verb    mvb-name))
                               ((:common-noun  cn-name))
                               ((:proper-noun  pn-name))
                               standalone-word
                               adjective
                               quantifier
                               interjection
                               adverb
                               preposition
                               word
                               ((:special-case-head  no-head))
                               ((:additional-rules cases)))

  "Does the symbols to objects converstion for realization data. 
   Returns the arguments to feed into make-rules-for-realization-data."

  ;; called from Setup-rdata using 'apply'

  (setq *schematic?* nil)  ;; initialize the flag
  (let ((head-word
         ;; Since we're not going to instantiate the rules for these
         ;; right here, and since the next layer isn't keyword driven,
         ;; we have to encode the part-of-speech information here.
         (cond (mvb-name
                (cons :verb
                      (deref-rdata-word mvb-name category)))
               (cn-name
                (cons :common-noun
                      (deref-rdata-word cn-name category)))
               (adjective
                (cons :adjective
                      (deref-rdata-word adjective category)))
               (quantifier
                (cons :quantifier
                      (deref-rdata-word quantifier category)))
               (adverb
                (cons :adverb
                      (deref-rdata-word adverb category)))
               (interjection
                (cons :interjection
                      (deref-rdata-word interjection category)))
               (preposition
                (cons :preposition
                      (deref-rdata-word preposition category)))
               (standalone-word
                (cons :standalone-word
                      (deref-rdata-word standalone-word category)))
               (word
                (cons :word
                      (deref-rdata-word word category)))
               (pn-name
                (cons :proper-noun
                      (deref-rdata-word pn-name category)))
               (no-head 
                nil)
               (t ;(break "No head word included with the rdata for ~A~
                  ;        ~%Continue if that's ok" category)
                  nil )))
        
        (tf (exploded-tree-family-named tf-name))
        decoded-mapping  decoded-cases )

    (when tf-name
      (unless tf
        (error "There is no tree family named ~A~
                ~% category = ~A" tf-name category))
      (setq decoded-mapping
            (decode-rdata-mapping mapping category tf)))

    (when cases
      (setq decoded-cases (decode-cases cases)))

    (values (if (or no-head
                    (null head-word))
              :no-head-word ;; previously nil (9/3/99)
              head-word)
            tf
            decoded-mapping
            decoded-cases
            *schematic?* )))



(defun deref-rdata-word (string-or-symbol category)
  (etypecase string-or-symbol
    (list
     ;; its either multiple (synomymous) words or the specification
     ;; of special cases in the morphology or both
     (cond ((listp (first string-or-symbol))
            ;; its both
            (mapcar #'(lambda (string)
                        (deref-rdata-word string category))
                    string-or-symbol))
           ((some #'keywordp string-or-symbol)
            ;; its a specificiation
            (deref-rdata-word-with-morph string-or-symbol))
           (t  ;; multiple words
            (mapcar #'(lambda (string)
                        (deref-rdata-word string category))
                    string-or-symbol))))

    (symbol
     (if string-or-symbol
       (let ((var (find-variable-for-category string-or-symbol category)))
         (unless var
           (error "Rdata word field contains a symbol indicating it ~
                   denotes a variable~%but the symbol ~A does not ~
                   correspond to any of the ~%variables of ~A"
                  string-or-symbol category))
         (setq *schematic?*  ;; flag in the caller
               `t)
         var )
       (else
         (break "null string-or-symbol passed in")
         :foo )))

    (string
     (resolve-string-to-word/make string-or-symbol))))



(defun deref-rdata-word-with-morph (specification)
  ;; we pass back a list where the strings have been replaced
  ;; with words.
  (let ( dereffed )
    (dolist (term specification)
      (push (etypecase term
              (keyword term)
              (string (resolve-string-to-word/make term)))
            dereffed))
    (nreverse dereffed)))



(defun decode-cases (cases)
  ;; Additional cases don't use mappings. They use the names of
  ;; categories, words, or variables directly.  Given the way the
  ;; rest of the modularity has worked out, all we have to do is
  ;; look for strings and replace them since everything else will
  ;; have been handled by replace-from-mapping even though it's
  ;; really superfluous.
  (let ( relation rule lhs  rhs  referent  decoded-cases )
    (dolist (case cases)
      (setq relation (first case)
            rule (cadr case))
      (setq lhs (first rule)
            rhs (second rule)
            referent (cddr rule))

      (when (some #'stringp rhs)
        (let ( acc )
          (dolist (term rhs)
            (push (if (stringp term)
                    (resolve-string-to-word/make term)
                    term)
                  acc))
          (setq rhs (nreverse acc))))

      (push `(,relation (,lhs ,rhs
                              ,@referent ))
            decoded-cases))

    (nreverse decoded-cases)))




(defun decode-rdata-mapping (mapping category tf)

  ;; semantic parameters are decoded as variables
  ;; syntactic labels are decoded as categories

  (let ((parameters (etf-parameters tf))
        (labels (etf-labels tf))
        term  value  var  cat  new-list )

    (dolist (pair mapping)
      (setq term (car pair)
            value (cdr pair))

      (when (listp value)
        ;; either there's a notation error and they've left off the dot
        ;; or there are several categories that are to be mapped to.
        ;; We check here for the notation error.
        (when (null (cadr value))
          (setq value (car value))
          (format t "~%Mapping values should be dotted pairs.~
                     ~%The ~A pair of ~A isn't a pair.~
                     ~%Continuing anyway." pair category)))
      (cond
       ((member term parameters :test #'eq)
        (or (and (eq value :self)
                 (setq var category))

            #|(let ((possible-self 
                   (etypecase value
                     (category value)
                     (symbol (category-named value)))))
              (when possible-self
                (when (eq possible-self category)
                  (setq var category)))) |#

            (setq var (find-variable-for-category value category))
            (and (ever-appears-in-function-referent term tf)
                 (setq var value))
            (else
             (push-debug `(,term ,value ,mapping ,category ,tf))
             (error "There is no variable named ~A in ~A,~
                   ~%as used in its rdata with value ~a."
                    term category value)))
        (push (cons term var)
              new-list))

       ((member term labels :test #'eq)
        (setq cat
              (cond
                ((eq value :self)
                 (let ((override-category (override-label category)))
                   (if (and override-category
                            (not (eq override-category category)))
                     override-category
                     category)))
                ((stringp value)
                 (resolve-string-to-word/make value))
                ((listp value)
                 (let ( acc )
                   (dolist (v value)
                     (if (stringp v)
                       (push (resolve-string-to-word/make v) acc)
                       (push (find-or-make-category-object
                              v :def-category)
                             acc)))
                   (nreverse acc)))
                (t (find-or-make-category-object
                    value :def-category))))
        (push (cons term cat)
              new-list))

       (t (error "The term ~A in the rdata mapping for ~A~
                  ~%isn't defined for the exploded tree family ~A"
                 term category tf))))

    (nreverse new-list)))


(defun ever-appears-in-function-referent (term tf)
  ; The alternative to this rather deep check is to add another
  ; field to etf to hold this case of a simple symbol (the name
  ; of a function) that forestalls its interpretation as either
  ; a category or a binding variable by Decode-rdata-mapping.
  (let ((cases (etf-cases tf))
        referent  fn-exp  does-appear? )
    (dolist (schr cases)
      (setq referent (schr-referent schr))
      (when referent
        (setq fn-exp (or (cadr (memq :function referent))
                         (cadr (memq :method referent))))
        (when fn-exp
          (when (memq term fn-exp)
            (setq does-appear? t)))))
    does-appear?))



;;;--------------------------------------
;;; decoding category realization fields
;;;--------------------------------------
;; This code was originally in tsro gophers

(defun analyze-realization-data (category)
  ;; called from standard-tsro-via-category and from various
  ;; definition routines that want their words handled by
  ;; the standard mechanisms
  (when (sparser::cat-realization category)
    ;; // the organization of this plist is not particularly coherent
    (let ((realization-data (sparser::cat-realization category))
          schema  etf  word-pattern)
      (do ((item (first realization-data) (first rest))
           (next-item (second realization-data) (second rest))
           (rest (cdr realization-data) (cdr rest)))
          ((null item)) ;; there can be multiple schema
        ;; first case that was written
        (when (and (consp item)
                   (eq (car item) :schema))
          (setq schema (second item)))

        ;; Ordinal is like this
        (when (eq item :schema)
          (setq schema next-item))

        (when schema
          (dolist (term schema)
            (when (typep term 'sparser::exploded-tree-family)
              (push term etf))
            (when (and (consp term)
                       (keywordp (first term))
                       (sparser::defined-type-of-single-word 
                         (first term)))
              (setq word-pattern term)))
          (setq schema nil)))

        (values etf word-pattern))))



(defun find-word-realization-within-category-realization (category)
  (let ((realization (mumble::realization-for category)))
    (when realization
      (dolist (element realization nil)
        (unless (eq element :rules)
          (when (eq (car element) :schema)
            (let* ((schema (second element))
                   (first-term (first schema))) ;; too arbitrary !!
              (unless (eq first-term :no-head-word)
                (when (keywordp (car first-term))
                  (return-from find-word-realization-within-category-realization
                    (and (sparser::word-p (cdr first-term))
                         (cdr first-term))))))))))))
