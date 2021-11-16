;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2017 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "entities"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  October 2017

;; Initiated 12/3/15.

(in-package :mumble)

#| Table is defined in vocabulary.lisp as a Sparser category.|#
(defvar *the-table* (sp::make-an-individual 'sp::table))
(stipulate-to-be-unique *the-table*)

(defvar *the-shelf* (sp::make-an-individual 'sp::shelf))
(stipulate-to-be-unique *the-shelf*)

(defvar *numbered-blocks*
  (loop for block-number from 1 to 32
        as block-name = (format nil "B~d" block-number)
        as var-name = (format nil "*~a*" block-name)
        as var = (intern var-name :mumble)
        as block = (sp::define-individual 'sp::block/object :name block-name)
        do (proclaim `(special ,var))
           (set var block)
        collect block))

(defvar *the-two-blocks-he-put-down*
  (sp::make-an-individual 'sp::collection
                          :items (list *b1* *b2*)
                          :type (sp::category-named 'sp::collection)
                          :number 2))

(defvar *apparatus-blocks*
  (loop for corp in '("Adidas"
                      "BMW"
                      "BurgerKing"
                      "Coke"
                      "Esso"
                      "Heineken"
                      "HP"
                      "McDonalds"
                      "Mercedes"
                      "Nvidia"
                      "Pepsi"
                      "Shell"
                      "SRI"
                      "Starbucks"
                      "StellaArtois"
                      "Target"
                      "Texaco"
                      "Toyota"
                      "Twitter"
                      "UPS")
        as name = (format nil "the ~a block" corp)
        as block = (sp::define-individual 'sp::block/object :name name)
        do (setf (sp::indiv-id block) (intern (string-upcase corp) :keyword))
        collect block))

(defvar *all-blocks*
  (append *numbered-blocks* *apparatus-blocks*))

(defun block-id (obj)
  (sp::indiv-id obj))

(defun block-name (obj)
  (sp::pname (sp::value-of 'sp::name obj)))

(defun find-block (id)
  (find id *all-blocks*
        :key #'block-id
        :test #'equalp))

(defun find-block-named (name &aux
                         (name (etypecase name
                                 (integer (format nil "B~d" name))
                                 (symbol (string name))
                                 (string name))))
  (find name *all-blocks*
        :key #'block-name
        :test (lambda (x y) (search x y :test #'char-equal))))

;;--- linking across programs

(defvar *Krisp-Spire-keyword-correspondences*
  `((:the-table . ,*the-table*)
    (:b1 . ,*b1*)
    (:b2 . ,*b2*)
    (:b3 . ,*b3*)
    (:b4 . ,*b4*)
    (:b5 . ,*b5*)
    (:b6 . ,*b6*)
    (:b7 . ,*b7*)
    (:b8 . ,*b8*)
    (:b9 . ,*b9*)
    (:b10 . ,*b10*)
    (:b11 . ,*b11*)
    (:b12 . ,*b12*))
  "Keyword to Krisp interchange table")

(defun launder-sexp-to-dereference-keywords (sexp)
  "Every time we encounter a keyword symbol, see if it has
   a correspondence to a Krisp object in the table.
   If so, replace it with that object."
  (cond
   ((null sexp) nil)
   ((keywordp sexp)
    (let ((krisp-individual 
           (cdr (assoc sexp *Krisp-Spire-keyword-correspondences*
                       :test #'eq))))
      (or krisp-individual 
          sexp)))
   ((symbolp sexp) sexp)
   ((sp::individual-p sexp) sexp) ;; evaluate it twice
   ((consp sexp)
    (cons (launder-sexp-to-dereference-keywords (car sexp))
          (launder-sexp-to-dereference-keywords (cdr sexp))))
   (t
    (error "unexpected sexp: ~a" sexp))))


    
