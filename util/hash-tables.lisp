;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package: DDM-UTIL -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :ddm-util)

(defun all-hash-keys (ht)
  "Return a list of the keys in a hash table."
  (let ((keys nil))
    (maphash #'(lambda (key val)
                 (declare (ignore val))
                 (push key keys))
             ht)
    keys))

(defun all-hash-vals (ht)
  "Return a list of the values in a hash table."
  (let ((vals nil))
    (maphash #'(lambda (key val)
                 (declare (ignore key))
                 (push val vals))
             ht)
    vals))

(defun hash-counts (ht)
  "Return a list of (KEY LENGTH) pairs for a sequence-valued hash table."
  (let ((counts nil))
    (maphash #'(lambda (key val)
                 (push `(,key ,(length val)) counts))
             ht)
    counts))
