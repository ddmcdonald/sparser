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

(defun includes-mumble-rdata (rdata)
  "Expects the rdata to be a list of lists, and checks
   for one of them to have the operator :mumble."
  (when (consp (car rdata))
    (assq :mumble rdata)))

(defun apply-mumble-rdata (category rdata)
  "Provide phrase and argument information (so far only)
   for verbs. Look up the m-word, which should exist
   at this point, and create the lexicalized phrase."
  ;; Called from setup-rdata
  ;; (push-debug `(,category ,rdata))
  ;; (setq category (car *) rdata (cadr *))
  (let ((mumble-spec (cadr (assq :mumble rdata))))
    (decode-mumble-spec category mumble-spec)))

(defun decode-mumble-spec (category mumble-spec)
  "Entry point from decode-realization-parameter-list"
  ;; e.g. (:mumble ("build" svo :v artifact))
  ;;      (:mumble ("push" svo :s agent :o theme))
  ;;      (:mumble (transitive-with-final-adverbial "push" "together"))
  (etypecase (first mumble-spec)
    (string
     (apply-mumble-phrase-data 
      category (first mumble-spec) (second mumble-spec) (cddr mumble-spec)))
    (symbol
     (apply-mumble-function-data category mumble-spec))))

(defun apply-mumble-function-data (category function-and-args)
  (apply-function-data category function-and-args))

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

(defun apply-mumble-phrase-data (category pname phrase-name p&v-pairs)
  "Subroutine of apply-mumble-rdata to set up the data (dereference
   the symbols) so that the Mumble side of this."
  (let ((m-word (mumble::find-word pname))
        (m-phrase-name (mumble-symbol phrase-name)))
    (assert m-word (pname)
            "The Mumble word for ~s isn't defined yet" pname)
    (assert (mumble::phrase-named m-phrase-name) (phrase-name)
            "There is no Mumble phrase named ~a." phrase-name)
    ;; Works for side-effects. We presumably need to do more 
    ;; indexing to set this up to drive predictive parsing
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
      (mumble::record-krisp-mapping m-word clp)
      clp)))
         
(defun make-corresponding-lexical-resource (head-word)
  "Called from dereference-rdata and makes its own
   judgement abuot whether its appropriate to create
   Mumble resources in the present configuration and/or
   dynamic context."
  (declare (special *build-mumble-equivalents*))
  (when (or *build-mumble-equivalents*
            *CwC*)
    (let* ((pos-tag (car head-word))
           (word-or-variable (cdr head-word))
           (word (and (or (word-p word-or-variable)
                          (polyword-p word-or-variable))
                      word-or-variable)))
      (when word
        (make-resource-for-sparser-word word pos-tag)))))

(defun make-shortcut-corresponding-resource (word pos-tag)
  (when *build-mumble-equivalents*
    (make-resource-for-sparser-word pos-tag word)
    :done)) ;; keep this on the stack

(defun make-resource-for-sparser-word (word pos-tag)
  (push-debug `(,word))
  (let* ((m-pos (ecase pos-tag
                  (:verb 'mumble::verb)
                  (:common-noun 'mumble::noun)
                  (:adjective 'mumble::adjective)
                  (:interjection 'mumble::interjection)))
         (m-word (get-mumble-word-for-sparser-word word m-pos)))

    ;; Make the lexicalized phrases
    (ecase pos-tag
      (:verb) ;; done in the category rdata processing
      (:common-noun (mumble::noun m-word))
      (:adjective (mumble::adjective m-word))
      (:interjection (mumble::interjection m-word)))))
