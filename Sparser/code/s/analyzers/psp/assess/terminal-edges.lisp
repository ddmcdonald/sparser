;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "terminal edges"
;;;   Module:  "analyzers;psp:assess:"
;;;  Version:  January 2020

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
;; 2.7 (2/20/11) Refined control of creation of digit edges in preterminals-
;;      for-unknown with *make-edges-over-new-digit-sequences*. 
;;     (7/2/15) Modified preterminals-for-unknown to make a call to
;;      reify-digit-word so that new digit sequences are remembered.
;; (1/13/16) Patched loophole in judgement of known vs. unknown word
;;   when the word had a polyword fsa but made no edges. Applied to "31".


(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------

;; (*trace-network*)

(defun install-terminal-edges (word position-scanned next-position)
  "Called from introduce-terminal-edges or from do-just-terminal-edges which
   is almost identical. 'position-scanned' is to the left of the word,
   'next-position' is to its right. Looks the rules associated with the word
   and applies all of them. Tries to make the best possible match to
   the actual capitalization of the word (read off the position-scanned)."
  
  (flet ((unneeded-polyword-literal (edge)
           "Filters the returned edges to exclude some odd cases"
           (declare (special word::comma word::|to| *ignore-literal-edges*))
           (when *ignore-literal-edges*
             (and (eq (edge-right-daughter edge) :literal-in-a-rule)
                  (not (eq (edge-category edge) word::comma))
                  (not (eq (edge-category edge) word::|to|)))))
         #+ignore
         (word-is-spanned? (position-after)
           "This is a very limited case, but it handles a timing interaction
            where the traversal action on '>' in the case of a section marker
            (e.g. '</para>') will set up an edge over the '>', but then
            if we don't take any action (like this) another edge will
            be put over the '>' because it is mentioned explicitly in rules,
            and that second edge will be higher than the section marker
            edge, which violates the 'top edges only' criterion."
           (ev-top-node (pos-ends-here position-after))))
  
    (let ((rule-set (word-rules word)))
      (tr :installing-edges-over-word/un/known word rule-set)

      ;; (if (word-is-spanned? next-position)
      ;;   (then
      ;;     (tr :install/already-spanned word)
      ;;     nil)
      ;; Word-is-spanned? triggers for unclear reasons when its called
      ;; from function in the digits fsa on non-canonical digit/punctuation
      ;; sequences

        (let ((edges
               (if (and rule-set
                        (rule-set-with-rules rule-set))
                 (then
                   (tr :install/has-rule-set word)
                   (preterminals-for-known
                    rule-set word position-scanned next-position))
                 (else
                   (tr :install/no-rule-set word)
                   (preterminals-for-unknown
                    word position-scanned next-position)))))
          
          (setq edges (remove-if #'unneeded-polyword-literal edges))

          (tr :edges-installed edges word)
          
          (when (> (length edges) 1)
            (setup-multiple-initial-edges position-scanned
                                          next-position))

          (set-status :preterminals-installed position-scanned)
          edges )))) ;)



;;;-------------------------
;;; known vs. unknown words
;;;-------------------------

(defun preterminals-for-known (rule-set word position-scanned next-position)
  "Called from install-terminal-edges. If the word is known to have variants
   with different capitalizations, prefer the version (and rule set) that
   match the capitalization in this particular instance."
  (let ((variants (word-capitalization-variants word)))
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

    (let ((capitalization-counts (word-capitalization-variants word))
          (actual-state (pos-capitalization position-scanned)))
      ;; it's not really unknown if it's the lowercase standin that was
      ;; created for a word that has rules only when it occurs in some
      ;; kind of upper or mixed case. See do-word-canonical-form for details

      (cond
       ((eq :digits actual-state)
        ;; It's a new number, i.e. a number that wasn't defined
        ;; in the dossier and hasn't already gone through this
        ;; path --  37 rather than 2. 
        (when (or *make-edges-over-new-digit-sequences*
                  *make-edges-for-unknown-words-from-their-properties*)
          (let ((edge (make-edge-over-unknown-digit-sequence
                       word position-scanned)))
            (tr :making-edge-over-digit-sequence edge)
            (reify-digit-word word edge)
            (list edge))))
       
       (capitalization-counts
        ;; This the lowercase version of a word that has rules for
        ;; one or more of its uppercase variants, though not for
        ;; this lowercase variant. Accordingly, if this instance of
        ;; the word is lowercase then we stop looking for rules,
        ;; otherwise we dispatch to the routine that sorts out
        ;; the cases.
        (if (eq :lower-case actual-state)
          (then ;; it's not one of the known cases of the word
            (consider-morphology-based-edges
             word position-scanned next-position))
          (else
            (try-caps-variations capitalization-counts
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
  (let ((actual-state (pos-capitalization position-scanned)))
    (tr :install/actual-capitalization actual-state position-scanned)

    (if (eq :lower-case actual-state)
      ;; then it's the variant we already have the word for (lc-word)
      (preterminals/word rule-set lc-word
                         position-scanned next-position)
      (else
        ;; otherwise we look for rules associated with the variants,
        ;; but go with those of the lowercase version if there aren't any
        (unless (try-caps-variations capitalized-variants actual-state
                                       position-scanned next-position)
          (preterminals/word rule-set lc-word
                             position-scanned next-position))))))


(defun try-caps-variations (capitalized-variants actual-state
                            position-scanned next-position)

  ;; Called from Known-preterminals/check-caps.
  ;; The variants parameter is a list of words with specific, non-lowercase
  ;; capitalization as part of their definition.  Each one has some rule(s)
  ;; associated with it or it wouldn't be there.
  ;;   We don't look at the case of the instance being lower-case because
  ;; it's already been checked for upstream.
  (tr :install/caps-variations-are capitalized-variants)

  (if (null (cdr capitalized-variants)) ;; there's only one
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
  "This is the final target for many of the threads, including
   check-caps-variations. It where we make and install the edge(s).
   If the word is mentioned as a literal in some non-unary rule
   then we install an edge for it. Also we look to see if there
   is a single-term rule for the word that rewrites it as another
   word, in which case we install that rule's edge rather than
   the default edge that isn't motivated by a rule. This lets
   us handle default form categorizations of words without adding
   more edges than are really called for."
  (let ( edge-for-literal form-rule single-term-rules single-term-edges )

    (when (setq single-term-rules (rs-single-term-rewrites rule-set))
      (tr :word-has-n-single-term-rules word single-term-rules)
      ;; Sweep the rules for tacit form characterizations
      (dolist (cfr single-term-rules)
        (when (word-p (cfr-category cfr))
          (setq form-rule cfr)
          (return))))

    (when (or (rs-left-looking-ids rule-set)
              (rs-right-looking-ids rule-set))
      ;; Look for literals. See above.
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
          (cond
            ((punctuation? word)
             (push (install-punctuation-edge
                    cfr word position-scanned next-position)
                   single-term-edges))
            (edge-for-literal
             ;; We've already installed this one, but
             ;; we can improve it's description
             (if (edge-rule edge-for-literal)
               (push cfr (edge-rule edge-for-literal))
               (setf (edge-rule edge-for-literal) cfr)))
            (t
             (push (install-preterminal-edge
                    cfr word position-scanned next-position)
                   single-term-edges)))
          (else
            (push (install-preterminal-edge
                   cfr word position-scanned next-position)
                  single-term-edges)))))

    (cond
     ((and edge-for-literal single-term-edges)
      (tail-cons edge-for-literal single-term-edges))
     (edge-for-literal
      (list edge-for-literal))
     (single-term-edges
      single-term-edges)
     (t nil))))



;;;---------------------------------------
;;; edges based on properties of the word
;;;---------------------------------------

(defun consider-morphology-based-edges (word
                                        position-scanned
                                        next-position )
  "Called from Preterminals-for-unknown when known capitalized variants
   don't apply because the actual capitalization is :lower-case or when
   there are no capitalized variants (new digits are handled in a different
   subroutine). Return value is the newly formed edges (if there are any)"
  
  (when (word-morphology word)
    ;; Don't bother to make edges unless there's some affix to react to.
    (when *make-edges-for-unknown-words-from-their-suffixes*
      (make-edge-based-on-morphology word
                                     position-scanned
                                     next-position))))



;;;-------------------------------------------------
;;; bookeeping used by the Top-edges-only algorithm
;;;-------------------------------------------------

(defun setup-multiple-initial-edges (position-before
                                     position-after)
  "Called from install-terminal-edges when the edges-installing routines
   returned more than one edge. This is where the flag :multiple-initial-edges
   is installed into the edge vector objects."
  (setf (ev-top-node (pos-starts-here position-before))
        :multiple-initial-edges)
  (setf (ev-top-node (pos-ends-here position-after))
        :multiple-initial-edges))


;;;------------------------------------------------------
;;; What word fits the precise presenting capitalization
;;;------------------------------------------------------

(defgeneric word-for-scanned-chars (pos-before pos-after)
  (:documentation "Is there a word that corresponds to the specific
    characters between these two positions. Useful with there are
    words and rules for several capitalization variants of the
    same set of characters.")
  (:method ((pos-before position) (pos-after position))
    (let* ((raw (extract-characters-between-positions pos-before pos-after))
           (pname (trim-whitespace raw)))
      (word-named pname))))


