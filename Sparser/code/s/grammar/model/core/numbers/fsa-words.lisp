 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1999,2012-2021  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "fsa words"
;;;   Module:  "model;core:numbers:"
;;;  Version:  December 2021

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

#|  This algorithm is based on the one developed by Longuet-Higgins |#

;;;------------
;;; parameters
;;;------------

(defparameter *keep-number-sequence-raw* nil
  "Set when there is a reason to spell out the number
   such as in call signs: 'assassin one seven'")

(defparameter *debug-numbers* nil
  "Gate to protect things that are in progress from bad interactions")

;;;-------------------
;;; state information
;;;-------------------

(defvar *accumulated-number-word-phrases* nil
  "The sequence of number words can be interrupted by anticipated punctuation
   such as a comma or the word 'and'. This breaks the number inforation into segments
   that have to be independently computed and then joined to compute the full number.")

(defvar *num-word-start-position* nil
  "Records the chart position at which the number-word-fsa was initiated")

(defun initialize-number-word-fsa ()
  (setq *accumulated-number-word-phrases* nil
        *num-word-start-position* nil
        ))


;;;--------
;;; driver
;;;--------

;; (trace-number-words)

(defun number-word-fsa (triggering-edge starting-position)
  "The extent of the word sequence is established by scan-for-more-number-words
   which traverses the state space. Most of this function is devoted to getting the
   referent computed and producting the spanning edge"
  (declare (special category::multiplier category::number
                    *keep-number-sequence-raw*))
  (initialize-number-word-fsa)
  (setq *num-word-start-position* starting-position)
  (tr :nw-starting-with triggering-edge)

  (let ((end-of-number-word-sequence ;; position just after the sequence
         (scan-for-more-number-words
          (chart-position-after starting-position))))

    (package-number-edges starting-position end-of-number-word-sequence)

    ;; return position sequence ends at
    end-of-number-word-sequence))


(defun package-number-edges (starting-position end-of-number-word-sequence)
  "Collect the sequence of number words. Handle the one word (edge) case here
   including looking for a prior number ('10 million'). Handle the multi-edge
   case in parse-number-sequence."
  (let ((prior-number-edge
         (preceded-by-digit-based-number starting-position)))
    (tr :nw-ended-with prior-number-edge)

    (if (eq end-of-number-word-sequence
            (chart-position-after starting-position)) ; one word long
      (let* ((single-edge (edge-between starting-position end-of-number-word-sequence))
             (left-daughter (edge-left-daughter single-edge)))
        
        (cond
          ((and (word-p left-daughter)
                (string-equal (word-pname left-daughter) "one"))
           ;; The pname "one" is ambiguous between its reading as a number
           ;; and as an indefinite-pronoun. We can't decide that here because
           ;; we don't have the necessary context, so we punt and don't
           ;; respan this edge
           (tr :nw-is-one))

          (prior-number-edge ; "10 million"
          ;; a frequent enough case that it's worth looking for right
          ;; here. Also lets us get around the fact that if we waited
          ;; the number-word's original category would have been respanned
          ;; as a number and the pattern would be lost.
          (when (eq (edge-category single-edge)
                    category::multiplier)
            ;;/// compare: "11 two-component systems". Suspenders to go with
            ;; this belt for that case would be to notice the no-space hyphen.
            (let ((rule (multiply-labels category::number category::multiplier)))
              (unless rule
                (error "Unexpected situation: no definition for number -> ~
                      number multiplier"))
              (make-completed-binary-edge 
               prior-number-edge single-edge rule))))
          
          ;; no prior number, but just one edge
          (t
            (if *keep-number-sequence-raw*
              (assemble-raw-number-sequence
               starting-position end-of-number-word-sequence prior-number-edge)
              (else
                ;; respan this singleton (e.g. "forty") as a number
                ;; and return
                (make-completed-unary-edge
                 (edge-starts-at single-edge)  ;; starting vector
                 (edge-ends-at single-edge)    ;; ending vector
                 :number-word-fsa
                 single-edge                   ;; daughter
                 category::number              ;; the edge's label
                 category::number              ;; its form
                 (edge-referent single-edge))  ;; its referent
                )))))

      ;; multiple edges
      (else
	(if *keep-number-sequence-raw* ;; for call signs
	  (assemble-raw-number-sequence
	   starting-position end-of-number-word-sequence prior-number-edge)
	  (else
	    (parse-number-sequence starting-position
				   end-of-number-word-sequence
				   prior-number-edge)))))))




;;;--------------------------------------
;;; scan to collect all the number words
;;;--------------------------------------

(defun scan-for-more-number-words (current-position)
  ;; first call is from Number-word-fsa, so we can make good assumptions
  ;; about the status of the position we just moved to ('current-position)
  (unless (pos-assessed? current-position)
    (scan-next-position))

  (let* ((next-word (pos-terminal current-position))
         (punct (when (eq :punctuation (pos-capitalization current-position))
                  next-word))
         (rs (word-rules next-word))
         (singles (when rs (rs-single-term-rewrites rs)))
         (cfr (when singles (look-for-number-rule-in-list-of-cfrs singles)))
         (next-position (chart-position-after current-position)))
    (tr :nw-scanned next-word)

    (cond
      ((eq punct *end-of-source*)
       (tr :nw-terminating-at current-position)
       current-position)

      (cfr
       ;; Because this fsa is invoked from terminal-edges-sweep there
       ;; are not already edges over the words. We're looking for a number
       ;; at this position but we1 have to make the edge ourselves         
       (tr :nw-installing-edge next-word cfr)
       (install-preterminal-edge cfr next-word current-position next-position)
       (scan-for-more-number-words next-position))

      (t
       ;; not a number word, but could be standard intra-number phrase
       ;; punctuation
       (let* ((pos-after-next (chart-position-after next-position))
              (word-after-next (pos-terminal next-position)))
         (cond
           ((eq next-word (word-named "and"))
            (tr :nw-fsa-hit-and current-position)
            (if (next-word-is-a-number-word? current-position)
              (then
                (remove-and-from-pending-conjunction current-position)
                (scan-for-number-after-and current-position next-position))
              (else (tr :nw-not-number-word next-word)
                    (tr :nw-terminating-at current-position)
                    current-position)))

           ((eq punct *the-punctuation-comma*) ;; semantically equivalent of 'and'
            (if (next-word-is-a-number-word? current-position)
              (scan-for-number-after-and current-position next-position)
              (else (tr :nw-not-number-word next-word)
                    (tr :nw-terminating-at current-position)
                    current-position)))
      
           ((eq punct *the-punctuation-hyphen*)
            (if (next-word-is-a-number-word? current-position)
              (compose-number-around-hyphen next-position)
              (else (tr :nw-not-number-word next-word)
                    (tr :nw-terminating-at current-position)
                    current-position)))
           
           (t
            ;; otherwise return this position as where the sequence of
            ;; number words ends
            (tr :nw-not-number-word next-word)
            (tr :nw-terminating-at current-position)
            current-position )))))))

(defun compose-number-around-hyphen (next-position)
  "Expect the hyphen to separate just two number words. Semantically they
   should be added. The number could extend beyond, so need to reinsert into
   the FSA at places were we might continue but remember that we need to
   roll up the terms we've already accumulated.
   'next-position' is just after the hyphen and contains a number-word.
   We know that the position before the hyphen also has a NW."
  (declare (special *num-word-start-position*
                    *accumulated-number-word-phrases*))
  (let* ((hyphen-pos (chart-position-before next-position))
         (pos-before (chart-position-before hyphen-pos))
         (next-edge (edge-between next-position (chart-position-after next-position)))
         (prior-edge (edge-between pos-before hyphen-pos)))
    ;; could there ever be a multi-position edge to our left?
    ;; could the prior-number ever be a mulitplier like 'thousand'?
    (let ((edge (make-hyphenated-number prior-edge next-edge)))
      (tr :nw-made-edge edge (edge-referent edge))
      
      ;; should we look further to our right, or assume someone else will?

      ;; stash the edge in case there's a pending collector to our left
      ;;//// only for numeric values?  -- vs. hyphens
      (push edge *accumulated-number-word-phrases*)
      
      ;; This assumes we're returning to number-word-fsa
      (pos-edge-ends-at edge))))


(defun scan-for-number-after-and (current-pos next-pos)
  "The number we've been accumulating ends at the 'and' (current-pos)
   while 'next-pos' has the first word of the next number on it.
   We package up the nw that's accumulated and stash it,
   then we record our new start and keep the fsa going.
   When it returns here we'll -add- the value of accumulated edge
   and the returning edge and span them."
  (declare (special *num-word-start-position*
                    *accumulated-number-word-phrases*))
  (let ((prior-edge (package-number-edges *num-word-start-position* current-pos)))
    (push prior-edge *accumulated-number-word-phrases*)

    (setq *num-word-start-position* next-pos) ;/// use a new variable?
    (let ((pos-reached ;; the furthest position reached by this scan
           (scan-for-more-number-words next-pos))
          (reached-by-pending (when *accumulated-number-word-phrases*
                                (pos-edge-ends-at (first *accumulated-number-word-phrases*)))))
      (if (eq pos-reached reached-by-pending)
        (then ;; we're done (?)
          (cond
            ((= 2 (length *accumulated-number-word-phrases*)) ; easy case
             (let* ((i (add-together-pending-numbers))
                    (right (first *accumulated-number-word-phrases*))
                    (left (second *accumulated-number-word-phrases*))
                    (edge (make-chart-edge
                           :left-edge left :right-edge right
                           :category category::number
                           :form category::number
                           :referent i
                           :rule 'scan-for-number-after-and)))
               pos-reached))
            (t (break "more than 2 edges past the 'and'"))))
        (else ;; have to handle some overhang
          ;;?? Make an edge over the overhang, add it to all we've collected
          (break "and -- overhang?"))))))


(defun add-together-pending-numbers ()
  "Return the number that is the value of the some of each edge"
  (declare (special *accumulated-number-word-phrases*))
  (let* ((numbers
          (loop for edge in *accumulated-number-word-phrases*
             collect (number-value edge)))
         (value (apply #'+ numbers)))
    (find-or-make-number value)))
           


(defgeneric next-word-is-a-number-word? (current-position)
  (:documentation "Subroutine of scan-for-more-number-words that handles common
    situation where we've looked at the word that is the terminal at current-position 
    and will vary our behavior depending on whether the word that follow it is a number word. 
    The wrinkle is that this is called from within a word-fsa so we have deal with creating edges.")
  (:method ((current position))
    (let ((word (pos-terminal current))
          (next-pos (chart-position-after current)))
      (scan-and-do-edges current word next-pos) ;; put an edge over the current word
      (let ((next-word (pos-terminal next-pos)))
        (let ((edges ;; put an edge over the word after that
               (scan-and-do-edges next-pos next-word (chart-position-after next-pos))))
          (when edges
            (some #'numeric-label edges)))))))

(defun scan-and-do-edges (pos-before word pos-after)
  "Similar to just-do-terminal-edges but called out of sequence since
   we're in the scope of a word-triggered fsa here. But we don't have
   and edge(s) over the words we encounter unless we put them in
   ourself. Returns a list of the edges it creates."
  (unless (has-been-status? :preterminals-installed pos-before) ;;/// change so can run twice
    (install-terminal-edges word pos-before pos-after)))
          


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
   word it encountered. Here we apply assimilate them into
   an edge with a representation of the numberic value they
   correspond to. We're called in the final clause of number-word-fsa"
  (let ((edges (treetops-between start-pos end-pos)))
    (tr :nw-compute-value edges)
    (cond
      ((and prior-number-edge ;; e.g. "10 million"
            (= 1 (length edges)))
       (let* ((number (find-or-make-number
                       (number-times-number-word prior-number-edge (car edges))))
              (edge (make-chart-edge
                     :left-edge prior-number-edge :right-edge (car edges)
                     :category category::number ;???? more specific?
                     :form category::number
                     :referent number
                     :rule-name 'parse-number-sequence)))
         (tr :nw-made-edge edge number)
         edge))
      
      ((> (length edges) 1)
       (multiple-value-bind (value edge)
           (compute-word-based-number edges)
         (tr :nw-made-edge edge value)
         edge))

      (t (when *debug-numbers*
           (break "New case in parse-number-sequence"))))))


(defun number-times-number-word (number-edge number-word-edge)
  "e.g. '10 million' -- it only works for canonical numbers and
   not patterns that spell out the numbers: 'runway one forty'.
   Here we just compute the numerical value of the pair."
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

    
(defparameter product+ones
  (def-cfr number (number-product ones-number)))
(defparameter product+tens
  (def-cfr number (number-product tens-number)))
(defparameter product*multiplier
  (def-cfr number (number-produce multiplier)))

(defparameter tens+ones
  (def-cfr number (tens-number ones-number)
    :referent (:function two-word-number left-edge right-edge)))
(defparameter ones*multiplier
  (def-cfr number-product (ones-number multiplier)
    :referent (:function two-word-number left-edge right-edge)))
(defparameter teens*multiplier
  (def-cfr number (teens-number multiplier)
    :referent (:function two-word-number left-edge right-edge)))


(defun compute-word-based-number (edges)
  "Called from parse-number-sequence when there is more than one edge.
   Returns the numerical value of the edges collectively.
   Makes additional (binary) edges as needed by the computation"
  (let ((labels (loop for e in edges collect (numeric-label e))))
    (push-debug `(,edges ,labels))
    (case (length edges)
      (1 (break "How did we get here with just one edge?"))
      (2 (two-edge-number (car edges) (cadr edges)))
      (3 (three-edge-number edges))
      (4 (four-edge-number edges))
      (otherwise
       (push-debug `(,edges))
       (error "no algorithm to compute the value of ~a number edges:~%~a"
              (length edges) labels)))))

(defun two-word-number (left-number right-number)
  "Used for the occasional times when the binary number rules are
   used by the parser rather than the execution of the FSA.
   Returns the referent that feeds into the normal edge-creation
   machinery"
  (let* ((left-label (numeric-label (left-edge-for-referent)))
         (right-label (numeric-label (right-edge-for-referent)))
         (labels (list left-label right-label))
         (left-value (number-value left-number))
         (right-value (number-value right-number))
         (lisp-value
          (cond
            ((equal labels '(:tens :ones)) ; "twenty three"
             (+ left-value right-value))       
            ((equal labels '(:tens :multiplicand)) ; "twenty million"
             (* left-value right-value))
            ((equal labels '(:ones :multiplicand)) ; "two hundred"
             (* left-value right-value))
            ((equal labels '(:teens :multiplicand)) ; "sixteen hundred"
             (* left-value right-value))
            (t
             (when *debug-numbers*
               (break "next two-word number case: ~a" labels))))))
    (find-or-make-number lisp-value)))
 

(defgeneric two-edge-number (e1 e2)
  (:method ((e1 edge) (e2 edge))
    (declare (special tens+ones ones*multiplier teens*multiplier))
    (let* ((labels (loop for e in (list e1 e2) collect (numeric-label e))))
      (cond
        ((equal labels '(:tens :ones)) ; "twenty three"
         (let* ((lisp-value (+ (number-value e1) (number-value e2)))
                (number (find-or-make-number lisp-value))
                (edge (make-chart-edge
                       :left-edge e1 :right-edge e2
                       :form category::number
                       :referent number
                       :rule tens+ones)))
           (values number
                   edge)))
        ((equal labels '(:ones :multiplicand)) ; "two hundred"
         (let* ((lisp-value (* (number-value e1) (number-value e2)))
                (number (find-or-make-number lisp-value))
                (edge (make-chart-edge
                       :left-edge e1 :right-edge e2
                       :form category::number
                       :referent number
                       :rule ones*multiplier)))
           (values number
                   edge)))
        ((equal labels '(:teens :multiplicand)) ; "sixteen hundred"
         (let* ((lisp-value (* (number-value e1) (number-value e2)))
                (number (find-or-make-number lisp-value))
                (edge (make-chart-edge
                       :left-edge e1 :right-edge e2
                       :form category::number
                       :referent number
                       :rule teens*multiplier)))
           (values number
                   edge)))
        (t
         (when *debug-numbers*
           (break "next two-edge case: ~a" labels)))))))

(defgeneric three-edge-number (edges)
  (:method ((edges list))
    (let ((e1 (first edges))
          (e2 (second edges))
          (e3 (third edges))
          (labels (loop for e in edges collect (numeric-label e))))
      ;; If there's not a multiplicand in the middle then need to rethink
      (unless (eq (second labels) :multiplicand)
        (when *debug-numbers*
          (break "unanticipated pattern of 3-edge number: ~a" labels))
        (return-from three-edge-number nil))

      (multiple-value-bind (product-value product-edge)
          (two-edge-number e1 e2)

        ;; Whether we add or multiply depends on the label on e3
        (let* ((label3 (third labels))
               (rule-name (case label3
                            (:ones 'product+ones) ; "two"
                            (:tens 'product+tens) ; "thirty"
                            (:multiplicand        ; "million"
                             'product*multiplier)
                            (otherwise
                             (break "New label on edge thre: ~a" label3)))))
          (let* ((product-lisp-value (value-of 'value product-value))
                 (lisp-value (if (eq label3 :multiplicand)
                               (* product-lisp-value (number-value e3))
                               (+ product-lisp-value (number-value e3))))
                 (number (find-or-make-number lisp-value))
                 (edge (make-chart-edge
                        :left-edge product-edge :right-edge e3
                        :form category::number
                        :referent number
                        :rule (eval rule-name))))
            (values number
                    edge)))))))


(defgeneric four-edge-number (edges) ;; e.g. "One hundred thirty three"
  (:documentation "Assumes this is two pairs that are added together")
  (:method ((edges list))
    (let ((e1 (first edges))
          (e2 (second edges))
          (e3 (third edges))
          (e4 (fourth edges))
          (labels (loop for e in edges collect (numeric-label e))))
      
      ;; peel off the first two and form their edge
      (unless (eq (second labels) :multiplicand)
        (when *debug-numbers*
          (break "unanticipated pattern of 4-edge number: ~a" labels))
        (return-from four-edge-number nil))
      (multiple-value-bind (leading-value leading-edge)
          (two-edge-number e1 e2)

        ;; Do we need to do any prep on the 2d pair?
        (multiple-value-bind (trailing-value trailing-edge)
            (two-edge-number e3 e4)

          (let* ((leading-lisp-value (value-of 'value leading-value))
                 (trailing-lisp-value (value-of 'value trailing-value))
                 (sum (+ leading-lisp-value trailing-lisp-value))
                 (i (find-or-make-number sum))
                 (edge (make-chart-edge
                        :left-edge leading-edge :right-edge trailing-edge
                        :category category::number
                        :form category::number
                        :referent i
                        :rule 'four-edge-number)))
            (values i
                    edge)))))))
  




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

