;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013-2018 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  April 2018

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
;; 7.0 (3/10/15 Broke out form rules and pretty thoroughly revamped organization 
;;   of cases in multiply-edges. Separated form from category rule checks. Added np-head
;;   to np-chunk check.
;; 3/21/2015 speed up suggested by SBCL profiling for cat-name
;; 4/20/2015 create a list (*dont-check-forms-for-etf*) of etf names for which syntactic form-checking is turnes off
;;  Control check-rule-form -- it can be turned off for particular ETFs by calling
;;  dont-check-rule-form-for-etf-named with the name of the family

(in-package :sparser)

;;;--------------------------
;;; local control parameters
;;;--------------------------

(defparameter *check-chunk-forms* t
  "This enables checking the form of the result of a semantic rule, as
   well as the form of the RHS, to reduce the mis-use of ETF derived
   rules for clauses that are applied when a participle modifies an NG")

(defparameter *check-semantic-applicability* t
  "This enables checking the semantic applicability of syntactic rules
   and form rules (any rule with a :function based realization).")

(defparameter *check-forms* nil
  "When this is T, ensure that all rules are only applied to 
   compatible syntactic forms")

(defparameter *only-check-schema-forms* t
  "Read in rule-forms to control whether we also try to compute
   the form information of a rule that wasn't derived from an 
   ETF's schema.")

(defparameter *report-form-check-blocks* nil
  "If the form of the rule is bad (see validate-rule-form) and
   this flag is up, we report the problem. Turned on/off by
   the trace function (un)report-form-check-blocks")

(defparameter *use-trie-multiply* nil
  "An alternative organization of the rule set that can be searched
   faster (though it is not yet instrumented to report its results)")


;;;------------------------------
;;; call from the check routines
;;;------------------------------

;; (trace-rule-source)

(defun multiply-edges (left-edge right-edge &optional chunk)
  "Called from the check routines, e.g. check-one-one
   Looks for any possibility of composition for these edges first,
   i.e. whether there are the right direction indexes for these,
   and then whether there is a category combination or, barring
   that, a form combination or syntactic combination
   Returns a rule or nil to indicate the edges don't combine."
  (declare (special *allow-form-rules*
                    *allow-pure-syntax-rules*))

  (when (or (word-p left-edge)
            (word-p right-edge))
    ;;/// trace  We don't multiply words, only edges
    ;; A literal edge (category is a word) would work fine
    (return-from multiply-edges nil))

  (tr :multiply-edges left-edge right-edge)
  
  (if *use-trie-multiply*
    (trie-multiply-edges left-edge right-edge chunk)

    (let* ((rule (multiply-semantic-categories left-edge right-edge)))
 
      ;; Look at possible sources of rules from what is likely to be
      ;; the most precise (certainly in terms of referents) to the
      ;; most general. As soon as one of these sources returns
      ;; a valid rule we stop looking at other sources.
     
      (if rule ;; from the let statement, multiply-categories
        (then
          (tr :found-semantic-rule rule)
          (if (valid-rule? rule left-edge right-edge chunk)
            (then 
              (tr :rule-is-valid))
            (else 
              (tr :rule-is-invalid)
              (setq rule nil))))
        (else
          (tr :no-semantic-rule)))

      (unless rule
        (when *allow-form-rules*
          (setq rule (multiply-form-category left-edge right-edge))
          (if rule
            (then
              (tr :found-rule-of-form rule)
              (if (valid-rule? rule left-edge right-edge chunk)
                (tr :rule-is-valid)
                (else 
                  (tr :rule-is-invalid)
                  (setq rule nil))))
            (else
              (tr :no-rule-of-form)))))

      (unless rule
        (when *allow-pure-syntax-rules*       
          (setq rule (multiply-form-form left-edge right-edge))
          (if rule
            (then
              (tr :found-syntactic-rule rule)
              (if (valid-rule? rule left-edge right-edge chunk)
                (tr :rule-is-valid)
                (else 
                  (tr :rule-is-invalid)
                  (setq rule nil))))
            (else
              (tr :no-syntactic-rule)))))
 
      rule)))




;;;----------------
;;; Semantic rules
;;;----------------

(defun multiply-semantic-categories (left-edge right-edge)
  "There can be a category rule id on either the category field or the
   form field of the edge. Systematically try all the combinations
   until one succeeds."
  (let* ((left-category-label (edge-category left-edge))
         (right-category-label (edge-category right-edge))
         (left-form-label (edge-form left-edge))
         (right-form-label (edge-form right-edge)))
    (or
     
     (when (and (right-looking-category-ids left-category-label)
                (left-looking-category-ids right-category-label))
       (try-these-labels-for-a-semantic-rule left-category-label right-category-label))

     (when (and (right-looking-category-ids left-category-label)
                (null (left-looking-category-ids right-category-label))
                (left-looking-category-ids right-form-label))
       (try-these-labels-for-a-semantic-rule left-category-label right-form-label))

     (when (and (null (right-looking-category-ids left-category-label))
                (right-looking-category-ids left-form-label)
                (left-looking-category-ids right-category-label))
       (try-these-labels-for-a-semantic-rule left-form-label right-category-label))
     
     (when (and (null (right-looking-category-ids left-category-label))
                (null (left-looking-category-ids right-category-label))
                (right-looking-category-ids left-form-label)
                (left-looking-category-ids right-form-label))
       (try-these-labels-for-a-semantic-rule left-form-label right-form-label)))))

(defun try-these-labels-for-a-semantic-rule (left-label right-label)
  "Provides a place for a labels-based trace and the change-over from
   labels to specific id numbers"
  (tr :try-category-labels left-label right-label)
  (let ((left-label-id (right-looking-category-id left-label))
        (right-label-id (left-looking-category-id right-label)))
    (lookup-semantic-rule-given-ids left-label-id right-label-id)))
    
(defun lookup-semantic-rule-given-ids (left-label-id right-label-id)
  "Given the ids, do the multiplication and see if there's a rule"
  (let ((rule (multiply-ids left-label-id right-label-id)))
    (if rule
      (then
        (tr :multiply-succeeded rule)
        rule)
      (else
        (tr :multiply-failed)
        nil))))



;;;------------
;;; Form rules
;;;------------

(defun multiply-form-category (left-edge right-edge)
  "Look for rules based on one the form label on one of the edges and
   the category label on the other"
  (tr :mult/ids-on-form-label) ;; threading
  (let* ((left-form-ids (form-ids/rightward left-edge)) ;; form field
         (right-form-ids (form-ids/leftward right-edge)))
    (tr :multiply-form left-edge right-edge)
    (or
     
      (when (and (right-looking-form-id (edge-category left-edge))
                 (left-looking-form-id (edge-category right-edge)))
        ;; If the labels in the form fields of the two edges don't
        ;; compose then maybe the labels on the category fields do.
        (let ((rule (multiply-ids (right-looking-form-id (edge-category left-edge))
                                  (left-looking-form-id (edge-category right-edge)))))
          rule))

      (when (or left-form-ids right-form-ids)
        (tr :checking-form-label-category-rules)
        (mult/check-form-options left-edge right-edge
                                 left-form-ids right-form-ids))

      (else
        (tr :neither-has-category-id)
        nil))))


(defun mult/check-form-options (left-edge right-edge
                                left-form-ids right-form-ids)
  "Dispatch depending on which label(s) have rule form ids"
  (tr :mult/check-form-options)
  (cond
    ((and left-form-ids right-form-ids)
     (look-for-either-form-rule left-edge right-edge
                                 left-form-ids right-form-ids))
    (left-form-ids
     (mult/form-label-looking-right  left-form-ids left-edge right-edge))
    (right-form-ids
     (mult/form-label-looking-left right-form-ids left-edge right-edge))
    (t nil)))


;;--- form label on both sides

(defun look-for-either-form-rule (left-edge right-edge
                                  left-form-ids right-form-ids)
  "Both edges have form IDs. Explore whether one or both multiplies
   with a category label ID to retrieve a rule."
  (tr :check-for-either-form-rule)
  (let ((rule-for-left-form/right-category
         (mult/form-label-looking-right left-form-ids left-edge right-edge))
        (rule-for-right-form/left-category
         (mult/form-label-looking-left right-form-ids left-edge right-edge)))
    (cond
      ((and rule-for-left-form/right-category
            rule-for-right-form/left-category)
       (choose-between-form-rules rule-for-left-form/right-category
                                  rule-for-right-form/left-category
                                  left-edge right-edge))
      (rule-for-left-form/right-category
       (tr :left-form/right-category-succeeded rule-for-left-form/right-category)
       rule-for-left-form/right-category)
      (rule-for-right-form/left-category
       (tr :right-form/left-category-succeeded rule-for-right-form/left-category)
       rule-for-right-form/left-category)
      (t
       (tr :form-multiply-failed left-edge right-edge)
       nil ))))


;;--- form label on the left
  
(defun mult/form-label-looking-right (left-form-ids
				      left-edge right-edge)
  "We know we have a form rule id on the left. Is there a form-rule id 
   on the category on the right"
  (tr :mult/just-Left-ids)
  (let* ((right-label-ids (category-ids/leftward right-edge))
	 (right-label-id (form-multiplier right-label-ids))
	 (left-form-id (form-multiplier left-form-ids)))
    (if (and left-form-id right-label-id)
      (look-left-for-form-rule left-edge right-edge
                               left-form-id right-label-id)
      (else nil))))

(defun look-left-for-form-rule (left-edge right-edge
                                left-form-id right-label-id)
  "Does the multiply of left-form + right-category work?"
  (tr :left-form-id left-edge right-edge)
  (let ((rule (multiply-ids left-form-id right-label-id)))
    (if rule
      (then (tr :left-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :left-form-id-failed left-edge right-edge)
            nil))))


;;--- form label on the right

(defun mult/form-label-looking-left (right-form-ids
				     left-edge right-edge)
  "We know we have a form rule id on the right edge. Is there a
   corresponding form-rule id on the category on the left?"
  (tr :mult/just-Right-ids)
  (let* ((left-label-ids (category-ids/rightward ;; looking rightward
			  left-edge))
	 (left-label-id (form-multiplier left-label-ids))
	 (right-form-id (form-multiplier right-form-ids)))
    (if (and left-label-id right-form-id)
      (look-right-for-form-rule left-edge right-edge
				 left-label-id right-form-id)
      (else nil))))

(defun look-right-for-form-rule (left-edge right-edge
                                 left-label-id right-form-id)
  "Does the multiply of left-category + right-form"
  (tr :right-form-id left-edge right-edge)
  (let ((rule (multiply-ids left-label-id right-form-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))



;;;------------------------------
;;; check purely syntactic rules
;;;------------------------------

(defun multiply-form-form (left-edge right-edge)
  "Look for a rule based on the form labels on the two edges"
  (tr :looking-for-syntactic-combination)
  (let ((left-form-label (edge-form left-edge))
        (right-form-label (edge-form right-edge)))
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
                 (tr :both-form-labels-have-ids left-form-label right-form-label)
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


  
  
