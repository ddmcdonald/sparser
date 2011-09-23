;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "blank lines"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  July 1995

;; initiated 1/5/95. Added Blank-line/indent 7/5.

(in-package :sparser)


;;;---------------------------------
;;; blank lines indicate paragraphs
;;;---------------------------------

(defun use-blank-line-nl-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'blank-line-nl-fsa))
  (setq *newline-fsa-in-use* 'blank-line-nl-fsa))


(defun blank-line-nl-fsa (next-position-to-fill)
  ;; assumes no indentation. One or more of blank lines indicates
  ;; that the next real word starts a paragraph.
  ;;   //// 1/13/94 artificially enforcing the text source to have
  ;; just one line b/w paragraphs

  (increment-line-count)
  (let ((token (next-terminal)))
    (if (eq token *newline*)
      (then
        ;; get the NL that called us out of the way
        (increment-line-count)
        (fill-whitespace next-position-to-fill *newline*
                         :display-word t)
        ;; and also the one we just pulled in from the tokenizer
        (fill-whitespace next-position-to-fill *newline*
                         :display-word t)
        ;; that loses the fact that there were two NLs before
        ;; the next word (i.e. the paragraph-start that we're
        ;; returning, but it wouldn't be a serious problem since
        ;; we could encode the protocol into the realization
        ;; of the paragraph start itself.
        word::paragraph-start )
      (else
        (fill-whitespace next-position-to-fill *newline*
                         :display-word t)
        ;; we have to take the non-newline (and presumably non-whitespace)
        ;; word that we took in and put it into the chart. 
        ;;   This requires some coordination, but it appears 1/14/93
        ;; that just returning the word works. That leads to a call
        ;; to Bump-&-store-word and thence to returning the position
        ;; we were called with here.
        token ))))

;(use-blank-line-nl-fsa)


;;;-----------------------------------------------
;;; as above, but also throw away any indentation
;;;-----------------------------------------------

(defvar *fixed-indentation-spacing* nil)

(defvar *paragraph-indentation-spacing* nil)


(defun set-indenation (&key fixed paragraph)
  (when fixed
    (setq *fixed-indentation-spacing* (number-of-spaces-named fixed)))
  (when paragraph
    (setq *paragraph-indentation-spacing*
          (number-of-spaces-named paragraph)))

  (values *fixed-indentation-spacing*
          *paragraph-indentation-spacing*))



(defun use-blank-line/indentation-nl-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'blank-line/indentation-nl-fsa))
  (setq *newline-fsa-in-use* 'blank-line/indentation-nl-fsa))


(defun blank-line/indentation-nl-fsa (next-position-to-fill)
  ;; One or more of blank lines indicate that the next real word 
  ;; starts a paragraph.  If there is indentation at the start of
  ;; a line then it is treated as whitespace if it is a standard size
  ;; (defined in the style spec.). If it is the standard size for
  ;; a paragraph then that is also deemed to start a paragraph.
  ;; Otherwise it's probably somethinglike a title or subheading, 
  ;; /////and we pass off to that somehow///.

  ;; get the NL that called us out of the way
  (increment-line-count)
  (fill-whitespace next-position-to-fill *newline*
                   :display-word t)

  (let ((token (next-terminal)))
    (cond
     ((eq token *newline*)
      ;; get it displayed and appreciated
      (increment-line-count)
      (fill-whitespace next-position-to-fill *newline*
                       :display-word t)
      ;; that loses the fact that there were two NLs before
      ;; the next word (i.e. the paragraph-start that we're
      ;; returning), but it wouldn't be a serious problem since
      ;; we could encode the protocol into the realization
      ;; of the paragraph start itself.
      (bl/i-1 next-position-to-fill))

     ((eq token *paragraph-indentation-spacing*)
      (fill-whitespace next-position-to-fill token :display-word t)
      (break "para. indentation case of triggering a para.")
      word::paragraph-start )

     ((eq token *fixed-indentation-spacing*)
      ;; put it in the chart, but don't display it. Return the word
      ;; that comes after this
      (fill-whitespace next-position-to-fill token)
      (next-terminal))

     ((spaces-word? token)
      ;; /// this is a hook for setting something up to handle different
      ;; sorts of processing. Otherwise we print it and return the
      ;; next token.
      (fill-whitespace next-position-to-fill token :display-word t)
      (next-terminal))

     (t
      ;; we have to take the non-newline (and presumably non-whitespace)
      ;; word that we took in and put it into the chart. 
      ;;   This requires some coordination, but it appears 1/14/93
      ;; that just returning the word works. That leads to a call
      ;; to Bump-&-store-word and thence to returning the position
      ;; we were called with here.
      token ))))

;(use-blank-line/indentation-nl-fsa)


(defun bl/i-1 (next-position-to-fill)
  ;; This is the continuation of Blank-line/indentation-NL-fsa
  ;; for the case where there were two newlines in a row and
  ;; we're supposed to introduce a paragraph marker.
  ;;   We definitively are introducing a paragraph marker, but
  ;; we want to appreciate any indentation whitespace that might
  ;; have followed the newline. 
  ;;   If we don't loop, the final value out of here is going
  ;; to be returned to Sort-out-result-of-newline-analysis. 
  ;; Since we're not going to return a *newline* to it, our value
  ;; is going to be passed to Bump-&-sore-word along with the
  ;; position we're at now.

  (let ((following-token (next-terminal)))
    (cond
     ((eq following-token *newline*)
      ;; more than one newline in a row
      (increment-line-count)
      (fill-whitespace next-position-to-fill *newline*
                       :display-word t)
      ;; loop around again
      (bl/i-1 next-position-to-fill))

     ((eq following-token *paragraph-indentation-spacing*)
      (fill-whitespace next-position-to-fill following-token :display-word t)
      word::paragraph-start )

     ((eq following-token *fixed-indentation-spacing*)
      (fill-whitespace next-position-to-fill following-token)
      word::paragraph-start )

     ((spaces-word? following-token)
      (fill-whitespace next-position-to-fill following-token :display-word t)
      word::paragraph-start )

     (t (break "Newline followed by non-whitespace")
        word::paragraph-start ))))

