;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "hooks"
;;;   Module:  "objects;model:bindings:"
;;;  version:  January 1996

;; file created 11/30/91 v2.1. Given some contents 1/8/96. Elaborated through 1/9
;; Repurposing it 4/5/13, pushing the old code to one side.

(in-package :sparser)

;;;-------
;;; index
;;;-------

(defparameter *variables-to-alist-of-hook-entries*
              (make-hash-table :test #'eq)
  "This is a two-level hash. 1st on the variable, and then
   on the category of the individual being bound")


;;;----------
;;; def form
;;;----------

;(defmacro when-binding (value-category var/name


;(defun when-binding/expr


;;;------
;;; hook 
;;;------

(defun when-binding-hook (variable binder bound &key established new)
  ;; Called by bind-variable/expr just before it returns
  (push-debug `(,variable ,binder ,bound ,established ,new))
  (let ((alist (gethash variable *variables-to-alist-of-hook-entries*)))
    alist))


;;;------------------------------ original notion ----------------------------

#|  If memory serves, this was part of an elaborate hack to move
 information around when it was discovered at the wrong level
 in the parse tree. 
|#

;;;----------
;;; def form
;;;----------
#+ignore
(defmacro when-binding (value-category var/name &optional body-category
                        &key transfer)
  `(when-binding/expr ',value-category ',var/name ',body-category
                      :transfer-instructions ',transfer))

#+ignore
(defun when-binding/expr (value-category-name var/name body-category-name
                          &key transfer-instructions)
  
  (unless (all-dotted-pairs? transfer-instructions)
    (error "Bad format: the transfer instructions in a When-binding ~
            form~%must all be dotted pairs.~%Variable = ~A~
            ~%value's category = ~A~%"
           value-category-name body-category-name))
  
  (let ((value-category (category-named value-category-name))
        (body-category (category-named body-category-name))
        variable )

    (unless value-category
      (error "There is no category named ~A" value-category-name))
    (unless body-category
      (error "There is no category named ~A" body-category-name))

    (setq variable (decode-variable-name var/name :category body-category))

    (setq transfer-instructions
          (postprocess-transfer-instructions
           transfer-instructions value-category body-category))

    (let ((alist (gethash variable *variables-to-alist-of-hook-entries*)))
      (if alist
        (let ((entry (assoc value-category alist :test #'eq)))
          (if entry
            (rplacd entry transfer-instructions) ;; update them

            (setf (gethash variable *variables-to-alist-of-hook-entries*)
                  (cons `( ,value-category . ,transfer-instructions)
                        alist))))
        (else
          (let ((alist `(( ,value-category . ,transfer-instructions)) ))
            (setf (gethash variable *variables-to-alist-of-hook-entries*)
                  alist)))))))


(defun all-dotted-pairs? (list-of-conses)
  (when (listp list-of-conses)
    (dolist (item list-of-conses t)
      (if (consp item)
        (when (consp (cdr item))
           (return nil))
        (return nil)))))



(defun postprocess-transfer-instructions (transfer-instructions
                                          value-category body-category)

  ;; The instructions are a set of dotted pairs. The first names a variable
  ;; in the value-category, the second a variable in the body category.
  ;; Their meaning is that the value bound to the first is to be copied
  ;; up and bound to the second.  Here we replace the names with the
  ;; corresponding actual variable objects. 
  (let ( reconstructed-pairs  value-var-name value-var  body-var-name body-var )
    (dolist (pair transfer-instructions)
      (setq value-var-name (car pair)
            body-var-name (cdr pair))
      (setq value-var
            (decode-variable-name value-var-name :category value-category))
      (setq body-var
            (decode-variable-name body-var-name :category body-category))
      (push `(,value-var . ,body-var)
            reconstructed-pairs))
    (nreverse reconstructed-pairs)))
            





;;;------
;;; hook 
;;;------
#+ignore
(defun when-binding-hook (bound-individual variable binding-individual)
  ;; Called at the end of Bind-variable when the binding is new.
  (let ((alist (gethash variable *variables-to-alist-of-hook-entries*)))
    (when alist
      (let ((transfer-instructions
             (cdr (assoc (itype-of bound-individual) alist :test #'eq))))

        (when transfer-instructions
          (copy-values-up-to-binder bound-individual
                                    binding-individual
                                    transfer-instructions))))))

;;;---------------------
;;; doing the transfers
;;;---------------------

(defun copy-values-up-to-binder (bound-individual binding-individual
                                 variable-pairs )
  (let ( lower-var higher-var  lower-value )
    (dolist (pair variable-pairs)
      (setq lower-var (car pair)
            higher-var (cdr pair))

      (setq lower-value (value/var lower-var bound-individual))

      (when lower-value
        ;; There doesn't have to be. The presence of some binding may
        ;; be dependent on how the bound individual was itself
        ;; arrived at. 
        (bind-variable higher-var lower-value binding-individual)))))


;;;--------------------------------------------------------------------------
;;; check for whether an individual has had this done to it for a given slot
;;;--------------------------------------------------------------------------

(defun probably-the-result-of-type-raising (variable individual)
  ;; Called from Index/individual/key/hash as a check for exactly what
  ;; value it should index the object against for this variable. 
  ;; If there's been a transfer then there will be two bindings of the variable
  ;; on the object, and it's the second (earliest) that's the one that
  ;; any subsequent instances of this same object will appear to be binding
  ;; since, for them, the transfer won't yet have occurred.
  (let ((bindings (indiv-binds individual))
        1st  2d )

    (dolist (b bindings)
      (when (eq (binding-variable b) variable)
        (if 1st
          (setq 2d b)
          (setq 1st b))))

    (when 2d
      (binding-value 2d))))
