;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996, 2010  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.2 March 2007

;; initiated 9/21/95. Fleshed out 10/5. 
;; 0.1 (7/12/96) Substantially revised, and its state maintainance was buggy. 
;; 0.2 (3/1/07) Wrote a new scheme that groups no-space sequences into single
;;      word-based edges without paying attention to patterns.

(in-package :sparser)

;;;-------
;;; state
;;;-------

(defvar *position-scan-pattern-started-at* nil
  "Points to where the position before the first item in the pattern.
   Initialized by scan-pattern-starting-pair when it succeeds in 
   finding a two-term prefix.")

(defvar *position-reached-by-scan-pattern* nil
  "Points to the maximum position scanned in the process of checking
   for scan-patterns. Initialized by scan-pattern-starting-pair when
   it succeeds in finding a two-term prefix.")


;;;---------------------------
;;; startup, final dispatches
;;;---------------------------

(defun initiate-scan-pattern-driver (state-set position)
  (if *uniformly-scan-all-no-space-token-sequences*
    (collect-no-space-sequence-into-word position)
    (initiate-scan-pattern-driver1 state-set position)))

(defun initiate-scan-pattern-driver1 (state-set position)
  ;; Called from check-for/initiate-scan-patterns when the word
  ;; at this position and the word just before it are the prefix
  ;; of some no-space scan pattern as determined by the tests made
  ;; in Scan-pattern-starting-pair. 

  (let ((next-position (chart-position-after position)))
    (tr :scan-pattern-search-initiated next-position state-set)

    ;; We're positioned just in front of the second word of the pattern,
    ;; which means that our pattern has gotten as the position after that.
    (setq *position-reached-by-scan-pattern* next-position)

    (let ((sp/s 
           (catch :accepted-scan-pattern/s
              
             (catch :scan-patterns-failed
               (try-to-extend-scan-pattern state-set position next-position))
             
             (return-from initiate-scan-pattern-driver1 nil))))
      
      (when sp/s
        (tr :scan-pattern-search-reached-accept-state/s sp/s)
        (process-accepted-scan-pattern/s sp/s)))))

    

;;;------------
;;; inner loop
;;;------------

(defun try-to-extend-scan-pattern (state-set position next-position)
  ;; Initially called from Initiate-scan-pattern-driver and then
  ;; recursively from See-if-next-token-extends-pattern/s.
  ;; If there's no whitespace at the next position we'll check the terminal
  ;; there and try to keep going.  If there isn't, or if the terminal isn't
  ;; a continuation of any of the state/s reached so far, we check the state-set
  ;; for accept-states and throw them back. 
  
  (tr :pattern-search-scanned-pos next-position)
  
  (unless (pos-terminal next-position)
    (scan-next-position))
  
  (if (null (pos-preceding-whitespace next-position))
    (then
      (tr :no-whitespace-at-pos-pattern-search-scanned next-position)
      (see-if-next-token-extends-pattern/s state-set next-position))
    
    (else
      ;; There's whitespace of some sort in front of the next word,
      ;; which breaks the chain. We terminate here, throwing back
      ;; to the initiating routine with the choice of Catch
      ;; determined by whether or not we have something to accept.
      (tr :pattern-search-terminated-by-whitespace position)
      (terminate-scan-pattern-search state-set))))



(defun see-if-next-token-extends-pattern/s (state-set position)
  (let ((word (pos-terminal position)))    
    (let ((continuing-state-set
           (continuation-from-state/s? state-set
                                       position
                                       word)))
      (if continuing-state-set ;; assimilate the word we've just incorporated 
        (let ((next-position (chart-position-after position)))
          (setq *position-reached-by-scan-pattern* next-position)
          (try-to-extend-scan-pattern continuing-state-set
                                      position next-position))
        (else
          (tr :pattern-search-terminated-by-non-extension)
          (terminate-scan-pattern-search state-set))))))



(defun terminate-scan-pattern-search (state)
  ;; common subroutine of Try-to-extend-scan-pattern
  (if (state-is-an-accept-state? state)
    (then
      (throw :accepted-scan-pattern/s state))
    
    (if *prior-acceptable-states*
      (then (setq *position-reached-by-scan-pattern*
                  (cdr *prior-acceptable-states*))
            (throw :accepted-scan-pattern/s
                   (car *prior-acceptable-states*)))
      
      (throw :scan-patterns-failed nil))))


;;;--------------------------------------
;;; simpler scheme not based on patterns
;;;--------------------------------------

(defun collect-no-space-sequence-into-word (position)
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

    (when (polyword-ends-here position)
      (multiple-value-setq (pos-before word-before)
	(move-ns-start-before-leading-pw position))
      (tr :moved-ns-start-pos-in-front-of-pw pos-before))
    ;; pw case is probably subsumed by edge case
    (when (edge-ends-here position)
      (multiple-value-setq (pos-before word-before)
	(move-ns-start-before-leading-edge position))
      (tr :moved-ns-start-pos-in-front-of-edge word-before))

    (unless word-after
      (if (null (pos-assessed? position))
	(then
	  (scan-next-position)
	  (setq word-after (pos-terminal position)))
	(break "NS -- new case. position = ~a" position)))
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

      (setq words (nreverse words))

    (tr :ns-parsing-between pos-before next-position)
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
	 (break "New ns layout: ~a" layout)))

      (tr :ns-returning-position next-position)
      next-position))))


(defun package-ns-words-as-compound-word (words pos-before next-position)
  #|(let* ((pname 
	  (apply #'concatenate 'string
		 (mapcar #'(lambda (w)
			     (typecase w
			       (word (word-pname w))
			       (polyword (pw-pname w))
			       (otherwise
				(break "New type: ~a~%~a"
				       (type-of w) w))))
			 words)))
	 (word (resolve/make pname)))
    (setf (unit-plist word)
	  `(:compound ,words ,@(unit-plist word)))
    (tr :no-space-sequence-made-word word) |#

  (let ((compound-word (define-individual 'compound-word
			 :list-of-words words)))

    (let ((edge (make-edge-over-long-span
		 pos-before
		 next-position
		 category::compound-word
		 :rule :no-space-sequence
		 :form (if (> (length words) 1)
			 category::np
			 category::common-noun)
		 :referent compound-word)))
      (tr :no-space-made-edge edge)
      (ev-position (edge-ends-at edge)))))

      
;;;-----------------------------------------
;;; reasons to abort or get out of the loop
;;;-----------------------------------------

(defun second-word-not-in-ns-sequence (word next-position)
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


;;;--------
;;; traces
;;;--------

(defparameter *trace-ns-sequences* nil)

(defun trace-ns-sequences ()
  (setq *trace-ns-sequences* t))

(defun untrace-ns-sequences ()
  (setq *trace-ns-sequences* nil))

(deftrace :ns-considering-sequence-starting-with (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] first word: ~a, second word: ~a"
	       word-before word-after)))

(deftrace :moved-ns-start-pos-in-front-of-pw (pos-before)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is a polyword~
              ~%   moved position-before to ~a" pos-before)))

(deftrace :moved-ns-start-pos-in-front-of-edge (edge)
  (when *trace-ns-sequences*
    (trace-msg "[ns] 'first word' is an edge~
              ~%   moved position-before to start of ~a" edge)))

(deftrace :ns-second-word-not-in-ns-sequence (word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because ~a doesn't belong in a ns sequence"
	       word-after)))

(deftrace :ns-first-word-is-bracket-punct (word-before position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because first word, ~a, is bracket punctuation"
	       word-before)))

(deftrace :first-or-second-is-bracket-punct (word-before word-after)
  (when *trace-ns-sequences*
    (trace-msg "[ns] aborting because one of these is bracket punctuation~
              ~%   ~a ~a" word-before word-after)))

(deftrace :ns-source-exhausted ()
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS")))

(deftrace :ns-whitespace (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: whitespace before ~a"
	       next-position)))

(deftrace :ns-terminating-punctuation (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: ~a is terminating punctuation"
	       word)))

(deftrace :ns-adding-word (word)
  (when *trace-ns-sequences*
    (trace-msg "[ns] adding the word ~a" word)))
  
(deftrace :ns-reached-eos-at (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] dropping out of the loop: reached EOS at ~a"
	       next-position)))

(deftrace :ns-parsing-between (pos-before next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] parsing between ~a and ~a"
	       pos-before next-position)))

(deftrace :ns-layout (layout)
  (when *trace-ns-sequences*
    (trace-msg "[ns] layout after parsing b/w boundaries is ~a"
	       layout)))

(deftrace :ns-returning-position (next-position)
  (when *trace-ns-sequences*
    (trace-msg "[ns] finished at position ~a" next-position)))
