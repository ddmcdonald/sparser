;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  6.0 April 2013

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

(in-package :sparser)

;;;------------------
;;; access functions
;;;------------------

(defun category-ids (edge direction field)
  ;; Every access goes through here. For debugging it can be called
  ;; with a category rather than an edge. 
  (let ((label (if (category-p edge)
		 edge
		 (case field
		   (:category (edge-category edge))
		   (:form (edge-form edge))
		   (otherwise
		    (error "wrong spelling for the field argument: ~a" field))))))
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

(defun multiply-edges (left-edge right-edge)
  ;; Called from the check routines, e.g. check-one-one
  ;; Looks for any possibility of composition for these edges first,
  ;; i.e. whether there are the right direction indexes for these,
  ;; and then whether there is a category combination or, barring
  ;; that, a form combination.
  ;; Returns a rule or nil to indicate the edges don't combine.
  (tr :multiply-edges left-edge right-edge)
  ;;"[Multiply] Checking (e~A+e~A)  ~A + ~A"
  
  (if (edge-of-dotted-intermediary right-edge)
    ;; dotted rules only combine to their right, never to their left
    (then (tr :right-edge-is-dotted right-edge)
          ;; "   but the right edge, e~A, is dotted and can't possibly combine"
          nil)
    
    (let ((left-category-ids (category-ids/rightward left-edge))
	   (right-category-ids (category-ids/leftward right-edge)))
      
      (or (multiply-categories left-category-ids right-category-ids
			       left-edge right-edge)
      
          (when *edges-from-referent-categories*
            (multiply-referents left-edge right-edge))

          (when *allow-pure-syntax-rules*
            (check-form-form left-edge right-edge))))))


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
      (let ((left-categories (multiple-referent-categories left-referent))
            (right-categories (multiple-referent-categories right-referent)))
        (tr :referent-categories-to-check left-categories right-categories)

        (dolist (right-category right-categories)
          (dolist (left-category left-categories)
            ;; Add traces for these cases, or do the regular trace-edges ones
            ;; suffice?
            (let ((rule (multiply-referent-categories left-edge left-category 
                                                      right-edge right-category)))
              (when rule
                (return-from multiply-referents rule))))))

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
  ;; most general
  (let ((base-category
         (typecase referent
           (psi (all-categories-in-psi referent))
           (individual (indiv-type referent))
           (referential-category referent)
           (otherwise
            (push-debug `(,referent))
            (error "Unexpected type: ~a" (type-of referent))))))
    (when (consp base-category)
      (if (null (cdr base-category))
        (setq base-category (car base-category))
        (else (push-debug `(,base-category ,referent))
              (break "stub - more than one category"))))
    (super-categories-of base-category)))


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
