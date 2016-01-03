;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2013-2016 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/builders.lisp
;;;  January 2016

;; Initated 11/20/13 to package up reusable parameterized
;; derivation tree patterns at roughly the level of maximal projections.
;; 11/25/15 Moving away or deleting Sparse-oriented code so this can be 
;; loaded when the rest of Mumble is loaded rather than afterwards. 
;; 1/2/15 Added recording word to phase it heads. 

(in-package :mumble)


(defgeneric noun (word &optional phrase)
  (:documentation "Given a designator for a word, return
    a lexicalized phrase for it as a simple np."))

(defmethod noun ((string string) &optional phrase-name)
  (let* ((phrase (phrase-named (or phrase-name 'common-noun)))
         (parameter (car (parameters-to-phrase phrase)))
         (word (word-for-string string 'noun)))
    (let* ((pair (make-instance 'parameter-value-pair
                   :phrase-parameter parameter
                   :value word))
           (lp (make-instance 'saturated-lexicalized-phrase
                 :phrase phrase
                 :bound `(,pair))))
      (record-lexicalized-phrase word lp)
      lp)))


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
    (let* ((pair (make-instance 'parameter-value-pair
                   :phrase-parameter parameter
                   :value word))
           (lp (make-instance 'partially-saturated-lexicalized-phrase
                 :phrase phrase
                 :free parameters
                 :bound `(,pair))))
      (record-lexicalized-phrase word lp)
      lp)))


(defgeneric adjective (word)
  (:documentation "Defines a lexicalized tree for an adjective
    taken as a simple premodifier. The relationship of something
    having this property is a not this but should have
    a choice set of some sort since it has several realizations."))

(defmethod adjective ((pname string))
  "This is a find or make on a lexicalized attachment."
  (let* ((word (word-for-string pname 'adjective))
         (ap (attachment-point-named 'adjective))
         (lp (make-lexicalized-attachment ap word)))
    (record-lexicalized-phrase word lp)
    lp))


(defgeneric predicate (word)
  (:documentation "This is a term with adverbial force
   that will be incorporated into a phrase as an argument
   rather than through adjunction. The motivating case
   is 'together' which describes a state of affairs. 
   An adverb would modulate the meaning of an eventuality.
   Returns a saturated lexicalized phrase. Using the
   phrase for adverb, but it should be customized."))

(defmethod predicate ((pname string))
  (let ((phrase (phrase-named 'advp))
        (word (word-for-string pname 'adverb)))
    (let ((lp (make-instance 'saturated-lexicalized-phrase
                :phrase phrase
                :bound `(,(make-instance 'parameter-value-pair
                            :phrase-parameter (parameter-named 'adv)
                            :value word)))))
      (record-lexicalized-phrase word lp)
      lp)))


(defgeneric prep (word)
  (:documentation "Defines a lexicalized tree for a preposition
   in that is the head of a prepositional phrase whose complement
   is a noun phrase. Note that a preposition will often also
   take a whole eventuality as its complement, and it's not
   clear right now how to capture this variation (maybe an
   optional argument that becomes a label that goes on the
   complement's slot?). Returns a partially saturated lexicalized 
   phrase that is open in the parameter 'prep-object'."))

(defmethod prep ((pname string))
  (let ((phrase (phrase-named 'prepositional-phrase))
        (preposition (word-for-string pname)))
    (let ((lp (make-instance 'partially-saturated-lexicalized-phrase
                :phrase phrase
                :bound `(,(make-instance 'parameter-value-pair
                            :phrase-parameter (parameter-named 'p)
                            :value preposition))
                :free `(,(parameter-named 'prep-object)))))
      (record-lexicalized-phrase preposition lp)
      lp)))



(defgeneric transitive-with-bound-prep (verb preposition)
  (:documentation "Lexicalizes the phrase SVPrepO, as in
    'Mustard in used in lots of salads', where the preposition
    is specializing the sense of the verb rather than heading
    a prepositional phrase. The result is open in the 
    parameters 's' and 'o'."))

(defmethod transitive-with-bound-prep ((verb-pname string)
                                       (prep-pname string))
  (let ((verb (word-for-string verb-pname 'verb))
        (prep (word-for-string prep-pname 'preposition)))
    ;; Since we are stipulating the phrase in this method
    ;; we can just know what the open parameters are.
    (let ((lp (make-instance 'partially-saturated-lexicalized-phrase
                :phrase (phrase-named 'SVPrepO)
                :bound (list (make-instance 'parameter-value-pair
                               ::phrase-parameter (parameter-named 'v)
                               :value verb)
                             (make-instance 'parameter-value-pair
                               ::phrase-parameter (parameter-named 'p)
                               :value prep))
                :free (list (parameter-named 's)
                            (parameter-named 'o)))))
      ;;//// how to index this?  Sort of has muliple heads
      lp)))


(defgeneric discourse-unit (contents)
  (:documentation "Given an instance of a valid slot contents,
    prototypically a dtn for a clause, wrap it in a discourse unit
    phrase. "))

#| This could be a entry point to the microplanner given
a message to be expressed. See discussion in make.lisp |#

(defmethod discourse-unit ((dtn derivation-tree-node))
  "Replace the resource of the input dtn with a saturated-
  lexicalized-phrase built here by hand that has the input
  dtn bound to the s parameter.  N.b. this operator can't
  be run for side-effects on the input dtn because it wants
  to create (and return) a new one."
  (let* ((phrase (phrase-named 'first-sentence-of-discourse-unit))
         (complement (make-instance 'complement-node
                       :phrase-parmameter (parameter-named 's)
                       :value dtn))
         (resource (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound `(,complement))))
    (make-dtn :resource resource))) 
        

;;;---------------------------
;;; make a lexicalized-phrase
;;;---------------------------

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
          (setf (mname lp) (name-composite lp))
          (when (null (cdr words)) ;;/// had multiple-head issue
            (record-lexicalized-phrase (car words) lp))
          lp)))))


;;;-------------------------
;;; gensym names for things
;;;-------------------------

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




