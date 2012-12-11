;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2012 David D. McDonald
;;;
;;;     File: "comlex-unpacking"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  December 2012

;; Extracted from one-offs/comlex 12/3/12

(in-package :sparser)

;;;---------------------------------------------
;;; 'Activating' the primed words at parse-time
;;;---------------------------------------------

;; This is where we get when what-to-do-with-unknown-words
;; (in objects/chart/words/lookup/switch-new1) is set to
;; :check-for-primed (vs. e.g. :ignore). That function switch
;; sets the function establish-unknown-word to the function
;; look-for-primed-word-else-all-properties (in objects/chart/
;; words/lookup/new-words4).

(defun unpack-primed-word (symbol entry)
  ;; Called from look-for-primed-word-else-all-properties when
  ;; what-to-do-with-unknown-words is set to :check-for-primed.
  ;; The lookup is (gethash (symbol-name symbol) *primed-words*)
  ;; where the symbol is pulled out of the lookup buffer.
  ;; Has to return a suitably annotated word.
  (unless (and (listp entry) (eq (car entry) :comlex))
    (push-debug `(,symbol ,entry))
    (error "Ill-formed entry:~%  ~a" entry))
  ;; All of the morphological variants of the lemma get the
  ;; same entry. If we see any one of them we fire up the
  ;; entire set (simpler that way). The 'instance' is what
  ;; we've just seen, and the 'lemma' is the head word of
  ;; the entry.

  (let* ((instance-word (make-word-from-lookup-buffer))
         (instance-string (word-pname instance-word))
         (lemma-string (cadr entry))
         (lemma-word (if (string= (word-pname instance-word)
                                  lemma-string)
                       instance-word
                       (resolve-string-to-word/make lemma-string)))
         (clauses (cddr entry)))
    (tr :unpacking instance-word)
    (cond
      ((= (length clauses) 1)
       (unambiguous-comlex-primed-decoder lemma-word (car clauses)))
      ((string-equal lemma-string instance-string)
       (ambiguous-comlex-primed-decoder lemma-word clauses))
      (t ;; maybe there's a quicker disambiguation based on
       ;; this irregular form /// or maybe not
       ;;(or (look-for-and-decode-comlex-irregular instance-string clauses)
       (ambiguous-comlex-primed-decoder lemma-word clauses)))
    instance-word ))



#| Design (12/10/12)

Every word gets a rule that will create an edge over it. Several rules
if it has several parts of speech. We do NOT get brackets off these
rules, the brackets always come from the words per se. Fine-grained
form information goes on the rule/edge where its accessible to the
segmentation judgements. This goes under a switch so that we can turn
if off. 

We create a category for each word to serve as the locus of its
meaning, again based on its part of speech. Words with multiple parts
of speech all get get the same referent in their rules, at least until
we find a reason to do otherwise. Makes good sense for "attack".
We don't take any short cuts here so that it's trivial to invert
these rules. May have to refactor some of the tree family machinery
to do this. 

At the point when we need to deal with words that have truly ambigous
meaning ("bank", "flight") then we'd have different referential categories
for them, but my guess is that we don't need these for Grok -- uniformity
of topic => uniformity of word senses. 

As the going in assumption we use the category that we create for the
word as the label on its edge. For multiple POS words we depend on the
form label to do the work of differentiating their effects.

When subtypes are reintstated, much of the form will be reflected in
the specialized referents. Based forms come from the lemma forms of
the words. 

[[ N.b. we don't have this for all of the function words but we're tending
in that direction, so there will be revisions required, and some thinking
to get the distribution of information sorted out to the most useful
places. ]]


|#


(defmethod unambiguous-comlex-primed-decoder ((lemma word) clause)
  "Identify any inflected forms and define words for them. Assign brackets
   to all the words. ////For the moement anyway, not creating any edges
   but just looking at the resulting segmentation of the text."
  (tr :unpacking-unambiguous (car clause))
  (let ((pos-marker (car clause))
        (properties (cdr clause)))
    (case pos-marker
      (noun 
       (plural-words-given-CL-clause lemma clause)
       ;; from make-cn-rules
       (assign-brackets-as-a-common-noun lemma))
      (adjective ;; open-codes define-adjective
       (assign-brackets-to-adjective lemma)
       ;;(make-minimal-word-form-rule lemma 'adjective) ;;/// huh????
       )
      (adverb ;
       ;; The morphology rule for adverbs also assigns .[adverb
       ;; but the adverb file is careful, so we'll be conservative
       ;; and see what happens -- most of these will be ordinary
       ;; "ly" adverbs
       ;; Note that this write a rule spanning with adverbial
       (define-adverb lemma)) ;; assigns ].adverb, .[adverb
      (verb
       (decode-and-instantiate-primed-verb lemma clause))
      (prep
       ;; Creates a category the way define-adverb does. 
       (define-preposition (word-pname lemma)))
      (sconj
       ;; See /rules/words/conjunctions.lisp for the explicit list
       (define-isolated-function-word (word-pname lemma)))
      (otherwise
       (push-debug `(,lemma ,clause))
       (error "Unexpected POS marker: '~a' on ~a" pos-marker lemma)))
    (put-property-on-word :comlex properties lemma)))


;; N.b. Comlex has a 'gradable' feature on adjectives, with a flag for er-est

(defmethod ambiguous-comlex-primed-decoder ((lemma word) clauses)
  (let ((combinations (sort (copy-list (mapcar #'car clauses))
                            #'alphabetize)))
    (tr ::unpacking-ambiguous combinations)
    (cond
      ((equal combinations '(adjective noun))
       (brackets-for-adjective-noun lemma))

      ((equal combinations '(adjective adverb))
       (brackets-for-adjective-adverb lemma))

      ((equal combinations '(adjective verb))
       (brackets-for-adjective-verb lemma))

      ((equal combinations '(adjective noun verb))
       (assign-noun-verb-brackets lemma clauses))

      ((equal combinations '(adjective adverb noun))
       (brackets-for-adjective-adverb-noun lemma))     

      ((equal combinations '(adjective adverb noun verb)) 
       (brackets-for-adjective-adverb-noun-verb lemma))

      ((equal combinations '(adverb noun verb))
       (brackets-for-adverb-noun-verb lemma clauses))

      ((equal combinations '(noun verb))
       (assign-noun-verb-brackets lemma clauses))

      ((equal combinations '(adjective noun prep sconj verb)) 
       (brackets-for-adjective-noun-sconj-prep-verb lemma))

      ;; "firm" is four-ways ambiguous

      (t (push-debug `(,lemma ,combinations ,clauses))
         (error "Comlex -- new POS combination for \"~a\:: ~a"
                lemma combinations)))))


;;--- aux

(defmethod plural-words-given-CL-clause ((lemma word) clause)
  "If the Comlex clause stipulates one or more plurals then use them,
   otherwise construct the default plural. Give them brackets as
   a common noun."
  (let ((plural/s ;; includes the default if necessary
         (extract-plurals-from-comlex-entry lemma clause)))
    (when plural/s
      (let ( clause-plural/s )
        (dolist (p-word plural/s)
          (push p-word clause-plural/s)
          (assign-brackets-as-a-common-noun p-word)
          (record-lemma p-word lemma :noun))
        (record-inflections clause-plural/s lemma :noun)
        clause-plural/s))))

(defmethod decode-and-instantiate-primed-verb ((lemma word) clause)
  ;; As originally written, this supplied a category and referent
  ;; to define main-verb, which made it create rules for all the
  ;; verb forms. This leads to impossible situations like "his ice (cream)"
  ;; so stopping that. Leave the rule generation to a later dm&p
  ;; process that can appreciate the context. 
  (let ((special-case-plist (lift-special-case-form-from-comlex-clause clause)))
    (apply #'define-main-verb nil ;; symbol-for-category
           :infinitive (word-pname lemma) special-case-plist)))

(defun lift-special-case-form-from-comlex-clause (clause)
  (unless (eq 'verb (car clause))
    (error "Expected a verb clause and didn't get one"))
  (let ((2d-expr (cadr clause)))
    (case (car 2d-expr)
      ((or :infinitive :tensed/singular :past-tense :present-participle)
       2d-expr)
      (:subc nil)
      (:features nil)
      (otherwise
       (push-debug `(,2d-expr ,clause))
       (error "New case in what's 2d in a verb clause")))))
