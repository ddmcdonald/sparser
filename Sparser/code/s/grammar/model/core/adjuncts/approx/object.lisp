;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1995,2011-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:adjuncts:approx:"
;;;  version:  December 2019

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/7/92 v2.3) redone in the new semantics. 9/21/93 moved to [adjuncts]
;;     (5/27) added rdata
;; 0.2 (11/17) distinguishing between adverbs and determiners
;;     (9/12) tweeked the autodef
;; 0.3 (9/23/11) Reworked adverbial to use define-adverb. Reworked
;;      the category a little. Reworked determiner case as quantifiers
;; 0.3 (1/4/13) Prety drastic reworking to feed define-function-term
;;      with parameters as an approximator rather than instantiate
;;      one per-se as was done in the 'original' code that's commented
;;      out. (5/26/13) probagated change in deine-adverb's signature

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category approximator
  :specializes modifier
  :instantiates  :self
  :binds ((name :primitive word))
  :index (:key name :permanent)
  :realization (:word name))


;;;----------------
;;; defining forms
;;;----------------

(defun define-approximator/determiner (string)
  (define-function-term string 'det
    :super-category 'approximator
    :rule-label 'approximator
    :word-variable 'name
    :tree-families '(generic-np-premodifier)))

(defun define-approximator/adverbial (string)
  (define-adverb string :super-category 'approximator))


;;;-------
;;; rules
;;;-------

(def-cfr number (approximator number)
  :form number
  :referent (:function determiner-noun left-edge right-edge))


(def-k-method compose ((approx category::approximator)
                       (amount category::amount))
  ;; Invoked from determiner-noun -- subcat test uses the
  ;; macro applicable-methods to find this method (or not)
  "The set of approximators in dossiers/modifiers.lisp will fall
   into a number of semantically different camps. We should find
   some use-cases where the differences carry fruitful consequences
   for reasoning and then work that up as a set of subtype labels
   on the amount individual or something similar.
     Until then we just cache it out as a modifier."
  (let ((j (bind-variable 'modifier approx amount)))
    j))

;;;---------
;;; Autodef
;;;---------

(define-category approximator/determiner)
(define-category approximator/adverbial)

(define-autodef-data 'approximator
  :module *approximators*
  :display-string "approximators"
  :not-instantiable t
  :description "a word that says that something is not exact"
  :examples "\"about\" \"fairly\" \"only\"" )

(define-autodef-data  'approximator/determiner
  :display-string "determiners"
  :form 'define-approximator/determiner
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can begin a noun phrase"
  :examples "\"about\" \"around\"" )

(define-autodef-data  'approximator/adverbial
  :display-string "adverbs"
  :form 'define-approximator/adverbial
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can modify a verb or other types of phrases"
  :examples "\"fairly\" \"only\"" )

