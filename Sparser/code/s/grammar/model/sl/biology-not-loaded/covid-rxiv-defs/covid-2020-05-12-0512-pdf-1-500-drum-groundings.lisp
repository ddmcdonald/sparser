(in-package :sparser)

(defparameter *all-upper-drum-terms* 
'(("ABG"
   ("abg" "ABG" "NCIT:C71252" "arterial blood gas measurement" "synonym"))
  ("ADEI" ("adei" "Ade-I" "CVCL:1N40" "CHO Ade-I" "RELATED synonym"))
  ("AFI" ("afi" "AFI" "UP:P10453" "Delta-actitoxin-Afv1a" "AltName: Short"))
  ("AGCG"
   ("agcg" "AGCG" "MESH:C051198"
    "4,6-anhydrogalactopyranosyl-6-O-corynomycoloylgalactopyranoside" "SY"))
  ("AGM" ("agm" "AGM" "NCIT:C73533" "IGFBP7" "synonym"))
  ("AHRQ"
   ("ahrq" "AHRQ" "NCIT:C39304" "agency for healthcare research and quality"
    "synonym"))
  ("ANAFRANIL"
   ("anafranil" "Anafranil" "CHEBI:3755" "clomipramine hydrochloride"
    "RELATED synonym" "," "anafranil" "NCIT:C47458"
    "clomipramine hydrochloride" "synonym"))
  ("ANC" ("anc" "ANC" "NCIT:C63321" "absolute neutrophil count" "synonym"))
  ("APTT"
   ("aptt" "APTT" "NCIT:C38462" "partial thromboplastin time" "synonym" ","
    "aPTT" "NCIT:C38462" "partial thromboplastin time" "synonym"))
  ("ARN" ("arn" "ARN" "NCIT:C153836" "mapuche language" "synonym"))
  ("ASAL"
   ("asal" "ASAL" "UP:P04424 H" "Argininosuccinate lyase" "RecName: Short"
    "UP:Q91YI0 M" "Argininosuccinate lyase" "RecName: Short"))
  ("ATA"
   ("ata" "ATA" "HGNC:795 G" "ATM serine/threonine kinase" "Previous Symbol"
    "NCIT:C18007" "antarctica" "synonym" "NCIT:C18007" "antarctica" "synonym"
    "NCIT:C44331" "amitrole" "synonym" "NCIT:C51192" "ATM" "synonym"))
  ("ATCC" ("atcc" "ATCC" "NCIT:C15661" "ATCC" "name"))
  ("ATU"
   ("atu" "ATU" "NCIT:C70495" "anti-thrombin unit" "synonym" "NCIT:C70495"
    "anti-thrombin unit" "synonym"))
  ("AWA" ("awa" "AWA" "NCIT:C153844" "awadhi language" "synonym"))
  ("BAEE" ("baee" "BAEE" "MESH:C009727" "benzoylarginine ethyl ester" "SY"))
  ("BBB"
   ("bbb" "BBB" "NCIT:C13194" "blood-brain barrier" "synonym" "NCIT:C13194"
    "blood-brain barrier" "synonym"))
  ("BC" ("bc" "BC" "NCIT:C92225" "best case imputation technique" "synonym"))
  ("BCL"
   ("bcl" "BCL" "NCIT:C18512" "BCL1 oncogene" "synonym" "NCIT:C142819"
    "breast cancer locator" "synonym"))
  ("BDF"
   ("bdf" "BDF" "NCIT:C150113" "EDQM-HC basic dose form terminology"
    "synonym"))
  ("BGI" ("bgi" "BG-I" "CVCL:6570" "BG1" "RELATED synonym"))
  ("BLS"
   ("bls" "BLS" "HGNC:9987 G"
    "regulatory factor X associated ankyrin containing protein" "Synonym"
    "UP:Q2YKV1"
    "6,7-dimethyl-8-ribityllumazine synthase 2 {ECO:0000255|HAMAP-Rule:MF_00178}"
    "AltName: Full" "UP:P61711"
    "6,7-dimethyl-8-ribityllumazine synthase 2 {ECO:0000255|HAMAP-Rule:MF_00178}"
    "AltName: Full"))
  ("BPD"
   ("bpd" "BPD" "Orphanet:70589" "Bronchopulmonary dysplasia" "EXACT synonym"
    "NCIT:C29809" "benzo[a]pyrene trans-7,8-dihydrodiol" "synonym"
    "NCIT:C90599" "bronchopulmonary dysplasia" "synonym" "NCIT:C90599"
    "bronchopulmonary dysplasia" "synonym" "NCIT:C92633"
    "borderline personality disorder" "synonym"))
  ("BRD"
   ("brd" "BRD" "NCIT:C136262"
    "bendamustine/Lenalidomide/Dexamethasone regimen" "synonym"))
  ("BSE" ("bse" "BSE" "NCIT:C70551" "breast self-examination" "synonym"))
  ("BSL"
   ("bsl" "BSL" "NCIT:C71352" "bachelor of science in law" "synonym"
    "NCIT:C151920" "biosafety level" "synonym"))
  ("BV"
   ("bv" "BV" "NCIT:C20104" "bouvet island" "synonym" "NCIT:C116973"
    "bacterial vaginosis" "synonym" "NCIT:C116973" "bacterial vaginosis"
    "synonym"))
  ("BVD"
   ("bvd" "BVD" "NCIT:C136261" "bendamustine/Bortezomib/Dexamethasone regimen"
    "synonym"))
  ("BZ"
   ("bz" "BZ" "NCIT:C16331" "belize" "synonym" "," "Bz" "CHEBI:22733"
    "benzoyl group" "RELATED synonym"))
  ("CBQCA"
   ("cbqca" "CBQCA" "MESH:C069617"
    "3-(4-carboxybenzoyl)-2-quinolinecarboxaldehyde" "SY"))
  ("CCID"
   ("ccid" "CCID" "NCIT:C70481" "unit of cell culture infective dose"
    "synonym"))
  ("CCMH" ("ccmh" "CcmH" "XFAM:PF03918 Family" "CcmH" "ID"))
  ("CDER"
   ("cder" "CDER" "NCIT:C82669" "center for drug evaluation and research"
    "synonym"))
  ("CDGP" ("cdgp" "CDGP" "NCIT:C61099" "nedaplatin" "synonym"))
  ("CDN"
   ("cdn" "cdN" "HGNC:17144 G" "5', 3'-nucleotidase, cytosolic" "Synonym"))
  ("CDRH"
   ("cdrh" "CDRH" "NCIT:C82670" "center for devices and radiological health"
    "synonym"))
  ("CEUS"
   ("ceus" "CEUS" "NCIT:C148281" "contrast-enhanced ultrasound" "synonym"))
  ("CHIC"
   ("chic" "CHI-C" "UP:Q9M5B3" "Chalcone--flavonone isomerase C"
    "RecName: Short" "," "CHIC" "FA:00579" "CHIC family" "ID" "," "ChiC"
    "XFAM:PF06483 Family" "ChiC" "ID"))
  ("CINCA"
   ("cinca" "CINCA" "NCIT:C116380"
    "chronic infantile neurological cutaneous and articular syndrome"
    "synonym"))
  ("CIV"
   ("civ" "C-IV" "NCIT:C48677" "schedule IV substance" "synonym" "," "CIV"
    "NCIT:C16762" "cote d'Ivoire" "synonym" "NCIT:C16762" "cote d'Ivoire"
    "synonym" "NCIT:C38196" "continuous intravenous infusion" "synonym"
    "NCIT:C48677" "schedule IV substance" "synonym" "NCIT:C48677"
    "schedule IV substance" "synonym"))
  ("CLIA"
   ("clia" "CLIA" "NCIT:C83475" "clinical laboratory improvement act"
    "synonym"))
  ("CNM"
   ("cnm" "CNM" "Orphanet:595" "Centronuclear myopathy" "EXACT synonym"
    "NCIT:C20830" "certified nurse midwife" "synonym"))
  ("CNV"
   ("cnv" "CNV" "NCIT:C40207" "copy number polymorphism" "synonym"
    "NCIT:C40207" "copy number polymorphism" "synonym"))
  ("CQ" ("cq" "CQ" "NCIT:C48481" "cartridge dosing unit" "synonym"))
  ("CSS"
   ("css" "CSS" "EFO:0004004" "consomic strain" "EXACT synonym" "Orphanet:1465"
    "Coffin-Siris syndrome" "EXACT synonym"))
  ("CTCAE"
   ("ctcae" "CTCAE" "NCIT:C25468" "common toxicity criteria" "synonym"
    "NCIT:C49704" "common terminology criteria for adverse events" "synonym"))
  ("CV"
   ("cv" "C-V" "NCIT:C48679" "schedule V substance" "synonym" "," "CV"
    "UP:SL-0073 D" "Contractile vacuole" "SY" "NCIT:C9713"
    "cyclophosphamide/Etoposide regimen" "synonym" "NCIT:C16382" "cape verde"
    "synonym" "NCIT:C48679" "schedule V substance" "synonym" "NCIT:C48679"
    "schedule V substance" "synonym" "NCIT:C54631" "curriculum vitae" "synonym"
    "NCIT:C63904" "coefficient of variance" "synonym" "NCIT:C80251" "supper"
    "synonym" "NCIT:C102605" "cardiovascular system findings domain"
    "synonym"))
  ("CVID"
   ("cvid" "CVID" "Orphanet:1572" "Common variable immunodeficiency"
    "EXACT synonym" "NCIT:C127902" "TNFRSF13B" "synonym"))
  ("CXR"
   ("cxr" "CXR" "NCIT:C44482" "christmas island" "synonym" "NCIT:C44482"
    "christmas island" "synonym"))
  ("CZE"
   ("cze" "CZE" "NCIT:C17668" "czechia" "synonym" "NCIT:C17668" "czechia"
    "synonym"))
  ("CROSSMATCH"
   ("crossmatch" "crossmatch" "NCIT:C116210" "panel reactive antibody test"
    "synonym"))
  ("DAPA"
   ("dapa" "DAPA" "CHEBI:2247" "7,8-diaminononanoic acid" "RELATED synonym"
    "CHEBI:42085" "(7R,8S)-7,8-diaminononanoic acid" "RELATED synonym"
    "CHEBI:34574" "Bis(3-azidopyridinium)-1,10-decane perchlorate"
    "RELATED synonym" "," "dapA" "FA:05125" "dapA family" "ID"))
  ("DDCT" ("ddct" "DDCT" "HGNC:2732 G" "D-dopachrome tautomerase" "Synonym"))
  ("DDM"
   ("ddm" "DDM" "CHEBI:32506" "4,4'-diaminodiphenylmethane" "RELATED synonym"
    "CHEBI:62384" "DDM-838" "RELATED synonym" "CHEBI:28555"
    "1-chloro-2,2-bis(4-chlorophenyl)ethane" "RELATED synonym" "CHEBI:28763"
    "4,4'-dichlorodiphenylmethane" "RELATED synonym"))
  ("DGGR"
   ("dggr" "DGGR" "CHEBI:91111"
    "rac-1,2-di-O-dodecanylglycero-3-glutaric acid 6'-methylresorufin ester"
    "RELATED synonym"))
  ("DHSS" ("dhss" "DHSS" "MESH:C110836" "di-n-hexyl sulfosuccinate" "SY"))
  ("DIECA" ("dieca" "DIECA" "NCIT:C432" "ditiocarb" "synonym"))
  ("DLCO"
   ("dlco" "DLCO" "NCIT:C38083" "carbon monoxide diffusing capability test"
    "synonym" "NCIT:C38083" "carbon monoxide diffusing capability test"
    "synonym"))
  ("DOA"
   ("doa" "DOA" "Orphanet:98672" "Autosomal dominant optic atrophy"
    "EXACT synonym"))
  ("DPDPE" ("dpdpe" "DPDPE" "CHEBI:73356" "DPDPE" "name"))
  ("DQ" ("dq" "DQ" "CHEBI:73827" "Asp-Gln" "RELATED synonym"))
  ("DRC"
   ("drc" "DRC" "NCIT:C14776" "DRC mouse" "synonym" "NCIT:C160556"
    "cyclophosphamide/Dexamethasone/Rituximab regimen" "synonym"))
  ("DVC"
   ("dvc" "DVC" "NCIT:C115685" "data validation certification document"
    "synonym"))
  ("DY"
   ("dy" "DY" "CHEBI:73455" "Asp-Tyr" "RELATED synonym" "NCIT:C82437"
    "study day" "synonym" "," "Dy" "UP:Q53UH4"
    "Anthocyanidin 3-O-glucoside 2''-O-glucosyltransferase" "AltName: Short"
    "UP:Q53UH5" "Anthocyanidin 3-O-glucoside 2''-O-glucosyltransferase"
    "AltName: Short"))
  ("DZ" ("dz" "DZ" "NCIT:C16274" "algeria" "synonym"))
  ("EBSS"
   ("ebss" "EBSS" "Orphanet:89839"
    "Epidermolysis bullosa simplex superficialis" "EXACT synonym"))
  ("ECMV"
   ("ecmv" "ECMV" "NCIT:C9700"
    "cyclophosphamide/Etoposide/Methotrexate/Vincristine" "synonym"))
  ("EDV" ("edv" "EDV" "NCIT:C94893" "end diastolic volume imaging" "synonym"))
  ("EER" ("eer" "EER" "CHEBI:144557" "Glu-Glu-Arg" "RELATED synonym"))
  ("EFFEXOR"
   ("effexor" "effexor" "NCIT:C29540" "venlafaxine hydrochloride" "synonym"))
  ("EIA" ("eia" "EIA" "NCIT:C17455" "enzyme immunoassay" "synonym"))
  ("EMG"
   ("emg" "EMG" "NCIT:C38056" "electromyography" "synonym" "NCIT:C159032"
    "GDC enneking MSTS grade terminology" "synonym"))
  ("EMR"
   ("emr" "EMR" "NCIT:C17050" "electromagnetic radiation" "synonym"
    "NCIT:C45259" "electronic medical record" "synonym" "NCIT:C103242"
    "endoscopic mucosal resection" "synonym"))
  ("ESRF"
   ("esrf" "eSRF" "NCIT:C142537" "electronic source report form" "synonym"))
  ("ESV" ("esv" "ESV" "NCIT:C94894" "end systolic volume imaging" "synonym"))
  ("ETH"
   ("eth" "ETH" "CHEBI:4885" "ethionamide" "RELATED synonym" "NCIT:C16563"
    "ethiopia" "synonym" "NCIT:C16563" "ethiopia" "synonym" "NCIT:C159038"
    "GDC ethnicity terminology" "synonym"))
  ("EV"
   ("ev" "EV" "NCIT:C126877" "epidermodysplasia verruciformis" "synonym" ","
    "eV" "UO:0000266" "electronvolt" "EXACT synonym" "NCIT:C67278"
    "electronvolt" "synonym" "NCIT:C67278" "electronvolt" "synonym"))
  ("EZ" ("ez" "EZ" "FA:01768" "EZ subfamily" "ID"))
  ("FASTA" ("fasta" "FASTA" "NCIT:C47845" "FASTA format" "synonym"))
  ("FASTQ" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("FCOR" ("fcor" "FCoR" "UP:P0DJI6 M" "Foxo1-corepressor" "RecName: Short"))
  ("FENO"
   ("feno" "FENO" "EFO:0005536" "nitric oxide exhalation measurement"
    "EXACT synonym"))
  ("FFPE"
   ("ffpe" "FFPE" "NCIT:C143028" "formalin-fixed paraffin-embedded" "synonym"))
  ("FLAIR"
   ("flair" "FLAIR" "NCIT:C82392" "fluid attenuated inversion recovery"
    "synonym"))
  ("FNA" ("fna" "FNA" "NCIT:C15361" "fine-needle aspiration" "synonym"))
  ("FOT" ("fot" "FOT" "NCIT:C122165" "forced oscillation technique" "synonym"))
  ("GDD"
   ("gdd" "GDD" "Orphanet:53697" "Gnathodiaphyseal dysplasia" "EXACT synonym"))
  ("GGDEF" ("ggdef" "GGDEF" "XFAM:PF00990 Domain" "GGDEF" "ID"))
  ("GGO" ("ggo" "GGO" "NCIT:C113718" "ground glass opacity" "synonym"))
  ("GNB"
   ("gnb" "GNB" "NCIT:C16656" "guinea-bissau" "synonym" "NCIT:C16656"
    "guinea-bissau" "synonym"))
  ("GP"
   ("gp" "GP" "CVCL:S009" "GEC" "RELATED synonym" "CHEBI:70744" "Gly-Pro"
    "RELATED synonym" "HGNC:18280 G" "ring finger protein 130" "Synonym"
    "UP:P87671 H" "Envelope glycoprotein" "AltName: Short" "UP:Q85429 B"
    "Putative envelope glycoprotein" "RecName: Short" "UP:etc" "" "fake"
    "NCIT:C16651" "guadeloupe" "synonym" "NCIT:C25817"
    "cell division control protein 42 homolog" "synonym" "NCIT:C49450" "CDC42"
    "synonym" "NCIT:C52122" "TNC" "synonym" "NCIT:C111932" "RNF130" "synonym"
    "," "Gp" "CHEBI:28072" "guanosine 3'-monophosphate" "RELATED synonym"))
  ("GPW"
   ("gpw" "GpW" "UP:P51768" "Baseplate protein W" "AltName: Full" "," "gpW"
    "UP:Q9T1V2" "Baseplate protein gp47" "AltName: Short" "UP:P68660"
    "Head completion protein" "AltName: Short" "UP:P68659"
    "Lambda prophage-derived head-to-tail joining protein W" "RecName: Short"
    "XFAM:PF02831 Family" "gpW" "ID" "XFAM:PF02831 Family" "gpW" "DE"))
  ("HAART"
   ("haart" "HAART" "NCIT:C16165" "highly active antiretroviral therapy"
    "synonym" "NCIT:C16165" "highly active antiretroviral therapy" "synonym"))
  ("HAC"
   ("hac" "HAC" "NCIT:C10085" "altretamine/Cyclophosphamide/Doxorubicin"
    "synonym"))
  ("HBPM"
   ("hbpm" "HBPM" "MESH:C073062"
    "4-(2-(4-hydroxybenzyl)-phenoxy)-N-methylbutylamine" "SY"))
  ("HCI"
   ("hci" "HCI" "NCIT:C39422" "huntsman cancer institute" "synonym"
    "NCIT:C52119" "TIMP1" "synonym"))
  ("HDG"
   ("hdg" "HDG" "UP:Q8TTH3" "Hypoxanthine DNA glycosylase" "RecName: Short"
    "UP:Q46EH7" "Hypoxanthine DNA glycosylase" "RecName: Short"))
  ("HDO"
   ("hdo" "HDO" "CHEBI:33806" "deuterium hydrogen oxide" "RELATED synonym"))
  ("HGNC" ("hgnc" "HGNC" "DB:6" "HGNC" "name"))
  ("HIPAA"
   ("hipaa" "HIPAA" "NCIT:C62504"
    "health insurance portability and accountability act" "synonym"
    "NCIT:C62504" "health insurance portability and accountability act"
    "synonym"))
  ("HRV"
   ("hrv" "HRV" "NCIT:C16474" "croatia" "synonym" "NCIT:C16474" "croatia"
    "synonym" "NCIT:C153950" "croatian language" "synonym"))
  ("HSCT"
   ("hsct" "HSCT" "NCIT:C15431" "hematopoietic cell transplantation" "synonym"
    "NCIT:C15431" "hematopoietic cell transplantation" "synonym" "NCIT:C46089"
    "allogeneic hematopoietic stem cell transplantation" "synonym"))
  ("HTA"
   ("hta" "HT-A" "UP:Q92043"
    "Zinc metalloproteinase-disintegrin-like atrolysin-A" "AltName: Short" ","
    "HTA" "HGNC:48612 R" "hepatocellular carcinoma associated transcript 5"
    "Synonym" "UP:A0A1D3PCK2"
    "Serine O-acetyltransferase {ECO:0000255|HAMAP-Rule:MF_00295, ECO:0000305}"
    "AltName: Short"))
  ("HTAP"
   ("htap" "hTAP" "UP:O76054 H" "SEC14-like protein 2" "AltName: Short"))
  ("HTE"
   ("hte" "HT-E" "CVCL:2292" "833K-E" "RELATED synonym" "," "hTE"
    "HGNC:15919 G" "acyl-CoA thioesterase 8" "Synonym" "UP:O14734 H"
    "Acyl-coenzyme A thioesterase 8" "AltName: Short"))
  ("HTP"
   ("htp" "HTP" "CHEBI:28890" "coenzyme B" "RELATED synonym" "CHEBI:137796"
    "2,5,6-triamino-4-hydroxypyrimidine" "RELATED synonym" "UP:Q9M5G3 B"
    "Translationally-controlled tumor protein homolog" "AltName: Full"))
  ("HVC" ("hvc" "HVC" "BTO:0003390" "high vocal center" "RELATED synonym"))
  ("IACUC"
   ("iacuc" "IACUC" "NCIT:C19487" "institutional animal care and use committee"
    "synonym" "NCIT:C90398" "IACUC number" "synonym"))
  ("IADL"
   ("iadl" "IADL" "NCIT:C110966" "instrumental activities of daily living"
    "synonym"))
  ("ICGN" ("icgn" "ICGN" "NCIT:C14455" "ICGN mouse" "synonym"))
  ("ICRP"
   ("icrp" "ICRP" "NCIT:C39432"
    "international cancer research portfolio database" "synonym"))
  ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
  ("ICV" ("icv" "ICV" "NCIT:C92686" "between dinner and bedtime" "synonym"))
  ("IEC" ("iec" "IEC" "NCIT:C142579" "independent ethics committee" "synonym"))
  ("IFD"
   ("ifd" "IFD" "Orphanet:332" "Congenital intrinsic factor deficiency"
    "EXACT synonym"))
  ("IGHJ"
   ("ighj" "IGH-J" "NCIT:C118496" "immunoglobulin heavy chain joining region"
    "synonym"))
  ("IGHV"
   ("ighv" "IgHV" "NCIT:C129421" "immunoglobulin heavy chain variable domain"
    "synonym"))
  ("INR"
   ("inr" "INR" "NCIT:C25352" "international normalized ratio" "synonym"
    "NCIT:C64805" "international normalized ratio of prothrombin time"
    "synonym"))
  ("IPD"
   ("ipd" "IPD" "Orphanet:238455" "Infantile dystonia-parkinsonism"
    "EXACT synonym"))
  ("IPS"
   ("ips" "IPS" "Orphanet:88621" "Ichthyosis prematurity syndrome"
    "EXACT synonym" "HGNC:29821 G" "inositol-3-phosphate synthase 1" "Synonym"
    "UP:O64437 R" "Inositol-3-phosphate synthase 1" "AltName: Short"
    "UP:Q8S5N2 R" "Inositol-3-phosphate synthase 1" "AltName: Short"
    "UP:O65195 B" "Inositol-3-phosphate synthase" "AltName: Short"
    "NCIT:C62590" "idiopathic pneumonia syndrome" "synonym" "NCIT:C106335"
    "SLC27A4" "synonym"))
  ("IRA" ("ira" "IRA" "NCIT:C19333" "intramural research award" "synonym"))
  ("IRD"
   ("ird" "IRD" "Orphanet:772" "Infantile Refsum disease" "EXACT synonym"))
  ("IRES"
   ("ires" "IRES" "NCIT:C13716" "internal ribosome entry site" "synonym"))
  ("IRM"
   ("irm" "Irm" "HGNC:14574 R"
    "maternally expressed 8, small nucleolar RNA host gene" "Synonym"))
  ("ISD" ("isd" "iSD" "NCIT:C142359" "iRECIST stable disease" "synonym"))
  ("ISI"
   ("isi" "ISI" "NCIT:C150114"
    "EDQM-HC intended site of administration terminology" "synonym"))
  ("ITIM" ("itim" "ITIM" "NCIT:C14049" "ITIM" "name"))
  ("IU"
   ("iu" "IU" "EFO:0002927" "International Unit" "EXACT synonym" "NCIT:C28255"
    "international unit" "synonym" "NCIT:C28255" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C48579"
    "international unit" "synonym" "NCIT:C48579" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C122724" "5-iodouracil"
    "synonym"))
  ("IVIG"
   ("ivig" "IVIG" "NCIT:C121331" "intravenous immunoglobulin therapy"
    "synonym"))
  ("IX"
   ("ix" "IX" "CVCL:Z201" "BmIX" "RELATED synonym" "UP:P14622"
    "Cytochrome c oxidase subunit 8A, mitochondrial" "AltName: Full"
    "UP:P10175" "Cytochrome c oxidase subunit 8B, mitochondrial"
    "AltName: Full"))
  ("IRB"
   ("irb" "IRB" "NCIT:C16741" "institutional review board" "synonym"
    "NCIT:C16741" "institutional review board" "synonym"))
  ("JASMINE"
   ("jasmine" "jasmine" "NCIT:C73955" "jasminum officinale" "synonym"))
  ("JPEG" ("jpeg" "JPEG" "NCIT:C48230" "JPEG" "name"))
  ("JB"
   ("jb" "JB" "CVCL:Y434" "JB" "name" "CVCL:H633"
    "JB6 [Human anaplastic large cell lymphoma]" "RELATED synonym"))
  ("KCI"
   ("kci" "KCI" "NCIT:C39328" "barbara ann karmano cancer institute"
    "synonym"))
  ("KV"
   ("kv" "K-V" "CHEBI:73607" "Lys-Val" "RELATED synonym" "," "kV" "UO:0000248"
    "kilovolt" "EXACT synonym"))
  ("LAAM"
   ("laam" "LAAM" "CHEBI:6441" "levacetylmethadol" "RELATED synonym"
    "NCIT:C87359" "levomethadyl acetate" "synonym"))
  ("LBS" ("lbs" "LBS" "NCIT:C99177" "liquid-based cytology" "synonym"))
  ("LCPS"
   ("lcps" "LCPS" "Orphanet:363618"
    "LMNA-related cardiocutaneous progeria syndrome" "EXACT synonym"))
  ("LHA"
   ("lha" "LHA" "HGNC:1885 G" "glycoprotein hormones, alpha polypeptide"
    "Synonym" "NCIT:C129841" "CGA" "synonym"))
  ("LOD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("LOINC"
   ("loinc" "LOINC" "NCIT:C49476"
    "logical observation identifiers names and codes" "synonym" "NCIT:C49476"
    "logical observation identifiers names and codes" "synonym" "NCIT:C82502"
    "LOINC code" "synonym"))
  ("LPG"
   ("lpg" "LPG" "CHEBI:59681" "lipophosphoglycan" "RELATED synonym"
    "Orphanet:329481" "Lipoprotein glomerulopathy" "EXACT synonym"
    "NCIT:C84469" "APOE" "synonym"))
  ("LRD" ("lrd" "LRD" "CVCL:5T96" "LRD" "name"))
  ("LTI" ("lti" "LTI" "UP:P83036" "Trypsin inhibitor" "RecName: Short"))
  ("LTR" ("ltr" "LTR" "NCIT:C13251" "long terminal repeat" "synonym"))
  ("LUS" ("lus" "LUS" "NCIT:C154013" "lushai language" "synonym"))
  ("LX"
   ("lx" "LX" "CHEBI:6497" "lipoxin" "RELATED synonym" "NCIT:C48780"
    "LX stage finding" "synonym" "," "lx" "UO:0000116" "lux" "EXACT synonym"
    "NCIT:C42561" "lux" "synonym" "NCIT:C42561" "lux" "synonym" "NCIT:C42561"
    "lux" "synonym" "NCIT:C42561" "lux" "synonym"))
  ("MARB" ("marb" "MarB" "XFAM:PF13999 Family" "MarB" "ID"))
  ("MASCOT"
   ("mascot" "mascot" "NCIT:C68826" "mascot scoring engine" "synonym"))
  ("MAVS"
   ("mavs" "MAVS" "HGNC:29233 G" "mitochondrial antiviral signaling protein"
    "Approved Symbol" "UP:Q7Z434 H" "Mitochondrial antiviral-signaling protein"
    "RecName: Short" "UP:Q8VCF0 M" "Mitochondrial antiviral-signaling protein"
    "RecName: Short" "UP:Q66HG9" "Mitochondrial antiviral-signaling protein"
    "RecName: Short"))
  ("MBI" ("mbi" "MBI" "NCIT:C93316" "scintimammography" "synonym"))
  ("MEMA"
   ("mema" "memA" "HGNC:9162 G" "pinin, desmosome associated protein"
    "Synonym"))
  ("MEOPA" ("meopa" "Meopa" "MESH:C576493" "Meopa" "NM"))
  ("MEPC" ("mepc" "MePC" "MESH:C570869" "2-methylphenyl cinnamate" "SY"))
  ("MFI"
   ("mfi" "MFI" "NCIT:C54719" "multidimensional fatigue inventory" "synonym"
    "NCIT:C96687" "median fluorescence intensity" "synonym"))
  ("MHA"
   ("mha" "MHA" "HGNC:7579 G" "myosin heavy chain 9" "Synonym" "NCIT:C10201"
    "cytarabine/Hydrocortisone/Methotrexate regimen" "synonym" "NCIT:C39450"
    "master of health services administration" "synonym" "NCIT:C97648" "MYH9"
    "synonym"))
  ("MHPA"
   ("mhpa" "mHPA" "Orphanet:79651" "Mild hyperphenylalaninemia"
    "EXACT synonym"))
  ("MHRA"
   ("mhra" "MHRA" "NCIT:C142608"
    "medicines and healthcare products regulatory agency" "synonym"))
  ("MNA"
   ("mna" "MNA" "NCIT:C156666" "microneedle drug delivery system" "synonym"))
  ("MNC"
   ("mnc" "MNC" "NCIT:C154031" "manchu language" "synonym" "NCIT:C154757"
    "mononuclear cell count" "synonym"))
  ("MOAC"
   ("moac" "MoaC" "XFAM:PF01967 Family" "MoaC" "ID" "," "moaC" "FA:02334"
    "moaC family" "ID"))
  ("MPGN"
   ("mpgn" "MPGN" "Orphanet:54370"
    "Primary membranoproliferative glomerulonephritis" "EXACT synonym"))
  ("MYA" ("mya" "MYA" "NCIT:C154041" "burmese language" "synonym"))
  ("MYG"
   ("myg" "MYG" "HGNC:17590 G" "chromosome 12 open reading frame 10"
    "Synonym"))
  ("MZ"
   ("mz" "MZ" "NCIT:C16882" "mozambique" "synonym" "," "mz" "NCIT:C48049"
    "mass-to-charge ratio" "synonym"))
  ("NALT"
   ("nalt" "NALT" "NCIT:C77659" "nasal-associated lymphoid tissue" "synonym"))
  ("NDRI"
   ("ndri" "NDRI" "NCIT:C126658" "national disease research interchange"
    "synonym"))
  ("NEUT" ("neut" "NEUT" "NCIT:C63321" "absolute neutrophil count" "synonym"))
  ("NFC"
   ("nfc" "NFC" "CHEBI:133349" "nanofibrillar cellulose" "RELATED synonym"))
  ("NFS" ("nfs" "NFS" "NCIT:C14478" "NFS mouse" "synonym"))
  ("NHI" ("nhi" "NHI" "NCIT:C157357" "national health insurance" "synonym"))
  ("NIMH"
   ("nimh" "NIMH" "NCIT:C16894" "national institute of mental health"
    "synonym"))
  ("NK"
   ("nk" "NK" "CVCL:1D01" "Novikoff-Hepatoma" "RELATED synonym" "UP:Q57849"
    "Nucleoside kinase" "RecName: Short" "UP:O27587" "Nucleoside kinase"
    "RecName: Short" "UP:Q9HJT3" "Nucleoside kinase" "RecName: Short"
    "NCIT:C12536" "natural killer cell" "synonym" "NCIT:C12741"
    "natural killer cell" "synonym" "NCIT:C12741" "natural killer cell"
    "synonym" "NCIT:C23672" "natural killer cells" "synonym"))
  ("NPV"
   ("npv" "NPV" "NCIT:C41390" "negative predictive value of diagnostic test"
    "synonym"))
  ("NRE"
   ("nre" "NRE" "UP:A2AJ88 M"
    "Patatin-like phospholipase domain-containing protein 7" "AltName: Short"))
  ("NTZ" ("ntz" "NTZ" "MESH:C041747" "nitazoxanide" "SY"))
  ("NVL" ("nvl" "NVL" "HGNC:8070 G" "nuclear VCP like" "Approved Symbol"))
  ("OCTOBER" ("october" "october" "NCIT:C106189" "october" "name"))
  ("OD"
   ("od" "OD" "NCIT:C39384" "doctor of optometry" "synonym" "NCIT:C73681"
    "unit of optical density" "synonym" "NCIT:C119333" "right eye" "synonym"))
  ("OE"
   ("oe" "OE" "CVCL:J350" "OE" "name" "CVCL:U059" "PNMR OE" "RELATED synonym"
    "NCIT:C147180" "ophthalmic examinations domain" "synonym" "," "Oe"
    "NCIT:C68917" "oersted" "synonym"))
  ("OPAL" ("opal" "opal" "CHEBI:64389" "biogenic silica" "RELATED synonym"))
  ("PBM"
   ("pbm" "PBM" "NCIT:C9609" "bleomycin/Cisplatin/Methotrexate regimen"
    "synonym"))
  ("PDDS"
   ("pdds" "PDDS" "NCIT:C112524"
    "patient determined disease steps questionnaire" "synonym" "NCIT:C112524"
    "patient determined disease steps questionnaire" "synonym"))
  ("PEB"
   ("peb" "PEB" "NCIT:C9526" "bleomycin/Cisplatin/Etoposide" "synonym"
    "NCIT:C128248" "PEB regimen" "synonym"))
  ("PEC" ("pec" "PEC" "NCIT:C45634" "perivascular epithelioid cell" "synonym"))
  ("PENH" ("penh" "PENH" "NCIT:C120937" "enhanced pause" "synonym"))
  ("PEV" ("pev" "PEV" "NCIT:C9689" "cisplatin/Etoposide/Vindesine" "synonym"))
  ("POTE"
   ("pote" "POTE" "HGNC:23822 G" "POTE ankyrin domain family member D"
    "Synonym" "FA:02981" "POTE family" "ID"))
  ("POTEI"
   ("potei" "POTEI" "HGNC:37093 G" "POTE ankyrin domain family member I"
    "Approved Symbol"))
  ("PPP"
   ("ppp" "PPP" "CHEBI:73647" "Pro-Pro-Pro" "RELATED synonym" "Orphanet:163927"
    "Pustulosis palmaris et plantaris" "EXACT synonym" "NCIT:C106556"
    "platelet-poor plasma" "synonym"))
  ("PREVISCAN"
   ("previscan" "Previscan" "MESH:C017673" "fluindione" "SY" "," "previscan"
    "CHEBI:134975" "fluindione" "RELATED synonym"))
  ("PROD"
   ("prod" "PROD" "UP:Q5B2E9" "Pyranose 2-oxidase" "RecName: Short" "UP:etc" ""
    "fake"))
  ("PSCP" ("pscp" "PSCP" "NCIT:C52060" "BRCA1" "synonym"))
  ("PVE" ("pve" "PVe" "NCIT:C10263" "cisplatin/Vinblastine" "synonym"))
  ("PVH"
   ("pvh" "PVH" "NCIT:C117272" "periventricular hemorrhage of the newborn"
    "synonym"))
  ("PZ"
   ("pz" "PZ" "HGNC:9460 G"
    "protein Z, vitamin K dependent plasma glycoprotein" "Synonym"
    "NCIT:C33308" "peripheral zone of the prostatic parenchyma" "synonym" ","
    "pz" "CHEBI:30367" "pyrazol-1-ide" "RELATED synonym"))
  ("QD"
   ("qd" "QD" "CHEBI:50853" "quantum dot" "RELATED synonym" "NCIT:C25473"
    "daily" "synonym" "NCIT:C25473" "daily" "synonym" "NCIT:C25473" "daily"
    "synonym" "NCIT:C25473" "daily" "synonym"))
  ("QIAGEN" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("QL" ("ql" "Q-L" "CHEBI:141429" "Gln-Leu" "RELATED synonym"))
  ("QOL" ("qol" "QOL" "NCIT:C17047" "quality of life" "synonym"))
  ("QT"
   ("qt" "qt" "UO:0010029" "quart" "EXACT synonym" "NCIT:C48534" "quart"
    "synonym"))
  ("QTL" ("qtl" "QTL" "NCIT:C113414" "quantitative trait locus" "synonym"))
  ("QV" ("qv" "Q-V" "CHEBI:141433" "Gln-Val" "RELATED synonym"))
  ("QY" ("qy" "QY" "CHEBI:141432" "Gln-Tyr" "RELATED synonym"))
  ("RFU"
   ("rfu" "RFU" "NCIT:C77535" "relative fluorescence intensity unit" "synonym"
    "NCIT:C77535" "relative fluorescence intensity unit" "synonym"))
  ("RGD"
   ("rgd" "RGD" "NCIT:C13288" "RGD motif" "synonym" "NCIT:C74914"
    "rat genome database" "synonym"))
  ("RLT" ("rlt" "RLT" "NCIT:C123282" "regimen-limiting toxicity" "synonym"))
  ("RMCH"
   ("rmch" "RMCH" "HGNC:2153 G"
    "cyclic nucleotide gated channel subunit beta 3" "Previous Symbol"))
  ("RRT" ("rrt" "RRT" "NCIT:C126400" "renal replacement therapy" "synonym"))
  ("SERB" ("serb" "serB" "FA:03572" "serB family" "ID"))
  ("SFM" ("sfm" "SFM" "NCIT:C78804" "atomic force microscope" "synonym"))
  ("SKF"
   ("skf" "SKF" "UP:O31422" "Sporulation killing factor" "RecName: Short"))
  ("SPAG"
   ("spag" "spag" "HGNC:26151 G" "RNA polymerase II associated protein 3"
    "Synonym"))
  ("SPD"
   ("spd" "SP-D" "HGNC:10803 G" "surfactant protein D" "Synonym" "UP:P35247 H"
    "Pulmonary surfactant-associated protein D" "RecName: Short" "UP:P50404 M"
    "Pulmonary surfactant-associated protein D" "RecName: Short" "NCIT:C111322"
    "surfactant protein D measurement" "synonym" "," "SPD" "Orphanet:98454"
    "Platelet storage pool disease" "EXACT synonym" "HGNC:5136 G"
    "homeobox D13" "Previous Symbol" "NCIT:C97584" "HOXD13" "synonym"
    "NCIT:C112850" "symphysis pubis dysfunction" "synonym" "NCIT:C132261"
    "sum of products of perpendicular diameters" "synonym" "," "Spd"
    "CHEBI:35785" "sphingoid" "RELATED synonym"))
  ("SPECT"
   ("spect" "SPECT" "NCIT:C17203" "single photon emission computed tomography"
    "synonym" "NCIT:C17203" "single photon emission computed tomography"
    "synonym"))
  ("SQL" ("sql" "SQL" "NCIT:C54108" "structured query language" "synonym"))
  ("SSC" ("ssc" "SSC" "NCIT:C115467" "sample size calculation" "synonym"))
  ("SSCP"
   ("sscp" "SSCP" "NCIT:C17762" "single-stranded conformational polymorphism"
    "synonym" "NCIT:C17762" "single-stranded conformational polymorphism"
    "synonym"))
  ("SSDI"
   ("ssdi" "SSDI" "NCIT:C107424" "social security death index" "synonym"))
  ("SSE" ("sse" "SSE" "NCIT:C64195" "streaming SIMD extensions" "synonym"))
  ("SWLS"
   ("swls" "SWLS" "NCIT:C115799" "satisfaction with life scale questionnaire"
    "synonym" "NCIT:C115799" "satisfaction with life scale questionnaire"
    "synonym"))
  ("TAPA"
   ("tapa" "TAPA" "HGNC:11566 G" "TAP binding protein" "Synonym" "NCIT:C112140"
    "TAPBP" "synonym"))
  ("TBI" ("tbi" "TBI" "NCIT:C15350" "total-body irradiation" "synonym"))
  ("TCB" ("tcb" "TCB" "NCIT:C74442" "PKM" "synonym"))
  ("TCID"
   ("tcid" "TCID" "NCIT:C67449" "tissue culture infection dose" "synonym"
    "NCIT:C70486" "unit of tissue culture infective dose" "synonym"
    "NCIT:C159126" "GDC tumor code ID terminology" "synonym"))
  ("TDR" ("tdr" "TdR" "NCIT:C880" "thymidine" "synonym"))
  ("TIFF" ("tiff" "TIFF" "NCIT:C70631" "TIFF" "name"))
  ("TIV"
   ("tiv" "TIV" "NCIT:C2643" "trivalent influenza vaccine" "synonym"
    "NCIT:C154168" "tiv language" "synonym" "," "tiv" "NCIT:C154168"
    "tiv language" "synonym"))
  ("TLI"
   ("tli" "TLI" "NCIT:C154170" "tlingit language" "synonym" "NCIT:C156721"
    "total lymphoid irradiation" "synonym" "NCIT:C161508"
    "right and left lung irradiation" "synonym"))
  ("TMHMM" ("tmhmm" "TmHMM" "NCIT:C49038" "TmHMM algorithm" "synonym"))
  ("TNE" ("tne" "TNE" "NCIT:C116393" "total nicotine equivalent" "synonym"))
  ("TOPA"
   ("topa" "TOPA" "UP:P11965" "Lignin-forming anionic peroxidase"
    "AltName: Full"))
  ("TV"
   ("tv" "TV" "CVCL:VU90" "TV" "name" "CHEBI:75193" "tetrazolium violet"
    "RELATED synonym" "NCIT:C17225" "tuvalu" "synonym" "NCIT:C49621"
    "trial visits domain" "synonym" "NCIT:C96983" "television" "synonym"
    "NCIT:C111324" "tidal volume" "synonym" "NCIT:C111324" "tidal volume"
    "synonym" "NCIT:C112910" "treated volume" "synonym"))
  ("TVS"
   ("tvs" "TVS" "NCIT:C17644" "transvaginal ultrasound" "synonym" "NCIT:C17644"
    "transvaginal ultrasound" "synonym"))
  ("UA"
   ("ua" "UA" "NCIT:C17229" "ukraine" "synonym" "," "uA" "UO:0000038"
    "microampere" "EXACT synonym"))
  ("UAE" ("uae" "UAE" "NCIT:C41334" "unexpected adverse event" "synonym"))
  ("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("UGA"
   ("uga" "UGA" "NCIT:C17228" "uganda" "synonym" "NCIT:C17228" "uganda"
    "synonym"))
  ("URL"
   ("url" "URL" "NCIT:C42743" "uniform resource locator" "synonym"
    "NCIT:C95829" "URL data type" "synonym" "NCIT:C95829" "URL data type"
    "synonym"))
  ("USPIO" ("uspio" "USPIO" "NCIT:C38140" "ferumoxtran-10" "synonym"))
  ("VATS"
   ("vats" "VATS" "NCIT:C63704" "video-assisted thoracic surgery" "synonym"))
  ("VGET"
   ("vget" "V-GET" "MESH:C578254"
    "N-(3-chloro-4-methylphenyl)-4-methyl-1,2,3-thiadiazole-5-carboxamide"
    "SY"))
  ("VK" ("vk" "VK" "CHEBI:75014" "Val-Lys" "RELATED synonym"))
  ("VPC"
   ("vpc" "VPC" "NCIT:C62256" "ventricular premature complex by ECG finding"
    "synonym" "NCIT:C62256" "ventricular premature complex by ECG finding"
    "synonym"))
  ("VPE"
   ("vpe" "VPE" "UP:O24325" "Vacuolar-processing enzyme" "RecName: Short"
    "UP:P49043" "Vacuolar-processing enzyme" "RecName: Short" "UP:P49042"
    "Vacuolar-processing enzyme" "RecName: Short" "UP:P49045"
    "Vacuolar-processing enzyme" "RecName: Short" "UP:P49044"
    "Vacuolar-processing enzyme" "RecName: Short"))
  ("VR"
   ("vr" "V-R" "CHEBI:73711" "Val-Arg" "RELATED synonym" "," "VR"
    "CHEBI:140422" "VR nerve agent" "RELATED synonym" "NCIT:C150759"
    "virtual patient encounter" "synonym"))
  ("VSD"
   ("vsd" "VSD" "Orphanet:1480" "Ventricular septal defect" "EXACT synonym"
    "NCIT:C84506" "ventricular septal defect" "synonym"))
  ("VV"
   ("vv" "V-V" "CHEBI:73704" "Val-Val" "RELATED synonym" "," "VV" "NCIT:C14281"
    "vaccinia virus" "synonym"))
  ("WB"
   ("wb" "WB" "NCIT:C14547" "WB mouse" "synonym" "," "Wb" "UO:0000226" "weber"
    "EXACT synonym" "NCIT:C42556" "weber" "synonym" "NCIT:C42556" "weber"
    "synonym" "NCIT:C42556" "weber" "synonym" "NCIT:C42556" "weber" "synonym"))
  ("WBC"
   ("wbc" "WBC" "EFO:0004308" "leukocyte count" "EXACT synonym" "NCIT:C12529"
    "leukocytes" "synonym" "NCIT:C23463" "leukocytes" "synonym" "NCIT:C51948"
    "leukocyte count" "synonym" "NCIT:C51948" "leukocyte count" "synonym"))
  ("XJ"
   ("xj" "XJ" "NCIT:C123760" "jan mayen" "synonym" "NCIT:C123760" "jan mayen"
    "synonym"))
  ("XL"
   ("xl" "XL" "NCIT:C123767" "palmyra atoll" "synonym" "NCIT:C123767"
    "palmyra atoll" "synonym"))
  ("XP"
   ("xp" "XP" "Orphanet:910" "Xeroderma pigmentosum" "EXACT synonym"
    "NCIT:C123768" "paracel islands" "synonym" "NCIT:C123768" "paracel islands"
    "synonym" "NCIT:C141506" "capecitabine/Cisplatin regimen" "synonym" ","
    "Xp" "NCIT:C13565" "Xp" "name"))
  ("ZDV" ("zdv" "ZDV" "NCIT:C947" "zidovudine" "synonym"))
  ("ZEBOV"
   ("zebov" "ZEBOV" "NCIT:C132420" "zaire ebolavirus measurement" "synonym"))
  ("ZM"
   ("zm" "ZM" "CVCL:7022" "ACC-LC-60" "RELATED synonym" "CVCL:E896" "ZM" "name"
    "NCIT:C17267" "zambia" "synonym" "," "zm" "NCIT:C71213" "zeptometer"
    "synonym")))
)

(defparameter *all-lower-drum-terms* 
'(("ab"
   ("ab" "AB" "NCIT:C15111" "AB mouse" "synonym" "NCIT:C45767" "AB term type"
    "synonym" "NCIT:C79967" "AB zebrafish" "synonym" "," "Ab" "NCIT:C16295"
    "antibody" "synonym"))
  ("abetalipoproteinemia"
   ("abetalipoproteinemia" "Abetalipoproteinemia" "Orphanet:14"
    "Abetalipoproteinemia" "name" "," "abetalipoproteinemia" "NCIT:C84525"
    "abetalipoproteinemia" "name"))
  ("abomasum"
   ("abomasum" "ABOMASUM" "NCIT:C98702" "abomasum" "synonym" "," "abomasum"
    "BTO:0000024" "abomasum" "name" "NCIT:C98702" "abomasum" "name"))
  ("abortus" ("abortus" "abortus" "NCIT:C73436" "abortus" "name"))
  ("absorbance"
   ("absorbance" "absorbance" "NCIT:C45995" "energy absorption" "synonym"))
  ("acanthocytes"
   ("acanthocytes" "acanthocytes" "NCIT:C12523" "acanthocytes" "name"
    "NCIT:C23457" "acanthocytes" "name" "NCIT:C74699" "acanthocyte count"
    "synonym" "NCIT:C74699" "acanthocyte count" "synonym"))
  ("aceruloplasminemia"
   ("aceruloplasminemia" "Aceruloplasminemia" "Orphanet:48818"
    "Aceruloplasminemia" "name"))
  ("acetorphan"
   ("acetorphan" "acetorphan" "CHEBI:91508"
    "2-[[2-[(acetylthio)methyl]-1-oxo-3-phenylpropyl]amino]acetic acid (phenylmethyl) ester"
    "RELATED synonym" "MESH:C049331" "racecadotril" "SY"))
  ("acide" ("acide" "acide" "CHEBI:37527" "acid" "RELATED synonym"))
  ("acupressure"
   ("acupressure" "acupressure" "NCIT:C15606" "acupressure therapy" "synonym"
    "NCIT:C15606" "acupressure therapy" "synonym"))
  ("acylamide" ("acylamide" "acylamide" "CHEBI:51512" "acylamide" "name"))
  ("adenopathy"
   ("adenopathy" "adenopathy" "NCIT:C3206" "lymphadenopathy" "synonym"
    "NCIT:C3206" "lymphadenopathy" "synonym" "NCIT:C50764" "lymphadenopathy"
    "synonym" "NCIT:C50764" "lymphadenopathy" "synonym" "NCIT:C50764"
    "lymphadenopathy" "synonym"))
  ("adj"
   ("adj" "ADJ" "NCIT:C2140" "adjuvant" "synonym" "NCIT:C82555"
    "dose adjustment reason" "synonym"))
  ("adolescents"
   ("adolescents" "adolescents" "NCIT:C16266" "adolescents" "name"))
  ("adrenalectomy"
   ("adrenalectomy" "adrenalectomy" "NCIT:C15177" "adrenalectomy" "name"))
  ("adventitia"
   ("adventitia" "adventitia" "BTO:0002010" "tunica externa vasorum"
    "RELATED synonym"))
  ("aesculin" ("aesculin" "Aesculin" "CHEBI:4853" "esculin" "RELATED synonym"))
  ("af"
   ("af" "AF" "CHEBI:73807" "Ala-Phe" "RELATED synonym" "HGNC:9561 G"
    "proteasome 26S subunit, non-ATPase 4" "Synonym" "UP:P55036 H"
    "26S proteasome non-ATPase regulatory subunit 4" "AltName: Short"
    "UP:P39015" "Suppressor protein STM1" "AltName: Short" "UP:Q45071"
    "Arabinoxylan arabinofuranohydrolase" "AltName: Short" "UP:P45796"
    "Arabinoxylan arabinofuranohydrolase" "AltName: Short" "NCIT:C16267"
    "afghanistan" "synonym" "NCIT:C50466" "atrial fibrillation" "synonym"
    "NCIT:C111092" "atrial fibrillation by ECG finding" "synonym"
    "NCIT:C122751" "PSMD4" "synonym"))
  ("affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("afi" ("afi" "AFI" "UP:P10453" "Delta-actitoxin-Afv1a" "AltName: Short"))
  ("agalactia" ("agalactia" "agalactia" "NCIT:C114409" "agalactia" "name"))
  ("ageusia"
   ("ageusia" "ageusia" "EFO:1001758" "ageusia" "name" "NCIT:C116374" "ageusia"
    "name"))
  ("agoniste"
   ("agoniste" "agoniste" "CHEBI:48705" "agonist" "RELATED synonym"))
  ("ait"
   ("ait" "AIT" "CHEBI:73224" "allyl isothiocyanate" "RELATED synonym"
    "HGNC:19119 G" "solute carrier family 5 member 8" "Synonym" "NCIT:C121498"
    "SLC5A8" "synonym"))
  ("akinesia" ("akinesia" "akinesia" "NCIT:C116923" "akinesia" "name"))
  ("akt"
   ("akt" "AKT" "FPLX:AKT" "AKT" "name" "HGNC:391 G"
    "AKT serine/threonine kinase 1" "Synonym" "NCIT:C41625" "protein kinase B"
    "synonym" "," "akt" "UP:Q8INB9" "RAC serine/threonine-protein kinase"
    "AltName: Full" "NCIT:C41625" "protein kinase B" "synonym"))
  ("alfentanil"
   ("alfentanil" "ALFENTANIL" "NCIT:C61626" "alfentanil" "synonym" ","
    "alfentanil" "CHEBI:2569" "alfentanil" "name" "NCIT:C61626" "alfentanil"
    "name"))
  ("algorithm" ("algorithm" "algorithm" "NCIT:C16275" "algorithm" "name"))
  ("alle" ("alle" "alle" "CHEBI:43433" "L-alloisoleucine" "RELATED synonym"))
  ("allograft"
   ("allograft" "allograft" "NCIT:C51673" "allografting" "synonym"
    "NCIT:C60701" "allograft" "name"))
  ("alveoli"
   ("alveoli" "alveoli" "BTO:0000060" "alveolus" "RELATED synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C12986" "alveolus" "synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C23916" "alveoli" "name"))
  ("alveolus"
   ("alveolus" "ALVEOLUS" "NCIT:C12986" "alveolus" "synonym" "," "alveolus"
    "BTO:0000060" "alveolus" "name" "NCIT:C12986" "alveolus" "name"
    "NCIT:C94543" "tooth socket" "synonym"))
  ("amenamevir"
   ("amenamevir" "AMENAMEVIR" "NCIT:C90782" "amenamevir" "synonym" ","
    "amenamevir" "MESH:C568714" "ASP2151" "SY" "NCIT:C90782" "amenamevir"
    "name"))
  ("amikacine"
   ("amikacine" "amikacine" "CHEBI:2637" "amikacin" "RELATED synonym"))
  ("amoxicilina"
   ("amoxicilina" "amoxicilina" "CHEBI:2676" "amoxicillin" "RELATED synonym"))
  ("amoxicilline"
   ("amoxicilline" "amoxicilline" "CHEBI:2676" "amoxicillin" "RELATED synonym"
    "NCIT:C87367" "amoxicillin anhydrous" "synonym"))
  ("amoxycillin"
   ("amoxycillin" "amoxycillin" "CHEBI:2676" "amoxicillin" "RELATED synonym"))
  ("ampelopsin"
   ("ampelopsin" "Ampelopsin" "CHEBI:28429" "(+)-dihydromyricetin"
    "RELATED synonym" "," "ampelopsin" "CHEBI:28917" "dihydromyricetin"
    "RELATED synonym"))
  ("ampicilline"
   ("ampicilline" "ampicilline" "CHEBI:28971" "ampicillin" "RELATED synonym"))
  ("ampicillinsulbactam"
   ("ampicillinsulbactam" "ampicillin-sulbactam" "MESH:C035444" "sultamicillin"
    "SY"))
  ("amprolium"
   ("amprolium" "AMPROLIUM" "NCIT:C76388" "amprolium hydrochloride" "synonym"
    "," "amprolium" "CHEBI:85265" "amprolium" "name" "NCIT:C142371" "amprolium"
    "name"))
  ("amygdala"
   ("amygdala" "AMYGDALA" "NCIT:C12440" "amygdala" "synonym" "," "amygdala"
    "BTO:0001042" "amygdala" "name" "NCIT:C12440" "amygdala" "name"
    "NCIT:C23374" "amygdala" "name"))
  ("analyte" ("analyte" "analyte" "NCIT:C128639" "analyte" "name"))
  ("anasarca" ("anasarca" "anasarca" "NCIT:C98811" "anasarca" "name"))
  ("aneurysm"
   ("aneurysm" "ANEURYSM" "NCIT:C26693" "aneurysm" "synonym" "," "aneurysm"
    "NCIT:C26693" "aneurysm" "name"))
  ("angiography"
   ("angiography" "ANGIOGRAPHY" "NCIT:C20080" "angiography" "synonym" ","
    "angiography" "NCIT:C20080" "angiography" "name"))
  ("anguilla"
   ("anguilla" "ANGUILLA" "NCIT:C20133" "anguilla" "synonym" "NCIT:C20133"
    "anguilla" "synonym" "," "anguilla" "NCIT:C20133" "anguilla" "name"))
  ("anisotropy" ("anisotropy" "anisotropy" "NCIT:C17442" "anisotropy" "name"))
  ("annulus"
   ("annulus" "annulus" "BTO:0003627" "annulus fibrosus" "RELATED synonym"))
  ("annum" ("annum" "annum" "NCIT:C29848" "year" "synonym"))
  ("anosmia"
   ("anosmia" "anosmia" "NCIT:C116369" "anosmia" "name" "NCIT:C143230"
    "anosmia, CTCAE" "synonym"))
  ("anoxia" ("anoxia" "anoxia" "NCIT:C2876" "anoxia" "name"))
  ("ans"
   ("ans" "ANS" "CHEBI:39708" "8-anilinonaphthalene-1-sulfonic acid"
    "RELATED synonym" "UP:Q96323 C" "Leucoanthocyanidin dioxygenase"
    "AltName: Short" "NCIT:C12673" "autonomic nervous system" "synonym"))
  ("antagonista"
   ("antagonista" "antagonista" "CHEBI:48706" "antagonist" "RELATED synonym"))
  ("antihistamine"
   ("antihistamine" "antihistamine" "CHEBI:37956" "histamine antagonist"
    "RELATED synonym" "NCIT:C29578" "histamine-1 receptor antagonist" "synonym"
    "NCIT:C29578" "histamine-1 receptor antagonist" "synonym" "NCIT:C29716"
    "antihistamine" "name"))
  ("antrum"
   ("antrum" "antrum" "NCIT:C12259" "gastric antrum" "synonym" "NCIT:C97102"
    "antrum" "name"))
  ("anuria" ("anuria" "anuria" "NCIT:C114699" "anuria" "name"))
  ("ap"
   ("ap" "A-P" "CHEBI:73393" "Ala-Pro" "RELATED synonym" "," "AP" "CVCL:E457"
    "AP" "name" "CHEBI:28971" "ampicillin" "RELATED synonym" "CHEBI:81686"
    "Magnesium L-ascorbic acid-2-phosphate" "RELATED synonym" "EFO:0004533"
    "alkaline phosphatase measurement" "EXACT synonym" "UP:Q03023" "Serralysin"
    "AltName: Short" "UP:Q05431 C" "L-ascorbate peroxidase 1, cytosolic"
    "RecName: Short" "UP:P48534" "L-ascorbate peroxidase, cytosolic"
    "RecName: Short" "UP:C9X4J1" "Anionic peptide" "RecName: Short" "UP:P83456"
    "Alkaline phosphatase" "RecName: Short" "NCIT:C9929"
    "cisplatin/Doxorubicin" "synonym" "NCIT:C16276" "alkaline phosphatase"
    "synonym" "NCIT:C117304" "associated persons domain" "synonym"
    "NCIT:C158998" "GDC anaplasia present terminology" "synonym"))
  ("apnea"
   ("apnea" "apnea" "NCIT:C26698" "apnea" "name" "NCIT:C55340" "apnea, CTCAE"
    "synonym" "NCIT:C55340" "apnea, CTCAE" "synonym"))
  ("apocrine"
   ("apocrine" "apocrine" "NCIT:C12712" "exocrine gland" "synonym"
    "NCIT:C43374" "apocrine cell" "synonym"))
  ("apri"
   ("apri" "APRI" "NCIT:C156512"
    "aspartate aminotransferase to platelet ratio index" "synonym"
    "NCIT:C156512" "aspartate aminotransferase to platelet ratio index"
    "synonym"))
  ("ar"
   ("ar" "A-R" "CHEBI:137238" "Ala-Arg" "EXACT synonym" "," "AR" "HGNC:381 G"
    "aldo-keto reductase family 1 member B" "Synonym" "HGNC:644 G"
    "androgen receptor" "Approved Symbol" "UP:P22570 H"
    "NADPH:adrenodoxin oxidoreductase, mitochondrial" "RecName: Short"
    "UP:Q61578 M" "NADPH:adrenodoxin oxidoreductase, mitochondrial"
    "RecName: Short" "UP:P23901 B" "Aldose reductase" "RecName: Short" "UP:etc"
    "" "fake" "NCIT:C1000" "recombinant amphiregulin" "synonym" "NCIT:C16305"
    "argentina" "synonym" "NCIT:C17063" "androgen receptor" "synonym"
    "NCIT:C20431" "amphiregulin" "synonym" "NCIT:C41332" "adverse reaction"
    "synonym" "NCIT:C43495" "arkansas" "synonym" "NCIT:C48539"
    "suppository dosing unit" "synonym" "NCIT:C50861"
    "aortic valve regurgitation" "synonym" "NCIT:C51416" "AREG" "synonym"
    "NCIT:C51572" "AR" "name" "NCIT:C133810" "AKR1B1" "synonym" "NCIT:C133811"
    "aldose reductase" "synonym" "," "Ar" "NCIT:C68867" "acre" "synonym" ","
    "ar" "NCIT:C68869" "are" "synonym"))
  ("arachnoid"
   ("arachnoid" "arachnoid" "BTO:0001636" "arachnoid mater" "RELATED synonym"))
  ("arachnoiditis"
   ("arachnoiditis" "arachnoiditis" "NCIT:C37913" "arachnoiditis" "name"
    "NCIT:C143295" "arachnoiditis, CTCAE" "synonym"))
  ("aromatherapy"
   ("aromatherapy" "aromatherapy" "NCIT:C62681"
    "aromatherapy and essential oils" "synonym" "NCIT:C62681"
    "aromatherapy and essential oils" "synonym"))
  ("arrhythmia"
   ("arrhythmia" "arrhythmia" "EFO:0004269" "cardiac arrhythmia"
    "EXACT synonym" "NCIT:C2881" "arrhythmia" "name"))
  ("arteriole"
   ("arteriole" "arteriole" "BTO:0001997" "arteriole" "name" "NCIT:C12672"
    "arteriole" "name" "NCIT:C23603" "arteriole" "name"))
  ("arthroplasty"
   ("arthroplasty" "arthroplasty" "NCIT:C51691" "arthroplasty" "name"))
  ("asperuloside"
   ("asperuloside" "asperuloside" "CHEBI:2881" "asperuloside" "name"
    "MESH:C077956" "asperuloside" "NM"))
  ("astroglia"
   ("astroglia" "astroglia" "BTO:0003852" "astroglia" "name" "NCIT:C12477"
    "astrocyte" "synonym" "NCIT:C23411" "astrocytes" "synonym"))
  ("atcc" ("atcc" "ATCC" "NCIT:C15661" "ATCC" "name"))
  ("atrium"
   ("atrium" "atrium" "BTO:0000903" "atrium" "name" "NCIT:C12728"
    "cardiac atrium" "synonym"))
  ("autoimmune"
   ("autoimmune" "autoimmune" "NCIT:C16313" "autoimmune process" "synonym"
    "NCIT:C37916" "autoimmune" "name"))
  ("autoradiograph"
   ("autoradiograph" "autoradiograph" "NCIT:C95161" "autoradiographic image"
    "synonym"))
  ("autoradiography"
   ("autoradiography" "autoradiography" "NCIT:C16314" "autoradiography"
    "name"))
  ("avec"
   ("avec" "AVEC" "NCIT:C12215"
    "cisplatin/Cyclophosphamide/Doxorubicin/Teniposide" "synonym"))
  ("avridine"
   ("avridine" "AVRIDINE" "NCIT:C76685" "avridine" "synonym" "," "avridine"
    "MESH:C006270" "avridine" "NM" "NCIT:C76685" "avridine" "name"))
  ("axial" ("axial" "axial" "NCIT:C73439" "axial" "name"))
  ("azepexole"
   ("azepexole" "AZEPEXOLE" "NCIT:C72919" "azepexole" "synonym" "," "azepexole"
    "MESH:C015603" "azepexole" "NM" "NCIT:C72919" "azepexole" "name"))
  ("azepine" ("azepine" "azepine" "CHEBI:48105" "azepine" "name"))
  ("azine" ("azine" "azine" "CHEBI:134360" "azine" "name"))
  ("azlocillin"
   ("azlocillin" "AZLOCILLIN" "NCIT:C293" "azlocillin" "synonym" ","
    "azlocillin" "CHEBI:2956" "azlocillin" "name" "NCIT:C293" "azlocillin"
    "name"))
  ("azote" ("azote" "azote" "CHEBI:25555" "nitrogen atom" "RELATED synonym"))
  ("b"
   ("b" "B" "FA:04115" "B subfamily" "ID" "NCIT:C61481" "boron" "synonym"
    "NCIT:C71200" "bel" "synonym" "," "b" "NCIT:C68866" "barn" "synonym"
    "NCIT:C68866" "barn" "synonym"))
  ("bacitracine"
   ("bacitracine" "bacitracine" "CHEBI:28669" "bacitracin" "RELATED synonym"))
  ("backflow" ("backflow" "backflow" "NCIT:C63290" "backflow" "name"))
  ("bandwidth" ("bandwidth" "bandwidth" "NCIT:C142399" "bandwidth" "name"))
  ("barcode" ("barcode" "barcode" "NCIT:C43361" "barcode" "name"))
  ("basant" ("basant" "Basant" "MESH:C546128" "Basant" "NM"))
  ("baso" ("baso" "BASO" "NCIT:C64470" "total basophil count" "synonym"))
  ("bc" ("bc" "BC" "NCIT:C92225" "best case imputation technique" "synonym"))
  ("beas"
   ("beas" "BEAS" "UP:B6D9A8"
    "Beauvericin nonribosomal cyclodepsipeptide synthetase" "RecName: Short"
    "UP:S0EN43" "Beauvericin nonribosomal cyclodepsipeptide synthetase BEA1"
    "RecName: Short" "UP:G3GBU7"
    "Beauvericin nonribosomal cyclodepsipeptide synthetase BEA1"
    "RecName: Short"))
  ("benzeneacetamide"
   ("benzeneacetamide" "benzeneacetamide" "CHEBI:16562" "2-phenylacetamide"
    "RELATED synonym"))
  ("bevirimat"
   ("bevirimat" "BEVIRIMAT" "NCIT:C78044" "bevirimat" "synonym" "," "bevirimat"
    "CHEBI:65484" "bevirimat" "name" "MESH:C479935" "bevirimat" "NM"
    "NCIT:C78044" "bevirimat" "name"))
  ("bichromate"
   ("bichromate" "bichromate" "CHEBI:33141" "dichromate(2-)"
    "RELATED synonym"))
  ("bioassay"
   ("bioassay" "bioassay" "NCIT:C16341" "bioassay" "name" "NCIT:C42886"
    "bioassay class" "synonym"))
  ("biohazard"
   ("biohazard" "biohazard" "NCIT:C1281" "biohazardous substance" "synonym"))
  ("biopsy"
   ("biopsy" "BIOPSY" "NCIT:C15189" "biopsy" "synonym" "," "biopsy"
    "NCIT:C15189" "biopsy" "name"))
  ("blastocyst"
   ("blastocyst" "blastocyst" "BTO:0001099" "blastocyst" "name" "NCIT:C13739"
    "blastocyst" "name"))
  ("bolus"
   ("bolus" "BOLUS" "NCIT:C48476" "bolus dosing unit" "synonym" "NCIT:C48476"
    "bolus dosing unit" "synonym" "NCIT:C48476" "bolus dosing unit" "synonym"
    "," "bolus" "NCIT:C15678" "bolus infusion procedure" "synonym"
    "NCIT:C48476" "bolus dosing unit" "synonym" "NCIT:C48476"
    "bolus dosing unit" "synonym" "NCIT:C48476" "bolus dosing unit" "synonym"
    "NCIT:C112914" "radiotherapy bolus" "synonym" "NCIT:C125189"
    "alimentary bolus" "synonym"))
  ("boule"
   ("boule" "BOULE" "HGNC:14273 G" "boule homolog, RNA binding protein"
    "Synonym"))
  ("bpm"
   ("bpm" "BPM" "NCIT:C46072" "bilateral prophylactic mastectomy" "synonym" ","
    "bpm" "NCIT:C49673" "beats per minute" "synonym" "NCIT:C49674"
    "breaths per minute" "synonym"))
  ("brainstem"
   ("brainstem" "brainstem" "BTO:0000146" "brain stem" "RELATED synonym"
    "NCIT:C12441" "brain stem" "synonym"))
  ("bremazocine"
   ("bremazocine" "BREMAZOCINE" "NCIT:C91041" "bremazocine" "synonym" ","
    "Bremazocine" "CHEBI:3171" "bremazocine" "name" "," "bremazocine"
    "MESH:C027248" "bremazocine" "NM" "NCIT:C91041" "bremazocine" "name"))
  ("bromotopsentin"
   ("bromotopsentin" "bromotopsentin" "CHEBI:144088" "bromotopsentin" "name"))
  ("bronchoscope"
   ("bronchoscope" "bronchoscope" "NCIT:C17611" "bronchoscope" "name"))
  ("bronchoscopy"
   ("bronchoscopy" "bronchoscopy" "NCIT:C16366" "bronchoscopy" "name"))
  ("browser" ("browser" "browser" "NCIT:C80012" "HTML browser" "synonym"))
  ("buflomedil"
   ("buflomedil" "BUFLOMEDIL" "NCIT:C80610" "buflomedil" "synonym" ","
    "buflomedil" "MESH:C010651" "buflomedil" "NM" "NCIT:C80610" "buflomedil"
    "name"))
  ("bulimia"
   ("bulimia" "bulimia" "EFO:0005204" "bulimia nervosa" "EXACT synonym"
    "NCIT:C34440" "bulimia nervosa" "synonym" "NCIT:C34440" "bulimia nervosa"
    "synonym"))
  ("bullae" ("bullae" "bullae" "NCIT:C111970" "bulla" "synonym"))
  ("bx"
   ("bx" "BX" "UP:P04971" "Thrombin-like enzyme batroxobin" "RecName: Short"
    "NCIT:C48478" "box dosing unit" "synonym" "," "Bx" "NCIT:C15189" "biopsy"
    "synonym"))
  ("bénin" ("bénin" "bénin" "NCIT:C16333" "benin" "synonym"))
  ("c"
   ("c" "C" "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42559" "degree celsius" "synonym" "NCIT:C42559" "degree celsius"
    "synonym" "NCIT:C42559" "degree celsius" "synonym" "NCIT:C63654"
    "cianidanol" "synonym" "NCIT:C67194" "calorie" "synonym" "NCIT:C88109"
    "centesimal series of attenuation" "synonym" "NCIT:C92969" "SPANXC"
    "synonym" "," "c" "NCIT:C62355" "with" "synonym" "NCIT:C67900" "centi"
    "synonym"))
  ("cabo"
   ("cabo" "CABO" "NCIT:C9660" "bleomycin/Cisplatin/Methotrexate/Vincristine"
    "synonym"))
  ("caecum" ("caecum" "caecum" "BTO:0000166" "cecum" "RELATED synonym"))
  ("calmidazolium"
   ("calmidazolium" "calmidazolium" "CHEBI:75400" "calmidazolium" "name"
    "MESH:C031938" "calmidazolium" "NM"))
  ("cannula"
   ("cannula" "cannula" "NCIT:C50343" "cannula device" "synonym" "NCIT:C50343"
    "cannula device" "synonym" "NCIT:C50343" "cannula device" "synonym"))
  ("carac"
   ("carac" "carac" "NCIT:C505" "fluorouracil" "synonym" "NCIT:C125194"
    "topical fluorouracil" "synonym"))
  ("carbimazole"
   ("carbimazole" "CARBIMAZOLE" "NCIT:C83590" "carbimazole" "synonym" ","
    "carbimazole" "CHEBI:617099" "carbimazole" "name" "NCIT:C83590"
    "carbimazole" "name"))
  ("carbodine" ("carbodine" "carbodine" "MESH:C033357" "carbodine" "NM"))
  ("carboxyl" ("carboxyl" "carboxyl" "NCIT:C64369" "carboxyl group" "synonym"))
  ("cardiology" ("cardiology" "cardiology" "NCIT:C86055" "cardiology" "name"))
  ("caregiver"
   ("caregiver" "CAREGIVER" "NCIT:C17445" "caregiver" "synonym" "," "caregiver"
    "NCIT:C17445" "caregiver" "name"))
  ("catheter"
   ("catheter" "catheter" "NCIT:C17446" "catheter" "name" "NCIT:C50344"
    "catheter device" "synonym" "NCIT:C50344" "catheter device" "synonym"
    "NCIT:C50344" "catheter device" "synonym"))
  ("caudatum"
   ("caudatum" "caudatum" "BTO:0000211" "caudate nucleus" "RELATED synonym"))
  ("cavitate" ("cavitate" "cavitate" "NCIT:C78135" "cavitation" "synonym"))
  ("cc"
   ("cc" "C-C" "NCIT:C51371" "CXCR1" "synonym" "," "CC" "CVCL:E520" "CC" "name"
    "CHEBI:28940" "calciol" "RELATED synonym" "XFAM:PF04942 Domain" "CC" "ID"
    "NCIT:C4436" "cholangiocarcinoma" "synonym" "NCIT:C16445"
    "cocos (Keeling) islands" "synonym" "NCIT:C85497" "chief complaint"
    "synonym" "NCIT:C105650" "C-circle" "synonym" "," "cc" "UO:0000097"
    "cubic centimeter" "EXACT synonym" "NCIT:C28254" "milliliter" "synonym"
    "NCIT:C28254" "milliliter" "synonym"))
  ("cea"
   ("cea" "CEA" "HGNC:1817 G" "CEA cell adhesion molecule 5" "Previous Symbol"
    "HGNC:1819 G" "CEA cell adhesion molecule 7" "Synonym" "HGNC:9519 G"
    "pregnancy specific beta-1-glycoprotein 2" "Synonym" "UP:P06731 H"
    "Carcinoembryonic antigen-related cell adhesion molecule 5"
    "AltName: Short" "FA:01836" "CEA family" "ID" "NCIT:C16384"
    "carcinoembryonic antigen-related cell adhesion molecule 5" "synonym"
    "NCIT:C25159" "carcinoembryonic antigen" "synonym" "NCIT:C25159"
    "carcinoembryonic antigen" "synonym" "NCIT:C54407" "CEACAM5" "synonym"
    "NCIT:C81983" "carcinoembryonic antigen measurement" "synonym"))
  ("ceca"
   ("ceca" "CECA" "NCIT:C9734"
    "cisplatin/Cyclophosphamide/Doxorubicin/Etoposide" "synonym"))
  ("cecal" ("cecal" "cecal" "NCIT:C12381" "cecum" "synonym"))
  ("cecum"
   ("cecum" "CECUM" "NCIT:C12381" "cecum" "synonym" "," "cecum" "BTO:0000166"
    "cecum" "name" "NCIT:C12381" "cecum" "name" "NCIT:C23316" "cecum" "name"
    "NCIT:C60549" "cecum" "name"))
  ("cefotaxima"
   ("cefotaxima" "cefotaxima" "CHEBI:204928" "cefotaxime" "RELATED synonym"))
  ("centroid" ("centroid" "centroid" "NCIT:C47930" "centroid" "name"))
  ("cephaloridine"
   ("cephaloridine" "CEPHALORIDINE" "NCIT:C76594" "cephaloridine" "synonym" ","
    "Cephaloridine" "CHEBI:3537" "cefaloridine" "RELATED synonym" ","
    "cephaloridine" "NCIT:C76594" "cephaloridine" "name"))
  ("cephalotaxine"
   ("cephalotaxine" "cephalotaxine" "CHEBI:3540" "cephalotaxine" "name"))
  ("cephamycin" ("cephamycin" "cephamycin" "CHEBI:55429" "cephamycin" "name"))
  ("cercariae"
   ("cercariae" "cercariae" "EFO:0007712" "cercarium" "EXACT synonym"))
  ("cerebellopontine"
   ("cerebellopontine" "cerebellopontine" "NCIT:C28350" "cerebellopontine"
    "name"))
  ("cerebellum"
   ("cerebellum" "CEREBELLUM" "NCIT:C12445" "cerebellum" "synonym" ","
    "cerebellum" "BTO:0000232" "cerebellum" "name" "NCIT:C12445" "cerebellum"
    "name" "NCIT:C23379" "cerebellum" "name" "NCIT:C60550" "cerebellum"
    "name"))
  ("cerebritis" ("cerebritis" "cerebritis" "NCIT:C27199" "cerebritis" "name"))
  ("cerebrum"
   ("cerebrum" "CEREBRUM" "NCIT:C12351" "cerebral hemispheres" "synonym" ","
    "cerebrum" "BTO:0000239" "telencephalon" "RELATED synonym" "NCIT:C12351"
    "cerebral hemispheres" "synonym" "NCIT:C12351" "cerebral hemispheres"
    "synonym" "NCIT:C23286" "cerebral hemispheres" "synonym"))
  ("cerumen"
   ("cerumen" "CERUMEN" "NCIT:C32293" "cerumen" "synonym" "," "cerumen"
    "NCIT:C32293" "cerumen" "name"))
  ("cet" ("cet" "CET" "CHEBI:124991" "cefalotin" "RELATED synonym"))
  ("cgi"
   ("cgi" "CGI" "NCIT:C54668" "CpG island" "synonym" "NCIT:C135738"
    "clinical global impression generic modification version questionnaire"
    "synonym"))
  ("chemo" ("chemo" "chemo" "NCIT:C15632" "chemotherapy" "synonym"))
  ("chez" ("chez" "CheZ" "XFAM:PF04344 Family" "CheZ" "ID"))
  ("chimerism" ("chimerism" "chimerism" "NCIT:C62582" "chimerism" "name"))
  ("choroid"
   ("choroid" "CHOROID" "NCIT:C12344" "choroid" "synonym" "," "choroid"
    "BTO:0001829" "choroid" "name" "NCIT:C12344" "choroid" "name" "NCIT:C23279"
    "choroid" "name"))
  ("chosen"
   ("chosen" "CHOSEN" "NCIT:C158172" "chosen chinese" "synonym" "," "chosen"
    "NCIT:C48912" "choose" "synonym"))
  ("chp"
   ("chp" "CHP" "CHEBI:78673" "cumene hydroperoxide" "RELATED synonym"
    "HGNC:17433 G" "calcineurin like EF-hand protein 1" "Synonym" "FA:05055"
    "CHP subfamily" "ID" "NCIT:C153882" "chipewyan language" "synonym" ","
    "Chp" "HGNC:18313 G" "ras homolog family member V" "Synonym"))
  ("chylothorax"
   ("chylothorax" "Chylothorax" "EFO:1001780" "Chylothorax" "name" ","
    "chylothorax" "NCIT:C58027" "chylothorax, CTCAE" "synonym" "NCIT:C58027"
    "chylothorax, CTCAE" "synonym" "NCIT:C79546" "chylothorax" "name"
    "NCIT:C127830" "chylothorax" "name"))
  ("chymotrypsinlike"
   ("chymotrypsinlike" "chymotrypsin-like" "HGNC:2524 G" "chymotrypsin like"
    "Previous Name"))
  ("ci"
   ("ci" "C-I" "NCIT:C48672" "schedule I substance" "synonym" "," "CI"
    "CVCL:Y548" "CI" "name" "EFO:0000370" "chemically induced mutation"
    "EXACT synonym" "HGNC:7701 G" "NADH:ubiquinone oxidoreductase subunit B6"
    "Synonym" "UP:Q07842" "NADH-ubiquinone oxidoreductase 10.5 kDa subunit"
    "AltName: Short" "UP:P07040" "Repressor c protein" "AltName: Full"
    "UP:P06019" "Repressor protein c" "AltName: Full" "NCIT:C16762"
    "cote d'Ivoire" "synonym" "NCIT:C45771" "CI term type" "synonym"
    "NCIT:C48672" "schedule I substance" "synonym" "NCIT:C48672"
    "schedule I substance" "synonym" "NCIT:C112239"
    "coagulation index measurement" "synonym" "," "Ci" "UO:0000133" "curie"
    "EXACT synonym" "NCIT:C48466" "curie" "synonym" "NCIT:C48466" "curie"
    "synonym" "NCIT:C48466" "curie" "synonym" "NCIT:C48466" "curie" "synonym"
    "NCIT:C48466" "curie" "synonym"))
  ("ciclosporine"
   ("ciclosporine" "ciclosporine" "CHEBI:4031" "cyclosporin A"
    "RELATED synonym"))
  ("cie"
   ("cie" "CIE" "Orphanet:79394"
    "Congenital non-bullous ichthyosiform erythroderma" "EXACT synonym"))
  ("ciprofloxacine"
   ("ciprofloxacine" "ciprofloxacine" "CHEBI:100241" "ciprofloxacin"
    "RELATED synonym"))
  ("cisplatine"
   ("cisplatine" "cisplatine" "CHEBI:27899" "cisplatin" "RELATED synonym"))
  ("cj" ("cj" "CJ" "CVCL:UI83" "CJ" "name"))
  ("coculture"
   ("coculture" "Co-culture" "NCIT:C93168" "Co-culture" "name" "," "co-culture"
    "BTO:0003143" "coculture" "name" "NCIT:C93168" "Co-culture" "synonym"))
  ("codon" ("codon" "codon" "NCIT:C62019" "codon" "name"))
  ("coiledcoil"
   ("coiledcoil" "coiled-coil" "NCIT:C13967" "coiled-coil domain" "synonym"))
  ("colonoscopy"
   ("colonoscopy" "colonoscopy" "NCIT:C16450" "colonoscopy" "name"))
  ("colostrum"
   ("colostrum" "COLOSTRUM" "NCIT:C32348" "human colostrum" "synonym" ","
    "colostrum" "BTO:0000276" "colostrum" "name"))
  ("columbia" ("columbia" "columbia" "NCIT:C44057" "columbia" "name"))
  ("comorbid"
   ("comorbid" "COMORBID" "NCIT:C159021" "GDC comorbidity terminology"
    "synonym"))
  ("conc"
   ("conc" "CONC" "NCIT:C41185" "concentration" "synonym" "NCIT:C41185"
    "concentration" "synonym" "NCIT:C60891" "concentrated dosage form"
    "synonym" "," "c-ONC" "NCIT:C17023" "proto-oncogene" "synonym" "," "conc"
    "NCIT:C60891" "concentrated dosage form" "synonym"))
  ("cond"
   ("cond" "COND" "NCIT:C82507" "protocol test conditions met" "synonym"))
  ("conjunctiva"
   ("conjunctiva" "CONJUNCTIVA" "NCIT:C12341" "conjunctiva" "synonym" ","
    "conjunctiva" "BTO:0003415" "conjunctiva" "name" "NCIT:C12341"
    "conjunctiva" "name" "NCIT:C23276" "conjunctiva" "name" "NCIT:C60555"
    "conjunctiva" "name"))
  ("contig" ("contig" "contig" "NCIT:C40984" "contig" "name"))
  ("coonhound"
   ("coonhound" "coonhound" "NCIT:C53921" "black and tan coonhound" "synonym"))
  ("corium"
   ("corium" "corium" "BTO:0000294" "dermis" "RELATED synonym" "NCIT:C12701"
    "dermis" "synonym"))
  ("corynanthine"
   ("corynanthine" "Corynanthine" "CHEBI:92122" "Corynanthine" "name"))
  ("crospovidone"
   ("crospovidone" "crospovidone" "NCIT:C80893" "crospovidone" "name"))
  ("crossover"
   ("crossover" "CROSS-OVER" "NCIT:C82637" "crossover study" "synonym" ","
    "CROSSOVER" "NCIT:C82637" "crossover study" "synonym"))
  ("cryostat" ("cryostat" "cryostat" "NCIT:C63393" "cryostat" "name"))
  ("ctc"
   ("ctc" "CTC" "NCIT:C9685" "CTC regimen" "synonym" "NCIT:C25468"
    "common toxicity criteria" "synonym" "NCIT:C28395"
    "computed tomography colonography" "synonym" "NCIT:C49704"
    "common terminology criteria for adverse events" "synonym" "NCIT:C63797"
    "circulating tumor cell" "synonym" "NCIT:C63797" "circulating tumor cell"
    "synonym" "NCIT:C96593" "circulating tumor cell count" "synonym"))
  ("cuta"
   ("cuta" "CUTA" "HGNC:21101 G" "cutA divalent cation tolerance homolog"
    "Approved Symbol" "NCIT:C114654" "CUTA" "name" "," "cutA" "FA:00789"
    "cutA family" "ID"))
  ("cutis"
   ("cutis" "cutis" "BTO:0000294" "dermis" "RELATED synonym" "NCIT:C12701"
    "dermis" "synonym"))
  ("cv"
   ("cv" "C-V" "NCIT:C48679" "schedule V substance" "synonym" "," "CV"
    "UP:SL-0073 D" "Contractile vacuole" "SY" "NCIT:C9713"
    "cyclophosphamide/Etoposide regimen" "synonym" "NCIT:C16382" "cape verde"
    "synonym" "NCIT:C48679" "schedule V substance" "synonym" "NCIT:C48679"
    "schedule V substance" "synonym" "NCIT:C54631" "curriculum vitae" "synonym"
    "NCIT:C63904" "coefficient of variance" "synonym" "NCIT:C80251" "supper"
    "synonym" "NCIT:C102605" "cardiovascular system findings domain"
    "synonym"))
  ("cy" ("cy" "CY" "NCIT:C16480" "cyprus" "synonym"))
  ("cyclazocine"
   ("cyclazocine" "CYCLAZOCINE" "NCIT:C80571" "cyclazocine" "synonym" ","
    "cyclazocine" "NCIT:C80571" "cyclazocine" "name"))
  ("cyclopentene"
   ("cyclopentene" "cyclopentene" "CHEBI:49155" "cyclopentene" "name"))
  ("cyclorphan" ("cyclorphan" "cyclorphan" "MESH:C084603" "cyclorphan" "NM"))
  ("cystein" ("cystein" "Cystein" "CHEBI:15356" "cysteine" "RELATED synonym"))
  ("cystoscopy"
   ("cystoscopy" "CYSTOSCOPY" "NCIT:C16482" "cystoscopy" "synonym" ","
    "cystoscopy" "NCIT:C16482" "cystoscopy" "name"))
  ("cytology"
   ("cytology" "cytology" "NCIT:C16490" "cytological procedure" "synonym"
    "NCIT:C16491" "cytology" "name"))
  ("cytopathology"
   ("cytopathology" "cytopathology" "NCIT:C20611" "cytopathology" "name"))
  ("daphnane"
   ("daphnane" "daphnane" "CHEBI:36058" "daphnane" "name" "MESH:C011309"
    "mezerein" "SY"))
  ("daycare" ("daycare" "daycare" "NCIT:C84278" "daycare" "name"))
  ("decidua"
   ("decidua" "decidua" "BTO:0001360" "decidua" "name" "NCIT:C32425" "decidua"
    "name"))
  ("def"
   ("def" "DEF" "CHEBI:38737" "tribufos" "RELATED synonym" "HGNC:28440 G"
    "UTP25 small subunit processor component" "Synonym" "MESH:C006863"
    "butyl phosphorotrithioate" "SY" "," "def" "FA:00922" "def family" "ID"))
  ("dehydroandrographolide"
   ("dehydroandrographolide" "dehydroandrographolide" "MESH:C478098"
    "dehydroandrographolide" "NM"))
  ("deltoid" ("deltoid" "deltoid" "NCIT:C32446" "deltoid" "name"))
  ("densitometer"
   ("densitometer" "densitometer" "NCIT:C50055" "densitometer device" "synonym"
    "NCIT:C50055" "densitometer device" "synonym"))
  ("deracoxib"
   ("deracoxib" "DERACOXIB" "NCIT:C73031" "deracoxib" "synonym" "," "deracoxib"
    "CHEBI:73032" "deracoxib" "name" "MESH:C471996" "deracoxib" "NM"
    "NCIT:C73031" "deracoxib" "name"))
  ("dermorphin"
   ("dermorphin" "dermorphin" "UP:P86633" "Dermorphin" "RecName: Full"
    "UP:P85887" "Dermorphin" "RecName: Full" "MESH:C030058" "dermorphin" "NM"))
  ("deze" ("deze" "DEZE" "CVCL:VU92" "BB90-MEL" "RELATED synonym"))
  ("df"
   ("df" "DF" "CVCL:W108" "DF" "name" "CVCL:2437" "Df" "name" "CHEBI:73830"
    "Asp-Phe" "RELATED synonym" "HGNC:2771 G" "complement factor D"
    "Previous Symbol" "NCIT:C73558" "dosage form unit" "synonym" "NCIT:C84325"
    "CFD" "synonym"))
  ("dh"
   ("dh" "D-H" "CHEBI:73451" "Asp-His" "RELATED synonym" "," "DH" "EFO:1000684"
    "dermatitis herpetiformis" "EXACT synonym" "UP:P23834" "Diuretic hormone"
    "RecName: Short" "UP:etc" "" "fake" "NCIT:C14664" "DH mouse" "synonym"))
  ("diag" ("diag" "DIAG" "NCIT:C25482" "diagnostic" "synonym"))
  ("diazomethane"
   ("diazomethane" "diazomethane" "CHEBI:73716" "diazomethane" "name"))
  ("didrovaltrate"
   ("didrovaltrate" "DIDROVALTRATE" "NCIT:C77251" "didrovaltrate" "synonym" ","
    "Didrovaltrate" "CHEBI:4517" "Didrovaltratum" "RELATED synonym" ","
    "didrovaltrate" "MESH:C024750" "didrovaltrate" "NM" "NCIT:C77251"
    "didrovaltrate" "name"))
  ("diploid" ("diploid" "diploid" "NCIT:C118941" "diploidy" "synonym"))
  ("diprenorphine"
   ("diprenorphine" "Diprenorphine" "CHEBI:4650" "Diprenorphine" "name"))
  ("disassemble"
   ("disassemble" "disassemble" "NCIT:C52475" "disassembly" "synonym"))
  ("dit"
   ("dit" "DIT" "CHEBI:15768" "3,5-diiodo-L-tyrosine" "RELATED synonym" ","
    "dit" "UP:D3WAD3" "Distal tail protein" "RecName: Short" "UP:O21883"
    "Distal tail protein" "RecName: Short" "UP:O48459"
    "Distal tail protein {ECO:0000312|EMBL:CAA66560.1}" "RecName: Short"
    "UP:Q6QGE8" "Distal tail protein" "RecName: Short"))
  ("diverticulum"
   ("diverticulum" "DIVERTICULUM" "NCIT:C26753" "diverticulum" "synonym" ","
    "diverticulum" "BTO:0001646" "ureteric bud" "RELATED synonym" "NCIT:C26753"
    "diverticulum" "name"))
  ("dix" ("dix" "DIX" "XFAM:PF00778 Family" "DIX" "ID"))
  ("domi"
   ("domi" "dOmi" "UP:Q9VFJ3" "Serine protease HTRA2, mitochondrial"
    "AltName: Short"))
  ("dorsum"
   ("dorsum" "dorsum" "BTO:0001713" "dorsum" "name" "NCIT:C32481" "dorsum"
    "name"))
  ("dp"
   ("dp" "D-P" "CHEBI:137245" "Asp-Pro" "RELATED synonym" "," "DP"
    "EFO:0004015" "duplication" "EXACT synonym" "HGNC:9591 G"
    "prostaglandin D2 receptor" "Synonym" "UP:P15924 H" "Desmoplakin"
    "RecName: Short" "UP:E9Q557 M" "Desmoplakin" "RecName: Short"
    "XFAM:PF08781 Domain" "DP" "ID" "NCIT:C445" "dipyridamole" "synonym"
    "NCIT:C39389" "doctor of podiatric medicine" "synonym" "NCIT:C88037"
    "desmoplakin" "synonym" "," "Dp" "UP:P69931"
    "DnaA regulatory inactivator Hda" "AltName: Short"))
  ("duloxetine"
   ("duloxetine" "DULOXETINE" "NCIT:C65495" "duloxetine" "synonym" ","
    "duloxetine" "CHEBI:36796" "duloxetine" "name" "NCIT:C65495" "duloxetine"
    "name"))
  ("dur" ("dur" "DUR" "NCIT:C25330" "duration" "synonym"))
  ("dura"
   ("dura" "dura" "BTO:0001637" "dura mater" "RELATED synonym" "NCIT:C32488"
    "dura mater" "synonym"))
  ("dwarfism" ("dwarfism" "dwarfism" "NCIT:C34554" "dwarfism" "name"))
  ("dyskinesia" ("dyskinesia" "dyskinesia" "NCIT:C50539" "dyskinesia" "name"))
  ("dyslipidemia"
   ("dyslipidemia" "dyslipidemia" "NCIT:C80385" "dyslipidemia" "name"))
  ("dysphagia"
   ("dysphagia" "dysphagia" "NCIT:C2980" "dysphagia" "name" "NCIT:C57795"
    "dysphagia, CTCAE" "synonym"))
  ("dysplasia" ("dysplasia" "dysplasia" "NCIT:C4086" "dysplasia" "name"))
  ("dyspnea"
   ("dyspnea" "DYSPNEA" "NCIT:C2998" "dyspnea" "synonym" "," "dyspnea"
    "NCIT:C2998" "dyspnea" "name" "NCIT:C58185" "dyspnea, CTCAE" "synonym"))
  ("dysuria"
   ("dysuria" "dysuria" "EFO:0003901" "dysuria" "name" "NCIT:C2999" "dysuria"
    "name" "NCIT:C143237" "dysuria, CTCAE" "synonym"))
  ("e"
   ("e" "E" "NCIT:C67893" "exa" "synonym" "," "e" "NCIT:C68800"
    "elementary charge" "synonym"))
  ("ea"
   ("ea" "EA" "CVCL:E575" "EA" "name" "CHEBI:73849" "Glu-Ala" "RELATED synonym"
    "UP:P49343" "Omega/M-ectatotoxin-Et1a subunit A" "AltName: Short"
    "UP:P49344" "Omega/M-ectatotoxin-Et1a subunit B" "AltName: Short"
    "NCIT:C485" "ethacrynic acid" "synonym" "NCIT:C64933" "each" "synonym" ","
    "Ea" "UP:P60775"
    "Erabutoxin a {ECO:0000303|PubMed:4941832, ECO:0000303|PubMed:5166329}"
    "RecName: Short"))
  ("echocardiography"
   ("echocardiography" "ECHOCARDIOGRAPHY" "NCIT:C16525" "echocardiography"
    "synonym" "," "echocardiography" "NCIT:C16525" "echocardiography" "name"))
  ("ecotype" ("ecotype" "ecotype" "EFO:0000434" "ecotype" "name"))
  ("ecthyma" ("ecthyma" "ecthyma" "EFO:1000689" "ecthyma" "name"))
  ("edema"
   ("edema" "EDEMA" "NCIT:C3002" "edema" "synonym" "," "edema" "NCIT:C3002"
    "edema" "name"))
  ("een"
   ("een" "EEN" "HGNC:10830 G"
    "SH3 domain containing GRB2 like 1, endophilin A2" "Synonym" "UP:Q99961 H"
    "Endophilin-A2" "AltName: Short" "NCIT:C97789" "SH3GL1" "synonym"
    "NCIT:C97790" "endophilin-A2" "synonym"))
  ("ef"
   ("ef" "EF" "UP:P40136" "Calmodulin-sensitive adenylate cyclase"
    "AltName: Short" "UP:P31482 M" "Phospholipase A2, membrane associated"
    "AltName: Short"))
  ("eg"
   ("eg" "EG" "CHEBI:73505" "Glu-Gly" "RELATED synonym" "NCIT:C16530" "egypt"
    "synonym" "NCIT:C49626" "electrocardiogram domain" "synonym"))
  ("ei"
   ("ei" "EI" "CVCL:F958" "EI" "name" "CHEBI:141436" "Glu-Ile"
    "RELATED synonym" "CHEBI:30969" "aziridine" "RELATED synonym"
    "Orphanet:312" "Epidermolytic ichthyosis" "EXACT synonym" "HGNC:3311 G"
    "serpin family B member 1" "Synonym" "UP:P30740 H"
    "Leukocyte elastase inhibitor" "AltName: Short" "NCIT:C150760"
    "emergency department admit to inpatient hospital stay" "synonym" "," "Ei"
    "CVCL:3978" "Mel Ei" "RELATED synonym" "NCIT:C68574" "exbi" "synonym"))
  ("eld" ("eld" "ELD" "NCIT:C92531" "ARID1A" "synonym"))
  ("electrocardiography"
   ("electrocardiography" "electrocardiography" "EFO:0004327"
    "electrocardiography" "name" "NCIT:C38053" "electrocardiography" "name"))
  ("electroencephalography"
   ("electroencephalography" "ELECTROENCEPHALOGRAPHY" "NCIT:C38054"
    "electroencephalography" "synonym" "," "electroencephalography"
    "NCIT:C38054" "electroencephalography" "name"))
  ("electrophysiology"
   ("electrophysiology" "electrophysiology" "NCIT:C16540" "electrophysiology"
    "name"))
  ("ellipsoid" ("ellipsoid" "ellipsoid" "NCIT:C64363" "ellipsoid" "name"))
  ("elutant" ("elutant" "elutant" "NCIT:C70796" "eluent" "synonym"))
  ("email"
   ("email" "E-mail" "NCIT:C25170" "E-mail" "name" "NCIT:C42775"
    "E-mail address" "synonym" "," "email" "NCIT:C25170" "E-mail" "synonym"
    "NCIT:C42775" "E-mail address" "synonym"))
  ("emboli" ("emboli" "emboli" "NCIT:C50547" "embolus" "synonym"))
  ("embolus"
   ("embolus" "EMBOLUS" "NCIT:C50547" "embolus" "synonym" "," "embolus"
    "NCIT:C50547" "embolus" "name"))
  ("enadoline"
   ("enadoline" "ENADOLINE" "NCIT:C80576" "enadoline" "synonym" "," "enadoline"
    "MESH:C067110" "enadoline" "NM" "NCIT:C80576" "enadoline" "name"))
  ("enantiomer" ("enantiomer" "enantiomer" "NCIT:C103207" "chiral" "synonym"))
  ("endometrium"
   ("endometrium" "ENDOMETRIUM" "NCIT:C12313" "endometrium" "synonym" ","
    "endometrium" "BTO:0001422" "uterine endometrium" "RELATED synonym"
    "NCIT:C12313" "endometrium" "name" "NCIT:C23247" "endometrium" "name"))
  ("endorphin" ("endorphin" "endorphin" "NCIT:C469" "endorphin" "name"))
  ("endoscope"
   ("endoscope" "endoscope" "NCIT:C16545" "endoscope" "name" "NCIT:C49940"
    "endoscope device" "synonym" "NCIT:C49940" "endoscope device" "synonym"
    "NCIT:C49940" "endoscope device" "synonym"))
  ("endoscopy"
   ("endoscopy" "ENDOSCOPY" "NCIT:C16546" "endoscopic procedure" "synonym" ","
    "endoscopy" "NCIT:C16546" "endoscopic procedure" "synonym" "NCIT:C16546"
    "endoscopic procedure" "synonym" "NCIT:C16546" "endoscopic procedure"
    "synonym"))
  ("endosperm" ("endosperm" "endosperm" "BTO:0000390" "endosperm" "name"))
  ("enhancer" ("enhancer" "enhancer" "NCIT:C13296" "enhancer" "name"))
  ("ent"
   ("ent" "ENT" "XFAM:PF03735 Family" "ENT" "ID" "," "eNT" "HGNC:8021 G"
    "5'-nucleotidase ecto" "Synonym" "NCIT:C114925" "NT5E" "synonym"))
  ("enzymology" ("enzymology" "enzymology" "NCIT:C18645" "enzymology" "name"))
  ("eosinophilia"
   ("eosinophilia" "eosinophilia" "NCIT:C3015" "eosinophilia" "name"
    "NCIT:C143190" "eosinophilia, CTCAE" "synonym"))
  ("ependyma"
   ("ependyma" "ependyma" "BTO:0000401" "ependymal epithelium"
    "RELATED synonym" "NCIT:C13078" "ependyma" "name" "NCIT:C23980" "ependyma"
    "name"))
  ("epicardium"
   ("epicardium" "EPICARDIUM" "NCIT:C13164" "epicardium" "synonym" ","
    "epicardium" "NCIT:C13164" "epicardium" "name"))
  ("epididymis"
   ("epididymis" "EPIDIDYMIS" "NCIT:C12328" "epididymis" "synonym" ","
    "epididymis" "BTO:0000408" "epididymis" "name" "NCIT:C12328" "epididymis"
    "name" "NCIT:C22170" "epididymis" "name" "NCIT:C23263" "epididymis" "name"
    "NCIT:C60562" "epididymis" "name"))
  ("epigenome" ("epigenome" "epigenome" "NCIT:C153195" "epigenome" "name"))
  ("epithelium"
   ("epithelium" "epithelium" "BTO:0000416" "epithelium" "name" "NCIT:C12710"
    "epithelium" "name" "NCIT:C23641" "epithelium" "name"))
  ("epm"
   ("epm" "EPM" "HGNC:3403 G" "syntaxin 2" "Synonym" "NCIT:C116089" "STX2"
    "synonym"))
  ("eq"
   ("eq" "E-Q" "CHEBI:141435" "Glu-Gln" "RELATED synonym" "," "EQ"
    "NCIT:C61582" "equality" "synonym" "," "eq" "NCIT:C67273"
    "equivalent weight" "synonym" "NCIT:C67273" "equivalent weight" "synonym"
    "NCIT:C67273" "equivalent weight" "synonym" "NCIT:C67273"
    "equivalent weight" "synonym"))
  ("eravacycline"
   ("eravacycline" "eravacycline" "MESH:C571179"
    "7-fluoro-9-pyrrolidinoacetamido-6-demethyl-6-deoxytetracycline" "SY"))
  ("ergot"
   ("ergot" "ergot" "BTO:0004691" "hippocampus minor" "RELATED synonym"))
  ("erice" ("erice" "ERICE" "UP:O75601" "Caspase-13" "AltName: Short"))
  ("ero" ("ero" "ERO" "HGNC:14007 G" "opsin 3" "Synonym"))
  ("erysipeloid"
   ("erysipeloid" "Erysipeloid" "EFO:1000928"
    "Erysipelothrix rhusiopathiae infectious disease" "EXACT synonym"))
  ("erythema" ("erythema" "erythema" "NCIT:C26901" "erythema" "name"))
  ("esophagectomy"
   ("esophagectomy" "esophagectomy" "NCIT:C15357" "esophagectomy" "name"))
  ("esophagography"
   ("esophagography" "esophagography" "NCIT:C38112" "esophagography" "name"))
  ("esta" ("esta" "estA" "UP:Q9Y871" "Feruloyl esterase B" "AltName: Short"))
  ("et"
   ("et" "-Et" "CHEBI:37807" "ethyl group" "RELATED synonym" "," "E-T"
    "CHEBI:73510" "Glu-Thr" "RELATED synonym" "," "ET" "HGNC:8756 G"
    "phosphate cytidylyltransferase 2, ethanolamine" "Synonym"
    "XFAM:PF01684 Family" "ET" "ID" "NCIT:C3407" "essential thrombocythemia"
    "synonym" "NCIT:C16563" "ethiopia" "synonym" "NCIT:C38208"
    "endotracheal route of administration" "synonym"))
  ("etc"
   ("etc" "ET-C" "UP:P32940" "Endothelin-3 receptor" "AltName: Short" "," "ETC"
    "CVCL:F272" "ETC" "name"))
  ("ethopropazine"
   ("ethopropazine" "ethopropazine" "CHEBI:313639" "profenamine"
    "RELATED synonym" "MESH:C084820" "profenamine" "SY" "NCIT:C73333"
    "ethopropazine" "name"))
  ("ethylketocyclazocine"
   ("ethylketocyclazocine" "Ethylketocyclazocine" "CHEBI:4901"
    "Ethylketocyclazocine" "name"))
  ("etl"
   ("etl" "ETL" "HGNC:20822 G" "adhesion G protein-coupled receptor L4"
    "Synonym" "NCIT:C142549" "extraction transformation load" "synonym"))
  ("etorphine"
   ("etorphine" "ETORPHINE" "NCIT:C80578" "etorphine" "synonym" "," "etorphine"
    "CHEBI:4912" "etorphine" "name" "NCIT:C80578" "etorphine" "name"))
  ("ev"
   ("ev" "EV" "NCIT:C126877" "epidermodysplasia verruciformis" "synonym" ","
    "eV" "UO:0000266" "electronvolt" "EXACT synonym" "NCIT:C67278"
    "electronvolt" "synonym" "NCIT:C67278" "electronvolt" "synonym"))
  ("ew"
   ("ew" "EW" "NCIT:C158199" "ewenki chinese" "synonym" "NCIT:C158199"
    "ewenki chinese" "synonym"))
  ("ex" ("ex" "EX" "NCIT:C49587" "exposure domain" "synonym"))
  ("exome"
   ("exome" "exome" "EFO:0004422" "exome" "name" "NCIT:C101296" "exome"
    "name"))
  ("extl"
   ("extl" "EXTL" "HGNC:3515 G" "exostosin like glycosyltransferase 1"
    "Synonym" "NCIT:C50961" "EXTL1" "synonym"))
  ("exudate"
   ("exudate" "EXUDATE" "NCIT:C13233" "exudate" "synonym" "," "exudate"
    "NCIT:C13233" "exudate" "name" "NCIT:C26417" "exudate" "name"))
  ("f"
   ("f" "F" "NCIT:C502" "fluorine" "synonym" "NCIT:C14560" "F" "name"
    "NCIT:C16576" "female" "synonym" "NCIT:C16576" "female" "synonym"
    "NCIT:C16576" "female" "synonym" "NCIT:C42552" "farad" "synonym"
    "NCIT:C42552" "farad" "synonym" "NCIT:C42552" "farad" "synonym"
    "NCIT:C42552" "farad" "synonym" "NCIT:C44277" "degree fahrenheit" "synonym"
    "NCIT:C44277" "degree fahrenheit" "synonym" "NCIT:C68252"
    "dietary fluorine" "synonym" "," "F-" "NCIT:C28149" "fluoride ion"
    "synonym" "NCIT:C68253" "fluoride" "synonym" "," "f" "NCIT:C67902" "femto"
    "synonym"))
  ("facto" ("facto" "FACT-O" "NCIT:C64712" "FACT-O questionnaire" "synonym"))
  ("fastq" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("fc"
   ("fc" "FC" "UP:Q06529" "Cytochrome subunit of sulfide dehydrogenase"
    "AltName: Short" "UP:etc" "" "fake" "NCIT:C90384" "food consumption"
    "synonym"))
  ("feelings"
   ("feelings" "feelings" "NCIT:C77965" "feelings" "name" "NCIT:C156131"
    "subject's feelings" "synonym"))
  ("fenilalanina"
   ("fenilalanina" "fenilalanina" "CHEBI:28044" "phenylalanine"
    "RELATED synonym"))
  ("fera" ("fera" "FerA" "XFAM:PF08165 Domain" "FerA" "ID"))
  ("ffu" ("ffu" "FFU" "NCIT:C75303" "focus forming unit" "synonym"))
  ("fi"
   ("fi" "FI" "CHEBI:74717" "Phe-Ile" "RELATED synonym" "HGNC:5394 G"
    "complement factor I" "Synonym" "NCIT:C16584" "finland" "synonym"
    "NCIT:C121479" "flexibility index" "synonym"))
  ("fils" ("fils" "FILS" "NCIT:C106233" "POLE" "synonym"))
  ("finafloxacin"
   ("finafloxacin" "FINAFLOXACIN" "NCIT:C80638" "finafloxacin" "synonym" ","
    "finafloxacin" "CHEBI:85176" "finafloxacin" "name" "MESH:C560572"
    "finafloxacin" "NM" "NCIT:C80638" "finafloxacin" "name"))
  ("fl"
   ("fl" "FL" "CVCL:1905" "FL" "name" "CHEBI:91150" "Phe-Leu" "RELATED synonym"
    "NCIT:C43478" "florida" "synonym" "NCIT:C49785" "FLT3LG" "synonym" "," "fL"
    "NCIT:C64780" "femtoliter" "synonym" "NCIT:C64780" "femtoliter" "synonym"
    "NCIT:C64780" "femtoliter" "synonym" "," "fl" "UO:0000104" "femtoliter"
    "EXACT synonym" "NCIT:C64780" "femtoliter" "synonym"))
  ("flareup" ("flareup" "flare-up" "NCIT:C113680" "flare-up" "name"))
  ("fludrocortisone"
   ("fludrocortisone" "FLUDROCORTISONE" "NCIT:C71629" "fludrocortisone"
    "synonym" "," "fludrocortisone" "CHEBI:50885" "fludrocortisone" "name"
    "NCIT:C71629" "fludrocortisone" "name"))
  ("fluindione"
   ("fluindione" "FLUINDIONE" "NCIT:C65714" "fluindione" "synonym" ","
    "fluindione" "CHEBI:134975" "fluindione" "name" "MESH:C017673" "fluindione"
    "NM" "NCIT:C65714" "fluindione" "name"))
  ("fo"
   ("fo" "-FO" "CHEBI:30241" "fluorosyl group" "RELATED synonym" "," "FO"
    "CHEBI:74498" "5-fluoroorotic acid" "RELATED synonym" "CHEBI:43034"
    "7,8-didemethyl-8-hydroxy-5-deazariboflavin" "RELATED synonym"
    "NCIT:C16573" "faroe islands" "synonym" "NCIT:C48494" "fluid ounce US"
    "synonym" "," "Fo" "CHEBI:42485" "formyl group" "RELATED synonym"))
  ("follicle"
   ("follicle" "follicle" "NCIT:C33244" "ovarian follicle" "synonym"
    "NCIT:C61362" "follicle" "name"))
  ("follicles"
   ("follicles" "follicles" "NCIT:C13317" "hair follicle" "synonym"))
  ("followup"
   ("followup" "FOLLOW-UP" "NCIT:C53579" "follow-Up report" "synonym"
    "NCIT:C99158" "clinical study follow-up" "synonym" "," "follow-Up"
    "NCIT:C16033" "follow-Up" "name" "NCIT:C53579" "follow-Up report" "synonym"
    "NCIT:C156846" "follow-Up information" "synonym" "," "follow-up"
    "NCIT:C16033" "follow-Up" "synonym" "NCIT:C16033" "follow-Up" "synonym" ","
    "followup" "NCIT:C16033" "follow-Up" "synonym"))
  ("footpad"
   ("footpad" "FOOTPAD" "NCIT:C92654" "footpad" "synonym" "," "footpad"
    "NCIT:C92654" "footpad" "name"))
  ("forebrain"
   ("forebrain" "FOREBRAIN" "NCIT:C40185" "prosencephalon" "synonym" ","
    "fore-brain" "NCIT:C40185" "prosencephalon" "synonym" "," "forebrain"
    "BTO:0000478" "forebrain" "name" "NCIT:C40185" "prosencephalon" "synonym"))
  ("forma"
   ("forma" "forma" "NCIT:C62688" "forma" "name" "NCIT:C95528" "forma" "name"))
  ("forsythide" ("forsythide" "forsythide" "MESH:C540611" "forsythide" "NM"))
  ("fossa" ("fossa" "fossa" "NCIT:C34007" "fossa" "name"))
  ("fp"
   ("fp" "FP" "CHEBI:74750" "Phe-Pro" "RELATED synonym" "HGNC:9600 G"
    "prostaglandin F receptor" "Synonym" "HGNC:10680 G"
    "succinate dehydrogenase complex flavoprotein subunit A" "Synonym"
    "UP:O82663 C"
    "Succinate dehydrogenase [ubiquinone] flavoprotein subunit 1, mitochondrial"
    "AltName: Short" "UP:Q9ZPX5 C"
    "Succinate dehydrogenase [ubiquinone] flavoprotein subunit 2, mitochondrial"
    "AltName: Short" "UP:Q6ZDY8 R"
    "Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial"
    "AltName: Short" "NCIT:C103874" "SDHA" "synonym" "," "Fp" "UP:P31040 H"
    "Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial"
    "AltName: Short" "UP:Q8K2B3 M"
    "Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial"
    "AltName: Short" "NCIT:C103875"
    "succinate dehydrogenase [Ubiquinone] flavoprotein subunit, mitochondrial"
    "synonym"))
  ("fq" ("fq" "FQ" "CVCL:L984" "FQ" "name"))
  ("fr"
   ("fr" "FR" "CVCL:4202" "FR" "name" "CHEBI:73632" "Phe-Arg" "RELATED synonym"
    "HGNC:11027 G" "solute carrier family 4 member 1 (Diego blood group)"
    "Synonym" "UP:P52556" "Flavin reductase (NADPH)" "RecName: Short"
    "UP:P30043 H" "Flavin reductase (NADPH)" "RecName: Short" "UP:P55736"
    "Flavin reductase (NADPH)" "RecName: Short" "UP:Q923D2 M"
    "Flavin reductase (NADPH)" "RecName: Short" "NCIT:C16592" "france"
    "synonym" "NCIT:C105065" "SLC4A1" "synonym" "," "Fr" "NCIT:C101680"
    "french catheter gauge" "synonym"))
  ("frozen"
   ("frozen" "FROZEN" "NCIT:C70717" "frozen specimen" "synonym" "," "frozen"
    "NCIT:C48160" "freezing" "synonym" "NCIT:C70717" "frozen specimen"
    "synonym" "NCIT:C142502" "database frozen" "synonym"))
  ("ful" ("ful" "FUL" "NCIT:C153924" "fula language" "synonym"))
  ("fundus"
   ("fundus" "fundus" "NCIT:C12257" "fundus of stomach" "synonym" "NCIT:C12315"
    "fundus uteri" "synonym" "NCIT:C13378" "fundus" "name"))
  ("fungemia"
   ("fungemia" "fungemia" "NCIT:C102992" "fungemia" "name" "NCIT:C143210"
    "fungemia, CTCAE" "synonym"))
  ("fut" ("fut" "FUT" "FPLX:FUT" "FUT" "name"))
  ("g"
   ("g" "G" "NCIT:C15033" "G mouse" "synonym" "NCIT:C67896" "giga" "synonym"
    "NCIT:C68783" "gravitational constant" "synonym" "NCIT:C68915" "gauss"
    "synonym" "NCIT:C68915" "gauss" "synonym" "NCIT:C68915" "gauss" "synonym"
    "," "g" "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym"
    "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym" "NCIT:C48162"
    "G force" "synonym" "NCIT:C73772" "unit of gravity" "synonym"))
  ("gadofluorine"
   ("gadofluorine" "gadofluorine" "MESH:C477144" "gadofluorine" "NM"))
  ("gallbladder"
   ("gallbladder" "GALLBLADDER" "NCIT:C12377" "gall bladder" "synonym" ","
    "gallbladder" "BTO:0000493" "gall bladder" "RELATED synonym" "NCIT:C12377"
    "gall bladder" "synonym" "NCIT:C12377" "gall bladder" "synonym"
    "NCIT:C22520" "gallbladder" "name" "NCIT:C23312" "gall bladder" "synonym"))
  ("gardenoside"
   ("gardenoside" "gardenoside" "CHEBI:5277" "gardenoside" "name"
    "MESH:C056587" "gardenoside" "NM"))
  ("gastro"
   ("gastro" "GASTRO" "NCIT:C128681"
    "CDISC SDTM gastrointestinal test name terminology" "synonym"))
  ("gastrocnemius"
   ("gastrocnemius" "gastrocnemius" "BTO:0000506" "gastrocnemius" "name"))
  ("gastroenterology"
   ("gastroenterology" "gastroenterology" "NCIT:C16603" "gastroenterology"
    "name"))
  ("gavage" ("gavage" "gavage" "NCIT:C73430" "gavage" "name"))
  ("gd"
   ("gd" "GD" "CHEBI:73804" "Gly-Asp" "RELATED synonym" "HGNC:8573 G"
    "progestagen associated endometrial protein" "Synonym" "UP:P09466 H"
    "Glycodelin" "RecName: Short" "NCIT:C16647" "grenada" "synonym"
    "NCIT:C161528" "G-series nerve agent GD" "synonym" "NCIT:C161528"
    "G-series nerve agent GD" "synonym" "," "Gd" "NCIT:C39765" "gadolinium"
    "synonym" "," "gD" "UP:P36342 H" "Envelope glycoprotein D" "RecName: Short"
    "UP:etc" "" "fake"))
  ("genitalia"
   ("genitalia" "GENITALIA" "NCIT:C25177" "genitalia" "synonym" "," "genitalia"
    "BTO:0000081" "reproductive system" "RELATED synonym" "NCIT:C25177"
    "genitalia" "name"))
  ("genome"
   ("genome" "genome" "EFO:0004420" "genome" "name" "NCIT:C16629" "genome"
    "name"))
  ("gentiopicroside"
   ("gentiopicroside" "Gentiopicroside" "CHEBI:5321" "Gentiopicrin"
    "RELATED synonym" "," "gentiopicroside" "MESH:C012997" "gentiopicroside"
    "NM"))
  ("gg"
   ("gg" "GG" "NCIT:C64375" "guernsey" "synonym" "," "gG" "UP:P06484 H"
    "Envelope glycoprotein G" "RecName: Short" "UP:P81780 H"
    "Envelope glycoprotein G" "RecName: Short" "UP:P13290 H"
    "Envelope glycoprotein G" "RecName: Short"))
  ("gl"
   ("gl" "G-L" "CHEBI:73514" "Gly-Leu" "RELATED synonym" "," "GL" "CVCL:R903"
    "GL" "name" "HGNC:21652 G"
    "osteoclastogenesis associated transmembrane protein 1" "Synonym"
    "HGNC:14942 G" "protein phosphatase 1 regulatory subunit 3B" "Synonym"
    "UP:Q29458" "Gastric triacylglycerol lipase" "RecName: Short" "UP:P80035"
    "Gastric triacylglycerol lipase" "RecName: Short" "UP:P07098 H"
    "Gastric triacylglycerol lipase" "RecName: Short" "UP:Q9CPP7 M"
    "Gastric triacylglycerol lipase" "RecName: Short" "UP:P04634"
    "Gastric triacylglycerol lipase" "RecName: Short" "NCIT:C16646" "greenland"
    "synonym" "NCIT:C158180" "gelao chinese" "synonym" "NCIT:C158180"
    "gelao chinese" "synonym"))
  ("glia"
   ("glia" "glia" "BTO:0000524" "glia" "name" "NCIT:C12615" "neuroglia"
    "synonym" "NCIT:C23549" "neuroglia" "synonym"))
  ("glucosuria"
   ("glucosuria" "glucosuria" "NCIT:C143238" "glucosuria, CTCAE" "synonym"))
  ("glume" ("glume" "glume" "BTO:0002631" "glume" "name"))
  ("glutamyl"
   ("glutamyl" "glutamyl" "CHEBI:32483" "glutamic acid residue"
    "RELATED synonym"))
  ("glycome" ("glycome" "glycome" "NCIT:C69306" "glycome" "name"))
  ("glycoproteine"
   ("glycoproteine" "glycoproteine" "CHEBI:17089" "glycoprotein"
    "RELATED synonym"))
  ("gondi" ("gondi" "gondi" "NCIT:C153934" "gondi language" "synonym"))
  ("goods" ("goods" "goods" "NCIT:C60759" "supplies" "synonym"))
  ("gp"
   ("gp" "GP" "CVCL:S009" "GEC" "RELATED synonym" "CHEBI:70744" "Gly-Pro"
    "RELATED synonym" "HGNC:18280 G" "ring finger protein 130" "Synonym"
    "UP:P87671 H" "Envelope glycoprotein" "AltName: Short" "UP:Q85429 B"
    "Putative envelope glycoprotein" "RecName: Short" "UP:etc" "" "fake"
    "NCIT:C16651" "guadeloupe" "synonym" "NCIT:C25817"
    "cell division control protein 42 homolog" "synonym" "NCIT:C49450" "CDC42"
    "synonym" "NCIT:C52122" "TNC" "synonym" "NCIT:C111932" "RNF130" "synonym"
    "," "Gp" "CHEBI:28072" "guanosine 3'-monophosphate" "RELATED synonym"))
  ("granin"
   ("granin" "granin" "XFAM:PF01271 Family" "granin" "ID" "XFAM:PF01271 Family"
    "granin" "WK"))
  ("granulocytopenia"
   ("granulocytopenia" "granulocytopenia" "NCIT:C2863" "granulocytopenia"
    "name" "NCIT:C3277" "neutropenia" "synonym" "NCIT:C3277" "neutropenia"
    "synonym" "NCIT:C80520" "neutropenia" "synonym"))
  ("gravida" ("gravida" "gravida" "NCIT:C73435" "gravida" "name"))
  ("gripe"
   ("gripe" "GRIPE" "HGNC:17770 G"
    "Ral GTPase activating protein catalytic alpha subunit 1" "Synonym"
    "UP:Q6GYQ0 H" "Ral GTPase-activating protein subunit alpha-1"
    "AltName: Short" "UP:Q6GYP7 M"
    "Ral GTPase-activating protein subunit alpha-1" "AltName: Short"
    "UP:P86409" "Ral GTPase-activating protein subunit alpha-1"
    "AltName: Short" "UP:O55007"
    "Ral GTPase-activating protein subunit alpha-1" "AltName: Short"))
  ("groupe" ("groupe" "groupe" "CHEBI:24433" "group" "RELATED synonym"))
  ("gt"
   ("gt" "GT" "CHEBI:73920" "Gly-Thr" "RELATED synonym" "EFO:0004030"
    "gene trap" "EXACT synonym" "UP:P51161 H" "Gastrotropin" "RecName: Short"
    "UP:P51162 M" "Gastrotropin" "RecName: Short" "NCIT:C16654" "guatemala"
    "synonym" "NCIT:C51174" "ITGB3" "synonym" "NCIT:C61584" "greater than"
    "synonym" "NCIT:C77164" "ITGA2B" "synonym" "NCIT:C118968" "gastrotropin"
    "synonym" "," "Gt" "CHEBI:73896" "Gly-D-Thr" "RELATED synonym"))
  ("guanfacine"
   ("guanfacine" "GUANFACINE" "NCIT:C61779" "guanfacine" "synonym" ","
    "Guanfacine" "CHEBI:5558" "Guanfacine" "name" "," "guanfacine"
    "NCIT:C61779" "guanfacine" "name"))
  ("guanoxabenz"
   ("guanoxabenz" "GUANOXABENZ" "NCIT:C77298" "guanoxabenz" "synonym" ","
    "guanoxabenz" "CHEBI:135006" "guanoxabenz" "name" "MESH:C028782"
    "guanoxabenz" "NM" "NCIT:C77298" "guanoxabenz" "name"))
  ("haplotype" ("haplotype" "haplotype" "NCIT:C63547" "haplotype" "name"))
  ("heatmap" ("heatmap" "heatmap" "NCIT:C78549" "heatmap" "name"))
  ("helix"
   ("helix" "helix" "NCIT:C32724" "helix" "name" "NCIT:C47937" "helix" "name"
    "NCIT:C48043" "protein helix" "synonym"))
  ("hematochezia"
   ("hematochezia" "hematochezia" "NCIT:C98936" "hematochezia" "name"))
  ("hematocrit"
   ("hematocrit" "hematocrit" "EFO:0004348" "hematocrit" "name" "NCIT:C64796"
    "hematocrit measurement" "synonym" "NCIT:C64796" "hematocrit measurement"
    "synonym" "NCIT:C64796" "hematocrit measurement" "synonym"))
  ("hematology" ("hematology" "hematology" "NCIT:C16673" "hematology" "name"))
  ("hematuria"
   ("hematuria" "hematuria" "NCIT:C3090" "hematuria" "name" "NCIT:C143532"
    "hematuria, CTCAE" "synonym"))
  ("hemi" ("hemi" "HEMI" "NCIT:C81009" "half" "synonym"))
  ("hemimelia"
   ("hemimelia" "HEMIMELIA" "NCIT:C34674" "hemimelia" "synonym" "," "Hemimelia"
    "Orphanet:2130" "Hemimelia" "name" "," "hemimelia" "NCIT:C34674"
    "hemimelia" "name"))
  ("hemocytometer"
   ("hemocytometer" "hemocytometer" "NCIT:C78807" "hemocytometer" "name"))
  ("hemothorax" ("hemothorax" "hemothorax" "NCIT:C50582" "hemothorax" "name"))
  ("heparina"
   ("heparina" "heparina" "CHEBI:28304" "heparin" "RELATED synonym"))
  ("hepatopancreas"
   ("hepatopancreas" "hepatopancreas" "BTO:0000597" "hepatopancreas" "name"))
  ("het"
   ("het" "HET" "HGNC:10520 G" "scaffold attachment factor B" "Synonym"
    "XFAM:PF06985 Family" "HET" "ID" "NCIT:C19674"
    "scaffold attachment factor B1" "synonym" "NCIT:C52292" "SLC22A18"
    "synonym"))
  ("heterozygote"
   ("heterozygote" "heterozygote" "NCIT:C45825" "heterozygosity" "synonym"))
  ("hidden" ("hidden" "hidden" "NCIT:C45671" "hidden" "name"))
  ("hilar"
   ("hilar" "HILAR" "NCIT:C25724" "hilar" "synonym" "," "hilar" "NCIT:C25724"
    "hilar" "name"))
  ("hile" ("hile" "Hile" "CHEBI:24898" "isoleucine" "RELATED synonym"))
  ("hilum" ("hilum" "hilum" "NCIT:C73467" "hilum" "name"))
  ("hindlimb"
   ("hindlimb" "HINDLIMB" "NCIT:C77625" "hind limb" "synonym" "," "hindlimb"
    "BTO:0002345" "hindlimb" "name" "NCIT:C23673" "lower extremity" "synonym"))
  ("hist"
   ("hist" "HIST" "NCIT:C95820" "history data type" "synonym" "NCIT:C95820"
    "history data type" "synonym"))
  ("histology" ("histology" "histology" "NCIT:C16681" "histology" "name"))
  ("histopathology"
   ("histopathology" "histopathology" "NCIT:C18190"
    "histopathologic examination" "synonym" "NCIT:C18190"
    "histopathologic examination" "synonym"))
  ("hl"
   ("hl" "HL" "CVCL:2492" "HL" "name" "CHEBI:5729" "His-Leu" "RELATED synonym"
    "EFO:0000183" "Hodgkins lymphoma" "EXACT synonym" "HGNC:5005 G"
    "3-hydroxy-3-methylglutaryl-CoA lyase" "Synonym" "HGNC:6619 G"
    "lipase C, hepatic type" "Synonym" "UP:P35914 H"
    "Hydroxymethylglutaryl-CoA lyase, mitochondrial" "RecName: Short"
    "UP:P11150 H" "Hepatic triacylglycerol lipase" "RecName: Short"
    "UP:P38060 M" "Hydroxymethylglutaryl-CoA lyase, mitochondrial"
    "RecName: Short" "UP:P27656 M" "Hepatic triacylglycerol lipase"
    "RecName: Short" "UP:O81027 C"
    "Hydroxymethylglutaryl-CoA lyase, mitochondrial" "RecName: Short"
    "NCIT:C9357" "hodgkin lymphoma" "synonym" "NCIT:C82870" "LIPC" "synonym"
    "NCIT:C82875" "hepatic triacylglycerol lipase" "synonym" "," "hL"
    "NCIT:C69106" "hectoliter" "synonym"))
  ("homebound"
   ("homebound" "homebound" "NCIT:C159514" "homebound instruction" "synonym"
    "NCIT:C159514" "homebound instruction" "synonym"))
  ("homemaker" ("homemaker" "homemaker" "NCIT:C75560" "homemaker" "name"))
  ("homogenate" ("homogenate" "homogenate" "NCIT:C113744" "homogenate" "name"))
  ("hor" ("hor" "HOR" "CVCL:E703" "HOR" "name"))
  ("hotspot"
   ("hotspot" "hotspot" "NCIT:C94367" "genetic hotspot" "synonym" "NCIT:C94367"
    "genetic hotspot" "synonym"))
  ("html" ("html" "HTML" "NCIT:C142380" "hypertext markup language" "synonym"))
  ("http"
   ("http" "HTTP" "NCIT:C142279" "huntingtin protein measurement" "synonym"))
  ("hydroxyguanidine"
   ("hydroxyguanidine" "Hydroxyguanidine" "CHEBI:43089" "N-hydroxyguanidine"
    "RELATED synonym"))
  ("hyoscine"
   ("hyoscine" "Hyoscine" "CHEBI:16794" "scopolamine" "RELATED synonym" ","
    "hyoscine" "NCIT:C47712" "scopolamine" "synonym"))
  ("hyperaldosteronism"
   ("hyperaldosteronism" "hyperaldosteronism" "NCIT:C113213"
    "hyperaldosteronism" "name"))
  ("hyperalgesia"
   ("hyperalgesia" "hyperalgesia" "NCIT:C34703" "hyperalgesia" "name"))
  ("hyperbilirubinemia"
   ("hyperbilirubinemia" "hyperbilirubinemia" "NCIT:C27088"
    "hyperbilirubinemia" "name"))
  ("hypercarbia"
   ("hypercarbia" "hypercarbia" "NCIT:C122721" "hypercarbia" "name"))
  ("hypercortisolemia"
   ("hypercortisolemia" "hypercortisolemia" "NCIT:C113208" "hypercortisolemia"
    "name"))
  ("hyperinsulinemia"
   ("hyperinsulinemia" "hyperinsulinemia" "NCIT:C113104" "hyperinsulinemia"
    "name"))
  ("hyperkalemia"
   ("hyperkalemia" "hyperkalemia" "NCIT:C37968" "hyperkalemia" "name"
    "NCIT:C143554" "hyperkalemia, CTCAE" "synonym"))
  ("hypernatremia"
   ("hypernatremia" "hypernatremia" "NCIT:C37970" "hypernatremia" "name"
    "NCIT:C143556" "hypernatremia, CTCAE" "synonym"))
  ("hyperphagia"
   ("hyperphagia" "hyperphagia" "NCIT:C118180" "hyperphagia" "name"))
  ("hyperstriatum"
   ("hyperstriatum" "hyperstriatum" "BTO:0003400" "hyperpallium"
    "RELATED synonym"))
  ("hypodermis" ("hypodermis" "hypodermis" "BTO:0000313" "hypodermis" "name"))
  ("hypokinesia"
   ("hypokinesia" "hypokinesia" "NCIT:C116576" "hypokinesia" "name"))
  ("hypopharynx"
   ("hypopharynx" "HYPOPHARYNX" "NCIT:C12246" "hypopharynx" "synonym"
    "NCIT:C23179" "hypopharynx" "synonym" "," "hypopharynx" "BTO:0001740"
    "hypopharynx" "name" "NCIT:C12246" "hypopharynx" "name" "NCIT:C23179"
    "hypopharynx" "name"))
  ("hypoproteinemia"
   ("hypoproteinemia" "hypoproteinemia" "NCIT:C88511" "hypoproteinemia"
    "name"))
  ("hypothermia"
   ("hypothermia" "hypothermia" "NCIT:C50523" "decreased core body temperature"
    "synonym" "NCIT:C55332" "hypothermia, CTCAE" "synonym" "NCIT:C55332"
    "hypothermia, CTCAE" "synonym" "NCIT:C78351" "hypothermia" "name"))
  ("hypothyroxinemia"
   ("hypothyroxinemia" "hypothyroxinemia" "NCIT:C131820" "hypothyroxinemia"
    "name"))
  ("hypovolemia"
   ("hypovolemia" "hypovolemia" "NCIT:C50595" "hypovolemia" "name"))
  ("hypoxemia" ("hypoxemia" "hypoxemia" "NCIT:C93047" "hypoxemia" "name"))
  ("ibudilast"
   ("ibudilast" "IBUDILAST" "NCIT:C65876" "ibudilast" "synonym" "," "Ibudilast"
    "CHEBI:31684" "Ibudilast" "name" "," "ibudilast" "MESH:C038366" "ibudilast"
    "NM" "NCIT:C65876" "ibudilast" "name"))
  ("icm" ("icm" "ICM" "NCIT:C92684" "between breakfast and lunch" "synonym"))
  ("icterus" ("icterus" "icterus" "NCIT:C111232" "icteric index" "synonym"))
  ("identifier" ("identifier" "identifier" "NCIT:C25364" "identifier" "name"))
  ("idiotype" ("idiotype" "idiotype" "NCIT:C16716" "idiotype" "name"))
  ("ied"
   ("ied" "IED" "Orphanet:92050" "Intestinal epithelial dysplasia"
    "EXACT synonym"))
  ("ifnar"
   ("ifnar" "IFNAR" "HGNC:5432 G"
    "interferon alpha and beta receptor subunit 1" "Previous Symbol"
    "NCIT:C51352" "IFNAR1" "synonym"))
  ("iga"
   ("iga" "IGA" "HGNC:1698 G" "CD79a molecule" "Previous Symbol" "NCIT:C81969"
    "immunoglobulin A measurement" "synonym" "NCIT:C97422" "CD79A" "synonym"
    "," "IgA" "NCIT:C565" "IgA" "name"))
  ("ik"
   ("ik" "I-K" "CHEBI:141440" "Ile-Lys" "RELATED synonym" "," "IK"
    "HGNC:5958 G" "IK cytokine" "Approved Symbol" "HGNC:6293 G"
    "potassium calcium-activated channel subfamily N member 4" "Synonym"))
  ("ileum"
   ("ileum" "ILEUM" "NCIT:C12387" "ileum" "synonym" "," "ileum" "BTO:0000620"
    "ileum" "name" "NCIT:C12387" "ileum" "name" "NCIT:C23322" "ileum" "name"
    "NCIT:C60573" "ileum" "name"))
  ("iliac" ("iliac" "iliac" "NCIT:C32765" "ilium" "synonym"))
  ("ilimaquinone"
   ("ilimaquinone" "Ilimaquinone" "CHEBI:70133" "Ilimaquinone" "name" ","
    "ilimaquinone" "MESH:C467077" "ilimaquinone" "NM"))
  ("imager"
   ("imager" "imager" "NCIT:C49997" "imager device" "synonym" "NCIT:C49997"
    "imager device" "synonym"))
  ("immunoassay"
   ("immunoassay" "IMMUNOASSAY" "NCIT:C16714" "immunoenzyme procedure"
    "synonym" "," "immunoassay" "NCIT:C16723" "immunology test" "synonym"))
  ("immunobiology"
   ("immunobiology" "immunobiology" "NCIT:C20623" "immunobiology" "name"))
  ("immunoblasts"
   ("immunoblasts" "immunoblasts" "NCIT:C103407" "immunoblast count" "synonym"
    "NCIT:C103407" "immunoblast count" "synonym"))
  ("immunochemistry"
   ("immunochemistry" "immunochemistry" "NCIT:C16713" "immunochemistry"
    "name"))
  ("immunocytochemistry"
   ("immunocytochemistry" "immunocytochemistry" "NCIT:C17731"
    "immunocytochemistry" "name"))
  ("immunohistochemistry"
   ("immunohistochemistry" "immunohistochemistry" "NCIT:C16722"
    "immunohistochemistry" "name" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C51944"
    "immunohistochemical test" "synonym"))
  ("immunopathology"
   ("immunopathology" "immunopathology" "NCIT:C18094" "immunopathology"
    "name"))
  ("immunophysiology"
   ("immunophysiology" "immunophysiology" "NCIT:C20623" "immunobiology"
    "synonym"))
  ("ince" ("ince" "IncE" "XFAM:PF17627 Family" "IncE" "ID"))
  ("indanedione"
   ("indanedione" "indanedione" "MESH:C413384" "1,2-indanedione" "SY"))
  ("indel" ("indel" "indel" "NCIT:C99752" "indel mutation" "synonym"))
  ("infundibulum"
   ("infundibulum" "infundibulum" "BTO:0000768" "infundibulum" "name"
    "NCIT:C61368" "infundibulum" "name"))
  ("ing"
   ("ing" "ING" "FA:01856" "ING family" "ID" "XFAM:PF12998 Domain" "ING" "ID"))
  ("inhibiteur"
   ("inhibiteur" "inhibiteur" "CHEBI:35222" "inhibitor" "RELATED synonym"))
  ("insula"
   ("insula" "insula" "BTO:0001105" "insular cortex" "RELATED synonym"
    "NCIT:C32278" "central lobe" "synonym" "NCIT:C32817" "insula" "name"))
  ("internet" ("internet" "internet" "NCIT:C20342" "internet" "name"))
  ("interviewee"
   ("interviewee" "interviewee" "NCIT:C63762" "interviewee" "name"))
  ("intima"
   ("intima" "intima" "BTO:0002012" "tunica intima vasorum" "RELATED synonym"))
  ("io"
   ("io" "-IO" "CHEBI:29897" "iodosyl group" "RELATED synonym" "," "IO"
    "NCIT:C16365" "british indian ocean territory" "synonym"))
  ("ioa" ("ioa" "IOA" "MESH:C071723" "isooctyl acrylate" "SY"))
  ("iodoacetamide"
   ("iodoacetamide" "iodoacetamide" "NCIT:C161898" "iodoacetamide" "name"))
  ("iodophenol" ("iodophenol" "iodophenol" "CHEBI:24863" "iodophenol" "name"))
  ("iotrolan"
   ("iotrolan" "IOTROLAN" "NCIT:C65945" "iotrolan" "synonym" "," "Iotrolan"
    "CHEBI:31715" "Iotrolan" "name" "," "iotrolan" "MESH:C033300" "iotrolan"
    "NM" "NCIT:C65945" "iotrolan" "name"))
  ("ir"
   ("ir" "IR" "CHEBI:74061" "Ile-Arg" "RELATED synonym" "UP:P06213 H"
    "Insulin receptor" "RecName: Short" "UP:P15208 M" "Insulin receptor"
    "RecName: Short" "NCIT:C16755" "iran, islamic republic of" "synonym"
    "NCIT:C17072" "insulin receptor" "synonym" "NCIT:C153156"
    "LYRIC indeterminate response" "synonym" "," "Ir" "NCIT:C95183" "iridium"
    "synonym"))
  ("ischaemia"
   ("ischaemia" "Ischaemia" "EFO:0000556" "ischemia" "EXACT synonym"))
  ("isoacteoside"
   ("isoacteoside" "isoacteoside" "MESH:C064683" "isoacteoside" "NM"))
  ("isocontour" ("isocontour" "isocontour" "NCIT:C70749" "contour" "synonym"))
  ("isoharringtonine"
   ("isoharringtonine" "isoharringtonine" "MESH:C001656" "isoharringtonine"
    "NM"))
  ("isointense" ("isointense" "isointense" "NCIT:C28044" "isointense" "name"))
  ("isomer" ("isomer" "isomer" "NCIT:C94419" "isomer" "name"))
  ("isotropy" ("isotropy" "isotropy" "NCIT:C18274" "isotropy" "name"))
  ("isotype" ("isotype" "isotype" "NCIT:C73483" "antibody isotype" "synonym"))
  ("isoxazoline"
   ("isoxazoline" "isoxazoline" "CHEBI:87553" "isoxazoline" "name"))
  ("endocrinology"
   ("endocrinology" "endocrinology" "NCIT:C16543" "endocrinology" "name"))
  ("istradefylline"
   ("istradefylline" "ISTRADEFYLLINE" "NCIT:C73268" "istradefylline" "synonym"
    "," "istradefylline" "CHEBI:134726" "istradefylline" "name" "MESH:C111599"
    "istradefylline" "NM" "NCIT:C73268" "istradefylline" "name"))
  ("iu"
   ("iu" "IU" "EFO:0002927" "International Unit" "EXACT synonym" "NCIT:C28255"
    "international unit" "synonym" "NCIT:C28255" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C48579"
    "international unit" "synonym" "NCIT:C48579" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C122724" "5-iodouracil"
    "synonym"))
  ("ivermectine"
   ("ivermectine" "ivermectine" "CHEBI:6078" "ivermectin" "RELATED synonym"))
  ("j"
   ("j" "J" "NCIT:C15097" "J mouse" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym"))
  ("jejunum"
   ("jejunum" "JEJUNUM" "NCIT:C12388" "jejunum" "synonym" "," "jejunum"
    "BTO:0000657" "jejunum" "name" "NCIT:C12388" "jejunum" "name" "NCIT:C23323"
    "jejunum" "name" "NCIT:C60575" "jejunum" "name"))
  ("jp"
   ("jp" "JP" "UP:Q6J201"
    "Serine protease inhibitor {ECO:0000312|EMBL:AAT35220.1}" "AltName: Short"
    "NCIT:C16764" "japan" "synonym" "NCIT:C134008" "japanese pharmacopeia"
    "synonym" "NCIT:C158190" "jingpo chinese" "synonym" "NCIT:C158190"
    "jingpo chinese" "synonym"))
  ("k"
   ("k" "K" "NCIT:C765" "potassium" "synonym" "NCIT:C15028" "K mouse" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C64853" "potassium measurement" "synonym" "NCIT:C67234" "thousand"
    "synonym" "NCIT:C68279" "dietary potassium" "synonym" "," "k" "NCIT:C48436"
    "kilo" "synonym"))
  ("kappa" ("kappa" "kappa" "FA:01671" "kappa family" "ID"))
  ("kayexalate"
   ("kayexalate" "Kayexalate" "MESH:C003321" "polystyrene sulfonic acid" "SY"
    "," "kayexalate" "NCIT:C29461" "sodium polystyrene sulfonate" "synonym"))
  ("ketocyclazocine"
   ("ketocyclazocine" "ketocyclazocine" "MESH:C012395" "ketazocine" "SY"))
  ("kinaselike"
   ("kinaselike" "kinase-like" "XFAM:PF14531 Family" "kinase-like" "ID"
    "XFAM:PF14531 Family" "kinase-like" "DE"))
  ("kl"
   ("kl" "KL" "CHEBI:74561" "Lys-Leu" "RELATED synonym" "HGNC:6344 G" "klotho"
    "Approved Symbol" "NCIT:C50971" "KITLG" "synonym" "NCIT:C98115" "KL"
    "name"))
  ("knockin" ("knockin" "knock-in" "NCIT:C22492" "knock-in" "name"))
  ("krokodil" ("krokodil" "krokodil" "MESH:C000599494" "desomorphine" "SY"))
  ("l"
   ("l" "L" "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym" "," "l"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"))
  ("lambda"
   ("lambda" "LAMBDA" "NCIT:C103221" "axial S" "synonym" "," "lambda"
    "NCIT:C48926" "lambda" "name" "NCIT:C86944" "lambda sutural junction"
    "synonym"))
  ("laparotomy" ("laparotomy" "laparotomy" "NCIT:C15266" "laparotomy" "name"))
  ("laryngoscopy"
   ("laryngoscopy" "laryngoscopy" "NCIT:C16781" "laryngoscopy" "name"))
  ("latestage" ("latestage" "late-stage" "NCIT:C93281" "late stage" "synonym"))
  ("lauroyl"
   ("lauroyl" "lauroyl" "CHEBI:32359" "dodecanoyl group" "RELATED synonym"))
  ("lavage"
   ("lavage" "LAVAGE" "NCIT:C38068" "lavage" "synonym" "," "lavage"
    "NCIT:C38068" "lavage" "name"))
  ("lb"
   ("lb" "LB" "CVCL:E751" "LB" "name" "NCIT:C16784" "lebanon" "synonym"
    "NCIT:C48531" "pound" "synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C49592" "laboratory data domain" "synonym" "NCIT:C158212"
    "lhoba chinese" "synonym" "NCIT:C158212" "lhoba chinese" "synonym" "," "lb"
    "UO:0010034" "pound" "EXACT synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C48531" "pound" "synonym"))
  ("lek" ("lek" "LEK" "CVCL:F742" "LEK" "name"))
  ("lem"
   ("lem" "LEM" "HGNC:26854 G" "lymphocyte expansion molecule" "Synonym"
    "FA:02030" "LEM family" "ID" "XFAM:PF03020 Domain" "LEM" "ID"))
  ("leptomeninges"
   ("leptomeninges" "LEPTOMENINGES" "NCIT:C32979" "leptomeninges" "synonym" ","
    "leptomeninges" "NCIT:C32979" "leptomeninges" "name"))
  ("leukocytopenia"
   ("leukocytopenia" "leukocytopenia" "EFO:0004233" "leukopenia"
    "EXACT synonym" "NCIT:C26816" "leukopenia" "synonym"))
  ("levallorphan"
   ("levallorphan" "LEVALLORPHAN" "NCIT:C66004" "levallorphan" "synonym" ","
    "Levallorphan" "CHEBI:6431" "Levallorphan" "name" "," "levallorphan"
    "NCIT:C66004" "levallorphan" "name"))
  ("levomethadyl"
   ("levomethadyl" "Levomethadyl" "CHEBI:6441" "levacetylmethadol"
    "RELATED synonym"))
  ("lifespan" ("lifespan" "lifespan" "NCIT:C153298" "longevity" "synonym"))
  ("ligne" ("ligne" "ligne" "NCIT:C71218" "ligne" "name"))
  ("limiter"
   ("limiter" "limiter" "NCIT:C50032" "limiter device" "synonym" "NCIT:C50032"
    "limiter device" "synonym"))
  ("lipidome" ("lipidome" "lipidome" "NCIT:C153197" "lipidome" "name"))
  ("lmethionine"
   ("lmethionine" "L-Methionine" "CHEBI:49038" "L-methionyl group"
    "RELATED synonym" "CHEBI:49037" "L-methionino group" "RELATED synonym" ","
    "L-methionine" "CHEBI:16044" "L-methionine residue" "RELATED synonym"
    "CHEBI:16643" "L-methionine" "name" "CHEBI:57844" "L-methionine zwitterion"
    "RELATED synonym" "NCIT:C29600" "methionine" "synonym" "NCIT:C29600"
    "methionine" "synonym"))
  ("lobar" ("lobar" "lobar" "NCIT:C25556" "lobar" "name"))
  ("lobectomy" ("lobectomy" "lobectomy" "NCIT:C15272" "lobectomy" "name"))
  ("lobule"
   ("lobule" "lobule" "NCIT:C12990" "lobule" "name" "NCIT:C23920" "lobule"
    "name"))
  ("loge" ("loge" "logE" "NCIT:C79966" "logE" "name"))
  ("lp"
   ("lp" "L-P" "CHEBI:73580" "Leu-Pro" "RELATED synonym" "," "LP" "CVCL:U761"
    "LP" "name" "CHEBI:46895" "lipopeptide" "RELATED synonym" "EFO:0007733"
    "LP/J" "EXACT synonym" "HGNC:6667 G" "lipoprotein(a)" "Previous Symbol"
    "UP:Q9HD40 H" "O-phosphoseryl-tRNA(Sec) selenium transferase"
    "AltName: Short" "NCIT:C14566" "LP mouse" "synonym" "NCIT:C15327"
    "lumbar puncture" "synonym" "NCIT:C140117" "LPA" "synonym"))
  ("lym" ("lym" "LYM" "NCIT:C51949" "lymphocyte count" "synonym"))
  ("lymphadenectomy"
   ("lymphadenectomy" "lymphadenectomy" "NCIT:C15275" "lymphadenectomy"
    "name"))
  ("lymphadenopathy"
   ("lymphadenopathy" "lymphadenopathy" "NCIT:C3206" "lymphadenopathy" "name"
    "NCIT:C50764" "lymphadenopathy" "name"))
  ("lymphocytopenia"
   ("lymphocytopenia" "lymphocytopenia" "NCIT:C26823" "lymphopenia" "synonym"
    "NCIT:C26823" "lymphopenia" "synonym" "NCIT:C26823" "lymphopenia"
    "synonym"))
  ("lymphopenia"
   ("lymphopenia" "lymphopenia" "NCIT:C26823" "lymphopenia" "name"
    "NCIT:C55995" "lymphopenia, CTCAE" "synonym"))
  ("macroglossia"
   ("macroglossia" "Macroglossia" "Orphanet:156207" "Macroglossia" "name" ","
    "macroglossia" "NCIT:C84832" "macroglossia" "name"))
  ("macrosomia" ("macrosomia" "macrosomia" "NCIT:C119954" "macrosomia" "name"))
  ("malakoplakia"
   ("malakoplakia" "malakoplakia" "NCIT:C84833" "malakoplakia" "name"))
  ("masas" ("masas" "mas-AS" "UP:P42559" "Allatostatin" "RecName: Short"))
  ("math"
   ("math" "MATH" "XFAM:PF00917 Domain" "MATH" "ID" "," "math" "NCIT:C16825"
    "mathematics" "synonym"))
  ("maxilla"
   ("maxilla" "MAXILLA" "NCIT:C26470" "maxilla" "synonym" "," "maxilla"
    "NCIT:C26470" "maxilla" "name"))
  ("mcra"
   ("mcra" "MCRA" "UP:B5XK69" "Oleate hydratase" "AltName: Short"
    "XFAM:PF06100 Family" "MCRA" "ID"))
  ("meconium"
   ("meconium" "MECONIUM" "NCIT:C78743" "meconium" "synonym" "NCIT:C147391"
    "meconium measurement" "synonym" "," "meconium" "BTO:0000838" "meconium"
    "name" "NCIT:C78743" "meconium" "name" "NCIT:C147391"
    "meconium measurement" "synonym" "NCIT:C147391" "meconium measurement"
    "synonym"))
  ("mediastinum"
   ("mediastinum" "MEDIASTINUM" "NCIT:C12748" "mediastinum" "synonym" ","
    "mediastinum" "NCIT:C12748" "mediastinum" "name" "NCIT:C22706"
    "mediastinum" "name" "NCIT:C23679" "mediastinum" "name" "NCIT:C60587"
    "mediastinum" "name"))
  ("medulla" ("medulla" "medulla" "NCIT:C79655" "pith" "synonym"))
  ("melena" ("melena" "melena" "NCIT:C86571" "melena" "name"))
  ("meninges"
   ("meninges" "MENINGES" "NCIT:C12348" "meninges" "synonym" "NCIT:C23283"
    "meninges" "synonym" "," "meninges" "BTO:0000144" "meninx"
    "RELATED synonym" "NCIT:C12348" "meninges" "name" "NCIT:C23283" "meninges"
    "name"))
  ("meninx" ("meninx" "meninx" "BTO:0000144" "meninx" "name"))
  ("mercure"
   ("mercure" "mercure" "CHEBI:25195" "mercury atom" "RELATED synonym"))
  ("mesenchyme"
   ("mesenchyme" "mesenchyme" "BTO:0001393" "mesenchyme" "name" "NCIT:C13301"
    "mesenchyme" "name"))
  ("mesentery"
   ("mesentery" "MESENTERY" "NCIT:C33103" "mesentery" "synonym" "," "mesentery"
    "BTO:0001380" "mesentery" "name" "NCIT:C33103" "mesentery" "name"
    "NCIT:C60588" "mesentery" "name"))
  ("metadata" ("metadata" "metadata" "NCIT:C52095" "metadata" "name"))
  ("metazocine"
   ("metazocine" "METAZOCINE" "NCIT:C96731" "metazocine" "synonym" ","
    "Metazocine" "CHEBI:6799" "metazocine" "name" "," "metazocine"
    "MESH:C047238" "metazocine" "NM" "NCIT:C96731" "metazocine" "name"))
  ("methdilazine"
   ("methdilazine" "METHDILAZINE" "NCIT:C66114" "methdilazine" "synonym" ","
    "methdilazine" "CHEBI:6823" "methdilazine" "name" "MESH:C044642"
    "methdilazine" "NM" "NCIT:C66114" "methdilazine" "name"))
  ("methylbromide"
   ("methylbromide" "methylbromide" "MESH:C005218" "methyl bromide" "SY"))
  ("methylcholanthrene"
   ("methylcholanthrene" "Methylcholanthrene" "CHEBI:34342"
    "3-methylcholanthrene" "RELATED synonym" "," "methylcholanthrene"
    "NCIT:C29795" "20-methylcholanthrene" "synonym"))
  ("methylnaloxonium"
   ("methylnaloxonium" "methylnaloxonium" "MESH:C041269" "N-methylnaloxone"
    "SY"))
  ("methylnaltrexone"
   ("methylnaltrexone" "METHYLNALTREXONE" "NCIT:C48403" "methylnaltrexone"
    "synonym" "," "methylnaltrexone" "CHEBI:136007" "methylnaltrexone" "name"
    "MESH:C032257" "methylnaltrexone" "NM" "NCIT:C48403" "methylnaltrexone"
    "name"))
  ("methylthioadenosine"
   ("methylthioadenosine" "Methylthioadenosine" "CHEBI:17509"
    "5'-S-methyl-5'-thioadenosine" "RELATED synonym"))
  ("methysergide"
   ("methysergide" "METHYSERGIDE" "NCIT:C66123" "methysergide" "synonym" ","
    "Methysergide" "CHEBI:584020" "methysergide" "name" "," "methysergide"
    "NCIT:C66123" "methysergide" "name"))
  ("meticillin"
   ("meticillin" "meticillin" "CHEBI:6827" "methicillin" "RELATED synonym"))
  ("metreleptin"
   ("metreleptin" "metreleptin" "MESH:C415771" "metreleptin" "NM"))
  ("metronidazol"
   ("metronidazol" "metronidazol" "CHEBI:6909" "metronidazole"
    "RELATED synonym"))
  ("mianserin"
   ("mianserin" "MIANSERIN" "NCIT:C87209" "mianserin" "synonym" "," "mianserin"
    "CHEBI:51137" "mianserin" "name" "NCIT:C87209" "mianserin" "name"))
  ("mianserine"
   ("mianserine" "mianserine" "CHEBI:51137" "mianserin" "RELATED synonym"))
  ("micelle" ("micelle" "micelle" "NCIT:C93299" "micelle" "name"))
  ("microplate" ("microplate" "microplate" "NCIT:C43377" "microplate" "name"))
  ("microsatellite"
   ("microsatellite" "MICROSATELLITE" "NCIT:C13338" "microsatellite repeat"
    "synonym" "," "microsatellite" "NCIT:C13338" "microsatellite repeat"
    "synonym" "NCIT:C13338" "microsatellite repeat" "synonym"))
  ("microsphere"
   ("microsphere" "microsphere" "NCIT:C94188" "microsphere" "name"))
  ("midbrain"
   ("midbrain" "MIDBRAIN" "NCIT:C12510" "midbrain" "synonym" "," "mid-brain"
    "NCIT:C12510" "midbrain" "synonym" "," "midbrain" "BTO:0000138" "midbrain"
    "name" "NCIT:C12510" "midbrain" "name" "NCIT:C23444" "midbrain" "name"))
  ("midgut"
   ("midgut" "midgut" "BTO:0000863" "midgut" "name" "NCIT:C34210" "midgut"
    "name"))
  ("minisatellite"
   ("minisatellite" "minisatellite" "NCIT:C13334" "minisatellite repeat"
    "synonym"))
  ("mitigan" ("mitigan" "Mitigan" "CHEBI:34692" "dicofol" "RELATED synonym"))
  ("mn"
   ("mn" "M-N" "CHEBI:141442" "Met-Asn" "RELATED synonym" "," "MN"
    "HGNC:1383 G" "carbonic anhydrase 9" "Synonym" "HGNC:4702 G"
    "glycophorin A (MNS blood group)" "Synonym" "NCIT:C16875" "mongolia"
    "synonym" "NCIT:C43486" "minnesota" "synonym" "NCIT:C52348" "GYPA"
    "synonym" "NCIT:C158194" "maonan chinese" "synonym" "NCIT:C158194"
    "maonan chinese" "synonym" "," "Mn" "NCIT:C624" "manganese" "synonym"
    "NCIT:C68266" "dietary manganese" "synonym" "," "mN" "NCIT:C127809"
    "millinewton" "synonym" "NCIT:C127809" "millinewton" "synonym"
    "NCIT:C127809" "millinewton" "synonym"))
  ("monotherapy"
   ("monotherapy" "monotherapy" "NCIT:C157514" "single agent therapy"
    "synonym"))
  ("morph"
   ("morph" "MORPH" "NCIT:C159081" "GDC morphology terminology" "synonym"))
  ("morphiceptin"
   ("morphiceptin" "morphiceptin" "MESH:C028889" "morphiceptin" "NM"))
  ("morpholino" ("morpholino" "morpholino" "NCIT:C60700" "morpholino" "name"))
  ("morula"
   ("morula" "morula" "BTO:0001508" "morula" "name" "NCIT:C34212" "morula"
    "name"))
  ("mt"
   ("mt" "MT" "FPLX:Metallothionein" "Metallothionein" "EXACT synonym"
    "CVCL:6F14" "MT" "name" "CHEBI:73614" "Met-Thr" "RELATED synonym"
    "HGNC:29622 G" "malonyl-CoA-acyl carrier protein transacylase" "Synonym"
    "UP:P0DOJ7 M" "Middle T antigen" "RecName: Short" "UP:P0DOJ9 M"
    "Middle T antigen" "RecName: Short" "UP:P0DOJ8 M" "Middle T antigen"
    "RecName: Short" "UP:P03077 M" "Middle T antigen" "RecName: Short"
    "UP:P12906 M" "Middle T antigen" "RecName: Short" "XFAM:PF12777 Domain"
    "MT" "ID" "NCIT:C16817" "malta" "synonym" "NCIT:C43490" "montana" "synonym"
    "NCIT:C61584" "greater than" "synonym" "NCIT:C61584" "greater than"
    "synonym" "NCIT:C71377" "master of theology" "synonym" "NCIT:C153321"
    "manual therapy" "synonym"))
  ("mucicarmine"
   ("mucicarmine" "mucicarmine" "MESH:C029618" "mucicarmine" "NM"))
  ("mucinlike"
   ("mucinlike" "mucin-like" "XFAM:PF16058 Family" "mucin-like" "ID"
    "XFAM:PF16058 Family" "mucin-like" "DE"))
  ("mucocele" ("mucocele" "mucocele" "NCIT:C83177" "mucous cyst" "synonym"))
  ("mucosa"
   ("mucosa" "MUCOSA" "NCIT:C13166" "mucosa" "synonym" "," "mucosa"
    "BTO:0000886" "mucosa" "name" "NCIT:C13166" "mucosa" "name" "NCIT:C25770"
    "mucous membrane" "synonym"))
  ("multi" ("multi" "multi" "NCIT:C17648" "multiple" "synonym"))
  ("multimedia" ("multimedia" "multimedia" "NCIT:C17962" "multimedia" "name"))
  ("multivitamin"
   ("multivitamin" "multivitamin" "NCIT:C1654" "multivitamin" "name"))
  ("muscularis"
   ("muscularis" "muscularis" "NCIT:C75444" "muscle layer" "synonym"))
  ("musculature"
   ("musculature" "musculature" "BTO:0001485" "muscular system"
    "RELATED synonym"))
  ("myambutol"
   ("myambutol" "myambutol" "NCIT:C29033" "ethambutol hydrochloride"
    "synonym"))
  ("myelography"
   ("myelography" "myelography" "NCIT:C20175" "myelography" "name"))
  ("myelomeningocele"
   ("myelomeningocele" "Myelomeningocele" "Orphanet:93969" "Myelomeningocele"
    "name" "," "myelomeningocele" "NCIT:C101201" "myelomeningocele" "name"))
  ("myocardium"
   ("myocardium" "myocardium" "BTO:0000901" "myocardium" "name" "NCIT:C12371"
    "myocardium" "name" "NCIT:C23306" "myocardium" "name"))
  ("myoclonus" ("myoclonus" "myoclonus" "NCIT:C116924" "myoclonus" "name"))
  ("myokine" ("myokine" "myokine" "NCIT:C157583" "myokine" "name"))
  ("myometrium"
   ("myometrium" "MYOMETRIUM" "NCIT:C12314" "myometrium" "synonym" ","
    "myometrium" "BTO:0000907" "myometrium" "name" "NCIT:C12314" "myometrium"
    "name" "NCIT:C23248" "myometrium" "name"))
  ("n"
   ("n" "N" "NCIT:C14562" "N" "name" "NCIT:C25580" "N category" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C49487" "No" "synonym" "," "n" "NCIT:C54713" "nano" "synonym"))
  ("nalbuphine"
   ("nalbuphine" "NALBUPHINE" "NCIT:C61854" "nalbuphine" "synonym" ","
    "Nalbuphine" "CHEBI:7454" "nalbuphine" "name" "," "nalbuphine"
    "NCIT:C61854" "nalbuphine" "name"))
  ("nalmefene"
   ("nalmefene" "NALMEFENE" "NCIT:C61855" "nalmefene" "synonym" "," "Nalmefene"
    "CHEBI:7457" "Nalmefene" "name" "," "nalmefene" "MESH:C038981" "nalmefene"
    "NM" "NCIT:C61855" "nalmefene" "name"))
  ("nalorphine" ("nalorphine" "Nalorphine" "CHEBI:7458" "Nalorphine" "name"))
  ("naltrindole"
   ("naltrindole" "Naltrindole" "CHEBI:81528" "Naltrindole" "name" ","
    "naltrindole" "MESH:C055382" "naltrindole" "NM"))
  ("nano"
   ("nano" "nano" "UO:0000300" "nano" "name" "NCIT:C54713" "nano" "name" ","
    "nano-" "NCIT:C54713" "nano" "synonym"))
  ("nanodevice"
   ("nanodevice" "nano-device" "NCIT:C62366" "nanodevice" "synonym" ","
    "nanodevice" "NCIT:C62366" "nanodevice" "name"))
  ("nanomaterials"
   ("nanomaterials" "nanomaterials" "NCIT:C53671" "nanomaterials" "name"))
  ("nanopore" ("nanopore" "nanopore" "NCIT:C62343" "nanopore" "name"))
  ("nanotechnology"
   ("nanotechnology" "nanotechnology" "NCIT:C18478" "nanotechnology" "name"))
  ("napin" ("napin" "napin" "UP:P17333" "Napin" "RecName: Full"))
  ("nasopharynx"
   ("nasopharynx" "NASOPHARYNX" "NCIT:C12423" "nasopharynx" "synonym" ","
    "nasopharynx" "BTO:0000662" "nasopharynx" "name" "NCIT:C12423"
    "nasopharynx" "name" "NCIT:C23357" "nasopharynx" "name" "NCIT:C60591"
    "nasopharynx" "name"))
  ("nb"
   ("nb" "NB" "HGNC:7650 G" "NBL1, DAN family BMP antagonist" "Synonym"
    "XFAM:PF04159 Family" "NB" "ID" "NCIT:C53089" "NBL1" "synonym"
    "NCIT:C142545" "european union notified body" "synonym"))
  ("nc"
   ("nc" "-NC" "CHEBI:36826" "isocyano group" "RELATED synonym" "," "NC"
    "UP:P15882 H" "N-chimaerin" "AltName: Short" "UP:Q91V57 M" "N-chimaerin"
    "AltName: Short" "XFAM:PF04970 Domain" "LRAT" "PI" "NCIT:C14783" "NC mouse"
    "synonym" "NCIT:C16913" "new caledonia" "synonym" "NCIT:C43474"
    "north carolina" "synonym" "NCIT:C97444" "N-chimaerin" "synonym" "," "NC-"
    "CHEBI:48819" "cyano group" "RELATED synonym"))
  ("nccs"
   ("nccs" "NCCS" "NCIT:C39475" "neuroblastoma children's cancer society"
    "synonym"))
  ("ne"
   ("ne" "NE" "CVCL:3554" "NE" "name" "CHEBI:73824" "Asn-Glu" "RELATED synonym"
    "HGNC:3309 G" "elastase, neutrophil expressed" "Synonym" "NCIT:C16916"
    "niger" "synonym" "NCIT:C43494" "nebraska" "synonym" "NCIT:C62222"
    "unevaluable" "synonym" "NCIT:C104196" "ELANE" "synonym"))
  ("nearest" ("nearest" "nearest" "NCIT:C25583" "nearest" "name"))
  ("nebuliser"
   ("nebuliser" "nebuliser" "NCIT:C50080" "nebulizer device" "synonym"))
  ("nebulizer"
   ("nebulizer" "nebulizer" "NCIT:C28172" "nebulizer" "name" "NCIT:C50080"
    "nebulizer device" "synonym"))
  ("ned"
   ("ned" "NED" "NCIT:C40413" "No evidence of disease" "synonym" "NCIT:C40413"
    "No evidence of disease" "synonym"))
  ("nefopam"
   ("nefopam" "NEFOPAM" "NCIT:C83994" "nefopam" "synonym" "," "nefopam"
    "CHEBI:88316" "nefopam" "name" "NCIT:C83994" "nefopam" "name"))
  ("neuraxis"
   ("neuraxis" "neuraxis" "BTO:0000227" "central nervous system"
    "RELATED synonym"))
  ("neurochemistry"
   ("neurochemistry" "neurochemistry" "NCIT:C16906" "neurochemistry" "name"))
  ("neuroendocrine"
   ("neuroendocrine" "neuroendocrine" "NCIT:C12945" "neurosecretory system"
    "synonym" "NCIT:C12945" "neurosecretory system" "synonym" "NCIT:C23419"
    "neuroendocrine cells" "synonym" "NCIT:C23875" "neurosecretory system"
    "synonym"))
  ("neuropathology"
   ("neuropathology" "neuropathology" "NCIT:C18479" "neuropathology" "name"))
  ("neuropil"
   ("neuropil" "neuropil" "BTO:0005268" "neuropil" "name" "NCIT:C12617"
    "neuropil" "name" "NCIT:C23551" "neuropil" "name"))
  ("neurosurgery"
   ("neurosurgery" "neurosurgery" "NCIT:C15656" "neurosurgical procedure"
    "synonym" "NCIT:C105687" "neurosurgery" "name"))
  ("neutropenia"
   ("neutropenia" "neutropenia" "NCIT:C3277" "neutropenia" "name" "NCIT:C80520"
    "neutropenia" "name"))
  ("neutrophilia"
   ("neutrophilia" "neutrophilia" "NCIT:C35164" "neutrophilia" "name"))
  ("nhs"
   ("nhs" "NHS" "HGNC:7820 G" "NHS actin remodeling regulator"
    "Approved Symbol" "FA:02466" "NHS family" "ID" "XFAM:PF15273 Family" "NHS"
    "ID"))
  ("niger"
   ("niger" "NIGER" "NCIT:C16916" "niger" "synonym" "NCIT:C16916" "niger"
    "synonym" "," "niger" "NCIT:C16916" "niger" "name"))
  ("nomo" ("nomo" "NOMO" "HGNC:22652 G" "NODAL modulator 2" "Synonym"))
  ("nonmalignant"
   ("nonmalignant" "non-malignant" "NCIT:C25588" "non-malignant" "name" ","
    "nonmalignant" "NCIT:C25588" "non-malignant" "synonym" "NCIT:C25588"
    "non-malignant" "synonym"))
  ("norbinaltorphimine"
   ("norbinaltorphimine" "Norbinaltorphimine" "CHEBI:81529"
    "Norbinaltorphimine" "name" "," "nor-binaltorphimine" "MESH:C051844"
    "norbinaltorphimine" "SY" "," "norbinaltorphimine" "MESH:C051844"
    "norbinaltorphimine" "NM"))
  ("normetazocine"
   ("normetazocine" "normetazocine" "MESH:C014716" "normetazocine" "NM"))
  ("noyau" ("noyau" "noyau" "CHEBI:33252" "atomic nucleus" "RELATED synonym"))
  ("nt"
   ("nt" "NT" "UP:P32560" "Neurotensin" "RecName: Short" "UP:P13724"
    "Neurotensin" "RecName: Short" "UP:P41536" "Neurotensin" "RecName: Short"
    "UP:P81796" "Neurotensin" "RecName: Short" "UP:P31745" "Neurotensin"
    "RecName: Short" "NCIT:C92837" "nuchal translucency screen" "synonym"
    "NCIT:C114925" "NT5E" "synonym" "NCIT:C120477" "tyrosine nitration"
    "synonym" "NCIT:C126486" "NTS" "synonym" "NCIT:C126490" "neurotensin"
    "synonym"))
  ("nts"
   ("nts" "NTS" "HGNC:8038 G" "neurotensin" "Approved Symbol"
    "XFAM:PF15447 Domain" "NTS" "ID" "NCIT:C126486" "NTS" "name"))
  ("nu"
   ("nu" "NU" "CVCL:WI75" "NU" "name" "HGNC:9530 G"
    "proteasome 20S subunit alpha 1" "Synonym" "NCIT:C14239" "nude mouse"
    "synonym" "NCIT:C14239" "nude mouse" "synonym" "NCIT:C16918" "niue"
    "synonym" "NCIT:C158198" "Nu chinese" "synonym" "NCIT:C158198" "Nu chinese"
    "synonym" "NCIT:C158198" "Nu chinese" "synonym" "," "nu" "CHEBI:36352"
    "neutrino" "RELATED synonym"))
  ("nucleo"
   ("nucleo" "nucleo" "CHEBI:33252" "atomic nucleus" "RELATED synonym"))
  ("nucleoside"
   ("nucleoside" "Nucleoside" "CHEBI:33838" "nucleoside" "name" ","
    "nucleoside" "NCIT:C707" "nucleoside" "name"))
  ("nue" ("nue" "nue" "CHEBI:30223" "electron neutrino" "RELATED synonym"))
  ("nux" ("nux" "nux" "NCIT:C72067" "tree nut" "synonym"))
  ("nystagmus"
   ("nystagmus" "nystagmus" "NCIT:C3282" "nystagmus" "name" "NCIT:C55857"
    "nystagmus, CTCAE 3.0" "synonym" "NCIT:C146775" "nystagmus, CTCAE 5.0"
    "synonym"))
  ("o" ("o" "O" "NCIT:C722" "oxygen" "synonym"))
  ("ob"
   ("ob" "OB" "HGNC:1750 G" "cadherin 11" "Synonym" "HGNC:6553 G" "leptin"
    "Previous Symbol" "NCIT:C95049" "LEP" "synonym" "NCIT:C97428" "CDH11"
    "synonym"))
  ("odynophagia"
   ("odynophagia" "odynophagia" "NCIT:C129502" "odynophagia" "name"))
  ("oe"
   ("oe" "OE" "CVCL:J350" "OE" "name" "CVCL:U059" "PNMR OE" "RELATED synonym"
    "NCIT:C147180" "ophthalmic examinations domain" "synonym" "," "Oe"
    "NCIT:C68917" "oersted" "synonym"))
  ("ofd"
   ("ofd" "OFD" "Orphanet:140997" "Orofaciodigital syndrome" "EXACT synonym"
    "NCIT:C53970" "osteofibrous dysplasia" "synonym"))
  ("oi"
   ("oi" "-OI" "CHEBI:29898" "iodooxy group" "RELATED synonym" "," "OI"
    "Orphanet:666" "Osteogenesis imperfecta" "EXACT synonym" "NCIT:C3289"
    "opportunistic infection" "synonym" "NCIT:C161329"
    "non-host organism identifiers domain" "synonym"))
  ("oliguria" ("oliguria" "oliguria" "NCIT:C114698" "oliguria" "name"))
  ("ols" ("ols" "OLs" "CL:0000128" "oligodendrocyte" "EXACT synonym"))
  ("om"
   ("om" "OM" "UP:O35508" "Oncomodulin" "RecName: Short" "UP:P0CE72 H"
    "Oncomodulin-1" "RecName: Short" "UP:P51879 M" "Oncomodulin"
    "RecName: Short" "UP:P02631" "Oncomodulin" "RecName: Short" "NCIT:C16933"
    "oman" "synonym" "NCIT:C49605" "organ measurement domain" "synonym"))
  ("oncology" ("oncology" "oncology" "NCIT:C17837" "oncology" "name"))
  ("ons" ("ons" "ONS" "NCIT:C20842" "oncology nurse specialist" "synonym"))
  ("ophenylenediamine"
   ("ophenylenediamine" "o-Phenylenediamine" "CHEBI:34043"
    "1,2-phenylenediamine" "RELATED synonym" "," "o-phenylenediamine"
    "MESH:C034193" "1,2-diaminobenzene" "SY"))
  ("ophthalmology"
   ("ophthalmology" "OPHTHALMOLOGY" "NCIT:C16939" "ophthalmology" "synonym" ","
    "ophthalmology" "NCIT:C16939" "ophthalmology" "name"))
  ("opioid" ("opioid" "opioid" "NCIT:C1506" "opioid" "name"))
  ("orchiectomy"
   ("orchiectomy" "orchiectomy" "NCIT:C15288" "orchiectomy" "name"))
  ("oregano"
   ("oregano" "Oregano" "CVCL:D906" "AM-iPS-11" "RELATED synonym" "," "oregano"
    "NCIT:C73965" "origanum vulgare sub. hirtum" "synonym"))
  ("oropharynx"
   ("oropharynx" "OROPHARYNX" "NCIT:C12762" "oropharynx" "synonym" ","
    "oropharynx" "BTO:0005257" "oropharynx" "name" "NCIT:C12762" "oropharynx"
    "name" "NCIT:C23693" "oropharynx" "name"))
  ("orotidine"
   ("orotidine" "orotidine" "CHEBI:25722" "orotidine" "name" "MESH:C008714"
    "orotidine" "NM"))
  ("ortholog"
   ("ortholog" "ortholog" "NCIT:C28708" "orthologous gene" "synonym"))
  ("osteotomy" ("osteotomy" "osteotomy" "NCIT:C51903" "osteotomy" "name"))
  ("ot"
   ("ot" "OT" "CHEBI:7872" "oxytocin" "RELATED synonym" "HGNC:8528 G"
    "oxytocin/neurophysin I prepropeptide" "Previous Symbol" "NCIT:C52423"
    "OXT" "synonym" "NCIT:C121351" "occupational therapy" "synonym"
    "NCIT:C121351" "occupational therapy" "synonym"))
  ("otic"
   ("otic" "OTIC" "NCIT:C38192" "auricular route of administration" "synonym"
    "," "otic" "NCIT:C38192" "auricular route of administration" "synonym"
    "NCIT:C69040" "otic dosage form" "synonym" "NCIT:C69040" "otic dosage form"
    "synonym"))
  ("outreach" ("outreach" "outreach" "NCIT:C147940" "outreach" "name"))
  ("ovariectomy"
   ("ovariectomy" "ovariectomy" "NCIT:C15291" "oophorectomy" "synonym"))
  ("oxazolidinone"
   ("oxazolidinone" "oxazolidinone" "CHEBI:55374" "oxazolidinone" "name"))
  ("oximetry"
   ("oximetry" "oximetry" "NCIT:C60832" "oxygen saturation measurement"
    "synonym"))
  ("oxonium" ("oxonium" "oxonium" "CHEBI:29412" "oxonium" "name"))
  ("oxygene"
   ("oxygene" "oxygene" "CHEBI:25805" "oxygen atom" "RELATED synonym"))
  ("oxymetazoline"
   ("oxymetazoline" "OXYMETAZOLINE" "NCIT:C61871" "oxymetazoline" "synonym" ","
    "oxymetazoline" "CHEBI:7862" "oxymetazoline" "name" "NCIT:C61871"
    "oxymetazoline" "name"))
  ("pager" ("pager" "pager" "NCIT:C64350" "pager" "name"))
  ("pallidum"
   ("pallidum" "pallidum" "BTO:0002246" "globus pallidus" "RELATED synonym"))
  ("pancreatitis"
   ("pancreatitis" "pancreatitis" "EFO:0000278" "pancreatitis" "name"
    "NCIT:C3306" "pancreatitis" "name" "NCIT:C56602" "pancreatitis, CTCAE 3.0"
    "synonym" "NCIT:C146789" "pancreatitis, CTCAE 5.0" "synonym"))
  ("pancytopenia"
   ("pancytopenia" "pancytopenia" "NCIT:C34889" "pancytopenia" "name"))
  ("papillon" ("papillon" "papillon" "NCIT:C53939" "papillon" "name"))
  ("papule"
   ("papule" "papule" "NCIT:C39690" "papular lesion" "synonym" "NCIT:C39690"
    "papular lesion" "synonym"))
  ("paraganglia"
   ("paraganglia" "paraganglia" "NCIT:C94826" "paraganglion" "synonym"))
  ("paralog" ("paralog" "paralog" "NCIT:C49108" "paralogous gene" "synonym"))
  ("parathyroidectomy"
   ("parathyroidectomy" "parathyroidectomy" "NCIT:C51593" "parathyroidectomy"
    "name"))
  ("parenchyma"
   ("parenchyma" "parenchyma" "BTO:0000999" "plant parenchyma"
    "RELATED synonym" "BTO:0001539" "parenchyma" "name" "NCIT:C74601"
    "parenchyma" "name"))
  ("parotid"
   ("parotid" "parotid" "BTO:0001004" "parotid gland" "RELATED synonym"
    "NCIT:C12427" "parotid" "name" "NCIT:C23361" "parotid" "name"))
  ("particulate"
   ("particulate" "particulate" "NCIT:C1709" "particulate" "name"))
  ("parva" ("parva" "PARVA" "HGNC:14652 G" "parvin alpha" "Approved Symbol"))
  ("pathogene" ("pathogene" "pathogene" "NCIT:C50922" "pathogen" "synonym"))
  ("pathophysiology"
   ("pathophysiology" "pathophysiology" "NCIT:C20632" "pathophysiology"
    "name"))
  ("pb"
   ("pb" "P-B" "HGNC:17326 G"
    "submaxillary gland androgen regulated protein 3B" "Synonym" "," "PB"
    "CHEBI:53319" "polybutadiene macromolecule" "RELATED synonym" "CHEBI:60686"
    "polybutadiene polymer" "RELATED synonym" "UP:P15516 H" "Histatin-3"
    "AltName: Full" "UP:O08976 M" "Probasin" "RecName: Short" "UP:P15399"
    "Probasin" "RecName: Short" "UP:SL-0230 D" "P-body" "SY" "NCIT:C106552"
    "pharmacogenomics biomarker domain" "synonym" "NCIT:C159087"
    "GDC premature at birth terminology" "synonym" "," "Pb" "NCIT:C44396"
    "lead metal" "synonym" "NCIT:C68261" "dietary lead" "synonym"
    "NCIT:C147382" "lead measurement" "synonym"))
  ("pcr"
   ("pcr" "PCR" "UP:Q41249" "Protochlorophyllide reductase, chloroplastic"
    "RecName: Short" "UP:etc" "" "fake" "NCIT:C17003"
    "polymerase chain reaction" "synonym" "NCIT:C17003"
    "polymerase chain reaction" "synonym" "NCIT:C17003"
    "polymerase chain reaction" "synonym" "NCIT:C17003"
    "polymerase chain reaction" "synonym" "," "pCR" "NCIT:C123603"
    "pathologic complete response" "synonym" "NCIT:C123603"
    "pathologic complete response" "synonym" "NCIT:C160725"
    "residual cancer burden class 0" "synonym"))
  ("pdf"
   ("pdf" "PDF" "CVCL:1G97" "PDF" "name" "HGNC:30142 G"
    "growth differentiation factor 15" "Synonym" "HGNC:30012 G"
    "peptide deformylase, mitochondrial" "Approved Symbol" "UP:O66847"
    "Peptide deformylase" "RecName: Short" "UP:etc" "" "fake" "NCIT:C34026"
    "growth/Differentiation factor 15" "synonym" "NCIT:C52014" "GDF15"
    "synonym" "NCIT:C150103" "EDQM-HC pharmaceutical dosage form terminology"
    "synonym" "," "pdf" "NCIT:C63805" "portable document format" "synonym"))
  ("pedophilia" ("pedophilia" "pedophilia" "NCIT:C94355" "pedophilia" "name"))
  ("peduncle" ("peduncle" "peduncle" "NCIT:C79650" "peduncle" "name"))
  ("penetrance" ("penetrance" "penetrance" "NCIT:C48667" "penetrance" "name"))
  ("pentazocine"
   ("pentazocine" "PENTAZOCINE" "NCIT:C61884" "pentazocine" "synonym" ","
    "Pentazocine" "CHEBI:7982" "pentazocine" "name" "," "pentazocine"
    "NCIT:C61884" "pentazocine" "name"))
  ("peracute"
   ("peracute" "PERACUTE" "NCIT:C120854" "peracute" "synonym" "," "peracute"
    "NCIT:C120854" "peracute" "name"))
  ("pergolide"
   ("pergolide" "PERGOLIDE" "NCIT:C61886" "pergolide" "synonym" "," "pergolide"
    "CHEBI:63617" "pergolide" "name" "NCIT:C61886" "pergolide" "name"))
  ("pericardium"
   ("pericardium" "PERICARDIUM" "NCIT:C13005" "pericardium" "synonym" ","
    "pericardium" "BTO:0000717" "pericardium" "name" "NCIT:C13005"
    "pericardium" "name" "NCIT:C23935" "pericardium" "name" "NCIT:C60601"
    "pericardium" "name"))
  ("periosteum"
   ("periosteum" "periosteum" "BTO:0001022" "periosteum" "name" "NCIT:C13184"
    "periosteum" "name" "NCIT:C22707" "periosteum" "name"))
  ("peritoneum"
   ("peritoneum" "PERITONEUM" "NCIT:C12770" "peritoneum" "synonym" ","
    "peritoneum" "BTO:0001472" "peritoneum" "name" "NCIT:C12770" "peritoneum"
    "name" "NCIT:C22708" "peritoneum" "name" "NCIT:C23701" "peritoneum" "name"
    "NCIT:C60603" "peritoneum" "name"))
  ("perlèche"
   ("perlèche" "perlèche" "NCIT:C112198" "angular cheilitis" "synonym"))
  ("pf"
   ("pf" "PF" "CVCL:R981" "PF" "name" "CVCL:0I61" "PF-R" "RELATED synonym"
    "CHEBI:74795" "Pro-Phe" "RELATED synonym" "CHEBI:90284" "pirazofurin"
    "RELATED synonym" "NCIT:C10033" "fluorouracil/Melphalan" "synonym"
    "NCIT:C14991" "PF mouse" "synonym" "NCIT:C16594" "french polynesia"
    "synonym" "NCIT:C111289" "pharmacogenomics findings domain" "synonym"
    "NCIT:C156353" "cisplatin/Fluorouracil regimen" "synonym" "," "Pf"
    "UP:P47244" "Phosphoglucomutase-1" "AltName: Short" "," "pF" "NCIT:C67435"
    "picofarad" "synonym" "NCIT:C67435" "picofarad" "synonym"))
  ("phalanges" ("phalanges" "phalanges" "NCIT:C33317" "phalanx" "synonym"))
  ("pharmacotherapy"
   ("pharmacotherapy" "pharmacotherapy" "NCIT:C15986" "pharmacotherapy"
    "name"))
  ("pharmacovigilance"
   ("pharmacovigilance" "pharmacovigilance" "NCIT:C142637" "pharmacovigilance"
    "name"))
  ("phenols" ("phenols" "phenols" "CHEBI:33853" "phenols" "name"))
  ("phenothiazines"
   ("phenothiazines" "phenothiazines" "CHEBI:38093" "phenothiazines" "name"))
  ("phentolamine"
   ("phentolamine" "PHENTOLAMINE" "NCIT:C62066" "phentolamine" "synonym" ","
    "phentolamine" "CHEBI:8081" "phentolamine" "name" "NCIT:C62066"
    "phentolamine" "name"))
  ("pholcodine"
   ("pholcodine" "PHOLCODINE" "NCIT:C87365" "pholcodine" "synonym" ","
    "pholcodine" "CHEBI:53579" "pholcodine" "name" "MESH:C008872" "pholcodine"
    "NM" "NCIT:C87365" "pholcodine" "name"))
  ("phosphore"
   ("phosphore" "phosphore" "CHEBI:28659" "phosphorus atom" "RELATED synonym"))
  ("phy" ("phy" "PHY" "XFAM:PF00360 Family" "PHY" "ID"))
  ("physiopathology"
   ("physiopathology" "physiopathology" "NCIT:C20632" "pathophysiology"
    "synonym"))
  ("pic"
   ("pic" "PIC" "CHEBI:53806" "phenyl isocyanate" "RELATED synonym"
    "GO:0019035" "viral integration complex" "EXACT synonym" "GO:0097550"
    "transcriptional preinitiation complex" "NARROW synonym" "NCIT:C14489"
    "PIC mouse" "synonym"))
  ("picrotoxin" ("picrotoxin" "picrotoxin" "CHEBI:134126" "picrotoxin" "name"))
  ("pirenzepine"
   ("pirenzepine" "PIRENZEPINE" "NCIT:C76002" "pirenzepine" "synonym" ","
    "pirenzepine" "CHEBI:8247" "pirenzepine" "name" "NCIT:C76002" "pirenzepine"
    "name"))
  ("pixel"
   ("pixel" "PIXEL" "NCIT:C48367" "pixel" "synonym" "," "pixel" "NCIT:C48367"
    "pixel" "name"))
  ("pl"
   ("pl" "PL" "CHEBI:74791" "Pro-Leu" "RELATED synonym" "CHEBI:81588"
    "Placental lactogen" "RELATED synonym" "HGNC:2440 G"
    "chorionic somatomammotropin hormone 1" "Synonym" "HGNC:9155 G"
    "pancreatic lipase" "Synonym" "UP:P0DML2 H"
    "Chorionic somatomammotropin hormone 1" "AltName: Short" "UP:P0DML3 H"
    "Chorionic somatomammotropin hormone 2" "AltName: Short" "UP:P31260 H"
    "Homeobox protein Hox-A10" "AltName: Full" "UP:P16233 H"
    "Pancreatic triacylglycerol lipase" "RecName: Short" "UP:Q6P8U6 M"
    "Pancreatic triacylglycerol lipase" "RecName: Short" "NCIT:C17002" "poland"
    "synonym" "NCIT:C26309" "homeobox protein hox-A10" "synonym" "NCIT:C52995"
    "HOXA10" "synonym" "," "pL" "NCIT:C69189" "picoliter" "synonym"
    "NCIT:C69189" "picoliter" "synonym" "NCIT:C69189" "picoliter" "synonym" ","
    "pl" "UO:0000103" "picoliter" "EXACT synonym" "NCIT:C69189" "picoliter"
    "synonym"))
  ("planimeter" ("planimeter" "planimeter" "NCIT:C63401" "planimeter" "name"))
  ("plantae" ("plantae" "plantae" "BTO:0001481" "plant" "RELATED synonym"))
  ("plazomicin"
   ("plazomicin" "plazomicin" "MESH:C550938"
    "6'-(hydroxylethyl)-1-(haba)-sisomicin" "SY"))
  ("plc"
   ("plc" "PL-C" "UP:Q9AYP9" "Lectin-C" "AltName: Full" "," "PLC" "FPLX:PLC"
    "PLC" "name" "CVCL:0485" "PLC/PRF/5" "RELATED synonym" "UP:P98160 H"
    "Basement membrane-specific heparan sulfate proteoglycan core protein"
    "AltName: Short" "NCIT:C95447" "HSPG2" "synonym" "NCIT:C95448"
    "basement membrane-specific heparan sulfate proteoglycan core protein"
    "synonym"))
  ("pleomorphism"
   ("pleomorphism" "pleomorphism" "NCIT:C17000" "pleomorphism" "name"))
  ("plethysmography"
   ("plethysmography" "PLETHYSMOGRAPHY" "NCIT:C122173" "plethysmography"
    "synonym" "," "plethysmography" "NCIT:C122173" "plethysmography" "name"))
  ("pleura"
   ("pleura" "PLEURA" "NCIT:C12469" "pleura" "synonym" "NCIT:C12469" "pleura"
    "synonym" "NCIT:C12469" "pleura" "synonym" "," "pleura" "BTO:0001791"
    "pleura" "name" "NCIT:C12469" "pleura" "name" "NCIT:C23403" "pleura" "name"
    "NCIT:C60606" "pleura" "name"))
  ("plumericin"
   ("plumericin" "Plumericin" "CHEBI:8274" "Plumericin" "name" "," "plumericin"
    "MESH:C068511" "plumericin" "NM"))
  ("plumieride"
   ("plumieride" "Plumieride" "CHEBI:8275" "Plumieride" "name" "," "plumieride"
    "MESH:C110080" "plumieride" "NM"))
  ("pn"
   ("pn" "PN" "CHEBI:74754" "Pro-Asn" "RELATED synonym" "HGNC:16953 G"
    "periostin" "Synonym" "UP:Q15063 H" "Periostin" "RecName: Short"
    "UP:Q62009 M" "Periostin" "RecName: Short" "UP:P03045"
    "Antitermination protein N" "AltName: Short" "NCIT:C16993" "pitcairn"
    "synonym" "NCIT:C101423" "POSTN" "synonym" "NCIT:C101424" "periostin"
    "synonym" "NCIT:C120353" "picture naming subtest (WPPSI-IV)" "synonym" ","
    "pn" "CHEBI:30630" "propylenediamine" "RELATED synonym"))
  ("pneumonectomy"
   ("pneumonectomy" "pneumonectomy" "NCIT:C15305" "pneumonectomy" "name"))
  ("pneumoperitoneum"
   ("pneumoperitoneum" "pneumoperitoneum" "NCIT:C99012" "pneumoperitoneum"
    "name"))
  ("poco" ("poco" "POCO" "CVCL:WH54" "POCO" "name"))
  ("polh"
   ("polh" "POLH" "HGNC:9181 G" "DNA polymerase eta" "Approved Symbol"
    "HGNC:9186 G" "DNA polymerase theta" "Synonym" "NCIT:C91286" "POLH"
    "name"))
  ("polyhydramnios"
   ("polyhydramnios" "POLYHYDRAMNIOS" "NCIT:C92848" "polyhydramnios" "synonym"
    "," "polyhydramnios" "NCIT:C92848" "polyhydramnios" "name"))
  ("polyisoprene"
   ("polyisoprene" "Polyisoprene" "CHEBI:53405" "poly(isoprene) macromolecule"
    "RELATED synonym"))
  ("polymorph" ("polymorph" "polymorph" "NCIT:C23467" "neutrophils" "synonym"))
  ("polymorphism"
   ("polymorphism" "polymorphism" "NCIT:C17004" "genetic polymorphism"
    "synonym" "NCIT:C17004" "genetic polymorphism" "synonym" "NCIT:C61384"
    "polymorphism" "name"))
  ("polyolefin"
   ("polyolefin" "polyolefin" "CHEBI:53225" "poly(alkylene) macromolecule"
    "RELATED synonym"))
  ("polypoid" ("polypoid" "polypoid" "NCIT:C96279" "polypoid" "name"))
  ("pontine" ("pontine" "pontine" "NCIT:C28033" "pontine" "name"))
  ("positron"
   ("positron" "positron" "CHEBI:30225" "positron" "name" "NCIT:C94957"
    "positron" "name"))
  ("postmortem" ("postmortem" "postmortem" "NCIT:C94193" "postmortem" "name"))
  ("postpartum" ("postpartum" "postpartum" "NCIT:C92851" "postpartum" "name"))
  ("postprocedure"
   ("postprocedure" "post-procedure" "NCIT:C100059" "post-procedure" "name"))
  ("posttherapy"
   ("posttherapy" "post-therapy" "NCIT:C54735" "post-therapy" "name"))
  ("pp"
   ("pp" "PP" "CHEBI:73646" "Pro-Pro" "RELATED synonym" "CHEBI:53550"
    "poly(propylene)" "RELATED synonym" "HGNC:9226 G"
    "inorganic pyrophosphatase 1" "Previous Symbol" "UP:P01298 H"
    "Pancreatic prohormone" "AltName: Short" "UP:P10601 M"
    "Pancreatic prohormone" "AltName: Short" "NCIT:C725"
    "pancreatic polypeptide" "synonym" "NCIT:C49607"
    "pharmacokinetic parameters domain" "synonym" "NCIT:C129910" "PPY"
    "synonym" "NCIT:C129912" "pancreatic prohormone" "synonym" "," "Pp"
    "CHEBI:26294" "propionyl group" "RELATED synonym"))
  ("pramlintide"
   ("pramlintide" "PRAMLINTIDE" "NCIT:C61901" "pramlintide" "synonym" ","
    "pramlintide" "CHEBI:135922" "pramlintide" "name" "MESH:C105254"
    "pramlintide" "NM" "NCIT:C61901" "pramlintide" "name"))
  ("pre" ("pre" "pre" "NCIT:C25629" "prior" "synonym"))
  ("preterm" ("preterm" "pre-term" "NCIT:C92861" "preterm birth" "synonym"))
  ("pristinamycine"
   ("pristinamycine" "pristinamycine" "CHEBI:85274" "pristinamycin"
    "RELATED synonym"))
  ("procalcitonin"
   ("procalcitonin" "procalcitonin" "NCIT:C103430" "procalcitonin measurement"
    "synonym" "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("progeny"
   ("progeny" "progeny" "NCIT:C42708" "offspring" "synonym" "NCIT:C42708"
    "offspring" "synonym"))
  ("propentofylline"
   ("propentofylline" "PROPENTOFYLLINE" "NCIT:C81919" "propentofylline"
    "synonym" "," "Propentofylline" "CHEBI:32061" "Propentofylline" "name" ","
    "propentofylline" "MESH:C032114" "propentofylline" "NM" "NCIT:C81919"
    "propentofylline" "name"))
  ("propeptide"
   ("propeptide" "propeptide" "NCIT:C47941" "proprotein" "synonym"))
  ("proprotein" ("proprotein" "proprotein" "NCIT:C47941" "proprotein" "name"))
  ("propylamine"
   ("propylamine" "propylamine" "CHEBI:39870" "propylamine" "name"))
  ("propylnorapomorphine"
   ("propylnorapomorphine" "propyl-norapomorphine" "MESH:C009074"
    "N-n-propylnorapomorphine" "SY"))
  ("propylthiouracil"
   ("propylthiouracil" "PROPYLTHIOURACIL" "NCIT:C781" "propylthiouracil"
    "synonym" "," "Propylthiouracil" "CHEBI:8502" "6-propyl-2-thiouracil"
    "RELATED synonym" "," "propylthiouracil" "NCIT:C781" "propylthiouracil"
    "name"))
  ("propylthiouracile"
   ("propylthiouracile" "propylthiouracile" "CHEBI:8502"
    "6-propyl-2-thiouracil" "RELATED synonym"))
  ("prostheses"
   ("prostheses" "prostheses" "NCIT:C17598" "prosthesis" "synonym"))
  ("prot"
   ("prot" "PROT" "HGNC:11054 G" "solute carrier family 6 member 7" "Synonym"
    "NCIT:C64858" "total protein measurement" "synonym" "," "prot"
    "NCIT:C25320" "clinical study protocol" "synonym"))
  ("proteome" ("proteome" "proteome" "NCIT:C18276" "proteome" "name"))
  ("proxorphan"
   ("proxorphan" "PROXORPHAN" "NCIT:C97088" "proxorphan" "synonym" ","
    "proxorphan" "NCIT:C97088" "proxorphan" "name"))
  ("pseudogene" ("pseudogene" "pseudogene" "NCIT:C40415" "pseudogene" "name"))
  ("perineum"
   ("perineum" "PERINEUM" "NCIT:C33301" "perineum" "synonym" "," "perineum"
    "NCIT:C33301" "perineum" "name"))
  ("psu"
   ("psu" "PSU" "NCIT:C67108" "primary sampling unit" "synonym" "," "psu"
    "XFAM:PF07455 Family" "psu" "ID"))
  ("psychopathology"
   ("psychopathology" "psychopathology" "NCIT:C17035" "psychopathology"
    "name"))
  ("putamen"
   ("putamen" "PUTAMEN" "NCIT:C12452" "putamen" "synonym" "," "putamen"
    "BTO:0000212" "caudate putamen" "RELATED synonym" "NCIT:C12452" "putamen"
    "name" "NCIT:C23386" "putamen" "name"))
  ("pvalue"
   ("pvalue" "P-value" "NCIT:C44185" "P-value" "name" "," "p-value"
    "NCIT:C44185" "P-value" "synonym" "NCIT:C44185" "P-value" "synonym"))
  ("px"
   ("px" "PX" "XFAM:PF00787 Domain" "PX" "ID" "," "Px" "UP:P02348"
    "DNA-binding protein HRL53" "AltName: Full" "," "pX" "UP:P14269 H"
    "Pre-core protein X" "RecName: Short" "UP:Q2KS10 H" "Pre-core protein X"
    "RecName: Short" "UP:P35986 H" "Late L2 mu core protein" "AltName: Short"
    "UP:Q64858 H" "Late L2 mu core protein" "AltName: Short" "UP:O10443 M"
    "Late L2 mu core protein" "AltName: Short"))
  ("pylorus"
   ("pylorus" "pylorus" "NCIT:C12260" "pylorus" "name" "NCIT:C23193" "pylorus"
    "name"))
  ("q"
   ("q" "Q" "NCIT:C88108" "quintamillesimal series of attenuation" "synonym"))
  ("qd"
   ("qd" "QD" "CHEBI:50853" "quantum dot" "RELATED synonym" "NCIT:C25473"
    "daily" "synonym" "NCIT:C25473" "daily" "synonym" "NCIT:C25473" "daily"
    "synonym" "NCIT:C25473" "daily" "synonym"))
  ("qh"
   ("qh" "QH" "NCIT:C64510" "every hour" "synonym" "NCIT:C64510" "every hour"
    "synonym"))
  ("qt"
   ("qt" "qt" "UO:0010029" "quart" "EXACT synonym" "NCIT:C48534" "quart"
    "synonym"))
  ("quadriceps" ("quadriceps" "quadriceps" "BTO:0001149" "quadriceps" "name"))
  ("quadrupole" ("quadrupole" "quadrupole" "NCIT:C70689" "quadrupole" "name"))
  ("quinagolide"
   ("quinagolide" "QUINAGOLIDE" "NCIT:C73310" "quinagolide" "synonym" ","
    "quinagolide" "CHEBI:135627" "quinagolide" "name" "MESH:C046650"
    "quinagolide" "NM" "NCIT:C73310" "quinagolide" "name"))
  ("quinoneimine"
   ("quinoneimine" "quinoneimine" "CHEBI:50193" "quinone imine"
    "RELATED synonym"))
  ("r"
   ("r" "R" "NCIT:C70575" "roentgen" "synonym" "NCIT:C70575" "roentgen"
    "synonym" "NCIT:C70575" "roentgen" "synonym" "," "r" "NCIT:C3360"
    "supernumerary circular chromosome" "synonym"))
  ("radioimmunoassay"
   ("radioimmunoassay" "radioimmunoassay" "NCIT:C17057" "radioimmunoassay"
    "name"))
  ("radionuclide"
   ("radionuclide" "radionuclide" "NCIT:C799" "radioisotope" "synonym"
    "NCIT:C799" "radioisotope" "synonym"))
  ("radioresistant"
   ("radioresistant" "radioresistant" "NCIT:C116005" "radioresistance"
    "synonym"))
  ("raga"
   ("raga" "RAGA" "HGNC:16963 G" "Ras related GTP binding A" "Synonym"
    "NCIT:C52614" "RRAGA" "synonym" "," "ragA" "UP:Q3SX43"
    "Ras-related GTP-binding protein A" "RecName: Short" "UP:Q7L523 H"
    "Ras-related GTP-binding protein A" "RecName: Short" "UP:Q80X95 M"
    "Ras-related GTP-binding protein A" "RecName: Short" "UP:Q63486"
    "Ras-related GTP-binding protein A" "RecName: Short" "NCIT:C29758"
    "RAS-related GTP-binding protein A" "synonym"))
  ("raphe" ("raphe" "RAPHE" "NCIT:C97335" "raphe nuclei" "synonym"))
  ("rara"
   ("rara" "RARA" "HGNC:9864 G" "retinoic acid receptor alpha"
    "Approved Symbol" "NCIT:C17533" "retinoic acid receptor alpha" "synonym"
    "NCIT:C51711" "RARA" "name"))
  ("rauwolscine"
   ("rauwolscine" "rauwolscine" "CHEBI:48562" "rauwolscine" "name"))
  ("reactance" ("reactance" "reactance" "NCIT:C43548" "reactance" "name"))
  ("refractometer"
   ("refractometer" "refractometer" "NCIT:C78809" "refractometer" "name"))
  ("rele" ("rele" "RelE" "XFAM:PF06296 Family" "RelE" "ID"))
  ("relebactam" ("relebactam" "relebactam" "MESH:C568736" "MK-7655" "SY"))
  ("replicate"
   ("replicate" "replicate" "EFO:0000683" "replicate" "name" "NCIT:C28038"
    "replicate" "name" "NCIT:C47886" "repeat" "synonym"))
  ("repos"
   ("repos" "REPOS" "NCIT:C123988" "respiratory system findings body position"
    "synonym"))
  ("reticulum"
   ("reticulum" "RETICULUM" "NCIT:C98777" "reticulum" "synonym" "," "reticulum"
    "BTO:0000347" "reticulum" "name" "NCIT:C98777" "reticulum" "name"))
  ("retro"
   ("retro" "RETRO" "NCIT:C38296" "retrobulbar route of administration"
    "synonym" "NCIT:C38296" "retrobulbar route of administration" "synonym"))
  ("retroid"
   ("retroid" "retroid" "CHEBI:135458" "trengestone" "RELATED synonym"))
  ("retrovirology"
   ("retrovirology" "retrovirology" "NCIT:C19014" "retrovirology" "name"))
  ("reuse"
   ("reuse" "REUSE" "NCIT:C53613" "device reuse" "synonym" "," "reuse"
    "NCIT:C79891" "reuse" "name"))
  ("rfu"
   ("rfu" "RFU" "NCIT:C77535" "relative fluorescence intensity unit" "synonym"
    "NCIT:C77535" "relative fluorescence intensity unit" "synonym"))
  ("rhinorrhea"
   ("rhinorrhea" "rhinorrhea" "NCIT:C54282" "rhinorrhea" "name" "NCIT:C143242"
    "rhinorrhea, CTCAE" "synonym"))
  ("rhinoscopy" ("rhinoscopy" "rhinoscopy" "NCIT:C94309" "rhinoscopy" "name"))
  ("rhonchi" ("rhonchi" "rhonchi" "NCIT:C87116" "rhonchi" "name"))
  ("ri"
   ("ri" "RI" "CHEBI:73814" "Arg-Ile" "RELATED synonym" "CHEBI:8753" "RI"
    "name" "EFO:0004008" "recombinant inbred strain" "EXACT synonym"
    "NCIT:C43464" "rhode island" "synonym"))
  ("ribavirine"
   ("ribavirine" "ribavirine" "CHEBI:63580" "ribavirin" "RELATED synonym"))
  ("ritanserin"
   ("ritanserin" "RITANSERIN" "NCIT:C95217" "ritanserin" "synonym" ","
    "ritanserin" "CHEBI:64195" "ritanserin" "name" "NCIT:C95217" "ritanserin"
    "name"))
  ("rl"
   ("rl" "RL" "CVCL:1660" "RL" "name" "CHEBI:73815" "Arg-Leu" "RELATED synonym"
    "EFO:0002319" "RL" "name" "HGNC:9957 G" "reelin" "Synonym"
    "XFAM:PF17797 Domain" "RL" "ID" "NCIT:C102800" "RELN" "synonym"))
  ("rpm"
   ("rpm" "RPM" "CVCL:IX00" "RPM" "name" "UP:Q3UYI5 M"
    "Ral guanine nucleotide dissociation stimulator-like 3" "AltName: Short"
    "NCIT:C115127" "raven's progressive matrices" "synonym" "," "rpm"
    "NCIT:C70469" "revolution per minute" "synonym"))
  ("rt"
   ("rt" "RT" "NCIT:C15313" "radiation therapy" "synonym" "NCIT:C82594"
    "refractory thrombocytopenia" "synonym" "NCIT:C105637" "right thigh"
    "synonym" "NCIT:C105637" "right thigh" "synonym" "NCIT:C159103"
    "GDC relationship type terminology" "synonym"))
  ("rubeola" ("rubeola" "rubeola" "NCIT:C96406" "measles" "synonym"))
  ("rumen"
   ("rumen" "RUMEN" "NCIT:C98778" "rumen" "synonym" "," "rumen" "BTO:0001194"
    "rumen" "name" "NCIT:C98778" "rumen" "name"))
  ("ry"
   ("ry" "RY" "CVCL:U964" "RY" "name" "CHEBI:73822" "Arg-Tyr"
    "RELATED synonym"))
  ("sangivamycin"
   ("sangivamycin" "sangivamycin" "CHEBI:85997" "sangivamycin" "name"
    "MESH:C005699" "sangivamycin" "NM"))
  ("sans"
   ("sans" "SANS" "NCIT:C114407" "USH1G" "synonym" "," "Sans" "HGNC:16356 G"
    "USH1 protein network component sans" "Synonym" "," "sans" "NCIT:C114407"
    "USH1G" "synonym"))
  ("sc"
   ("sc" "SC" "CVCL:6444" "SC" "name" "EFO:0007029" "SC" "name" "HGNC:15743 G"
    "erythroblast membrane associated protein (Scianna blood group)"
    "Previous Symbol" "UP:Q28046" "Adseverin" "AltName: Short" "NCIT:C14689"
    "SC mouse" "synonym" "NCIT:C17129" "seychelles" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C43475"
    "south carolina" "synonym" "NCIT:C49610" "subject characteristics domain"
    "synonym" "NCIT:C95635" "coded string data type" "synonym" "NCIT:C95635"
    "coded string data type" "synonym"))
  ("scintigraphy"
   ("scintigraphy" "SCINTIGRAPHY" "NCIT:C62667" "radionuclide imaging"
    "synonym" "," "scintigraphy" "NCIT:C47852" "radionuclide scanning"
    "synonym" "NCIT:C62667" "radionuclide imaging" "synonym" "NCIT:C62667"
    "radionuclide imaging" "synonym"))
  ("scolex" ("scolex" "scolex" "BTO:0002305" "scolex" "name"))
  ("sd"
   ("sd" "SD" "CVCL:W902" "SD" "name" "CHEBI:74807" "Ser-Asp" "RELATED synonym"
    "EFO:0007027" "SD" "name" "HGNC:9854 G" "Ran GTPase activating protein 1"
    "Previous Symbol" "HGNC:10933 G" "solute carrier family 17 member 5"
    "Synonym" "UP:O67049"
    "Shikimate dehydrogenase (NADP(+)) {ECO:0000255|HAMAP-Rule:MF_00222, ECO:0000303|PubMed:17649975}"
    "RecName: Short" "UP:P15770" "Shikimate dehydrogenase (NADP(+))"
    "RecName: Short" "UP:P56221" "Scytalone dehydratase" "RecName: Short"
    "NCIT:C14950" "SD mouse" "synonym" "NCIT:C17170" "sudan" "synonym"
    "NCIT:C18213" "stable disease" "synonym" "NCIT:C43489" "south dakota"
    "synonym" "NCIT:C52550" "RANGAP1" "synonym" "NCIT:C53322"
    "standard deviation" "synonym" "NCIT:C76189" "SD, rat strain" "synonym"
    "NCIT:C159621" "RECIL SD" "synonym" "NCIT:C159621" "RECIL SD" "synonym"
    "NCIT:C159948" "global stable disease" "synonym" "NCIT:C159954"
    "global stable disease in skin" "synonym" "NCIT:C159960"
    "global stable disease in lymph nodes" "synonym" "NCIT:C159966"
    "global stable disease in viscera" "synonym" "NCIT:C159974"
    "global stable disease in blood" "synonym"))
  ("sed" ("sed" "SED" "UP:P20723" "Enterotoxin type D" "AltName: Full"))
  ("sedoheptulose"
   ("sedoheptulose" "sedoheptulose" "CHEBI:16802" "sedoheptulose" "name"
    "MESH:C003011" "sedoheptulose" "NM"))
  ("septate" ("septate" "septate" "NCIT:C28380" "septate" "name"))
  ("sequela" ("sequela" "sequela" "NCIT:C126361" "disease sequela" "synonym"))
  ("sequelae"
   ("sequelae" "sequelae" "NCIT:C126361" "disease sequela" "synonym"
    "NCIT:C126361" "disease sequela" "synonym"))
  ("sequoyitol"
   ("sequoyitol" "Sequoyitol" "CHEBI:15975" "1D-5-O-methyl-myo-inositol"
    "RELATED synonym" "," "sequoyitol" "MESH:C572459" "5-O-methyl-myo-inositol"
    "SY"))
  ("serosa" ("serosa" "serosa" "NCIT:C13169" "serosa" "name"))
  ("serostatus" ("serostatus" "serostatus" "NCIT:C159691" "serostatus" "name"))
  ("serotype" ("serotype" "serotype" "NCIT:C88894" "serotype" "name"))
  ("sessile" ("sessile" "sessile" "NCIT:C35935" "sessile lesion" "synonym"))
  ("sesterterpene"
   ("sesterterpene" "sesterterpene" "CHEBI:35192" "sesterterpene" "name"))
  ("sf"
   ("sf" "SF" "CHEBI:71029" "Ser-Phe" "RELATED synonym" "HGNC:4893 G"
    "hepatocyte growth factor" "Synonym" "HGNC:6343 G" "KIT ligand" "Synonym"
    "UP:P14210 H" "Hepatocyte growth factor" "AltName: Short" "UP:Q08048 M"
    "Hepatocyte growth factor" "AltName: Short" "NCIT:C14910" "SF mouse"
    "synonym" "NCIT:C50971" "KITLG" "synonym" "NCIT:C51506" "HGF" "synonym"))
  ("sh"
   ("sh" "-SH" "CHEBI:29917" "thiol group" "RELATED synonym" "," "SH"
    "CHEBI:29312" "sulfanyl" "RELATED synonym" "CHEBI:73651" "Ser-His"
    "RELATED synonym" "XFAM:PF01445 Family" "SH" "ID" "NCIT:C17164"
    "saint helena, ascension and tristan da cunha" "synonym" "NCIT:C158177"
    "she chinese" "synonym" "NCIT:C158177" "she chinese" "synonym"))
  ("shifter"
   ("shifter" "shifter" "NCIT:C50173" "shifter device" "synonym" "NCIT:C50173"
    "shifter device" "synonym"))
  ("sid"
   ("sid" "SID" "XFAM:PF11778 Family" "SID" "ID" "NCIT:C154115"
    "sidamo language" "synonym"))
  ("sig"
   ("sig" "SIG" "NCIT:C19782" "surveillance implementation group" "synonym"))
  ("sigmoidoscope"
   ("sigmoidoscope" "sigmoidoscope" "NCIT:C17626" "sigmoidoscope" "name"))
  ("sinusoid"
   ("sinusoid" "sinusoid" "NCIT:C32467" "discontinuous capillary" "synonym"))
  ("sk"
   ("sk" "SK" "CHEBI:144702" "Ser-Lys" "RELATED synonym" "HGNC:2891 G"
    "dickkopf WNT signaling pathway inhibitor 1" "Synonym" "UP:O94907 H"
    "Dickkopf-related protein 1" "AltName: Full" "NCIT:C17669" "slovakia"
    "synonym" "NCIT:C95417" "DKK1" "synonym" "NCIT:C95418"
    "dickkopf-related protein 1" "synonym"))
  ("soi"
   ("soi" "SOI" "GO:0018846" "styrene-oxide isomerase activity"
    "EXACT synonym"))
  ("soleus"
   ("soleus" "soleus" "BTO:0001265" "soleus" "name" "NCIT:C53075" "soleus"
    "name"))
  ("sortis"
   ("sortis" "Sortis" "CHEBI:2911" "atorvastatin calcium trihydrate"
    "RELATED synonym"))
  ("sp"
   ("sp" "SP" "CVCL:L986" "SpR" "RELATED synonym" "CHEBI:74820" "Ser-Pro"
    "RELATED synonym" "UP:Q03403 H" "Trefoil factor 2" "AltName: Short"
    "UP:Q03404 M" "Trefoil factor 2" "AltName: Short" "NCIT:C90452"
    "safety pharmacology" "synonym" "NCIT:C115189" "TFF2" "synonym"
    "NCIT:C115190" "trefoil factor 2" "synonym"))
  ("spacer"
   ("spacer" "spacer" "NCIT:C50182" "spacer device" "synonym" "NCIT:C50182"
    "spacer device" "synonym"))
  ("spectrometer"
   ("spectrometer" "spectrometer" "NCIT:C50061" "spectrometer device" "synonym"
    "NCIT:C50061" "spectrometer device" "synonym" "NCIT:C62336" "spectrometer"
    "name"))
  ("spectrophotometer"
   ("spectrophotometer" "spectrophotometer" "NCIT:C62333" "spectrophotometer"
    "name"))
  ("sphincter" ("sphincter" "sphincter" "NCIT:C28381" "sphincter" "name"))
  ("spikelet" ("spikelet" "spikelet" "BTO:0002119" "spikelet" "name"))
  ("spirometry"
   ("spirometry" "SPIROMETRY" "NCIT:C85397" "spirometry" "synonym" ","
    "spirometry" "NCIT:C85397" "spirometry" "name"))
  ("splenectomy"
   ("splenectomy" "splenectomy" "NCIT:C15328" "splenectomy" "name"))
  ("sporozoa"
   ("sporozoa" "sporozoa" "BTO:0000749" "sporozoan form" "RELATED synonym"))
  ("sse" ("sse" "SSE" "NCIT:C64195" "streaming SIMD extensions" "synonym"))
  ("ssp"
   ("ssp" "SS-P" "CVCL:T754" "SS-P" "name" "," "SSP" "UP:D8KY57"
    "Probable salivary secreted peptide" "RecName: Short" "NCIT:C96414"
    "sessile serrated adenoma/Polyp" "synonym"))
  ("stakeholder"
   ("stakeholder" "stakeholder" "NCIT:C128537" "REMS stakeholder" "synonym"))
  ("steatorrhea"
   ("steatorrhea" "steatorrhea" "NCIT:C86917" "steatorrhea" "name"))
  ("stellate" ("stellate" "stellate" "NCIT:C94437" "stellate" "name"))
  ("stereochemistry"
   ("stereochemistry" "STEREOCHEMISTRY" "NCIT:C18188" "stereochemistry"
    "synonym" "," "stereochemistry" "NCIT:C18188" "stereochemistry" "name"))
  ("stereotypy" ("stereotypy" "stereotypy" "NCIT:C116731" "stereotypy" "name"))
  ("sternotomy" ("sternotomy" "sternotomy" "NCIT:C25220" "sternotomy" "name"))
  ("stipe" ("stipe" "stipe" "BTO:0001304" "stipe" "name"))
  ("stylet"
   ("stylet" "stylet" "NCIT:C50195" "stylet device" "synonym" "NCIT:C50195"
    "stylet device" "synonym"))
  ("subacute"
   ("subacute" "SUBACUTE" "NCIT:C120855" "subacute" "synonym" "," "subacute"
    "NCIT:C120855" "subacute" "name"))
  ("subarachnoid"
   ("subarachnoid" "SUBARACHNOID" "NCIT:C38297"
    "subarachnoid route of administration" "synonym" "NCIT:C38297"
    "subarachnoid route of administration" "synonym" "NCIT:C38297"
    "subarachnoid route of administration" "synonym" "," "subarachnoid"
    "NCIT:C38297" "subarachnoid route of administration" "synonym"
    "NCIT:C156507" "subarachnoid space" "synonym"))
  ("subclass" ("subclass" "subclass" "NCIT:C45285" "subclass" "name"))
  ("subcutis"
   ("subcutis" "SUBCUTIS" "NCIT:C33645" "subcutis" "synonym" "," "subcutis"
    "BTO:0001314" "subcutis" "name" "NCIT:C33645" "subcutis" "name"))
  ("suberin"
   ("suberin" "suberin" "CHEBI:60973" "suberin" "name" "MESH:C065875" "suberin"
    "NM"))
  ("subgenus" ("subgenus" "subgenus" "NCIT:C62692" "subgenus" "name"))
  ("submucosa"
   ("submucosa" "submucosa" "BTO:0002107" "submucosa" "name" "NCIT:C13167"
    "submucosa" "name"))
  ("suborder" ("suborder" "suborder" "NCIT:C45288" "suborder" "name"))
  ("subsite" ("subsite" "subsite" "NCIT:C45966" "subsite" "name"))
  ("subspecies" ("subspecies" "subspecies" "NCIT:C62700" "subspecies" "name"))
  ("subsystem" ("subsystem" "subsystem" "NCIT:C48692" "subsystem" "name"))
  ("subtype" ("subtype" "subtype" "NCIT:C25696" "subtype" "name"))
  ("sulfatrim"
   ("sulfatrim" "sulfatrim" "NCIT:C909" "trimethoprim-sulfamethoxazole"
    "synonym"))
  ("sulpiride"
   ("sulpiride" "SULPIRIDE" "NCIT:C87713" "sulpiride" "synonym" "," "sulpiride"
    "CHEBI:32168" "sulpiride" "name" "NCIT:C87713" "sulpiride" "name"))
  ("supernatant"
   ("supernatant" "supernatant" "NCIT:C106485" "supernatant" "name"))
  ("survivorship"
   ("survivorship" "survivorship" "NCIT:C17177" "survival" "synonym"
    "NCIT:C17177" "survival" "synonym"))
  ("swertiamarin"
   ("swertiamarin" "Swertiamarin" "CHEBI:9370" "Swertiamarin" "name" ","
    "swertiamarin" "MESH:C013270" "swertiamarin" "NM"))
  ("synchronizer"
   ("synchronizer" "synchronizer" "NCIT:C50205" "synchronizer device" "synonym"
    "NCIT:C50205" "synchronizer device" "synonym"))
  ("sz"
   ("sz" "SZ" "NCIT:C17179" "swaziland" "synonym" "NCIT:C48540"
    "syringe dosing unit" "synonym"))
  ("tabac"
   ("tabac" "TABAC" "MESH:C030421"
    "2,4,6-triiodo-3-acetamidobenzoic acid (N-cyclohexylcarbamyloxy)ethyl ester"
    "SY"))
  ("tachypnea" ("tachypnea" "tachypnea" "NCIT:C50767" "tachypnea" "name"))
  ("taken" ("taken" "taken" "NCIT:C25701" "taken" "name"))
  ("ted"
   ("ted" "TED" "HGNC:30701 G" "family with sequence similarity 155 member B"
    "Synonym" "XFAM:PF08341 Domain" "TED" "ID"))
  ("telehealth"
   ("telehealth" "telehealth" "NCIT:C15380" "telemedicine" "synonym"
    "NCIT:C16183" "telehealth" "name"))
  ("telemedicine"
   ("telemedicine" "telemedicine" "NCIT:C15380" "telemedicine" "name"))
  ("teratology" ("teratology" "teratology" "NCIT:C17703" "teratology" "name"))
  ("terra"
   ("terra" "TERRA" "CHEBI:136721" "telomeric repeat-containing RNA"
    "RELATED synonym" "NCIT:C116964" "telomeric repeat-containing RNA"
    "synonym"))
  ("tetrad"
   ("tetrad" "tetrad" "BTO:0002442" "tetrad of microspores" "RELATED synonym"
    "BTO:0002443" "tetrad of pollen" "RELATED synonym"))
  ("tf"
   ("tf" "TF" "CVCL:8274" "TF" "name" "CHEBI:74862" "Thr-Phe" "RELATED synonym"
    "HGNC:3541 G" "coagulation factor III, tissue factor" "Synonym"
    "HGNC:11740 G" "transferrin" "Approved Symbol" "UP:P13726 H"
    "Tissue factor" "RecName: Short" "UP:P20352 M" "Tissue factor"
    "RecName: Short" "NCIT:C14528" "TF mouse" "synonym" "NCIT:C17197"
    "tissue factor" "synonym" "NCIT:C17211" "serotransferrin" "synonym"
    "NCIT:C20105" "french southern and antarctic lands" "synonym" "NCIT:C46120"
    "male-to-female transsexual" "synonym" "NCIT:C51233" "F3" "synonym"
    "NCIT:C52270" "TF" "name" "NCIT:C95100" "tumor findings domain" "synonym"
    "NCIT:C159130" "GDC tumor focality terminology" "synonym" "," "Tf"
    "CHEBI:48548" "triflyl group" "RELATED synonym"))
  ("thalamus"
   ("thalamus" "THALAMUS" "NCIT:C12459" "thalamus" "synonym" "," "thalamus"
    "BTO:0001365" "thalamus" "name" "NCIT:C12459" "thalamus" "name"
    "NCIT:C23393" "thalamus" "name"))
  ("thiethylperazine"
   ("thiethylperazine" "THIETHYLPERAZINE" "NCIT:C62081" "thiethylperazine"
    "synonym" "," "Thiethylperazine" "CHEBI:9544" "thiethylperazine" "name" ","
    "thiethylperazine" "NCIT:C62081" "thiethylperazine" "name"))
  ("thiopronine"
   ("thiopronine" "thiopronine" "CHEBI:32229" "Tiopronin" "RELATED synonym"))
  ("thoracotomy"
   ("thoracotomy" "thoracotomy" "NCIT:C15337" "thoracotomy" "name"))
  ("thrombectomy"
   ("thrombectomy" "thrombectomy" "NCIT:C52003" "thrombectomy" "name"))
  ("thrombi" ("thrombi" "thrombi" "NCIT:C27083" "blood clot" "synonym"))
  ("thrombus"
   ("thrombus" "THROMBUS" "NCIT:C27083" "blood clot" "synonym" "," "thrombus"
    "BTO:0000102" "blood clot" "RELATED synonym" "NCIT:C27083" "blood clot"
    "synonym" "NCIT:C27083" "blood clot" "synonym" "NCIT:C27083" "blood clot"
    "synonym" "NCIT:C27083" "blood clot" "synonym"))
  ("thyroidectomy"
   ("thyroidectomy" "thyroidectomy" "NCIT:C51648" "thyroidectomy" "name"))
  ("ticarcillin"
   ("ticarcillin" "TICARCILLIN" "NCIT:C889" "ticarcillin" "synonym" ","
    "ticarcillin" "CHEBI:9587" "ticarcillin" "name" "NCIT:C889" "ticarcillin"
    "name"))
  ("tigliane" ("tigliane" "tigliane" "CHEBI:37526" "tigliane" "name"))
  ("tigr"
   ("tigr" "TIGR" "HGNC:7610 G" "myocilin" "Synonym" "UP:A2A9C3 M"
    "KICSTOR complex protein SZT2" "AltName: Short"))
  ("timepoint"
   ("timepoint" "timepoint" "EFO:0000724" "timepoint" "name" "NCIT:C68568"
    "timepoint" "name"))
  ("timolol"
   ("timolol" "TIMOLOL" "NCIT:C47757" "timolol" "synonym" "," "Timolol"
    "CHEBI:9599" "(S)-timolol (anhydrous)" "RELATED synonym" "," "timolol"
    "CHEBI:60787" "(S)-timolol hemihydrate" "RELATED synonym" "CHEBI:39465"
    "timolol" "name" "NCIT:C47757" "timolol" "name"))
  ("titer" ("titer" "titer" "NCIT:C67454" "titer" "name"))
  ("titrate" ("titrate" "titrate" "NCIT:C64630" "titrate" "name"))
  ("titre" ("titre" "titre" "NCIT:C67454" "titer" "synonym"))
  ("tixocortol"
   ("tixocortol" "TIXOCORTOL" "NCIT:C152667" "tixocortol" "synonym" ","
    "tixocortol" "CHEBI:63560" "tixocortol" "name" "MESH:C040971" "tixocortol"
    "NM" "NCIT:C152667" "tixocortol" "name"))
  ("tonsillectomy"
   ("tonsillectomy" "tonsillectomy" "NCIT:C51679" "tonsillectomy" "name"))
  ("topology" ("topology" "topology" "NCIT:C54101" "topology" "name"))
  ("torasemide"
   ("torasemide" "torasemide" "CHEBI:9637" "torasemide" "name" "NCIT:C29506"
    "torsemide" "synonym"))
  ("tracheostomy"
   ("tracheostomy" "tracheostomy" "NCIT:C15341" "tracheotomy" "synonym"
    "NCIT:C15341" "tracheotomy" "synonym"))
  ("transaminitis"
   ("transaminitis" "transaminitis" "NCIT:C113751" "transaminitis" "name"))
  ("transcriptome"
   ("transcriptome" "transcriptome" "EFO:0004421" "transcriptome" "name"
    "NCIT:C153194" "transcriptome" "name"))
  ("transducer"
   ("transducer" "transducer" "NCIT:C50226" "transducer device" "synonym"
    "NCIT:C50226" "transducer device" "synonym"))
  ("transgender"
   ("transgender" "transgender" "NCIT:C154421" "transgender" "name"))
  ("tras" ("tras" "TraS" "XFAM:PF10624 Family" "TraS" "ID"))
  ("triacetate"
   ("triacetate" "Triacetate" "CHEBI:16558" "triacetic acid" "RELATED synonym"
    "," "triacetate" "CHEBI:57814" "triacetate(1-)" "RELATED synonym"))
  ("triceps" ("triceps" "triceps" "NCIT:C33812" "triceps" "name"))
  ("triflate" ("triflate" "triflate" "CHEBI:48547" "triflate" "name"))
  ("trifluoromethane"
   ("trifluoromethane" "TRIFLUOROMETHANE" "CHEBI:41550" "fluoroform"
    "RELATED synonym" "," "trifluoromethane" "MESH:C009554" "fluoroform" "SY"))
  ("trilostane"
   ("trilostane" "TRILOSTANE" "NCIT:C1263" "trilostane" "synonym" ","
    "trilostane" "CHEBI:32260" "trilostane" "name" "MESH:C009954" "trilostane"
    "NM" "NCIT:C1263" "trilostane" "name"))
  ("trimester" ("trimester" "trimester" "NCIT:C69121" "trimester" "name"))
  ("triphenylstannane"
   ("triphenylstannane" "triphenylstannane" "CHEBI:30537" "triphenylstannane"
    "name" "MESH:C030665" "triphenyltin" "SY"))
  ("trismus"
   ("trismus" "trismus" "NCIT:C58404" "trismus, CTCAE" "synonym" "NCIT:C78651"
    "trismus" "name"))
  ("trochanter"
   ("trochanter" "TROCHANTER" "NCIT:C33814" "trochanter" "synonym" ","
    "trochanter" "NCIT:C33814" "trochanter" "name"))
  ("tropinone"
   ("tropinone" "Tropinone" "CHEBI:16656" "tropinone" "name" "," "tropinone"
    "CHEBI:57851" "tropiniumone" "RELATED synonym"))
  ("tsunami"
   ("tsunami" "tsunami" "UP:Q55FT4"
    "Probable serine/threonine-protein kinase tsuA" "AltName: Full"))
  ("tt"
   ("tt" "T-T" "CVCL:3174" "T.T" "RELATED synonym" "CHEBI:73665" "Thr-Thr"
    "RELATED synonym" "," "TT" "CVCL:1774" "TT" "name" "EFO:0002382" "TT"
    "name" "NCIT:C2660" "tetanus toxoid vaccine" "synonym" "NCIT:C17217"
    "trinidad and tobago" "synonym" "NCIT:C80365" "thrombin time" "synonym"
    "NCIT:C80365" "thrombin time" "synonym" "NCIT:C95102" "trial stages domain"
    "synonym" "NCIT:C158213" "tatar chinese" "synonym" "NCIT:C158213"
    "tatar chinese" "synonym"))
  ("tte"
   ("tte" "TTE" "NCIT:C80404" "transthoracic echocardiography" "synonym"))
  ("ttl"
   ("ttl" "TTL" "GO:0004835" "tubulin-tyrosine ligase activity" "EXACT synonym"
    "HGNC:21586 G" "tubulin tyrosine ligase" "Approved Symbol" "HGNC:42770 R"
    "long intergenic non-protein coding RNA 598" "Synonym" "UP:P38584"
    "Tubulin--tyrosine ligase" "RecName: Short" "UP:Q8NG68 H"
    "Tubulin--tyrosine ligase" "RecName: Short" "UP:P38585 M"
    "Tubulin--tyrosine ligase" "RecName: Short" "UP:P38160"
    "Tubulin--tyrosine ligase" "RecName: Short" "UP:Q9QXJ0"
    "Tubulin--tyrosine ligase" "RecName: Short" "XFAM:PF03133 Family" "TTL"
    "ID" "NCIT:C97865" "TTL" "name" "NCIT:C97866" "tubulin-tyrosine ligase"
    "synonym" "NCIT:C155733" "LINC00598" "synonym"))
  ("tubercle" ("tubercle" "tubercle" "BTO:0002173" "tubercle" "name"))
  ("tz"
   ("tz" "TZ" "NCIT:C17185" "tanzania, united republic of" "synonym"
    "NCIT:C33803" "transitional zone of the prostatic parenchyma" "synonym" ","
    "tz" "CHEBI:43732" "thiazole" "RELATED synonym"))
  ("u"
   ("u" "U" "NCIT:C17998" "unknown" "synonym" "NCIT:C17998" "unknown" "synonym"
    "NCIT:C17998" "unknown" "synonym" "NCIT:C25709" "unit of measure" "synonym"
    "NCIT:C25709" "unit of measure" "synonym" "NCIT:C25709" "unit of measure"
    "synonym" "NCIT:C44278" "unit" "synonym" "NCIT:C64778" "enzyme unit"
    "synonym" "," "u" "NCIT:C41127" "unified atomic mass unit" "synonym"
    "NCIT:C41127" "unified atomic mass unit" "synonym" "NCIT:C48438" "micro"
    "synonym" "NCIT:C64559" "atomic mass unit" "synonym"))
  ("ucsc"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("ug"
   ("ug" "UG" "NCIT:C17228" "uganda" "synonym" "NCIT:C158162" "uygur chinese"
    "synonym" "NCIT:C158162" "uygur chinese" "synonym" "," "ug" "UO:0000023"
    "microgram" "EXACT synonym" "NCIT:C48152" "microgram" "synonym"
    "NCIT:C48152" "microgram" "synonym" "NCIT:C48152" "microgram" "synonym"
    "NCIT:C48152" "microgram" "synonym"))
  ("uid" ("uid" "UID" "NCIT:C70663" "unique identifier" "synonym"))
  ("ultrasonography"
   ("ultrasonography" "ultrasonography" "NCIT:C17230" "ultrasonography"
    "name"))
  ("umami" ("umami" "umami" "NCIT:C150484" "umami" "name"))
  ("umbilicus"
   ("umbilicus" "UMBILICUS" "NCIT:C77533" "umbilicus" "synonym" "," "umbilicus"
    "NCIT:C77533" "umbilicus" "name"))
  ("un"
   ("un" "UN" "NCIT:C155839" "NDC UN (Unit)" "synonym" "NCIT:C155839"
    "NDC UN (Unit)" "synonym" "NCIT:C155839" "NDC UN (Unit)" "synonym"))
  ("uniprot"
   ("uniprot" "uniProt" "NCIT:C43579" "universal protein resource" "synonym"))
  ("unmet" ("unmet" "unmet" "NCIT:C99757" "unmet" "name"))
  ("ur"
   ("ur" "UR" "UP:Q62755" "Oxysterols receptor LXR-beta" "AltName: Short"
    "NCIT:C922" "uridine" "synonym" "NCIT:C102726"
    "urinary system findings domain" "synonym" "," "ur" "CHEBI:16199" "urea"
    "RELATED synonym"))
  ("urachus"
   ("urachus" "urachus" "NCIT:C12338" "urachus" "name" "NCIT:C23273" "urachus"
    "name"))
  ("urethra"
   ("urethra" "URETHRA" "NCIT:C12417" "urethra" "synonym" "," "urethra"
    "BTO:0001426" "urethra" "name" "NCIT:C12417" "urethra" "name" "NCIT:C22739"
    "urethra" "name" "NCIT:C23351" "urethra" "name" "NCIT:C60633" "urethra"
    "name"))
  ("urolith" ("urolith" "urolith" "NCIT:C26905" "urinary stone" "synonym"))
  ("urology" ("urology" "urology" "NCIT:C17243" "urology" "name"))
  ("urothelium"
   ("urothelium" "urothelium" "BTO:0003906" "uroepithelium" "RELATED synonym"
    "NCIT:C12884" "urothelium" "name" "NCIT:C23814" "urothelium" "name"))
  ("ut"
   ("ut" "UT" "XFAM:PF03253 Family" "UT" "ID" "NCIT:C43502" "utah" "synonym"))
  ("utero" ("utero" "utero" "NCIT:C12405" "uterus" "synonym"))
  ("v"
   ("v" "V" "NCIT:C14533" "V mouse" "synonym" "NCIT:C42551" "volt" "synonym"
    "NCIT:C42551" "volt" "synonym" "NCIT:C42551" "volt" "synonym" "NCIT:C42551"
    "volt" "synonym" "NCIT:C42551" "volt" "synonym" "NCIT:C94816"
    "clark level V" "synonym" "NCIT:C97227" "RASGRP1" "synonym"))
  ("vacutainer" ("vacutainer" "vacutainer" "NCIT:C63362" "vacutainer" "name"))
  ("vagus" ("vagus" "vagus" "BTO:0003472" "vagus nerve" "RELATED synonym"))
  ("valomaciclovir"
   ("valomaciclovir" "VALOMACICLOVIR" "NCIT:C96764" "valomaciclovir" "synonym"
    "," "valomaciclovir" "MESH:C513295" "valomaciclovir" "NM" "NCIT:C96764"
    "valomaciclovir" "name"))
  ("venipuncture"
   ("venipuncture" "venipuncture" "NCIT:C28221" "phlebotomy" "synonym"
    "NCIT:C28221" "phlebotomy" "synonym" "NCIT:C28221" "phlebotomy" "synonym"))
  ("vers" ("vers" "VERS" "NCIT:C25714" "version" "synonym"))
  ("villus"
   ("villus" "villus" "BTO:0003121" "villus" "name" "NCIT:C33874" "villus"
    "name" "NCIT:C94673" "intestinal villus" "synonym"))
  ("viremia"
   ("viremia" "viremia" "NCIT:C35125" "viremia" "name" "NCIT:C143215"
    "viremia, CTCAE" "synonym"))
  ("virotherapy"
   ("virotherapy" "virotherapy" "NCIT:C62713" "oncolytic virus therapy"
    "synonym"))
  ("viscera" ("viscera" "viscera" "NCIT:C28287" "viscera" "name"))
  ("vol" ("vol" "VOL" "NCIT:C74720" "volume measurement" "synonym"))
  ("vomitus"
   ("vomitus" "VOMITUS" "NCIT:C77666" "vomitus" "synonym" "," "vomitus"
    "NCIT:C77666" "vomitus" "name"))
  ("vue"
   ("vue" "VUE" "NCIT:C112846" "chronic villitis" "synonym" "NCIT:C112846"
    "chronic villitis" "synonym"))
  ("vv"
   ("vv" "V-V" "CHEBI:73704" "Val-Val" "RELATED synonym" "," "VV" "NCIT:C14281"
    "vaccinia virus" "synonym"))
  ("waterpipe" ("waterpipe" "waterpipe" "NCIT:C143029" "waterpipe" "name"))
  ("wc"
   ("wc" "WC" "CHEBI:82283" "Tungsten carbide" "RELATED synonym" "NCIT:C14548"
    "WC mouse" "synonym" "NCIT:C81203" "worst case imputation technique"
    "synonym" "NCIT:C90484" "water consumption" "synonym"))
  ("website"
   ("website" "website" "NCIT:C67518" "web site" "synonym" "NCIT:C67518"
    "web site" "synonym"))
  ("wisc"
   ("wisc" "WISC" "NCIT:C62715" "wechsler intelligence scale for children"
    "synonym"))
  ("withdrawn"
   ("withdrawn" "withdrawn" "NCIT:C38061" "withdraw" "synonym" "NCIT:C41341"
    "withdrawal" "synonym" "NCIT:C70758" "study withdrawn" "synonym"))
  ("workflow" ("workflow" "workflow" "NCIT:C42753" "workflow" "name"))
  ("workup" ("workup" "work-up" "NCIT:C85833" "work-up" "name"))
  ("www" ("www" "WWW" "NCIT:C20461" "world wide web" "synonym"))
  ("x"
   ("x" "X" "NCIT:C15023" "X mouse" "synonym" "NCIT:C44477" "X-coordinate"
    "synonym" "NCIT:C45784" "X-dimension" "synonym" "NCIT:C88111"
    "decimal series of attenuation" "synonym" "NCIT:C116676" "PSMB5"
    "synonym"))
  ("xanthochromia"
   ("xanthochromia" "xanthochromia" "NCIT:C147449" "xanthochromia measurement"
    "synonym" "NCIT:C147449" "xanthochromia measurement" "synonym"))
  ("xls"
   ("xls" "XLS" "HGNC:27849 G" "PAXX non-homologous end joining factor"
    "Synonym"))
  ("xx" ("xx" "XX" "NCIT:C45976" "XX genotype" "synonym"))
  ("xy" ("xy" "XY" "NCIT:C45977" "XY genotype" "synonym"))
  ("y"
   ("y" "Y" "NCIT:C28199" "yttrium" "synonym" "NCIT:C45785" "Y-dimension"
    "synonym" "NCIT:C49488" "yes" "synonym" "NCIT:C67891" "yotta" "synonym"
    "NCIT:C81210" "year month day imputed" "synonym" "," "y" "NCIT:C44478"
    "Y-coordinate" "synonym" "NCIT:C67905" "yocto" "synonym"))
  ("yl"
   ("yl" "YL" "CHEBI:75003" "Tyr-Leu" "RELATED synonym" "UP:P98163"
    "Putative vitellogenin receptor" "AltName: Short"))
  ("zo" ("zo" "ZO" "CVCL:M694" "ZO" "name")))
)

(defparameter *all-mixedcase-drum-terms* 
'(("AGf"
   ("agf" "AGF" "CVCL:D101" "AG-F" "name" "CVCL:Z434" "AGF2" "RELATED synonym"
    "HGNC:23140 G" "angiopoietin like 6" "Synonym" "," "AgF" "CHEBI:30340"
    "silver monofluoride" "RELATED synonym"))
  ("ATPw"
   ("atpw" "ATPW" "HGNC:18799 G" "distal membrane arm assembly complex 2 like"
    "Synonym"))
  ("Aar"
   ("aar" "AAR" "GO:0004043"
    "L-aminoadipate-semialdehyde dehydrogenase activity" "EXACT synonym"
    "UP:Q54765" "Long-chain acyl-[acyl-carrier-protein] reductase"
    "RecName: Short" "UP:Q55687"
    "Long-chain acyl-[acyl-carrier-protein] reductase" "RecName: Short"
    "NCIT:C153821" "afar language" "synonym"))
  ("Acupan"
   ("acupan" "Acupan" "CHEBI:88312" "nefopam hydrochloride" "RELATED synonym"))
  ("Ademetionine"
   ("ademetionine" "ADEMETIONINE" "NCIT:C100098" "ademetionine" "synonym" ","
    "ademetionine" "NCIT:C100098" "ademetionine" "name"))
  ("Affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("AgL"
   ("agl" "AGL" "HGNC:321 G"
    "amylo-alpha-1, 6-glucosidase, 4-alpha-glucanotransferase"
    "Approved Symbol" "UP:Q12558" "Alpha-glucosidase" "RecName: Short"))
  ("Amias" ("amias" "Amias" "MESH:C077793" "candesartan cilexetil" "SY"))
  ("Amoxicilline"
   ("amoxicilline" "amoxicilline" "CHEBI:2676" "amoxicillin" "RELATED synonym"
    "NCIT:C87367" "amoxicillin anhydrous" "synonym"))
  ("Ap"
   ("ap" "A-P" "CHEBI:73393" "Ala-Pro" "RELATED synonym" "," "AP" "CVCL:E457"
    "AP" "name" "CHEBI:28971" "ampicillin" "RELATED synonym" "CHEBI:81686"
    "Magnesium L-ascorbic acid-2-phosphate" "RELATED synonym" "EFO:0004533"
    "alkaline phosphatase measurement" "EXACT synonym" "UP:Q03023" "Serralysin"
    "AltName: Short" "UP:Q05431 C" "L-ascorbate peroxidase 1, cytosolic"
    "RecName: Short" "UP:P48534" "L-ascorbate peroxidase, cytosolic"
    "RecName: Short" "UP:C9X4J1" "Anionic peptide" "RecName: Short" "UP:P83456"
    "Alkaline phosphatase" "RecName: Short" "NCIT:C9929"
    "cisplatin/Doxorubicin" "synonym" "NCIT:C16276" "alkaline phosphatase"
    "synonym" "NCIT:C117304" "associated persons domain" "synonym"
    "NCIT:C158998" "GDC anaplasia present terminology" "synonym"))
  ("Apob"
   ("apob" "APOB" "HGNC:603 G" "apolipoprotein B" "Approved Symbol"
    "NCIT:C74734" "apolipoprotein B measurement" "synonym" "NCIT:C106031"
    "APOB" "name" "NCIT:C106032" "apolipoprotein B-100" "synonym"))
  ("Arab"
   ("arab" "ARAB" "NCIT:C43876" "arab" "synonym" "," "arab" "NCIT:C43876"
    "arab" "name"))
  ("ArsA"
   ("arsa" "ARSA" "Orphanet:260305" "Autosomal recessive sideroblastic anemia"
    "EXACT synonym" "HGNC:713 G" "arylsulfatase A" "Approved Symbol"
    "NCIT:C103931" "ARSA" "name" "NCIT:C103932" "arylsulfatase A" "synonym"))
  ("Ata"
   ("ata" "ATA" "HGNC:795 G" "ATM serine/threonine kinase" "Previous Symbol"
    "NCIT:C18007" "antarctica" "synonym" "NCIT:C18007" "antarctica" "synonym"
    "NCIT:C44331" "amitrole" "synonym" "NCIT:C51192" "ATM" "synonym"))
  ("BALBc" ("balbc" "BALBc" "EFO:0000602" "BALB/c" "EXACT synonym"))
  ("Bahia" ("bahia" "bahia" "NCIT:C156317" "bahia" "name"))
  ("Bermuda"
   ("bermuda" "BERMUDA" "NCIT:C16334" "bermuda" "synonym" "NCIT:C16334"
    "bermuda" "synonym" "," "bermuda" "NCIT:C16334" "bermuda" "name"))
  ("BiPAP"
   ("bipap" "BiPAP" "NCIT:C124039" "biphasic positive airway pressure"
    "synonym"))
  ("Bini" ("bini" "bini" "NCIT:C153859" "edo language" "synonym"))
  ("Boolean" ("boolean" "boolean" "NCIT:C45254" "boolean" "name"))
  ("Branhamella"
   ("branhamella" "branhamella" "NCIT:C86009" "moraxella" "synonym"))
  ("CSs"
   ("css" "CSS" "EFO:0004004" "consomic strain" "EXACT synonym" "Orphanet:1465"
    "Coffin-Siris syndrome" "EXACT synonym"))
  ("Canin" ("canin" "Canin" "CHEBI:3356" "Canin" "name"))
  ("Capmul" ("capmul" "Capmul" "MESH:C025343" "monooctanoin" "SY"))
  ("Ccr"
   ("ccr" "CCR" "GO:0043880" "crotonyl-CoA reductase activity" "EXACT synonym"
    "," "cCR" "NCIT:C123574" "clinical complete response" "synonym"
    "NCIT:C123574" "clinical complete response" "synonym"))
  ("CdvA" ("cdva" "CdvA" "XFAM:PF18822 Coiled-coil" "CdvA" "ID"))
  ("Celsentri" ("celsentri" "celsentri" "NCIT:C73144" "maraviroc" "synonym"))
  ("Cephalotaxine"
   ("cephalotaxine" "cephalotaxine" "CHEBI:3540" "cephalotaxine" "name"))
  ("CgB"
   ("cgb" "CGB" "HGNC:1886 G" "chorionic gonadotropin subunit beta 3"
    "Previous Symbol" "NCIT:C52026" "CGB3" "synonym" "," "CgB" "UP:P23389"
    "Secretogranin-1" "AltName: Short" "UP:P05060 H" "Secretogranin-1"
    "AltName: Short" "UP:P16014 M" "Secretogranin-1" "AltName: Short"
    "UP:Q9GLG4" "Secretogranin-1" "AltName: Short" "UP:O35314"
    "Secretogranin-1" "AltName: Short" "NCIT:C20684" "secretogranin-1"
    "synonym"))
  ("Chidamide"
   ("chidamide" "chidamide" "CHEBI:135918" "chidamide" "name" "MESH:C547816"
    "N-(2-amino-5-fluorobenzyl)-4-(N-(pyridine-3-acrylyl)aminomethyl)benzamide"
    "SY" "NCIT:C97263" "tucidinostat" "synonym"))
  ("Chol" ("chol" "CHOL" "NCIT:C105586" "cholesterol measurement" "synonym"))
  ("Cholecystectomy"
   ("cholecystectomy" "cholecystectomy" "NCIT:C51676" "cholecystectomy"
    "name"))
  ("Cla"
   ("cla" "CLA" "CVCL:E529" "CLA" "name" "CHEBI:61159"
    "conjugated linoleic acid" "RELATED synonym" "CHEBI:3732" "clarithromycin"
    "RELATED synonym" "NCIT:C14890" "CLA mouse" "synonym" "NCIT:C43629"
    "conjugated linoleic acid" "synonym" "NCIT:C43629"
    "conjugated linoleic acid" "synonym" "NCIT:C128477" "SELPLG" "synonym"
    "NCIT:C128478" "P-selectin glycoprotein ligand 1" "synonym"))
  ("Columbia" ("columbia" "columbia" "NCIT:C44057" "columbia" "name"))
  ("Concha" ("concha" "concha" "NCIT:C32362" "concha" "name"))
  ("Cor"
   ("cor" "COR" "XFAM:PF16095 Family" "COR" "ID" "NCIT:C1057" "cordycepin"
    "synonym" "NCIT:C153887" "cornish language" "synonym"))
  ("Cq" ("cq" "CQ" "NCIT:C48481" "cartridge dosing unit" "synonym"))
  ("CrFK" ("crfk" "CrFK" "CVCL:2426" "CRFK" "name"))
  ("CreB"
   ("creb" "CREB" "FPLX:CREB" "CREB" "name" "NCIT:C17286"
    "cAMP responsive element binding protein" "synonym" "NCIT:C52529" "CREB1"
    "synonym"))
  ("CreC" ("crec" "CREC" "FA:00753" "CREC family" "ID"))
  ("Crimean"
   ("crimean" "crimean" "NCIT:C153890" "crimean tatar language" "synonym"))
  ("Crixivan"
   ("crixivan" "crixivan" "NCIT:C1662" "indinavir sulfate" "synonym"))
  ("Crossmatch"
   ("crossmatch" "crossmatch" "NCIT:C116210" "panel reactive antibody test"
    "synonym"))
  ("CuCl" ("cucl" "CuCl" "CHEBI:53472" "copper(I) chloride" "RELATED synonym"))
  ("Cyclazocine"
   ("cyclazocine" "CYCLAZOCINE" "NCIT:C80571" "cyclazocine" "synonym" ","
    "cyclazocine" "NCIT:C80571" "cyclazocine" "name"))
  ("Cysticercus"
   ("cysticercus" "cysticercus" "BTO:0003168" "cysticercus" "name"))
  ("Czech" ("czech" "czech" "NCIT:C153875" "czech language" "synonym"))
  ("DDx"
   ("ddx" "DDX" "HGNC:386 G" "aldo-keto reductase family 1 member C3" "Synonym"
    "NCIT:C129053" "AKR1C3" "synonym"))
  ("DHSa"
   ("dhsa" "DHSA" "CHEBI:28724" "9,10-dihydroxyoctadecanoic acid"
    "RELATED synonym"))
  ("DHSs" ("dhss" "DHSS" "MESH:C110836" "di-n-hexyl sulfosuccinate" "SY"))
  ("DLinDMA"
   ("dlindma" "DLinDMA" "MESH:C000626006"
    "1,2-dilinoleyloxy-3-dimethylaminopropane" "SY"))
  ("DMet"
   ("dmet" "-D-Met" "CHEBI:32641" "D-methionino group" "RELATED synonym" ","
    "-D-Met-" "CHEBI:29984" "D-methionine residue" "RELATED synonym" ","
    "D-Met-" "CHEBI:32640" "D-methionyl group" "RELATED synonym"))
  ("DTr"
   ("dtr" "DT-R" "NCIT:C26123" "heparin-binding EGF-like growth factor"
    "synonym" "NCIT:C51420" "HBEGF" "synonym" "," "DTR" "CHEBI:16296"
    "D-tryptophan" "RELATED synonym" "HGNC:3059 G"
    "heparin binding EGF like growth factor" "Previous Symbol" "NCIT:C26123"
    "heparin-binding EGF-like growth factor" "synonym" "NCIT:C51420" "HBEGF"
    "synonym" "NCIT:C75446" "deep tendon reflex" "synonym" "," "dtr"
    "HGNC:33732 G" "protein phosphatase 1 regulatory subunit 42" "Synonym"))
  ("Dactylaria" ("dactylaria" "dactylaria" "NCIT:C86061" "dactylaria" "name"))
  ("Dal" ("dal" "DAL" "CHEBI:15570" "D-alanine" "RELATED synonym"))
  ("Deramaxx"
   ("deramaxx" "Deramaxx" "CHEBI:73032" "deracoxib" "RELATED synonym"))
  ("Dermorphin"
   ("dermorphin" "dermorphin" "UP:P86633" "Dermorphin" "RecName: Full"
    "UP:P85887" "Dermorphin" "RecName: Full" "MESH:C030058" "dermorphin" "NM"))
  ("Dgdp"
   ("dgdp" "dGDP" "CHEBI:58595" "dGDP(3-)" "RELATED synonym" "CHEBI:28862"
    "dGDP" "name"))
  ("Dj"
   ("dj" "DJ" "NCIT:C16506" "djibouti" "synonym" "," "dJ" "CHEBI:111513"
    "(beta-D-glucopyranosyloxymethyl)deoxyuridine" "RELATED synonym"))
  ("Dq" ("dq" "DQ" "CHEBI:73827" "Asp-Gln" "RELATED synonym"))
  ("Dura"
   ("dura" "dura" "BTO:0001637" "dura mater" "RELATED synonym" "NCIT:C32488"
    "dura mater" "synonym"))
  ("Dyrk"
   ("dyrk" "DYRK" "FPLX:DYRK" "DYRK" "name" "HGNC:3091 G"
    "dual specificity tyrosine phosphorylation regulated kinase 1A"
    "Previous Symbol" "NCIT:C98171" "DYRK1A" "synonym"))
  ("Dz" ("dz" "DZ" "NCIT:C16274" "algeria" "synonym"))
  ("EdA"
   ("eda" "EDA" "HGNC:3157 G" "ectodysplasin A" "Approved Symbol"
    "NCIT:C159357" "EDA" "name"))
  ("Ehrlich"
   ("ehrlich" "Ehrlich" "CVCL:3873" "Ehrlich-Lettre ascites strain E"
    "RELATED synonym"))
  ("Epivir"
   ("epivir" "Epivir" "CHEBI:63577" "lamivudine" "RELATED synonym" "," "epivir"
    "NCIT:C1471" "lamivudine" "synonym"))
  ("Eq"
   ("eq" "E-Q" "CHEBI:141435" "Glu-Gln" "RELATED synonym" "," "EQ"
    "NCIT:C61582" "equality" "synonym" "," "eq" "NCIT:C67273"
    "equivalent weight" "synonym" "NCIT:C67273" "equivalent weight" "synonym"
    "NCIT:C67273" "equivalent weight" "synonym" "NCIT:C67273"
    "equivalent weight" "synonym"))
  ("Esta" ("esta" "estA" "UP:Q9Y871" "Feruloyl esterase B" "AltName: Short"))
  ("Exudate"
   ("exudate" "EXUDATE" "NCIT:C13233" "exudate" "synonym" "," "exudate"
    "NCIT:C13233" "exudate" "name" "NCIT:C26417" "exudate" "name"))
  ("FMRFamide"
   ("fmrfamide" "FMRFamide" "UP:P69146" "FMRFamide" "RecName: Full" "UP:P69147"
    "FMRFamide" "RecName: Full" "UP:P69148" "FMRFamide" "RecName: Full"))
  ("FastQ" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("Fc"
   ("fc" "FC" "UP:Q06529" "Cytochrome subunit of sulfide dehydrogenase"
    "AltName: Short" "UP:etc" "" "fake" "NCIT:C90384" "food consumption"
    "synonym"))
  ("Flublok"
   ("flublok" "flublok" "NCIT:C2643" "trivalent influenza vaccine" "synonym"))
  ("Fusobacteriaceae"
   ("fusobacteriaceae" "fusobacteriaceae" "NCIT:C85938" "fusobacteriaceae"
    "name"))
  ("GGs"
   ("ggs" "GGS" "UP:A0A2L0VXR5" "Geranylgeranyl pyrophosphate synthase"
    "RecName: Short"))
  ("Gapdh"
   ("gapdh" "GAPDH" "GO:0004365"
    "glyceraldehyde-3-phosphate dehydrogenase (NAD+) (phosphorylating) activity"
    "EXACT synonym" "HGNC:4141 G" "glyceraldehyde-3-phosphate dehydrogenase"
    "Approved Symbol" "UP:P04406 H" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "UP:P16858 M" "Glyceraldehyde-3-phosphate dehydrogenase"
    "RecName: Short" "NCIT:C104410" "GAPDH" "name"))
  ("Gb"
   ("gb" "GB" "CVCL:S928" "GB" "name" "UO:0000331" "gigabyte" "EXACT synonym"
    "NCIT:C17233" "united kingdom" "synonym" "NCIT:C113729" "grade B" "synonym"
    "NCIT:C161526" "G-series nerve agent GB" "synonym" "NCIT:C161526"
    "G-series nerve agent GB" "synonym" "," "Gb" "UO:0000330" "gigabasepair"
    "EXACT synonym" "UP:P61585" "Transforming protein RhoA" "AltName: Full"
    "NCIT:C68918" "gilbert" "synonym" "NCIT:C68918" "gilbert" "synonym" ","
    "gB" "NCIT:C132331" "human cytomegalovirus envelope glycoprotein B"
    "synonym"))
  ("GenBank" ("genbank" "genBank" "NCIT:C43818" "genBank" "name"))
  ("Genbank" ("genbank" "genBank" "NCIT:C43818" "genBank" "name"))
  ("Geotrichum"
   ("geotrichum" "GEOTRICHUM" "NCIT:C122315" "geotrichum" "synonym" ","
    "geotrichum" "NCIT:C122315" "geotrichum" "name"))
  ("Gf"
   ("gf" "GF" "CVCL:S931" "GF" "name" "CVCL:8875" "Grunt Fin" "RELATED synonym"
    "CHEBI:73912" "Gly-Phe" "RELATED synonym" "NCIT:C16593" "french guiana"
    "synonym" "NCIT:C161530" "G-series nerve agent GF" "synonym" "NCIT:C161530"
    "G-series nerve agent GF" "synonym" "," "gf" "NCIT:C70472" "gram-force"
    "synonym" "NCIT:C70472" "gram-force" "synonym"))
  ("GlcMan" ("glcman" "Glc-Man" "MESH:C095558" "4-glucopyranosylmannose" "SY"))
  ("Goldenrod" ("goldenrod" "goldenrod" "NCIT:C52191" "goldenrod" "name"))
  ("Grupo" ("grupo" "grupo" "CHEBI:24433" "group" "RELATED synonym"))
  ("Guadeloupe"
   ("guadeloupe" "GUADELOUPE" "NCIT:C16651" "guadeloupe" "synonym"
    "NCIT:C16651" "guadeloupe" "synonym" "," "guadeloupe" "NCIT:C16651"
    "guadeloupe" "name"))
  ("Guam"
   ("guam" "GUAM" "NCIT:C16652" "guam" "synonym" "NCIT:C16652" "guam" "synonym"
    "," "guam" "NCIT:C16652" "guam" "name" "NCIT:C110836" "guam, GU"
    "synonym"))
  ("Hae"
   ("hae" "HA-E" "CVCL:0C12" "HA-E" "name" "," "HAE" "Orphanet:91378"
    "Hereditary angioedema" "EXACT synonym"))
  ("Hb"
   ("hb" "H-B" "HGNC:4632 G" "glutathione S-transferase mu 1" "Synonym" ","
    "HB" "CVCL:3694" "HB" "name" "UP:P08821" "DNA-binding protein HU 1"
    "AltName: Full" "UP:P0A3H2" "DNA-binding protein HU" "AltName: Full"
    "UP:P0A3H1" "DNA-binding protein HU" "AltName: Full" "UP:P0A3H0"
    "DNA-binding protein HU" "AltName: Full" "UP:P35588" "Hypodermin-B"
    "RecName: Short" "," "Hb" "EFO:0004509" "hemoglobin measurement"
    "EXACT synonym" "UP:P73925" "Group 1 truncated hemoglobin GlbN"
    "AltName: Short" "NCIT:C16676" "hemoglobin" "synonym"))
  ("Hct"
   ("hct" "HCT" "NCIT:C15431" "hematopoietic cell transplantation" "synonym"
    "NCIT:C64796" "hematocrit measurement" "synonym"))
  ("Heatmap" ("heatmap" "heatmap" "NCIT:C78549" "heatmap" "name"))
  ("Hemi" ("hemi" "HEMI" "NCIT:C81009" "half" "synonym"))
  ("Het"
   ("het" "HET" "HGNC:10520 G" "scaffold attachment factor B" "Synonym"
    "XFAM:PF06985 Family" "HET" "ID" "NCIT:C19674"
    "scaffold attachment factor B1" "synonym" "NCIT:C52292" "SLC22A18"
    "synonym"))
  ("Hindu"
   ("hindu" "Hindu" "EFO:0003153" "Asian Indian" "EXACT synonym" "," "hindu"
    "NCIT:C103291" "hindu" "name"))
  ("Hivid" ("hivid" "hivid" "NCIT:C430" "zalcitabine" "synonym"))
  ("Hypoproteinemia"
   ("hypoproteinemia" "hypoproteinemia" "NCIT:C88511" "hypoproteinemia"
    "name"))
  ("Hz"
   ("hz" "HZ" "NCIT:C158210" "hezhen chinese" "synonym" "NCIT:C158210"
    "hezhen chinese" "synonym" "," "Hz" "UO:0000106" "hertz" "EXACT synonym"
    "NCIT:C42545" "hertz" "synonym" "NCIT:C42545" "hertz" "synonym"
    "NCIT:C42545" "hertz" "synonym" "NCIT:C42545" "hertz" "synonym"
    "NCIT:C42545" "hertz" "synonym"))
  ("IDi"
   ("idi" "IDI" "Orphanet:363300" "Genetic intractable diarrhea of infancy"
    "EXACT synonym"))
  ("IVIg"
   ("ivig" "IVIG" "NCIT:C121331" "intravenous immunoglobulin therapy"
    "synonym"))
  ("IgIV" ("igiv" "IgIV" "NCIT:C2701" "therapeutic immune globulin" "synonym"))
  ("Igel" ("igel" "IGEL" "NCIT:C101624" "MS4A2" "synonym"))
  ("Immulite" ("immulite" "immulite" "NCIT:C113739" "immulite" "name"))
  ("Immunoassay"
   ("immunoassay" "IMMUNOASSAY" "NCIT:C16714" "immunoenzyme procedure"
    "synonym" "," "immunoassay" "NCIT:C16723" "immunology test" "synonym"))
  ("Immunochemistry"
   ("immunochemistry" "immunochemistry" "NCIT:C16713" "immunochemistry"
    "name"))
  ("InterProScan"
   ("interproscan" "interProScan" "NCIT:C82965" "interProScan" "name"))
  ("Internet" ("internet" "internet" "NCIT:C20342" "internet" "name"))
  ("Istradefylline"
   ("istradefylline" "ISTRADEFYLLINE" "NCIT:C73268" "istradefylline" "synonym"
    "," "istradefylline" "CHEBI:134726" "istradefylline" "name" "MESH:C111599"
    "istradefylline" "NM" "NCIT:C73268" "istradefylline" "name"))
  ("JACoP"
   ("jacop" "JACOP" "HGNC:25931 G" "cingulin like 1" "Synonym" "NCIT:C98065"
    "CGNL1" "synonym"))
  ("Jb"
   ("jb" "JB" "CVCL:Y434" "JB" "name" "CVCL:H633"
    "JB6 [Human anaplastic large cell lymphoma]" "RELATED synonym"))
  ("Jon"
   ("jon" "JO-N" "CVCL:M891" "JON" "name" "," "JoN" "CVCL:D785" "JoN" "name"))
  ("Jupiter"
   ("jupiter" "JUPITER" "FA:01784" "JUPITER family" "ID" "XFAM:PF17054 Family"
    "JUPITER" "ID" "," "Jupiter" "CVCL:Z785" "Jupiter" "name"))
  ("Karnofsky"
   ("karnofsky" "karnofsky" "NCIT:C28013" "karnofsky performance status"
    "synonym"))
  ("Klamath" ("klamath" "klamath" "NCIT:C44006" "klamath" "name"))
  ("Ksh"
   ("ksh" "KSH" "UP:F1CMX0"
    "3-ketosteroid-9-alpha-monooxygenase, oxygenase component" "AltName: Short"
    "UP:etc" "" "fake"))
  ("Kv"
   ("kv" "K-V" "CHEBI:73607" "Lys-Val" "RELATED synonym" "," "kV" "UO:0000248"
    "kilovolt" "EXACT synonym"))
  ("LTbR"
   ("ltbr" "LTBR" "HGNC:6718 G" "lymphotoxin beta receptor" "Approved Symbol"
    "NCIT:C116041" "LTBR" "name" "NCIT:C116042"
    "tumor necrosis factor receptor superfamily member 3" "synonym"))
  ("Landracecross"
   ("landracecross" "LANDRACE-CROSS" "NCIT:C77105" "landrace pig" "synonym" ","
    "landrace-cross" "NCIT:C77105" "landrace pig" "synonym"))
  ("Lanugo" ("lanugo" "lanugo" "NCIT:C34197" "lanugo" "name"))
  ("Latino" ("latino" "Latino" "EFO:0003166" "Latino" "name"))
  ("Leuenkephalin"
   ("leuenkephalin" "Leu-enkephalin" "CHEBI:80263" "Leu-enkephalin" "name" ","
    "leu-enkephalin" "NCIT:C126499" "leu-enkephalin" "name"))
  ("Limiter"
   ("limiter" "limiter" "NCIT:C50032" "limiter device" "synonym" "NCIT:C50032"
    "limiter device" "synonym"))
  ("LoD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("Lphenylalaninate"
   ("lphenylalaninate" "L-phenylalaninate" "CHEBI:32486" "L-phenylalaninate"
    "name"))
  ("Ltbr"
   ("ltbr" "LTBR" "HGNC:6718 G" "lymphotoxin beta receptor" "Approved Symbol"
    "NCIT:C116041" "LTBR" "name" "NCIT:C116042"
    "tumor necrosis factor receptor superfamily member 3" "synonym"))
  ("Ltn"
   ("ltn" "LTN" "HGNC:10645 G" "X-C motif chemokine ligand 1" "Previous Symbol"
    "NCIT:C50973" "XCL1" "synonym"))
  ("Ltryptophan"
   ("ltryptophan" "L-tryptophan" "CHEBI:29954" "L-tryptophan residue"
    "RELATED synonym" "CHEBI:16828" "L-tryptophan" "name" "CHEBI:57912"
    "L-tryptophan zwitterion" "RELATED synonym"))
  ("Mantoux"
   ("mantoux" "MANTOUX" "NCIT:C85997" "mantoux tuberculin skin test"
    "synonym"))
  ("Mavs"
   ("mavs" "MAVS" "HGNC:29233 G" "mitochondrial antiviral signaling protein"
    "Approved Symbol" "UP:Q7Z434 H" "Mitochondrial antiviral-signaling protein"
    "RecName: Short" "UP:Q8VCF0 M" "Mitochondrial antiviral-signaling protein"
    "RecName: Short" "UP:Q66HG9" "Mitochondrial antiviral-signaling protein"
    "RecName: Short"))
  ("McKesson"
   ("mckesson" "McKesson" "NCIT:C105671" "McKesson health record system"
    "synonym"))
  ("Medexport"
   ("medexport" "medexport" "MESH:C002983" "oleomorphocycline" "SY"))
  ("Melle" ("melle" "Mel-LE" "CVCL:C501" "Mel-LE" "name"))
  ("Mesothelium"
   ("mesothelium" "mesothelium" "BTO:0002422" "mesothelium" "name"
    "NCIT:C33105" "mesothelium" "name"))
  ("MiSeq"
   ("miseq" "MISEQ" "NCIT:C117573" "microscopic findings sequence number"
    "synonym"))
  ("Mpn"
   ("mpn" "MPN" "HGNC:15475 G" "serine protease 27" "Synonym" "NCIT:C4345"
    "myeloproliferative neoplasm" "synonym" "NCIT:C156543"
    "mycoplasma pneumoniae measurement" "synonym"))
  ("Muslim" ("muslim" "muslim" "NCIT:C103285" "muslim" "name"))
  ("Mx"
   ("mx" "MX" "CVCL:KC00" "MX" "name" "NCIT:C16850" "mexico" "synonym"
    "NCIT:C48704" "MX stage finding" "synonym" "NCIT:C113310" "MX1" "synonym"
    "," "Mx" "NCIT:C68793" "maxwell" "synonym" "NCIT:C68793" "maxwell"
    "synonym"))
  ("Mybp" ("mybp" "MyBP" "FA:01844" "MyBP family" "ID"))
  ("Mycobacteriaceae"
   ("mycobacteriaceae" "mycobacteriaceae" "NCIT:C85982" "mycobacteriaceae"
    "name"))
  ("NaClO"
   ("naclo" "NaClO" "CHEBI:32146" "sodium hypochlorite" "RELATED synonym"))
  ("NaOCl"
   ("naocl" "NaOCl" "CHEBI:32146" "sodium hypochlorite" "RELATED synonym"))
  ("Nanomaterials"
   ("nanomaterials" "nanomaterials" "NCIT:C53671" "nanomaterials" "name"))
  ("Nao"
   ("nao" "NAO" "GO:0052664" "nitroalkane oxidase activity" "EXACT synonym"
    "UP:Q9C5C4 C" "Acetylornithine deacetylase" "AltName: Short" "MESH:C041691"
    "10-N-nonylacridinium orange" "SY"))
  ("Ndomain" ("ndomain" "N-domain" "NCIT:C25902" "N domain" "synonym"))
  ("Neurobiology"
   ("neurobiology" "neurobiology" "NCIT:C19626" "neurobiology" "name"))
  ("Nf"
   ("nf" "N-F" "CHEBI:141424" "Asn-Phe" "RELATED synonym" "," "NF" "CVCL:W770"
    "NF" "name" "CHEBI:1224" "2-nitrofluorene" "RELATED synonym" "CHEBI:25573"
    "nodulation factor" "RELATED synonym" "HGNC:29866 G" "neurofascin"
    "Synonym" "NCIT:C16919" "norfolk island" "synonym"))
  ("Nhalamine" ("nhalamine" "N-halamine" "MESH:C000629066" "N-halamine" "NM"))
  ("Nhydroxyguanidine"
   ("nhydroxyguanidine" "N-HYDROXYGUANIDINE" "CHEBI:43089" "N-hydroxyguanidine"
    "name"))
  ("Nk"
   ("nk" "NK" "CVCL:1D01" "Novikoff-Hepatoma" "RELATED synonym" "UP:Q57849"
    "Nucleoside kinase" "RecName: Short" "UP:O27587" "Nucleoside kinase"
    "RecName: Short" "UP:Q9HJT3" "Nucleoside kinase" "RecName: Short"
    "NCIT:C12536" "natural killer cell" "synonym" "NCIT:C12741"
    "natural killer cell" "synonym" "NCIT:C12741" "natural killer cell"
    "synonym" "NCIT:C23672" "natural killer cells" "synonym"))
  ("Novartis" ("novartis" "novartis" "NCIT:C126403" "novartis" "name"))
  ("Numax" ("numax" "Numax" "MESH:C506968" "motavizumab" "SY"))
  ("Okinawan"
   ("okinawan" "OKINAWAN" "NCIT:C43717" "okinawan" "synonym" "," "okinawan"
    "NCIT:C43717" "okinawan" "name"))
  ("Omaha" ("omaha" "omaha" "NCIT:C44065" "omaha" "name"))
  ("Ot"
   ("ot" "OT" "CHEBI:7872" "oxytocin" "RELATED synonym" "HGNC:8528 G"
    "oxytocin/neurophysin I prepropeptide" "Previous Symbol" "NCIT:C52423"
    "OXT" "synonym" "NCIT:C121351" "occupational therapy" "synonym"
    "NCIT:C121351" "occupational therapy" "synonym"))
  ("Otolaryngology"
   ("otolaryngology" "otolaryngology" "NCIT:C16943" "otolaryngology" "name"))
  ("PIgR"
   ("pigr" "PIGR" "HGNC:8968 G" "polymeric immunoglobulin receptor"
    "Approved Symbol" "," "PIgR" "UP:P01833 H"
    "Polymeric immunoglobulin receptor" "RecName: Short" "UP:O70570 M"
    "Polymeric immunoglobulin receptor" "RecName: Short"))
  ("Paki"
   ("paki" "PAKI" "UP:Q29502" "Serine/threonine-protein kinase PAK 2"
    "AltName: Short"))
  ("Parathyroidectomy"
   ("parathyroidectomy" "parathyroidectomy" "NCIT:C51593" "parathyroidectomy"
    "name"))
  ("PeV" ("pev" "PEV" "NCIT:C9689" "cisplatin/Etoposide/Vindesine" "synonym"))
  ("Persantine"
   ("persantine" "persantine" "NCIT:C445" "dipyridamole" "synonym" "NCIT:C445"
    "dipyridamole" "synonym"))
  ("Petersburg" ("petersburg" "petersburg" "NCIT:C44725" "petersburg" "name"))
  ("Phialophora"
   ("phialophora" "PHIALOPHORA" "NCIT:C123543" "phialophora" "synonym" ","
    "phialophora" "NCIT:C123543" "phialophora" "name"))
  ("PhosTag"
   ("phostag" "phos-tag" "MESH:C514153"
    "1,3-bis(bis(pyridin-2-ylmethyl)amino)propan-2-ol" "SY"))
  ("Pico"
   ("pico" "pico" "UO:0000302" "pico" "name" "NCIT:C67901" "pico" "name" ","
    "pico-" "NCIT:C67901" "pico" "synonym"))
  ("Piscataway" ("piscataway" "piscataway" "NCIT:C44088" "piscataway" "name"))
  ("Pla"
   ("pla" "PL-A" "UP:P84282" "Lectin-A" "AltName: Full" "," "PLA" "CHEBI:53407"
    "poly(lactic acid) macromolecule" "RELATED synonym" "CHEBI:60159"
    "poly(lactic acid) polymer" "RELATED synonym" "UP:A1CFS2"
    "Probable pectin lyase A" "RecName: Short" "UP:etc" "" "fake"
    "NCIT:C129959" "left atrial pressure" "synonym" "NCIT:C148364"
    "percutaneous local ablation" "synonym" "NCIT:C156754"
    "proximity ligation assay" "synonym"))
  ("Pleistophora"
   ("pleistophora" "PLEISTOPHORA" "NCIT:C124357" "pleistophora" "synonym" ","
    "pleistophora" "NCIT:C124357" "pleistophora" "name"))
  ("Poi" ("poi" "POI" "UP:P81765" "Tyrosinase inhibitor" "AltName: Short"))
  ("Postprocedure"
   ("postprocedure" "post-procedure" "NCIT:C100059" "post-procedure" "name"))
  ("Procalcitonin"
   ("procalcitonin" "procalcitonin" "NCIT:C103430" "procalcitonin measurement"
    "synonym" "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("Qa"
   ("qa" "QA" "NCIT:C15381" "quality assurance" "synonym" "NCIT:C15381"
    "quality assurance" "synonym" "NCIT:C17045" "qatar" "synonym"
    "NCIT:C113236" "quinolinic acid" "synonym"))
  ("Qiagen" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("QoL" ("qol" "QOL" "NCIT:C17047" "quality of life" "synonym"))
  ("Qvalue" ("qvalue" "Q-value" "NCIT:C64217" "Q-value" "name"))
  ("Radioimmunoassay"
   ("radioimmunoassay" "radioimmunoassay" "NCIT:C17057" "radioimmunoassay"
    "name"))
  ("Radix"
   ("radix" "radix" "NCIT:C79664" "root" "synonym" "NCIT:C88211" "base number"
    "synonym"))
  ("Retrovir"
   ("retrovir" "Retrovir" "CHEBI:10110" "zidovudine" "RELATED synonym" ","
    "retrovir" "NCIT:C947" "zidovudine" "synonym" "NCIT:C947" "zidovudine"
    "synonym"))
  ("Reviparin"
   ("reviparin" "Reviparin" "CHEBI:28304" "heparin" "RELATED synonym" ","
    "reviparin" "MESH:C094240" "reviparin" "NM"))
  ("Rhizobium"
   ("rhizobium" "RHIZOBIUM" "NCIT:C86718" "rhizobium" "synonym" "," "rhizobium"
    "NCIT:C86718" "rhizobium" "name"))
  ("Rl"
   ("rl" "RL" "CVCL:1660" "RL" "name" "CHEBI:73815" "Arg-Leu" "RELATED synonym"
    "EFO:0002319" "RL" "name" "HGNC:9957 G" "reelin" "Synonym"
    "XFAM:PF17797 Domain" "RL" "ID" "NCIT:C102800" "RELN" "synonym"))
  ("RpA"
   ("rpa" "RP-A" "HGNC:10289 G" "replication protein A1" "Synonym" "UP:Q58559"
    "Replication factor A" "RecName: Short" "UP:O27438" "Replication factor A"
    "RecName: Short" "NCIT:C104756" "RPA1" "synonym" "," "RPA" "FPLX:RPA" "RPA"
    "name" "GO:0005662" "DNA replication factor A complex" "EXACT synonym"
    "UP:O27438" "Replication factor A" "RecName: Short" "XFAM:PF10134 Family"
    "RPA" "ID" "NCIT:C102857" "recursive partitioning assessment" "synonym"))
  ("SLOs"
   ("slos" "SLOS" "Orphanet:818" "Smith-Lemli-Opitz syndrome" "EXACT synonym"
    "HGNC:2860 G" "7-dehydrocholesterol reductase" "Previous Symbol"))
  ("SaO"
   ("sao" "SAO" "Orphanet:98868" "Southeast Asian ovalocytosis" "EXACT synonym"
    "UP:Q29437" "Primary amine oxidase, liver isozyme" "AltName: Short"))
  ("SacI"
   ("saci" "SACI" "HGNC:21285 G" "adenylate cyclase 10" "Synonym" "NCIT:C39511"
    "cancer therapy and research center" "synonym"))
  ("Sadenosylhomocysteine"
   ("sadenosylhomocysteine" "S-Adenosylhomocysteine" "CHEBI:16680"
    "S-adenosyl-L-homocysteine" "RELATED synonym" "," "S-adenosylhomocysteine"
    "NCIT:C103149" "S-adenosylhomocysteine" "name"))
  ("Salazopyrine"
   ("salazopyrine" "Salazopyrine" "MESH:C028423" "Salazopyrine" "NM"))
  ("Sao"
   ("sao" "SAO" "Orphanet:98868" "Southeast Asian ovalocytosis" "EXACT synonym"
    "UP:Q29437" "Primary amine oxidase, liver isozyme" "AltName: Short"))
  ("Sartorius"
   ("sartorius" "sartorius" "BTO:0001215" "sartorius" "name" "NCIT:C33515"
    "sartorius muscle" "synonym"))
  ("Sevac"
   ("sevac" "SEVA-C" "MESH:C439612"
    "corn starch-co-ethylene vinyl alcohol blend" "SY"))
  ("Shasta" ("shasta" "shasta" "NCIT:C44125" "shasta" "name"))
  ("Shawnee" ("shawnee" "shawnee" "NCIT:C44126" "shawnee" "name"))
  ("Sig"
   ("sig" "SIG" "NCIT:C19782" "surveillance implementation group" "synonym"))
  ("Streptavidinagarose"
   ("streptavidinagarose" "streptavidin-agarose" "MESH:C049538"
    "streptavidin-agarose" "NM"))
  ("Styelin"
   ("styelin" "styelin" "XFAM:PF17562 Family" "styelin" "ID"
    "XFAM:PF17562 Family" "styelin" "DE"))
  ("SuperScript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("Superscript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("Sustiva"
   ("sustiva" "Sustiva" "MESH:C098320" "efavirenz" "SY" "," "sustiva"
    "NCIT:C29027" "efavirenz" "synonym" "NCIT:C29027" "efavirenz" "synonym"))
  ("Sw"
   ("sw" "SW" "CHEBI:141445" "Ser-Trp" "RELATED synonym" "HGNC:11027 G"
    "solute carrier family 4 member 1 (Diego blood group)" "Synonym"
    "NCIT:C105065" "SLC4A1" "synonym" "NCIT:C106573" "swiss webster mouse"
    "synonym"))
  ("Syncephalastrum"
   ("syncephalastrum" "SYNCEPHALASTRUM" "NCIT:C125959" "syncephalastrum"
    "synonym" "," "syncephalastrum" "NCIT:C125959" "syncephalastrum" "name"))
  ("Synvisc" ("synvisc" "Synvisc" "MESH:C049816" "hylan" "SY"))
  ("Tamil" ("tamil" "tamil" "NCIT:C154150" "tamil language" "synonym"))
  ("Temecula" ("temecula" "temecula" "NCIT:C44022" "temecula" "name"))
  ("Teratology" ("teratology" "teratology" "NCIT:C17703" "teratology" "name"))
  ("Terra"
   ("terra" "TERRA" "CHEBI:136721" "telomeric repeat-containing RNA"
    "RELATED synonym" "NCIT:C116964" "telomeric repeat-containing RNA"
    "synonym"))
  ("Thes"
   ("thes" "THES" "HGNC:23639 G" "tetratricopeptide repeat domain 37"
    "Synonym"))
  ("Tlymphocytes"
   ("tlymphocytes" "T-lymphocytes" "NCIT:C23410" "T-lymphocytes" "name"
    "NCIT:C122157" "T-lymphocyte count" "synonym" "NCIT:C122157"
    "T-lymphocyte count" "synonym"))
  ("Torasemide"
   ("torasemide" "torasemide" "CHEBI:9637" "torasemide" "name" "NCIT:C29506"
    "torsemide" "synonym"))
  ("Torula" ("torula" "torula" "EFO:0007229" "cryptococcosis" "EXACT synonym"))
  ("Tractocile"
   ("tractocile" "tractocile" "CHEBI:135899" "atosiban" "RELATED synonym"
    "NCIT:C84815" "atosiban" "synonym"))
  ("Transcutol" ("transcutol" "Transcutol" "MESH:C010111" "carbitol" "SY"))
  ("Tv"
   ("tv" "TV" "CVCL:VU90" "TV" "name" "CHEBI:75193" "tetrazolium violet"
    "RELATED synonym" "NCIT:C17225" "tuvalu" "synonym" "NCIT:C49621"
    "trial visits domain" "synonym" "NCIT:C96983" "television" "synonym"
    "NCIT:C111324" "tidal volume" "synonym" "NCIT:C111324" "tidal volume"
    "synonym" "NCIT:C112910" "treated volume" "synonym"))
  ("Twentyfour"
   ("twentyfour" "twenty-four" "NCIT:C113753" "twenty four" "synonym"))
  ("Univ" ("univ" "UNIV" "NCIT:C48647" "university" "synonym"))
  ("Uvulectomy"
   ("uvulectomy" "uvulectomy" "NCIT:C51746" "excision of uvula" "synonym"))
  ("VPl"
   ("vpl" "VPL" "NCIT:C11554" "asparaginase/Prednisone/Vincristine" "synonym"))
  ("Vacutainer" ("vacutainer" "vacutainer" "NCIT:C63362" "vacutainer" "name"))
  ("Vancomycine"
   ("vancomycine" "vancomycine" "CHEBI:28001" "vancomycin" "RELATED synonym"))
  ("Vers" ("vers" "VERS" "NCIT:C25714" "version" "synonym"))
  ("Vhr"
   ("vhr" "VHR" "HGNC:3069 G" "dual specificity phosphatase 3"
    "Previous Symbol" "UP:P51452 H" "Dual specificity protein phosphatase 3"
    "AltName: Short" "UP:Q9D7X3 M" "Dual specificity protein phosphatase 3"
    "AltName: Short" "UP:Q5RD73" "Dual specificity protein phosphatase 3"
    "AltName: Short" "NCIT:C25856" "dual specificity protein phosphatase 3"
    "synonym" "NCIT:C49418" "DUSP3" "synonym"))
  ("Vic"
   ("vic" "VIC" "UP:P22389 M" "Endothelin-2" "AltName: Short" "UP:P23943"
    "Endothelin-2" "AltName: Short" "NCIT:C9822"
    "ifosfamide/Lomustine/Vinblastine" "synonym"))
  ("Videx" ("videx" "videx" "NCIT:C431" "didanosine" "synonym"))
  ("Vir"
   ("vir" "VIR" "NCIT:C17255" "virgin islands, U.S." "synonym" "NCIT:C17255"
    "virgin islands, U.S." "synonym" "," "vir" "FA:04582" "vir family" "ID"))
  ("Viracept"
   ("viracept" "Viracept" "CHEBI:7497" "nelfinavir mesylate" "RELATED synonym"
    "PC:64143" "Nelfinavir" "Alternative Name" "," "viracept" "NCIT:C1624"
    "nelfinavir mesylate" "synonym"))
  ("Viramune"
   ("viramune" "Viramune" "CHEBI:63613" "nevirapine" "RELATED synonym" ","
    "viramune" "NCIT:C29277" "nevirapine" "synonym"))
  ("Viscum" ("viscum" "viscum" "NCIT:C2703" "mistletoe extract" "synonym"))
  ("Vmax" ("vmax" "vmax" "NCIT:C47822" "vmax" "name"))
  ("WbC"
   ("wbc" "WBC" "EFO:0004308" "leukocyte count" "EXACT synonym" "NCIT:C12529"
    "leukocytes" "synonym" "NCIT:C23463" "leukocytes" "synonym" "NCIT:C51948"
    "leukocyte count" "synonym" "NCIT:C51948" "leukocyte count" "synonym"))
  ("Xt"
   ("xt" "XT" "CVCL:AS08" "XT67E1" "RELATED synonym" "NCIT:C123771"
    "tromelin island" "synonym" "NCIT:C123771" "tromelin island" "synonym"))
  ("XtR"
   ("xtr" "XTR" "NCIT:C123771" "tromelin island" "synonym" "NCIT:C123771"
    "tromelin island" "synonym" "," "xTR" "UP:P18117"
    "Thyroid hormone receptor beta-A" "RecName: Short"))
  ("Yj" ("yj" "YJ" "CVCL:8931" "YJ" "name"))
  ("Zerit" ("zerit" "zerit" "NCIT:C1428" "stavudine" "synonym"))
  ("Zygomycetes"
   ("zygomycetes" "zygomycetes" "NCIT:C77194" "zygomycota" "synonym"))
  ("aPTT"
   ("aptt" "APTT" "NCIT:C38462" "partial thromboplastin time" "synonym" ","
    "aPTT" "NCIT:C38462" "partial thromboplastin time" "synonym"))
  ("aaRS"
   ("aars" "AARS" "HGNC:20 G" "alanyl-tRNA synthetase 1" "Previous Symbol"))
  ("Adolescents"
   ("adolescents" "adolescents" "NCIT:C16266" "adolescents" "name"))
  ("Anguilla"
   ("anguilla" "ANGUILLA" "NCIT:C20133" "anguilla" "synonym" "NCIT:C20133"
    "anguilla" "synonym" "," "anguilla" "NCIT:C20133" "anguilla" "name"))
  ("azB"
   ("azb" "Az-B" "CHEBI:53089"
    "4-bromo-1-hydroxyanthraquinone-2-carboxylic acid" "RELATED synonym"))
  ("bN"
   ("bn" "BN" "CVCL:Y432" "BN" "name" "NCIT:C14395" "BN, rat strain" "synonym"
    "NCIT:C16367" "brunei darussalam" "synonym" "NCIT:C52384" "GRP" "synonym"
    "NCIT:C71350" "bachelor of science in nursing" "synonym" "NCIT:C158203"
    "bonan chinese" "synonym" "NCIT:C158203" "bonan chinese" "synonym" "," "Bn"
    "CHEBI:22744" "benzyl group" "RELATED synonym"))
  ("bVD"
   ("bvd" "BVD" "NCIT:C136261" "bendamustine/Bortezomib/Dexamethasone regimen"
    "synonym"))
  ("cLN"
   ("cln" "CLN" "CVCL:3663" "CLN" "name" "CHEBI:61160"
    "conjugated linolenic acid" "RELATED synonym"))
  ("cSMAC"
   ("csmac" "c-SMAC" "GO:0001772" "immunological synapse" "NARROW synonym"))
  ("cTLI" ("ctli" "CTL-I" "CVCL:VN79" "HPB-CTL-I" "RELATED synonym"))
  ("dFdC" ("dfdc" "dFdC" "NCIT:C66876" "gemcitabine" "synonym"))
  ("dN"
   ("dn" "DN" "EFO:0007834" "liver dysplastic nodule" "EXACT synonym"
    "NCIT:C7656" "liver dysplastic nodule" "synonym" "NCIT:C45774"
    "DN term type" "synonym" "," "dN" "CHEBI:33793"
    "canonical deoxyribonucleoside residue" "RELATED synonym"))
  ("dThd" ("dthd" "dThd" "CHEBI:17748" "thymidine" "RELATED synonym"))
  ("dUrd" ("durd" "dURD" "NCIT:C120006" "deoxyuridine" "synonym"))
  ("SUVmax"
   ("suvmax" "SUVmax" "NCIT:C95012" "standardized uptake value maximum"
    "synonym"))
  ("eE" ("ee" "EE" "NCIT:C16562" "estonia" "synonym"))
  ("eQTL"
   ("eqtl" "eQTL" "NCIT:C113415" "expression quantitative trait locus"
    "synonym"))
  ("hNOS" ("hnos" "HNOS" "CVCL:M838" "HNOS" "name"))
  ("hTK"
   ("htk" "HTK" "HGNC:3395 G" "EPH receptor B4" "Previous Symbol"
    "NCIT:C113831" "EPHB4" "synonym" "," "HTK-" "CVCL:2522" "HTK-" "name" ","
    "HTk" "CVCL:9W65" "HTk" "name"))
  ("iTRAQ"
   ("itraq" "iTRAQ" "NCIT:C161867"
    "isobaric tags for relative and absolute quantitation" "synonym"))
  ("Imager"
   ("imager" "imager" "NCIT:C49997" "imager device" "synonym" "NCIT:C49997"
    "imager device" "synonym"))
  ("TprC" ("tprc" "TPRC" "NCIT:C70995" "PRCC" "synonym"))
  ("kBq"
   ("kbq" "kBq" "NCIT:C70511" "kilobecquerel" "synonym" "NCIT:C70511"
    "kilobecquerel" "synonym" "NCIT:C70511" "kilobecquerel" "synonym"
    "NCIT:C70511" "kilobecquerel" "synonym"))
  ("kPa"
   ("kpa" "kPa" "NCIT:C67284" "kilopascal" "synonym" "NCIT:C67284" "kilopascal"
    "synonym" "NCIT:C67284" "kilopascal" "synonym"))
  ("kkP"
   ("kkp" "KKP" "CVCL:WH05" "KKP" "name" "," "KKp" "CVCL:HF90" "KK-p" "name"))
  ("lB"
   ("lb" "LB" "CVCL:E751" "LB" "name" "NCIT:C16784" "lebanon" "synonym"
    "NCIT:C48531" "pound" "synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C49592" "laboratory data domain" "synonym" "NCIT:C158212"
    "lhoba chinese" "synonym" "NCIT:C158212" "lhoba chinese" "synonym" "," "lb"
    "UO:0010034" "pound" "EXACT synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C48531" "pound" "synonym"))
  ("lgA"
   ("lga" "LGA" "HGNC:29570 G" "glutaminase 2" "Synonym" "UP:Q571F8 M"
    "Glutaminase liver isoform, mitochondrial" "AltName: Short" "NCIT:C49388"
    "GLS2" "synonym" "NCIT:C87092" "large for gestational age" "synonym"))
  ("mecD"
   ("mecd" "MECD" "Orphanet:98954" "Meesmann corneal dystrophy"
    "EXACT synonym"))
  ("Nanopore" ("nanopore" "nanopore" "NCIT:C62343" "nanopore" "name"))
  ("ofE" ("ofe" "OFE" "NCIT:C84931" "TNFRSF11A" "synonym"))
  ("pCD"
   ("pcd" "PCD" "Orphanet:158" "Systemic primary carnitine deficiency"
    "EXACT synonym" "Orphanet:244" "Primary ciliary dyskinesia" "EXACT synonym"
    "HGNC:30492 G" "dynein axonemal assembly factor 3" "Synonym" "HGNC:2950 G"
    "dynein axonemal heavy chain 5" "Synonym" "HGNC:2954 G"
    "dynein axonemal intermediate chain 1" "Synonym" "HGNC:8646 G"
    "pterin-4 alpha-carbinolamine dehydratase 1" "Synonym" "UP:P61457 H"
    "Pterin-4-alpha-carbinolamine dehydratase" "AltName: Short" "UP:P61458 M"
    "Pterin-4-alpha-carbinolamine dehydratase" "AltName: Short" "NCIT:C17557"
    "apoptosis" "synonym" "NCIT:C136280"
    "pomalidomide/Cyclophosphamide/Dexamethasone regimen" "synonym"))
  ("pK"
   ("pk" "PK" "CVCL:AZ81" "PK" "name" "CHEBI:74792" "Pro-Lys" "RELATED synonym"
    "UP:O65595 C" "Probable pyruvate kinase, cytosolic isozyme"
    "RecName: Short" "XFAM:PF00224 Family" "PK" "ID" "NCIT:C15299"
    "pharmacokinetics" "synonym" "NCIT:C15299" "pharmacokinetics" "synonym"
    "NCIT:C16949" "pakistan" "synonym" "NCIT:C49189" "primary key" "synonym"
    "NCIT:C129392" "pyruvate kinase" "synonym" "NCIT:C156470"
    "pyruvate kinase measurement" "synonym" "," "Pk" "CHEBI:60948"
    "alpha-D-Gal-(1->4)-beta-D-Gal-(1->4)-D-Glc" "RELATED synonym"))
  ("pUC" ("puc" "PUC" "NCIT:C14632" "PUC mouse" "synonym"))
  ("Phenothiazines"
   ("phenothiazines" "phenothiazines" "CHEBI:38093" "phenothiazines" "name"))
  ("Prothipendyl"
   ("prothipendyl" "PROTHIPENDYL" "NCIT:C84124" "prothipendyl" "synonym" ","
    "prothipendyl" "CHEBI:135182" "prothipendyl" "name" "MESH:C069248"
    "prothipendyl" "NM" "NCIT:C84124" "prothipendyl" "name"))
  ("rI"
   ("ri" "RI" "CHEBI:73814" "Arg-Ile" "RELATED synonym" "CHEBI:8753" "RI"
    "name" "EFO:0004008" "recombinant inbred strain" "EXACT synonym"
    "NCIT:C43464" "rhode island" "synonym"))
  ("rR"
   ("rr" "RR" "CVCL:UI85" "RR" "name" "CHEBI:73811" "Arg-Arg" "RELATED synonym"
    "NCIT:C14812" "RR mouse" "synonym" "," "Rr" "UP:P51591" "Rubrerythrin"
    "RecName: Short" "UP:P24931" "Rubrerythrin" "RecName: Short" "UP:Q9AGG3"
    "Rubrerythrin" "RecName: Short"))
  ("rRs"
   ("rrs" "RRS" "Orphanet:1507" "Autosomal recessive Robinow syndrome"
    "EXACT synonym" "NCIT:C122185" "total respiratory system resistance"
    "synonym"))
  ("roTag"
   ("rotag" "ROTAG" "NCIT:C154827" "rotavirus antigen measurement" "synonym"))
  ("sQr"
   ("sqr" "SQR" "HGNC:20390 G" "sulfide quinone oxidoreductase" "Synonym"
    "UP:Q7ZAG8" "Sulfide-quinone reductase" "RecName: Short" "UP:B7JBP8"
    "Sulfide-quinone reductase" "RecName: Short" "UP:O67931"
    "Sulfide-quinone reductase" "RecName: Short" "NCIT:C112049"
    "succinate dehydrogenase" "synonym"))
  ("Ultrasonography"
   ("ultrasonography" "ultrasonography" "NCIT:C17230" "ultrasonography"
    "name")))
)

(defparameter *all-bio-ent-drum-terms* 
'(("A3C"
   ("a3c" "A3C" "UP:Q9NRW3 H" "DNA dC->dU-editing enzyme APOBEC-3C"
    "RecName: Short"))
  ("A3F"
   ("a3f" "A3F" "UP:Q8IUX4 H" "DNA dC->dU-editing enzyme APOBEC-3F"
    "AltName: Short" "NCIT:C95274" "DNA dC to dU-editing enzyme APOBEC-3F"
    "synonym"))
  ("A3G"
   ("a3g" "A3G" "UP:Q9HC16 H" "DNA dC->dU-editing enzyme APOBEC-3G"
    "AltName: Short" "NCIT:C68589" "APOBEC3G" "synonym" "NCIT:C68591"
    "DNA dC to dU-editing enzyme APOBEC-3G" "synonym"))
  ("A3H"
   ("a3h" "A3H" "UP:Q6NTF7 H" "DNA dC->dU-editing enzyme APOBEC-3H"
    "AltName: Short"))
  ("AB65" ("ab65" "AB-65" "MESH:C008233" "AB 65" "SY"))
  ("AC2O" ("ac2o" "Ac2O" "CHEBI:36610" "acetic anhydride" "RELATED synonym"))
  ("ADAM29"
   ("adam29" "ADAM29" "HGNC:207 G" "ADAM metallopeptidase domain 29"
    "Approved Symbol"))
  ("AM9"
   ("am9" "AM9" "CHEBI:140152" "cyclosporin A metabolite M1"
    "RELATED synonym"))
  ("AMD070"
   ("amd070" "AMD-070" "MESH:C494414"
    "N'-((1H-benzo(d)imidazol-2-yl)methyl)-N'-(5,6,7,8-tetrahydroquinolin-8-yl)butane-1,4-diamine"
    "SY" "NCIT:C126660" "mavorixafor" "synonym" "," "AMD070" "MESH:C494414"
    "N'-((1H-benzo(d)imidazol-2-yl)methyl)-N'-(5,6,7,8-tetrahydroquinolin-8-yl)butane-1,4-diamine"
    "SY"))
  ("AMG487"
   ("amg487" "AMG-487" "MESH:C541505"
    "N-(1-(3-(4-ethoxyphenyl)-4-oxo-3,4-dihydropyrido(2,3-d)pyrimidin-2-yl)ethyl)-N-pyridin-3-ylmethyl-2-(4-trifluoromethoxyphenyl)acetamide"
    "SY" "," "AMG487" "MESH:C541505"
    "N-(1-(3-(4-ethoxyphenyl)-4-oxo-3,4-dihydropyrido(2,3-d)pyrimidin-2-yl)ethyl)-N-pyridin-3-ylmethyl-2-(4-trifluoromethoxyphenyl)acetamide"
    "SY"))
  ("APEX2"
   ("apex2" "APEX2" "HGNC:17889 G"
    "apurinic/apyrimidinic endodeoxyribonuclease 2" "Approved Symbol"
    "NCIT:C50978" "APEX2" "name"))
  ("ARC239"
   ("arc239" "AR-C239" "MESH:C032994" "AR-C239" "NM" "," "ARC-239"
    "MESH:C032994" "AR-C239" "SY"))
  ("AREc32" ("arec32" "AREc32" "CVCL:1D32" "AREc32" "name"))
  ("Affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("Aligned" ("aligned" "aligned" "NCIT:C49033" "alignment" "synonym"))
  ("Arg1"
   ("arg1" "ARG-1" "UP:Q9NH76" "Hemerythrin-like protein" "AltName: Full" ","
    "ARG1" "HGNC:663 G" "arginase 1" "Approved Symbol" "HGNC:19168 G"
    "tubulointerstitial nephritis antigen like 1" "Synonym" "NCIT:C103928"
    "ARG1" "name" "NCIT:C158392" "TINAGL1" "synonym"))
  ("B2GP1" ("b2gp1" "B2GP1" "NCIT:C142154" "APOH" "synonym"))
  ("B4GALNT4"
   ("b4galnt4" "B4GALNT4" "HGNC:26315 G"
    "beta-1,4-N-acetyl-galactosaminyltransferase 4" "Approved Symbol"))
  ("BHK21" ("bhk21" "BHK21" "CVCL:1914" "BHK-21" "name"))
  ("BPIFB1"
   ("bpifb1" "BPIFB1" "HGNC:16108 G" "BPI fold containing family B member 1"
    "Approved Symbol"))
  ("BPIFB2"
   ("bpifb2" "BPIFB2" "HGNC:16177 G" "BPI fold containing family B member 2"
    "Approved Symbol"))
  ("BPIFB6"
   ("bpifb6" "BPIFB6" "HGNC:16504 G" "BPI fold containing family B member 6"
    "Approved Symbol"))
  ("BRL44408" ("brl44408" "BRL-44408" "MESH:C072125" "BRL 44408" "SY"))
  ("BTNL2"
   ("btnl2" "BTNL2" "HGNC:1142 G" "butyrophilin like 2" "Approved Symbol"
    "NCIT:C113158" "BTNL2" "name"))
  ("BW373U86"
   ("bw373u86" "BW-373U86" "MESH:C083877" "BW 373U86" "SY" "," "BW373U86"
    "MESH:C083877" "BW 373U86" "SY"))
  ("C57BL6" ("c57bl6" "C57BL6" "EFO:0004472" "C57BL/6" "EXACT synonym"))
  ("C57Bl6" ("c57bl6" "C57BL6" "EFO:0004472" "C57BL/6" "EXACT synonym"))
  ("CBD1"
   ("cbd1" "cBD-1" "UP:P83943" "Beta-defensin 1" "AltName: Full" "," "cBD1"
    "UP:P60023" "Beta-defensin 1" "AltName: Full"))
  ("CCDC54"
   ("ccdc54" "CCDC54" "HGNC:30703 G" "coiled-coil domain containing 54"
    "Approved Symbol"))
  ("CD141"
   ("cd141" "CD141" "HGNC:11784 G" "thrombomodulin" "Synonym" "NCIT:C101379"
    "THBD" "synonym" "NCIT:C101380" "thrombomodulin" "synonym"))
  ("CD4positive"
   ("cd4positive" "CD4-positive" "NCIT:C153220" "CD4 positive" "synonym"))
  ("CD99L2"
   ("cd99l2" "CD99L2" "HGNC:18237 G" "CD99 molecule like 2" "Approved Symbol"
    "XFAM:PF12301 Family" "CD99L2" "ID"))
  ("CDRH3"
   ("cdrh3" "CDR-H3" "NCIT:C123154"
    "immunoglobulin heavy chain complementarity determining region 3"
    "synonym"))
  ("CGB1"
   ("cgb1" "CGB1" "HGNC:16721 G" "chorionic gonadotropin subunit beta 1"
    "Approved Symbol" "NCIT:C17981" "G2/Mitotic-specific cyclin-B1" "synonym"
    "NCIT:C49516" "CCNB1" "synonym"))
  ("CGB2"
   ("cgb2" "CGB2" "HGNC:16722 G" "chorionic gonadotropin subunit beta 2"
    "Approved Symbol"))
  ("CH13" ("ch13" "Ch-13" "CVCL:8951" "Ch13" "name"))
  ("CL01" ("cl01" "CL01" "CVCL:0082" "CL-01" "name" "CVCL:C864" "CL01" "name"))
  ("CM12" ("cm12" "CM12" "CVCL:Y616" "CM-12" "name"))
  ("Ch4" ("ch4" "CH4" "CHEBI:16183" "methane" "RELATED synonym"))
  ("Chem7" ("chem7" "Chem-7" "CVCL:8179" "Chem 7" "RELATED synonym"))
  ("Commercial"
   ("commercial" "commercial" "NCIT:C96109" "commercial lot" "synonym"
    "NCIT:C133990" "commercial batch" "synonym"))
  ("CuSO4"
   ("cuso4" "CuSO4" "CHEBI:23414" "copper(II) sulfate" "RELATED synonym"))
  ("D4T"
   ("d4t" "d4T" "CHEBI:63581" "stavudine" "RELATED synonym" "NCIT:C1428"
    "stavudine" "synonym"))
  ("DC1"
   ("dc1" "DC1" "CVCL:6B02" "DC1" "name" "XFAM:PF03107 Domain" "C1 2" "PI"))
  ("DENV1" ("denv1" "DENV-1" "NCIT:C112266" "dengue virus 1" "synonym"))
  ("DENV3" ("denv3" "DENV-3" "NCIT:C112268" "dengue virus 3" "synonym"))
  ("DENV4" ("denv4" "DENV-4" "NCIT:C112269" "dengue virus 4" "synonym"))
  ("DRB4" ("drb4" "DRB4" "NCIT:C71262" "HLA-DRB4" "synonym"))
  ("E2A"
   ("e2a" "E2A" "HGNC:11633 G" "transcription factor 3" "Synonym" "NCIT:C30079"
    "transcription factor E2-alpha" "synonym" "NCIT:C53104" "TCF3" "synonym"))
  ("EC50" ("ec50" "EC50" "CVCL:IR37" "EC-50" "name"))
  ("ETH"
   ("eth" "ETH" "CHEBI:4885" "ethionamide" "RELATED synonym" "NCIT:C16563"
    "ethiopia" "synonym" "NCIT:C16563" "ethiopia" "synonym" "NCIT:C159038"
    "GDC ethnicity terminology" "synonym"))
  ("EVD68" ("evd68" "EV-D68" "NCIT:C125639" "enterovirus D68" "synonym"))
  ("FFU" ("ffu" "FFU" "NCIT:C75303" "focus forming unit" "synonym"))
  ("FIO2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("GP64"
   ("gp64" "GP64" "UP:P18139 H" "65 kDa phosphoprotein" "AltName: Full" ","
    "Gp64" "UP:O64256" "Gene 64 protein" "AltName: Full" "UP:Q05277"
    "Gene 64 protein" "AltName: Full" "," "gp64" "UP:P15076"
    "Terminal DNA protecting protein" "AltName: Short" "UP:P17501"
    "Major envelope glycoprotein" "AltName: Full" "UP:P41722"
    "Major envelope glycoprotein" "AltName: Full" "UP:P13625"
    "Major envelope glycoprotein" "AltName: Full"))
  ("GQ1b"
   ("gq1b" "GQ1b" "CHEBI:27515"
    "alpha-Neu5Ac-(2->8)-alpha-Neu5Ac-(2->3)-beta-Gal-D-(1->3)-beta-D-GalNAc-(1->4)-[alpha-Neu5Ac-(2->8)-alpha-Neu5Ac-(2->3)]-beta-D-Gal-(1->4)-beta-D-Glc-(1<->1')-Cer"
    "RELATED synonym"))
  ("GSK983"
   ("gsk983" "GSK983" "MESH:C541365"
    "N-((1R)-6-chloro-2,3,4,9-tetrahydro-1H-carbazol-1-yl)-2-pyridinecarboxamide"
    "SY"))
  ("GW873140" ("gw873140" "GW873140" "MESH:C499671" "aplaviroc" "SY"))
  ("Ga1"
   ("ga1" "GA1" "CHEBI:27717" "gibberellin A1" "RELATED synonym" "CHEBI:27938"
    "beta-D-Gal-(1->3)-beta-D-GalNAc-(1->4)-beta-D-Gal-(1->4)-beta-D-Glc-(1<->1')-Cer"
    "RELATED synonym" "Orphanet:25" "Glutaryl-CoA dehydrogenase deficiency"
    "EXACT synonym"))
  ("Giga"
   ("giga" "giga" "UO:0000292" "giga" "name" "NCIT:C67896" "giga" "name" ","
    "giga-" "NCIT:C67896" "giga" "synonym"))
  ("Golgin97"
   ("golgin97" "golgin-97" "HGNC:4424 G" "golgin A1" "Synonym" "UP:Q92805 H"
    "Golgin subfamily A member 1" "AltName: Full" "UP:Q9CW79 M"
    "Golgin subfamily A member 1" "AltName: Full"))
  ("Gβγ" ("gβγ" "G-β-γ" "NCIT:C19274" "G beta-gamma" "synonym"))
  ("H13"
   ("h13" "H1-3" "HGNC:4717 G" "H1.3 linker histone, cluster member"
    "Approved Symbol" "NCIT:C162862" "H1-3" "name" "NCIT:C162863"
    "histone H1.3" "synonym" "," "H13" "CVCL:9774" "WA13" "RELATED synonym"
    "HGNC:16435 G" "histocompatibility minor 13" "Synonym" "NCIT:C20259" "GE13"
    "synonym" "NCIT:C20311" "WA13" "synonym"))
  ("HA3"
   ("ha3" "HA-3" "HGNC:371 G" "A-kinase anchoring protein 13" "Synonym"
    "NCIT:C52455" "AKAP13" "synonym" "," "HA3" "CVCL:Z980" "CSIRO-BCIRL-HA3"
    "RELATED synonym" "UP:P46085" "Hemagglutinin components HA-70 type C"
    "AltName: Full" "UP:Q9LBR5" "Hemagglutinin component HA-70 type D"
    "AltName: Full" "XFAM:PF16495 Family" "SWIRM-assoc 1" "PI"))
  ("HHV1"
   ("hhv1" "HHV-1" "NCIT:C14311" "human herpesvirus 1" "synonym" "NCIT:C14311"
    "human herpesvirus 1" "synonym" "," "HHV1" "NCIT:C14311"
    "human herpesvirus 1" "synonym"))
  ("HHV3"
   ("hhv3" "HHV-3" "NCIT:C71091" "varicella zoster virus" "synonym"
    "NCIT:C71091" "varicella zoster virus" "synonym" "," "HHV3" "NCIT:C71091"
    "varicella zoster virus" "synonym"))
  ("HHV4"
   ("hhv4" "HHV-4" "NCIT:C14204" "epstein-barr virus" "synonym" "NCIT:C14204"
    "epstein-barr virus" "synonym"))
  ("HHV7" ("hhv7" "HHV-7" "NCIT:C112315" "human herpesvirus 7" "synonym"))
  ("HIV1"
   ("hiv1" "HIV-1" "NCIT:C14220" "human immunodeficiency virus 1" "synonym"
    "NCIT:C14220" "human immunodeficiency virus 1" "synonym"))
  ("HL7" ("hl7" "HL7" "NCIT:C80485" "health level seven" "synonym"))
  ("HPIV1"
   ("hpiv1" "HPIV-1" "NCIT:C14254" "human parainfluenza virus 1" "synonym"
    "NCIT:C14254" "human parainfluenza virus 1" "synonym"))
  ("HbA1C"
   ("hba1c" "HBA1C" "NCIT:C64849" "glycosylated hemoglobin measurement"
    "synonym"))
  ("HbA1c"
   ("hba1c" "HBA1C" "NCIT:C64849" "glycosylated hemoglobin measurement"
    "synonym"))
  ("Hba1C"
   ("hba1c" "HBA1C" "NCIT:C64849" "glycosylated hemoglobin measurement"
    "synonym"))
  ("Hispanic"
   ("hispanic" "Hispanic" "EFO:0003166" "Latino" "EXACT synonym" "EFO:0003169"
    "Hispanic" "name" "," "hispanic" "NCIT:C17459" "hispanic or latino"
    "synonym"))
  ("Hoechst33342"
   ("hoechst33342" "Hoechst33342" "MESH:C017807"
    "bisbenzimide ethoxide trihydrochloride" "SY"))
  ("Hospital"
   ("hospital" "HOSPITAL" "NCIT:C16696" "hospital" "synonym" "NCIT:C16696"
    "hospital" "synonym" "," "hospital" "NCIT:C16696" "hospital" "name"))
  ("Huh7"
   ("huh7" "HuH-7" "CVCL:0336" "Huh-7" "name" "," "Huh-7" "EFO:0005384" "HuH-7"
    "name" "," "Huh7" "HGNC:30049 R" "MIR7-3 host gene" "Synonym"))
  ("ICGN" ("icgn" "ICGN" "NCIT:C14455" "ICGN mouse" "synonym"))
  ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
  ("IFI27L2"
   ("ifi27l2" "IFI27L2" "HGNC:19753 G"
    "interferon alpha inducible protein 27 like 2" "Approved Symbol"))
  ("IFITM10"
   ("ifitm10" "IFITM10" "HGNC:40022 G"
    "interferon induced transmembrane protein 10" "Approved Symbol"))
  ("IIA1"
   ("iia1" "IIA-1" "CVCL:0J27" "A20.IIA" "RELATED synonym" "," "IIA1"
    "NCIT:C139745" "stage IIA1 cervical cancer AJCC v8" "synonym"))
  ("IIA2"
   ("iia2" "IIA2" "NCIT:C139746" "stage IIA2 cervical cancer AJCC v8"
    "synonym"))
  ("IRDye800" ("irdye800" "IRDye800" "MESH:C427728" "IRDye800" "NM"))
  ("Ifnl2"
   ("ifnl2" "IFNL2" "HGNC:18364 G" "interferon lambda 2" "Approved Symbol"
    "NCIT:C104348" "IFNL2" "name" "NCIT:C104349" "interferon lambda-2"
    "synonym"))
  ("IgG2"
   ("igg2" "IGG2" "NCIT:C122128" "immunoglobulin G subclass 2 measurement"
    "synonym" "," "IgG2" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG2b"
   ("igg2b" "IgG2b" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG2c"
   ("igg2c" "IgG2c" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG3"
   ("igg3" "IGG3" "NCIT:C122129" "immunoglobulin G subclass 3 measurement"
    "synonym" "," "IgG3" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("Info" ("info" "info" "NCIT:C48191" "information" "synonym"))
  ("JS1"
   ("js1" "JS-1" "MESH:C072665"
    "2-propyl-5-(3,4,5-trimethoxyphenyl)tetrahydrofuran" "SY"))
  ("Journal" ("journal" "journal" "NCIT:C40976" "journal" "name"))
  ("K43" ("k43" "K43" "CVCL:IZ95" "BJAB-K43" "RELATED synonym"))
  ("K9CATH"
   ("k9cath" "K9CATH" "MESH:C070646" "CAP18 lipopolysaccharide-binding protein"
    "SY"))
  ("KIAA1161"
   ("kiaa1161" "KIAA1161" "HGNC:19918 G"
    "myogenesis regulating glycosidase (putative)" "Previous Symbol"
    "HGNC:19918 G" "myogenesis regulating glycosidase (putative)"
    "Previous Name"))
  ("Ko143"
   ("ko143" "Ko-143" "MESH:C541506"
    "3-(6-isobutyl-9-methoxy-1,4-dioxo-1,2,3,4,6,7,12,12a-octahydropyrazino(1',2'-1,6)pyrido(3,4-b)indol-3-yl)propionic acid tert-butyl ester"
    "SY"))
  ("LC50"
   ("lc50" "LC-50" "NCIT:C16788" "LD-50" "synonym" "," "LC50" "NCIT:C16788"
    "LD-50" "synonym"))
  ("LD50"
   ("ld50" "LD-50" "NCIT:C16788" "LD-50" "name" "," "LD50" "NCIT:C16788"
    "LD-50" "synonym"))
  ("LOINC"
   ("loinc" "LOINC" "NCIT:C49476"
    "logical observation identifiers names and codes" "synonym" "NCIT:C49476"
    "logical observation identifiers names and codes" "synonym" "NCIT:C82502"
    "LOINC code" "synonym"))
  ("LTab"
   ("ltab" "LTAB" "CHEBI:282662" "dodecyltrimethylammonium bromide"
    "RELATED synonym"))
  ("LY255582"
   ("ly255582" "LY-255582" "MESH:C070736" "LY 243670" "SY" "," "LY255582"
    "MESH:C070736" "LY 243670" "SY"))
  ("LY6D"
   ("ly6d" "LY6-D" "HGNC:13935 G" "lymphocyte antigen 6 family member G6D"
    "Synonym" "," "LY6D" "HGNC:13348 G" "lymphocyte antigen 6 family member D"
    "Approved Symbol" "," "Ly-6D" "UP:Q148C3" "Lymphocyte antigen 6D"
    "RecName: Short" "UP:Q14210 H" "Lymphocyte antigen 6D" "RecName: Short"
    "UP:P35459 M" "Lymphocyte antigen 6D" "RecName: Short" "," "Ly6-D"
    "HGNC:13935 G" "lymphocyte antigen 6 family member G6D" "Synonym"))
  ("LY6E"
   ("ly6e" "LY6E" "HGNC:6727 G" "lymphocyte antigen 6 family member E"
    "Approved Symbol" "NCIT:C26333" "lymphocyte antigen 6E" "synonym"
    "NCIT:C51550" "LY6E" "name" "," "Ly-6E" "UP:Q90986" "Lymphocyte antigen 6E"
    "RecName: Short" "UP:Q16553 H" "Lymphocyte antigen 6E" "RecName: Short"
    "UP:Q64253 M" "Lymphocyte antigen 6E" "RecName: Short" "NCIT:C26333"
    "lymphocyte antigen 6E" "synonym"))
  ("Latino" ("latino" "Latino" "EFO:0003166" "Latino" "name"))
  ("Leg1"
   ("leg1" "LEG1" "HGNC:20960 G" "chromosome 6 open reading frame 58" "Synonym"
    "FA:04524" "LEG1 family" "ID" "," "leg1" "XFAM:PF05612 Family" "leg1" "ID"
    "XFAM:PF05612 Family" "leg1" "DE"))
  ("Life"
   ("life" "LIFE" "NCIT:C20203" "laser-induced fluorescence endoscopy"
    "synonym" "," "life" "NCIT:C142142" "life" "name"))
  ("M1b" ("m1b" "M1b" "NCIT:C48702" "M1b stage finding" "synonym"))
  ("MAB21L1"
   ("mab21l1" "MAB21L1" "HGNC:6757 G" "mab-21 like 1" "Approved Symbol"))
  ("MAB21L3"
   ("mab21l3" "MAB21L3" "HGNC:26787 G" "mab-21 like 3" "Approved Symbol"))
  ("MB21D2"
   ("mb21d2" "MB21D2" "HGNC:30438 G" "Mab-21 domain containing 2"
    "Approved Symbol" "NCIT:C132171" "MB21D2" "name"))
  ("MEGA4"
   ("mega4" "MeGA4" "CHEBI:73252" "gibberellin A4 methyl ester"
    "RELATED synonym"))
  ("MF59" ("mf59" "MF59" "MESH:C089950" "MF59 oil emulsion" "SY"))
  ("Methodology"
   ("methodology" "methodology" "NCIT:C86572" "methodology" "name"))
  ("MinION"
   ("minion" "MINION" "HGNC:52391 G" "myomixer, myoblast fusion factor"
    "Synonym"))
  ("Mount"
   ("mount" "mount" "NCIT:C50079" "mount device" "synonym" "NCIT:C50079"
    "mount device" "synonym"))
  ("N100" ("n100" "N-100" "UP:P13708" "Sucrose synthase" "AltName: Short"))
  ("NFκβ" ("nfκβ" "NF-κβ" "FPLX:NFkappaB" "NFkappaB" "EXACT synonym"))
  ("NG4" ("ng4" "NG-4" "UP:P40141" "Protein new-glue 4" "RecName: Short"))
  ("NKX2.3" ("nkx2.3" "NKX2.3" "HGNC:7836 G" "NK2 homeobox 3" "Synonym"))
  ("NKX22" ("nkx22" "NKX2-2" "HGNC:7835 G" "NK2 homeobox 2" "Approved Symbol"))
  ("Na2CO3"
   ("na2co3" "Na2CO3" "CHEBI:29377" "sodium carbonate" "RELATED synonym"))
  ("NaBH4"
   ("nabh4" "NaBH4" "CHEBI:50985" "sodium borohydride" "RELATED synonym"))
  ("Neu5Gc"
   ("neu5gc" "Neu5Gc" "CHEBI:62084" "N-glycoloyl-beta-neuraminic acid"
    "RELATED synonym"))
  ("Neuro2A" ("neuro2a" "NEURO-2A" "CVCL:0470" "Neuro-2a" "name"))
  ("Neuro2a" ("neuro2a" "NEURO-2A" "CVCL:0470" "Neuro-2a" "name"))
  ("Nsp16" ("nsp16" "NSP16" "XFAM:PF06460 Domain" "NSP16" "ID"))
  ("OD260" ("od260" "OD260" "NCIT:C48169" "absorbance at 260nm" "synonym"))
  ("ORF4a"
   ("orf4a" "ORF4a" "UP:K9N4V0 H" "Non-structural protein ORF4a"
    "RecName: Short"))
  ("ORF7"
   ("orf7" "ORF7" "UP:P21290" "Protein ADP-ribose pyrophosphatase ORF38"
    "AltName: Full" "UP:etc" "" "fake" "," "orf7" "UP:Q4L2X1"
    "DegV domain-containing protein" "AltName: Full"))
  ("Oasl1"
   ("oasl1" "OASL1" "HGNC:8090 G" "2'-5'-oligoadenylate synthetase like"
    "Synonym"))
  ("P1A"
   ("p1a" "P1-A" "UP:O15231 H" "Zinc finger protein 185" "AltName: Full"
    "UP:Q62394 M" "Zinc finger protein 185" "AltName: Full" "," "P1A"
    "UP:P05318" "60S acidic ribosomal protein P1-alpha" "AltName: Short" ","
    "P1a" "UP:Q9QPN4" "Movement protein" "AltName: Full"))
  ("P2Y2R" ("p2y2r" "P2Y2R" "NCIT:C112487" "P2RY2" "synonym"))
  ("PCO2"
   ("pco2" "PCO2" "NCIT:C82625"
    "partial pressure of carbon dioxide measurement" "synonym"))
  ("PDE12"
   ("pde12" "PDE12" "HGNC:25386 G" "phosphodiesterase 12" "Approved Symbol"))
  ("PK15" ("pk15" "PK15" "CVCL:2160" "PK-15" "name"))
  ("PLEKHA8"
   ("plekha8" "PLEKHA8" "HGNC:30037 G"
    "pleckstrin homology domain containing A8" "Approved Symbol"))
  ("PLX5622" ("plx5622" "PLX5622" "MESH:C000630231" "PLX5622" "NM"))
  ("PRX6" ("prx6" "prx6" "FA:00130" "prx6 subfamily" "ID"))
  ("PSG8"
   ("psg8" "PSG8" "HGNC:9525 G" "pregnancy specific beta-1-glycoprotein 8"
    "Approved Symbol"))
  ("PT3"
   ("pt3" "pT3" "NCIT:C48768" "pT3 stage finding" "synonym" "NCIT:C88874"
    "lung cancer pT3 TNM finding v7" "synonym" "NCIT:C133208"
    "cutaneous squamous cell carcinoma of the head and neck pT3 TNM finding v8"
    "synonym" "NCIT:C133381"
    "esophagus and esophagogastric junction cancer pT3 TNM finding v8"
    "synonym" "NCIT:C133613" "gastric cancer pT3 TNM finding v8" "synonym"
    "NCIT:C134477" "hepatocellular carcinoma pT3 TNM finding v8" "synonym"
    "NCIT:C134597" "intrahepatic bile duct cancer pT3 TNM finding v8" "synonym"
    "NCIT:C134729" "perihilar bile duct cancer pT3 TNM finding v8" "synonym"
    "NCIT:C134802" "distal bile duct cancer pT3 TNM finding v8" "synonym"
    "NCIT:C134894" "exocrine pancreatic cancer pT3 TNM finding v8" "synonym"
    "NCIT:C136947" "cutaneous melanoma pT3 TNM finding v8" "synonym"
    "NCIT:C139721" "cervical cancer pT3 TNM finding v8" "synonym"
    "NCIT:C140153" "prostate cancer pT3 TNM finding v8" "synonym"
    "NCIT:C140291" "kidney cancer pT3 TNM finding v8" "synonym" "NCIT:C140401"
    "bladder cancer pT3 TNM finding v8" "synonym" "NCIT:C140641"
    "choroidal and ciliary body melanoma pT3 TNM finding v8" "synonym"
    "NCIT:C140919"
    "papillary, follicular, hurthle cell, poorly differentiated, and anaplastic thyroid carcinoma pT3 TNM finding v8"
    "synonym"))
  ("PTB3"
   ("ptb3" "PTB3" "HGNC:9583 G" "polypyrimidine tract binding protein 1"
    "Synonym"))
  ("PaO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("Party"
   ("party" "PARTY" "NCIT:C117052" "accountable party" "synonym" "," "party"
    "NCIT:C41107" "party" "name"))
  ("Port"
   ("port" "port" "NCIT:C50111" "port device" "synonym" "NCIT:C50111"
    "port device" "synonym" "NCIT:C50111" "port device" "synonym" "NCIT:C63634"
    "data port" "synonym"))
  ("QT35" ("qt35" "QT-35" "CVCL:4280" "QT35" "name"))
  ("RBM1"
   ("rbm1" "RBM-1" "CVCL:VZ67" "RBM-1" "name" "," "RBM1" "HGNC:33238 G"
    "kynurenine aminotransferase 3" "Synonym" "HGNC:9912 G"
    "RNA binding motif protein Y-linked family 1 member A1" "Previous Symbol"))
  ("RBM2"
   ("rbm2" "RBM-2" "CVCL:VZ68" "RBM-2" "name" "," "RBM2" "CVCL:WL03" "RBM2"
    "name" "HGNC:9912 G"
    "RNA binding motif protein Y-linked family 1 member A1" "Previous Symbol"))
  ("RNY1"
   ("rny1" "RNY1" "HGNC:10242 R" "RNA, Ro60-associated Y1" "Approved Symbol"))
  ("RTP3"
   ("rtp3" "RTP3" "HGNC:15572 G" "receptor transporter protein 3"
    "Approved Symbol"))
  ("RU24969"
   ("ru24969" "RU-24969" "MESH:C025145"
    "5-methoxy 3-(1,2,3,6-tetrahydro-4-pyridinyl)1H indole" "SY"))
  ("RV144" ("rv144" "RV-144" "MESH:C048498" "erdosteine" "SY"))
  ("RX821002"
   ("rx821002" "RX-821002" "CHEBI:73287" "2-methoxyidazoxan" "RELATED synonym"
    "MESH:C058525" "2-methoxyidazoxan" "SY" "," "RX821002" "MESH:C058525"
    "2-methoxyidazoxan" "SY"))
  ("Reviparin"
   ("reviparin" "Reviparin" "CHEBI:28304" "heparin" "RELATED synonym" ","
    "reviparin" "MESH:C094240" "reviparin" "NM"))
  ("S11A"
   ("s11a" "S-11-A" "MESH:C027406" "1-deamino-1-hydroxyxylostasin" "SY" ","
    "S-11A" "MESH:C027406" "1-deamino-1-hydroxyxylostasin" "SY"))
  ("S12B"
   ("s12b" "S12-B" "UP:P09637" "Homeobox protein Hox-A5" "AltName: Full"))
  ("SD3" ("sd3" "SD3" "Orphanet:93404" "Syndactyly type 3" "EXACT synonym"))
  ("SF12" ("sf12" "SF-12" "NCIT:C20079" "SF-12" "name"))
  ("SL4" ("sl4" "SL4" "CVCL:3922" "T24T SLT4" "RELATED synonym"))
  ("SO3"
   ("so3" "SO-3" "UP:P27560" "Ribosome-inactivating protein saporin-3"
    "RecName: Short" "UP:P27561" "Ribosome-inactivating protein saporin-4"
    "AltName: Full" "," "SO3" "CHEBI:17359" "sulfite" "RELATED synonym"
    "CHEBI:29384" "sulfur trioxide" "RELATED synonym"))
  ("SORF2" ("sorf2" "SORF-2" "HGNC:26600 G" "WD repeat domain 81" "Synonym"))
  ("SU1"
   ("su1" "SU-1" "CVCL:RQ43" "SU1" "name" "," "Su1" "UP:Q50L39"
    "Baculoviral IAP repeat-containing protein 5.2-A" "AltName: Short"))
  ("SU3" ("su3" "SU3" "CVCL:RQ45" "SU3" "name"))
  ("Sing" ("sing" "SING" "NCIT:C79980" "singapore zebrafish" "synonym"))
  ("SnCl2"
   ("sncl2" "SnCl2" "CHEBI:78067" "tin dichloride (anh.)" "RELATED synonym"))
  ("T2D"
   ("t2d" "T2d" "NCIT:C88695"
    "melanoma of the ciliary body and choroid pT2d TNM finding v7" "synonym"
    "NCIT:C148411" "T2d stage finding" "synonym"))
  ("TBI" ("tbi" "TBI" "NCIT:C15350" "total-body irradiation" "synonym"))
  ("TCID50"
   ("tcid50" "TCID50" "NCIT:C67450" "tissue culture infectious dose 50%"
    "synonym" "NCIT:C70536" "50 percent tissue culture infective dose"
    "synonym"))
  ("TRIM74"
   ("trim74" "TRIM74" "HGNC:17453 G" "tripartite motif containing 74"
    "Approved Symbol"))
  ("TcO4" ("tco4" "TCO-4" "CVCL:M840" "TCO-4" "name"))
  ("Th17" ("th17" "Th17" "NCIT:C113815" "T helper 17 cell" "synonym"))
  ("U18666A"
   ("u18666a" "U-18666A" "MESH:C006261"
    "3-beta-(2-(diethylamino)ethoxy)androst-5-en-17-one" "SY" "," "U18666A"
    "MESH:C006261" "3-beta-(2-(diethylamino)ethoxy)androst-5-en-17-one" "SY"))
  ("U2A" ("u2a" "U2A" "CVCL:M019" "2fTGH-U2A" "RELATED synonym"))
  ("U373MG"
   ("u373mg" "U-373MG" "CVCL:2219" "U-373MG ATCC" "RELATED synonym" "CVCL:2818"
    "U-373MG Uppsala" "RELATED synonym"))
  ("U69593"
   ("u69593" "U-69593" "CHEBI:73357" "U69593" "name" "MESH:C045444" "U 69593"
    "SY"))
  ("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("URL"
   ("url" "URL" "NCIT:C42743" "uniform resource locator" "synonym"
    "NCIT:C95829" "URL data type" "synonym" "NCIT:C95829" "URL data type"
    "synonym"))
  ("UbcM8"
   ("ubcm8" "ubcM8" "UP:Q9QZU9 M" "Ubiquitin/ISG15-conjugating enzyme E2 L6"
    "AltName: Full"))
  ("VAMP5"
   ("vamp5" "VAMP-5" "UP:Q2KHY2" "Vesicle-associated membrane protein 5"
    "RecName: Short" "UP:O95183 H" "Vesicle-associated membrane protein 5"
    "RecName: Short" "UP:Q9Z2P8 M" "Vesicle-associated membrane protein 5"
    "RecName: Short" "UP:Q9Z2J5" "Vesicle-associated membrane protein 5"
    "RecName: Short" "," "VAMP5" "HGNC:12646 G"
    "vesicle associated membrane protein 5" "Approved Symbol"))
  ("VEGF165"
   ("vegf165" "VEGF-165" "NCIT:C126413"
    "vascular endothelial growth factor A 165 isoform" "synonym" "," "VEGF165"
    "NCIT:C20450" "vascular endothelial growth factor A" "synonym"
    "NCIT:C126413" "vascular endothelial growth factor A 165 isoform"
    "synonym"))
  ("VP2"
   ("vp2" "VP-2" "MESH:C032364" "17-acetoxy-6-methylene-4-pregnene-3,20-dione"
    "SY" "," "VP2" "UP:W6JIC6" "Capsid protein" "AltName: Short" "UP:P19193"
    "Minor spike protein H" "AltName: Short" "UP:Q9G055"
    "Minor spike protein H" "AltName: Short"))
  ("VP22" ("vp22" "vp22" "UP:Q8V3U4" "Matrix protein 1" "AltName: Full"))
  ("VP6"
   ("vp6" "VP6" "UP:Q9INI1 H" "Non-structural protein 2" "AltName: Full"))
  ("VP7" ("vp7" "VP7" "XFAM:PF00434 Family" "VP7" "ID"))
  ("Vol" ("vol" "VOL" "NCIT:C74720" "volume measurement" "synonym"))
  ("WB4101"
   ("wb4101" "WB-4101" "MESH:C010654"
    "(2-(2',6'-dimethoxy)phenoxyethylamino)methylbenzo-1,4-dioxane" "SY" ","
    "WB4101" "CHEBI:64098"
    "N-(2,3-dihydro-1,4-benzodioxin-2-ylmethyl)-2-(2,6-dimethoxyphenoxy)ethanamine"
    "RELATED synonym" "MESH:C010654"
    "(2-(2',6'-dimethoxy)phenoxyethylamino)methylbenzo-1,4-dioxane" "SY"))
  ("XT4" ("xt4" "XT-4" "UP:P84384" "Antimicrobial peptide 4" "AltName: Full"))
  ("a2D" ("a2d" "A2D" "HGNC:31326 G" "ataxin 2 like" "Synonym"))
  ("abbreviation"
   ("abbreviation" "abbreviation" "NCIT:C42610" "abbreviation" "name"))
  ("accepted" ("accepted" "accepted" "NCIT:C62559" "accepted" "name"))
  ("accuracy"
   ("accuracy" "accuracy" "NCIT:C49145" "accuracy" "name" "NCIT:C134242"
    "analytical procedure accuracy" "synonym"))
  ("administered"
   ("administered" "administered" "NCIT:C25382" "administered" "name"))
  ("adsorption" ("adsorption" "adsorption" "NCIT:C157206" "adsorption" "name"))
  ("agglutination"
   ("agglutination" "agglutination" "GO:0000752"
    "agglutination involved in conjugation with cellular fusion"
    "BROAD synonym"))
  ("aggressive"
   ("aggressive" "aggressive" "EFO:0002752" "aggressive" "name" "NCIT:C14138"
    "aggressive" "name"))
  ("alert"
   ("alert" "alert" "NCIT:C64358" "alert" "name" "NCIT:C125240"
    "how true feel alert right now" "synonym" "NCIT:C142753" "system alert"
    "synonym"))
  ("anxiety"
   ("anxiety" "anxiety" "EFO:0005230" "anxiety" "name" "NCIT:C2878"
    "anxiety disorder" "synonym" "NCIT:C26696" "anxiety" "name" "NCIT:C55441"
    "anxiety, CTCAE 3.0" "synonym" "NCIT:C121276" "anxiety scale" "synonym"
    "NCIT:C141607" "anxiety visual analogue scale" "synonym" "NCIT:C146778"
    "anxiety, CTCAE 5.0" "synonym"))
  ("approval"
   ("approval" "approval" "NCIT:C25425" "approval" "name" "NCIT:C42782"
    "approval" "name" "NCIT:C70799" "approval document" "synonym" "NCIT:C79189"
    "letter of authorization" "synonym" "NCIT:C79189" "letter of authorization"
    "synonym"))
  ("approved"
   ("approved" "approved" "NCIT:C25425" "approval" "synonym" "NCIT:C25425"
    "approval" "synonym" "NCIT:C25425" "approval" "synonym" "NCIT:C70745"
    "approved protocol" "synonym"))
  ("author" ("author" "author" "NCIT:C42781" "author" "name"))
  ("autoimmunity"
   ("autoimmunity" "autoimmunity" "NCIT:C26053" "autoimmune status" "synonym"))
  ("b2GP1" ("b2gp1" "B2GP1" "NCIT:C142154" "APOH" "synonym"))
  ("ceftolozane"
   ("ceftolozane" "CEFTOLOZANE" "NCIT:C150024" "ceftolozane" "synonym" ","
    "ceftolozane" "CHEBI:134719" "ceftolozane" "name" "MESH:C519491"
    "ceftolozane" "NM" "NCIT:C150024" "ceftolozane" "name"))
  ("centralized"
   ("centralized" "centralized" "NCIT:C53278" "centralization" "synonym"))
  ("circulation"
   ("circulation" "circulation" "NCIT:C16353" "blood circulation" "synonym"
    "NCIT:C16353" "blood circulation" "synonym" "NCIT:C41510"
    "circulatory process" "synonym"))
  ("cleaned" ("cleaned" "cleaned" "NCIT:C65076" "clean" "synonym"))
  ("clinic"
   ("clinic" "CLINIC" "NCIT:C51282" "clinic" "synonym" "," "clinic"
    "NCIT:C16281" "ambulatory care facility" "synonym" "NCIT:C51282" "clinic"
    "name"))
  ("closure"
   ("closure" "closure" "NCIT:C25366" "closure" "name" "NCIT:C150108"
    "EDQM-HC closure terminology" "synonym"))
  ("codon" ("codon" "codon" "NCIT:C62019" "codon" "name"))
  ("collected"
   ("collected" "collected" "NCIT:C25452" "collected" "name" "NCIT:C25453"
    "collection" "synonym" "NCIT:C25453" "collection" "synonym"))
  ("commercial"
   ("commercial" "commercial" "NCIT:C96109" "commercial lot" "synonym"
    "NCIT:C133990" "commercial batch" "synonym"))
  ("community" ("community" "community" "NCIT:C16453" "community" "name"))
  ("commuting" ("commuting" "commuting" "NCIT:C141285" "commute" "synonym"))
  ("compression"
   ("compression" "compression" "NCIT:C41208" "compression" "name"
    "NCIT:C64347" "data compression" "synonym"))
  ("consolidation"
   ("consolidation" "CONSOLIDATION" "NCIT:C156599"
    "consolidation clinical trial setting" "synonym" "," "consolidation"
    "NCIT:C15679" "consolidation therapy" "synonym" "NCIT:C124059"
    "pulmonary consolidation" "synonym"))
  ("constraint"
   ("constraint" "constraint" "NCIT:C53452" "restriction" "synonym"
    "NCIT:C94960" "quantitative constraint" "synonym"))
  ("contamination"
   ("contamination" "contamination" "NCIT:C63018" "contamination during use"
    "synonym" "NCIT:C68768" "contamination" "name"))
  ("copies"
   ("copies" "copies" "NCIT:C67336" "copy" "synonym" "NCIT:C67336" "copy"
    "synonym"))
  ("cost"
   ("cost" "COST" "CVCL:9491" "COST" "name" "NCIT:C121814"
    "comprehensive score for financial toxicity" "synonym" "," "cost"
    "NCIT:C16471" "costs" "synonym" "NCIT:C69088" "cost" "name"))
  ("costs" ("costs" "costs" "NCIT:C16471" "costs" "name"))
  ("count"
   ("count" "COUNT" "NCIT:C48485" "count dosing unit" "synonym" "NCIT:C48485"
    "count dosing unit" "synonym" "," "count" "UO:0000189" "count unit"
    "EXACT synonym" "NCIT:C25463" "count" "name" "NCIT:C48485"
    "count dosing unit" "synonym"))
  ("covered" ("covered" "covered" "NCIT:C68811" "cover" "synonym"))
  ("cultural" ("cultural" "cultural" "NCIT:C16478" "culture" "synonym"))
  ("cure"
   ("cure" "CURE" "NCIT:C19732"
    "continuing umbrella of research experience for underserved minorities (CURE) program"
    "synonym" "NCIT:C49654" "cure study" "synonym" "," "cure" "NCIT:C62220"
    "cure" "name"))
  ("d4T"
   ("d4t" "d4T" "CHEBI:63581" "stavudine" "RELATED synonym" "NCIT:C1428"
    "stavudine" "synonym"))
  ("defense" ("defense" "defense" "NCIT:C61556" "defense" "name"))
  ("delivered"
   ("delivered" "delivered" "NCIT:C48167" "transfer" "synonym" "NCIT:C61560"
    "delivery" "synonym"))
  ("delivery"
   ("delivery" "delivery" "NCIT:C25155" "birth" "synonym" "NCIT:C48167"
    "transfer" "synonym" "NCIT:C61560" "delivery" "name"))
  ("device"
   ("device" "DEVICE" "NCIT:C16830" "medical device" "synonym" "," "device"
    "NCIT:C16830" "medical device" "synonym" "NCIT:C16830" "medical device"
    "synonym" "NCIT:C16830" "medical device" "synonym" "NCIT:C16830"
    "medical device" "synonym" "NCIT:C62103" "device" "name"))
  ("diet"
   ("diet" "DIET" "NCIT:C15383" "special diet therapy" "synonym" "NCIT:C90364"
    "basal diet" "synonym" "," "diet" "EFO:0002755" "diet" "name" "NCIT:C15222"
    "diet" "name"))
  ("diploid" ("diploid" "diploid" "NCIT:C118941" "diploidy" "synonym"))
  ("discontinuous"
   ("discontinuous" "discontinuous" "NCIT:C25484" "discontinue" "synonym"
    "NCIT:C124550" "discontinuous anatomic feature" "synonym"))
  ("distance" ("distance" "distance" "NCIT:C25167" "distance" "name"))
  ("diversity" ("diversity" "diversity" "NCIT:C62263" "diversity" "name"))
  ("drain" ("drain" "drain" "NCIT:C50434" "drainage" "synonym"))
  ("eVP40"
   ("evp40" "eVP40" "UP:Q2PDK5 H" "Matrix protein VP40" "AltName: Short"
    "UP:Q77DJ6 H" "Matrix protein VP40" "AltName: Short" "UP:Q05128 H"
    "Matrix protein VP40" "AltName: Short"))
  ("electrolytes"
   ("electrolytes" "electrolytes" "NCIT:C464" "electrolytes" "name"))
  ("endomysium"
   ("endomysium" "endomysium" "BTO:0006241" "endomysium" "name" "NCIT:C32517"
    "endomysium" "name"))
  ("engineering"
   ("engineering" "engineering" "NCIT:C16548" "engineering" "name"))
  ("environment"
   ("environment" "environment" "NCIT:C16551" "environment" "name"))
  ("epidemiological"
   ("epidemiological" "epidemiological" "NCIT:C16556" "epidemiology"
    "synonym"))
  ("erythema" ("erythema" "erythema" "NCIT:C26901" "erythema" "name"))
  ("ethnic"
   ("ethnic" "ETHNIC" "NCIT:C16564" "ethnic group" "synonym" "NCIT:C66790"
    "CDISC SDTM ethnic group terminology" "synonym"))
  ("ethnicity"
   ("ethnicity" "Ethnicity" "EFO:0001799" "ethnic group" "EXACT synonym" ","
    "ethnicity" "NCIT:C16564" "ethnic group" "synonym" "NCIT:C16564"
    "ethnic group" "synonym" "NCIT:C29933" "ethnicity" "name"))
  ("euthanasia"
   ("euthanasia" "euthanasia" "NCIT:C21115" "terminal sedation" "synonym"
    "NCIT:C21115" "terminal sedation" "synonym"))
  ("evolution" ("evolution" "evolution" "NCIT:C16565" "evolution" "name"))
  ("excellent" ("excellent" "excellent" "NCIT:C82488" "excellent" "name"))
  ("exclusion"
   ("exclusion" "EXCLUSION" "NCIT:C25370" "exclusion criteria" "synonym" ","
    "exclusion" "NCIT:C82931" "exclusion" "name"))
  ("exercise"
   ("exercise" "exercise" "EFO:0000483" "exercise" "name" "NCIT:C16567"
    "exercise" "name" "NCIT:C26387" "exercise pain management" "synonym"))
  ("facility" ("facility" "facility" "NCIT:C62574" "facility" "name"))
  ("fair" ("fair" "fair" "NCIT:C82489" "fair" "name"))
  ("fasting"
   ("fasting" "fasting" "EFO:0002756" "fasting" "name" "NCIT:C63663" "fasting"
    "name"))
  ("fatigue"
   ("fatigue" "FATIGUE" "NCIT:C3036" "fatigue" "synonym" "," "fatigue"
    "NCIT:C3036" "fatigue" "name" "NCIT:C99776" "feel fatigue" "synonym"
    "NCIT:C122347" "fatigue subordinate domain" "synonym" "NCIT:C146753"
    "fatigue, CTCAE 5.0" "synonym"))
  ("financial" ("financial" "financial" "NCIT:C72888" "financial" "name"))
  ("fpv060" ("fpv060" "FPV060" "XFAM:PF17614 Family" "FPV060" "ID"))
  ("freeze" ("freeze" "freeze" "NCIT:C48160" "freezing" "synonym"))
  ("freezing"
   ("freezing" "FREEZING" "NCIT:C48160" "freezing" "synonym" "," "freezing"
    "NCIT:C48160" "freezing" "name"))
  ("funder" ("funder" "funder" "EFO:0001736" "funder" "name"))
  ("furunculosis"
   ("furunculosis" "furunculosis" "NCIT:C34629" "furunculosis" "name"))
  ("gender"
   ("gender" "gender" "NCIT:C17357" "gender" "name" "NCIT:C28421" "sex"
    "synonym"))
  ("genus" ("genus" "genus" "NCIT:C45292" "genus" "name"))
  ("giga"
   ("giga" "giga" "UO:0000292" "giga" "name" "NCIT:C67896" "giga" "name" ","
    "giga-" "NCIT:C67896" "giga" "synonym"))
  ("government" ("government" "government" "NCIT:C78315" "government" "name"))
  ("gp37"
   ("gp37" "Gp37" "UP:Q05247" "Gene 37 protein" "AltName: Full" "," "gp37"
    "UP:P03744" "Long-tail fiber protein gp37" "AltName: Short" "UP:Q9T1V8"
    "Probable tail terminator protein" "AltName: Short" "XFAM:PF09646 Domain"
    "gp37" "ID"))
  ("gp42"
   ("gp42" "Gp42" "UP:O64233" "Gene 42 protein" "AltName: Full" "UP:Q05253"
    "Gene 42 protein" "AltName: Full" "," "gp42" "UP:Q1HVG2 H"
    "Glycoprotein 42" "RecName: Short" "UP:P03205 H" "Glycoprotein 42"
    "RecName: Short" "UP:P0C6Z5 H" "Glycoprotein 42" "RecName: Short"
    "UP:P31793 M" "Glycoprotein 42" "RecName: Short"))
  ("gp49"
   ("gp49" "Gp49" "UP:O64239" "Gene 49 protein" "AltName: Full" "UP:Q05261"
    "Gene 49 protein" "AltName: Full" "," "gp49" "UP:P13340"
    "Recombination endonuclease VII" "AltName: Short" "UP:Q9T1V0"
    "Tail fiber protein S" "AltName: Short" "XFAM:PF05973 Family" "gp49" "ID"))
  ("guardian"
   ("guardian" "GUARDIAN" "NCIT:C51828" "guardian" "synonym" "," "guardian"
    "NCIT:C51828" "guardian" "name"))
  ("hAd5" ("had5" "HAD5" "CVCL:C076" "HAD5" "name"))
  ("haemolytic" ("haemolytic" "haemolytic" "XFAM:PF01809 Family" "YidD" "PI"))
  ("healthcare"
   ("healthcare" "healthcare" "NCIT:C15363" "healthcare" "name" "NCIT:C16205"
    "healthcare activity" "synonym"))
  ("hematologic"
   ("hematologic" "hematologic" "NCIT:C16673" "hematology" "synonym"
    "NCIT:C62780" "hematologic" "name"))
  ("hidden" ("hidden" "hidden" "NCIT:C45671" "hidden" "name"))
  ("histologic" ("histologic" "histologic" "NCIT:C25526" "histologic" "name"))
  ("histologically"
   ("histologically" "histologically" "NCIT:C25527" "histologically" "name"))
  ("holiday" ("holiday" "holiday" "NCIT:C148291" "holiday" "name"))
  ("hominid" ("hominid" "hominid" "NCIT:C79740" "hominidae" "synonym"))
  ("homogeneity"
   ("homogeneity" "homogeneity" "NCIT:C61365" "homogeneity" "name"))
  ("hospital"
   ("hospital" "HOSPITAL" "NCIT:C16696" "hospital" "synonym" "NCIT:C16696"
    "hospital" "synonym" "," "hospital" "NCIT:C16696" "hospital" "name"))
  ("hospitalization"
   ("hospitalization" "HOSPITALIZATION" "NCIT:C25179" "hospitalization"
    "synonym" "," "hospitalization" "NCIT:C25179" "hospitalization" "name"))
  ("hydrophilicity"
   ("hydrophilicity" "hydrophilicity" "NCIT:C66820" "hydrophilicity" "name"))
  ("hydrophobicity"
   ("hydrophobicity" "hydrophobicity" "NCIT:C63813" "hydrophobicity" "name"))
  ("hypoproteinemia"
   ("hypoproteinemia" "hypoproteinemia" "NCIT:C88511" "hypoproteinemia"
    "name"))
  ("identifiable"
   ("identifiable" "identifiable" "NCIT:C44469" "identifiable class"
    "synonym"))
  ("identity" ("identity" "identity" "NCIT:C68806" "identity" "name"))
  ("immunocompromised"
   ("immunocompromised" "immunocompromised" "NCIT:C14139" "immunocompromised"
    "name"))
  ("immunogenicity"
   ("immunogenicity" "IMMUNOGENICITY" "NCIT:C120842" "immunogenicity study"
    "synonym"))
  ("incidence" ("incidence" "incidence" "NCIT:C16726" "incidence" "name"))
  ("incubated" ("incubated" "incubated" "NCIT:C15685" "incubated" "name"))
  ("indicator"
   ("indicator" "indicator" "CHEBI:47867" "indicator" "name" "NCIT:C25180"
    "indicator" "name" "NCIT:C50001" "indicator device" "synonym" "NCIT:C50001"
    "indicator device" "synonym"))
  ("industry" ("industry" "industry" "NCIT:C25181" "industry" "name"))
  ("injection"
   ("injection" "INJECTION" "NCIT:C42946" "injectable dosage form" "synonym"
    "NCIT:C42946" "injectable dosage form" "synonym" "NCIT:C42946"
    "injectable dosage form" "synonym" "," "injection" "NCIT:C28160"
    "injection route of administration" "synonym" "NCIT:C28160"
    "injection route of administration" "synonym" "NCIT:C42946"
    "injectable dosage form" "synonym" "NCIT:C42946" "injectable dosage form"
    "synonym" "NCIT:C42946" "injectable dosage form" "synonym" "NCIT:C122632"
    "injection dosing unit" "synonym" "NCIT:C149592"
    "injection method of administration" "synonym"))
  ("inpatient"
   ("inpatient" "inpatient" "NCIT:C25182" "inpatient" "name" "NCIT:C150753"
    "inpatient encounter" "synonym"))
  ("instrumentation"
   ("instrumentation" "instrumentation" "NCIT:C16742" "instrumentation"
    "name"))
  ("integer" ("integer" "integer" "NCIT:C45255" "integer" "name"))
  ("isolation" ("isolation" "isolation" "NCIT:C25549" "isolation" "name"))
  ("isomer" ("isomer" "isomer" "NCIT:C94419" "isomer" "name"))
  ("kBq"
   ("kbq" "kBq" "NCIT:C70511" "kilobecquerel" "synonym" "NCIT:C70511"
    "kilobecquerel" "synonym" "NCIT:C70511" "kilobecquerel" "synonym"
    "NCIT:C70511" "kilobecquerel" "synonym"))
  ("kUR"
   ("kur" "KUR" "NCIT:C153992" "kurdish language" "synonym" "," "Kur"
    "HGNC:1301 G" "cilia and flagella associated protein 298" "Synonym"))
  ("km4" ("km4" "KM4" "CVCL:W406" "KM-4" "name"))
  ("lactating"
   ("lactating" "LACTATING" "NCIT:C82463" "lactating" "synonym" "," "lactating"
    "NCIT:C82463" "lactating" "name"))
  ("life"
   ("life" "LIFE" "NCIT:C20203" "laser-induced fluorescence endoscopy"
    "synonym" "," "life" "NCIT:C142142" "life" "name"))
  ("linearity"
   ("linearity" "linearity" "NCIT:C134033" "analytical procedure linearity"
    "synonym"))
  ("localisation"
   ("localisation" "localisation" "GO:0051179" "localization" "EXACT synonym"))
  ("locality" ("locality" "locality" "NCIT:C87189" "locality" "name"))
  ("log10" ("log10" "log10" "NCIT:C75941" "log10" "name"))
  ("mIU"
   ("miu" "MIU" "NCIT:C67335" "million international units" "synonym" "," "miU"
    "NCIT:C67316" "milliinternational unit" "synonym"))
  ("mVP40"
   ("mvp40" "mVP40" "UP:Q1PD51 H" "Matrix protein VP40" "AltName: Short"
    "UP:P35260 H" "Matrix protein VP40" "AltName: Short" "UP:Q6UY67 H"
    "Matrix protein VP40" "AltName: Short" "UP:Q03040 H" "Matrix protein VP40"
    "AltName: Short" "UP:Q1PDC8 H" "Matrix protein VP40" "AltName: Short"))
  ("macroscopic" ("macroscopic" "macroscopic" "NCIT:C43566" "gross" "synonym"))
  ("malaria"
   ("malaria" "malaria" "EFO:0001068" "malaria" "name" "NCIT:C34797" "malaria"
    "name" "NCIT:C91807" "malaria pathway" "synonym" "NCIT:C100453"
    "plasmodium measurement" "synonym"))
  ("marketing" ("marketing" "marketing" "NCIT:C53292" "marketing" "name"))
  ("mathematical"
   ("mathematical" "mathematical" "NCIT:C16825" "mathematics" "synonym"))
  ("meningeal"
   ("meningeal" "meningeal" "NCIT:C12931" "meningeal" "name" "NCIT:C23861"
    "meningeal" "name"))
  ("miR122"
   ("mir122" "MIR122" "HGNC:31501 R" "microRNA 122" "Approved Symbol"
    "NCIT:C82057" "MIR122" "name" "," "miR-122" "HGNC:31501 R" "microRNA 122"
    "Synonym"))
  ("miR181"
   ("mir181" "MIR181" "NCIT:C116021" "microRNA 181" "synonym" "," "mir-181"
    "NCIT:C116021" "microRNA 181" "synonym"))
  ("micelle" ("micelle" "micelle" "NCIT:C93299" "micelle" "name"))
  ("mm3"
   ("mm3" "MM-3" "CVCL:VG92" "MM-3" "name" "," "MM3" "CVCL:M193" "TCPH-MM03"
    "RELATED synonym" "UP:Q91771" "Homeobox protein Hox-B7-A" "AltName: Full"
    "UP:P49111" "Transmembrane 4 L6 family member 1" "AltName: Full" "," "mm3"
    "NCIT:C48153" "microliter" "synonym" "NCIT:C48153" "microliter" "synonym"))
  ("mm8" ("mm8" "MM8" "CVCL:WZ36" "TCPH-MM08" "RELATED synonym"))
  ("mononucleosis"
   ("mononucleosis" "mononucleosis" "EFO:0007326" "infectious mononucleosis"
    "EXACT synonym"))
  ("morbidity" ("morbidity" "morbidity" "NCIT:C16877" "morbidity" "name"))
  ("musculoskeletal"
   ("musculoskeletal" "musculoskeletal" "NCIT:C25348" "musculoskeletal"
    "name"))
  ("normality"
   ("normality" "normality" "NCIT:C64569" "normality unit" "synonym"))
  ("ns12.9"
   ("ns12.9" "ns12.9" "UP:Q04853 H" "Non-structural protein of 12.9 kDa"
    "RecName: Short"))
  ("nsp16" ("nsp16" "NSP16" "XFAM:PF06460 Domain" "NSP16" "ID"))
  ("nursing"
   ("nursing" "nursing" "NCIT:C16926" "nursing" "name" "NCIT:C25596"
    "breast feeding" "synonym"))
  ("nutrition"
   ("nutrition" "nutrition" "NCIT:C15820" "nutritional study" "synonym"
    "NCIT:C16927" "nutritional science" "synonym" "NCIT:C28294" "nutrition"
    "name"))
  ("occupation"
   ("occupation" "OCCUPATION" "NCIT:C25193" "occupation" "synonym" ","
    "occupation" "NCIT:C25193" "occupation" "name"))
  ("oncologic" ("oncologic" "oncologic" "NCIT:C17837" "oncology" "synonym"))
  ("opening" ("opening" "opening" "NCIT:C61378" "opening" "name"))
  ("optimal" ("optimal" "optimal" "NCIT:C75911" "optimum" "synonym"))
  ("ordered"
   ("ordered" "ordered" "NCIT:C42680" "order" "synonym" "NCIT:C48906" "order"
    "synonym"))
  ("osteopenia" ("osteopenia" "osteopenia" "NCIT:C50910" "osteopenia" "name"))
  ("outpatient" ("outpatient" "outpatient" "NCIT:C28293" "outpatient" "name"))
  ("owner" ("owner" "owner" "NCIT:C42704" "owner" "name"))
  ("pMHC" ("pmhc" "pMHC" "NCIT:C18930" "peptide/MHC complex" "synonym"))
  ("paper"
   ("paper" "PAPER" "NCIT:C82484" "paper dosing unit" "synonym" "," "paper"
    "NCIT:C82484" "paper dosing unit" "synonym" "NCIT:C82484"
    "paper dosing unit" "synonym" "NCIT:C82484" "paper dosing unit" "synonym"
    "NCIT:C82484" "paper dosing unit" "synonym"))
  ("parent"
   ("parent" "PARENT" "NCIT:C42709" "parent" "synonym" "," "parent"
    "NCIT:C42709" "parent" "name" "NCIT:C80013" "conceptual parent" "synonym"))
  ("parental" ("parental" "parental" "NCIT:C42709" "parent" "synonym"))
  ("paresis" ("paresis" "paresis" "NCIT:C50688" "paresis" "name"))
  ("participant"
   ("participant" "participant" "NCIT:C29867" "participant" "name"
    "NCIT:C79269" "participant object" "synonym" "NCIT:C156779"
    "entity with role in clinical study" "synonym"))
  ("pathological"
   ("pathological" "PATHOLOGICAL" "NCIT:C25610" "pathologic" "synonym" ","
    "pathological" "NCIT:C18189" "pathology" "synonym"))
  ("perfusion"
   ("perfusion" "perfusion" "NCIT:C15295" "chemotherapeutic perfusion"
    "synonym" "NCIT:C15295" "chemotherapeutic perfusion" "synonym"
    "NCIT:C150246" "perfusion" "name"))
  ("personal"
   ("personal" "personal" "NCIT:C19332" "personal attribute" "synonym"))
  ("pharmaceutical"
   ("pharmaceutical" "pharmaceutical" "CHEBI:52217" "pharmaceutical" "name"
    "NCIT:C16976" "pharmaceutics" "synonym" "NCIT:C42636"
    "pharmaceutical dosage form" "synonym" "NCIT:C42636"
    "pharmaceutical dosage form" "synonym"))
  ("pharmacokinetic"
   ("pharmacokinetic" "PHARMACOKINETIC" "NCIT:C49663" "pharmacokinetic study"
    "synonym"))
  ("pharyngitis"
   ("pharyngitis" "pharyngitis" "NCIT:C26851" "pharyngitis" "name"
    "NCIT:C143758" "pharyngitis, CTCAE" "synonym"))
  ("pinocytosis"
   ("pinocytosis" "pinocytosis" "GO:0006907" "pinocytosis" "name"))
  ("placebo"
   ("placebo" "PLACEBO" "NCIT:C49648" "placebo control" "synonym" "," "placebo"
    "EFO:0001674" "placebo" "name" "NCIT:C753" "placebo" "name"))
  ("plasmacytic"
   ("plasmacytic" "plasmacytic" "NCIT:C12486" "plasma cell" "synonym"))
  ("polycation"
   ("polycation" "polycation" "CHEBI:53323" "polycationic macromolecule"
    "RELATED synonym" "CHEBI:60684" "polycationic polymer" "RELATED synonym"))
  ("pp1b"
   ("pp1b" "PP-1B" "HGNC:9282 G" "protein phosphatase 1 catalytic subunit beta"
    "Synonym" "UP:P62140 H"
    "Serine/threonine-protein phosphatase PP1-beta catalytic subunit"
    "RecName: Short" "UP:P62141 M"
    "Serine/threonine-protein phosphatase PP1-beta catalytic subunit"
    "RecName: Short" "," "PP1B" "HGNC:9282 G"
    "protein phosphatase 1 catalytic subunit beta" "Synonym"))
  ("precision"
   ("precision" "precision" "NCIT:C48045" "precision" "name" "NCIT:C134243"
    "analytical procedure precision" "synonym"))
  ("pressure" ("pressure" "pressure" "NCIT:C25195" "pressure" "name"))
  ("probiotic" ("probiotic" "probiotic" "NCIT:C93144" "probiotic" "name"))
  ("procedures"
   ("procedures" "PROCEDURES" "NCIT:C154626" "procedure code" "synonym" ","
    "procedures" "NCIT:C102700" "procedure domain" "synonym"))
  ("proteome" ("proteome" "proteome" "NCIT:C18276" "proteome" "name"))
  ("psychiatric"
   ("psychiatric" "psychiatric" "NCIT:C17026" "psychiatry" "synonym"))
  ("psychological"
   ("psychological" "psychological" "NCIT:C94316" "psychological" "name"))
  ("public" ("public" "public" "NCIT:C49060" "public" "name"))
  ("purity" ("purity" "purity" "NCIT:C62352" "purity" "name"))
  ("q4h"
   ("q4h" "Q4H" "NCIT:C64518" "every four hours" "synonym" "NCIT:C64518"
    "every four hours" "synonym"))
  ("quadrupole" ("quadrupole" "quadrupole" "NCIT:C70689" "quadrupole" "name"))
  ("quarantine" ("quarantine" "quarantine" "NCIT:C71902" "quarantine" "name"))
  ("radiotherapy"
   ("radiotherapy" "RADIOTHERAPY" "NCIT:C15313" "radiation therapy" "synonym"
    "," "radiotherapy" "NCIT:C15313" "radiation therapy" "synonym"
    "NCIT:C15313" "radiation therapy" "synonym"))
  ("reactivity"
   ("reactivity" "reactivity" "NCIT:C25637" "reaction" "synonym" "NCIT:C25637"
    "reaction" "synonym" "NCIT:C25637" "reaction" "synonym"))
  ("reasoning"
   ("reasoning" "reasoning" "EFO:0004350" "reasoning" "name" "NCIT:C86584"
    "reasoning" "name"))
  ("recall"
   ("recall" "RECALL" "NCIT:C53609" "recall" "synonym" "," "recall"
    "NCIT:C53609" "recall" "name" "NCIT:C122669" "recollect" "synonym"))
  ("receive" ("receive" "receive" "NCIT:C25639" "receive" "name"))
  ("recipient" ("recipient" "recipient" "NCIT:C53268" "recipient" "name"))
  ("recovery"
   ("recovery" "RECOVERY" "NCIT:C25746" "recovery" "synonym" "," "recovery"
    "NCIT:C25746" "recovery" "name" "NCIT:C70827" "recovery" "name"))
  ("registered"
   ("registered" "registered" "NCIT:C25644" "registered" "name" "NCIT:C25646"
    "registration" "synonym"))
  ("registrar" ("registrar" "registrar" "NCIT:C25357" "registrar" "name"))
  ("rejected"
   ("rejected" "rejected" "NCIT:C69304" "rejected" "name" "NCIT:C82650"
    "reject" "synonym"))
  ("replacement"
   ("replacement" "REPLACEMENT" "NCIT:C53610" "replacement" "synonym" ","
    "replacement" "NCIT:C53610" "replacement" "name" "NCIT:C142738"
    "trial subject replacement" "synonym"))
  ("reproducibility"
   ("reproducibility" "reproducibility" "NCIT:C15318" "reproducibility"
    "name"))
  ("request"
   ("request" "request" "NCIT:C41116" "question" "synonym" "NCIT:C48312"
    "request" "name"))
  ("roTag"
   ("rotag" "ROTAG" "NCIT:C154827" "rotavirus antigen measurement" "synonym"))
  ("routine" ("routine" "routine" "NCIT:C47893" "routine" "name"))
  ("rural" ("rural" "rural" "NCIT:C17724" "rural" "name"))
  ("saline"
   ("saline" "saline" "EFO:0002677" "saline" "name" "NCIT:C821" "saline"
    "name"))
  ("satisfactory"
   ("satisfactory" "satisfactory" "NCIT:C63351" "sufficient" "synonym"))
  ("school"
   ("school" "SCHOOL" "NCIT:C17118" "school" "synonym" "NCIT:C17118" "school"
    "synonym" "," "school" "NCIT:C17118" "school" "name"))
  ("sector" ("sector" "sector" "NCIT:C48955" "sector" "name"))
  ("sedated" ("sedated" "sedated" "NCIT:C118302" "sedated" "name"))
  ("serotype" ("serotype" "serotype" "NCIT:C88894" "serotype" "name"))
  ("severity" ("severity" "severity" "NCIT:C25676" "severity" "name"))
  ("sing" ("sing" "SING" "NCIT:C79980" "singapore zebrafish" "synonym"))
  ("singular"
   ("singular" "Singular" "CHEBI:6993" "montelukast sodium" "RELATED synonym"))
  ("sinus"
   ("sinus" "SINUS" "NCIT:C33556" "sinus" "synonym" "," "sinus" "NCIT:C33556"
    "sinus" "name"))
  ("social" ("social" "social" "NCIT:C62650" "social" "name"))
  ("software"
   ("software" "software" "EFO:0002029" "software" "name" "NCIT:C17146"
    "computer program" "synonym" "NCIT:C17146" "computer program" "synonym"))
  ("soil" ("soil" "soil" "BTO:0003809" "soil" "name"))
  ("solubility" ("solubility" "solubility" "NCIT:C60821" "solubility" "name"))
  ("specimen"
   ("specimen" "specimen" "NCIT:C19157" "specimen" "name" "NCIT:C70699"
    "biospecimen" "synonym" "NCIT:C77529" "CDISC SEND biospecimens terminology"
    "synonym"))
  ("speech" ("speech" "speech" "NCIT:C38025" "speech" "name"))
  ("stained"
   ("stained" "stained" "NCIT:C94578" "stained appearance" "synonym"))
  ("stool"
   ("stool" "STOOL" "NCIT:C13234" "feces" "synonym" "," "stool" "NCIT:C13234"
    "feces" "synonym" "NCIT:C13234" "feces" "synonym" "NCIT:C26415" "stool"
    "name"))
  ("subcutaneous"
   ("subcutaneous" "SUBCUTANEOUS" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "," "subcutaneous"
    "NCIT:C13353" "subcutaneous" "name" "NCIT:C38299"
    "subcutaneous route of administration" "synonym" "NCIT:C38299"
    "subcutaneous route of administration" "synonym"))
  ("sulpiride"
   ("sulpiride" "SULPIRIDE" "NCIT:C87713" "sulpiride" "synonym" "," "sulpiride"
    "CHEBI:32168" "sulpiride" "name" "NCIT:C87713" "sulpiride" "name"))
  ("suspected" ("suspected" "suspected" "NCIT:C71458" "suspected" "name"))
  ("swab"
   ("swab" "SWAB" "NCIT:C17627" "swab" "synonym" "NCIT:C47898"
    "swab dosage form" "synonym" "NCIT:C47898" "swab dosage form" "synonym"
    "NCIT:C47898" "swab dosage form" "synonym" "NCIT:C47898" "swab dosage form"
    "synonym" "NCIT:C53504" "swab dosing unit" "synonym" "NCIT:C53504"
    "swab dosing unit" "synonym" "," "swab" "NCIT:C17627" "swab" "name"
    "NCIT:C47898" "swab dosage form" "synonym" "NCIT:C47898" "swab dosage form"
    "synonym" "NCIT:C47898" "swab dosage form" "synonym" "NCIT:C47898"
    "swab dosage form" "synonym" "NCIT:C53504" "swab dosing unit" "synonym"
    "NCIT:C53504" "swab dosing unit" "synonym" "NCIT:C53504" "swab dosing unit"
    "synonym"))
  ("swimming"
   ("swimming" "swimming" "GO:0036268" "swimming" "name" "NCIT:C94738"
    "swimming" "name"))
  ("symptomatic"
   ("symptomatic" "symptomatic" "NCIT:C25269" "symptomatic" "name"))
  ("technical" ("technical" "technical" "NCIT:C16847" "technique" "synonym"))
  ("tertiary" ("tertiary" "tertiary" "NCIT:C71903" "tertiary" "name"))
  ("thaw" ("thaw" "thaw" "NCIT:C48165" "thaw" "name"))
  ("thawing" ("thawing" "THAWING" "NCIT:C48165" "thaw" "synonym"))
  ("throat"
   ("throat" "THROAT" "NCIT:C54272" "throat" "synonym" "," "throat"
    "BTO:0000828" "throat" "name" "NCIT:C54272" "throat" "name"))
  ("titer" ("titer" "titer" "NCIT:C67454" "titer" "name"))
  ("tonsillitis"
   ("tonsillitis" "tonsillitis" "NCIT:C116006" "tonsillitis" "name"))
  ("traditional"
   ("traditional" "traditional" "NCIT:C159512" "traditional education"
    "synonym"))
  ("training" ("training" "training" "NCIT:C17705" "training" "name"))
  ("transmitter"
   ("transmitter" "transmitter" "NCIT:C50231" "transmitter device" "synonym"
    "NCIT:C50231" "transmitter device" "synonym"))
  ("trauma"
   ("trauma" "Trauma" "EFO:0000546" "injury" "EXACT synonym" "," "trauma"
    "NCIT:C3671" "injury" "synonym" "NCIT:C3671" "injury" "synonym"))
  ("travel" ("travel" "travel" "NCIT:C53462" "travel" "name"))
  ("ts15"
   ("ts15" "Ts15" "UP:P86270" "Potassium channel toxin alpha-KTx 21.1"
    "AltName: Short"))
  ("twice"
   ("twice" "TWICE" "NCIT:C65134" "twice" "synonym" "," "twice" "NCIT:C65134"
    "twice" "name"))
  ("undetectable"
   ("undetectable" "undetectable" "NCIT:C111568" "undetectable" "name"))
  ("uniform" ("uniform" "uniform" "NCIT:C73944" "uniform" "name"))
  ("uninfected" ("uninfected" "uninfected" "EFO:0001460" "uninfected" "name"))
  ("urgent" ("urgent" "URGENT" "NCIT:C100031" "urgent procedure" "synonym"))
  ("vCP1521" ("vcp1521" "vCP1521" "MESH:C112734" "AIDSVAX" "SY"))
  ("ventilation"
   ("ventilation" "ventilation" "NCIT:C88203" "ventilation" "name"))
  ("video" ("video" "video" "NCIT:C96985" "video" "name"))
  ("virulent" ("virulent" "virulent" "NCIT:C28387" "virulent" "name"))
  ("vol" ("vol" "VOL" "NCIT:C74720" "volume measurement" "synonym"))
  ("volume"
   ("volume" "VOLUME" "NCIT:C25335" "volume" "synonym" "NCIT:C25335" "volume"
    "synonym" "NCIT:C25335" "volume" "synonym" "NCIT:C74720"
    "volume measurement" "synonym" "," "volume" "EFO:0001715" "volume" "name"
    "NCIT:C25335" "volume" "name" "NCIT:C43320" "volume" "name" "NCIT:C74720"
    "volume measurement" "synonym" "NCIT:C74720" "volume measurement" "synonym"
    "NCIT:C74720" "volume measurement" "synonym"))
  ("vomiting"
   ("vomiting" "vomiting" "NCIT:C3442" "vomiting" "name" "NCIT:C57896"
    "vomiting, CTCAE" "synonym" "NCIT:C57896" "vomiting, CTCAE" "synonym"
    "NCIT:C115346" "have been vomiting" "synonym" "NCIT:C125278"
    "how often vomiting" "synonym" "NCIT:C125310" "usual severity vomiting"
    "synonym" "NCIT:C125342" "how much distress vomiting" "synonym"
    "NCIT:C125342" "how much distress vomiting" "synonym" "NCIT:C125647"
    "bothered by vomiting" "synonym"))
  ("weekend" ("weekend" "weekend" "NCIT:C137684" "weekend" "name"))
  ("withdraw" ("withdraw" "withdraw" "NCIT:C38061" "withdraw" "name"))
  ("βactin"
   ("βactin" "β-actin" "UP:P60709 H" "Actin, cytoplasmic 1" "AltName: Full"
    "UP:P60710 M" "Actin, cytoplasmic 1" "AltName: Full" "NCIT:C103969"
    "actin, cytoplasmic 1" "synonym"))
  ("βcaryophyllene"
   ("βcaryophyllene" "β-Caryophyllene" "CHEBI:10357" "(-)-beta-caryophyllene"
    "RELATED synonym" "," "β-caryophyllene" "CHEBI:63191" "beta-caryophyllene"
    "name" "CHEBI:5993" "Isocaryophyllene" "RELATED synonym"))
  ("βcell"
   ("βcell" "β-cell" "CL:0000169" "type B pancreatic cell" "BROAD synonym"
    "CL:0000639" "basophil cell of pars distalis of adenohypophysis"
    "RELATED synonym"))
  ("γinterferon"
   ("γinterferon" "γ-interferon" "NCIT:C583" "recombinant interferon gamma"
    "synonym" "NCIT:C20496" "interferon gamma" "synonym"))
  ("γlactam" ("γlactam" "γ-lactam" "CHEBI:74222" "gamma-lactam" "name")))
)

