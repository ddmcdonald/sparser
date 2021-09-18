;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2021 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:individuals:"
;;;  version:  September 2021

;; initiated 7/16/92 v2.3
;; 0.1 (11/23) Tweeked an internal call w/in Define-individual to fit lower change
;;      in argument pattern.
;; 0.2 (5/15/93) Added Throw-away individuals as an interim measure in lieu
;;      of revising the indexing and having composite categories etc.
;; 0.3 (5/25) added capacity to instantiate rules off individuals that
;;      provide concrete values for words given schematically in their categories
;; 0.4 (6/7) put in some variations on the calling syntax
;;     (6/19) fixed but in adding subtypes
;; 0.5 (1/10/94) renamed Make-throw-away-individual to Make-trivial-individual
;;     (7/13) wrote Make-an-individual  (8/8) tweeked comments
;; 0.6 (9/28) setup to flush calls to def-individual since it didn't use the
;;      resource for individuals
;; 0.7 (11/5) fixed assumption about the order of items on the plist in define-individual
;; 0.8 (4/20/95) sharpening protocol for permanent individuals
;;     (5/13) continued that by refining the call that produced the object, and
;;      added a wrapper.
;; 0.9 (9/19) changed Make-an-individual to use make/permanent-individual
;; 1.0 (9/7/98) made over Make/individual to use psi
;; 1.1 (10/26) revised Make/individual to allow some old simple cases by or'ing in
;;      Make-trivial-saturated-individual.
;;     (1/24/99) fixed bug in Saturated-form-on-primitives about v/r.
;;     (6/12/99) added saturated-simple-index to the criteria for making individuals
;;     (9/30) Added yet another case: sets-a-name-slot
;; 1.2 (10/10) Changed the policy in Define-individual that anything, anytime that it
;;      creates is to be permanent (can't reconstruct the old rational from 1995, but
;;      left it there.  (12/25) tweaked Only-slot-is-Word to take only the category
;;      since it was being used elsewhere and didn't use bindings.
;; 1.3 (8/27/00) Changed binding-instructions-saturate-slots? to remove its assumption
;;      that the slots have to have primitives as their value restrictions. 
;;     (4/10/03) Problem with reclaimation of compound numbers like 92.7 motivated
;;      backing away from 1.2 policy and reverted to the original notion. Depends
;;      on the initial loader marking all individuals created up to that point as
;;      permanent. 
;;     (2/2/05) Removed the "temporary" from Make-unindexed-individual. Added another
;;      way to override the inclination to make a psi: instances-of-this-category-can-be-partial
;;      which is motivated by ordinals. (2/3) Flushed that. Broke out the criteria for
;;      simple-individuals so it could be used in the find routine. (2/4) Extended 
;;      define-individual to dispatch if it gets a psi where it expected a category name.
;;      (2/7) Added subtype-individual - see Corresponding-unit-of-subtype. (2/8) Debugged
;;      a case in the trivially saturated test.  (2/11) fixed bug with multiple realization
;;      schema where only the first one was being seen. (3/15) to fix the problems with
;;      ordinals (positions in sequences) being gratuitously psi when they're fully defined
;;      added The-missing-slots-are-primitive to the criteria for making individuals.
;;      (4/1) Another case of the shape of the realization-data.
;; 1.4 (3/19/07) Added an optional 'force-new' parameter to make/individual to handle the 
;;      case where an identical description in fact denoted a different individual.
;; 2.0 (7/12/09) fan-out from psi changse. (2/18/10) Added synonyms to rdata dispatch.
;;     (8/15/11) a bit of cleanup. (12/15/12) added make-permanent-unindexed-individual.
;; 2.1 (3/22/13) Experimenting with *do-not-use-psi* that is or's into fits-criteria-for
;;      -simple-individuals and makes it always return t. 
;;     (4/4/13) Added make-individual-for-dm&p as a placeholder. Presently just calls
;;      unindexed. 
;; 2.2 (6/3/13) Changed make/permanent-individual to use the correct common path:
;;      make-a-permanent-individual. 7/1/13 Smidgen of internal doc.
;; 2.3 (11/18/13) Revised schema handling in define-individual because of a new kind
;;      of cases. Backed out of it 11/20 see notes w/ fn.
;; (12/3/13) Hit a new case in applying rdata because of distributed categories
;;   in C3 so factored the realization out completely and moved original version
;;   to objects/model/tree-families/driver2. Cleaned up.
;;  (4/7/14) Modified make-simple-individual to include a shadow
;;  (5/29/14) Added some (now commented out) debugging code to make-simple-individual
;;  (1/3/15) changed individual-for-ref to actually make an individual even when
;;   the description lattice flag is up.

(in-package :sparser)

;;;-------------------------------------------------
;;; as called from a file for permanent individuals
;;;-------------------------------------------------

(defmacro define-with-all-instances-permanent (&rest forms)
  `(with-all-instances-permanent/expr ',forms))

(defun with-all-instances-permanent/expr (forms)
  (let ((*index-under-permanent-instances* t))
    (dolist (form forms)
      (eval form))))

;;;----------------------
;;; Standard entry point
;;;----------------------

(defun define-individual (symbol &rest var-name+value-pairs)
  "Intended as the standard way to create a permanent individual
  from toplevel or from code that doesn't have ready access
  to category and variable objects and needs to use expressions instead.
  Decodes the variable-name value pairs (binding instructions) and
  calls find-or-make/individual to look up or create the individual
  as appropriate. Note that this function also applies the realization
  data associated with the category, which means that besides 
  creating an individual is may write rules based onthat individual."
  (let* ((category (etypecase symbol
                     (symbol (resolve-symbol-to-category/check symbol))
                     (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category var-name+value-pairs)))
    (let ((*index-under-permanent-instances*
           (or *index-under-permanent-instances* ;; for recursive calls
               (individuals-of-this-category-are-permanent? category))))
      (declare (special *index-under-permanent-instances*))
      (let ((individual
             (find-or-make/individual category binding-instructions)))
        (apply-single-category-rdata individual category)
        individual))))

(defun make-an-individual (symbol &rest var-name+value-pairs)
  "Just like define-individual in its arguments but is for run-time
  relations rather than populating categories (e.g. no rdata).
  This syntax is convenient for calls from code."
  (let* ((category
          (etypecase symbol
            (symbol (resolve-symbol-to-category/check symbol))
            (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category var-name+value-pairs)))
    (let ((*index-under-permanent-instances*
           (or *index-under-permanent-instances* ;; for recursive calls
               (individuals-of-this-category-are-permanent? category))))
      (declare (special *index-under-permanent-instances*))
      ;; make and return individual
      (find-or-make/individual category binding-instructions))))

(defun define-an-individual (category &rest var-name+value-pairs)
  "In lieu of figuring out how to pretty-print this pattern in emacs,
   this call does it for me because it starts with 'def'."
  (apply #'make-an-individual category var-name+value-pairs))


(defun make-temporary-individual (symbol &rest var-name+value-pairs)
  "Same signature as make-an-individual in that it is intended for
  run-time relations where we already have values for the variables
  and only need to look up the variable names. Provides a way to
  guarentee that the created individual is temporary since it binds
  the override flag read in index-aux/individual when it would have
  otherwise taken its cue from the category and make a permanent one."
  ;;/// ought to scoop out the common core of these three but
  ;; I'm lazy and expect there to be more changes (ddm 3/7/16)
  (let ((*override-category-permanent-individuals-assumption* t))
    (declare (special *override-category-permanent-individuals-assumption*))
    (apply #'make-an-individual symbol var-name+value-pairs)))
  


;;;-------------------------------------------------------------------------
;;; as called from a function for individuals that are new to the discourse
;;;-------------------------------------------------------------------------

(defun def-individual (category &rest symbols-and-values)
  (declare (ignore category symbols-and-values))
  (break "Calls to Def-individual get replaced w/ define-individual"))


(defun def-individual/no-indexing (category &rest symbols-and-values)
  ;; essentially identical to case above except for the indexing
  (etypecase category
    (referential-category)
    (symbol (setq category (category-named category t))))
  (let* ((individual (make-individual :type `(,category)
                                      :id (next-id category)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category symbols-and-values)))

    (when binding-instructions 
      (multiple-value-bind (bindings new-indiv)
                           (apply-bindings individual binding-instructions)
        (declare (ignore bindings))
        (setq individual new-indiv)))
    individual ))




(defun make/permanent-individual (category binding-instructions)
  (let ((*index-under-permanent-instances* t)
        (individual (make-a-permanent-individual)))
    (multiple-value-bind (bindings new-indiv)
                         (apply-bindings individual binding-instructions)
      (setq individual new-indiv)
      (index/permanent-individual individual category bindings)
      individual )))



;;;-------------------------------------
;;; temporary (run-time) case typically
;;;-------------------------------------

(defun make/individual (category binding-instructions &optional force-new?)
  ;; Called from Ref/instantiate-individual via Find-or-make/individual
  ;; as part of the completion of a rule, or from Define-individual
  ;; when there wasn't already an instance of one with these bindings
  ;;   The binding instructions are a list of variable - value pairs.
  (when force-new?
    (break "Call to make/individual with force-new? set -- document why"))
  (make-trivial-saturated-individual category binding-instructions))


;;;--------------
;;; Simple cases
;;;--------------

(defun make-trivial-saturated-individual (category binding-instructions)
  (when (fits-criteria-for-simple-individuals category binding-instructions)
    (make-simple-individual category binding-instructions)))

(defun fits-criteria-for-simple-individuals (category binding-instructions-alist/plist)
  (or *do-not-use-psi*
      (let ((binding-instructions
             (if (consp (first binding-instructions-alist/plist))
               binding-instructions-alist/plist
               (plist-to-alist binding-instructions-alist/plist
                               :not-dotted))))
        (or (only-slot-is-word category)
            (sets-a-name-slot category binding-instructions)
            (saturated-form-on-primitives category binding-instructions)
            (saturated-simple-index category binding-instructions)
            (binds-all-slots category binding-instructions)
            (the-missing-slots-are-primitive category binding-instructions)))))



;;--- test predicates

(defun only-slot-is-word (category)
  (let ((slots (cat-slots category)))
    (and (= 1 (length slots))
         (eq (var-name (first slots)) 'word))))

(defun sets-a-name-slot (category binding-instructions)
  (declare (ignore category))
  (let ( variable )
    (dolist (binding-pair binding-instructions nil)
      (setq variable (first binding-pair))
      (when (eq (var-name variable) 'name)
        (return-from sets-a-name-slot t)))))
    

(defun saturated-form-on-primitives (category binding-instructions)
  (let ((slots (cat-slots category)))
    (binding-instructions-saturate-slots? binding-instructions
                                          slots)))

(defun saturated-simple-index (category binding-instructions)
  (let ((operations (cat-operations category)))
    (when operations
      (let ((index-instruction (cat-ops-index operations)))
        (when (and index-instruction
                   (consp index-instruction))
          (let ((index-function (car index-instruction))                
                index-vars )
            (ecase index-function
              (index/individual/key/hash
               (setq index-vars (cdr index-instruction)))
              (index/individual/seq-keys
               (setq index-vars (second index-instruction))))
            (binding-instructions-saturate-slots? binding-instructions
                                                  index-vars)))))))


(defun binding-instructions-saturate-slots? (binding-instructions slots)
  (dolist (variable slots t)
    (unless (assoc variable binding-instructions)                 
      (return-from binding-instructions-saturate-slots? nil))))


(defun binds-all-slots (category binding-instructions)
  (binding-instructions-saturate-slots? binding-instructions
                                        (cat-slots category)))


(defun the-missing-slots-are-primitive (category binding-instructions)
  (let ((remaining-slots (copy-list (cat-slots category)))
        variable  v/r )
    (dolist (bi binding-instructions)
      (setq variable (first bi))
      (setq remaining-slots (delete variable remaining-slots)))
    (dolist (variable remaining-slots t)
      (setq v/r (var-value-restriction variable))
      (unless (and (consp v/r)
                   (eq (first v/r) :primitive))
        (return nil)))))

          


;;--- Constructor 

(defun make-simple-individual (category binding-instructions)
  "Allocates an individual and applies the binding instructions to set its
   bindings. The individual is indexed for purposes of find or make
   operations. It is integrated into the description lattice as a side-effect
   of the call to apply-bindings (assuming the *description-lattice* flag
   is up) and may also be indexed in other ways depending on the information
   in the category's 'index' field."
  (declare (special *description-lattice* *index-under-permanent-instances*))
  (let* ((*index-under-permanent-instances*
          (or *index-under-permanent-instances*
              (individuals-of-this-category-are-permanent? category)))
         (individual 
          (cond
            (*description-lattice* (fom-lattice-description category))
            (*index-under-permanent-instances* (make-a-permanent-individual))
            (t (allocate-individual)))))
    (unless *description-lattice*
      (setf (indiv-type individual) (list category))
      (setf (indiv-id   individual) (next-id category)))
    (multiple-value-bind (bindings new-indiv)
                         (apply-bindings individual binding-instructions)
      (setq individual new-indiv)

      (if *description-lattice*
        (index-by-name individual category)
        (index/individual individual category bindings))

      (unless (null *description-lattice*) ; don't index twice
        (when (apply-indexes category)
          (index/individual individual category bindings)))

      individual )))


(defun make-scafold-individual (category &rest binding-plist)
  "Specifically intended for grammar scafolds like prepositional phrases
   where there is no find and they are never permanent"
  (when (symbolp category) (setq category (category-named category :break)))
  (let ((binding-instructions
         (decode-category-specific-binding-instr-exps
          category binding-plist)))
    (make-simple-individual category binding-instructions)))
  


(defun make-throw-away-individual (category)
  ;; Grep says only called by the name creator functions in
  ;; model/core/names/fsa/name-creators.lisp
  (make-unindexed-individual category))

(defun make-unindexed-individual (category)
  "Called as a variation on define-individual by routines that
   do their own indexing and don't want to go through the
   standard mechanisms. Note that all variable binding is
   done after this individual is created since it doesn't
   take a binding list."
  (declare (special *index-under-permanent-instances*))
  (let ((individual
         (if (or *index-under-permanent-instances*
                 (individuals-of-this-category-are-permanent? category))
           (make-a-permanent-individual)
           (allocate-individual))))
    (setf (indiv-type individual) (list category))
    (setf (indiv-id   individual) (next-id category))
    individual ))



;; Only called for PSI.  Remove when they are totally removed
(defun subtype-individual (i subtype-category)
  ;; We are building a new individual that differs from its source
  ;; individual only in its category.  In particular we copy its
  ;; intrinsic properties, i.e. the list in its bound field
  ;;/// c.f. add-category-to-individual
  (let ((si (make-a-permanent-individual)))
    (setf (indiv-type si) (list subtype-category))
    (setf (indiv-id si) (next-id subtype-category))
    (setf (indiv-binds si) (copy-list (indiv-binds i)))
    si))
  

(defun make-category-indexed-individual (category)
  "Make a simple individual (no binding instructions, etc) that is
   stored on the category's plist."
  ;; Moved permanent instances flag to callers, e.g. make-dli-for-join
  (setf (get-tag :individual category)
        (make-unindexed-individual category)))

(defun get-category-individual (category)
  (get-tag :individual category))

;;;------------------------------------------------------------------
;;; broad routine for making/adjusting an individual from a category
;;;------------------------------------------------------------------

(defun individual-for-ref (head)
  "Standard individual-creating call from syntax functions.
   They will often be working with a head consitituent whose
   referent will be a category. To provide a binding site for
   modifiers we need to replace categories with individuals."
  (typecase head
    (null)
    (individual
     head)  ;; non-DL case called maybe-copy-individual     
    (category
     (cond
       (*description-lattice*
        (if (allowable-referential-value? head)
          head
          (find-or-make-lattice-description-for-ref-category head)))
        (t (if (allowable-referential-value? head)
             head
             ;; may well not be the proper choice of individual maker
             (make-unindexed-individual head)))))
    ((cons (eql :or))
     ;; The first category is supposed to be the 'primary' one
     (individual-for-ref (second head)))
    (otherwise
     (if (unresolved-plural-referent? head)
       (break "unresolved plural referent: ~a~%in ~a" head (current-string))
       (error "falling through etypecase on ~a" head)))))

(defun maybe-make-individual (r)
  (if (referential-category-p r)
    (individual-for-ref r)
    r))


;;;-------------------------
;;; special 'make' for DM&P
;;;-------------------------

(defun make-individual-for-dm&p (category)
  "Specialized version specific to Doman Modeling & Populating mode"
  ;;/// look for much earlier version(s)
  (let ((i (make-unindexed-individual category)))
    (bind-category-of-instance i category)
    i))


;;;--------------------------
;;; specializing individuals
;;;--------------------------

(defun add-category-to-individual (individual category)
  ;; /// should look for the subtype already existing in the
  ;; model as a compound category
  (let ((type-field (indiv-type individual)))
    (unless (memq category type-field)
      (if (rest type-field)
        (setf (indiv-type individual)
              `( ,(first type-field)
                  ,category
                  ,@(rest type-field) ) )
        (setf (indiv-type individual)
              `( ,(first type-field)
                  ,category ) ) ))
    individual ))




;;;----------------------
;;; source of id numbers
;;;----------------------

(defun next-id (category)
  (etypecase category
    (category (incf (cat-id-counter category)))))

(defun reset-category-count (category &optional (number 0))
  (etypecase category
    (category (setf (cat-id-counter category) number))))
