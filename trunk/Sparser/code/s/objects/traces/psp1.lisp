;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005, 2010  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id: psp1.lisp 359 2010-08-13 20:13:38Z dmcdonal $
;;; 
;;;     File:  "psp"
;;;   Module:  "objects;traces:"
;;;  Version:  1.4 December 2010

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
;;     (12/14/10) fixed capitalization bugs

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


(defun trace-treetops ()
  (setq *trace-treetops* t))

(defun untrace-treetops ()
  (setq *trace-treetops* nil))


(defun trace-extension ()
  (setq *trace-extension-decision* t))

(defun untrace-extension ()
  (setq *trace-extension-decision* nil))


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

(deftrace :brackets-introduced (word)
  ;; called from Introduce-{trailing/leading/}brackets
  (when (or *trace-network* *trace-brackets*)
    ;; the specific cases are given by trace msgs in the placement
    ;; routines, with the traces given below
    (trace-msg "~A introduces brackets:" word)))


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


;;;---------- Complete

(deftrace :completing (obj pos)
  ;; called from complete/hugin
  (when *trace-network*
    (if pos
      (trace-msg "Completing ~A at ~A" obj (pos-token-index pos))
      (trace-msg "Completing ~A" obj))))

(deftrace :carrying-out (tag function)
  ;; called from carry-out-actions
  (when *trace-network*
    (trace-msg "Carrying out a ~A action~%  with ~A"
               tag function)))





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



;;;---------- extension decision

(deftrace :pts/seg-extends (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" extends, scanning the next segment starting ~
                at p~A" (string-of-words-between *left-segment-boundary*
                                                 *right-segment-boundary*)
               (pos-token-index boundary-pos))))

(deftrace :pts/seg-doesnt-extend (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" does not extend.~
                ~%   Moving to the forest-level at p~A"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index boundary-pos))))

(deftrace :pts/no-final-edge (boundary-pos)
  ;; called from Can-segment-ever-extend
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Segment \"~A\" does not extend~
                ~%    No edge ending at p~A"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index boundary-pos))))


(deftrace :pts/period-seen (pos-before)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "There is a period at p~A. Moving to forest level~
                ~%   after the segment \"~A\""
               (pos-token-index pos-before)
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*))))

(deftrace :pts/angle-bracket-seen (pos-before)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "There is a '<' at p~A. Moving to forest level~
                ~%   after the segment \"~A\""
               (pos-token-index pos-before)
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*))))

(deftrace :pts/word-isnt-a-significant-boundary (pos-before word)
  ;; called from Next-word-does-not-indicate-a-significant-boundary
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "The segment \"~A\"~
                ~%   is followed at p~A by \"~A\"~
                ~%   so we continue and scan the next segment"
               (string-of-words-between *left-segment-boundary*
                                        *right-segment-boundary*)
               (pos-token-index pos-before)
               word)))

(deftrace :forest/extending-from-rightmost-new-edge (edge)
  ;; called from Check-for-right-extensions/forest
  (when (or *trace-network* *trace-extension-decision*)
    (trace-msg "Extending from rightmost forest-level edge: ~A" edge))) 




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


;;;--------------
;;; forest level
;;;--------------

(defun trace-forest-level ()
  (setq *trace-forest-level* t))

(defun unTrace-forest-level ()
  (setq *trace-forest-level* nil))


(deftrace :moving-to-forest-level (pos reason)
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Moving to the forest-level starting back from p~A ~
                - ~A" (pos-token-index pos) reason)))

(deftrace :forest-level-turned-off ()
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "    but *do-forest-level* is off")))


(deftrace :PPTT/no-edges ()
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "   but there's nothing to parse")))

(deftrace :PPTT/edge-at-quiessence (edge/ev)
  ;; called from Move-to-forest-level
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "   but the rightmost edge (ev) in the forest ~
             ~%    is already~%at the quiessent position: ~A" edge/ev)))


(deftrace :PPTT/starting (edge/ev)
  ;; called from PPTT
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Parsing treetops starting at/with ~A~
                ~%   and going back as far as p~A"
               (etypecase edge/ev
                 (edge edge/ev)
                 (edge-vector
                  (format nil "p~A" (pos-token-index
                                     (ev-position edge/ev)))))
               (pos-token-index *rightmost-quiescent-position*))))


(deftrace :PPTT/quiessence-reached (pos)
  ;; called from after-quiescence
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Forest level parsing is quiescent as far right ~
                as p~A" (pos-token-index pos))))


(deftrace :moving-quescence-ptr-before-edge (edge)
  ;; called from Edge-interaction-with-quiescence-check
  (when (or *trace-network* *trace-forest-level*)
    (trace-msg "Quescence pointer at p~A has been covered by an edge:~
                ~%    ~A~%    Moving it to the start of the edge."
               (pos-token-index *rightmost-quiescent-position*) edge)))


;;;--------------------
;;; forest level edges
;;;--------------------

(defun trace-forest-edges ()
  (setq *trace-do-edge/forest* t
        *trace-check-edges* t))

(defun unTrace-forest-edges ()
  (setq *trace-do-edge/forest* nil
        *trace-check-edges* nil))


(deftrace :forest/no-edges ()
  ;; called from March-back-from-the-right/forest
  (when *trace-do-edge/forest*
    (trace-msg "There are no edges remaining in the forest")))

(deftrace :forest/reached-quescence ()
  ;; called from March-back-from-the-right/forest, try-parsing-tt and
  ;; try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "    but the quiescent position has been reached")))

(deftrace :forest/start-of-chart ()
  ;; called from March-back-from-the-right/forest, try-parsing-tt and
  ;; try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "    but the start of the chart has been reached")))

(deftrace :forest/found-edge (edge end-pos)
  ;; called from March-back-from-the-right/forest
  (when *trace-do-edge/forest*
    (trace-msg "Found e~A, ending at p~A"
               (edge-position-in-resource-array edge)
               (pos-token-index end-pos))))



(deftrace :forest/looking-leftwards/mult (right-vector middle-pos)
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking leftwards from the multiple edges at ~A ~
                 for edges ending at p~A"
              (pos-token-index (ev-position right-vector))
              (pos-token-index middle-pos))))

(deftrace :forest/mult-adjacent-to-mult ()
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to several edges")))

(deftrace :forest/mult-adjacent-leftwards-to-edge (edge)
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to ~A" edge)))

(deftrace :forest/mult-nothing-adjacent-moving-rightward ()
  ;; called from try-parsing-tt/multiple-on-right
  (when *trace-do-edge/forest*
    (trace-msg "   There is no adjacent edge~
                ~%   Looking for the next rightmost edge")))



(deftrace :forest/looking-leftwards-from (right-edge end-pos)
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking leftwards from ~A~%   for edges ending ~
                 at p~A" right-edge (pos-token-index end-pos))))

(deftrace :forest/single-adjacent-to-mult ()
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to several edges")))

(deftrace :forest/single-adjacent-leftwards-to-edge (edge)
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   it is adjacent to ~A" edge)))

(deftrace :forest/single-nothing-adjacent-moving-rightward ()
  ;; called from try-parsing-tt
  (when *trace-do-edge/forest*
    (trace-msg "   There is no adjacent edge~
                ~%   Looking for the next rightmost edge")))



(deftrace :forest/right-extension (edge)
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "(F) Looking at the right neighbor of ~A" edge)))

(deftrace :forest/left-boundary-reached ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   but the last segment ended here")))

(deftrace :forest/right-looking-edge-extends ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "     and this edge can extend --> ~
                Going back to scanning")))

(deftrace :forest/left-boundary-reached/looking-leftwards ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "     looking for other active treetops further leftward")))

(deftrace :forest/right-ext/adjacent-mult ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has multiple edges")))

(deftrace :forest/right-ext/adjacent-single (edge)
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has the single edge ~A" edge)))

(deftrace :forest/right-ext/no-edge ()
  ;; called from Check-for-right-extensions/forest
  (when *trace-do-edge/forest*
    (trace-msg "   which has no edges")))




;;;----------
;;; treetops
;;;----------

(deftrace :tt/checking (tt)
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Checking treetop: ~A" tt)))

(deftrace :tt/action (fn-name)
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   it runs the function ~A" fn-name)))

(deftrace :tt/action/form (label fn-name)
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   its form label ~A~
              ~%      runs the function ~A" label fn-name)))

(deftrace :tt/no-action ()
  ;; called from Do-generic-actions-off-treetop
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "   it has no generic action")))

(deftrace :tt/continuing ()
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Moving rightwards to the next treetop")))

(deftrace :tt/caught-up ()
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-forest-transitions* *trace-network*)
    (trace-msg "Treetop walk caught up with the right boundary ~
                of the forest-level parse~%  at p~A"
               (pos-token-index *rightmost-quiescent-position*))))

(deftrace :tt/resume-forest-parse (new-tt-boundary forest-right-boundary)
  ;; called from do-treetop-triggers
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Resuming the forest parse from TT level~
              ~%    left-bound: p~A   right-bound: p~A"
               (pos-token-index new-tt-boundary)
               (pos-token-index forest-right-boundary))))

(deftrace :tt/resume-forest-parse-from-DA (edge)
  (when (or *trace-treetops* *trace-network* *trace-DA-check*)
    (trace-msg "Resuming the forest parse from DA level to deal with~
              ~%    ~A" edge)))


;;--- interaction of treetops and new edges

(deftrace :impact/checking-edge (e)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "Completed ~A~
              ~%     checking its impact on quiescence" e)))

(deftrace :impact/moving-quiescence (start-pos)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "  It moves the quiescence pointer back to p~A"
               (pos-token-index start-pos))))

(deftrace :impact/moving-tt-boundary (start-pos)
  ;; called from Check-impact-on-quiescence-pointer
  (when (or *trace-treetops* *trace-network*)
    (trace-msg "  It moves the Treetop left boundary back to p~A"
               (pos-token-index start-pos))))
               

;;;------------------------------------------------
;;; transitions between stages of the forest level
;;;------------------------------------------------

(defvar *trace-forest-transitions* nil)

(defun trace-forest-transitions ()
  (setq *trace-forest-transitions* t))
(defun unTrace-forest-transitions ()
  (setq *trace-forest-transitions* nil))

(deftrace :setup-PPTT (right-pos)
  ;; called from Setup-returns-from-PPTT-&-run
  (when (or *trace-forest-transitions* *trace-network*)
    (trace-msg "Commencing forest-level parsing from p~A"
               (pos-token-index right-pos))))

(deftrace :forest-parse-returned (right-pos)
  ;; called from Setup-returns-from-PPTT-&-run
  (when (or *trace-forest-transitions* *trace-network*)
    (trace-msg "Finished the forest-level parsing from p~A"
               (pos-token-index right-pos))))

(deftrace :beginning-DA (start-pos)
  ;; called from Consider-debris-analysis
  (when (or *trace-forest-transitions* *trace-network*
            *trace-DA-check* *trace-da*)
    (trace-msg "~%-- Commencing Debris Analysis from p~A"
               (pos-token-index start-pos))))


(deftrace :moving-to-do-treetops ()
  ;; called from Walk-pending-treetops-for-debris-analysis
  (when (or *trace-forest-transitions* *trace-network*
            *trace-DA-check*)
    (trace-msg "Moving to Do-treetops")))



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



(deftrace :check-for/initiate-scan-patterns (p)
  (when *trace-network-flow*
    (trace-msg "[scan] scan-patterns check: p~A"
               (pos-token-index p))))

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




(deftrace :moved-to-forest-level (p)
  (when *trace-network-flow*
    (trace-msg "[scan] moved-to-forest-level: p~A"
               (pos-token-index p))))


(deftrace :moving-to-forest-level/conj/edge (edge)
  (when (or *trace-network-flow*
	    *trace-conjunction-algorithm*)
    (trace-msg "[scan] moved-to-forest-level from Conjunction~
              ~%    with edge ~a" edge)))

(deftrace :moving-to-forest-level/conj/no-edge (rightmost-pos)
  (when (or *trace-network-flow*
	    *trace-conjunction-algorithm*)
    (trace-msg "[scan] moved-to-forest-level from Conjunction~
              ~%    without having conjoined anything.~
              ~%    Rightmost position is p~a"
	       (pos-token-index rightmost-pos))))



(deftrace :PPTT ()
  (when *trace-network-flow*
    (trace-msg "[forest] PPTT")))

(deftrace :forest-needs-scan ()
  (when *trace-network-flow*
    (trace-msg "[forest] returning from forest-level parsing to ~
                scan the next segment")))

(deftrace :after-quiescence (p)
  (when *trace-network-flow*
    (trace-msg "[forest] after-quiescence: p~A"
               (pos-token-index p))))

(deftrace :do-treetop-triggers ()
  (when *trace-network-flow*
    (trace-msg "[forest] do-treetop-triggers")))

(deftrace :do-treetop-loop (tt)
  (when *trace-network-flow*
    (trace-msg "[forest] do-treetop-loop - ~A" tt)))
