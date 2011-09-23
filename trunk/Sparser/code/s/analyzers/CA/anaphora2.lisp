;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "anaphora"
;;;   Module:  "analyzers;CA:"
;;;  Version:  2.0 August 1994

;; new design initiated 7/14/92 v2.3
;; 1.1 (6/17/93) bringing it into sync with Krisp
;; 1.2 (12/7) put in stub for section-markers. 1/7/94 and for simple categories
;;      for name/unknown-pattern  7/14 and polywords
;; 1.3 (7/22) added trap for inappropriate category keys and put in real multiple
;;      instantiations
;; 2.0 (8/29) added facility to keep individuals with reaped edges in sync with
;;      text-view indexes -- changed storage from position indexes to real 
;;      position objects.

(in-package :sparser)


#|  This is a record of the location of the individuals mentioned in the
  text, organized first by prime type, then by the specific object
  and then by recency of mention.  All instances are recorded, with 
  the location given by the numbers of the start and end positions of 
  the maximal edge with the object as its referent.
|#

;;;----------
;;; globals
;;;----------

(defparameter *objects-in-the-discourse* (make-hash-table :test #'eq))


;;;---------------
;;; initializing
;;;---------------

(defun initialize-discourse-history ()
  (let ((cell-count-at-start (cons-resource-remaining)))
    (maphash #'clear-discourse-history-entry
             *objects-in-the-discourse*)
    (values cell-count-at-start
            (cons-resource-remaining))))

       
(defun clear-discourse-history-entry (type entry)  ;; tag, value
  ;; deallocate the conses in the entry, then flush the entry
  (let ((cell-count-at-start (cons-resource-remaining)))
    (dolist (instance entry)
      (clear-dh-instance instance))
    (deallocate-klist entry)
    (remhash type *objects-in-the-discourse*)
    (values cell-count-at-start
            (cons-resource-remaining))))


(defun clear-dh-instance (klist)
  (let ((individual (first klist))
        (circular-forward-pointers (second klist))
        (instance-data (cddr klist)))
    (deallocate-klist instance-data)
    (deallocate-cons


;;;----------
;;; printers
;;;----------

(defun pname-of-category (c)
  (unless (or (referential-category-p c)
              (mixin-category-p c)
              (category-p c))
    (break "~A is not a category or of the expected specialization" c))
  (symbol-name (cat-symbol c)))


(defun object-types-in-discourse-history ()
  (let ( type-list )
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key type-list))
             *objects-in-the-discourse*)
    (sort type-list #'string< :key #'pname-of-category)))


(defun print-discourse-history (&optional (stream *standard-output*))
  (dolist (type (object-types-in-discourse-history))
    (format stream "~&~%~A:~%" type)
    (dolist (sub-entry (discourse-entry type))
      (format stream "~&   ~A   " (car sub-entry))
      (dolist (pos-cons (cdr sub-entry))
        (format stream "~30,3t~A-~A"
                (car pos-cons) (cdr pos-cons)))))
  (format stream "~%~%~%~%"))


;;;----------
;;; creation
;;;----------

(defun add-subsuming-object-to-discourse-history (edge)
  ;; called from Complete.
  (let ((obj (edge-referent edge))
        (start-pos (ev-position (edge-starts-at edge)))
        (end-pos   (ev-position (edge-ends-at edge))))

    (when obj
      (etypecase obj
        (individual
         (let* ((primary-category (car (indiv-type obj)))
                (other-categories (cdr (indiv-type obj)))
                (instantiates
                 (cat-ops-instantiate
                  (cat-operations primary-category)))
                cat-to-instantiate )

           (when instantiates
             (update-discourse-history instantiates
                                       obj
                                       start-pos end-pos)
             (dolist (category other-categories)
               (when category
                 ;; there's a Nil in the list sometimes
                 (when (setq cat-to-instantiate
                             (cat-ops-instantiate
                              (cat-operations category)))
                   (update-discourse-history cat-to-instantiate
                                             obj
                                             start-pos end-pos)))))))
        (referential-category )
        (mixin-category )
        (category )
        (section-marker )
        (keyword )
        (word )
        (polyword )
        ))))


;(setq *trace-discourse-history* t)
;(setq *trace-discourse-history* nil)


(defun update-discourse-history (category instance start-pos end-pos)
  ;; called from Add-subsuming-object-to-discourse-history.
  ;; Looks up the entry for instances of this category and
  ;; adds (or extends) the discourse history accordingly
  (if (consp category)
    ;; then it is marked to be indexed under several categories  
    ;; not just one
    (dolist (c category)
      (update-discourse-history c instance start-pos end-pos))

    (else
      (when *trace-discourse-history*
        (format t "~&An instance of ~A from ~A to ~A~%"
                category start-pos end-pos))
      
      (let ((entry (discourse-entry category)))
        (if entry
          (extend-entry-in-discourse-history
           entry category instance start-pos end-pos)
          (create-entry-in-discourse-history
           category instance start-pos end-pos))
        
        category ))))



;;;--------
;;; lookup
;;;--------

(defun discourse-entry (category)
  (gethash category *objects-in-the-discourse*))



(defun create-entry-in-discourse-history (category individual
                                          start-pos end-pos)
  (unless (referential-category-p category)
    (break "Key is not a referential category:~%    ~A" category))

  ;; This is the first time there has been an individual of this
  ;; category in the discourse.  We set up the alist of individuals
  ;; with just this case

  (let* ((entry-list
          (kcons individual
                 (kcons nil ;; cell for ptr to last-cell
                        (kcons (kcons start-pos end-pos)
                               nil))))
         (alist (kcons entry-list                
                       nil)))

    (rplaca (cdr entry-list)
            (kcons (last entry-list)
                   nil))

    ;(break "new category entry")

    (setf (gethash category *objects-in-the-discourse*)
          alist)))


           
(defun new-object-of-established-category (category categories-entry
                                           individual start-pos end-pos)

  ;; We have had individuals of this category before. This one is
  ;; new and this is its first instance.
  
  (let ((entry-list
         (kcons individual
                (kcons nil
                       (kcons (kcons start-pos end-pos)
                              nil)))))

    (rplaca (cdr entry-list)
            (kcons (last entry-list)
                   nil))

    ;(break)

    (setf (gethash category *objects-in-the-discourse*)
          (kcons entry-list
                 categories-entry))))



(defun new-instance-of-known-object (individuals-entry start-pos end-pos)
  ;; We've seen this individual before. This is a new instance
  ;; Instance records appear in the entry in the order they appeared
  ;; in the text. This means that the record for this new instance
  ;; goes onto the end of the list -- since the list can get significantly
  ;; long, we have stored a pointer to the last cell of the list.
  ;; The pointer is the second item in the list, and it lets extend
  ;; the list and then gets updated itself.  N.b. the other item in
  ;; this pointer field points to the earliest instance whose position
  ;; is still in the chart.
  (let ((last-cell (car (second individuals-entry)))
        (initial-length (length individuals-entry)))
    ;(format t "~&~A   initial length = ~A~%"
    ;        (first individuals-entry) (length individuals-entry))
    (rplacd last-cell
            (kcons (kcons start-pos end-pos)
                   nil))
    ;(break "middle")
    (rplaca (cdr individuals-entry)
            (kcons (cdr last-cell)
                   nil))
    ;(format t "~&                   final length = ~A" (length individuals-entry))
    ;(when (y-or-n-p "break?")
    ;  (break "after new-instance"))
    (unless (= (length individuals-entry)
               (1+ initial-length))
      (break "Entry didn't grow: ~A~%" (first individuals-entry)))
    ))



(defun extend-entry-in-discourse-history (entry category
                                          individual start-pos end-pos)

  ;; There have been earlier instances of indivdiuals of this category
  ;; in the discourse history. This may be a further instance of an
  ;; already entered individual or it may be a new individual, so we
  ;; dispatch accordingly.

  (let ( individuals-entry )
    (cond ((eq (caar entry) individual)
           ;; The object was the very last one of its type to be added.
           ;; Check for this being a larger edge over the same object
           (let* ((existing-entry (car entry))
                  (last-pos (caar (second existing-entry)))
                  (last-start# (pos-token-index (car last-pos)))
                  (last-end#   (pos-token-index (cdr last-pos)))
                  (start# (pos-token-index start-pos))
                  (end# (pos-token-index end-pos)))

             (if (or (eql start# last-start#)
                     (eql end#   last-end#)
                     (and (< start# last-start#)
                          (> end#   last-end#)))
               (then ;; this instance subsumes the prior one
                 (rplaca last-pos start-pos)
                 (rplacd last-pos end-pos))

               ;; otherwise it's a new new instance
               (new-instance-of-known-object
                existing-entry start-pos end-pos))))

          ((setq individuals-entry
                 (assoc individual entry :test #'eq))
           (new-instance-of-known-object
            individuals-entry start-pos end-pos))

          (t ;; a new object of this type
           (new-object-of-established-category
            category entry individual start-pos end-pos)))))



;;;--------------------------------
;;; effects of recycling positions
;;;--------------------------------

(defun long-term-ify/edge-referents/at (position-to-clear)
  ;; called from Bump-&-store-word. The position is the one about
  ;; to be recycled -- this means that references to its indexes
  ;; will become invalid, so we have to replace them with something
  ;; longer term.  If the workbench is up, we use the display indexes
  ;; into the text-view pane; othewise we use the token indexes.
  (let* ((ev (pos-starts-here position-to-clear))
         (edges-array (ev-edge-vector ev))
         (count (ev-number-of-edges ev))
         edge  referent )
    (when count
      (dotimes (i count)
        (setq referent
              (edge-referent (setq edge (elt edges-array i))))
        (when (individual-p referent)
          (long-term-ify/individual referent
                                    (pos-edge-starts-at edge)
                                    (pos-edge-ends-at edge)))))))


(defun long-term-ify/individual (i start-pos end-pos)
  (break))
  
      



;;;------------------
;;; Access protocols
;;;------------------

(defun most-recent-mention (category)
  nil )

