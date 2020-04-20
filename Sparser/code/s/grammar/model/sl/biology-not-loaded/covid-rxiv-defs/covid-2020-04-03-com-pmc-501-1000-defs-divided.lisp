(in-package :sparser)

(defparameter *good-defs* 
'(("Avarol" ("avarol" "avarol" "MESH:C023663" "avarol" "NM"))
  ("Zenon"
   ("zenon" "zenon" "UP:Q5EXX3"
    "Zinc finger and BTB domain-containing protein 38" "AltName: Short"))
  ("Vaxfectin" ("vaxfectin" "vaxfectin" "MESH:C460866" "vaxfectin" "NM"))
  ("TncRNA"
   ("tncrna" "TncRNA" "HGNC:30815 R"
    "nuclear paraspeckle assembly transcript 1" "Synonym"))
  ("Thermanox" ("thermanox" "Thermanox" "MESH:C500874" "Thermanox" "NM"))
  ("Strepsils" ("strepsils" "Strepsils" "MESH:C526824" "Strepsils" "NM"))
  ("Solexa" ("solexa" "Solexa" "PC:2662" "Celecoxib" "Alternative Name"))
  ("SPase"
   ("spase" "SPase" "UP:A0ZZH6"
    "Sucrose phosphorylase {ECO:0000303|PubMed:14740189, ECO:0000303|PubMed:14756551, ECO:0000303|PubMed:20691225}"
    "RecName: Short"))
  ("Pregnane" ("pregnane" "pregnane" "CHEBI:8386" "pregnane" "name"))
  ("Orion" ("orion" "Orion" "CVCL:D997" "MRC-iPS-8" "RELATED synonym"))
  ("Namalva" ("namalva" "Namalva" "CVCL:0067" "Namalwa" "RELATED synonym"))
  ("MuA" ("mua" "MuA" "UP:P07636" "DDE-recombinase A" "AltName: Full"))
  ("LYMErix" ("lymerix" "LYMErix" "MESH:C072045" "OspA protein" "SY"))
  ("Hfq" ("hfq" "hfq" "XFAM:PF17209 Domain" "hfq" "ID"))
  ("Fenix" ("fenix" "fenix" "MESH:C518694" "fenix" "NM"))
  ("Effectene" ("effectene" "Effectene" "MESH:C498175" "Effectene" "NM"))
  ("DpnI" ("dpni" "DpnI" "XFAM:PF06044 Family" "DpnI" "ID"))
  ("Diisopropyl"
   ("diisopropyl" "diisopropyl" "CHEBI:141560" "2,3-dimethylbutane"
    "RELATED synonym"))
  ("Chiron" ("chiron" "chiron" "MESH:C409203" "chiron" "NM"))
  ("Chester" ("chester" "Chester" "CVCL:D967" "MRC-iPS-52" "RELATED synonym"))
  ("BglII" ("bglii" "BglII" "XFAM:PF09195 Domain" "endonuc-BglII" "WK"))
  ("Bevasiranib"
   ("bevasiranib" "bevasiranib" "MESH:C554088" "bevasiranib" "NM"))
  ("BGas" ("bgas" "BGas" "HGNC:40144 R" "CFTR antisense RNA 1" "Synonym"))
  ("Alameda" ("alameda" "Alameda" "CVCL:D946" "MRC-iPS-33" "RELATED synonym"))
  ("vitamine"
   ("vitamine" "vitamine" "CHEBI:33229" "vitamin" "RELATED synonym"))
  ("victorin"
   ("victorin" "victorin" "CHEBI:73154" "victorin C" "RELATED synonym"))
  ("tryptophane"
   ("tryptophane" "tryptophane" "CHEBI:27897" "tryptophan" "RELATED synonym"))
  ("trityl" ("trityl" "trityl" "CHEBI:52341" "trityl group" "EXACT synonym"))
  ("thioflavine"
   ("thioflavine" "thioflavine" "MESH:C009462" "thioflavin T" "SY"))
  ("tellurite" ("tellurite" "tellurite" "CHEBI:30477" "tellurite" "name"))
  ("sulphite"
   ("sulphite" "sulphite" "CHEBI:17359" "sulfite" "RELATED synonym"))
  ("schizont" ("schizont" "schizont" "BTO:0001002" "schizont" "name"))
  ("quadriceps" ("quadriceps" "quadriceps" "BTO:0001149" "quadriceps" "name"))
  ("pyrimidines"
   ("pyrimidines" "pyrimidines" "CHEBI:39447" "pyrimidines" "name"))
  ("protoscolex"
   ("protoscolex" "protoscolex" "BTO:0002304" "protoscolex" "name"))
  ("proteoliposomes"
   ("proteoliposomes" "proteoliposomes" "MESH:C020485" "proteoliposomes" "NM"))
  ("pregnane" ("pregnane" "pregnane" "CHEBI:8386" "pregnane" "name"))
  ("polyvinylamine"
   ("polyvinylamine" "polyvinylamine" "MESH:C534904" "polyvinylamine" "NM"))
  ("polyglycolide"
   ("polyglycolide" "polyglycolide" "CHEBI:53492" "poly(glycolic acid)"
    "RELATED synonym"))
  ("polonium"
   ("polonium" "polonium" "CHEBI:33313" "polonium atom" "EXACT synonym"))
  ("picolitre"
   ("picolitre" "picolitre" "UO:0000103" "picoliter" "EXACT synonym"))
  ("phytosterols"
   ("phytosterols" "phytosterols" "CHEBI:26125" "phytosterols" "name"))
  ("phosphatidyl"
   ("phosphatidyl" "phosphatidyl" "CHEBI:26025" "phosphatidyl group"
    "RELATED synonym"))
  ("phenylthio"
   ("phenylthio" "phenylthio" "CHEBI:48499" "phenylsulfanyl group"
    "RELATED synonym"))
  ("phaseolotoxin"
   ("phaseolotoxin" "phaseolotoxin" "CHEBI:8047" "phaseolotoxin" "name"))
  ("peridinin" ("peridinin" "peridinin" "CHEBI:44882" "peridinin" "name"))
  ("penem" ("penem" "penem" "CHEBI:35994" "penem" "name"))
  ("pallidum"
   ("pallidum" "pallidum" "BTO:0002246" "globus pallidus" "RELATED synonym"))
  ("oligopeptide"
   ("oligopeptide" "oligopeptide" "CHEBI:25676" "oligopeptide" "name"))
  ("nucleo"
   ("nucleo" "nucleo" "CHEBI:33252" "atomic nucleus" "RELATED synonym"))
  ("neocortex" ("neocortex" "neocortex" "BTO:0000920" "neocortex" "name"))
  ("nanolitre"
   ("nanolitre" "nanolitre" "UO:0000102" "nanoliter" "EXACT synonym"))
  ("monobactam" ("monobactam" "monobactam" "CHEBI:50695" "monobactam" "name"))
  ("microvessel"
   ("microvessel" "microvessel" "BTO:0004395" "microvessel" "name"))
  ("microspinosamide"
   ("microspinosamide" "microspinosamide" "CHEBI:66388" "microspinosamide"
    "name"))
  ("microlitre"
   ("microlitre" "microlitre" "UO:0000101" "microliter" "EXACT synonym"))
  ("metacestode"
   ("metacestode" "metacestode" "BTO:0000859" "metacestode" "name"))
  ("lycorane" ("lycorane" "lycorane" "MESH:C412290" "lycorane" "NM"))
  ("lanosterol" ("lanosterol" "lanosterol" "CHEBI:16521" "lanosterol" "name"))
  ("lactide" ("lactide" "lactide" "MESH:C091880" "dilactide" "SY"))
  ("kappa" ("kappa" "kappa" "FA:01671" "kappa family" "ID"))
  ("isoprenoid" ("isoprenoid" "isoprenoid" "CHEBI:24913" "isoprenoid" "name"))
  ("isoaaptamine"
   ("isoaaptamine" "isoaaptamine" "MESH:C417553" "isoaaptamine" "NM"))
  ("indotricarbocyanine"
   ("indotricarbocyanine" "indotricarbocyanine" "MESH:C501744"
    "indotricarbocyanine" "NM"))
  ("indoles" ("indoles" "indoles" "CHEBI:24828" "indoles" "name"))
  ("ictacalcin"
   ("ictacalcin" "ictacalcin" "UP:Q91061" "Ictacalcin" "RecName: Full"))
  ("homoproline"
   ("homoproline" "homoproline" "CHEBI:17964" "pipecolic acid"
    "RELATED synonym"))
  ("hemolymph" ("hemolymph" "hemolymph" "BTO:0000572" "hemolymph" "name"))
  ("hemisuccinate"
   ("hemisuccinate" "hemisuccinate" "CHEBI:138979" "hemisuccinate" "name"))
  ("gravid" ("gravid" "gravid" "BTO:0004733" "gravid adult" "RELATED synonym"))
  ("funder" ("funder" "funder" "EFO:0001736" "funder" "name"))
  ("fomivirsen" ("fomivirsen" "fomivirsen" "MESH:C091346" "fomivirsen" "NM"))
  ("fluoresceine"
   ("fluoresceine" "fluoresceine" "CHEBI:31624" "fluorescein"
    "RELATED synonym"))
  ("flavonolignan"
   ("flavonolignan" "flavonolignan" "CHEBI:72709" "flavonolignan" "name"))
  ("fibritin" ("fibritin" "fibritin" "UP:P10104" "Fibritin" "RecName: Full"))
  ("fetuin" ("fetuin" "fetuin" "FA:01341" "fetuin family" "ID"))
  ("exoskeleton"
   ("exoskeleton" "exoskeleton" "BTO:0004659" "exoskeleton" "name"))
  ("ectoparasiticide"
   ("ectoparasiticide" "ectoparasiticide" "CHEBI:38956" "ectoparasiticide"
    "name"))
  ("dimethyldichlorosilane"
   ("dimethyldichlorosilane" "dimethyldichlorosilane" "MESH:C040863"
    "dichlorodimethylsilane" "SY"))
  ("dimethylallyl"
   ("dimethylallyl" "dimethylallyl" "CHEBI:26248" "prenyl group"
    "RELATED synonym"))
  ("dichloromethylene"
   ("dichloromethylene" "dichloromethylene" "CHEBI:51370" "dichlorocarbene"
    "RELATED synonym"))
  ("deoxyribonucleotide"
   ("deoxyribonucleotide" "deoxyribonucleotide" "CHEBI:4431"
    "deoxyribonucleotide" "name"))
  ("decanoyl"
   ("decanoyl" "decanoyl" "CHEBI:23574" "decanoyl group" "EXACT synonym"))
  ("clorgyline" ("clorgyline" "clorgyline" "CHEBI:3763" "clorgyline" "name"))
  ("chondramide"
   ("chondramide" "chondramide" "CHEBI:84384" "chondramide" "name"))
  ("chancre" ("chancre" "chancre" "EFO:1001247" "chancre" "name"))
  ("carboxyfluorescein"
   ("carboxyfluorescein" "carboxyfluorescein" "MESH:C024098"
    "6-carboxyfluorescein" "SY"))
  ("caprylyl"
   ("caprylyl" "caprylyl" "CHEBI:25650" "octanoyl group" "RELATED synonym"))
  ("caecum" ("caecum" "caecum" "BTO:0000166" "cecum" "RELATED synonym"))
  ("bromoindole"
   ("bromoindole" "bromoindole" "CHEBI:52514" "bromoindole" "name"))
  ("brome" ("brome" "brome" "CHEBI:22927" "bromine atom" "RELATED synonym"))
  ("bradyzoite" ("bradyzoite" "bradyzoite" "BTO:0002342" "bradyzoite" "name"))
  ("birthweight"
   ("birthweight" "birthweight" "EFO:0004344" "birth weight" "EXACT synonym"))
  ("avarone" ("avarone" "avarone" "MESH:C046374" "avarone" "NM"))
  ("avarol" ("avarol" "avarol" "MESH:C023663" "avarol" "NM"))
  ("arabinoside"
   ("arabinoside" "arabinoside" "CHEBI:22601" "arabinoside" "name"))
  ("annulus"
   ("annulus" "annulus" "BTO:0003627" "annulus fibrosus" "RELATED synonym"))
  ("ammonio"
   ("ammonio" "ammonio" "CHEBI:48284" "azaniumyl group" "RELATED synonym"))
  ("agar" ("agar" "agar" "CHEBI:2509" "agar" "name"))
  ("adamantanes"
   ("adamantanes" "adamantanes" "CHEBI:51339" "adamantanes" "name"))
  ("adamantane" ("adamantane" "adamantane" "CHEBI:40519" "adamantane" "name"))
  ("WRW" ("wrw" "WRW" "XFAM:PF10206 Family" "WRW" "ID"))
  ("WLW" ("wlw" "WLW" "CVCL:UJ51" "NF-HFO-3" "RELATED synonym"))
  ("UCA" ("uca" "UCA" "CVCL:1M77" "UCA" "name"))
  ("UAA" ("uaa" "UAA" "XFAM:PF08449 Family" "UAA" "ID"))
  ("SJO" ("sjo" "SJO" "CVCL:0T73" "SJO" "name"))
  ("RMC" ("rmc" "RMC" "CVCL:0506" "RMC" "name"))
  ("PMED"
   ("pmed" "PMED" "Orphanet:352596"
    "Progressive myoclonic epilepsy with dystonia" "EXACT synonym"))
  ("PDV" ("pdv" "PDV" "CVCL:5858" "PDV" "name"))
  ("PCMC"
   ("pcmc" "PCMC" "GO:1990075" "periciliary membrane compartment"
    "EXACT synonym"))
  ("PARV" ("parv" "PARV" "FPLX:PARV" "PARV" "name"))
  ("ORFV"
   ("orfv" "ORFV" "UP:P17958"
    "Uncharacterized 25.6 kDa protein in aldolase locus" "AltName: Full"))
  ("MSB" ("msb" "MSB" "GO:0150086" "multiple synapse bouton" "EXACT synonym"))
  ("MOVAS" ("movas" "MOVAS" "CVCL:0F08" "MOVAS-1" "RELATED synonym"))
  ("MMTS" ("mmts" "MMTS" "MESH:C014674" "methyl methanethiosulfonate" "SY"))
  ("MAGUK" ("maguk" "MAGUK" "FA:02147" "MAGUK family" "ID"))
  ("LHC" ("lhc" "LHC" "XFAM:PF00556 Domain" "LHC" "ID"))
  ("LCD" ("lcd" "LCD" "CVCL:1787" "VMRC-LCD" "RELATED synonym"))
  ("KYY" ("kyy" "KYY" "XFAM:PF10199 Family" "adaptin binding" "PI"))
  ("KLS"
   ("kls" "KLS" "HGNC:10437 G" "ribosomal protein S6 kinase B2" "Synonym"))
  ("JVC" ("jvc" "JVC" "CVCL:R734" "JVC" "name"))
  ("JPT" ("jpt" "JPT" "EFO:0003164" "Japanese" "EXACT synonym"))
  ("JPS"
   ("jps" "JPS" "Orphanet:2929" "Juvenile polyposis syndrome" "EXACT synonym"))
  ("JPG"
   ("jpg" "JPG" "Orphanet:2801" "Juvenile Paget disease" "EXACT synonym"))
  ("JME"
   ("jme" "JME" "Orphanet:307" "Juvenile myoclonic epilepsy" "EXACT synonym"))
  ("JHC" ("jhc" "JHC" "CVCL:M093" "JHC" "name"))
  ("ITSM" ("itsm" "ITSM" "CVCL:JF86" "ITSM" "name"))
  ("IPD"
   ("ipd" "IPD" "Orphanet:238455" "Infantile dystonia-parkinsonism"
    "EXACT synonym"))
  ("IOO" ("ioo" "IOO" "CHEBI:29902" "iodidodioxygen(.)" "RELATED synonym"))
  ("IFNK" ("ifnk" "IFNK" "HGNC:21714 G" "interferon kappa" "Approved Symbol"))
  ("IFNE"
   ("ifne" "IFNE" "HGNC:18163 G" "interferon epsilon" "Approved Symbol"))
  ("HVC" ("hvc" "HVC" "BTO:0003390" "high vocal center" "RELATED synonym"))
  ("HKC" ("hkc" "HKC" "CVCL:WZ51" "HKC" "name"))
  ("HIBM"
   ("hibm" "HIBM" "EFO:0007323" "inclusion body myositis" "EXACT synonym"))
  ("HFF" ("hff" "HFF" "CVCL:XB54" "HFF" "name"))
  ("HCM"
   ("hcm" "HCM" "EFO:0000538" "hypertrophic cardiomyopathy" "EXACT synonym"))
  ("GJR" ("gjr" "GJR" "CVCL:Z599" "GJR" "name"))
  ("ERAD"
   ("erad" "ERAD" "GO:0030433" "ubiquitin-dependent ERAD pathway"
    "BROAD synonym"))
  ("EMJH" ("emjh" "EMJH" "CVCL:E583" "EMJ" "RELATED synonym"))
  ("ELR" ("elr" "ELR" "EFO:0007750" "ELR" "name"))
  ("EJC"
   ("ejc" "EJC" "GO:0035145" "exon-exon junction complex" "EXACT synonym"))
  ("EDIM" ("edim" "EDIM" "MESH:C009680" "VX" "SY"))
  ("DPTP"
   ("dptp" "DPTP" "UP:P16620" "Tyrosine-protein phosphatase 69D"
    "AltName: Short"))
  ("DOTAP"
   ("dotap" "DOTAP" "MESH:C070046"
    "1,2-dioleoyloxy-3-(trimethylammonium)propane" "SY"))
  ("DMY"
   ("dmy" "DMY" "UP:Q8JIR6"
    "Doublesex- and mab-3-related transcription factor 1Y" "AltName: Short"))
  ("DGP" ("dgp" "DGP" "CHEBI:73291" "Asp-Gly-Pro" "RELATED synonym"))
  ("DEHS" ("dehs" "DEHS" "MESH:C037634" "di-2-ethylhexyl sebacate" "SY"))
  ("DCBA"
   ("dcba" "DCBA" "MESH:C064515" "2',4'-dichlorobenzamil amiloride" "SY"))
  ("DALI"
   ("dali" "DALI" "HGNC:51429 R"
    "DNMT1-associated long intergenic non-coding RNA" "Synonym"))
  ("CXC" ("cxc" "CXC" "XFAM:PF03638 Domain" "TCR" "PI"))
  ("CTE" ("cte" "CTE" "CVCL:R826" "CTE" "name"))
  ("CMY" ("cmy" "CMY" "CVCL:A602" "CMY" "name"))
  ("CLAC" ("clac" "CLAC" "CVCL:J360" "CLAC" "name"))
  ("CLAB" ("clab" "CLAB" "CVCL:6A78" "CLAB" "name"))
  ("CIEB" ("cieb" "CIEB" "CVCL:6A77" "CIEB" "name"))
  ("CHCA"
   ("chca" "CHCA" "CHEBI:64340" "alpha-cyano-4-hydroxycinnamic acid"
    "RELATED synonym"))
  ("BEI" ("bei" "BEI" "CVCL:E474" "BEI" "name"))
  ("BASC"
   ("basc" "BASC" "CL:0002638" "bronchioalveolar stem cell" "EXACT synonym"))
  ("AVL" ("avl" "AVL" "CVCL:E464" "AVL" "name"))
  ("ASPA" ("aspa" "ASPA" "HGNC:756 G" "aspartoacylase" "Approved Symbol"))
  ("AON"
   ("aon" "AON" "BTO:0003649" "anterior olfactory nucleus" "RELATED synonym"))
  ("AGR" ("agr" "AGR" "FA:00127" "AGR family" "ID"))
  ("AADD" ("aadd" "AADD" "CHEBI:73314" "Ala-Ala-Asp-Asp" "RELATED synonym")))
)

(defparameter *good-ncit-defs* 
'(("sHsp" ("shsp" "sHsp" "NCIT:C136829" "small heat shock protein" "synonym"))
  ("iTRAQ"
   ("itraq" "iTRAQ" "NCIT:C161867"
    "isobaric tags for relative and absolute quantitation" "synonym"))
  ("dbSNP"
   ("dbsnp" "dbSNP" "NCIT:C45369" "single nucleotide polymorphism database"
    "synonym"))
  ("Zovirax" ("zovirax" "zovirax" "NCIT:C205" "acyclovir" "synonym"))
  ("Zostavax"
   ("zostavax" "zostavax" "NCIT:C77799"
    "varicella-zoster virus strain oka/Merck live antigen" "synonym"))
  ("Vistide" ("vistide" "vistide" "NCIT:C1600" "cidofovir" "synonym"))
  ("Veracruz" ("veracruz" "veracruz" "NCIT:C106146" "veracruz" "name"))
  ("Uyghur" ("uyghur" "uyghur" "NCIT:C154185" "uyghur language" "synonym"))
  ("Utrecht" ("utrecht" "utrecht" "NCIT:C15134" "utrecht" "name"))
  ("Turkish" ("turkish" "turkish" "NCIT:C154180" "turkish language" "synonym"))
  ("Togaviridae"
   ("togaviridae" "togaviridae" "NCIT:C77197" "togaviridae" "name"))
  ("Titer" ("titer" "titer" "NCIT:C67454" "titer" "name"))
  ("Temecula" ("temecula" "temecula" "NCIT:C44022" "temecula" "name"))
  ("Swahili" ("swahili" "swahili" "NCIT:C154145" "swahili language" "synonym"))
  ("Superscript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("Stimuvax" ("stimuvax" "stimuvax" "NCIT:C2195" "emepepimut-S" "synonym"))
  ("Somali" ("somali" "somali" "NCIT:C123791" "somali language" "synonym"))
  ("Solanum" ("solanum" "solanum" "NCIT:C72445" "solanum nigrum" "synonym"))
  ("Sequest"
   ("sequest" "sequest" "NCIT:C68825" "sequest scoring engine" "synonym"))
  ("Scottish" ("scottish" "scottish" "NCIT:C43859" "scottish" "name"))
  ("Saskatchewan"
   ("saskatchewan" "saskatchewan" "NCIT:C86004" "saskatchewan" "name"))
  ("Rodentia" ("rodentia" "rodentia" "NCIT:C14270" "rodentia" "name"))
  ("Rickettsiaceae"
   ("rickettsiaceae" "rickettsiaceae" "NCIT:C86007" "rickettsiaceae" "name"))
  ("Rhizobiaceae"
   ("rhizobiaceae" "rhizobiaceae" "NCIT:C85959" "rhizobiaceae" "name"))
  ("Qiagen" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("Pyrenees" ("pyrenees" "pyrenees" "NCIT:C53766" "great pyrenees" "synonym"))
  ("Proprotein" ("proprotein" "proprotein" "NCIT:C47941" "proprotein" "name"))
  ("Portuguese"
   ("portuguese" "portuguese" "NCIT:C120586" "portuguese language" "synonym"))
  ("Pneumovirinae"
   ("pneumovirinae" "pneumovirinae" "NCIT:C14308" "pneumovirinae" "name"))
  ("Piscataway" ("piscataway" "piscataway" "NCIT:C44088" "piscataway" "name"))
  ("Petersburg" ("petersburg" "petersburg" "NCIT:C44725" "petersburg" "name"))
  ("Pernambuco" ("pernambuco" "pernambuco" "NCIT:C156329" "pernambuco" "name"))
  ("Parvoviridae"
   ("parvoviridae" "parvoviridae" "NCIT:C14299" "parvovirus" "synonym"))
  ("Parana" ("parana" "parana" "NCIT:C156326" "parana" "name"))
  ("Paramyxovirinae"
   ("paramyxovirinae" "paramyxovirinae" "NCIT:C14307" "paramyxovirinae"
    "name"))
  ("Papio" ("papio" "papio" "NCIT:C14252" "baboon" "synonym"))
  ("PAXgene"
   ("paxgene" "PAXgene" "NCIT:C126392" "PAXgene blood tissue system"
    "synonym"))
  ("Oryza" ("oryza" "oryza" "NCIT:C73972" "brown rice" "synonym"))
  ("Ontario" ("ontario" "ontario" "NCIT:C86001" "ontario" "name"))
  ("Onchocerca" ("onchocerca" "onchocerca" "NCIT:C124282" "onchocerca" "name"))
  ("Oaxaca" ("oaxaca" "oaxaca" "NCIT:C106152" "oaxaca" "name"))
  ("Novartis" ("novartis" "novartis" "NCIT:C126403" "novartis" "name"))
  ("Moraxellaceae"
   ("moraxellaceae" "moraxellaceae" "NCIT:C85948" "moraxellaceae" "name"))
  ("Microtome" ("microtome" "microtome" "NCIT:C126373" "microtome" "name"))
  ("Microplate" ("microplate" "microplate" "NCIT:C43377" "microplate" "name"))
  ("Miami" ("miami" "miami" "NCIT:C44033" "miami" "name"))
  ("Mansonella" ("mansonella" "mansonella" "NCIT:C118942" "mansonella" "name"))
  ("Manitoba" ("manitoba" "manitoba" "NCIT:C86002" "manitoba" "name"))
  ("Malay" ("malay" "malay" "NCIT:C154037" "malay language" "synonym"))
  ("Macacus" ("macacus" "macacus" "NCIT:C14231" "macaque" "synonym"))
  ("Macaca" ("macaca" "macaca" "NCIT:C14231" "macaque" "synonym"))
  ("Lymphocryptovirus"
   ("lymphocryptovirus" "lymphocryptovirus" "NCIT:C14204" "epstein-barr virus"
    "synonym"))
  ("Java" ("java" "java" "NCIT:C71585" "java programming language" "synonym"))
  ("Internet" ("internet" "internet" "NCIT:C20342" "internet" "name"))
  ("Immunochemistry"
   ("immunochemistry" "immunochemistry" "NCIT:C16713" "immunochemistry"
    "name"))
  ("Igbo" ("igbo" "igbo" "NCIT:C153955" "igbo language" "synonym"))
  ("Hypertext" ("hypertext" "hypertext" "NCIT:C142573" "hypertext" "name"))
  ("Hemoccult"
   ("hemoccult" "hemoccult" "NCIT:C18014" "fecal occult blood test" "synonym"))
  ("Haplotype" ("haplotype" "haplotype" "NCIT:C63547" "haplotype" "name"))
  ("Göttingen"
   ("göttingen" "Göttingen" "NCIT:C77102" "gottingen pig" "synonym"))
  ("GoMiner" ("gominer" "GoMiner" "NCIT:C45724" "GoMiner" "name"))
  ("Glycyrrhiza"
   ("glycyrrhiza" "glycyrrhiza" "NCIT:C61436" "licorice" "synonym"))
  ("Glycome" ("glycome" "glycome" "NCIT:C69306" "glycome" "name"))
  ("Fuzeon" ("fuzeon" "fuzeon" "NCIT:C2105" "enfuvirtide" "synonym"))
  ("Fluvirin"
   ("fluvirin" "fluvirin" "NCIT:C2643" "trivalent influenza vaccine"
    "synonym"))
  ("Felidae" ("felidae" "felidae" "NCIT:C14321" "felidae" "name"))
  ("Fasciola" ("fasciola" "fasciola" "NCIT:C122021" "fasciola" "name"))
  ("Fahrenheit"
   ("fahrenheit" "fahrenheit" "NCIT:C44277" "degree fahrenheit" "synonym"))
  ("Erythrocebus"
   ("erythrocebus" "erythrocebus" "NCIT:C161036" "erythrocebus" "name"))
  ("Elim" ("elim" "elim" "NCIT:C44678" "elim" "name"))
  ("Electrophysiology"
   ("electrophysiology" "electrophysiology" "NCIT:C16540" "electrophysiology"
    "name"))
  ("Echinococcus"
   ("echinococcus" "echinococcus" "NCIT:C122025" "echinococcus" "name"))
  ("Dolosigranulum"
   ("dolosigranulum" "dolosigranulum" "NCIT:C122020" "dolosigranulum" "name"))
  ("Diploid" ("diploid" "diploid" "NCIT:C118941" "diploidy" "synonym"))
  ("Danish" ("danish" "danish" "NCIT:C153894" "danish language" "synonym"))
  ("Corsican"
   ("corsican" "corsican" "NCIT:C153888" "corsican language" "synonym"))
  ("Conformance"
   ("conformance" "conformance" "NCIT:C80262" "conformance" "name"))
  ("Columbia" ("columbia" "columbia" "NCIT:C44057" "columbia" "name"))
  ("Cologne" ("cologne" "cologne" "NCIT:C79955" "cologne zebrafish" "synonym"))
  ("Codon" ("codon" "codon" "NCIT:C62019" "codon" "name"))
  ("Chlorocebus"
   ("chlorocebus" "chlorocebus" "NCIT:C161031" "chlorocebus" "name"))
  ("Chlamydiae" ("chlamydiae" "chlamydiae" "NCIT:C76270" "chlamydiae" "name"))
  ("Chlamydiaceae"
   ("chlamydiaceae" "chlamydiaceae" "NCIT:C85978" "chlamydiaceae" "name"))
  ("Chiapas" ("chiapas" "chiapas" "NCIT:C106166" "chiapas" "name"))
  ("Caribbean" ("caribbean" "caribbean" "NCIT:C26320" "caribbean" "name"))
  ("Canarypox"
   ("canarypox" "canarypox" "NCIT:C14315" "canarypox virus" "synonym"))
  ("Bunyaviridae"
   ("bunyaviridae" "bunyaviridae" "NCIT:C112028" "bunyaviridae" "name"))
  ("Brucellaceae"
   ("brucellaceae" "brucellaceae" "NCIT:C85919" "brucellaceae" "name"))
  ("Breslow" ("breslow" "breslow" "NCIT:C25734" "breslow thickness" "synonym"))
  ("Boolean" ("boolean" "boolean" "NCIT:C45254" "boolean" "name"))
  ("Bartonellaceae"
   ("bartonellaceae" "bartonellaceae" "NCIT:C85904" "bartonellaceae" "name"))
  ("Bahia" ("bahia" "bahia" "NCIT:C156317" "bahia" "name"))
  ("Bacteroidetes"
   ("bacteroidetes" "bacteroidetes" "NCIT:C76203" "bacteroidetes" "name"))
  ("Antisedan" ("antisedan" "antisedan" "NCIT:C72921" "atipamezole" "synonym"))
  ("Andrographis"
   ("andrographis" "andrographis" "NCIT:C61637" "andrographolide" "synonym"))
  ("Alberta" ("alberta" "alberta" "NCIT:C89819" "alberta" "name"))
  ("Affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("workflow" ("workflow" "workflow" "NCIT:C42753" "workflow" "name"))
  ("woodchuck"
   ("woodchuck" "woodchuck" "NCIT:C124252" "eastern woodchuck" "synonym"))
  ("wildtype" ("wildtype" "wildtype" "NCIT:C62195" "wild type" "synonym"))
  ("virotherapy"
   ("virotherapy" "virotherapy" "NCIT:C62713" "oncolytic virus therapy"
    "synonym"))
  ("viroid" ("viroid" "viroid" "NCIT:C95945" "viroid" "name"))
  ("vernix" ("vernix" "vernix" "NCIT:C34328" "vernix caseosa" "synonym"))
  ("vacutainer" ("vacutainer" "vacutainer" "NCIT:C63362" "vacutainer" "name"))
  ("utero" ("utero" "utero" "NCIT:C12405" "uterus" "synonym"))
  ("unmet" ("unmet" "unmet" "NCIT:C99757" "unmet" "name"))
  ("ultrasonography"
   ("ultrasonography" "ultrasonography" "NCIT:C17230" "ultrasonography"
    "name"))
  ("trimester" ("trimester" "trimester" "NCIT:C69121" "trimester" "name"))
  ("tracheotomy"
   ("tracheotomy" "tracheotomy" "NCIT:C15341" "tracheotomy" "name"))
  ("tracheobronchitis"
   ("tracheobronchitis" "tracheobronchitis" "NCIT:C122784" "tracheobronchitis"
    "name"))
  ("topology" ("topology" "topology" "NCIT:C54101" "topology" "name"))
  ("tonsillopharyngitis"
   ("tonsillopharyngitis" "tonsillopharyngitis" "NCIT:C128436"
    "tonsillopharyngitis" "name"))
  ("titre" ("titre" "titre" "NCIT:C67454" "titer" "synonym"))
  ("titer" ("titer" "titer" "NCIT:C67454" "titer" "name"))
  ("thrombi" ("thrombi" "thrombi" "NCIT:C27083" "blood clot" "synonym"))
  ("tetrahedron"
   ("tetrahedron" "tetrahedron" "NCIT:C63856" "tetrahedron" "name"))
  ("taken" ("taken" "taken" "NCIT:C25701" "taken" "name"))
  ("tachypnea" ("tachypnea" "tachypnea" "NCIT:C50767" "tachypnea" "name"))
  ("synovitis" ("synovitis" "synovitis" "NCIT:C50766" "synovitis" "name"))
  ("supernatant"
   ("supernatant" "supernatant" "NCIT:C106485" "supernatant" "name"))
  ("superkingdom"
   ("superkingdom" "superkingdom" "NCIT:C62706" "superkingdom" "name"))
  ("subtype" ("subtype" "subtype" "NCIT:C25696" "subtype" "name"))
  ("subspecies" ("subspecies" "subspecies" "NCIT:C62700" "subspecies" "name"))
  ("subsite" ("subsite" "subsite" "NCIT:C45966" "subsite" "name"))
  ("suborder" ("suborder" "suborder" "NCIT:C45288" "suborder" "name"))
  ("subclass" ("subclass" "subclass" "NCIT:C45285" "subclass" "name"))
  ("endolymph" ("endolymph" "endolymph" "NCIT:C32513" "endolymph" "name"))
  ("stakeholder"
   ("stakeholder" "stakeholder" "NCIT:C128537" "REMS stakeholder" "synonym"))
  ("spectrophotometer"
   ("spectrophotometer" "spectrophotometer" "NCIT:C62333" "spectrophotometer"
    "name"))
  ("siamese" ("siamese" "siamese" "NCIT:C154165" "thai language" "synonym"))
  ("serotype" ("serotype" "serotype" "NCIT:C88894" "serotype" "name"))
  ("sequela" ("sequela" "sequela" "NCIT:C126361" "disease sequela" "synonym"))
  ("salpingitis"
   ("salpingitis" "salpingitis" "NCIT:C26880" "salpingitis" "name"))
  ("saimiri" ("saimiri" "saimiri" "NCIT:C160934" "saimiri" "name"))
  ("rhinitis" ("rhinitis" "rhinitis" "NCIT:C34986" "rhinitis" "name"))
  ("reflectron" ("reflectron" "reflectron" "NCIT:C70697" "reflectron" "name"))
  ("radioimmunoassay"
   ("radioimmunoassay" "radioimmunoassay" "NCIT:C17057" "radioimmunoassay"
    "name"))
  ("quadrupole" ("quadrupole" "quadrupole" "NCIT:C70689" "quadrupole" "name"))
  ("qiagen" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("psychopathology"
   ("psychopathology" "psychopathology" "NCIT:C17035" "psychopathology"
    "name"))
  ("pseudogene" ("pseudogene" "pseudogene" "NCIT:C40415" "pseudogene" "name"))
  ("proteome" ("proteome" "proteome" "NCIT:C18276" "proteome" "name"))
  ("prostatectomy"
   ("prostatectomy" "prostatectomy" "NCIT:C15307" "prostatectomy" "name"))
  ("proprotein" ("proprotein" "proprotein" "NCIT:C47941" "proprotein" "name"))
  ("propeptide"
   ("propeptide" "propeptide" "NCIT:C47941" "proprotein" "synonym"))
  ("pre" ("pre" "pre" "NCIT:C25629" "prior" "synonym"))
  ("postpartum" ("postpartum" "postpartum" "NCIT:C92851" "postpartum" "name"))
  ("postmortem" ("postmortem" "postmortem" "NCIT:C94193" "postmortem" "name"))
  ("polymorph" ("polymorph" "polymorph" "NCIT:C23467" "neutrophils" "synonym"))
  ("pneumonectomy"
   ("pneumonectomy" "pneumonectomy" "NCIT:C15305" "pneumonectomy" "name"))
  ("physiopathology"
   ("physiopathology" "physiopathology" "NCIT:C20632" "pathophysiology"
    "synonym"))
  ("phosphoproteome"
   ("phosphoproteome" "phosphoproteome" "NCIT:C161796" "phosphoproteome"
    "name"))
  ("pharmacovigilance"
   ("pharmacovigilance" "pharmacovigilance" "NCIT:C142637" "pharmacovigilance"
    "name"))
  ("petechia" ("petechia" "petechia" "NCIT:C3323" "petechia" "name"))
  ("perilymph" ("perilymph" "perilymph" "NCIT:C33297" "perilymph" "name"))
  ("penetrance" ("penetrance" "penetrance" "NCIT:C48667" "penetrance" "name"))
  ("pathophysiology"
   ("pathophysiology" "pathophysiology" "NCIT:C20632" "pathophysiology"
    "name"))
  ("particulate"
   ("particulate" "particulate" "NCIT:C1709" "particulate" "name"))
  ("parser" ("parser" "parser" "NCIT:C73930" "parser" "name"))
  ("parasitology"
   ("parasitology" "parasitology" "NCIT:C16954" "parasitology" "name"))
  ("paralog" ("paralog" "paralog" "NCIT:C49108" "paralogous gene" "synonym"))
  ("pancytopenia"
   ("pancytopenia" "pancytopenia" "NCIT:C34889" "pancytopenia" "name"))
  ("oximetry"
   ("oximetry" "oximetry" "NCIT:C60832" "oxygen saturation measurement"
    "synonym"))
  ("overdose" ("overdose" "overdose" "NCIT:C50873" "overdose" "name"))
  ("outreach" ("outreach" "outreach" "NCIT:C147940" "outreach" "name"))
  ("ortholog"
   ("ortholog" "ortholog" "NCIT:C28708" "orthologous gene" "synonym"))
  ("organophosphate"
   ("organophosphate" "organophosphate" "NCIT:C94713" "organic phosphate"
    "synonym"))
  ("organochlorines"
   ("organochlorines" "organochlorines" "NCIT:C1443" "organochlorine compound"
    "synonym"))
  ("oncology" ("oncology" "oncology" "NCIT:C17837" "oncology" "name"))
  ("omphalitis" ("omphalitis" "omphalitis" "NCIT:C116008" "omphalitis" "name"))
  ("odynophagia"
   ("odynophagia" "odynophagia" "NCIT:C129502" "odynophagia" "name"))
  ("neutrophilia"
   ("neutrophilia" "neutrophilia" "NCIT:C35164" "neutrophilia" "name"))
  ("neuropathology"
   ("neuropathology" "neuropathology" "NCIT:C18479" "neuropathology" "name"))
  ("neovasculature"
   ("neovasculature" "neovasculature" "NCIT:C12968"
    "tumor-associated vasculature" "synonym"))
  ("nebuliser"
   ("nebuliser" "nebuliser" "NCIT:C50080" "nebulizer device" "synonym"))
  ("nearest" ("nearest" "nearest" "NCIT:C25583" "nearest" "name"))
  ("nanotechnology"
   ("nanotechnology" "nanotechnology" "NCIT:C18478" "nanotechnology" "name"))
  ("nadroparin"
   ("nadroparin" "nadroparin" "NCIT:C61320" "nadroparin calcium" "synonym"))
  ("myoclonus" ("myoclonus" "myoclonus" "NCIT:C116924" "myoclonus" "name"))
  ("multi" ("multi" "multi" "NCIT:C17648" "multiple" "synonym"))
  ("morpholino" ("morpholino" "morpholino" "NCIT:C60700" "morpholino" "name"))
  ("monotherapy"
   ("monotherapy" "monotherapy" "NCIT:C157514" "single agent therapy"
    "synonym"))
  ("monosialotetrahexosylganglioside"
   ("monosialotetrahexosylganglioside" "monosialotetrahexosylganglioside"
    "NCIT:C107389" "monosialotetrahexosylganglioside" "name"))
  ("minnesota" ("minnesota" "minnesota" "NCIT:C43486" "minnesota" "name"))
  ("microtome" ("microtome" "microtome" "NCIT:C126373" "microtome" "name"))
  ("microsphere"
   ("microsphere" "microsphere" "NCIT:C94188" "microsphere" "name"))
  ("microplate" ("microplate" "microplate" "NCIT:C43377" "microplate" "name"))
  ("metagenome" ("metagenome" "metagenome" "NCIT:C153196" "metagenome" "name"))
  ("metadata" ("metadata" "metadata" "NCIT:C52095" "metadata" "name"))
  ("medulla" ("medulla" "medulla" "NCIT:C79655" "pith" "synonym"))
  ("markup" ("markup" "markup" "NCIT:C63615" "markup" "name"))
  ("lobectomy" ("lobectomy" "lobectomy" "NCIT:C15272" "lobectomy" "name"))
  ("lobar" ("lobar" "lobar" "NCIT:C25556" "lobar" "name"))
  ("liposome" ("liposome" "liposome" "NCIT:C18208" "liposome" "name"))
  ("lifespan" ("lifespan" "lifespan" "NCIT:C153298" "longevity" "synonym"))
  ("lichenoid" ("lichenoid" "lichenoid" "NCIT:C100095" "lichenoid" "name"))
  ("lentivirinae"
   ("lentivirinae" "lentivirinae" "NCIT:C14290" "lentivirus" "synonym"))
  ("laparotomy" ("laparotomy" "laparotomy" "NCIT:C15266" "laparotomy" "name"))
  ("ketonuria" ("ketonuria" "ketonuria" "NCIT:C122512" "ketonuria" "name"))
  ("java" ("java" "java" "NCIT:C71585" "java programming language" "synonym"))
  ("isotype" ("isotype" "isotype" "NCIT:C73483" "antibody isotype" "synonym"))
  ("isoprinosine"
   ("isoprinosine" "isoprinosine" "NCIT:C601" "inosine pranobex" "synonym"))
  ("isomer" ("isomer" "isomer" "NCIT:C94419" "isomer" "name"))
  ("iodoacetamide"
   ("iodoacetamide" "iodoacetamide" "NCIT:C161898" "iodoacetamide" "name"))
  ("intron" ("intron" "intron" "NCIT:C13249" "intron" "name"))
  ("intrapartum"
   ("intrapartum" "intrapartum" "NCIT:C92818" "intrapartum" "name"))
  ("internet" ("internet" "internet" "NCIT:C20342" "internet" "name"))
  ("infraclass" ("infraclass" "infraclass" "NCIT:C45286" "infraclass" "name"))
  ("influenzavirus"
   ("influenzavirus" "influenzavirus" "NCIT:C53469" "influenzavirus" "name"))
  ("indel" ("indel" "indel" "NCIT:C99752" "indel mutation" "synonym"))
  ("immunopathology"
   ("immunopathology" "immunopathology" "NCIT:C18094" "immunopathology"
    "name"))
  ("immunomodulators"
   ("immunomodulators" "immunomodulators" "NCIT:C308" "immunotherapeutic agent"
    "synonym"))
  ("immunocytochemistry"
   ("immunocytochemistry" "immunocytochemistry" "NCIT:C17731"
    "immunocytochemistry" "name"))
  ("immunochemistry"
   ("immunochemistry" "immunochemistry" "NCIT:C16713" "immunochemistry"
    "name"))
  ("identifier" ("identifier" "identifier" "NCIT:C25364" "identifier" "name"))
  ("hypoxemia" ("hypoxemia" "hypoxemia" "NCIT:C93047" "hypoxemia" "name"))
  ("hyperphagia"
   ("hyperphagia" "hyperphagia" "NCIT:C118180" "hyperphagia" "name"))
  ("hyperinsulinemia"
   ("hyperinsulinemia" "hyperinsulinemia" "NCIT:C113104" "hyperinsulinemia"
    "name"))
  ("hyperaldosteronism"
   ("hyperaldosteronism" "hyperaldosteronism" "NCIT:C113213"
    "hyperaldosteronism" "name"))
  ("homozygote"
   ("homozygote" "homozygote" "NCIT:C45826" "homozygosity" "synonym"))
  ("homogenate" ("homogenate" "homogenate" "NCIT:C113744" "homogenate" "name"))
  ("hominid" ("hominid" "hominid" "NCIT:C79740" "hominidae" "synonym"))
  ("homepage" ("homepage" "homepage" "NCIT:C19467" "home page" "synonym"))
  ("histology" ("histology" "histology" "NCIT:C16681" "histology" "name"))
  ("histochemistry"
   ("histochemistry" "histochemistry" "NCIT:C17820" "histochemistry" "name"))
  ("hilum" ("hilum" "hilum" "NCIT:C73467" "hilum" "name"))
  ("hidden" ("hidden" "hidden" "NCIT:C45671" "hidden" "name"))
  ("heterozygote"
   ("heterozygote" "heterozygote" "NCIT:C45825" "heterozygosity" "synonym"))
  ("hemocytometer"
   ("hemocytometer" "hemocytometer" "NCIT:C78807" "hemocytometer" "name"))
  ("hemiplegia" ("hemiplegia" "hemiplegia" "NCIT:C64329" "hemiplegia" "name"))
  ("hematology" ("hematology" "hematology" "NCIT:C16673" "hematology" "name"))
  ("heatmap" ("heatmap" "heatmap" "NCIT:C78549" "heatmap" "name"))
  ("haplotype" ("haplotype" "haplotype" "NCIT:C63547" "haplotype" "name"))
  ("guaiac"
   ("guaiac" "guaiac" "NCIT:C72187" "bulnesia sarmientoi wood oil" "synonym"))
  ("goods" ("goods" "goods" "NCIT:C60759" "supplies" "synonym"))
  ("georgetown" ("georgetown" "georgetown" "NCIT:C44633" "georgetown" "name"))
  ("gavage" ("gavage" "gavage" "NCIT:C73430" "gavage" "name"))
  ("gastroenterology"
   ("gastroenterology" "gastroenterology" "NCIT:C16603" "gastroenterology"
    "name"))
  ("fossa" ("fossa" "fossa" "NCIT:C34007" "fossa" "name"))
  ("follicles"
   ("follicles" "follicles" "NCIT:C13317" "hair follicle" "synonym"))
  ("flowchart" ("flowchart" "flowchart" "NCIT:C71897" "flowchart" "name"))
  ("esophagectomy"
   ("esophagectomy" "esophagectomy" "NCIT:C15357" "esophagectomy" "name"))
  ("erythema" ("erythema" "erythema" "NCIT:C26901" "erythema" "name"))
  ("episiotomy" ("episiotomy" "episiotomy" "NCIT:C92774" "episiotomy" "name"))
  ("enzymology" ("enzymology" "enzymology" "NCIT:C18645" "enzymology" "name"))
  ("enhancer" ("enhancer" "enhancer" "NCIT:C13296" "enhancer" "name"))
  ("elutant" ("elutant" "elutant" "NCIT:C70796" "eluent" "synonym"))
  ("echinacea" ("echinacea" "echinacea" "NCIT:C54160" "echinacea" "name"))
  ("dysplasia" ("dysplasia" "dysplasia" "NCIT:C4086" "dysplasia" "name"))
  ("dyslipidemia"
   ("dyslipidemia" "dyslipidemia" "NCIT:C80385" "dyslipidemia" "name"))
  ("dyskinesia" ("dyskinesia" "dyskinesia" "NCIT:C50539" "dyskinesia" "name"))
  ("disassemble"
   ("disassemble" "disassemble" "NCIT:C52475" "disassembly" "synonym"))
  ("diploid" ("diploid" "diploid" "NCIT:C118941" "diploidy" "synonym"))
  ("detox" ("detox" "detox" "NCIT:C1799" "detox" "name"))
  ("delimiter" ("delimiter" "delimiter" "NCIT:C73519" "delimiter" "name"))
  ("daycare" ("daycare" "daycare" "NCIT:C84278" "daycare" "name"))
  ("cytopathology"
   ("cytopathology" "cytopathology" "NCIT:C20611" "cytopathology" "name"))
  ("cryostat" ("cryostat" "cryostat" "NCIT:C63393" "cryostat" "name"))
  ("contig" ("contig" "contig" "NCIT:C40984" "contig" "name"))
  ("conformance"
   ("conformance" "conformance" "NCIT:C80262" "conformance" "name"))
  ("codon" ("codon" "codon" "NCIT:C62019" "codon" "name"))
  ("clonus" ("clonus" "clonus" "NCIT:C34484" "clonus" "name"))
  ("cholecystectomy"
   ("cholecystectomy" "cholecystectomy" "NCIT:C51676" "cholecystectomy"
    "name"))
  ("chlamydiae" ("chlamydiae" "chlamydiae" "NCIT:C76270" "chlamydiae" "name"))
  ("chinook" ("chinook" "chinook" "NCIT:C43934" "chinook" "name"))
  ("chimerism" ("chimerism" "chimerism" "NCIT:C62582" "chimerism" "name"))
  ("chemokines"
   ("chemokines" "chemokines" "NCIT:C1593" "recombinant chemokine" "synonym"))
  ("chemo" ("chemo" "chemo" "NCIT:C15632" "chemotherapy" "synonym"))
  ("checksum" ("checksum" "checksum" "NCIT:C43522" "checksum" "name"))
  ("centroid" ("centroid" "centroid" "NCIT:C47930" "centroid" "name"))
  ("cecal" ("cecal" "cecal" "NCIT:C12381" "cecum" "synonym"))
  ("carboxyl" ("carboxyl" "carboxyl" "NCIT:C64369" "carboxyl group" "synonym"))
  ("canid" ("canid" "canid" "NCIT:C14331" "canidae" "synonym"))
  ("canarypox"
   ("canarypox" "canarypox" "NCIT:C14315" "canarypox virus" "synonym"))
  ("bunyaviridae"
   ("bunyaviridae" "bunyaviridae" "NCIT:C112028" "bunyaviridae" "name"))
  ("browser" ("browser" "browser" "NCIT:C80012" "HTML browser" "synonym"))
  ("bronchoscopy"
   ("bronchoscopy" "bronchoscopy" "NCIT:C16366" "bronchoscopy" "name"))
  ("biohazard"
   ("biohazard" "biohazard" "NCIT:C1281" "biohazardous substance" "synonym"))
  ("barcode" ("barcode" "barcode" "NCIT:C43361" "barcode" "name"))
  ("bandwidth" ("bandwidth" "bandwidth" "NCIT:C142399" "bandwidth" "name"))
  ("autoradiography"
   ("autoradiography" "autoradiography" "NCIT:C16314" "autoradiography"
    "name"))
  ("atypia" ("atypia" "atypia" "NCIT:C9478" "atypia" "name"))
  ("atmos" ("atmos" "atmos" "NCIT:C54711" "atmosphere" "synonym"))
  ("arteritis" ("arteritis" "arteritis" "NCIT:C34399" "arteritis" "name"))
  ("antitussives"
   ("antitussives" "antitussives" "NCIT:C66917" "antitussive agent" "synonym"))
  ("antisedan" ("antisedan" "antisedan" "NCIT:C72921" "atipamezole" "synonym"))
  ("antimalarials"
   ("antimalarials" "antimalarials" "NCIT:C271" "antimalarial agent"
    "synonym"))
  ("antepartum" ("antepartum" "antepartum" "NCIT:C92731" "antepartum" "name"))
  ("anoxia" ("anoxia" "anoxia" "NCIT:C2876" "anoxia" "name"))
  ("anisotropy" ("anisotropy" "anisotropy" "NCIT:C17442" "anisotropy" "name"))
  ("aneuploidy" ("aneuploidy" "aneuploidy" "NCIT:C2873" "aneuploidy" "name"))
  ("analyte" ("analyte" "analyte" "NCIT:C128639" "analyte" "name"))
  ("algorithm" ("algorithm" "algorithm" "NCIT:C16275" "algorithm" "name"))
  ("affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("adolescents"
   ("adolescents" "adolescents" "NCIT:C16266" "adolescents" "name"))
  ("absorbance"
   ("absorbance" "absorbance" "NCIT:C45995" "energy absorption" "synonym"))
  ("abortus" ("abortus" "abortus" "NCIT:C73436" "abortus" "name"))
  ("ZEBOV"
   ("zebov" "ZEBOV" "NCIT:C132420" "zaire ebolavirus measurement" "synonym"))
  ("YSL" ("ysl" "YSL" "NCIT:C77856" "tyroserleutide" "synonym"))
  ("XDR"
   ("xdr" "XDR" "NCIT:C102633" "extensively drug resistance process"
    "synonym"))
  ("WHV" ("whv" "WHV" "NCIT:C124253" "woodchuck hepatitis virus" "synonym"))
  ("VVA" ("vva" "VVA" "NCIT:C154264" "vulvovaginal atrophy" "synonym"))
  ("VMF"
   ("vmf" "VMF" "NCIT:C9662" "fluorouracil/Methotrexate/Vincristine"
    "synonym"))
  ("USDA"
   ("usda" "USDA" "NCIT:C68708" "united states department of agriculture"
    "synonym"))
  ("UMLS"
   ("umls" "UMLS" "NCIT:C43817" "unified medical language system" "synonym"))
  ("UID" ("uid" "UID" "NCIT:C70663" "unique identifier" "synonym"))
  ("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("TTE"
   ("tte" "TTE" "NCIT:C80404" "transthoracic echocardiography" "synonym"))
  ("TNE" ("tne" "TNE" "NCIT:C116393" "total nicotine equivalent" "synonym"))
  ("TIFF" ("tiff" "TIFF" "NCIT:C70631" "TIFF" "name"))
  ("TGV" ("tgv" "TGV" "NCIT:C124426" "thoracic gas volume" "synonym"))
  ("TBEV"
   ("tbev" "TBEV" "NCIT:C112422" "tick-borne encephalitis virus" "synonym"))
  ("SSPE"
   ("sspe" "SSPE" "NCIT:C85171" "subacute sclerosing panencephalitis"
    "synonym"))
  ("SSE" ("sse" "SSE" "NCIT:C64195" "streaming SIMD extensions" "synonym"))
  ("SSC" ("ssc" "SSC" "NCIT:C115467" "sample size calculation" "synonym"))
  ("SQL" ("sql" "SQL" "NCIT:C54108" "structured query language" "synonym"))
  ("SPIO" ("spio" "SPIO" "NCIT:C68566" "SPIO nanoparticle" "synonym"))
  ("SNR" ("snr" "SNR" "NCIT:C94983" "signal to noise ratio" "synonym"))
  ("SNHL" ("snhl" "SNHL" "NCIT:C26739" "sensorineural hearing loss" "synonym"))
  ("SFM" ("sfm" "SFM" "NCIT:C78804" "atomic force microscope" "synonym"))
  ("SCI" ("sci" "SCI" "NCIT:C105626" "stanford cancer institute" "synonym"))
  ("SAQ" ("saq" "SAQ" "NCIT:C26451" "anthraquinone" "synonym"))
  ("RVF" ("rvf" "RVF" "NCIT:C128419" "rift valley fever" "synonym"))
  ("RVD"
   ("rvd" "RVD" "NCIT:C113827" "lenalidomide/Bortezomib/Dexamethasone regimen"
    "synonym"))
  ("RRT" ("rrt" "RRT" "NCIT:C126400" "renal replacement therapy" "synonym"))
  ("RLT" ("rlt" "RLT" "NCIT:C123282" "regimen-limiting toxicity" "synonym"))
  ("RFLP"
   ("rflp" "RFLP" "NCIT:C17093" "restriction fragment length polymorphism"
    "synonym"))
  ("RAST" ("rast" "RAST" "NCIT:C78179" "radioallergosorbent test" "synonym"))
  ("QTL" ("qtl" "QTL" "NCIT:C113414" "quantitative trait locus" "synonym"))
  ("QPM" ("qpm" "QPM" "NCIT:C64596" "QPM" "name"))
  ("QOL" ("qol" "QOL" "NCIT:C17047" "quality of life" "synonym"))
  ("PCCF" ("pccf" "PCCF" "NCIT:C91333" "F5" "synonym"))
  ("PBM"
   ("pbm" "PBM" "NCIT:C9609" "bleomycin/Cisplatin/Methotrexate regimen"
    "synonym"))
  ("OPV" ("opv" "OPV" "NCIT:C96401" "oral polio vaccine" "synonym"))
  ("OPC"
   ("opc" "OPC" "NCIT:C131333" "oligomeric procyanidin complex" "synonym"))
  ("OMIM"
   ("omim" "OMIM" "NCIT:C43519" "online mendelian inheritance in man"
    "synonym"))
  ("NYM" ("nym" "NYM" "NCIT:C154063" "nyamwezi language" "synonym"))
  ("NPV"
   ("npv" "NPV" "NCIT:C41390" "negative predictive value of diagnostic test"
    "synonym"))
  ("NPH" ("nph" "NPH" "NCIT:C155831" "nasopharyngeal swab specimen" "synonym"))
  ("NIAID"
   ("niaid" "NIAID" "NCIT:C19753"
    "national institute of allergy and infectious disease" "synonym"))
  ("NHLBI"
   ("nhlbi" "NHLBI" "NCIT:C82613" "national heart, lung, and blood institute"
    "synonym"))
  ("NHI" ("nhi" "NHI" "NCIT:C157357" "national health insurance" "synonym"))
  ("NEG" ("neg" "NEG" "NCIT:C25247" "negative" "synonym"))
  ("NCR"
   ("ncr" "NCR" "NCIT:C129776" "natural cytotoxicity receptor family"
    "synonym"))
  ("NCBI"
   ("ncbi" "NCBI" "NCIT:C45799" "national center for biotechnology information"
    "synonym"))
  ("MSKCC"
   ("mskcc" "MSKCC" "NCIT:C39457" "memorial sloan-kettering cancer center"
    "synonym"))
  ("MRD" ("mrd" "MRD" "NCIT:C3896" "minimal residual disease" "synonym"))
  ("MRCA"
   ("mrca" "MRCA" "NCIT:C102329" "mid-right coronary artery conduit"
    "synonym"))
  ("MOCV"
   ("mocv" "MOCV" "NCIT:C112357" "molluscum contagiosum virus" "synonym"))
  ("MMW"
   ("mmw" "MMW" "NCIT:C156748" "millimeter-wave holographic imaging"
    "synonym"))
  ("MDSC"
   ("mdsc" "MDSC" "NCIT:C129908" "myeloid-derived suppressor cell" "synonym"))
  ("MBI" ("mbi" "MBI" "NCIT:C93316" "scintimammography" "synonym"))
  ("LYM" ("lym" "LYM" "NCIT:C51949" "lymphocyte count" "synonym"))
  ("LTR" ("ltr" "LTR" "NCIT:C13251" "long terminal repeat" "synonym"))
  ("LMWH"
   ("lmwh" "LMWH" "NCIT:C2578" "low molecular weight heparin" "synonym"))
  ("LMD" ("lmd" "LMD" "NCIT:C19263" "laser capture microdissection" "synonym"))
  ("LBM" ("lbm" "LBM" "NCIT:C71258" "lean body mass" "synonym"))
  ("JCV" ("jcv" "JCV" "NCIT:C14229" "JC virus" "synonym"))
  ("IVR"
   ("ivr" "IVR" "NCIT:C115652"
    "clinical trial interactive response technology documentation" "synonym"))
  ("IUPAC"
   ("iupac" "IUPAC" "NCIT:C82878"
    "international union of pure and applied chemistry" "synonym"))
  ("ITIM" ("itim" "ITIM" "NCIT:C14049" "ITIM" "name"))
  ("IRES"
   ("ires" "IRES" "NCIT:C13716" "internal ribosome entry site" "synonym"))
  ("IMVS" ("imvs" "IMVS" "NCIT:C14464" "IMVS mouse" "synonym"))
  ("IHD" ("ihd" "IHD" "NCIT:C50625" "ischemic heart disease" "synonym"))
  ("IGO" ("igo" "IGO" "NCIT:C118231" "IGLL1" "synonym"))
  ("IFI" ("ifi" "IFI" "NCIT:C52798" "IFNG" "synonym"))
  ("IEC" ("iec" "IEC" "NCIT:C142579" "independent ethics committee" "synonym"))
  ("HTTP"
   ("http" "HTTP" "NCIT:C142279" "huntingtin protein measurement" "synonym"))
  ("HTML" ("html" "HTML" "NCIT:C142380" "hypertext markup language" "synonym"))
  ("HAV" ("hav" "HAV" "NCIT:C14325" "hepatitis A virus" "synonym"))
  ("FLUBV" ("flubv" "FLUBV" "NCIT:C53468" "influenza B virus" "synonym"))
  ("FLUAV" ("fluav" "FLUAV" "NCIT:C53454" "influenza A virus" "synonym"))
  ("FIGO"
   ("figo" "FIGO" "NCIT:C89808" "federation of gynecology and obstetrics"
    "synonym"))
  ("FFU" ("ffu" "FFU" "NCIT:C75303" "focus forming unit" "synonym"))
  ("FAVN"
   ("favn" "FAVN" "NCIT:C158247"
    "fluorescent antibody virus neutralization assay" "synonym"))
  ("FASTQ" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("FASTA" ("fasta" "FASTA" "NCIT:C47845" "FASTA format" "synonym"))
  ("EIA" ("eia" "EIA" "NCIT:C17455" "enzyme immunoassay" "synonym"))
  ("DGCR" ("dgcr" "DGCR" "NCIT:C75412" "TBX1" "synonym"))
  ("CVM"
   ("cvm" "CVM" "NCIT:C10260" "cisplatin/Etoposide/Mitoguazone" "synonym"))
  ("CLIA"
   ("clia" "CLIA" "NCIT:C83475" "clinical laboratory improvement act"
    "synonym"))
  ("CHY" ("chy" "CHY" "NCIT:C153886" "cheyenne language" "synonym"))
  ("CHV" ("chv" "CHV" "NCIT:C153884" "chuvash language" "synonym"))
  ("CGM"
   ("cgm" "CGM" "NCIT:C159776" "continuous glucose monitoring system"
    "synonym"))
  ("CFAR" ("cfar" "CFAR" "NCIT:C161944" "CFAR regimen" "synonym"))
  ("CBB" ("cbb" "CBB" "NCIT:C80172" "complement Bb measurement" "synonym"))
  ("BVD"
   ("bvd" "BVD" "NCIT:C136261" "bendamustine/Bortezomib/Dexamethasone regimen"
    "synonym"))
  ("BSS" ("bss" "BSS" "NCIT:C126547" "GP1BA" "synonym"))
  ("BSE" ("bse" "BSE" "NCIT:C70551" "breast self-examination" "synonym"))
  ("BKV" ("bkv" "BKV" "NCIT:C89820" "BK virus" "synonym"))
  ("BEP" ("bep" "BEP" "NCIT:C63488" "BEP regimen" "synonym"))
  ("BDE" ("bde" "BDE" "NCIT:C97584" "HOXD13" "synonym"))
  ("ATCC" ("atcc" "ATCC" "NCIT:C15661" "ATCC" "name"))
  ("AMV"
   ("amv" "AMV" "NCIT:C10278" "doxorubicin/Etoposide/Methotrexate" "synonym"))
  ("AFC" ("afc" "AFC" "NCIT:C97213" "antral follicle count" "synonym")))
)

(defparameter *good-multi-defs* 
'(("Lycorine"
   ("lycorine" "Lycorine" "CHEBI:6601" "lycorine" "name" "," "lycorine"
    "MESH:C015330" "lycorine" "NM"))
  ("Yoruba"
   ("yoruba" "Yoruba" "EFO:0004900" "Yoruba" "name" "," "yoruba" "NCIT:C154204"
    "yoruba language" "synonym"))
  ("Tweety"
   ("tweety" "tweety" "FA:04246" "tweety family" "ID" "XFAM:PF04906 Family"
    "tweety" "ID" "XFAM:PF04906 Family" "tweety" "DE"))
  ("Triethanolamine"
   ("triethanolamine" "triethanolamine" "CHEBI:28621" "triethanolamine" "name"
    "MESH:C009546" "triethanolamine" "NM"))
  ("Swiss"
   ("swiss" "swiss" "NCIT:C14425" "swiss mice (sdc)" "synonym" "NCIT:C14484"
    "swiss" "name"))
  ("Styrofoam"
   ("styrofoam" "Styrofoam" "CHEBI:53276" "poly(styrene)" "RELATED synonym" ","
    "styrofoam" "MESH:C024075" "styrofoam" "NM"))
  ("Relenza"
   ("relenza" "Relenza" "CHEBI:50663" "zanamivir" "RELATED synonym" ","
    "relenza" "NCIT:C47786" "zanamivir" "synonym" "NCIT:C47786" "zanamivir"
    "synonym"))
  ("Procalcitonin"
   ("procalcitonin" "procalcitonin" "NCIT:C103430" "procalcitonin measurement"
    "synonym" "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("Photomultiplier"
   ("photomultiplier" "photomultiplier" "NCIT:C50098" "photomultiplier device"
    "synonym" "NCIT:C50098" "photomultiplier device" "synonym"))
  ("NaSCN"
   ("nascn" "NaSCN" "CHEBI:30952" "sodium thiocyanate" "RELATED synonym"
    "MESH:C024553" "sodium thiocyanate" "SY"))
  ("MBq"
   ("mbq" "MBq" "NCIT:C70512" "megabecquerel" "synonym" "NCIT:C70512"
    "megabecquerel" "synonym" "NCIT:C70512" "megabecquerel" "synonym"
    "NCIT:C70512" "megabecquerel" "synonym"))
  ("Imager"
   ("imager" "imager" "NCIT:C49997" "imager device" "synonym" "NCIT:C49997"
    "imager device" "synonym"))
  ("Herceptin"
   ("herceptin" "herceptin" "NCIT:C1647" "trastuzumab" "synonym" "NCIT:C1647"
    "trastuzumab" "synonym"))
  ("Gardasil"
   ("gardasil" "gardasil" "NCIT:C61087"
    "quadrivalent human papillomavirus (types 6, 11, 16, 18) recombinant vaccine"
    "synonym" "NCIT:C61087"
    "quadrivalent human papillomavirus (types 6, 11, 16, 18) recombinant vaccine"
    "synonym"))
  ("Gamendazole"
   ("gamendazole" "gamendazole" "CHEBI:90703" "gamendazole" "name"
    "MESH:C530949" "gamendazole" "NM"))
  ("Femto"
   ("femto" "femto" "UO:0000303" "femto" "name" "NCIT:C67902" "femto" "name"
    "," "femto-" "NCIT:C67902" "femto" "synonym"))
  ("Ependymin"
   ("ependymin" "ependymin" "UP:P32187" "Ependymin" "RecName: Full" "UP:etc" ""
    "fake" "FA:01117" "ependymin family" "ID" "XFAM:PF00811 Family" "ependymin"
    "ID" "XFAM:PF00811 Family" "ependymin" "DE"))
  ("Dura"
   ("dura" "dura" "BTO:0001637" "dura mater" "RELATED synonym" "NCIT:C32488"
    "dura mater" "synonym"))
  ("Dilauroylphosphatidylcholine"
   ("dilauroylphosphatidylcholine" "Dilauroylphosphatidylcholine" "CHEBI:60273"
    "1,2-dilauroyl-sn-glycero-3-phosphocholine(1+)" "RELATED synonym" ","
    "dilauroylphosphatidylcholine" "MESH:C015153"
    "1,2-dilauroylphosphatidylcholine" "SY"))
  ("Didemnin"
   ("didemnin" "didemnin" "CHEBI:90209" "didemnin" "name" "NCIT:C1364"
    "didemnin B" "synonym"))
  ("Combivir"
   ("combivir" "Combivir" "MESH:C109078"
    "lamivudine, zidovudine drug combination" "SY" "," "combivir" "NCIT:C28939"
    "lamivudine/Zidovudine" "synonym"))
  ("Caucasoid"
   ("caucasoid" "Caucasoid" "EFO:0003156" "Caucasian" "EXACT synonym" ","
    "caucasoid" "NCIT:C41261" "white" "synonym"))
  ("Caelyx"
   ("caelyx" "Caelyx" "MESH:C506643" "liposomal doxorubicin" "SY" "," "caelyx"
    "NCIT:C1555" "pegylated liposomal doxorubicin hydrochloride" "synonym"))
  ("Blebbistatin"
   ("blebbistatin" "blebbistatin" "CHEBI:75379" "blebbistatin" "name"
    "MESH:C472645" "blebbistatin" "NM"))
  ("Biopharmaceuticals"
   ("biopharmaceuticals" "biopharmaceuticals" "NCIT:C307" "biological agent"
    "synonym" "NCIT:C307" "biological agent" "synonym"))
  ("Avastin"
   ("avastin" "avastin" "NCIT:C2039" "bevacizumab" "synonym" "NCIT:C2039"
    "bevacizumab" "synonym"))
  ("Augmentin"
   ("augmentin" "Augmentin" "CHEBI:2677" "Augmentin" "name" "," "augmentin"
    "NCIT:C1023" "amoxicillin-clavulanate potassium" "synonym" "NCIT:C1023"
    "amoxicillin-clavulanate potassium" "synonym"))
  ("AdoHcy"
   ("adohcy" "AdoHcy" "CHEBI:16680" "S-adenosyl-L-homocysteine"
    "RELATED synonym" "," "adoHCy" "NCIT:C103149" "S-adenosylhomocysteine"
    "synonym"))
  ("withdrawn"
   ("withdrawn" "withdrawn" "NCIT:C38061" "withdraw" "synonym" "NCIT:C41341"
    "withdrawal" "synonym" "NCIT:C70758" "study withdrawn" "synonym"))
  ("wiskostatin"
   ("wiskostatin" "wiskostatin" "CHEBI:78008" "wiskostatin" "name"
    "MESH:C489942" "wiskostatin" "NM"))
  ("website"
   ("website" "website" "NCIT:C67518" "web site" "synonym" "NCIT:C67518"
    "web site" "synonym"))
  ("viremia"
   ("viremia" "viremia" "NCIT:C35125" "viremia" "name" "NCIT:C143215"
    "viremia, CTCAE" "synonym"))
  ("villus"
   ("villus" "villus" "BTO:0003121" "villus" "name" "NCIT:C33874" "villus"
    "name" "NCIT:C94673" "intestinal villus" "synonym"))
  ("venipuncture"
   ("venipuncture" "venipuncture" "NCIT:C28221" "phlebotomy" "synonym"
    "NCIT:C28221" "phlebotomy" "synonym" "NCIT:C28221" "phlebotomy" "synonym"))
  ("vaginitis"
   ("vaginitis" "vaginitis" "EFO:0005757" "vaginal inflammation"
    "EXACT synonym" "NCIT:C26911" "vaginitis" "name"))
  ("utricle"
   ("utricle" "utricle" "BTO:0001807" "utricle" "name" "NCIT:C33844" "utricle"
    "name" "NCIT:C63862" "prostatic utricle" "synonym"))
  ("uropod"
   ("uropod" "uropod" "GO:0001931" "uropod" "name" "UP:SL-0141 D" "Uropodium"
    "SY"))
  ("urethritis"
   ("urethritis" "urethritis" "EFO:0003878" "urethritis" "name" "NCIT:C26904"
    "urethritis" "name"))
  ("tuberculin"
   ("tuberculin" "tuberculin" "XFAM:PF12198 Domain" "tuberculin" "ID"
    "NCIT:C65132" "tuberculin unit" "synonym" "NCIT:C85502" "tuberculin"
    "name"))
  ("trinitrophenol"
   ("trinitrophenol" "trinitrophenol" "MESH:C005858" "picric acid" "SY"
    "NCIT:C80865" "picric acid" "synonym"))
  ("transponder"
   ("transponder" "transponder" "NCIT:C50232" "transponder device" "synonym"
    "NCIT:C50232" "transponder device" "synonym"))
  ("transducer"
   ("transducer" "transducer" "NCIT:C50226" "transducer device" "synonym"
    "NCIT:C50226" "transducer device" "synonym"))
  ("transcriptome"
   ("transcriptome" "transcriptome" "EFO:0004421" "transcriptome" "name"
    "NCIT:C153194" "transcriptome" "name"))
  ("timepoint"
   ("timepoint" "timepoint" "EFO:0000724" "timepoint" "name" "NCIT:C68568"
    "timepoint" "name"))
  ("tibialis"
   ("tibialis" "tibialis" "BTO:0000864" "tibialis" "name" "NCIT:C53076"
    "tibialis muscle" "synonym"))
  ("thiosulfate"
   ("thiosulfate" "thiosulfate" "CHEBI:16094" "thiosulfate(2-)" "EXACT synonym"
    "CHEBI:33542" "trioxidosulfanidosulfate(1-)" "RELATED synonym"
    "CHEBI:26977" "thiosulfate" "name"))
  ("tetrahydrofuran"
   ("tetrahydrofuran" "tetrahydrofuran" "CHEBI:26911" "oxolane"
    "RELATED synonym" "MESH:C018674" "tetrahydrofuran" "NM"))
  ("tetrad"
   ("tetrad" "tetrad" "BTO:0002442" "tetrad of microspores" "RELATED synonym"
    "BTO:0002443" "tetrad of pollen" "RELATED synonym"))
  ("tetracyclines"
   ("tetracyclines" "tetracyclines" "CHEBI:26895" "tetracyclines" "name"
    "NCIT:C1595" "tetracycline antibiotic" "synonym"))
  ("telehealth"
   ("telehealth" "telehealth" "NCIT:C15380" "telemedicine" "synonym"
    "NCIT:C16183" "telehealth" "name"))
  ("taxon"
   ("taxon" "taxon" "NCIT:C14250" "organism" "synonym" "NCIT:C40098" "taxon"
    "name" "NCIT:C45523" "taxon object" "synonym"))
  ("synthesizer"
   ("synthesizer" "synthesizer" "NCIT:C50206" "synthesizer device" "synonym"
    "NCIT:C50206" "synthesizer device" "synonym"))
  ("survivorship"
   ("survivorship" "survivorship" "NCIT:C17177" "survival" "synonym"
    "NCIT:C17177" "survival" "synonym"))
  ("sulfobetaine"
   ("sulfobetaine" "sulfobetaine" "CHEBI:16471" "(dimethylsulfonio)acetate"
    "RELATED synonym" "MESH:C483727" "sulfobetaine" "NM"))
  ("submucosa"
   ("submucosa" "submucosa" "BTO:0002107" "submucosa" "name" "NCIT:C13167"
    "submucosa" "name"))
  ("submitter"
   ("submitter" "submitter" "EFO:0001741" "submitter" "name" "NCIT:C54269"
    "submitter" "name"))
  ("subiculum"
   ("subiculum" "subiculum" "BTO:0003087" "subiculum" "name" "NCIT:C33648"
    "subiculum" "name"))
  ("stent"
   ("stent" "stent" "NCIT:C17168" "stent" "name" "NCIT:C50190" "stent device"
    "synonym" "NCIT:C50190" "stent device" "synonym" "NCIT:C50190"
    "stent device" "synonym"))
  ("spectrometer"
   ("spectrometer" "spectrometer" "NCIT:C50061" "spectrometer device" "synonym"
    "NCIT:C50061" "spectrometer device" "synonym" "NCIT:C62336" "spectrometer"
    "name"))
  ("spacer"
   ("spacer" "spacer" "NCIT:C50182" "spacer device" "synonym" "NCIT:C50182"
    "spacer device" "synonym"))
  ("sequelae"
   ("sequelae" "sequelae" "NCIT:C126361" "disease sequela" "synonym"
    "NCIT:C126361" "disease sequela" "synonym"))
  ("saccule"
   ("saccule" "saccule" "BTO:0001805" "saccule" "name" "NCIT:C33503" "saccule"
    "name"))
  ("rhinorrhea"
   ("rhinorrhea" "rhinorrhea" "NCIT:C54282" "rhinorrhea" "name" "NCIT:C143242"
    "rhinorrhea, CTCAE" "synonym"))
  ("replicate"
   ("replicate" "replicate" "EFO:0000683" "replicate" "name" "NCIT:C28038"
    "replicate" "name" "NCIT:C47886" "repeat" "synonym"))
  ("pulser"
   ("pulser" "pulser" "NCIT:C50127" "pulser device" "synonym" "NCIT:C50127"
    "pulser device" "synonym"))
  ("pullulan"
   ("pullulan" "pullulan" "CHEBI:27941" "pullulan" "name" "MESH:C009109"
    "pullulan" "NM"))
  ("progeny"
   ("progeny" "progeny" "NCIT:C42708" "offspring" "synonym" "NCIT:C42708"
    "offspring" "synonym"))
  ("procalcitonin"
   ("procalcitonin" "procalcitonin" "NCIT:C103430" "procalcitonin measurement"
    "synonym" "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("polypyrrole"
   ("polypyrrole" "polypyrrole" "CHEBI:38077" "polypyrrole" "name"
    "CHEBI:53263" "poly(pyrrole-2,5,-diyl)" "RELATED synonym"))
  ("polypropyleneimine"
   ("polypropyleneimine" "polypropyleneimine" "CHEBI:53266"
    "poly(propylene imine) macromolecule" "RELATED synonym" "CHEBI:60614"
    "poly(propylene imine) polymer" "RELATED synonym" "MESH:C443641"
    "poly(propyleneimine)" "SY"))
  ("polymorphism"
   ("polymorphism" "polymorphism" "NCIT:C17004" "genetic polymorphism"
    "synonym" "NCIT:C17004" "genetic polymorphism" "synonym" "NCIT:C61384"
    "polymorphism" "name"))
  ("polylysine"
   ("polylysine" "polylysine" "CHEBI:53411" "poly(lysine) macromolecule"
    "RELATED synonym" "CHEBI:61488" "poly(lysine) polymer" "RELATED synonym"))
  ("polyamidoamine"
   ("polyamidoamine" "polyamidoamine" "CHEBI:53199" "poly(amido amine)"
    "RELATED synonym" "MESH:C531249" "Poly(amidoamine)" "SY"))
  ("plastid"
   ("plastid" "plastid" "GO:0009536" "plastid" "name" "UP:SL-0209 D" "Plastid"
    "I*"))
  ("phytosterol"
   ("phytosterol" "phytosterol" "CHEBI:28824" "stigmasterol" "RELATED synonym"
    "NCIT:C28178" "phytosterol" "name" "NCIT:C68418" "phytosterol" "name"))
  ("phosphatidylglycerol"
   ("phosphatidylglycerol" "phosphatidylglycerol" "CHEBI:17517"
    "phosphatidylglycerol" "name" "CHEBI:64961"
    "1,2-diacyl-sn-glycero-3-phospho-(1'-sn-glycerol)" "RELATED synonym"))
  ("phagosome"
   ("phagosome" "phagosome" "GO:0045335" "phagocytic vesicle" "EXACT synonym"
    "UP:SL-0206 D" "Phagosome" "I*" "NCIT:C33316" "phagosome" "name"
    "NCIT:C91809" "phagocytosis pathway" "synonym"))
  ("perfluoropropane"
   ("perfluoropropane" "perfluoropropane" "CHEBI:31980" "octafluoropropane"
    "RELATED synonym" "MESH:C042852" "perflutren" "SY" "NCIT:C47664"
    "perflutren" "synonym"))
  ("parenchyma"
   ("parenchyma" "parenchyma" "BTO:0000999" "plant parenchyma"
    "RELATED synonym" "BTO:0001539" "parenchyma" "name" "NCIT:C74601"
    "parenchyma" "name"))
  ("pancreatitis"
   ("pancreatitis" "pancreatitis" "EFO:0000278" "pancreatitis" "name"
    "NCIT:C3306" "pancreatitis" "name" "NCIT:C56602" "pancreatitis, CTCAE 3.0"
    "synonym" "NCIT:C146789" "pancreatitis, CTCAE 5.0" "synonym"))
  ("osteomyelitis"
   ("osteomyelitis" "osteomyelitis" "EFO:0003102" "osteomyelitis" "name"
    "NCIT:C27577" "osteomyelitis" "name"))
  ("nystagmus"
   ("nystagmus" "nystagmus" "NCIT:C3282" "nystagmus" "name" "NCIT:C55857"
    "nystagmus, CTCAE 3.0" "synonym" "NCIT:C146775" "nystagmus, CTCAE 5.0"
    "synonym"))
  ("neutropenia"
   ("neutropenia" "neutropenia" "NCIT:C3277" "neutropenia" "name" "NCIT:C80520"
    "neutropenia" "name"))
  ("neuropil"
   ("neuropil" "neuropil" "BTO:0005268" "neuropil" "name" "NCIT:C12617"
    "neuropil" "name" "NCIT:C23551" "neuropil" "name"))
  ("nebulizer"
   ("nebulizer" "nebulizer" "NCIT:C28172" "nebulizer" "name" "NCIT:C50080"
    "nebulizer device" "synonym"))
  ("nanosecond"
   ("nanosecond" "nanosecond" "UO:0000150" "nanosecond" "name" "NCIT:C73767"
    "nanosecond" "name"))
  ("nano"
   ("nano" "nano" "UO:0000300" "nano" "name" "NCIT:C54713" "nano" "name" ","
    "nano-" "NCIT:C54713" "nano" "synonym"))
  ("myositis"
   ("myositis" "myositis" "EFO:0000783" "myositis" "name" "NCIT:C27578"
    "myositis" "name" "NCIT:C146787" "myositis, CTCAE 5.0" "synonym"))
  ("myocardium"
   ("myocardium" "myocardium" "BTO:0000901" "myocardium" "name" "NCIT:C12371"
    "myocardium" "name" "NCIT:C23306" "myocardium" "name"))
  ("morpholine"
   ("morpholine" "morpholine" "CHEBI:34856" "morpholine" "name" "MESH:C037574"
    "morpholine" "NM"))
  ("mismatch"
   ("mismatch" "mismatch" "NCIT:C67078" "mismatch" "name" "NCIT:C126298"
    "HLA mismatch" "synonym"))
  ("milli"
   ("milli" "milli" "UO:0010009" "milli" "name" "UO:0000297" "milli" "name"
    "NCIT:C48437" "milli" "name" "," "milli-" "NCIT:C48437" "milli" "synonym"))
  ("midgut"
   ("midgut" "midgut" "BTO:0000863" "midgut" "name" "NCIT:C34210" "midgut"
    "name"))
  ("microsecond"
   ("microsecond" "microsecond" "UO:0000029" "microsecond" "name" "NCIT:C69149"
    "microsecond" "name"))
  ("microparticle"
   ("microparticle" "microparticle" "UP:SL-0499 D" "Extracellular vesicle" "SY"
    "NCIT:C120025" "microparticle" "name"))
  ("methylammonium"
   ("methylammonium" "methylammonium" "CHEBI:59338" "methylammonium" "name"
    "MESH:C027451" "methylamine" "SY"))
  ("mesenchyme"
   ("mesenchyme" "mesenchyme" "BTO:0001393" "mesenchyme" "name" "NCIT:C13301"
    "mesenchyme" "name"))
  ("mesangium"
   ("mesangium" "mesangium" "BTO:0002494" "mesangium" "name" "NCIT:C33101"
    "mesangium" "name"))
  ("lymphopenia"
   ("lymphopenia" "lymphopenia" "NCIT:C26823" "lymphopenia" "name"
    "NCIT:C55995" "lymphopenia, CTCAE" "synonym"))
  ("lymphocytopenia"
   ("lymphocytopenia" "lymphocytopenia" "NCIT:C26823" "lymphopenia" "synonym"
    "NCIT:C26823" "lymphopenia" "synonym" "NCIT:C26823" "lymphopenia"
    "synonym"))
  ("lymphadenopathy"
   ("lymphadenopathy" "lymphadenopathy" "NCIT:C3206" "lymphadenopathy" "name"
    "NCIT:C50764" "lymphadenopathy" "name"))
  ("lymphadenitis"
   ("lymphadenitis" "lymphadenitis" "HP:0002840" "lymphadenitis" "name"
    "NCIT:C26821" "lymphadenitis" "name"))
  ("lignocaine"
   ("lignocaine" "lignocaine" "NCIT:C614" "lidocaine" "synonym" "NCIT:C614"
    "lidocaine" "synonym"))
  ("karyotype"
   ("karyotype" "karyotype" "EFO:0004426" "karyotype" "name" "NCIT:C25215"
    "karyotype" "name"))
  ("isoenzyme"
   ("isoenzyme" "isoenzyme" "NCIT:C19567" "isozyme" "synonym" "NCIT:C19567"
    "isozyme" "synonym"))
  ("immunohistochemistry"
   ("immunohistochemistry" "immunohistochemistry" "NCIT:C16722"
    "immunohistochemistry" "name" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C51944"
    "immunohistochemical test" "synonym"))
  ("imager"
   ("imager" "imager" "NCIT:C49997" "imager device" "synonym" "NCIT:C49997"
    "imager device" "synonym"))
  ("hypothermia"
   ("hypothermia" "hypothermia" "NCIT:C50523" "decreased core body temperature"
    "synonym" "NCIT:C55332" "hypothermia, CTCAE" "synonym" "NCIT:C55332"
    "hypothermia, CTCAE" "synonym" "NCIT:C78351" "hypothermia" "name"))
  ("hydroxylapatite"
   ("hydroxylapatite" "hydroxylapatite" "CHEBI:52255" "hydroxylapatite" "name"
    "NCIT:C84224" "tribasic calcium phosphate" "synonym"))
  ("hotspot"
   ("hotspot" "hotspot" "NCIT:C94367" "genetic hotspot" "synonym" "NCIT:C94367"
    "genetic hotspot" "synonym"))
  ("histopathology"
   ("histopathology" "histopathology" "NCIT:C18190"
    "histopathologic examination" "synonym" "NCIT:C18190"
    "histopathologic examination" "synonym"))
  ("hematocrit"
   ("hematocrit" "hematocrit" "EFO:0004348" "hematocrit" "name" "NCIT:C64796"
    "hematocrit measurement" "synonym" "NCIT:C64796" "hematocrit measurement"
    "synonym" "NCIT:C64796" "hematocrit measurement" "synonym"))
  ("helix"
   ("helix" "helix" "NCIT:C32724" "helix" "name" "NCIT:C47937" "helix" "name"
    "NCIT:C48043" "protein helix" "synonym"))
  ("globus"
   ("globus" "globus" "NCIT:C34642" "globus hystericus" "synonym" "NCIT:C34642"
    "globus hystericus" "synonym"))
  ("glia"
   ("glia" "glia" "BTO:0000524" "glia" "name" "NCIT:C12615" "neuroglia"
    "synonym" "NCIT:C23549" "neuroglia" "synonym"))
  ("gentamycin"
   ("gentamycin" "gentamycin" "CHEBI:17833" "gentamycin" "name" "NCIT:C519"
    "gentamicin" "synonym"))
  ("genome"
   ("genome" "genome" "EFO:0004420" "genome" "name" "NCIT:C16629" "genome"
    "name"))
  ("gastrula"
   ("gastrula" "gastrula" "BTO:0001403" "gastrula" "name" "NCIT:C34057"
    "gastrula" "name"))
  ("gastrostomy"
   ("gastrostomy" "gastrostomy" "NCIT:C38199" "administration via gastrostomy"
    "synonym" "NCIT:C52006" "gastrostomy" "name"))
  ("fungizone"
   ("fungizone" "fungizone" "NCIT:C62201" "amphotericin B deoxycholate"
    "synonym" "NCIT:C62201" "amphotericin B deoxycholate" "synonym"))
  ("fructosamine"
   ("fructosamine" "fructosamine" "CHEBI:24103" "fructosamine" "name"
    "NCIT:C74678" "fructosamine measurement" "synonym" "NCIT:C74678"
    "fructosamine measurement" "synonym"))
  ("floaters"
   ("floaters" "floaters" "NCIT:C37955" "floaters" "name" "NCIT:C50808"
    "vitreous floater" "synonym" "NCIT:C50808" "vitreous floater" "synonym"
    "NCIT:C50808" "vitreous floater" "synonym" "NCIT:C143491" "floaters, CTCAE"
    "synonym"))
  ("fenpiclonil"
   ("fenpiclonil" "fenpiclonil" "CHEBI:34759" "fenpiclonil" "name"
    "MESH:C437165" "fenpiclonil" "NM"))
  ("feelings"
   ("feelings" "feelings" "NCIT:C77965" "feelings" "name" "NCIT:C156131"
    "subject's feelings" "synonym"))
  ("exocervix"
   ("exocervix" "exocervix" "BTO:0001850" "portio vaginalis cervicis"
    "RELATED synonym" "NCIT:C12310" "exocervix" "name" "NCIT:C23244"
    "exocervix" "name" "NCIT:C159623" "exocervix tumor" "synonym"))
  ("exanthem"
   ("exanthem" "exanthem" "EFO:1000697" "exanthem" "name" "NCIT:C111884"
    "exanthem" "name"))
  ("ethylenimine"
   ("ethylenimine" "ethylenimine" "CHEBI:30969" "aziridine" "RELATED synonym"
    "MESH:C033132" "aziridine" "SY" "NCIT:C1009" "ethyleneimine" "synonym"))
  ("esfenvalerate"
   ("esfenvalerate" "esfenvalerate" "CHEBI:39346" "esfenvalerate" "name"
    "MESH:C017690" "fenvalerate" "SY"))
  ("epithelium"
   ("epithelium" "epithelium" "BTO:0000416" "epithelium" "name" "NCIT:C12710"
    "epithelium" "name" "NCIT:C23641" "epithelium" "name"))
  ("epistaxis"
   ("epistaxis" "epistaxis" "EFO:0003895" "epistaxis" "name" "NCIT:C26766"
    "epistaxis" "name" "NCIT:C143447" "epistaxis, CTCAE" "synonym"))
  ("eosinophilia"
   ("eosinophilia" "eosinophilia" "NCIT:C3015" "eosinophilia" "name"
    "NCIT:C143190" "eosinophilia, CTCAE" "synonym"))
  ("endoscope"
   ("endoscope" "endoscope" "NCIT:C16545" "endoscope" "name" "NCIT:C49940"
    "endoscope device" "synonym" "NCIT:C49940" "endoscope device" "synonym"
    "NCIT:C49940" "endoscope device" "synonym"))
  ("ectoderm"
   ("ectoderm" "ectoderm" "BTO:0000315" "ectoderm" "name" "NCIT:C12703"
    "ectoderm" "name" "NCIT:C23634" "ectoderm" "name"))
  ("dysphasia"
   ("dysphasia" "dysphasia" "NCIT:C35546" "dysphasia" "name" "NCIT:C143427"
    "dysphasia, CTCAE" "synonym"))
  ("dynasore"
   ("dynasore" "dynasore" "CHEBI:132754" "dynasore" "name" "MESH:C511794"
    "N'-(3,4-dihydroxybenzylidene)-3-hydroxy-2-naphthahydrazide" "SY"))
  ("dura"
   ("dura" "dura" "BTO:0001637" "dura mater" "RELATED synonym" "NCIT:C32488"
    "dura mater" "synonym"))
  ("drimane"
   ("drimane" "drimane" "CHEBI:36474" "drimane" "name" "MESH:C437376" "drimane"
    "NM"))
  ("densitometer"
   ("densitometer" "densitometer" "NCIT:C50055" "densitometer device" "synonym"
    "NCIT:C50055" "densitometer device" "synonym"))
  ("decidua"
   ("decidua" "decidua" "BTO:0001360" "decidua" "name" "NCIT:C32425" "decidua"
    "name"))
  ("cysteinyl"
   ("cysteinyl" "cysteinyl" "CHEBI:32460" "cysteine residue" "RELATED synonym"
    "CHEBI:23511" "cysteinyl group" "RELATED synonym"))
  ("coder"
   ("coder" "coder" "NCIT:C49876" "coder device" "synonym" "NCIT:C49876"
    "coder device" "synonym"))
  ("chorea"
   ("chorea" "chorea" "EFO:0004152" "chorea" "name" "NCIT:C84633" "chorea"
    "name"))
  ("cholecystitis"
   ("cholecystitis" "cholecystitis" "NCIT:C34465" "cholecystitis" "name"
    "NCIT:C56575" "cholecystitis, CTCAE 3.0" "synonym" "NCIT:C146788"
    "cholecystitis, CTCAE 5.0" "synonym"))
  ("chlorophenol"
   ("chlorophenol" "chlorophenol" "CHEBI:23150" "chlorophenol" "name"
    "CHEBI:38857" "monochlorophenol" "EXACT synonym"))
  ("chemokine"
   ("chemokine" "chemokine" "FPLX:Chemokine" "Chemokine" "name"
    "XFAM:PF00048 Domain" "IL8" "WK" "NCIT:C20466" "chemokine" "name"))
  ("caveolae"
   ("caveolae" "caveolae" "GO:0005901" "caveola" "EXACT synonym" "UP:SL-0035 D"
    "Caveola" "SY" "NCIT:C13328" "caveola" "synonym"))
  ("catheter"
   ("catheter" "catheter" "NCIT:C17446" "catheter" "name" "NCIT:C50344"
    "catheter device" "synonym" "NCIT:C50344" "catheter device" "synonym"
    "NCIT:C50344" "catheter device" "synonym"))
  ("california"
   ("california" "california" "NCIT:C43509" "california" "name" "NCIT:C76364"
    "california rabbit" "synonym" "NCIT:C76364" "california rabbit" "synonym"))
  ("bromelain"
   ("bromelain" "bromelain" "NCIT:C28134" "bromelains" "synonym" "NCIT:C28134"
    "bromelains" "synonym"))
  ("brainstem"
   ("brainstem" "brainstem" "BTO:0000146" "brain stem" "RELATED synonym"
    "NCIT:C12441" "brain stem" "synonym"))
  ("bornavirus"
   ("bornavirus" "bornavirus" "XFAM:PF06208 Family" "BDV G" "WK"
    "XFAM:PF06515 Family" "BDV P10" "WK" "XFAM:PF06595 Family" "BDV P24" "WK"
    "XFAM:PF06407 Family" "BDV P40" "WK"))
  ("biotherapy"
   ("biotherapy" "biotherapy" "NCIT:C15187" "biological therapy" "synonym"
    "NCIT:C15187" "biological therapy" "synonym"))
  ("biopharmaceuticals"
   ("biopharmaceuticals" "biopharmaceuticals" "NCIT:C307" "biological agent"
    "synonym" "NCIT:C307" "biological agent" "synonym"))
  ("bioassay"
   ("bioassay" "bioassay" "NCIT:C16341" "bioassay" "name" "NCIT:C42886"
    "bioassay class" "synonym"))
  ("benzathine"
   ("benzathine" "benzathine" "CHEBI:51344" "benzathine" "name" "MESH:C010044"
    "benzathine" "NM"))
  ("avertin"
   ("avertin" "avertin" "CHEBI:135170" "tribromoethanol" "RELATED synonym"
    "MESH:C062527" "tribromoethanol" "SY"))
  ("autoimmune"
   ("autoimmune" "autoimmune" "NCIT:C16313" "autoimmune process" "synonym"
    "NCIT:C37916" "autoimmune" "name"))
  ("apnea"
   ("apnea" "apnea" "NCIT:C26698" "apnea" "name" "NCIT:C55340" "apnea, CTCAE"
    "synonym" "NCIT:C55340" "apnea, CTCAE" "synonym"))
  ("antidepressants"
   ("antidepressants" "antidepressants" "NCIT:C74691"
    "antidepressant measurement" "synonym" "NCIT:C74691"
    "antidepressant measurement" "synonym"))
  ("anthrone"
   ("anthrone" "anthrone" "CHEBI:33835" "anthrone" "name" "MESH:C004522"
    "anthrone" "NM"))
  ("anorexia"
   ("anorexia" "anorexia" "NCIT:C2875" "anorexia" "name" "NCIT:C57118"
    "anorexia, CTCAE" "synonym" "NCIT:C57118" "anorexia, CTCAE" "synonym"))
  ("ampulla"
   ("ampulla" "ampulla" "BTO:0002124" "ampulla" "name" "NCIT:C13011"
    "vater's ampulla" "synonym" "NCIT:C93230" "ampulla" "name"))
  ("alveoli"
   ("alveoli" "alveoli" "BTO:0000060" "alveolus" "RELATED synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C12986" "alveolus" "synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C23916" "alveoli" "name"))
  ("aliquot"
   ("aliquot" "aliquot" "NCIT:C25414" "aliquot" "name" "NCIT:C124326"
    "aliquotting" "synonym"))
  ("aciclovir"
   ("aciclovir" "aciclovir" "CHEBI:2453" "acyclovir" "RELATED synonym"
    "NCIT:C205" "acyclovir" "synonym"))
  ("XKM"
   ("xkm" "XKM" "NCIT:C123750" "GENC entity 4" "synonym" "NCIT:C123750"
    "GENC entity 4" "synonym"))
  ("WLL"
   ("wll" "WLL" "CHEBI:91269" "Trp-Leu-Leu" "RELATED synonym" "NCIT:C15088"
    "WLL mouse" "synonym"))
  ("WIL"
   ("wil" "WIL" "CVCL:1645" "QIMR-WIL" "RELATED synonym" "," "Wil" "CVCL:W772"
    "CAT(Wil)" "RELATED synonym"))
  ("WBC"
   ("wbc" "WBC" "EFO:0004308" "leukocyte count" "EXACT synonym" "NCIT:C12529"
    "leukocytes" "synonym" "NCIT:C23463" "leukocytes" "synonym" "NCIT:C51948"
    "leukocyte count" "synonym" "NCIT:C51948" "leukocyte count" "synonym"))
  ("VNTR"
   ("vntr" "VNTR" "NCIT:C13334" "minisatellite repeat" "synonym" "NCIT:C45680"
    "tandem repeat variation" "synonym"))
  ("VDBP"
   ("vdbp" "VDBP" "HGNC:4187 G" "GC vitamin D binding protein" "Synonym"
    "NCIT:C52279" "GC" "synonym"))
  ("UVB"
   ("uvb" "UVB" "NCIT:C27987" "ultraviolet B radiation" "synonym" "NCIT:C29529"
    "UVB" "name"))
  ("USA"
   ("usa" "USA" "NCIT:C17234" "united states" "synonym" "NCIT:C17234"
    "united states" "synonym"))
  ("URL"
   ("url" "URL" "NCIT:C42743" "uniform resource locator" "synonym"
    "NCIT:C95829" "URL data type" "synonym" "NCIT:C95829" "URL data type"
    "synonym"))
  ("UGA"
   ("uga" "UGA" "NCIT:C17228" "uganda" "synonym" "NCIT:C17228" "uganda"
    "synonym"))
  ("TRICOM"
   ("tricom" "TRICOM" "NCIT:C2192" "TRICOM" "name" "," "tricom" "NCIT:C651"
    "metronidazole" "synonym"))
  ("TLI"
   ("tli" "TLI" "NCIT:C154170" "tlingit language" "synonym" "NCIT:C156721"
    "total lymphoid irradiation" "synonym" "NCIT:C161508"
    "right and left lung irradiation" "synonym"))
  ("TGT"
   ("tgt" "TGT" "HGNC:23797 G"
    "queuine tRNA-ribosyltransferase catalytic subunit 1" "Synonym"
    "HGNC:12612 G" "ubiquitin specific peptidase 14" "Synonym"
    "XFAM:PF01702 Family" "TGT" "ID" "NCIT:C132091" "USP14" "synonym"))
  ("TEPA"
   ("tepa" "TEPA" "CHEBI:49798" "tetraethylenepentamine" "RELATED synonym"
    "CHEBI:82546" "Tris(1-aziridinyl)phosphine oxide" "RELATED synonym"))
  ("SWT"
   ("swt" "SWT" "CVCL:S951" "SWT" "name" "," "swt" "HGNC:30539 G"
    "dynein axonemal assembly factor 1" "Synonym"))
  ("SVC"
   ("svc" "SVC" "NCIT:C111315" "slow vital capacity" "synonym" "NCIT:C111315"
    "slow vital capacity" "synonym"))
  ("SUS"
   ("sus" "SUS" "NCIT:C154143" "susu language" "synonym" "," "sus"
    "NCIT:C160990" "sus" "name"))
  ("SRD"
   ("srd" "SRD" "NCIT:C154129" "sardinian language" "synonym" "," "srd"
    "XFAM:PF10317 Family" "7TM GPCR Srd" "PI"))
  ("SNOMED"
   ("snomed" "SNOMED" "NCIT:C53489" "systematized nomenclature of medicine"
    "synonym" "NCIT:C53489" "systematized nomenclature of medicine" "synonym"))
  ("SMJ"
   ("smj" "SMJ" "CVCL:E827" "SHJO" "RELATED synonym" "NCIT:C154120"
    "lule sami language" "synonym"))
  ("SCID"
   ("scid" "SCID" "Orphanet:183660" "Severe combined immunodeficiency"
    "EXACT synonym" "NCIT:C3472" "severe combined immunodeficiency" "synonym"
    "NCIT:C3472" "severe combined immunodeficiency" "synonym" "NCIT:C14294"
    "SCID mouse" "synonym"))
  ("RXN"
   ("rxn" "RXN" "UP:Q9MYK8" "Prorelaxin" "RecName: Short" "UP:P22969"
    "Prorelaxin" "RecName: Short"))
  ("ROCT"
   ("roct" "ROCT" "UP:P68747" "Ornithine carbamoyltransferase 2, anabolic"
    "AltName: Short" "UP:P68746"
    "Ornithine carbamoyltransferase 2, phaseolotoxin-insensitive"
    "AltName: Full"))
  ("RGD"
   ("rgd" "RGD" "NCIT:C13288" "RGD motif" "synonym" "NCIT:C74914"
    "rat genome database" "synonym"))
  ("RFU"
   ("rfu" "RFU" "NCIT:C77535" "relative fluorescence intensity unit" "synonym"
    "NCIT:C77535" "relative fluorescence intensity unit" "synonym"))
  ("RDH"
   ("rdh" "RDH" "UP:Q00796 H"
    "Sorbitol dehydrogenase {ECO:0000303|PubMed:12962626, ECO:0000303|PubMed:3365415, ECO:0000303|PubMed:8088829}"
    "AltName: Short" "UP:P00335" "Ribitol 2-dehydrogenase" "RecName: Short"))
  ("RDF"
   ("rdf" "RDF" "UP:Q9T216" "Recombination directionality factor"
    "RecName: Short" "NCIT:C61011" "resource description framework" "synonym"))
  ("QSS"
   ("qss" "QSS" "NCIT:C95642" "continuous set set data type" "synonym"
    "NCIT:C95642" "continuous set set data type" "synonym"))
  ("PVB"
   ("pvb" "PVB" "CHEBI:53285" "poly(vinyl benzoate)" "RELATED synonym"
    "NCIT:C118543" "paravertebral block" "synonym"))
  ("PROSTVAC"
   ("prostvac" "PROSTVAC" "NCIT:C38681" "rilimogene galvacirepvec" "synonym"
    "NCIT:C132990" "rilimogene galvacirepvec/Rilimogene glafolivec" "synonym"))
  ("PRNT"
   ("prnt" "PRNT" "HGNC:18046 R" "prion locus lncRNA, testis expressed"
    "Approved Symbol" "XFAM:PF15174 Family" "PRNT" "ID"))
  ("PKU"
   ("pku" "PKU" "Orphanet:716" "Phenylketonuria" "EXACT synonym" "NCIT:C81315"
    "phenylketonuria" "synonym" "NCIT:C81315" "phenylketonuria" "synonym"))
  ("PISD"
   ("pisd" "PISD" "HGNC:8999 G" "phosphatidylserine decarboxylase"
    "Approved Symbol" "HGNC:29064 G" "SFI1 centrin binding protein" "Synonym"))
  ("PFA"
   ("pfa" "PFA" "CHEBI:53371"
    "omega-hydroxypoly(furan-2,5-diylmethylene) macromolecule"
    "RELATED synonym" "CHEBI:60594"
    "omega-hydroxypoly(furan-2,5-diylmethylene) polymer" "RELATED synonym"))
  ("PEEP"
   ("peep" "PEEP" "CHEBI:53359"
    "poly(ethyl ethoxyethylene phosphate) macromolecule" "RELATED synonym"
    "CHEBI:60683" "poly(ethyl ethoxyethylene phosphate) polymer"
    "RELATED synonym"))
  ("PCT"
   ("pct" "PCT" "Orphanet:101330" "Porphyria cutanea tarda" "EXACT synonym"
    "NCIT:C19219" "prevention, clinical, and therapeutic subcommittee"
    "synonym" "NCIT:C52394" "CALCA" "synonym" "NCIT:C95568" "UROD" "synonym"
    "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("NTI"
   ("nti" "NTI" "CHEBI:81528" "Naltrindole" "RELATED synonym" "NCIT:C54312"
    "MGP" "synonym" "NCIT:C120270" "narrow therapeutic index" "synonym"))
  ("NRS"
   ("nrs" "NRS" "NCIT:C121548" "numeric rating scale" "synonym" "," "nrs"
    "HGNC:30621 G" "sphingolipid transporter 1 (putative)" "Synonym"))
  ("NIV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("NFP"
   ("nfp" "NFP" "UP:P09142" "Non-fluorescent flavoprotein" "RecName: Short"
    "UP:P12745" "Non-fluorescent flavoprotein" "RecName: Short"))
  ("NDP"
   ("ndp" "NDP" "CHEBI:16862" "nucleoside diphosphate" "RELATED synonym"
    "HGNC:7678 G" "norrin cystine knot growth factor NDP" "Approved Symbol"
    "NCIT:C61099" "nedaplatin" "synonym"))
  ("NCI"
   ("nci" "NCI" "NCIT:C19202" "national cancer institute" "synonym"
    "NCIT:C19202" "national cancer institute" "synonym" "," "nCi" "NCIT:C67352"
    "nanocurie" "synonym" "NCIT:C67352" "nanocurie" "synonym" "NCIT:C67352"
    "nanocurie" "synonym" "NCIT:C67352" "nanocurie" "synonym"))
  ("NAAT"
   ("naat" "NAAT" "NCIT:C20055" "nucleic acid amplification test" "synonym"
    "NCIT:C20055" "nucleic acid amplification test" "synonym"))
  ("MTOC"
   ("mtoc" "MTOC" "GO:0005815" "microtubule organizing center" "EXACT synonym"
    "UP:SL-0484 D" "Microtubule organizing center" "SY" "NCIT:C32285"
    "centrosome" "synonym"))
  ("MSV"
   ("msv" "MSV" "NCIT:C51245" "MOS" "synonym" "," "mSv" "UO:0000138"
    "millisievert" "EXACT synonym"))
  ("MHL"
   ("mhl" "MHL" "NCIT:C16822" "marshall islands" "synonym" "NCIT:C16822"
    "marshall islands" "synonym"))
  ("MGB"
   ("mgb" "MGB" "BTO:0002674" "medial geniculate body" "RELATED synonym"
    "NCIT:C79436" "myoglobin measurement" "synonym"))
  ("MFI"
   ("mfi" "MFI" "NCIT:C54719" "multidimensional fatigue inventory" "synonym"
    "NCIT:C96687" "median fluorescence intensity" "synonym"))
  ("MAH"
   ("mah" "MAH" "EFO:0004011" "major histocompatibility congenic strain"
    "EXACT synonym" "NCIT:C154016" "marshallese language" "synonym"))
  ("LOD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("JMN"
   ("jmn" "JMN" "CVCL:M005" "JMN" "name" "CVCL:B332" "Jurkat-JMN"
    "RELATED synonym"))
  ("IVIS"
   ("ivis" "IVIS" "NCIT:C113876"
    "impact of visual impairment scale questionnaire" "synonym" "NCIT:C113876"
    "impact of visual impairment scale questionnaire" "synonym"))
  ("IVC"
   ("ivc" "IVC" "NCIT:C124423" "inspiratory vital capacity" "synonym"
    "NCIT:C124423" "inspiratory vital capacity" "synonym"))
  ("IUGR"
   ("iugr" "IUGR" "NCIT:C114875" "fetus small for gestational age" "synonym"
    "NCIT:C114875" "fetus small for gestational age" "synonym"))
  ("IUD"
   ("iud" "IUD" "NCIT:C42771" "intrauterine device" "synonym" "NCIT:C42771"
    "intrauterine device" "synonym" "NCIT:C47915"
    "intrauterine device dosage form" "synonym" "NCIT:C47915"
    "intrauterine device dosage form" "synonym" "NCIT:C50620"
    "intrauterine fetal death" "synonym"))
  ("IRB"
   ("irb" "IRB" "NCIT:C16741" "institutional review board" "synonym"
    "NCIT:C16741" "institutional review board" "synonym"))
  ("INR"
   ("inr" "INR" "NCIT:C25352" "international normalized ratio" "synonym"
    "NCIT:C64805" "international normalized ratio of prothrombin time"
    "synonym"))
  ("IIIA"
   ("iiia" "IIIA" "NCIT:C88137" "stage IIIA uveal melanoma AJCC v7" "synonym"
    "NCIT:C133422" "pathologic stage IIIA esophageal adenocarcinoma AJCC v8"
    "synonym" "NCIT:C133537"
    "pathologic stage IIIA esophageal squamous cell carcinoma AJCC v8"
    "synonym" "NCIT:C133665" "pathologic stage IIIA gastric cancer AJCC v8"
    "synonym" "NCIT:C134521" "stage IIIA hepatocellular carcinoma AJCC v8"
    "synonym" "NCIT:C134748" "stage IIIA hilar cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134762"
    "stage IIIA intrahepatic cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134818" "stage IIIA distal bile duct cancer AJCC v8" "synonym"
    "NCIT:C139750" "stage IIIA cervical cancer AJCC v8" "synonym"
    "NCIT:C140170" "stage IIIA prostate cancer AJCC v8" "synonym"
    "NCIT:C140422" "stage IIIA bladder cancer AJCC v8" "synonym"))
  ("IIA"
   ("iia" "IIA" "NCIT:C88135" "stage IIA uveal melanoma AJCC v7" "synonym"
    "NCIT:C133419" "pathologic stage IIA esophageal adenocarcinoma AJCC v8"
    "synonym" "NCIT:C133534"
    "pathologic stage IIA esophageal squamous cell carcinoma AJCC v8" "synonym"
    "NCIT:C133660" "pathologic stage IIA gastric cancer AJCC v8" "synonym"
    "NCIT:C134815" "stage IIA distal bile duct cancer AJCC v8" "synonym"
    "NCIT:C139744" "stage IIA cervical cancer AJCC v8" "synonym" "NCIT:C140166"
    "stage IIA prostate cancer AJCC v8" "synonym"))
  ("IFNGR"
   ("ifngr" "IFNGR" "FPLX:Interferon_gamma_receptor"
    "Interferon-gamma-receptor" "EXACT synonym" "HGNC:5439 G"
    "interferon gamma receptor 1" "Previous Symbol" "NCIT:C51354" "IFNGR1"
    "synonym"))
  ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
  ("ICH"
   ("ich" "ICH" "NCIT:C96146" "ICH temperature/Humidity storage condition"
    "synonym" "NCIT:C152982" "COL4A2" "synonym"))
  ("ICF"
   ("icf" "ICF" "CVCL:M423" "ICF" "name" "NCIT:C16468" "consent form" "synonym"
    "NCIT:C26112" "DNA (Cytosine-5)-methyltransferase 3B" "synonym"))
  ("IBS"
   ("ibs" "IBS" "EFO:0000555" "irritable bowel syndrome" "EXACT synonym"
    "NCIT:C82343" "irritable bowel syndrome" "synonym" "NCIT:C82343"
    "irritable bowel syndrome" "synonym"))
  ("IAH"
   ("iah" "IAH" "GO:0043864" "indoleacetamide hydrolase activity"
    "EXACT synonym" "UP:Q04557" "Indoleacetamide hydrolase" "RecName: Short"
    "UP:etc" "" "fake" "NCIT:C14481" "IAH mouse" "synonym"))
  ("IACUC"
   ("iacuc" "IACUC" "NCIT:C19487" "institutional animal care and use committee"
    "synonym" "NCIT:C90398" "IACUC number" "synonym"))
  ("HYPD"
   ("hypd" "HYPD" "HGNC:6801 G" "MAGE family member A3" "Synonym" "NCIT:C54307"
    "MAGEA3" "synonym" "," "HypD" "XFAM:PF01924 Family" "HypD" "ID"))
  ("HUS"
   ("hus" "HUS" "HGNC:4883 G" "complement factor H" "Synonym" "NCIT:C75545"
    "hemolytic uremic syndrome" "synonym" "NCIT:C97210" "CFH" "synonym"))
  ("HRV"
   ("hrv" "HRV" "NCIT:C16474" "croatia" "synonym" "NCIT:C16474" "croatia"
    "synonym" "NCIT:C153950" "croatian language" "synonym"))
  ("HMAF"
   ("hmaf" "HMAF" "NCIT:C1717" "irofulven" "synonym" "NCIT:C1717" "irofulven"
    "synonym" "," "hMAF" "UP:O15525 H" "Transcription factor MafG"
    "AltName: Full" "NCIT:C18047" "transcription factor mafG" "synonym"))
  ("HIPAA"
   ("hipaa" "HIPAA" "NCIT:C62504"
    "health insurance portability and accountability act" "synonym"
    "NCIT:C62504" "health insurance portability and accountability act"
    "synonym"))
  ("HCG"
   ("hcg" "HCG" "HGNC:1885 G" "glycoprotein hormones, alpha polypeptide"
    "Synonym" "HGNC:16452 G" "chorionic gonadotropin subunit beta 5" "Synonym"
    "NCIT:C64851" "choriogonadotropin beta measurement" "synonym"
    "NCIT:C111821" "HTC2 gene" "synonym" "NCIT:C129841" "CGA" "synonym" ","
    "HcG" "UP:Q9NFL4" "Hemocyanin G chain" "RecName: Short" "," "hCG"
    "FPLX:hCG" "hCG" "name" "NCIT:C528"
    "recombinant human chorionic gonadotropin" "synonym" "NCIT:C2275"
    "human chorionic gonadotropin" "synonym"))
  ("HCB"
   ("hcb" "HCB" "CHEBI:5692" "hexachlorobenzene" "RELATED synonym"
    "NCIT:C44388" "hexachlorobenzene" "synonym" "," "HcB" "UP:Q9NFH9"
    "Hemocyanin B chain" "RecName: Short"))
  ("HADS"
   ("hads" "HADS" "MESH:C018209" "4-amino-4'-hydroxylaminodiphenylsulfone" "SY"
    "NCIT:C103520" "hospital anxiety and depression scale questionnaire"
    "synonym" "NCIT:C103520"
    "hospital anxiety and depression scale questionnaire" "synonym"))
  ("HAART"
   ("haart" "HAART" "NCIT:C16165" "highly active antiretroviral therapy"
    "synonym" "NCIT:C16165" "highly active antiretroviral therapy" "synonym"))
  ("FVC"
   ("fvc" "FVC" "EFO:0004312" "vital capacity" "EXACT synonym" "NCIT:C111361"
    "forced vital capacity" "synonym" "NCIT:C111361" "forced vital capacity"
    "synonym"))
  ("FMD"
   ("fmd" "FMD" "NCIT:C113586" "FLNA" "synonym" "NCIT:C124262"
    "flow-mediated vasodilation" "synonym"))
  ("FFS"
   ("ffs" "FFS" "Orphanet:1988" "Femoral-facial syndrome" "EXACT synonym"
    "NCIT:C17752" "fee for service payment method" "synonym"))
  ("FDA"
   ("fda" "FDA" "UP:P81543" "Zinc-containing ferredoxin A" "RecName: Short"
    "NCIT:C17237" "food and drug administration" "synonym" "NCIT:C17237"
    "food and drug administration" "synonym"))
  ("FCR"
   ("fcr" "FCR" "NCIT:C63755" "FCR regimen" "synonym" "," "FcR" "NCIT:C17070"
    "Fc receptor" "synonym"))
  ("FAQ"
   ("faq" "FAQ" "NCIT:C111381" "functional activities questionnaire" "synonym"
    "NCIT:C111381" "functional activities questionnaire" "synonym"))
  ("FAO"
   ("fao" "FAO" "NCIT:C68657"
    "food and agriculture organization of the united nations" "synonym"
    "NCIT:C153915" "faroese language" "synonym" "," "FaO" "CVCL:0269" "Fao"
    "name"))
  ("EVE"
   ("eve" "EVE" "UP:A1YPR3" "2-epi-5-epi-valiolone epimerase" "RecName: Short"
    "XFAM:PF01878 Domain" "EVE" "ID" "," "Eve" "CHEBI:132237"
    "rac-3,4-methylenedioxy-N-ethylamphetamine" "RELATED synonym"))
  ("ETV"
   ("etv" "ETV" "NCIT:C65513" "entecavir" "synonym" "NCIT:C73195" "etravirine"
    "synonym"))
  ("ERV"
   ("erv" "ERV" "NCIT:C14334" "endogenous retrovirus" "synonym" "NCIT:C111200"
    "expiratory reserve volume" "synonym" "NCIT:C111200"
    "expiratory reserve volume" "synonym"))
  ("ERGIC"
   ("ergic" "ERGIC" "GO:0005793"
    "endoplasmic reticulum-Golgi intermediate compartment" "EXACT synonym"
    "UP:SL-0098 D" "Endoplasmic reticulum-Golgi intermediate compartment" "SY"
    "FA:01131" "ERGIC family" "ID"))
  ("ERCP"
   ("ercp" "ERCP" "NCIT:C16430"
    "endoscopic retrograde cholangiopancreatography" "synonym" "NCIT:C16430"
    "endoscopic retrograde cholangiopancreatography" "synonym"))
  ("EJM"
   ("ejm" "EJM" "CVCL:2030" "EJM" "name" "EFO:0006572" "EJM" "name"
    "HGNC:16406 G" "EF-hand domain containing 1" "Previous Symbol"))
  ("EDSS"
   ("edss" "EDSS" "Orphanet:247820"
    "Ectodermal dysplasia - syndactyly syndrome" "EXACT synonym" "NCIT:C98302"
    "expanded disability status scale" "synonym" "NCIT:C112520"
    "kurtzke expanded disability status scale questionnaire" "synonym"
    "NCIT:C112520" "kurtzke expanded disability status scale questionnaire"
    "synonym"))
  ("EBA"
   ("eba" "EBA" "EFO:1000691" "epidermolysis bullosa acquisita" "EXACT synonym"
    "NCIT:C84690" "epidermolysis bullosa acquisita" "synonym"))
  ("DVT"
   ("dvt" "DVT" "NCIT:C49343" "deep vein thrombosis" "synonym" "NCIT:C49343"
    "deep vein thrombosis" "synonym" "NCIT:C115686"
    "data validation test document" "synonym"))
  ("DVD"
   ("dvd" "DVD" "NCIT:C10105" "cisplatin/Dacarbazine/Etoposide" "synonym"
    "NCIT:C113828"
    "bortezomib/Dexamethasone/Pegylated liposomal doxorubicin regimen"
    "synonym" "NCIT:C136267" "daratumumab/Bortezomib/Dexamethasone regimen"
    "synonym"))
  ("DSMB"
   ("dsmb" "DSMB" "NCIT:C94204" "data and safety monitoring board" "synonym"
    "NCIT:C115556" "clinical trial oversight committee information" "synonym"))
  ("DRC"
   ("drc" "DRC" "NCIT:C14776" "DRC mouse" "synonym" "NCIT:C160556"
    "cyclophosphamide/Dexamethasone/Rituximab regimen" "synonym"))
  ("DOPG"
   ("dopg" "DOPG" "CHEBI:60426" "dioleoyl phosphatidylglycerol"
    "RELATED synonym" "MESH:C051388"
    "1,2-dioleoyl-sn-glycero-3-phosphoglycerol" "SY" "NCIT:C14899" "DOPG mouse"
    "synonym"))
  ("DNP"
   ("dnp" "DNP" "CHEBI:53018" "2,4-dinitrophenyl group" "RELATED synonym"
    "NCIT:C2478" "dinitrophenyl" "synonym"))
  ("DMXAA"
   ("dmxaa" "DMXAA" "MESH:C066668" "vadimezan" "SY" "NCIT:C2504" "vadimezan"
    "synonym"))
  ("DMAPP"
   ("dmapp" "DMAPP" "CHEBI:16057" "prenyl diphosphate" "RELATED synonym"
    "MESH:C043060" "3,3-dimethylallyl pyrophosphate" "SY"))
  ("DJS"
   ("djs" "DJS" "CVCL:E564" "DJS" "name" "HGNC:53 G"
    "ATP binding cassette subfamily C member 2" "Synonym" "NCIT:C103883"
    "ABCC2" "synonym"))
  ("DGE"
   ("dge" "DGE" "CHEBI:88000" "Asp-Gly-Glu" "RELATED synonym" "," "DgE"
    "CVCL:Z423" "UMC-DgE" "RELATED synonym"))
  ("DEAE"
   ("deae" "DEAE" "CHEBI:52153" "2-diethylaminoethanol" "RELATED synonym"
    "MESH:C007369" "2-diethylaminoethanol" "SY"))
  ("CXR"
   ("cxr" "CXR" "NCIT:C44482" "christmas island" "synonym" "NCIT:C44482"
    "christmas island" "synonym"))
  ("CTPA"
   ("ctpa" "CTPA" "MESH:C074011"
    "4-((1,4,8,11-tetraazacyclotetradec-1-yl)methyl)benzoic acid" "SY"
    "NCIT:C51755" "EPHA2" "synonym" "," "ctpA" "UP:P42784"
    "Carboxyl-terminal-processing protease" "AltName: Full" "UP:Q55669"
    "Carboxyl-terminal-processing protease" "AltName: Full"))
  ("CSS"
   ("css" "CSS" "EFO:0004004" "consomic strain" "EXACT synonym" "Orphanet:1465"
    "Coffin-Siris syndrome" "EXACT synonym"))
  ("COG"
   ("cog" "COG" "NCIT:C16467" "congo" "synonym" "NCIT:C16467" "congo" "synonym"
    "NCIT:C19640" "clusters of orthologous groups of genes" "synonym"
    "NCIT:C39353" "children's oncology group" "synonym"))
  ("CNV"
   ("cnv" "CNV" "NCIT:C40207" "copy number polymorphism" "synonym"
    "NCIT:C40207" "copy number polymorphism" "synonym"))
  ("CMV"
   ("cmv" "CMV" "NCIT:C9717" "MCV regimen" "synonym" "NCIT:C9798"
    "cyclophosphamide/Etoposide/Methotrexate" "synonym" "NCIT:C14196"
    "cytomegalovirus" "synonym" "NCIT:C14196" "cytomegalovirus" "synonym"))
  ("CMC"
   ("cmc" "CMC" "CHEBI:85146" "carboxymethylcellulose" "RELATED synonym"
    "Orphanet:1334" "Chronic mucocutaneous candidosis" "EXACT synonym"
    "FA:04991" "CMC family" "ID" "NCIT:C9610" "CMC regimen" "synonym"
    "NCIT:C9610" "CMC regimen" "synonym" "NCIT:C118497"
    "circulating melanoma cell" "synonym" "NCIT:C159858"
    "cleveland multiport catheter" "synonym"))
  ("CLY"
   ("cly" "CLY" "CVCL:IQ58" "CLY" "name" "," "ClY" "CHEBI:53678"
    "3-chloro-L-tyrosine" "RELATED synonym"))
  ("CHINA"
   ("china" "CHINA" "NCIT:C16428" "china" "synonym" "NCIT:C16428" "china"
    "synonym" "," "china" "NCIT:C16428" "china" "name"))
  ("CGI"
   ("cgi" "CGI" "NCIT:C54668" "CpG island" "synonym" "NCIT:C135738"
    "clinical global impression generic modification version questionnaire"
    "synonym"))
  ("CGAT"
   ("cgat" "CGAT" "HGNC:10934 G" "solute carrier family 18 member A1" "Synonym"
    "NCIT:C107578" "SLC18A1" "synonym"))
  ("CFSE"
   ("cfse" "CFSE" "CHEBI:132203" "6-carboxyfluorescein succinimidyl ester"
    "RELATED synonym" "MESH:C087165"
    "5-(6)-carboxyfluorescein diacetate succinimidyl ester" "SY"))
  ("CEP"
   ("cep" "CEP" "Orphanet:79277" "Congenital erythropoietic porphyria"
    "EXACT synonym" "NCIT:C84697" "erythropoietic porphyria" "synonym"
    "NCIT:C124145" "endothelial progenitor cell" "synonym"))
  ("CEG"
   ("ceg" "CEG" "CHEBI:34613" "cefaloglycin" "RELATED synonym" "NCIT:C17879"
    "cisplatin-E therapeutic implant" "synonym"))
  ("CCV"
   ("ccv" "CCV" "UP:SL-0070 D" "Clathrin-coated vesicle" "SY" "NCIT:C9543"
    "cyclophosphamide/Lomustine/Vincristine" "synonym"))
  ("CCM"
   ("ccm" "CCM" "CVCL:R825" "CCM" "name" "CVCL:2613" "MOG-G-CCM"
    "RELATED synonym" "NCIT:C10276" "cytarabine/Methotrexate" "synonym"))
  ("CCH"
   ("cch" "CCH" "CVCL:RL59" "CCH" "name" "NCIT:C54183"
    "columnar cell hyperplasia of the breast" "synonym"))
  ("CALB"
   ("calb" "CALB" "HGNC:1434 G" "calbindin 1" "Previous Symbol" "UP:P41365"
    "Lipase B" "AltName: Full" "NCIT:C125942" "calbindin measurement"
    "synonym"))
  ("BSL"
   ("bsl" "BSL" "NCIT:C71352" "bachelor of science in law" "synonym"
    "NCIT:C151920" "biosafety level" "synonym"))
  ("BSI"
   ("bsi" "BSI" "Orphanet:100976" "Bathing suit ichthyosis" "EXACT synonym"
    "NCIT:C114183" "boundary shift integral" "synonym" "NCIT:C114183"
    "boundary shift integral" "synonym" "NCIT:C121301"
    "behavioral symptoms index composite score" "synonym" "," "BSi"
    "CHEBI:64389" "biogenic silica" "RELATED synonym"))
  ("BPA"
   ("bpa" "BPA" "CHEBI:33216" "bisphenol A" "RELATED synonym" "HGNC:1090 G"
    "dystonin" "Synonym" "UP:Q03001 H" "Dystonin" "AltName: Short"
    "UP:Q91ZU6 M" "Dystonin" "AltName: Short" "UP:Q9PTU8"
    "Snake venom serine protease BPA" "AltName: Short" "NCIT:C104890" "DST"
    "synonym" "NCIT:C152071" "bisphenol A" "synonym"))
  ("BMA"
   ("bma" "BMA" "CVCL:IW58" "BMA3.1A7" "RELATED synonym" "UP:P42088" "Lectin"
    "AltName: Full"))
  ("BLR"
   ("blr" "BLR" "NCIT:C16372" "belarus" "synonym" "NCIT:C16372" "belarus"
    "synonym"))
  ("BLN"
   ("bln" "BLN" "NCIT:C14935" "BLN mouse" "synonym" "," "BLn" "CVCL:3655" "BLn"
    "name"))
  ("BJAB"
   ("bjab" "BJAB" "EFO:0002815" "BJAB" "name" "," "BJAb" "CVCL:5711" "BJAB"
    "name"))
  ("BES"
   ("bes" "BES" "CHEBI:39043" "BES" "name" "CHEBI:39041"
    "2-[bis(2-hydroxyethyl)amino]ethanesulfonic acid" "RELATED synonym"
    "MESH:C012210" "BES" "NM" "NCIT:C101224" "bonaire, sint eustatius and saba"
    "synonym" "NCIT:C101224" "bonaire, sint eustatius and saba" "synonym"))
  ("BCV"
   ("bcv" "BCV" "NCIT:C73198" "buciclovir" "synonym" "NCIT:C90587"
    "brincidofovir" "synonym"))
  ("BCS"
   ("bcs" "BCS" "HGNC:1020 G"
    "BCS1 homolog, ubiquinol-cytochrome c reductase complex chaperone"
    "Synonym" "NCIT:C15280" "breast conservation treatment" "synonym"))
  ("BCL"
   ("bcl" "BCL" "NCIT:C18512" "BCL1 oncogene" "synonym" "NCIT:C142819"
    "breast cancer locator" "synonym"))
  ("BBB"
   ("bbb" "BBB" "NCIT:C13194" "blood-brain barrier" "synonym" "NCIT:C13194"
    "blood-brain barrier" "synonym"))
  ("BADH"
   ("badh" "BADH" "GO:0008802" "betaine-aldehyde dehydrogenase activity"
    "EXACT synonym" "UP:Q9S795 C"
    "Betaine aldehyde dehydrogenase 1, chloroplastic" "RecName: Short"
    "UP:Q9STS1 C" "Betaine aldehyde dehydrogenase 2, mitochondrial"
    "RecName: Short" "UP:Q40024 B" "Betaine aldehyde dehydrogenase"
    "RecName: Short"))
  ("AVE"
   ("ave" "AVE" "BTO:0003361" "anterior visceral endoderm" "RELATED synonym"
    "NCIT:C9684" "cyclophosphamide/Doxorubicin/Etoposide" "synonym"))
  ("ATG"
   ("atg" "ATG" "NCIT:C278" "anti-thymocyte globulin" "synonym" "NCIT:C16303"
    "antigua and barbuda" "synonym" "NCIT:C16303" "antigua and barbuda"
    "synonym"))
  ("AMC"
   ("amc" "AMC" "Orphanet:1037" "Arthrogryposis multiplex congenita"
    "EXACT synonym" "NCIT:C19707" "AIDS malignancy consortium" "synonym"))
  ("AHX"
   ("ahx" "AHX" "NCIT:C75865" "NR0B1" "synonym" "," "Ahx" "CHEBI:16586"
    "6-aminohexanoic acid" "RELATED synonym"))
  ("ABV"
   ("abv" "ABV" "NCIT:C9651" "bleomycin/Doxorubicin/Vinblastine" "synonym"
    "NCIT:C10188" "bleomycin/Doxorubicin/Vincristine" "synonym")))
)

(defparameter *single-defs* 
'(("polA"
   ("pola" "POLA" "HGNC:9173 G" "DNA polymerase alpha 1, catalytic subunit"
    "Previous Symbol"))
  ("pagA" ("paga" "PAGA" "HGNC:9352 G" "peroxiredoxin 1" "Previous Symbol"))
  ("nAAA"
   ("naaa" "NAAA" "HGNC:736 G" "N-acylethanolamine acid amidase"
    "Approved Symbol"))
  ("mMAb"
   ("mmab" "MMAB" "HGNC:19331 G" "metabolism of cobalamin associated B"
    "Approved Symbol"))
  ("lysoPC" ("lysopc" "LYSO-PC" "MESH:C006065" "We 201" "SY"))
  ("hLFA" ("hlfa" "HLFa" "CVCL:2255" "HLF-a" "name"))
  ("fNS" ("fns" "FNS" "CVCL:6392" "FNS" "name"))
  ("argK" ("argk" "ArgK" "XFAM:PF03308 Domain" "MeaB" "PI"))
  ("aNI"
   ("ani" "ANI" "EFO:0007983" "asymptomatic neurocognitive impairment"
    "EXACT synonym"))
  ("Yamato" ("yamato" "YAMATO" "CVCL:6C44" "Yamato-SS" "RELATED synonym"))
  ("Whrn" ("whrn" "WHRN" "HGNC:16361 G" "whirlin" "Approved Symbol"))
  ("TZMbl" ("tzmbl" "TZM-bl" "CVCL:B478" "TZM-bl" "name"))
  ("SPdb" ("spdb" "SpdB" "XFAM:PF05122 Domain" "SpdB" "ID"))
  ("RBs"
   ("rbs" "RBS" "HGNC:27230 G"
    "establishment of sister chromatid cohesion N-acetyltransferase 2"
    "Previous Symbol"))
  ("PCNs"
   ("pcns" "PCNS" "UP:Q7SZN0"
    "Venom prothrombin activator pseutarin-C non-catalytic subunit"
    "RecName: Short"))
  ("Nha" ("nha" "NHA" "EFO:0002777" "Normal Human Astrocytes" "EXACT synonym"))
  ("NNs"
   ("nns" "NNS" "Orphanet:2615" "Nakajo-Nishimura syndrome" "EXACT synonym"))
  ("Mvi"
   ("mvi" "M-VI" "UP:Q9I834" "Basic phospholipase A2 homolog 2"
    "AltName: Full"))
  ("MDCKs" ("mdcks" "MDCK-S" "CVCL:IQ72" "MDCK-S" "name"))
  ("LCs" ("lcs" "L-CS" "CHEBI:75592" "L-cycloserine" "RELATED synonym"))
  ("Klee" ("klee" "KleE" "XFAM:PF17394 Family" "KleE" "ID"))
  ("Kkm" ("kkm" "KKm" "CVCL:HF89" "KK-m" "name"))
  ("KVh" ("kvh" "kVh" "UO:0000230" "kilovolt-hour" "EXACT synonym"))
  ("Joe" ("joe" "JO-E" "CVCL:0C16" "JO-E" "name"))
  ("Iik"
   ("iik" "IIK" "UP:P01080" "Proteinase inhibitor type-2 K" "AltName: Short"))
  ("Hokkaido" ("hokkaido" "HOKKAIDO" "CVCL:E702" "HOKKAIDO" "name"))
  ("Hoi" ("hoi" "HOI" "CHEBI:29231" "hypoiodous acid" "RELATED synonym"))
  ("Gne"
   ("gne" "GNE" "HGNC:23657 G"
    "glucosamine (UDP-N-acetyl)-2-epimerase/N-acetylmannosamine kinase"
    "Approved Symbol"))
  ("GAii" ("gaii" "GAII" "UP:P29760" "Glucoamylase S2" "AltName: Full"))
  ("Fdx" ("fdx" "FDX" "HGNC:3638 G" "ferredoxin 1" "Previous Symbol"))
  ("EcoR"
   ("ecor" "ecoR" "UP:P30823" "High affinity cationic amino acid transporter 1"
    "AltName: Short"))
  ("EOCa"
   ("eoca" "EOCA" "Orphanet:1177"
    "Early-onset cerebellar ataxia with retained tendon reflexes"
    "EXACT synonym"))
  ("Dem" ("dem" "DEM" "CVCL:E559" "DEM" "name"))
  ("Dali"
   ("dali" "DALI" "HGNC:51429 R"
    "DNMT1-associated long intergenic non-coding RNA" "Synonym"))
  ("DLPs"
   ("dlps" "DLPS" "CHEBI:65224" "1,2-dilauroyl-sn-glycero-3-phosphoserine(1-)"
    "RELATED synonym"))
  ("Crea" ("crea" "CreA" "XFAM:PF05981 Family" "CreA" "ID"))
  ("CEMss" ("cemss" "CEM-ss" "CVCL:J318" "CEM-SS" "name"))
  ("Brant"
   ("brant" "Br-ANT" "MESH:C099521"
    "2-aminobenzoic acid 2-(bromoacetyl)hydrazide" "SY"))
  ("xls"
   ("xls" "XLS" "HGNC:27849 G" "PAXX non-homologous end joining factor"
    "Synonym"))
  ("volvulus"
   ("volvulus" "Volvulus" "EFO:1000989" "intestinal volvulus" "EXACT synonym"))
  ("virgo" ("virgo" "Virgo" "CVCL:E027" "PAE-iPS-6" "RELATED synonym"))
  ("viii"
   ("viii" "VIII" "HGNC:2294 G" "cytochrome c oxidase subunit 8A" "Synonym"))
  ("tripeptide" ("tripeptide" "Tripeptide" "CHEBI:47923" "tripeptide" "name"))
  ("tomatine" ("tomatine" "Tomatine" "CHEBI:9630" "tomatine" "name"))
  ("thioether"
   ("thioether" "Thioether" "CHEBI:16385" "organic sulfide" "RELATED synonym"))
  ("tetrapeptide"
   ("tetrapeptide" "Tetrapeptide" "CHEBI:48030" "tetrapeptide" "name"))
  ("tele" ("tele" "TELE" "HGNC:11610 G" "titin-cap" "Synonym"))
  ("sync"
   ("sync" "SYNC" "HGNC:28897 G" "syncoilin, intermediate filament protein"
    "Approved Symbol"))
  ("sterol" ("sterol" "Sterol" "CHEBI:15889" "sterol" "name"))
  ("spongouridine"
   ("spongouridine" "Spongouridine" "CHEBI:68346" "arauridine"
    "RELATED synonym"))
  ("spongothymidine"
   ("spongothymidine" "Spongothymidine" "CHEBI:80699" "Spongothymidine"
    "name"))
  ("solexa" ("solexa" "Solexa" "PC:2662" "Celecoxib" "Alternative Name"))
  ("prix" ("prix" "PriX" "XFAM:PF18689 Domain" "PriX" "ID"))
  ("preset" ("preset" "pre-SET" "XFAM:PF05033 Family" "pre-SET" "ID"))
  ("popg"
   ("popg" "POPG" "CHEBI:34080"
    "1-palmitoyl-2-oleoyl-sn-glycero-3-phosphoglycerol" "RELATED synonym"))
  ("pika"
   ("pika" "PIKA" "HGNC:26810 G"
    "EGF like, fibronectin type III and laminin G domains" "Synonym"))
  ("pepo" ("pepo" "PEPO" "UP:Q06902" "Aspergillopepsin-1" "AltName: Short"))
  ("pentylenetetrazole"
   ("pentylenetetrazole" "Pentylenetetrazole" "CHEBI:34910" "pentetrazol"
    "RELATED synonym"))
  ("ora"
   ("ora" "ORA" "UP:P16405" "Octapeptide-repeat antigen" "RecName: Short"))
  ("oophoritis" ("oophoritis" "Oophoritis" "EFO:1001071" "oophoritis" "name"))
  ("oooh" ("oooh" "-OOOH" "CHEBI:29791" "trioxidanyl group" "RELATED synonym"))
  ("niob" ("niob" "Niob" "CHEBI:33344" "niobium atom" "RELATED synonym"))
  ("nido" ("nido" "NIDO" "XFAM:PF06119 Family" "NIDO" "ID"))
  ("neokauluamine"
   ("neokauluamine" "neo-kauluamine" "MESH:C436388" "neo-kauluamine" "NM"))
  ("msu"
   ("msu" "MSU" "HGNC:986 G"
    "branched chain keto acid dehydrogenase E1 subunit alpha" "Synonym"))
  ("lipofectin"
   ("lipofectin" "Lipofectin" "MESH:C020888"
    "1,2-dielaidoylphosphatidylethanolamine" "SY"))
  ("kvh" ("kvh" "kVh" "UO:0000230" "kilovolt-hour" "EXACT synonym"))
  ("kma" ("kma" "KMA" "CVCL:6413" "KMA" "name"))
  ("jma" ("jma" "JMA" "CVCL:HA40" "JMA" "name"))
  ("ischaemia"
   ("ischaemia" "Ischaemia" "EFO:0000556" "ischemia" "EXACT synonym"))
  ("gne"
   ("gne" "GNE" "HGNC:23657 G"
    "glucosamine (UDP-N-acetyl)-2-epimerase/N-acetylmannosamine kinase"
    "Approved Symbol"))
  ("ggd" ("ggd" "GGD" "CVCL:6G51" "GGD" "name"))
  ("doxycyclin"
   ("doxycyclin" "Doxycyclin" "CHEBI:50845" "doxycycline" "RELATED synonym"))
  ("dmax" ("dmax" "dMax" "UP:P91664" "Protein max" "RecName: Short"))
  ("dioleoylphosphatidylethanolamine"
   ("dioleoylphosphatidylethanolamine" "Dioleoylphosphatidylethanolamine"
    "CHEBI:60285" "dioleoyl phosphatidylethanolamine" "RELATED synonym"))
  ("diacetylchitobiose"
   ("diacetylchitobiose" "Diacetylchitobiose" "CHEBI:28681"
    "N,N'-diacetylchitobiose" "RELATED synonym"))
  ("deoxynucleoside"
   ("deoxynucleoside" "Deoxynucleoside" "CHEBI:18274" "2'-deoxyribonucleoside"
    "RELATED synonym"))
  ("cystein" ("cystein" "Cystein" "CHEBI:15356" "cysteine" "RELATED synonym"))
  ("chloromycetin"
   ("chloromycetin" "Chloromycetin" "CHEBI:17698" "chloramphenicol"
    "RELATED synonym"))
  ("cbil"
   ("cbil" "CbiL" "GO:0043781"
    "cobalt-factor II C20-methyltransferase activity" "NARROW synonym"))
  ("carbofuran" ("carbofuran" "Carbofuran" "CHEBI:34611" "carbofuran" "name"))
  ("candidemia" ("candidemia" "Candidemia" "EFO:1001282" "Candidemia" "name"))
  ("cand" ("cand" "CAND" "FA:00453" "CAND family" "ID"))
  ("bpq"
   ("bpq" "BPQ" "CHEBI:87752" "benzo[a]pyrene-7,8-dione" "RELATED synonym"))
  ("amantidine"
   ("amantidine" "Amantidine" "CHEBI:2618" "amantadine" "RELATED synonym"))
  ("aldicarb" ("aldicarb" "Aldicarb" "CHEBI:2555" "aldicarb" "name"))
  ("VLF"
   ("vlf" "VlF" "UP:P83255" "Snake venom metalloproteinase fibrolase"
    "AltName: Full"))
  ("WTA" ("wta" "WTa" "CVCL:RN16" "UTA.00112.hFF" "RELATED synonym"))
  ("VELVET" ("velvet" "velvet" "XFAM:PF11754 Family" "velvet" "ID"))
  ("TTT" ("ttt" "T-T-T" "CHEBI:144905" "Thr-Thr-Thr" "RELATED synonym"))
  ("SECA" ("seca" "SecA" "XFAM:PF01043 Domain" "SecA PP bind" "PI"))
  ("PROTEC"
   ("protec" "ProTec" "CHEBI:143527" "(R)-lisofylline" "RELATED synonym"))
  ("PPQ" ("ppq" "ppq" "UO:0000172" "parts per quadrillion" "EXACT synonym"))
  ("NPHII" ("nphii" "NPH-II" "XFAM:PF12011 Family" "NPH-II" "ID"))
  ("MVI"
   ("mvi" "M-VI" "UP:Q9I834" "Basic phospholipase A2 homolog 2"
    "AltName: Full"))
  ("MGD" ("mgd" "MGd" "CHEBI:50161" "motexafin gadolinium" "RELATED synonym"))
  ("LIBRA" ("libra" "Libra" "CVCL:E028" "PAE-iPS-7" "RELATED synonym"))
  ("KHR" ("khr" "KH-R" "CVCL:G348" "KH-R" "name"))
  ("JYS" ("jys" "JY-S" "CVCL:0108" "JY" "RELATED synonym"))
  ("IMOD" ("imod" "IMod" "MESH:C555145" "setarud" "SY"))
  ("GUA" ("gua" "Gua" "CHEBI:16235" "guanine" "RELATED synonym"))
  ("GATAN" ("gatan" "GATA-N" "XFAM:PF05349 Family" "GATA-N" "ID"))
  ("ENCAD" ("encad" "Encad" "MESH:C031373" "ENKAD" "SY"))
  ("DXP" ("dxp" "DxP" "CVCL:4T94" "MES-SA/DxP5002" "RELATED synonym"))
  ("DSPC" ("dspc" "DSPc" "XFAM:PF00782 Domain" "DSPc" "ID"))
  ("DALT" ("dalt" "D-Alt" "CHEBI:28385" "D-altrose" "RELATED synonym"))
  ("CSI" ("csi" "CS-I" "UP:P07469" "Corticostatin 1" "AltName: Short"))
  ("COOT" ("coot" "CooT" "XFAM:PF10133 Family" "CooT" "ID"))
  ("CHAPSO" ("chapso" "chapso" "MESH:C048531" "chapso" "NM"))
  ("CESA" ("cesa" "CesA" "XFAM:PF11439 Family" "T3SchapCesA" "PI"))
  ("BPL" ("bpl" "BpL" "UP:P86970" "C-type lectin BpLec" "RecName: Short"))
  ("AZC" ("azc" "Az-C" "CHEBI:53088" "alizarin complexone" "RELATED synonym"))
  ("ARMC" ("armc" "ARM-C" "CVCL:IW83" "ARM-C" "name"))
  ("APEC" ("apec" "ApeC" "XFAM:PF16977 Family" "ApeC" "ID")))
)

(defparameter *ncit-defs* 
'(("rDC" ("rdc" "RDC" "NCIT:C1462" "radicicol" "synonym"))
  ("gSi" ("gsi" "GSI" "NCIT:C80712" "grid security infrastructure" "synonym"))
  ("nPCR"
   ("npcr" "NPCR" "NCIT:C141462" "national program of cancer registries"
    "synonym"))
  ("iHOP"
   ("ihop" "IHOP" "NCIT:C9910" "doxorubicin/Ifosfamide/Prednisone/Vincristine"
    "synonym"))
  ("UniProt"
   ("uniprot" "uniProt" "NCIT:C43579" "universal protein resource" "synonym"))
  ("Twentysix"
   ("twentysix" "twenty-six" "NCIT:C126886" "twenty six" "synonym"))
  ("Twentyfour"
   ("twentyfour" "twenty-four" "NCIT:C113753" "twenty four" "synonym"))
  ("ToBI"
   ("tobi" "TOBI" "NCIT:C158498" "tomographic optical breast imaging"
    "synonym"))
  ("TMDs"
   ("tmds" "t-MDS" "NCIT:C27722" "therapy-related myelodysplastic syndrome"
    "synonym"))
  ("SuperScript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("SignalP" ("signalp" "signalP" "NCIT:C49043" "signalP algorithm" "synonym"))
  ("Sig"
   ("sig" "SIG" "NCIT:C19782" "surveillance implementation group" "synonym"))
  ("RNAlater" ("rnalater" "RNALater" "NCIT:C63348" "RNALater" "name"))
  ("QoL" ("qol" "QOL" "NCIT:C17047" "quality of life" "synonym"))
  ("Progen" ("progen" "pro-gen" "NCIT:C29883" "arsanilic acid" "synonym"))
  ("Penh" ("penh" "PENH" "NCIT:C120937" "enhanced pause" "synonym"))
  ("Ngu" ("ngu" "NGU" "NCIT:C27079" "non-gonococcal urethritis" "synonym"))
  ("MedDRA" ("meddra" "medDRA" "NCIT:C43820" "medDRA" "name"))
  ("MIDs"
   ("mids" "MIDS" "NCIT:C162265" "disease milestone instance name" "synonym"))
  ("LOCs" ("locs" "LOCS" "NCIT:C137976" "LAMA3" "synonym"))
  ("Ira" ("ira" "IRA" "NCIT:C19333" "intramural research award" "synonym"))
  ("InterProScan"
   ("interproscan" "interProScan" "NCIT:C82965" "interProScan" "name"))
  ("Genbank" ("genbank" "genBank" "NCIT:C43818" "genBank" "name"))
  ("GenBank" ("genbank" "genBank" "NCIT:C43818" "genBank" "name"))
  ("Eudract"
   ("eudract" "eudraCT" "NCIT:C132782"
    "european union drug regulating authorities clinical trials database"
    "synonym"))
  ("Etest" ("etest" "E-test" "NCIT:C85596" "epsilometry" "synonym"))
  ("CtoT" ("ctot" "CTOT" "NCIT:C80160" "complement measurement" "synonym"))
  ("BioT" ("biot" "biot" "NCIT:C68907" "biot" "name"))
  ("AbD"
   ("abd" "ABD" "NCIT:C113506" "absence of biallelic TCRgamma deletion"
    "synonym"))
  ("www" ("www" "WWW" "NCIT:C20461" "world wide web" "synonym"))
  ("workup" ("workup" "work-up" "NCIT:C85833" "work-up" "name"))
  ("niaid"
   ("niaid" "NIAID" "NCIT:C19753"
    "national institute of allergy and infectious disease" "synonym"))
  ("vol" ("vol" "VOL" "NCIT:C74720" "volume measurement" "synonym"))
  ("univ" ("univ" "UNIV" "NCIT:C48647" "university" "synonym"))
  ("uniprot"
   ("uniprot" "uniProt" "NCIT:C43579" "universal protein resource" "synonym"))
  ("ucsc"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("trans" ("trans" "TRANS" "NCIT:C82567" "transition rule" "synonym"))
  ("tga" ("tga" "TGA" "NCIT:C75412" "TBX1" "synonym"))
  ("seq" ("seq" "SEQ" "NCIT:C70710" "sequence number" "synonym"))
  ("rast" ("rast" "RAST" "NCIT:C78179" "radioallergosorbent test" "synonym"))
  ("preterm" ("preterm" "pre-term" "NCIT:C92861" "preterm birth" "synonym"))
  ("pos" ("pos" "POS" "NCIT:C62164" "body position" "synonym"))
  ("pheno" ("pheno" "PHENO" "NCIT:C739" "phenobarbital" "synonym"))
  ("optiprep" ("optiprep" "optiPrep" "NCIT:C65931" "iodixanol" "synonym"))
  ("offsite" ("offsite" "off-site" "NCIT:C113778" "off-site" "name"))
  ("nlm" ("nlm" "NLM" "NCIT:C82620" "national library of medicine" "synonym"))
  ("ncbi"
   ("ncbi" "NCBI" "NCIT:C45799" "national center for biotechnology information"
    "synonym"))
  ("morph"
   ("morph" "MORPH" "NCIT:C159081" "GDC morphology terminology" "synonym"))
  ("lbs" ("lbs" "LBS" "NCIT:C99177" "liquid-based cytology" "synonym"))
  ("inhouse" ("inhouse" "In-house" "NCIT:C126386" "In-house" "name"))
  ("icm" ("icm" "ICM" "NCIT:C92684" "between breakfast and lunch" "synonym"))
  ("html" ("html" "HTML" "NCIT:C142380" "hypertext markup language" "synonym"))
  ("genbank" ("genbank" "genBank" "NCIT:C43818" "genBank" "name"))
  ("gastro"
   ("gastro" "GASTRO" "NCIT:C128681"
    "CDISC SDTM gastrointestinal test name terminology" "synonym"))
  ("ffu" ("ffu" "FFU" "NCIT:C75303" "focus forming unit" "synonym"))
  ("fasta" ("fasta" "FASTA" "NCIT:C47845" "FASTA format" "synonym"))
  ("facto" ("facto" "FACT-O" "NCIT:C64712" "FACT-O questionnaire" "synonym"))
  ("emer" ("emer" "EMER" "NCIT:C53513" "emergency room" "synonym"))
  ("comorbid"
   ("comorbid" "COMORBID" "NCIT:C159021" "GDC comorbidity terminology"
    "synonym"))
  ("codominant"
   ("codominant" "CO-DOMINANT" "NCIT:C99941" "Co-dominant artery" "synonym"))
  ("chol" ("chol" "CHOL" "NCIT:C105586" "cholesterol measurement" "synonym"))
  ("cdki"
   ("cdki" "CDKI" "NCIT:C2185" "cyclin-dependent kinase inhibitor" "synonym"))
  ("atcc" ("atcc" "ATCC" "NCIT:C15661" "ATCC" "name"))
  ("agc" ("agc" "AGC" "NCIT:C36912" "atypical glandular cell" "synonym"))
  ("TMHMM" ("tmhmm" "TmHMM" "NCIT:C49038" "TmHMM algorithm" "synonym"))
  ("STRING" ("string" "string" "NCIT:C45253" "string" "name"))
  ("SEQUEST"
   ("sequest" "sequest" "NCIT:C68825" "sequest scoring engine" "synonym"))
  ("RODS" ("rods" "rods" "NCIT:C23572" "rods (Retina)" "synonym"))
  ("QIAGEN" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("MASCOT"
   ("mascot" "mascot" "NCIT:C68826" "mascot scoring engine" "synonym"))
  ("KWH" ("kwh" "kWh" "NCIT:C70436" "kilowatt hour" "synonym"))
  ("JAVA" ("java" "java" "NCIT:C71585" "java programming language" "synonym"))
  ("HTLVI" ("htlvi" "HTLV-I" "NCIT:C14223" "HTLV-1" "synonym"))
  ("ESRF"
   ("esrf" "eSRF" "NCIT:C142537" "electronic source report form" "synonym"))
  ("AVAR" ("avar" "avar" "NCIT:C153843" "avar language" "synonym"))
  ("AMBER" ("amber" "amber" "NCIT:C111017" "amber" "name")))
)

(defparameter *multi-defs* 
'(("tgD"
   ("tgd" "TGD" "HGNC:29 G" "ATP binding cassette subfamily A member 1"
    "Synonym" "NCIT:C116409" "ABCA1" "synonym" "NCIT:C157715"
    "total gut decontamination" "synonym"))
  ("sopC"
   ("sopc" "SOPC" "CHEBI:75034"
    "1-stearoyl-2-oleoyl-sn-glycero-3-phosphocholine" "RELATED synonym"
    "CHEBI:60653" "1-stearoyl-2-oleoyl-sn-glycero-3-phosphocholine(1+)"
    "RELATED synonym" "MESH:C027891"
    "1-stearoyl-2-oleoyl-sn-glycero-3-phosphocholine" "SY"))
  ("scoC"
   ("scoc" "SCOC" "HGNC:20335 G" "short coiled-coil protein" "Approved Symbol"
    "FA:03518" "SCOC family" "ID"))
  ("pFL"
   ("pfl" "PFL" "GO:0008861" "formate C-acetyltransferase activity"
    "EXACT synonym" "UP:P42632" "PFL-like enzyme TdcE" "AltName: Short"
    "XFAM:PF02901 Family" "PFL-like" "PI" "NCIT:C9628" "CFL regimen"
    "synonym"))
  ("keV"
   ("kev" "KeV" "NCIT:C67276" "kiloelectronvolt" "synonym" "NCIT:C67276"
    "kiloelectronvolt" "synonym" "," "keV" "NCIT:C67276" "kiloelectronvolt"
    "synonym" "NCIT:C67276" "kiloelectronvolt" "synonym"))
  ("hRV"
   ("hrv" "HRV" "NCIT:C16474" "croatia" "synonym" "NCIT:C16474" "croatia"
    "synonym" "NCIT:C153950" "croatian language" "synonym"))
  ("fHC"
   ("fhc" "FHC" "CVCL:3688" "FHC" "name" "HGNC:3976 G" "ferritin heavy chain 1"
    "Synonym" "HGNC:7551 G" "myosin binding protein C3" "Synonym" "NCIT:C51558"
    "LDLR" "synonym" "NCIT:C138124" "MYBPC3" "synonym"))
  ("cspC"
   ("cspc" "CSP-C" "HGNC:4710 G" "granzyme H" "Synonym" "UP:P20718 H"
    "Granzyme H" "AltName: Short" "," "CSPC" "NCIT:C153336"
    "castration-sensitive prostate carcinoma" "synonym"))
  ("bSI"
   ("bsi" "BSI" "Orphanet:100976" "Bathing suit ichthyosis" "EXACT synonym"
    "NCIT:C114183" "boundary shift integral" "synonym" "NCIT:C114183"
    "boundary shift integral" "synonym" "NCIT:C121301"
    "behavioral symptoms index composite score" "synonym" "," "BSi"
    "CHEBI:64389" "biogenic silica" "RELATED synonym"))
  ("aPTT"
   ("aptt" "APTT" "NCIT:C38462" "partial thromboplastin time" "synonym" ","
    "aPTT" "NCIT:C38462" "partial thromboplastin time" "synonym"))
  ("Yaba"
   ("yaba" "YabA" "XFAM:PF06156 Family" "YabA" "ID" "," "yaba" "EFO:0007225"
    "cowpox" "EXACT synonym"))
  ("Xho"
   ("xho" "XHO" "NCIT:C123759" "howland island" "synonym" "NCIT:C123759"
    "howland island" "synonym" "NCIT:C154200" "xhosa language" "synonym"))
  ("Wuchereria"
   ("wuchereria" "WUCHERERIA" "NCIT:C122013" "wuchereria" "synonym" ","
    "wuchereria" "NCIT:C122013" "wuchereria" "name"))
  ("ViteX"
   ("vitex" "vitex" "NCIT:C72243" "angus castus" "synonym" "NCIT:C72243"
    "angus castus" "synonym"))
  ("Vip"
   ("vip" "VIP" "CHEBI:80331" "Vasoactive intestinal peptide" "RELATED synonym"
    "HGNC:23228 G" "C3 and PZP like alpha-2-macroglobulin domain containing 8"
    "Synonym" "HGNC:12693 G" "vasoactive intestinal peptide" "Approved Symbol"
    "UP:P48142" "Vasoactive intestinal peptide" "RecName: Short" "UP:etc" ""
    "fake" "NCIT:C9659" "cisplatin/Etoposide/Ifosfamide" "synonym"
    "NCIT:C21442" "vasoactive intestinal peptide" "synonym" "NCIT:C21442"
    "vasoactive intestinal peptide" "synonym" "NCIT:C52433" "VIP" "name"
    "NCIT:C63794" "VIP regimen" "synonym" "NCIT:C136790" "VIP peptides"
    "synonym" "NCIT:C159135" "GDC vascular invasion present terminology"
    "synonym"))
  ("Vietnamese"
   ("vietnamese" "VIETNAMESE" "NCIT:C43396" "vietnamese" "synonym" ","
    "vietnamese" "NCIT:C43396" "vietnamese" "name" "NCIT:C120591"
    "vietnamese language" "synonym"))
  ("Vidarabine"
   ("vidarabine" "VIDARABINE" "NCIT:C929" "vidarabine" "synonym" "NCIT:C929"
    "vidarabine" "synonym" "," "Vidarabine" "CHEBI:45327" "adenine arabinoside"
    "RELATED synonym" "CHEBI:9978" "vidarabine monohydrate" "RELATED synonym"
    "," "vidarabine" "NCIT:C929" "vidarabine" "name"))
  ("Varicellovirus"
   ("varicellovirus" "VARICELLOVIRUS" "NCIT:C112426" "varicellovirus" "synonym"
    "," "varicellovirus" "NCIT:C112426" "varicellovirus" "name"))
  ("VRs"
   ("vrs" "VRS" "NCIT:C97757" "vienna rectoscopy score" "synonym"
    "NCIT:C121549" "verbal rating scale" "synonym"))
  ("Tropheryma"
   ("tropheryma" "TROPHERYMA" "NCIT:C86826" "tropheryma" "synonym"
    "NCIT:C86826" "tropheryma" "synonym" "," "tropheryma" "NCIT:C86826"
    "tropheryma" "name"))
  ("Trichinella"
   ("trichinella" "TRICHINELLA" "NCIT:C125928" "trichinella" "synonym" ","
    "trichinella" "NCIT:C125928" "trichinella" "name"))
  ("Tox"
   ("tox" "TOX" "HGNC:18988 G"
    "thymocyte selection associated high mobility group box" "Approved Symbol"
    "NCIT:C17206" "toxicology" "synonym" "NCIT:C27990" "toxicity" "synonym"
    "NCIT:C147947" "TOX" "name" "NCIT:C147950"
    "thymocyte selection-associated high mobility group box protein TOX"
    "synonym"))
  ("Tokelau"
   ("tokelau" "TOKELAU" "NCIT:C17704" "tokelau" "synonym" "NCIT:C17704"
    "tokelau" "synonym" "," "tokelau" "NCIT:C17704" "tokelau" "name"
    "NCIT:C154169" "tokelau language" "synonym"))
  ("Tobramycin"
   ("tobramycin" "TOBRAMYCIN" "NCIT:C62082" "tobramycin" "synonym"
    "NCIT:C62082" "tobramycin" "synonym" "," "Tobramycin" "CHEBI:28864"
    "tobramycin" "name" "," "tobramycin" "CHEBI:73678" "tobramycin(5+)"
    "RELATED synonym" "NCIT:C62082" "tobramycin" "name"))
  ("Tbn"
   ("tbn" "TBN" "CHEBI:133247"
    "N-tert-butyl(3,5,6-trimethylpyrazin-2-yl)methanimine N-oxide"
    "RELATED synonym" "HGNC:17300 G"
    "TATA-box binding protein associated factor 8" "Previous Symbol"
    "NCIT:C30070" "transcription initiation factor TFIID subunit 8" "synonym"
    "NCIT:C52611" "TAF8" "synonym"))
  ("Taenia"
   ("taenia" "TAENIA" "NCIT:C125925" "taenia" "synonym" "," "taenia"
    "NCIT:C125925" "taenia" "name"))
  ("SwissProt"
   ("swissprot" "swiss-prot" "NCIT:C43819" "swiss-prot" "name" "," "swissprot"
    "NCIT:C43819" "swiss-prot" "synonym"))
  ("Suid"
   ("suid" "SUID" "NCIT:C111853" "sudden unexplained infant death" "synonym"
    "," "suid" "NCIT:C14322" "suidae" "synonym"))
  ("Stenotrophomonas"
   ("stenotrophomonas" "STENOTROPHOMONAS" "NCIT:C86776" "stenotrophomonas"
    "synonym" "," "stenotrophomonas" "NCIT:C86776" "stenotrophomonas" "name"))
  ("SmaI"
   ("smai" "SMA-I" "Orphanet:83330" "Proximal spinal muscular atrophy type 1"
    "EXACT synonym" "," "SmaI" "XFAM:PF17411 Family" "SmaI" "ID"))
  ("Sirna"
   ("sirna" "siRNA" "NCIT:C2191" "small interfering RNA" "synonym" "NCIT:C2191"
    "small interfering RNA" "synonym"))
  ("Sct"
   ("sct" "SCT" "HGNC:10607 G" "secretin" "Approved Symbol" "UP:Q8VZU3 C"
    "Serine carboxypeptidase-like 19" "AltName: Short" "UP:Q8GYW8 C"
    "Spermidine coumaroyl-CoA acyltransferase" "RecName: Short" "NCIT:C20645"
    "spiral CT" "synonym" "NCIT:C148311" "SCT" "name" "NCIT:C148313"
    "prepro-secretin" "synonym" "NCIT:C148314" "secretin" "synonym"))
  ("Sca"
   ("sca" "SCA" "UP:Q10992" "Cysteine proteinase inhibitor A" "AltName: Full"
    "NCIT:C33669" "superior cerebellar artery" "synonym"))
  ("SbfI"
   ("sbfi" "SBFI" "CHEBI:52262" "sodium-binding benzofuran isophthalate"
    "RELATED synonym" "MESH:C061665" "sodium-binding benzofuran isophthalate"
    "SY"))
  ("SacI"
   ("saci" "SACI" "HGNC:21285 G" "adenylate cyclase 10" "Synonym" "NCIT:C39511"
    "cancer therapy and research center" "synonym"))
  ("SLOs"
   ("slos" "SLOS" "Orphanet:818" "Smith-Lemli-Opitz syndrome" "EXACT synonym"
    "HGNC:2860 G" "7-dehydrocholesterol reductase" "Previous Symbol"))
  ("Ruminococcus"
   ("ruminococcus" "RUMINOCOCCUS" "NCIT:C86729" "ruminococcus" "synonym" ","
    "ruminococcus" "NCIT:C86729" "ruminococcus" "name"))
  ("Rubulavirus"
   ("rubulavirus" "RUBULAVIRUS" "NCIT:C14326" "rubulavirus" "synonym" ","
    "rubulavirus" "NCIT:C14326" "rubulavirus" "name"))
  ("Rothia"
   ("rothia" "ROTHIA" "NCIT:C86727" "rothia" "synonym" "," "rothia"
    "NCIT:C86727" "rothia" "name"))
  ("Roseolovirus"
   ("roseolovirus" "ROSEOLOVIRUS" "NCIT:C112410" "roseolovirus" "synonym" ","
    "roseolovirus" "NCIT:C112410" "roseolovirus" "name"))
  ("RhV"
   ("rhv" "rhv" "XFAM:PF00073 Domain" "rhv" "ID" "XFAM:PF00073 Domain" "rhv"
    "PI"))
  ("Reticulum"
   ("reticulum" "RETICULUM" "NCIT:C98777" "reticulum" "synonym" "," "reticulum"
    "BTO:0000347" "reticulum" "name" "NCIT:C98777" "reticulum" "name"))
  ("Req"
   ("req" "REQ" "HGNC:9964 G" "double PHD fingers 2" "Previous Symbol"
    "NCIT:C157308" "DPF2" "synonym"))
  ("Ralstonia"
   ("ralstonia" "RALSTONIA" "NCIT:C86712" "ralstonia" "synonym" "," "ralstonia"
    "NCIT:C86712" "ralstonia" "name"))
  ("RRs"
   ("rrs" "RRS" "Orphanet:1507" "Autosomal recessive Robinow syndrome"
    "EXACT synonym" "NCIT:C122185" "total respiratory system resistance"
    "synonym"))
  ("RNs"
   ("rns" "RNS" "CHEBI:33697" "ribonucleic acid" "RELATED synonym"
    "CHEBI:62764" "reactive nitrogen species" "RELATED synonym" "EFO:1001838"
    "renal nutcracker syndrome" "EXACT synonym"))
  ("PxE"
   ("pxe" "PXE" "Orphanet:758" "Pseudoxanthoma elasticum" "EXACT synonym"
    "HGNC:57 G" "ATP binding cassette subfamily C member 6" "Previous Symbol"
    "NCIT:C116947" "ABCC6" "synonym" "," "PxE" "CVCL:Z679" "BCIRL/AMCY-PxE-CLG"
    "RELATED synonym"))
  ("PvK"
   ("pvk" "PVK" "CHEBI:53427" "poly(vinylcarbazole) macromolecule"
    "RELATED synonym" "CHEBI:61640" "poly(vinylcarbazole) polymer"
    "RELATED synonym"))
  ("Ptprg"
   ("ptprg" "PTPRG" "HGNC:9671 G"
    "protein tyrosine phosphatase receptor type G" "Approved Symbol"
    "NCIT:C37311" "receptor-type tyrosine-protein phosphatase gamma" "synonym"
    "NCIT:C49535" "PTPRG" "name"))
  ("Providencia"
   ("providencia" "PROVIDENCIA" "NCIT:C86690" "providencia" "synonym" ","
    "providencia" "NCIT:C86690" "providencia" "name"))
  ("Prot"
   ("prot" "PROT" "HGNC:11054 G" "solute carrier family 6 member 7" "Synonym"
    "NCIT:C64858" "total protein measurement" "synonym" "," "prot"
    "NCIT:C25320" "clinical study protocol" "synonym"))
  ("PoE"
   ("poe" "POE" "CHEBI:46793" "poly(ethylene glycol)" "RELATED synonym" ","
    "Poe" "CVCL:EJ01" "POE" "name"))
  ("PmeI"
   ("pmei" "PMEI" "UP:P83326" "Pectinesterase inhibitor" "AltName: Short"
    "XFAM:PF04043 Domain" "PMEI" "ID"))
  ("Plc"
   ("plc" "PL-C" "UP:Q9AYP9" "Lectin-C" "AltName: Full" "," "PLC" "FPLX:PLC"
    "PLC" "name" "CVCL:0485" "PLC/PRF/5" "RELATED synonym" "UP:P98160 H"
    "Basement membrane-specific heparan sulfate proteoglycan core protein"
    "AltName: Short" "NCIT:C95447" "HSPG2" "synonym" "NCIT:C95448"
    "basement membrane-specific heparan sulfate proteoglycan core protein"
    "synonym"))
  ("Pitcairn"
   ("pitcairn" "PITCAIRN" "NCIT:C16993" "pitcairn" "synonym" "," "pitcairn"
    "NCIT:C16993" "pitcairn" "name"))
  ("Pichia"
   ("pichia" "PICHIA" "NCIT:C123544" "pichia" "synonym" "," "pichia"
    "NCIT:C123544" "pichia" "name"))
  ("Phlebovirus"
   ("phlebovirus" "PHLEBOVIRUS" "NCIT:C112397" "phlebovirus" "synonym" ","
    "phlebovirus" "NCIT:C112397" "phlebovirus" "name"))
  ("Peramivir"
   ("peramivir" "PERAMIVIR" "NCIT:C81611" "peramivir" "synonym" "," "peramivir"
    "CHEBI:85196" "peramivir hydrate" "RELATED synonym" "CHEBI:85202"
    "peramivir" "name" "MESH:C414210" "peramivir" "NM" "NCIT:C81611"
    "peramivir" "name"))
  ("Penicillium"
   ("penicillium" "PENICILLIUM" "NCIT:C123540" "penicillium" "synonym" ","
    "penicillium" "NCIT:C123540" "penicillium" "name"))
  ("Pdx"
   ("pdx" "PDX" "CHEBI:138653"
    "(4Z,7Z,10S,11E,13Z,15E,17S,19Z)-10,17-dihydroxydocosahexaenoic acid"
    "RELATED synonym" "UP:P00259" "Putidaredoxin" "RecName: Short" "NCIT:C2250"
    "pralatrexate" "synonym" "NCIT:C122936" "patient derived xenograft"
    "synonym"))
  ("Pbf"
   ("pbf" "PBF" "HGNC:13524 G" "PTTG1 interacting protein" "Synonym"
    "HGNC:18737 G" "zinc finger protein 395" "Synonym" "UP:P53801 H"
    "Pituitary tumor-transforming gene 1 protein-interacting protein"
    "AltName: Short" "UP:Q8R143 M"
    "Pituitary tumor-transforming gene 1 protein-interacting protein"
    "AltName: Short" "UP:Q5NVI6"
    "Pituitary tumor-transforming gene 1 protein-interacting protein"
    "AltName: Short" "UP:Q6P767"
    "Pituitary tumor-transforming gene 1 protein-interacting protein"
    "AltName: Short" "NCIT:C117259" "ZNF395" "synonym"))
  ("Pasteurella"
   ("pasteurella" "PASTEURELLA" "NCIT:C86636" "pasteurella" "synonym" ","
    "pasteurella" "NCIT:C86636" "pasteurella" "name"))
  ("PRTs"
   ("prts" "PRTS" "HGNC:18060 G" "aristaless related homeobox"
    "Previous Symbol" "NCIT:C74969" "ARX" "synonym"))
  ("Orbivirus"
   ("orbivirus" "ORBIVIRUS" "NCIT:C112365" "orbivirus" "synonym" ","
    "orbivirus" "NCIT:C112365" "orbivirus" "name"))
  ("Oca"
   ("oca" "OCA" "Orphanet:55" "Oculocutaneous albinism" "EXACT synonym"
    "NCIT:C9540" "cyclophosphamide/Doxorubicin/Vincristine" "synonym"))
  ("ORs"
   ("ors" "ORS" "BTO:0003969" "hair follicle outer root sheath"
    "RELATED synonym" "MESH:C034130" "ORALIT" "SY" "NCIT:C116333"
    "oculo-respiratory syndrome" "synonym"))
  ("Nphi"
   ("nphi" "NPH-I" "UP:Q98267 H" "Nucleoside triphosphatase I" "AltName: Full"
    "UP:P20637 H" "Nucleoside triphosphatase I" "AltName: Full" "UP:P0DOQ3 H"
    "Nucleoside triphosphatase I" "AltName: Full" "UP:P0DOQ4 H"
    "Nucleoside triphosphatase I" "AltName: Full" "UP:Q9QB93 H"
    "Nucleoside triphosphatase I" "AltName: Full"))
  ("Nono"
   ("nono" "NONO" "HGNC:7871 G" "non-POU domain containing octamer binding"
    "Approved Symbol" "NCIT:C71420" "NONO" "name" "NCIT:C71445"
    "non-POU domain-containing octamer-binding protein" "synonym" "," "nono"
    "NCIT:C25718" "without" "synonym"))
  ("NiV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("Nhe"
   ("nhe" "NHE" "HGNC:31401 G" "solute carrier family 9 member C1" "Synonym"
    "," "nhe" "UP:P81242" "Non-hemolytic enterotoxin 105 kDa component"
    "RecName: Short"))
  ("Nepalese"
   ("nepalese" "NEPALESE" "NCIT:C43720" "nepalese" "synonym" "," "nepalese"
    "NCIT:C43720" "nepalese" "name"))
  ("Ncs"
   ("ncs" "-NCS" "CHEBI:29441" "isothiocyanato group" "RELATED synonym" ","
    "NCS" "CHEBI:53203" "N-chlorosuccinimide" "RELATED synonym" "EFO:1001838"
    "renal nutcracker syndrome" "EXACT synonym" "UP:P0A3R9" "Neocarzinostatin"
    "RecName: Short" "UP:P0A3S0" "Neocarzinostatin" "RecName: Short"
    "NCIT:C682" "zinostatin" "synonym" "," "NCS-" "CHEBI:18022" "thiocyanate"
    "RELATED synonym"))
  ("Nairovirus"
   ("nairovirus" "NAIROVIRUS" "NCIT:C112358" "nairovirus" "synonym" ","
    "nairovirus" "NCIT:C112358" "nairovirus" "name"))
  ("NCs"
   ("ncs" "-NCS" "CHEBI:29441" "isothiocyanato group" "RELATED synonym" ","
    "NCS" "CHEBI:53203" "N-chlorosuccinimide" "RELATED synonym" "EFO:1001838"
    "renal nutcracker syndrome" "EXACT synonym" "UP:P0A3R9" "Neocarzinostatin"
    "RecName: Short" "UP:P0A3S0" "Neocarzinostatin" "RecName: Short"
    "NCIT:C682" "zinostatin" "synonym" "," "NCS-" "CHEBI:18022" "thiocyanate"
    "RELATED synonym"))
  ("Mpp"
   ("mpp" "MPP" "CHEBI:34761" "fenthion" "RELATED synonym" "CL:0000837"
    "hematopoietic multipotent progenitor cell" "EXACT synonym" "UP:P25189 H"
    "Myelin protein P0" "AltName: Short" "UP:P27573 M" "Myelin protein P0"
    "AltName: Short"))
  ("Morganella"
   ("morganella" "MORGANELLA" "NCIT:C86531" "morganella" "synonym" ","
    "morganella" "NCIT:C86531" "morganella" "name"))
  ("Morbillivirus"
   ("morbillivirus" "MORBILLIVIRUS" "NCIT:C14309" "morbillivirus" "synonym" ","
    "morbillivirus" "NCIT:C14309" "morbillivirus" "name"))
  ("Montserrat"
   ("montserrat" "MONTSERRAT" "NCIT:C16876" "montserrat" "synonym"
    "NCIT:C16876" "montserrat" "synonym" "," "montserrat" "NCIT:C16876"
    "montserrat" "name"))
  ("Molluscipoxvirus"
   ("molluscipoxvirus" "MOLLUSCIPOXVIRUS" "NCIT:C112356" "molluscipoxvirus"
    "synonym" "," "molluscipoxvirus" "NCIT:C112356" "molluscipoxvirus" "name"))
  ("Moellerella"
   ("moellerella" "MOELLERELLA" "NCIT:C86520" "moellerella" "synonym" ","
    "moellerella" "NCIT:C86520" "moellerella" "name"))
  ("Miu"
   ("miu" "MIU" "NCIT:C67335" "million international units" "synonym" "," "miU"
    "NCIT:C67316" "milliinternational unit" "synonym"))
  ("MenC"
   ("menc" "MeNC" "CHEBI:44177" "isocyanomethane" "RELATED synonym" "," "MenC"
    "CHEBI:143712" "N. meningitidis group C polysaccharide" "RELATED synonym"))
  ("Mediterranean"
   ("mediterranean" "MEDITERRANEAN" "NCIT:C77811" "mediterranean" "synonym" ","
    "mediterranean" "NCIT:C77811" "mediterranean" "name"))
  ("Mbp"
   ("mbp" "MBP" "HGNC:6925 G" "myelin basic protein" "Approved Symbol"
    "HGNC:9362 G" "proteoglycan 2, pro eosinophil major basic protein"
    "Synonym" "UP:P02686 H" "Myelin basic protein" "RecName: Short"
    "UP:P04370 M" "Myelin basic protein" "RecName: Short" "UP:Q9M5W9 C"
    "Myrosinase-binding protein 2" "RecName: Short" "UP:Q9SAV1 C"
    "Myrosinase-binding protein 2" "AltName: Short" "NCIT:C1151"
    "mannose-binding lectin" "synonym" "NCIT:C68579" "MBL2" "synonym"
    "NCIT:C68581" "mannose-binding protein C" "synonym" "NCIT:C122135"
    "myelin basic protein measurement" "synonym" "NCIT:C127023" "MBP" "name"
    "NCIT:C127025" "myelin basic protein" "synonym"))
  ("Mayotte"
   ("mayotte" "MAYOTTE" "NCIT:C16828" "mayotte" "synonym" "NCIT:C16828"
    "mayotte" "synonym" "," "mayotte" "NCIT:C16828" "mayotte" "name"))
  ("Martinique"
   ("martinique" "MARTINIQUE" "NCIT:C16823" "martinique" "synonym"
    "NCIT:C16823" "martinique" "synonym" "," "martinique" "NCIT:C16823"
    "martinique" "name"))
  ("Marburgvirus"
   ("marburgvirus" "MARBURGVIRUS" "NCIT:C112331" "marburgvirus" "synonym" ","
    "marburgvirus" "NCIT:C112331" "marburgvirus" "name"))
  ("Malagasy"
   ("malagasy" "MALAGASY" "NCIT:C43722" "malagasy" "synonym" "," "malagasy"
    "NCIT:C43722" "malagasy" "name" "NCIT:C154029" "malagasy language"
    "synonym"))
  ("MScl"
   ("mscl" "MscL" "XFAM:PF01741 Domain" "MscL" "ID" "," "mSCL" "UP:Q9JLI6 M"
    "Selenocysteine lyase" "RecName: Short"))
  ("MSAs"
   ("msas" "MSAS" "GO:0050641" "6-methylsalicylic acid synthase activity"
    "EXACT synonym" "NCIT:C125238" "memorial symptom assessment scale"
    "synonym"))
  ("LoD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("Listeria"
   ("listeria" "LISTERIA" "NCIT:C76359" "listeria" "synonym" "," "listeria"
    "NCIT:C76359" "listeria" "name"))
  ("Lambda"
   ("lambda" "LAMBDA" "NCIT:C103221" "axial S" "synonym" "," "lambda"
    "NCIT:C48926" "lambda" "name" "NCIT:C86944" "lambda sutural junction"
    "synonym"))
  ("Kda"
   ("kda" "kDa" "UO:0000222" "kilodalton" "EXACT synonym" "NCIT:C105491"
    "kilodalton" "synonym" "NCIT:C105491" "kilodalton" "synonym"))
  ("IIa"
   ("iia" "IIA" "NCIT:C88135" "stage IIA uveal melanoma AJCC v7" "synonym"
    "NCIT:C133419" "pathologic stage IIA esophageal adenocarcinoma AJCC v8"
    "synonym" "NCIT:C133534"
    "pathologic stage IIA esophageal squamous cell carcinoma AJCC v8" "synonym"
    "NCIT:C133660" "pathologic stage IIA gastric cancer AJCC v8" "synonym"
    "NCIT:C134815" "stage IIA distal bile duct cancer AJCC v8" "synonym"
    "NCIT:C139744" "stage IIA cervical cancer AJCC v8" "synonym" "NCIT:C140166"
    "stage IIA prostate cancer AJCC v8" "synonym"))
  ("IIIc"
   ("iiic" "IIIC" "NCIT:C88139" "stage IIIC uveal melanoma AJCC v7" "synonym"
    "NCIT:C133667" "pathologic stage IIIC gastric cancer AJCC v8" "synonym"
    "NCIT:C134750" "stage IIIC hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C140172" "stage IIIC prostate cancer AJCC v8" "synonym"))
  ("IIIa"
   ("iiia" "IIIA" "NCIT:C88137" "stage IIIA uveal melanoma AJCC v7" "synonym"
    "NCIT:C133422" "pathologic stage IIIA esophageal adenocarcinoma AJCC v8"
    "synonym" "NCIT:C133537"
    "pathologic stage IIIA esophageal squamous cell carcinoma AJCC v8"
    "synonym" "NCIT:C133665" "pathologic stage IIIA gastric cancer AJCC v8"
    "synonym" "NCIT:C134521" "stage IIIA hepatocellular carcinoma AJCC v8"
    "synonym" "NCIT:C134748" "stage IIIA hilar cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134762"
    "stage IIIA intrahepatic cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134818" "stage IIIA distal bile duct cancer AJCC v8" "synonym"
    "NCIT:C139750" "stage IIIA cervical cancer AJCC v8" "synonym"
    "NCIT:C140170" "stage IIIA prostate cancer AJCC v8" "synonym"
    "NCIT:C140422" "stage IIIA bladder cancer AJCC v8" "synonym"))
  ("HvEM"
   ("hvem" "HVEM" "HGNC:11912 G" "TNF receptor superfamily member 14" "Synonym"
    "NCIT:C97844" "TNFRSF14" "synonym"))
  ("HrC"
   ("hrc" "HRC" "HGNC:5178 G" "histidine rich calcium binding protein"
    "Approved Symbol" "FA:05248" "HRC family" "ID"))
  ("Hes"
   ("hes" "HES" "FPLX:HES" "HES" "name" "EFO:1001467"
    "Hypereosinophilic syndrome" "EXACT synonym" "NCIT:C559" "hetastarch"
    "synonym" "NCIT:C102744" "hydroxyethyl starch" "synonym" "," "hES"
    "HGNC:10448 G" "ribosome binding protein 1" "Synonym"))
  ("HADs"
   ("hads" "HADS" "MESH:C018209" "4-amino-4'-hydroxylaminodiphenylsulfone" "SY"
    "NCIT:C103520" "hospital anxiety and depression scale questionnaire"
    "synonym" "NCIT:C103520"
    "hospital anxiety and depression scale questionnaire" "synonym"))
  ("Gtx"
   ("gtx" "GTX" "HGNC:19321 G" "NK6 homeobox 2" "Synonym" "UP:P43685"
    "Gilatoxin" "RecName: Short"))
  ("Gottingen"
   ("gottingen" "GOTTINGEN" "NCIT:C77102" "gottingen pig" "synonym" ","
    "gottingen" "NCIT:C77102" "gottingen pig" "synonym"))
  ("Glrb"
   ("glrb" "GLRB" "HGNC:4329 G" "glycine receptor beta" "Approved Symbol"
    "FA:02070" "GLRB sub-subfamily" "ID"))
  ("Giardia"
   ("giardia" "GIARDIA" "NCIT:C77213" "giardia" "synonym" "," "giardia"
    "NCIT:C77213" "giardia" "name"))
  ("Gardnerella"
   ("gardnerella" "GARDNERELLA" "NCIT:C86409" "gardnerella" "synonym" ","
    "gardnerella" "NCIT:C86409" "gardnerella" "name"))
  ("Gapdh"
   ("gapdh" "GAPDH" "GO:0004365"
    "glyceraldehyde-3-phosphate dehydrogenase (NAD+) (phosphorylating) activity"
    "EXACT synonym" "HGNC:4141 G" "glyceraldehyde-3-phosphate dehydrogenase"
    "Approved Symbol" "UP:P04406 H" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "UP:P16858 M" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "NCIT:C104410" "GAPDH" "name"))
  ("Fusobacterium"
   ("fusobacterium" "FUSOBACTERIUM" "NCIT:C76323" "fusobacterium" "synonym" ","
    "fusobacterium" "NCIT:C76323" "fusobacterium" "name"))
  ("Flavobacterium"
   ("flavobacterium" "FLAVOBACTERIUM" "NCIT:C76320" "flavobacterium" "synonym"
    "," "flavobacterium" "NCIT:C76320" "flavobacterium" "name"))
  ("Enterobacter"
   ("enterobacter" "ENTEROBACTER" "NCIT:C76310" "enterobacter" "synonym" ","
    "enterobacter" "NCIT:C76310" "enterobacter" "name"))
  ("Entamoeba"
   ("entamoeba" "ENTAMOEBA" "NCIT:C122048" "entamoeba" "synonym" ","
    "entamoeba" "NCIT:C122048" "entamoeba" "name"))
  ("Ehrlichia"
   ("ehrlichia" "EHRLICHIA" "NCIT:C122292" "ehrlichia" "synonym" ","
    "ehrlichia" "NCIT:C122292" "ehrlichia" "name"))
  ("Edwardsiella"
   ("edwardsiella" "EDWARDSIELLA" "NCIT:C86344" "edwardsiella" "synonym" ","
    "edwardsiella" "NCIT:C86344" "edwardsiella" "name"))
  ("Eda"
   ("eda" "EDA" "HGNC:3157 G" "ectodysplasin A" "Approved Symbol"
    "NCIT:C159357" "EDA" "name"))
  ("Doxil"
   ("doxil" "DOXIL" "NCIT:C1555"
    "pegylated liposomal doxorubicin hydrochloride" "synonym" "," "Doxil"
    "MESH:C506643" "liposomal doxorubicin" "SY" "," "doxil" "NCIT:C1555"
    "pegylated liposomal doxorubicin hydrochloride" "synonym" "NCIT:C1555"
    "pegylated liposomal doxorubicin hydrochloride" "synonym"))
  ("Dis"
   ("dis" "DIS" "Orphanet:94064" "Deafness-infertility syndrome"
    "EXACT synonym" "NCIT:C25484" "discontinue" "synonym"))
  ("Cynomolgus"
   ("cynomolgus" "CYNOMOLGUS" "NCIT:C14232" "cynomolgus monkey" "synonym"
    "NCIT:C14232" "cynomolgus monkey" "synonym" "," "cynomolgus" "NCIT:C14232"
    "cynomolgus monkey" "synonym"))
  ("Curaçao"
   ("curaçao" "CURAÇAO" "NCIT:C101225" "curacao" "synonym" "," "curaçao"
    "NCIT:C101225" "curacao" "synonym"))
  ("Ctsd"
   ("ctsd" "CTSD" "HGNC:2529 G" "cathepsin D" "Approved Symbol" "NCIT:C16388"
    "cathepsin D" "synonym" "NCIT:C49706" "CTSD" "name"))
  ("CspE"
   ("cspe" "CSP-E" "UP:P63237" "Cold shock-like protein CspE" "RecName: Short"
    "UP:etc" "" "fake"))
  ("Cpp"
   ("cpp" "CP-P" "UP:Q96623" "Penton protein" "RecName: Short" "UP:P35987"
    "Penton protein" "RecName: Short" "," "CPP" "CHEBI:34603" "CPP" "name"
    "MESH:C014896" "6-chloro-2-(1-piperazinyl)pyrazine" "SY" "NCIT:C29818"
    "cyclopenta[cd]pyrene" "synonym"))
  ("Clint"
   ("clint" "CLINT" "HGNC:23186 G" "clathrin interactor 1" "Synonym" ","
    "Clint" "CVCL:V933" "S006006" "RELATED synonym" "," "clint" "UP:Q14677 H"
    "Clathrin interactor 1" "AltName: Short"))
  ("Cladosporium"
   ("cladosporium" "CLADOSPORIUM" "NCIT:C122261" "cladosporium" "synonym" ","
    "cladosporium" "NCIT:C122261" "cladosporium" "name"))
  ("Citrobacter"
   ("citrobacter" "CITROBACTER" "NCIT:C76273" "citrobacter" "synonym" ","
    "citrobacter" "NCIT:C76273" "citrobacter" "name"))
  ("Chlamydophila"
   ("chlamydophila" "CHLAMYDOPHILA" "NCIT:C86254" "chlamydophila" "synonym" ","
    "chlamydophila" "NCIT:C86254" "chlamydophila" "name"))
  ("Bsa"
   ("bsa" "BS-A" "UP:P12878" "30S ribosomal protein S14" "AltName: Full" ","
    "BSA" "UP:P02769" "Serum albumin" "AltName: Full" "NCIT:C19218"
    "NCI board of scientific advisors" "synonym" "NCIT:C25157"
    "body surface area" "synonym" "NCIT:C25157" "body surface area" "synonym"
    "NCIT:C39333" "board of scientific advisors NCI" "synonym" "NCIT:C85253"
    "bovine serum albumin" "synonym"))
  ("Bronopol"
   ("bronopol" "BRONOPOL" "NCIT:C77031" "bronopol" "synonym" "," "Bronopol"
    "CHEBI:31306" "Bronopol" "name" "," "bronopol" "MESH:C006827" "bronopol"
    "NM" "NCIT:C77031" "bronopol" "name"))
  ("Brevibacillus"
   ("brevibacillus" "BREVIBACILLUS" "NCIT:C86207" "brevibacillus" "synonym" ","
    "brevibacillus" "NCIT:C86207" "brevibacillus" "name"))
  ("Betamethasone"
   ("betamethasone" "BETAMETHASONE" "NCIT:C303" "betamethasone" "synonym" ","
    "betamethasone" "CHEBI:3077" "betamethasone" "name" "NCIT:C303"
    "betamethasone" "name"))
  ("Bcl"
   ("bcl" "BCL" "NCIT:C18512" "BCL1 oncogene" "synonym" "NCIT:C142819"
    "breast cancer locator" "synonym"))
  ("Bartonella"
   ("bartonella" "BARTONELLA" "NCIT:C86184" "bartonella" "synonym" ","
    "bartonella" "NCIT:C86184" "bartonella" "name"))
  ("Atipamezole"
   ("atipamezole" "ATIPAMEZOLE" "NCIT:C72921" "atipamezole" "synonym" ","
    "atipamezole" "MESH:C050701" "atipamezole" "NM" "NCIT:C72921" "atipamezole"
    "name"))
  ("Aruba"
   ("aruba" "ARUBA" "NCIT:C17884" "aruba" "synonym" "NCIT:C17884" "aruba"
    "synonym" "," "aruba" "NCIT:C17884" "aruba" "name"))
  ("Aqua"
   ("aqua" "AQUA" "NCIT:C161811" "absolute proteomic quantification" "synonym"
    "," "aqua" "CHEBI:15377" "water" "RELATED synonym" "NCIT:C126753" "aqua"
    "name"))
  ("Antarctica"
   ("antarctica" "ANTARCTICA" "NCIT:C18007" "antarctica" "synonym"
    "NCIT:C18007" "antarctica" "synonym" "," "antarctica" "NCIT:C18007"
    "antarctica" "name"))
  ("AmiGO"
   ("amigo" "AMIGO" "HGNC:20824 G" "adhesion molecule with Ig like domain 1"
    "Synonym" "FA:01834" "AMIGO family" "ID"))
  ("Ahx"
   ("ahx" "AHX" "NCIT:C75865" "NR0B1" "synonym" "," "Ahx" "CHEBI:16586"
    "6-aminohexanoic acid" "RELATED synonym"))
  ("Aeromonas"
   ("aeromonas" "AEROMONAS" "NCIT:C86124" "aeromonas" "synonym" "," "aeromonas"
    "NCIT:C86124" "aeromonas" "name"))
  ("Adenoviridae"
   ("adenoviridae" "ADENOVIRIDAE" "NCIT:C14179" "adenoviridae" "synonym" ","
    "adenoviridae" "NCIT:C14179" "adenoviridae" "name"))
  ("Actinomyces"
   ("actinomyces" "ACTINOMYCES" "NCIT:C76201" "actinomyces" "synonym" ","
    "actinomyces" "NCIT:C76201" "actinomyces" "name"))
  ("Actb"
   ("actb" "ACTB" "HGNC:132 G" "actin beta" "Approved Symbol" "NCIT:C103966"
    "ACTB" "name" "NCIT:C103969" "actin, cytoplasmic 1" "synonym"))
  ("Acm"
   ("acm" "ACM" "NCIT:C92679" "before breakfast" "synonym" "NCIT:C158985"
    "GDC AJCC clinical M terminology" "synonym"))
  ("Acidovorax"
   ("acidovorax" "ACIDOVORAX" "NCIT:C86085" "acidovorax" "synonym" ","
    "acidovorax" "NCIT:C86085" "acidovorax" "name"))
  ("Achromobacter"
   ("achromobacter" "ACHROMOBACTER" "NCIT:C86079" "achromobacter" "synonym" ","
    "achromobacter" "NCIT:C86079" "achromobacter" "name"))
  ("Abiotrophia"
   ("abiotrophia" "ABIOTROPHIA" "NCIT:C86077" "abiotrophia" "synonym" ","
    "abiotrophia" "NCIT:C86077" "abiotrophia" "name"))
  ("AONs"
   ("aons" "AONS" "GO:0008710" "8-amino-7-oxononanoate synthase activity"
    "EXACT synonym" "UP:Q8GW43 C" "8-amino-7-oxononanoate synthase"
    "RecName: Short"))
  ("AATf"
   ("aatf" "AATF" "HGNC:19235 G" "apoptosis antagonizing transcription factor"
    "Approved Symbol" "FA:00032" "AATF family" "ID" "NCIT:C92522" "AATF"
    "name"))
  ("zolazepam"
   ("zolazepam" "ZOLAZEPAM" "NCIT:C84252" "zolazepam" "synonym" "," "zolazepam"
    "NCIT:C84252" "zolazepam" "name"))
  ("zanamivir"
   ("zanamivir" "ZANAMIVIR" "CHEBI:50663" "zanamivir" "name" "NCIT:C47786"
    "zanamivir" "synonym" "," "zanamivir" "NCIT:C47786" "zanamivir" "name"))
  ("epg"
   ("epg" "EPG" "CVCL:R841" "EPG" "name" "HGNC:17470 G" "epithelial mitogen"
    "Synonym" "UP:Q5EG71" "Epigen" "AltName: Short" "UP:Q6UW88 H" "Epigen"
    "AltName: Short" "UP:Q924X1 M" "Epigen" "AltName: Short" "NCIT:C105919"
    "EPGN" "synonym" "NCIT:C105920" "epigen" "synonym"))
  ("waterbath"
   ("waterbath" "water-bath" "NCIT:C112508" "water bath" "synonym" ","
    "waterbath" "NCIT:C112508" "water bath" "synonym"))
  ("voriconazole"
   ("voriconazole" "VORICONAZOLE" "NCIT:C1707" "voriconazole" "synonym" ","
    "voriconazole" "CHEBI:10023" "voriconazole" "name" "NCIT:C1707"
    "voriconazole" "name"))
  ("vidarabine"
   ("vidarabine" "VIDARABINE" "NCIT:C929" "vidarabine" "synonym" "NCIT:C929"
    "vidarabine" "synonym" "," "Vidarabine" "CHEBI:45327" "adenine arabinoside"
    "RELATED synonym" "CHEBI:9978" "vidarabine monohydrate" "RELATED synonym"
    "," "vidarabine" "NCIT:C929" "vidarabine" "name"))
  ("ureter"
   ("ureter" "URETER" "NCIT:C12416" "ureter" "synonym" "NCIT:C38312"
    "ureteral route of administration" "synonym" "," "ureter" "BTO:0001409"
    "ureter" "name" "NCIT:C12416" "ureter" "name" "NCIT:C22738" "ureter" "name"
    "NCIT:C23350" "ureter" "name" "NCIT:C38312"
    "ureteral route of administration" "synonym" "NCIT:C60632" "ureter"
    "name"))
  ("unk"
   ("unk" "UNK" "HGNC:29369 G" "unk zinc finger" "Approved Symbol"
    "NCIT:C17998" "unknown" "synonym"))
  ("tularemia"
   ("tularemia" "Tularemia" "EFO:1001444" "Tularemia" "name" "," "tularemia"
    "NCIT:C85208" "tularemia" "name"))
  ("tricaine"
   ("tricaine" "TRICAINE" "NCIT:C84658" "tricaine" "synonym" "," "Tricaine"
    "CHEBI:131331" "tricaine methanesulfonate" "RELATED synonym" "," "tricaine"
    "CHEBI:81494" "tricaine" "name" "MESH:C003636" "tricaine" "NM"
    "NCIT:C84658" "tricaine" "name"))
  ("transudate"
   ("transudate" "TRANSUDATE" "NCIT:C78744" "transudate" "synonym" ","
    "transudate" "NCIT:C78744" "transudate" "name"))
  ("transposon"
   ("transposon" "TRANSPOSON" "NCIT:C95942" "transposon" "synonym" ","
    "transposon" "NCIT:C1508" "retrotransposon" "synonym" "NCIT:C95942"
    "transposon" "name"))
  ("tracheitis"
   ("tracheitis" "Tracheitis" "EFO:0007518" "tracheitis" "name" ","
    "tracheitis" "NCIT:C78643" "tracheitis" "name" "NCIT:C78647"
    "bacterial tracheitis" "synonym" "NCIT:C143884" "tracheitis, CTCAE"
    "synonym"))
  ("tof"
   ("tof" "TOF" "HGNC:13506 G" "FEZ family zinc finger 2" "Synonym"
    "NCIT:C70698" "time-of-flight" "synonym"))
  ("tmc"
   ("tmc" "TMC" "HGNC:6172 G"
    "STT3 oligosaccharyltransferase complex catalytic subunit A" "Synonym"
    "FA:04030" "TMC family" "ID" "XFAM:PF07810 Domain" "TMC" "ID"))
  ("timeline"
   ("timeline" "TimeLine" "MESH:C069856" "TimeLine" "NM" "," "timeline"
    "NCIT:C54576" "timeline" "name"))
  ("tiletamine"
   ("tiletamine" "TILETAMINE" "NCIT:C84211" "tiletamine" "synonym" ","
    "tiletamine" "NCIT:C84211" "tiletamine" "name"))
  ("thrombus"
   ("thrombus" "THROMBUS" "NCIT:C27083" "blood clot" "synonym" "," "thrombus"
    "BTO:0000102" "blood clot" "RELATED synonym" "NCIT:C27083" "blood clot"
    "synonym" "NCIT:C27083" "blood clot" "synonym" "NCIT:C27083" "blood clot"
    "synonym" "NCIT:C27083" "blood clot" "synonym"))
  ("thiram"
   ("thiram" "THIRAM" "NCIT:C66600" "thiram" "synonym" "," "Thiram"
    "CHEBI:9495" "thiram" "name" "," "thiram" "NCIT:C66600" "thiram" "name"))
  ("thionin"
   ("thionin" "Thionin" "CHEBI:52295" "thionine" "RELATED synonym" ","
    "thionin" "UP:Q9SBK8" "Thionin" "RecName: Full" "UP:P07504" "Thionin"
    "RecName: Full" "XFAM:PF00321 Domain" "thionin" "ID"))
  ("theta"
   ("theta" "THETA" "CHEBI:138143" "trihydroxyicosatrienoic acid"
    "RELATED synonym" "," "theta" "FA:01676" "theta family" "ID"))
  ("thalamus"
   ("thalamus" "THALAMUS" "NCIT:C12459" "thalamus" "synonym" "," "thalamus"
    "BTO:0001365" "thalamus" "name" "NCIT:C12459" "thalamus" "name"
    "NCIT:C23393" "thalamus" "name"))
  ("tetrathionate"
   ("tetrathionate" "TETRATHIONATE" "CHEBI:16094" "thiosulfate(2-)"
    "RELATED synonym" "," "tetrathionate" "CHEBI:15226" "tetrathionate(2-)"
    "RELATED synonym"))
  ("tenofovir"
   ("tenofovir" "TENOFOVIR" "NCIT:C29490" "tenofovir" "synonym" "," "tenofovir"
    "CHEBI:134504" "tenofovir(1-)" "RELATED synonym" "CHEBI:63716"
    "tenofovir hydrate" "RELATED synonym" "CHEBI:63625" "tenofovir (anhydrous)"
    "RELATED synonym" "NCIT:C29490" "tenofovir" "name"))
  ("telavancin"
   ("telavancin" "TELAVANCIN" "NCIT:C87603" "telavancin" "synonym" ","
    "telavancin" "CHEBI:71229" "telavancin" "name" "MESH:C487637" "telavancin"
    "NM" "NCIT:C87603" "telavancin" "name"))
  ("tazobactam"
   ("tazobactam" "TAZOBACTAM" "NCIT:C62079" "tazobactam" "synonym" ","
    "tazobactam" "CHEBI:9421" "tazobactam" "name" "NCIT:C62079" "tazobactam"
    "name"))
  ("supp"
   ("supp" "SUPP" "NCIT:C42993" "suppository dosage form" "synonym" "," "supp"
    "NCIT:C42993" "suppository dosage form" "synonym" "NCIT:C42993"
    "suppository dosage form" "synonym" "NCIT:C48539" "suppository dosing unit"
    "synonym"))
  ("sulfisoxazole"
   ("sulfisoxazole" "SULFISOXAZOLE" "NCIT:C47740" "sulfisoxazole" "synonym" ","
    "sulfisoxazole" "CHEBI:102484" "sulfisoxazole" "name" "NCIT:C47740"
    "sulfisoxazole" "name"))
  ("subcutis"
   ("subcutis" "SUBCUTIS" "NCIT:C33645" "subcutis" "synonym" "," "subcutis"
    "BTO:0001314" "subcutis" "name" "NCIT:C33645" "subcutis" "name"))
  ("subacute"
   ("subacute" "SUBACUTE" "NCIT:C120855" "subacute" "synonym" "," "subacute"
    "NCIT:C120855" "subacute" "name"))
  ("std"
   ("std" "STD" "HGNC:11458 G" "sulfotransferase family 2A member 1"
    "Previous Symbol" "HGNC:12858 G"
    "zeta chain of T cell receptor associated protein kinase 70" "Synonym"
    "NCIT:C3365" "sexually transmitted disorder" "synonym" "NCIT:C3365"
    "sexually transmitted disorder" "synonym" "NCIT:C52231" "ZAP70" "synonym"))
  ("squalane"
   ("squalane" "SQUALANE" "NCIT:C76734" "squalane" "synonym" "," "squalane"
    "MESH:C019556" "squalane" "NM" "NCIT:C76734" "squalane" "name"))
  ("spirometry"
   ("spirometry" "SPIROMETRY" "NCIT:C85397" "spirometry" "synonym" ","
    "spirometry" "NCIT:C85397" "spirometry" "name"))
  ("spectinomycin"
   ("spectinomycin" "SPECTINOMYCIN" "NCIT:C61951" "spectinomycin" "synonym" ","
    "spectinomycin" "CHEBI:9215" "spectinomycin" "name" "NCIT:C61951"
    "spectinomycin" "name"))
  ("sinefungin"
   ("sinefungin" "SINEFUNGIN" "NCIT:C73041" "sinefungin" "synonym" ","
    "sinefungin" "CHEBI:45453" "sinefungin" "name" "MESH:C006235" "sinefungin"
    "NM" "NCIT:C73041" "sinefungin" "name"))
  ("sars"
   ("sars" "SARS" "EFO:0000694" "severe acute respiratory syndrome"
    "EXACT synonym" "HGNC:10537 G" "seryl-tRNA synthetase 1" "Previous Symbol"
    "HGNC:17697 G" "seryl-tRNA synthetase 2, mitochondrial" "Synonym"
    "NCIT:C85064" "severe acute respiratory syndrome" "synonym" "NCIT:C85064"
    "severe acute respiratory syndrome" "synonym" "NCIT:C112432"
    "SARS coronavirus" "synonym"))
  ("sakuranetin"
   ("sakuranetin" "Sakuranetin" "CHEBI:28927" "sakuranetin" "name" ","
    "sakuranetin" "MESH:C099724" "sakuranetin" "NM"))
  ("rumen"
   ("rumen" "RUMEN" "NCIT:C98778" "rumen" "synonym" "," "rumen" "BTO:0001194"
    "rumen" "name" "NCIT:C98778" "rumen" "name"))
  ("rpm"
   ("rpm" "RPM" "CVCL:IX00" "RPM" "name" "UP:Q3UYI5 M"
    "Ral guanine nucleotide dissociation stimulator-like 3" "AltName: Short"
    "NCIT:C115127" "raven's progressive matrices" "synonym" "," "rpm"
    "NCIT:C70469" "revolution per minute" "synonym"))
  ("rimantadine"
   ("rimantadine" "RIMANTADINE" "NCIT:C61927" "rimantadine" "synonym" ","
    "rimantadine" "CHEBI:49886" "rimantadine" "name" "NCIT:C61927"
    "rimantadine" "name"))
  ("rifampin"
   ("rifampin" "RIFAMPIN" "NCIT:C811" "rifampin" "synonym" "," "Rifampin"
    "CHEBI:28077" "rifampicin" "RELATED synonym" "," "rifampin" "NCIT:C811"
    "rifampin" "name"))
  ("reuse"
   ("reuse" "REUSE" "NCIT:C53613" "device reuse" "synonym" "," "reuse"
    "NCIT:C79891" "reuse" "name"))
  ("retro"
   ("retro" "RETRO" "NCIT:C38296" "retrobulbar route of administration"
    "synonym" "NCIT:C38296" "retrobulbar route of administration" "synonym"))
  ("reticulum"
   ("reticulum" "RETICULUM" "NCIT:C98777" "reticulum" "synonym" "," "reticulum"
    "BTO:0000347" "reticulum" "name" "NCIT:C98777" "reticulum" "name"))
  ("psu"
   ("psu" "PSU" "NCIT:C67108" "primary sampling unit" "synonym" "," "psu"
    "XFAM:PF07455 Family" "psu" "ID"))
  ("pseudolycorine"
   ("pseudolycorine" "Pseudolycorine" "CHEBI:32074" "Pseudolycorine" "name" ","
    "pseudo-lycorine" "MESH:C027861" "pseudolycorine" "SY" "," "pseudolycorine"
    "MESH:C027861" "pseudolycorine" "NM"))
  ("posaconazole"
   ("posaconazole" "POSACONAZOLE" "NCIT:C61500" "posaconazole" "synonym" ","
    "posaconazole" "CHEBI:64355" "posaconazole" "name" "MESH:C101425"
    "posaconazole" "NM" "NCIT:C61500" "posaconazole" "name"))
  ("polysomnography"
   ("polysomnography" "POLYSOMNOGRAPHY" "NCIT:C114185" "polysomnography"
    "synonym" "," "polysomnography" "NCIT:C114185" "polysomnography" "name"))
  ("polyoxymethylene"
   ("polyoxymethylene" "Polyoxymethylene" "CHEBI:31962"
    "paraformaldehyde macromolecule" "RELATED synonym" "CHEBI:61538"
    "paraformaldehyde polymer" "RELATED synonym" "," "polyoxymethylene"
    "CHEBI:53421" "poly(oxymethylene) macromolecule" "RELATED synonym"
    "CHEBI:61536" "poly(oxymethylene) polymer" "RELATED synonym"))
  ("pmf"
   ("pmf" "PMF" "HGNC:9337 G"
    "proline rich protein BstNI subfamily 1 (gene/pseudogene)" "Synonym"
    "NCIT:C161993" "PMF regimen" "synonym"))
  ("ploidy"
   ("ploidy" "PLOIDY" "NCIT:C159086" "GDC ploidy terminology" "synonym" ","
    "ploidy" "NCIT:C17001" "ploidy" "name"))
  ("pleura"
   ("pleura" "PLEURA" "NCIT:C12469" "pleura" "synonym" "NCIT:C12469" "pleura"
    "synonym" "NCIT:C12469" "pleura" "synonym" "," "pleura" "BTO:0001791"
    "pleura" "name" "NCIT:C12469" "pleura" "name" "NCIT:C23403" "pleura" "name"
    "NCIT:C60606" "pleura" "name"))
  ("pixel"
   ("pixel" "PIXEL" "NCIT:C48367" "pixel" "synonym" "," "pixel" "NCIT:C48367"
    "pixel" "name"))
  ("phosphatidylinositol"
   ("phosphatidylinositol" "Phosphatidylinositol" "CHEBI:16749"
    "1-phosphatidyl-1D-myo-inositol" "RELATED synonym" ","
    "phosphatidylinositol" "CHEBI:28874" "phosphatidylinositol" "name"
    "NCIT:C743" "phosphatidylinositol" "name" "NCIT:C70568"
    "dietary phosphatidylinositol" "synonym"))
  ("pgm"
   ("pgm" "PG-M" "HGNC:2464 G" "versican" "Synonym" "UP:P81282"
    "Versican core protein" "AltName: Full" "UP:Q90953" "Versican core protein"
    "AltName: Full" "UP:P13611 H" "Versican core protein" "AltName: Full"
    "UP:Q62059 M" "Versican core protein" "AltName: Full" "UP:Q9ERB4"
    "Versican core protein" "AltName: Full" "NCIT:C113262" "VCAN" "synonym"
    "NCIT:C113263" "versican core protein" "synonym" "," "PGM" "CHEBI:33365"
    "platinum group metal atom" "RELATED synonym" "GO:0004619"
    "phosphoglycerate mutase activity" "EXACT synonym" "UP:Q9SCY0 C"
    "Phosphoglucomutase, chloroplastic" "RecName: Short" "NCIT:C113467"
    "platinum-group metal" "synonym" "NCIT:C129389" "phosphoglucomutase"
    "synonym"))
  ("pfma"
   ("pfma" "PfM-A" "UP:Q8IDR3" "Myosin-A" "AltName: Full" "UP:Q9UAR6"
    "Myosin-A" "AltName: Full"))
  ("petechiae"
   ("petechiae" "Petechiae" "HP:0000979" "Purpura" "EXACT synonym" ","
    "petechiae" "NCIT:C3323" "petechia" "synonym" "NCIT:C3323" "petechia"
    "synonym" "NCIT:C3323" "petechia" "synonym"))
  ("peritoneum"
   ("peritoneum" "PERITONEUM" "NCIT:C12770" "peritoneum" "synonym" ","
    "peritoneum" "BTO:0001472" "peritoneum" "name" "NCIT:C12770" "peritoneum"
    "name" "NCIT:C22708" "peritoneum" "name" "NCIT:C23701" "peritoneum" "name"
    "NCIT:C60603" "peritoneum" "name"))
  ("pericardium"
   ("pericardium" "PERICARDIUM" "NCIT:C13005" "pericardium" "synonym" ","
    "pericardium" "BTO:0000717" "pericardium" "name" "NCIT:C13005"
    "pericardium" "name" "NCIT:C23935" "pericardium" "name" "NCIT:C60601"
    "pericardium" "name"))
  ("pericarditis"
   ("pericarditis" "Pericarditis" "EFO:0007427" "pericarditis" "name" ","
    "pericarditis" "NCIT:C34915" "pericarditis" "name" "NCIT:C55067"
    "pericarditis, CTCAE" "synonym" "NCIT:C55067" "pericarditis, CTCAE"
    "synonym"))
  ("peramivir"
   ("peramivir" "PERAMIVIR" "NCIT:C81611" "peramivir" "synonym" "," "peramivir"
    "CHEBI:85196" "peramivir hydrate" "RELATED synonym" "CHEBI:85202"
    "peramivir" "name" "MESH:C414210" "peramivir" "NM" "NCIT:C81611"
    "peramivir" "name"))
  ("peracute"
   ("peracute" "PERACUTE" "NCIT:C120854" "peracute" "synonym" "," "peracute"
    "NCIT:C120854" "peracute" "name"))
  ("pdf"
   ("pdf" "PDF" "CVCL:1G97" "PDF" "name" "HGNC:30142 G"
    "growth differentiation factor 15" "Synonym" "HGNC:30012 G"
    "peptide deformylase, mitochondrial" "Approved Symbol" "UP:O66847"
    "Peptide deformylase" "RecName: Short" "UP:etc" "" "fake" "NCIT:C34026"
    "growth/Differentiation factor 15" "synonym" "NCIT:C52014" "GDF15"
    "synonym" "NCIT:C150103" "EDQM-HC pharmaceutical dosage form terminology"
    "synonym" "," "pdf" "NCIT:C63805" "portable document format" "synonym"))
  ("pci"
   ("pci" "PCI" "HGNC:8723 G" "serpin family A member 5" "Previous Symbol"
    "UP:Q9N2I2" "Plasma serine protease inhibitor" "AltName: Short"
    "UP:P05154 H" "Plasma serine protease inhibitor" "AltName: Short"
    "UP:P70458 M" "Plasma serine protease inhibitor" "AltName: Short"
    "XFAM:PF01399 Domain" "PCI" "ID" "NCIT:C15913"
    "prophylactic cranial irradiation" "synonym" "NCIT:C17324"
    "plasma serine protease inhibitor" "synonym" "NCIT:C51403" "SERPINA5"
    "synonym" "NCIT:C99521" "percutaneous coronary intervention" "synonym"
    "NCIT:C99521" "percutaneous coronary intervention" "synonym" "NCIT:C123361"
    "peritoneal cancer index" "synonym" "," "pCi" "NCIT:C70516" "picocurie"
    "synonym"))
  ("paradimethylaminobenzaldehyde"
   ("paradimethylaminobenzaldehyde" "para-Dimethylaminobenzaldehyde"
    "CHEBI:91114" "4-(dimethylamino)benzaldehyde" "RELATED synonym" ","
    "para-dimethylaminobenzaldehyde" "MESH:C510241"
    "p-dimethylaminobenzaldehyde" "SY"))
  ("oxytetracycline"
   ("oxytetracycline" "OXYTETRACYCLINE" "NCIT:C61872" "oxytetracycline"
    "synonym" "," "oxytetracycline" "CHEBI:27701" "oxytetracycline" "name"
    "CHEBI:133011" "oxytetracycline zwitterion" "RELATED synonym" "NCIT:C61872"
    "oxytetracycline" "name"))
  ("oxacillin"
   ("oxacillin" "OXACILLIN" "NCIT:C62063" "oxacillin" "synonym" "," "Oxacillin"
    "CHEBI:7809" "oxacillin" "name" "," "oxacillin" "NCIT:C62063" "oxacillin"
    "name"))
  ("otic"
   ("otic" "OTIC" "NCIT:C38192" "auricular route of administration" "synonym"
    "," "otic" "NCIT:C38192" "auricular route of administration" "synonym"
    "NCIT:C69040" "otic dosage form" "synonym" "NCIT:C69040" "otic dosage form"
    "synonym"))
  ("oropharynx"
   ("oropharynx" "OROPHARYNX" "NCIT:C12762" "oropharynx" "synonym" ","
    "oropharynx" "BTO:0005257" "oropharynx" "name" "NCIT:C12762" "oropharynx"
    "name" "NCIT:C23693" "oropharynx" "name"))
  ("org"
   ("org" "ORG" "NCIT:C19223" "other agency or organization" "synonym"
    "NCIT:C19711" "professional organization or group" "synonym"))
  ("optochin"
   ("optochin" "Optochin" "MESH:C017303" "ethylhydrocupreine" "SY" ","
    "optochin" "CHEBI:86455" "optochin" "name"))
  ("ophthalmology"
   ("ophthalmology" "OPHTHALMOLOGY" "NCIT:C16939" "ophthalmology" "synonym" ","
    "ophthalmology" "NCIT:C16939" "ophthalmology" "name"))
  ("omentum"
   ("omentum" "OMENTUM" "NCIT:C33209" "omentum" "synonym" "," "omentum"
    "NCIT:C33209" "omentum" "name"))
  ("omasum"
   ("omasum" "OMASUM" "NCIT:C98766" "omasum" "synonym" "," "omasum"
    "BTO:0000348" "omasum" "name" "NCIT:C98766" "omasum" "name"))
  ("nucleoside"
   ("nucleoside" "Nucleoside" "CHEBI:33838" "nucleoside" "name" ","
    "nucleoside" "NCIT:C707" "nucleoside" "name"))
  ("nphi"
   ("nphi" "NPH-I" "UP:Q98267 H" "Nucleoside triphosphatase I" "AltName: Full"
    "UP:P20637 H" "Nucleoside triphosphatase I" "AltName: Full" "UP:P0DOQ3 H"
    "Nucleoside triphosphatase I" "AltName: Full" "UP:P0DOQ4 H"
    "Nucleoside triphosphatase I" "AltName: Full" "UP:Q9QB93 H"
    "Nucleoside triphosphatase I" "AltName: Full"))
  ("nsf"
   ("nsf" "NSF" "HGNC:8016 G"
    "N-ethylmaleimide sensitive factor, vesicle fusing ATPase"
    "Approved Symbol" "XFAM:PF02071 Repeat" "NSF" "ID" "NCIT:C115158"
    "nephrogenic systemic fibrosis" "synonym"))
  ("nontarget"
   ("nontarget" "NON-TARGET" "NCIT:C94521" "non-target lesion identification"
    "synonym" "," "non-target" "NCIT:C25592" "non-target" "name"))
  ("nonmalignant"
   ("nonmalignant" "non-malignant" "NCIT:C25588" "non-malignant" "name" ","
    "nonmalignant" "NCIT:C25588" "non-malignant" "synonym" "NCIT:C25588"
    "non-malignant" "synonym"))
  ("nojirimycin"
   ("nojirimycin" "Nojirimycin" "CHEBI:28945" "nojirimycin" "name" ","
    "nojirimycin" "MESH:C013626" "nojirimycin" "NM"))
  ("niger"
   ("niger" "NIGER" "NCIT:C16916" "niger" "synonym" "NCIT:C16916" "niger"
    "synonym" "," "niger" "NCIT:C16916" "niger" "name"))
  ("nhs"
   ("nhs" "NHS" "HGNC:7820 G" "NHS actin remodeling regulator"
    "Approved Symbol" "FA:02466" "NHS family" "ID" "XFAM:PF15273 Family" "NHS"
    "ID"))
  ("neuronophagia"
   ("neuronophagia" "NEURONOPHAGIA" "NCIT:C120901" "neuronophagia" "synonym"
    "," "neuronophagia" "NCIT:C120901" "neuronophagia" "name"))
  ("nasopharynx"
   ("nasopharynx" "NASOPHARYNX" "NCIT:C12423" "nasopharynx" "synonym" ","
    "nasopharynx" "BTO:0000662" "nasopharynx" "name" "NCIT:C12423"
    "nasopharynx" "name" "NCIT:C23357" "nasopharynx" "name" "NCIT:C60591"
    "nasopharynx" "name"))
  ("mucosa"
   ("mucosa" "MUCOSA" "NCIT:C13166" "mucosa" "synonym" "," "mucosa"
    "BTO:0000886" "mucosa" "name" "NCIT:C13166" "mucosa" "name" "NCIT:C25770"
    "mucous membrane" "synonym"))
  ("motavizumab"
   ("motavizumab" "MOTAVIZUMAB" "NCIT:C88584" "motavizumab" "synonym" ","
    "motavizumab" "MESH:C506968" "motavizumab" "NM" "NCIT:C88584" "motavizumab"
    "name"))
  ("morbillivirus"
   ("morbillivirus" "MORBILLIVIRUS" "NCIT:C14309" "morbillivirus" "synonym" ","
    "morbillivirus" "NCIT:C14309" "morbillivirus" "name"))
  ("methoxyflurane"
   ("methoxyflurane" "METHOXYFLURANE" "NCIT:C75098" "methoxyflurane" "synonym"
    "," "methoxyflurane" "CHEBI:6843" "methoxyflurane" "name" "NCIT:C75098"
    "methoxyflurane" "name"))
  ("metacaine"
   ("metacaine" "Metacaine" "MESH:C003636" "tricaine" "SY" "," "metacaine"
    "CHEBI:81494" "tricaine" "RELATED synonym"))
  ("meninges"
   ("meninges" "MENINGES" "NCIT:C12348" "meninges" "synonym" "NCIT:C23283"
    "meninges" "synonym" "," "meninges" "BTO:0000144" "meninx"
    "RELATED synonym" "NCIT:C12348" "meninges" "name" "NCIT:C23283" "meninges"
    "name"))
  ("mefloquine"
   ("mefloquine" "MEFLOQUINE" "NCIT:C61827" "mefloquine" "synonym" ","
    "mefloquine" "CHEBI:63609" "mefloquine" "name" "NCIT:C61827" "mefloquine"
    "name"))
  ("max"
   ("max" "MAX" "HGNC:6913 G" "MYC associated factor X" "Approved Symbol"
    "FA:02182" "MAX family" "ID" "NCIT:C18604" "oncogene MAX" "synonym"
    "NCIT:C19951" "protein max" "synonym" "NCIT:C25564" "maximum" "synonym"
    "NCIT:C53036" "MAX" "name"))
  ("mastitis"
   ("mastitis" "Mastitis" "EFO:1001034" "mastitis" "name" "," "mastitis"
    "NCIT:C53662" "mastitis" "name"))
  ("mammography"
   ("mammography" "MAMMOGRAPHY" "NCIT:C16818" "mammography" "synonym" ","
    "mammography" "NCIT:C16818" "mammography" "name"))
  ("lycorine"
   ("lycorine" "Lycorine" "CHEBI:6601" "lycorine" "name" "," "lycorine"
    "MESH:C015330" "lycorine" "NM"))
  ("lumefantrine"
   ("lumefantrine" "LUMEFANTRINE" "NCIT:C81541" "lumefantrine" "synonym" ","
    "Lumefantrine" "CHEBI:156095" "lumefantrine" "name" "," "lumefantrine"
    "NCIT:C81541" "lumefantrine" "name"))
  ("leuprorelin"
   ("leuprorelin" "Leuprorelin" "CHEBI:6427" "leuprolide" "RELATED synonym" ","
    "leuprorelin" "NCIT:C62042" "leuprolide" "synonym"))
  ("lavage"
   ("lavage" "LAVAGE" "NCIT:C38068" "lavage" "synonym" "," "lavage"
    "NCIT:C38068" "lavage" "name"))
  ("lambda"
   ("lambda" "LAMBDA" "NCIT:C103221" "axial S" "synonym" "," "lambda"
    "NCIT:C48926" "lambda" "name" "NCIT:C86944" "lambda sutural junction"
    "synonym"))
  ("lac"
   ("lac" "LAC" "CHEBI:90184" "LAC dye" "RELATED synonym" "NCIT:C70620"
    "lupus anticoagulant antibody" "synonym" "NCIT:C113423"
    "labor after cesarean" "synonym" "NCIT:C113423" "labor after cesarean"
    "synonym" "," "Lac" "CHEBI:17716" "lactose" "RELATED synonym"))
  ("krc"
   ("krc" "KRC" "HGNC:13561 G" "HIVEP zinc finger 3" "Synonym" "NCIT:C153987"
    "karachay-balkar language" "synonym"))
  ("jejunum"
   ("jejunum" "JEJUNUM" "NCIT:C12388" "jejunum" "synonym" "," "jejunum"
    "BTO:0000657" "jejunum" "name" "NCIT:C12388" "jejunum" "name" "NCIT:C23323"
    "jejunum" "name" "NCIT:C60575" "jejunum" "name"))
  ("inca"
   ("inca" "INCA" "HGNC:33827 G" "caspase recruitment domain family member 17"
    "Synonym" "FA:01853" "INCA family" "ID"))
  ("immunochromatography"
   ("immunochromatography" "IMMUNOCHROMATOGRAPHY" "NCIT:C154792"
    "immunochromatography" "synonym" "," "immunochromatography" "NCIT:C154792"
    "immunochromatography" "name"))
  ("immunoassay"
   ("immunoassay" "IMMUNOASSAY" "NCIT:C16714" "immunoenzyme procedure"
    "synonym" "," "immunoassay" "NCIT:C16723" "immunology test" "synonym"))
  ("immunoadjuvant"
   ("immunoadjuvant" "Immunoadjuvant" "CHEBI:50847" "immunological adjuvant"
    "RELATED synonym" "," "immunoadjuvant" "NCIT:C210" "immunoadjuvant"
    "name"))
  ("imipenem"
   ("imipenem" "IMIPENEM" "NCIT:C570" "imipenem" "synonym" "," "Imipenem"
    "CHEBI:471744" "imipenem" "name" "," "imipenem" "CHEBI:51799"
    "imipenem hydrate" "RELATED synonym" "NCIT:C570" "imipenem" "name"))
  ("ileum"
   ("ileum" "ILEUM" "NCIT:C12387" "ileum" "synonym" "," "ileum" "BTO:0000620"
    "ileum" "name" "NCIT:C12387" "ileum" "name" "NCIT:C23322" "ileum" "name"
    "NCIT:C60573" "ileum" "name"))
  ("ifnar"
   ("ifnar" "IFNAR" "HGNC:5432 G"
    "interferon alpha and beta receptor subunit 1" "Previous Symbol"
    "NCIT:C51352" "IFNAR1" "synonym"))
  ("hypoglycemia"
   ("hypoglycemia" "Hypoglycemia" "HP:0001943" "Hypoglycemia" "name" ","
    "hypoglycemia" "NCIT:C3126" "hypoglycemia" "name" "NCIT:C143567"
    "hypoglycemia, CTCAE" "synonym"))
  ("hyperglycemia"
   ("hyperglycemia" "Hyperglycemia" "HP:0003074" "Hyperglycemia" "name" ","
    "hyperglycemia" "NCIT:C26797" "hyperglycemia" "name" "NCIT:C143552"
    "hyperglycemia, CTCAE" "synonym"))
  ("hsp"
   ("hsp" "HS-P" "CVCL:5291" "HS-P" "name" "," "HSP" "CHEBI:50430"
    "N-(3-carboxypropanoyl)-N-hydroxyputrescine" "RELATED synonym"
    "Orphanet:685" "Hereditary spastic paraplegia" "EXACT synonym"
    "NCIT:C16672" "heat shock protein" "synonym" "NCIT:C16672"
    "heat shock protein" "synonym" "NCIT:C34963" "henoch-schönlein purpura"
    "synonym" "NCIT:C116983" "HSP90B2P" "synonym"))
  ("glyphosate"
   ("glyphosate" "Glyphosate" "CHEBI:27744" "glyphosate" "name" ","
    "glyphosate" "CHEBI:133673" "glyphosate(1-)" "RELATED synonym"
    "MESH:C010974" "glyphosate" "NM"))
  ("glossitis"
   ("glossitis" "Glossitis" "EFO:1000951" "glossitis" "name" "," "glossitis"
    "NCIT:C112199" "glossitis" "name"))
  ("gingiva"
   ("gingiva" "GINGIVA" "NCIT:C32677" "gingiva" "synonym" "," "gingiva"
    "BTO:0000519" "gingiva" "name" "NCIT:C32677" "gingiva" "name"))
  ("genitalia"
   ("genitalia" "GENITALIA" "NCIT:C25177" "genitalia" "synonym" "," "genitalia"
    "BTO:0000081" "reproductive system" "RELATED synonym" "NCIT:C25177"
    "genitalia" "name"))
  ("gapdh"
   ("gapdh" "GAPDH" "GO:0004365"
    "glyceraldehyde-3-phosphate dehydrogenase (NAD+) (phosphorylating) activity"
    "EXACT synonym" "HGNC:4141 G" "glyceraldehyde-3-phosphate dehydrogenase"
    "Approved Symbol" "UP:P04406 H" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "UP:P16858 M" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "NCIT:C104410" "GAPDH" "name"))
  ("gallbladder"
   ("gallbladder" "GALLBLADDER" "NCIT:C12377" "gall bladder" "synonym" ","
    "gallbladder" "BTO:0000493" "gall bladder" "RELATED synonym" "NCIT:C12377"
    "gall bladder" "synonym" "NCIT:C12377" "gall bladder" "synonym"
    "NCIT:C22520" "gallbladder" "name" "NCIT:C23312" "gall bladder" "synonym"))
  ("frozen"
   ("frozen" "FROZEN" "NCIT:C70717" "frozen specimen" "synonym" "," "frozen"
    "NCIT:C48160" "freezing" "synonym" "NCIT:C70717" "frozen specimen"
    "synonym" "NCIT:C142502" "database frozen" "synonym"))
  ("forebrain"
   ("forebrain" "FOREBRAIN" "NCIT:C40185" "prosencephalon" "synonym" ","
    "fore-brain" "NCIT:C40185" "prosencephalon" "synonym" "," "forebrain"
    "BTO:0000478" "forebrain" "name" "NCIT:C40185" "prosencephalon" "synonym"))
  ("footpad"
   ("footpad" "FOOTPAD" "NCIT:C92654" "footpad" "synonym" "," "footpad"
    "NCIT:C92654" "footpad" "name"))
  ("followup"
   ("followup" "FOLLOW-UP" "NCIT:C53579" "follow-Up report" "synonym"
    "NCIT:C99158" "clinical study follow-up" "synonym" "," "follow-Up"
    "NCIT:C16033" "follow-Up" "name" "NCIT:C53579" "follow-Up report" "synonym"
    "NCIT:C156846" "follow-Up information" "synonym" "," "follow-up"
    "NCIT:C16033" "follow-Up" "synonym" "NCIT:C16033" "follow-Up" "synonym" ","
    "followup" "NCIT:C16033" "follow-Up" "synonym"))
  ("flunixin"
   ("flunixin" "FLUNIXIN" "NCIT:C65721" "flunixin" "synonym" "," "flunixin"
    "CHEBI:76138" "flunixin" "name" "MESH:C014557" "flunixin" "NM"
    "NCIT:C65721" "flunixin" "name"))
  ("fenbendazole"
   ("fenbendazole" "FENBENDAZOLE" "NCIT:C75218" "fenbendazole" "synonym" ","
    "fenbendazole" "CHEBI:77092" "fenbendazole" "name" "NCIT:C75218"
    "fenbendazole" "name"))
  ("exudate"
   ("exudate" "EXUDATE" "NCIT:C13233" "exudate" "synonym" "," "exudate"
    "NCIT:C13233" "exudate" "name" "NCIT:C26417" "exudate" "name"))
  ("etc"
   ("etc" "ET-C" "UP:P32940" "Endothelin-3 receptor" "AltName: Short" "," "ETC"
    "CVCL:F272" "ETC" "name"))
  ("enrofloxacin"
   ("enrofloxacin" "ENROFLOXACIN" "NCIT:C72660" "enrofloxacin" "synonym" ","
    "Enrofloxacin" "CHEBI:35720" "enrofloxacin" "name" "," "enrofloxacin"
    "NCIT:C72660" "enrofloxacin" "name"))
  ("enfuvirtide"
   ("enfuvirtide" "ENFUVIRTIDE" "NCIT:C2105" "enfuvirtide" "synonym" ","
    "enfuvirtide" "CHEBI:608828" "enfuvirtide" "name" "NCIT:C2105"
    "enfuvirtide" "name"))
  ("endocardium"
   ("endocardium" "ENDOCARDIUM" "NCIT:C13004" "endocardium" "synonym" ","
    "endocardium" "BTO:0000387" "endocardium" "name" "NCIT:C13004"
    "endocardium" "name" "NCIT:C23934" "endocardium" "name"))
  ("emtricitabine"
   ("emtricitabine" "EMTRICITABINE" "NCIT:C47509" "emtricitabine" "synonym" ","
    "Emtricitabine" "CHEBI:31536" "emtricitabine" "name" "," "emtricitabine"
    "NCIT:C47509" "emtricitabine" "name"))
  ("email"
   ("email" "E-mail" "NCIT:C25170" "E-mail" "name" "NCIT:C42775"
    "E-mail address" "synonym" "," "email" "NCIT:C25170" "E-mail" "synonym"
    "NCIT:C42775" "E-mail address" "synonym"))
  ("edema"
   ("edema" "EDEMA" "NCIT:C3002" "edema" "synonym" "," "edema" "NCIT:C3002"
    "edema" "name"))
  ("eae"
   ("eae" "EAE" "EFO:0001066" "experimental autoimmune encephalomyelitis"
    "EXACT synonym" "NCIT:C3006" "experimental allergic encephalomyelitis"
    "synonym" "NCIT:C41333" "expected adverse event" "synonym"))
  ("dyspnea"
   ("dyspnea" "DYSPNEA" "NCIT:C2998" "dyspnea" "synonym" "," "dyspnea"
    "NCIT:C2998" "dyspnea" "name" "NCIT:C58185" "dyspnea, CTCAE" "synonym"))
  ("dpt"
   ("dpt" "DPT" "CHEBI:39161" "1,1,1-trichloro-2,2-diphenylethane"
    "RELATED synonym" "HGNC:3011 G" "dermatopontin" "Approved Symbol"))
  ("dpm"
   ("dpm" "DPM" "CVCL:0P21" "DPM" "name" "NCIT:C39389"
    "doctor of podiatric medicine" "synonym" "NCIT:C73710"
    "disintegration per minute" "synonym" "," "Dpm" "CHEBI:23673"
    "2,6-diaminopimelic acid" "RELATED synonym" "," "dpm" "UO:0000147"
    "disintegrations per minute" "EXACT synonym" "NCIT:C73710"
    "disintegration per minute" "synonym"))
  ("dpd"
   ("dpd" "DPD" "HGNC:3012 G" "dihydropyrimidine dehydrogenase" "Synonym"
    "UP:Q12882 H" "Dihydropyrimidine dehydrogenase [NADP(+)]" "RecName: Short"
    "UP:Q8CHR6 M" "Dihydropyrimidine dehydrogenase [NADP(+)]" "RecName: Short"
    "UP:Q9LVI9 C" "Dihydropyrimidine dehydrogenase (NADP(+)), chloroplastic"
    "RecName: Short" "NCIT:C17290" "dihydropyrimidine dehydrogenase [NADP(+)]"
    "synonym" "NCIT:C50878" "DPYD" "synonym" "NCIT:C79443"
    "deoxypyridinoline measurement" "synonym" "NCIT:C126897"
    "deoxypyridinoline" "synonym" "," "DPd" "NCIT:C160557"
    "daratumumab/Dexamethasone/Pomalidomide regimen" "synonym"))
  ("diethylcarbamazine"
   ("diethylcarbamazine" "DIETHYLCARBAMAZINE" "NCIT:C65378"
    "diethylcarbamazine" "synonym" "," "Diethylcarbamazine" "CHEBI:4527"
    "diethylcarbamazine" "name" "," "diethylcarbamazine" "NCIT:C65378"
    "diethylcarbamazine" "name"))
  ("diethanolamine"
   ("diethanolamine" "DIETHANOLAMINE" "NCIT:C76748" "diethanolamine" "synonym"
    "," "diethanolamine" "CHEBI:28123" "diethanolamine" "name" "MESH:C020283"
    "diethanolamine" "NM" "NCIT:C76748" "diethanolamine" "name"))
  ("dicysteine"
   ("dicysteine" "Dicysteine" "CHEBI:17376" "cystine" "RELATED synonym" ","
    "dicysteine" "NCIT:C29610" "cystine" "synonym"))
  ("diclazuril"
   ("diclazuril" "DICLAZURIL" "NCIT:C76418" "diclazuril" "synonym" ","
    "diclazuril" "MESH:C057884" "diclazuril" "NM" "NCIT:C76418" "diclazuril"
    "name"))
  ("dfr"
   ("dfr" "DFR" "UP:P51102 C" "Dihydroflavonol 4-reductase" "RecName: Short"
    "UP:P51106 B" "Dihydroflavonol 4-reductase" "RecName: Short"))
  ("deoxyadenosine"
   ("deoxyadenosine" "Deoxyadenosine" "CHEBI:16335" "adenosine"
    "RELATED synonym" "CHEBI:17256" "2'-deoxyadenosine" "RELATED synonym" ","
    "deoxyadenosine" "NCIT:C1503" "2'-deoxyadenosine" "synonym" "NCIT:C1503"
    "2'-deoxyadenosine" "synonym"))
  ("dbb"
   ("dbb" "DBB" "CVCL:E544" "DBB" "name" "XFAM:PF14545 Domain" "DBB" "ID"))
  ("cynomolgus"
   ("cynomolgus" "CYNOMOLGUS" "NCIT:C14232" "cynomolgus monkey" "synonym"
    "NCIT:C14232" "cynomolgus monkey" "synonym" "," "cynomolgus" "NCIT:C14232"
    "cynomolgus monkey" "synonym"))
  ("cycline"
   ("cycline" "Cyclin-E" "FPLX:Cyclin_E" "Cyclin-E" "name" "," "cyclin-E"
    "NCIT:C104197" "cyclin E" "synonym"))
  ("ctc"
   ("ctc" "CTC" "NCIT:C9685" "CTC regimen" "synonym" "NCIT:C25468"
    "common toxicity criteria" "synonym" "NCIT:C28395"
    "computed tomography colonography" "synonym" "NCIT:C49704"
    "common terminology criteria for adverse events" "synonym" "NCIT:C63797"
    "circulating tumor cell" "synonym" "NCIT:C63797" "circulating tumor cell"
    "synonym" "NCIT:C96593" "circulating tumor cell count" "synonym"))
  ("cryotherapy"
   ("cryotherapy" "CRYOTHERAPY" "NCIT:C40030" "cryotherapy" "synonym" ","
    "cryotherapy" "NCIT:C40030" "cryotherapy" "name"))
  ("crossover"
   ("crossover" "CROSS-OVER" "NCIT:C82637" "crossover study" "synonym" ","
    "CROSSOVER" "NCIT:C82637" "crossover study" "synonym"))
  ("cotrimoxazole"
   ("cotrimoxazole" "Co-trimoxazole" "NCIT:C909"
    "trimethoprim-sulfamethoxazole" "synonym" "NCIT:C909"
    "trimethoprim-sulfamethoxazole" "synonym" "," "Cotrimoxazole" "CHEBI:3770"
    "co-trimoxazole" "name" "," "co-trimoxazole" "NCIT:C909"
    "trimethoprim-sulfamethoxazole" "synonym" "," "cotrimoxazole" "NCIT:C909"
    "trimethoprim-sulfamethoxazole" "synonym"))
  ("conjunctiva"
   ("conjunctiva" "CONJUNCTIVA" "NCIT:C12341" "conjunctiva" "synonym" ","
    "conjunctiva" "BTO:0003415" "conjunctiva" "name" "NCIT:C12341"
    "conjunctiva" "name" "NCIT:C23276" "conjunctiva" "name" "NCIT:C60555"
    "conjunctiva" "name"))
  ("conc"
   ("conc" "CONC" "NCIT:C41185" "concentration" "synonym" "NCIT:C41185"
    "concentration" "synonym" "NCIT:C60891" "concentrated dosage form"
    "synonym" "," "c-ONC" "NCIT:C17023" "proto-oncogene" "synonym" "," "conc"
    "NCIT:C60891" "concentrated dosage form" "synonym"))
  ("colostrum"
   ("colostrum" "COLOSTRUM" "NCIT:C32348" "human colostrum" "synonym" ","
    "colostrum" "BTO:0000276" "colostrum" "name"))
  ("colistin"
   ("colistin" "COLISTIN" "NCIT:C65350" "colistin" "synonym" "," "Colistin"
    "CHEBI:37943" "colistin" "name" "," "colistin" "NCIT:C65350" "colistin"
    "name"))
  ("cnb"
   ("cnb" "CNB" "HGNC:9317 G"
    "protein phosphatase 3 regulatory subunit B, alpha" "Synonym" "NCIT:C52097"
    "PPP3R1" "synonym" "NCIT:C131528" "computerized neurocognitive battery"
    "synonym"))
  ("cloaca"
   ("cloaca" "CLOACA" "NCIT:C34127" "cloaca" "synonym" "," "cloaca"
    "NCIT:C34127" "cloaca" "name"))
  ("clindamycin"
   ("clindamycin" "CLINDAMYCIN" "NCIT:C377" "clindamycin" "synonym" ","
    "Clindamycin" "CHEBI:3745" "clindamycin" "name" "," "clindamycin"
    "NCIT:C377" "clindamycin" "name"))
  ("clevudine"
   ("clevudine" "CLEVUDINE" "NCIT:C95210" "clevudine" "synonym" "," "Clevudine"
    "MESH:C034935" "Clevudine" "NM" "," "clevudine" "CHEBI:135964" "clevudine"
    "name" "NCIT:C95210" "clevudine" "name"))
  ("clavulanate"
   ("clavulanate" "Clavulanate" "CHEBI:48947" "clavulanic acid"
    "RELATED synonym" "," "clavulanate" "CHEBI:487869" "clavulanate" "name"))
  ("cilastatin"
   ("cilastatin" "CILASTATIN" "NCIT:C61679" "cilastatin" "synonym" ","
    "cilastatin" "CHEBI:3697" "cilastatin" "name" "NCIT:C61679" "cilastatin"
    "name"))
  ("chosen"
   ("chosen" "CHOSEN" "NCIT:C158172" "chosen chinese" "synonym" "," "chosen"
    "NCIT:C48912" "choose" "synonym"))
  ("choroid"
   ("choroid" "CHOROID" "NCIT:C12344" "choroid" "synonym" "," "choroid"
    "BTO:0001829" "choroid" "name" "NCIT:C12344" "choroid" "name" "NCIT:C23279"
    "choroid" "name"))
  ("chlorhexidine"
   ("chlorhexidine" "CHLORHEXIDINE" "NCIT:C364" "chlorhexidine" "synonym" ","
    "Chlorhexidine" "CHEBI:3614" "chlorhexidine" "name" "," "chlorhexidine"
    "NCIT:C364" "chlorhexidine" "name"))
  ("cgi"
   ("cgi" "CGI" "NCIT:C54668" "CpG island" "synonym" "NCIT:C135738"
    "clinical global impression generic modification version questionnaire"
    "synonym"))
  ("cfu"
   ("cfu" "CFU" "NCIT:C68742" "colony forming unit" "synonym" "," "cfu"
    "UO:0000210" "colony forming unit" "EXACT synonym"))
  ("cerebrum"
   ("cerebrum" "CEREBRUM" "NCIT:C12351" "cerebral hemispheres" "synonym" ","
    "cerebrum" "BTO:0000239" "telencephalon" "RELATED synonym" "NCIT:C12351"
    "cerebral hemispheres" "synonym" "NCIT:C12351" "cerebral hemispheres"
    "synonym" "NCIT:C23286" "cerebral hemispheres" "synonym"))
  ("cerebellum"
   ("cerebellum" "CEREBELLUM" "NCIT:C12445" "cerebellum" "synonym" ","
    "cerebellum" "BTO:0000232" "cerebellum" "name" "NCIT:C12445" "cerebellum"
    "name" "NCIT:C23379" "cerebellum" "name" "NCIT:C60550" "cerebellum"
    "name"))
  ("cephradine"
   ("cephradine" "CEPHRADINE" "NCIT:C47441" "cephradine" "synonym" ","
    "Cephradine" "CHEBI:3547" "cephradine" "name" "," "cephradine"
    "NCIT:C47441" "cephradine" "name"))
  ("cefuroxime"
   ("cefuroxime" "CEFUROXIME" "NCIT:C61669" "cefuroxime" "synonym" ","
    "Cefuroxime" "CHEBI:3515" "cefuroxime" "name" "," "cefuroxime"
    "NCIT:C61669" "cefuroxime" "name"))
  ("ceftobiprole"
   ("ceftobiprole" "CEFTOBIPROLE" "NCIT:C65306" "ceftobiprole" "synonym" ","
    "ceftobiprole" "CHEBI:140407" "ceftobiprole" "name" "MESH:C443755"
    "ceftobiprole" "NM" "NCIT:C65306" "ceftobiprole" "name"))
  ("ceftiofur"
   ("ceftiofur" "CEFTIOFUR" "NCIT:C81036" "ceftiofur" "synonym" "," "ceftiofur"
    "MESH:C053503" "ceftiofur" "NM" "NCIT:C81036" "ceftiofur" "name"))
  ("ceftazidime"
   ("ceftazidime" "CEFTAZIDIME" "NCIT:C66868" "ceftazidime" "synonym" ","
    "Ceftazidime" "CHEBI:3509" "ceftazidime pentahydrate" "RELATED synonym" ","
    "ceftazidime" "CHEBI:3508" "ceftazidime" "name" "NCIT:C66868" "ceftazidime"
    "name"))
  ("cefixime"
   ("cefixime" "CEFIXIME" "NCIT:C1100" "cefixime" "synonym" "," "cefixime"
    "CHEBI:472657" "cefixime" "name" "NCIT:C1100" "cefixime" "name"))
  ("cefepime"
   ("cefepime" "CEFEPIME" "NCIT:C65294" "cefepime" "synonym" "," "cefepime"
    "CHEBI:478164" "cefepime" "name" "NCIT:C65294" "cefepime" "name"))
  ("cefadroxil"
   ("cefadroxil" "CEFADROXIL" "NCIT:C28912" "cefadroxil" "synonym" ","
    "Cefadroxil" "CHEBI:53667" "cefadroxil monohydrate" "RELATED synonym"
    "CHEBI:3479" "cefadroxil" "name" "," "cefadroxil" "NCIT:C28912"
    "cefadroxil" "name"))
  ("cecum"
   ("cecum" "CECUM" "NCIT:C12381" "cecum" "synonym" "," "cecum" "BTO:0000166"
    "cecum" "name" "NCIT:C12381" "cecum" "name" "NCIT:C23316" "cecum" "name"
    "NCIT:C60549" "cecum" "name"))
  ("cco"
   ("cco" "CCO" "CVCL:4142" "CCO" "name" "EFO:0004001"
    "closed colony random bred strain" "EXACT synonym" "HGNC:10483 G"
    "ryanodine receptor 1" "Previous Symbol" "UP:P9WPR4"
    "Carotenoid cleavage oxygenase" "RecName: Short" "UP:P9WPR5"
    "Carotenoid cleavage oxygenase" "RecName: Short"))
  ("caregiver"
   ("caregiver" "CAREGIVER" "NCIT:C17445" "caregiver" "synonym" "," "caregiver"
    "NCIT:C17445" "caregiver" "name"))
  ("caa"
   ("caa" "CAA" "CHEBI:27869" "chloroacetic acid" "RELATED synonym"
    "EFO:0006790" "cerebral amyloid angiopathy" "EXACT synonym" "NCIT:C161899"
    "chloroacetamide" "synonym"))
  ("bronchopneumonia"
   ("bronchopneumonia" "Bronchopneumonia" "EFO:0007184" "bronchopneumonia"
    "name" "," "bronchopneumonia" "NCIT:C26710" "bronchopneumonia" "name"))
  ("bolus"
   ("bolus" "BOLUS" "NCIT:C48476" "bolus dosing unit" "synonym" "NCIT:C48476"
    "bolus dosing unit" "synonym" "NCIT:C48476" "bolus dosing unit" "synonym"
    "," "bolus" "NCIT:C15678" "bolus infusion procedure" "synonym"
    "NCIT:C48476" "bolus dosing unit" "synonym" "NCIT:C48476"
    "bolus dosing unit" "synonym" "NCIT:C48476" "bolus dosing unit" "synonym"
    "NCIT:C112914" "radiotherapy bolus" "synonym" "NCIT:C125189"
    "alimentary bolus" "synonym"))
  ("biopsy"
   ("biopsy" "BIOPSY" "NCIT:C15189" "biopsy" "synonym" "," "biopsy"
    "NCIT:C15189" "biopsy" "name"))
  ("benzamil"
   ("benzamil" "Benzamil" "CHEBI:34558" "Benzamil" "name" "," "benzamil"
    "MESH:C013407" "benzamil" "NM"))
  ("benzamidine"
   ("benzamidine" "Benzamidine" "CHEBI:41033" "benzamidine" "name" ","
    "benzamidine" "MESH:C032157" "benzamidine" "NM"))
  ("bcm"
   ("bcm" "BCM" "HGNC:11913 G" "TNF receptor superfamily member 17" "Synonym"
    "NCIT:C1154" "carbendazim" "synonym" "NCIT:C97847" "TNFRSF17" "synonym"))
  ("bacitracin"
   ("bacitracin" "BACITRACIN" "NCIT:C295" "bacitracin" "synonym" ","
    "bacitracin" "CHEBI:28669" "bacitracin" "name" "NCIT:C295" "bacitracin"
    "name"))
  ("axilla"
   ("axilla" "AXILLA" "NCIT:C12674" "axilla" "synonym" "," "axilla"
    "NCIT:C12674" "axilla" "name" "NCIT:C23605" "axilla" "name"))
  ("atc"
   ("atc" "ATC" "HGNC:795 G" "ATM serine/threonine kinase" "Previous Symbol"
    "NCIT:C2354" "timonacic" "synonym" "NCIT:C3878"
    "thyroid gland undifferentiated (Anaplastic) carcinoma" "synonym"
    "NCIT:C51192" "ATM" "synonym" "NCIT:C154331"
    "anatomical therapeutic chemical classification system" "synonym"))
  ("artemether"
   ("artemether" "ARTEMETHER" "NCIT:C73001" "artemether" "synonym" ","
    "artemether" "CHEBI:195280" "artemether" "name" "NCIT:C73001" "artemether"
    "name"))
  ("april"
   ("april" "APRIL" "PR:000036365"
    "tumor necrosis factor ligand superfamily member 13" "EXACT synonym"
    "HGNC:16677 G" "acidic nuclear phosphoprotein 32 family member B" "Synonym"
    "HGNC:11928 G" "TNF superfamily member 13" "Synonym" "UP:O75888 H"
    "Tumor necrosis factor ligand superfamily member 13" "AltName: Short"
    "UP:Q9D777 M" "Tumor necrosis factor ligand superfamily member 13"
    "AltName: Short" "NCIT:C54325" "ANP32B" "synonym" "NCIT:C105968" "TNFSF13"
    "synonym" "NCIT:C105969"
    "tumor necrosis factor ligand superfamily member 13" "synonym"
    "NCIT:C111123" "A proliferation-inducing ligand measurement" "synonym" ","
    "april" "NCIT:C106183" "april" "name"))
  ("angiography"
   ("angiography" "ANGIOGRAPHY" "NCIT:C20080" "angiography" "synonym" ","
    "angiography" "NCIT:C20080" "angiography" "name"))
  ("andrographolide"
   ("andrographolide" "ANDROGRAPHOLIDE" "NCIT:C61637" "andrographolide"
    "synonym" "," "andrographolide" "CHEBI:65408" "andrographolide" "name"
    "MESH:C030419" "andrographolide" "NM" "NCIT:C61637" "andrographolide"
    "name"))
  ("amygdala"
   ("amygdala" "AMYGDALA" "NCIT:C12440" "amygdala" "synonym" "," "amygdala"
    "BTO:0001042" "amygdala" "name" "NCIT:C12440" "amygdala" "name"
    "NCIT:C23374" "amygdala" "name"))
  ("amoxicillin"
   ("amoxicillin" "AMOXICILLIN" "NCIT:C237" "amoxicillin" "synonym" ","
    "Amoxicillin" "CHEBI:2676" "amoxicillin" "name" "," "amoxicillin"
    "NCIT:C237" "amoxicillin" "name"))
  ("aminopropyltriethoxysilane"
   ("aminopropyltriethoxysilane" "amino-propyl-triethoxysilane" "MESH:C477625"
    "amino-propyl-triethoxysilane" "NM" "," "aminopropyltriethoxysilane"
    "MESH:C477625" "amino-propyl-triethoxysilane" "SY"))
  ("alveolus"
   ("alveolus" "ALVEOLUS" "NCIT:C12986" "alveolus" "synonym" "," "alveolus"
    "BTO:0000060" "alveolus" "name" "NCIT:C12986" "alveolus" "name"
    "NCIT:C94543" "tooth socket" "synonym"))
  ("albuterol"
   ("albuterol" "ALBUTEROL" "NCIT:C215" "albuterol" "synonym" "," "Albuterol"
    "CHEBI:2549" "albuterol" "name" "," "albuterol" "NCIT:C215" "albuterol"
    "name"))
  ("acg"
   ("acg" "A-C-G" "CHEBI:73345" "Ala-Cys-Gly" "RELATED synonym" "," "ACG"
    "HGNC:23483 G" "dedicator of cytokinesis 11" "Synonym" "UP:Q5JSL3 H"
    "Dedicator of cytokinesis protein 11" "AltName: Short" "UP:A2AF47 M"
    "Dedicator of cytokinesis protein 11" "AltName: Short"))
  ("acepromazine"
   ("acepromazine" "ACEPROMAZINE" "NCIT:C77568" "acepromazine" "synonym" ","
    "acepromazine" "CHEBI:44932" "acepromazine" "name" "NCIT:C77568"
    "acepromazine" "name"))
  ("abomasum"
   ("abomasum" "ABOMASUM" "NCIT:C98702" "abomasum" "synonym" "," "abomasum"
    "BTO:0000024" "abomasum" "name" "NCIT:C98702" "abomasum" "name"))
  ("TCAD"
   ("tcad" "T-cad" "UP:P33150" "Cadherin-13" "AltName: Short" "UP:P55290 H"
    "Cadherin-13" "AltName: Short" "UP:Q9WTR5 M" "Cadherin-13" "AltName: Short"
    "NCIT:C21022" "cadherin-13" "synonym" "," "TCAD" "MESH:C038167"
    "thiazole-4-carboxamide adenine dinucleotide" "SY"))
  ("RHV"
   ("rhv" "rhv" "XFAM:PF00073 Domain" "rhv" "ID" "XFAM:PF00073 Domain" "rhv"
    "PI"))
  ("PLH"
   ("plh" "PL-h" "UP:O88354" "Pancreatic triacylglycerol lipase"
    "AltName: Full" "," "PLH" "CVCL:E810" "PLH" "name"))
  ("NPI"
   ("npi" "NP-I" "UP:Q15818 H" "Neuronal pentraxin-1" "AltName: Short"
    "UP:Q62443 M" "Neuronal pentraxin-1" "AltName: Short" "UP:P47971"
    "Neuronal pentraxin-1" "AltName: Short" "," "NPI" "HGNC:218 G"
    "ADAM metallopeptidase with thrombospondin type 1 motif 2" "Synonym"
    "NCIT:C54633" "national provider identifier" "synonym" "NCIT:C100772"
    "neuropsychiatric inventory questionnaire" "synonym"))
  ("MOEA"
   ("moea" "MoeA" "XFAM:PF02391 Family" "MoaE" "PI" "," "moeA" "FA:02340"
    "moeA family" "ID"))
  ("MHO"
   ("mho" "mho" "UO:0000264" "siemens" "RELATED synonym" "NCIT:C42555"
    "siemens" "synonym"))
  ("MCG"
   ("mcg" "mcg" "NCIT:C48152" "microgram" "synonym" "NCIT:C48152" "microgram"
    "synonym"))
  ("LNV"
   ("lnv" "LN-V" "CVCL:VI00" "LN-V" "name" "," "LNV" "UP:Q9ESD6 M"
    "CKLF-like MARVEL transmembrane domain-containing protein 7"
    "AltName: Full"))
  ("IPCC"
   ("ipcc" "IPC-C" "CHEBI:62701" "Ins-1-P-Cer(t20:0/2-OH-26:0)"
    "RELATED synonym" "CHEBI:62702" "Ins-1-P-Cer(t20:0/2-OH-24:0)"
    "RELATED synonym" "CHEBI:74597" "Ins-1-P-Cer-C" "RELATED synonym"))
  ("HERCEPTIN"
   ("herceptin" "herceptin" "NCIT:C1647" "trastuzumab" "synonym" "NCIT:C1647"
    "trastuzumab" "synonym"))
  ("EXFABP"
   ("exfabp" "Ex-FABP" "UP:P21760" "Extracellular fatty acid-binding protein"
    "RecName: Short" "UP:Q9I9P7" "Extracellular fatty acid-binding protein"
    "RecName: Short"))
  ("DEG"
   ("deg" "deg" "NCIT:C68667" "degree unit of plane angle" "synonym"
    "NCIT:C68667" "degree unit of plane angle" "synonym" "NCIT:C68667"
    "degree unit of plane angle" "synonym" "NCIT:C68667"
    "degree unit of plane angle" "synonym"))
  ("CVS"
   ("cvs" "CV-S" "CVCL:DE07" "CV-S" "name" "," "CVS" "NCIT:C92755"
    "chorionic villus sampling" "synonym"))
  ("ATTO"
   ("atto" "atto" "UO:0000304" "atto" "name" "NCIT:C67903" "atto" "name" ","
    "atto-" "NCIT:C67903" "atto" "synonym")))
)

(defparameter *short-defs* 
'(("iQ"
   ("iq" "IQ" "CHEBI:74065" "Ile-Gln" "RELATED synonym" "CHEBI:42725"
    "3-methyl-3H-imidazo[4,5-f]quinolin-2-amine" "RELATED synonym"
    "XFAM:PF00612 Motif" "IQ" "ID" "NCIT:C16756" "iraq" "synonym" "NCIT:C44309"
    "2-amino-3-methylimidazo[4,5-f]quinoline" "synonym" "NCIT:C115125"
    "intelligence quotient" "synonym"))
  ("Tx"
   ("tx" "TX" "EFO:0004948" "TX" "name" "HGNC:1505 G" "caspase 4" "Synonym"
    "NCIT:C15368" "treatment" "synonym" "NCIT:C28431" "caspase-4" "synonym"
    "NCIT:C43498" "texas" "synonym" "NCIT:C48737" "TX stage finding" "synonym"
    "NCIT:C49236" "therapeutic procedure" "synonym" "NCIT:C49554" "CASP4"
    "synonym" "NCIT:C95103" "trial sets domain" "synonym"))
  ("Px"
   ("px" "PX" "XFAM:PF00787 Domain" "PX" "ID" "," "Px" "UP:P02348"
    "DNA-binding protein HRL53" "AltName: Full" "," "pX" "UP:P14269 H"
    "Pre-core protein X" "RecName: Short" "UP:Q2KS10 H" "Pre-core protein X"
    "RecName: Short" "UP:P35986 H" "Late L2 mu core protein" "AltName: Short"
    "UP:Q64858 H" "Late L2 mu core protein" "AltName: Short" "UP:O10443 M"
    "Late L2 mu core protein" "AltName: Short"))
  ("Oi"
   ("oi" "-OI" "CHEBI:29898" "iodooxy group" "RELATED synonym" "," "OI"
    "Orphanet:666" "Osteogenesis imperfecta" "EXACT synonym" "NCIT:C3289"
    "opportunistic infection" "synonym" "NCIT:C161329"
    "non-host organism identifiers domain" "synonym"))
  ("Kq" ("kq" "K-Q" "CHEBI:73600" "Lys-Gln" "RELATED synonym"))
  ("y"
   ("y" "Y" "NCIT:C28199" "yttrium" "synonym" "NCIT:C45785" "Y-dimension"
    "synonym" "NCIT:C49488" "yes" "synonym" "NCIT:C67891" "yotta" "synonym"
    "NCIT:C81210" "year month day imputed" "synonym" "," "y" "NCIT:C44478"
    "Y-coordinate" "synonym" "NCIT:C67905" "yocto" "synonym"))
  ("xk"
   ("xk" "XK" "HGNC:12811 G" "X-linked Kx blood group" "Approved Symbol"
    "UP:P09099"
    "Xylulose kinase {ECO:0000255|HAMAP-Rule:MF_02220, ECO:0000303|PubMed:6320721}"
    "RecName: Short" "FA:04697" "XK family" "ID" "NCIT:C123740" "kosovo"
    "synonym" "NCIT:C123740" "kosovo" "synonym" "NCIT:C148002" "XK" "name"
    "NCIT:C148003" "membrane transport protein XK" "synonym"))
  ("x"
   ("x" "X" "NCIT:C15023" "X mouse" "synonym" "NCIT:C44477" "X-coordinate"
    "synonym" "NCIT:C45784" "X-dimension" "synonym" "NCIT:C88111"
    "decimal series of attenuation" "synonym" "NCIT:C116676" "PSMB5"
    "synonym"))
  ("ug"
   ("ug" "UG" "NCIT:C17228" "uganda" "synonym" "NCIT:C158162" "uygur chinese"
    "synonym" "NCIT:C158162" "uygur chinese" "synonym" "," "ug" "UO:0000023"
    "microgram" "EXACT synonym" "NCIT:C48152" "microgram" "synonym"
    "NCIT:C48152" "microgram" "synonym" "NCIT:C48152" "microgram" "synonym"
    "NCIT:C48152" "microgram" "synonym"))
  ("u"
   ("u" "U" "NCIT:C17998" "unknown" "synonym" "NCIT:C17998" "unknown" "synonym"
    "NCIT:C17998" "unknown" "synonym" "NCIT:C25709" "unit of measure" "synonym"
    "NCIT:C25709" "unit of measure" "synonym" "NCIT:C25709" "unit of measure"
    "synonym" "NCIT:C44278" "unit" "synonym" "NCIT:C64778" "enzyme unit"
    "synonym" "," "u" "NCIT:C41127" "unified atomic mass unit" "synonym"
    "NCIT:C41127" "unified atomic mass unit" "synonym" "NCIT:C48438" "micro"
    "synonym" "NCIT:C64559" "atomic mass unit" "synonym"))
  ("r"
   ("r" "R" "NCIT:C70575" "roentgen" "synonym" "NCIT:C70575" "roentgen"
    "synonym" "NCIT:C70575" "roentgen" "synonym" "," "r" "NCIT:C3360"
    "supernumerary circular chromosome" "synonym"))
  ("o" ("o" "O" "NCIT:C722" "oxygen" "synonym"))
  ("n"
   ("n" "N" "NCIT:C14562" "N" "name" "NCIT:C25580" "N category" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C49487" "No" "synonym" "," "n" "NCIT:C54713" "nano" "synonym"))
  ("l"
   ("l" "L" "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym" "," "l"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"))
  ("k"
   ("k" "K" "NCIT:C765" "potassium" "synonym" "NCIT:C15028" "K mouse" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C64853" "potassium measurement" "synonym" "NCIT:C67234" "thousand"
    "synonym" "NCIT:C68279" "dietary potassium" "synonym" "," "k" "NCIT:C48436"
    "kilo" "synonym"))
  ("j"
   ("j" "J" "NCIT:C15097" "J mouse" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym"))
  ("g"
   ("g" "G" "NCIT:C15033" "G mouse" "synonym" "NCIT:C67896" "giga" "synonym"
    "NCIT:C68783" "gravitational constant" "synonym" "NCIT:C68915" "gauss"
    "synonym" "NCIT:C68915" "gauss" "synonym" "NCIT:C68915" "gauss" "synonym"
    "," "g" "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym"
    "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym" "NCIT:C48162"
    "G force" "synonym" "NCIT:C73772" "unit of gravity" "synonym"))
  ("ex" ("ex" "EX" "NCIT:C49587" "exposure domain" "synonym"))
  ("e"
   ("e" "E" "NCIT:C67893" "exa" "synonym" "," "e" "NCIT:C68800"
    "elementary charge" "synonym"))
  ("c"
   ("c" "C" "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42559" "degree celsius" "synonym" "NCIT:C42559" "degree celsius"
    "synonym" "NCIT:C42559" "degree celsius" "synonym" "NCIT:C63654"
    "cianidanol" "synonym" "NCIT:C67194" "calorie" "synonym" "NCIT:C88109"
    "centesimal series of attenuation" "synonym" "NCIT:C92969" "SPANXC"
    "synonym" "," "c" "NCIT:C62355" "with" "synonym" "NCIT:C67900" "centi"
    "synonym"))
  ("XA"
   ("xa" "XA" "NCIT:C123741" "ashmore and cartier islands" "synonym"
    "NCIT:C123741" "ashmore and cartier islands" "synonym"))
  ("UW" ("uw" "UW" "NCIT:C14578" "UW mouse" "synonym"))
  ("QV" ("qv" "Q-V" "CHEBI:141433" "Gln-Val" "RELATED synonym"))
  ("QQ" ("qq" "QQ" "CHEBI:73846" "Gln-Gln" "RELATED synonym"))
  ("QD"
   ("qd" "QD" "CHEBI:50853" "quantum dot" "RELATED synonym" "NCIT:C25473"
    "daily" "synonym" "NCIT:C25473" "daily" "synonym" "NCIT:C25473" "daily"
    "synonym" "NCIT:C25473" "daily" "synonym"))
  ("OZ"
   ("oz" "OZ" "CVCL:B022" "IMHe008-A" "RELATED synonym" "NCIT:C48519" "ounce"
    "synonym" "NCIT:C48519" "ounce" "synonym" "," "Oz" "CVCL:M710"
    "OZ [Human diffuse large B-cell lymphoma]" "RELATED synonym" "," "oz"
    "UO:0010033" "ounce" "EXACT synonym" "NCIT:C48519" "ounce" "synonym"))
  ("IU"
   ("iu" "IU" "EFO:0002927" "International Unit" "EXACT synonym" "NCIT:C28255"
    "international unit" "synonym" "NCIT:C28255" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C48579"
    "international unit" "synonym" "NCIT:C48579" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C122724" "5-iodouracil"
    "synonym"))
  ("FQ" ("fq" "FQ" "CVCL:L984" "FQ" "name"))
  ("BZ"
   ("bz" "BZ" "NCIT:C16331" "belize" "synonym" "," "Bz" "CHEBI:22733"
    "benzoyl group" "RELATED synonym")))
)

