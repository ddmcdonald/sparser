;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "lattice-operations"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.0 May 2015

;; initiated in May 2015
;; Code to place referents in a description lattice to facilitate anaphora and other reasoning
;; 5/30/2015 added a bunch more functionality to description (not-yet-quite-a)lattice
;; 6/20.2015 substantial cleanup for this file -- revised data structures and methods
;; still need to deal with implied superc and subc links
;; First test on compare-to-snapshots d=generated many more elements in the lattice than I would have expected
;; set *no-description-lattice* to have this called when parsing

(in-package :sparser)

(defparameter *no-description-lattice* t)

(defvar category::top)
(defvar category::collection)

(defstruct (dl-indiv
            (:include unit)
            (:conc-name #:dli-)
            (:print-function print-dl-indiv)
            )

  id ;; an arbitrary number used for accessing the lp
  type
  binds ;; a list of vv items
  (downlinks (make-hash-table))
   ;; A hash-table with keys that are either categories or vv = {variable, category} items
  ;; a category takes us to the dli for the meet with that category,
  ;;  a vv takes us to the lattice point that binds one more variable

  (uplinks (make-hash-table)) ;; a hash table. 
  ;;  1) If binds=nil, then the keys are categories, and the values are dli's for the pairwise joins
  ;;  2) if binds is not null, then the keys are vv items, and the values are the dli for the one less binding
  )

(defun print-dl-indiv (dli stream depth)
  (declare (ignore depth))
  (let ((*print-short* t))
    (format stream "#<dli ~a ~a>"
            (if
             (dli-type dli)
             (string-downcase (symbol-name (cat-symbol (dli-type dli))))
             "top")
            (loop for vv in (dli-binds dli)
              collect
              (list (string-downcase (symbol-name (var-name (dlvv-variable vv))))
                    (dlvv-value vv))))))

;; NOTE -- dl-variable_value are UNIQUELY DEETERMINED by the variable and value
(defstruct (dl-variable+value
            (:include unit)
            (:conc-name #:dlvv-)
            (:print-function print-dl-variable+value-structure)
            )
  variable
  value)

(defparameter *dl-vv-from-variable* (make-hash-table :size 500))

(defun find-or-make-dlvv-ht-from-variable (variable)
  (or (gethash variable *dl-vv-from-variable*)
      (setf (gethash variable *dl-vv-from-variable*) (make-hash-table :size 100 :test #'equal))))

(defun find-or-make-dlvv-from-var-val (variable value)
  (let
      ((vht (find-or-make-dlvv-ht-from-variable variable)))
    (or (gethash value vht)
        (setf (gethash value vht) 
              (make-dl-variable+value 
               :variable variable 
               :value (if (or (referential-category-p value)
                              (individual-p value))
                          (get-dli value)
                          value))))))

(defun find-or-make-dlvv (binding)
  (find-or-make-dlvv-from-var-val (binding-variable binding) (binding-value binding)))

(defun print-dl-variable+value-structure (dl-vv stream depth)
  (declare (ignore depth))
  (let ((*print-short* t))
    (format stream "#<dl-vv ~a + ~a>"
            (if (symbolp (dlvv-variable dl-vv))
                (dlvv-variable dl-vv)
                (string-downcase (symbol-name (var-name (dlvv-variable dl-vv)))))
            (dlvv-value dl-vv))))

(defparameter *lattice-ht* (make-hash-table :size 10000)
  "This is the initial way that edge-referent's are linked to the structures that are in the lattice.
   A bit slower than putting a field in the referent, but applicable to all referents, and does not change their structure.")
(defparameter *source-ht* (make-hash-table :size 5000)
  "Inverse link to *lattice-ht*")

(defun get-dli (ref) (gethash ref *lattice-ht*))

(defun set-dli (ref dli)
  (push ref (gethash dli *source-ht*))
  (setf (gethash ref *lattice-ht*) dli))

(defparameter *dl-lattice-index* 0)
(defparameter *dl-lattice-top* nil)

(defun place-referent-in-lattice (referent edge)
  (declare (special referent edge))
  (when (and referent
             (not *no-description-lattice*)
             (or (individual-p referent) (referential-category-p referent)))
    (find-or-make-lattice-description referent edge))
  referent)

(defun fom-lattice-description (base)
  (cond
   ((get-dli base))
   ((referential-category-p base)
    (find-or-make-lattice-description-for-ref-category base))
   ((individual-p base)
    (find-or-make-lattice-description-for-individual base))
   ((consp base) ;; a join of categories
    (find-or-make-lattice-description-for-multi-categories base))
   (t (lsp-break "what type of base is this? ~s" base))))

(defun find-or-make-lattice-description (referent edge)
  (declare (special referent edge))
  ;; This next piece of code is just to avoid load-time dependencies between the creation of category::top and
  ;;  loading this file
  (unless *dl-lattice-top*
    (setq *dl-lattice-top* (make-dl-indiv :id 0 :type category::top))
    (set-dli category::top *dl-lattice-top*))
  (or
   (get-dli referent)
   (multiple-value-bind (base bindings)
                        (base-and-new-bindings referent edge)
     (declare (special base bindings))
     (let
         ((current-dli (fom-lattice-description base)))
       (declare (special current-dll))
       (loop for b in bindings
         do (setq current-dli (find-or-make-lattice-subordinate current-dli b)))
       (set-dli referent current-dli)
       current-dli))))

(defun base-and-new-bindings (er edge)
  (declare (special er edge))
  (cond
   ((or (null er) (and (not (individual-p er)) (not (referential-category-p er))))
    (values nil nil))
   ((referential-category-p er) (values er nil))
   ((individual-p er)
    (let
        ((hr (head-referent? edge er))
         (e-bindings (when (individual-p er) (filter-bindings (indiv-binds er)))))
      (if (null hr)
          (if e-bindings 
              (if (> (length e-bindings) 4)
                  (lsp-break "too many individual bindings")
                  (values (indiv-type er) e-bindings))
              (values er nil))
          (let*
              ((hr-bindings (when (individual-p hr) (filter-bindings (indiv-binds hr))))
               (new-bindings
                (loop for b in e-bindings unless
                  (loop for hb in hr-bindings
                    thereis
                    (and
                     (eq (binding-variable hb)(binding-variable b))
                     (eq (binding-value hb) (binding-value b))))
                  collect b)))
            (declare (special hr-bindings e-bindings new-bindings))
            (when (> (length new-bindings) 4)
              (lsp-break "too many incremental bindings"))
            (values hr new-bindings)))))
   (t (lsp-break "banb: what do I do with ~s " er))))

(defun find-or-make-lattice-description-for-ref-category (base)
  (or (get-dli base)
      (let ((new-dli (make-dli base)))
        (set-dli base new-dli)
        (loop for c in (immediate-supers base)
          do (add-downlink (get-dli c) new-dli))
        new-dli)))

(defun make-dli (base)
  (let
      ((dli (make-dl-indiv :id (incf *dl-lattice-index*) :type base)))
    (loop for sc in (immediate-supers base)
      do (add-uplink dli (find-or-make-lattice-description-for-ref-category sc)))
    dli))

(defun add-downlink (dli down)
  (setf (gethash (find-or-make-dlvv-from-var-val :subc down) (dli-downlinks dli)) down))

(defun add-uplink (dli up)
  (setf (gethash (find-or-make-dlvv-from-var-val :superc up) (dli-uplinks dli)) up))
                 
(defun find-or-make-lattice-description-for-multi-categories (cat-list)
  (if (null (cdr cat-list))
      (fom-lattice-description (car cat-list))
      (find-or-make-dl-join cat-list)))

(defun find-or-make-dl-join (cats)
  (cond
   ((get-dli cats))
   ((cdr cats)
    (find-or-make-dl-join-2 (fom-lattice-description (car cats)) (car cats) 
                            (find-or-make-dl-join (cdr cats)) (cdr cats)))
   (t (fom-lattice-description (car cats)))))

(defun find-or-make-dl-join-2 (dl1 ref1 dltail reftail)
  (or
   (get-dli (cons ref1 reftail))
   (let
       ((new-dli (make-dl-indiv :id (incf *dl-lattice-index*) :type (cons ref1 reftail))))
     (set-dli (cons ref1 reftail) new-dli)
     (loop for up in (shared-supercs ref1 reftail) do (add-uplink new-dli (fom-lattice-description up)))
     (add-downlink new-dli dl1)
     (add-downlink new-dli dltail)
     new-dli)))

(defun shared-supercs (c1 c2)
  (if (consp c2)
      (intersection (immediate-supers c1)(shared-supercs (car c2) (cdr c2)))
      (immediate-supers c1)))

(defun find-or-make-lattice-description-for-individual (base)
  (or
   (get-dli base)
   (if
    (memq category::collection (indiv-type base)) ;; likely a conjunction
    (find-or-make-lattice-description-for-collection base) ;; not quite right -- ehat to do here?
    (let* ((current-dli (find-or-make-lattice-description-for-multi-categories (indiv-type base))))
      ;; bindings = NIL can happen for VGs -- possibly because of the creation of an individual for the referent-category
      ;;  in the interpretation process
      (loop for b in (filter-bindings (indiv-binds base)) 
        do (setq current-dli (find-or-make-lattice-subordinate current-dli b)))
      (set-dli base current-dli)))))

(defun find-or-make-lattice-description-for-collection (indiv-collection)
  (let
      ((new-dli (make-dl-indiv :id (incf *dl-lattice-index*) :type (indiv-type indiv-collection))))
      (add-uplink new-dli (find-or-make-dl-join (indiv-type indiv-collection)))
    (loop for member in (value-of 'members indiv-collection)
      do
      (add-downlink new-dli (fom-lattice-description member)))
    new-dli))

(defun filter-bindings (bindings)
  (declare (special bindings))
  (loop for b in bindings
    unless (memq (var-name (binding-variable b)) '(has-determiner value)) ;; value is bound in items of type number
    collect b))

(defun immediate-supers (c)
  (let*
      ((lp (cat-lattice-position c)) ; 
       (mixins (cat-mix-ins c)))
    (if (and
         (lattice-point-p lp)
         (lp-super-category lp))
        (cons (lp-super-category lp) mixins)
        mixins)))

(defun find-or-make-lattice-subordinate (parent binding)
  (declare (special parent binding))
  (let*
      ((dl-vv (find-or-make-dlvv binding))
       (downlinks (dli-downlinks parent)))
    (or
     (gethash dl-vv downlinks) ;; already there in the hierarchy
     (let
         ((new-child (make-dl-indiv :id (incf *dl-lattice-index*)
                                    :type (dli-type parent)
                                    :binds (cons dl-vv (dli-binds parent)))))
       (setf (gethash dl-vv downlinks) new-child)
       (link-to-other-parents new-child parent binding)
       (link-to-existing-children new-child parent binding)
       new-child))))


;;;;; KEY METHODS TO BE WRITTEN ;;;;;;;
(defun link-to-other-parents (new-child parent binding) ;; to be written
  (declare (ignore new-child parent binding))
  nil)

(defun link-to-existing-children (new-child parent binding) ;; to be written
  (declare (ignore new-child parent binding))
  nil)

(defun head-referent? (edge &optional referent)
  (when (and (null referent) edge (edge-referent edge))
    (setq referent (edge-referent edge)))
  (when
      (and edge referent)
    (let
        ((left (edge-left-daughter edge))
         (right (edge-right-daughter edge)))
      (cond
       ((and (edge-p left) (same-category? (edge-referent left) referent))
        (edge-referent left))
       ((and (edge-p right) (same-category? (edge-referent right) referent))
        (edge-referent right))))))

(defun same-category? (daughter-ref ref)
  (or
   (and
    (category-p daughter-ref)
    (itypep ref daughter-ref)))
  (or
   (and
    (individual-p daughter-ref)
    (equal (indiv-type daughter-ref)
           (indiv-type ref)))))

(defparameter *dlis* nil)
(defparameter *bmax* 0)
(defparameter *maxb* nil)
(defparameter *ref-counts* (make-hash-table))

(defun survey-bindings ()
  (setq *dlis* nil)
  (maphash #'(lambda(e dli)(declare (ignore e))(push dli *dlis*)) *lattice-ht*)
  (format t "There are ~S dlis" (length *dlis*))
  (setq *bmax* 0)
  (setq *maxb* nil)
  (loop for d in *dlis*
    do
    (when (> (length (dli-binds d)) *bmax*) (setq *bmax* (length (dli-binds d)))(setq *maxb* d))
    (push d (gethash (length (gethash d *source-ht*)) *ref-counts*)))) ; 
