;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "extend"
;;;   Module:  "objects;model:psi:"
;;;  version:  2.0 October 2009

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
;; 2.0 (6/19/09) Still isn't right. So largely starting from scratch with simpler
;;  treatment.  10/9 Cleaned up.

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
; the variable you use to point to the value is 'unused'. 


;;/// remove this entry point when all the callers identified
(defun extend-psi-by-binding (variable value parent-psi)
  ;; Given a psi, we want the next psi down the lattice from it
  ;; that binds this variable to this value, making the psi
  ;; and the lattice point if they don't already exist.
  (find-or-make-psi-with-binding variable value parent-psi))

