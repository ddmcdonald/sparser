;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "rules"
;;;            grammar/rules/situation/
;;;  version:  March 2014

;; Initiated 3/20/14 to collect all the cases, the grammar, from the
;; individual files into one place.

(in-package :sparser)

;;;----------------
;;; the indexicals
;;;----------------

(define-indexical-variable current-np-referent)

(define-indexical-variable subject)


;;-- If there's one indexical per state as a starting draft,
;; then we can predefine the association.

(defun indexical-for-state (state)
  (case (name state)
    (:assembling-np (get-indexical-variable 'current-np-referent))
    (:subject-seen (get-indexical-variable 'subject))
    (otherwise
     (error "The state ~a is not (yet) associated with an indexical"
            state))))


;;;--------------------------------------------------------------
;;; What variable (predicate) goes on the peg for a given object
;;;--------------------------------------------------------------

(defun add-referent-to-peg (referent peg)
  ;; A staging point for reworking this dispatch/lookup.
  ;; called from incorporate-referent-into-the-situation when it
  ;; is not the phrasal head being added.
  (let ((type (cat-symbol (itype-of referent))))
    (push-debug `(,type ,referent ,peg))
    (add-to-peg type referent peg)))

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

