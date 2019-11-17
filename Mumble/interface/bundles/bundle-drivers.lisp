;;; -*-  Mode: LISP; Package: MUMBLE; Base: 10; Syntax: Common-Lisp -*-

;;; MUMBLE-86:  message-level >  bundle-drivers

;;; Copyright (C) 1985-2016 David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.


(in-package :mumble)

;; ChangeLog:
;;  8/99 Added minimal-bundle-driver to handle quantifier phrases.
;;  6/21/00 Made PROCESS-NP-ACCESSORIES operate on its accessories only if they
;;   are present rather than presuming that they are. Leaves more responsibility
;;   in the hands of the lspec-constructor, but aleviates the urge to use
;;   less specific bundles when dealing with nps.
;;  7/9 Changed the pronominalization criteria from :reducible to :in-focus.
;;  8/30 Removed the constraints in Process-np-accessories that any of the
;;   accessories are requied. Number and determiner-policy had been required,
;;   person and proper-name weren't.
;; 11/20/13 Started the makeover in earnest.


;#################################################################
;  Processing BUNDLES
;#################################################################


(defun discourse-unit-bundle-driver (bundle)
  ;;(landmark 'realizing-discourse-unit-bundle bundle))
  (let* ((phrase (phrase-named
		   (top-level-phrase (head bundle))))
	 (parameter (car (parameters-to-phrase phrase))))
    (let*-with-dynamic-extent
      ((*phrase-parameter-argument-list* (list (cons parameter (head bundle))))
       (result (build-rooted-phrase (definition phrase))))
      (entering-new-context result)
      (process-discourse-unit-further-specifications
       (further-specifications bundle))
      ;;pending rspecs was previously set--now i'm
      ;;trying to process the further specs directly 3/89
      (leaving-previous-context result)
      result)))


(defun top-level-phrase (bundle)
  (case (name (bundle-type bundle))
    (discourse-unit 'first-paragraph-of-discourse-unit)
    (general-clause 'first-sentence-of-discourse-unit)
    (conjunction-bundle
      (top-level-phrase (car (head bundle))))
    (otherwise  'just-a-phrase)))

(defun process-discourse-unit-further-specifications (fspec-list)
  (dolist (fspec  fspec-list)
 ;;need a special-case for attaching paragphaphs
    (let ((attach-fn (attachment-function fspec)))
      (if (and (eq attach-fn (attachment-point-named
			       'next-paragraph))
	       (available-in-present-context attach-fn))
	  ;;this is a paragraph-go for it
	  (attach-at-attachment-point
	    attach-fn
	    (specification fspec)
	    (position-of-AP-in-present-context attach-fn))
	  ;;otherwise- use the normal channels
          (attach (specification fspec) attach-fn ))
      )))

;################################################################

(defun clausal-bundle-driver (dtn root-node)
  ;; The resource of the dtn was extracted and instantiated by
  ;; realize-dtn using instantiate-phrase-in-dtn to populate
  ;; the parameter list. All we have to do here is handle
  ;; accessories and further specifications
  (landmark 'realizing-the-head-of-the-bundle dtn)
  (set-backpointer-of-root root-node dtn)
  (entering-new-context root-node)
  (process-further-specifications (adjuncts dtn))
  (process-clause-features dtn)
  (leaving-previous-context root-node)
  root-node)

(defun process-clause-features (dtn)
  (let ((features (features dtn)))
    (when features
      (macrolet ((ac (ac-name fun ac-value?)
		 `(let ((it (assoc (accessory-type-named ,ac-name)
				   (features dtn))))
		    (when it
		      (landmark 'processing-accessory it)
		      ,(if ac-value?
			   `(,fun (cdr it))
			   `(,fun))))))
        ;; These have to be done in the following order
        (ac :wh          process-wh-accessory            t)
        (ac :question    process-question-accessory    nil)
        (ac :tense-modal process-tense-modal-accessory   t)
        (ac :command     process-command-accessory     nil)
        (ac :perfect     process-perfect-accessory     nil)
        (ac :progressive process-progressive-accessory nil)
        (ac :passive     process-passive-accessory     nil)
        (ac :negate      process-negate-accessory      nil)
        (ac :wh-adj      process-wh-adjunct-accessory    t)))))
;; If we keep the bundle path alive, 
;; then fold these together

(defun process-clausal-accessories (bundle)
  (break "Call to process-clausal-accessories. Threaded right?")
  (check-type bundle bundle-specification)
  (macrolet ((ac (ac-name fun ac-value?)
		 `(let ((it (assoc (accessory-type-named ,ac-name)
				   (accessories bundle))))
		    (when it
		      (landmark 'processing-accessory it)
		      ,(if ac-value?
			   `(,fun (cdr it))
			   `(,fun))))))
    ;; These have to be done in the following order
    (ac :wh          process-wh-accessory            t)
    (ac :question    process-question-accessory    nil)
    (ac :tense-modal process-tense-modal-accessory   t)
    (ac :command     process-command-accessory     nil)
    (ac :perfect     process-perfect-accessory     nil)
    (ac :progressive process-progressive-accessory nil)
    (ac :negate      process-negate-accessory      nil)
    (ac :wh-adj      process-wh-adjunct-accessory    t)))

;################################################################
;; Uniform "bundle" driver for DTNs

(defun dtn-bundle-driver (dtn phrase-type)
  "Called from realize-dtn, which is itself called from 
  realize when a derivation tree node is the contents of
  some slot. Return value becomes the new value of the slot."
  (values dtn phrase-type))

(defun general-np-bundle-driver (dtn np-root)
  "This code checks the syntactic reasons to use a pronoun to see
  if any apply, in which case it pre-empts the normal processing
  and construction of an np."
  (let* ((dom-clause (dominating-clause))
         (reason-to-pronominalize 
          (should-be-pronominalized-in-present-context? dtn))
         (result
          (if reason-to-pronominalize
            (then (when dom-clause
                    (check-for-reflexive dtn))
                  (select-appropriate-pronoun dtn reason-to-pronominalize))
            (else ;; any embedded planning would be triggered here.
              (unless (pronounp np-root) ;; i.e. one that's deliberately choosen
                (set-backpointer-of-root  np-root dtn)
                (entering-new-context np-root)
                (process-np-accessories np-root dtn)
                (process-further-specifications (adjuncts dtn))
                (leaving-previous-context np-root))
              np-root))))
    (mention (referent dtn) result dom-clause)
    result))

(defun process-np-accessories (np-root dtn)
  (let ((neg-acc (get-accessory :negate dtn))
        (number-acc (get-accessory-value :number dtn))
        (person-acc (get-accessory-value :person dtn))
        (det-policy-acc (get-accessory-value :determiner-policy dtn))
        (proper-name? (assoc (accessory-type-named :proper-name)
	                     (features dtn))))
    (when neg-acc
      ;; vs. process-negate-accessory for clauses
      (process-no-accessory np-root))
    (when number-acc
      (process-number-accessory np-root number-acc))
    (when person-acc
      (process-person-accessory np-root person-acc))
    (when det-policy-acc
      (process-determiner-accessory dtn np-root det-policy-acc))
    (when proper-name?
      (process-proper-name-accessory np-root))))

(defun process-further-specifications (adjunction-nodes)
  (when adjunction-nodes
    ;; Ordering of APs happens upstream
    (dolist (fspec adjunction-nodes)
      (attach (value fspec) (ap fspec)))))


;################################################################
;         Subroutines used only by Bundle Drivers
;################################################################



(defun set-backpointer-of-root (root-node rspec)
  (if (not (typep root-node 'node))
      (mbug "~s was realized as ~s~%~
            ~%an object of type ~a~
            ~%which is illegal for a phrasal root." 
	    rspec root-node (type-of root-node))
      (set-original-rspec (context-object root-node) rspec)))


;################################################################
;                    Choosing pronouns
;################################################################

(defun should-be-pronominalized-in-present-context? (dtn)
  (cond ((memq (slot-label-named 'relative-pronoun) (labels *current-position*))
         'context-requires-a-relative-pronoun)
        ((memq (slot-label-named 'adjective) (labels *current-position*))
         nil)
        ((null (referent dtn))
         nil)
        ((or (antecedent-precedes-and-is-a-clausemate? dtn)
             (antecedent-precedes-and-is-conjoined-to? dtn))
         'antecedent-precedes-and-is-within-this-clause)
        ((in-focus? (referent dtn))
         'object-is-in-focus)
        ((type-in-focus? (referent dtn))
         'type-is-in-focus)
        ((some #'c-command? (local-mentions (referent dtn)))
         'text-structure-has-marked-reference-reducible)))

(defun is-referenced? (dtn clause)
  (let* ((object (referent dtn))
         (others (objects-referenced clause))
         (other (or (find object others)
                    #+(or) ; one-anaphora not yet ready for prime-time
                    (and (not (symbolp object)) ; treat symbols as untyped
                         (find-if (lambda (other)
                                    (typep object (type-of other)))
                                  others)))))
    (cond ((and object other) (add-accessory dtn :antecedent other t) t)
          (t nil))))

(defun antecedent-precedes-and-is-a-clausemate? (dtn)
  "Cats lick themselves"
  (when (dominating-clause)
    (is-referenced? dtn (dominating-clause))))

(defun antecedent-precedes-and-is-conjoined-to? (dtn)
  "I bought a book and I read it"
  (do ((node (and *current-phrasal-root* (node *current-phrasal-root*))
             (next node)))
      ((null node))
    ;; Accept references in the second conjunct
    ;; to objects referenced in the first.
    (when (and (nodep node)
               (eql (name node) 'conjunction)
               (not (eql (first-constituent node) *current-phrasal-root*)))
      (let ((contents (contents (first-constituent node))))
        (when (phrasal-root-p contents)
          (return (is-referenced? dtn (context-object contents))))))))

(defun c-command? (mention)
  "Has the object been mentioned by some previous dominating phrase
   (i.e., which c-commands this phrase)?"
  (loop with object = (object-mentioned mention)
        for context in *context-stack*
        when (member object (objects-referenced context))
          return it))

(defun dominating-clause ()
  ;; 7/10/07 Given the code in phrase-structure-execution, there won't be a
  ;; value on the context stack if we haven't yet recursively entered a
  ;; phrasal root. We're asking this question from general-np-bundle-driver,
  ;; which runs -before- the phrasal root for the NP is created.
  (dolist (intervening-phrasal-root (cons *current-phrasal-root*
                                          *context-stack*))
    (when intervening-phrasal-root
      (when (member (label-named 'clause)
                    (labels (node intervening-phrasal-root)))
        (return intervening-phrasal-root)))))
      
(defun check-for-reflexive (dtn)
  (and (memq (label-named 'objective) (labels *current-position*))
       (antecedent-precedes-and-is-a-clausemate? dtn)
       (push (label-named 'reflexive) (labels *current-position*))))

;################################################################
;     Conjunction Bundles
;################################################################

(defun conjunction-bundle-driver (bundle)
  (landmark 'realizing-bundle-specification bundle)
  (let* ((result (build-conjunction-phrase
		   (head bundle) *current-position*))
	 (conjunction (assoc (accessory-type-named :conjunction)
                             (accessories bundle)))
         (number (get-accessory-value :number bundle t)))
    (set-original-rspec (context-object result) bundle)
    (entering-new-context result)
    (when conjunction
      (process-conjunction-accessory
       (get-accessory-value :conjunction bundle t)  result))
    (process-number-accessory result number)
    (leaving-previous-context result)
    result))




(defun build-conjunction-phrase (spec-list position )
  (let* ((node-label (node-label-named 'conjunction ))
         (phrasal-context (make-phrasal-context))
         (new-node (make-phrasal-root :name (name node-label)
                                      :labels (list node-label)
                                      :visited-status 'new))
         (slot-label (create-label-with-constraints position)))
    (do* ((spec (car spec-list) (car spec-list))
          (spec-list (cdr spec-list)(cdr spec-list))
          (previous-position new-node slot)
          (slot (make-slot) (make-slot)))
         ((null spec)
          (set-last-constituent new-node previous-position)
          (set-next previous-position new-node) )
      (set-name slot (name slot-label))
      (set-labels
       slot
       (cond ((null spec-list) ;;this is the last conjunct
              (list slot-label))
             ((and (null (cdr spec-list)) ;;one conj left
                   (eq previous-position new-node))
              (list slot-label))
             (t
              (list slot-label
                    (label-named 'trailing-comma)))))
      (set-visited-status slot 'new)
      (set-contents slot spec)
      (if (eq previous-position new-node)
        (set-links-for-first-constituent new-node slot)
        (set-links-for-slot previous-position slot)))
    (set-node phrasal-context new-node)
    (set-position-table phrasal-context (create-position-table new-node))
    (set-context-object new-node phrasal-context)	      
    new-node))


(defun create-label-with-constraints (position)
  (let* ((label-name (create-a-new-constraint-label-name (name position)))
	(constraints (collect-constraints position))
	(new-label (create-and-catalog label-name 'slot-label
				       'name label-name)))
    (set-grammatical-constraints new-label constraints)
    new-label))

(defun create-a-new-constraint-label-name (name)
  (make-symbol (string-append (symbol-name name) "-CONSTRAINTS")))

(defun collect-constraints (position)
  (let (constraints)
    (dolist (label (labels position))
      (dolist (const (grammatical-constraints label))
	(push const constraints)))      
    constraints))



;;##################################################

(defun modifier-bundle-driver (bundle)
  ;identical to clausal-bundle-driver
  (landmark 'realizing-bundle-specification bundle)
  (let ((result (realize (head bundle))))
    (when (nodep result)
      (set-backpointer-of-root result bundle)
      (when (further-specifications bundle)
        (entering-new-context result)
        (process-further-specifications (further-specifications bundle))
        (leaving-previous-context result)))
    result))


(defun vp-bundle-driver (bundle)
  (landmark 'realizing-the-head-of-the-bundle bundle)
  (when (not (kernel-specificationp (head bundle)))
    (mbug "The head of the bundle ~A was expected to be a kernel ~
           specification but it is ~A instead"
	  bundle (head bundle)))
  (let ((result (realize (head bundle))))
    (when (nodep result)
      (set-backpointer-of-root result bundle)
      (entering-new-context result)
      (process-vp-accessories bundle)
      (process-further-specifications (further-specifications bundle))
      (leaving-previous-context result))
    result))



;;This new bundle type was created to handle adverbial phrases
;;and other such phrases that may take further specifications
;;but are neither clauses nor nps.  

(defun general-bundle-driver (bundle)
  ;identical to clausal-bundle-driver
  (landmark 'realizing-bundle-specification bundle)
  (let ((result (realize (head bundle))))
    (when (nodep result)
      (set-backpointer-of-root result bundle)
      (when (further-specifications bundle)
        (entering-new-context result)
        (process-further-specifications (further-specifications bundle))
        (leaving-previous-context result)))
    result))

(defun general-dtn-bundle-driver (dtn root-node)
  "Blends clausal-bundle-driver with general-bundle-driver.
   Intended for minor phrase types where there may be
   further-specification that extend the phrase by attachment
   but there are never any features. 
   Called from realize(dtn)."
  (landmark 'realizing-general-bundle dtn)
  (set-backpointer-of-root root-node dtn)
  (when (adjuncts dtn)
    (entering-new-context root-node)
    (process-further-specifications (adjuncts dtn))
    (leaving-previous-context root-node))
  root-node)



;; This bundle is the smallest container we can have for a kernel.
;; It is intended for phrases that are never modified and take
;; no inflection, e.g., for our present (8/99) analysis of quantifier
;; phrases

(defun minimal-bundle-driver (bundle)
  (landmark 'realizing-bundle-specification bundle)
  (let ((result (realize (head bundle))))
    (when (nodep result)
      (set-backpointer-of-root result bundle))
    result))



