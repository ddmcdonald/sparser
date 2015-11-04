;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "cap seqs"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  May 1993

;; initiated 5/15/93 on a few pieces of names:fsa:fsa8
;; 5/21 fixed a bug, 5/26 added traces

(in-package :sparser)

;;;---------
;;; the FSA
;;;---------

(defun cap-seq-continues-from-here? (position-before)
  ;; called from Capitalized-word-fsa and recursively.
  ;; The prior position holds a capitalized word and the question is
  ;; whether the current one does as well, with special cases for
  ;; the punctuation.
  (let ((status (pos-assessed? position-before))
        (position-after (chart-position-after position-before)))
    (if status
      (case status
        (:boundaries-introduced )
        (:scanned
         (introduce-brackets (pos-terminal position-before)
                             position-before position-after))
        (otherwise (break "assimilate new case for status: ~A" status)))
      (else
        (scan-next-position)
        (introduce-brackets (pos-terminal position-before)
                            position-before position-after)))

    ;; If the next position is capitalized keep on going, otherwise
    ;; return this next position, as it is the index just after
    ;; the last word thus far that wasn't lowercase.
    ;;    There's an elaborate interaction between punctuation and
    ;; brackets though, so that gets its own case.

    (let ((cap-state (pos-capitalization position-before)))
      (if (eq cap-state :punctuation)
        (then
          (tr :pnf/next-pos-is-punct position-before)
          (checkout-punctuation-for-capseq position-before))

        (if (]-on-position? position-before)
          (then
            (tr :pnf/next-pos-introduces-] position-before)
            position-before)
          (else
            (case cap-state
              (:lower-case
               (tr :pnf/next-pos-is-lowercase position-before)
               position-before)
              (:digits
               (tr :pnf/next-pos-is-digits position-before)
               position-before)
              (otherwise
               (tr :pnf/next-pos-is-capitalized-continuing-scan
                   position-before)
               (cap-seq-continues-from-here? position-after)))))))))


;;;-------------
;;; punctuation
;;;-------------

(defun checkout-punctuation-for-capseq (position)
  ;; the terminal at this position is punctuation of some sort.
  ;; Decide what to do on a case-by-case basis
  (let ((punct (pos-terminal position)))
    (cond
     ((eq punct word::.)
      (checkout-period-for-capseq position))
     ((eq punct word::&)
      (checkout-&-for-capseq position))
     ((eq punct *end-of-source*)
      ;; since this is not literal we can't use Case here
      position))))
#|
     ((eq punct word::.) (checkout-period-for-capseq position))
     ((eq punct word::-) (checkout-hyphen-for-capseq position))
     ((eq punct word::/) (checkout-forward-slash-for-capseq position))
     ((eq punct word::\') (checkout-single-quote-for-capseq position))
     ((eq punct word::\,) (checkout-comma-for-capseq position))
     (t position))))|#


(defun checkout-period-for-capseq (position)
  ;; there is a period at this position, we want to know whether
  ;; the word just behind this is either an initial or an abbreviation
  ;; (we know it's capitalized), in which case we have an edge formed
  ;; over the two and go on.
  (if (or (check-for-initial-before-position position)
          (check-for-abbreviation-before-position position))
    (cap-seq-continues-from-here? (chart-position-after position))
    position ))



(defun checkout-hyphen-for-capseq (position)
  ;; if the word at the next position is capitalized, and the hyphen
  ;; directly connects them then accept it, otherwise let it through
  ;; since a separated hyphen is often standing in for a dash

  (if (null (pos-preceding-whitespace position))
    (let ((next-position (chart-position-after position)))
      (case (pos-assessed? next-position)
        (:scanned )  ;;////////////////
        (:assessed )
        (otherwise (scan-next-position)))
      (if (and (null (pos-preceding-whitespace next-position))
               (capitalized (pos-terminal next-position)))
        (cap-seq-continues-from-here? position)
        position))
    position ))



(defun checkout-&-for-capseq (position-before)
  ;; this may not work in some cases, but we'll just assume that
  ;; there's going to be a capitalized word on the other side and
  ;; go ahead.  /// Need to manufacture a new word (polyword for
  ;; the case where there's no space: "Texas A&M"
  (cap-seq-continues-from-here?
   (chart-position-after position-before)))


(defun checkout-forward-slash-for-capseq (position)
  (break "capseq punct code needs writing"))


(defun checkout-single-quote-for-capseq (position)
  ;; cases:
  ;;  The next word is "s" and the "'" is acting as an appostrophe,
  ;;    in which case we assume there's going to be a segment break
  ;;    here and terminate the ongoing sequence. (There are vivid
  ;;    cases where the possessive is part of the name, but we'll
  ;;    handle them heuristically or by predefining them.
  ;;  The next word is capitalized and adjacent ("O'Neil").
  ;;
  ;; In all these cases we just pass judgement on whether to continue
  ;; the sequence -- handling the meaning of these cases is left to
  ;; classification.

  (let ((next-position (chart-position-after position)))
    (case (pos-assessed? next-position)
      (:scanned )
      (:assessed )
      (otherwise (scan-next-position)))

    (cond ((eq word::\s (pos-terminal next-position))
           ;; leave the "'s" to be gotten later
           position)
          ((capitalized (pos-terminal next-position))
           (cap-seq-continues-from-here? position))
          (t
           (break "new case for single-quote while looking to extend ~
                   a capitalized sequence.~%The next word is ~A ~
                   at position ~A" (pos-terminal next-position)
                  (pos-token-index next-position))))))



(defun checkout-comma-for-capseq (position)
  position )

