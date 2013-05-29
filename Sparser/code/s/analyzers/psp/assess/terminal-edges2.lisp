;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "terminal edges"
;;;   Module:  "analyzers;psp:assess:"
;;;  Version:  2.7 February 2011

;; initiated 9/12 v2.3
;; 1.1 (10/23) reorganized what kinds of property edges are created
;;      given the explicit marking of character properties in the positions
;;      and the changes to where fsa are triggered.
;; 1.2 (11/23) drastically reorganized everything to install sensitivity to
;;      case in what rules are instantiated.
;; 1.3 (4/23/93) added a status mark on the position
;; 1.4 (5/11) moved morphology-based edges into grammar;rules:syntax
;; 1.5 (5/14) finished a stub
;; 2.0 (5/22) bumped it to preserve the old version of the core routine
;;      Preterminals/word to allow recovery from drastic change to how to
;;      interpret literals and the single-term-rewrite field
;;     (9/14) added traces, ditto (9/16)
;; 2.1 (1/25/94) presumption that the existence of a caps variant ipso facto
;;      meant it was known proved false.
;; 2.2 (3/15) tweeked creation process for literals to retain more information
;;      and reordered literals before single-term rewrites
;;     (5/5) put in sugared call to set position status
;; 2.3 (5/23) an additional level of parens were being put on morph-edges
;; 2.4 (7/18) added a rule that you can't introduce terminal edges over a word
;;      that has already been spanned -- comes up in hacking angle-bracketed
;;      section-markers. 
;; 2.5 (7/25) refined cases of edges over unknowns re. affixes
;; 2.6 (5/22/95) modified Known-preterminals/check-caps to go back to the lowercase
;;      if the variants don't yield edges
;; 2/7 (2/20/11) Refined control of creation of digit edges in preterminals-
;;      for-unknown with *make-edges-over-new-digit-sequences*. 


(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------

(defun install-terminal-edges (word position-scanned next-position)
  (let ((rule-set (word-rules word))
        edges)

    (tr :installing-edges-over-word/un/known word rule-set)

    (if (word-is-spanned? next-position)
      (then
        (tr :install/already-spanned word)
        nil )
      (else
        (setq edges
              (if rule-set
                (then
                  (tr :install/has-rule-set word)
                  (preterminals-for-known
                   rule-set word position-scanned next-position))
                (else
                  (tr :install/no-rule-set word)
                  (preterminals-for-unknown
                   word position-scanned next-position))))

        (tr :edges-installed edges word)

        (when (> (length edges) 1)
          (setup-multiple-initial-edges position-scanned
                                        next-position))

        (set-status :preterminals-installed position-scanned)
        edges ))))


(defun word-is-spanned? (position-after)
  ;; this is a very limited case, but it handles a timing interaction
  ;; where the traversal action on ">" in the case of a section marker
  ;; (e.g. "</para>") will set up an edge over the ">", but then
  ;; if we don't take any action (like this one) another edge will
  ;; be put over the ">" because it is mentioned explicitly in rules,
  ;; and that second edge will be higher than the section marker
  ;; edge, which violates the 'top edges only' criterion.
  (ev-top-node (pos-ends-here position-after)))


;;;-------------------------
;;; known vs. unknown words
;;;-------------------------

(defun preterminals-for-known (rule-set word position-scanned next-position)
  ;; called from Install-terminal-edges
  (let ((variants
         (word-capitalization-variants word)))

    (if variants
      (then
        (tr :install/has-variants-with-other-capitalization word)
        (known-preterminals/check-caps
         rule-set word variants position-scanned next-position))
      (preterminals/word
       rule-set word position-scanned next-position))))


(defun preterminals-for-unknown (word position-scanned next-position)

  (unless (eq word *the-unknown-word*)
    ;; The unknown word policy can be set such that all words that
    ;; aren't defined by the grammar are rendered by the tokenizer
    ;; as this constant word, which, by definition, initiates no edges

    (let ((capitalization-counts
           (word-capitalization-variants word)) ;; field lookup
          (actual-state (pos-capitalization position-scanned)))
      ;; it's not really unknown if it's the lowercase standin that was
      ;; created for a word that has rules only when it occurs in some
      ;; kind of upper or mixed case.

      (cond
       ((eq :digits actual-state)
        ;; it's a new number, i.e. one that doesn't have a simple,
        ;; non-compound name
        (when (or *make-edges-over-new-digit-sequences*
                  *make-edges-for-unknown-words-from-their-properties*)
          (let ((edge (make-edge-over-unknown-digit-sequence
                       word position-scanned)))
            (tr :making-edge-over-digit-sequence edge)
            (list edge))))
       
       (capitalization-counts
        ;; it's the lowercase version of a word that has rules for
        ;; one or more of its uppercase variants, but not for
        ;; this lowercase variant.  Accordingly, if this instance of
        ;; the word is lowercase then we stop looking for rules,
        ;; otherwise we dispatch to the routine that sorts out
        ;; the cases.
        (if (eq :lower-case actual-state)
          (then ;; it's not one of the known cases of the word
            (consider-morphology-based-edges
             word position-scanned next-position))
          (else
            (check-caps-variations capitalization-counts
                                   actual-state
                                   position-scanned next-position))))
       
       (t (consider-morphology-based-edges 
           word position-scanned next-position))))))



;;;-------------------------
;;; checking capitalization
;;;-------------------------

(defun known-preterminals/check-caps (rule-set
                                      lc-word capitalized-variants
                                      position-scanned next-position)
  ;; Called from Preterminals-for-known
  ;; The lowercase version of the word has associated rules, but there are
  ;; capitalized variants of the word that may as well, so we check them
  ;; and give them priority.
  (let ((actual-state
         (pos-capitalization position-scanned)))
    (tr :install/actual-capitalization actual-state position-scanned)

    (if (eq :lower-case actual-state)
      ;; then it's the variant we already have the word for (lc-word)
      (preterminals/word rule-set lc-word position-scanned next-position)
      (else
        ;; otherwise we look for rules associated with the variants,
        ;; but go with those of the lowercase version if there aren't 
        ;; any
        (unless (check-caps-variations capitalized-variants actual-state
                                       position-scanned next-position)
          (preterminals/word rule-set lc-word
                             position-scanned next-position))))))


(defun check-caps-variations (capitalized-variants actual-state
                              position-scanned next-position)

  ;; Called from Known-preterminals/check-caps.
  ;; The variants parameter is a list of words with specific, non-lowercase
  ;; capitalization as part of their definition.  Each one has some rule(s)
  ;; associated with it or it wouldn't be there.
  ;;   We don't look at the case of the instance being lower-case because
  ;; it's already been checked for upstream.
  (tr :install/caps-variations-are capitalized-variants)

  (if (null (cdr capitalized-variants))
    ;; there's only one
    (let ((word (first capitalized-variants)))
      (if (eq actual-state (word-capitalization word))
        (if (word-rules word)
          (then
            (preterminals/word (word-rules word) word
                               position-scanned next-position))
          (else
            (tr :install/no-rule-set word)
            nil))
        (else
          (tr :install/one-doesnt-match-actual-state)
          nil) ))
    (else
      (let ( edges total-edges )
        (dolist (word capitalized-variants)
          (setq edges
                (if (eq actual-state (word-capitalization word))
                  (if (word-rules word)
                    (preterminals/word (word-rules word) word
                                       position-scanned next-position)
                    nil)
                  nil ))
          (when edges
            (setq total-edges (append edges total-edges))))
        total-edges ))))


;;;---------------------------------------
;;; instantiating edges from the rule-set
;;;---------------------------------------

(defun preterminals/word (rule-set word
                          position-scanned next-position)

  ;; If the word is mentioned as a literal in some non-unary rule
  ;; then we install an edge for it, and we look to see if there
  ;; is a single-term rule for the word that rewrites it as another
  ;; word in which case we install that rule's edge rather than
  ;; the default edge that isn't motivated by a rule. This lets
  ;; us handle default form categorizations of words without adding
  ;; more edges than are really called for.
  ;;   This is the final target for many of the threads, including
  ;; check-caps-variations, ///.

  (let ( edge-for-literal form-rule single-term-rules single-term-edges )

    (when (setq single-term-rules (rs-single-term-rewrites rule-set))
      (tr :word-has-n-single-term-rules word single-term-rules)
      (dolist (cfr single-term-rules)
        (when (word-p (cfr-category cfr))
          (setq form-rule cfr)
          (return))))

    (when (or (rs-left-looking-ids rule-set)
              (rs-right-looking-ids rule-set))
      (tr :mentioned-in-rule word)
      (setq edge-for-literal
            (if form-rule
              (install-preterminal-edge form-rule word
                                        position-scanned next-position)
              (let ((edge
                     (make-edge-over-literal word
                                             position-scanned next-position
                                             rule-set)))
                (tr :making-edge-over-literal edge)
                edge ))))
    
    (when single-term-rules
      (tr :has-single-term-rewrites word single-term-rules)
      (dolist (cfr single-term-rules)
        (if (word-p (cfr-category cfr))
          (if edge-for-literal
            (then ;; we've already installed this one, but
              ;; we can improve it's description
              (if (edge-rule edge-for-literal)
                (push cfr (edge-rule edge-for-literal))
                (setf (edge-rule edge-for-literal) cfr)))
            (push (install-preterminal-edge
                   cfr word position-scanned next-position)
                  single-term-edges))
          (else
            (push (install-preterminal-edge
                   cfr word position-scanned next-position)
                  single-term-edges)))))

    (if edge-for-literal
      (cons edge-for-literal single-term-edges)
      single-term-edges )))



;;;---------------------------------------
;;; edges based on properties of the word
;;;---------------------------------------

(defun consider-morphology-based-edges (word
                                        position-scanned
                                        next-position )

  ;; Called from Preterminals-for-unknown 
  ;; New digit tokens are handled in that routine itself (since it
  ;; has to check for them anyway), and new capitalized words are
  ;; handled by the proper name fsa.  This does all the other cases.
  ;; Return value is the newly formed edges (if any)

  (when (word-morphology word)
    ;; don't bother to make edges unless there's some affix
    ;; to react to.

    (when *make-edges-for-unknown-words-from-their-suffixes*
      (make-edge-based-on-morphology word
                                     position-scanned
                                     next-position))))



;;;-------------------------------------------------
;;; bookeeping used by the Top-edges-only algorithm
;;;-------------------------------------------------

(defun setup-multiple-initial-edges (position-before
                                     position-after)

  (setf (ev-top-node (pos-starts-here position-before))
        :multiple-initial-edges)
  (setf (ev-top-node (pos-ends-here position-after))
        :multiple-initial-edges))

