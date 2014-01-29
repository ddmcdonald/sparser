;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "compose"
;;;            grammar/rules/situation/
;;;  version:  January 2014

;; Initiated 10/9/13 for the routines that take content from the
;; chart and incorporate it into the situation. Elaborated 10/1013.
;; Revised a bit 12/3/13 on word #2. 1/23/14 Got the head operations
;; running.

(in-package :sparser)

(defvar *this-is-the-head* nil
  "Set by introduce-next-word when it knows that it's reached
   the last word of the segment. Indicates that we should transfer
   the current peg's contents to the referent we're presently
   incorporating.")

(defgeneric incorporate-referent-into-the-situation (referent rule edge)
  (:documentation "The conduit between the addition of referents
    to the chart and their incorporation into the ongoing situation.
    Called by referent-from-rule after its done everything else 
    it might do, or by referent-from-unary-rule
       N.b. this function is called from the referent computation
    in the tail recursive central control loop, so it has to return
    cleanly (vs. re-enter the loop on its own). Nothing is looking
    at its return value."))

;; Method could be specialized on the type of rule, or if turned into
;; a k-method on the type of referent, though not yet clear what
;; that would buy us. 

(defmethod incorporate-referent-into-the-situation ((referent t) (rule cfr) (edge edge))
  (let* ((current-state (phrasal-state))
         (peg (if (eq (name current-state) :inital-state)
                (activate-current-np-referent (setup-a-peg current-state))
                (current-peg))))
    (tr :incorporate-into-situation referent edge)
    (if *this-is-the-head*
      (then
       (tr :c3-phrasal-head referent)
       (incorporate-phrasal-head referent peg edge))
      (else
       (tr :not-c3-phrasal-head referent)
       (let ((new-state (update-situation-state edge 'phrase))
             (type (cat-symbol (itype-of referent))))
         (unless (eq current-state new-state)
           (let ((var (indexical-for-state new-state)))
             (add-indexical-to-situation var peg)
             (push-debug `(,new-state ,var))))
         (push-debug `(,type ,referent ,peg))
         (add-to-peg type referent peg))))))


(defun incorporate-phrasal-head (referent peg edge)
  (push-debug `(,referent ,peg))
  ;; (setq referent (car *) ongoing-peg (cadr *))
  (let* ((category
          (or (indicated-type-of referent)
              (itype-of referent)))
         (i (make-unindexed-individual category)))
    (push-debug `(,i ,peg))
    ;; Does this individual include all the categories required
    ;; by the variables on the peg? If not then the bindings
    ;; will fail.
    (check-validity-of-individual i peg)

    ;; Make the bindings
    (let ((bindings (transfer-peg-bindings-to-individual peg i))
          (permanent?
           (or (permanent-individual? i)
               (individuals-of-this-category-are-permanent category))))

      ;; index the individual
      (index-aux/individual i category bindings permanent?)

      ;; "incorporate it" into the situation latent variables
      ;; and attached procedures and all.

      (push-debug `(,i ,edge))
      ;; Change the referent of the edge so we can pass this
      ;; information up to the poor-man's segment level
      (setf (edge-referent edge) i)
      i)))


;;--- stash on peg

(defmethod add-to-peg ((type symbol) ;;(eql 'category::color))
                       (value t) ;; premature?
                       (peg t)) ;; ditto
  (let ((variable ;; a real one
         (lookup-variable-for-value-type type)))
    (bind-variable-on-peg peg variable value)))

(defun lookup-variable-for-value-type (symbol)
  ;;/// This is a total hack since it should be done by inverting
  ;; the rule's mapping. Probably easily added to the schema.
  (case symbol
    (category::color
     (find-variable-in-category 'color 'physical-surface))
    (category::car-manufacturer ;; generalize to maker-of-artifacts
     (find-variable-in-category 'made-by 'artifact))
    (otherwise
     (push-debug `(,symbol))
     (break "No variable associated with the category symbol ~a"
            symbol))))



;;--- gofer

(defun indicated-type-of (i)
  "Look on the immediate superclass for a 'type-of' binding"
  (let ((c (itype-of i)))
    (value-of 'type-of c)))




