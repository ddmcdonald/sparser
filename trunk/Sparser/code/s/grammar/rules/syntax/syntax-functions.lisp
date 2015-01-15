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

  (or (call-compose qualifier head)
      ;; This case is to benefit marker-categories

      (else
       (when (category-p head)
         (setq head (make-individual-for-dm&p head)))
       (call-compose qualifier head))

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
          (progn (bind-variable 'modifier qualifier head) 
            head)))
        (t
         (bind-variable 'modifier qualifier head) ;; safe
         head)))


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
      (when (category-p head)
        (setq head (make-individual-for-dm&p head))
        (or
         (call-compose qualifier head)
         (link-in-verb qualifier head)))
      (link-in-verb qualifier head)))

(defun link-in-verb (qualifier head)
  (declare (special qualifier head))
  ;;(break "link-in-verb")
  (let ((object (object-variable qualifier)))
    (when
        (category-p qualifier)
      (setq qualifier (make-individual-for-dm&p qualifier)))
    (if object ;; really should check for passivizing
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

(defun absorb-auxiliary (aux vg)
  (when (category-p vg)
    (setq vg (make-individual-for-dm&p vg)))
  (push-debug `(,aux ,vg))
  (when (itypep vg 'event)
    ;; otherwise the variable is unavailable
    (let ((aux-type (itype-of aux))
          (i (value-of 'aspect vg)))
      (unless i
        (setq i (make/individual (category-named 'tense/aspect) nil))
        (bind-variable 'aspect i vg))

      ;; Check for negation
      (when (value-of 'negation aux)  (break "aux 2")
        ;;/// RJB has negation on event too -- sort that out
        (bind-variable 'negation (value-of 'negation aux) i))

      ;; Propagate the auxiliary
      (case (cat-name aux-type)
        ((be-able-to  ;; see modals.lisp
          future
          conditional)
         (bind-variable 'modal aux i))
        (otherwise
         (error "Assimilate the auxiliary category ~a~%  ~a"
                aux-type aux)))
      ;;(push-debug `(,i)) (break "look at i")
      vg)))
      


;;;-----------------
;;; VG + Complement
;;;-----------------

(defun vg-plus-adjective (vg adj)
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
  (bind-variable 'manner adverb vg)
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
  (let* ((subcat-patterns (known-subcategorization? vg))
         (pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge))
         (pobj-edge (edge-right-daughter pp-edge))
         (pobj-referent (edge-referent pobj-edge))
         (variable-to-bind
          ;; test if there is a known interpretation of the VG/PP combination
          (or (and subcat-patterns
                   (subcategorized-pp-variable subcat-patterns vg pp))
              (and (eq prep-word (word-named "in"))
                   (cond
                    ((and (itypep vg 'physical)
                          (itypep pobj-referent 'location))
                     'location)
                    ((and (itypep vg 'biological)
                          (itypep pobj-referent 'bio-context))
                     'bio-context)))
              (and (itypep pp 'upon-condition)
                   'circumstance)
              ;; or if we are making a last ditch effore
              (and *force-modifiers* 
                   'modifier))))
    (when nil
      (unless variable-to-bind
        (push-debug `(,pobj-referent ,vg ,pp ,prep-word))
        (error "Why is there no variable to combine ~a and ~a ?" vg pp)))
    (when nil
      (break "var = ~a~
            ~%vp = ~a" variable-to-bind vg))
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (bind-variable variable-to-bind pp vg)
      vg))))

(defun subcategorized-pp-variable (subcat-patterns head pp)
  ;; Look up the preposition on the pp and see if it is
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (declare (special subcat-patterns))
  (when  subcat-patterns
    (let* ((pp-edge (right-edge-for-referent))
           (prep-edge (edge-left-daughter pp-edge))
           (prep-word (edge-left-daughter prep-edge))
           (pobj-edge (edge-right-daughter pp-edge))
           variable)
      (declare (special prep-word prep-edge pobj-edge variable))
      (unless prep-word
        (push-debug `(,pp-edge ,prep-edge))
        (error "Unexpected configuration of PP edges"))
      
      (dolist (entry subcat-patterns)
        (when 
            (and
             (eq prep-word (subcat-label entry))
             ;;(print (list (edge-referent pobj-edge) (subcat-restriction entry)))
             (itypep (edge-referent pobj-edge) (subcat-restriction entry)))
          (setq variable (subcat-variable entry))
          (return)))
      ;;(break "testing subcats")
      variable)))


;;;---------
;;; NP + PP
;;;---------
    
(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp) ;; DAVID -- why is this called?!
      (let* ((subcat-patterns (known-subcategorization? np))
             (pp-edge (right-edge-for-referent))
             (prep-edge (edge-left-daughter pp-edge))
             (prep-word (edge-left-daughter prep-edge))
             (variable-to-bind
              ;; test if there is a known interpretation of the NP/PP combination
              (or
               (and
                subcat-patterns
                (subcategorized-pp-variable subcat-patterns np pp))
               (and
                (eq prep-word (word-named "in"))
                (cond
                 ((and (itypep np 'physical)
                       (itypep pp 'location))
                  'location)
                 ((and (itypep np 'biological)
                       (itypep pp 'bio-context))
                  'bio-context)))
               ;; or if we are making a last ditch effore
               (and *force-modifiers* 'modifier)
               ;; if not, then return NIL
               )))
        (cond
         (*subcat-test* variable-to-bind)
         (t
          (bind-variable variable-to-bind pp np)
          np)))))

(defun assimilate-subject (subj vp)
  (declare (special np vp))
  ;; The vp is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier. 
  (let* ((subcat-patterns (known-subcategorization? vp))
          (variable-to-bind
          ;; test if there is a known interpretation of the NP+VP combination
           (subcategorized-subj-variable subcat-patterns subj)))
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (bind-variable variable-to-bind subj vp)
      vp))))


(defun subcategorized-subj-variable (subcat-patterns subj)
  ;; Look up the preposition on the pp and see if it is
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (declare (special subcat-patterns))
  (when  subcat-patterns
    (let* (variable)
      (declare (special prep-word prep-edge pobj-edge variable))      
      (dolist (entry subcat-patterns)
        (when 
            (and
             (eq :subject (subcat-label entry))
             (itypep subj (subcat-restriction entry)))
          (setq variable (subcat-variable entry))
          (return)))
      ;;(break "testing subcats")
      variable)))

