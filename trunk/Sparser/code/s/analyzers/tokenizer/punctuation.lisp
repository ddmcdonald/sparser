;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1993,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "punctuation"
;;;   Module:  "tokenizer;"
;;;  Version:  0.3 June 2014

;; initated 9/28/92 v2.3
;; 0.1 (11/2) changed the value of the capitalization global in the case
;;      of spaces as a signal to Write-current-token-to-article-stream
;; 0.2 (4/7/93) Fixed a glitch, pulled references to word package, installed
;;      *break-on-meaningless-characters* flag.
;; 0.3 (6/12/14) accumulate-spaces wasn't updated when we started using
;;      selected characters in UTF-8

(in-package :sparser)


(unless (boundp '*break-on-meaningless-characters*)
  (defparameter *break-on-meaningless-characters* t
    "A flag that controls whether the tokenizer reacts to seeing 
     a meaningless character in its input by entering a break loop 
     or by just printing a warning to *standard-output*."))


(defun do-punctuation (entry)
  ;; called from run-token-fsa when the encapsulating keyword
  ;; indicates that the character is non-alphabetic and non-numeric.
  ;; At this point the encapsulation has been stripped off, and
  ;; the entry is either a word, in which case it is returned,
  ;; or it's a symbol, in which case it's either a word, which
  ;; should be accumulated since spaces can occur in sequences, or
  ;; it's one of the special markers, or it's meaningless and
  ;; ignored.
  (declare (special *source-exhausted*))

  (setq *capitalization-of-current-token* :punctuation)
  (setq *length-of-the-token* 1)

  (if (symbolp entry)
    (ecase entry
      (:space
       (setq *capitalization-of-current-token* :spaces)
       (accumulate-spaces 1))
      (:end-of-buffer
       (refill-character-buffer *character-buffer-in-use*)
       ;; if we had to worry about continuing a token, we'd
       ;; be inside the other call.
       (run-token-fsa))
      (:source-start
       *source-start* )
      (:end-of-source
       (setq *source-exhausted* *index-of-next-character*)
       *end-of-source* )
      (:meaningless
       (if *break-on-meaningless-characters*
         (break "Undefined control character number ~A seen in input ~
                 string" (char-code
                          (elt *character-buffer-in-use*
                               (1- *index-of-next-character*))))
         (format *standard-output*
                 "~&~%Undefined control character number ~A seen in ~
                  input string"
                 (char-code (elt *character-buffer-in-use*
                                 (1- *index-of-next-character*)))))))
    entry ))



(defun do-punctuation-from-continue (whole-entry
                                     accumulated-entries
                                     length
                                     char-type)

  ;; We're in the midst of continuing a sequence of characters.
  ;; If this 'punctuation' is actually just the buffer transition
  ;; character then we want the accumulation to never notice.
  (setq *capitalization-of-current-token* :punctuation)
  (setq *length-of-the-token* 1)
  (if (eq (cdr whole-entry) :end-of-buffer)
    (then
      (refill-character-buffer *character-buffer-in-use*)
      (continue-token accumulated-entries length char-type))
    (else
      (setq *pending-entry* whole-entry)
      (finish-token accumulated-entries length char-type))))


;;;-------------
;;; subroutines
;;;-------------

(defun accumulate-spaces (number-of-spaces-so-far)
  (let ((next-entry
         (character-entry 
          (elt *character-buffer-in-use*
               (incf *index-of-next-character*)))))
    (unless next-entry
      (announce-out-of-range-character))

    (if (eq (car next-entry) :punctuation)
      (if (eq (cdr next-entry) :space)
        (then
          ;; if there's two, there may well be more
          (accumulate-spaces (1+ number-of-spaces-so-far)))

        (else
          ;; the punctuation following the space or sequence
          ;; of spaces wasn't itself a space, so the sequence
          ;; is finished.
          (setq *pending-entry* next-entry)
          (setq *length-of-the-token* number-of-spaces-so-far)
          (case number-of-spaces-so-far
            (1 *one-space* )
            (2 (number-of-spaces-named 2))
            (3 (number-of-spaces-named 3))
            (4 (number-of-spaces-named 4))
            (5 (number-of-spaces-named 5))
            (6 (number-of-spaces-named 6))
            (7 (number-of-spaces-named 7))
            (8 (number-of-spaces-named 8))
            (9 (number-of-spaces-named 9))
            (10 (number-of-spaces-named 10))
            (11 (number-of-spaces-named 11))
            (12 (number-of-spaces-named 12))
            (13 (number-of-spaces-named 13))
            (14 (number-of-spaces-named 14))
            (15 (number-of-spaces-named 15))
            (16 (number-of-spaces-named 16))
            (otherwise
             (define-lots-of-spaces number-of-spaces-so-far)))))

      (else
        ;; this is the most common case -- one space between
        ;; non-punctuation tokens
        (setq *pending-entry* next-entry)
        (setq *length-of-the-token* number-of-spaces-so-far)
        (case number-of-spaces-so-far
          (1 *one-space* )
          (2 (number-of-spaces-named 2))
          (3 (number-of-spaces-named 3))
          (4 (number-of-spaces-named 4))
          (5 (number-of-spaces-named 5))
          (6 (number-of-spaces-named 6))
          (7 (number-of-spaces-named 7))
          (8 (number-of-spaces-named 8))
          (9 (number-of-spaces-named 9))
          (10 (number-of-spaces-named 10))
          (11 (number-of-spaces-named 11))
          (12 (number-of-spaces-named 12))
          (13 (number-of-spaces-named 13))
          (14 (number-of-spaces-named 14))
          (15 (number-of-spaces-named 15))
          (16 (number-of-spaces-named 16))
          (otherwise
           (define-lots-of-spaces number-of-spaces-so-far)))))))

