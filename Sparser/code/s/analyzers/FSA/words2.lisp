;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: words2.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;; 
;;;     File:  "words"
;;;   Module:  "analyzers;FSA:"
;;;  Version:  2.2 February 2013

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

(in-package :sparser)

;;;------------------
;;; initial dispatch
;;;------------------

(defun do-word-level-fsas (word position)
  ;; called from the psp drivers
  (set-status :word-fsas-done position)
  (tr :considering-word-level-fsas word position)

  (if (eq word *the-unknown-word*)
    (then (tr :wfsa/unknown-word word position)
          nil)

    (let ((rs (word-rules word)))
      (if rs
        (search-word-for-fsas word rs position)
        
        (let ((capitalization (pos-capitalization position)))
        ;; So far we've been working with the canonical (lowercase)
        ;; version of the word. If this instance isn't lowercase then
        ;; there might be a rule set with one of the variations
        ;; and we should check for a match
          (if (not (eq :lower-case capitalization))
            (then
              (tr :wfsa/marked-capitalization)
              (if (word-capitalization-variants word)
                (check-variants-for-word-fsas word position)
                (dispatch-off-capitalization-data capitalization
                                                  word
                                                  position)))
            (else
              (tr :wfsa/no-routine word position)
              nil )))))))



;;----- alternative entry point

(defun do-word-fsas/only-known (word position)
  ;; same set of dispatches, but only known words will be considered.
  ;; Called from PFWPNF
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
  ;; it's a known word, but we should check whether it came in with
  ;; marked capitalization and that case of the word is also known and
  ;; so might trigger an fsa. If it is known, but it doesn't do an fsa,
  ;; check the lowercase version as a default.

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
  ;; just like the version above, except that it doesn't call check-
  ;; variants because that has a default for unknown words.

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
  ;; called when we're sure that we have the relevant word. 
  ;; Prior routines are responsible for thinking about capitalization
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
  ;; we know there are variants defined or we wouldn't have gotten here.
  ;; The question is whether the word that matches the current situation
  ;; will trigger an fsa
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

        (let ((subsumer (subsuming-variant actual-state variants)))
          (if subsumer
            (check-known-word-for-word-fsas 
             subsumer (word-rules subsumer) position)
            (else
              (tr :wfsa/no-variants)
              (dispatch-off-capitalization-data
               actual-state lc-word position))))))))


(defun check-known-variants-for-fsas (lc-word position)
  ;; same routine as Check-variants-for-word-fsas, but no escape
  ;; to the capitalization-data dispatch if the corresponding
  ;; variant isn't known
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
        (let ((subsumer (subsuming-variant actual-state variants)))
          (when subsumer ;; it's known by definition
            (check-known-word-for-word-fsas 
             subsumer (word-rules subsumer) position)))))))


;;--- Picking out the polyword cfr if there is one

(defun initiates-polyword (word position-before)
  ;; Returns the rule that marks the polyword
  (flet ((polyword-rule (rules-field)
           (when rules-field
             (let ((fsa-field (rs-fsa rules-field)))
               (loop for item in fsa-field
                 when (typep item 'cfr)
                 return item)))))
    (let ((rules-field (word-rules word)))
      (or (polyword-rule rules-field)
          (let ((caps-word (capitalized-correspondent word position-before)))
            (when caps-word
              (let ((caps-rules-field (word-rules caps-word)))
                (polyword-rule caps-rules-field))))))))


;;;-------------------------
;;; driving the actual FSAs
;;;-------------------------

(defun do-fsa-field (fsa-field word position)
  (let ( fsa  position-reached )
    (tr :wfsa/options word position fsa-field)

    (if (null (cdr fsa-field))
      (then ;; there's only one
        (setq fsa (car fsa-field))
        (setq position-reached
              (if (typep fsa 'cfr)
                (do-polyword-fsa word fsa position)
                (funcall fsa word position)))

        (if position-reached
          (tr :wfsa/succeeded/1 position-reached)
          (tr :wfsa/failed/1))

        position-reached )

      (else
        ;; Since there's more than one we have to impose an order.
        ;; Polywords get first crack, and they pre-empt any other
        ;; possibilities.  The others are attempted in the order they
        ;; were defined in, which is the reverse of their order in 
        ;; the field
        (let ( fsas  polyword-fsa )
          (dolist (item fsa-field)
            (if (typep item 'cfr)
              (setq polyword-fsa item)
              (push item fsas)))

          (when polyword-fsa
            (setq position-reached
                  (do-polyword-fsa word polyword-fsa position))
            (when position-reached
              (return-from do-fsa-field position-reached)))

          (when fsas
            (dolist (fsa fsas)
              (setq position-reached
                    (funcall fsa word position))
              (when position-reached
                (return-from do-fsa-field position-reached)))))))))

;;;-------------------------------------------------------------------
;;; standard form for adding an FSA to the front of a word's rule-set
;;;-------------------------------------------------------------------
;;  What would be a better place for this?

(defun push-fsa-onto-word (word fn-name)
  (unless (and word
	       (word-p word))
    (break "~a is not a word" word))
  (let ((rs (word-rules word)))
    (unless rs
      (setq rs (make-rule-set :backpointer word))
      (setf (word-rule-set word) rs))
    (setf (rs-fsa rs)
	  (cons fn-name (rs-fsa rs)))
    rs))


