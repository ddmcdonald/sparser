;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "extend"
;;;   Module:  "objects;model:psi:"
;;;  version:  1.0 July 2007

;; initiated 11/29/97. First given any content 7/7/98. 2/14/99 canonicalized
;; the find call.  2/4/05 Adding some generality - motivated by the call in
;; Spread-sequence-across-ordinals. 2/11/05 Added add-binding-to
;; 0.1 (2/22/07) Modified Make-psi-for-bindings/extend-existing-psi to pass through
;;      the starting-psi if there are no bindings. 3/19 Added special: 
;;      *force-new-psi* to handle the case where an identical description in fact 
;;      denoted a different individual. 7/29 'have totally forgotten what may
;;      have prompted that observation.
;; 1.0 (7/29/07) Got a case where two instances of the same description ("assassin
;;      one seven") in a text when to two different psi instead of the second
;;      instance locating the original, so revamped the indexing scheme by tieing
;;      it to interned v+v, starting with extend-psi-by-binding since it's at the
;;      center of so many operations.

(in-package :sparser)

;;;------------------------------------
;;; macro for binding variables on psi
;;;------------------------------------

; With an individual, one would call bind-variable and the binding would be
; a side-effect that doesn't touch your local varables. But with psi, the
; act of binding a variable returns a different psi than the one you started
; with. (See bind-v+v within bind-variable.)  This macro makes that transparent
; by incorporating the update on the variable your using to point to the psi

(defmacro add-binding-to (variable-for-i/p variable-name value)
  `(setq ,variable-for-i/p 
         (bind-variable ,variable-name ,value ,variable-for-i/p)))

; A flaw is that a function incorporating this will report that
; the variable you ue to point to the value is 'unused'. 


;;;-------------------------------------
;;; entry point from code (vs. runtime)
;;;-------------------------------------

(defun make-extending-psi (psi var-name+value-pairs)
  ;; This copies much of find-extending-psi -- ought to merge the
  ;; common parts, but only if we're sure of the callers.
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point psi)))
         (category (lp-category top-lp))
         (binding-instructions
          (decode-category-specific-binding-instr-exps/plist
           category var-name+value-pairs))
         (variables (variables-in-variable-value-plist binding-instructions)))
    (break "called make-extending-psi")
    (let ((new-psi
           (make-psi-for-bindings/extend-existing-psi psi binding-instructions)))
      ;; -- could populate the other lattice nodes here -- 
      new-psi)))


;;;---------------------------------------
;;; extending a psi by one variable/value
;;;---------------------------------------

(defun make-psi-for-bindings/extend-existing-psi 
       (starting-psi variable-value-plist)
  ;; iterate through the plist, adding in the bindings (v+v) 
  ;; in the order they appear in the list.
  (let ((last-psi starting-psi)
        (new-psi starting-psi)) ;; to deal with case of no plist
    (break "called Make-psi-for-bindings/extend-existing-psi")
    (do ((var (first variable-value-plist)
              (first remainder))
         (value (second variable-value-plist)
                (second remainder))
         (remainder (cddr variable-value-plist)
                    (cddr remainder)))
        ((null var))

      (setq new-psi (extend-psi-by-binding var value last-psi)
            last-psi new-psi))

    (tr :result-of-making-psi-by-extending-existing-one new-psi)
    new-psi ))


(defun extend-psi-by-binding (variable value parent-psi)
  ;; Given a psi, we want the next psi down the lattice from it
  ;; that binds this variable to this value, making the psi
  ;; and the lattice point if they don't already exist.
  (tr :extending-psi parent-psi variable value)
  (let* ((top-lp (climb-lattice-to-top (psi-lattice-point parent-psi)))
	 (category (lp-category top-lp))
	 (c+v (find-or-make-c+v category variable)))
    (let ((v+v (find-v+v-given-c+v&v c+v value)))
      (if v+v
	(let ((consistent-psi (vv-psi v+v)))
	  ;; check goes here that this psi (or one of the few that
	  ;; could be on the list) has the same set of other v+v
	  ;; as the parent
	  (car consistent-psi))
	(make-v+v-and-new-psi variable value parent-psi c+v)))))

 #|
  ;; Have the next node down found or made. 
  (let* ((next-lattice-point
          (find-or-make-next-lp-down-for-variable
           variable (psi-lattice-point parent-psi)))
         (candidate-psi (lp-instances next-lattice-point)))

    (or (when (and candidate-psi
		   (not *force-new-psi*))
          ;; See if there's a psi at this node with that binding.
          (find-psi-binding-var-to-value-in-list-of-psi
           variable value candidate-psi))

        (let* ((new-psi (make-psi-for-new-binding
                         parent-psi next-lattice-point variable value)))
          (push new-psi (lp-instances next-lattice-point))
          new-psi ))) |#
