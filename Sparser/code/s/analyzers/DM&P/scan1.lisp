;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: scan1.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;;
;;;      File:  "scan"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  1.1 February 2007

;; initiated 3/28/94 v2.3. 5/23 fleshing out.  7/11,12,13,14 cont. fleshing out more cases
;; 1.0 (7/21) reconceptualized some of the operations and split out [mine]
;;     (8/12) added case of a segment consisting of just a pair-term
;;     (8/15) elaborated means of filtering multiple single-term edges
;;     (9/15) added a further elaboration that checks for "one"
;; 1.1 (11/16) fixed a glitch in Interesting-form-category
;;     (12/30) added Filter-literals (1/3/95) added Single-best-edge-from-vector
;;     (1/17) added 'no-content-words-VG'
;;     (2/5/07) converted e{type}case to use otherwise & break. Added categories for
;;      "-section"

(in-package :sparser)


;;;----------------------------
;;; categorization of segments
;;;----------------------------

(define-category  no-content-words-VG)

(define-category  one-content-word-no-label)
(define-category  one-content-word-NP)
(define-category  one-content-word-VG)
(define-category  one-content-word-ADV)
(define-category  one-content-word-section)

(define-category  two-content-words-no-label)
(define-category  two-content-words-NP)
(define-category  two-content-words-VG)
(define-category  two-content-words-section)

(define-category  three-content-words-no-label)
(define-category  three-content-words-NP)
(define-category  three-content-words-VG)
(define-category  three-content-words-section)

;; A lot of these are probably the result of bad segmentation
(define-category  four-content-words-no-label)
(define-category  four-content-words-NP)
(define-category  four-content-words-VG)
(define-category  four-content-words-section)

(define-category  five-content-words-no-label)
(define-category  five-content-words-NP)
(define-category  five-content-words-VG)
(define-category  five-content-words-section)

(define-category  six-content-words-no-label)
(define-category  six-content-words-NP)
(define-category  six-content-words-VG)
(define-category  six-content-words-section)


;;;----------------------------------------------
;;; predicates involving segment categorizations
;;;----------------------------------------------

(defun one-word-segment? (s)
  (let ((category (value-of 'form s)))
    (case (cat-symbol category)
      (category::one-content-word-no-label t)
      (category::one-content-word-NP t)
      (category::one-content-word-VG t)
      (category::one-content-word-ADV t)
      (otherwise nil))))

(defun two-word-segment? (s)
  (let ((category (value-of 'form s)))
    (case (cat-symbol category)
      (category::two-content-words-no-label t)
      (category::two-content-words-NP t)
      (category::two-content-words-VG t)
      (otherwise nil))))

(defun three-word-segment? (s)
  (let ((category (value-of 'form s)))
    (case (cat-symbol category)
      (category::three-content-words-no-label t)
      (category::three-content-words-NP t)
      (otherwise nil))))


;;;--------------------------
;;; determining the category
;;;--------------------------

(defun categorize-segment (segment items  &optional marked-category)
  ;; the 'items' are denotations returned by a mining operation.
  (let* ((item-count (length items))
         (category
          (if (= 1 item-count)
            (cond ((not (individual-p (first items)))
                   (segment-category-as-length-and-prefix
                    item-count marked-category))
                  ((itypep (first items) 'pair-term)
                   (category-named 'pair-term))
                  (t (segment-category-as-length-and-prefix
                      item-count marked-category)))
            (segment-category-as-length-and-prefix item-count
                                                   marked-category))))

    (bind-variable 'form category segment)
    (bind-variable 'terms items segment)

    (when (> item-count 2)
      (scan-segment-items-adjacencies items segment))

    ;;/// bind the segment as an 'instance' to
    ;; each item -- a complement to the 'term' binding ?
    ;; !! something to that effect will be required once it becomes
    ;; to expensive to keep segments around very long

    category ))



(defun segment-category-as-length-and-prefix (length marked-category)
  (let ((label (if marked-category
                 (case (cat-symbol marked-category)
                   (category::np         "NP")
                   (category::np-head    "NP")
                   (category::proper-noun  "NP")
                   (category::possessive "NP")
                   (category::adjp       "NP")
                   (category::verb       "VG")
                   (category::verb+s     "VG")
                   (category::verb+ed    "VG")
                   (category::verb+ing   "VG")
                   (category::verb+present  "VG")
                   (category::verb+passive  "VG")
                   (category::infinitive    "VG")
                   (category::vg        "VG")
                   (category::modal     "VG")
                   (category::adverb    "ADV")
		   (category::section-header "SECTION")
		   (otherwise
		    (break "Unexpected marked-category: ~a"
			   marked-category)))
                 "NO-LABEL")))

    (let* ((category-namestring-prefix
            (case length
              (0 "NO-CONTENT-WORDS")
              (1 "ONE-CONTENT-WORD")
              (2 "TWO-CONTENT-WORDS")
              (3 "THREE-CONTENT-WORDS")
              (4 "FOUR-CONTENT-WORDS")
              (5 "FIVE-CONTENT-WORDS")
              (6 "SIX-CONTENT-WORDS")
	      (otherwise
	       (break "Need to add more words for segments. Length = ~a"
		      length))))
           (category-namestring
            (concatenate 'string
                         category-namestring-prefix "-" label))
           (category
            (category-named (intern category-namestring
                                    *category-package*))))
      (unless category
        (break "Need to define the segment category: ~A" category-namestring))
      category )))




;;;-------------------------------------
;;; categorizing the form of a new term
;;;-------------------------------------

(defun interesting-form-category (word)
  (let ((morph (word-morphology word)))
    (cond ((verb? word)
           ;; this is a check as to whether the verb is known as such
           ;; and was given verb brackets
           (if morph
             (case morph
               (:ends-in-s  category::verb+s)
               (:ends-in-ed  category::verb+ed)
               (:ends-in-ing  category::verb+ing)
	       (otherwise
		(break "New morphology case: ~a" morph)))
             category::verb))
          ((eq morph :ends-in-ly)  category::adverb)
          (t nil))))







;;;------------------------------------------------------------
;;; noting known edges for later analysis of segment structure
;;;------------------------------------------------------------

(defun dm&p-Analyzable-record-of-edge (edge)
  (let ((label (edge-category edge)))
    (typecase label
      (word label)  ;; e.g. "the", "a"
      (category
       (break "Stub: what's an analyzable record for a vanila category?"))
      ((or referential-category mixin-category)
       (edge-referent edge))
      (otherwise
       (break "New kind of label: ~a" label)))))



;;;---------------
;;; vetting edges
;;;---------------

(defun single-best-edge-over-word (pos-before)
  (let ((result (only-nontrivial-edges
                 (all-preterminals-at pos-before))))
    (unless result
      (break "Shouldn't happen:  nontriv. edge-check returned 'nil'"))

    (typecase result
      (cons (highest-preterminal-at pos-before))
      (edge result)
      (otherwise
       (break "New type of result: ~a" result)))))


(defun single-best-edge-from-vector (ev)
  ;; Assumes we have a 'starting-at' vector.  Only makes sense
  ;; when there's an ambiguity, so also assuming the relevant edges
  ;; span only one word
  (single-best-edge-over-word (ev-position ev)))

;;--- literals

(defun only-nontrivial-edges (list-of-edges)
  ;; version threaded from Single-best-edge-over-word
  (let ( vetted-edges  label )
    (dolist (edge list-of-edges)
      (setq label (edge-category edge))

      ;; no literals
      (unless (word-p label)
        ;; no morph edges
        (unless (eq label category::capitalized-word)
          (push edge vetted-edges))))

    (when vetted-edges
      (let ((edges (nreverse vetted-edges)))
        (if (cdr edges)
          (prefer-edge-referring-to-terms edges)
          (list (first edges)))))))


(defun filter-literals (ev)
  ;; stand-alone version. Assumes we have a 'starting-at' vector,
  ;; otherwise we need a different edge-collector
  (let ( vetted-edges )
    (dolist (edge (all-preterminals-at (ev-position ev)))
      (unless (word-p (edge-category edge))
        (push edge vetted-edges)))
    (nreverse vetted-edges)))




;;--- prefer terms

(defun prefer-edge-referring-to-terms (list-of-edges)
  ;; version threaded from Single-best-edge-over-word
  ;; handles problem of "first" taken as an ordinal vs. reified
  ;; as a term (e.g. "Disk First Aid")
  (let ( term-edges )
    (dolist (edge list-of-edges)
      (when (individual-p (edge-referent edge))
        (push edge term-edges)))

    (if (cdr term-edges)
      (take-top-edge-if-they-chain term-edges)
      term-edges)))


(defun take-top-edge-if-they-chain (list-of-edges)
  ;; presupposing these are all the same length or start at the same position
  (let ((start-pos (pos-edge-starts-at (first list-of-edges))))
    (if (edges-all-chain start-pos :start)
      (list (ev-top-node (pos-starts-here start-pos)))
      (check-for-all-being-number-edges list-of-edges))))


(defun check-for-all-being-number-edges (list-of-edges)
  (let ((all-numbers? t)  representative-edge  )
    (dolist (edge list-of-edges)
      (typecase (edge-category edge)
        ((or referential-category category mixin-category)
         (case (cat-symbol (edge-category edge))
           (category::number          (setq representative-edge edge))
           (category::digit-sequence  (setq representative-edge edge))
           (category::ones-number     (setq representative-edge edge))
           (category::tens-number     (setq representative-edge edge))
           (category::teens-number    (setq representative-edge edge))
           (category::multiplier      (setq representative-edge edge))
           (otherwise
            (setq all-numbers? nil))))
        (word )
        (otherwise
         (setq all-numbers? nil))))

    (if all-numbers?
      (list representative-edge)
      (check-for-the-word-being-one list-of-edges))))


(defun check-for-the-word-being-one (list-of-edges)
  (let ((random-daughter (edge-left-daughter (second list-of-edges))))
    ;; in the problematic case (9/15 PT, token id 10,110) the word
    ;; "one" has gotten an interpretation as a term and the first
    ;; edge, 'number', has :multiple-initial-edges as its left-daughter
    (if (and (word-p random-daughter)
             (eq random-daughter (word-named "one")))

      (list (second list-of-edges))
      ;; has to be a list because Mine-head/edge? etc. take car's on it

      (prefer-capitalized-sequences list-of-edges))))


(defun prefer-capitalized-sequences (list-of-edges)
  ;; you can get a term and its capitalized version over the same word
  (let ((caps-edge
         (find (category-named 'capitalized-sequence)
               list-of-edges
               :key #'edge-category)))
    (if caps-edge
      (list caps-edge)

      ;; give up
      list-of-edges)))



;;---------- alternative alg -- should be merged

(defun nontrivial-terminal-edge-at (p)
  ;; C&S -- later we'll merge these
  (let ((edges (only-nontrivial-edges (all-preterminals-at p))))
    (when edges
      (if (cdr edges)
        (unless (edges-all-chain p :start)
          ;; 7/27 stub
          (format t "more than one non-trivial terminal edge:~
                     ~%      ~A~%" edges)
          ;(break "more than one edge was nontrivial:~
          ;        ~%~A" edges)
          (car edges))
        (car edges)))))

