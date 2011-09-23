;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "who's news format/wsj/hoover"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  February 1991   system 1.8.1

;; initiated 2/15

(in-package :CTI-source)


(defun establish-document-source/Whos-News/wsj/hoover ()
  (set-initial-region :header)
  (activate-sectionizing-grammar/Whos-News/wsj/hoover)
  (setup-format-environment/Whos-News/wsj/hoover))


;;;----------------------
;;; sectionizing grammar
;;;----------------------

(defvar *sectionizing-grammar/Whos-News/wsj/hoover* nil
  "Holds the psg rules of that grammar to facilitate deleting
   them if needed.")


(defun activate-sectionizing-grammar/Whos-News/wsj/hoover ()
  (let ( *accumulating-psg-rules* )

    (def-csr "AN" header-start :left-context source-start)
    (def-csr "TX" text-body-start  :left-context newline)

    (setq *sectionizing-grammar/Whos-News/wsj/hoover*
          *accumulating-psg-rules*)))


;;;-----------------------------
;;; values for the pseudo words
;;;-----------------------------

(or (boundp 'word::NL+10-spaces)
    (define-number-of-spaces NL+10-spaces "
          "))
(define-to-be-whitespace word::NL+10-spaces)


;;;----------------------------
;;; specialize the environment
;;;----------------------------

(defun setup-format-environment/Whos-News/wsj/hoover ()
  (when *marked-paragraph-environment*
    (revert-to-unmarked-paragraph-environment))

  (setq *old-value-for-*indentation-space* *indentation-space*
        *old-value-for-*paragraph-space*   *paragraph-space*
        *old-value-for-*NL+indentation*    *NL+indentation*)

  (setq *indentation-space* word::10-spaces
        *paragraph-space*   word::13-spaces
        *NL+indentation*    word::NL+10-spaces)

  ;(setq *NewLine-paragraph-FSA-to-use*
  ;      'use-Newline-FSA/para-&-indentation/linefeed)
  ;(setq *NewLine-default-FSA-to-use*
  ;      'use-Newline-FSA/indentation/linefeed)
  (use-Newline-FSA/indentation/linefeed)

  (setq *newline-is-a-word* t)

  (setq *marked-paragraph-environment* :Whos-News/wsj/hoover))

