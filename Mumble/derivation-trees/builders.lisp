;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2013-2017 David D. McDonald  All Rights Reserved
;;;
;;;  /Mumble/derivation-trees/builders.lisp
;;;  June 2017

;; Initated 11/20/13 to package up reusable parameterized
;; derivation tree patterns at roughly the level of maximal projections.
;; 11/25/15 Moving away or deleting Sparse-oriented code so this can be 
;; loaded when the rest of Mumble is loaded rather than afterwards. 
;; 1/2/15 Added recording word to phase it heads. Later, setting up
;; the basis for parsing and correspondences to Sparser.

(in-package :mumble)

;;;-----------------------------
;;; lexicalized phrase builders
;;;-----------------------------

(defgeneric noun (word &optional phrase-name)
  (:documentation "Given a designator for a word, return
    a lexicalized phrase for it as a simple np.")
  (:method ((w word) &optional phrase-name)
    (noun (pname w)  phrase-name))
  (:method ((pname string)  &optional phrase-name)
    (let* ((phrase (if phrase-name ;; it was supplied
                     (etypecase phrase-name
                       (phrase phrase-name)
                       (symbol (phrase-named phrase-name)))
                     (phrase-named 'common-noun)))
           (parameter (parameter-named 'n))
           (parameters (remove parameter (parameters-to-phrase phrase)))
           (word (word-for-string pname 'noun))
           (pair (make-instance 'parameter-value-pair
                    :phrase-parameter parameter
                    :value word)))
      (if parameters
        (make-instance 'partially-saturated-lexicalized-phrase
                       :phrase phrase
                       :free parameters
                       :bound `(,pair))
        (make-instance 'saturated-lexicalized-phrase
                       :phrase phrase
                       :bound `(,pair))))))

(defgeneric proper-noun (word)
  (:documentation "Use the word ake a lexicalized proper-name phrase.
    The label proper-noun that it uses will capitalized the word")
  (:method ((w word))
    (proper-noun (pname w)))
  (:method ((pname string))
    (let ((phrase (phrase-named 'proper-name))
          (proper-noun (word-for-string pname 'proper-noun)))
      (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound (list (pvp 'n proper-noun))))))


 

(defgeneric verb (word phrase-name)
  (:documentation "Given a designator for a verb, return 
    a lexicalized for phrase it. If the phrase-name argument
    is nil we use SVO.")
  (:method ((w word) (phrase-name symbol))
    (verb (pname w)
          (etypecase phrase-name
            (null (phrase-named 'svo))
            (symbol (phrase-named phrase-name)))))
  (:method ((w word) (phrase phrase))
    (verb (pname w) phrase))
  (:method ((pname string) (phrase-name symbol))
    (verb pname
          (etypecase phrase-name
            (null (phrase-named 'svo))
            (symbol (phrase-named phrase-name)))))
  (:method ((pname string) (phrase phrase))
    (let* ((parameter (parameter-named 'v))
           (parameters (remove parameter (parameters-to-phrase phrase)))
           (word (word-for-string pname 'verb)))
      (let* ((pair (make-instance 'parameter-value-pair
                                  :phrase-parameter parameter
                                  :value word)))
        (make-instance 'partially-saturated-lexicalized-phrase
                       :phrase phrase
                       :free parameters
                       :bound `(,pair))))))


(defgeneric adjective (word phrase)
  (:documentation "Defines a lexicalized phrase for an adjective.
    Leaves the decision of how to position this adjective phrase
    within the text open, e.g. as premodifier, predicate adjective,
    resultative, etc.")
  (:method ((w word) (phrase-name symbol))
    (adjective (pname w)
               (etypecase phrase-name
                 (null (phrase-named 'adjp))
                 (symbol (phrase-named phrase-name)))))
  (:method ((w word) (phrase phrase))
    (adjective (pname w) phrase))
  (:method ((pname string) (phrase phrase))
    (let* ((adjective (word-for-string pname 'adjective))
           (head-parameter (parameter-named 'a))
           (parameters (remove head-parameter (parameters-to-phrase phrase)))
           (pair (pvp head-parameter adjective)))
      (if parameters
        (make-instance 'partially-saturated-lexicalized-phrase
                       :phrase phrase
                       :free parameters
                       :bound `(,pair))
        (make-instance 'saturated-lexicalized-phrase
                       :phrase phrase
                       :bound `(,pair))))))


(defgeneric adjectivial-modifier (word)
  (:documentation "Interpret the word as an adjective but
    return a lexicalized attachment point using the adjective AP")
  (:method ((w word))
    (adjectivial-modifier (pname w)))
  (:method ((pname string))
    (let ((word (word-for-string pname 'adjective))
          (ap (attachment-point-named 'adjective)))
      (make-lexicalized-attachment ap word))))


(defgeneric adverb (word)
  (:documentation "Make a lexicalized adverbial phrase")
  (:method ((w word))
    (adverb (pname w)))
  (:method ((pname string))
    (let ((phrase (phrase-named 'advp))
          (adverb (word-for-string pname 'adverb)))
      (make-instance
       'saturated-lexicalized-phrase
       :phrase phrase
       :bound (list (pvp 'adv adverb))))))


(defgeneric prep (word)
  (:documentation "Defines a lexicalized tree for a preposition
   in that is the head of a prepositional phrase whose complement
   is a noun phrase. Note that a preposition will often also
   take a whole eventuality as its complement, and it's not
   clear right now how to capture this variation (maybe an
   optional argument that becomes a label that goes on the
   complement's slot?). Returns a partially saturated lexicalized 
   phrase that is open in the parameter 'prep-object'.")
  (:method ((w word))
    (prep (string-downcase (pname w))))
  (:method ((pname string))
    (let ((phrase (phrase-named 'prepositional-phrase))
          (preposition (word-for-string pname 'preposition)))
      (make-instance
       'partially-saturated-lexicalized-phrase
       :phrase phrase
       :bound `(,(make-instance 'parameter-value-pair
                    :phrase-parameter (parameter-named 'p)
                    :value preposition))
       :free `(,(parameter-named 'prep-object))))))


(defgeneric quantifier (word)
  (:documentation "Creates a lexicalized tree, a QP phrase, for
    a quantifier. Returns a fully saturated lexicalized phrase.")
  (:method ((w word))
    (quantifier (pname w)))
  (:method ((pname string))
    (let ((phrase (phrase-named 'qp))
          (quantifier (word-for-string pname 'quantifier)))
      (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound (list (pvp 'q quantifier))))))

(defgeneric conjunction (word)
  (:documentation "Returns a freshly created lexicalized phrase
    for a conjunction. This design (the choice of phrase, labels)
    is arbitrary since Mumble originally expected a conjunctions
    to be emitted as grammatical phenomenon. See the slot labels
    'and', 'but', etc. for their word-stream actions. This is for
    as standalone, expressly selected, conjunction as they come
    out of Sparser.")
  (:method ((w word))
    (conjunction (pname w)))
  (:method ((pname string))
    (let ((phrase (phrase-named 'conjunct))
          (conjunction (word-for-string pname 'conjunction)))
      (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound (list (pvp 'conj conjunction))))))
    


(defgeneric pronoun (word)
  (:documentation "Returns a lexicalized phrase expected to 
   be used as a resource to a DTN that something else builds 
   (which is where the referent  is recorded).")
  (:method ((w word))
    (pronoun (pname w)))
  (:method ((pname string))                  
    (let ((phrase (phrase-named 'pronominal-np))
          (pronoun (word-for-string pname 'pronoun)))
      (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound (list (pvp 'p pronoun))))))


(defgeneric predicate (word)
  (:documentation "This is a term with adverbial force
   that will be incorporated into a phrase as an argument
   rather than through adjunction. The motivating case
   is 'together' which describes a state of affairs. 
   An adverb would modulate the meaning of an eventuality.
   Returns a saturated lexicalized phrase, using the
   phrase for adverb, but it should be customized.")
  (:method ((pname string))
    (let ((phrase (phrase-named 'advp))
          (word (word-for-string pname 'adverb)))
      (make-instance 'saturated-lexicalized-phrase
         :phrase phrase
         :bound `(,(make-instance 'parameter-value-pair
                       :phrase-parameter (parameter-named 'adv)
                       :value word))))))


(defgeneric interjection (word)
  (:documentation "As used with the Blocks World, these are
   standalone words that make assessments, like 'good' or
   'ok'. There isn't already a phrase for these and I haven't
   been able to find a TAG account of them. So in lieu of that
   I'm using the quantifier phrase, which seems to have no
   actions we wouldn't want.")
  (:method ((w word))
    (interjection (pname w)))
  (:method ((pname string))
    (let ((phrase (phrase-named 'QP))
          (word (word-for-string pname 'interjection)))
      (make-instance 'saturated-lexicalized-phrase
                     :phrase phrase
                     :bound `(,(pvp 'q word))))))



(defgeneric transitive-with-bound-prep (verb preposition)
  (:documentation "Lexicalizes the phrase SVPrepO, as in
    'Mustard in used in lots of salads', where the preposition
    is specializing the sense of the verb rather than heading
    a prepositional phrase. The result is open in the 
    parameters 's' and 'o'.")
  (:method ((verb-pname string) (prep-pname string))
    (let ((verb (word-for-string verb-pname 'verb))
          (prep (word-for-string prep-pname 'preposition))
          (term (compound-word-for-indexing verb-pname prep-pname)))
      ;; Since we are stipulating the phrase in this method
      ;; we can just know what the open parameters are.
      (make-instance 'partially-saturated-lexicalized-phrase
                     :phrase (phrase-named 'SVPrepO)
                     :bound (list (make-instance 'parameter-value-pair
                                                 :phrase-parameter (parameter-named 'v)
                                                 :value verb)
                                  (make-instance 'parameter-value-pair
                                                 :phrase-parameter (parameter-named 'p)
                                                 :value prep))
                     :free (list (parameter-named 's)
                                 (parameter-named 'o))))))


(defgeneric transitive-with-final-adverbial (verb-pname adverb-pname)
  (:documentation "This is for 'push X together'. As noted above for predicate,
   notions like 'together' are not well characterized by simple
   conventional terms. The choice of phrase is also wrong or
   at least inadequate since it's from the transformational family
   for particles like 'up' as in 'pick up'. Best move (///) is to
   define a new phrase that explicitly takes adverbial final arguments.")

  (:method ((verb-pname string) (adverb-pname string))  
    (let ((verb (word-for-string verb-pname 'verb))
          (adverb (word-for-string adverb-pname 'adverb))
          (term (compound-word-for-indexing verb-pname adverb-pname)))
      (make-instance 'partially-saturated-lexicalized-phrase
                     :phrase (phrase-named 'SVOP) ;; s v o p
                     :bound (list (pvp 'v verb)
                                  (pvp 'p adverb))
                     :free (list (parameter-named 's)
                                 (parameter-named 'o))))))

;;;-----------------
;;; discourse units
;;;-----------------

#| This could be a entry point to the microplanner given
a message to be expressed. See discussion in make.lisp |#

(defun make-discourse-unit-dtn (unit referent)
  "Common core. Return a dtn for a 'first-sentence-of-discourse-unit'
   whose sentence slot value is 'unit', and the referent of the dtn
   is 'referent'."
  (let* ((phrase (phrase-named 'first-sentence-of-discourse-unit))
         (complement (make-instance 'complement-node
                                      :phrase-parameter (parameter-named 's)
                                      :value unit))
           (resource (make-instance 'saturated-lexicalized-phrase
                                    :phrase phrase
                                    :bound `(,complement))))
      (make-dtn :resource resource
                :referent referent)))

(defgeneric discourse-unit (contents)
  (:documentation "Given an instance of a valid slot contents,
    prototypically a dtn for a clause, wrap it in a discourse unit
    phrase. ")
  (:method ((dtn derivation-tree-node))
    "Replace the resource of the input dtn with a saturated-
    lexicalized-phrase built here by hand that has the input
    dtn bound to the s parameter.  N.b. this operator can't
    be run for side-effects on the input dtn because it wants
    to create (and return) a new one."
    (make-discourse-unit-dtn dtn (referent dtn))))

(defgeneric ensure-is-a-sentence (object)
  (:documentation "Return a dtn that wraps 'object' in a the 's' slot
    of a discourse-unit. Return value replaces the 'object' of the call.")
  (:method ((original derivation-tree-node))
    "Look at how 'original' will be realized and if it is not already 
     a discourse unit, modify it so that it is."
    
      (if (will-be-realized-as-a-discourse-unit original)
        (let* ((new-dtn (copy-dtn original))
               ;; from discourse-unit, which we could consider refactoring
               (phrase (phrase-named 'first-sentence-of-discourse-unit))
               (complement (make-instance 'complement-node
                                          :phrase-parameter (parameter-named 's)
                                          :value original))
               (resource (make-instance 'saturated-lexicalized-phrase
                                        :phrase phrase
                                        :bound `(,complement))))
          (setf (resource new-dtn) resource) ;; wrap
          (setf (referent new-dtn) (referent original)) ;; needed for print method
          (when (typep original 'derivation-tree-node)
            ;; we have to zero out its other fields that were copied
            (setf (complements new-dtn) nil)
            (setf (adjuncts new-dtn) nil)
            (setf (features new-dtn) nil))
          new-dtn)
        original))
  (:method ((object T))
    (warn "ensure-is-a-sentence called with a ~a~%~a"
          (type-of object) object)
    object))

(defun will-be-realized-as-a-discourse-unit (dtn)
  "Look at the resouce of the dtn. Find its phrase and determine
   whether it is a known type of discourse unit"
  ;; no-op for initial testing
  (declare (ignore dtn))
  nil)

;;;----------------------
;;; dtn => dtn operators
;;;----------------------

(defmacro define-dtn-operator (name specification &rest operators)
  `(define-dtn-operator/expr ',name ',specification ',operators))

(defun define-dtn-operator/expr (name specification operators)
  "Analyzes the specification to identify and find or make a partially
   saturated lexicalized phrase with just one parameter free.
   That becomes the body of a function that takes a dtn as its
   argument, binds it to that parameter and returns the new dtn."
  ;; Assume is like 'let-us'. Make variants and figure out how
  ;; to distinguish them as needs be.
  ;; (push-debug `(,name ,specification ,operators))
  (let* ((lp (get-lexicalized-phrase (car specification)))
         (additional-args (cdr specification))
         (lexicalized-phrase lp)) ;; change if arguments
    (assert lp)
    (when additional-args
      ;;(push-debug `(,additional-args)) (break "test deref pvp")
      (let ((phrase (phrase lp))
            (bound (bound lp))
            (free (copy-list (free lp)))
            (pvp-list (dereference-pvp-list additional-args)))
        (loop for pvp in pvp-list
          as p = (phrase-parameter pvp)
          do (setq free (delete p free)))
        (unless free
          (error "No free parameters left"))
        (unless (= 1 (length free))
          (error "Can only be one free parameter"))
        (setq lexicalized-phrase
              (make-instance 'partially-saturated-lexicalized-phrase
                :phrase phrase
                :bound (append pvp-list bound)
                :free free))))
    ;;(push-debug `(,lexicalized-phrase)) (break "look at lp")

    (let* ((free-parameter (car (free lexicalized-phrase)))
           (fn-name name) ;; hook for varing it if we want
           (form
            `(defmethod ,fn-name ((input-dtn derivation-tree))
               (let* ((dtn (make-dtn 
                            :resource ,lexicalized-phrase
                            :referent (cons ',name (referent input-dtn))))
                      (comp-node (make-instance 'complement-node
                                   :phrase-parameter ,free-parameter
                                   :bkptrs dtn
                                   :value input-dtn)))
                 (push comp-node (complements dtn))
                 ,(when operators
                    `(loop for o in ',operators
                       do (funcall o dtn)))
                 dtn))))
      ;;(pprint form) (break "ok?")
      (eval form)
      fn-name)))

(defun dereference-pvp-list (parameter-value-pairs)
  ;;??? add phrase as an argument to check these are appropriate parameters?
  (let ( pvp-list  pvp  parameter  value )
    (do ((parameter-name (car parameter-value-pairs) (car rest))
         (value-exp (cadr parameter-value-pairs) (cadr rest))
         (rest (cddr parameter-value-pairs) (cddr rest)))
        ((null parameter-name))
      (setq parameter (parameter-named parameter-name))
      (assert parameter)
      (setq value
            (typecase value-exp
              (keyword (break "stub -- what's convention on keywords?"))
              (symbol
               (if (boundp value-exp)
                 (eval value-exp)
                 (error "Parameter value ~a is an unbound symbol" value-exp)))
              (otherwise
               (error "Unanticipated type for parameter value expression ~a~%~a"
                      (type-of value-exp) value-exp))))
      ;; (format t "~&parameter = ~a  value = ~a  ~%" parameter value)
      (setq pvp (make-instance 'parameter-value-pair
                  :phrase-parameter parameter
                  :value value))
      (push pvp pvp-list))
    (nreverse pvp-list)))



;;;---------------------------
;;; make a lexicalized-phrase
;;;---------------------------

(defmacro define-lexicalized-phrase (phrase words arguments)
  `(create-lexicalized-phrase ',phrase ',words ',arguments))

(defun create-lexicalized-phrase (phrase-name word-strings argument-names)
  "General scheme for constructing a lexicalized phrase given the
   name of the phrase, the list of word (as strings)
   that lexicalize it and the list of parameters (as symbols) that
   they're bound to. The two lists have to be correctly ordered."
  (let ((phrase (phrase-named (intern (symbol-name phrase-name)
                                      (find-package :mumble)))))
    (unless phrase
      (break "There is no surface phrase named ~a" phrase-name))
    (let* ((phrase-parameters (mumble::parameters-to-phrase phrase))
           (pos (ecase (car argument-names)
                  (n 'noun)
                  (v 'verb)))
           (words (loop for string in word-strings
                        collect (word-for-string string pos))))
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


;;;-------------------------------------
;;; deconstructing a lexicalized phras
;;;-------------------------------------

(defgeneric extract-lexicalized-word (phrase parameter)
  (:documentation "Given a lexicalized phrase, return the word that is
    bound to the indicated parameter, or nil if the parameter isn't bound.")
  (:method ((lp saturated-lexicalized-phrase) (name symbol))
    (let ((parameter (parameter-named name)))
      (assert parameter)
      (extract-lexicalized-word lp parameter)))
  (:method ((lp saturated-lexicalized-phrase) (p parameter))
    (let ((pvp-pairs (bound lp)))
      (loop for pair in pvp-pairs
         as parameter = (phrase-parameter pair)
         when (eq parameter p)
         return (value pair)))))



;;;-------------------------
;;; gensym names for things
;;;-------------------------

(defun compound-word-for-indexing (&rest word-pnames)
  "Creates an artificial word by combining the pnames it's passed
   with hyphens and creating a word."
  (word-for-string (format nil "~{~a~^-~}" word-pnames)))

(defgeneric name-composite (object)
  (:documentation "Given a newly created object that has
    multiple parts, create a symbol to name it that is
    based on those parts.")
  (:method ((w word))
    (pname w))
  (:method ((lp saturated-lexicalized-phrase))
    (let* ((phrase (name (phrase lp)))
           (bound-parameters (bound lp))
           (values (loop for bp in bound-parameters
                      collect (value bp)))
           (names (loop for v in values
                     collect (name v)))
           (name-strings (cons phrase names))
           (full-string (underscore-interleaved-string name-strings)))
      (intern full-string (find-package :mumble)))))
