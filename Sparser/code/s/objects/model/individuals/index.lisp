;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:individuals:"
;;;  version:  March 2016

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
;; 0.7 (6/3/13) Clarifying treatment of permanent vs. reclaim-able
;; 0.8 (6/14/13) Generalized all-instances to do hash-tables. 6/17 cleaned up
;;      from initially going overboard. 
;; (3/7/16) Put an override check in index-aux/individual. Motivated by numbers

(in-package :sparser)

;;;------------------------------------------------------
;;; alternative entry points for permanent vs. temporary
;;;------------------------------------------------------

(defun index/permanent-individual (individual category bindings)
  "Called from make/permanent-individual."
  (check-type individual (satisfies permanent-individual?) "permanent")
  (if (listp category)
    (dolist (cat category)
      (index-aux/individual individual cat bindings :permanent t))
    (index-aux/individual individual category bindings :permanent t)))


(defun index/individual (individual category bindings)
  "Called from make-simple-individual and friends."
  (flet ((index-it (i category bindings)
           (index-aux/individual i category bindings)))
    (if (listp category)
      (dolist (cat category)
        (index-it individual cat bindings))
      (index-it individual category bindings))))


;;;--------
;;; driver
;;;--------

(defun index-aux/individual
    (individual
     category
     bindings
     &key (permanent
           (or (permanent-individual? individual)
               (individuals-of-this-category-are-permanent? category)
               *index-under-permanent-instances*)))
  (declare (special *index-under-permanent-instances*
                    *override-category-permanent-individuals-assumption*))
  (when nil ;;permanent
    (format t "~&Indexing ~a~
               ~%  special = ~a~
               ~%  category is permanent = ~a~
               ~%  permanent indiv = ~a~%"
            individual *index-under-permanent-instances*
            (individuals-of-this-category-are-permanent? category)
            (permanent-individual? individual))
    (push-debug `(,individual ,category))
    (lsp-break "~a" individual))

  (let* ((operations (cat-operations category))
         (fn-data (or (and operations (cat-ops-index operations))
                      (lookup-fn-data-of-parent category))))
    (when fn-data
      (if (listp fn-data)
        (funcall (car fn-data) (cadr fn-data) individual category bindings)
        (funcall fn-data individual category bindings)))
    (push individual (get-tag :instances category))
    (when permanent
      (unless *override-category-permanent-individuals-assumption*
        (add-permanent-individual individual category)))))


;;;-----------------
;;; access routines
;;;-----------------

(defun all-instances (category)
  "Return all instances of a category."
  (check-type category category "a category")
  (unless (mixin-category-p category)
    (typecase (cat-instances category)
      (null)
      (hash-table (all-hash-vals (cat-instances category)))
      (otherwise (get-tag :instances category)))))

(defun all-instances-of (symbol-for-category)
  (all-instances (category-named symbol-for-category t)))

(defun instance# (id symbol-for-category)
  (find id (all-instances-of symbol-for-category) :key #'indiv-id))
