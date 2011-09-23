;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "scan no edges"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  0.2 January 1995

;; split out from [scan1] 8/3/94 v2.3
;; 0.1 (11/16) Reorganized how the terms are treated to get them to parse-up into
;;      single constituents.  12/5 took out segment args to Mine-as-verb
;; 0.2 (1/23/95) added check for adverb to Scan-words-and-mine.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun scan-words-and-mine (starts-at ends-at)
  ;; called from dm/Analyze-segment when the coverage shows there
  ;; are no edges within the scanned segment after it has been
  ;; parsed at the segment level.  This means that there are
  ;; no polywords in this segment and that none of the words
  ;; have been encountered before. 
  (tr :dm/scan-words)

  (if (eq (chart-position-after starts-at) ends-at)
    (scan-one-word-segment/unknown starts-at ends-at)

    (let ((word (pos-terminal starts-at)))
      (cond
       ((function-word? word)
        ;; those won't all show up as edges in the standard grammar
        (scan-treetops/fn-word-prefixed (define-segment starts-at ends-at)
                                        starts-at ends-at))
       
       ((adverb? word)
        ;; these won't show up either (certainly if they've been derived
        ;; from the word's morphology
        (mine-adverb word starts-at (chart-position-after starts-at))
        (do-prefixed-verb-group-segment
         (define-segment starts-at ends-at)
         (top-edge-starting-at starts-at)
         starts-at ends-at))
       
       (t (scan-multiword-segment/unknown starts-at ends-at))))))


;;;-----------------------
;;; a single unknown word
;;;-----------------------

(defun scan-one-word-segment/unknown (starts-at ends-at)
  (let* ((s (define-segment starts-at ends-at))
         (word (pos-terminal starts-at))
         (marked-form (interesting-form-category word)))
    
    (unless (punctuation? word)
      (let ((term
             (if marked-form
               (ecase (cat-symbol marked-form)
                 ;(category::noun/verb-ambiguous
                 ; (break "n/v ambig - vet it !!")
                 ; (mine-as-noun/verb starts-at ends-at))
                 (category::verb
                  (mine-as-a-verb word starts-at ends-at))
                 (category::verb+s
                  (mine-as-a-verb word starts-at ends-at))
                 (category::verb+ing
                  (mine-as-a-verb word starts-at ends-at))
                 (category::verb+ed
                  (mine-as-a-verb word starts-at ends-at))
                 (category::adverb
                  (mine-as-adverb word starts-at ends-at s)))
               
               (mine-unmarked-term word starts-at ends-at))))
        
        (package-single-term-segment starts-at ends-at s
                                     term marked-form)))))



(defun package-single-term-segment (starts-at ends-at s
                                    term marked-form)
  (unless marked-form
    (bind-variable 'single-term term s))
  (categorize-segment s (list term) marked-form)
      
  ;; 'mining' the word will have introduced an edge as a side-effect
  ;; but we want a uniform edge reflecting the segment's status
  ;; qua segment, so we pass this on to another routine to
  ;; have that extra edge made
  (span-mined-segment s starts-at ends-at (list term)
                      :label marked-form
                      :form marked-form))



;;;-----------
;;; polywords
;;;-----------

(defun scan-one-polyword-segment/unknown (pw-edge)
  ;; called from Scan-under-edge-covering-whole-segment because that's
  ;; where the toplevel dispatch sends it
  ;;     //// Polywords should probably have the morphology of their
  ;; final word appreciated. When that's done, there could be and
  ;; interesting form category.
  (let ((term (mine-unmarked-term/pw pw-edge))
        (starts-at (pos-edge-starts-at pw-edge))
        (ends-at (pos-edge-ends-at pw-edge)))

    (package-single-term-segment starts-at ends-at
                                 (define-segment starts-at ends-at)
                                 term nil)))



;;;--------------------
;;; more than one word
;;;--------------------

(defun scan-multiword-segment/unknown (starts-at ends-at)
  ;; maybe this dispatch should have been done at Scan-words-and-mine,
  ;; but then maybe some commonalities will emerge, so this seems ok
  ;; for now.
  (let ((length (number-of-terminals-between starts-at ends-at)))
    (case length
      (1 (break "Threading bug: a one word segment should have been ~
                 handled elsewhere"))
      (2 (scan-two-word-segment/unknown starts-at ends-at))
      (otherwise
       (scan-multi-word-segment/unknown starts-at ends-at)))))



(defun scan-two-word-segment/unknown (starts-at ends-at)
  ;; if the two words had been seen before these same operations
  ;; would be done in Mine-treetops/established-terms/2
  (let ((terms (mine-two-unknown-word-sequence starts-at ends-at))
        (s (define-segment starts-at ends-at)))

    (scan-two-unknown-term-segment (first terms) (second terms)
                                   starts-at (chart-position-after starts-at)
                                   ends-at s)))



(defun scan-two-unknown-term-segment (left-term right-term
                                      starts-at midpoint ends-at s)
  (let ((terms (list left-term right-term)))
    (bind-variable 'contains left-term s)
    (bind-variable 'contains right-term s)
    (bind-variable 'adjacent/precedes right-term left-term)
    (bind-variable 'adjacent/follows left-term right-term)
    
    (categorize-segment s terms)

    (let ((pt
           (consider-reifying/adjacent-terms left-term right-term s
                                             starts-at midpoint)))
    
      (span-mined-segment s starts-at ends-at (list pt)))))




(defun scan-multi-word-segment/unknown (starts-at ends-at)
  ;; There are more than two words in the segment.  None of them
  ;; have been seen before.
  (let ((terms (mine-unknown-terms-between starts-at ends-at))
        (s (define-segment starts-at ends-at)))

    (tr :length-of-long-segment
        (number-of-terminals-between starts-at ends-at))

    (categorize-segment s terms)

    ;; ?? what relationships to establish ??
    (let ((compound  ;; a stand-in that does nothing interesting
           (construct-unanalyzed-multiword-compound terms)))
      (span-mined-segment s starts-at ends-at (list compound)))))


(defun mine-unknown-terms-between (starts-at ends-at)
  ;; collect up terms for the words between these positions
  ;; as unmarked and return them as a list.
  (let ((pos starts-at)
        next-pos  word  terms )
    (loop
      (when (eq pos ends-at)
        (return))
      (setq word (pos-terminal pos))
      (setq next-pos (chart-position-after pos))
      (push (mine-unmarked-term word pos next-pos)
            terms)
      (setq pos next-pos))

    (nreverse terms)))
