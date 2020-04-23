;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "named-entities"
;;;    Module:   "sl;disease:"
;;;   version:   August 2014

;; initiated 5/6/13
;; updated 28/8/14--added WHO, Doctors Without Borders


(in-package :sparser)

(when (fboundp 'define-company)
  (define-with-all-instances-permanent

    ;; "company" isn't right for most of these, but it will do 
    ;; agreed, should perhaps have "organization" category?
    (define-company '("United" "Nations") :aliases '("U.N.") :takes-the t)
    (define-company '("World" "Health" "Organization") :aliases '("W.H.O."))
    ;;medical group operating throughout the world: Doctors Without Borders
    ;;also French name is used in English news articles as well
    ;;since it is actually a French based organization
    ;;Médecins Sans Frontières--won't work yet because of special characters?
    (define-company '("Doctors" "Without" "Borders"))

    ))
#| professional organizations to add:
potentially make them of the form:
(def-individual-with-id prof-org "FDA" "NCIT:C17237" :name "Food and Drug Administration" :no-plural t)
but not sure what prof-org should fall under

("COG" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39353" :NAME
                                "children's oncology group")
                               ("DSMB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C94204" :NAME
                                "data and safety monitoring board")
                               ("FIGO" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C89808" :NAME
                                "federation of gynecology and obstetrics")
("IUPAC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82878" :NAME
                                "international union of pure and applied chemistry")
                               ("MSKCC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39457" :NAME
                                "memorial sloan-kettering cancer center")
                               ("NCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19202" :NAME
                                "national cancer institute")
                               ("NHLBI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82613" :NAME
                                "national heart, lung, and blood institute")
                               ("NICHD" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19754" :NAME
                                "national institute of child health and human development")
                               ("SCI" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C105626" :NAME
                                "stanford cancer institute")
                               ("USDA" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C68708" :NAME
                                "united states department of agriculture")
;; lower case probably come from url/email addresses
                               ("cshl" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39335" :NAME
                                "cold spring harbor laboratory cancer
                                center")
                                ("jax" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C39529" :NAME
                                "the jackson laboratory cancer
                                center")

                               ("ncbi" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C45799" :NAME
                                "national center for biotechnology information")
                               ("nlm" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C82620" :NAME
                                "national library of medicine")
                               ("org" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19711" :NAME
                                "professional organization or group")
                               ("niaid" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19753" :NAME
                                "national institute of allergy and infectious disease")

;; some have no UID:
"BGI" "bgi" "Beijing Genomics Institute"
"JCVI" "J. Craig Venter Institute" ;; does genomic and virus research

slightly different -- local institutions so could have plurals:
("IACUC" "ONT:PROFESSIONAL-ORGANIZATION" :ID
                                "NCIT:C19487" :NAME
                                "institutional animal care and use committee")
                               ("IRB" "ONT:PROFESSIONAL-ORGANIZATION" :ID
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
