;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "mine"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  July 1994

;; split out from [analyzers;DM&P:scan] 7/2194 v2.3

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun mine-treetops (starts-at ends-at segment
                      &optional prefix-category )
  (if prefix-category
    (ecase (cat-symbol prefix-category)
      (category::np
       (mine-treetops-as-head/classifiers starts-at ends-at segment))

      (category::verb
       (mine-treetops-as-VG-head starts-at ends-at segment))
      (category::modal
       (mine-treetops-as-VG-head starts-at ends-at segment))

      (category::adjp
       (mine-treetops-as-head/classifiers starts-at ends-at segment))

      ;; /// these might want special treatment since we know more about
      ;; their situation
      (category::possessive
       (mine-treetops-as-head/classifiers starts-at ends-at segment))
      (category::np-head  ;; e.g. an unkt we've already scanned: "sound input"
       (mine-treetops-as-head/classifiers starts-at ends-at segment)))

    (mine-treetops/indeterminate-relationship
     starts-at ends-at segment)))



(defun mine-treetops-as-VG-head (starts-at ends-at segment)
  (let* ((length (number-of-terminals-between starts-at ends-at)))
    (if (> length 1)
      (mine-after-prefix-of-multi-term-vg starts-at ends-at segment)

      (let* ((verb (pos-terminal starts-at))
             (verb-term (mine-verb/edge verb starts-at ends-at segment)))
        (list verb-term)))))


(defun mine-after-prefix-of-multi-term-vg (starts-at ends-at segment)
  ;; This should see it as indetermant relationship between
  ;; them. ////////something like a check for adverbs and then
  ;; a treatment of verb-modifiers by analogy to classifiers is needed
  (let* ((length (number-of-terminals-between starts-at ends-at))
         (p-minus1 (chart-position-before ends-at))
         (p-minus2 (when (>= length 2)
                     (chart-position-before p-minus1)))
         (p-minus3 (when (>= length 3)
                     (chart-position-before p-minus2)))
         (p-minus4 (when (>= length 4)
                     (chart-position-before p-minus3)))
         (p-minus5 (when (>= length 5)
                     (chart-position-before p-minus4)))
         (p-minus6 (when (>= length 6)
                     (chart-position-before p-minus5))))

    (when (> length 6)
      (break "add another case here"))

    (let ((term-minus6
           (when p-minus6
             (mine-unmarked-term/edge (pos-terminal p-minus6)
                                      p-minus6 p-minus5 )))
          (term-minus5
           (when p-minus5
             (mine-unmarked-term/edge (pos-terminal p-minus5)
                                      p-minus5 p-minus4 )))
          (term-minus4
           (when p-minus4
             (mine-unmarked-term/edge (pos-terminal p-minus4)
                                      p-minus4 p-minus3 )))

          (term-minus3
           (when p-minus3
             (mine-unmarked-term/edge (pos-terminal p-minus3)
                                      p-minus3 p-minus2 )))

          (term-minus2
           (when p-minus2
             (mine-unmarked-term/edge (pos-terminal p-minus2)
                                      p-minus2 p-minus1 )))

          (verb-term
           (mine-verb/edge (pos-terminal p-minus1)
                           (chart-position-before ends-at)
                           ends-at segment)))

      (cond ((and term-minus2 term-minus3 term-minus4 term-minus5 term-minus6)
             (list term-minus6 term-minus5 term-minus4 term-minus3 term-minus2 verb-term))
            ((and term-minus2 term-minus3 term-minus4 term-minus5)
             (list term-minus5 term-minus4 term-minus3 term-minus2 verb-term))
            ((and term-minus2 term-minus3 term-minus4)
             (list term-minus4 term-minus3 term-minus2 verb-term))
            ((and term-minus2 term-minus3)
             (list term-minus3 term-minus2 verb-term))
            (term-minus2
             (list term-minus2 verb-term))
            (t (list verb-term))))))
    
  



(defun mine-treetops-as-head/classifiers (starts-at ends-at segment)
  ;; generic subroutine that could be given a suffix or a whole
  ;; segment, and which could have no edges or a bunch of them
  ;; but would not have one edge over the entire region.
  ;;   Returns the treetop items (denotations) it finds.
  ;;   Assumes a classifier/head analysis makes sense.

  (let* ((length (number-of-terminals-between starts-at ends-at)))
          ;; has to be a least one word

    (cond ((= length 1)
           (let* ((pos-before-head (chart-position-before ends-at))
                  (head (mine-head/edge? pos-before-head ends-at segment)))
             (list head)))

          ((= length 2)
           ;; the second word is taken as a classifier ////unless there's
           ;; an edge over both
           (let* ((pos-before-head (chart-position-before ends-at))
                  (head (mine-head/edge? pos-before-head ends-at segment))
                  (classifier (mine-classifier/edge
                               (chart-position-before pos-before-head)
                               pos-before-head
                               head segment)))
             (consider-reifying/classifier+np-head
              classifier head segment)
             (list classifier head)))

          ((> length 2)
           (format t "  Long segment: ~A words" length)
           (hack-long-segment/mining starts-at ends-at)))))




(defun hack-long-segment/mining (starts-at ends-at)
  ;; //// stub -- a means of getting through things rather than taking
  ;; the time right now to work out what the n-n relations are and
  ;; setting up the right relationships between the words and to
  ;; the segment.  We just collect up the items according to the
  ;; treetops we find in this stretch, and make simple definitions
  ;; for any new words we find.
  (let ((next-pos starts-at)
        tt  items )
    (loop
      (when (eq next-pos ends-at)
        (return (nreverse items)))
      (setq tt (right-treetop-at/edge next-pos))
      ;(format t "~&tt = ~A~%" tt)
      (etypecase tt
        (edge (push (edge-referent tt) items))
        (word (push (mine-unmarked-term
                     tt next-pos (chart-position-after next-pos))
                    items)))
      (setq next-pos (etypecase tt
                       (word (chart-position-after next-pos))
                       (edge (pos-edge-ends-at tt)))))))



(defun mine-treetops/indeterminate-relationship (starts-at ends-at segment)
  ;; some/all of the treetops in this segment are unknown-term edges,
  ;; and we do not have enough information to make an informed judgement
  ;; about the relationships between them other than precedes/follows.
  (let* ((length (number-of-treetops-between starts-at ends-at)))
    (case length
      (1 (break "called with just one word/term instead of several"))
      (2 (mine-treetops/indeterminate-relationship/2 starts-at ends-at segment))
      (otherwise
       (format t "  Long segment: ~A words" length)
       (hack-long-segment/mining starts-at ends-at)))))


(defun mine-treetops/indeterminate-relationship/2 (starts-at ends-at segment)
  ;; analogous to Scan-two-word-segment/unknown except that we're
  ;; usually dealing with edges and consequently with known terms.
  (let* ((tt1 (right-treetop-at starts-at))
         (pw1 (when (polyword-p (edge-category tt1)) tt1))
         midpoint )
    (when (eq tt1 :multiple-initial-edges)
      (break "Data error: A treetop shouldn't be :multiple-initial,~
              but the one over \"~A\" is" (pos-terminal starts-at)))

    (setq midpoint (if (word-p tt1)
                     (chart-position-after starts-at)
                     (pos-edge-ends-at tt1)))

    (let* ((tt2 (right-treetop-at midpoint))
           (pw2 (when (polyword-p (edge-category tt2)) tt2)))
          
      (when (eq tt2 :multiple-initial-edges)
        (break "Data error: A treetop shouldn't be :multiple-initial,~
                but the one over \"~A\" is" (pos-terminal midpoint)))

      (cond ((and pw1 pw2)
             (let ((term1 (mine-unmarked-term/pw pw1))
                   (term2 (mine-unmarked-term/pw pw2)))
               (mine-treetops/new-terms/2 term1 term2 segment)))

            ((and pw1 (edge-p tt2))
             (let ((term1 (mine-unmarked-term/pw pw1)))
               (mine-treetops/one-new-&-one-established term1 tt2 segment)))

            (pw1
             (let ((term1 (mine-unmarked-term/pw pw1)))
               (mine-treetops/new-terms/2 term1 tt2 segment)))

            ((and (edge-p tt1) pw2)
             (let ((term2 (mine-unmarked-term/pw pw2)))
               (mine-treetops/one-established-&-one-new tt1 term2 segment)))

            (pw2
             (let ((term2 (mine-unmarked-term/pw pw2)))
               (mine-treetops/new-terms/2 tt1 term2 segment)))

            ((and (edge-p tt1) (edge-p tt2))
             (mine-treetops/established-terms/2 tt1 tt2 segment))

            ((edge-p tt1)
             (setq tt2 (mine-unmarked-term tt2 starts-at midpoint))
             (mine-treetops/one-established-&-one-new tt1 tt2 segment))

            ((edge-p tt2)
             (setq tt1 (mine-unmarked-term tt1 midpoint ends-at))
             (mine-treetops/one-new-&-one-established tt1 tt2 segment))

            (t (break "two word segment where neither has been seen ~
                       before: should have gone somewhere else~% \"~A\""
                      (string-of-words-between starts-at ends-at)))))))


(defun mine-treetops/new-terms/2 (term1 term2 segment)
  ;; neither term has been seen before, so this is identical to
  ;; Scan-two-unknown-term-segment except that the operations on this
  ;; thread are modularized differently. We do the relationships between
  ;; the elements here, but then just return the terms and leave the
  ;; categorization of the segment and its spanning to the caller

  (bind-variable 'contains term1 segment)
  (bind-variable 'contains term2 segment)
  (bind-variable 'adjacent/precedes term2 term1)
  (bind-variable 'adjacent/follows term1 term2)
  
  (consider-reifying/adjacent-terms term1 term2 segment)
  (list term1 term2))



(defun mine-treetops/established-terms/2 (tt1 tt2 segment)
  ;; both terms have been seen before, so while we don't have any
  ;; explicit internal evidence about how they relate, maybe there
  ;; things that we already know about them that will let us
  ;; conclude something
  (let* ((left-term (edge-referent tt1))
         (right-term (edge-referent tt2))
         (terms (list left-term right-term)))

    (bind-variable 'contains left-term segment)
    (bind-variable 'contains right-term segment)
    (bind-variable 'adjacent/precedes right-term left-term)
    (bind-variable 'adjacent/follows left-term right-term)

    (consider-reifying/adjacent-terms left-term right-term segment)

    terms ))



(defun mine-treetops/one-established-&-one-new (edge1 term2 segment)
  ;; ///should be more clever since there's probably some inference
  ;; we can make online here
  (let ((term1 (edge-referent edge1)))
    (bind-variable 'contains term1 segment)
    (bind-variable 'contains term2 segment)
    (bind-variable 'adjacent/precedes term2 term1)
    (bind-variable 'adjacent/follows term1 term2)

    (consider-reifying/adjacent-terms term1 term2 segment)
    (list term1 term2)))



(defun mine-treetops/one-new-&-one-established (term1 edge2 segment)
  ;; ///should be more clever since there's probably some inference
  ;; we can make online here
  (let ((term2 (edge-referent edge2)))
    (bind-variable 'contains term1 segment)
    (bind-variable 'contains term2 segment)
    (bind-variable 'adjacent/precedes term2 term1)
    (bind-variable 'adjacent/follows term1 term2)

    ;; since the first item is new there's a decent chance it might
    ;; really be a modifier since the first hit on this case was
    ;; "additional sounds" -- so hold off on assuming they should
    ;; merge
    (list term1 term2)))



;;;--------------------------------
;;; cases for single unknown words
;;;--------------------------------

(defun mine-unmarked-term (word pos-before pos-after)
  ;; there is no prefix or other internal data to allow the form category
  ;; or syntactic function of this word to be deduced, so we put the
  ;; weakest possible label on it.  Since the relationship of this word
  ;; to the segment it is part is also vague we leave it to the caller.
  (let ((unkt
         (define-individual-for-unknown-term/span
           word pos-before pos-after
           :category category::unknown-term)))
    unkt ))

(defun mine-unmarked-term/edge (word pos-before pos-after)
  (if (ev-top-node (pos-starts-here pos-before))
    (let ((edges (only-nontrivial-edges 
                  (all-preterminals-at pos-before))))
      (if edges
        (if (cdr edges)
          (break "more than one edge was nontrivial:~
                  ~%~A" edges)
          (edge-referent (first edges)))
        (mine-unmarked-term word pos-before pos-after)))
    (mine-unmarked-term word pos-before pos-after)))


(defun mine-unmarked-term/pw (pw-edge)
  ;; just like an unmarked word, except that we have the edge over
  ;; a polyword here rather than a word.
  (unless (edge-p pw-edge)
    (break "Threading bug: expected 'pw' argument to be an edge"))
  (unless (polyword-p (edge-category pw-edge))
    (break "Threading bug: expected the label on the 'pw' argument ~
            to be a polyword."))
  (let ((unkt
         (define-individual-for-unknown-term/span
           (edge-category pw-edge)
           (pos-edge-starts-at pw-edge) (pos-edge-ends-at pw-edge)
           :category category::unknown-term)))
    unkt ))
  


(defun mine-as-a-verb (word pos-before pos-after segment)
  ;; the one word between these positions has been identified as
  ;; a verb
  (tr :mining-verb word)
  (let ((verb (define-individual-for-unknown-term/span
                word pos-before pos-after
                :category  category::verb
                :form category::verb)))
    (bind-variable 'head verb segment)
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
            (edge-referent edge)))
        (mine-as-a-verb word pos-before pos-after segment)))
    (mine-as-a-verb word pos-before pos-after segment)))


(defun mine-head (pos-before pos-after segment)
  ;; add the word to the model and make a rule and edge for it,
  ;; mark the edge as the head of an np,
  ;; associate the new individual with this segment
  (let ((word (pos-terminal pos-before)))
    (tr :mining-head word)
    (let ((head
           (define-individual-for-unknown-term/span
             word pos-before pos-after
             :form category::np-head )))
      (bind-variable 'head head segment)
      head )))


(defun mine-head/edge? (pos-before pos-after segment)
  ;; if there's an edge over this word, use it assuming it
  ;; isn't trivial. 
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



(defun mine-classifier (pos-after head segment)
  (let* ((pos-before (chart-position-before pos-after))
         (word (pos-terminal pos-before)))
    (tr :mining-classifier word)
    (let ((classifier
           (define-individual-for-unknown-term/span
             word pos-before pos-after)))
      (bind-variable 'classifier classifier segment)
      (bind-variable 'classifies head classifier)
      classifier )))


(defun mine-classifier/edge (pos-before pos-after
                             head segment)
  (if (ev-top-node (pos-starts-here pos-before))
    (let ((edges
           (only-nontrivial-edges 
            (all-preterminals-at pos-before))))
      (if edges
        (then
          (when (cdr edges)
            (break "more than one edge was nontrivial:~
                    ~%~A" edges))
          (note-instance (car edges) 'classifier segment))
        (mine-classifier pos-after head segment)))
    (mine-classifier pos-after head segment)))




(defun mine-pre-classifier (segment word pos-before pos-after)
  (break "vet this")
  (multiple-value-bind (pre-classifier its-edge)
                       (define-individual-for-unknown-term 
                         word pos-before pos-after)

    ;; this should suffice 'till we learn more about these
    (setf (edge-form its-edge) category::classifier)

    (bind-variable 'pre-classifier pre-classifier segment)
    pre-classifier ))



;;;--------------------------------
;;; later instances of known words
;;;--------------------------------

(defun note-instance (edge name-of-variable segment)
  ;; this should be an instance of a content term, not one
  ;; of the close-class (pre-defined) terms
  (let ((unit (edge-referent edge)))
    (tr :noting-instance unit name-of-variable)
    (bind-variable name-of-variable unit segment)
    unit))


;;;------------------------------------------------------
;;; recording information learned after the 1st instance
;;;------------------------------------------------------

(defun adjust-rule-to-verb (edge)
  ;; This is the edge formed over some unknown term. We have
  ;; just learned that its word should be interpreted as a
  ;; verb, so we adjust the form of the rule that created the
  ;; edge so that next time it will start out the right way
  ;; and we change this instance as well (///) to facilitate
  ;; any later parsing within the analyzed segment
  (let ((cfr (edge-rule edge))
        (word (edge-left-daughter edge)))
    (unless (word-p word)
      (break "Assumptions not supported:  Expected this edge to ~
              be an unknown-term~%with a word as its left daughter.~
              ~%Instead the daughter is ~A~%edge: ~A" word edge))

    (let ((form (if (word-morphology word)
                  (ecase (word-morphology word)
                    (:ends-in-s category::verb+s)
                    (:ends-in-ed category::verb+ed)
                    (:ends-in-ing category::verb+ing))
                  nil)))
      (when form
        (setf (edge-form edge) form)
        (setf (cfr-form cfr) form)))))
