;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "extensions"
;;;   Module:  "objects;model:categories:"
;;;  version:  

;; Initiated 10/24/13 to add extensions motivated by C3. 

(in-package :sparser)

(defun handle-variable-restrictions (category restrictions)
  (push-debug `(,category ,restrictions))
  ;; create the store
  ;; When the category is C, the restriction on variable V is R
)


(defun store-category-documentation (category documentation)
  ;; leave it on the floor for now
  category documentation)