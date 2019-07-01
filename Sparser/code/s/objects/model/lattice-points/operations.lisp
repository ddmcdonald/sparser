;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-2005,2011-2017 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "operations"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  July 2017

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
;;     (5/22/14) Wrote display-category-tree and some ancilary routines to print
;;      the whole set of categories nicely. 
;;     (3/21/2015) SBCL caught application of lp-super-category to non lattice point --
;;       form categories are not in a lattice...
;;     (8/12/15) Removed references to PSI.
;;     (10/9/15 moved in useful functions from psi directory.
;;     (10/15/15) added predicate to look for a category having a single variable
;;       This is probably an expediency for something more deliberate, since the
;;       real question is, if we're to binds a dependent individual to a variable
;;       on the head individual, what variable should we use. 

(in-package :sparser)

;;;---------------------------
;;; what category is involved
;;;---------------------------

(defun category-of (item)
  (etypecase item
    (individual (itype-of item)) 
    (mixin-category item)
    (referential-category item)
    (category item)))


(defmethod base-category-of-lp ((lp lattice-point))
  (base-category-of-lp (lp-top-lp lp)))

(defmethod base-category-of-lp ((lp top-lattice-point))
  (lp-category lp))


(defun corresponding-lattice-point (unit)
  (typecase unit
    (individual
     (cat-lattice-position (first (indiv-type unit))))
    ;; Do individuals and categories point to the same lattice point for
    ;; purposes of recording realization-nodes? 
    (referential-category 
     (cat-lattice-position unit))
    (otherwise
     (error "It doesn't make sense (or does it?) to look up the ~
             lattice-point of a~%~a" unit))))


;;;-----------------------------------------
;;; predicates about a category's variables
;;;-----------------------------------------

;;/// probably needs reconsideration if lp isn't updated well enough
;; given use of description lattice
(defun saturated? (lp)
  (let ((bound (lp-variables-bound lp))
        (possible (lp-variables-free (lp-top-lp lp))))
    ;; Assumes that there's just one set of variables
    (= (length bound) (length possible))))


(defgeneric single-on-variable-on-category (category)
  (:documentation "If the category has any variables
    and there is just one of them, then return that variable.")
  
  (:method ((i individual))
    (single-on-variable-on-category (itype-of i)))
  
  (:method ((c model-category))
    (let ((variables (cat-slots c)))
      (when (= (length variables) 1)
        (car variables)))))


;;;----------------------------------------------
;;; what categories does a category inherit from
;;;----------------------------------------------

(defun has-supercategories? (c)
  (let ((lp (cat-lattice-position c)))
    (when lp
      (when (typep lp 'top-lattice-point)
        ;; block trying to go through a form-category where
        ;; the notion of super category is undefined.
        (lp-super-category lp)))))

(defun immediate-supers (c)
  "Return a category's super-catgory and mixins, reading only
   from the category object."
  (let* ((lp (cat-lattice-position c)) ; 
         (mixins (cat-mix-ins c)))
    (if (and (lattice-point-p lp)
             (lp-super-category lp))
      (cons (lp-super-category lp) mixins)
      mixins)))

(defgeneric superc (category)
  (:documentation "Return the single first-level super-category
    recorded on the category's lattice point")
  (:method ((name symbol))
    (superc (category-named name :error-if-missing)))
  (:method ((c category)) (superc (cat-lattice-position c)))
  (:method ((lp top-lattice-point)) (lp-super-category lp))
  (:method ((no null)) nil))


;;--- entry points

(defgeneric super-categories-of (category)
  (:documentation "If the category is in the lattice then
     walk up the lattice to collect all category's that
     it inherits from, including mixins and the supercategories
     of the mixins.
       The category itself is included in the list that is returned.
     After the first sweep of the lattice the result is cached
     on the category's property list. If the category isn't
     in the lattice (e.g. it's a form category) then this
     returns a singleton list.")

  (:method ((name symbol))
    (let ((c (category-named name :error-if-none)))
      (super-categories-of c)))

  (:method ((c referential-category))
    (if (cat-lattice-position c)
      (super-categories-of1 c)
      (list c)))

  (:method ((c mixin-category))
    (if (cat-lattice-position c)
      (super-categories-of1 c)
      (list c)))

  (:method ((i individual))
    (let ((type (indiv-type i)))
      (if (null (cdr type))
        (super-categories-of (car type))
        (else
          (push-debug `(,i ,type))
          (error "Stub: write the code to handle collecting ~
            the super-categories-of an individual with more ~
            than one type.~%~a~%~a" i type)))))

  (:method ((c t))
    (push-debug `(,c))
    (error "super-categories-of is not defined on objects of ~
            type ~a" (type-of c))))


;;--- doing the work

(defun super-categories-of1 (c)
  "Has the list of the super-categories of c constructed once and
   caches the result so we don't have to always walk up these pointer
   chains. The simple cases are done here, but usually the category
   is connected into the category lattice and we have to walk up it.
   Collect-supercategories-off-lp calls back to this function as it
   walks its way up the lattice. "
  (declare (special *top-of-category-tree*))
  (assert (category-p c) () "~a is not a category" c)
  (or (get-tag :super-categories c)
      (unless (eq c *top-of-category-tree*)
        (let* ((lp (cat-lattice-position c))
               (supers
                (cond ((null lp)
                       (error "The cat-lattice-position slot of ~a is empty" c))
                      ((category-p lp)
                       ;; true of form categories
                       (list c lp))
                      ((lattice-point-p lp)
                       (collect-supercategories-off-lp c lp))
                      (t
                       (error "Unexpected type of object in the lattice-position ~
                             field of ~a~%  ~a  ~a" c (type-of lp) lp)))))
          (let ((ordered-supers
                 (reorder-categories-to-put-top-last supers)))
            (setf (get-tag :super-categories c) ordered-supers)
            ordered-supers)))))

(defun reorder-categories-to-put-top-last (category-list)
  "We want to be able to use 'top' as the stopping point of the
   walks up the superc chains, but since we are not being clever
   about how we interleave going up a main line and up from mixins,
   the 'raw' collected can't guarentee this so we do it manually."
  (declare (special *top-of-category-tree* category::form-category))
  (when (and category-list
             ;; we have a subtle bug with PARAGRAPH being the interpretation
             ;;  of a word, and also a form-category
             (not (member category::form-category category-list)))
    
    ;; can be null with mixins
    (let ((top *top-of-category-tree*)) ;; shorten the name
      (assert (memq top category-list) ()
              "Category list does not included top: ~a~
             ~%One of these categories is not a specialization of ~
               a category in the ontology." category-list)
      (let ((list-less-top (delete top category-list)))
        (tail-cons top list-less-top)))))
  
             
(defun super-categories-of-list-type (category-list)
  "For each category in the list, append its super-categories.
   Note that super-categories-of will include the category
   itself as the first element of the list that it returns."
  (loop for category in category-list
     append (super-categories-of category) into supers
     finally (return supers)))
  


(defun collect-supercategories-off-lp (c lp)
  "We gather the categories defined directly on c, that is c and
   any mixins it incorporates. From those make recursive calls to
   get their supercategories, then append their results together
   as they return."
  (let* ((mixins (cat-mix-ins c))
         
         ;; Get the super categories of each local mixin
         (mixin-supers
          (when mixins ;; if there's one there will likely be several
            (super-categories-of-list-type mixins)))

         ;; Does c have a super-category? This is the category
         ;; directly above c. This line is single inheritance
         (immediate-super-category
          (lp-super-category lp))

         ;; If the supercategory of c has mixins we collect their
         ;; supercategoies now, though we only fold them into
         ;; the full list of supercategories after we've done
         ;; the collection of the main line of inheritance.
         (mixins-of-immediate-super-category
          (when immediate-super-category
            (when (cat-mix-ins immediate-super-category)
              (super-categories-of-list-type
               (cat-mix-ins immediate-super-category)))))
         
         (immediate-super-lp
          (when immediate-super-category
            (cat-lattice-position immediate-super-category)))
         
         (super-supers ;; recurse up the main line of inheritance
          (when (and immediate-super-lp
                     (top-lattice-point-p immediate-super-lp)
                     (lp-super-category immediate-super-lp))
            (super-categories-of1 immediate-super-category))))

    (unless mixin-supers
      (when mixins (setq mixin-supers mixins)))
    
    (when nil
      (format t "~% For ~a~
                 ~%  mixin-supers  ~a~
                 ~%  super-supers  ~a~
                 ~%  mixins of immediate super-category ~a~
                 ~%  immediate-super ~a~%" 
              c mixin-supers super-supers mixins-of-immediate-super-category
              immediate-super-category))
    
    (let ((supers
           (cond
            ((and mixin-supers super-supers immediate-super-category)
             (cons c (append super-supers mixin-supers)))
            
            ((and mixin-supers super-supers)
             (cons c (append super-supers mixin-supers)))
            
            ((and mixin-supers immediate-super-category)
             (cons c (cons immediate-super-category mixin-supers)))
            
            (super-supers ;; includes the immediate-super-category
             (cons c super-supers))
            
            (immediate-super-category
             (list c immediate-super-category))
            
            (mixin-supers
             (cons c mixin-supers)))))
      
      (when mixins-of-immediate-super-category
        ;;/// should this be supers before mixins?
        (setq supers (append mixins-of-immediate-super-category supers)))
      
      (remove-duplicates supers))))

;;--- misc

(defun lattice-depth (c)
  (if (lattice-point-p (cat-lattice-position c))
    (let ((superc (lp-super-category (cat-lattice-position c))))
      (if superc
        (1+ (lattice-depth superc))
        1 ))
    0))





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
  "Is the category equal to or a subcategory of the reference-category? 
  Walk up the lattice from the catgory until we find the reference-category or
  top-out with a super-category of nil since the network has multiple
  roots, c.f. model/core/kinds/upper-model.lisp. When a category has
  mixins those are traversed independently."
  (when (null category) (error "Illegal null category."))
  (if (eq category reference-category)
      t

      (not (null (memq reference-category (super-categories-of category))))
      #+ignore
      (let* ((lp (cat-lattice-position category))
             (super-category
              ;; SBCL caught application of lp-super-category to non lattice point --
              ;;  form categories are not in a lattice...
              (when (lattice-point-p lp)
                (lp-super-category lp)))
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
  "When called from Sort-referential-categories-hierarchically it is
  ;; taking the entire set of categories and making a pairwise record
  ;; of each category's daughters.
"
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

;;;-------------------------------------------------------------
;;------ recomputing daughter (subcategory) info down from top
;; This old scheme is flawed in non-obvious way. 

(defgeneric subcategories-of (category))

(defmethod subcategories-of ((name symbol))
  (subcategories-of (category-named name :break-if-none)))

(defmethod subcategories-of ((c category))
  (let ((lp (cat-lattice-position c)))
    ;;(unless lp (error "No lattice point on ~a" c))
    (when lp
      (let ((pairs (lp-subtypes lp)))
        ;; (<category> <its lattice point>)
        (loop for pair in pairs collect (car pair))))))

(defvar *category-was-displayed* (make-hash-table :size 600)
  "Check list used by display-category-tree")

(defun display-category-tree (&optional (stream *standard-output*))
  ;; Start with top and walk all the way down, marking
  ;; categories as displayed when they're reached. 
  ;; When that's exhausted, sweep the remaining categories
  ;; from the master list for those without supercategories
  ;; and treat them as level 0 seeds.
  (display-categories-below :stream stream))

(defun display-categories-below (&key (top (category-named 'top))
                                   (depth -1) (max-width 10)
                                   (with-parens t)
                                   (with-vars t)
                                   (stream *standard-output*))
  (clrhash *category-was-displayed*)
  (initialize-indentation)
  (when (and top (symbolp top))
    (setq top (category-named top)))
  (display-with-subcs top stream depth max-width with-parens with-vars)

  ;; optionally look through the categories that weren't included
  ;; in that sweep and report them.
  (when (and (eq top (category-named 'top))
             (= depth -1))
    (let* ((remaining (loop for c in *categories-defined*
                        unless (gethash c *category-was-displayed*)
                        collect c))
           (remaining-without-supercs
            (loop for r in remaining
              unless (has-supercategories? r)
              collect r)))
      (format t "~&~%~a remaining, ~a without a supercategory~%~%~%"
              (length remaining) (length remaining-without-supercs))
      (dolist (c remaining-without-supercs)
        (unless (or (gethash c *category-was-displayed*)
                 (or (form-category? c)
                     (member (get-tag :source c) '(:comlex :morphology))))
          (initialize-indentation)
          (display-with-subcs c stream depth max-width with-parens  with-vars))))))



(defun display-with-subcs (category stream
                           &optional (depth -1) (max-width 10)
                                     (with-parens t) (with-vars t))
  "Write a formatted view of the subcategories of the category to the stream. 
   Calls itself recursively for 'depth' levels, e.g. with depth=2 it writes out
   the category and its immediates subcategories. The default setting of depth (-1)
   will print the entire subtree. 
   'max-width' specifies how many subcategories at the same depth will be printed. 
   'with-paren' will enclose every level inside parentheses, making the entire 
      output a single s-exp.
   'with-vars' is a flag to include a listing of the variables that are bound by the
      category."
  (unless (= depth 0)
    (emit-line stream (format nil "~a~a~a"
                              (if with-parens "(" "")
                              (string-downcase (format nil "~a" (cat-name category)))
                              (if (and with-vars (cat-slots category))
                                  (let ((vars (mapcar #'pname
                                                      (loop for slot in (cat-slots category)
                                                         unless (search "-OR-"
                                                                        (format nil "~a" (pname slot)))
                                                            collect slot))))
                                    (if vars
                                        (string-downcase
                                         (format nil " :variables ~a" vars))
                                        ""))
                                  "")))
    (setf (gethash category *category-was-displayed*) t)
    (push-indentation)
    (unless (or
             (form-category? category)
             (member (get-tag :source category) '(:comlex :morphology)))
      (loop for subc in (sort (subcategories-of category) #'string<
                              :key #'(lambda (c)(string-downcase (format nil "~a" (cat-name c)))))
         as i from 0 to max-width
         do
           (if (eq i max-width)
               (then (emit-line stream ";;...") (terpri stream))
               (display-with-subcs subc stream (- depth 1) max-width with-parens with-vars))))
    (pop-indentation)
    (when with-parens (format stream ")"))))

(defun tree-below (category &optional (depth -1))
  (clrhash *category-was-displayed*)
  (collect-sub-tree category depth))

(defun collect-sub-tree (category &optional (depth -1))
  (cond
   ((zerop depth) (if (subcategories-of category)
                      (list category)
                      category))
   ((not (form-category? category))
    (cons category
          (when (not (gethash category *category-was-displayed*))
            (setf (gethash category *category-was-displayed*) t)
            (loop for subc in (subcategories-of category)
              collect (collect-sub-tree subc (- depth 1))))))))



;;;----------------------
;;; printing the lattice
;;;----------------------

(defparameter *categories-without-supercs* nil
  "an accumulator")

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
