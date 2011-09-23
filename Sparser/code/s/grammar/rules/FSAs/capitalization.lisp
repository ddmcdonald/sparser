;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "capitalization"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:   1.0  October 1990
;;;

(in-package :CTI-source)

;;;-------------
;;; predicates
;;;-------------

(defun capitalized (word)
  "A predicate testing whether the word is capitalized in any way,
   i.e. first letter, all upper case, or mixed case."
  (when (typep word 'word)
    (let ((capitalization-field
           (word-capitalization word)))
      (if capitalization-field
        (if (not (eq capitalization-field
                     :lower-case))
          capitalization-field
          nil)
        nil))))

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
        *all-characters-are-capitalized* nil
        *first-letter-is-capitalized* nil
        *one-capitalized-letter* nil
        *only-the-first-letter-is-capitalized* nil
        *all-characters-so-far-are-capitalized* nil
        *some-characters-after-the-first-are-capitalized* nil
        *some-characters-other-than-the-first-are-capitalized* nil))


(defun reify-state-of-capitalization-FSA ()
  (cond (*lower-case* :lower-case)
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
      (else
        (are-any-letters-capitalized 1 (1- length-of-word))))))


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


(defun lowercase-equivalent-letter (uppercase-letter)
  ;; Does it with arithmetic and char-code lookups.  An indexed 
  ;; lookup might be quicker since it's a small number of cases.
  (let* ((upper-number (char-code uppercase-letter))
         (lower-number (+ 32 upper-number))
         (lowercase-letter (code-char lower-number)))
    lowercase-letter))

