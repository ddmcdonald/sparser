;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2013-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:bindings:"
;;;  version:  1.9 June 2015

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
;; 1.8 (12/28/14) Added a trap so you can't add bindings to categories.
;;      Which is debatable, but such bindings should at least be reclaimable.
;; investigations using SBCL -- minor tweaks
;; 3/21/2015 FIX OVERZEALOUS correction of find/binding -- some problem in lookup for
;;  find/binding which caused bad definition in (define-unit-of-measure ...) for "nm"
;; 4/18/2015 removed fix to bind-variable/expr, which prevented multiple bindings of a variable on a single individual
;; 1.9 (4/20/15) dereferenced instance of anonymous variable in 
;;      bind-variable
;;     (6/5/15) wrapped *break-on-pattern-outside-coverage?* around the 
;;      complaint in bind-variable when the individual doesn't have the variable
;;      it wants to bind.
;; 1.10 6/27/15 Now has *description-lattice* cases. 6/30/15 pulling out
;;     now deadwood PSI cases.

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

(defun old-bind-variable (var/name value individual
                          &optional category)
  (declare (special *legal-to-add-bindings-to-categories*
                    *break-on-pattern-outside-coverage?*))
  ;;try to find out who is binding a varibale named category
  ;;  seems to be make-individual-for-DM&P
  ;;     (when (eq var/name 'category) (break "category variable"))
    
  (when (typep individual 'category)
    ;;/// this is debatable in principle, but it would be very
    ;; permanent, so it's probably something to be crept up on
    ;; slowly (e.g. like reclaiming bindings would be a good
    ;; initial step.
    (unless *legal-to-add-bindings-to-categories*
      (error "It doesn't make sense to add a binding to the ~
              category ~a" individual)))
  
  ;; individual case
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
    #+ignore(format t "~&~&!! Can't dereference anonymous variable ~a against category ~a.~
    ~%Can't do binding. Leaving object unchanged.~%" var/name individual)
    (values individual nil))
   (t
    (let ((variable 
           (or (when (typep var/name 'lambda-variable)
                 var/name)
               (when (typep var/name 'anonymous-variable)
                 (dereference-variable var/name individual))
               (find-variable-for-category var/name category))))
      (unless variable
        ;; motivated by "lipofectamine 2000" where 2000 is read as a year
        (when *break-on-pattern-outside-coverage?*
          (push-debug `(,var/name ,value ,individual ,category))
          (if category
              (break "There is no variable named ~A~
                    ~%associated with the category ~A" var/name category)
              (break "There is no variable named ~A~
                     ~%associated with the category of the individual ~A"
                     var/name individual))))
      (when variable
        (let ((binding (bind-variable/expr variable value individual)))
          (values individual binding)))))))


(defun bind-dli-variable (var/name value individual &optional category)
  ;;new name for method in transition -- makes it easier to tell when other calls
  ;; have been edited to use the new "contract" -- 
  ;; bind-dli-variable returns the resulting individual as its first (primary) value
  ;; it returns the binding object as its second (secondary) value
  (if *description-lattice*
    (find-or-make-lattice-subordinate individual var/name value category)
    (old-bind-variable var/name value individual category)))



(defun bind-variable/expr (variable value individual)
  (declare (special *track-incidence-count-on-bindings*))
  (let ((binding
         (or (when *track-incidence-count-on-bindings*
               (find/binding variable value individual))
             (make/binding variable value individual))))
    (when-binding-hook variable individual value)
    binding))


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
      (setf (unit-plist b) `(:incidence-count 1 ,(unit-plist b))))

    (index/binding b variable no-index-on-body?)
     b ))



(defun remove-binding-from-individual (b i)
  (unindex/binding b i)
  (deallocate-binding b)
  b )
