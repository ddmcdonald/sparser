;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994,1995,1996 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "resource"
;;;   Module:  "objects;model:bindings:"
;;;  version:  January 1995   

;; initiated 11/30/91 v2.1. Put in the guts 8/8/94. Added master lists
;; 8/10.  1/7/96 modified Deallocate-binding to return from the loop
;; after anouncing that the binding isn't there. 

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
          (break "Couldn't find ~A amoung the active bindings" b)
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
  b )


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
    ;; we're reclaiming the individual that has this bindign)
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

