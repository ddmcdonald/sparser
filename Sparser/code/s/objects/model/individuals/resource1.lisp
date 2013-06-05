;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "resource"
;;;   Module:  "objects;model:individuals:"
;;;  version:  1.0 June 2013

;; initiated 7/20/92 v2.3. 8/10/94 redid definition of re-initialization
;; 10/3 added return-from a failure break
;; 1.0 (5/13/95) Added notion of a permanent individual that appears on a separate
;;      list and isn't recycled.  2/7/05 Added permanent-individual? and a value
;;      for the :permanent property
;;     (6/3/13) Moved in the other general {+,-}permanent code and added doc.

(in-package :sparser)

#|  This is a recycled heap -based resource, rather than an array
 that wrapps.  This is because we potentially need *all* the individuals
 we might see in the course of a long article, rather than with edges
 or positions where the extent of grammatical relations plainly has
 a limit.  |#

;;;---------
;;; globals
;;;---------

(defparameter *next-individual* :not-initialized
  "Points to the first available individual object in their resource
   list.")  ;; these are allocated (or deallocated) but yet to be deployed

(defparameter *active-individuals* nil)
  ;; these are the one's that have been allocated but not yet deallocated


;;;----------
;;; allocate
;;;----------

(defun allocate-individual ()
  (unless *next-individual*
    (allocate-a-rasher-of-individuals))

  (let ((indiv (kpop *next-individual*)))
    (initialize-fields/individual indiv)
    (setf (indiv-type indiv) :freshly-allocated)
    (kpush indiv *active-individuals*)
    indiv ))


;;;------------
;;; deallocate
;;;------------

(defun deallocate-individual (indiv)
  ;; added it to the available list
  (unless (deallocated-individual? indiv)
    (setq *next-individual*
          (kcons indiv *next-individual*))
    
    ;; remove it from the active list
    (if (eq indiv (first *active-individuals*))
      (setq *active-individuals* (cdr *active-individuals*))
      
      (let* ((prior-cell *active-individuals*)
             (next-cell (cdr *active-individuals*))
             (next-individual (car next-cell)))
        (loop
          (when (null next-individual)
            (break "Couldn't find ~A amoung the active individuals" indiv)
            (return-from deallocate-individual nil))
          (when (eq next-individual indiv)
            ;; splice it out of kcons list
            (rplacd prior-cell
                    (cdr next-cell))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                next-individual (car next-cell)))))
    
    ;; don't zero its fields until it's allocated again
    (setf (unit-plist indiv) `(:deallocated t ,@(unit-plist indiv)))
    indiv ))


;;;-------------
;;; subroutines
;;;-------------

(defun initialize-fields/individual (i)
  (let ((uid (cadr (member :uid (unit-plist i)))))
    ;; preserve the id that identifies this instance of an individual
    ;; among all individuals ever allocated, zero the rest
    (setf (indiv-plist i) `(:uid ,uid))
    (setf (indiv-id    i) nil)
    (setf (indiv-type  i) nil)
    (setf (indiv-binds i) nil)
    (setf (indiv-bound-in i) nil)
    i ))

(defun deallocated-individual? (i)
  (member :deallocated (unit-plist i)))


;;;------
;;; init
;;;------

(defun initialize-individuals-resource ()
  (declare (special *number-of-individuals-in-initial-allocation*))
  (setq *next-individual* nil)
  (allocate-a-rasher-of-individuals
   *number-of-individuals-in-initial-allocation*))


(unless (boundp '*number-of-individuals-in-initial-allocation*)
  (defparameter *number-of-individuals-in-initial-allocation* 100))

(unless (boundp '*number-of-individuals-per-increment*)
  (defparameter *number-of-individuals-per-increment* 50))


(defparameter *individual-count* 0
  "Used for both allocated (resource-based) and permanent individuals
   so that all numbers are uniquely assigned.")


(defun allocate-a-rasher-of-individuals
       ( &optional (max *number-of-individuals-per-increment*))

  (let ((ptr *next-individual*))

    (dotimes (i max)
      (setq ptr
            (kcons (make-individual
                    :type :never-used
                    :plist `(:uid ,(incf *individual-count*)))
                  ptr)))

    (setq *next-individual* ptr)))



;;;---------------------------------------------------------------
;;; permanent individuals  -- outside the allocation/reuse system
;;;---------------------------------------------------------------
#|
Whether an individual is permanent or reclaim-able is determined by
the call from define-individual, where the *index-under-permanent-instances*
flag is set and read by make-simple-individual. Permanent individuals
are done with calls to make-a-permanent-individual just below and just
'make' a new instance of the structure. Reclaim-able are done by calls
to allocate-individual.

The usual progression of indexing calls for permanent individuals is
index-aux/individual => index-to-category => add-permanent-individual

Regardless of what the category may say about indexing, that function
uses the two-lists on the plist conception of how things are done. 

|#

(defparameter *permanent-individuals* nil)

(defun make-a-permanent-individual ()
  (let ((individual
         (make-individual
          :type :never-used
          :plist `(:uid ,(incf *individual-count*)
                   :permanent t))))
    (push individual *permanent-individuals*)
    individual ))


(defun permanent-individual? (i)
  (get-tag-for :permanent i))


(defun note-permanence-of-categorys-individuals (category)
  ;; called from decode-index-field-aux as it reads a category's
  ;; index field. 
  (push-onto-plist category t :instances-are-permanent))

(defun individuals-of-this-category-are-permanent (category)
  ;; called by define-individual to set the value of the flag
  ;; *index-under-permanent-instances* which that function binds.
  (get-tag-for :instances-are-permanent
               category))


;;;-----------------
;;; absolute lookup
;;;-----------------

(defun individual-object# (n)
  (cond ((find n *active-individuals*
              :key #'(lambda (i)
                       (cadr (member :uid (unit-plist i))))))

        ((find n *next-individual*
              :key #'(lambda (i)
                       (cadr (member :uid (unit-plist i))))))

        ((find n *permanent-individuals*
               :key #'(lambda (i)
                        (cadr (member :uid (unit-plist i))))))

        (t
         (format t "~%No active or allocated individual with ~
                    uid #~A" n))))



(defun indiv-uid (i)
  (cadr (member :uid (unit-plist i))))
