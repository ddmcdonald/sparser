;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021-2022 SIFT LLC. All Rights Reserved
;;;
;;;      File:   "organisms"
;;;    Module:   "model;mid-level"
;;;   version:   March 2022

;; Broken out of bio;taxonomy and others 11/10/20
;; supplemented with more definitions from bio;new-def:new-organisms 8/2021

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

(define-category prokaryote
  :specializes organism
  :bindings (uid "NCIT:C14263") 
  :instantiates self 
  :lemma (:common-noun ("prokaryote" "prokaryota"))
  :realization (:common-noun name
                :adj "prokaryotic"))

(define-category eukaryote
  :specializes organism
  :bindings (uid "NCIT:C25796") 
  :instantiates self 
  :lemma (:common-noun ("eukaryote" "eukaryota"))
  :realization (:common-noun name
                :adj "eukaryotic"))

(define-category plant
  :specializes eukaryote
  :bindings (uid "NCIT:C14258") ;; "BTO:0001481"
  :instantiates self 
  :lemma (:common-noun "plant")
  :realization (:common-noun name))

(define-category animal
  :specializes eukaryote
  :instantiates self 
  :lemma (:common-noun "animal")
  :realization (:common-noun name))
(def-synonym animal (:noun "fauna"))
;; "animal, vegitable, mineral" as they said in grade school

(define-category vertebrate
  :specializes animal
  :bindings (uid "NCIT:C14282")
  :realization (:noun "vertebrate"))

(define-category fish
 :specializes vertebrate ;; this excludes shellfish, etc
 :realization (:common-noun "fish")) ;/// plural?

(define-category bird
 :specializes vertebrate
 :realization (:common-noun "bird" :adj "avian"))
(def-synonym bird (:noun "aves"))

(define-category amphibian
 :specializes vertebrate
 :realization (:common-noun "amphibian"))

;; relevant for coqui motif -- not sure whether adding coqui would interfere with 
(define-category frog
    :specializes amphibian 
    :bindings (uid "NCIT:C14265")
    :realization (:common-noun "frog"))

;;//// , reptiles, dinosaurs, ...

(define-category insect
    :specializes animal
    :bindings (uid "NCIT:C14227")
    :realization (:common-noun "insect"))

(define-category nematode
    :specializes animal
    :bindings (uid "NCIT:C14248")
    :realization (:common-noun "nematode"))
(def-synonym nematode (:noun "round worm")) 

(define-category mammal
  :specializes vertebrate
  :realization
    (:noun "mammal"
     :adj "mammalian"))
(def-synonym mammal (:noun "mammalia")) ;; add plural mammalians?

(define-category metazoa
  :specializes organism
  :documentation "Unicellular aquatic protists that sometimes form colonies"
  :realization  (:noun "metazoa" :adj "metazoan"))

(define-category fungus
 :specializes eukaryote ;; fungi are not animals
 :bindings (uid "NCIT:C14209") ;; "BTO:0001494"
 :realization (:common-noun ("fungus" :plural ("fungi" "funguses"))))

(define-category microorganism
  :specializes organism 
  :instantiates self
  :bindings (uid "NCIT:C14329")
  :realization (:noun "microorganism"))
(def-synonym mammal (:noun "microbe")) 

  (define-category infectious-agent :specializes organism
                   :bindings (uid "NCIT:C14316")
  :documentation "Groups small things that could inherit directly
    from organism but this provides an inferential hook
    for 'they are bad for you'")

(define-category parasite
  :specializes infectious-agent 
  :instantiates self
  :bindings (uid "NCIT:C28176")
  :realization (:noun "parasite"))

(define-category virus
    :specializes infectious-agent ;; either this or microorganism should probably be mixin?
  :instantiates self 
  :lemma (:common-noun "virus" :adjective "viral")
  :realization (:common-noun name ))
(def-synonym virus (:noun "virion"))

(define-category bacterium
    :specializes infectious-agent ;; either this or microorganism should probably be mixin?
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun ("bacterium" :plural "bacteria")
                       :adjective "bacterial")
  :realization (:common-noun name))

(define-category primate
 :specializes mammal
 :bindings (uid "NCIT:C14262")
 :realization (:noun ("primate")))

(noun homo-sapiens :noun "homo sapiens" :super species)

(define-category human
 :specializes primate
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

;; life stages
(define-category juvenile :specializes animal
                 :bindings (uid "BTO:0002168")
                 :realization (:noun "juvenile"))
(define-category pup :specializes juvenile ;; maybe make mammal mixin or vice versa
                 :bindings (uid "BTO:0004377") 
                 :realization (:noun "pup"))
(define-category neonate :specializes juvenile ;; maybe make mammal mixin or vice versa
                 :bindings (uid "BTO:0001762") 
                 :realization (:noun "neonate" :adj "neonatal"))
(define-category larva :specializes animal ;; can be non-insect, is pre-juvenile
                 :bindings (uid "BTO:0000707")
                 :realization (:noun ("larva" :plural ("larvae" "larvas"))
                                      :adj "larval"))
;; maybe add baby, infant, toddler, adolescent/teenager, and maybe
;; mixin things like juvenile for boy/girl in core/people/kinds
;; also maybe tadpole, fledgling, puppy, kitten

;; kinds/classes of organism

;;;-------------------
;;; organisms with IDs
;;;-------------------

(def-indiv-with-id microorganism "amoeba" "NCIT:C119581" :name "amoeba" :plural ("amoebas" "amoebae"))

;; strictly speaking they are nematodes.
;; most of them are hermaphrodites, which would be a gender
(def-indiv-with-id nematode "Caenorhabditis elegans" "TI:6239" :synonyms ("C. elegans"))

(def-indiv-with-id insect "drosophila" "NCIT:C14202" :synonyms ("fruit fly"))
(def-indiv-with-id insect "firefly" "NCIT:C61008" :name "lampyridae") 
(def-indiv-with-id amphibian "xenopus" "NCIT:C14285") 
(def-indiv-with-id fish "zebrafish" "NCIT:C14287")

(def-indiv-with-id mammal "armadillo" "NCIT:C14185" :name "armadillo") 
(def-indiv-with-id mammal "bat" "TI:9397" :name "chiroptera")
(def-indiv-with-id mammal "goat" "NCIT:C14210" :adj "caprine")
(def-indiv-with-id mammal "Rabbit" "NCIT:C14264" :name "rabbit") 
(def-indiv-with-id mammal "bovine" "NCIT:C14192" :name "cow") 
(def-indiv-with-id mammal "equine" "NCIT:C14222" :name "horse") 
(def-indiv-with-id mammal "porcine" "NCIT:C14280" :name "pig" :synonyms ("swine"))
(def-indiv-with-id mammal "ovine" "NCIT:C14273" :name "sheep")
;; several breeds are in bio;new-defs:new-organisms


(define-category rodent
 :specializes mammal
 :instantiates self
 :bindings (uid "NCIT:C14270")
 :realization (:noun ("rodent" "rodentia")))

(define-category mouse
 :specializes rodent
 :instantiates self
 :bindings (uid "NCIT:C14225")
 :realization (:noun ("mouse" :plural "mice")
               :adj "murine")
 :documentation "'murine refers to an engineered cell line derived from a particular
   mouse tissue")
(def-synonym mouse (:noun "mus")) ;; genus
(noun "Ad5-hDPP4" :super mouse) ;;no uid - developed for MERS virus research
;; other mouse strains in bio;new-defs:new-organisms

(define-category rat
 :specializes rodent
 :instantiates self
 :bindings (uid "NCIT:C14266")
 :realization (:noun "rat"))
(def-synonym rat (:noun "rattus")) ;; genus
;; specific rat strains in bio;new-defs:new-organisms

(def-indiv-with-id rodent "guinea pig" "TI:10141")  
(def-indiv-with-id rodent "hamster" "NCIT:C14212" :name "hamster") 
(def-indiv-with-id rodent "gerbil" "NCIT:C77807" :name "gerbil") 
(def-indiv-with-id rodent "woodchuck" "NCIT:C124252" :name "eastern woodchuck") 
(def-indiv-with-id rodent "chinchilla" "NCIT:C91815" :name "chinchilla") 

(def-indiv-with-id mammal "feline" "NCIT:C14191" :name "cat")
(define-category dog
 :specializes mammal
 :instantiates self
 :bindings (uid "NCIT:C14201")
 :realization (:noun "dog"))
(def-synonym dog (:noun "canine"))
(def-indiv-with-id dog "Yorkie" "NCIT:C53946" :name "yorkshire terrier") 
(def-indiv-with-id dog "Doberman" "NCIT:C53767" :name "doberman pinscher") 
(def-indiv-with-id dog "Pekingese" "NCIT:C53940" :name "pekingese") 
(def-indiv-with-id dog "malamute" "NCIT:C53760" :name "alaskan malamute") 
(def-indiv-with-id dog "Rottweiler" "NCIT:C53775" :name "rottweiler") 
(def-indiv-with-id dog "Weimaraner" "NCIT:C53891" :name "weimaraner")
(def-indiv-with-id dog "coonhound" "NCIT:C53921" :name "black and tan coonhound") 
(def-indiv-with-id dog "papillon" "NCIT:C53939" :name "papillon") 
(def-indiv-with-id dog "beagle" "NCIT:C53897" :name "beagle") 

;; some other dog breeds that conflict with locations/demonyms are in bio;new-defs:new-organisms
;; newfoundland, chihuahua, pyrenees, lab, brittany

(def-indiv-with-id primate "chimpanzee" "NCIT:C14297" :name "chimpanzee") 
(def-indiv-with-id primate "Macaca" "NCIT:C14231" :name "macaque" :synonyms ("macacus")) 
(def-indiv-with-id primate "Papio" "NCIT:C14252" :name "baboon")
(def-indiv-with-id primate "Cercopithecidae" "NCIT:C161029" :name "old world monkey") 


(def-indiv-with-id fungus "Saccharomyces cerevisiae" "NCIT:C14271"
  :synonyms ("saccharomyces" "yeast" "S. cerevisiae"))

;; some of these confound the genus/common name with the most prominent species
(def-indiv-with-id plant "clover" "NCIT:C74321" :name "clover" :synonyms ("trifolium pratense")) 
(def-indiv-with-id plant "liverwort" "NCIT:C72334" :name "hepatica triloba") 
(def-indiv-with-id plant "Scutellaria" "NCIT:C74304" :name "scutellaria") 
(def-indiv-with-id plant "aloe" "NCIT:C65225" :name "aloe vera") 
(def-indiv-with-id plant "allium" "NCIT:C73974" :name "allium") 
(def-indiv-with-id plant "ginseng" "NCIT:C91401" :name "ginseng plant") 
(def-indiv-with-id plant "coneflower" "NCIT:C54160" :name "echinacea") 
(def-indiv-with-id plant "crampbark" "NCIT:C72466" :name "viburnum opulus") 
(def-indiv-with-id plant "figwort" "NCIT:C72438" :name "scrophularia nodosa") 
(def-indiv-with-id plant "ribgrass" "NCIT:C72477" :name "plantago lanceolata") 
(def-indiv-with-id plant "spurges" "NCIT:C72508" :name "euphorbia kansui") 
(def-indiv-with-id plant "mugwort" "NCIT:C72251" :name "artemisia vulgaris") 
(def-indiv-with-id plant "knotgrass" "NCIT:C74495" :name "paspalum distichum") 
(def-indiv-with-id plant "neem" "NCIT:C72259" :name "azadirachta indica") 
(def-indiv-with-id plant "bergamot" "NCIT:C72537" :name "monarda didyma") 
(def-indiv-with-id plant "lappa" "NCIT:C74313" :name "arctium lappa") 
(def-indiv-with-id plant "Citronella" "NCIT:C72498" :name "collinsonia canadensis") 
(def-indiv-with-id plant "Catnip" "NCIT:C73978" :name "nepeta cataria") 
(def-indiv-with-id plant "Juniperus" "NCIT:C74315" :name "juniperus communis" :synonyms ("juniper"))
(def-indiv-with-id plant "Kudzu" "NCIT:C73971" :name "pueraria montana var. lobata") 
(def-indiv-with-id plant "Pueraria" "NCIT:C73971" :name "pueraria montana var. lobata") 
(def-indiv-with-id plant "Ginkgo" "NCIT:C93305" :name "ginkgo biloba")
(def-indiv-with-id plant "JASMINE" "NCIT:C73955" :name "jasminum officinale") 


;;/// don't know what to do with this. We have a "strain of xx",
;; which is sort of like saying some people are Europeans, or French.
;; Needs to be thought through when it comes time to think about these.
(define-category strain
  :specializes organism ;; biological variant - may want to change how this is implemented 
  :instantiates self
  :bindings (uid "NCIT:C14419")
  :lemma (:common-noun "strain")
  :realization (:common-noun name))

;; other types of organisms
(define-category chimera
  :specializes organism ;; biological variant - may want to change how this is implemented 
  :instantiates self
  :bindings (uid "NCIT:C14194")
  :lemma (:common-noun "chimera")
  :realization (:common-noun name))

(define-category gmo
  :specializes organism ;; biological variant - may want to change how this is implemented 
  :instantiates self
  :bindings (uid "NCIT:C97158")
  :realization (:noun "genetically modified organism"))
(def-synonym gmo (:noun "GMO"))

(define-category mdro
  :specializes infectious-agent ;; biological variant - may want to change how this is implemented 
  :instantiates self
  :bindings (uid "NCIT:C111564")
  :realization (:noun "multi-drug resistant organism"))
(def-synonym mdro (:noun "MDRO"))

;; collection of microorganisms
(define-category microbiome
  :specializes microorganism 
  :bindings (uid "NCIT:C68564")
  :realization (:noun "microbiome"))

(def-indiv-with-id microbiome "microflora" "NCIT:C93019" :name "intestinal flora"
                   :synonyms ("gut flora" "gut microbiome"))
(def-indiv-with-id microbiome "mycobiome" "NCIT:C128180" :name "mycobiome") 
