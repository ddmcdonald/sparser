;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "find"
;;;   Module:  "objects;model:psi:"
;;;  version:  0.0 February 2005

;; broken out as its own file 7/29/98. Started elaborating 9/12.
;; Continued in ernest 1/31/99. 2/14 rewrote Find-psi-at-lattice-point.
;; (2/3/05) Fixed the inner dolist in Find-psi-at-lattice-point so that it doesn't
;; prematurely kick out a set of candidates just because it sees one that doesn't
;; match the target variable value.

(in-package :sparser)

;;;----------------------------------------------------------
;;; version that starts with a type (a referential category)
;;;----------------------------------------------------------

(defun find-psi (type binding-instructions)
  ;; called from find/individual
  (when (consp (first binding-instructions))
    (setq binding-instructions
          (revamp-binding-instructions-as-variable-value-plist binding-instructions)))
  (let ((variables (variables-in-variable-value-plist binding-instructions)))
    (break "call to find-psi")
    (tr :find-psi type binding-instructions)
    (let ((psi
           (find-psi-of-type-with-bindings type variables binding-instructions)))
      (if psi
        (tr :found-psi psi)
        (tr :no-psi-found type binding-instructions))
      psi)))


(defun find-psi-of-type-with-bindings (type variables variable-value-pairs)
  ;; return nil if we don't
  (let ((lp (find-lattice-point-with-variables type variables)))
    (when lp
      (find-psi-at-lattice-point lp variable-value-pairs))))



;;;--------------------------------
;;; version that starts with a psi
;;;--------------------------------

(defun find-extending-psi (psi var-name+value-pairs)
  ;; n.b. the search has to work regardless of what variable we
  ;; start with.
  (let* ((lp (psi-lattice-point psi))
         (top-lp (climb-lattice-to-top lp))
         (category (lp-category top-lp))
         (binding-instructions
          (Decode-category-specific-binding-instr-exps/plist
           category var-name+value-pairs))
         (variables (variables-in-variable-value-plist binding-instructions)))
    (break "called find-extending-psi")
    (let ((target-lp
           (find-lattice-point-with-variables category variables)))
      (when target-lp
        (let ((target-psi (find-psi-at-lattice-point target-lp binding-instructions)))
          (if target-psi
            (then (tr :found-psi-extension psi target-psi)
                  target-psi)
            (else (tr :no-psi-extension psi)
                  nil)))))))
 

;;;---------------
;;; common go-fer
;;;---------------

(defun find-psi-at-lattice-point (lp variable-value-pairs)
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

(defun find-psi-with-the-most-bindings (type variables variable-value-plist)
  ;; When called from Make-psi-for-bindings we've already determined
  ;; that there is no psi already created that binds these variables
  ;; to these values, and we're setting about to make one. To that
  ;; end we want the psi (if it exists) that binds some of these
  ;; variables to the indicated values.   
  (multiple-value-bind (psi variable remaining-variables)
                       (some-psi-binds-value-to-variable-in-category
                        type variables variable-value-plist)
    (when psi
      (break))))


(defun some-psi-binds-value-to-variable-in-category
       (type variables variable-value-plist)
  ;; Iterate through the index on that lattice point that takes us from
  ;; variables to all the lattice-points that include them.
  (let ((top-index (lp-index-by-variable
                    (cat-lattice-position type)))
        (remaining-variables variables)
        lattice-points  1st-var-to-hit  psi)        
    (break "called Some-psi-binds-value-to-variable-in-category")
    (do ((var (first variable-value-plist)
              (first remaining-pairs))
         (value (second variable-value-plist)
                (second remaining-pairs))
         (remaining-pairs (cddr variable-value-plist)
                          (cddr remaining-pairs)))
        ((null var))

      (setq lattice-points (cdr (assq var top-index)))

      (setq psi (find-psi-binding-var-to-value-in-list-of-lp
                 var value lattice-points))
      (when psi 
        (setq 1st-var-to-hit var
              remaining-variables (delete var remaining-variables))))

    (when 1st-var-to-hit
      (values psi 1st-var-to-hit remaining-variables))))




(defun find-psi-binding-var-to-value-in-list-of-lp (var value list)
  (dolist (lattice-point list)
    (find-psi-binding-var-to-value-in-list-of-psi 
     var value (lp-instances lattice-point))))


(defun find-psi-binding-var-to-value-in-list-of-psi (var value list)
  ;; Given a list of psi, does any one of them bind that variable
  ;; to that value?
  (break "called Find-psi-binding-var-to-value-in-list-of-psi")
  (let ( v+v-that-is-instance-of-variable )
    (dolist (psi list nil)
      (setq v+v-that-is-instance-of-variable
            (find var (psi-v+v psi) :test #'eq :key #'vv-variable))
      (when v+v-that-is-instance-of-variable
        (when (eq value (vv-value v+v-that-is-instance-of-variable))
          (return-from Find-psi-binding-var-to-value-in-list-of-psi
            psi))))))
      
;; redundant w/ above -- sort it out when we know who calls this one
(defun find-psi-with-binding (candidates variable value)
  (break "who calls this?")
  (dolist (psi candidates nil)
    (dolist (vv (psi-v+v psi))
      (when (eq (vv-variable vv) variable)
        (when (eq (vv-value vv) value)
          (tr :located-known-psi psi)
          (return-from Find-psi-with-binding 
            psi))))))


     
;;;-----------
;;; base case
;;;-----------

(defun find-psi-for-base-category (c)
  (break "who calls this?")
  (let ((lattice-point (find-self-node c)))
    (when lattice-point
      (let ((category-psi (lp-instance lattice-point)))
        category-psi))))




;;;-------------
;;; subroutines
;;;-------------

(defun variables-in-variable-value-plist (variable-value-plist)
  (when (consp (first variable-value-plist))
    (break "called with an alist"))
  (break "call to Variables-in-variable-value-plist")
  (let ((variable-next? t)
        variables )
    (dolist (unit variable-value-plist)
      (when variable-next?
        (push unit variables))
      (setq variable-next? (not variable-next?)))
    
    (nreverse variables)))


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
