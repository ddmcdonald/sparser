;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.7 October 2014

;; Broken out from driver 2/5/13. This code was developed with some
;; difficulty and confusion for the JTC/TRS project. Throwing out most
;; of it and reconstruing these results as names. 
;; 0.4 2/25/14 Modified to retain the interior punctuation.
;; 0.5 7/28/14 Turned parse-between-boundaries back on for "Ser1507"
;;     8/7/14 Debugged edge case (EOS) in sentence-final-punctuation-pattern?
;; 0.6 9/9/14 refactoring to make management simpler.
;; 0.7 10/9/14 Added scare quotes, debugged edge cases. 

(in-package :sparser)

;;;----------------
;;; gating globals
;;;----------------

(unless (boundp '*uniformly-scan-all-no-space-token-sequences*)
  (defparameter *uniformly-scan-all-no-space-token-sequences* nil
    "Gates this simpler alternative / complement to the pattern-driven
    scheme. Sort of a generic 'super' tokenizer"))

(unless (boundp '*parser-interior-of-no-space-token-sequence*)
  (defparameter *parser-interior-of-no-space-token-sequence* nil
    "Controls whether we try to parse the edges of the words
     inside the span."))
   

;;;---------------------------------------------------
;;; entry point from check-for/initiate-scan-patterns
;;;---------------------------------------------------

(defun collect-no-space-sequence-into-word (position)
  ;; called from check-for/initiate-scan-patterns when the gate is true
  ;; and no pattern-driven scan applied.
  (declare (special *source-exhausted* *source-start*))

  (when (= (pos-token-index position) 1)
    ;; There is no space between the marker word source-start 
    ;; at p0 and the first 'real' word at p1, but it looks that
    ;; way to the code that calls this
    (return-from collect-no-space-sequence-into-word nil))

  (tr :no-space-sequence-started-at (chart-position-before position))
  ;; There is no space recorded on this position, so the word just
  ;; before it and the word on it have no whitespace between them
  (let* ((pos-before (chart-position-before position))
	 (word-before (pos-terminal pos-before))
	 (word-after (pos-terminal position))
	 (next-position (chart-position-after position))
         hyphen?  slash?  leading-quote?  )

    (when (first-word-is-bracket-punct word-before)
      (tr :ns-first-word-is-bracket-punct word-before position)
      (return-from collect-no-space-sequence-into-word
	nil))


#|  ;; What is the point? Forgot the use-case
    (when (polyword-ends-here position)
      (multiple-value-setq (pos-before word-before)
	(move-ns-start-before-leading-pw position))
      (tr :moved-ns-start-pos-in-front-of-pw pos-before))
    ;; pw case is probably subsumed by edge case
    (when (edge-ends-here position)
      (multiple-value-setq (pos-before word-before)
	(move-ns-start-before-leading-edge position))
      (tr :moved-ns-start-pos-in-front-of-edge word-before))  |#

    (unless word-after
      (if (null (pos-assessed? position))
	(then
	  (scan-next-position)
	  (setq word-after (pos-terminal position)))
        (else
         (push-debug `(,position))
         (break "NS -- new assessment case. position = ~a" position))))
    (tr :ns-considering-sequence-starting-with word-before word-after)

    (when (eq word-before *the-punctuation-hyphen*)
      (push pos-before hyphen?))
    (when (eq word-after *the-punctuation-hyphen*)
      (push position hyphen?))
    (when (eq word-before (punctuation-named #\/))
      (push pos-before slash?))
    (when (eq word-after (punctuation-named #\/))
      (push position slash?))
    (when (eq word-before (punctuation-named #\'))
      ;; single, potential "scare" quote
      (setq leading-quote? pos-before))

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

    ;; The first two words were just collected. 
    ;; This loop collects the rest.
    (let ((words `(,word-after ,word-before))) ;; reversed
      (setq position next-position)
      (loop
        (unless (pos-terminal next-position)
          (scan-next-position)
          (tr :ns-scanned-word (pos-terminal next-position)))
        (unless (when *source-exhausted*
                  (tr :ns-source-exhausted)
                  (return))
          (if (pos-preceding-whitespace next-position)
            (then
             (tr :ns-whitespace next-position)
             (return)) ;; we're done
          
            (let ((word (pos-terminal next-position)))
              (when (punctuation? word)
                (tr :ns-scanned-punctuation word)
                (cond
                 ((eq word *the-punctuation-hyphen*)
                  ;(push word words)
                  (push next-position hyphen?))
                 ((eq word (punctuation-named #\/))
                  ;(push word words)
                  (push next-position slash?))
                 ((eq word (punctuation-named #\'))
                  (unless leading-quote?
                    (return)))            
                 (t
                  (when (punctuation-terminates-no-space-sequence
                         word next-position)
                    (tr :ns-terminating-punctuation word)
                    (return)))))
             
              (push word words) ;(break "pos of word")
              (tr :ns-adding-word word)

              (unless (has-been-status? ::preterminals-installed position)
                (tr :ns-installing-terminal-edges word)
                (push-debug `(,word ,position ,next-position)) ;;(break "foo!")
                (install-terminal-edges word next-position
                                        (chart-position-after next-position)))
            
              (setq position next-position
                    next-position (chart-position-after next-position))
            
              (when (eq (pos-terminal next-position)
                        *end-of-source*)
                (tr :ns-reached-eos-at next-position)
                (return))))))

      ;; remove terminal punctuation, unless it's hyphen or matching quote
      (when (eq (pos-capitalization position) :punctuation)
        (unless (or (eq (pos-terminal position) *the-punctuation-hyphen*)
                    leading-quote?)
          (pop words)))

      (setq words (nreverse words))

      ;; remove things swept up that don't belong
      (when (eq (car words) *source-start*)
        (setq words (cdr words)))
      ;; Retain interior punctuation
      ;;(loop for w in words
      ;; when (punctuation? w) ;; ,"
      ;; do (setq words (remove w words :test #'eq)))

      (unless (> (length words) 1) ;; false alarm
        (return-from collect-no-space-sequence-into-word nil))

      ;; see if there's as parse of the whole thing already defined
      (let ((layout
             (unless leading-quote? ;; could fix treetop walk and avoid this
               (when *parser-interior-of-no-space-token-sequence*
                 (tr :ns-parsing-between pos-before next-position)
                 (parse-between-boundaries pos-before next-position)))))
        (cond
         ((eq layout :single-span)) ;; Do nothing. It's already known
         ((and hyphen? slash?)
          (nospace-slash-and-hyphen-specialist 
           hyphen? slash? pos-before next-position))
         (hyphen?
          (nospace-hyphen-specialist hyphen? pos-before next-position))
         (slash?
          (nospace-slash-specialist slash? pos-before next-position))
         (leading-quote?
          (scare-quote-specialist leading-quote? words pos-before next-position))
         (t 
          (parse-and-reify-ns-sequence layout words pos-before next-position))))

      (tr :ns-returning-position next-position)
      next-position)))


(defun parse-and-reify-ns-sequence (layout words pos-before next-position)   
  (let ((layout 
         (or layout
             (when *parser-interior-of-no-space-token-sequence*
               (parse-between-boundaries pos-before next-position)))))
    ;; (setq words (car *) pos-before (cadr *) next-position (caddr *))
    ;; (print-flat-forest t pos-before next-position)
    ;;(push-debug `(,words ,pos-before ,next-position)) (break "layout = ~a" layout)
    (tr :ns-layout layout)
    (when layout
      (case layout
        (:single-span) ;; the words already composed
        (:contiguous-edges) ;; let it fall through

        ((or :no-edges
             ;; perhaps there's something interesting to do
             ;; by adapting some segment-level operation,
             ;; but for now drop through and reify the words
             :has-unknown-words))         
        (:span-is-longer-than-segment
         (error "no-space-sequence: bad positions somehow.~
         ~%   Parsed span goes beyond presumed boundaries.~
         ~%   start = ~a  end = ~a" pos-before next-position))
        (otherwise
         (break "New no-space layout: ~a" layout))))

    ;; The cleanest conceptualization of things like M1A1 or
    ;; H1N1 is that they are names. So we take the words that
    ;; we've collected and make them the elemeents of the
    ;; sequence that defines the name, and we make the
    ;; corresponding egdge, reifying the identity of the name
    ;; in the model qua name, we would know what it names
    ;; if we understand the context.

    (unless (eq layout :single-span)
      ;; This reifies the name and makes the edge if rules didn't do it
      (reify-ns-name-and-make-edge words pos-before next-position))))


;; New scheme
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
      (let ((edge
             (make-edge-over-long-span
              pos-before
              next-position
              category
              :rule rule
              :form (category-named 'proper-name)
              :referent referent
              :words words)))
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

