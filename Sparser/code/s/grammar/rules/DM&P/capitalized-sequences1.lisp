;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "capitalized sequences"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  1.1 February 1995

;; initiated 9/28/94 v2.3. Tweeked ...10/31
;; 0.1 (11/16) flushed the one case of using the segment as the referent in favor
;;      of the result of the mining.
;; 1.0 (11/23) redesigned the concept of what should happen. No longer makes a
;;      new edge labeled 'capitalized-sequence'.  Passes a signal to that effect
;;      back to Make-edge-over-capitalized-sequence
;; 1.1 (1/30) incorporated leading determiner check into no-edges case
;;     (2/2) tweeking the implications of that.

;;;--------
;;; driver
;;;--------

(defun dm&p-Cap-Seq-Data (start-pos end-pos)
  ;; called from Make-edge-over-capitalized-sequence. Returns the data
  ;; that it uses to make the edge
  (pfwpnf start-pos end-pos)
    ;; this handles polywords and edges over terminals

  (let ((region-description
         ;; this gets the rest
         (if (eq end-pos (chart-position-after start-pos)) ;; one word long
           (analyze-segment-layout start-pos end-pos)
           (parse-between-boundaries start-pos end-pos))))

    (ecase region-description
      ;; should never get :null-span or :span-is-longer-than-segment
      (:single-span  ;; e.g. a pair term
       (dm&p/single-span-cap-seq start-pos end-pos))
      (:no-edges ;; all new words
       (dm&p/new-words-cap-seq start-pos end-pos))
      (:has-unknown-words  ;; some known, some new
       (dm&p/some-known-cap-seq start-pos end-pos))
      (:contiguous-edges
       (dm&p/some-known-cap-seq start-pos end-pos)))))


;;;----------------
;;; dispatch cases
;;;----------------

(defun dm&p/Single-Span-cap-seq (start-pos end-pos)
  (tr :dm&p/Single-Span-cap-seq start-pos end-pos)
  (let ((edge (right-treetop-at start-pos)))
    (when (eq edge :multiple-initial-edges)
      (setq edge (single-best-edge-over-word start-pos)))
    
    (let* ((referent (edge-referent edge))
           (carrier-segment (define-segment start-pos end-pos))
           (result (when referent
                     (list referent))))
      
      (when (or (edge-over-literal? edge)
                (null referent))
        ;; a polyword will produce an edge w/o a referent, and
        ;; we can get a literal when the word is mentioned in a
        ;; polyword.  In both cases we need to mine a term
        (setq result (mine-treetops/indeterminate-relationship
                      start-pos end-pos carrier-segment))
        (setq referent (first result)))

      (rr/capitalized referent)

      (setf (edge-form edge) category::capitalized)
      edge )))

    #|(values category::capitalized-sequence   ;; category
              category::np                     ;; form
              referent
              :dm&p-Cap-Seq/single-span        ;; rule
              nil                              ;; daughters
              start-pos end-pos) |#
  


(defun dm&p/New-Words-cap-seq (start-pos end-pos)
  (tr :dm&p/all-new-words-cap-seq start-pos end-pos)
  (let ((carrier-segment (define-segment start-pos end-pos))
        result )

    (setq result
          (if (determiner? (pos-terminal start-pos))
            ;; Adjudicate-sentence-initial-cap-seq lets some function words
            ;; through even when it's the beginning of a sentence, so we
            ;; need to check for them and leave them out if they're present
            (if (eq (chart-position-after start-pos) end-pos)
              ;; check whether the determiner is the only item
              ;; in the sequence, in which case abort the sequence
              (throw :early-termination-of-pnf-parse start-pos)
              (mine-treetops/indeterminate-relationship
               ;; notes the adjacency relationships between the terms
               ;; and calls reifier for them
               (chart-position-after start-pos)
               end-pos
               carrier-segment))
            
            (mine-treetops/indeterminate-relationship
             ;; notes the adjacency relationships between the terms
             ;; and calls reifier for them
             start-pos end-pos
             carrier-segment)))

    (rr/capitalized (first result))

    (let ((edge (right-treetop-at/edge start-pos)))
      (setf (edge-form edge) category::capitalized)
      edge )))

#| old 1/30/95
(defun dm&p/New-Words-cap-seq (start-pos end-pos)
  (tr :dm&p/all-new-words-cap-seq start-pos end-pos)
  (let* ((carrier-segment (define-segment start-pos end-pos))
         (result (mine-treetops/indeterminate-relationship
                  ;; notes the adjacency relationships between the terms
                  ;; and calls reifier for them
                  start-pos end-pos
                  carrier-segment)))

    (rr/capitalized (first result))

    (let ((edge (right-treetop-at/edge start-pos)))
      (setf (edge-form edge) category::capitalized)
      edge )))

  #|(values category::capitalized-sequence  ;; category
            category::np                    ;; form
            (car result)                    ;; referent
            :dm&p-Cap-Seq/new-words         ;; rule
            nil                             ;; daughters
            start-pos end-pos) |#  |#



(defun dm&p/Some-known-cap-seq (start-pos end-pos)
  ;; this case is similar in some respects to Scan-treetops-and-mine
  ;; in that it should checkout the prefix, if any, and consider
  ;; whether it belongs in the sequence, e.g.
  ;;     "</para> The Sound control panel appears."
  ;; If there is a prefix, then it should be left out, which is
  ;; done by changing the positions that are returned with the
  ;; values

  (tr :dm&p/Some-known-cap-seq start-pos end-pos)
  (let ((prefix (edge-starting-at start-pos))
        (1st-word (pos-terminal start-pos)))

    (cond
     (prefix
      (if (analyze-segment-prefix prefix start-pos)
        (let ((pos-after (pos-edge-ends-at prefix)))
          ;; the question is whether to include the prefix as part of
          ;; the capitalized sequence or to assume that, like "the", it
          ;; should stay out of it.
          (if (eq pos-after end-pos)  ;; the seq. is all prefix
            (values nil nil nil :all-prefix nil end-pos end-pos)
            (if (function-word? 1st-word)
              ;; this gets a subset of the prefixes, in particular
              ;; it leaves out content verbs:  ".. choose Show All .."
              (hack-standard-case/dm&p/Some-known-cap-seq
               pos-after end-pos)
              ;; leave it in
              (hack-standard-case/dm&p/Some-known-cap-seq
               start-pos end-pos))))

        ;; the prefix isn't syntactically interesting, so assume that
        ;; it belongs in the sequence
        (hack-standard-case/dm&p/Some-known-cap-seq
         start-pos end-pos)))

     ((function-word? 1st-word)
      ;; leave it out
      (hack-standard-case/dm&p/Some-known-cap-seq
       (chart-position-after start-pos) end-pos))
      
     (t (hack-standard-case/dm&p/Some-known-cap-seq
         start-pos end-pos)))))



(defun hack-standard-case/dm&p/Some-known-cap-seq (start-pos end-pos)
  (let* ((carrier-segment (define-segment start-pos end-pos))
         (result (mine-treetops/indeterminate-relationship
                  ;; notes the adjacency relationships between the terms
                  ;; and calls reifier for them
                  start-pos end-pos carrier-segment)))

     (rr/capitalized (first result))

     (let ((edge (right-treetop-at/edge start-pos)))
       (setf (edge-form edge) category::capitalized)
       edge )))

  #|(values category::capitalized-sequence  ;; category
            category::np                    ;; form
            (first result)                 ;; referent
            :dm&p-Cap-Seq/new-words         ;; rule
            nil                             ;; daughters
            start-pos end-pos) |#

