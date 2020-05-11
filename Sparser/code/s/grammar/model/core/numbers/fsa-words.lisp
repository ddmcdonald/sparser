;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1999,2012-2016  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "fsa words"
;;;   Module:  "model;core:numbers:"
;;;  Version:  April 2016

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
;;      than multiplying them out as a number.  4/1/12 blocked call to undefined
;;      fn for after commas.  
;; 0.4 (9/27/13) Discriminated more cases in apply-multiplier.
;;

(in-package :sparser)

(unless (boundp '*keep-number-sequence-raw*)
  (defparameter *keep-number-sequence-raw* nil))


#|  This algorithm is based on the one developed by Longuet-Higgins |#

;;;-------------------
;;; state information
;;;-------------------


;;;-------
;;; trace
;;;-------

(defparameter *trace-number-word-fsa* nil)
(defun trace-number-words ()
  (setq *trace-number-word-fsa* t))
(defun untrace-number-words ()
  (setq *trace-number-word-fsa* nil))

(deftrace :nw-starting-with (e)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] triggered by ~a" e)))

(deftrace :nw-fsa-hit-a-comma (pos)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] encountered a comma at p~a"
               (pos-token-index pos))))

(deftrace :nw-terminating-at (pos)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] terminating at p~a"
               (pos-token-index pos))))

(deftrace :nw-installing-edge (word cfr)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] installing edge over ~s using ~a"
               (pname word) cfr)))

(deftrace :nw-not-number-word (word)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] ~s does not have an number word rule"
               (pname word))))

(deftrace :nw-ended-with (preceding-num-edge)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] Calulating value. ~a preceded the number words"
               (if (null preceding-num-edge)
                 "nothing"
                 (format nil "~a" preceding-num-edge)))))

(deftrace :nw-compute-value (edges)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] compute value over ~a edges" (length edges))))

(deftrace :nw-number-number-word (integer mult-value)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] multiplying ~a * ~a" integer mult-value)))

(deftrace :nw-made-edge (edge value)
  (when *trace-number-word-fsa*
    (trace-msg "[number-words] Made edge e~a over ~a"
               (edge-position-in-resource-array edge) value)))

;;;--------
;;; driver
;;;--------

(defun number-word-fsa (triggering-edge starting-position)
  (declare (special category::multiplier category::number))
  ;; the subroutines build the edges and dictate the return position.
  ;; Since we've at least got one number here it won't make sense
  ;; to return Nil.
  (tr :nw-starting-with triggering-edge)
  (let ((end-of-number-word-sequence ;; position just after
         (scan-for-more-number-words
          (chart-position-after starting-position)))
        (prior-number-edge
         (preceded-by-digit-based-number starting-position)))
    (tr :nw-ended-with prior-number-edge)

    (if (eq end-of-number-word-sequence
            (chart-position-after starting-position))
      ;; the "sequence" is one word long
      (if prior-number-edge
        ;; a frequent enough case that it's worth looking for right
        ;; here. Also lets us get around the fact that if we waited
        ;; the number-word's original category would have been respanned
          ;; as a number and the pattern would be lost.
        (when (eq (edge-category triggering-edge)
                  category::multiplier)
          ;; compare: "11 two-component systems". Suspenders to go with
          ;; this belt for that case would be to notice the no-space hyphen.
          (let ((rule (multiply-labels category::number category::multiplier)))
            (unless rule
              (error "Unexpected situation: no definition for number -> ~
                      number multiplier"))
            (make-completed-binary-edge 
             prior-number-edge triggering-edge rule)
            ;; retrun position sequence ends at
            end-of-number-word-sequence))
 
        ;; no prior number, but just one edge
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
	       :number-word-fsa ;; :respaning-single-number-word     ;; 'rule'
	       triggering-edge                   ;; daughter
	       category::number                  ;; the edge's label
	       category::number                  ;; its form
	       (edge-referent triggering-edge))  ;; its referent

	      (chart-position-after starting-position)))))

      ;; multiple edges
      (else
	(if *keep-number-sequence-raw* ;; for call signs
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
    (scan-next-position))
  (if (eq :punctuation (pos-capitalization starting-position))
    (then
      (tr :nw-fsa-hit-a-comma starting-position)
      (case (pos-terminal starting-position)
        ;;///  (word::comma  -- follow on here needs to be written
        ;;        (look-for-number-words-beyond-comma starting-position))
        (otherwise
         ;; punt and asume we're done
         (tr :nw-terminating-at starting-position)
         starting-position )))

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
              (tr :nw-installing-edge next-word cfr)
              (install-preterminal-edge cfr next-word
                                        starting-position next-position)
              (scan-for-more-number-words next-position))
            (else
              (tr :nw-not-number-word next-word)
              (tr :nw-terminating-at starting-position)
              ;;(chart-position-before starting-position)
              starting-position
)))

        ;; otherwise return this position as where the sequence of
        ;; number words ends
        (else
          (tr :nw-terminating-at starting-position)
          ;;(chart-position-before starting-position)
          starting-position
)))))


(defun look-for-number-rule-in-list-of-cfrs (cfrs)
  (let ( label )
    (dolist (cfr cfrs nil)
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
    (push-debug `(,number ,multiplier))
    (let* ((number-value
            (cond ((typep number 'number) number)
                  ((itypep number 'multiplier) ;; more specific than number
                   (value-of 'value (value-of 'value number)))
                  ((itypep number 'number)
                   (value-of 'value number))
                  (t (error "New type for number: ~a"
                            (itype-of number)))))
           (multiplier-value 
            (cond ((typep multiplier 'number) multiplier)
                  ((itypep multiplier 'multiplier)
                   (let ((v (value-of 'value multiplier)))
                     (cond ((itypep v 'number)
                            (value-of 'value v))
                           (t (error "New type for value of multiplier")))))
                  (t (error "New type for multiplier: ~a"
                            (itype-of multiplier))))))      

      (let* ((net-value (* number-value multiplier-value))
             (net-number
              (find-or-make-number net-value)))
        ;; This pattern establishes an illions-distribution.
        (set-illion-distribution net-number number multiplier)
        net-number ))))



(defun parse-number-sequence (start-pos end-pos
                              &optional prior-number-edge )
  "The scan has laid-down number edges to record every number
   word it encountered. Here we apply as(elsesimilate them into
   an edge with a representation of the numberic value they
   correspond to."
  ;;/// Lookup Longuit-Higgens' general algorithm. For the
  ;; moment just consider two-edge case.
  (let ((edges (treetops-between start-pos end-pos)))
    (tr :nw-compute-value edges)
    (let ((value
           (cond
             ((and prior-number-edge (= 1 (length edges))) ;; e.g. "10 million"
              (find-or-make-number
               (number-times-number-word prior-number-edge (car edges))))
             (t
              (compute-word-based-number edges)))))
    
      (let ((edge       
            (make-edge-over-long-span
             (if prior-number-edge ;; starting positiono
               (pos-edge-starts-at prior-number-edge)
               start-pos)
             end-pos
             category::number
             :form category::number
             :rule 'parse-number-sequence
             :referent value
             :constituents edges)))
        (tr :nw-made-edge edge value)
        edge))))



(defun number-times-number-word (number-edge number-word-edge)
  ;; e.g. "10 million" -- it only works for canonical numbers and
  ;;   not for other pronunciations like "runway one forty"
  ;; We install an edge over the pair, calculate its referent
  ;; numerical value, and return its end-point
  (let* ((number-obj (edge-referent number-edge))
         (integer (when (and (individual-p number-obj)
                             (itypep number-obj 'number))
                    (value-of 'value number-obj)))
         (multiplier-obj (edge-referent number-word-edge))
         (multiplier-value
           (when (and (individual-p multiplier-obj)
                      (itypep multiplier-obj 'number))
             (value-of 'value multiplier-obj))))
    (tr :nw-number-number-word integer multiplier-value)

    (if (eq (edge-category number-word-edge) category::multiplier)
      (* integer multiplier-value)
      (else
        (when *trace-number-word-fsa*
          (warn "Unhandled number pattern: ~a ~a" number-edge number-word-edge))
        0))))

(defun compute-word-based-number (edges)
  "Muliply successives prefixes: ((two hundred) thousand).
   Tricky part is recognizing when we shift back down and will need to
   include an addition step: 'two hundred fifty'"
  (let* ((categories (mapcar #'edge-category edges)) ;; for downshifting
         (numbers (mapcar #'edge-referent edges))
         (integers (loop for number in numbers
                      collect (integer-for-number number))))
    ;; Simplifying initial runs by restricting to just two numbers
    (when (> (length edges) 2)
      (warn "more than three edges in number word: ~a~%in ~a" edges (current-string)))
    (let ((value (* (car integers) (cadr integers))))
      (find-or-make-number value))))







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
  (declare (ignore prior-number-edge)(special category::sequence-of-numbers))
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
    (let* ((sequence (define-sequence numbers))
	   (referent (define-or-find-individual category::sequence-of-numbers
		       :numbers sequence)))
      (make-chart-edge
       :starting-position starting-position
       :ending-position end-of-number-word-sequence
       :category category::sequence-of-numbers
       :form category::number
       :rule-name :raw-number-sequence-fsa
       :referent referent)

      end-of-number-word-sequence)))

(define-category sequence-of-numbers
  :instantiates self
  :specializes sequence
  :binds ((numbers sequence)))

