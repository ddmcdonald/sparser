;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "v+v objects"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  February 2005

;; initiated 3/7/98. Populated 7/9. 1/31/99 aded Value/var/v+v. Added
;; Bind-v+v 2/14.  2/11/05 Added a global trap into value/var/v+v.
;; 1.0 (2/18/05) Make-v+v now creates a binding and gets it into the 
;;   bound field of the value. 3/15 pretty uses just the name of the
;;   variable.

(in-package :sparser)


;;;-----------
;;; structure
;;;-----------

(defstruct (variable+value
            (:include unit)
            (:conc-name #:vv-)
            (:print-function print-variable+value-structure))
  
  variable

  value

  bindings 
    ;; all the bindings that are built for the bound-in fields
    ;; of the values. They have the psi that is created for this
    ;; v+v as their body.

  )


(defun print-variable+value-structure (v+v stream depth)
  (declare (ignore depth))
  (let ((*print-short* t)
        (variable (vv-variable v+v)))
    (format stream "#<v+v ~a + ~a>"
            (string-downcase (symbol-name (var-name variable)))
            (vv-value v+v))))


;;;------
;;; find
;;;------

(defun find-or-make-v+v (variable value psi)
  (or (find-v+v variable value psi)
      (let ((v+v (make-v+v variable value psi)))
        (index-v+v v+v variable psi)
        v+v)))

(defun find-v+v (variable value psi)
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point psi)))
         (alist (lp-v+v top-lp)))
    (when alist
      (let ((entries (cdr (assq variable alist))))
        (when entries 
          ;(format t "~&Looking for ~a + ~a~
          ;           ~%  There are ~a entries"
          ;        variable value (length entries))
          (dolist (v+v entries nil)
            (when (eq (vv-value v+v) value)
              (return-from find-v+v v+v))))))))


;;;-------
;;; index
;;;-------

(defun index-v+v (v+v variable psi)
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point psi)))
         (alist (lp-v+v top-lp)))
    (if (null alist)
      (setf (lp-v+v top-lp)
            `( (,variable ,v+v) ))

      (let ((entry (assq variable alist)))
        (when (memq v+v entry)
          (break "Snafu - entries field already has this v+v:~%~a" v+v))
        (if (null entry)
          (push `(,variable ,v+v)
                (lp-v+v top-lp))
          (else 
            (unless (consp entry)
              (break "Something is very confused"))
            (rplacd entry
                    (cons v+v (cdr entry)))))
        (index-v+v-to-its-value v+v psi)
        top-lp))))


(defun index-v+v-to-its-value (v+v psi)
  (let ((body psi) ;; rename to keep the concepts straight
        (variable (vv-variable v+v))
        (value (vv-value v+v)))
    (let ((b (make/binding variable value body :no-index-on-body)))
      (push b (vv-bindings v+v))
      v+v)))


;;;------
;;; make
;;;------

(defun get-v+v ()  ;; stub for a resource
  (make-variable+value))

(defun make-v+v (variable value psi)
  (let ((vv (get-v+v)))
    (setf (vv-variable vv) variable)
    (setf (vv-value vv) value)
    vv ))



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
          
