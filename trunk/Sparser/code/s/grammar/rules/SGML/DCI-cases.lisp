;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DCI cases"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  0.5 May 1994

;; initiated (as a placeholder) 10/19/91, fleshed out by c&s 5/15/92
;; 0.1 (12/9/93) Revamped the organization by C&S to fit new scheme
;; 0.2 (5/5/94) tweeked parameter pattern
;; 0.4 (5/9) added definition for paragraphs, piggybacking on all the
;;      existing routines in [paragraphs;section rule1]
;; 0.5 (5/17) wrote scheme to make <s>,</s> disappear

(in-package :sparser)

#| These are the body tags put in texts (at least WSJ texts) distributed
   by the ACL's Document Collection Initiative. The ones given here are
   those *not* also used by Tipster or DJNS/WSJ -- where there's overlap
   those versions get preference.  |#

;; <p>
;; <s>
;; <dateline>


;;;------------------
;;;  paragraphs  <p>
;;;------------------

#| The operations controlled by paragraphs are organized around its
   section marker. To insert this marker in the chart we go indirectly
   via word::paragraph-start, whose completion action will map to that
   of the paragraph-start section marker.  |#

(define-sgml-tag "p"  'paragraph
  :initiation-action  'start-new-paragraph
  :termination-action 'finish-ongoing-paragraph )



;;;------------------------------------------
;;; field for the "document number"  <s>
;;;------------------------------------------

(define-word "s")

(defun keep-sentence-tags-out-of-terminal-stream ()
  (establish-version-of-next-terminal-to-use
   :no-sentence-tags 'detect-and-omit-sentence-sgml-tags))


(defvar *buffered-token* nil)

(define-per-run-init-form '(setq *buffered-token* nil))


(defun detect-and-omit-sentence-sgml-tags ()
  (if *buffered-token*
    (kpop *buffered-token*)

    (let ((word (next-token)))
      (if (eq word word::open-angle-bracket)
        (lookahead-for-sentence-tag)
        word ))))

(defun lookahead-for-sentence-tag ()
  ;; look directly into the character buffer, circumventing the
  ;; usual machinery, which means we have to be prepared to
  ;; handle the buffer swap
  (let ((next-char (elt *character-buffer-in-use*
                        ;; add one because it's currently pointing
                        ;; to the "<" since it's punctuation
                        (1+ *index-of-next-character*))))

    (when (eql next-char #\^d)
      (break "buffer swap")
      ;; swap buffers -- it's safe to do it here because we're
      ;; not looking ahead beyond where next-token will look if
      ;; we don't see what we're looking for
      (refill-character-buffer *character-buffer-in-use*)
      ;; n.b. after this swap the next-char index will have been
      ;; reset to its initialization value, -1
      (setq next-char (elt *character-buffer-in-use* 0)))

    (cond ((eql next-char #\s)
           (lafst/b/look-for-close-angle-bracket/2))
          ((eql next-char #\/)
           (lafst/b/look-for-s/2))
          (t
           ;; if it's not there, we can just return this already tokenized
           ;; word and nothing else has to be done since we haven't at
           ;; this point changed any of the state variables
           word::open-angle-bracket))))


(defun lafst/b/look-for-close-angle-bracket/2 ()
  ;; we got the token "<" from next-terminal, and we peeked at
  ;; +1 and saw a "s"
  (let ((next-char (elt *character-buffer-in-use*
                        (+ 2 *index-of-next-character*))))
    (if (eql #\^d next-char)
      (break "buffer swap")
      (if (eql #\> next-char)
        ;; then we've found it
        (then (setq *index-of-next-character*
                    (+ 2 *index-of-next-character*))
              (next-token))
        word::open-angle-bracket))))

(defun lafst/b/look-for-s/2 ()
  ;; <, "/" is pending in the peek
  (let ((next-char (elt *character-buffer-in-use*
                        (+ 2 *index-of-next-character*))))
    (if (eql #\^d next-char)
      (break "buffer swap")
      (if (eql #\s next-char)
        (lafst/b/look-for-close-angle-bracket/3)
        word::open-angle-bracket))))

(defun lafst/b/look-for-close-angle-bracket/3 ()
  (let ((next-char (elt *character-buffer-in-use*
                        (+ 3 *index-of-next-character*))))
    (if (eql #\^d next-char)
      (break "buffer swap")
      (if (eql #\> next-char)
        (then (setq *index-of-next-character*
                    (+ 3 *index-of-next-character*))
              (next-token))
        word::open-angle-bracket))))
  



#|  this version gets funny interactions with what displays
    and whether the actions on "<" are taken.
(defun lookahead-for-sentence-tag ()
  ;; we've seen "<"
  (let ((next-word (next-token)))
    (cond ((eq next-word word::forward-slash)
           (lafst/look-for-s-after-slash))
          ((eq next-word word::|s|)
           (lafst/look-for-close-bracket/after-s))
          (t ;; return the angle-bracket and buffer the slash
           (kpush next-word *buffered-token*)
           word::open-angle-bracket))))


(defun lafst/look-for-s-after-slash ()
  ;; we've seen "</"
  (let ((next-word (next-token)))
    (if (eq next-word word::|s|)
      (lafst/look-for-close-bracket/after-s/after-slash)
      (else
        (kpush next-word *buffered-token*)
        (kpush word::forward-slash *buffered-token*)
        word::open-angle-bracket))))
        

(defun lafst/look-for-close-bracket/after-s ()
  ;; we've seen "<s"
  (let ((next-word (next-token)))
    (if (eq next-word word::close-angle-bracket)
      ;; we found it. To deep-six it we just return the token
      ;; that follows it.
      (next-token)
      (else
        (kpush next-word *buffered-token*)
        (kpush word::|s| *buffered-token*)
        word::open-angle-bracket *buffered-token*))))


(defun lafst/look-for-close-bracket/after-s/after-slash ()
  ;; we've seen "</s"
  (let ((next-word (next-token)))
    (if (eq next-word word::close-angle-bracket)
      ;; we found it. To deep-six it we just return the token
      ;; that follows it.
      (next-token)
      (else
        (kpush next-word *buffered-token*)
        (kpush word::|s| *buffered-token*)
        (kpush word::forward-slash *buffered-token*)
        word::open-angle-bracket *buffered-token*))))
|#


;;;-------------------------------------
;;; field for the dateline:  <dateline>
;;;-------------------------------------

(define-category Dateline)

(define-sgml-tag  "dateline" 'Dateline
  :initiation-action  'start-Dateline-section
  :termination-action 'end-Dateline-section )


(defun start-Dateline-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  nil )


(defun end-Dateline-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-Dateline interior-start
                                         interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::Dateline
                  :referent source
                  :rule (sgml-tag-named "dateline")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-Dateline (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    (declare (ignore layout))
    :analysis-of-Dateline-not-written ))

