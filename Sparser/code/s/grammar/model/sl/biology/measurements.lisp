;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "measurements"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

(in-package :sparser)

;;;----------------------------------
;;; measurement terms
;;;----------------------------------


(define-category assay :specializes measure
  :realization
  (:noun "assay"))

(define-category data :specializes information
		 :realization
  (:noun ("datum" :plural "data")
                   :on concerning))

(define-category dataset :specializes information
		 :realization
  (:noun ("dataset" :plural "datasets")
         :on concerning))

(noun "COVIDx" :super dataset) ;; dataset/study

;; below is needed because of a use of "transients" in the CURE corpus
(define-category transient-measurement :specializes measurement
  :realization  (:noun ("transientXXX" :plural "transients"))) ;; don't pick up "transient" from COMLEX, and don't allow "transient" as a singular noun

(noun "throughput" :super measurement)




(noun "TopoPSA" :super measurement)
(def-synonym TopoPSA (:noun ("Topological Polar Surface Area" "topological polar surface area")))

;;;------------------
;;; Units of measure
;;;------------------
;;-- see model/dossiers/units-of-measure.lisp for more forms.


;(define-unit-of-measure "cm")
;(define-unit-of-measure "dalton")
;(define-unit-of-measure "kD")
(define-unit-of-measure "kb")
;(define-unit-of-measure "mL")
;(define-unit-of-measure "ml")
;(define-unit-of-measure "mg");moved to be with new-units def
;(define-unit-of-measure "mm")
;(define-unit-of-measure "nM");moved to be with new-units def
;(define-unit-of-measure "ng");moved to be with new-units def
;(define-unit-of-measure "nm");moved to be with new-units def
;(define-unit-of-measure "pmol")
(define-unit-of-measure "pmol/min/mg")
(define-unit-of-measure "BMD") ;; bone mineral density -- can't find ID #
(define-unit-of-measure "IC50") ;; "half maximal inhibitory concentration"
(define-unit-of-measure "IC 50");; "half maximal inhibitory concentration"
;(define-unit-of-measure "μm");moved to be with new-units def
;;#+sbcl (define-unit-of-measure "μm")
;;(define-unit-of-measure "µm") this fails in ACL. Reading in UTF-8 ?
;; add mug as a synonym of ug and microgram
(define-unit-of-measure "mOsM") ;milliosmole


