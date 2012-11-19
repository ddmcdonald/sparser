;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
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
;;  (7/6/07) Added package expression because Allegro doesn't appear to be reading
;;  the mode line for meta-.
;; 2.0 (6/19/09) Cleared out uncalled dead wood.
;; 2.1 (7/22) Revising the algorithms of the routines with nice names.
;;     (8/25) Added cases for multiple binding threads reaching the same psi
;;     (9/30/11) Cleaning up. 

(in-package :sparser)


;;;--------------------
;;; starting from a psi
;;;--------------------

(defun find-or-make-psi-with-binding (variable value parent-psi)
  ;; entry point from ref/instantiate-individual-with-binding
  (tr :find/make-psi-extending-by-binding-with variable value parent-psi)
  (push-debug `(:find-or-make ,variable ,value ,parent-psi)) 
  (or (find-psi-with-binding variable value parent-psi)
      (install-v+v variable value parent-psi)))

(defun find-psi-with-binding (variable value parent-psi)
  (let ((v+v (find-v+v variable value parent-psi)))
    ;; If we've been here before then get the psi from the v+v
    (if v+v
      (retrieve-psi-from-v+v v+v parent-psi)
      (else (tr :no-existing-psi-binding variable value)
            nil))))

(defun install-v+v (variable value parent-psi)
  ;; New variable or value. Make the v+v, associate it with a psi,
  ;; and tie the psi back to the v+v.
  (let* ((v+v (make-and-attach-v+v variable value parent-psi))
         (psi (make-more-saturated-psi parent-psi variable v+v)))
    (setf (vv-psi v+v) psi)
    psi))

(defun make-new-psi-for-v+v (v+v parent-psi)
  ;; There is already a psi associated with the v+v, however it is not
  ;; consistent with the line of bindings of this parent. We make the
  ;; additional, consistent, psi and add it to the v+v as another thread
  ;; of bindings (v+v) that arrive at this spot in the lattice.
  (let* ((v+v-associated-psi (vv-psi v+v))
         (variable (vv-variable v+v))
         (psi (make-more-saturated-psi parent-psi variable v+v)))
    (cond
      ((consp v+v-associated-psi)
       (push psi (vv-psi v+v)))
      ((psi-p v+v-associated-psi)
       (setf (vv-psi v+v) `(,psi ,v+v-associated-psi)))
      (t (push-debug `(:make-new-psi-for-v+v 
                       ,v+v-associated-psi ,v+v ,parent-psi))
         (error "Ill-formed vv-psi field on ~a" v+v)))
    (tr :added-psi-to-v+v psi v+v)
    psi))
  



;; vetted 7/23
(defun find-or-make-psi-for-base-category (c)
  (declare (special *annotate-realizations*))
  ;; called from ref/instantiate-individual-with-binding (at least)
  (let* ((lattice-point (cat-lattice-position c))
         (new? (null (lp-top-psi lattice-point)))
         (psi (if new?
                (make-psi-with-just-a-type c lattice-point)
                (lp-top-psi lattice-point))))
;    (unless new?
;      (push-debug `(,psi ,lattice-point ,c))
;      (break "Found psi for base category: ~a" psi))
    (when *annotate-realizations*
      (annotate-realization/base-case lattice-point psi))
    (tr :found-or-made-psi psi)
    psi ))



;;========== unvetted =============

;;;-----------------------------------------------
;;; Version that starts with a top-level category 
;;;-----------------------------------------------

(defun find-or-make-psi (type &rest variable-value-plist-or-alist)
  ;; Called from find/individual as the default.
  (declare (ignore type variable-value-plist-or-alist))
  (break "unvetted: find-or-make-psi")
  #+ignore
  (let* ((variable-value-pairs
          (if (consp (first variable-value-plist-or-alist)) ;; alist case
            (revamp-binding-instructions-as-variable-value-plist
             variable-value-plist-or-alist)
            variable-value-plist-or-alist))
         (variables (variables-in-variable-value-plist variable-value-pairs)))
    (break "called Find-or-make-psi")
    (or (find-psi-of-type-with-bindings type variables variable-value-pairs)
        (make-psi-for-bindings type variables variable-value-pairs))))


;;;----------
;;; subtypes
;;;----------

(defun corresponding-unit-of-subtype (unit category-of-subtype)
  (break "unvetted: corresponding-unit-of-subtype")
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
  (break  "unvetted: find-or-make-psi-for-subtype")
  (let ((instances (lp-subtype-instances subtype-lp)))
    (tr :find-psi-instances-of-type instances subtype-lp)
    (or (when instances
          (dolist (psi instances)
            (when (eq (psi-source psi) source-psi)
	      (tr :found-psi-instance-of-type psi source-psi subtype-lp)
              (return psi))))
        (make-psi-for-subtype subtype-lp source-psi))))
        
