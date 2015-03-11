;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  6.1 January 2015

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (10/12) pulled multiply-ids back to [chart;edges:multiplication],
;;      and extensively revised it to handle all the cases in form rules.
;;     (10/14) fixed some unforseen cases
;;     (12/16) adding a trace msg to a case that was missed
;; 0.2 (6/13/94) added check for right-edge being dotted
;; 2.0 (7/12) completely rewrote the threading essentially from scratch
;; 3.0 (9/28) fixed substantial case-gap in that
;;     (12/29) added more traces
;; 3.1 (12/30) added Check-form-form and its threading
;; 4.0 (2/29/00) Incorporating checks against composite referents. 6/17 got
;;      one case working.
;; 5.0 (2/9/05) Revising/streamlining the checkes. Reconsidering whether 'composite'
;;      is the right structure to work against.
;; 6.0 (8/17/07) Adding additional cases to allow category-id checks against
;;      edges' form labels. Motivated by (new) DN&P operations where the
;;      form label provides the needed context/generality: "three swans".
;;     (8/28/08) When we do that, we get an interaction with n-ary rules
;;      where the form field holds a symbol (:dotted-intermediary). Those
;;      don't combine, so we just let category-ids return nil.
;;     (3/8/13) Fixed the name of the multiplier for referents so it's
;;      not a duplicate. Added trace for success and failure.
;;     (4/9/13) Enabled option for syntactic rules.
;;     (8/26/13) Added a check in check-form-form for the left edge being 
;;      a dotted intermediary. Probably need to do something more interesting for
;;      these edges at segment boundarier or certainly once we've moved to the
;;      forest level.
;; 6.1 (1/5/2015) MAJOR CHANGE -- off by default (se variable *check-forms*), 
;;      but works well ensure that all rules are only applied to compatible 
;;      syntactic forms
;;     (1/7/15) Patched multiple-referent-categories for case of two categories
;;      in the type, but that's a band-aid and can be done better. 
;; 1/6/2015 parameter *report-form-check-blocks* to reduce printouts
;; 1/8/2015 refactor/cleanup forms checking, and check forms in all cases 
;;  and make multiply-referents include the edge-category for both edges, 
;;  so that passives work correctly (#4 on January test)
;; 2/2/2015 RJB put in a new filter mechanism in a new function multiply-edges-for-chunk 
;;  (copied from multiply-edges) in multiply-edges to be used within a chunk 
;;  (and currently only within NG chunks). This filters out bad semantic rules that turn 
;;   NPs into VPs (or at least make past participles into the head of the NP)
;;  This has the desired effect -- but DAVID should review the code (with me if possible) and
;;   make sure it is properly structured, etc.
;; 3/4/2015 merge definition of multiply-edges-for-chunk into
;;   multiply-edges-for-chunk, using a new flag *check-chunk-forms*

(in-package :sparser)
(defparameter *check-chunk-forms* t
  "This enables checking the form of the result of a semantic rule, as well as the form of the RHS, to reduce the mis-use
 of ETF derived rules for clauses that are applied when a participle modifies an NG")

(defparameter *check-forms* t
  "When this is T, ensure that all rules are only applied to 
   compatible syntactic forms")

(defparameter *only-check-schema-forms* t
  "Read in rule-forms to control whether we also try to compute
   the form information of a rule that wasn't derived from an 
   ETF's schema.")

(defparameter *collect-forms* nil)
(defparameter *collected-forms* nil)
(defparameter *report-form-check-blocks* nil)


;;;------------------
;;; access functions
;;;------------------

(defun category-ids (edge direction field)
  ;; Every access goes through here. For debugging it can be called
  ;; with a category rather than an edge. 
  (let ((label (cond
                ((category-p edge) edge)
                (t (case field
                     (:category (edge-category edge))
                     (:form (edge-form edge))
                     (otherwise
                      (error "wrong spelling for the field argument: ~a" field)))))))
    (when (and label
	       (not (symbolp label)))
      (let ((rs (rule-set-for label)))
	(when rs
	  (case direction
	    (:right-looking ;; the left edge, looking to its right for a combination
	     (rs-right-looking-ids rs))
	    (:left-looking ;; invariably taken from the edge on the right
	     (rs-left-looking-ids rs))
	    (otherwise
	     (error "Wrong spelling for the direction argument: ~a" direction))))))))

(defun category-ids/rightward (left-edge)
  (category-ids left-edge :right-looking :category))

(defun category-ids/leftward (right-edge)
  (category-ids right-edge :left-looking :category))

(defun form-ids/rightward (left-edge)
  (category-ids left-edge :right-looking :form))

(defun form-ids/leftward (right-edge)
  (category-ids right-edge :left-looking :form))


(defun category-multiplier (ids)
  (car ids))

(defun form-multiplier (ids)
  (cdr ids))


;;;------------------------------
;;; call from the check routines
;;;------------------------------

(defun multiply-edges (left-edge right-edge &optional chunk)
   ;; Called from the check routines, e.g. check-one-one
  ;; Looks for any possibility of composition for these edges first,
  ;; i.e. whether there are the right direction indexes for these,
  ;; and then whether there is a category combination or, barring
  ;; that, a form combination.
  ;; Returns a rule or nil to indicate the edges don't combine.
  (tr :multiply-edges left-edge right-edge)
  ;;"[Multiply] Checking (e~A+e~A)  ~A + ~A"

  (when (or (word-p left-edge)
            (word-p right-edge))
    ;;/// trace  We don't multiply words, only edges
    (return-from multiply-edges nil))
  
  (if (edge-of-dotted-intermediary right-edge)
      ;; dotted rules only combine to their right, never to their left
    (then (tr :right-edge-is-dotted right-edge)
          ;; "   but the right edge, e~A, is dotted and can't possibly combine"
          nil)
      
    (let* ((left-category-ids (category-ids/rightward left-edge))
           (right-category-ids (category-ids/leftward right-edge))
           (rule
            (or (valid-rule?
                 (multiply-categories left-category-ids 
                                      right-category-ids
                                      left-edge right-edge)
                 left-edge right-edge chunk)
                  
                  


                ;; then look for a rule in the cross-product 
                ;; of the categories their category labels inherit from
                (when *edges-from-referent-categories*
                  (valid-rule? (multiply-referents left-edge right-edge)
                               left-edge right-edge chunk))
                    
                ;; then look for a rule mentioning the form label
                ;; on the two rules
                (when *allow-pure-syntax-rules*
                  (valid-rule?
                   (check-form-form left-edge right-edge)
                   left-edge right-edge chunk)))))



        (when *collect-forms* (record-forms rule left-edge right-edge))
        rule)))




(defun valid-rule? (rule left-edge right-edge chunk)
  (when rule
    (when (and
         (check-rule-form rule left-edge right-edge)
         (or
          (null chunk)
          (not *check-chunk-forms*)
          (check-rule-result-form-against-chunk rule right-edge chunk)))
      rule)))


(defun check-rule-result-form-against-chunk (rule right-edge chunk)
  (cond
   ((chunk-head? right-edge chunk)
    (case (car (chunk-forms chunk))
      (NG
       (memq 
        (rule-lhs-form rule)
        '(N-BAR NG COMMON-NOUN COMMON-NOUN/PLURAL NP PRONOUN PROPER-NAME PROPER-NOUN)))
      (VG t)
      (ADJG t)))
   (t t))
  )

(defun chunk-head? (edge chunk)
  (eq
   (chunk-end-pos chunk)
   (pos-edge-ends-at edge)))
;;;--------------------------------------------------
;;; restrict rule application to compatible contexts
;;;--------------------------------------------------

(defun record-forms (rule left-edge right-edge)
  (let ((rf (rule-forms rule)))
    (when rf
      (pushnew
       (list rf
             (list (cat-name (edge-form left-edge))
                   (cat-name (edge-form right-edge))))
       *collected-forms*))))

(defun rule-forms (rule)
  (when (cfr-p rule)
    (if *only-check-schema-forms*
      (cfr-rhs-forms rule)
      (or (cfr-rhs-forms rule) 
          (loop for c in (cfr-rhs rule) collect (cat-name c))))))

(defun rule-lhs-form (rule)
  (when (cfr-p rule)
    (cat-name (cfr-form rule))))
       
(defun check-rule-form (rule left-edge right-edge) 
  ;; only accept rules that are compatible with their context
  (if (not *check-forms*) ;; controlling switch
    rule
    (let ((rf (rule-forms rule)))
      (cond
       ((and (compatible-form (car rf) left-edge)
             (compatible-form (second rf) right-edge))
        rule)
       (t
        (let ((*rule* rule)
              (*left-edge* left-edge)
              (*right-edge* right-edge))
          (declare (special *rule* *left-edge* *right-edge*))
          (when *report-form-check-blocks*
            (format t "~&***------>> blocking ~a~
                     ~%   ~a applied to~
                     ~%   (~a, ~a)~
                     ~%   (~a, ~a)~%"
                    rule (rule-forms *rule*)
                    (edge-form *left-edge*) *left-edge*
                    (edge-form *right-edge*) *right-edge*)
            #+ignore
            (print `(***------>> blocking  
                     ,*rule* ,(rule-forms *rule*) 
                     applied to 
                     (,(cat-name (edge-form *left-edge*)) ,*left-edge*)
                     (,(cat-name (edge-form *right-edge*)) ,*right-edge*))))
          ;;(break "incompatible-forms")
          nil))))))

(defun cat-name (cat)
  (and
   cat ;; words don't have edge-forms
   (intern (symbol-name (cat-symbol cat)) :sparser)))



;;;-----------------------------------
;;; ringing the changes on composites
;;;-----------------------------------

#| If the category labels on the edges don't have a rule, then look
   for a rule over the categories in their referents. |#

(defun multiply-referents (left-edge right-edge)
  (tr :multiplying-referent-categories)
  (let ((left-referent (edge-referent left-edge))
        (right-referent (edge-referent right-edge)))

    ;; rule out edges with no referent or referents that wouldn't apply
    (if (and left-referent right-referent
             (legal-type-for-multiplying-referents left-referent)
             (legal-type-for-multiplying-referents right-referent))
        ;; modified to allow for form rules to work with inherited categories of the referents
        (let ((left-categories 
               (cons (edge-category left-edge)
                     (multiple-referent-categories left-referent))
               ;;(edge-form left-edge)
               )
              (right-categories 
               (cons
                (edge-category right-edge)
                (multiple-referent-categories right-referent))
               ;;,(edge-form right-edge)
               ))
          (tr :referent-categories-to-check left-categories right-categories)
          ;; try all semantic rules first
          (dolist (right-category right-categories)
            (dolist (left-category left-categories)
              ;; Add traces for these cases, or do the regular trace-edges ones
              ;; suffice?
              (let ((rule (multiply-referent-categories left-edge left-category 
                                                        right-edge right-category)))
                (when (and
                       rule
                       (check-rule-form rule left-edge right-edge))
                  (return-from multiply-referents rule)))))
          (dolist (right-category right-categories)
            (let ((rule (multiply-referent-categories left-edge (edge-form left-edge)
                                                      right-edge right-category)))
              (when (and
                     rule
                     (check-rule-form rule left-edge right-edge))
                (return-from multiply-referents rule))))
          (dolist (left-category left-categories)
            (let ((rule (multiply-referent-categories left-edge left-category
                                                      right-edge (edge-form right-edge))))
              (when (and
                     rule
                     (check-rule-form rule left-edge right-edge))
                (return-from multiply-referents rule))))
          )
      (else (tr :referents-unsuitable-for-multiplying
                left-edge right-edge left-referent right-referent)
            nil))))

(defun legal-type-for-multiplying-referents (obj)
  ;; Perhaps better as an flet on multiply-referents since it has 
  ;; no other use. Tracks multiple-referent-categories
  (typecase obj
    ((or individual psi referential-category) t)
    (otherwise nil)))

(defun multiple-referent-categories (referent)
  ;; Consult the supercategory links to return a list of the categories
  ;; to which the referent belongs, from the most specific to the
  ;; most general. Feeds this list to multiply-referents
  (let ((base-category
         (typecase referent
           (psi (all-categories-in-psi referent))
           (individual (indiv-type referent))
           (referential-category referent)
           (otherwise
            (push-debug `(,referent))
            (error "Unexpected type: ~a" (type-of referent))))))
    (cond
     ((category-p base-category)
      (super-categories-of base-category))
     ((consp base-category)
      (cond
       ((null (cdr base-category))
        (setq base-category (car base-category))
        (super-categories-of base-category))

       ((= 2 (length base-category)) ;; (#<model> ##<collection>)
        (let* ((base (car base-category))
               (mixin (cadr base-category))
               (base-cats (super-categories-of base))
               (mixin-cats (super-categories-of mixin)))
          (let ((total (append base-cats mixin-cats)))
            (remove-duplicates total :test #'eq))))

       (t ;; Look at supercategory collection scheme as another
        ;; way to approach this
        (push-debug `(,base-category ,referent))
        (break "stub - more than two categories: ~a.~%This would be ~
                a good time to start using subtype." base-category)))))))


(defun multiply-referent-categories (left-edge left-category 
                                     right-edge right-category)
  (let* ((left-rs (rule-set-for left-category))
         (left-ids (when left-rs
                     (rs-right-looking-ids left-rs)))
         (right-rs (rule-set-for right-category))
         (right-ids (when right-rs
                      (rs-left-looking-ids right-rs))))

    (tr :multiply-edges-by-referent-category 
        left-category right-category left-edge right-edge)
        
    ;; (multiply-ids-dispatch -- see multiply5
    (multiply-categories ;; what it seemed to have morphed into
     left-ids right-ids 
     left-edge right-edge)))
    




;;;---------------------------------------------------------
;;;  The primary dispatch -- category and form combinations
;;;---------------------------------------------------------

;; We come here from the Multiply-edge entry point.
;; Nothing has been checked or ruled out yet, so we start with
;; the most semantic case for cfr and csr rules -- do the labels
;; in the category field of the edges combine.
;;
(defun multiply-categories (left-category-ids right-category-ids
			    left-edge right-edge)
  (tr :muliply-categories)
  ;; "[Multiply threading] Called muliply-categories"
  (if (and left-category-ids right-category-ids)
    (then
      (tr :both-have-category-ids)
      ;; [Multiply]    both labels have category ids"
      (let ((left-label-id (category-multiplier left-category-ids))
	    (right-label-id (category-multiplier right-category-ids)))
	(if (and left-label-id right-label-id)
	  (then
	    (tr :both-right-and-left-label-ids)
            ;; "[Multiply]    both edges have category combinations"
	    (let ((rule (multiply-ids left-label-id
				      right-label-id)))
	      (if rule
		(then
                 (tr :multiply-succeeded rule left-edge right-edge)
                 ;; "[Multiply]    They succeeded ~A"
                 rule)
		(else
                 (tr :multiply-failed left-edge right-edge)
                 ;; "   which do not combine"
                 (mult/ids-on-form-label left-edge right-edge)))))
	  (else 
	    (mult/ids-on-form-label left-edge right-edge)))))
    (else
      (tr :only-L/R-has-category-ids left-category-ids right-category-ids)
      (mult/ids-on-form-label left-edge right-edge))))




;;;------------------------------------------------------
;;; rule edge checks, but looking at form labels too
;;;------------------------------------------------------

;; We've checked category label against category label.
;; Now we're trying category label against form label but
;; using category ids rather than form ids
;;
(defun mult/ids-on-form-label (left-edge right-edge)
  (tr :mult/ids-on-form-label)
  (let* ((left-form-ids (form-ids/rightward left-edge)) ;; form field
	 (right-form-ids (form-ids/leftward right-edge)))

    ;; We're looking for a rule based on the category (vs. form) numbers,
    ;; but we're looking at a combination of the label in the category
    ;; field of one of the edges, and the label from the form field of
    ;; the other. 
    (if (or left-form-ids right-form-ids)
      (then
	(tr :checking-form-label-category-rules)
	(or (and right-form-ids ;; e.g. on np-head, which is a form label
		 (try-mult/left-category-right-form_category-id
		  right-form-ids left-edge right-edge))
	    (and left-form-ids
		 (mult/right-category-left-form_category-id
		  left-form-ids left-edge right-edge))
	    (mult/check-form-options left-edge right-edge)))
      (else
	(tr :neither-has-category-on-form-ids)
	(mult/check-form-options left-edge right-edge)))))


(defun try-mult/left-category-right-form_category-id (right-form-ids
						      left-edge right-edge)
  ;; first look for a category rule (cfr or csr) that involves the
  ;; category label on the left looking rightwards to the form label
  ;; on the right. If there isn't a rule for this pair, return nil
  ;; and let the caller go on to the next case
  (tr :try-mult/left-category-right-form_category-id)
  (tr :cat-ids-on-right-form-label left-edge right-edge)
  (let* ((right-label-id (category-multiplier right-form-ids))
	 (left-category-ids (category-ids/rightward left-edge))
	 (left-label-id (category-multiplier left-category-ids)))
    (if (and left-label-id right-label-id)
      (then
	(let ((rule (multiply-ids left-label-id right-label-id)))
	  (if rule
	    (then (tr :multiply-succeeded rule left-edge right-edge)
		  rule)
	    (else (tr :multiply-failed left-edge right-edge)
		  nil))))
      (else
	nil))))

(defun mult/right-category-left-form_category-id (left-form-ids
						  left-edge right-edge)
  ;; we've checked the left-category against the right form label at the
  ;; category level, now check the other way: left form against right category. 
  ;; Return nil to move on to the form rule checks.
  (tr :mult/right-category-left-form_category-id)
  (tr :cat-ids-on-left-form-label left-edge right-edge)
  (let* ((left-label-id (category-multiplier left-form-ids))
	 (right-category-ids (category-ids/leftward right-edge))
	 (right-label-id (category-multiplier right-category-ids)))
    (if (and left-label-id right-label-id)
      (then
	(let ((rule (multiply-ids left-label-id right-label-id)))
	  (if rule
	    (then (tr :multiply-succeeded rule left-edge right-edge)
		  rule)
	    (else (tr :multiply-failed left-edge right-edge)
		  nil))))
      (else
	nil))))


;;;----------------------------------------
;;; setting up for checking for form-rules
;;;----------------------------------------

;; We've exhausted the options with the labels in the category field,
;; so we look for combinations with the labels from one category field
;; and one form field
;;
(defun mult/check-form-options (left-edge right-edge)
  (tr :mult/check-form-options)
  (let ((left-form-ids (form-ids/rightward left-edge))
	(right-form-ids (form-ids/leftward right-edge)))
    (cond
      ((and left-form-ids right-form-ids)
       (tr :neither-category-id)
       (check-for-either-form-rule left-edge right-edge
				   left-form-ids right-form-ids))
      (left-form-ids
       (mult/form-label-looking-right  left-form-ids left-edge right-edge))
      (right-form-ids
       (mult/form-label-looking-left right-form-ids left-edge right-edge))
      (t nil))))


(defun check-for-either-form-rule (left-edge right-edge
                                   left-form-ids right-form-ids)
  (tr :check-for-either-form-rule)
  (or (mult/form-label-looking-right left-form-ids left-edge right-edge)
      (mult/form-label-looking-left right-form-ids left-edge right-edge)
      (else
       (tr :multiply-failed left-edge right-edge)
       nil )))


(defun mult/form-label-looking-right (left-form-ids
				      left-edge right-edge)
  ;; a form id on the left, a category id on the right
  (tr :mult/just-Left-ids)
  (let* ((right-label-ids (category-ids/leftward right-edge))
	 (right-label-id (form-multiplier right-label-ids))
	 (left-form-id (form-multiplier left-form-ids)))
    (tr :left-form-id left-edge right-edge)
    (if (and left-form-id right-label-id)
      (check-left-for-form-rule left-edge right-edge
				left-form-id right-label-id)
      (else (tr :right-form-id-failed left-edge right-edge)
	    nil ))))


(defun mult/form-label-looking-left (right-form-ids
				     left-edge right-edge)
  ;; form category id on the left, form id on the right
  (tr :mult/just-Right-ids)
  (let* ((left-label-ids (category-ids/rightward ;; looking rightward
			  left-edge))
	 (left-label-id (form-multiplier left-label-ids))
	 (right-form-id (form-multiplier right-form-ids)))
    (tr :right-form-id left-edge right-edge)
    (if (and left-label-id right-form-id)
      (check-right-for-form-rule left-edge right-edge
				 left-label-id right-form-id)
      (else (tr :right-form-id-failed left-edge right-edge)
	    nil ))))

      



;;;----------------------------------
;;; checking form-rule possibilities
;;;----------------------------------

(defun check-left-for-form-rule (left-edge right-edge
                                 left-form-id
                                 right-label-id)

  (let ((rule (multiply-ids left-form-id right-label-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))



(defun check-right-for-form-rule (left-edge right-edge
                                  left-label-id
                                  right-form-id)

  (let ((rule (multiply-ids left-label-id right-form-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))




;;;------------------------------
;;; check purely syntactic rules
;;;------------------------------

(defun check-form-form (left-edge right-edge)
  (if *allow-pure-syntax-rules*
    (then
      (tr :looking-for-syntactic-combination)
      (let ((left-form-label (edge-form left-edge))
            (right-form-label (edge-form right-edge)))
        (when (eq left-form-label :dotted-intermediary)
          ;; it's a stranded partially complete polyword.
          (return-from check-form-form nil))

        (cond
         ((and left-form-label right-form-label)
          (let ((left-form-rs (label-rule-set left-form-label))
                (right-form-rs (label-rule-set right-form-label)))
            (cond
             ((and left-form-rs right-form-rs)
              (let ((left-form-id
                     (cdr (rs-right-looking-ids left-form-rs)))
                    (right-form-id
                     (cdr (rs-left-looking-ids right-form-rs))))
                (cond
                 ((and left-form-id right-form-id)
                  (tr :both-form-labels-have-ids)
                  (let ((rule (multiply-ids left-form-id
                                            right-form-id)))
                    (if rule
                      (then (tr :syntactic-combination-succeeded rule)
                            rule )
                      (else (tr :syntactic-combination-failed)
                            nil ))))
                 
                 (left-form-id
                  (tr :no-form-id-on-right-form-label)
                  nil)
                 (right-form-id
                  (tr :no-form-id-on-left-form-label)
                  nil)
                 (t (tr :neither-form-label-has-form-ids)
                    nil))))

              (left-form-rs
               (tr :no-rules-mention-right-form-label right-form-label)
               nil)
              (right-form-rs
               (tr :no-rules-mention-left-form-label left-form-label)
               nil))))

         (left-form-label
          (tr :no-form-label-on-right-edge right-edge)
          nil)
         (right-form-label
          (tr :no-form-label-on-left-edge right-edge)
          nil))))
      nil ))


(defparameter *form-maps*
  '(
    (ADJECTIVE (ADJECTIVE)) 
    (ADVERB (COMPARATIVE ADVERB)) 
    (BIO-PROCESS (NP)) ;; not  VG
    (BIOLOGICAL (PROPER-NOUN NP)) ;; not S PP VG
    (COMMON-NOUN (COMMON-NOUN)) 
    (COMMON-NOUN/PLURAL (COMMON-NOUN/PLURAL)) 
    (ENZYME (NP)) ;; NOT PP
    (IS-BIO-ENTITY (VP)) ;;  not PP VG RELATIVE-CLAUSE S VG 
    (MODAL (MODAL)) 
    (MODIFIER (ADJECTIVE NUMBER PROPER-NOUN NP COMMON-NOUN  COMMON-NOUN/PLURAL))  ;; not VP -- this is for the pre-mod rule
    (N-BAR (N-BAR)) 
    (NP (NP)) 
    (NP-HEAD (COMMON-NOUN common-noun/plural)) 
    (NP/OBJECT  (N-BAR COMMON-NOUN COMMON-NOUN/PLURAL NP PRONOUN PROPER-NAME PROPER-NOUN))  ;; not VG PP RELATIVE-CLAUSE  S VP VERB+ED
    (NP/SUBJECT (N-BAR COMMON-NOUN COMMON-NOUN/PLURAL NP PRONOUN PROPER-NAME PROPER-NOUN)) ;; not VERB+ED VP  VG
    (NUMBER (NUMBER NP)) 
    (POST-ORDINAL (POST-ORDINAL)) 
    (PP (PP)) 
    (PREPOSITION (PREPOSITION)) 
    (PROPER-NOUN (PROPER-NOUN)) 
    (PROTEIN (NP PROPER-NOUN)) 
    (RELATIVE-CLAUSE (RELATIVE-CLAUSE)) 
    (S (S)) 
    (SEQUENCER (DET)) 
    (SPATIAL-PREPOSITION (SPATIAL-PREPOSITION)) 
    (VERB (VERB)) 
    (VERB+ED (VERB+ED)) 
    (VERB+ING (VERB+ING)) 
    (VERB+PRESENT (VERB+PRESENT)) 
    (VG (VERB+ING VP VERB+ED  VG )) ;; not COMMON-NOUN
    (VP (VERB+ING  VG  S VP VERB+ED)) ;; not N-BAR COMMON-NOUN COMMON-NOUN/PLURAL PP NP RELATIVE-CLAUSE
    (WH-PRONOUN (WH-PRONOUN)) 
    ;;(BE (VERB VG VP VERB+ED)) 
    ;;(COMMA (NIL)) 
    ;;(DO (VERB)) 
    ;;(HAVE (VERB VERB+S)) 
    ;;(OF (PREPOSITION)) 
    ;;(THAT (NP DET)) 
    ;;(THE (DET)) 
    ;;(YEAR (COMMON-NOUN)) 
    ;;(\a (DET)) 
    ;;(|an| (DET)) 
    ;;(|not| (QUANTIFIER)) 
    ;;(|these| (DET)) 
    ;;(|the| (DET)) 
    ;;(|this| (DET)) 
    ))

(defun compatible-form (rule-form edge)
  (let ((compatible-forms (second (assq rule-form *form-maps*))))
    (or (null compatible-forms) ;; the rule-form is not taken to constrain anything
        (memq (cat-name (edge-form edge)) compatible-forms))))


  
  