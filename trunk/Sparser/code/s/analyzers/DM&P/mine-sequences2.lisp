;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: mine-sequences2.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;;
;;;      File:  "mine sequences"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  2.1 February 2007

;; split out from [analyzers;DM&P:scan] 7/2194 v2.3.  Being tweeked
;; continually ... 8/19.  Added check for literals in Hack-long-segment
;; and introduced use of silent name words to handle them. 10/31 revised
;; that check.  
;; 0.1 (11/14) fixed bug in big dispatch. Changed return values in all the cases
;;      where pair-terms are made to be a list of the pt rather than the two terms
;; 0.2 (12/1) adjusting the treatment of multi content word vgs.
;;      extending/tweeking that state machine 12/30
;;     (1/3/95) added a few traces, put in specific treatment for "&" and literals
;;      in long unmarked sequence
;; 1.0 (1/17) put in long thread for verb groups beginning with 'be' and having no
;;      other verb.  1/23 fixed glitch in MVG/adv-check-before-mvb.  1/24 fixed
;;      that path's return values.
;; 1.1 (1/26) changed call in mine-indeterminate.. with one word to anticipate that
;;      there might already be an edge.
;;     (1/27) added passive case to MVG/aux-adv-mvb/edge
;; 2.0 (1/30) put in a different scanning alg. for Hack-long-segment/mining and 
;;      generalized its treatment of within-segment punctuation.
;;     (2/2) wrote mvg/Reached-a-noun, wrote Check-edge-referent to handle 
;;      interaction with core categories.
;; 2.1 (2/14) added word case to Check-edge-term prompted by edge introduced by
;;      the standard PNF routine.
;;     (2/15) fixed a variation on the w/in seg. punct. of Hack-long-seg.
;;      ////it might not be valid since it doesn't check for PNF being active
;;     (2/5/07) Added case for section-header to Mine-treetops. Hacked ecase
;;      instances. Fixed over-zealous name-word assumption in hack-long-...

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun mine-treetops (starts-at ends-at segment
                      &optional prefix-category )
  (if prefix-category
    (case (cat-symbol prefix-category)
      (category::np
       (mine-treetops-as-head/classifiers starts-at ends-at segment))

      (category::verb
       (break "shouldn't have gotten here -- call should go to Mine-vg"))
      (category::modal
       (break "shouldn't have gotten here -- call should go to Mine-vg"))

      (category::adjp
       (mine-treetops-as-head/classifiers starts-at ends-at segment))

      (category::possessive ;;//// specialize the dispatch ??
       (mine-treetops-as-head/classifiers starts-at ends-at segment))

      (category::section-header
       (mine-treetops/indeterminate-relationship
	starts-at ends-at segment))

      (otherwise
       (break "New prefix-category when mining treetops from p~a to p~a: ~a"
	      (pos-token-index starts-at) (pos-token-index ends-at)
	      prefix-category)))

    (mine-treetops/indeterminate-relationship
     starts-at ends-at segment)))



;;;-------------
;;; verb groups
;;;-------------

(defun mine-vg (segment prefix-edge starts-at ends-at)
  ;; called from Scan-treetops/prefixed when there is a prefix edge
  ;; and its form is one of the possibilities that's mapped to 'verb'
  ;; by Determinant-segment-prefix.
  (declare (ignore segment starts-at))

  (let* ((after-prefix (pos-edge-ends-at prefix-edge))
         (label (edge-category prefix-edge))
         (form (edge-form prefix-edge))
         (action (or (cond ((eq label category::be)   :be)
                           ((eq label category::have) :have))
                     (case (cat-symbol form)
                       (category::verb+s   :check-aux+s )
                       (category::verb+ed  :check-aux+ed )
                       (category::verb+ing :check-aux+ing )
                       (category::verb     :post-head-unless-aux )
                       (category::infinitive  :post-head )
                       (category::modal    :any-aux/verb )
                       (category::adverb   :any-aux/verb )
                       (category::vg       :break )   ;; "do" ///??
                       (otherwise
			(break "New form label while mining vg: ~a"
			       (cat-symbol form)))))))
    (tr :mine-vg prefix-edge form action)

    ;; Dispatch to a case that is appropriate to the information
    ;; we've gotten from from the prefix.
    (let ((term/s
           (case action
             (:check-aux+s
              (if *break-on-pattern-outside-coverage?*
                (break "mine verb, only with legit. +s aux")
                (throw :abort-segment-construction nil)))
             (:check-aux+ed
              (if *break-on-pattern-outside-coverage?*
                (break "mine verb, only with legit. +ed aux")
                (throw :abort-segment-construction nil)))

             (:check-aux+ing
              (mvg/check-aux+ing prefix-edge after-prefix ends-at)
              ;; this isn't finished, hence the abort
              (throw :abort-segment-construction nil))

             (:post-head-unless-aux
              (mvg/post-head-unless-aux
                 prefix-edge after-prefix ends-at))

             (:any-aux/verb
              (mvg/any-aux-or-verb after-prefix ends-at))

             (:be
              (mvg/post-be prefix-edge after-prefix ends-at))

             (:have
              (break "Stub: write VG mining after 'have'"))

             (:break
              (if *break-on-pattern-outside-coverage?*
                (break "mine verb: prefix edge has form 'vg' .~
                      Check this out")
                (throw :abort-segment-construction nil)))
	     (otherwise
	      (break "fell through action cases")))))

      (cond
       ((null term/s)
        (if *later-part-of-segment-needs-reanalysis*
          nil
          (break "Subroutines on ~A thread returned Nil~%but the ~
                  segment isn't setup for reanalysis" action)))

       ((null (cdr term/s))
        ;; just one item, return it provided that it spans the
        ;; whole interior of the vg, otherwise try parsing them.
        ;; This call will return the referent of the spanning edge
        ;; it forms, or will complain if it can't form it.
        (if (edge-between after-prefix ends-at)
          term/s
          (parse-vg-interior-content-terms after-prefix ends-at)))

        (t ;; Try parsing them. 
         (parse-vg-interior-content-terms after-prefix ends-at))))))



;;;----------------
;;; prefix is +ing
;;;----------------

(defun mvg/Check-aux+ing (prefix-edge after-prefix ends-at)
  ;; given the rule of aux-hopping, the only way that the prefix could
  ;; be extended is if prefix itself is the word "be" and the verb
  ;; is passive.  Otherwise the prefix is actually the main verb 
  ;; and the rest of the segment doesn't belong there.
  (declare (ignore ends-at))
  (if (eq (edge-category prefix-edge)
          (category-named 'be))
    (then ;; it's legit
      (if *break-on-pattern-outside-coverage?*
        (break "Stub:  legitimate verb group with +ing prefix~
                Write the rest of the code")
        (throw :abort-segment-construction nil)))
    (else
      (reanalyze-rest-of-overly-long-segment 'Overly-long/after-ing-verb
                                             after-prefix))))


;;;-------------------------
;;; prefix is the verb 'be'
;;;-------------------------

(defun mvg/post-be (be-edge next-pos end-pos)
  ;; The prefix of the vg is some version of the verb 'be', which
  ;; means that the main verb must be passive or progressive.
  ;; If we find any other situation then we declare the vg too long.
  (multiple-value-bind (next-tt pos-after)
                       (next-treetop/rightward next-pos)
    (declare (ignore pos-after))
    (tr :mine-vg/next-tt next-tt)
    (etypecase next-tt
      (word (mvg/adv-check-before-ing/en next-pos end-pos be-edge))
      (edge (mvg/adv-check-before-ing/en next-tt end-pos be-edge))
      (edge-vector  ;; multiple interpretations over single word
       (mvg/adv-check-before-ing/en 
        (highest-preterminal-at next-pos) end-pos be-edge)))))

(defun mvg/Adv-check-before-ing/en (next-tt end-pos be-edge)
  (tr :mine-vg/adv-check-before-ing/en)
  (let ((pos-after (etypecase next-tt
                     (position (chart-position-after next-tt))
                     (edge (pos-edge-ends-at next-tt)))))
    (if (etypecase next-tt
          (position (adverbial-morphology? (pos-terminal next-tt)))
          (edge (eq (edge-form next-tt) category::adverb)))
      (then
        (if (eq pos-after end-pos)
          (then
            ;; this means we've got [ be + adv ]. The 'be' is
            ;; pending at Mine-vg as the prefix, so we just get
            ;; the adverb into shape and return it.
            (etypecase next-tt
              (position (mine-adverb (pos-terminal next-tt)
                                     next-tt pos-after))
              (edge
               (list (edge-referent next-tt)))))
          (else
            ;; Accept the next-tt as an adverb and go on to
            ;; check the word afterwards
            (mine-adverb (pos-terminal next-tt) next-tt pos-after)
            (mvg/post-be be-edge pos-after end-pos))))
      
      (mvg/check-for-ing/en next-tt pos-after end-pos be-edge))))


(defun mvg/Check-for-ing/en (next-tt pos-after end-pos be-edge)
  ;; the next-tt is the putative mvb, do the check against
  ;; its morphology
  (tr :mine-vg/ing/en-check)
  (if (etypecase next-tt
        (position
         (let ((morph (word-morphology (pos-terminal next-tt))))
           (or (eq morph :ends-in-ing)
               (eq morph :ends-in-ed))))
        (edge
         (or (eq (edge-form next-tt) category::verb+ing)
             (eq (edge-form next-tt) category::verb+ed))))
    
    (then
      ;; check that this is last, otherwise cut it short
      (if (eq pos-after end-pos)
        ;; we've got [ be + ing/en ].  Deal with the mvb
        ;; and return it to Mine-vg
        (etypecase next-tt
          (position (list (mine-as-a-verb (pos-terminal next-tt)
                                          next-tt pos-after)))
          (edge 
           (list (edge-referent next-tt))))
        
        (else
          ;; The segment goes beyond the main verb.
          ;; Return the mvb after cutting the segment short
          ;; just after it.
          (setup-to-end-vg-at
           (etypecase next-tt
             (position (chart-position-after next-tt))
             (edge (pos-edge-ends-at next-tt))))

          ;; return this:
          (etypecase next-tt
            (position (list (mine-as-a-verb (pos-terminal next-tt)
                                            next-tt pos-after)))
            (edge
             (list (edge-referent next-tt)))))))

    (else
      ;; the next-tt doesn't have the right morphology, so
      ;; cut the segment short right after the be-edge.
      ;; We return nil and Mine-vg knows to just take the prefix-edge
      (setup-to-end-vg-at (pos-edge-ends-at be-edge))
      nil )))
        
    



;;;----------------------------
;;; prefix has the form 'verb'
;;;----------------------------

(defun mvg/Post-Head-unless-Aux (prefix-edge after-prefix ends-at)
  (let ((prefix-label
         (edge-category prefix-edge)))
    (if (or (eq prefix-label (category-named 'be))
            (eq prefix-label (category-named 'have))
            (eq prefix-label (category-named 'do)))
      (then 
        ;; it's legit, we just collect up the main verb (or debug if
        ;; the segment is overly long)   ///and we can test for
        ;; consistency with aux movement if it's overly long.
        (mvg/continue-from-aux-prefix after-prefix ends-at
                                      :tensed))

      (else
        (if *break-on-pattern-outside-coverage?*
          (break "Stub: prefix was 'verb' but it isn't an auxiliary")
          (throw :abort-segment-construction nil))))))


(defun mvg/Continue-from-aux-prefix (after-prefix ends-at aux-case)
  (declare (ignore aux-case))
  (if (eq (chart-position-after after-prefix) ends-at)
    (next-one-word-item-is-mvb-and-ends-vg after-prefix ends-at)
    (else
      (mvg/any-aux-or-verb after-prefix ends-at))))





;;;-------------------------------------------------------------------
;;; any (sequence of) auxiliaries or adverbs leading to the main verb
;;;-------------------------------------------------------------------

(defun mVG/any-aux-or-verb (first-pos end-pos)
  ;; the next word could be an auxiliary, in which case we'll look
  ;; for more auxiliaries if there are any more words in the
  ;; segment; or it could be an adverb, or it could be the
  ;; main verb.  This is the recurrent state until we declare
  ;; a mvb. It is the way we do 'scans' inside the vg's content words.
  (multiple-value-bind (next-tt next-pos)
                       (next-treetop/rightward first-pos)
    (tr :mine-vg/next-tt next-tt)
    (etypecase next-tt
      (word
       ;; we've never seen this term before. Check whether it
       ;; could be an adverb, otherwise declare it the main verb.
       (mvg/adv-check-before-mvb first-pos end-pos))
      (edge
       ;; we've seen this term before, so we can see what we know
       ;; about it and react accordingly
       (mvg/aux-adv-mvb/edge next-tt end-pos))
      (edge-vector
       ;; want to do a specific search through the alternatives
       ;; rather than just take the most recent. Lets us be more
       ;; specific with noun/verb ambiguities.
       (let ((best-edge (resolve-ambig/any-aux-or-verb next-tt)))
         (mvg/aux-adv-mvb/edge best-edge end-pos))))))


(defun resolve-ambig/any-aux-or-verb (ev)
  ;; tail-recursive subr of MVG/any-aux-or-verb that has to 
  ;; maintain its next-state possibilties once it's resolved
  ;; which item to work with.
  (let ((residue (filter-literals ev)))
    (if (cdr residue)
      (break "Stub: extend the vg disambiguation set~%")
      (car residue))))
      
       


(defun mVG/adv-check-before-mvb (first-pos end-pos)
  ;; This word is new. If it has adverbial morphology (ends in "ly")
  ;; then make it an adverb and look beyond it for the main verb,
  ;; otherwise take the word as the main verb.
  ;; Called from MVG/any-aux-or-verb
  (let ((word (pos-terminal first-pos))
        (next-pos (chart-position-after first-pos)))
    (tr :mine-vg/adverb-check word)
    (if (adverbial-morphology? word)
      (then
        (mine-adverb word first-pos next-pos)
        (if (eq next-pos end-pos)
          (break "adverb ends verb group without finding a main verb")
          (mvg/any-aux-or-verb next-pos end-pos)))
      (else
        ;; if this is the last word in the segment, declare it 
        ;; the main verb, otherwise complain
        (if (eq next-pos end-pos)
          (then (tr :mine-vg/ends-seg-interpreting-as-verb word)
                (list (mine-as-a-verb word first-pos end-pos)))

          (if *break-on-pattern-outside-coverage?*
            (break "Adv-check: too many words in verb group")
            (throw :abort-segment-construction nil)))))))
        
      


(defun mVG/aux-adv-mvb/edge (next-tt end-pos)
  ;; This edge might be a known preverbal element, in which case
  ;; we look beyond it for the main verb, or it might be a main verb
  ;; term that we've seen before.  If it's a main verb, then its
  ;; bracketing will have terminated the segment (//?? even auxes ??)
  ;; so we just return the edge's referent for parsing with the
  ;; prefix make at the do-prefixed-verb-group level.
  (let ((form (edge-form next-tt)))
    (case (cat-symbol form)
      (category::content-word
       (mvg/take-content-word-to-be-mvb next-tt end-pos))

      ;; these should check for the corresponding auxes, where
      ;; we would want to do an end-check and then maybe continue
      (category::verb+ed
       (list (edge-referent next-tt)))
      (category::verb+ing
       (list (edge-referent next-tt)))

      (category::noun  ;; e.g. "could use"
       (mvg/reached-a-noun next-tt end-pos))
       

      (category::verb+passive
       (list (edge-referent next-tt)))
      (category::infinitive
       (list (edge-referent next-tt)))
      (category::verb
       (list (edge-referent next-tt)))

      (category::adverb
       (mvg/any-aux-or-verb (pos-edge-ends-at next-tt)
                             end-pos))

      (otherwise
       (break "New form case: ~a" (cat-symbol form))))))



(defun mVG/take-content-word-to-be-mvb (edge end-pos)
  ;; check whether we've consumed the whole vg, and if we have
  ;; declare this term a verb and rework the edge to fit
  (if (eq (pos-edge-ends-at edge) end-pos)
    (convert-edge-and-term-to-verb edge)
    (debug-vg-segment/edge-as-mvb-but-more-words edge end-pos)))


(defun next-one-word-item-is-mvb-and-ends-vg (starts-at ends-at)
  ;; see if there's an edge there, otherwise mine the word
  (let ((edge (edge-between starts-at ends-at)))
    (if edge
      (convert-edge-and-term-to-verb edge)
      (list (mine-as-a-verb (pos-terminal starts-at)
                            starts-at ends-at)))))




(defun convert-edge-and-term-to-verb (edge)
  (unless (eq (chart-position-after (pos-edge-starts-at edge))
              (pos-edge-ends-at edge))
    (break "Assumption violated: expected this edge to span ~
            just one word:~%~A~%" edge))
  (let ((word (edge-left-daughter edge)))
    (unless (word-p word)
      (break "Assumption violated: expected this edge to directly ~
              span a word:~%~A~%" edge))

    (setf (edge-form edge)
          (verb-form-corresponding-to-word-morph word))
    (assign-brackets-as-a-main-verb word)

    (list (edge-referent edge))))



(defun debug-vg-segment/edge-as-mvb-but-more-words (edge end-pos)
  ;; Given the prior context, we expected this edge to be the
  ;; main verb, but there are more words in the segment after it.
  ;; We look for rationales for re-analyzing the pattern here.
  (let ((p (pattern-satisfied-by-vg-segment
            *start-of-prefixed-verb-group* end-pos)))
    (if p
      (reanalyze-segment/vg-pattern
       p *start-of-prefixed-verb-group* end-pos)
      (break "Verb group pattern analyzer didn't return anything"))))


(defun mvg/Reached-a-noun (noun-edge end-pos)
  ;; Called from MVG/aux-adv-mvb/edge when the next-tt has the
  ;; form category 'noun', e.g. "could use".  There's probably
  ;; no utility to converting the word to a verb (after all, something
  ;; specificially marked it as a noun and that context's rationales
  ;; shouldn't be ignored), and it's unclear whether devoting a
  ;; special category to record this ambiguity is worth it
  ;; given that it would have to be added to all the dispatches.
  ;;    But we do convert the form on this edge so that it's
  ;; vg will parse up.
  (declare (ignore end-pos)) ;; //should be checked
  
  (setf (edge-form noun-edge) category::verb) 
  (list (edge-referent noun-edge)))







;;--- another scheme, but with no good way to appreciate the ones that
;;    are off the wall.  Would be called from Mine-vg

(defun mine-treetops-as-VG-head (starts-at ends-at segment)
  (let* ((length (number-of-terminals-between starts-at ends-at)))
    (if (> length 1)
      ;(mine-after-prefix-of-multi-term-vg starts-at ends-at segment)
      (mine-multi-term-vg starts-at ends-at segment)

      (let* ((verb (pos-terminal starts-at))
             (verb-term (mine-verb/edge verb starts-at ends-at segment)))
        (list verb-term)))))


(defun mine-multi-term-vg (after-prefix end-pos s)
  (declare (ignore s))
  (let ((interior-treetops
         (treetops-between after-prefix end-pos))
        term  item-list )

    (do* ((tt (pop interior-treetops) (pop interior-treetops))
          (starts-at after-prefix
                     (when tt (etypecase tt
                                (word ends-at)
                                (edge (pos-edge-starts-at tt)))))
          (ends-at (when tt (etypecase tt
                              (word (chart-position-after starts-at))
                              (edge (pos-edge-ends-at tt))))
                   (when tt (etypecase tt
                              (word (chart-position-after starts-at))
                              (edge (pos-edge-ends-at tt))))))
         ((null tt))

      (etypecase tt
        (word
         (setq term (mine-unmarked-term tt starts-at ends-at)))
        (edge
         (setq term (edge-referent tt))))
      (push term item-list))

    (setq item-list (nreverse item-list))

    ;; the goal now is to have a single edge spanning all the
    ;; content words of the vg.  If we get it, we return its
    ;; referent as the result of the mining.  If we don't, we break.
    (parse-vg-interior-content-terms after-prefix end-pos)))


(defun parse-vg-interior-content-terms (start-pos end-pos)
  ;; called from Mine-vg
  (let ((coverage (parse-between-boundaries start-pos end-pos)))
    (case coverage
      (:one-edge-over-entire-segment
       (list (edge-referent (right-treetop-at/edge start-pos))))
      (:some-adjacent-edges
       (break "Couldn't parse up all of this some-adjacent-edges vg:~
               ~%\"~A\"~%" (string-of-words-between
                            start-pos end-pos)))
      (:contiguous-edges
       (let ((edge (scoop-up-adverbs-in-vg start-pos end-pos)))
         (if edge
           (list (edge-referent edge))
           (break "Couldn't parse up all of this contiguous-edges:~
                   ~%\"~A\"~%" (string-of-words-between
                                start-pos end-pos)))))
      ((or :no-edges :discontinuous-edges)
       (break "Unexpected coverage value after parsing VG segment:~
               ~%\"~A\"~%" (string-of-words-between
                            start-pos end-pos)))
      (otherwise
       (break "New value for VG coverage after parse: ~A~
               ~%\"~A\"~%" coverage
              (string-of-words-between start-pos end-pos))))))






;;--- The original scheme, it just lets the wacko ones go through,
;;    which won't do if we want a full parse within a segment

(defun mine-after-prefix-of-multi-term-vg (starts-at ends-at segment)
  ;; This should see it as indetermant relationship between
  ;; them. ////////something like a check for adverbs and then
  ;; a treatment of verb-modifiers by analogy to classifiers is needed
  (let* ((length (number-of-treetops-between starts-at ends-at))
         edge
         (p-minus1 (if (setq edge (left-multiword-treetop ends-at))
                     (pos-edge-starts-at edge)
                     (chart-position-before ends-at)))

         (p-minus2 (when (>= length 2)
                     (if (setq edge (left-multiword-treetop p-minus1))
                       (pos-edge-starts-at edge)
                       (chart-position-before p-minus1))))

         (p-minus3 (when (>= length 3)
                     (if (setq edge (left-multiword-treetop p-minus2))
                       (pos-edge-starts-at edge)
                       (chart-position-before p-minus2))))

         (p-minus4 (when (>= length 4)
                     (if (setq edge (left-multiword-treetop p-minus3))
                       (pos-edge-starts-at edge)
                       (chart-position-before p-minus3))))

         (p-minus5 (when (>= length 5)
                     (if (setq edge (left-multiword-treetop p-minus4))
                       (pos-edge-starts-at edge)
                       (chart-position-before p-minus4))))

         (p-minus6 (when (>= length 6)
                     (if (setq edge (left-multiword-treetop p-minus5))
                       (pos-edge-starts-at edge)
                       (chart-position-before p-minus5)))))

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




;;--- subroutine of Mine-verb/edge

(defun adjust-rule-to-verb (edge)
  ;; This is the edge formed over some unknown term. We have
  ;; just learned that its word should be interpreted as a
  ;; verb, so we adjust the form of the rule that created the
  ;; edge so that next time it will start out the right way
  ;; and we change this instance as well (///) to facilitate
  ;; any later parsing within the analyzed segment
  (let ((cfr (edge-rule edge))
        (word (edge-left-daughter edge))
        adverb? )

    (unless (and (word-p word)
                 (null (cdr (cfr-rhs cfr))))
      (if *break-on-pattern-outside-coverage?*
        (break "Assumptions not supported:  Expected this edge to ~
                be an unknown-term~%with a word as its left daughter.~
                ~%Instead the daughter is ~A~%edge: ~A" word edge)
        (return-from adjust-rule-to-verb)))

    (let ((form (if (word-morphology word)
                  (case (word-morphology word)
                    (:ends-in-s category::verb+s)
                    (:ends-in-ed category::verb+ed)
                    (:ends-in-ing category::verb+ing)
                    (:ends-in-ly
                     (setq adverb? t)
                     category::adverb)
		    (otherwise
		     (break "New form case for verb morphology: ~a"
			    (word-morphology word))))
                  category::verb)))

      (setf (edge-form edge) form)
      (setf (cfr-form cfr) form)
      (unless adverb?
        (assign-brackets-as-a-main-verb word)))))



















;;;-----
;;; NPs
;;;-----

(defun mine-treetops-as-head/classifiers (starts-at ends-at segment)
  ;; generic subroutine that could be given a suffix or a whole
  ;; segment, and which could have no edges or a bunch of them
  ;; but would not have one edge over the entire region.
  ;;   Returns the treetop items (denotations) it finds.
  ;;   Assumes a classifier/head analysis makes sense.

  (let* ((length (number-of-treetops-between starts-at ends-at)))
          ;; has to be a least one

    (cond ((= length 1)
           (let* ((head (mine-head/edge? starts-at ends-at segment)))
             (list head)))

          ((= length 2)
           ;; the first of the two terms is taken as a classifier,
           ;; the second as a head
           (multiple-value-bind (classif-term pos-between)
                                (next-treetop/rightward starts-at)
             (declare (ignore classif-term))
             (let* ((head (mine-head/edge? pos-between ends-at segment))
                    (classifier (mine-classifier/edge
                                 starts-at pos-between head segment)))
               ;(format t "~%      head = ~A~
               ;           ~%   classif = ~A~%" head classifier)

               (list
                (consider-reifying/classifier+np-head
                 classifier head segment starts-at pos-between)))))

          ((> length 2)
           (tr :length-of-long-segment 
               (number-of-treetops-between starts-at ends-at))
           (hack-long-segment/mining starts-at ends-at)))))



(defun mine-treetops/indeterminate-relationship (starts-at ends-at segment)
  ;; some/all of the treetops in this segment are unknown-term edges,
  ;; and we do not have enough information to make an informed judgement
  ;; about the relationships between them other than precedes/follows.
  (let* ((length (number-of-treetops-between starts-at ends-at)))
    (case length
      (1 ;;(break "called with just one word/term instead of several")
       (list (mine-unmarked-term/edge (pos-terminal starts-at) starts-at ends-at)))
                           
      (2 (mine-treetops/indeterminate-relationship/2 starts-at ends-at segment))
      (otherwise
       (tr :length-of-long-segment length)
       (hack-long-segment/mining starts-at ends-at)))))



(defun hack-long-segment/mining (starts-at ends-at)

  ;; if we already had information about how the more than two terms
  ;; in this segment were related, it would already have been reflected
  ;; in parsed pair-terms and we wouldn't be here.  
  ;;    We have an object reified that will hold the whole compound
  ;; as a sequence. This gives us something to react to later when more
  ;; information about the internal grouping becomes available by inference.

  (let ((treetops (successive-treetops :from starts-at :to ends-at))
        (next-pos starts-at)
        tt  term  items )
    (loop
      (setq tt (pop treetops))
      (when (null tt)
        (return))
      ;(format t "~&tt = ~A~%" tt)

      (etypecase tt
        (edge
         (cond
          ((polyword-p (edge-category tt))
           (setq term (mine-unmarked-term/pw tt)))
          
          ((and (word-p (edge-left-daughter tt))
                (punctuation? (edge-left-daughter tt))
                *pnf-has-control*)
           ;; Capitalized sequences are the only case where punctuation
           ;; would be kept within a segment. We put in a name-word
           ;; for this term.
           (let* ((word (edge-left-daughter tt))
                  (nw (or (name-word-for-word word)
                          (make-name-word-for/silent word))))
             (setq term nw)))
          
          ((edge-over-literal? tt)
           (setq term (mine-unmarked-term-under-edge tt)))
          
          ((edge-of-dotted-intermediary tt)
           ;; use the treetops under this edge
           (setq treetops
                 (append (successive-treetops
                          :from (pos-edge-starts-at tt)
                          :to (pos-edge-ends-at tt)
                          :below tt)
                         treetops))
           (setq term nil))
          
          (t (setq term (edge-referent tt)))))
        
        (word
         (if (and (punctuation? tt)  ;; e.g. the '&' in "AT&T"
		  *pnf-has-control*)
           (let ((nw (or (name-word-for-word tt)
                         (make-name-word-for/silent tt))))
             (setq term nw))
           (setq term
                 (mine-unmarked-term
                  tt next-pos (chart-position-after next-pos))))))



      (when (edge-p tt)
        (unless (polyword-p (edge-category tt))
          (tr :term-from-long-segment-edge term tt)))

      (when (word-p term)
        (setq term
              (adjudicate-word-as-referent-in-long-segment term tt)))

      (when term
        ;; dotted-edge will return a null term for one cycle because
        ;; we're re-doing its region of the segment
        (etypecase tt
          (edge (setq next-pos (pos-edge-ends-at tt)))
          (word (chart-position-after next-pos)))

        (push term items)))

    (list
     (construct-unanalyzed-multiword-compound (nreverse items)))))



(defun mine-treetops/indeterminate-relationship/2 (starts-at ends-at segment)
  ;; analogous to Scan-two-word-segment/unknown except that we're
  ;; usually dealing with edges and consequently with known terms.
  (let* ((tt1 (right-treetop-at starts-at))
         pw1  midpoint  tt2  pw2  )

    (when (eq tt1 :multiple-initial-edges)
      (setq tt1 (single-best-edge-over-word starts-at)))

    (setq pw1 (when (polyword-p (edge-category tt1))
                tt1))

    (when (edge-p tt1)
      (when (edge-for-literal? tt1)
        (setq tt1 (edge-left-daughter tt1))))

    (setq midpoint (if (word-p tt1)
                     (chart-position-after starts-at)
                     (pos-edge-ends-at tt1)))

    (setq tt2 (right-treetop-at midpoint))
    (when (eq tt2 :multiple-initial-edges)
      (setq tt2 (single-best-edge-over-word midpoint)))

    (setq pw2 (when (polyword-p (edge-category tt2))
                tt2))

    (when (edge-p tt2)
      (when (edge-for-literal? tt2)
        (setq tt2 (edge-left-daughter tt2))))

    (tr :two-terms-indeterminate tt1 tt2)
          
    (when (eq tt2 :multiple-initial-edges)
      (break "Data error: A treetop shouldn't be :multiple-initial,~
              but the one over \"~A\" is" (pos-terminal midpoint)))

    (let
      ((terms
        (cond
         ((and pw1 pw2)
          (let ((term1 (mine-unmarked-term/pw pw1))
                (term2 (mine-unmarked-term/pw pw2)))
            (mine-treetops/new-terms/2 term1 term2 segment
                                       starts-at midpoint)))
         
         ((and pw1 (edge-p tt2))
          (let ((term1 (mine-unmarked-term/pw pw1)))
            (mine-treetops/one-new-&-one-established term1 tt2 segment
                                                     starts-at midpoint)))
         
         (pw1
          (let ((term1 (mine-unmarked-term/pw pw1))
                (term2 (mine-unmarked-term tt2 midpoint ends-at)))
            (mine-treetops/new-terms/2 term1 term2 segment
                                       starts-at midpoint)))
         
         ((and (edge-p tt1) pw2)
          (let ((term2 (mine-unmarked-term/pw pw2)))
            (mine-treetops/one-established-&-one-new tt1 term2 segment
                                                     starts-at midpoint)))
         
         (pw2
          (let ((term1 (mine-unmarked-term tt1 starts-at midpoint))
                (term2 (mine-unmarked-term/pw pw2)))
            (mine-treetops/new-terms/2 term1 term2 segment
                                       starts-at midpoint)))
         
         ((and (edge-p tt1) (edge-p tt2))
          (mine-treetops/established-terms/2 tt1 tt2 segment
                                             starts-at midpoint))
         
         ((edge-p tt1)
          (setq tt2 (mine-unmarked-term tt2 midpoint ends-at))
          (mine-treetops/one-established-&-one-new tt1 tt2 segment
                                                   starts-at midpoint))
         
         ((edge-p tt2)
          (setq tt1 (mine-unmarked-term tt1 starts-at midpoint))
          (mine-treetops/one-new-&-one-established tt1 tt2 segment
                                                   starts-at midpoint))
         
         (t ;; have to treat it as though it were two unknown
          ;; words since the edges that span these words are literals
          (let ((terms
                 (mine-two-unknown-word-sequence starts-at ends-at)))
            (mine-treetops/new-terms/2 (first terms) (second terms)
                                       segment starts-at midpoint))
          ))))
      terms )))




(defun mine-two-unknown-word-sequence (starts-at ends-at)
  (let* ((left (pos-terminal starts-at))
         (midpoint (chart-position-after starts-at))
         (right (pos-terminal midpoint)))

    (let ((left-term (mine-unmarked-term left starts-at midpoint))
          (right-term (mine-unmarked-term right midpoint ends-at)))

      (list left-term right-term))))




(defun mine-treetops/new-terms/2 (term1 term2 segment
                                  starts-at midpoint)
  ;; neither term has been seen before, so this is identical to
  ;; Scan-two-unknown-term-segment except that the operations on this
  ;; thread are modularized differently. We do the relationships between
  ;; the elements here, but then just return the terms and leave the
  ;; categorization of the segment and its spanning to the caller
  (tr :mining-two-new)

  (bind-variable 'contains term1 segment)
  (bind-variable 'contains term2 segment)
  (bind-variable 'adjacent/precedes term2 term1)
  (bind-variable 'adjacent/follows term1 term2)
  
  (list
   (consider-reifying/adjacent-terms term1 term2 segment
                                     starts-at midpoint)))
   



(defun mine-treetops/established-terms/2 (tt1 tt2 segment
                                          starts-at midpoint)
  ;; both terms have been seen before, so while we don't have any
  ;; explicit internal evidence about how they relate, maybe there
  ;; things that we already know about them that will let us
  ;; conclude something
  (tr :both-known)
  (let* ((left-term (check-edge-term tt1))
         (right-term (check-edge-term tt2)))

    (bind-variable 'contains left-term segment)
    (bind-variable 'contains right-term segment)
    (bind-variable 'adjacent/precedes right-term left-term)
    (bind-variable 'adjacent/follows left-term right-term)

    (list
     (consider-reifying/adjacent-terms left-term right-term segment
                                       starts-at midpoint))))



(defun mine-treetops/one-established-&-one-new (edge1 term2 segment
                                                starts-at midpoint)
  ;; ///should be more clever since there's probably some inference
  ;; we can make online here
  (tr :mining-first-known-second-new)
  (let ((term1 (check-edge-term edge1)))
    (bind-variable 'contains term1 segment)
    (bind-variable 'contains term2 segment)
    (bind-variable 'adjacent/precedes term2 term1)
    (bind-variable 'adjacent/follows term1 term2)

    (list
     (consider-reifying/adjacent-terms term1 term2 segment
                                       starts-at midpoint))))



(defun mine-treetops/one-new-&-one-established (term1 edge2 segment
                                          starts-at midpoint)
  ;; ///should be more clever since there's probably some inference
  ;; we can make online here
  (tr :mining-first-new-second-known)
  (let ((term2 (check-edge-term edge2)))

    (bind-variable 'contains term1 segment)
    (bind-variable 'contains term2 segment)
    (bind-variable 'adjacent/precedes term2 term1)
    (bind-variable 'adjacent/follows term1 term2)

    (list
     (consider-reifying/adjacent-terms term1 term2 segment
                                       starts-at midpoint))))




;;--- what to do when the referent of an existing edge
;;    is a category rather than an individual

(defun check-edge-term (edge)
  (let ((referent (edge-referent edge)))
    (when referent
      (etypecase referent
        (individual  referent)

        (word
         ;; Lists out the reasons why an edge should have a word
         ;; as its referent and reacts accordingly
         (cond
          ((eq (edge-category edge) category::capitalized-word)
           (make-term-for-word-dominating-edge/suborn edge))
          (t (break "Stub: what's the reason why this edge has ~
                     a word as its referent:~%~A~%~A"
                    edge referent))))

        ((or referential-category mixin-category category)
         ;; Unless we are working in some sort of mixed sublanguage
         ;; and domain-modeling context, this case will reflect
         ;; an item from the core semantic model. We'll flush it
         (flush-rule-that-created-edge edge)
         (make-term-for-word-dominating-edge/suborn edge))))))


(defun make-term-for-word-dominating-edge/suborn (edge)
  ;; called from Check-edge-term as a standard move to get a
  ;; term instead of what was there with that edge. Hacks the
  ;; edge to look like the newly created term.
  (let ((word (edge-left-daughter edge)))
    (if (and (word-p word)
             (eq :single-term (edge-right-daughter edge)))
      (let ((term
             (define-individual-for-term word)))
        ;; now we suborn the existing edge
        (setf (edge-category edge)
              (value-of 'category term))
        (setf (edge-referent edge) term)
        (add-subsuming-object-to-discourse-history edge)
        term )
      
      (break "Unexpected configuration. Edge with a ~
              category as its referent~%doesn't dominate ~
              just one word"))))




(defun flush-rule-that-created-edge (edge)
  (let ((cfr (edge-rule edge)))
    (if (cfr-p cfr)
      (delete/cfr cfr)
      (break "Unexpected case: this edge wasn't formed ~
              from a cfr:~%  ~A~%" edge))))



;;;------------------------
;;; checking out odd cases
;;;------------------------

(defun adjudicate-word-as-referent-in-long-segment (word edge)
  ;; Called from Hack-long-segment/mining when a word gets passed
  ;; through as the referent of an edge (i.e. a literal). We return
  ;; the term (which will go into a sequence) that it is to use
  ;; for the word or break with a complaint.
  ;;   If we're doing PNF then any word is legitimate as a term,
  ;; including punctuation and we make a silent Name-word for it.
  ;; Otherwise we have to complain at punctuation or function words.
  (declare (ignore edge))
  (if *PNF-has-control*
    (or (name-word-for-word word)
        (make-name-word-for/silent word))
    (cond
     ((function-word? word)
      (if *break-on-pattern-outside-coverage?*
        (then
          (break "A literal edge over the function word \"~A\"~
                  was mined by Hack-long-segment/mining in a context ~
                  other than a name."
                 (word-pname word))
          (or (name-word-for-word word)
              (make-name-word-for/silent word)))))

     ((punctuation? word)
      (if *break-on-pattern-outside-coverage?*
        (then
          (break "A literal edge over the punctuation \"~A\"~
                  was mined by Hack-long-segment/mining in a context ~
                  other than a name."
                 (word-pname word))
          (or (name-word-for-word word)
              (make-name-word-for/silent word)))))

      (t (define-individual-for-term word)))))

