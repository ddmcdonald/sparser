;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "segments"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  February 2007

;; initiated 3/28/94 v2.3.  (7/12) added interesting labels to the segments
;; (8/2) tweeked printer definitions, cont ... 8/10.  8/23 added verb+object-segment
;; (9/26) added paragraph to printer  9/28 moved printer to [dm&p:display
;; (9/29) added capitalized sequences.    10/31 patched Define-segment to get around
;; a bug in the find routine when there is a segment to be found
;; (11/14) added prefix and discourse-status vars, patched in a call to construct
;; realization records. (11/21) added new seg. label.  2/14/95 added Segment-level-edge?
;; (7/11/96) differentiated verb label cases to treat single word +ing and +ed as participles
;; (8/18) tweeked that to break out single-word +ed segments
;; (2/5/07) Added section-segment. Converted ecase's.

(in-package :sparser)

;;;--------------
;;; the category
;;;--------------

;; There will be a simple version of this category already defined
;; to cover segments when there's no interesting analysis being done
;; when DM&P isn't included in the load.  This flushes it so that
;; we can define a full referential-category in its place.

(eval-when (:load-toplevel :compile-toplevel :execute)
  (when (boundp 'category::segment)
    (delete/category category::segment)))


(define-category  segment
  :specializes nil
  :instantiates self
  :binds ((form . anything)
          (ends-at    :primitive fixnum)
          (starts-at  :primitive fixnum)
          (terms      :primitive cons)

          ;; its relationships to the words it contains
          (single-term . anything)
          (contains . anything)
          (head . anything)
          (classifier . anything)
          (pre-classifier . anything)

          (prefix  :primitive (:or word category))
          (discourse-status  :primitive category)
          )
  :index (:temporary :sequential-keys starts-at ends-at))


(defun segment? (obj)
  (when (individual-p obj)
    (eq (first (indiv-type obj)) category::segment)))


(defun segment-level-edge? (edge)
  (segment? (edge-referent edge)))


;;;-----------------------------------------------------------
;;; form used to make them -- called from a DM&P scan routine
;;;-----------------------------------------------------------

(defun define-segment (starts-at ends-at)
  (let ((s (define-or-find-individual 'segment
             :starts-at (pos-token-index starts-at)
             :ends-at (pos-token-index ends-at))))

    (when (consp s)
      ;; If this is called more than once on the same segment then
      ;; for some reason I don't want to track down yet (10/31/94)
      ;; we get a list of the segment rather the segment
      (setq s (first s)))

    s ))



(defun referent-of-segment (s)
  (when (individual-p s)
    (if (itype s 'segment)

      (let ((head (value-of 'head s)))
        (if head
          head

          (let ((terms (value-of 'terms s)))
            (if terms
              (car (last terms))

              (let ((contains (value-of 'contains s)))
                ;; there may be several of these, but the one
                ;; laid down last may be the most interesting
                (if contains
                  contains

                  (break "Need more possibilities for identifying the ~
                      referent of~%a segment: ~A" s)))))))

      ;; if compositions have gone on among segments, then
      ;; the referent may be valid krisp, but it won't be
      ;; a segment.
      s )))



;;;-------------------------------
;;; heuristic labels for segments
;;;-------------------------------

(define-category  one-word-segment)
(define-category  two-word-segment)
(define-category  multi-word-segment)

(define-category  np-segment)
(define-category  n/v-segment)
(define-category  verb-segment)
(define-category  participle-segment)
(define-category  past-tense-verb-segment)
(define-category  infinitive-segment)
(define-category  adverb-segment)
(define-category  capitalized-segment)

(define-category  subj+verb-segment)
(define-category  subj+vp-segment)
(define-category  verb+object-segment)

(define-category section-segment)

(define-category  no-analysis)



;;;------------------------------
;;; spanning segments with edges
;;;------------------------------

(defun span-mined-segment (segment-object
                           start-pos end-pos
                           sequence-of-daughter-objects 
                           &key label
                                (form category::segment))

  (if (null label)
    ;; then it doesn't have a prefix, so we just care about the number
    ;; of content words involved
    (setq label (case (number-of-terminals-between start-pos end-pos)
                      ;;(length sequence-of-daughter-objects)
                  (1 category::one-word-segment)
                  (2 category::two-word-segment)
                  (otherwise category::multi-word-segment)))

    (else
      ;; otherwise convert the label, which will usually be a form
      ;; category, into one with more meaning for operating over
      ;; largely anonymous segments
      (unless (or (category-p label)
                  (referential-category-p label))
        (break "Data bug: expected ~A to be a category" label))
      (setq label
            (case (cat-symbol label)
              (category::verb      category::verb-segment)  ;; "cannot perform"
              (category::verb+s    category::verb-segment)
              
             (category::verb+ing
               ;; check for full vg vs. participle
               (if (null (cdr sequence-of-daughter-objects))  ;; just the one word
                 category::participle-segment
                 category::verb-segment))

              (category::verb+ed
               ;; check for full vg. Unlike +ing, +ed could be a tensed main verb
               ;; as well as a participle, so we give it its own label to retain
               ;; the vagueness.
               (if (cdr sequence-of-daughter-objects)  ;; more than one word
                 category::verb-segment
                 category::past-tense-verb-segment))

              (category::verb+present  category::verb-segment)
              (category::verb+passive  category::verb-segment)
              (category::infinitive    category::verb-segment)
              (category::vg        category::verb-segment)
              (category::modal   ;; "can choose" <- ?? 7/26/95 /////////
                      category::verb-segment)

              (category::adverb  category::adverb-segment)

              (category::np-head category::np-segment)
              (category::np      category::np-segment)
              (category::adjp    category::np-segment)
              
              (category::proper-name  label)
              (category::proper-noun  label)
              (category::apple-key  label)

              (category::pair-term  category::pair-term)

              (category::capitalized-sequence category::capitalized-segment)

	      (category::section-header category::section-segment)

	      (otherwise
	       (break "Unexpected category label: ~a" label))))))

  (when (null form)
    (let ((morph (word-morphology
                  (pos-terminal (chart-position-before end-pos)))))
      (if morph
        (case morph
          (:ends-in-s (if (eq label category::verb-segment)
                        category::verb+s
                        category::word+s))
          (:ends-in-ed (if (or (eq label category::verb-segment)
                               (eq label category::past-tense-verb-segment))
                         category::verb+ed
                         category::word+ed))
          (:ends-in-ing (if (or (eq label category::verb-segment)
                                (eq label category::participle-segment))
                          category::verb+ing
                          category::word+ing))
          (:ends-in-ly  category::adverb)
	  (otherwise
	   (break "Unexpected word-morphology: ~a" morph)))
        category::segment)))

  (let ((edge
         (make-chart-edge :starting-position start-pos
                          :ending-position end-pos
                          :category label
                          :form form
                          :rule :mined-segment
                          :referent segment-object)))

    (record-realization-patterns sequence-of-daughter-objects
                                 label
                                 segment-object
                                 start-pos end-pos)
    edge ))
