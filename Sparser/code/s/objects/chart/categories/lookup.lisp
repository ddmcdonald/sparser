;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2010-2018 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "lookup"
;;;   Module:  "objects;chart:categories:"
;;;  Version:  December 2018

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
;;     (3/2/12) moved accumulators to object2 to quiet compiler. 11/4 moved in
;;      function now needed pretty early.  (12/11/12) moved name-to-use-for-category
;;      to brackets/assignments.
;; 1.9 (8/14/13) Converted category-named to a method so it could be fed categories
;;     (4/16/14) Added the extra arg for mixins in CLOS backing. 
;; 3/21/2015 SBCL conditionalization to be like MCL on capitalization

;;;------
;;; find
;;;------

(defun find-or-make-category (item &optional (source :define-category))
  (etypecase item
    (symbol (find-or-make-category-object item source))
    (word
     (let ((symbol (intern (word-pname item) :sparser)))
       (find-or-make-category-object symbol source)))
    (polyword
     (let ((symbol (intern (hyphenated-string-for-pw item) :sparser)))
       (find-or-make-category-object symbol source)))))


(defun find-or-make-category-object (symbol &optional (source :define-category) source-location)
  "The core routine used by all the various sources for categories to
   make the minimal object and have it cataloged."
  (declare (special *all-intra-category-relationships-noticed?* *dotted-categories*))
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
          (note-file-location c-symbol source-location)
          (note-grammar-module category :source source)
          (mark-definition-source category) ;; for morph or comlex sources
          
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

(defgeneric category-named (name &optional errorp)
  (:documentation "Look up a category by name.")
  (:method ((name symbol) &optional errorp)
    (declare (optimize (speed 3)(safety 0)))
    (let ((c-symbol (if (eq (symbol-package name) *category-package*)
                      name
                      (find-symbol (symbol-name name) *category-package*))))
      (if (and c-symbol (boundp c-symbol))
        (symbol-value c-symbol)
        (when errorp
          (error "There is no category named ~a." name)))))
  (:method ((c category) &optional errorp)
    (declare (ignore errorp) (optimize (speed 3)(safety 0)))
    c)
  (:method ((w word) &optional errorp)
    (declare (ignore errorp))
    (let* ((pname (word-pname w))
           (name (intern (string-upcase pname) (find-package :sparser))))
      (category-named name)))
  (:method ((pname string) &optional errorp)
    (let ((name (intern (string-upcase pname) (find-package :sparser))))
      (category-named name))))


(defun referential-category-named (symbol)
  (let ((category (category-named symbol)))
    (when category
      (when (referential-category-p category)
        category))))


(defun category-named/c-symbol (c-symbol &optional errorp)
  (handler-bind ((unbound-variable
                  (lambda (condition)
                    (declare (ignore condition))
                    (unless errorp
                      (return-from category-named/c-symbol nil)))))
    (symbol-value c-symbol)))


;; speedup pointed out by SBCL profiling
(defparameter *cat-names* (make-hash-table :size 5000))

(defun cat-name (cat)
  "Category symbols are in the package :category.
   This provides it in the :sparser package"
  (declare (optimize (speed 3)(safety 0)))
  (when (category-p cat) ;; words don't have edge-forms
    (or
     (gethash cat *cat-names*)
     (setf (gethash cat *cat-names*)
           (intern (symbol-name  (cat-symbol cat)) :sparser)))))

(defun edge-cat-name (edge)
  "Return the category label of the edge as a symbol in :sparser"
  (declare (optimize (speed 3)(safety 0)))
  (when (edge-p edge)
    (cat-name (edge-category edge))))

(defun form-cat-name (edge)
  ;; change to a more memorable name
  (edge-form-name edge))



(defun edge-form-name (edge)
  "Return the form label of the edge as a symbol in :sparser"
  (declare (optimize (speed 3)(safety 0)))
  (when (edge-p edge)
    (cat-name (edge-form edge))))



;;;--------
;;; delete
;;;--------

(defun delete-category (symbol-for-category)
  (multiple-value-bind (category c-symbol)
                       (category-named symbol-for-category t)
    (delete/category category c-symbol)))


(defun delete/category (category &optional (c-symbol (cat-symbol category)))
  (setq *categories-defined* (delete category *categories-defined*))
  (unintern c-symbol *category-package*)
  category)


