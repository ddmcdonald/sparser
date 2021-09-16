;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2014,2020  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "named-entities"
;;;    Module:   "sl;disease:"
;;;   version:   April 2020

;; initiated 5/6/13
;; updated 28/8/14--added WHO, Doctors Without Borders

(in-package :sparser)

#| April 2020 -- shallow version of define-company using the shortcut forms
 with polywords and synonyms. Includes alternative/additional categories
 to generalize from strict notion of a 'company'.
|#

(when (fboundp 'define-company)
  (define-with-all-instances-permanent

    ;; "company" isn't right for most of these, but it will do 
    ;; agreed, should perhaps have "organization" category?
    (define-company '("United" "Nations") :aliases '("U.N.") :takes-the t)
    (define-company '("World" "Health" "Organization") :aliases '("W.H.O.")) ;; NCIT:C75419

    ;;medical group operating throughout the world: Doctors Without Borders
    ;;also French name is used in English news articles as well
    ;;since it is actually a French based organization
    ;;Médecins Sans Frontières--won't work yet because of special characters?
    (define-company '("Doctors" "Without" "Borders"))

    ))

;; endurant > non-physical > social-object > social-agent

(define-category organization
  :specializes social-agent
  :binds ((name :primitive word)
          (UID :primitive string))
  :realization (:proper-name name)
  :documentation "covering category for amalgams of social agents with
 a common purpose")

(defmacro def-organization (short-pname &key id name synonyms)
  "Variation on what it calls where several fields are already filled in"
  `(define-individual-with-id 'organization ,short-pname ,id
                              :no-plural t :pos 'proper-name
                              ,.(when synonyms `(:synonyms ',synonyms))
                              ,.(when name `(:name ,name))
                              ))

(def-organization "COG" :id "NCIT:C39353" :name "Children's Oncology Group")
(def-organization "DSMB" :id "NCIT:C94204" :name "Data and Safety Monitoring Board")
(def-organization "FDA" :id "NCIT:C17237" :name "Food and Drug Administration")
(def-organization "FIGO" :id "NCIT:C89808" :name "Federation of Gynecology and Obstetrics")
(def-organization "IUPAC" :id "NCIT:C82878" :name "International Union of Pure and Applied Chemistry")
(def-organization "MSKCC" :id "NCIT:C39457" :name "Memorial Sloan-Kettering Cancer Center")
(def-organization "NCI" :id "NCIT:C19202"   :name "National Cancer Institute")
(def-organization "NHLBI" :id "NCIT:C82613" :name "National Heart, Lung, and Blood Institute")
(def-organization "NICHD" :id "NCIT:C19754" :name "National Institute of Child Health and Human Development")
(def-organization "NIAID" :id "NCIT:C19753" :name "National Institute of Allergy and Infectious Disease"
                  :synonyms ("National Institute of Allergy and Infectious Diseases"))
(def-organization "NCBI" :id "NCIT:C45799" :name "National Center for Biotechnology Information")
(def-organization "NIH" :id "NCIT:C16895"   :name "National Institutes of Health")
(def-organization "NLM" :id "NCIT:C82620" :name "National Library of Medicine")
(def-organization "SCI" :id "NCIT:C105626" :name  "Stanford Cancer Institute")
(def-organization "USDA" :id "NCIT:C68708" :name  "United States Department of Agriculture")
(def-organization "AHRQ" :id "NCIT:C39304" :name "Agency for Healthcare Research and Quality"
                  :synonyms ("agency for healthcare research and quality")) 
(def-organization "CDER" :id "NCIT:C82669" :name "Center for Drug Evaluation and Research"
                  :synonyms ("center for drug evaluation and research")) 
(def-organization "CDRH" :id "NCIT:C82670" :name "Center for Devices and Radiological Health"
                  :synonyms ("center for devices and radiological health")) 
(def-organization "MHRA" :id "NCIT:C142608" :name "Medicines and Healthcare Products Regulatory Agency"
                  :synonyms ("medicines and healthcare products regulatory agency")) 
(def-organization "NDRI" :id "NCIT:C126658" :name "National Disease Research Interchange"
                  :synonyms ("national disease research interchange")) 
(def-organization "NIMH" :id "NCIT:C16894" :name "National Institute of Mental Health"
                  :synonyms ("national institute of mental health")) 
(def-organization "HL7" :id "NCIT:C80485" :name "Health Level Seven" :synonyms ("health level seven"))

;;-- these are labs -- change the superclass? -- do it for universities too?
;; though that rapidly escalates the number of classes when you recognize org's programmatically
(def-organization "CSHL" :id "NCIT:C39335" :name "Cold Spring Harbor Laboratory Cancer Center")
(def-organization "JAX" :id "NCIT:C39529" :name "Jackson Laboratory Cancer Center")

(def-organization "HCI" :id "NCIT:C39422" :name "Huntsman Cancer Institute" :synonyms ("huntsman cancer institute")) 
(def-organization "KCI" :id "NCIT:C39328" :name "Barbara Ann Karmano Cancer Institute" :synonyms ("barbara ann karmano cancer institute")) 

;;(def-organization "Nanomaterials" :id "NCIT:C53671" :name "Nanomaterials" :synonyms ("nanomaterials")) 
;;(def-organization "Sig" :id "NCIT:C19782" :name "Surveillance Implementation Group" :synonyms ("surveillance implementation group"))

;; drug companies
(noun ("Eli Lilly" "Eli Lilly and Company") :super organization)
(noun ("GlaxoSmithKline" "GSK" "GlaxoSmithKline plc") :super organization)
(noun ("Merck" "MERCK" "MSD" "Merck & Co., Inc." "Merck Sharp & Dohme") :super organization)
(noun ("Novavax" "Novavax, Inc.") :super organization)
(noun ("Novartis" "Novartis International AG") :super organization)
(noun ("Pfizer" "Pfizer, Inc.") :super organization)
(noun ("Vaccitech" "Vaccitech Limited") :super organization)
(noun ("Moderna" "Moderna, Inc." "Moderna Therapeutics" "ModeRNA Therapeutics") :super organization)


;; complicated -- can be plural
(def-organization "IACUC" :id "NCIT:C19487" :name "Institutional Animal Care and Use Committee" :synonyms ("institutional animal care and use committee")) 
(def-organization "IRB" :id "NCIT:C16741" :name "Institutional Review Board" :synonyms ("institutional review board")) 

#| more professional organizations to add:
         
;; some have no UID:
"BGI" "bgi" "Beijing Genomics Institute"
Wuhan Institute of Virology (WIV)
Wuhan Cenerter for Disease Control and Preventino (WHCDC)

"JCVI" "J. Craig Venter Institute" ;; does genomic and virus research

Center for Infection Disease Research, University of Minnisota
Fred Hutchinson Cancer Research Center

Office of the Director of National Intelligence
the U.S. intelligence community  The IC 
the Defense Department
Center for Arms Control and Non-Proliferation

It shares nearly 80 percent of the genome as the original SARS-CoV and 96 percent of the genome of a virus (RaTG13) that Shi’s team had previously sampled.


slightly different -- local institutions so could have plurals:
("IACUC"  :ID  "NCIT:C19487" :NAME "institutional animal care and use committee")
("IRB"  :ID  "NCIT:C16741" :NAME https://s2.washingtonpost.com/28ed4f7/5eac8d78fe1ff654c2c950eb/ZGRtY2RvbmFsZEBtYWMuY29t/13/65/5b6c007ee6f74ddb397ee1e56a7292e3"institutional review board")

universities
South China University of Technology
("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
Harvard
Vanderbilt
hospital locations (again, can be plural):
 ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
;; possibly add OR and ER but ER would be overloaded with bio-defs

|#
