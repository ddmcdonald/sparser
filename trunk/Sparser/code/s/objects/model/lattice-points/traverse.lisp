;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "traverse"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  February 2005

;; initiated 2/26/98. Extended through 7/7.
;; Work resumed 3/30/00, and again 2/05

(in-package :sparser)

;;;------
;;; walk
;;;------

(defun climb-lattice-to-top (node)
  ;; All the paths upwards are equal in length, so we just
  ;; walk up the left branch. 
  (if (typep node 'top-lattice-point)
    node
    (let* ((parent/s (lp-upward-pointers node)))
      (unless parent/s
        (error "ill-formed lattice-point. It's not the top ~
                ~%but it doesn't have parents:~%  ~a" node))
      (climb-lattice-to-top (car parent/s)))))


(defun category-lattice-node-belongs-to (node)
  (let ((top-node (climb-lattice-to-top node)))
    (lp-category top-node)))


(defun traverse-from-lattice-point-down-for (variable lp)
  ;; Called from Find-self-node.
  (when (lp-down-pointers lp)
    (cdr (assq variable (lp-down-pointers lp)))))
  
