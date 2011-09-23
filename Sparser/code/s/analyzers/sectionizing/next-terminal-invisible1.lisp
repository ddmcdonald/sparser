;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "next-terminal/invisible"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  1.0 September 1994

;; initiated 6/2/94 v2.3
;; 1.0 (6/9) put in serious character buffer handling
;;     (7/14) put gates around the trace statements  (9/6) finally hit checking
;;      breakpoint in looking-for-end and fixed the value it returns

(in-package :sparser)

;;;--------------------------
;;; routine to connect it up
;;;--------------------------

(defun allow-invisible-markup ()
  (establish-version-of-next-terminal-to-use
   :invisible-markup-checked-for
   'detect-and-process-invisible-markup))


;;;---------
;;; globals
;;;---------

(defvar *buffered-token* nil)

(define-per-run-init-form '(setq *buffered-token* nil))


;;;---------------
;;; next-terminal
;;;---------------

(defun detect-and-process-invisible-markup ()
  (if *buffered-token*
    (kpop *buffered-token*)

    (let ((word (next-token)))
      (if (eq word word::open-angle-bracket)
        (lookahead-for-invisible-markup)
        word ))))


(defun lookahead-for-invisible-markup ()
  ;; peek at the next characters, checking them against the
  ;; trie for invisible markup. If the sequence is found,
  ;; we return a keyword + section-marker pair to this point.
  ;; If this next alpabetic token is not invisible markup,
  ;; then we pretend all this never happened and return
  ;; the angle-bracket that triggered all this.  Since we
  ;; were just peeking, the next call to next-terminal will
  ;; get this token that we just found (or found some prefix of it)
  (multiple-value-bind (tag length swapped?)
                       (peek-at-next-chars/trie/invis-markup
                        (trie-network *invisible-markup-trie*) 1 nil nil)
    (if tag
      (if swapped?
        (establish-hidden-markup-tag tag length swapped?)
        (establish-hidden-markup-tag tag length))
      (if swapped?
        (adjudicate-return-from-invisible-lookahead-with-swapped-buffer
         swapped?)
        word::open-angle-bracket))))


(defparameter *trace-invisible-markup* nil)
(defun trace-invisible-markup ()
  (setq *trace-invisible-markup* t))
(defun unTrace-invisible-markup ()
  (setq *trace-invisible-markup* nil))


(defun peek-at-next-chars/trie/invis-markup (trie-network
                                             number-of-chars-looked-at
                                             chars-before-swap
                                             chars-after-swap )
  ;; looks directly into the character buffer, circumventing the
  ;; usual machinery, which means we have to be prepared to
  ;; handle the buffer swap
  (let ((next-char (elt *character-buffer-in-use*
                        (+ *index-of-next-character*
                           number-of-chars-looked-at)))
        swapped-at )

    (cond ((eql next-char #\^d)  ;; prints as #\End
           (setq swapped-at number-of-chars-looked-at)
           (refill-character-buffer *character-buffer-in-use*)
           ;; n.b. after this swap the next-char index will have been
           ;; reset to its initialization value, -1, so we have to
           ;; compensate by modifying our increment.
           (setq next-char (elt *character-buffer-in-use* 0)
                 ;; n.b. this is now a different buffer
                 number-of-chars-looked-at 1)
           (when *trace-invisible-markup*
             (format t "~&>>>>>>> pushing ~A onto chars-after-swap~%" next-char))
           (kpush next-char chars-after-swap))
          ((null chars-after-swap)
           (kpush next-char chars-before-swap))
          (chars-after-swap
           (when *trace-invisible-markup*
             (format t "~&>>>>>>> pushing ~A onto chars-after-swap~%" next-char))
           (kpush next-char chars-after-swap))
          (t (break "Threading bug: state shouldn't have allowed us to ~
                     get here")))

    (let ((continuation
           (char-continues-known-sequence? next-char trie-network)))
      (if continuation
        (then
          (unless (consp continuation)
            (break "Data bug: continuation isn't a list:~%~A" continuation))
          (if (keywordp (car continuation))
            (if swapped-at
              (then
                (when chars-before-swap
                  (deallocate-klist chars-before-swap))
                (values continuation nil number-of-chars-looked-at))
              (else
                (when chars-before-swap
                  (deallocate-klist chars-before-swap))
                (values continuation number-of-chars-looked-at nil)))

            (if (or swapped-at chars-after-swap)
              (peek-at-next-chars/trie/invis-markup
               continuation (1+ number-of-chars-looked-at)
               chars-before-swap chars-after-swap)
              (peek-at-next-chars/trie/invis-markup
               continuation (1+ number-of-chars-looked-at)
               chars-before-swap nil))))
        (else
          (if (or swapped-at chars-after-swap)
            (then
              (when *trace-invisible-markup*
                (format t "~&>> length of chars-before-swap: ~A  ~A~
                           ~%           of chars-after-swap: ~A  ~A"
                        (length chars-before-swap) chars-before-swap
                        (length chars-after-swap) chars-after-swap))

              (values nil nil (kcons ;;(+ (length chars-before-swap)
                                     (length chars-after-swap)
                                     (kcons chars-before-swap
                                            chars-after-swap))))
            (else
              (when chars-before-swap (deallocate-klist chars-before-swap))
              (values nil nil nil))))))))



(defun adjudicate-return-from-invisible-lookahead-with-swapped-buffer
       (kcons)
  ;; The lookahead didn't find a tag, but in the processing of looking
  ;; it had to turn over the character buffers.  This routine has to
  ;; figure out how to now compensate.  We're a return path out of
  ;; next-terminal, but since there was only one way into this path
  ;; it's clear what token we return, i.e. the "<" that precipitated
  ;; the lookahead.  The word we find when working out what to do
  ;; with the debris goes onto the buffer.

  (let* ((count (car kcons))
         (list-of-chars (cdr kcons))
         (chars-before (when (listp (first list-of-chars))
                         (first list-of-chars)))
         (chars-after (if (listp (first list-of-chars))
                        (rest list-of-chars)
                        list-of-chars)))
    (deallocate-kons kcons)
    (unless (= -1 *index-of-next-character*)
      (break "*index-of-next-character* is ~A~
              ~%expected it to be -1" *index-of-next-character*))

    (when *trace-invisible-markup*
      (format t "~&>>>>>>>>>>>>> index = ~A~%" *index-of-next-character*)

      (format t "~&>>>>>>>>>>>>> +0 = ~A"
              (elt *character-buffer-in-use*
                   (+ *index-of-next-character* 1))) ;; 1 + -1 = 0
      (format t "~&>>>>>>>>>>>>> +1 = ~A"
              (elt *character-buffer-in-use*
                   (+ *index-of-next-character* 2)))
      (format t "~&>>>>>>>>>>>>> +2 = ~A"
              (elt *character-buffer-in-use*
                   (+ *index-of-next-character* 3)))
      (format t "~&>>>>>>>>>>>>> +3 = ~A"
              (elt *character-buffer-in-use*
                   (+ *index-of-next-character* 4))))
    
    (setq *index-of-next-character*
          (+ *index-of-next-character*
             (1+ count)
             ))

    #|(if (= count 1)
      (if (punctuation-char? (first chars-after))
        (let ((entry (tokenizer-entry (first list-of-chars))))
          (kpush (cdr entry) *buffered-token*)
          word::open-angle-bracket )
        (break "single character pushed, but it's not punctuation: ~A"
               (first list-of-chars)))
      (else |#

        ;; we have to reconstruct what tokens would have occurred 
        ;; and push them onto the buffer. We return the token that
        ;; got us into this path, the angle-bracket
        (let ((char-sequence (nreverse (append chars-after chars-before))))
          (when *trace-invisible-markup*
            (format t "~&>>>>>>>>>> working from: ~A~
                       ~%           count = ~A~
                       ~%           index = ~A~%"
                    char-sequence count *index-of-next-character*))
          (tokenize-and-buffer-chars-peeked-at char-sequence)
          word::open-angle-bracket )))



(defvar *tokens-buffered-by-last-peek-w/-buffer-swap* nil)

(defun tokenize-and-buffer-chars-peeked-at (list-of-chars)
  ;; This is a restricted case since it can only occur within markup.
  (let ((char (first list-of-chars))
        (remaining-chars (cdr list-of-chars))
        entry  pending-char-type  tokens  accumulating-chars  delimited?)
    (loop
      (setq entry (tokenizer-entry char))
      (cond ((punctuation-char? char)
             (push (cdr entry) tokens)
             (setq delimited? t)
             (when accumulating-chars
               (push (make-token-from-list-of-chars
                      (nreverse accumulating-chars) pending-char-type)
                     tokens)
               (setq pending-char-type nil)))
            ((or (null pending-char-type)
                 (eq pending-char-type (car entry)))
             (setq delimited? nil
                   pending-char-type (car entry))
             (push char accumulating-chars))
            ((not (eq pending-char-type (car entry)))
             (setq delimited? t)
             (push (make-token-from-list-of-chars
                    (nreverse accumulating-chars) pending-char-type)
                   tokens)
             (setq pending-char-type nil))
            (t (break "Threading bug: didn't expect to be able to get here")))

      (if remaining-chars
        (setq char (first remaining-chars)
              remaining-chars (rest remaining-chars))
        (return)))

    (unless delimited?
      ;; have to keep reading from the character buffer
      (when *trace-invisible-markup*
        (format t "~&>>>>>>> when moving to extend accumulated: ~A~%"
                accumulating-chars))
      (push (extend-token-beyond-peeked-chars 
             accumulating-chars pending-char-type)
            tokens))

    (dolist (word tokens)
      (kpush word *buffered-token*))
    (setq *tokens-buffered-by-last-peek-w/-buffer-swap*
          (copy-list *buffered-token*))
    ;(break "~%~%check *buffered-token*~%~%")
    ))


(defun make-token-from-list-of-chars (list-of-chars char-type)
  (let ((string (coerce list-of-chars 'string)))
    (populate-word-lookup-buffer/string string)
    (let ((word (find-word char-type)))
      (when *trace-invisible-markup*
        (format t "~&>>>>>> constructed the word: ~A~%" word))
      word )))


(defun extend-token-beyond-peeked-chars (list-of-chars pending-char-type)
  (let ((chars list-of-chars)
        (next-char (elt *character-buffer-in-use*
                        *index-of-next-character*))
        entry )
    (loop
      (when *trace-invisible-markup*
        (format t "~&>>>> next char in buffer: ~A~%" next-char))
      (setq entry (tokenizer-entry next-char))
      (if (eq (car entry) pending-char-type)
        (push next-char chars)
        (else
          ;; we've delimited the token and this char goes with
          ;; the next token, so we have to pass this information
          ;; on to the Tokenizer for its next call
          (setq *pending-entry* entry)
          (return)))
      (setq next-char (elt *character-buffer-in-use*
                           (incf *index-of-next-character*))))

    (make-token-from-list-of-chars
     (nreverse chars) pending-char-type)))
         




;;;--------------------------------
;;; what to do when a tag is found
;;;--------------------------------

(defun establish-hidden-markup-tag (tag-data length-of-tag
                                    &optional count-beyond-swap )
  ;; We have just seen an open angle-bracket followed by a tag
  ;; that we are to treat as 'hidden', in that it is not to
  ;; appear as a terminal in the chart. 
  (let ((keyword (car tag-data))
        (section-marker (cadr tag-data)))
    (ecase keyword
      (:initiate
       (establish-initiating-hidden-markup
        section-marker length-of-tag count-beyond-swap))
      (:terminate
       (establish-terminating-hidden-markup
        section-marker length-of-tag count-beyond-swap))
      (:annotation
       (establish-annotation-hidden-markup
        section-marker length-of-tag count-beyond-swap)))))


#| These are called from the marker-checking version of next-terminal
   so they are responsible, ultimately, for returning the next
   terminal that is to go into the chart.  |#


(defun establish-initiating-hidden-markup (sm length-of-tag
                                           count-beyond-swap )
  ;; the next word will fall under the scope of this tag,
  ;; so we put the marker on the 'starts-here' of the next
  ;; position since the word will be placed logically just after it.
  (let ((position (next-chart-position-to-fill)))
    (setf (ev-marker (pos-starts-here position)) sm)
    (let ((next-terminal
           (if (takes-internal-data sm)
             (scan-for-hidden-internal-markup-data
              sm position length-of-tag count-beyond-swap)
             (scan-for-tag-end-marker-and-continue
              length-of-tag count-beyond-swap))))
      next-terminal)))

(defun establish-terminating-hidden-markup (sm length-of-tag
                                            count-beyond-swap )
  ;; the last word under the scope of this marker was scanned
  ;; just a moment before, so we put this on the ends here
  ;; of the next position.
  (let ((position (next-chart-position-to-fill)))
    (setf (ev-marker (pos-ends-here position)) sm)
    (let ((next-terminal
           (if (takes-internal-data sm)
             (scan-for-hidden-internal-markup-data
              sm position length-of-tag count-beyond-swap)
             (scan-for-tag-end-marker-and-continue
              length-of-tag count-beyond-swap))))
      next-terminal)))


;;;------------------
;;; further scanning
;;;------------------

(defun scan-for-tag-end-marker-and-continue (length-of-tag
                                             count-beyond-swap )
  ;; we've peeked into the character buffer and recognized
  ;; a hidden markup tag. Now we peek once more for the
  ;; character that marks the end of the tag -- which should
  ;; be the very next character -- scarf it, and then make
  ;; another call to next-terminal to find the 'real' next
  ;; terminal to be added to the chart.
  (let ((next-char
         (if count-beyond-swap
           ;; if this has a value, then we swapped buffers in the course
           ;; of finding the tag. If count=1 then we looked at the
           ;; 0th cell of the new buffer, if =2 then we looked at the
           ;; 1st, etc.  The next-char will be just beyond where
           ;; we've already looked, which, given the way arrays are
           ;; done, is the equivalent of looking in the cell that
           ;; is named by the count
           (elt *character-buffer-in-use* count-beyond-swap)

           (elt *character-buffer-in-use*
                (+ *index-of-next-character*
                   (1+ length-of-tag))))))

    (unless count-beyond-swap
      (when (eql next-char #\^d)
        ;(break "buffer swap: looking for end marker")
        ;; //// do a peek
        ;; swap buffers -- it's safe to do it here because we're
        ;; not looking ahead beyond where next-token will look if
        ;; we don't see what we're looking for
        (refill-character-buffer *character-buffer-in-use*)
        ;; n.b. after this swap the next-char index will have been
        ;; reset to its initialization value, -1
        (setq next-char (elt *character-buffer-in-use* 0)
              count-beyond-swap 0)))

    (unless (eql next-char #\> )
      (break "Threading: unexpected character after hidden markup ~
              string:~% \"~A\" " next-char))

    (setq *index-of-next-character*
          (if count-beyond-swap
            ;; we've already accounted for all the characters up
            ;; to the count-th cell
            (1+ count-beyond-swap)
            (1+ (+ *index-of-next-character* length-of-tag))))

    (next-terminal)))




(defun scan-for-hidden-internal-markup-data (sm position
                                             length-of-tag
                                             count-beyond-swap )

  ;; we've scanned a tag by peeking into the character buffer, and
  ;; noticed that this tag can take internal markup between it
  ;; and the closing angle bracket.  Since we're now sure that
  ;; we have a tag we can shift to doing real consumption of tokens
  ;; from the stream until we reach that angle bracket.

  (declare (ignore position))

  ;; 1st reset the character index to point to just after the tag
  (setq *index-of-next-character*
        (if count-beyond-swap
          (break "Stub:      count-beyond-swap = ~A~
                  ~% *index-of-next-character* = ~A"
                 count-beyond-swap *index-of-next-character*)
          (1+ (+ *index-of-next-character* length-of-tag))))

  ;; We expect to see one or more markup tags, which will often
  ;; be polywords.  We check each token in sequence, and if it is
  ;; not by itself a markup label (i.e. the label is a word), then
  ;; we treat it as the beginning of a polyword and try to roll one
  ;; up from it and the tokens that follow until the next whitespace
  ;; or the angle bracket.
  (let ((markup-labels (cdr (sm-interior-markup sm)))
        word  pending-prefix  cfr  markup-found  >-seen  multiple-prefixes )
    (loop
      (setq word (next-token))
      ;(format t "~&next token = ~A" word)
      (when (eq word word::close-angle-bracket)
        ;; This ">" may indicate the end of the markup or it may be
        ;; part of the accumulating feature (indicating the direction
        ;; of a dependency).
        (cond
         (pending-prefix
          ;; If the pending-prefix is a polyword then it is a complete
          ;; feature and we're done          
          (if (polyword-p pending-prefix)
            (then (push pending-prefix markup-found)
                  (return))
            ;; otherwise see if the ">" combines with this prefix. 
            ;; If it does, go around the loop again after setting
            ;; a flag to make sure we don't go this route twice.
            (else
              ;; when the flag is up, having gotten here indicates
              ;; that there's a misspelling or a gap in the markup set.
              (if >-seen
                (format t "~&Ignoring undefined interior markup: ~A~
                           ~%governing tag: ~A~%" pending-prefix sm)
                (else
                  (setq >-seen pending-prefix) ;; interesting for debugging
                  )))))
         (multiple-prefixes
          ;; one of these is a pw and the other is a prefix. If the prefix
          ;; can take this ">" then we go around the loop again.
          (setq >-seen multiple-prefixes))
         (t (return))))

      (cond ((or pending-prefix multiple-prefixes)
             (if (or (whitespace word)
                     (eq word *newline*))
               ;; then the polyword should be over
               (then
                 (when multiple-prefixes
                   ;; is one of them a hidden-markup feature ?
                   (dolist (label multiple-prefixes)
                     (when (polyword-p label)
                       (setq pending-prefix label)))
                   (unless pending-prefix
                     (break "Expected a polyword amoung the labels:~
                             ~%  ~A" multiple-prefixes))
                   (setq multiple-prefixes nil))

                 (unless (member pending-prefix markup-labels :test #'eq)
                   (format t "~&Ignoring undefined interior markup: ~A~
                              ~%governing tag: ~A~%" pending-prefix sm))
                 (push pending-prefix markup-found)
                 (setq pending-prefix nil))

               (else
                 ;; try to continue
                 (if multiple-prefixes
                   ;; there can only ever be two: a pw and a dotted category
                   (let ((m1 (multiply-labels (first multiple-prefixes) word))
                         (m2 (multiply-labels (second multiple-prefixes) word)))
                     (cond
                      ((and m1 m2)
                       (setq multiple-prefixes (list m1 m2))
                       (setq cfr :multiple))
                      ((or m1 m2)
                       (setq cfr (or m1 m2))
                       (setq multiple-prefixes nil))
                      (>-seen
                       (let ( pw )
                         (dolist (label multiple-prefixes
                                  (unless pw
                                    (break "At final '>' with multiple-prefixes ~
                                            but none is a polyword")))
                           (when (polyword-p label)
                             (push label markup-found)
                             (setq pw :found))))
                       (setq multiple-prefixes nil)
                       (return))
                      (t  ;; no completion
                       (setq cfr nil
                             multiple-prefixes nil))))
                   (setq cfr (multiply-labels pending-prefix word)))
                   ;; n.b. there is no provision in all of this for carrying more
                   ;; than one thread.

                 (if cfr
                   (if (consp cfr) ;; multiple-completions
                     (then
                       (setq multiple-prefixes
                             (let ( accumulating-lhs )
                               (dolist (r cfr)
                                 (push (cfr-category r) accumulating-lhs))
                               accumulating-lhs ))
                       (setq pending-prefix nil))

                     ;; single completion this time
                     (unless multiple-prefixes ;; update already done in prior clause
                       (setq pending-prefix (cfr-category cfr))))

                   (else
                     ;; there was no continuation -- something is undefined
                     (etypecase pending-prefix
                      (word
                       (format t "~&Ignoring adjacent tokens \"~A\" and ~
                                  \"~A\"~%   that do not combine"
                               (word-pname pending-prefix)
                               (word-pname word)))
                      (category
                       (break "Expected prefix ~A and \"~A\" to combine ~
                               ~%as part of a polyword representation of ~
                               a interior marker tag"
                              (string-downcase 
                               (symbol-name (cat-symbol pending-prefix)))
                              (word-pname word)))
                      (polyword
                       (format t "~&Ignoring adjacent feature ~A and ~
                                  \"~A\"~%   that do not combine"
                               (pw-symbol pending-prefix)
                               (word-pname word))))
                     (setq pending-prefix nil))))))

            ((whitespace word))
            ((eq word *newline*))
            (t
             (if (member word markup-labels :test #'eq)
               (push pending-prefix markup-found)
               (setq pending-prefix word)))))

    (values (next-terminal)
            (nreverse markup-found))))

