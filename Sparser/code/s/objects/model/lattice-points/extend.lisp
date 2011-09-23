;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "extend"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  July 1998

;; initiated 11/29/97. First given any content 7/7/98

(in-package :sparser)

;;;-----------
;;; find/make
;;;-----------

;; Find a pre-existing lattice-point with the indicated variables

(defun node-with-variables? (list-of-variables top-lp)
  ;; Reads the index
  (let ((number-of-variables-bound (length list-of-variables))
        (candidate-nodes (cdr (assoc (first list-of-variables)
                                     (lp-index-by-variable top-lp)))))
    (when candidate-nodes
      (dolist (node candidate-nodes)
        (when (= number-of-variables-bound
                 (length (lp-variables-bound node)))
          (when (null (set-difference list-of-variables
                                      (lp-variables-bound node)
                                      :test #'eq))
            (return node)))))))


;; If it doesn't exist, make it

(defun category-p (unit)
  (or (typep unit 'mixin-category)
      (typep unit 'referential-category)
      (typep unit 'model-category)
      (typep unit 'category)))


(defun find-lattice-point-with-variables (type variables)
  (node-with-variables? variables type))

(defun find-most-extended-lattice-point-for-variables (type variables)
  (let ((top-lp (cat-lattice-position type))
        (category (some #'category-p variables)))

    (unless category
      ;; we always start with the category lattice point
      ;; (a 'self' node). The only question is whether
      ;; that was one of the variables.
      (setq variables (cons category variables)))

    (let ((candidate-lattice-points
           (cdr (assq category (lp-index-by-variable top-lp)))))
      
      (multiple-value-bind (farthest-lp-point-down
                            remaining-variables)
                           (m&m-lp-find candidate-lattice-points
                                            variables)
        (values farthest-lp-point-down
                remaining-variables)))))
#|
            (if (null remaining-variables)
              next-starting-point-down

              (let ((lp next-starting-point-down))
                (dolist (var remaining-variables)
                  (setq lp (new-lattice-point lp var)))
                lp ))  |#


(defun m&m-lp-find (candidates variables)
  ;; Try every combination and length to find the lp among the
  ;; candidates that includes the greatest number of those variables
  (break "only a stub")
  (let ((count (length variables)))
    (let ((nodes-of-the-right-length
           (mapcar #'(lambda (lp)
                       (= (length (lp-variables-bound lp)) count))
                   candidates)))
      (dolist (lp nodes-of-the-right-length)
        (when (binds-all-these-variables lp variables)
          (return lp))))))



(defun binds-all-these-variables (lp variables)
  (null (set-difference
         variables (lp-variables-bound lp) :test #'eq)))


