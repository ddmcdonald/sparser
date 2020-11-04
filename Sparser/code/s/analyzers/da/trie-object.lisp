;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "trie object"
;;;   Module:  "analyzers;DA:"
;;;  Version:  November 2020

;; initiated 5/5/95.  5/17 Initialized the 'anywhere' case

(in-package :sparser)


(defstruct (da-trie-data
            (:include unit)
            (:print-function print-trie-data-struct))

  uid
  table-of-first-labels
  table-of-labels-anywhere
  early
  )
            

(defun print-trie-data-struct (obj stream depth)
  (declare (ignore depth))
  (format stream "#<da-trie-data #~A>" (da-trie-data-uid obj)))


(defparameter *da-trie-data-count* 0)

(defparameter *da-trie* (make-da-trie-data
                         :uid (incf *da-trie-data-count*)
                         :table-of-first-labels (make-hash-table
                                                 :test #'eq)
                         :table-of-labels-anywhere (make-hash-table
                                                    :test #'eq)
                         :early nil))

(defparameter *early-da-trie* (make-da-trie-data
                               :uid (incf *da-trie-data-count*)
                               :table-of-first-labels (make-hash-table
                                                       :test #'eq)
                               :table-of-labels-anywhere (make-hash-table
                                                          :test #'eq)
                               :early t))



(defvar *make-early-da-rule* nil
  "Dynamically bound in the defining forms to specifiy the choice
   of trie on which to index a rule pattern")

(defun da-trie ()
  (declare (special *make-early-da-rule*))
  (if *make-early-da-rule*
    *da-trie*
    *early-da-trie*))

