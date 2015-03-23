;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:bindings:"
;;;  version:  August 1994

;; broken out from [object] file 8/12/94
;; 3/21/2015 SBCL-based tuning work -- trying to find out where we are over-using variable binding to
;;  get indexing -- commented out over-write of binding-body do keep track of which variables are 
;;  drastically over-used (such as the variable category) to see about
;;  how to do the job better

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (binding
            (:include unit)
            (:print-function print-binding-structure))

  variable
  value
  body
  id
  )

#|
(setf (symbol-function 'bbinding-body)(symbol-function 'binding-body))
(defparameter *binding-vars* (make-hash-table :size 10000))
(defun binding-body (binding)
  (if (null (gethash (binding-variable binding) *binding-vars*))
      (setf (gethash (binding-variable binding) *binding-vars*) 1)
      (incf (gethash (binding-variable binding) *binding-vars*)))
  (if
   (eq (var-name (binding-variable binding)) 'prep)
   (break "prep"))
  (bbinding-body binding))
|#
