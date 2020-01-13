;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER) -*-
;;; copyright (c) 1992-1999,2011-2019 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2019

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
;;     (9/26/14) added vp-category?
;;     (10/22/14) Extended the np 'start' (etc.) lists with number and converted them
;;      to defparameter's so they could be updated. 
;;     (10/23/14) Removed vg from verb-category? for the benefit of find-verb
;;     (10/25/14) Added edge-form-adjustment
;; RJB 12/13/2014 added entries for category::post-ordinal in np chunking tables
;;     added parenthetical as an item that can occur in an NP
;; RJB 12/13/2014 more subtle handling of NP chunking to deal with verb+ed cases
;; contrast "direct binding to activated forms of RAS" where "activated" is likely to be a prenominal modifier
;; with "these drugs blocked ERK activity" where "blocked" is the main verb.
;; the key is to end a NG when you hit a verb+ed immediatelyu preceded by a noun, and to prevent that verb+ed from
;; starting another NG (so that it becomes a VG on its own)
;; RJB 12/14/2014 Similar fix for verb+ing as the start of a NG
;; added     ,category::pronoun as a minor-category -- not sure
;; 12/19/2014     ;; partitive construction e.g. "all of these lines"
;; 12/20/2014 add thatcomp for nouns 
;; 1/1/2015 fix ng-head? to allow "that" as the head of an NG (used mostly for that relative clauses)
;; 1/1/2015 block inclusion of initial adjective/modifier when the previous chunk was a copula verb (just check for BE at this time)
;; 1/2/2015 NG chunks that start with a pronoun end with that pronoun -- this needs to by fixed to account for possesive pronouns, of course
;; 1/8/2015 the word HAD cannot occur inside an NP, even though is is HAVE+ED
;; 1/10/2015 revise handling of THAT in ng-start? -- it is almost never the case that THAT is a determiner, it is usually a relative clause marker or a thatcomp marker
;; add relative-clause to *minor-categories* to avoid break in final sweep
;; 1/14/2015 support for thatcomp
;; 1/28/2015 update *vp-categories*, since the verb BE is covered by an edge which isjust category::verb
;; 1/28/15 added *irrelevant-to-discourse-history*.
;; 2/3/15 removed outliers from pronoun-category? 3/13/15 added cases to
;;   *category-hierarchy* along with doc.
;; 3/21/2015 fixed error in ng-head? caught by SBCL
;; 4/24/2015 added whethercomp as a form category (for clauses like "whether RAS phosphorylates MEK..."
;; 4/27/2015 put back verb+ed as an ng internal category, and put quantifier as a possible head
;; 5/8/2015 add new fomr category "verbal-adjunct ;; TENTATIVE, intended for manner-adverbials like "by phsophorylating ..." or
;; purpose adverbials like "for phorsphorylating..." or "to phosphorylate ..."

;; 5/25/2015 added a bunch of categories to support pp-relative-clause processing
;;  pp-wh-pronoun, pp-relative-clause, subject-relative-clause
;; 5/30/2015 added new passive categories
;;(def-form-category  vg+ed) ;; vg with an untensed (no aux or modal) V+ED
;;(def-form-category  vg+passive) ;; vg with an be and V+ED
;;(def-form-category  vp+passive) ;; vg with an be and V+ED
;; 6/5/15 Added grammatical-subject and direct-object to name relationships of a term
;;  (e.g. a pronoun) to its syntactic environment
;; 6/8/2015 tweaked ng-head?  to prevent treating <adverb> <vp+ing> as a NG group
;; 9/6/15 Added number to the list of categories that aren't relevant in a discourse
;;   history. And again 9/24/15
;;     12/15 changed vg/passive and vp/passive to vg+passive vg+passive

(in-package :sparser)


;;;----------------------------
;;; setting up form categories
;;;----------------------------

(defgeneric form-category? (category)
  (:documentation "Is this category a 'form' category?")
  (:method ((s string))
    ;; Tthis case comes up  when walking the
    ;; rhs of a case in an ETF and this corresponds to a word
    nil)
  (:method ((s symbol))
    (let ((c (category-named s)))
      (when c
        (form-category? c))))
  (:method ((c category))
    (when (get-tag :form-category c)
      c )))


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

(defgeneric mark-as-form-category (category)
  (:method ((name symbol))
    (mark-as-form-category (category-named name :break-if-none)))
  (:method ((c category))
    (setf (get-tag :form-category c) t)))



;;;-----------------
;;; paragraph level
;;;-----------------

(def-form-category section-header)

(def-form-category section-marker)

(def-form-category paired-punctuation)

;;;--------------
;;; clause level
;;;--------------

(def-form-category s)

(def-form-category imperative)
(def-form-category question)
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
(def-form-category verbal-adjunct) ;; tentative, intended for manner-adverbials like "by phsophorylating ..." or
;; purpose adverbials like "for phorsphorylating..." or "to phosphorylate ..."

;;(def-form-category relative-clause)
(def-form-category subject-relative-clause)
(def-form-category object-relative-clause)
(def-form-category subordinate-relative-clause)
(def-form-category transitive-clause-without-object)
(def-form-category where-relative-clause)
(def-form-category when-relative-clause)
(def-form-category why-relative-clause)
(def-form-category comma-separated-subject-relative-clause)
(def-form-category pp-relative-clause)
(def-form-category thatcomp)
(def-form-category howcomp)
(def-form-category whethercomp)
(def-form-category ifcomp)

(def-form-category unknown-grammatical-function)

;; Grammatical function
(def-form-category grammatical-subject) ;; subject
(def-form-category direct-object) ;; 'object' is a subcat of Thing


;;;--------------
;;; phrase level
;;;--------------

(def-form-category  np)
(def-form-category  qnp) ;; for WH-phrases where the WH is taken as a spec.
(def-form-category  qp)
(def-form-category  proper-name)

(def-form-category  vp)
(def-form-category  vp+ing)
(def-form-category  vp+ed)
(def-form-category  vp+past)
;; disambiguate vp+ed vs case where there is an explicit object
;; "phosphorylated at Ser746" vs "phosphorylated Ser746"
(def-form-category  vp+passive) ;; vp with an be and V+ED

(def-form-category  vg)
(def-form-category  vg+ing) ;; vg with an untensed (no aux or modal) V+ING
(def-form-category  vg+ed) ;; vg with an untensed (no aux or modal) V+ED
(def-form-category  vg+passive) ;; vg with a be and V+ED

(def-form-category  pp)
(def-form-category  pp-wh-pronoun)
(def-form-category  relative-subordinator) ;; "after which" + S

(def-form-category  advp)
(def-form-category  comparative-advp)
(def-form-category  superlative-advp)

(def-form-category  adjg) ;; for minimal phrases, usually from chunker
(def-form-category  adjp) ;; adjg plus complements
(def-form-category  comparative-adjp)
(def-form-category  superlative-adjp)

(def-form-category  to-comp) ;; to + vp or to+vg
(def-form-category  as-comp) ;; to + vp or to+vg
(def-form-category  prep-comp) ;; {by, for, after, ..} + vg{+ing}

(def-form-category rel-pro-to-be-quantified) ;; "of which" in the context "<quantifier> of which"

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
(def-form-category  temporal-preposition)
(def-form-category  spatio-temporal-preposition)
(def-form-category  sequencer)

(def-form-category  verb)
(def-form-category  verb+s)
(def-form-category  verb+ed)   ;; "main verb, ends in +ed"
(def-form-category  verb+ing)
(def-form-category  verb+present) ;; principally for auxiliaries
(def-form-category  verb+past)    ;; ditto
(def-form-category  infinitive)
(def-form-category  infinitive-marker) ;; for "to" from Quirk, et al.
(def-form-category  verb+passive)

(def-form-category  preposed-auxiliary)
;; marker category to influence other processes

(define-category  mvb)
  ;; 'main verb' - only used as a label on brackets
  ;; as a means of discriminating them from auxiliaries.
                  

(def-form-category  det)
(def-form-category  approximator)
(def-form-category  n-bar)
(def-form-category  noun)
(def-form-category  common-noun)
(def-form-category  common-noun/plural)
(def-form-category  proper-noun)
(def-form-category  pronoun)
(def-form-category  wh-pronoun)
(def-form-category  indef-pronoun) ;; "everything"

(def-form-category  noun/verb-ambiguous)

(def-form-category  np-head)
(def-form-category  classifier)
(def-form-category  quantifier)
(def-form-category  number)


(def-form-category  definite-modifier)   ;; "last (year)"
(def-form-category  possessive)
(def-form-category  possessive/pronoun) ;; e.g "mine"
(def-form-category  reflexive/pronoun)  ;; "yourself"

(def-form-category  adjective)
(def-form-category  comparative-adjp)
(def-form-category  superlative-adjp)
(def-form-category  proper-adjective)
(def-form-category  comparative) ;; more, less -- they make the comparative forms of adjectives
(def-form-category  superlative) ;; most, least -- they make the superlative forms of adjectives
(def-form-category  comparative-adjective)
(def-form-category  superlative-adjective)
(def-form-category  spatial-adjective)
(def-form-category  temporal-adjective)

(def-form-category  deictic-time-word)

(def-form-category  adverb)
(def-form-category  comparative-adverb)
(def-form-category  superlative-adverb)
(def-form-category  modal)


(def-form-category  unknown-word)
(def-form-category  unknown-verb)


(def-form-category than-np) ;; to mark "than MAPK" in "less sensitive than MAPK"


;;--- These are principally for labeling brackets

(def-form-category  punctuation)
(def-form-category  newline)
(def-form-category  treetop)


;;;------------------------
;;; Implied part of speech
;;;------------------------

(defmethod infer-part-of-speech ((c category))
  "See infer-part-of-speech methods in object/chart/words/object.lisp.
   Given this form category, what simple part of speech does it correspond
   to. The head-keywords define the legal candidates, see objects/model/tree-
   families/rdata.lisp"
  (assert (form-category? c) (c)
          "Can only get part of speech off of form categories. Not from ~a" c)
  (infer-part-of-speech (cat-name c)))

(defmethod infer-part-of-speech ((name symbol))
  (assert (category-named name) ()
          "The symbol signature only applies to categories")
  (case name
    ;; pronoun possessive/pronoun reflexive/pronoun wh-pronoun
    ;; det
    ((verb verb+s verb+ed verb+ing
      verb+present verb+past verb+passive)
     :verb)
    (modal :modal)
    ((noun common-noun common-noun/plural) :common-noun)
    (proper-noun :proper-noun)
    ((adjective proper-adjective comparative superlative
                spatial-adjective  temporal-adjective approximator)
     :adjective)
    ((adverb comparative-adverb superlative-adverb)
     :adverb)
    (interjection :interjection)
    ((preposition spatial-preposition temporal-preposition
     spatio-temporal-preposition)
     :preposition)
    (quantifier :quantifier)
    (number :number)
    (otherwise nil)))
    


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

;; Large-scale distinctions

(defparameter *major-categories*
  `(,category::s
    ,category::subj+verb
    ,category::vp
    ;; again, not sure if adjective should be a major cateogry or a minor one
    ;; example "BRAF is (not) active."
    ,category::adjective))

(defparameter *minor-categories*
  `(,category::np
    ,category::pronoun
    ,category::proper-noun
    ,category::proper-name
    ,category::quantifier
    ,category::pp
    ;;,category::relative-clause
    ,category::subject-relative-clause
    ,category::where-relative-clause
    ,category::when-relative-clause
    ,category::pp-relative-clause
    ,category::thatcomp
    ,category::subordinate-conjunction))

(defmethod category-status ((c category))
  ;; used by smash-together-two-tt-islands to decide
  ;; which of two constituents is the head
  (cond
   ((memq c *major-categories*) :major)
   ((memq c *minor-categories*) :minor)
   (t (break "Unclassified category: ~a" c))))


(defparameter *category-hierarchy*
  `(,category::s
    ,category::subj+verb
    ,category::vp
    ,category::np
    ,category::n-bar
    ;;,category::relative-clause
    ,category::subject-relative-clause
    ,category::where-relative-clause
    ,category::when-relative-clause
    ,category::pp-relative-clause
    ,category::thatcomp
    ,category::pp
    ,category::proper-noun
    )
  "Used by the anaphoric reference machinery to get
  a rough assessment of the relative salience of
  different edge parents (edge-used-in).")



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


;;;---------------------------------------------
;;; baby-step towards form + form => form rules
;;;---------------------------------------------

(defun edge-form-adjustment (left-edge right-edge rule-form)
  ;; called from make-default-binary-edge and should migrate to others.
  ;; The point is to not let the form 'decrease' through composition.
  ;; Compare with segment spanning adjustments
  ;; If we return nil then the form on the rule will be used. 
  (unless (eq rule-form category::s) ;; top of phrase hierarchy
    (let ((left-form (edge-form left-edge))
          (right-form (edge-form right-edge)))
      (when (and left-form right-form)
        ;; Some sort of gradation of the categories could reduce this
        ;; to arithmetic. 
        (when (or (eq left-form category::s)
                  (eq right-form category::s))
          category::s)))))



;;;--------------------------------------------------------------
;;; Basis of filter in add-subsuming-object-to-discourse-history
;;;--------------------------------------------------------------

(defparameter *irrelevant-to-discourse-history* nil
  "Populated by call from irrelevant-category-for-dh")

(defun populate-irrelevant-to-discourse-history ()
  (when (null *irrelevant-to-discourse-history*)
    (setq *irrelevant-to-discourse-history*
          `(,(category-named 'determiner)
             ,(category-named 'approximator)
             ,(category-named 'prepositional-phrase)
             ,(category-named 'relativized-prepositional-phrase)
             ,(category-named 'preposition)
             ,(category-named 'spatial-preposition)
             ,(category-named 'pronoun)
             ,(category-named 'conjunction) ;; Observed cases just covered "and"

             ,(category-named 'single-capitalized-letter)
             ,(category-named 'number)
             ))))

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

