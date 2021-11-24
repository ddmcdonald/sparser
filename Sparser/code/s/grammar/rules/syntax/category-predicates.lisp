;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2016-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "category-predicates"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  November 2021

;; Predicates on syntactic form categories,
;; mostly for the use of the chunker.
(in-package :sparser)
            
(defparameter *prep-forms*
  `(preposition
    spatial-preposition
    spatio-temporal-preposition
    approximator
    sequencer))

(defparameter *adjg-word-categories*
  '(CATEGORY::ADVERB
    CATEGORY::COMPARATIVE-ADJECTIVE
    CATEGORY::ADJECTIVE
    CATEGORY::PROPER-ADJECTIVE
    CATEGORY::COMPARATIVE
    CATEGORY::SUPERLATIVE
    CATEGORY::SPATIAL-ADJECTIVE
    CATEGORY::TEMPORAL-ADJECTIVE
    CATEGORY::MODAL
    ;;CATEGORY::QUANTIFIER don't think this is right -- it accepts "NO"
    ))

(defparameter *adjg-head-categories*
  '(category::adjp
    CATEGORY::ADJECTIVE
    CATEGORY::PROPER-ADJECTIVE
    CATEGORY::COMPARATIVE
    CATEGORY::SUPERLATIVE
    CATEGORY::SPATIAL-ADJECTIVE
    CATEGORY::TEMPORAL-ADJECTIVE))

(defparameter *noun-categories*
  '(category::noun 
    category::common-noun 
    category::common-noun/plural 
    category::proper-noun category::proper-name
    category::np-head
    category::np                 ;; on pronouns -- change it
    category::adjunct            ;; on generic-co-word "business"
    ))

(defparameter *ng-start-categories*
  '(CATEGORY::DET
    CATEGORY::DEMONSTRATIVE
    CATEGORY::APPROXIMATOR
    CATEGORY::QUANTIFIER
    CATEGORY::QUANTIFIER-OF
    CATEGORY::NUMBER
    CATEGORY::ORDINAL
    CATEGORY::ADVERB
    CATEGORY::ADJECTIVE
    CATEGORY::PROPER-ADJECTIVE
    CATEGORY::COMPARATIVE
    CATEGORY::SUPERLATIVE
    CATEGORY::SPATIAL-ADJECTIVE
    CATEGORY::TEMPORAL-ADJECTIVE
    ;;CATEGORY::VERB+ED
    ;;CATEGORY::VERB+ING
    CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
    CATEGORY::PROPER-NAME
    CATEGORY::PRONOUN
    CATEGORY::N-BAR
    CATEGORY::POSSESSIVE-PRONOUN
    CATEGORY::POSSESSIVE
    CATEGORY::TIME-UNIT
    CATEGORY::NP
    ))

(DEFPARAMETER *NG-INTERNAL-CATEGORIES*
  '(CATEGORY::QUANTIFIER
    CATEGORY::NUMBER
    CATEGORY::APPROXIMATOR
    CATEGORY::ORDINAL
    CATEGORY::ADVERB
    CATEGORY::ADJECTIVE
    CATEGORY::PROPER-ADJECTIVE
    CATEGORY::COMPARATIVE
    CATEGORY::COMPARATIVE-adjective
    CATEGORY::SUPERLATIVE
    CATEGORY::SUPERLATIVE-adjective
    CATEGORY::SPATIAL-ADJECTIVE
    CATEGORY::TEMPORAL-ADJECTIVE
    CATEGORY::VERB+ED
    CATEGORY::VERB+ING
    CATEGORY::VP+ED ;; now is produced by NS patterns like GTP-bound
    CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
    CATEGORY::PROPER-NAME
    CATEGORY::N-BAR
    CATEGORY::PROPER-NOUN
    category::np-head
    CATEGORY::POST-ORDINAL
    CATEGORY::PARENTHESES
    CATEGORY::TIME-UNIT
    CATEGORY::NP))

(defparameter *ng-head-categories*
  '(
    CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::N-BAR
    category::np-head
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
    CATEGORY::PROPER-NAME
    CATEGORY::PRONOUN
    ;; not sure about these -- think of "the largest" as an NP
    ;; CATEGORY::COMPARATIVE -- this causes problems with MORE
    ;; CATEGORY::SUPERLATIVE-ADJECTIVE ;; "the only time most of us ..."
    CATEGORY::SUPERLATIVE
    ;;    >>>>>>> Add superlative-adjective ("largest") to the ng heads
    ;;CATEGORY::NUMBER ;; 'HOW many do you want? I want 3'
    ;; need to handle bare numbers, but treat numbers as post-modifying NPs
    ;; need to handle this case specially, but want numbers to be post-modifiers...
    CATEGORY::POST-ORDINAL ;; But only for roman numerals
    CATEGORY::THAT
    CATEGORY::NP
    CATEGORY::TIME-UNIT
    CATEGORY::QUANTIFIER
    CATEGORY::WH-PRONOUN
    ))

(defparameter *n-bar-categories*
  '(CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::N-BAR
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
    CATEGORY::PROPER-NAME))

(defparameter *n-bar-category-names*
  '(COMMON-NOUN/PLURAL
    NOUN/VERB-AMBIGUOUS
    N-BAR
    COMMON-NOUN
    PROPER-NOUN
    PROPER-NAME))

(defparameter *np-category-names*
  '(NP
    COMMON-NOUN/PLURAL
    NOUN/VERB-AMBIGUOUS
    N-BAR
    COMMON-NOUN
    PROPER-NOUN
    PROPER-NAME))

(defparameter *all-np-categories* `(category::NP ,@*n-bar-categories*))



(defparameter *vp-categories*
  `(
    ,category::participle
    ,category::pp-relative-clause
    ,category::s ;; convenient for find-verb
    ,category::subj+verb
    ,category::subject-relative-clause
    ,category::object-relative-clause
    ,category::transitive-clause-without-object
    ,category::where-relative-clause
    ,category::when-relative-clause
    ,category::v-bar
    ,category::verb
    ,category::infinitive ;; this covers BE!
    ,category::verb+present ;; "is"
    ,category::verb+past ;; "was"
    ,category::verb+ed  ;; "been"
    ,category::verb+ing ;; "being"
    ,category::verb+object
    ,category::verb+s ;; added
    ,category::modal
    ,category::vg 
    ,category::vg+ed
    ,category::vg+ing
    ,category::vg+passive
    ,category::vp
    ,category::vp+ed
    ,category::vp+past
    ,category::vp+ing
    ,category::vp+passive
    )
  "All the form categories that cover verbs")

(defparameter *v-bar-categories*
  `(,category::s
    ,category::subj+verb
    ,category::transitive-clause-without-object
    )
  "Categories that could be on the head-line of a predicate")

(defparameter *verb-group-level-categories*
  `(,category::vg 
    ,category::vg+ed
    ,category::vg+ing
    ,category::vg+passive))


(defgeneric group-level-category? (label)
  (:documentation "Is this category a 'group' category in one of the
   major lines of categories, e.g. one of the verb group or the noun-group
   categories. In the motivating case we are about to elevate the form
   on some edge to the 'phrase' level")
  (:method ((name symbol)) ; e.g. returned from edge-form-name
    (group-level-category? (category-named name :error)))
  (:method ((cat category))
    (cond
      ((memq cat *verb-group-level-categories*) :vg)
      ((memq cat *n-bar-categories*) :ng)
      ((eq cat category::adjg) :adj)
      (t nil))))

(defgeneric phrase-level-equivalent-of-group-form (label)
  (:documentation "Assumes that the category that's passed in has been
    vetted for being at the group level. This returns the equivalent
    category at the phrase level.")
  (:method ((name symbol))
    (phrase-level-equivalent-of-group-form (category-named name)))
  (:method ((form-category category))
    (ecase (cat-symbol form-category)
     (category::vg   category::vp)
     (category::vg+ing  category::vp+ing)
     (category::vg+ed   category::vp+past)
     (category::vg+passive  category::vp+passive)
     
     (category::common-noun/plural  category::np)
     (category::noun/verb-ambiguous category::np)
     (category::common-noun category::np)
     (category::common-noun/plural category::np)
     (category::proper-noun category::np)
     (category::proper-name category::np)
     (category::n-bar category::np)
     (category::np-head category::np)

     (category::adjg category::adjp))))


;;; control parameters for collecting data
(defparameter *verb+ed-sents* (list :save))
(defparameter *suppressed-verb+ed* (list :save))


(defvar *vg-word-categories*
  '(CATEGORY::ADVERB 
    CATEGORY::MODAL
    CATEGORY::VERB
    CATEGORY::VERB+S
    CATEGORY::VERB+ED
    CATEGORY::VERB+ING
    CATEGORY::VERB+PRESENT
    category::verb+past
    CATEGORY::VERB+PASSIVE
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::MODAL
    category::infinitive
    CATEGORY::NOT
    category::quantifier ; "should both go home"
    CATEGORY::APPROXIMATOR))

(defvar *vg-head-categories*
  '(CATEGORY::VERB
    CATEGORY::VERB+S
    CATEGORY::VERB+ED
    CATEGORY::VERB+ING
    CATEGORY::VERB+PRESENT
    category::verb+past
    CATEGORY::VERB+PASSIVE
    CATEGORY::NOUN/VERB-AMBIGUOUS))

(defparameter *plausible-vg-categories*
  `(,category::vg
    ,category::vg+ing
    ,category::vg+ed
    ,category::vg+passive
    ,category::verb
    ,category::verb+s
    ,category::verb+present
    ,category::verb+past
    ,category::verb+ed
    ,category::verb+passive
    ,category::modal)
  "Used in verb-group-final-actions to guard against
   noun/verb abiguous words triggering the actions of
   its verb reading even when it's in its noun reading")

(defparameter *vg-categories*
  '(
   CATEGORY::MODAL
   CATEGORY::NOUN/VERB-AMBIGUOUS
   CATEGORY::VERB
   CATEGORY::VERB+ED
   CATEGORY::VERB+ING
   CATEGORY::VERB+PASSIVE
   CATEGORY::VERB+PAST
   CATEGORY::VERB+PRESENT
   CATEGORY::VERB+S
   CATEGORY::VG
   CATEGORY::VG+ED
   CATEGORY::VG+ING
   CATEGORY::VG+PASSIVE
   ))


;;;------------
;;; predicates
;;;------------

;; ng-start? is also in the chunker

(defgeneric ng-start? (label)
  (:documentation "Is a category which can occur inside a NG?")
  (:method ((w word))
    nil)
  (:method ((c referential-category))
    (ng-start? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *ng-start-categories*)))



(defgeneric ng-head? (label &optional end)
  (:documentation "Is a category which can occur as the head of an NG")
  (:method ((c referential-category) &optional end)
    (ng-head? (cat-symbol c)))
  (:method  ((name symbol) &optional end)
    (memq name *ng-head-categories*))
  (:method ((w word) &optional end)  nil))



(defgeneric ng-compatible? (label evlist)
  (:documentation "Is this a category which can occur inside a NG.
    Used by the chunker to extend (or not) a noun group chunk.
    Return nil if not compabible. Usually fed edge form labels.
    Standard call is from the ng-compatible? method in the chunker.")
  (:method ((w word) evlist)
    (declare (ignore w evlist))
    nil)
  (:method ((c referential-category) evlist) ;; for testing
    (ng-compatible? (cat-symbol c) evlist))
  (:method ((name symbol) edges)
    (declare (special category::all category::both ;;category::quantifier-of
                      category::pronoun
                      *ng-internal-categories*))
    (or
     (and (memq name *ng-internal-categories*)
          (not
           ;;in fact nothing should follow a pronoun (except a possessive pronoun)
           (loop for edge in edges
              thereis (eq category::pronoun (edge-form edge)))))
     
     (and ;; partitive construction e.g. "all of these lines"
      (loop for edge in edges
         thereis (or
                  ;;(eq (edge-category edge) category::quantifier-of)
                  (eq (edge-category edge) category::all)
                  (eq (edge-category edge) category::both)))
      (eq name 'category::det)))))


(defgeneric proper-noun? (edge)
  (:documentation "Checks the form of the edge. Provides syntactic sugar")
  (:method ((e edge))
    (memq (form-cat-name e) '(proper-noun proper-name))))



(defun edge-over-there? (e)
  (declare (special category::syntactic-there category::deictic-location))
  (or (eq (edge-category e) category::syntactic-there)
      (and (eq (edge-category e) category::deictic-location)
	   (word-p (value-of 'name (edge-referent e)))
	   (equal (word-pname (value-of 'name (edge-referent e))) "there"))))


;;--- adjective groups

(defgeneric adjg-compatible? (label)
  (:documentation "Is a category which can occur inside an ADJG")
  (:method ((w word)) nil) ; was T
  (:method ((e edge))
    (declare (special category::have category::percent))
    (or
     (adjg-compatible? (edge-form e))
     (eq (edge-category e) category::percent)
     ;;(eq category::not (edge-category e))
     ;;(copula-verb? (edge-category e))
     (and nil ;; block copular verbs
          (category-p (edge-category e))
          ;; these are all for linking/copular verbs like BE, REMAIN, SMELL, BECOME
          (and (eq (edge-category e) category::have)
               ;; only allow "have" to create the past tense of a linking verb
               (let
                   ((next-edge (car (preterminal-edges (pos-edge-ends-at e)))))
                 (and
                  (edge-p next-edge)
                  (copula-verb? (edge-category next-edge))))))))
  (:method ((c referential-category))
    (adjg-compatible? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *adjg-word-categories*)))


(defgeneric adjg-head? (label)
  (:documentation "Is a category which can occur as the head of an ADJG")
  (:method ((w word)) nil) ; was T, which is inconsistent with other cases
  (:method ((e edge))
    (unless (prev-adj e)
      (unless (eq (cat-name (edge-category e)) 'sequencer)
        ;; sequencers like "next" cannot be heads of adjg's
        (adjg-head? (edge-form e)))))
  (:method ((c referential-category))
    (adjg-head? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *adjg-head-categories*)))

(defun prev-adj (e &optional (edges (edges-before e)))
  (declare (special category::adjective))
  (loop for ee in edges
     thereis (eq (edge-form ee) category::adjective)))


(defparameter *subordinating-adverbs*
  '(consequently as since))


;;--- nouns and friends

(defgeneric noun-category? (label)
  (:documentation "Nouns and their variants. Should be a single word")
  (:method ((e edge))
    (noun-category? (edge-form e)))
  (:method ((c referential-category))
    (noun-category? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *noun-categories*)))

(defgeneric np-category? (label)
  (:documentation "Toplevel NPs and N-Bar categories")
  (:method ((e edge))
    (np-category? (edge-form e)))
  (:method ((c referential-category))
    (np-category? (cat-symbol c)))
  (:method ((name symbol))
    (or (memq name *n-bar-categories*)
        (memq name *ng-head-categories*))))


;;--- verbs and friends

(defgeneric copula-verb? (category)
  (:method ((c category)) 
    (memq (cat-symbol c)
          `(category::be
            category::become
            category::remain
            category::stay)))
  (:method ((x t)) nil))

(defgeneric v-bar-compatible? (label)
  (:documentation "A category that could be the top of the headline
    of a predicate (as in subject+predicate), including variations
    on s")
  (:method ((w word)) nil)
  (:method ((e edge))
    (v-bar-compatible? (edge-form e)))
  (:method ((c referential-category))
    ;; n.b. the list holds categories, not symbols
    (memq c *v-bar-categories*)))

(defun copula-v-adjective-ambiguity (e) ;; preceding copula, and V/ADJECTIVE ambiguity
  (declare (special category::adjective category::be))
  (and (loop for edge in (all-edges-at e)
             thereis (eq category::adjective (edge-form edge)))
       (loop for edge in (edges-before-chunk)
             thereis (eq category::be (edge-category edge)))))

(defgeneric vg-category? (label)
  (:documentation "Is this one of the verb group categories,
    which is any category that could be on the head line over
    a verb until it first composes with an object (or subject
    when intransitive) forming a VP.")
  (:method ((w word)) nil)
  (:method ((e edge))
    (vg-category? (edge-form e)))
  (:method ((c referential-category))
    (vg-category? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *vg-categories*)))

(defgeneric vp-category? (label)
  (:documentation "The full set of labels up the verb-to-s headline.
    Originally motivated by find-verb")
  (:method ((ignore t))
    nil)
  (:method ((e edge))
    (vp-category? (edge-form e)))
  (:method ((c category))
    (or (memq c *vp-categories*)
        ;; this is from questions like "What genes are ..."
        (eq (cat-name c) 'preposed-auxiliary))))


(defgeneric verb-category? (label)
  (:documentation "Verbs and their variants. Should be a single word")
  (:method ((e edge))
    (verb-category? (edge-form e)))
  (:method ((c referential-category))
    (verb-category? (cat-symbol c)))
  (:method ((name symbol))
    (memq name '(category::verb
                 category::verb+present
                 category::verb-past
                 category::verb+s               
                 category::verb+ed
                 category::verb+ing))))

(defmethod participle? ((s string))
  (participle? (word-named s)))
(defmethod participle? ((w word))
  (let ((morphology (word-morphology w)))
    (case morphology
      ((:ends-in-ed
        :ends-in-ing) t)
      (otherwise nil))))


(defgeneric pronoun-category? (label)
  (:documentation "Pronouns and their variants. Should be a single word"))
(defmethod pronoun-category? ((e edge))
  (pronoun-category? (edge-form e)))
(defmethod pronoun-category? ((c referential-category))
  (pronoun-category? (cat-symbol c)))
(defmethod pronoun-category? ((name symbol))
  (memq name '(category::pronoun 
               category::wh-pronoun
               category::possessive/pronoun
               category::reflexive/pronoun
               ;;category::det ;; for isolated "that"
               )))

(defgeneric preposition-category? (label)
  (:documentation "Any sort of preposition")
  (:method ((e edge))
    (preposition-category? (form-cat-name e)))
  (:method ((c referential-category))
    (preposition-category? (cat-name c)))
  (:method ((name symbol))
    (memq name *prep-forms*)))

(defgeneric modifier-category? (label)
  (:documentation "Adjectives and their variants. Should be a single word"))
(defmethod modifier-category? ((e edge))
  (modifier-category? (edge-form e)))
(defmethod modifier-category? ((c referential-category))
  (modifier-category? (cat-symbol c)))
(defmethod modifier-category? ((name symbol))
  (memq name '(category::adjective
               category::number)))


;; special purpose for text-relations - note-what-the-head-is
(defgeneric ignorable-category? (label)
  (:documentation "quantifiers, modals, and their variants. 
     Should be a single word")
  (:method ((e edge))
    (ignorable-category? (edge-form e)))
  (:method ((c referential-category))
    (ignorable-category? (cat-symbol c)))
  (:method ((name symbol))
    (memq name '(category::quantifier category::adverb
                 category::preposition
                 category::modal category::subordinate-conjunction))))


;;--- aux

(defgeneric aux/modal-category? (label)
  (:documentation "modals, auxiliary forms of have and be, do"))
(defmethod aux/modal-category? ((e edge))
  (aux/modal-category? (edge-form e)))
(defmethod aux/modal-category? ((c referential-category))
  (aux/modal-category? (cat-symbol c)))
(defmethod aux/modal-category? ((name symbol))
  (memq name '(category::modal 
               category::adverb)))


(defun edge-over-aux? (edge)
  ;; called by wh question operations
  (or
   (and (eq (edge-cat-name edge) 'do)
        (eq (edge-form-name edge) 'vg))
   (when (word-p (edge-left-daughter edge))
     (auxiliary-word? (edge-left-daughter edge)))))

(defvar *verbal-auxiliaries* nil
  "Holds a list of all the auxiliary words, as words")

(defun auxiliary-word? (word)
  ;; called by substantial set of functoins
  (unless *verbal-auxiliaries*
    (populate-verbal-auxiliaries))
  (memq word *verbal-auxiliaries*))

(defun populate-verbal-auxiliaries ()
  ;; this is used by delimit-and-label-initial-wh-term which is
  ;; called in detect-early-information pretty early in the steps
  ;; of sentence-processing-core, so do we need to include the
  ;; negated versions of these?
  (setq *verbal-auxiliaries*
        (mapcar #'word-named 
                '("am" "are" "is" "were"
                  "do" "does" "did"
                  "have" "has" "had"
                  "not"
                  "can" "could" "may"
                  "might" "must" "shall"
                  "should" "will" "would" ))))

