;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:sequence:"
;;;  version:  0.3 July 2013

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/15/92 v2.3) setting up for new semantics
;; 0.2 (5/27/94) fleshed it out with def-forms, rdata, and autodef
;;     (9/12/95) tweeked the autodef.  11/15 fixed a typo in them
;; 0.3 (6/6/13) Rebuilt the def form in the modern class-centric idiom. 
;;     (7/1/13) Changed the leading bracket on determiner case to be
;;      ].quantifier, otherwise it messed up on "the last ..."
;;     (7/10/13) modified sequencer and define-sequencer/preposition to incorporate interval relations

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category sequencer
  :instantiates  modifier
  :binds ((name :primitive word)
          (relation :primitive word)) ;;added this variable in for interval relationships
  :index (:key name :permanent)
  :realization (:word name))

;;;---------------
;;; defining form
;;;---------------

#| For the purpose of introducing brackets we need to subcategorize
   these into two sorts, roughly determiners and prepositions.
   To do that with autodef we need two categories and two def-forms,
   the categories are unlikely to do any other work in the system
   so /// if there is eventually some way to define a 'pro forma'
   category as such that would be a good thing. |#


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

        (assign-brackets/expr word (list ].quantifier .[np ))
        sequencer ))))


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


;;;----------
;;; auto-def
;;;----------

(define-autodef-data 'sequencer
  :module *sequencers*
  :display-string "sequencers"
  :not-instantiable t 
  :description "a modifier that says where something lies in within a sequence"
  :examples "\"before\" \"next\"" )


(define-category sequencer/determiner)
(define-category sequencer/preposition)

(define-autodef-data 'sequencer/determiner
  :display-string "acting like determiners"
  :form 'define-sequencer/determiner
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a determiner"
  :examples "\"next\" \"subsequent\"" )

(define-autodef-data 'sequencer/preposition
  :display-string "acting like prepositions"
  :form 'define-sequencer/preposition
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a preposition by being followed by a full noun phrase"
  :examples "\"before\"" )

