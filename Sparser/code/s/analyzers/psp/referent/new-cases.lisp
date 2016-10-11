;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "new cases"
;;;    Module:  "analyzers;psp:referent:"
;;;   Version:  October 2016

;; broken out from cases 8/24/93 v2.3.  (3/10/94) fixed typo. Added error
;; msg to Ref/head 6/14.  (7/15) patched in mixin-category  (7/19) rearranged
;; break in Ref/binding ...and again 9/12.
;; 0.1 (4/19/95) defanged Ref/subtype until the proper subtyping regime is done
;; 1.0 (2/26/98) Started rewriting everything to work with lattice points.
;;      Continued sporatically through 7/25.
;;     (3/25/00) Resumed through 6/18.
;; 1.1 (6/18) Added Opportunistic-binding-to-composite-head. Incorporated annotation
;;      into it 6/21. Occasional tweaks through 7/9.
;; 1.2 (12/26) Added optional arg. to ref/head so the annotation call could know
;;      it was coming in from a unary-rule.
;; 2.0 (2/9/05) Removed notion of composite from ref/subtype. More on 2/16.
;; 2.1 (3/16) Changed ref/binding to work on individuals as well as psi
;;     (2/16/07) Added guard on annotating realizations in individuals-with-bindings
;;     (7/6) Added case for mixin-category in Ref/head to handle the edge over
;;      "could". Needs a hook that we don't have to later propagate the modality over
;;      the actual head of the segment. 8/2 Added some traces to help track PSI
;;      creation.
;; 3.0 (7/22/09) fanout from conditionalized psi changes. Continuing through 8/17.
;;     (9/20) Modified ref/subtype to ignore calling the subtype routine unless
;;      *use-subtypes* is set.
;; 3.1 (3/23/11) Refactored dolist over values in ref/instantiate-individual-
;;      with-binding in order to be able to pass an edge to annotate-site-bound-to.
;;     (5/10/11) Fixed gratuitous zero'ing of globals for the edges, setting both
;;      in ref/head.  11/25/12 Quiet the compiler on unused composites.
;; 3.2 (3/22/13) Fan out from *do-not-use-psi*  4/1/13 ref/binding now dereferences
;;      anonymous variables. Modified how ref/head makes individuals -- using
;;      unindexed until a better idea comes up, wrapped in make-individual-for-dm&p
;;      (4/4/13).  5/9/14 Changed the call that ref/subtype makes. 5/19/14 added
;;      another case to ref/binding where null referents are ok. 6/4/14 added
;;      one-edge-instantiate-individual-with-binding. 1/10/15 Revised
;;      ref/instantiate-individual-with-binding to look and see whether the
;;      head it's building on is already an individual of the type it's
;;      supposed to use. 1/12/15 fixed but in that.
;;     (4/20/15) in ref/instantiate-individual-with-binding, the reused case got
;;      its first instance of the head being a word.
;;     (1/2/16) Shifting to unwrapped unindexed individual using individual-for-ref

(in-package :sparser)

;;;------
;;; head
;;;------

#| Head statements in a referent will always come first. They just
 serve to elevate the referent of one of the daughters to be the
 referent of the phrase were interpreting, or they could be newly
 introducing a referent where more structure is needed in the
 referent expression than just laying down a category or an
 individual as the direct interpretation -- initial motivation
 from "companies" 3/25/00.
|#
(defun ref/head (category-or-edge left-referent right-referent
                 &optional called-from-unary-rule?)
  (let ((head
         (if (symbolp category-or-edge)
           (determine-head-referent category-or-edge)          
           category-or-edge))) ;; individuals, psi, categories

    (unless head
      (break "Bug in the grammar?  Decoding the head expression:~
              ~%    ~A~
              ~%for the rule ~A~
              ~%resulted in Nil." category-or-edge
             *rule-being-interpreted*))

   ; (when (typep head 'composite-referent)
    ;  (setq head (cr-head head)))

    (tr :annotating-ref/head head)
    (etypecase head
      (individual
       (if called-from-unary-rule?
         (let ((*referent* head))
           (annotate-individual head :unary-rule))
         (annotate-individual head :globals-bound)))

      ;;(composite-referent
      ;; (annotate-composite head))

      (referential-category
       (setq head
             ;; We have no information about this individual,
             ;; and individuating it for find will usually require
             ;; information that would be provided by a binding
             ;; (and done as :instantiate-individual-with-binding).
             ;; So we just make an unindexed individual and punt
             ;; the identity question.
             (let ((i (individual-for-ref head))
                   ;; make-category-indexed-individual is another option
                   ;; or define something new.
                   (lp (cat-lattice-position head)))
               (annotate-realization/base-case lp i)
               i))
       (tr :ref/head-base-from-category head))

      (word) ;; from morphology-induced edges
      (mixin-category
;       (unless *single-daughter-edge*
;        (break "Only expected to instantiate mix-ins on single edges"))
;; Why was this? I've lost the history (8/07)
       ;; We need to leave something active here that will form the
       ;; derived category by folding in this mix-in with the real head
       ;; of the segment once it's been scanned.
       ;;(break "mixin case: ~a" head)       
       (tr :ref/head-base-from-mixin head)))

    head ))



;;;------------------------
;;; instantiate individual
;;;------------------------

(defun ref/instantiate-individual (rule-field 
                                   left-referent right-referent)
  (let* ((head
          (case (second rule-field)
            (left-referent left-referent)
            (right-referent right-referent)
            (otherwise (second rule-field)))))

    (if (individual-p head)
      ;; Individual-hood (vs. denoting a category or a partially-
      ;; saturated category) is not always dictated by an explicit
      ;; reference action, but can happen implicitly through composition
      ;; with certain kinds of specifiers.
      ;;   This implies that there are cases when the referent action
      ;; may call for instantiating an individual for its head-line's
      ;; category but there'll already be one (which we just return).
      (then
        (tr :ref-returning-individual head)
        head)
      (else
        (unless (referential-category-p head)
          (error "Expected the referent for the head:~%     ~A~
                  ~%  to be a category." head))
        (let ((i (make/individual head nil)))
          (tr :instantiated-an-individual i)
          i)))))

(defun one-edge-instantiate-individual-with-binding (rule-field)
  ;; Comes from the C3 definition of people as a collection
  ;; whose type field is bound to the category pperson. All the
  ;; arguments are dereferenced. See decode-rspec-type-spec
  (let ((category (car rule-field))
        (binding-pairs (cdr rule-field)))
    ;;(push-debug `(,category ,binding-pairs))
    (find-or-make/individual category binding-pairs)))

(defun ref/instantiate-individual-with-binding
       (rule-field left-referent right-referent right-edge)
  (declare (ignore right-edge))
  ;;(push-debug `(,rule-field ,left-referent ,right-referent ,right-edge))
  ;;(break "~a + ~a" left-referent right-referent)

  (let* (  head-edge  arg-edge  type-of-head  edge
           variable  value  
         (head (case (second rule-field)
                 (left-referent
                  (setq head-edge *left-edge-into-reference*
                        arg-edge *right-edge-into-reference*)
                  left-referent)
                 (right-referent
                  (setq head-edge *right-edge-into-reference*
                        arg-edge *left-edge-into-reference*)
                  right-referent)
                 (otherwise
                  ;; Neither edge is a head line, we're presumably
                  ;; creating a new type of individual here
                  (second rule-field))))
         (binding-exp/s (cddr rule-field))
         return-value  )

    ;;/// problem is in the refererent creator
    (when (consp head)
      (if (category-p (car head))
        (setq head (car head))
        (error "head is a cons. New case: ~a" head)))

    (when (null *do-not-use-psi*)
      (error "Expected the *do-not-use-psi* flag to be up"))

    (let ((lp (cat-lattice-position head))
          bindings-plist  annotation-list  )
      (dolist (pair binding-exp/s)
        ;; e.g. pair = (#<variable reporter> . right-referent)
        (setq variable (car pair))
        (multiple-value-setq (value edge)
          (case (cdr pair)
            (left-referent
             (unless arg-edge (setq arg-edge *left-edge-into-reference*))
             (unless head-edge (setq head-edge *right-edge-into-reference*))
             (values left-referent *left-edge-into-reference*))
            (right-referent
             (unless arg-edge (setq arg-edge *right-edge-into-reference*))
             (unless head-edge (setq head-edge *left-edge-into-reference*))
             (values right-referent *right-edge-into-reference*))
            (otherwise
             (push-debug `(,pair))
             (error "Can't decipher edges and referents. Why?"))))

        ;; Create a binding instruction to pass to find
        (push `(,variable ,value) bindings-plist)

        ;; Create a list to use for annotating edges
        (push `(,value ,variable ,edge)
              annotation-list))

      ;;(setq bindings-plist (nreverse bindings-plist))
      ;;(push-debug `(,head ,bindings-plist)) (break "f or m")
      ;;(push-debug `(,(edge-referent head-edge) ,bindings-plist))
      (let* ((head-referent (edge-referent head-edge))
             (reused? (unless (word-p head-referent) ;; e.g. "%"
                        (itypep head-referent head)))
             ;; the head category that we're supposed to 
             ;; instantiate is the same as the head we've got
             ;; so we use the head individual rather than 
             ;; make a new individual.
             (i (if reused?
                  (edge-referent head-edge)
                  (find-or-make/individual head bindings-plist))))
        (when reused?
          (multiple-value-bind (bindings individual)
              (apply-bindings i bindings-plist)
            (declare (ignore bindings))
            (setq i individual)))
        (annotate-realization/base-case lp i)
        (setq type-of-head head)
        (dolist (annotation annotation-list)
          (destructuring-bind (variable value edge) annotation
            (annotate-site-bound-to value variable type-of-head edge)))
        (setq return-value i)))

    (when *annotate-realizations*
      ;; annotate this combination
      (let ((lattice-point (cat-lattice-position head)))
        (cond 
         ((and head-edge arg-edge) ;; canonical case
          (annotate-realization-pair
           return-value lattice-point *rule-being-interpreted*
           head-edge arg-edge))
         
         (*single-daughter-edge* ;; called from unary subtype
          (annotate-realization-pair
           return-value lattice-point *rule-being-interpreted*
           *parent-edge-getting-reference* :unary-rule)))))

    return-value ))



;;;-----------------------------------------------------------
;;; specializing the type of the referent individual/category
;;;-----------------------------------------------------------

(defun ref/subtype (ref-exp left-referent right-referent)
  (declare (special *referent* *use-subtypes*))
  (when (symbolp ref-exp)
    (setq ref-exp (case ref-exp
                    (left-referent left-referent)
                    (right-referent right-referent)
                    (otherwise
                     (error "Unexpected value for symbol ref-exp: ~a"
                            ref-exp)))))
  (unless *referent*
    (error "Subtype called without a head specified -- check rule:~
            ~%  ~A" *rule-being-interpreted*))
  (if *use-subtypes*
    (specialize-object *referent* ref-exp)
    *referent*))





;;;--------------------------------------------------------------
;;; binding another variable in the referent individual/category
;;;--------------------------------------------------------------

(defun ref/binding (binding-exp
                    left-referent right-referent right-edge
                    &optional value-datum )
  (declare (ignore right-edge))

  (let ((variable (if value-datum  ;;///nasty patch over inconsistency
                    binding-exp    ;; in packaging by rdata vs. others
                    (car binding-exp)))
        (value-symbol (if value-datum
                        value-datum
                        (cdr binding-exp)))
        (body *referent*)
        value  head-edge  arg-edge  edge-being-bound )

    (unless value-symbol
      (error "Threading bug -- no value for the value symbol ~A~
              ~%in the binding expression: ~A" value-symbol binding-exp))

    (setq value (if value-datum
                  (symbol-value value-symbol)
                  (case value-symbol
                    (right-referent
                     (setq head-edge *left-edge-into-reference*
                           arg-edge *right-edge-into-reference*)
                     right-referent)
                    (left-referent
                     (setq head-edge *right-edge-into-reference*
                           arg-edge *left-edge-into-reference*)
                     left-referent)
                    (otherwise
                     (error "Unanticipated value symbol: ~a~%~a"
                            (type-of value-symbol) value-symbol)))))
    (tr :ref/binding variable value body)

    ;; This had no utility other than to allow the code that
    ;; sets these to be kept around for use by a t.b.d. annotation
    ;; routine now that the psi-based routine is no longer called
    (cons head-edge arg-edge)

    (setq edge-being-bound (case value-symbol
                             (right-referent *right-edge-into-reference*)
                             (left-referent *left-edge-into-reference*)))

    (unless value
      (unless (or *do-domain-modeling-and-population*
                  *do-strong-domain-modeling* ;; actually 'weaker'
                  *ignore-capitalization*)
        (error "Bug:The referent passed in via ~A~%to be bound to ~A is Nil,~
                ~%but you aren't allowed to bind a variable to nil."
               value-symbol variable)))

    (when (typep variable 'anonymous-variable)
      (let ((v (dereference-variable variable body)))
        (setq variable v)))

    (when value
      (setq body (bind-dli-variable variable value body)))

    ;; //// annotate the value re. what c+v it's been bound to
    (annotate-site-bound-to value variable (i-type-of body) edge-being-bound)

    (tr :ref/binding-result variable body)
    
    body))



(defun opportunistic-binding-to-composite-head (variable value c
                                                head-edge arg-edge)
  (declare (ignore value  head-edge arg-edge))
  (break "opportunistic-binding-to-composite-head:~
        ~%This function hasn't been run in a decade or so. Review it.")
  (tr :looking-for-opportunistic-binding variable c)
  #+ignore
  (let ((head (cr-head c))
        (others (cr-others c))
        (doing-head? t) ;; index for the loop
        extended-psi  variable-bound?  new-others )
    ;; Are any of these psi and are they open in the variable we're
    ;; about to bind: first-come, first-served. Otherwise bind it to
    ;; the head since we have to dispose of it at the point when it
    ;; adjoins.
    (dolist (body (cons head others))
      (unless variable-bound?
        (typecase body
          (psi
           (if (is-open-in body variable)
             (then (tr :bind-to-psi-open-in body variable)
                   (setq variable-bound? t)
                   (setq extended-psi (extend-psi-by-binding
                                       variable value body)))
             (else
               (tr :not-binding-to-because-not-open-in body variable))))
          (otherwise
           (break "Unanticipated type of body: ~a~%~a"
                  (type-of body) body)))
        (if doing-head?
          (then (when extended-psi
                  (setf (cr-head c) extended-psi)))
          (push (or extended-psi
                    body)
                new-others))
        ;; cleanup loop variable
        (setq doing-head? nil)))

    (when (null variable-bound?)
      (tr :nothing-open-defaulting-to-head variable head)
      (setq extended-psi (extend-psi-by-binding variable value head))
      (setf (cr-head c) extended-psi))

    (annotate-realization-pair (psi-lattice-point extended-psi)
                               *rule-being-interpreted*
                               head-edge arg-edge)

    (setf (cr-others c) (nreverse new-others))
    ;(break "look at composite 'c'")
    c ))
