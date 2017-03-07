;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "aux-taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Created 2/3/17 to hold definitions etc. that had been in taxonomy.lisp
;; but didn't really belong there since they had little to do with the
;; taxonomy of entities in biology.

(in-package :sparser)

;;----------

(define-category bio-control :specializes process-control-process
  ;; increase in rate vs increase in RAS activity
  :binds ((multiplier (:or fold unit-of-measure)))
  :realization
    (:verb ("control" :present-participle "controlling"
                      :present-participle "controling") 
           :etf (svo-passive)
           :by multiplier
           :m multiplier))

(define-category negative-bio-control :specializes bio-control
  :binds ((inhibited-process bio-process))
  :realization 
    (:verb "negatively controls"
     :etf (svo-passive)
     :from inhibited-process))

(define-category positive-bio-control :specializes bio-control
  :realization 
    (:verb "positively controls"
           :etf (svo-passive)))

;;/// "catalysis of phosphorylation by MEK"
(define-category catalytic-activity :specializes positive-bio-control
  :restrict ((object biochemical-reaction))
  :bindings (uid "GO:0003824")
  :binds ((controlType)
          (catalyst (:or protein bio-complex gene)))
  :realization
  (:verb "catalyze" :noun "catalysis" :adj "catalytic"
         :etf (svo-passive)
         :of catalyst))


(define-category enzyme-activity :specializes catalytic-activity
  :realization
  (:noun "enzyme activity"))

(define-category kinase-activity :specializes enzyme-activity
  :realization
  (:noun "kinase activity"))


;;----------

(define-category reference-item
  :specializes biological
  :documentation "For things like ProteinReference and SmallMoleculeReference.
  Generic characterizations of proteins and small molecules, etc. which have
  OBO identifiers, but are not localized to cellular locations.")

(define-category small-molecule-reference
  :specializes reference-item
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry. 
  :mixins (reactome-category))
 
(define-category visual-representation ;; figures, arrows, stars, etc.
  :specializes bio-abstract)
#| Interfers with the "observation" that is a kind of evidence
  :realization
    (:noun "observation") |#

;;----------

(delete-adj-cfr (resolve "cyclic"))
(define-category bio-cyclic :specializes bio-predication
  :realization
    (:adj "cyclic"))


;;----------

(define-category response
  :specializes bio-process
  :binds ((beneficiary biological)
          (agent biological)) ;; (:or biological drug)))
  :realization
    (:verb "respond"
     :etf (sv)
     :noun "response"
     :of beneficiary
     :to agent))

(define-category cellular-process
  :specializes response
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "cellular response"))
