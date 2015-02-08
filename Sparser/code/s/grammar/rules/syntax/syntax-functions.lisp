;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald -- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  January 2015

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.
;; RJB 12/20/2014 tentative fix to allow interpret-pp-adjunct-to-np 
;; to handle bio-context. 
;; 1/2/2015 put hooks in adjoin-pp-to-vg and interpret-pp-adjunct-to-np to allow for subcategorization frames
;; 1/5/2015 refactor code that David wrote for adjoin-pp-to-vg and interpret-pp-adjunct-to-np to allow them to be used as predicates as well as actions
;; 1/14/2015 support for negation and (eventually) other tense/aspect features
;; methods for assimilating object using sub-categorization frame, and for handling verb_ing premodifiers
(in-package :sparser)


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
    (setq head (copy-individual head)))
  (or (call-compose qualifier head)
      ;; This case is to benefit marker-categories 
      (if (itypep head 'process) ;; poor man's standing for verb?
          (then
            
            (let ((variable (object-variable head)))
              (if variable ;; really should check for passivizing
                  (bind-variable variable qualifier head)
                  ;; otherwise it's not obvious what to bind
                  (else 
                    (bind-variable 'modifier qualifier head)))
              head))
          (else
            ;; what's the right relationship? Systemics would say 
            ;; they are qualifiers, so perhaps subtype? 
            (bind-variable 'modifier qualifier head) ;; safe
            head))))

(defun adj-noun-compound (qualifier head)
  (declare (special qualifier head))
  ;; (break "adj-noun-compound")
  ;; goes with (adjective n-bar-type) syntactic rule 
  (when nil
    (push-debug `(,qualifier ,head)) 
    (break "check: qualifier = ~a~
   ~%       head = ~a" qualifier head))
  
  (cond ((call-compose qualifier head));; This case is to benefit marker-categories     
        ((category-p head)
         (setq head (make-individual-for-dm&p head))
         (or
          (call-compose qualifier head)
          (bind-variable 'modifier qualifier head))
         head)
        (t
         (setq head (copy-individual head))
         (bind-variable 'modifier qualifier head) ;; safe
         head)))

(defun quantifier-noun-compound (quantifier head)
  ;; Not all quantifiers are equivalent. We want to idenify
  ;; cases of negation ("no increase") and eventually probably
  ;; float them up to the main verb, //// which will require
  ;; making a note somewhere on the sentence structure reminding
  ;; us to do that after the analysis dust has settled.
  ;; Before doing quantifiers seriously find copy of Kurt vanLehn's
  ;; MS thesis and think about generalized quantifiers.
  (if (category-p head) ;;//// need to reclaim bindings !!!!!!
    (setq head (make-individual-for-dm&p head))
    (setq head (copy-individual head)))
  (if (eq quantifier (word-named "no")) ;; Jan#4 "no increase"
      ;; in Jan#4 it's a literal
    (let ((no (find-individual 'quantifier :word "no")))
      (bind-variable 'negation no head)) ;; on top
    (when (itypep head 'endurant)
      (bind-variable 'quantifier quantifier head))) ;; on endurant
  head)

(defun number-noun-compound (number head)
  ;;/// for the moment there is a number variable on
  ;; endurant we can bind. Going forward we should automatically
  ;; make a composite individual using a collection.
  ;; See notes on forming plurals in morphology1
  (if (category-p head) ;;//// need to reclaim bindings !!!!!!
    ;; or in this case make a collection
    (setq head (make-individual-for-dm&p head))
    (setq head (copy-individual head)))
  (when (itypep head 'endurant) ;; J34: "Histone 2B"
    (bind-variable 'number number head))
  head)


(defun verb+ing-noun-compound (qualifier head)
  (declare (special qualifier head))
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
        (setq head (copy-individual head))
        (link-in-verb+ing qualifier head)))))

(defun link-in-verb+ing (qualifier head)
  ;;head is already copied
  (declare (special qualifier head))
  ;;(break "link-in-verb")
  (let ((subject (subject-variable qualifier)))
    (if
        (category-p qualifier)
      (setq qualifier (make-individual-for-dm&p qualifier))
      (setq qualifier (copy-individual qualifier)))
    (if subject ;; really should check for passivizing
        (bind-variable subject head qualifier))
    (bind-variable 'modifier qualifier head)
    head))

(defun verb-noun-compound (qualifier head)
  (declare (special qualifier head))
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
        (setq head (copy-individual head))
        (link-in-verb qualifier head)))))

(defun link-in-verb (qualifier head)
  ;;head is already copied
  (declare (special qualifier head))
  ;;(break "link-in-verb")
  (let ((object (object-variable qualifier)))
    (if (category-p qualifier)
      (setq qualifier (make-individual-for-dm&p qualifier))
      (setq qualifier (copy-individual qualifier)))
    (when object ;; really should check for passivizing
      (bind-variable object head qualifier))
    (bind-variable 'modifier qualifier head)
    head))

;;;----------------
;;; Prepositional phrase
;;;;_______________

(defun make-pp (prep pobj)
  (let ((pp (make-category-indexed-individual 
             category::prepositional-phrase)))
    (bind-variable 'prep prep pp)
    (bind-variable 'pobj pobj pp)
    pp))


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
        (setq vg (copy-individual vg))
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
  (setq vg (copy-individual vg))
  (let ((var (object-variable vg)))
    (if var
      (bind-variable var adj vg)
      (bind-variable 'participant adj vg))
    vg))


;;;-------------
;;; VG + Adverb
;;;-------------

(defun interpret-adverb+verb (adverb vg)
  ;; (push-debug `(,adverb ,vg)) (break "look at adv, vg")
  ;; "direct binding" has a specitif meaning
  ;;/// so there should be a compose method to deal with that
  
  ;; default
  (setq vg (copy-individual vg))
  #|need to diagnose among (time)
          (location)
          (purpose)
          (circumstance)
          (manner)
          (aspect . tense/aspect)
 BUT UNTIL THEN, JUST BIND THE ADVERB
|#
  (bind-variable 'adverb adverb vg)
  vg)



;;;---------
;;; VG + PP
;;;---------

(defun adjoin-pp-to-vg (vg pp)
  (declare (special vg pp))
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
      (setq vg (copy-individual vg))
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
             (variable-to-bind
              ;; test if there is a known interpretation of the NP/PP combination
              (or
               (subcategorized-variable 
                np prep-word 
                (edge-referent (edge-right-daughter pp-edge)))
               ;; or if we are making a last ditch effore
               (and *force-modifiers* 'modifier)
               ;; if not, then return NIL
               )))
        (cond
         (*subcat-test* variable-to-bind)
         (t
          (setq np (copy-individual np))
          (bind-variable variable-to-bind pp np)
          np)))))


;;;-----------------
;;; NP + VP
;;;-----------------

(defun assimilate-subcat (head subcat-label item)
  (let* ((variable-to-bind
          ;; test if there is a known interpretation of the NP+VP combination
           (subcategorized-variable head subcat-label item)))
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (setq head (copy-individual head))
      (bind-variable variable-to-bind item head)
      head))))

(defun subcategorized-variable (head label item)
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (let
      ((subcat-patterns (known-subcategorization? head)))
    (declare (special subcat-patterns))
    (when  subcat-patterns
      (let* (variable)
        (declare (special prep-word prep-edge pobj-edge variable))      
        (dolist (entry subcat-patterns)
          (when 
              (and
               (eq label (subcat-label entry))
               (itypep item (subcat-restriction entry)))
            (setq variable (subcat-variable entry))
            (return)))
        ;;(break "testing subcats")
        (or
         variable
         (and (eq label (word-named "in"))
              (cond
               ((and (itypep head 'physical)
                     (itypep item 'location))
                'location)
               ((and (itypep head 'biological)
                     (itypep item 'bio-context))
                'context)))
         )))))


(defun assimilate-subject (subj vp)
  (assimilate-subcat vp :subject subj))

(defun assimilate-object (vg obj)
  (assimilate-subcat vg :object obj))

(defun assimilate-thatcomp (vg thatcomp)
  (assimilate-subcat vg category::thatcomp thatcomp))

(defun assimilate-pp-subcat (head prep pobj)
  (assimilate-subcat head 
                     (subcategorized-variable head prep pobj)
                     pobj))


;;;-----------------
;;; There + BE
;;;-----------------


(defun make-there-exists (there-edge be-edge)
  (declare (ignore there-edge be-edge))
  (let ((exists (make-unindexed-individual category::there-exists)))
    exists))

(defun make-exist-claim (left-edge right-edge)
  (declare (ignore left-edge))
  (let ((exists (make-unindexed-individual category::there-exists)))
    (bind-variable 'object (edge-referent right-edge) exists)
    exists))

(defun make-copular-pp (be-ref pp-ref)
  (declare (special be-ref pp-ref))
  (let*
      ((cpp (make-unindexed-individual category::copular-pp))
       prep-ref pobj-ref)
    (declare (special cpp prep-ref pobj-ref))
    (dolist (bb (indiv-binds pp-ref))
      (cond
       ((eq (var-name (binding-variable bb)) 'pobj)
        (setq pobj-ref (binding-value bb)))
       ((eq (var-name (binding-variable bb)) 'prep)
        (setq prep-ref (binding-value bb)))))
    (bind-variable 'prep prep-ref cpp)
    (bind-variable 'pobj pobj-ref cpp)
    (bind-variable 'copula be-ref cpp)
    cpp))

(defun apply-copular-pp (np copular-pp)
  (declare (special np copular-pp))
  (let
      ((prep (value-of 'prep copular-pp))
       (pobj (value-of 'pobj copular-pp))
       new-np)
    (declare (special prep pobj new-np))
    (cond
     (*subcat-test* 
      (subcategorized-variable np prep pobj))
     (t
      (setq new-np (assimilate-pp-subcat np prep pobj))
      (break "copular-pp")
      (bind-variable 'result new-np copular-pp)
      copular-pp))))

