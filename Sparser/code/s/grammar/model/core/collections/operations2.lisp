;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "operations"
;;;   Module:  "model;core:collections:"
;;;  version:  2.2 July 2013

;; initiated 6/7/93 v2.3, added sequences 6/9 - finished them 6/17
;; fixed a bug 10/29
;; 0.1 (1/7/94) grossly simplified indexing of sequences. Added def-form that
;;      uses ordinals as step towards everything using them and being able to 
;;      flush the items slot
;;     Throughout February incrementally debugging and tweeking the change
;; 0.2 (10/3) added string-printer, reclaimation fn.
;;     (2/28/95) moved out the printers to [obj specific printers]
;;     (4/23) updated call to indexing subrs
;;     (5/3) added sort fn.
;; 0.3 (7/7) tweeked All-but-last/iseq to not try it with singletons
;; 1.0 (2/2/05) Flushed the original, index-based definitions given the advent
;;      of lattice points and psi.  Just doing the easy case of explicitly defined
;;      sequences as used in the capitalzed-sequences of names, and enough of the
;;      rest to get-through.
;; 2.0 (8/7/06) The replacd's in that scheme turn out to be buggy. Replacing it
;;      with something simpler - eliminating the elaborate alist scheme.
;;     (11/13/08) Spread-sequence-across-ordinals got its first case of a word
;;      where it expected an edge
;; 2.1 (2/14/13) Put in operations on collections in same style as for sequences
;;      and removed the old code.
;; 2.2 (6/5/13) When indexing an individual that is permanent, note that sequences
;;      as a whole are permanent in the sense that we don't reap all their instances.
;; 2.3 (6/15/13) Have to revise indexing to no longer rely on categories to do lookup.
;;      Otherwise. 7/2/13 Fixed bug (missing clause) in the find routine. 

(in-package :sparser)

;;--- Trace flags (ad-hoc)

(defvar *trace-collections* nil
  "Salted into this code to check things")
#|
(when *trace-collections*
   (format t "~&  ~%"
|#


;;;-------------------------------------------------
;;; sort fn used by Sort-individuals-alphabetically
;;;-------------------------------------------------

#+ccl(define-sort-function 'collection 'sort-sequences)

(defun sort-sequences (s1 s2)
  (push-debug `(,s1 ,s2))
  (break "stub"))


;;;-----------------
;;; create routines
;;;-----------------

(defun create-sequence (items)
  (let ((sequence (make-unindexed-individual category::sequence))
        (count (length items)))
    (bind-variable 'number count sequence)
    (bind-variable 'items items sequence)
    ;;(bind-variable 'type category sequence)
       ;; There used to be more options for what the type was. Look at the
       ;; operations in "operations", esp. Spread-sequence-across-ordinals
    (spread-sequence-across-ordinals sequence items count)
    (index-sequence sequence)
    sequence))

;;/// Need make-over as with sequence
(defun create-collection (items category-specifier)
  ;; The individual is unindexed because it's only used as the
  ;; value of bindings and the provides their indentity
  (when *trace-collections*
    (format t "~&Creating collection of ~a~
               ~&   with ~a~%" category-specifier items))
  (unless (consp items)
    (setq items (list items)))
  (let ((collection (make-unindexed-individual category::collection))
        (category (typecase category-specifier
                    (symbol (category-named category-specifier))
                    (category category-specifier)
                    (otherwise
                     (error "Unknown type of category-specifier: ~a~%  ~a"
                            (type-of category-specifier) category-specifier)))))
    (unless category
      (error "There is no category named ~s" category-specifier))
    (bind-variable 'number (length items) collection)
    (bind-variable 'items items collection)
    (bind-variable 'type category collection)
    (index-collection collection)
    collection))


;;;--------
;;; define 
;;;--------

(defun define-sequence (items)
  (or (find-sequence items)
      (create-sequence items)))

(defun define-collection (items category)
  (or (find-collection items category)
      (create-collection items category)))


;;;------
;;; find
;;;------

;;/// Need make-over as with sequence
(defun find-collection (items category)
  (let ((instances (cat-instances category::collection))
        (count (length items)))
    (when instances
      (let ((length-entry (gethash count instances)))
	(when length-entry
	  (let ((category-entry (gethash category length-entry)))
	    (when category-entry
	      (gethash items category-entry))))))))


;;--- move to utilities

(defun first-n-of-list (n list)
  "Returns a new list"
  (loop for i from 0 to n
    as item in list
    collect item))


(defun find-sequence (items)
  (let ((instances (cat-instances category::sequence))
        (first-item (car items)))
    (when instances
      (let ((sequences (gethash first-item instances)))
        (when sequences
          (if (null (cdr sequences))
            (car sequences)
            (loop for seq in sequences
              as seq-items = (value-of 'items seq)
              when (equal seq-items items)
              return seq)))))))

;;;----------
;;; indexing
;;;----------

(defun index-sequence (sequence)
  (when (permanent-individual? sequence)
    (note-permanence-of-categorys-individuals category::sequence))
  (let ((table (cat-instances category::sequence))
        (first-item (car (value-of 'items sequence))))
    (unless table
      (setq table (setf (cat-instances category::sequence)
                        (make-hash-table :test #'eq))))
    (let ((existing-value (gethash first-item table)))
      (if existing-value
        (setf (gethash first-item table)
              (cons sequence existing-value))
        (setf (gethash first-item table)
              (list sequence))))))

	
;;/// Need make-over as with sequence
(defun index-collection (collection)
  (when (permanent-individual? collection)
    (note-permanence-of-categorys-individuals category::collection))
  (let ((instances (cat-instances category::collection)))
    (unless instances
      (setq instances (setf (cat-instances category::collection)
			    (make-hash-table :test #'eql))))
    (let* ((count (value-of 'number collection))
	   (length-entry (gethash count instances)))
      (unless length-entry
	(setq length-entry (setf (gethash count instances)
				 (make-hash-table :test #'eql))))
      (let* ((category (value-of 'type collection))
	     (category-entry (gethash category length-entry)))
	(unless category-entry
	  (setq category-entry (setf (gethash category length-entry)
				     (make-hash-table :test #'equal))))
	(let ((items (value-of 'items collection)))
	  (setf (gethash items category-entry) ;; defacto ordered
		collection)
	  collection)))))



;;--- ancilary indexing

(defun spread-sequence-across-ordinals (s items &optional count)
  (unless count
    (setq count (length items)))
  (let ((same-type? t)
        ordinal  item  running-type  pos-objects ) 
    (dotimes (i count)
      (setq ordinal (nth-ordinal (1+ i))
            item (pop items))
      ;(break "check for Pierre Vinken issues")
      (let ((pos (define-individual 'position-in-a-sequence
                   :number ordinal :item item :sequence s)))
        ;(break "ordinal-psi -- bound-in's too??")
        (push pos pos-objects)
        (if running-type
          (unless (eq running-type
		      (if (typep item 'word)
			item ;; it's a literal
			(first (indiv-type item))))
            (setq same-type? nil))
          (else ;; 1st time through
	    (setq running-type
		  (if (typep item 'word)
		    item
		    (first (indiv-type item))))))))
  
    (values (when same-type? 
              running-type)
            pos-objects)))



;;;-------------------------
;;; operations on sequences
;;;-------------------------

(defun first-item-of-sequence (sequence)
  (let ((items (value-of 'items sequence)))
    (first items)))


(defun last/iseq (sequence)
  (let ((items (value-of 'items sequence)))
    (car (last items))))
 
      
(defun all-but-last/iseq (sequence)
  (unless (itype sequence 'sequence)
    (break "Data check: argument isn't a sequence:~%  ~A~%" sequence))
  (let* ((items (value-of 'items sequence))
         (temp (copy-list items)))
    (setq temp (nreverse (cdr (nreverse temp))))
    (when temp
      ;; don't try to make a sequence if there aren't any items
      (define-sequence temp (value-of 'type  sequence)))))


;;;---------------------------
;;; operations on collections
;;;---------------------------

(defun add-item-to-collection (object collection)
  (when *trace-collections*
    (format t "~&Collections: adding ~a~%    to ~a ~%" object collection))
  (remove-collection-from-index collection)
  ;; Putting it on the front of the list
  (let* ((items-var (find-variable-for-category 'items category::collection))
         (b (has-binding collection :variable items-var)))
    (unless b
      (push-debug `(,items-var ,collection))
      (error "Why doesn't the collection have a binding for 'items'"))
    (let* ((value-cell (binding-value b))
           (cell-car (car value-cell))
           (cell-cdr (cdr value-cell)))
      (rplacd value-cell (cons cell-car cell-cdr)) ;; kons ??
      (rplaca value-cell object)
      (push-debug `(,object ,collection))
      (break "First call to add ~a to the collection ~a~
            ~%Look a value-cell" object collection)
      collection)))


(defun remove-collection-from-index (collection)
  ;; Needed when the number or identity of the items in it changes
  ;; and we need to reindex it.
  (let ((old-items (value-of 'items collection category::collection)))
    (unless (find-collection old-items collection)
      (error "Collection isn't indexed. Can't remove it"))
    (let ((instances (cat-instances category::collection))
          (category (value-of 'type collection category::collection))
          (count (value-of 'number collection category::collection)))
      (let ((length-entry (gethash count instances)))
        (let ((category-entry (gethash category length-entry)))
          (remhash old-items category-entry))))))



  


