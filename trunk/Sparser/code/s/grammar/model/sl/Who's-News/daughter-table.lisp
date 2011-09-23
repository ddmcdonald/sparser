;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "daughter table"
;;;   Module:  "model;sl:whos news:"
;;;  version:  February 1991      system version 1.8.1

(in-package :CTI-source)



(defparameter *daughter-table/right*
              `((,category::job-event
                 . (,category::title
                    ))
                ))


(defun possible-daughter-categories/right (edge)
  (let ((daughters
         (daughter-table/right (edge-category edge))))
    daughters))

(defun daughter-table/right (category)
  (cdr (assoc category *daughter-table/right*)))

