;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER) -*-
;;; copyright (c) 1992-1999,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.8 June 2014

;; 0.1 (9/392 v2.3)) Redid them as "form categories", with an indicator on their plists
;; 0.2 (10/12) flushed "mvb" for "verb", 10/24 added common-noun/plural
;;     (12/28) added "text-segment"
;;     (5/11/93) added cases for words where we know their form via
;;      their morphology
;;     (5/21) added unknown-word
;;     (5/28) replaced "proper-noun" at the word level with "proper-name" at the
;;      phrase level
;;     (6/15) added "appositive", (7/8) added advp and adjp, 
;;     (10/22) added proper-adjective
;;     (1/11/94) added "modal" (3/28) added "classifier" (5/24) added deictic-time-word
;;     (6/7) added "mvb"  (7/11) added possessive, possessive/np, reflexive/np
;;     (7/12) added infinitive  (7/13) added noun/verb-ambiguous
;;     (7/29) added comparative (8/3) added noun  (8/5) added verb+passive
;;     (8/23) added verb+object  (9/26) added participle  (9/27) added imperative
;;     (10/6) added 'appositive-prefix'   (10/19) added adjunct  (10/20) definite-modifier
;;     (11/14) added some np discourse descriptors.  (1/24/95) added newline
;;     (4/12) added autodef for adverbs and adjectives.  4/27 tweeked that
;;     and added v-bar   4/30 added appositive-prefix  5/7 added unknown-verb
;;     5/15 added vg/passive and vp/passive for the benefit of CA rules
;;     6/14 added adjunct-to-np and adjunct-to-s
;; 0.3 (6/20) filled the lattice-position field of the categories
;;     (9/12) tweeked the autodef
;; 0.4 (8/16/97) Modified the notion of a form-category to remove the (never yet used)
;;      lattice-position field, thereby allowing them to be defined as simple categories
;;      and used with licenses that don't include the model.  10/18 put it back, but
;;      gated.
;;     (8/31/99) Added 'qp' for quantifier-phrase. (2/5/07) added section-header
;;     (8/8) added pronoun.
;; 0.5 (3/26/08) Added brackets section and a value for possessive.
;;     (5/10/09) Added wh-pronoun. 5/9/09 added question-marker. 7/23/09 added interjection
;;     (2/10/10) Added quantifier. 3/16/10 added paragraph.
;; 0.6 (8/8/11) Converted form-category? to a method so it can take symbols.
;;     (9/29/11) Added two variants on preposition. (11/22/12) Added two conjunctions
;;     (2/8/13) added 'word'.
;; 0.7 (3/14/13) Wrote some predicates that group sets of labels for uniformity
;;      is code that operates over them like the text relations. 3/15 fan-out from
;;      change to pronoun form. 4/9/13 added relative-clause. Lots of little additions
;;      to the predicates before that.
;; 0.8 (5/17/14) Modified ignorable-category? to move number into modifier-category?.
;;     (5/21/14) Added mark-as-form-category so you can make a referential category
;;      e.g. number, look like a form category when you want it to.
;;     (6/9/14) Added mixin adjective-adverb here as nothing else seemed better

(in-package :sparser)


;;;----------------------------
;;; setting up form categories
;;;----------------------------

(defmethod form-category? ((s string))
  ;; The point where this case comes up is when walking the
  ;; rhs of a case in an ETF and this corresponds to a word
  nil)

(defmethod form-category? ((s symbol))
  (let ((c (category-named s)))
    (when c
      (form-category? c))))

(defmethod form-category? ((c category))
  (when (first (member :form-category (cat-plist c)))
    c ))


(defparameter *the-top-form-category*
  (def-category/expr 'form-category :source :form))


(defmacro def-form-category (symbol)
  ;; a form category is a regular referential category with
  ;; special property on its plist that the form rules look for
  ;; in deciding whether a form rule has one and only one
  ;; form category on its right side.  ///Perhaps they should
  ;; be their own object type ?
  `(define-form-category/expr ',symbol))

(defun define-form-category/expr (symbol)
  (let ((c (def-category/expr symbol :source :form)))
             ;; this pattern makes a referential-category
    (when *include-model-facilities*
      (setf (cat-lattice-position c) *the-top-form-category*))
    (mark-as-form-category c)
    c ))


(defmethod mark-as-form-category ((category-name symbol))
  (mark-as-form-category (category-named category-name :break-if-none)))

(defmethod mark-as-form-category ((c category))
  (setf (cat-plist c)
        `( :form-category t ,@(cat-plist c))))

;;;-----------------
;;; paragraph level
;;;-----------------

(def-form-category section-header)

(def-form-category section-marker)

;;;--------------
;;; clause level
;;;--------------

(def-form-category s)

(def-form-category imperative)
(def-form-category question-marker) ;; for the WH+copula prefix

(def-form-category appositive)
(def-form-category appositive-prefix)  ;; the initial comma plus something

(def-form-category subj+verb)

(def-form-category verb+object)

(def-form-category v-bar )

(def-form-category participle)

(def-form-category adjunct)
(def-form-category adjunct-to-np)
(def-form-category adjunct-to-s)

(def-form-category relative-clause)




;;;--------------
;;; phrase level
;;;--------------

(def-form-category  np)
(def-form-category  vp)
(def-form-category  vg)
(def-form-category  pp)
(def-form-category  advp)
(def-form-category  adjp)
(def-form-category  qp)
(def-form-category  proper-name)



(def-form-category vg/passive)
(def-form-category vp/passive)


;;;------------
;;; word level
;;;------------

(def-form-category  function-word)
(def-form-category  content-word)

(def-form-category  capitalized)

(def-form-category  word)
(def-form-category  word+s)
(def-form-category  word+ed)  ;; n.b. "bed"
(def-form-category  word+ing)

(def-form-category  ends-in-s)
(def-form-category  ends-in-ed)
(def-form-category  ends-in-ing)

(def-form-category  interjection)

(def-form-category  conjunction)
(def-form-category  subordinate-conjunction)

(def-form-category  preposition)
(def-form-category  spatial-preposition)
(def-form-category  spatio-temporal-preposition)

(def-form-category  verb)
(def-form-category  verb+s)
(def-form-category  verb+ed)   ;; "main verb, ends in +ed"
(def-form-category  verb+ing)
(def-form-category  verb+present)
(def-form-category  infinitive)
(def-form-category  verb+passive)

(define-category  mvb)
  ;; 'main verb' - only used as a label on brackets
  ;; as a means of discriminating them from auxiliaries.
                  

(def-form-category  det)
(def-form-category  n-bar)
(def-form-category  noun)
(def-form-category  common-noun)
(def-form-category  common-noun/plural)
(def-form-category  proper-noun)
(def-form-category  pronoun)
(def-form-category  wh-pronoun)

(def-form-category  noun/verb-ambiguous)

(def-form-category  np-head)
(def-form-category  classifier)
(def-form-category  quantifier)


(def-form-category  definite-modifier)   ;; "last (year)"
(def-form-category  possessive)
(def-form-category  possessive/pronoun) ;; e.g "mine"
(def-form-category  reflexive/pronoun)  ;; "yourself"

(def-form-category  adjective)
(def-form-category  proper-adjective)
(def-form-category  comparative)
(def-form-category  spatial-adjective)
(def-form-category  temporal-adjective)

(def-form-category  deictic-time-word)

(def-form-category  adverb)
(def-form-category  modal)


(def-form-category  unknown-word)
(def-form-category  unknown-verb)



;;--- These are principally for labeling brackets

(def-form-category  punctuation)
(def-form-category  newline)
(def-form-category  treetop)


;;;-----------------
;;; discourse level
;;;-----------------

(def-form-category  text-segment)

(def-form-category  thematic)  ;; said of an NP prefixed by "this"
(def-form-category  denumerated)  ;; said of an NP with a number as its prefix
(def-form-category  modified)  ;; said of an NP with an adjective (phrase) as its prefix
(def-form-category  anonymous) ;; said of an NP with "a" or "an" as its determiner

(def-form-category  paragraph) ;; created by the NL fsas or XML tags


;;;--------------------------------------------------------------------------
;;; methods for testing whether a form category is one of a particular group
;;;--------------------------------------------------------------------------

(defgeneric noun-category? (label)
  (:documentation "Nouns and their variants. Should be a single word"))
(defmethod noun-category? ((e edge))
  (noun-category? (edge-form e)))
(defmethod noun-category? ((c referential-category))
  (noun-category? (cat-symbol c)))
(defmethod noun-category? ((name symbol))
  (memq name '(category::noun 
               category::common-noun 
               category::common-noun/plural 
               category::proper-noun category::proper-name
               category::np-head
               category::np ;; on pronouns -- change it
               category::adjunct ;; on generic-co-word "business"
               )))

(defgeneric verb-category? (label)
  (:documentation "Verbs and their variants. Should be a single word"))
(defmethod verb-category? ((e edge))
  (verb-category? (edge-form e)))
(defmethod verb-category? ((c referential-category))
  (verb-category? (cat-symbol c)))
(defmethod verb-category? ((name symbol))
  (memq name '(category::verb category::verb+present category::verb+s
               category::verb+ed category::verb+ing)))

(defmethod participle? ((s string))
  (participle? (word-named s)))
(defmethod participle? ((w word))
  (let ((morphology (word-morphology w)))
    (case morphology
      ((:ends-in-ed
        :ends-in-ing) t)
      (otherwise nil))))



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
  (memq name '(category::pronoun category::wh-pronoun
               category::possessive ;; /// probably overkill
               category::possessive/pronoun category::reflexive/pronoun
               category::det ;; for isolated "that"
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




;;;------------------------------------
;;; bracket introduction by form rules
;;;------------------------------------




;;;------------------------------------------------------------
;;; Mixins to provide places to stash words in bindings fields
;;;------------------------------------------------------------
;; Like the use of the name variable in function words

;; Seemed like it should specialize a form category, but some time
;; back in pre-history corners were cut in setting up the lattice point
;; for form-category, so can't do that until that's fixed.
(define-mixin-category adjective-adverb
  :binds ((adjective :primitive word)
          (adverb :primitive word)))



;;;----------------------------------------
;;; instances of part-of-speech categories
;;;----------------------------------------
(unless *nothing-Mac-specific*
  
  (define-autodef-data  'content-word
    :module *general-words*
    :display-string "Semantics-free content words"
    :not-instantiable t
    :description "words to be defined without any semantic content, only part of speech data"
    )
  
  (define-autodef-data 'verb
    :display-string "verb"
    :form 'define-word-as-verb
    :dossier "dossiers;semantics-free verbs"
    :module *known-verbs*
    :description "words that are to be treated strictly as verbs: not sometimes also as nouns, etc. The verb will have no semantics"
    :examples "\"describe\" \"expect\" \"give\"" 
    :write-fn 'save-irregular-verb-definition )
  
  
  ;; The 'save' routines for these are in [interface;grammar:defining other words]
  
  (define-autodef-data 'adjective
    :display-string "adjective"
    :form 'define-adjective
    :dossier "public-dossiers;new content words"
    :module *adjectives*
    :description "Words that modify nouns or may also stand by themselves after the verb 'to be'. The word will get ].phrase and .[np brackets, but will not get any semantics. You could also consider defining it as one of the types of 'adjuncts'."
    :examples "\"red\", \"unusual\", \"new\""
    :write-fn 'save-semantics-free-adjective )
  
  (define-autodef-data 'adverb
    :display-string "adverb"
    :form 'define-adverb
    :dossier "public-dossiers;new content words"
    :module *adverbs*
    :description "Words that modify verbs, adjectives, or other adverbs. The word will get a ].adverb bracket, but will not get any semantics. You could also consider defining it as one of the types of 'adjuncts'."
    :examples "\"about\", \"never\", \"regularly\""
    :write-fn 'save-semantics-free-adverb )
  
  ) ; close the unless

