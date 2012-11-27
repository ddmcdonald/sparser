;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005,2011-2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "annotation"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.0 November 2012

;; initiated 3/7/98. Started fleshing it out 3/22. Continued through
;; 7/5. 5/11/99 put an initializer into Rule-component-to-use because
;; the parameters it uses isn't initialized at load time.
;; 0.1 (6/4) started trying to tie the rnodes of successive unary
;;      nodes together like binary nodes are in Annotate-individual.
;;     (6/8) did the case for numbers, modulo the fact that they
;;      aren't yet assigning their components to roles.
;;     (6/22) Wrote populate-rules-that-are-fsas to flesh out the other
;;      case of a table that has to be instantiated late. 
;;     (8/99) Elaborating the cases a little at a time while marching
;;      through the lower parts of the ISI example from numbers and money
;;      on up.
;;     (2/21/00) Tweaked Head-and-ather-edges-of-binary-rule to look for
;;      the keyword :head as well as :head-edge in the descriptors field
;;      of rule schemas. That there are two terms is certainly a historical
;;      artificat, but this is expedient.
;;     (2/26) gave Sort-out-head-vs-arg-rnodes-in-binary-rule an interpretation
;;      of what to do when the referents are categories or words.
;;     (3/26) Modified Rnode-for-edge to not complain if there is no rnode so 
;;      that initial cases could be accomodated. Modifed Annotate-individual
;;      to take a new case for where its head and arg up pointers come from
;;      using the indicate-head/indicate-arg facility that ref/head employs.
;;      Also (!) made annotate-individual consistent with annotate-realization/
;;      base-case by assigning the rnode's backpointer to a lattice point
;;      rather than the individual whose realization is being annotated.
;;      Elaborated Add-rnode-to-its-individual to handle more types.
;;     (12/26) Added an empty case for composite-referents to Annotate-site-bound-to
;;      since I didn't know what the right treatment would be.
;;     (2/10/05) Quieted an unguarded format statement. (2/17) ditto a reference to
;;      composites in Annotate-site-bound-to
;;     (10/31/06) Added *annotate-realizations* switch to control whether this
;;      stuff runs.
;; 0.2 (3/19/11) Updated & revitalized the code. Continued through 5/16/11. 
;;      Picked up again 11/10/12. 
;; 1.0 (11/12/12) Something is rotten in terms of what information is put onto
;;      an rnode that makes it possible to find concrete values and decompose
;;      them. Bumped the version for the freedomw to make potentially drastic
;;      changes. 

(in-package :sparser)


;;;------------------
;;; annotation cases
;;;------------------

(defparameter *rule-being-interpreted* nil)
;; This is actually in analysers;psp:referent:driver1, but if we
;; don't define it here the next two routines won't make it special.



;; Called from referent-from-unary-rule when the referent is a category
;; or find-or-make-psi-for-base-category, which does the base case
;; in ref/instantiate-individual-with-binding
;;
(defun annotate-realization/base-case (lattice-point category)
  (when *annotate-realizations*
    (unless lattice-point
      (break "No value provided for the lattice-point"))
    (tr :rdata-annotating-base-case lattice-point *rule-being-interpreted*)
    ;; Annotating the base case of ~a~
    ;;   via ~a" 
    (let* ((existing-annotations (lp-realizations lattice-point))
           (rc (rule-component-to-use *rule-being-interpreted*))
           (rnode (find rc existing-annotations
                        :key #'rn-cfr)))
      (when rnode
        (tr :reusing-rdata-entry rnode)) ;; "  Reusing ~a"
      (unless rnode
        (setq rnode (get-realization-node))
        (setf (rn-lattice-point rnode) lattice-point)
        (setf (rn-head rnode) :base-case)
        (setf (rn-downward-links rnode) nil)
        (setf (rn-cfr rnode) rc)
        (add-new-rnode-to-lattice-point rnode lattice-point)
        (add-rnode-to-its-individual rnode category)
        (tr :new-rdata-entry rnode)) ;; "  New entry: ~A"
      (cache-rnode-on-parent-edge rnode)
      rnode )))


;; Called from referent-from-unary-rule, and indirectly from 
;; span-digits-number. Called from referent-from-rule when
;; the rule points directly to its referent. Called from ref/function
;; when the result is an individual.
;;
(defun annotate-individual (i source &optional already-cached?)
  (declare (special *annotate-realizations* *head-edge* *arg-edge*
                    *referent* *parent-edge-getting-reference*))
  (when *annotate-realizations*
    (unless *rule-being-interpreted*
      (break "Unexpected situation: *rule-being-interpreted* is null"))
    (unless (typep i 'individual)
      (break "got here with something other than an individual:~% ~A" i))
    (tr :rdata-annotating-individual i *rule-being-interpreted*)
    ;; Annotating the individual ~a~
    ;;   via ~A
    (let* ((lattice-point (corresponding-lattice-point i))
           ;;(existing-annotations (indiv-rnodes i)) Not general to stick them here
           (existing-annotations (lp-realizations lattice-point))
           (rc (rule-component-to-use *rule-being-interpreted*))
           (rnode (find rc
                        existing-annotations :key #'rn-cfr)))
      (when rnode
        (tr :reusing-rdata-entry rnode)) ;; "  Reusing ~a"
      (unless rnode
        (setq rnode (get-realization-node))
        (setf (rn-cfr rnode) rc)
        (setf (rn-lattice-point rnode) lattice-point)
        (add-new-rnode-to-lattice-point rnode lattice-point)
        (add-rnode-to-its-individual rnode i) ;; shortcut??
        (tr :new-rdata-entry rnode)) ;; "  New entry: ~A"
       
        ;; link the entry to its parents
        (multiple-value-bind 
            (head-rnode arg-rnode)
            (case source
              (:globals-bound
               (unless *head-edge*
                 (error "Threading bug: expected *head-edge* to have a value"))
               (values (rnode-for-edge *head-edge*)
                       (rnode-for-edge *arg-edge*)))
              (:number 
               ;; caller is Annotate-number
               (values (hookup-daughter-number-rnodes rnode) nil))
              (:immediate-referent
               ;; used by Referent-from-rule
               (values :base-case nil))
              (:unary-rule
               ;; used only when the referent is pointed to directly.
               (let ((unit *referent*))
                 (or (first (indiv-rnodes unit))
                     :base-case)))
              (:binary-rule
               (sort-out-head-vs-arg-rnodes-in-binary-rule rc))
              (otherwise
               (break "Unanticipated source: ~a" source)))

          ;; All we know about how to realize an individual with
          ;; this annotation is to immediately recurse to the
          ;; realizations of the head and argument. 

          (when head-rnode
            (setf (rn-head rnode) head-rnode)
            (tr :setting-head rnode head-rnode) ;; "   The head of ~a is ~a"
            (if (listp head-rnode)
              (dolist (rn head-rnode)
                (pushnew rnode (rn-upward-links rn)))
              (unless (eq head-rnode :base-case)
                (pushnew rnode (rn-upward-links head-rnode)))))
          (when arg-rnode
            (setf (rn-arg rnode) arg-rnode)
            (tr :seting-arg rnode arg-rnode) ;; "   The arg of ~a is ~a"
            (if (listp arg-rnode)
              (dolist (rn arg-rnode) 
                (pushnew rnode (rn-upward-links rn)))
              (pushnew rnode (rn-upward-links arg-rnode))))

          (unless already-cached?
            (unless *parent-edge-getting-reference*
              (break "why isn't *parent-edge-getting-reference* bound?"))
            (cache-rnode-on-edge rnode *parent-edge-getting-reference*))
          rnode ))))


;; Called from ref/instantiate-individual-with-binding on the final
;;  psi after all the binding has been done and the individual
;;  v+v created for it. 
;;
(defun annotate-realization-pair (i lattice-point rule
                                  head-edge arg-edge)
  (declare (special *annotate-realizations*))
  (when *annotate-realizations*
    ;; annotating the application of a canonical binary rule.
    ;; The rnodes of the two edge are linked to a new rnode
    ;; made for this rule and lattice-point.

    (unless lattice-point
      (push-debug `(,i ,rule ,head-edge ,arg-edge))
      (error "Fix the caller. We need a lattice point or something that ~
              will serve the same purpose"))

    (tr :annotating-pair i head-edge arg-edge)
    ;; Annotating the individual ~a~
    ;;   based on the head edge ~a~
    ;;   and argument edge ~a"

    (cond ((and head-edge arg-edge)) ;; canonical
          ((eq arg-edge :unary-rule) ;; hack (subtype)
           (setq arg-edge nil))
          (t (break "Bad setup: one or both edges was not supplied")))

    (let* ((existing-annotations (lp-realizations lattice-point))
           (rc (rule-component-to-use rule))
           (rnode (find rc existing-annotations :key #'rn-cfr)))
      (if rnode
        (tr :known-entry rnode lattice-point) ;; "  Reusing ~a"
        (else
          (setq rnode (get-realization-node))
          (setf (rn-lattice-point rnode) lattice-point)
          (setf (rn-cfr rnode) rc)
          (add-new-rnode-to-lattice-point rnode lattice-point)
          (add-rnode-to-its-individual rnode i)
          (tr :new-entry rnode lattice-point rc))) ;; "  New entry: ~A"

      ;; Knit everything together.
      (let ((head-rnode
             (when head-edge (rnode-for-edge head-edge)))
            (arg-rnode
             (when arg-edge (rnode-for-edge arg-edge))))
        ;; The lp is from find-or-make-psi-for-base-category
        ;; which ran before we go to these arguments.
        (when head-rnode
          (setf (rn-head rnode) head-rnode)
          (tr :setting-rnode-head head-rnode) ;; "   The head of ~a is ~a"
          (push rnode (rn-upward-links head-rnode))
          (let ((c+v (c+v-for-edge head-edge)))
            (setf (rn-head-c+v rnode) c+v)
            (pushnew c+v (rn-variable head-rnode))))
        (when arg-rnode
          (setf (rn-arg rnode) arg-rnode)
          (tr :setting-rnode-arg arg-rnode) ;; "   The arg of ~a is ~a"
          (push rnode (rn-upward-links arg-rnode))
          (let ((c+v (c+v-for-edge arg-edge)))
            (setf (rn-arg-c+v rnode) c+v)
            (pushnew c+v (rn-variable arg-rnode)))))

      (cache-rnode-on-parent-edge rnode)
      rnode)))



;; Called from ref/instantiate-individual-with-binding
;;   from within its inner loop where it walks over each
;;   of the bindings in turn, decodes them, and then calls
;;   find-or-make-psi-with-binding to do the integration
;; We're annotation the inclusion of an individual (or psi) into
;; a larger relation on the basis of the same rule each time.
;;
(defun annotate-site-bound-to (i/psi variable type edge)
  (declare (special *annotate-realizations*))
  ;; The 'type' variable is the type-of-head in the caller,
  ;; which is either a base-category psi or a referential category.

  (when *annotate-realizations*
    (tr :site-bound-to i/psi variable type)
    ;; Annotating that the ~a of ~a~
    ;;    is being bound to a ~a
    (push-debug `(,i/psi ,variable ,type ,edge))

    ;; Given the particular variable and value just bound
    ;; in the psi, construct the c+v the correspond to
    (let* ((category (etypecase type
                       (lattice-point (category-of-psi i/psi))
                       (referential-category type)))
           (c+v (find-or-make-c+v category variable)))
      (tr :site-bound-t-c+v c+v) ;; "     c+v = ~a"
      (etypecase i/psi
        (psi 
         (let* ((lp (psi-lp i/psi))
                (top-lp (lp-top-lp lp)))
           (pushnew c+v (lp-indiv-uses top-lp))))
        ;;(composite-referent 
        ;; place-holder since it's not clear what this would mean
        ;; given that composites are a mechanism for passing multiple
        ;; referents up the line.
        ;; )
        (individual
         (let ((lp (cat-lattice-position (first (indiv-type i/psi)))))
           (pushnew c+v (lp-indiv-uses lp))))

        (referential-category)) ;; hit this case with 'end' in 'end-date'

      (cache-c+v-on-edge c+v edge)
      c+v )))
    
  

;; Called from span-digits-number and from make-edge-over-unknown-digit-sequence
(defun annotate-number (n fsa-keyword already-cached?)
  (declare (special *annotate-realizations* *rule-being-interpreted*))
  (when *annotate-realizations*
    (let ((*rule-being-interpreted* fsa-keyword))
      (annotate-individual n :number already-cached?))))


;; Called from Referent-from-unary-rule
;;   and from the unary case in ref/function
(defun annotate-unary-realization (rule)
  (declare (special *annotate-realizations*) (ignore rule))
  (when *annotate-realizations*
    (break "Annotate-unary-realization stub")))


;; called from ref/head with args analogous to call to
;; annotate-individual.
(defun annotate-composite (c)
  (declare (ignore c))
  (break "Annotate composite called somehow"))


(defun annotate-daughter (i rule head-edge arg-edge)
  (declare (special *annotate-realizations*))
  ;;/// for the moment -- crucial to get all details
  ;; Copy the rnode on the head edge up to the current edge.
  ;; This misses the form rule data (motivating case is "a" + NP),
  ;; but it's a start. Ultimately this is somewhat like
  ;; annotate-realization-pair with a stylized treatment of
  ;; the arg edge based on the rule.
  (when *annotate-realizations*
    (if (form-rule? rule)
      (annotate-form-rule i rule head-edge arg-edge)
      (else
       (tr :annotating-daughter rule head-edge)
       ;; annotating-daughter using ~a~
       ;;   via ~a"
       ;;(push-debug `(,i ,rule ,head-edge ,arg-edge)) (break "daughter")
       (let* ((lp (corresponding-lattice-point i))
              ;; For later when we look at the rule
              ;;(existing-annotations (lp-realizations lattice-point))
              ;;(rc (rule-component-to-use rule))
              ;;(entry (find rc existing-annotations :key #'rn-cfr)))
              (rnode (rnode-for-edge head-edge)))
         (unless rnode
           (push-debug `(,i ,rule ,head-edge ,arg-edge ,lp))
           (error "No rnode cached on ~a" head-edge))
         (cache-rnode-on-parent-edge rnode))))))

(defun annotate-form-rule (i rule head-edge arg-edge)
  ;; When called from annotate-daughter we can be reasonably certain
  ;; that the arg-edge has the concrete parts that needs particular
  ;; annotation. 
  (when *annotate-realizations*
    (push-debug `(,i ,rule ,head-edge ,arg-edge)) (break "form")
    (tr :annotating-form-rule rule arg-edge)))

      



;;;--------------------------------------------
;;; caching the rnode for use in the next step
;;;--------------------------------------------

(defvar *edges-to-rnodes* nil)

;; As we move upward in the tree we'll need to reference facts about
;; the daughters, so we record them with this set of functions.

(defun cache-rnode-on-parent-edge (node)
  (declare (special *parent-edge-getting-reference*))
  (unless (boundp '*parent-edge-getting-reference*)
    (break "Threading bug: Annotation not taking place within ~
            the scope~%of a referent calculation~%"))
  (let ((edge *parent-edge-getting-reference*))
    (unless edge
      (break "Bug: *parent-edge-getting-reference* is nil"))
    (cache-rnode-on-edge node edge)))

(defun cache-rnode-on-edge (node edge)
  (tr :caching-rnode node edge)
  (unless (edge-p edge)
    (push-debug `(,node ,edge))
    (break "'edge' argument isn't one: ~a" edge))
  (push `(,edge . ,node) *edges-to-rnodes*))

(defun rnode-for-edge (edge)
  (cdr (assoc edge *edges-to-rnodes*
              :test #'eq)))


(defvar *edges-to-c+v* nil)

(defun cache-c+v-on-edge (c+v edge)
  (push `(,edge . ,c+v) *edges-to-c+v*))

(defun c+v-for-edge (edge)
  (let ((c+v (cdr (assoc edge *edges-to-c+v*
                         :test #'eq))))
    (unless c+v
      (push-debug `(,edge))
      (break "No was c+v cached on ~a" edge))
    c+v))



;;;---------------------------------------
;;; Attaching the rnode to the individual
;;;---------------------------------------

(defun add-new-rnode-to-lattice-point (node lattice-point)
  (push-debug `(,node ,lattice-point)) 
  (push node (lp-realizations lattice-point))
  (when (saturated? lattice-point)
    ;; Copy it to the top-lp. Might be redundant if the rule
    ;; we've run created a psi, in which case the top-lp
    ;; already has this rnode.
    (pushnew node (lp-realizations (lp-top-lp lattice-point))))
  #+ignore(break "rnode => lp:~
        ~%   ~a~
        ~%   ~a" node lattice-point))


(defun add-rnode-to-its-individual (node unit)
  (etypecase unit
    (psi (pushnew node (indiv-rnodes unit)))
    (individual (pushnew node (indiv-rnodes unit)))
    (referential-category (pushnew node (cat-rnodes unit)))))


;;;----------------------------------------------------
;;; reading head from arg/adjunct edge out of the rule
;;;----------------------------------------------------

(defun sort-out-head-vs-arg-rnodes-in-binary-rule (sr)
  ;; Called from code that wants two rnodes returned, first
  ;; the node that goes with the head edge of this instance
  ;; of the schematic rule that was passed in and second
  ;; the rnode for the other edge. It runs in the context
  ;; of rule interpretation so it can access all of those
  ;; globals. 
  (unless (typep sr 'schematic-rule)
    (break "Bad threading or new case.~
            ~%Expected a schematic-rule and got:~%  ~a" sr))
  (multiple-value-bind (head-edge other-edge)
                       (head-and-ather-edges-of-binary-rule sr)
    (let ((head-referent (edge-referent head-edge))
          (other-referent (edge-referent other-edge)))
      (values
       (etypecase head-referent
         (referential-category 
          (cat-lattice-position head-referent))
         (individual
          (first (indiv-rnodes head-referent)))
         (word nil))
       (etypecase other-referent
         (referential-category 
          (cat-lattice-position other-referent))
         (individual
          (first (indiv-rnodes other-referent)))
         (word nil))))))


;; move this all somewhere more obvious
(defun head-and-ather-edges-of-binary-rule (sr)
  (declare (special *left-edge-into-reference*
                    *right-edge-into-reference*))
  (unless (typep sr 'schematic-rule)
    (break "Bad threading or new case.~
            ~%Expected a schematic-rule and got:~%  ~a" sr))
  (let ((schematic-head
         (or (second (memq :head-edge (schr-descriptors sr)))
             (second (memq :head (schr-descriptors sr))))))
    (if schematic-head
      (ecase schematic-head
        (left-edge
         (values *left-edge-into-reference*
                  *right-edge-into-reference*))
        (right-edge
         (values *right-edge-into-reference*
                 *left-edge-into-reference*)))
      (error "No schematic head available for ~a~%Cannot determine ~
              which edge is head and which is 'other'." sr))))



;;;-------------------------------
;;; What do we record as the rule
;;;-------------------------------

(defun rule-component-to-use (rule)
  ;; We're annotating an instance of this rule. The object
  ;; we return will be the index that sorts (interns) all of the
  ;; different annotations (rnodes) that every come accompany
  ;; the individual or psi the interpretation of this
  ;; yielded. 
  (declare (special *rules-that-are-fsas*
                    *categories-without-realization-schema*))
  (unless *categories-without-realization-schema*
    (populate-categories-without-realization-schema))
  (unless *rules-that-are-fsas*
    (populate-rules-that-are-fsas))
  (let ( schema )
    (cond
     ((keywordp rule)
      (unless (member rule *rules-that-are-fsas*)
        (break "Uncataloged keyword rule passed in: ~A" rule))
      rule)
     ((setq schema (cfr-schema rule))
      schema )
     ((member (cfr-category rule) 
              *categories-without-realization-schema*)
      rule)
     (t
      (break "no schema associated with rule:~%  ~a" rule)))))


;; This is way ad-hoc. In a better world (with more time) these
;; would also have realization schemas
(defparameter *categories-without-realization-schema* nil)

(defun populate-categories-without-realization-schema ()
  (setq *categories-without-realization-schema*
        (list (category-named 'digit-sequence)
              (category-named 'multiplier)
              (category-named 'denomination/money)
              (category-named 'financial-data)
              (category-named 'quarter)
              (category-named 'half)
              (category-named 'ordinal)
              )))

;; ditto
(defparameter *rules-that-are-fsas* nil)

(defun populate-rules-that-are-fsas ()
  (setq *rules-that-are-fsas*
        (list :digit-based-number
              :unknown-digit-sequence
              )))
