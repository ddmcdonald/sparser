;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project <elaborate>
;;;
;;;     File:  "atent-predicates"
;;;   Module:  "objects/doc/"
;;;  version:  May 2014

;; Initiated 5/8/14


(in-package :sparser)

;;;-------------------------------
;;; class to 'do' latent varibles
;;;-------------------------------

(defclass latents-wrapper (named-object)
  ;; name slot -- symbol derived from the individual
  ((item :initarg :item :accessor item
    :documentation "The object whose latent predicates
     we're wrapping. Typically an individual")
   (variables :initarg :vars :accessor latent-predicates
    :documentation "List of the variables from all of
     the item's supercategories")
   (categories :initarg :categories :accessor super-categories
    :documentation "List of all the item's supercategories"))
  (:documentation
   "Draft layout of the variables. Likely to change when we
    start accessing them."))

(setup-find-or-make 'latents-wrapper)


(defgeneric wrap-latent-predicates (entity)
  (:documentation "Identify (and cache) the variables of
    the entity (etc.) that provide latent predications."))

(defmethod wrap-latent-predicates ((i individual))
  (let* ((category (itype-of i))
         (supercs (super-categories-of category))
         (variables (collect-variables-from-supercs category))
         (index (indiv-id i))
         (name ;; used for accessing them
          (intern (string-append (cat-symbol category)
                                 "-" index)
                  (find-package :sparser))))
    (make-instance 'latents-wrapper
      :name name
      :vars variables
      :categories supercs)))


(defun collect-variables-from-supercs (c)
  (let ((supercs (or (get-tag-for :super-categories c)
                     (super-categories-of c))))
    (loop for sc in supercs ;; includes base category c
      append (cat-slots sc))))