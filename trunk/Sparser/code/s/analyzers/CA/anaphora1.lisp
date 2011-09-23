;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "anaphora"
;;;   Module:  "analyzers;CA:"
;;;  Version:  1.3 July 1994

;; new design initiated 7/14/92 v2.3
;; 1.1 (6/17/93) bringing it into sync with Krisp
;; 1.2 (12/7) put in stub for section-markers. 1/7/94 and for simple categories
;;      for name/unknown-pattern  7/14 and polywords
;; 1.3 (7/22) added trap for inappropriate category keys and put in real multiple
;;      instantiations

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

(defun clear-discourse-history-entry (type entry)  ;; tag, value
  ;; deallocate the conses in the entry, then flush the entry
  (let ((cell-count-at-start (cons-resource-remaining)))
    (deallocate-cons-tree entry)
    (remhash type *objects-in-the-discourse*)
    (values cell-count-at-start
            (cons-resource-remaining))))

       
(defun initialize-discourse-history ()
  (let ((cell-count-at-start (cons-resource-remaining)))
    (maphash #'clear-discourse-history-entry
             *objects-in-the-discourse*)
    (values cell-count-at-start
            (cons-resource-remaining))))


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
        (start (pos-token-index (ev-position (edge-starts-at edge))))
        (end   (pos-token-index (ev-position (edge-ends-at edge)))))

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
                                       start end)
             (dolist (category other-categories)
               (when category
                 ;; there's a Nil in the list sometimes
                 (when (setq cat-to-instantiate
                             (cat-ops-instantiate
                              (cat-operations category)))
                   (update-discourse-history cat-to-instantiate
                                             obj
                                             start end)))))))
        (referential-category )
        (mixin-category )
        (category )
        (word )
        (section-marker )
        (keyword )
        (polyword )
        ))))


;(setq *trace-discourse-history* t)
;(setq *trace-discourse-history* nil)


(defun update-discourse-history (key ref start end)
  (if (consp key)
    ;; then it is marked to be indexed under several categories  
    ;; not just one
    (dolist (category key)
      (update-discourse-history category ref start end))

    (else
      (when *trace-discourse-history*
        (format t "~&An instance of ~A from ~A to ~A~%"
                key start end))
      
      (let ((entry (discourse-entry key)))
        (if entry
          (extend-entry-in-discourse-history entry key ref start end)
          (create-entry-in-discourse-history key ref start end))
        
        key ))))


;;;------------
;;; enablement
;;;------------
;; obsolete
(defun leaves-anaphors (category)
  (format t "~&~%~%!!!!! call to Leaves-anaphors !!!!!~%~%"))


;;;--------
;;; lookup
;;;--------

(defun discourse-entry (category)
  (gethash category *objects-in-the-discourse*))


(defun create-entry-in-discourse-history (key object start end)
  (unless (referential-category-p key)
    (break "Key is not a referential category:~%    ~A" key))
  (setf (gethash key *objects-in-the-discourse*)
        (kcons (kcons object
                      (kcons (kcons start end)
                             nil))
               nil)))


(defun extend-entry-in-discourse-history (type-entry type
                                          object start end)
  (let ( object-entry )
    (cond ((eq (caar type-entry) object)
           ;; The object was the very last one of its type to be added.
           ;; Check for this being a larger edge over the same object
           (let* ((prior-entry (car type-entry))
                  (last-pos (cadr prior-entry))
                  (last-start (car last-pos))
                  (last-end   (cdr last-pos)))


             (if (or (eql start last-start)
                     (eql end   last-end)
                     (and (< start last-start)
                          (> end   last-end)))
               (then ;; this instance subsumes the prior one
                 (rplaca last-pos start)
                 (rplacd last-pos end))
               (new-instance-of-known-object prior-entry start end))))

          ((setq object-entry (assoc object type-entry))
           ;; the entry is ( <obj> . <pos n> <pos n-1> ... <pos 1> )
           (new-instance-of-known-object object-entry start end))

          (t ;; a new object of this type
           (new-object-of-established-type
            type type-entry object start end)))))

           

(defun new-instance-of-known-object (object-entry start end)
  (rplacd object-entry
          (kcons (kcons start end)
                 (cdr object-entry))))

(defun new-object-of-established-type (type type-entry object start end)
  (setf (gethash type *objects-in-the-discourse*)
        (kcons (kcons object
                      (kcons (kcons start end)
                             nil))
               type-entry)))



;;;------------------
;;; Access protocols
;;;------------------

(defun most-recent-mention (category)
  nil )

