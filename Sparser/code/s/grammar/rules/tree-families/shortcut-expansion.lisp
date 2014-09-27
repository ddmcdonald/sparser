;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-expansion"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2014

;; Broken out of shortcut-master 9/21/14 to allow both files to be
;; seen at once now that the cases have gotten intricate.

(in-package :sparser)



(defun create-category-for-a-term (name superc 
                                   mixins restrict rule-label
                                   slot1 slot1-var ;; agent, subject
                                   &optional
                                   slot2 slot2-var ;; patient, theme
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


(defun apply-subcat-if-any (subcategorization category pname)
  (when subcategorization
    (push-debug `(,subcategorization ,category ,pname))
    (let ((word (resolve/make pname)))
      (assign-subcat/expr word 'verb ;;/// pass that info in as parameter
                          category 
                          `(:pattern ,subcategorization)))))


(defun apply-preposition-if-any (pname preposition category)
  "The pname is the base form of the word being defined.
   The preposition is the string for the preposition we're assigning.
   The category is the label that will be on all the edges with
   that word as their head."
  (when preposition
    (when (consp preposition)
      (break "stub: consp prep")) ;; change category
    (let* ((prep (resolve/make preposition))
           (prep-label (single-rewrite-label-over prep)) ;; fails if none
           ;(category-name (cat-symbol category))
            (rule (define-cfr category `(,category ,prep-label)
                   :form category::vg
                   :referent '(:daughter left-referent))))
      (add-rule-to-category rule category)
      (let ((verb (resolve pname)))
        ;;(push-debug `(,prep ,verb ,category))
        ;;(break "applying prep ~s" preposition)
        (assign-subcat/expr verb 'verb category `(:prep ,prep))
        ;;(break "After applying prep ~s" preposition)
))))

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
         (head-word (resolve/make head-word-pname)))
    (push-debug `(,etf ,head-keyword ,head-word ,mapping)) ;; (break "1")
    (unless head-word
      (push-debug `(,scheme ,word-keys))
      (error "The word-keys don't have an entry for ~a" head-keyword))
    (let* ((head-form `(,head-keyword . ,head-word))
           (rules (head-word-rule-construction-dispatch
                   head-form
                   category
                   category))) ;; 'referent' -- in other cases an individual
      (let* ((rule-schemas (etf-cases etf))
             rule/s-from-schema )
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
  (push-debug `(,schema ,args-to-substitute ,etf ,category)) ;(break "pop")
  ;; (setq schema (car *) args-to-substitute (cadr *) etc (caddr *) category (cadddr *))
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
          (push-debug `(,subst-value))
          (unless (symbolp subst-value)
            (error "Unexpected type of value naming a slot: ~a~%~a"
                   (type-of subst-value) subst-value))
          ;; These are either the names of slots, where we use the 
          ;; variable from the category, or they are the names of
          ;; categories that are value-restrictions. 
          ;; If all the parameter names matched up, we could use
          ;; the ETF's parameters as a guide, but they don't and
          ;; shouldn't when the category specializes them. 
          (let ((variable (find-variable-in-category subst-value category))
                (category (category-named subst-value)))
            (unless (or variable category)
              (error "There is no binding (variable) named ~a~
                    ~%in the category ~a nor is there a category ~
                      with that name." subst-value category))


            (push `(,car-value . ,(or variable category))
                  new-mapping))))))
    (nreverse new-mapping)))


             
