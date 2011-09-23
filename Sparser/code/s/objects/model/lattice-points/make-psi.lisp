;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "make psi"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  July 1998

;; initiated 3/7/98.
;; Split off the find routines and changed the name from "psi" 7/29/98

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


(defun make/psi (type binding-instructions)
  ;; called from Make/individual and (eventually) subject to
  ;; bindings sited there and above. 
  (multiple-value-bind (variables variable-value-pairs)
                       (variables-in-variable-value-plist
                        binding-instructions)
    (make-psi-for-bindings type variables variable-value-pairs)))


(defun make-psi-for-bindings (type variables variable-value-pairs)
  ;; No psi with this set of variables and values exists
  ;; so we have to construct it. But a psi that has some of the
  ;; needed bindings may exist, so we need to try to find it
  ;; before we start making extensions.
  (let ((starting-psi
         (find-psi-with-the-most-bindings
          type variables variable-value-pairs)))
    
))

