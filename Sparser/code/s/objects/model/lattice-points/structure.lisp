;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005,2010-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "structure"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  1.3 May 2014

;; initiated 11/29/97
;; 0.1 (2/24/98) Started reworking the initial sketch to fit all the 
;;      ideas worked out in January. Continuing tweaking through 7/7.
;; 0.2 (6/8/99) modified realization-node to remove the uplinks as
;;      obsolete.
;; 0.3 (9/12) Added 'psi-uses' to psi-lattice-points and c+v and
;;      indiv-uses to top-lattice points. 
;;     (4/10/00) Added psi-uses to self-lattice-points as well.
;; 0.4 (6/21) Added an index.
;; 0.5 (3/4/05) added v+v index to top nodes. (8/15/07) moved in the c+v
;;      and v+v structs so an early load will get everything. 
;; 1.0 (7/22/09) Substantial adjustments to move more information to the psi
;;      objects. (8/30) Added a subtype of v+v for the top category case.
;; 1.1 (11/14/10) Revived the c+v & such of the top lp struct to sustain
;;      realizations. Fixed conc-name bug in category+value.
;; 1.2 (1/25/11) Removed need to check against core-omar.
;;     (3/23/11) Uncommented out upward-links and added variable to
;;      realization-node.
;; 1.3 (5/9/14) Tweaked subtype-lattice-point to support the new simpler
;;      scheme based on shadows. 

(in-package :sparser)

;;;-----------------
;;; lattice ppoints 
;;;-----------------

(defstruct (lattice-point
            (:include unit)
            (:conc-name #:lp-)
            (:print-function print-lattice-point-structure))

  index ;; an arbitrary number used for accessing the lp

  top-lp  ;; backpointer all the way up to the top
          ;; of the saturation chain. No more "climbing"

  variables-bound  ;; a list of variables

  variables-free   ;; ditto

  realizations ;; list of realization-nodes

  down-pointers
   ;; An alist keyed on {category, variable} that takes us to 
   ;; one or more lattice points that bind one more variable
   ;; than is bound here. 

  upward-pointers
   ;; another such alist.

  )


;; This lp type is pointed to from the category. It's 'top' in
;; the formal sense for lattices and so it gets extra baggage.

(defstruct (top-lattice-point
            (:include lattice-point)
            (:conc-name #:lp-)
            (:print-function print-top-lattice-point-structure))
  category
    ;; The category the top of the lattice is attached to

  super-category  ;; the single category this one specializes

  subtypes ;; alist of (category . subtype-lattice-point)
  
  top-psi ;; the 'root' psi for the category. Never changes

  subnodes ;; an alist by number of variables bound

  index-by-variable
    ;; an alist by {category, variable} to all of the lattice points
    ;; that include a that variable. Used in maintaining unique
    ;; objects for each combination regardless of the order in which
    ;; the variables were bound. 

  c+v ;; alist of the c+v objects that have been created for this
      ;; category. This is the registry used for indexing them.

  v+v ;; an alist by variable used for indexing them (keeping them
      ;; unique).

 indiv-uses ;; list of c+v recording where individuals of this category
       ;; have been deployed as the value of these types of
       ;; bindings. Usually these individuals will have been
       ;; pre-defined when the model dossiers were loaded since
       ;; there no scheme for converting/matching constructed
       ;; fully-saturated psi to individuals yet (9/99)

  )



;; If categories proper were completely subsumed by their associated
;; lattice points we wouldn't need this. On the other hand this is
;; for specializations that are done on the fly in the course of an
;; analysis, so perhaps the redundancy isn't so bad. 

(defstruct (subtype-lattice-point
            (:include top-lattice-point)
            (:conc-name #:lp-)
            (:print-function print-subtype-lattice-point))

  specializing-category  ;; typically a mixin category

  supertype-print-string  ;; "<supertype/<specializing-category>"

  supertype  ;; backpointer to the lattice point it specializes

  subtype ;; pointer to the subtyped-category object

  )



(defstruct (realization-node
            (:include unit)
            (:conc-name #:rn-)
            (:print-function print-realization-node-structure))

  lattice-point
    ;; backpointer to the lp where this is one of the realizations.

  head
    ;; Up pointer to a rnode or :base-case
    ;; If there is just one term in the rule, this slot gets it.
  head-c+v

  arg
    ;; also an up pointer to an rnode.
    ;; This is the 'other' element in a two term binary rule.
    ;; Syntactically it will either be a complement or
    ;; an adjunct, but it's not evident that we need to make a
    ;; distinction here. 
  arg-c+v

  cfr  ;; and from there you can get to the schema from which it derived

  downward-links  ;; list of r-nodes

  upward-links ;; Lower rnode spoint up to their consumer rnodes

  variable ;; list (?) of c+v set by annotate-realization-pair

  )





;; Interim scheme 2009/10 while the annotation code wasn't working
(defobject rnode ()
  ((lattice-point) ;; or something like it. It's a backpoint as much as anything
   (rule-used)      ;; suitable for inverting to nlg
   (variable-bound) ;; for extracting the right thing from the source
   ))
  
(defobject rpath () ;; a 'strand' if we pick it out of a real annotated lattice
  ((category) ;; what kind of thing does this realize
   (ordered-list-of-rnodes) ;; from bottom to top
   ))




;;;-------------
;;; v+v and c+v 
;;;-------------
 
(defstruct (variable+value
            (:include unit)
            (:conc-name #:vv-)
            (:print-function print-variable+value-structure))
  
  variable 

  value

  psi ;; all of the psi that incorporate this v+v

  )

(defstruct (category+value
	     (:include variable+value)
	     (:conc-name #:vv-)
	     (:print-function print-category+value-structure))
  category
  )




;; Not being used (so far) in this version
(defstruct (category+variable
            (:include unit)
            (:conc-name #:cv-)
            (:print-function print-category+variable-structure))
  
  type
    ;; a base category (rather than a lattice-point) or one
    ;; of its subtypes.

  variable

  )


#|
(defstruct (psi-lattice-point
            (:include lattice-point)
            (:conc-name #:lp-)
            (:print-function print-lattice-point-structure))

  instances  ;; list of psi

  psi-uses ;; list of c+v recording where psi of this type have been
       ;; deployed as the values of those types of bindings.

  ) |#


;; These are for things like verbs that indicate that a particular
;; category is present but don't bind any of its variables.
;; They are associated with the referential-category 'variable' in
;; the top lattice point's set of variables and their indexes.
#|
(defstruct (self-lattice-point
            (:include lattice-point)
            (:conc-name #:lp-)
            (:print-function print-self-lattice-point-structure))

  instance  ;; the single psi that consists of this type

  psi-uses ;; list of c+v recording where psi of this type have been
       ;; deployed as the values of those types of bindings.

  )  |#
  


