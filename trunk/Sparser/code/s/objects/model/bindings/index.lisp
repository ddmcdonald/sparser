;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:bindings:"
;;;  version:  0.2 April 2013

;; initiated 7/20/92 v2.3
;; (6/4/93) tweeked the checks for valid values in Index/binding
;; (1/7/94) added Binding-of-bindings. allowed bindings to be done to categories
;; 0.1 (4/29) refined Index/binding and left a stub. (8/8) added Bound-as
;;      Continued tweeking ...8/19
;; 0.2 (1/7/96) added Unindex/binding and subrs.
;;     (3/4/05) added optional to Index/binding to just index the value
;;     (4/1/13) Added checks for the variable being anonymous, which post-dates
;;      all this code. Ignored index link to the value

(in-package :sparser)

#|  7/20/92
    Bindings are either permanent or temporary.  If temporary, they
 are stored in the binding-resource and are allocated and deallocated.
 If permanent, there is no such global pointer to all of them.

    Bindings are pointed to by the "binds" fields of the individuals
 in their body fields, and the "bound-in" fields of the individuals
 in their value fields.  They are also cross indexed as "instances"
 of their variables.
|#

;;;------
;;; find
;;;------

(defun binding-of-individual (variable individual)
  ;; return the binding of the designated variable in the
  ;; "binds" field of this individual
  (etypecase variable
    (symbol
     (let ((name variable)
           (category (first (indiv-type individual))))
       (setq variable (find-variable-for-category name category))
       (unless variable
         (error "There is no lambda-variable with the name ~A"
                name))))
    (lambda-variable variable))

  (let ((bindings (indiv-binds individual)))
    (when bindings
      (let ((binding
             (find variable bindings :key #'binding-variable)))
        binding ))))


(defun binding-of-bindings (var list-of-bindings)
  (let ((variable (etypecase var
                    (symbol (lambda-variable-named var))
                    (lambda-variable var))))
    (dolist (b list-of-bindings)
      (when (eq (binding-variable b) variable)
        (return-from binding-of-bindings b)))
    nil ))




(defun check-bindings (individual binding-instructions)

  ;; does the individual have a binding that fits these instructions
  ;; for bindings, i.e. pairs of variables and values.

  (let ( variable  value )
    (dolist (vv binding-instructions)
      (setq variable (car vv)
            value (cadr vv))
      (unless (find/binding variable value individual)
        (return-from check-bindings nil)))
    t ))



(defun find/binding-of-variable (variable list-of-bindings category)
  ;; does one of the bindings in this list involve this variable?
  ;; If there is more than one, pass back a list 
  (etypecase variable
    (symbol
     (let ((name variable))
       (setq variable (find-variable-for-category name category))
       (unless variable
         (error "There is no lambda-variable with the name ~A"
                name))))
    (lambda-variable variable))

  (let ( binding )
    (dolist (b list-of-bindings)
      (when (eq (binding-variable b) variable)
        (if binding
          (if (listp binding)
            (push b binding)
            (setq binding (list b binding)))
          (setq binding b))))
    binding ))



(defun value-of-instr (variable binding-instructions)
  ;; return the value of the instruction involving this variable
  (let ((symbol (etypecase variable
                  (symbol variable)
                  (lambda-variable (var-name variable)))))

    (dolist (instr binding-instructions)
      (when (eq symbol
                (var-name (first instr)))
        (return-from value-of-instr (second instr))))
    nil ))


;;;-----------------------------------
;;;              -------
;;;               index
;;;              -------
;;;-----------------------------------


(defun index/binding (binding variable &optional no-index-on-body?)
  (let ((body (binding-body binding))
        (value (binding-value binding)))

    (unless no-index-on-body?
      ;; link the binding to its body
      (if (individual-p body)
        (push-binding-onto-binds-field binding body)
        (if (referential-category-p body)
          (push-binding-onto-binds-field binding body)
          (error "The body of binding ~A~%isn't an individual: ~A"
                 binding body))))

    ;; link it to its value
    (if (individual-p value)
      (push-binding-onto-bind-in-field binding value)

      ;; if it isn't an individual, then it might be a primitive and
      ;; we don't put in the backpointer ( the "bound-in" field), or
      ;; the variable might not have a restriction in which case it's
      ;; ok if the value is a word, but otherwise we check it out
      ;; in detail.
      #+ignore  ;; case in point is an or of two categories
      (unless (word-p value)
        (let ((v/r (var-value-restriction variable)))
          (when v/r
            (if (consp v/r)
              (unless (member :primitive v/r :test #'eq)
                (break "Data problem?  v/r is a list but not a ~
                        primitive:~%~A" v/r))

              ;; so it has a specific restriction, and if its
              ;; consistent then we let the binding go through
              ( ;;/// check up the specialization ladder and bind
                ;; to the category if need-be
               ))))))

    ;; index it on the variable -- this is where it is
    ;; looked up from
    (push-binding-onto-instances-field variable binding value)

    binding ))



(defun unindex/binding (b  &optional (body (binding-body b)) )
  (let ((value (binding-value b)))

    (when (or (individual-p body)
              (referential-category-p body))
      (remove-binding-from-binds-field b body))

    (when (individual-p value)
      (remove-binding-from-bound-in-field b value))

    (unindex-binding b (binding-variable b) value)

    b ))
    



;;;----------------------------------------
;;; linking binding to its two individuals
;;;----------------------------------------

(defun push-binding-onto-binds-field (binding individual)
  (etypecase individual
    (individual
     (let ((existing-bindings (indiv-binds individual)))
       (setf (indiv-binds individual)
             (cons binding existing-bindings))
       binding ))
    (referential-category
     (let ((existing-bindings (cat-binds individual)))
       (setf (cat-binds individual)
             (cons binding existing-bindings))
       binding ))))

(defun remove-binding-from-binds-field (b i)
  (etypecase i
    (individual
     (setf (indiv-binds i) (delete b (indiv-binds i) :test #'eq)))
    (referential-category
     (setf (cat-binds i) (delete b (cat-binds i) :test #'eq)))))



(defun push-binding-onto-bind-in-field (binding individual)
  (let ((existing-bindings (indiv-bound-in individual)))
    (setf (indiv-bound-in individual)
          (cons binding existing-bindings))
    binding ))

(defun remove-binding-from-bound-in-field (b i)
  (setf (indiv-bound-in i)
        (delete b (indiv-bound-in i) :test #'eq)))




;;;-------
;;; clear
;;;-------

(defun clear-instances/variable (v)
  (setf (var-instances v) nil))

(defun clear-deallocated-bindings/var (v)
  (let ( valid-entries  unit  viable-bindings )
    (dolist (entry (var-instances v))
      (setq unit (car entry))
      (dolist (b (cdr entry))
        (unless (deallocated-binding? b)
          (push b viable-bindings)))
      (when viable-bindings
        (push `(,unit ,@viable-bindings) valid-entries)))

    (setf (var-instances v) valid-entries)
    ))


;;;-------
;;; index
;;;-------

(defparameter *trace-binding-indexing* nil)
(defun trace-binding-indexing ()
  (setq *trace-binding-indexing* t))
(defun unTrace-binding-indexing ()
  (setq *trace-binding-indexing* nil))


(defun push-binding-onto-instances-field (variable binding value)
  ;; add the binding to the index under this value of the variable
  (unless (typep variable 'anonymous-variable)
    ;; These are missing the needed fields. As a rule they should be
    ;; avoided
    (let ((field (var-instances variable))
          (*print-short* t))
      (declare (special *print-short*))
      (if (null field)
        (setf (var-instances variable)
              `((,value . (,binding))) )
        
        (let ((prior-entry (assoc value field :test #'eq)))
          (if prior-entry
            (then
             (when *trace-binding-indexing*
               (format t "~&Indexing ~A under ~A [prior]~%"
                       binding variable))
             (rplacd prior-entry
                     (kcons binding (cdr prior-entry))))
            (else
             (when *trace-binding-indexing*
               (format t "~&Indexing ~A under ~A [1st]~%"
                       binding variable))
             (setf (var-instances variable)
                   (kcons `(,value . (,binding))
                          field)))))))
    variable ))


(defun find/binding (variable value individual)
  ;; does a binding with this value for the variable exist?
  ;; Look in the variable's index under this value and see 
  ;; whether one of the bindings there has this individual
  ;; as its body
  (push-debug `(,variable ,value ,individual))
  (when (typep variable 'anonymous-variable)
    (setq variable (dereference-variable variable individual)))

  (let ((instances-alist (var-instances variable)))
    (when instances-alist
      (let ((bindings (cdr (assoc value instances-alist
                                  :test #'eq))))
        ;; /// If the individual gets dicy to identify (being arbitrary)
        ;; the we probably want to shift to v+v objects.
        (when bindings
          (find individual bindings :test #'eq
                :key #'binding-body))))))




(defun unindex-binding (b variable value)
  ;; Using the value as the key, lookup for the binding among
  ;; those indexed by the variable and remove it from the index

  (unless (typep variable 'anonymous-variable)
    ;; nothing to remove

    (unless (deallocated-binding? b)
      ;; forstalls the same binding being reached from different
      ;; directions during an extensive reclaimation

      (catch :aborted-binding-unindexing
      
        (let ((instances-alist (var-instances variable))
              (*print-short* t))
          (declare (special *print-short*))
          (unless instances-alist
;            (push-debug `(,b ,variable ,value))
;            (cerror "ignore it and continue"
;                    "Expected ~A to have an index" variable)
            (return-from unindex-binding))
        
          (let ((bindings-entry (assoc value instances-alist
                                       :test #'equal)))
            ;; using #'equal because some values are lists
            (if bindings-entry
              (then
               (when *trace-binding-indexing*
                 (format t "~&Unindexing ~A from ~A~%"
                         b variable))
               (if (third bindings-entry) ;; there is more than one
                 (splice-out-binding-from-alist-entry bindings-entry b)
                 (excise-value-entry instances-alist value variable))
               b )
              
              (if (list-type-variable? variable)
                (check/unindex-dynamically-extended-list
                 instances-alist variable value b)
                (else
                 (push-debug `(,value ,variable))
;                 (cerror "ignore it and continue"
;                         "Expected the index for~% value = ~A~
;                      ~% variable = ~A~%to have some listed bindings"
;                        value variable)
                 (return-from unindex-binding))))))))))


(defun excise-value-entry (instances-alist value variable)
  (let ((*print-short* t))
    (declare (special *print-short*))
    (if (eq value (caar instances-alist))
      (let ((cell instances-alist))
        (setf (var-instances variable) (cdr instances-alist))
        (when *trace-binding-indexing*
          (format t "~&   [1st in var's entry] under ~A~
                     ~%   ~A bindings left" value
                  (length (cdr instances-alist))))
        (deallocate-kons cell))

      (let* ((prior-cell instances-alist)
             (next-cell (cdr prior-cell))
             (next-entry (car next-cell)))
        (loop
          (when (null next-entry)
            (break "value: Couldn't find the entry for ~A" value)
            (return))
          (when (eq value (car next-entry))
            (rplacd prior-cell
                    (cdr next-cell))
            (when *trace-binding-indexing*
              (format t "~&   [later in entry] under ~A~
                         ~%   ~A bindings left" value
                      (length (cdr instances-alist))))
            (deallocate-kons next-cell)
            (return))
          (setq prior-cell next-cell
                next-cell (cdr next-cell)
                next-entry (car next-cell)))))))


(defun splice-out-binding-from-alist-entry (bindings-entry b)
  (if (eq b (second bindings-entry))
    (let ((cell (cdr bindings-entry)))
      (rplacd bindings-entry
              (cddr bindings-entry))
      (when *trace-binding-indexing*
        (format t "~&   was the only binding left~
                   ~%   and 1st in the index~%"))
      (deallocate-kons cell))

    (let* ((prior-cell (cdr bindings-entry))
           (next-cell (cdr prior-cell))
           (next-binding (car next-cell)))
      (loop
        (when (null next-binding)
          ;;(break "Couldn't find the binding~%  ~A~%" b)
          (return))
        (when (eq next-binding b)
          (rplacd prior-cell
                  (cdr next-cell))
          (when *trace-binding-indexing*
            (format t "~&   was the only binding left~
                       ~%   Not 1st in the index~%"))
          (deallocate-kons next-cell)
          (return))
        (setq prior-cell next-cell
              next-cell (cdr next-cell)
              next-binding (car next-cell))))))



;;;-----------------------------------------
;;; case of list values extended on the fly
;;;-----------------------------------------

(defun list-type-variable? (v)
  (let ((v/r (var-value-restriction v)))
    (when (consp v/r)
      (when (eq (first v/r) :primitive)
        (eq (second v/r) 'list)))))

(defun check/unindex-dynamically-extended-list
       (instances-alist variable value b)
  (if (cdr value)
    ;; does the list have more than one item on it?
    ;; If so, then the index may well have been established on the
    ;; very first item (1st one put on the list -- later ones are
    ;; added -in front- of the earlier ones) and we will find an
    ;; entry if we look there.   ///in general it could be any
    ;; suffix of the list, depending on how big the list was to
    ;; start with.
    (let* ((last-cell (last value))
           (bindings-entry (assoc last-cell instances-alist
                                  :test #'equal)))
      (if bindings-entry
        (then
          (if (third bindings-entry)
            (splice-out-binding-from-alist-entry bindings-entry b)
            (excise-value-entry instances-alist last-cell variable))
          (when *trace-binding-indexing*
            (format t "~&   list-value path used~%")))

        ;; still not there
        (else
          (break "The list value for~
                  ~%  ~A~
                  ~%Does not appear in in the index of its variable,~
                  ~%not even indexed by its original item." b)
          (throw :aborted-binding-unindexing nil))))

    (break "check list - value is a singleton")))






;;;---------------------------
;;; functions using the index
;;;---------------------------

(defun bound-as (var-name value)
  ;; return all those bindings that involve this variable and value
  (let ((variable (decode-variable-name var-name)))
    (unless variable
      (error "There is no variable named ~A" var-name))
    (let ((instances (var-instances variable)))
      (when instances
        (cdr (assoc value instances))))))
