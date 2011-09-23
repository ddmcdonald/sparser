;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "types of people"
;;;   Module:  "model;core:titles:"
;;;  version:  October 1994

;; initiated 10/13/94

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  type-of-person
  :specializes person
  :instantiates self
  :binds ((attributes . collection)
          (head))
  :index (:key attributes))

#| ugh /// the timing of when the collection is formed by this function
means that the individual will be created --and indexed-- before the
collection exists, so every one of them is going to form up on 'nil'.
  It should probably be done as a special-case index with the -real-
index process put off 'till the collection-forming routine runs.
Especially since these can compound into larger and larger collections
and should be re-indexed each time.    Obviously this would go better
if it was done as subtyping. |#


(defun assemble-attributes (left-item right-item)
  (let ((type-obj *referent*))
    (if (value-of 'head type-obj)
      (when *break-on-new-cases*
        (break "Stub: 1st case of a description with more than two elements"))
      (else
        ;; 1st time
        (bind-variable 'head right-item type-obj)
        (let ((attr-set (define-individual 'collection
                          :number 2
                          :type nil  ;; // need a category for 'anything'
                          :items (list left-item right-item))))
          (bind-variable 'attributes attr-set type-obj)
          type-obj )))))
        


(def-cfr  type-of-person ( age  title )
  :form adjp
  :referent (:instantiate-individual type-of-person
             :function assemble-attributes left-edge right-edge))
