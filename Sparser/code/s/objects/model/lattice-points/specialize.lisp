;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005,2011-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "specialize"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  November 2019

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
;; 1.0 (5/9/14) Thorough make-over to simplify the operations and tune them
;;   to CLOS and shadows. 
;;   (1/7/15) Wrote one-off-specialization to expedite an issue in
;;   conjunctions. 
;; 6/30/2015 Fix one-off-specialization so that it does-not keep adding copies
;;  of the same super-category when the same DL conjunction individuals.
;; 10/17/15 was convinced it does't make sense



(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------
; This is called from ref/subtype -- what it returns becomes
; the referent of the edge.

(defgeneric specialize-object (base specializer)
  (:documentation "Hook to provide room for changes in design.
    Called by ref/subtype when the *use-subtypes* flag is up.
    Returns an item that reflects the specialization of the
    base item by the specializer.")

  (:method ((i individual) (cat-name symbol))
    (specialize-object i (category-named cat-name :error-if-nil)))

  (:method ((i individual) (mixin category))
    (if *description-lattice*
      (let ((j (add-type-to-individual i mixin)))
        j)
      (else 
        (setf (indiv-type i) (tail-cons mixin (indiv-type i)))
        i ))))

    ;; Original, using old type lattice
    ;; (let ((subtyped-category (find-subtype i mixin)))
    ;;   (unless subtyped-category
    ;;     (setq subtyped-category (make-subtype i mixin))
    ;;     (index-subcategory (itype-of i) mixin subtyped-category))
    ;;   i)


(defun find-subtype (i mixin)
  (let* ((base (itype-of i))
         (lp (cat-lattice-position base))
         (sub-nodes (lp-subtypes lp)))
    (when sub-nodes
      (let ((sub-lp (cdr (assoc mixin sub-nodes))))
        (when sub-lp
          (lp-subtype sub-lp))))))

(defun index-subcategory (base mixin subtyped-category)
  (let* ((lp (cat-lattice-position base))
         (sub-lp (cat-lattice-position subtyped-category))
         (sub-nodes (lp-subtypes lp)))
    (if (null sub-nodes)
      (setf (lp-subtypes lp) `((,mixin . ,sub-lp)))
      (push `(,mixin . ,sub-lp) (lp-subtypes lp)))))

(defun make-subtype (i mixin)
  "Return a new subtyped-category indexed from its subtype-lattice-point."
  (let* ((base (itype-of i))
         (base-lp (cat-lattice-position base))
         (name (string-append (cat-symbol base) "/" (cat-symbol mixin)))
         (sub-lp (get-lp 'subtype-lattice-point
                         :supertype base-lp
                         :supertype-print-string name
                         :specializing-category mixin)))
    (setf (lp-subtype sub-lp)
          (define-subtype-derived-category sub-lp base mixin))))
