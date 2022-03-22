;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2022 SIFT LLC. All Rights Reserved
;;;
;;;      File:   "medical-taxonomy"
;;;    Module:   "sl;disease:"
;;;   version:   March 2022

;; Broken out of bio;taxonomy 11/10/20 so we can modify it freely
;; to loosen the original type restrictions to apply to
;; more kinds of texts

(in-package :sparser)

;; NOT SURE WHERE ELSE THIS SHOULD GO
(define-category severity :specializes scalar-attribute
  :realization (:noun "severity"))


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
(noun "symptom" :super medical-condition
  :mixins (attribute)) ;; symptom of disease


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
;; add relation to "injure"?

(noun "wound" :super injury)

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


(define-category dose-dependent :specializes :bio-predication
  :realization (:adj "dose-dependent"))
(def-synonym dose-dependent (:adj "dose dependent"))


;;--- medical procedures/treatment
(define-category medical-procedure :specializes  activity-with-a-purpose
  :binds ((medical-procedure medical-procedure))
  :mixins (biological has-uid)
  :realization
    (:noun "medical procedure"
     :for medical-procedure ))

(define-category medical-treatment :specializes  medical-procedure
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
(noun "organ transplant" :super medical-treatment) ;; add mechanism to interpret "liver transplant" as an organ transplant -- if the modifier is a organ/tissue should be organ transplant, not comlex transplant
(noun "therapeutic strategy" :super medical-treatment)

(define-category injection :specializes medical-procedure
  :binds ((content drug))
  :realization (:noun "injection"
                      :of drug)) ;; add inject? currently comlex

(def-synonym injection (:noun "shot"))  ;; possibly add "jab" for UK English
;; The obvious homonym is in score-verbs

;; moved from bio-methods and new-bio-meth
(def-indiv-with-id medical-procedure "vaccination" "EFO:0004292" :name "vaccination") 
;; need to add vaccinate - currently comlex

;;--- surgical procedures
(noun ("surgery" "surgical procedure" "surgical operation") :super medical-procedure) ;; want some tie in to "perform" surgery also possibly add "operation" as synonym
(def-indiv-with-id surgery "c-section" "NCIT:C46088" :name "cesarean section"
                   :synonyms ("C-Section" "Caesarean Birth" "Caesarean Section" "Caesarean"))
(def-indiv-with-id surgery "hysterectomy" "EFO:0003881" :name "hysterectomy")
(def-indiv-with-id surgery "tubal ligation" "NCIT:C92901")
(def-indiv-with-id surgery "vasectomy" "NCIT:C15348")
(def-indiv-with-id surgery "pancreatectomy" "EFO:0002581" :name "pancreatectomy") 
(def-indiv-with-id surgery "mastectomy" "NCIT:C15277")
(def-indiv-with-id surgery "appendectomy" "NCIT:C51687")
(def-indiv-with-id surgery "CABG" "EFO:0003776" :name "coronary artery bypass" :synonyms ("coronary artery bypass graft" "coronary bypass"))
(noun "LASIK" :super surgery)

(def-indiv-with-id surgery "heterograft" "EFO:0003942" :name "Xenograft" :synonyms ("heterologous transplantation") )
(define-category amputation :specializes surgery
                 :bindings (uid "EFO:0009632") ;; NCIT:C15179
                 :lemma (:verb "amputate" :common-noun "amputation"))

;;--- diagnostic procedures
(noun "diagnostic procedure" :super medical-procedure)

;; diagnostic test for folate deficiency
(def-indiv-with-id diagnostic-procedure "dUST" "dUST" :maintain-case t
                   :name "deoxyuridine suppression test")



;;---  imaging procedures
(define-category diagnostic-imaging :specializes diagnostic-procedure
                 :bindings (uid "NCIT:C16502")
                 :realization
                 (:noun ("diagnostic imaging" "medical imaging")) )
;; granted some of these may be used in non-diagnostic contexts

(define-category CT-scan :specializes diagnostic-imaging
        :bindings (uid "NCIT:C17204")
        :realization
                 (:noun ("CT scan" "CT-scan" "CTscan" "CT Scan" ;;"CT"
                         "CAT scan" "CAT-scan" "CATscan" "CAT Scan"
                         "Computed Tomography" "Computerized Axial Tomography"
                         "Computerized Tomography" "Tomography")))
(def-indiv-with-id CT-scan "QCT" "NCIT:C161405"
     :name "quantitative computed tomography"
     :synonyms ("quantitative computerized tomography"))
(def-indiv-with-id CT-scan "pQCT" "NCIT:C169101"
     :name "Peripheral Quantitative Computed Tomography"
     :synonyms ("HR-pQCT"
                "High Resolution Peripheral Quantitative Computed Tomography"
                "High-Resolution Peripheral Quantitative Computed Tomography"))

(define-category PET-scan :specializes diagnostic-imaging
        :bindings (uid "NCIT:C17007")
        :realization
                 (:noun ("PET scan" "PET-scan" "PETscan" "PET Scan" ;;"PET"
                         "Positron Emission Tomography" 
                         "Positron Emission Tomography scan"
                         "Positron-Emission Tomography"
                         "proton magnetic resonance spectroscopic imaging")))

(define-category MRI-scan :specializes diagnostic-imaging
        :bindings (uid "NCIT:C16809")
        :realization
        (:noun ("MRI scan" "MRI-scan" "MRIscan" "MRI Scan" "MRI"
                "Magnetic Resonance Imaging" "Magnetic Resonance Imaging Scan"
                "MR Imaging" "NMR Imaging" "NMRI"
                "Nuclear Magnetic Resonance Imaging"
                "nuclear magnetic resonance imaging")))

(def-indiv-with-id MRI-scan "fMRI" "NCIT:C17958" 
     :synonyms ("fMRI scan" "Functional Magnetic Resonance Imaging"
                "functional magnetic resonance imaging" "Functional MRI"))
(def-indiv-with-id MRI-scan "DTI" "NCIT:C64862" :name "diffusion tensor imaging")
(def-indiv-with-id MRI-scan "DWI" "NCIT:C111116" :name "diffusion weighted imaging")

(def-indiv-with-id diagnostic-imaging "Xray" "NCIT:C38101" :name "X-ray Imaging"
                   :synonyms ("X-ray" "X-Ray" "Radiography" "Diagnostic Radiology")
                   ) ;; "NCIT:C17262" is the ID for the literal radiation

(def-indiv-with-id diagnostic-imaging "Ultrasonography" "NCIT:C17262"
                   :name "ultrasound" :synonyms ("Ultrasound Imaging"))

(def-indiv-with-id diagnostic-procedure "mammogram" "NCIT:C20178") ;; maybe should be under xray, possibly CT should to
(def-indiv-with-id diagnostic-procedure "colonoscopy" "NCIT:C16450")
(def-indiv-with-id diagnostic-procedure "biopsy" "NCIT:C15189")

;;--- Medical Devices
(noun "medical device" :super medical-treatment) ;; possibly should be under procedure or in a different category that is about implements rather than procedures, and maybe a medical-treatment-device for the ones below

;;--- diabetes management devices -- possibly shouldn't be treatments
(noun "DexCom" :super medical-device) ;; glucose monitoring system company
(noun "FlexPen" :super medical-device) ;; insulin delivery pen
(noun "KwikPen" :super medical-device) ;; insulin pen
(noun "ProZinc" :super medical-device) ;; pet insulin
(noun "VetPen" :super medical-device) ;; pet insulin

(define-category prosthesis :specializes medical-device
                 :bindings (uid "NCIT:C17598")
                 :lemma (:common-noun ("prosthesis" "prosthetic device" "prosthetic")))
;; need to add binds body-part to get "prosthetic arm," etc
(define-category implant :specializes prosthesis
                 :bindings (uid "NCIT:C41075")
                 :lemma (:common-noun "implant"))
(def-indiv-with-id implant "cochlear implant" "NCIT:C157820")
