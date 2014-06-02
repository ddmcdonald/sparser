;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2003,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "judgements"
;;;   Module:  "grammar;rules:brackets:"
;;;  Version:  1.9 April 2014

;; initiated 6/14/93 v2.3
;; but giving them a lot more power to make decisions
;; 0.1 (6/30) made the ] routine more modular by incorporating code from the
;;      scan routine -- lets it be called from different points
;; 0.2 (3/17/94) added case for conjunction.], moved to rules;brackets
;; 0.3 (4/24) commented out a reference to verb]., since couldn't find its
;;      definition and trying to run with a minimal grammar.
;; 0.4 (5/5) backing out of earlier decision to mark the status of a segment-ending
;;      position as :ended-segment because it seems to be losing useful information.
;; 0.5 (5/26) added ].adverb.  6/9,10 added mvb]. & verb].
;; 0.6 (7/11) adding some reasoning.  
;; 1.0 (7/13) added elaboration to extend the handling of det+noun/verb
;; 1.1 (8/4) tweeked flag in that elaboration to be a kcons to record its position
;; 1.2 (10/19) switched back to commenting out reference to verb]. that is of
;;      unclear value -- see [random and hacks].  10/24 added triv. case
;; 1.3 (11/17) added .[np case to the test that overrules vg-starts
;; 1.4 (1/23/95) added .[adverb + ].verb case
;;     (1/24) added case for ]newline.  1/25 pulled an old break.  1/30 added
;;      ].treetop.  2/15 tweeked stub msg in checking for stronger open bracket and
;;      put in a real test against bracket ranks
;; 1.5 (4/3) looked carefully at the verb]. problem and realized it was redundant
;;      with mvb].
;;     (4/20) started to deal w/  "[ has ][ awarded ..." problem
;;     (6/28/96) added case for ].text-segment
;;     (7/11) hit a trivial case in the (stubbed) equal-rank-brackets test
;;     (3/26/03) Added proper-noun to Bracket-ends-the-segment? to handle a year by
;;      itself.
;; 1.6 (4/27/09) Integrating brackets for prepositions and a capacity to notice 
;;      verb+preposition combinations that are otherwise usually submerged. 
;;      Working on it through 6/16/09.
;; 1.7 (2/10/10) Added a check for ].quantifier in the ends-the-segment? test.
;;      Covers situations like "a few ...". Extended adverbs the same way.
;;      (3/3/10) Elaborated the quantifier case to include checking for a leading adverb.
;; 1.8 (8/3/11) Explicitly incorporating noun/verb ambiguous brackets. 5/17/12 Another
;;      adjective case. And another 5/26, also fixed indentation.
;; 1.9 (11/2/12) Added sort-out-name-bracketing-state called from PNF to fix interesting
;;      bug from false segment starting bracket where proper name ends in "ing"
;;      (11/8/12) started folding in adj-verb brackets. (11/9/12) added debugging
;;      method brackets-on. Diverse tweaking through 12/10. Added a flag to inhibit
;;      breaking on new cases. 3/13/13 Trying more interesting cases. 
;;      Finding and fixing cases through 4/8/13.
;; 1.10 (7/17/13) Fixed case in adjudicate-new-open-bracket that moved back the
;;       segment boundary because a verb is following a verb but was not resetting
;;       the global like the other paths through the code do.
;;      (1/21/14) Adjusting rule for proper-nouns given C3 cases.
;;      Misc. small tweaks through 4/30/14. 

(in-package :sparser)

;;;----------------
;;; debugging flag
;;;----------------

(defparameter *break-on-new-bracket-situations* t
  "If this flag is up, we break on new cases, otherwise we return
   what seems like the least-harmful option.")


;;;-----------------
;;; state variables
;;;-----------------

(defvar *suppress-verb-reading* nil)
(define-per-run-init-form '(setq *suppress-verb-reading* nil))


;;;-----------------------
;;; consequences of  [<w>
;;;-----------------------

(defun adjudicate-new-open-bracket (b p)
  (tr :adjudicate-new-open-bracket b)
  (cond (*left-segment-boundary*
         ;; usually we just take the boundary that already exists,
         ;; but we also look for some cases where we should move the
         ;; boundary ahead to this new position
         (cond
          ((eq b punctuation.[ )
           (tr :punct.[-moves-boundary p)
           (setq *bracket-opening-segment* (kcons b p)
                 *left-segment-boundary* p))

          ((eq b treetop.[ )
           (tr :treetop.[-moves-boundary p)
           (setq *bracket-opening-segment* (kcons b p)
                 *left-segment-boundary* p))

          ((eq b pronoun.[ )
           (tr :pronoun.[-moves-boundary p)
           (setq *bracket-opening-segment* (kcons b p)
                 *left-segment-boundary* p))

          (t
           ;; We're not going to move the boundary, but perhaps
           ;; we should change to a more informative bracket.
           (or (when (eq *left-segment-boundary* p) ;; at seg boundary
                 (refine-bracket-at-segment-boundary
                  (car *bracket-opening-segment*) b))
               (tr :[-ignored/left-boundary-already-in-place b p)))))

        (*suppress-verb-reading* ;;/// 4/2/13 look this up. Forgot
         (break "suppressed")
         (cond ((eq b .[verb)    ;; what it does.
                (if (eq *suppress-verb-reading*
                        (pos-terminal (chart-position-before p)))
                  (tr :[-ignored/suppressed-verb b p)
                  (else
                    (setq *suppress-verb-reading* nil)
                    (interpret-open-bracket-as-segment-start b p))))
               (t (setq *suppress-verb-reading* nil)
                  (interpret-open-bracket-as-segment-start b p))))           

        ((eq b .[verb)
         (if (and (eq *bracket-opening-previous-segment* .[verb)
                  (only-aux-or-modal-to-left 
                   *where-the-last-segment-started* p))
           (then
             (tr :segment-reopened-by-verb-verb
                 p b *where-the-last-segment-started*)
             (setq *left-segment-boundary*
                   *where-the-last-segment-started*)
             (setq *bracket-opening-segment*
                   (kcons *bracket-opening-previous-segment*
                          *where-the-last-segment-started*)))
           (interpret-open-bracket-as-segment-start b p)))

        (t (interpret-open-bracket-as-segment-start b p))))



(defun interpret-open-bracket-as-segment-start (b p)
  ;; subroutine of adjudicate-new-open-bracket to refine the
  (tr :[-sets-left-boundary p b)
  ;; "Setting the left segment boundary to p~A~
  ;;              ~%   because of the ~A in front of ~A"
  (setq *bracket-opening-segment*
        (if *bracket-opening-segment*
          (strongest-version-of-left-boundary-bracket b p)
          (kcons b p)))
  (setq *left-segment-boundary* p))


(defun refine-bracket-at-segment-boundary (original-bracket new-bracket)  
  "Since we're still at the position where the segment starts,
   is the bracket we've just gotten more informative than what's there
   now. We want brackets that will make for more informed jugments
   as we consider extending this segment."
  (tr ::opening-bracket-refined original-bracket new-bracket) 
  (let ((p (cdr *bracket-opening-segment*)))
    (flet ((replace-bracket ()
             (deallocate-kons *bracket-opening-segment*)
             (setq *bracket-opening-segment* (kcons new-bracket p))))
      (cond
       ((and (eq (b-placement original-bracket) :after) ;; preposition[
             (eq (b-placement new-bracket) :before)) ;; .[np
        ;; Prefer brackets that a placed in front of (:before) the word
        ;; that introduces them rather than after
        (replace-bracket))
       (t 
        (strongest-version-of-left-boundary-bracket new-bracket p))))))


;;;-----------------------------------------------
;;; Evaluating the relative strength of brackets
;;;-----------------------------------------------

(defun strongest-version-of-left-boundary-bracket (b p)
  ;; Called from Interpret-open-bracket-as-segment-start when
  ;; the decision has been made to start a new segment at p and
  ;; there is already an open bracket there. Of the two, we want
  ;; the most informative one to be what's put in the global
  ;; that later routines will look at. 
  ;;    This might not get called for NPs if the .[phrase started
  ;; by the word before the determiner is canceled by the ].phrase
  ;; of the determiner before the .[np is looked at, which should
  ;; always be the case

  (let ((existing-bracket *bracket-opening-segment*))
    (if (or (eq b existing-bracket)
            (and (consp existing-bracket)
                 (eq b (car existing-bracket))))
      existing-bracket

      (let ((strength-new (rank-of-bracket b))
            (strength-existing
             (if (consp existing-bracket)
               (rank-of-bracket (car existing-bracket))
               (rank-of-bracket existing-bracket))))
        (cond
         ((< strength-new strength-existing)
          (kcons b p))
         ((>= strength-new strength-existing)
          existing-bracket )
         (t
          (break "Stub: New case of open-bracket comparison.~
                  ~%The bracket already at ~A,~
                  ~%~A~
                  ~%Is this new bracket stronger? -- ~A~%"
                 p existing-bracket b)
          existing-bracket ))))))


(defun adjudicate-equal-rank-brackets (original new)
  ;; Called from Stronger-bracket, which is used in the Place-boundary
  ;; routines to judge whether to replace an already existing boundary
  ;; when a new bracket is being placed on that same position.  We return
  ;; the bracket that is (now heuristically) judged to be the stronger
  ;; of the two, though the best move would typically be to refine
  ;; the rankings so this doesn't have to be done. 
  (if (eq original new)
    original  ;; then no additional work will be needed
    (break "A second bracket is being proposed for a position~
            ~%that already has one of the same rank.~
            ~%Extend the system to make a choice between them.~
            ~%Original = ~A~
            ~%new bracket = ~A" original new)))



;;;---------------------------------
;;; consequences of  ].<w> or <w>.]
;;;---------------------------------

(defun bracket-ends-the-segment? (] position)
  "Called from check-for-]-from-word-after when the word that follows
 this position has put a segment-closing bracket on it. If it does
 close the segment (we return t), then the next move it to call pts
 to 'parse the segment' we have just delimited. 
   If we return nil, then the word we have just reached will be included
 in the ongoing segment and we'll continue scanning for some other
 rationale to close the segment further on. "

  ;; The words used to indicate the start of VGs or
  ;; NPs can occur several in a row (e.g. "the seven ...").  
  ;; Only the first of these legitimately ends a segment.

  (unless *bracket-opening-segment*
    (push-debug `(,] ,position))
    (error "Something has set *bracket-opening-segment* ~
            to NIL, somewhere around p~a" 
           (pos-token-index position)))

  (tr :bracket-ends-the-segment? ] )
  (tr ::opening-bracket-at-p position *bracket-opening-segment*)

  (let* ((bracket-opening-segment (first *bracket-opening-segment*))
         (segment-start-pos *left-segment-boundary*)
         (word-count (- (pos-token-index position)
                        (pos-token-index *left-segment-boundary*)))
         (previous-word (word-before position))
         (next-word (pos-terminal position))
         ends-the-segment? )

    ;; 2/26/14 Debugging segmentation, so just setting this up
    ;; for all cases. 
    (push-debug `(,position ,bracket-opening-segment
                  ,word-count ,previous-word ,segment-start-pos))
    ;; (setq position (car *) bracket-opening-segment (cadr *) word-count (nth 2 *) previous-word (nth 3 *) segment-start-pos (nth 4 *))

    ;; Set the flag. After this very long set of cases adjust
    ;; global state variables as needed.
    ;;
    ;; Returning t ends the segment. Returning nil continues it.
    (setq
     ends-the-segment? ;; mitigate right-margin creep
     (cond
      ((word-definitively-ends-segment next-word) t)

      ((eq ]  phrase].)   t)
      ((eq ]  ].phrase)   t)

         
      ((eq ]  ].punctuation)
       t)
          
      ((eq ] ].conjunction)
       t)

      ((and (eq bracket-opening-segment conjunction.[)
            (= word-count 0))
       ;; we're at the word that immediately follows
       ;; the conjunction. It has to lie in the following
       ;; segment
       nil)


      ;;--- NPs and friends
      ;; Returning t ends the segment. Returning nil continues it.

      ((eq ]  np].)
       t)

      ((eq ]  ].np)       
       ;;(break "].np")
       (cond 
        ((segment-started-as-np?)
         nil)
        ((and previous-word
              (participle? previous-word))
         nil)
        (t
         t)))

      ((eq ]  ].pronoun) t)
	  
      ((eq ]  ].proper-noun)
       ;(push-debug `(,previous-word ,bracket-opening-segment))
       ;(break "proper")
       (if (or (word-is-np-modifier previous-word)
               (word-is-a-proper-noun previous-word))
         nil
         t))

      ((eq ]  ].quantifier)
       (if (or (eq (first *bracket-opening-segment*) .[np )
               (eq (first *bracket-opening-segment*) .[article )
               (eq bracket-opening-segment .[adverb)) ;; "very few"
         nil
         t))

      ((eq ]  ].preposition) 
       (if (eq (car *bracket-opening-segment*) mvb.[)
         ;; We've just finished a segment because a verb said to do so.
         ;; In principle there could be interveening adverbs, so this may
         ;; need tuning if they aren't already folded into the VG that
         ;; we've just finished. 
         (check-for-verb-preposition-pair position)
         t))

      ((eq ]  preposition].) t)

      ((eq ]  ].treetop)  t)

      ((eq ] *close-before-newline*)  t)

      ((eq ]  ].text-segment)  t)

      ;;----------- ].verb
      ((eq ]  ].verb)  
       ;;(break "at ].verb at ~a" position)
       (cond 
        ((= word-count 0) t)
        ((or (eq *bracket-closing-segment* ].verb )
             (eq (first *bracket-opening-segment*) .[verb )
             (eq (first *bracket-opening-segment*) .[modal ))
         nil )

        ((eq bracket-opening-segment .[article ) nil)
        ;; e.g. "the sounds" -- where "sounds" can be a verb.
        ;; A word that is noun/verb ambiguous will lay down
        ;; brackets for a verb -- this is a case where we can
        ;; know definitively that the noun sense is the right one.

        ((or (eq bracket-opening-segment .[np )
             (eq bracket-opening-segment .[np-vp )
             (eq bracket-opening-segment .[|that| ))                  
         t)
        ((segment-started-as-np?) ;; and now we have an unambiguous verb
         t)
        ((eq (first *bracket-opening-segment*) .[adverb)
         nil )
        ((or (eq bracket-opening-segment pronoun.[)
             (eq bracket-opening-segment punctuation.[)
             (eq bracket-opening-segment preposition.[))
         t)
        ((eq bracket-opening-segment mvb.[) ;; not two in a row
         t)
        ((eq (first *bracket-opening-segment*) phrase.[) ;; refine the case?
         t)  ;; example was "Rainya is " PNF should be more definitive?
        (t (if *break-on-new-bracket-situations*
             (then
              (push-debug `(,position ,bracket-opening-segment
                            ,word-count ,previous-word ,segment-start-pos))
              (break "].verb  next case.~
                   ~%The bracket opening the segment is ~a.~
                   ~%The word is ~a~
                   ~%The segment so far is \"~{~a ~}\" "
                     bracket-opening-segment (pos-terminal position)
                     (words-between segment-start-pos position)))
             (else
              t)))))


      ((eq ]  aux].)
       (if (or (eq (first *bracket-opening-segment*) .[modal )
               (eq (first *bracket-opening-segment*) .[verb ))
         nil
         t))
       

      ((eq ]  mvb].) 
       ;;(break "mvb]. at ~a" position)
       (cond
        ((and (participle? previous-word)
              (participle? next-word))
         t)

        ((and *bracket-closing-segment*
              (eq *bracket-closing-segment* ].verb))
         nil )
        (*suppress-verb-reading*
         (if (eq *suppress-verb-reading*
                 (pos-terminal (chart-position-before position)))
           ;; if the flag is still relevant, then we ignore this
           ;; instance of the bracket
           nil
           t ))
        (t t)))



           ((eq ]  ].adverb)
            (if (or (eq *bracket-closing-segment* ].verb )
                    (eq *bracket-closing-segment* ].adverb )
                    (eq (first *bracket-opening-segment*) .[verb )
                    (eq (first *bracket-opening-segment*) .[np ) ;; "a very pleasant day"
                    (eq (first *bracket-opening-segment*) .[article ))
              nil
              t))



           ((eq ] ].adjective)
            (cond 
             ((or (eq bracket-opening-segment mvb.[) 
                  (eq bracket-opening-segment .[|that|)) 
              t)
             ((or (eq bracket-opening-segment preposition.[)
                  (eq bracket-opening-segment .[np-vp)
                  (segment-started-as-np?)
                  (eq bracket-opening-segment .[adverb)) ;; adverbs modify adjectives
              nil)
             ((segment-started-as-vg?)
              t)
             ((eq bracket-opening-segment punctuation.[)
              ;; that's weak, but for "xx-based . regional office" it's the
              ;; only evidence that's explicit.
              nil)
             ((eq bracket-opening-segment phrase.[)
              ;; np's are usually sentence initial, so keep it open
              nil)
             ((= 0 word-count) nil) ;; something should follow this adjective
             (t (if *break-on-new-bracket-situations*
                  (then
                   (push-debug `(,position ,*bracket-opening-segment*
                                 ,word-count ,previous-word ,segment-start-pos))
                   (break "].adjective  next case.~
                         ~%The bracket opening the segment is ~a.~
                         ~%The word with the ambiguous bracketing is ~a~
                         ~%The segment so far is \"~{~a ~}\" "
                       bracket-opening-segment (pos-terminal position)
                       (words-between segment-start-pos position)))
                  (else
                   nil)))))

 

           ;;--- the ambiguous cases ---

           ((eq ] ].np-vp)
;;            (push-debug `(,position ,*bracket-opening-segment*
;;                              ,word-count ,previous-word ,segment-start-pos))
;;            (break "].np-vp")
            (cond
              ;; reasons to interpret it as a verb and continue
              ;; a segment that's going to be a VG.
              ((or (eq *bracket-closing-segment* ].verb )
                   (eq (first *bracket-opening-segment*) .[verb )
                   (eq (first *bracket-opening-segment*) .[modal ))
               nil )

              ((eq bracket-opening-segment mvb.[)
               ;; reason to end because we've probably got a noun
               t)

              ;; reasons to interpret it as a verb and terminate an np segment
              ((eq bracket-opening-segment .[|that|) t)

              ;; We're probably coming out of an apositive so it's a verb
              ;; and we terminate anything that's ongoing
              ((eq (word-symbol previous-word) 'word::comma)
               t)

              ;; Reasons to interpret it as a noun and continue
              ;; a segment that's going to be an np
              ((eq bracket-opening-segment .[np) nil) ;; "some people"
              ((eq bracket-opening-segment .[article) nil) ;; "the quarentee"
              ((eq bracket-opening-segment .[adjective) nil) ;; "full fare"
              ((eq bracket-opening-segment .[adj-verb) nil) ;; "select flights"
              ((eq bracket-opening-segment conjunction.[) nil)
              ((word-is-np-modifier previous-word) nil)

              ((or (eq bracket-opening-segment .[np-vp)
                   (eq bracket-opening-segment np-vp.[)) ;; differentiate?
               nil)
              ;; On the theory that if the first word was a verb then we'd
              ;; have two main verbs in a row, which is implausible, 
              ;; so we interpret the first word as a noun
              ;; /// Change the lead bracket ??

              ((eq bracket-opening-segment .[adverb)
               ;; tricky one since so many can go either way. ///maybe differentiate
               ;; between "ly" and other adverbs?  Or just do the problematic ones
               ;; by hand
               t)

              ((eq bracket-opening-segment phrase.[) t) ;; after a period
              ((eq bracket-opening-segment preposition.[) t) ;; after preposition

              ((and (eq bracket-opening-segment punctuation.[)
                    (> word-count 1))
               ;; nps get longer more easily than vgs
               nil)

              (t (if *break-on-new-bracket-situations*
                   (then
                    (push-debug `(,position ,bracket-opening-segment
                                  ,word-count ,previous-word ,segment-start-pos))
                    (break "].np-vp next case.~
                         ~%The bracket opening the segment is ~a.~
                         ~%The word with the ambiguous bracketing is ~a~
                         ~%The segment so far is \"~{~a ~}\" "
                           bracket-opening-segment (pos-terminal position)
                           (words-between segment-start-pos position)))
                   (else
                    nil )))))



           ((eq ]  np-vp].) 
            (cond
             ((eq bracket-opening-segment .[np)
              ;; probably too strong, but ok going-in position. This says
              ;; that it's time to shift to a verb interpretation
              t)
             ((eq bracket-opening-segment .[article)
              nil)
             ((eq bracket-opening-segment .[np-vp)
              ;; This is a tricky one since it's got the greatest possiblities
              ;; for getting dead-wrong. Will want to find more features
              ;; to use here
              nil)
             ((and (eq bracket-opening-segment np-vp.[)
                   (= word-count 0)) ;; keep going
              nil)
             ((and (eq bracket-opening-segment np-vp].)
                   (> word-count 0)
                   (only-aux-or-modal-to-left 
                   *where-the-last-segment-started* position))
              ;; It's probably the main verb
              nil)
             ((and (eq bracket-opening-segment .[verb)
                   (word-definitively-starts-nps next-word))
              ;; we switch from a vg to an np
              t)
             ((and (eq bracket-opening-segment .[verb)
                   (word-is-an-adverb next-word))
              nil)
             ((eq bracket-opening-segment .[adverb)
              ;; This is an odd case, "made too many flights tardy" looking
              ;; at the ] from "flights".  Need more information.
              nil)
             ((eq bracket-opening-segment .[modal) ;; "will know"
              nil)

             ((and (eq bracket-opening-segment punctuation.[)
                    (> word-count 1))
               ;; nps get longer more easily than vgs
               nil)

             (t (if *break-on-new-bracket-situations*
                  (then
                   (push-debug `(,position ,bracket-opening-segment
                                 ,word-count ,previous-word ,segment-start-pos))
                   (break "np-vp.] next case.~
                        ~%The bracket opening the segment is ~a.~
                        ~%The word with the ambiguous bracketing is ~a~
                        ~%The segment so far is \"~{~a ~}\""
                          bracket-opening-segment (pos-terminal position)
                          (words-between segment-start-pos position)))
                  (else
                   ;; Need more content to answer these cases correctly,
                   ;; e.g. for the 'verb' that starts the np "undiscounted tickets"
                   ;; and confuses the np-vp]. on tickets. Need to settle
                   ;; other things before putting that content in, so just
                   ;; punting the answer here
                   nil)))))
            


           ((eq ]  ].adj-verb)
            (cond
             ((and previous-word
                   (word-definitively-ends-segment previous-word))
              t)
             ((segment-started-as-np?) ;; adjective reading
              nil)
             ((segment-started-as-vg?) ;; verb reading
              nil)
             ((eq bracket-opening-segment mvb.[)
              ;; if we believe this, then we've closed off a verb
              ;; so we should treat it a an adjective
              nil)
             ((eq bracket-opening-segment preposition.[)
              ;; it's an adjective. Verbs don't follow prepositions
              nil)
             (t (if *break-on-new-bracket-situations*
                  (then
                   (push-debug `(,position ,*bracket-opening-segment*
                                 ,word-count ,previous-word ,segment-start-pos))
                   (break "].adj-verb next case.~
                         ~%The bracket opening the segment is ~a.~
                         ~%The word with the ambiguous bracketing is ~a
                         ~%The segment so far is \"~{~a ~}\""
                          bracket-opening-segment (pos-terminal position)
                          (words-between segment-start-pos position)))
                  (else
                   nil)))))
             


           ((eq ]  ].adj-adv) ;; e.g. "heavy", "asleep"
            (cond
             ;; We're either finishing off before the start of a VG (t)
             ;; or coninuing an NP (nil)
             ((segment-started-as-np?) nil)
             ((segment-started-as-vg?) t)   ;; "was asleep" - strand the verb
             ((eq bracket-opening-segment preposition.[)
              (refine-bracket-at-segment-boundary preposition.[ .[adjective)
              nil)
             ((eq bracket-opening-segment .[|that|)
              (refine-bracket-at-segment-boundary preposition.[ .[adjective)
              t)
             ((eq bracket-opening-segment punctuation.[)
              nil)
             (t (if *break-on-new-bracket-situations*
                  (then
                   (push-debug `(,position ,*bracket-opening-segment*
                                 ,word-count ,previous-word ,segment-start-pos))
                   (break "].adj-adv next case.~
                         ~%The bracket opening the segment is ~a.~
                         ~%The word with the ambiguous bracketing is ~a
                         ~%The segment so far is \"~{~a ~}\" "
                       bracket-opening-segment (pos-terminal position)
                       (words-between segment-start-pos position)))
                  (else
                   nil)))))
          

           (t (break "Unclassified closing bracket: ~A" ])
              :foo)))

    (if ends-the-segment?
      (then
       (setq *right-segment-boundary* position)
       (setq *bracket-closing-segment* ])
         ;; zero'd by pts when all of the operations on the
         ;; segment are finished
       (setq *bracket-closing-previous-segment* ])
         ;; checked (and then zero'd) in //
         ;;   at the beginning of the following segment
       (tr :segment-ends position ])

       (when *bracket-opening-segment*
         (setq *bracket-opening-previous-segment*
               (car *bracket-opening-segment*))
         (tr :ending-segment-zeroing-opening-bracket)
         (deallocate-kons *bracket-opening-segment*)
         (setq *bracket-opening-segment* nil))

       (let ((current-status (pos-assessed? position)))
         ;; sanity check that the status flag hasn't deviated from
         ;; one of the values that it would be sensible for it
         ;; to have at this point.  The flag is set in the
         ;; Scan fsa.
         (ecase current-status
           (:]-from-word-after-checked)
           (:]-from-prior-word-checked)
           (:]-from-edge-before-checked)
           (:]-from-edge-after-checked)
           ))

       ;; /// bracket-directed actions go here ///
       )

      (else
       (tr :segment-does-not-end ] position)))

    ends-the-segment? ))



;;;--------------------------------------
;;; Lexically-specific boundary criteria
;;;--------------------------------------

(defun check-for-verb-preposition-pair (position-of-leading-prep-bracket)
  ;; called from bracket-ends-the-segment? when the potential new segment was opened
  ;; by a mvb.[
  (let* ((preposition (word-after position-of-leading-prep-bracket))
	 (verb (find-verb-at-mvb-end position-of-leading-prep-bracket))
	 (verb-edge (when verb (edge-ending-at position-of-leading-prep-bracket)))
	 (verb-category (when verb-edge (edge-category verb-edge)))
	 (rule (when verb-category (multiply-labels verb-category preposition))))
;;      #<PSR1167  lie/down-down ->  lie/down "down">

    (tr :check-for-verb-preposition-pair verb preposition)
    (cond
      ((null verb) ;; preposition ends the segment
       (tr :verb-prep-pair/no-verb)
       t)
      (rule
       (let ((edge-over-preposition ;; extending for "out of" polyword goes here
	      (make-edge-over-literal
	       preposition
	       position-of-leading-prep-bracket 
	       (chart-position-after position-of-leading-prep-bracket)
	       (rule-set-for preposition))))
	 (let ((spanning-edge
		(make-completed-binary-edge 
		 (edge-ending-at position-of-leading-prep-bracket)
		 edge-over-preposition
		 rule)))
	   (tr :verb-prep-pair/edge spanning-edge)
	   nil))) ;; will scan recover from this ??
      (t
       (tr :verb-prep-pair/no-combination)
       t))))

;; move somewhere it's likely to be found
(defun find-verb-at-mvb-end (position-to-the-right)
  ;; surely too simple
  (word-before position-to-the-right))



;;;-------------------------------------------
;;; Reconsidering existing brackets after PNF
;;;-------------------------------------------

(defun sort-out-name-bracketing-state (start end edge)
  ;; Called from pnf/scan-classify-record after it's formed an edge
  ;; So we know that a company or other sort of capitalized sequence
  ;; has just finished. This lets us do an intervention based on
  ;; the concrete fact of the proper name to over-rule the judgments
  ;; that are in place because of heuristics that ran earlier.
  (let ((bracket-kons *bracket-opening-segment*))
    (when bracket-kons
      (tr :PNF-resetting-open-bracket edge start end (car bracket-kons))
      (rplaca bracket-kons .[np))
    ;; Also we need to end the segment, and the final name-
    ;; element word is quite unlikely to have associated brackets
    (let ((bracket np].))
      (tr :PNF-adding-close-bracket end bracket)
      (do-boundary/ends-before 'PNF end bracket))))


    


