;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relation-indexing"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/12/13. Futzing through 3/14/13

(in-package :sparser)

;;;---------------------
;;; make / index / find
;;;---------------------

(defun make-text-relation-instance (tr args)
  ;; make the instance, store it in the table
  (let* ((class-name (tr-class-name tr))/Users/ddm/sparser/Sparser/code/s/analyzers/SDM&P/text-relations.lisp
         (parameters (tr-slot-names tr))
         (arglist (loop for arg in args
                    as p in parameters
                    append `(,p ,arg))))
    (let ((i (apply #'make-instance
                    class-name arglist)))
      (setf (tr-relation i) tr)
      (index-text-relation-instance tr i args)
      ;; push it on the list of instances
      ;; put it in the table for interning
      ;; set its count to 1
      ;; increment the count on the relation
      ;; Add the relation object to the section contents
      ;;  and article contents.
      i)))

(defun index-text-relation-instance (tr i args)
  (push-debug `(,tr ,i ,args))
  (let ((table (tr-table tr))
        (dimension (length args)))
    (case dimension
      (1 
       (setf (gethash (car args) table) i))
      (2
       (let ((arg2-table (gethash (second args) table)))
         (unless arg2-table
           (setq arg2-table (make-hash-table :test #'eq))
           (setf (gethash (second args) table) arg2-table))
         (setf (gethash (first args) arg2-table) i)))
      (otherwise
       (break "extend tr find algorithm to length ~a" dimension)))))
  

(defun find-text-relation-instance (tr args)
  (let ((table (tr-table tr))
        (dimension (length args)))
    (case dimension
      (1 
       (gethash (car args) table))
      (2
       (let ((arg2-table (gethash (second args) table)))
         (when arg2-table
           (gethash (first args) arg2-table))))
      (otherwise
       (break "extend tr find algorithm to length ~a" dimension)))))

