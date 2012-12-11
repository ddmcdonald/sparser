;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1995,2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "possessive"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.2 September 2009

;; developed for real from scratch 7/26/94 v2.3.  Added another special
;; case and checks for pronouns 8/19.  9/15 noticed possiblity of
;; getting :multiple-initial-edges
;; 0.1 (10/22) Added a check for a specific rule before going with the
;;      default.
;;     (5/15/95) cleaned up the file
;; 0.2 (9/10/09) Added a generic method/category for generalized possession. 
;;      Might be worth gating.
;; 0.3 (12/7/12) cleaned up effect on left segment boundary

(in-package :sparser)

;;;-------------------
;;; default form rule
;;;-------------------

(defparameter *possessive-rule*

  (def-form-rule (np apostrophe-s)
    :form possessive
    :referent (:daughter left-edge))) ;;/// needs a subtype


;;;------------------
;;; edge-fsa trigger
;;;------------------

(define-edge-fsa  'apostrophe-s 'check-special-cases-and-possessive)


(defun check-special-cases-and-possessive (poss-edge starts-at)
  (let ((prior-word (pos-terminal (chart-position-before starts-at)))
        (prior-edge (ev-top-node (pos-ends-here starts-at))))

    (if (or (eq prior-word word::|there|)
            (eq prior-word word::|it|)
            (eq prior-word word::|that|))
      ;; for these cases we don't have to do anything since the
      ;; rules that handle these are couched in terms of 'apostrophe-s'
      ;; directly. See [syntax;be]
      nil

      (if prior-edge
        (then
          (when (eq prior-edge :multiple-initial-edges)
            (setq prior-edge
                  (single-best-edge-over-word
                   (chart-position-before starts-at))))

          (let ((rule (multiply-labels (edge-category prior-edge)
                                       category::apostrophe-s)))
            (unless rule
              (setq rule *possessive-rule*))

            (let ((new-edge
                 (make-completed-binary-edge prior-edge poss-edge
                                             rule)))

              
              ;; This fn is from adjudicators. It moves the boundary
              ;; to the left if the edge crosses it. 
              (cleanup-segment-boundaries-after-pattern-edge new-edge)
          
              ;; return value for this as an fsa, i.e. the position
              ;; after the apostrophe
              (pos-edge-ends-at poss-edge))))

        ;; nothing to do since no edge formed to place an new edge
        ;; over. Since HA and DM&P rules will have already applied,
        ;; there's not even a way to recover a heuristic edge in
        ;; this case without going into DA.
        nil ))))


;;;---------------------------------------------
;;; Possessive + NP -- "generalized possession"
;;;---------------------------------------------

(define-category generalized-possession
  :specializes nil
  :binds ((possessor)
	  (possessed)))

(defobject generalized-possession-relation ()
  ((possessor)
   (possessed)))

(defgeneric generalized-possession (who-has-it what-they-have)
  (:documentation "This is the default relationship created by 
the verb 'have' or the possessive construction. The notion was 
developed by Jerry Hobbs to reflect the minimum that one could 
infer from instances of these constructions. Specific cases will 
be able to make (instantiate) more specific relationships."))

;; This is for the form or other referent-constructing rules
(defmethod generalized-possession (who-has-it ;; lefthand side
				   what-they-have) ;; righthand side
  (format t "~&Using the default generalized-possession method~%")
  (make-instance 'generalized-possession-relation 
		 :possessor who-has-it
		 :possessed what-they-have))









