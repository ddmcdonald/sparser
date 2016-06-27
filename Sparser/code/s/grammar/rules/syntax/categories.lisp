;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER) -*-
;;; copyright (c) 1992-1999,2011-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "categories"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.8 October 2015

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
(defvar CATEGORY::NOT)


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
(def-form-category verbal-adjunct) ;; tentative, intended for manner-adverbials like "by phsophorylating ..." or
;; purpose adverbials like "for phorsphorylating..." or "to phosphorylate ..."

;;(def-form-category relative-clause)
(def-form-category subject-relative-clause)
(def-form-category subordinate-relative-clause)
(def-form-category where-relative-clause)
(def-form-category when-relative-clause)
(def-form-category comma-separated-subject-relative-clause)
(def-form-category pp-relative-clause)
(def-form-category thatcomp)
(def-form-category whethercomp)

(def-form-category unknown-grammatical-function)

;; Grammatical function
(def-form-category grammatical-subject) ;; subject
(def-form-category direct-object) ;; 'object' is a subcat of Thing


;;;--------------
;;; phrase level
;;;--------------

(def-form-category  np)  
(def-form-category  vp)
(def-form-category  vp+ing)
(def-form-category  vp+ed)
(def-form-category  vg)
(def-form-category  vg+ing) ;; vg with an untensed (no aux or modal) V+ING
(def-form-category  vg+ed) ;; vg with an untensed (no aux or modal) V+ED
(def-form-category  vg+passive) ;; vg with an be and V+ED
(def-form-category  vp+passive) ;; vp with an be and V+ED

(def-form-category  pp)
(def-form-category  pp-wh-pronoun)
(def-form-category  advp)
(def-form-category  adjp)
(def-form-category  ap) ;; adjective phrase as in "downstream from RAS"
                        ;; can be used a NP postmod, or join with copula
(def-form-category  adjg) ;; for consistency with ng and vg -- could have been adj-bar?
(def-form-category  qp)

(def-form-category  proper-name)

(def-form-category  to-comp) ;; to + vp or to+vg
(def-form-category  as-comp) ;; to + vp or to+vg
(def-form-category  prep-comp) ;; {by, for, after, ..} + vg{+ing}




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
(def-form-category  infinitive-marker) ;; for "to" from Quirk, et al.
(def-form-category  verb+passive)

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
(def-form-category  proper-adjective)
(def-form-category  comparative)
(def-form-category  superlative)
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
    CATEGORY::NP))

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
    ;; CATEGORY::NUMBER ;; 'HOW many do you want? I want 3'
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

(defun thatcomp-verb (edge)
  (declare (special edge))
  ;; is this a verb that takes a that complement, like SHOW -- we should be checking the 
  ;;  rules for the verb

  (cond
   ((memq (cat-symbol (edge-category edge))
          '(
            category::demonstrate          
            category::hypothesize 
            category::indicate
            category::observe
            category::posit 
            category::propose
            category::report-verb
            category::reveal
            category::show 
            category::suggest
            category::verify
            ))
    t)
   (t
    ;;(print `(checking thatcomp status for ,(edge-category edge) ,edge))
    (break "THATCOMP?")
    nil)))

(defun thatcomp-noun (edge)
  (declare (special edge))
  ;; is this a verb that takes a that complement, like SHOW -- we should be checking the 
  ;;  rules for the verb

  (cond
   ((memq (cat-symbol (edge-category edge))
          '(category::possibility category::likelihood category::observe))
    t)
   (t
    ;;(print `(checking thatcomp status for ,(edge-category edge) ,edge))
   ;; (break "THATCOMP?")
    nil)))

(defun preceding-det-prep-poss-or-adj (e)
  (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
     thereis (det-prep-poss-or-adj? ee)))

(defun det-prep-poss-or-adj? (ee)
  (or (member (cat-name (edge-form ee)) '(det possessive adjective number
                                          verb+ed verb+ing))
      (and
       (member (cat-name (edge-form ee))
               '(preposition spatial-preposition)))))

(defun preceding-pronoun-or-which? (e)
  (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
     thereis
       (or
        (eq (cat-name (edge-category ee)) 'which)
        (eq (cat-name (edge-form ee)) 'pronoun))))

(defun followed-by-verb (e)
  (loop for ee in (ev-edges (pos-starts-here (pos-edge-ends-at e)) )
     thereis
       (member (cat-name (edge-form ee)) '(verb))))

(defun preceding-adverb (e)
  (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
     thereis
       (eq (cat-name (edge-form ee)) 'adverb)))

(defun preceding-adverb-or-subordinate-conjunction (e)
  (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
     thereis
       (member (cat-name (edge-form ee)) '(adverb subordinate-conjunction))))


(defgeneric ng-head? (label)
  (:documentation "Is a category which can occur as the head of an NG"))
(defmethod ng-head? ((w word))
  nil)
(defmethod ng-head? ((e edge))
  (declare (special *chunk* word::comma))
  (or (and (eq (cat-name (edge-form e)) 'number)
           (or (null (ev-edges (pos-ends-here (pos-edge-starts-at e)) ))
               (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
                  thereis
                    (or
                     (eq (edge-category ee) word::comma)
                     (member (cat-name (edge-form ee)) '(quantifier det adverb punctuation))))))
      (when (not (preceding-adverb e))
        (cond
          ((eq (cat-name (edge-form e)) 'quantifier)
           (and
            (not (itypep (edge-referent e) 'not))
            (or
             (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
                  thereis
                     (eq (cat-name (edge-form ee)) 'det))
             (not (chunk-ev-list *chunk*)))))
          ((eq (cat-name (edge-form e)) 'verb+ed)
           nil)
          ((plural-noun-and-present-verb? e)
           ;; fix logic error -- if we hav a noun-verb ambiduity,
           ;; then we must check the following --
           ;; the only time we treat the word as a noun is if it immediately follows a det or prep
           ;; cf. "RAS results in" vs "the results..."
           (or
            (preceding-det-prep-poss-or-adj e)
            (followed-by-verb e)))
          ((singular-noun-and-present-verb? e)
           (not (preceding-pronoun-or-which? e)))
          ((eq (cat-name (edge-form e)) 'VERB+ING) ; 
           (let
               ((end-pos (pos-edge-ends-at e))
                (prev-edge (left-treetop-at/edge (pos-edge-starts-at e))))
             (declare (special end-pos prev-edge)) 
             (and
              (not (and (edge-p prev-edge)(eq (cat-name (edge-form prev-edge)) 'adverb)))
              (let
                  ((next-edge (right-treetop-at/edge end-pos)))
                (not (and (edge-p next-edge)(eq (cat-name (edge-form next-edge )) 'det))))
              (not
               (memq 
                ;; SBCL caught an error here -- led to simplification to use pos-terminal
                (word-symbol (pos-terminal (pos-edge-ends-at e)))
                '(WORD::|that| WORD::|which| WORD::|whose|))))))
          ((ng-head? (edge-form e)) t)
          ((and
            (eq category::det (edge-form e))
            (member (cat-name(edge-category e)) '(that this these those))))))))

(defmethod ng-head? ((c referential-category))
  (ng-head? (cat-symbol c)))
(defmethod ng-head? ((name symbol))
  (memq name *ng-head-categories*))

(defvar *vg-word-categories*
  '(CATEGORY::ADVERB 
    CATEGORY::MODAL
    CATEGORY::VERB
    CATEGORY::VERB+S
    CATEGORY::VERB+ED
    CATEGORY::VERB+ING
    CATEGORY::VERB+PRESENT
    CATEGORY::VERB+PASSIVE
    CATEGORY::NOUN/VERB-AMBIGUOUS
    CATEGORY::MODAL
    CATEGORY::NOT))

(defvar *vg-head-categories*
  '(CATEGORY::VERB
    CATEGORY::VERB+S
    CATEGORY::VERB+ED
    CATEGORY::VERB+ING
    CATEGORY::VERB+PRESENT
    CATEGORY::VERB+PASSIVE
    CATEGORY::NOUN/VERB-AMBIGUOUS))

(defmethod vg-start? ((e edge))
  (declare (special category::to))
  (cond
    ((plural-noun-and-present-verb? e)
     (and
      (not (preceding-det-prep-poss-or-adj e))
      (or
       (not (plural-noun-not-present-verb e))
       (some-edge-satisfying? (edges-after e) #'clear-np-start?)
       (not (ng-compatible? e nil))
       (not (ng-head? e)))))
    ((singular-noun-and-present-verb? e)
     (or
      (preceding-pronoun-or-which? e)
      (and
       (not (and
             (preceding-det-prep-poss-or-adj e)
             ;; allow for "to form GDP"
             (not
              (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
                 thereis (eq (cat-name (edge-category ee)) 'to)))))
       (not (followed-by-verb e)))))
    (t
     (vg-compatible? e))))

(defgeneric vg-compatible? (label)
 (:documentation "Is a category which can occur inside a VG"))

(defmethod vg-compatible? ((w word))
  t)
(defmethod vg-compatible? ((e edge))
  (declare (special category::not category::then))
  (or
   (vg-compatible? (edge-form e))
   (eq category::not (edge-category e))
   (eq category::time (edge-category e))
   ;;(eq category::then (edge-category e))
   ))

(defmethod vg-compatible? ((c referential-category))
  (vg-compatible? (cat-symbol c)))
(defmethod vg-compatible? ((name symbol))
  (memq name *vg-word-categories*))

(defgeneric vg-head? (label)
  (:documentation "Is a category which can occur as the head of a VG"))
(defmethod vg-head? ((w word))
  t)
(defmethod vg-head? ((e edge))
  (vg-head? (edge-form e)))
(defmethod vg-head? ((c referential-category))
  (vg-head? (cat-symbol c)))
(defmethod vg-head? ((name symbol))
  (memq name *vg-head-categories*))


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

(defgeneric adjg-compatible? (label)
  (:documentation "Is a category which can occur inside an ADJG"))
(defmethod adjg-compatible? ((w word))
  t)
(defmethod adjg-compatible? ((e edge))
  (or
   (adjg-compatible? (edge-form e))
   (and
    (edge-form e) ;; commas have NIL edge-forms
    ;; these are all for linking/copular verbs like BE, REMAIN, SMELL, BECOME
    (memq (cat-symbol (edge-form e))
          '(CATEGORY::VERB
            CATEGORY::VERB+S
            CATEGORY::VERB+ED
            CATEGORY::VERB+ING
            CATEGORY::VERB+PRESENT
            CATEGORY::VERB+PASSIVE))
    (and
     (category-p (edge-category e)) ;; sometimes get comma edges
     (or
      (memq (cat-symbol (edge-category e))
	    `(category::be
	      category::become
	      category::remain
	      category::stay))
      (and (eq (cat-symbol (edge-category e)) 'category::have)
	   ;; only allow "have" to create the past tense of a linking verb
	   (let
	       ((next-edge (car (preterminal-edges (pos-edge-ends-at e)))))
	     (and
	      (edge-p next-edge)
	      (category-p (edge-category next-edge))
	      (memq (cat-symbol (edge-category next-edge)) 
		    `(category::be
		      category::become
		      category::remain
		      category::stay)))))
      (eq category::not (edge-category e)))))))

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

(defun prev-adj (e)
  (declare (special category::adjective))
  (loop for ee in (ev-edges (pos-ends-here (pos-edge-starts-at e)) )
     thereis (eq (edge-form ee) category::adjective)))

(defmethod adjg-head? ((c referential-category))
  (adjg-head? (cat-symbol c)))
(defmethod adjg-head? ((name symbol))
  (memq name *adjg-head-categories*))


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
  (memq name '(category::verb
               category::verb+present
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


(defparameter *vp-categories*
  `(
    ,category::participle
    ,category::pp-relative-clause
    ,category::s ;; convenient for find-verb
    ,category::subj+verb
    ,category::subject-relative-clause
    ,category::where-relative-clause
    ,category::when-relative-clause
    ,category::v-bar
    ,category::verb ;; this covers BE!
    ,category::verb+ed
    ,category::verb+ing
    ,category::verb+object
    ,category::verb+s ;; added
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



(define-category event-relation
  :specializes perdurant
  :binds ((relation)
          (event)
          (subordinated-event)
	  (adverb)
          (following process)
          (preceding process)
	  (during process)
	  (timeperiod (:or time-unit amount-of-time)))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
    though the head decides what to do with it based on the
    composition. Same design as pps."
  )

(mark-as-form-category category::event-relation)
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
  (setq *irrelevant-to-discourse-history*
        `(,(category-named 'determiner)
	   (category-named 'approximator)
          ,(category-named 'prepositional-phrase)
          ,(category-named 'preposition)
          ,(category-named 'spatial-preposition)
          ,(category-named 'pronoun)
          ,(category-named 'conjunction) ;; Observed cases just covered "and"

          ,(category-named 'single-capitalized-letter)
          ,(category-named 'number)
          )))

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

