;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  March 2016

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15

(in-package :sparser)

;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

(defvar *show-failed-fronted-pp-attachment* nil)

(define-debris-analysis-rule to-comp-comma-s
    :pattern (to-comp "," s)
    :action (:function attach-to-comp-comma-to-s  first second third))

(defun attach-to-comp-comma-to-s (to-comp-edge comma-edge s-edge)
  (let* ((s (edge-referent s-edge))
	 (complement  ;;(value-of 'comp (edge-referent to-comp-edge))
	   (edge-referent to-comp-edge))
	 (to-comp-var ;; e.g. for "acts to dampen..."
	  (or
	    (subcategorized-variable s :to-comp complement)
	    'purpose)))
    (make-edge-over-long-span 
     (pos-edge-starts-at to-comp-edge)
     (pos-edge-ends-at s-edge)
     (edge-category s-edge)
     :form (edge-form s-edge)
     :rule 'attach-to-comp-comma-to-s
     :referent (bind-dli-variable to-comp-var complement s)
     :constituents `(,to-comp-edge ,comma-edge ,s-edge))))


(define-debris-analysis-rule pp-comma-s
  :pattern ( pp "," s )
  :action (:function attach-leading-pp-to-clause first third))

(define-debris-analysis-rule pp-s
  :pattern ( pp  s )
  :action (:function attach-leading-pp-to-clause first second))

(defun attach-leading-pp-to-clause (pp clause)
  (let* ((clause-referent (edge-referent clause))
	 (pobj-edge (edge-right-daughter pp))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-edge (edge-left-daughter pp))
	 (prep-word (edge-left-daughter prep-edge)))
    (if (is-collection? clause-referent)
	(or
	 (distribute-pp-to-conjoined-clauses pp clause prep-word pobj-referent clause-referent)
	 (distribute-pp-to-first-conjoined-clause pp clause))
	(let (edge
	      (var-name
	       (or
		(subcategorized-variable clause-referent prep-word pobj-referent)
		(failed-pp-attachment pp clause-referent))))
	  (when var-name
	    (setq clause-referent
		  (bind-dli-variable var-name pobj-referent clause-referent))
	    (setq edge (make-binary-edge/explicit-rule-components
			pp clause
			:category (edge-category clause)
			:form (edge-form clause)
			:rule-name :attach-leading-pp-to-clause
			:referent clause-referent))
	    (tr :comma-3tt-pattern edge)
	    edge)))))

(defun failed-pp-attachment (pp clause-referent)
  (when *show-failed-fronted-pp-attachment*
    (format t "~&~&<<<<<<<>>>>>> attaching leading PP ~s to clause ~s without defined variable~&"
	    (retrieve-surface-string pp)
	    (retrieve-surface-string clause-referent)))
  nil)

(defun distribute-pp-to-conjoined-clauses (pp clause prep-word pobj-referent clause-referent)
  (let* ((clauses  (value-of 'items clause-referent))
	 (vars (loop for c in clauses
		  collect
		    (or
		     (subcategorized-variable c
					      prep-word
					      pobj-referent)
		     ;; otherwise, not all the clauses will accept the PP
		     (return-from distribute-pp-to-conjoined-clauses nil))))
	 (new-interp
	  (make-an-individual
	   'collection
	   :items
	   (loop for c in clauses as var-name in vars
	      collect
		(let* ((new-c (bind-dli-variable var-name pobj-referent c))
		       (c-mention (relevant-mention (list clause) c)))
		  ;; create a mention-history for the new interpretation
		  (when c-mention
		    (update-mention-referent c-mention new-c t))
		  new-c))
	   :number (length clauses)
	   :type (itype-of (car clauses))))
	 edge)
    (setq edge (make-binary-edge/explicit-rule-components
		pp clause
		:category (edge-category clause)
		:form (edge-form clause)
		:rule-name :attach-leading-pp-to-clause
		:referent new-interp))
    (tr :comma-3tt-pattern edge)
    edge))

(defun distribute-pp-to-first-conjoined-clause (pp clause)
  (let* ((left-clause (edge-left-daughter clause))
	 (pobj-edge (edge-right-daughter pp))
	 (prep-edge (edge-left-daughter pp))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (or
	   (subcategorized-variable (edge-referent left-clause) prep-word pobj-referent)
	   (failed-pp-attachment pp left-clause)))
	 new-left new-items new-interp new-edge)
    (when var-name
      (setq new-left (when var-name (bind-dli-variable var-name pobj-referent left-clause)))
      (setq new-items
	    (cons new-left (cdr (value-of 'items (edge-referent clause)))))
      (setq new-interp
	    (make-an-individual
	     'collection
	     :items new-items
	     :number (length new-items)
	     :type (itype-of (car new-items))))
      (setq new-edge
	    (when var-name
	      (make-binary-edge/explicit-rule-components
	       pp left-clause
	       :category (edge-category clause)
	       :form (edge-form clause)
	       :rule-name :attach-leading-pp-to-clause
	       :referent new-interp)))
      (tuck-new-edge-under-already-knit left-clause new-edge clause :left)
      clause)))
  
    

(define-debris-analysis-rule s-comma-pp
  :pattern ( s "," pp )
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-following-pp-to-clause third first))

(define-debris-analysis-rule s-comma-pp-comma
  :pattern ( s "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-following-pp-to-clause third first))

(defun attach-following-pp-to-clause (pp clause)
  (let* ((clause-referent (edge-referent clause))
         (pobj-edge (edge-right-daughter pp))
         (pobj-referent (edge-referent pobj-edge))
         (prep-edge (edge-left-daughter pp))
         (prep-word (edge-left-daughter prep-edge)))
    (let ((var-name
           (subcategorized-variable clause-referent
                                    prep-word
                                    pobj-referent)))
      (and var-name
        (setq clause-referent 
              (bind-dli-variable var-name pobj-referent clause-referent))
        (let ((edge (make-binary-edge/explicit-rule-components
                     clause pp 
                     :category (edge-category clause)
                     :form (edge-form clause)
                     :rule-name :attach-following-pp-to-clause
                     :referent clause-referent)))
          (tr :comma-3tt-pattern edge)
          edge)))))


(define-debris-analysis-rule s-comma-s
  :pattern ( s "," s )
  :action (:function conjoin-two-clauses first third))

(defun conjoin-two-clauses (s1 s2)
  ;; Since they are full clauses (see ERK#3), there's no content
  ;; to copy from one to the other, just the utility of joining them
  (conjoin-two-edges s1 s2 :conjoin-s-and-s :pass 'da-rules))


(define-debris-analysis-rule s-and-vp
  :pattern ( s and vp )
  :action (:function conjoin-clause-and-vp first third))

(define-debris-analysis-rule s-and-vp+passive
  :pattern ( s and vp+passive )
  :action (:function conjoin-clause-and-vp first third))

(defun conjoin-clause-and-vp (s-edge vp-edge)
  ;; get the value of the subject or (perhaps) the subject
  ;; variable of the s. Look up the s variable of the vp
  (unless s-edge
    ;; This occurred when s-and-vp was run middle-out from
    ;; the conjunction. The constituent to the left of the
    ;; "and" was not an 's' so we should never have gotten
    ;; here. /// Need to take a serious look at that
    ;; matching code
    (throw :no-da-pattern-matched :trie-exhausted))
  (let* ((s-subj-var (subject-variable s-edge))
         (vp-subj-var (subject-variable vp-edge))
         (s-ref (edge-referent s-edge))
         (vp-ref (edge-referent vp-edge)))
    (when (and s-ref vp-ref 
               s-subj-var vp-subj-var)
      (let ((subject (value-of s-subj-var s-ref)))
        (when subject
          (setq vp-ref (bind-dli-variable vp-subj-var subject vp-ref)))))
    ;; regardless of whether we could set the subject of the
    ;; vp we should create the edge
    ;; This returns a edge and uses referent-of-two-conjoined-edges 
    ;; to make the referent, which basically stuffs them both
    ;; into a collection.
    ;;//// which is not the right thing at all at the sentence
    ;; level but it's a place to start. The actual relationship
    ;; could be causes or follows, for which we need to understand
    ;; more to get it right.
    (conjoin-two-edges s-edge vp-edge :conjoin-clause-and-vp :pass :conjoin-clause-and-vp)))


(define-debris-analysis-rule s-vp+ing
  :pattern ( s vp+ing )
  :action (:function attach-trailing-participle-to-clause first second))

(define-debris-analysis-rule s-comma-vp+ing
  :pattern ( s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause first third))

(define-debris-analysis-rule s-and-vp+ing
  :pattern ( s and vp+ing )
  :action (:function attach-trailing-participle-to-clause first third))

(defun attach-trailing-participle-to-clause (s-edge vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (let ((clause-ref (edge-referent s-edge))        
        (vp-ref (edge-referent vp-edge)))

    ;; Look up the subject variable(s) of the vp / participle and 
    ;; bind it to the whole matrix (clause) referent.
    (cond
     ((itypep vp-ref 'collection)
      ;; distribute this over the conjunction. Need a general way / macro
      ;; for doing this
      (let* ((daughter-edges (list (edge-left-daughter vp-edge)
                                   (edge-right-daughter vp-edge)))
             (daughter-refs (loop for edge in daughter-edges
                              collect (edge-referent edge)))
             (new-items
              (loop for edge in daughter-edges
                as ref in daughter-refs
                collect (unpack-subject-control
                         clause-ref ref edge))))
        ;; now remake the collection
        (let ((new-conjunct 
               (apply #'referent-of-two-conjoined-edges new-items)))
          ;; vp-ref MUST be updated here
          (setq vp-ref new-conjunct)
          (setf (edge-referent vp-edge) vp-ref))))

     (t ;; simple vp
      (unpack-subject-control clause-ref vp-ref vp-edge)))

    ;; Say that the clause is causally-related-to the vp.
    ;; Which is pretty weak, but it's already in place
    ;; THIS NEXT CALL PRODUCES NIL WHEN CLAUSE-REF IS A COLLECTION (from a conjunction of clauses)
    ;; as in 
    ;;"The human genome encodes at least 10 proteins that bind RAS and activate its intrinsic GTPase activity, 
    ;;  resulting in the formation of inactive RAS:GDP and attenuating RAS signaling (reviewed in King et al, 2013)."
    (setq clause-ref (add-adjunctive-clause-to-s clause-ref vp-ref))
    ;; we really need to create a new "category::causally-related" and fill in
    ;; two variables, cause and effect, and then use that as the :referent below
    ;; 
    (let ((edge (make-binary-edge/explicit-rule-components
                 s-edge vp-edge
                 :category (edge-category s-edge)
                 :form (edge-form s-edge)
                 :rule-name :attach-trailing-participle-to-clause
                 :referent clause-ref)))
      edge)))

(define-debris-analysis-rule s-comma-np
  :pattern ( s "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-under-s
           first second third))

(define-debris-analysis-rule s-comma-np-comma
  :pattern ( s "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-under-s
           first second third fourth))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge &optional trailing-comma)
  (push-debug `(,s-edge ,comma-edge ,np-edge))
  ;; (setq s-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
        target target-ref
        new-target-ref)
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
      ;; replace eq with acceptable-appositive?
      when (or
            (eq (edge-form edge) category::proper-noun)
            (eq (edge-form edge) category::np))
      do (setq target edge))
    (cond
     (target
      (setq target-ref (edge-referent target))
      (setq new-target-ref
            (bind-dli-variable 'appositive-description (edge-referent np-edge) target-ref))
      (let ((dominating (edge-used-in target))
	    (new-edge
             (make-edge-over-long-span 
              (pos-edge-starts-at target)
              (pos-edge-ends-at (or trailing-comma np-edge))
              (edge-category target)
              :form (edge-form target)
              :rule 'attach-appositive-np-under-s
              :referent new-target-ref
              :constituents `(,target ,comma-edge ,np-edge))))
        (tuck-new-edge-under-already-knit
         target ;; subsumed
	  new-edge
	  dominating ;;was the s-edge, but that is not the dominating edge
         :right)
	s-edge))
     (t 
      ;;(lsp-break "attach-appositive-np-under-s fails")
      nil))))

(define-debris-analysis-rule pp-comma-np
  :pattern ( pp "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
	   attach-appositive-np-under-pp
           first second third fourth))

(define-debris-analysis-rule pp-comma-proper-noun
  :pattern ( pp "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
	   attach-appositive-np-under-pp
           first second third fourth))

(defun attach-appositive-np-under-pp (pp-edge comma-edge np-edge &optional trailing-comma)
  (push-debug `(,pp-edge ,comma-edge ,np-edge))
  ;; (setq pp-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at pp-edge))))
        target target-ref
        new-target-ref)
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
      ;; replace eq with acceptable-appositive?
      when (or
            (eq (edge-form edge) category::proper-noun)
            (eq (edge-form edge) category::np))
      do (setq target edge))
    (cond
     (target
      (setq target-ref (edge-referent target))
      (setq new-target-ref
            (bind-dli-variable 'appositive-description (edge-referent np-edge) target-ref))
      (let ((new-edge
             (make-edge-over-long-span 
              (pos-edge-starts-at target)
              (pos-edge-ends-at (or trailing-comma np-edge))
              (edge-category target)
              :form (edge-form target)
              :rule 'attach-appositive-np-under-pp
              :referent new-target-ref
              :constituents `(,target ,comma-edge ,np-edge))))
        (tuck-new-edge-under-already-knit
         target ;; subsumed
         new-edge
         pp-edge
         :right)
        pp-edge))
     (t 
      ;;(lsp-break "attach-appositive-np-under-pp fails")
      nil))))

(define-debris-analysis-rule np-comma-np
  :pattern ( np "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-to-np
           first second third fourth))

(define-debris-analysis-rule proper-noun-comma-np
  :pattern ( proper-noun "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-to-np
           first second third fourth))

(define-debris-analysis-rule np-comma-proper-noun
  :pattern ( np "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-to-np
           first second third fourth))

(define-debris-analysis-rule proper-noun-comma-proper-noun
  :pattern ( proper-noun "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-to-np
           first second third fourth))

(defun attach-appositive-np-to-np (target comma-edge np-edge &optional trailing-comma)
  (let* ((new-target 
         (bind-dli-variable 'appositive-description (edge-referent np-edge) (edge-referent target)))
        (new-edge
         (make-edge-over-long-span 
          (pos-edge-starts-at target)
          (pos-edge-ends-at (or trailing-comma np-edge))
          (edge-category target)
          :form (edge-form target)
          :rule 'attach-appositive-np-to-np
          :referent new-target
          :constituents (if trailing-comma 
                            `(,target ,comma-edge ,np-edge, trailing-comma)
                            `(,target ,comma-edge ,np-edge)))))
    new-edge))

(define-debris-analysis-rule s-commma-subj-relative
    :pattern (s "," subject-relative-clause)
    :action (:function attach-commma-subj-relative-to-s first second third))

(defun attach-commma-subj-relative-to-s (s-edge comma-edge srel-edge)
  (let* ((s (edge-referent s-edge))
	 (s-rel	;;(value-of 'comp (edge-referent to-comp-edge))
	  (edge-referent srel-edge)))
    (let ((s-var (subcategorized-variable s-rel :subject s)))
      (cond (s-var
	     (make-edge-over-long-span 
	      (pos-edge-starts-at s-edge)
	      (pos-edge-ends-at srel-edge)
	      (edge-category s-edge)
	      :form (edge-form s-edge)
	      :rule 'attach-commma-subj-relative-to-s
	      :referent
	      (bind-dli-variable 'predication
				 (bind-dli-variable s-var **lambda-var** s-rel)
				 s)
	      :constituents `(,s-edge ,comma-edge ,srel-edge)))
	    (t
	     (let ((right-fringe-of-s ;; ordered bottom to top
		    (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
		   target)
	       (declare (special right-fringe-of-s))
	       (loop for edge in right-fringe-of-s
		  ;; replace eq with acceptable-appositive?
		  when (member (edge-form edge) '(category::NP category::proper-noun))
		  do (setq target edge))
	       (when target
		 (let* ((target-ref (edge-referent target))
			(t-var
			 (subcategorized-variable s-rel :subject target-ref))
			(dominating (edge-used-in target)))
		   (when t-var
		     (let ((new-edge
			    (make-edge-over-long-span 
			     (pos-edge-starts-at target)
			     (pos-edge-ends-at srel-edge)
			     (edge-category target)
			     :form (edge-form target)
			     :rule 'attach-commma-subj-relative-to-s
			     :referent
			     (bind-dli-variable :predication
						(bind-dli-variable t-var
								   **lambda-var**
								   s-rel)
						target-ref)
			     :constituents `(,target ,comma-edge ,srel-edge))))
		       (tuck-new-edge-under-already-knit
			target ;; subsumed
			new-edge
			dominating
			:right)
		       s-edge))))))))))

(define-debris-analysis-rule s-commma-where-relative
    :pattern (s "," where-relative-clause)
    :action (:function attach-commma-where-when-relative-to-s first second third))

(define-debris-analysis-rule s-commma-when-relative
    :pattern (s "," when-relative-clause)
    :action (:function attach-commma-where-when-relative-to-s first second third))

(defun attach-commma-where-when-relative-to-s (s-edge comma-edge srel-edge)
  (let* ((s (edge-referent s-edge))
	 (s-rel	;;(value-of 'comp (edge-referent to-comp-edge))
	  (edge-referent srel-edge)))
    (let ((s-var (subcategorized-variable s-rel
					  (if (eq (edge-form srel-edge) 'where-relative-clause)
					      :where
					      :when)
					  s)))
      (cond (s-var
	     (make-edge-over-long-span 
	      (pos-edge-starts-at s-edge)
	      (pos-edge-ends-at srel-edge)
	      (edge-category s-edge)
	      :form (edge-form s-edge)
	      :rule 'attach-commma-where-when-relative-to-s
	      :referent
	      (bind-dli-variable 'predication
				 (bind-dli-variable s-var **lambda-var** s-rel)
				 s)
	      :constituents `(,s-edge ,comma-edge ,srel-edge)))
	    (t
	     (let ((right-fringe-of-s ;; ordered bottom to top
		    (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
		   target)
	       (declare (special right-fringe-of-s))
	       (loop for edge in right-fringe-of-s
		  ;; replace eq with acceptable-appositive?
		  when (member (edge-form edge) '(category::NP category::proper-noun))
		  do (setq target edge))
	       (when target
		 (let* ((target-ref (edge-referent target))
			(t-var
			 (subcategorized-variable s-rel
						  (if (eq (edge-form srel-edge) 'where-relative-clause)
						      :where
						      :when) target-ref))
			(dominating (edge-used-in target)))
		   (when t-var
		     (let ((new-edge
			    (make-edge-over-long-span 
			     (pos-edge-starts-at target)
			     (pos-edge-ends-at srel-edge)
			     (edge-category target)
			     :form (edge-form target)
			     :rule 'attach-commma-subj-relative-to-s
			     :referent
			     (bind-dli-variable :predication
						(bind-dli-variable t-var
								   **lambda-var**
								   s-rel)
						target-ref)
			     :constituents `(,target ,comma-edge ,srel-edge))))
		       (tuck-new-edge-under-already-knit
			target ;; subsumed
			new-edge
			dominating
			s-edge
			:right)
		       s-edge))))))))))

(define-debris-analysis-rule np-commma-subj-relative
    :pattern (np "," subject-relative-clause)
    :action (:function attach-commma-subj-relative-to-np first second third))

(defun attach-commma-subj-relative-to-np (np-edge comma-edge srel-edge)
  (let* ((np (edge-referent np-edge))
	 (s-rel	(edge-referent srel-edge))
	 (s-var (subcategorized-variable s-rel :subject np)))
      (when s-var
	(make-edge-over-long-span 
	 (pos-edge-starts-at np-edge)
	 (pos-edge-ends-at srel-edge)
	 (edge-category np-edge)
	 :form (edge-form np-edge)
	 :rule 'attach-commma-subj-relative-to-np
	 :referent
	 (bind-dli-variable 'predication
			    (bind-dli-variable s-var **lambda-var** s-rel)
			    np)
	      :constituents `(,np-edge ,comma-edge ,srel-edge)))))


(defun attach-pp-to-np-under-s (s-edge comma-edge pp-edge)
  (declare (special s-edge comma-edge pp-edge))
  (push-debug `(,s-edge ,comma-edge ,pp-edge))
  ;;(setq s-edge (car *) comma-edge (cadr *) pp-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
        target )
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
      ;; replace eq with acceptable-appositive?
      when (member (edge-form edge) '(category::NP category::proper-noun))
      do (setq target edge))
    (lsp-break "attach-pp-to-np-under-s")
    (cond
     (target
      (let ((dominating (edge-used-in target))
	    (new-edge
             (make-edge-over-long-span 
              (pos-edge-starts-at target)
              (pos-edge-ends-at pp-edge)
              (edge-category target)
              :form (edge-form target)
              :rule 'attach-pp-to-np-under-s
              :referent (edge-referent target) ;;!!!!
              :constituents `(,target ,comma-edge ,pp-edge))))
        (tuck-new-edge-under-already-knit
         target ;; subsumed
         new-edge
         dominating
         :right)
        s-edge))
     (t 
      ;;(lsp-break "attach-appositive-np-under-s fails")
      nil))))

(define-debris-analysis-rule np-comma-pp-comma
  :pattern ( np "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-pp-to-np-with-commas first second third fourth))

(define-debris-analysis-rule proper-noun-comma-pp-comma
  :pattern ( proper-noun "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-pp-to-np-with-commas first second third fourth))


(defun attach-pp-to-np-with-commas (np-edge comma-edge-1 pp-edge comma-edge-2)
  (declare (special comma-edge-1 pp-edge comma-edge-2))
  ;; Look up the right fridge of the s for a proper-noun 
  (let* ((np (edge-referent np-edge))
	 (pobj-edge (edge-right-daughter pp-edge))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-edge (edge-left-daughter pp-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (subcategorized-variable np
				   prep-word
				   pobj-referent)))
    (cond
      (var-name
       (setq np (bind-dli-variable var-name pobj-referent np))
       (make-edge-over-long-span 
	(pos-edge-starts-at np-edge)
	(pos-edge-ends-at comma-edge-2)
	(edge-category np-edge)
	:form (edge-form np-edge)
	:rule 'attach-pp-to-np-with-commas
	:referent np
	:constituents `(,np-edge ,comma-edge-1 ,pp-edge ,comma-edge-2)))
      (t 
       ;;(lsp-break "attach-pp-to-np-with-commas fails")
       nil))))


(define-debris-analysis-rule proper-noun-comma-vg+ed-comma
  :pattern (proper-noun "," vp+ed ",")
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           attach-non-restrictive-relative-clause first second third fourth))

(defun attach-non-restrictive-relative-clause (np intial-comma vp+ed final-comma)
  (declare (special category::np))
  (let* ((np-ref (edge-referent np))
         (vp-ref (edge-referent vp+ed))
         (modified-vp-ref (unpack-subject-control np-ref vp-ref vp+ed))
         (modified-np-ref (bind-dli-variable 'modifier modified-vp-ref np-ref)))
    (setf (edge-referent np) modified-np-ref)
    (let* ((category-to-use (edge-category np))
           (form-to-use category::np)
           (edge (make-edge-over-long-span
                  (pos-edge-starts-at np)
                  (pos-edge-ends-at final-comma)
                  category-to-use
                  :form form-to-use
                  :referent modified-np-ref
                  :rule 'attach-non-restrictive-relative-clause
                  :constituents `(,np ,intial-comma ,vp+ed ,final-comma))))
      edge)))


(define-debris-analysis-rule np-vp+ed
  :pattern (np vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           attach-restrictive-relative-clause first second))

(defun attach-restrictive-relative-clause (np vp+ed)
  (declare (special category::np))
  (unless (adverb-at? (pos-edge-starts-at vp+ed))
    ;; this test is a heuristic, to block
    ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
    (let* ((np-ref (edge-referent np))
	   (vp-ref (edge-referent vp+ed))
	   (modified-vp-ref (unpack-subject-control np-ref vp-ref vp+ed))
	   (modified-np-ref (bind-dli-variable 'predication modified-vp-ref np-ref)))
      (setf (edge-referent np) modified-np-ref)
      (let* ((category-to-use (edge-category np))
	     (form-to-use category::np)
	     (edge (make-edge-over-long-span
		    (pos-edge-starts-at np)
		    (pos-edge-ends-at vp+ed)
		    category-to-use
		    :form form-to-use
		    :referent modified-np-ref
		    :rule 'attach-restrictive-relative-clause
		    :constituents `(,np ,vp+ed))))
	edge))))

(defun adverb-at? (position)
  (declare (special category::adverb))
  (loop for e in (all-edges-on (pos-starts-here position))
       thereis (and (edge-p e) (eq (edge-form e) category::adverb))))

(define-debris-analysis-rule pp-vg+ed
  :pattern (pp vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           attach-restrictive-relative-clause-to-pp first second))

(defun attach-restrictive-relative-clause-to-pp (pp-edge vp+ed)
  (declare (special category::np))
  (let ((right-fringe-of-pp ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at pp-edge))))
        target target-ref
        new-target-ref)
    (declare (special right-fringe-of-pp))
    (loop for edge in right-fringe-of-pp
       ;; replace eq with acceptable-appositive?
       when (or
	     (eq (edge-form edge) category::proper-noun)
	     (eq (edge-form edge) category::np))
       do (setq target edge))
    (cond
      (target       
       (let* ((np-ref (edge-referent target))
	      (vp-ref (edge-referent vp+ed))
	      (modified-vp-ref (unpack-subject-control np-ref vp-ref vp+ed))
	      (modified-np-ref (bind-dli-variable 'predication modified-vp-ref np-ref)))
	 (setf (edge-referent target) modified-np-ref)
	 (let* ((category-to-use (edge-category target))
		(form-to-use category::np)
		(new-edge (make-edge-over-long-span
			   (pos-edge-starts-at target)
			   (pos-edge-ends-at vp+ed)
			   category-to-use
			   :form form-to-use
			   :referent modified-np-ref
			   :rule 'attach-restrictive-relative-clause
			   :constituents `(,target ,vp+ed))))
	   (tuck-new-edge-under-already-knit
	    target ;; subsumed
	    new-edge
	    pp-edge
	    :right)
	   pp-edge))))))


(define-debris-analysis-rule s-vg+ed
  :pattern (s vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           attach-restrictive-relative-clause-to-s first second))

(defun attach-restrictive-relative-clause-to-s (s-edge vp+ed)
  (declare (special category::np))
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
        target target-ref
        new-target-ref)
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
       ;; replace eq with acceptable-appositive?
       when (or
	     (eq (edge-form edge) category::proper-noun)
	     (eq (edge-form edge) category::np))
       do (setq target edge))
    (cond
      (target       
       (let* ((dominating (edge-used-in target))
	      (np-ref (edge-referent target))
	      (vp-ref (edge-referent vp+ed))
	      (modified-vp-ref (unpack-subject-control np-ref vp-ref vp+ed))
	      (modified-np-ref (bind-dli-variable 'predication modified-vp-ref np-ref)))
	 (setf (edge-referent target) modified-np-ref)
	 (let* ((category-to-use (edge-category target))
		(form-to-use category::np)
		(new-edge (make-edge-over-long-span
			   (pos-edge-starts-at target)
			   (pos-edge-ends-at vp+ed)
			   category-to-use
			   :form form-to-use
			   :referent modified-np-ref
			   :rule 'attach-restrictive-relative-clause-to-s
			   :constituents `(,target ,vp+ed))))
	   (tuck-new-edge-under-already-knit
	    target ;; subsumed
	    new-edge
	    dominating
	    :right)
	   s-edge))))))


(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function respan-edge-around-one-word second first third))



(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))


(define-debris-analysis-rule adverb-comma
  :pattern (adverb "," )
  :action (:function respan-edge-around-adverb-comma first second))

(defun respan-edge-around-adverb-comma (word-edge comma)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (pos-edge-starts-at word-edge))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,word-edge ,comma))
      edge)))


(define-category event-relation
  :specializes perdurant
  :binds ((relation)
          (event)
          (subordinated-event)
	  (adverb))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
    though the head decides what to do with it based on the
    composition. Same design as pps."
  )

(mark-as-form-category category::event-relation)

(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function create-event-relation third first first third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-clause )
  :action (:function create-event-relation third first first third))

(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s and subordinate-clause  )
  :action (:function create-event-relation  first third first third))

(define-debris-analysis-rule clause-comma-subordinate
  :pattern ( s "," subordinate-clause )
  :action (:function create-event-relation  first third first third))

(define-debris-analysis-rule clause-subordinate
  :pattern ( s subordinate-clause )
  :action (:function create-event-relation  first second first second))



(define-debris-analysis-rule when-relative-clause-comma
               :pattern (when-relative-clause "," s)
	       :action (:function create-event-relation  first third first third))

(define-debris-analysis-rule where-relative-clause-comma
               :pattern (where-relative-clause "," s)
	       :action (:function create-event-relation  first third first third))


(define-debris-analysis-rule s-when-relative-clause
               :pattern (s when-relative-clause)
	       :action (:function create-event-relation  second first first second))

(defun create-event-relation (event-edge sub-clause-edge first last)
  (let* ((conj (value-of 'SUBORDINATE-CONJUNCTION (edge-referent sub-clause-edge)))
         (event (edge-referent event-edge))
         (sub-event (edge-referent sub-clause-edge))
         (new-start-pos (pos-edge-starts-at first))
         (new-end-pos (pos-edge-ends-at last)))
    (make-edge-over-long-span
     new-start-pos ;; the edge vector
     new-end-pos
     category::event-relation
     :form category::s
     :referent (make-event-relation conj event sub-event)
     :rule 'create-event-relation
     :constituents `(,first ,last))))

(define-debris-analysis-rule clause-subordinate-relative-clause
  :pattern ( s subordinate-relative-clause )
  :action (:function create-subject-relative-event-relation  first second first second))

(defun create-subject-relative-event-relation (s sub-clause-edge first last)
  (let* ((right-fringe-of-s ;; ordered bottom to top
	  (all-edges-on (pos-ends-here (pos-edge-ends-at s))))
	 target target-ref
	 new-target-ref
	 (conj (value-of 'SUBORDINATE-CONJUNCTION (edge-referent sub-clause-edge)))
	 (event (edge-referent s))
	 (sub-event (edge-referent sub-clause-edge))
	 (new-start-pos (pos-edge-starts-at first))
	 (new-end-pos (pos-edge-ends-at last)))
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
       ;; replace eq with acceptable-appositive?
       when (and
	     (or
	      (eq (edge-form edge) category::proper-noun)
	      (eq (edge-form edge) category::np))
	     (subcategorized-variable sub-event :subject (edge-referent edge)))
       do (setq target edge))
    (when target 
      (setq sub-event (bind-dli-variable (subcategorized-variable sub-event :subject (edge-referent target))
					 (edge-referent target)
					 sub-event))
					 
      (make-edge-over-long-span
       new-start-pos ;; the edge vector
       new-end-pos
       category::event-relation
       :form category::s
       :referent (make-event-relation conj event sub-event)
       :rule 'create-event-relation
       :constituents `(,first ,last)))))

(define-debris-analysis-rule clause-comma-subordinate-np
  :pattern ( s "," subordinate-conjunction np)
  :action (:function create-event-np-relation  first third fourth first fourth))


(defun create-event-np-relation (event-edge sub-edge sub-np-edge first last)
  (let* ((conj (edge-referent sub-edge))
         (event (edge-referent event-edge))
         (sub-event (edge-referent sub-np-edge))
         (new-start-pos (pos-edge-starts-at first))
         (new-end-pos (pos-edge-ends-at last)))
    (when
        (or
         (itypep sub-event :process)
         (itypep sub-event :event-relation))
      (make-edge-over-long-span
       new-start-pos ;; the edge vector
       new-end-pos
       category::event-relation
       :form category::event-relation
       :referent (make-event-relation conj event sub-event)
       :rule 'create-event-relation
       :constituents `(,first ,last)))))

(define-debris-analysis-rule clause-comma-subordinate-event-relation
  :pattern ( s "," subordinate-conjunction event-relation)
  :action (:function create-event-np-relation  first third fourth first fourth))

(defun make-event-relation (conj event sub-event)
  (make-simple-individual ;; make-non-dli-individual
   category::event-relation
   `((relation ,conj) (event ,event) (subordinated-event ,sub-event))))


;;;--------------------
;;; Common subroutines
;;;--------------------

(defun unpack-subject-control (subject vp vp-edge)
  (let* ((downstairs-subj-var (subject-variable vp))
         (new-vp-ref (bind-dli-variable
                      downstairs-subj-var **lambda-var** vp)))
    (setf (edge-referent vp-edge) new-vp-ref)
    new-vp-ref))
