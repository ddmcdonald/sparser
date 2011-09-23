;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "examination buffer"
;;;   Module:  "drivers;chart"
;;;  Version:   1.0  January 1991

;; initiated in January 1991
;; 1.1 (3/5 v1.8.1) Rebound two globals referenced in Analysis-core
;;     so that the parsing into the buffer would be even more silent

(in-package :sparser)

;;;-----------
;;; the buffer
;;;-----------

(or (boundp '*length-of-examination-buffer*)
    (defparameter *length-of-examination-buffer* 10))

(defparameter *examination-buffer*
              (make-array *length-of-examination-buffer*))

(defvar *last-position-in-ex-buf* 0)

(defun initialize-examination-buffer ()
  (dotimes (i *last-position-in-ex-buf*)
    (setf (aref *examination-buffer* i) nil))
  (setq *last-position-in-ex-buf* 0))


;;;--------------------
;;; filling the buffer
;;;--------------------

(defvar *parsing-into-examination-buffer* nil
  "A flag that is set when we are.  Looked for by referent routines
   to avoid recursive operation.")

(defun parse-into-examination-buffer (string
                                      &optional just-categories? )
  (let ((*display-word-stream* nil)
        (*parsing-into-examination-buffer* t)
        (*write-db-records-for-salient-objects* nil)
        (*display-salient-objects* nil))
    (analyze-text-from-string string))

  (initialize-examination-buffer)
  (dolist (tt (successive-treetops
               :from (position# 1)
               :to (position# *next-chart-position-to-scan*)))

    (unless (eq tt word::end-of-source)
      (setf (aref *examination-buffer*
                  *last-position-in-ex-buf*)
            (if just-categories?
              (etypecase tt
                (word tt)
                (edge (edge-category tt)))
              tt))

      (incf *last-position-in-ex-buf*))))


;;;----------------------
;;; examining the buffer
;;;----------------------

(defun contents-of-examination-buffer (&optional just-categories? )
  (let ( accumulator item )
    (dotimes (i *last-position-in-ex-buf*)
      (setq item (aref *examination-buffer* i))
      (push (if just-categories?
              (etypecase item
                (category item)
                (edge (edge-category item))
                (word item))
              item)
            accumulator))
    (nreverse accumulator)))

(defun contents-of-examination-buffer/c ()
  (contents-of-examination-buffer t))


(defun display/examination-buffer ()
  (pl (contents-of-examination-buffer)))

(defun number-of-constituents-in-examination-buffer ()
  *last-position-in-ex-buf*)


;;----- last constituent

(defun last-constituent/exb (&optional return-category? )
  ;; returns a category rather than a treetop
  (let ((last-constituent (aref *examination-buffer*
                                (1- *last-position-in-ex-buf*))))
    (if return-category?
      (etypecase last-constituent
        (category last-constituent)
        (edge (edge-category last-constituent))
        (word last-constituent))
      last-constituent)))

(defun last-constituent/exb/c ()
  (last-constituent/exb t))


;;----- first constituent

(defun first-constituent/exb (&optional return-category? )
  ;; returns a category rather than a treetop
  (let ((first-constituent (aref *examination-buffer* 0)))
    (if return-category?
      (etypecase first-constituent
        (category first-constituent)
        (edge (edge-category first-constituent))
        (word first-constituent))
      first-constituent)))

(defun first-constituent/exb/c ()
  (first-constituent/exb t))

