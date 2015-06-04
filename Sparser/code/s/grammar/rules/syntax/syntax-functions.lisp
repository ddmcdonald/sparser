;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald -- all rights reserved
;;;
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  June 2015

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
;;  used this metghod in all places that previously used
;;  maybe-copy-individualand/or make-individual-for-dm&p
;; 6/2/2015 Key check in assimilate-subject-to-vp-ed that blocks using
;;  vp+ed (or vg+ed) as a main verb when there is a missing object -- such
;;  ases are much more likely to be reduced relatives this helps handle the
;;  Chen/Sorger sentences like "BRAF bound to Ras transphosphorylates itself
;;  at Thr598 and Ser601."  in the sense that the reduced relative is not
;;  bsorbed as a main verb, though we still need to handle the rule for the
;;  reduced relative.
;; 6/4/15 More modification to assimilate-subject-to-vp-ed for reduced relative


(in-package :sparser)
(defvar CATEGORY::PREPOSITIONAL-PHRASE)
(defvar CATEGORY::PRONOUN/INANIMATE)
(defvar CATEGORY::THERE-EXISTS)
(defvar CATEGORY::COPULAR-PP)



; (left-edge-for-referent)
; (right-edge-for-referent)
; (parent-edge-for-referent)

(defparameter *force-modifiers* nil
  "Set to T when you want to accept all PP modifiers
  to NPs and VPs")

(defparameter *subcat-test* nil
  "Set to T when we are executing the referent function
   as a predicate, not as part of interpretation of an NP or VP")

;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (qualifier head)
  (declare (special qualifier head))
  ;; goes with (common-noun common-noun) syntactic rule
  (when nil
    (push-debug `(,qualifier ,head))
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))
  (setq head (individual-for-ref head))
  (or (and (null qualifier)
           head)

      (call-compose qualifier head) ;; see note with verb-noun-compound

      (interpret-premod-to-np qualifier head)
      ;; subcat tese is here. If there's a :premod subcategorization
      ;; that's compapatible this gets it.

      ;; This case is to benefit marker-categories
      (if (itypep head 'process) ;; poor man's standing for verb?
        (then
          (let ((var (object-variable head)))
            (declare (special var))
           ;; (lsp-break "noun-noun")
            (if var ;; really should check for passivizing
              (bind-variable var qualifier head)
              ;; otherwise it's not obvious what to bind
              (else
                (bind-variable 'modifier qualifier head)))
            head))
        (else
          ;; what's the right relationship? Systemics would say
          ;; they are qualifiers, so perhaps subtype?
          (bind-variable 'modifier qualifier head) ;; safe
          head))))

(defun interpret-premod-to-np (premod head)
  (let ((variable-to-bind
          (subcategorized-variable head :premod premod)))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (when *collect-subcat-info*
        (push (subcat-instance head variable-to-bind premod premod)
              *subcat-info*))
      (setq head (individual-for-ref head))
      (bind-variable variable-to-bind premod head)
      head))))


(defun adj-noun-compound (qualifier head)
  ;; (break "adj-noun-compound")
  ;; goes with (adjective n-bar-type) syntactic rule
  (when nil
    (push-debug `(,qualifier ,head))
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))
  (cond
   ((call-compose qualifier head));; This case is to benefit marker-categories
   ((category-p head)
    (setq head (make-individual-for-dm&p head))
    (or (call-compose qualifier head)
        (interpret-premod-to-np qualifier head)
        (else
          (when (itypep head 'endurant)
            (bind-variable 'modifier qualifier head))
          head)))
   ((interpret-premod-to-np qualifier head))
   (t ;; Dec#2 has "low nM" which requires coercing 'low'
    ;; into a number. Right now just falls through
    (setq head (individual-for-ref head))
    (when (itypep head 'endurant)
      (bind-variable 'modifier qualifier head))
    head)))

(defun quantifier-noun-compound (quantifier head)
  ;; Not all quantifiers are equivalent. We want to idenify
  ;; cases of negation ("no increase") and eventually probably
  ;; float them up to the main verb, //// which will require
  ;; making a note somewhere on the sentence structure reminding
  ;; us to do that after the analysis dust has settled.
  ;; Before doing quantifiers seriously find copy of Kurt vanLehn's
  ;; MS thesis and think about generalized quantifiers.
  ;;(push-debug `(,quantifier ,head)) (break "fix 'additional cystene'")
  (setq head (individual-for-ref head))
  (if (eq quantifier (word-named "no")) ;; Jan#4 "no increase"
      ;; in Jan#4 it's a literal
    (let ((no (find-individual 'quantifier :word "no")))
      (bind-variable 'negation no head)
      head);; on top
    (cond
     ((itypep head 'endurant)
      (bind-variable 'quantifier quantifier head)
      head)
     (t ;;//////// drop it on the floor
      head))))

(defun number-noun-compound (number head)
  ;;/// for the moment there is a number variable on
  ;; endurant we can bind. Going forward we should automatically
  ;; make a composite individual using a collection.
  ;; See notes on forming plurals in morphology1
  (setq head (individual-for-ref head))
  (when (itypep head 'endurant) ;; J34: "Histone 2B"
    (bind-variable 'number number head))
  head)


(defun verb+ing-noun-compound (qualifier head)
  ;;(break "verb-noun-compound")
  ;; goes with (verb+ed n-bar-type) syntactic rule
  (when nil
    (push-debug `(,qualifier ,head))
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))

  (or (call-compose qualifier head)
      ;; This case is to benefit marker-categories
      (cond
       ((category-p head)
        (setq head (make-individual-for-dm&p head))
        (or
         (call-compose qualifier head)
         (link-in-verb+ing qualifier head)))
       (t
        (setq head (individual-for-ref head))
        (link-in-verb+ing qualifier head)))))

(defun link-in-verb+ing (qualifier head)
  (let ((subject (subject-variable qualifier)))
    (setq qualifier (individual-for-ref qualifier))
    (if subject ;; really should check for passivizing
        (bind-variable subject head qualifier))
    (bind-variable 'modifier qualifier head)
    head))

(defun verb-noun-compound (qualifier head)
  ;;(break "verb-noun-compound")
  ;; goes with (verb+ed n-bar-type) syntactic rule
  (when nil
    (push-debug `(,qualifier ,head))
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))

  (or (call-compose qualifier head)
      ;; This case is to benefit marker-categories
      (cond
       ((category-p head)
        (setq head (make-individual-for-dm&p head))
        (or
         (call-compose qualifier head)
         (link-in-verb qualifier head)))
       (t
        (setq head (individual-for-ref head))
        (link-in-verb qualifier head)))))

(defun link-in-verb (qualifier head)
  (let ((object (object-variable qualifier)))
    (setq qualifier (individual-for-ref qualifier))
    (when object ;; really should check for passivizing
      (bind-variable object head qualifier))
    (bind-variable 'modifier qualifier head)
    head))

;;;------------------
;;; Verb + Auxiliary
;;;------------------

(defun find-or-make-aspect-vector (vg)
  (unless (or
           (itypep vg 'event)
           (itypep vg 'have))
    (error "~s is not an event, tense/aspect only applies to individuals that ~
            inherit from event." vg))
  (or (value-of 'aspect vg)
      (let ((i (make/individual
                (category-named 'tense/aspect-vector) nil)))
        (setq vg (individual-for-ref vg))
        (bind-variable 'aspect i vg)
        i)))

(defun absorb-auxiliary (aux vg)
  (when (category-p vg)
    (setq vg (make-individual-for-dm&p vg)))

  ;; otherwise the variable is unavailable
  (let ((aux-type (etypecase aux
                    (individual (itype-of aux))
                    (category aux)))
        (i (find-or-make-aspect-vector vg)))

    ;; Check for negation
    (when (value-of 'negation aux)
      ;;/// RJB has negation on event too -- sort that out
      (bind-variable 'negation (value-of 'negation aux) i))

    ;; Propagate the auxiliary
    (case (cat-symbol aux-type)
      ((category::be-able-to  ;; see modals.lisp
        category::future
        category::conditional)
       (bind-variable 'modal aux i))
      (category::anonymous-agentive-action) ;; do
      (otherwise
       (push-debug `(,aux ,vg))
       (error "Assimilate the auxiliary category ~a~%  ~a"
              aux-type aux)))
    ;;(push-debug `(,i)) (break "look at i")
    vg))



(defmethod add-tense/aspect ((aux category) (vg category))
  (add-tense/aspect aux (make-individual-for-dm&p vg)))

(defmethod add-tense/aspect ((aux individual) (vg category))
  (add-tense/aspect aux (make-individual-for-dm&p vg)))

(defmethod add-tense/aspect ((aux category) (vg individual))
  (push-debug `(,aux ,vg)) ;;(break "is this right?")
  (let ((i (find-or-make-aspect-vector vg)))
    (case (cat-symbol aux)
      (category::be  ;; be + ing
       (bind-variable 'progressive aux i))
      (category::have  ;; have + en
       (bind-variable 'perfect aux i))
      (category::past
       (bind-variable 'past t i))
      (otherwise
       (push-debug `(,aux ,vg))
       (error "Extend add-tense/aspect to handle ~a" aux)))
    ;;(push-debug `(,i)) (break "look at i")
    vg))

(defmethod add-tense/aspect ((aux individual) (vg individual))
  (push-debug `(,aux ,vg)) ;;(break "is this right?")
  (let ((i (find-or-make-aspect-vector vg)))
    (case (cat-symbol (car (indiv-type aux)))
      (category::be  ;; be + ing
       (bind-variable 'progressive aux i))
      (category::have  ;; have + en
       (bind-variable 'perfect aux i))
      (category::past
       (bind-variable 'past t i))
      (otherwise
       (push-debug `(,aux ,vg))
       (error "Extend add-tense/aspect to handle ~a" aux)))
    ;;(push-debug `(,i)) (break "look at i")
    vg))



;;;-----------------
;;; VG + Complement
;;;-----------------

(defun vg-plus-adjective (vg adj)
  (setq vg (individual-for-ref vg))
  (let ((var (object-variable vg)))
    (if var
      (bind-variable var adj vg)
      (bind-variable 'participant adj vg))
    vg))


;;;-------------
;;; VG + Adverb
;;;-------------

(defparameter *adverb+vg* nil)

(defun interpret-adverb+verb (adverb vg)
  (declare (special adverb vg))
  ;; (push-debug `(,adverb ,vg)) (break "look at adv, vg")
  ;; "direct binding" has a specitif meaning
  ;;/// so there should be a compose method to deal with that

  ;; default
  (setq vg (individual-for-ref vg))
  #|need to diagnose among
  (time)
  (location)
  (purpose)
  (circumstance)
  (manner)
  (aspect . tense/aspect)
  BUT UNTIL THEN, JUST BIND THE ADVERB
  |#
  #+ignore
  (push (list (edge-string (left-edge-for-referent))
              (edge-string (right-edge-for-referent)))
        *adverb+vg*)
  (cond
   ((vg-has-adverb-variable? vg)
    (bind-variable 'adverb adverb vg)
    vg)
   (t (break "can't find adverb slot for ~s on verb ~s"
                  (edge-string (left-edge-for-referent))
                  (edge-string (right-edge-for-referent))))
   ;; don't apply rule to verbs whose interpretation does not have an adverb variable
   ))

(defun vg-has-adverb-variable? (vg)
  (cond
   ((individual-p vg)
     (loop for category in (indiv-type vg)
       thereis
       (find-variable-for-category 'adverb category)))
    ((referential-category-p vg)
     (find-variable-for-category 'adverb vg))
    (t
     (lsp-break "what type of thing is the vg ~s" vg))))



(defun interpret-vp+in-vi-context (vv context)
  (cond
   (*subcat-test* (itypep vv 'bio-process))
   (t
    (setq vv (individual-for-ref vv))
    (bind-variable 'context context vv)
    vv)))

;;;---------
;;; VG + PP
;;;---------

(defun adjoin-pp-to-vg (vg pp)
  ;; The VG is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier.
  (let* ((pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge))
         (pobj-edge (edge-right-daughter pp-edge))
         (pobj-referent (edge-referent pobj-edge))
         (variable-to-bind
          ;; test if there is a known interpretation of the VG/PP combination
          (or (subcategorized-variable vg prep-word pobj-referent)
              (and (itypep pp 'upon-condition)
                   'circumstance)
              (when (or
                     (eq prep-word (word-named "upon"))
                     (eq prep-word (word-named "following")))
                (when
                    (and (itypep vg 'bio-process)
                         (itypep pobj-referent 'bio-process))
                  'following))

              ;; or if we are making a last ditch effore
              (and *force-modifiers*
                   'modifier))))

    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (when *collect-subcat-info*
        (push (subcat-instance vg prep-word variable-to-bind pp)
              *subcat-info*))
      (setq vg (individual-for-ref vg))
      (bind-variable variable-to-bind pobj-referent vg)
      vg))))


(defun adjoin-tocomp-to-vg (vg tocomp)
  (assimilate-subcat vg :to-comp tocomp))

#+ignore
(defun adjoin-tocomp-to-vg (vg pp)
  ;; The VG is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier.
  (let* ((pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge))
         (pobj-edge (edge-right-daughter pp-edge))
         (pobj-referent (edge-referent pobj-edge))
         (variable-to-bind
          (loop for category in (indiv-type vg)
            do
            (let
                ((var
                  (find-variable-for-category 'in-order-to category)))
              (when var (return var))))))

    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (when *collect-subcat-info*
        (push (subcat-instance vg prep-word variable-to-bind pp)
              *subcat-info*))
      (setq vg (individual-for-ref vg))
      (bind-variable variable-to-bind pobj-referent vg)
      vg))))

;;;---------
;;; NP + PP
;;;---------

(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp) ;; DAVID -- why is this called?!
      ;; Rusty - this is the hook that allows for a custom interpretation
      ;; of the meaning of this pair. If you look up at verb-noun-compound
      ;; you see a note that says it's for 'type' cases, e.g. "the Ras protein".
      ;; In general it's a hook for any knowledge we have about particular
      ;; cases / co-composition
      (let* ((pp-edge (right-edge-for-referent))
             (prep-edge (edge-left-daughter pp-edge))
             (prep-word (edge-left-daughter prep-edge))
             (pobj-edge (edge-right-daughter pp-edge))
             (pobj-referent (edge-referent pobj-edge))
             (variable-to-bind
              ;; test if there is a known interpretation of the NP/PP combination
              (or
               (subcategorized-variable
                np prep-word
                pobj-referent)
               ;; or if we are making a last ditch effort
               ;; if not, then return NIL, failing the rule
               (and *force-modifiers* 'modifier))))
        (cond
         (*subcat-test* variable-to-bind)
         (variable-to-bind
          (when *collect-subcat-info*
            (push (subcat-instance np prep-word variable-to-bind
                                   pp)
                  *subcat-info*))
          (setq np (individual-for-ref np))
          ;;(bind-variable variable-to-bind pp np)
          (when variable-to-bind ;; otherwise return nil and fail the rule
            (bind-variable variable-to-bind pobj-referent np)
            np))))))


(defun interpret-to-comp-adjunct-to-np (np to-comp)
  (declare (special np to-comp))
  (let* ((pp-edge (right-edge-for-referent))
         (comp-edge (edge-right-daughter pp-edge))
         (variable-to-bind
          ;; test if there is a known interpretation of the NP/PP combination
          (subcategorized-variable
           np :to-comp
           (edge-referent comp-edge))))
    (declare (special pp-edge comp-edge variable-to-bind))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (if *collect-subcat-info*
          (push (subcat-instance np 'to-comp variable-to-bind
                                 to-comp)
                *subcat-info*))
      (setq np (individual-for-ref np))
      ;;(bind-variable variable-to-bind pp np)
      (bind-variable variable-to-bind to-comp np)
      np))))

(defun interpret-pp-as-head-of-np (np pp)
  (push-debug `(,np ,pp))
  (let* ((pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge))
         (pobj-edge (edge-right-daughter pp-edge))
         (pobj-referent (edge-referent pobj-edge))
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
      ;;(bind-variable variable-to-bind pp np)
      (bind-variable variable-to-bind np pobj-referent)
      pobj-referent))))


;;;-----------------
;;; NP + VP
;;;-----------------

(defun assimilate-subject (subj vp)
  (if (is-passive? (right-edge-for-referent))
   (assimilate-subcat vp :object subj)
   (assimilate-subcat vp :subject subj)))


(defparameter *vp-ed-sentences* nil)
(defun assimilate-subject-to-vp-ed (subj vp)
  (push-debug `(,subj ,vp)) ;;  (setq subj (car *) vp (cadr *))
  (let* ((vp-edge (right-edge-for-referent))
         (vp-form (edge-form vp-edge)))
    ;;(break "assimilate-subject-to-vp+ed")
    (unless *subcat-test* 
      (pushnew  (list subj vp (sentence-string *sentence-in-core*)) *vp-ed-sentences*
                :test #'equalp))
    ;; We have to determine whether this is an s (which the rule
    ;; that's being invoked assumes) or actually a reduced relative,
    ;; where the criteria is whether the verb is in oblique or tensed
    ;; form. If it turned out to be a RR then we do fairly serious
    ;; surgery on the edge.
    (when (edge-p (edge-right-daughter vp-edge))
      ;; The other possibility is :single-term, which indicates
      ;; that we've just got a vg (one one form or another)
      ;; and not a full vp, in which case we're returning nil
      ;; so that the rule doesn't go through.
      (cond
       (*subcat-test* t) ;; ?????????????
       ((or ;; vp has a bound object
         (null (object-variable vp))
         (value-of (object-variable vp) vp))
        ;; This situation corresponds to composing them as
        ;; subject and predicate, which is what the rule that
        ;; drives this is set up to do. 
        (if (is-passive? (right-edge-for-referent))
            (then 
              (break "can't have a passive vp+ed")
              (assimilate-subcat vp :object subj))
            (assimilate-subcat vp :subject subj)))       
       (t
        ;; This should correspond to the reduced relative
        ;; situation. But we'll check that the vp has
        ;; the form we expect it to.
        (cond
         ((eq vp-form category::vp+ed)
          (convert-clause-to-reduced-relative))
         (t
          (push-debug `(,vp-form ,vp-edge))
          (error "Unexpected vp form in np+vp: ~a" vp-form))))))))


(defun assimilate-object (vg obj)
  (assimilate-subcat vg :object obj))

(defun assimilate-thatcomp (vg-or-np thatcomp)
  (assimilate-subcat vg-or-np :thatcomp thatcomp))

(defun assimilate-whethercomp (vg-or-np whethercomp)
  (assimilate-subcat vg-or-np :whethercomp whethercomp))

(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head (subcategorized-variable head prep pobj) pobj))


(defun form-label-corresponding-to-subcat (subcat-label)
  ;; Used with pronouns to encode relationship when it's known
  (case subcat-label
    (:subject category::subject)
    (:object category::direct-object)
    (otherwise nil)))

(defun assimilate-subcat (head subcat-label item)
  (let ((item-edge (edge-for-referent item))
        (variable-to-bind
         ;; test if there is a known interpretation of the NP+VP combination
         (subcategorized-variable head subcat-label item)))
    (cond
     (*subcat-test* variable-to-bind)
     (variable-to-bind
      (collect-subcat-statistics head subcat-label variable-to-bind item)
      (setq head (individual-for-ref head))
      (when (is-anaphoric? item)
        #+ignore(when (and (var-value-restriction variable-to-bind)
                   (not (consp (var-value-restriction variable-to-bind))))
          ;; this fails when we have BE -- needs to be fixed...            
          (break "what's the condition with this break about 'be' ??"))
        (setq item 
              (condition-anaphor-edge
               item-edge subcat-label variable-to-bind)))

      (bind-variable variable-to-bind item head)
      head))))


(defun individual-for-ref (head)
  (typecase head
    (individual
     (maybe-copy-individual head))
    (category
     ;;//// need to reclaim bindings !!!!!!
     (make-individual-for-dm&p head))
    (cons
     ;; presumably it's a disjoint value restriction
     (unless (eq (car head) :or)
       (error "The 'head' is a cons but it's not a value restriction:~%~a"
              head))
     ;; Arbitrily pick the first one
     (make-individual-for-dm&p (second head)))
    (otherwise
     (push-debug `(,head))
     (error "Unexpected type of 'head' in individual for ref: ~a~
           ~%  ~a" (type-of head) head))))
 


(defun condition-anaphor-edge (pn-edge subcat-label variable)
  ;; We now know the restriction that any candidate referent for this
  ;; pronoun has to satisfy, and we know the variable it has to bind. This
  ;; edge was recorded in the layout as a pronoun and will be retrieved in
  ;; the pass that does the search after all the parsing has finished, so
  ;; this is the edge that we work with. We need to record this
  ;; information, and we need to arrange a 'dummy' individual to be created
  ;; and bound to this variable during the parsing phase so that we can
  ;; track through its bound-in relation an replace it in that binding with
  ;; the correct referent once we've identified it. Kind of Rube Goldberg
  ;; -esque, but it's the price we pay for delaying rather than trying to
  ;; identify the referent at moment the pronoun is encountered.
  (declare (special *ignore-personal-pronouns*))
  (let* ((original-label (edge-category pn-edge))
         (relation-label (form-label-corresponding-to-subcat subcat-label))
         (restriction (var-value-restriction variable))
         (new-ref (individual-for-ref restriction)))
    (unless relation-label
      (setq relation-label category::np))
    (unless restriction ;; no restriction on the variable being bound
      (push-debug `(,pn-edge ,subcat-label))
      (break "New case in pronoun adjustment: no restriction on ~a"
             variable)
      (setq restriction category::unknown-grammatical-function))
    (when (consp restriction)
      (break "First case of alternative restrictions on pronoun"))

    (unless (and *ignore-personal-pronouns*
               (memq (cat-symbol original-label)
                     '(category::pronoun/first/plural 
                       category::pronoun/first/singular
                       category::pronoun/second)))
      ;; If we're going to ignore the pronoun we don't want or
      ;; need to rework its edge
      ;;
      ;; Encode the type-restriction in the category label
      ;; and the grammatical relationship in the form
      (setf (edge-category pn-edge) restriction)
      (setf (edge-form pn-edge) relation-label)
      (setf (edge-referent pn-edge) new-ref)
      (setf (edge-rule pn-edge) 'condition-anaphor-edge))
       
    new-ref))

#+ignore ;; earlier version -- doesn't link into chart
(defun create-anaphoric-edge-and-referent (old-edge variable)
  (let* ((vr (var-value-restriction variable))
         (new-item (make-individual-for-dm&p vr))
         (new-edge
          (make-completed-unary-edge
           (edge-starts-at old-edge)
           (edge-ends-at old-edge)
           'create-anaphoric-edge-and-referent
           old-edge
           vr
           category::np
           new-item)))
    (setf (edge-used-in old-edge) (list new-edge))
    new-item))




(defun subcategorized-variable (head label item)
  (declare (special item))
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (when (itypep item 'to-comp)
    (setq item (value-of 'clause item)))
  (let ((subcat-patterns (known-subcategorization? head)))
    (when subcat-patterns
      (let ( variable )
        (dolist (entry subcat-patterns)
          (let ((scr (subcat-restriction entry)))
            (when (eq label (subcat-label entry))
              (when (satisfies-subcat-restriction? item scr)
                (setq variable (subcat-variable entry))
                (return)))))
        ;;(break "testing subcats")
        (or
         variable
         (when (eq label (word-named "in"))
           (cond
            ((and (itypep head 'physical)
                  (itypep item 'location))
             (find-variable-in-category/named 'location category::physical))
            ((and (itypep head 'biological)
                  (itypep item 'bio-context))
             (find-variable-in-category/named
              'context (category-named 'biological))))))))))

(defun satisfies-subcat-restriction? (item restriction)
  (let ((override-category (override-label (itype-of item))))
    (flet ((subcat-itypep (item category)
             ;; For protein-families and such that are re-written
             ;; as a more general catgory (protein). There's no
             ;; provision for inheritance, but if we need it because
             ;; of the reach of the override we should do something
             ;; different with it.
             (or (itypep item category)
                 (eq category override-category))))
      (cond
       ((itypep item category::pronoun/inanimate)
        t)
       ((consp restriction)
        (cond
         ((eq (car restriction) :or)
          (loop for type in (cdr restriction)
            thereis (subcat-itypep item type)))
         (t (error "subcat-restriction on is a cons but it ~
                    does not start with :or~%  ~a"
                   restriction))))
       ((category-p restriction)
        (subcat-itypep item restriction))
       (t (error "Unexpected type of subcat restriction: ~a"
                 restriction))))))


;;;----------------------
;;; Prepositional phrase
;;;----------------------

(define-category prepositional-phrase
  :specializes abstract
  :binds ((prep)
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
(define-category to-comp
  :specializes abstract
  :binds ((prep)
          (clause))
  :documentation "Provides a scafolding to hold
   a generic to-comp as identified by
   the pp rules in grammar/rules/syntactic-rules.
   Primary consumer is the subcategorization checking
   code below. Note that if we make these with an
   unindexed individual (in make-pp) then the index
   information doesn't come into play"
  :index (:temporary :sequential-keys prep clause))
(mark-as-form-category category::to-comp)

(define-category pp-relative-clause
  :specializes abstract
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
(mark-as-form-category category::prepositional-phrase)


#+ignore(defparameter *pp-prep-pobj* (make-hash-table :size 1000))
#+ignore(defun link-pp-to-prep-and-object (pp prep pobj)
  (setf (gethash pp *pp-prep-pobj*) (list prep pobj)))
#+ignore(defun get-prep-pobj (pp)
  (gethash pp *pp-prep-obj*))

(defun make-pp (prep pobj)
  (let* ((binding-instructions
          `((prep ,prep) (pobj ,pobj)))
         (pp (make-simple-individual
              category::prepositional-phrase
              binding-instructions)))
    ;; place for trace or further adornment, storing
    ;; (p "activity of ras.")
    ;; (break "Look at who is calling make-pp")
    pp))

(defun make-pp-relative-clause (pp clause)
  (let* ((binding-instructions
          `((pp ,pp) (clause ,clause)))
         (pp-rel-clause
          (make-simple-individual
              category::pp-relative-clause
              binding-instructions)))
    ;; place for trace or further adornment, storing
    ;; (p "activity of ras.")
    ;; (break "Look at who is calling make-pp")
    pp-rel-clause))


(defun make-to-comp (prep clause)
  (declare (special prep clause))
  (cond
   (*subcat-test*
    ;; when we have clausal "to-pp" like
    ;;  to enhance craf activation
    ;; this is NOT a copular PP
    (eq prep category::to))
   (t
    (let* ((binding-instructions
            `((prep ,prep) (clause ,clause)))
           (to-comp (make-simple-individual
                category::to-comp
                binding-instructions)))
      ;; place for trace or further adornment, storing
      ;; (p "activity of ras.")
      ;; (break "Look at who is calling make-pp")
      to-comp))))


; Called from whack-a-rule-cycle => copula-rule?
;       => test-subcat-rule => ref/function
; Called from whack-a-rule-cycle => best-treetop-rule
;       => rule-for-edge-pair => test-subcat-rule => ref/function
; Called from whack-a-rule-cycle => execute-one-one-rule
;       => form-rule-completion => referent-from-rule
;            => dispatch-on-rule-fields => ref/function

;;;---------
;;; be + PP
;;;---------

(defun make-copular-pp (be-ref pp)
  (when (null (value-of 'predication be-ref))
    ;; If this is not already a predicate copula ("is a drug")

    (let* ((cpp (make-unindexed-individual category::copular-pp))
           (prep (value-of 'prep pp))
           (pobj (value-of 'pobj pp)))
      (cond
       (*subcat-test*
        ;; when we have clausal "to-pp" like
        ;;  to enhance craf activation
        ;; this is NOT a copular PP
        (and prep pobj))
       (t
        (bind-variable 'copula be-ref cpp)
        (bind-variable 'prep prep cpp)
        (bind-variable 'pobj pobj cpp)
        cpp)))))

(defun apply-copular-pp (np copular-pp)
  (let* ((prep (get-word-for-prep (value-of 'prep copular-pp)))
         (pobj (value-of 'pobj copular-pp))
         (variable-to-bind (subcategorized-variable np prep pobj)))
    (declare (special prep pobj))
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (when *collect-subcat-info*
        (push (subcat-instance np prep variable-to-bind copular-pp)
              *subcat-info*))
      (setq np (individual-for-ref np))
      (bind-variable variable-to-bind pobj np)
      (bind-variable 'result np copular-pp)
      copular-pp))))

(defun get-word-for-prep (prep-val)
  (resolve/make ;; needs to be a word for the subcat frame!
   (string-downcase
    (symbol-name
     (cat-symbol prep-val)))))


;;;-----------------------
;;; type-queries on edges
;;;-----------------------

(defun is-passive? (edge)
  (let ((cat-string (symbol-name (cat-name (edge-category edge)))))
    (and (> (length cat-string) 3)
         (equalp "+ED" (subseq cat-string (- (length cat-string) 3))))))

(defun is-anaphoric? (item)
  (itypep item category::pronoun))
 


;;;-----------------
;;; There + BE
;;;-----------------

(defun make-there-exists ()
  (let ((exists (make-unindexed-individual category::there-exists)))
    exists))

(defun make-exist-claim (right-edge)
  (let ((exists (make-unindexed-individual category::there-exists)))
    (bind-variable 'object (edge-referent right-edge) exists)
    exists))

