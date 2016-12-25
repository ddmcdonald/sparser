;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "syntax-predicates"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  October 2016

;; Simple function lifted from syntax-functions 8/30/16

(in-package :sparser)

(defun get-word-for-prep (prep-val)
  (when (individual-p prep-val)
    ;; happens in "1 hour after EGF stimulation"
    ;; when the preposition absorbs the temporal interval
    (setq prep-val (itype-of prep-val)))
  
  (resolve/make ;; needs to be a word for the subcat frame!
   (string-downcase
    (symbol-name
     (cat-symbol prep-val)))))

(defun takes-adj? (head adjective)
  (and ;; had strange case with "some cases this" -- head was "this"
   ;; so rule out these cases
   (not (and (individual-p head) (itypep head category::determiner)))
   (not (itypep head  category::determiner))

   ;; Positive reasons to assume we can compose
   (or (subcategorized-variable head :m adjective)
       (subcategorized-variable adjective :subject head)
       ;; These next two tests are necessary but not sufficient
       ;; unless they also checked compatibility with the head.
       ;; But for they're adequate for determining rule validity
       ;; in adj-noun-compound
       (itypep adjective 'attribute-value)
       (itypep adjective 'attribute))))


(defun adjective-phrase? (e)
  (declare (special category::adjective))
  (let ((re (and (edge-p e)
                 (edge-right-daughter e))))
    (and (edge-p re)
         (eq category::adjective (edge-form re)))))


(defun has-adverb-variable? (vg-or-adjg vg-or-adjg-phrase adverb)
  (cond
   ((individual-p vg-or-adjg)
     (loop for category in (indiv-type vg-or-adjg)
       thereis
       (find-variable-for-category 'adverb category)))
    ((referential-category-p vg-or-adjg)
     (find-variable-for-category 'adverb vg-or-adjg))
    (t
     #+ignore
     (error "Trying to add adverb to verbal element whose semantics won't take ~s.~% Semantics is ~s, ~%surface string is ~s"
	    adverb
	    vg-or-adjg-phrase
	    (sur-string vg-or-adjg))
     nil)))

(defun can-fill-vp-subject? (vp subj &optional (left-edge (left-edge-for-referent)))
  (and
   ;; vp has a subject
   (missing-subject-vars vp) ;; which is not bound
   (or
    ;; can't be a reduced relative, no available object-var
    (not (missing-object-vars vp)) ;; (not (object-variable vp)) (bound-object-var vp)
    ;; or a statement (clausal complement)
    (value-of 'statement vp)
    (preceding-that-whether-or-conjunction? left-edge)
    (and *current-chunk*
         (typep *current-chunk* 'chunk)
         (memq 'ng (chunk-forms *current-chunk*))))
   (subcategorized-variable vp :subject subj)))
       
(defun can-fill-vp-object? (vp subj)
  (and ;; vp has a bound subject -- NP can fill object
   (bound-subject-var vp)
   (subcategorized-variable vp :object subj)))


(defun preceding-that-whether-or-conjunction? (left-edge)
  (declare (special left-edge))
  (when (and (edge-p left-edge)
             (position-p (pos-edge-starts-at left-edge)))
    (let* ((previous-treetop (left-treetop-at/only-edges (pos-edge-starts-at left-edge)))
	   (prev-form (and (edge-p previous-treetop)
			   (edge-form previous-treetop)))
	   (prev-cat (and (edge-p previous-treetop)
			  (edge-category previous-treetop))))
      (declare (special previous-treetop prev-form prev-cat))
      (cond
	((or
	  (and (category-p prev-form)
	       (member (cat-name prev-form)
                       '(SUBORDINATE-CONJUNCTION CONJUNCTION
                         SPATIO-TEMPORAL-PREPOSITION ADVERB)))
	  (and (category-p prev-cat)
	       (member (cat-name prev-cat) '(THAT))))
        
	 t)
	(t
	 ;;(format t "preceding-that-or-whether? prev-form=~s and prev-cat=~s~&" prev-form prev-cat)
	 nil)))))


(defun collection-p (item)
  (declare (special category::collection))
  (itypep item category::collection))




;;;-----------------------
;;; type-queries on edges
;;;-----------------------

(defun is-passive? (edge)
  (declare (special category::subordinate-clause category::vp+passive
                    category::vg+passive category::verb+passive))
  (let ((form (cat-name (edge-form edge))))
    (case form
      ((subordinate-clause subject-relative-clause)
       (cond
         ((edge-p (edge-right-daughter edge))
          ;; if the subordinate or relative clause was extended by a DA rule, then
          ;; the right edge is :long-span
          ;; e.g. in
          ;; "has the ability to inhibit the phosphorylation of both Smad2 and Smad3 but it only slightly inhibits the activation of Akt, ERK, JNK and p38 MAPK, suggesting that it down-regulates Snail expression via a Smad dependent pathway"
          (is-passive? (edge-right-daughter edge)))
         ((edge-p (edge-left-daughter edge))
          (is-passive?(edge-left-daughter edge)))))
      ((vp+passive vg+passive verb+passive) t)
      (t nil))))


;;;---------------------------------------------
;;; finding the parts of a prepositional phrase
;;;---------------------------------------------

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
                           (edge-right-daughter prep-edge))))
    (declare (special prep-edge left-daughter right-daughter))
    
    (flet ((prep-edge? (edge)
             (memq (cat-name (edge-form edge))
                   '(preposition
                     spatio-temporal-preposition spatial-preposition))))
      (cond
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
              ((word-p (edge-left-daughter left-daughter))
               (edge-left-daughter left-daughter))
              (t (push-debug `(,edge ,prep-edge ,left-daughter))
                 (error "Unexpected edge-over-preposition pattern:~
                       ~%he left daughter ~a is a prepositiion-edge ~
                         but it doesn't dominate a preposition.~
                       ~%topmost edge is ~a" left-daughter edge))))

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
            (error "Unexpected pattern of an edge over a preposition:~%~a"
                   prep-edge))))
        (t
         (push-debug `(,edge ,prep-edge ,left-daughter ,right-daughter))
         (warn "Unexpected type of 'preposition': ~a~%~a"
               (type-of left-daughter) left-daughter)
         nil)))))

(defun identify-pobj (edge)
  (let* ((bpp-edge (base-pp edge))
         (erd (edge-right-daughter bpp-edge)))
    (if (edge-p erd)
        (edge-referent erd)
        (else
          (warn "can't find pobj edge for edge ~s" edge)
          nil))))


(defun base-pp (edge)
  (when (eq (edge-rule edge) 'knit-parens-into-neighbor)
    ;; e.g. in "about Myosin IIC ( xref ; xref )"
    (setq edge (edge-left-daughter edge)))
  (if (and (edge-p (edge-left-daughter edge))
           (eq (cat-name (edge-form (edge-left-daughter edge))) 'adverb))
      (base-pp (edge-right-daughter edge))
      edge))



;;;--------------------
;;; recording pronouns
;;;--------------------

(defun condition-anaphor-edge (item subcat-label v/r)
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
  (cond
    ((and *do-anaphora* (is-pronoun? item))
     (let* ((pn-edge (edge-for-referent item))
            (ignore? (ignore-this-type-of-pronoun (edge-category pn-edge))))
       (tr :conditioning-anaphor-edge pn-edge)
       (cond
	 (ignore?
	  item)
	 (*constrain-pronouns-using-mentions*
          (when v/r
            ;; Comes from the value restriction of the variable to be
            ;; bound as determined by assimilate-subcat. It's frequently
            ;; the case that this variable doesn't have a value restriction,
            ;; particularly for default choices like 'subject'.
            (tr :recording-pn-mention-v/r v/r)
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
            (tr :recording-pn-mention-v/r restriction)
	    (let ((new-ref (individual-for-ref restriction)))
	      (unless ignore?
                ;; If we're going to ignore the pronoun we don't want or
                ;; need to rework its edge
                (tr :anaphor-conditioned-to new-ref restriction relation-label)
		;; Encode the type-restriction in the category label
		;; and the grammatical relationship in the form
		(setf (edge-category pn-edge) restriction)
		(setf (edge-form pn-edge) relation-label)
		(setf (edge-referent pn-edge) new-ref)
		(setf (edge-rule pn-edge) 'condition-anaphor-edge))
	      new-ref))))))
    (t item)))

(defun form-label-corresponding-to-subcat (subcat-label)
  ;; Used with pronouns to encode relationship when it's known
  (case subcat-label
    (:subject category::grammatical-subject)
    (:object category::direct-object)
    (otherwise nil)))
