;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP)
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "alloc"
;;;   module:  "tools;cons-resource:"
;;;  Version:  January 1994

;; started 7/13/92 v2.3, added Deallocate-klist 10/31/93
;; (1/2) redesigned the basic operations after seeing some circularity
;; (1/6) pulled the redesign of dealloc, as it was out of sync with the
;;  assumptions made in Kcons.

(in-package :sparser)


;;;-------------------
;;; sizing parameters
;;;-------------------

(unless (boundp '*number-of-cons-cells-in-initial-allocation*)
  (defparameter *number-of-cons-cells-in-initial-allocation* 500))


(unless (boundp '*number-of-cons-cells-per-increment*)
  (defparameter *number-of-cons-cells-per-increment* 100))


;;;------------------------------------
;;; extending the size of the resource
;;;------------------------------------

(defun allocate-a-rasher-of-cons-cells ()
  (let ((ptr *next-cons-cell*))
    (dotimes (i *number-of-cons-cells-per-increment*)
      (setq ptr (cons (cons nil nil)
                      ptr)))
    (setq *next-cons-cell* ptr)
    (length *next-cons-cell*)
    ))


;;;--------------------
;;; deallocating cells
;;;--------------------

(defparameter *number-of-calls-to-deallocate-kons* 0)

(defun deallocate-kons (cell)
  (unless (consp cell)
    ;; don't need to worry about the cost of this check since
    ;; most deallocation will be part of initializing the chart
    ;; and we can pull it once the new facilities are shaken down.
    (error "~A is not a cons cell" cell))

  ;(format t "~&Deallocating cell whose car is ~A~%" (car cell))
  ;(incf *number-of-calls-to-deallocate-kons*)

  (rplaca cell nil)
  (rplacd cell nil)

  (setq *next-cons-cell*
        (kcons cell *next-cons-cell*))

  ;(length *next-cons-cell*)
  nil )

#|
(setq *next-cons-cell* nil)
(allocate-a-rasher-of-cons-cells)
(setq *number-of-calls-to-kcons* 0
      *number-of-calls-to-deallocate-kons* 0)

*number-of-calls-to-kcons*
*number-of-calls-to-deallocate-kons*
(length *next-cons-cell*)
|#


;;;--------------------
;;; deallocating lists
;;;--------------------

(defun deallocate-klist (1st-cons)
  (let ((cons 1st-cons)
        (next-cons (cdr 1st-cons)))
    (loop
      (deallocate-kons cons)
      (if next-cons
        (setq cons next-cons
              next-cons (cdr next-cons))
        (return)))

    ;(length *next-cons-cell*)
    nil ))


#| testing 
(setq *next-cons-cell* nil)
(allocate-a-rasher-of-cons-cells)
(length *next-cons-cell*)

(setq l1
      (kcons 1
             (kcons 2
                    (kcons 3
                           (kcons 4
                                  (kcons 5
                                         (kcons 6
                                                nil)))))))
(length *next-cons-cell*)
(deallocate-klist l1)
(length *next-cons-cell*)
|#

;;;------------------------------
;;; deallocating arbitrary trees
;;;------------------------------

(defun deallocate-cons-tree (tree)
  (when (consp tree)
    (let ((tree-car (car tree))
          (tree-cdr (cdr tree)))
        
      (when (consp tree-car)
        (deallocate-cons-tree tree-car))
        
      (if (null tree-cdr)
        (deallocate-kons tree)
        (else
          (when (consp tree-cdr)
            (deallocate-cons-tree tree-cdr))
          (deallocate-kons tree))))))


#| testing 
(setq *next-cons-cell* nil)
(allocate-a-rasher-of-cons-cells)
(length *next-cons-cell*)

(setq l2
      (kcons 1
             (kcons (kcons (kcons (kcons 2
                                         3)
                                  4)
                           5)
                    (kcons 6
                           (kcons 7
                                  (kcons (kcons 8
                                                nil)
                                         (kcons 10
                                                nil)))))))
;; = (1 (((2 . 3) . 4) . 5) 6 7 (8) 10)

(length *next-cons-cell*)
(deallocate-cons-tree l2)
(length *next-cons-cell*)   |#

