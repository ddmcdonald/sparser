;; 0403-CUSTOM-PMC-8762 sample of unknown words
;; created 5/4/20 13:7:45

(in-package :sparser)

;; 36 extracted as unknown bio-entity

;; 55 defined as a bio-entity


(defparameter BIO-ENTITY-0403-CUSTOM-PMC-8762
    (remove-duplicates
      (append 
         (when (boundp 'BIO-ENTITY-0403-CUSTOM-PMC-8762) (symbol-value `BIO-ENTITY-0403-CUSTOM-PMC-8762))
         '(">10
million" "Ad5-hDPP4" "anti-inflammatory" "anti-SARS-CoV" "BALB/c" "BJ01" "CD3+CD4+" "CD3+CD8+" "CD8+" "CN101173275" "CN101942026" "CN1569233" "crown-like" "disorders/diseases" "FRhk-4" "IFN-α1b" "IgG2b" "inducing/enhancing" "infections/diseases" "INO-4800" "isolations/quarantines" "JP2007043942" "JP5971830" "KR2009128837" "mechanisms/dynamics" "MetIL-29C172S-PEG" "mg/kg" "MHV-A59" "pIC50" "rhIFN-ω" "rSIFN-co" "S protein/gene" "Sinotek-Advocates" "TMPRSS211" "transmissible/contagious" "virus-like" "WO2004096852" "WO2005023083" "WO200505824" "WO2005058815" "WO2005081716" "WO2005097165" "WO2009114512" "WO2010063685" "WO2011072487" "WO2013049382" "WO2014028756" "WO2015042373" "WO2015081155" "WO2016180335" "WO2017070626" "WO2017095875" "WO2018042343" "WO2018115527" "α-ketoamides" ))
    :test #'equalp))

;; 194 extracted by morphology


(defparameter *Morph-Words*
    (remove-duplicates
      (append 
         (when (boundp '*Morph-Words*) (symbol-value `*Morph-Words*))
         '("academic" "accepted" "administered" "administration" "admitted" "agreement" "aimed" "alignment" "altered" "alveolar" "announced" "antigenic" "antigenicity" "antitumor" "applicable" "approved" "arduous" "artificial" "assigned" "attention" "attracted" "available" "bacterial" "beginning" "bioengineered" "biologics" "bispecific" "bring" "cationic" "causative" "cervical" "citation" "claimed" "cleaved" "coalition" "coated" "collaboration" "collective" "combination" "commercialized" "community" "conceivably" "concerted" "condensed" "conducting" "contagious" "contractual" "convalescent" "costly" "coupled" "covering" "curated" "dendritic" "deployed" "designated" "designed" "devoted" "diagnosis" "diagnostic" "diagnostics" "disclosing" "discovered" "distribution" "document" "economic" "efficiency" "electronically" "elicitation" "emergent" "emulsion" "endoplasmic" "engineered" "entered" "epidemic" "epidemiological" "exemplified" "exhibited" "explored" "fixed" "focused" "formulated" "formulation" "fused" "fusion" "gastrointestinal" "global" "grabbing" "humanized" "humoral" "immunized" "immunogenic" "immunoreceptor" "indexed" "indicative" "indispensable" "industrial" "infectivity" "injected" "injection" "innovative" "inoculation" "intellectual" "intelligence" "intercellular" "international" "interstitial" "intracerebral" "intradermal" "introduction" "invention" "investigational" "investment" "journal" "lasting" "lengthened" "leveraging" "located" "management" "mandatory" "manufactured" "meeting" "minimal" "nervous" "neurodegenerative" "nonstructural" "notion" "nucleic" "officially" "opposed" "outlined" "overactivation" "overwhelming" "packaging" "pandemic" "partial" "pathogenic" "pertaining" "pertinent" "pharmaceutical" "planned" "polycyclic" "portion" "potency" "potential" "practical" "preferably" "preferred" "prefusion" "preventive" "progression" "prophylactic" "proprietary" "provoking" "public" "published" "racing" "reactivity" "reassuring" "reportedly" "representative" "repurposed" "respiratory" "restraining" "scientific" "scientist" "serious" "severity" "shipped" "specializing" "specificity" "specified" "speculated" "stranded" "studded" "subsequent" "subsidiary" "symptomatic" "synthesis" "transmissibility" "transmissible" "transmission" "trimeric" "trimerized" "uncovering" "underprepared" "undruggable" "united" "unwinding" "vaccinated" "vasoconstriction" "vasodilation" "vectored" "viability" "virulence" ))
    :test #'equalp))

;; 0 extracted with default mophology


(defparameter *Default-Morphology-Words*
    (remove-duplicates
      (append 
         (when (boundp '*Default-Morphology-Words*) (symbol-value `*Default-Morphology-Words*))
         '())
    :test #'equalp))

;; 220 extracted from Comlex


(defparameter *Comlex-Words*
    (remove-duplicates
      (append 
         (when (boundp '*Comlex-Words*) (symbol-value `*Comlex-Words*))
         '("abundance" "academy" "access" "acute" "address" "adjust" "advantage" "advantages" "advocate" "advocates" "allergy" "alleviate" "alpha" "amino" "appearance" "area" "areas" "article" "articles" "attack" "attacks" "author" "authorities" "authority" "authors" "balance" "basic" "batch" "began" "begin" "behave" "behaves" "belong" "belongs" "beta" "better" "biology" "body" "broaden" "campaign" "cattle" "chain" "clover" "column" "combine" "composition" "compositions" "compound" "compounds" "comprise" "consensus" "consortium" "criteria" "criterion" "cross" "crown" "delivery" "delta" "desire" "diagnose" "discover" "discovery" "dose" "dual" "due" "economy" "effort" "efforts" "electrolyte" "electrolytes" "element" "elements" "entrance" "epicenter" "epidemiology" "experience" "experiences" "failure" "far" "fingerprint" "fingerprints" "firm" "focus" "fund" "future" "gamma" "genus" "goal" "goals" "great" "greater" "groundwork" "gun" "halt" "healthcare" "heart" "help" "helper" "hybrid" "hybrids" "immediate" "immense" "inaccurate" "individual" "individuals" "industry" "infect" "innovation" "innovations" "institute" "intense" "interest" "investigator" "investigators" "late" "lengthy" "life" "live" "lives" "machinery" "main" "manage" "manifestation" "manifestations" "march" "market" "matrix" "methodology" "millions" "monkey" "monkeys" "morphology" "offer" "option" "options" "order" "organization" "organizations" "particle" "patent" "patents" "pattern" "people" "percentage" "pharmaceuticals" "phase" "physician" "physicians" "platform" "point" "practice" "practices" "preparedness" "pressure" "print" "problem" "problems" "product" "products" "promise" "properties" "property" "prospect" "publication" "publications" "quarantine" "quarantines" "ready" "reflect" "regard" "regimen" "regimens" "registry" "relate" "relates" "relevance" "research" "researcher" "researchers" "rheumatoid" "ripple" "rule" "save" "science" "sciences" "search" "sense" "separate" "share" "society" "soluble" "spectrum" "spread" "storm" "streamline" "sum" "syntheses" "synthesis" "synthesize" "synthesizes" "technology" "template" "therapies" "therapy" "thousands" "threat" "toll" "total" "toxic" "trend" "trends" "uncover" "unit" "units" "usage" "vial" "vials" "well" "world" "worldwide" ))
    :test #'equalp))


