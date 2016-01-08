;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "trie object"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  5/17 Initialized the 'anywhere' case

(in-package :sparser)


(defstruct (da-trie-data
            (:include unit)
            (:print-function print-trie-data-struct))

  uid
  table-of-first-labels
  table-of-labels-anywhere
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
                                                    :test #'eq)))

