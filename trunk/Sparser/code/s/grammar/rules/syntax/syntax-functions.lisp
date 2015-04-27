;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald -- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  April 2015

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
  ;; goes with (common-noun common-noun) syntactic rule 
  (when nil
    (push-debug `(,qualifier ,head)) 
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))
  (if (category-p head)
    (setq head (make-individual-for-dm&p head))
    (setq head (maybe-copy-individual head)))
  (or (call-compose qualifier head);; DAVID -- why is this called?!
      ;; Rusty - this is the hook that allows for a custom interpretation
      ;; of the meaning of this pair. If you look up at verb-noun-compound
      ;; you see a note that says it's for 'type' cases, e.g. "the Ras protein".
      ;; In general it's a hook for any knowledge we have about particular
      ;; cases / co-composition

      (interpret-premod-to-np qualifier head) 
      ;; subcat tese is here. If there's a :premod subcategorization
      ;; that's compapatible this gets it. 

      ;; This case is to benefit marker-categories 
      (if (itypep head 'process) ;; poor man's standing for verb?
        (then
          (let ((var (object-variable head)))
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
      (setq head (maybe-copy-individual head))
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
    (setq head (maybe-copy-individual head))
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
  (if (category-p head) ;;//// need to reclaim bindings !!!!!!
    (setq head (make-individual-for-dm&p head))
    (setq head (maybe-copy-individual head)))
  (if (eq quantifier (word-named "no")) ;; Jan#4 "no increase"
      ;; in Jan#4 it's a literal
    (let ((no (find-individual 'quantifier :word "no")))
      (bind-variable 'negation no head)) ;; on top
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
  (if (category-p head) ;;//// need to reclaim bindings !!!!!!
    ;; or in this case make a collection
    (setq head (make-individual-for-dm&p head))
    (setq head (maybe-copy-individual head)))
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
        (setq head (maybe-copy-individual head))
        (link-in-verb+ing qualifier head)))))

(defun link-in-verb+ing (qualifier head)
  (let ((subject (subject-variable qualifier)))
    (if
        (category-p qualifier)
      (setq qualifier (make-individual-for-dm&p qualifier))
      (setq qualifier (maybe-copy-individual qualifier)))
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
        (setq head (maybe-copy-individual head))
        (link-in-verb qualifier head)))))

(defun link-in-verb (qualifier head)
  (let ((object (object-variable qualifier)))
    (if (category-p qualifier)
      (setq qualifier (make-individual-for-dm&p qualifier))
      (setq qualifier (maybe-copy-individual qualifier)))
    (when object ;; really should check for passivizing
      (bind-variable object head qualifier))
    (bind-variable 'modifier qualifier head)
    head))

;;;------------------
;;; Verb + Auxiliary
;;;------------------

(defun find-or-make-aspect-vector (vg)
  (unless (itypep vg 'event)
    (error "tense/aspect only applies to individuals that ~
            inherit from event."))
  (or (value-of 'aspect vg)
      (let ((i (make/individual 
                (category-named 'tense/aspect-vector) nil)))
        (setq vg (maybe-copy-individual vg))
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
      


;;;-----------------
;;; VG + Complement
;;;-----------------

(defun vg-plus-adjective (vg adj)
  (setq vg (maybe-copy-individual vg))
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
  ;; (push-debug `(,adverb ,vg)) (break "look at adv, vg")
  ;; "direct binding" has a specitif meaning
  ;;/// so there should be a compose method to deal with that
  
  ;; default
  (setq vg (maybe-copy-individual vg))
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
  (bind-variable 'adverb adverb vg)
  vg)



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
              ;; or if we are making a last ditch effore
              (and *force-modifiers* 
                   'modifier))))
    
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (when *collect-subcat-info*
        (push (subcat-instance vg prep-word variable-to-bind pp)
              *subcat-info*))
      (setq vg (maybe-copy-individual vg))
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
         (t
          (if *collect-subcat-info*
              (push (subcat-instance np prep-word variable-to-bind 
                                     pp)
                    *subcat-info*))
          (setq np (maybe-copy-individual np))
          ;;(bind-variable variable-to-bind pp np)
          (bind-variable variable-to-bind pobj-referent np)
          np)))))

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
     (t
      (if *collect-subcat-info*
          (push (subcat-instance np prep-word variable-to-bind 
                                 pp)
                *subcat-info*))
      (setq pobj-referent (maybe-copy-individual pobj-referent))
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

(defun is-passive? (edge)
  (let ((cat-string (symbol-name (cat-name (edge-category edge)))))
    (and (> (length cat-string) 3)
         (equalp "+ED" (subseq cat-string (- (length cat-string) 3))))))

(defun assimilate-object (vg obj)
  (assimilate-subcat vg :object obj))

(defun assimilate-thatcomp (vg-or-np thatcomp)
  (assimilate-subcat vg-or-np :thatcomp thatcomp))

(defun assimilate-whethercomp (vg-or-np whethercomp)
  (assimilate-subcat vg-or-np :whethercomp whethercomp))


(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head 
                     (subcategorized-variable head prep pobj)
                     pobj))


(defun assimilate-subcat (head subcat-label item)
  (let ((variable-to-bind
         ;; test if there is a known interpretation of the NP+VP combination
         (subcategorized-variable head subcat-label item))
        (item-edge (edge-for-referent item)))
    (cond
     (*subcat-test* 
      variable-to-bind)
     (variable-to-bind
      (collect-subcat-statistics head subcat-label variable-to-bind item)
      (setq head (maybe-copy-individual head))
      (when (and (is-anaphoric? item)
                 ;; this fails when we have BE -- needs to be fixed...
                 (var-value-restriction variable-to-bind))
       (setq item 
             (create-anaphoric-edge-and-referent 
              item-edge
              variable-to-bind)))   
      (bind-variable variable-to-bind item head)
      head))))

(defun is-anaphoric? (item)
  (itypep item category::pronoun))
  

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
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
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
      (setq np (maybe-copy-individual np))
      (bind-variable variable-to-bind copular-pp np)
      (bind-variable 'result np copular-pp)
      copular-pp))))

(defun get-word-for-prep (prep-val)
  (resolve/make ;; needs to be a word for the subcat frame!
   (string-downcase
    (symbol-name 
     (cat-symbol prep-val)))))

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

