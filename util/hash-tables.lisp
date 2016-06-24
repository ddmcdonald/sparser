;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: DDM-UTIL -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :ddm-util)

(defun all-hash-keys (hash-table &aux keys)
  "Return a list of the keys in a hash table."
  (maphash (lambda (key val)
             (declare (ignore val))
             (push key keys))
           hash-table)
  keys)

(defun all-hash-vals (hash-table &aux vals)
  "Return a list of the values in a hash table."
  (maphash (lambda (key val)
             (declare (ignore key))
             (push val vals))
           hash-table)
  vals)

(defun hashtable-to-alist (hash-table &aux alist)
  (maphash (lambda (key val)
             (push (cons key val) alist))
           hash-table)
  alist)

(defun hash-counts (hash-table &aux counts)
  "Return an alist of (KEY . LENGTH) pairs for a sequence-valued hash table."
  (maphash (lambda (key val)
             (push (cons key (length val)) counts))
           hash-table)
  counts)

(defun copy-hash-table (hash-table &aux
                        (copy (make-hash-table
                               :test (hash-table-test hash-table)
                               :size (hash-table-size hash-table)
                               :rehash-size (hash-table-rehash-size hash-table)
                               :rehash-threshold (hash-table-rehash-threshold hash-table))))
  (maphash (lambda (key val)
             (setf (gethash key copy) val))
           hash-table)
  copy)
