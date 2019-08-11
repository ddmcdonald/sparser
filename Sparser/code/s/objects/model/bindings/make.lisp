;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2013-2018 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:bindings:"
;;;  version:  August 2018

;; initiated 11/30/91 v2.1
;; 1.1 (7/20/92 v2.3) revised to fit new regime
;; 1.2 (12/29/93) tweeked Apply-bindings to appreciate the case of null values
;; 1.3 (3/10/94) Added optional category arg to Bind-variable to help
;;      in disambiguating the variable
;;     (8/1) added a fall-through case to that routine
;; 1.4 (8/4) added an 'incidence-count' on bindings
;; 1.5 (12/19) added a break to Bind-variable when the variable is undefined
;;     (1/7/96) added Remove-binding-from-individual
;;     (1/8) added 'when-binding' hook to Bind-variable
;; 1.6 (2/14/99) tweaked Bind-variable to appreciate the possibility of psi
;;      where it expects individuals and to then call the right routine.
;;     (5/18) adjusted that tweak to return the resulting new psi.
;;     (3/4/05) Added optional to make/binding so it only indexes the value
;;     (6/19/09) fan-out from psi changes. Capitalization tweaks.
;; 1.7 (4/5/13) Redesigned the when-binding hook.
;; 2.0 (12/28/14) Added a trap so you can't add bindings to categories.
;;      Which is debatable, but such bindings should at least be reclaimable.
;;    3/21/2015 fix overzealous correction of find/binding. 
;;      some problem in lookup for.
;;     find/binding which caused bad definition in (define-unit-of-measure ...) 
;;       for "nm"
;;    4/18/2015 removed fix to bind-variable/expr, which prevented multiple bindings 
;;     of a variable on a single individual
;; 2.1 (4/20/15) dereferenced instance of anonymous variable in 
;;      bind-variable
;;     (6/5/15) wrapped *break-on-pattern-outside-coverage?* around the 
;;      complaint in bind-variable when the individual doesn't have the variable
;;      it wants to bind.
;; 2.2 (6/27/15) Now has *description-lattice* cases. 6/30/15 pulling out
;;     now deadwood PSI cases.
;; 2.3 (11/2/15) Resurecting simple bind-variable for the simple side-effects
;;     cases. 

(in-package :sparser)


;;;---------------------------
;;; call from Make/individual
;;;---------------------------

(defun apply-bindings (input-individual binding-instructions)
  ;; Called from, e.g., make-simple-individual
  ;; Notice that binding-instructions is an alist, not a plist
  (declare (special *description-lattice*))
  (let ( bindings  var  value (individual input-individual))
    (dolist (instr binding-instructions)
      (setq var (car  instr)
            value (cadr instr))
      ;;(format t "~&apply bindings loop, binding ~s as ~s of ~s" value var individual)
      (when value
        (push (multiple-value-bind (new-indiv binding) 
                                   (if *description-lattice*
                                     (bind-dli-variable var value individual)
                                     (old-bind-variable var value individual))
                (setq individual new-indiv)
                binding)
              bindings)))
    (values
     (nreverse bindings)
     individual)))



;;;--------
;;; core
;;;--------

#| What happens when we bind a variable depends on the value of
the *description-lattice* parameter. If it is non-nil we use the
lattice to record the binding and find-or-make a new variable+value
that reflects that. If the parameter is nil then we just add
the new binding to the same individual and something else keeps
track of recording that fact.

There are three entry points
  bind-variable looks at the value of *description-lattice* and calls
  bind-dli-variable it is non-nil and calls
  old-bind-variable if it is nil.

I prefer bind-variable simply because it's shorter and emphasizes
what happens rather than how it happens (ddm).  |#

(defparameter *convert-category-values-to-individuals-when-binding* t
  "Gates the new policy in bind-dli-variable to facilitate debugging its fanout")


(defun bind-variable (var/name value individual &optional category)
  "Standard way of binding a variable on an individual. What actually
   happens depends on the value of *description-lattice*, in both cases
   we return the individual that has the new binding."
  (declare (special *description-lattice*))
  (if *description-lattice*
    (bind-dli-variable var/name value individual category)
    (old-bind-variable var/name value individual category)))


(defun bind-dli-variable (var/name value individual &optional category)
  "Returns the resulting individual as its first (primary) value
  it returns the binding object as its second (secondary) value.
  Note that if *description-lattice* is nil this becomes a call to
  the 'old' variable binding protocol."
  (declare (special *description-lattice*
                    *legal-to-add-bindings-to-categories*))
  (unless var/name
    (error "call to bind-dli-variable with var/name = nil~%"))

  (when (category-p value)
    ;; The value to bind the variable to is a category.
    ;; Should we stay with the category value or convert it
    ;; to an individual?
    (cond
      ((var-takes-category? var/name individual category)) ;; stay
      ((null *convert-category-values-to-individuals-when-binding*)) ;; stay
      (t ;; convert
       ;; Motivated by "GEF functionality", where GEF is defined by
       ;; (noun "GEF" ...) and thus denotes a category (like most heads)
       ;; but we want an individual
       (setq value (individual-for-ref value)))))

  (when (category-p individual)
    ;; We're adding the binding to a category. That's permitted
    ;; if the caller says so. If not, we convert the category to
    ;; an individual
    (unless *legal-to-add-bindings-to-categories*
      (setq individual (individual-for-ref individual))))
 
  (cond
    ((category-p individual) ;; cf. attach-bindings-to-category
     (attach-binding-to-category var/name value individual))
    (*description-lattice*
     (setq individual (look-for-ambiguous-variables individual var/name))
     (when (individual-p value)
       (setq value (make-maximal-projection value)))
     (find-or-make-lattice-subordinate individual var/name value category))
    (t (old-bind-variable var/name value individual category))))



(defun old-bind-variable (var/name value individual &optional category)
  "Create a binding object and link it to the individual. If this is
   called with the symbol that names a variable rather than an actual
   variable, then the optional category argument is most certain way to
   find the real variable, otherwise we try to get it from the
   individual. N.b. called from find-or-make-lattice-subordinate to bind 
   the variable onto the newly copied individual."
  (declare (special *legal-to-add-bindings-to-categories*
                    *break-on-pattern-outside-coverage?*
                    *warn-non-binding-anonymous-var*))
    
  (when (typep individual 'category)
    ;;/// this is debatable in principle, but it would be very
    ;; permanent, so it's probably something to be crept up on
    ;; slowly (e.g. like reclaiming bindings would be a good
    ;; initial step).
    (unless *legal-to-add-bindings-to-categories*
      (error "It doesn't make sense to add a binding to the ~
              category ~a" individual)))
  
  (unless category
    (cond 
     ((referential-category-p individual) ;; 6/22/09
      (setq category individual))
     (t (setq category (indiv-type individual)))))
  
  (when (consp category) ;; new 6/19/09
    (setq category (car category)))
  
  (cond
   ((and (typep var/name 'anonymous-variable)
         (null (find-variable-for-category 
                (avar-name var/name)
                (if (individual-p individual)
                  (itype-of individual)
                  individual))))
    (when *warn-non-binding-anonymous-var*
      (warn "Can't bind ~a to ~a because the variable is anonymous"
            individual value var/name))
    (values individual nil))
   (t
    (let ((variable (variable-given-name-and-individual var/name individual category)))
      (when variable
        (let ((binding (bind-variable/expr variable value individual)))
          (values individual binding)))))))


(defun bind-variable/expr (variable value individual)
  (declare (special *index-bindings-to-variables*))
  (let ((binding
         (or (when *index-bindings-to-variables*
               (find/binding variable value individual))
             (make/binding variable value individual))))
    (when-binding-hook variable individual value)
    (values binding individual)))


(defun make/binding (variable value individual &optional no-index-on-body?)
  (declare (special *index-under-permanent-instances*
                    *track-incidence-count-on-bindings*))
  (let ((b (if *index-under-permanent-instances*
             (make-binding)
             (allocate-binding))))
    
    (setf (binding-body b)      individual)
    (setf (binding-variable b)  variable)
    (setf (binding-value b)     value)

    (when *track-incidence-count-on-bindings*
      (setf (get-tag :incidence-count b) 1))

    (index/binding b variable no-index-on-body?)
     b ))



(defun remove-binding-from-individual (b i)
  (unindex/binding b i)
  (deallocate-binding b)
  b )


;;;-----------------------------------
;;; accommodating ambiguous variables
;;;-----------------------------------

(defun look-for-ambiguous-variables (individual var/name)
  "Called from bind-dli-variable, where it has to return the individual,
   original or as modified to do any local disambiguation."
  (let ((ambiguous-binding
         (when (individual-p individual)
           (loop for binding in (binds individual)
                 when (and (disjunctive-lambda-variable-p (binding-variable binding))
                           (loop for v in (dvar-variables (binding-variable binding))
                                 thereis (or (eq v var/name) (eq (var-name v) var/name))))
                 do (return binding)))))
    (if ambiguous-binding
      (setq individual
            (perform-local-variable-disambiguation ambiguous-binding var/name individual))
      individual)))

(defun perform-local-variable-disambiguation (ambiguous-binding var/name i)
  (let* ((new (find-or-make-lattice-description-for-cat-list (indiv-type i)))
	 (ambig-var (binding-variable ambiguous-binding))
	 (ambig-variables (dvar-variables ambig-var)))
    (loop for binding in (reverse (indiv-binds i))
       do (setq new
                (bind-dli-variable
                 (disambiguated-variable binding ambiguous-binding ambig-variables var/name)
                 (binding-value binding)
                 new)))
    new))

(defun make-maximal-projection (individual &optional edge)
  (declare (special *contextual-interpretation*))
  (if *contextual-interpretation*
      ;; don't make maximal projections during contextual reinterpretation
      individual
      (let ((over-ridden-binding
             (loop for binding in (binds individual)
                   when
                     (and
                      (disjunctive-lambda-variable-p (binding-variable binding))
                      (member (var-name (binding-variable binding))
                              '(agent-or-object
                                agent-or-substrate
                                substrate-or-kinase
                                kinase-or-substrate)))
                   do (return binding)))
            (existing-substrate-binding
             (loop for binding in (binds individual)
                   when
                     (and (eq (var-name (binding-variable binding)) 'site)
                          (individual-p (binding-value binding))
                          (value-of 'substrate (binding-value binding)))
                   do (return binding))))
        (when over-ridden-binding
          (setq individual
                (perform-over-ridden-variable-disambiguation
                 over-ridden-binding
                 (if (or existing-substrate-binding
                         ;; for CHK phosphorylation site -- CHK is the kinase in this case
                         (value-of 'process individual))
                     'substrate
                     'agent)
                 individual
                 (or edge (constituent-edge-with-value individual)))))
        individual)))


(defun perform-over-ridden-variable-disambiguation (over-ridden-binding var/name i edge)
  (declare (special *left-edge-into-reference*
                    *right-edge-into-reference* *sentence-in-core*))
  (let* ((new (find-or-make-lattice-description-for-cat-list (indiv-type i)))
	 (over-ridden-var (binding-variable over-ridden-binding))
	 (over-ridden-variables (dvar-variables over-ridden-var)))
    (when (null edge)
      #+ignore ;; this is noisy, and not clear what it is blocking
      (warn "null edge in perform-over-ridden-variable-disambiguation, for binding ~s in sentence ~s~%"
            over-ridden-binding (when *sentence-in-core* (current-string)))
      (return-from perform-over-ridden-variable-disambiguation i))
    (loop for binding in (reverse (indiv-binds i))
          do
            (setq new
                  (bind-dli-variable
                   (disambiguated-variable binding over-ridden-binding
                                           over-ridden-variables
                                           var/name)
                   (binding-value binding)
                   new)))
    (reinterpret-edge? edge i new)
    new))

(defun reinterpret-edge? (edge old-indiv new-indiv)
  (set-edge-referent edge new-indiv))

(defparameter *break-on-ambiguous-variable* nil)
(defparameter *quiet-ambiguous-variable* t)

(defun disambiguated-variable (binding ambiguous-binding ambig-variables var/name)
  (if (eq binding ambiguous-binding)
      (if (cddr ambig-variables)
	  ;; still ambiguous
	  (progn (if *break-on-ambiguous-variable*
                     (lsp-break  "~%still ambiguous ~s~% in sentence: ~s~%" ambig-variables
                                 (current-string))
                     (unless *quiet-ambiguous-variable*
                       (warn  "~%still ambiguous ~s~% in sentence: ~s~%" ambig-variables
                              (current-string))))
		 (car ambig-variables)) ;;
	  (or (loop for v in ambig-variables
                    when (not (ambiguity-equivalent-var? v var/name))
                    do (return v))
              (loop for v in ambig-variables
                    when (not (eq (if (symbolp v) v (pname v))
                                  (if (symbolp var/name) var/name (pname var/name))))
                    do (return v))))
      (binding-variable binding)))

(defun ambiguity-equivalent-var? (v1 v2)
  (setq v1 (if (symbolp v1) v1 (pname v1)))
  (setq v2 (if (symbolp v2) v2 (pname v2)))
  (or (eq v1 v2)
      (and (member v1 '(object affected-process))
           (member v2 '(object affected-process)))))

;; data obtained from
#|(setq dups
      (loop for xx in
              (remove-duplicates
               (remove nil
                       (loop for c in *categories-defined*
                             collect (find-subcat-patterns :object c)))
               :test #'equal)
            when (cdr xx) collect (mapcar #'pname (mapcar #'subcat-variable xx))))
|#

;;;-----------------------------------------------------
;;; changing the value on a binding that already exists
;;;-----------------------------------------------------

(defun rebind-variable (var/name value individual)
  "Create (or find) a variant of individual where the previous
   value of the variable in its binding is replaced with this value."
  (declare (special *description-lattice*))
  (let ((var (find-variable-for-category var/name individual)))
    (if (null var)
      individual ;; can't rebind -- no variable
      (if *description-lattice*
        (let ((bindings (indiv-old-binds individual))
              (new (make-dli-for-ref-category (itype-of individual)))
              (rebound nil))
          ;; We have to fit the individual into the description lattice
          ;; at the same place as it had given the set of bindings that
          ;; have specialized its description, so we move it down
          ;; one binding at a time, either recreating the original binding
          ;; or for the target variable using the new value
          (loop for b in (reverse bindings)
             do (setq new
                      (if (eq (binding-variable b) var)
                        (then ;; change this one
                          (setq rebound t)
                          (bind-dli-variable (binding-variable b) value new))
                        (bind-dli-variable ;; keep the others
                         (binding-variable b) (binding-value b) new))))
          (unless rebound ;; must not have had an earlier value
            (setq new (bind-dli-variable var value new)))
          new)
        (else ;; old-style fixed individuals
          (let ((b (binding-of-individual var individual)))
            (setf (binding-value b) value)
            ;; now it needs to be indexed, but that would entail
            ;; refactoring some code and can wait for a bit (1/31/17)
            individual))))))

(defun rebind-value (val new-val individual)
  "Find the binding on the individual that currently has 'val' as
 its value and recreate the individual ('new') where that binding's
 variable is now bound to 'new-val'. Note that this version only
 operates if the description lattice is in effect."
  (declare (special *description-lattice*))
  (when *description-lattice*
    (let ((bindings (indiv-old-binds individual))
          (new (make-dli-for-ref-category (itype-of individual)))
          (rebound nil))
      (loop for b in (reverse bindings)
         do (setq new
                  (if (eq (binding-value b) val)
                    (then ;; change this one
                      (setq rebound t)
                      (bind-dli-variable (binding-variable b) new-val new))
                    (bind-dli-variable ;; keep the others
                     (binding-variable b) (binding-value b) new))))
      (unless rebound
        (error "attempting to change a binding for ~s which does not exist in ~s~%"
               val (current-string)))
      new)))


(defun copy-indiv-minus-variable (i var/name)
  "Make a new individual with all of the bindings of the
   original except for the specific variable."
  (let ((var (find-variable-for-category var/name i))
        (bindings (indiv-binds i))
        (category (itype-of i)))
    (if *description-lattice*
      (let ((bindings (indiv-old-binds i))
            (j (make-dli-for-ref-category category)))
        (loop for b in (reverse bindings)
           unless (eq (binding-variable b) var)
           do (setq j (bind-variable (binding-variable b)
                                     (binding-value b)
                                     j)))
        j)
      (else
        (let ((j (make-unindexed-individual category)))
          (loop for b in bindings
             unless (eq (binding-variable b) var)
             do (bind-variable (binding-variable b) (binding-value b) j))
          j)))))
