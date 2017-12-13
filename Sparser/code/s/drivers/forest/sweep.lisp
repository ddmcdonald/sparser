;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  December 2017

;; Initiated 8/30/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol
;; RJB 12/14/2014 simple (hack) fix to allow pronouns in simple subject verb construction moified categories in sweep-sentence-treetops
;; add parameter *no-error-on-no-form*, set to nil when you want to see which edges have no forms during sweep,
;; This is a work-around for the problems with defining MEK and MAPK...
;; 1/30/15 Cleaning up, added another flag to control whether we bother
;; to break on new cases. 
;; 3/21/20015 in sweep-sentence-treetops :SBCL errored on case where edge has a word as its category
;; (P "As RAS is upstream of..." edge over "As"
;; 5/26/15 fixes subtle bug of form not being set to nil when the
;; treetop is a word. 


(in-package :sparser)

;;;-------
;;; flags
;;;-------

(defparameter *show-thatcomps* nil
  "Don't print thatcomp messages")

(defparameter *no-error-on-no-form* t
  "Set to nil when you want to see which edges have no forms")

(defparameter *break-on-new-tt-sweep-cases* nil
  "Used controls whether we look at new cases")


;;;--------
;;; driver
;;;--------

;; (trace-treetops-sweep)

(defun sweep-sentence-treetops (sentence start-pos end-pos)
  "Scan the treetops left to right"
  (declare (special category::that word::comma word::|of|))
  (tr :sweep-sentence-treetops start-pos end-pos)
  (push-debug `(,sentence ,start-pos ,end-pos))
  (clear-sweep-sentence-tt-state-vars)
  (let ((rightmost-pos start-pos)
        (layout (make-sentence-layout sentence))
        (sentence-initial? t)
        (count 0) ;; how many treetops have been scanned
        tt  prior-tt  form  pos-after  multiple?  )

    (loop
      (multiple-value-setq (tt pos-after multiple?)
        (next-treetop/rightward rightmost-pos))
      (incf count)

      (unless (pos-assessed? pos-after)
        ;; catches bugs in the termination conditions
        (error "Walked beyond the bounds of the sentence"))

      (when (and (word-p tt)
                 (eq tt *the-punctuation-period*))
        (tr :terminated-sweep-at pos-after)
        (return))
      (tr :next-tt-swept tt pos-after)

      (when multiple?
        ;; Presume that we want the topmost edge. 
        ;; This ignores real ambiguities
        (when (eq 0 (ev-number-of-edges tt))
          (break "0 edges in sweep-sentence-treetops"))
        (setq tt (elt (ev-edge-vector tt)
                      (1- (ev-number-of-edges tt)))))

      (when (edge-p tt)
        (setq form (edge-form tt))
        
        ;; Periods can get edges over them by accidentally
        ;; being given as a literal in a rule.
        ;;/// ought to figure out a way to trap that.
        ;; This check also catches all kinds of punctuation
        (unless form
          (cond
           ((eq (edge-category tt) ;; SBCL caught error
                *the-punctuation-period*)  ;; we're done
            (return))
           ((edge-over-punctuation? tt)) ;; flag it?          
           (t 
            (unless *no-error-on-no-form*
              (push-debug `(,tt ,pos-after))
              (error "No form value on ~a" tt)))))
        
        (when (category-p form)
          (case (cat-name form)
            ;; this is a gross control structure, but it works
            
            ((np proper-name proper-noun n-bar common-noun
              pronoun wh-pronoun reflexive/pronoun possessive/pronoun)
             (cond ((np-over-that? tt)
                    (push-that tt))
                   ((null prior-tt)
                    (set-subject tt))
                   ((and (edge-p prior-tt)
                         (not main-verb-seen?)
                         (or (eq (edge-category prior-tt) word::comma)
                             (and (category-p (edge-category prior-tt))
                                  (memq (cat-symbol (edge-category prior-tt))
                                        '(category::pp category::adverb)))))
                    (set-subject tt))
                   (main-verb-seen?
                    (push-loose-np tt))
                   (t (push-loose-np tt)))
             (when (and (pronoun-category? form)
                        ;; don't deal with personal pronouns (in biology)
                        (or (not  (current-script :biology))
                            (not (ignore-this-type-of-pronoun (edge-category tt)))))
               (tr :noticed-pronoun tt)
               (push-pronoun tt)))
            
            (vg
             (if main-verb-seen?
                 ;;/// need to modify verb builder and set of form categories
                 ;; to retain the participlial nature of, e.g. "inhibiting"
                 (push-post-mvs-verbs tt)
                 (set-main-verb tt))) ;;/// won't work for preposed participles
            
            (vp
             (push-verb-phrase tt))
            
            (adjective
             (push-loose-adjective tt))
            
            (s
             (push-loose-clauses tt))
            
            (subj+verb
             (push-loose-subj+verb tt))
            
            (adverb
             (if sentence-initial?
                 (setf (starts-with-adverb (layout)) tt)
                 (push-loose-adverb tt)))
            
            ((preposition spatial-preposition spatio-temporal-preposition) ;; under
             (when sentence-initial?
               (setf (starts-with-prep (layout)) tt))
             (let ((prep (edge-left-daughter tt)))
               (if (eq prep word::|of|)
                   (push-of tt)
                   (push-preposition tt))))
            
            (pp
             (push-prepositional-phrase tt))
            
            (conjunction
             (push-conjunction tt))
            
            (subordinate-conjunction
             (push-subordinate-conjunction tt))
            
            ((parentheses square-brackets)
             (push-parentheses tt))
            
            (quantifier
             ;; drop it on the floor for now: "each of"
             )
            (det
             (if (eq (edge-category tt) category::that)
                 (then
                   (when *show-thatcomps* 
                     (print "IGNORING LIKELY THATCOMP IN SWEEP")))
                 (else
                   (when *break-on-new-tt-sweep-cases*
                     (push-debug `(,tt ,form))
                     (break "deal with determiner that's not 'that'.~
                     ~% tt = ~a~
                     ~% form = ~a"
                            tt form)))))
            
            (otherwise
             (when *break-on-new-tt-sweep-cases*
               (push-debug `(,tt ,form))
               (break "New case in sweep.~
                     ~% tt = ~a~
                     ~% form = ~a"
                      tt form))))))

      (when (known-subcategorization? tt)
        (push-subcat tt))

      (when (eq pos-after end-pos)
        (return)) ;; leave the loop

      (when sentence-initial?
        (setq sentence-initial? nil))
      (setq rightmost-pos pos-after)
      (setq prior-tt tt))

    layout))

