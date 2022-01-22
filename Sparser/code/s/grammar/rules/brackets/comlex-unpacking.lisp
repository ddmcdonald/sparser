;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2022 David D. McDonald
;;;
;;;     File: "comlex-unpacking"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  January 2022

;; Extracted from one-offs/comlex 12/3/12. Adding cases through 2/22/13
;; and put in the ambiguous flag. 3/14/13 moved edge flag to globals.
;; 7/8/13 added get-comlex-entry for after-the-fact debugging
;; 8/1/13 Added standalone-lexicon-unpacker. 9/23/13 sconj+verb
;; 6/2/14 The split in standalone-lexicon-unpacker had been between
;; words with an entry and then whether the word was known. Simplified
;; its layout and added a parameter to quiet the complaints. 

(in-package :sparser)

#| Design (12/10/12)

Every word gets a rule that will create an edge over it. Several rules
if it has several parts of speech. We do NOT get brackets off these
rules, the brackets always come from the words per se. Fine-grained
form information goes on the rule/edge where its accessible to the
segmentation judgements. This goes under a switch so that we can turn
it off. 

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

;;;---------------------------------------------
;;; 'Activating' the primed words at parse-time
;;;---------------------------------------------

(defparameter *comlex-primed-words* nil
  "Contains a list of all the words that have been 'unpacked'
   by continue-unpacking-lexical-entry during the current session")

;; This is where we end up when what-to-do-with-unknown-words
;; (in objects/chart/words/lookup/switch-new.lisp) is set to
;; :check-for-primed (vs. e.g. :ignore). That function switch
;; sets the function establish-unknown-word to the function
;; look-for-primed-word-else-all-properties (in objects/chart/
;; words/lookup/new-words).

(defun unpack-primed-word (word symbol entry)
  "Called from look-for-primed-word-else-all-properties when
   what-to-do-with-unknown-words is set to :check-for-primed.
   The lookup is (gethash (symbol-name symbol) *primed-words*)
   where the symbol is pulled out of the lookup buffer.
     We also get here in some cases where the word has been
   categorized based on its morphology and can't make a
   clean decision (e.g. :ends-in-s)."
  (unless (and (listp entry) (eq (car entry) :comlex))
    (push-debug `(,symbol ,entry))
    (error "Ill-formed entry:~%  ~a" entry))
  (add-new-word-to-catalog word :comlex)
  (continue-unpacking-lexical-entry word entry))


(defun continue-unpacking-lexical-entry (instance-word entry)
  "All of the morphological variants of the lemma are in the
   same entry. If we see any one of them we unpack the
   entire set (simpler that way).
     The 'instance-word' is what we've just seen and the
   'lemma' is the head word of the entry.
      The 'clauses' of the full entry (cddr) include one clause
   for each of the different parts of speech for the lemma that
   the lexicon records."
  (let ((*source-of-unknown-words-definition* :comlex))
    (declare (special *source-of-unknown-words-definition*))  
    (let* ((instance-string (word-pname instance-word))
           (lemma-string (cadr entry))
           (lemma-word (if (string= (word-pname instance-word) lemma-string)
                          instance-word
                          (resolve-string-to-word/make lemma-string)))
           (clauses (cddr entry)))
      (tr :unpacking lemma-word)
      (cond
        ((= (length clauses) 1)
         (unambiguous-comlex-primed-decoder lemma-word (car clauses)))
        ((string-equal lemma-string instance-string)
         (ambiguous-comlex-primed-decoder lemma-word clauses))
        (t ;; maybe there's a quicker disambiguation based on
         ;; this irregular form /// or maybe not
         ;;(or (look-for-and-decode-comlex-irregular instance-string clauses)
         (ambiguous-comlex-primed-decoder lemma-word clauses)))
      (push instance-word *comlex-primed-words*)
      (add-new-word-to-catalog lemma-word :comlex instance-string)
      instance-word )))


(defun unambiguous-comlex-primed-decoder (lemma clause)
  "Identify any inflected forms and define words for
   them. Assign brackets to all the words. Do much more if
   *edge-for-unknown-words* is up."
  (tr :unpacking-unambiguous (car clause))
  (let ((pos-marker (car clause))
        (properties (cdr clause)))
    (setf (get-tag :comlex lemma) properties)
    
    (case pos-marker
      (noun 
       (if *edge-for-unknown-words*
         (setup-common-noun lemma clause)
         (else
           (assign-brackets-as-a-common-noun lemma)
           (plural-words-given-CL-clause lemma clause))))

      (adjective
       (if *edge-for-unknown-words*
         (setup-adjective lemma clause)
         (assign-brackets-to-adjective lemma)))

      (adverb
       (if *edge-for-unknown-words*
         (setup-adverb lemma)
         (assign-brackets-to-adverb lemma)))
      
      (verb
       (if *edge-for-unknown-words*
         (setup-verb lemma clause)
         (loop for w in (cons lemma (verb-forms-of lemma))
            do (assign-brackets-as-a-main-verb w))))

      ;; Prepositions and conjunctions don't have the instances
      ;; and category structure of adverbs. Probably want to put it in
      ;; but can wait until there are axioms (methods) for them. 
      (prep
       ;; Creates a category the way define-adverb does. 
       (define-preposition (word-pname lemma)))

      ((sconj ;; See /rules/words/conjunctions.lisp for the explicit list
        quant) ;; see words/quantifiers.lisp
       (define-isolated-function-word (word-pname lemma)))

      ;;(pronoun ;; "hers" in June pmc3577861 during sweep
      ;;  Could be pulled in by funny protein name

      (otherwise
       (push-debug `(,lemma ,clause))
       (warn-or-error "unambiguous-comlex-primed-decoder -- Unexpected ~
                       POS marker: '~a' on ~a, near ~s ~& in ~s" 
                      pos-marker lemma
                      (cur-string) (sentence-string (sentence)))
       nil))))

    


(defun ambiguous-comlex-primed-decoder (lemma clauses)
  "Sort the clauses alphabetically by their part of speech
   symbol so that we can systematically organize the search
   for different cases"
  (let ((combinations (sort (copy-list (mapcar #'car clauses))
                            #'alphabetize)))
    (tr ::unpacking-ambiguous combinations)
    (when (equal lemma "relative")
      (break "defining relative"))

    (cond
     ((equal combinations '(adjective noun))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adjective-noun lemma))
     
     ((equal combinations '(adjective adverb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous))
      (brackets-for-adjective-adverb lemma))
     
     ((equal combinations '(adjective verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adjective-verb lemma))
     
     ((equal combinations '(adjective noun verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (assign-noun-verb-brackets lemma clauses))
     
     ((equal combinations '(adjective adverb noun))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adjective-adverb-noun lemma))
     
     ((equal combinations '(adjective adverb verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adjective-adverb-noun-verb lemma))
     
     ((equal combinations '(adjective adverb noun verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adjective-adverb-noun-verb lemma))

     ((equal combinations '(adjective adverb noun prep))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adjective-adverb-noun-verb lemma))

     ((equal combinations '(adjective adverb prep verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adjective-adverb-noun-verb lemma))
     
     ((equal combinations '(adjective noun prep)) 
      (when *edge-for-unknown-words*
        ;; ignoring preposition -- first example is "plus" in the
        ;; phrase "in Nigeria plus numerous European states"
        ;; where it's effectively a conjunction
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adjective-noun lemma))
     
     ((equal combinations '(adjective noun prep sconj verb)) 
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous)
        ;; sconj
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adjective-noun-sconj-prep-verb lemma))
     
     ((equal combinations '(adverb advpart)) ;; "apart"
      ;; ignoring the participle reading
      (if *edge-for-unknown-words*
          (maybe-setup-adverb lemma clauses)
          (assign-brackets-to-adverb lemma)))
          
     ((equal combinations '(adverb advpart noun)) ;; "aside"
      ;; ignoring the participle reading
      (when *edge-for-unknown-words*
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (assign-brackets-to-adverb lemma))

     ((equal combinations '(adverb noun))
      (when *edge-for-unknown-words*
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adverb-noun lemma))

     ((equal combinations '(adverb noun prep)) ;; "behind" (from "behinds")
      (when *edge-for-unknown-words*
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous))
      (brackets-for-adverb-noun lemma))
     
     ((equal combinations '(adverb noun verb))
      (when *edge-for-unknown-words*
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adverb-noun-verb lemma clauses))
     
     ((equal combinations '(noun verb))
      (when *edge-for-unknown-words*
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (assign-noun-verb-brackets lemma clauses))
         
     ((equal combinations '(noun prep verb))
      (when *edge-for-unknown-words*
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (assign-noun-verb-brackets lemma clauses))
 
     ((equal combinations '(aux noun verb)) ;; work + will ??
      (when *edge-for-unknown-words*
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (assign-noun-verb-brackets lemma clauses))
     ((equal combinations '(noun pronoun verb)) ;; ignore pn
      (when *edge-for-unknown-words*
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (assign-noun-verb-brackets lemma clauses))
     
     ((equal combinations '(sconj verb)) ;; "provide"
      ;; sconj is a weak analysis. /// look for other cases
      ;; to establish if this simple version is  ok
      (when *edge-for-unknown-words*
        (maybe-setup-verb lemma clauses)) ;; n.b. not ambiguous
      (assign-brackets-as-a-main-verb lemma))

     ((equal combinations '(adjective adverb advpart noun verb)) ;; "back"
      (when *edge-for-unknown-words*
        (maybe-setup-adjective lemma clauses :ambiguous)
        (maybe-setup-adverb lemma clauses :ambiguous)
        (maybe-setup-common-noun lemma clauses :ambiguous)
        (maybe-setup-verb lemma clauses :ambiguous))
      (brackets-for-adverb-noun-verb lemma clauses))

     ((equal combinations '(noun noun)) ; second one for saying no plural
      (when *edge-for-unknown-words*
        (maybe-setup-common-noun lemma clauses)))
      
     
     ;; "firm" is four-ways ambiguous

     ((equal combinations '(cardinal verb))) ;; "zero"
     
     (t (push-debug `(,lemma ,combinations ,clauses))
        (if (and (boundp '*word-to-be-defined?*)
                 *word-to-be-defined?*)
          (warn-or-error "Comlex -- new POS combination in defining word ~
                  ~s \"~a\:: ~a" *word-to-be-defined?* lemma combinations)
          (warn-or-error "Comlex -- new POS combination for \"~a\:: ~a"
                  lemma combinations))))))


;;--- aux

(defun plural-words-given-CL-clause (lemma clause)
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



(defun lift-special-case-form-from-comlex-clause (clause)
  "If the word is unambigously a verb then there is just one clause
   otherwise there is a list of clauses -- one for each POS.
   Called from setup-verb"
  (flet ((launder-verb-keywords (plist)
           ;; Make any needed changes so that the keywords supplied by
           ;; Comlex are made to conform to those required by define-main-verb
           ;; which is the consumer of this via setup-verb
           (when (memq :pastpart plist)
             (setq plist (subst :past-participle :pastpart plist)))
           (when (memq '*none* plist)
             (let ( revised-plist )
               (do ((feature (car plist) (car rest))
                    (value (cadr plist) (cadr rest))
                    (rest (cddr plist) (cddr rest)))
                   ((null feature))
                 (unless (eq value '*none*)
                   (setq revised-plist (cons feature (cons value revised-plist)))))
               (setq plist revised-plist)))
           plist))
    
    (when clause ;; "burnt" hack in Grok, which doesn't have an entry
      (when (eq (car clause) :comlex)
        ;; we've come in through a route like setup-verb where
        ;; we have the full entry rather than just its clauses
        (setq clause (cddr clause)))
      (push-debug `(:lift-special-case ,clause))
      (let ((verb-clause
             (if (consp (car clause)) ;; multiple clauses
               (assq 'verb clause)
               clause)))
        (unless (eq 'verb (car verb-clause))
          (push-debug `(,verb-clause))
          (error "Expected a verb clause and didn't get one"))
        (let* ((2d-expr (cadr verb-clause))
               ;; Information about irregulars is invariably here, but if there
               ;; aren't any, then one of the other properties such as :features
               ;; or subcategorization will be there, so we block them. 
               (result
                (case (car 2d-expr)
                  ((or :infinitive :tensed/singular :past-tense
                       :present-participle :pastpart)
                   (launder-verb-keywords 2d-expr))
                  (:subc nil)
                  (:features nil)
                  (otherwise
                   (push-debug `(,2d-expr ,verb-clause))
                   (error "New case in what's 2d in a verb clause")))))
          (when (memq :subc result)
            ;; Seen this with "prove", which had two past participles:
            ;; (verb
            ;;   (:pastpart ("proved" "proven") :subc ... )
            (let ((clipped (cdr (memq :subc (reverse result)))))
              (setq result (reverse clipped))))
          
          result)))))




(defun is-known-definition? (lemma-word clause)
  ;; we had a case where "relative" was a known ADJECTIVE
  ;;  and the corpus had "relatives" as a lexical item
  ;; We want to get only the NOUN reading from COMLEX, not the ADJECTIVE
  ;; (which has already been defined)
  (let ((known-categories (loop for cfr in (find-unary-rules lemma-word)
                             collect (cat-name (cfr-form cfr)))))
    (case (car clause)
      (adjective (member 'adjective known-categories))
      (noun (member 'common-noun known-categories))
      (verb (member 'verb known-categories))
      (adverb (member 'adverb known-categories))
      (t nil))))

(defun maybe-setup-adjective (lemma clauses ambiguous)
  (unless (is-known-definition? lemma (assoc 'adjective clauses) )
    (setup-adjective lemma clauses ambiguous)))

(defun maybe-setup-adverb (lemma clauses &optional ambiguous )
  (unless (is-known-definition? lemma (assoc 'adverb clauses))
    (if ambiguous
        (setup-adverb lemma ambiguous)
        (setup-adverb lemma))))

(defun maybe-setup-common-noun (lemma clauses ambiguous)
  (unless (is-known-definition? lemma (assoc 'noun clauses))
    (setup-common-noun lemma clauses ambiguous)))

(defun maybe-setup-verb (lemma clauses &optional ambiguous)
  (unless (is-known-definition? lemma (assoc 'verb clauses))
    (if ambiguous
        (setup-verb lemma clauses :ambiguous t)
        (setup-verb lemma clauses))))




;; No callers 8/25/21
(defmethod decode-and-instantiate-primed-verb ((lemma word) clause)
  ;; As originally written, this supplied a category and referent
  ;; to define main-verb, which made it create rules for all the
  ;; verb forms. This leads to impossible situations like "his ice (cream)"
  ;; so stopping that. Leave the rule generation to a later dm&p
  ;; process that can appreciate the context. 
  (let ((special-case-plist (lift-special-case-form-from-comlex-clause clause)))
    (apply #'define-main-verb nil ;; symbol-for-category
           :infinitive (word-pname lemma) special-case-plist)))


;;--- Used in Strider project, otherwise no callers.
;; See init/workspaces/strider.lisp  Might have other uses

(defparameter *complain-about-words-missing-from-comlex* nil)

(defgeneric standalone-lexicon-unpacker (word)
  (:documentation "Used when we need to get the benefit of
    the information in Comlex for a word that's been independently
    defined. Notably in explicitly defined companies.")
  (:method ((s string))
    (declare (special *primed-words*))
    (let ((w (word-named s)))
      (unless w (error "There is no defined word spelled ~s" s))
      (let ((entry (comlex-entry w)))
        (if entry
          (continue-unpacking-lexical-entry w entry)
          (unless (known-word? w)
            (when *complain-about-words-missing-from-comlex*
              (format t "~&No entry in Comlex for ~a~%" w))))))))
