;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "driver"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  2.1 September 2011

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
;; 1.0 (2/15/98) Redit Instantiate-rule-schema in terms of structures for the
;;      schematic cases. 2/16 added schema to each cfr made. 2/19 included
;;      residual case for 'additional-rules'. *schema-being-instantiated* added
;;      as a global 2/24. 3/7 fixed c&s bug in Construct-referent.
;; 1.1 (7/20) Reorganized the threading to match the reorg of the callers in
;;      rdata1 so that the rules are passed back up rather than being cached
;;      on the category within here. (7/23) re-org'd the multiply-through-rhs because
;;      it was overly complicated. Moved out the checking of old-rules to the
;;      caller in rdata1 because it the timing made it inflict colateral damage.
;; 1.2 (8/14/99) Tweaked Construct-referent and Massage-referent-schema to handle
;;      the case of :function referent schemas better. N.b. there's now a provision
;;      for zero or one argument to the function. This should be generalized.
;; 1.3 (9/3) Modified Apply-realization-schema-to-individual to accomodate a
;;      :no-head-word value for that field in rdata-schema.
;;     (3/31/05) touched it while debugging. (4/11) incorporated case of secondary
;;      function calls into Construct-referent - needed for general treatment of
;;      'fiscal' and the adjective-creates-subtype etf.
;; 1.4 (7/2/07) Added a define-rewriting-form-rule to go with every regular cfr
;;      that's instantiated when that makes sense. Guarded by *new-dm&p*.
;;     (8/7) replaced the guard with the more specific *infer-rewriting-form-rules*.
;; 1.5 (4/20/09) Reworked Construct-referent to look for mappings of subtype
;;     labels. Motivated by "get out of the car" and transitive/specializing-pp.
;; 1.6 (6/17/09) Lets the form derive from the schema as well as heuristically
;; 2.0 (7/24/09) Now that variables are lexicalized we have to pass the category
;;      down to the interpretation of the mapping to ensure that the correct,
;;      category-specific variables are used -- see decode-binding
;;     (10/8/09) Fixed bug in decode-binding. (4/6/11) cleaned up indents.
;; 2.1 (4/8/11) Put in switch to control formation of form rules when the
;;      rhs involves a form category. 9/9 put :method in, fixed but in 
;;      construct-referent for function case. 

(in-package :sparser)

;;;---------------------------------
;;; managing the rule instantiation
;;;---------------------------------

(defun make-rules-for-realization-data (category
                                        head-word
                                        exploded-tf
                                        mapping
                                        local-cases)
  ;; called from setup-rdata.
  ;; Divides according to whether it's an original definition or
  ;; a redefinition.  <--- stoped this 7/23/98 because of
  ;; colateral damage from the timing of multiple rdata sets.
  (make-rules-for-rdata
     category head-word exploded-tf mapping local-cases)
  
  #+ignore  ;; original
  (if (cat-realization category)
    (revising-rules-from-rdata
     category head-word exploded-tf mapping local-cases)
    (make-rules-for-rdata
     category head-word exploded-tf mapping local-cases))
  )


;; No longer used 7/23/98
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
        (delete/cfr cfr)))
    new-rules ))



;;;-------------------------------------
;;; instantiating rdata for individuals
;;;-------------------------------------

(defun apply-realization-schema-to-individual (individual
                                               category
                                               rdata-schema)
  
  ;; Called from define-individual. The rdata-schema is the value 
  ;; of the :schema key in the realization field of the category. 
  ;; We're applying a realization schema that was defined for
  ;; a category that defined its head-word as the value of
  ;; one of the variables that will be bound as the way to
  ;; individuate individuals. We take the word that has been
  ;; bound to that individuating variable, make it the head
  ;; word, and instantiated the rules that the schema defines.
  
  (let ((head-field (first rdata-schema))
        (etf         (second rdata-schema))
        (mapping     (third rdata-schema))
        (local-cases (fourth rdata-schema)))
    
    (let* ((no-head (eq head-field :no-head-word))
           (head-word-variable (unless no-head (cdr (first rdata-schema))))
           (head-word-type     (unless no-head (car (first rdata-schema))))
           (head-word (when head-word-variable
                        (value-of head-word-variable individual)))
           (head-pair (unless no-head
                        (cons head-word-type
                              head-word))))
      (unless no-head
        (unless head-word
          (break "Expected the individual ~A~
                  ~%to have a value for its ~A variable.~
                  ~%but it does not." individual head-word-variable)))
      
      (let ((rules
             (make-rules-for-rdata category
                                   head-pair
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

    (when (and head-word
               (not (eq head-word :no-head-word)))
      (unless (lambda-variable-p (cdr head-word))
        (setq rules (head-word-rule-construction-dispatch ;;/// add instantiates check
                      head-word category referent))))

    (when nil ;; needs more layout work
      (dolist (keyword head-word)
        (append (head-word-rule-construction-dispatch 
                 keyword category referent)
                rules)))

    (when exploded-tf
      (dolist (rule-schema (etf-cases exploded-tf))
        (setq rule/s-from-schema
              (instantiate-rule-schema rule-schema mapping category))
        (if (consp rule/s-from-schema)
          (setq rules (append rule/s-from-schema rules))
          (push rule/s-from-schema rules))))

    (when local-cases
      (dolist (rule-schema local-cases)
        (push (instantiate-rule-schema rule-schema mapping category
                                       :local-cases? category)
              rules)))
    rules ))


;;;---------------------------
;;; instantiating the schemas
;;;---------------------------

(defvar *cfrs* nil
  "Accumulates cfr objects as they are created by the various iterators
   below.  Used to keep the iteration code clear.")

(defvar *schema-being-instantiated* nil
  "Bound in Instantiate-rule-schema to fill the 'schema' field of the
   cfrs that are created.")


(defun instantiate-rule-schema (schema
                                mapping 
                                category
                                &key ((:local-cases? category-of-locals)))

  (let* ((additional-rule (consp schema))
         (relation (if additional-rule
                     (first schema)
                     (schr-relation schema)))
         (schematic-lhs (if additional-rule
                          (first (second schema))
                          (schr-lhs schema)))
         (schematic-rhs (if additional-rule
                          (second (second schema))
                          (schr-rhs schema)))
         (schematic-referent (if additional-rule
                               (cddr (second schema))
                               (schr-referent schema)))
         (schematic-form (unless additional-rule
                           (schr-form schema)))
         lhs rhs form referent-schema referent

        (*schema-being-instantiated* schema))

    (setq lhs (replace-from-mapping
               schematic-lhs mapping category category-of-locals)
          rhs (mapcar #'(lambda (label)
                          (replace-from-mapping
                           label mapping category category-of-locals))
                      schematic-rhs)
          referent-schema (massage-referent-schema schematic-referent
                                                   mapping))

    (setq form (or schematic-form
		   (eft-case-rule-form schematic-lhs mapping)))

    ;; the runtime version of the referent field has to be made
    ;; here because the straightline through def-cfr presumes it's
    ;; getting symbols and we've improved on that by having objects
    (setq referent
          (apply #'construct-referent
                 mapping category category-of-locals referent-schema))

    (setq *cfrs* nil)
    ;; The iterators below push the rules that they make onto this
    ;; global to save us from the hassle of threading them back
    ;; through their return paths

    (cond
     ;; check whether one of the terms is a list, in which case we
     ;; multiply through the categories in the list across the
     ;; rest of the rule's components, making several rules rather
     ;; than just one.
     ((listp lhs)
      (i/r/s-multiply-through/lhs lhs rhs form referent relation))
     ((some #'listp rhs)
      (i/r/s-multiply-through/rhs lhs rhs form referent relation))
     (t (i/r/s-make-the-rule lhs rhs form referent relation)))

    (if (consp *cfrs*)
      (dolist (cfr *cfrs*)
        (setf (cfr-schema cfr) schema))
      (setf (cfr-schema *cfrs*) schema))
    *cfrs* ))



(defun i/r/s-make-the-rule (lhs rhs form referent relation)
  ;; Used when there are no multiple terms in either the left
  ;; or righthand sides, or as the base case when there are.
  (let ((cfr
         (if (and *convert-eft-form-categories-to-form-rules*
                  (some #'(lambda (c)
                            (when (referential-category-p c)
                              (member :form-category
                                      (unit-plist c))))
                        rhs))
           (def-form-rule/resolved rhs form referent lhs)
           (define-cfr lhs rhs :form form :referent referent))))

    (when cfr
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
      ;;(push cfr  *cfrs*)
      (if *cfrs*
	(if (consp *cfrs*)
	  (push cfr  *cfrs*)
	  (setq *cfrs* (list cfr *cfrs*)))
	(setq *cfrs* cfr)))

    (when *infer-rewriting-form-rules*
      ;; see if we can make an additional form rule by interpolating
      ;; from the naming conventions in the EFT
      (let ((form-cfr (define-rewriting-form-rule rhs form referent)))
	(when form-cfr
	  (when (typep *cfrs* 'cfr)
	    (setq *cfrs* (list *cfrs*)))
	  (push form-cfr
		*cfrs*))))))
    



(defun i/r/s-multiply-through/lhs (lhs rhs form referent relation)
  ;; the lhs is a list of categories rather than one. Multiply it
  ;; through using the routine that will also check whether the rhs
  ;; has lists of categories
  (dolist (category lhs)
    (i/r/s-multiply-through/rhs
     category rhs form referent relation)))



(defun i/r/s-multiply-through/rhs (lhs rhs form referent relation)
  (unless (= (length rhs) 2)
    (error "This routine only handles binary rules"))

  (let ((left (first rhs))
        (right (second rhs)))
    (cond
     ((consp left)
      (dolist (left-label left)
        (if (consp right)
          (dolist (right-label right)
            (i/r/s-make-the-rule lhs (list left-label right-label)
                                 form referent relation))
          (i/r/s-make-the-rule
           lhs (list left-label right) form referent relation))))
     ((consp right)
      (dolist (right-label right)
        (i/r/s-make-the-rule
         lhs (list left right-label) form referent relation)))
     (t
      (i/r/s-make-the-rule 
       lhs (list left right) form referent relation)))))







#|  original
(defun i/r/s-multiply-through/rhs (lhs rhs form referent relation
                                   pending-prefix )
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
                               form referent relation)))))) |#



;;;----------------------------
;;; determining the form label
;;;----------------------------

(defun eft-case-rule-form (lhs-symbol mapping)
  ;; Called from instantiate-rule-schema. 
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


(defun interpolate-form-category-in-rhs-of-schema (rhs head-side schema)
  ;; We're making a rewriting form rule, so we're looking for a form category
  ;; that's implicit in the naming conventions of the labels in an ETF,
  ;; e.g. np/subject.
  ;;   If we find one (invariably 'np'), we return a new rhs using it instead
  ;; of the original 
  (let* ((schematic-rhs (schr-rhs schema))
	 (label-of-bound ;; the label of the consitituent that's folded into the head
	  (case head-side
	    (left-referent (second schematic-rhs))
	    (right-referent (first schematic-rhs))
	    (otherwise
	     (error "Bad threading - unreasonable value for an edge reference ~
                      within a referent: ~a" head-side)))))

    (when (symbolp label-of-bound) 
      ;; it's occasionally a word, e.g. (#<word "per"> unit-of-measure),
      ;; in which case we're not creating a new rhs so we return nil
      ;; to keep the caller (define-rewriting-form-rule) from making
      ;; a rule
      (let ((np? (search "NP/" (symbol-name label-of-bound) :test #'string-equal)))
	(when np?
	  ;; Just look for np options for now
	  (case head-side
	    (left-referent `(,(first rhs) ,(category-named 'np)))
	    (right-referent `(,(category-named 'np) ,(second rhs)))))))))







;;;------------------------------------
;;; hacking the referents to the cases
;;;------------------------------------

(defun massage-referent-schema (schema mapping)
  ;; Called from instantiate-rule-schema.
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

    ;; it's the usual multiple keyword case
    (do ((keyword (first schema)
                  (first rest-of-schema))
         (argument (second schema)
                   (second rest-of-schema))
         (rest-of-schema (cddr schema)
                         (cddr rest-of-schema))
         accumulating-list )
        ((null keyword)
         (nreverse accumulating-list))
      
      (when (or (eq keyword :function)
                (eq keyword :method))
        (let ( mapped-expression  substitution )
          (dolist (item argument)
            (setq substitution (cdr (assoc item mapping :test #'eq)))
            (if substitution
              (push substitution mapped-expression)
              (push item mapped-expression)))
          (setq argument (nreverse mapped-expression))))

      (push keyword accumulating-list)
      (push argument accumulating-list))))




(defun construct-referent (mapping
                           category
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

  ;; Called from instantiate-rule-schema to create the rule's referent
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
              (break "Unexpected edge symbol used with head ~
                      argument: ~A" head))
            `(:head ,canonical-name)))
         (daughter
          (let ((canonical-name
                 (canonical-ref-var daughter)))
            (unless canonical-name
              (break "Unexpected edge symbol used with daughter ~
                      argument: ~A" daughter))
            `(:daughter ,canonical-name)))
         (function
          (let ((form
                 (if (cdr function)
                   `(:funcall ,(first function) ,(second function))
                   `(:funcall ,(first function)))))
            (setq function nil) ;; defang later check
            form))
         (t (break "No known referent form in rdata"))))

  (when subtype
    (let ((mapped (cdr (assoc subtype mapping :test #'eq))))
      (when mapped 
	(unless (category-p mapped)
	  (setq mapped (find-or-make-category mapped :mixin))))
      (push `(:subtype ,(or mapped subtype))
	    other-forms)))

  (when function 
    ;; passes through dispatch-on-rule-field-keys and ultimately
    ;; handled by ref/function
    (push `(:funcall  ,@function)
          other-forms))

  (when binds
    (multiple-value-bind (decoded-plist decoded-pairs)
                         (decode-binding
                          binds mapping category category-of-locals)
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




(defun decode-binding (plist mapping category category-of-locals)

  (let ( value  variable  map-variable  decoded-plist  decoded-pairs )

    (do* ((var-symbol (pop plist) (pop remainder))
          (value-exp  (pop plist) (pop remainder))
          (remainder plist remainder))
         ((null var-symbol))

      (setq map-variable (cdr (assoc var-symbol mapping :test #'eq)))
      (setq variable 
	    (or (eq map-variable category) ;; :self
		(when map-variable
		  (find-variable-for-category 
		   (var-name map-variable) category))))

      ;; originally was this, where we use the var-symbol defined by
      ;; the etf to retrieve the variable. So we go another step
      ;; and make sure

;;      (push-debug `(,category ,variable)) (break "decode-binding")
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
                   var-symbol category-of-locals))
          (else
	    (push-debug `(,category ,var-symbol ,mapping))
            (error ;;"No equivalent for ~A in the mapping table"
	     "Cannot find a variable named ~a~%on the category ~a"
	     map-variable category))))

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
