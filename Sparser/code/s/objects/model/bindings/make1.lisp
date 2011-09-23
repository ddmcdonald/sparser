;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:bindings:"
;;;  version:  1.6 March 2005

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

(in-package :sparser)


;;;---------------------------
;;; call from Make/individual
;;;---------------------------

(defun apply-bindings (individual binding-instructions)
  (let ( bindings  variable  value )
    (dolist (instr binding-instructions)
      (setq variable (car  instr)
            value (cadr instr))
      (when value
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

  (let* ((variable
          (decode-variable-name var/name
                                :individual individual
                                :category category)))
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
