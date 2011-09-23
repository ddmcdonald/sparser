;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "plural title"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  1.1  January 1991

;; 1.1  (1/24 v1.8)  Added operations over the composite

(in-package :CTI-source)


;;;--------
;;; object
;;;--------

(define-category plural-title)

(setf (cat-plist category::plural-title)
      (list :plural (category-named 'title)))

(defun plural-category? (c)
  (second (member :plural (cat-plist c))))


;;;-------------------------------
;;; operations over the composite
;;;-------------------------------

(defun last-item-in-plural (composite)
  (car (last composite)))

(defun replace/last-item-in-plural (composite replacement)
  (rplaca (last composite) replacement))


;;;----------------------
;;; rules and operations
;;;----------------------

;;------- "and president"

#| we don't actually define a rule for "and" title, because that would
put an edge over "and", which will foul up the driver for its traversal
rule. |#

(def-cfr title (title and/title)
  :form  NP
  :referent
     (:composite plural-title
                 left-edge right-edge))


(def-cfr job-event (job-event and/title)
  :form S
  :referent (:composite job-event+and-title
                        left-edge right-edge))







(defparameter *title+and/title_by-CA*
      (make-cfr :symbol :title+and/title_by-CA
                :category category::title
                :rhs `(,category::title ,category::and/title)
                :referent `(:composite ,category::plural-title
                                       left-edge right-edge)))


;;------ "president and CEO"

(defun compose-set-of-titles (original rest)
  (break "somebody is calling Compose-set-of-titles -- this rule ~
          shouldn't fire.")
  (ecase (category-of rest)
    (title
     (ecase (category-of original)
       (title
        (assemble-composite (category-named 'plural-title)
                            original rest))
       (category::title+status
        (replace/title_in_title+status
         original
         (assemble-composite (category-named 'plural-title)
                             (find/title_in_title+status original)
                             rest)))
       (category::title+company
        (replace/title_in_title+company original rest))
       ))))

