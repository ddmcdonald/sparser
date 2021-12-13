;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-molecules"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; broken out from molecules and new-defs/new-molecules

;;;-------------------
;;; types and variants
;;;-------------------

(noun "chemical product" :super bio-chemical-entity)
(noun "carcinogen" :super bio-agent)
(noun "neurotoxin" :super bio-agent)

(noun "agonist":super molecule) ;; keyword: (ist N) ;;
(def-indiv-with-id molecule "antagonist" "CHEBI:48706" :name "antagonist") 
(noun "mitogen" :super molecule)


;;In biochemistry, a protein ligand is an atom, a molecule or an ion that can bind to a specific site (the binding site) on a protein. 
(noun "ligand" :super bio-chemical-entity)

(define-category substrate :specializes bio-chemical-entity
      :binds ((enzyme protein))
  :realization
  (:noun "substrate"
         :of enzyme
         :for enzyme))

;; subatomic!!
(def-indiv-with-id bio-chemical-entity "electron" "CHEBI:10545" :name "electron") 
(def-indiv-with-id bio-chemical-entity "proton" "PUBCHEM:783") 

;;;-------------
;;; nucleobases
;;;-------------

(def-indiv-with-id nucleobase "adenine" "CHEBI:16708")
(def-indiv-with-id nucleobase "cytosine" "CHEBI:16040")
(def-indiv-with-id nucleobase "guanine" "CHEBI:16235")
(def-indiv-with-id nucleobase "thymine" "CHEBI:17821")
(def-indiv-with-id nucleobase "uracil" "CHEBI:17568")

;; *maybe* add ATP, GTP nucleotides? but all the related ones could be more problematic

;;;-------------
;;; miscellaneous
;;;-------------

(noun "acid" :super molecule) ;; could be in more of a hierarchy and have things under it, but at least this replaces the spurious definition we previously had where we had it as just a synonym "acotinic acid"
(noun "dextran" :super polysaccharide)
(noun "alcohol" :super molecule)


(define-category sugar :specializes carbohydrate
                 :bindings (uid "PUBCHEM:5988")
                 :realization (:noun "sugar"))

(define-category salt :specializes molecule
                 :realization (:noun "salt"))

(def-indiv-with-id ion "anion" "CHEBI:22563" :name "anion") 
(def-indiv-with-id ion "cation" "CHEBI:36916" :name "cation") 

(define-category hormone :specializes molecule
                 :bindings (uid "CHEBI:24621")
                 :realization (:noun "hormone"))
(def-indiv-with-id molecule "antioxidant" "CHEBI:22586" :name "antioxidant") 

(def-indiv-with-id molecule "steroid" "CHEBI:35341" :name "steroid")

(def-indiv-with-id molecule "oligonucleotide" "CHEBI:7754" :name "oligonucleotide" :synonyms ("oligo")) ;; this short form occurs in papers, e.g., "oligos directed against USP15"
(def-indiv-with-id molecule "neurotransmitter" "CHEBI:25512" :name "neurotransmitter")
(def-indiv-with-id molecule "fatty-acid" "CHEBI:35366" :name "fatty acid")
(def-indiv-with-id molecule "cofactor" "CHEBI:23357" :name "cofactor") 
(def-indiv-with-id molecule "coenzyme" "CHEBI:23354" :name "coenzyme") 

(def-indiv-with-id molecule "filler" "CHEBI:78004" :name "food bulking agent") 
(def-indiv-with-id molecule "modifier" "NCIT:C1932" :name "chemical modifier") 
(def-indiv-with-id molecule "mixture" "CHEBI:60004" :name "mixture")
(def-indiv-with-id molecule "emulsifier" "CHEBI:63046" :name "emulsifier") 

(def-indiv-with-id molecule "Glass" "CHEBI:131189" :name "glass")

(def-indiv-with-id molecule "nanorod" "CHEBI:50805" :name "nanorod") 
(def-indiv-with-id molecule "nanoparticle" "CHEBI:50803" :name "nanoparticle")
(def-indiv-with-id molecule "nanocrystal" "CHEBI:52529" :name "nanocrystal")
(def-indiv-with-id molecule "nanotube" "CHEBI:50796" :name "nanotube")
(def-indiv-with-id molecule "nanosheet" "CHEBI:52531" :name "nanosheet") 
(def-indiv-with-id molecule "nanostructure" "CHEBI:50795" :name "nanostructure") 
(def-indiv-with-id molecule "nanoshell" "CHEBI:50804" :name "nanoshell") 
(def-indiv-with-id molecule "nanofiber" "CHEBI:52518" :name "nanofibre") 
(def-indiv-with-id molecule "Nanowire" "CHEBI:52593" :name "nanowire") 


(def-indiv-with-id molecule "macromolecule" "CHEBI:33839" :name "macromolecule")
(def-indiv-with-id molecule "metabolite" "CHEBI:25212" :name "metabolite")
(def-indiv-with-id molecule "biomarker" "CHEBI:59163" :name "biomarker")
(def-indiv-with-id molecule "Food" "CHEBI:33290" :name "food") 
(def-indiv-with-id molecule "Nutrient" "CHEBI:33284" :name "nutrient") 
(def-indiv-with-id molecule "micronutrient" "CHEBI:27027" :name "micronutrient")
(def-indiv-with-id molecule "macronutrient" "CHEBI:33937" :name "macronutrient")
(def-indiv-with-id carbohydrate "starch" "CHEBI:28017" :name "starch") 


(def-indiv-with-id molecule "plasticiser" "CHEBI:79056" :name "plasticiser" :synonyms ("plasticizer"))
(def-indiv-with-id molecule "allergen" "CHEBI:50904" :name "allergen")
(def-indiv-with-id molecule "antigen" "CHEBI:59132" :name "antigen") 
(def-indiv-with-id molecule "sensitizers" "CHEBI:139492" :name "sensitiser") 

(def-indiv-with-id molecule "bactericide" "CHEBI:33282" :name "antibacterial agent") 
(def-indiv-with-id molecule "pesticide" "CHEBI:25944" :name "pesticide")
(def-indiv-with-id molecule "microbicide" "CHEBI:33281" :name "antimicrobial agent")
(def-indiv-with-id molecule "Rodenticide" "CHEBI:33288" :name "rodenticide")
(def-indiv-with-id molecule "nematicide" "CHEBI:25491" :name "nematicide") 

(def-indiv-with-id molecule "fumigant" "CHEBI:39276" :name "fumigant") 

;(def-indiv-with-id molecule "toxin" "CHEBI:27026" :name "toxin")
(def-indiv-with-id molecule "poison" "CHEBI:64909" :name "poison")
(def-indiv-with-id molecule "teratogen" "NCIT:C859" :name "teratogen")
(def-indiv-with-id molecule "mutagen" "CHEBI:25435" :name "mutagen") 
(def-indiv-with-id toxin "hepatotoxin" "CHEBI:50908" :name "hepatotoxic agent") 

(def-indiv-with-id molecule "oxidant" "CHEBI:63248" :name "oxidising agent" :synonyms ("oxidizer" "oxidiser"))
(def-indiv-with-id molecule "reductant" "CHEBI:63247" :name "reducing agent") 
(def-indiv-with-id molecule "reagent" "CHEBI:33893" :name "reagent") 
(def-indiv-with-id molecule "detergent" "CHEBI:27780" :name "detergent") 

(def-indiv-with-id molecule "surfactant" "CHEBI:35195" :name "surfactant")
(def-indiv-with-id molecule "stabilizer" "CHEBI:77966" :name "food stabiliser") 
(def-indiv-with-id molecule "solvent" "CHEBI:46787" :name "solvent") 
(def-indiv-with-id molecule "silica" "NCIT:C29853" :name "silica") 
(def-indiv-with-id molecule "wax" "CHEBI:73702" :name "wax")
(def-indiv-with-id molecule "tracer" "CHEBI:35204" :name "tracer")
(def-indiv-with-id molecule "free-radical" "CHEBI:26519" :name "radical") 


;;;-------------
;;; acids
;;;-------------
(def-indiv-with-id acid "citrate" "CHEBI:30769" :name "citric acid")
(def-indiv-with-id molecule "lactic acid" "PUBCHEM:107689") 
(def-indiv-with-id molecule "uric acid" "PUBCHEM:1175") 
(def-indiv-with-id molecule "butyric acid" "PUBCHEM:264") 
(def-indiv-with-id molecule "oleic acid" "PUBCHEM:445639") 




;;;-------------
;;; elements
;;;-------------
(def-indiv-with-id molecule "Nitrogen" "CHEBI:25555" :name "nitrogen atom")
(def-indiv-with-id molecule "Oxygen" "CHEBI:25805" :name "oxygen atom")
(def-indiv-with-id molecule "selenium" "CHEBI:27568" :name "selenium atom") 
(def-indiv-with-id molecule "Silver" "CHEBI:9141" :name "silver(0)") 
(def-indiv-with-id molecule "iodine" "PUBCHEM:807")
(def-indiv-with-id molecule "gold" "PUBCHEM:46878529")
(def-indiv-with-id molecule "silicon" "PUBCHEM:4082203") 
(def-indiv-with-id molecule "gallium" "CHEBI:49631" :name "gallium atom") 
(def-indiv-with-id molecule "iron" "CHEBI:18248" :synonyms ("PUBCHEM:23925"))
(def-indiv-with-id molecule "Ruthenium" "CHEBI:30682" :name "ruthenium atom") 
(def-indiv-with-id molecule "samarium" "CHEBI:33374" :name "samarium atom")
(def-indiv-with-id molecule "neodymium" "CHEBI:33372" :name "neodymium atom") 
(def-indiv-with-id molecule "vanadium" "PUBCHEM:23990") 
(def-indiv-with-id molecule "copper" "CHEBI:28694" :name "copper atom") 
(def-indiv-with-id molecule "Hydrogen" "CHEBI:49637" :name "hydrogen atom") 

(def-indiv-with-id molecule "Cl" "CHEBI:23116" :name "Chlorine atom" :synonyms ("chlorine") :maintain-case t)

(def-indiv-with-id molecule "cobalt" "CHEBI:27638" :name "cobalt atom") 
(def-indiv-with-id molecule "cadmium" "NCIT:C44348" :name "cadmium")
(def-indiv-with-id molecule "Germanium" "CHEBI:30441" :name "germanium atom") 
(def-indiv-with-id molecule "Ni" "NCIT:C690" :name "nickel" :maintain-case t) 
(def-indiv-with-id molecule "phosphor" "CHEBI:28659" :name "phosphorus" :synonyms ("phosphorus atom"))
(def-indiv-with-id molecule "tin" "CHEBI:27007" :name "tin atom")
(def-indiv-with-id molecule "zinc" "CHEBI:27363" :name "zinc atom")
(def-indiv-with-id molecule "lanthanum" "CHEBI:33336" :name "lanthanum atom")
(def-indiv-with-id molecule "helium" "CHEBI:30217" :name "helium atom") 
(def-indiv-with-id molecule "radium" "CHEBI:33325" :name "radium atom") 
(def-indiv-with-id molecule "Na" "CHEBI:26708" :name "sodium atom" :synonyms ("sodium") :maintain-case t)
(def-indiv-with-id molecule "Technetium" "CHEBI:33353" :name "technetium atom") 
(def-indiv-with-id molecule "arsenic" "CHEBI:27563" :name "arsenic atom") 
(def-indiv-with-id molecule "boron" "CHEBI:33609" :name "elemental boron") 
(def-indiv-with-id molecule "fluor" "CHEBI:24061" :name "fluorine atom" :synonyms ("fluorine")) 
(def-indiv-with-id molecule "indium" "CHEBI:30430" :name "indium atom") 
(def-indiv-with-id molecule "osmium" "CHEBI:30687" :name "osmium atom")
(def-indiv-with-id molecule "rhenium" "CHEBI:49882" :name "rhenium atom") 
(def-indiv-with-id molecule "sulphur" "CHEBI:26833" :name "sulfur") 
(def-indiv-with-id molecule "strontium" "CHEBI:33324" :name "strontium atom") 
(def-indiv-with-id molecule "platinum" "CHEBI:33364" :name "platinum") 
(def-indiv-with-id molecule "Cesium" "CHEBI:30514" :name "caesium atom") 
(def-indiv-with-id molecule "Mn" "CHEBI:29035" :name "manganese" :maintain-case t :synonyms ("manganese" "PUBCHEM:27854")) ;; actually this is the Mn2+ ion but HMS says this is the mapping for "Mn"
(def-indiv-with-id molecule "molybdenum" "CHEBI:28685" :name "molybdenum atom") 
(def-indiv-with-id molecule "Pb" "CHEBI:25016" :maintain-case t :name "lead atom" :synonyms ("lead"))
(def-indiv-with-id molecule "niobium" "CHEBI:33344" :name "niobium atom") 
(def-indiv-with-id molecule "polonium" "CHEBI:33313" :name "polonium atom") 
(def-indiv-with-id molecule "neon" "CHEBI:33310" :name "neon atom") 
(def-indiv-with-id molecule "krypton" "CHEBI:49696" :name "krypton atom") 
(def-indiv-with-id molecule "rhodium" "CHEBI:33359" :name "rhodium atom") 
(def-indiv-with-id molecule "Xenon" "CHEBI:49957" :name "xenon atom") 
(def-indiv-with-id molecule "mercury" "CHEBI:25195" :name "mercury atom") ;"PUBCHEM:26623"
(def-indiv-with-id molecule "palladium" "CHEBI:33363" :name "palladium") 
(def-indiv-with-id molecule "gadolinium" "CHEBI:33375" :name "gadolinium atom") 
(def-indiv-with-id molecule "holmium" "CHEBI:49648" :name "holmium atom") 
(def-indiv-with-id molecule "praseodymium" "CHEBI:49828" :name "praseodymium atom")(def-indiv-with-id molecule "yttrium" "CHEBI:33331" :name "yttrium atom")
(def-indiv-with-id molecule "titanium" "CHEBI:33341" :name "titanium atom") 
(def-indiv-with-id molecule "hafnium" "CHEBI:33343" :name "hafnium atom") 
(def-indiv-with-id molecule "europium" "CHEBI:32999" :name "europium atom") 
(def-indiv-with-id molecule "chromium" "CHEBI:28073" :name "chromium atom") 
(def-indiv-with-id molecule "Scandium" "CHEBI:33330" :name "scandium atom") 
(def-indiv-with-id molecule "potassium" "CHEBI:26216" :name "potassium atom") 
(def-indiv-with-id molecule "Scandium" "CHEBI:33330" :name "scandium atom") 
(def-indiv-with-id molecule "Magnesium" "CHEBI:25107" :name "Magnesium atom") 
(def-indiv-with-id molecule "aluminum" "CHEBI:28984" :name "aluminum atom" :synonyms ("aluminium")) 



;;;-------------
;;; hormones
;;;-------------
(def-indiv-with-id hormone "testosterone" "CHEBI:17347" :name "testosterone")
(def-indiv-with-id molecule "androgen" "CHEBI:50113" :name "androgen") 
(def-indiv-with-id molecule "corticosteroid" "CHEBI:50858" :name "corticosteroid") 
(def-indiv-with-id molecule "oestrogen" "CHEBI:50114" :name "estrogen")
(def-indiv-with-id molecule "corticosterone" "CHEBI:16827" :name "corticosterone")
(def-indiv-with-id molecule "Glucocorticoid" "CHEBI:24261" :name "glucocorticoid")
(def-indiv-with-id molecule "aldosterone" "CHEBI:27584" :name "aldosterone") 
(def-indiv-with-id molecule "progestagens" "CHEBI:50745" :name "progestogen") 
(def-indiv-with-id molecule "progesterone" "CHEBI:17026" :synonyms ("progesteron"))
(def-indiv-with-id molecule "retroid" "CHEBI:135458" :name "trengestone") 
(def-indiv-with-id molecule "prostaglandin" "CHEBI:26333" :name "prostaglandin") 
(def-indiv-with-id molecule "epinephrine" "PUBCHEM:5816" :name "adrenaline") 

;;neurotransmitters

(def-indiv-with-id molecule "serotonin" "CHEBI:28790" :name "serotonin") 
(def-indiv-with-id molecule "noradrenaline" "CHEBI:33569" :name "norepinephrine") 
(def-indiv-with-id molecule "GABA" "CHEBI:16865" :name "gamma-aminobutyric acid")
(def-indiv-with-id molecule "glutamate" "CHEBI:29987" :name "glutamate(2-)") 
(def-indiv-with-id drug "dopamine" "CHEBI:18243" :name "dopamine" :no-plural t) 
(def-indiv-with-id drug "norepinephrine" "NCIT:C62098" :name "norepinephrine base")(def-indiv-with-id drug "acetylcholine" "NCIT:C77840" :name "acetylcholine") 

;;;-------------
;;; miscellaneous with IDs
;;;-------------
(def-indiv-with-id molecule "H2O" "CHEBI:15377" :name "water") 
(def-indiv-with-id molecule "ice" "NCIT:C67342" :name "ice") ;; ought to be connected to water somehow...

(def-indiv-with-id molecule "carbon monoxide" "PUBCHEM:281")
(def-indiv-with-id molecule "carbon dioxide" "PUBCHEM:280") 
(def-indiv-with-id molecule "nitric oxide" "PUBCHEM:145068")
(def-indiv-with-id molecule "xenobiotic" "CHEBI:35703" :name "xenobiotic") 
(def-indiv-with-id molecule "urea" "CHEBI:16199" :name "urea")

(def-indiv-with-id molecule "melanin" "CHEBI:89634" :name "Melanin")
(def-indiv-with-id polysaccharide "glycogen" "CHEBI:28087" :name "glycogen") 
(def-indiv-with-id polysaccharide "chitin" "CHEBI:17029" :name "chitin") 
(def-indiv-with-id polysaccharide "pectin" "CHEBI:17309" :name "pectin") 

(def-indiv-with-id molecule "endotoxin" "NCIT:C50918" :name "endotoxin")
(def-indiv-with-id molecule "cannabinoid" "CHEBI:67194" :name "cannabinoid") 
(def-indiv-with-id molecule "endocannabinoid" "CHEBI:67197" :name "endocannabinoid") 
(def-indiv-with-id molecule "catecholamine" "CHEBI:33567" :name "catecholamine")
(def-indiv-with-id molecule "adenosine" "CHEBI:16335" :name "adenosine")
(def-indiv-with-id molecule "haemoglobin" "CHEBI:35143" :name "hemoglobin")
(def-indiv-with-id molecule "thyroxine" "CHEBI:30660" :name "thyroxine") 
(def-indiv-with-id molecule "carotenoid" "CHEBI:23044" :name "carotenoid") 
(def-indiv-with-id molecule "carotene" "CHEBI:23042" :name "carotene") 
(def-indiv-with-id molecule "taurine" "CHEBI:15891" :name "taurine") 
(def-indiv-with-id molecule "glucosamine" "CHEBI:5417" :name "glucosamine")
(def-indiv-with-id molecule "beta-carotene" "PUBCHEM:5280489") 


(def-indiv-with-id molecule "provitamin" "CHEBI:50188" :name "provitamin") 
(def-indiv-with-id molecule "prostratin" "CHEBI:69818" :name "prostratin")
(def-indiv-with-id molecule "prohormone" "CHEBI:71212" :name "prohormone") 

(def-indiv-with-id molecule "hydrocarbon" "CHEBI:24632" :name "hydrocarbon") 
(def-indiv-with-id molecule "aldehyde" "CHEBI:17478" :name "aldehyde")
(def-indiv-with-id molecule "alkaloid" "CHEBI:22315" :name "alkaloid")
(def-indiv-with-id molecule "alkyne" "CHEBI:22339" :name "alkyne") 
(def-indiv-with-id molecule "alkene" "CHEBI:32878" :name "alkene") 
(def-indiv-with-id molecule "ketone" "CHEBI:17087" :name "ketone")
(def-indiv-with-id molecule "methane" "CHEBI:16183" :name "methane")
(def-indiv-with-id molecule "ethane" "CHEBI:42266" :name "ethane")
(def-indiv-with-id molecule "pentane" "MESH:C033353" :name "pentane") 
(def-indiv-with-id molecule "hexane" "CHEBI:29021" :name "hexane")
(def-indiv-with-id molecule "heptan" "CHEBI:43098" :name "heptane") 
(def-indiv-with-id molecule "benzene" "NCIT:C302" :name "benzene") 
(def-indiv-with-id molecule "propan" "CHEBI:32879" :name "propane")
(def-indiv-with-id molecule "HCCH" "CHEBI:27518" :name "acetylene") 

;; solvents
(def-indiv-with-id molecule "acetone" "CHEBI:15347" :name "acetone") 
(def-indiv-with-id molecule "methanol" "CHEBI:17790" :name "methanol") 
(def-indiv-with-id molecule "EtOH" "CHEBI:16236" :name "ethanol")
(def-indiv-with-id molecule "toluene" "CHEBI:17578" :name "toluene")
(def-indiv-with-id molecule "urethane" "NCIT:C920" :name "urethane") 
(def-indiv-with-id molecule "hydrogen peroxide" "CHEBI:16240" :name "hydrogen peroxide")
(def-indiv-with-id molecule "terpene" "CHEBI:35186" :name "terpene") 


;;sugars
(def-indiv-with-id carbohydrate "oligosaccharide" "CHEBI:50699" :name "oligosaccharide")
(def-indiv-with-id carbohydrate "dextrin" "CHEBI:28675" :name "dextrin") 
(def-indiv-with-id sugar "monosaccharide" "CHEBI:35381" :name "monosaccharide") 
(def-indiv-with-id sugar "Glucose" "CHEBI:17234" :name "glucose")
(def-indiv-with-id sugar "fructose" "CHEBI:28757" :name "fructose")
(def-indiv-with-id sugar "pentose" "CHEBI:25901" :name "pentose")
(def-indiv-with-id sugar "ribose" "CHEBI:33942" :name "ribose")
(def-indiv-with-id sugar "disaccharide" "CHEBI:36233" :name "disaccharide") 
(def-indiv-with-id sugar "sucrose" "CHEBI:17992" :name "sucrose" :synonyms ("table sugar" "granulated sugar")) 
(def-indiv-with-id sugar "maltose" "CHEBI:17306" :name "maltose") 
(def-indiv-with-id sugar "lactose" "CHEBI:17716" :name "lactose")
(def-indiv-with-id sugar "sorbitol" "PUBCHEM:5780") 
;; sweetener/sweetening agent
(def-indiv-with-id molecule "rebaudioside A" "CHEBI:145012" :name "stevia") 
(def-indiv-with-id molecule "aspartame" "CHEBI:2877" :name "aspartame") 


(def-indiv-with-id molecule "Cinnamaldehyde" "CHEBI:16731" :name "cinnamaldehyde")
(def-indiv-with-id molecule "amine" "CHEBI:32952" :name "amine") 
(def-indiv-with-id molecule "lutein" "CHEBI:28838" :name "lutein")
(def-indiv-with-id molecule "lycopene" "PUBCHEM:446925") 

(def-indiv-with-id molecule "neoprene" "NCIT:C44356" :name "chloroprene")
(def-indiv-with-id molecule "isoprene" "PUBCHEM:6557")
(def-indiv-with-id molecule "graphene" "CHEBI:36973" :name "graphene")
(def-indiv-with-id molecule "silicone" "CHEBI:48140" :name "silicone macromolecule")
(def-indiv-with-id molecule "vinyl" "CHEBI:37603" :name "vinyl group") 

(def-indiv-with-id molecule "Sulfide" "CHEBI:26822" :name "sulfide") 

(def-indiv-with-id molecule "phosphate" "CHEBI:26020" :name "phosphate")
(def-indiv-with-id molecule "choline" "CHEBI:15354" :name "choline") 
(def-indiv-with-id molecule "ceramide" "CHEBI:17761" :name "ceramide")
(def-indiv-with-id molecule "anthocyanin" "CHEBI:35218" :name "anthocyanin cation")
(def-indiv-with-id molecule "NO2" "CHEBI:16301" :name "nitrite") 
(def-indiv-with-id molecule "carrageenan" "CHEBI:3435" :name "carrageenan")

(def-indiv-with-id molecule "asbestos" "CHEBI:46661" :name "asbestos")
(def-indiv-with-id molecule "ammonium" "CHEBI:28938" :name "ammonium")
(def-indiv-with-id molecule "NH3" "CHEBI:16134" :name "ammonia") 
(def-indiv-with-id molecule "NaOH" "CHEBI:32145" :name "sodium hydroxide" :maintain-case t :synonyms ("lye")) 
(def-indiv-with-id molecule "acetate" "CHEBI:30089" :name "acetate") 
(def-indiv-with-id polysaccharide "cellulose" "CHEBI:18246" :name "(1->4)-beta-D-glucan")
(def-indiv-with-id molecule "deuterium" "CHEBI:29237" :name "deuterium atom")
(def-indiv-with-id molecule "(3) H" "PUBCHEM:119434" :name "tritium" :synonyms ("[3H]"))
(def-indiv-with-id molecule "formate" "CHEBI:15740" :name "formate") 
(def-indiv-with-id molecule "formaldehyde" "NCIT:C29744" :name "formaldehyde") 
(def-indiv-with-id molecule "naphthalen" "CHEBI:16482" :name "naphthalene")
(def-indiv-with-id molecule "mycotoxin" "CHEBI:25442" :name "mycotoxin") 
(def-indiv-with-id molecule "azo" "CHEBI:30106" :name "azo group")
(def-indiv-with-id molecule "Sulfane" "CHEBI:16136" :name "hydrogen sulfide") 
(def-indiv-with-id molecule "TiO2" "CHEBI:32234" :name "titanium dioxide") 
(def-indiv-with-id molecule "Teflon" "CHEBI:53251" :name "poly(tetrafluoroethylene)") 
(def-indiv-with-id molecule "coumarin" "CHEBI:23403" :name "coumarin") 
(def-indiv-with-id molecule "bromide" "CHEBI:15858" :name "bromide") 
(def-indiv-with-id molecule "borate" "CHEBI:22908" :name "borate")
(def-indiv-with-id molecule "fluoride" "CHEBI:17051" :name "fluoride")
(def-indiv-with-id molecule "Alumina" "CHEBI:30187" :name "aluminium oxide") 


(def-indiv-with-id molecule "flavonol" "CHEBI:5078" :name "flavonol") 
(def-indiv-with-id molecule "flavin" "CHEBI:30527" :name "flavin") 
(def-indiv-with-id molecule "flavan" "CHEBI:38691" :name "flavan")

(def-indiv-with-id molecule "ether" "CHEBI:25698" :name "ether") 
(def-indiv-with-id molecule "ester" "CHEBI:35701" :name "ester") 
(def-indiv-with-id molecule "epoxy" "CHEBI:30721" :name "epoxy group")

(def-indiv-with-id molecule "iodide" "CHEBI:24858" :name "iodide salt")
(def-indiv-with-id molecule "inulin" "CHEBI:15443" :name "inulin")
(def-indiv-with-id molecule "monoamine" "CHEBI:63534" :name "monoamine")
(def-indiv-with-id molecule "polyethylene" "CHEBI:53226" :name "polyethylene macromolecule") 
(def-indiv-with-id molecule "palmitate" "CHEBI:7896" :name "hexadecanoate") 
(def-indiv-with-id molecule "ascorbate" "CHEBI:22651" :name "ascorbate") 
(def-indiv-with-id molecule "lactate" "CHEBI:24996") ;; posssibly more likely to be verb...

(def-indiv-with-id molecule "carboxylic acid" "CHEBI:33575" :synonyms ("COOH"))
(def-indiv-with-id molecule "AcOH" "CHEBI:15366" :name "acetic acid") ;;"PUBCHEM:176"
(def-indiv-with-id molecule "HCOOH" "CHEBI:30751" :name "formic acid");;"PUBCHEM:284"

(def-indiv-with-id molecule "HCl" "CHEBI:17883" :maintain-case t)
(def-indiv-with-id molecule "NaCl" "CHEBI:26710" :name "sodium chloride" :maintain-case t :synonyms ("Na-Cl" "table salt"))

(def-indiv-with-id molecule "Plexiglas" "CHEBI:61369" :name "poly(methyl methacrylate) polymer") 
(def-indiv-with-id molecule "naphtalene" "CHEBI:16482" :name "naphthalene") 
(def-indiv-with-id molecule "paraben" "CHEBI:85122" :name "paraben") 
(def-indiv-with-id molecule "fluorocarbon" "CHEBI:38824" :name "fluorocarbon") 
(def-indiv-with-id molecule "Agar" "CHEBI:2509" :name "agar")
(def-indiv-with-id molecule "flouoride" "CHEBI:17051" :name "fluoride") 
(def-indiv-with-id molecule "floride" "CHEBI:17051" :name "fluoride") 
(def-indiv-with-id polysaccharide "lignin" "CHEBI:6457" :name "lignin") 
(def-indiv-with-id molecule "magnetite" "CHEBI:46726" :name "magnetite") 
(def-indiv-with-id molecule "lanthanide" "CHEBI:33319" :name "lanthanoid atom") ;; category

(def-indiv-with-id molecule "turmeric" "PUBCHEM:969516") 
(def-indiv-with-id molecule "silver nitrate" "PUBCHEM:24470") 
(def-indiv-with-id molecule "ozone" "PUBCHEM:24823") 
(def-indiv-with-id molecule "menthol" "PUBCHEM:1254") 
(def-indiv-with-id molecule "carob" "MESH:C017471" :name "locust bean gum")
(def-indiv-with-id molecule "vanillin" "MESH:C100058" :name "vanillin")
(def-indiv-with-id molecule "Glycerol" "CHEBI:17522" :name "glycerol") 

(def-indiv-with-id molecule "rayon" "MESH:C012024" :name "rayon, purified")
(def-indiv-with-id molecule "Styrofoam" "MESH:C024075" :name "styrofoam")
