;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:sequence:"
;;;  version:  0.2 November 1995

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/15/92 v2.3) setting up for new semantics
;; 0.2 (5/27/94) fleshed it out with def-forms, rdata, and autodef
;;     (9/12/95) tweeked the autodef.  11/15 fixed a typo in them

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category sequencer
  :instantiates  modifier
  :binds ((name :primitive word))
  :index (:key name :permanent)
  :realization (:word name))


(define-autodef-data 'sequencer
  :module *sequencers*
  :display-string "sequencers"
  :not-instantiable t 
  :description "a modifier that says where something lies in within a sequence"
  :examples "\"before\" \"next\"" )


;;;---------------
;;; defining form
;;;---------------

#| For the purpose of introducing brackets we need to subcategorize
   these into two sorts, roughly determiners and prepositions.
   To do that with autodef we need two categories and two def-forms,
   the categories are unlikely to do any other work in the system
   so /// if there is eventually some way to define a 'pro forma'
   category as such that would be a good thing. |#

(define-category sequencer/determiner)
(define-category sequencer/preposition)


(defun define-sequencer/determiner (string)
  (let ((word (resolve-string-to-word/make string))
        sequencer )
    (if (setq sequencer
              (find-individual 'sequencer
                               :name word))
      sequencer
      (else
        (setq sequencer (define-individual 'sequencer
                            :name word))

        (assign-brackets/expr word (list ].phrase .[np ))
        sequencer ))))

(define-autodef-data 'sequencer/determiner
  :display-string "acting like determiners"
  :form 'define-sequencer/determiner
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a determiner"
  :examples "\"next\" \"subsequent\"" )



(defun define-sequencer/preposition (string)
  (let ((word (resolve-string-to-word/make string))
        sequencer )
    (if (setq sequencer
              (find-individual 'sequencer
                               :name word))
      sequencer
      (else
        (setq sequencer (define-individual 'sequencer
                            :name word))

        (assign-brackets/expr word (list ].phrase  phrase.[ ))
        sequencer ))))

(define-autodef-data 'sequencer/preposition
  :display-string "acting like prepositions"
  :form 'define-sequencer/preposition
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a preposition by being followed by a full noun phrase"
  :examples "\"before\"" )

