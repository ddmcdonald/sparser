;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "lattice-operations"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.0 May 2015

;; initiated in May 2015
;; Code to place referents in a description lattice to facilitate anaphora and other reasoning
;; 5/30/2015 added a bunch more functionality to description (not-yet-quite-a)lattice

(in-package :sparser)

(defvar category::top)
(defvar category::collection)

(defstruct (dl-indiv
            (:include unit)
            (:conc-name #:dli-)
            (:print-function print-dl-indiv)
            )

  id ;; an arbitrary number used for accessing the lp
  type
  binds
  downlinks
   ;; An alist keyed on {category, variable} that takes us to
   ;; one or more lattice points that bind one more variable
   ;; than is bound here.

  uplinks
   ;; another such alist.
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


(defstruct (dl-variable+value
            (:include unit)
            (:conc-name #:dlvv-)
            (:print-function print-dl-variable+value-structure)
            )
  variable
  value
)

(defun print-dl-variable+value-structure (dl-vv stream depth)
  (declare (ignore depth))
  (let ((*print-short* t))
    (format stream "#<dl-vv ~a + ~a>"
            (string-downcase (symbol-name (var-name (dlvv-variable dl-vv))))
            (dlvv-value dl-vv))))



(defparameter *lattice-ht* (make-hash-table :size 10000)
  "This is the initial way that edge-referent's are linked to the structures that are in the lattice.
   A bit slower than putting a field in the referent, but applicable to all referents, and does not change their structure.")

(defun get-dli (ref)
  (gethash ref *lattice-ht*))

(defparameter *source-ht* (make-hash-table :size 5000))

(defun set-dli (ref dli)
  (push ref (gethash dli *source-ht*))
  (setf (gethash ref *lattice-ht*) dli))


(defparameter *dl-lattice-index* 0)
(defparameter *dl-lattice-top* nil)


(defparameter *dl-vv-from-variable* (make-hash-table :size 500))
(defun find-or-make-dlvv-ht-from-variable (variable)
  (let
      ((ht (gethash variable *dl-vv-from-variable*)))
    (or
     ht
     (setf (gethash variable *dl-vv-from-variable*)
           (make-hash-table :size 100)))))

(defun find-or-make-dlvv (binding)
  (let*
      ((var (binding-variable binding))
       (val (binding-value binding))
       (val-dli
        (or
         (get-dli val)
         ;; otherwise assume that it is a word, or another non-KRISP item
         val)))
    (declare (special var val val-dli))
    (cond
     ((null val-dli)
      (break "can't find the description lattice individual for ~s" val-dli))
     (t
      (let
          ((var-ht (find-or-make-dlvv-ht-from-variable var))) ;; guaranteed to return a hash-table
        (or
         (gethash val-dli var-ht) ;; found the unique dlvv
         (setf (gethash val-dli var-ht)
               (make-dl-variable+value :variable var :value val-dli))))))))



(defparameter *complete-interps* nil)
(defparameter *no-description-lattice* t)

(defun place-referent-in-lattice (referent edge)
  (declare (special referent edge))
  (if *no-description-lattice*
      referent

      (when referent
        (if (or (individual-p referent) (referential-category-p referent))
            (let*
                ((base-and-new-bindings (base-and-new-bindings referent edge))
                 (lattice-description
                  (find-or-make-lattice-description base-and-new-bindings)))

              (push base-and-new-bindings *complete-interps*)
              (set-dli referent lattice-description)
              referent)
            referent))))


(defun find-or-make-lattice-description (base-and-new-bindings)
  (declare (special base-and-new-bindings))
  ;; This next piece of code is just to avoid load-time dependencies between the creation of category::top and
  ;;  loading this file
  (unless *dl-lattice-top*
    (setq *dl-lattice-top* (make-dl-indiv :id 0 :type category::top))
    (set-dli category::top *dl-lattice-top*))

  (let*
      ((base (car base-and-new-bindings))
       (bindings (cdr base-and-new-bindings))
       (base-dli
        (or
         (get-dli base)
         (cond
          ((referential-category-p base)
           (find-or-make-lattice-description-for-ref-category base))
          ((individual-p base)
           (cond
            ((memq category::collection (indiv-type base)) ;; likely a conjunction
             (set-dli
              base
              (find-or-make-lattice-description-for-ref-category category::collection))
             (get-dli base))
            ((filter-bindings (indiv-binds base))
             ;;(ccl::break "individual without dli: ~s" base) PUNT!!
             (set-dli
              base
              (find-or-make-lattice-description-for-ref-category category::top))
             (get-dli base))
            (t
             ;; this can happen for VGs -- possibly because of the creation of an individual for the referent-category
             ;;  in the interpretation process
             (set-dli
              base
              (find-or-make-lattice-description-for-ref-category (car (indiv-type base))))
             (get-dli base))))
          (t
           (lsp-break "what type of base is this? ~s" base)
           ))))
       (current-dli base-dli))
    (declare (special base bindings base-dll current-dll))
    (loop for b in bindings
      do
      (setq current-dli
            (find-or-make-lattice-subordinate current-dli b)))
    current-dli))


(defun find-or-make-lattice-description-for-ref-category (base)
  (if (get-dli base)
      (get-dli base)
      (progn
        (set-dli base
                 (make-dl-indiv :id (incf *dl-lattice-index*)
                                :type base
                                :uplinks (loop for c in (immediate-supers base)
                                           collect
                                           (list nil (find-or-make-lattice-description-for-ref-category c)))
                                :binds nil))
        (loop for c in (immediate-supers base)
          do
          (down-link-if-necessary (get-dli c)
                                  (get-dli base)))
        (get-dli base))))

(defun down-link-if-necessary (up down)
  (let
      ((subc-downlinks (assoc :subc (dli-downlinks up))))
    (cond
     ((null subc-downlinks)
      (push `(:subc (,down)) (dli-downlinks up)))
     ((not (memq down (second subc-downlinks)))
      (push down (second subc-downlinks))))))

(defun immediate-supers (c)
  (let*
      ((lp (cat-lattice-position c))
       (mixins (cat-mix-ins c)))
    (if (and
         (lattice-point-p lp)
         (lp-super-category lp))
        (cons (lp-super-category lp) mixins)
        mixins)))

(defun  find-or-make-lattice-subordinate (parent binding)
  (declare (special parent binding))
  (let*
      ((dl-vv (find-or-make-dlvv binding))
       (var-subs
        (or
         (assoc (binding-variable binding) (dli-downlinks parent))
         (progn
           (push (list (binding-variable binding) nil) (dli-downlinks parent))
           (assoc (binding-variable binding) (dli-downlinks parent)))))
       (existing-subordinate
        (second
         (assoc (binding-value binding) (second var-subs)))))
    (declare (special dl-vv var-subs existing-subordinate))
   (or
     existing-subordinate
     (let
         ((new-child (make-dl-indiv :id (incf *dl-lattice-index*)
                                    :type (dli-type parent)
                                    :uplinks (list (list dl-vv parent))
                                    :binds (cons dl-vv (dli-binds parent)))))
       (push (list (binding-value binding) new-child) (second var-subs))
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


(defun base-and-new-bindings (referent edge)
  (declare (special referent edge))
  (let
      ((hr (head-referent? edge referent))
       (er referent ;;(edge-referent edge)
           ))
    (declare (special hr er))
    (let*
        ((hr-bindings
          (when (individual-p hr)
            (filter-bindings (indiv-binds hr))))
         (e-bindings
          (when (individual-p er)
            (filter-bindings (indiv-binds er))))
         (new-bindings
          (loop for b in e-bindings
            when
            (not
             (loop for hb in hr-bindings
               thereis
               (and
                (eq (binding-variable hb)(binding-variable b))
                (eq (binding-value hb) (binding-value b)))))
            collect b)))
      (declare (special hr-bindings e-bindings new-bindings))
      (when (> (length new-bindings) 4)
        (lsp-break "too many incremental bindings"))
      (cond
       ((or
         (null er)
         (and (not (individual-p er))
              (not (referential-category-p er))))
        nil)
       (hr
        (cons hr new-bindings))
       ((individual-p er)
        (when (> (length e-bindings) 4)
          (lsp-break "too many individual bindings"))
        (cons (car (indiv-type er))
              e-bindings))
       ((referential-category-p er)
        (list er))
       (t
        (lsp-break "banb: what do I do with ~s " er)
        )))))

(defun filter-bindings (bindings)
  (declare (special bindings))
  (loop for b in bindings
    unless
    (memq (var-name (binding-variable b)) '(has-determiner value)) ;; value is bound in items of type number
    collect b))


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
    (push d (gethash (length (gethash d *source-ht*)) *ref-counts*))))
