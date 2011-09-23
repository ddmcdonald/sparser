;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "wsj/djns/sissor"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:   1.0 September 1990   system 1.2
;;;

(in-package :CTI-source)


(defun establish-WSJ/DJNW/sissor-as-document-source ()
  (set-initial-region :header)
  (activate-WSJ/DJNS-sectionizing-grammar)
  (setup-wsj/djns-format-environment))



;;;----------------------
;;; sectionizing grammar
;;;----------------------

(defvar *WSJ/DJNS-sectionizing-grammar* nil
  "Holds the psg rules of that grammar to facilitate deleting
   them if needed.")


(defun activate-WSJ/DJNS-sectionizing-grammar ()
  (let ( *accumulating-psg-rules* )

    (def-csr "AN" header-start :left-context source-start)
    (def-csr "TX" text-body-start  :left-context newline)
    (def-cfr paragraph-start (text-body-start))

    (setq *WSJ/DJNS-sectionizing-grammar*
          *accumulating-psg-rules*)))


;;;--------------------------
;;; Newline+indentation word
;;;--------------------------

(define-number-of-spaces NL+10-spaces "
          ")
(define-to-be-whitespace w::NL+10-spaces)


;;;----------------------------
;;; specialize the environment
;;;----------------------------

(defun setup-WSJ/DJNS-format-environment ()
  (when *marked-paragraph-environment*
    (revert-to-unmarked-paragraph-environment))

  (setq *old-value-for-*indentation-space* *indentation-space*
        *old-value-for-*paragraph-space*   *paragraph-space*
        *old-value-for-*NL+indentation*    *NL+indentation*)

  (setq *indentation-space* w::10-spaces
        *paragraph-space*   w::13-spaces
        *NL+indentation*    w::NL+10-spaces)

  (setq *marked-paragraph-environment* :wsj/djns))

