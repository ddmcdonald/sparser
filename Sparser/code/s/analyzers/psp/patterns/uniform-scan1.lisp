;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  1.0 December 2014

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
   

;;;---------------------------------------------------
;;; entry point from check-for/initiate-scan-patterns
;;;---------------------------------------------------

;; (trace-ns-sequences)

(defun collect-no-space-sequence-into-word (position)
  ;; called from check-for/initiate-scan-patterns when the gate is true
  ;; and no pattern-driven scan applied. Note that 'position' is
  ;; the one that does not record any space between it's word
  ;; and the previous word.
  (declare (special *source-exhausted* *source-start*))

  (when (= (pos-token-index position) 1) ;; spurious: source-start
    (return-from collect-no-space-sequence-into-word nil))

  (tr :no-space-sequence-started-at (chart-position-before position))
  ;; There is no space recorded on this position, so the word just
  ;; before it and the word on it have no whitespace between them
  (let* ((pos-before (chart-position-before position))
	 (word-before (pos-terminal pos-before))
	 (word-after (pos-terminal position))
	 (next-position (chart-position-after position))
         pattern  hyphen?  slash?  )

    (when (first-word-is-bracket-punct word-before) ;; ( [ { <
      (tr :ns-first-word-is-bracket-punct word-before position)
      (return-from collect-no-space-sequence-into-word
	nil))

    (unless word-after
      (if (null (pos-assessed? position))
	(then
	  (scan-next-position)
	  (setq word-after (pos-terminal position)))
        (else
         (push-debug `(,position))
         (break "NS -- new assessment case. position = ~a" position))))

    (when (eq word-after *end-of-source*) ;; ". <eos>"
      (return-from collect-no-space-sequence-into-word nil))

    (tr :ns-considering-sequence-starting-with word-before word-after)

    (unless (has-been-status? ::preterminals-installed position)
      ;; pos-before = p2 (serine)
      ;; position = p3 (107)
      ;; unlikely, but better safe than sorry
      ;;//// test on something that would parse and has 3+ words
      (tr :ns-installing-terminal-edges word-after)
      (install-terminal-edges word-after position next-position))

    (when (second-word-not-in-ns-sequence word-after next-position)
      ;; e.g. sentence punctuation or EOS
      (tr :ns-second-word-not-in-ns-sequence word-after)
      (return-from collect-no-space-sequence-into-word
	nil))
    
    (when (first-or-second-word-is-bracket-punct word-before word-after)
      (tr :first-or-second-is-bracket-punct word-before word-after)
      (return-from collect-no-space-sequence-into-word
	nil))


    (flet ((record-word-pattern (position word)
             (let ((pattern-elememt
                    (characterize-word-type position word)))
               #+ignore(format t "~&at p~a for ~s, element = ~a~%"
                       (pos-token-index position) (word-pname word)
                       pattern-elememt)
               (push pattern-elememt pattern))))

      (when (eq word-before *the-punctuation-hyphen*)
        (push pos-before hyphen?))
      (when (eq word-before (punctuation-named #\/))
        (push pos-before slash?))
      (record-word-pattern pos-before word-before)

      (when (eq word-after *the-punctuation-hyphen*)
        (push position hyphen?))
      (when (eq word-after (punctuation-named #\/))
        (push position slash?))
      (record-word-pattern position word-after)

      ;; The first two words were just collected. 
      ;; This loop collects the rest.
      (let ((words `(,word-after ,word-before))) ;; n.b. reversed
        (setq position next-position)
        (loop
          (unless (pos-terminal next-position)
            (scan-next-position)
            (tr :ns-scanned-word (pos-terminal next-position)))

          (when (pos-preceding-whitespace next-position)
            (tr :ns-whitespace next-position)
            (return)) ;; we're done
          
          (let ((word (pos-terminal next-position)))
            (when (punctuation? word)
              (tr :ns-scanned-punctuation word)
              (cond
               ((eq word *the-punctuation-hyphen*)
                (push next-position hyphen?))
               ((eq word (punctuation-named #\/))
                (push next-position slash?))            
               (t
                (when (punctuation-terminates-no-space-sequence
                       word next-position)
                  (tr :ns-terminating-punctuation word)
                  (return)))))
             
            (push word words) ;(break "pos of word")
            (record-word-pattern next-position word)
            (tr :ns-adding-word word)

            (unless (has-been-status? ::preterminals-installed position)
              (tr :ns-installing-terminal-edges word)
              (install-terminal-edges word next-position
                                      (chart-position-after next-position)))
            
            (setq position next-position
                  next-position (chart-position-after next-position))
            
            (when (eq (pos-terminal next-position)
                      *end-of-source*)
              (tr :ns-reached-eos-at next-position)
              (return))))
        ;;(break "pattern = ~a" pattern)

        ;; remove terminal punctuation, unless it's a hyphen
        (when (eq (pos-capitalization position) :punctuation)
          (unless (eq (pos-terminal position) *the-punctuation-hyphen*)
            (pop words)))

        (setq words (nreverse words)
              pattern (nreverse pattern))
        (when slash?
          (setq slash? (nreverse slash?)))

        (when (polywords-in-region pos-before next-position)
          (push-debug `(,words ,pattern ,slash?))
          (break "Need to consider PW within no-space region ~
                  from p~a to p~a"
                 (pos-token-index pos-before)
                 (pos-token-index next-position)))

        (post-accumulator-ns-handler
         words pattern pos-before next-position hyphen? slash?)

        (tr :ns-returning-position next-position)
        next-position))))

;;//// move
(defun polywords-in-region (start-pos end-pos)
  ;; if all of the edges between these positions are just over
  ;; single words return nil, otherwise return the first
  ;; longer edge.
  (let ((edges (edges-between start-pos end-pos)))
    (dolist (edge edges nil)
      (unless (one-word-long? edge)
        (return-from polywords-in-region edge)))))
  


(defun post-accumulator-ns-handler (words pattern
                                    pos-before next-position
                                    hyphen? slash?)

  (let ((layout
         (when *parser-interior-of-no-space-token-sequence*
           (tr :ns-parsing-between pos-before next-position)
           (parse-between-boundaries pos-before next-position))))
    (tr :ns-layout layout)
    ;;(push-debug `(,words ,pos-before ,next-position)) (break "layout = ~a" layout)
    ;; (setq words (car *) pos-before (cadr *) next-position (caddr *))
    ;; (print-flat-forest t pos-before next-position)

    (unless (eq layout :single-span) ;; Do nothing. It's already known

      (or (resolve-ns-pattern pattern words slash? pos-before next-position)

          (cond
           ;; This is the older, specialist-based scheme that was 
           ;; beginning to get too complicated: SHOC2/Sur-8", which
           ;; prompted writing a stronger pattern matcher
           #+ignore((eq layout :span-is-longer-than-segment)
            (error "no-space-sequence: bad positions somehow.~
                  ~%   Parsed span goes beyond presumed boundaries.~
                  ~%   start = ~a  end = ~a" pos-before next-position))
           (hyphen?
            (nospace-hyphen-specialist hyphen? pos-before next-position))
           (t 
            ;; The cleanest conceptualization of things like M1A1 or
            ;; H1N1 is that they are names. So we take the words that
            ;; we've collected and make them the elemeents of the
            ;; sequence that defines the name, and we make the
            ;; corresponding egdge, reifying the identity of the name
            ;; in the model qua name, we would know what it names
            ;; if we understand the context.
            (reify-ns-name-and-make-edge words pos-before next-position)))))))


;; n.b. there's an OBO lookup inside reify-ns-name-as-bio-entity
;;
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
      (tr :made-edge edge)
      edge)))



          


;;;-----------------------------------------
;;; reasons to abort or get out of the loop
;;;-----------------------------------------

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
  (declare (special *the-punctuation-period* *the-punctuation-colon*))
  (cond
    ((or (eq word *the-punctuation-period*)
	 (eq word (punctuation-named #\,))
	 (eq word (punctuation-named #\;))
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

