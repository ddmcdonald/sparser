;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "slash-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2016

;; Broken out from patter-gophers 7/19/15

(in-package :sparser)

;; (p "the Raf/MEK/ERK pathway.") 
;;  (p "For example, SHOC2/Sur-8 bridges.")
;; "PI3K/AKT signaling"

(defun resolve-slash-pattern (pattern words edges
                              slash-positions hyphen-positions 
                              pos-before pos-after)
  "Called from ns-pattern-dispatch when the salient punctuation is one or
   more slashes. Returns nil if it doesn't know what the pattern means
   and we go back to the dispatch."
  (if (null (cdr slash-positions)) ;; only one
    (one-slash-ns-patterns
     pattern words edges slash-positions hyphen-positions pos-before pos-after)
    (divide-and-recombine-ns-pattern-with-slash 
     pattern words edges slash-positions hyphen-positions pos-before pos-after)))

(defun one-slash-ns-patterns (pattern words edges
                              slash-positions hyphen-positions 
                              pos-before pos-after)
  (cond   
   (hyphen-positions
    (divide-and-recombine-ns-pattern-with-slash 
     pattern words edges slash-positions hyphen-positions pos-before pos-after))

   ((equal pattern '(:lower :forward-slash :lower))
    (or (reify-amino-acid-pair words pos-before pos-after)
        (reify-ns-name-and-make-edge words pos-before pos-after)))

   ((equal pattern '(:mixed :digits :forward-slash :capitalized :digits))
    ;; recombinant COT induced pThr202/Tyr204 phosphorylation of ERK1 
    ;; in December #46
    ;; split on the single slash, look up the parts.
    ;; simpler than the multi-slash case.
    (when *work-on-ns-patterns*
      (break "finish pThr202/Tyr204")))

   ((equal pattern '(:full :forward-slash :full))
    (resolve-hyphen-between-two-terms pattern words edges pos-before pos-after))

   ((equal pattern '(:full :forward-slash :single-lower)) ;; "BALB/c"
    ;; probably a variant of a protein, but that requires the 'full' portion
    ;; to be recognized as a protein ///pick up again when doing morph.decomp.
    (reify-ns-name-and-make-edge words pos-before pos-after))

   (*work-on-ns-patterns* 
    (push-debug `(,pattern ,pos-before ,pos-after))
    (break "New slash pattern to resolve: ~a" pattern))
   (t (tr :no-ns-pattern-matched) 
      nil)))


(defun divide-and-recombine-ns-pattern-with-slash (pattern words edges
                                                   slash-positions hyphen-positions 
                                                   pos-before pos-after)
  "Called from ns-pattern-dispatch when there are both (one or more) slashes
   and hyphens in the pattern.
  Assumes that slash has precedence over any other punctuation,
  so it does a resolve-pattern of each of the segements between
  slashes and then recombines them into a slash-structure along the
  lines of make-hyphenated-structure and such."
  ;;//// slashes often indicate two proteins that differ in just
  ;; their suffix. What's that pattern?
  ;; At this point the terminals are covered by edges. They probably
  ;; have what we want. A second time around they certainly will.

  (push-debug `(,slash-positions ,pos-before ,pos-after ,words ,pattern))
  ;; (setq slash-positions (car *) pos-before (cadr *) pos-after (caddr *) words (cadddr *) pattern (nth 4 *))
  (tr :slash-ns-pattern pos-before pos-after)    
  (when *trace-ns-sequences* (tts))

  (cond 
   ((eq (first slash-positions) pos-before)
    (when *work-on-ns-patterns*
      (error "New case: Slash is initial term in no-space region between p~a and p~a"
             (pos-token-index pos-before) (pos-token-index pos-after))))

   ((eq (car (last pattern)) :forward-slash) ;; it's final
    ;; It's probably a mistake in the source: "c-Raf/ MAPK-mediated [6]."
    (cond
     ((not (= 1 (length slash-positions)))
      (when *work-on-ns-patterns*
        (error "New case: more than one slash in a slash-final pattern")))
     (t
      (let* ((pos-after-minus-1 (chart-position-before pos-after))
             ;; 1st do the check that would have been done w/o the slash
             (edge? (span-covered-by-one-edge? pos-before pos-after-minus-1)))
        (or edge?
            (else
              ;;/// I can't think of a meaningfull version of this pattern so
              ;; dropping the slash on the floor and shrinking the pattern to let
              ;; the ordinary hyphen-handler do it's thing
              (setq pattern (nreverse (cdr (nreverse pattern)))
                    words (nreverse (cdr (nreverse words))))
              (resolve-hyphen-pattern pattern words edges hyphen-positions 
                                      pos-before pos-after-minus-1)))))))

   (t ;; slash(s) somewhere in the middle   
    (let* ((segment-start pos-before)
           segment-pattern  segments  remainder )
    (multiple-value-setq (segment-pattern remainder)
      (pop-up-to-slash pattern))
    (dolist (slash-pos slash-positions)
      (let ((resolution (resolve-slash-segment 
                         segment-pattern hyphen-positions segment-start slash-pos)))
        (unless resolution
          (push-debug `(,segment-pattern ,segment-start ,slash-pos))
          (error "pattern resolver called by slash returned nil ~
                  on ~a" segment-pattern))
        (push resolution segments)
        (setq segment-start (chart-position-after slash-pos))
        (multiple-value-setq (segment-pattern remainder)
          (pop-up-to-slash remainder))))
      (push (resolve-slash-segment segment-pattern hyphen-positions segment-start pos-after)
            segments)
      (package-slashed-sequence
       (nreverse segments) words pos-before pos-after)))))


(defun pop-up-to-slash (pattern)
  "Subroutine of divide-and-recombine-ns-pattern-with-slash but might
   make a useful utility with a bit of abstraction. Looks for a slash
   in the pattern and returns the portion of the pattern before the
   slash and the remainder of the pattern after the slash."
  (let ((slash-index (position :forward-slash pattern)))
    ;;(push-debug `(,pattern ,slash-index)) (break "index = ~a" slash-index)
    ;; (setq pattern (car *) slash-index (cadr *))
    (if slash-index
      (values (subseq pattern 0 slash-index)
              (subseq pattern (1+ slash-index)))
      (values pattern nil))))


(defun resolve-slash-segment (segment-pattern hyphen-positions start-pos end-pos)
  "Look at the region between start and end positions and return an edge
   that accounts for its content. Feeds package-slashed-sequence"
  (tr :resolve-slash-segment segment-pattern start-pos end-pos)
  (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
    ;; if there's one edge between the start of this portion and
    ;; the position of the slash, we're done
    (cond
     (single-edge
      (tr :slash-segment-covered single-edge)
      single-edge)
     (t
      (tr :slash-recursive-resolution)
      (let ((words (words-between start-pos end-pos)))        
        (resolve-non-slash-ns-pattern 
         segment-pattern words hyphen-positions start-pos end-pos))))))

(defun resolve-non-slash-ns-pattern (pattern words hyphen-positions
                                     pos-before pos-after) 
  (tr :trying-to-resolve-ns-pattern pattern)
  (let ((relevant-hyphen-positions
         (when hyphen-positions 
           (loop for pos in hyphen-positions 
             when (position-is-between pos pos-before pos-after)
             collect pos)))
        (edges (remove-non-edges (treetops-between pos-before pos-after))))
    (or (when relevant-hyphen-positions
          (resolve-hyphen-pattern 
           pattern words edges relevant-hyphen-positions pos-before pos-after))
        (resolve-ns-pattern pattern words edges pos-before pos-after)
        (reify-ns-name-and-make-edge words pos-before pos-after))))


