;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "psi"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  0.0 March 1998

;; initiated 3/7/98.

(in-package :sparser)

;;;----------
;;; resource
;;;----------

(defun get-psi ()
  ;; just a stub
  (make-psi :id (gensym "P")))


;;;-------
;;; cases
;;;-------

(defun make-psi-with-just-a-type (category lattice-point)
  (let ((psi (get-psi)))
    (setf (psi-lattice-point psi) lattice-point)
    (setf (psi-type psi) (list category))
    (setf (psi-v+v psi) nil)
    (setf (psi-source psi) :top)
    psi ))

(defun make-psi-for-new-binding (parent lattice-point
                                 variable value)
  (let ((psi (get-psi))
        (v+v (make-v+v variable value)))
    (setf (psi-lattice-point psi) lattice-point)
    (setf (psi-type psi) lattice-point)
    (setf (psi-v+v psi) (cons v+v (psi-v+v parent)))
    (setf (psi-source psi) parent)
    (tr :made-new-psi psi)
    psi ))




;;;-------------
;;; find / make
;;;-------------

(defun find-or-make-psi (referent)
  (etypecase referent
    (referential-category
     (find-or-make-psi-for-base-category referent))
    (individual
     referent)))


(defun find-or-make-psi-for-base-category (c)
  (let* ((lattice-point (find-or-make-self-node c))
         (new? (null (lp-instance lattice-point)))
         (psi (if new?
                (make-psi-with-just-a-type c lattice-point)
                (lp-instance lattice-point))))
    (when new?
      (setf (lp-instance lattice-point) psi))
    (annotate-realization/base-case
     lattice-point *rule-being-interpreted*)
    (tr :found-or-made-psi psi)
    psi ))

