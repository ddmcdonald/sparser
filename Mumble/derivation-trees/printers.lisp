;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/printers.lisp
;; May 2017

;; For pretty printers and similar code that needs the full set of Mumble object
;; types to already be defined so they can be referenced.

(in-package :mumble)

;;;--------------------------------
;;; derivation tree pretty-printer
;;;--------------------------------

(defgeneric pp-dtn (item)
  (:documentation "Given a dtn, produce an s-expression that
   displays its parts.")
  (:method ((dtn derivation-tree-node))
    `(derivation-tree-node
      ,@(when (referent dtn)
             `(:referent ,(pp-dtn (referent dtn))))
      (:resource ,(pp-dtn (resource dtn)))
      ,@(when (features dtn)
             `(:features ,(pp-dtn (features dtn))))
      ,@(when (adjuncts dtn)
             `(:adjuncts
               ,@(loop for an in (adjuncts dtn)
                    collect (pp-dtn an))))
      ,@(when (complements dtn)
             `(:complements
               ,@(loop for cn in (complements dtn)
                    collect (pp-dtn cn))))))

  ;; method for sp::individual is in
  ;; Sparser/.../interface/mumble/interface.lisp
  
  (:method ((list cons))
    (cond
      ((accessory-type-p (car list))
       (let ((ac-type (car list)))
         (if (cdr list)
           ;; (#<accessory-type tense-modal> . #<word should>)
           (let ((value (cdr list)))
             `(,(mname ac-type) ,(pp-dtn value)))
           (mname ac-type))))
      (t
       `(,@(loop for item in list
              collect (pp-dtn item))))))
  
  (:method ((w word))
    (pname w))
  (:method ((p pronoun))
    (mname p))
  (:method ((at accessory-type))
    (mname at))
  (:method ((av accessory-value))
    (mname av))
  (:method ((ap attachment-point))
    (mname ap))
  (:method ((p parameter))
    (mname p))
  
  (:method ((cn complement-node))
    (let ((param (phrase-parameter cn))
          (value (value cn)))
      `(,(pp-dtn param) = ,(pp-dtn value)) ))
  (:method ((an adjunction-node))
    (let ((ap (ap an))
          (value (value an)))
      `(,(pp-dtn ap) ,(pp-dtn value))))
  
  (:method ((lp saturated-lexicalized-phrase))
    (let ((phrase (phrase lp))
          (bound-args (bound lp)))
      `(,(mname phrase)
         ,(loop for cn in bound-args
             as parameter = (phrase-parameter cn)
             as value = (value cn)
             return `(,(mname parameter) ,(pp-dtn value))))))
  (:method ((p phrase))
    (mname p)))
      
