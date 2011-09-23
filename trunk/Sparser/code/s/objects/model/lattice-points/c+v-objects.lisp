;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-1999 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "c+v objects"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  September 1999

;; initiated 7/9/98. Added indexing 9/12/99. 7/30/07 folded the indexing
;; routine into the make routine to tighten up the relationship.
;; 7/15 moved the struct into the structure file. 

(in-package :sparser)

;;;---------
;;; printer 
;;;---------

(defun print-category+variable-structure (c+v stream depth)
  (declare (ignore depth))
  (let ((*print-short* t))
    (format stream "#<c+v ~a + ~a  ~a>"
            (string-downcase (symbol-name (cat-symbol (cv-type c+v))))
	    (string-downcase (symbol-name (var-name (cv-variable c+v))))
	    (unit-plist c+v))))


;;;-----------------
;;; pseudo resource
;;;-----------------

(defparameter *cv-counter* 0)
(defparameter *indexes-to-c+v* (make-hash-table))

(defun get-c+v ()  ;; stub for a resource
  (let ((c+v (make-category+variable))
	(index (incf *cv-counter*)))
    (setf (unit-plist c+v) index)
    (setf (gethash index *indexes-to-c+v*) c+v)
    c+v))

(defun c+v# (index)
  (gethash index *indexes-to-c+v*))

;;;------
;;; make
;;;------

(defun make-c+v (category variable)
  (flet ((index-c+v (c+v)
	   (let ((top-lp (cat-lattice-position category)))
	     (push `(,c+v) (lp-c+v top-lp)))))
    (let ((cv (get-c+v)))
      (setf (cv-type cv) category)
      (setf (cv-variable cv) variable)
      (index-c+v cv)
      (tr :made-c+v cv)
      cv )))


;;;------
;;; find
;;;------

(defun find-c+v (category variable)
  (let ((top-lp (cat-lattice-position category)))
    (push-debug `(,top-lp ,category ,variable))
    (unless top-lp
      (error "Coruption: No lattice point for ~a" category))
    (let ( c+v )
      (dolist (c+v-entry (lp-c+v top-lp))
        (setq c+v (car c+v-entry))
        (when (eq (cv-variable c+v) variable)
	  (tr :found-c+v c+v)
          (return-from find-c+v c+v))))))



;;;--------------
;;; find or make
;;;--------------

(defun find-or-make-c+v (category variable)
  (unless category
    (error "Threading error: The category parameter is nil"))
  (unless variable
    (error "Threading error: The variable parameter is nil"))
  (or (find-c+v category variable)
      (make-c+v category variable)))

