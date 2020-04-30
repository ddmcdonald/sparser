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
                              :name ,name
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
(def-organization "NIAID" :id "NCIT:C19753" :name "National Institute of Allergy and Infectious Disease")
(def-organization "NCBI" :id "NCIT:C45799" :name "National Center for Biotechnology Information")
(def-organization "NIH" :id "NCIT:C16895"   :name "National Institutes of Health")
(def-organization "nlm" :id "NCIT:C82620" :name "National Library of Medicine")
(def-organization "SCI" :id "NCIT:C105626" :name  "Stanford Cancer Institute")
(def-organization "USDA" :id "NCIT:C68708" :name  "United States Department of Agriculture")


#| professional organizations to add:

                               
                               ("cshl"  :ID
                                "NCIT:C39335" :NAME
                                "cold spring harbor laboratory cancer
                                center")
                                ("jax"  :ID
                                "NCIT:C39529" :NAME
                                "the jackson laboratory cancer
                                center")


                               

                               ("org"  :ID
                                "NCIT:C19711" :NAME
                                "professional organization or group")

                               

;; some have no UID:
"BGI" "bgi" "Beijing Genomics Institute"
"JCVI" "J. Craig Venter Institute" ;; does genomic and virus research

slightly different -- local institutions so could have plurals:
("IACUC"  :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("IRB"  :ID
                                "NCIT:C16741" :NAME
                                "institutional review board")

universities
("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
hospital locations (again, can be plural):
 ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
;; possibly add OR and ER but ER would be overloaded with bio-defs

|#
