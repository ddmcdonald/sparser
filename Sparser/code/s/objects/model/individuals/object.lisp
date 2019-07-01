;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:individuals:"
;;;  version:  June 2017

;; initiated 7/16/92 v2.3
;; (6/8/93) added Indiv-typep
;; (8/7/94) added itypep as respelling of Indiv-typep and itype-of
;; 0.1 (3/3/95) modified itype-of to not break if it is passed an object
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


#| itype-of should be replaced with itype-of

!Davidsmcbookpro:s ddm$ grep "(itype-of" **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
!analyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (itype-of t1)))))
!analyzers/dmp/measure.lisp:                (symbol-name (cat-symbol (itype-of t2)))))
!analyzers/psp/referent/new-cases.lisp:    (annotate-site-bound-to value variable (itype-of body) edge-being-bound)
!grammar/rules/dmp/access-routines.lisp:         (case (cat-symbol (itype-of verb-segment))
!grammar/rules/dmp/display.lisp:     (case (cat-symbol (itype-of obj))
!grammar/rules/dmp/display.lisp:          (itype-of obj))
!grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (itype-of t1)))))
!grammar/rules/dmp/measure.lisp:                (symbol-name (cat-symbol (itype-of t2)))))
!grammar/rules/syntax/conjunction.lisp:                            (individual (itype-of left-ref))
!grammar/rules/syntax/conjunction.lisp:                             (individual (itype-of right-ref))
!objects/model/categories/clos-backing.lisp:                 (individual (itype-of o))
!objects/model/individuals/object.lisp:(defun itype-of (i) (itype-of i))
!objects/model/individuals/object.lisp:             (values t (itype-of i)))))))
!objects/model/individuals/object.lisp:  (cat-symbol (itype-of i)))
!objects/model/individuals/reclaim.lisp:      (pushnew (itype-of i) augmented-list))
!grammar/model/core/people/printers.lisp:                (ecase (cat-symbol (itype-of version-obj))
!grammar/model/core/places/places.lisp:                     (itype-of name) name)))))
!grammar/model/core/titles/rules.lisp:                 (itype-of possessive) 
!grammar/model/core/names/fsa/gofers-for-examine.lisp:  (let ((c (itype-of i)))
|#
  


(defgeneric itype-of (i)
  (:documentation "Get the primary super categories and the list of all super-categories of an individual")
  (:method ((i individual))
    (declare (optimize (speed 3)(safety 0)))
    (let ((type-field (indiv-type i)))
      (values (car type-field) type-field)))
  (:method ((m model-category))
    (declare (optimize (speed 3)(safety 0)))
    m)
  (:method ((i polyword ))
    (declare (optimize (speed 3)(safety 0)))
    (report-bad-itype-of i)     
    nil)
  (:method ((i word ))
    (declare (optimize (speed 3)(safety 0)))
    (report-bad-itype-of i)     
    nil)
  (:method ((i null))
    (declare (optimize (speed 3)(safety 0)))
    (report-bad-itype-of i)
    nil)
  (:method ((i cons))
    (declare (special *subcat-test*)
             (optimize (speed 3)(safety 0)))
    (if (and (consp (car i))
             (eq (caar i) :head)
             (consp (second i))
             (eq (car (second  i)) :subtype))
        ;; we don't handle plurals in the noew SUBTYPE form for types
        ;; e.g. the 1970s
        (then
          (unless *subcat-test*
            (warn "plural itypep for ~s in sentence ~s~%" i (current-string)))
          i)
        (report-bad-itype-of i)))
  (:method (i)
    (declare (optimize (speed 3)(safety 0)))
    (push-debug `(,i))
    (error "itype-of applied to a ~a rather than ~
             an individual" (type-of i))))


#| itype should change to be itypep -- by analogy to typep
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

(defun itype (i c/s)
  (indiv-typep i c/s))

(defun itypep (i c/s) 
  (cond
    ((null i) nil)
    ((symbolp i)
     (let ((cat (category-named i)))
       (if (null cat)
           (warn "no category named ~s~%" i)
           (itypep cat c/s))))
    ((consp c/s)
     (case (car c/s)
       (:or (loop for c in (cdr c/s) thereis (itypep i c)))
       (:primitive ;; happens in
        ;; (COMPATIBLE-WITH-SPECIFIED-PART-TYPE #<gene-transcript-over-express 152934> #<artifact 152933>)
        (typep i (second c/s)))
       (t
         (error "Bad super-type ~s in itype-p for ~s" c/s i))))
    (t
     (typecase i
       (individual
        (indiv-typep i c/s))
       (category
        (when (category-named c/s)
          (not (null (memq (category-named c/s) (super-categories-of i)))))
        #+ignore
        (category-inherits-type? i (or (category-named c/s)
                                       (return-from itypep nil))))
       (word
        (report-bad-itype-of i 'itypep)
        nil)
       (otherwise
        (report-bad-itype-of i 'itypep)
        nil)))))


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
   in its type field or any of the supercategories of its type field"
  (declare (special *break-on-pattern-outside-coverage?*
                    category::collection category::sequence))
  (let ((category (or (category-named category/symbol)
                      ;; if the target category doesn't exist
                      ;; just return nil rather than complaining.
                      (return-from indiv-typep nil)))
        (type-field (and (individual-p i) (indiv-type i))))
    
    (when (category-named 'collection)
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
                    (if (consp conj-type) conj-type `(,conj-type))))))))

    (typecase i
      (individual 
       (cond
        ((member category type-field :test #'eq) t)
        (t  ;; otherwise lets look at the supercategories
         (let ((inherits-it? ;;(individual-inherits-type? i category)
                (loop for c in type-field
                     when (category-inherits-type? c category)
                     return t)))
                #+ignore(category-inherits-type? (car type-field) ;; for conj
                                         category) ;; 'reference category'
           (when inherits-it?
             (values t (itype-of i)))))))
      (otherwise
       (when *break-on-pattern-outside-coverage?*
         (push-debug `(,i ,category/symbol))
         (error "indiv-typep not applied to an individual:~%~a  ~a"
                (type-of i) i))))))

(defun safe-itypep (low high)
  (when (or (individual-p low)
            (referential-category-p low))
    (itypep low high)))

(defun safe-itype-of (low)
  (when (or (individual-p low)
            (referential-category-p low))
    (itype-of low)))

#|  Chase down and revise
Davidsmbookpro2:s ddm$ grep "(indiv-typep "  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
grammar/rules/dmp/display.lisp:             (if (or (indiv-typep item 'text-term)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'pair-term)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'paragraph)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'section-object)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'number)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'have)
grammar/rules/dmp/display.lisp:                     (indiv-typep item 'frequency-of-event))
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'have)
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'pair-term)
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'paragraph)
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'section-object)
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'frequency-of-event)
grammar/rules/dmp/display.lisp:                ((indiv-typep item 'number)
objects/model/individuals/object.lisp:  (indiv-typep i c/s))
objects/model/individuals/object.lisp:        (indiv-typep i c/s))
grammar/model/core/names/name-words.lisp:             (indiv-typep lc-word 'name-word))
grammar/model/core/numbers/fsa-words.lisp:                             (indiv-typep number-obj
grammar/model/core/numbers/fsa-words.lisp:                      (indiv-typep multiplier-obj
grammar/model/core/people/object.lisp:  (unless (indiv-typep name 'person-name)
grammar/model/core/places/regions.lisp:      (unless (indiv-typep region category::location)
grammar/model/core/names/fsa/name-creators.lisp:        (when (indiv-typep (cdr pair) 'inc-term)
grammar/model/core/names/fsa/name-creators.lisp:               (indiv-typep item 'name-word))
|#

;;---- delayed method on categories

(defmethod category-named ((i individual) &optional errorp)
  (declare (ignore errorp))
  (car (indiv-type i)))




;;;-----------------
;;; Copy individual
;;;-----------------

(defun deep-copy-individual (i)
  "Create a new unindexed individual with the same type and bindings
   as the originial. N.b. this is not a copy within the description lattice.
   See find-or-make-lattice-subordinate which uses this function to
   make the base individual."
  (let* ((established-type (indiv-type i))
         (new (make-unindexed-individual (car established-type))))
    (when (cdr established-type) ;; carry over any mix-ins
      (setf (indiv-type new) established-type))
    (loop for binding in (reverse (indiv-binds i))
       ;; make/binding operates by a push operation
       ;; on the indiv-binds list, so we must do this in reverse
       ;; order to get the same list on the copy.
      do
      ;; use the call below the binding-hook check so we don't use it
      (make/binding (binding-variable binding)
                    (binding-value binding)
                    new))
    new))
