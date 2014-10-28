;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2010-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "psp"
;;;   Module:  "objects;traces:"
;;;  Version:  1.4 October 2014

;; 1.0 (10/5/92 v2.3) added trace routines
;; 1.1 (4/23/93) added still more to go with the revised protocol
;; 1.2 (6/14) tweeked msgs and added more routines to fit brackets
;;      adjustments
;; 1.3 (9/14) added more routines to track down why digit sequences are off
;; 1.4 (5/6/94) put in network-flow traces. 5/12 added more, or'd in some cases
;;      with *trace-brackets* and *trace-segments*. 7/12 another such case
;;     (7/26) extended with cases for edges returned by fsas
;;     ... 10/31 adding lots of cases for forest and treetop operations
;;     (1/5/95) added bracket traces for the [-on..? check. 1/23 they needed
;;      another case.
;;     (4/24) added some variants for Adjudicate-new-open-bracket
;;     (5/4) added more network cases.  5/19 added da cases
;;     (7/12) added more network-flow traces. (3/17/05) fixed case statements.
;;     (2/13/07) added traces for conjunction/TT transition.
;;     (5/30/09) added traces for verb+prep combination
;;     (6/2/10) added traces for new conditions in scan.
;;     (12/14/10) fixed capitalization bugs  (11/2/12) added PNF-resetting-open-bracket
;;      Continued adding and tweaking through 12/5/12. 
;;     (2/10/13) added trace-status-history. Bracket variant 4.1.13
;;     (5/12/14) Bunch of C3 traces. 8/31/14 Moved forest traces out to forest.
;;     Adding traces for the new code through 10/22/14

(in-package :sparser)

;;;----------
;;; packages
;;;----------

(defun trace-network ()
  (setq *trace-network* t))

(defun untrace-network ()
  (setq *trace-network* nil))


(defun trace-network-flow ()
  (setq *trace-network-flow* t))

(defun untrace-network-flow ()
  (setq *trace-network-flow* nil))


(defun trace-brackets ()
  (setq *trace-brackets* t)
  (trace-segments))

(defun untrace-brackets ()
  (setq *trace-brackets* nil)
  (untrace-segments))


(defun trace-segments ()
  (setq *trace-segments* t))

(defun untrace-segments ()
  (setq *trace-segments* nil))



(defun trace-status-history ()
  (setq *trace-status-history* t))

(defun untrace-status-history ()
  (setq *trace-status-history* nil))


;;;-------
;;; cases
;;;-------

(deftrace :scan (word position)
  ;; called inside Scan-next-position after it has added a terminal
  ;; to the chart
  (when *trace-network*
    (trace-msg "Scanned ~S at p~A"
               (let ((pname (word-pname word)))
                 (if (member :use-symbol-name-when-printing
                             (word-plist word))
                   (symbol-name (word-symbol word))
                   pname))
               (pos-token-index position))))


(deftrace :scan-dispatch (next-pos status)
  (when *trace-network*
    (trace-msg "Figuring out what to do at p~A~
                ~%   which has the status ~A"
               (pos-token-index next-pos) status)))




;;;---------- laying brackets down

(deftrace :switched-to-capitalized-variant (old new)
  ;; called from introduce-{trailing/leading/}brackets
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Getting brackets from \"~a\" instead of \"~a\""
               (pname-for new) (pname-for old))))

(deftrace :brackets-introduced (word)
  ;; called from introduce-{trailing/leading/}brackets
  (when (or *trace-network* *trace-brackets*)
    ;; the specific cases are given by trace msgs in the placement
    ;; routines, with the traces given below
    (trace-msg "~A introduces brackets:" word)))

(deftrace :leading-brackets-introduced (word)
  ;; called from introduce-leading-brackets
  (when (or *trace-network* *trace-brackets*)
    ;; the specific cases are given by trace msgs in the placement
    ;; routines, with the traces given below
    (trace-msg "~A introduces leading brackets:" word)))

(deftrace :trailing-brackets-introduced (word)
  ;; called from Introduce-{trailing/leading/}brackets
  (when (or *trace-network* *trace-brackets*)
    ;; the specific cases are given by trace msgs in the placement
    ;; routines, with the traces given below
    (trace-msg "~A introduces trailing brackets:" word)))

(deftrace :no-brackets-introduced (word)
  ;; called from Introduce-brackets
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "~A does not introduce any brackets" word)))

(deftrace :begins-before (position bracket)
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "   Placing ~A on starts-here of p~A"
               (b-symbol bracket) (pos-token-index position))))

(deftrace :ends-before (position bracket)
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "   Placing ~A on ends-here of p~A"
               (b-symbol bracket) (pos-token-index position))))

(deftrace :begins-after (position bracket)
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "   Placing ~A on starts-here of p~A"
               (b-symbol bracket) (pos-token-index position))))

(deftrace :ends-after (position bracket)
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "   Placing ~A on ends-here of p~A"
               (b-symbol bracket) (pos-token-index position))))



;;;---------- looking at brackets

(deftrace :]-noted (] position)
  ;; called from Check-for-]-on-position
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "There is a ~A on p~A"
               (b-symbol ]) (pos-token-index position))))

(deftrace :no-brackets-in-front-of (position)
  ;; called from Check-for-]-on-position
  (when *trace-network*
    (trace-msg "There is no close bracket at p~A"
               (pos-token-index position))))



;;--- Adjudicate-new-open-bracket

(deftrace :[-sets-left-boundary (p b)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets* *trace-segments*)
    (trace-msg "Setting the left segment boundary to p~A~
                ~%   because of the ~A in front of ~A"
               (pos-token-index p) 
               (b-symbol b)
               (pos-terminal p))))

(deftrace :punct.[-moves-boundary (p)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Moving the left boundary to p~A~
                ~%  because of the punctuation in front of it"
               (pos-token-index p))))

(deftrace :treetop.[-moves-boundary (p)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Moving the left boundary to p~A~
                ~%  because of the treetop.[ in front of it"
               (pos-token-index p))))

(deftrace :pronoun.[-moves-boundary (p)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Moving the left boundary to p~A~
                ~%  because of the pronoun.[ in front of it"
               (pos-token-index p))))


(deftrace :[-ignored/left-boundary-already-in-place (b p)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Ignoring the ~A at p~A in front of ~A~
                ~%   because the left boundary is already in ~
                place at p~A" b (pos-token-index p)
               (word-string (pos-terminal p))
               (pos-token-index *left-segment-boundary*))))

(deftrace :[-ignored/suppressed-verb (b p)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Ignoring the ~A at p~A in front of \"~A\"~
                ~%   because of verb suppression"
               (b-symbol b) (pos-token-index p)
               (word-string (pos-terminal p)))))

(deftrace :segment-reopened-by-verb-verb (p-here b p-back-there)
  ;; called from Adjudicate-new-open-bracket
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Ignoring the ~A on p~A because the ~
                ~%   previous segment was started by .[verb~
                ~%   Resetting the left boundary back to p~A"
               b (pos-token-index p-here)
               (pos-token-index p-back-there))))

(deftrace :opening-bracket-refined (original replacement)
  ;; called from refine-bracket-at-segment-boundary
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Refining seg-boundary brackets: ~a => ~a"
               original replacement)))

(deftrace :opening-bracket-at-p (position bracket)
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "At p~a opening bracket = ~a"
               (pos-token-index  position) bracket)))

(deftrace :ending-segment-zeroing-opening-bracket ()
  ;; called from bracket-ends-the-segment?
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Ending the segment, zero'ing ~
                *bracket-opening-segment*")))


(deftrace :]-ignored/no-left-boundary-yet (] word p)
  ;; called from Check-for-]-on-position
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "Ignoring the ~A at p~A in front of ~A~
                ~%   because the left-boundary of the next segment ~
                hasn't been established yet."
               ] (pos-token-index p) word)))


(deftrace :segment-ends (position bracket)
  ;; called from Bracket-ends-the-segment?
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Segment started at p~A ended at p~A by ~A"
               (pos-token-index *left-segment-boundary*)
               (pos-token-index position) bracket)))

(deftrace :segment-does-not-end (] position)
  ;; called from Bracket-ends-the-segment?
  (when (or *trace-network* *trace-segments*)
    (trace-msg "~A does not end the segment at p~A"
               (b-symbol ]) (pos-token-index position))))



;;--- asking questions about brackets and positions

(deftrace :asking-[-on-pos (p word)
  ;; called from ]-on-position-because-of-word?
  (when (or *trace-brackets* *trace-network*)
    (trace-msg "Asking whether there is a [ on p~A because of '~A'"
               (pos-token-index p)
               (etypecase word
                 (word (word-pname word))
                 (edge (edge-category word))
                 (polyword (pw-pname word))
                 (referential-category (cat-symbol word))
                 (category (cat-symbol word))))))

(deftrace :asking-]-on-pos (p word)
  ;; called from ]-on-position-because-of-word?
  (when (or *trace-brackets* *trace-network*)
    (trace-msg "Asking whether there is a ] on p~A because of '~A'"
               (pos-token-index p)
               (etypecase word
                 (word (word-pname word))
                 (edge (edge-category word))
                 (polyword (pw-pname word))
                 (referential-category (cat-symbol word))
                 (category (cat-symbol word))))))

(deftrace :bracket-is-there ()
  ;; called from ]-on-position-because-of-word?
  (when (or *trace-brackets* *trace-network*)
    (trace-msg "   there is")))

(deftrace :bracket-isnt-there ()
  ;; called from ]-on-position-because-of-word?
  (when (or *trace-brackets* *trace-network*)
    (trace-msg "   no, there isn't")))






;;;---------- other scan-level stuff

(deftrace :]-on-position-returned-by-PNF (pos)
  ;;  called from Check-word-level-fsa-trigger
  (when (or *trace-network* *trace-brackets*)
    (trace-msg "There is a ] on the position p~A that PNF ~
                returned at" (pos-token-index pos))))



(deftrace :after-pnf (position-returned status)
  ;; called from Adjudicate-after-pnf
  (when *trace-network*
    (trace-msg "PNF ended its sequence at p~A, which is ~A"
               (pos-token-index position-returned) status)))

(deftrace :continue-after-pnf-returned-nil (pos-before status)
  ;; called from Check-PNF-and-continue in the case that
  ;; isn't handled by Adjudicate-after-pnf
  (when *trace-network*
    (trace-msg "PNF returned nil. Pos-before: ~A, status: ~A"
               (pos-token-index pos-before) status)))

(deftrace :adjudicating-fsa-result (word status
                                    pos-before pos-after-fsa
                                    edge)
  ;; called from Adjudicate-result-of-word-fsa before it dispatches
  (when *trace-network*
    (trace-msg "An FSA ended at p~A, whose status is ~A.~
                ~%  it started at p~A with \"~A\"~
                ~%  there is an edge over the span:~%    ~A"
               (pos-token-index pos-after-fsa) status
               (pos-token-index pos-before) (word-pname word)
               edge)))



(deftrace :fsa-returned-an-edge (edge)
  ;;  called from Check-word-level-fsa-trigger
  (when *trace-network*
    (trace-msg "The fsa formed the edge ~A" edge)))

(deftrace :pos-already-had-fsas-done (pos)
  ;;  called from Check-word-level-fsa-trigger
  (when *trace-network*
    (trace-msg "p~A has already had its FSAs checked"
               (pos-token-index pos))))


(deftrace :actions-on-word (word position-before)
  ;; called from word-level-actions before any of them are taken
  (when *trace-network*
    (trace-msg "Doing word-level actions on \"~A\" at p~A"
               (word-pname word)
               (pos-token-index position-before))))


(deftrace :terminate-chart-process ()
  ;; called from check-for-segment-start
  (when *trace-network*
    (trace-msg "Chart-level processing terminated")))




;;;---------- pts

(deftrace :pts-coverage (symbol)
  ;; called from pts
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Post-scan characterization of segment between p~A and p~A: ~A"
               (when *left-segment-boundary*
                 (pos-token-index *left-segment-boundary*))
               (pos-token-index *right-segment-boundary*)
               symbol)))


(deftrace :segment-completely-finished ()
  (when *trace-network*
    (trace-msg "No further actions on the segment between p~A ~
                and p~A"
               (pos-token-index *left-segment-boundary*)
               (pos-token-index *right-segment-boundary*))))


(deftrace :returning-to-word-level-from-null-span (p)
  (when (or *trace-network* *trace-network-flow*)
    (trace-msg "Returning to the word level at p~A from a ~
                null span" (pos-token-index p))))


;;;---------- installing edges 

(deftrace :installing-edges-over-word/un/known (word rule-set)
  ;; called at the start of install-terminal-edges
  (when *trace-network*
    (if rule-set
      (trace-msg "Installing any terminal edges over the known ~
                  word ~A" word)
      (trace-msg "\"~A\" is unknown, looking for property-based ~
                  terminal edges" (word-pname word)))))

(deftrace :mentioned-in-rule (word)
  ;; called from preterminals/word
  (when *trace-network*
    (trace-msg "\"~A\" is a literal in some rule/s" (word-pname word))))

(deftrace :has-single-term-rewrites (word rules)
  ;; called from preterminals/word
  (when *trace-network*
    (trace-msg "\"~A\" is rewritten by ~A rules"
               (word-pname word) (length rules))))



(deftrace :install/already-spanned (word)
  ;; called from install-terminal-edges
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] \"~A\" is already spanned"
               (word-pname word))))


(deftrace :install/has-rule-set (word)
  ;; called from install-terminal-edges
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] \"~A\" has a rule set"
               (word-pname word))))


(deftrace :install/no-rule-set (word)
  ;; called from install-terminal-edges and Check-caps-variations
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] \"~A\" does not have a rule set"
               (word-pname word))))


(deftrace :install/has-variants-with-other-capitalization (word)
  ;; called from Preterminals-for-known
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] \"~A\" has variations that are ~
                capitalized" (word-pname word))))

(deftrace :install/actual-capitalization (caps-state position)
  ;; called from Known-preterminals/check-caps
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] The actual capitalization of p~A is ~A"
                (pos-token-index position) caps-state)))

(deftrace :install/caps-variations-are (list-of-words)
  ;; called from Check-caps-variations
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install] The variation(s) is/are: ~A" list-of-words)))

(deftrace :install/one-doesnt-match-actual-state ()
  ;; called from Check-caps-variations
  (when (or *trace-pnf* *trace-network*)
    (trace-msg "[install]   it doesn't match the actual capitalization")))




(deftrace :edges-installed (edges word)
  ;; called at the end of install-terminal-edges
  (when (or *trace-pnf* *trace-network*)
    (if edges
      (trace-msg "installed ~A edges over ~A"
                 (length edges) word)
      (trace-msg "no edges installed over ~A"
                 word))))





;;;---------- at the end of segments

(deftrace :parsing-of-segment-finished ()
  ;; called from segment-parsed1
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Finished running the phrase structure rules over the~
                ~%  segment between p~A and p~A"
               (when *left-segment-boundary*
                 (pos-token-index *left-segment-boundary*))
               (pos-token-index *right-segment-boundary*))))



;;;-----------------
;;; debris analysis
;;;-----------------

(deftrace :looking-for-analyzable-debris (start-pos end-pos)
  ;; called from Walk-pending-treetops-for-debris-analysis
  (when (or *trace-network*)
    (trace-msg "Looking for analyzable debris between p~A and p~A"
               (pos-token-index start-pos)
               (pos-token-index end-pos))))






;;----------- possessive maneuver

(deftrace :possessive-finished ()
  (when *trace-network*
    (trace-msg "[possessive] finished")))




;;------------------------------------------------------
;;------------ the ones just used for the old protocol



(deftrace :assess-terminal (word position next-position)
  ;; called from Assess-position
  (when *trace-network*
    (trace-msg "[N] Assessed ~A between p~A and p~A"
               (let ((pname (word-pname word)))
                 (if (member :use-symbol-name-when-printing
                             (word-plist word))
                   (symbol-name (word-symbol word))
                   pname))
               (pos-token-index position)
               (pos-token-index next-position))))


(deftrace :segment-delimited (delimiting-start segment-start end-pos)
  (declare (ignore delimiting-start))
  (when (or *trace-network*
            *trace-segments*
            *trace-segment-summary*)
    (trace-msg "Segment scanned: p~A \"~A\" p~A"
               (pos-token-index segment-start)
               (terminals-in-segment/one-string segment-start end-pos)
               (pos-token-index end-pos))))






;;------------ low level function flow trace --------------

(deftrace :inititate-top-edges-protocol ()
  (when *trace-network-flow*
    (trace-msg "[scan] Inititate-top-edges-protocol")))


(deftrace :scan-next-segment (p)
  (when (or *trace-network-flow* *trace-segments*)
    (trace-msg "[scan] scan-next-segment ~A" p)))


(deftrace :figure-out-where-to-start-on-next-pos (p)
  (when *trace-network-flow*
    (trace-msg "[scan] figure-out-where-to-start ~A" p)))


(deftrace :scan-next-pos (p)
  (when *trace-network-flow*
    (trace-msg "[scan] scan-next-pos ~A" p)))

(deftrace :status-set (keyword p)
  ;; Called in set-status
  (when (or *trace-network-flow* *trace-set-status*)
    (trace-msg "[scan] Setting status of p~a to :~a"
               (pos-token-index p) keyword)))


(deftrace :introduce-leading-brackets (word)
  (when *trace-network-flow*
    (trace-msg "[scan] introduce-leading-brackets \"~A\""
               (typecase word
                 (word (word-pname word))
		 (polyword (pw-pname word))
                 ((or category referential-category mixin-category)
                  (cat-symbol word))
		 (otherwise
		  (break ":introduce-leading-brackets - new type ~a~%~a"
			 (type-of word) word))))))


(deftrace :check-for-]-from-word-after (w p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-]-from-word-after p~A \"~A\""
               (pos-token-index p) (word-pname w))))

(deftrace :check-for-[-from-word-after (w p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-[-from-word-after p~A \"~A\""
               (pos-token-index p) (word-pname w))))


(deftrace :end-of-source-check (w p)
  (declare (ignore w))
  (when *trace-network-flow*
    (trace-msg "[scan] check for end of source ~A" p)))



(deftrace :adjudicate-after-pnf (position-returned)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-after-pnf at p~A"
               (pos-token-index position-returned))))

(deftrace :word-fsas-done-by-pnf (p)
  (when *trace-network-flow*
    (trace-msg "[scan] word-fsas-done-by-pnf: p~A"
               (pos-token-index p))))

(deftrace :adjudicate-after-successfur-pattern-scan (pos-before pos-after)
  (when *trace-network-flow*
    (trace-msg "[scan] Adjudicating after pattern-scan succeeded ~
                between p~a and p~a"
               (pos-token-index pos-before) (pos-token-index pos-after))))

(deftrace :check-for-polywords (word position-before)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-polywords starting with \"~a\" ~
                at p~a" word (pos-token-index position-before))))

(deftrace :check-for/initiate-scan-patterns (p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for/initiate-scan-patterns: p~A"
               (pos-token-index p))))

(deftrace :check-for-uniform-no-space-sequence (pos-before)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-uniform-no-space-sequence ~a" 
               pos-before)))

(deftrace :check-word-level-fsa-trigger (p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-word-level-fsa-trigger ~A" p)))

(deftrace :cwlft-cont (p)
  (when *trace-network-flow*
    (trace-msg "[scan] cwlft-cont ~A" p)))

(deftrace :check-PNF-and-continue (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Check-PNF-and-continue ~A" p)))




(deftrace :adjudicate-result-of-word-fsa (word)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-result-of-word-fsa ~A" word)))

(deftrace :adjudicate-status-after-fsa-returned (status)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-status-after-fsa-returned: ~A"
               status)))

(deftrace :check-fsa-edge-for-brackets (edge)
  (when *trace-network-flow*
    (trace-msg "[scan] check-fsa-edge-for-brackets:~%   ~A" edge)))

(deftrace :check-fsa-edge-for-trailing-brackets (pos-after)
  (when *trace-network-flow*
    (trace-msg "[scan] check-fsa-edge-for-trailing-brackets: p~A"
               (pos-token-index pos-after))))


(deftrace :word-level-actions-except-terminals (pos-before)
  (when *trace-network-flow*
    (trace-msg "[scan] word-level-actions-except-terminals: p~A"
               (pos-token-index pos-before))))

(deftrace :edge-already-on-position (edge)
  (when *trace-network-flow*
    (trace-msg "[scan] edge-already-on-position:~
              ~%          ~A" edge)))


(deftrace :handle-leading-brackets-off-fsa-edge (pos-before pos-after)
  (when *trace-network-flow*
    (trace-msg "[scan] handle-leading-brackets-off-fsa-edge: p~A-p~A"
               (pos-token-index pos-before) (pos-token-index pos-after))))

(deftrace :check-fsa-edge-for-leading-[-bracket (pos-before)
  (when *trace-network-flow*
    (trace-msg "[scan] check-fsa-edge-for-leading-[-bracket: p~A"
               (pos-token-index pos-before))))

(deftrace :handle-trailing-brackets-off-fsa-edge (pos-after)
  (when *trace-network-flow*
    (trace-msg "[scan] handle-trailing-brackets-off-fsa-edge: p~A"
               (pos-token-index pos-after))))

(deftrace :check-fsa-edge-for-trailing-[-bracket (pos-after)
  (when *trace-network-flow*
    (trace-msg "[scan] check-fsa-edge-for-trailing-[-bracket: p~A"
               (pos-token-index pos-after))))



(deftrace :check-PNF-and-continue (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Check-PNF-and-continue ~A" p)))


(deftrace :word-level-actions (word)
  (when *trace-network-flow*
    (trace-msg "[scan] word-level-actions ~A" word)))

(deftrace :scan-from-word-level-actions (p)
  (when *trace-network-flow*
    (trace-msg "[scan] No word at p~a yet. Calling scan-next-position"
	       (pos-token-index p))))

(deftrace :introduce-terminal-edges (word)
  (when *trace-network-flow*
    (trace-msg "[scan] introduce-terminal-edges ~A" word)))

(deftrace :check-preterminal-edges (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Check-preterminal-edges ~A" p)))


(deftrace :check-for-]-from-edge-after (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Check-for-]-from-edge-after ~A" p)))

(deftrace :check-edge-fsa-trigger (p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-edge-fsa-trigger ~
                ~A at p~A" (word-pname (pos-terminal p))
               (pos-token-index p))))

(deftrace :adjudicate-after-edge-fsa (p)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-after-edge-fsa: p~A"
               (pos-token-index p))))


(deftrace :adjudicate-result-of-scan-pattern-after-fsas-ran (pos-before pos-reached)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-after-scan-pattern-after-fsa~
              ~%  started at ~a and  reached ~a" pos-before pos-reached)))


(deftrace :introduce-leading-brackets-from-edge-form-labels (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Introduce-leading-brackets-from-edge-form-labels ~A" p)))

(deftrace :introduce-trailing-brackets-from-edge-form-labels (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Introduce-trailing-brackets-from-edge-form-labels ~A" p)))


(deftrace :introduce-right-side-brackets (word)
  (when *trace-network-flow*
    (trace-msg "[scan] introduce-right-side-brackets: \"~A\""
               word)))

(deftrace :introduce-trailing-brackets (word)
  (when *trace-network-flow*
    (trace-msg "[scan] introduce-trailing-brackets \"~A\""
               word)))

(deftrace :check-for-]-from-prior-word (p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-]-from-prior-word: p~A"
               (pos-token-index p))))

(deftrace :check-for-[-from-prior-word (p)
  (when *trace-network-flow*
    (trace-msg "[scan] check-for-[-from-prior-word: p~A"
               (pos-token-index p))))


(deftrace :bracket-ends-the-segment? (b)
  (when *trace-network-flow*
    (trace-msg "[scan] bracket-ends-the-segment? ~A"
               (b-symbol b))))


(deftrace :check-for-verb-preposition-pair (verb preposition)
  (when *trace-network-flow*
    (trace-msg "[scan] Looking for verb+preposition composition~%~
                    \"~a\" + \"~a\"" (when verb (word-pname verb))
		    (word-pname preposition))))
(deftrace :verb-prep-pair/no-verb ()
  (when *trace-network-flow*
    (trace-msg "[scan]   No verb.")))
(deftrace :verb-prep-pair/edge (edge)
  (when *trace-network-flow*
    (trace-msg "[scan]   They combine: ~a" edge)))
(deftrace :verb-prep-pair/no-combination ()
  (when *trace-network-flow*
    (trace-msg "[scan]   No composition")))

(deftrace :PNF-resetting-open-bracket (edge start end old-bracket)
  (when (or *trace-network-flow* *trace-brackets* *trace-pnf*)
    (trace-msg "[scan] PNF knows it has a ~a~
              ~%   from p~a to ~a~
              ~%   resetting opening bracket to .[np from ~a"
               (display-edge-category edge)
               (pos-token-index start)
               (pos-token-index end) (b-symbol old-bracket))))

(deftrace :PNF-adding-close-bracket (end bracket)
  (when (or *trace-network-flow* *trace-brackets* *trace-pnf*)
    (trace-msg "[scan] PNF adding ~a to p~a"
               bracket (pos-token-index end))))
  

(defun display-edge-category (edge)
  (if (consp edge)
    (edge-category (car edge)) ;;//// iterating format statement
    (edge-category edge)))


(deftrace :adjudicate-new-open-bracket (b)
  (when *trace-network-flow*
    (trace-msg "[scan] adjudicate-new-open-bracket ~A"
               (b-symbol b))))



(deftrace :leading-hidden-markup-check (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Leading-hidden-markup-check ~A" p)))

(deftrace :trailing-hidden-markup-check (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Trailing-hidden-markup-check ~A" p)))

(deftrace :trailing-hidden-annotation-check (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Trailing-hidden-annotation-check ~A" p)))




(deftrace :pts ()
  (when *trace-network-flow*
    (trace-msg "[scan] pts")))

(deftrace :parse-at-the-segment-level (p)
  (when *trace-network-flow*
    (trace-msg "[scan] parse-at-the-segment-level: p~A"
               (pos-token-index p))))

(deftrace :inter-segment-boundary (position)
  (when *trace-network-flow*
    (trace-msg "[scan] introduce-inter-segment-boundary: p~a"
               (pos-token-index position))))

(deftrace :return-to-scan-level-from-null-span (p)
  (when *trace-network-flow*
    (trace-msg "[scan] return-to-scan-level-from-null-span: p~A"
               (pos-token-index p))))

(deftrace :resume-prescanned-segment (p)
  (when *trace-network-flow*
    (trace-msg "[scan] Resume-prescanned-segment ~A" p)))






(deftrace :segment-finished (coverage)
  (when *trace-network-flow*
    (trace-msg "[scan] segment-finished: p~A to p~A"
               (pos-token-index *left-segment-boundary*)
               (pos-token-index *right-segment-boundary*)))
  (when *trace-segments*
    (trace-msg "[segment] p~A - p~A  coverage = ~A"
               (pos-token-index *left-segment-boundary*)
               (pos-token-index *right-segment-boundary*)
               coverage)))

(deftrace :spanned-segment ()
  (when *trace-segments*
    (trace-msg "[segment] spanned-segment")))

(deftrace :some-adjacent-edges ()
  (when *trace-segments*
    (trace-msg "[segment] some-adjacent-edges")))

(deftrace :discontinuous-edges ()
  (when *trace-segments*
    (trace-msg "[segment] discontinuous-edges")))

(deftrace :discontinuous/no-more-heuristics ()
  (when *trace-segments*
    (trace-msg "[segment] discontinuous/no-more-heuristics")))

(deftrace :no-edges ()
  (when *trace-segments*
    (trace-msg "[segment]  no-edges")))

(deftrace :segment-parsed1 ()
  (when *trace-network-flow*
    (trace-msg "[scan] segment-parsed1")))

(deftrace :tidy-up-segment-globals ()
  (when *trace-network-flow*
    (trace-msg "[scan] tidy-up-segment-globals")))

(deftrace :after-action-on-segments ()
  (when *trace-network-flow*
    (trace-msg "[scan] after-action-on-segments")))

(deftrace :normal-segment-finished-options ()
  (when *trace-network-flow*
    (trace-msg "[scan] normal-segment-finished-options")))

(deftrace :check-segment-finished-hook ()
  (when *trace-network-flow*
    (trace-msg "[scan] check-segment-finished-hook")))

(deftrace :sf-action/spanned-segment1 ()
  (when *trace-network-flow*
    (trace-msg "[scan] sf-action/spanned-segment1")))

(deftrace :sf-action/all-contiguous-edges ()
  (when *trace-network-flow*
    (trace-msg "[scan] sf-action/all-contiguous-edges")))

(deftrace :sf-action/all-contiguous-edges/no-more-heuristics () ()
  (when *trace-network-flow*
    (trace-msg "[scan] sf-action/all-contiguous-edges/no-more-heuristics ()")))

(deftrace :sf-action/some-adjacent-edges/no-more-heuristics () ()
  (when *trace-network-flow*
    (trace-msg "[scan] sf-action/some-adjacent-edges/no-more-heuristics ()")))

(deftrace :resume-after-error ()
  (when *trace-network-flow*
    (trace-msg "[scan] resume-after-error")))
#|

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))

(deftrace : ()
  (when *trace-network-flow*
    (trace-msg "[scan] ")))
|#




;;;--------------
;;;  C3 traces 
;;;--------------

(defvar *trace-c3* nil)

(defun trace-c3 ()
  (setq *trace-c3* t))

(defun untrace-c3 ()
  (setq *trace-c3* nil))

(deftrace :starting-c3-segment (pos)
  ;; in scan-segment
  (when *trace-c3*
    (trace-msg "[c3] starting new segment at p~a"
               (pos-token-index pos))))

(deftrace :delimited-c3-segment (from to)
  ;; in scan-segment
  (when *trace-c3*
    (trace-msg "[c3] delimited segment from p~a to p~a"
               (pos-token-index from)
               (pos-token-index to))))

(deftrace :c3-segment-scan-start (start-pos start-bracket)
  ;; called from read-through-segment-to-end
  (when *trace-c3*
    (trace-msg "[c3 seg] Starting next segment at p~a on ~a"
               (pos-token-index start-pos)
               start-bracket)))

(deftrace :c3-segment-scan-ended (word-after position-before)
  ;; called from read-through-segment-to-end
  (when *trace-c3*
    (trace-msg "[c3 seg] Segment ended at p~a by brackets on \"~a\""
               (pos-token-index position-before)
               (word-pname word-after))))

(deftrace :c3-segment-advancing-to (position)
  ;; called from read-through-segment-to-end
  (when *trace-c3*
    (trace-msg "[c3 seg] Advancing segment to p~a"
               (pos-token-index position))))

(deftrace :read-through-scanned-eos ()
  ;; called from read-through-segment-to-end
  (when *trace-c3*
    (trace-msg "[c3 seg] Scanned EOS")))


(deftrace :incorporate-into-situation (referent edge)
  ;; in incorporate-referent-into-the-situation
  (when *trace-c3*
    (trace-msg "[c3] incorporating ~a from ~a" referent edge)))

(deftrace :c3-phrasal-head (referent)
  ;; in incorporate-referent-into-the-situation
  (when *trace-c3*
    (trace-msg "[c3] ~a is the head" referent)))

(deftrace :not-c3-phrasal-head (referent)
  ;; in incorporate-referent-into-the-situation
  (when *trace-c3*
    (trace-msg "[c3] ~a is not the head" referent)))


(deftrace :c3-segment-parse (start end)
  ;; in c3-segment-parse
  (when *trace-c3*
    (trace-msg "[c3] Parsing segment between p~a and p~a"
               (pos-token-index start)
               (pos-token-index end))))

(deftrace :c3-segment-edge (left-edge right-edge edge)
  ;; in c3-segment-parse
  (when *trace-c3*
    (trace-msg "[c3] e~a,~a + e~a~a => ~a"
               (edge-position-in-resource-array left-edge)
               (edge-category left-edge)
               (edge-position-in-resource-array right-edge)
               (edge-category right-edge)
               edge)))

(deftrace :c3-segment-parse-value (edge)
  ;; in c3-segment-parse
  (when *trace-c3*
    (trace-msg "[c3] Segment spanned by ~a" edge)))

(deftrace :state-update (state new-state type)
  ;; in update-situation-state
  (when *trace-c3*
    (trace-msg "[c3] updating the ~a state from ~a to ~a"
               type state new-state)))

(deftrace :c3-composing (left-ref right-ref)
  ;; in incorporate-composition-into-situation
  (when *trace-c3*
    (trace-msg "[c3] composing a ~a with a ~a"
               (cat-symbol (itype-of left-ref))
               (cat-symbol (itype-of right-ref)))))

(deftrace :c3-composing-result (result)
  ;; in incorporate-composition-into-situation
  (when *trace-c3*
    (trace-msg "[c3] the result of the composition is ~a" 
               result)))

(deftrace :changing-type-of (i category)
  ;; in compose(car-manufacturer car-type)
  (when *trace-c3*
    (trace-msg "[c3] Changing ~a to be a ~a"
               i (cat-symbol category))))

(deftrace :adding-relation-to-situation (variable i value)
  ;; in add-relation
  (when *trace-c3*
    (trace-msg "[c3] Adding ~a(~a, ~a) to the situation"
               (var-name variable)
               i value)))

(deftrace :adding-entity-to-situation (i)
  ;; called from add-entity
  (when *trace-c3*
    (trace-msg "[c3] Adding ~a to the situation" i)))


;;;------------------------------------------------------------------
;;; Traces for the new (9/14) handling of segmentation and scannning
;;;------------------------------------------------------------------

(deftrace :scanning-terminals-of (sentence)
  ;; called from sentence-sweep-loop
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Scanning all the terminals of ~a" sentence)))

(deftrace :identifying-chunks-in (sentence)
  ;; called from sentence-sweep-loop
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Identifying the chunks in ~a" sentence)))

(deftrace :parsing-chunk-interior-of (chunk)
  ;; called from identify-chunks
  (when (or *trace-network* *trace-segments*)
    (trace-msg "Abount to parse interior of ~a" chunk)))

(defparameter *trace-sweep* nil)
(defun trace-terminals-sweep ()
  (setq *trace-sweep* t))
(defun untrace-terminals-sweep ()
  (setq *trace-sweep* nil))


(deftrace :word-initiates-polyword (word position-before)
  ;; Called from polyword-check
  (when *trace-sweep*
    (trace-msg "[pw] ~s at p~a initiates polywords"
               (word-pname word) (pos-token-index position-before))))

(deftrace :pw-was-found (position-before position-reached)
  ;; Called from polyword-check
  (when *trace-sweep*
    (trace-msg "[pw] polyword found between p~a and p~a"
               (pos-token-index position-before)
               (pos-token-index position-reached))))

(deftrace :pw-not-found (word position-before)
  ;; Called from polyword-check
  (when *trace-sweep*
    (trace-msg "[pw] The potential polyword for ~s at p~a did ~
                not complete" (word-pname word) 
                (pos-token-index position-before))))

               

;;--- details of the chunker's operation

(defparameter *trace-chunker* nil)
(defun trace-chunker () (setq *trace-chunker* t))
(defun untrace-chunker () (setq *trace-chunker* nil))

(deftrace :chunk-loop-next-edge (edge)
  (when *trace-chunker*
    (trace-msg "Next edge in the loop: ~a" edge)))

(deftrace :delimited-chunk (chunk)
  (when (or *trace-chunker* *trace-segments*)
    (trace-msg "Delimited chunk: ~a" chunk)))

(deftrace :delimited-ill-formed-chunk (chunk)
  (when (or *trace-chunker* *trace-segments*)
    (trace-msg "Delimited chunk without a head: ~a" chunk)))


