;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005,2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "extend"
;;;   Module:  "objects;model:psi:"
;;;  version:  2.1 March 2013

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
;;       treatment.  10/9 Cleaned up.
;; 2.1 (3/22/13) Determined that add-binding-to is only used twice, so flushing
;;       the macro because it's calling context is completely different than this
;;       would suggest since it's old code that calls in and there's not a variable in 
;;       that first position.

(in-package :sparser)


;;/// remove this entry point when all the callers identified
(defun extend-psi-by-binding (variable value parent-psi)
  (break "who calls this -- change what they call")
  ;; Given a psi, we want the next psi down the lattice from it
  ;; that binds this variable to this value, making the psi
  ;; and the lattice point if they don't already exist.
  (find-or-make-psi-with-binding variable value parent-psi))

