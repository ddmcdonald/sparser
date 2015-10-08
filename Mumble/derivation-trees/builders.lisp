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



;;;-------

(defmacro define-lexicalized-phrase (phrase words arguments)
  `(create-lexicalized-phrase ',phrase ',words ',arguments))

(defun create-lexicalized-phrase (phrase-name word-strings argument-names)
  (let ((phrase (phrase-named (intern (symbol-name phrase-name)
                                      (find-package :mumble)))))
    (unless phrase
      (break "There is no surface phrase named ~a" phrase-name))
    (let* ((phrase-parameters (mumble::parameters-to-phrase phrase))
           (words (loop for string in word-strings
                    collect (word-for-string string))));; defaults to noun
      (let ((copy-of-words (copy-list words))
            (copy-of-args (copy-list argument-names))
            open bound)
        (dolist (parameter phrase-parameters)
          ;;/// what's this as a loop?
          (if (eq (first copy-of-args) (name parameter))
            (then
              (pop copy-of-args)
              (push `(,parameter ,(pop copy-of-words))
                    bound))
            (push parameter open)))
        (unless bound
          (error "Why wasn't a variable bound?"))
        (let* ((bound-parameters
                (loop for pair in bound
                  collect (make-instance 'parameter-value-pair
                            :phrase-parameter (car pair)
                            :value (cadr pair))))
               (lp
                (if open
                  (make-instance 'partially-saturated-lexicalized-phrase
                    :free open
                    :bound bound-parameters)
                  (make-instance 'saturated-lexicalized-phrase
                    :bound bound-parameters))))
          (push-debug `(,bound-parameters ,lp))
          (setf (name lp) (name-composite lp))
          lp)))))

(defgeneric name-composite (object)
  (:documentation "Given a newly created object that has
    multiple parts, create a symbol to name it that is
    based on those parts."))

(defmethod name-composite ((lp saturated-lexicalized-phrase))
  (let* ((phrase (name (phrase lp)))
         (bound-parameters (bound lp))
         (values (loop for bp in bound-parameters
                   collect (value bp)))
         (names (loop for v in values
                  collect (name v)))
         (name-strings (cons phrase names))
         (full-string (underscore-interleaved-string name-strings)))
    (intern full-string (find-package :mumble))))

(defmethod name-composite ((w word))
  (pname w))

;;/// add to utils
(defun underscore-interleaved-string (list-of-strings)
  (let ( interleaved-list )
    (dolist (string list-of-strings)
      (push "_" interleaved-list)
      (push (string-upcase string) interleaved-list))
    (apply #'string-append (nreverse interleaved-list))))


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


