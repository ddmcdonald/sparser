;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald -- all rights reserved
;;;
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  November 2016

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.
;; RJB 12/20/2014 tentative fix to allow interpret-pp-adjunct-to-np
;;   to handle bio-context.
;; 1/2/2015 put hooks in adjoin-pp-to-vg and interpret-pp-adjunct-to-np
;;   to allow for subcategorization frames
;; 1/5/2015 refactor code that David wrote for adjoin-pp-to-vg and
;;   interpret-pp-adjunct-to-np to allow them to be used as predicates as well as actions
;; 1/14/2015 support for negation and (eventually) other tense/aspect features
;;   methods for assimilating object using sub-categorization frame,
;;   and for handling verb_ing premodifiers
;; (2/12/15) Fixed return value for adj-noun-compound.
;; 2/23/2015 allow pronouns to be subjects using the submit mechanism, and
;; this file contains the mechanisms for creating an edge over the pronoun edge to include the semantic constraint from the verb
;; 3/4/2015 make subcategorization frame respect passives (maps surface subject to object)
;;  don't allow a copular-pp on an instance of BE+NP
;; 3/10/2015 for clarity, rename copy-individual to maybe-copy-individual
;; methods to save sucat instances
;; many small SBCL fixes
;; MAJOR SBCL FIX -- added new method get-prep-pobj to allow us to get the prep and pobj from
;;  the referent of a PP, without having to bind variables
;;  and create lots of vaariable bindngs to manage and search through.
;; 4/14/15 refactored subcategorized-variable to make the test readable and
;;   accommodate override categories
;; 4/15/15 Reworked treatment of the prepositional-phrase scafolding.
;;   Now can have :premod rules for noun-noun modifiers and adj-noun modifiers
;; 4/16/2015 fix make-copular-pp to reject "clausal to-pps" like "to enhance craf activation"
;;     make apply-copular-pp (almost) work -- something is wrong with the referent of the
;;     result -- DAVID -- let's look at it
;; 4/24/2015 correct trivial typo variable-to-bin --> variable-to-bind
;;  that would have blown up in collection of subcat information
;; 4/25/13 Made interpret-pp-adjunct-to-np bind the pobj rather than the pp
;; 4/27/2015 add new mechanism for sub-cat like interpretation where the PP obj becomes the head,
;;  using the syntactic-function interpret-pp-as-head-of-np
;;  this is actually for phrases like "a phosphoserine at residue 827"
;; 5/3/2015 new adjunct like modifier for bio-rocess -- "upon" or "following" <bio-process>
;; 5/8/2015 handle "in vitro" and "in vivo" as VP post-modifiers
;; 5/25/2015 start on handling pp-relative-clauses. 5/26/15 Modified return of
;; interpret-pp-adjunct-to-np to fail the rule rather than try to bind it's arg
;; to the variable 'nil'.
;; 5/30/2015 make sure all subcat type rules return NIL when they are called with an
;; argument that does not meet subcategorization requirements --
;; sometimes the rules can be called inside parenthesis processing, etc., and that
;; process does not do the appropariate "pre-checks"
;; Better handling of special cases for tense/aspect and adverb
;; 6/1/2015 add new method individual-for-ref that does all the work of
;;  getting an appropriate individual for the referent of an edge (creating
;;  an individual in the case where the referent is a category, and copying
;;  the individual when needed if the referent was an individual) Uniformly
;;  used this method in all places that previously used
;;  maybe-copy-individualand/or make-individual-for-dm&p
;; 6/2/2015 Key check in assimilate-subject-to-vp-ed that blocks using
;;  vp+ed (or vg+ed) as a main verb when there is a missing object -- such
;;  ases are much more likely to be reduced relatives this helps handle the
;;  Chen/Sorger sentences like "BRAF bound to Ras transphosphorylates itself
;;  at Thr598 and Ser601."  in the sense that the reduced relative is not
;;  bsorbed as a main verb, though we still need to handle the rule for the
;;  reduced relative.
;; 6/4/15 More modification to assimilate-subject-to-vp-ed for reduced relative
;; 6/8/2015 more informative messages for cases where subcategorization is 
;;   handed a NP with NIL referent
;; 6/22/15 Added prep-comp to allow richer set of prepositions to adjoint
;;   to VPs and expose the preposition to the subcategorization of the head.
;; 6/28/2015 Don't collect information on VP+ED sentences -- 
;; mechanism causes stack overflow because of the pushne with equalp...
;; Handle locations as premodifiers "nuclear kinase"  9/29/15 abstracted the
;; check for a pronoun we should ignore.
;; 1/2/16 Moved individual-for-ref to individuals/make.lisp


(in-package :sparser)
(defvar CATEGORY::PREPOSITIONAL-PHRASE)
(defvar CATEGORY::PRONOUN/INANIMATE)
(defvar CATEGORY::THERE-EXISTS)
(defvar CATEGORY::COPULAR-PP)
(defvar CATEGORY::COPULAR-PREDICATE)


;; (left-edge-for-referent)
;; (right-edge-for-referent)
;; (parent-edge-for-referent)

;; move to utilities associated with edge-search
(defun pair-context ()
  (let ((left (left-edge-for-referent))
        (right (right-edge-for-referent)))
    (when (and left right)
      (format nil "e~a + e~a"
              (edge-position-in-resource-array left)
              (edge-position-in-resource-array right)))))


;;;------------
;;; parameters
;;;------------

(defparameter *force-modifiers* nil
  "Set to T when you want to accept all PP modifiers
  to NPs and VPs")

(defparameter *subcat-test* nil
  "Set to T when we are executing the referent function
   as a predicate, not as part of interpretation of an NP or VP")


;;;----------------------
;;; unattached variables
;;;----------------------

(define-lambda-variable 'comparative
    nil category::top) ;needed for interpretation of "more effective"

(define-lambda-variable 'predication
    nil category::top)

(define-lambda-variable 'comparative-predication
    nil category::top)

(define-lambda-variable 'compared-to
    nil category::top)

(define-lambda-variable 'superlative-predication
    nil category::top)

(define-lambda-variable 'superlative-from-set
    nil category::top)

(define-lambda-variable 'predicate
    nil category::top)

(define-lambda-variable 'ordinal
    nil category::top)

(define-lambda-variable 'appositive-description
    nil category::top)

(define-lambda-variable 'comp 
    nil category::top)

(define-lambda-variable 'subordinate-conjunction
    nil category::top)

(define-lambda-variable 'purpose
    nil category::top)

(define-lambda-variable 'quantifier
    nil category::top)

(define-lambda-variable 'number
    nil category::top)

(define-lambda-variable 'det-quantifier ;; as in "all these"
    nil category::determiner)

(define-lambda-variable 'has-determiner
    nil category::top)


(define-lambda-variable 'approximator
    nil category::number)

(define-lambda-variable 'event-relation
    nil category::top)

(define-lambda-variable 'amount-of-time
    nil category::top)

#|
No longer used -- remove soon
(define-lambda-variable 'copular-verb
    nil category::top)
|#


(define-lambda-variable 'intensity
    nil category::top) ;; for percentage in "95% sure"


;;;----------------------------
;;; place to stash determiners
;;;----------------------------

;;; --- part of mechanism to hang on to "modifiers" that should not be
;;;     incorporated in description-lattice individuals
;;; These include determiners and parentheticals
;;; see operations in create-discourse-mention and extend-discourse-mention

(defparameter *non-dli-mod-ht* (make-hash-table)
  "Holds determiners for NPs until they are put in
   the discourse mention")

(defun non-dli-mod-for (i)
  (gethash i *non-dli-mod-ht*))

(defun (setf non-dli-mod-for) (det i)
  (setf (gethash i *non-dli-mod-ht*) det))


;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (qualifier head)
  (declare (special category::determiner))
  ;; goes with (common-noun common-noun) syntactic rule
  (cond
    (*subcat-test*
     (not (or (word-p head) ;; this happened with word = HYPHEN, "from FCS-treated cells"
              ;; also happened with "nontargeting"
              (null head) ;; happens when head is a bio-entity
              (and (individual-p head)
                   (itypep head category::determiner)))))
    ((itypep head category::determiner)
     ;; had strange case with "some cases this" -- head was "this"
     nil) 
    ((and qualifier head
	  (not (or (category-p head)
		   (individual-p head))))
     ;; Have cases like "pp170" where the head has a PW as referent.
     ;; Don't know what to  do
     (break "Can't deal with head whose interpretation is not ~
             an individual or category in noun-noun-compound, head is ~s~&" head))
    ((and qualifier head)
     (setq head (individual-for-ref head))
     (cond
       ((unless (current-script :biology)
          (compose qualifier head)))
       ((itypep qualifier 'dependent-location) ;; "bottom" in "bottom block"
        (add-dependent-location qualifier head))
       ((and
         (category-named 'knockout-pattern)
         (itypep head 'knockout-pattern)
         (itypep qualifier 'protein)
         (setq qualifier (bind-variable 'cell-line ;; ???
                                        head qualifier)))
        qualifier)
       ;;/// There are a lot of knockout patterns. Enumerating them
       ;; like this is going to get old. Feels like motivation for
       ;; from-rule generated methods, all using a standard schema to
       ;; indicate what variable to use, head & form, etc
       ((and (category-named 'knockout-pattern)
             (itypep qualifier 'knockout-pattern)
             (itypep head 'mouse)
             (setq head (bind-variable 'cell-line qualifier head)))
        head)
       ((and (itypep qualifier (itype-of head))
             (not (indiv-binds head))
             ;; head already is modified -- don't replace with proper noun
             ;; e.g. "braf mutant a 375 melanoma cell"
             (if (is-basic-collection? qualifier)
                 (and ;; conjunction of named items
                  (individual-p (car (value-of 'items qualifier)))
                  (value-of 'name (car (value-of 'items qualifier))))
                 ;; named item
                 (value-of 'name qualifier)))
        ;; intended as test for proper noun or other specific NP
        (revise-parent-edge :form category::proper-noun)
	qualifier)
       ((interpret-premod-to-np qualifier head))
       ;; subcat test is here. If there's a :premod subcategorization
       ;; that's compapatible this gets it.
       (t
	;; what's the right relationship? Systemics would say
	;; they are qualifiers, so perhaps subtype?
	(setq head (bind-variable 'modifier qualifier head)) ;; safe
	head)))))

(defun interpret-premod-to-np (premod head)
  (let ((variable-to-bind
          (subcategorized-variable head :m premod)))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (when *collect-subcat-info*
        (push (subcat-instance head :m variable-to-bind premod)
              *subcat-info*))
      (setq head (individual-for-ref head))
      (setq head (bind-variable variable-to-bind premod head))
      head))))

(defun adj-noun-compound (adjective head &optional adj-edge)
  (declare (special category::determiner))
  (when (category-p head) (setq head (individual-for-ref head)))
  (cond
    (*subcat-test*
     (takes-adj? head adjective))
    ((unless (current-script :biology)
       (compose adjective head))) ;; This case is to benefit marker-categories
    ((itypep adjective 'attribute-value)
     (handle-attribute-of-head adjective head))
    ((interpret-premod-to-np adjective head)) ;; normal subcategorization
    (t ;; Dec#2 has "low nM" which requires coercing 'low'
     ;; into a number. Right now just falls through
     (let ((predicate 
	     (if (and (not (is-basic-collection? adjective))
                      (find-variable-for-category :subject (itype-of adjective)))
		 (create-predication-by-binding
                  :subject **lambda-var** adjective
                  (list 'adj-noun-compound (or adj-edge (left-edge-for-referent))))
		 (individual-for-ref adjective))))
       (setq head (bind-dli-variable 'predication predicate head))
       head))))

(defun comparative-adj-noun-compound (adjective head &optional adj-edge)
  (declare (special category::determiner))
  (when (category-p head) (setq head (individual-for-ref head)))
  (cond
    (*subcat-test*
     (takes-adj? head adjective))
    (t ;; Dec#2 has "low nM" which requires coercing 'low'
     ;; into a number. Right now just falls through
     (let ((predicate 
	     (if (and (not (is-basic-collection? adjective))
                      (find-variable-for-category :subject (itype-of adjective)))
		 (create-predication-by-binding
                  :subject **lambda-var** adjective
                  (list 'adj-noun-compound (or adj-edge (left-edge-for-referent))))
		 (individual-for-ref adjective))))
       (setq head (bind-dli-variable 'comparative-predication predicate head))
       head))))

(defun superlative-adj-noun-compound (adjective head &optional adj-edge)
  (declare (special category::determiner))
  (when (category-p head) (setq head (individual-for-ref head)))
  (cond
    (*subcat-test*
     (takes-adj? head adjective))
    (t ;; Dec#2 has "low nM" which requires coercing 'low'
     ;; into a number. Right now just falls through
     (let ((predicate 
	     (if (and (not (is-basic-collection? adjective))
                      (find-variable-for-category :subject (itype-of adjective)))
		 (create-predication-by-binding
                  :subject **lambda-var** adjective
                  (list 'adj-noun-compound (or adj-edge (left-edge-for-referent))))
		 (individual-for-ref adjective))))
       (setq head (bind-dli-variable 'superlative-predication predicate head))
       head))))

(defun adj-postmodifies-noun (n adj &optional (adj-edge nil))
  ;; adj-edge is set when we are postmodifying
  ;; to be more picky about which adjectives can post-modify a noun
  (when (or adj-edge (itypep adj 'post-adj))
    (adj-noun-compound adj n adj-edge)))

(defparameter *dets-seen* nil)

(defun create-partitive-np (quantifier of-pp)
  (declare (special quantifier of-pp))
  (let ((pp-edge (right-edge-for-referent)))
    (when (and (not (eq (edge-form pp-edge) category::preposition))
               (has-definite-determiner? (edge-right-daughter pp-edge)))
      (cond
	(*subcat-test* t)
	(t
	 (unless *sentence-in-core*
	   (error "Threading bug. No value for *sentence-in-core*"))
	 (let ((pobj-ref (edge-referent (edge-right-daughter pp-edge))))
	   (revise-parent-edge :category (itype-of pobj-ref))
	   (add-pending-partitive quantifier  (parent-edge-for-referent) *sentence-in-core*)
	   pobj-ref
	   ))))))

(defparameter *determiners-in-DL* t) ;; put the determiner in the description, not in the mention

(defun determiner-noun (determiner head)
  "NO LONGER Drop indefinite determiners on the ground. Mark definites
   for later handling."
  (declare (special *sentence-in-core*))
  (push-debug `(,determiner ,head))
  (or *subcat-test*
      (let* ((parent-edge (parent-edge-for-referent))
	     (det-edge (left-edge-for-referent))
	     (det-word (edge-left-daughter det-edge)))
	(unless (or (definite-determiner? det-word)
		    (indefinite-determiner? det-word))
	  ;; There are a ton of categories that are defined to be
	  ;; syntactic determiners that deserve their own careful
	  ;; semantic treatment that might funnel through here
	  ;; We can dispatch of the type of the determner:
	  ;; quantity, approximator, etc. Pull them out of the
	  ;; modifiers dossier. 
	  (pushnew determiner *dets-seen*)
	  #+ignore (error "Didn't expect ~s to be read as a determiner" det-word))
	(setf (non-dli-mod-for head) (list 'determiner determiner))
	(cond          
	  ((unless (current-script :biology)
             (compose determiner head)))
          ((and *determiners-in-DL* (or (individual-p head)(category-p head)))
           (setq head (bind-dli-variable 'has-determiner determiner head))
           (if (definite-determiner? determiner)
               (add-def-ref determiner parent-edge)))
	  ((definite-determiner? determiner)
           (add-def-ref determiner parent-edge)))
	head)))

(defun add-def-ref (determiner parent-edge)
  (let ((sentence (identify-current-sentence)))
    ;; NOTE -- IMPORTANT
    ;; this adds the definite determiner on the N-BAR, and does not, by iteself,
    ;; mark the complete NP as a definite reference
    ;; have to do something in complete-edge/hugin
    ;; call to update-definite-determiner, defined in content-methods
    (add-pending-def-ref determiner parent-edge sentence)))


(defun possessive-np (possessive head)
  "Treating it as equialent to an 'of' treatment of genitive"
  (declare (special word::|of|))
  (or
   *subcat-test*
   (unless (current-script :biology)
     (compose possessive head))
   (let ((var (subcategorized-variable head word::|of| possessive)))
     (if var
       (setq head (bind-variable var possessive head))
       (else
         ;; trace goes here
         (setq head (bind-variable 'modifier possessive head))))
     head)))




(defun quantifier-noun-compound (quantifier head)
  (declare (special category::no category::endurant category::perdurant
                    category::abstract category::quality category::determiner))
  ;; Not all quantifiers are equivalent. We want to idenify
  ;; cases of negation ("no increase") and eventually probably
  ;; float them up to the main verb, //// which will require
  ;; making a note somewhere on the sentence structure reminding
  ;; us to do that after the analysis dust has settled.
  ;;
  ;; Before doing quantifiers seriously find copy of Kurt vanLehn's
  ;; MS thesis and think about generalized quantifiers.
  ;; (push-debug `(,quantifier ,head)) (break "quantifier-noun-compound")
  ;;  (setq quantifier (car *) head (cadr *))

  (cond
    (*subcat-test*
     (itypep head '(:or endurant perdurant abstract bio-abstract quality
                    biological time-kind determiner)))
    (t
     (setq head (individual-for-ref head))
     (when
         (and *determiners-in-DL* (or (individual-p head)(category-p head)))
       (setq head (bind-dli-variable 'quantifier quantifier head)))
     (cond
       ((itypep quantifier category::no) ;; special handling for negation
        (setq head (bind-dli-variable 'negation quantifier head)))
       ((or
         (itypep head category::endurant)
         (itypep head category::perdurant) ;; we quantify perdurants like phosphorylations and pathway steps
         (itypep head category::abstract) ;; we quantify abstract items like "group"
         (itypep head 'bio-abstract) ;; we quantify abstract items like "group"
         (itypep head category::quality) ;; we quantify qualities "some level"
         (itypep head 'biological) ;; we quantify things like "such models"
         (itypep head 'time-kind)) ;; we quanitfy things like "some time"
        (setf  (non-dli-mod-for head) (list 'quantifier quantifier))
        ;; don't use KRISP variables for quanitifiers -- put them in the mention
        ;;(setq  head (bind-dli-variable 'quantifier quantifier head))
        )
       ((itypep head category::determiner) ;; "all these"
        (setq  head (bind-dli-variable 'det-quantifier quantifier head)))
       (t
        (lsp-break "~&@@@@@ adding quantifier ~s to ~s~&"
                   (retrieve-surface-string quantifier)
                   (if (individual-p head)
                       (retrieve-surface-string head)
                       "**MISSING**"))
        (setq  head (bind-dli-variable 'quantifier quantifier head))))
     head)))


(defun number-noun-compound (number head)
  (declare (special category::endurant))
  ;;/// for the moment there is a number variable on
  ;; endurant we can bind. Going forward we should automatically
  ;; make a composite individual using a collection.
  ;; See notes on forming plurals in morphology1
  (cond
    (*subcat-test* (and number head))
    (t
     (setq head (individual-for-ref head))
     (when (itypep head category::endurant) ;; J34: "Histone 2B"
       ;;    ~600 kinase
       (setf (non-dli-mod-for head) (list 'number number))
       ;;(setq  head (bind-dli-variable 'number number head))
       )
     (when (and *determiners-in-DL*
                (or (individual-p head )(category-p head)))
       (setq head (bind-dli-variable 'number number head)))
     head)))


(defun verb+ing-noun-compound (qualifier head)
  (or (unless (current-script :biology)
        (compose qualifier head))
      (link-in-verb+ing qualifier head)))

(defun link-in-verb+ing (qualifier head)
  (let ((premod-n-variable
         (subcategorized-variable head :m qualifier)))
    (if premod-n-variable
        (bind-dli-variable premod-n-variable qualifier head)
   
        (let ((subject (subcategorized-variable  qualifier :subject head)))
          (cond
            (*subcat-test* subject)
            ((word-p qualifier)
             ;; probably a case of an unknown verb+ing created by morphology
             ;;  like "mating" in PMC352229
             ;; "the complementary mating type-switched strain PJ69–4A"
             ;; Dropping it on the floor seems ok since we don't know
             ;; what it means
             head)
            (t
             (setq qualifier (individual-for-ref qualifier))
             (when subject ;; really should check for passivizing
               (setq qualifier (create-predication-by-binding
                                subject head qualifier
                                (list 'link-in-verb+ing (parent-edge-for-referent)))))
             (setq head (bind-dli-variable 'predication qualifier head))
             head))))))

(defun create-predication-by-binding (var val pred source)
  (let ((new-predication (bind-dli-variable var **lambda-var** pred)))
    (cond (new-predication
	   (create-discourse-mention new-predication source)
	   ;; THIS IS WHERE WE SHOULD CREATE A MENTION FOR THE NEW PREDICATION
	   new-predication)
	  (t pred))))

(defun verb-noun-compound (qualifier head)
  ;;(break "verb-noun-compound")
  ;; goes with (verb+ed n-bar-type) syntactic rule
  (cond
    ((null *current-chunk*) ;; not in an NG chunk -- don't apply this rule at the top level
     nil)
    (*subcat-test* (subcategorized-variable qualifier :object head))
    (t (or (unless (current-script :biology)
             (compose qualifier head))
	   ;; This case is to benefit marker-categories
	   (link-in-verb qualifier head)
	   (progn
	     ;; have cases like "pp170" where the head has a PW as referent -- don't know what to  do
	     (break "Can't deal with head whose interpretation is not an individual or category in verb-noun-compound, head is ~s~&" head)
	     nil)))))

(defun link-in-verb (qualifier head)
  (let ((var (subcategorized-variable qualifier :object head)
	  #+ignore (object-variable qualifier head)))
    (setq qualifier (individual-for-ref qualifier))
    (when var ;; really should check for passivizing
      (setq  qualifier (create-predication-by-binding var head qualifier
						      (list 'link-in-verb (parent-edge-for-referent)))))
    (setq  head (bind-dli-variable 'predication qualifier head))
    head))

;;;------------------
;;; Verb + Auxiliary
;;;------------------

;;--- functions called from rules

(defgeneric add-tense/aspect (aux vg)
  (:documentation "Interpret the auxiliary to make the appropriate
     addition onto the vector associated with the vg head.")
  (:method (aux (w word))
    (warn "can't apply add-tense/aspect to ~s and word ~s ~% in ~s%" aux w
          (sentence-string *sentence-in-core*))
    nil)
  (:method ((aux category) (vg category))
    (add-tense/aspect (individual-for-ref aux) (individual-for-ref vg)))
  (:method ((aux individual) (vg category))
    (add-tense/aspect aux (individual-for-ref vg)))
  (:method ((aux category) (vg individual))
    (make-vg-aux aux vg))
  (:method ((aux individual) (vg individual))
    (make-vg-aux aux vg)))

(defun check-passive-and-add-tense/aspect (aux vg)
  (let ((vg-cat
         (cond ((category-p vg) vg)
               ((individual-p vg) (itype-of vg))
               (t (lsp-break "check-passive-and-add-tense/aspect -- no category to check passive verb")))))
    (if (and (first (cat-realization vg-cat))
             (not (member  (etf-name (rdata-etf (first (cat-realization vg-cat))))
                           '(PASSIVE/WITH-BY-PHRASE))))
        (revise-parent-edge :form category::vg))
    (add-tense/aspect aux vg)))

(defgeneric add-tense/aspect-to-subordinate-clause (aux sc)
  (:method ((aux category) (sc category))
    (or *subcat-test*
        (add-tense/aspect-to-subordinate-clause aux (individual-for-ref sc))))
  (:method ((aux individual) (sc category))
    (or *subcat-test*
        (add-tense/aspect-to-subordinate-clause aux (individual-for-ref sc))))
  (:method ((aux category) (sc individual))
    (or *subcat-test*
         (make-vg-aux aux sc)))
  (:method ((aux individual) (sc individual))
    (or *subcat-test*
         (make-vg-aux aux sc))))

(defun absorb-auxiliary (aux vg)
  (cond
    (*subcat-test* t)
    (t (make-vg-aux aux vg))))

(defun make-vg-aux (aux vg)
  (when (category-p vg)
    (setq vg (individual-for-ref vg)))
  (add-tense/aspect-info-to-head aux vg))


;;--- routine that does the work.
;;/// compare to what's done in record-verb-tense for single verb edges

(defun add-tense/aspect-info-to-head (aux vg)
  (declare (special category::verb+ing))
  (let ((aux-form (edge-form (left-edge-for-referent))))
    ;; Check for negation
    (when (value-of 'negation aux)
      (setq vg (bind-dli-variable 'negation (value-of 'negation aux) vg)))

    ;; Propagate the auxiliary
    (bind-dli-variable (cond ((itypep aux '(:or modality conditional)) 'modal)
                             ((itypep aux 'future) 'occurs-at-moment)
                             ((itypep aux 'have) 'perfect)
                             ((itypep aux 'be)
                              (if (eq aux-form category::verb+ing)
                                'progressive
                                (return-from add-tense/aspect-info-to-head vg)))
                             (t (return-from add-tense/aspect-info-to-head vg)))
                       aux
                       vg
                       (itype-of vg))))


;;;-----------------
;;; VG + Complement
;;;-----------------

(defun vg-plus-adjective (vg adj)
  (cond
    (*subcat-test* t)
    (t
     (setq vg (individual-for-ref vg))
     (let ((var (object-variable vg)))
       (if var
	   (setq vg (bind-dli-variable var adj vg))
	   (setq vg (bind-dli-variable 'participant adj vg)))
       vg))))


;;;-------------
;;; VG + Adverb
;;;-------------

(defparameter *adverb+vg* nil)
(defparameter *show-missing-adverb-slots* nil)

(defun interpret-adverb+verb (adverb vg-phrase) 
  (declare (special category::deictic-location category::pp))
  ;; (push-debug `(,adverb ,vg)) (break "look at adv, vg")
  (if (word-p vg-phrase)
      (then (format t "vg-phrase ~s is not a category or an individual,~
                     ~% probably defined by morphology, can't attach adverb~%"
                    vg-phrase)
            vg-phrase)
      (let* ((vg (individual-for-ref vg-phrase))
             (variable-to-bind
              (subcategorized-variable vg :adv adverb)))
        #| Really should diagnose among
        (time) (location) (purpose) (circumstance) (manner) |#
        (cond
          ((or (and (itypep vg category::be);; block "THERE IS"
                    (itypep adverb category::deictic-location))
               (eq (edge-form (left-edge-for-referent)) category::pp))
           nil)
          (*subcat-test*
           (cond
             (variable-to-bind t)
             ((has-adverb-variable? vg vg-phrase adverb) t)
             ((and (is-basic-collection? vg)
                   ;; saw an error in  "phase–contrast only"
                   ;; where "phase-contrast" was treated as a verb
                   (not (itypep vg 'hyphenated-pair))
                   (not (itypep vg 'hyphenated-triple))
                   (or
                    (subcategorized-variable 
                     (car (value-of 'items vg)) :adv adverb)
                    (has-adverb-variable?
                     (car (value-of 'items vg)) vg-phrase adverb)))
              t)
             (t
             (when *show-missing-adverb-slots*
               (warn "~&can't find adverb slot for ~s on verb ~s~& in sentence ~s~&"
                     (edge-string (left-edge-for-referent))
                     (edge-string (right-edge-for-referent))
                     (sentence-string *sentence-in-core*)))
              nil)))
          (variable-to-bind
           (bind-dli-variable variable-to-bind adverb vg))
          ((member (cat-name adverb) *subordinating-adverbs*)
           (bind-dli-variable 'subordinate-conjunction adverb vg))
          ((is-basic-collection? vg)
           (bind-dli-variable
            (or
             (subcategorized-variable 
              (car (value-of 'items vg)) :adv adverb)
             'adverb) adverb vg))
          ((has-adverb-variable? vg vg-phrase adverb)
           (setq vg (bind-dli-variable 'adverb adverb vg)))
          (t vg)))))

(defun interpret-adverb+adjective (adverb adj-phrase) 
  (declare (special category::deictic-location category::pp))
  ;; (push-debug `(,adverb ,vg)) (break "look at adv, vg")
  (if (word-p adj-phrase)
      (then (format t "adj-phrase ~s is not a category or an individual,~
                     ~% probably defined by morphology, can't attach adverb~%"
                    adj-phrase)
            adj-phrase)
      (let* ((adj (individual-for-ref adj-phrase))
             (variable-to-bind ;; can be nil as in "very low-to-undetectable "
              (subcategorized-variable adj :adv adverb)))
        #| Really should diagnose among
        (time) (location) (purpose) (circumstance) (manner) |#
        (cond
          ((or (and (itypep adj category::be);; block "THERE IS"
                    (itypep adverb category::deictic-location))
               (eq (edge-form (left-edge-for-referent)) category::pp))
           nil)
          (*subcat-test*
           (cond
             (variable-to-bind t)
             ((has-adverb-variable? adj adj-phrase adverb) t)
             ((and (is-basic-collection? adj)
                   (value-of 'items adj) ;; is null for hyphenated-triple
                   (or
                    (subcategorized-variable 
                     (car (value-of 'items adj)) :adv adverb)
                    (has-adverb-variable?
                     (car (value-of 'items adj)) adj-phrase adverb)))
              t)
             (t
              (when *show-missing-adverb-slots*
                (warn "~&can't find adverb slot for ~s on verb ~s~& in sentence ~s~&"
                      (edge-string (left-edge-for-referent))
                      (edge-string (right-edge-for-referent))
                      (sentence-string *sentence-in-core*)))
              nil)))
          (variable-to-bind
           (bind-dli-variable variable-to-bind adverb adj))
          ((member (cat-name adverb) *subordinating-adverbs*)
           (bind-dli-variable 'subordinate-conjunction adverb adj))
          ((is-basic-collection? adj)
           (bind-dli-variable
            (or
             (subcategorized-variable 
              (car (value-of 'items adj))
              :adv adverb)
             'adverb) adverb adj))
          ((has-adverb-variable? adj adj-phrase adverb)
           (setq adj (bind-dli-variable 'adverb adverb adj)))
          (t adj)))))



(defun interpret-as-comp (as vp+ed)
  (declare (ignore as))
  (edge-referent vp+ed))

(defun adjoin-ascomp-to-vg (vp as-comp)
  (declare (special vp as-comp))
  (let* ((variable-to-bind
          ;; test if there is a known interpretation of the NP/PP combination
          (subcategorized-variable
           vp :as-comp category::as-comp)))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (if *collect-subcat-info*
          (push (subcat-instance vp 'as-comp variable-to-bind
                                 as-comp)
                *subcat-info*))
      (setq vp (individual-for-ref vp))
      (setq vp (bind-dli-variable variable-to-bind as-comp vp))
      vp))))



;;;---------
;;; VG + PP
;;;---------

(defparameter *pobj-edge* nil
  "Used to generate useful error messages when the edge 
   referent is NIL.")



(defun identify-preposition (edge)
  "The edge is over a pp or prep-complement, etc. that is headed
   by a preposition. Sometimes the actual preposition word is
   buried under other edges. Find and return the preposition."
  (let* ((edge (base-pp edge))
         (prep-edge (edge-left-daughter edge))
         ;; in case where  (LOOK-FOR-PREP-BINDERS)
         ;;  ends up leading to this, the edge is a preposition itself
         (left-daughter (when (edge-p prep-edge)
                          (edge-left-daughter prep-edge)))
         (right-daughter (when (edge-p prep-edge)
                           (edge-right-daughter prep-edge))))
    (declare (special prep-edge left-daughter right-daughter))
    
    (flet ((prep-edge? (edge)
             (memq (cat-name (edge-form edge))
                   '(preposition
                     spatio-temporal-preposition spatial-preposition))))
      (cond
        ((word-p left-daughter)
         left-daughter)
        ((edge-p left-daughter) ;; formerly left-daughter = prep-word
         (cond
           ((polyword-p (edge-rule left-daughter))
            (edge-rule left-daughter)) ;; return the pw
       
           ((and (prep-edge? left-daughter) ;; sanity check
                 (word-p left-daughter))
            ;; The word was elevated to a category, e.g. 'with'
            left-daughter)

           ((and (prep-edge? left-daughter)
                 (edge-p left-daughter))
            (cond
              ((word-p (edge-left-daughter left-daughter))
               (edge-left-daughter left-daughter))
              (t (push-debug `(,edge ,prep-edge ,left-daughter))
                 (error "Unexpected edge-over-preposition pattern:~
                       ~%he left daughter ~a is a prepositiion-edge ~
                         but it doesn't dominate a preposition.~
                       ~%topmost edge is ~a" left-daughter edge))))

           ((and ;; "30 minutes after stimulation ..."
             (edge-p left-daughter)
             (itypep (edge-referent left-daughter) 'amount-of-time)
             (edge-p right-daughter)
             (prep-edge? right-daughter))
            (edge-left-daughter right-daughter))

           ((and (edge-p right-daughter) ;; "even in"
                 (prep-edge? right-daughter)
                 (word-p (edge-left-daughter right-daughter)))
            (edge-left-daughter right-daughter))

           (t
            (push-debug `(,edge ,prep-edge ,left-daughter ,right-daughter))
            (error "Unexpected pattern of an edge over a preposition:~%~a"
                   prep-edge))))
        (t
         (push-debug `(,edge ,prep-edge ,left-daughter ,right-daughter))
         (warn "Unexpected type of 'preposition': ~a~%~a"
               (type-of left-daughter) left-daughter)
         nil)))))

(defun identify-pobj (edge)
  (let* ((bpp-edge (base-pp edge))
         (erd (edge-right-daughter bpp-edge)))
    (if (edge-p erd)
        (edge-referent erd)
        (else
          (warn "can't find pobj edge for edge ~s" edge)
          nil))))


(defun base-pp (edge)
  (if (and (edge-p (edge-left-daughter edge))
           (eq (cat-name (edge-form (edge-left-daughter edge))) 'adverb))
      (edge-right-daughter edge)
      edge))

(defun adjoin-pp-to-vg (vg pp)
  ;; The VG is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier.
  (unless (and vg pp)
    (return-from adjoin-pp-to-vg nil))
  ;;(push-debug `(,vg ,pp)) (break "adjoin-pp-to-vg")
  (if (itypep pp 'collection) ;; a conjunction
    (if *subcat-test*
      (loop for pp-edge in (edge-constituents (right-edge-for-referent))
         always
           (let ((*right-edge-into-reference* pp-edge))
             (declare (special *right-edge-into-reference*))
             (adjoin-pp-to-vg vg (edge-referent pp-edge))))
      
      (loop for pp-edge in (edge-constituents (right-edge-for-referent))
         do
           (let ((*right-edge-into-reference* pp-edge))
             (declare (special *right-edge-into-reference*))
             (setq vg (adjoin-pp-to-vg vg (edge-referent pp-edge))))
         finally (return vg)))
          
    ;; It's not a collection. Compare handlers in interpret-pp-adjunct-to-np
    (or (unless (current-script :biology)
          (compose vg pp))
        (let* ((pp-edge (base-pp (right-edge-for-referent)))
               (prep-word (identify-preposition pp-edge))
               (*pobj-edge* (edge-right-daughter pp-edge))
               (pobj-referent (identify-pobj pp-edge))
               (variable-to-bind
                (when prep-word
                  ;; test if there is a known interpretation of the VG/PP combination
                  (or (subcategorized-variable vg prep-word pobj-referent)
                      (and (itypep pp 'upon-condition)
                           (find-variable-for-category 'context (itype-of vg))) ;; circumstance)
                      ;; or if we are making a last ditch effore
                      (and *force-modifiers*
                           'modifier)))))
          (declare (special *pobj-edge*))
          (cond
            (*subcat-test* variable-to-bind)
            (variable-to-bind
             (when *collect-subcat-info*
               (push (subcat-instance vg prep-word variable-to-bind pp)
                     *subcat-info*))
             (setq vg (individual-for-ref vg))
             (setq pobj-referent (individual-for-ref pobj-referent))
             (setq vg (bind-dli-variable variable-to-bind pobj-referent vg))
           vg))))))


(defun adjoin-prepcomp-to-vg (vg prep-comp) ;; "by binding..."
  (let* ((comp-edge (right-edge-for-referent))
         (prep-word (identify-preposition comp-edge))
         (comp-ref (edge-referent (edge-right-daughter comp-edge))))
    ;;(push-debug `(,prep-word ,comp-ref)) ;;(break "here")
    (let ((variable
           (subcategorized-variable vg prep-word comp-ref)))
      (cond
       (*subcat-test* variable)
       (variable
        (when *collect-subcat-info*
          (push (subcat-instance vg prep-word variable prep-comp)
                *subcat-info*))
        (setq vg (individual-for-ref vg)) ;; category => individual
        (setq vg (bind-dli-variable variable comp-ref vg))
        vg)))))


;;;----------------
;;; to complements
;;;----------------

(define-category to-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scafolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play"
  :index (:temporary :sequential-keys prep comp))

(define-category as-comp
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (comp))
  :documentation "Provides a scafolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play"
  :index (:temporary :sequential-keys prep comp))



(defun adjoin-tocomp-to-vg (vg tocomp)
  (assimilate-subcat vg :to-comp tocomp)) ;;(value-of 'comp tocomp)
		     
(defun passive-is-covert-tocomp (vg passive-vg)
  ;; Aspp2 #30: "remains" + "to be investigated"
  ;; (push-debug `(,vg ,passive-vg)) (lsp-break "covert"))
  (let ((starts-with-to?
         (eq word::|to| (pos-terminal (pos-edge-starts-at (right-edge-for-referent))))))
    (cond
      (*subcat-test*
       starts-with-to?)
      (t ;; the vg+tocomp handler doesn't do more checks, so none here
       (adjoin-tocomp-to-vg vg passive-vg)))))

(defun adjoin-vg-to-embedded-tocomp (vg vp)
  ;; erk #7, semantically it's [show + copular-predicate]
  ;; analogy is to vg+ed + to-comp. Rule calling this is (vg vg+passive)
  (cond
    (*subcat-test*
     (and vg
          (subcategorized-variable vg :to-comp vp)
          (itypep vp 'copular-predication)))
    (t (adjoin-tocomp-to-vg vg vp))))


(defun interpret-to-comp-adjunct-to-np (np to-comp)
  (declare (special np to-comp))
  (let* ((complement to-comp) ;;(value-of 'comp to-comp))
         (variable-to-bind
          ;; test if there is a known interpretation of the NP/PP combination
          (subcategorized-variable np :to-comp complement)))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (if *collect-subcat-info*
          (push (subcat-instance np 'to-comp variable-to-bind
                                 to-comp)
                *subcat-info*))
      (setq np (individual-for-ref np))
      (setq np (bind-dli-variable variable-to-bind to-comp np))
      np))))

(defun interpret-to-comp-adjunct-to-s (s tocomp)
  (declare (special category::perdurant category::endurant))
  ;; Tbese are very likely to be purpose clauses. A sufficient test
  ;; for that is the the s and the complement are both eventualities
  ;; (aka perdurants). 
  #| (p "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS signalling 
  to enhance p53 mediated apoptosis [2].") |#
  (let* ((complement tocomp);; no longer bury interpretation (value-of 'comp tocomp))
       (to-comp-var ;; e.g. for "acts to dampen..."
        (subcategorized-variable s :to-comp complement)))
    (cond
     (to-comp-var 
      (or *subcat-test*
       (setq s (bind-dli-variable to-comp-var complement s))))
     (t
      (let ((ok? (and s (itypep s category::perdurant) (itypep complement category::perdurant))))
        (cond
         (*subcat-test* ok?)
         (ok?
          (setq s (bind-dli-variable 'purpose complement s))
          s)))))))

(defun interpret-for-to-comp (for-pp to-comp)
  (let* ((complement to-comp) ;;(value-of 'comp to-comp))
	 (for-subj (value-of 'pobj for-pp))
	 (subj-var
	  (subcategorized-variable complement :subject for-subj)))
    (if *subcat-test*
	subj-var
	(bind-dli-variable subj-var for-subj complement))))
		
	    
;;;---------
;;; NP + PP
;;;---------

(defun interpret-pp-adjunct-to-np (np pp)
  (cond
    ((null np) 
     (break "null interpretation for NP in interpret-pp-adjunct-to-np edge ~s~&"
            *left-edge-into-reference*)
     nil)
    ((itypep pp 'collection)
     ;;(lsp-break "pp collection")
     nil)
    ((and np pp)
     (or (unless (current-script :biology)
           (compose np pp))
         (let* ((pp-edge (right-edge-for-referent))
                (prep-word (identify-preposition pp-edge))
                ;;(*pobj-edge* (edge-right-daughter pp-edge))
                (pobj-referent (identify-pobj pp-edge))
                (of (word-named "of"))
                (variable-to-bind
                 ;; test if there is a known interpretation of the NP/PP combination
                 (or
                  (subcategorized-variable np prep-word pobj-referent)
                  (and (eq prep-word of)
                       (itypep np 'attribute))
                  ;; or if we are making a last ditch effort
                  ;; if not, then return NIL, failing the rule
                  (and *force-modifiers* 'modifier))))
           (push-debug `(,prep-word ,pobj-referent))
           (cond
             (*subcat-test*
              (or variable-to-bind
                  (and (eq prep-word of)
                       (or (itypep np 'attribute)
                           (itypep np 'dependent-location)
                           (itypep np 'partonomic)))))
             ((and (eq prep-word of)
                   (itypep np 'attribute)) ;; "color of the block"
              (find-or-make-individual 'quality-predicate
                 :attribute (itype-of np) :item pobj-referent))
             ((and (eq prep-word of)
                   (itypep np 'dependent-location)
                   (itypep pobj-referent 'partonomic)) ;; "bottom of the stack"
              (find-or-make-individual 'object-dependent-location
                                       :prep np :ground pobj-referent))
             ((and (eq prep-word of)
                   (itypep np 'partonomic) ;; "a row of two blocks"
                   (compatible-with-specified-part-type pobj-referent np))
              (setq np (bind-variable 'parts pobj-referent np)))
             (variable-to-bind
              (when *collect-subcat-info*
                (push (subcat-instance np prep-word variable-to-bind pp)
                      *subcat-info*))
              (setq np (individual-for-ref np))
              (setq np (bind-dli-variable variable-to-bind pobj-referent np))
              np)))))))


(defun interpret-pp-as-head-of-np (np pp)
  (push-debug `(,np ,pp))
  (let* ((pp-edge (right-edge-for-referent))
         (prep-word (identify-preposition pp-edge))
         ;;(pobj-edge (edge-right-daughter pp-edge))
         (pobj-referent (identify-pobj pp-edge)) ;;(edge-referent pobj-edge))
         (variable-to-bind
          ;; test if there is a known interpretation of the NP/PP combination
          (or
           (subcategorized-variable
            ;; look at the subcategorization on the pobj not on the
            ;;  preceding np
            pobj-referent
            prep-word
            np)
           ;; or if we are making a last ditch effort
           ;; if not, then return NIL, failing the rule
           (and *force-modifiers* 'modifier))))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (if *collect-subcat-info*
          (push (subcat-instance np prep-word variable-to-bind
                                 pp)
                *subcat-info*))
      (setq pobj-referent (individual-for-ref pobj-referent))
      (setq  pobj-referent (bind-dli-variable variable-to-bind np pobj-referent))
      (revise-parent-edge :category (itype-of pobj-referent))
      pobj-referent))))


;;;-----------------
;;; NP + VP
;;;-----------------

(defparameter *warn-about-optional-objects* nil
  "Set to T to show cases where we have a parse in which a supposed transitive verb has no parsed object.")

(defun assimilate-subject (subj vp &optional (right-edge (right-edge-for-referent)))
  (declare (special category::subordinate-clause category::copular-predication))
  ;; right-edge is NIL when called from polar questions on adjectives
  ;;  this may want to be fixed
  (when (and subj vp) ;; have had cases of uninterpreted VPs
    (cond
      ((itypep vp 'copular-predication)
       (if *subcat-test* t
           (else
             (revise-parent-edge :category category::copular-predication)
             (setq vp (interpret-copular-predication-on subj vp))
             vp)))
      ((transitive-vp-missing-object? vp right-edge)
       (when (not *subcat-test*)
         ;; the edge isn't available and shouldn't be chaged during the test phase
         (when *warn-about-optional-objects*
           (warn "~%transitive verb without object: ~s~%"
               (extract-string-spanned-by-edge (right-edge-for-referent))))
         (revise-parent-edge :form category::transitive-clause-without-object))
       (assimilate-subcat vp :subject subj))
      
      ((and right-edge
            (eq (edge-form right-edge) category::subordinate-clause))
       (let* ((svp vp) ;;(value-of 'comp vp)) subordinate-clause is no longer buried
	      (vg-edge (edge-right-daughter right-edge)))
	 (when (edge-p vg-edge)
           ;; vg-edge is :long-span for cases where the
           ;;  subordinate clause is a conjunction
           ;; HANDLE THESE CORRECTLY
           (if
            (is-passive? vg-edge)
            (when (and (object-variable vg-edge)
                       (null (value-of (object-variable vg-edge) svp)))
              (assimilate-subcat svp :object subj))
            (when (missing-subject-vars (edge-referent vg-edge))
              (assimilate-subcat svp :subject subj))))))
      
      ((and right-edge (is-passive? right-edge))
       (assimilate-subcat vp :object subj))
      
      (t (assimilate-subcat vp :subject subj)))))



(defun transitive-vp-missing-object? (vp &optional (right-edge (right-edge-for-referent)))
  ;; this is a case like "that MEK phosphorylates" which has
  ;;  a VG, not a VP, and no object -- want to make this a
  ;;  constituent with a gap
  (and right-edge
       (not (is-passive? right-edge))
       (not (adjective-phrase? right-edge))
       (missing-object-vars vp)
       ;; whether-comp (like "test" and "investigate") can have either a non-statement object
       ;;  like "we tested the pathway", or a whether-comp ("we tested whether ...")
       ;;  so we need to check for either case
       (not (value-of 'statement vp))
       (not (thatcomp-verb right-edge))
       (not (loop for v in (find-subcat-vars :to-comp vp)
               thereis (value-of v vp)))))


;; special case where the vp is a gerund, and we make it an NP (not sure how often this is right)
(defun assimilate-subject-to-vp-ing (subj vp)
  (unless 
      ;; remove the printout until it is needed again
      t ;;   *subcat-test*
    (format t "~&----assimilate-subject-to-vp-ing make an NP for ~s and ~s---~&  in ~s~&" 
            subj vp
            (if (> (length (sentence-string *sentence-in-core*)) 0)
		(sentence-string *sentence-in-core*)
		*string-from-analyze-text-from-string*)))
  (if (is-passive? (right-edge-for-referent))
      (assimilate-subcat vp :object subj)
      (assimilate-subcat vp :subject subj)))


(defparameter *vp-ed-sentences* nil)
(defun assimilate-subject-to-vp-ed (subj vp)
  (push-debug `(,subj ,vp)) ;;  (setq subj (car *) vp (cadr *))
  (let* ((vp-edge (right-edge-for-referent))
         (vp-form (edge-form vp-edge)))
    ;; We have to determine whether this is an s (which the rule
    ;; that's being invoked assumes) or actually a reduced relative,
    ;; where the criteria is whether the verb is in oblique or tensed
    ;; form. If it turned out to be a RR then we do fairly serious
    ;; surgery on the edge.
    ;;(when (edge-p (edge-right-daughter vp-edge))
    ;; The other possibility is :single-term, which indicates
    ;; that we've just got a vg (one one form or another)
    ;; and not a full vp, in which case we're returning nil
    ;; so that the rule doesn't go through.
    (cond
      (*subcat-test*
       (or (can-fill-vp-subject? vp subj) ;; case for S not reduced relative
           (can-fill-vp-object? vp subj)))
      ((can-fill-vp-subject? vp subj)
       (if (transitive-vp-missing-object? vp)
           (revise-parent-edge :form category::transitive-clause-without-object))
       (assimilate-subcat vp :subject subj))
      ((can-fill-vp-object? vp subj)
       (setq  vp
	      (create-predication-by-binding (subcategorized-variable vp :object subj)
					     subj vp
					     (list 'apply-subject-relative-clause
						   (parent-edge-for-referent))))
       
       ;; link the rc to the np
       (setq  subj (bind-dli-variable 'predication vp subj))
       (revise-parent-edge :form category::np :category (itype-of subj))
       subj)
      (t (warn "Error in sentence: ~s"
               (sentence-string *sentence-in-core*))
         (error "How can this happen? Null referent produced in assimilate-subject-to-vp-ed~%" )))))





;;;--------------------------
;;; subordinate conjunctions
;;;--------------------------

(defun interpret-subordinator (conj eventuality)
  "Goes with (subordinate-conjunction vp+ing) rule and others like it.
  The effect of the subordinate conjunction strictly depends on
  the conjunction or its class, so most of the work will be done
  by the method. If there's no applicable method then we mark
  the conjunction as a modifier just to keep it around. My reading
  of Quirk et al. is that the ones that we're most interested in
  have an adverbial function in structuring the discourse (19.55)."
  (or (unless (current-script :biology)
        (compose conj eventuality))
      eventuality)) ;; for the moment dropping it on the floor


;;;----------------------
;;; "that" and "whether"
;;;----------------------

(defun create-thatcomp (that s)
  (declare (ignore that))
  s)

(defun create-whethercomp (that s)
  (declare (ignore that))
  s)

(defun create-howcomp (how s) ;; dry-run #40, aspp2 68
  ;; disturbed dry-run 41. aspp2 69
  ;; This is to provide the adjective in a copula to have something
  ;; to work with now that it is exposed.
  (declare (ignore how) (special category::thatcomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::thatcomp)
       s)))

(defun assimilate-object (vg obj)
  (assimilate-subcat vg :object obj))

(defun assimilate-np-to-v-as-object (vg obj)
  (when *subcat-test*
    (unless (and vg obj)
      (return-from assimilate-np-to-v-as-object nil)))
  (let ((result
	 (if (and (typep *current-chunk* 'chunk)
                  (member 'ng (chunk-forms *current-chunk*)))
	     (verb-noun-compound vg obj)
	     (assimilate-object vg obj))))
    (cond
      (*subcat-test* result)
      (result
       (if (and (typep *current-chunk* 'chunk)
                (member 'ng (chunk-forms *current-chunk*)))
	   (revise-parent-edge :category (itype-of obj)
			       :form category::n-bar
			       :referent result)
	   (revise-parent-edge :category (itype-of vg)
			       :form (case (cat-name (edge-form (parent-edge-for-referent)))
				       ((vg vp) category::vp)
				       ((vp+ing vg+ing) category::vp+ing)
				       ((vp+ed vg+ed) category::vp+ed)
                                       ((to-comp) category::to-comp)
                                       (t (error "bad verb form in assimilate-np-to-v-as-object -- interpreting as an NP?!")
                                       category::n-bar))
			       :referent result))
       result))))
    



(defun assimilate-thatcomp (vg-or-np thatcomp)
  (assimilate-subcat vg-or-np :thatcomp thatcomp))

(defun assimilate-whethercomp (vg-or-np whethercomp)
  (assimilate-subcat vg-or-np :whethercomp whethercomp))

(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head (subcategorized-variable head prep pobj) pobj))


;;;--------------------
;;; recording pronouns
;;;--------------------

(defun apply-control-or-raise (head label item)
  (declare (special head label item))
  (lsp-break "apply-control-or-raise")
  nil)


(defun condition-anaphor-edge (item subcat-label v/r)
  ;; We now know the restriction that any candidate referent for this
  ;; pronoun has to satisfy, and we know the v/r of the variable it has to bind. This
  ;; edge was recorded in the layout as a pronoun and will be retrieved in
  ;; the pass that does the search after all the parsing has finished, so
  ;; this is the edge that we work with. We need to record this
  ;; information, and we need to arrange a 'dummy' individual to be created
  ;; and bound to this variable during the parsing phase so that we can
  ;; track through its bound-in relation an replace it in that binding with
  ;; the correct referent once we've identified it. Kind of Rube Goldberg
  ;; -esque, but it's the price we pay for delaying rather than trying to
  ;; identify the referent at moment the pronoun is encountered.
  (cond
    ((and *do-anaphora* (is-pronoun? item))
     (let* ((pn-edge (edge-for-referent item))
            (ignore? (ignore-this-type-of-pronoun (edge-category pn-edge))))
       (tr :conditioning-anaphor-edge pn-edge)
       (cond
	 (ignore?
	  item)
	 (*constrain-pronouns-using-mentions*
          (when v/r
            ;; Comes from the value restriction of the variable to be
            ;; bound as determined by assimilate-subcat. It's frequently
            ;; the case that this variable doesn't have a value restriction,
            ;; particularly for default choices like 'subject'.
            (tr :recording-pn-mention-v/r v/r)
            (setf (mention-restriction (edge-mention pn-edge)) v/r))
	  item)
	 (t
	  (let ((relation-label (or (form-label-corresponding-to-subcat subcat-label)
                                    category::np))
                (restriction (or v/r category::unknown-grammatical-function)))
            (declare (special category::np category::unknown-grammatical-function))
	    (when (consp restriction)
	      ;; the first one after the :or
	      (setq restriction 
		    (or (loop for c in (cdr restriction) 
                              when (itypep (edge-referent pn-edge) c)
                              do (return c))
			(cadr restriction))))
            (tr :recording-pn-mention-v/r restriction)
	    (let ((new-ref (individual-for-ref restriction)))
	      (unless ignore?
                ;; If we're going to ignore the pronoun we don't want or
                ;; need to rework its edge
                (tr :anaphor-conditioned-to new-ref restriction relation-label)
		;; Encode the type-restriction in the category label
		;; and the grammatical relationship in the form
		(setf (edge-category pn-edge) restriction)
		(setf (edge-form pn-edge) relation-label)
		(setf (edge-referent pn-edge) new-ref)
		(setf (edge-rule pn-edge) 'condition-anaphor-edge))
	      new-ref))))))
    (t item)))

(defun form-label-corresponding-to-subcat (subcat-label)
  ;; Used with pronouns to encode relationship when it's known
  (case subcat-label
    (:subject category::grammatical-subject)
    (:object category::direct-object)
    (otherwise nil)))



(defparameter *biological-tests* nil)


;;;----------------------
;;; Prepositional phrase
;;;----------------------

(define-category prepositional-phrase
  :specializes phrase-interpretation
  :binds ((prep :primitive category)
          (pobj))
  :documentation "Provides a scafolding to hold
  a generic prepositional phrase as identified by
  the pp rules in grammar/rules/syntactic-rules.
  Primary consumer is the subcategorization checking
  code below. Note that if we make these with an
  unindexed individual (in make-pp) then the index
  information doesn't come into play"
  :index (:temporary :sequential-keys prep pobj))
(mark-as-form-category category::prepositional-phrase)

(define-category relativized-prepositional-phrase
  :specializes prepositional-phrase
  :binds ((prep)
          (pobj))
  :index (:temporary :sequential-keys prep pobj))
(mark-as-form-category category::relativized-prepositional-phrase)

(define-category prep-comp
  :specializes phrase-interpretation
  :binds ((prep)
          (comp))
  :documentation "If to-comp picks up infinitive complements
  this picks up all the rest, e.g. 'by being phosphorylated'
  though the head decides what to do with it based on the
  composition. Same design as pps."
  :index (:temporary :sequential-keys prep comp)) 

(define-category subordinate-clause
  :specializes phrase-interpretation
  :binds ((conj)
          (comp))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
  though the head decides what to do with it based on the
  composition. Same design as pps."
  :index (:temporary :sequential-keys conj comp))
(mark-as-form-category category::subordinate-clause)




(define-category pp-relative-clause
  :specializes phrase-interpretation
  :binds ((pp)
          (clause))
  :documentation "Provides a scafolding to hold
  a generic pp-relative clause such as 'in which ERK is phosphorylated
  in grammar/rules/syntactic-rules.
  Primary consumer is the subcategorization checking
  code below. Note that if we make these with an
  unindexed individual (in make-pp) then the index
  information doesn't come into play"
  :index (:temporary :sequential-keys prep pobj))

(defun make-pp (prep pobj)
  (or *subcat-test*
      (unless (current-script :biology)
        (compose prep pobj))
      (make-simple-individual ;;make-non-dli-individual <<<<<<<<<<<<
       category::prepositional-phrase
       `((prep ,prep) (pobj ,pobj)))))

(defun make-relativized-pp (prep pobj)
  (or *subcat-test*
      (make-simple-individual ;;make-non-dli-individual <<<<<<<<<<<<
       category::relativized-prepositional-phrase
       `((prep ,prep) (pobj ,pobj)))))

(defun make-ordinal-item (ordinal item)
  (setf (non-dli-mod-for item) (list 'ordinal ordinal))
  item)

(defun make-subordinate-clause (conj clause)
  (when (not (eq category::pp (edge-form (left-edge-for-referent))))
    (bind-dli-variable 'subordinate-conjunction conj clause)))

(defun make-pp-relative-clause (pp clause)
  (or *subcat-test*
      	      
      ;; place for trace or further adornment, storing
      ;; (p "activity of ras.")
      ;; (break "Look at who is calling make-pp")
      (make-simple-individual ;;<<<<<<<<<<<<<<<<<<<<<<<<<<<
       category::pp-relative-clause
       `((pp ,pp) (clause ,clause)))))


(defun make-prep-comp (prep complement)
  ;; Called for the pattern 
  ;; preposition + (vg vg+ing vg+ed vg+passive vp+passive & vp)
  (declare (special category::to category::prep-comp))
  ;;(push-debug `(,prep ,complement)) (break "where prep?") 
  (cond
    (*subcat-test*
     (and prep complement))
    ((eq prep category::to)
     (revise-parent-edge :form category::to-comp)
     complement)
    (t
     ;; If this starts to make a lot of preposition-specific
     ;; distinctions then we need to refactor and move the
     ;; cond up.
     (revise-parent-edge :form category::prepositional-phrase)	 
     (make-simple-individual ;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      category::prepositional-phrase
      `((prep ,prep) (comp ,complement))))))



(defun make-adj-comp (adj complement)
  ;;(push-debug `(,adj ,complement))  (lsp-break "make-adj-comp")
  (assimilate-subcat adj :thatcomp complement))

(defun make-comparative-adjp-with-np (comparative than-np)
  (bind-dli-variable 'compared-to
                     than-np
                     comparative))


(defun maybe-extend-comparative-with-than-np (np than-np)
  (cond
    (*subcat-test* (value-of 'comparative-predication np))
    (t
     (rebind-dli-variable 'comparative-predication
                          (bind-dli-variable 'compared-to than-np (value-of 'comparative-predication np))
                          np))))

(defun rebind-dli-variable (var/name value individual)
  ;; to be written corectly -- want to create a variant of the head
  ;;  where the previous value of the variable var is replaced by value
  ;;  For the moment, just add a new binding
  (bind-dli-variable var/name value individual))

#+ignore
(defun maybe-extend-superlative-with-of-pp (np pp)
  (cond
    (*subcat-test* (value-of 'superlative-predication np))
    (t
     (rebind-dli-variable 'superlative-predication
                          (bind-dli-variable 'superlative-from-set (value-of 'pobj pp)
                                             (value-of 'superlative-predication np))
                          np))))

;;;---------
;;; be + PP
;;;---------


(defun apply-copular-pp (np copular-pp)
  (declare (special category::copular-predicate))
  (when (itypep copular-pp 'subordinate-clause)
    ;; this may no longer work -- get an example and test it
    (setq copular-pp (value-of 'comp copular-pp)))
  (let* ((prep (get-word-for-prep (value-of 'prep copular-pp)))
         (pobj (value-of 'value copular-pp))
         (var-to-bind (subcategorized-variable np prep pobj)))
    ;;(lsp-break "apply-copular-pp to ~a and ~a" np copular-pp)
    (cond
     (*subcat-test* var-to-bind)
     (t
      (when *collect-subcat-info*
        (push (subcat-instance np prep var-to-bind copular-pp)
              *subcat-info*))

      (setq np (individual-for-ref np))
      (revise-parent-edge :category category::copular-predicate)

      ;; Earlier version -- but the class doesn't look
      ;; like that now -- see copulars
      #+ignore(let ((predicate (bind-dli-variable var-to-bind pobj np)))
        (make-simple-individual
         category::copular-predicate
         `((predicate ,predicate)
	   (predicated-of ,np))))

      (let ((i copular-pp)) ;; renaming to reinforce the framing
        (setq i (bind-variable 'item np i))
        i )))))



;;;----------------------
;;; Adjuncts for clauses 
;;;----------------------

(defun add-adjunctive-clause-to-s (s adjunctive-clause)
  "If the clause (s) denotes a perdurant it will have a variable
  we can use to declare that it is causally related to the adjunct
  usually, it appears, because it causes it or creates the conditions
  that make it possible."
  ;;//// needs a lot more work on this relation
  (let* ((variable-to-bind 
          (find-variable-for-category 
           'event-relation (itype-of s))))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (setq s (bind-dli-variable variable-to-bind adjunctive-clause s))
      s))))


(defun add-time-adjunct (time vp)
  ;; treat both "now" and "then" as subordinate conjunctions
  ;; rather than time
  (if (member (cat-name (edge-form (left-edge-for-referent)))
              '(adjunct subordinate-conjunction))
      (bind-dli-variable 'subordinate-conjunction time (individual-for-ref vp))
      (bind-dli-variable 'time time (individual-for-ref vp))))


(defun assimilate-adj-complement (vp adjp)
  "Post-verb Adverbial and adjectival complements can be predicating
   something of any of the elements of the clause: verb, subject, or
   object. This code is only looks for the object case"
  
  (cond
    (*subcat-test*
     (takes-adj? vp adjp))
    (t
     (if (get-tag :adjp-complement (itype-of vp))
       ;; is this verb marked as taking adjp-complements?
       (let* ((obj-var (bound-object-var vp))
              (obj (when obj-var (value-of obj-var vp))))
         (if obj ;; there is an object to attach the adjp to
           (cond
             ;; Ignoring this because the has-attribute that it
             ;; makes is not properly integrated
             #+ignore((itypep adjp 'attribute-value)
              ;; adj-noun-compound will look up the variable for
              ;; the attribute and bind it. We're simply predicating it.
              (attribute-value-of-object adjp obj)
              vp)
             ((takes-adj? obj adjp)
              (let ((mod-obj (adj-noun-compound adjp obj (right-edge-for-referent))))
                (if mod-obj
                  (bind-dli-variable 'predicate mod-obj vp)
                  vp)))
             (t ;; weaker claim
              (bind-variable 'modifier adjp vp)))
        (else ;; no object
          vp)))
       ;; No object, swe don't know where to put the adj complement, so we
       ;; should drop it on the floor. /// need examples for the
       ;; verb modifying and subject modifying cases
       vp))))




;;; intensifier for an ADJECTIVE -- 95% sure

(defun interpret-intensifier+adjective (intensifier adjective)
  (if *subcat-test*
      t
      (bind-dli-variable :intensity intensifier adjective)))


;;; handling of copular-predication

(defun interpret-copular-predication-on (subj vp)
  #+ignore
  (format t "~%~%interpret-copular-predication-on ~%  ~s ~s~%  ~s~%"
          subj
          (value-of 'predicate vp)
          (value-of 'value vp))
  (setq vp (bind-variable 'item subj vp)))

(defun maybe-attach-adverb-to-pp (adverb pp)
  ;; Don't accept (adverb comma) edges as premodifiers for PPs
  ;; e.g. block ""Notably, of the nine candidate ORFs..."
  (cond (*subcat-test* (not (eq (edge-rule (left-edge-for-referent)) 'adverb-comma)))
        (t (bind-dli-variable 'modifier adverb (individual-for-ref pp)))))
