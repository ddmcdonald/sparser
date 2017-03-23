;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from terms 2/27/17

;; Contains both diseases and pathogens -- this is partly because when
;; things come back from TRIPS, sometimes viruses are called medical
;; conditions (i.e., diseases) so if they all end up in here it will
;; be easier to sort those out and recategorize them, and also because
;; sometimes the bacteria and viruses are talked about in ways that
;; are more about the disease they cause as opposed to being used for
;; experimental manipulations

;; contains bacteria, cancers, disease terms, other diseases, and viruses

(in-package :sparser)

;;;-------------------------------
;;; bacteria with IDs
;;;-------------------------------
(def-ided-indiv bacterium "Chlamydia" "NCIT:C76271" :name "chlamydia") 
(def-ided-indiv bacterium "Erwinia" "NCIT:C127280" :name "dickeya") 
(def-ided-indiv bacterium "Francisella" "NCIT:C86396" :name "francisella") 
(def-ided-indiv bacterium "mycobacteria" "NCIT:C76369" :name "mycobacterium") 
(def-ided-indiv bacterium "Haemophilus influenzae" "TI:727") ;; manually changed from organism to bacterium
(def-ided-indiv bacterium "Helicobacter pylori" "TI:210") ;; manually changed from organism to bacterium
(def-ided-indiv bacterium "S. aureus" "TI:1280") ;; manually changed from organism to bacterium

;;;-------------------------------
;;; cancers
;;;-------------------------------

(noun "adenocarcinoma" :super cancer)
(noun "carcinoma" :super cancer)
(noun "glioblastoma" :super cancer)
(noun "keratoacanthoma" :super cancer)
(noun "neuroblastoma" :super cancer) ;; removed erroneous extra "o"
(noun "NSCLC" :super cancer)
(def-synonym NSCLC (:noun "non-small cell lung cancer"))
(def-synonym NSCLC (:noun "non small cell lung cancer"))

;;;-------------------------------
;;; cancers with IDs
;;;-------------------------------

;; some if these may want to be set up as synonyms of each other, but will get back to that later
(def-ided-indiv cancer "B-ALL" "EFO:0000094" :name "B-cell acute lymphoblastic leukemia") 
(def-ided-indiv cancer "B-CLL" "NCIT:C3163" :name "chronic lymphocytic leukemia") 
(def-ided-indiv cancer "B-cell lymphoma" "TS-0067") 
(def-ided-indiv cancer "CCh" "NCIT:C54183" :name "columnar cell hyperplasia of the breast") 
(def-ided-indiv cancer "EFVPTC" "NCIT:C66850" :name "encapsulated thyroid gland papillary carcinoma") 
(def-ided-indiv cancer "EGC" "NCIT:C27131" :name "early gastric cancer") 
(def-ided-indiv cancer "Ess" "EFO:1000919" :name "endometrial stromal sarcoma") 
(def-ided-indiv cancer "Ewing Sarcoma" "TS-0302") 
(def-ided-indiv cancer "Ewing's sarcoma" "TS-0302") 
(def-ided-indiv cancer "GBM" "EFO:0000519" :name "glioblastoma multiforme") 
(def-ided-indiv cancer "GCB-DLBCL" "NCIT:C36080" :name "diffuse large B-cell lymphoma with a germinal center B-cell expression profile") 
(def-ided-indiv cancer "IPMN" "NCIT:C38342" :name "pancreatic intraductal papillary-mucinous neoplasm") 
(def-ided-indiv cancer "MPN" "NCIT:C4345" :name "chronic myeloproliferative disorder") 
(def-ided-indiv cancer "MPNST" "EFO:0000760" :name "malignant peripheral nerve sheath tumor") 
(def-ided-indiv cancer "PanIN" "NCIT:C4845" :name "pancreatic intraepithelial neoplasia") 
(def-ided-indiv cancer "PanIN-1" "NCIT:C6820" :name "grade I pancreatic intraepithelial neoplasia") 
(def-ided-indiv cancer "RAEB-2" "NCIT:C7168" :name "RAEB-2") 
(def-ided-indiv cancer "RCC" "EFO:0000681" :name "renal cell carcinoma") 
(def-ided-indiv cancer "SCLC" "EFO:0000702" :name "small cell lung carcinoma") 
(def-ided-indiv cancer "breast cancer" "TS-0591") 
(def-ided-indiv cancer "breast carcinoma" "TS-0592") 
(def-ided-indiv cancer "cervical cancer" "TS-1221") 
(def-ided-indiv cancer "colon adenocarcinoma" "TS-0159") 
(def-ided-indiv cancer "colorectal adenocarcinoma" "TS-0159") 
(def-ided-indiv cancer "colorectal cancer" "TS-0160") 
(def-ided-indiv cancer "colorectal carcinoma" "TS-0161") 
(def-ided-indiv cancer "endometrial cancer" "TS-1222") 
(def-ided-indiv cancer "esophageal carcinoma" "TS-0697") 
(def-ided-indiv cancer "gastric cancer" "TS-0978") 
(def-ided-indiv cancer "head and neck cancer" "TS-1232") 
(def-ided-indiv cancer "hepatocellular carcinoma" "TS-0455") 
(def-ided-indiv cancer "lung adenocarcinoma" "TS-0569") 
(def-ided-indiv cancer "lung cancer" "TS-0571") 
(def-ided-indiv cancer "lung carcinoma" "TS-0572") 
(def-ided-indiv cancer "malignant melanoma" "TS-0614") 
(def-ided-indiv cancer "mammary carcinoma" "TS-0592") 
(def-ided-indiv cancer "myeloid leukemia" "TS-0147") 
(def-ided-indiv cancer "nasopharyngeal carcinoma" "TS-0661") 
(def-ided-indiv cancer "non small cell lung carcinoma" "TS-0572") 
(def-ided-indiv cancer "oral cancer" "TS-0714") 
(def-ided-indiv cancer "osteosarcoma" "TS-0723") 
(def-ided-indiv cancer "ovarian cancer" "TS-1223") 
(def-ided-indiv cancer "ovarian carcinoma" "TS-0725") 
(def-ided-indiv cancer "pancreatic cancer" "TS-0739") 
(def-ided-indiv cancer "pancreatic carcinoma" "TS-0740") 
(def-ided-indiv cancer "papillary thyroid carcinoma" "TS-1045") 
(def-ided-indiv cancer "prostate cancer" "TS-1224") 
(def-ided-indiv cancer "renal cancer" "TS-1225") 
(def-ided-indiv cancer "skin cancer" "TS-1227") 
(def-ided-indiv cancer "thyroid cancer" "TS-1226") 
(def-ided-indiv cancer "thyroid carcinoma" "TS-1044") 

;;;--------------
;;; disease terms
;;;--------------

(noun "abnormality" :super disease)
(noun "disorder" :super disease)

;;;----------------
;;; other diseases
;;;----------------

(noun "anaphylaxis" :super disease)
(noun "metaplasia" :super disease)
(noun "hyperplasia" :super disease)
(noun "neurofibromatosis" :super disease)
(noun "CML" :super disease)

(def-ided-indiv disease "AD-HIES" "ORPHANET:2314" :name "Autosomal dominant hyper-IgE syndrome") 
(def-ided-indiv disease "ARDS" "EFO:1000637" :name "acute respiratory distress syndrome") 
(def-ided-indiv disease "CSC" "NCIT:C115124" :name "central serous chorioretinopathy") 
(def-ided-indiv disease "EAE" "EFO:0001066" :name "experimental autoimmune encephalomyelitis") 
(def-ided-indiv disease "HCMV" "EFO:0001062" :name "cytomegalovirus infection") 
(def-ided-indiv disease "IPF" "EFO:0000768" :name "idiopathic pulmonary fibrosis") 
(def-ided-indiv disease "IgA-nephropathy" "NCIT:C34643" :name "IgA nephropathy") 
(def-ided-indiv disease "MEN2B" "ORPHANET:247709" :name "Multiple endocrine neoplasia type 2B") 
(def-ided-indiv disease "MPA" "EFO:1000784" :name "microscopic polyangiitis") 
(def-ided-indiv disease "MadA" "NCIT:C123417" :name "mandibuloacral dysplasia with type A lipodystrophy") 
(def-ided-indiv disease "PAT" "NCIT:C34900" :name "paroxysmal atrial tachycardia") 
(def-ided-indiv disease "PCC" "EFO:0000239" :name "adrenal gland pheochromocytoma") 
(def-ided-indiv disease "PDA" "NCIT:C84492" :name "patent ductus arteriosus") 
(def-ided-indiv disease "Pres" "NCIT:C78598" :name "reversible posterior leukoencephalopathy syndrome") 
(def-ided-indiv disease "SCA10" "ORPHANET:98761" :name "Spinocerebellar ataxia type 10") 
(def-ided-indiv disease "SCA17" "ORPHANET:98759" :name "Spinocerebellar ataxia type 17") 
(def-ided-indiv disease "SPD-2" "ORPHANET:295197" :name "Synpolydactyly type 2") 
(def-ided-indiv disease "X-ALD" "ORPHANET:43" :name "X-linked adrenoleukodystrophy") 
(def-ided-indiv disease "XP-E" "NCIT:C114771" :name "xeroderma pigmentosum complementation group E") 
(def-ided-indiv disease "adenoma" "EFO:0000232" :name "adenoma") 
(def-ided-indiv disease "ataxia-telangiectasia" "ORPHANET:100" :name "Ataxia-telangiectasia") 
(def-ided-indiv disease "cardiomyopathy" "NCIT:C34830" :name "cardiomyopathy") 
(def-ided-indiv disease "hyperlipidemia" "EFO:0003774" :name "hyperlipidemia") 
(def-ided-indiv disease "hyperthermia" "HP:0001945" :name "fever") 
(def-ided-indiv disease "hypertrophy" "EFO:0002460" :name "hypertrophy") 
(def-ided-indiv disease "insulin-resistance" "EFO:0002614" :name "insulin resistance") 
(def-ided-indiv disease "microphthalmia" "EFO:0005569" :name "microphthalmia") 
(def-ided-indiv disease "nevus" "EFO:0000625" :name "nevus") 
(def-ided-indiv disease "non-neoplastic" "NCIT:C53529" :name "non-neoplastic disorder") 
(def-ided-indiv disease "p-GS" "NCIT:C124839" :name "pettigrew syndrome") 
(def-ided-indiv disease "polyploidy" "ORPHANET:96321" :name "Polyploidy") 
(def-ided-indiv disease "preeclampsia" "NCIT:C85021" :name "preeclampsia") 
(def-ided-indiv disease "pruritus" "HP:0000989" :name "Pruritus") 
(def-ided-indiv disease "retinopathy" "EFO:0003839" :name "retinopathy") 
(def-ided-indiv disease "uveitis" "EFO:1001231" :name "uveitis") 

;;;-----------------
;;; viruses with IDs
;;;-----------------

(def-ided-indiv virus "DENV2" "NCIT:C112267" :name "dengue virus 2") 
(def-ided-indiv virus "EIAV" "NCIT:C14205" :name "equine infectious anemia virus") 
(def-ided-indiv virus "Epstein-Barr virus" "TI:10376") ;; manually changed from organism to virus
(def-ided-indiv virus "HCV" "NCIT:C14312" :name "hepatitis C virus") 
(def-ided-indiv virus "HERV-K" "NCIT:C128305" :name "HERV-K") 
(def-ided-indiv virus "HIV" "NCIT:C14219" :name "human immunodeficiency virus") 
(def-ided-indiv virus "HIV-1" "NCIT:C14220" :name "human immunodeficiency virus 1") 
(def-ided-indiv virus "HPV11" "NCIT:C99178" :name "human papillomavirus-11") 
(def-ided-indiv virus "HPV16" "NCIT:C14338" :name "human papillomavirus-16") 
(def-ided-indiv virus "HPV18" "NCIT:C14377" :name "human papillomavirus-18") 
(def-ided-indiv virus "HPV31" "NCIT:C102904" :name "human papillomavirus-31") 
(def-ided-indiv virus "MCPyV" "NCIT:C73535" :name "merkel cell polyomavirus") 
(def-ided-indiv virus "MuLV" "NCIT:C14244" :name "mouse leukemia virus") 
(def-ided-indiv virus "PEDV" "NCIT:C121657" :name "porcine epidemic diarrhea virus") 
(def-ided-indiv virus "RSV" "NCIT:C14267" :name "respiratory syncytial virus") 
(def-ided-indiv virus "SARS-CoV" "NCIT:C112432" :name "SARS coronavirus") 
(def-ided-indiv virus "SV-40" "NCIT:C14279" :name "SV40") 
(def-ided-indiv virus "adenovirus" "NCIT:C14179" :name "adenovirus") 
(def-ided-indiv virus "lentivirus" "NCIT:C14290" :name "lentivirus") 
(def-ided-indiv virus "parapoxvirus" "NCIT:C112367" :name "parapoxvirus")
(def-ided-indiv virus "retrovirus" "NCIT:C14268" :name "retrovirus") ;; manually added since the singular was only defined in polywords
(def-ided-indiv virus "retroviruses" "NCIT:C14268" :name "retroviridae") 