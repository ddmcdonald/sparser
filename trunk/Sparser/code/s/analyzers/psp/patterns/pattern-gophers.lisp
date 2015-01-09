;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  December 2014

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.

(in-package :sparser)

;;;---------
;;; slashes
;;;---------

;; (p "the Raf/MEK/ERK pathway.") 
;;  (p "For example, SHOC2/Sur-8 bridges.")
;; "PI3K/AKT signaling"
(defun divide-and-recombine-ns-pattern-with-slash (pattern words 
                                                   slash-positions hyphen-positions 
                                                   pos-before pos-after)
  ;; Assumes that slash has precedence over any other punctuation,
  ;; so it does a resolve-pattern of each of the segements between
  ;; slashes and then recombines them into a slash-structure along the
  ;; lines of make-hypenated-structure and such.
  ;;//// slashes often indicate two proteins that differ in just
  ;; their suffix. What's that pattern?
  ;; At this point the terminals are covered by edges. They probably
  ;; have what we want. A second time around they certainly will.
  (push-debug `(,slash-positions ,pos-before ,pos-after ,words ,pattern))
  (when *trace-ns-sequences* (tts))
  (tr :slash-ns-pattern pos-before pos-after)

  (when (eq (first slash-positions) pos-before)
    (break "New case: Slash is initial term in no-space region between p~a and p~a"
           (pos-token-index pos-before) (pos-token-index pos-after)))

  (let* ((segment-start pos-before)
         segment-pattern  segments  remainder )
    (multiple-value-setq (segment-pattern remainder)
      (pop-up-to-slash pattern))

    (dolist (slash-pos slash-positions)
      (let ((resolution (resolve-slash-segment 
                         segment-pattern hyphen-positions segment-start slash-pos)))
        (unless resolution
          (push-debug `(,segment-pattern ,segment-start ,slash-pos))
          (break "pattern resolver called by slash returned nil ~
                  on ~a" segment-pattern))
        (push resolution segments)
        (setq segment-start (chart-position-after slash-pos))
        (multiple-value-setq (segment-pattern remainder)
          (pop-up-to-slash remainder))))

    (push (resolve-slash-segment segment-pattern hyphen-positions segment-start pos-after)
          segments)

    (package-slashed-sequence
     (nreverse segments) words pos-before pos-after)))


(defun resolve-slash-segment (segment-pattern hyphen-positions start-pos end-pos)
  (tr :resolve-slash-segment segment-pattern start-pos end-pos)
  (let ((single-edge (span-covered-by-one-edge? start-pos end-pos)))
    ;; is there one edge between the start of this portion and
    ;; the position of the slash? Then we're done
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
             collect pos))))
  
    (or (when relevant-hyphen-positions
          (resolve-hyphen-pattern 
           pattern words relevant-hyphen-positions pos-before pos-after))
        (resolve-ns-pattern pattern words pos-before pos-after)
        (reify-ns-name-and-make-edge words pos-before pos-after))))

(defun pop-up-to-slash (pattern)
  ;; Subroutine of divide-and-recombine-ns-pattern-with-slash but might
  ;; make a useful utility with a bit of abstraction
  (let ((slash-index (position :forward-slash pattern)))
    (if slash-index
      (values (subseq pattern 0 slash-index)
              (subseq pattern (1+ slash-index)))
      (values pattern nil))))


;;;--------
;;; hyphen
;;;--------

(defun resolve-hyphen-between-two-words (pattern words
                                         pos-before pos-after)
  ;; Have to distinguish between anticipated cases where the edges would
  ;; compose except for the hypen between the words and cases 
  ;; like "Sur-8" where it's the name of a protein
  (push-debug `(,pos-before ,pos-after ,pattern))
  (tr :resolve-hyphen-between-two-words words)
  (let ((left-edge (right-treetop-at/edge pos-before))
        (right-edge (left-treetop-at/edge pos-after)))
    ;; lifted from nospace-hyphen-specialist
    (let ((rule (or (multiply-edges left-edge right-edge)
                    (multiply-edges right-edge left-edge))))
      ;; "GTP-bound"
      ;;(push-debug `(,left-edge ,right-edge)) (break "???")
      (if rule
        (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
          (revise-form-of-nospace-edge-if-necessary edge)
          (tr :two-word-hyphen-edge edge))
        (else ;; make a structure if all else fails
         ;; but first alert to anticipated cases not working
         (tr :defaulting-two-word-hyphen)
         (make-hypenated-structure left-edge right-edge))))))

(defun resolve-hyphen-between-three-words (pattern words
                                           pos-before pos-after)
  ;; Should look for standard patterns, especially on the
  ;; middle word. ///Postponing that effort so we can make some
  ;; progress. 
  (declare (ignore pattern))
  (tr :resolve-hyphens-between-three-words words)
  (let ((left-edge (right-treetop-at/edge pos-before))
        (right-edge (left-treetop-at/edge pos-after))
        (middle-edge (right-treetop-at/edge 
                      (chart-position-after 
                       (chart-position-after pos-before)))))
    (make-hyphenated-triple left-edge middle-edge right-edge)))

    

