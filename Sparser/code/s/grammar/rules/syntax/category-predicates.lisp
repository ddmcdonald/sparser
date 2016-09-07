;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER) -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "category-predicates"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016

;; Predicates on synteactic form categories, mostly for the use of the chunker.

(defvar *adjg-word-categories*
  '(CATEGORY::ADVERB 
    CATEGORY::ADJECTIVE
    CATEGORY::PROPER-ADJECTIVE
    CATEGORY::COMPARATIVE
    CATEGORY::SUPERLATIVE
    CATEGORY::SPATIAL-ADJECTIVE
    CATEGORY::TEMPORAL-ADJECTIVE
    CATEGORY::MODAL
    ;;CATEGORY::QUANTIFIER don't think this is right -- it accepts "NO"
    ))

(defvar *adjg-head-categories*
  '(CATEGORY::ADJECTIVE
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
    CATEGORY::SUPERLATIVE
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
    CATEGORY::POST-ORDINAL
    CATEGORY::PARENTHESES
    CATEGORY::TIME-UNIT
    CATEGORY::NP))

(defparameter *ng-head-categories*
  '(
    CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::N-BAR
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
    CATEGORY::PROPER-NAME
    CATEGORY::PRONOUN
    ;; not sure about these -- think of "the largest" as an NP
    ;; CATEGORY::COMPARATIVE -- this causes problems with MORE
    CATEGORY::SUPERLATIVE
     CATEGORY::NUMBER ;; 'HOW many do you want? I want 3'
    ;; need to handle this case specially, but want numbers to be post-modifiers...
    CATEGORY::POST-ORDINAL ;; But only for roman numerals
    CATEGORY::THAT
    CATEGORY::NP
    CATEGORY::TIME-UNIT
    CATEGORY::QUANTIFIER
    ))

(defparameter *n-bar-categories*
   '(CATEGORY::COMMON-NOUN/PLURAL
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::N-BAR
    CATEGORY::COMMON-NOUN
    CATEGORY::PROPER-NOUN
     CATEGORY::PROPER-NAME))

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
    ,category::vp+ing
    ,category::vp+passive
    )
  "All the form categories that cover verbs")

;;; control parameters for collecting data
(defparameter *verb+ed-sents* nil)
(defparameter *suppressed-verb+ed* nil)

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
    CATEGORY::NOT))

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
    ,category::verb+passive
    ,category::modal)
  "Used in verb-group-final-actions to guard against
   noun/verb abiguous words triggering the actions of
   its verb reading even when it's in its noun reading")



;;; predicates

(defgeneric ng-start? (label)
  (:documentation "Is a category which can occur inside a NG?"))

(defmethod ng-start? ((w word))
  nil)

(defmethod ng-start? ((name symbol))
  (memq name *ng-start-categories*))

(defmethod ng-start? ((c referential-category))
  (ng-start? (cat-symbol c)))



(defmethod ng-compatible? ((c referential-category) evlist)
  (ng-compatible? (cat-symbol c) evlist))

(defmethod ng-compatible? ((name symbol) edges)
  (declare (special category::all ;;category::quantifier-of
		    category::pronoun
                    *ng-internal-categories*))
  (or
   (and
    (memq name *ng-internal-categories*)
    ;;in fact nothing should follow a pronoun (except a possessive pronoun)
    (not
       (loop for edge in edges
         thereis
         (eq category::pronoun (edge-form edge)))))
   (and
    ;; partitive construction e.g. "all of these lines"
    (loop for edge in edges
      thereis
      (or
       ;;(eq (edge-category edge) category::quantifier-of)
       (eq (edge-category edge) category::all)))
    (eq name 'category::det))))

(defun edge-over-there? (e)
  (declare (special category::syntactic-there category::deictic-location))
  (or (eq (edge-category e) category::syntactic-there)
      (and (eq (edge-category e) category::deictic-location)
	   (word-p (value-of 'name (edge-referent e)))
	   (equal (word-pname (value-of 'name (edge-referent e))) "there"))))

(defgeneric ng-head? (label)
  (:documentation "Is a category which can occur as the head of an NG"))

(defmethod ng-head? ((c referential-category))
  (ng-head? (cat-symbol c)))
(defmethod ng-head? ((name symbol))
  (memq name *ng-head-categories*))
(defmethod ng-head? ((w word))
  nil)

(defgeneric ng-compatible? (label evlist)
  (:documentation "Is a category which can occur inside a NG"))
(defmethod ng-compatible? ((w word) evlist)
  (declare (ignore w evlist))
  nil)


(defgeneric vg-compatible? (label)
  (:documentation "Is a category which can occur inside a VG")
  (:method ((w word)) t)
  (:method ((c referential-category))
    (vg-compatible? (cat-symbol c)))
  (:method ((name symbol))
    (memq name *vg-word-categories*)))

(defgeneric vg-head? (label)
  (:documentation "Is a category which can occur as the head of a VG")
  (:method ((w word)) t)
  (:method ((c referential-category))
    (vg-head? (cat-symbol c)))
  (:method ((name symbol))
  (memq name *vg-head-categories*)))


(defgeneric adjg-compatible? (label)
  (:documentation "Is a category which can occur inside an ADJG"))
(defmethod adjg-compatible? ((w word))
  t)

(defmethod adjg-compatible? ((e edge))
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

(defmethod copula-verb? ((c category))  
  (memq (cat-symbol c)
        `(category::be
          category::become
          category::remain
          category::stay)))

(defmethod copula-verb? ((x t))
  nil)

(defmethod adjg-compatible? ((c referential-category))
  (adjg-compatible? (cat-symbol c)))
(defmethod adjg-compatible? ((name symbol))
  (memq name *adjg-word-categories*))

(defgeneric adjg-head? (label)
  (:documentation "Is a category which can occur as the head of an ADJG"))
(defmethod adjg-head? ((w word))
  t)
(defmethod adjg-head? ((e edge))
  (when
      (not (prev-adj e))
    (adjg-head? (edge-form e))))

(defun prev-adj (e &optional (edges (edges-before e)))
  (declare (special category::adjective))
  (loop for ee in edges
     thereis (eq (edge-form ee) category::adjective)))

(defmethod adjg-head? ((c referential-category))
  (adjg-head? (cat-symbol c)))
(defmethod adjg-head? ((name symbol))
  (memq name *adjg-head-categories*))



(defparameter *subordinating-adverbs*
  '(consequently))

(defgeneric noun-category? (label)
  (:documentation "Nouns and their variants. Should be a single word"))
(defmethod noun-category? ((e edge))
  (noun-category? (edge-form e)))
(defmethod noun-category? ((c referential-category))
  (noun-category? (cat-symbol c)))
(defmethod noun-category? ((name symbol))
  (memq name *noun-categories*))

(defgeneric verb-category? (label)
  (:documentation "Verbs and their variants. Should be a single word"))
(defmethod verb-category? ((e edge))
  (verb-category? (edge-form e)))
(defmethod verb-category? ((c referential-category))
  (verb-category? (cat-symbol c)))
(defmethod verb-category? ((name symbol))
  (memq name '(category::verb
               category::verb+present
               category::verb-past
               category::verb+s               
               category::verb+ed
               category::verb+ing)))

(defmethod participle? ((s string))
  (participle? (word-named s)))
(defmethod participle? ((w word))
  (let ((morphology (word-morphology w)))
    (case morphology
      ((:ends-in-ed
        :ends-in-ing) t)
      (otherwise nil))))

(defmethod vp-category? ((c category))
  ;; motivated by find-verb
  (memq c *vp-categories*))
(defmethod vp-category? ((ignore t))
  nil)

(defgeneric aux/modal-category? (label)
  (:documentation "modals, auxiliary forms of have and be, do"))
(defmethod aux/modal-category? ((e edge))
  (aux/modal-category? (edge-form e)))
(defmethod aux/modal-category? ((c referential-category))
  (aux/modal-category? (cat-symbol c)))
(defmethod aux/modal-category? ((name symbol))
  (memq name '(category::modal 
               category::adverb)))


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
  (:documentation "quantifiers, modals, and their variants. Should be a single word"))
(defmethod ignorable-category? ((e edge))
  (ignorable-category? (edge-form e)))
(defmethod ignorable-category? ((c referential-category))
  (ignorable-category? (cat-symbol c)))
(defmethod ignorable-category? ((name symbol))
  (memq name '(category::quantifier category::adverb
               category::preposition
               category::modal category::subordinate-conjunction)))


;;--- aux

;;/// This might be easier to find somewhere else?
(defvar *verbal-auxiliaries* nil
  "Holds a list of all the auxiliary words, as words")

(defun auxiliary-word? (word)
  (unless *verbal-auxiliaries*
    (populate-verbal-auxiliaries))
  (memq word *verbal-auxiliaries*))

(defun populate-verbal-auxiliaries ()
  (setq *verbal-auxiliaries*
        (mapcar #'word-named 
                '("am" "are" "is" "were"
                  "do" "does" "did"
                  "have" "has" "had"
                  "not"))))

