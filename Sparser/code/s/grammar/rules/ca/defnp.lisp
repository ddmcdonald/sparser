;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2011-2016 David D. McDonald -- all rights reserved
;;;
;;;     File:  "defNP"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  March 2016

;; initiated 6/13/93 v2.3.  3/30/94 set the ignore flag to t as the default
;; 0.1 (4/19/95) stopped them from adding the 'not-in-discourse' category
;;      since none of the routines that would use it exist yet and it makes
;;      the printing odd sometimes: "the Army". 9/13/11 fixed out of date
;;      function call. Two more instances 9/26. Added PSI to typecase.
;;     (12/26/14) Stubbed an approach to selecting the referent when working
;;      sentence by sentence.
;;     (3/6/15) Added traces.
;; 0.2 (8-9/15) folded in mentions and impact of description lattice

(in-package :sparser)


(define-category  known-in-discourse
  ;; stand-in subtype when you can't dereference the phrase
  ;; ///indexing and later reconsideration have yet to be throught through
  :specializes nil
  :instantiates self )

;; (trace-pronouns)

(defparameter *ignore-out-of-pattern-dereferencing* t)

(defun dereference-DefNP (head)

  ;; called to calculate the referent of an edge that has been built
  ;; with a leading definite determiner

  (tr :decoding-definite-reference-to head)

  ;; [sfriedman:20151008.1354CST] Store the metadata.
  (let ((sentence (previous-sentence))) ;; 3/6/16 ddm - why the previous sentence?
    (when sentence
      (push (list :def-np-coref head (parent-edge-for-referent) *do-anaphora*)
            (metadata (contents sentence)))))

  (unless *do-anaphora*
    (return-from dereference-DefNP head))

  (let* ((category-of-head
          (etypecase head
            (individual (first (indiv-type head)))
            (referential-category head)
            (mixin-category head))) ;; "this agent" -- meaning drug
         (category-to-look-for
          (case (cat-symbol category-of-head)
            (category::generic-co-word  category::company)
            (otherwise category-of-head))))

    (let ((discourse-entry (discourse-entry category-to-look-for)))
      (if discourse-entry
        (tr :defnp-category-has-entry)
        (tr :defnp-no-entry))

      ;; (push-debug `(,head ,category-to-look-for ,discourse-entry))
      ;; (break "Examine DefNP context")

      (if discourse-entry
        (if (sucessive-sweeps?)
          ;; Because completion will have run a different points
          ;; the first entry may be subsumed by the one we're doing
          (then
            (push-debug `(,discourse-entry))
            (defnp/extract-referent-from-discourse-entry
              discourse-entry (parent-edge-for-referent)
              head category-to-look-for))

          ;; Earlier ("normal") assumptions
          (let ((ref
                 (if (> (length discourse-entry) 1)
                   (if *ignore-out-of-pattern-dereferencing*
                     (car (first discourse-entry))
                     (break "More than one possible antecedant of type ~A~
                           ~%in this discourse already.~% -- extend the rules --"
                            category-to-look-for))
                   (car (first discourse-entry)))))
            (tr :defnp-returning ref)
            ref))

        (let ((new-indiv
               (if *description-lattice*
                ;; DAVID -- is this plausible
                (fom-lattice-description category-of-head)
                (make-default-descriptive-individual category-of-head))))
          (tr :defnp-made-new-individual new-indiv)
          new-indiv)))))

(defun defnp/extract-referent-from-discourse-entry (entry parent-edge
                                                    head category)
  ;; subroutine of dereference-DefNP
  (push-debug `(,entry ,parent-edge ,head ,category))
  ;; (setq entry (car *) parent-edge (cadr *) head (caddr *) category (cadddr *))
  (cond
   (*description-lattice*
    ;; entry is a sequence of mentions
    ;; (#<i5260 p29 p30> #<i6551 p15 p18> #<i6550 p16 p18> #<i5260 p17 p18>)
    ;;/// Might confirm that the most recent one is for the head
    ;; of this NP. Just trusting now
    (let* ((relevant-mention (second entry))
           (ref (when relevant-mention
                  ;; "We propose that when BRAF is inhibited,
                  ;;  it escapes this auto-inhibited fate ..."
                  (base-description relevant-mention))))
      (when ref
        (tr :defnp-returning ref)
        ref)))
   (t
#| Old-style, rigid individual entry  (cells-defNP)
   With one entry, for the word 'cells' basically. Appearing
   in two places. Head was #<cell-line 5260>
  ((#<cell-line 5260>
   (#<position29 29 "cells"> . #<position30 30 ".">) ;; "these cells"
   (#<position15 15 "ras"> . #<position18 18 ".">))) ;; "Ras mutant cells"
|#
    (when (cdr entry)
      (let* ((second-entry (cadr entry))
             (ref (car second-entry)))
        (tr :defnp-returning ref)
        ref)))))


(defun make-default-descriptive-individual (category-of-head)
  ;; since we've been called by Dereference-DefNP we can presume upon
  ;; the syntactic context and get our working material from the
  ;; environment set up by Referent-from-rule

  (let ((n-bar (edge-referent *right-edge-into-reference*)))

    (if (individual-p n-bar)
      (then
        ;; in all likelyhook this individual is long-term rather
        ;; than per-discourse, in which case we need to build a
        ;; new individual, copying the properties of the original,
        ;; rather than permanently side-effect the one that's
        ;; passed in.  ///not checking -- always doing it.
        (let* ((type (indiv-type n-bar))
               (category-to-use
                ;;;///should look at the model
                (case (cat-symbol (first type))
                  (kind-of-company  category::company)
                  (otherwise (first type))))
               new )

          (setq new (make-unindexed-individual category-to-use))
          (when (rest type)
            (dolist (c (rest type))
              (add-category-to-individual new c)))
          (setf (indiv-binds new) (indiv-binds n-bar))
          (setf (indiv-bound-in new) (indiv-bound-in n-bar))

          ;(add-category-to-individual new
          ;                            category::known-in-discourse)
          new ))

      (else ;; make an individual from the category
            ;; /// ignore the material between the head
            ;; and the determiner
        (case (cat-symbol category-of-head)
          (kind-of-company
           (let ((individual
                  (make-unindexed-individual category::company)))
             (setq individual (bind-dli-variable 'kind category-of-head individual))
             individual ))

          (otherwise
           (let ((individual
                  (make-unindexed-individual category-of-head)))
             ;(add-category-to-individual
             ; individual category::known-in-discourse)
             individual )))))))

