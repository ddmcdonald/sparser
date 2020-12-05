;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2014-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "affix rules"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2020

;; moved over from preterminals code 5/11/93, v2.3
;; 0.1 (3/28/94) changed the 'rule' on these edges from :known-affix to
;;      :spelling-based-edge
;; 0.2 (7/13/94) added more data to the edge
;;     (1/9/95) added Introduce-morph-brackets-from-unknown-word. 1/23 refining
;;      its treatment.
;; 1.0 (7/25/14) Drastic makeover. Droped the DM&P way of introducing new
;;      individuals. Added vastly bigger set of morphological options.
;;      Assigning the brackets to the word rather than introducing them
;;      right now, which simplifies the action by making it just as
;;      though the word had been predefined. Making the words denote categories
;;      using same flag and code as Comlex.
;;     (11/6/14) Added setup-unknown-word-by-default

(in-package :sparser)

;;;-------------------------------------------
;;; default assumptions about an unknown word
;;;-------------------------------------------

(defun setup-unknown-word-by-default (word)
  "Called from make-word/all-properties/or-primed when we need
  to have a category & rule setup for a word but have no information
  about it that might help us, e.g. no known suffix and no entry in
  Comlex. If we had information from some educated source for a
  particular sublanguage then we would be able to make a better decision. 
  And we might be able to do this from the lexical context that its part of,
  but this is a fallback."
  (tr :unknown-word-defaulted-to-noun word)
  (let ((*source-of-unknown-words-definition* :default))
    (declare (special *source-of-unknown-words-definition*))  
    (add-new-word-to-catalog word :default)
    (if *edge-for-unknown-words*
      (setup-common-noun word)
      (assign-brackets-as-a-common-noun word))))



;;;------------------------------------------
;;; Assigning brackets and making categories
;;;------------------------------------------

(defparameter *unknown-word* nil "Dynamically bound to the original unknown word")

(defparameter *show-morphs* nil "Store data on the unknowns")
(defparameter *block-verbification* t "Gates flet function below")
(defparameter *show-verbification* nil "Announce them")
(defparameter *verbified-nouns* nil "Accumulates a list of them")

;; (trace-morphology)

(defun assign-morph-brackets-to-unknown-word (word morph-keyword)
  "Called from make-word/all-properties, which is itself called
   on the way back from the tokenizer."
  (declare (special *show-sentence-for-early-errors*))
  (tr :defining-unknown-word-from-morph word morph-keyword)

  (let ((*source-of-unknown-words-definition* :morphology)
        (*unknown-word* word))
    (declare (special *source-of-unknown-words-definition* *unknown-word*))

    (mark-definition-source word)
    
    (flet ((block-verbified-nouns (lemma)
             ;; originally put in to block creation of a verb form of "residue"
             ;;  based in a typo "residued"
             (declare (special *verbified-nouns*))
             (when (and (category-p (form-of lemma))
                        (eq (cat-symbol (form-of lemma)) 'category::common-noun)
                        (names-bio-chemical-entity? lemma))
               (unless *sentence-making-sweep*
                 (when *show-verbification*
                   (warn "^^^^Refusing to verbify a previously defined noun ~s~%" word)
                   (pushnew (pname word) *verbified-nouns* :test #'equal))))))
  
      (push-debug `(,word ,morph-keyword)) ;;(break "fix stemming")
      (add-new-word-to-catalog word morph-keyword)

      (setq morph-keyword (no-morph-on-short-words word)) ;; one-syllable

      (when (and *show-morphs* morph-keyword)
        (push (list morph-keyword word) *show-morphs*))

      (etypecase morph-keyword
        (null
         ;; we get here on short words where morphologically explict
         ;; cases ('ly') are thrown out. Look for a comlex entry
         ;; then default to noun.
         (let ((entry (gethash (pname word) *primed-words*)))
           (if entry
             (then
               (tr :make-word/entry entry)
               (unpack-primed-word word (word-symbol word) entry))
             (setup-unknown-word-by-default word))))
        (keyword
         (case morph-keyword
           ;;(:ends-in-s) ;; always ambiguous?
           (:ends-in-ed
            (let ((lemma (stem-form word)))
              (tr :defining-lemma-as-given-morph lemma 'verb)
              (if *edge-for-unknown-words*
                (or (when *block-verbification* (block-verbified-nouns lemma))
                    (else (setup-verb lemma)
                          (sanity-check-word-formation word lemma :ed)))
                (assign-brackets-as-a-main-verb lemma))))

           (:ends-in-ing
            (let ((lemma (stem-form word)))
              (tr :defining-lemma-as-given-morph lemma 'verb)
              (if *edge-for-unknown-words*
                (or (when *block-verbification* (block-verbified-nouns lemma))
                    (let ((category (setup-verb lemma)))
                      #+ignore(when already-exists?
                                (reconcile-lemma-and-original category already-exists? :ing))
                      (sanity-check-word-formation word lemma :ing)))
                (assign-brackets-as-a-main-verb lemma))))
           
           (:ends-in-ly
            (tr :defining-as-given-morph 'adverb)
            (if *edge-for-unknown-words*
              (setup-adverb word)
              (assign-brackets-to-adverb word)))
           
           (otherwise
            (push-debug `(,word ,morph-keyword))
            (error "Unexpected affix keyword: ~A"
                   (word-morphology word)))))
        
        (cons
         (let ((morph-key (cadr morph-keyword))) ;; e.g. ("ible" ADJ)
           (ecase morph-key
             (n
              (tr :defining-as-given-morph 'noun)
              (if *edge-for-unknown-words*
                (setup-common-noun word)
                (assign-brackets-as-a-common-noun word)))
             (adj
              (tr :defining-as-given-morph 'adjective)
              (if *edge-for-unknown-words*
                (setup-adjective word)
                (assign-brackets-to-adjective word)))
             (comparative
              (tr :defining-as-given-morph 'adjective)
              (if *edge-for-unknown-words*
                (setup-comparative word)
                (assign-brackets-to-adjective word)))
             (superlative
              (tr :defining-as-given-morph 'adjective)
              (if *edge-for-unknown-words*
                (setup-superlative word)
                (assign-brackets-to-adjective word)))
             (v
              (tr :defining-as-given-morph 'verb)
              (if *edge-for-unknown-words*
                (setup-verb word)
                (assign-brackets-as-a-main-verb word))))))))))


;; Turns out not to be necessary. Leaving it for a little while
;; in case something simlar turns up (ddm 8/31/17)
(defun reconcile-lemma-and-original (category original-word morph-case)
  "Find the corresponding new word for the original one.
   Steal its rule-set to merger with the rs or the original.
   Delete the new one. Rewrite the new rule to use the original."
  (push-debug `(,category ,original-word ,morph-case))
  (let ((original-rule-set (rule-set-for original-word))
        (rules (get-rules category))
        (form (ecase morph-case
                (:ing (category-named 'verb+ing))
                (:ed (category-named 'verb+ed)))))
    (push-debug `(,rules))
    (let ((cfr-to-modify (loop for cfr in rules
                            when (eq (cfr-form cfr) form)
                            return cfr)))
      (push-debug `(,original-word ,cfr-to-modify))
      (lsp-break "now"))))


;;;------------------------
;;; morphology-based edges
;;;------------------------

#| These are very old routines that considerably predate the
 assign-morph-brackets-to-unknown-word function that is supposed
 to be the way we deal with them. However, it turns out that
 they're still being used and it's as yet (9/26/16) unclear why
 since they're largely redundant with the assign function except
 for making the edge. The path to here is
   scan-terminals-loop
     preterminals-for-unknown
       consider-morphology-based-edges
         make-edge-based-on-morphology

 One prime suspect is a failure in the setup routines invoked
 by assign-morph-brackets-to-unknown-word, which can happen when
 there's an already defined word with a different part of speech
 and the duplication is prohibited, e.g. in setup-verb where there
 is a check for a pre-existing noun reading. 
|#

(defun make-edge-based-on-morphology (word
                                      position-scanned
                                      next-position)
  "This is invoked as part of install-terminal-edges whenever
   the word either does not have a rule set or its rule set
   doesn't call for making an edge (rule-set-with-rules).
   The next level is preterminals-for-unknown which sorts out
   capitalization variation and then invokes the proximal caller,
   consider-morphology-based-edges, provided that the word has
   a non-nil morphology field and the flag
   *make-edges-for-unknown-words-from-their-suffixes* is up.
      Note that the edge-maker this calls will use a 'setup'
   routine to make a category for this word whenever the flag
   *edge-for-unknown-words* is up."
  (declare (special *n-bar-categories*))
  ;;(lsp-break "making morph edge for ~a with ~a" word (word-morphology word))
  
  (etypecase (word-morphology word)
    (keyword
     (ecase (word-morphology word)
       (:ends-in-s   (make-morph-edge-over-unknown-word
                      word position-scanned next-position
                      category::ends-in-s))
       (:ends-in-ed
        (let ((lemma (stem-form word)))
          (if (and (category-p (form-of lemma))
                   (member (cat-symbol (form-of lemma)) *n-bar-categories*))
              nil
              (make-morph-edge-over-unknown-word
               word position-scanned next-position
               category::verb :lemma lemma))))
       (:ends-in-ing
        (let ((lemma (stem-form word)))
          (if (and (category-p (form-of lemma))
                   (member (cat-symbol (form-of lemma)) *n-bar-categories*))
              nil
              (make-morph-edge-over-unknown-word
               word position-scanned next-position
               category::verb :lemma lemma))))
       (:ends-in-ly  (make-morph-edge-over-unknown-word
                      word position-scanned next-position
                      category::adverb))))
    (cons
     (let ((morph-key (cadr (word-morphology word))))
       (ecase morph-key
         (adj 
          (make-morph-edge-over-unknown-word
           word position-scanned next-position
           category::adjective))
         (adv
          (make-morph-edge-over-unknown-word
           word position-scanned next-position
           category::adverb))
         (n
          (make-morph-edge-over-unknown-word
           word position-scanned next-position
           category::noun))
         (v
          (make-morph-edge-over-unknown-word
           word position-scanned next-position
           category::verb)))))))


(defun make-morph-edge-over-unknown-word (word pos-before pos-after
                                          form-category &key lemma)
  "Called from Make-edge-based-on-morphology during the process
   of introducing edges over single words. If the *edge-for-unknown-words*
   flag is up, it calls the appropriate 'setup' routine to have a category
   constructed to go with the word."
  (declare (special *edge-for-unknown-words*))
  
  (let* ((edge (make-edge-over-unknown-word
                word pos-before pos-after
                form-category :spelling-based-edge))
         (category (when *edge-for-unknown-words*
                     (form-dispatch-setup (or lemma word) form-category)))
         (referent (or category word)))

    (when category
      (setf (edge-category edge) category))

    (tr :morph-edge-with-generated-category? word category)
    
    (setf (edge-form edge) form-category)
    (set-edge-referent edge referent)
    (setf (edge-right-daughter edge) :morphology-based-edge)
    (setf (edge-rule edge) :word-affix-morphology)

    (tr :making-edge-over-unknown-word/morph edge)

    (list edge)))


;;;-----------------------------------------------
;;; Block known bad conversions. Collect evidence
;;;-----------------------------------------------

(defparameter *announce-bad-affixes* nil
  "flag used in sanity-check-word-formation")
    
(defun sanity-check-word-formation (word lemma type)
  "The rules for forming +ing and +ed verb forms from a lemma
   will make mistakes in applying their criteria for when the
   final consonant is doubled. If that happened, then the rule
   set will be on a word that doesn't occur, e.g. 'anchorring'.
   We make a new rule set and unary rule for the correct 
   word ('anchoring') copying as much as possible."
  (declare (optimize (speed 1)(safety 3)(debug 3)))
  (unless (rule-set-for word)
    ;; It will have a rule set if the affix was added correctly
    (let* ((bad-word (ecase type
                       (:ed (ed-form-of-verb lemma))
                       (:ing (ing-form-of-verb lemma))))
           (bad-rs (rule-set-for bad-word))
           (bad-rule (car (rs-single-term-rewrites bad-rs)))
           (new-rs (establish-rule-set-for word)))
      (when *announce-bad-affixes*
        (format t "~&Bad ~a form: ~a~%" type bad-word))
      (if bad-rule                 ;; funny case with "residued"
        (let ((new-rule (construct-cfr ;; as basic as possible
                         (cfr-category bad-rule)
                         (list word)
                         (cfr-form bad-rule)
                         (cfr-referent bad-rule)
                         :def-cfr ;; well sort of
                         (cfr-schema bad-rule))))
          (when *announce-bad-affixes*
            (format t "~&New rule: ~a~%" new-rule))

          (setf (rs-single-term-rewrites new-rs) (list new-rule))
          (setf (rs-phrase-boundary new-rs) (rs-phrase-boundary bad-rs)))
        (format t "~&Bad ~a form (XXX): ~a~%" type bad-word)))))


(defun names-bio-chemical-entity? (lemma)
  (let* ((cfr (find-single-unary-cfr lemma))
         (ltype (and cfr (cfr-referent cfr)
                     (itype-of (cfr-referent cfr)))))
    (when (itypep ltype 'bio-chemical-entity)
      (when *show-verbification*
        (warn "blocking verbification of ~s" lemma))
      t)))

(defun warn-about-verbified-nouns ()
  "Called as the last action taken by scan-terminals-loop, which is
   just before the drivers call sentence-processing-core to do the
   'above the word' parsing. 
"
  (declare (special *verbified-nouns*))
  (let ((verbified
         (loop for v in (remove "inding" *verbified-nouns* :test #'equal)
            when (or (search (format nil " ~a" v) (current-string) :test #'equal)
                     (search (format nil "-~a" v) (current-string) :test #'equal))
            collect v)))
    (when verbified
      (warn "verbified noun(s) ~s in ~s~%"
            verbified (current-string)))))
