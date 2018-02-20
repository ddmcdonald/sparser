;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2013-2018  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "words"
;;;   Module:  "analyzers;FSA:"
;;;  Version:  February 2018

;; 5/5/93 v2.3, typed in hard copy of 11/24/92 that had been lost in
;;  disk crash
;; 1.1 (5/15) moved out the default to Consider-capitalization
;;     (8/17) fixed bug of unguarded return value
;; 2.0 (12/7) reworked the threading so that known marked-capitalization case
;;      would get priority. 12/13 cont. to allow entry-points that don't consider
;;      unknown words.  12/29 added traces.
;; 2.1 (1/25/94) presumption that the existence of a caps variant ipso facto
;;      meant it was known proved false.
;; 2.2 (2/26) fixed a presumption about the existence of an rs when the call
;;      started in PFWPNF.
;;     (4/4) fixed a missing path in that entry point whereby it was ignoring
;;      capitalized variants, and wrote Subsuming-variant
;;     (5/5) moved subsuming-variant to [words;lookup:capitalization] and
;;      put in sugared call to set position status
;;     (8/9/95) put nil check on rs into Check-known-word-for-word-fsas
;;     (2/4/07) added push-fsa-onto-word. (2/8/13) Fixed non-standard status set.
;; 2.3 (2/11/13) Added initiates-polyword so the polyword case can be done
;;      directly from the scan fsa. Didn't change anything here, since if the
;;      polyword is found we'll never look for it at that position with
;;      this code. (2/15/13) Fixed the polyword lookup to appreciate the option
;;      of the rule being on a capitalized variant of the word.
;; 2.4 (10/22/14) Added initiates-polyword1 which differs only in that it
;;      calls capitalized-correspondent1, which gets the choice of position
;;      correct. Start of changing it all over.
;; 3.0 (5/20/15) Makeover of polywords to fsa rather than rules and edges.
;;     (7/28/15) removed pw options from do-fsa-field.
;;     (11/30/15) initiates-polyword needed allow an nil FSA field.

(in-package :sparser)

;;;------------------
;;; initial dispatch
;;;------------------

(defun do-word-level-fsas (word position-before)
  "Standard entry point, e.g. for scan-terminals-loop or scan. 
   Looks for an FSA associated with the word and runs it if
   if finds one and if it succeeds returns the position that
   it reached, otherwise nil.
   The position argument is used for the case where the
   FSA is associated with a capitalized variant of the word
   rather than the lowercase word that is passed in."
  (set-status :word-fsas-done position-before)
  (tr :considering-word-level-fsas word position-before)

  (if (eq word *the-unknown-word*)
      (then (tr :wfsa/unknown-word word position-before)
            nil)
      (when word ;; null word happens in "PMC2171479.3.C.p1"
        (let ((rs (word-rules word)))
          (if rs
              (search-word-for-fsas word rs position-before)
        
              (let ((capitalization (pos-capitalization position-before)))
                ;; So far we've been working with the canonical (lowercase)
                ;; version of the word. If this instance isn't lowercase then
                ;; there might be a rule set with one of the variations
                ;; and we should check for a match
                (if (not (eq :lower-case capitalization))
                    (then
                      (tr :wfsa/marked-capitalization)
                      (if (word-capitalization-variants word)
                          (check-variants-for-word-fsas word position-before)
                          (dispatch-off-capitalization-data capitalization
                                                            word
                                                            position-before)))
                    (else
                      (tr :wfsa/no-routine word position-before)
                      nil ))))))))



;;----- alternative entry point

(defun do-word-fsas/only-known (word position)
  "Same set of dispatches as do-word-level-fsa, but only known words 
   are considered."
  (set-status :word-fsas-done position)
  (unless (eq word *the-unknown-word*)
    (let ((rs (word-rules word)))
      (if rs
        (search-known-word-for-fsas word rs position)
        (when (and (not (eq :lower-case (pos-capitalization position)))
                   (word-capitalization-variants word))
          (check-known-variants-for-fsas word position))))))



;;;-----------------------
;;; examine the FSA field
;;;-----------------------

(defun search-word-for-fsas (lc-word rs position)
  "It's a known word, but we should check whether it came in with
   marked capitalization and that case of the word is also known and
   so might trigger an fsa. If it is known, but it doesn't do an fsa,
   check the lowercase version as a default."

  (if (not (eq :lower-case (pos-capitalization position)))
    ;; This instance has marked case
    (if (word-capitalization-variants lc-word)
      (let ((pos-reached
             (check-variants-for-word-fsas lc-word position)))
        (if pos-reached
          pos-reached
          (else
            ;; the variant didn't have a successful fsa, so try the
            ;; lc as a default
            (check-known-word-for-word-fsas lc-word rs position))))

      ;; there's no marked variant, so check the lc as a default
      (check-known-word-for-word-fsas lc-word rs position))
           
    (else
      ;; This instance is lower-case, does the word trigger an fsa?
      (check-known-word-for-word-fsas lc-word rs position))))


(defun search-known-word-for-fsas (lc-word rs position)
  "Just like the version above, except that it doesn't call check-
   variants because that has a default for unknown words."
  
  (if (not (eq :lower-case (pos-capitalization position)))
    ;; This instance has marked case
    (if (word-capitalization-variants lc-word)
      (let ((pos-reached
             (check-known-variants-for-fsas lc-word position)))
        (if pos-reached
          pos-reached
          (else
            ;; the variant didn't have a successful fsa, so try the
            ;; lc as a default
            (check-known-word-for-word-fsas lc-word rs position))))

      ;; there's no marked variant, so check the lc as a default
      (check-known-word-for-word-fsas lc-word rs position))
           
    (else
      ;; This instance is lower-case, does the word trigger an fsa?
      (check-known-word-for-word-fsas lc-word rs position))))



;;---- core check

(defun check-known-word-for-word-fsas (word rs position)
  "Called when we're sure that we have the relevant word. 
   Prior routines are responsible for thinking about capitalization.
   Accesses the fsa field, executes the fsa it finds and returns
   the position it reaches, or else nil."
  (when rs
    (let ((word-fsa-field (rs-fsa rs)))
      (if word-fsa-field
        (let ((position-reached
               (do-fsa-field word-fsa-field word position)))
          (if position-reached
            position-reached
            (else
              ;; the word had an fsa, but it didn't succeed
              nil )))
        (else
          ;; no fsa field
          (tr :wfsa/no-routine word position)
          nil )))))


;;;---------------------
;;; non-lowercase words
;;;---------------------

(defun check-variants-for-word-fsas (lc-word position)
  "We know there are variants defined or we wouldn't have gotten here.
   The question is whether the word that matches the current situation
   will trigger an fsa."
  (let ((variants (word-capitalization-variants lc-word))
        (actual-state (pos-capitalization position)))
    (tr :wfsa/actual-state actual-state)
    (let ((relevant-variant
           (find actual-state variants :key #'word-capitalization)))
      (if relevant-variant
        (then
          ;;/// change this: (tr :wfsa/variant-has-rules variants)
          (if (word-rules relevant-variant)
            (check-known-word-for-word-fsas
             relevant-variant (word-rules relevant-variant) position)
            (else
              ;; //trace - variant, but unknown
              (dispatch-off-capitalization-data
               actual-state relevant-variant position))))

        (let ((subsumer (subsuming-variant actual-state variants lc-word)))
          (if subsumer
            (check-known-word-for-word-fsas 
             subsumer (word-rules subsumer) position)
            (else
              (tr :wfsa/no-variants)
              (dispatch-off-capitalization-data
               actual-state lc-word position))))))))


(defun check-known-variants-for-fsas (lc-word position)
  "Same routine as Check-variants-for-word-fsas, but no escape
   to the capitalization-data dispatch if the corresponding
   variant isn't known."
  (let ((variants (word-capitalization-variants lc-word))
        (actual-state (pos-capitalization position)))
    (let ((word-with-rules
           (find actual-state variants :key #'word-capitalization)))
      (if word-with-rules
        (let ((rs (word-rules word-with-rules)))
          (when rs
            ;; a word can get here from a call that starts in
            ;; PFWPNF because the lowercase word does have
            ;; a capitalized variant.
            (check-known-word-for-word-fsas word-with-rules
                                            rs
                                            position)))
        (let ((subsumer (subsuming-variant actual-state variants lc-word)))
          (when subsumer ;; it's known by definition
            (check-known-word-for-word-fsas 
             subsumer (word-rules subsumer) position)))))))


;;;-------------------------------------------------------
;;; Pulling out the polyword start state if there is one
;;;-------------------------------------------------------

(defun includes-pw-start-state (fsa-field)
  (typecase fsa-field
    (polyword-state ;;/// no evidence of these singletons 1/17/17
     fsa-field)
    (cons
     (loop for item in fsa-field
        when (typep item 'polyword-state)
        return item))))

(defun starts-polyword (word)
  "Called from polyword-check and like-minded functions.
   Returns the polyword-state if there is one"
  (let ((rule-set (word-rules word)))
    (when rule-set
      (let ((fsa-field (rs-fsa rule-set)))
        (when fsa-field
          (includes-pw-start-state fsa-field))))))

(defun initiates-polyword (word position-before)
  "Used by check-for-polywords in the 'scan' protocol.
   Returns a polyword state if there is one."
  (flet ((polyword-fsa (rules-field)
           (when rules-field
             (let ((fsa-field (rs-fsa rules-field)))
               (when fsa-field
                 (includes-pw-start-state fsa-field))))))
    (let ((rules-field (word-rules word)))
      (or (polyword-fsa rules-field)
          (let ((caps-word (capitalized-correspondent position-before word)))
            (when caps-word
              (let ((caps-rules-field (word-rules caps-word)))
                (polyword-fsa caps-rules-field))))))))


(defun starts-occasional-polyword (word)
  "Polywords can be defined to be 'occasional' -- set aside for running
   only in specific circumstances such as identifying the epistimological
   status of passages in a document."
  (get-tag :occasional-polyword word))


(defun push-polyword-state-onto-word (word state)
  "Add a polyword initial state to the word"
  (push-item-onto-fsa-field word state))


;;;-------------------------
;;; driving the actual FSAs
;;;-------------------------

(defun do-fsa-field (fsa-field word position)
  "FSAs are differentiated from polywords, and checked for
   independently."
  (let ( fsa  position-reached )
    ;;(tr :wfsa/options word position fsa-field)

    (if (null (cdr fsa-field))
      (then ;; there's only one
        (setq fsa (car fsa-field))
        (unless (typep fsa 'polyword-state)
          (setq position-reached
                (funcall fsa word position))

          (if position-reached
            (tr :wfsa/succeeded/1 position-reached)
            (tr :wfsa/failed/1))

          position-reached ))

      (else
        ;; Execute the fsas in the order they were
        ;; defined. Note that polywords have already
        ;; run at this point. 
        (let ( fsas )
          (dolist (item fsa-field)
            (unless (typep item 'polyword-state)
              (push item fsas)))

          (when fsas
            (dolist (fsa fsas)
              (setq position-reached
                    (funcall fsa word position))
              (when position-reached
                (return-from do-fsa-field position-reached)))))))))
