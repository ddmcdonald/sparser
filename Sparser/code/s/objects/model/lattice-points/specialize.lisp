;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "specialize"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  0.3 February 2011

;; initiated 11/29/97. Given some content 1/2/01 though punting on the issue of
;; cross-indexing all the different paths down to a subtype that is a specialization
;; of a specialization so that the same object will be found regardless of
;; the sequence in which the specializing terms are seen. Continuing 3/2.
;; 2/8/05 Added making the derived-category to the task of make-subtype and
;; fleshed out its fields more.
;; 0.1 (2/10/05) Allowing individuals (e.g. 'net') to be 'specializing-categories'. 
;; 0.2 (3/14/05) revised the basis of bound/free on the subtype lp to copy what's
;;   already known since otherwise we lose it. (3/17) added mixin-category to cases
;;   in make-subtype. (3/31) Changed use of name-of in make-subtype as fanout from
;;   the change that the routine now returns a word instead of a symbol.
;; 0.3 (2/8/11) 'name-of' is predefined in Clozure, so changing it to 
;;   name-of-individual.


(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------

(defun find-or-make-subtype (lp category)
  (or (find-subtype lp category)
      (make-subtype lp category)))


(defun find-subtype (lp category)
  (when (typep lp 'subtype-lattice-point)
    (break "stub: first subtype of a subtype:~%~a" lp))

  (let* ((top-lp (climb-lattice-to-top lp))
         (subtypes (lp-subtypes top-lp))
         (entry (assoc category subtypes)))
    (cdr entry)))



(defun index-subtype-lp-to-supertype-lp (super sub specializing-category)
  (when (typep super 'subtype-lattice-point)
    (break "stub: first subtype of a subtype:~%~a" super))

  (let* ((top-lp (climb-lattice-to-top super))
         (subtypes (lp-subtypes top-lp))
         (entry (assoc specializing-category subtypes)))

    (if (null entry)
      (setf (lp-subtypes top-lp) `((,specializing-category . ,sub)))
      (push `(,specializing-category . ,sub) entry))))



         
;;;----------
;;; new ones
;;;----------

(defun make-subtype (super-lp specializing-category)
  ;; -- the subtype gets added to the supertype by the indexing routine --
  (let* ((lp (get-lp 'subtype-lattice-point))
         (super-category 
          (if (typep super-lp 'self-lattice-point)
            (category-of-self-lattice-point super-lp)
            (base-category-of-lp super-lp)))
         (base-string
          (etypecase super-lp
            (subtype-lattice-point
             (format nil "~a/" (lp-supertype-print-string super-lp)))
            (top-lattice-point
             (format nil "~a/" 
                     (string-downcase (symbol-name (cat-symbol super-category)))))
            (psi-lattice-point
             (format nil "~a/"
                     (string-downcase (symbol-name (cat-symbol super-category)))))
            (self-lattice-point 
             (format nil "~a/"
                     (string-downcase 
                      (symbol-name (cat-symbol
                                    (category-of-self-lattice-point super-lp))))))))
         (namestring (string-append 
                      base-string
                      (string-downcase 
                       (symbol-name
                        (etypecase specializing-category
                          (referential-category
                           (cat-symbol specializing-category))
                          (mixin-category
                           (cat-symbol specializing-category))
                          (category
                           (cat-symbol specializing-category))
                          (individual
                           (if (has-a-name? specializing-category)
                             (intern (word-pname (name-of-individual specializing-category)))
                             (break "stub - string for individual")))))))))

    (setf (lp-supertype-print-string lp) namestring)
    (setf (lp-specializing-category lp) specializing-category)
    (setf (lp-supertype lp) super-lp)
    (setf (lp-upward-pointers lp) (list super-lp))

    (setf (lp-top-lattice-point lp)
          (etypecase super-lp
            (subtype-lattice-point (lp-top-lattice-point super-lp))
            (self-lattice-point (climb-lattice-to-top super-lp))
            (psi-lattice-point (climb-lattice-to-top super-lp))
            (top-lattice-point super-lp)))

    (let ((derived-category (define-subtype-derived-category lp super-category)))
      (setf (lp-category lp) derived-category)
      (setf (lp-super-category lp) super-category)

      ;; Taking the bound/free distribution from the lattice point, which means
      ;; that this subtype carries  a bit more information than it might, since
      ;; the lattice-point portion of it reflects a certain point in the 
      ;; composition process, which is probably arbitrary, but since the two
      ;; kinds of information (subtyping and bound/free) are conflated on a single
      ;; object, and since we are going to use the subtype lp going forward, 
      ;; we have to use it or we'll lose it. 
      (setf (lp-variables-free lp) (lp-variables-free super-lp))
      (setf (lp-variables-bound lp) (lp-variables-bound super-lp))

      (index-subtype-lp-to-supertype-lp super-lp lp specializing-category)
      lp )))

