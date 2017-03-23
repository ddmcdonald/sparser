;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from terms 2/27/17

(in-package :sparser)

(define-category order-of-magnitude :specializes unit-of-measure
  :realization
  (:noun ("order of magnitude"
          :plural "orders of magnitude")))

(define-category data :specializes measurement
		 :realization
		 (:noun ("datum" :plural "data")))

;;/// N.b. the rule is written over the literal "fold"
(define-category n-fold :specializes measurement
  :binds ((number number))
  :realization
  (:noun "fold"
         :m number))
;; only used in phrases like nnn-fold, this is here to suppress the
;;  attempt to ascribe a biological meaning to the verb


;; below is needed because of a use of "transients" in the CURE corpus
(define-category transient-measurement :specializes bio-measurement
  :realization  (:noun ("transientXXX" :plural "transients"))) ;; don't pick up "transient" from COMLEX, and don't allow "transient" as a singular noun

(noun "throughput" :super measurement)

(define-category assay :specializes measure
  :realization
  (:noun "assay"))

(noun "mass" :super bio-scalar)


;;;------------------
;;; Units of measure
;;;------------------
;;-- see model/dossiers/units-of-measure.lisp for more forms.


(define-unit-of-measure "cm")
(define-unit-of-measure "dalton")
(define-unit-of-measure "kD")
(define-unit-of-measure "kb")
(define-unit-of-measure "mL")
(define-unit-of-measure "mg")
(define-unit-of-measure "ml")
(define-unit-of-measure "mm")
(define-unit-of-measure "nM")
(define-unit-of-measure "ng")
(define-unit-of-measure "nm")
(define-unit-of-measure "pmol")
(define-unit-of-measure "pmol/min/mg")
(define-unit-of-measure "BMD") ;; bone mineral density -- can't find ID #
(define-unit-of-measure "IC50") ;; "half maximal inhibitory concentration"
(define-unit-of-measure "IC 50");; "half maximal inhibitory concentration"
(define-unit-of-measure "μm")
;;#+sbcl (define-unit-of-measure "Î¼m")
;;(define-unit-of-measure "Âµm") this fails in ACL. Reading in UTF-8 ?

;; add mug as a synonym of ug and microgram

;;;------------------
;;; Units of measure with IDs
;;;------------------

(def-ided-indiv unit-of-measure "nmol" "UO:0000041" :name "nanomole") 
(def-ided-indiv unit-of-measure "ng/ml" "UO:0000275" :name "nanogram per milliliter") 
(def-ided-indiv unit-of-measure "mol" "UO:0000013" :name "mole") 
(def-ided-indiv unit-of-measure "mmol" "UO:0000040" :name "millimole") 
(def-ided-indiv unit-of-measure "g/l" "UO:0000175" :name "gram per liter") 
(def-ided-indiv unit-of-measure "CFU" "UO:0000210" :name "colony forming unit") ;;measure of viable bacterial numbers
(def-ided-indiv unit-of-measure "microgram" "UO:0000023" :name "microgram") 