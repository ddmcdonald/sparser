;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "syntax-predicates"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  June 2019

;; Simple function lifted from syntax-functions 8/30/16

(in-package :sparser)


;;--- object complements

(defun takes-object-complement? (vg)
  "Are there any variables for object complement in the subcat
   information on this verb"
  (find-subcat-vars :oc vg))

(defun obj-complement-follows? (vg)
  "If the head can take an object complement, and the next constituent
   would satisfy the constrains on that complement, then 'reset' the label
   on the edge we are creating (make it a vg rather than the vp that the
   rule indicates) so we can use the rule again to collect the complement"
  (when *right-edge-into-reference*
    (loop for e in (edges-after *right-edge-into-reference*)
       as item = (edge-referent e)
       thereis (valid-object-complement? vg item))))

(defun valid-object-complement? (vg obj)
  "Is the type of this candidate complement consistent with constraints
   on the EC variable for this head."
  (let ((variables (takes-object-complement? vg)))
    (when (and obj variables) ;; get null OBJ in "...slightly decreased haptotaxis..."
      (when (cdr variables)
        (error "Multiple object-complement variables on ~a: (~a)~
              ~%Don't know what to do." vg variables))
      (satisfies-variable-restriction? obj (car variables)))))


;;--- indirect objects

(defun possible-indirect-object? (vg)
  (declare (special category::what category::which))
  (and (itypep vg 'directed-action)
       *right-edge-into-reference*
       (loop for e in (edges-after *right-edge-into-reference*)
             thereis
               (or
                (member (form-cat-name e) *np-category-names*)
                (eq (cat-name (edge-category e)) 'how)
                (member (form-cat-name e)
                        '(thatcomp howcomp ifcomp))
                (and (eq 's (form-cat-name e))
                     (or (is-in-p category::what
                                  (semtree (edge-referent e)))
                         (is-in-p category::which
                                  (semtree (edge-referent e)))))))))

(defun is-in-p (item tree &key test)
  (if (null test)
      (cond ((and (consp tree) (listp (cdr tree))) ;; not a dotted pair
             (loop for i in tree thereis (is-in-p item i)))
            ((consp tree)
             (or
              (eq item (car tree))
              (eq item (cdr tree))))
            (t
             (eq item tree)))
      (cond ((and (consp tree) (listp (cdr tree))) ;; not a dotted pair
             (loop for i in tree thereis (is-in-p item i :test test)))
            ((consp tree)
             (or (funcall test item (car tree))
                 (funcall test item (cdr tree))))
            (t
             (funcall test item tree)))))



;;--- adjectives

(defparameter *check-takes-adj?* nil)

(defun takes-adj? (head adjective &optional verb-complement?)
  (declare (special category::determiner))
  (and ;; had strange case with "some cases this" -- head was "this"
   ;; so rule out these cases
   (not (and (individual-p head) (itypep head category::determiner)))
   (not (itypep head  category::determiner))

   ;; Positive reasons to assume we can compose
   (when
       (or (subcategorized-variable head :m adjective)
           (itypep adjective 'certain)
           (and
            (not verb-complement?)
            (subcategorized-variable adjective :subject head))
           ;; These next two tests are necessary but not sufficient
           ;; unless they also checked compatibility with the head.
           ;; But for they're adequate for determining rule validity
           ;; in adj-noun-compound
           (itypep adjective 'attribute-value)
           (itypep adjective 'attribute))
     (when (and *check-takes-adj?* ;; may want to 
                (subcategorized-variable adjective :subject head))
       (warn "takes-adj? with ~s and ~s~%" head adjective))
     t)))

(defun adjective-phrase? (e)
  (declare (special category::adjective))
  (let ((re (and (edge-p e)
                 (edge-right-daughter e))))
    (and (edge-p re)
         (or (eq category::adjective (edge-form re))
             (eq category::adjp (edge-form re))))))


(defun that-relative-clause? (ref)
  (value-of 'that-rel ref))

(defun has-adverb-variable? (vg-or-adjg vg-or-adjg-phrase adverb)
  (cond
   ((individual-p vg-or-adjg)
     (loop for category in (indiv-type vg-or-adjg)
       thereis (find-variable-for-category 'adverb category)))
    ((referential-category-p vg-or-adjg)
     (find-variable-for-category 'adverb vg-or-adjg))
    (t nil)))


(defun is-non-anaphor-numeric? (edge ref)
  (declare (special edge ref))
  (and (edge-p edge)
       (eq ref (edge-referent edge))
       (itypep (edge-referent edge) 'number)
       (or (and (eq :single-term (edge-right-daughter edge)) ;; digits, like "3"
                (eq :its-a-number (edge-rule edge)))
           (and (eq :long-span (edge-right-daughter edge))   ;; digit as head, no real parse
                (eq 'sdm-span-segment (edge-rule edge))))))
           



(defparameter *flag-new-cases-for-open-core-variable* nil
  "Gates the warning in open-core-variable")

(defun open-core-variable (predicate)
  "We believe we are looking at an individual that is the referent
  of a clause/vp, and consequently should variables corresponding to
  subject and object (as determined by the subcategorization of
  its verb). This function is used by the WH routines to determine
  which variable in this object is unbound and is likey to be the
  one that the question is asking about. Returns the open variable
  or nil if both are bound or not defined on this individual/verb."
  (let ((subj-var (subject-variable predicate))
        (obj-var (object-variable predicate)))
    (cond
      ((and subj-var obj-var)
       (if (value-of subj-var predicate)
         obj-var
         subj-var))
      (subj-var
       (unless (value-of subj-var predicate)
         subj-var))
      (obj-var
       (unless (value-of obj-var predicate)
         obj-var))
      ((itypep predicate 'copular-predication)
       (let ((attr (value-of 'value predicate)))
         (when attr
           (variable-for-attribute attr))))
      (t
       (when *flag-new-cases-for-open-core-variable*
         (warn "Looking for the open-core-variable on new type: ~a in ~s" 
               predicate (current-string)))
       nil))))


(defun can-fill-vp-subject? (vp subj &optional (left-edge (left-edge-for-referent)))
  (and
   (missing-subject-vars vp) ;; vp has a subject which is not bound
   (subcategorized-variable vp :subject subj)
   (or (not (or (missing-object-vars vp)
                (and (not (intransitive? (itype-of vp))) ;; for cases like "X resulted in Y"
                     (eq (form-cat-name (right-edge-for-referent)) 'vp+ed))))
       ;; can't be a reduced relative, no available object-var

       ;; Unless we have reason to believe the object's been
       ;; replaced with a trace
       (preceding-that-whether-or-conjunction? left-edge)

       (value-of 'statement vp) ;; or a statement (clausal complement)
       (and *current-chunk*
            (typep *current-chunk* 'chunk)
            (memq 'ng (chunk-forms *current-chunk*))))))
       
(defun can-fill-vp-object? (vp subj subj-edge &aux (left-edge (edge-to-its-left subj-edge)))
  "This is only called in the context of NP VP+ED -- to arrange that we prefer 
   reduced relative clause with the NP having an OBJECT reading: vp has a bound subject
   and NP can fill object:  (not (can-fill-vp-subject? vp subj)).
   Also block relativization of 'we realized', and of 'that X VP+ED ...'"
  (let ((word-before-subj (word-just-to-the-left subj-edge)))
    (and
     (not (and (edge-p subj-edge)
               (eq (cat-name (edge-category subj-edge)) 'pronoun/first/plural)))
     (or (not (and word-before-subj
                   (string-equal (pname word-before-subj) "that")))
         (and (edge-p (edge-to-its-right (right-edge-for-referent)))
              (member (form-cat-name (edge-to-its-right (right-edge-for-referent)))
                      '(vp+ed vp))))
     (not (intransitive? (itype-of vp)))
     (subcategorized-variable vp :object subj))))

#+ignore(defun is-intransitive? ()) ;; no callers in R3 load

;; check to see if a verb is defined as intransitive
(defun intransitive? (cat)
  (when (individual-p cat) (setq cat (itype-of cat)))
  (loop for realization in (cat-realization cat)
     thereis
       (when (rdata-etf realization)
         (eq (etf-name (rdata-etf realization)) 'intransitive))))

(defun transitive-vp-missing-object? (vp &optional (right-edge (right-edge-for-referent)))
  ;; this is a case like "that MEK phosphorylates" which has
  ;;  a VG, not a VP, and no object -- want to make this a
  ;;  constituent with a gap
  (and right-edge
       (not (is-passive? right-edge))
       (not (adjective-phrase? right-edge))
       (missing-object-vars vp)
       ;; whether-comp (like "test" and "investigate") can have either a non-statement object
       ;;  like "we tested the pathway", or a whether-comp ("we tested whether ...")
       ;;  so we need to check for either case
       (not (value-of 'statement vp))
       (not (thatcomp-verb right-edge))
       (not (loop for v in (find-subcat-vars :to-comp vp)
                  thereis (value-of v vp)))))

(defun transitive-vp-with-object? (vp &optional (right-edge (right-edge-for-referent)))
  ;; case like "The receptor tyrosine kinase EGFR binds the growth factor ligand EGF."
  (and right-edge
       (bound-object-var vp)))

(defun preceding-that-whether-or-conjunction? (left-edge)
  "Called by can-fill-vp-subject? to determine whether there is a trace-forming
   operator to the immediate left of the would-be subject. This allows transitive
   verbs to presume that their object has been replaced with a trace"
  (when (and (edge-p left-edge)
             (position-p (pos-edge-starts-at left-edge)))
    (let* ((previous-treetop (left-treetop-at/only-edges (pos-edge-starts-at left-edge)))
	   (prev-form (when (edge-p previous-treetop)
                        (edge-form previous-treetop)))
	   (prev-cat (when (edge-p previous-treetop)
                       (edge-category previous-treetop))))
      (when (category-p prev-form)
        (or
         (member (cat-name prev-cat) '(that)) ;; e.g. (test-dec 3)
         (member (cat-name prev-form)
                 '(question-marker ;; what block
                   wh-pronoun ;; which (like 'that')
                   subordinate-conjunction conjunction
                   spatio-temporal-preposition adverb)))))))



(defun collection-p (item)
  (declare (special category::collection))
  (itypep item category::collection))

(defun sequence-p (item)
  (declare (special category::sequence))
  (itypep item category::sequence))

(defun collection-or-sequence-p (item)
  ;; there are times when it's useful to group these
  (declare (special category::collection
                    category::sequence))
  (or (collection-p item)
      (sequence-p item)))

(defun is-basic-collection? (i)
  (and (individual-p i)
       (collection-p i)
       (not
        (itypep i `(:or ;;word-colon-word
                    ;; CHECK THIS OUT -- CAUSES PROBLEMS, BUT SHOULDN'T
                    hyphenated-pair
                    hyphenated-triple
                    slashed-sequence
                    two-part-label
                    slashed-protein-collection
                    )))))

;;;-----------------------
;;; type-queries on edges
;;;-----------------------

(defun is-passive? (edge)
  (declare (special category::subordinate-clause category::vp+passive
                    category::vg+passive category::verb+passive))
  (let ((form (form-cat-name edge))
        (right-side (edge-right-daughter edge)))
    (case form
      ((subordinate-clause subject-relative-clause)
       (cond
         ((edge-p right-side)
          ;; if the subordinate or relative clause was extended by a DA rule, then
          ;; the right edge is :long-span, e.g. in
          ;; "has the ability to inhibit the phosphorylation of both Smad2 and Smad3 but it only slightly inhibits the activation of Akt, ERK, JNK and p38 MAPK, suggesting that it down-regulates Snail expression via a Smad dependent pathway"
          (is-passive? right-side))
         ((edge-p (edge-left-daughter edge))
          (is-passive? (edge-left-daughter edge)))))
      ((vp+passive vg+passive verb+passive) t)
      (vp+ed
       (and (pp? right-side) ;; by-phrase?
            (eq 'by (edge-cat-name (edge-left-daughter right-side)))))
      (t nil))))



;;--- check for preposed prepositions

(defun preposed-of? ()
  "Does the sentence start with 'of'. Called by compose-wh-with-vp
   to check for a common situation in questions.
  Uses the information acquired in sweep-sentence-treetops, which
  runs just after chunking and before we start parsing at the forest level."
  (when (layout) ; nil during some phases
    (let ((leading-prep (starts-with-prep?)) ;; returns an edge
          (of-edges (of-mentions (layout))))
      ;; Could have used there-are-of-mentions? to get the of-edges but it
      ;; has a filter that omits an edge if it is 'used-in' anything.
      ;; That's probably OBE, but not worth changes for just one case.
      (when (and leading-prep of-edges)
        (let ((of-edge (car (last of-edges)))) ;; pushed onto the list
          (eq of-edge leading-prep))))))



;;;---------------------------------------------
;;; finding the parts of a prepositional phrase
;;;---------------------------------------------

(defgeneric get-word-for-prep (prep-val)
  (:documentation "Written to return the word object for the preposition
    given a value that's pointing to it or a wrapper around it.")
  (:method ((i individual)) ;; #<to 589>
    (get-word-for-prep (itype-of i)))
  (:method ((c category)) ;; category::to
    (get-word-for-prep (cat-name c)))
  (:method ((cat-name symbol))
    (resolve/make (string-downcase (symbol-name cat-name)))))



(defun decompose-prepositional-phrase (pp-edge)
  "Abstract out the usual operations. Return the preposition
   and its complement. Used by syntax-functions, so needs 
   to return referents, not edges."
  ;; There are a lot of special cases. Return nil if things 
  ;; don't layout right and warn so can investigate later
  (let ((pobj-referent (identify-pobj pp-edge))
        (preposition (identify-preposition pp-edge)))
    (if (and preposition pobj-referent)
      (values preposition pobj-referent)
      (if preposition
        (warn "Can't find pobj in e~a"
              (edge-position-in-resource-array pp-edge))
        (warn "Can't find preposition in e~a"
              (edge-position-in-resource-array pp-edge))))))

(defun identify-preposition (edge)
  "The edge is over a pp or prep-complement, etc. that is headed
   by a preposition. Sometimes the actual preposition word is
   buried under other edges. Find and return the preposition."
  (let* ((edge (base-pp edge))
         (prep-edge (edge-left-daughter edge))
         ;; in case where  (LOOK-FOR-PREP-BINDERS)
         ;;  ends up leading to this, the edge is a preposition itself
         (left-daughter (when (edge-p prep-edge)
                          (edge-left-daughter prep-edge)))
         (right-daughter (when (edge-p prep-edge)
                           (cond ((eq :long-span (edge-right-daughter prep-edge))
                                  (second (edge-constituents prep-edge)))
                                 ((edge-p (edge-right-daughter prep-edge))
                                  (edge-right-daughter prep-edge))
                                 (t nil)))))    
    (flet ((prep-edge? (edge)
             (memq (form-cat-name edge) *prep-forms*)))
      (cond
        ((and
          (eq (edge-rule prep-edge) 'resolve-initial-stranded-hyphen)
          (eq (cat-name (edge-category right-daughter)) 'preposition))
         ;; strange case "qRT-PCR- Smyd3 -For 5′ TGCGCACCATGGAGCCGTAC"
         ;; probably not a preoposition, but avoid this error
         right-daughter)
        ((word-p left-daughter)
         left-daughter)

        ((edge-p left-daughter) ;; formerly left-daughter = prep-word
         (cond
           ((polyword-p (edge-rule left-daughter))
            (edge-rule left-daughter)) ;; return the pw
       
           ((and (prep-edge? left-daughter) ;; sanity check
                 (word-p left-daughter))
            ;; The word was elevated to a category, e.g. 'with'
            left-daughter)

           ((and (prep-edge? left-daughter)
                 (edge-p left-daughter))
            (cond
              ((and (individual-p (edge-referent left-daughter))
                    (itypep (edge-referent left-daughter) 'collection))
               nil)
              ((or (word-p (edge-left-daughter left-daughter))
                   (polyword-p (edge-left-daughter left-daughter)))
               (edge-left-daughter left-daughter))
              ((let ((ld (edge-left-daughter left-daughter)))
                 (when
                     (and (edge-p ld)
                      (or (word-p (edge-left-daughter ld))
                          (polyword-p (edge-left-daughter ld))))
                   ld)))
              (t (push-debug `(,edge ,prep-edge ,left-daughter))
                 (break "Unexpected edge-over-preposition pattern:~
                       ~%he left daughter ~a is a prepositiion-edge ~
                         but it doesn't dominate a preposition.~
                       ~%topmost edge is ~a" left-daughter edge)
                 nil)))

           ((and ;; "30 minutes after stimulation ..."
             (edge-p left-daughter)
             (itypep (edge-referent left-daughter) 'amount-of-time)
             (edge-p right-daughter)
             (prep-edge? right-daughter))
            (edge-left-daughter right-daughter))

           ((and (edge-p right-daughter) ;; "even in"
                 (prep-edge? right-daughter)
                 (word-p (edge-left-daughter right-daughter)))
            (edge-left-daughter right-daughter))

           (t
            (push-debug `(,edge ,prep-edge ,left-daughter ,right-daughter))
            (break "Unexpected pattern of an edge over a preposition:~%~a"
                   prep-edge)
            nil)))
        (t
         (push-debug `(,edge ,prep-edge ,left-daughter ,right-daughter))
         (warn "Unexpected type of 'preposition': ~a~%~a"
               (type-of left-daughter) left-daughter)
         nil)))))

(defun identify-pobj (edge)
  (let ((pobj-edge (find-pobj-edge edge)))
    (when pobj-edge (edge-referent pobj-edge))))

(defun find-pobj-edge (edge)
  (when (eq (edge-rule edge) 'elevate-spanning-edge-over-paired-punctuation)
    ;; "the epitope (on the ligand) "
    (setq edge (edge-left-daughter edge)))
  (let* ((bpp-edge (base-pp edge))
         (erd (edge-right-daughter bpp-edge)))
    (if (edge-p erd)
        erd
        (else
          (warn "can't find pobj edge for edge ~s in sentence: ~s" edge (current-string))
          nil))))

(defun base-pp (edge)
  (when (eq (edge-rule edge) 'knit-parens-into-neighbor)
    ;; e.g. in "about Myosin IIC ( xref ; xref )"
    (setq edge (edge-left-daughter edge)))
  (cond ((and (edge-p (edge-left-daughter edge))
           (eq  (form-cat-name (edge-left-daughter edge)) 'adverb))
         (base-pp (edge-right-daughter edge)))
        ((and (edge-p (edge-left-daughter edge))
              (eq (edge-rule edge) 'elevate-spanning-edge-over-paired-punctuation))
         (base-pp (edge-left-daughter edge)))
        (t edge)))



;;;--------------------
;;; recording pronouns
;;;--------------------

(defun condition-anaphor-edge (head item subcat-label var)
  ;; We now know the restriction that any candidate referent for this
  ;; pronoun has to satisfy, and we know the v/r of the variable it has to bind. This
  ;; edge was recorded in the layout as a pronoun and will be retrieved in
  ;; the pass that does the search after all the parsing has finished, so
  ;; this is the edge that we work with. We need to record this
  ;; information, and we need to arrange a 'dummy' individual to be created
  ;; and bound to this variable during the parsing phase so that we can
  ;; track through its bound-in relation an replace it in that binding with
  ;; the correct referent once we've identified it. Kind of Rube Goldberg
  ;; -esque, but it's the price we pay for delaying rather than trying to
  ;; identify the referent at moment the pronoun is encountered.
  (declare (special var))
  (cond
    ((and *do-anaphora* (is-pronoun? item))
     (let* ((pn-edge (edge-for-referent item))
            (ignore? (ignore-this-type-of-pronoun (edge-category pn-edge)))
            (v/r (unless ignore? (effective-pronoun-value-restriction var))))
       (cond
	 (ignore?
	  item)
	 (*constrain-pronouns-using-mentions*
          (when v/r
            ;; Comes from the value restriction of the variable to be
            ;; bound as determined by assimilate-subcat. It's frequently
            ;; the case that this variable doesn't have a value restriction,
            ;; particularly for default choices like 'subject'.
            (tr :recording-pn-mention-v/r head var v/r)
            (setf (mention-restriction (edge-mention pn-edge)) v/r))
          item)
	 (t
	  (let ((relation-label (or (form-label-corresponding-to-subcat subcat-label)
                                    category::np))
                (restriction (or v/r category::unknown-grammatical-function)))
            (declare (special category::np category::unknown-grammatical-function))
	    (when (consp restriction)
	      ;; the first one after the :or
	      (setq restriction 
		    (or (loop for c in (cdr restriction) 
                              when (itypep (edge-referent pn-edge) c)
                              do (return c))
			(cadr restriction))))
            (tr :recording-pn-mention-v/r head var v/r)
	    (let ((new-ref (individual-for-ref restriction)))
	      (unless ignore?
                ;; If we're going to ignore the pronoun we don't want or
                ;; need to rework its edge
                (tr :anaphor-conditioned-to new-ref restriction relation-label)
		;; Encode the type-restriction in the category label
		;; and the grammatical relationship in the form
		(setf (edge-category pn-edge) restriction)
		(setf (edge-form pn-edge) relation-label)
		(set-edge-referent pn-edge new-ref)
		(setf (edge-rule pn-edge) 'condition-anaphor-edge))
	      new-ref))))))
    (t item)))


(defun effective-pronoun-value-restriction (var)
  (if (disjunctive-lambda-variable-p var)
      (let ((vrs
             (remove-duplicates
              (loop for v in (dvar-variables var)
                      as v/r = (var-value-restriction v)
                    append
                      (if (and (consp v/r) (eq (car v/r) :or))
                          (cdr v/r)
                          (list v/r))))))
        (if (cdr vrs)
            `(:or ,.vrs)
            (car vrs) ))
      (var-value-restriction var)))

(defun form-label-corresponding-to-subcat (subcat-label)
  ;; Used with pronouns to encode relationship when it's known
  (case subcat-label
    (:subject category::grammatical-subject)
    (:object category::direct-object)
    (otherwise nil)))

(defun takes-thatcomp? (item)
  ;; the item is one that takes a THATCOMP (e.g. "suggest")
  ;;  or "evidence"  
  (itypep item 'bio-thatcomp))


            
(defun first-sentence-constituent (edge &optional (sentence (current-sentence)))
  ;; used in compose-wh-with-vp (at least)
  (let* ((position-before (starts-at-pos sentence))
         (first-item (next-treetop/rightward position-before)))
    (eq edge first-item)))
