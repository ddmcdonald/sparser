;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1998-2005,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "psi"
;;;   Module:  "objects;traces:"
;;;  Version:  May 2011

;; initiated 7/3/98. Tweaked to blend in influences from [objects:model:psi:
;; traces] 5/18/99. Noted backpointers 6/4.  2/3/05 Adding traces for the find
;; operation. 7/30/07 Adding traces for new psi indexing scheme
;; 3/17/11 Adding more annotation traces. Ditto 5/17/11

(in-package :sparser)

(defvar *psi* nil) ;; for tracing //fold it into a macro for all these

(defparameter *trace-psi* nil)

(defun trace-psi ()
  (setq *trace-psi* t))

(defun unTrace-psi ()
  (setq *trace-psi* nil))


(defparameter *trace-psi/find* nil)

(defun trace-psi/find ()
  (setq *trace-psi/find* t))

(defun unTrace-psi/find ()
  (setq *trace-psi/find* nil))


;;;----------------------------------
;;; cases within the annotation code
;;;----------------------------------

(deftrace :unary-realization (referent)
  (when (or *trace-psi* 
	    *trace-referent-creation*)
    (trace-msg "Unary realization of ~a" referent)))


(deftrace :rdata-annotating-base-case (lattice-point rule)
  ;; called from Annotate-realization/base-case
  (when *trace-psi*
    (trace-msg "Annotating the base case of ~a~
                ~%   via ~a" lattice-point rule)))

(deftrace :rdata-annotating-individual (i rule)
  ;; called from Annotate-individual
  (when *trace-psi*
    (trace-msg "Annotating the individual ~a~
                ~%   via ~A" i rule)))

(deftrace :setting-head (rnode head-rnode)
  ;; called from Annotate-individual
  (when *trace-psi*
    (trace-msg "   The head of ~a is ~a"
               rnode head-rnode)))

(deftrace :seting-arg (rnode arg-rnode)
  ;; called from Annotate-individual
  (when *trace-psi*
    (trace-msg "   The arg of ~a is ~a"
               rnode arg-rnode)))



(deftrace :annotating-daughter (rule head-edge)
  ;; called from annotate-daughter
  (when *trace-psi*
    (trace-msg "Annotating-daughter using ~a~
              ~%   via ~a" head-edge rule)))

(deftrace :annotating-form-rule (rule arg-edge)
  ;; called from annotate-form-rule
  (when *trace-psi*
    (trace-msg "Annotating-form-rule using ~a~
              ~%   via ~a" arg-edge rule)))

(deftrace :new-rdata-entry (entry)
  ;; called from Annotate-realization/base-case and Annotate-individual
  (when *trace-psi*
    (trace-msg "  New entry: ~A" entry)))

(deftrace :reusing-rdata-entry (entry)
  ;; called from annotate-realization/base-case and annotate-individual
  (when *trace-psi*
    (trace-msg "  Reusing ~a" entry)))


(deftrace :annotating-pair (i head-edge arg-edge)
  ;; Called from annotate-realization-pair
  (when *trace-psi*
    (trace-msg "Annotating the individual ~a~
              ~%  based on the head edge ~a~
              ~%  and argument edge ~a"
               i head-edge arg-edge)))




(deftrace :site-bound-to (i/psi variable type)
  ;; called from annotate-site-bound-to
  (when *trace-psi*
    (trace-msg "Annotating that the ~a of ~a~
              ~%     is being bound to a ~a"
               variable i/psi type)))

(deftrace :site-bound-t-c+v (c+v)
  (when *trace-psi*
    (trace-msg "     c+v = ~a" c+v)))


(deftrace :known-entry (rnode lattice-point)
  ;; called from annotate-realization-pair
  (when *trace-psi*
    (trace-msg "Known annotation for ~A:~%   ~A"
               lattice-point rnode)))

(deftrace :new-entry (rnode lattice-point rc)
  ;; called from Annotate-realization-pair
  (when *trace-psi*
    (trace-msg "New annotation for ~A:~
              ~%   ~A~
              ~%   based on ~a"
               lattice-point rnode rc)))

(deftrace :setting-rnode-head (rnode)
  ;; called from Annotate-realization-pair
  (when *trace-psi*
    (trace-msg "   Setting rnode head to ~a" rnode)))

(deftrace :setting-rnode-arg (rnode)
  ;; called from Annotate-realization-pair
  (when *trace-psi*
    (trace-msg "   Setting rnode arg to ~a" rnode)))


;; Called from cache-rnode-on-edge
(deftrace :caching-rnode (node edge)
  (when *trace-psi*
    (trace-msg "Caching ~A on~
                ~%    ~A" node edge)))


;;;-----------------------------------
;;; cases within the realization code
;;;-----------------------------------

(deftrace :annotating-ref/head (head)
  ;; called from Ref/head
  (when *trace-psi*
    (trace-msg "Ref/head - the head is ~a" head)))

(deftrace :ref/head-base-from-category (head)
  ;; called from Ref/head
  (when *trace-psi*
    (trace-msg "ref/head made the base psi ~a" head)))

(deftrace :ref/head-base-from-mixin (head)
  ;; called from Ref/head
  (when *trace-psi*
    (trace-msg "ref/head made the base psi for a mixin: ~a" head)))


(deftrace :ref/binding (variable value body)
  ;; called from Ref/binding
  (when *trace-psi*
    (trace-msg "About to bind the variable ~a of ~a~
              ~%    to ~a" variable body value)))

(deftrace :ref/binding-result (v r)
  ;; called from Ref/binding
  (when *trace-psi*
    (trace-msg "The result of binding ~a is~
             ~%    ~a" v r)))

(deftrace :instantiating-individual-with-binding (psi binding-exp/s)
  ;; called from Ref/instantiate-individual-with-binding
  (when *trace-psi*
    (trace-msg "Instantating a ~a with binding/s~%     ~A"
               psi binding-exp/s)))


;;;-------------
;;; subtype psi
;;;-------------

(deftrace :looking-for-subtype-unit (unit category-of-subtype)
  ;; called from Corresponding-unit-of-subtype
  (when *trace-psi*
    (trace-msg "Looking for a ~a subtype of ~a"
	       category-of-subtype unit)))

(deftrace :subtype-unit-found (unit)
  ;; called from Corresponding-unit-of-subtype
  (when *trace-psi*
    (trace-msg "   found ~a" unit)))


(deftrace :find-psi-instances-of-type (instances subtype-lp)
  ;; called from Find-or-make-psi-for-subtype
  (when *trace-psi-construction*
    (trace-msg "There are ~a instances (PSI) that are subtypes of ~a"
	       (if (null instances) 0 (length instances))
	       subtype-lp)))

(deftrace :found-psi-instance-of-type (psi source-psi subtype-lp)
  ;; called from Find-or-make-psi-for-subtype
  (when *trace-psi-construction*
    (trace-msg "Found an instance that's a subtype of ~a~
              ~%   with the correct source (~a):~
              ~%      ~a" subtype-lp source-psi psi)))

(deftrace :making-new-psi-for-subtype (subtype-lp source)
  ;; called from Make-psi-for-subtype
  (when *trace-psi-construction*
    (trace-msg "Making a new subtype PSI of ~a with source ~a"
	       subtype-lp source)))

(deftrace :made-new-psi-for-subtype (psi)
  ;; called from Make-psi-for-subtype
  (when *trace-psi-construction*
    (trace-msg "    new subtype PSI is ~a" psi)))
  

;;;------------------------------
;;; find or make psi (new stuff)
;;;------------------------------

(deftrace :found-or-made-psi (psi)
  ;; called from Find-or-make-psi-for-base-category (at least)
  (when *trace-psi*
    (trace-msg "   psi: ~a" psi)))

(deftrace :made-new-psi (psi)
  ;; called from make-v+v-and-new-psi
  (when *trace-psi*
    (trace-msg "New psi: ~a" psi)))

(deftrace :located-known-psi (psi)
  (when *trace-psi*
    (trace-msg "Known psi: ~a" psi)))

(deftrace :extending-psi (psi variable value)
  ;; called from Extend-psi-by-binding
  (when (or *trace-psi* *trace-psi-construction*)
    (setq *psi* psi)
    (trace-msg "Extending ~a~
                ~%   by binding ~a ~
                ~%           to ~a" psi variable value)))


(deftrace :made-psi-with-just-a-type (category psi)
  ;; called from make-psi-with-just-a-type
  (when *trace-psi-construction*
    (trace-msg "Made the psi ~a~
              ~%   to represent the category ~a"
	       psi category)))

;;;---------------------
;;; cases in the lookup
;;;---------------------

(deftrace :find-v+v (c+v v)
  ;; called from find-v+v-given-c+v&v
  (when *trace-psi-construction*
    (trace-msg "Looking for a v+v based on ~a~
              ~%  whose value is ~a"
	       c+v v)))

(deftrace :found-v+v (value)
  ;; called from find-v+v-given-c+v&v
  (when *trace-psi-construction*
    (trace-msg "     Found v+v ~a" value)))

(deftrace :no-v+v-found ()
  ;; called from find-v+v-given-c+v&v
  (when *trace-psi-construction*
    (trace-msg "     didn't find a v+v")))

(deftrace :find-v+v-new-c+v-table (c+v)
  ;; called from find-v+v-given-c+v&v
  (when *trace-psi-construction*
    (trace-msg "     didn't find one (first instance of a v+v for ~a)" c+v)))


(deftrace :found-c+v (c+v)
  ;; called from find-c+v
  (when *trace-psi-construction*
    (trace-msg "Found existing c+v ~a" c+v)))

(deftrace :made-c+v (cv)
  ;; called from make-c+v
  (when *trace-psi-construction*
    (trace-msg "Made new c+v ~a" cv)))



;;;-------------------
;;; cases in the make
;;;-------------------

(deftrace :making-v+v-and-psi (variable value parent-psi c+v)
  ;; called from make-v+v-and-new-psi
  (when *trace-psi-construction*
    (trace-msg "Making a v+v and psi where~
              ~%  var = ~a  value = ~a~
              ~%  parent-psi = ~a  c+v = ~a"
	       variable value parent-psi c+v)))

(deftrace :made-v+v (vv)
  ;; called from make-v+v-and-new-psi
  (when *trace-psi-construction*
    (trace-msg "  Made the v+v ~a" vv)))

(deftrace :made-psi-at-lp (psi lattice-point)
  ;; called from make-v+v-and-new-psi
  (when *trace-psi-construction*
    (trace-msg "  Made psi ~a~
              ~%    at lattice-point ~a"
	       psi lattice-point)))


;;;-------------
;;; finding PSI
;;;-------------

(deftrace :find-psi (type bindings-instructions)
  ;; called from Find-psi
  (when *trace-psi/find*
    (when (consp (first bindings-instructions))
      (break "called with an alist"))
    (let* ((var1 (first bindings-instructions))
           (v1 (second bindings-instructions))
           (rest? (cddr bindings-instructions)))
      (if rest?
        (trace-msg "Trying to find a ~a~
                    ~%   whose ~a is ~a~
                    ~%    and ~a" type var1 v1 rest?)
        (trace-msg "Trying to find a ~a~
                    ~%   whose ~a is ~a" type var1 v1)))))

(deftrace :found-psi (psi)
  ;; called from Find-psi
  (when *trace-psi/find*
    (trace-msg " Found ~a" psi)))

(deftrace :no-psi-found (type bindings-instructions)
  ;; called from Find-psi
  (when *trace-psi/find*
    (trace-msg "  no psi found")))


(deftrace :find-psi-with/no-c+v (category)
  ;; called from Find-psi-of-type-with-bindings
  (when *trace-psi/find*
    (trace-msg "     No c+v objects on the lp for ~a" category)))

(deftrace :find-psi-with/no-c+v-for (variable)
  ;; called from Find-psi-of-type-with-bindings
  (when *trace-psi/find*
    (trace-msg "     No c+v for the variable ~a" variable)))

(deftrace :find-psi-with/no-v+v-for (variable value)
  ;; called from Find-psi-of-type-with-bindings
  (when *trace-psi/find*
    (trace-msg "     No v+v for the value ~a~
              ~%        the variable ~a" value variable)))





(deftrace :found-psi-extension (psi target-psi)
  (when *trace-psi/find*
    (trace-msg "  Found ~a~
              ~%     as the extension of ~a" psi target-psi)))

(deftrace :no-psi-extension (psi)
  (when *trace-psi/find*
    (trace-msg "  no psi found that extends ~a" psi)))

#|
(deftrace 
  (when *trace-psi/find*
(deftrace 
  (when *trace-psi/find*
|#

