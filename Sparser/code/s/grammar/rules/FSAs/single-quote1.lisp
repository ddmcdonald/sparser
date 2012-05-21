;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1995,2012 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "single quote"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  1.1 April 2012

;; initiated 4/23/91 v1.8.4, tweeked 4/24,25, Comment added 1/3/92
;; 1.0 (11/24/92 v2.3) Flushed the old use of fake names as referents
;; 1.1 (7/25/94) added 're' and 'll'   8/16 added 've'  9/6 'm'.
;;     typo 10/24. (4/22/12) Compiler fix.

(in-package :sparser)

;;;------------
;;; categories
;;;------------

(define-category apostrophe-s)    ;; 'is'
(define-category apostrophe-m)    ;; 'am'
(define-category apostrophe-t)    ;; 'not'
(define-category apostrophe-re)   ;; 'are'
(define-category apostrophe-ve)   ;; 'have'
(define-category apostrophe-ll)   ;; 'will'

#| the bracket assignments are in [rules;words:contractions] |#

;;;-----------------------------
;;; linking the word to the fsa
;;;-----------------------------

(if (boundp 'word::single-quote)
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


;;;------
;;; fsa
;;;------

(defun apostrophe-fsa (single-quote starting-position)
  ;; There's a single-quote (appostrophe) at the starting position.
  ;; We check here whether there's an "s", "t", "re", or "ll" just after it,
  ;; without any interveening space.
  (declare (ignore single-quote))
  (when *trace-fsas*
    (format t "~&Starting FSA for |'s_or't| at p~A~%"
            (pos-token-index starting-position)))

  (let ((next-position (chart-position-after starting-position)))
    (unless (pos-assessed? next-position)
      (scan-next-position))

    (let ((word (pos-terminal next-position))
          spanning-category  form  referent  edge  position-after )

      (cond ((eq word word::|s|)
             (setq spanning-category category::apostrophe-s))
            ((eq word word::|t|)
             (setq spanning-category category::apostrophe-t))
            ((eq word word::|re|)
             (setq spanning-category category::apostrophe-re
                   form category::verb
                   referent  (category-named 'be)))
            ((eq word word::|ve|)
             (setq spanning-category category::apostrophe-ve
                   form category::verb
                   referent  (category-named 'have)))
            ((eq word word::|ll|)
             (setq spanning-category category::apostrophe-ll
                   form category::modal))
            ((eq word word::|m|)
             (setq spanning-category category::apostrophe-m
                   form category::verb)))
        
      (if spanning-category
        (then
          (setq edge
                (make-edge/all-keys
                 :category spanning-category
                 :form form
                 :referent referent
                 :rule-name :appostrophe-fsa
                 :starting-position starting-position
                 :ending-position
                 (setq position-after
                       (chart-position-after next-position))))
          
          (when *trace-fsas*
            (format t "~&  It scanned ~A and created the edge~
                       ~%     ~A~%" word edge))
          position-after )
        
        ;; check for "xxxs'" -- possessive off of a plural
        (let ((prior-word
               (pos-terminal (chart-position-before starting-position))))
          (if (eq :ends-in-s (word-morphology prior-word))
            (mark-possessive-on-prior-word starting-position
                                           next-position prior-word)
            (else
              (when *trace-fsas*
                (format t "~&  It scanned ~A and terminated~%" word))
              next-position )))))))



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
          :rule-name :appostrophe-fsa
          :starting-position pos-before
          :ending-position pos-after )))
    (tr :s-on-prior-word-apostrophe-afterwards edge word)
    pos-after ))

(deftrace :s-on-prior-word-apostrophe-afterwards (edge word)
  (when *trace-fsas*
    (trace-msg "  The prior word, \"~A\", ends in 's', so the ' ~
              ~%    is spanned as ~A" (word-pname word) edge)))
