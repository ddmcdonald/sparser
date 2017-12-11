;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "obsolete-code"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  August 2017

;; Initiated  1-Oct-2017
;; Code removed in refactoring of the various parse paths for documents and strings
(in-package :sparser)

;;;------------------------------
;;; removed from multi-scan.lisp
;;;------------------------------

(defun scan-sentences-to-eof (first-sentence &aux (sentence first-sentence)start-pos)
  "Called from initiate-successive-sweeps when we're
   in the initial sweep phase and need to identify
   and populate the sentences of the paragraphs.
   Does scan-next-terminal and detects sentence boundaries 
   but no substantive processing. Does not return.
   We leave the loop via a throw to sentences-finished
   from simple-eos-check from inside scan-words-loop."
  (declare (special *show-sentence-for-early-errors* *current-sentence*)
           (optimize (debug 3)(speed 1)))
  (tr :start-scan-to-eof first-sentence)
  (setq *current-sentence* first-sentence)
  (lsp-break "foo")
  (loop
    (when (null sentence) (return-from scan-sentences-to-eof nil))
    (setq start-pos (starts-at-pos sentence))
    (tr :scan-to-eof-start-pos start-pos)
    (catch :end-of-sentence ;; Thrown from period-hook
      (let ((first-word (pos-terminal start-pos)))
        (unless first-word
          (scan-next-position)
          (setq first-word (pos-terminal start-pos)))
        (scan-words-loop start-pos first-word)
        (when *show-sentence-for-early-errors*
          (format t "  in sentence: ~s ~%"
                  (sentence-string sentence))
          (setq *show-sentence-for-early-errors* nil))))
    (setq sentence (next sentence))))

(defun scan-words-loop (position-before word)
  "This routine is called by ... which itself
   is called by initiate-successive-sweeps when we are reading
   a document and need to populate (create) all the sentences.
   Starting at the beginning of a sentence, add words into the
   chart until a sentence-ending period (or question-mark) is encountered.
   It's a recursive loop. We get out of it when the period-hook
   runs and throws to :end-of-sentence."
  ;; position-before - word - position-after
  ;;/// rewrite this as a loop. Maybe incorporate the
  ;; by-hand invocation of period-hook
  ;; (tr :scan-words-loop) <-- needs to be loop before not loud
  (declare (optimize (speed 1)(debug 3)))
  (simple-eos-check position-before word)  
  (let ((position-after (chart-position-after position-before)))
    (unless (includes-state position-after :scanned)
      (scan-next-position);; unknown words are noticed here
      ;; this can actually set up the pos-terminal of position-before
      (unless word (setq word (pos-terminal position-before))))
    (simple-eos-check position-before word)

    (when *trace-scan-words-loop*
      (format t " ~s" (word-pname word)))
    
    (let* ((where-pw-ended (polyword-check position-before word))
           (position-after (or where-pw-ended
                               (chart-position-after position-before))))
      (when where-pw-ended
         (tr :scanned-pw-ended-at word where-pw-ended)
         (setq position-before where-pw-ended
               position-after (chart-position-after position-before))
         (unless (includes-state where-pw-ended :scanned)
           ;; PW can complete without thinking about the
           ;; word that follows it.
           (scan-next-position))
         (setq word (pos-terminal where-pw-ended)))
      
      ;; Trigger the period-hook (n.b. also gets conjunctions,
      ;; parentheses, etc.)
      
      (complete-word/hugin word position-before position-after)

      (let ((next-word (pos-terminal position-after)))
        (scan-words-loop position-after next-word)))))

;; Later, intermediate version on the way to scan-sentences-and-pws-to-eos

(defun scan-words-loop (start-pos &optional word)
  "WRITE THIS DOCUMENTATION"
  (declare (special *sentence-terminating-punctuation*)
           (optimize (speed 1)(debug 3)))
  (scan-sentences-and-pws-to-eos start-pos)

  (let* ((position-before start-pos)
         (ev (pos-starts-here start-pos))
         (edge (ev-top-node ev))
         (word (unless edge (pos-terminal start-pos)))
         (position-after (if edge
                             (pos-edge-ends-at edge)
                             (chart-position-after position-before))))
    (loop
      (when (eq word *end-of-source*)
        (throw 'sentences-finished nil))
      (when *trace-scan-words-loop*
        (if word
            (format t " ~s" (word-pname word))
            (format t " edge: ~s" edge)))
      (when word
        ;; The function check-for-completion-actions/word looks on the
        ;; rule-set of the word for a completion action or actions and
        ;; runs carry-out-actions to execute (funcall) them. 
        (tr :scan-completing word position-before position-after)
        ;; Trigger the period-hook (n.b. also gets conjunctions,
        ;; parentheses, etc.)
        (when (member word *sentence-terminating-punctuation*)
          ;; possibly exit loop here -- when you have a real period
          (period-hook word position-before position-after)))
      (setq position-before position-after
            ev (pos-starts-here position-after)
            edge (ev-top-node ev)
            word (unless edge (pos-terminal position-after))
            position-after (if edge
                               (pos-edge-ends-at edge)
                               (chart-position-after position-after))))))



(defun polyword-sweep-loop (position-before word)
  "First pass over the text. Checks each successive word for
   initiating a polyword (polyword-check). The longest completion
   is spanned with an edge. 
      This loop stops with a throw from the period hook (period-check) 
   or upon encountering the end of the stream being analyzed (simple-eos-check). 
   These delimit one sentence-worth of text."
  (declare (special *trace-sweep*))
  (tr :polyword-sweep-loop)
  (loop
     (simple-eos-check position-before word)
     (period-check position-before word)

     (when *trace-sweep*
       (format t "~&[polyword-sweep] ~s at p~a"
               (pname word) (pos-token-index position-before)))

     (let* ((where-pw-ended (polyword-check position-before word))
            (position-after (or where-pw-ended
                                (chart-position-after position-before))))
       (when where-pw-ended
         (tr :scanned-pw-ended-at word where-pw-ended)
         (setq position-before where-pw-ended)
         (unless (includes-state where-pw-ended :scanned)
           ;; PW can complete without thinking about the
           ;; word that follows it.
           (scan-next-position))
         (setq word (pos-terminal where-pw-ended)))

       #| Version that fixed problem of calling no-space processing
      when the beginning and end positions are identical
      (when where-pw-ended
       (tr :scanned-pw-ended-at word where-pw-ended)
         ;;(setq position-before where-pw-ended) ;
       (setq position-before where-pw-ended
       position-after (chart-position-after where-pw-ended))
       (unless (includes-state where-pw-ended :scanned)
       (scan-next-position))
       (setq word (pos-terminal position-before))) |#

       #+ignore(when (eq position-before position-after)
                 (error "Scan-terminals-loop: before and after positions are
                  the same: ~a" position-after))
       
       (unless (includes-state position-after :scanned)
         (scan-next-position))

       (let ((next-word (pos-terminal position-after)))
         (tr :next-terminal-to-scan position-after next-word)
         (setq position-before position-after
               word next-word)))))


;;;-----------------------------------
;;; removed from no-brackets-protocol
;;;-----------------------------------

(defun sentence-sweep-loop ()
  "Called from initiate-successive-sweeps when reading from 
   a stream of characters rather than a pre-structured document.
   Organizes all the parsing layers from lowest to highest.
   Expects a first sentence to exist but not to be populated"
  (declare (special *current-sentence*))
  (tr :entering-sentence-sweep-loop)
  (let* ((sentence (sentence))  ;; to pass to subroutines
         (*sentence* sentence)) ;; for global reference
    (declare (special *sentence* *this-sen)
             (optimize debug))
    ;; scan through the complete string, filling in the chart
    (let ((*scanning-terminals* :polywords))
      (declare (special *scanning-terminals*))
      (scan-sentences-to-eos (starts-at-pos sentence)))
    ;;  scan-sentences-to-eos calls (start-sentence) for each sentence
    ;;  and that resets *current-sentence* -- set it back to first sentence
    (setq *current-sentence* sentence)
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        (unless first-word
          ;; There is a pending bug (7/16) that happens when a sentence
          ;; ends in with a polyword followed by a question mark.
          ;; Fixing the bug appears to be tied up with companion
          ;; issue where the pointers that walk the sentence in
          ;; the scan-terminals-loop are identical. First attempts
          ;; to fix that led to fallback in other polyword processing.
          (scan-next-position) ;; compensate for the bug
          (setq first-word (pos-terminal start-pos)))

        ;; 1st scan the text into minimal terminal edges.
        ;; The thow is from period-hook, which will also advance
        ;; the value returned by (sentence) to be the next sentence
        ;; after this one that we're working on. 
        (tr :scanning-terminals-of sentence)
        (catch :end-of-sentence
          (scan-terminals-loop start-pos first-word (ends-at-pos sentence)))
        (sentence-processing-core sentence)
        
        (setq sentence (next sentence))
        (when (null sentence) ;; or a sentence with a null string?
          (terminate-chart-level-process))))))
