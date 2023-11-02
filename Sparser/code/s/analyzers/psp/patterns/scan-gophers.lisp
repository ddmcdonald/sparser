;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "scan-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  January 2021

;; initiated 5/15/15 breaking out the region delimiter and pattern
;; reader from other files. 7/18/15 Fixed but in collection of
;; edges. 11/6/15 Got punct into correct order for return. 

(in-package :sparser)

#| In the original serious work on no-space sequences for Big Mechanism
there was a stateful sweep of the chart ahead of the start position that 
simultaneously looked for where the sequence ended and characterized
the terms it was scanning over. 
  Now (January 2021) that sweep is nowhere to be found.
The functions at the top of this file are being used, word by word
|#

(defun punct-nospace-can-incorporate? (word)
  "If there is a space after this it is punctuation.
   If there's no space between it and the next then it's part
   of the ns sequence"
  (declare (special *the-punctuation-period*
                    *the-punctuation-question-mark*
                    *the-punctuation-comma*
                    *the-punctuation-semicolon*))
  (or (eq word *the-punctuation-period*)
      (eq word *the-punctuation-question-mark*)
      (eq word *the-punctuation-comma*)
      (eq word *the-punctuation-semicolon*)))

(defun punct-normally-in-ns? (word)
  "These characters are normal in no-space sequences"
  (declare (special *the-punctuation-rightwards-arrow*
                    *the-punctuation-plus-minus*))
  (or (eq word (punctuation-named #\-))
      (eq word (punctuation-named #\/))
      (eq word (punctuation-named #\@))
      ;;(eq word (punctuation-named #\%))
      (eq word (punctuation-named #\~))
      (eq word (punctuation-named #\+))
      (eq word *the-punctuation-rightwards-arrow*)
      (eq word *the-punctuation-plus-minus*)))

(defgeneric word-never-in-ns-sequence (word)
  (:method ((e edge))
    (word-never-in-ns-sequence
     (pos-terminal (edge-starting-position e))))
  (:method ((word word))
    (declare (special ;;*the-punctuation-period* 
                      *the-punctuation-question-mark*
                      *the-punctuation-comma*
                      *the-punctuation-semicolon*
                      *the-punctuation-percent*
                      *the-punctuation-prime*
                      *the-punctuation-single-quote*
                      *the-punctuation-double-quote*
                      word::close-paren
                      word::open-paren
                      word::close-square-bracket
                      word::open-square-bracket))
    (when (punctuation? word)
      (or ;;(eq word *the-punctuation-period*) ;; "known as CAL.20C"
          (eq word  *the-punctuation-question-mark*)
          (eq word *the-punctuation-comma*)
          (eq word *the-punctuation-semicolon*)
          (eq word *the-punctuation-percent*)
          (eq word *the-punctuation-prime*)
          (eq word *the-punctuation-single-quote*)
          (eq word *the-punctuation-double-quote*)
          (eq word word::close-paren)
          (eq word word::open-paren)
          (eq word word::open-square-bracket)
          (eq word word::close-square-bracket)))))




;;;------------------------------
;;; delimiting the no-space span
;;;------------------------------

(defvar *terminal-ns-punct-encountered* nil
  "This is populated by punctuation-terminates-no-space-sequence
  as it encounters characters that it didn't look ahead on.
  It's read by sweep-to-end-of-ns-regions to keep it from advancing
  the chart position on those characters. We could alternatively
  make this a property of punctuation characters, but if the list
  is small this will suffice.")



(defun sweep-to-end-of-ns-regions (start-pos end-pos)
  ;; Called from collect-no-space-segment-into-word starting from
  ;; the very beginning of the sequence (initial-position). That means
  ;; that the very next position after that is marked to say there
  ;; is no space between it and the word that starts this ns-region.
  ;; After that we could reach a terminating criteron.

  ;;  (push-debug `(,position)) (break "sweep to end from ~a" position)
  (declare (special *the-punctuation-hyphen* start-pos end-pos))
  (sweep-ns-region start-pos end-pos))

;;;-----------------------------------------
;;; reasons to abort or get out of the loop
;;;-----------------------------------------

(defun second-word-not-in-ns-sequence (word next-position)
  (declare (special *the-punctuation-period* *the-punctuation-comma*
                    *the-punctuation-semicolon* *end-of-source*
                    *the-punctuation-question-mark*))
  (when (punctuation? word)
    (cond
      ((or (eq word *the-punctuation-period*)
           (eq word *the-punctuation-question-mark*)
	   (eq word *the-punctuation-comma*)
	   (eq word *the-punctuation-semicolon*))
       ;; more general than "." probably, but this is the canonical
       ;; case
       (unless (pos-terminal next-position)
	 (scan-next-position))
       (or (eq (pos-terminal next-position) *end-of-source*)
	   (pos-preceding-whitespace next-position)))
;;      ((eq word (punctuation-named #\/)) ;; cascades in signal pathways
;;       t)
      (t nil))))

;; 1/30/21 no callers. Tearing it appart for parts
(defun punctuation-terminates-no-space-sequence (word position)
  (declare (special *the-punctuation-period* *the-punctuation-comma*
                    *the-punctuation-colon* *the-punctuation-semicolon*
                    *the-punctuation-rightwards-arrow*
                    *the-punctuation-plus-minus* *the-punctuation-question-mark*))
  (cond
    ((or (eq word *the-punctuation-period*)
         (eq word *the-punctuation-question-mark*)
	 (eq word *the-punctuation-comma*)
	 (eq word *the-punctuation-semicolon*))
     ;; if there's a space after this character, we assume that
     ;; it's punctuation, otherwise it's part of the compound
     ;; terminal.
     (sentence-final-punctuation-pattern? (chart-position-after position)))

    ((eq word *the-punctuation-colon*)
     ;;(if (next-word-is-digit? position) nil t)
     (when (pos-after-is-end-of-sequence position)
       (pushnew word *terminal-ns-punct-encountered*)))

    ((or (eq word (punctuation-named #\-))
	 (eq word (punctuation-named #\/))
         (eq word (punctuation-named #\@))
         ;;(eq word (punctuation-named #\%))
         (eq word (punctuation-named #\~))
         (eq word (punctuation-named #\+))
         (eq word *the-punctuation-rightwards-arrow*)
         (eq word *the-punctuation-plus-minus*))
     nil)

    ;; Every other punctuation is declared to be a boundary
    (t (pushnew word *terminal-ns-punct-encountered*)
       t)))

(defun sentence-final-punctuation-pattern? (position)
  (declare (special *source-exhausted* *end-of-source*))
  (unless (pos-terminal position)
    (scan-next-position))
  (cond
   (*source-exhausted* t)
   ((eq (pos-terminal position) *end-of-source*) t)
   (t
    (pos-after-is-end-of-sequence position))))

(defun pos-after-is-end-of-sequence (position)
  (declare (special *source-exhausted*))
  (let ((pos-after (chart-position-after position)))
    (unless (pos-terminal pos-after)
      (scan-next-position))
    (if (or (no-space-before-word? pos-after) ;; e.g. a URL
            (not *source-exhausted*))
        nil
        t)))

(defun next-word-is-digit? (position)
  (let ((pos-after (chart-position-after position)))
    (unless (pos-terminal pos-after)
        (scan-next-position))
    (eq (pos-capitalization pos-after) :digits)))


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


;;;------------------------
;;; final punctunctuation?
;;;-----------------------

(defun punctuation-final-in-ns-span? (end-pos)
  "Check for whether there is final punctuation (that we want
   to remove) in the span. Return non-nil if so. Called from 
   collect-no-space-segment-into-word as one of its pre-dispatch
   checks."
  (declare (special *the-punctuation-colon*))
  (let ((final-word (pos-terminal (chart-position-before end-pos))))
    ;; We want to keep hyphens and +. What about a final slash?
    ;; Ex. in present slash code is "c-Raf/ MAPK-mediated [6]."
    ;; where a repair is probably better. So just doing colon
    ;; right now.
    (when (eq final-word *the-punctuation-colon*)
      (tr :dropping-final-punct-of-ns-span final-word)
      t)))



;;;----------
;;; go-fer's
;;;----------

;;/// generalize and move
(defun strip-item-from-either-end (list)
  (let ((new-list (cdr list)))
    (setq new-list (nreverse (cdr (nreverse new-list))))))

(defun sort-out-edges-in-ns-region (edges leftmost-edge)
  #+ignore(cond
   (edges
    ;; The leftmost-edge, if there is one, will always be included
    ;; in the list of edges
    (if (null (cdr edges)) 
      edges
      (let ((in-order (nreverse edges)))
        (push-debug `(,in-order ,leftmost-edge))
        in-order)))
   (leftmost-edge
    ;; no additional edges collected by sweep-to-end-of-ns-regions
    ;; but we can't forget the one we already have.
    `(,leftmost-edge)))
  (sort edges #'< :key #'edge-start-index))


(defun edge-ends-here (position)
  (let* ((ev (pos-ends-here position))
	 (top-edge (ev-top-node ev)))
    (when (and top-edge
	       (edge-p top-edge)) 
      top-edge)))

(defun edge-start-index (edge)
  (pos-token-index (pos-edge-starts-at edge)))
