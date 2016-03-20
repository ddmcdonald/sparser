;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "entities"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  February 2016

;; Initiated 12/3/15.

(in-package :mumble)

#| Table is defined in vocabulary.lisp as a Sparser category.|#
(defvar *the-table* (sp::define-individual 'sp::table))

(stipulate-to-be-unique *the-table*)

(defvar *b1* (sp::define-individual 'sp::block :name "B1"))
(defvar *b2* (sp::define-individual 'sp::block :name "B2"))
(defvar *b3* (sp::define-individual 'sp::block :name "B3"))
(defvar *b4* (sp::define-individual 'sp::block :name "B4"))
(defvar *b5* (sp::define-individual 'sp::block :name "B5"))
(defvar *b6* (sp::define-individual 'sp::block :name "B6"))
(defvar *b7* (sp::define-individual 'sp::block :name "B7"))
(defvar *b8* (sp::define-individual 'sp::block :name "B8"))
(defvar *b9* (sp::define-individual 'sp::block :name "B9"))
(defvar *b10* (sp::define-individual 'sp::block :name "B10"))
(defvar *b11* (sp::define-individual 'sp::block :name "B11"))
(defvar *b12* (sp::define-individual 'sp::block :name "B12"))

(defvar *the-two-blocks-he-put-down*
  (sp::define-individual 'sp::collection
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
        as block = (sp::define-individual 'sp::block
                       :name (format nil "the ~a block" corp))
        do (setf (sp::indiv-id block) (intern (string-upcase corp) :keyword))
        collect block))

(defvar *all-blocks*
  (append (list *b1* *b2* *b3* *b4* *b5* *b6* *b7* *b8* *b9* *b10* *b11* *b12*)
          *apparatus-blocks*))

(defun block-id (obj)
  (sp::indiv-id obj))

(defun block-name (obj)
  (sp::pname-for (sp::value-of 'sp::name obj)))

(defun find-block (id)
  (find id *all-blocks*
        :key #'block-id
        :test #'equalp))

(defun find-block-named (name)
  (find (string name) *all-blocks*
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


    
