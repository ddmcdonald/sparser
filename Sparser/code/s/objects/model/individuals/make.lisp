;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.9 September 1995

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

(in-package :sparser)


;;;-------------------------------------------------
;;; as called from a file for permanent individuals
;;;-------------------------------------------------

(defvar *index-under-permanent-instances* nil
  "A flag that picks out the right sub-field when the category
   indexes both permanent and temporary individuals.")


(defmacro define-with-all-instances-permanent (&rest forms)
  `(with-all-instances-permanent/expr ',forms))

(defun with-all-instances-permanent/expr (forms)
  (let ((*index-under-permanent-instances* t))
    (dolist (form forms)
      (eval form))
    (format t "~&~%~A forms~%" (length forms))))




;;--- Standard entry point

(defun define-individual (symbol 
                          &rest var-name+value-pairs)

  ;; intended as the standard way to create a permanent individual
  ;; from toplevel or from code that doesn't have ready access
  ;; to category and variable objects

  (let* ((category (etypecase symbol
                     (symbol (resolve-symbol-to-category/check symbol))
                     (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category
           var-name+value-pairs))
         rdata-schema )

    (let ((*index-under-permanent-instances*
           (or *index-under-permanent-instances* ;; for recursive calls
               (individuals-of-this-category-are-permanent category))))
      
      (let ((realization-data (cat-realization category))
            (individual
             (find-or-make/individual category binding-instructions)))
        
        (when realization-data
          (when (setq rdata-schema
                      (cadr (member :schema realization-data)))
            (apply-realization-schema-to-individual
             individual category rdata-schema)))
        
        individual ))))



(defun make-an-individual (symbol 
                           &rest var-name+value-pairs)

  ;; Just like Define-individual in its arguments but is for run-time
  ;; relations rather than populating categories (e.g. no rdata).
  ;; This syntax is convenient for calls from code.
  (let* ((category
          (etypecase symbol
            (symbol (resolve-symbol-to-category/check symbol))
            (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category var-name+value-pairs))
         (individual
          ;(find-or-make/individual category binding-instructions)
          (make/permanent-individual category binding-instructions)
          ))
    individual ))


;;;-------------------------------------------------------------------------
;;; as called from a function for individuals that are new to the discourse
;;;-------------------------------------------------------------------------

(defun def-individual (category &rest symbols-and-values)
  (break "Calls to Def-individual get replaced w/ Define-individual"))


(defun def-individual/no-indexing (category &rest symbols-and-values)
  ;; essentially identical to case above except for the indexing
  (etypecase category
    (referential-category )
    (symbol
     (setq category (category-named category))
     (unless category
       (error "There is no category named ~A" category))))
  (let* ((individual (make-individual :type `(,category)
                                      :id (next-id category)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category symbols-and-values)))

    (when binding-instructions
      (apply-bindings individual binding-instructions))
    individual ))




(defun make/permanent-individual (category binding-instructions)

  (let ((*index-under-permanent-instances* t)
        (individual (make-individual :type `(,category)
                                     :id (next-id category))))
    (let ((bindings
           (apply-bindings individual binding-instructions)))

      (index/permanent-individual individual category bindings)
      individual )))



;;;---------------------------
;;; temporary (run-time) case
;;;---------------------------

(defun make/individual (category binding-instructions)
  ;; Called from Ref/instantiate-individual via Find-or-make/individual
  ;; as part of the completion of a rule, or from Define-individual
  ;; when there wasn't already an instance of one with these bindings
  ;;   The binding instructions are a list of variable - value pairs.

  (let ((individual (if *index-under-permanent-instances*
                      (make-a-permanent-individual)
                      (allocate-individual))))

    (setf (indiv-type individual) (list category))
    (setf (indiv-id   individual) (next-id category))

    (let ((bindings
           (apply-bindings individual binding-instructions)))
      
      (index/individual individual category bindings)
      individual )))



(defun make-throw-away-individual (category)
  (break "~&~%Trapped a call to Make-throw-away-individual~
        ~%Just 'continue' from this break. It's only purpose~
        ~%is bookeeping.~%~%")
  (make-unindexed-temporary-individual category))

(defun make-trivial-individual (category)
  (break "~&~%Trapped a call to Make-trivial-individual~
        ~%Just 'continue' from this break. It's only purpose~
        ~%is bookeeping.~%~%")
  (make-unindexed-temporary-individual category))

(defun make-unindexed-temporary-individual (category)
  ;; called as a variation on define-individual by routines that
  ;; do their own indexing and don't want to go through the
  ;; standard mechanisms.  The 'temporary' part of the fn name
  ;; is up for revision.
  (let ((individual (if *index-under-permanent-instances*
                      (make-a-permanent-individual)
                      (allocate-individual))))
    (setf (indiv-type individual) (list category))
    (setf (indiv-id   individual) (next-id category))
    individual ))



;;;--------------------------
;;; specializing individuals
;;;--------------------------

(defun add-category-to-individual (individual category)
  ;; /// should look for the subtype already existing in the
  ;; model as a compound category

  (let ((type-field (indiv-type individual)))
    (if (rest type-field)
      (setf (indiv-type individual)
            `( ,(first type-field)
               ,category
               ,@(rest type-field) ) )
      (setf (indiv-type individual)
            `( ,(first type-field)
               ,category ) ) )

    individual ))




;;;----------------------
;;; source of id numbers
;;;----------------------

(defun next-id (category)
  (let ((count (getf (unit-plist category) :count)))
    (if (null count)
      (then (setf (getf (unit-plist category) :count) 1)
            1)
      (incf (getf (unit-plist category) :count)))))


(defun reset-category-count (category
                             &optional number )
  (let ((count-cons
         (member :count (unit-plist category))))
    (when count-cons
      (if number
        (rplacd count-cons
                `( ,number ,@(cddr count-cons)))
        (rplacd count-cons
                `( nil ,@(cddr count-cons)))))))

