;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 1993-2005.2013  David D. McDonald  -- all rights reserved
;;; extensions Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "classify"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  1.11 August 2013

;; initiated 5/15/93 v2.3 to fit PNF paper
;; 0.1 (6/10) tweeked judgement over single words
;; 0.2 (6/18) and again -- they need sequence intermediaries for consistency
;;      with all other names
;; 0.3 (6/30) changed the treatment of single word cap.seq. so that it
;;      didn't presume that it was a name.
;;     (10/22) added case there for proper-adjectives  (10/28) filled stub for
;;      two edges over a single capitalized word
;; 0.4 (12/7) added case to handle "AN" ambiguity and stubbed the case of
;;      single unclassified capitalized words
;; 0.5 (1/27/94) broke out the pnf transition driver to [do transitions]
;; 0.6 (3/15) switched where single-edge routine looked to appreciate that an
;;      edge is a literal
;; 0.7 (3/28) tweeked the fields of the edge made by Span-as-capitalized-word
;; 1.0 (4/1) redesigned the algorithm to leave out depenence on the transition network
;;     (5/6) adjusted status terminology
;; 1.1 (5/17) bringing position status into sync with new scheme.
;; 1.2 (6/14) added a case to C&R-single-word  (7/21) added case-initial traces
;; 1.3 (9/28) added routines to handle sentence-start issues (for scan-only protocol)
;;     (10/19) tweeked scan-only's treatment of sentence-initial cases
;;     (11/17) and again.
;; 1.4 (11/23) changed those routines to check one of the returned args and hold off
;;      on making a new edge.
;; 1.5 (1/4/95) installed early-termination catch in scan-only.
;;     (1/23) removed the dm&p thread to [names;fsa:simple classify"
;; 1.6 (5/11) put breaks under *debug-pnf* flag
;; 1.7 (5/15) added Classify&record-the-rest-of-the-sequence
;;     (5/29) tweeked the choice of follow-on call in that
;;     (5/30) added a filter for name-words in single word case
;; 1.8 (10/18) added a case to multiple edges over a single word.
;;     (1/1/96) added a comment for a stub re. missing an "and" trap.
;; 1.9 (1/2) hacked Sortout-edges-over-single-cap-word to take all the non-literal edges
;; 1.10 (7/11) modified C&R-single-word to appreciate the starts of sentences and not
;;       make the words into name-words in that situation.
;;     (2/2/05) Pulled the 'temporary' out of the call in Do-single-word-name
;;     (6/21/07) Stubbed could-be-the-start-of-a-sentence to return nil.
;;     (6/17/08) Declared that the edge created by span-as-capitalized-word
;;      was a proper-name so that downstream tests would have a filled form field
;;      without worring about wanting a richer classification.
;;     (10/12/09) Gave could-be-the-start-of-a-sentence a real definition.
;;     (2/13/13) Removed version of could-be-the-start-of-a-sentence in this file
;;      in favor of the one in rules/CA/first-item
;;     (3/6/13) Generalized reduce-multiple-initial-edges to any length vector.
;; 1.11 (8/26/13) Modifying the single-word path to look more like the multi-word.
;;      left subs in the cases where there's more than one word.

(in-package :sparser)


;;;--------------------
;;; generic categories
;;;--------------------

(define-category capitalized-word)

(define-category capitalized-sequence)


;;;--------
;;; driver
;;;--------

(defun classify-and-record-name (starting-position
                                 ending-position)

  ;; called from PNF's driver, PNF, after the sequence has been delimited.
  ;; The delimiting can introduce edges around some punctuation, so
  ;; we have to look for that case. Otherwise any edges over known
  ;; words will be introduced here.
  ;;    Returns an edge to indicate that it has a successful analysis
  ;; or Nil if it doesn't think the delimited span holds a name.
  (tr :pnf/classifying-span starting-position ending-position)

  (if (eq ending-position (chart-position-after starting-position))
    (c&r-single-word starting-position ending-position)
    (else
      (let ((edge (span-covered-by-one-edge?
                   starting-position ending-position)))
        (if edge
          (c&r-single-spanning-edge edge)
          (c&r-multi-word-span starting-position ending-position))))))




(defun classify&record-the-rest-of-the-sequence (adjacent-name-edge
                                                 start-pos end-pos
                                                 &aux edge )

  ;; Called from Classify-&-record-span when Examine-capitalized-sequence
  ;; has seen a pattern that caused it to end the name before all of the
  ;; items in the pwpnf'd sequence where consumed.  From here we resume
  ;; the classification process on the remainder of the items.

  (when (eq (pos-capitalization start-pos)
            :lower-case)  ;; e.g. "of"
    ;; n.b. this also gets "and", so unless steps are taken (////) 
    ;; we'll miss the 'within PNF' conjunction handler. The case that
    ;; illustrates this is: "Uson L.P. and Metrix Instrument L.P."
    ;; where we drop out of Examine (via flush-suffix) because of
    ;; the inc-term rather than because of the "and".
    (setq start-pos (chart-position-after start-pos)))

  (tr :pnf/classifying-remainder start-pos end-pos)

  ;; mimics the dispatch done in Classify-and-record-name. We can't just
  ;; call that routine because it will parse the region and we've
  ;; already done that
  (cond ((eq start-pos (chart-position-after end-pos))
         (c&r-single-word start-pos end-pos))
        ((setq edge (span-covered-by-one-edge? start-pos end-pos))
         (c&r-single-spanning-edge edge))
        (t (classify-&-record-span start-pos end-pos)))
  
  ;; this is the name we'd already found.
  adjacent-name-edge )




;;;------------------------------------------------------
;;; one edge already over the whole span from delimiting
;;;------------------------------------------------------

(defun c&r-single-spanning-edge (edge)
  ;; there is more than one word in the delimited span but one of
  ;; the routines run then covered the whole span with an edge,
  ;; e.g. for an abbreviation ("Inc.") or an initial.
  (tr :pnf/one-edge-over-multi-word-span edge)
  edge )



;;;---------------------------------------
;;; special case of a one-word 'sequence'
;;;---------------------------------------

(defparameter *treat-single-Capitalized-words-as-names*  nil
  "Read by C&R-single-word and set in the various switch setting 
   routines.")


(defun c&r-single-word (position next-position)
  ;; Called from classify-and-record-name
  ;; The sequence is just one word long. We introduce its edges,
  ;; and if there aren't any, distinguish between function words
  ;; (which we assume not to be names) and other. We then consult
  ;; a protocol flag as to whether we should assume by default that
  ;; it is a name (for which we introduce an edge as an uncharacterized
  ;; name) or just leave it as an unknown word that will perhaps
  ;; be enriched by a later context-sensitive rule.

  (let ((word (pos-terminal position))
        (status (pos-assessed? position))
        (ev (pos-starts-here position)))

    (tr :pnf/classifying-one-word-span word)

    ;; Do we have to install the terminal edge(s)?
    (case status
      ;; has to have some status because we scanned it in order 
      ;; to reach this point
      (:pnf-checked  ;; Toronto in "(Toronto)"
       (unless (ev-top-node ev)
         ;; check whether this is the second time around and
         ;; edges were installed then.  "Is Appletalk"
         ;;//// Multiple-words case does parse-from-within-pnf
         (install-terminal-edges word position next-position)))
      (:preterminals-installed)  ;; Dalton in "Messrs. Dalton and ..."
      (otherwise
       (break "Unexpected value for status: ~a~%Expected :pnf-checked  ~
               or :preterminals-installed" status)))

    (if (ev-top-node ev)
      (then ;; there are some edges 
       (tr :pnf/edges-over-word word ev)
       (sortout-edges-over-single-cap-word position next-position))
      (else
       ;; No edges.
       ;; The word is capitalized, so the question is whether it's a
       ;; function word (and then maybe we also check whether we're
       ;; function beginning of the sentence).  If it is, we return
       ;; function to the fsa driver that we're rejecting this one
       ;; as a name and the regular processing should get a crack at it.
       (tr :pnf/no-edges-over-word word)
       (if (function-word? word)
         nil
         (when (unknown-word? word)
           (if *treat-single-Capitalized-words-as-names*
             (do-single-word-name word position next-position)

             (if (could-be-the-start-of-a-sentence position)
               nil
               (span-as-capitalized-word word position next-position)))))))))


;;;---------------------
;;; single unknown word
;;;---------------------

(defun do-single-word-name (word position next-position)
  ;; Called from c&r-single-word
  ;; We know that there's no individual with this name yet
  ;; because if there were we'd have a name-word edge instead
  ;; of this unknown word, so we go ahead and create the individual
  ;; (of type "uncategorized-name") that has this word as their name

  (let ((name (make-unindexed-individual category::uncategorized-name))
        (name-word (make-name-word-for-unknown-word-in-name word position)))
    (tr :pnf/items-for-unknown-word word name name-word)

    (let ((sequence (define-sequence (list name-word))))

      (bind-variable 'name/s sequence name)
      (index/uncategorized-name name sequence)

      (let ((edge (edge-over-proper-name
                   position next-position
                   category::name
                   category::proper-name
                   name   ;; referent
                   :single-unknown-capitalized-word   ;; rule
                   nil))) ;; daughter edges
        edge ))))



(defun span-as-capitalized-word (word position next-position)
  ;; same idea as do-single-word-name, but the flag to interpret
  ;; otherwise unknown words as 'names' is down, so we just call
  ;; it a 'capitalized-word'
  ;;   N.b. this is a final call in PNF, so returning this edge
  ;; means that the fsa overall will be interpreted as 'succeeding'

  (make-chart-edge :starting-position position
                   :ending-position next-position
                   :category category::capitalized-word
                   :form category::proper-noun
                   :rule :spelling-based-edge
                   :referent word
                   :left-daughter word
                   :right-daughter :single-term ))


;;;-------------------
;;; single known word
;;;-------------------

(defun sortout-edges-over-single-cap-word (position next-position)
  ;; subroutine of C&R-single-word for the case where there's
  ;; some analysis for it in the grammar. We have to decide whether
  ;; the edge over this word (or one of them) is something that
  ;; the Proper Name Facility should record as a name or not.
  ;; If it is, then the fsa has succeeded and we return the edge.
  ;; If it isn't we return nil and some other fsa or rule gets
  ;; a crack at it.
  (let ((ev (pos-starts-here position)))
    (if (= 1 (ev-number-of-edges ev))
      (sortout-single-edge-over-capitalized-word ev position)

      (if (= 2 (ev-number-of-edges ev))
        (sortout-two-edges-over-single-capitalized-word position next-position)
        
        (else
          (sortout-multiple-edges-over-single-capitalized-word position next-position))))))

;;--- one edge over the word

(defun sortout-single-edge-over-capitalized-word (ev position)
  ;; subroutine of sortout-edges-over-single-cap-word
  (let ((edge (ev-top-node ev)))
    (cond
     ((or (eq (edge-form edge) category::proper-noun)
          (eq (edge-form edge) category::proper-adjective))

      (let ((new-edge (dereference-proper-noun edge)))
        ;; Is this the name of someone/something?  If so,
        ;; we should respan it with an edge with their
        ;; category -- the "new-edge". If it isn't, then
        ;; it's arguably not a "name" in the sense of being
        ;; something that PNF was designed to look for
        ;; (months fall into this category) and we should
        ;; return nil.                      
        (or new-edge
            nil )))

     ;; else the edge might be over a function word that's
     ;; used as a literal in rules
     ((function-word? (pos-terminal position))
      nil )

     (t (other-single-cap-words edge)))))

;;--- subroutine for the 2 edges case

(defun sortout-two-edges-over-single-capitalized-word (position next-position)
  ;; subroutine of Sortout-edges-over-single-cap-word
  ;;(push-debug `(,position ,next-position))
  (let ((edges (edges-between position next-position))
        good-edge  literal  name-word )
    (cond
     ;; Check if one of them is a literal and if so take the other.
     ((or (and (eq :literal-in-a-rule (edge-right-daughter (first edges)))
               (setq good-edge (second edges)
                     literal (first edges)))
          (and (eq :literal-in-a-rule (edge-right-daughter (second edges)))
               (setq good-edge (first edges)
                     literal (second edges))))
      
      (if (or (eq (edge-form good-edge) category::proper-noun)
              (eq (edge-form good-edge) category::proper-adjective))
        ;; copy of the code from above -- couldn't easily figure out
        ;; a good subroutine that would correctly feed "Cond"
        (let ((new-edge (dereference-proper-noun good-edge)))
          (or new-edge
              nil ))
        (else
          (two-edges/one-literal good-edge literal))))


     ;; if one is a respan of the other, check for various anticipated cases
     ((edges-all-chain position :start)
      (let ((top-edge (ev-top-node (pos-starts-here position))))
        (if (eq (edge-rule top-edge) :respan-over-pronoun)
          top-edge
          (else
            (when *debug-pnf*
              (break "Stub: new case for two edges over a single ~
                      capitalized word~%where all the edges chain~%~%"))
            (car (last edges))))))  ;; assumes most specific goes on last


     ;; scan the edges looking for one that's a name-word
     ((setq name-word (one-of-the-edges-is-a-name-word edges))
      (take-the-other-edge name-word edges))

    
     (t  ;; they're both real things, so let them both go through
      (car (last edges))))))




;;--- more than two edges over the word

(defun sortout-multiple-edges-over-single-capitalized-word (position next-position)
  ;; subroutine of Sortout-edges-over-single-cap-word
  (push-debug `(,position ,next-position))
  (break "Examine, rewrite sortout-multiple-edges-over-single-capitalized-word")
  (let* ((edges-including-literals (edges-between position next-position))
         (edges (remove-literals-from-list-of-edges edges-including-literals)))
    (if (edges-all-chain position :start)
      ;; if one is a respan of the other, check for various anticipated cases
      (let ((top-edge (ev-top-node (pos-starts-here position))))
        (if (eq (edge-rule top-edge) :respan-over-pronoun)
          top-edge
          (else
            (when *debug-pnf*
              (break "Stub: new case for two edges over a single ~
                      capitalized word~%where all the edges chain~%~%"))
            (car (last edges)))))  ;; assumes most specific goes on last


      ;; Take them all, and dereference the name words since they probably
      ;; would lead to anaphors of companies or people
      (else
        (dolist (edge edges)
          (when (or (eq (edge-form edge) category::proper-noun)
                    (eq (edge-form edge) category::proper-adjective))
            (dereference-proper-noun edge)))

        ;; return success
        edges ))))


(defun remove-literals-from-list-of-edges (list-of-edges)
  (let ( filtered-list )
    (dolist (edge list-of-edges)
      (unless (literal-edge? edge)
        (push edge filtered-list)))
    (nreverse filtered-list)))




(defun other-single-cap-words (edge)
  ;; Called from Sortout-single-edge-over-capitalized-word.
  ;; its capitalized in a sequence one word long, and it isn't
  ;; a proper noun, a proper adjective, or a function word.
  ;; The substantive question is whether it's a hitherto unknown
  ;; proper name (e.g. "Ford"), but we can also identify some
  ;; established cases.
  ;;   We're a tail, so we have to indicate whether PNF succeeded
  ;; or not. 

  (case (cat-symbol (edge-category edge))
    (category::sgml-label
     ;; precludes other interpretations, though one can imagine
     ;; an ambiguity with an interesting unknown word -- we can leave
     ;; that case to imaginative Debris analysis
     nil )
    (otherwise
     ;; assume its a different kind of unknown word. // maybe look for
     ;; evidence that we're at the beginning of a sentence.
     nil )))



(defun two-edges/one-literal (non-literal literal)
  ;; One of the edges is just a literal in a rule, the other is
  ;; something else, where we've already covered the case that might
  ;; have been a proper noun or proper adjective.  
  ;;    The operant example to date is the ambiguity between "AN" the
  ;; tag in a header and "AN" the full-caps form of the indefinite
  ;; determiner.
  ;;   In any event, we're not going to accept this as a one word
  ;; hitherto unknown proper name, so we may as well let it all go through.
  (declare (ignore non-literal literal))
  nil )




(defun one-of-the-edges-is-a-name-word (edges)
  ;; Returns the first edge that's labeled as a name-word, if any.
  ;; There can only be one since all these edges are over the
  ;; same word
  (dolist (edge edges)
    (when (eq (edge-category edge)
              category::name-word)
      (return-from one-of-the-edges-is-a-name-word edge))))



(defun take-the-other-edge (edge-to-avoid edge-pair)
  (let ( edge-to-return )
    (dolist (edge edge-pair)
      (when (not (eq edge edge-to-avoid))
        (setq edge-to-return edge)))

    (unless edge-to-return
      (break "Assumption violated. The list of edges passed in ~
              has only~%the edge that is to be avoided.~
              ~%   ~A~
              ~%   ~A" edge-to-avoid edge-pair))

    edge-to-return ))


;;;------------------------------------
;;; candidate for the standard routine  /// move it
;;;------------------------------------

(defun reduce-multiple-initial-edges (ev)
  ;; some routine has gotten an edge vector where it wanted an edge
  ;; and the reason is :multiple-initial-edges.  We go through the
  ;; edges and remove any literals.
  (let ((count (ev-number-of-edges ev))
        (vector (ev-edge-vector ev))
        edge  good-edges )
    (ecase *edge-vector-type*
      (:kcons-list (break "Write this routine for kcons list version"))
      (:vector
       (dotimes  (i count)
         (setq edge (aref vector i))
         (unless (eq :literal-in-a-rule (edge-rule edge))
           (push edge good-edges)))
       (nreverse good-edges)))))



