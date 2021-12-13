;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1995,2012-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "single quote"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  December 2021

;; initiated 4/23/91 v1.8.4, tweeked 4/24,25, Comment added 1/3/92
;; 1.0 (11/24/92 v2.3) Flushed the old use of fake names as referents
;; 1.1 (7/25/94) added 're' and 'll'   8/16 added 've'  9/6 'm'.
;;     typo 10/24. (4/22/12) Compiler fix. (8/10/15) another one.

#| An apostrophe can indicate a contraction ('He can't go'), or it can function
   like a quotation mark (double quote) and delimit a portion of the text,
   either acting as 'scare quote' to provide emphasis, or over longer spans
   as an alternative to delimiting the span with double quotes, or to provide
   interiar spans within double quoted spans.

   We handle the contractions here. The use as a span of text delimiter
   is done in rules/traversal/single-quote.lisp    |#

;;;-----------------------------
;;; linking the word to the fsa
;;;-----------------------------

(if (boundp 'word::single-quote)
  ;; Find or make a word object for the single quote character
  ;; and assign an FSA to it.
  (let ((rs (label-rule-set word::single-quote)))
    (if rs
      (setf (rs-fsa rs)
            (cons 'apostrophe-fsa (rs-fsa rs)))
      (setf (word-rule-set word::single-quote)
            (make-rule-set :backpointer word::single-quote
                           :fsa '( apostrophe-fsa )))))
  (let* ((word
          (define-punctuation/expr 'single-quote #\'))
         (rs (word-rule-set word)))
    (setf (rs-fsa rs) '( apostrophe-fsa ))))


;;;----------------------------------------------------
;;; categories for apostrophe-contraction combinations
;;;----------------------------------------------------

(define-category apostrophe-s)    ;; 'is'
(define-category apostrophe-m)    ;; 'am'
(define-category apostrophe-t)    ;; 'not'
(define-category apostrophe-re)   ;; 'are'
(define-category apostrophe-ve)   ;; 'have'
(define-category apostrophe-ll)   ;; 'will'
(define-category apostrophe-d)    ;; 'would'

#| The bracket assignments for most of these are in [rules;words:contractions],
along with definitions as function words for "s", "t", "re", etc. |#

(defparameter *categories-based-on-apostrophe*
  `(,category::apostrophe-s
    ,category::apostrophe-m
    ,category::apostrophe-t
    ,category::apostrophe-re
    ,category::apostrophe-ve
    ,category::apostrophe-ll
    ,category::apostrophe-d))


;; (trace-fsas)

;;;-----
;;; fsa
;;;-----
;;//// It can also signal missing letters in a word "sec'y" for "secretary"

(defvar *in-scope-of-apostrophe-fsa* nil)

(defun apostrophe-fsa (single-quote starting-position)
  "There's a single-quote (apostrophe) at the starting position.
   We know what the apostrophe might be eliding, if there is no
   interveening space between the apostrophe and one of the contracted forms
   (see *categories-based-on-apostrophe*) we combine the apostrophe
   and the contraction into an edge.
     In other contexts, we look at the previous word and if it ends
   in 's' we take that to be a possessive marker.
     The single quote character might also be part of a pairs, so we
   call into its code if we don't have a treatment for the apostrophe
   (aka single-quote) here."
  (declare (ignore single-quote)
           (special category::verb category::modal category::verb+present
                    word::|s| word::|t| word::|re| word::|d|
                    word::|ve| word::|ll| word::|m|
                    *pending-single-quote*))
  (tr :apos-start starting-position)

  (let ((next-position (chart-position-after starting-position))
        (*in-scope-of-apostrophe-fsa* t))
    (declare (special *in-scope-of-apostrophe-fsa*))
    (unless (pos-assessed? next-position)
      (scan-next-position))
    
    (let ((word (pos-terminal next-position))
          spanning-category  form  referent  edge  position-after )
      (cond ((eq word word::|s|)
             (setq spanning-category category::apostrophe-s))
            ((eq word word::|t|)
             (setq spanning-category category::apostrophe-t
                   form category::quantifier ;;/// arguable, but matches "not"
                   referent (category-named 'not)))
            ((eq word word::|re|)
             (setq spanning-category category::apostrophe-re
                   form category::verb+present
                   referent (category-named 'be)))
            ((eq word word::|ve|)
             (setq spanning-category category::apostrophe-ve
                   form category::verb
                   referent (category-named 'have)))
            ((eq word word::|ll|)
             (setq spanning-category category::apostrophe-ll
                   form category::modal
                   referent (category-named 'will)))
            ((eq word word::|d|)
             (setq spanning-category category::apostrophe-d
                   form category::modal
                   referent (category-named 'would)))
            ((eq word word::|m|)
             (setq spanning-category category::apostrophe-m
                   form category::verb+present
                   referent (category-named 'be))))

      (if spanning-category
        (then
          (setq edge
                (make-edge/all-keys
                 :category spanning-category
                 :form form
                 :referent referent
                 :rule-name :apostrophe-fsa
                 :starting-position starting-position
                 :ending-position
                 (setq position-after
                       (chart-position-after next-position))))
          (tr :apos-created-edge-over word edge)
          position-after )
        
        
        (if (pos-preceding-whitespace starting-position)
          ;; there's a space to the left of the apostrophe
          (then (tr :apos-space-to-left)
                (notice-single-quote starting-position next-position)
                nil)

          ;; check for "xxxs' -- possessive off of a plural
          (let ((prior-word
                 (pos-terminal (chart-position-before starting-position))))
            ;;(break "prior-word = ~a" prior-word) ;; question-mark
            (cond
              ((punctuation? prior-word) ; e.g. question-mark
               (notice-single-quote starting-position next-position))
              ((and (word-morphology prior-word)
                    (eq :ends-in-s (word-morphology prior-word)))
               (mark-possessive-on-prior-word starting-position
                                              next-position prior-word))
              (*pending-single-quote*
               (notice-single-quote starting-position next-position))
              (t
               (tr :apos-end prior-word)
               next-position))
              ))))))

  


(defun mark-possessive-on-prior-word (pos-before pos-after word)
  ;; there is an appostrophe at this chart position, and we've just
  ;; determined that the word before it ended in 's', making it a
  ;; good bet that we have a possessive on a plural.
  ;;   We put in an edge with the category 'apostrophe-s', which has
  ;; an fsa -- check-special-cases-and-possessive -- that arranges 
  ;; for the prior segment to be taken as a possessive.
  (let ((edge
         (make-edge/all-keys 
          :category category::apostrophe-s
          :form nil
          :referent nil
          :rule-name :apostrophe-fsa
          :starting-position pos-before
          :ending-position pos-after )))
    (tr :s-on-prior-word-apostrophe-afterwards edge word)
    pos-after ))
