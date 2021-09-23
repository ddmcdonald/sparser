;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "reclaim"
;;;   Module:  "objects;model:individuals:"
;;;  version:  1.4 November 2015

;; initiated 7/21/92 v2.3. Fleshed out 8/8/94. 
;; 10/3 Added some useful collectors.  11/16 added Delete/individual
;; 0.1 (4/3/95) made Zero-category-index sensitive to hashtables
;;     (4/20) added Add-permanent-individual and cleaned up a little
;; 1.0 (5/13/95) Added notion of a permanent individual that appears on a separate
;;      list and isn't recycled.
;; 1.1 (7/7) put a patch in Additional-categories.. when the itype-of returned nil.
;;     (9/30/99) Somewhen in the interim I null-ified declare-all-existing-individuals-
;;      permanent by doing a return-from before it had done anything. No record available
;;      of why. Put it all back today and nothing untoward happened when I ran it.
;;     (9/26/11) Fixed zero-category-index for the case of the category being
;;      a lattice-point.
;;     (2/7/13) Found case of a category assigned to lists having a hash-table. 
;;      Put in a catch in the iterator so reclamation can continue.
;; 1.2 (6/15/13) Fixed tricky bug in making objects permanent exposed by
;;      including instances from hashtables.
;; 1.3 (8/19/13) Added facility for making later call to make-permanent
;;      for use at the bottom of everything. 3/27/15 Minor inline doc.
;; 1.4 (5/1/15) Since it had worked for Rusty trusted it and turned off the
;;      examination breaks in add-permanent-individual. 
;;     (11/27/15 Removed the announcement of how many individuals were in
;;      a particular category by declare-category-instances-permanent to
;;      reduce the load-time chatter.

(in-package :sparser)


;;;-------------------------------
;;; marking permanent individuals
;;;-------------------------------

(defparameter *1st-permanent-individual/all-categories* nil
  "A pointer into the list of active individuals, i.e. it points
   to one of those individuals, that is used when reclaiming to
   indicate where to stop when cdr'ing down that list.")

(defvar *rule-count-at-make-permanent* 0
  "This is set by declare-all-existing-individuals-permanent
   to the rule count at the time. It's checked and acted on
   by redeclare-permanent-individuals-if-necessary")

;;--- Toplevel calls

(defun declare-all-existing-individuals-permanent ()
  "Called from toplevel at strategic moments, e.g., after loading dossiers."
  (dolist (c *referential-categories*)
    (declare-category-instances-permanent c))
  (setq *1st-permanent-individual/all-categories* (first *active-individuals*)
        *rule-count-at-make-permanent* *next-number-for-phrase-structure-rule*)
  (initialize-bound-in-reclaimation))


(defun declare-category-instances-permanent (category)
  "Subroutine of declare-all-existing-individuals-permanent."
  (check-type category category "a category")
  (let ((instances (all-instances category)))
    (when instances
      (setf (get-tag :1st-permanent-individual category) (first instances)
            (get-tag :permanent-individuals category) instances))))


(defun redeclare-permanent-individuals-if-necessary ()
  "Called from everything at the very end."
  (unless (= *rule-count-at-make-permanent*
             *next-number-for-phrase-structure-rule*)
    ;; rules have been added, which likely means that more
    ;; individuals have also been added.
    (declare-all-existing-individuals-permanent)))


(defun collect-new-individuals ()
  (let ( list )
    (dolist (i *active-individuals*)
      (when (eq i *1st-permanent-individual/all-categories*)
        (return))
      (push i list))
    (nreverse list)))

;;--- Internal calls

(defun add-permanent-individual (individual category)
  "Called indirectly from index/individual whenever the category involved
indicates that all its instances are to be permanent. The individual gets
put on its category's permanent list."
  (check-type individual (satisfies permanent-individual?) "permanent")
  (check-type category category "a category")
  (note-permanence-of-categorys-individuals category)
  (push individual (get-tag :permanent-individuals category))
  (setf (get-tag :1st-permanent-individual category) individual))


;;;---------------------------------------------------
;;; driver -- point of entry for per-run reclaimation
;;;---------------------------------------------------

(defparameter *trace-reclaimation* nil)
(defun trace-reclaimation ()
  (setq *trace-reclaimation* t))
(defun untrace-reclaimation ()
  (setq *trace-reclaimation* nil))

(defparameter *reclaimation-pauses* nil)
(defun step-reclaimation ()
  (setq *reclaimation-pauses* t))
(defun unstep-reclaimation ()
  (setq *reclaimation-pauses* nil))

(defun reclaim-temporary-individuals () ; is this name easier to remember?
  "An alias for reap-individuals."
  (reap-individuals))

(defun reap-individuals ()
  "Called from per-article-initializations -- zeros everything
that was instantiated in the last run."
  (declare (special *objects-in-the-discourse*))
  (let ((type-list
         (additional-categories-of-active-individuals
          (all-hash-keys *objects-in-the-discourse*))))
    (when *trace-reclaimation*
      (if type-list
        (format t "~&Categories to reap: ~a~%" type-list)
        (format t "~&Nothing in the discourse history.~%")))

    (loop for category in type-list
          unless (individuals-of-this-category-are-permanent? category)
            nconc (reclaim-all-instances category) into individuals-touched
          finally
            (when *trace-reclaimation*
              (format t "~&Reap touched ~d individuals.~%"
                      (length individuals-touched)))
            (cleanup-bindings-fields individuals-touched))

    (did-we-forget-any-unreaped-individuals?)
    (when *trace-reclaimation*
      (format t "~%----- reclaimation finished ------~%~%"))
    (when *reclaimation-pauses* (break))))


(defparameter *interesting-categories*
  '( text-term  segment
     paired-in-long-segment  pair-term
     genitive  subject-verb
     ))

(defun report-active-count/interesting-categories ()
  (let ( category )
    (dolist (symbol *interesting-categories*)
      (setq category (category-named symbol))
      (format t "~&  ~A active in ~A"
              (length (all-instances category))
              category))
    (terpri)))


(defun did-we-forget-any-unreaped-individuals? ()
  "Called from reap-individuals as a debugging aid."
  (let ((count 0)
        missed-by-category-driven-reap )
    (do* ((list *active-individuals* (cdr list))
          (i (car list) (car list)))
        ((eq i *1st-permanent-individual/all-categories*)
         (setq *active-individuals* list))
      (incf count)
      (push i missed-by-category-driven-reap))
    (when *trace-reclaimation*
      (format t "~%-------------------------------~
                 ~% ~A individuals missed:~%" count)
      (pl missed-by-category-driven-reap))
    count ))


(defun additional-categories-of-active-individuals (original-list)
  "Called from reap-individuals to identify additional categories
of individuals that weren't identified from the discourse history,
e.g. when anaphora is turned off."
  (let ((augmented-list original-list)
        (count 0))
    (dolist (i *active-individuals*)
      (when (eq i *1st-permanent-individual/all-categories*)
        (when *trace-reclaimation*
          (format t "Scanned ~d temporary individuals.~%" count))
        (return))
      (incf count)
      (when *trace-reclaimation*
        (format t "~&Tentatively reclaiming ~a~%" i))
      (pushnew (itype-of i) augmented-list))
    augmented-list ))


;;;-------------------------------------
;;; tailored zeroing of bound-in fields
;;;-------------------------------------

(defvar *do-not-zero-bound-in* (make-hash-table :size 10000 :test #'eq)
  "Populated by initialize-bound-in-reclaimation at startup")

(defvar *individuals-bound-onto* nil
  "Used by push-binding-onto-bound-in-field to keep track of every
   individual that 
Used by reclaim operation")

(defun initialize-bound-in-reclaimation ()
  "called by declare-all-existing-individuals-permanent which is called
   at the end of loading the grammar. Used to set the initial conditions
   for tracking the bound-in operation so we can maintain an accurate
   list. Go through the list accumulated during loading and push them
   into a hash table so we don't clear them."
  (loop for i in *individuals-bound-onto*
     do (setf (gethash i *do-not-zero-bound-in*) t))
  (setq *individuals-bound-onto* nil))


(defun zero-bound-in-fields ()
  "Called from clean-out-history-and-temp-objects with each call to
   per-article initialization. Cleans out the bound-in field of every
   individual that's been recorded as having one."
  (declare (special *individuals-bound-onto*))
  (loop for i in *individuals-bound-onto*
     unless (gethash i *do-not-zero-bound-in*)
     do (setf (indiv-bound-in i) nil))
  (setq *individuals-bound-onto* nil))


(defvar *permanent-bound-in-variables* nil)

(defun register-permanent-bound-in-variable (var-name cat-name)
  (let ((variable (find-variable-for-category var-name cat-name)))
    (push variable *permanent-bound-in-variables*)))

(defgeneric permanent-bound-in? (variable)
  (:documentation "Called by push-binding-onto-bound-in-field which
    normally adds the individual to *individuals-bound-onto* so they are
    stripped in the next run. If the variable of the binding is on this
    list we block that. Same thing as initialize-bound-in-reclaimation does.")
  (:method ((b binding))
    (permanent-bound-in? (binding-variable b)))
  (:method ((v lambda-variable))
    (memq v *permanent-bound-in-variables*)))


;;;--------------------------
;;; per-category entry point
;;;--------------------------

(defun reclaim-all-instances (category)
  "Deallocate all non-permanent individuals. Called from reap-individuals."
  (let ((list-of-individuals (all-instances category))
        (1st-permanent-individual (get-tag :1st-permanent-individual category))
        now-looking-at-permanent-indiv
        all-values  all-bodies
        values  bodies )

    (when *trace-reclaimation*
      (format t "~&~%------------------------------~
                 ~%Reclaiming ~A  (~A)~%"
              category (length list-of-individuals)))

    (dolist (individual list-of-individuals)
      (when (eq individual 1st-permanent-individual)
        (setq now-looking-at-permanent-indiv t))

      (catch :reclaim-of-individual-failed 
        ;; indexing scheme mismatch happens with numbers somehow

        (if now-looking-at-permanent-indiv
          ;; permanent individuals keep their own bindings but may
          ;; have had some of those that they're bound-in deallocated
          ;; and so need to be cleaned up
          (push individual all-bodies)
          (else ;; relaim the individual
           (multiple-value-setq (values bodies)
             ;; these locals point to the units referenced in the
             ;; course of zeroing this individual
             (zero-out-individual individual category))
           (dolist (i values)
             (pushnew i all-values))
           (dolist (i bodies)
             (pushnew i all-bodies))))))

    (cond
     ((individuals-of-this-category-are-permanent? category)
      (when *trace-reclaimation*
        (format t "~&Retaining instances of ~a~%" category)))
     (t
      (when *trace-reclaimation*
        (format t "~&Zero'ing instances of ~a~%" category))
      (zero-category-index category 1st-permanent-individual)))

    (nconc all-values all-bodies)))


;;;----------------------------
;;; per-individual entry point
;;;----------------------------

(defun zero-out-individual (i c)
  "Called from reclaim-all-instances"
  (check-type i (not (satisfies permanent-individual?)) "temporary")
  (unless (eq (indiv-type i) :deallocated)
    (when *trace-reclaimation*
      (format t "~&Zeroing ~a~%" i))
    (unindex-individual i c)
    (multiple-value-bind (values bodies)
                         (zero-individuals-bindings
                          :binds (indiv-binds i)
                          :bound-in (indiv-bound-in i))
      (deallocate-individual i)
      (values values bodies))))


(defun delete/individual (i)
  "Generic call for doing it by hand."
  (zero-out-individual i (itype-of i)))


(defun zero-category-index (category 1st-permanent &optional do-permanent-too?)
  "Called from reclaim-all-instances after instances are zero'd."
  (cond (do-permanent-too? (reset-category-count category))
        (1st-permanent (reset-category-count category (indiv-id 1st-permanent)))
        (t (reset-category-count category)))

  (setf (get-tag :instances category)
        (cond (do-permanent-too? nil)
              (1st-permanent (get-tag :permanent-individuals category))
              (t nil)))

  (when do-permanent-too?
    (setf (get-tag :1st-permanent-individual category) nil)
    (setf (get-tag :permanent-individuals category) nil))

  (unless 1st-permanent
    (etypecase category
      (referential-category
       (if (hash-table-p (cat-instances category))
         (clrhash (cat-instances category))
         (setf (cat-instances category) nil)))
      (mixin-category nil)
      (lattice-point
       ;; appear to only use their plist
       (setf (get-tag :instances category) nil))))
    category)


;;;------------------------------------------------------
;;; cleaning up individuals affected by the reclaimation
;;;------------------------------------------------------

(defun cleanup-bindings-fields (list-of-individuals)
  "Called from reap-individuals"
  (dolist (i list-of-individuals)
    (clean-binds-field i)
    (clean-bound-in-field i)))


(defun clean-binds-field (i)
  (let ( still-viable-bindings )
    (dolist (b (indiv-binds i))
      (if (deallocated-binding? b)
        (when *trace-reclaimation*
          (format t "~&Dead binds #~A on ~A~%"
                  (binding-id b) i))
        (push b still-viable-bindings)))
    (setf (indiv-binds i) still-viable-bindings)))


(defun clean-bound-in-field (i)
  (let ( still-viable-bindings )
    (dolist (b (indiv-bound-in i))
      (if (deallocated-binding? b)
        (when *trace-reclaimation*
          (format t "~&Dead bound-in #~A on ~A~%"
                  (binding-id b) i))
        (push b still-viable-bindings)))
    (setf (indiv-bound-in i) still-viable-bindings)))

