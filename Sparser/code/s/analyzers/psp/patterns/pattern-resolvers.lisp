;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern-resolvers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  May 2016

;; Initiated 11/12/15 to collect up and rationalized the subroutines
;; used after a pattern has matched to determine what we really have.
;; These typically build edges when they succeed.

(in-package :sparser)

;;;--------------------------
;;; look for a explicit rule 
;;;--------------------------

(defun composed-by-usable-rule (left-edge right-edge)
  (let* ((rule (multiply-edges left-edge right-edge))
         ;; We only want rules that create real relationships.
         ;; There will always be a syntactic rule, so that rules
         ;; out the possibility of looking for a salient literal
         ;; which would be Very Bad since they are informative.
         ;; Form rules are half generic, particularly for adjective
         ;; so I'm ruling those out too.
         (usable-rule (unless (syntactic-rule? rule)
                        (unless (form-rule? rule)
                          rule))))
    (when usable-rule ;; "GTP-bound"
      (tr :ns-found-usable-rule rule)
      (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :two-word-hyphen-edge edge)
        edge))))


;;;------------------------------------
;;; Combine them by binding a variable
;;;------------------------------------

;;--- predicate 

(defun second-imposes-relation-on-first? (left-ref right-ref right-edge)
  "If it's reasonable to take the second as the head, return
   the variable it would use to compose with the first."
  (declare (special left-ref right-ref right-edge
                    category::verb+ed category::adjective category::verb+ing
                    category::verb+ed))
  (when (or (word-p left-ref) (word-p right-ref)) ;; e.g. "-tagged"
    (return-from second-imposes-relation-on-first? nil))
  (unless (and left-ref right-ref)
    (return-from second-imposes-relation-on-first? nil))

  (let* ((form (when (edge-p right-edge)
                 (edge-form right-edge)))
         (subcat-var (subcategorized-variable right-ref :m left-ref)))

    (cond
      ((or (eq form category::verb+ed) ;; assume passive
	   (eq form category::verb+ing)
	   (eq form category::adjective))
       ;; now figure out what variable on the second (right)
       ;; should be bound to the first (left)
       (let* ((vars (loop for sc in (super-categories-of right-ref)
		       append
			 (if (category-p sc)
			     (cat-slots sc) ;; what case??
			     (cat-slots (itype-of sc)))))
	      (the-variable 
	       (cond
		 ((eq form category::verb+ed)
                  (tr :ns-using-subject-variable-of right-ref)
		  (subject-variable right-ref))
		 ((or (eq form category::adjective)
		      (eq form category::verb+ing))
		  ;; Get the slots on the category of the right-edge
		  ;; and look for a variable that's not for subjects
                  ;;(tr :ns-using-non-subject-variable-of right-ref)
		  (or (object-variable right-ref) ;; if there is an object variable, use it
		      (let ((sv (subject-variable right-ref)))
			(loop for v in vars 
			   when (not (eq v sv)) do (return v)))))))
	      (right-cat
	       (if (individual-p right-ref)
		   (itype-of right-ref)
		   right-ref)))
         (declare (special vars the-variable right-cat))
	 ;; Which variable this is really depends on the two referents.
	 ;; For the "induced" example its an agent (= subject). But the
	 ;; tyrosine goes on the site variable of the phosphoryate.
	 ;; For right now, binding the subject and letting the chips
	 ;; fall as they may. Elevating the right edge as the head
	 ;; but making it an adjective overall. 
	 (unless (and
		  the-variable
                  (find-variable-for-category (var-name the-variable) right-cat)
		  (satisfies-subcat-restriction?
		   left-ref
		   (var-value-restriction
		    (find-variable-for-category (var-name the-variable) right-cat))))
	   ;;/// clear motivation for structure on variables on perhaps
	   ;; on the mixing in of categories for this same purpose
	   ;; Default to modifier ??
	   (setq the-variable
		 ;; applies if there's just one variable on category
		 (or
		  (single-on-variable-on-category right-ref)
		  (loop for sp in (subcat-patterns right-cat)
		     when (satisfies-subcat-restriction?
			   left-ref
			   (subcat-restriction sp))
		     do (return (subcat-variable sp))))))
	 (when the-variable
	   (tr :ns-used-the-single-variable-on right-ref))
	 the-variable))
      
      (subcat-var
       (tr :ns-second-subcategizes-for-first subcat-var)
       subcat-var))))


;;--- follow-up routine that does it

;; "EphB1-induced", "tyrosine-phosphorylated"
(defun do-relation-between-first-and-second (left-ref right-ref 
                                             left-edge right-edge)
  (declare (special category::adjective category::verb+ed category::vp+ed
                    category::n-bar))
  (when (category-p right-ref)
    (setq right-ref (individual-for-ref right-ref)))
  (cond ((itypep left-ref 'wild-type)
         (make-wild-type-edge left-ref right-ref left-edge right-edge))
        ((itypep right-ref 'wild-type)
         (make-wild-type-edge right-ref left-ref right-edge left-edge))
        (t

         (let ((variable (second-imposes-relation-on-first?
                          left-ref right-ref right-edge)))
           (unless variable
             (tr :ns-no-variable-relating-them left-ref right-ref)
             (return-from do-relation-between-first-and-second nil))
           (tr :make-right-head-with-agent-left variable)
           (let ((edge
                  (make-ns-edge
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   (edge-category right-edge)
                   :form (cond ((eq (edge-form right-edge) category::verb+ed)
                                (if (itypep left-ref 'no-space-prefix)
                                    category::verb+ed
                                    category::vp+ed))
                               ((member (cat-name (edge-form right-edge))
                                        '(common-noun common-noun/plural proper-noun
                                          n-bar ;; point-mutations are n-bar
                                          ))
                                category::n-bar)
                               (t
                                category::adjective))
                   :referent (bind-variable variable left-ref right-ref)
                   :rule 'do-relation-between-first-and-second
                   :constituents `(,left-edge ,right-edge))))
             (tr :no-space-made-edge edge)
             edge)))))


(defun make-wild-type-edge (wild-type protein wild-type-edge protein-edge)
  (make-ns-edge
   (pos-edge-starts-at
    (if (position-precedes (pos-edge-starts-at wild-type-edge)
                           (pos-edge-starts-at protein-edge))
        wild-type-edge
        protein-edge))
   (pos-edge-ends-at
    (if (position-precedes (pos-edge-starts-at wild-type-edge)
                           (pos-edge-starts-at protein-edge))
        protein-edge
        wild-type-edge))

   (edge-category protein-edge)
   :form (category-named 'n-bar)
   :referent (bind-dli-variable 'predication wild-type protein)
   :rule 'make-wild-type-edge
   :constituents
   (if (position-precedes (pos-edge-starts-at wild-type-edge)
                           (pos-edge-starts-at protein-edge))
       `(,wild-type-edge ,protein-edge)
       `(,protein-edge ,wild-type-edge))))


;;;------------------------------
;;; precursors to other routines
;;;------------------------------

(defun make-protein-pair/convert-bio-entity (start-pos end-pos which-one
                                             &aux (edges (treetops-between start-pos end-pos)))
  ;; Called from one-hyphen-ns-patterns 
  ;; /// compare to operation in multi-colon-ns-patterns 
  ;;  which shares a lot  
  (let* ((edge-to-convert (ecase which-one
                            (:right (third edges))
                            (:left (first edges)))))
    (convert-bio-entity-to-protein edge-to-convert) ;; converts the edge
    (make-protein-pair (first edges) (third edges) start-pos end-pos)))
    


