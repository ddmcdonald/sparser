;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2015,2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "quantifiers"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2020

;; initiated 8/31/11. Revised 8/22/13 so that it returns the head of
;; the relation (real-body) rather than simply creating the relationship
;; 9/22/15 Make quantified specialize predication 

(in-package :sparser)

(define-category quantified
  :specializes predication
  :instantiates :self
  :binds ((quantifier . quantifier)
          (body)))

(def-k-method quantify ((q category::quantifier) body)
  (define-individual 'quantified :quantifier q :body body)
  body)


;;;------------------
;;; quantifier float
;;;------------------

(defvar *quantifier-in-vg* nil
  "Flag indicating that there is a quantifier in the verb group. 
   Set in setup-qfloat to the edge over the quantifier, read by float-quantifier 
   (in the post-vg-hook). Reset to nil in clear-traversal-state
   with each sentence.")

(defun setup-qfloat (auxiliary quantifier)
  "Move the edge over quantifier to the flag and return the auxiliary
   as the the interpretation of the phrase."
  ;; Used by [model -> modal quantifier] in syntax;modals.lisp
  (if *subcat-test*
    (if (and (one-word-long? (left-edge-for-referent)) ; "may also have"
             (memq quantifier *floatable-quantifier*))             
      t
      nil)
    (else
      (push-debug `(,auxiliary ,quantifier))
      ;;(break "aux: ~a, quant: ~a" auxiliary quantifier)
      ;;(format t "~&>>>>>~%Doing quantifier float in~%~a~%<<<<<~%" (current-string))
      (setq *quantifier-in-vg* (right-edge-for-referent))
      auxiliary)))



(defun float-quantifier (vg-edge)
  "This is called from verb-group-final-actions when the flag is up.
   At this point we have done all the chunking operations up to
   and including the verb group. The subject where we're 'moving'
   the quantifier to will not have been covered yet by additional
   parsing. We look at the edge to our immediate left. If it is an
   NP we add the quantifier to it.
     There's no guarenty that this heuristic is going to actually
   identify the intended target subject. We would have to be scanning
   left to right to be more sure. But it's a good start.
     Runs for side-effects.
     Note the wrapping of set-edge-referent."
  (let ((leftward-edge (left-treetop-at/only-edges vg-edge)))
    (when (and leftward-edge
               (np-category? leftward-edge))
      (let* ((subj-ref (edge-referent leftward-edge))
             (quantifier-edge *quantifier-in-vg*) ; renaming
             (q (edge-referent quantifier-edge))
             (subj+quant (bind-variable 'quantifier q subj-ref)))
        
        (with-contextually-supplied-edge quantifier-edge
          ;;(break "*contextually-supplied-edge*: ~a" *contextually-supplied-edge*)
          (set-edge-referent leftward-edge subj+quant))

        (setq *quantifier-in-vg* nil)))))

