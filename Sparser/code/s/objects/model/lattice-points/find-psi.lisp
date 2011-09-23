;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "find psi"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  July 1998

;; broken out as its own file 7/29/98

(in-package :sparser)

;;;---------------
;;; general cases
;;;---------------

;;/// version with single arg is defined below -- needs renaming
;;
(defun find-or-make-psi (type &rest variable-value-plist-or-alist)
  ;; Called from find/individual as the default.
  (multiple-value-bind (variables variable-value-pairs)
                       (variables-in-variable-value-plist
                        variable-value-plist-or-alist)
    (or (find-psi-with-bindings type variables variable-value-pairs)
        (make-psi-for-bindings type variables variable-value-pairs))))


(defun find-psi (type binding-instructions)
  ;; called from find/individual
  (multiple-value-bind (variables variable-value-pairs)
                       (variables-in-variable-value-plist
                        binding-instructions)
    (find-psi-with-bindings type variables variable-value-pairs)))


(defun find-psi-with-bindings (type variables variable-value-pairs)
  ;; return nil if we don't
  (let ((lp (find-lattice-point-with-variables type variables)))
    (when lp
      (find-psi-at-lattice-point lp variable-value-pairs))))




(defun find-psi-with-the-most-bindings (type variables variable-value-pairs)
  ;; When called from Make-psi-for-bindings we've already determined
  ;; that there is no psi already created that binds these variables
  ;; to these values, and we're setting about to make one. To that
  ;; end we want the psi (if it exists) that binds some of these
  ;; variables to the indicated values. 
  (let ((category (some #'category-p variables)))
    (when category
      ;; it's included in the variables. It doesn't have
      ;; a value (though it might have rnodes) so we should
      ;; leave it out for present purposes.
      (setq variables (remove category variables))))

  (let ((category-psi (find-psi-for-base-category type)))
    (when category-psi
      (let ((down-pointers
             (lp-down-pointers (psi-lattice-point category-psi)))
            (count (length variables))
            variables-traversed  length-two-psi  new-psi )
        (when (> count 2)
          (break "Stub: can't do more than two variables"))


    #| original scheme circa July.  I don't know that it was
       working in any context let alone a conservative 'find'
       but leaving it here for reference.

        (dolist (var variables)
          (when (assq var down-pointers)
            (push var variables-traversed)
            (push (cdr (assq var down-pointers))
                  length-two-psi)))
      (if length-two-psi
        (if (cdr length-two-psi)
          ;; search for their join
          (let* ((p1 (first length-two-psi))
                 (vv1 (car (psi-v+v p1)))
                 (p2 (second length-two-psi))
                 (vv2 (car (psi-v+v p2)))
                 (down1 (lp-down-pointers (psi-lattice-point p1)))
                 (down2 (lp-down-pointers (psi-lattice-point p2)))
                 (join-lp 
                  (or (cdr (assq (vv-variable vv1) down2))
                      (cdr (assq (vv-variable vv2) down1)))))
            (if join-lp
              ;; the lattice point that we need exists
              (or (find-psi-with-bindings join-lp variable-value-pairs)
                  (extend-psi-by-binding vv1 (vv-value vv2) p1))

              ;; it doesn't exist, so we make one based on this instance
              (extend-psi-by-binding vv1 (vv-value vv2) p1)))

          ;; extend the one psi
          (let* ((parent (car length-two-psi))
                 (variable-not-used
                  (first
                   (set-difference
                    variables
                    (lp-variables-bound (psi-lattice-point parent))))))
            (extend-psi-by-binding
             variable-not-used
             (cadr (member variable-not-used variable-value-pairs))
             parent)))

        ;; neither of the possible length-two psi exist
        (else
          (setq new-psi category-psi)
          (dolist (var variables)
            (setq new-psi
                  (extend-psi-by-binding
                   var
                   (cadr (member var variable-value-pairs))
                   new-psi)))
          new-psi ))  |#


    

     
;;;----------------
;;; specific cases
;;;----------------

(defun find-or-make-psi-for-base-category (c)
  (break "Find-or-make-psi-for-base-category")
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

(defun find-psi-for-base-category (c)
  (let ((lattice-point (find-self-node c)))
    (when lattice-point
      (let ((category-psi (lp-instance lattice-point)))
        category-psi))))


#|
(defun find-or-make-psi (referent)
  (break "re-name my caller's call")
  (etypecase referent
    (referential-category
     (find-or-make-psi-for-base-category referent))
    (individual
     referent)))|#



;;;-------------
;;; subroutines
;;;-------------

(defun variables-in-variable-value-plist (variable-value-plist)
  ;; If this is called from the find-or-make/individual entry point
  ;; then the input is an alist rather than a plist. This is where
  ;; we make the two schemes mesh.
  (if (consp (first variable-value-plist))
    (revamp-binding-instructions-as-variable-value-plist
     variable-value-plist)
    
    (let ((variable-next? t)
          variables )
      (dolist (unit variable-value-plist)
        (when variable-next?
          (push unit variables))
        (setq variable-next? (not variable-next?)))

      (values variables
              variable-value-plist))))



(defun revamp-binding-instructions-as-variable-value-plist (alist)
  (let ( var  value  variables  variable-value-plist )
    (dolist (pair alist)
      (setq var (first pair)
            value (second pair))
      (push var variables)
      (push var variable-value-plist)
      (push value variable-value-plist))

    (values variables
            (nreverse variable-value-plist))))

