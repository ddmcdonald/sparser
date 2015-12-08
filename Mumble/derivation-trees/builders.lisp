;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2013 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/builders.lisp
;;;  November 2013

;; Initated 11/20/13 to package up reusable parameterized
;; derivation tree patterns at roughly the level of maximal projections.
;; 11/25/15 Moving away or deleting Sparse-oriented code so this can be 
;; loaded when the rest of Mumble is loaded rather than afterwards. 

(in-package :mumble)


(defgeneric noun (word &optional phrase)
  (:documentation "Given a designator for a word, return
    a lexicalized phrase for it as a simple np."))

(defmethod noun ((string string) &optional phrase-name)
  (let* ((phrase (phrase-named (or phrase-name 'common-noun)))
         (parameter (car (parameters-to-phrase phrase)))
         (word (word-for-string string 'noun)))
    (let ((pair (make-instance 'parameter-value-pair
                  :phrase-parameter parameter
                  :value word)))
      (make-instance 'saturated-lexicalized-phrase
        :phrase phrase
        :bound `(,pair)))))

(defgeneric verb (word &optional phrase)
  (:documentation "Given a designator for a verb, return 
    a lexicalized phraes for it. The default phrase is SVO, 
    but can be overridden by the optional argument."))

(defmethod verb ((string string) &optional phrase-name)
  (let* ((phrase (phrase-named (or phrase-name 'SVO)))
         (parameter (parameter-named 'v))
         (parameters (delete parameter
                             (copy-list (parameters-to-phrase phrase))))
         (word (word-for-string string 'verb)))
    (let ((pair (make-instance 'parameter-value-pair
                  :phrase-parameter parameter
                  :value word)))
      (make-instance 'partially-saturated-lexicalized-phrase
        :phrase phrase
        :free parameters
        :bound `(,pair)))))




(defmacro define-lexicalized-phrase (phrase words arguments)
  `(create-lexicalized-phrase ',phrase ',words ',arguments))

(defun create-lexicalized-phrase (phrase-name word-strings argument-names)
  "General scheme for constructing a lexicalized phrase given the
   name of the phrase and two arguements, the list of word (as strings)
   that lexicalize it and the list of parameters (as symbols) that
   they're bound to. The two lists have to be correctly ordered."
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
                    :phrase phrase
                    :free open
                    :bound bound-parameters)
                  (make-instance 'saturated-lexicalized-phrase
                    :phrase phrase
                    :bound bound-parameters))))
          (push-debug `(,bound-parameters ,lp))
          (setf (mname lp) (name-composite lp))
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
      (push (string-downcase string) interleaved-list))
    (apply #'string-append (nreverse interleaved-list))))




