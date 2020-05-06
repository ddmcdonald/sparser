;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2015-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "polywords"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  May 2020

;; 3.0 (10/2/92 v2.3) tweeked interactions with scan as that routine
;;      was broken down into smaller parts.
;; 3.1 (12/29) integrated capitalization checks
;; 4.0 (3/11/93) put in the capacity to handle multiple completions
;;      and put in a switch so the hairy version doesn't have to be
;;      used in :topmost-edges
;;     (5/6) finishing that routine
;; 4.1 (10/29) updated the checks against status.
;; 4.2 (4/4/94) added another case that 'status' can be in, added checks for
;;      subsuming known capitalized variants.
;; 4.3 (7/22) changed status check in Extend-mc-pw
;; 4.4 (8/1) elaborated mix-case check to allow competion of lc's as a default if the
;;      specific case doesn't complete
;;     (8/4/91) added field for the rule to the edges these form
;; 5.0 (5/19/15) Complete make-over as a FSA.

;; 8/26/17 changed so that polywords appreciate whether they were
;; defined with spaces so things like the cell line "AT5" no longer
;; claim to match on phrases like "at 5min"

(in-package :sparser)

#|
grep do-polyword-fsa  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
analyzers/FSA/words2.lisp:                (do-polyword-fsa word fsa position)
analyzers/FSA/words2.lisp:                  (do-polyword-fsa word polyword-fsa position))
drivers/chart/psp/bio-entity-scan.lisp:     (do-polyword-fsa word pw-cfr position-before)))
drivers/chart/psp/multi-scan.lisp:          (do-polyword-fsa word pw-cfr position-before)))
drivers/chart/psp/scan3.lisp:               (do-polyword-fsa word pw-cfr position-before)))
grammar/rules/FSAs/polywords4.lisp:  (defun do-polyword-fsa (word cfr position-scanned)
|#

;; (trace-fsas)

(defvar *longest-pw-success-state* nil
  "Set during the traversal of the polyword state sequence whenever
   the state is an accept state. The traversal will often continue
   looking for a longer pw, so this provides a memory of identified
   pw should that continuation fail.")

(defvar *position-of-longest-success-state* nil)


;; (trace-polywords)
;; (trace-polyword-edges)

(defun do-polyword-fsa (first-word initial-state position-before)
  "Called by check-for-polywords in scan or by polyword-check in
   multi-scan. We have just scanned 'first-word' at 'position-before'.
   and determined that it is the first word in a polyword (or the
   first word of many alternative polywords). That check provided
   us with the polyword-state passed in as 'initial-state'. 
      Note that because this is an fsa, we are required to return
   the position that we end at, or else nil if we didn't succeed."
  (declare (special *longest-pw-success-state*
                    *position-of-longest-success-state*
                    *one-space*))
  (when (cfr-p initial-state) ;; bad one on old style
    ;; e.g. "a2abe5_human"
    (return-from do-polyword-fsa nil))

  ;; initialize state
  (setq *longest-pw-success-state* nil
        *position-of-longest-success-state* nil)

  ;; prime the pump
  (let ((state initial-state)
        (prior-position position-before)
        next-state  next-position )
    (declare (special state prior-position))
    (tr :polyword-start first-word position-before)
    
    ;; call the loop
    (loop
       (unless (pw-continuations state)
         (return))
       (multiple-value-setq (next-state next-position)
         (try-to-extend-pw state prior-position))

       (unless next-state (return))

       ;; update for next pass through the loop
       (setq state next-state
             prior-position next-position))

    (when *longest-pw-success-state*
      ;(lsp-break "found polyword")
      ;; We succeeded. Lookup the polyword. Make an edge over it.
      ;; Return the position we succeeded at.
      ;; Otherwise we're returning nil to indicate we didn't find one.
      (let* ((pw (pw-accept-state? *longest-pw-success-state*))
             (edge (make-edge-for-polyword 
                    pw
                    (pos-starts-here position-before)
                    (pos-ends-here *position-of-longest-success-state*))))
        (tr :pw-taking-longest-complete edge)
        *position-of-longest-success-state* ))))


(defun try-to-extend-pw (state prior-position &aux next-state)
  "We have just reached 'state' from 'prior-position'. 
   If there are no continuations from this state then we're done
   but that's checked for in the outer-loop.
   Look at the next position, paying attention both to its
   whitespace (representing the whitespace, if any, between
   the prior word and the word starting there) and the word.
   If the word has a capitalized variant that applies at this
   position try to extend with it before trying the standard, 
   lower case word."
  (declare (special *longest-pw-success-state*
                    *position-of-longest-success-state*
                    *one-space* *end-of-source*))

  (flet ((canonicalize-whitespace (position)
           (when (pos-preceding-whitespace position)
             *one-space*))
         (continues (term state)
           (when state
             (gethash term (pw-continuations state)))))

    (let ((position (chart-position-after prior-position)))
      
      (unless (includes-state position :scanned)
        (scan-next-position))
      
      (let* ((whitespace (canonicalize-whitespace position))
             ;; if there is whitespace, we need to check if the pw can
             ;; continue past it and set the state to include the
             ;; space before dealing with the pos-terminal
             (curr-state (if whitespace
                             (continues whitespace state)
                             state))
             (word (pos-terminal position))
             ;; variants is for words like "co-IPs" where
             ;; "ips" has three known variants "iPS" "IPS" "IPs"
             (variants (unless (eq :lower-case (pos-capitalization position))
                         (word-capitalization-variants word)))
             (variant (capitalized-correspondent position word)))
        (tr :pw-word-check word)

        (when (eq word *end-of-source*) ;; we can't possibly extend
          (return-from try-to-extend-pw
            (values nil position)))

        ;; lookup the next state. This cascade assumes that
        ;; if there is whitespace then the continuation will depend
        ;; on that whitespace, and that if there is an unambiguus
        ;; capitalized variant and it does not continue then neither will the
        ;; lowercase word.
        (if (cdr variants)
            (loop for v in `(,@variants ,word)
                  when (continues v  curr-state)
                    do (setq next-state (continues v curr-state)))
            (if variant
                (setq next-state (continues variant curr-state))
                (setq next-state (continues word curr-state))))
        (if next-state
          (then 
            (tr :pw-word-extends)
            (when (pw-accept-state? next-state)
              (tr :pw-accept-state)
              (setq *longest-pw-success-state* next-state
                    ;; the end position needs to be the one after the word we've just added
                    *position-of-longest-success-state* (chart-position-after position))))
          (tr :pw-word-doesnt-extend))

        ;; return the new position and that next state        
        (values next-state position)))))



;;///////// this is unchanged -- could be part of tracing out the
;; entire continuation space from a start-word

(defun walk-pw-states (pw)
  (let* ((word-list (pw-words pw))
         (first-word (car word-list))
         (remaining-words (cdr word-list))
         (state (starts-polyword first-word)))
    (format t "~&~s => ~a" (word-pname first-word) state)
    (dolist (word remaining-words)
      (let ((next-state (gethash word (pw-continuations state))))
        (if next-state
          (format t "~&~s => ~a" (word-pname word) next-state)
          (format t "~&~s is not a continuation from ~a"
                  (word-pname word) state))
        (if next-state
          (setq state next-state)
          (return))))))
    
