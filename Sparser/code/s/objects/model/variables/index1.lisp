;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:variables:"
;;;  version:  1.4 July 1994  5

;; initiated 11/18/91 v2.1, typo 11/24
;; 1.1 (7/92 v2.3) shifted from gl entries to straight categories
;; 1.2 (6/2/93) fixed missing case in find/lambda-variable.
;; 1.3 (8/5/94) wrote Next-variable-id as value of the :lattice-site field
;; 1.4 (7/7/95) added superc check to Find-variable-for-category

(in-package :sparser)

;;;----------
;;; indexing 
;;;----------

#|  Variables are distinguished first by their name and then by their
 value restriction.  If the name is unique it suffices, otherwise there
 is a second key by the value restriction.  |#


(defparameter *name-to-variable-index*
              (make-hash-table :test #'eq)
  "Takes symbols as names and maps them to a single lambda variable
   or a list of variables that vary in their value restriction.")


(defun index/lambda-variable (symbol restriction variable)
  (declare (ignore restriction))
  ;; assume that the threading is good and we won't be adding a variable
  ;; to this entry if one with the same restriction is already there.
  (let ((table-entry (gethash symbol *name-to-variable-index*)))
    (setf (gethash symbol *name-to-variable-index*)
          (if table-entry
            (if (listp table-entry)
              (push variable table-entry)
              (list variable table-entry))
            variable))))


;;;---------
;;; finding
;;;---------

(defun find/lambda-variable  (symbol restriction)
  (let ((table-entry (gethash symbol *name-to-variable-index*)))
    (if table-entry
      (if (listp table-entry)
        (find/lambda-variable/name->restriction
         table-entry restriction)
        (else
          (let ((existing-restriction (var-value-restriction table-entry)))
            (if (eq existing-restriction restriction)
              table-entry
              nil))))
      nil)))

;; subroutine
(defun find/lambda-variable/name->restriction (table-entry restriction)
  (dolist (v table-entry nil)
    (when (equal restriction (var-value-restriction v))
      (return-from find/lambda-variable/name->restriction v))))



(defun lambda-variable-named (symbol)
  (unless (symbolp symbol)
    (error "The argument to Lambda-variable-named must be a symbol.~
            ~%It was passed ~A" symbol))
  (let ((table-entry (gethash symbol *name-to-variable-index*)))
    (if table-entry
      (if (listp table-entry)
        (cons :different-value-restrictions table-entry)
        table-entry)
      nil)))


(defun find-variable-for-category (variable-name category)
  (unless (referential-category-p category)
    (error "The category argument should be of that type.~
            ~%  ~A is of type ~A" category (type-of category)))

  (let ((variables (cat-slots category)))
    (if variables
      (find variable-name variables :key #'var-name )
      (super-category-has-variable-named variable-name category))))



;;;--------------------
;;; internal Make form
;;;--------------------

(defparameter *number-of-lambda-variables-defined* 0)

(defun next-variable-id ()
  (incf *number-of-lambda-variables-defined*))

(defun install-lambda-variable/global (name-symbol restriction category)
  (let ((v (find/lambda-variable name-symbol restriction)))
    (if v
      (let ((sites (var-binding-sites v)))
        (unless (member category sites)  ;; redefinition
          (push category (var-binding-sites v))))

      (setq v (make-lambda-variable
               :name  name-symbol
               :value-restriction  restriction
               :lattice-position (next-variable-id)
                   ;; this field not implemented yet, this is just
                   ;; a convenient place for the id#
               :binding-sites `(,category)
               )))
            
    (index/lambda-variable name-symbol restriction v)
    v ))

