;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "non-academic-drugs"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; broken out from drugs and new-defs/new-drugs
;; also contains vaccines, vitamins, and some toxins

;; definitely could use more work on hierarchy and making categories,
;; but this isn't the focus for now. have tried to organize things
;; somewhat for various classes of medications

(define-category inhibitor :specializes drug
  :realization (:noun "inhibitor"
                :m target
                :of target))


;; THIS NEEDS WORK
(define-category repressor :specializes inhibitor
  :realization (:noun "repressor"))

(define-category suppressor :specializes inhibitor
  :realization (:noun "suppressor"))


(noun "therapeutics" :super drug) ;; keyword: (ics N)

(def-indiv-with-id drug "radiochemical" "NCIT:C1446" :name "radiopharmaceutical compound")
(def-indiv-with-id drug "antimalarial" "CHEBI:38068" :name "antimalarial")
(def-indiv-with-id drug "anti-pyretic" "CHEBI:35493" :name "antipyretic") 
(def-indiv-with-id drug "anti-neoplastic" "NCIT:C274" :name "antineoplastic agent") 
(def-indiv-with-id drug "anti-diabetic" "CHEBI:35526" :name "hypoglycemic agent") 
(def-indiv-with-id drug "anti-angiogenic" "NCIT:C1742" :name "angiogenesis inhibitor") 
(def-indiv-with-id drug "antiviral" "NCIT:C281" :name "antiviral agent" :synonyms ("antiviral drug"))
(def-indiv-with-id drug "antimycin" "MESH:C032456" :name "antimycin") 
(def-indiv-with-id drug "antimicrobial" "NCIT:C258" :name "antibiotic") 
(def-indiv-with-id drug "antihypertensive" "CHEBI:35674" :name "antihypertensive agent") 
(def-indiv-with-id drug "anticoagulant" "CHEBI:50249" :name "anticoagulant agent") ;"NCIT:C263"
(def-indiv-with-id drug "antibacterials" "NCIT:C52588" :name "antimicrobial solution")
(def-indiv-with-id drug "anti-oestrogen" "CHEBI:50751" :name "anti-estrogen") 
(def-indiv-with-id drug "antiestrogen" "PUBCHEM:10057336" :name "antiestrogen")
(def-indiv-with-id drug "Anti-androgen" "NCIT:C242" :name "anti-androgen")
(def-indiv-with-id drug "antifolate" "CHEBI:73913" :name "antifolate") 
(def-indiv-with-id drug "anti-mitotic" "CHEBI:64911" :name "antimitotic")
(def-indiv-with-id drug "anticholinesterases" "CHEBI:37733" :name "EC 3.1.1.8 (cholinesterase) inhibitor")
(def-indiv-with-id drug "antimetabolite" "CHEBI:35221" :name "antimetabolite")
(def-indiv-with-id drug "antiserum" "NCIT:C571" :name "antiserum"  :plural ("antiserums" "antisera")) 
(def-indiv-with-id drug "immunosuppressant" "NCIT:C574" :name "immunosuppressant" :synonyms ("immunosuppressive")) 
(def-indiv-with-id drug "immunotherapy" "NCIT:C308" :name "immunotherapeutic agent")
(def-indiv-with-id drug "immunotoxin" "NCIT:C575" :name "immunotoxin" :no-plural t) 
(def-indiv-with-id drug "immunostimulant" "NCIT:C2139" :name "immunostimulant") 

(def-indiv-with-id drug "antitussive" "CHEBI:51177" :name "antitussive") 
(def-indiv-with-id drug "decongestant" "CHEBI:77715" :name "nasal decongestant") 
(def-indiv-with-id drug "hallucinogen" "CHEBI:35499" :name "hallucinogen")
(def-indiv-with-id drug "vasodilator" "NCIT:C29707" :name "vasodilating agent") ;;"CHEBI:35620" 
(def-indiv-with-id drug "chemosensitizer" "NCIT:C1744" :name "multidrug resistance modulator")
(def-indiv-with-id drug "radio-sensitizer" "NCIT:C798" :name "radiosensitizing agent") 
(def-indiv-with-id drug "sunscreen" "NCIT:C851" :name "sunscreen") 
(def-indiv-with-id drug "adjuvant" "CHEBI:60809" :name "adjuvant")
(def-indiv-with-id drug "neuroprotectant" "NCIT:C1509" :name "neuroprotective agent")
(def-indiv-with-id drug "cryoprotectant" "NCIT:C53306" :name "cryoprotective agent")
(def-indiv-with-id drug "phytochemical" "NCIT:C28269" :name "phytochemical")
(def-indiv-with-id drug "photosensitizer" "NCIT:C1420" :name "photosensitizing agent") 
(def-indiv-with-id drug "prodrug" "CHEBI:50266" :name "prodrug") 


(define-category anesthetic :specializes drug
                 :bindings (uid "CHEBI:38867")
                 :realization (:noun ("anesthetic" "anaesthetic")))
(def-indiv-with-id anesthetic "lidocaine" "PUBCHEM:3676") 
(def-indiv-with-id anesthetic "procaine" "PUBCHEM:4914" :synonyms ("novocaine"))
(def-indiv-with-id anesthetic "benzocaine" "NCIT:C28923" :name "benzocaine" :no-plural t)
(def-indiv-with-id anesthetic "Xylocaine" "NCIT:C48000" :name "lidocaine hydrochloride" :no-plural t) 
(def-indiv-with-id anesthetic "ketamine" "NCIT:C61797" :name "ketamine" :no-plural t) 

(define-category painkiller :specializes drug
                 :bindings (uid "CHEBI:35480")
                 :realization (:noun ("painkiller" "analgesic")))

(define-category nsaid :specializes painkiller
                 :realization (:noun ("NSAID" "non-steroidal anti-inflammatory drug" "non-steroidal anti-inflammatory" "Non-Steroidal Anti-Inflammatory Drug")))

(def-indiv-with-id nsaid "aspirin" "PUBCHEM:2244")
(def-indiv-with-id nsaid "naproxen" "PUBCHEM:156391") 
(def-indiv-with-id nsaid "ibuprofen" "PUBCHEM:3672")
(def-indiv-with-id nsaid "Celebrex" "PUBCHEM:2662" :name "celecoxib" :synonyms ("celexoxib" "CHEBI:41423")) ;synonym is a misspelling


(def-indiv-with-id painkiller "Tylenol" "CHEBI:46195" :name "acetaminophen" :synonyms ("paracetamol")) ;"NCIT:C198"

(noun "opioid" :super painkiller) 
(noun "opiate" :super opioid) 
(def-indiv-with-id opioid "hydrocodone" "NCIT:C62033" :name "hydrocodone")
(def-indiv-with-id opioid "hydrocodone/acetaminophen" "NCIT:C29100" :name "vicodin") ;; not just an opioid, but mostly that
(def-indiv-with-id opioid "oxycodone" "PUBCHEM:5284603" :name "oxycodone" :synonyms ("oxycontin" "endone"))
(def-indiv-with-id opioid "oxycodone/acetaminophen" "NCIT:C29311" :name "percocet") ;; not just an opioid, but mostly that
(def-indiv-with-id opioid "tramadol" "NCIT:C29507" :name "tramadol") 
(def-indiv-with-id opioid "Buprenex" "NCIT:C47424" :name "buprenorphine hydrochloride" :no-plural t)
(def-indiv-with-id opioid "alfentanil" "NCIT:C61626" :name "alfentanil" :no-plural t)
(def-indiv-with-id opioid "remifentanil" "NCIT:C66513" :name "remifentanil" :no-plural t)
(def-indiv-with-id opioid "Sufentanil" "NCIT:C61956" :name "sufentanil" :no-plural t) 
(def-indiv-with-id opioid "etorphine" "NCIT:C80578" :name "etorphine" :no-plural t) 
(def-indiv-with-id opioid "thiafentanil" "MESH:C447560" :name "A3080" :no-plural t)
(def-indiv-with-id opioid "naloxone" "CHEBI:7459" :name "naloxone") ; opioid that counteracts other opioids

;; add vicodin, percocet, others
(def-indiv-with-id opiate "morphine" "PUBCHEM:23253564")
(def-indiv-with-id opiate "codeine" "PUBCHEM:5284371")
(def-indiv-with-id opiate "fentanyl" "NCIT:C494" :name "fentanyl" :no-plural t  :synonyms ("fentanil" "phentanyl" "fentora")) ;"PUBCHEM:3345"
(def-indiv-with-id opiate "heroin" "PUBCHEM:5462328" :synonyms ("diamorphine" "acetomorphine" "diaphorm"))
(def-indiv-with-id opiate "Methadone" "NCIT:C62044" :name "methadone")
(def-indiv-with-id opiate "hydromorphone" "NCIT:C62034" :name "hydromorphone" :no-plural t)
(def-indiv-with-id opiate "meperidine" "NCIT:C71632" :name "meperidine" :no-plural t) 
(def-indiv-with-id opiate "oxymorphone" "NCIT:C29314" :name "oxymorphone" :no-plural t)

;; antibiotics
(def-indiv-with-id drug "surfactin" "CHEBI:29681" :name "surfactin") 
(def-indiv-with-id drug "azithromycin" "CHEBI:2955" :name "azithromycin") 
(def-indiv-with-id drug "erythromycin" "PUBCHEM:12560")
(def-indiv-with-id drug "penicillin" "CHEBI:17334" :name "penicillin")
(def-indiv-with-id drug "ticarcillin" "NCIT:C889" :name "ticarcillin" :no-plural t)
(def-indiv-with-id drug "Amoxicilline" "NCIT:C237" :name "amoxicillin") 
(def-indiv-with-id drug "amoxycillin" "NCIT:C237" :name "amoxicillin")
(def-indiv-with-id drug "Bactrim" "NCIT:C909" :name "trimethoprim-sulfamethoxazole") 
(def-indiv-with-id drug "vancomycin" "NCIT:C925" :name "vancomycin" :no-plural t) 
(def-indiv-with-id drug "doxycycline" "NCIT:C457" :name "doxycycline" :no-plural t)
(def-indiv-with-id drug "clarithromycin" "NCIT:C1054" :name "clarithromycin" :no-plural t) 
(def-indiv-with-id drug "ciprofloxacin" "NCIT:C375" :name "ciprofloxacin" :no-plural t :synonyms ("cipro"))
(def-indiv-with-id drug "carbenicillin" "NCIT:C343" :name "carbenicillin") 
(def-indiv-with-id drug "cephalosporin" "CHEBI:23066" :name "cephalosporin") 
(def-indiv-with-id drug "streptomycin" "NCIT:C61952" :name "streptomycin" :no-plural t) 
(def-indiv-with-id drug "tetracycline" "NCIT:C865" :name "tetracycline") 

(def-indiv-with-id drug "bacitracin" "NCIT:C295" :name "bacitracin" :no-plural t)
(def-indiv-with-id drug "cefazedone" "NCIT:C76157" :name "cefazedone" :no-plural t) 
(def-indiv-with-id drug "cefazolin" "NCIT:C28913" :name "cefazolin" :no-plural t) (def-indiv-with-id drug "cefalexin" "CHEBI:3534" :name "cephalexin" :no-plural t) ;;"NCIT:C356"
(def-indiv-with-id drug "cefquinome" "NCIT:C79564" :name "cefquinome" :no-plural t) 


;; antifungal
(def-indiv-with-id drug "fluconazole" "PUBCHEM:3365") 



(def-indiv-with-id drug "statin" "CHEBI:87631" :name "statin")
(def-indiv-with-id drug "tamoxifen" "CHEBI:41774" :name "tamoxifen") 
(def-indiv-with-id drug "progestin" "CHEBI:59826" :name "progestin") 
(def-indiv-with-id drug "estradiol" "CHEBI:23965" :name "estradiol")
(def-indiv-with-id drug "ethinylestradiol" "NCIT:C486" :name "ethinyl estradiol" :no-plural t :synonyms ("ethinyl"))
(def-indiv-with-id drug "pregnanediol" "CHEBI:8387" :name "Pregnanediol")
(def-indiv-with-id drug "retroid" "CHEBI:135458" :name "trengestone") 

(def-indiv-with-id drug "atropin" "CHEBI:16684" :name "atropine")
(def-indiv-with-id drug "rapamycin" "CHEBI:9168" :name "rapamycin")
(def-indiv-with-id drug "cilazapril" "CHEBI:3698" :name "Cilazapril")
(def-indiv-with-id drug "nitroglycerin" "NCIT:C29294" :name "nitroglycerin" :no-plural t)
(def-indiv-with-id drug "warfarin" "NCIT:C945" :name "warfarin" :no-plural t) 


(def-indiv-with-id drug "Tamiflu" "PUBCHEM:78000") 
(def-indiv-with-id drug "flumazenil" "PUBCHEM:3373") 
(def-indiv-with-id drug "levothyroxine" "PUBCHEM:5819")
(def-indiv-with-id drug "triiodothyronine" "NCIT:C907" :name "therapeutic triiodothyronine" :no-plural t :synonyms ("T3")) ;; thyroidd hormone
(def-indiv-with-id drug "salicylic acid" "PUBCHEM:338")
(def-indiv-with-id drug "propanol" "PUBCHEM:1031")
(def-indiv-with-id drug "Quinidine" "NCIT:C793" :name "quinidine" :no-plural t)
(def-indiv-with-id drug "clonidine" "NCIT:C380" :name "clonidine" :no-plural t) 

(def-indiv-with-id drug "capsaicin" "NCIT:C339" :name "capsaicin" :no-plural t) 
(def-indiv-with-id drug "theobromine" "NCIT:C87684" :name "theobromine" :no-plural t)
(def-indiv-with-id drug "tryptamine" "MESH:C030820" :name "tryptamine" :no-plural t) 
(def-indiv-with-id drug "melatonin" "CHEBI:16796" :name "melatonin" :no-plural t) 
(def-indiv-with-id drug "ranitidine" "NCIT:C29412" :name "ranitidine" :no-plural t :synonyms ("ramtidine" "ramtidme")) ;; syns are typos 
(def-indiv-with-id drug "prednisone" "NCIT:C770" :name "prednisone" :no-plural t) 
(def-indiv-with-id drug "phenol" "CHEBI:15882" :name "phenol" :no-plural t) 

(def-indiv-with-id drug "methotrexate" "NCIT:C642" :name "methotrexate" :no-plural t) 
(def-indiv-with-id drug "metformin" "NCIT:C61612" :name "metformin" :no-plural t)

(def-indiv-with-id drug "lactulose" "NCIT:C29148" :name "lactulose" :no-plural t)
;; also a sugar, but it's primarily a constipation treatment
 
(def-indiv-with-id drug "thalidomide" "PUBCHEM:5426")
(def-indiv-with-id drug "albuterol" "NCIT:C215" :name "albuterol" :no-plural t) 
(def-indiv-with-id drug "dextromethorphan" "NCIT:C62022" :name "dextromethorphan" :no-plural t)
(def-indiv-with-id drug "phenylephrine" "CHEBI:8093" :name "phenylephrine" :no-plural t) 
(def-indiv-with-id drug "diphenhydramine" "NCIT:C61728" :name "diphenhydramine" :no-plural t) 
(def-indiv-with-id drug "β-blocker" "NCIT:C29576" :name "beta-adrenergic blocking agent" :synonyms ("beta blocker"))
(def-indiv-with-id drug "Cyclosporin" "PUBCHEM:5284373" :name "cyclosporine"  :synonyms ("CsA" "Cyclosporin A" "NCIT:C406" "cyclosporine-A" "cyclosporin A" "CHEBI:4031" "Ciclosporin")) 
(def-indiv-with-id drug "hydroxychloroquine" "NCIT:C557" :name "hydroxychloroquine" :no-plural t)
(def-indiv-with-id drug "remdesivir" "NCIT:C152185" :name "remdesivir") 
(def-indiv-with-id drug "heparin" "NCIT:C539" :name "heparin") ;; also protein
(def-indiv-with-id drug "chloroquine" "CHEBI:3638" :name "chloroquine")
(def-indiv-with-id drug "resveratrol" "PUBCHEM:445154" :name "Resveratrol" :no-plural t)

(def-indiv-with-id drug "hydrocortisone" "NCIT:C555" :name "therapeutic hydrocortisone" :no-plural t)
(def-indiv-with-id drug "Propranolol" "NCIT:C62073" :name "propranolol" :no-plural t) 
(def-indiv-with-id drug "PPi" "NCIT:C29723" :name "proton pump inhibitor" :maintain-case t)
(def-indiv-with-id drug "GHB" "CHEBI:16724" :name "4-hydroxybutyrate" :no-plural t) 
(def-indiv-with-id drug "MDMA" "NCIT:C61081" :name "3,4-methylenedioxymethamphetamine" :no-plural t :synonyms ("Ecstacy"))
(def-indiv-with-id drug "cannabis" "NCIT:C26659" :name "marijuana" :no-plural t)
(def-indiv-with-id drug "CBD" "NCIT:C118452" :name "CBD" :synonyms ("cannabidiol") :no-plural t)
(def-indiv-with-id drug "CBN" "NCIT:C84510" :name "cannabinol" :no-plural t) 
(def-indiv-with-id drug "THC" "NCIT:C867" :name "THC" :synonyms ("dronabinol" "tetrahydrocannabinol""tetrahydrocannabinol") :no-plural t :maintain-case t) 

(def-indiv-with-id drug "levodopa" "NCIT:C611" :name "levodopa" :no-plural t)

(def-indiv-with-id drug "licorice" "NCIT:C61436" :name "licorice root extract" :no-plural t) 

(def-indiv-with-id drug "oestrogens" "NCIT:C483" :name "therapeutic estrogen" :no-plural t) 




;; anticonvulsants
(def-indiv-with-id drug "anticonvulsant" "CHEBI:35623" :name "anticonvulsant agent" :synonyms ("NCIT:C264"))
(def-indiv-with-id drug "VPA" "CHEBI:39867" :name "valproic acid" :synonyms ("Valproic Acid" "valproate")) ;"PUBCHEM:3121"
(def-indiv-with-id drug "lamotrigine" "NCIT:C38703" :name "lamotrigine" :synonyms ("lamictal")) 
;; antipsychotics
(def-indiv-with-id drug "neuroleptic" "CHEBI:35476" :name "antipsychotic agent") 
(def-indiv-with-id drug "haloperidol" "NCIT:C537" :name "haloperidol" :no-plural t) 
(def-indiv-with-id drug "chlorpromazine" "NCIT:C367" :name "chlorpromazine" :no-plural t)
(def-indiv-with-id drug "trifluoperazine" "CHEBI:45951" :name "trifluoperazine" :no-plural t)
(def-indiv-with-id drug "risperidone" "NCIT:C29416" :name "risperidone" :no-plural t)
(def-indiv-with-id drug "quetiapine" "NCIT:C61917" :name "quetiapine" :no-plural t) 
(def-indiv-with-id drug "Lithium" "NCIT:C1318" :name "lithium carbonate" :no-plural t)
(def-indiv-with-id drug "Olanzapine" "PUBCHEM:4585") 

;;stimulants
(def-indiv-with-id drug "stimulant" "NCIT:C47795" :name "CNS stimulant" :synonyms ("psychostimulant")) 
(def-indiv-with-id drug "methamphetamine" "CHEBI:6809") ;; "PUBCHEM:10836"
(def-indiv-with-id drug "Amphet-amine" "NCIT:C28822" :name "amphetamine") 
(def-indiv-with-id drug "methylphenidate" "CHEBI:6887")
(def-indiv-with-id drug "methylphenidate hydrochloride" "CHEBI:31836" :synonyms ("ritalin"))
(def-indiv-with-id drug "ephedrine" "NCIT:C472" :name "ephedrine" :no-plural t) 
(def-indiv-with-id drug "pseudoephedrine" "NCIT:C61914" :name "pseudoephedrine" :no-plural t)
(def-indiv-with-id drug "caffeine" "NCIT:C328" :name "caffeine" :no-plural t) 
(def-indiv-with-id drug "nicotine" "NCIT:C691" :name "nicotine" :no-plural t)
(def-indiv-with-id drug "tobacco" "NCIT:C891" :name "tobacco" :no-plural t) 
(def-indiv-with-id drug "cigarette" "NCIT:C1802" :name "cigarette") 


;;anti-depressants
(def-indiv-with-id drug "antidepressant" "CHEBI:35469" :name "antidepressant") 

(def-indiv-with-id drug "sertraline" "PUBCHEM:68617" :synonyms ("zoloft")) 
(def-indiv-with-id drug "mirtazapine" "PUBCHEM:4205" :synonyms ("remeron"))
;;SNRI
(def-indiv-with-id drug "EFFEXOR" "NCIT:C29540" :name "venlafaxine hydrochloride" :synonyms ("effexor"))
(def-indiv-with-id drug "Venlafaxine" "NCIT:C1278" :name "venlafaxine" :no-plural t)
(def-indiv-with-id drug "duloxetine" "NCIT:C65495" :name "duloxetine" :synonyms ("Cymbalta")) 
;;SSRIs
(def-indiv-with-id drug "SSRI" "NCIT:C94725" :name "selective serotonin reuptake inhibitor" :maintain-case t) 
(def-indiv-with-id drug "citalopram" "NCIT:C61680" :name "citalopram" :synonyms ("celexa") )
(def-indiv-with-id drug "escitalopram" "NCIT:C61754" :name "escitalopram" :synonyms ("cipralex" "lexapro"))
(def-indiv-with-id drug "fluoxetine" "NCIT:C506" :name "fluoxetine" :synonyms ("prozac"))
(def-indiv-with-id drug "fluvoxamine" "NCIT:C61769" :name "fluvoxamine" :synonyms ("luvox"))
(def-indiv-with-id drug "paroxetine" "NCIT:C61879" :name "paroxetine" :synonyms ("paxil"))
;; tri-cyclics
(def-indiv-with-id drug "Amitriptyline" "NCIT:C28819" :name "amitriptyline")
(def-indiv-with-id drug "ANAFRANIL" "NCIT:C47458" :name "clomipramine hydrochloride" :synonyms ("anafranil" "clomipramine"))
(def-indiv-with-id drug "Desipramine" "NCIT:C61700" :name "desipramine" :no-plural t)
(def-indiv-with-id drug "dosulepin" "CHEBI:36798" :name "dothiepin" :no-plural t)
(def-indiv-with-id drug "doxepin" "NCIT:C65475" :name "doxepin" :no-plural t) 
(def-indiv-with-id drug "imipramine" "CHEBI:47499" :name "imipramine" :no-plural t)
(def-indiv-with-id drug "Maprotiline" "NCIT:C61824" :name "maprotiline" :no-plural t)
(def-indiv-with-id drug "nortriptyline" "NCIT:C704" :name "nortriptyline" :no-plural t)
(def-indiv-with-id drug "Tianeptine" "MESH:C050504" :name "tianeptine" :no-plural t) 
(def-indiv-with-id drug "trimipramine" "NCIT:C61990" :name "trimipramine" :no-plural t)
;;MAOI
(def-indiv-with-id drug "phenelzine" "NCIT:C61888" :name "phenelzine" :no-plural t)
(def-indiv-with-id drug "tranylcypromine" "NCIT:C61979" :name "tranylcypromine" :no-plural t) 
(def-indiv-with-id drug "pirlindole" "NCIT:C66428" :name "pirlindole") 


;;anti-anxiety mostly benzodiazepines
(def-indiv-with-id drug "benzodiazepine" "CHEBI:22720" :name "benzodiazepine") 

(def-indiv-with-id drug "Ativan" "NCIT:C619" :name "lorazepam")
(def-indiv-with-id drug "clonazepam" "NCIT:C28935" :name "clonazepam" :no-plural t) 
(def-indiv-with-id drug "alprazolam" "NCIT:C227" :name "alprazolam" :no-plural t)
(def-indiv-with-id drug "diazepam" "NCIT:C28982" :name "diazepam" :no-plural t) 
(def-indiv-with-id drug "triazolam" "NCIT:C29520" :name "triazolam" :no-plural t)
;; sedative
(def-indiv-with-id drug "pentobarbital" "NCIT:C61885" :name "pentobarbital" :no-plural t) 




;; neurotoxins
(def-indiv-with-id drug "sarin" "CHEBI:75701" :name "sarin") 
(def-indiv-with-id drug "ricin" "NCIT:C809" :name "ricin" :no-plural t) ;; also a protein "UP:P02879"
(def-indiv-with-id drug "botox" "NCIT:C82623") ;; the treatment is NCIT:C157775; this is the drug, which is also a protein, previously  "UP:P10845" in standardized protein defs, but now uniprot has split it into P0DPI0 and P0DPI1 because of multiple bacteria strains. 

;; pesticide
(def-indiv-with-id drug "atrazine" "CHEBI:15930" :name "atrazine")
(def-indiv-with-id drug "agrichemical" "CHEBI:33286" :name "agrochemical") 
(def-indiv-with-id drug "permethrin" "CHEBI:34911" :name "permethrin" :no-plural t)
(def-indiv-with-id drug "ivermectin" "NCIT:C61796" :name "ivermectin") 


;; vaccines:
(def-indiv-with-id vaccine "Shingrix" "NCIT:C88288" :name "zoster vaccine recombinant, adjuvanted" :no-plural t :synonyms ("shingles vaccine"))
(def-indiv-with-id vaccine "DTP" "NCIT:C97122" :name "diphtheria toxoid/Tetanus toxoid/Inactivated pertussis vaccine" :no-plural t :synonyms ("DTP vaccine")) 
(def-indiv-with-id vaccine "Gardasil" "NCIT:C61087" :name "quadrivalent human papillomavirus (types 6, 11, 16, 18) recombinant vaccine" :no-plural t :synonyms ("HPV vaccine"))
(def-indiv-with-id vaccine "TA-HPV" "NCIT:C2403" :name "human papillomavirus tumor antigen vaccine" :no-plural t) 
(def-indiv-with-id vaccine "MMR" "NCIT:C96403" :name "Measles/Mumps/Rubella Vaccine" :no-plural t :synonyms ("MMR vaccine" "Measles, Mumps, and Rubella Vaccine" "Measles Mumps Rubella Vaccine"))
(def-indiv-with-id vaccine "PMCV" "NCIT:C1633" :name "polyvalent melanoma vaccine" :no-plural t)
(def-indiv-with-id vaccine "PANVAC" "NCIT:C131129" :name "CEA-MUC-1-TRICOM vaccine CV301" :no-plural t)
(def-indiv-with-id vaccine "BCG" "NCIT:C298" :name "BCG vaccine" :no-plural t) 
(def-indiv-with-id vaccine "MBV" "NCIT:C74063" :name "mixed bacteria vaccine" :no-plural t) 
(def-indiv-with-id vaccine "OPV" "NCIT:C96401" :name "oral polio vaccine") 
(def-indiv-with-id vaccine "p53MVA" "NCIT:C116868" :name "modified vaccinia virus ankara vaccine expressing p53" :no-plural t)(def-indiv-with-id vaccine "p53MVA" "NCIT:C116868" :name "modified vaccinia virus ankara vaccine expressing p53" :no-plural t)
(def-indiv-with-id vaccine "OPV" "NCIT:C96401" :name "oral polio vaccine" :no-plural t) 
(def-indiv-with-id vaccine "PROSTVAC" "NCIT:C38681" :name "rilimogene galvacirepvec" :no-plural t :synonyms ("Recombinant Vaccinia-PSA(L155)-TRICOM Vaccine"))
(def-indiv-with-id vaccine "Fluvirin" "NCIT:C2643" :name "trivalent influenza vaccine" :no-plural t)
(def-indiv-with-id vaccine "LYMErix" "MESH:C072045" :name "OspA protein" :no-plural t)
(def-indiv-with-id vaccine "Stimuvax" "NCIT:C2195" :name "emepepimut-S" :no-plural t :synonyms ("BLP-25 Liposomal Vaccine"))
(def-indiv-with-id vaccine "ALVAC" "NCIT:C1479" :name "ALVAC vaccine" :no-plural t) 
(def-indiv-with-id vaccine "DAPTACEL" "NCIT:C91717" :name "diphtheria toxoid/Tetanus toxoid/Acellular pertussis vaccine adsorbed" :no-plural t)
(def-indiv-with-id vaccine "QIV" "NCIT:C128455" :name "quadrivalent inactivated influenza vaccine" :no-plural t)
(def-indiv-with-id vaccine "IPV" "NCIT:C91715" :name "inactivated poliovirus vaccine" :no-plural t) 
(def-indiv-with-id vaccine "LAIV" "NCIT:C96402" :name "live attenuated influenza vaccine" :no-plural t)
(def-indiv-with-id vaccine "Aidsvax" "MESH:C112734" :name "AIDSVAX" :no-plural t) 
(def-indiv-with-id vaccine "Havrix" "NCIT:C29090" :name "hepatitis A vaccine" :no-plural t) 
(def-indiv-with-id vaccine "Pediarix" "MESH:C472675" :name "PEDIARIX" :no-plural t :synonyms ("
Diphtheria Toxoid/Tetanus Toxoid/Acellular Pertussis Adsorbed, Recombinant Hepatitis B/Inactivated Poliovirus Vaccine Combined")) 
(def-indiv-with-id vaccine "Proquad" "MESH:C050102" :name "measles, mumps, rubella, varicella vaccine" :no-plural t) 
(def-indiv-with-id vaccine "Twinrix" "MESH:C433226" :name "twinrix" :no-plural t)
(def-indiv-with-id vaccine "Vaqta" "NCIT:C29090" :name "hepatitis A vaccine" :no-plural t)  
(def-indiv-with-id vaccine "Engerix-B" "NCIT:C29091" :name "hepatitis B vaccine" :no-plural t :synonyms ("HepB vaccine")) 
(def-indiv-with-id vaccine "Varivax" "NCIT:C77799" :name "varicella-zoster virus strain oka/Merck live antigen" :no-plural t)
(def-indiv-with-id vaccine "Fluenz" "NCIT:C101094" :name "trivalent live-attenuated influenza vaccine" :no-plural t)
(def-indiv-with-id vaccine "Pediacel" "NCIT:C122399" :name "diphtheria-tetanus-acellular pertussis-inactivated poliomyelitis-haemophilus influenzae type B vaccine" :no-plural t)
(def-indiv-with-id vaccine "Pandemrix" "NCIT:C88320" :name "AS03-adjuvanted H1N1 pandemic influenza vaccine" :no-plural t)
(def-indiv-with-id vaccine "Cervarix" "NCIT:C48395" :name "recombinant human papillomavirus bivalent vaccine" :no-plural t) 
(def-indiv-with-id vaccine "DTap" "NCIT:C91717" :name "diphtheria toxoid/Tetanus toxoid/Acellular pertussis vaccine adsorbed" :no-plural t)
(def-indiv-with-id vaccine "Rotarix" "NCIT:C96394" :name "rotavirus vaccine")
(def-indiv-with-id vaccine "PedvaxHIB" "NCIT:C1126" :name "haemophilus influenzae B vaccine" :no-plural t) 
(def-indiv-with-id drug "ChimeriVax" "MESH:C445780" :name "ChimeriVax" :no-plural t) ;west nile virus vaccine - apparently had successful phase 1 and phase 2 back in 2011, but somehow never phase 3... there have also been other ChimeriVax vaccines developed using the same technique for dengue, Japanese encephalitis (JE), and Zika, and it seems like ChimeriVax-JE has possibly gotten to market, but there's no id for it


(define-category covid-vaccine :specializes vaccine
                 :bindings (uid "NCIT:C173023")
                 :realization (:noun ("COVID-19 Vaccine")))
(def-synonym covid-vaccine (:noun "COVID vaccine")) ;; not quite accurate but how it's being used
(def-synonym covid-vaccine (:noun "SARS-CoV-2 vaccine")) 
(define-category mrna-vaccine :specializes vaccine
                 :bindings (uid "NCIT:C172787")
                 :realization (:noun ("mRNA Vaccine")))
(def-synonym mrna-vaccine (:noun "mRNA vaccine")) 
(define-category mrna-covid-vaccine :specializes covid-vaccine
                 :mixins (mrna-vaccine)
                 :bindings (uid "NCIT:C181140")
                 :realization (:noun ("mRNA COVID-19 Vaccine")))
(def-synonym mrna-covid-vaccine (:noun "COVID-19 mRNA Vaccine")) ; "SARS-CoV-2 mRNA Vaccine" "mRNA-based COVID-19 Vaccine"
(def-indiv-with-id mrna-covid-vaccine "Moderna COVID Vaccine" "NCIT:C96394" :name "Moderna COVID-19 Vaccine" :synonyms ("Moderna vaccine" "Moderna mRNA vaccine" "Lipid Nanoparticle-encapsulated mRNA-based SARS-CoV-2 Vaccine mRNA-1273" "CX-024414" "elasomeran" "Spikevax" "mRNA-1273")) 
(def-indiv-with-id mrna-covid-vaccine "Pfizer–BioNTech COVID vaccine" "NCIT:C96394" :name "Pfizer–BioNTech COVID-19 vaccine" :synonyms ("Pfizer vaccine" "Pfizer COVID-19 vaccine" "Pfizer COVID vaccine" "Pfizer mRNA vaccine" "SARS-CoV-2 mRNA Vaccine BNT162" "BNT 162" "BNT-162" "BNT162" "BNT162 COVID-19 Vaccine" "BNT162 SARS-CoV-2 Vaccine" "tozinameran" "Comirnaty")) 

(def-indiv-with-id covid-vaccine "AD5-nCOV" "NCIT:C173017" :name "Convidecia" :synonyms ("Ad5-nCoV COVID-19 Vaccine" "Ad5-nCoV COVID-19 vaccine" "CanSino Biologics COVID-19 vaccine" "PakVac"))
(def-indiv-with-id covid-vaccine "AstraZeneca COVID-19 vaccine" "NCIT:C173021" :name "Oxford–AstraZeneca COVID-19 vaccine" :synonyms ("AZD1222" "Covishield" "Vaxzevria" "ChAdOx1 nCoV-19" "COVID-19 Vaccine AstraZeneca" "AZD2816" "AstraZeneca vaccine"))
(def-indiv-with-id covid-vaccine "Janssen COVID-19 vaccine" "NCIT:C176055" :name "Johnson & Johnson COVID-19 vaccine" :synonyms ("J&J COVID-19 vaccine" "COVID-19 Vaccine Janssen" "Ad26.COV2.S" "JNJ-78436735" "Ad26COVS1" "VAC31518" "Ad26-encoding SARS-CoV-2 Spike Protein Vaccine" "COVID-19 Vaccine Ad26.COV2.S" "Johnson and Johnson COVID-19 vaccine"))
(def-indiv-with-id covid-vaccine "Sinopharm BIBP COVID-19 vaccine" "DrugBank:DB15807" :name "Sinopharm COVID-19 vaccine" :synonyms ("BBIBP-CorV" "BIBP vaccine" "Vero Cell" "SARS-CoV-2 Vaccine (Vero Cell)" "Hayat-Vax" "Zhong'aikewei" ))
(def-indiv-with-id covid-vaccine "CoronaVac" "NCIT:C173853" :name "Sinovac COVID-19 vaccine" :synonyms ("Adsorbed Inactivated SARS-CoV-2 Vaccine CoronaVac" "PiCoVacc"))
(def-indiv-with-id covid-vaccine "Covaxin" "NCIT:C174540" :name "Covaxin" :synonyms ("BBV152" "Bharat Biotech's COVID-19 vaccine" "Whole-Virion Inactivated SARS-CoV-2 Vaccine BBV152")) 
(def-indiv-with-id covid-vaccine "Gam-COVID-Vac" "NCIT:C173729" :name "Sputnik V" :synonyms ("COVID-19 Vaccine Gam-COVID-Vac" "rAd26/rAd5-expressing SARS-CoV-2 SP Vaccine Gam-COVID-Vac")) 
(def-indiv-with-id covid-vaccine "ZyCoV-D" "DrugBank:DB15892" :name "ZyCoV-D")

;;;-------------
;;; vitamins
;;;-------------

(define-category vitamin :specializes drug
                 :bindings (uid "CHEBI:33229")
                 :realization (:noun "vitamin"))

(def-indiv-with-id vitamin "vitamin A" "PUBCHEM:445354")
(def-indiv-with-id vitamin "retinol" "CHEBI:50211" :name "retinol")
(def-indiv-with-id vitamin "thiamine" "CHEBI:26948" :name "thiamine" :synonyms ("vitamin B1")) 
(def-indiv-with-id vitamin "riboflavin" "CHEBI:17015" :name "biotin" :synonyms ("vitamin B2"))
(def-indiv-with-id vitamin "niacin" "PUBCHEM:938" :synonyms ("vitamin B3" "nicotinic acid"))
(def-indiv-with-id vitamin "pyridoxine" "CHEBI:16709" :name "pyridoxine" :synonyms ("vitamin B6")) ;; MESH:D025101
(def-indiv-with-id vitamin "biotin" "CHEBI:15956" :name "biotin" :synonyms ("vitamin B7")) 

(def-indiv-with-id vitamin "vitamin B 12" "PUBCHEM:70678590" :name "vitamin B12") 

(def-indiv-with-id vitamin "vitamin C" "PUBCHEM:54670067" :synonyms ("ascorbic acid")) ;; PUBCHEM:54690394 is "d-ascorbic acid 
(def-indiv-with-id vitamin "vitamin D" "PUBCHEM:12895043")
(def-indiv-with-id vitamin "vitaminD3" "CHEBI:28940" :name "calciol" :synonyms ("vitamin D3" "PUBCHEM:5280795")) 
(def-indiv-with-id vitamin "Vitamin E" "PUBCHEM:14985" :name "Vitamin E" :synonyms ("vitamine")) 
(def-indiv-with-id vitamin "Vitamin K2" "PUBCHEM:5282367")
(def-indiv-with-id vitamin "Vitamin K3" "PUBCHEM:4055") 

(def-indiv-with-id vitamin "folic acid" "PUBCHEM:6037" :synonyms ("folic" "Folic Acid")) 
