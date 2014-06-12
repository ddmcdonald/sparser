;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:sequence:"
;;;  version:  0.4 May 2014

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/15/92 v2.3) setting up for new semantics
;; 0.2 (5/27/94) fleshed it out with def-forms, rdata, and autodef
;;     (9/12/95) tweeked the autodef.  11/15 fixed a typo in them
;; 0.3 (6/6/13) Rebuilt the def form in the modern class-centric idiom. 
;;     (7/1/13) Changed the leading bracket on determiner case to be
;;      ].quantifier, otherwise it messed up on "the last ..."
;;     (7/10/13) modified sequencer and define-sequencer/preposition to 
;;     incorporate interval relations.
;; 0.4 (5/28/14) Rebuilding it in terms of categories rather than 
;;      individuals. (5/30/14) Elaborated the call to define-function-term
;;      and put in the needed form rules

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
   these into two sorts, roughly determiners and prepositions. |#

;;--- determiners

(defun define-sequencer/determiner (string)
  (define-function-term string 'det
    :super-category 'sequencer
    :rule-label 'sequencer
    :discriminator 'sequence
    :brackets (list ].quantifier .[np )
    :tree-families '(generic-np-premodifier)))

;; Define-function-term would normally make the needed
;; function rules, but when we make we use a generalizing rule-label
;; like this is would make the same rhs for all of these, which
;; would raise a flag and muddy the waters.

(def-form-rule (sequencer common-noun)
  :form np
  :referent (:method modifier+noun left-edge right-edge))
(def-form-rule (sequencer n-bar)
  :form np
  :referent (:method modifier+noun left-edge right-edge))
(def-form-rule (sequencer np-head)
  :form np
  :referent (:method modifier+noun left-edge right-edge))
(def-form-rule (sequencer np)
  :form np
  :referent (:method modifier+noun left-edge right-edge))


;;--- prepositions

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

        (assign-brackets/expr word (list  ].preposition preposition]. preposition.[ ))
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

