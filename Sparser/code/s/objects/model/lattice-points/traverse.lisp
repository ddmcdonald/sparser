;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "traverse"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 August 2009

;; initiated 2/26/98. Extended through 7/7.
;; Work resumed 3/30/00, and again 2/05
;; 1.0 (8/6/09) Fan-out from reworked psi treatment. Not climbing anymore
;;  so not much left here.

(in-package :sparser)

;;;------
;;; walk
;;;------
#+ignore ;; short-circuited 7/09
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
  (let ((top-node (lp-top-lp node)))
    (lp-category top-node)))


(defun traverse-from-lattice-point-down-for (variable lp)
  ;; Called from find-self-node.
  (when (lp-down-pointers lp)
    (cdr (assq variable (lp-down-pointers lp)))))
  
