;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "compose"
;;;            grammar/rules/situation/
;;;  version:  December 2013

;; Initiated 10/9/13 for the routines that take content from the
;; chart and incorporate it into the situation. Elaborated 10/1013.
;; Revised a bit 12/3/13 on word #2. 

(in-package :sparser)


(defvar *this-is-the-head* nil
  "Set by introduce-next-word when it knows that it's reached
   the last word of the segment. Indicates that we should transfer
   the current peg's contents to the referent we're presently
   incorporating.")



(defgeneric incorprate-into-the-situation (referent rule edge)
  (:documentation "The conduit between the addition of referents
    to the chart and their incorporation into the ongoing situation.
    Called by referent-from-rule after its done everything else 
    it might do, or by referent-from-unary-rule
       N.b. this function is called from the referent computation
    in the tail recursive central control loop, so it has to return
    cleanly (vs. re-enter the loop on its own). Nothing is looking
    at its return value."))

(defmethod incorprate-into-the-situation ((referent t) (rule cfr) (edge edge))
  (push-debug `(,referent ,rule ,edge)) ;; (setq referent (car *) rule (cadr *) edge (caddr *))

  (if *this-is-the-head*
    (incorporate-phrasal-head referent (current-peg))

    ;; Otherwise update the situation pushing on a peg
    (let* ((current-state (situation-state))
           (new-state (update-situation-state edge))
           (type (cat-symbol (itype-of referent)))
           peg )
      (if (eq current-state new-state)
        (then ;; trace here
         (setq peg (current-peg)))
        (else
         (let ((var (indexical-for-state new-state)))
           (push-debug `(,new-state ,var)) ;; goes to a trace stmt
           (setq peg (value-of-indexical var)))))
      (push-debug `(,type ,referent ,peg))
      (incorporate type referent peg))))


(defmethod incorporate ((type symbol) ;;(eql 'category::color))
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


(defun incorporate-phrasal-head (referent ongoing-peg)
  (push-debug `(,referent ,ongoing-peg))
  (break "do the head"))
