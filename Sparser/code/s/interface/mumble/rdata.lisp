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
  (let* ((phrase (car raw-data))
         (map (cdr raw-data))
         (variables (loop for (parameter . variable) in map
                       collect variable))
         (param-var-map
          (loop for (parameter . variable) in map
             collect (make-instance 'mumble::parameter-variable-pair
                                    :var variable :param parameter)))
         (head-data (rdata-head-words rdata)))

    (multiple-value-bind (m-head lp)
        (decode-rdata-head-data head-data phrase category)
      (let ((mdata (make-instance 'm::mumble-rdata
                                  :class category
                                  :lp lp
                                  :map param-var-map
                                  :head m-head
                                  :vars variables)))      
        (setf (mumble-rdata rdata) mdata)))))
      
(defun decode-rdata-head-data (head-data phrase category)
  "The head information in realization-data is moderately complicated.
   This digests it and returns the mumble word that is the head and
   the corresponding lexicalized phrase."
  (when head-data
    (unless (third head-data) ;; e.g. evidence in bio;taxonomy
      ;;(error "the category ~a has mulitple heads: ~a" category head-data))
      ;;/// Have to think about what to do with these
      
      ;; head = (:verb (#<word "build"> :past-tense #<word "built">))
      (let* ((pos (car head-data)) 
             (word-data (cadr head-data)))
        (multiple-value-bind (s-head-word irregulars)
            (etypecase word-data
              (cons (values (car word-data) (cdr word-data)))
              (word word-data)
              (polyword word-data))
          (declare (ignore irregulars)) ;;//// lookup Mumble-side
          ;; rdata processing has already done the head at the point
          ;; when we're called, so the m-word should exist, though
          ;; not the lp if this is a verb
          (let* ((mpos (mumble-pos pos))
                 (m-word (get-mumble-word-for-sparser-word
                          s-head-word pos)))
            (unless m-word
              (error "Why isn't there already a mumble word for ~s"
                     (pname s-head-word)))
            (let ((lp (or (m::get-lexicalized-phrase m-word)
                          (make-resource-for-sparser-word
                           s-head-word pos phrase))))
              ;;(lsp-break "lp for ~s is ~a" (pname s-head-word) lp)
              (values m-word lp))))))))



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
  "Called from the initialize-instace method of realization-data;
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
        (make-resource-for-sparser-word word pos-tag)))))

(defun make-corresponding-mumble-resource (word pos-tag)
  ;; As called from decode-realization-parameter-list which is
  ;; the central place 'shortcut' realization specification
  ;; handling that everything goes through. 
  ;; Notice that the word and tag are organized differently
  ;; which is why we can't use the other form (which fits
  ;; 'regular' specifications).
  (when (or *build-mumble-equivalents*
            *CwC*)
    (make-resource-for-sparser-word word pos-tag)
    :done)) ;; keep this on the stack

(defun mumble-pos (pos-tag) ;; c.f. sparser-pos in binding-centric
  "Translate a Sparser part of speech into the Mumble equivalent"
  (case pos-tag ;; no entry for :word and probably others
    ;; look at e.g. comparative-modifier
    (:adjective 'm::adjective)
    ((or :noun :common-noun :proper-noun) 'm::noun)
    (:verb 'm::verb)
    (:adverb 'm::adverb)
    (:prep 'm::preposition)
    (:interjection 'm::interjection)))

(defun make-resource-for-sparser-word (word pos-tag &optional verb-phrase)
  "Look up the corresponding mumble part of speech ('m-pos').
   Make the mumble word ('m-word'). Then create and record 
   lexicalized phrase to embed the word in the appropriate
   elementary tree (i.e. lexicalize the appropriate phrase).
   See Mumble/derivation-trees/builders.lisp for the lexicalized
   phrase creators."
  (let* ((m-pos (mumble-pos pos-tag))
         (m-word (and m-pos (get-mumble-word-for-sparser-word word m-pos)))
         (lp (case pos-tag
               (:adjective (m::adjective m-word))
               ((or :noun :common-noun :proper-noun) (m::noun m-word))
               (:verb (m::verb m-word verb-phrase))
               (:adverb (m::adverb m-word))
               (:prep (m::prep m-word))
               (:interjection (m::interjection m-word)))))
    (when lp
      (m::record-lexicalized-phrase m-word lp))))


