;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File:  "subcategorization"
;;;   Module:  /sparser/test/
;;;  Version:  November 2019

;;; Subcategorization frame inheritance tests.

(in-package :sparser)

(define-category subcat-test-1
  :specializes top
  :binds ((a top)
          (b top))
  :realization (:s a :o b)
  :documentation "Define subject and object variables.")

(define-category subcat-test-2
  :specializes subcat-test-1
  :realization (:s b :o a)
  :documentation "Switch subject and object variables.")

(define-category subcat-test-3
  :specializes subcat-test-2
  :binds ((c top)
          (d top))
  :realization (:to c :from d :with d)
  :documentation "Define some new patterns.")

(define-category subcat-test-4
  :specializes subcat-test-3
  :restrict ((d nil))
  :binds ((e top))
  :realization (:with e)
  :documentation "Augment with a new pattern and a new restriction.")

(define-category subcat-test-5
  :specializes subcat-test-4
  :documentation "Pure inheritance.")

(define-category subcat-test-6
  :specializes subcat-test-5
  :mixins (subcat-test-1)
  :documentation "Mix-in original subject and object.")

(defun subcat-pattern-var-name (label frame &aux
                                (label (etypecase label
                                         (keyword label)
                                         (string (resolve label)))))
  (let ((var (find-subcat-variable label frame)))
    (and (lambda-variable-p var) (var-name var))))

(rt:deftest (subcat subject object)
  (let ((frame-1 (get-subcategorization category::subcat-test-1))
        (frame-2 (get-subcategorization category::subcat-test-2)))
    (values (subcat-pattern-var-name :subject frame-1)
            (subcat-pattern-var-name :object frame-1)
            (subcat-pattern-var-name :subject frame-2)
            (subcat-pattern-var-name :object frame-2)))
  a
  b
  b
  a)

(rt:deftest (subcat local-restriction)
  (let* ((frame-4 (get-subcategorization category::subcat-test-4))
         (pattern (find-subcat-pattern (resolve "from") frame-4)))
    (values (var-name (subcat-variable pattern))
            (cat-name (subcat-restriction pattern))))
  ;; 11/12/19 ddm -- a restriction of nil (no restriction) is
  ;; reformulated as a restriction to top (anything).
  d
  top)

(rt:deftest (subcat inheritance)
  (let ((frame-6 (get-subcategorization category::subcat-test-6)))
    (values (subcat-pattern-var-name :subject frame-6)
            (subcat-pattern-var-name :object frame-6)
            (subcat-pattern-var-name "to" frame-6)
            (subcat-pattern-var-name "from" frame-6)
            (subcat-pattern-var-name "with" frame-6)))
  a
  b
  c
  d
  e)

(rt:deftest (subcat re-inheritance)
  (let ((frame-6 (get-subcategorization category::subcat-test-6)))
    (values (subcat-pattern-var-name "with" frame-6)
            (subcat-pattern-var-name "without" frame-6)
            (progn
              (fom-subcategorization category::subcat-test-4 "without" 'e)
              (subcat-pattern-var-name "without" frame-6))
            (subcat-pattern-var-name "with" frame-6)
            (progn
              (fom-subcategorization category::subcat-test-4 "with" 'e)
              (subcat-pattern-var-name "without" frame-6))
            (subcat-pattern-var-name "with" frame-6)))
  e
  nil
  e
  d
  nil
  e)
