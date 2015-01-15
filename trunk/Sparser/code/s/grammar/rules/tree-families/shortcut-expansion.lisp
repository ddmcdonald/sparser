;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-expansion"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2014

;; Broken out of shortcut-master 9/21/14 to allow both files to be
;; seen at once now that the cases have gotten intricate.
;;1/14/2015 Changes to put :subject and :object selectional restrictions in the subcat frame

(in-package :sparser)



(defun create-category-for-a-term (name superc 
                                   mixins restrict rule-label
                                   slot1 slot1-var ;; agent, subject
                                   &optional
                                   slot2 slot2-var ;; patient, theme, complement
                                   slot3 slot3-var) ;; goal
  (let ((bindings
         (cond ((and slot1 slot2 slot3)
                `((,slot1 ,slot1-var)
                  (,slot2 ,slot2-var)
                  (,slot3 ,slot3-var)))
               ((and slot1 slot2)
                `((,slot1 ,slot1-var)
                  (,slot2 ,slot2-var)))
               (slot1
                `((,slot1 ,slot1-var))))))
    (let ((form
           `(define-category ,name
              :instantiates :self
              :specializes ,superc
              :restrict ,restrict
              :mixins ,mixins
              :rule-label ,rule-label
              ;; index ??
              :binds ,bindings)))
      (eval form))))


(defun formulate-by-category (base)
  ;; the base is one of the slot-forming expressions 
  (let* ((base-name (etypecase base
                      (symbol base)
                      (cons (car base))
                      (category (cat-symbol base))))
         (by-cat-name (name-to-use-for-category
                       (string-append ':by- base-name))))
    ;; This is what the define-category macro opens up as
    ;; for a trivial category like this
    (cat-symbol
     (find-or-make-category-object by-cat-name :define-category))))


(defun apply-subcat-if-any (subcategorization category pname)
  (when subcategorization
    (push-debug `(,subcategorization ,category ,pname))
    (let ((word (resolve/make pname)))
      (assign-subcat/expr word 'verb ;;/// pass that info in as parameter
                          category 
                          `(:pattern ,subcategorization)))))


;;should be renamed -- general subcategorization for syntactic relations including thatcomp
(defun subcategorize-for-preposition (category pname var-name)
  ;; called from decode-realization-parameter-list in the shortcuts.
  (push-debug `(,category ,pname ,var-name))
  (let ((variable (variable/category var-name category))
        (preposition (resolve pname)))
    (unless variable
      (error "No variable named ~a associated with ~a"
             var-name category))
    (unless (or (eq category::thatcomp preposition)
                (memq preposition '(:subject :object))
                (word-is-a-preposition? preposition))
      (error "~s does not appear to be a preposition." pname))
    (let ((v/r (var-value-restriction variable)))
      (assign-prepositional-subcategorization
       category preposition v/r variable))))



(defun apply-preposition-if-any (pname preposition category)
  "The pname is the base form of the word being defined.
   The preposition is the string for the preposition we're assigning."
  (when preposition
    (when (consp preposition)
      (break "stub: consp prep")) ;; change category
    (apply-preposition pname preposition category)))

(defun apply-preposition (pname preposition category)
  (let* ((prep (resolve/make preposition))
         (prep-label (single-rewrite-label-over prep)) ;; fails if none
         (rule (define-cfr category `(,category ,prep-label)
                 :form category::vg
                 :referent '(:daughter left-referent))))
    (add-rule-to-category rule category)
    (let ((verb (resolve pname)))
      (assign-subcat/expr verb 'verb category `(:prep ,prep)))))

;;//// move where it can be found
(defmethod single-rewrite-label-over ((pname string))
  (let ((word (word-named pname)))
    (unless word (error "There is no word spelled ~s" pname))
    (single-rewrite-label-over word)))

(defmethod single-rewrite-label-over ((w word))
  (let ((rs (word-rule-set w)))
    (unless rs (error "There is no rule set on ~a" w))
    (let ((single-term (rs-single-term-rewrites rs)))
      (unless single-term
        (error "~s does not have an single-term rewrite rules"
               (word-pname w)))
      ;; The motivating case is prepositions, so lets not
      ;; worry about multiple rewrite rules yet.
      (let ((rule (car single-term)))
        (cfr-category rule)))))





(defun apply-rdata-mappings (category mapping-keys
                             &key word-keys args)
  (push-debug `(,category ,mapping-keys ,word-keys ,args))
  (dolist (key mapping-keys)
    (let ((scheme (get-realization-scheme key)))
      (unless scheme
        (error "There is no realization scheme named ~a" key))
      (apply-realization-scheme category scheme args word-keys))))

(defun apply-realization-scheme (category scheme args word-keys)
  ;; This is an open-coding of make-rules-for-rdata
  (push-debug `(,category ,scheme ,args ,word-keys))
  (let* ((etf (etf-for-schema scheme))
         (head-keyword (schema-head-keyword scheme))
         (mapping (assemble-scheme-form scheme args etf category))
         (head-word-pname (cdr (assq head-keyword word-keys)))
         head-word  irregulars )
    (cond
     ((consp head-word-pname)
      ;; two cases, multiple words and a single word with irregularities
      ;; See, e.g., make-verb-rules for how this is sorted out later.
      (cond
       ((some #'keywordp head-word-pname)
        (setq head-word (resolve/make (car head-word-pname))
              irregulars (cdr head-word-pname))
        (when irregulars
          (push-debug `(,irregulars ,head-word))
          (setq irregulars 
                (loop for item in irregulars
                  when (keywordp item) collect item
                  when (stringp item) collect (resolve/make item)))))
       ((every #'stringp head-word-pname)
        (setq head-word (loop for string in head-word-pname
                          collect (resolve/make string))))
       (t 
        (push-debug `(,head-word-pname ,category))
        (error "Oddly formed head-word pname: ~a" head-word-pname))))
     (t
      (setq head-word (resolve/make head-word-pname)
            irregulars (cdr (assq :irregulars word-keys)))))

    (push-debug `(,etf ,head-keyword ,head-word ,mapping)) ;(break "1")
    (unless head-word
      (push-debug `(,scheme ,word-keys))
      (error "The word-keys don't have an entry for ~a" head-keyword))
    (let* ((head-form (if irregulars
                        `(,head-keyword ,head-word ,@irregulars)
                        `(,head-keyword . ,head-word)))
           (rules (head-word-rule-construction-dispatch
                   head-form
                   category
                   category))) ;; 'referent' -- in other cases an individual
      (let* ((rule-schemas (etf-cases etf))
             rule/s-from-schema )
        (when *big-mechanism*
          (setq rule-schemas (filter-out-big-mech-bad-schemas rule-schemas)))
        (dolist (schema rule-schemas)
          (setq rule/s-from-schema
                (instantiate-rule-schema schema mapping category))
          (if (consp rule/s-from-schema)
            (setq rules (append rule/s-from-schema rules))
            (push rule/s-from-schema rules)))
        (add-rules-to-category category rules)))))

                
(defun assemble-scheme-form (schema args-to-substitute etf category)
  "Rebuild the schematic mapping into a real mapping according to the
   category-specific substitution arguments. Does much of the same job
   as decode-binding in interpreting symbols and strings."
  (push-debug `(,schema ,args-to-substitute ,etf ,category)) ;; (break "pop")
  ;; (setq schema (car *) args-to-substitute (cadr *) etf (caddr *) category (cadddr *))
  (let (;;(parameter-symbols (etf-parameters etf))
        (mapping-form (schema-mapping schema))
        new-mapping  car-value  cdr-value)
    (dolist (pair mapping-form)
      (setq car-value (car pair)
            cdr-value (cdr pair))
      (cond
       ((eq cdr-value :self)
        (push `(,car-value ,category) new-mapping))
       ((stringp cdr-value)
        (let ((word (resolve/make cdr-value)))
          (push `(,car-value ,word) new-mapping)))
       (t
        (let ((subst-value (cdr (assq cdr-value args-to-substitute))))
          (unless subst-value
            (error "No value for ~a among the substitution args"
                   cdr-value))
          (let ((decoded-value
                 (typecase subst-value
                   (lambda-variable subst-value)
                   (category subst-value)
                   (symbol
                    (or (category-named subst-value)
                        (find-variable-in-category subst-value category)))
                   (otherwise
                    (error "Unexpected type of subst-value: ~a~%~a"
                           (type-of subst-value) subst-value)))))
            (unless decoded-value
              (error "Could not decode the substitution value ~a"
                     subst-value))

            (push `(,car-value . ,decoded-value)
                  new-mapping))))))
    (nreverse new-mapping)))


;;;-------------------------------------------------------------
;;; hack to avoid the burned-in pp's created by the passive ETF
;;;-------------------------------------------------------------

(defparameter *big-mech-bad-schemas*
  '(:passive-with-by :by-phrase))

(defun filter-out-big-mech-bad-schemas (rule-schemas)
  (loop for schema in rule-schemas
    unless (memq (schr-relation schema) *big-mech-bad-schemas*)
    collect schema))


             
