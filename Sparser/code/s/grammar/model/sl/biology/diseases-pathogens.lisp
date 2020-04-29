;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "diseases-pathogens"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

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
;;; bacteria
;;;-------------------------------
#|
;;;-------------------------------
;;; cancers
;;;-------------------------------

(noun "glioblastoma" :super cancer)
(noun "keratoacanthoma" :super cancer)
(noun "neuroblastoma" :super cancer) ;; removed erroneous extra "o"
|#

;;;--------------
;;; disease terms
;;;--------------

(noun "abnormality" :super disease)
(noun "disorder" :super disease)
;(noun "normoxia" :super disease) ; not really a disease - the opposite, but we have hypoxia as a disease and there's no ncit id for normoxia so I'm adding htis here

;;;----------------
;;; other diseases
;;;----------------

;(noun "anaphylaxis" :super disease)
;(noun "metaplasia" :super disease)
;(noun "neurofibromatosis" :super disease)
;(noun "CML" :super disease)

;;;-----------------
;;; viruses
;;;-----------------

#+ignore(define-category coronavirus :specializes virus
                 :bindings (uid "NCIT:C26431")
   :realization (:noun ("coronavirus" "CoV" "coronaviridae")))

;(noun "SSV" :super virus) ;; can't find an ontology with UID but this was to block a protein def that was based on it being 
;(def-synonym SSV (:noun "Simian Sarcoma Virus"))

#|
;;; diseases known to BoB
Abdominal Aortic Aneurysm
Acquired Immunodeficiency Syndrome
Acute Biphenotypic Leukemia
Acute Brucellosis
Acute Cerebral Infarction
Acute Cerebral Ischemia
Acute Coronary Syndrome
Acute Erythroid Leukemia
Acute Heart Failure
Acute Ischemic Stroke
Acute Kidney Failure
Acute Leukemia
Acute Liver Failure
Acute Lung Injury
Acute Lymphoblastic Leukemia
Acute Megakaryoblastic Leukemia
Acute Myeloid Leukemia
Acute Myocardial Infarction
Acute Pancreatitis
Acute Peritonitis
Acute Promyelocytic Leukemia
Acute Respiratory Distress Syndrome
Adenoid Cystic Carcinoma
Adenosquamous Pancreas Carcinoma
Adenovirus Infection
Adrenal Cortex Neoplasms
Adrenocortical Carcinoma
Adult T-Cell Leukemia-Lymphoma
African Swine Fever
Age-Related Macular Degeneration
Aggressive Fibromatosis
Alcohol Use Disorder
Alcoholic Cardiomyopathy
Alcoholic Fatty Liver
Alcoholic Hepatitis
Alcoholic Liver Diseases
Allergic Asthma
Allergic Contact Dermatitis
Allergic Rhinitis
Allergic Rhinitis,Perennial
Allergy
Alopecia
Alveolar Rhabdomyosarcoma
Alzheimer Disease
Ampullary Adenocarcinoma
Amyloidosis
Amyotrophic Lateral Sclerosis
Anaplastic Astrocytoma
Anaplastic Large-Cell Lymphoma
Anaplastic Thyroid Carcinoma
Androgenetic Alopecia
Anemia
Aneurysm
Aneurysmal Subarachnoid Hemorrhage
Angiomyolipoma
Angiosarcoma
Aniridia
Ankylosing Spondylitis
Antiphospholipid Syndrome
Anus Neoplasm
Anxiety
Anxiety Disorders
Aortic Aneurysm
Aortic Insufficiency
Aortic Stenosis
Aortic Valve Disease
Aplastic Anemia
Arrhythmia
Arterial Calcification of Infancy
Arteriosclerosis Obliterans
Arteriovenous Malformation
Arteriovenous Malformations of the Brain
Arthritis
Asthenozoospermia
Asthma
Astrocytoma
Atherosclerosis
Atopic Dermatitis
Atrial Fibrillation
Atrioventricular Septal Defect
Atrophic Gastritis
Atypical Teratoid Tumor
Autism Spectrum Disorder
Autistic Disorder
Autoimmune Diseases [unspecific]
Autoimmune Hepatitis
Autoimmune Lymphoproliferative Syndrome
Autoimmune Thyroiditis
Autosomal Dominant Polycystic Kidney Disease
Azoospermia
B-Cell Acute Lymphoblastic Leukemia
B-cell Childhood Acute Lymphoblastic Leukemia
B-Cell Chronic Lymphocytic Leukemia
B-Cell Leukemia
B-Cell Lymphoma
Balkan Nephropathy
Barrett Esophagus
Basal Cell Carcinoma
BCR-ABL Positive Chronic Myelogenous Leukemia
Becker Muscular Dystrophy
Behcet Disease
Bicuspid Aortic Valve Disease
Biliary Atresia
Biliary Tract Carcinoma
Biliary Tract Neoplasms
Bipolar Disorder
Bladder Carcinoma
Bladder Fibrosis
Bladder Neoplasms
Bladder Outlet Obstruction
Blindness
Blood Coagulation Disorders
Bone Cancer
Bone Disease [unspecific]
Borjeson-Forssman-Lehmann Syndrome
Borna Disease
Brain Disease [unspecific]
Brain Neoplasms
Breast Adenocarcinoma
Breast Carcinoma
Breast Ductal Carcinoma
Breast Malignant Phyllodes Tumor
Breast Neoplasms
Bronchiolitis Obliterans Syndrome
Bronchopneumonia
Bronchopulmonary Dysplasia
Burkitt Lymphoma
Burns
Carcinosarcoma
Cardiac Allograft Vasculopathy
Cardiac Fibrosis
Cardiac Myocyte Injury
Cardiac Myxoma
Cardio-Renal Syndrome
Cardiomegaly
Cardiometabolic Disorders
Cardiomyopathy
Cardiotoxicity
Cardiovascular Diseases [unspecific]
Carotid Artery Diseases
Carotid Atherosclerosis
Cartilage Disease [unspecific]
Cataract
Celiac Disease
Central Nervous System Embryonal Tumor
Cerebellum Cancer
Cerebral Aneurysm
Cerebral Cavernous Malformations
Cerebral Ischemia
Cerebral Malaria
Cerebrovascular Disease
Cerevial Squamous Cell Carcinoma
Cervical Adenocarcinoma
Cervical Carcinoma
Cervical Neoplasms
Cervicitis
Cervix Endometrial Stromal Tumor
Chagas Disease
Charcot-Marie-Tooth Disease Type 1A
Chikungunya Virus Infection
Childhood Acute Lymphoblastic Leukemia
Childhood Leukemia
Childhood Obesity
Chlamydial Infection 
Cholangiocarcinoma
Cholestasis
Cholesteatoma
Chondrosarcoma
Chordoma
Chorioamnionitis
Choriocarcinoma
Choroidal Neovascularization
Chromophobe Renal Cell Carcinoma
Chromosome 15q13.3 Microdeletion Syndrome
Chromosome 5q Deletion Syndrome
Chronic Alcohol-Induced Alveolar Macrophage Dysfunction
Chronic Brucellosis
Chronic Cerebral Hypoperfusion
Chronic Fatigue Syndrome
Chronic Heart Failure
Chronic Hepatitis
Chronic Hepatitis B
Chronic Hepatitis C
Chronic Inflammation
Chronic Inflammatory Pain
Chronic Kidney Disease
Chronic Myeloid Leukemia
Chronic Obstructive Pulmonary Disease
Chronic Pain
Chronic Pancreatitis
Chronic-Phase Myeloid Leukemia
Clear Cell Ovarian Carcinoma
Clear-Cell Renal Cell Carcinoma
Cleidocranial Dysplasia
Cocaine Abuse
Colitis
Coloboma
Colon Adenocarcinoma
Colon Adenoma
Colon Carcinoma
Colon Neoplasms
Colorectal Adenocarcinoma
Colorectal Adenoma
Colorectal Carcinoma
Complex Regional Pain Syndrome
Cone Dystrophy
Congenital Deafness
Congenital Diaphragmatic Hernia
Congenital Heart Diseases
Congenital Hypothyroidism
Congenital Microtia
Congenital Myasthenic Syndrome
Cor Pulmonale
Cornea Squamous Cell Carcinoma
Corneal Neovascularization
Coronary Artery Disease
Coronary Atherosclerosis
Coronary Restenosis
Coronavirus Infections
Costello Syndrome
Coxsackievirus Infection
Creutzfeldt-Jakob Disease
Crohn Colitis
Crohn Disease
Cryptosporidium infection
Cutaneous Lupus Erythematosus
Cutaneous Melanoma
Cutaneous T-Cell Lymphoma
Cystic Fibrosis
Cytomegalovirus Retinitis
Dementia
Demyelinating Diseases
Dengue Shock Syndrome
Dengue Virus Infection
Dental Enamel Hypoplasia
Depression Disorder
Dermatomyositis
Diabetes Mellitus
Diabetic Cardiomyopathies
Diabetic Cataract
Diabetic Encephalopathy
Diabetic Foot
Diabetic Nephropathy
Diabetic Peripheral Neuropathy
Diabetic Polyneuropathy
Diabetic Retinopathy
Diabetic Vasculopathy
Diarrhea
Diffuse Large B-Cell Lymphoma
Diffuse Lipomatosis
Digeorge Syndrome
Digestive System Neoplasms
Dilated Cardiomyopathy
Disease of Metabolism
Distal Chromosome 22Q11.2 Deletion Syndrome
Distal Myopathy
Down Syndrome
Duchenne Muscular Dystrophy
Dyspepsia
Early-Stage Breast Carcinoma
Early-Stage Cervical Squamous Cell Carcinoma
Early-Stage Colon Adenocarcinoma
Early-Stage Colon Carcinoma
Early-Stage Gastric Carcinoma
Early-Stage Lung Adenocarcinoma
Early-Stage Lung Carcinoma
Early-Stage Non-Small-Cell Lung Carcinoma
Early-Stage Small-Cell Lung Carcinoma
Ebola Hemorrhagic Fever
Eclampsia
Ectopic Pregnancy
Eczema Herpeticum
Ehrlich Tumor Carcinoma
Embryonal Carcinoma
Embryonal Testis Carcinoma
Emphysema
Encephalitis
Encephalomyelitis
Endocrine Gland Neoplasms
Endometrial Adenocarcinoma
Endometrial Carcinoma
Endometrial Neoplasms
Endometrial Stromal Sarcoma
Endometrioid Endometrial Carcinoma
Endometriosis
Endomyocardial Fibrosis
Endotoxemia
Enteropathy
Enterovirus Infection
Eosinophilic Esophagitis
Ependymoma
Epilepsy
Epithelioid Sarcoma
Epstein-Barr Virus Infection
Esophageal Adenocarcinoma
Esophageal Carcinoma
Esophageal Neoplasms
Esophageal Small Cell Carcinoma
Esophageal Squamous Cell Carcinoma
Esophagitis
Essential Hypertension
Essential Thrombocythemia
Evans Syndrome
Ewing Sarcoma
Extranodal NK-T-Cell Lymphoma
Fabry Disease
Facioscapulohumeral Muscular Dystrophy
Familial Mediterranean Fever
Fanconi Anemia
Fatty Liver [unspecific]
Feingold Syndrome
Fetal Alcohol Spectrum Disorder
Fever
Fibromyalgia
Fibrosarcoma
Focal Epithelial Hyperplasia
Focal Segmental Glomerulosclerosis
Follicular Atresia
Follicular Lymphoma
Follicular Thyroid Carcinoma
Foot And Mouth Disease Hand
Foot-and-Mouth Disease
Fragile X Syndrome
Frailty
Friedreich Ataxia
Frontotemporal Dementia
Frontotemporal Lobar Degeneration
Fuchs Endothelial Dystrophy
Fungal Keratitis
Gallbladder Carcinoma
Gallstones
Ganglioglioma
Gastric Adenocarcinoma
Gastric Carcinoma
Gastric Cardia Adenocarcinoma
Gastric Neoplasms
Gastric-Esophageal Junction Adenocarcinoma
Gastroduodenal Ulcer
Gastrointestinal Neoplasms
Gastrointestinal Stromal Tumor
Gastrooesophageal Carcinoma
Gaucher Disease
Generalized Epilepsy with Febrile Seizures Plus
Germ Cell And Embryonal Neoplasms
Germ Cell Tumor
Gerstmann-Straussler-Scheinker Syndrome
Gestational Diabetes Mellitus
Gestational Trophoblastic Disease
Giant Cell Tumor of Bone
Gingival Carcinoma
Glaucoma
Glioblastoma
Glioblastoma Mesenchymal Subtype
Glioma
Gliosis
Glomerulonephritis
Glomerulosclerosis
Glycogen Storage Disease II
Gout
Graft-Versus-Host Disease
Granular Corneal Dystrophy
Granulosa Cell Tumor
Graves Disease
Graves Ophthalmopathy
Growth Disorders
Guillain-Barre Syndrome
Habitual Abortion
Hailey-Hailey Disease
Hantavirus Infection
HBV-Related Hepatocellular Carcinoma
HCV-Related Hepatocellular Carcinoma
Head And Neck Adenoid Cystic Carcinoma
Head And Neck Carcinoma
Head And Neck Neoplasms
Head and Neck Squamous Cell Carcinoma
Hearing Disorders
Hearing Loss
Heart Diseases [unspecific]
Heart Failure
Heart Transplant Rejection
Heart Valve Disease
Helicobacter pylori Infection
HELLP Syndrome
Hemangioma
Hemangiosarcoma
Hematologic Neoplasms
Hemoglobin Diseases
Hemoglobinopathy
Hemophagocytic Lymphohistiocytosis
Hemophilia A
Hemophilus Influenzae Infection
Hemorrhagic Shock
Hemorrhagic Stroke
Hepatic Ischemia-Reperfusion Injury
Hepatic Veno-Occlusive Disease
Hepatitis [unspecific]
Hepatitis B Virus Infection
Hepatitis C Virus Infection
Hepatitis E Virus Infection
Hepatoblastoma
hepatocellular carcinoma
hepatocellular carcinoma
Hereditary Breast Carcinoma
Hereditary Hemorrhagic Telangiectasia
Hidradenitis Suppurativa
Hirschsprung Disease
HIV-Associated Lipodystrophy
Hodgkin Lymphoma
Holt-Oram Syndrome
Human Cytomegalovirus Infection
Human Immunodeficiency Virus Infection
Human Papilloma Virus Infection
Huntington Disease
Hyperactivity Disorder
Hypercholesterolaemia
Hyperglycemia
Hyperhomocysteinemia
Hyperlipidemia
Hyperlipoproteinemia Type III
Hypertension
Hypertrophic Cardiomyopathy
Hypertrophic Scar
Hypertrophy
Hyperuricemia
Hypogonadism
Hypogonadotropic Hypogonadism
Hypohidrotic Ectodermal Dysplasia
Hypoxia
Hypoxic-Ischemic Encephalopathy
Idiopathic Asthenospermia
Idiopathic Pulmonary Fibrosis
Idiopathic Pulmonary Hypertension
Idiopathic Scoliosis
Idiopathic Short Stature
IgA Nephropathy
Ileus
Immune System Disease [unspecific]
Immune Thrombocytopenic Purpura
Immunologic Cytotoxicity Tests
Infection [unspecific]
Infectious Bursal Disease Virus
Infertility
Inflammation
Inflammatory Bowel Diseases
Influenza
Inherited Hemoglobin Disease
Inner Ear Inflammation
Intellectual Disability
Intermittent Claudication
Interstitial Cystitis
Interstitial Lung Disease
Intervertebral Disc Degeneration
Intestinal Barrier Dysfunction
Intestinal Schistosomiasis
Intracerebral Hemorrhage
Intracranial Aneurysm
Intraductal Papillary Mucinous Neoplasms
Intrahepatic Cholangiocarcinoma
Invasive Bladder Transitional Cell Carcinoma
Iron Metabolism Disease
Irritable Bowel Syndrome
Ischemia
Ischemia-Reperfusion Injury
Ischemic Cardiomyopathy
Ischemic Diseases [unspecific]
Ischemic Heart Disease
Ischemic Stroke
Japanese Encephalitis Virus Infection
Johne Disease
Juvenile Rheumatoid Arthritis
Kaposi Sarcoma
Kawasaki Syndrome
Keloid
Keratitis
Kideny Transplant Rejection
Kidney Diseases [unspecific]
Kidney Injury
Kidney Neoplasms
Kidney Osteogenic Sarcoma
Knee Osteoarthritis
Lacrimal Adenoid Cystic Carcinoma
Large B-Cell Lymphoma
Laryngeal Carcinoma
Laryngeal Neoplasms
Laryngeal or Hypopharyngeal Squamous Cell Carcinoma
Learned Helplessness
Legg-Calve-Perthes Disease
Leiomyoma
Leiomyosarcoma
Leishmaniasis
Lepromatous Leprosy
Leprosy
Lesch-Nyhan Syndrome
Leukemia
Li-Fraumeni Syndrome
Lichen Planus
Light-Induced Retinal Injury
Lipid Metabolism Disorder
Liposarcoma
Listeriosis
Liver Cirrhosis
Liver Diseases [unspecific]
Liver Failure
Liver Fibrosis
Liver Injury
Liver Neoplasms
Liver Transplant Rejection
Localized Scleroderma
Lofgren Syndrome
Long QT Syndrome
Lung Adenocarcinoma
Lung Carcinoma
Lung Disease [unspecific]
Lung Fibrosis
Lung Injury [unspecific]
Lung Neoplasms
Lung Squamous Cell Carcinoma
Lupus Nephritis
Lupus Vulgaris
Lyme Disease
Lymphedema
Lymphoblastic Leukemia
Lymphocytic Choriomeningitis
Lymphoma
Lymphoproliferative Disorders
Lynch Syndrome
Machado-Joseph Disease
Macroglobulinemia
Macular Degeneration
Major Depressive Disorder
Male Infertility
Malignant Neoplasms [unspecific]
Malignant Peripheral Nerve Sheath Tumor
MALT Lymphoma
Mandibular Prognathism
Mantle-Cell Lymphoma
Marek Disease
Mast Cell Neoplasm
Mastitis
Maxillary Sinus Squamous Cell Carcinoma
Medullary Thyroid Carcinoma
Medulloblastoma
Medulloepithelioma
Melanoma
MELAS Syndrome
Melasma
Meningioma
Meningitis
Merkel Cell Carcinoma
Mesial Temporal Lobe Epilepsy
Mesothelioma
Metabolic Syndrome
Methylmalonic Acidemia
Microvascular Disease
Migraine
Mild Cognitive Impairment
Mitochondrial Encephalomyopathy
Mitochondrial Metabolism Disease
Mitral Valve Disease
Monocytic Leukemia
Mountain Sickness
Moyamoya Disease
Mucoepidermoid Carcinoma
Mucosulfatidosis
Multiple Endocrine Neoplasia Type 1
Multiple Myeloma
Multiple Sclerosis
Multiple System Atrophy
Muscle Atrophy
Muscle Diseases [unspecific]
Muscular Dystrophy
Musculoskeletal Abnormalities [unspecific]
Myasthenia Gravis
Mycobacterium Avium Complex Disease
Mycobacterium tuberculosis Infection
Mycosis Fungoides
Myelodysplastic Syndromes
Myelofibrosis
Myeloid Leukemia
Myeloma
Myeloproliferative Neoplasms
Myocardial Infarction
Myocardial Ischemic-Reperfusion Injury
Myopia
Myositis
Myositis Ossificans
Myotonic Dystrophy Type 1
Myotonic Muscular Dystrophy
Myxoid Liposarcoma
Narcolepsy
Nasal Cavity Inverting Papilloma
Nasopharyngeal Carcinoma
Nasopharyngeal Neoplasms
Necrotizing Enterocolitis
Neoplasms [unspecific]
Nephrolithiasis
Nephrosclerosis
Nephrotic Syndrome
Nervous System Diseases [unspecific]
Neurilemmoma
Neuroblastoma
Neurodegenerative Diseases [unspecific]
Neuroendocrine Carcinoma
Neuroendocrine Tumors
Neuroepithelial Tumors
Neurofibromatosis type 2
Neuroinflammation
Neuroma
Neuronal Apoptosis-Related Diseases
Neuropathic Pain
Neuropsychiatric Disorders [unspecific]
Neutropenia
Nevus
Non Specific Chronic Endometritis
Non-Alcoholic Fatty Liver
Non-Hodgkin Lymphoma
Non-Neoplastic Diseases
Non-Sensory Diseases
Non-Small-Cell Lung Carcinoma
Non-Syndromic Orofacial Clefts
Non-Traumatic Osteonecrosis
NUT Midline Carcinoma
Obesity
Obstructive Sleep Apnea
Ocular Motility Disease
Odontogenic Tumors
Oligodendroglioma
Oral Carcinoma
Oral Leukoplakia
Oral Lichen Planus
Oral Neoplasms
Oral Squamous Cell Carcinoma
Oral Submucous Fibrosis
Oropharyngeal Carcinoma
Ossification of Posterior Longitudinal Ligament
Osteoarthritis
Osteogenesis Imperfecta
Osteomyelitis
Osteonecrosis
Osteopetrosis
Osteoporosis
Osteosarcoma
Otitis Media
Ovarian Carcinoma
Ovarian Disease
Ovarian Germ Cell Cancer
Ovarian Neoplasms
Ovarian Serous Cystadenocarcinoma
Ovary Mixed Epithelial Carcinoma
Pain
Pallister-Killian Syndrome
Pancreatic Adenocarcinoma
Pancreatic Carcinoma
Pancreatic Diseases
Pancreatic Ductal Adenocarcinoma
Pancreatic Ductal Carcinoma
Pancreatic Endocrine Carcinoma
Pancreatic Intraductal Papillary Mucinous Neoplasms
Pancreatic Neoplasms
Pancreatic Serous Cystic Neoplasm
Panic Disorder
Papillary Thyroid Carcinoma
Parathyroid Carcinoma
Parkinson Disease
Patau Syndrome
Pathologic Constriction
Pathologic Neovascularization
Pediatric Acute Myeloid Leukemia
Pediatric Ependymoma
Pediatric Glioma
Pediatric Osteosarcoma
Pelvic Inflammatory Disease
Pelvic Organ Prolapse
Pemphigus
Penis Carcinoma
Peri-Implantitis
Periampullary Carcinoma
Periodontal Diseases
Periodontitis
Peripheral Nerve Injury
Peripheral Nervous System Diseases
Peripheral Vascular Disease
Peritoneal Dialysis Failure
Peritoneal Fibrosis
Peritoneal Neoplasms
Perlman Syndrome
Persistent Fetal Circulation Syndrome
Pervasive Child Development Disorders
Pheochromocytoma
Pineal Gland Cancer
Pituitary Adenoma
Pituitary Neoplasms
Placenta Cancer
Plasmodium Falciparum Malaria
Plasmodium vivax Infection
Pleural Mesothelioma
Pneumococcal Meningitis
Pneumonia
Polyangiitis
Polycystic Kidney Disease
Polycystic Ovarian Syndrome
Polycythemia Vera
Porcine Reproductive and Respiratory Syndrome Virus Infection
Porphyromonas Gingivalis
Post-Traumatic Stress Disorder
Posterior Capsule Opacification
Postherpetic Neuralgia
Postmenopausal Osteoporosis
Prader-Willi Syndrome
Precursor B-Cell Lymphoblastic Leukemia-Lymphoma
Precursor T-Cell Lymphoblastic Leukemia-Lymphoma
Prediabetes
Preeclampsia
Pregnancy Complications [unspecific]
Premature Ovarian Failure
Preterm Labor
Primary Aldosteronism
Primary Biliary Cirrhosis
Primary Effusion Lymphoma
Primary Immunodeficiency Disease
Primary Sclerosing Cholangitis
Prion Diseases
Progressive Supranuclear Palsy
Prolactinoma
Proliferative Diabetic Retinopathy
Proliferative Glomerulonephritis
Proliferative Vitreoretinal Disease
Prostate Adenocarcinoma
Prostate Carcinoma
Prostate Disease
Prostate Neoplasms
Psoriasis
Psoriatic Arthritis
Psychiatric Disorders
Psychotic Disorders
PTEN Hamartoma Tumor Tyndrome
Pterygium
Pulmonary Embolism
Pulmonary Hypertension
Pulmonary Sarcoidosis
Pulmonary Tuberculosis
Rapidly Progressive Glomerulonephritis
Rectal Carcinoma
Rectal Neoplasms
Rectum Adenocarcinoma
Recurrent Spontaneous Abortion
Recurrent Wheezing
Renal Cell Carcinoma
Renal Fibrosis
Renal Oncocytoma
Reproductive System Disease
Respiratory Syncytial Virus Pneumonia
Respiratory System Disease
Retinal Degeneration
Retinal Neovascularization
Retinal Vascular Disease
Retinitis Pigmentosa
Retinoblastoma
Rhabdoid Cancer
Rhabdomyosarcoma
Rheumatic Heart Diseases
Rheumatic Myocarditis
Rheumatoid Arthritis
Rhinosinusitis
Roberts Syndrome
Salivary Adenoid Cystic Carcinoma
Salivary Gland Disease
Salivary Gland Neoplasms
Salmonellosis
Sarcoma [unspecific]
Sarcomatoid Mesothelioma
Schizophrenia
Sciatic Nerve Injury
Sebaceous Adenocarcinoma
Sebaceous Carcinoma
Seizures
Selective IgE Deficiency Disease
Seminoma
Sensorineural Hearing Loss
Sepsis
Septic Shock
Serous Ovarian Carcinoma
Sertoli Cell-Only Syndrome
Severe Acute Respiratory Syndrome Virus Infection
Sezary Disease
Short Bowel Syndrome
Sickle Cell Anemia
Sickle Cell Disease
Signet Ring Cell Gastric Carcinoma
Silicosis
Sinonasal Squamous Cell Carcinoma
Sjogren Syndrome
Skin Carcinoma
Skin Disease [unspecific]
Skin Hemangioma
Skin Injury
Skin Neoplasms
Skin or Unspecific Squamous Cell Carcinoma
Small Intestine Carcinoma
Small-Cell Lung Carcinoma
Smoke Inhalation Injury
Soft Tissue Sarcoma
Somatotropinoma
Spinal Chordoma
Spinal Cord Injuries
Spinal Muscular Atrophy
Spinal Stenosis
Spondylarthritis
Squamous Cell Carcinoma
Status Epilepticus
Stevens-Johnson Syndrome
Stroke
Subacute Sclerosing Panencephalitis
Supraglottic Carcinoma
Synovial Sarcoma
Systemic Lupus Erythematosus
Systemic Mastocytosis
Systemic Scleroderma
T-Cell Acute Lymphoblastic Leukemia
T-Cell Leukemia
T-Cell Lymphoma
Tauopathy
Teratocarcinoma
Testicular Germ Cell Tumor
Testicular Neoplasms
Tetralogy Of Fallot
Thoracic Aortic Aneurysm
Thrombocytopenia
Thrombocytosis
Thrombosis
Thymoma
Thyroid Adenomas
Thyroid Carcinoma
Thyroid Lymphoma
Thyroid Neoplasms
Thyroid-Associated Ophthalmopathy
Tibial Meniscus Injuries
Tongue Neoplasms
Tongue Squamous Cell Carcinoma
Tooth Agenesis
Tounge Carcinoma
Tourette Syndrome
Toxic Encephalopathy
Toxic Epidermal Necrolysis
Toxoplasma gondii Infection
Transitional Cell Carcinoma
Traumatic Brain Injury
Triple Negative Breast Carcinoma
Tuberculosis
Type 1 Diabetes Mellitus
Type 2 Diabetes Mellitus
Type C Niemann-Pick Disease
Ulcerative Colitis
Unstable Angina
Upper Tract Urothelial Carcinoma
Uremic Neuropathy
Urinary Bladder Cancer
Urinary System Cancer
Urothelial Carcinoma
Uterine Cancer
Uterine Carcinosarcoma
Uterine Corpus Choriocarcinoma
Uterine Corpus Endometrial Carcinoma
Uterine Corpus Myxoid Leiomyosarcoma
Uterine Corpus Serous Adenocarcinoma
Uterine Leiomyoma
Uterine Leiomyosarcoma
Uveal Melanoma
Uveitis
Varicella
Varicocele
Vascular Disease [unspecific]
Vascular Hypertrophy
Vascular Injuries
Vascular Myelopathy
Vasculitis
Vasomotor Rhinitis
Venous Thromboembolism
Viral Infectious Disease
Viral Myocarditis
Visceral Leishmaniasis
Vitiligo
Vogt-Koyanagi-Harada Disease
Vulvar Carcinoma
Vulvar Squamous Cell Carcinoma
Vulvar Squamous Tumor
Waldenstrom Macroglobulinemia
White Spot Syndrome Virus Infection
Wilms Tumor
With Pericarditis Systemic Lupus Erythematosus
Wound Healing
Wound Inflammation
Wounds and Injuries [unspecific]
X-linked Alport Syndrome <br>
acute lymphoblastic leukemia
acute myeloid leukemia
adenocortical carcinoma
adenoid cystic carcinoma
bladder carcinoma
brain neoplasm
breast carcinoma
cervical carcinoma
cholangiocarcinoma
colorectal carcinoma
esophageal carcinoma
ewing sarcoma
gallbladder carcinoma
gastric carcinoma
glioblastoma
head and neck malignant neoplasia
hepatocellular carcinoma
lung carcinoma
lymphoma
medulloblastoma
melanoma
mesothelioma
multiple myeloma
nasopharyngeal carcinoma
neuroblastoma
neurofibroma
ovarian carcinoma
pancreatic cancer
pancreatic carcinoma
pancreatic neuroendocrine tumor
paraganglioma
prostate carcinoma
renal carcinoma
rhabdomyosarcoma
sarcoma
skin neoplasm
stomach carcinoma
testicular carcinoma
thymic carcinoma
thymoma
thyroid carcinoma
uterine neoplasm
|#
