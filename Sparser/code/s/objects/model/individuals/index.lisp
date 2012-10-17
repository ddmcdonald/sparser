;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999, 2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.6 January 2011

;; initiated 7/16/92 v2.3
;; 0.1 (9/18/93) added index/individual/seq-keys
;;     (10/22) finished it
;; 0.2 (1/7/94) extended index-aux.. to look up the lattice
;; 0.3 (8/8) added lists of instances to the plists of categories and wrote
;;      All-instances-of and Instance# referencing it.
;;     (8/9) pulled the indexing code to [index instances]. 9/10 glitch fix.
;; 0.4 (10/4) remodularized aux routine so special cases would have an entry point
;;     (4/20/95) reworking scheme for permanent objects
;; 0.5 (3/22/98) Moved Lookup-fn-data-of-parent to [lattice-points;operations]
;; 0.6 (9/30/99) Modified Index-aux/individual to allow for there not being any
;;      fn-data -- there will be less and less as the model evolves because of
;;      increasing reliance on psi.
;;     (1/11/11) Fixed call to field of operations in index-aux/individual
;;      when the category didn't have any because it was made by DM&P.


(in-package :sparser)

;;;------------------------------------------------------
;;; alternative entry points for permanent vs. temporary
;;;------------------------------------------------------

(defun index/permanent-individual (individual category bindings)
  (if (listp category)
    (dolist (cat category)
      (index-aux/individual individual cat bindings :permanent))
    (index-aux/individual individual category bindings :permanent)))


(defun index/individual (individual category bindings)
  (if (listp category)
    (dolist (cat category)
      (index-aux/individual individual cat bindings))
    (index-aux/individual individual category bindings)))


;;;--------
;;; driver
;;;--------


(defun index-aux/individual (individual
                             category
                             bindings
                             &optional permanent? )

  (declare (special *index-under-permanent-instances*))

  (let* ((operations (cat-operations category))
	 (fn-data (when operations (cat-ops-index operations))))

    (unless fn-data
      (setq fn-data (lookup-fn-data-of-parent category)))

    (when fn-data
      (if (listp fn-data)
        (funcall (car fn-data) (cadr fn-data)
                 individual category bindings)
        (funcall fn-data individual category bindings)))

    (index-to-category
     individual
     category
     (or permanent?
         ;; The global will have been bound (if it is) by
         ;; Define-individual as a consequence of all
         ;; individuals of this category being permanent.
         ;; The optional arg is an override mechanism
         ;; for individuals that would otherwise be
         ;; temporary
         *index-under-permanent-instances*))))



(defun index-to-category (individual category permanent?)

  ;; called by Index-aux/individual to handle the interaction
  ;; of this newly allocated individual and the records used
  ;; by the reclaimation process.

  (let ((instance-list-cons
         (member :instances (unit-plist category) :test #'eq)))

    (if instance-list-cons
      (rplacd instance-list-cons
              `((,individual ,@(cadr instance-list-cons))
                ,@(cddr instance-list-cons)))
      (setf (unit-plist category)
            `(:instances (,individual) ,@(unit-plist category))))

    (when permanent?
      (add-permanent-individual individual category))))



;;;-----------------
;;; access routines
;;;-----------------

(defun all-instances-of (symbol-for-category)
  (let ((category (category-named symbol-for-category)))
    (unless category
      (error "There is no category named ~A" symbol-for-category))
    (cadr (member :instances (unit-plist category) :test #'eq))))


(defun all-instances (category)
  (cadr (member :instances (unit-plist category) :test #'eq)))


(defun instance# (integer symbol-for-category)
  (let ((instances (all-instances-of symbol-for-category)))
    (find integer instances :key #'indiv-id)))


(defun list-instances (symbol-for-category)
  (let ((category (category-named symbol-for-category)))
    (unless category
      (error "There is no category named ~A" symbol-for-category))
    (let ((instances (all-instances category)))
      (pl instances)
      (length instances))))


