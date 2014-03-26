;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-2005,2011-2014 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "operations"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.2 March 2014

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
;;      returns nil. (4/9/13) Extended super-categories-of, and again on 5/23/13.
;;     (5/26/13) added hack version of psi-inherits-type? that calls the individual's
;;      case since the all-categories code for psi doesn't look at the lattice
;; 1.1 (8/14/13) Made category-inherits-type? look at the base case of the
;;      category being identical to the supercategory. Same as super-categories of.
;; 1.2 (11/9/13) Added mixins check to the supercategory sweep. 
;;     (1/13/14) added it to category-inherits-type?
;;     (3/3/14) Fixed bug where mixins on super-categories were being misseed and
;;      started caching superc's on the category's plist.

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

;;--- entry points
(defmethod super-categories-of ((c referential-category))
  (if (cat-lattice-position c)
    (super-categories-of1 c)
    (list c)))

(defmethod super-categories-of ((c mixin-category))
  (if (cat-lattice-position c)
    (super-categories-of1 c)
    (list c)))

(defmethod super-categories-of ((p psi))
  (all-categories-in-psi p))

(defmethod super-categories-of ((i individual))
  (let ((type (indiv-type i)))
    (if (null (cdr type))
      (super-categories-of (car type))
      (else
       (push-debug `(,i ,type))
       (error "Stub: right the code to handle collecting ~
          the super-categories-of an individual with more ~
          than one type.~%~a~%~a" i type)))))

(defmethod super-categories-of ((c t))
  (push-debug `(,c))
  (error "super-categories-of is not defined on objects of ~
          type ~a" (type-of c)))


;;--- doing the work

(defun super-categories-of1 (c)
  ;;(format t "~&~%supers-of ~a" c)
  (or (get-tag-for :super-categories c)
      (let* ((lp (cat-lattice-position c))
             (supers
              (cond
               ((null lp)
                (push-debug `(,c))
                (error "The cat-lattice-position slot of ~a is empty" c))
               ((category-p lp)
                ;; true of form categories
                (list c lp))
               ((lattice-point-p lp)
                (collect-supercategories-off-lp c lp))
               (t
                (push-debug `(,c ,lp))
                (error "Unexpected type of object in the lattice-position ~
                        field of ~a~%  ~a  ~a" c (type-of lp) lp)))))
        (push-onto-plist c supers :super-categories) 
        supers)))
    
             
(defun collect-supercategories-off-lp (c lp)
  (let* ((mixins (cat-mix-ins c))
         (mixin-supers
          (when mixins ;; if there's one there will likely be several
            (super-categories-of-list-type mixins)))
         (immediate-super-category
          (lp-super-category lp))
         (mixins-of-immediate-super-category
          (when immediate-super-category
            (when (cat-mix-ins immediate-super-category)
              (super-categories-of-list-type
               (cat-mix-ins immediate-super-category)))))
         (immediate-super-lp
          (when immediate-super-category
            (cat-lattice-position immediate-super-category)))
         (super-supers
          (when (and immediate-super-lp
                     (top-lattice-point-p immediate-super-lp)
                     (lp-super-category immediate-super-lp))
            (super-categories-of1 immediate-super-category))))
    (when nil
      (format t "~%  mixin-supers  ~a~
                 ~%  super-supers  ~a~
                 ~%  mixins of immediate super-category ~a~
                 ~%  immediate-super ~a~%" 
              mixin-supers super-supers mixins-of-immediate-super-category
              immediate-super-category))
    (let ((supers
           (cond
            ((and mixin-supers super-supers immediate-super-category)
             (cons c (append mixin-supers super-supers)))

            ((and mixin-supers super-supers immediate-super-category)
             (cons c (append mixin-supers super-supers)))
            
            ((and mixin-supers super-supers)
             (cons c (append mixin-supers super-supers)))
            
            ((and mixin-supers immediate-super-category)
             (cons c (cons immediate-super-category mixin-supers)))
            
            (super-supers ;; includes the immediate-super-category
             (cons c super-supers))
            
            (immediate-super-category
             (list c immediate-super-category))
            
            (mixin-supers
             (cons c mixin-supers)))))
      (when mixins-of-immediate-super-category
        (setq supers (append mixins-of-immediate-super-category supers)))
      (remove-duplicates supers))))


(defun super-categories-of-list-type (category-list)
  (loop for category in category-list
    append (super-categories-of category) into supers 
    append (list category) into supers
    finally (return supers)))

;;--- misc

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

(defun psi-inherits-type? (psi category)
  ;; n.b. super-categories-of(psi) doesn't work. Doesn't sweep up
  ;; the lattice
  (individual-inherits-type? psi category))

(defun individual-inherits-type? (i category)
  ;; does the primary category of the individual inherit from that category?
  (let ((base-category (itype-of i)))
    (if (eq base-category category)
      t
      (category-inherits-type? base-category category))))


(defun category-inherits-type? (category reference-category)
  "Is the category equal to or a subcategory of the reference-category? 
  Walk up the lattice from the catgory until we find the reference-category or
  top-out with a super-category of nil since the network has multiple
  roots, c.f. model/core/kinds/upper-model.lisp. When a category has
  mixins those are traversed independently."
  (if (eq category reference-category)
    t

    (let ((super-category
           (lp-super-category (cat-lattice-position category)))
          (mixins (cat-mix-ins category)))

      (or
       (when super-category
        (when (eq category super-category)
          (format t "~%~%The category ~a  has itself as a supercategory.~
                     ~%Probably clobbered by an imported word with that spelling~%~%"
                  category)
          (return-from category-inherits-type? nil))
         (if (eq super-category reference-category)
           t
           (category-inherits-type? super-category reference-category)))

       (when mixins
         (or (memq reference-category mixins)
             (loop for m in mixins
               when (category-inherits-type? m reference-category)
               return m
               finally (return nil))))))))



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


(defun inherited-operation/find (base-category)
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


(defun inherited-operation/reclaim (base-category)
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


(defun re-compute-daughter-relationships (list-of-categories)
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
