;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-1999 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "find"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 August 2009

;; initiated 9/12/98. Tweaked the names in the calling structure 2/14/99.
;; 1.0 (8/6/09) Make-over with more of the lifting on the psi, less on the lp

;;;-------------------------------------
;;; Look for the whole set of variables
;;;-------------------------------------

(defun find-lattice-point-with-variables (type variables)
  ;; Just looks up and vets the lattice-point then calls the common continuation.
  (break "find-lattice-point-with-variables")
  (let ((top-lp (cat-lattice-position type)))
    (unless (and top-lp
                 (typep top-lp 'top-lattice-point))
      (break "The lattice-position field of ~a is empty ~
              or of the wrong type" type))
    (find-lattice-point-with-variables1 variables top-lp)))

(defun node-with-variables? (variables top-lp)
  (break "who's calling this -- change the name to Find-lattice-point-with-variables1")
  (find-lattice-point-with-variables1 variables top-lp))

(defun find-lattice-point-with-variables1 (list-of-variables starting-lp)
  ;; Find a pre-existing lattice-point with the indicated variables
  ;; Reads the index
  (let* ((number-of-variables-bound (length list-of-variables))
         (top-lp (lp-top-lp starting-lp))
         (candidate-nodes (cdr (assoc number-of-variables-bound
				      (lp-subnodes top-lp)))))
    (when candidate-nodes
      (dolist (node candidate-nodes)
	(when (null (set-difference list-of-variables
				    (lp-variables-bound node)
				    :test #'eq))
	  (return node))))))



;;;--------------------------
;;; Look for the most so far
;;;--------------------------

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
    
