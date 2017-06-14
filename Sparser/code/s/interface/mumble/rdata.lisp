;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2016-2017 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "rdata"
;;;   Module: "interface;mumble;"
;;;  Version: May 2017

(in-package :sparser)

;;;--------------------------------------------
;;; Mumble information within shortcut schemes
;;;--------------------------------------------

;;--- creating

(defun translate-mumble-phrase-data (phrase-exp)
  "Called from define-realization-scheme to decode and check
   the Mumble side of the mapping schema. This map is like the 
   maps in realization schema in that it records variable
   descriptors (e.g. subj-slot) rather than actual variables.
   The converstion to actual variables is done by make-mumble-mapping
   which is called by decode-shortcut-rdata.
     The value this returns becomes the value of the 'phrase'
   slot of the realization-scheme we're defining."
  (let* ((phrase-name (car phrase-exp))
         (phrase (m::phrase-named (mumble-symbol phrase-name)))
         (arg-pairs (cdr phrase-exp))
         (decoded-pairs
          (loop for (param-name . schematic-var) in arg-pairs
             as param = (m::parameter-named (mumble-symbol param-name))
             collect `(,param . ,schematic-var))))
    (cons phrase decoded-pairs)))


(defun setup-mumble-data (raw-data category rdata)
  "Called from the initialize-instance method of realization-data.
   Take the phrase and mapping prepared in decode-shortcut-data ('mdata')
   working from the information on the phrase and create the runtime 
   object that realize et al. will access. Store that on the 
   instance ('rdata')."
  (let ((head-data (rdata-head-words rdata)))
    (let ( m-readings ) ;; if multiple pos will get mulitple mdata
      (do ((pos (car head-data) (car rest))
           (word (cadr head-data) (cadr rest))
           (rest (cddr head-data) (cddr rest)))
          ((null pos))
        (let ((mdata (construct-mdata category pos word raw-data)))
          (push mdata m-readings)))
      (setf (mumble-rdata rdata) (nreverse m-readings)))))


(defun construct-mdata (category pos word raw-data)
  "If its a verb and there's a verb-oriented lp in the raw data we'll
   assume it gets the map. For other parts of speech we leave those
   fields empty and just use the lp we get from the word."
  ;;(lsp-break "pos = ~a word = ~a" pos word)
  (case pos
    (:verb
     (let* ((phrase (car raw-data))
            (map (cdr raw-data))
            (variables (loop for (parameter . variable) in map
                          collect variable))
            (param-var-map
             (loop for (parameter . variable) in map
                collect (make-instance 'mumble::parameter-variable-pair
                                       :var variable :param parameter))))
       (multiple-value-bind (m-head lp)
           (decode-rdata-head-data pos word category phrase)
         (make-instance 'm::mumble-rdata
                        :class category
                        :lp lp
                        :map param-var-map
                        :head m-head
                        :vars variables))))
    (:common-noun
     (multiple-value-bind (m-head lp)
         (decode-rdata-head-data pos word category)
       (make-instance 'm::mumble-rdata
                      :class category
                      :lp lp
                      :head m-head)))
    (:adjective
     (multiple-value-bind (m-head lp)
         (decode-rdata-head-data pos word category)
       (make-instance 'm::mumble-rdata
                      :class category
                      :lp lp
                      :head m-head)))
    (otherwise
     (lsp-break "Unanticipated part of speech in rdata: ~a" pos))))
  
  
(defun decode-rdata-head-data (pos word-data category &optional phrase)
  "The head information in realization-data is moderately complicated.
   This digests it and returns the mumble word that is the head and
   the corresponding lexicalized phrase."
  (multiple-value-bind (s-head-word irregulars)
      (etypecase word-data
        (cons (values (car word-data) (cdr word-data))) ;; or could be synonyms
        (word word-data)
        (polyword word-data))
    (declare (ignore irregulars)) ;;//// third arg in define-word/expr
    (multiple-value-bind (lp m-word)
        (make-resource-for-sparser-word s-head-word pos category phrase)
      (values m-word lp))))


;;--- retrieving

#+:mumble
(defgeneric has-mumble-rdata (category &key pos)
  (:documentation "Return the mumble field in the category's rdata.
    If there are several realizations, use the part of speech to
    discriminate among them.")
  (:method ((i individual) &key pos)
    (has-mumble-rdata (itype-of i) :pos pos))
  (:method ((c category) &key pos)
    (let ((rdata-field (rdata c)))
      (when rdata-field
        ;; does the category have any recorded realizations?
        (when (some #'mumble-rdata rdata-field)
          ;; do any have mumble realiation information on them?
          (let* ((relevant-rdata (loop for r in rdata-field
                                    when (mumble-rdata r)
                                    collect r))
                 (mumble-rdata (loop for rr in relevant-rdata
                                  collect (mumble-rdata rr))))
            (when mumble-rdata
              (unless (typep (car mumble-rdata) 'm::mumble-rdata)
                (if (typep (car (car mumble-rdata)) 'm::mumble-rdata)
                  (setq mumble-rdata (car mumble-rdata))
                  (error "Ill-formed rdata for mumble: ~a" mumble-rdata)))

              ;;(lsp-break "mumble-data for ~a" c)
              (if (null (cdr mumble-rdata))
                (car mumble-rdata)
                (m::select-realization mumble-rdata :pos pos)))))))))


;;--- expedited access

(defgeneric mumble-data (unit)
  (:documentation "Return the mumble field of the unit if
    there is one.")
  (:method ((i individual)) (mumble-data (itype-of i)))
  (:method ((s symbol)) (mumble-data (category-named s :error-if-null)))
  (:method ((c referential-category)) (mumble-data (cat-realization c)))
  (:method ((list cons))
    (when (every #'(lambda (o) (typep o 'realization-data)) list)
      (mumble-data (car list))))
  (:method ((rdata realization-data)) (mumble-rdata rdata)))



;;;-----------------------------------------------
;;; Mumble information within rdata -- verb cases
;;;-----------------------------------------------

(defun apply-mumble-rdata (category rdata)
  "Provide phrase and argument information (so far only)
   for verbs. Look up the m-word, which should exist
   at this point, and create the lexicalized phrase.
   Called from setup-rdata when the mumble flag is up."
  (let ((mumble-spec (cadr (if (keywordp (car rdata))
                             (member :mumble rdata)
                             (assq :mumble rdata)))))
    (decode-mumble-spec category mumble-spec)))

(defun decode-mumble-spec (category mumble-spec)
  ;; e.g. (:mumble ("build" svo :o artifact))
  ;;      (:mumble ("push" svo :s agent :o theme))
  ;;      (:mumble (transitive-with-final-adverbial "push" "together"))
  (when (cdr mumble-spec)
    (let ((operator (car mumble-spec)))
      (etypecase operator
        (string
         (apply-mumble-phrase-data/verb
          category (car mumble-spec) (cadr mumble-spec) (cddr mumble-spec)))
        (symbol
         (cond
          ;; We might not be specifying a lexicalized head and instead
          ;; getting all the parts from the bindings. This will be
          ;; the name of a phrase followed by the usual pairs
          ((mumble::phrase-named (mumble-symbol operator))
           (apply-mumble-phrase-data 
            category
            (mumble::phrase-named (mumble-symbol operator))
            (cdr mumble-spec)))
          ((fboundp (mumble-symbol operator))
           (apply-mumble-function-data category mumble-spec))
          (t (push-debug `(,mumble-spec ,category))
             (error "Cannot decode this specification for the category ~
                     ~a~%  ~a" category mumble-spec))))))))

(defun apply-mumble-function-data (category function-and-args)
  "Sugar for a call to a resource-defining Mumble function.
   Any special handling of the arguments has to be done on the caller side.
   Designed for the case of just string arguments. Indexes the resource
   to the category."
  (let* ((sparser-name (car function-and-args))
         (fn-name (mumble-symbol sparser-name)))
    (unless (fboundp fn-name)
      (error "There is no resource-defining function named ~a." fn-name))
    (let ((lp (apply fn-name (cdr function-and-args))))
      (mumble::record-lexicalized-phrase category lp)
      (values lp category))))


(defun apply-mumble-phrase-data (category phrase-name p&v-pairs)
  "Designed for relative-location, where we want a PP with all of its
   parts coming fron the values of the variables on a instance of one."
  ;; e.g. (:mumble (prepositional-phrase :p functor :prep-object place))
  (let* ((phrase (etypecase phrase-name
                   (mumble::phrase phrase-name)
                   (symbol
                    (mumble::phrase-named (mumble-symbol phrase-name)))))
         (clp (make-instance 'mumble::category-linked-phrase
                :class category))
         (map (loop for (param-name var-name) on p&v-pairs by #'cddr
                as param = (mumble::parameter-named (mumble-symbol param-name))
                as var = (find-variable-for-category var-name category)
                do (progn
                     (assert var () "No variable named ~a in category ~a." var-name category)
                     (assert param () "No parameter named ~a in the phrase ~a." param-name phrase))
                collect (make-instance 'mumble::parameter-variable-pair
                          :var var
                          :param param)))
         ;; Make a partially saturated LP that open in all its parameters
         ;; which is make for a uniform procedure we applying it. 
         (lp (make-instance 'mumble::partially-saturated-lexicalized-phrase
               :phrase phrase
               :free (mumble::parameters-to-phrase phrase))))
    (setf (mumble::linked-phrase clp) lp)
    (setf (mumble::parameter-variable-map clp) map)
    (setf (get-tag :mumble category) clp)))
        

;;/// to-do -- generalize away from assumption that it's always a verb
(defun apply-mumble-phrase-data/verb (category pname phrase-name p&v-pairs)
  "Subroutine of apply-mumble-rdata to set up the data (dereference
   the symbols) so that the Mumble side of this."
  (let ((m-word (mumble::find-word pname))
        (m-phrase-name (mumble-symbol phrase-name)))
    (assert (mumble::phrase-named m-phrase-name) (phrase-name)
            "There is no Mumble phrase named ~a." phrase-name)
    (unless m-word
      (let ((sparser-word (resolve pname)))
        (assert sparser-word (pname)
                "There is no word in Sparser for ~a" pname)
        (setq m-word (get-mumble-word-for-sparser-word sparser-word 'mumble::verb))))

    ;; Works for side-effects.
    (let* ((lp (mumble::verb m-word m-phrase-name))
           (map (loop for (param-name var-name) on p&v-pairs by #'cddr
                      as param = (mumble::parameter-named (mumble-symbol param-name))
                      as var = (find-variable-for-category var-name category)
                      do (assert var (var-name) "No variable named ~a in category ~a.")
                      collect (make-instance 'mumble::parameter-variable-pair
                                             :var var
                                             :param param)))
           (clp (make-instance 'mumble::category-linked-phrase
                               :class category
                               :lp lp
                               :map map)))
      (mumble::record-lexicalized-phrase m-word lp)
      (mumble::record-krisp-mapping m-word clp)
      (setf (get-tag :mumble category) clp))))


;;;------------
;;; head words
;;;------------
         
(defun make-corresponding-lexical-resource (head-word category)
  "Called from the initialize-instance method of realization-data;
   see make-realization-data. The 'head-word' was constructed by
   decode-rdata-heads. The goal is to arrange that every word
   that is mentioned in realization data of a category should 
   have a mumble word created for it. We ensure there's a sparser
   word first, then make its mumble equivalent."
  (declare (special *build-mumble-equivalents*))
  (when (or *build-mumble-equivalents*
            *CwC*)
    (let* ((pos-tag (car head-word))
           (word-or-variable (cadr head-word))
           (word (etypecase word-or-variable
                   ((or word polyword) word-or-variable)
                   (list (car word-or-variable))
                   (lambda-variable 
                    ;; Should we be doing words for variables?
                    ;; e.g. head-word = (:word #<variable name>)
                    (let ((lemma
                           (or (get-tag :lemma category)
                               (list :common-noun
                                     (let ((name (cat-name category)))
                                       (make-word :symbol name
                                                  :pname (string-downcase
                                                          (symbol-name name))))))))
                      (assert (= (length lemma) 2) (lemma) "Improper lemma.")
                      (setq pos-tag (car lemma))
                      (cadr lemma))))))
      (when word
        (make-corresponding-mumble-resource word pos-tag category)))))

(defgeneric make-corresponding-mumble-resource (word pos-tag krisp-obj)
  (:documentation "Used when the caller has the word and part-of-speech 
    in hand, such as lemmas or in the after method or make-rules-for-head's
    after method.
    Calls the standard lexicalized tree constructor and then records
    the result on the Krisp category or individual.")
  (:method :around (word pos-tag krisp-obj)
    (when (or *build-mumble-equivalents*
              *CwC*)
      (call-next-method)))
  (:method (word pos-tag (i individual))
    "Route for attributes"
    (let ((lp (make-resource-for-sparser-word word pos-tag i)))
      (when lp (m::record-lexicalized-phrase i lp))))
  (:method (word pos-tag (c category))
    "Route for lemmas, preposititions, make-rules-for-head"
    (let ((lp (make-resource-for-sparser-word word pos-tag c)))
      (when lp (m::record-lexicalized-phrase c lp)))))


(defun make-resource-for-sparser-word (word pos-tag category &optional verb-phrase)
  "Look up the corresponding mumble part of speech ('m-pos').
   Make the mumble word ('m-word'). Then create and record 
   lexicalized phrase to embed the word in the appropriate
   elementary tree (i.e. lexicalize the appropriate phrase).
   Record the lexicalized tree on the mumble word and th
   See Mumble/derivation-trees/builders.lisp for the lexicalized
   phrase creators." 
  (when (consp word) ;; irregulars e.g. ("bacterium" :plural "bacteria")
    ;; drop them on the floor for now. /// lookup Mumble rep of irregulars
    (setq word (car word)))
  (let ((m-pos (mumble-pos pos-tag)))
    (when m-pos
      (let* ((m-word (and m-pos (get-mumble-word-for-sparser-word word m-pos)))
             (lp (or (m::get-lexicalized-phrase m-word)
                     (case pos-tag
                       (:adjective (m::adjective m-word))
                       ((or :noun :common-noun) (m::noun m-word))
                       (:proper-noun (m::proper-noun m-word))
                       (:verb (m::verb m-word verb-phrase))
                       (:adverb (m::adverb m-word))
                       (:prep (m::prep m-word))
                       (:quantifier (m::quantifier m-word))
                       (:pronoun (m::pronoun m-word))
                       (:interjection (m::interjection m-word))))))
        (when lp
          (m::record-lexicalized-phrase m-word lp)
          (values lp
                  m-word))))))

(defun mumble-pos (pos-tag) ;; keep in sync w/ sparser-pos in binding-centric
  "Translate a Sparser part of speech into the Mumble equivalent"
  ;; Also in Mumble word labels: {past,present}-participle, {comparative,superlative}-adjective
  ;; abstract-noun, {interrogative,wh,relative}-pronoun, particle, complementizer,
  ;; exclamation, expletive, vocative, punctuation.
  (ecase pos-tag
    ((or :noun :common-noun) 'm::noun)
    (:proper-noun 'm::proper-noun)
    (:verb 'm::verb)
    (:modal 'm::modal)
    ((or :adj :adjective) 'm::adjective)
    ((or :adv :adverb) 'm::adverb)
    ((or :prep :preposition) 'm::preposition)
    (:determiner 'm::determiner)
    (:quantifier 'm::quantifier)
    (:pronoun 'm::pronoun)
    (:interjection 'm::interjection)
    (:number 'm::number)
    (:word nil)))

