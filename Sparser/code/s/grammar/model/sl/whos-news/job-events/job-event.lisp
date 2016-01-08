;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "job event"
;;;   Module:  "model forms;sl:whos news:acts:job event:"
;;;  version:  1.1  January 1991

;; 1.1  (1/17 v1.8) Modifying the readout facilities to allow writing
;;      records to files.
;; 1.2  (2/18 v1.8.1) broke out the lambdas and readout routines to their
;;      own files.
;; 1.3  (3/6 v1.8.1)  Drastically extended define-job-event to act as a
;;      form for defining all the verb forms.  3/7 added nominalization case
;; 1.4  (3/8 v1.8.1)  Moved define-job-event to its own file so it could
;;      be loaded before the acts; need it.

(in-package :CTI-source)


;;;------------
;;; the object
;;;------------

(define-category  job-event)  ;;   (event-type subcategories)
;  :slots
;    ((name  symbol)
;     (rules (list :of rules)))
;  :index  (alist-on-slot name)
;  :subcategory-slots
;    ((company company)
;     (person  person)
;     (title   title)
;     (status  status-of-a-position)
;     (replacing  person)
;     (effective  date))
;  :subcategory-index
;    (:keyed :key name
;            :on  (:slot-of company
;                           staff)
;            :operation :push)


;;;--------------------------
;;; substanting the category
;;;--------------------------

(defstruct (job-event
            (:print-function print-job-event-structure))
  rules name )


(defun print-job-event-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<event-type " stream)
  (princ (job-event-name obj) stream)
  (write-string ">" stream))


;;;--------
;;; action 
;;;--------

(set-generic-treetop-action (category-named 'job-event)
                            'Report-and-stash-salient-object/job-event)




(defun category-to-replace (matrix replacement)
  (let ((category
         (cdr (assoc (cons matrix replacement)
                     *composites-replacement-vector-table*
                     :test #'equal))))
    (unless category
      (break "another case for the replacement vector table:~
              ~%       matrix: ~A~
              ~%  replacement: ~A" matrix replacement))
    category))

(defparameter *object-subsumption-table*
  `((,category::title
     . (,category::plural-title))
    ))

(defun valid-subsumption (item subsumer)
  (let ((item-category (category-named (type-of item)))
        (subsumer-category (if (composite? subsumer)
                             (first subsumer)
                             (category-named (type-of subsumer)))))
    ;(break "sub")
    (let ((subsumers
           (cdr (assoc item-category *object-subsumption-table*))))
      (when subsumers
        (member subsumer-category subsumers)))))



;;;----------
;;; indexing
;;;----------

(setf (cat-index category::job-event)
      (make-alist-index))

(defun table-of/job-event ()
  (cat-index (category-named 'category::job-event)))


(defun find/job-event (symbol)
  (cdr (assoc symbol (table-of/job-event))))

(defun job-event-named (symbol)
  (unless (symbolp symbol)
    (error "The argument to Job-event-named must be a symbol"))
  (find/job-event symbol))

(defun index/Job-event (symbol je)
  (setf (cat-index (category-named 'category::job-event))
        (acons symbol je (table-of/job-event))))


(defun delete/job-event (je)
  (let ((symbol (job-event-name je)))
    (setf (cat-index (category-named 'category::job-event))
          (rem-alist symbol (table-of/job-event))))
  je )

