;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "resource"
;;;   Module:  "objects;model:bindings:"
;;;  version:  June 2013

;; initiated 11/30/91 v2.1. Put in the guts 8/8/94. Added master lists
;; 8/10.  1/7/96 modified Deallocate-binding to return from the loop
;; after anouncing that the binding isn't there. 
;; 6/12/13 Made deallocate-binding look for the possibility of the
;; binding already being deallocated. Converted break in the search
;; loop for a cerror then to a simple return because permanent individuals
;; were involved -- which has to be sorted out.

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(unless (boundp '*number-of-bindings-in-initial-allocation*)
  (defparameter *number-of-bindings-in-initial-allocation*  200))

(unless (boundp '*number-of-bindings-per-increment*)
  (defparameter *number-of-bindings-per-increment* 50))


;; bindings allocated (or deallocated) but yet to be used
(defparameter *next-binding* :not-initialized
  "Points to the first available binding object in their resource
   list.")

(defparameter *active-bindings* nil)
;; bindings in use


;;;-------------
;;; de/allocate
;;;-------------

(defun allocate-binding ()
  (when (null *next-binding*)
    (allocate-a-rasher-of-bindings))

  (let ((binding (kpop *next-binding*)))
    (kpush binding *active-bindings*)
    (initialize-fields/binding binding)
    binding ))



(defun deallocate-binding (b)
  (unless (or (deallocated-binding? b)
              ;; Somethings already reached it by a different route.
              ;; If we continue we're going to put the same binding
              ;; on the list twice.
              (permanent-individual? (binding-body b))
              ;; Don't deallocate bindings permanent objects
              ;; are using
              (and (unit-p (binding-value b)) ;; vs a number
                   (permanent-individual? (binding-value b))))

    (setq *next-binding*
          (kcons b *next-binding*))

    ;; remove it from the active list
    (if (eq b (first *active-bindings*))
      (setq *active-bindings* (cdr *active-bindings*))

      (let* ((prior-cell *active-bindings*)
             (next-cell (cdr *active-bindings*))
             (next-binding (car next-cell)))
        (loop
          (when (null next-binding)
            ;; Examined some of the cases, and they are in
            ;; the bound-in field of the individual we're
            ;; deallocating and appear to involve completely
            ;; different structures. E.g. the number 26 was
            ;; being deallocated from its occurrance in a date
            ;; and the binding represents "26 millon".
            ;; This is a conundrum, but not easily solved.
            ;; One approach is to filter bound-in's for the
            ;; individual being permanent.
            ;(cerror "Just keep going"
            ;        "Couldn't find ~A amoung the active bindings" b)
            (return))
          (when (eq next-binding b)
            ;; splice it out of kcons list
            (rplacd prior-cell
                    (cdr next-cell))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                next-binding (car next-cell)))))

    (setf (unit-plist b) `(:deallocated t ,@(unit-plist b)))
    b ))


(defun initialize-fields/binding (b)
  (setf (binding-body b) nil)
  (setf (binding-variable b) nil)
  (setf (binding-value b) nil)
  (setf (unit-plist b) nil)
  b )


(defun deallocated-binding? (b)
  (if b
    (member :deallocated (unit-plist b) :test #'eq)

    ;; Because of occasional aborts in the middle of things,
    ;; it can happen that a bindings field comes to contain
    ;; the object "nil", which we don't want to do any 
    ;; processing on.  Since this predicate is one of the
    ;; checks made to avoid processing bindings, we can
    ;; treat "nil" as though it were a deallocated binding
    ;; and the right thing will happen (so long as ultimately
    ;; we're reclaiming the individual that has this binding)
    t ))


;;;----------------
;;; initialization
;;;----------------

(defparameter *binding-allocation-count* 0)

(defun allocate-a-rasher-of-bindings
       ( &optional (max *number-of-bindings-per-increment*))
  (let ((ptr *next-binding*))
    (when (eq ptr :not-initialized)
      ;; happens on the first call
      (setq ptr nil))

    (dotimes (i max)
      (setq ptr
            (kcons (make-binding
                    :variable :fresh-binding
                    :id (incf *binding-allocation-count*))
                   ptr)))

    (setq *next-binding* ptr)))


(defun establish-binding-resource ()
  ;; called from Setup-session-globals/grammar when the system
  ;; is launched.
  (setq *next-binding* nil)
  (allocate-a-rasher-of-bindings
   *number-of-bindings-in-initial-allocation*))



;;;-----------------
;;; absolute lookup
;;;-----------------

(defun individual-binding# (n)
  (cond ((find n *active-bindings*
              :key #'binding-id ))
        ((find n *next-binding*
              :key #'binding-id ))
        (t
         (format t "~%No active or allocated binding with ~
                    id #~A" n))))

