;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "anaphora"
;;;   Module:  "analyzers;CA:"
;;;  Version:  3.4 September 2013

;; new design initiated 7/14/92 v2.3
;; 1.1 (6/17/93) bringing it into sync with Krisp
;; 1.2 (12/7) put in stub for section-markers. 1/7/94 and for simple categories
;;      for name/unknown-pattern  7/14 and polywords
;; 1.3 (7/22) added trap for inappropriate category keys and put in real multiple
;;      instantiations
;; 2.0 (8/29) added facility to keep individuals with reaped edges in sync with
;;      text-view indexes -- changed storage from position indexes to real 
;;      position objects.
;; 3.0 (8/30) backed out of use of shared structure with kcons cells
;;     (11/13) added Instance-history
;;     (11/21) added Remove-history-of-instance/edge and Remove-history-of-individual
;; 3.1 (12/19) commented out check break in Long-term-already-subsumed?
;; 3.2 (1/3/95) wrote Category-for-individuals-discourse-history to fix bug in
;;      removal code
;;     (6/22) wrote Most-recently-mentioned. 8/9 put an escape in it for
;;      refs so far out of bounds they aren't in the display anymore.
;;     (1/1/96) getting problems with Long-term protocol so added a check for
;;      that case to have a better error message. 1/16 tweeked Most-recently-mentioned
;; 3.3 (5/30) may have fixed that problem -- it involved the chart recycler and
;;      edge recycler -both- needing to know when an edge has been deactivated
;;      and from that fact that the long-term processing has already been done.
;;     (4/19/00) added composite-referent as trivial case in Add-subsuming-object-to-discourse-history
;; 3.4 (2/10/05) Removed it. Started taking psi seriously
;;     (11/1/06) Edge referent from dm&p is a cons (?!) put trap for it inside
;;      Add-subsuming-object-to-discourse-history
;;     (8/24/09) in the add-subsuming-object-to-discourse-history type dispatch
;;      commented out section-marker. It's not always loaded so need to conditionalize it.
;;     (9/1)  Added exception for
;;      external referents into add-subsuming-object-to-discourse-history
;;     (1/11/11) Patched check for operations of category to look first. Problem
;;      comes from category created by DM&P without all its parts.
;;     (9/6/13) Factored out position string printer and narrowed the output of
;;      the trace in update-discourse-history

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
  (setq  *objects-in-the-discourse*
         (make-hash-table :test #'eq)))

 #| Attempting to deallocate the kconses is leading to circularities
    in the kcons resource, so for the moment just flushing the whole
    table and leaving it to GC to handle
  (maphash #'clear-discourse-history-entry
             *objects-in-the-discourse*))|#

(defun clear-discourse-history-entry (category category-entry)  ;; tag, value
  ;; deallocate the conses in the entry, then flush the entry
  (break "category")
  ;(dolist (individual-entry category-entry)
  ;  (clear-individual-dh-entry individual-entry)
  ;  ;(break "after entry")
  ;  )
  (deallocate-klist category-entry)
  (break "after")
  (remhash category *objects-in-the-discourse*))


(defun clear-individual-dh-entry (klist)
  (let ((individual (kpop klist))
        (instance-records klist)
        data  start-data  end-data )
    (declare (ignore individual))
    (break "start")
    (dolist (record instance-records)
      (cond ((eq (car record) :display-index)
             (setq data (cdr record))
             (setq start-data (car data)
                   end-data (cdr data))
             (break "2")
             (deallocate-kons start-data)
             (deallocate-kons end-data)
             (break "3")
             (deallocate-kons data)
             (deallocate-kons record)
             (break "4"))

            ((position-p (car record))
             ;(deallocate-kons record)
             ;(break "a")
             )))
    ;(break "after do")
    ;(deallocate-klist instance-records)
    ))




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

(defun print-category-discourse-history (category 
                                         &optional (stream *standard-output*))
  (format stream "~&~%~A:~%" category)
  (dolist (sub-entry (discourse-entry category))
    (format stream "~&   ~A   " (car sub-entry))
    (dolist (pos-cons (cdr sub-entry))
      (format stream "~&~15,3t~a - ~a"
              (string-for-recycled-pos (car pos-cons))
              (string-for-recycled-pos (cdr pos-cons))))))

(defun string-for-recycled-pos (p)
  "Returns a compact string for the position with actual and
   absolute indexes"
  (let ((token-index (pos-token-index p))  ;; always extends
        (array-index (pos-array-index p))) ;; recycles
    (if (>= token-index *number-of-positions-in-the-chart*)
      (format nil "p~a(~a)" token-index array-index)
      (format nil "p~a" array-index))))

;;;----------
;;; creation
;;;----------

(defun add-subsuming-object-to-discourse-history (edge)
  ;; called from Complete.
  (let ((obj (edge-referent edge))
        (start-pos (ev-position (edge-starts-at edge)))
        (end-pos   (ev-position (edge-ends-at edge))))

    (when (and (consp obj) (= 1 (length obj)))
      (setq obj (car obj)))

    (when obj
      (typecase obj
        (psi 
         ;; Assume that all psi instantiate themselves and so should
         ;; be recorded
         (dolist (category (all-categories-in-psi obj))
           (update-categorys-discourse-history category obj start-pos end-pos)))

        (individual
         (let* ((primary-category (car (indiv-type obj)))
                (other-categories (cdr (indiv-type obj)))
                (operations (cat-operations primary-category))
                (instantiates
                 (when operations
                   (cat-ops-instantiate operations))))

           (when instantiates
             (update-discourse-history instantiates
                                       obj
                                       start-pos end-pos)
             (dolist (category other-categories)
               (when category
                 ;; there's a Nil in the list sometimes
                 (update-categorys-discourse-history 
                  category obj start-pos end-pos))))))

        (referential-category )
        (mixin-category )
        (category )
;        (section-marker )
        (keyword )
        (word )
        (polyword )
        (fixnum )
        (float )
        (otherwise
         (unless *external-referents*
           (error "Unexpected type of object being added to ~
                 ~%the discourse history: ~a~%~a" (type-of obj) obj)))))))


(defun update-categorys-discourse-history (category obj start-pos end-pos)
  (let* ((operations (cat-operations category))
         (cat-to-instantiate (when operations
                               (cat-ops-instantiate operations))))
    (when cat-to-instantiate
      (update-discourse-history cat-to-instantiate obj start-pos end-pos))))


;(setq *trace-discourse-history* t) category::person
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
      (when (eq *trace-discourse-history* category)
        (format t "~&~%Recording ~A ~a from ~A to ~A~%~%"
                (cat-symbol category) instance
                (string-for-recycled-pos start-pos)
                (string-for-recycled-pos end-pos)))
      
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


(defun individuals-discourse-entry (i)
  (unless (individual-p i)
    (error "Argument must be an individual.~%~A is not" i))
  (let* ((primary-category (car (indiv-type i)))
         (category-instantiated
          (cat-ops-instantiate (cat-operations primary-category)))
         (entry (discourse-entry category-instantiated)))
    (when entry
      (assoc i entry :test #'eq))))

(defun instance-history (individual)
  ;; alternative on Individuals-discourse-entry that just returns
  ;; the instances
  (cdr (individuals-discourse-entry individual)))


(defun category-for-individuals-discourse-history (i)
  (cat-ops-instantiate 
   (cat-operations
    (car (indiv-type i)))))




(defun create-entry-in-discourse-history (category individual
                                          start-pos end-pos)
  (unless (referential-category-p category)
    (break "Key is not a referential category:~%    ~A" category))

  ;; This is the first time there has been an individual of this
  ;; category in the discourse.  We set up the alist of individuals
  ;; with just this case
  (setf (gethash category *objects-in-the-discourse*)
        (kcons (kcons individual
                      (kcons (kcons start-pos end-pos)
                             nil))
               nil)))



           
(defun new-object-of-established-category (category categories-entry
                                           individual start-pos end-pos)

  ;; We have had individuals of this category before. But this is
  ;; a new individual in the category, and this is its first instance.
  
  (setf (gethash category *objects-in-the-discourse*)
        (kcons (kcons individual
                      (kcons (kcons start-pos end-pos)
                             nil))
               categories-entry)))




(defun new-instance-of-known-object (individuals-entry start-pos end-pos)
  ;; We've seen this individual before. This is a new instance of it.
  (rplacd individuals-entry
          (kcons (kcons start-pos end-pos)
                 (cdr individuals-entry))))




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
                  (last-pos (cadr existing-entry)))

             (if (eq (car last-pos) :display-index)
               ;; happens when the last instance is in a region of
               ;; the text outside the current span of the chart, so this
               ;; instance couldn't possibly be subsuming the last one
               (new-instance-of-known-object
                existing-entry start-pos end-pos)

               ;; check for subsumption (= larger edge over the same object)
               (let ((last-start# (pos-token-index (car last-pos)))
                     (last-end#   (pos-token-index (cdr last-pos)))
                     (start# (pos-token-index start-pos))
                     (end# (pos-token-index end-pos)))
                 
                 (if (or (eql start# last-start#)
                         (eql end#   last-end#)
                         (and (<= start# last-start#)
                              (>= end#   last-end#)))
                   (then ;; this instance subsumes the prior one
                     (rplaca last-pos start-pos)
                     (rplacd last-pos end-pos))
                   
                   ;; otherwise it's a new new instance
                   (new-instance-of-known-object
                    existing-entry start-pos end-pos))))))

          ((setq individuals-entry
                 (assoc individual entry :test #'eq))
           (new-instance-of-known-object
            individuals-entry start-pos end-pos))

          (t ;; a new object of this type
           (new-object-of-established-category
            category entry individual start-pos end-pos)))))




;;;--------------------
;;; removing instances
;;;--------------------

(defun maybe-suppress-daughters-dh-entry (daughter parent)
  ;; called from Set-used-by
  (when (edge-p daughter)
    (when (individual-p (edge-referent daughter))
      (when (eq (edge-category parent) (category-named 'person))
        ;(break "1")
        ;(remove-history-of-instance/edge daughter)

      ))))

(defun remove-history-of-instance/edge (edge)
  ;; lookup the discourse history record corresponding to this instance
  ;; of the individual.
  (let ((individual (edge-referent edge)))
    (unless (individual-p individual)
      (break "Bad assumption: this operation only applies to ~
              individuals.~%However the referent of~%   ~A~
              ~%is~%   ~A" edge individual))
    (let ((entry (individuals-discourse-entry individual))
          (start-pos (pos-edge-starts-at edge))
          ;(end-pos (pos-edge-ends-at edge))  ?? do we need this check ??
          instance-record  instance-start )

      ;; prime the loop
      (setq instance-record (cadr entry)
            instance-start (car instance-record))

      (if (eq instance-start start-pos)
        ;; this operation will most frequently be applied to the
        ;; individual's most recent instance, so we do this short cut
        (then
          (rplacd entry (cddr entry))
          (when (null (cdr entry))
            ;; if that's all there is, then remove the whole entry
            ;; to this individual
           (remove-history-of-individual individual)))
        (else
          (break "Removing an instance of ~A~
                  ~%other than the most recent one.~
                  ~%Extend the algorithm." individual)))
      entry )))


(defun remove-history-of-individual (individual)
  ;; delete this individual's record from the discourse history entry
  ;; of its category
  (let* ((category (category-for-individuals-discourse-history individual))
         (entry (discourse-entry category)))
    ;; the entry is a klist
    (if (eq (first (car entry)) individual)
      (then
        (setf (gethash category *objects-in-the-discourse*)
              (cdr entry))
        ;(deallocate-kcons entry)  ;; might lead to circularity 
        )                          ;; holding off on testing (11/21/94)
      (let* ((cell-before entry)
             (cell (cdr entry))
             (sub-entry (car cell)))
        (loop
          (when (eq (car sub-entry) individual)
            (rplacd cell-before
                    (cdr cell))
            (return))
          (when (null cell)
            (break "couldn't find ~A~%on the discourse history entry ~
                    of ~A" individual category)
            (return))
          (setq cell-before cell
                cell (cdr cell)
                sub-entry (car cell)))))))





;;;--------------------------------
;;; effects of recycling positions
;;;--------------------------------

(defun long-term-ify/edge-referents/at (position-to-clear
                                        &key  workbench-active? )

  ;; called from Bump-&-store-word. The position is the one about
  ;; to be recycled -- this means that references to its indexes
  ;; will become invalid, so we have to replace them with something
  ;; longer term.  If the workbench is up, we use the display indexes
  ;; into the text-view pane; othewise we use the token indexes.
  ;; If the workbench isn't up then this won't be called.
  (when *position-array-is-wrapped*
    (let* ((ev (pos-starts-here position-to-clear))
           (edges-array (ev-edge-vector ev))
           (count (ev-number-of-edges ev))
           edge  referent )

      ;(format t "~&~%Converting ~A" position-to-clear)
      ;(when (= (pos-token-index position-to-clear) 54) (break))

      (when count
        (dotimes (i count)
          (setq edge (elt edges-array i))
          
          (unless (deactivated? edge)
            ;; As also checked for in the When below, if the edge resource
            ;; is recycling faster, then there will already have been a
            ;; call to long-term-ify so there's nothing for us to do.
            
            (setq referent (edge-referent edge))
            
            ;(when (= (pos-token-index position-to-clear) 54)
            ;  (format t "~&   count = ~A~
            ;             ~%    edge = ~A~
            ;             ~% individual? = ~A~%"
            ;          i edge (individual-p referent)))
            
            (unless (not (eq position-to-clear
                             (pos-edge-starts-at edge)))
              ;; The edge resource is recycling faster than the chart is
              ;; and so the long-termification of this edge has already
              ;; happened as part of that recycling. We move on to the
              ;; next iteration of this loop to look at the next edge,
              ;; which since it is longer, will be further ahead in the
              ;; edge resource and consequently might not yet have been
              ;; long-term-ified.
              
              
              (when (individual-p referent)
                (when workbench-active?
                  (long-term-ify/individual referent
                                            (pos-edge-starts-at edge)
                                            (pos-edge-ends-at edge))))

              ;(format t "~&Deactivating e#~A because chart is recycling~%"
              ;        (edge-position-in-resource-array edge))
              (deactivate-edge edge (pos-edge-ends-at edge)))))))))



(defun long-term-ify/individual (i start-pos end-pos)
  (let ((instances-record
         (cdr (individuals-discourse-entry i)))
        (start-index (pos-display-char-index start-pos))
        (end-index (pos-display-char-index end-pos)))

    (when (or (null start-index) (null end-index))
      (break "Display index/s is nil -- Some threading is bad.~%"))

    (when instances-record
      (dolist (cell instances-record
                    (already-long-term-ified? instances-record
                                              start-index
                                              end-index))
        (when (eq (car cell) start-pos)
          (rplaca cell :display-index)
          (rplacd cell (kcons start-index
                              end-index))

          (return))))))



(defun already-long-term-ified? (instances-record
                                 start-index end-index)
  ;; there are occasions where there will be two edges at a given
  ;; position with the same referent, e.g. the word "one" gets spanned
  ;; with a 'number' edge and also a 'ones-number' edge, both of
  ;; which have the same referent (but different sets of rules that
  ;; they are part of).
  (dolist (cell instances-record
                (long-term-already-subsumed? instances-record
                                             start-index end-index))

                
    (when (eq (car cell) :display-index)
      (when (equal (car (cdr cell)) start-index)
        (return)))))



(defun long-term-already-subsumed? (instances-record
                                    start-index end-index)
  (let ((display-start (car start-index))
        (display-end (car end-index))
        record-start  record-end )

    (dolist (cell instances-record
                  ;(break "couldn't find start-pos in instances-record")
                  )

      (unless (position-p (car cell))
        ;; this test only makes sense on cells that have already
        ;; been converted to display numbers

        (setq record-start (second cell)
              record-end (cddr cell))
        ;(break)
        (when (< (car record-start) ;; starts before
                 display-start)
          (when (>= (car record-end)
                    display-end)
            (return)))))))
  
      



;;;------------------
;;; Access protocols
;;;------------------

(defun most-recently-mentioned (c/dh)
  ;; called from respan-pn-with-most-recent-person-anaphor
  (if (null (cdr c/dh))
    ;; if there's only one, then it's trivially the most recent
    (caar c/dh)

    (let ((candidates-entries
           (etypecase c/dh
             (cons  ;; we'll assume it's a discourse entry
              c/dh)
             (referential-category (discourse-entry c/dh))))
          
          (largest-index-so-far 0)
          individual  last-mention  nearest-individual-so-far  )
      
      (dolist (dh candidates-entries)
        (setq individual (first dh)
              last-mention (car (second dh)))  ;; start-pos of its edge
        
        (when (eq last-mention :display-index)
          ;; it's way out of bounds (the display has wrapped on it)
          ;; so we shouldn't use it.
          (return-from most-recently-mentioned nil))
        
        (when (> (pos-token-index last-mention)
                 largest-index-so-far)
          
          (setq largest-index-so-far (pos-token-index last-mention)
                nearest-individual-so-far individual)))
      
      nearest-individual-so-far )))




(defun earliest-in-the-discourse (i1 i2)
  (if (not (and (individual-p i1) (individual-p i2)))
    (then
      (when *break-on-unexpected-cases*
        (break "One (or both) of the arguments are not individuals:~
                ~%  ~A~%  ~A~%" i1 i2))
      i1 )

    (let ((entry1 (individuals-discourse-entry i1))
          (entry2 (individuals-discourse-entry i2)))

      (let ((1st-instance1 (car (last entry1)))
            (1st-instance2 (car (last entry2))))

        (break "Stub: check that the '1st instance' computation is ~
                correct and then finish this routine")))))
          
