;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "stack sensitive"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  January 1995

;; initiated 1/5/95

(in-package :sparser)

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

