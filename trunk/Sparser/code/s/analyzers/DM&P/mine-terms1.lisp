;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "mine terms"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  1.2 January 1995

;; split out from [analyzers;DM&P:mine] 8/3/94 v2.3.  Being tweeked
;; continually ... 
;; 1.0 (8/4) changed category policy for terms
;; 1.1 (11/21) stopped recording head and classifier data on the segment now that
;;      they're being phased out.
;;     (11/26) made Mine-verb use a real verb-building routine
;; 1.2 (12/1) Tweeked Mine-unmarked-term to pass through the form data, and
;;      added Mine-adverb
;;     (1/3/95) added Mine-unmarked-term-under-edge as better sugar for that case

(in-package :sparser)


#|  These routines process single words (or polywords).  If the word
 hasn't been seen before they have a term created for it with as
 much specificity as the segment-context permits, and they have
 an edge introduced to span the word so that the term is entered
 into the discourse history.  The term is returned to the caller.

    If the word has already been seen, then there will already be
 an edge spanning it -- the edge produced by the rule that was
 created when its term way -- and we just return the edge's referent.
|#


;;;--------------------------------
;;; cases for single unknown words
;;;--------------------------------

(defun mine-unmarked-term (word pos-before pos-after)
  ;; there is no prefix or other internal data to allow the form category
  ;; or syntactic function of this word to be deduced, so we put the
  ;; weakest possible label on it given the word's morphology.
  (let ((stem (word-stem word)))
    (if stem
      (tr :mining-unmarked-term/stem word stem)
      (tr :mining-unmarked-term word))

    (let ((term
           (if (word-morphology word)
             (ecase (word-morphology word)
               (:ends-in-s
                ;; not enough information to decide between plural and
                ;; 3d person singular present tense
                (define-individual-for-term/span
                  word pos-before pos-after :stem stem))
               (:ends-in-ed
                (define-individual-for-term/span
                  word pos-before pos-after :stem stem
                  :form (category-named 'verb+ed)))
               (:ends-in-ing
                (define-individual-for-term/span
                  word pos-before pos-after :stem stem
                  :form (category-named 'verb+ing)))
               (:ends-in-ly
                (define-individual-for-term/span
                  word pos-before pos-after :stem stem
                  :form (category-named 'adverb))))
             (define-individual-for-term/span
               word pos-before pos-after :stem stem))))
      (tr :new-unmarked-term term word)
      term )))

#|
    (when (word-morphology word)
      (ecase (word-morphology word)
        ;; Only plural would make sense if this is a noun.
        ;; On the assumption that we're catching the verbs, we'll
        ;; make this convergence between the two forms of the word
        (:ends-in-s
         (setq stem (word-stem word)))
         #|(unless stem
           (break "Expected a content word ending in 's' to have ~
                   a stem form:~%  ~A" word))|#
        (:ends-in-ed     ;; /// why not take this and 'ing' as verbs ??
         (setq stem (word-stem word)))
        (:ends-in-ing
         (setq stem (word-stem word)))
        (:ends-in-ly
         (setq stem (word-stem word)))))

    (if stem
      (tr :mining-unmarked-term/stem word stem)
      (tr :mining-unmarked-term word))

    (let ((term (define-individual-for-term/span
                  word pos-before pos-after
                  :form nil
                  :stem stem)))
      (tr :new-unmarked-term term word)
      term ))) |#



(defun mine-unmarked-term/edge (word pos-before pos-after)
  (if (ev-top-node (pos-starts-here pos-before))
    (let ((edges (only-nontrivial-edges 
                  (all-preterminals-at pos-before))))
      (if edges
        (if (cdr edges)
          (break "more than one edge was nontrivial:~
                  ~%~A" edges)
          (let* ((edge (first edges))
                 (term (edge-referent edge)))
            (tr :unmarked-term-from-edge term edge)
            term ))
        (mine-unmarked-term word pos-before pos-after)))
    (mine-unmarked-term word pos-before pos-after)))


(defun mine-unmarked-term-under-edge (edge)
  (mine-unmarked-term/edge (edge-left-daughter edge)
                           (pos-edge-starts-at edge)
                           (pos-edge-ends-at edge)))



(defun mine-unmarked-term/pw (pw-edge)
  ;; just like an unmarked word, except that we have the edge over
  ;; a polyword here rather than a word.
  (unless (edge-p pw-edge)
    (break "Threading bug: expected 'pw' argument to be an edge"))
  (unless (polyword-p (edge-category pw-edge))
    (break "Threading bug: expected the label on the 'pw' argument ~
            to be a polyword."))
  (multiple-value-bind (term edge)
                       (define-individual-for-term/span
                         (edge-category pw-edge)
                         (pos-edge-starts-at pw-edge)
                         (pos-edge-ends-at pw-edge))
    (tr :unmarked-pw term pw-edge)
    (values term edge)))
  


(defun mine-adverb (word pos-before pos-after)
  (define-individual-for-term/span
    word pos-before pos-after 
    :stem (word-stem word)
    :form (category-named 'adverb)))



(defun mine-as-a-verb (word pos-before pos-after)
  ;; the one word between these positions has been identified as
  ;; a verb
  (tr :mining-verb word)
  (let* ((stem (stem-form-of-verb word))
         (verb (define-individual-for-term/verb/span
                 word stem pos-before pos-after)))
    (tr :mined-verb verb word)
    verb ))

(defun mine-verb/edge (word pos-before pos-after segment)
  (if (ev-top-node (pos-starts-here pos-before))
    (let ((edges (only-nontrivial-edges 
                  (all-preterminals-at pos-before))))
      (if edges
        (if (cdr edges)
          (break "more than one edge was nontrivial:~
                  ~%~A" edges)
          (let ((edge (car edges)))
            (note-instance edge 'head segment)
            (adjust-rule-to-verb edge)
            (let ((term (edge-referent edge)))
              (tr :verb-term-from-edge term edge)
              term )))
        (mine-as-a-verb word pos-before pos-after)))
    (mine-as-a-verb word pos-before pos-after)))


(defun mine-as-adverb (word pos-before pos-after segment)
  (declare (ignore segment))
  (let ((term (define-individual-for-term/span
                word pos-before pos-after
                :form category::adverb)))
    term))




(defun mine-head (pos-before pos-after segment)
  ;; add the word to the model and make a rule and edge for it,
  ;; mark the edge as the head of an np,
  ;; associate the new individual with this segment
  (declare (ignore segment))
  (let ((word (pos-terminal pos-before))
        stem )

    (when (word-morphology word)
      (ecase (word-morphology word)
        ;; only plural would make sense -- as the morphology
        ;; is extended this will have to be too
        (:ends-in-s
         (setq stem (word-stem word)))
         #|(unless stem
           (break "Expected a content word ending in 's' to have ~
                   a stem form:~%  ~A" word))|#
        (:ends-in-ly
         (setq stem (word-stem word)))
        (:ends-in-ing
         (setq stem (word-stem word)))
        (:ends-in-ed
         (setq stem (word-stem word)))
        ))

    (tr :mining-head word)
    (let ((head
           (define-individual-for-term/span
             word
             pos-before pos-after
             :form category::noun
             :stem stem )))

      (tr :mined-head-term head word)
      head )))


(defun mine-head/edge? (pos-before pos-after segment)
  ;; if there's an edge over this word, use it assuming it
  ;; isn't trivial.  It there are several words between
  ;; the positions then we were passed a treetop, and we
  ;; accept the edge without checking
  (if (adjacent-positions pos-before pos-after) ;; one word
    (then
      (if (ev-top-node (pos-starts-here pos-before))
        (let ((edges (only-nontrivial-edges 
                      (all-preterminals-at pos-before))))
          (if edges
            (if (cdr edges)
              (break "more than one edge was nontrivial:~
                      ~%~A" edges)
              (note-instance (car edges) 'head segment))
            (mine-head pos-before pos-after segment)))
        (mine-head pos-before pos-after segment)))
    (else
      ;; several words
      (let ((edge (ev-top-node (pos-starts-here pos-before))))
        (unless (edge-p edge)
          (break "Threading bug: expected there to be a edge ~
                  between p~A and p~A" (pos-token-index pos-before)
                 (pos-token-index pos-after)))
        (note-instance edge 'head segment)))))
        




(defun mine-classifier (pos-after head segment)
  (declare (ignore segment head))
  (let* ((pos-before (chart-position-before pos-after))
         (word (pos-terminal pos-before)))
    (tr :mining-classifier word)
    (let ((classifier
           (define-individual-for-term/span
             word pos-before pos-after)))
      (tr :mined-classifier-term classifier word)
      classifier )))


(defun mine-classifier/edge (pos-before pos-after
                             head segment)
  (if (adjacent-positions pos-before pos-after) ;; one word
    (then
      (if (ev-top-node (pos-starts-here pos-before))
        (let ((edges
               (only-nontrivial-edges 
                (all-preterminals-at pos-before))))
          (if edges
            (then
              (when (cdr edges)
                (break "more than one edge was nontrivial:~
                        ~%~A" edges))
              (let ((referent (edge-referent (car edges))))
                (etypecase referent
                  (individual
                   (note-instance (car edges) 'classifier segment))
                  ((or referential-category category mixin-category)
                   (find-term-for-category (car edges))))))
              
            (mine-classifier pos-after head segment)))
        (mine-classifier pos-after head segment)))
    (else
      (let ((edge (ev-top-node (pos-starts-here pos-before))))
        (unless (edge-p edge)
          (break "Threading bug: expected there to be a edge ~
                  between p~A and p~A" (pos-token-index pos-before)
                 (pos-token-index pos-after)))
        (when (polyword-p (edge-category edge))
          ;; hasn't yet been seen as a term
          (multiple-value-bind (term new-edge)
                               (mine-unmarked-term/pw edge)
            (declare (ignore term))
            (setq edge new-edge)))

        (bind-variable 'classifies head (edge-referent edge))
        (note-instance edge 'classifier segment)))))


(defun find-term-for-category (edge)
  ;; inspired by the ordinal in [Disk First Aid] and conceivable
  ;; alternative to prefix treatment in [A third message]
  (unless (= 1 (number-of-terminals-between
                (pos-edge-starts-at edge)
                (pos-edge-ends-at edge)))
    (break "New case: Edge refers to a category rather than~
            ~%an individual but it is more than one word long.~
            ~%  ~A" edge))
  (let ((word (edge-left-daughter edge)))  ;; e.g. "first"
    (or (find-individual 'term :word word)
        ;(define-individual 'term :word word) ;; no rule
        (define-individual-for-term word)  ;; a rule
        )))
      




;;;--------------------------------
;;; later instances of known words
;;;--------------------------------

(defun note-instance (edge name-of-variable segment)
  ;; this should be an instance of a content term, not one
  ;; of the close-class (pre-defined) terms
  (declare (ignore segment))
  (let ((unit (edge-referent edge)))
    (tr :noting-instance unit name-of-variable)
    (tr :noticed-term unit edge name-of-variable)
    unit))

