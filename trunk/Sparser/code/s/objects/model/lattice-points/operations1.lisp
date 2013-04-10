;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-2005,2011-2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "operations"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 April 2013

;; initiated 9/28/94 v2.3.  Added Super-categories-of 3/3/95
;; Added Compute-daughter-relationships 6/21.  Added Super-category-has-variable-named
;; on 7/7.  11/29/97 moved to [lattice-points;].
;; 0.1 (3/22/98) started revamping the routines. Moved Lookup-fn-data-of-parent in
;;      from [individuals;index]. 
;;     (1/24/99) fixed Category-inherits-type? to conform to current model.
;;     (9/20) fixed infinite loop in Super-categories-of.
;; 0.2 (9/30) Modified Lookup-fn-data-of-parent to allow it to return nil if it
;;      tops out without finding any data rather than break.
;;     (2/9/05) Moved in some routines from 'composite referent'. 2/10 added
;;      all-categories-in-psi. (3/17) Added self-lattice-point to all-categories-
;;      in-psi. (2/22/07) added top-lattice-point to it.
;; 1.0 (7/23/09) fan-out from psi redesign. Working on it through 8/7
;;     (1/11/11) Fixed call to lattice field of operations when the category
;;      didn't have any because it was made by DM&P. Also patched inherited-
;;      operation/Reclaim to not complain if there was no parent with a
;;      reclaim operation. Whole scheme needs to be considered.
;;     (2/23/13) Put a trap in category-inherits-type? for the case of a
;;      category having itself as its super-type. Announces the problem and
;;      returns nil. (4/9/13) Extended super-categories-of.

(in-package :sparser)


;;;---------------------------
;;; what category is involved
;;;---------------------------

(defun category-of (item)
  (typecase item
    (psi (base-category-of-psi item))
    (individual (first (indiv-type item)))
    (mixin-category item)
    (referential-category item)
    (category item)
    (otherwise
     (break "New type passed to category-of: ~a~%~a"
	    (type-of item) item))))

(defun base-category-of-psi (psi)
  (base-category-of-lp (psi-lp psi)))

(defmethod base-category-of-lp ((lp lattice-point))  
  (base-category-of-lp (lp-top-lp lp)))

(defmethod base-category-of-lp ((lp top-lattice-point))
  (lp-category lp))



(defun all-categories-in-psi (psi)
  (let ((lp (psi-lp psi)))
    (typecase lp
      (subtype-lattice-point
       (when (lp-subtypes lp) (break "Subtypes on subtype object"))
       (list (base-category-of-lp (lp-supertype lp))
             (lp-specializing-category lp)))
;      (self-lattice-point
;       (list (base-category-of-lp lp)))
;      (psi-lattice-point
;       (list (base-category-of-lp lp)))
      (top-lattice-point
       (list (lp-category lp)))
      (lattice-point
       (list (lp-category (lp-top-lp (psi-lp psi)))))
      (otherwise
       (break "New type of lattice point: ~a~%~a"
	      (type-of lp) lp)))))


;;;----------------------------------------------
;;; what categories does a category inherit from
;;;----------------------------------------------

(defmethod super-categories-of ((c referential-category))
  (if (cat-lattice-position c)
    (super-categories-of1 c)
    (list c)))

(defmethod super-categories-of ((p psi))
  (all-categories-in-psi p))

(defmethod super-categories-of ((i individual))
  (let ((type (indiv-type i)))
    (if (null (cdr type))
      (super-categories-of (car type))
      (break "stub"))))

(defmethod super-categories-of ((c T))
  (push-debug `(,c))
  (error "super-categories-of is not defined on objects of ~
          type ~a" (type-of c)))

(defun super-categories-of1 (c)
  (let* ((lp (cat-lattice-position c))
         (super-category
          (when lp
            ;; they all should have lattice-points, but this protects us
             (lp-super-category lp))))
    (if super-category
      (cons c (super-categories-of1 super-category))
      (list c))))



(defun lattice-depth (c)
  (if (lattice-point-p (cat-lattice-position c))
    (let ((superc (lp-super-category (cat-lattice-position c))))
      (if superc
        (1+ (lattice-depth superc))
        1 ))
    0))



(defun super-category-has-variable-named (variable-name base-category)
  (let ((supercs (super-categories-of base-category))
        variables  target-variable )
    (dolist (category supercs nil)
      (setq variables (cat-slots category))
      (when variables
        (setq target-variable
              (find variable-name variables :key #'var-name))
        (when target-variable
          (return-from super-category-has-variable-named target-variable))))))
            
      

  


;;;----------------------------------------------
;;; seeing if one category inherits from another
;;;----------------------------------------------

(defun individual-inherits-type? (i category)
  ;; does the primary category of the individual inherit from that category?
  (let ((base-category (itype-of i)))
    (if (eq base-category category)
      t
      (category-inherits-type? base-category category))))

(defun category-inherits-type? (category reference-category)
  "Is the category a subcategory of the reference-category? Walk up the
  lattice from the catgory until we find the reference-category or
  top-out with a super-category of nil since the network has multiple
  roots, c.f. model/core/kinds/upper-model.lisp"
  (let ((super-category
         (lp-super-category (cat-lattice-position category))))
    (when super-category
      (when (eq category super-category)
;; Keeping this in case we ever want to debug it case by case
;        (push-debug `(,super-category ,reference-category))
;        (error "The category ~a  has itself as a supercategory.~
;              ~%Probably clobbered by an imported word with that spelling"
;               category)
        (format t "~%~%The category ~a  has itself as a supercategory.~
              ~%Probably clobbered by an imported word with that spelling~%~%"
               category)
        (return-from category-inherits-type? nil))
      (if (eq super-category reference-category)
        t
        (category-inherits-type? super-category reference-category)))))



;;;--------------------------------------------
;;; pulling down operations stored on superc's
;;;--------------------------------------------

(defun lookup-fn-data-of-parent (category)
  (let* ((lp (cat-lattice-position category))
         (parent (when lp (lp-super-category lp))))
    (unless parent
      (return-from lookup-fn-data-of-parent nil))
    (let ((fn-data (cat-ops-index (cat-operations parent))))
      (if fn-data
        fn-data
        (lookup-fn-data-of-parent parent)))))


(defun inherited-operation/Find (base-category)
  ;; the base category doen't have a 'find' operation defined for it
  ;; but maybe there's one up higher.  If it can't be found provide
  ;; a clear break.
  (let* ((lp (cat-lattice-position base-category))
         (superc (when lp (lp-super-category lp))))
    (if superc
      (let ((find-fn (cat-ops-find (cat-operations superc))))
        (if find-fn
          find-fn
          (inherited-operation/find superc)))

      (break "Looked for a Find operation on the categories that ~A~
              ~%inherits from, but they don't have one either."
             base-category))))


(defun inherited-operation/Reclaim (base-category)
  ;; the base category doen't have a 'reclaim' operation defined for it
  ;; but maybe there's one up higher.  If it can't be found provide
  ;; a clear break.
  (let* ((lp (cat-lattice-position base-category))
         (superc (when lp (lp-super-category lp))))
    (if superc
      (let ((find-fn (cat-ops-reclaim (cat-operations superc))))
        (if find-fn
          find-fn
          ;; we should keep looking, but this should do for the moment
          (break "Looked for a reclaim operation on the category that ~A~
                  ~%inherits from, ~A, but it doesn't have one either."
                 base-category superc)))
; Letting it leak while we think of a better scheme as part of
; integrating CLOS into the operations.
;      (break "There is no reclaim operation defined for ~A~
;              ~%and does not inherit from any other category" base-category)
      )))




;;;-----------
;;; daughters
;;;-----------

(defparameter *category->daughters* (make-hash-table :test #'eq))


(defun daughters-of-category (c)
  (gethash c *category->daughters*))

(defun set-categorys-daughters (c daughters)
  (setf (gethash c *category->daughters*) daughters))


(defun compute-daughter-relationships (list-of-categories)
  ;; When called from Sort-referential-categories-hierarchically it is
  ;; taking the entire set of categories and making a pairwise record
  ;; of each category's daughters.
  (let ( superc  toplevel-categories )
    (dolist (c list-of-categories)
      (setq superc (cat-lattice-position c))
      (if superc
        (push c (gethash superc *category->daughters*))
        (push c toplevel-categories)))
    toplevel-categories ))


(defun re-Compute-daughter-relationships (list-of-categories)
  (setq *category->daughters* (make-hash-table :test #'eq))
  (compute-daughter-relationships list-of-categories))



;;;----------------------------------------------------
;;; hook for broader relationships than just daughters
;;;----------------------------------------------------

(defparameter *categories-without-supercs* nil
  "an accumulator")


(defun workout-the-relationships-among-the-categories ()
  ;; called from Postprocess-grammar-indexes
  (setq *categories-without-supercs*
        (compute-daughter-relationships *referential-categories*))
  (sort-referential-categories-hierarchically)
  (setq *mixin-categories*       (sort-categories *mixin-categories*))
  (setq *grammatical-categories* (sort-categories *grammatical-categories*))
  ;(setq *form-categories*        (sort-categories *form-categories*))
  ;;  try viewing them in their order of definition, which mirrors
  ;;   major
  (setq *dotted-categories*      (sort-categories *dotted-categories*))

  (setq *all-intra-category-relationships-noticed?* t)

  (format t "~&~%-------------------------------------------~
             ~% ~A~5,2T Referential categories~
             ~% ~A~5,2T Syntactic form categories~
             ~% ~A~5,2T Mixin categories~
             ~% ~A~5,2T non-terminal categories~
             ~% ~A~5,2T dotted categories~
             ~%-------------------------------------------"
          (length *referential-categories*)
          (length *form-categories*)
          (length *mixin-categories*)
          (length *grammatical-categories*)
          (length *dotted-categories*)))




;;;----------------------
;;; printing the lattice
;;;----------------------

(defun walk/accumulate-category-lattice ()
  ;; Returns a list of conses to be used by display routines. The list
  ;; is a depth-first walk of the lattice from the top down with each
  ;; level organized by whatever sorting procedure has (-already-) been
  ;; applied.
  (let ( toplevel-list subnet )
    (dolist (c (reverse *categories-without-supercs*))
      (setq subnet (w/accl/daughters c 1))
      (when subnet
        (dolist (s (reverse subnet))
          (push s toplevel-list)))
      (push `(,c . 0) toplevel-list))
    toplevel-list ))

(defun w/accl/daughters (c depth)
  ;; the category itself ('c') is handled by the caller. 
  (let ((daughters (daughters-of-category c)))
    (if daughters
      (let ( intermediate-list  subnet )
        (dolist (d (reverse daughters))
          (setq subnet (w/accl/daughters d (1+ depth)))
          (when subnet
            (dolist (s (reverse subnet))
              (push s intermediate-list)))
          (push `(,d . ,depth) intermediate-list))
        intermediate-list)
      nil)))
