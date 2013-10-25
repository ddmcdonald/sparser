;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "compose"
;;;            grammar/rules/situation/
;;;  version:  October 2013

;; Initiated 10/9/13 for the routines that take content from the
;; chart and incorporate it into the situation. Elaborated 10/1013.

(in-package :sparser)

(defgeneric incorprate-into-the-situation (referent rule edge)
  (:documentation "The conduit between the addition of referents
    to the chart and their incorporation into the ongoing situation.
    Called by referent-from-rule after its done everything else 
    it might do, or by referent-from-unary-rule
       N.b. this function is called from the referent computation
    in the tail recursive central control loop, so it has to return
    cleanly (vs. re-enter the loop on its own). Nothing is looking
    at its return value."))


;; more like a total update fn
(defmethod incorprate-into-the-situation ((referent t) (rule cfr) (edge edge))
  (push-debug `(,referent ,rule ,edge)) ;;(break "incorporate ~a" referent)
  ;; (setq referent (car *) rule (cadr *) edge (caddr *))

  ;; Update the state
  (let ((new-state (update-situation-state edge)))
    (push-debug `(,new-state)) ;; goes to a trace stmt
    (let* ((var (indexical-for-state new-state))
           (peg ;; draft to get stuff to turn over
            (value-of-indexical var))
           (type (cat-symbol (itype-of referent))))
      (push-debug `(,type ,referent ,peg))
      (incorporate type referent peg))))


(defmethod incorporate ((type (eql 'category::color))
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
    (otherwise
     (push-debug `(,symbol))
     (break "No variable associated with the category symbol ~a"
            symbol))))
