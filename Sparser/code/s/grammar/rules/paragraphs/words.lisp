;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "words"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:   1.0  September 1990

(in-package :sparser)


;; Because it is a core operation, the detection of paragraphs
;; requires a set of globals indicating what words (e.g. sequences
;; of spaces) represent regular indentation or paragraph indentation
;; in a given source.
;;
;;    These globals are reset, not rebound, when the source has a
;; different convention from the default, which is no indentation
;; and three spaces to indicate a paragraph.  To facilitate this,
;; a set of shallow stack variables is kept, and a routine is
;; provided to revert to these original values.


;;;---------------------------------------------
;;;  logical words that define paragraph starts
;;;---------------------------------------------

(defparameter *indentation-space* nil
  "Set within the grammar for a given publication's layout.")


(defparameter *paragraph-space*
              (progn (or (boundp 'word::3-spaces)
                         (error "Timing conflict. Spaces are referred ~
                                 to before they've been defined"))
                     word::3-spaces))


(defparameter *NL+indentation*
              (define-number-of-spaces NL+1-spaces "
 "))
(define-to-be-whitespace word::NL+1-spaces)



;;;-------
;;; flag
;;;-------

(defvar *marked-paragraph-environment* nil
  "When non-nil, it indicates that the default values for the
   parameters that define how tokens indicate the start of
   paragraphs have been preempted.")


;;;-----------------------------------------------
;;; variables to provide shallow binding facility
;;;-----------------------------------------------

;; n.b. this is not a stack facility -- Therefore any routine
;; that establishes a marked environment had better ensure that
;; it is starting from an unmarked environment before it sets
;; these
(defvar *old-value-for-*indentation-space* nil)
(defvar *old-value-for-*paragraph-space*   nil)
(defvar *old-value-for-*NL+indentation*    nil)


(defun revert-to-unmarked-paragraph-environment ()
  (setq *indentation-space* *old-value-for-*indentation-space*
        *paragraph-space*   *old-value-for-*paragraph-space*
        *NL+indentation*    *old-value-for-*NL+indentation*))


