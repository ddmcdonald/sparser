;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999,2011-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:individuals:"
;;;  version:  September 2021

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



;;;-----------------------
;;; supplemental indexing
;;;-----------------------

#| The find operation used in find-or-make when creating individuals
is given the full set of bindings. However, the find-individual
operation was also used to retrieve already created individuals by
name (or other unique id) to use them programatically in other code. 
  That trick doesn't work when multi-binding individuals
(e.g. months) are assembled incrementally via 'intermediate'
individuals binding by binding when we use the description
lattice. There, a find call that's given just the value of
the name binding will return one of the intermediate individuals,
and some walking through the downlink hashtables is required
to find the individual that has all of bindings.
  That's both messy and indeterminate (i.e. how far do you
unwind -- cf. m::unwind-to-i-with-lp where there's definitive
criteria for how far to go). This code section approaches the
problem by caching the 'full' individual as it's being built
and storing it on the category's hash-table for instances
which isn't being used when the DL has the primary responsibility
for find-and-make. 
   We only do this when the modeling operations call for it
and signal this by including the keyword :get in the index field
of the needed categories. |#

(defvar *registered-for-by-name-indexing* nil
  "Accumulated the names of categories whose individuals should
   be 'indexed by their name'.")

(defun register-category-for-indexing (category)
  "Called from decode-index-field-aux when the category's index
   field includes the keyword :get."
  (push (cat-name category) *registered-for-by-name-indexing*))


(defun index-by-name (i category)
  "Called from make-simple-individual as the alternative to the normal
   by-binding-value indexing that would have been done if we weren't
   using the *description-lattice*
     Used only when the category definition indicates that we should
   do this setup so that it can define by-name 'get' function.
     Uses the built-in hash table on    the category to map the designated
  variable value to the entire individual."
  (when (memq (cat-name category) *registered-for-by-name-indexing*)
    (let* ((ops (cat-operations category))
           (find-op (when ops (cat-ops-find ops))))
      (when (and find-op (consp find-op)
                 (eq (car find-op) 'find/individual/key/hash))
        (let* ((index-var (cadr find-op))
               (value (value-of index-var i))
               (table (cat-instances category)))
          (setf (gethash value table) i))))))
        

(defgeneric get-by-name (category key)
  (:documentation "Given a category and the value for the name
   or other individual designated as its index key, dereference
   the value expression and retrieve that individual.")
  (:method ((cat-name symbol) (pname string))
    (get-by-name (category-named cat-name :error) pname))
  (:method ((c category) (pname string))
    (get-by-name c (resolve pname)))
  (:method ((c category) (no-word null)) nil)
  (:method ((c category) (w word))
    (let ((table (cat-instances c)))
      (unless (> (hash-table-size table) 0)
        (error "No entries recorded for instances of ~a" c))
      (gethash w table))))



;;;-----------------------------------------------------------------
;;; Exceptions for when we -also- want the old conventional indexes
;;;-----------------------------------------------------------------
#| For some sets of categories, particularly those involving names,
 we want to let their built-in indexing instructions to run as well as
 the indexing provided by integrating individuals' bindings into the
 description lattice. This provides accurate cross-linking, such as
 between names and the thing they name, all relative to the current
 discourse context.
    Like *registered-for-by-name-indexing* described in the prior section,
 these categories are placed on a table. Make-simple-individual consults
the table and invokes index-individual. |#

;;/// switch to defvar when all worked out
(defparameter *registered-for-original-indexing* nil
  "Accumulator for the cases where this applies. Store category names.")

(defun register-category-for-original-indexing (category)
  "Called from decode-index-field-aux when the category's index
   field includes the keyword :apply"
  (push (cat-name category) *registered-for-original-indexing*))

(defun apply-indexes (category)
  "Tested for in make-simple-individual"
  (memq (cat-name category) *registered-for-original-indexing*))


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
