;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

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
  "Used to control whether we look at new cases")


;;;--------
;;; driver
;;;--------

;; (trace-treetops-sweep)

(defun sweep-sentence-treetops (sentence start-pos end-pos)
  "Scan the treetops of the sentence from left to right, 
   notice their form, and stash them into state variables 
   that will be consulted during the island-driven parsing that follows."
  (declare (special *incrementally-resolve-pronouns* *pending-pronoun*
                    *nps-seen*
                    subject-seen? main-verb-seen?)) ;; state varibles in forest-gophers
  (tr :sweep-sentence-treetops start-pos end-pos)
  (clear-sweep-sentence-tt-state-vars)
  (let ((rightmost-pos start-pos)
        (layout (make-sentence-layout sentence))
        (sentence-initial? t)
        (subject-seen? nil)
        (main-verb-seen? nil)
        (count 0) ;; how many treetops have been scanned
        treetop tt  edges  prior-tt  form  pos-after  multiple?  )
    (declare (special sentence-initial? subject-seen? main-verb-seen?))

    ;; Loop over the treetops
    (loop
       (multiple-value-setq (treetop pos-after multiple?)
         (next-treetop/rightward rightmost-pos))
       ;; The treetops of the chart as returns by next-treetop/rightward
       ;; can be either single edges or an edge-vector with multiple (initial)
       ;; edges. If there is no edge at the position ('rightmost-pos') then
       ;; the word is returned as the tt. 

       (unless (pos-assessed? pos-after)
         ;; catches bugs in the termination conditions
         (if (and prior-tt ;; abbreviation swallowed terminal period
                  (edge-spans-position? prior-tt end-pos))
           (return)
           (error "Walked beyond the bounds of the sentence")))
       
       (incf count) ; of treetops
       
       (when (and (word-p treetop)
                  (eq treetop *the-punctuation-period*))
         (tr :terminated-sweep-at pos-after)
         (return))
       
       ;; Periods can get edges over them by accidentally
       ;; being given as a literal in a rule.
       ;; This check also catches all kinds of punctuation
       (when (and (edge-p treetop) (null (edge-form treetop)))
         (cond
           ((eq (edge-category treetop)
                *the-punctuation-period*)  ;; we're done
            (return))
           ((edge-over-punctuation? treetop)) ;; flag it?          
           (t 
            (unless *no-error-on-no-form*
              (push-debug `(,treetop ,pos-after))
              (error "No form value on ~a" tt)))))
       
       (tr :next-tt-swept treetop pos-after)

       (setq edges (etypecase treetop
                     (word (ensure-list treetop))
                     (edge (ensure-list treetop))
                     (edge-vector (all-edges-on treetop))))
       ;; Now examine each of these edges
       (loop for tt in edges
          do (sweep/form-dispatch
               tt prior-tt count layout))

       (when (eq pos-after end-pos)
         (return)) ;; leave the loop

       (when sentence-initial?
         (setq sentence-initial? nil))
       
       (setq rightmost-pos pos-after
             form nil ; reinitialize
             prior-tt treetop)

       ) ; bottom of the loop over treetops

    (when *pending-pronoun*
      (attempt-to-dereference-pronoun *pending-pronoun* layout))

    layout))



(defun sweep/form-dispatch (tt prior-tt count
                            layout &aux form)
  "Encapsulates the actual form-based dispatch. Calls subroutines in
   forest-gophers to set the fields in the layout and help maintain
   state."
  (declare (special word::|of| category::that word::comma
                    sentence-initial? subject-seen? main-verb-seen?
                    waiting-for-non-verb))
  
  (when (edge-p tt) (setq form (edge-form tt)))
  (tr :sweep-dispatching-on tt)
  
  (when waiting-for-non-verb
    (unless (vg-category? tt)
      (tr :non-verb-seen)
      (setq main-verb-seen? t
            waiting-for-non-verb nil)))

  (when (category-p form)
    (case (cat-name form) ;; this is a gross control structure, but it works
      
      ((np proper-name proper-noun n-bar common-noun
           pronoun wh-pronoun reflexive/pronoun possessive/pronoun)
       (unless (word-p tt)
         ;;/// pull back inline when it's all worked out
         (catalog-np-for-sweep tt prior-tt count form layout)))

      (vp
       (push-verb-phrase tt))

      ((verb vg)
       (if main-verb-seen?
         ;;/// need to modify verb builder and set of form categories
         ;; to retain the participlial nature of, e.g. "inhibiting"
         ;; which then would be picked up by a different clause here
         (push-post-mvs-verbs tt)
         (else
           (set-main-verb tt)
           ;; accommodate mulitple main verbs, seen across several calls
           (setq waiting-for-non-verb t))))
      
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
           (push-preposition tt prior-tt))))
      
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
                tt form))))) ;; end of form dispatch case

  (when (known-subcategorization? tt)
    (push-subcat tt)))


;;--- NP handler

(defvar nps-seen nil
  "Initialized in clear-s  weep-sentence-tt-state-vars, contains the edge
   for each np (each type of form listed in the sweep leading to
   the catalog NP call, particularly pronouns) along with the set of
   properties we can deduce about them.")

(defun catalog-np-for-sweep (tt prior-tt count form layout)
  "Broken out as a subroutine just to make it easier to write alternatives"
  ;; maintain a stack of sentential nps..
  (declare (special *try-incrementally-resolve-pronouns*
                    main-verb-seen?))
  (let ((pending-np tt)
        (properties nil) ; to add to
        (referent (edge-referent tt)))

    (when (np-over-that? tt)
      (push :that properties)
      (push-that tt))

    (when (null prior-tt)
      ;; first constituent in the sentence
      (push :subject properties)
      (set-subject tt))

    (when main-verb-seen?
      (push :post-verb properties)
      (push-loose-np tt))
    
    (when (and (edge-p prior-tt)
               (not main-verb-seen?)
               (or (eq (edge-category prior-tt) word::comma)
                   (and (category-p (edge-category prior-tt))
                        (memq (edge-cat-name prior-tt) '(pp adverb)))))
      (push :subject properties)
      (break "subject =? ~a" tt)
      (set-subject tt))
    
    (when (pronoun-category? form)
      (tr :noticed-pronoun tt)
      (push :pronoun properties)
      (when (or (not  (current-script :biology))
                (not (ignore-this-type-of-pronoun (edge-category tt))))
        ;; We've got several options. If we're going to wait until the
        ;; whole sentence is done and condition-anaphor-edge runs to
        ;; record whatevern information the grammar can give us for v/r,
        ;; the we just push the pronoun.
        ;;   If we going to do it now, then we can either wait until
        ;; all of the features of this sentence have been determined,
        ;; in which case we 'enqueue' the pronoun and a trap will find it.
        ;; That might provide a better picture of the sentence layout.
        ;; Alternatively we see if we can do it right now.
        (if *try-incrementally-resolve-pronouns*
          (then
            (attempt-to-dereference-pronoun tt layout)
            #+ignore(enqueue-pronoun tt))
          (push-pronoun tt))))

    (when (individual-p referent)
      (when (plural? referent)
        (push :plural properties)))

    ;; package this up
    (let ((package (list pending-np
                         count
                         properties)))
      (push package nps-seen))))
