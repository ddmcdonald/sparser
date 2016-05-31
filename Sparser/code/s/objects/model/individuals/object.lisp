;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.5 November 2015

;; initiated 7/16/92 v2.3
;; (6/8/93) added Indiv-typep
;; (8/7/94) added itypep as respelling of Indiv-typep and i-type-of
;; 0.1 (3/3/95) modified i-type-of to not break if it is passed an object
;;      other than an individual
;; 0.2 (9/13) extended indiv-typep to look up the lattice
;; 0.3 (8/14/13) Since itypep may be used in cases where its argument
;;      is a category (head word) rather than an individual, added a
;;      diversion for that case. 4/16/14 ditto for itype-of
;; 0.4 (6/5/15) indiv-typep now returns nil when passed a category.
;;     6/8/2015 avoid break in itypep by flagging mixin categories  
;;     7/7/15 Removing psi deadwood.
;; 0.5 (10/16/15) Cleaned up. Allowing mixins to itypep, previous
;;      change was too stringent. Inserted a convenience for the
;;      case of conjunctions, where the type is buried inside the
;;      structure. 
;;     (11/12/15) Added special routine for removing all the rules
;;      from a category given as the routines that add them aren't consistent.


(in-package :sparser)

;;;-------------------------------
;;; basic operations & predicates 
;;;-------------------------------

;;--- entry points (/// should be consolidated)

(defun itype-of (i) (i-type-of i))


#| i-type-of should be replaced with itype-of

Davidsmcbookpro:s ddm$ grep "(i-type-of" **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
analyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t1)))))
analyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t2)))))
analyzers/psp/referent/new-cases.lisp:    (annotate-site-bound-to value variable (i-type-of body) edge-being-bound)
grammar/rules/dmp/access-routines.lisp:         (case (cat-symbol (i-type-of verb-segment))
grammar/rules/dmp/display.lisp:     (case (cat-symbol (i-type-of obj))
grammar/rules/dmp/display.lisp:          (i-type-of obj))
grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t1)))))
grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t2)))))
grammar/rules/syntax/conjunction.lisp:                            (individual (i-type-of left-ref))
grammar/rules/syntax/conjunction.lisp:                             (individual (i-type-of right-ref))
objects/model/categories/clos-backing.lisp:                 (individual (i-type-of o))
objects/model/individuals/object.lisp:(defun itype-of (i) (i-type-of i))
objects/model/individuals/object.lisp:             (values t (i-type-of i)))))))
objects/model/individuals/object.lisp:  (cat-symbol (i-type-of i)))
objects/model/individuals/reclaim.lisp:      (pushnew (i-type-of i) augmented-list))
grammar/model/core/people/printers.lisp:                (ecase (cat-symbol (i-type-of version-obj))
grammar/model/core/places/places.lisp:                     (i-type-of name) name)))))
grammar/model/core/titles/rules.lisp:                 (i-type-of possessive) 
grammar/model/core/names/fsa/gofers-for-examine.lisp:  (let ((c (i-type-of i)))
|#
(defun i-type-of (i)
  (typecase i
    (individual
     (let ((type-field (indiv-type i)))
       (values (car type-field)
               type-field)))
    (model-category i)
    (polyword 
     (report-bad-itype-of i)     
     nil)
    (word 
     (report-bad-itype-of i)     
     nil)
    (null
     (report-bad-itype-of i)     
     nil)
    (otherwise
     (push-debug `(,i))
     (error "itype-of applied to a ~a rather than ~
             an individual" (type-of i)))))


(defun itype (i c/s)
  (indiv-typep i c/s))
#| This should also change to be itypep -- by analogy to typep

nalyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t1)))))
analyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t2)))))
analyzers/psp/referent/new-cases.lisp:    (annotate-site-bound-to value variable (i-type-of body) edge-being-bound)
grammar/rules/dmp/access-routines.lisp:         (case (cat-symbol (i-type-of verb-segment))
grammar/rules/dmp/display.lisp:     (case (cat-symbol (i-type-of obj))
grammar/rules/dmp/display.lisp:          (i-type-of obj))
grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t1)))))
grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (i-type-of t2)))))
grammar/rules/syntax/conjunction.lisp:                            (individual (i-type-of left-ref))
grammar/rules/syntax/conjunction.lisp:                             (individual (i-type-of right-ref))
objects/model/categories/clos-backing.lisp:                 (individual (i-type-of o))
objects/model/individuals/object.lisp:(defun itype-of (i) (i-type-of i))
objects/model/individuals/object.lisp:             (values t (i-type-of i)))))))
objects/model/individuals/object.lisp:  (cat-symbol (i-type-of i)))
objects/model/individuals/reclaim.lisp:      (pushnew (i-type-of i) augmented-list))
grammar/model/core/people/printers.lisp:                (ecase (cat-symbol (i-type-of version-obj))
grammar/model/core/places/places.lisp:                     (i-type-of name) name)))))
grammar/model/core/titles/rules.lisp:                 (i-type-of possessive) 
grammar/model/core/names/fsa/gofers-for-examine.lisp:  (let ((c (i-type-of i)))
Davidsmcbookpro:s ddm$ 
Davidsmcbookpro:s ddm$ 
Davidsmcbookpro:s ddm$ grep "(itype " **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
analyzers/context/operations.lisp:                (itype so 'section-object)
analyzers/context/operations.lisp:                (itype so 'paragraph))
analyzers/dmp/measure.lisp:          ((and (itype h1 'pair-term) (itype h2 'term))
analyzers/dmp/measure.lisp:          ((and (itype h1 'term) (itype h2 'pair-term))
analyzers/dmp/measure.lisp:          ((and (itype h1 'term) (itype h2 'term))
analyzers/dmp/measure.lisp:          ((and (itype h1 'pair-term) (itype h2 'pair-term))
analyzers/dmp/measure.lisp:        (unless (itype body (category-named 'segment))
grammar/rules/dmp/measure.lisp:          ((and (itype h1 'pair-term) (itype h2 'term))
grammar/rules/dmp/measure.lisp:          ((and (itype h1 'term) (itype h2 'pair-term))
grammar/rules/dmp/measure.lisp:          ((and (itype h1 'term) (itype h2 'term))
grammar/rules/dmp/measure.lisp:          ((and (itype h1 'pair-term) (itype h2 'pair-term))
grammar/rules/dmp/measure.lisp:        (unless (itype body (category-named 'segment))
grammar/rules/dmp/pair-terms.lisp:    (+ (if (itype head 'term)
grammar/rules/dmp/pair-terms.lisp:       (if (itype other 'term)
grammar/rules/dmp/pair-terms.lisp:  (cond ((and (itype i1 'pair-term)
grammar/rules/dmp/pair-terms.lisp:              (itype  i2 'pair-term))
grammar/rules/dmp/pair-terms.lisp:        ((and (itype i1 'term)
grammar/rules/dmp/pair-terms.lisp:              (itype i2 'term))
grammar/rules/dmp/pair-terms.lisp:        ((and (itype i1 'pair-term)
grammar/rules/dmp/pair-terms.lisp:              (itype i2 'term))
grammar/rules/dmp/pair-terms.lisp:        ((and (itype i1 'term)
grammar/rules/dmp/pair-terms.lisp:              (itype i2 'pair-term))
grammar/rules/dmp/segments.lisp:    (if (itype s 'segment)
grammar/rules/dmp/you.lisp:         (cond ((itype vp-segment 'segment)
grammar/rules/dmp/you.lisp:               ((itype vp-segment 'verb-object)
objects/model/bindings/object.lisp:                (individual (itype body category))
objects/model/kraql/kraql.lisp:    (let ((itype (indiv-type individual)))
grammar/model/core/collections/obj-specific-printers.lisp:      (unless (itype s 'sequence)
grammar/model/core/collections/operations.lisp:  (unless (itype sequence 'sequence)
grammar/model/core/companies/names.lisp:  (when (itype company 'company)
grammar/model/core/companies/object.lisp:   ((itype name 'company)
grammar/model/core/companies/object.lisp:   ((itype name 'person)
grammar/model/core/companies/object.lisp:   ((itype name 'name-word)
grammar/model/core/companies/object.lisp:  (when (itype name 'collection)
grammar/model/core/companies/object.lisp:  (unless (itype name 'company-name)
grammar/model/core/names/object.lisp:      (if (and (itype name1 'name) (itype name2 'name))
grammar/model/sl/biology/amino-acids.lisp:                   (unless (itype number-exp 'number)
grammar/model/sl/ern/discourse-heuristics.lisp:          (if (itype (value-of 'change chg) 'change-by-amount)
grammar/model/sl/ern/discourse-heuristics.lisp:                (if (itype (value-of 'amount amt-of-chg) 'percent)
grammar/model/sl/ern/stream-through-driver.lisp:  (when (itype obj (category-named 'qualified-financial-data))
grammar/model/core/names/fsa/subseq-ref.lisp:  (unless (itype name 'uncategorized-name)
|#
(defun itypep (i c/s) 
  (if (consp i)
    (error "what are you doing passing a CONS to itypep: ~s~&" i)
    (typecase i
      (individual
       (indiv-typep i c/s))
      (referential-category
       (category-inherits-type? i (category-named c/s :break-if-none)))
      (mixin-category
       ;; strictly speaking mixins are not organized into taxonomies
       ;; but in most code one won't be able to tell
       (category-inherits-type? i (category-named c/s :break-if-none)))
      (word
       (report-bad-itype-of i 'itypep)
       nil)
      (otherwise
       (report-bad-itype-of i 'itypep)
       nil))))


(defparameter *complain-about-odd-args-to-itypep* nil
  "Do we 'report' it when something is passed to itypep
   or itype-of that isn't an individual ora category,
   or just return nil.")

(defparameter *break-on-bad-itype-of* nil
  "Break on bad itypep rather than just report.")

(defun report-bad-itype-of (i &optional (called-from 'itype-of))
  (when *complain-about-odd-args-to-itypep*
    (if *break-on-bad-itype-of* 
      (break "~s applied to ~s rather than an individual" called-from i)
      (then 
        (format t "~&--- ~S applied to ~s rather than an individual" called-from i)
        (format t "~&(setq *break-on-bad-itype-of* T) to cause a break here")))))




;;--- Does the actual search

(defun indiv-typep (i category/symbol)
  "Analogous to typep: does this individual include this category
in its type field?"
  (declare (special *break-on-pattern-outside-coverage?*
                    category::collection category::sequence))
  (let ((category (category-named category/symbol :break-if-none))
        (type-field (and (individual-p i) (indiv-type i))))
    (when (or (memq category::collection type-field)
              (memq category::sequence type-field))
      ;; of course, one can ask a collection whether it is 
      ;; a collection and have it say yes rather than
      ;; look at what it's a collection of
      (unless (or (eq category category::collection)
                  (eq category category::sequence))
        (let ((conj-type (value-of 'type i)))
          (when conj-type
            ;; If there isn't a type, then this was either a badly
            ;; modeled collection (though all the ones created by
            ;; conjunction have been vetted), or it's an instance
            ;; of the actual word, e.g. "a specific phorphorylation 
            ;; sequence" in the ASPP January article. These need
            ;; proper models, but we can't block a type-check waiting
            ;; for them all to be done
            (setq type-field 
                  (if (consp conj-type) conj-type `(,conj-type)))))))

    (typecase i
      (individual 
       (cond
        ((member category type-field :test #'eq) t)
        (t  ;; otherwise lets look at the supercategories
         ;; We've already checked the base case of individual-inherits-type
         ;; so we can skip to the next level 
         (let ((inherits-it? ;;(individual-inherits-type? i category)
                (category-inherits-type? (car type-field) ;; for conj
                                         category))) ;; 'reference category'
           (when inherits-it?
             (values t (i-type-of i)))))))
      (otherwise
       (when *break-on-pattern-outside-coverage?*
         (push-debug `(,i ,category/symbol))
         (error "indiv-typep not applied to an individual:~%~a  ~a"
                (type-of i) i))))))

           

;;---- Misc. 

;;/// is this being used?
(defun itype-symbol (i)
  (cat-symbol (i-type-of i)))


;;;----------------
;;; deleting rules
;;;----------------
;; Goes here since class individual isn't available when the cfrs
;; are loaded.  

(defmethod remove-rules-from-category ((i individual))
  (remove-rules-from-category  (get-tag :rules i)))

(defmethod remove-rules-from-category ((rules list))
  (dolist (rule rules)
    (when (consp rule)
      ;; This is a major inconsisency b/w routines that
      ;; add rules to things. 
      (setq rule (car rule)))
     (delete/cfr rule)))

