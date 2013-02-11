;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "delete"
;;;   Module:  "objects;model:individuals:"
;;;  version:  February 2013

;; initiated 8/9/94 v2.3.  Tweeking ...8/18.  9/28 Added capacity to look for op
;; off of superc.   4/19/95 wrapped gates around the breaks
;; 1/11/11 Patched unindex-individual to not assume that the category has
;; and operations (DM&P issue). 2/7/13 Found case of a category assigned to lists
;; having a hash-table. Put in a throw so reclamation can continue.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun unindex-individual (i c)
  ;; called from Zero-out-individual as part of the reclaimation process
  (let* ((operations (cat-operations c))
         (unindex-fn
          (when operations (cat-ops-reclaim operations))))
    (cond
      ((null unindex-fn)
      ;; maybe it's inherited?
       (setq unindex-fn (inherited-operation/Reclaim c)))
      (unindex-fn
       (if (consp unindex-fn)
  	     (funcall (car unindex-fn) (cadr unindex-fn) i (cat-instances c) c)
         (funcall unindex-fn i (cat-instances c) c))))
    i ))


(defparameter *debug-individual-unindexing* nil)
(defun trace-unindexing ()
  (setq *debug-individual-unindexing* t))
(defun unTrace-unindexing ()
  (setq *debug-individual-unindexing* nil))



;;;--------------------------------------------------------------------
;;; cases corresponding to the different ways an individual is indexed
;;;--------------------------------------------------------------------

(defun delete/simple-list (i list category)
  ;; the individuals are threaded onto this list by kcons's, so we
  ;; can reclaim the kcons
  (unless (consp list)
    (push-debug `(,i ,list ,category))
    (cerror "Ignore the error and throw out of here"
            "Something strange was done in the indexing of ~a~
           ~%because it's specified to use a list,~%but instead ~
             of list we got a ~a" i (type-of list))
    (throw :reclaim-of-individual-failed nil))
  (if (eq i (first list))
    (then
      (setf (cat-instances category) (cdr list))
      (deallocate-kons list))

    (let* ((prior-cell list)
           (next-cell (cdr list))
           (next-individual (car next-cell)))
      (loop
        (when (null next-individual)
          (if *debug-individual-unindexing*
            (break "Couldn't find ~A among the instances" i)
            (return-from delete/simple-list)))
        (when (eq next-individual i)
          ;; splice it out
          (rplacd prior-cell
                  (cdr next-cell))
          (deallocate-kons next-cell)
          (return))
        (setq prior-cell next-cell
              next-cell (cdr next-cell)
              next-individual (car next-cell)))))
  i )



(defun delete/individual/key/hash (variable i table category)
  (let ((value (value-of variable i)))
    (unless value
      (when *debug-individual-unindexing*
        (break "The individual ~A~
                ~%has no value for the variable~%   ~A~
                ~%but it was supposed to~%~%" i variable))
      (return-from delete/individual/key/hash))

    (let ((it-was-there?
           ;; besides deleting, Remhash acts as a predicate as to whether
           ;; there was something in the table under that key
           (remhash value table)))
      (unless it-was-there?
        (when *debug-individual-unindexing*
          (break "There was no instance of ~A~
                  in the instances table of ~A~
                  to be deleted~%" i category))
        (return-from delete/individual/key/hash))
      i )))



(defun delete/individual/seq-keys (var-sequence i alist category)
  ;; the instances field is organized as an alist of alists -- as deep
  ;; as needed to accomodate the sequence of variables
  (declare (special *trace-reclaimation*))
  (when *trace-reclaimation*
    (format t "~%---- deleting from alist: ~A~%" i))
  (walk-alist/delete var-sequence alist i category))


(defun walk-alist/delete (variables alist individual c)
  (let* ((variable (pop variables))
         (value (value-of variable individual)))

    (when variable
      ;; 10/6 with "age" the wrong version of the variable is being used
      ;; and this is the patch
      (unless value
        (if *debug-individual-unindexing*
          (break "Threading bug?  There is no value for the variable~
                  ~%~A~%on the individual ~A~%even though that variable ~
                  is listed on the~%index sequence for ~A"
                 variable individual c)
          (return-from walk-alist/delete)))

      (let ((entry (assoc value alist)))
        (when (cdr entry)
          ;; timing wierdness? entry was reaped before we got to it
          (if variables
            ;; then the individual is deeper than this
            (walk-alist/delete variables (cdr entry) individual c)
            (else
              (if (eq (cdr entry) individual)
                ;; leave the entry's shell (depending upon the general property
                ;; of alists to push new values onto old), just remove the
                ;; individual
                (let ((cell entry))
                  (rplacd cell nil)
                  individual )
                
                (if (eq (cadr entry) individual)
                  ;; leave the shell as with other case
                  (rplacd entry nil)
                  
                  (if *debug-individual-unindexing*
                    (break "Expected to find the individual~
                            ~%          ~A~
                            ~%indexed at this entry but it isn't.~
                            ~%   entry: ~A~%"
                           individual entry)
                    (return-from walk-alist/delete)))))))))))

