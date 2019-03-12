;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "no-longer-used"
;;;   Module:  "analyzers;psp:check:"
;;;  Version: February 2019

;; Functions, etc. from multiply.lisp that have been OBE

(in-package :sparser)

;;--- Misc. information about the rule set

;; This is part of an experiment to see which semantic rules, other than
;;  etf rules for NPs and non-etf semantic rules are actually needed in biology,
;;  given the subcat-frame mechanism
;; When this parameter is set, the only semantic rules actually applied are those for
;; NPs, and special purpose rules
(defparameter *no-etf-rules* nil)
;; when *no-etf-rules* is set, *semantic-rules-used* collects the actual set of
;; semantic rules used in processing the snapshot corpora
(defparameter *semantic-rules-used* nil)
;; The total set of such rules is:
#|
#<PSR45391  modal ->  modal then> 
#<PSR45413  protein ->  protein point-mutation> 
#<PSR949  comma-number ->  COMMA number> 
#<PSR45411  residue-on-protein ->  protein residue-on-protein> 
#<PSR658  be ->  be not> 
#<PSR1088  measurement ->  number unit-of-measure> 
#<PSR1123  comma-year ->  COMMA year> 
#<PSR45407  residue-on-protein ->  amino-acid number> 
#<PSR1153  amount-of-time ->  number time-unit> 
#<PSR942  percent ->  number PERCENT-SIGN> 
#<PSR44964  article-figure ->  article-figure two-part-label> 
#<PSR45409  residue-on-protein ->  residue-on-protein number> 
#<PSR624  do ->  do not> 
#<PSR44965  article-figure ->  article-figure number> 
#<PSR952  ordinal ->  "the" ordinal> 
#<PSR666  there-exists ->  syntactic-there be> 
|#

;;-- intial filter in multiply linked to experiment above     
      (when (and rule
		 (or (and *no-etf-rules*
                          (cfr-schema rule)
                          (not (member (schr-lhs (cfr-schema rule)) '(np))))
                     (eq :syntactic-form (cfr-category rule))))
	(setq rule nil))




;;-- clause in cond of multiply      
      (unless rule ;; fell through
        (when *edges-from-referent-categories*
          ;; Look for a rule in the cross-product 
          ;; of the categories the edges category labels inherit from
          (setq rule (multiply-referents left-edge right-edge))
          (if rule
              (then
                (tr :found-rule-from-referent rule)
                (if (valid-rule? rule left-edge right-edge chunk)
                    (tr :rule-is-valid)
                    (else 
                      (tr :rule-is-invalid)
                      (setq rule nil))))
              (else 
                (tr :no-rule-from-referent)))))

;;--- final clause in the cond     
      ;;This code is to test if the new trie-multiply produces identical results to multiply-edges
      #+ignore
      (let ((trie-rule (trie-multiply-edges left-edge right-edge chunk)))
        (declare (special trie-rule))
        (when (not (eq trie-rule rule)) 
          (setq left left-edge)
          (setq right right-edge)
          (lsp-break "multiply-edges -- trie-rule and rule don't agree")))


;;--- initial cut at more label options in form  ruls
(defun multiply-form-category (left-edge right-edge)
  "Look for rules based on one the form label on one of the edges and
   the category label on the other"
  (tr :mult/ids-on-form-label) ;; threading
  (let* ((left-form-ids (form-ids/rightward left-edge)) ;; form field
         (right-form-ids (form-ids/leftward right-edge)))
    (tr :multiply-form left-edge right-edge)
    (cond
      ((or left-form-ids right-form-ids)
       (tr :checking-form-label-category-rules)
       (mult/check-form-options left-edge right-edge
                                left-form-ids right-form-ids))
      
      ((and (right-looking-form-id (edge-category left-edge))
            (left-looking-form-id (edge-category right-edge)))
       ;; If the labels in the form fields of the two edges don't
       ;; compose then maybe the labels on the category fields do.
       (let ((rule (multiply-ids (right-looking-form-id (edge-category left-edge))
                                 (left-looking-form-id (edge-category right-edge)))))
         rule))
      (t
        (tr :neither-has-category-id)
        nil))))



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
                     (multiple-referent-categories left-referent)))
              (right-categories 
               (cons
                (edge-category right-edge)
                (multiple-referent-categories right-referent))))
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
                (return-from multiply-referents rule)))))
          
      (else (tr :referents-unsuitable-for-multiplying
                left-edge right-edge left-referent right-referent)
            nil))))

(defun legal-type-for-multiplying-referents (obj)
  ;; Perhaps better as an flet on multiply-referents since it has 
  ;; no other use. Tracks multiple-referent-categories
  (typecase obj
    ((or individual referential-category) t)
    (otherwise nil)))

(defun multiple-referent-categories (referent)
  ;; Consult the supercategory links to return a list of the categories
  ;; to which the referent belongs, from the most specific to the
  ;; most general. Feeds this list to multiply-referents
  (let ((base-category
         (typecase referent
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
    

;;-------- original form of the form rule checking


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

      



;;------- mid-term formulation
;;;-----------------
;;;  Semantic rules
;;;-----------------

(defun multiply-semantic-categories (left-edge right-edge)
  "We come here from the Multiply-edge entry point.
   Nothing has been checked or ruled out yet, so we start with
   the most semantic case for cfr and csr rules -- do the labels
   in the category field of the edges combine."
  (tr :muliply-categories)
  (let* ((left-category-label (edge-category left-edge))
         (right-category-label (edge-category right-edge))
         (left-category-ids (category-ids/rightward left-edge))
         (right-category-ids (category-ids/leftward right-edge)))
  (if (and left-category-ids right-category-ids)
    (then
      (tr :both-have-category-ids)
      (let ((left-label-id (category-multiplier left-category-ids))
	    (right-label-id (category-multiplier right-category-ids)))
	(if (and left-label-id right-label-id)
	  (then
	    (tr :both-right-and-left-label-ids)
	    (let ((rule (multiply-ids left-label-id
				      right-label-id)))
	      (if rule
		(then
                 (tr :multiply-succeeded rule left-edge right-edge)
                 rule)
		(else
                 (tr :multiply-failed left-edge right-edge)
		 nil))))
	  (else
            (tr :one-or-both/does-not-have-category-multiplier
                left-label-id right-label-id)
	    nil))))
    (else
      (tr :only-L/R-has-category-ids left-category-ids right-category-ids)
      nil)))

