;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved

;;;      File: "form-march"
;;;    Module: "analyzers;SDM&P:
;;;   Version: January 2013

;; Initiated 1/23/12

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun march-rightward-over-edges-by-form (edges)
  "Walk to the right from the head, building up the phrase
   by folding in the terms from the left using possibly new
   form rules to fill in if there isn't aleady a rule that
   fits the pair.  Runs for side-effects, ending up with
   a single edge over the input list set of edges, which are
   given in order from left to right."
  (let* ((leftmost-edge (car edges))
         (rightmost-edgep (car (last edges)))
         (head-edge rightmost-edgep)
         (edges-to-left (cdr (reverse edges)))
         (next-to-left (pop edges-to-left))
         rule  edge  )
    (loop
      ;; Is there already a rule for this combination?
      (setq rule (multiply-edges next-to-left head-edge))

      ;; Or else figure out what rule to use
      (unless rule
        (setq rule (rule-for-form-march next-to-left head-edge)))

      ;; apply the rule, the resulting edge becomes
      ;; the new head. 
      (setq edge (make-completed-binary-edge next-to-left
                                             head-edge
                                             rule))
      (when (eq next-to-left leftmost-edge)
        ;; we've exhausted all the edges 
        (return))

      (setq head-edge edge)
      (setq next-to-left (pop edges-to-left)))))


;;;-------------------------
;;; find form rule for pair
;;;-------------------------

(defun rule-for-form-march (left-edge head-edge)
  "Dispatch on the form of the left edge to find a corresponding
   form rule. Returns the rule."
  (let ((left-form (edge-form left-edge))
        (right-form (edge-form head-edge)))
    (case (cat-symbol left-form)
      ((or category::proper-name
           category::proper-noun)
       (find-form-rule 'modifier-creates-subtype)) ;; not the best choice
      (category::common-noun
       (find-form-rule 'modifier-creates-subtype)) ;; better choice here
      (otherwise
       (push-debug `(,left-form ,right-form ,left-edge ,head-edge))
       (break "New form for left-edge: ~a" left-form)))))

#|
  The ETF in pre-head-np-modifers have the right range of interpretations.
Want to get form rules from their cases. Need an entry point there that
would take a schematic rule data structure and return the corresponding
form rule. 

|#

(defgeneric find-form-rule (designator)
  (:documentation "Find or make the form rule that corresponds to the
 designator, which ultimately has to be a schematic-rule object. 
 If the rule exists it will be on the form-rule field of the object,
 otherwise we create and stash it there. "))

(defmethod find-form-rule ((etf-name symbol))
  "The ETF should have just one schema, otherwise we'd use a cons of
   an etf and a relation keyword."
  (let ((etf (exploded-tree-family-named etf-name)))
    (unless etf
      (error "There is no exploded tree family named ~a" etf-name))
    (let ((cases (etf-cases etf)))
      (when (cdr cases)
        (error "There is more than one schema in~%~a~%Uses a cons of the ~
                etf name and relation keyword to indicate which one to use."
               etf))
      (find-form-rule (car cases)))))

(defmethod find-form-rule ((schr schematic-rule))
  (or (schr-form-rule schr)
      (define-form-rule-from-schema schr)))

(defun referent-for-schema (schr)
  "We're creating a form rule from a schema that normally would be
 the basis of a semantic rule, and which has a referent to match,
 with subtyping and variable binding that only makes sense when given
 a mapping. We can't do that, so we supply a method to take up the
 slack. The method can be specialized where that information is
 available and modeled."
  (flet ((dispatch (relation)
           (case relation
             (:modifier
              (values 'modifier+noun '(left-edge right-edge)))
             (otherwise
              (push-debug `(,schr))
              (error "Next case for the relation: ~a" relation)))))
    (let ((relation (schr-relation schr))
          (head-edge (cadr (memq :head-edge (schr-descriptors schr)))))
      (multiple-value-bind (method args)
                           (dispatch relation)
        `(:head ,head-edge
          :method ,method ,@args) ))))

