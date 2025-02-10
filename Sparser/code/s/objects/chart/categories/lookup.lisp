;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2010-2024 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "lookup"
;;;   Module:  "objects;chart:categories:"
;;;  Version:  April 2024

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


;;;-------------------
;;; update references
;;;-------------------
#| Categories can be used as value restrictions before they are defined.
We need to track these cases (multiple files where they're referenced,
multiple functions, etc.). We need state flags to indicated what sort
of processing is being done to a category and block or redirect
actions that could be premature.
|#



(defvar *constructing-value-restriction* nil
  "Dynamically bound around the guts of define-lambda-variable and populated
   by catalog-binding-variable once a variable has been created")

(defvar *decoding-realization-mapping* nil
  "Dynamically bound inside instantiate-rule-schema around the
   call to replace-from-mapping")

(defvar *assembling-cfr* nil
  "Dynamically bound around the operations in def-cfr/expr to
   let us handle references to categories. Set to the cfr object
   in construct-cfr after its cataloged")


(defun peripheral-category-mention (category)
  "Called from define-category/expr to ensure that we do not decode
   a category that is in the process of being assimilated into
   a value restriction or a grammar rule, etc. 
   Not in a call to define-category that will provide its full definition."
  (declare (special *constructing-value-restriction*
                    *decoding-realization-mapping*
                    *assembling-cfr*))
  ;; We're in the scope of one of these operations
  (or ;;*constructing-value-restriction* ;; too simple?
      *decoding-realization-mapping*
      *assembling-cfr*
      (part-of-a-value-restriction category)))



;;;------
;;; find
;;;------

(defun find-or-make-category (item &optional (source :define-category))
  ;; called from construct-referent and define-main-verb. Its just a bump
  ;; along the way to find-or-make-category-object
  (etypecase item
    (symbol (find-or-make-category-object item source))
    (word
     (let ((symbol (intern (word-pname item) :sparser)))
       (find-or-make-category-object symbol source)))
    (polyword
     (let ((symbol (intern (hyphenated-string-for-pw item) :sparser)))
       (find-or-make-category-object symbol source)))))


(defun find-or-make-category-object (symbol
                                     &optional (source :define-category) source-location)
  "The core routine used by all the various sources for categories to
   make the minimal object and have it cataloged. Uses the 'source' information
   to push newly created categories into various bins. Consults point-of-reference
   globals to add information to the category's plist."
  (declare (special *all-intra-category-relationships-noticed?*
                    *constructing-value-restriction*
                    *decoding-realization-mapping*
                    *assembling-cfr*))
  
  (unless (referential-category-p symbol) ;; can happen in generated code
    (let* ((new? nil)
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
                (instantiate-according-to-source c-symbol source)
                (symbol-value c-symbol))))

        ;; Can do specific recording here according to what
        ;; flags are up or maybe source specified
                   
        (when *assembling-cfr*
          (record-rule-used-in category))

        (when *decoding-realization-mapping*) ;////

        (if new?
          (then
            (catalog/category category c-symbol)
            (note-file-location category)
            (note-file-location c-symbol source-location)
            (note-grammar-module category :source source)
            (mark-definition-source category) ;; for morph or comlex word sources
            (bin-according-to-source category source))
          (else
            (update-file-location category)
            ;;/// and what else?
            ))

        (setq *all-intra-category-relationships-noticed?* nil)

        (values category new?) ))))


;;//// move these two in flet when dust has settled

(defun instantiate-according-to-source (c-symbol source)
  "Virtually everyone becomes a referential-category, but keeping
   the others if we have a reason to go down those routes."
  (case source
    (:referential
     (make-referential-category :symbol c-symbol))
    (:form ;; the distinction is on the plist
     (make-referential-category :symbol c-symbol))
    (:mixin
     (make-mixin-category :symbol c-symbol))
    (:derived
     (make-subtyped-category :symbol c-symbol))
    (otherwise
     (make-referential-category :symbol c-symbol))))


(defun bin-according-to-source (category source)
  "The choice of accumulator is dependent on proper management
   of the source parameter, with has been hard to accurately
   trace to what sets it."
  (declare (special *referential-categories* *form-categories*
                    *grammatical-categories* *dotted-categories*
                    *mixin-categories* *derived-categories*))
  (ecase source
    (:referential
     (push category *referential-categories*))
    
    (:form
     (push category *form-categories*))
    
    ((or :def-category ;; used in def-cfr/expr
         :define-category :dm&p
         :composite-label) ;; from ccl/2e and replace-from-mapping
     (push category *grammatical-categories*))

    (:dotted-rule
     (push category *dotted-categories*))

    (:mixin
     (push category *mixin-categories*))

    (:derived
     (push category *derived-categories*))))


;;;----------------------------
;;; embedded category handling
;;;----------------------------

(defun catalog-binding-variable (v)
  "Called from define-lambda-variable after it has created the
 variable and before it returns. Pays the most attention to
 categories, and records the fact of this restriction on their
 plists." ;;/// could track more info about the bindings per se.
  (declare (special *constructing-value-restriction*))
  (let ((name (var-name v)) ;; name of the bindings
        (category (var-category v))
        (restriction (var-value-restriction v)))
    ;; cases
    (cond
      ((category-p restriction) ;;///also bind the flag as a signal
       ;;    or go completely to plist checks?
       ;; fraction: :binds ((numerator . number)
       ;; variant-on: :binds ((prototype top))
       (record-use-as-vr restriction category name))

      ((null restriction)
       ;; interval: :binds ((begin)
       (setq *constructing-value-restriction* nil))

      ((eq (car restriction) :primitive)
       ;; approximator: :binds (name (:primitive sparser::word))
       ;; nothing below here needs special handling
       (setq *constructing-value-restriction* nil))

      ((eq (car restriction) ':or)
       ;; with-agent :binds ((agent (:or physical-agent social-agent)))
       ;; check that they're all categories at this point
       (loop for r-cat in (cdr restriction)
             do (record-use-as-vr r-cat category name)))    

      (t (break "new restriction case:~
               ~%  category: ~a~
               ~%  variable: ~a~
               ~%  restriction: ~a"
                category name restriction)))))

(defun record-use-as-vr (vr-category in-category var-name)
  "The definition of 'in-category' includes a binding of 'var-name'
   where its value restricted to the category 'vr-category'"
  (let ((prior-value (get-tag :value-restriction vr-category)))
    (let ((value 
            (if prior-value
              (push `((:in-category ,in-category :to-variable ,var-name))
                    prior-value)
              (else
                `((:in-category ,in-category :to-variable ,var-name))))))
      (setf (get-tag :value-restriction vr-category) value)
      value)))

(defun part-of-a-value-restriction (category)
  "Called from peripheral-category-mention as part of gating whether
   we treat this category as a definition to be thoughly absorbed
   or as a peripheral mention. In this case as part of a v/r."
  (let ((entry (get-tag :value-restriction category)))
    (when entry
)))

(defun record-rule-used-in (category)
  (declare (special *assembling-cfr*))
  (let ((form `(:in-cfr ,*assembling-cfr*)))
    (setf (get-tag :cfr-reference category) form)
    form))
;; When I set the global to the rule inside construct-cfr it was sticky
;; and didn't revert to nil outside that scope -- stuck on its first instance



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


