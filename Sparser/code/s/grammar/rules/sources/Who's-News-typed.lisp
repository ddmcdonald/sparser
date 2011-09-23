;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "Who's News/typed"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:   1.0  October 1990   system v1.5
;;;

(in-package :CTI-source)

#|
(define-document-style  'Whos-News/typed
  :sections
     ((dateline
  :initial-section  title
|#


(defun establish-Whos-News/typed-as-document-style ()
  (set-initial-region :text-body)
  (activate-Whos-News/typed-sectionizing-grammar)
  (setup-Whos-News/typed-paragraph-environment)
  )


(defun setup-Whos-News/typed-paragraph-environment ()
  (when *marked-paragraph-environment*
    (revert-to-unmarked-paragraph-environment))
  (setq *old-value-for-*indentation-space* *indentation-space*
        *old-value-for-*paragraph-space*   *paragraph-space*
        *old-value-for-*NL+indentation*    *NL+indentation*)

  (setq *indentation-space* nil
        *paragraph-space*   word::tab
        *NL+indentation*    nil)
  (setq *marked-paragraph-environment* :Whos-News/typed))


(defvar *Whos-News/typed-sectionizing-grammar* nil)

(defun activate-Whos-News/typed-sectionizing-grammar ()
  (let ( *accumulating-psg-rules* )
    (def-cfr text-body-start (source-start tab))
    (def-cfr paragraph-start (text-body-start tab))
    (setq *Whos-News/typed-sectionizing-grammar*
          *accumulating-psg-rules*)))

