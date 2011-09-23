;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1999-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "trace"
;;;   Module:  "objects;model:psi:"
;;;  version:  0.1 August 2009

;; initiated 5/18/99. Started adding more 5/6/00. Started composites 6/18
;; 7/30/07 Adding traces for new psi indexing scheme and refining old ones.
;; 0.1 (8/09) Replacing/ignoring the 2007 traces and replacing/adding new
;;  ones to go with the new scheme.

(in-package :sparser)

;;;----------------------------------------------
;;; constructing partially saturated individuals
;;;----------------------------------------------

;;--- drivers

(defvar *trace-psi-construction* nil)

(defun trace-psi-construction ()
  (setq *trace-psi-construction* t))

(defun untrace-psi-construction ()
  (setq *trace-psi-construction* nil))


(defvar *trace-lp-construction* nil)

(defun trace-lp-construction ()
  (setq *trace-psi-construction* t))

(defun untrace-lp-construction ()
  (setq *trace-psi-construction* nil))



;;--- Resource

(deftrace :allocating-a-psi-object (psi)
  ;; called from allocate-psi
  (when *trace-psi-construction*
    (trace-msg "Allocating new psi #~a" 
	       (cadr (member :uid (unit-plist psi))))))


;;--- make-psi and its friends

(deftrace :make-psi-for-type (category)
  ;; called from make-psi-with-just-a-type
  (when *trace-psi-construction*
    (trace-msg "Making psi for the category ~a" category)))

(deftrace :make-psi-for-type/found-existing (psi)
  ;; called from make-psi-with-just-a-type
  (when *trace-psi-construction*
    (trace-msg "   found existing ~a" psi)))

(deftrace :made-psi-for-type/psi (psi category)
  ;; called from make-psi-with-just-a-type
  (when *trace-psi-construction*
    (trace-msg "   made ~a for ~a" psi category)))



(deftrace :find/make-psi-extending-by-binding-with (variable value parent-psi)
  ;; called from find-or-make-psi-with-binding
  (when *trace-psi-construction*
    (trace-msg "Need a psi that extends ~a~
              ~%    by binding ~a to ~a"
	       parent-psi (var-name variable) value)))

(deftrace :retrieved-psi-from-v+v (associated-psi v+v)
  ;; called from retrieve-psi-from-v+v
  (when *trace-psi-construction*
    (trace-msg "  Retrieved ~a~
              ~%    from ~a" associated-psi v+v)))

(deftrace :retrieved-psi-from-among-v+v (associated-psi v+v)
  ;; called from retrieve-psi-from-v+v
  (when *trace-psi-construction*
    (trace-msg "  Retrieved ~a~
              ~%    from among the psi associated with ~a"
	       associated-psi v+v)))

(deftrace :v+v-retrieved-psi-not-consistent-with-parent
	    (associated-psi parent-psi)
  ;; called from retrieve-psi-from-v+v
  (when *trace-psi-construction*
    (trace-msg "  Retrieved ~a~
              ~%    but its v+v were not consistent with~
              ~%    those on ~a"
	       associated-psi parent-psi)))

(deftrace :v+v-retrieved-psi-are-not-consistent-with-parent (associated-psi
							     parent-psi)
  ;; called from retrieve-psi-from-v+v
  (when *trace-psi-construction*
    (trace-msg "  None of the ~a retrieved psi~
             ~%    were consistent with ~a"
	       (length associated-psi) parent-psi)))

(deftrace :added-psi-to-v+v (psi v+v)
  ;; called from make-new-psi-for-v+v
  (when *trace-psi-construction*
    (trace-msg "Added ~a to the psi~
              ~%    associated with ~a" psi v+v)))

(deftrace :no-existing-psi-binding (variable value)
  ;; called from find-psi-with-binding
  (when *trace-psi-construction*
    (trace-msg "  No existing psi binds ~a to ~a"
	       (var-name variable) value)))

(deftrace :made-v+v (v+v)
  ;; called from make-and-attach-v+v
  (when *trace-psi-construction*
    (trace-msg "Made ~a" v+v)))

(deftrace :make-top-v+v (v+v)
  ;; called from make-top-v+v
   (when *trace-psi-construction*
    (trace-msg "Made ~a" v+v)))

(deftrace :made-more-saturated-psi (psi variable)
  ;; called from make-more-saturated-psi
  (when *trace-psi-construction*
    (trace-msg "Bound ~a to make the more saturated ~a" 
	       (var-name variable) psi)))

(deftrace :added-psi-to-v+v (psi v+v)
  ;; called from make-new-psi-for-v+v
  (when *trace-psi-construction*
    (trace-msg " added ~a to ~a" psi v+v)))





;;------- old ones.  Some lp still reached. Needs pruning

(deftrace :make/psi (type binding-instructions)
  ;; called from make/psi
  (when *trace-psi-construction*
    (trace-msg "Making a psi of type ~a~
              ~%  with binding instructions: ~a"
               type binding-instructions)))

(deftrace :starting-psi (starting-psi)
  ;; called in Make-psi-for-bindings
  (when *trace-psi-construction*
    (if starting-psi
      (trace-msg "Starting from ~a" starting-psi)
      (trace-msg "There is no nearest psi to start from"))))

(deftrace :making-psi-from-scratch (type lattice-position-of-type)
  ;; called from Make-psi-for-bindings/from-scratch
  (when *trace-psi-construction*
    (trace-msg "The lattice position for ~a~
                ~%  is ~a" type lattice-position-of-type)))

(deftrace :result-of-making-psi-by-extending-existing-one (resulting-psi)
  ;; called from Make-psi-for-bindings/extend-existing-psi
  (when *trace-psi-construction*
    (trace-msg "  resulting psi: ~a" resulting-psi)))


;;;-----------------------------
;;; find or make lattice points
;;;-----------------------------

(deftrace :self-lp-already-exists (category lp)
  ;; called from Find-or-make-self-node
  (when *trace-lp-construction*
    (trace-msg "There is already a self-node lp for ~a:~
              ~%    ~a" category lp)))

(deftrace :have-to-make-self-node (category)
  ;; called from Find-or-make-self-node
  (when *trace-lp-construction*
    (trace-msg "No self-node for ~a. Making one." category)))

(deftrace :make-self-lp (lp)
  ;; called from Construct-self-lattice-point
  (when *trace-lp-construction*
    (trace-msg "   Make ~a" lp)))



(deftrace :get-lp-extending-parent-by-variable 
          (variable starting-lattice-point)
  ;; called from Find-or-make-next-lp-down-for-variable
  (when *trace-lp-construction*
    (trace-msg "Looking for a lp that extends ~a~
              ~%   by adding ~a" starting-lattice-point variable)))

(deftrace :lp-with-var-already-there-via-downpointers (lp)
  ;; called from Find-or-make-next-lp-down-for-variable
  (when *trace-lp-construction*
    (trace-msg "   Downlinks exist and already include:~
              ~%     ~a" lp)))

(deftrace :created-lp-extending-downlinks (lp)
  ;; called from Find-or-make-next-lp-down-for-variable
  (when *trace-lp-construction*
    (trace-msg "   Downlinks exist, but not the lp. Added:~
              ~%     ~a" lp)))

(deftrace :found-another-way-down-to-existing-lp (lp starting-lattice-point)
  ;; called from Find-or-make-next-lp-down-for-variable
  (when *trace-lp-construction*
    (trace-msg "   Found another way down to~
              ~%     ~a~
              ~%     Added new downlink to it from~
              ~%        ~a" lp starting-lattice-point)))

(deftrace :added-new-downlink-from-lp-for-lp (lp starting-lattice-point)
  ;; called from Find-or-make-next-lp-down-for-variable
  (when *trace-lp-construction*
    (trace-msg "   Extended ~a~
              ~%     downwards, creating ~a"
               starting-lattice-point lp)))


(deftrace :created-lp-to-extend-lp-via-var
          (lp starting-lattice-point variable)
  ;; called from New-lattice-point
  (when *trace-lp-construction*
    (trace-msg "Created ~a~
              ~%  which extends ~a~
              ~%  by adding ~a"
               lp starting-lattice-point variable)))




;;;----------------------------------
;;; working with composite referents
;;;----------------------------------

(deftrace :looking-for-opportunistic-binding (variable composite)
  ;; called from Opportunistic-binding-to-composite-head
  (when *trace-psi-construction*
    (trace-msg "Looking to opportunistically bind ~a~
                ~%    within ~a" variable composite)))

(deftrace :bind-to-psi-open-in (psi variable)
  ;; called from Opportunistic-binding-to-composite-head
  (when *trace-psi-construction*
    (trace-msg "~a is open in ~a" psi variable)))

(deftrace :not-binding-to-because-not-open-in (psi variable)
  ;; called from Opportunistic-binding-to-composite-head
  (when *trace-psi-construction*
    (trace-msg "~a is not open in ~a" psi variable)))


(deftrace :nothing-open-defaulting-to-head (variable head)
  ;; called from Opportunistic-binding-to-composite-head
  (when *trace-psi-construction*
    (trace-msg "None of the elements of the composite-referent~
                ~%   were open in ~a~
                ~%   binding the variable to ~a" variable head)))
