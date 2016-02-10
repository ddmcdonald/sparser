;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "polywords"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  5.0 May 2015

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


(defun do-polyword-fsa (first-word initial-state position-before)
  ;; Some polyword starts at this position. 
  ;; We have its initial state and proceed to look 
  ;; for continuations. 
  ;; We need the next position and the word there. 
  ;; That word takes us into a new state of the polyword
  ;; that starts here or it doesn't.
  (when (cfr-p initial-state) ;; bad one on old style
    ;; e.g. "a2abe5_human"
    (return-from do-polyword-fsa nil))

  (flet ((make-pw-edge (first-pos end-pos pw)
           ;; the 'last-pos' halds the word that's the 
           ;; last element of the pw
           (let ((starting-vector (pos-starts-here first-pos))
                 (ending-vector (pos-ends-here end-pos)))
             (make-edge-for-polyword 
              pw starting-vector ending-vector))))

    (tr :polyword-start first-word position-before)
    (let ((position (chart-position-after position-before))
          (state initial-state)
          word  table  next-state    
          accept-pw  accept-positions )
      (loop
        (unless (includes-state position :scanned)
          (scan-next-position))
        (setq word (pos-terminal position))
        (tr :pw-word-check word)
        (setq table (pw-continuations state)
              next-state (gethash word table)
              accept-pw (when next-state
                          (pw-accept-state? next-state)))
        (if next-state
          (tr :pw-word-extends)
          (tr :pw-word-doesnt-extend))

        (unless next-state ;; maybe the capitalization is wrong
          (push-debug `(,word ,position ,table))
          ;; (setq word (car *) position (cadr *) table (caddr *))
          (let ((caps-word (capitalized-correspondent1 position word)))
            (tr :pw-caps-variant position word)
            (cond
             (caps-word
              (tr :pw-found-caps-variant caps-word)
              (setq next-state (gethash caps-word table))
              (cond
               (next-state
                (tr :pw-word-extends)
                (setq accept-pw (pw-accept-state? next-state)))
               (t (tr :pw-word-doesnt-extend))))
             (t (tr :pw-no-caps-variant)))))

        (when accept-pw
          (tr :pw-complete-looking-further accept-pw)
          (push (cons accept-pw position) accept-positions))
        (cond
         ((null next-state)
          (if accept-positions
            (let* ((best (car accept-positions))
                   (pw (car best))
                   (end-pos (chart-position-after (cdr best))))
              (let ((edge (make-pw-edge 
                           position-before end-pos pw)))
                (tr :pw-doesnt-extend-taking-complete edge)
                (return end-pos)))
            (else
              (tr :pw-word-doesnt-extend)
              (return nil))))
         (t ;; keep looking
          (setq position (chart-position-after position)
                state next-state)))))))

 


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
    