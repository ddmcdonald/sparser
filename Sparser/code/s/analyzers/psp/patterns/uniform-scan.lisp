;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.4 February 2014

;; Broken out from driver 2/5/13. This code was developed with some
;; difficulty and confusion for the JTC/TRS project. Throwing out most
;; of it and reconstruing these results as names. 
;; 0.4 2/25/14 Modified to retain the interior punctuation.

(in-package :sparser)

;;;---------------
;;; gating global
;;;---------------

(unless (boundp '*uniformly-scan-all-no-space-token-sequences*)
  (defparameter *uniformly-scan-all-no-space-token-sequences* nil
    "Gates this simpler alternative / complement to the pattern-driven
    scheme. Sort of a generic 'super' tokenizer"))
   

;;;---------------------------------------------------
;;; entry point from check-for/initiate-scan-patterns
;;;---------------------------------------------------

(defun collect-no-space-sequence-into-word (position)
  ;; called from check-for/initiate-scan-patterns when the gate is true
  ;; and no pattern-driven scan applied.
  (declare (special *source-exhausted* *source-start*))
  (tr :no-space-sequence-started-at (chart-position-before position))
  ;; There is no space recorded on this position, so the word just
  ;; before it and the word on it have no whitespace between them
  (let* ((pos-before (chart-position-before position))
	 (word-before (pos-terminal pos-before))
	 (word-after (pos-terminal position))
	 (next-position (chart-position-after position)))

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

    (when (second-word-not-in-ns-sequence word-after next-position)
      ;; e.g. sentence punctuation or EOS
      (tr :ns-second-word-not-in-ns-sequence word-after)
      (return-from collect-no-space-sequence-into-word
	nil))
    
    (when (first-or-second-word-is-bracket-punct word-before word-after)
      (tr :first-or-second-is-bracket-punct word-before word-after)
      (return-from collect-no-space-sequence-into-word
	nil))

    (let ((words `(,word-after ,word-before))) ;; reversed
      (loop
        (unless (pos-terminal next-position)
          (scan-next-position))
        (when *source-exhausted*
          (tr :ns-source-exhausted)
          (return))
        (if (pos-preceding-whitespace next-position)
          (then
           (tr :ns-whitespace next-position)
           (return)) ;; we're done
          
          (let ((word (pos-terminal next-position)))
            (when (and (punctuation? word)
                       (punctuation-terminates-no-space-sequence
                        word next-position))
              (tr :ns-terminating-punctuation word)
              (return))
            
            (push word words)
            (tr :ns-adding-word word)
            
            (setq next-position (chart-position-after next-position))
            
            (when (eq (pos-terminal next-position)
                      *end-of-source*)
              (tr :ns-reached-eos-at next-position)
              (return)))))

      ;; remove terminal punctuation, unless it's hyphen
      (when (eq (pos-capitalization position) :punctuation)
        (unless (eq (pos-terminal position) word::hyphen)
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

      (tr :ns-parsing-between pos-before next-position)
      
#|    ;; This is what it used to do. But (why?) the Grok load
      ;; doesn't include parse-between-boundaries, not that I recall
      ;; what we wanted to do that.
      (let ((layout (parse-between-boundaries pos-before next-position)))
        (tr :ns-layout layout)
        (case layout
          ((or :no-edges
               :contiguous-edges
               :has-unknown-words)
           (package-ns-words-as-compound-word words pos-before next-position))
          (:span-is-longer-than-segment
           (break "no-space-sequence: bad positions somehow.~
         ~%   Parsed span goes beyond presumed boundaries.~
         ~%   start = ~a  end = ~a" pos-before next-position))
          (otherwise
           (break "New ns layout: ~a" layout)))  |#

      ;; The cleanest conceptualization of things like M1A1 or
      ;; H1N1 is that they are names. So we take the words that
      ;; we've collected and make them the elemeents of the
      ;; sequence that defines the name, and we make the
      ;; corresponding egdge, reifying the identity of the name
      ;; in the model qua name, we would know what it names
      ;; if we understand the context.

      ;; This reifies the name and makes the edge
      (reify-ns-name-and-make-edge words pos-before next-position)

      (tr :ns-returning-position next-position)
      next-position)))


;; New scheme
(defun reify-ns-name-and-make-edge (words pos-before next-position)
  ;; We make an instance of a spelled name with the words as its sequence.
  ;; We make a rule that treats the pnames of the words as a polyword,
  ;; and we make a category for that rule with that same spelling,
  ;; form is 'proper-name'.  Something makes me think this could
  ;; be problem down the line, but we can deal with it when it emerges.
  (multiple-value-bind (category rule referent)
                       (reify-spelled-name words)
      (let ((edge
             (make-edge-over-long-span
              pos-before
              next-position
              category
              :rule rule
              :form category::proper-name
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
      ((eq word (punctuation-named #\/))
       t)
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
      word (chart-position-after position)))
    ((or (eq word  (punctuation-named #\-))
	 (eq word  (punctuation-named #\@)))
     nil)
    ((eq word (punctuation-named #\/))
       t)
    (t t)))


(defun sentence-final-punctuation-pattern? (word position)
  (declare (special *source-exhausted*) (ignore word))
  (if *source-exhausted*
    t
    (let ((pos-after (chart-position-after position)))
      (if (or (no-space-before-word? pos-after) ;; e.g. a URL
	      (not *source-exhausted*))
	  nil
	  t))))


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

      (eq word1 (punctuation-named #\/ ))
      (eq word2 (punctuation-named #\/ ))))



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

