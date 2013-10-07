;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1996,2012-2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "capitalization"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:  0.3 May 2013

;; initiated 10/90
;; 0.1 (11/23/92 v2.3) Revised slightly to appreciate the case where the
;;      word being defined is a digit-sequence.
;; 0.2 (8/27/93) added routine for picking the variant on a word that
;;      fits the capitalization it has in that instance
;; 0.3 (5/5/94) brought in a variation on that and a subsuming variant routine
;;     (5/10) fixed a missing case in it   (8/7) added Capitalized-instance
;;     (10/20) added the capability of constructing a new word to fit a given
;;       simple capitalization pattern.  (10/24) cleaned up Capitalized
;;     (4/19/95) added Find-or-make/capitalized-word-to-fit-position
;;     (5/18) added Word-at-this-position-is-lowercase?.  ...caps? on 5/19
;;     (12/31) added a case to Subsuming-variant. And again 1/16/96
;;     (3/1/12) quieting compiler. 4/2/13 New cases is subsuming-variant.
;;     (5/24/13) Still more cases there, plus otherwise breaks in place
;;      of the ecase's.

(in-package :sparser)


;;;------------------------------------------------------------------------
;;; adjudicating among variations given the capitalization of the instance
;;;------------------------------------------------------------------------

(defun sort-out-multiple-word-variants (list-of-defined-variations
                                        lower-case-default
                                        capitalization-on-position)

  ;; locus of any interpretations that might get made, e.g. whether
  ;; full caps counts as an instance of a capitalized variation

  (dolist (w list-of-defined-variations)
    (when (eq (word-capitalization w)
              capitalization-on-position)
      (return-from sort-out-multiple-word-variants w)))

  lower-case-default )



(defun capitalized-correspondent (lc-word position)
  ;; given the lowercase word, is the position marked for
  ;; capitalization and does that marking match or is it subsumed
  ;; by a defined capitalized-variant of the word.
  ;;   If the position isn't marked or there are no variants
  ;; then return nil right away.
  (let ((capitalization (pos-capitalization position)))
    (capitalized-version lc-word capitalization)))


(defun capitalized-version (lc-word caps-type)
  ;; does this lowercase word have a variant defined for it, 
  ;; either an exact match or a subsuming equivalent ?
  (let ((variants (word-capitalization-variants lc-word)))
    (when (not (eq caps-type :lower-case))
      (when variants
        (unless (typep variants 'top-lattice-point)
          ;; happened for "seven" as part of checking "on bracket 
          ;; because of word" in "a seven-day deadline"
          (or (find caps-type variants      ;; exact match
                    :key #'word-capitalization)
              (subsuming-variant caps-type variants)))))))


(defun subsuming-variant (actual-state defined-variants)
  ;; returns one of the variants if its capitalization is defined to
  ;; be a reasonable subsumer for what we actually have in this case.
  ;; We know that the actual state isn't lowercase and we've already
  ;; checked for an exact match between the state and a variant.
  (let ( variants-state )
    (when actual-state
      ;; will be nil if the word hasn't been scanned yet,
      ;; which can happen when we dip back down from the foresst

      ;; These states don't have capitalized equivalents
      (unless (or (eq actual-state :punctuation)
                  (eq actual-state :digits))

        (dolist (word defined-variants nil)
          (setq variants-state (word-capitalization word))

          (case variants-state
            
            (:initial-letter-capitalized
             (case actual-state
               (:all-caps (return word))
               (:single-capitalized-letter nil)
               (:mixed-case (return word)) ;; (Knowledge) Factory -> "FACTory"
               (otherwise
                (break "new case for :initial-letter-capitalized: ~a" actual-state))))

            (:mixed-case
             (case actual-state
               ;; (Knowledge) FACTory -> "Factory"
               (:initial-letter-capitalized (return word))
               (:single-capitalized-letter nil)
               (otherwise
                (break "new case for :mixed-case: ~a" actual-state))))

            (:all-caps
             (case actual-state
               (:initial-letter-capitalized nil)
               (:mixed-case (return word))
               (otherwise
                (break "new case for :all-caps ~a" actual-state))))

            (:single-capitalized-letter
             (case actual-state
               (:initial-letter-capitalized (return word))
               (:mixed-case (return word))
               (:all-caps (return word))
               (otherwise
                (break "new case for single cap'd"))))
            
            (otherwise
             (error "New variant-state of capitalization: ~a"
                    variants-state))))))))



;;;-----------------------------------------------------
;;; constructing a word to fit a capitalization pattern
;;;-----------------------------------------------------

(defun make-capitalized-version (lc-word caps-type)
  ;; find or make a varion of this word that fits the indicated 
  ;; capitalization specification.
  (let ((string (word-pname lc-word))
        (appropriate-word (capitalized-version lc-word caps-type)))
    (if appropriate-word
      appropriate-word
      (let ((new-string
             (ecase caps-type
               (:initial-letter-capitalized
                (string-capitalize string))
               (:all-caps
                (string-upcase string)))))
        (define-word new-string)))))



(defun find-or-make/capitalized-word-to-fit-position (lc-word position)
  ;; Called from Make-name-word-for-unknown-word-in-name and the like.
  ;; They know that the instance of the word at this position is capitalized
  ;; and they need the word it corresponds to. If it doesn't already
  ;; exist they want it made.   This is essentially the routine just
  ;; above except that the caller doesn't have to know how to look up
  ;; caps-type of the position. 
  (let ((caps-type (pos-capitalization position)))
    (or (capitalized-version lc-word caps-type)
        (let ((new-string
               (ecase caps-type
                 (:initial-letter-capitalized
                  (string-capitalize (word-pname lc-word)))
                 (:all-caps
                  (string-upcase (word-pname lc-word)))
                 (:mixed-case
                  (get-word-string-from-position lc-word position))

                 (:punctuation (word-pname lc-word))
                 (:digits (word-pname lc-word)))))

          (define-word new-string)))))



(defun get-word-string-from-position (lc-word position)
  (declare (special *length-of-character-input-buffer* *index-of-next-character*
                    *character-buffer-in-use*))
  (let ((length (length (word-pname lc-word)))
        (index (pos-character-index position)))
    (when (>= index *length-of-character-input-buffer*)
      (break "Bad assumption: the substring calculation must ~
              take~%'accumulated characters' into account. ~
              ~%~%You can 'continue' from this break to resume ~
              the analysis,~%but report this event to your ~
              vendor~%")
      (return-from get-word-string-from-position
        (string-capitalize (word-pname lc-word))))
    (when (>= (+ length *index-of-next-character*)
              *length-of-character-input-buffer*)
      (break "Bad assumption: the substring calculation must ~
              take~%'boundary transitions' into account. ~
              ~%~%You can 'continue' from this break to resume ~
              the analysis,~%but report this event to your ~
              vendor~%")
      (return-from get-word-string-from-position
        (string-capitalize (word-pname lc-word))))

    (subseq *character-buffer-in-use* index (+ index length))))
      


;;;-------------
;;; predicates
;;;-------------

(defun word-at-this-position-is-lowercase? (position)
  (eq (pos-capitalization position) :lower-case))

(defun word-at-this-position-is-capitalized? (position)
  (unless (eq (pos-capitalization position) :lower-case)
    (unless (eq (pos-capitalization position) :digits)
      (unless (eq (pos-capitalization position) :punctuation)
        t ))))


(defun capitalized-instance (position)
  (let ((keyword (pos-capitalization position)))
    (ecase keyword
      (:lower-case nil)
      (:initial-letter-capitalized t)
      (:digits nil)
      (:single-capitalized-letter t)
      (:all-caps t)
      (:punctuation nil)
      (:mixed-case t))))


(defun capitalized (word)
  "A predicate testing whether the word is capitalized in any way,
   i.e. first letter, all upper case, or mixed case."
  (when (typep word 'word)
    (let ((capitalization-field
           (word-capitalization word)))
      (when capitalization-field
        (unless (eq capitalization-field :lower-case)
          (unless (eq capitalization-field :digits)
            (unless (eq capitalization-field :punctuation)
              capitalization-field)))))))


(defun word-has-capitalized-first-letter (word)
  (eq (word-capitalization word) :initial-letter-capitalized))

(defun word-consists-of-only-capital-letters (word)
  (eq (word-capitalization word) :all-caps))

(defun word-consists-of-upper-and-lower-case-letters (word)
  (eq (word-capitalization word) :mixed-case))


;;;------------------
;;; state variables
;;;------------------

(defparameter *lower-case* nil)
(defparameter *mixed-case* nil)
(defparameter *digits* nil)
(defparameter *all-characters-are-capitalized* nil)
(defparameter *first-letter-is-capitalized* nil)
(defparameter *one-capitalized-letter* nil)
(defparameter *only-the-first-letter-is-capitalized* nil)
(defparameter *all-characters-so-far-are-capitalized* nil)
(defparameter *some-characters-after-the-first-are-capitalized* nil)
(defparameter *some-characters-other-than-the-first-are-capitalized* nil)

(defun initialize-state-of-capitalization-FSA ()
  (setq *lower-case* nil
        *mixed-case* nil
        *digits* nil
        *all-characters-are-capitalized* nil
        *first-letter-is-capitalized* nil
        *one-capitalized-letter* nil
        *only-the-first-letter-is-capitalized* nil
        *all-characters-so-far-are-capitalized* nil
        *some-characters-after-the-first-are-capitalized* nil
        *some-characters-other-than-the-first-are-capitalized* nil))


;;;------------------------------------------------
;;; canonical description of the fsa's final state
;;;------------------------------------------------

(defun reify-state-of-capitalization-FSA ()
  ;; n.b. the set of keywords used here has to match the set used
  ;; in cleanup-call-to-caps-fsa
  (cond (*lower-case* :lower-case)
        (*digits* :digits)
        (*one-capitalized-letter* :single-capitalized-letter)
        (*only-the-first-letter-is-capitalized* :initial-letter-capitalized)
        (*all-characters-are-capitalized* :all-caps)
        (*mixed-case* :mixed-case)
        (t (error "illegal final state for Capitalization FSA"))))


;;;----------
;;; the FSA
;;;----------

(defun start-capitalization-FSA/word-buffer ()
  (let ((length-of-word (fill-pointer *word-lookup-buffer*))
        (c1 (char/wb 0)))
    (if (capital-letter c1)
      (then
        (setq *first-letter-is-capitalized* t)
        (is-the-second-letter-capitalized 1 (1- length-of-word)))
      (if (digit-character c1)
        (setq *digits* t)
        (else
          (are-any-letters-capitalized 1 (1- length-of-word)))))))


(defun is-the-second-letter-capitalized (char-index characters-remaining)
  (if (= 0 characters-remaining)
    (then (setq *one-capitalized-letter* t))
    (else
      (setq *one-capitalized-letter* nil)
      (if (capital-letter (char/wb char-index))
        (then
          (setq *all-characters-so-far-are-capitalized* t)
          (setq *some-characters-after-the-first-are-capitalized* t)
          (are-the-rest-capitalized (1+ char-index)
                                    (1- characters-remaining)))
        (else
          (setq *all-characters-so-far-are-capitalized* nil)
          (are-the-rest-capitalized (1+ char-index)
                                    (1- characters-remaining)))))))


(defun are-the-rest-capitalized (char-index characters-remaining)
  (if (= 0 characters-remaining)
    (then (if *all-characters-so-far-are-capitalized*
            (setq *all-characters-are-capitalized* t)
            (if *some-characters-after-the-first-are-capitalized*
              (setq *mixed-case* t
                    *only-the-first-letter-is-capitalized* nil)
              (setq *only-the-first-letter-is-capitalized* t))))
    (else
      (if (capital-letter (char/wb char-index))
        (then
          (unless  *all-characters-so-far-are-capitalized*
            (setq *some-characters-after-the-first-are-capitalized* t))
          (are-the-rest-capitalized (1+ char-index)
                                    (1- characters-remaining)))
        (else
          (setq *all-characters-so-far-are-capitalized* nil)
          (are-the-rest-capitalized (1+ char-index)
                                    (1- characters-remaining)))))))


(defun are-any-letters-capitalized (char-index characters-remaining)
  (if (= 0 characters-remaining)
    (then (if *some-characters-other-than-the-first-are-capitalized*
            (setq *mixed-case* t)
            (setq *lower-case* t)))
    (else
      (if (capital-letter (char/wb char-index))
        (then
          (setq *some-characters-other-than-the-first-are-capitalized* t)
          (are-any-letters-capitalized (1+ char-index)
                                       (1- characters-remaining)))
        (else
          (are-any-letters-capitalized (1+ char-index)
                                       (1- characters-remaining)))))))


;;;--------------
;;;  subroutines
;;;--------------

(defun capital-letter (char)
  (let ((n (char-code char)))
    (if (>= n ascii-for-capital-A)
      (if (<= n ascii-for-capital-Z)
        t
        nil)
      nil)))


(defun digit-character (c)
  (let ((ascii-value (char-code c)))
    (and (>= ascii-value ascii-for-zero)
         (<= ascii-value ascii-for-nine)))) 


(defun lowercase-equivalent-letter (uppercase-letter)
  ;; Does it with arithmetic and char-code lookups.  An indexed 
  ;; lookup might be quicker since it's a small number of cases.
  (let* ((upper-number (char-code uppercase-letter))
         (lower-number (+ 32 upper-number))
         (lowercase-letter (code-char lower-number)))
    lowercase-letter))

