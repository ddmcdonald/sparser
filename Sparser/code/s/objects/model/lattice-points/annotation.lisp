;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "annotation"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  0.2 March 2011

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

(in-package :sparser)

;;;-------------------
;;; realization nodes
;;;-------------------

(defun get-rnode ()   ;; stub for a resource
  (make-realization-node))


;;;------------------
;;; annotation cases
;;;------------------

(defparameter *rule-being-interpreted* nil)
;; This is actually in analysers;psp:referent:driver1, but if we
;; don't define it here the next two routines won't make it special.



;; Called from referent-from-unary-rule and find-or-make-psi-for-base-category
;;
(defun annotate-realization/base-case (lattice-point category)
  (when *annotate-realizations*
    (unless lattice-point
      (break "No value provided for the lattice-point"))
    (tr :rdata-annotating-base-case lattice-point *rule-being-interpreted*)
    
    (let* ((existing-annotations (lp-realizations lattice-point))
           (rc (rule-component-to-use *rule-being-interpreted*))
           (entry (find rc existing-annotations
                        :key #'rn-cfr)))
      (when entry
        (tr :reusing-rdata-entry entry))
      (unless entry
        (setq entry (get-rnode))
        (setf (rn-lattice-point entry) lattice-point)
        (setf (rn-head entry) :base-case)
        (setf (rn-downward-links entry) nil)
        (setf (rn-cfr entry) rc)
        (add-new-rnode-to-lattice-point entry lattice-point)
        (add-rnode-to-its-individual entry category)
        (tr :new-rdata-entry entry))
      (cache-rnode-on-parent-edge entry)
      entry )))


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
    (let* ((existing-annotations (indiv-rnodes i))
           (rc (rule-component-to-use *rule-being-interpreted*))
           (entry (find rc
                        existing-annotations :key #'rn-cfr)))
      (when entry
        ;;(push-debug `(,i ,entry)) (break "Reusing ~a" i)
        (tr :reusing-rdata-entry entry))
      (unless entry
        (setq entry (get-rnode))
        (setf (rn-cfr entry) rc)
        
        ;; link the entry to its parents
        (multiple-value-bind (head-rnode arg-rnode)
            (case source
              (:globals-bound
               (unless *head-edge*
                 (error "Threading bug: expected *head-edge* to have a value"))
               (values (rnode-for-edge *head-edge*)
                       (rnode-for-edge *arg-edge*)))
              (:number ;; caller is Annotate-number
               (values (hookup-daughter-number-rnodes entry) nil))
              (:immediate-referent ;; used by Referent-from-rule
               (values :base-case nil))
              (:unary-rule
               ;; used only when the referent is pointed to directly.
               (let ((unit *referent*))
                 (or (first (indiv-rnodes unit))
                     :base-case)))
              (:binary-rule
               (sort-out-head-vs-arg-rnodes-in-binary-rule rc))
              (otherwise (break "Unanticipated source: ~a" source)))
          ;;(break "annotating ~a" i)
          (when head-rnode
            (setf (rn-head entry) head-rnode)
            (if (listp head-rnode)
              (dolist (rnode head-rnode) 
                (push entry (rn-downward-links rnode)))
              (unless (eq head-rnode :base-case)
                (push entry (rn-downward-links head-rnode)))))
          (when arg-rnode
            (setf (rn-arg entry) arg-rnode)
            (if (listp arg-rnode)
              (dolist (rnode arg-rnode) 
                (push entry (rn-downward-links rnode)))
              (push entry (rn-downward-links arg-rnode))))
          
          ;; cross-index it
          (let ((lp (corresponding-lattice-point i)))
            (setf (rn-lattice-point entry) lp)
            (add-new-rnode-to-lattice-point entry lp)
            (add-rnode-to-its-individual entry i)
            (tr :new-rdata-entry entry))))
      
      (unless already-cached?
        (cache-rnode-on-edge entry *parent-edge-getting-reference*))
      entry )))


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
  (declare (ignore c)))

(defun annotate-daughter (i rule head-edge arg-edge)
  (declare (special *annotate-realizations*))
  ;;/// for the moment -- crucial to get all details
  ;; Copy the rnode on the head edge up to the current edge.
  ;; This misses the form rule data (motivating case is "a" + NP),
  ;; but it's a start. Ultimately this is somewhat like
  ;; annotate-realization-pair with a stylized treatment of
  ;; the arg edge based on the rule.
  (when *annotate-realizations*
    (tr :annotating-daughter rule head-edge)
    (let* ((lp (corresponding-lattice-point i))
           ;; For later when we look at the rule
           ;;(existing-annotations (lp-realizations lattice-point))
           ;;(rc (rule-component-to-use rule))
           ;;(entry (find rc existing-annotations :key #'rn-cfr)))
           (rnode (rnode-for-edge head-edge)))
      (unless rnode
        (push-debug `(,i ,rule ,head-edge ,arg-edge ,lp))
        (error "No rnode cached on ~a" head-edge))
      (cache-rnode-on-parent-edge rnode))))
      



;; Called from ref/instantiate-individual-with-binding
;;
(defun annotate-realization-pair (i lattice-point rule
                                  head-edge arg-edge)
  (declare (special *annotate-realizations*))
  (when *annotate-realizations*
    ;; annotating the application of a canonical binary rule.
    ;; The rnodes of the two edge are linked to a new rnode
    ;; made for this rule and lattice-point.
    (cond ((and head-edge arg-edge)) ;; canonical
          ((eq arg-edge :unary-rule) ;; hack (subtype)
           (setq arg-edge nil))
          (t (break "Bad setup: one or both edges was not supplied")))

    (let* ((existing-annotations (lp-realizations lattice-point))
           (rc (rule-component-to-use rule))
           (entry (find rc existing-annotations :key #'rn-cfr)))
      (if entry
	    (tr :known-entry entry lattice-point)
        (else
          (setq entry (get-rnode))
          (setf (rn-lattice-point entry) lattice-point)
          (setf (rn-cfr entry) rc)
          (add-new-rnode-to-lattice-point entry lattice-point)
          (add-rnode-to-its-individual entry i)
          (tr :new-entry entry lattice-point rc)))

      ;; Knit everything together.
      (let ((head-rnode
             (when head-edge (rnode-for-edge head-edge)))
            (arg-rnode
             (when arg-edge (rnode-for-edge arg-edge))))
        ;; The lp is from find-or-make-psi-for-base-category
        ;; which ran before we go to these arguments.
        (when head-rnode
          (tr :setting-rnode-head head-rnode)
          (setf (rn-head entry) head-rnode)
          (push entry (rn-downward-links head-rnode))
          (let ((c+v (c+v-for-edge head-edge)))
            (pushnew c+v (rn-variable head-rnode))))
        (when arg-rnode
          (tr :setting-rnode-arg arg-rnode)
          (setf (rn-arg entry) arg-rnode)
          (push entry (rn-downward-links arg-rnode))
          (let ((c+v (c+v-for-edge arg-edge)))
            (pushnew c+v (rn-variable arg-rnode)))))

      (cache-rnode-on-parent-edge entry)
      entry)))


(defun annotate-site-bound-to (i/psi variable type edge)
  ;; Called from ref/instantiate-individual-with-binding
  ;; Annotates the inclusion of an individual (or psi) into
  ;; a larger relation. First find/make the appropriate c+v
  ;; object and then stash it on the i/psi.
  (declare (special *annotate-realizations*))
  (when *annotate-realizations*
    (tr :site-bound-to i/psi variable type)
    (push-debug `(,i/psi ,variable ,type)) ;; (i/psi variable type)
    (let* ((category (etypecase type
                       (lattice-point (category-of-psi i/psi))
                       (referential-category type)))
           (c+v (find-or-make-c+v category variable)))
      (etypecase i/psi
        (psi (let* ((lp (psi-lp i/psi))
                    (top-lp (lp-top-lp lp)))
               (unless (memq c+v (lp-indiv-uses top-lp)) ;; why overload v+v field?
                 (push c+v (lp-indiv-uses top-lp)))))
        ;;(composite-referent 
        ;; place-holder since it's not clear what this would mean
        ;; given that composites are a mechanism for passing multiple
        ;; referents up the line.
        ;; )
        (individual
         (let ((lp (cat-lattice-position (first (indiv-type i/psi)))))
           (unless (memq c+v (lp-indiv-uses lp))
             (push c+v (lp-indiv-uses lp)))))
        (referential-category)) ;; hit this case with 'end' in 'end-date'
      (cache-c+v-on-edge c+v edge)
      (tr :site-bound-t-c+v c+v)
      c+v )))
    
  

;;;--------------------------------------------
;;; caching the rnode for use in the next step
;;;--------------------------------------------

(defvar *edges-to-rnodes* nil)

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
    (push node (lp-realizations (lp-top-lp lattice-point))))
  #+ignore(break "rnode => lp:~
        ~%   ~a~
        ~%   ~a" node lattice-point))


(defun add-rnode-to-its-individual (node unit)
  (etypecase unit
    (psi (push node (indiv-rnodes unit)))
    (individual (push node (indiv-rnodes unit)))
    (referential-category (push node (cat-rnodes unit)))))


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
(defvar schr nil)

(defun head-and-ather-edges-of-binary-rule (sr)
  (declare (special *left-edge-into-reference*
                    *right-edge-into-reference*))
  (setq schr sr)
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
