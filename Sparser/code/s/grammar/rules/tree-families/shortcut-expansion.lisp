;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-expansion"
;;;   Module:  "grammar;rules;tree-families;"
;;;  Version:  August 2016

;; Broken out of shortcut-master 9/21/14 to allow both files to be
;; seen at once now that the cases have gotten intricate.
;; 1/14/2015 Changes to put :subject and :object selectional restrictions
;; in the subcat frame. 3/16/15 Small tweeks, lots of renaming to
;; handle multiple v/r's leading to multiple rules. 
;; 8/11/16 Revised and simplified.

(in-package :sparser)

;;;-----------------------------
;;; Prepositions owned by verbs
;;;-----------------------------

(defun apply-preposition (pname preposition category)
  (declare (ignore pname))
  (let* ((prep (resolve/make preposition))
         (prep-label (single-rewrite-label-over prep)) ;; fails if none
         (rule (define-cfr category `(,category ,prep-label)
                 :form category::vg
                 :referent '(:daughter left-referent))))
    (add-rule rule category)
    (assign-subcategorization category :prep prep nil)))

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


;;;---------------------
;;; Applying ETF schema
;;;---------------------

(defun apply-rdata-mappings (category etf-names &key args word-keys)
  (dolist (name etf-names)
    (let ((scheme (get-realization-scheme name)))
      (apply-realization-scheme category scheme args word-keys))))

(defun apply-realization-scheme (category scheme substitution-map word-keys)
  ;; This is an open-coding of make-rules-for-rdata
  (let* ((etf (etf-for-schema scheme))
         (head-keyword (schema-head-keyword scheme))
         (mapping (assemble-scheme-form scheme substitution-map etf category))
         (head-word-pname (cdr (assq head-keyword word-keys)))
         (rr (make-realization-data category :etf etf :map mapping))
         head-word  irregulars )
    (record-use-of-tf-by etf category)
    (cond
     ((consp head-word-pname)
      ;; two cases, multiple words and a single word with irregularities
      ;; See, e.g., make-verb-rules for how this is sorted out later.
      (cond
       ((some #'keywordp head-word-pname)
        (setq head-word (resolve/make (car head-word-pname))
              irregulars (cdr head-word-pname))
        (when irregulars
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
    (record-rdata-head rr head-word)
    (setf (rdata-head-irregulars rr) irregulars)

    (unless head-word
      (push-debug `(,scheme ,word-keys))
      (error "The word-keys don't have an entry for ~a" head-keyword))
    (let* ((head-form (if irregulars
                        `(,head-keyword ,head-word ,@irregulars)
                        `(,head-keyword . ,head-word)))
           (rules (make-head-word-rules head-form category category)))
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
        (add-rules rules category)))))

                
(defun assemble-scheme-form (schema args-to-substitute etf category)
  "Rebuild the schematic mapping into a real mapping according to the
   category-specific substitution arguments. Does much of the same job
   as decode-binding in interpreting symbols and strings."
  (declare (ignore etf))
  (let ((override-category (override-label category))
        (mapping-form (schema-mapping schema))
        new-mapping  car-value  cdr-value)
    (dolist (pair mapping-form)
      (setq car-value (car pair)
            cdr-value (cdr pair))
      (cond
       ((eq cdr-value :self)
        (push `(,car-value ,(or override-category
                                category))
              new-mapping))
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
                        (find-variable-in-category subst-value category)
                        (error "The symbol ~a can't be interpreted as ~
                                a category or a variable." subst-value)))
                   (cons
                    (unless (eq (car subst-value) :or)
                      (push-debug `(,subst-value ,category))
                      (error "List-valued substitution value doesn't ~
                              start with ':or'"))
                    ;; expect this to be a list of categories since
                    ;; it's pulled right off the variable/s v/r
                    (unless (every #'category-p (cdr subst-value))
                      (push-debug `(,subst-value))
                      (error "':or' list is not all categories: ~a"
                             subst-value))
                    ;; drop the :or
                    (cdr subst-value))
                   (otherwise
                    (push-debug `(,subst-value ,category))
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


             
