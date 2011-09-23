;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "find"
;;;   Module:  "objects;model:psi:"
;;;  version:  2.0 August 2009

;; broken out as its own file 7/29/98. Started elaborating 9/12.
;; Continued in ernest 1/31/99. 2/14 rewrote Find-psi-at-lattice-point.
;; (2/3/05) Fixed the inner dolist in Find-psi-at-lattice-point so that it doesn't
;; prematurely kick out a set of candidates just because it sees one that doesn't
;; match the target variable value.
;; 1.0 (8/6/07) Reworking things like "find psi with most bindings" to work off
;;  of interned v+v objects to fix old broken (unfinished?) design. 
;; 2.0 (6/19/09) Still isn't right. So largely starting from scratch with simpler
;;  treatment. Working on it through 8/29

(in-package :sparser)

;;;---------------------------------------------------------------------
;;; Version that picks up in the middle from a different starting point
;;;---------------------------------------------------------------------

(defun retrieve-psi-from-v+v (v+v parent-psi)
  ;; called from find-psi-with-binding
  (let ((associated-psi (vv-psi v+v)))
    (unless associated-psi
      (push-debug `(:retrieve-psi-from-v+v ,v+v ,parent-psi))
      (error "Bug -- has to be as least one psi associated with ~
            ~% the v+v ~a from parent-psi ~a" v+v parent-psi))
    (typecase associated-psi
      (psi
       (if (consistent-with-parent associated-psi parent-psi v+v)
	 (then
	   (tr :retrieved-psi-from-v+v associated-psi v+v)
	   associated-psi)
	 (else
	   (tr :v+v-retrieved-psi-not-consistent-with-parent
	       associated-psi parent-psi)
	   (make-new-psi-for-v+v v+v parent-psi))))
      (cons
       ;;(push-debug `(:retrieve-psi-from-v+v ,associated-psi ,v+v ,parent-psi))
       (dolist (psi associated-psi)
	 (when (consistent-with-parent psi parent-psi v+v)
	   (tr :retrieved-psi-from-among-v+v psi v+v)
	   (return-from retrieve-psi-from-v+v psi)))
       (tr :v+v-retrieved-psi-are-not-consistent-with-parent
	   associated-psi parent-psi)
       (make-new-psi-for-v+v v+v parent-psi))
      (otherwise
       (push-debug `(:retrieve-psi-from-v+v ,v+v ,parent-psi))
       (error "Unexpected value for the vv-psi of ~a" v+v)))))
	       

(defun consistent-with-parent (candidate-psi parent-psi v+v)
  ;; Does the psi that we have on this v+v include all and only
  ;; the v+v that are already on the parent?
  ;(push-debug `(:consistent-with-parent ,candidate-psi ,parent-psi ,v+v))
  ;(break) ;; (setq candidate-psi (second *) parent-psi (third *) v+v (fourth *))
  ;; Another way to do this could be the downlinks
  (let ((v+v-of-parent (psi-v+v parent-psi))
	(v+v-of-candidate (remove v+v (copy-list (psi-v+v candidate-psi))
				  :test #'eq)))
    ;;(push-debug `(,v+v-of-parent ,v+v-of-candidate))
    (when (= (length v+v-of-parent) (length v+v-of-candidate))
      (dolist (candidate-v+v v+v-of-candidate :match)
	(unless (memq candidate-v+v v+v-of-parent)
	  (return-from consistent-with-parent nil))))))




;;;----------------------------------------------------------
;;; version that starts with a type (a referential category)
;;;----------------------------------------------------------

;; Revising it 10/9/0 with first case of binding-instructions from a definition
;;
(defun find-psi (category binding-instructions)
  ;; Called from find/individual when the category and instructions don't fit
  ;; the criteria for simple individuals
  (tr :find-psi category binding-instructions)
  (when (consp (first binding-instructions))
    (setq binding-instructions
          (revamp-binding-instructions-as-variable-value-plist binding-instructions)))
  (let ((base-psi (find-or-make-psi-for-base-category category))
	found-psi )
    (do ((variable (car binding-instructions) (car rest))
	 (value (cadr binding-instructions) (cadr rest))
	 (rest (cddr binding-instructions) (cddr rest))
	 (parent-psi base-psi found-psi))
	((or (null variable)
	     (null parent-psi)))
      (setq found-psi (find-psi-with-binding variable value parent-psi)))
    (if found-psi
      (tr :found-psi found-psi)
      (tr :no-psi-found category binding-instructions))
    found-psi))


; A call to find/make an individual/psi in the code is formatted as a
; property list.  Some routines will shift it into an alist (e.g.
; decode-category-specific-binding-instr-exps), and the code threads
; are not consistent about what version we have at what logical point
; in the process. Revamp takes the alist into a plist when needsbe.
; Obviously this could be improved upon.

(defun revamp-binding-instructions-as-variable-value-plist (alist)
  (let ( var  value  variables  variable-value-plist )
    (dolist (pair alist)
      (setq var (first pair)
            value (second pair))
      (push var variables)
      (push var variable-value-plist)
      (push value variable-value-plist))

    (nreverse variable-value-plist)))


 


;;============= dubious below here -------------------

;;;---------------
;;; common go-fer
;;;---------------

(defun find-psi-at-lattice-point (lp variable-value-pairs)
  (break "find-psi-at-lattice-point")
  ;; is there, among the instances aready at this lp, one that
  ;; is an instance of these v+v's ?   
  ;; Called from Find-psi-with-bindings, Find-psi-of-type-with-bindings,
  ;; find-extending-psi
  (break "called Find-psi-at-lattice-point")
  (do ((variable (pop variable-value-pairs) (pop variable-value-pairs))
       (value (pop variable-value-pairs) (pop variable-value-pairs))
       (candidates (lp-instances lp) new-candidates)
       (new-candidates))
      ((null variable)
       ;; sanity check
       (when candidates
             (unless (null (cdr new-candidates))
               (break "more than one psi with the same bindings:~
                       ~%   ~a~%" candidates))
             (first candidates)))

    ;; zero the per-loop accumulator
    (setq new-candidates nil)

    ;; see if any of the psi that have matched so far continue
    ;; to match
    (dolist (psi candidates)
      (when (psi-binds-variable-to-value psi variable value)
        (push psi new-candidates)))))


;;;------------------------
;;; intermediate cases ???
;;;------------------------


(defun find-psi-binding-var-to-value-in-list-of-lp (var value list)
  (break "find-psi-binding-var-to-value-in-list-of-lp")
  (dolist (lattice-point list)
    (find-psi-binding-var-to-value-in-list-of-psi 
     var value (lp-instances lattice-point))))



     
;;;-------------
;;; subroutines
;;;-------------

(defun variables-in-variable-value-plist (variable-value-plist)
  (break "variables-in-variable-value-plist")
  (when (consp (first variable-value-plist))
    (break "called with an alist"))
  (let ((variable-next? t)
        variables )
    (dolist (unit variable-value-plist)
      (when variable-next?
        (push unit variables))
      (setq variable-next? (not variable-next?)))
    
    (nreverse variables)))

