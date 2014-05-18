;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005,2011-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "specialize"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 May 2014

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


(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------
; This is called from ref/subtype -- what it returns becomes
; the referent of the edge.

(defgeneric specialize-object (base specializer)
  (:documentation "Hook to provide room for changes in design.
    Return an item that reflects the specialization of the
    base item by the specializer."))

(defmethod specialize-object ((i individual) (c category))
  (push-debug `(,i ,c))
  (break "You are trying to specialize ~a with the category ~a~
          which is not a mixin. If you want to do that you need ~
          to write the code for it." i c))

(defmethod specialize-object ((i individual) (mixin mixin-category))
  ;; 1. Find the relevant subtyped category
  ;; 2. If we have to make one, then we push the composite through
  ;;    the CLOS operation and store its shadow in the subtype object.
  ;; 3. Add the mixing to i's type field. Swap the shadow that is
  ;;    there for the one from the subtype.
  (let ((subtyped-category (find-subtype i mixin)))
    (unless subtyped-category
      (setq subtyped-category (make-subtype i mixin))
      (index-subcategory (itype-of i) mixin subtyped-category))
    (let* ((sclass (cat-specialized-class subtyped-category))
           ;; cribed from create-shadow
           (new-shadow (make-instance sclass)))
      (setf (indiv-shadow i) new-shadow) ;; does all the work
      i )))



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
  ;; Returns a new subtyped-category that's indexed
  ;; from its subtype-lattice-point.
  ;;(push-debug `(,i ,mixin))
  (let* ((base (itype-of i))
         (base-lp (cat-lattice-position base))
         (name (string-append
                (cat-symbol base) "/" (cat-symbol mixin)))
         (sub-lp (get-lp 'subtype-lattice-point
                         :supertype base-lp
                         :supertype-print-string name
                         :specializing-category mixin)))
    ;;(push-debug `(,sub-lp ,name)) (break "look at values")
    (let ((sub-cat (define-subtype-derived-category
                       sub-lp base mixin)))
      (setf (lp-subtype sub-lp) sub-cat)
      (setup-backing-clos-class sub-cat nil :referential)
      (let ((sclass (get-sclass sub-cat)))
        (setf (cat-specialized-class sub-cat) sclass)
        ;;(push-debug `(,sub-cat ,sclass)) (break "look again")
        sub-cat))))
  

