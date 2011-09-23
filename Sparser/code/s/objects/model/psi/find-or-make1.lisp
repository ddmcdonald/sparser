;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "find or make"
;;;   Module:  "objects;model:psi:"
;;;  version:  0.1 July 2007

;; These get called during an analysis and make calls out to annotation.

;; initiated 9/12/98. 3/26/00 Modified Find-or-make-psi-for-base-category
;; to pass the category through to the annotator so the rnode can be
;; cross-indexed against it. 4/10 Not so sure we should be annotating the
;; category rather than the psi and it's lattice point.
;; 0.1 (2/2/05) Removing the annotation calls for the nonce, e.g. Find-or-make-psi-for-base-category
;;  (2/3) Fixed the find call in Find-or-make-psi. (2/4) Adding entry point
;;  that starts with a psi.  2/7 Fixed bug in parameter order in the subtype-
;;  creating call: Corresponding-unit-of-subtype. Set up machinery for to create
;;  the psi that goes with the subtyped individual. Tweeked through 2/9.
;;  (7/6/07) Added package expersion because Allegra doesn't appear to be reading
;;  the mode line for meta-.

(in-package :sparser)

;;;-------------------------------------
;;; entry point for starting from a psi
;;;-------------------------------------

;; Called from define-individual
;; It's somewhat analogous to make/psi except that it starts with
;; an already existing psi. Ditto for find-or-make-psi.
;;
(defun find-or-make-extended-psi (psi var-name+value-pairs)
  (break "calling find-or-make-extended-psi")
  (or (find-extending-psi psi var-name+value-pairs)
      (make-extending-psi psi var-name+value-pairs)))


;;;-----------------------------------------------
;;; Version that starts with a top-level category 
;;;-----------------------------------------------

(defun find-or-make-psi (type &rest variable-value-plist-or-alist)
  ;; Called from find/individual as the default.
  (let* ((variable-value-pairs
          (if (consp (first variable-value-plist-or-alist)) ;; alist case
            (revamp-binding-instructions-as-variable-value-plist
             variable-value-plist-or-alist)
            variable-value-plist-or-alist))
         (variables (variables-in-variable-value-plist variable-value-pairs)))
    (break "called Find-or-make-psi")
    (or (find-psi-of-type-with-bindings type variables variable-value-pairs)
        (make-psi-for-bindings type variables variable-value-pairs))))


(defun find-or-make-psi-for-base-category (c)
  (let* ((lattice-point (find-or-make-self-node c))
         (new? (null (lp-instance lattice-point)))
         (psi (if new?
                (make-psi-with-just-a-type c lattice-point)
                (if (consp (lp-instance lattice-point))
                  (progn
                    (break "lp-instance of lp is a list ??")
                    (first (lp-instance lattice-point)))
                  (lp-instance lattice-point)))))
    (when new?
      (setf (lp-instance lattice-point) psi))
    ;(annotate-realization/base-case lattice-point psi)
    (tr :found-or-made-psi psi)
    psi ))


;;;----------
;;; subtypes
;;;----------

(defun corresponding-unit-of-subtype (unit category-of-subtype) 
  (tr :looking-for-subtype-unit unit category-of-subtype)
  ;; called from ref/subtype and expected to supply the object
  ;; that will be the referent it assembles.
  (let* ((type (typecase unit
                 (psi (psi-lattice-point unit))
                 (individual (cat-lattice-position (first (indiv-type unit))))
		 (otherwise
		  (error "Unexpected type for unit: ~a~%~a"
			 (type-of unit) unit))))
         (subtype-lp (find-or-make-subtype type category-of-subtype)))

    (let ((subtype-unit
           (etypecase unit
             (psi (find-or-make-psi-for-subtype subtype-lp unit))
             (individual
              ;(when *rule-being-interpreted*
              ;; If we get e.g. "net sales" twice in a text we want the
              ;; same individual in both cases -- search the discourse
              ;; history ??
              ;  (break "Need to search for the subtyped individual"))
              (let* ((subcategory (lp-category subtype-lp))
                     (subtype-unit (subtype-individual unit subcategory)))
                subtype-unit)))))

      (let ((rule *rule-being-interpreted*))
        (when (unary-rule? rule)
          (setf (cfr-referent rule) subtype-unit))
	(tr :subtype-unit-found subtype-unit)
        subtype-unit))))


(defun find-or-make-psi-for-subtype (subtype-lp source-psi)
  (let ((instances (lp-subtype-instances subtype-lp)))
    (tr :find-psi-instances-of-type instances subtype-lp)
    (or (when instances
          (dolist (psi instances)
            (when (eq (psi-source psi) source-psi)
	      (tr :found-psi-instance-of-type psi source-psi subtype-lp)
              (return psi))))
        (make-psi-for-subtype subtype-lp source-psi))))
        
