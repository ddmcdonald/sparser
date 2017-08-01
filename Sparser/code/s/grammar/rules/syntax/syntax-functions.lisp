;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald -- all rights reserved
;;;
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  February 2017

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

;; (left-edge-for-referent)
;; (right-edge-for-referent)
;; (parent-edge-for-referent)


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


(define-lambda-variable 'predicate
    nil 'top)

(define-lambda-variable 'predication
    nil 'top) ;needed for interpretation of "more effective"

(define-lambda-variable 'ordinal
    nil 'top)

(define-lambda-variable 'appositive-description
    nil 'top)

(define-lambda-variable 'comp 
    nil 'top)

(define-lambda-variable 'subordinate-conjunction
    nil 'top)

#+ignore(define-lambda-variable 'purpose
    nil 'top) ;; use the one on perdurant instead

(define-lambda-variable 'quantifier
    nil 'top)

(define-lambda-variable 'number
    nil 'top)

(define-lambda-variable 'det-quantifier ;; as in "all these"
    nil 'determiner)

(define-lambda-variable 'has-determiner
    nil 'top)

(define-lambda-variable 'approximator
    nil 'number)

(define-lambda-variable 'event-relation
    nil 'top)

(define-lambda-variable 'amount-of-time
    nil 'top)


;;;-------------
;;; predication
;;;-------------

(defparameter *predication-links-ht* (make-hash-table :size 100 :test #'equal))
(defparameter *lambda-var-warnings* nil)

(defun create-predication-by-binding (var val pred source &key (insert-edge t))
  "Given a variable (var), and two referents (val, pred), assert that
   the variable is abstracted out from the pred(icate). 
   Ignore any provided 'val' argument."
  ;;(declare (ignore val)) ;; we now ignore the val, and just use **lambda-var**
  (let ((new-predication (bind-dli-variable  var **lambda-var** pred)))
    (declare (special new-predication))
    ;; Rusty - how could the binding fail?  AKA, why the cond here.
    (when (and val (not (individual-p val))
               (not (referential-category-p val))
               ;; above happens for "when oncogenic RAS is induced in HKe3 ER:HRASV12 cells (Figure S3B) "
               )
      (if (eq val '*lambda-var*)
          (when *lambda-var-warnings*
            (warn "still trying to bind *lambda-var* in predication, in ~s~%"
                (sentence-string *sentence-in-core*)))
          (lsp-break "non individual as val")))
    (cond (new-predication
           (setf (gethash new-predication *predication-links-ht*) val)
           (if (and insert-edge (edge-p (parent-edge-for-referent)))
               (insert-predication-edge pred new-predication)
               (values new-predication nil)))
	  (t (values pred nil)))))


(defun insert-predication-edge (pred new-predication)
  (declare (special new-predication))
  (let* ((parent (parent-edge-for-referent))
         (left-edge (edge-left-daughter parent))
         (right-edge (edge-right-daughter parent))
         (pred-edge
          (cond ((matched-pred? pred left-edge)
                 left-edge)
                ((matched-pred? pred right-edge)
                 right-edge)
                (t nil)))
         (new-edge (when pred-edge
                     (make-predication-edge pred-edge new-predication))))
    (declare (special new-edge left-edge right-edge pred-edge parent))
    (when (null pred-edge)
      (lsp-break
       "create-predication-by-binding, predicate not from left or right edge~%"))
    ;; can't have null pred-edge at this point
    (cond ((eq left-edge pred-edge)
           (setf (edge-left-daughter parent) new-edge))
          ((eq right-edge pred-edge)
           (setf (edge-right-daughter parent) new-edge)))
    (setf (edge-used-in new-edge) parent)
    (setf (ev-top-node (edge-starts-at parent)) parent)
    ;;(lsp-break "create-predication-by-binding")
    (values new-predication new-edge)))

(defun matched-pred? (pred edge &aux (ref (edge-referent edge)))
  (or (eq pred (get-dli ref))
      (eq pred ref)
      ;; this is the case where the ref is a complement
      ;; embedding item like a wh-question
      (and (individual-p ref)
           (eq pred (value-of 'statement ref)))))

(def-form-category lambda-form)
(define-category lambda-expression :specializes predicate)

(defun make-predication-edge (pre-pred-edge predication)
  "Span 'pre-pred-edge' with a new edge with the same end-points.
   The caller has provided 'predication' to be the referent of
   this new edge."
  (let* ((start-vec (edge-starts-at pre-pred-edge))
         (end-vec (edge-ends-at pre-pred-edge))
         (pred (edge-referent pre-pred-edge))
         (edge
          (make-completed-unary-edge
           start-vec end-vec
           'make-predication-edge ;; rule
           (maybe-extract-statement-edge pre-pred-edge) ;; daughter
           category::lambda-expression ;; category
           category::lambda-form ;; form
           predication)))  ;; referent
    edge))

(defun maybe-extract-statement-edge (pre-pred-edge)
  "Determines the daughter of the new spanning edge being created by
   make-predication-edge. "
  (declare (special pre-pred-edge))
  (let* ((ref (edge-referent pre-pred-edge))
         (statement
          (and (individual-p ref)
;;; check to see that this is not a that-relative-clause
               (not (that-relative-clause? ref))
               (not (itypep ref 'bio-complement))
               (value-of 'statement ref))))
    (declare (special statement))
    (if statement
        (cond ((eq statement (edge-referent (edge-left-daughter pre-pred-edge)))
               (edge-left-daughter pre-pred-edge))
              ((eq statement (edge-referent (edge-right-daughter pre-pred-edge)))
               (edge-right-daughter pre-pred-edge))
              (t (warn "bad make-predication-edge in ~s~%" (sentence-string *sentence-in-core*))
                 nil))
        pre-pred-edge)))

(defun that-relative-clause? (ref)
  (value-of 'that-rel ref))


;;;----------------------------
;;; place to stash determiners
;;;----------------------------

;;; --- part of mechanism to hang on to "modifiers" that should not be
;;;     incorporated in description-lattice individuals
;;; These include determiners and parentheticals
;;; see operations in create-discourse-mention and extend-discourse-mention


(defparameter *determiners-in-DL* t
  "put the determiner in the description, not in the mention")

(defparameter *non-dli-mod-ht* (make-hash-table)
  "Holds determiners for NPs until they are put in
   the discourse mention")

(defun non-dli-mod-for (i)
  (gethash i *non-dli-mod-ht*))

(defun (setf non-dli-mod-for) (det i)
  (setf (gethash i *non-dli-mod-ht*) det))


;;;-----------------------------
;;; enabling k-methods (or not)
;;;-----------------------------

(defparameter *use-k-methods-in-syntax-functions* nil
  "Permits overriding default in use-methods")

(defun use-methods ()
  "Gates k-method calls such as 'compose'. "
  (declare (special *use-k-methods-in-syntax-functions*))
  (or *use-k-methods-in-syntax-functions*
      (not (current-script :biology))))


;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (qualifier head)
  ;; goes with (common-noun common-noun) syntactic rule
  (cond
    (*subcat-test*
     (not (or (word-p head) ;; this happened with word = HYPHEN, "from FCS-treated cells"
              ;; also happened with "nontargeting"
              (null head) ;; happens when head is a bio-entity
              (and (individual-p head)
                   (itypep head 'determiner)))))
    ((itypep head 'determiner)
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
       ((when (use-methods) ;; "left side" (etc. see core/places/methods.lisp)
          (compose qualifier head)))
       ((and (not (eq script :biology))
             ;; w/o methods: "bottom" in "bottom block"
             (itypep qualifier 'object-dependent-location))
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

(defparameter *premod-to-verb-examples* nil)

(defun interpret-premod-to-verb (premod head) ;; for things like "thymine phosphorylated"
  (when (and (not (pronominal-or-deictic? premod))
             (not (one-anaphor-item? premod))
             (or (not (eq (cat-name (edge-form  (left-edge-for-referent))) 'np))
                 (not (value-of 'has-determiner premod)))
             (subcategorized-variable head :verb-premod premod))
    (push (list premod (value-of 'raw-text premod)
                head  (value-of 'raw-text head)
                (sentence-string *sentence-in-core*))
          *premod-to-verb-examples*))
  (let* ((*ambiguous-variables* nil)
         (premod-edge (left-edge-for-referent))
         (variable-to-bind (test-premod-to-verb premod head premod-edge) ))
    (declare (special *ambiguous-variables*))
    (cond
      (*subcat-test* variable-to-bind)
      (variable-to-bind
       (when *collect-subcat-info*
         (push (subcat-instance head :verb-premod variable-to-bind premod)
               *subcat-info*))
       (setq head (individual-for-ref head))
       (setq head (bind-variable variable-to-bind premod head))
       head))))

(defun test-premod-to-verb (premod head premod-edge)
  (when (and (not (pronominal-or-deictic? premod))
             (or (not (eq (cat-name (edge-form premod-edge)) 'np))
                 (not (value-of 'has-determiner premod))))
    ;; really want an n-bar type item here, but these get raised to NPs
    ;;  the check is to distinguish "serine" gets "raised" to an NP
    ;;  and "an event" 
    (subcategorized-variable head :verb-premod premod)))

(defun adj-noun-compound (adjective head &optional adj-edge)
  (when (category-p head) (setq head (individual-for-ref head)))
  (cond
    (*subcat-test*
     (takes-adj? head adjective))
    ((when (use-methods) ;; "the Ras protein", where 'protein' is a type-marker
       (compose adjective head)))
    ((itypep adjective 'attribute-value) ;; "red block"
     (handle-attribute-of-head adjective head))
    ((interpret-premod-to-np adjective head)) ;; normal subcategorization
    (t ;; Dec#2 has "low nM" which requires coercing 'low'
     ;; into a number. Right now just falls through
     (let ((predicate 
	     (if (and (not (is-basic-collection? adjective))
                      (find-variable-for-category :subject (itype-of adjective)))
		 (create-predication-by-binding
                  :subject head adjective
                  (list 'adj-noun-compound (or adj-edge (left-edge-for-referent))))
		 (individual-for-ref adjective))))
       (setq head (bind-dli-variable 'predication predicate head))
       head))))


(defun adj-postmodifies-noun (n adj &optional (adj-edge nil))
  ;; adj-edge is set when we are postmodifying
  ;; to be more picky about which adjectives can post-modify a noun
  (when (or adj-edge (itypep adj 'post-adj))
    (adj-noun-compound adj n adj-edge)))

(defun create-partitive-np (quantifier of-pp)
  (declare (special quantifier of-pp category::preposition))
  (let* ((pp-edge (right-edge-for-referent))
         (right-daughter (edge-right-daughter pp-edge)))
    (unless (eq (edge-form pp-edge) category::preposition)
      ;; Rules out "all" + "of" where we've not filled in the of-pp
      (cond
        ((eq 'which (cat-name (edge-category right-daughter)))
         (create-partitive-wh-relativizer quantifier of-pp))
        ((has-definite-determiner? right-daughter)
         ;;/// alternatively, we could just look for the determiner directly
         ;; rather than depend on this device to stay stable
         (cond
           (*subcat-test* t)
           (t
            (unless *sentence-in-core*
              (error "Threading bug. No value for *sentence-in-core*"))
            (let ((pobj-ref
                   (individual-for-ref (edge-referent right-daughter))))
              (revise-parent-edge :category (itype-of pobj-ref))
              (if *determiners-in-DL* 
                (setq pobj-ref (bind-variable 'quantifier quantifier pobj-ref))
                (add-pending-partitive quantifier (parent-edge-for-referent)
                                       *sentence-in-core*))
              pobj-ref))))))))

(defun create-partitive-wh-relativizer (quantifier of-pp)
  ;; e.g. "three of which"  of-pp should be a relativized-prepositional-phrase
  ;; and the quantifier is a quantifier or a number
  (if *subcat-test*
    (itypep of-pp 'relativized-prepositional-phrase)
    (let* ((wh (value-of 'pobj of-pp))
           (i (define-or-find-individual 'partitive-relativizer
                  :quantifier quantifier :relativizer wh)))
      ;; Make "6 of which" have the same labels as "which"
      (revise-parent-edge :category (category-named 'which)
                          :form (category-named 'wh-pronoun))
      i)))
    

(defparameter *dets-seen* nil)

(defun determiner-noun (determiner head)
  "Depending on the value of *determiners-in-DL* either bind the determiner
   to a variable or stash it by calling add-def-ref and handle it later"
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
	  (pushnew determiner *dets-seen*))
        ;;(push-debug `(,det-word ,determiner)) (lsp-break "det+noun")
	(setf (non-dli-mod-for head) (list 'determiner determiner))
	(cond          
	  ((when (use-methods) ;; ??? perhaps put in by reflex ??
             (compose determiner head)))
          ((and *determiners-in-DL*
                (or (individual-p head) (category-p head)))
           (setq head (bind-dli-variable 'has-determiner determiner head))
           (when (definite-determiner? determiner)
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
   (when (use-methods)
     (compose possessive head))
   (let ((var (subcategorized-variable head word::|of| possessive)))
     (if var
       (setq head (bind-variable var possessive head))
       (else
         ;; trace goes here
         (setq head (bind-variable 'modifier possessive head))))
     head)))


(defun quantifier-det-compound (quantifier det)
  (warn "quantifier-det-compound got ~s ~s~%" quantifier det)
  nil)

(defun quantifier-noun-compound (quantifier head)
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
     #+ignore(when (and *determiners-in-DL*
                (or (individual-p head) (category-p head)))
       (setq head (bind-dli-variable 'quantifier quantifier head)))
     (cond
       ((itypep quantifier 'no) ;; special handling for negation
        (setq head (bind-dli-variable 'negation quantifier head)))
       ((or
         (itypep head 'endurant)
         (itypep head 'perdurant) ;; we quantify perdurants like phosphorylations and pathway steps
         (itypep head 'abstract) ;; we quantify abstract items like "group"
         (itypep head 'bio-abstract) ;; we quantify abstract items like "group"
         (itypep head 'quality) ;; we quantify qualities "some level"
         (itypep head 'biological) ;; we quantify things like "such models"
         (itypep head 'time-kind)) ;; we quanitfy things like "some time"
        (if *determiners-in-DL*
          (setq head (bind-dli-variable 'quantifier quantifier head))
          (setf  (non-dli-mod-for head) (list 'quantifier quantifier))))
       ((itypep head 'determiner) ;; "all these" (via syntactic rule)
        (setq head (bind-dli-variable 'quantifier quantifier head)))
       (t
        (lsp-break "~&@@@@@ adding quantifier ~s to ~s~&"
                   (retrieve-surface-string quantifier)
                   (if (individual-p head)
                       (retrieve-surface-string head)
                       "**MISSING**"))
        (setq head (bind-dli-variable 'quantifier quantifier head))))
     head)))


(defun number-noun-compound (number head)
  ;;/// for the moment there is a number variable on
  ;; endurant we can bind. Going forward we should automatically
  ;; make a composite individual using a collection.
  ;; See notes on forming plurals in tree-families/morphology.lisp
  (cond
    (*subcat-test* (and number head
                        (not (itypep head 'single-capitalized-letter))))
    (t
     (setq head (individual-for-ref head))
     (when (itypep head 'endurant) ;; J34: "Histone 2B"
       ;;    ~600 kinase
       (setf (non-dli-mod-for head) (list 'number number))
       ;;(setq  head (bind-dli-variable 'number number head))
       )
     (when (and *determiners-in-DL*
                (or (individual-p head )(category-p head)))
       (setq head (bind-dli-variable 'number number head)))
     head)))



(defun verb+ing-noun-compound (qualifier head)
  (or (when (use-methods)
        (compose qualifier head))
      (link-in-verb+ing qualifier head)))

(defun link-in-verb+ing (qualifier head)
  (let ((premod-n-variable
         (subcategorized-variable head :m qualifier)))
    (if premod-n-variable
        (bind-dli-variable premod-n-variable qualifier head)
   
        (let ((subject-var (subcategorized-variable  qualifier :subject head)))
          (cond
            (*subcat-test* subject-var)
            ((word-p qualifier)
             ;; probably a case of an unknown verb+ing created by morphology
             ;;  like "mating" in PMC352229
             ;; "the complementary mating type-switched strain PJ69–4A"
             ;; Dropping it on the floor seems ok since we don't know
             ;; what it means
             head)
            (t
             (setq qualifier
                   (interpret-verb-as-predication
                    'link-in-verb+ing
                    head
                    qualifier
                    *left-edge-into-reference*
                    subject-var))
             (setq head (bind-dli-variable 'predication qualifier head))
             head))))))

(defun interpret-verb-as-predication (rule-fn head qualifier edge-for-qualifier var)
  (unless (eq qualifier (edge-referent edge-for-qualifier))
    (lsp-break "bad call to extend-interpretation-of-verb-as-predication"))
  (setq qualifier (individual-for-ref qualifier))
  (cond (var
         ;; really should check for passivizing
         (setq qualifier (create-predication-by-binding
                          var head qualifier
                          (list rule-fn (parent-edge-for-referent))))
         (set-edge-referent edge-for-qualifier qualifier))
        (t
         (lsp-break "call to extend-interpretation-of-verb-as-predication with null binding variable, var")))
  qualifier)



(defun verb-noun-compound (qualifier head)
  ;;(break "verb-noun-compound")
  ;; goes with (verb+ed n-bar-type) syntactic rule
  (cond
    ((null *current-chunk*) ;; not in an NG chunk -- don't apply this rule at the top level
     nil)
    (*subcat-test* (subcategorized-variable qualifier :object head))
    
    (t (or (when (use-methods)
             (compose qualifier head))
	   (link-in-verb qualifier head)
	   (progn
	     ;; have cases like "pp170" where the head has a PW as referent -- don't know what to  do
	     (break "Can't deal with head whose interpretation is not an individual or category in verb-noun-compound, head is ~s~&" head)
	     nil)))))

(defun link-in-verb (qualifier head)
  (let ((var (subcategorized-variable qualifier :object head)
	  #+ignore (object-variable qualifier head)))
    (setq qualifier
          (interpret-verb-as-predication
           'link-in-verb
           head
           qualifier
           *left-edge-into-reference*
           var))
    (setq head (bind-dli-variable 'predication qualifier head))
    head))

;;;------------------
;;; Verb + Auxiliary
;;;------------------

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

(defun vg-cat (vg)
  (cond ((category-p vg) vg)
        ((individual-p vg) (itype-of vg))
        (t (lsp-break "check-passive-and-add-tense/aspect -- no category to check passive verb"))))

(defun check-passive-and-add-tense/aspect (aux vg)
  (declare (special category::vg *parent-edge-getting-reference*))
  (let ((be-edge (left-edge-for-referent)))
    (when (or
           (member (cat-name (edge-form be-edge))
                   '(verb verb+present verb+past verb+ed verb+ing vg+ed vg vg+ing infinitive))
           (if (member (cat-name (edge-form be-edge))
                       '(that-comp thatcomp to-comp vp S subject-relative-clause
                         subordinate-s subordinate-clause
                         object-relative-clause ;; "that PTEN protein levels are, in part, regulated by ..."
                         transitive-clause-without-object))
               nil
               (warn "check-passive-and-add-tense/aspect got ~s in ~s~%"
                     (cat-name (edge-form be-edge))
                     (sentence-string *sentence*))))
           
      (loop for vg-item
            in (if (is-basic-collection? vg) (value-of 'items vg) (list vg))
            do
              (let ((vg-cat (vg-cat vg-item)))
                (when (and (first (cat-realization vg-cat))
                           (rdata-etf (first (cat-realization vg-cat)))
                           (not (member  (etf-name (rdata-etf (first (cat-realization vg-cat))))
                                         '(passive/with-by-phrase))))
                  (when *parent-edge-getting-reference*
                    ;; this is now (12/23/2016) used in polar questions, so there is no edge yet
                    (revise-parent-edge :form category::vg)))))
      (add-tense/aspect aux vg))))

(defgeneric add-tense/aspect-to-subordinate-clause (aux sc)
  (:method ((aux category) (sc category))
    (or *subcat-test*
        (add-tense/aspect-to-subordinate-clause aux (individual-for-ref sc))))
  (:method ((aux individual) (sc category))
    (or *subcat-test*
        (add-tense/aspect-to-subordinate-clause aux (individual-for-ref sc))))
  (:method ((aux category) (sc individual))
    (if *subcat-test*
      (valid-aux-for-tense?)
      (make-vg-aux aux sc)))
  (:method ((aux individual) (sc individual))
    (if *subcat-test*
      (valid-aux-for-tense?)
      (make-vg-aux aux sc))))

(defun valid-aux-for-tense? ()
  "The rules that get here are only supposed to apply to
   auxiliaries. Block the composition if the 'aux' is the
   head of a much larger phrase."
  (let* ((valid? (verb-category? (left-edge-for-referent))))
    (or valid?
        ;; this had to be added to handle the fact that IS became a VG
        ;; in (test-aspp2 81)
        ;;"The novel RAS/Raf/MAPK/ASPP2 pathway is thus involved in an important feedback loop..."
        (eq 'vg (cat-name (edge-form (left-edge-for-referent)))))))

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
  (declare (special category::pp))
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
          ((or (and (itypep vg 'be);; block "THERE IS"
                    (itypep adverb 'deictic-location))
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
            (or (subcategorized-variable 
                 (car (value-of 'items vg)) :adv adverb)
                'adverb)
            adverb
            vg))
          ((has-adverb-variable? vg vg-phrase adverb)
           (setq vg (bind-dli-variable 'adverb adverb vg)))
          (t vg)))))

(defun interpret-adverb+adjective (adverb adj-phrase) 
  (declare (special category::pp))
  (when (word-p adj-phrase)
    (format t "adj-phrase ~s is not a category or an individual,~
             ~% probably defined by morphology, can't attach adverb~%"
            adj-phrase)
    (return-from interpret-adverb+adjective adj-phrase))
  
  (let* ((adj (individual-for-ref adj-phrase))
         (variable-to-bind ;; can be nil as in "very low-to-undetectable "
          (subcategorized-variable adj :adv adverb)))
    #| Really should diagnose among
      (time) (location) (purpose) (circumstance) (manner) |#
    (cond
      ((or (and (itypep adj 'be) ;; block "THERE IS"
                (itypep adverb 'deictic-location))
           (eq (edge-form (left-edge-for-referent)) category::pp))
       nil)
      (*subcat-test*
       (cond
         (variable-to-bind t)
         ((and (itypep adverb 'intensifier) ;; compose will apply
               (itypep adj-phrase 'qualifiable)) t)
         ((has-adverb-variable? adj adj-phrase adverb) t)
         ((and (is-basic-collection? adj)
               (value-of 'items adj) ;; is null for hyphenated-triple
               (or (subcategorized-variable 
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

      ;; Execution options if subcat-test is satisfied
      ((and (itypep adverb 'intensifier) ;; compose will apply
            (itypep adj-phrase 'qualifiable))
       (compose adverb adj)) ;; "very unlikely"

      (variable-to-bind
       (bind-dli-variable variable-to-bind adverb adj))
      ((member (cat-name adverb) *subordinating-adverbs*)
       (bind-dli-variable 'subordinate-conjunction adverb adj))
      ((is-basic-collection? adj)
       (bind-dli-variable
        (or (subcategorized-variable 
             (car (value-of 'items adj)) :adv adverb)
            'adverb)
        adverb
        adj))
      ((has-adverb-variable? adj adj-phrase adverb)
       (setq adj (bind-dli-variable 'adverb adverb adj)))
      (t ;; ignore the adverb
       adj))))



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
      (when *collect-subcat-info*
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
    (or (when (use-methods)
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

(defun adjoin-tocomp-to-vg (vg tocomp)
  (assimilate-subcat vg :to-comp tocomp)) ;;(value-of 'comp tocomp)
		     
(defun passive-is-covert-tocomp (vg passive-vg)
  ;; Aspp2 #30: "remains" + "to be investigated"
  ;; (push-debug `(,vg ,passive-vg)) (lsp-break "covert"))
  (let ((var (subcategorized-variable vg :to-comp passive-vg)))
    (cond
      (*subcat-test*
       (and (eq word::|to| (pos-terminal (pos-edge-starts-at (right-edge-for-referent))))
            var))
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
  ;; Tbese are very likely to be purpose clauses. A sufficient test
  ;; for that is the the s and the complement are both eventualities
  ;; (aka perdurants). 
  #| (p "Mechanistically ASPP1 and ASPP2 bind RAS-GTP and potentiates RAS signalling 
  to enhance p53 mediated apoptosis [2].") |#
  (let* ((complement tocomp)
         (to-comp-var ;; e.g. for "acts to dampen..."
          (subcategorized-variable s :to-comp complement)))
    (cond
     (to-comp-var 
      (or *subcat-test*
       (setq s (bind-dli-variable to-comp-var complement s))))
     (t
      (let ((ok? (and s (itypep s 'perdurant) (itypep complement 'perdurant))))
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
     (or (when (use-methods)
           ;; e.g. has-location + location : "the block at the left end of the row"
           (compose np pp))
         (let* ((pp-edge (right-edge-for-referent))
                (prep-word (identify-preposition pp-edge))
                (pobj-referent (identify-pobj pp-edge))
                (of (word-named "of"))
                (variable-to-bind
                 (or (subcategorized-variable np prep-word pobj-referent)
                     (and (eq prep-word of)
                          (itypep np 'attribute))
                     (and *force-modifiers* ;; set in CwC
                          'modifier))))
           (cond
             (*subcat-test*
              (or variable-to-bind
                  (and (eq prep-word of)
                       (or (itypep np 'attribute)
                           (and
                            ;; (itypep np 'dependent-location)
                            (itypep np 'object-dependent-location)
                            (itypep pobj-referent 'partonomic))
                           (and
                            (itypep np 'partonomic)
                            (compatible-with-specified-part-type pobj-referent np))))))
             ((and (eq prep-word of)
                   (itypep np 'attribute)) ;; "color of the block"
              ;; "block" in "the bottom block of the stack" is an attribute
              ;; because it's inheriting from Dimension -- /// reanalyze
              ;;(lsp-break "quality-predicate? np = ~a, pp = ~a" np pp)
              (find-or-make-individual 'quality-predicate
                                       :attribute (itype-of np) :item pobj-referent))

             ((and (eq prep-word of)
                   ;; (itypep np 'dependent-location) non-operator version
                   (itypep np 'object-dependent-location)
                   (itypep pobj-referent 'partonomic)) ;; "bottom of the stack"
              (tr :np+pp/np-is-partonomic np pobj-referent)
              (make-object-dependent-location np pobj-referent))

             ((and (eq prep-word of)
                   (itypep np 'partonomic) ;; "a row of two blocks"
                   (compatible-with-specified-part-type pobj-referent np))
              (setq np (bind-variable 'parts pobj-referent np)))

             ((and (use-methods)
                   (eq prep-word of))
              (let ((result (compose np pobj-referent)))
                (when result (tr :compose-other-of np pobj-referent result))
                (or result
                    (else ;; uses the default
                      (warn "interpret-pp-adjunct-to-np: No compose method applied ~
                             to i~a + i~a" (indiv-uid np) (indiv-uid pobj-referent))
                      ;; modifier in cwc
                      (setq np (bind-dli-variable variable-to-bind pobj-referent np))
                      np))))

             ;; This fall through will use 'modifier' in the blocks world
             ;; because it sets *force-modifiers* to it in its switch setting
             (variable-to-bind
              #+ignore(lsp-break "np(~a) + prep(~s) pobj(~a) falling through to default"
                         (indiv-uid np) (pname prep-word) (indiv-uid pobj-referent))
              (collect-subcat-statistics np prep-word variable-to-bind pp)
              (setq np (individual-for-ref np))
              (setq np (bind-dli-variable variable-to-bind pobj-referent np))
              np)))))))


(defun interpret-pp-as-head-of-np (np pp)
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
      #+ignore ;; used this to check when the rule is applied
      ;;; found it is mostly being called for the right things, but we need to make it play better
      ;; with finding discourse-mentions
      (format t "~%interpret-pp-as-head-of-np run on ~s ~s in ~s~%"
              (retrieve-surface-string np)(retrieve-surface-string pp) (sentence-string *sentence-in-core*))
      (setq pobj-referent (individual-for-ref pobj-referent))
      (setq pobj-referent (bind-dli-variable variable-to-bind np pobj-referent))
      (revise-parent-edge :category (itype-of pobj-referent))
      pobj-referent))))


;;;-----------------
;;; NP + VP
;;;-----------------

(defparameter *warn-about-optional-objects* nil
  "Set to T to show cases where we have a parse in which a supposed transitive verb has no parsed object.")


(defun assimilate-subject-to-subordinate-clause (subj vp)
  ;;(print `(subordinate-conjunction it ,(value-of 'subordinate-conjunction vp)))
  (if (or (null  (value-of 'subordinate-conjunction vp))
          (not (member (pname (value-of 'word (value-of 'subordinate-conjunction vp)))
                  '("moreover" "neither" "since" "then" "therefore" "thus")
                  :test #'equal)))
      nil
      (assimilate-subject subj vp)))

(defun assimilate-subject (subj vp
                           &optional (right-edge (right-edge-for-referent))
                             dont-revise-parent-edge)
  (declare (special category::subordinate-clause category::copular-predication
                    category::transitive-clause-without-object
                    subj vp ))
  ;; right-edge is NIL when called from polar questions on adjectives
  ;;  this may want to be fixed
  (unless (and subj vp) ;; have had cases of uninterpreted VPs
    (return-from assimilate-subject nil))
  (when (is-basic-collection? vp)
    (revise-parent-edge :category (value-of 'type vp)))

  (cond
    ((itypep vp 'control-verb) ;; e.g. "want"
     (when *subcat-test* (return-from assimilate-subject t))
     (let ((complement (value-of 'theme vp))
           (object (value-of 'patient vp)))
       (when complement ;; cf. "what do you want"
         (let ((revised-complement
                (if object
                  ;; 'I want you to wash the dishes' vs 'I want to wash the dishes'
                  (assimilate-subject object complement)
                  (assimilate-subject subj complement))))
           (setq vp (rebind-variable 'theme revised-complement vp))))
       (assimilate-subcat vp :subject subj)))

    ((itypep vp 'copular-predication)
     (let* ((vp-val (value-of 'value vp))
            (control-vp (and (individual-p vp-val)
                             (or (itypep vp-val 'control-verb)
                                 (itypep vp-val 'control-verb-intrans))))
            (controlled-val
             (if (not control-vp)
                 t
                 (interpret-control-copula subj vp
                                           (left-edge-for-referent)
                                           (right-edge-for-referent)))))
       (declare (special controlled-val control-vp))
       
       (cond (*subcat-test* controlled-val)
             ((individual-p controlled-val)
              (apply-copula subj controlled-val))
             (t (and (null (value-of 'item vp))
                     (apply-copula subj vp))))))
    
    ((transitive-vp-missing-object? vp right-edge)
     (unless *subcat-test*
       ;; the edge isn't available and shouldn't be chaged during the test phase
       (when *warn-about-optional-objects*
         (warn "~%transitive verb without object: ~s~%"
               (extract-string-spanned-by-edge (right-edge-for-referent))))
       (unless dont-revise-parent-edge
         (revise-parent-edge :form category::transitive-clause-without-object)))
     (assimilate-subcat vp :subject subj))
      
    ((and right-edge
          (member (cat-name (edge-form right-edge))
                  '(subordinate-clause vp+ed vg+ed)))
     (let* ((svp vp) ;;(value-of 'comp vp)) subordinate-clause is no longer buried
            (vg-edge
             (cond ((member (cat-name (edge-form right-edge)) '(vp+ed vg+ed))
                    right-edge)
                   ((eq 's (cat-name (edge-form (edge-right-daughter right-edge))))
                    ;; case where subordinate conjunction is attached above the S
                    ;; "...since p130 CAS , paxillin, and FAK  are already hyperphosphorylated.
                    (edge-right-daughter (edge-right-daughter right-edge)))
                   (t (edge-right-daughter right-edge)))))
       (when (edge-p vg-edge)
         ;; vg-edge is :long-span for cases where the
         ;;  subordinate clause is a conjunction
         ;; HANDLE THESE CORRECTLY
         (if (or (is-passive? vg-edge)
                 (member (cat-name (edge-form right-edge)) '(vp+ed vg+ed)))
             (when 
               (and (object-variables vg-edge)
                        (loop for v in (object-variables vg-edge)
                              never (value-of (object-variable vg-edge) svp)))
               (assimilate-subcat svp :object subj))
             (when (missing-subject-vars (edge-referent vg-edge))
               (assimilate-subcat svp :subject subj))))))
      
    ((and right-edge (is-passive? right-edge))
     (assimilate-subcat vp :object subj))
      
    (t (assimilate-subcat vp :subject subj))))

(defun interpret-control-copula (subj copula subj-edge copula-edge)
  (let* ((copula-value (value-of 'value copula)) ;; e.g. (ability ...)
         (copula-adj-edge (edge-right-daughter copula-edge))
         (right (and (edge-p copula-adj-edge)
                     (edge-right-daughter copula-adj-edge)))
         (right-val (and (edge-p right)
                         (edge-referent right)))
         (new-value
          (and (edge-p right)
               (eq (edge-referent copula-adj-edge) copula-value)
               (assimilate-subject subj right-val right t))))
    (declare (special copula-value copula-adj-edge right edge-right-daughter
                      right-val new-value))
    (cond (*subcat-test* new-value)
          (new-value
           (set-edge-referent right new-value)
           (rebind-value copula-value
                         (rebind-value right-val new-value copula-value)
                         copula))
                             
          (t
           (error  "interpret-control-copula fails with subj=~s, copula=~s in ~s~%"
                   subj copula
                   (sentence-string *sentence-in-core*))))))
      

(defun assimilate-subject-to-vp-ing (subj vp)
  ;; special case where the vp is a gerund, and we make it
  ;; an NP (not sure how often this is right)
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

(defun assimilate-subject-to-vp-ed (subj vp)
  (declare (special category::transitive-clause-without-object category::np))
  ;; (push-debug `(,subj ,vp)) (setq subj (car *) vp (cadr *))
  (let* ((vp-edge (right-edge-for-referent))
         (vp-form (edge-form vp-edge))
         result)
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

    ;; Don't want to have a subject in a relative clause if there is
    ;; no object (complement) in the VP. Applies to main clauses modulo
    ;; the possibility of traces.
    
    (cond
      (*subcat-test*
       (or (can-fill-vp-subject? vp subj) ;; case for S not reduced relative
           (and (can-fill-vp-object? vp subj *left-edge-into-reference*)
                ;; make sure this is a non-trivial relative clause (not just the verb)
                (loop for binding in (indiv-old-binds vp)
                      thereis (not (member (var-name (binding-variable binding))
                                           '(past raw-text)))))
           (and 
                (member(cat-name (edge-form vp-edge)) '(vg+ed verb+ed))
                (interpret-premod-to-verb subj vp))))
      
      ((and (can-fill-vp-object? vp subj *left-edge-into-reference*)
            (not (test-premod-to-verb subj vp (left-edge-for-referent)))
            (loop for binding in (indiv-old-binds vp)
                      thereis (not (member (var-name (binding-variable binding))
                                           '(past raw-text)))))
       ;; since this is applied to vp+ed, there is no syntactic object present
       (setq vp
             (create-predication-by-binding (subcategorized-variable vp :object subj)
                                            subj vp
                                            (list 'apply-subject-relative-clause
                                                  (parent-edge-for-referent))))       
       ;; link the rc to the np
       (setq  subj (bind-dli-variable 'predication vp subj))
       (revise-parent-edge :form category::np :category (itype-of subj))
       subj)
      ((can-fill-vp-subject? vp subj)
       (when (transitive-vp-missing-object? vp)
         #+ignore
         (warn "assimilate-subject-to-vp-ed (~s ~s) revising the form of edge ~s to transitive-clause-without-object~%"
               subj vp
               (parent-edge-for-referent))
         (revise-parent-edge :form category::transitive-clause-without-object))
       ;;/// try using assimilate-subject

       (assimilate-subcat vp :subject subj))
      ((setq result (interpret-premod-to-verb subj vp))
       (revise-parent-edge :form category::vg+ed)
       result)
      (t (warn "Error in sentence: ~s"
               (sentence-string *sentence-in-core*))
         (error "How can this happen? Null referent produced in assimilate-subject-to-vp-ed~%" )))))


;;;---------
;;; VP + NP
;;;---------

(defun assimilate-object (vg obj)
  (assimilate-subcat vg :object obj))

(defun assimilate-np-to-v-as-object (vg obj)
  (declare (special category::n-bar category::vp category::vp+ing
                    category::vp+ed category::to-comp category::n-bar))
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
	   (revise-parent-edge :category (if (itype vg 'collection)
                                             (value-of 'type vg)
                                             (itype-of vg))
			       :form (case (cat-name (edge-form (parent-edge-for-referent)))
				       ((vg vp) category::vp)
				       ((vp+ing vg+ing) category::vp+ing)
				       ((vp+ed vg+ed vp+past) category::vp+past)
                                       ((to-comp) category::to-comp)
                                       (t (warn "bad verb form in assimilate-np-to-v-as-object -- interpreting as an NP? in ~s!"
                                                (sentence-string *sentence-in-core*))
                                       category::n-bar))
			       :referent result))
       result))))


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
  (or (when (use-methods)
        (compose conj eventuality))
      eventuality)) ;; for the moment dropping it on the floor


;;;---------------------------------------
;;; "that", "whether", "how", "what", etc.
;;;---------------------------------------

(defun create-thatcomp (that s)
  (declare (ignore that))
  s)

(defun assimilate-thatcomp (vg-or-np thatcomp)
  (assimilate-subcat vg-or-np :thatcomp thatcomp))

(defun assimilate-whethercomp (vg-or-np whethercomp)
  (assimilate-subcat vg-or-np :whethercomp whethercomp))

(defun create-whethercomp (wh s)
  (declare (special category::whethercomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::whethercomp)
       (make-wh-object (category-named 'whether)
                       :statement s))))

(defun create-howcomp (how s) ;; dry-run #40, aspp2 68
  ;; disturbed dry-run 41. aspp2 69
  ;; This is to provide the adjective in a copula to have something
  ;; to work with now that it is exposed.
  (declare (special category::howcomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::howcomp)
       (make-wh-object (category-named 'how)
                       :statement s))))

(defun assimilate-howcomp (vg-or-np thatcomp)
  (assimilate-subcat vg-or-np :howcomp thatcomp))

(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head (subcategorized-variable head prep pobj) pobj))


;;  in what+s where+S, when+S, etc.

(defun make-subordinate-clause (conj clause)
  (declare (special category::pp conj clause))
  (if *subcat-test*
       (not (and (member (cat-name (edge-form (right-edge-for-referent))) '(vp+ed vg+ed vp vg))
                 (member (cat-name (edge-category (left-edge-for-referent))) '(so))))
      ;; some subordinate conjunctions like SO cannot apply between subject and vp
      (let ((cl
             (or
              (when (use-methods)
                (compose conj clause))
              (unless (eq (edge-form (left-edge-for-referent)) ;; 'conj' argument
                          category::pp)
                (bind-dli-variable 'subordinate-conjunction conj clause))
              ;; as a final resort drop the 'conj'
              clause)))
       ;; (lsp-break "make-subordinate-clause")
        (when (and cl
                   (not (and (category-p conj)
                             (member (cat-name conj)
                                     '(who what where when why))))
                   *right-edge-into-reference*
                   (eq (edge-referent *right-edge-into-reference*)
                       clause)
                   (member (cat-name (edge-form *right-edge-into-reference*))
                           '(s subordinate-s)))
          (revise-parent-edge :form category::subordinate-s))
        cl)))


;; for v in (vp vp+passive vg+passive vg)
;; as rel in '(which who whom why that)
;; form rule: (rel v)
;;   (p/s "who should move the block?")
(defun compose-wh-with-vp (wh-obj predicate)
  "Question the subject or the object of the predicate (the VP)
   depending on which one is open."
  ;;/// To set the form of the new edge have to know
  ;; whether we're a toplevel question or embedded
  (if *subcat-test*
    t
    (cond
      ((itypep wh-obj 'partitive-relativizer) ;; e.g. "one of which"
       ;; When the relative clause we are creating here is composed with
       ;; its np, which must be a collection of some sort, the force of the
       ;; partitive relativizer is to specify a subset, a 'portion' of the
       ;; np collection. We're not ready to write that just now (5/31/17)
       ;; so instead we drop the relativizer on the floor and let the np + relative
       ;; composition do what it would otherwise normally do.
       predicate)
      ((itypep wh-obj 'wh-question)
       (let* ((wh (value-of 'wh wh-obj))
              (wh-name (cat-symbol wh))
              (open-var (open-core-variable predicate))
              (default (value-of 'variable wh)))
         (let ((q (make-wh-object
                   wh
                   :variable (or open-var default)
                   :statement predicate)))
            (tr :wh-compose-wh-with-vp q)
            q)))
      ((itypep wh-obj 'wh-pronoun)
       (compose wh-obj predicate))
      (t (warn "New type of wh-obj in compose-wh-with-vp: ~a~
                in~%~s" (itype-of wh-obj) (current-string))))))



;; for 'after which', 'in which' and such
(defun make-relativized-pp (prep wh)
  "The syntactic rules preposition + {who which whom} come here,
   to create a phrase with form pp-wh-pronoun.
   We need to assemble a structure that will be unpacked by
   make-pp-relative-clause which will unfold the pied-piped
   preposition."  
  (if *subcat-test*
    (not (itypep prep 'prepositional-phrase))
    (let* ((prep-word (identify-preposition (parent-edge-for-referent)))
           (wh-obj (cond ((itypep wh 'wh-pronoun) ;; which
                          (make-wh-object wh))
                         ((itypep wh 'partitive-relativizer) ;; each of which
                          wh)
                         (t wh)))
           (i (define-or-find-individual 'relativized-prepositional-phrase
                  :prep prep-word :pobj wh-obj)))
      i)))

(defun make-pp-relative-clause (wh-pp vp)
  "Goes with rules pp-wh-pronoun + {vp's or vg's}. The result is
   essentially a regular wh-relative clause except that the
   preposition should be subcategorized by the head (the vp)
   and the variable that governs the relative clause is determined
   by that."
  (if *subcat-test*
      (and wh-pp vp
           (edge-to-its-left (left-edge-for-referent))
           (not
            (member (cat-name
                      (edge-category
                       (edge-to-its-left (left-edge-for-referent))))
                    '(number quantifier all some each both))))
    (let* ((preposition (value-of 'prep wh-pp))
           (wh-obj (value-of 'pobj wh-pp))
           (variable (find-subcat-vars preposition vp)))

      ;; while debugging -- what's a reasonable default?
      (unless variable
        (warn "no variable for ~a on ~a in~%~s"
              preposition vp (current-string))
        (return-from make-pp-relative-clause nil))

      (let ((q (extend-wh-object wh-obj
                                 :variable variable
                                 :statement vp)))
        (tr :wh-make-pp-relative-clause q)
        q))))



;;;----------------------
;;; Prepositional phrase
;;;----------------------

(defun make-pp (prep pobj)
  (declare (special category::prepositional-phrase))
  (if *subcat-test*
    (not (itypep prep 'prepositional-phrase))
    (else
      (setq prep (individual-for-ref prep))
      (or (when (use-methods)
            (compose prep pobj))
          (make-simple-individual ;;make-non-dli-individual <<<<<<<<<<<<
           category::prepositional-phrase
           `((prep ,prep) (pobj ,pobj)))))))


(defun make-ordinal-item (ordinal item)
  (bind-dli-variable 'ordinal ordinal item))




(defun make-prep-comp (prep complement)
  ;; Called for the pattern 
  ;; preposition + (vg vg+ing vg+ed vg+passive vp+passive & vp)
  (declare (special category::to category::to-comp category::prepositional-phrase))
  ;;(push-debug `(,prep ,complement)) (break "where prep?") 
  (cond
    (*subcat-test*
     (and prep complement))
    ((or (eq prep category::to)
         (eq prep (get-dli category::to)))
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



;;;---------
;;; be + PP
;;;---------


(defun apply-copular-pp (np copular-pp)
  (declare (special category::copular-predicate))
  (when (itypep copular-pp 'subordinate-clause)
    ;; this may no longer work -- get an example and test it
    (setq copular-pp (value-of 'comp copular-pp)))
  (when (itypep copular-pp 'wh-question)
    ;; e.g. "cancer patients who may not have been at risk themselves"
    (setq copular-pp (value-of 'statement copular-pp)))
  (if (null copular-pp)
      ;; happens in "This analysis identified a group of tumours with good prognosis, almost all of which were of low grade and metastasis-free up to 5 years ( xref )."
      nil
      (let* ((prep-indiv (value-of 'prep copular-pp))
             (prep (get-word-for-prep (unless (null prep-indiv) prep-indiv)))
             (pobj (value-of 'value copular-pp))
             (var-to-bind (when prep (subcategorized-variable np prep pobj))))
        ;;(lsp-break "apply-copular-pp to ~a and ~a" np copular-pp)
        (cond
          (*subcat-test* var-to-bind)
          (t
           (when *collect-subcat-info*
             (push (subcat-instance np prep var-to-bind copular-pp)
                   *subcat-info*))

           (setq np (individual-for-ref np))
           (revise-parent-edge :category category::copular-predicate)

           (let ((i copular-pp)) ;; renaming to reinforce the framing
             (setq i (bind-variable 'item np i))
             i ))))))



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


(defun clause+pp (clause pp)
  (multiple-value-bind (preposition pobj-referent)
      (decompose-prepositional-phrase (right-edge-for-referent))
    (let ((variable
           (subcategorized-variable clause preposition pobj-referent)))
      (if *subcat-test*
        variable
        (else
          (collect-subcat-statistics
           clause preposition variable pobj-referent)
          (setq clause (bind-variable variable pobj-referent clause))
          clause)))))


(defun assimilate-adj-complement (vp adjp)
  "Post-verb Adverbial and adjectival complements can be predicating
   something of any of the elements of the clause: verb, subject, or
   object. This code is only looks for the object case"
  
  (cond
    (*subcat-test*
     (takes-adj? vp adjp t))
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
             ((takes-adj? obj adjp t)
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

(define-lambda-variable 'intensity
    nil 'top) ;; for percentage in "95% sure"

(defun interpret-intensifier+adjective (intensifier adjective)
  (if *subcat-test*
      t
      (bind-dli-variable :intensity intensifier adjective)))


(defparameter *show-adverb-attachment-to-PPs* nil)

(defun maybe-attach-adverb-to-pp (adverb pp)
  ;; Don't accept (adverb comma) edges as premodifiers for PPs
  ;; e.g. block ""Notably, of the nine candidate ORFs..."
  (cond (*subcat-test*  (not (eq (edge-rule (left-edge-for-referent)) 'adverb-comma)) )
        (t (when *show-adverb-attachment-to-PPs*
             (warn "after ~s attaching adverb ~s to PP ~s~%"
                   (retrieve-surface-string (edge-just-to-left-of (left-edge-for-referent)))
                   (retrieve-surface-string adverb)
                   (retrieve-surface-string pp)))
           (bind-dli-variable 'modifier adverb (individual-for-ref pp)))))


;;;---------------
;;; comparatives
;;;---------------

(define-lambda-variable 'superlative-predication
    nil 'top)

(define-lambda-variable 'comparative-predication
    nil 'top)

(define-lambda-variable 'comparative
    nil 'top)

(define-lambda-variable 'compared-to
    nil 'top)

(define-lambda-variable 'superlative-from-set
    nil 'top)


;; "bigger than that block"
(defun make-comparative-adjp-with-np (comparative than-np)
  "Goes with comparative + than-np. This is the simple case where
   we create a comparative-attribution predicate"
  (push-debug `(,comparative ,than-np))
  (cond
    (*subcat-test* t)
    ((itypep comparative 'comparative)
     (define-or-find-individual 'comparative-attribution
         :value comparative :reference-set than-np))
    (t (bind-dli-variable 'compared-to than-np comparative))))


;; "a bigger block than that block"
(defun maybe-extend-comparative-with-than-np (np than-np)
  "For 'a bigger block than that one'"
  (let ((open-attribution (loop for b in (indiv-binds np)
                             as value = (binding-value b)
                             when (itypep value 'comparative-attribution)
                             return b)))
    (cond
      (*subcat-test*
       (or open-attribution
           (value-of 'comparative-predication np)))
      (open-attribution
       (let ((attribution (binding-value open-attribution))
             (variable (binding-variable open-attribution))
             (i (binding-body open-attribution)))
         (unless (eq i np)
           (error "incorrect assumption about what's the head"))
         (let ((complete-attribution
                (bind-variable 'reference-set than-np attribution)))
           (multiple-value-bind (edge-over-comparative)
               (search-tree-for-referent (left-edge-for-referent) attribution)
             ;; Insert a new edge over the comparative edge
             ;; of the np with the completed-attribution as its value.
             (unless edge-over-comparative
               (push-debug `(,open-attribution))
               (warn "Could not locate edge over ~a under ~a"
                     attribution (left-edge-for-referent))
               (return-from maybe-extend-comparative-with-than-np nil))
             (respan-edge-for-new-referent edge-over-comparative
                                           complete-attribution)
             (setq i (rebind-variable variable complete-attribution i))
             i))))
      (t (rebind-variable
          'comparative-predication
          (bind-dli-variable 'compared-to than-np (value-of 'comparative-predication np))
          np)))))


;; "a bigger block"
(defun comparative-adj-noun-compound (comparative head)
  "For syntax rules comparative + <all n-bar categories>, as in
   'the bigger red block'. We look up the attribute that is associated
   with the comparative ('size' in the case of 'bigger') to tell us
   what variable to bind. We make an instance of the comparative is
   is open in its reference set, which we signal by ????"
  (let ((var (variable-for-attribute comparative)))
    (cond 
      (*subcat-test*
       (or var
           (takes-adj? head comparative)))
      (var
       (when (category-p head) (setq head (individual-for-ref head)))
       (let ((i (define-or-find-individual 'comparative-attribution
                  :value comparative))) ;; n.b. open in reference-set
         (setq head (bind-variable var i head))
         head))
      (t (let ((predicate
                (if (and (not (is-basic-collection? comparative))
                         (find-variable-for-category :subject (itype-of comparative)))
                  (create-predication-by-binding
                   :subject head comparative
                   (list 'adj-noun-compound (left-edge-for-referent)))
                  (individual-for-ref comparative))))
           (setq head (bind-variable 'predication predicate head))
           head)))))

(defun superlative-adj-noun-compound (superlative head)
  (comparative-adj-noun-compound superlative head))


(defun allowable-post-quantifier? (n quant)
  ;; for "RSK1 and RSK2 both"
  (when (and (itypep n 'collection)
             (or (itypep quant 'both) (itypep quant 'all)))
    (or *subcat-test*
        (bind-dli-variable 'quantifier quant n))))
