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

