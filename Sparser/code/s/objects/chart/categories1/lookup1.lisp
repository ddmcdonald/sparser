;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2010-2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "lookup"
;;;   Module:  "objects;chart:categories:"
;;;  Version:  1.8 March 2012

(in-package :sparser)

;; 1.0 (8/31/92 v2.3)  Added a check that a category symbol is actually
;;       bound so as to get better error messages for the odd cases.
;; 1.1 (9/1) Moved in the find-or-make routine and added a discrimination
;;       to it.
;; 1.2 (10/13) Added options for mixin-categories
;; 1.3 (1/7/94) changed error to break in Category-named
;; 1.4 (8/9) broke out referential and mixin accumulators
;; 1.5 (6/20/95) moved in the form rule accumulator
;; 1.6 (8/16/97) gated the referential-category-p check in Find-or-make-category-object.
;;      and changed form categories to simple ones. 10/18 changed them back to
;;      referential, but gated that too.
;; 1.7 (7/11/00) added referential-category-named and redefined the default when
;;      multiple terms appear in a mapping to make them referential categories rather
;;      than vanila categories.  (2/8/05) Added derived categories as a source and
;;      accumulating global. See make-subtype
;;     (4/26/09) Added find-or-make-category to work from types other than just symbol.
;;      Motivated by "(come) out of" polyword.
;; 1.8 (12/3/10) Incorporated CLOS class backing
;;     (3/2/12) moved accumulators to object2 to quiet compiler

;;;------
;;; find
;;;------

(defun find-or-make-category (item source)
  (typecase item
    (symbol (find-or-make-category-object item source))
    (word
     (let ((symbol (intern (word-pname item)
			   (find-package :sparser))))
       (find-or-make-category-object symbol source)))
    (polyword
     (let ((symbol (intern (hyphenated-string-for-pw item)
			   (find-package :sparser))))
       (find-or-make-category-object symbol source)))
    (otherwise
     (break "New object type passed in: ~a~%~a"
	    (type-of item) item))))

	 

(defun find-or-make-category-object (symbol source)
  ;; core routine used by all the various sources for categories to
  ;; make the minimal object and have it cataloged.
  (declare (special *all-intra-category-relationships-noticed?*))
  (unless (if *include-model-facilities*
            (referential-category-p symbol) ;; can happen in generated code
            nil)
    (let* ( new?
           (pname (symbol-name symbol))
           (c-symbol
            (or (find-symbol pname *category-package*)
                (progn (setq new? t)
                       (intern pname *category-package*)))))
      (unless new?
        (unless (boundp c-symbol)
          (setq new? t)))

      (let ((category
             (if new?
               (case source
                 (:referential
                  (make-referential-category :symbol c-symbol))
                 (:form
                  ;; the distinction is on the plist
                  (if *include-model-facilities*
                    (make-referential-category :symbol c-symbol)
                    (make-category :symbol c-symbol)))
                 (:mixin
                  (make-mixin-category :symbol c-symbol))
                 (:derived
                  (make-subtyped-category :symbol c-symbol))
                 (otherwise
                  (if *include-model-facilities*
                    (make-referential-category :symbol c-symbol)
                    (make-category :symbol c-symbol))))

               (symbol-value c-symbol))))
        
        (when new?
          (catalog/category category c-symbol)
          (note-file-location category)
          (note-grammar-module category :source source)

          (when *CLOS*  ;; CLOS backing
            (case source
              (:referential) ;; done in decode-category-parameter-list
              (:mixin) ;; also in decode-category-parameter-list
              (:form
               (setup-backing-clos-class category :form))
              (:derived
               (setup-backing-clos-class category :derived))
              ((or :def-category :define-category :dm&p)
               (setup-backing-clos-class category :minimal))))

          (ecase source
            (:referential
             (push category *referential-categories*))

            (:form
             (push category *form-categories*))

            ((or :def-category :define-category :dm&p)
             (push category *grammatical-categories*))

            (:dotted-rule
             (push category *dotted-categories*))

            (:mixin
             (push category *mixin-categories*))

            (:derived
             (push category *derived-categories*))))

        (setq *all-intra-category-relationships-noticed?* nil)
        
        (values category new?) ))))



;;;----------
;;; catalog
;;;----------

(defun catalog/category (object symbol-for-category)
  (push object *categories-defined*)
  (set symbol-for-category object)
  (proclaim `(special ,symbol-for-category))
  object )


(defvar *all-intra-category-relationships-noticed?* nil
  "A flag that is read by display routines and such to determine whether
   they should have the data on categories updated before they run.
   Set to nil every time a category of any sort is defined. Set to T
   by the routines that walk the category lattice.")

;;;------
;;; find
;;;------

(defun category-named (symbol)
  (let ((c-symbol (if (eq (symbol-package symbol)
                          *category-package*)
                    symbol
                    (find-symbol (symbol-name symbol)
                                 *category-package*))))
    (when c-symbol
      (if (boundp c-symbol)
        (values (symbol-value c-symbol)
              c-symbol)
        (else
          ;(break "The symbol ~A exists, but it is not linked to ~
          ;        a category~%If this is ok, continue." c-symbol)
          nil )))))

(defun referential-category-named (symbol)
  (let ((category (category-named symbol)))
    (when category
      (when (referential-category-p category)
        category))))


(defun category-named/c-symbol (c-symbol)
  (symbol-value c-symbol))


;;;--------
;;; delete
;;;--------

(defun delete-category (symbol-for-category)
  (multiple-value-bind (category c-symbol)
                       (category-named symbol-for-category)
    (unless category
      (error "There is no category named ~A" symbol-for-category))

    (delete/category category c-symbol)))


(defun delete/category (category
                        &optional (c-symbol
                                   (cat-symbol category)))
  (setq *categories-defined*
        (delete category *categories-defined*))
  (unintern c-symbol *category-package*)
  category)
