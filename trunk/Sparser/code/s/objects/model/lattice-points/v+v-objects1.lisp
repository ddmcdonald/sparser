;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "v+v objects"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.1 July 2007

;; initiated 3/7/98. Populated 7/9. 1/31/99 aded Value/var/v+v. Added
;; Bind-v+v 2/14.  2/11/05 Added a global trap into value/var/v+v.
;; 1.0 (2/18/05) Make-v+v now creates a binding and gets it into the 
;;   bound field of the value. 3/15 pretty uses just the name of the
;;   variable.
;; 1.0 (7/29/07) Totally making over the indexing. 7/15 moved the struct
;;   into the structure file. 

(in-package :sparser)


;;;---------
;;; printer
;;;---------

(defun print-variable+value-structure (v+v stream depth)
  (declare (ignore depth))
  (let ((*print-short* t)
        (variable (vv-variable v+v)))
    (format stream "#<v+v ~a + ~a  ~a>"
            (string-downcase (symbol-name (var-name variable)))
            (vv-value v+v)
	    (unit-plist v+v))))


;;;-----------------
;;; pseudo resource
;;;-----------------

(defparameter *vv-counter* 0)
(defparameter *indexes-to-v+v* (make-hash-table))

(defun get-new-v+v ()  ;; stub for a resource
  (let ((vv (make-variable+value))
	(index (incf *vv-counter*)))
    (setf (unit-plist vv) index)
    (setf (gethash index *indexes-to-v+v*) vv)
    vv))

(defun v+v# (index)
  (gethash index *indexes-to-v+v*))

;;;------
;;; find
;;;------

(defparameter *c+v-to-v-into-v+v-table* (make-hash-table)
  "This is a fixed table that grows relatively slowly, tracking
   the growth of lattice-points")

(defun make-v+v-table ()
  "Thiis could be something more clever, e.g. something that's
   easily cleared between runs and has reusable cells."
  (make-hash-table))

(defun find-v+v-given-c+v&v (c+v v)
  (tr :find-v+v c+v v)
  (let ((v+v-table (gethash c+v *c+v-to-v-into-v+v-table*)))
    (if v+v-table
      (let ((v+v (gethash v v+v-table)))
	(if v+v
	  (tr :found-v+v v+v)
	  (tr :no-v+v-found))
	v+v)
      (else
	(setf (gethash c+v *c+v-to-v-into-v+v-table*)
	      (make-v+v-table))
	(tr :find-v+v-new-c+v-table c+v)
	nil))))


;;;------
;;; make
;;;------

(defun make-v+v-and-new-psi (variable value parent-psi c+v)
  ;; This is the single way of making a v+v and a psi that extends
  ;; another psi. 
  ;; find/make the lattice-point for this psi at the same time.
  (tr :making-v+v-and-psi variable value parent-psi c+v)
    (let ((v+v-table (gethash c+v *c+v-to-v-into-v+v-table*))
	  (v+v (get-new-v+v)))
      (unless v+v-table
	;; If it's not available, then we didn't do a find before we
	;; did this make.
	(setq v+v-table (setf (gethash c+v *c+v-to-v-into-v+v-table*)
			      (make-v+v-table)))
	(break "check v+v-table"))

      (setf (vv-variable v+v) variable)
      (setf (vv-value v+v) value)
      (setf (gethash value v+v-table) v+v)
      (tr :made-v+v v+v)

      (let* ((starting-lattice-point (psi-lattice-point parent-psi))
	     (lattice-point (find-or-make-next-lp-down-for-variable 
			     variable starting-lattice-point))
	     (psi (get-psi)))
	(setf (psi-type psi) lattice-point)
	(setf (psi-lattice-point psi) lattice-point)
	(setf (psi-v+v psi) (cons v+v (psi-v+v parent-psi)))
	(setf (psi-source psi) parent-psi)

	(setf (vv-psi v+v) `(,psi))
	(tr :made-psi-at-lp psi lattice-point)
	(tr :made-new-psi psi)

	(bind-variable/expr variable value psi)

	psi)))



;; originals
(defun find-or-make-v+v (variable value psi)
  (break "call to find-or-make-v+v -- shouldn't any more"))
;  (or (find-v+v variable value psi)
;      (let ((v+v (make-v+v variable value psi)))
;        (index-v+v v+v variable psi)
;        v+v)))

 (defun find-v+v (variable value psi)
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point psi)))
         (alist (lp-v+v top-lp)))
    (break "call to Find-v+v -- shouldn't anymore")))
;    (when alist
;      (let ((entries (cdr (assq variable alist))))
;        (when entries 
;          ;(format t "~&Looking for ~a + ~a~
;          ;           ~%  There are ~a entries"
;          ;        variable value (length entries))
;          (dolist (v+v entries nil)
;            (when (eq (vv-value v+v) value)
;              (return-from find-v+v v+v))))))))


;;;-------
;;; index
;;;-------

(defun index-v+v (v+v variable psi)
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point psi)))
         (alist (lp-v+v top-lp)))
    (break "call to index-v+v -- shouldn't anymore")))
;    (if (null alist)
;      (setf (lp-v+v top-lp)
;            `( (,variable ,v+v) ))
;
;      (let ((entry (assq variable alist)))
;        (when (memq v+v entry)
;          (break "Snafu - entries field already has this v+v:~%~a" v+v))
;        (if (null entry)
;          (push `(,variable ,v+v)
;                (lp-v+v top-lp))
;          (else 
;            (unless (consp entry)
;              (break "Something is very confused"))
;            (rplacd entry
;                    (cons v+v (cdr entry)))))
;        (index-v+v-to-its-value v+v psi)
;        top-lp))))


(defun index-v+v-to-its-value (v+v psi)
  (let ((body psi) ;; rename to keep the concepts straight
        (variable (vv-variable v+v))
        (value (vv-value v+v)))
    (break "call to index-v+v-to-its-value -- shouldn't anymore")))
;    (let ((b (make/binding variable value body :no-index-on-body)))
;      (push b (vv-bindings v+v))
;      v+v)))



;;;---------------------------------
;;; simple accessor (cf. value/var)
;;;---------------------------------

(defvar *v+v* nil)

(defun value/var/v+v (variable psi)
  (let ((v+v (find variable (psi-v+v psi)
                   :test #'eq :key #'vv-variable)))
    (when v+v
      (setq *v+v* v+v)
      (vv-value v+v))))



(defun psi-binds-variable-to-value (psi variable value)
  (break "call to psi-binds-variable-to-value -- ckeck it out")
  (let ((vv (find variable (psi-v+v psi) :key #'vv-variable)))
    (when vv
      (eq (vv-value vv) value))))


;;;------------------------------
;;; add a v+v to an existing psi
;;;------------------------------

;; Bind-v+v is the analog of the standalone bind-variable routine
;; with the twist that it will create a new, more saturated psi
;; in order to do this. So whereas the return value of bind-variable
;; is always ignored, here it should be carefully attended to.
;;
;;   It is called from definition code, and invariably will have to
;; decode the reference to the variable. 

(defun bind-v+v (var/name value psi &optional category)
  (let ((variable (decode-variable-name
                   var/name :individual psi :category category)))
    (break "call to bind-v+v -- check it out")
    (unless variable
      (if category
        (break "Check spelling: there is no variable named ~A~
                ~%associated with the category ~A" var/name category)
        (break "Check spelling: there is no variable named ~A~
                ~%associated with the category of the individual ~A"
               var/name psi)))

     (if (value/var/v+v variable psi)
       (unless (psi-binds-variable-to-value psi variable value)
         (break "Trying to change the value of an established ~
                 binding in the psi~%   ~a.~
                 ~%Should make a different psi instead, so the ~
                 threading is bad here." psi))

       (extend-psi-by-binding variable value psi))))
          
