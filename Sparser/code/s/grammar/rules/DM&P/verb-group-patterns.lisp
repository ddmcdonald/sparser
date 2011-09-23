;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "verb group patterns"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  January 1995

;; initiated 12/2/94 v2.3. 1/17/95 added Overly-long-after-verb

(in-package :sparser)


;;--- trivial burned-in assignment of patterns

#| A pattern is a cons of a sequence of elements and the name of the
   function to be executed if it succeeds. |#

(defparameter *verb-group-patterns*

  '(  (( modal  nil  nil  :ends-in-ing )
       . reanalyze-modal/mvb/plural-do/participle )
      ))



;;;--------------------------
;;; testing pattern elements
;;;--------------------------

(defun patterns-match/tt-or-w (tt pattern-element)
  (if (null pattern-element)
    t
    (etypecase tt
      (edge
       (decode-edge-against-pattern-element tt pattern-element))
      (word )
      (edge-vector
       ;; We get this because the "tt" is :multiple-initial-edges.
       ;; This just takes the most recent edge without further checking
       (patterns-match/tt-or-w (highest-edge tt) pattern-element)))))


(defun decode-edge-against-pattern-element (edge pattern-element)
  (let (  pattern-category  pattern-word-morphology  )
    (etypecase pattern-element
      (symbol
       (if (keywordp pattern-element)
         (setq pattern-word-morphology
               (word-morphology
                (pos-terminal (pos-edge-starts-at edge))))
         (setq pattern-category (category-named pattern-element)))))
    
    (cond (pattern-category
           (if (form-category? pattern-category)
             (eq pattern-category (edge-form edge))
             (eq pattern-category (edge-category edge))))
          (pattern-word-morphology
           (eq pattern-word-morphology pattern-element))
          (t
           (break "case not handled")))))



;;;-----------------------------
;;; driver for finding patterns
;;;-----------------------------

(defun pattern-satisfied-by-vg-segment (start-pos end-pos)
  ;; Called from Debug-vg-segment/edge-as-mvb-but-more-words when it
  ;; has been decided that there is no standard way to analyze the
  ;; left to right sequence of treetops within the segment and thus
  ;; that there is a high probability that the segment is too long
  ;; and needs reanalysis.
  (trivial-serial-within-segment-word-level-pattern-matcher
   start-pos end-pos))

(defun trivial-serial-within-segment-word-level-pattern-matcher
       (start-pos end-pos)
  (tr :vgm/start start-pos end-pos)
  (let ((satisfied-pattern
         (catch :vg-pattern-satisfied
           (dolist (p *verb-group-patterns*)
             (tr :vgm/trying-pattern p)
             (try-to-match-words-to-pattern-elements/serial-from-left
              p start-pos end-pos)))))
    (if satisfied-pattern
      satisfied-pattern
      (break "no defined verb group pattern fits this set of words:~
              ~%\"~A\"~%" (string-of-words-between start-pos end-pos)))))

(defun try-to-match-words-to-pattern-elements/serial-from-left
       (pattern start-pos end-pos)
  (catch :pattern-not-satisfied
    ;; If the pattern succeeds, then it will throw to the higher
    ;; catch and break out of the dolist.  If it fails, it will
    ;; throw to this catch as soon as it misses on one element
    ;; or the lengths don't match and the dolist will move on to
    ;; the next pattern
    (ttmwtpe/sfl start-pos end-pos (car pattern) pattern)))

(defun ttmwtpe/sfl (next-start-pos end-pos rest-of-pattern pattern)
  ;; Scans the treetops of the segment as a tail recursive loop.
  (multiple-value-bind (next-tt next-pos)
                       (next-treetop/rightward next-start-pos)
    (let ((next-pattern-element (pop rest-of-pattern)))
      (tr :vgm/elements next-pattern-element next-tt)
      (if (patterns-match/tt-or-w next-tt next-pattern-element)
        ;; check the length
        (if (eq next-pos end-pos)
          ;; if the pattern is also empty then the pattern has been
          ;; satisfied. Assuming that they've been correctly ordered
          ;; from the longest down then we can declare success
          (then
            (tr :vgm/success)
            (throw :vg-pattern-satisfied pattern))
          (else
            ;; we haven't finished the segment yet. If the pattern
            ;; is already empty then it failed
            (if (null rest-of-pattern)
              (then
                (tr :vgm/segment-is-longer)
                (throw :pattern-not-satisfied nil))
              (else
                ;; otherwise recurse to test the next treetop
                (tr :vgm/continue)
                (ttmwtpe/sfl next-pos end-pos
                             rest-of-pattern pattern)))))
        (else
          (tr :vgm/match-failed)
          (throw :pattern-not-satisfied nil))))))


;;--- traces

(defparameter *trace-vg-segment-matching* nil)

(defun trace-vg-matching ()
  (setq *trace-vg-segment-matching* t))

(defun unTrace-vg-matching ()
  (setq *trace-vg-segment-matching* nil))


(deftrace :vgm/start (start-pos end-pos)
  (when *trace-vg-segment-matching*
    (trace-msg "Applying verb group patterns to~
                ~%      \"~A\""
               (string-of-words-between start-pos end-pos))))

(deftrace :vgm/trying-pattern (p)
  (when *trace-vg-segment-matching*
    (trace-msg "Trying the pattern: ~A" (car p))))

(deftrace :vgm/elements (next-pattern-element next-tt)
  (when *trace-vg-segment-matching*
    (trace-msg "checking ~A against ~A" next-pattern-element next-tt)))

(deftrace :vgm/success ()
  (when *trace-vg-segment-matching*
    (trace-msg "   That succeeded and completed the whole pattern")))

(deftrace :vgm/segment-is-longer ()
  (when *trace-vg-segment-matching*
    (trace-msg "   That succeeded, but the vg is longer than the pattern")))

(deftrace :vgm/continue ()
  (when *trace-vg-segment-matching*
    (trace-msg "   That succeeded, going on to the next pair")))

(deftrace :vgm/match-failed ()
  (when *trace-vg-segment-matching*
    (trace-msg "   They failed to match, trying the next pattern")))


;;;---------------------------
;;; executing pattern actions
;;;---------------------------

(defun setup-to-end-vg-at (pos)
  ;; Called from mvg/Adv-check-before-ing/en
  ;; No particular idea of how to reanalyze the rest of the vg segment,
  ;; so we just setup the globals to shrink this one.
  (setq *end-of-prefixed-verb-group* pos)
  (setq *later-part-of-segment-needs-reanalysis*
        `(overly-long-after-verb . ,pos)))


(defun reanalyze-segment/vg-pattern (pattern start-pos end-pos)
  ;; This is called from Debug-vg-segment/edge-as-mvb-but-more-words
  ;; or other points in the vg-mining state machine after a pattern
  ;; subsuming the set of terms within the dubious verb group segment
  ;; has been identified.  As all this is happening within a call
  ;; to Mine-vg, this routine --besides introducing new segments to
  ;; the left of the actual verb group-- has got to return a term or
  ;; structure of terms just as the ultimate callers/packagers are
  ;; expecting.
  (let ((fn (cdr pattern)))
    (unless (symbolp fn)
      (break "Data structure problem: there should be a symbol in ~
              the cdr of the pattern~%but there isn't. Pattern:~
              ~%~A" pattern))
    (funcall fn start-pos end-pos)))


#| We're supposed to return a single term to the ultimate caller, Mine-vg,
   which should correspond to the proper verb group with an edge over
   all of it.  This will entail moving the segment borders, and if we
   know a lot about the later parts we probably should do some of the
   work on them if there might be a mess up.  Certainly the scanning
   process has gotten all the way to the end of the original, bad,
   segment so we can't resume there.   

   When the vg dm&p processing finishes, the main process will pick up
   with Scan-next-segment applied to the position where the bad segment
   ended.  |#


(defun reanalyze-rest-of-overly-long-segment (fn position)
  (setq *end-of-prefixed-verb-group* position
        *later-part-of-segment-needs-reanalysis* `(,fn . ,position)))
  

;;---------------------------------------------
;;( modal  nil  nil  :ends-in-ing )

(defun reanalyze-modal/mvb/plural-do/participle (start-pos end-pos)
  ;; ah hoc starter case.
  ;; Each pattern element is one word long.
  (let* ((pos-before-unk-verb (chart-position-after start-pos))
         (pos-after-unk-verb (chart-position-after pos-before-unk-verb)))

    (mine-as-a-verb (pos-terminal pos-before-unk-verb)
                    pos-before-unk-verb pos-after-unk-verb)

    (let ((coverage-of-real-vg
           (parse-between-boundaries start-pos pos-after-unk-verb)))
      (unless (eq coverage-of-real-vg :single-span)
        (break "Inadequate vg rules. Can't form an edge over the ~
                words:~%  \"~A\"~%"
               (string-of-words-between start-pos pos-after-unk-verb)))
      (let ((vg-edge
             (right-treetop-at start-pos)))
        (reanalyze-rest-of-overly-long-segment
         'overly-long/word/participle
         pos-after-unk-verb )))))


;;;---------------------
;;; Reanalysis routines
;;;---------------------
;; These are all called from dm/Dispatch-on-segment-coverage when
;; the *later-part-of-segment-needs-reanalysis* flag is up after it
;; has finished with the main analysis.
;;    They are all called with the position marked as beginning
;; the remainder of the segment and the segment's original end position.

(defun overly-long-after-verb (starts-at ends-at)
  ;; no attempt at analysis beyond what dm&p will do by default
  (declare (ignore ends-at))
  (setq *later-part-of-segment-needs-reanalysis* nil)
  (setq *left-segment-boundary* starts-at)
  (dm/analyze-segment (segment-coverage)))



(defun overly-long/word/participle (starts-at ends-at)
  (when *break-on-pattern-outside-coverage?*
    (break)))


;;---------------------------------------------
;;  [ VERBing xx ... ]

(defun overly-long/after-ing-verb (starts-at ends-at)
  ;; Called from dm/Dispatch-on-segment-coverage as its alternative
  ;; to running sf-action/spanned-segment.  For now we'll just declare
  ;; the rest of the segment to have no interesting labeling and leave
  ;; it for other routines to try and read in-between the lines.
  (setq *later-part-of-segment-needs-reanalysis* nil)

  (if (eq (chart-position-after starts-at) ends-at)
    ;; one word long overshoots might be common since if the, e.g. NP, was
    ;; longer, then it would be more likely to have a prefix that would
    ;; have distinguished it from the beginning
    (then
      (setq *left-segment-boundary* starts-at)
      (dm/analyze-segment (segment-coverage)))

    (when *break-on-pattern-outside-coverage?*
      (break "Stub: multi-word region at end of overly long segment")
      (sf-action/spanned-segment))))

