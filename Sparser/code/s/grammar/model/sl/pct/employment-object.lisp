;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "employment object"
;;;   Module:  "model;sl:pct:"
;;;  version:  June 1993

;; initiated 6/11/93 v2.3

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  employed-as
  :instantiates :self
  :specializes nil
  :binds ((person . person)
          (position . position))
  :index (:special-case :find find/employed-as
                        :index index/employed-as
                        :reclaim reclaim/employed-as )
  )

;; no realization since we're not yet dealing with verbs that
;; directly exemplify this notion, just with appositives


;;;----------
;;; printing
;;;----------



;;;-----------
;;; indexing
;;;-----------

(defun index/employed-as (obj self-cat bindings)
  (let ((person (binding-value 
                 (find/binding-of-variable
                  'person bindings self-cat)))
        (position (binding-value
                   (find/binding-of-variable
                    'position bindings self-cat)))
        (instances (cat-instances self-cat)))

    (if instances
      (let ((jobs-entry (assoc person instances)))
        (if jobs-entry
          (rplacd jobs-entry
                  `( (,position . ,obj)
                     ,@(cdr jobs-entry) ) )

          (setf (cat-instances self-cat)
                `( (,person
                    (,position . ,obj))
                   ,@(cat-instances self-cat) ) )))

      (setf (cat-instances self-cat)
            `( (,person
                (,position . ,obj)) )  ))))



(defun find/employed-as (self-cat instr)
  (let ((person (value-of-instr 'person instr))
        (position (value-of-instr 'position instr))
        (instances (cat-instances self-cat)))

    (when instances
      (let ((jobs (cdr (assoc person instances))))
        (when jobs
          (cdr (assoc position jobs)))))))
    
