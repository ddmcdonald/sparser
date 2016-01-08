;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "newline"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  4.9 May 1993

;; 1.5 (11/1 v2.0.1) Overhauled the particulars given paragraphs as
;;      real objects.  11/3 cont.
;; 4.0 (10/14/92 v2.3) moved the *newline-is-a-word* flag here from
;;      the required words
;; 4.1 (11/2) Revised the null treatment to fit with a no-grammar load's defaults
;; 4.2 (4/9/93) flushed references to word package - used constants instead
;;      and reorganized the layout of the file a little.
;; 4.3 (12/28) added case for returning NL after flushing LF (for djns)
;; 4.4 (12/31, 1/3/94) reintroduced cases that appreciate orthographic paragraphs
;;     (1/13) fixed a problem with multiple calls to finish-paragraph.
;; 4.5 (1/13) added case of vertical whitespace as para. indicator 
;; 4.6 (1/21) changed LF routine to aid in synchronizing the display 
;; 4.7 (3/30) added line counting to return-newline-tokens
;; 4.8 (4/20) moved out the basics to [analyzers;psp:fill-chart:newline]
;; 4.9 (5/2) added case where NL is meaningless

(in-package :sparser)


;;;---------------------------------
;;; blank lines indicate paragraphs
;;;---------------------------------

(defun use-blank-line-nl-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'blank-line-nl-fsa))
  (setq *newline-fsa-in-use* 'blank-line-nl-fsa))


; (use-blank-line-nl-fsa)

(defun blank-line-nl-fsa (next-position-to-fill)
  ;; assumes no indentation. One or more of blank lines indicates
  ;; that the next real word starts a paragraph.
  ;;   //// 1/13 artificially enforcing the test source to have
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
        ;; we have take the non-newline (and presumably non-whitespace)
        ;; word that we took in and put it into the chart. 
        ;;   This requires some coordination, but it appears 1/14/93
        ;; that just returning the word works. That leads to a call
        ;; to Bump-&-store-word and thence to returning the position
        ;; we were called with here.
        token ))))
      



;;;----------------------------------------------
;;; stack of positions at the beginning of lines
;;;----------------------------------------------
; (use-stack-sensitive-newline-fsa)

(defun use-stack-sensitive-newline-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'stack-sensitive-newline-fsa))
  (setq *newline-fsa-in-use* 'stack-sensitive-newline-fsa))


(defparameter *nl-position-stack* nil)

(defun initialize-nl-position-stack ()
  (deallocate-cons-tree *nl-position-stack*)
  (setq *nl-position-stack* nil))

(define-per-run-init-form '(initialize-nl-position-stack))



(defun stack-sensitive-newline-fsa (position-being-filled)
  (increment-line-count)
  (let ((word (next-terminal))
        alternative-word )
    ;(format t "~%NL:   word = ~A" word)

    ;; dispose of the newline that triggered this (do what
    ;; sort-out-result.. would have done had it gotten it)
    (fill-whitespace position-being-filled *newline*
                     :display-word t)
    
    (if *nl-position-stack*
      (setq alternative-word
            (analyze-nl-stack word position-being-filled))

      (else ;; prime the pump
        (if *capitalization-is-uninformative*
          (kpush :header-line *nl-position-stack*)
          (if (spaces-word? word)
            (kpush (kcons (number-of-spaces word)
                          position-being-filled)
                   *nl-position-stack*)
            (kpush word *nl-position-stack*)))))

    (if alternative-word
      (then
        (if (spaces-word? word)
          () ;;(fill-whitespace position-being-filled word
             ;;                 :display-word t)
          (break "Draw-paragraphing-conclusions returned ~A~
                ~%but the word we got at the start of the Newline-fsa ~
                  wasn't whitespace~
                ~%  but was ~A~
                ~%Is this ok?" alternative-word word))

        alternative-word )

      (else
        ;; return the word we just extracted from the source.
        ;; It will be handled by Sort-out-result-of-newline-analysis
        word ))))


(defun analyze-nl-stack (this-word this-position)

  (if *capitalization-is-uninformative*
    (then
      ;; cheap, indirect way of knowing we're inside the headers
      (if (eq this-word word::|tx|) ;; not good enough when dealing with SGML
        (kpush (kcons :text-start-marker this-position)
               *nl-position-stack*)            
        (kpush :header-line *nl-position-stack*))
      nil )

    ;; we're in the text body
    (let ((last-time (car *nl-position-stack*)))
      ;(format t "~% last time = ~A" last-time)
      (if (listp last-time)
        (let ((marker (car last-time))
              (position (cdr last-time)))
          (cond ((eq marker :text-start-marker)
                 ;; what's the indentation after "TX" ?
                 (let ((n (number-of-spaces
                           (pos-preceding-whitespace
                            (chart-position-after position)))))
                   ;; put this 'effective indentation' back on the stack
                   ;; and move the position on to the word after the marker
                   (kpop *nl-position-stack*)
                   (kpush (kcons (+ n 2)
                                 (chart-position-after position))
                          *nl-position-stack*)))

                ((numberp marker))
                (t (break "new case")))

          ;; push on the current case
          (if (spaces-word? this-word)
            (kpush (kcons (number-of-spaces this-word) this-position)
                   *nl-position-stack*)
            (kpush (kcons this-word this-position)
                   *nl-position-stack*))

          ;; think about it
          (draw-paragraphing-conclusions))

        (break "We're in the text body, but 'last-time' is a ~
                symbol:~%  ~a" last-time)))))



(defun draw-paragraphing-conclusions ()

  ;; this is the last operation taken by Analyze-NL-stack, so what
  ;; it returns will be passed all the way back to the FSA.
  ;;   If we return nil then the word gotten by the fsa will be
  ;; returned there. If we return the word paragraph-start then
  ;; it will be handled by Bump-&-store-word and will appear in
  ;; the chart. 

  (let ((this-time (car *nl-position-stack*))
        (time-before (cadr *nl-position-stack*)))

    ;; is it indented this time?
    (if (numberp (car this-time))

      ;; was it also indented last time?
      (if (numberp (car time-before))

        ;; which is greater?
        (let ((this-indent (car this-time))
              (last-indent (car time-before)))

          (cond ((> last-indent this-indent)
                 ;; the previous line was indented more than this one
                 ;; is, so we retrospectively run the paragraph actions
                 ;; on the position where it started, which we've kept
                 ;; on the stack. We can't introduce a paragraph marker
                 ;; back there because the position where it would go
                 ;; is already filled. 
                 (start-new-paragraph nil  ;; "edge"
                                      (cdr time-before) ;; position
                                      t )  ;; call the para-finish routine
                 nil )

                ((> this-indent last-indent)
                 ;; we know this line is indenteded with respect to the
                 ;; last one, and we've not yet filled the position
                 ;; where the first word of that paragraph will go, 
                 ;; so we can put this word there instead, and have it
                 ;; trigger the paragraph section actions when its
                 ;; scanned. 
                 word::paragraph-start )

                (t ;; running indentation of all the same length
                   ;; as in the 13 spaces of DJNS's form of the Journal
                 nil )))

        ;; the last line wasn't indented, but this one is
        (break "#2 this line starts a paragraph -- no prior indentation"))


      ;; This line isn't indented. Was the last one indented?
      (when (numberp (car time-before))
        ;; then that prior line started a paragraph
        (start-new-paragraph nil (cdr time-before) t)
        nil ))))





;;;--------------------
;;; simple indentation
;;;--------------------

(defun use-newline-fsa/paragraph ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'newline-fsa/paragraph))
  (setq *newline-fsa-in-use* 'newline-fsa/paragraph))


;; uninteresting bindings just in case this file is being used without
;; the rest of the paragraph apparatus
(unless (boundp '*paragraph-space*)
  (defparameter *paragraph-space* nil))
(unless (boundp '*paragraph-start*)
  (defparameter *paragraph-start* nil))


; (use-newline-fsa/paragraph)

(defun newline-fsa/paragraph (position-being-filled)
  ;; at this point the current token is the NL that triggered the routine
  (increment-line-count)
  (let ((word-after (next-terminal)))
    ;(format t "~&Word-after = ~A~%" word-after)
    (if (eq word-after *newline*) ;; ignore extra lines (double spaced)
      (then
        (increment-line-count)
        (fill-whitespace position-being-filled *newline*)
        (newline-fsa/paragraph position-being-filled))
      (else
        (cond ((eq word-after *paragraph-space*)
               ;; and we have to get the NL displayed
               (when *display-word-stream*
                 (write-specific-word-to-article-stream *newline*))
               *paragraph-start* )

              #|((not (whitespace word-after))
               (setq *word-buffered* word-after)
               ;; return the newline word to be entered into the chart
               ;; as the whitespace before the terminal we've just 
               ;; pulled in and buffered
               *newline* )|#

              (t ;; it's an unanticipated kind of whitespace
               word-after))))))

#| original version
(defun newline-FSA/paragraph (position-being-filled)
  ;; at this point the current token is the NL that triggered the routine
  (let ((word-after (next-terminal)))
    (if (eq word-after *newline*) ;; ignore extra lines (double spaced)
      (then
        (fill-whitespace position-being-filled *newline*)
        (newline-FSA/paragraph position-being-filled))
      (else
        (cond ((eq word-after *paragraph-space*)
               ;; and we have to get the NL displayed
               (when *display-word-stream*
                 (write-specific-word-to-article-stream *newline*))
               *paragraph-start* )

              ((not (whitespace word-after))
               (setq *word-buffered* word-after)
               ;; return the newline word to be entered into the chart
               ;; as the whitespace before the terminal we've just 
               ;; pulled in and buffered
               *newline* )

              (t ;; it's an unanticipated kind of whitespace
               word-after)))))) |#



;;;--------------------------------------
;;; FSA for texts with Linefeeds in them
;;;--------------------------------------

(defun use-flush-lf-&-return-nl-tokens-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'return-newline-tokens/linefeed))
  (setq *newline-fsa-in-use* 'return-newline-tokens/linefeed))

;(use-flush-lf-&-return-nl-tokens-fsa)
(defun return-newline-tokens/linefeed (position-being-filled)
  ;; the end-of-line characters in these files consist of a newline
  ;; followed by a linefeed. We ignore the linefeed -- printing it
  ;; to a Fred editor has frozen the system when one tried to print
  ;; that file.  
  ;;   However, by not printing the LF, we get out of sync with the
  ;; character count in buffer, so we have to subtract from its
  ;; counter so that any display of this text will have the position
  ;; character indexes in sync with the display.

  (declare (ignore position-being-filled))
  (let ((word-after-nl (next-token)))
    (if (eq word-after-nl (punctuation-named #\Linefeed))
      (incf *number-of-characters-to-subtract*)
      (break "new case: next token is ~A" word-after-nl))
    (increment-line-count)
    *newline* ))



;;;---------------------------------------------------------------------
;;; FSA where NL's are meaningless and the line-count is done elsewhere
;;;---------------------------------------------------------------------

(defun use-nl-is-meaningless ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'nl-fsa/nl-is-meaningless/no-counting))
  (setq *newline-fsa-in-use* 'nl-fsa/nl-is-meaningless/no-counting))


;(use-NL-is-meaningless)

(defun nL-fsa/nl-is-meaningless/no-counting (position-being-filled)
  ;; There is a nl charcter at this position. Depending on whether
  ;; display output is going to the LL or the display we return
  ;; a NL or a space respectively.   We also do a lookahead directly
  ;; into the character buffer for immediately following NL's --
  ;; if there are any we move the buffer pointer over them.
  (declare (ignore position-being-filled))
  (unless *adjust-text-to-fixed-line-length*
    (increment-line-count))
  (if *adjust-text-to-fixed-line-length*
    *one-space*
    *newline*))
  





#|  haven't been checked out (11/92)

(defun newline-fsa/indentation ()
  (let ((word-after-nl (next-token)))
    (expect-indentation word-after-nl)))

(defun expect-indentation (word)
  (cond ((eq word *paragraph-space*)
         (if *report-paragraphs*
           *paragraph-start*
           *paragraph-space*))
        ((eq word *indentation-space*)
         *nl+indentation*)
        ((whitespace word)
         word)
        (t ;; it's a real word of some kind
         (setq *word-buffered* word)
         *newline*)))


(defun use-newline-fsa-for-paras-&-indentation ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'newline-fsa/para-&-indentation))
  (setq *newline-fsa-in-use* 'newline-fsa/para-&-indentation))


(defun newline-fsa/para-&-indentation ()
  (let ((word-after-nl (next-token)))
    (if *indentation-space*
      (if (eq word-after-nl *indentation-space*)
        *nl+indentation*
        (check-other-NL-follower-possiblities/p-&-i word-after-nl))
      (check-other-NL-follower-possiblities/p-&-i word-after-nl))))


(defun check-other-nl-follower-possiblities/p-&-i (word-after)
  (cond ((eq word-after *paragraph-space*)
         *paragraph-start* )
        ((not (whitespace word-after))
         (buffer-word word-after :newline-fsa)
         (incf *number-of-words-looked-at-this-pass*)
         *newline* )
        (t ;; it's an unanticipated kind of whitespace
           ;; If we just pass through this space, the record in
           ;; the chart of the whitespace between (real) words
           ;; will not be accurate.  ///ok for now though.
         word-after)))



(defun use-newline-fsa/paras-&-indentation/linefeed ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'newline-fsa/para-&-indentation/linefeed))
  (setq *newline-fsa-in-use* 'newline-fsa/para-&-indentation/linefeed))

(defun newline-fsa/para-&-indentation/linefeed ()
  (let ((word-after-nl (next-token)))
    (if (eq word-after-nl (punctuation-named #\Linefeed))
      (newline-fsa/para-&-indentation)
      (break "no"))))
                                           |#

