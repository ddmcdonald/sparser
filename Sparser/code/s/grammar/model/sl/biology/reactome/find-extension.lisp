;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 Rusty BObrow -- all rights reserved
;;;
;;;      File:   "find-extension"
;;;    Module:   extensional
;;;   Version:   May 2015

;; Routines for  finding elements in the Biopax/Reactome kb that "match" an individual which is
;;  the referent of a parser edge

(in-package :sparser)

(defparameter *var-index* 0)

(defmethod indiv-pattern ((indiv individual))
  (indiv-pattern-from-tree (semtree indiv)))

(defmethod indiv-pattern ((c cons))
  (indiv-pattern-from-tree c))

(defun indiv-pattern-from-tree (tree)
  (let*
      ((ivar (next-var))
       (rule-elts
	(loop for c in (indiv-type (car tree))
          collect
          `(isa ,ivar
                ,(symbol-name (cat-symbol c))))))
    (append rule-elts
	    (loop for binding in (cdr tree)
              append
              (let*
                  ((bval (second binding))
                   (bvar
                    (typecase bval
                      (cons (next-var))
                      (t bval))))
                `((slot-val ,(car binding)
                            ,ivar
                            ,bvar)
                  ,@(when (consp bval)
                      (indiv-pattern-from-tree bval))))))))

(defun next-var()
  (intern (format nil "?X~s" (incf *var-index*))
	  *package*))
	 
