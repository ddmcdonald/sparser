;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "generalize"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  February 2017

;; initiated 2/15/27

(in-package :sparser)

;;; driver

(defgeneric interpretation-has-something-to-generalize? (interp)
  (:documentation "In the early stages of this effort there
  will only be some things that could geenralize. This says
  whether there is one of them in this interpretation.")
  (:method ((s sentence))
    (let* ((contents (contents s))
           (candidates (sentence-individuals contents)))
      (some #'canonical-category-for candidates))))


;;; data

(defparameter *category-to-canonical-category* (make-hash-table)
  "Maps from categories to their generalization if there
 is one.")

(defgeneric canonical-category-for (item)
  (:documentation "Does this item have a defined canonical
  version? The table is defined over categories, but
  we usually have individuals. Note that other operation
  are probably necessary, hopefully as extensions of these
  methods.")
  (:method ((name symbol))
    (canonical-category-for (category-named name :error)))
  (:method ((i individual))
    (canonical-category-for (itype-of i)))
  (:method ((c category))
    (let ((cc (gethash c *category-to-canonical-category*)))
      (when cc
        (values c cc)))))

(defgeneric define-canonical-category (name)
  (:documentation "All of the subcategories of this category
    should be generalized to it.")
  (:method ((name symbol))
    (define-canonical-category (category-named name :error)))
  (:method ((canonical referential-category))
    (loop for c in (subcategories-of canonical)
       do (setf (gethash c *category-to-canonical-category*)
                canonical))))

