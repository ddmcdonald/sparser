;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;      File:   "organisms"
;;;    Module:   "sl;disease:"
;;;   version:   November 2020

;; Broken out of bio;taxonomy and others 11/10/20

(in-package :sparser)

(define-category species
  :specializes name
  :documentation "And organism's species is its scientific name.
    Given the taxonomy from general to specific that makes up the name of species
    ('Homo sapiens neanderthalensis') it is a attribute that assigns
    the organism to a particiular spot in a particular taxonomic
    classification (see Wikipedia article on 'human'). People belong
    to a particlar species. They 'are' that species only when that
    perspective is germane, such as discussing us with respect to our
    near cousins. name < attribute < quality"
  :lemma (:common-noun "species")
  :realization (:common-noun name))

(define-category organism
 :specializes endurant
 :mixins (has-uid #|biological|#)
 :bindings (uid "NCIT:C14250")
 :binds ((species species))
 :instantiates self  
 :lemma (:common-noun ("organism" "taxon"))
 :realization
   (:common-noun name))


(define-category animal
  :specializes organism
  :instantiates self 
  :lemma (:common-noun "animal")
  :realization (:common-noun name))

;; "animal, vegitable, mineral" as they said in grade school

(define-category fish
 :specializes animal
 :realization (:common-noun "fish")) ;/// plural?

(define-category bird
 :specializes animal
 :realization (:common-noun "bird"))

(define-category amphibian
 :specializes animal
 :realization (:common-noun "amphibian"))

(define-category fungus
 :specializes animal
 :realization (:common-noun ("fungus" :plural ("fungi" "funguses"))))

;;//// , reptiles, dinosaurs, ...

(define-category insect
 :specializes animal
 :realization (:common-noun "insect"))

(define-category mammal
  :specializes animal
  :realization
    (:noun "mammal"
     :adj "mammalian"))

(define-category metazoa
  :specializes animal
  :documentation "Unicellular aquatic protists that sometimes form colonies"
  :realization  (:noun "metazoa" :adj "metazoan"))


(define-category infectious-agent :specializes organism
  :documentation "Groups small things that could inherit directly
    from organism but this provides an inferential hook
    for 'they are bad for you'")

(define-category virus :specializes infectious-agent
  :instantiates self 
  :lemma (:common-noun "virus" :adjective "viral")
  :realization (:common-noun name ))

(def-synonym virus (:noun "virion"))

(define-category bacterium :specializes infectious-agent
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun ("bacterium" :plural "bacteria"))
  :realization (:common-noun name))


(noun homo-sapiens :noun "homo sapiens" :super species)

(define-category human
 :specializes mammal
 :bindings (uid "NCIT:C14225"
            species category::homo-sapiens)
 :documentation "Extensively elaborated in model/core/people/ 
    and its associated dossiers"
 :realization (:noun ("human")))

(define-category gender
 :specializes attribute
 :documentation "A property that many organisms have"
 :realization (:common-noun "gender"))

;; Strictly speaking these are attribute values (and quite fluid
;; in some organisms) but it's not worth the extra level
(noun "female" :super gender) 
(noun "male" :super gender)


(noun "dam" :super mammal)
;; dam is the female parent, generally for rodents
;; -- this is to replace an erroneous protein definition of "dams"

;;;-------------------
;;; organisms with IDs
;;;-------------------

;; strictly speaking they are nematodes.
;; most of them are hermaphrodites, which would be a gender
(def-indiv-with-id insect "Caenorhabditis elegans" "TI:6239" :synonyms ("C. elegans"))

(def-indiv-with-id insect "drosophila" "NCIT:C14202" :synonyms ("fruit fly")) 
(def-indiv-with-id amphibian "xenopus" "NCIT:C14285") 
(def-indiv-with-id fish "zebrafish" "NCIT:C14287")


(def-indiv-with-id mammal "bat" "TI:9397" :name "chiroptera")
(def-indiv-with-id mammal "rat" "NCIT:C14266" :synonyms ("rattus"))
(def-indiv-with-id mammal "goat" "NCIT:C14210")

(define-category mouse
 :specializes mammal
 :instantiates self
 :bindings (uid "NCIT:C14225")
 :realization (:noun ("mouse" :plural "mice")
               :adj "murine")
 :documentation "'murine refers to an engineered cell line derived from a particular
   mouse tissue")

(def-synonym mouse (:noun "mus"))
(noun "Ad5-hDPP4" :super mouse) ;;no uid

(def-indiv-with-id fungus "Saccharomyces cerevisiae" "NCIT:C14271"
  :synonyms ("saccharomyces" "yeast" "S. cerevisiae"))


;;/// don't know what to do with this. We have a "strain of xx",
;; which is sort of like saying some people are Europeans, or French.
;; Needs to be though through when it comes time to think about these.
(define-category strain
  :specializes organism ;; biological variant - may want to change how this is implemented 
  :instantiates self
  :bindings (uid "NCIT:C14419")
  :lemma (:common-noun "strain")
  :realization (:common-noun name))


