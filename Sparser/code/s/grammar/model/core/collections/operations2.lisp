;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "operations"
;;;   Module:  "model;core:collections:"
;;;  version:  2.0 November 2008

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
;; 2.0 (8/7/06) The replacd's in that scheme turn out to be buggy. Replacing iit
;;      with something simpler - eliminating the elaborate alist scheme.
;;     (11/13/08) Spread-sequence-across-ordinals got its first case of a word
;;      where it expected an edge

(in-package :sparser)


;;;-------------------------------------------------
;;; sort fn used by Sort-individuals-alphabetically
;;;-------------------------------------------------

#+ccl(define-sort-function 'collection 'sort-sequences)

(defun sort-sequences (s1 s2)
  (break "stub"))


(defun create-sequence (items category)
  (let* ((sequence (make-unindexed-individual category::sequence))
         (count (length items)))
    (bind-variable 'number count sequence)
    (bind-variable 'items items sequence)
    (bind-variable 'type category sequence)
       ;; There used to be more options for what the type was. Look at the
       ;; operations in "operations", esp. Spread-sequence-across-ordinals
    (spread-sequence-across-ordinals sequence items count)
    (push sequence *sequences*)
    (index-sequence sequence)
    sequence))
(defvar *sequences* nil)


;;;-----------------------
;;; identifying sequences
;;;-----------------------

(defun define-sequence (items category)
  (or (find-sequence items category)
      (create-sequence items category)))

(defun find-sequence (items category)
  (let ((instances (cat-instances category::sequence))
        (count (length items)))
    (when instances
      (let ((length-entry (gethash count instances)))
	(when length-entry
	  (let ((category-entry (gethash category length-entry)))
	    (when category-entry
	      (gethash items category-entry))))))))

; The instance field of the category sequence holds a hashtable by
; length of the sequence. The length entries are tables from categories
; to a table indexed by the identity of the entries.

(defun index-sequence (sequence)
  (let ((instances (cat-instances category::sequence)))
    (unless instances
      (setq instances (setf (cat-instances category::sequence)
			    (make-hash-table :test #'eql))))
    (let* ((count (value-of 'number sequence))
	   (length-entry (gethash count instances)))
      (unless length-entry
	(setq length-entry (setf (gethash count instances)
				 (make-hash-table :test #'eql))))
      (let* ((category (value-of 'type sequence))
	     (category-entry (gethash category length-entry)))
	(unless category-entry
	  (setq category-entry (setf (gethash category length-entry)
				     (make-hash-table :test #'equal))))
	(let ((items (value-of 'items sequence)))
	  (setf (gethash items category-entry)
		sequence)
	  sequence)))))
	
	  



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



#|  The original stuff -- delete when it's been assimilated.

;;;---------------------
;;; generic collections
;;;---------------------

 (defun find/collection (collection-category binding-instructions)
  ;; called from find/individual
  ;; the binding-instructions are a list of variable-value lists
  (let ((number (value-of-instr 'number binding-instructions))
        (type   (value-of-instr 'type binding-instructions))
        (items  (value-of-instr 'items binding-instructions)))

    (dolist (c (cat-instances collection-category))
      (when (= number (value-of 'number c))
        (when (eq type (value-of 'type c))
          (when (equal items (value-of 'items c))  ;; order sensitive
            (return-from find/collection c)))))
    nil ))


 (defun index/collection (individual collection-category bindings)

  ;; The individual has been already determined to be unique
  ;; given the values indicated by the bindings, the task now
  ;; is to store the individual in a structure in such a way
  ;; that we can Find this same individual given those same
  ;; values.  /// trivial, no-structure treatment
  (declare (ignore bindings))

  (setf (cat-instances collection-category)
        (cons individual (cat-instances collection-category)))
  (index-to-category individual collection-category
                     *index-under-permanent-instances* )
  individual )


 (defun reclaim/collection (i instances collection-category)
  (setf (cat-instances collection-category)
        (delete i instances :test #'equal)))






;;;-----------------------------------
;;; general operations over sequences
;;;-----------------------------------
 


;;;--------------------
;;; indexing sequences
;;;--------------------

#| (setf (cat-instances category::sequence)
         (make-hash-table :test #'eql))       |#

 (defun define-sequence (items  &optional type)
  (unless items
    (break "called with no items"))
  (let* ((count (length items))
         (sequence-category category::sequence))

    (or (find/sequence/spread sequence-category count items type)
        #|(progn (format t "~%new sequence:")
               (pl items)
               ;(break)
               nil )|#
        (let* ((sequence (make-unindexed-temporary-individual sequence-category))
               (bindings
                `(,(bind-variable 'number count sequence)
                  ,(bind-variable 'items items sequence))))

          (let ((calculated-type
                 (spread-sequence-across-ordinals sequence items count)))
            (when (and calculated-type type)
              (unless (eq calculated-type type)
                (break "The category of type passed in ~A~
                        ~%does not match the actual type of the items: ~
                        ~A"  type calculated-type)))
            (bind-variable 'type (or calculated-type type) sequence)

            (index/sequence sequence sequence-category bindings)
            sequence )))))


 (defun sequence# (n)
  (maphash #'(lambda (count list-of-sequences)
               ;(declare (ignore count))
               (format t "~%~A sequences of length ~A~%"
                       (length list-of-sequences) count)
               (dolist (s list-of-sequences)
                 (when (= n (indiv-id s))
                   (return-from Sequence# s))))
           (cat-instances category::sequence))
  nil )


 (defun find/sequence (sequence-category binding-instructions)
  ;; this is the pattern of parameters for a generic call
  ;; from Def-individual. We unpack the bindings and rephrase this
  ;; as a category-specific lookup.
  (let ((number (value-of-instr 'number binding-instructions))
        (items (value-of-instr 'items binding-instructions))
        (type (value-of-instr 'type binding-instructions)))
    (unless number
      (break "No number binding included in instructions"))
    (unless items
      (break "No items binding included in instructions"))
    (find/sequence/spread sequence-category number items type)))


 (defun find/sequence/spread (sequence-category number items &optional type)
  ;; look for a known sequence with the indicated number of items
  ;; of that type and with those very items.
  (let ((table-by-number (cat-instances sequence-category)))
    (when table-by-number
      (let ((list-of-sequences (gethash number table-by-number))
            sequences-of-the-right-type )

        (when type
          (setq sequences-of-the-right-type
                (filter-sequences-by-type type list-of-sequences))
          (unless sequences-of-the-right-type
            (return-from find/sequence/spread nil)))

        (when list-of-sequences
          (find/seq/by-count number ;; a #<number>. It gets counted down
                             1      ;; it gets counted up
                             items  ;; the copy to pop from
                             items  ;; the reference copy
                             (or sequences-of-the-right-type
                                 list-of-sequences)
                             ))))))


 (defparameter *seq/type-variable*
  (find-variable-in-category/named 'type category::sequence))

 (defun filter-sequences-by-type (type sequences)
  ;; returns a new list of all and only those sequences in the input
  ;; list that bind the indicated type of item
  (let ( good-ones )
    (dolist (s sequences)
      (when (eq type (value/var *seq/type-variable* s))
        (push s good-ones)))
    (nreverse good-ones)))


 (defun find/seq/by-count (iterations-remaining i-th item-list
                          original-items-list candidate-sequences)

  ;; recursive routine. Go from the items to the sequences by way
  ;; of ordinal positions within them. 
  (when (= iterations-remaining 0)
    ;; we've recursively checked through all of the positions in the
    ;; sequence
    (break "reached zero"))

  (let* ((item (pop item-list))
         (binders (indiv-bound-in item)))
    (when binders
      ;; this item is part of some relation/s. If its part of the
      ;; sequence we're looking for then one of those relations will
      ;; involve the ordinal corresponding to this point in the
      ;; sequence
      (let* ((ordinal (nth-ordinal i-th))
             (relevant-bindings
              (all-bindings-such-that binders
                                      :body-type-is ordinal)))
 ;(break)
        (when relevant-bindings
          ;; the ith item is in an ith relationship with some thing/s.
          ;; Are any of them included in the candidate sequences?
          (let* ((ith-sequences
                  (mapcar #'(lambda (b)
                              (up-and-over b 'sequence
                                           'position-in-a-sequence))
                          relevant-bindings))
                 (new-candidates
                  (mapcan #'(lambda (seq)
                              (when (member seq candidate-sequences
                                            :test #'eq)
                                (list seq)))
                          ith-sequences)))
 ;(break)
            (when new-candidates
              (if (null (cdr new-candidates)) ;; there's only one
                (let ((candidate (first new-candidates)))
                  (when (equal original-items-list
                               (value-of 'items candidate))
                    candidate))

                ;; there are multiple possibilities, meaning that there are
                ;; several sequences for which the item is the i-th member.
                ;; so we look at just that subset of candidates and see
                ;; if they share the next item as well.
                (find/seq/by-count (1- iterations-remaining)
                                   (1+ i-th)
                                   item-list  ;; which has been popped
                                   original-items-list
                                   new-candidates)))))))))


;; no longer needed?
 (defun sequences/from-ordinal-bindings (bindings)
  ;; These binding have as their body type the same position-in-a-sequence
  ;; i.e. the same ordinal. We make a list of all the corresponding sequences
  ;; and return it.
  (let ( sequences )
    (dolist (b bindings)
      (push 
       (up-and-over b ;;  binding to use as the path to the relation
                    'sequence  ;; variable whose value we want
                    category::position-in-a-sequence
                      ;; the category that defines the variable
                    )
       sequences ))
    (nreverse sequences)))




 (defun index/sequence (s sequence-category bindings)
  ;; hash by number of elements
  (let* ((table-by-number (cat-instances sequence-category))
         (number-binding (binding-of-bindings
                          (find-variable-in-category/named
                           'number sequence-category)
                          bindings))
         (number (binding-value number-binding)))

    (index-to-category s sequence-category
                       *index-under-permanent-instances*)

    (unless table-by-number
      (setf (cat-instances sequence-category)
            (setq table-by-number (make-hash-table :test #'eql))))

    (let ((sequences-of-that-length (gethash number table-by-number)))
      (if sequences-of-that-length
        (setf (gethash number table-by-number)
              (cons s (gethash number table-by-number)))
        (setf (gethash number table-by-number)
              `(,s))))))


 (defun reclaim/sequence (s table-by-number sequence-category)
  (when table-by-number
    (let* ((length (value-of 'number s))
           (entry (gethash length table-by-number)))
      (when entry
        (setf (gethash length table-by-number)
              (delete s entry :test #'equal))))))

|#
