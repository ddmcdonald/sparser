;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "find"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.4 May 1994

;; initiated 7/16/92 v2.3
;; 0.1 (11/10) fixing the semantics of some cases of the find operation
;; 0.2 (11/23) adjusted how it passed arguments to simplify things
;;     (6/12/93) added define-or-find-individual to vary arg. pattern
;; 0.3 (10/22) allowed a category to be passed to Find-individual as well
;;      as symbols naming them since find/individual needs its bindings 
;;      in a list
;;     (1/30/94) added find/individual/seq-keys/both by obvious c&s
;; 0.4 (5/24) fixed long-standing bug in find/indiv of hashed keys

(in-package :sparser)

;;;--------------
;;; Find or Make
;;;--------------

(defun find-or-make/individual (category
                                bindings-instructions)

  ;; called from Ref/instantiate-individual as part of completing
  ;; a rule.  All these individuals will be temporary.

  (or (find/individual category bindings-instructions)
      (make/individual category bindings-instructions)))



(defun define-or-find-individual (category &rest binding-plist)
  ;; same idea, different packaging of the arguments
  ;; to fit calls from category-specific code
  (etypecase category
    (referential-category category)
    (symbol (let ((name category))
              (setq category (category-named name))
              (unless category
                (error "There is no category named ~A" name)))))

  (let ((binding-instructions
         (decode-category-specific-binding-instr-exps
          category binding-plist)))

    (or (find/individual category binding-instructions)
        (make/individual category binding-instructions))))
  




;;;------------------------------
;;; Find -- input as expressions
;;;------------------------------

(defun find-individual (symbol-for-category &rest binding-plist )
  (let* ((category
          (etypecase symbol-for-category
            (symbol
             (resolve-symbol-to-category/check symbol-for-category))
            (referential-category symbol-for-category)))
             
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category binding-plist)))

    (find/individual category binding-instructions)))


;;;------
;;; Find
;;;------

(defun find/individual (category binding-instructions)

  ;; Looks up the appropriate Find function for this category
  ;; and calls it with these binding-instructions.
  ;; All the arguments must be objects.

  (let ((fn-data
         ;; either just the name of a function, or a function plus
         ;; some data such as a variable to act as a key
         (cat-ops-find (cat-operations category))))

    (if (listp fn-data)
      (funcall (car fn-data) (cadr fn-data) category binding-instructions)
      (funcall fn-data category binding-instructions))))


;;;---------------
;;; List versions
;;;---------------

(defun find/simple-list (category binding-instructions)
  (dolist (individual (cat-instances category))
    (when (check-bindings individual binding-instructions)
      (return-from find/simple-list individual)))
  nil )

(defun find/simple-list/both (category binding-instructions)
  ;; the field looks like ( <list of tmps> :permanent <list of perms> )
  (let ((instance-field (cat-instances category)))
    (dolist (individual (cdr instance-field))  ;; the temporaries
      (when (check-bindings individual binding-instructions)
        (return-from find/simple-list/both individual)))

    (dolist (individual (car instance-field))  ;; the permanents
      (when (check-bindings individual binding-instructions)
        (return-from find/simple-list/both individual)))
    nil ))


;;;---------------
;;; Hash versions
;;;---------------

(defun find/individual/key/hash (variable ;; the key
                                 category
                                 binding-instructions)

  ;; We are to find an individual from the table that fits these
  ;; binding instructions, where one of the instructions (i.e. variable
  ;; value pairs) supplied the value for the key into the table,
  ;; namely the instruction for the designated variable.

  (let ((table (cat-instances category))
        (value (cadr (assoc variable binding-instructions))))
    (unless value
      (break "Find was called with binding instructions that don't ~
              include the designated key variable:~%  ~A~%~A"
             variable binding-instructions))

    (let ((candidates (gethash value table)))
      (when candidates
        (if (null (cadr candidates)) ;; is there more than one?
          (if (null (cadr binding-instructions)) ;; only the key?
            (first candidates)
            (when (check-bindings
                   (first candidates) binding-instructions)
              (first candidates)))
          (break "Find code for multiple instances not yet written"))))))


(defun find/individual/key/hash/both (variable ;; the key
                                      category
                                      binding-instructions)

  (let ((instance-field (cat-instances category))
        (value (cadr (assoc variable binding-instructions))))
    (unless value
      (break "Find was called with binding instructions that don't ~
              include the designated key variable:~%  ~A~%~A"
             variable binding-instructions))

    (let ((candidates
           (or (gethash value (car instance-field))
               (gethash value (cdr instance-field)))))

      (when candidates
        (if (null (cadr candidates)) ;; i.e. there's just one
          (let ((individual (car candidates)))
            (if (null (cadr binding-instructions))
              ;; don't bother checking the bindings, as we just indexed
              ;; off it.
              individual
              (when (check-bindings individual binding-instructions)
                individual )))
          (break "Find code for multiple instances with the same ~
                  index value not yet written"))))))




(defun find/individual/seq-keys (key-sequence
                                 category binding-instructions)
  ;; it's an alist of alists
  (let ((instances (cat-instances category)))
    (when instances
      (let ((unit?
             (f/i/seq-keys instances
                           key-sequence category binding-instructions)))
        unit? ))))


(defun find/individual/seq-keys/both (key-sequence
                                      category binding-instructions)
  (let* ((catalog (cat-instances category)))
    ;; hack to get around bad encoding
    (when catalog
      (let ((unit?
             (f/i/seq-keys catalog
                           key-sequence category binding-instructions)))
        unit? ))))
        #|(if unit?
          unit?
          (when permanent-instances
            (let ((unit?
                   (f/i/seq-keys permanent-instances
                                 key-sequence category binding-instructions)))
              unit? )))|#


(defun f/i/seq-keys (instances keys cat instr)
  (let* ((variable (pop keys))
         (value (cadr (assoc variable instr))))

    (let ((entry (cdr (assoc value instances))))
      (when entry
        (if (null keys)
          entry
          (f/i/seq-keys entry keys cat instr))))))



;;;----------------------------------------
;;; general routines for listing all cases
;;;----------------------------------------

(defun list-instances/hash-table (category)
  (let* ((table (cat-instances category))
         instances )
    (maphash #'(lambda (key value)
                 (declare (ignore key))
                 (push value instances))
             table)
    (pl instances)
    (hash-table-count table)))

