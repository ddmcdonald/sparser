;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:bindings:"
;;;  version:  June 2019

;; initiated 7/20/92 v2.3
;; (6/4/93) tweeked the checks for valid values in Index/binding
;; (1/7/94) added Binding-of-bindings. allowed bindings to be done to categories
;; 0.1 (4/29) refined Index/binding and left a stub. (8/8) added Bound-as
;;      Continued tweeking ...8/19
;; 0.2 (1/7/96) added Unindex/binding and subrs.
;;     (3/4/05) added optional to Index/binding to just index the value
;;     (4/1/13) Added checks for the variable being anonymous, which post-dates
;;      all this code. Ignored index link to the value
;; 0.3 3/21/2015 key changes to find/binding based on SBCL profiling
;;     3/21/2015 FIX OVERZEALOUS correction of find/binding -- some problem in lookup for
;;       find/binding which caused bad definition in (define-unit-of-measure ...) for "nm"
;;     3/22/2015 speed up access to var-instances by using hash table
;;     4/18/15 Continued redefinition of find/binding by searching on the
;;        individual rather than the list of bindings on the variable

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
  "Return the binding of the designated variable in the
   'binds' field of this individual."
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
  "Given a list of bindings, return the first one in the list
   that binds the designated variable."
  (let ((variable (etypecase var
                    (symbol (lambda-variable-named var))
                    (lambda-variable var))))
    (dolist (b list-of-bindings)
      (when (eq (binding-variable b) variable)
        (return-from binding-of-bindings b)))
    nil ))



(defun check-bindings (individual binding-instructions)
  "Does the individual have a binding that fits these instructions
   for bindings, i.e. pairs of variables and values."
  (let ( variable  value )
    (dolist (vv binding-instructions)
      (setq variable (car vv)
            value (cadr vv))
      (unless (find/binding variable value individual)
        (return-from check-bindings nil)))
    t ))



;;/// merge with binding-of-bindings
(defun find/binding-of-variable (variable list-of-bindings category)
  "Does one of the bindings in this list involve this variable?
   If there is more than one, pass back a list."
  (etypecase variable
    (symbol
     (let ((name variable))
       (setq variable (find-variable-for-category name category))
       (unless variable
         (error "There is no lambda-variable with the name '~A'~
               ~%on the category ~a" name category))))
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
  "Return the value of the instruction involving this variable"
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
  "Put the binding in all the places it will be looked for
   by find/binding given its three parts as its arguments."
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
    (when (individual-p value)
      ;; if it isn't an individual, then it might be a primitive and
      ;; we don't put in the backpointer ( the "bound-in" field), or
      ;; the variable might not have a restriction in which case it's
      ;; ok if the value is a word, but otherwise we check it out
      ;; in detail.
      (push-binding-onto-bound-in-field binding value))

    ;; index it on the variable -- this is where it is
    ;; looked up from
    (push-binding-onto-instances-field variable binding value)

    binding ))

(defun index-binding-if-needed (var i value)
  "Called from find-or-make-lattice-subordinate after it has
  constructed a new binding (via old-bind-variable) or has
  retrieved the binding-specialized individual from the v+v
  When it retrieves we don't automatically get the indexing
  of the binding (particularly the bound-in information we
  need), so we do that here."
  (let ((b (has-binding i :variable var :value value))
        (bound-in-field (indiv-bound-in i)))
    ;;(unless b (break "Why no binding of ~a on ~a" var i))
    ;;  first case was the list of variables
    (when b
      (unless (member b bound-in-field :test #'eq)
        (when (individual-p value)
          (push-binding-onto-bound-in-field b value))))))
      
    


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


(defun push-binding-onto-bound-in-field (binding individual)
  (declare (special *individuals-bound-onto*))
  (let ((existing-bindings (indiv-bound-in individual)))
    (setf (indiv-bound-in individual)
          (cons binding existing-bindings))
    (push individual *individuals-bound-onto*)
    binding ))

(defun remove-binding-from-bound-in-field (b i)
  (setf (indiv-bound-in i)
        (delete b (indiv-bound-in i) :test #'eq)))




;;;-------
;;; clear
;;;-------

(defun clear-instances/variable (v)
  (clrhash (var-instances v)))

(defun clear-deallocated-bindings/var (v)
  (let ((instances (var-instances v))
        viable-bindings)
    (maphash 
     #'(lambda (unit bindings)
         (dolist (b bindings)
           (unless (deallocated-binding? b)
             (push b viable-bindings)))
         (if viable-bindings
           (setf (gethash unit instances) viable-bindings)
           (remhash unit instances)))
     instances)))


;;;-------
;;; index
;;;-------

(defparameter *trace-binding-indexing* nil)
(defun trace-binding-indexing ()
  (setq *trace-binding-indexing* t))
(defun unTrace-binding-indexing ()
  (setq *trace-binding-indexing* nil))


(defun push-binding-onto-instances-field (variable binding value)
  "Add the binding to the index under this variable"
  (declare (special *index-bindings-to-variables*))
  (when *index-bindings-to-variables*
    (unless (typep variable 'anonymous-variable)
      ;; These are missing the needed fields.
      (let ((ht (var-instances variable)))
        (push binding (gethash value ht))
        (when *trace-binding-indexing*
          (let ((*print-short* t))
            (declare (special *print-short*))
            (if (> (hash-table-count ht) 1)
              (format t "~&Indexing ~A under ~A [prior]~%"
                      binding variable))
            (format t "~&Indexing ~A under ~A [1st]~%"
                      binding variable)))))))


(defun find/binding (variable value individual)
  "Does a binding with this value for the variable exist?
   Look in the variable's index under this value and see whether
   one of the bindings there has this individual as its body."
  (declare (special *track-incidence-count-on-bindings*))
  (when (typep variable 'anonymous-variable)
    (setq variable (dereference-variable variable individual)))
  (let* ((bindings (gethash value (var-instances variable)))
         (binding (when bindings
                    (find-if (lambda (binding) (memq binding bindings))
                             (binds individual)))))
    ;; /// If the individual gets dicy to identify (being arbitrary)
    ;; then we probably want to shift to v+v objects.
    
    (when (and binding
               *track-incidence-count-on-bindings*)
      (incf (get-tag :incidence-count binding 0)))
    binding))


(defun unindex-binding (b variable value)
  ;; Using the value as the key, lookup for the binding among
  ;; those indexed by the variable and remove it from the index
  
  (unless (typep variable 'anonymous-variable)
    ;; nothing to remove
    
    (unless (deallocated-binding? b)
      ;; forstalls the same binding being reached from different
      ;; directions during an extensive reclaimation
      
      (catch :aborted-binding-unindexing
        
        (let ((instances-ht (var-instances variable))
              (*print-short* t))
          (declare (special *print-short*))
          
          (let ((bindings-entry (gethash value instances-ht)))
            (if bindings-entry
              (then
                (when *trace-binding-indexing*
                  (format t "~&Unindexing ~A from ~A~%"
                          b variable))
                (setf (gethash value instances-ht)
                      (delete b bindings-entry))
                b )
                
              (when (list-type-variable? variable)
                (error "what do I do to unindex from a list-type-variable?")
                #+ignore(check/unindex-dynamically-extended-list
                   instances-alist variable value b)
                #+ignore(else
                    (push-debug `(,value ,variable))
                    ;                 (cerror "ignore it and continue"
                    ;                         "Expected the index for~% value = ~A~
                    ;                      ~% variable = ~A~%to have some listed bindings"
                    ;                        value variable)
                    (return-from unindex-binding))))))))))



(defun excise-value-entry (instances-alist value variable)
  (assert (listp instances-alist) ()
          "The value of 'instance-alist' is a ~a rather than a list"
          (type-of instances-alist))
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
;            (break "value: Couldn't find the entry for ~A" value)
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
  "Does the restriction on this variable specify a list?
   An example would be the items variable in collection."
  (let ((v/r (var-value-restriction v)))
    (when (consp v/r)
      (when (eq (first v/r) :primitive)
        (eq (second v/r) 'list)))))

(defun check/unindex-dynamically-extended-list (instances-alist
                                                variable value b)
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

