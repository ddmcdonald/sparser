;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2003,2011-2020 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "fsa digits"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  May 2020

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
;; 6.9 (9/25/13) The heuristic about the period in map-out-the-distribution
;;       (of illions) assumes that the illion work is included in the array of
;;       edges passed to it. Calls for a thorough examination.
;;     (6/3/14) In continue-digit-sequence-after-period got a case where there
;;       were multiple edges over "3", apparently because it's appeared as
;;       a literal somewhere. 
;; 6.10 (2/5/15) Computed a referent for hypenated-numbers
;; 5/25/2015 Added call to place-referent-in-lattice around computation of
;;  edge-referent field
;;  Initial work to produce a lattice of descriptions
;;  The places where this call is put were determined by the methods where
;;    (complete edge) was also called
;; 2/3/16 Working on edges-cases in hyphen handline. 

(in-package :sparser)

#|

We get here because the tokenizer, when it sees a contiguous sequence of digits,
marks the capitalization field (pos-capitalization) corresponding to the word
it created as :digits.  This is picked up when the preterminals are being 
introduced into the chart and reacted to by preterminals-for-unknown, under
the control of the flag *make-edges-over-new-digit-sequences*

The result is a call to make-edge-over-unknown-digit-sequence, which leads to
an edge over the word, with the label digit-sequence, nothing in its form field,
and either a lisp number or a Krisp number as its referent, depending on the
whether or not the model is loaded.  The category digit-sequence has the fsa
field of its rule set set to the Fsa-for-digits, defined here.  If it were
a known word, the route would have been essentially the same, except that
the fsa would be identified at the word level rather than the category level.

|#


;;;------------
;;; categories
;;;------------

(define-category digit-sequence)

(defparameter *the-category-of-digit-sequences* (category-named 'digit-sequence)
  "This default choice of category can be modified, e.g. by the 
   just-bracket-setting switch setting")

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

(add-fsa category::digit-sequence *fsa-for-digits*)



;;;-------
;;; trace
;;;-------

(defparameter *trace-digits-fsa* nil)
(defun trace-digits-fsa ()
  (setq *trace-digits-fsa* t))
(defun untrace-digits-fsa ()
  (setq *trace-digits-fsa* nil))

(deftrace :digit-fsa-scanned (word function)
  (when *trace-digits-fsa*
    (trace-msg "[digits] scanned ~s in ~a" (word-pname word) function)))

(deftrace :digit-fsa-returned-to-start (end-pos number-of-segments)
  (when *trace-digits-fsa*
    (trace-msg "[digits] Returned to make edge over ~a segements ~
                ending at p~a" number-of-segments (pos-token-index end-pos))))

(deftrace :digit-fsa-returning (reason function)
  (when *trace-digits-fsa*
    (trace-msg "[digits] returning from ~a~
              ~%    because ~a"
               function reason)))

(deftrace :too-few-digits (digit-word next-position)
  (when *trace-digits-fsa*
    (trace-msg "[digits] too few digits in ~s at p~a"
               (pname digit-word) (pos-token-index next-position))))

;;;-----------------
;;; state variables
;;;-----------------

(defvar *period-within-digit-sequence* nil
  "Boolean used to indicate that there is a decimal point")

(defvar *multiple-periods-within-digit-sequence* nil
  "Will show up in situations where the digit sequence is recording
   something other than a number such as a serial number or
   raw web address")

(defvar *too-few-digits-to-be-number* nil
  "Flag that indicates that we're not parsing a conventional
   multi-segment number but something else")

(defvar *pending-final-hyphen* nil)

(defvar *interpretation-of-digit-sequence* :number)

(defparameter *length-of-digit-array* 50)

(defparameter *digit-position-array* (make-array *length-of-digit-array*)
  "This is where we store successive elements of the number as it's scanned")

(defun zero-the-digits-array ()
  (dotimes (i (length *digit-position-array*))
    (setf (elt *digit-position-array* i)
          nil)
    *digit-position-array* ))

(defun record-period-in-digit-sequence ()
  (cond
    ((null *period-within-digit-sequence*)
     (setq *period-within-digit-sequence* t))
    (t ;; already saw at least one
     (setq *multiple-periods-within-digit-sequence* t))))



;;;--------
;;; driver
;;;--------

(defun digit-FSA (treetop  ;; the digit-seq. word that triggered the fsas
                  starting-position)  ;; the position just before it

  (declare (special *interpretation-of-digit-sequence* category::number
                    category::hyphenated-number))
  
  ;; initialization of flags
  (setq *period-within-digit-sequence* nil
        *multiple-periods-within-digit-sequence* nil
        *too-few-digits-to-be-number* nil
        *pending-final-hyphen* nil
        *interpretation-of-digit-sequence* :number)
  (zero-the-digits-array)
  (tr :digit-fsa-scanned (edge-left-daughter treetop) 'digit-fsa)

  ;; store the first segment, the one we were called with
  (setf (aref *digit-position-array* 0) treetop)

  ;; look for more segments, count how many we get in "index"
  ;; and store them in the array as we go along
  (multiple-value-bind (ending-position
                        number-of-segments)
         (expect-digit-delimiter-as-next-treetop
                        1  ;; the array cell to put the next word into
                        *digit-position-array*
                        treetop)  ;; the first digit-seq. 

    (tr :digit-fsa-returned-to-start ending-position number-of-segments)

    (ecase *interpretation-of-digit-sequence*
      (:not-a-number
       (make-edge-for-not-a-number starting-position ending-position
                                   number-of-segments *digit-position-array*))
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
         (let* ((left-edge (aref *digit-position-array* 0))
                (left-ref (edge-referent left-edge))
                (right-edge (aref *digit-position-array* 1))
                (right-ref (edge-referent right-edge))
                (i (find-or-make-individual 'hyphenated-number
                      :left left-ref :right right-ref)))
           (make-chart-edge :starting-position starting-position
                            :ending-position ending-position
                            :left-daughter left-edge
                            :right-daughter right-edge
                            :category category::hyphenated-number
                            :form category::number
                            :referent  i
                            :rule 'digit-fsa))))
      ;; These two drop the middle words on the floor ("-", "through")
      ;; They're not plausible :constituent in the edges because there
      ;; aren't edge over them, though that could be accommodated.
      ;; Anything wandering into one of these edges might be puzzled.
      (:through-range
       ;; Construct the range, put a edge over the whole span
       (let* ((edge-1 (aref *digit-position-array* 0))
              (edge-2 (aref *digit-position-array* 1))
              (i (when (and (edge-p edge-1)
                            (edge-p edge-2))
                   ;; failed at "at Ser-854"
                   (define-or-find-individual 'range
                     :from (edge-referent edge-1)
                     :to (edge-referent edge-2)))))
         (when i
           (make-chart-edge :starting-position starting-position
                            :ending-position ending-position
                            :category category::range
                            :form category::number ;; ??
                            :referent i
                            :left-daughter edge-1
                            :right-daughter edge-2
                            :rule 'digit-fsa)))))
    
    ending-position ))


  




(defun expect-digit-delimiter-as-next-treetop (next-cell
                                               array
                                               last-treetop)

  ;; Called from Digit-fsa and recursively as the number is extended.
  ;;   If we see either any of the characters that extend digit sequences
  ;; then we continue, otherwise we declare the digit-sequence finished
  ;; and return.
  (declare (special *interpretation-of-digit-sequence*
                    *the-punctuation-hyphen*
                    *the-punctuation-period*
                    *the-punctuation-comma*))
  (when (null last-treetop)
    (break "what are you doing passing expect-digit-delimiter-as-next-~
            treetop NIL as the last-treetop"))

  (let* ((next-position (ev-position (edge-ends-at last-treetop)))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    (tr :digit-fsa-scanned (pos-terminal next-position)
        'expect-digit-delimiter-as-next-treetop)
        
    (let ((word-at-next-position (pos-terminal next-position)))
      (if (null (pos-preceding-whitespace next-position))
        ;; rule out cases like "47 -", as well as what would probably
        ;; be misspellings: "47 ,000"
        
        (cond ((eq word-at-next-position *the-punctuation-comma*)
               (continue-digit-sequence-after-comma
                next-cell array next-position))
              
              ((eq word-at-next-position *the-punctuation-period*)
               (record-period-in-digit-sequence)
               (continue-digit-sequence-after-period
                next-cell array next-position))
              
              ((eq word-at-next-position *the-punctuation-hyphen*)
               (setq *interpretation-of-digit-sequence* :hypenated-numbers)
               (continue-digit-sequence-after-hyphen
                next-cell array next-position))

              ((eq word-at-next-position (word-named "through"))
               (setq *interpretation-of-digit-sequence* :through-range)
               (continue-digit-sequence-after ))
              
              (t (tr :digit-fsa-returning :unanticipated-character
                     'expect-digit-delimiter-as-next-treetop)
                 (values next-position next-cell)))

        (else ;; cases that want a space between the digits
          (cond
            ((eq word-at-next-position (word-named "through"))
             (continue-digit-sequence-after-through next-position
                                                    next-cell array))
            (t
             (tr :digit-fsa-returning :preceding-whitespace
                 'expect-digit-delimiter-as-next-treetop)        
             (values next-position  ;; the position at the end of the seq.
                     next-cell ;; the count on the number of cells filled.
                     ))))))))


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
is built over it by install-terminal-edges. This scheme depends on
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
    (tr :digit-fsa-scanned (pos-terminal next-position)
        'continue-digit-sequence-after-comma)

    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        ;; Check whether we have the basis of a number,
        ;; i.e. three digits in this sequence that we just scanned.
        ;; If it's not three then we're lookin at some other
        ;; sort of numeric object
        (let ((digit-word (pos-terminal next-position)))
          (if (= 3 (length (pname digit-word)))
            (let ((digits-edge
                   (car (install-terminal-edges
                         digit-word
                         next-position
                         (chart-position-after next-position)))))

              (if (> next-cell 4)
                (if (heuristically-not-a-number array)
                  (close-out-number-sequence (1+ next-cell) array
                                             (chart-position-after next-position))
                  (error "No provision for digit-based numbers in the quadrillions ~
                    or larger"))              
                (else ;; continue
                  (setf (aref array next-cell)
                        digits-edge)
                  (expect-digit-delimiter-as-next-treetop (1+ next-cell)
                                                          array
                                                          digits-edge))))
            (else
              (setq *too-few-digits-to-be-number* t)
              (tr :too-few-digits digit-word next-position)
              (setf (aref array next-cell) digit-word) ; stash what we got
              (close-out-number-sequence (1+ next-cell) array
                                         (chart-position-after next-position)))))                       

        (else ;; not a digit
          (tr :digit-fsa-returning :non-digit-word
              'continue-digit-sequence-after-comma)
          (values position-of-delimiter next-cell)))
      (else ;; whitespace
        (tr :digit-fsa-returning :preceding-whitespace
            'continue-digit-sequence-after-comma)
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
    (tr :digit-fsa-scanned (pos-terminal next-position)
        'continue-digit-sequence-after-period)

    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        (let* ((edges (install-terminal-edges
                       (pos-terminal next-position)
                       next-position
                       (chart-position-after next-position)))
               (digits-edge
                (if (null (cdr edges)) ;; only one edge
                  (car edges)
                  (or (includes-edge-with-label category::digit-sequence edges)
                      (else
                       (push-debug `(,edges ,next-position))
                       (error "No obvious digit edge amoung~%~a" edges))))))
          (when (null edges) 
            (error "continue-digit-sequence-after-period got null edges"))
          (when (> next-cell 4)
            (error "No provision for digit-based numbers in the quadrillions ~
                    or larger"))
          (setf (aref array next-cell)
                digits-edge)
          (expect-digit-delimiter-as-next-treetop (1+ next-cell)
                                                  array
                                                  digits-edge))
        (else
          (tr :digit-fsa-returning :non-digit-word
              'continue-digit-sequence-after-period)
          (setq *period-within-digit-sequence* nil)
          (values position-of-delimiter next-cell)))
      (else
        (tr :digit-fsa-returning :preceding-whitespace
            'continue-digit-sequence-after-period)
        (setq *period-within-digit-sequence* nil)
        (values position-of-delimiter next-cell)))))



;;;----------------------------------------------------
;;; scanning something that is not conventional number
;;;----------------------------------------------------

(defun heuristically-not-a-number (array)
  "If the first element of the array (leftmost) has fewer than three digits
   in its edge, we have a number. If it has three digits it's probably the
   first of a series of indicies."
  (let* ((e1 (aref array 0)) ; we know they're all edges over digits
         (w1 (edge-left-daughter e1)))
    (= 3 (length (pname w1)))))


(defun close-out-number-sequence (next-cell array next-position)
  "We just detected an interior span of digits that wasn't three digits
 long, e.g. '1,2' rather than '1,200'. This means we should not assume
 that we have a regular number but something else entirely: a sequence of
 reference numbers, part of a chemical formula, etc.
   We scan ahead until we hit a space, then we package up what we've found
 so that some other process can use external evidence to decided what
 sort of thing it is."
  (declare (special *interpretation-of-digit-sequence*
                    *the-punctuation-hyphen* *the-punctuation-period*
                    *the-punctuation-comma* *end-of-source*))
  (setq *interpretation-of-digit-sequence* :not-a-number)
  (unless (pos-assessed? next-position)
    (scan-next-position))
  (tr :digit-fsa-scanned (pos-terminal next-position)
      'close-out-number-sequence)
  ;; Continue over reasonable number-internal punctuation (comma, period, hyphen).
  ;; Terminate and return on whitespace or delimiting punction like close backet.
  ;; Along the way stash what find in successive cells of the array.
  (let ((ok-punctuation `(,*the-punctuation-period*
                          ,*the-punctuation-comma*
                          ,*the-punctuation-hyphen*))
        (terminating-punctuation `(,*the-punctuation-close-parenthesis*
                                   ,(punctuation-named #\])
                                   ,(punctuation-named #\>)))
        (continue t))

    (flet ((punctuation-ok-in-numeric (word)
             (memq word ok-punctuation))
           (punctuation-terminates-numeric (word)
             (memq word terminating-punctuation))
           (push-and-loop (word)
             (unless (>= next-cell *length-of-digit-array*)
               (setf (aref array next-cell) word)
               (incf next-cell))))
           
      (until (or (pos-preceding-whitespace next-position)
                 (punctuation-terminates-numeric next-position)
                 (null continue))
          (progn
            (tr :digit-fsa-returning :preceding-whitespace
                'close-out-number-sequence)
            (values next-position next-cell))

        (let ((next-word (pos-terminal next-position)))
          (cond
            ((punctuation? next-word)
             (cond
               ((punctuation-ok-in-numeric next-word)
                (push-and-loop next-word))
               ((punctuation-terminates-numeric next-word)
                (setq continue nil))
               ((eq next-word *end-of-source*)
                (setq continue nil))
               (t ;; other punctuation ///record it
                (push-and-loop next-word))))
            ((eq :digits (pos-capitalization next-position))
             (push-and-loop (pos-terminal next-position)))
            (t
             (setq continue nil)))

          (when continue
            (setq next-position (chart-position-after next-position))
            (unless (pos-assessed? next-position)
              (scan-next-position))
            (tr :digit-fsa-scanned (pos-terminal next-position)
                'close-out-number-sequence)))) )))

#| test cases
"an α-2,3 or α-2,6 linkage"
"resuspended in 1,1,1,3,3,3-hexafluoro-2-propanol"
|#

(defun make-edge-for-not-a-number (starting-position ending-position
                                   number-of-segments *digit-position-array*)
  "Readout the array into the items for a sequence. Depending exactly how
   we got here, the array will be holding edges or even just words. We convert
   all these to numbers" ;;/// later may include the punctuation in the array
  (let* ((edges (loop for i from 0 to (1- number-of-segments)
                   collect (aref *digit-position-array* i)))
         (numbers (loop for e in edges
                     when (edge-p e) collect (edge-referent e)
                     when (and (word-p e)
                               (not (punctuation? e)))
                     collect (find-or-make-number e)))
         (sequence (create-sequence numbers))
         (i (define-or-find-individual 'number-sequence :value sequence)))
    (let ((edge
           (make-chart-edge :starting-position starting-position
                            :ending-position ending-position
                            :category category::number-sequence
                            :form category::number
                            :referent i
                            :rule-name 'make-edge-for-not-a-number
                            :ignore-used-in t)))
      ;;(break "edge: ~a" edge)
      edge)))


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

  (declare (special *the-punctuation-period*))
  
  ;; Check for a leading period (indicating that we've got a decimal
  ;; value rather than one that starts as a regular (>1) number)
  ;; but don't back over newlines.
  (when (and (eq (pos-terminal (chart-position-before starting-position))
		 *the-punctuation-period*)
	     (null (pos-preceding-whitespace starting-position)))
    ;; but avoid the periods after abbreviations
    (when (or (not (ev-top-node (pos-ends-here starting-position)))
              (eq (edge-category 
                   (ev-top-node (pos-ends-here starting-position)))
                 *the-punctuation-period*)) ;; literal edge
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


      ;; This call is to handle 'illions, but the fsa doesn't
      ;; include them in the digits array
;      (when *include-model-facilities*
;        (map-out-the-distribution number-object
;                                  number-of-segments
;                                  digits-array))

      ;; construct-temp. had been used to make a polyword to memoize
      ;; compound digit strings, for which it passed through a constructed
      ;; string to be the compound: (format nil "~A" net-value)

      (set-edge-referent edge number-object)
      (setf (edge-rule edge) :number-fsa)

      (complete edge)
      
      ;; make-edge-over-digit-sequence already did this
      ;;(assess-edge-label category::number edge)

      (cache-rnode-on-edge 
       (annotate-number number-object :digit-based-number t)
       edge)

      ending-position )))


(defun make-edge-over-single-digit-word (pos-before)
  ;; Called from, e.g., reify-residue-and-make-edge when it has
  ;; a digit word and appreciates that it's not been spanned with
  ;; an edge by the digits fsa. //// Probably a better tailored
  ;; version of parse between boundaries for the span of a
  ;; no space sequence would obviate the need for this. 
  ;; Compare to span-digits-number which is where we'd end
  ;; if the FSA had run. Using what seem to be the relevant
  ;; parts of that code.
  (zero-the-digits-array)
  (let ((digits-word (pos-terminal pos-before))
        (end-pos (chart-position-after pos-before)))
    (setf (aref *digit-position-array* 0) digits-word)
    (let ((edge (make-edge-over-digit-sequence pos-before end-pos))
          (i (find-or-make-number digits-word)))
      (set-edge-referent edge i)
      (setf (edge-left-daughter edge) digits-word)
      ;; (break "digits edge = ~a" edge)
      (complete edge)
      (setf (edge-rule edge) 'make-edge-over-single-digit-word)
      edge)))




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

;; Original scheme worked on "4 billion" ".4 billion"
;; but not on "0.4 billion" or "5.4 billion"
;; Ah -- and with "4 billion" the illion is not in the digits array
;;  so dyking the call to this back in span-digits-number
(defun map-out-the-distribution (number number-of-segments digits-array)
  (push-debug `(,number ,number-of-segments ,digits-array))
  (break "This code is likely bogus -- look at the array")
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
    
    (let* ((multiplier
            (ecase index
              (0 1)
              (1 1000)
              (2 1000000)
              (3 1000000000)
              (4 1000000000000)))
           (edge (aref array cell))
           (number
            (if *include-model-facilities*
              (value-of 'value
                        (edge-referent edge))
              (edge-referent edge))))

      (when (null number)
        (push-debug `(,edge ,array ,cell ,index ,number-so-far))
        (error "Got nil as the number value on ~a" edge))
      
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


;;;--------
;;; ranges
;;;--------

(defun continue-digit-sequence-after-through (position-of-through
                                              next-cell array)
  "We've seen a digit and the word 'through'. We expect to now see another
   digit, at which point we will have a completed the target pattern
   an will return back from the initiating call in digit-fsa, which
   wants to see the ending position and the number of segments."
  (let* ((pos-after-through (chart-position-after position-of-through))
         (status (pos-assessed? pos-after-through))) ;; anything in that field?
    (unless status
      (scan-next-position))
    (tr :digit-fsa-scanned (pos-terminal pos-after-through)
        'continue-digit-sequence-after-through)

    (if (eq :digits (pos-capitalization pos-after-through))
      ;; We're done. Create the edge. Put it in the next cell.
      ;; Set up the return values.
      (let ((digits-edge
             (car (install-terminal-edges
                     (pos-terminal pos-after-through)
                     pos-after-through
                     (chart-position-after pos-after-through)))))
        ;;(break "digits-edge = ~a" digits-edge)
        (setq *interpretation-of-digit-sequence* :through-range)
        (setf (aref array next-cell) digits-edge)
        (values (chart-position-after pos-after-through)
                2))
      (else ;; we didn't find the target pattern
        ;; e.g. "generated $105,740 through community fund schemes"
        (values position-of-through
                next-cell)))))



;;;----------------------------
;;;----------------------------
;;; hyphenated digit sequences
;;;----------------------------
;;;----------------------------

(defun continue-digit-sequence-after-hyphen (index-of-cell-to-fill
                                             array
                                             position-before-hyphen)
  (declare (special *interpretation-of-digit-sequence*))

  (let* ((next-position (chart-position-after position-before-hyphen))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    (tr :digit-fsa-scanned (pos-terminal next-position)
        'continue-digit-sequence-after-hyphen)

    (if (null (pos-preceding-whitespace next-position))
      (if (eq :digits (pos-capitalization next-position))
        (let ((digits-edge
               (car (install-terminal-edges
                     (pos-terminal next-position)
                     next-position
                     (chart-position-after next-position)))))
          (if digits-edge
            (then
              (when (> index-of-cell-to-fill (1- (length array)))
                (error "Too many digits accumulated - ~A - to fit in ~
                        the digits array" index-of-cell-to-fill))
              (setf (aref array index-of-cell-to-fill) digits-edge)
              (look-for-hyphen-as-next-treetop (1+ index-of-cell-to-fill)
                                               array
                                               next-position))
            (else
              ;; install-terminal-edges returns nil if the word
              ;; has already been spanned, e.g. by a polyword.
              ;; Whether is should have been is debatable case by
              ;; case, but it does mean we've no hyphenated number
              ;; here.
              (tr :digit-fsa-returning :no-digits-after-hyphen
                  'digit-after-hyphen-already-spanned)
              (unless (> index-of-cell-to-fill 2)
                (setq *interpretation-of-digit-sequence* :number))
              (values position-before-hyphen index-of-cell-to-fill))))

        ;; there is no digit following the hyphen we just saw, so we
        ;; should drop the final hyphen and return the position after
        ;; the last digit.
        (else
          (tr :digit-fsa-returning :no-digits-after-hyphen
            'continue-digit-sequence-after-hyphen)
          (unless (> index-of-cell-to-fill 2)
            (setq *interpretation-of-digit-sequence* :number))
          (values position-before-hyphen index-of-cell-to-fill)))

      ;; ditto, but the reason is that there is whitespace after the
      ;; last digit so we assume that the sequence is broken
      (else
        (tr :digit-fsa-returning :preceding-whitespace
            'continue-digit-sequence-after-hyphen)
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

  (declare (special *the-punctuation-hyphen*))
  
  (let* ((next-position (chart-position-after position-before-last-digit-seq))
         (status (pos-assessed? next-position)))
    (unless status
      (scan-next-position))
    (tr :digit-fsa-scanned (pos-terminal next-position)
        'look-for-hyphen-as-next-treetop)

    (if (and (null (pos-preceding-whitespace next-position))
             (eq :punctuation (pos-capitalization next-position)))

      (if (eq *the-punctuation-hyphen* (pos-terminal next-position))
        (continue-digit-sequence-after-hyphen (1+ index-of-cell-to-fill)
                                              array
                                              next-position)

        (else
          (tr :digit-fsa-returning :word-is-not-hyphen
            'look-for-hyphen-as-next-treetop)
          (values (chart-position-after position-before-last-digit-seq)
                  index-of-cell-to-fill)))

      (else
        (tr :digit-fsa-returning :preceding-whitespace
            'look-for-hyphen-as-next-treetop)
        (values (chart-position-after position-before-last-digit-seq)
                index-of-cell-to-fill)))))

