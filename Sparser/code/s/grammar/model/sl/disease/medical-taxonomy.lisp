;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;      File:   "medical-taxonomy"
;;;    Module:   "sl;disease:"
;;;   version:   November 2020

;; Broken out of bio;taxonomy 11/10/20 so we can modify it freely
;; to loosen the original type restrictions to apply to
;; more kinds of texts

(in-package :sparser)

;; NOT SURE WHERE ELSE THIS SHOULD GO
(define-category severity :specializes scalar-attribute
  :realization
  (:noun "severity"))


;;--- disease

(define-category disease-process
  :specializes process
  :mixins (biological has-uid))

(define-category metastasis
  :specializes disease-process
  :binds ((cancer cancer))
  :bindings (uid "MESH:D009362")
  :realization
    (:noun ("metastasis" :plural "metastases")
     :verb "metastasize"
     :etf (sv)
     :s cancer))

(define-category medical-condition  :specializes bio-context
  :mixins (has-uid)
  :binds ((organ bio-organ))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "medical condition"
     :m organ
     :of organ
     :in organ))

(noun "abnormality" :super medical-condition)
(noun "disorder" :super medical-condition)
(noun "symptom" :super medical-condition)


(define-category disease  :specializes medical-condition
  :mixins (has-uid)
  :binds ((organ bio-organ))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "disease"
     :m organ
     :of organ
     :in organ))
(def-synonym disease (:noun "illness"))

(define-category cancer  :specializes disease
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun  "cancer")
  :realization (:common-noun name))

(define-category melanoma  :specializes cancer
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "melanoma")
  :realization (:common-noun name))


(define-category injury  :specializes medical-condition
  :mixins (has-uid)
  :binds ((organ bio-organ))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "injury"
     :m organ
     :to organ))



;;--- drugs

(define-category drug
   :specializes molecule
   :binds ((disease disease)
           (treatment treatment)
           (target (:or protein process)))
  :realization
     (:noun "drug"
            :for disease
            :for treatment
            :for target))

(def-synonym drug (:noun ("therapeutic agent"
                          "pharmaceutical")))


(define-category vaccine
  :specializes drug
  ;; :binds ((disease disease)
  ;;         (treatment treatment)
  ;;         (target (:or protein process)))

  :realization
     (:noun "vaccine"
           ;; :for disease
            :m disease
           ;; :for treatment
           ;; :for target
            ))


;;--- medical treatment

(define-category medical-treatment :specializes  activity-with-a-purpose
  :binds ((disease disease)
          (medical-treatment medical-treatment))
  :mixins (biological)
  :realization
    (:noun "medical treatment"
     :m disease
     :for disease
     :for medical-treatment ))

(noun "therapy" :super medical-treatment)
(noun "chemotherapy" :super medical-treatment)
(noun "organ transplant" :super medical-treatment)
(noun "therapeutic strategy" :super medical-treatment)
