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

(defmethod indiv-pattern ((e edge))
  (indiv-pattern (edge-referent e)))

(defmethod indiv-pattern ((indiv individual))
  (indiv-pattern-from-tree (semtree indiv nil)))

(defmethod indiv-pattern ((c referential-category))
  (indiv-pattern-from-tree (semtree c nil)))

(defmethod indiv-pattern ((c cons))
  (indiv-pattern-from-tree c))

(defun indiv-pattern-from-tree (tree)
  (declare (special tree))
  (let*
      ((ivar (this-var))
       (rule-elts
        (typecase (car tree)
          (individual
           (loop for c in (indiv-type (car tree))
             collect
             `(isa ,ivar
                   ,(intern (symbol-name (cat-symbol c))))))
          (referential-category 
           `((isa ,ivar
                  ,(intern (symbol-name (cat-symbol (car tree))))))))))
    (declare (special ivar rule-elts))
    
    (append rule-elts
	    (loop for binding in (cdr tree)
              append
              (let*
                  ((bval (second binding)))
                (typecase bval
                  (cons 
                   (let
                       ((bvar (next-var)))
                     `((slot-val ,(car binding)
                                 ,ivar
                                 ,bvar)
                       ,@(cond
                          ((individual-p (car bval))
                           (indiv-pattern-from-tree bval))
                          (t (indiv-pattern (car bval)))))))
                  (t
                   `((slot-val ,(car binding)
                               ,ivar
                               ,bval)))))))))
(defun next-var()
  (intern (format nil "?X~s" (incf *var-index*))
	  *package*))

(defun this-var()
  (intern (format nil "?X~s" *var-index*)
	  *package*))
	 
