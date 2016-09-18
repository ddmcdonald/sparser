;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2016 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "rdata"
;;;   Module: "interface;mumble;"
;;;  Version: April 2016

(in-package :sparser)

;;;---------------------------------
;;; Mumble information within rdata
;;;---------------------------------

(defun apply-mumble-rdata (category rdata)
  "Provide phrase and argument information (so far only)
   for verbs. Look up the m-word, which should exist
   at this point, and create the lexicalized phrase."
  (let ((mumble-spec (cadr (if (keywordp (car rdata))
                             (member :mumble rdata)
                             (assq :mumble rdata)))))
    (decode-mumble-spec category mumble-spec)))

(defun decode-mumble-spec (category mumble-spec)
  "Entry point from decode-realization-parameter-list"
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
                do (assert var (var-name) "No variable named ~a in category ~a.")
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
        (setq m-word (get-mumble-word-for-sparser-word sparser-word))))

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
         
(defun make-corresponding-lexical-resource (head-word category)
  "Called from dereference-rdata and makes its own
   judgement abuot whether its appropriate to create
   Mumble resources in the present configuration and/or
   dynamic context."
  (declare (special *build-mumble-equivalents*))
  (when (or *build-mumble-equivalents*
            *CwC*)
    (let* ((pos-tag (car head-word))
           (word-or-variable (cadr head-word))
           (word (etypecase word-or-variable
                   ((or word polyword) word-or-variable)
                   (list (car word-or-variable))
                   (lambda-variable
                    (let ((lemma (or (get-tag :lemma category)
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

(defun make-resource-for-sparser-word (word pos-tag)
  (let* ((m-pos (case pos-tag
                  (:adjective 'mumble::adjective)
                  ((or :noun :common-noun :proper-noun) 'mumble::noun)
                  (:verb 'mumble::verb)
                  (:adverb 'mumble::adverb)
                  (:prep 'mumble::preposition)
                  (:interjection 'mumble::interjection)))
         (m-word (and m-pos (get-mumble-word-for-sparser-word word m-pos)))
         (lp (case pos-tag
               (:adjective (mumble::adjective m-word))
               ((or :noun :common-noun :proper-noun) (mumble::noun m-word))
               (:verb) ;; done in the category rdata processing
               (:adverb (warn "Need Mumble adverbial definition."))
               (:prep (mumble::prep m-word))
               (:interjection (mumble::interjection m-word)))))
    (when lp
      (mumble::record-lexicalized-phrase m-word lp))))


