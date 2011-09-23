;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:psi:"
;;;  version:  0.2 March 2007

;; initiated 3/7/98.
;; Split off the find routines and changed the name from "psi" 7/29/98.
;; Started elaborating carefully 9/12, continued 1/25/99. Adding traces
;; 5/18 and hacked the stub creator to include flag for the benefit of
;; prining. 
;; 0.1 (6/21) Added a resouce-stub. No reclaimation as yet.
;;  (2/7/05) cleaned up Make/psi.
;; 0.2 (3/19/07) Added special: *force-new-psi* to handle the case where
;;      an identical description in fact denoted a different individual.

(in-package :sparser)

;;;----------
;;; resource
;;;----------

(defparameter *indexes-to-psi* (make-hash-table))

(defparameter *psi-count* 0)

(defun clear-psi-resource ()
  (setq *indexes-to-psi* (make-hash-table)
        *psi-count* 0))

(defun index-psi (index psi)
  (setf (gethash index *indexes-to-psi*) psi))

(defun psi# (index)
  (if (> index *psi-count*)
    (format t "There are no psi indexed higher than ~a" *psi-count*)
    (gethash index *indexes-to-psi*)))

(defun get-psi ()
  ;; just a stub for a real resouce since it doesn't have a recyling
  ;; policy.
  (let ((psi (make-psi :id (incf *psi-count*)
                       :type 'this-is-just-a-stub)))
    (index-psi (indiv-id psi) psi)
    psi))


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
  (let ((psi (get-psi)))         
    (setf (psi-lattice-point psi) lattice-point)
    (setf (psi-type psi) lattice-point)
    (setf (psi-source psi) parent)
    (let ((v+v (find-or-make-v+v variable value psi)))
      (setf (psi-v+v psi) (cons v+v (psi-v+v parent)))
      (tr :made-new-psi psi)
      psi )))


(defun make-psi-for-subtype (subtype-lp source)
  (let ((psi (get-psi)))
    (setf (psi-type psi) subtype-lp)
    (setf (psi-lattice-point psi) subtype-lp)
    (setf (psi-v+v psi) (psi-v+v source))
    (setf (psi-source psi) source)
    
    (push psi (lp-subtype-instances subtype-lp))
    psi))


;;;---------------------
;;; Primary entry point
;;;---------------------

(defvar *force-new-psi* nil)

(defun make/psi (type binding-instructions &optional force-new?)
  ;; called from Make/individual and (eventually) subject to
  ;; bindings sited there and above. 
  (let (( *force-new-psi* force-new?))
    (declare (special *force-new-psi*))
    (break "calling Make/psi")
    (when (consp (first binding-instructions))
      (setq binding-instructions (alist-to-plist binding-instructions)))
    (tr :make/psi type binding-instructions)
    (let ((variables (variables-in-variable-value-plist binding-instructions)))
      (make-psi-for-bindings type variables binding-instructions))))


;;--- subroutines

(defun make-psi-for-bindings (type variables variable-value-plist)
  ;; No psi with this set of variables and values exists
  ;; so we have to construct it. But a psi that has some of the
  ;; needed bindings may exist, so we need to try to find it
  ;; before we start making extensions.
  (let ((starting-psi (if *force-new-psi*  nil
			(find-psi-with-the-most-bindings
			 type variables variable-value-plist))))
    (break "calling Make-psi-for-bindingse")
    (tr :starting-psi starting-psi)
    (if (null starting-psi)
      (make-psi-for-bindings/from-scratch
       type variable-value-plist)
      (make-psi-for-bindings/extend-existing-psi
       starting-psi variable-value-plist))))


(defun make-psi-for-bindings/from-scratch 
       (type variable-value-plist)
  ;; Assemble the bare individual and then pass it on.
  (let ((psi (get-psi))
        (lattice-position-of-type (cat-lattice-position type)))
    (tr :making-psi-from-scratch type lattice-position-of-type) 
    (setf (psi-lattice-point psi) lattice-position-of-type)
    (make-psi-for-bindings/extend-existing-psi psi variable-value-plist)))

