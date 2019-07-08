;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2019 David D. McDonald -- all rights reserved
;;;
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  July 2019

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


;; used all over
(defvar *left-edge-into-reference*)
(defvar *right-edge-into-reference*)

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

(define-lambda-variable 'relative-prep
    nil 'top) ;; holds the relative PP for cases like "the X in which Y is placed"

(define-lambda-variable 'ordinal ;; used for "third" in "the third gene"
    nil 'top)

(define-lambda-variable 'appositive-description
    nil 'top)

(define-lambda-variable 'comp 
    nil 'top)

(define-lambda-variable 'subordinate-conjunction
#| Used to mark the suborinatating conjunction when we are making 
a subordinate clause. Added to the interpretation of the clause or
vp that it subordinates. Deemed to be overkill to use a scafolding class
like prepositional-phase (see syntax/syntactic-classes.lisp) |#
    nil 'top)



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
(defparameter *partitive-pp-warnings* nil)

#|
(defparameter *edge-not-created-by-c-p-b-b* nil)
(defun push-info-to-edge-not-created-by-c-p-b-b (reason parent-edge pred)
  (declare (special *edge-not-created-by-c-p-b-b*))
  (let* ((orig-call (third (sb-debug::list-backtrace :count 3 :from :current-frame)))
         (orig-caller (car orig-call))
         (orig-call-surface-edges (list orig-caller
                                        (mapcar #'(lambda(x) (cond ((edge-p x)
                                                                    (extract-string-spanned-by-edge x))
                                                                   ((individual-p x)
                                                                    (pname (itype-of x)))
                                                                   ((or (stringp x) (symbolp x))
                                                                    x)
                                                                   ((eq (type-of x) 'SB-IMPL::UNPRINTABLE-OBJECT)
                                                                    "*UNPRINTABLE-OBJECT*")
                                                                   ((eq (type-of x) 'position)
                                                                    `(position ,(pos-token-index x)))
                                                                   (t (pname x))))
                                                (cdr orig-call)))))
      (push `(,reason
              :sentence ,(current-string)
              :called-by ,orig-call-surface-edges
              :parent-edge ,(if (edge-p parent-edge)
                                (if (deactivated? parent-edge)
                                    'deactivated
                                    (extract-string-spanned-by-edge parent-edge))
                                parent-edge)
              :pred ,(krisp->sexpr pred))
            *edge-not-created-by-c-p-b-b*)));)
|#

(defun get-lambda-ref-edge-from-pred-edge (pred-edge)
  "When you have an edge in hand that is a lambda expression, this
   will retrieve the edge the lambda variable refers to"
  (let* ((dom-edge (edge-used-in pred-edge))
         (lower-edges (edges-under dom-edge))
         (lambda-ref (gethash (edge-referent pred-edge) *predication-links-ht*)))
    (loop for edge in lower-edges
          when (eq (edge-referent edge) lambda-ref)
          do (return edge))))

(defun matched-pred? (pred edge &aux (ref (edge-referent edge)))
  "Is 'pred' the referent ('ref') of this edge?"
  (or (eq pred (get-dli ref))
      (eq pred ref)
      (and (individual-p ref)
           ;; this is the case where the ref is a complement
           ;; embedding item like a wh-question
           (eq pred (value-of 'statement ref)))))

(defun create-predication-and-edge-by-binding (var val pred pre-pred-edge)
  ;; called by
  ;; ../da/da-rules.lisp
  ;;     UPDATE-EDGE-AS-LAMBDA-PREDICATE
  ;;     POSTMODIFYING-ADJ
  ;; ../biology/mechanics.lisp
  ;;     MAKE-PHOSPHORYLATED-PROTEIN
  (unless (and (edge-p pre-pred-edge)
               (matched-pred? pred pre-pred-edge))
    (lsp-break "create-predication-and-edge-by-binding invalid pre-pred-edge provided"))
  (let* ((new-pred (create-predication-by-binding var val pred))
         (new-edge (make-predication-edge pre-pred-edge new-pred)))
    (values new-pred new-edge)))

(defun create-predication-by-binding (var val pred)
  ;; called by CREATE-PREDICATION-AND-EDGE-BY-BINDING-AND-INSERT-EDGE
  ;;           CREATE-PREDICATION-AND-EDGE-BY-BINDING
  ;;           CREATE-PREDICATION-BY-BINDING-ONLY
  ;;../grammar/rules/da/da-rules.lisp
  ;;           UPDATE-CONJUNCTIVE-EDGE-AS-LAMBDA-PREDICATE
  ;;../biology/mechanics.lisp
  ;;           LITTLE-P-HACK
  ;;../analyzers/psp/referent/driver.lisp
  ;;           APPLY-LAMBDA-ABSTRACTION
  ;;../grammar/rules/da/nospace-categories.lisp
  ;;           RESOLVE-PROTEIN-PREFIX
  "Given a variable (var), and two referents (val, pred), assert that
   the variable is abstracted out from the pred(icate)."
  (declare (special **lambda-var**))
  (let ((new-predication (bind-dli-variable var **lambda-var** pred)))
    (declare (special new-predication))
    (when (and val (not (individual-p val))
               ;; below happens for "when oncogenic RAS is induced in HKe3 ER:HRASV12 cells (Figure S3B) "
               (not (referential-category-p val)))
      (if (eq val '*lambda-var*)
          (when *lambda-var-warnings*
            (warn "still trying to bind *lambda-var* in predication, in ~s~%"
                (current-string)))
          (lsp-break "non individual as val")))
    (cond (new-predication
           (setf (gethash new-predication *predication-links-ht*) val)
           new-predication)
          (t pred))))

(defun create-predication-and-edge-by-binding-and-insert-edge (var val pred)
  ;;../syntax/subject-relatives.lisp
  ;;  APPLY-OBJECT-RELATIVE-CLAUSE
  ;;  APPLY-SUBJECT-RELATIVE-CLAUSE
  ;;  APPLY-UPSTAIRS-NP-TO-SUBJECT-RELATIVE
  ;;  APPLY-PP-RELATIVE-CLAUSE
  ;;  APPLY-REDUCED-RELATIVE-CLAUSE
  ;;../syntax/syntax-functions.lisp
  ;;  INTERPRET-VERB-AS-PREDICATION
  ;;  COMPARATIVE-ADJ-NOUN-COMPOUND
  ;;  ADJ-NOUN-COMPOUND
  ;;  ASSIMILATE-SUBJECT-TO-VP-ED
  (unless (edge-p (parent-edge-for-referent))
    (lsp-break "create-predication-and-edge-by-binding-and-insert-edge - no valid parent edge"))
  (let ((new-predication (create-predication-by-binding var val pred)))
    (insert-predication-edge (parent-edge-for-referent) pred new-predication)
    new-predication))

(defun insert-predication-edge (parent pred new-predication)
  (declare (special new-predication parent))
  (let* ((left-edge (edge-left-daughter parent))
         (right-edge (edge-right-daughter parent))
         (predicated-edge
          (cond ((matched-pred? pred left-edge) left-edge)
                ((matched-pred? pred right-edge) right-edge)
                (t nil))))
    (unless predicated-edge
      (lsp-break "create-predication-by-binding, predicate is not from left or right edge~%"))
    (let ((lambda-edge (make-predication-edge predicated-edge new-predication)))
      (sort-out-introduction-of-inserted-edge
       lambda-edge parent left-edge right-edge predicated-edge)
      (values new-predication lambda-edge))))

(defun sort-out-introduction-of-inserted-edge (inserted-edge parent
                                                         left-edge right-edge
                                                         base-edge)
  "The parent is a binary edge. We've just spanned one of its daughters
   with the newly introduced lambda-edge so we need to update that information."
  (let ((direction-of-inserted-edge
         (cond ((eq left-edge base-edge)
                (setf (edge-left-daughter parent) inserted-edge)
                :left)
               ((eq right-edge base-edge)
                (setf (edge-right-daughter parent) inserted-edge)
                :right))))
    
    ;; We now know where the inserted edge goes, so hook in its uplink
    (setf (edge-used-in inserted-edge) parent)

    ;; The order of the edges in the vector that the parent and inserted-edge
    ;; share is messed up. Edges are added to the edge-vectors of their
    ;; start and end positions at the they are created. The parent edge was
    ;; created before the inserted-edge. (It was created at the start of
    ;; the rule-interpretation process. Right now we're in the middle
    ;; of that process.) Anything that walks the vector will be confused
    ;; because the parent edge is longer than the inserted edge. To correct
    ;; this we swap their position in the relevant vector. 
    (let ((ev (ecase direction-of-inserted-edge
                (:left (edge-starts-at parent))
                (:right (edge-ends-at parent)))))
      (unless (index-of-edge-in-vector inserted-edge ev)
        (error "inserted edge not in expected vector ~a" ev))
      (swap-edges-in-vector parent inserted-edge ev)
      (setf (ev-top-node ev) parent) ;; usually redundant with the swap  
      ev)))

(defun create-wh-nominal-and-edge-by-binding-and-insert-edge (var val pred)
  (unless (edge-p (parent-edge-for-referent))
    (lsp-break "create-wh-nominal-and-edge-by-binding-and-insert-edge - no valid parent edge"))
  (let ((wh-nominal-ref (create-wh-nominal-by-binding var val pred)))
    (insert-wh-nominal-edge (parent-edge-for-referent) wh-nominal-ref)
    wh-nominal-ref))

(defun insert-wh-nominal-edge (parent wh-nominal-ref)
  (declare (special wh-nominal-ref parent))
  (let ((wh-nominal-edge
         (make-wh-nominal-edge (right-edge-for-referent)
                               wh-nominal-ref)))
    (sort-out-introduction-of-wh-nominal-edge wh-nominal-edge parent)
    (values wh-nominal-ref wh-nominal-edge)))


(defun sort-out-introduction-of-wh-nominal-edge (wh-nominal-edge parent)
  "The parent is a binary edge. We've just spanned one of its daughters
   with the newly introduced wh-np-edge so we need to update that information."
  (setf (edge-used-in wh-nominal-edge) parent)

  ;; The order of the edges in the vector that the parent and lambda-edge
  ;; share is messed up. Edges are added to the edge-vectors of their
  ;; start and end positions at the they are created. The parent edge was
  ;; created before the lambda-edge. (It was created at the start of
  ;; the rule-interpretation process. Right now we're in the middle
  ;; of that process.) Anything that walks the vector will be confused
  ;; because the parent edge is longer than the lambda edge. To correct
  ;; this we swap their position in the relevant vector. 
  (let ((ev (edge-ends-at parent)))
    (unless (index-of-edge-in-vector wh-nominal-edge ev)
      (error "Lambda edge not in expected vector ~a" ev))
    (swap-edges-in-vector parent wh-nominal-edge ev)
    (setf (ev-top-node ev) parent) ;; usually redundant with the swap  
    ev))


(def-form-category lambda-form)
(define-category lambda-expression :specializes predicate)

(defun make-predication-edge (pre-pred-edge predication)
  "Span 'pre-pred-edge' with a new edge with the same end-points.
   The caller has provided 'predication' to be the referent of
   this new edge."
  (let* ((daughter (maybe-extract-statement-edge pre-pred-edge))
         (left-ev (edge-starts-at pre-pred-edge))
         (right-ev (edge-ends-at pre-pred-edge))
         (lambda-edge
          (make-completed-unary-edge
           left-ev right-ev
           'make-predication-edge        ;; rule
           daughter                      ;; daughter
           category::lambda-expression   ;; category
           category::lambda-form         ;; form
           predication)))                ;; referent
    lambda-edge))

(defun make-wh-nominal-edge (wh-clause-edge wh-np)
  "Span 'wh-clause-edge' with a new edge with the same end-points.
   The caller has provided 'predication' to be the referent of
   this new edge."
  (let* ((daughter (maybe-extract-statement-edge wh-clause-edge))
         (left-ev (edge-starts-at wh-clause-edge))
         (right-ev (edge-ends-at wh-clause-edge))
         (lambda-edge
          (make-completed-unary-edge
           left-ev right-ev
           'make-wh-nominal-edge        ;; rule
           daughter                      ;; daughter
           (itype-of wh-np)   ;; category
           category::np         ;; form
           wh-np)))                ;; referent
    lambda-edge))

(defun make-to-comp-with-subject-edge (to-comp-edge expanded-to-comp)
  "Span 'wh-clause-edge' with a new edge with the same end-points.
   The caller has provided 'predication' to be the referent of
   this new edge."
  (let* ((left-ev (edge-starts-at to-comp-edge))
         (right-ev (edge-ends-at to-comp-edge)))
    (make-completed-unary-edge
     left-ev right-ev
     'make-to-comp-with-subject-edge ;; rule
     to-comp-edge                    ;; daughter
     (itype-of expanded-to-comp)     ;; category
     (edge-form to-comp-edge)        ;; form
     expanded-to-comp)               ;; referent
    ))

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
              (t (warn "bad make-predication-edge in ~s~%" (current-string))
                 nil))
        pre-pred-edge)))


#+ignore(defun create-predication-by-binding-in-prog (val-edge pre-pred-edge parent-edge pred-pos)
  "Given the value edge, predicate edge, and the edge they should be
attached to, as well as the pred-pos (whether the predicate attaches
to the left or right), make a new edge over the predicate, and
attach it and the val-edge together on the parent edge. Currently,
checking whether the val-edge can take the pred-edge should happen before this is called.

e1 - NP -> ref = VAL (val-edge)
e2 - VP -> pre-pred (e.g., \"phos by SAPK\") (pred-edge)
e4 - (parent-edge-for-referent) -- what will hold the things being put together, but need to check if this is always the case especially for da

1) check if there is a variable on pre-pred which accepts VAL -> set VAR
    (maybe above create, or have create called twice based on whether var works)

2) create a new edge (e3) over e2
create a \"pred exp\" using pre-pred and VAL and VAR
set-edge-referent e3 to pred-exp

3) attach e3 and edge-ref(e3) to e1 and val by e4

new arguments:
parent (e4)
val-edge
pred-edge
val-pred-var (pred vs modifier - left or right?)
"
  (declare (special **lambda-var**))
  (let* ((val (edge-referent val-edge))
         (pre-pred (edge-referent pre-pred-edge))
         (var ())
         (new-predication (bind-dli-variable  var **lambda-var** pred)))
    
    (declare (special new-predication))
    ;; Rusty - how could the binding fail?  AKA, why the cond here.
    (when (and val (not (individual-p val))
               (not (referential-category-p val))
               ;; above happens for "when oncogenic RAS is induced in HKe3 ER:HRASV12 cells (Figure S3B) "
               )
      (if (eq val '*lambda-var*)
          (when *lambda-var-warnings*
            (warn "still trying to bind *lambda-var* in predication, in ~s~%"
                (current-string)))
          (lsp-break "non individual as val")))
    (cond (new-predication
           (setf (gethash new-predication *predication-links-ht*) val)
           (if (and insert-edge (edge-p (parent-edge-for-referent)))
               (insert-predication-edge pred new-predication)
               (values new-predication nil)))
	  (t
           (values pred nil)))))


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
  ;; and {common-noun} → n-bar common-noun
  ;; or {proper-noun} → np proper-noun>
  
  (cond
    (*subcat-test*
     (let ((right-edge (right-edge-for-referent)))
       (not (or (word-p head) ;; this happened with word = HYPHEN, "from FCS-treated cells"
                ;; also happened with "nontargeting"
                (null head) ;; happens when head is a bio-entity
                (itypep head 'n-fold)
                (and (individual-p head)
                     (itypep head 'determiner))
                (and (proper-noun? right-edge) ;; "Saturday", "June"
                     (itypep (edge-referent right-edge) 'time))
                ))))
    
    ((itypep head 'determiner) ;; had strange case with "some cases this" -- head was "this"
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
          (let ((result (compose qualifier head)))
            (tr :composed-qualifier-with-head qualifier head result)
            result)))
       ((and (not (eq script :biology))
             ;; w/o methods: "bottom" in "bottom block"
             (itypep qualifier 'object-dependent-location))
        (add-dependent-location qualifier head))
       ((and
         (category-named 'knockout-pattern)
         (itypep head 'knockout-pattern)
         (itypep qualifier 'protein)
         (setq qualifier (bind-variable 'cell-line head qualifier)))
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
       ((and (itypep qualifier (itype-of head))
             ;; "The concentration of BRAF-NRAS complex." comes out
             ;; as 'complex of complex of' if we fall through to
             ;; the subcategoization case just below.
             (has-only-trivial-bindings head))
        qualifier)
       
       ((interpret-premod-to-np qualifier head))
       ;; subcat test is in here. If there's a :premod subcategorization
       ;; that's compapatible this gets it.

       (t
	;; what's the right relationship? Systemics would say
	;; they are qualifiers, so perhaps subtype?
	(setq head (bind-variable 'modifier qualifier head)) ;; safe
	head)))))

(defun has-only-trivial-bindings (i)
  "raw-text doesn't count"
  (let* ((vars (loop for b in (indiv-binds i)
                  collect (binding-variable b)))
         (names (loop for v in vars collect (var-name v))))
    (cond
      ((and (null (cdr names)) (eq (car names) 'raw-text)) t)
      (t nil))))
       

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
             (or (not (eq (form-cat-name  (left-edge-for-referent)) 'np))
                 (not (value-of 'has-determiner premod)))
             (subcategorized-variable head :verb-premod premod))
    (push (list premod (value-of 'raw-text premod)
                head  (value-of 'raw-text head)
                (current-string))
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
             (or (not (eq (form-cat-name premod-edge) 'np))
                 (not (value-of 'has-determiner premod))))
    ;; really want an n-bar type item here, but these get raised to NPs
    ;;  the check is to distinguish "serine" gets "raised" to an NP
    ;;  and "an event" 
    (or (subcategorized-variable head :verb-premod premod)
        (ecase (form-cat-name (right-edge-for-referent))
          (verb+ing (subcategorized-variable head :object premod))
          (verb+ed (subcategorized-variable head :subject premod))
          ((verb+present verb vg+ed) nil) ;;these are cases in a prenominal, so don't use these rules
          ))))
        
(defun adj-noun-compound (adjective head &optional adj-edge)
  (when (category-p head) (setq head (individual-for-ref head)))
  (cond
    (*subcat-test*
     t) ;;(takes-adj? head adjective) precludes all the other legal cases
    ((when (use-methods) ;; "the Ras protein", where 'protein' is a type-marker
       (compose adjective head)))
    ((itypep adjective 'attribute-value) ;; "red block"
     (handle-attribute-of-head adjective head))
    ((interpret-premod-to-np adjective head)) ;; normal subcategorization
    (t ;; Dec#2 has "low nM" which requires coercing 'low'
     ;; into a number. Right now just falls through
     (let ((predicate 
            (cond
              ((and (not (is-basic-collection? adjective))
                    (find-variable-for-category :subject (itype-of adjective)))
               (create-predication-and-edge-by-binding-and-insert-edge
                :subject head adjective))
              (t ;; we don't know what they actual relationship is,
               ;; but including the adjective/adjp is better than
               ;; dropping it on the floor
               (individual-for-ref adjective)))))
       (setq head (bind-dli-variable 'predication predicate head))
       head))))



(defparameter *premod-adjps* nil)

(defun adj-postmodifies-noun (n adj &optional (adj-edge nil))
  ;; adj-edge is set when we are postmodifying
  ;; to be more picky about which adjectives can post-modify a noun
  (when (and (consp *premod-adjps*)
             (boundp '*current-chunk*)
             *current-chunk*
             (member 'ng (chunk-forms *current-chunk*)))
    (push (list (itype-of n)  (itype-of adj)) *premod-adjps*))
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
      (or (itypep of-pp 'relativized-prepositional-phrase)
          (eq (edge-form (right-edge-for-referent)) category::rel-pro-to-be-quantified))
      (let* ((wh (value-of 'pobj of-pp))
             (i (define-or-find-individual 'partitive-relativizer
                    :quantifier quantifier :relativizer wh)))
        ;; Make "6 of which" have the same labels as "which"
        (revise-parent-edge :category (category-named 'which)
                            :form (category-named 'wh-pronoun))
        i)))
    

(defparameter *dets-seen* nil "Keep track of what kinds of new 'determiners' we get")

(define-lambda-variable 'is-plural nil 'top)

(defun determiner-noun (determiner head)
  "Depending on the value of *determiners-in-DL* either bind the determiner
   to a variable or stash it by calling add-def-ref and handle it later"
  (or *subcat-test*
      (let* ((parent-edge (parent-edge-for-referent))
	     (det-edge (left-edge-for-referent))
	     (det-word (edge-left-daughter det-edge))
             (head-edge (right-edge-for-referent)))

        ;; There are a ton of categories that are defined to be
        ;; syntactic determiners that deserve their own careful
        ;; semantic treatment that might funnel through here
        ;; We can dispatch of the type of the determner:
        ;; quantity, approximator, etc. Pull them out of the
        ;; modifiers dossier. 

	(unless (determiner? det-word) ;; anticipated cases
	  (pushnew determiner *dets-seen*))
        
	(setf (non-dli-mod-for head) (list 'determiner determiner))
        (when (definite-determiner? determiner)
          (add-def-ref determiner parent-edge))

        ;;(when (wh-determiner? determiner) (break "wh det"))
        
	(cond
          ((and *determiners-in-DL*
                (or (individual-p head) (category-p head)))
           (setq head (bind-dli-variable 'has-determiner determiner head))
           (when (eq (edge-category head-edge) category::common-noun/plural)
             (setq head (bind-variable 'is-plural determiner head)))))

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


(defun indefinite-pn/np (indef-pn head)
  "Tailored for indefinite pronouns ('everyone', 'anything') that act
 semantically just like quantifiers. This uses quantifier-noun-compound
 as a standin for something more tailored. It just stashes the quantifier
 on the head via a binding defined for that purpose"
  (if *subcat-test* ;; straight copy
    (itypep head '(:or endurant perdurant abstract bio-abstract quality
                   biological time-kind determiner))
    (let ((head (quantifier-noun-compound indef-pn head)))
      (revise-parent-edge :category ;; promulgated edge wrong on the rule/???///
                          (edge-category (right-edge-for-referent)))
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
    (*subcat-test* (and number head ;; J34: "Histone 2B"
                        (not (itypep head 'single-capitalized-letter))
                        (not (itypep head 'year)))) ;; "December 4 2017"
    (t
     (setq head (individual-for-ref head))
     (when (itypep head 'endurant) ;; ~600 kinase
       (setf (non-dli-mod-for head) (list 'number number)))
     (when (and *determiners-in-DL*
                (or (individual-p head )(category-p head)))
       (setq head (bind-dli-variable 'number number head)))
     head)))



(defun verb+ing-noun-compound (verb head)
  (or (when (use-methods)
        (compose verb head))
      (link-in-verb+ing verb head)))

(defun link-in-verb+ing (verb head)
  (let ((premod-n-variable
         (subcategorized-variable head :m verb)))
    (if premod-n-variable
        (bind-dli-variable premod-n-variable verb head)
   
        (let ((subject-var (subcategorized-variable  verb :subject head)))
          (cond
            (*subcat-test* subject-var)
            ((word-p verb)
             ;; probably a case of an unknown verb+ing created by morphology
             ;;  like "mating" in PMC352229
             ;; "the complementary mating type-switched strain PJ69–4A"
             ;; Dropping it on the floor seems ok since we don't know
             ;; what it means
             head)
            (t
             (setq verb
                   (interpret-verb-as-predication
                    'link-in-verb+ing
                    head
                    verb
                    *left-edge-into-reference*
                    subject-var))
             (setq head (bind-dli-variable 'predication verb head))
             head))))))

(defun interpret-verb-as-predication (rule-fn head qualifier edge-for-qualifier var)
  "Used by link-in-verb+ing and link-in-verb -- no longer used by
make-phosphorylated-protein (a function used in no-space operations)
-- this way it is only used things at a level where it can make and
insert edges instead of behaving differently based on whether or not
there was an edge for the qualifier (e.g., there is no edge for the
'p' in cases like 'pERK1/2')"
  (unless (or (null edge-for-qualifier) (eq qualifier (edge-referent edge-for-qualifier)))
    (lsp-break "bad call to extend-interpretation-of-verb-as-predication"))
  (setq qualifier (individual-for-ref qualifier))
  (cond (var
         ;; really should check for passivizing
         (setq qualifier (create-predication-and-edge-by-binding-and-insert-edge
                          var head qualifier))
         (if (edge-p edge-for-qualifier)
             (set-edge-referent edge-for-qualifier qualifier)
             qualifier))
           
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
          (current-string))
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
  (let* ((be-edge (left-edge-for-referent))
         (be-form (form-cat-name be-edge))
         (vg-edge (right-edge-for-referent)))
    (when (or
           (member be-form
                   '(verb verb+present verb+past verb+ed verb+ing
                     vg+ed vg vg+ing vp+ing infinitive
                     preposed-auxiliary))
           (if (member be-form
                       '(that-comp thatcomp to-comp whethercomp
                         vp S subject-relative-clause
                         subordinate-s subordinate-clause
                         object-relative-clause ;; "that PTEN protein levels are, in part, regulated by ..."
                         transitive-clause-without-object))
               nil
               (break "check-passive-and-add-tense/aspect got ~s in ~s~%"
                     (form-cat-name be-edge)
                     (current-string))))
           
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
     
      (if (eq be-form 'preposed-auxiliary)
        (then
         ;; (break "aux: ~a  vg: ~a" be-edge vg-edge) ;; test the plausibility check
          (unless (plausibly-too-early-to-take-preposed-aux be-edge vg-edge)
            (add-tense/aspect aux vg)))
        (add-tense/aspect aux vg)))))

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
        (eq 'vg (form-cat-name (left-edge-for-referent))))))

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
  (declare (special category::pp category::hyphenated-pair category::hyphenated-triple))
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
                   (not (itypep vg category::hyphenated-pair))
                   (not (itypep vg category::hyphenated-triple))
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
                     (current-string)))
              nil)))
          (variable-to-bind
           (bind-dli-variable variable-to-bind adverb vg))
          ((member (cat-name adverb) *subordinating-adverbs*) ;; "consequently"
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
                  (current-string)))
          nil)))

      ;; Execution options if subcat-test is satisfied
      ((and (itypep adverb 'intensifier) ;; compose will apply
            (itypep adj-phrase 'qualifiable))
       ;; method is in core/adjuncts/others.lisp in the intensifier section
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
        (multiple-value-bind (variable-to-bind  pobj-referent prep-word *pobj-edge*)
            (variable-to-bind-pp-to-head (right-edge-for-referent) vg)
          (declare (special *pobj-edge*))
          (cond
            (*subcat-test* (or variable-to-bind
                               (is-domain-adjunctive-pp? vg (right-edge-for-referent))))
            (variable-to-bind
             (when *collect-subcat-info*
               (push (subcat-instance vg prep-word variable-to-bind pp)
                     *subcat-info*))
             (setq vg (individual-for-ref vg))
             (setq pobj-referent (individual-for-ref pobj-referent))
             (setq vg (bind-dli-variable variable-to-bind pobj-referent vg))
             vg)
            ((maybe-add-domain-adjunctive-predicate-to-phrase
              vg (right-edge-for-referent))))))))

(defun variable-to-bind-pp-to-head (base-pp-edge head)
  (let* ((pp-edge (base-pp base-pp-edge))
         (prep-word (identify-preposition pp-edge))
         (*pobj-edge* (edge-right-daughter pp-edge))
         (pobj-referent (identify-pobj pp-edge))
         (variable-to-bind
          (when prep-word
            ;; test if there is a known interpretation of the HEAD/PP combination
            (or (subcategorized-variable head prep-word pobj-referent)
                (and (itypep (edge-referent pp-edge) 'upon-condition)
                     (find-variable-for-category 'context (itype-of head)))
                ;; circumstance)
                ;; or if we are making a last ditch effore
                (when *force-modifiers* 'modifier)))))
    (values variable-to-bind (individual-for-ref pobj-referent)
            prep-word *pobj-edge*)))

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

(defun adjoin-tocomp-to-vg (vg tocomp &aux vg-object)
  (when  (itypep vg 'raising-to-object)
    (when
        (setq vg-object (value-of (object-variable vg) vg))
      (cond (*subcat-test*
             (unless (assimilate-subject vg-object tocomp)
               (return-from adjoin-tocomp-to-vg nil)))
            (t (setq tocomp
                     (insert-object-raised-tocomp
                      (parent-edge-for-referent)
                      tocomp
                      (assimilate-subject vg-object tocomp)))))))
  (assimilate-subcat vg :to-comp tocomp))
 ;;(value-of 'comp tocomp)
		    
(defun insert-object-raised-tocomp (parent to-comp to-comp-with-subject)
  "make an edge for the result of inserting the object of the rasing-to-object verb as the subject of the to-comp"
  (let* ((to-comp-edge (edge-right-daughter parent)))
    (unless to-comp-edge
      (lsp-break "insert-object-raised-tocomp predicate is not from right edge~%"))
    (let ((expanded-to-comp-edge
           (make-to-comp-with-subject-edge (right-edge-for-referent) to-comp-with-subject)))
      (sort-out-introduction-of-inserted-edge expanded-to-comp-edge
                                              (parent-edge-for-referent)
                                              (left-edge-for-referent)
                                              (right-edge-for-referent)
                                              to-comp-edge)
      (values to-comp-with-subject expanded-to-comp-edge))))
 
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
  (let ((variable-to-bind
         ;; test if there is a known interpretation of the NP/PP combination
         (subcategorized-variable np :to-comp to-comp)))
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
  (let* ((to-comp-var ;; e.g. for "acts to dampen..."
          (subcategorized-variable s :to-comp tocomp)))
    (cond
     (to-comp-var 
      (or *subcat-test*
       (setq s (bind-dli-variable to-comp-var tocomp s))))
     (t
      (let ((ok? (and s (itypep s 'perdurant) (itypep tocomp 'perdurant))))
        (cond
         (*subcat-test* ok?)
         (ok?
          (setq s (bind-dli-variable 'purpose tocomp s))
          s)))))))

(defun interpret-for-to-comp (for-pp to-comp)
  (let* ((for-subj (value-of 'pobj for-pp))
	 (subj-var
	  (subcategorized-variable to-comp :subject for-subj)))
    (if *subcat-test*
	subj-var
	(bind-dli-variable subj-var for-subj to-comp))))
		
	    
;;;---------
;;; NP + PP
;;;---------

(defparameter *in-scope-of-np+pp* nil
  "Flag to provide context for relative-location methods and others")

(defun interpret-pp-adjunct-to-np (np pp)
  (cond
    ((null np) 
     (break "null interpretation for NP in interpret-pp-adjunct-to-np edge ~s~&"
            *left-edge-into-reference*)
     nil)
    ((itypep pp 'collection) ;;(lsp-break "pp collection")
     nil)
    ((and np pp)
     (multiple-value-bind (variable-to-bind  pobj-referent prep-word *pobj-edge*)
         (variable-to-bind-pp-to-head (right-edge-for-referent) np)
       (let* ((of (word-named "of"))
              (*in-scope-of-np+pp* prep-word))
         (declare (special *in-scope-of-np+pp*))
       
         (setq np (individual-for-ref np))

         (if *subcat-test*
             (or variable-to-bind
                 (maybe-extend-premod-adjective-with-pp np pp)
                 (and *force-modifiers* 'modifier)
                 (and (use-methods) (most-specific-k-method 'compose (list np pp)))
                 (is-domain-adjunctive-pp? np (right-edge-for-referent))
                 (and (eq prep-word of)
                      (or (itypep np 'attribute)
                          (and
                           ;; (itypep np 'dependent-location)
                           (itypep np 'object-dependent-location)
                           (itypep pobj-referent 'partonomic))
                          (and
                           (itypep np 'partonomic)
                           (compatible-with-specified-part-type pobj-referent np))
                          (and (use-methods)
                               (most-specific-k-method 'compose (list np pobj-referent)))))
                 )

             ;; This side runs when subcat test passed and we're really interpreting.
             ;; Specific cases are ordered before looking for applicable methods
             ;; of using a subcategorized variable.
             (cond
               ((and (eq prep-word of)
                     (itypep np 'attribute)) ;; "color of the block"
                (find-or-make-individual 'quality-predicate
                                         ;;:attribute (itype-of np) :item pobj-referent
                                         :attribute np
                                         :item pobj-referent)) ;;

               ((and (eq prep-word of)
                     (itypep np 'object-dependent-location)
                     (itypep pobj-referent 'partonomic)) ;; "bottom of the stack"
                (tr :np+pp/np-is-partonomic np pobj-referent)
                (make-object-dependent-location np pobj-referent))

               ((and (eq prep-word of)
                     (itypep np 'partonomic) ;; "a row of two blocks"
                     (compatible-with-specified-part-type pobj-referent np))
                (tr :np-pp-of-np-partonomic np pobj-referent)
                (setq np (bind-variable 'parts pobj-referent np)))

               ((when (and (use-methods)
                           (most-specific-k-method 'compose (list np pp)))
                  ;; e.g. has-location + location : "the block at the left end of the row"
                  (let ((result (compose np pp)))
                    (when result
                      (tr :np-pp-composition np pp)
                      result))))

               ((when (and (use-methods)
                           (eq prep-word of)
                           (most-specific-k-method 'compose (list np pobj-referent)))
                  (let ((result (compose np pobj-referent)))
                    (when result
                      (tr :compose-other-of np pobj-referent result)
                      result))))
           
               (variable-to-bind
                (collect-subcat-statistics np prep-word variable-to-bind pp)
                (setq np (bind-dli-variable variable-to-bind pobj-referent np))
                np)
               ((maybe-add-domain-adjunctive-predicate-to-phrase np (right-edge-for-referent)))
               ((maybe-extend-premod-adjective-with-pp np pp))
                          (t ;;(break "fell through")
                #+ignore(when (current-script :blocks-world)
                          (if (eq prep-word of)
                              (warn "No interpretation of ~a 'of' ~a" np pobj-referent)
                              (warn "No interpretation of np ~a with pp ~a" np pp)))
                ;; Needs an interpretation just to get through, so pretend
                ;; we had *force-modifiers* on and take the weakest relationship
                (setq np (bind-variable 'modifier pobj-referent np))
                np ))))))))


;; hash table keyed on prepositions, with values being triples of POBJ-type, NP-head-type and construction-function
;;  this might want to be done by k-methods -- DAVID -- let's review this
;; The current implementation is a standin

(defparameter *domain-adjunctive-pp-tests* (make-hash-table :test #'equal))
(defun add-domain-adjunctive-pp-rule (prep pobj-type np-head-type interpretation-function)
  (push (list pobj-type np-head-type interpretation-function)
        (gethash (pname prep) *domain-adjunctive-pp-tests*)))

(defun is-domain-adjunctive-pp? (np pp-edge)
  "Test for PPs like 'in the literature' which may be used as modifiers for certain classes of general 
  (mid-level model) NPs, but are domain specific -- e.g. 'the relations in the literature'"

  (loop for triple in (gethash (pname (identify-preposition pp-edge))
                               *domain-adjunctive-pp-tests*)
        when
          
          (and (itypep (identify-pobj pp-edge) (car triple))
               (itypep np (second triple)))
        collect (third triple)))

(defun maybe-add-domain-adjunctive-predicate-to-phrase (np pp-edge)
  (let ((domain-adjunct-functions (is-domain-adjunctive-pp? np pp-edge))
        result)
    (loop for fn in domain-adjunct-functions
          when (setq result (funcall fn np pp-edge))
            do (return result))))



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
      ;; with finding disc
      (format t "~%interpret-pp-as-head-of-np run on ~s ~s in ~s~%"
              (retrieve-surface-string np)(retrieve-surface-string pp) (current-string))
      (setq pobj-referent (individual-for-ref pobj-referent))
      (setq pobj-referent (bind-dli-variable variable-to-bind np pobj-referent))
      (revise-parent-edge :category (itype-of pobj-referent))
      pobj-referent))))


;;;-----------------
;;; NP + VP
;;;-----------------

(defparameter *warn-about-optional-objects* nil
  "Set to T to show cases where we have a parse in which a supposed transitive verb has no parsed object.")

;;////// adapt to encountering a subordinate-clause individual
;;  instead of a variable binding
(defun assimilate-subject-to-subordinate-clause (subj vp)
  ;;(print `(subordinate-conjunction it ,(value-of 'subordinate-conjunction vp)))
  (if (or (null  (value-of 'subordinate-conjunction vp))
          (not (member (pname (value-of 'word (value-of 'subordinate-conjunction vp)))
                  '("moreover" "neither" "since" "then" "therefore" "thus")
                  :test #'equal)))
      nil
      (assimilate-subject subj vp)))

(defun assimilate-subject (subj vp
                           &optional (vp-edge (right-edge-for-referent))
                             dont-revise-parent-edge )
  (declare (special category::transitive-clause-without-object
                    subj vp *left-edge-into-reference*))
  ;; vp-edge is NIL when called from polar questions on adjectives
  ;;  this may want to be fixed
  (unless (and subj vp) ;; have had cases of uninterpreted VPs
    (return-from assimilate-subject nil))
  (when (or (is-non-anaphor-numeric? *left-edge-into-reference* subj)
            ;;(itypep subj '(:or when how where why))
            (and (itypep subj '(:or what where when how why))
                 (itypep vp '(:or do would))))
                 ;; block when, how, where, why as subjects, and WHAT as a subject of DO or WOULD
                 ;; as part ofimproved treatment of questions
    (return-from assimilate-subject nil))

  (when (is-basic-collection? vp)
    (revise-parent-edge :category (value-of 'type vp)))
    
  (cond
    ((itypep subj 'when)
      (add-time-to-event vp subj))
    ((itypep subj 'how)
     (add-manner-to-event vp subj))
    ((itypep subj 'where)
     (add-location-to-event vp subj))
    ((itypep subj 'why)
     (add-purpose-to-event vp subj))
     
    ((itypep vp 'control-verb) ;; e.g. "want"
     (when *subcat-test* (return-from assimilate-subject t))
     (assimilate-subject-for-control-verb subj vp vp-edge))
    
    ((or (and (eq (cat-name (itype-of  vp)) 'be)
              ;; was itypep, but REMAIN (and other pseudo copulars) are subcategories of BE
              ;; block "what are" as a transitive-clause-without-object
              (null (value-of 'predicate vp)))
         (itypep vp 'do)) ;; block "what does" as a transitive-clause-without-object         
     (return-from assimilate-subject nil))
    
    ((itypep vp 'copular-predication)
     (assimilate-subject-for-copular-predication subj vp vp-edge))
    
    ((transitive-vp-missing-object? vp vp-edge)
     (unless *subcat-test*
       ;; the edge isn't available and shouldn't be chaged during the test phase
       (when *warn-about-optional-objects*
         (warn "~%transitive verb without object: ~s~%"
               (extract-string-spanned-by-edge vp-edge)))
       (unless dont-revise-parent-edge
         (revise-parent-edge :form category::transitive-clause-without-object)))
     (assimilate-subcat vp :subject subj))
    
    ((assimilate-subject-as-object? subj vp vp-edge)
     (assimilate-subcat vp :object subj))
    
    (t (assimilate-subcat vp :subject subj))))



(defun assimilate-subject-for-control-verb (subj vp vp-edge)
  (declare (special subj vp vp-edge))
  (let* ((theme-comp (value-of 'theme vp))
         (object (value-of 'patient vp))
         (theme-comp-edge
          (loop for e in (edges-under vp-edge)
                when (eq (edge-referent e) theme-comp)
                do (return e))))
    (declare (special theme-comp object theme-comp-edge))
    (when theme-comp ;; cf. "what do you want"
      (let ((revised-theme-comp
             (if object
                 ;; 'I want you to wash the dishes' vs 'I want to wash the dishes'
                 (assimilate-subject object theme-comp)
                 (assimilate-subject subj theme-comp))))
        (set-edge-referent theme-comp-edge revised-theme-comp)
        (setq vp (rebind-variable 'theme revised-theme-comp vp))
        (set-edge-referent vp-edge vp)))
    (assimilate-subcat vp :subject subj)))


(defun assimilate-subject-as-object? (subj vp right-edge)
  (when right-edge
    (or
     (and (member (form-cat-name right-edge) '(subordinate-clause vp+ed vg+ed))
          (let ((vg-edge
                 (cond ((member (form-cat-name right-edge) '(vp+ed vg+ed))
                        right-edge)
                       ((eq 's (form-cat-name (real-right-daughter right-edge)))
                        ;; case where subordinate conjunction is attached above the S
                        ;; "...since p130 CAS , paxillin, and FAK  are already hyperphosphorylated.
                        (edge-right-daughter (real-right-daughter right-edge)))
                       (t (real-right-daughter right-edge)))))
            (when (edge-p vg-edge)
              ;; vg-edge is :long-span for cases where the
              ;;  subordinate clause is a conjunction
              ;; HANDLE THESE CORRECTLY
              (if (or (is-passive? vg-edge)
                      (member (form-cat-name right-edge) '(vp+ed vg+ed)))
                  (when 
                      (and (object-variables vg-edge)
                           (loop for v in (object-variables vg-edge)
                                 never (value-of v vp)))
                    (assimilate-subcat vp :object subj))
                  (when (missing-subject-vars (edge-referent vg-edge))
                    (assimilate-subcat vp :subject subj))))))
     (is-passive? right-edge))))

(defun real-right-daughter (right-edge)
  (if (eq (edge-right-daughter right-edge) :long-span)
      (if (edge-p (car (last (edge-constituents right-edge))))
          (car (last (edge-constituents right-edge)))
          (else (warn  "can't find right daughter in assimilate-subject -- ~s~%" (current-string))
                nil))
      (edge-right-daughter right-edge)))

(defun assimilate-subject-for-copular-predication (subj vp vp-edge)
  (let* ((vp-val (value-of 'value vp))
         (control-vp (and (individual-p vp-val)
                          (itypep vp-val '(:or control-verb control-verb-intrans))))
         (controlled-val
          (if (not control-vp)
              t
              (interpret-control-copula subj vp
                                        (left-edge-for-referent)
                                        vp-edge))))
    (declare (special controlled-val control-vp))
       
    (cond (*subcat-test* controlled-val)
          ((individual-p controlled-val)
           (apply-copula subj controlled-val)) ;; in syntax/copulars.lisp
          (t (and (null (value-of 'item vp))
                  (apply-copula subj vp))))))

(defun interpret-control-copula (subj copula subj-edge copula-edge)
  (declare (special subj copula subj-edge copula-edge))
  (let* ((copula-val (value-of 'value copula)) ;; e.g. (ability ...)
         (copula-val-edge (when 
                                (eq (edge-referent (edge-right-daughter copula-edge))
                                    copula-val)
                              (edge-right-daughter copula-edge)))
         (right (and (edge-p copula-val-edge)
                     (edge-right-daughter copula-val-edge)))
         (controlled-val-edge (and (edge-p right)
                                   (edge-referent right)
                                   (if (itypep (edge-referent right) 'prepositional-phrase)
                                       (edge-right-daughter right)
                                       right)))
         (controlled-val (when (edge-p controlled-val-edge) (edge-referent controlled-val-edge)))
         (new-controlled-val
          (and controlled-val
               (loop for b in (indiv-old-binds copula-val)
                     thereis (eq (binding-value b) controlled-val))
               (assimilate-subject subj controlled-val right t))))
    (declare (special copula-val copula-val-edge right controlled-val-edge
                      controlled-val new-controlled-val))
    (cond (*subcat-test* new-controlled-val)
          (new-controlled-val
           (set-edge-referent controlled-val-edge new-controlled-val)
           (set-edge-referent copula-val-edge (rebind-value controlled-val new-controlled-val copula-val))
           (set-edge-referent copula-edge
                              (rebind-value copula-val (edge-referent copula-val-edge) copula))
           (edge-referent copula-edge))
          (t
           (warn  "interpret-control-copula fails with subj=~s, copula=~s in ~s~%"
                   subj copula
                   (current-string))
           nil))))
      

(defun assimilate-subject-to-vp-ing (subj vp)
  ;; special case where the vp is a gerund, and we make it
  ;; an NP (not sure how often this is right)
  (unless 
      ;; remove the printout until it is needed again
      t ;;   *subcat-test*
    (format t "~&----assimilate-subject-to-vp-ing make an NP for ~s and ~s---~&  in ~s~&" 
            subj vp
            (if (> (length (current-string)) 0)
		(current-string)
		*string-from-analyze-text-from-string*)))
  (when (is-non-anaphor-numeric? *left-edge-into-reference* subj)
    (return-from assimilate-subject-to-vp-ing nil))
  (if (is-passive? (right-edge-for-referent))
      (assimilate-subcat vp :object subj)
      (assimilate-subcat vp :subject subj)))

(defun assimilate-subject-to-vp-ed (subj vp)
  "We have to determine whether this is an s (which the rule
   that's being invoked assumes) or actually a reduced relative,
   where the criteria is whether the verb is in oblique or tensed
   form. If it turned out to be a RR then we do fairly serious
   surgery on the edge."
  (declare (special category::transitive-clause-without-object category::np))
  ;; (push-debug `(,subj ,vp)) (setq subj (car *) vp (cadr *))
  (let* ((vp-edge (right-edge-for-referent))
         (vp-form (edge-form vp-edge))
         result)
    
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
       (and 
        #| allows these to succeed
        ("Is MAP2K1 bound to MAPK1 eventually high?" "Is MAPK1 bound to MAP2K1 transient?"
        "What are the genes regulated by STAT3?")

        causes these to fail
        ("How is stat3 involved in apoptotic regulation?"
        "How is stat3 involved in apoptotis regulation in the liver?"
        "How is stat3 involved in regulating apoptosis?" "How is stat3 used to regulate apoptosis?"
        "Is MEK2 inhibited by Selumetinib?" "Is STAT3 involved in apoptosis?"
        "Is STAT3 involved in apoptotic regulation?" "Is STAT3 involved in regulating apoptosis?"
        "Is STAT3 regulated by c-fos?" "Is stat3 exclusively expressed in liver?"
        "Is stat3 expressed exclusively in liver?" "Is stat3 expressed in liver?"
        "Is stat3 expressed in spleen?" "Is stat3 involved in any apoptotic pathways?"
        "Is stat3 involved in apoptotic regulation?" "Is stat3 involved in regulating apoptosis?"
        "Is the amount of phosphorylated MAPK1 sustained at a high level?")
        (not
             ;; aux inversion in question "is STAT3 involved in ..." ; ; ; ; ; ;
         (let ((word-before (word-just-to-the-left (left-edge-for-referent))))
           (and (member (form-cat-name vp-edge) '(vg+ed vp+ed verb+ed))
                (member (pname word-before)
                        '("is" "was" "were" "are")
                        :test #'equal))))

        |#
        (not
         ;; aux inversion in question "is STAT3 involved in ..." ; ;
         (let ((word-before (word-just-to-the-left (left-edge-for-referent)))
               (edges-before (edges-just-to-left-of (left-edge-for-referent))))
           (and (member (form-cat-name vp-edge) '(vg+ed vp+ed verb+ed))
                (member (pname word-before)
                        '("is" "was" "were" "are")
                        :test #'equal)
                (not (initial-wh?)) ;; used instead of
                ;;(eq (pos-array-index (pos-edge-starts-at (car edges-before))) 1)
                 ;; nothing preceding the aux
                ;; so that we don't have "what are the genes mutated by ..."
                (not (loop for e in  (edges-after (right-edge-for-referent))
                             thereis '(vg+ed vp+ed verb+ed adjective)))
                )))
        (or (can-fill-vp-subject? vp subj) ;; evidence for S rather than reduced relative
            (and (can-fill-vp-object? vp subj (left-edge-for-referent))
                 ;; make sure this is a non-trivial relative clause (not just the verb)
                 (loop for binding in (indiv-old-binds vp)
                       thereis (not (member (var-name (binding-variable binding))
                                            '(past raw-text)))))
            (and (member (form-cat-name vp-edge) '(vg+ed verb+ed))
                 (interpret-premod-to-verb subj vp)))))
     
      ((and (can-fill-vp-object? vp subj (left-edge-for-referent))
            (not (verb-premod-sequence? (left-edge-for-referent)))
            (loop for binding in (indiv-old-binds vp)
                      thereis (not (member (var-name (binding-variable binding))
                                           '(past raw-text)))))
       ;; since this is applied to vp+ed, there is no syntactic object present
       (setq vp (create-predication-and-edge-by-binding-and-insert-edge
                 (subcategorized-variable vp :object subj) subj vp))       
       (setq subj (bind-dli-variable 'predication vp subj)) ;; link the rc to the np
       (revise-parent-edge :form category::np :category (itype-of subj))
       subj)
      
      ((can-fill-vp-subject? vp subj)
       (when (transitive-vp-missing-object? vp)
         (revise-parent-edge :form category::transitive-clause-without-object))
       (assimilate-subcat vp :subject subj)) ;;/// try using assimilate-subject
      
      ((setq result (interpret-premod-to-verb subj vp))
       (revise-parent-edge :form category::vg+ed)
       result)
      (t (warn "Error in sentence: ~s" (current-string))
         (error "How can this happen? Null referent produced in assimilate-subject-to-vp-ed~%")))))


;;;---------
;;; VP + NP
;;;---------

(defun assimilate-object (vg obj)
  (assimilate-np-to-v-as-object vg obj)
  ;;(assimilate-subcat vg :object obj)
  )

(defun assimilate-indirect-object (vg obj)
  (assimilate-subcat vg :indirect-object obj))

(defun assimilate-object-comp (vp obj)
  (assimilate-subcat vp :oc obj))

(defun assimilate-np-to-v-as-object (vg obj)
  "Sort out whether the 'obj' is a direct object, indirect object, or
   object complement, while ruling out spurious cases."
  (declare (special category::n-bar category::vp category::vp+ing
                    category::vp+ed category::to-comp category::n-bar))
  (when *subcat-test*
    (unless (and vg obj
                 ;; block attaching NP to VP as object when we have evidence for aux inversion
                 (not (and (or (itypep vg 'be)
                               (itypep vg 'have))
                           *right-edge-into-reference*
                           (edge-just-to-right-of (right-edge-for-referent))
                           (member (cat-name
                                    (edge-form
                                     (edge-just-to-right-of (right-edge-for-referent))))
                                   '(vg+ed vp+ed vg+ing vp+ing)))))
      (return-from assimilate-np-to-v-as-object nil)))
  
  (when (is-non-anaphor-numeric? *right-edge-into-reference* obj)
    (return-from assimilate-np-to-v-as-object nil))
  
  (let* ((indirect-object? (possible-indirect-object? vg))
         (oc-follows (obj-complement-follows? vg))
         (obj-is-oc (valid-object-complement? vg obj))
         (result ;; do the appropriate assimilation
          (cond ((and (typep *current-chunk* 'chunk)
                      (member 'ng (chunk-forms *current-chunk*)))
                 (verb-noun-compound vg obj))
                (indirect-object?
                 (assimilate-indirect-object vg obj))
                (t (if obj-is-oc
                     (assimilate-object-comp vg obj)
                     (assimilate-subcat vg :object obj)
                     ;;(assimilate-object vg obj)
                     )))))
    (cond
      (*subcat-test* result)
      (result
       (when (and (boundp '*parent-edge-getting-reference*)
                  *parent-edge-getting-reference*)
         ;; Revise the parent edges to reflect what we've observed
         (if (and (typep *current-chunk* 'chunk)
                  (member 'ng (chunk-forms *current-chunk*)))
             (revise-parent-edge :category (itype-of obj)
                                 :form category::n-bar
                                 :referent result)
             (revise-parent-edge :category (if (itype vg 'collection)
                                               (value-of 'type vg)
                                               (itype-of vg))
                                 :form (if (or indirect-object? oc-follows)
                                           category::vg
                                           (case (form-cat-name (parent-edge-for-referent))
                                             ((vg vp) category::vp)
                                             ((vp+ing vg+ing) category::vp+ing)
                                             ((vp+ed vg+ed vp+past) category::vp+past)
                                             ((to-comp) category::to-comp)
                                             (t (warn "bad verb form in assimilate-np-to-v-as-object -- interpreting as an NP? in ~s!"
                                                      (current-string))
                                                category::n-bar)))
                                 :referent result)))
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
  (assimilate-clausal-comp vg-or-np thatcomp :thatcomp))

(defun assimilate-clausal-comp (vg-or-np s-comp &optional (role :thatcomp))
  (declare (special *right-edge-into-reference*))
  ;;(push-debug `(,vg-or-np ,s-comp)) (break "what's what?")
  (or
   (when (and (takes-wh-nominals? vg-or-np)
              (or (itypep s-comp 'wh-nominal)
                  (member (edge-form-name (right-edge-for-referent))
                      '(wh-question howcomp))))
     (if *subcat-test*
       t
       (let ((wh (insert-wh-nominal-edge
                  (parent-edge-for-referent)
                  (lift-wh-element-from-nominal s-comp))))
         (assimilate-subcat vg-or-np :object wh))))
   (assimilate-subcat vg-or-np :s-comp s-comp)
   (assimilate-subcat vg-or-np :thatcomp s-comp)
   (and (itypep vg-or-np 'let) ;; or #| make help hear see |#))
        *right-edge-into-reference*
        (eq (edge-form *right-edge-into-reference*)
            category::s)
        (assimilate-subcat vg-or-np :s-comp s-comp))))

(defun assimilate-whethercomp (vg-or-np whethercomp)
  (assimilate-subcat vg-or-np :whethercomp whethercomp))

(defun create-whethercomp (wh s)
  (declare (special category::whethercomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::whethercomp)
       (let ((embedded? (not (top-level-wh-question?))))
         (make-wh-object (category-named 'whether)
                         :statement s
                         :embedded embedded?)))))

(defun create-when-where-relative (wh s)
  (cond
    (*subcat-test* t)
    (t (if (itypep wh 'when)
        (revise-parent-edge :form category::when-relative-clause)
        (revise-parent-edge :form category::where-relative-clause))
       s)))

(defun create-ifcomp (if s)
  (declare (special category::ifcomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::ifcomp)
       (let ((embedded? (not (top-level-wh-question?))))
         (make-wh-object (category-named 'if)
                         :statement s
                         :embedded embedded?)))))

(defun create-howcomp (how s) ;; dry-run #40, aspp2 68
  ;; disturbed dry-run 41. aspp2 69
  ;; This is to provide the adjective in a copula to have something
  ;; to work with now that it is exposed.
  (declare (special category::howcomp))
  (cond
    (*subcat-test* t)
    (t (revise-parent-edge :form category::howcomp)
        (let ((embedded? (not (top-level-wh-question?))))
          (make-wh-object (category-named 'how)
                          :statement s
                          :embedded embedded?)))))

(defun assimilate-howcomp (vg-or-np thatcomp)
  (assimilate-clausal-comp vg-or-np thatcomp :howcomp))

(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head (subcategorized-variable head prep pobj) pobj))


;;  in what+s where+S, when+S, etc.

(defun make-subordinate-clause (conj clause)
  (declare (special category::pp conj clause))
  (if *subcat-test*
    ;; some subordinate conjunctions like SO cannot apply between subject and vp
    (not (and (member (form-cat-name (right-edge-for-referent))
                      '(vp+ed vg+ed vp vg))
              (member (edge-cat-name (left-edge-for-referent))
                      '(so))))
    (let ((cl
           (or
            (when (use-methods) (compose conj clause))
           
            ;;in the case without methods, we simply want to put the
            ;; subordinate conjunction in a well-defined slot
            ;; without modifying semantics of the clause
            ;; because we may end up adding a subject and don't need
            ;; another layer to get in the way.
            (bind-variable 'subordinate-conjunction conj clause))))
      (when (and cl
                 (not (and (category-p conj)
                           (member (cat-name conj)
                                   '(who what where when why))))
                 *right-edge-into-reference*
                 (eq (edge-referent *right-edge-into-reference*)
                     clause)
                 (member (form-cat-name *right-edge-into-reference*)
                         '(s subordinate-s)))
        (revise-parent-edge :form category::subordinate-s))
      cl)))



            
(defun first-sentence-constituent (edge &optional (sentence (current-sentence)))
  (let* ((position-before (starts-at-pos sentence))
         (first-item (next-treetop/rightward position-before)))
    (eq edge first-item)))
         



;; for v in (vp vp+passive vg+passive vg)
;; as rel in '(which who whom why that)
;; form rule: (rel v)
;;   (p/s "who should move the block?")
(defun compose-wh-with-vp (wh-obj predicate)
  "Question the subject or the object of the predicate (the VP)
   depending on which one is open."
  (declare (special category::wh-question category::subject-relative-clause
                    category::s))
  (if *subcat-test*
      (and (not (first-sentence-constituent (left-edge-for-referent)))
           (not (itypep wh-obj category::wh-question))) ;; t
    (cond
      ((itypep wh-obj 'partitive-relativizer) ;; e.g. "one of which"
       ;; When the relative clause we are creating here is composed with
       ;; its np, which must be a collection of some sort, the force of the
       ;; partitive relativizer is to specify a subset, a 'portion' of the
       ;; np collection. We're not ready to write that just now (5/31/17)
       ;; so instead we drop the relativizer on the floor and let the np + relative
       ;; composition do what it would otherwise normally do.
       predicate)
      
      #+ignore
      ((itypep wh-obj category::wh-question)
       (let* ((wh (value-of 'wh wh-obj))
              (wh-name (cat-symbol wh))
              (open-var (open-core-variable predicate))
              (default (value-of 'variable wh)))
         ;;(lsp-break "open-var?")
         (let ((q (extend-wh-object wh-obj :statement predicate)))
           (when open-var
             ;; This is essentially what the compose method call below
             ;; is doing in the wh-pronoun case
             (setq q (extend-wh-object q :variable open-var)))
           (tr :wh-compose-wh-with-vp q)
           (cond
             #+ignore
             ((not (preposed-aux?))
              ;; On "Why the NH 2 terminal sequence can substitute" making this
              ;; change blows out the stack, probably within reinterp-mention-using-bindings
              (revise-left-edge-into-rule :form category::np))
             ((top-level-wh-question?)
              (revise-parent-edge :form category::question)))
           q)))
      
      ((itypep wh-obj 'wh-pronoun)
       ;; "which", "who", "where", ... See syntax/wh-word-semantic.lisp
       ;; which also has the relevant compose method.
       (cond ((top-level-wh-question?)
              (compose wh-obj predicate)) ;; k-methods in questions.lisp
             ((preposed-of?)
              ;; "Of the genes involved in apoptosis, which are regulated by stat3?"
              ;; We have to block the interpretation of this as a relative clause
              (revise-parent-edge :form category::s)
              predicate)
             ((member (form-cat-name (right-edge-for-referent))
                      '(vp+passive vg+passive))
              (revise-parent-edge :form category::object-relative-clause)
              predicate)
             (t (wh-vp-as-relative-clause wh-obj predicate))))

      ((eq (edge-rule (left-edge-for-referent)) 'who-subject-relative-clause-operation)
       ;; the referent of the previous NP's been copied to the WH, so its category
       ;; is unpredictable. Parent edge type is unchanged subj relative.
       predicate)
      
      (t (warn "New type of wh-obj in compose-wh-with-vp: ~a~
                in~%~s" (itype-of wh-obj) (current-string))
         predicate))))


(defun wh-vp-as-relative-clause (wh-obj predicate)
  ;; Provides something to feed apply-subject-relative-clause by
  ;; following model of create-thatcomp. That is fine for "which"
  ;; and presumably for "who", but inadequate for "where", "when", etc
  ;; that select for different variables. Also inadequate for wh-clauses
  ;; used as descriptive NPs.
  (declare (ignore wh-obj))
  (revise-parent-edge :form category::subject-relative-clause)
  predicate)

;; for 'after which', 'in which' and such 
(defun make-relativized-pp (prep wh)
  "The syntactic rules preposition + {who which whom} come here,
   to create a phrase with form pp-wh-pronoun.
   We need to assemble a structure that will be unpacked by
   make-pp-relative-clause which will unfold the pied-piped
   preposition."
  (declare (special category::prepositional-phrase))
  (if *subcat-test*
      (and (not (itypep prep category::prepositional-phrase))
           (not (itypep prep category::sequencer)))
      (let* ((to-left (edge-to-its-left (left-edge-for-referent)))
             (left-quant (when (and (edge-p to-left)
                                    (eq (form-cat-name to-left) 'quantifier))
                           to-left))
             (prep-word (identify-preposition (parent-edge-for-referent)))
             (wh-obj (cond ((itypep wh 'wh-pronoun) ;; which
                            (make-wh-object wh))
                           ((itypep wh 'partitive-relativizer) ;; each of which
                            wh)
                           (t wh))))
        (cond (left-quant
               (revise-parent-edge :form category::rel-pro-to-be-quantified)
               wh)
              (t (define-or-find-individual 'relativized-prepositional-phrase
                     :prep prep-word :pobj wh-obj))))))

(defun quantify-rel-pro (quant rel-pro)
  "Many of which"
  (declare (special quant rel-pro))
  (when (category-p rel-pro) 
    (setq rel-pro (find-or-make-lattice-description-for-ref-category rel-pro)))
  (cond (*subcat-test* t)
        (t
         (revise-parent-edge :category (itype-of rel-pro))
         (bind-dli-variable 'quantifier quant rel-pro))))

(defun make-pp-relative-clause (wh-pp vp &aux (left (left-edge-for-referent)))
  "Goes with rules pp-wh-pronoun + {vp's or vg's}. The result is
   essentially a regular wh-relative clause except that the
   preposition should be subcategorized by the head (the vp)
   and the variable that governs the relative clause is determined
   by that."
  (declare (special wh-pp vp))
  (if *subcat-test*
      (and wh-pp vp
           (variable-to-bind-pp-to-head (left-edge-for-referent) vp)
           (find-subcat-var (value-of 'wh (value-of 'pobj wh-pp))
                            (value-of 'prep wh-pp)
                            vp)
           (or (not (edge-p (edge-to-its-left left)))
               (not
                (member (cat-name (edge-category (edge-to-its-left left)))
                        '(number quantifier all some each both many most)))))
      (let* ((pp-edge (left-edge-for-referent))
             (var (variable-to-bind-pp-to-head pp-edge vp)))
      (declare (special preposition wh-obj var))
      ;; while debugging -- what's a reasonable default?
      (unless var
        (when *partitive-pp-warnings*
          (warn "no variable for ~a on ~a in~%~s" preposition vp (current-string)))
        (return-from make-pp-relative-clause nil))
      (bind-variable 'relative-prep (value-of 'prep wh-pp) vp))))



;;--- "after-which" as clause-connector
(defun make-relative-subordinator (sequencer wh-pronoun)
  "Kind of like a partitive-relativizer ('all of which') in that it's
 a combination of a subordinator (preposition, adverb, ..) and a
 simple wh-pronoun that is going to refer to an earlier event."
  (or *subcat-test*
      (make-scafold-individual 'relativized-prepositional-phrase
                               :prep sequencer :pobj wh-pronoun)))

(defun compose-relative-subordinator (sub clause)
  (if *subcat-test*
    (itype clause 'perdurant) ;; therefore it will have the varible
    (bind-variable 'relative-position sub clause)))

;;;----------------------
;;; Prepositional phrase
;;;----------------------

(defun make-pp (prep pobj)
  (declare (special category::prepositional-phrase))
  (if *subcat-test*
    (or (not (itypep prep category::prepositional-phrase))
        (and (use-methods) (most-specific-k-method 'compose (list prep pobj))))
    (else
      (setq prep (individual-for-ref prep))
      (or (when (use-methods)
            (compose prep pobj))
          (make-simple-individual
           category::prepositional-phrase
           `((prep ,prep) (pobj ,pobj)))))))


(defun make-ordinal-item (ordinal item)
  ;; Used with np+number and np+hyphenated-number.
  ;; Compare to (merge with) rules in core/numbers/ordinals.lisp.
  (if *subcat-test*
    (and ordinal item)
    (or (when (and (use-methods)
                   (most-specific-k-method 'compose (list ordinal item)))
          (compose ordinal item))
        (bind-variable 'ordinal ordinal item))))




(defun make-prep-comp (prep complement)
  ;; Called for the pattern 
  ;; preposition + (vg vg+ing vg+ed vg+passive vp+passive & vp)
  (declare (special category::to-comp category::pp))
  (let ((preposition (get-word-for-prep prep))) 
    ;;(push-debug `(,prep ,complement)) (break "where prep?")
    (cond
      ((subordinate-conjunction? (left-edge-for-referent))
       nil)
      (*subcat-test*
       (and prep complement))
      ((eq preposition (word-named "to"))
       (revise-parent-edge :form category::to-comp)
       complement)
      (t
       (revise-parent-edge :form category::pp)	 
       (make-simple-individual
        category::prepositional-phrase
        `((prep ,prep) (comp ,complement)))))))



(defun make-adj-comp (adj complement)
  ;;(push-debug `(,adj ,complement))  (lsp-break "make-adj-comp")
  (assimilate-subcat adj :thatcomp complement))



;;;---------
;;; be + PP
;;;---------


(defun apply-copular-pp (np copular-pp)
  (declare (special category::copular-predicate category::wh-question))
  (when (itypep copular-pp 'subordinate-clause)
    ;; this may no longer work -- get an example and test it
    (setq copular-pp (value-of 'comp copular-pp)))
  (when (itypep copular-pp 'wh-question)
    ;; e.g. "cancer patients who may not have been at risk themselves"
    (setq copular-pp (value-of 'statement copular-pp)))
  
  (cond ((null copular-pp)
      ;; happens in "This analysis identified a group of tumours with good prognosis, almost all of which were of low grade and metastasis-free up to 5 years ( xref )."
         nil)
        ((is-basic-collection? copular-pp)
         (if *subcat-test*
             (loop for cop-p in (value-of 'items copular-pp)
                   always (test-and-apply-simple-copula-pp np cop-p))
             (revise-variable
              (bind-dli-variable 'item np copular-pp))))
        (t
         (test-and-apply-simple-copula-pp np copular-pp)
         )))

(defun test-and-apply-simple-copula-pp (np copular-pp)
  (declare (special category::copular-predicate))
  (let* ((prep-indiv (value-of 'prep copular-pp))
         (prep (when prep-indiv (get-word-for-prep prep-indiv)))
         (pobj (value-of 'value copular-pp))
         (var-to-bind (when prep (subcategorized-variable np prep pobj))))
    (cond
      (*subcat-test* var-to-bind)
      (var-to-bind
       ;; Reinterpret-dominating-edges (e.g as the result of a tuck
       ;; initiated by a DA rule) does not validate rules with the subcat-test,
       ;; it just goes ahead and executes them. Hence this ostensibly redundant check
       (when *collect-subcat-info*
         (push (subcat-instance np prep var-to-bind copular-pp)
               *subcat-info*))
       (setq np (individual-for-ref np))
       (revise-parent-edge :category category::copular-predicate)
       (let* ((pp-edge (edge-right-daughter (right-edge-for-referent)))
              (new-np (bind-variable var-to-bind pobj np))
              (new-np-edge (respan-edge-for-new-referent pp-edge new-np))
              (new-parent-edge
               (respan-edge-for-new-referent
                (parent-edge-for-referent)
                (bind-variable 'item np
                               (rebind-variable 'value new-np copular-pp)))))
         (edge-referent new-parent-edge))))))



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
  (if (member (form-cat-name (left-edge-for-referent))
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
          (when variable
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



;;;------------------------------------------
;;; intensifier for an ADJECTIVE -- 95% sure
;;;------------------------------------------

(define-lambda-variable 'intensity
    nil 'top) ;; for percentage in "95% sure"

(defun interpret-intensifier+adjective (intensifier adjective)
  (if *subcat-test*
      t
      (bind-dli-variable :intensity intensifier adjective)))


;;;------------
;;; add adverb
;;;------------

(defparameter *show-adverb-attachment-to-PPs* nil)

(defun maybe-attach-adverb-to-pp (adverb pp)
  ;; Don't accept (adverb comma) edges as premodifiers for PPs
  ;; e.g. block ""Notably, of the nine candidate ORFs..."
  (cond (*subcat-test* (not (eq (edge-rule (left-edge-for-referent)) 'adverb-comma)) )
        (t (when *show-adverb-attachment-to-PPs*
             (warn "after ~s attaching adverb ~s to PP ~s~%"
                   (retrieve-surface-string (edge-just-to-left-of (left-edge-for-referent)))
                   (retrieve-surface-string adverb)
                   (retrieve-surface-string pp)))
           (bind-variable 'modifier adverb pp))))


;;;---------------
;;; comparatives
;;;---------------

(define-lambda-variable 'comparative-predication
    nil 'top)

(define-lambda-variable 'comparative
    nil 'top)

(define-lambda-variable 'compared-to
    nil 'top)


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
                  (create-predication-and-edge-by-binding-and-insert-edge
                   :subject head comparative)
                  (individual-for-ref comparative))))
           (setq head (bind-variable 'predication predicate head))
           head)))))

(defun superlative-adj-noun-compound (superlative head)
  ;;/// Superlatives don't take than complements, so could have its own treatment
  (comparative-adj-noun-compound superlative head))

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
                             when (or
                                   (itypep value 'comparative-attribution)
                                   (value-of 'comparative value))
                             return b)))
    (cond
      (*subcat-test*
       (or open-attribution
           (value-of 'comparative-predication np)))
      (open-attribution
       (let* ((attribution (binding-value open-attribution))
              (variable (binding-variable open-attribution))
              (i (binding-body open-attribution))
              (value-of-attr (value-of 'value attribution))
              (edge-value (or value-of-attr attribution)))
         (unless (eq i np)
           (error "incorrect assumption about what's the head"))
         (let ((complete-attribution
                (bind-variable 'reference-set than-np attribution)))
           (multiple-value-bind (edge-over-comparative)
               (search-tree-for-referent (left-edge-for-referent) edge-value)
             ;; Insert a new edge over the comparative edge
             ;; of the np with the completed-attribution as its value.
             (unless edge-over-comparative
               (warn "Could not locate edge over ~a under ~a in ~s~%"
                     attribution (left-edge-for-referent)
                     (current-string))
               (return-from maybe-extend-comparative-with-than-np nil))
             (respan-edge-for-new-referent edge-over-comparative
                                           complete-attribution)
             (setq i (rebind-variable variable complete-attribution i))
             i))))
      (t (rebind-variable
          'comparative-predication
          (bind-dli-variable 'compared-to than-np (value-of 'comparative-predication np))
          np)))))

;; "the mutually exclusive genes with ASPP2"

(defun maybe-extend-premod-adjective-with-pp (np pp)
  (let* ((premod-binding
          (loop for b in (indiv-binds np)
                as value = (when (binding-p b) (binding-value b))
                when
                  (and (individual-p value)
                       (multiple-value-bind (variable-to-bind pobj-referent prep-word *pobj-edge*)
                           (variable-to-bind-pp-to-head (right-edge-for-referent) value)
                         variable-to-bind))
                do (return b)))
         (premod-takes-pp (when (binding-p premod-binding)
                            (binding-value premod-binding)))
         (premod-var (when (binding-p premod-binding)
                       (binding-variable premod-binding))))
    (cond
      (*subcat-test* premod-binding)
      (premod-takes-pp
       (multiple-value-bind (variable-to-bind pobj-referent prep-word *pobj-edge*)
           (variable-to-bind-pp-to-head (right-edge-for-referent) premod-takes-pp)
         (let ((extended-premod
                (bind-variable variable-to-bind pobj-referent premod-takes-pp)))
           (multiple-value-bind (edge-over-premod)
               (search-tree-for-referent (left-edge-for-referent) premod-takes-pp)
             ;; Insert a new edge over the comparative edge
             ;; of the np with the completed-attribution as its value.
             (unless edge-over-premod
               (warn "Could not locate edge over ~a under ~a in ~s~%"
                     premod-takes-pp (left-edge-for-referent)
                     (current-string))
               (return-from maybe-extend-premod-adjective-with-pp nil))
             (respan-edge-for-new-referent edge-over-premod extended-premod)
             (rebind-variable premod-var extended-premod np))))))))



(defun allowable-post-quantifier? (n quant)
  ;; for "RSK1 and RSK2 both"
  (when (and (itypep n 'collection)
             (itypep quant '(:or both all)))
    (or *subcat-test*
        (bind-dli-variable 'quantifier quant n))))
