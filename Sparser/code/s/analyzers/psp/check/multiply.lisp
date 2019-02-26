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
 and form rules, even when whack-a-rule is not running.")

(defparameter *check-forms* nil
  "When this is T, ensure that all rules are only applied to 
   compatible syntactic forms")

(defparameter *only-check-schema-forms* t
  "Read in rule-forms to control whether we also try to compute
   the form information of a rule that wasn't derived from an 
   ETF's schema.")

(defparameter *report-form-check-blocks* nil) ;; see check-rule-form

(defparameter *use-trie-multiply* nil
  "An alternative organization of the rule set that can be searched
   faster (though it is not yet instrumented to report its results)")


;;;---------------------
;;; ID access functions
;;;---------------------

(defun category-ids (edge direction field)
  "Given a edge and the direction it is gooing to compose
   (to its right or two its left), return the appropriate
   multiplication ids. The 'field' dictates whether we get
   the ids from a label's category field or its form field. "
  (declare (optimize (speed 3)(safety 0)))
  (let ((label (cond
                 ((category-p edge) edge) ;; Convenient when debugging
                 (t (ecase field
                      (:category (edge-category edge))
                      (:form (edge-form edge)))))))
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

;; (trace-rule-source)


(defun multiply-edges (left-edge right-edge &optional chunk)
  "Called from the check routines, e.g. check-one-one
   Looks for any possibility of composition for these edges first,
   i.e. whether there are the right direction indexes for these,
   and then whether there is a category combination or, barring
   that, a form combination or syntactic combination
   Returns a rule or nil to indicate the edges don't combine."
  (declare (special *edges-from-referent-categories*
                    *allow-form-rules*
                    *allow-pure-syntax-rules*))

  (when (or (word-p left-edge)
            (word-p right-edge))
    ;;/// trace  We don't multiply words, only edges
    ;; A literal edge (category is a word) would work fine
    (return-from multiply-edges nil))

  (if *use-trie-multiply*
    (trie-multiply-edges left-edge right-edge chunk)

    (let* ((left-category-ids (category-ids/rightward left-edge))
           (right-category-ids (category-ids/leftward right-edge))
           (rule (multiply-categories left-category-ids 
                                      right-category-ids
                                      left-edge right-edge
				      chunk)))
 
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
          (setq rule (mult/ids-on-form-label left-edge right-edge))
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
          (setq rule (check-form-form left-edge right-edge))
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




;;;-----------------
;;;  Semantic rules
;;;-----------------

;; We come here from the Multiply-edge entry point.
;; Nothing has been checked or ruled out yet, so we start with
;; the most semantic case for cfr and csr rules -- do the labels
;; in the category field of the edges combine.
;;

;; Remove the form rule operations here -- make this a pure semantic rule play
(defun multiply-categories (left-category-ids right-category-ids
			    left-edge right-edge &optional chunk)
    
  (tr :multiply-edges left-edge right-edge)
  ;;"[Multiply] Checking (e~A+e~A)  ~A + ~A"

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
		 nil
		 ))))
	  (else 
	    nil))))
    (else
      (tr :only-L/R-has-category-ids left-category-ids right-category-ids)
      nil)))




;;;------------
;;; Form rules
;;;------------

(defun mult/ids-on-form-label (left-edge right-edge)
  "Look for rules based on one the form label on one of the edges and
   the category label on the other"
  (tr :mult/ids-on-form-label)
  
  (let* ((left-form-ids (form-ids/rightward left-edge)) ;; form field
         (right-form-ids (form-ids/leftward right-edge)))
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
  "Look for a rule that combines a category label on the left and
   a form label on the right."
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
  "Look for a rule combining a form label on the left and a category
   label on the right."
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
;;; multiplies for form-rule possibilities
;;;----------------------------------------

(defun look-left-for-form-rule (left-edge right-edge
                                 left-form-id
                                 right-label-id)
  "Does the multiply of left-form + right-category"
  (let ((rule (multiply-ids left-form-id right-label-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))



(defun look-right-for-form-rule (left-edge right-edge
                                  left-label-id
                                  right-form-id)
  "Does the multiply of left-category + right-form"
  (let ((rule (multiply-ids left-label-id right-form-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
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
      (look-left-for-form-rule left-edge right-edge
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
      (look-right-for-form-rule left-edge right-edge
				 left-label-id right-form-id)
      (else (tr :right-form-id-failed left-edge right-edge)
	    nil ))))

      





;;;------------------------------
;;; check purely syntactic rules
;;;------------------------------

(defun check-form-form (left-edge right-edge)
  (when *allow-pure-syntax-rules*
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
         nil)))))


  
  
