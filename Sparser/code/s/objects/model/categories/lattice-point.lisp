;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "lattice point"
;;;   Module:  "objects;model:categories:"
;;;  version:  July 1995

;; initiated 9/28/94 v2.3.  Added Super-categories-of 3/3/95
;; Added Compute-daughter-relationships 6/21.  Added Super-category-has-variable-named
;; on 7/7

(in-package :sparser)


;;;----------------------------------------------
;;; what categories does a category inherit from
;;;----------------------------------------------

(defun super-categories-of (c)
  (when (cat-lattice-position c)
    (super-categories-of1 (cat-lattice-position c))))

(defun super-categories-of1 (c)
  (let ((lp (cat-lattice-position c)))
    (if lp
      (cons c (super-categories-of1 lp))
      (list c))))



(defun lattice-depth (c)
  (let ((superc (cat-lattice-position c)))
    (if superc
      (1+ (lattice-depth superc))
      1 )))



(defun super-category-has-variable-named (variable-name base-category)
  (let ((supercs (super-categories-of base-category))
        variables  target-variable )
    (dolist (category supercs nil)
      (setq variables (cat-slots category))
      (when variables
        (setq target-variable
              (find variable-name variables :key #'var-name))
        (when target-variable
          (return-from Super-category-has-variable-named target-variable))))))
            
      

  


;;;----------------------------------------------
;;; seeing if one category inherits from another
;;;----------------------------------------------

(defun individual-inherits-type? (i category)
  ;; does the primary category of the individual inherit from that category?
  (let ((base-category (itype-of i)))
    (if (eq base-category category)
      t
      (category-inherits-type? base-category category))))

(defun category-inherits-type? (lower-category higher-category)
  (let ((specialization-of (cat-lattice-position lower-category)))
    (when specialization-of
      (if (eq specialization-of higher-category)
        higher-category
        (category-inherits-type? specialization-of higher-category)))))


;;;--------------------------------------------
;;; pulling down operations stored on superc's
;;;--------------------------------------------

(defun inherited-operation/Find (base-category)
  ;; the base category doen't have a 'find' operation defined for it
  ;; but maybe there's one up higher.  If it can't be found provide
  ;; a clear break.
  (let ((superc (cat-lattice-position base-category)))
    (if superc
      (let ((find-fn (cat-ops-find (cat-operations superc))))
        (if find-fn
          find-fn
          ;; we should keep looking, but this should do for the moment
          (break "Looked for a Find operation on the category that ~A~
                  ~%inherits from, ~A, but it doesn't have one either."
                 base-category superc)))
      (break "There is no Find operation defined for ~A~
              ~%and does not inherit from any other category" base-category))))


(defun inherited-operation/Reclaim (base-category)
  ;; the base category doen't have a 'reclaim' operation defined for it
  ;; but maybe there's one up higher.  If it can't be found provide
  ;; a clear break.
  (let ((superc (cat-lattice-position base-category)))
    (if superc
      (let ((find-fn (cat-ops-reclaim (cat-operations superc))))
        (if find-fn
          find-fn
          ;; we should keep looking, but this should do for the moment
          (break "Looked for a reclaim operation on the category that ~A~
                  ~%inherits from, ~A, but it doesn't have one either."
                 base-category superc)))
      (break "There is no reclaim operation defined for ~A~
              ~%and does not inherit from any other category" base-category))))




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

