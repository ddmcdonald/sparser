;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  1.0 January 2015

;; Broken out from driver 2/5/13. This code was developed with some
;; difficulty and confusion for the JTC/TRS project. Throwing out most
;; of it and reconstruing these results as names. 
;; 0.4 2/25/14 Modified to retain the interior punctuation.
;; 0.5 7/28/14 Turned parse-between-boundaries back on for "Ser1507"
;;     8/7/14 Debugged edge case (EOS) in sentence-final-punctuation-pattern?
;; 0.6 9/9/14 refactoring to make management simpler.
;; 0.7 10/9/14 Added scare quotes, debugged edge cases. 
;; 1.0 11/18/14 Bumped number to permit major revamp to fit into multi-
;;   pass scanning. 12/4/14 moved out the patterns to their own file.
;;   Tweeking through 1/9/15

(in-package :sparser)

;;;----------------
;;; gating globals
;;;----------------

(unless (boundp '*uniformly-scan-all-no-space-token-sequences*)
  (defparameter *uniformly-scan-all-no-space-token-sequences* nil
    "Gates this simpler alternative / complement to the pattern-driven
    scheme. Sort of a generic 'super' tokenizer"))

(unless (boundp '*parser-interior-of-no-space-token-sequence*)
  (defparameter *parser-interior-of-no-space-token-sequence* t
    "Controls whether we try to parse the edges of the words
     inside the span."))


;;;------------
;;; new driver
;;;------------

;; (trace-scan-patterns)

(defun collect-no-space-segment-into-word (position-just-after)
  ;; entry point if the edge is more than one word long, e.g. "SHOC2" after it's
  ;; been given its definition as a polyword. 
  (when nil (tts))

  (let ((leftmost-edge (left-treetop-at/edge position-just-after)))
        ;; but that 'edge' could be a word, e.g. "... (Figure ..."
    (when (word-p leftmost-edge)
      (when (first-word-is-bracket-punct leftmost-edge)
        (return-from collect-no-space-segment-into-word nil)))

    (let ((start-pos (if (edge-p leftmost-edge) 
                       (pos-edge-starts-at leftmost-edge)
                       (chart-position-before position-just-after))))
      (tr :no-space-sequence-started-at start-pos)

      (push-debug `(,leftmost-edge ,position-just-after)) 
      (when nil (break "sanity"))

      (when (or (word-is-bracket-punct (pos-terminal start-pos))               
                (word-is-bracket-punct (pos-terminal position-just-after))
                (word-never-in-ns-sequence (pos-terminal start-pos))
                (word-never-in-ns-sequence (pos-terminal position-just-after)))
        (return-from collect-no-space-segment-into-word nil))

      (multiple-value-bind (end-pos hyphen-positions slash-positions)
                           (sweep-to-end-of-ns-regions position-just-after)

        (push-debug `(,start-pos ,end-pos))

        ;; on this sentence: (p "Pre-clinical studies have demonstrated that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5] —an observation that has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8.")
        ;; and perhaps others, the sweep to the end routine returns a string
        ;; as the value of end-pos, e.g. "6 - 8. "
        ;; Rather than figure it out just now (12/18/14) I'm just dropping it
        ;; on the floor.
        (when (stringp end-pos) ;; may be bad display in backtrace
          (return-from collect-no-space-segment-into-word nil))

        (when (stringp start-pos) ;; This one is weirder
          (return-from collect-no-space-segment-into-word nil))

        (unless (position-precedes start-pos end-pos) ;; bug may actually be this
          (return-from collect-no-space-segment-into-word nil))

        (tr :looking-at-ns-segment start-pos end-pos)
 
        (let ((pattern (characterize-words-in-region start-pos end-pos))
              ;(edges (edges-between start-pos end-pos))
              (words (words-between start-pos end-pos)))
          (tr :segment-ns-pattern pattern)

          ;; Open coding post-accumulator-ns-handler
          (multiple-value-bind (layout edge)
                               (parse-between-boundaries start-pos end-pos)
            (tr :ns-segment-layout layout)
            (cond
             ((eq layout :single-span)  ;; Do nothing. It's already known
              (break "integrated ~a ??" edge))
             ((memq :slash pattern)
              (tr :ns-looking-at-slash-patterns)
              (divide-and-recombine-ns-pattern-with-slash 
               pattern words slash-positions hyphen-positions start-pos end-pos))
             ((memq :hyphen pattern)
              (tr :ns-looking-at-hypen-patterns)
              (resolve-hyphen-pattern 
               pattern words hyphen-positions start-pos end-pos))
             (t 
              (tr :ns-taking-default)
              (or (resolve-ns-pattern pattern words start-pos end-pos)
                  (reify-ns-name-and-make-edge words start-pos end-pos))))))
          end-pos))))


(defun sweep-to-end-of-ns-regions (position)
  ;; From this position, which is marked as having not space between its
  ;; word and the previous word. Look at the positions to the right until
  ;; you reach one that is marked for an interveening space and return it. 
  ;; Because we're working sentence by sentence we will not normally
  ;; need an EOS check 
  (let ((next-pos (chart-position-after position))
        word  hyphens  slashes )
    (loop
      ;; we enter the loop looking for a reason to stop
      (setq word (pos-terminal next-pos))
      (when (first-word-is-bracket-punct word)
        (return))
      (when (pos-preceding-whitespace next-pos)
        (return))
      (when (punctuation-terminates-no-space-sequence word next-pos)
        ;; We looked ahead, so reflect that in the stopping position
        (setq next-pos (chart-position-after next-pos))
        (return))
      (when (eq word *the-punctuation-hyphen*) (push next-pos hyphens))
      (when (eq word (punctuation-named #\/)) (push next-pos slashes))
      (setq next-pos (chart-position-after next-pos)))
    (values next-pos
            hyphens
            slashes)))











   

;;;---------------------------------------------------
;;; old code
;;;---------------------------------------------------

;;--- original reifier
(defun reify-ns-name-and-make-edge (words pos-before next-position)
  ;; We make an instance of a spelled name with the words as its sequence.
  ;; We make a rule that treats the pnames of the words as a polyword,
  ;; and we make a category for that rule with that same spelling,
  ;; form is 'proper-name'.  Something makes me think this could
  ;; be problem down the line, but we can deal with it when it emerges.
  (multiple-value-bind (category rule referent)
                       (if *big-mechanism*
                         (reify-ns-name-as-bio-entity 
                          words pos-before next-position)
                         (reify-spelled-name words))
    (tr :reified-ns-name referent pos-before next-position)
    (let ((edge
           (make-edge-over-long-span
            pos-before
            next-position
            category
            :rule rule
            :form (category-named 'proper-name)
            :referent referent
            :words words)))
      (revise-form-of-nospace-edge-if-necessary edge)
      (tr :made-edge edge)
      edge)))



          


;;;-----------------------------------------
;;; reasons to abort or get out of the loop
;;;-----------------------------------------

(defun word-never-in-ns-sequence (word)
  (declare (special *the-punctuation-period* *the-punctuation-colon*))
  (when (punctuation? word)
    (or (eq word *the-punctuation-period*)
        (eq word (punctuation-named #\,))
        (eq word *the-punctuation-colon*)
        (eq word (punctuation-named #\;)))))


(defun second-word-not-in-ns-sequence (word next-position)
  (declare (special *the-punctuation-period* *the-punctuation-colon*))
  (when (punctuation? word)
    (cond
      ((or (eq word *the-punctuation-period*)
	   (eq word (punctuation-named #\,))
	   (eq word *the-punctuation-colon*)
	   (eq word (punctuation-named #\;)))
       ;; more general than "." probably, but this is the canonical
       ;; case
       (unless (pos-terminal next-position)
	 (scan-next-position))
       (or (eq (pos-terminal next-position) *end-of-source*)
	   (pos-preceding-whitespace next-position)))
;;      ((eq word (punctuation-named #\/)) ;; cascades in signal pathways
;;       t)
      (t nil))))
      

(defun punctuation-terminates-no-space-sequence (word position)
  (declare (special *the-punctuation-period* *the-punctuation-colon*
                    *the-punctuation-colon* *the-punctuation-semicolon*))
  (cond
    ((or (eq word *the-punctuation-period*)
	 (eq word *the-punctuation-comma*)
	 (eq word *the-punctuation-semicolon*)
	 (eq word *the-punctuation-colon*))
     ;; if there's a space after this character, we assume that
     ;; it's punctuation, otherwise it's part of the compound
     ;; terminal.
     (sentence-final-punctuation-pattern?
      (chart-position-after position)))
    ((or (eq word  (punctuation-named #\-))
	 (eq word (punctuation-named #\/))
         (eq word  (punctuation-named #\@)))
     nil)
    (t t)))


(defun sentence-final-punctuation-pattern? (position)
  (declare (special *source-exhausted*))
  (unless (pos-terminal position)
    (scan-next-position))
  (cond
   (*source-exhausted* t)
   ((eq (pos-terminal position) *end-of-source*) t)
   (t
    (let ((pos-after (chart-position-after position)))
      (unless (pos-terminal pos-after)
        (scan-next-position))
      (if (or (no-space-before-word? pos-after) ;; e.g. a URL
	      (not *source-exhausted*))
	  nil
	  t)))))


(defun first-word-is-bracket-punct (word1)
  (word-is-bracket-punct word1))

(defun word-is-bracket-punct (word1)
  (or (eq word1 (punctuation-named #\( ))
      (eq word1 (punctuation-named #\[ ))
      (eq word1 (punctuation-named #\{ ))
      (eq word1 (punctuation-named #\< ))

      (eq word1 (punctuation-named #\) ))
      (eq word1 (punctuation-named #\] ))
      (eq word1 (punctuation-named #\} ))
      (eq word1 (punctuation-named #\> ))))
      

(defun first-or-second-word-is-bracket-punct (word1 word2)
  (or (eq word1 (punctuation-named #\( ))
      (eq word1 (punctuation-named #\[ ))
      (eq word1 (punctuation-named #\{ ))
      (eq word1 (punctuation-named #\< ))
      
      (eq word1 (punctuation-named #\) ))
      (eq word1 (punctuation-named #\] ))
      (eq word1 (punctuation-named #\} ))
      (eq word1 (punctuation-named #\> ))

      (eq word2 (punctuation-named #\( ))
      (eq word2 (punctuation-named #\[ ))
      (eq word2 (punctuation-named #\{ ))
      (eq word2 (punctuation-named #\< ))

      (eq word2 (punctuation-named #\) ))
      (eq word2 (punctuation-named #\] ))
      (eq word2 (punctuation-named #\} ))
      (eq word2 (punctuation-named #\> ))

      ;; 10/7/14 slashes have dedicated treatment
      ;;(eq word1 (punctuation-named #\/ ))
      ;;(eq word2 (punctuation-named #\/ ))
      ))



;;;----------
;;; go-fer's
;;;----------

;; These are more of an flet style, but the caller is hard enough
;; to read already.

(defun polyword-ends-here (position)
  (let* ((ev (pos-ends-here position))
	 (top-edge (ev-top-node ev)))
    (when (and top-edge
	       (edge-p top-edge)) ;; vs. :multiple-initial-edges
      (when (polyword-p (edge-category top-edge))
	top-edge))))

(defun edge-ends-here (position)
  (let* ((ev (pos-ends-here position))
	 (top-edge (ev-top-node ev)))
    (when (and top-edge
	       (edge-p top-edge)) 
      top-edge)))

(defun move-ns-start-before-leading-pw (position)
  ;; return a position that backs away from the given position by 
  ;; length of the polyword
  (let ((edge (polyword-ends-here position)))
    (unless edge
      (break "Expected to have a pw edge end at ~a" position))
    (values (ev-position (edge-starts-at edge))
	    (edge-category edge))))

(defun move-ns-start-before-leading-edge (position)
  ;; return a position that backs away from the given position by 
  ;; length of the polyword
  (let ((edge (edge-ends-here position)))
    (unless edge
      (break "Expected to have an edge end at ~a" position))
    (values (ev-position (edge-starts-at edge))
	    edge)))

