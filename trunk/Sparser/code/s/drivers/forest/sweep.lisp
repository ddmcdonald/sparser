;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/30/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol
;; RJB 12/14/2014 simple (hack) fix to allow pronouns in simple subject verb construction moified categories in sweep-sentence-treetops

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun sweep-sentence-treetops (sentence start-pos end-pos)
  "Scan the treetops left to right"
  (declare (special tt prior-tt form))
  (tr :sweep-sentence-treetops start-pos end-pos)
  (push-debug `(,sentence ,start-pos ,end-pos))
  (clear-sweep-sentence-tt-state-vars)
  (let ((rightmost-pos start-pos)
        (layout (make-sentence-layout sentence))
        (sentence-initial? t)
        form  pos-after  multiple?  )

    (loop
      (multiple-value-setq (tt pos-after multiple?)
        (next-treetop/rightward rightmost-pos))

      (unless (pos-assessed? pos-after)
        ;; catches bugs in the termination conditions
        (error "Walked beyond the bounds of the sentence"))

      (when (and (word-p tt)
                 (eq tt *the-punctuation-period*))
        (tr :terminated-sweep-at pos-after)
        (return))
      (tr :next-tt-swept tt pos-after)

      (when multiple?
        (setq tt (elt (ev-edge-vector tt)
                      (1- (ev-number-of-edges tt)))))
      (when (edge-p tt)
        (setq form (edge-form tt)))

      ;; Periods can get edges over them by accidentally
      ;; being given as a literal in a rule.
      ;;/// ought to figure out a way to trap that.
      ;; This check also catches all kinds of punctuation
      (unless form
        (cond
         ((eq (edge-category tt) 
              *the-punctuation-period*)  ;; we're done
          (return))
         ((edge-over-punctuation? tt)) ;; flag it?          
         (t (push-debug `(,tt ,pos-after))
            (error "No form value on ~a" tt))))

      (when form
        (case (cat-symbol form)
          ;; this is a gross control structure, but it lets
          ;; us play while sorting out what will be better
          ((category::np
            category::proper-name
            category::n-bar
            category::common-noun
            category::pronoun    ;;//// keep track of these for
            category::WH-PRONOUN ;; a dereferencing pass.
            category::reflexive/pronoun
            ) ;; ///not elevated
           (cond ((np-over-that? tt)
                  (push-that tt))
                 ((null prior-tt)
                  (set-subject tt))
                 (main-verb-seen?
                  (push-loose-np tt))
                 (t (push-loose-np tt))))

          (category::vg
           (if main-verb-seen?
             ;;/// need to modify verb builder and set of form categories
             ;; to retain the participlial nature of, e.g. "inhibiting"
             (push-post-mvs-verbs tt)
             (set-main-verb tt))) ;;/// won't work for preposed participles

          (category::vp
           (push-verb-phrase tt))

          (category::adjective
           (push-loose-adjective tt))

          (category::s
           (push-loose-clauses tt))

          (category::subj+verb
           (push-loose-subj+verb tt))

          (category::adverb
           (if sentence-initial?
             (setf (starts-with-adverb (layout)) tt)
             (push-loose-adverb tt)))

          ((category::preposition
            category::spatial-preposition) ;; under
           (when sentence-initial?
             (setf (starts-with-prep (layout)) tt))
           (let ((prep (edge-left-daughter tt)))
             (if (eq prep word::|of|)
               (push-of tt)
               (push-preposition tt))))

          (category::pp
           (push-prepositional-phrase tt))

          ((category::conjunction
            category::subordinate-conjunction)
           (push-conjunction tt))

          (category::parentheses
           (push-parentheses tt))

          (category::quantifier
           ;; drop it on the floor for now: "each of"
           )

          (otherwise
           (push-debug `(,tt ,form))
           (break "New case in sweep.~
                ~% tt = ~a~
                ~% form = ~a"
                  tt form))))

      (when (known-subcategorization? tt)
        (push-subcat tt))

      (when (eq pos-after end-pos)
        (return)) ;; leave the loop

      (when sentence-initial?
        (setq sentence-initial? nil))
      (setq rightmost-pos pos-after)
      (setq prior-tt tt))

    layout))


