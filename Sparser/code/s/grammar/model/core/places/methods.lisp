;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "methods"
;;;   Module:  "model;core:places:"
;;;  version:  November 2016

;; broken out from operators 11/18/16

(in-package :sparser)
 
;;--- grammar rules

(defmacro with-subcat-test (&body body)
  `(progn
     (if *subcat-test* ;;//// bound in rules/syntax/syntax-functions.lisp
       t               ;; which won't be loaded yet. Move it higher.
       ,@body)))


(def-k-method compose ((np has-location) (pp location))  
  ;; Called by interpret-pp-adjunct-to-np for
  ;; e.g. "the block on the table:
  (with-subcat-test
    (let ((i (bind-variable 'location pp np)))
      i)))

(def-k-method compose ((operator spatial-operator) (place endurant))
  ;; Designed for phrases like "on the table"
  (with-subcat-test
    (let ((i (find-or-make-individual 'relative-location
                                      :prep operator
                                      :ground place)))
      (revise-parent-edge :category (category-named 'location))
      i)))

(def-k-method compose ((qualifier direction) (head dependent-location))
  ;; as in "the left side of ...". We get that in noun-noun-compound
  (with-subcat-test
    (let ((i (find-or-make-individual 'orientation-dependent-location
                                      :prep qualifier
                                      :ground head)))
      (revise-parent-edge :category (category-named 'location))
      i)))
  

(defun add-dependent-location (operator head)
  "Called in noun-noun-compound when the qualifier ('operator')
   is a dependent-location such as 'bottom' or 'end'."
  (bind-variable 'location operator head))
#|     Too confusing for the generator since it only has the one
       realization pattern which presupposes the ground variable
   We make an instance of object-dependent-location that is
   open in the value for its ground variable (which eventually
   will be bound when we get a pp complement like 'of the row'),
   and make that the value of the location variable of the head.
   Returns the head to be the referent of the edge."
  (let ((i (find-or-make-individual 'object-dependent-location
                                    :prep operator)))
    (setq head (bind-variable 'location i head))
    head)) |#
