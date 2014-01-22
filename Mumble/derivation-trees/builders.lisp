;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2013 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/builders.lisp
;;;  November 2013

;; Initated 11/20/13 to package up reusable parameterized
;; derivation tree patterns at roughly the level of maximal projections.

(in-package :mumble)

;;--- just throwing it together to see what's the way to do these

(defun predicated-attribute-value (&key attribute value of)
  ;; This can be expanded to a proper realization-class giving all
  ;; the options, but for now just one case to provide a thread
  ;; all the way through
  (push-debug `(,attribute ,value ,of))
  (multiple-value-bind (phrase parameters)
                       (provide-phrase-and-data 'S-be-COMP)
    (let ((dt (make-instance 'derivation-tree-node
                :resource phrase)))
      (set-derivation-tree dt)
      ;; In these patterns, it's typically the canse that the
      ;; natural referent for the subject is the same as the 
      ;; complement (value). So we setup a special dt for
      ;; the subject that talks about it as an instance of class.
      (let ((subj-dt (definite (instance-of-a-class of))))
        (make-complement-node (first parameters) subj-dt dt)
        (make-complement-node (second parameters) value dt)
        (present dt)))))

(defun simple-2-arg-phrase (phrase-name arg1 arg2)
  (multiple-value-bind (phrase parameters)
                       (provide-phrase-and-data phrase-name)
    (let ((dtn (make-instance 'derivation-tree-node
                 :resource phrase)))
      (set-derivation-tree dtn)
      (make-complement-node (first parameters) arg1 dtn)
      (make-complement-node (second parameters) arg2 dtn)
      ;; caller applies any needed operators
      dtn)))



(defmethod instance-of-a-class ((i sparser::individual))
  ;; look up the type, get its realization (as an np head) and
  ;; put together a bare np. Expect the caller to set the
  ;; definiteness.
  (let* ((category (sparser::itype-of i))
         (noun (realization-for category))
         (np (phrase-named 'common-noun))
         (noun-parameter (car (parameters-to-phrase np)))
         (dt (make-instance 'derivation-tree-node
               :referent category
               :resource np)))
    (make-complement-node noun-parameter noun dt)
    (push-debug `(,dt))
    dt))

;;;-----------
;;; operators
;;;-----------
;; Derivation tree versions of message-level/operators-over-specifications.lisp

(defmethod definite ((dtn derivation-tree-node))
  (add-feature dtn :determiner-policy 'always-definite)
  dtn)


(defmethod present ((dtn derivation-tree-node))
  (add-feature dtn :tense-modal 'present)
  dtn)


