;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Med"
;;;   Module:  "init;workspaces:"
;;;  version:  July 1996

;; started 7/11/96

(in-package :sparser)

(defun setup-for-NIH ()
  (setq *treat-single-Capitalized-words-as-names* nil)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (setq *ignore-capitalization* nil)
  (use-blank-line-nl-fsa))


;; snipits from Cell 61: 125-33 (1990)  -- 90199885

(defun n1 ()
  (setup-for-NIH)
  (p "Platelet-derived growth factor (PDGF) stimulated the 
tyrosine phosphorylation of the GTPase activating protein (GAP) 
in 3T3 cells"))


(define-no-space-pattern  digits-alpha-digits
  :acceptance-function 'analyze-ns-token/digits-alpha-digits
  :transition-net (  (:initial + digits    -> :one-digits )
                     (:one-digits + word   -> :digits-word )
                     (:digits-word + digits  -> :digits-word-digits))
  :accept-states ( :digits-word-digits ))


(defparameter *location-of-NIH-articles*
              "Corpora:NIH:")

;;  'ed' brings them into the editor
;;  'f' would run them, but without markup to indicate where there
;;    are titles, authors, etc., that might be unreasonably confusing
;;
;(ed (concatenate 'string *location-of-NIH-articles* "shc"))
;(ed (concatenate 'string *location-of-NIH-articles* "pc12"))
;(ed (concatenate 'string *location-of-NIH-articles* "kaplan"))

