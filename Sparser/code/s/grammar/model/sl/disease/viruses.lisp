;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;      File:   "viruses"
;;;    Module:   "sl;disease:"
;;;   version:   April 2020

;;; broken out from biology/new-defs/new-diseases.lisp 4/14/2020

(define-category neg-sense-ssrna-virus :specializes virus
                 :realization (:noun
                               ("negative-sense single-stranded RNA virus" "(-)ssRNA virus"
                               "-ssRNA virus" "negative-sense ssRNA virus" "negative-sense (-)RNA virus"))) 
(define-category pos-sense-ssrna-virus :specializes virus
                 :realization (:noun
                               ("positive-sense single-stranded RNA virus" "(+)ssRNA virus"
                               "+ssRNA virus" "positive-sense ssRNA virus" "positive-sense (+)RNA virus")))                                                  
;;; coronaviruses and their associated diseases are broken out in the covid-19 section

(define-category coronavirus :specializes pos-sense-ssrna-virus
                 :mixins (pathogen-type)
                 :bindings (uid "NCIT:C26431")
                 :realization (:noun ("coronavirus" "CoV" "coronaviridae" "Cov")))
(def-synonym coronavirus (:noun "coronvirus")) 
(def-synonym coronavirus (:noun "coronoavirus"))
(def-synonym coronavirus (:noun "coronovirus")) 
(def-synonym coronavirus (:noun ("coronavirusa" "coronavirinae" "coronavirdiae")))

(define-category alphacoronavirus :specializes coronavirus
                 :bindings (uid "NCIT:C119319")
                 :realization (:noun ("Alphacoronavirus" "alphacoronavirus" "alpha coronavirus" "alpha-coronavirus" "alphaCoV" "alpha-CoV")))

(define-category betacoronavirus :specializes coronavirus
                 :bindings (uid "NCIT:C113207")
                 :realization (:noun ("betacoronavirus" "beta coronavirus" "beta-coronavirus" "betaCoV" "beta-CoV")))

(define-category deltacoronavirus :specializes coronavirus
                 :bindings (uid "NCIT:C122279")
                 :realization (:noun ("deltacoronavirus" "delta coronavirus" "delta-coronavirus" "deltaCoV" "delta-CoV")))

(define-category gammacoronavirus :specializes coronavirus
                 :bindings (uid "NCIT:C122313")
                 :realization (:noun ("gammacoronavirus" "gamma coronavirus" "gamma-coronavirus" "gammaCoV" "gamma-CoV" "Gamacoronavirus")))

(define-category SARSr-CoV :specializes betacoronavirus
                 :realization (:noun "SARS-related coronavirus"))
(def-synonym SARSr-CoV (:noun ("SARSr-CoV" "Severe Acute Respiratory Syndrome-related Coronavirus" "SARSr" "SARr-CoV" "SL-CoV" "SARS-like coronavirus" "severe acute respiratory syndrome-related coronavirus")))

(def-indiv-with-id betacoronavirus "SARS-CoV-2" "NCIT:C169076" :name "SARS Coronavirus 2"
                   :synonyms ("SARS-CoV2" "2019-nCoV" "2019 Novel Coronavirus" "2019nCoV" 
                                          "nCoV" "nCoV-2019" "SARS-CoV-2" "SARSCoV2" "SARSCoV-2"
                                          "SAR-CoV-2" "HCoV-19" "hCoV-19"
                                          "Severe Acute Respiratory Syndrome Coronavirus 2"
                                          "novel-coronavirus-2019" "2019-CoV" "CoV-2019"
                                          ;; arguably the rest of these should be the disease
                                          ;; instead of the virus but currently not separating them
                                          "covid19" "COVID19" "COVID-19" "covid-19" "COVID-9" ;;typo
                                          "Corona Virus Disease 2019" "Coronavirus Disease-2019"))

(def-indiv-with-id betacoronavirus "SARS-CoV" "NCIT:C112432" :name "SARS coronavirus"
                   :synonyms ("SARS Coronavirus" "SARS virus" "HCoV-SARS" "SARSCoV" "SARS-CoV-1"
                                                 "Severe Acute Respiratory Syndrome Coronavirus"
                                                 "severe acute respiratory syndrome (SARS) virus"))
(def-indiv-with-id disease "SARS" "NCIT:C85064" :name "Severe Acute Respiratory Syndrome"
                   :synonyms ("severe acute respiratory syndrome"))

;; once we have a way to tie the two together we should do so
(def-indiv-with-id betacoronavirus "MERS-CoV" "TI:1335626"
                   :name "Middle East respiratory syndrome-related coronavirus"
                   :synonyms ("MERS coronavirus" "MERSr-CoV" "MERSCoV"
                                                 "Middle East respiratory syndrome (MERS) virus"
                                                 "Middle East Respiratory Syndrome Coronavirus"))
(def-indiv-with-id disease "MERS" "NCIT:C128424" :name "Middle East Respiratory Syndrome"
                   :synonyms ("middle east respiratory syndrome"))

(def-indiv-with-id SARSr-CoV "BJ01" "TI:228407" :name "SARS coronavirus BJ01")
(noun ("MuCoV" "MurCoV" "murine coronavirus" "mouse coronavirus") :super coronavirus) ;; no NCIT
(noun ("BatCoV" "Bat-CoV" "BtCoV" "bat-coronavirus" "BtSCoV" "BtS-CoV") :super coronavirus) ;; no NCIT
(noun ("bat-SL-RaTG13" "bat SL-RaTG13" "bat/RaTG13" "BetaCoV/bat/Yunnan/RaTG13/2013" "RaTG13" "SL-RaTG13"
                       "Bat-CovRaTG13")
      :super SARSr-CoV)
(noun ("bat-SL-CoVZC45" "bat SL-CoVZC45" "SL-CoVZC45" "SL-ZC45" "ZC45") :super SARSr-CoV)
(noun ("bat-SL-CoVZXC21" "bat SL-CoVZXC21" "bat-SLCoVZC21" "bat_SL_CoVZXC21"
                         "SL-CoVZXC21" "SL-ZXC21" "ZXC21") :super SARSr-CoV)
(noun ("BatCoV-HKU4" "BtCoV-HKU4" "Bat-CoV-HKU4" "bat-coronavirus HKU4" "HKU4") :super betacoronavirus) ;; MERS-related
(noun ("BatCoV-HKU5" "BtCoV-HKU5" "Bat-CoV-HKU5" "bat-coronavirus HKU5" "HKU5") :super betacoronavirus) ;; MERS-related
(noun "NeoCoV" :super coronavirus) ;; another bat one similar to MERS

(noun ("AcCoV" "unspecified alphacoronavirus") :super alphacoronavirus)
(noun "AcCoV-JC34" :super alphacoronavirus)
(noun ("ACoV" "alpaca coronavirus") :super coronavirus) 
(noun ("ALCCoV" "asian leopard cat coronavirus") :super coronavirus)
(noun ("BCoV" "bovine coronavirus") :super coronavirus) ;; no NCIT
(noun ("BuCoV" "buffalo coronavirus") :super coronavirus) ;; no NCIT
(noun ("CCoV" "canine coronavirus") :super coronavirus)
(noun ("CRCoV" "canine respiratory coronavirus") :super coronavirus)
(noun ("CECoV" "canine enteric coronavirus") :super coronavirus)
(noun ("CFBCoV" "chinese ferret badger coronavirus") :super coronavirus)
(noun ("ECoV" "equine coronavirus") :super betacoronavirus) ;; 	TI:136187
(noun ("EriCoV" "erinaceus coronavirus") :super betacoronavirus)
(noun ("FCoV" "FeCoV" "feline coronavirus") :super coronavirus)
(noun ("FECoV" "feline enteric coronavirus") :super coronavirus)
(noun ("RCoV" "rat coronavirus") :super betacoronavirus) ;; no NCIT "TI:11146"
(noun ("ChRCoV" "chinese rat coronavirus") :super betacoronavirus) ;; no NCIT "TI:11146"


(noun ("PorCoV" "porcine coronavirus")  :super coronavirus)
(noun ("PDCoV" "porcine deltacoronavirus") :super deltacoronavirus)
(noun ("PRCoV" "porcine respiratory coronavirus") :super coronavirus) ;; "TI:11146" 
(noun ("SeACoV" "SeaCoV" "swine enteric alphacoronavirus"
                "SADS-CoV" "swine acute diarrhea syndrome coronavirus")
      :super alphacoronavirus)
(noun ("SeCoV" "swine enteric coronavirus") :super coronavirus)

(noun ("AvCoV" "avian coronavirus") :super coronavirus)
(noun ("CGCoV" "canada goose coronavirus") :super coronavirus)
(noun ("DCoV" "duck coronavirus") :super coronavirus)
(noun ("DdCoV" "dominant duck coronavirus") :super coronavirus)
(noun ("GCoV" "goose coronavirus") :super coronavirus) ;; no NCIT
(noun ("GuCoV" "gull coronavirus") :super coronavirus)
(noun ("QuaCoV" "quail coronavirus") :super coronavirus)
(noun ("SPaCoV" "SpaCoV" "sparrow coronavirus") :super coronavirus)
(noun ("SpDCoV" "SpdCoV" "sparrow deltacoronavirus") :super deltacoronavirus)
(noun ("TCoV" "turkey coronavirus") :super coronavirus)
(noun ("ThCoV" "thrush coronavirus") :super coronavirus)


(noun ("hCoV" "hcoV" "hcov""human coronavirus") :super coronavirus) ;; no NCIT
(noun ("HCoV-229E" "HCoV 229E" "human coronavirus 229E" "229E") :super alphacoronavirus) ;; no NCIT
(noun ("HCoV-NL63" "HCoV NL63" "human coronavirus NL63" "NL63" "HCoVNL63" "HcoV-NL" "HcoV-NL63") :super alphacoronavirus) ;; no NCIT
(noun ("HCoV-OC43" "HCoV OC43" "human coronavirus OC43" "OC43" "HcoV-OC43") :super betacoronavirus) ;; no NCIT
(noun ("HCoV-HKU1" "HCoV HKU1" "human coronavirus HKU1" "HKU1" "Human_coronavirus_HKU1") :super betacoronavirus) ;; no NCIT


;; Flu viruses
;(def-indiv-with-id virus "influenzavirus" "NCIT:C53469" :name "influenzavirus") 
(define-category FLUV :specializes virus
                 :mixins (pathogen-type)
                 :bindings (uid "NCIT:C53469")
                 :realization (:noun ("FLUV" "influenzavirus" "influenza virus" "flu virus")))

;(def-indiv-with-id virus "FLUAV" "NCIT:C53454" :name "influenza A virus") 
;(def-indiv-with-id virus "FLUBV" "NCIT:C53468" :name "influenza B virus") 
(define-category FLUAV :specializes FLUV
                 :bindings (uid "NCIT:C53454")
                 :realization (:noun ("FLUAV" "influenza A virus" "Influenza A Virus")))

(define-category HPAI :specializes FLUAV
                 :realization (:noun ("HPAI" "Highly Pathogenic Asian Avian Influenza A" "Highly Pathogenic Asian Avian Influenza A Virus" "highly pathogenic avian influenza")))
;(def-indiv-with-id HPAI "H5N1" "NCIT:C123490" :name "Influenza A (H5N1) Virus" :synonyms ("H5N1" "Highly Pathogenic Asian Avian Influenza A (H5N1) Virus" "HPAI H5N1 Virus")) 

(define-category H5N1 :specializes HPAI
                 :bindings (uid "NCIT:C123490")
                 :realization (:noun ("H5N1" "Influenza A (H5N1) Virus" "H5N1 Influenza A Virus"
                                             "Highly Pathogenic Asian Avian Influenza A (H5N1) Virus"
                                             "HPAI H5N1 Virus" "HPAI H5N1")))
;;(def-indiv-with-id virus "H5N1" "NCIT:C123490" :name "Influenza A (H5N1) Virus" :synonyms ("HPAI" "highly pathogenic avian influenza" "Influenza A (H5N1) Virus" "H5N1" "Highly Pathogenic Asian Avian Influenza A (H5N1) Virus" "HPAI H5N1 Virus"))
(noun "H5N1VN1203" :super H5N1)
(def-synonym H5N1VN1203 (:noun ("H5N1-VN1203" "influenza A/Vietnam/1203/2004")))

(def-indiv-with-id HPAI "H5N2" "NCIT:C123490" :name "H5N2 Avian Influenza Virus" :synonyms ("H5N2" "Highly P
athogenic Asian Avian Influenza A (H5N2) Virus" "HPAI H5N2 Virus" "Highly Pathogenic H5N2 Avian Influenza Virus")) 

(define-category H1N1 :specializes FLUAV
                 :bindings (uid "NCIT:C80445")
                 :realization (:noun ("H1N1" "Influenza A (H1N1) Virus" "Swine Influenza A (H1N1) Virus"
                                             "Swine-origin influenza A (H1N1) virus"
                                             "H1N1 swine influenza virus")))
(noun "H1N1-09" :super H1N1)
(def-synonym H1N1-09 (:noun ("H1N1/09" "2009 swine flu virus" "2009 pandemic influenza A (H1N1)"))) 

(def-indiv-with-id FLUV "FLUBV" "NCIT:C53468" :name "influenza B virus") 
(def-indiv-with-id FLUV "FLUCV" "NCIT:C97157" :name "influenza C virus")



(define-category henipavirus :specializes virus
                 :bindings (uid "NCIT:C112290")
                 :realization (:noun "henipavirus"))
;(def-indiv-with-id virus "Henipavirus" "NCIT:C112290" :name "henipavirus") 
(define-category niv :specializes henipavirus
                 :bindings (uid "NCIT:C112359")
                 :realization (:noun ("NiV" "Nipah Virus" "Nipah virus")))
(noun ("NiV-B" "NiV-Bangladesh") :super niv) 
(noun ("NiV-M" "NiV-Malaysia") :super niv)

;;; non-flu/non-coronaviruses
;; no IDs
(noun "paleovirus" :super virus) ;; extinct/ancient viruses - not NCIT
(noun "archaeovirus" :super virus) ;; viruses that infect archaea "MESH:D023641"

(noun "SSV" :super virus) ;; can't find an ontology with UID but this was to block a protein def that was based on it being 
(def-synonym SSV (:noun "Simian Sarcoma Virus"))
(noun "WSSV" :super virus) 
(def-synonym WSSV (:noun ("white spot syndrome virus" "whispovirus")))
(noun "phaeovirus" :super virus)
(noun "roniviridae" :super virus)
(noun "CnMV" :super virus) 
(def-synonym CnMV (:noun "canine minute virus"))
(noun "asfarviridae" :super virus)
(noun "nidovirus" :super virus)
(noun "NNV" :super virus) 
(def-synonym NNV (:noun ("nervous necrosis virus" "betanodavirus")))
(noun "MACV" :super virus) 
(def-synonym MACV (:noun "machupo virus"))

(def-indiv-with-id virus "DENV2" "NCIT:C112267" :name "dengue virus 2") 
(def-indiv-with-id virus "EIAV" "NCIT:C14205" :name "equine infectious anemia virus") 
(def-indiv-with-id virus "FIV" "NCIT:C14288" :name "feline immunodeficiency virus") 
(def-indiv-with-id virus "Flaviviridae" "NCIT:C113201" :name "flaviviridae" :synonyms ("Flaviridae")) 
(def-indiv-with-id virus "HBV" "NCIT:C14215" :name "hepatitis B virus") 
(def-indiv-with-id virus "HCV" "NCIT:C14312" :name "hepatitis C virus") 
(def-indiv-with-id virus "HERV-K" "NCIT:C128305" :name "HERV-K") 
(def-indiv-with-id virus "HEV" "NCIT:C14295" :name "hepatitis E virus") 
(def-indiv-with-id virus "HeV" "NCIT:C112289" :name "Hendra virus") 
(def-indiv-with-id virus "HHV" "NCIT:C112419" :name "simplexvirus") 
(def-indiv-with-id virus "HHV6" "NCIT:C14218" :name "human herpesvirus 6") 
(def-indiv-with-id virus "HHV8" "NCIT:C14327" :name "human herpesvirus 8") 
(def-indiv-with-id virus "HIV" "NCIT:C14219" :name "human immunodeficiency virus") 
(def-indiv-with-id virus "HIV-1" "NCIT:C14220" :name "human immunodeficiency virus 1"
                   :synonyms ("Human Immunodeficiency Virus type 1") )
(def-indiv-with-id virus "HIV-2" "NCIT:C14221" :name "human immunodeficiency virus 2") 
(def-indiv-with-id virus "HPIV2" "NCIT:C112316" :name "human parainfluenza virus 2")

(def-indiv-with-id virus "HPV11" "NCIT:C99178" :name "human papillomavirus-11") 
(def-indiv-with-id virus "HPV16" "NCIT:C14338" :name "human papillomavirus-16") 
(def-indiv-with-id virus "HPV18" "NCIT:C14377" :name "human papillomavirus-18") 
(def-indiv-with-id virus "HPV26" "NCIT:C102995" :name "human papillomavirus-26") 
(def-indiv-with-id virus "HPV31" "NCIT:C102904" :name "human papillomavirus-31") 
(def-indiv-with-id virus "HPV33" "NCIT:C102996" :name "human papillomavirus-33") 
(def-indiv-with-id virus "HPV39" "NCIT:C102998" :name "human papillomavirus-39") 
(def-indiv-with-id virus "HPV45" "NCIT:C102999" :name "human papillomavirus-45") 
(def-indiv-with-id virus "HPV51" "NCIT:C103000" :name "human papillomavirus-51") 
(def-indiv-with-id virus "HPV53" "NCIT:C103002" :name "human papillomavirus-53") 
(def-indiv-with-id virus "HPV56" "NCIT:C103003" :name "human papillomavirus-56") 
(def-indiv-with-id virus "HPV6" "NCIT:C14319" :name "human papillomavirus-6") 
(def-indiv-with-id virus "HPV66" "NCIT:C103006" :name "human papillomavirus-66") 
(def-indiv-with-id virus "HPV68" "NCIT:C103007" :name "human papillomavirus-68")
(def-indiv-with-id virus "HSV" "NCITC112419" :name "herpes simplex virus")
(def-indiv-with-id virus "HSV1" "NCIT:C14311" :name "herpes simplex virus 1") 
(def-indiv-with-id virus "HTLV-2" "NCIT:C14224" :name "HTLV-2") 
(def-indiv-with-id virus "HTLV1" "NCIT:C14223" :name "HTLV-1") 
(def-indiv-with-id virus "LCMV" "NCIT:C14230" :name "lymphocytic choriomeningitis virus") 
(def-indiv-with-id virus "MCPyV" "NCIT:C73535" :name "merkel cell polyomavirus") 
(def-indiv-with-id virus "MLV" "NCIT:C14241" :name "moloney leukemia virus") 
(def-indiv-with-id virus "MuLV" "NCIT:C14244" :name "mouse leukemia virus") 
(def-indiv-with-id virus "PEDV" "NCIT:C121657" :name "porcine epidemic diarrhea virus") 
(def-indiv-with-id virus "Paramyxoviridae" "NCIT:C14255" :name "paramyxoviridae") 
(def-indiv-with-id virus "RRV" "NCIT:C112411" :name "ross river virus") 
(def-indiv-with-id virus "RSV" "NCIT:C14267" :name "respiratory syncytial virus") 
(def-indiv-with-id virus "Rhabdoviridae" "NCIT:C112027" :name "rhabdoviridae") 

(def-indiv-with-id virus "SV-40" "NCIT:C14279" :name "SV40") 
(def-indiv-with-id virus "WNV" "NCIT:C71877" :name "west nile virus") 
(def-indiv-with-id virus "XMRV" "NCIT:C84344" :name "xenotropic murine leukemia virus-related virus") 
(def-indiv-with-id virus "adenovirus" "NCIT:C14179" :name "adenovirus") 
(def-indiv-with-id virus "aphthovirus" "NCIT:C112229" :name "aphthovirus") 
(def-indiv-with-id virus "arbovirus" "NCIT:C112230" :name "arbovirus") 
(def-indiv-with-id virus "arenavirus" "NCIT:C14306" :name "arenavirus") 
(def-indiv-with-id virus "astrovirus" "NCIT:C112231" :name "astroviridae") 
(def-indiv-with-id virus "baculovirus" "NCIT:C61156" :name "baculoviridae") 
(def-indiv-with-id virus "betaretrovirus" "NCIT:C14291" :name "betaretrovirus") 
(def-indiv-with-id virus "biv" "NCIT:C117711" :name "bovine immunodeficiency virus") 
(def-indiv-with-id virus "bpV" "NCIT:C14190" :name "bovine papillomavirus") 
(def-indiv-with-id virus "bunyavirus" "NCIT:C112366" :name "orthobunyavirus") 
;(def-indiv-with-id virus "coronavirus" "NCIT:C26431" :name "coronavirus")  made category
(def-indiv-with-id virus "cytomegalovirus" "NCIT:C14196" :name "cytomegalovirus") 
(def-indiv-with-id virus "flavivirus" "NCIT:C14208" :name "flavivirus") 
(def-indiv-with-id virus "gammaretrovirus" "NCIT:C14305" :name "gammaretrovirus") 
(def-indiv-with-id virus "hMPV" "NCIT:C125640" :name "human metapneumovirus") 
(def-indiv-with-id virus "hantavirus" "NCIT:C14213" :name "hantavirus") 
(def-indiv-with-id virus "hepadnavirus" "NCIT:C14214" :name "hepadnavirus") 
(def-indiv-with-id virus "herpesvirus" "NCIT:C14217" :name "herpesvirus" :plural ("herpesviruses" "herpesviridae")) 
(def-indiv-with-id virus "lentivirus" "NCIT:C14290" :name "lentivirus") 
(def-indiv-with-id virus "metapneumovirus" "NCIT:C125956" :name "metapneumovirus") 
(def-indiv-with-id virus "norovirus" "NCIT:C112362" :name "norovirus") 
(def-indiv-with-id virus "orthopoxvirus" "NCIT:C96524" :name "orthopoxvirus") 
(def-indiv-with-id virus "papillomavirus" "NCIT:C14251" :name "papillomavirus") 
(def-indiv-with-id virus "paramyxovirus" "NCIT:C14310" :name "paramyxovirus") 
(def-indiv-with-id virus "parapoxvirus" "NCIT:C112367" :name "parapoxvirus") 
(def-indiv-with-id virus "phage" "NCIT:C14188" :name "bacteriophage") 
(def-indiv-with-id virus "picornavirus" "NCIT:C14256" :name "picornavirus" :plural ("picornaviruses" "picornaviridae")) 
(def-indiv-with-id virus "poliovirus" "NCIT:C14259" :name "poliovirus") 
(def-indiv-with-id virus "polyoma" "NCIT:C14260" :name "polyomavirus") 
(def-indiv-with-id virus "poxvirus" "NCIT:C14261" :name "poxvirus" :plural ("poxviruses" "poxviridae")) 
(def-indiv-with-id virus "reovirus" "NCIT:C112026" :name "reoviridae")
(def-indiv-with-id virus "retrovirus" "NCIT:C14268" :name "retrovirus" :plural ("retroviruses" "retroviridae"))
(def-indiv-with-id virus "rhinovirus" "NCIT:C77200" :name "rhinovirus" :synonyms ("HRV" "human rhinovirus" "hRV" "RhV")) 
(def-indiv-with-id virus "φX174" "NCIT:C97346" :name "bacteriophage phi X 174") 
(def-indiv-with-id virus "EBV" "TI:10376" :name "Epstein-Barr virus") 
(def-indiv-with-id virus "Haemophilus influenzae" "TI:727") 
(def-indiv-with-id virus "EBOV" "NCIT:C112271" :name "ebola virus") 
(def-indiv-with-id virus "HDV" "NCIT:C93324" :name "hepatitis D virus") 
(def-indiv-with-id virus "HPIV" "NCIT:C125641" :name "human parainfluenza virus") 
(def-indiv-with-id virus "NDV" "NCIT:C93023" :name "newcastle disease virus")
(def-indiv-with-id virus "VZV" "NCIT:C71091" :name "varicella zoster virus") 
(def-indiv-with-id virus "YFV" "NCIT:C97156" :name "yellow fever virus") 
(def-indiv-with-id virus "ZIKV" "NCIT:C128553" :name "zika virus") 
(def-indiv-with-id virus "alphavirus" "NCIT:C112030" :name "alphavirus")
(def-indiv-with-id virus "avulavirus" "NCIT:C117722" :name "avulavirus")
(def-indiv-with-id virus "bocavirus" "NCIT:C127691" :name "bocaparvovirus")
(def-indiv-with-id virus "echovirus" "NCIT:C112272" :name "echovirus")
(def-indiv-with-id virus "enterovirus" "NCIT:C14203" :name "enterovirus")
(def-indiv-with-id virus "filovirus" "NCIT:C112031" :name "filoviridae")
(def-indiv-with-id virus "lyssavirus" "NCIT:C112330" :name "lyssavirus")
(def-indiv-with-id virus "pneumovirus" "NCIT:C112398" :name "pneumovirus") 
(def-indiv-with-id virus "respirovirus" "NCIT:C117721" :name "respirovirus") 
(def-indiv-with-id virus "vaccinia" "NCIT:C14281" :name "vaccinia virus")
(def-indiv-with-id virus "Caliciviridae" "NCIT:C14304" :name "caliciviridae")
(def-indiv-with-id virus "Filoviridae" "NCIT:C112031" :name "filoviridae")
(def-indiv-with-id virus "Hepacivirus" "NCIT:C113202" :name "hepacivirus")
(def-indiv-with-id virus "Orthomyxoviridae" "NCIT:C53453" :name "orthomyxoviridae")
(def-indiv-with-id virus "parvovirus" "NCIT:C14299" :name "parvovirus" :plural ("parvoviruses" "parvoviridae")) 
(def-indiv-with-id virus "Rotavirus" "NCIT:C77199" :name "rotavirus")
(def-indiv-with-id virus "Sapovirus" "NCIT:C112029" :name "sapovirus")
(def-indiv-with-id virus "hRSV" "NCIT:C14267" :name "human respiratory syncytial virus")
(def-indiv-with-id virus "BKV" "NCIT:C89820" :name "BK virus") 
(def-indiv-with-id virus "CMV" "NCIT:C14196" :name "cytomegalovirus") 
(def-indiv-with-id virus "ERV" "NCIT:C14334" :name "endogenous retrovirus") 

(def-indiv-with-id virus "HAV" "NCIT:C14325" :name "hepatitis A virus") 
(def-indiv-with-id virus "HTLVI" "NCIT:C14223" :name "HTLV-1") 
(def-indiv-with-id virus "JCV" "NCIT:C14229" :name "JC virus") 
(def-indiv-with-id virus "MOCV" "NCIT:C112357" :name "molluscum contagiosum virus") 
(def-indiv-with-id virus "TBEV" "NCIT:C112422" :name "tick-borne encephalitis virus") 
(def-indiv-with-id virus "WHV" "NCIT:C124253" :name "woodchuck hepatitis virus") 

(def-indiv-with-id virus "lentivirinae" "NCIT:C14290" :name "lentivirus") 
(def-indiv-with-id virus "viroid" "NCIT:C95945" :name "viroid") 
(def-indiv-with-id virus "Adenoviridae" "NCIT:C14179" :name "adenoviridae") 
(def-indiv-with-id virus "Bunyaviridae" "NCIT:C112028" :name "bunyaviridae") 
(def-indiv-with-id virus "Canarypox" "NCIT:C14315" :name "canarypox virus") 
(def-indiv-with-id virus "Lymphocryptovirus" "NCIT:C14204" :name "epstein-barr virus") 
(def-indiv-with-id virus "Marburg virus" "NCIT:C112331" :name "marburgvirus") 
(def-indiv-with-id virus "Molluscipoxvirus" "NCIT:C112356" :name "molluscipoxvirus") 
(def-indiv-with-id virus "Morbillivirus" "NCIT:C14309" :name "morbillivirus") 
(def-indiv-with-id virus "Nairovirus" "NCIT:C112358" :name "nairovirus") 
(def-indiv-with-id virus "NIV" "NCIT:C29902" :name "nodule-inducing virus")
(def-indiv-with-id virus "Orbivirus" "NCIT:C112365" :name "orbivirus") 
(def-indiv-with-id virus "Paramyxovirinae" "NCIT:C14307" :name "paramyxovirinae") 
(def-indiv-with-id virus "Phlebovirus" "NCIT:C112397" :name "phlebovirus") 
(def-indiv-with-id virus "Pneumovirinae" "NCIT:C14308" :name "pneumovirinae") 
(def-indiv-with-id virus "Roseolovirus" "NCIT:C112410" :name "roseolovirus") 
(def-indiv-with-id virus "Rubulavirus" "NCIT:C14326" :name "rubulavirus") 
(def-indiv-with-id virus "Togaviridae" "NCIT:C77197" :name "togaviridae") 
(def-indiv-with-id virus "Varicellovirus" "NCIT:C112426" :name "varicellovirus") 
(def-indiv-with-id virus "DENV-4" "NCIT:C112269" :name "dengue virus 4") 
(def-indiv-with-id virus "DENV-3" "NCIT:C112268" :name "dengue virus 3") 
(def-indiv-with-id virus "DENV-1" "NCIT:C112266" :name "dengue virus 1") 
(def-indiv-with-id virus "DEN-4" "NCIT:C112269" :name "dengue virus 4") 
(def-indiv-with-id virus "DEN-3" "NCIT:C112268" :name "dengue virus 3") 
(def-indiv-with-id virus "DEN-2" "NCIT:C112267" :name "dengue virus 2") 
(def-indiv-with-id virus "HTLV-II" "NCIT:C14224" :name "HTLV-2") 
(def-indiv-with-id virus "HHV5" "NCIT:C14196" :name "cytomegalovirus") 
(def-indiv-with-id virus "EV-D68" "NCIT:C125639" :name "enterovirus D68") 
(def-indiv-with-id virus "hPIV-4" "NCIT:C112318" :name "human parainfluenza virus 4") 
(def-indiv-with-id virus "hPIV-3" "NCIT:C112317" :name "human parainfluenza virus 3") 
(def-indiv-with-id virus "hPIV-1" "NCIT:C14254" :name "human parainfluenza virus 1") 


;; need checking
;(def-indiv-with-id virus "Whispovirus" "NCIT:C112029" :name "sapovirus") 
;(def-indiv-with-id virus "ViroChip" "NCIT:C14219" :name "human immunodeficiency virus") 
;(def-indiv-with-id virus "TBDev" "NCIT:C112422" :name "tick-borne encephalitis virus") 
;(def-indiv-with-id virus "Siadenovirus" "NCIT:C14179" :name "adenoviridae") 
;(def-indiv-with-id virus "Roniviridae" "NCIT:C112026" :name "reoviridae") 
(def-indiv-with-id virus "Rhinvoirus" "NCIT:C77200" :name "rhinovirus") 
(def-indiv-with-id virus "Rhabdovirdae" "NCIT:C112027" :name "rhabdoviridae") 
(def-indiv-with-id virus "Picornavirales" "NCIT:C14256" :name "picornavirus") 
;(def-indiv-with-id virus "Phaeovirus" "NCIT:C14299" :name "parvovirus") 
;(def-indiv-with-id virus "MuCoV" "NCIT:C112357" :name "molluscum contagiosum virus") 
(def-indiv-with-id virus "HBoV" "NCIT:C127691" :name "Bocaparvovirus" :synonyms ("human bocavirus"))
;(def-indiv-with-id virus "Flaviridae" "NCIT:C112031" :name "filoviridae") 
(def-indiv-with-id virus "Enterovius" "NCIT:C14203" :name "enterovirus")
;(def-indiv-with-id virus "CnMV" "NCIT:C14196" :name "cytomegalovirus") 
;(def-indiv-with-id virus "Asfarviridae" "NCIT:C112231" :name "astroviridae") 
(def-indiv-with-id virus "vaccinica" "NCIT:C14281" :name "vaccinia virus") 
(def-indiv-with-id virus "rabiesvirus" "NCIT:C112405" :name "rabies virus");;C112414" :name "rubivirus")
(def-indiv-with-id virus "rubivirus" "NCIT:C112414" :name "rubivirus")
(def-indiv-with-id virus "polioviruse" "NCIT:C14259" :name "poliovirus") 
;(def-indiv-with-id virus "paleovirus" "NCIT:C14259" :name "poliovirus") 
;(def-indiv-with-id virus "nidovirus" "NCIT:C112358" :name "nairovirus") 
(def-indiv-with-id virus "herpesvirues" "NCIT:C14217" :name "herpesvirus") 
(def-indiv-with-id virus "deltaretrovirus" "NCIT:C14347" :name "deltaretrovirus") 
(def-indiv-with-id virus "cyotomegalovirus" "NCIT:C14196" :name "cytomegalovirus") 
;(def-indiv-with-id virus "archaeovirus" "NCIT:C112272" :name "echovirus") 
(def-indiv-with-id virus "adenovirsuses" "NCIT:C14179" :name "adenoviridae") 
(def-indiv-with-id virus "WHBV" "NCIT:C124253" :name "woodchuck hepatitis virus") 
;(def-indiv-with-id virus "NNV" "NCIT:C112363" :name "norwalk virus") 
;(def-indiv-with-id virus "MACV" "NCIT:C73535" :name "merkel cell polyomavirus") 
;(def-indiv-with-id virus "JCVI" "NCIT:C14229" :name "JC virus") 
(def-indiv-with-id virus "HPMV" "NCIT:C125640" :name "human metapneumovirus") 

(def-indiv-with-id virus "HGV" "NCIT:C14328" :name "GB virus C") 
(def-indiv-with-id virus "CTFV" "NCIT:C112240" :name "colorado tick fever virus") 

(def-indiv-with-id virus "GLV" "NCIT:C29917" :name "gross leukemia virus") 
(def-indiv-with-id virus "MPMV" "NCIT:C14236" :name "mason-pfizer monkey virus") 
(def-indiv-with-id virus "STLV" "NCIT:C14277" :name "simian T-lymphotropic virus type I") 
(def-indiv-with-id virus "TCRV" "NCIT:C129405" :name "tacaribe complex virus") 
(def-indiv-with-id virus "oncornavirus" "NCIT:C14371" :name "oncornavirus") 
(def-indiv-with-id virus "mcv" "NCIT:C73535" :name "merkel cell polyomavirus") 
(def-indiv-with-id virus "MMuLV" "NCIT:C14241" :name "moloney leukemia virus") 
(def-indiv-with-id virus "MoMuLV" "NCIT:C14241" :name "moloney leukemia virus") 
(def-indiv-with-id virus "Pow" "NCIT:C134498" :name "powassan virus") 
(def-indiv-with-id virus "Spumavirus" "NCIT:C14293" :name "spumavirus") 
(def-indiv-with-id virus "Alpharetrovirus" "NCIT:C14186" :name "alpharetrovirus") 
(def-indiv-with-id virus "Pegivirus" "NCIT:C113204" :name "pegivirus") 
(def-indiv-with-id virus "hrHPV" "NCIT:C44391" :name "HPV-high risk") 
(def-indiv-with-id virus "Birnaviridae" "TI:10993")
(def-indiv-with-id virus "TrV" "TI:30075" :name "triatoma virus")
(def-indiv-with-id virus "MHV-A59" "TI:11142" :name "murine coronavirus (strain A59)" :synonyms ("murine hepatitis virus (strain A59)"))

