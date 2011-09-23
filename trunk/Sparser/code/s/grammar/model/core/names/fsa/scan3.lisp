;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan"
;;;   Module:  "model;core:names:fsa:"
;;;  Version:  3.2 May 1995

;; initiated 5/15/93 v2.3 on a few pieces of names:fsa:fsa8
;; 5/21 fixed a bug, 5/26 added traces
;; 2.0 (6/9) tweeked main routine to be more delicate about when brackets
;;      are introduced by punctuations (bumped to preserve old version)
;; 2.1 (12/29) modified the check-period routine to appreciate returns that
;;      involve polywords
;; 2.2 (1/7/94) modifying the reaction to ] for the case of "A."
;; 2.3 (3/21) Adding appreciation of "/"
;; 2.4 (4/4) putting in special appreciation of "of". 5/2 Debugged a misspelling 
;;       and 5/5 put check for abbreviations there (may be unreachable though)
;; 2.5 (5/17) bringing bracket-introduction calls into sync with new scheme
;; 2.6 (6/13) fleshed out Checkout-&-for-capseq to look at capitalization of next word,
;;       added case to continuation checkout status check. (7/22) found a case for it
;; 2.7 (9/28) added gates to control whether boundaries are checked
;;     (10/12) putting hyphen back
;; 2.8 (10/24) fixed bug in check for &
;; 2.9 (1/5/95) moved ] check up into first step
;; 2.10 (1/17) put in a catch to get evidence found when a terminal is scanned.
;; 2.11 (1/25) refined the ] check to appreciate 'strong boundaries'
;;      (1/30) Non-boundary-continuation/bracket-checked didn't look for punct.
;; 2.12 (2/1) put a check for the need to check next pos right at the start.
;; 3.0 (4/12) Setting up for "Xxx of Yyy" and probably fracturing the careful setup
;;       in the process.
;; 3.1 (4/30) rethreaded the boundary cases, repackaged the boundary check,
;;      added provision (stub) for 'de' and other significant lowercase words.
;;      Fixing bugs and complications ..5/3
;;     (5/15) added treatment of '%'
;; 3.2 (5/19) did case of the lc-version of a word having a bracket and stopping
;;      the scan while the actual variant didn't.
;;     (5/29) changed the capitalization-of-the-next-word check in the hyphen routine
;;      because reacted to the word rather than the position (never revised?)

(in-package :sparser)

;;;---------
;;; the FSA
;;;---------

(defun cap-seq-continues-from-here? (position-before)
  ;; called from Capitalized-word-fsa and then recursively.
  ;; The prior position holds a capitalized word and the question is
  ;; whether the current one does as well, with special cases for
  ;; the punctuation that are checked first so that the brackets
  ;; punctuation introduces don't get in the way.
  (tr :Cap-seq-continues-from-here? position-before)

  ;; scan the next word
  (unless (pos-terminal position-before)
    (let ((value-returned
           (catch :position-scan-terminates-PNF
             (scan-next-position))))
      (when (eq value-returned :end-the-scan)
        (return-from cap-seq-continues-from-here?
          position-before))))
  (tr :Cap-seq-looking-at position-before)

  ;; evaluate whether to continue the sequence
  (let* ((cap-state (pos-capitalization position-before))
         (position-after (chart-position-after position-before))
         (bracket (bracket-closing-segment-at position-before)))

    (tr :Cap-seq-continues/status cap-state bracket)

    (if (eq cap-state :digits)
      position-before
      
      (if bracket   ;; "of"  "."
        (if *pnf-scan-respects-segment-boundaries*
          (boundary-continuation position-before position-after
                                 cap-state)
          (non-boundary-continuation position-before
                                     position-after
                                     cap-state
                                     bracket))

        (cap-seq-continues-from-here?/aux cap-state
                                          position-before)))))

(defun cap-seq-continues-from-here?/aux (cap-state position-before)
  (cond
   ((eq cap-state :punctuation)  ;; "&" 
    (tr :pnf/next-pos-is-punct position-before)
    ;; the punctuation will decide whether we continue, and
    ;; if not, will return the current position-before which
    ;; will become the call of this value as well
    (checkout-punctuation-for-capseq position-before))
   
   ((eq cap-state :lower-case)  ;; "de" 
    (if (and (word-after-lc-word-is-capitalized? position-before)
             (lc-non-boundary-word-that-may-extend-cap-seq?
              (pos-terminal position-before)))
      (break "PNF Scan: lowercase to check out")
      position-before))
   
   (t
    (checkout-continuation-for-non-punctuation
     position-before
     (pos-assessed? position-before)
     cap-state))))




(defun checkout-continuation-for-non-punctuation (position-before
                                                  status
                                                  cap-state)

  (tr :Checkout-continuation-for-non-punctuation position-before)
  (let ((position-after (chart-position-after position-before)))
    (case status
      (:scanned
       (introduce-leading-brackets
        (pos-terminal position-before) position-before))
      (:brackets-from-word-introduced )
      (:preterminals-installed )
      (otherwise (break "assimilate new case for status in ~
                         PNF: ~A" status)))
    
    ;; If the next position is capitalized keep on going, otherwise
    ;; return this next position, as it is the index just after
    ;; the last word thus far that wasn't lowercase.
    
    (let ((bracket (]-on-position-because-of-word?
                    ;; e.g. we just scanned "was"
                    position-before (pos-terminal position-before))))
      
      (if bracket
        (if *pnf-scan-respects-segment-boundaries*
          (boundary-continuation position-before position-after
                                 cap-state)
          (non-boundary-continuation position-before position-after
                                     cap-state bracket))
        (non-boundary-continuation position-before position-after
                                   cap-state bracket)))))




(defun boundary-continuation (position-before position-after cap-state)

  ;; Called from Cap-seq-continues-from-here? when there is a 
  ;; close-bracket on the position before the next word and we're
  ;; supposed to respect it: *pnf-scan-respects-segment-boundaries*
  (tr :Boundary-continuation position-before)

  (if (eq cap-state :punctuation)
    (checkout-punctuation-for-capseq position-before)
    (if (actual-word-introduces-bracket position-before cap-state)
      (then
        (tr :pnf/next-pos-introduces-] position-before)
        (cond ((eq (pos-terminal position-before) *end-of-source*)
               (tr :pnf/stop-at-close-bracket)
               position-before)
              
              ((look-ahead-for-initial position-before)  ;; e.g. "A."
               (tr :pnf/]-ignored-because-of-initial)
               (cap-seq-continues-from-here? position-after))
              
              ((look-ahead-for-abbreviation position-before)
               (cap-seq-continues-from-here? position-after))
              
              ((word-after-lc-word-is-capitalized? position-before)
               (if (lc-word-that-may-extend-cap-seq?
                    (pos-terminal position-before))
                 (then
                   (tr :pnf/caps-after-of position-after)
                   (setq *of-appears-within-PNF-scan* position-before)
                   (cap-seq-continues-from-here?
                    ;; skip over the lc-word since we've already
                    ;; vetted it
                    (chart-position-after position-after)))
                 (else
                   position-before)))
              
              (t
               (tr :pnf/stop-at-close-bracket)
               position-before)))

      (else
        (tr :lc-introduces-]-but-actual-doesnt position-before)
        (;;checkout-continuation-for-non-punctuation
         non-boundary-continuation/bracket-checked
         position-before
         position-after
         cap-state)
        ))))




(defun non-boundary-continuation (position-before position-after
                                  cap-state bracket)
  ;; We got here because the *pnf-scan-respects-segment-boundaries*
  ;; flag is down but there is a bracket on the 'position before'.
  ;; This condition is useful in text-types where we want the names
  ;; to include boundary-introducing words such as prepositions.
  ;;   There is one case that will override the flag however. These
  ;; are the 'extra strong' brackets such as the one introduced by
  ;; multiple empty lines.

  ;; ///called from Cap-seq-continues-from-here? when there is a 
  ;; close-bracket on the position before the next word -but-
  ;; the *pnf-scan-respects-segment-boundaries* is down and
  ;; we're supposed to ignore it. 

  (tr :Non-boundary-continuation position-before)
  (if bracket
    (if (= 0 (rank-of-bracket bracket))
      position-before
      (non-boundary-continuation/bracket-checked
       position-before position-after cap-state))
    (non-boundary-continuation/bracket-checked
       position-before position-after cap-state)))

(defun non-boundary-continuation/bracket-checked
       (position-before position-after cap-state)
  (tr :Non-boundary-continuation/bracket-checked position-before)
  (case cap-state
    (:lower-case
     (tr :pnf/next-pos-is-lowercase position-before)
     position-before)
    (:digits
     (tr :pnf/next-pos-is-digits position-before)
     position-before)
    (:punctuation
     (checkout-punctuation-for-capseq position-before))
    (otherwise
     (tr :pnf/next-pos-is-capitalized-continuing-scan
         position-before)
     (cap-seq-continues-from-here? position-after))))


;;--- local predicate

(defun actual-word-introduces-bracket (position-before cap-state)
  ;; called from Boundary-continuation as a way to check whether
  ;; the boundary is truely relevant given that we're in the middle
  ;; of a capitalized and sometimes the upper and lower case versions
  ;; of a word differ in their boundary properties
  (if (eq cap-state :lower-case)
    ;; e.g. "of", "and"
    t
    (let ((caps-version
           (capitalized-version (pos-terminal position-before)
                                cap-state))
          rs  bs )
      
      (when caps-version
        ;; there sort of has to be a capitalized version of the
        ;; word, otherwise we wouldn't be within PNF, but this
        ;; protects us if the word-interning protocol doesn't
        ;; actually form the caps word.
        (if (setq rs (word-rules caps-version))
          ;; then maybe it introduces a bracket
          (if (setq bs (rs-phrase-boundary rs))
            (ba-ends-before bs)
            nil )
          nil)))))




;;;-------------
;;; punctuation
;;;-------------

(defun checkout-punctuation-for-capseq (position-before)
  ;; the terminal at this position is punctuation of some sort.
  ;; Decide what to do on a case-by-case basis
  (tr :Checkout-punctuation-for-capseq position-before)
  (let ((punct (pos-terminal position-before)))
    (cond
     ((eq punct word::.)
      (if *pnf-scan-ignores-the-possibility-of-initials*
        position-before
        (checkout-period-for-capseq position-before)))
     ((eq punct word::&)
      (checkout-&-for-capseq position-before))
     ((eq punct word::-)
      (checkout-hyphen-for-capseq position-before))
     ((eq punct word::%)
      (checkout-percent-sign-for-capseq position-before))
     ((eq punct *end-of-source*)
      ;; since this is not literal we can't use Case here
      position-before)
     ((eq punct word::/)
      (checkout-forward-slash-for-capseq position-before))
     (t
      position-before))))
#|
     ((eq punct word::\') (checkout-single-quote-for-capseq position-before))
     ((eq punct word::\,) (checkout-comma-for-capseq position-before))
     |#


(defun checkout-period-for-capseq (position)
  ;; there is a period at this position, we want to know whether
  ;; the word just behind this is either an initial or an abbreviation
  ;; (we know it's capitalized), in which case we have an edge formed
  ;; over the two and go on.  We also check whether the letter initiates
  ;; a polyword and if that succeeds, we give it priority

  (let ((position-after-initial-check
         (check-for-initial-before-position position)))

    (if (null position-after-initial-check)
      (then
        (tr :pnf/no-initial)
        (if (check-for-abbreviation-before-position position)
          (then
            (tr :pnf/abbreviation)
            (cap-seq-continues-from-here? (chart-position-after position)))
          (else
            (tr :pnf/no-abbreviation)
            position )))

      (etypecase position-after-initial-check
        (edge
         ;; it found a single-letter and formed an 'initial' edge with it
         (tr :pnf/initial (chart-position-after position))
         (cap-seq-continues-from-here? (chart-position-after position)))
        (position
         ;; a polyword that the letter initiated succeeded
         (tr :pnf/pw position-after-initial-check)
         (cap-seq-continues-from-here? position-after-initial-check))))))


(defun checkout-hyphen-for-capseq (position)
  ;; if the word at the next position is capitalized, and the hyphen
  ;; directly connects them then accept it, otherwise let it through
  ;; since a separated hyphen is often standing in for a dash

  (if (null (pos-preceding-whitespace position))
    (let ((next-position (chart-position-after position)))
      (unless (pos-assessed? next-position)
        (scan-next-position))
      
      (if (and (null (pos-preceding-whitespace next-position))
               (word-at-this-position-is-capitalized? next-position))
        (cap-seq-continues-from-here? next-position)
        position))
    position ))


(defun checkout-forward-slash-for-capseq (position)
  (if (null (pos-preceding-whitespace position))
    (let ((next-position (chart-position-after position)))
      (unless (pos-assessed? next-position)
        ;; all we care about it the whitespace, so it doesn' matter
        ;; precisely what the next-position's status is, just that
        ;; it has been populated
        (scan-next-position))
      (if (and (null (pos-preceding-whitespace next-position))
               (capitalized (pos-terminal next-position)))
        (cap-seq-continues-from-here? next-position)
        position))
    position ))


(defun checkout-&-for-capseq (position-before)
  ;; this may not work in some cases, but we'll just assume that
  ;; there's going to be a capitalized word on the other side and
  ;; go ahead.  /// Need to manufacture a new word (polyword for
  ;; the case where there's no space: "Texas A&M"

  ;; need to see if the next word is capitalized, in which case
  ;; we declare that the sequence extends
  (let* ((next-position (chart-position-after position-before))
         (status (pos-assessed? next-position)))
    (if status
      (ecase status
        (:brackets-from-word-introduced ))
      (scan-next-position))

    (if (capitalized-instance next-position)
      (cap-seq-continues-from-here? next-position)
      position-before)))


(defun checkout-percent-sign-for-capseq (position)
  ;; Percentage signs are the Lisp-internal realization of the
  ;; bullet character (in, e.g., Word) that can appear in the
  ;; names of some companies: "Bose%Allen".
  ;;   This code is a direct copy of the code in hyphen.
  (if (null (pos-preceding-whitespace position))
    (if (null (pos-preceding-whitespace position))
      (let ((next-position (chart-position-after position)))
        (unless (pos-assessed? next-position)
          (scan-next-position))
        (if (and (null (pos-preceding-whitespace next-position))
                 (capitalized (pos-terminal next-position)))
          (cap-seq-continues-from-here? next-position)
          position))
      position )
    position ))


;;----------- not being used -------------
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


;;----------- not being used -------------
(defun checkout-comma-for-capseq (position)
  position )


;;;-------------------
;;; special lookahead
;;;-------------------

(defun word-after-lc-word-is-capitalized? (pos-before)
  ;; Called from Boundary-continuation. There is a lowercase word
  ;; at this position. We look ahead to the word after that
  ;; to check whether it is uppercase, in which case we return t.
  (let* ((next-pos (chart-position-after pos-before)))
    (unless (pos-terminal next-pos)
      (let ((value-returned
             (catch :position-scan-terminates-PNF
               (scan-next-position))))
        (when (eq value-returned :end-the-scan)
          (break "Stub: Lookahead over the lowercase word ~
                  that follows~%a capitalized sequence~
                  has gotten ':end-the-scan' returned ~
                  to it.~%Decide where to go next.~%"))))

    (case (pos-capitalization next-pos)
      (:lower-case nil)
      (:digits nil)
      (:punctuation nil)
      (otherwise t ))))



(defun lc-word-that-may-extend-cap-seq? (word)
  ;; Called from Boundary-continuation
  (or (eq word (word-named "of"))
      (eq word (word-named "and"))))


(defun lc-non-boundary-word-that-may-extend-cap-seq? (word)
  ;; Called from Boundary-continuation
  nil )



;; probably obsolete 4/29/95
(defun caps-after-non-initial-OF (position-before-of)
  ;; called from Boundary-continuation
  (when (position-precedes *PNF-scan-starts-here* position-before-of)
    ;; check that there's at least one word in the name to the left
    ;; of the 'of' so that we don't get this triggered by a sentence-
    ;; initial instance
    (when (eq (pos-terminal position-before-of)
              (word-named "of"))  ;; other cases eventually go here too
      (let ((pos-after (chart-position-after position-before-of)))
        ;; we can be pretty cavalier in this lookahead since we know
        ;; what specific word we're at.
        (unless (pos-assessed? pos-after)
          (scan-next-position))
        (case (pos-capitalization pos-after)
          (:lower-case nil)
          (:digits nil)
          (otherwise t))))))



;;;------------------
;;; bracket checking
;;;------------------

(defun bracket-closing-segment-at (pos-before-next-word)
  ;; Called from Cap-seq-continues-from-here?
  ;; Returns the bracket it finds, if any.
  (let* ((next-word (pos-terminal pos-before-next-word))
         (prior-word (pos-terminal
                      (chart-position-before pos-before-next-word))))

    ;; 1st two cases apply when the word has been scanned and
    ;; the bracket already put in place.   The next one anticipates
    ;; that a bracket would be laid down.
    (or (]-on-position-because-of-word? pos-before-next-word next-word)
        (]-on-position-because-of-word? pos-before-next-word prior-word)
        (closes-ongoing-segment next-word))))

