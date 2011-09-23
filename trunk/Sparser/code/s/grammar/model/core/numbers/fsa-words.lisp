;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1999  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "fsa words"
;;;   Module:  "model;core:numbers:"
;;;  Version:  0.3 July 2007

;; initiated (redesigned from scratch) 11/30/93 v2.3, finished the first
;; version with stubs for the multi-word case 12/6.  Fixed a bug 1/14/94.
;; 0.1 (3/30) Flushed a break that checked an assumption that the next
;;      position after a number-word wouldn't have been scanned yet.
;; 0.2 (9/6/95) fixed a bug in how single number word edges are seen by
;;      the workbench by changing the edge-making call in Number-word-fsa.
;;      There didn't seem to be a problem with the others. 
;;     (9/20/99) Adjusted Apply-multiplier to also make an illions-distribution
;;      for the number.
;; 0.3 (7/16/07) Added alternative to just take them as a sequence rather
;;      than multiplying them out as a number

(in-package :sparser)

(unless (boundp '*keep-number-sequence-raw*)
  (defparameter *keep-number-sequence-raw* nil))


#|  This algorithm is based on the one developed by Longuet-Higgins |#

;;;-------------------
;;; state information
;;;-------------------



;;;--------
;;; driver
;;;--------

(defun number-word-fsa (triggering-edge starting-position)
  ;; the subroutines build the edges and dictate the return position.
  ;; Since we've at least got one number here it won't make sense
  ;; to return Nil. 
  (let ((end-of-number-word-sequence
         (scan-for-more-number-words
          (chart-position-after starting-position)))
        (prior-number-edge
         (preceded-by-digit-based-number starting-position)))

    (if (eq end-of-number-word-sequence
            (chart-position-after starting-position))

      ;; the "sequence" is one word long
      (if prior-number-edge
        ;; a frequent enough case that it's worth looking for right
        ;; here. Also lets us get around the fact that if we waited
        ;; the number-word's original category would have been respanned
        ;; as a number and the pattern would be lost.
        (then
          (unless (eq (edge-category triggering-edge)
                      (category-named 'multiplier))
            (break "Unexpected situation: number + something-other-than-~
                    multiplier:~%  ~a" triggering-edge))
          (let ((rule (multiply-labels (category-named 'number)
                                       (category-named 'multiplier))))
            (unless rule
              (break "Unexpected situation: no definition for number -> ~
                      number multiplier"))
            (make-completed-binary-edge 
             prior-number-edge triggering-edge rule)

            end-of-number-word-sequence))
 
            ;; Original treatment before the specific rule was defined
            ;; (see realization definition in numbers;object)
            ;(number-times-number-word prior-number-edge
            ;                          triggering-edge)
            
        (else
	  (if *keep-number-sequence-raw*
	    (assemble-raw-number-sequence
	     starting-position end-of-number-word-sequence prior-number-edge)
	    (else
	      ;; respan this singleton (e.g. "forty") as a number
	      ;; and return
	      (make-completed-unary-edge
	       (edge-starts-at triggering-edge)  ;; starting vector
	       (edge-ends-at triggering-edge)    ;; ending vector
	       :respaning-single-number-word     ;; 'rule'
	       triggering-edge                   ;; daughter
	       category::number                  ;; the edge's label
	       category::number                  ;; its form
	       (edge-referent triggering-edge))  ;; its referent

	      (chart-position-after starting-position)))))

      (else
	(if *keep-number-sequence-raw*
	  (assemble-raw-number-sequence
	   starting-position end-of-number-word-sequence prior-number-edge)
	  (else
	    ;; the sequence is substantive and has to be looked at carefully
	    (parse-number-sequence starting-position
				   end-of-number-word-sequence
				   prior-number-edge)
	    end-of-number-word-sequence ))))))





;;;--------------------------------------
;;; scan to collect all the number words
;;;--------------------------------------

(defun scan-for-more-number-words (starting-position)
  ;; first call is from Number-word-fsa, so we can make good assumptions
  ;; about the status of the starting position, but we'll check to
  ;; make sure
  (unless (pos-assessed? starting-position)
    ;(break "Assumption violated -- the starting position has been ~
    ;        scanned~%before we got here:  ~A" starting-position)
    (scan-next-position))

  ;; check for comma
  (if (eq :punctuation (pos-capitalization starting-position))
    (case (pos-terminal starting-position)
      (word::comma
       (look-for-number-words-beyond-comma starting-position))
      (otherwise
       ;; assume the punctuation terminates the number sequence
       starting-position ))

    ;; look for a single-term number rule on the next word
    (let* ((next-word (pos-terminal starting-position))
           (rs (word-rules next-word))
           (singles (when rs (rs-single-term-rewrites rs))))
      (if singles
        (let ((cfr (look-for-number-rule-in-list-of-cfrs singles))
              (next-position (chart-position-after starting-position)))

          ;; when the next word is a number word put in that edge
          ;; and continue the scan
          (if cfr
            (then
              (install-preterminal-edge cfr next-word
                                        starting-position next-position)
              (scan-for-more-number-words next-position))
            (else
              starting-position)))

        ;; otherwise return this position as where the sequence of
        ;; number words ends
        starting-position))))


(defun look-for-number-rule-in-list-of-cfrs (cfrs)
  ;; presumes that there's only going to be one
  (let ( label )
    (dolist (cfr cfrs)
      (setq label (cfr-category cfr))
      (when (or (eq label category::multiplier)
                (eq label category::ones-number)
                (eq label category::tens-number)
                (eq label category::teens-number))
        (return-from look-for-number-rule-in-list-of-cfrs cfr)))))


;;;--------------------------
;;; make sense of the result
;;;--------------------------

(defun apply-multiplier ()
  ;; This routine is the funcalled as the referent routine of a 
  ;; frozen (bad) schema (it ought to be yet another kind of 
  ;; substitution). It's return value becomes the number of
  ;; the edge that's just completed. 
  (let ((number left-referent)
        (multiplier right-referent))
    #|(unless (XXX number 'number)
      (break "Threading bug: the left-referent is not a number: ~
              ~%   ~a" number))
    (unless (XXX number 'multiplier)
      (break "Threading bug: the left-referent is not a multiplier: ~
              ~%   ~a" multiplier))|#
    (let* ((number-value (value-of 'value  number))
           (multiplier-value (value-of 'value (value-of 'value multiplier)))
           (net-value (* number-value multiplier-value))
           (net-number
            (find-or-make-number net-value)))
      ;; This pattern establishes an illions-distribution.
      (set-illion-distribution net-number number multiplier)
      net-number )))


;; old, original treatment for this case from Number-word-fsa
(defun number-times-number-word (number-edge number-word-edge)
  ;; e.g. "10 million" -- it only works for canonical numbers and
  ;;   not for other pronunciations like "runway one forty"
  ;; We install an edge over the pair, calculate its referent
  ;; numerical value, and return its end-point
  (let* ((number-obj (edge-referent number-edge))
         (integer (when (and (individual-p number-obj)
                             (indiv-typep number-obj
                                          category::number))
                    (value-of 'value number-obj)))
         (multiplier-obj (edge-referent number-word-edge))
         (multiplier-value
           (when (and (individual-p multiplier-obj)
                      (indiv-typep multiplier-obj
                                   category::number))
             (value-of 'value multiplier-obj))))

    ;; in a better world we'd trap here for patterns that didn't
    ;; fit these assumptions
    (when (eq (edge-category number-word-edge) category::multiplier)
      (let* ((result (* integer multiplier-value))
             (referent (construct-temporary-number result)))

        (make-chart-edge :left-edge number-edge
                         :right-edge number-word-edge
                         :category category::number
                         :referent referent
                         :rule :number-times-number-word)

        (pos-edge-ends-at number-word-edge)))))



(defun parse-number-sequence (starting-position
                              end-of-number-word-sequence
                              &optional prior-number-edge )
  ;; stub
  (make-chart-edge
   :starting-position (if prior-number-edge
                        (pos-edge-starts-at prior-number-edge)
                        starting-position)
   :ending-position end-of-number-word-sequence
   :category category::number
   :rule-name :stub-for-parse-number-sequence
   :referent nil))



#|
(defun assimilate-and-scan-ahead (left-edge right-edge)
  (let ((cfr (multiply-labels (edge-category left-edge)
                              (edge-category right-edge))))
    (unless cfr
      (break "No number rule combining~%  ~A and ~A"
             (edge-category left-edge) (edge-category right-edge)))
    )) |#




;;;-----------------
;;; context-checker
;;;-----------------

(defun preceded-by-digit-based-number (position)
  ;; doesn't actually make a check for the number being based on
  ;; a digit-sequence, but given that it's called by Number-word-fsa
  ;; there's no other possibility. 
  (let ((prior-tt (next-treetop/leftward position)))
    (when (edge-p prior-tt)
      ;; ignores case of multiple-initial-edges or of just a word
      (when (eq category::number
                (edge-category prior-tt))
        prior-tt ))))



;;;-----------------------------------------------------------------
;;; sequences of number words as pure sequences rather than numbers
;;;-----------------------------------------------------------------

;; motivated by call-signs "assassin one seven", but ought to have
;; other uses. 

;; We get here if *keep-number-sequence-raw* is not nil.

(defun assemble-raw-number-sequence (starting-position
				     end-of-number-word-sequence
				     prior-number-edge)
  ;; n.b. this is an fsa, so we're obligated to return a position
  (let ( numbers )
    (do ((position starting-position (chart-position-after position))
	 edge number )
	((eq position end-of-number-word-sequence))
      (setq edge (top-edge-starting-at position))
      (unless edge
	(error "There ought to be a number edge starting at ~a" position))
      (setq number (edge-referent edge))
      (unless number ;; might check the types too, but shouldn't be an issue
	(error "Why isn't there a number reference on edge ~a" edge))
      (push number numbers))
    (setq numbers (nreverse numbers))
    (let* ((sequence (define-sequence numbers (category-named 'number)))
	   (referent (define-or-find-individual (category-named 'sequence-of-numbers)
		       :numbers sequence)))
      (make-chart-edge
       :starting-position starting-position
       :ending-position end-of-number-word-sequence
       :category (category-named 'sequence-of-numbers)
       :form (category-named 'number)
       :rule-name :raw-number-sequence-fsa
       :referent referent)

      end-of-number-word-sequence)))

(define-category sequence-of-numbers
  :instantiates self
  :specializes sequence
  :binds ((numbers sequence)))

