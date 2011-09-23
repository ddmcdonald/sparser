;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id: trace-function.lisp 270 2009-08-25 21:28:39Z dmcdonal $
;;; 
;;;     File:  "trace function"
;;;   Module:  "objects;traces:"
;;;  Version:  0.2 February 2009

;; initiated 9/13/92 v2.3
;; 0.1 (4/23/93) added Trace-msg/ad-lib
;; 0.2 (1/5/05) Added exports. 2/4/07 added tracing-keyword?
;; 0.3 (8/24/09) Lowercased the prefix on the generated function

(in-package :sparser)

(export '(deftrace tr trace-msg def-trace-parameter) :sparser)

;;;-------
;;; table
;;;-------

(defparameter *trace-keyword-to-function* (make-hash-table))

(defun tracing-keyword? (keyword)
  (when (keywordp keyword)
    (gethash keyword *trace-keyword-to-function*)))
(defun trace-keyword? (keyword)
  (tracing-keyword? keyword))

;;;----------
;;; def form
;;;----------

(defmacro deftrace (keyword  arguments &body body)
  `(deftrace/expr ,keyword ',arguments ',body))
(export 'deftrace)

(defun deftrace/expr (keyword arguments body)
  (let* ((fn-exp
          `(defun ,(intern (concatenate 'string
                                        "trace-"
                                        (symbol-name keyword))
                           (find-package :sparser))
                  ,arguments
             ,@body ))
         
         (fn (eval fn-exp)))
    
    (setf (gethash keyword *trace-keyword-to-function*)
          fn)))


;;;------------------------
;;; the call from the code
;;;------------------------

(defmacro tr (keyword  &rest arguments)
  `(tr/expr ,keyword ,@arguments))

(export 'tr)

(defun tr/expr (keyword  &rest arguments)
  (when *trace-the-trace-calls*
    (format t "~&tr: ~a~%" keyword))
  (let ((fn (gethash keyword *trace-keyword-to-function*)))
    (unless fn
      (error "The trace function for ~A is undefined" keyword))
    (apply fn arguments)
    :trace ))


;;;-------------------
;;; the runtime shell
;;;-------------------

(defparameter *trace-stream* *standard-output*)

(defun trace-msg (string &rest arguments)
  (let ((doctored-string (concatenate 'string
                                      "~&"
                                      string
                                      "~%")))
    (apply #'format *trace-stream*
           doctored-string arguments))) ;(break))

(export 'trace-msg)

(defun trace-msg/ad-lib (string &rest arguments)
  ;; leaves the introduction of newlines to the caller who
  ;; needs more than one call to organize the output.
  (apply #'format *trace-stream*
           string arguments))


;;;-----------------------------------
;;; parameters controlling the traces
;;;-----------------------------------

(defmacro def-trace-parameter (symbol string documentation)
  `(def-trace-parameter/expr ',symbol ,string ,documentation))

(defun def-trace-parameter/expr (symbol string documentation)
  (declare (ignore string)) ;;//////// goes on menu
  (let* ((form
          `(defparameter ,symbol nil ,documentation)))
    (eval form)))
