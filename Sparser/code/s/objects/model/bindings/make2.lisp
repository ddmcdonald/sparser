;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:bindings:"
;;;  version:  1.6 June 2009

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

(in-package :sparser)


;;;---------------------------
;;; call from Make/individual
;;;---------------------------

(defun apply-bindings (individual binding-instructions)
;  (break "apply-bindings1")
  (let ( bindings  variable  value )
    (dolist (instr binding-instructions)
      (setq variable (car  instr)
            value (cadr instr))
      (when value
;	 (break "apply-bindings2"))
        (push (bind-variable variable value individual)
              bindings)))
    (nreverse bindings)))


;;;--------
;;; core
;;;--------

; And see the macro add-binding-to when dealing with psi

(defun bind-variable (var/name value individual
                      &optional category)
  (when (typep individual 'psi)
    (let ((new-psi (bind-v+v var/name value individual category)))
      (return-from bind-variable new-psi)))

  (unless category
    (cond 
      ((referential-category-p individual) ;; 6/22/09
       (setq category individual))
      (t (setq category (indiv-type individual)))))
  ;; ddm 6/19/09 How did this ever work? The fn above this is
  ;; make-simple-individual which deliberately make indiv-type a list,
  ;; yet the find-variable just below complains about that
  (when (consp category) ;; new 6/19
    (setq category (car category)))

  (let ((variable (or (when (or (typep var/name 'lambda-variable)
                                (typep var/name 'anonymous-variable))
                        var/name)
                      (find-variable-for-category var/name category))))
    (unless variable
      (if category
        (break "Check spelling: there is no variable named ~A~
                ~%associated with the category ~A" var/name category)
        (break "Check spelling: there is no variable named ~A~
                ~%associated with the category of the individual ~A"
               var/name individual)))
    (bind-variable/expr variable value individual)))


(defun bind-variable/expr (variable value individual)
  (let ((established-binding
         (find/binding variable value individual)))
;    (break "bind-expr1")
    (if established-binding
      (let ((count-cons
             (member :incidence-count (unit-plist established-binding))))
        (rplacd count-cons
                (cons (1+ (cadr count-cons))
                      (cddr count-cons)))
        established-binding )
        
      (let ((new-binding (make/binding variable value individual)))
        (setf (unit-plist new-binding)
              `(:incidence-count 1 ,(unit-plist new-binding)))
        (when-binding-hook value variable individual)
        new-binding ))))




(defun make/binding (variable value individual &optional no-index-on-body?)
  (declare (special *index-under-permanent-instances*))
  (let ((b (if *index-under-permanent-instances*
             (make-binding)
             (allocate-binding))))

    (setf (binding-body b)      individual)
    (setf (binding-variable b)  variable)
    (setf (binding-value b)     value)

    (index/binding b variable no-index-on-body?)
     b ))



(defun remove-binding-from-individual (b i)
  (unindex/binding b i)
  (deallocate-binding b)
  b )
