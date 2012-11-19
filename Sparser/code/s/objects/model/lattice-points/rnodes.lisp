;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rnodes"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  November 2012

;; Initiated 11/12/12 to provide a pseudo-resource and consolidate operations
;; over them. 

(in-package :sparser)

;;;----------
;;; printing
;;;----------
 
(defun print-realization-node-structure (rn stream depth)
  (declare (ignore depth))
  (let ((cfr (pretty-schr-as-string (rn-cfr rn))))
  (format stream "#<rnode~a ~a>"
          (unit-plist rn) (or cfr :no-cfr-yet))))




;;;-----------------
;;; pseudo resource
;;;-----------------

;; Realization nodes are permanent, but we can organize them into a sort of
;; resource for ease of access. Copying most code from c+v=objects

(defparameter *rnode-counter* 0)
(defparameter *indexes-to-*rnode* (make-hash-table))

(defun rnode# (index-number)
  (gethash index-number *indexes-to-*rnode*))

;;--- make

(defun get-realization-node ()
  (let ((rnode (make-realization-node))
        (index-number (incf *rnode-counter*)))
    (setf (unit-plist rnode) index-number)
    (setf (gethash index-number *indexes-to-*rnode*) rnode)
    rnode))
  

