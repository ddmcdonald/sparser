;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2000-2001 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "make psi"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  March 2001

;; initiated 6/21/00. Added subtype-lattice-point to get-lp dispatch 3/4/01

(in-package :sparser)

;;;----------
;;; resource
;;;----------

;; Lattice points are permanent, but for debugging and trivial access
;; they get indicies not unlike what they'd have in a resource.

(defparameter *indexes-to-lp* (make-hash-table))

(defparameter *lp-count* 0)

(defun index-lp (lp)
  (setf (gethash (lp-index lp) *indexes-to-lp*) lp))

(defun lp# (index)
  (if (> index *lp-count*)
    (format t "There are not lattice-points indexed higher than ~a" *lp-count*)
    (gethash index *indexes-to-lp*)))

(defun get-lp (type &rest tag-value-plist)
  (let* ((pairs (cons :index
                      (cons (incf *lp-count*)
                            tag-value-plist)))
         (lp
          (ecase type
            (lattice-point (apply #'make-lattice-point pairs))
            (psi-lattice-point (apply #'make-psi-lattice-point pairs))
            (self-lattice-point (apply #'make-self-lattice-point pairs))
            (top-lattice-point (apply #'make-top-lattice-point pairs))
            (subtype-lattice-point (apply #'make-subtype-lattice-point pairs)))))

    (index-lp lp)
    lp))
    

