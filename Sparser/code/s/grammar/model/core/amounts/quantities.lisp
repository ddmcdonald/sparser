;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "quantities"
;;;   module:  "model;core:amounts:"
;;;  Version:  November 1993

;; initiated 9/18/93 v2.3.  11/16 added form category to rule.

(in-package :sparser)

#|  A "quantity", like a number, is the answer to "how many"
    Quantities distribute exactly like numbers, including their composition
    to form measurements and their capacity as determiners.  |#

;;;--------
;;; object
;;;--------

(define-category  quantity
  :specializes nil
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:word name))


;;;------
;;; form
;;;------

#| We need a form because we have to add np-initiating brackets to these words |#

(defun define-quantity (string)
  (or (find-individual 'quantity :name string)
      (let ((q (define-individual 'quantity :name string))
            (word (word-named string)))

        (assign-bracket/expr word .[np )
        (assign-bracket/expr word ].phrase )

        (let ((cfr (car (get-tag-for :rules q))))
          (unless (cfr-p cfr)
            (break "expected the rule for this quantity to be ~
                    on the plist:~%~A~%" q))
          (setf (cfr-form cfr) category::det)
        
          q ))))

