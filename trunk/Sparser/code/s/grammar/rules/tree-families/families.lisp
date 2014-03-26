;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "families"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  February 2014

;; Initiated 2/6/14. Augment the realization options of shortcuts

(in-package :sparser)

;;;-----------
;;; structure
;;;-----------

(defvar *name-to-family-of-trees* (make-hash-table))

(defun get-family-of-trees (name)
  (gethash name *name-to-family-of-trees*))


(defclass family-of-trees (named-object)
  ((root-labels :accessor tf-roots
    :documentation "The labels on the root nodes of trees,
      usually maximal categories that have an obvious correspondence
      in the upper ontology. No duplications. 
      Most important category first. It dictates the default
      supercategory of the category generator.")
   (word-parameters :accessor tf-word-parameters
    :documentation "The substitution parameters for words
      in the mappings.")
   (parameter-default-pairs :accessor tf-parameter-pairs
    :documentation "An alist of the parameters with their defaults,
      i.e. the names of the referential categories in the mappings.")
   (label-default-pairs :accessor tf-label-pairs
    :documentation "An alist of the labels with their defaults,
      i.e. the names of the form categories in the mappings.") ; 
   (family-mapping-fn-pairs :accessor family-mapping-fn-pairs
    :documentation "For now just the raw etf and mapping plist")
)
  (:documentation "Fundamentally just a list of rspecs: tree-family
    and mapping combination."))


(defmacro define-family-of-trees (name  &rest keys)
  `(define-family-of-trees/expr ',name ',keys))

(defun define-family-of-trees/expr (name keys)
  (apply #'construct-family-of-trees name keys))
;;(quote-every-second-one keys)

(defun construct-family-of-trees (name
                                  &key words
                                       parameter-defaults
                                       ((:families eft-and-mapping)))                                       
  (let ((family (or (get-family-of-trees name)
                    (let ((new (make-instance 'family-of-trees
                                 :name name)))
                      (setf (gethash name *name-to-family-of-trees*) new)
                      new))))    
    ;;/// parameter validity checking -- e.g. that there are words
    (setf (tf-word-parameters family) words)
    (let ( roots  parameter-pairs  label-pairs family-pairs )
      (dolist (list eft-and-mapping)
        (let* ((etf-name (car list))
               (etf (exploded-tree-family-named etf-name))
               (mapping (cdr list)))
          (unless etf
            (error "There is no ETF named ~a" etf-name))
          (let ((parameters (etf-parameters etf))
                (labels (etf-labels etf)))
            (pushnew (first labels) roots)
            (dolist (pair mapping)
              (cond
               ((memq (car pair) parameters)
                (push pair parameter-pairs))
               ((memq (car pair) labels)
                (push pair label-pairs))
               (t (push-debug `(,pair ,etf))
                  (error "mapping pair doesn't make sense: ~a" pair)))))
          (push `(,etf ,@mapping) family-pairs)))
      (setf (tf-roots family) (nreverse roots))
      (setf (tf-parameter-pairs family) (nreverse parameter-pairs))
      (setf (tf-label-pairs family) (nreverse label-pairs))
      (setf (family-mapping-fn-pairs family) (nreverse family-pairs)))
    family))


;;;-------
;;; cases 
;;;-------

(define-family-of-trees intransitive
  :words (main-verb)
  :families ((intransitive
	      (s . event)
              (vp . event)
              (np/subject . individual)
              (agent . subject))))

#|
(define-family-of-trees transitive/pasive/nominalized (s np)
  :words (main-verb common-noun)
  :parameters (agent patient  of-item result-type)
  :labels (s vp vg np/subject np/object  np base-np complement)
  :families ((:tree-family transitive/passive
              :mapping ((agent . by-whom)
                        (patient . who)
                        (s . :self)
                        (vp . :self)
                        (vg . :self)
                        (np/subject . person)
                        (np/object . person))
              :main-verb "assassinate")
             (:tree-family empty-head-of-complement
              :mapping ((result-type . :self)
                        (of-item . who)
                        (base-np . :self)
                        (complement . person)
                        (np . :self))
              :common-noun "assassination")))
|#
