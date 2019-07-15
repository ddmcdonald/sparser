;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "anaphora"
;;;   Module:  "analyzers;CA:"
;;;  Version:  October 2016

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
;; 3.5 (9/16/13) Fixing long-term-ify/edge-referents/at et al. As well as redesigning
;;      most-recently-mentioned since it looks through all of an individual's history
;;      and only has to take the first entry.
;;     (1/6/15) Added a facility for keeping a list of the etities in a sentence
;;      along with their edges to supply context. 
;; 3.6 (1/30/15) Added a filter to keep function words and such out of the history.
;;      The shift in modeling style to permit CLOS methods added an entire new
;;      set of types of individuals.
;;     (3/12/15) Fixed error messages in better to be clearer.
;; 3.7 (6/3/15) removed restriction on when record-instance-within-sequence runs
;;     (6/5/15) Modified individuals-discourse-entry to make it robust under the 
;;      possiblity that the individual's category has no operations defined for it.
;; 3.8 (7/8/15) Pulling out PSI deadwood when I find it. Revamping the update
;;      operation to appreciate individuals evolving as modifiers are added.
;;     (8/12/15) Removed dotted pair check when example sentence didn't reproduce
;;      it. 
;; 3.9 (8/28/15) Substantial makeover to handle mentions of description lattice
;;      individuals, plus a drastic reordering to improve readability. 
;;      cleaning up initial implementation through 9/22/15
;;     (9/29/15) fixed the logic in local-recorded-instances, but it has to be
;;      extended to handle ':or' value restrictions.

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

(defparameter *debug-anaphora* nil
  "Flag around the 'unexpected situation' error/break calls")

;;;----------
;;; creation
;;;----------

(defun add-subsuming-object-to-discourse-history (edge)
  ;; called from complete-edge/hugin provided that *do-anaphora* and
  ;; *pronouns* are set. 
  (declare (special *reading-populated-document*))
  (when *reading-populated-document*
    ;; The epistemic sweep through a document still introduces
    ;; edges over words (it doesn't have to), but that process
    ;; introduces a duplicate history on all single words that
    ;; have a referent, which would lead to unnecessary complications.
    (unless (actually-reading)
      (return-from add-subsuming-object-to-discourse-history nil)))

  (let ((obj (edge-referent edge)))
    (when obj
      (typecase obj
        (individual
         (let* ((primary-category (car (indiv-type obj)))
                (other-categories (cdr (indiv-type obj)))
                (operations (cat-operations primary-category))
                (instantiates
                 (when operations
                   (cat-ops-instantiate operations))))

	   (cond
	     ((and (relevant-category-for-dh primary-category)
                   instantiates)
	      ;; Besides being relevant, a category definition
	      ;; has to mark how individuals of that category should
	      ;; be indexed in the discourse history -- what
	      ;; category should individuals of that category
              ;; "instantiate". It could be this category
              ;; (the :instantiates :self case), or it could be
              ;; a more general category (e.g. :instantiates location
              ;; in the location model)
	      (record-instance-within-sequence obj edge)
	      (update-discourse-history instantiates
					obj edge)
	      (dolist (category other-categories)
		(when (and category ;; there's a Nil in the list sometimes
                           (not (and (mixin-category-p category)
                                     (itypep category 'linguistic)))) ;; e.g. plural
		  (update-category-discourse-history 
		   category obj edge))))
	     (*use-discourse-mentions*
	      (update-discourse-history primary-category obj edge)))))

        (referential-category
	 (when *use-discourse-mentions*
           (update-discourse-history obj obj edge)))
        (mixin-category )
        (category )
        (section-marker )
        (keyword )
        (word )
        (polyword )
        (fixnum )
        (float )
        (cons ) ;; "-fold"
        (boolean
         ;; happened in PMC3522295,
         ;; bizarre "mating type-switched strain PJ69–4A"
         )
        (otherwise
         (unless *external-referents*
           (error "Unexpected type of object being added to ~
                 ~%the discourse history: ~a~%~a" (type-of obj) obj)))))))


(defun update-category-discourse-history (category obj edge)
  "Subroutine of add-subsuming-object-to-discourse-history that looks
  up the category (':instantiates') that individuals should be indexed by.
  If the category does not 'instantiate' anything then it's not stored
  in the history."
  ;; This is somewhat redundant with the main check, but applies when
  ;; the individual has multiple categories in its type. 
  (let* ((operations (cat-operations category))
         (cat-to-instantiate (when operations
                               (cat-ops-instantiate operations))))
    (when cat-to-instantiate
      (update-discourse-history cat-to-instantiate obj edge))))



;(setq *trace-discourse-history* t) category::person
;(setq *trace-discourse-history* nil)
; (trace-pronouns) -- managing the entries


(defun update-discourse-history (category new-instance edge)
  ;; called from add-subsuming-object-to-discourse-history when it has
  ;; a new instance of a particular category (see :instantiates)
  ;; Looks up the entry for instances of this category and
  ;; adds (or extends) the discourse history accordingly
  (declare (special *trace-discourse-history*))
  (if (consp category)
    ;; then it is marked to be indexed under several categories  
    ;; not just one
    (dolist (c category)
      (update-discourse-history c new-instance edge))

    (else
      (when (eq *trace-discourse-history* category)
        (format t "~&~%Recording ~A ~a  ~s~
                     ~%      from ~A to ~A~%~%"
                (cat-symbol category) new-instance
                (string-of-words-between (start-pos edge) (end-pos edge))
                (string-for-recycled-pos (start-pos edge))
                (string-for-recycled-pos (end-pos edge))))
      
      (let ((entry (discourse-entry category)))
        (if entry
          (extend-entry-in-discourse-history category new-instance edge)
          (create-entry-in-discourse-history category new-instance edge))
        category ))))


(defun create-entry-in-discourse-history (category i edge)
  (unless (or (referential-category-p category)
              (mixin-category-p category))
    (error "Key is not a referential category:~%    ~A" category))
  ;; Called from update-discourse-history when the discourse 
  ;; history of this category is empty, i.e. this is the first
  ;; time an individual of this category has been mentioned.
  (tr :creating-category-dh-entry category i edge)
  (setf (discourse-entry category)
        (create-discourse-entry i edge)))

(defun discourse-entry (category)
  (gethash category *objects-in-the-discourse*))

(defun (setf discourse-entry) (val category)
  (setf (gethash category *objects-in-the-discourse*) val))


;;;--------------------------
;;; discourse entries per se
;;;--------------------------

(defun create-discourse-entry (i edge)
  ;; called from create-entry-in-discourse-history on the
  ;; first time an individual of this category has been
  ;; created. Returns the entry.
  (declare (special *description-lattice*))
  (if *description-lattice*
      (list (make-mention i edge))
      (create-rigid-discourse-entry i edge)))


(defun create-rigid-discourse-entry (i edge)
  "Individuals are rigid designators. They do not change their
  identity as they acquire properties or stand in new relations.
  We can depend on that identity to make simple entries."
  (kcons (kcons i
                (kcons (kcons (start-pos edge)
			      (end-pos edge))
                       nil))
         nil))

;;;--------------------------
;;; Extend discourse history
;;;--------------------------

(defun extend-entry-in-discourse-history (category new-individual edge)
  ;; Called from update-discourse-history
  ;; There have been earlier instances of indivdiuals of this category
  ;; in the discourse history. This may be a further instance of an
  ;; already entered individual or it may be a new individual When using
  ;; the description lattice it may be an individual that extends one
  ;; that is already there (by being more specifiic) and in that case
  ;; will usually involve a subsuming (larger) edge. 
  (declare (special *description-lattice*))
  (if *description-lattice*
    (make-mention new-individual edge category)
    (conventional-individuals-extend-dh-entry category new-individual edge)))


(defun conventional-individuals-extend-dh-entry (category individual edge)
  (let ((entry (discourse-entry category))
	individuals-entry )
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
                existing-entry edge)

               ;; check for subsumption (= larger edge over the same object)
               (let ((last-start# (pos-token-index (car last-pos)))
                     (last-end#   (pos-token-index (cdr last-pos)))
                     (start# (pos-token-index (start-pos edge)))
                     (end# (pos-token-index (end-pos edge))))
                 
                 (if (or (eql start# last-start#)
                         (eql end#   last-end#)
                         (and (<= start# last-start#)
                              (>= end#   last-end#)))
                   (then ;; this instance subsumes the prior one
                     (rplaca last-pos (position# start#))
                     (rplacd last-pos (position# end#)))
                   
                   ;; otherwise it's a new new instance
                   (new-instance-of-known-object
                    existing-entry edge))))))

          ((setq individuals-entry
                 (assoc individual entry :test #'eq))
           (new-instance-of-known-object
            individuals-entry edge))

          (t ;; a new object of this type
           (new-object-of-established-category
            category entry individual edge)))))

(defun subsumes-interval (start# end# last-start# last-end#)
  (cond
    ((< start# last-start#)
     (>= end# last-end#))
    ((eql start# last-start#)
     (> end# last-end#))))

(defun new-object-of-established-category (category categories-entry
                                           individual edge)

  ;; We have had individuals of this category before. But this is
  ;; a new individual in the category, and this is its first instance.
  ;; N.b. only really make sense for rigid individuals since we always
  ;; get new individuals when using the description lattice. 
  ;; This produces an alist of individuals of this category.
  (setf (gethash category *objects-in-the-discourse*)
        (kcons (kcons individual
                      (kcons (kcons (start-pos edge) (end-pos edge))
                             nil))
               categories-entry)))

(defun new-instance-of-known-object (individuals-entry edge)
  ;; We've seen this individual before. This is a new instance of it.
  (rplacd individuals-entry
          (kcons (kcons (start-pos edge) (end-pos edge))
                 (cdr individuals-entry))))



;;;-----------------------------
;;; sequential list of DH items
;;;-----------------------------
; Can be stored on the sentence and cleared between them.
; Provides structure to walk for itentifying unsaturated individuals
; and organizing the search for their missing terms

(defvar *lifo-instance-list* nil
  "Holds individuals in right-to-left order.
   Has to be cleared regularly or else the new-mention operation
   will start looking at recycled edges.")

;; (setq *scan-for-unsaturated-individuals* t)
(defparameter *trace-instance-recording* nil)


(defun record-instance-within-sequence (i edge)
  ;; called from add-subsuming-object-to-discourse-history
  ;; on every addition of an individual and its edge
  (declare (special *description-lattice*))
  (when *trace-instance-recording*
    (format t "~&Storing i~a for e~a as a ~a"
            (indiv-uid i) (edge-position-in-resource-array edge)
            (cat-symbol (itype-of i))))
  (if *description-lattice*
    (record-dl-instance-within-sequence i edge)
    (record-simple-instance-within-sequence i edge)))


;;--- ordinary, rigid individuals

(defun record-simple-instance-within-sequence (i edge)
  (flet ((store-on-lifo (i edge)           
           (push `(,i ,edge) *lifo-instance-list*))
         (new-instance-subsumes-old? (prior-instance edge)
           (let ((prior-edge (cadr prior-instance)))
             (when (edge-subsumes-edge? edge prior-edge)
               (rplaca (cdr prior-instance)
                       edge)))))
    (let ((prior-instance (assq i *lifo-instance-list*)))
      (if (and prior-instance
               ;; If we've (somehow) looped around far enough
               ;; that the edge is deactivated then it surely
               ;; isn't a subsumer
               (not (deactivated? (cadr prior-instance))))
        (unless (new-instance-subsumes-old? prior-instance edge)
          (store-on-lifo i edge))
        (store-on-lifo i edge)))))



;;--- description lattice individuals

(defun record-dl-instance-within-sequence (i edge)
  ;; Called with every call to add-subsuming-object-to-discourse-history
  ;; with out regard to prior subuming mentions
  (let* ((i-type (itype-of i))
	 (subsumed-item
	  (loop for pair in *lifo-instance-list*
	     when
	       (and (equal (itype-of (car pair)) i-type)
		    (edge-p (second pair))
		    (edge-starts-at (second pair)) ;; the edge is still active
		    (subsumes-interval
		     (pos-token-index (start-pos edge))
		     (pos-token-index (end-pos edge))
		     (pos-token-index (start-pos (second pair)))
		     (pos-token-index (end-pos (second pair)))))
	       do (return pair))))
    (cond
      (subsumed-item
       (setf (car subsumed-item) i)
       (setf (second subsumed-item) edge))
      (t
	 (push `(,i ,edge) *lifo-instance-list*)))))

(defun cleanup-lifo-instance-list ()
  ;; called from end-of-sentence-processing-cleanup and
  ;; becomes the value of the sentence's long-term discourse history.
  (let ( individuals )
    (dolist (pair *lifo-instance-list*)
      (push (car pair) individuals)) ;; reverses the list
    (setq *lifo-instance-list* nil)
    individuals))


;;;--------------------------------------------------------------
;;; sweep over sentence lifo list look for something unsaturated
;;;--------------------------------------------------------------

; (setq *scan-for-unsaturated-individuals* t)

(defun sweep-for-unsaturated-individuals (sentence)
  ;; Are any of the individuals we've seen within this sentence
  ;; unsaturated? If so, can we use one of the other entities
  ;; to bind the open variables
  (declare (ignore sentence)) ;; later look through previous sentences
  ;; (lsp-break "look at *lifo-instance-list*")
  (dolist (pair *lifo-instance-list*)
    (let* ((i (car pair)) ;; pair = (<individual> <edge>)
           (open-variables (unsaturated? i)))
      (when (and open-variables
                 (null (cdr open-variables)))
        
        ;; lets start with just one. January #37
        (let* ((var (car open-variables))
               (v/r (var-value-restriction var)))
          (unless (memq (var-name var)
                        '(subject))
            ;; those are unrealistic to find in the local history
            (when v/r
              ;; if there's no value restriction then we can't
              ;; constrain the search
              (let ((candidate (find-best-recent v/r)))
                (when candidate
                  (bind-variable var candidate i))))))))))

#| There's a reasonable model of saturation in terms of bound
and free variables on the lattice point of a psi. The function
saturated? is a good entry point. |#
(defun unsaturated? (i)
  (let* ((category (itype-of i))
         (variables (cat-slots category)) ;; n.b. local to category
         (bindings (indiv-binds i)))
    (when variables
      (let* ((bound (loop for b in bindings
                      collect (binding-variable b)))
             (open (loop for v in variables
                     unless (memq v bound)
                     collect v)))
        open))))



(defun find-best-recent (category)
  ;; look in the recent discourse history, preferably the local
  ;; sentence, for an individual of this category. If there is
  ;; more than one, the select the one that appears to be most
  ;; prominant within the syntactic context, e.g. subjects are
  ;; nearly always the right choice. 
  (let ((candidates 
         ;; that's the standard retrieval, returns the individuals
         ;; and the positions to either side
         ;;(discourse-entry categpry)
         (local-recorded-instances category)))
    (when candidates
      (cond
       ((null (cdr candidates))
        (car (car candidates)))
       (t
        (let ((best-so-far (car candidates)))
          (dolist (pair (cdr candidates))
            (when (better pair best-so-far)
              (setq best-so-far pair)))
          ;;(push-debug `(,best-so-far)) (break "look")
          (car best-so-far)))))))

(defun local-recorded-instances (category)
  "The category is the value restriction on the pronoun we are trying
   to dereference. Since value restictions can be a disjunct of a set
   of categories we need to check for that. The 'local' effectively
   means 'within this sentence' since the candidates are drawn from
   the alist on the *lifo-instance-list*."
  (when (consp category)
    (tr :cannot-find-disjoint-value-restrictions)
    (return-from local-recorded-instances nil))
  (let ((types (typecase category
                 (referential-category (list category))
		 (otherwise
                  (push-debug `(,category))
                  (break "Unexpected type of  category: ~a~%~a"
                         (type-of category) category)))))
    (declare (ignore types))
    ;; ddm -- can't sort out the looping structure. The list
    ;; had been done with memq but that was the wrong logic
    ;; since we want to see if the stored individuals are
    ;; compatible with the value-restriction (itypep).
    (loop for pair in *lifo-instance-list*
      when (itypep (car pair) category)
      collect pair)))

(defun better (new-pair reigning-pair)
  ;; Given two edges, look at the form of the edge that dominates
  ;; them (used-in). The edge whose category is the highest in
  ;; the hierarchy should be more salient in the text and is
  ;; preferred. 
  (declare (special *category-hierarchy*))
  (let ((new-parent (edge-used-in (cadr new-pair)))
        (reigning-parent (edge-used-in (cadr reigning-pair))))
    (unless new-parent
      (if *debug-anaphora*
        (error "There is no used-in value for ~a" (cadr new-pair))
        (if reigning-parent
          (return-from better reigning-parent)
          (error "Figure out why there is no used-in value for ~a ~
               or set *scan-for-unsaturated-individuals* to nil" new-parent))))
    (unless reigning-parent
      (if *debug-anaphora*
        (error "There is no used-in value for ~a" (cadr reigning-pair))
        (if new-parent
          (return-from better new-parent)
          (error "Figure out why there is no used-in value for ~a ~
               or set *scan-for-unsaturated-individuals* to nil" reigning-parent))))

    (let* ((new-form (edge-form new-parent))
           (new-position (memq new-form *category-hierarchy*))
           (reigning-form (edge-form reigning-parent))
           (reigning-position (memq reigning-form *category-hierarchy*)))
      (unless new-position
        (error "The category ~a is not in *category-hierarchy*" new-form))
      (unless reigning-position
        (error "The category ~a is not in *category-hierarchy*" reigning-form))
      ;; if the new pair is better they will have a longer length
      ;; returned by the memq
      (let ((new-count (length new-position))
            (reigning-count (length reigning-position)))
        (when (= new-count reigning-count)
          (error "New case: Both ~a and ~a are dominated by a ~a"
                 (car new-pair) (car reigning-pair) new-form))
        (> new-count
           reigning-count)))))



;;;-------------
;;; Individuals
;;;-------------
;; N.b. not adapted to derivation lattice individuals

(defun individuals-discourse-entry (i)
  (declare (special *description-lattice*))
  (unless (individual-p i)
    (error "Argument must be an individual.~%~A is not" i))
  (cond
   (*description-lattice* (mention-history i))
   (t ;; conventional, rigid individuals
    (let* ((primary-category (car (indiv-type i)))
           (operations (cat-operations primary-category))
           (category-instantiated 
            (when operations (cat-ops-instantiate operations)))
           (entry 
            (when category-instantiated 
              (discourse-entry category-instantiated))))
      (when entry
        (assoc i entry :test #'eq))))))

(defun instance-history (individual)
  ;; alternative on Individuals-discourse-entry that just returns
  ;; the instances
  (declare (special *description-lattice*))
  (when *description-lattice*
    (break "The function instance-history has to be revised for "))
  (cdr (individuals-discourse-entry individual)))

(defun category-for-individuals-discourse-history (i)
  (cat-ops-instantiate 
   (cat-operations
    (car (indiv-type i)))))


;;;---------------
;;; initializing
;;;---------------

(defun initialize-discourse-history ()
  (declare (special *lifo-instance-list*
                    *lattice-individuals-mentioned-in-paragraph*
		    *maximal-lattice-mentions-in-paragraph*
                    *objects-in-the-discourse*
                    *lattice-individuals-to-mentions*))
  (setq *lifo-instance-list* nil
        *lattice-individuals-mentioned-in-paragraph* nil)
  (if (and (boundp '*maximal-lattice-mentions-in-paragraph*)
	   (hash-table-p *maximal-lattice-mentions-in-paragraph*))
      (clrhash *maximal-lattice-mentions-in-paragraph*)
      (setq *maximal-lattice-mentions-in-paragraph* (make-hash-table :size 1000)))
  (clrhash *objects-in-the-discourse*)
  (unless (eq *save-clause-semantics* :mention-clauses)
    (clrhash *lattice-individuals-to-mentions*))
  (clrhash *mention-source-form-categories*))


(defun clear-discourse-history-entry (category category-entry)  ;; tag, value
  ;; deallocate the conses in the entry, then flush the entry
  (break " Stub: clearing discourse entry for category")
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
    (break "Stub: clearing individual's dh history: start")
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


;;;--------------------
;;; removing instances
;;;--------------------

(defun maybe-suppress-daughters-dh-entry (daughter parent)
  (declare (special category::person))
  ;; called from Set-used-by
  (when (edge-p daughter)
    (when (individual-p (edge-referent daughter))
      (when (eq (edge-category parent) category::person)
        ;(break "1")
        ;(remove-history-of-instance/edge daughter)

      ))))

(defun remove-history-of-instance/edge (edge)
  ;; lookup the discourse history record corresponding to this instance
  ;; of the individual.
  (let ((individual (edge-referent edge)))
    (check-type individual individual)
    (let ((entry (individuals-discourse-entry individual))
          instance-record  instance-start )

      ;; prime the loop
      (setq instance-record (cadr entry)
            instance-start (car instance-record))

      (if (eq instance-start (start-pos edge))
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

  ;; Called from bump-&-store-word -- The position is the one about
  ;; to be recycled -- this means that references to its indexes
  ;; will become invalid, so we have to replace them with something
  ;; longer term.  If the workbench is up, we use the display indexes
  ;; into the text-view pane; othewise we use the token indexes.

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
                (long-term-ify/individual referent workbench-active? edge))

              ;(format t "~&Deactivating e#~A because chart is recycling~%"
              ;        (edge-position-in-resource-array edge))
              (deactivate-edge edge (pos-edge-ends-at edge)))))))))

(defun long-term-ify/individual (i workbench? edge)
  (declare (special *description-lattice*))
  (cond
   (*description-lattice*
    ;; 1st find the mention, then modify it.
    (let ((mentions (mention-history i)))
      (let ((m (search-mentions-by-position mentions edge)))
        (when m
          ;; if it's not there we're not going to have a problem
          ;; //// Ditto with the duplicates of 9/12/15
          (long-term-ify-mention m)))))
   (t ;; conventional individuals
    (let ((instances-record
           (cdr (individuals-discourse-entry i)))
          (start-index (if workbench? 
                         (pos-display-char-index (start-pos edge))
                         (pos-token-index (start-pos edge))))
          (end-index (if workbench?
                       (pos-display-char-index (end-pos edge))
                       (pos-token-index (end-pos edge)))))

      (when (or (null start-index) (null end-index))
        (break "Display index/s is nil -- Some threading is bad.~%"))

      (when instances-record
        (dolist (cell instances-record
                      (already-long-term-ified? instances-record
                                                workbench?
                                                start-index
                                                end-index))       
          (when (eq (car cell) start-index)
;          (when (eq *trace-discourse-history* (itype-of i))
;            (break "old person"))
 
            (rplaca cell :display-index)
            (rplacd cell (kcons start-index
                                end-index))
            (return))))))))



(defun already-long-term-ified? (instances-record workbench?
                                 start-index end-index)
  ;; there are occasions where there will be two edges at a given
  ;; position with the same referent, e.g. the word "one" gets spanned
  ;; with a 'number' edge and also a 'ones-number' edge, both of
  ;; which have the same referent (but different sets of rules that
  ;; they are part of).
  (dolist (cell instances-record
           (when workbench?
             (long-term-already-subsumed? instances-record
                                          start-index end-index)))
      (when (eq (car cell) :display-index)
        (when (equal (car (cdr cell)) start-index)
          (return)))))


;; Don't remember the point of this anymore, but as it doesn't
;; change any values, just making it dependent on the workbench
;; (in caller just above) and ignoring it. 9/16/13. 
(defun long-term-already-subsumed? (instances-record
                                    start-index end-index)
  ;; In particular, why are the indicies lists?
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

    ;; The discourse history is for an entire category.
    ;; Each entry is (<individual> . <list of mentions,
    ;; most-recent first>). The mentions are (<start-pos> . <end-pos)
    ;; until the chart (or workbench display) recycles, when it
    ;; is (:display-index start-number . end-number) because the
    ;; positions are no longer meaningful. 

    (let ((candidates-entries
           (etypecase c/dh
             (cons  ;; we'll assume it's a discourse entry
              c/dh)
             (referential-category (discourse-entry c/dh))))
          (largest-index-so-far 0)
          individual  last-mention  nearest-individual-so-far  )

      (dolist (dh candidates-entries)
        (etypecase dh
          (cons (setq individual (first dh)
                      last-mention (car (second dh))))  ;; start-pos of its edge
          (discourse-mention
           (setq individual (base-description dh)
                 last-mention (car (mentioned-where dh)))))
        ;(break "~a at ~a" individual last-mention)

        (unless (eq last-mention :display-index)
          ;; This mention is way out of bounds (the display has wrapped)
          ;; so we shouldn't use it.
          (when (> (pos-token-index last-mention)
                   largest-index-so-far)
            (setq largest-index-so-far (pos-token-index last-mention)
                  nearest-individual-so-far individual))))
      
      nearest-individual-so-far )))




(defun earliest-in-the-discourse (i1 i2)
  (declare (special *break-on-unexpected-cases*))
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
        (push-debug `(,1st-instance1 ,1st-instance2))
        (break "Stub: check that the '1st instance' computation is ~
                correct and then finish this routine")))))


;;;----------
;;; printers
;;;----------

(defun object-types-in-discourse-history ()
  (let ( type-list )
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key type-list))
             *objects-in-the-discourse*)
    (sort type-list #'string< :key #'pname)))


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
              (string-for-recycled-pos pos-cons)
              (string-for-recycled-pos pos-cons)))))

(defun string-for-recycled-pos (pos-cons)
  "Returns a compact string for the position with actual and
   absolute indexes"
  (if (eq (car pos-cons) :display-index) ;; position array wrapped
    (format nil "p~a" (cadr pos-cons))
    (let ((p (car pos-cons)))
      (let ((token-index (pos-token-index p))  ;; always extends
            (array-index (pos-array-index p))) ;; recycles
        (if (>= token-index *number-of-positions-in-the-chart*)
          (format nil "p~a(~a)" token-index array-index)
          (format nil "p~a" array-index))))))



;;;-----------------------------------
;;; filter out grammatical categories
;;;-----------------------------------

(defun relevant-category-for-dh (category)
  "Some categories are irrelevant and should never be recorded
   in the discourse history (see global). Return nil if the
   category is on this list."
  (declare (special *irrelevant-to-discourse-history*))
  (unless *irrelevant-to-discourse-history*
    (populate-irrelevant-to-discourse-history))
  (let ((supers (super-categories-of category)))
    (loop for c in *irrelevant-to-discourse-history*
      when (memq c supers)
      do (return-from relevant-category-for-dh nil))
    t))
