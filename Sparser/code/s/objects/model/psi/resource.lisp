;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "resource"
;;;   Module:  "objects;model:psi:"
;;;  version:  August 2009

;; initiated 6/19/09 on the model of the file in individuals. Exercised
;; and tweeked 7/22. Working on through 8/24

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *next-psi* :not-initialized
  "Points to the first available individual object in their resource
   list.")  ;; these are allocated (or deallocated) but yet to be deployed

(defparameter *active-psi* nil)
  ;; these are the one's that have been allocated but not yet deallocated

(unless (boundp '*number-of-psi-in-initial-allocation*)
  (defparameter *number-of-psi-in-initial-allocation* 100))

(unless (boundp '*number-of-psi-per-increment*)
  (defparameter *number-of-psi-per-increment* 50))

(defvar *psi-count* 0
  "Used for both allocated (resource-based) and permanent individuals
   so that all numbers are uniquely assigned. Number always goes up.")

;;;----------
;;; allocate
;;;----------

(defun allocate-psi ()
  (when (eq *next-psi* :not-initialized)
    (initialize-psi-resource))
  (unless *next-psi*
    (allocate-a-rasher-of-psi))
  (let ((psi (kpop *next-psi*)))
    (initialize-fields/psi psi)
    (setf (indiv-type psi) :freshly-allocated)
    (tr :allocating-a-psi-object psi)
;    (break "Allocating ~a~%Record the backtrace" psi)
    (kpush psi *active-psi*)
    psi ))


;;;------------
;;; deallocate
;;;------------

;;//// needs to hook into per-article-initializations via some sort
;; of reclaiming operation and a notion of permanence. 

(defun deallocate-psi (psi)
  ;; added it to the available list
  (unless (deallocated-psi? psi)
    (setq *next-psi*
          (kcons psi *next-individual*))
    
    ;; remove it from the active list
    (if (eq psi (first *active-psi*))
      (setq *active-psi* (cdr *active-psi*))
      
      (let* ((prior-cell *active-psi*)
             (next-cell (cdr *active-psi*))
             (next-psi (car next-cell)))
        (loop
          (when (null next-psi)
            (break "Couldn't find ~A amoung the active psi" psi)
            (return-from deallocate-psi nil))
          (when (eq next-psi psi)
            ;; splice it out of kcons list
            (rplacd prior-cell
                    (cdr next-cell))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                *next-individual* (car next-cell)))))
    
    ;; don't zero its fields until it's allocated again
    (setf (unit-plist psi) `(:deallocated t ,@(unit-plist psi)))
    psi ))


;;;-------------
;;; subroutines
;;;-------------

(defun initialize-fields/psi (i)
  (initialize-fields/individual i)
  (setf (psi-lp i) nil)
  (setf (psi-v+v i) nil)
  (setf (psi-downlinks i) nil)
  (setf (psi-source i) nil)
  (setf (psi-path i) nil)
  i)


(defun deallocated-psi? (i)
  (member :deallocated (unit-plist i)))


;;;------------
;;; initialize
;;;------------

(defun initialize-psi-resource ()
  ;; would be called from setup-session-globals/parser 
  ;; in drivers/inits/sessions/setup, but not until
  ;; we fully switch over.
  (setq *next-psi* nil)
  (allocate-a-rasher-of-psi
   *number-of-psi-in-initial-allocation*))

(defun allocate-a-rasher-of-psi
       ( &optional (max *number-of-psi-per-increment*))

  (let ((ptr *next-psi*))

    (dotimes (i max)
      (setq ptr
            (kcons (make-psi
                    :type :never-used
                    :plist `(:uid ,(incf *psi-count*)))
                  ptr)))

    (setq *next-psi* ptr)))


;;;--------
;;; lookup
;;;--------

(defun psi-object# (n)
  ;; modeled on individual-object# 
  (find n *active-psi*
	:key #'(lambda (i)
		 (cadr (member :uid (unit-plist i))))))

