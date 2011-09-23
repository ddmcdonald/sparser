;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2003,2011  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "fsa digits"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  6.8 February 2011

;; 5.0 (10/5 v2.3) rephrased the scan step to get subtler steps
;; 5.1 (9/14/93) updated the scanning calls, finished 9/16
;; 6.0 (9/17) Redid the algorithm for computing the number, which looks like
;;      it could never have worked
;; 6.1 (12/22) extended fsa to do hyphenated-numbers
;; 6.2 (4/27/94) fixed a fencepost error in them ("44-")
;; 6.3 (10/26) walked out of dangling hyphen treatment since phenomena like
;;      "43-year-old" are handled by the tree families now
;; 6.4 (12/22/95) changed an access to a lambda var to make it unambig.
;; 6.5 (1/2/96) added look-behind for period (.83)
;; 6.6 (10/13/97) Added documentation for how we get here. Factored model-based
;;      operations out inside a gate.
;;     (7/5/98) hooked Span-digits-number into the realization annotations.
;;      Conditioned the creation of a plain category for number according to
;;      whether the model was loaded. 
;;    (6/4/99) added information in the call to Annotate-individual to
;;      Span-digits-number. (6/8) wrote Hookup-daughter-number-rnodes to do
;;      that. (7/4) fixed bug n Map-out-the-distribution where it used symbols
;;      rather than strings.
;; 6.7 (7/18/99) Changed the arguments that Span-digits-number passes to 
;;       construct-temporary-number so we won't have forgotten the
;;       word that we created -- modivated by nlg. 
;;     (7/19) modified Hookup-daughter-number-rnodes to ignore its check for
;;       multiple rnodes directly associated with a referent in preference
;;       for using the one assigned to the edge and not worrying about it.
;; 6.8 (7/23) Changed Set-illion-distribution's choice of the value to assign
;;       to the illions relation from the lisp value to the number object.
;;     (9/20) Remodularized that, creating Set-illion-distribution-from-edge
;;       that calls the generic routine.
;;     (3/26/03) Fixed the 'has a decimal point' case of Map-out-the-distribution
;;       so it gets the illion done right for "93.85".
;;     (2/8/07) Added ws check to keep the check for a prior decimal point from
;;       looking back across a line break. 2/20/11 tweeked process description.

(in-package :sparser)

#|

We get here because the tokenizer, when it sees a contiguous sequence of digits,
marks the capitalization field (pos-capitalization) corresponding to the word
it created as :digits.  This is picked up when the preterminals are being 
introduced into the chart and reacted to by preterminals-for-unknown, under
the control of the flag *make-edges-over-new-digit-sequences*
.
The result is a call to make-edge-over-unknown-digit-sequence, which leads to
an edge over the word, with the label Digit-sequence, nothing in its form field,
and either a lisp number or a Krisp number as its referent, depending on the
whether or not the model is loaded.  The category Digit-sequence has the fsa
field of its rule set set to the Fsa-for-digits, defined here.  If it were
a known word, the route would have been essentially the same, except that
the fsa would be identified at the word level rather than the category level.

|#


;;;------------
;;; categories
;;;------------

(define-category digit-sequence)

(defparameter *the-category-of-digit-sequences*
  (category-named 'digit-sequence))

(unless *include-model-facilities*
  ;; If they are, we want a referential category. This form without
  ;; arguments makes a plain one. 
  (define-category number))


;;;-----------------------------
;;; identifying the FSA routine
;;;-----------------------------

(unless (boundp '*fsa-for-digits*)
  (defparameter *fsa-for-digits*  'digit-FSA))


;;--- wiring up the category to the fsa

(setf (cat-rule-set category::digit-sequence)
      (make-rule-set :backpointer category::digit-sequence
                     :fsa  `(,*fsa-for-digits*) ))




;;;-----------------
;;; state variables
;;;-----------------

(defvar *period-within-digit-sequence* nil)

(defvar *pending-final-hyphen* nil)

(defvar *interpretation-of-digit-sequence* :number)


(defparameter *digit-position-array* (make-array 20))

(defun zero-the-digits-array ()
  (dotimes (i (length *digit-position-array*))
    (setf (elt *digit-position-array* i)
          nil)
    *digit-position-array* ))


;;;--------
;;; driver
;;;--------

(defun digit-FSA (treetop  ;; the digit-seq. word that triggered
                           ;; the fsas
                  starting-position  ;; the position just before it
                  )

  ;; initialization of flags
  (setq *period-within-digit-sequence* nil
        *pending-final-hyphen* nil
        *interpretation-of-digit-sequence* :number)
  (zero-the-digits-array)

  ;; store the first segment, the one we were called with
  (setf (aref *digit-position-array* 0) treetop)

  ;; look for more segments, count how many we get in "index"
  ;; and store them in the array as we go along
  (multiple-value-bind (ending-position
                        number-of-segments)
         (expect-digit-delimiter-as-next-treetop
                        1  ;; the array cell to put the next word into
                        *digit-position-array*
                        treetop  ;; the first digit-seq. 
                        )

    (ecase *interpretation-of-digit-sequence*
      (:number
       (span-digits-number starting-position
                           ending-position
                           number-of-segments
                           *digit-position-array*))
      (:hypenated-numbers
       (if (eq ending-position (chart-position-after starting-position))
         ;; this is a fencepost condition, e.g. "44-" as in "44-years-old"
         (span-digits-number starting-position
                             ending-position
                             number-of-segments
                             *digit-position-array*)

         (make-chart-edge :starting-position starting-position
                          :ending-position ending-position
                          :category category::hyphenated-number
                          :form category::number
                          :referent  :uncalculated
                          :rule 'digit-fsa))))
    
    ending-position ))




(defun expect-digit-delimiter-as-next-treetop (next-cell
                                               array
                                               last-treetop)

  ;; Called from Digit-fsa and recursively as the number is extended.
  ;;   If we see either any of the characters that extend digit sequences
  ;; then we continue, otherwise we declare the digit-sequence finished
  ;; and return.

  (let* ((next-position (ev-position (edge-ends-at last-treetop)))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))

    (if (null (pos-preceding-whitespace next-position))
      ;; rule out cases like "47 -", as well as what would probably
      ;; be misspellings: "47 ,000"

      (let ((word-at-next-position (pos-terminal next-position)))
        (cond ((eq word-at-next-position word::comma)
               (continue-digit-sequence-after-comma
                next-cell array next-position))

              ((eq word-at-next-position word::period)
               (setq *period-within-digit-sequence* t)
               (continue-digit-sequence-after-period
                next-cell array next-position))

              ((eq word-at-next-position word::hyphen)
               (setq *interpretation-of-digit-sequence* :hypenated-numbers)
               (continue-digit-sequence-after-hyphen
                next-cell array next-position))

              (t (values next-position next-cell))))

      (values next-position  ;; the position at the end of the seq.
              next-cell ;; the count on the number of cells filled.
              ))))



;;;-------------------------
;;; building bigger numbers
;;;-------------------------

#|  As long as there are contiguous digit sequence words and commas (or
one period), we'll extend the number we're collecting.  The collection
is distributed in the array, with each successive iteration moving on
to the next cell of the array.  The use of the array lets us remember
how many sequences we've collected, and from that we can get the
right multiplications done when we ultimately compute the total number. 

    We pass along the array just because that lets us access it as 
a local. The 'next-cell' is where we put the digit-seq. word that we
scan (assuming we accept it as continuing the ongoing sequence), and
the 'position-of-the-delimiter'is the one just before the delimiting
punctuation. 

    The acquisition of the next digit sequence is via the edge that
is built over it by install-terminal-edges.  This scheme depends on
the assumptions that the tokenizer flags have been set to construct
an interpretation for previously unseen digit sequences, and that
there will only ever be one edge over any digit sequence, known or
unknown---in any event, we're taking the first edge that is installed. 
 |#

(defun continue-digit-sequence-after-comma (next-cell
                                            array
                                            position-of-delimiter)

  ;; We just saw a comma. If the next word is a digit sequence, and
  ;; as long as there's no whitespace between it and the comma, we'll
  ;; interpret it as an extension of the number and go on and look
  ;; for further extending delimiters and digit sequences. 

  (let* ((next-position (chart-position-after position-of-delimiter))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    
    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        (let ((digits-edge
               (car (install-terminal-edges
                     (pos-terminal next-position)
                     next-position
                     (chart-position-after next-position)))))
          (when (> next-cell 4)
            (error "No provision for digit-based numbers in the quadrillions ~
                    or larger"))
          (setf (aref array next-cell)
                digits-edge)
          (expect-digit-delimiter-as-next-treetop (1+ next-cell)
                                                  array
                                                  digits-edge))
        (else
          (values position-of-delimiter next-cell)))
      (else
        (values position-of-delimiter next-cell)))))



(defun continue-digit-sequence-after-period (next-cell
                                             array
                                             position-of-delimiter)

  ;; We just saw a period. If the next word is a digit then we declare
  ;; the period to be a decimal point (or rather, the interpreter
  ;; that we return to will), otherwise we assume that the period
  ;; is an end-of-sentence marker and turn off the flag that has
  ;; noted the period.

  (let* ((next-position (chart-position-after position-of-delimiter))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    
    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        (let ((digits-edge
               (car (install-terminal-edges
                     (pos-terminal next-position)
                     next-position
                     (chart-position-after next-position)))))
          ;; we're depending on known numbers only engendering one edge
                                  
          (when (> next-cell 4)
            (error "No provision for digit-based numbers in the quadrillions ~
                    or larger"))
          (setf (aref array next-cell)
                digits-edge)
          (expect-digit-delimiter-as-next-treetop (1+ next-cell)
                                                  array
                                                  digits-edge))
        (else
          (setq *period-within-digit-sequence* nil)
          (values position-of-delimiter next-cell)))
      (else
        (setq *period-within-digit-sequence* nil)
        (values position-of-delimiter next-cell)))))



;;;--------------------
;;; edges over numbers
;;;--------------------

(defvar *daughter-number-edges* nil)

(defun span-digits-number (starting-position
                           ending-position
                           number-of-segments
                           digits-array)

  ;; Called from Digit-fsa once it has delimited the full number.
  ;; Makes an edge labeled "number" over the span, computes the
  ;; value as a lisp number and makes that the edge's referent,
  ;; and then does the rest of the edge-initiated events (completion
  ;; and assessment) and returns the ending position.

  ;; Check for a leading period (indicating that we've got a decimal
  ;; value rather than one that starts as a regular (>1) number)
  ;; but don't back over newlines.
  (when (and (eq (pos-terminal (chart-position-before starting-position))
		 word::period)
	     (null (pos-preceding-whitespace starting-position)))
    ;; but avoid the periods after abbreviations
    (when (or (not (ev-top-node (pos-ends-here starting-position)))
              (eq (edge-category 
                   (ev-top-node (pos-ends-here starting-position)))
                  word::period)) ;; literal edge
      (setq *period-within-digit-sequence* t)
      (setq starting-position (chart-position-before starting-position))))

  (multiple-value-bind (edge *daughter-number-edges*)
                       (make-edge-over-digit-sequence starting-position
                                                      ending-position)
    (let* ((net-value
            (compute-number-value-from-digits-array number-of-segments
                                                    digits-array))
           (number-object
            (if *include-model-facilities*
              (construct-temporary-number nil nil net-value)
              net-value)))

      (when *include-model-facilities*
        (map-out-the-distribution number-object
                                  number-of-segments
                                  digits-array))

      ;; construct-temp. had been used to make a polyword to memoize
      ;; compound digit strings, for which it passed through a constructed
      ;; string to be the compound: (format nil "~A" net-value)

      (setf (edge-referent edge) number-object)
      (setf (edge-rule edge) :number-fsa)

      (complete edge)
      (assess-edge-label category::number edge)

      (cache-rnode-on-edge 
       (annotate-number number-object :digit-based-number t)
       edge)

      ending-position )))


(defun hookup-daughter-number-rnodes (number-rnode)
  ;; Called from Annotate-individual, which has just created this
  ;; node. We link it to the rnodes of the digit span or spans that
  ;; the number was just made from in Span-digits-number, the
  ;; routine that has just called Annotate-individual. The span/s
  ;; are global since it would be too cluttered to pass through
  ;; arguments
  (let ( rnode  daughter-rnodes )
    (dolist (edge *daughter-number-edges*)
      ;(when (cdr (indiv-rnodes (edge-referent edge)))
      ;  (break "number daughter element has multiple rnodes:~% ~A" edge))
      ;; ? The 1 in 2,101.1 has multiple rnodes that chain. I'll ignore
      ;; that for the moment. 7/19/99
      ;(setq rnode (first (indiv-rnodes (edge-referent edge))))
      (setq rnode (rnode-for-edge edge)) ;; approved way ?
      (push rnode daughter-rnodes))

    ;; This is not the case that the field structure of rnode links
    ;; was designed for, but then I hadn't thought about n-ary rules
    ;; then either.
    (setf (rn-head number-rnode) daughter-rnodes)
    (dolist (daughter-rnode daughter-rnodes)
      (push number-rnode (rn-downward-links daughter-rnode)))

    ;; something to trace
    daughter-rnodes ))



(defun compute-number-value-from-digits-array (number-of-segments
                                               digits-array)
  (let ((net-number 0))
    (when *period-within-digit-sequence*
      (setq net-number (compute-decimal-value
                        (aref digits-array 
                              (1- number-of-segments))))
      (decf number-of-segments))

    (multiply-through-positions 0
                                (1- number-of-segments)
                                digits-array
                                net-number)))

(defun map-out-the-distribution (number number-of-segments digits-array)
  (when *period-within-digit-sequence*
    (set-illion-distribution 
     number 
     (edge-referent (aref digits-array (1- number-of-segments)))
     (find-individual 'multiplier :name "fraction"))
    (decf number-of-segments))
  (dotimes (index number-of-segments)
    (let ((illion (ecase index
                    (0 "one")
                    (1 "thousand")
                    (2 "million")
                    (3 "billion")
                    (4 "trillion"))))
      (set-illion-distribution-from-edge
       number illion (aref digits-array index)))))

(defun set-illion-distribution-from-edge (number name-of-illion edge)
  (let ((value (edge-referent edge))
        (illion (find-individual 'multiplier :name name-of-illion)))
    (set-illion-distribution number value illion)))



(defun multiply-through-positions (index
                                   cell
                                   array
                                   number-so-far)
  (if (< cell 0)
    ;; happens when we have a decimal (.83)
    number-so-far
    
    (let ((multiplier
           (ecase index
             (0 1)
             (1 1000)
             (2 1000000)
             (3 1000000000)
             (4 1000000000000)))
          (number
           (if *include-model-facilities*
             (value-of (variable/category 'value 'number)
                       (edge-referent (aref array cell)))
             (edge-referent (aref array cell)))))
      
      (setq number-so-far
            (+ (* number multiplier)
               number-so-far))
      
      (if (= cell 0)
        number-so-far
        (multiply-through-positions (1+ index)
                                    (1- cell)
                                    array number-so-far)))))



(defun compute-decimal-value (edge)
  (if *include-model-facilities*
    (let* ((referent (edge-referent edge))
           (integer (etypecase referent
                      (individual
                       (value-of 'value referent))
                      (word
                       (word-pname referent)))))
      (read-from-string
       (concatenate 'string
                    "."
                    (etypecase referent
                      (individual (format nil "~A" integer))
                      (word integer)))))

    ;; if the model isn't part of the load, then the edge that was made by
    ;; Make-edge-over-unknown-digit-sequence will have an integer as
    ;; its referent
    (read-from-string (format nil ".~A" (edge-referent edge)))))



;;;----------------------------
;;;----------------------------
;;; hyphenated digit sequences
;;;----------------------------
;;;----------------------------

(defun continue-digit-sequence-after-hyphen (index-of-cell-to-fill
                                             array
                                             position-before-hyphen)

  (let* ((next-position (chart-position-after position-before-hyphen))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    
    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        (let ((digits-edge
               (car (install-terminal-edges
                     (pos-terminal next-position)
                     next-position
                     (chart-position-after next-position)))))

          (when (> index-of-cell-to-fill (1- (length array)))
            (break "Too many digits accumulated - ~A - to fit in ~
                    the digits array" index-of-cell-to-fill))

          (setf (aref array index-of-cell-to-fill) digits-edge)
          (look-for-hyphen-as-next-treetop (1+ index-of-cell-to-fill)
                                           array
                                           next-position))

        ;; there is no digit following the hyphen we just saw, so we
        ;; should drop the final hyphen and return the position after
        ;; the last digit.
        (else
          (unless (> index-of-cell-to-fill 2)
            (setq *interpretation-of-digit-sequence* :number))
          (values position-before-hyphen index-of-cell-to-fill)))

      ;; ditto, but the reason is that there is whitespace after the
      ;; last digit so we assume that the sequence is broken
      (else
        (unless (> index-of-cell-to-fill 2)
            (setq *interpretation-of-digit-sequence* :number))
        (values position-before-hyphen index-of-cell-to-fill)))))



(defun look-for-hyphen-as-next-treetop (index-of-cell-to-fill
                                        array
                                        position-before-last-digit-seq)

  ;; Rather than allow sequences with mixed punctuation, we're
  ;; restricting hyphenated sequences to have just hyphens between
  ;; the items.  If there's a final hyphen with no following digit-seq,
  ;; we strand it.

  (let* ((next-position (chart-position-after position-before-last-digit-seq))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))

    (if (and (null (pos-preceding-whitespace next-position))
             (eq :punctuation (pos-capitalization next-position)))

      (if (eq word::hyphen (pos-terminal next-position))
        (continue-digit-sequence-after-hyphen (1+ index-of-cell-to-fill)
                                              array
                                              next-position)

        (values (chart-position-after position-before-last-digit-seq)
                index-of-cell-to-fill))

      (values (chart-position-after position-before-last-digit-seq)
              index-of-cell-to-fill))))

