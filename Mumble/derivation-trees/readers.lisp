;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/reader.lisp
;; May 2017

;; For pretty printers and similar code that needs the full set of Mumble object
;; types to already be defined so they can be referenced.

(in-package :mumble)

;;;--------------------------------
;;; derivation tree sexp reader
;;;--------------------------------
(defmethod read-dtn ((other t))
  other)
(defmethod read-dtn ((dtn-sexp cons))
  (cond
    ((eq (car dtn-sexp) :slp) ;;saturated-lexicalized-phrase
     (let ((wd (second (third dtn-sexp))))
       (ecase (second dtn-sexp)
         (prepositional-phrase (prep wd))
         (common-noun (noun wd))
         (proper-name (noun wd))
         (svo (verb wd))
         (adjp (adjective wd))
         (prepositional-phrase (prep wd))
         (adjective (adjectival-modifier wd))
         (advp (adverb wd))
         (qp (quantifier wd))
         (pronoun (pronoun wd)))))
                    
    ((and (eq (car dtn-sexp) :dtn)
          ;;(assoc :referent (cdr dtn-sexp))
          (assoc :resource (cdr dtn-sexp)))
     (let ((dtn
            (make-dtn :referent (second (assoc :referent (cdr dtn-sexp)))
                      :resource (read-dtn
                                 (second (assoc :resource (cdr dtn-sexp)))))))
       (loop for item in (reverse (cdr dtn-sexp))
             unless (member (car item) '(:referent :resource))
             do
               (case (car item)
                 (:complement
                  (make-complement-node (second item)
                                        (read-dtn (third item))

                                        dtn))
                 (:adjunct
                  (make-adjunction-node
                   (make-lexicalized-attachment
                    (second item)
                    (read-dtn (third item)))
                   dtn))
                 (:features
                  (loop for feat in (second item)
                        do
                          (eval (accessory-operator-exp feat dtn))))))
       dtn))))

(defun accessory-operator-exp (feat dtn)
  `(,
    (ecase (car feat)
      (:determiner-policy (second feat))
      (:tense-modal
       (ecase (second feat)
         (present 'present-tense)
         (past 'past-tense)
         (will 'future-tense)
         (can 'can)))
      ((:progressive :passive :question :negate :command :question)
       (intern (car feat) (find-package :mumble)))
      (:perfect 'had)
      (:unmarked 'unmarked-clause))
    ',dtn))
    
