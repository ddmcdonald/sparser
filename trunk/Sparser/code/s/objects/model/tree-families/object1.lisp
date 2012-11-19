;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998,2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  1.1 November 2012

;; initiated 8/4/92. Added accumulator list and description field 2/22/95.
;; Added type field 3/7.  Tweeked def routine 4/27
;; 1.0 (12/6/97) Added a structure for schematic-rules ('cases').
;;     (2/14/98) debugged the find routine for them and did the printer.
;;     (5/5) added tree-family to schematic-rule.
;; 1.1 (6/17/09) added 'form' field to schematic-rule structure
;;     (11/13/12) added pretty-schr-as-string

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (exploded-tree-family
            (:conc-name #:etf-)
            (:print-function print-tree-family-structure))

  name        ;; a symbol

  type        ;; a keyword. One of { :mixin :user-instantiable }

  parameters  ;; list of symbols used in the rule schema. Substituted
              ;; against by the rdata.  These are the generic names of
              ;; slots in the rules

  labels      ;; ditto. They are the names of the categories in the rules.

  cases       ;; an alist of rule schema by (loosely) the grammatical
              ;; relation involved.

  description ;; a string that helps people using the workbench decide
              ;; whether they should use this TF

  )


(defstruct (schematic-rule
            (:conc-name #:schr-)
            (:print-function print-schematic-rule-structures))

  relation

  lhs

  rhs

  referent

  descriptors

  original-expression

  tree-family

  form  

  )


;;;----------
;;; printers
;;;----------

(defun print-tree-family-structure (tf stream depth)
  (declare (ignore depth))
  (write-string "#<etf " stream)
  (write-string (symbol-name (etf-name tf)) stream)
  (write-string ">" stream))

(defun print-schematic-rule-structures (schr stream depth)
  (declare (ignore depth))
  (write-string "#<schr " stream)
  (pretty-print-schr schr stream)
  (write-string ">" stream))



;;;----------
;;; indexing
;;;----------

(defparameter *tree-families-defined* nil)

(defparameter *symbol-to-exploded-tree-family* (make-hash-table))

(defun exploded-tree-family-named (symbol)
  (gethash symbol *symbol-to-exploded-tree-family*))

(defun delete/exploded-tree-family (etf)
  (remhash (etf-name etf)
           *symbol-to-exploded-tree-family*))

(defun find-or-make/exploded-tree-family (symbol)
  (let ((etf (exploded-tree-family-named symbol)))
    (unless etf
      (setq etf (make-exploded-tree-family :name symbol))
      (setf (gethash symbol *symbol-to-exploded-tree-family*)
            etf))
    (unless (member etf *tree-families-defined*)
      (push etf *tree-families-defined*))
    etf ))



(defun find-or-make-schematic-rule (tree-family relation lhs decoded-rhs)
  (let ((cases (etf-cases tree-family))
        cases-with-that-relation  cases-with-that-lhs )
    (if (null cases)
      (make-schematic-rule)
      (else
        (dolist (case cases)
          (when (eq (schr-relation case) relation)
            (push case cases-with-that-relation)))

        (if (null cases-with-that-relation)
          (make-schematic-rule)
          (else
            (dolist (case cases-with-that-relation)
              (when (eq (schr-lhs case) lhs)
                (push case cases-with-that-lhs)))

            (if (null cases-with-that-lhs)
              (make-schematic-rule)
              (else
                (dolist (schr cases-with-that-lhs)
                  (if (not (= (length (schr-rhs schr)) (length decoded-rhs)))
                    (make-schematic-rule)
                    (else
                      (if (equal (schr-rhs schr) decoded-rhs)
                        (return schr)
                        (make-schematic-rule)))))))))))))


(defun pretty-print-schr (schr stream)
  (if (keywordp schr) ;; :digit-based-number
    (format stream "~s" schr)
    (else
     (princ-rule-term (schr-lhs schr) stream)
     (write-string " -> " stream)
     (dolist (term (schr-rhs schr))
       (princ-rule-term term stream)
       (write-string " " stream)))))

(defun pretty-schr-as-string (schr)
  (with-output-to-string (stream)
    (pretty-print-schr schr stream)))
  
