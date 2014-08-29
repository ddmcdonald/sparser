;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "new-forest-protocol"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/4/14. 8/9/14 Simple display version working.

(in-package :sparser)

(defun new-forest-protocol? ()
  (eq *forest-level-protocol* :new-forest-protocol))

; (what-to-do-at-the-forest-level :new-forest-protocol) ;; eval with each edit
;
(defun new-forest-driver (rightmost-position)
  ;; Just a dummy that prints the treetops at each sentence. 
  (tr :new-forest-driver rightmost-position)
  ;;(break "got to the forest")
  (let ((sentence (sentence))
        (pos-before (chart-position-before rightmost-position)))
    (unless sentence
      (error "Why isn't (sentence) returning one? Check settings."))

    (let ((start-pos (starts-at-pos sentence))
          (stop-pos (ends-at-pos sentence)))
      (unless stop-pos ;; the normal situation
        (setq stop-pos
              (setf (ends-at-pos sentence) pos-before)))

      (format t "~&~%")
      (print-flat-forest t start-pos stop-pos)
      (format t "~&~%~%")

      ;; Part of the normal closing cadence to resume scanning
      (setq *rightmost-quiescent-position* rightmost-position)
      (tr :forest-parse-returned rightmost-position)
      (adjudicate-after-new-forest-protocol rightmost-position))))

#| Note on what call to make to leave this level.

The path out from PPTT's forest-level parse is to see whether
we should consider-debris-analysis (which depends on the switch
*do-debris-analysis*) and after that call do-treetop-triggers 
(which could recursively lead to more forest-level parsing)
but will end in a call to scan-next-segment ultimately.

Scan-next-segment is called with the pointer *where-the-last-segment-ended*
which is managed by the PTS segment routines and is identical to
the rightmost-position that the forest was invoked with. It does
some cleanup, checks for some special cases indicated by global
variables (*segment-ended-because-of-boundary-from-form-label* and
*prescanned-segment-pending*) and then call the default routine
of figure-out-where-to-start-on-next-pos which looks at the status
on the position (pos-assessed? position) and tries to see what
has yet to be done to the position and inject itself into the
word-level scanning at the appropriate spot. 

We know exactly where we are and what should happen next, so we 
probably should try to 'just the right thing' and not call any general
adjudicator. 

We want the period-hook to be called, which word-level-actions does.
It adds the status markers :word-level-actions on the position before
the period. Gets the position after the period scanned, and then
calls complete-word/hugin and word-traversal-hook ending with
introduce-terminal-edges which does the tail recursive call 
which will pick up with introduce-right-side-brackets if there's
not an fsa associated with any of the edges that have been introduced.
 
Alternatively there is word-level-actions-except-terminals which does
all the same things except for looking for preterminals. Periods are
never supposed to be spanned by an edge, so trying that option.


|#
#| Notes

We normally get to the forest level via one of the routines in PTS
when it calls move-to-forest-level. They all have the same pattern.
They first call scan-another-segment? passing it the identified right
segment boundary position. If it returns non-nil then the return
to the scanning level with a call to scan-next-segment. If it returns
nil then they do any needed clean up and then call move-to-the-forest-level
passing it the right-boundary and a 'reason'. Here are the functions in
PTS that make this check-the-call and the reasons they supply.

 sf-action/spanned-segment1 -- :full-segment-scanned
 sf-action/some-adjacent-edges/no-more-heuristics -- :segment-spanned-by-default
 sf-action/discont-edges/no-more-heuristics -- :empty-segment-scanned
 sf-action/no-edges -- :empty-segment-scanned

There is also a call to move-to-forest-level from the end-of-source-check
with the reason ':eos-reached'. 

The scan-another-segment? protocol is set by the value of the parameter
*segment-scan/forest-level-transition-protocol* which determines which
function to run. For the new-forest-driver the value is :stop-on-sentence-end
which corresponds to a call to next-word-is-not-sentence-final-period which
in checks whether the position is just before a period (*the-punctuation-period*)
and if so calls period-marks-sentence-end? to decide whether on not to pay
attention to this instance of a period.

With this 'move on sentence period' protocol, the check for whether or not 
to move to the forest level will happen before the period is scanned.
As a consequence there is an entanglement with the operation done by
the period-hook function because it hasn't fired when we get to the forest.

That's because the period word hasn't yet been passed to complete and its
completion-action noticed. (Of course it also matters whether we've done
period-hook-on (vs. -off) in the switch settings.) This means that the
sentence that this period finished doesn't have it's 'ends-at' field filled
because that's not going to happen until the call to start-sentence from
the period hook. 

|#