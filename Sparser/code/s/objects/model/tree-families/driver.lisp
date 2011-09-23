;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "driver"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  0.12 December 1995

;; initiated 8/4/92, fleshed out 8/27, elaborated 8/31
;; fixed a bug in how lists of rules were accumulated 11/2
;; 0.1 (6/1/93 v2.3) Added possibility for a schema to use form rules
;;      in its mapping data
;;     (7/19) fixed glitch in treatment of category's plist
;; 0.2 (8/4) added relation to cfrs when they're instantiated
;; 0.3 (10/25) allowed multiple categories to be mapped to terms
;;     (1/17/94) added :adjective case as c&s of :word
;; 0.4 (3/21) added check that head-words are defined
;; 0.5 (4/29) improved the treatment of the :instantiate-individual referent instr.
;; 0.6 (5/24) added case of time-deictics. 5/26 added adverbs
;;     (10/17) propagated a change in arguments
;; 0.7 (10/20) rewrote the multiple-term rhs iterators
;; 0.8 (11/1) hacked Make-rules-for-rdata to check for the head word specifying
;;      a lambda variable rather than a word.
;; 0.9 (2/28/95) made changes to return value of inner loop of rule of schema 
;;      instantiation to make it a flat list of cfrs. Higher loop may need to
;;      check as well.
;;     (3/7) put in the higher loop
;; 0.10 (5/15) added eft-case-rule-form to be clever about the passive
;; 0.11 (7/28) tweeked the referent construction routines to accomodate single categories
;; 0.12 (12/6) fixed a policy bug in Construct-referent such that it had preferred 'head'
;;       to instantiate-individual stmts, which was wrong.

(in-package :sparser)

;;;---------------------------------
;;; managing the rule instantiation
;;;---------------------------------

(defun make-rules-for-realization-data (category
                                        head-word
                                        exploded-tf
                                        mapping
                                        local-cases)
  ;; called from Setup-rdata.
  ;; Divides according to whether it's an original definition or
  ;; a redefinition.

  (if (cat-realization category)
    (revising-rules-from-rdata
     category head-word exploded-tf mapping local-cases)
    (make-rules-for-rdata
     category head-word exploded-tf mapping local-cases))

  category )



(defun revising-rules-from-rdata
       (category head-word exploded-tf mapping local-cases)

  ;; Any re-evaluation of a category's definition may involve
  ;; a revision of the rules that are implied by its rdata.
  ;; This checks that any rules no longer implied are deleted.

  (let* ((rdata (cat-realization category))
         (old-rules (cadr (member :rules rdata)))
         (new-rules (make-rules-for-rdata
                     category head-word exploded-tf mapping local-cases)))
    (dolist (cfr old-rules)
      (unless (member cfr new-rules :test #'eq)
        (format t "~A ~A~%  no longer supported by rdata for ~A"
                (symbol-name (cfr-symbol cfr)) cfr category)
        (delete/cfr cfr)))))



;;;-------------------------------------
;;; instantiating rdata for individuals
;;;-------------------------------------

(defun apply-realization-schema-to-individual (individual
                                               category
                                               rdata-schema)

  ;; We're applying a realization schema that was defined for
  ;; a category that defined its head-word as the value of
  ;; one of the variables that will be bound as the way to
  ;; individuate individuals.  We take the word that has been
  ;; bound to that individuating variable, make it the head
  ;; word, and instantiated the rules that the schema defines.

  (let ((head-word-variable (cdr (first rdata-schema)))
        (head-word-type     (car (first rdata-schema)))
        (etf         (second rdata-schema))
        (mapping     (third rdata-schema))
        (local-cases (fourth rdata-schema)))

    (let ((head-word (value-of head-word-variable
                               individual)))
      (unless head-word
        (break "Expected the individual ~A~
                ~%to have a value for its ~A variable.~
                ~%but it does not." individual head-word-variable))

      (let ((rules
             (make-rules-for-rdata category
                                   (cons head-word-type
                                         head-word)
                                   etf mapping local-cases
                                   individual )))

        (setf (unit-plist individual)
              `(:rules ,rules ,@(unit-plist individual)))
        rules ))))



;;;-----------------
;;; the real driver
;;;-----------------

(defun make-rules-for-rdata
       (category head-word exploded-tf mapping local-cases
        &optional individual )

  (let ((referent (or individual category))
        rules  rule/s-from-schema )

    (when head-word
      (unless (lambda-variable-p (cdr head-word))
        (setq rules
              (ecase (car head-word)
                (:verb (make-verb-rules
                        (cdr head-word) category referent))
                (:common-noun (make-cn-rules
                               (cdr head-word) category referent))
                (:word (make-rules-for-word-w/o-morph
                        (cdr head-word) category referent))
                (:adjective (make-rules-for-word-w/o-morph
                             (cdr head-word) category referent))
                (:adverb (make-rules-for-adverbs
                          (cdr head-word) category referent))
                (:proper-noun (make-pn-rules
                               (cdr head-word) category referent))
                (:standalone-word (make-rules-for-standalone-word
                                   (cdr head-word) category referent))
                ))))

    (when exploded-tf
      (dolist (rule-schema (etf-cases exploded-tf))
        (setq rule/s-from-schema
              (instantiate-rule-schema rule-schema mapping))
        (if (consp rule/s-from-schema)
          (setq rules (append rule/s-from-schema rules))
          (push rule/s-from-schema rules))))

    (when local-cases
      (dolist (rule-schema local-cases)
        (push (instantiate-rule-schema rule-schema mapping
                                       :local-cases? category)
              rules)))

    (unless individual
      ;; This is the procedure for storing the rules so they can be
      ;; updated as mappings change and rdata are re-evaluated.
      ;; This doesn't make sense for individuals.
      (let ((rules-cons (member :rules (cat-realization category))))
        (if rules-cons
          ;; then we're re-evaluating the rdata for this category and
          ;; we have to get rid of the old set (which have been kept
          ;; in Revising-rule-from-rdata for comparison)
          (rplacd rules-cons
                  (cons rules
                        (cdr rules-cons)))

          (setf (cat-realization category)
                `(:rules ,rules
                  ,@(cat-realization category))))))

    rules ))


;;;---------------------------
;;; instantiating the schemas
;;;---------------------------

(defvar *cfrs* nil
  "Accumulates cfr objects as they are created by the various iterators
   below.  Used to keep the iteration code clear.")


(defun instantiate-rule-schema (schema
                                mapping 
                                &key ((:local-cases? category-of-locals)))

  (let ((relation (car schema))
        (rule (cadr schema))
        lhs rhs form referent-schema referent )

    (setq lhs (replace-from-mapping
               (car rule) mapping category-of-locals)
          rhs (mapcar #'(lambda (label)
                          (replace-from-mapping
                           label mapping category-of-locals))
                      (cadr rule))
          referent-schema (massage-referent-schema (cddr rule)))

    (setq form (eft-case-rule-form (car rule) mapping))

        #|(eft-case-rule-form
           relation
           (category-named
            (strip-specializing-slash (car rule) mapping)))|#

    ;; the runtime version of the referent field has to be made
    ;; here because the straightline through def-cfr presumes it's
    ;; getting symbols and we've improved on that by having objects
    (setq referent
          (apply #'construct-referent
                 mapping category-of-locals referent-schema))

    (setq *cfrs* nil)

    (cond
     ;; check whether one of the terms is a list, in which case we
     ;; multiply through the categories in the list across the
     ;; rest of the rule's components, making several rules rather
     ;; than just one.
     ((listp lhs)
      (i/r/s-multiply-through/lhs lhs rhs form referent relation))
     ((some #'listp rhs)
      (i/r/s-multiply-through/rhs lhs rhs form referent relation nil))
     (t (i/r/s-make-the-rule lhs rhs form referent relation)))

    *cfrs* ))



(defun i/r/s-make-the-rule (lhs rhs form referent relation)
  ;; Used when there are no multiple terms in either the left
  ;; or righthand sides, or as the base case when there are.
  (let ((cfr
         (if (some #'(lambda (c)
                       (when (referential-category-p c)
                         (member :form-category
                                 (unit-plist c))))
                   rhs)
           (def-form-rule/resolved rhs form referent lhs)
           (define-cfr lhs rhs :form form :referent referent))))

    (setf (cfr-plist cfr)
          `(:relation ,relation
                      ,@(cfr-plist cfr)))

    ;; Before 2/28/95 this routine ended by 'push'ing the cfr it
    ;; constructs onto the global. That global is itself then pushed
    ;; onto the other rules (e.g. the verb rules) of the object
    ;; by Make-rules-for-rdata as it loops through accumulating
    ;; the values returned by Instantiate-rule-schema.
    ;;   That caused a bug in Subject-rule as used by Belmoral,
    ;; which expects the plist :rules field of a category's
    ;; realization field to contain a flat list of cfrs that it
    ;; can loop through. 
    ;(push cfr  *cfrs*)
    (if *cfrs*
      (if (consp *cfrs*)
        (push cfr  *cfrs*)
        (setq *cfrs* (list cfr *cfrs*)))
      (setq *cfrs* cfr))
    ))



(defun i/r/s-multiply-through/lhs (lhs rhs form referent relation)
  ;; the lhs is a list of categories rather than one. Multiply it
  ;; through using the routine that will also check whether the rhs
  ;; has lists of categories
  (dolist (category lhs)
    (i/r/s-multiply-through/rhs
     category rhs form referent relation nil)))



(defun i/r/s-multiply-through/rhs (lhs rhs form referent relation
                                   pending-prefix )
  ;; Recurses on the terms in the rhs, building up iterations along
  ;; the way for every case where a term in the prefix has multiple
  ;; possibilities.   Each run through the routine handles one term
  ;; starting from the left.

  (let ((term (first rhs))
        (rhs-tail (rest rhs)))

    (if (not (consp term))
      (if rhs-tail
        (i/r/s-multiply-through/rhs lhs rhs-tail
                                    form referent relation
                                    (append pending-prefix
                                            (list term)))
        (i/r/s-make-the-rule lhs (append pending-prefix
                                         (list term))
                             form referent relation))

      ;; multiple labels in this term of the rhs
      (dolist (label term)
        (if rhs-tail
          (i/r/s-multiply-through/rhs lhs rhs-tail
                                      form referent relation
                                      (append pending-prefix
                                              (list label)))
          (i/r/s-make-the-rule lhs (append pending-prefix
                                           (list label))
                               form referent relation))))))



;;;----------------------------
;;; determining the form label
;;;----------------------------

(defun eft-case-rule-form (lhs-symbol mapping)
  ;; Called from Instantiate-rule-schema. 
  (multiple-value-bind (category-name specialization)
                       (strip-specializing-slash lhs-symbol mapping)
    (if specialization
      (then
        (if (equal specialization "+ED")
          (cond ((eq category-name 'vg)
                 (category-named 'vg/passive))
                ((eq category-name 'vp)
                 (category-named 'vp/passive))
                (t (break "Assumption violation:  Only expected 'vg' or 'vp'~
                         ~%to be specialized with '+ed', but the label name~
                         ~%in this case is ~A" category-name)))
          (category-named category-name)))

      (category-named category-name))))





;;;------------------------------------
;;; hacking the referents to the cases
;;;------------------------------------

(defun massage-referent-schema (schema)
  ;; Called from Instantiate-rule-schema.
  ;; The number and pattern of arguments can be hard to fit
  ;; through the procrustian bed of "apply" in the call to actually
  ;; construct the referent, so we look for the odd cases that
  ;; won't fit the presumptions about numbers of arguments and
  ;; repackage them
  ;;    The argument is a list. The return value is another list.
  (if (= (length schema) 1)
    ;; Then it means the specification is a category by itself
    ;; but we have to package it in a list with a keyword marker
    ;; so that the call to Construct-referent will be happy.
    `(:single-return-value ,@schema)

    ;; it's the usual, multiple keyword case
    (do ((keyword (first schema)
                  (first rest-of-schema))
         (argument (second schema)
                   (second rest-of-schema))
         (rest-of-schema (cddr schema)
                         (cddr rest-of-schema))
         accumulating-list )
        ((null keyword)
         (nreverse accumulating-list))
      
      (when (eq keyword :function)
        (setq argument (list argument (pop rest-of-schema))))
      
      (push keyword accumulating-list)
      (push argument accumulating-list))))




(defun construct-referent (mapping
                           category-of-locals
                           &key head
                                ((:instantiate-individual indiv))
                                subtype
                                binds
                                function
                                daughter
                                single-return-value
                           &aux referent-form
                                other-forms
                                new-type )

  ;; Called from Instantiate-rule-schema to create the rule's referent
  ;; from the massaged schema.

  ;; 1st, establish what will be returned as the referent
  (setq referent-form
        (cond
         (single-return-value
          (let ((value (assoc single-return-value mapping :test #'eq)))
            (cdr value)))
         (indiv    ;; an 'instantiate-individual' instruction
          (setq new-type
                (if (assoc indiv mapping :test #'eq)
                  (cdr (assoc indiv mapping :test #'eq))
                  indiv))
          `(:instantiate-individual ,new-type))
         (head
          (let ((canonical-name
                 (canonical-ref-var head)))
            (unless canonical-name
              (break "Unexpected edge symbol used with daughter ~
                      argument: ~A" head))
            `(:daughter ,canonical-name)))
         (daughter
          (let ((canonical-name
                 (canonical-ref-var daughter)))
            (unless canonical-name
              (break "Unexpected edge symbol used with daughter ~
                      argument: ~A" daughter))
            `(:daughter ,canonical-name)))
         (function
          `(:funcall ,(first function) ,(second function)))
         (t (break "No known referent form in rdata"))))

  (when subtype
    (push `(:subtype ,subtype)
          other-forms))

  (when binds
    (multiple-value-bind (decoded-plist decoded-pairs)
                         (decode-binding
                          binds mapping category-of-locals)
      (declare (ignore decoded-plist))
      (if new-type
        (setq referent-form
              `(:instantiate-individual-with-binding
                ,new-type
                ,@decoded-pairs))  ;; decoded-plist  ??
        (push
         (if (cdr decoded-pairs) ;; more than one binding
           `(:bindings ,@decoded-pairs)
           `(:binding ,@decoded-pairs))
         other-forms))))

  (if (null other-forms)
    referent-form
    (cons referent-form (nreverse other-forms))))




(defun decode-binding (plist mapping category-of-locals)

  (let ( value  variable  decoded-plist  decoded-pairs )

    (do* ((var-symbol (pop plist) (pop remainder))
          (value-exp  (pop plist) (pop remainder))
          (remainder plist remainder))
         ((null var-symbol))

      (setq variable (cdr (assoc var-symbol mapping :test #'eq)))
      (when (null variable)
        (if category-of-locals
          ;; the schema that has this binding is local to the category
          ;; we're in the process of defining. This means it will
          ;; refer directly to its variables rather than generic names
          ;; of cases
          (unless (setq variable
                        (find var-symbol (cat-slots category-of-locals)
                              :key #'var-name))
            (error "The term ~A is neither in the mapping table nor the~
                    ~%variable list of the concept ~A"
                   variable category-of-locals))
          (else
            (error "No equivalent for ~A in the mapping table"
                   var-symbol))))

      (setq value (canonical-ref-var value-exp))
      (unless value
        (break "Value expression, ~A~
                ~%does not correspond to a canonical reference variable"
               value-exp))

      (push variable decoded-plist)
      (push value decoded-plist)
      (push `(,variable . ,value) decoded-pairs))

    (values (nreverse decoded-plist)
            (nreverse decoded-pairs))))
#|
  (let ((var-symbol (car pair))
        (value (cadr pair))
        variable )
 (break)
    (setq variable (cdr (assoc var-symbol mapping :test #'eq)))

    (when (null variable)
      (if category-of-locals
        ;; the schema that has this binding is local to the category we're
        ;; in the process of defining. This means it will refer directly
        ;; to its variables rather than generic names of cases
        (unless (setq variable
                      (find var-symbol (cat-slots category-of-locals)
                            :key #'var-name))
          (error "The term ~A is neither in the mapping table nor the~
                  ~%variable list of the concept ~A"
                 variable category-of-locals))
        (else
          (error "No equivalent for ~A in the mapping table" var-symbol))))

    `(:binding ,variable
               ,(canonical-ref-var value)) ))
         |#
