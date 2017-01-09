;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "scan-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  January 2016

;; initiated 5/15/15 breaking out the region delimiter and pattern
;; reader from other files. 7/18/15 Fixed but in collection of
;; edges. 11/6/15 Got punct into correct order for return. 

(in-package :sparser)

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

(defun sweep-to-end-of-ns-regions (initial-position initial-long-edge)
  ;; Called from collect-no-space-segment-into-word starting from
  ;; the very beginning of the sequence (initial-position). That means
  ;; that the very next position after that is marked to say there
  ;; is no space between it and the word that starts this ns-region.
  ;; After that we could reach a terminating criteron.

  ;;  (push-debug `(,position)) (break "sweep to end from ~a" position)
  (declare (special *the-punctuation-hyphen*))
  (let* ((position initial-position)
         (next-pos (if initial-long-edge
                     (pos-edge-ends-at initial-long-edge)
                     (chart-position-after initial-position)))
         (word (pos-terminal position))
         (edges (when initial-long-edge (list initial-long-edge)))
         hyphens  slashes  colons  other-punct 
         edge  long-edge-ends-at  )

    (flet ((store-important-punctuation (word)
             (cond
              ((eq word *the-punctuation-hyphen*) (push position hyphens))
              ((eq word (punctuation-named #\/)) (push position slashes))
              ((eq word (punctuation-named #\:)) (push position colons))
              ((punctuation? word) ;; but not terminating punctuation
               (push position other-punct))))) ;; e.g. %, +, ~
      (loop
        ;; we enter the loop looking for a reason to stop
        (store-important-punctuation word)
        (setq word (pos-terminal next-pos)
              edge (right-treetop-at/only-edges next-pos))
        (cond
         ((and edge (not (one-word-long? edge)))
          (tr :ns-edge-sweep edge)
          (setq long-edge-ends-at (pos-edge-ends-at edge))
          (push edge edges))

         (t ;; just a word at this position
          (tr :ns-word-sweep word)
          (when (pos-preceding-whitespace next-pos)
            (tr :ns-return-because-whitespace next-pos)
            (return))
          (when (first-word-is-bracket-punct word)
            (tr :ns-return-because-bracket-punct word)
            (return))
          (when (word-never-in-ns-sequence word)
            (tr :ns-return-word-never-in-ns-seq word)
            (return))
          (when (and (punctuation? word)
                     (punctuation-terminates-no-space-sequence word next-pos))
            (unless (memq word *terminal-ns-punct-encountered*)
              ;; We looked ahead, so reflect that in the stopping position
              (setq next-pos (chart-position-after next-pos)))
            (tr :ns-return-punch-terminates-seq word next-pos)
            (return))))
        (setq position next-pos
              next-pos (or long-edge-ends-at
                           (chart-position-after next-pos)))
        (tr :ns-next-position-is next-pos)
        (setq long-edge-ends-at nil ;; cleanup for next iteration
              edge nil)
        (when (pos-preceding-whitespace next-pos)
          ;; doing the check here given that we might get
          ;; an edge next and not go through this check in the word path
          (tr :ns-return-because-whitespace next-pos)
          (return))))

    (values next-pos
            (when hyphens (nreverse hyphens))
            (when slashes (nreverse slashes))
            (when colons (nreverse colons))
            (when other-punct (nreverse other-punct))
            (when edges (nreverse edges)))))


;;;-----------------------------------------
;;; reasons to abort or get out of the loop
;;;-----------------------------------------

(defun word-never-in-ns-sequence (word)
  (declare (special *the-punctuation-period*
                    *the-punctuation-question-mark*
                    *the-punctuation-comma*
                    *the-punctuation-semicolon*))
  (when (punctuation? word)
    (or (eq word *the-punctuation-period*)
        (eq word  *the-punctuation-question-mark*)
        (eq word *the-punctuation-comma*)
        (eq word *the-punctuation-semicolon*))))


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
         (eq word (punctuation-named #\%))
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
