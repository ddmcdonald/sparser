;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1996,2012-2022 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "capitalization"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:  January 2022

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
;; 0.4 (11/7/13) Fixed bad assumption about what position the capitalization 
;;      was on  when source is ] after. (6/3/14) fixed case in capitalized-correspondent
;;      where the 'word' was actually a category.
;; 0.5 (10/22/14) Added capitalized-correspondent1, which gets the choice of 
;;       position correct. Start of changing it all over, see list of references
;;       next to the function.

(in-package :sparser)


;;;------------------------------------------------------------------------
;;; adjudicating among variations given the capitalization of the instance
;;;------------------------------------------------------------------------

(defun capitalized-correspondent (position-before lc-word)
  "Given the lowercase word, is this position marked for
   capitalization and does that marking match or is it subsumed by
    a defined capitalized-variant of the word.
       If the position isn't marked or there are no variants
    then return nil right away."
  (unless (category-p lc-word) ;; When the call comes from
    ;; [-on-position-because-of-word? looking for brackets
    ;; associated with the form label, capitalization is irrelevant
    (let ((capitalization (pos-capitalization position-before)))
      (capitalized-version lc-word capitalization))))



(defun capitalized-version (lc-word caps-type)
  "We're trying to establish the grammatical properties 
 of lc-word -- does it introduce initial edges, does it extend
 a polyword. The caller could not find what it wanted on the
 rule-set of the lowercase word it has in its hand (lc-word)
 so it wants to know if a capitalization-variant of this
 word exists. If there are one or more variants and they
 are consistent with the actual observed case (caps-type, stored
 on the same position object as the word is), then return it."
  (let ((variants (word-capitalization-variants lc-word)))
    (when (not (eq caps-type :lower-case))
      (when variants
        (or (find caps-type variants  ;; exact match
                  :key #'word-capitalization)
            (subsuming-variant caps-type variants lc-word))))))


(defun subsuming-variant (actual-state defined-variants lc-word)
  "Returns one of the defined variants if the capitalization on the
 variant is defined by this function to be a reasonable subsumer for 
 the observed capitalizaton (actual-state).
   When this is called we know that the actual state isn't lowercase 
 and we've already checked whether there was an exact match between 
 the actual state and one of the variants. The situation is more 
 complicated when the 'variant' is lowercase, see note there.
   We loop over the variants and return the first one that the
 nexted case statements say is valid. We dispatch first on the
 capitalization state of the variant (variants-state) and then
 over the actual observed capitalization in this instance."
  (let ( variants-state )
    (when actual-state
      ;; will be nil if the word hasn't been scanned yet,
      ;; which can happen when we dip back down from the foresst

      ;; These states don't have capitalized equivalents
      (unless (or (eq actual-state :punctuation)
                  (eq actual-state :digits))

        (dolist (variant defined-variants nil)
          (setq variants-state (word-capitalization variant))

          (case variants-state
            
            (:initial-letter-capitalized
             (case actual-state
               (:all-caps (return variant))
               (:single-capitalized-letter nil)
               (:mixed-case (return variant)) ;; (Knowledge) Factory -> "FACTory"
               (otherwise
                (warn "For ~s: new case for :initial-letter-capitalized: ~a"
                       (word-pname lc-word) actual-state))))

            (:mixed-case
             (case actual-state
               ;; (Knowledge) FACTory -> "Factory"
               (:initial-letter-capitalized (return variant))
               (:single-capitalized-letter nil)
               (:all-caps (return variant)) ;; "SKMEL" -> "SkMei"
               (otherwise
                (warn "For ~s: new case for :mixed-case: ~a"
                       (word-pname lc-word) actual-state))))

            (:all-caps
             (case actual-state
               (:initial-letter-capitalized nil)
               (:mixed-case (return variant))
               (:single-capitalized-letter (return variant))
               (otherwise
                (warn "For ~s: new case for :all-caps ~a"
                       (word-pname lc-word) actual-state))))

            (:single-capitalized-letter
             (case actual-state
               (:initial-letter-capitalized (return variant))
               (:mixed-case (return variant))
               (:all-caps (return variant))
               (otherwise
                (warn "For ~s: new case for single capitalized letter"
                       (word-pname lc-word)))))

            (:lower-case ;; CRAF from craf in Dec#2
             ;; We automatically make lowercase versions when words
             ;; are defined with an upper or mixed case pname. As a
             ;; result the variants in this case are in lowercase,
             ;; and the word that was passed in (lc-word) may be
             ;; the one we want.
             (flet ((good-rs (word)
                      (let ((rs (rule-set-for word)))
                        (or (rs-single-term-rewrites rs)
                            (rs-fsa rs)))))
               (cond
                 ((eq (word-capitalization lc-word) actual-state)
                  (when (good-rs lc-word)
                    (return lc-word)))
                 (t (when (good-rs variant)
                      (return variant))))))             
            
            (otherwise
             (warn "For ~s: New variant-state of capitalization: ~a"
                    (word-pname lc-word) variants-state))))))))



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
  ;; exist they want it made. This is essentially the routine just
  ;; above except that the caller doesn't have to know how to look up
  ;; caps-type of the position.
  (declare (special *pnf-has-control*))
  (let ((caps-type (pos-capitalization position)))
    (or (capitalized-version lc-word caps-type)
        (let ((new-string
               (ecase caps-type
                 (:initial-letter-capitalized
                  (string-capitalize (word-pname lc-word)))
                 (:single-capitalized-letter
                  (word-pname lc-word))
                 (:all-caps
                  (string-upcase (word-pname lc-word)))
                 (:mixed-case
                  (get-word-string-from-position lc-word position))
                 (:lower-case
                  (if *pnf-has-control*
                    (warn-or-error "new lower-case word in PNF: ~a" lc-word)
                    (warn-or-error "lowercase in unknown situation: ~a" lc-word)))
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
    (let ((capitalization-field (word-capitalization word)))
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

(defgeneric all-caps? (word)
  (:documentation "Is this word (or string) consist of just capitalized
    letters?")
  (:method ((pname string))
    (populate-word-lookup-buffer/string pname)
    (let ((result (calculate-capitalization-of-word/in-buffer)))
      (eq result :all-caps)))
  (:method ((w word))
    (eq :all-caps (word-capitalization w))))


(defun capitalized? (string)
  (and (upper-case-p (char string 0))
       (every #'lower-case-p (subseq string 1))))


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
      (if (digit-char-p c1)
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
  (<= (char-code #\A) (char-code char) (char-code #\Z)))

(defun lowercase-equivalent-letter (uppercase-letter)
  ;; Does it with arithmetic and char-code lookups.  An indexed 
  ;; lookup might be quicker since it's a small number of cases.
  (let* ((upper-number (char-code uppercase-letter))
         (lower-number (+ 32 upper-number))
         (lowercase-letter (code-char lower-number)))
    lowercase-letter))

