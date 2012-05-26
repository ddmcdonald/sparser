;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2003,2011-2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "judgements"
;;;   Module:  "grammar;rules:brackets:"
;;;  Version:  1.8 May 2012

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

(in-package :sparser)

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
           ;;(tr :treetop.[-moves-boundary p)
           (setq *bracket-opening-segment* (kcons b p)
                 *left-segment-boundary* p))
          (t
           (tr :[-ignored/left-boundary-already-in-place b p))))

        (*suppress-verb-reading*
         (cond ((eq b .[verb)
                (if (eq *suppress-verb-reading*
                        (pos-terminal (chart-position-before p)))
                  (tr :[-ignored/suppressed-verb b p)
                  (else
                    (setq *suppress-verb-reading* nil)
                    (interpret-open-bracket-as-segment-start b p))))
               (t (setq *suppress-verb-reading* nil)
                  (interpret-open-bracket-as-segment-start b p))))           

        ((eq b .[verb)
         (if (eq *bracket-opening-previous-segment* .[verb)
           (then
             (tr :segment-reopened-by-verb-verb
                 p b *where-the-last-segment-started*)
             (setq *left-segment-boundary*
                   *where-the-last-segment-started*))
           (interpret-open-bracket-as-segment-start b p)))

        (t (interpret-open-bracket-as-segment-start b p))))



(defun interpret-open-bracket-as-segment-start (b p)
  (tr :[-sets-left-boundary p b)
  (setq *bracket-opening-segment*
        (if *bracket-opening-segment*
          (strongest-version-of-left-boundary-bracket b p)
          (kcons b p)))
  (setq *left-segment-boundary* p))




;;;---------------------------------
;;; consequences of  ].<w> or <w>.]
;;;---------------------------------

(defun bracket-ends-the-segment? (] position)
  ;; The words use to indicate the start of VGs or
  ;; NPs can occur several in a row (e.g. "the seven ...").  
  ;; Only the first of these legitimately ends a segment.

  (tr :bracket-ends-the-segment? ] )
  (let* ((bracket-opening-segment (first *bracket-opening-segment*))
         (segment-start-pos *left-segment-boundary*)
         (word-count (- (pos-token-index position)
                        (pos-token-index *left-segment-boundary*)))
         (previous-word (word-before position))
         (ends-the-segment?
	  (cond
           ((eq ]  phrase].)   t)
          
           ((eq ]  ].phrase)   t)
          
           ((eq ]  np].)  t)
	  
           ((eq ] ].proper-noun) t)

           ((eq ] ].quantifier)
            (if (or (eq (first *bracket-opening-segment*) .[np )
                    (eq (first *bracket-opening-segment*) .[article )
                    (eq bracket-opening-segment .[adverb)) ;; "very few"
              nil
              t))

           ((eq ] ].preposition) 
            (if (eq (car *bracket-opening-segment*) mvb.[)
              ;; We've just finished a segment because a verb said to do so.
              ;; In principle there could be interveening adverbs, so this may
              ;; need tuning if they aren't already folded into the VG that
              ;; we've just finished. 
              (check-for-verb-preposition-pair position)
              t))

           ((eq ] preposition].) t)

           ((eq ]  ].treetop)  t)

           ((eq ] *close-before-newline*)  t)

           ((eq ]  ].text-segment)  t)


           ((eq ]  ].verb)	   ;(break "at ].verb at ~a" position)
            (cond 
             ((or (eq *bracket-closing-segment* ].verb )
                  (eq (first *bracket-opening-segment*) .[verb )
                  (eq (first *bracket-opening-segment*) .[modal ))
              nil )

             ((or (eq (first *bracket-opening-segment*) .[np )
                  (eq (first *bracket-opening-segment*) .[article ))
              ;; e.g. "the sounds" -- where "sounds" can be a verb.
              ;; A word that is noun/verb ambiguous will lay down
              ;; brackets for a verb -- this is a case where we can
              ;; know definitively that the noun sense is the right one.
              (if (np-segment-contains-more-than-article? position)
                ;; but we include a heuristic for the case that the
                ;; ambig. is more than one word away from the article,
                ;; in which case we go with the verb interpretation.
                t
                (else
                 ;; we'll have to ignore more brackets associated
                 ;; with this word -- this flag provides the link
                 (setq *suppress-verb-reading*
                       (pos-terminal position))
                 nil )))

             ((eq (first *bracket-opening-segment*) .[adverb)
              nil )

             (t t)))

           ((eq ]  aux].)
            (cond ((eq (first *bracket-opening-segment*) .[modal )
                   nil)
                  (t t)))
       
           ((eq ]  mvb].)	       ;(break "mvb]. at ~a" position)
            (cond ((and *bracket-closing-segment*
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
            (cond ((eq bracket-opening-segment mvb.[) t)
                  ((eq bracket-opening-segment preposition.[) nil)
                  ((= 0 word-count) nil) ;; something should follow this adjective
                  (t (push-debug `(,position ,*bracket-opening-segment*
                                   ,word-count ,previous-word ,segment-start-pos))
                     (break "Next case: does ].adjective end the segment"))))
          
           ((eq ]  ].punctuation)
            t)
          
           ((eq ] ].conjunction)
            t)

           ((eq ] ].np-vp)
            (cond 
             ((or (eq *bracket-closing-segment* ].verb )
                  (eq (first *bracket-opening-segment*) .[verb )
                  (eq (first *bracket-opening-segment*) .[modal ))
              nil )
             ((eq bracket-opening-segment .[np) nil) ;; "some people"
             ((eq bracket-opening-segment .[adjective) nil) ;; "full fare"
             ((eq bracket-opening-segment phrase.[) t) ;; after a period
             ((eq bracket-opening-segment preposition.[) t) ;; after preposition
             (t (push-debug `(,position ,*bracket-opening-segment*
                              ,word-count ,previous-word ,segment-start-pos))
                (break "].np-vp next case"))))

           ((eq ] np-vp].) 
            ;; (break " seeing a np-vp]., look at opening")
            ;; bracket-opening-segment -- 
            ;; .[np   .[np-vp  .[adjective  treetop.[  mvb.[  .[article
            nil)  ;; t)

          
           (t (break "Unclassified closing bracket: ~A" ])
              :foo))))

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





(defun np-segment-contains-more-than-article? (position)
  ;; We are within an np -- probably one started with an article
  ;; given that the caller is Bracket-ends-the-segment? -- and
  ;; we want to know whether there is at least one word within
  ;; the segment after the article. That comes down to this
  ;; position being at least two greater than the position at
  ;; which the segment starts.
  (>= (- (pos-token-index position)
         (pos-token-index *left-segment-boundary*))
      2))



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



;;;--------------------------------------
;;; Lexically-specific boundary criteria
;;;--------------------------------------

(defun check-for-verb-preposition-pair (position-of-leading-prep-bracket)
  ;; called from Bracket-ends-the-segment? when the potential new segment was opened
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

