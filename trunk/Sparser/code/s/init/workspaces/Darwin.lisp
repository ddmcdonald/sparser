;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996-1999  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Darwin"
;;;   Module:  "init;workspaces:"
;;;  version:  March 1999

;; started 5/27/96. Put in real paragraph routine 6/5. Added small hacked
;; Darwin corpus file 6/17. Tweeked the style 6/18. 3/13/99 guarded the
;; call to load the corpus with *connect-to-the-corpus*.

(in-package :sparser)


;;;-------
;;; style
;;;-------

(define-document-style  origin-line-by-line
  :init-fn  setup-for-origin-line-by-line )

(defun setup-for-origin-line-by-line ()
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (setq *ignore-capitalization* nil)

  (adjust-text-to-fixed-line-length
   :nl-routine 'use-count-lines-nl-fsa)
  (setq *NL-count-lines/number-of-lines-that-count-as-a-paragraph*  3))


;;;-----------------
;;; document stream
;;;-----------------

;;-------- The document stream is only useful when the Corpus facility is running, 
;;         which it isn't in the academic version as of 6/27/96.
;;         You get a note that "One of the explicit files ... does not exist."

(when *connect-to-the-corpus*
  (def-logical-pathname "Darwin;"  "corpus;Darwin:")

  (define-document-stream '|Origin of the Species|
    :style-name 'origin-line-by-line
    :file-list ;'( "Darwin;origin line by line" )
                '( "Darwin;1st as setup" )  ;; hacked '1st excerpt'
                ))
#|
(setq *document-stream-to-use*
      (document-stream-named '|Origin of the Species|))
|#

;;----------- In lieu of that, you can always just use the file directly:

(defun darwin-test ()
  (setup-for-origin-line-by-line)  ;; style setting
  (f (concatenate 'string cl-user::location-of-sparser-directory
                  "corpus:Darwin sample")))


;;;----------------------------------------------
;;; switch settings (variations from the default
;;;----------------------------------------------

;(setq *treat-single-Capitalized-words-as-names* t)
  ;; Defined in [semantic core:names:fsa:classify1]. If it's nil, then a one word
  ;; segment that is a capitalized word will just get the label 'capitalized-word'.
  ;; With this flag on, it gets labeled 'name'.


;;;------------------------------------------------------------------
;;; convenient trace mechanism for reviewing hardcopy of an analysis
;;;------------------------------------------------------------------

;(setq *inline-treetop-readout* t)
;(setq *inline-treetop-readout* nil)
;(setq *stream-to-readout-treetops-to* t)
;(setq *stream-to-readout-treetops-to* (fred))
;(setq *inline-readout-function* 'print-treetops)   ;; a.k.a. 'tts'

