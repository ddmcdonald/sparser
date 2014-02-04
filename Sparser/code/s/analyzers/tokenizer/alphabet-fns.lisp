;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "alphabet fns"
;;;   Module:  "analyzers;tokenizer:"
;;;  Version:  0.2 February 2014

;; initiated 9/21/92 v2.3
;; (4/20/93) added Set-tokenizer-table-entry
;; (8/20) finished it.
;; 0.1 (12/2) Removed the range checks from the set function as meaningless
;;      and fixed a bug
;;     (6/9/94) added character-type predicates.
;; 0.2 (5/31/96) Increased the size of the array to 256.
;;     (2/3/13) added doc that its value is burned in.

(in-package :sparser)


;;;-----------
;;; the array
;;;-----------

(defparameter *character-dispatch-array* (make-array 256)
  "This is essentially ascii plus the second 128 character block
   of UTF-8, where a lot of Latin-1 lives.
   NOTE -- this number is burned into the code of continue-token 
   because we don't want to further burden the inner-most of
   inner loops.")




;;;----------------------------
;;; access function (off-line)
;;;----------------------------

(defun tokenizer-entry (character)
  (unless (characterp character)
    (error "Argument has to be a character. ~%~A is a ~A"
           character (type-of character)))

  ;; n.b. this is open-coded in Run-token-fsa
  (elt *character-dispatch-array*
       (char-code character)))


;;;------------
;;; predicates
;;;------------

(defun digit-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :number)
      entry)))

(defun alphabetic-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :alphabetical)
      entry)))

(defun meaningless-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :punctuation)
      (when (eq (cdr entry) :meaningless)
        entry))))

(defun punctuation-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :punctuation)
      (unless (eq (cdr entry) :meaningless)
        (unless (reserved-char? c)
          entry)))))

(defun reserved-char? (c)
  (when (or (eql c #\^A)
            (eql c #\^B)
            (eql c #\^D))
    (tokenizer-entry c)))



;;;-----------------------------
;;; changing the initial values
;;;-----------------------------

(defun set-tokenizer-table-entry (&key ascii-number
                                       character-type
                                       case
                                       character )
  ;; data checks
  (unless ascii-number
    (error "The 'ascii-number' argument, indicating which table entry to ~
            change,~%  must be given."))
  (unless character-type
    (error "The 'character-type' argument must be given."))
  (unless character
    (error "The 'character' argument, indicating what you want the ~
            interpretation to be~%  must be given."))

  (unless (integerp ascii-number)
    (error "The 'ascii-number' argument must an integer.~
            The value ~A is a ~A." ascii-number (type-of ascii-number)))
  (unless (and (>= ascii-number 0)
               (<= ascii-number 127))
    (error "The 'ascii-number' argument must be between 0 and 127 ~
            inclusive.~%The value ~A is not." ascii-number))

  (unless (member character-type '(:punctuation :number :alphabetical))
    (error "The 'character-type' argument, ~A~
            ~%is not one of the keywords :punctuation :number ~
            or :alphabetical" character-type))

  (unless (characterp character)
    (unless (eq character :meaningless)
      (error "The 'character' argument must be given as a character ~
              object~%  e.g. #\A, #\newline  or for punctuation it ~
              may be the keyword :meaningless.~%Your value, ~A, is a ~A"
             character (type-of character))))

  (when (eq character-type :punctuation)
    (unless (eq character :meaningless)
      (unless (punctuation-named character)
        (error "The character ~A is designated to be punctuation~
                but has not yet been defined as such." character))))

  (when (eq character-type :alphabetical)
    (unless case
      (error "You have to include the 'case' argument when the ~
              character-type is alphabetical."))
    (unless (member case '(:uppercase :lowercase))
      (error "The 'case' must be one of the keywords :uppercase or ~
              :lowercase~%  You supplied ~A" case)))


  (setf (elt *character-dispatch-array* ascii-number)
        (ecase character-type
          (:punctuation
           (if (eq character :meaningless)
             '(:punctuation . :meaningless)
             `(:punctuation . ,(punctuation-named character))))

          (:number
           `(:number . (:digit . ,character)))

          (:alphabetical
           `(:alphabetical . (,case . ,character))))))
       
