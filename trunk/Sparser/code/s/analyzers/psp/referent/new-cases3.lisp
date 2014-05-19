;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "new cases"
;;;    Module:  "analyzers;psp:referent:"
;;;   Version:  3.2 May 2014

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
;;      another case to ref/binding where null referents are ok.

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
           (case category-or-edge
             ;; these set *head-edge* and *arg-edge*
             (left-referent
              (indicate-head :left)
              (indicate-arg :right)
              left-referent)
             (right-referent
              (indicate-head :right)
              (indicate-arg :left)
              right-referent)
             (otherwise
              (break "Unanticipated symbol as category/edge: ~a"
                     category-or-edge)))
           ;; individuals, psi, categories
           category-or-edge)))

    (unless head
      (break "Bug in the grammar?  Decoding the head expression:~
              ~%    ~A~
              ~%for the rule ~A~
              ~%resulted in Nil." category-or-edge
             *rule-being-interpreted*))

   ; (when (typep head 'composite-referent)
    ;  (setq head (cr-head head)))

    (tr :annotating-ref/head head)
    (typecase head
      ((or psi individual)
       (if called-from-unary-rule?
         (let ((*referent* head))
           (annotate-individual head :unary-rule))
         (annotate-individual head :globals-bound)))

      ;(composite-referent
      ; (annotate-composite head))

      (referential-category
       ;;////  do we -always- convert to individuals?
       (setq head
             (if *do-not-use-psi*
               (then
                ;; We have no information about this individual,
                ;; and individuating it for find will usually require
                ;; information that would be provided by a binding
                ;; (and done as :instantiate-individual-with-binding).
                ;; So we just make an unindexed individual and punt
                ;; the identity question.
                (let ((i (make-individual-for-dm&p head))
                      ;; make-category-indexed-individual is another option
                      ;; or define something new.
                      (lp (cat-lattice-position head)))
                  (annotate-realization/base-case lp i)
                  i))
               (else ;; psi case
                ;; annotation is folded into the find-or-make
                (find-or-make-psi-for-base-category head))))
       (tr :ref/head-base-from-category head))

      (mixin-category
;       (unless *single-daughter-edge*
;        (break "Only expected to instantiate mix-ins on single edges"))
;; Why was this? I've lost the history (8/07)
       ;; We need to leave something active here that will form the
       ;; derived category by folding in this mix-in with the real head
       ;; of the segment once it's been scanned.
       ;;(break "mixin case: ~a" head)
       (setq head
             (find-or-make-psi-for-base-category head))
       (tr :ref/head-base-from-mixin head))
      (word) ;; from morphology-induced edges
      (otherwise
       (break "Unanticipated type as the head: ~a~%~a"
              (type-of head) head)))

    head ))



;;;------------------------
;;; instantiate individual
;;;------------------------

(defun ref/instantiate-individual
       (rule-field left-referent right-referent right-edge)
  (declare (ignore right-edge))

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



(defun ref/instantiate-individual-with-binding
       (rule-field left-referent right-referent right-edge)
  (declare (ignore right-edge))
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
    

    (if *do-not-use-psi*
      (then 
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

         ;(setq bindings-plist (nreverse bindings-plist))
         ;;(push-debug `(,head ,bindings-plist)) (break "f or m")

         (let ((i (find-or-make/individual head bindings-plist)))
           (annotate-realization/base-case lp i)
           (setq type-of-head head)
           (dolist (annotation annotation-list)
             (destructuring-bind (variable value edge) annotation
               (annotate-site-bound-to value variable type-of-head edge)))
           (setq return-value i))))

      ;; psi case
      (let ((psi
             (typecase head
               (psi
                (setq type-of-head
                      (base-category-of-psi head))
                head)
               (referential-category
                (setq type-of-head head)
                ;; We're adding a binding, so we presume that the result
                ;; will be partially saturated even it's a simple category
                (find-or-make-psi-for-base-category head))
               (individual
                (break "Shouldn't have gotten a full individual at ~
                  this stage"))
               (otherwise
                (break "Unanticipated type as the head: ~a~%~a"
                       (type-of head) head)))))
        (tr :instantiating-individual-with-binding psi binding-exp/s)
        (dolist (pair binding-exp/s)
          (setq variable (car pair))
          (multiple-value-setq (value edge)
            (case (cdr pair)
              (left-referent
               (unless arg-edge
                 (setq arg-edge *left-edge-into-reference*))
               (unless head-edge
                 (setq head-edge *right-edge-into-reference*))
               (values left-referent *left-edge-into-reference*))
              (right-referent
               (unless arg-edge
                 (setq arg-edge *right-edge-into-reference*))
               (unless head-edge
                 (setq head-edge *left-edge-into-reference*))
               (values right-referent *right-edge-into-reference*))
              (otherwise
               (let ((unit (cdr pair)))
                 (values (etypecase unit
                           (psi unit)
                           (individual unit)
                           (referential-category
                            (find-or-make-psi-for-base-category unit)))
                         nil)))))
          (setq psi (find-or-make-psi-with-binding
                     variable value psi))
          ;; annotate what c+v the value has been bound to.
          (annotate-site-bound-to value variable type-of-head edge))
        (setq return-value psi) ;; after the dust has settled
        ))

    (when *annotate-realizations*
      ;; annotate this combination
      (let ((lattice-point
             (if *do-not-use-psi*
               (cat-lattice-position head)
               (psi-lp return-value))))
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
  (when (symbolp ref-exp)
    (setq ref-exp (case ref-exp
                    (left-referent left-referent)
                    (right-referent right-referent)
                    (otherwise
                     (break "Unexpected value for symbol ref-exp: ~a"
                            ref-exp)))))
  (unless *referent*
    (break "Subtype called without a head specified -- check rule:~
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
        (psi? (typep *referent* 'psi))
        value  head-edge  arg-edge  edge-being-bound  extended-psi)

    (unless value-symbol
      (break "Threading bug -- no value for the value symbol ~A~
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
                     (break "Unanticipated value symbol: ~a~%~a"
                            (type-of value-symbol) value-symbol)))))
    (tr :ref/binding variable value body)

    (setq edge-being-bound (case value-symbol
                             (right-referent *right-edge-into-reference*)
                             (left-referent *left-edge-into-reference*)))

    (unless value
      (unless (or *do-domain-modeling-and-population*
                  *do-strong-domain-modeling* ;; actually 'weaker'
                  *ignore-capitalization*)
        (break "Bug:The referent passed in via ~A~%to be bound to ~A is Nil,~
                ~%but you aren't allowed to bind a variable to nil."
               value-symbol variable)))

    (when (typep variable 'anonymous-variable)
      (let ((v (dereference-variable variable body)))
        (setq variable v)))

    (when value
      (if psi?
        (setq extended-psi (find-or-make-psi-with-binding variable value body))
        (bind-variable variable value body)))

    ;; //// annotate the value re. what c+v it's been bound to
    (annotate-site-bound-to value variable (i-type-of body) edge-being-bound)

    ;; annotate this combination
    (when psi?
      ;; composite case has does the annotation within the
      ;; code that does the opportunistic binding.
      ;; --- what about individuals ???  3/16/05 ----
      (annotate-realization-pair
       extended-psi (psi-lp extended-psi) *rule-being-interpreted*
       head-edge arg-edge))

    (tr :ref/binding-result variable (or extended-psi body))
    (or extended-psi
        body)))



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
