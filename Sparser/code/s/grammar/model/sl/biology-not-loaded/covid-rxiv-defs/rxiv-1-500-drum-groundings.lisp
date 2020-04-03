(in-package :sparser)

(defparameter *all-upper-drum-terms* 
'(("ABBA"
   ("abba" "ABBA" "HGNC:25094 G" "MTSS I-BAR domain containing 2" "Synonym"))
  ("ABV"
   ("abv" "ABV" "NCIT:C9651" "bleomycin/Doxorubicin/Vinblastine" "synonym"
    "NCIT:C10188" "bleomycin/Doxorubicin/Vincristine" "synonym"))
  ("AEG"
   ("aeg" "AEG" "UP:Q9XSD3" "Cysteine-rich secretory protein 1"
    "AltName: Short"))
  ("AENA" ("aena" "AeNa" "UP:Q9NJQ2" "Delta-actitoxin-Aeq2a" "AltName: Full"))
  ("AGB" ("agb" "AgB" "UP:P35418" "Paramyosin" "AltName: Short"))
  ("AGI" ("agi" "AGI" "NCIT:C139651" "alpha-glucosidase inhibitor" "synonym"))
  ("AJ"
   ("aj" "AJ" "CVCL:3019" "Marcus" "RELATED synonym" "CVCL:1698" "SK-MG-1"
    "RELATED synonym" "EFO:0001327" "A/J" "EXACT synonym" "UP:SL-0009 D"
    "Adherens junction" "SY" "NCIT:C13736" "zonula adherens" "synonym"))
  ("AMV"
   ("amv" "AMV" "NCIT:C10278" "doxorubicin/Etoposide/Methotrexate" "synonym"))
  ("APACHE"
   ("apache" "APache" "HGNC:29192 G" "KIAA1107" "Synonym" "UP:Q9UPP5 H"
    "AP2-interacting clathrin-endocytosis protein" "RecName: Short"
    "UP:Q80TK0 M" "AP2-interacting clathrin-endocytosis protein"
    "RecName: Short" "UP:D4A0X3" "AP2-interacting clathrin-endocytosis protein"
    "RecName: Short" "," "apache" "NCIT:C43880" "apache" "name"))
  ("APBS"
   ("apbs" "APBS" "NCIT:C147169" "associated persons biospecimen domain"
    "synonym"))
  ("APTT"
   ("aptt" "APTT" "NCIT:C38462" "partial thromboplastin time" "synonym" ","
    "aPTT" "NCIT:C38462" "partial thromboplastin time" "synonym"))
  ("ASPM"
   ("aspm" "ASPM" "HGNC:19048 G" "abnormal spindle microtubule assembly"
    "Approved Symbol" "NCIT:C118990" "ASPM" "name"))
  ("ATCC" ("atcc" "ATCC" "NCIT:C15661" "ATCC" "name"))
  ("ATV"
   ("atv" "ATV" "HGNC:7652 G" "nibrin" "Synonym" "NCIT:C21171" "nibrin"
    "synonym" "NCIT:C73840" "atevirdine" "synonym"))
  ("AUC"
   ("auc" "AUC" "CVCL:AV82" "AUC" "name" "NCIT:C64774" "area under curve"
    "synonym"))
  ("BC" ("bc" "BC" "NCIT:C92225" "best case imputation technique" "synonym"))
  ("BCL"
   ("bcl" "BCL" "NCIT:C18512" "BCL1 oncogene" "synonym" "NCIT:C142819"
    "breast cancer locator" "synonym"))
  ("BD"
   ("bd" "BD" "NCIT:C16323" "bangladesh" "synonym" "NCIT:C25296" "birth date"
    "synonym" "NCIT:C64496" "twice daily" "synonym" "NCIT:C68615" "birth date"
    "synonym" "NCIT:C120352" "block design subtest (WPPSI-IV)" "synonym"
    "NCIT:C155974" "babaodan capsule" "synonym"))
  ("BEAGLE"
   ("beagle" "BEAGLE" "NCIT:C53897" "beagle" "synonym" "," "beagle"
    "NCIT:C53897" "beagle" "name"))
  ("BEH"
   ("beh" "BeH" "CHEBI:30504" "hydridoberyllium" "RELATED synonym" "," "Beh"
    "CHEBI:22696" "behenoyl group" "RELATED synonym"))
  ("BHE" ("bhe" "BH-E" "CVCL:0C06" "BH-E" "name"))
  ("BHK" ("bhk" "BHK" "CVCL:1914" "BHK-21" "RELATED synonym"))
  ("BMI"
   ("bmi" "BMI" "EFO:0004340" "body mass index" "EXACT synonym" "NCIT:C16358"
    "body mass index" "synonym" "NCIT:C16358" "body mass index" "synonym"
    "NCIT:C16358" "body mass index" "synonym" "NCIT:C16358" "body mass index"
    "synonym" "NCIT:C138901" "body mass index finding" "synonym"))
  ("BN"
   ("bn" "BN" "CVCL:Y432" "BN" "name" "NCIT:C14395" "BN, rat strain" "synonym"
    "NCIT:C16367" "brunei darussalam" "synonym" "NCIT:C52384" "GRP" "synonym"
    "NCIT:C71350" "bachelor of science in nursing" "synonym" "NCIT:C158203"
    "bonan chinese" "synonym" "NCIT:C158203" "bonan chinese" "synonym" "," "Bn"
    "CHEBI:22744" "benzyl group" "RELATED synonym"))
  ("BSB"
   ("bsb" "BS-B" "UP:P21478" "30S ribosomal protein S21" "AltName: Full" ","
    "BSB" "CVCL:S927" "BSB" "name"))
  ("BSM" ("bsm" "BSM" "CVCL:E504" "BSM" "name"))
  ("BSO" ("bso" "BSO" "NCIT:C1029" "buthionine sulfoximine" "synonym"))
  ("BSR"
   ("bsr" "Bsr" "HGNC:14574 R"
    "maternally expressed 8, small nucleolar RNA host gene" "Synonym"))
  ("CABS" ("cabs" "CABS" "NCIT:C9637" "SCAB regimen" "synonym"))
  ("CADASIL"
   ("cadasil" "CADASIL" "Orphanet:136" "CADASIL" "name" "HGNC:7883 G"
    "notch receptor 3" "Previous Symbol" "NCIT:C84606" "CADASIL syndrome"
    "synonym" "NCIT:C106437" "NOTCH3" "synonym"))
  ("CBB" ("cbb" "CBB" "NCIT:C80172" "complement Bb measurement" "synonym"))
  ("CBE"
   ("cbe" "CBE" "NCIT:C70552" "clinical breast examination" "synonym"
    "NCIT:C70552" "clinical breast examination" "synonym"))
  ("CCB"
   ("ccb" "CCB" "CVCL:W096" "CCB" "name" "NCIT:C333" "calcium channel blocker"
    "synonym"))
  ("CCC"
   ("ccc" "CCC" "CVCL:2426" "CRFK" "RELATED synonym" "GO:0030896"
    "checkpoint clamp complex" "EXACT synonym" "NCIT:C54181"
    "columnar cell change of the breast" "synonym"))
  ("CDG"
   ("cdg" "CDG" "CHEBI:140231" "Cys-Asp-Gly" "RELATED synonym" "Orphanet:137"
    "Congenital disorder of glycosylation" "EXACT synonym"))
  ("CDV"
   ("cdv" "CDV" "CHEBI:3696" "cidofovir anhydrous" "RELATED synonym"
    "NCIT:C1600" "cidofovir" "synonym" "NCIT:C9540"
    "cyclophosphamide/Doxorubicin/Vincristine" "synonym" "NCIT:C9572"
    "cyclophosphamide/Dacarbazine/Vincristine" "synonym"))
  ("CEM"
   ("cem" "CEM" "CVCL:0207" "CCRF-CEM" "RELATED synonym" "NCIT:C71306"
    "certified emergency nurse" "synonym" "NCIT:C125601"
    "carboplatin/Etoposide/Melphalan regimen" "synonym" "NCIT:C153181"
    "contrast-enhanced mammography" "synonym"))
  ("CGF" ("cgf" "CGF" "NCIT:C48671" "core genotyping facility" "synonym"))
  ("CIGAR"
   ("cigar" "CIGAR" "NCIT:C116244" "cigar dosing unit" "synonym" "," "cigar"
    "NCIT:C1813" "cigar" "name"))
  ("CIRB"
   ("cirb" "CIRB" "UP:P56879" "Circulin-B" "RecName: Short" "NCIT:C70907"
    "central institutional review board" "synonym"))
  ("CIV"
   ("civ" "C-IV" "NCIT:C48677" "schedule IV substance" "synonym" "," "CIV"
    "NCIT:C16762" "cote d'Ivoire" "synonym" "NCIT:C16762" "cote d'Ivoire"
    "synonym" "NCIT:C38196" "continuous intravenous infusion" "synonym"
    "NCIT:C48677" "schedule IV substance" "synonym" "NCIT:C48677"
    "schedule IV substance" "synonym"))
  ("CLIA"
   ("clia" "CLIA" "NCIT:C83475" "clinical laboratory improvement act"
    "synonym"))
  ("CMD"
   ("cmd" "CMD" "Orphanet:97242" "Congenital muscular dystrophy"
    "EXACT synonym" "UP:P20370" "4-carboxymuconolactone decarboxylase"
    "RecName: Short" "UP:P00881" "4-carboxymuconolactone decarboxylase"
    "RecName: Short" "XFAM:PF02627 Family" "CMD" "ID" "NCIT:C84478"
    "coronary microvascular disease" "synonym" "NCIT:C84609"
    "campomelic dysplasia" "synonym" "NCIT:C159020"
    "GDC comorbidity method of diagnosis terminology" "synonym"))
  ("CME"
   ("cme" "CME" "CVCL:N586" "CME-1" "RELATED synonym" "GO:0072583"
    "clathrin-dependent endocytosis" "EXACT synonym"))
  ("CMOS"
   ("cmos" "C-MOS" "NCIT:C17327"
    "proto-oncogene serine/Threonine-protein kinase mos" "synonym"))
  ("COPAN"
   ("copan" "CoPAN" "Orphanet:397725"
    "COASY protein-associated neurodegeneration" "EXACT synonym"))
  ("CPAS"
   ("cpas" "CPAS" "NCIT:C62487" "computational proteomics analysis system"
    "synonym"))
  ("CPMP"
   ("cpmp" "cPMP" "CHEBI:59648" "precursor Z(1-)" "RELATED synonym"
    "CHEBI:60210" "precursor Z hydrate" "RELATED synonym" "CHEBI:52994"
    "precursor Z" "RELATED synonym"))
  ("CPS"
   ("cps" "CPS" "GO:0004088"
    "carbamoyl-phosphate synthase (glutamine-hydrolyzing) activity"
    "EXACT synonym" "NCIT:C69092" "centipoise" "synonym" "NCIT:C153563"
    "control preference scale" "synonym"))
  ("CV"
   ("cv" "C-V" "NCIT:C48679" "schedule V substance" "synonym" "," "CV"
    "UP:SL-0073 D" "Contractile vacuole" "SY" "NCIT:C9713"
    "cyclophosphamide/Etoposide regimen" "synonym" "NCIT:C16382" "cape verde"
    "synonym" "NCIT:C48679" "schedule V substance" "synonym" "NCIT:C48679"
    "schedule V substance" "synonym" "NCIT:C54631" "curriculum vitae" "synonym"
    "NCIT:C63904" "coefficient of variance" "synonym" "NCIT:C80251" "supper"
    "synonym" "NCIT:C102605" "cardiovascular system findings domain"
    "synonym"))
  ("CVD"
   ("cvd" "CVD" "EFO:0000319" "cardiovascular disease" "EXACT synonym"
    "NCIT:C156261" "cyclophosphamide/Vincristine/Dacarbazine regimen"
    "synonym"))
  ("CY" ("cy" "CY" "NCIT:C16480" "cyprus" "synonym"))
  ("CZ" ("cz" "CZ" "NCIT:C17668" "czechia" "synonym"))
  ("DABCO" ("dabco" "DABCO" "MESH:C007306" "triethylenediamine" "SY"))
  ("DAPI"
   ("dapi" "D-Api" "CHEBI:16689" "D-apiose" "RELATED synonym" "," "DAPI"
    "CHEBI:51231" "DAPI" "name" "MESH:C007293" "DAPI" "NM" "NCIT:C122989"
    "DAPI" "name"))
  ("DCV" ("dcv" "DCV" "NCIT:C114981" "daclatasvir" "synonym"))
  ("DFA"
   ("dfa" "DFA" "CHEBI:23716" "difluoroacetic acid" "RELATED synonym"
    "NCIT:C53467" "direct fluorescent antibody test" "synonym"))
  ("DHO" ("dho" "DHO" "CVCL:E562" "DHO" "name"))
  ("DIEA" ("diea" "DIEA" "MESH:C027070" "N,N-diisopropylethylamine" "SY"))
  ("DIPEA" ("dipea" "DIPEA" "MESH:C027070" "N,N-diisopropylethylamine" "SY"))
  ("DLS"
   ("dls" "DLS" "NCIT:C62329" "photon correlation spectroscopy" "synonym"))
  ("DMF"
   ("dmf" "DMF" "CHEBI:17741" "N,N-dimethylformamide" "RELATED synonym"
    "NCIT:C9592" "doxorubicin/Fluorouracil/Mitomycin" "synonym" "NCIT:C63670"
    "dimethyl fumarate" "synonym" "NCIT:C70877" "drug master file" "synonym"))
  ("DNJ" ("dnj" "DNJ" "CHEBI:44369" "duvoglustat" "RELATED synonym"))
  ("DOPE"
   ("dope" "DOPE" "CHEBI:60285" "dioleoyl phosphatidylethanolamine"
    "RELATED synonym"))
  ("DPPS" ("dpps" "DPPS" "MESH:C038694" "dipalmitoylphosphatidylserine" "SY"))
  ("DPSS" ("dpss" "DPSS" "CHEBI:73439" "Asp-Pro-Ser-Ser" "RELATED synonym"))
  ("DTA"
   ("dta" "D-TA" "GO:0043876" "D-threonine aldolase activity" "EXACT synonym"))
  ("DTI"
   ("dti" "DTI" "NCIT:C64862" "diffusion tensor imaging" "synonym"
    "NCIT:C64862" "diffusion tensor imaging" "synonym"))
  ("DTP"
   ("dtp" "DTP" "CHEBI:4302" "destosyl pyrazolate" "RELATED synonym"
    "UP:Q06143" "Mitochondrial dicarboxylate transporter" "AltName: Full"
    "UP:etc" "" "fake" "NCIT:C16009" "developmental therapeutics program"
    "synonym" "NCIT:C97122"
    "diphtheria toxoid/Tetanus toxoid/Inactivated pertussis vaccine"
    "synonym"))
  ("DUA" ("dua" "DUA" "NCIT:C153904" "duala language" "synonym"))
  ("DWI"
   ("dwi" "DWI" "NCIT:C111116" "diffusion weighted imaging" "synonym"
    "NCIT:C111116" "diffusion weighted imaging" "synonym"))
  ("DXB" ("dxb" "DX-B" "CVCL:A435" "SK-MEL-93 DX-B" "RELATED synonym"))
  ("EBOV" ("ebov" "EBOV" "NCIT:C112271" "ebola virus" "synonym"))
  ("EBV"
   ("ebv" "EBV" "NCIT:C14204" "epstein-barr virus" "synonym" "NCIT:C14204"
    "epstein-barr virus" "synonym" "NCIT:C14204" "epstein-barr virus"
    "synonym"))
  ("EDDHA"
   ("eddha" "EDDHA" "MESH:C011813"
    "ethylenediamine-N,N'-bis(2-hydroxyphenylacetic acid)" "SY"))
  ("EJ"
   ("ej" "EJ" "CVCL:7039" "EJ" "name" "CVCL:2443" "Ej138" "RELATED synonym"
    "CVCL:UI82" "MDA-EJ-1" "RELATED synonym"))
  ("ELISA" ("elisa" "ELISA" "NCIT:C16553" "ELISA" "name"))
  ("ELISPOT"
   ("elispot" "ELISPOT" "NCIT:C102632" "enzyme-linked immunosorbent spot assay"
    "synonym" "NCIT:C102632" "enzyme-linked immunosorbent spot assay"
    "synonym"))
  ("EMR"
   ("emr" "EMR" "NCIT:C17050" "electromagnetic radiation" "synonym"
    "NCIT:C45259" "electronic medical record" "synonym" "NCIT:C103242"
    "endoscopic mucosal resection" "synonym"))
  ("ENSEMBL" ("ensembl" "ensembl" "NCIT:C45763" "ensembl" "name"))
  ("EPYC" ("epyc" "EPYC" "HGNC:3053 G" "epiphycan" "Approved Symbol"))
  ("ERCC"
   ("ercc" "ERCC" "NCIT:C105959" "excision repair cross-complementing family"
    "synonym"))
  ("ESM"
   ("esm" "ESM" "NCIT:C116562" "direct electrocortical stimulation" "synonym"))
  ("EV"
   ("ev" "EV" "NCIT:C126877" "epidermodysplasia verruciformis" "synonym" ","
    "eV" "UO:0000266" "electronvolt" "EXACT synonym" "NCIT:C67278"
    "electronvolt" "synonym" "NCIT:C67278" "electronvolt" "synonym"))
  ("EVS"
   ("evs" "EVS" "UP:C6WFL3" "2-epi-valiolone synthase" "RecName: Short"
    "UP:Q08VU0" "2-epi-valiolone synthase" "RecName: Short" "NCIT:C43515"
    "NCI enterprise vocabulary services" "synonym"))
  ("EW"
   ("ew" "EW" "NCIT:C158199" "ewenki chinese" "synonym" "NCIT:C158199"
    "ewenki chinese" "synonym"))
  ("EZ" ("ez" "EZ" "FA:01768" "EZ subfamily" "ID"))
  ("FABD"
   ("fabd" "fabD" "HGNC:29622 G"
    "malonyl-CoA-acyl carrier protein transacylase" "Synonym"))
  ("FAQ"
   ("faq" "FAQ" "NCIT:C111381" "functional activities questionnaire" "synonym"
    "NCIT:C111381" "functional activities questionnaire" "synonym"))
  ("FASTA" ("fasta" "FASTA" "NCIT:C47845" "FASTA format" "synonym"))
  ("FCV" ("fcv" "FCV" "CHEBI:4974" "famciclovir" "RELATED synonym"))
  ("FFPE"
   ("ffpe" "FFPE" "NCIT:C143028" "formalin-fixed paraffin-embedded" "synonym"))
  ("FFU" ("ffu" "FFU" "NCIT:C75303" "focus forming unit" "synonym"))
  ("FNZ"
   ("fnz" "FNZ" "NCIT:C16581" "fibronectin" "synonym" "NCIT:C52484" "FN1"
    "synonym"))
  ("FOV" ("fov" "FOV" "NCIT:C74298" "field of view" "synonym"))
  ("FPLC"
   ("fplc" "FPLC" "NCIT:C80368" "fast protein liquid chromatography"
    "synonym"))
  ("FSHD"
   ("fshd" "FSHD" "Orphanet:269" "Facioscapulohumeral dystrophy"
    "EXACT synonym"))
  ("FSS"
   ("fss" "FSS" "NCIT:C74029" "fentanyl sublingual spray" "synonym"
    "NCIT:C106621" "fatigue severity scale" "synonym" "NCIT:C106621"
    "fatigue severity scale" "synonym"))
  ("FVC"
   ("fvc" "FVC" "EFO:0004312" "vital capacity" "EXACT synonym" "NCIT:C111361"
    "forced vital capacity" "synonym" "NCIT:C111361" "forced vital capacity"
    "synonym"))
  ("FWHM" ("fwhm" "FWHM" "NCIT:C94903" "full width at half maximum" "synonym"))
  ("GAC"
   ("gac" "GAC" "NCIT:C121204" "general adaptive composite score" "synonym"))
  ("GARD" ("gard" "Gard" "CVCL:V418" "Gard" "name"))
  ("GDD"
   ("gdd" "GDD" "Orphanet:53697" "Gnathodiaphyseal dysplasia" "EXACT synonym"))
  ("GFT" ("gft" "GFT" "CVCL:S936" "GFT" "name"))
  ("GG"
   ("gg" "GG" "NCIT:C64375" "guernsey" "synonym" "," "gG" "UP:P06484 H"
    "Envelope glycoprotein G" "RecName: Short" "UP:P81780 H"
    "Envelope glycoprotein G" "RecName: Short" "UP:P13290 H"
    "Envelope glycoprotein G" "RecName: Short"))
  ("GGO" ("ggo" "GGO" "NCIT:C113718" "ground glass opacity" "synonym"))
  ("GHA"
   ("gha" "GH-A" "UP:P12855" "Somatotropin-A" "AltName: Short" "," "GHA"
    "NCIT:C26330" "ghana" "synonym" "NCIT:C26330" "ghana" "synonym"))
  ("GLIDE"
   ("glide" "GLIDE" "NCIT:C148500"
    "anti-minor histocompatibility complex donor T-lymphocytes" "synonym"))
  ("GMB"
   ("gmb" "GMB" "NCIT:C16598" "the gambia" "synonym" "NCIT:C16598" "the gambia"
    "synonym"))
  ("GWAS"
   ("gwas" "GWAS" "NCIT:C93020" "whole genome association study" "synonym"))
  ("HAART"
   ("haart" "HAART" "NCIT:C16165" "highly active antiretroviral therapy"
    "synonym" "NCIT:C16165" "highly active antiretroviral therapy" "synonym"))
  ("HABA"
   ("haba" "HABA" "CHEBI:64341" "2-(4-hydroxyphenylazo)benzoic acid"
    "RELATED synonym" "MESH:C001413" "HABA" "NM"))
  ("HB"
   ("hb" "H-B" "HGNC:4632 G" "glutathione S-transferase mu 1" "Synonym" ","
    "HB" "CVCL:3694" "HB" "name" "UP:P08821" "DNA-binding protein HU 1"
    "AltName: Full" "UP:P0A3H2" "DNA-binding protein HU" "AltName: Full"
    "UP:P0A3H1" "DNA-binding protein HU" "AltName: Full" "UP:P0A3H0"
    "DNA-binding protein HU" "AltName: Full" "UP:P35588" "Hypodermin-B"
    "RecName: Short" "," "Hb" "EFO:0004509" "hemoglobin measurement"
    "EXACT synonym" "UP:P73925" "Group 1 truncated hemoglobin GlbN"
    "AltName: Short" "NCIT:C16676" "hemoglobin" "synonym"))
  ("HCC"
   ("hcc" "HCC" "EFO:0000182" "hepatocellular carcinoma" "EXACT synonym"
    "HGNC:24587 G" "family with sequence similarity 126 member A" "Synonym"
    "NCIT:C3099" "hepatocellular carcinoma" "synonym" "NCIT:C3099"
    "hepatocellular carcinoma" "synonym" "NCIT:C105624"
    "hollings cancer center" "synonym" "," "HcC" "UP:Q9NFL6"
    "Hemocyanin C chain" "RecName: Short"))
  ("HCOOH" ("hcooh" "H-COOH" "CHEBI:30751" "formic acid" "RELATED synonym"))
  ("HDV"
   ("hdv" "HDV" "CHEBI:59113" "3-heptadecylveratrole" "RELATED synonym"
    "NCIT:C93324" "hepatitis D virus" "synonym" "NCIT:C93324"
    "hepatitis D virus" "synonym"))
  ("HHPA"
   ("hhpa" "HHPA" "CHEBI:103210" "hexahydrophthalic anhydride"
    "RELATED synonym"))
  ("HIPAA"
   ("hipaa" "HIPAA" "NCIT:C62504"
    "health insurance portability and accountability act" "synonym"
    "NCIT:C62504" "health insurance portability and accountability act"
    "synonym"))
  ("HKG"
   ("hkg" "HKG" "NCIT:C16695" "hong kong" "synonym" "NCIT:C16695" "hong kong"
    "synonym"))
  ("HND"
   ("hnd" "HND" "UP:P17059" "Hydroxyneurosporene desaturase" "RecName: Short"
    "UP:Q01671" "Hydroxyneurosporene desaturase" "RecName: Short" "UP:Q9JPB5"
    "Hydroxyneurosporene desaturase" "RecName: Short" "NCIT:C16694" "honduras"
    "synonym" "NCIT:C16694" "honduras" "synonym" "NCIT:C40553"
    "tooth and nail syndrome" "synonym"))
  ("HPAI" ("hpai" "HPA-I" "MESH:C016679" "polyacrylamide" "SY"))
  ("HPIV" ("hpiv" "HPIV" "NCIT:C125641" "human parainfluenza virus" "synonym"))
  ("HRV"
   ("hrv" "HRV" "NCIT:C16474" "croatia" "synonym" "NCIT:C16474" "croatia"
    "synonym" "NCIT:C153950" "croatian language" "synonym"))
  ("HSV"
   ("hsv" "HSV" "NCIT:C112419" "herpes simplex virus" "synonym" "NCIT:C112419"
    "herpes simplex virus" "synonym"))
  ("HTD"
   ("htd" "HT-D" "CVCL:C524" "1218E" "RELATED synonym" "UP:P15167"
    "Snake venom metalloproteinase atrolysin-D" "AltName: Short"))
  ("HUCL"
   ("hucl" "HUCL" "HGNC:3314 G" "ELAV like RNA binding protein 3" "Synonym"))
  ("HW"
   ("hw" "HW" "CVCL:E628" "FH43" "RELATED synonym" "CHEBI:74058" "His-Trp"
    "RELATED synonym"))
  ("IACUC"
   ("iacuc" "IACUC" "NCIT:C19487" "institutional animal care and use committee"
    "synonym" "NCIT:C90398" "IACUC number" "synonym"))
  ("ICU"
   ("icu" "ICU" "NCIT:C53511" "intensive care unit" "synonym" "NCIT:C147938"
    "inventory of callous-unemotional traits" "synonym"))
  ("ICV" ("icv" "ICV" "NCIT:C92686" "between dinner and bedtime" "synonym"))
  ("IFIT"
   ("ifit" "IFIT" "FA:01813" "IFIT family" "ID" "NCIT:C123809"
    "interferon-induced protein with tetratricopeptide repeats family"
    "synonym"))
  ("IHC"
   ("ihc" "IHC" "NCIT:C23020" "immunohistochemistry staining method" "synonym"
    "NCIT:C23020" "immunohistochemistry staining method" "synonym"))
  ("IMG" ("img" "IMG" "CVCL:HC49" "IMG" "name"))
  ("INC" ("inc" "INC" "CVCL:QX03" "INC" "name"))
  ("INDEL" ("indel" "indel" "NCIT:C99752" "indel mutation" "synonym"))
  ("IRAV"
   ("irav" "IRAV" "HGNC:25649 G"
    "shiftless antiviral inhibitor of ribosomal frameshifting" "Synonym"
    "UP:Q9NUL5 H"
    "Shiftless antiviral inhibitor of ribosomal frameshifting protein"
    "AltName: Short"))
  ("IRB"
   ("irb" "IRB" "NCIT:C16741" "institutional review board" "synonym"
    "NCIT:C16741" "institutional review board" "synonym"))
  ("IRD"
   ("ird" "IRD" "Orphanet:772" "Infantile Refsum disease" "EXACT synonym"))
  ("IRES"
   ("ires" "IRES" "NCIT:C13716" "internal ribosome entry site" "synonym"))
  ("IRQ"
   ("irq" "IRQ" "NCIT:C16756" "iraq" "synonym" "NCIT:C16756" "iraq" "synonym"))
  ("ISH"
   ("ish" "ISH" "NCIT:C23022" "In situ hybridization staining method"
    "synonym"))
  ("ISI"
   ("isi" "ISI" "NCIT:C150114"
    "EDQM-HC intended site of administration terminology" "synonym"))
  ("ISL"
   ("isl" "ISL" "NCIT:C16704" "iceland" "synonym" "NCIT:C16704" "iceland"
    "synonym" "NCIT:C82848" "icelandic language" "synonym"))
  ("ISR"
   ("isr" "ISR" "NCIT:C16760" "israel" "synonym" "NCIT:C16760" "israel"
    "synonym"))
  ("IUPAC"
   ("iupac" "IUPAC" "NCIT:C82878"
    "international union of pure and applied chemistry" "synonym"))
  ("IVA"
   ("iva" "IVA" "NCIT:C133425"
    "pathologic stage IVA esophageal adenocarcinoma AJCC v8" "synonym"
    "NCIT:C133541"
    "pathologic stage IVA esophageal squamous cell carcinoma AJCC v8" "synonym"
    "NCIT:C134524" "stage IVA hepatocellular carcinoma AJCC v8" "synonym"
    "NCIT:C134752" "stage IVA hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C139754" "stage IVA cervical cancer AJCC v8" "synonym" "NCIT:C140174"
    "stage IVA prostate cancer AJCC v8" "synonym" "NCIT:C140425"
    "stage IVA bladder cancer AJCC v8" "synonym" "NCIT:C140985"
    "stage IVA thyroid gland papillary carcinoma AJCC v8" "synonym"))
  ("IVIG"
   ("ivig" "IVIG" "NCIT:C121331" "intravenous immunoglobulin therapy"
    "synonym"))
  ("JD"
   ("jd" "JD" "CVCL:F267" "GM02408" "RELATED synonym" "NCIT:C71361"
    "doctor of law" "synonym"))
  ("JJ" ("jj" "JJ" "CVCL:D605" "JJ012" "RELATED synonym"))
  ("KEMI" ("kemi" "Kem-I" "CVCL:7199" "Kem-BL" "RELATED synonym"))
  ("KV"
   ("kv" "K-V" "CHEBI:73607" "Lys-Val" "RELATED synonym" "," "kV" "UO:0000248"
    "kilovolt" "EXACT synonym"))
  ("LAC"
   ("lac" "LAC" "CHEBI:90184" "LAC dye" "RELATED synonym" "NCIT:C70620"
    "lupus anticoagulant antibody" "synonym" "NCIT:C113423"
    "labor after cesarean" "synonym" "NCIT:C113423" "labor after cesarean"
    "synonym" "," "Lac" "CHEBI:17716" "lactose" "RELATED synonym"))
  ("LACT" ("lact" "LACT" "XFAM:PF02450 Family" "LCAT" "PI"))
  ("LBS" ("lbs" "LBS" "NCIT:C99177" "liquid-based cytology" "synonym"))
  ("LCMS" ("lcms" "LC-MS" "CVCL:1655" "RERF-LC-MS" "RELATED synonym"))
  ("LDD"
   ("ldd" "LDD" "Orphanet:65285" "Lhermitte-Duclos disease" "EXACT synonym"))
  ("LFD" ("lfd" "LFD" "CHEBI:73571" "Leu-Phe-Asp" "RELATED synonym"))
  ("LIMD"
   ("limd" "LIMD" "Orphanet:254857" "Lethal infantile mitochondrial myopathy"
    "EXACT synonym"))
  ("LLI" ("lli" "LL-I" "UP:C0HK42" "Lasioglossin-1" "RecName: Short"))
  ("LOD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("LTR" ("ltr" "LTR" "NCIT:C13251" "long terminal repeat" "synonym"))
  ("LX"
   ("lx" "LX" "CHEBI:6497" "lipoxin" "RELATED synonym" "NCIT:C48780"
    "LX stage finding" "synonym" "," "lx" "UO:0000116" "lux" "EXACT synonym"
    "NCIT:C42561" "lux" "synonym" "NCIT:C42561" "lux" "synonym" "NCIT:C42561"
    "lux" "synonym" "NCIT:C42561" "lux" "synonym"))
  ("MAPE"
   ("mape" "MAPE" "HGNC:9336 G" "preferentially expressed antigen in melanoma"
    "Previous Symbol" "NCIT:C127929" "PRAME" "synonym"))
  ("MDMA"
   ("mdma" "MDMA" "CHEBI:1391" "3,4-methylenedioxymethamphetamine"
    "RELATED synonym" "NCIT:C61081" "3,4-methylenedioxymethamphetamine"
    "synonym" "NCIT:C75359" "3,4-methylenedioxymethamphetamine measurement"
    "synonym"))
  ("MFA"
   ("mfa" "MFA" "NCIT:C71371" "master of fine arts" "synonym" "," "mfa"
    "XFAM:PF08842 Family" "mfa2" "PI"))
  ("MFI"
   ("mfi" "MFI" "NCIT:C54719" "multidimensional fatigue inventory" "synonym"
    "NCIT:C96687" "median fluorescence intensity" "synonym"))
  ("MFR"
   ("mfr" "MFR" "HGNC:9662 G" "signal regulatory protein alpha" "Synonym"
    "UP:P16092 M" "Fibroblast growth factor receptor 1" "AltName: Full"
    "UP:Q04589" "Fibroblast growth factor receptor 1" "AltName: Full"
    "NCIT:C37271" "tyrosine-protein phosphatase non-receptor type substrate 1"
    "synonym" "NCIT:C51031" "SIRPA" "synonym"))
  ("MGI" ("mgi" "MGI" "NCIT:C48299" "mouse genome informatics" "synonym"))
  ("MIAT"
   ("miat" "MIAT" "HGNC:33425 R" "myocardial infarction associated transcript"
    "Approved Symbol"))
  ("MISC" ("misc" "misc" "NCIT:C69023" "miscellaneous" "synonym"))
  ("MKS"
   ("mks" "MKS" "HGNC:7121 G" "MKS transition zone complex subunit 1"
    "Previous Symbol" "NCIT:C42563" "MKS system" "synonym"))
  ("MLI"
   ("mli" "MLI" "NCIT:C16816" "mali" "synonym" "NCIT:C16816" "mali" "synonym"))
  ("MNA"
   ("mna" "MNA" "NCIT:C156666" "microneedle drug delivery system" "synonym"))
  ("MNI" ("mni" "MNI" "NCIT:C154032" "meitei language" "synonym"))
  ("MSA"
   ("msa" "MSA" "Orphanet:2598"
    "Mitochondrial myopathy and sideroblastic anemia" "EXACT synonym"
    "UP:P01346" "Insulin-like growth factor II" "AltName: Short" "UP:P08997"
    "Malate synthase A" "RecName: Short" "NCIT:C50938" "TPO" "synonym"
    "NCIT:C154037" "malay language" "synonym"))
  ("MSIR" ("msir" "MSir" "NCIT:C669" "morphine sulfate" "synonym"))
  ("MSSM" ("mssm" "MSSM" "CHEBI:16086" "mycothione" "RELATED synonym"))
  ("MTK"
   ("mtk" "MT-K" "UP:P25860 C" "Metallothionein-like protein 2A"
    "RecName: Short"))
  ("MTS"
   ("mts" "MTS" "HGNC:11817 G" "translocase of inner mitochondrial membrane 8A"
    "Synonym" "UP:Q9JMH3 M" "Sialidase-2" "AltName: Short"
    "XFAM:PF05175 Domain" "MTS" "ID" "NCIT:C14086"
    "mitochondrial import sequence" "synonym"))
  ("MX"
   ("mx" "MX" "CVCL:KC00" "MX" "name" "NCIT:C16850" "mexico" "synonym"
    "NCIT:C48704" "MX stage finding" "synonym" "NCIT:C113310" "MX1" "synonym"
    "," "Mx" "NCIT:C68793" "maxwell" "synonym" "NCIT:C68793" "maxwell"
    "synonym"))
  ("NCBI"
   ("ncbi" "NCBI" "NCIT:C45799" "national center for biotechnology information"
    "synonym"))
  ("NCI"
   ("nci" "NCI" "NCIT:C19202" "national cancer institute" "synonym"
    "NCIT:C19202" "national cancer institute" "synonym" "," "nCi" "NCIT:C67352"
    "nanocurie" "synonym" "NCIT:C67352" "nanocurie" "synonym" "NCIT:C67352"
    "nanocurie" "synonym" "NCIT:C67352" "nanocurie" "synonym"))
  ("NDV"
   ("ndv" "NDV" "NCIT:C93023" "newcastle disease virus" "synonym" "NCIT:C93023"
    "newcastle disease virus" "synonym"))
  ("NEM"
   ("nem" "NEM" "CHEBI:44485" "N-ethylmaleimide" "RELATED synonym"
    "Orphanet:607" "Nemaline myopathy" "EXACT synonym"))
  ("NHLBI"
   ("nhlbi" "NHLBI" "NCIT:C82613" "national heart, lung, and blood institute"
    "synonym"))
  ("NICHD"
   ("nichd" "NICHD" "NCIT:C19754"
    "national institute of child health and human development" "synonym"))
  ("NK"
   ("nk" "NK" "CVCL:1D01" "Novikoff-Hepatoma" "RELATED synonym" "UP:Q57849"
    "Nucleoside kinase" "RecName: Short" "UP:O27587" "Nucleoside kinase"
    "RecName: Short" "UP:Q9HJT3" "Nucleoside kinase" "RecName: Short"
    "NCIT:C12536" "natural killer cell" "synonym" "NCIT:C12741"
    "natural killer cell" "synonym" "NCIT:C12741" "natural killer cell"
    "synonym" "NCIT:C23672" "natural killer cells" "synonym"))
  ("NLLS" ("nlls" "N-L-L-S" "CHEBI:73409" "Asn-Leu-Leu-Ser" "RELATED synonym"))
  ("NNN"
   ("nnn" "NNN" "CHEBI:80502" "N'-Nitrosonornicotine" "RELATED synonym"
    "NCIT:C44414" "nitrosonornicotine" "synonym"))
  ("NPV"
   ("npv" "NPV" "NCIT:C41390" "negative predictive value of diagnostic test"
    "synonym"))
  ("NRCE" ("nrce" "NRCE" "CVCL:9Y58" "NRCE" "name"))
  ("NRON"
   ("nron" "NRON" "HGNC:37079 R" "non-coding repressor of NFAT"
    "Approved Symbol"))
  ("NZO" ("nzo" "NZO" "NCIT:C14701" "NZO" "name"))
  ("OD"
   ("od" "OD" "NCIT:C39384" "doctor of optometry" "synonym" "NCIT:C73681"
    "unit of optical density" "synonym" "NCIT:C119333" "right eye" "synonym"))
  ("ONS" ("ons" "ONS" "NCIT:C20842" "oncology nurse specialist" "synonym"))
  ("ORFX"
   ("orfx" "ORFX" "HGNC:1104 G" "bromodomain containing 3" "Synonym"
    "UP:P93312 C" "Uncharacterized tatC-like protein ymf16" "AltName: Full"
    "NCIT:C97398" "BRD3" "synonym" "," "orf-X" "XFAM:PF04160 Family"
    "borrelia orfX" "PI" "," "orfX" "UP:Q48724"
    "UPF0177 protein in abiGi 5'region" "AltName: Full" "UP:P50100"
    "Uncharacterized protein MK0525" "AltName: Full"))
  ("ORFY"
   ("orfy" "ORFY" "UP:P38943" "Uncharacterized transporter CKL_3017"
    "AltName: Full" "UP:etc" "" "fake"))
  ("ORI"
   ("ori" "ORI" "NCIT:C13335" "origin of replication" "synonym" "NCIT:C154069"
    "odia language" "synonym" "," "Ori-" "CVCL:JE64" "Ori-" "name"))
  ("OSD" ("osd" "OS-D" "XFAM:PF03392 Family" "OS-D" "ID"))
  ("OTOGL" ("otogl" "OTOGL" "HGNC:26901 G" "otogelin like" "Approved Symbol"))
  ("PASTA"
   ("pasta" "PAST-A" "UP:Q9Y2W3 H" "Proton-associated sugar transporter A"
    "RecName: Short" "UP:Q8BIV7 M" "Proton-associated sugar transporter A"
    "RecName: Short" "UP:Q8K4S3" "Proton-associated sugar transporter A"
    "RecName: Short" "," "PASTA" "XFAM:PF03793 Domain" "PASTA" "ID"))
  ("PBB" ("pbb" "PBB" "CHEBI:134049" "polybromobiphenyl" "RELATED synonym"))
  ("PBCA"
   ("pbca" "PBCA" "CHEBI:61239" "poly(butyl 2-cyanoacrylate) polymer"
    "RELATED synonym" "CHEBI:53497" "poly(butyl 2-cyanoacrylate) macromolecule"
    "RELATED synonym"))
  ("PBM"
   ("pbm" "PBM" "NCIT:C9609" "bleomycin/Cisplatin/Methotrexate regimen"
    "synonym"))
  ("PD"
   ("pd" "PD" "CVCL:8401" "PD PaCa" "RELATED synonym" "CHEBI:74756" "Pro-Asp"
    "RELATED synonym" "UP:SL-0208 D" "Plasmodesma" "SY" "NCIT:C35571"
    "progressive disease" "synonym" "NCIT:C142794"
    "lugano lymphoma response classification progressive disease by CT"
    "synonym" "NCIT:C142798"
    "lugano lymphoma response classification progressive disease by PET"
    "synonym" "NCIT:C159089" "GDC primary diagnosis terminology" "synonym"
    "NCIT:C159622" "RECIL PD" "synonym" "NCIT:C159622" "RECIL PD" "synonym"
    "NCIT:C159949" "global progressive disease" "synonym" "NCIT:C159955"
    "global progressive disease in skin" "synonym" "NCIT:C159961"
    "global progressive disease in lymph nodes" "synonym" "NCIT:C159967"
    "global progressive disease in viscera" "synonym" "NCIT:C159975"
    "global progressive disease in blood" "synonym" "," "Pd" "NCIT:C95184"
    "palladium" "synonym"))
  ("PEF"
   ("pef" "PEF" "CHEBI:55310" "poly(2,5-ethylene furandicarboxylate)"
    "RELATED synonym" "NCIT:C41372" "peak expiratory flow" "synonym"
    "NCIT:C41372" "peak expiratory flow" "synonym"))
  ("PHN" ("phn" "PHN" "NCIT:C117084" "post-herpetic neuralgia" "synonym"))
  ("PI"
   ("pi" "PI" "CHEBI:74790" "Pro-Ile" "RELATED synonym" "CHEBI:53806"
    "phenyl isocyanate" "RELATED synonym" "CHEBI:28874" "phosphatidylinositol"
    "RELATED synonym" "CHEBI:61484" "polyimide polymer" "RELATED synonym"
    "HGNC:8941 G" "serpin family A member 1" "Previous Symbol" "NCIT:C743"
    "phosphatidylinositol" "synonym" "NCIT:C19924" "principal investigator"
    "synonym" "NCIT:C28042" "proliferative index" "synonym" "NCIT:C101388"
    "pulsatility index" "synonym" "NCIT:C105011" "SERPINA1" "synonym"
    "NCIT:C105167" "STANDARDS pain intensity questionnaire" "synonym"
    "NCIT:C105167" "STANDARDS pain intensity questionnaire" "synonym"
    "NCIT:C129914" "pancreatic icosapeptide" "synonym" "," "Pi" "CHEBI:35780"
    "phosphate ion" "RELATED synonym" "FA:01674" "Pi family" "ID" "NCIT:C68573"
    "pebi" "synonym" "," "pI" "NCIT:C54157" "isoelectric point" "synonym" ","
    "pi" "UO:0000188" "pi" "name"))
  ("PIPES"
   ("pipes" "PIPES" "CHEBI:39033" "PIPES" "name" "MESH:C008916"
    "piperazine-N,N'-bis(2-ethanesulfonic acid)" "SY"))
  ("PISCES" ("pisces" "Pisces" "CVCL:E022" "PAE-iPS-12" "RELATED synonym"))
  ("PKDL"
   ("pkdl" "PKDL" "HGNC:9011 G"
    "polycystin 2 like 1, transient receptor potential cation channel"
    "Previous Symbol"))
  ("PME"
   ("pme" "PME" "Orphanet:98261" "Progressive myoclonic epilepsy"
    "EXACT synonym" "HGNC:2482 G" "cystatin B" "Synonym" "NCIT:C128871" "CSTB"
    "synonym"))
  ("PNS"
   ("pns" "PNS" "BTO:0001028" "peripheral nervous system" "RELATED synonym"
    "NCIT:C21025" "peripheral nerve stimulation" "synonym"))
  ("POCA"
   ("poca" "POCA" "MESH:C033891"
    "ethyl 2-(5-(4-chlorophenyl)pentyl)oxiran-2-carboxylate" "SY" "NCIT:C9514"
    "cytarabine/Doxorubicin/Prednisone/Vincristine" "synonym"))
  ("PRISM"
   ("prism" "PRISM" "HGNC:9350 G" "PR/SET domain 6" "Synonym" "NCIT:C153554"
    "promoting resilience in stress management" "synonym"))
  ("PRKN"
   ("prkn" "PRKN" "HGNC:8607 G" "parkin RBR E3 ubiquitin protein ligase"
    "Approved Symbol" "NCIT:C90312" "PRKN" "name" "NCIT:C90313"
    "E3 ubiquitin-protein ligase parkin" "synonym"))
  ("PTFE"
   ("ptfe" "Ptfe" "CHEBI:53251" "poly(tetrafluoroethylene)" "RELATED synonym"))
  ("PVDF" ("pvdf" "PVDF" "MESH:C024865" "polyvinylidene fluoride" "SY"))
  ("PWK" ("pwk" "PWK" "NCIT:C37429" "PWK mouse" "synonym"))
  ("PXI" ("pxi" "PXI" "UP:P81863" "Pardaxin-1" "AltName: Short"))
  ("QIAGEN" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("QTL" ("qtl" "QTL" "NCIT:C113414" "quantitative trait locus" "synonym"))
  ("QUARK" ("quark" "quark" "CHEBI:36346" "quark" "name"))
  ("RCT" ("rct" "RCT" "XFAM:PF01137 Domain" "RTC" "PI"))
  ("RFU"
   ("rfu" "RFU" "NCIT:C77535" "relative fluorescence intensity unit" "synonym"
    "NCIT:C77535" "relative fluorescence intensity unit" "synonym"))
  ("RGD"
   ("rgd" "RGD" "NCIT:C13288" "RGD motif" "synonym" "NCIT:C74914"
    "rat genome database" "synonym"))
  ("RLT" ("rlt" "RLT" "NCIT:C123282" "regimen-limiting toxicity" "synonym"))
  ("RMS"
   ("rms" "RMS" "BTO:0003412" "rostral migratory stream" "RELATED synonym"
    "CVCL:W527" "RMS" "name" "NCIT:C73485" "root mean square" "synonym"
    "NCIT:C156641" "reference member state" "synonym"))
  ("RNN"
   ("rnn" "RNN" "HGNC:12324 R" "tRNA-Asn (anticodon GTT) 2-1"
    "Previous Symbol"))
  ("RSI"
   ("rsi" "RSI" "NCIT:C114480" "radiosensitivity index" "synonym"
    "NCIT:C143150" "restriction spectrum imaging" "synonym"))
  ("RTI" ("rti" "RTI" "UP:P80301" "Defensin-like protein 4" "AltName: Full"))
  ("SERM"
   ("serm" "SERM" "NCIT:C1821" "selective estrogen receptor modulator"
    "synonym"))
  ("SHAPE"
   ("shape" "SHAPE" "NCIT:C25677" "shape" "synonym" "NCIT:C25677" "shape"
    "synonym" "NCIT:C97513" "remetinostat" "synonym" "," "shape" "NCIT:C25677"
    "shape" "name"))
  ("SIAE"
   ("siae" "SIAE" "HGNC:18187 G" "sialic acid acetylesterase" "Approved Symbol"
    "NCIT:C91283" "SIAE" "name"))
  ("SILAC"
   ("silac" "SILAC" "NCIT:C161804"
    "stable isotope labeling with amino acids in cell culture" "synonym"))
  ("SJ"
   ("sj" "SJ" "UP:SL-0246 D" "Septate junction" "SY" "NCIT:C95099"
    "subject stages domain" "synonym"))
  ("SMILES"
   ("smiles" "SMILES" "NCIT:C54684"
    "simplified molecular input line entry specification" "synonym"
    "NCIT:C54684" "simplified molecular input line entry specification"
    "synonym"))
  ("SMK" ("smk" "SmK" "UP:E2S063" "Kappa-stichotoxin-Smt1a" "AltName: Short"))
  ("SNR" ("snr" "SNR" "NCIT:C94983" "signal to noise ratio" "synonym"))
  ("SOT" ("sot" "SOT" "NCIT:C154127" "sesotho language" "synonym"))
  ("SSV"
   ("ssv" "SSV" "HGNC:8800 G" "platelet derived growth factor subunit B"
    "Synonym" "NCIT:C51520" "PDGFB" "synonym"))
  ("SVC"
   ("svc" "SVC" "NCIT:C111315" "slow vital capacity" "synonym" "NCIT:C111315"
    "slow vital capacity" "synonym"))
  ("SVR"
   ("svr" "SVR" "CVCL:6455" "SVR" "name" "NCIT:C119248"
    "systemic vascular resistance" "synonym" "NCIT:C120598"
    "sustained virologic response" "synonym" "NCIT:C120598"
    "sustained virologic response" "synonym"))
  ("SWISS"
   ("swiss" "swiss" "NCIT:C14425" "swiss mice (sdc)" "synonym" "NCIT:C14484"
    "swiss" "name"))
  ("SWNT"
   ("swnt" "SWNT" "CHEBI:50595" "single-walled carbon nanotube"
    "RELATED synonym" "NCIT:C62392" "single-walled nanotube" "synonym"))
  ("SX"
   ("sx" "SX" "NCIT:C101226" "sint maarten (Dutch part)" "synonym"
    "NCIT:C111068" "SX" "name"))
  ("SZ"
   ("sz" "SZ" "NCIT:C17179" "swaziland" "synonym" "NCIT:C48540"
    "syringe dosing unit" "synonym"))
  ("TAE" ("tae" "TAE" "NCIT:C15917" "arterial embolization" "synonym"))
  ("TCGA" ("tcga" "TCGA" "NCIT:C98269" "the cancer genome atlas" "synonym"))
  ("TCID"
   ("tcid" "TCID" "NCIT:C67449" "tissue culture infection dose" "synonym"
    "NCIT:C70486" "unit of tissue culture infective dose" "synonym"
    "NCIT:C159126" "GDC tumor code ID terminology" "synonym"))
  ("TCT" ("tct" "TCT" "NCIT:C80365" "thrombin time" "synonym"))
  ("TIFF" ("tiff" "TIFF" "NCIT:C70631" "TIFF" "name"))
  ("TMHMM" ("tmhmm" "TmHMM" "NCIT:C49038" "TmHMM algorithm" "synonym"))
  ("TMM" ("tmm" "TMM" "CVCL:1894" "TMM" "name"))
  ("TREX" ("trex" "TREX" "FA:01185" "TREX family" "ID"))
  ("TRIZOL" ("trizol" "trizol" "MESH:C411644" "trizol" "NM"))
  ("TSV" ("tsv" "TsV" "UP:P46115" "Alpha-toxin Ts5" "AltName: Short"))
  ("UCSC"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("UMI"
   ("umi" "UMI" "NCIT:C20112" "united states minor outlying islands"
    "synonym"))
  ("URD"
   ("urd" "URD" "NCIT:C154188" "urdu language" "synonym" "," "Urd"
    "CHEBI:16704" "uridine" "RELATED synonym" "," "urd" "NCIT:C922" "uridine"
    "synonym"))
  ("URL"
   ("url" "URL" "NCIT:C42743" "uniform resource locator" "synonym"
    "NCIT:C95829" "URL data type" "synonym" "NCIT:C95829" "URL data type"
    "synonym"))
  ("UTI"
   ("uti" "UTI" "HGNC:453 G" "alpha-1-microglobulin/bikunin precursor"
    "Synonym" "NCIT:C50791" "urinary tract infection" "synonym" "NCIT:C50791"
    "urinary tract infection" "synonym" "NCIT:C102851" "ulinastatin"
    "synonym"))
  ("UUU" ("uuu" "Uuu" "CHEBI:33368" "roentgenium atom" "RELATED synonym"))
  ("VCAP"
   ("vcap" "VCAP" "CVCL:2235" "VCaP" "name" "NCIT:C9549" "CHOP regimen"
    "synonym" "," "VCaP" "EFO:0007752" "VCaP" "name"))
  ("VERO" ("vero" "VERO" "CVCL:0059" "Vero" "name"))
  ("VIPR"
   ("vipr" "VIP-R" "UP:Q90308" "Vasoactive intestinal polypeptide receptor"
    "RecName: Short" "UP:Q91085" "Vasoactive intestinal polypeptide receptor"
    "RecName: Short" "," "VIPR" "NCIT:C21443"
    "vasoactive intestinal polypeptide receptor 1" "synonym" "NCIT:C51482"
    "VIPR1" "synonym"))
  ("VZV"
   ("vzv" "VZV" "NCIT:C71091" "varicella zoster virus" "synonym" "NCIT:C71091"
    "varicella zoster virus" "synonym"))
  ("WAG"
   ("wag" "WAG" "CVCL:1H01" "WAG" "name" "CHEBI:73691" "Trp-Ala-Gly"
    "RELATED synonym"))
  ("WB"
   ("wb" "WB" "NCIT:C14547" "WB mouse" "synonym" "," "Wb" "UO:0000226" "weber"
    "EXACT synonym" "NCIT:C42556" "weber" "synonym" "NCIT:C42556" "weber"
    "synonym" "NCIT:C42556" "weber" "synonym" "NCIT:C42556" "weber" "synonym"))
  ("WBC"
   ("wbc" "WBC" "EFO:0004308" "leukocyte count" "EXACT synonym" "NCIT:C12529"
    "leukocytes" "synonym" "NCIT:C23463" "leukocytes" "synonym" "NCIT:C51948"
    "leukocyte count" "synonym" "NCIT:C51948" "leukocyte count" "synonym"))
  ("WH"
   ("wh" "WH" "CVCL:0C39" "WH" "name" "NCIT:C14549" "WH mouse" "synonym"
    "NCIT:C76191" "WH, rat strain" "synonym" "," "Wh" "UO:0000223" "watt-hour"
    "EXACT synonym" "NCIT:C70437" "watt hour" "synonym"))
  ("XF" ("xf" "XF" "CVCL:6E64" "XF" "name"))
  ("XL"
   ("xl" "XL" "NCIT:C123767" "palmyra atoll" "synonym" "NCIT:C123767"
    "palmyra atoll" "synonym"))
  ("XML"
   ("xml" "XML" "NCIT:C45967" "extensible markup language" "synonym"
    "NCIT:C157492" "xinmailong" "synonym"))
  ("XP"
   ("xp" "XP" "Orphanet:910" "Xeroderma pigmentosum" "EXACT synonym"
    "NCIT:C123768" "paracel islands" "synonym" "NCIT:C123768" "paracel islands"
    "synonym" "NCIT:C141506" "capecitabine/Cisplatin regimen" "synonym" ","
    "Xp" "NCIT:C13565" "Xp" "name"))
  ("YFV"
   ("yfv" "YFV" "NCIT:C97156" "yellow fever virus" "synonym" "NCIT:C97156"
    "yellow fever virus" "synonym"))
  ("YM"
   ("ym" "YM" "CVCL:IU39" "YM" "name" "CHEBI:134468" "Tyr-Met"
    "RELATED synonym" "," "ym" "NCIT:C71214" "yoctometer" "synonym"))
  ("YPD" ("ypd" "YPD" "EFO:0007025" "YEPD" "EXACT synonym"))
  ("ZEBOV"
   ("zebov" "ZEBOV" "NCIT:C132420" "zaire ebolavirus measurement" "synonym"))
  ("ZG"
   ("zg" "ZG" "CVCL:R820" "ZG" "name" "," "zg" "NCIT:C64556" "zeptogram"
    "synonym"))
  ("ZIKA" ("zika" "zika" "NCIT:C128423" "zika virus infection" "synonym"))
  ("ZIKV" ("zikv" "ZIKV" "NCIT:C128553" "zika virus" "synonym"))
  ("BGI" ("bgi" "BG-I" "CVCL:6570" "BG1" "RELATED synonym"))
  ("UV"
   ("uv" "UV" "NCIT:C17231" "ultraviolet radiation" "synonym" "," "uV"
    "UO:0000249" "microvolt" "EXACT synonym" "NCIT:C71175" "microvolt"
    "synonym" "NCIT:C71175" "microvolt" "synonym" "NCIT:C71175" "microvolt"
    "synonym")))
)

(defparameter *all-lower-drum-terms* 
'(("abaecin"
   ("abaecin" "abaecin" "UP:P15450" "Abaecin" "RecName: Full" "UP:P81463"
    "Abaecin" "RecName: Full"))
  ("absorbance"
   ("absorbance" "absorbance" "NCIT:C45995" "energy absorption" "synonym"))
  ("acetosyringone"
   ("acetosyringone" "Acetosyringone" "CHEBI:2404" "acetosyringone" "name" ","
    "acetosyringone" "MESH:C051667" "acetosyringone" "NM"))
  ("adipocytokine"
   ("adipocytokine" "adipocytokine" "NCIT:C123810" "adipokine" "synonym"))
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
  ("agar" ("agar" "agar" "CHEBI:2509" "agar" "name"))
  ("aj"
   ("aj" "AJ" "CVCL:3019" "Marcus" "RELATED synonym" "CVCL:1698" "SK-MG-1"
    "RELATED synonym" "EFO:0001327" "A/J" "EXACT synonym" "UP:SL-0009 D"
    "Adherens junction" "SY" "NCIT:C13736" "zonula adherens" "synonym"))
  ("algorithm" ("algorithm" "algorithm" "NCIT:C16275" "algorithm" "name"))
  ("allantoin"
   ("allantoin" "ALLANTOIN" "NCIT:C74277" "allantoin" "synonym" "," "Allantoin"
    "CHEBI:15676" "allantoin" "name" "," "allantoin" "NCIT:C74277" "allantoin"
    "name"))
  ("allyl" ("allyl" "allyl" "CHEBI:30361" "allyl group" "EXACT synonym"))
  ("alphacoronavirus"
   ("alphacoronavirus" "ALPHACORONAVIRUS" "NCIT:C119319" "alphacoronavirus"
    "synonym" "," "alphacoronavirus" "NCIT:C119319" "alphacoronavirus" "name"))
  ("alphavirus"
   ("alphavirus" "ALPHAVIRUS" "NCIT:C112030" "alphavirus" "synonym" ","
    "alphavirus" "XFAM:PF01589 Family" "alpha E1 glycop" "WK"
    "XFAM:PF00943 Family" "alpha E2 glycop" "WK" "XFAM:PF01563 Family"
    "alpha E3 glycop" "WK" "NCIT:C112030" "alphavirus" "name"))
  ("alveoli"
   ("alveoli" "alveoli" "BTO:0000060" "alveolus" "RELATED synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C12986" "alveolus" "synonym"
    "NCIT:C12986" "alveolus" "synonym" "NCIT:C23916" "alveoli" "name"))
  ("aminomethane"
   ("aminomethane" "aminomethane" "CHEBI:16830" "methylamine" "RELATED synonym"
    "MESH:C027451" "methylamine" "SY"))
  ("amygdala"
   ("amygdala" "AMYGDALA" "NCIT:C12440" "amygdala" "synonym" "," "amygdala"
    "BTO:0001042" "amygdala" "name" "NCIT:C12440" "amygdala" "name"
    "NCIT:C23374" "amygdala" "name"))
  ("analyte" ("analyte" "analyte" "NCIT:C128639" "analyte" "name"))
  ("aneuploidy" ("aneuploidy" "aneuploidy" "NCIT:C2873" "aneuploidy" "name"))
  ("anhydrotetracycline"
   ("anhydrotetracycline" "Anhydrotetracycline" "CHEBI:17146"
    "anhydrotetracycline" "name" "CHEBI:27902" "tetracycline" "RELATED synonym"
    "," "anhydrotetracycline" "CHEBI:58032" "anhydrotetracycline zwitterion"
    "RELATED synonym" "MESH:C016229" "4-epianhydrotetracycline" "SY"))
  ("annum" ("annum" "annum" "NCIT:C29848" "year" "synonym"))
  ("anorexia"
   ("anorexia" "anorexia" "NCIT:C2875" "anorexia" "name" "NCIT:C57118"
    "anorexia, CTCAE" "synonym" "NCIT:C57118" "anorexia, CTCAE" "synonym"))
  ("antigen"
   ("antigen" "ANTIGEN" "NCIT:C159004" "GDC antigen terminology" "synonym" ","
    "antigen" "CHEBI:59132" "antigen" "name" "NCIT:C268" "antigen" "name"))
  ("antiserum" ("antiserum" "antiserum" "NCIT:C571" "antiserum" "name"))
  ("aortitis"
   ("aortitis" "Aortitis" "EFO:1000816" "aortitis" "name" "," "aortitis"
    "NCIT:C97085" "aortitis" "name"))
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
  ("arb"
   ("arb" "ARB" "UP:Q54NZ7" "Aldose reductase B" "RecName: Short" "NCIT:C66930"
    "angiotensin II receptor antagonist" "synonym" "NCIT:C66930"
    "angiotensin II receptor antagonist" "synonym"))
  ("arbidol"
   ("arbidol" "arbidol" "CHEBI:134730" "umifenovir" "RELATED synonym"
    "MESH:C086979" "arbidol" "NM"))
  ("archaellum"
   ("archaellum" "archaellum" "GO:0097589" "archaeal-type flagellum"
    "EXACT synonym"))
  ("archenteron"
   ("archenteron" "archenteron" "BTO:0001696" "archenteron" "name"))
  ("arrhythmia"
   ("arrhythmia" "arrhythmia" "EFO:0004269" "cardiac arrhythmia"
    "EXACT synonym" "NCIT:C2881" "arrhythmia" "name"))
  ("arsenide"
   ("arsenide" "arsenide" "CHEBI:29752" "arsenide(3-)" "RELATED synonym"))
  ("asc"
   ("asc" "ASC" "HGNC:16608 G" "PYD and CARD domain containing" "Synonym"
    "UP:P08842 H" "Steryl-sulfatase" "AltName: Short" "UP:P50427 M"
    "Steryl-sulfatase" "AltName: Short" "UP:P15589" "Steryl-sulfatase"
    "AltName: Short" "XFAM:PF00858 Family" "ASC" "ID" "NCIT:C75586" "STS"
    "synonym" "NCIT:C75587" "steryl-sulfatase" "synonym" "NCIT:C93107" "PYCARD"
    "synonym" "NCIT:C103247" "assessment of survivor concerns" "synonym"
    "NCIT:C103247" "assessment of survivor concerns" "synonym"))
  ("asian"
   ("asian" "ASIAN" "NCIT:C41260" "asian" "synonym" "NCIT:C41260" "asian"
    "synonym" "," "Asian" "EFO:0003152" "Asian" "name" "," "asian"
    "NCIT:C41260" "asian" "name"))
  ("ato" ("ato" "ATO" "NCIT:C1005" "arsenic trioxide" "synonym"))
  ("autoimmune"
   ("autoimmune" "autoimmune" "NCIT:C16313" "autoimmune process" "synonym"
    "NCIT:C37916" "autoimmune" "name"))
  ("autoradiography"
   ("autoradiography" "autoradiography" "NCIT:C16314" "autoradiography"
    "name"))
  ("ave"
   ("ave" "AVE" "BTO:0003361" "anterior visceral endoderm" "RELATED synonym"
    "NCIT:C9684" "cyclophosphamide/Doxorubicin/Etoposide" "synonym"))
  ("avulavirus" ("avulavirus" "avulavirus" "NCIT:C117722" "avulavirus" "name"))
  ("axial" ("axial" "axial" "NCIT:C73439" "axial" "name"))
  ("azauridine"
   ("azauridine" "Azauridine" "CHEBI:35668" "6-azauridine" "RELATED synonym"
    "," "azauridine" "NCIT:C291" "6-azauridine" "synonym" "NCIT:C291"
    "6-azauridine" "synonym"))
  ("azobenzene"
   ("azobenzene" "azobenzene" "CHEBI:190358" "azobenzene" "name" "MESH:C009850"
    "azobenzene" "NM"))
  ("azole" ("azole" "azole" "CHEBI:68452" "azole" "name"))
  ("b"
   ("b" "B" "FA:04115" "B subfamily" "ID" "NCIT:C61481" "boron" "synonym"
    "NCIT:C71200" "bel" "synonym" "," "b" "NCIT:C68866" "barn" "synonym"
    "NCIT:C68866" "barn" "synonym"))
  ("bacteraemia"
   ("bacteraemia" "bacteraemia" "EFO:0003033" "bacteriemia" "EXACT synonym"))
  ("bactericide"
   ("bactericide" "bactericide" "CHEBI:33282" "antibacterial agent"
    "RELATED synonym"))
  ("bacteriocin"
   ("bacteriocin" "bacteriocin" "CHEBI:48081" "bacteriocin" "name" "UP:P84703"
    "Bacteriocin" "RecName: Full" "UP:P85833" "Bacteriocin" "RecName: Full"
    "XFAM:PF17312 Family" "helveticin J" "WK" "XFAM:PF04369 Family"
    "lactococcin" "WK" "XFAM:PF09683 Family" "lactococcin 972" "WK"))
  ("bam"
   ("bam" "BAM" "CHEBI:28435" "2,6-dichlorobenzamide" "RELATED synonym"
    "HGNC:2468 G" "structural maintenance of chromosomes 3" "Synonym"
    "NCIT:C21195" "bcl-2-like protein 11" "synonym" "NCIT:C49370" "BCL2L11"
    "synonym" "NCIT:C52437" "SMC3" "synonym" "NCIT:C153249"
    "binary alignment map" "synonym" "NCIT:C153850" "bambara language"
    "synonym"))
  ("bandwidth" ("bandwidth" "bandwidth" "NCIT:C142399" "bandwidth" "name"))
  ("benzodiazepine"
   ("benzodiazepine" "benzodiazepine" "CHEBI:22720" "benzodiazepine" "name"
    "NCIT:C1012" "benzodiazepine" "name" "NCIT:C74692"
    "benzodiazepine measurement" "synonym" "NCIT:C74692"
    "benzodiazepine measurement" "synonym"))
  ("benzyl" ("benzyl" "benzyl" "CHEBI:22744" "benzyl group" "EXACT synonym"))
  ("betaamyloid"
   ("betaamyloid" "beta-amyloid" "CHEBI:64645" "amyloid-beta"
    "RELATED synonym"))
  ("betacitronellol"
   ("betacitronellol" "beta-Citronellol" "CHEBI:50462" "citronellol"
    "RELATED synonym"))
  ("betacoronavirus"
   ("betacoronavirus" "BETACORONAVIRUS" "NCIT:C113207" "betacoronavirus"
    "synonym" "," "betacoronavirus" "NCIT:C113207" "betacoronavirus" "name"))
  ("betamercaptoethanol"
   ("betamercaptoethanol" "BETA-MERCAPTOETHANOL" "CHEBI:41218"
    "mercaptoethanol" "RELATED synonym"))
  ("bgi" ("bgi" "BG-I" "CVCL:6570" "BG1" "RELATED synonym"))
  ("biomedicine"
   ("biomedicine" "biomedicine" "NCIT:C61479" "biomedicine" "name"))
  ("biopsy"
   ("biopsy" "BIOPSY" "NCIT:C15189" "biopsy" "synonym" "," "biopsy"
    "NCIT:C15189" "biopsy" "name"))
  ("biospecimen"
   ("biospecimen" "BIOSPECIMEN" "NCIT:C70699" "biospecimen" "synonym" ","
    "bio-specimen" "NCIT:C70699" "biospecimen" "synonym" "," "biospecimen"
    "NCIT:C70699" "biospecimen" "name"))
  ("birthweight"
   ("birthweight" "birthweight" "EFO:0004344" "birth weight" "EXACT synonym"))
  ("blastula"
   ("blastula" "blastula" "BTO:0000128" "blastula" "name" "NCIT:C13739"
    "blastocyst" "synonym"))
  ("bocavirus"
   ("bocavirus" "bocavirus" "NCIT:C127691" "bocaparvovirus" "synonym"))
  ("bovid" ("bovid" "bovid" "NCIT:C14323" "bovidae" "synonym"))
  ("bpm"
   ("bpm" "BPM" "NCIT:C46072" "bilateral prophylactic mastectomy" "synonym" ","
    "bpm" "NCIT:C49673" "beats per minute" "synonym" "NCIT:C49674"
    "breaths per minute" "synonym"))
  ("br"
   ("br" "-Br" "CHEBI:47265" "bromo group" "RELATED synonym" "," "BR"
    "CVCL:GT42" "BR" "name" "UP:P33969" "Bacteriorhodopsin" "RecName: Short"
    "UP:P33971" "Bacteriorhodopsin" "RecName: Short" "UP:P33972"
    "Bacteriorhodopsin" "RecName: Short" "UP:O93740" "Bacteriorhodopsin"
    "RecName: Short" "UP:P02945" "Bacteriorhodopsin" "RecName: Short"
    "NCIT:C16364" "brazil" "synonym" "NCIT:C45770" "BR term type" "synonym"
    "NCIT:C140094" "BR regimen" "synonym" "," "Br-" "CHEBI:15858" "bromide"
    "RELATED synonym"))
  ("bromoacetonitrile"
   ("bromoacetonitrile" "bromoacetonitrile" "MESH:C000624721"
    "bromoacetonitrile" "NM"))
  ("bronchoscope"
   ("bronchoscope" "bronchoscope" "NCIT:C17611" "bronchoscope" "name"))
  ("bronchoscopy"
   ("bronchoscopy" "bronchoscopy" "NCIT:C16366" "bronchoscopy" "name"))
  ("browser" ("browser" "browser" "NCIT:C80012" "HTML browser" "synonym"))
  ("bwa"
   ("bwa" "BWA" "NCIT:C16363" "botswana" "synonym" "NCIT:C16363" "botswana"
    "synonym"))
  ("c"
   ("c" "C" "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42550" "coulomb" "synonym" "NCIT:C42550" "coulomb" "synonym"
    "NCIT:C42559" "degree celsius" "synonym" "NCIT:C42559" "degree celsius"
    "synonym" "NCIT:C42559" "degree celsius" "synonym" "NCIT:C63654"
    "cianidanol" "synonym" "NCIT:C67194" "calorie" "synonym" "NCIT:C88109"
    "centesimal series of attenuation" "synonym" "NCIT:C92969" "SPANXC"
    "synonym" "," "c" "NCIT:C62355" "with" "synonym" "NCIT:C67900" "centi"
    "synonym"))
  ("cal"
   ("cal" "CAL" "CVCL:E514" "CAL" "name" "HGNC:24686 G"
    "filamin binding LIM protein 1" "Synonym" "HGNC:17643 G"
    "golgi associated PDZ and coiled-coil motif containing" "Synonym"
    "NCIT:C97547" "GOPC" "synonym" "NCIT:C161404"
    "candida albicans measurement" "synonym" "," "cal" "NCIT:C67193" "calorie"
    "synonym" "NCIT:C67193" "calorie" "synonym" "NCIT:C67193" "calorie"
    "synonym" "NCIT:C67193" "calorie" "synonym" "NCIT:C67194" "calorie"
    "synonym"))
  ("callose"
   ("callose" "callose" "CHEBI:37671" "(1->3)-beta-D-glucan"
    "RELATED synonym"))
  ("calpeptin"
   ("calpeptin" "Calpeptin" "CHEBI:3330" "Calpeptin" "name" "," "calpeptin"
    "MESH:C071482" "calpeptin" "NM"))
  ("camostat"
   ("camostat" "CAMOSTAT" "NCIT:C73213" "camostat" "synonym" "," "camostat"
    "CHEBI:135632" "camostat" "name" "MESH:C034532" "camostat" "NM"
    "NCIT:C73213" "camostat" "name"))
  ("cannula"
   ("cannula" "cannula" "NCIT:C50343" "cannula device" "synonym" "NCIT:C50343"
    "cannula device" "synonym" "NCIT:C50343" "cannula device" "synonym"))
  ("capsid" ("capsid" "capsid" "NCIT:C16383" "capsid protein" "synonym"))
  ("carbapenem" ("carbapenem" "carbapenem" "CHEBI:46765" "carbapenem" "name"))
  ("carbenicillin"
   ("carbenicillin" "CARBENICILLIN" "NCIT:C343" "carbenicillin" "synonym"
    "NCIT:C343" "carbenicillin" "synonym" "," "carbenicillin" "CHEBI:3393"
    "carbenicillin" "name" "NCIT:C343" "carbenicillin" "name"))
  ("carboxyl" ("carboxyl" "carboxyl" "NCIT:C64369" "carboxyl group" "synonym"))
  ("carmofur"
   ("carmofur" "CARMOFUR" "NCIT:C955" "carmofur" "synonym" "," "Carmofur"
    "CHEBI:31360" "Carmofur" "name" "," "carmofur" "MESH:C017367"
    "1-hexylcarbamoyl-5-fluorouracil" "SY" "NCIT:C955" "carmofur" "name"))
  ("catecholate"
   ("catecholate" "catecholate" "CHEBI:32402" "catecholate(2-)"
    "RELATED synonym"))
  ("catheter"
   ("catheter" "catheter" "NCIT:C17446" "catheter" "name" "NCIT:C50344"
    "catheter device" "synonym" "NCIT:C50344" "catheter device" "synonym"
    "NCIT:C50344" "catheter device" "synonym"))
  ("cbr"
   ("cbr" "CB-R" "HGNC:2159 G" "cannabinoid receptor 1" "Synonym" "UP:P21554 H"
    "Cannabinoid receptor 1" "RecName: Short" "UP:P47746 M"
    "Cannabinoid receptor 1" "RecName: Short" "," "CBR" "HGNC:1548 G"
    "carbonyl reductase 1" "Previous Symbol" "NCIT:C118564" "CBR1" "synonym"))
  ("cbs"
   ("cbs" "CBS" "CVCL:D298" "CBS" "name" "CVCL:0I68" "CBS-R" "RELATED synonym"
    "HGNC:1550 G" "cystathionine beta-synthase" "Approved Symbol"
    "XFAM:PF00571 Domain" "CBS" "ID" "NCIT:C129050" "CBS" "name"))
  ("cc"
   ("cc" "C-C" "NCIT:C51371" "CXCR1" "synonym" "," "CC" "CVCL:E520" "CC" "name"
    "CHEBI:28940" "calciol" "RELATED synonym" "XFAM:PF04942 Domain" "CC" "ID"
    "NCIT:C4436" "cholangiocarcinoma" "synonym" "NCIT:C16445"
    "cocos (Keeling) islands" "synonym" "NCIT:C85497" "chief complaint"
    "synonym" "NCIT:C105650" "C-circle" "synonym" "," "cc" "UO:0000097"
    "cubic centimeter" "EXACT synonym" "NCIT:C28254" "milliliter" "synonym"
    "NCIT:C28254" "milliliter" "synonym"))
  ("ccmb" ("ccmb" "CcmB" "XFAM:PF03379 Family" "CcmB" "ID"))
  ("cecal" ("cecal" "cecal" "NCIT:C12381" "cecum" "synonym"))
  ("cecum"
   ("cecum" "CECUM" "NCIT:C12381" "cecum" "synonym" "," "cecum" "BTO:0000166"
    "cecum" "name" "NCIT:C12381" "cecum" "name" "NCIT:C23316" "cecum" "name"
    "NCIT:C60549" "cecum" "name"))
  ("cefoperazone"
   ("cefoperazone" "CEFOPERAZONE" "NCIT:C61663" "cefoperazone" "synonym" ","
    "cefoperazone" "CHEBI:3493" "cefoperazone" "name" "NCIT:C61663"
    "cefoperazone" "name"))
  ("cefotaxime"
   ("cefotaxime" "CEFOTAXIME" "NCIT:C354" "cefotaxime" "synonym" ","
    "Cefotaxime" "CHEBI:3498" "cefotaxime sodium" "RELATED synonym" ","
    "cefotaxime" "CHEBI:204928" "cefotaxime" "name" "NCIT:C354" "cefotaxime"
    "name"))
  ("cellphone"
   ("cellphone" "cell-phone" "NCIT:C60787" "cellular telephone" "synonym" ","
    "cellphone" "NCIT:C60787" "cellular telephone" "synonym"))
  ("centroid" ("centroid" "centroid" "NCIT:C47930" "centroid" "name"))
  ("cephalosporin"
   ("cephalosporin" "Cephalosporin" "CHEBI:23066" "cephalosporin" "name" ","
    "cephalosporin" "NCIT:C357" "cephalosporin antibiotic" "synonym"))
  ("cerebellum"
   ("cerebellum" "CEREBELLUM" "NCIT:C12445" "cerebellum" "synonym" ","
    "cerebellum" "BTO:0000232" "cerebellum" "name" "NCIT:C12445" "cerebellum"
    "name" "NCIT:C23379" "cerebellum" "name" "NCIT:C60550" "cerebellum"
    "name"))
  ("cgi"
   ("cgi" "CGI" "NCIT:C54668" "CpG island" "synonym" "NCIT:C135738"
    "clinical global impression generic modification version questionnaire"
    "synonym"))
  ("chemo" ("chemo" "chemo" "NCIT:C15632" "chemotherapy" "synonym"))
  ("chemoattractant"
   ("chemoattractant" "chemoattractant" "GO:0042056" "chemoattractant activity"
    "name"))
  ("chemokine"
   ("chemokine" "chemokine" "FPLX:Chemokine" "Chemokine" "name"
    "XFAM:PF00048 Domain" "IL8" "WK" "NCIT:C20466" "chemokine" "name"))
  ("chemoradiotherapy"
   ("chemoradiotherapy" "chemoradiotherapy" "NCIT:C94626" "chemoradiotherapy"
    "name"))
  ("chorismate"
   ("chorismate" "chorismate" "CHEBI:29748" "chorismate(2-)"
    "RELATED synonym"))
  ("chosen"
   ("chosen" "CHOSEN" "NCIT:C158172" "chosen chinese" "synonym" "," "chosen"
    "NCIT:C48912" "choose" "synonym"))
  ("chromone" ("chromone" "chromone" "CHEBI:72013" "chromone" "name"))
  ("cilia" ("cilia" "cilia" "UP:SL-0066 D" "Cilium" "SY"))
  ("cinanserin"
   ("cinanserin" "CINANSERIN" "NCIT:C83624" "cinanserin" "synonym" ","
    "cinanserin" "NCIT:C83624" "cinanserin" "name"))
  ("citronellol"
   ("citronellol" "citronellol" "CHEBI:50462" "citronellol" "name"
    "MESH:C007078" "citronellol" "NM"))
  ("clocortolone"
   ("clocortolone" "CLOCORTOLONE" "NCIT:C61684" "clocortolone" "synonym" ","
    "clocortolone" "CHEBI:59582" "clocortolone" "name" "MESH:C004686"
    "clocortolone" "NM" "NCIT:C61684" "clocortolone" "name"))
  ("coagulopathy"
   ("coagulopathy" "coagulopathy" "NCIT:C2902" "coagulation disorder" "synonym"
    "NCIT:C2902" "coagulation disorder" "synonym"))
  ("codon" ("codon" "codon" "NCIT:C62019" "codon" "name"))
  ("coi"
   ("coi" "COI" "EFO:0004002" "coisogenic strain" "EXACT synonym" "HGNC:7419 G"
    "mitochondrially encoded cytochrome c oxidase I" "Synonym" "NCIT:C11899"
    "COI regimen" "synonym" "NCIT:C128942" "MT-CO1" "synonym" "," "Co-I"
    "NCIT:C87339" "nadide" "synonym"))
  ("collidine" ("collidine" "collidine" "MESH:C007106" "gamma-collidine" "SY"))
  ("colostrum"
   ("colostrum" "COLOSTRUM" "NCIT:C32348" "human colostrum" "synonym" ","
    "colostrum" "BTO:0000276" "colostrum" "name"))
  ("commissure" ("commissure" "commissure" "NCIT:C32349" "commissure" "name"))
  ("comorbid"
   ("comorbid" "COMORBID" "NCIT:C159021" "GDC comorbidity terminology"
    "synonym"))
  ("comp"
   ("comp" "COMP" "HGNC:2227 G" "cartilage oligomeric matrix protein"
    "Approved Symbol" "UP:P35445" "Cartilage oligomeric matrix protein"
    "RecName: Short" "UP:P49747 H" "Cartilage oligomeric matrix protein"
    "RecName: Short" "UP:Q9R0G6 M" "Cartilage oligomeric matrix protein"
    "RecName: Short" "UP:P35444" "Cartilage oligomeric matrix protein"
    "RecName: Short" "XFAM:PF11598 Family" "COMP" "ID" "NCIT:C9562"
    "COMP regimen" "synonym" "NCIT:C111145"
    "cartilage oligomeric matrix protein measurement" "synonym" "NCIT:C131263"
    "COMP" "name" "NCIT:C131264" "cartilage oligomeric matrix protein"
    "synonym" "NCIT:C159022" "GDC composition terminology" "synonym"))
  ("conc"
   ("conc" "CONC" "NCIT:C41185" "concentration" "synonym" "NCIT:C41185"
    "concentration" "synonym" "NCIT:C60891" "concentrated dosage form"
    "synonym" "," "c-ONC" "NCIT:C17023" "proto-oncogene" "synonym" "," "conc"
    "NCIT:C60891" "concentrated dosage form" "synonym"))
  ("conjunctiva"
   ("conjunctiva" "CONJUNCTIVA" "NCIT:C12341" "conjunctiva" "synonym" ","
    "conjunctiva" "BTO:0003415" "conjunctiva" "name" "NCIT:C12341"
    "conjunctiva" "name" "NCIT:C23276" "conjunctiva" "name" "NCIT:C60555"
    "conjunctiva" "name"))
  ("contig" ("contig" "contig" "NCIT:C40984" "contig" "name"))
  ("coronaviridae"
   ("coronaviridae" "CORONAVIRIDAE" "NCIT:C113205" "coronaviridae" "synonym"
    "," "coronaviridae" "NCIT:C113205" "coronaviridae" "name"))
  ("cpt"
   ("cpt" "CPT" "CHEBI:27656" "camptothecin" "RELATED synonym" "UP:Q56148"
    "Chloramphenicol 3-O phosphotransferase" "RecName: Short" "UP:P56872"
    "Cyclopsychotride-A" "RecName: Short" "XFAM:PF07931 Domain" "CPT" "ID"
    "NCIT:C87308" "current procedural terminology" "synonym" "NCIT:C104911"
    "CHPT1" "synonym" "NCIT:C123744" "clipperton island" "synonym"
    "NCIT:C123744" "clipperton island" "synonym" "NCIT:C153166"
    "cell preparation tube" "synonym"))
  ("cq" ("cq" "CQ" "NCIT:C48481" "cartridge dosing unit" "synonym"))
  ("crossover"
   ("crossover" "CROSS-OVER" "NCIT:C82637" "crossover study" "synonym" ","
    "CROSSOVER" "NCIT:C82637" "crossover study" "synonym"))
  ("cshl"
   ("cshl" "CSHL" "NCIT:C39335" "cold spring harbor laboratory cancer center"
    "synonym"))
  ("cx"
   ("cx" "CX" "XFAM:PF01705 Family" "CX" "ID" "NCIT:C44482" "christmas island"
    "synonym" "," "cX" "CHEBI:131918"
    "alpha-D-Manp-(1->3)-[alpha-D-Manp-(1->6)]-[beta-D-Xylp-(1->2)]-beta-D-Manp-(1->4)-beta-D-GlcpNAc-(1->4)-D-GlcpNAc-yl group"
    "RELATED synonym"))
  ("cysteinyl"
   ("cysteinyl" "cysteinyl" "CHEBI:32460" "cysteine residue" "RELATED synonym"
    "CHEBI:23511" "cysteinyl group" "RELATED synonym"))
  ("daptomycin"
   ("daptomycin" "DAPTOMYCIN" "NCIT:C47470" "daptomycin" "synonym" ","
    "daptomycin" "CHEBI:600103" "daptomycin" "name" "NCIT:C47470" "daptomycin"
    "name"))
  ("dataset"
   ("dataset" "dataset" "NCIT:C47824" "data set" "synonym" "NCIT:C47824"
    "data set" "synonym" "NCIT:C54175" "silo" "synonym"))
  ("daycare" ("daycare" "daycare" "NCIT:C84278" "daycare" "name"))
  ("dc"
   ("dc" "-dC-" "CHEBI:50321" "2'-deoxycytidine 5'-monophosphate residue"
    "RELATED synonym" "," "DC" "Orphanet:1775" "Dyskeratosis congenita"
    "EXACT synonym" "HGNC:2714 G" "doublecortin" "Synonym" "NCIT:C39380"
    "doctor of chiropractic" "synonym" "NCIT:C43456" "district of columbia"
    "synonym" "NCIT:C75323" "DCX" "synonym" "NCIT:C108007"
    "district of columbia, DC" "synonym" "," "DC-" "CL:0000990"
    "conventional dendritic cell" "EXACT synonym" "," "dC" "CHEBI:15698"
    "2'-deoxycytidine" "RELATED synonym" "," "dc" "NCIT:C25484" "discontinue"
    "synonym"))
  ("decidua"
   ("decidua" "decidua" "BTO:0001360" "decidua" "name" "NCIT:C32425" "decidua"
    "name"))
  ("deltacoronavirus"
   ("deltacoronavirus" "DELTACORONAVIRUS" "NCIT:C122279" "deltacoronavirus"
    "synonym" "," "deltacoronavirus" "NCIT:C122279" "deltacoronavirus" "name"))
  ("dengue"
   ("dengue" "dengue" "NCIT:C34528" "dengue fever" "synonym" "NCIT:C34528"
    "dengue fever" "synonym" "NCIT:C34528" "dengue fever" "synonym"))
  ("der"
   ("der" "DER" "NCIT:C42885" "derivation" "synonym" "," "der" "NCIT:C6830"
    "derivative chromosome" "synonym"))
  ("desthiobiotin"
   ("desthiobiotin" "Desthiobiotin" "CHEBI:16691" "dethiobiotin"
    "RELATED synonym" "," "desthiobiotin" "CHEBI:42280" "(4R,5S)-dethiobiotin"
    "RELATED synonym" "MESH:C004749" "desthiobiotin" "NM"))
  ("df"
   ("df" "DF" "CVCL:W108" "DF" "name" "CVCL:2437" "Df" "name" "CHEBI:73830"
    "Asp-Phe" "RELATED synonym" "HGNC:2771 G" "complement factor D"
    "Previous Symbol" "NCIT:C73558" "dosage form unit" "synonym" "NCIT:C84325"
    "CFD" "synonym"))
  ("diazepine" ("diazepine" "diazepine" "CHEBI:47918" "diazepine" "name"))
  ("dibucaine"
   ("dibucaine" "DIBUCAINE" "NCIT:C28984" "dibucaine" "synonym" "," "dibucaine"
    "CHEBI:247956" "cinchocaine" "RELATED synonym" "NCIT:C28984" "dibucaine"
    "name"))
  ("dichloromethane"
   ("dichloromethane" "dichloromethane" "CHEBI:15767" "dichloromethane" "name"
    "NCIT:C44400" "methylene chloride" "synonym"))
  ("dimetridazole"
   ("dimetridazole" "DIMETRIDAZOLE" "NCIT:C76419" "dimetridazole" "synonym" ","
    "dimetridazole" "CHEBI:141155" "dimetridazole" "name" "NCIT:C76419"
    "dimetridazole" "name"))
  ("dipeptide" ("dipeptide" "Dipeptide" "CHEBI:46761" "dipeptide" "name"))
  ("diploid" ("diploid" "diploid" "NCIT:C118941" "diploidy" "synonym"))
  ("divider"
   ("divider" "divider" "NCIT:C49928" "divider device" "synonym" "NCIT:C49928"
    "divider device" "synonym"))
  ("dna"
   ("dna" "DNA" "CHEBI:16991" "deoxyribonucleic acid" "RELATED synonym"
    "NCIT:C449" "DNA" "name" "NCIT:C135409" "deoxyribonucleic acid measurement"
    "synonym"))
  ("dodecyl"
   ("dodecyl" "dodecyl" "CHEBI:23870" "dodecyl group" "EXACT synonym"))
  ("doi"
   ("doi" "DOI" "NCIT:C71462" "digital object identifier" "synonym"
    "NCIT:C153902" "dogri language" "synonym"))
  ("dorsum"
   ("dorsum" "dorsum" "BTO:0001713" "dorsum" "name" "NCIT:C32481" "dorsum"
    "name"))
  ("drc"
   ("drc" "DRC" "NCIT:C14776" "DRC mouse" "synonym" "NCIT:C160556"
    "cyclophosphamide/Dexamethasone/Rituximab regimen" "synonym"))
  ("dropper" ("dropper" "dropper" "NCIT:C64931" "dropper" "name"))
  ("ds"
   ("ds" "D-S" "CHEBI:73454" "Asp-Ser" "RELATED synonym" "," "DS" "CVCL:QX99"
    "DS" "name" "CHEBI:62097" "alpha-Neup5Ac-(2->8)-alpha-Neup5Ac"
    "RELATED synonym" "Orphanet:33069" "Dravet syndrome" "EXACT synonym"
    "HGNC:20603 G" "dehydrodolichyl diphosphate synthase subunit" "Synonym"
    "UP:SL-0092 D" "Desmosome" "SY" "XFAM:PF01916 Domain" "DS" "ID" "NCIT:C447"
    "disulfiram" "synonym" "NCIT:C44375" "diethyl sulfate" "synonym"
    "NCIT:C49576" "disposition domain" "synonym" "NCIT:C50950" "DHPS" "synonym"
    "NCIT:C112519" "disease steps clinical classification" "synonym"))
  ("dta"
   ("dta" "D-TA" "GO:0043876" "D-threonine aldolase activity" "EXACT synonym"))
  ("dx"
   ("dx" "DX" "CVCL:Z822" "DX" "name" "UP:P00273" "Desulforedoxin"
    "RecName: Short" "XFAM:PF01666 Family" "DX" "ID" "NCIT:C102617"
    "device exposure domain" "synonym" "NCIT:C158179" "dongxiang chinese"
    "synonym" "NCIT:C158179" "dongxiang chinese" "synonym" "," "Dx"
    "NCIT:C15220" "diagnosis" "synonym"))
  ("dyskinesia" ("dyskinesia" "dyskinesia" "NCIT:C50539" "dyskinesia" "name"))
  ("dysplasia" ("dysplasia" "dysplasia" "NCIT:C4086" "dysplasia" "name"))
  ("dyspnea"
   ("dyspnea" "DYSPNEA" "NCIT:C2998" "dyspnea" "synonym" "," "dyspnea"
    "NCIT:C2998" "dyspnea" "name" "NCIT:C58185" "dyspnea, CTCAE" "synonym"))
  ("e"
   ("e" "E" "NCIT:C67893" "exa" "synonym" "," "e" "NCIT:C68800"
    "elementary charge" "synonym"))
  ("echocardiography"
   ("echocardiography" "ECHOCARDIOGRAPHY" "NCIT:C16525" "echocardiography"
    "synonym" "," "echocardiography" "NCIT:C16525" "echocardiography" "name"))
  ("echovirus"
   ("echovirus" "ECHOVIRUS" "NCIT:C112272" "echovirus" "synonym" ","
    "echovirus" "NCIT:C112272" "echovirus" "name"))
  ("eclampsia" ("eclampsia" "eclampsia" "NCIT:C87167" "eclampsia" "name"))
  ("ecotype" ("ecotype" "ecotype" "EFO:0000434" "ecotype" "name"))
  ("ectoderm"
   ("ectoderm" "ectoderm" "BTO:0000315" "ectoderm" "name" "NCIT:C12703"
    "ectoderm" "name" "NCIT:C23634" "ectoderm" "name"))
  ("edema"
   ("edema" "EDEMA" "NCIT:C3002" "edema" "synonym" "," "edema" "NCIT:C3002"
    "edema" "name"))
  ("edu" ("edu" "EDU" "NCIT:C87662" "edoxudine" "synonym"))
  ("ee" ("ee" "EE" "NCIT:C16562" "estonia" "synonym"))
  ("ef"
   ("ef" "EF" "UP:P40136" "Calmodulin-sensitive adenylate cyclase"
    "AltName: Short" "UP:P31482 M" "Phospholipase A2, membrane associated"
    "AltName: Short"))
  ("eg"
   ("eg" "EG" "CHEBI:73505" "Glu-Gly" "RELATED synonym" "NCIT:C16530" "egypt"
    "synonym" "NCIT:C49626" "electrocardiogram domain" "synonym"))
  ("ele" ("ele" "EL-E" "CVCL:0C08" "EL-E" "name"))
  ("electrocardiography"
   ("electrocardiography" "electrocardiography" "EFO:0004327"
    "electrocardiography" "name" "NCIT:C38053" "electrocardiography" "name"))
  ("electrophysiology"
   ("electrophysiology" "electrophysiology" "NCIT:C16540" "electrophysiology"
    "name"))
  ("email"
   ("email" "E-mail" "NCIT:C25170" "E-mail" "name" "NCIT:C42775"
    "E-mail address" "synonym" "," "email" "NCIT:C25170" "E-mail" "synonym"
    "NCIT:C42775" "E-mail address" "synonym"))
  ("emitter"
   ("emitter" "emitter" "NCIT:C49937" "emitter device" "synonym" "NCIT:C49937"
    "emitter device" "synonym"))
  ("encoder"
   ("encoder" "encoder" "NCIT:C49939" "encoder device" "synonym" "NCIT:C49939"
    "encoder device" "synonym"))
  ("endoderm"
   ("endoderm" "endoderm" "BTO:0000800" "endoderm" "name" "NCIT:C12706"
    "endoderm" "name" "NCIT:C23637" "endoderm" "name"))
  ("endometrium"
   ("endometrium" "ENDOMETRIUM" "NCIT:C12313" "endometrium" "synonym" ","
    "endometrium" "BTO:0001422" "uterine endometrium" "RELATED synonym"
    "NCIT:C12313" "endometrium" "name" "NCIT:C23247" "endometrium" "name"))
  ("endoscopy"
   ("endoscopy" "ENDOSCOPY" "NCIT:C16546" "endoscopic procedure" "synonym" ","
    "endoscopy" "NCIT:C16546" "endoscopic procedure" "synonym" "NCIT:C16546"
    "endoscopic procedure" "synonym" "NCIT:C16546" "endoscopic procedure"
    "synonym"))
  ("endpoint"
   ("endpoint" "ENDPOINT" "NCIT:C82866" "endpoint value derivation technique"
    "synonym" "," "end-point" "NCIT:C25212" "end point" "synonym" ","
    "endpoint" "NCIT:C25212" "end point" "synonym" "NCIT:C25212" "end point"
    "synonym" "NCIT:C25212" "end point" "synonym"))
  ("enhancer" ("enhancer" "enhancer" "NCIT:C13296" "enhancer" "name"))
  ("ensembl" ("ensembl" "ensembl" "NCIT:C45763" "ensembl" "name"))
  ("enterobactin"
   ("enterobactin" "Enterobactin" "CHEBI:28855" "enterobactin" "name" ","
    "enterobactin" "CHEBI:77805" "enterobactin(1-)" "RELATED synonym"))
  ("enterocolitis"
   ("enterocolitis" "enterocolitis" "EFO:1001481" "enterocolitis" "name"
    "NCIT:C79573" "enterocolitis" "name" "NCIT:C143445" "enterocolitis, CTCAE"
    "synonym"))
  ("enterovirus"
   ("enterovirus" "ENTEROVIRUS" "NCIT:C14203" "enterovirus" "synonym" ","
    "enterovirus" "NCIT:C14203" "enterovirus" "name"))
  ("epithelium"
   ("epithelium" "epithelium" "BTO:0000416" "epithelium" "name" "NCIT:C12710"
    "epithelium" "name" "NCIT:C23641" "epithelium" "name"))
  ("eq"
   ("eq" "E-Q" "CHEBI:141435" "Glu-Gln" "RELATED synonym" "," "EQ"
    "NCIT:C61582" "equality" "synonym" "," "eq" "NCIT:C67273"
    "equivalent weight" "synonym" "NCIT:C67273" "equivalent weight" "synonym"
    "NCIT:C67273" "equivalent weight" "synonym" "NCIT:C67273"
    "equivalent weight" "synonym"))
  ("equilin"
   ("equilin" "EQUILIN" "NCIT:C29020" "equilin" "synonym" "," "Equilin"
    "CHEBI:42309" "equilin" "name" "," "equilin" "NCIT:C29020" "equilin"
    "name"))
  ("erythroleukemia"
   ("erythroleukemia" "erythroleukemia" "EFO:1001955" "erythroleukemia" "name"
    "NCIT:C7152" "erythroleukemia" "name" "NCIT:C68694" "adult erythroleukemia"
    "synonym"))
  ("est"
   ("est" "EST" "HGNC:6860 G"
    "mitogen-activated protein kinase kinase kinase 8" "Synonym" "HGNC:11377 G"
    "sulfotransferase family 1E member 1" "Synonym" "NCIT:C16562" "estonia"
    "synonym" "NCIT:C16562" "estonia" "synonym" "NCIT:C18155"
    "expressed sequence tag" "synonym" "NCIT:C51214" "MAP3K8" "synonym"
    "NCIT:C105992" "SULT1E1" "synonym" "NCIT:C116264" "eastern standard time"
    "synonym" "NCIT:C153910" "estonian language" "synonym" "," "Est"
    "EFO:0006986" "Est" "name"))
  ("eszopiclone"
   ("eszopiclone" "ESZOPICLONE" "NCIT:C65545" "eszopiclone" "synonym" ","
    "eszopiclone" "CHEBI:53760" "eszopiclone" "name" "NCIT:C65545"
    "eszopiclone" "name"))
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
  ("ethanedithiol"
   ("ethanedithiol" "ethanedithiol" "MESH:C031854" "1,2-ethanedithiol" "SY"))
  ("eubacteria"
   ("eubacteria" "eubacteria" "NCIT:C14187" "bacteria" "synonym" "NCIT:C14187"
    "bacteria" "synonym"))
  ("eugenol"
   ("eugenol" "EUGENOL" "NCIT:C75095" "eugenol" "synonym" "," "eugenol"
    "CHEBI:4917" "eugenol" "name" "NCIT:C75095" "eugenol" "name"))
  ("eukaryote"
   ("eukaryote" "eukaryote" "NCIT:C23530" "eukaryotic cells" "synonym"
    "NCIT:C25796" "eukaryota" "synonym"))
  ("ex" ("ex" "EX" "NCIT:C49587" "exposure domain" "synonym"))
  ("exome"
   ("exome" "exome" "EFO:0004422" "exome" "name" "NCIT:C101296" "exome"
    "name"))
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
  ("faeces" ("faeces" "faeces" "BTO:0000440" "feces" "RELATED synonym"))
  ("fasciculin"
   ("fasciculin" "fasciculin" "UP:P25681" "Acetylcholinesterase toxin C"
    "AltName: Full" "UP:Q9PS08" "Dendrotoxin A" "AltName: Full"))
  ("fasciculus" ("fasciculus" "fasciculus" "NCIT:C79692" "fascicle" "synonym"))
  ("fasta" ("fasta" "FASTA" "NCIT:C47845" "FASTA format" "synonym"))
  ("fastq" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("fc"
   ("fc" "FC" "UP:Q06529" "Cytochrome subunit of sulfide dehydrogenase"
    "AltName: Short" "UP:etc" "" "fake" "NCIT:C90384" "food consumption"
    "synonym"))
  ("fda"
   ("fda" "FDA" "UP:P81543" "Zinc-containing ferredoxin A" "RecName: Short"
    "NCIT:C17237" "food and drug administration" "synonym" "NCIT:C17237"
    "food and drug administration" "synonym"))
  ("fecal" ("fecal" "fecal" "NCIT:C13234" "feces" "synonym"))
  ("ferrocyanide"
   ("ferrocyanide" "Ferrocyanide" "CHEBI:5032" "ferrocyanide" "name" ","
    "ferrocyanide" "MESH:C020354" "hexacyanoferrate II" "SY"))
  ("filovirus"
   ("filovirus" "filovirus" "NCIT:C112031" "filoviridae" "synonym"))
  ("firststrand"
   ("firststrand" "first-strand" "NCIT:C150428"
    "first-strand library sequencing" "synonym"))
  ("fl"
   ("fl" "FL" "CVCL:1905" "FL" "name" "CHEBI:91150" "Phe-Leu" "RELATED synonym"
    "NCIT:C43478" "florida" "synonym" "NCIT:C49785" "FLT3LG" "synonym" "," "fL"
    "NCIT:C64780" "femtoliter" "synonym" "NCIT:C64780" "femtoliter" "synonym"
    "NCIT:C64780" "femtoliter" "synonym" "," "fl" "UO:0000104" "femtoliter"
    "EXACT synonym" "NCIT:C64780" "femtoliter" "synonym"))
  ("flowchart" ("flowchart" "flowchart" "NCIT:C71897" "flowchart" "name"))
  ("fluorobenzene"
   ("fluorobenzene" "fluorobenzene" "CHEBI:5115" "monofluorobenzene"
    "EXACT synonym"))
  ("fluphenazine"
   ("fluphenazine" "FLUPHENAZINE" "NCIT:C47536" "fluphenazine" "synonym" ","
    "Fluphenazine" "CHEBI:5123" "fluphenazine" "name" "," "fluphenazine"
    "NCIT:C47536" "fluphenazine" "name"))
  ("fna" ("fna" "FNA" "NCIT:C15361" "fine-needle aspiration" "synonym"))
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
  ("frovatriptan"
   ("frovatriptan" "FROVATRIPTAN" "NCIT:C65772" "frovatriptan" "synonym" ","
    "frovatriptan" "CHEBI:134991" "frovatriptan" "name" "MESH:C108128"
    "frovatriptan" "NM" "NCIT:C65772" "frovatriptan" "name"))
  ("frozen"
   ("frozen" "FROZEN" "NCIT:C70717" "frozen specimen" "synonym" "," "frozen"
    "NCIT:C48160" "freezing" "synonym" "NCIT:C70717" "frozen specimen"
    "synonym" "NCIT:C142502" "database frozen" "synonym"))
  ("ftp"
   ("ftp" "FTP" "XFAM:PF07504 Motif" "FTP" "ID" "NCIT:C100047"
    "file transfer protocol" "synonym"))
  ("funder" ("funder" "funder" "EFO:0001736" "funder" "name"))
  ("funisitis" ("funisitis" "funisitis" "NCIT:C97077" "funisitis" "name"))
  ("furinlike"
   ("furinlike" "furin-like" "XFAM:PF00757 Domain" "furin-like" "ID"))
  ("fw"
   ("fw" "FW" "CHEBI:74751" "Phe-Trp" "RELATED synonym" "NCIT:C95090"
    "food and water consumption domain" "synonym"))
  ("g"
   ("g" "G" "NCIT:C15033" "G mouse" "synonym" "NCIT:C67896" "giga" "synonym"
    "NCIT:C68783" "gravitational constant" "synonym" "NCIT:C68915" "gauss"
    "synonym" "NCIT:C68915" "gauss" "synonym" "NCIT:C68915" "gauss" "synonym"
    "," "g" "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym"
    "NCIT:C48155" "gram" "synonym" "NCIT:C48155" "gram" "synonym" "NCIT:C48162"
    "G force" "synonym" "NCIT:C73772" "unit of gravity" "synonym"))
  ("galactomannan"
   ("galactomannan" "galactomannan" "CHEBI:27680" "galactomannan" "name"))
  ("gallium"
   ("gallium" "GALLIUM" "NCIT:C66798" "gallium" "synonym" "," "gallium"
    "CHEBI:49631" "gallium atom" "RELATED synonym" "NCIT:C66798" "gallium"
    "name"))
  ("gammacoronavirus"
   ("gammacoronavirus" "GAMMACORONAVIRUS" "NCIT:C122313" "gammacoronavirus"
    "synonym" "," "gammacoronavirus" "NCIT:C122313" "gammacoronavirus" "name"))
  ("gastro"
   ("gastro" "GASTRO" "NCIT:C128681"
    "CDISC SDTM gastrointestinal test name terminology" "synonym"))
  ("gastrocnemius"
   ("gastrocnemius" "gastrocnemius" "BTO:0000506" "gastrocnemius" "name"))
  ("gastrula"
   ("gastrula" "gastrula" "BTO:0001403" "gastrula" "name" "NCIT:C34057"
    "gastrula" "name"))
  ("gatan" ("gatan" "GATA-N" "XFAM:PF05349 Family" "GATA-N" "ID"))
  ("gavage" ("gavage" "gavage" "NCIT:C73430" "gavage" "name"))
  ("genome"
   ("genome" "genome" "EFO:0004420" "genome" "name" "NCIT:C16629" "genome"
    "name"))
  ("genotype"
   ("genotype" "GENOTYPE" "NCIT:C45447" "genotyping" "synonym" "," "genotype"
    "EFO:0000513" "genotype" "name" "NCIT:C16631" "genotype" "name"
    "NCIT:C45447" "genotyping" "synonym" "NCIT:C45447" "genotyping" "synonym"))
  ("glia"
   ("glia" "glia" "BTO:0000524" "glia" "name" "NCIT:C12615" "neuroglia"
    "synonym" "NCIT:C23549" "neuroglia" "synonym"))
  ("globulin"
   ("globulin" "globulin" "NCIT:C17125" "serum globulin" "synonym"
    "NCIT:C74738" "globulin protein measurement" "synonym" "NCIT:C74738"
    "globulin protein measurement" "synonym"))
  ("globus"
   ("globus" "globus" "NCIT:C34642" "globus hystericus" "synonym" "NCIT:C34642"
    "globus hystericus" "synonym"))
  ("glomerulus"
   ("glomerulus" "GLOMERULUS" "NCIT:C13250" "glomerulus" "synonym" ","
    "glomerulus" "BTO:0000530" "renal glomerulus" "RELATED synonym"
    "NCIT:C13250" "glomerulus" "name"))
  ("glutamyl"
   ("glutamyl" "glutamyl" "CHEBI:32483" "glutamic acid residue"
    "RELATED synonym"))
  ("gml"
   ("gml" "GML" "HGNC:4375 G"
    "glycosylphosphatidylinositol anchored molecule like" "Approved Symbol"))
  ("gmt"
   ("gmt" "GMT" "UP:Q753T9" "GDP-mannose transporter" "RecName: Short" "UP:etc"
    "" "fake"))
  ("gonad"
   ("gonad" "GONAD" "NCIT:C12725" "gonad" "synonym" "," "Gonad" "CVCL:WY78"
    "GON" "RELATED synonym" "," "gonad" "BTO:0000534" "gonad" "name"
    "BTO:0006162" "reproductive gland" "RELATED synonym" "NCIT:C12725" "gonad"
    "name" "NCIT:C23656" "gonads" "synonym"))
  ("gov"
   ("gov" "GOV" "HGNC:9779 G" "RAB3D, member RAS oncogene family"
    "Previous Symbol"))
  ("gracilis"
   ("gracilis" "gracilis" "BTO:0000536" "gracilis muscle" "RELATED synonym"
    "NCIT:C52935" "gracilis" "name"))
  ("gravitropism"
   ("gravitropism" "gravitropism" "GO:0009630" "gravitropism" "name"))
  ("greater" ("greater" "greater" "NCIT:C61421" "greater" "name"))
  ("greatest" ("greatest" "greatest" "NCIT:C25258" "most" "synonym"))
  ("gtf"
   ("gtf" "GTF" "GO:0140223" "general transcription initiation factor activity"
    "EXACT synonym"))
  ("gx"
   ("gx" "GX" "CHEBI:357241" "glycinexylidide" "RELATED synonym" "UP:P0A8N7"
    "Elongation factor P--(R)-beta-lysine ligase {ECO:0000255|HAMAP-Rule:MF_00174}"
    "AltName: Full" "UP:P15153 H" "Ras-related C3 botulinum toxin substrate 2"
    "AltName: Full" "NCIT:C113730" "grade X" "synonym" "NCIT:C113730" "grade X"
    "synonym" "," "Gx" "NCIT:C51473" "SMO" "synonym"))
  ("h"
   ("h" "H" "NCIT:C42558" "henry" "synonym" "NCIT:C42558" "henry" "synonym"
    "NCIT:C42558" "henry" "synonym" "NCIT:C42558" "henry" "synonym"
    "NCIT:C81213" "hours minutes seconds imputed" "synonym" "," "h"
    "NCIT:C25529" "hour" "synonym" "NCIT:C25529" "hour" "synonym" "NCIT:C25529"
    "hour" "synonym" "NCIT:C25529" "hour" "synonym" "NCIT:C25529" "hour"
    "synonym" "NCIT:C67897" "hecto" "synonym"))
  ("haplotype" ("haplotype" "haplotype" "NCIT:C63547" "haplotype" "name"))
  ("hayfever"
   ("hayfever" "Hayfever" "EFO:0003956" "seasonal allergic rhinitis"
    "EXACT synonym"))
  ("heatmap" ("heatmap" "heatmap" "NCIT:C78549" "heatmap" "name"))
  ("helix"
   ("helix" "helix" "NCIT:C32724" "helix" "name" "NCIT:C47937" "helix" "name"
    "NCIT:C48043" "protein helix" "synonym"))
  ("hematocrit"
   ("hematocrit" "hematocrit" "EFO:0004348" "hematocrit" "name" "NCIT:C64796"
    "hematocrit measurement" "synonym" "NCIT:C64796" "hematocrit measurement"
    "synonym" "NCIT:C64796" "hematocrit measurement" "synonym"))
  ("hematology" ("hematology" "hematology" "NCIT:C16673" "hematology" "name"))
  ("hemi" ("hemi" "HEMI" "NCIT:C81009" "half" "synonym"))
  ("hemolymph" ("hemolymph" "hemolymph" "BTO:0000572" "hemolymph" "name"))
  ("heparins" ("heparins" "heparins" "CHEBI:24505" "heparins" "name"))
  ("herpesviridae"
   ("herpesviridae" "herpesviridae" "NCIT:C14217" "herpesvirus" "synonym"))
  ("hey"
   ("hey" "HEY" "EFO:0006580" "HEY" "name" "FA:01749" "HEY family" "ID" ","
    "Hey" "CVCL:0297" "HEY" "name"))
  ("hidden" ("hidden" "hidden" "NCIT:C45671" "hidden" "name"))
  ("hindlimb"
   ("hindlimb" "HINDLIMB" "NCIT:C77625" "hind limb" "synonym" "," "hindlimb"
    "BTO:0002345" "hindlimb" "name" "NCIT:C23673" "lower extremity" "synonym"))
  ("histology" ("histology" "histology" "NCIT:C16681" "histology" "name"))
  ("histopathology"
   ("histopathology" "histopathology" "NCIT:C18190"
    "histopathologic examination" "synonym" "NCIT:C18190"
    "histopathologic examination" "synonym"))
  ("hoc"
   ("hoc" "hoc" "UP:P18056"
    "Highly immunogenic outer capsid protein {ECO:0000255|HAMAP-Rule:MF_04116}"
    "RecName: Short"))
  ("homeodomain"
   ("homeodomain" "homeodomain" "XFAM:PF00046 Domain" "homeodomain" "ID"
    "XFAM:PF00046 Domain" "homeodomain" "DE" "NCIT:C13367" "homeo domain"
    "synonym"))
  ("homogenate" ("homogenate" "homogenate" "NCIT:C113744" "homogenate" "name"))
  ("homoserine"
   ("homoserine" "Homoserine" "CHEBI:15699" "L-homoserine" "RELATED synonym"
    "," "homoserine" "CHEBI:30653" "homoserine" "name"))
  ("hotspot"
   ("hotspot" "hotspot" "NCIT:C94367" "genetic hotspot" "synonym" "NCIT:C94367"
    "genetic hotspot" "synonym"))
  ("hpd"
   ("hpd" "HPD" "CHEBI:18355" "2-hydroxypenta-2,4-dienoic acid"
    "RELATED synonym" "HGNC:5147 G" "4-hydroxyphenylpyruvate dioxygenase"
    "Approved Symbol" "UP:P32754 H" "4-hydroxyphenylpyruvate dioxygenase"
    "AltName: Short" "UP:P49429 M" "4-hydroxyphenylpyruvate dioxygenase"
    "AltName: Short" "UP:P93836 C" "4-hydroxyphenylpyruvate dioxygenase"
    "AltName: Short" "UP:O48604 B" "4-hydroxyphenylpyruvate dioxygenase"
    "AltName: Short" "XFAM:PF05044 Domain" "HPD" "ID" "NCIT:C1377"
    "hematoporphyrin derivative" "synonym"))
  ("hpe" ("hpe" "HPE" "Orphanet:2162" "Holoprosencephaly" "EXACT synonym"))
  ("html" ("html" "HTML" "NCIT:C142380" "hypertext markup language" "synonym"))
  ("hydrobromide"
   ("hydrobromide" "hydrobromide" "CHEBI:48367" "hydrobromide" "name"))
  ("hyperpyrexia"
   ("hyperpyrexia" "hyperpyrexia" "NCIT:C111817" "hyperpyrexia" "name"))
  ("hyponatremia"
   ("hyponatremia" "Hyponatremia" "HP:0002902" "Hyponatremia" "name" ","
    "hyponatremia" "NCIT:C37976" "hyponatremia" "name" "NCIT:C143571"
    "hyponatremia, CTCAE" "synonym"))
  ("hyposmia" ("hyposmia" "hyposmia" "NCIT:C116368" "hyposmia" "name"))
  ("hypothermia"
   ("hypothermia" "hypothermia" "NCIT:C50523" "decreased core body temperature"
    "synonym" "NCIT:C55332" "hypothermia, CTCAE" "synonym" "NCIT:C55332"
    "hypothermia, CTCAE" "synonym" "NCIT:C78351" "hypothermia" "name"))
  ("hypoxemia" ("hypoxemia" "hypoxemia" "NCIT:C93047" "hypoxemia" "name"))
  ("ic"
   ("ic" "IC" "UP:SL-0098 D"
    "Endoplasmic reticulum-Golgi intermediate compartment" "SY" "NCIT:C11934"
    "IC regimen" "synonym" "NCIT:C38238" "intradermal route of administration"
    "synonym" "NCIT:C64603" "between meals" "synonym" "NCIT:C95092"
    "implantation classification domain" "synonym" "NCIT:C111362"
    "inspiratory capacity" "synonym" "NCIT:C111362" "inspiratory capacity"
    "synonym" "NCIT:C133417"
    "pathologic stage IC esophageal adenocarcinoma AJCC v8" "synonym"
    "NCIT:C150762" "institutional professional consultation" "synonym" "," "Ic"
    "UP:P14306" "Carboxypeptidase Y inhibitor" "AltName: Full"))
  ("identifier" ("identifier" "identifier" "NCIT:C25364" "identifier" "name"))
  ("ie"
   ("ie" "IE" "CHEBI:137259" "Ile-Glu" "RELATED synonym" "NCIT:C16757"
    "ireland" "synonym" "NCIT:C48579" "international unit" "synonym"
    "NCIT:C61536" "inclusion exclusion criteria not met domain" "synonym"
    "NCIT:C160751" "intimacy enhancement" "synonym"))
  ("igb"
   ("igb" "IGB" "HGNC:1699 G" "CD79b molecule" "Previous Symbol" "NCIT:C97425"
    "CD79B" "synonym"))
  ("ileum"
   ("ileum" "ILEUM" "NCIT:C12387" "ileum" "synonym" "," "ileum" "BTO:0000620"
    "ileum" "name" "NCIT:C12387" "ileum" "name" "NCIT:C23322" "ileum" "name"
    "NCIT:C60573" "ileum" "name"))
  ("imager"
   ("imager" "imager" "NCIT:C49997" "imager device" "synonym" "NCIT:C49997"
    "imager device" "synonym"))
  ("immunoassay"
   ("immunoassay" "IMMUNOASSAY" "NCIT:C16714" "immunoenzyme procedure"
    "synonym" "," "immunoassay" "NCIT:C16723" "immunology test" "synonym"))
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
  ("immunosuppressant"
   ("immunosuppressant" "immunosuppressant" "CHEBI:35705"
    "immunosuppressive agent" "RELATED synonym" "NCIT:C574" "immunosuppressant"
    "name"))
  ("immunotherapy"
   ("immunotherapy" "IMMUNOTHERAPY" "NCIT:C15262" "immunotherapy" "synonym" ","
    "immunotherapy" "NCIT:C308" "immunotherapeutic agent" "synonym"
    "NCIT:C15262" "immunotherapy" "name"))
  ("indel" ("indel" "indel" "NCIT:C99752" "indel mutation" "synonym"))
  ("infundibulum"
   ("infundibulum" "infundibulum" "BTO:0000768" "infundibulum" "name"
    "NCIT:C61368" "infundibulum" "name"))
  ("ing"
   ("ing" "ING" "FA:01856" "ING family" "ID" "XFAM:PF12998 Domain" "ING" "ID"))
  ("inhouse" ("inhouse" "In-house" "NCIT:C126386" "In-house" "name"))
  ("internet" ("internet" "internet" "NCIT:C20342" "internet" "name"))
  ("intracardiac"
   ("intracardiac" "INTRACARDIAC" "NCIT:C38227"
    "intracardiac route of administration" "synonym" "NCIT:C38227"
    "intracardiac route of administration" "synonym" "NCIT:C38227"
    "intracardiac route of administration" "synonym" "," "intracardiac"
    "NCIT:C38227" "intracardiac route of administration" "synonym"
    "NCIT:C38227" "intracardiac route of administration" "synonym"))
  ("intron" ("intron" "intron" "NCIT:C13249" "intron" "name"))
  ("iodoacetamide"
   ("iodoacetamide" "iodoacetamide" "NCIT:C161898" "iodoacetamide" "name"))
  ("isocyanide" ("isocyanide" "isocyanide" "CHEBI:35353" "isocyanide" "name"))
  ("isomaltose" ("isomaltose" "isomaltose" "CHEBI:28189" "isomaltose" "name"))
  ("isopentane"
   ("isopentane" "ISOPENTANE" "NCIT:C63387" "isopentane" "synonym" ","
    "iso-pentane" "CHEBI:30362" "isopentane" "name" "," "isopentane"
    "MESH:C067038" "isopentane" "NM" "NCIT:C63387" "isopentane" "name"))
  ("isopropanol"
   ("isopropanol" "Isopropanol" "CHEBI:17824" "propan-2-ol" "RELATED synonym"
    "," "isopropanol" "NCIT:C602" "isopropyl alcohol" "synonym"))
  ("isotype" ("isotype" "isotype" "NCIT:C73483" "antibody isotype" "synonym"))
  ("iu"
   ("iu" "IU" "EFO:0002927" "International Unit" "EXACT synonym" "NCIT:C28255"
    "international unit" "synonym" "NCIT:C28255" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C48579"
    "international unit" "synonym" "NCIT:C48579" "international unit" "synonym"
    "NCIT:C48579" "international unit" "synonym" "NCIT:C122724" "5-iodouracil"
    "synonym"))
  ("iv"
   ("iv" "IV" "CHEBI:74327" "Ile-Val" "RELATED synonym" "UP:P01064"
    "Bowman-Birk type proteinase inhibitor D-II" "AltName: Full" "NCIT:C5580"
    "stage IV uveal melanoma AJCC v7" "synonym" "NCIT:C13346" "intravenous"
    "synonym" "NCIT:C13346" "intravenous" "synonym" "NCIT:C38276"
    "intravenous route of administration" "synonym" "NCIT:C38276"
    "intravenous route of administration" "synonym" "NCIT:C49465" "fourth"
    "synonym" "NCIT:C94815" "clark level IV" "synonym" "NCIT:C133424"
    "pathologic stage IV esophageal adenocarcinoma AJCC v8" "synonym"
    "NCIT:C133668" "pathologic stage IV gastric cancer AJCC v8" "synonym"
    "NCIT:C134751" "stage IV hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134764" "stage IV intrahepatic cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134820" "stage IV distal bile duct cancer AJCC v8" "synonym"
    "NCIT:C139753" "stage IV cervical cancer AJCC v8" "synonym" "NCIT:C140984"
    "stage IV thyroid gland papillary carcinoma AJCC v8" "synonym"))
  ("ivermectin"
   ("ivermectin" "IVERMECTIN" "NCIT:C61796" "ivermectin" "synonym" ","
    "ivermectin" "CHEBI:6078" "ivermectin" "name" "NCIT:C61796" "ivermectin"
    "name"))
  ("j"
   ("j" "J" "NCIT:C15097" "J mouse" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym" "NCIT:C42548" "joule" "synonym"
    "NCIT:C42548" "joule" "synonym"))
  ("japanese"
   ("japanese" "JAPANESE" "NCIT:C43392" "japanese" "synonym" "," "Japanese"
    "EFO:0003164" "Japanese" "name" "," "japanese" "NCIT:C43392" "japanese"
    "name" "NCIT:C123789" "japanese language" "synonym"))
  ("jax"
   ("jax" "JAX" "NCIT:C39529" "the jackson laboratory cancer center"
    "synonym"))
  ("jk"
   ("jk" "JK" "HGNC:10918 G"
    "solute carrier family 14 member 1 (Kidd blood group)" "Previous Symbol"
    "NCIT:C14564" "JK" "name"))
  ("jsp" ("jsp" "JSP" "CVCL:RG68" "JSP" "name"))
  ("k"
   ("k" "K" "NCIT:C765" "potassium" "synonym" "NCIT:C15028" "K mouse" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C42537" "kelvin" "synonym" "NCIT:C42537" "kelvin" "synonym"
    "NCIT:C64853" "potassium measurement" "synonym" "NCIT:C67234" "thousand"
    "synonym" "NCIT:C68279" "dietary potassium" "synonym" "," "k" "NCIT:C48436"
    "kilo" "synonym"))
  ("kaletra"
   ("kaletra" "Kaletra" "MESH:C558899" "lopinavir-ritonavir drug combination"
    "SY" "," "kaletra" "NCIT:C2096" "lopinavir/Ritonavir" "synonym"
    "NCIT:C2096" "lopinavir/Ritonavir" "synonym"))
  ("kappa" ("kappa" "kappa" "FA:01671" "kappa family" "ID"))
  ("karyotype"
   ("karyotype" "karyotype" "EFO:0004426" "karyotype" "name" "NCIT:C25215"
    "karyotype" "name"))
  ("kcal"
   ("kcal" "kcal" "NCIT:C67194" "calorie" "synonym" "NCIT:C67194" "calorie"
    "synonym" "NCIT:C67194" "calorie" "synonym" "NCIT:C67194" "calorie"
    "synonym"))
  ("kx"
   ("kx" "KX" "NCIT:C148002" "XK" "synonym" "," "Kx" "HGNC:12811 G"
    "X-linked Kx blood group" "Synonym"))
  ("l"
   ("l" "L" "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym" "," "l"
    "NCIT:C48505" "liter" "synonym" "NCIT:C48505" "liter" "synonym"))
  ("lactimidomycin"
   ("lactimidomycin" "lactimidomycin" "MESH:C077633" "lactimidomycin" "NM"))
  ("lambda"
   ("lambda" "LAMBDA" "NCIT:C103221" "axial S" "synonym" "," "lambda"
    "NCIT:C48926" "lambda" "name" "NCIT:C86944" "lambda sutural junction"
    "synonym"))
  ("lamina"
   ("lamina" "lamin-A" "UP:P13648" "Lamin-A" "RecName: Full" "UP:P11048"
    "Lamin-A" "RecName: Full" "NCIT:C136976" "lamin-A/C" "synonym" "," "lamina"
    "NCIT:C79619" "blade" "synonym"))
  ("lapachol"
   ("lapachol" "Lapachol" "CHEBI:6377" "Lapachol" "name" "," "lapachol"
    "MESH:C008252" "lapachol" "NM"))
  ("laryngotracheitis"
   ("laryngotracheitis" "laryngotracheitis" "NCIT:C26735" "croup" "synonym"))
  ("lat"
   ("lat" "LAT" "CVCL:2101" "LAT" "name" "HGNC:18874 G"
    "linker for activation of T cells" "Approved Symbol" "HGNC:30621 G"
    "sphingolipid transporter 1 (putative)" "Synonym" "UP:P41929"
    "Lysine acetyltransferase" "RecName: Short" "XFAM:PF15234 Family" "LAT"
    "ID" "NCIT:C25185" "laterality" "synonym" "NCIT:C34015"
    "origin recognition complex subunit 3" "synonym" "NCIT:C52314" "ORC3"
    "synonym" "NCIT:C99073" "CDISC SDTM laterality terminology" "synonym"
    "NCIT:C120483" "L-type amino acid transporter" "synonym"))
  ("lavage"
   ("lavage" "LAVAGE" "NCIT:C38068" "lavage" "synonym" "," "lavage"
    "NCIT:C38068" "lavage" "name"))
  ("lc"
   ("lc" "L-C" "CHEBI:73582" "Leu-Cys" "RELATED synonym" "," "LC" "CL:0000453"
    "Langerhans cell" "EXACT synonym" "NCIT:C16435" "liquid chromatography"
    "synonym" "NCIT:C17113" "saint lucia" "synonym" "NCIT:C54135"
    "limited company" "synonym"))
  ("lcf"
   ("lcf" "LCF" "CVCL:S938" "LCF" "name" "HGNC:5980 G" "interleukin 16"
    "Synonym" "NCIT:C20518" "interleukin-16" "synonym" "NCIT:C37610"
    "LCF regimen" "synonym"))
  ("leishmanin" ("leishmanin" "leishmanin" "MESH:C032127" "leishmanin" "NM"))
  ("lifespan" ("lifespan" "lifespan" "NCIT:C153298" "longevity" "synonym"))
  ("lignocellulose"
   ("lignocellulose" "lignocellulose" "MESH:C036909" "lignocellulose" "NM"))
  ("likeliness" ("likeliness" "likeliness" "NCIT:C85550" "likely" "synonym"))
  ("linezolid"
   ("linezolid" "LINEZOLID" "NCIT:C29158" "linezolid" "synonym" "," "linezolid"
    "CHEBI:63607" "linezolid" "name" "NCIT:C29158" "linezolid" "name"))
  ("liposome" ("liposome" "liposome" "NCIT:C18208" "liposome" "name"))
  ("lobule"
   ("lobule" "lobule" "NCIT:C12990" "lobule" "name" "NCIT:C23920" "lobule"
    "name"))
  ("loge" ("loge" "logE" "NCIT:C79966" "logE" "name"))
  ("lumen"
   ("lumen" "lumen" "UO:0000118" "lumen" "name" "NCIT:C42560" "lumen" "name"
    "NCIT:C94478" "lumen" "name"))
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
  ("lysostaphin"
   ("lysostaphin" "lysostaphin" "GO:0061787"
    "peptidoglycan cross-bridge peptide endopeptidase activity"
    "NARROW synonym" "UP:P10547" "Lysostaphin" "RecName: Full" "UP:P10548"
    "Lysostaphin" "RecName: Full"))
  ("lyssavirus"
   ("lyssavirus" "LYSSAVIRUS" "NCIT:C112330" "lyssavirus" "synonym" ","
    "lyssavirus" "NCIT:C112330" "lyssavirus" "name"))
  ("macrolide"
   ("macrolide" "macrolide" "CHEBI:25106" "macrolide" "name" "NCIT:C67445"
    "macrolide" "name"))
  ("maltodextrin"
   ("maltodextrin" "MALTODEXTRIN" "NCIT:C68474" "maltodextrin" "synonym" ","
    "Maltodextrin" "CHEBI:18398" "linear maltodextrin" "RELATED synonym" ","
    "maltodextrin" "CHEBI:25140" "maltodextrin" "name" "MESH:C008315"
    "maltodextrin" "NM" "NCIT:C68474" "maltodextrin" "name"))
  ("maltotriose"
   ("maltotriose" "MALTOTRIOSE" "CHEBI:27931" "alpha-maltotriose"
    "RELATED synonym" "," "maltotriose" "CHEBI:61993" "maltotriose" "name"
    "CHEBI:140999" "alpha-D-Glcp-(1->4)-alpha-D-Glcp-(1->4)-D-Glcp"
    "RELATED synonym" "MESH:C008317" "maltotriose" "NM"))
  ("math"
   ("math" "MATH" "XFAM:PF00917 Domain" "MATH" "ID" "," "math" "NCIT:C16825"
    "mathematics" "synonym"))
  ("mbar"
   ("mbar" "M-BAR" "HGNC:19680 G" "G protein-coupled bile acid receptor 1"
    "Synonym" "UP:Q8TDU6 H" "G-protein coupled bile acid receptor 1"
    "AltName: Short" "UP:Q80SS6 M" "G-protein coupled bile acid receptor 1"
    "AltName: Short" "UP:Q80T02" "G-protein coupled bile acid receptor 1"
    "AltName: Short"))
  ("mbi" ("mbi" "MBI" "NCIT:C93316" "scintimammography" "synonym"))
  ("mblm"
   ("mblm" "mBLM" "UP:O88700 M" "Bloom syndrome protein homolog"
    "RecName: Short"))
  ("mediterranean"
   ("mediterranean" "MEDITERRANEAN" "NCIT:C77811" "mediterranean" "synonym" ","
    "mediterranean" "NCIT:C77811" "mediterranean" "name"))
  ("meropenem"
   ("meropenem" "MEROPENEM" "NCIT:C1160" "meropenem" "synonym" "," "Meropenem"
    "CHEBI:43968" "meropenem" "name" "," "meropenem" "NCIT:C1160" "meropenem"
    "name" "NCIT:C29248" "meropenem" "name"))
  ("mesalazine"
   ("mesalazine" "mesalazine" "CHEBI:6775" "mesalamine" "RELATED synonym"
    "NCIT:C29249" "mesalamine" "synonym"))
  ("mesenchyme"
   ("mesenchyme" "mesenchyme" "BTO:0001393" "mesenchyme" "name" "NCIT:C13301"
    "mesenchyme" "name"))
  ("mesoderm"
   ("mesoderm" "mesoderm" "BTO:0000839" "mesoderm" "name" "NCIT:C12750"
    "mesoderm" "name" "NCIT:C23681" "mesoderm" "name"))
  ("metadata" ("metadata" "metadata" "NCIT:C52095" "metadata" "name"))
  ("metagenome" ("metagenome" "metagenome" "NCIT:C153196" "metagenome" "name"))
  ("metazoa" ("metazoa" "metazoa" "BTO:0000042" "animal" "RELATED synonym"))
  ("metazoan" ("metazoan" "metazoan" "FA:00289" "metazoan subfamily" "ID"))
  ("methicillin"
   ("methicillin" "METHICILLIN" "NCIT:C61842" "methicillin" "synonym" ","
    "Methicillin" "CHEBI:6827" "methicillin" "name" "," "methicillin"
    "NCIT:C61842" "methicillin" "name"))
  ("methyladenosine"
   ("methyladenosine" "methyladenosine" "CHEBI:25273" "methyladenosine"
    "name"))
  ("methylamines"
   ("methylamines" "methylamines" "CHEBI:25274" "methylamines" "name"))
  ("metronidazole"
   ("metronidazole" "METRONIDAZOLE" "NCIT:C651" "metronidazole" "synonym" ","
    "metronidazole" "CHEBI:6909" "metronidazole" "name" "NCIT:C651"
    "metronidazole" "name"))
  ("micelle" ("micelle" "micelle" "NCIT:C93299" "micelle" "name"))
  ("microbiome"
   ("microbiome" "microbiome" "EFO:0004982" "microbiome" "name" "NCIT:C68564"
    "microbiome" "name"))
  ("microflora"
   ("microflora" "microflora" "NCIT:C93019" "intestinal flora" "synonym"))
  ("microliter"
   ("microliter" "MICROLITER" "NCIT:C48153" "microliter" "synonym" ","
    "microliter" "UO:0000101" "microliter" "name" "NCIT:C48153" "microliter"
    "name"))
  ("microplate" ("microplate" "microplate" "NCIT:C43377" "microplate" "name"))
  ("microsatellite"
   ("microsatellite" "MICROSATELLITE" "NCIT:C13338" "microsatellite repeat"
    "synonym" "," "microsatellite" "NCIT:C13338" "microsatellite repeat"
    "synonym" "NCIT:C13338" "microsatellite repeat" "synonym"))
  ("microsphere"
   ("microsphere" "microsphere" "NCIT:C94188" "microsphere" "name"))
  ("microsporidia"
   ("microsporidia" "MICROSPORIDIA" "NCIT:C123335" "microsporidia" "synonym"
    "," "microsporidia" "NCIT:C123335" "microsporidia" "name"))
  ("microtome" ("microtome" "microtome" "NCIT:C126373" "microtome" "name"))
  ("mismatch"
   ("mismatch" "mismatch" "NCIT:C67078" "mismatch" "name" "NCIT:C126298"
    "HLA mismatch" "synonym"))
  ("mle"
   ("mle" "MLE" "UP:Q43931" "Muconate cycloisomerase 1" "AltName: Short"
    "UP:etc" "" "fake"))
  ("monad" ("monad" "Monad" "HGNC:25176 G" "WD repeat domain 92" "Synonym"))
  ("monocytopenia"
   ("monocytopenia" "monocytopenia" "NCIT:C113714" "monocytopenia" "name"))
  ("monotherapy"
   ("monotherapy" "monotherapy" "NCIT:C157514" "single agent therapy"
    "synonym"))
  ("morpholino" ("morpholino" "morpholino" "NCIT:C60700" "morpholino" "name"))
  ("msec"
   ("msec" "msec" "NCIT:C41140" "millisecond" "synonym" "NCIT:C41140"
    "millisecond" "synonym"))
  ("mssm" ("mssm" "MSSM" "CHEBI:16086" "mycothione" "RELATED synonym"))
  ("multi" ("multi" "multi" "NCIT:C17648" "multiple" "synonym"))
  ("mutagen"
   ("mutagen" "mutagen" "CHEBI:25435" "mutagen" "name" "NCIT:C672" "mutagen"
    "name"))
  ("mycoplasma"
   ("mycoplasma" "MYCOPLASMA" "NCIT:C73540" "mycoplasma" "synonym" ","
    "mycoplasma" "NCIT:C73540" "mycoplasma" "name"))
  ("myocardium"
   ("myocardium" "myocardium" "BTO:0000901" "myocardium" "name" "NCIT:C12371"
    "myocardium" "name" "NCIT:C23306" "myocardium" "name"))
  ("mz"
   ("mz" "MZ" "NCIT:C16882" "mozambique" "synonym" "," "mz" "NCIT:C48049"
    "mass-to-charge ratio" "synonym"))
  ("n"
   ("n" "N" "NCIT:C14562" "N" "name" "NCIT:C25580" "N category" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C42546" "newton" "synonym" "NCIT:C42546" "newton" "synonym"
    "NCIT:C49487" "No" "synonym" "," "n" "NCIT:C54713" "nano" "synonym"))
  ("nae" ("nae" "NAE" "NCIT:C95815" "NEDD8 activating enzyme" "synonym"))
  ("nano"
   ("nano" "nano" "UO:0000300" "nano" "name" "NCIT:C54713" "nano" "name" ","
    "nano-" "NCIT:C54713" "nano" "synonym"))
  ("nanomaterials"
   ("nanomaterials" "nanomaterials" "NCIT:C53671" "nanomaterials" "name"))
  ("nanopore" ("nanopore" "nanopore" "NCIT:C62343" "nanopore" "name"))
  ("nanosheet" ("nanosheet" "nano-sheet" "CHEBI:52531" "nanosheet" "name"))
  ("nanostructure"
   ("nanostructure" "nanostructure" "CHEBI:50795" "nanostructure" "name"))
  ("nanotechnology"
   ("nanotechnology" "nanotechnology" "NCIT:C18478" "nanotechnology" "name"))
  ("nasopharynx"
   ("nasopharynx" "NASOPHARYNX" "NCIT:C12423" "nasopharynx" "synonym" ","
    "nasopharynx" "BTO:0000662" "nasopharynx" "name" "NCIT:C12423"
    "nasopharynx" "name" "NCIT:C23357" "nasopharynx" "name" "NCIT:C60591"
    "nasopharynx" "name"))
  ("ncbi"
   ("ncbi" "NCBI" "NCIT:C45799" "national center for biotechnology information"
    "synonym"))
  ("nd"
   ("nd" "ND" "CHEBI:73419" "Asn-Asp" "RELATED synonym" "NCIT:C39473"
    "naturopathic doctor" "synonym" "NCIT:C43488" "north dakota" "synonym"
    "NCIT:C66789" "CDISC SDTM not done terminology" "synonym" "," "Nd"
    "CVCL:IU77" "Nd" "name"))
  ("nearest" ("nearest" "nearest" "NCIT:C25583" "nearest" "name"))
  ("nebulizer"
   ("nebulizer" "nebulizer" "NCIT:C28172" "nebulizer" "name" "NCIT:C50080"
    "nebulizer device" "synonym"))
  ("neg" ("neg" "NEG" "NCIT:C25247" "negative" "synonym"))
  ("nelarabine"
   ("nelarabine" "NELARABINE" "NCIT:C1704" "nelarabine" "synonym" ","
    "nelarabine" "CHEBI:63612" "nelarabine" "name" "MESH:C104457" "nelarabine"
    "NM" "NCIT:C1704" "nelarabine" "name"))
  ("neuropathology"
   ("neuropathology" "neuropathology" "NCIT:C18479" "neuropathology" "name"))
  ("niger"
   ("niger" "NIGER" "NCIT:C16916" "niger" "synonym" "NCIT:C16916" "niger"
    "synonym" "," "niger" "NCIT:C16916" "niger" "name"))
  ("ninhydrin" ("ninhydrin" "ninhydrin" "CHEBI:86374" "ninhydrin" "name"))
  ("nitazoxanide"
   ("nitazoxanide" "NITAZOXANIDE" "NCIT:C47637" "nitazoxanide" "synonym" ","
    "nitazoxanide" "MESH:C041747" "nitazoxanide" "NM" "NCIT:C47637"
    "nitazoxanide" "name"))
  ("nitrocefin"
   ("nitrocefin" "NITROCEFIN" "NCIT:C76562" "nitrocefin" "synonym" ","
    "nitrocefin" "MESH:C021720" "nitrocefin" "NM" "NCIT:C76562" "nitrocefin"
    "name"))
  ("nitroimidazole"
   ("nitroimidazole" "nitroimidazole" "CHEBI:67135" "2-nitroimidazole"
    "RELATED synonym"))
  ("nk"
   ("nk" "NK" "CVCL:1D01" "Novikoff-Hepatoma" "RELATED synonym" "UP:Q57849"
    "Nucleoside kinase" "RecName: Short" "UP:O27587" "Nucleoside kinase"
    "RecName: Short" "UP:Q9HJT3" "Nucleoside kinase" "RecName: Short"
    "NCIT:C12536" "natural killer cell" "synonym" "NCIT:C12741"
    "natural killer cell" "synonym" "NCIT:C12741" "natural killer cell"
    "synonym" "NCIT:C23672" "natural killer cells" "synonym"))
  ("nl"
   ("nl" "N-L" "CHEBI:141422" "Asn-Leu" "RELATED synonym" "," "NL"
    "NCIT:C16903" "netherlands" "synonym" "," "nL" "NCIT:C69188" "nanoliter"
    "synonym" "NCIT:C69188" "nanoliter" "synonym" "NCIT:C69188" "nanoliter"
    "synonym" "," "nl" "UO:0000102" "nanoliter" "EXACT synonym" "NCIT:C69188"
    "nanoliter" "synonym" "NCIT:C69188" "nanoliter" "synonym"))
  ("nlm" ("nlm" "NLM" "NCIT:C82620" "national library of medicine" "synonym"))
  ("nonactin"
   ("nonactin" "Nonactin" "CHEBI:7614" "Nonactin" "name" "," "nonactin"
    "MESH:C050476" "nonactin" "NM"))
  ("nonmalignant"
   ("nonmalignant" "non-malignant" "NCIT:C25588" "non-malignant" "name" ","
    "nonmalignant" "NCIT:C25588" "non-malignant" "synonym" "NCIT:C25588"
    "non-malignant" "synonym"))
  ("nos"
   ("nos" "NOS" "FPLX:NOS" "NOS" "name" "HGNC:7872 G" "nitric oxide synthase 1"
    "Previous Symbol" "HGNC:7873 G" "nitric oxide synthase 2" "Synonym"
    "UP:O61608" "Nitric oxide synthase" "RecName: Short" "UP:Q26240"
    "Nitric oxide synthase, salivary gland" "RecName: Short" "UP:Q9I9M2"
    "Nitric oxide synthase" "RecName: Short" "FA:02504" "NOS family" "ID"
    "NCIT:C19594" "not otherwise specified" "synonym" "NCIT:C38565"
    "nitric oxide synthase, inducible" "synonym" "NCIT:C50894" "NOS1"
    "synonym"))
  ("ns"
   ("ns" "NS" "CHEBI:73426" "Asn-Ser" "RELATED synonym" "Orphanet:634"
    "Netherton syndrome" "EXACT synonym" "HGNC:29931 G" "G protein nucleolar 3"
    "Synonym" "HGNC:15464 G" "serine peptidase inhibitor Kazal type 5"
    "Synonym" "UP:Q8B0H3 H" "Phosphoprotein" "AltName: Full" "UP:Q8B0I3 H"
    "Phosphoprotein" "AltName: Full" "UP:Q8B0H8 H" "Phosphoprotein"
    "AltName: Full" "NCIT:C52546" "KRAS" "synonym" "NCIT:C135176"
    "nuclear cataract" "synonym" "," "Ns" "CHEBI:33349" "dubnium atom"
    "RELATED synonym" "CHEBI:33355" "bohrium atom" "RELATED synonym" "," "ns"
    "UO:0000150" "nanosecond" "EXACT synonym" "NCIT:C73767" "nanosecond"
    "synonym"))
  ("nsp"
   ("nsp" "NSP" "HGNC:10467 G" "reticulon 1" "Previous Symbol" "HGNC:30615 G"
    "sperm antigen with calponin homology and coiled-coil domains 1" "Synonym"
    "UP:Q9NQC3 H" "Reticulon-4" "AltName: Short" "UP:O95405 H"
    "Zinc finger FYVE domain-containing protein 9" "AltName: Short"
    "NCIT:C17692" "reticulon-1" "synonym" "NCIT:C20124" "reticulon-4" "synonym"
    "NCIT:C21259" "neuroendocrine-specific protein" "synonym" "NCIT:C26483"
    "zinc finger FYVE domain-containing protein 9" "synonym" "NCIT:C54436"
    "RTN1" "synonym" "NCIT:C97532" "SPECC1" "synonym"))
  ("nt"
   ("nt" "NT" "UP:P32560" "Neurotensin" "RecName: Short" "UP:P13724"
    "Neurotensin" "RecName: Short" "UP:P41536" "Neurotensin" "RecName: Short"
    "UP:P81796" "Neurotensin" "RecName: Short" "UP:P31745" "Neurotensin"
    "RecName: Short" "NCIT:C92837" "nuchal translucency screen" "synonym"
    "NCIT:C114925" "NT5E" "synonym" "NCIT:C120477" "tyrosine nitration"
    "synonym" "NCIT:C126486" "NTS" "synonym" "NCIT:C126490" "neurotensin"
    "synonym"))
  ("nucleo"
   ("nucleo" "nucleo" "CHEBI:33252" "atomic nucleus" "RELATED synonym"))
  ("nucleoli" ("nucleoli" "nucleoli" "UP:SL-0188 D" "Nucleolus" "SY"))
  ("nucleophile"
   ("nucleophile" "nucleophile" "CHEBI:59740" "nucleophilic reagent"
    "RELATED synonym"))
  ("nucleoside"
   ("nucleoside" "Nucleoside" "CHEBI:33838" "nucleoside" "name" ","
    "nucleoside" "NCIT:C707" "nucleoside" "name"))
  ("nwk"
   ("nwk" "nwk" "UP:X2JAU8"
    "Protein nervous wreck {ECO:0000303|PubMed:14980202, ECO:0000303|PubMed:18701694, ECO:0000303|PubMed:21464232}"
    "RecName: Short"))
  ("o" ("o" "O" "NCIT:C722" "oxygen" "synonym"))
  ("od"
   ("od" "OD" "NCIT:C39384" "doctor of optometry" "synonym" "NCIT:C73681"
    "unit of optical density" "synonym" "NCIT:C119333" "right eye" "synonym"))
  ("odorant" ("odorant" "odorant" "NCIT:C93262" "odorant" "name"))
  ("oe"
   ("oe" "OE" "CVCL:J350" "OE" "name" "CVCL:U059" "PNMR OE" "RELATED synonym"
    "NCIT:C147180" "ophthalmic examinations domain" "synonym" "," "Oe"
    "NCIT:C68917" "oersted" "synonym"))
  ("ophthalaldehyde"
   ("ophthalaldehyde" "o-phthalaldehyde" "CHEBI:70851" "phthalaldehyde"
    "RELATED synonym"))
  ("opioid" ("opioid" "opioid" "NCIT:C1506" "opioid" "name"))
  ("oritavancin"
   ("oritavancin" "oritavancin" "CHEBI:82699" "oritavancin" "name"
    "MESH:C100708" "oritavancin" "NM"))
  ("ortholog"
   ("ortholog" "ortholog" "NCIT:C28708" "orthologous gene" "synonym"))
  ("orthovanadate"
   ("orthovanadate" "ortho-Vanadate" "CHEBI:46442" "vanadate(3-)"
    "RELATED synonym"))
  ("oseltamivir"
   ("oseltamivir" "OSELTAMIVIR" "NCIT:C62061" "oseltamivir" "synonym" ","
    "Oseltamivir" "CHEBI:7798" "oseltamivir" "name" "," "oseltamivir"
    "NCIT:C62061" "oseltamivir" "name"))
  ("overdose" ("overdose" "overdose" "NCIT:C50873" "overdose" "name"))
  ("ovine" ("ovine" "ovine" "NCIT:C14273" "sheep" "synonym"))
  ("ovotransferrin"
   ("ovotransferrin" "ovotransferrin" "UP:P56410" "Ovotransferrin"
    "RecName: Full" "UP:P02789" "Ovotransferrin" "RecName: Full" "UP:P85895"
    "Ovotransferrin" "RecName: Full"))
  ("oximetry"
   ("oximetry" "oximetry" "NCIT:C60832" "oxygen saturation measurement"
    "synonym"))
  ("palivizumab"
   ("palivizumab" "PALIVIZUMAB" "NCIT:C2625" "palivizumab" "synonym" ","
    "palivizumab" "NCIT:C2625" "palivizumab" "name"))
  ("pallidum"
   ("pallidum" "pallidum" "BTO:0002246" "globus pallidus" "RELATED synonym"))
  ("pancreatitis"
   ("pancreatitis" "pancreatitis" "EFO:0000278" "pancreatitis" "name"
    "NCIT:C3306" "pancreatitis" "name" "NCIT:C56602" "pancreatitis, CTCAE 3.0"
    "synonym" "NCIT:C146789" "pancreatitis, CTCAE 5.0" "synonym"))
  ("parasitemia"
   ("parasitemia" "parasitemia" "EFO:0001067" "parasitic infection"
    "EXACT synonym"))
  ("parenchyma"
   ("parenchyma" "parenchyma" "BTO:0000999" "plant parenchyma"
    "RELATED synonym" "BTO:0001539" "parenchyma" "name" "NCIT:C74601"
    "parenchyma" "name"))
  ("parkinsonism"
   ("parkinsonism" "parkinsonism" "NCIT:C116922" "parkinsonism" "name"))
  ("parvovirus" ("parvovirus" "parvovirus" "NCIT:C14299" "parvovirus" "name"))
  ("pathophysiology"
   ("pathophysiology" "pathophysiology" "NCIT:C20632" "pathophysiology"
    "name"))
  ("pdf"
   ("pdf" "PDF" "CVCL:1G97" "PDF" "name" "HGNC:30142 G"
    "growth differentiation factor 15" "Synonym" "HGNC:30012 G"
    "peptide deformylase, mitochondrial" "Approved Symbol" "UP:O66847"
    "Peptide deformylase" "RecName: Short" "UP:etc" "" "fake" "NCIT:C34026"
    "growth/Differentiation factor 15" "synonym" "NCIT:C52014" "GDF15"
    "synonym" "NCIT:C150103" "EDQM-HC pharmaceutical dosage form terminology"
    "synonym" "," "pdf" "NCIT:C63805" "portable document format" "synonym"))
  ("penetrance" ("penetrance" "penetrance" "NCIT:C48667" "penetrance" "name"))
  ("pentanedioate"
   ("pentanedioate" "pentanedioate" "CHEBI:30921" "glutarate(2-)"
    "EXACT synonym"))
  ("perampanel"
   ("perampanel" "PERAMPANEL" "NCIT:C75029" "perampanel" "synonym" ","
    "perampanel" "CHEBI:71013" "perampanel" "name" "MESH:C551441" "perampanel"
    "NM" "NCIT:C75029" "perampanel" "name"))
  ("percentile" ("percentile" "percentile" "NCIT:C48919" "percentile" "name"))
  ("pericardium"
   ("pericardium" "PERICARDIUM" "NCIT:C13005" "pericardium" "synonym" ","
    "pericardium" "BTO:0000717" "pericardium" "name" "NCIT:C13005"
    "pericardium" "name" "NCIT:C23935" "pericardium" "name" "NCIT:C60601"
    "pericardium" "name"))
  ("pgrp"
   ("pgrp" "PGRP" "HGNC:8904 G" "peptidoglycan recognition protein 1"
    "Synonym"))
  ("pharmacotherapy"
   ("pharmacotherapy" "pharmacotherapy" "NCIT:C15986" "pharmacotherapy"
    "name"))
  ("phenylalanin"
   ("phenylalanin" "Phenylalanin" "CHEBI:28044" "phenylalanine"
    "RELATED synonym"))
  ("phosphide"
   ("phosphide" "phosphide" "CHEBI:33468" "phosphide(3-)" "RELATED synonym"))
  ("phosphine"
   ("phosphine" "phosphine" "CHEBI:30278" "phosphane" "RELATED synonym"
    "CHEBI:35883" "phosphine" "name" "MESH:C044646" "phosphine" "NM"))
  ("phosphocreatine"
   ("phosphocreatine" "Phosphocreatine" "CHEBI:17287" "N-phosphocreatine"
    "RELATED synonym"))
  ("photomultiplier"
   ("photomultiplier" "photomultiplier" "NCIT:C50098" "photomultiplier device"
    "synonym" "NCIT:C50098" "photomultiplier device" "synonym"))
  ("pico"
   ("pico" "pico" "UO:0000302" "pico" "name" "NCIT:C67901" "pico" "name" ","
    "pico-" "NCIT:C67901" "pico" "synonym"))
  ("picosecond"
   ("picosecond" "picosecond" "UO:0000030" "picosecond" "name" "NCIT:C73768"
    "picosecond" "name"))
  ("pinene" ("pinene" "pinene" "CHEBI:17187" "pinene" "name"))
  ("piperacillin"
   ("piperacillin" "PIPERACILLIN" "NCIT:C62069" "piperacillin" "synonym" ","
    "Piperacillin" "CHEBI:8232" "piperacillin" "name" "," "piperacillin"
    "NCIT:C62069" "piperacillin" "name"))
  ("piperaquine"
   ("piperaquine" "PIPERAQUINE" "NCIT:C87634" "piperaquine" "synonym" ","
    "piperaquine" "CHEBI:91231" "piperaquine" "name" "MESH:C034759"
    "piperaquine" "NM" "NCIT:C87634" "piperaquine" "name"))
  ("pirlindole"
   ("pirlindole" "PIRLINDOLE" "NCIT:C66428" "pirlindole" "synonym" ","
    "pirlindole" "MESH:C009830" "pirlindole" "NM" "NCIT:C66428" "pirlindole"
    "name"))
  ("pivalate" ("pivalate" "pivalate" "CHEBI:63894" "pivalate" "name"))
  ("pixel"
   ("pixel" "PIXEL" "NCIT:C48367" "pixel" "synonym" "," "pixel" "NCIT:C48367"
    "pixel" "name"))
  ("pk"
   ("pk" "PK" "CVCL:AZ81" "PK" "name" "CHEBI:74792" "Pro-Lys" "RELATED synonym"
    "UP:O65595 C" "Probable pyruvate kinase, cytosolic isozyme"
    "RecName: Short" "XFAM:PF00224 Family" "PK" "ID" "NCIT:C15299"
    "pharmacokinetics" "synonym" "NCIT:C15299" "pharmacokinetics" "synonym"
    "NCIT:C16949" "pakistan" "synonym" "NCIT:C49189" "primary key" "synonym"
    "NCIT:C129392" "pyruvate kinase" "synonym" "NCIT:C156470"
    "pyruvate kinase measurement" "synonym" "," "Pk" "CHEBI:60948"
    "alpha-D-Gal-(1->4)-beta-D-Gal-(1->4)-D-Glc" "RELATED synonym"))
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
  ("plasmodesmata"
   ("plasmodesmata" "plasmodesmata" "GO:0009506" "plasmodesma" "EXACT synonym"
    "UP:SL-0208 D" "Plasmodesma" "SY"))
  ("plethysmography"
   ("plethysmography" "PLETHYSMOGRAPHY" "NCIT:C122173" "plethysmography"
    "synonym" "," "plethysmography" "NCIT:C122173" "plethysmography" "name"))
  ("ploidy"
   ("ploidy" "PLOIDY" "NCIT:C159086" "GDC ploidy terminology" "synonym" ","
    "ploidy" "NCIT:C17001" "ploidy" "name"))
  ("pneumovirus"
   ("pneumovirus" "PNEUMOVIRUS" "NCIT:C112398" "pneumovirus" "synonym" ","
    "pneumovirus" "NCIT:C112398" "pneumovirus" "name"))
  ("po"
   ("po" "PO" "CVCL:N593" "PO" "name" "UP:Q8VCZ9 M"
    "Hydroxyproline dehydrogenase" "AltName: Short" "NCIT:C38288"
    "oral route of administration" "synonym" "NCIT:C38288"
    "oral route of administration" "synonym"))
  ("poi" ("poi" "POI" "UP:P81765" "Tyrosinase inhibitor" "AltName: Short"))
  ("polymorphism"
   ("polymorphism" "polymorphism" "NCIT:C17004" "genetic polymorphism"
    "synonym" "NCIT:C17004" "genetic polymorphism" "synonym" "NCIT:C61384"
    "polymorphism" "name"))
  ("polyprotein"
   ("polyprotein" "polyprotein" "UP:C1JCT1" "Polyprotein" "RecName: Full"))
  ("polysulfone"
   ("polysulfone" "polysulfone" "CHEBI:53281" "poly(sulfone) macromolecule"
    "RELATED synonym" "CHEBI:60740" "poly(sulfone) polymer" "RELATED synonym"
    "MESH:C017662" "polysulfone P 1700" "SY"))
  ("pos" ("pos" "POS" "NCIT:C62164" "body position" "synonym"))
  ("postmortem" ("postmortem" "postmortem" "NCIT:C94193" "postmortem" "name"))
  ("postpartum" ("postpartum" "postpartum" "NCIT:C92851" "postpartum" "name"))
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
  ("ppp"
   ("ppp" "PPP" "CHEBI:73647" "Pro-Pro-Pro" "RELATED synonym" "Orphanet:163927"
    "Pustulosis palmaris et plantaris" "EXACT synonym" "NCIT:C106556"
    "platelet-poor plasma" "synonym"))
  ("pre" ("pre" "pre" "NCIT:C25629" "prior" "synonym"))
  ("preprocess" ("preprocess" "preprocess" "NCIT:C64201" "preprocess" "name"))
  ("preset" ("preset" "pre-SET" "XFAM:PF05033 Family" "pre-SET" "ID"))
  ("preterm" ("preterm" "pre-term" "NCIT:C92861" "preterm birth" "synonym"))
  ("proband" ("proband" "proband" "NCIT:C64435" "proband" "name"))
  ("procalcitonin"
   ("procalcitonin" "procalcitonin" "NCIT:C103430" "procalcitonin measurement"
    "synonym" "NCIT:C103430" "procalcitonin measurement" "synonym"))
  ("prodrug" ("prodrug" "prodrug" "CHEBI:50266" "prodrug" "name"))
  ("progeny"
   ("progeny" "progeny" "NCIT:C42708" "offspring" "synonym" "NCIT:C42708"
    "offspring" "synonym"))
  ("prokaryote" ("prokaryote" "prokaryote" "NCIT:C14263" "prokaryote" "name"))
  ("propanoate"
   ("propanoate" "propanoate" "CHEBI:17272" "propionate" "RELATED synonym"))
  ("propionamide"
   ("propionamide" "PROPIONAMIDE" "CHEBI:45422" "propionamide" "name" ","
    "propionamide" "MESH:C034666" "propionamide" "NM"))
  ("proteome" ("proteome" "proteome" "NCIT:C18276" "proteome" "name"))
  ("protista" ("protista" "protista" "NCIT:C77914" "protista" "name"))
  ("protoplasts"
   ("protoplasts" "protoplasts" "NCIT:C12659" "protoplasts" "name"))
  ("pseudogene" ("pseudogene" "pseudogene" "NCIT:C40415" "pseudogene" "name"))
  ("psychopathology"
   ("psychopathology" "psychopathology" "NCIT:C17035" "psychopathology"
    "name"))
  ("pubchem" ("pubchem" "pubChem" "NCIT:C54563" "pubChem" "name"))
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
  ("q"
   ("q" "Q" "NCIT:C88108" "quintamillesimal series of attenuation" "synonym"))
  ("qq" ("qq" "QQ" "CHEBI:73846" "Gln-Gln" "RELATED synonym"))
  ("quadriceps" ("quadriceps" "quadriceps" "BTO:0001149" "quadriceps" "name"))
  ("quadrupole" ("quadrupole" "quadrupole" "NCIT:C70689" "quadrupole" "name"))
  ("r"
   ("r" "R" "NCIT:C70575" "roentgen" "synonym" "NCIT:C70575" "roentgen"
    "synonym" "NCIT:C70575" "roentgen" "synonym" "," "r" "NCIT:C3360"
    "supernumerary circular chromosome" "synonym"))
  ("raphe" ("raphe" "RAPHE" "NCIT:C97335" "raphe nuclei" "synonym"))
  ("rdrp"
   ("rdrp" "RDRP" "UP:Q8AZL8" "RNA-directed RNA polymerase" "RecName: Short"
    "UP:etc" "" "fake" "," "RdRP" "XFAM:PF05183 Family" "RdRP" "ID" "," "RdRp"
    "UP:Q66929 B" "RNA-directed RNA polymerase" "RecName: Short"))
  ("reg"
   ("reg" "REG" "HGNC:9951 G" "regenerating family member 1 alpha"
    "Previous Symbol" "UP:P23132" "Lithostathine" "AltName: Short" "UP:P10758"
    "Lithostathine" "AltName: Short" "UP:P05451 H" "Lithostathine-1-alpha"
    "AltName: Short" "NCIT:C50964" "EXTL3" "synonym" "NCIT:C131323" "REG1A"
    "synonym" "NCIT:C131324" "lithostathine-1-alpha" "synonym"))
  ("remdesivir"
   ("remdesivir" "REMDESIVIR" "NCIT:C152185" "remdesivir" "synonym" ","
    "remdesivir" "MESH:C000606551" "GS-5734" "SY" "NCIT:C152185" "remdesivir"
    "name"))
  ("replicate"
   ("replicate" "replicate" "EFO:0000683" "replicate" "name" "NCIT:C28038"
    "replicate" "name" "NCIT:C47886" "repeat" "synonym"))
  ("respirovirus"
   ("respirovirus" "RESPIROVIRUS" "NCIT:C14310" "paramyxovirus" "synonym" ","
    "respirovirus" "NCIT:C117721" "respirovirus" "name"))
  ("retest"
   ("retest" "RETEST" "NCIT:C111107"
    "CDISC SDTM respiratory test name terminology" "synonym" "NCIT:C124025"
    "respiratory system findings test" "synonym"))
  ("retro"
   ("retro" "RETRO" "NCIT:C38296" "retrobulbar route of administration"
    "synonym" "NCIT:C38296" "retrobulbar route of administration" "synonym"))
  ("reuse"
   ("reuse" "REUSE" "NCIT:C53613" "device reuse" "synonym" "," "reuse"
    "NCIT:C79891" "reuse" "name"))
  ("reversine"
   ("reversine" "reversine" "CHEBI:70723" "reversine" "name" "MESH:C484369"
    "2-(4-morpholinoanilino)-6-cyclohexylaminopurine" "SY"))
  ("ri"
   ("ri" "RI" "CHEBI:73814" "Arg-Ile" "RELATED synonym" "CHEBI:8753" "RI"
    "name" "EFO:0004008" "recombinant inbred strain" "EXACT synonym"
    "NCIT:C43464" "rhode island" "synonym"))
  ("ribozyme"
   ("ribozyme" "RIBOZYME" "NCIT:C1292" "ribozyme" "synonym" "," "ribozyme"
    "NCIT:C1292" "ribozyme" "name"))
  ("rm"
   ("rm" "RM" "CVCL:LJ86" "RM" "name" "CHEBI:73817" "Arg-Met"
    "RELATED synonym"))
  ("rms"
   ("rms" "RMS" "BTO:0003412" "rostral migratory stream" "RELATED synonym"
    "CVCL:W527" "RMS" "name" "NCIT:C73485" "root mean square" "synonym"
    "NCIT:C156641" "reference member state" "synonym"))
  ("rna"
   ("rna" "RNA" "CHEBI:33697" "ribonucleic acid" "RELATED synonym" "NCIT:C812"
    "ribonucleic acid" "synonym" "NCIT:C812" "ribonucleic acid" "synonym"
    "NCIT:C812" "ribonucleic acid" "synonym" "NCIT:C132301"
    "ribonucleic acid measurement" "synonym"))
  ("rotavirus"
   ("rotavirus" "ROTAVIRUS" "NCIT:C77199" "rotavirus" "synonym" "," "rotavirus"
    "NCIT:C77199" "rotavirus" "name"))
  ("rpm"
   ("rpm" "RPM" "CVCL:IX00" "RPM" "name" "UP:Q3UYI5 M"
    "Ral guanine nucleotide dissociation stimulator-like 3" "AltName: Short"
    "NCIT:C115127" "raven's progressive matrices" "synonym" "," "rpm"
    "NCIT:C70469" "revolution per minute" "synonym"))
  ("rst"
   ("rst" "RST" "HGNC:17989 G" "solute carrier family 22 member 12" "Synonym"
    "UP:Q96S37 H" "Solute carrier family 22 member 12" "AltName: Short"
    "UP:Q8CFZ5 M" "Solute carrier family 22 member 12" "AltName: Short"
    "XFAM:PF12174 Domain" "RST" "ID"))
  ("rt"
   ("rt" "RT" "NCIT:C15313" "radiation therapy" "synonym" "NCIT:C82594"
    "refractory thrombocytopenia" "synonym" "NCIT:C105637" "right thigh"
    "synonym" "NCIT:C105637" "right thigh" "synonym" "NCIT:C159103"
    "GDC relationship type terminology" "synonym"))
  ("rubella" ("rubella" "rubella" "NCIT:C85051" "rubella infection" "synonym"))
  ("rumen"
   ("rumen" "RUMEN" "NCIT:C98778" "rumen" "synonym" "," "rumen" "BTO:0001194"
    "rumen" "name" "NCIT:C98778" "rumen" "name"))
  ("rupintrivir"
   ("rupintrivir" "RUPINTRIVIR" "NCIT:C82255" "rupintrivir" "synonym" ","
    "rupintrivir" "MESH:C118874" "rupintrivir" "NM" "NCIT:C82255" "rupintrivir"
    "name"))
  ("ry"
   ("ry" "RY" "CVCL:U964" "RY" "name" "CHEBI:73822" "Arg-Tyr"
    "RELATED synonym"))
  ("salmochelin"
   ("salmochelin" "salmochelin" "MESH:C000630262" "salmochelin" "NM"))
  ("sarkosyl" ("sarkosyl" "sarkosyl" "MESH:C025231" "sarkosyl" "NM"))
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
  ("se"
   ("se" "SE" "CVCL:6D91" "SE" "name" "CHEBI:74813" "Ser-Glu" "RELATED synonym"
    "HGNC:4013 G" "fucosyltransferase 2" "Previous Symbol" "UP:Q14534 H"
    "Squalene monooxygenase" "AltName: Short" "UP:P52019 M"
    "Squalene monooxygenase" "AltName: Short" "XFAM:PF08491 Family" "SE" "ID"
    "NCIT:C17180" "sweden" "synonym" "NCIT:C49616" "subject element domain"
    "synonym" "NCIT:C53323" "standard error" "synonym" "NCIT:C156553"
    "sleep efficiency" "synonym" "NCIT:C156553" "sleep efficiency" "synonym"
    "," "Se" "UP:Q10981 H" "Galactoside 2-alpha-L-fucosyltransferase 2"
    "AltName: Short" "NCIT:C825" "selenium" "synonym"))
  ("seq" ("seq" "SEQ" "NCIT:C70710" "sequence number" "synonym"))
  ("sequelae"
   ("sequelae" "sequelae" "NCIT:C126361" "disease sequela" "synonym"
    "NCIT:C126361" "disease sequela" "synonym"))
  ("sequencer" ("sequencer" "sequencer" "EFO:0003739" "sequencer" "name"))
  ("serostatus" ("serostatus" "serostatus" "NCIT:C159691" "serostatus" "name"))
  ("serotype" ("serotype" "serotype" "NCIT:C88894" "serotype" "name"))
  ("sialate"
   ("sialate" "sialate" "CHEBI:35418" "N-acetylneuraminate" "RELATED synonym"))
  ("siderophore"
   ("siderophore" "siderophore" "CHEBI:26672" "siderophore" "name"))
  ("sinusoid"
   ("sinusoid" "sinusoid" "NCIT:C32467" "discontinuous capillary" "synonym"))
  ("soleus"
   ("soleus" "soleus" "BTO:0001265" "soleus" "name" "NCIT:C53075" "soleus"
    "name"))
  ("somite"
   ("somite" "somite" "BTO:0001558" "somite" "name" "NCIT:C34302" "somite"
    "name"))
  ("spacer"
   ("spacer" "spacer" "NCIT:C50182" "spacer device" "synonym" "NCIT:C50182"
    "spacer device" "synonym"))
  ("spanish"
   ("spanish" "SPANISH" "NCIT:C67120" "spanish" "synonym" "," "spanish"
    "NCIT:C67120" "spanish" "name" "NCIT:C120587" "spanish language"
    "synonym"))
  ("spectrometer"
   ("spectrometer" "spectrometer" "NCIT:C50061" "spectrometer device" "synonym"
    "NCIT:C50061" "spectrometer device" "synonym" "NCIT:C62336" "spectrometer"
    "name"))
  ("spectrophotometer"
   ("spectrophotometer" "spectrophotometer" "NCIT:C62333" "spectrophotometer"
    "name"))
  ("spermatids" ("spermatids" "spermatids" "NCIT:C23538" "spermatids" "name"))
  ("spirometry"
   ("spirometry" "SPIROMETRY" "NCIT:C85397" "spirometry" "synonym" ","
    "spirometry" "NCIT:C85397" "spirometry" "name"))
  ("sr"
   ("sr" "SR" "CVCL:1711" "SR" "name" "EFO:0002352" "SR" "name" "HGNC:11141 G"
    "synuclein gamma" "Synonym" "UP:O93743" "Sensory rhodopsin"
    "RecName: Short" "UP:Q9NZ50" "Gamma-synuclein" "AltName: Short"
    "UP:O76070 H" "Gamma-synuclein" "AltName: Short" "NCIT:C17175" "suriname"
    "synonym" "NCIT:C21218" "gamma-synuclein" "synonym" "NCIT:C42672"
    "sustained release dosage form" "synonym" "NCIT:C50976" "SNCG" "synonym"
    "NCIT:C51472" "SCTR" "synonym" "NCIT:C112420" "skin response domain"
    "synonym" "NCIT:C115582" "final statistical report" "synonym"
    "NCIT:C117126" "SR" "name" "NCIT:C151964"
    "saturation recovery pulse sequence" "synonym" "," "Sr" "NCIT:C846"
    "strontium" "synonym" "NCIT:C49467" "senior" "synonym" "," "sr"
    "UO:0000125" "steradian" "EXACT synonym"))
  ("srv" ("srv" "srv" "XFAM:PF10323 Family" "7TM GPCR Srv" "PI"))
  ("stereochemistry"
   ("stereochemistry" "STEREOCHEMISTRY" "NCIT:C18188" "stereochemistry"
    "synonym" "," "stereochemistry" "NCIT:C18188" "stereochemistry" "name"))
  ("stereotypy" ("stereotypy" "stereotypy" "NCIT:C116731" "stereotypy" "name"))
  ("stk"
   ("stk" "STK" "NCIT:C17325" "serine/Threonine protein kinase" "synonym"
    "NCIT:C25873" "serine/Threonine protein kinase gene" "synonym"))
  ("stl"
   ("stl" "STL" "HGNC:50866 R" "RNF217 antisense RNA 1 (head to head)"
    "Synonym" "NCIT:C97904" "RNF217-AS1" "synonym" "NCIT:C97905"
    "six-twelve leukemia" "synonym"))
  ("subclass" ("subclass" "subclass" "NCIT:C45285" "subclass" "name"))
  ("subgenus" ("subgenus" "subgenus" "NCIT:C62692" "subgenus" "name"))
  ("submitter"
   ("submitter" "submitter" "EFO:0001741" "submitter" "name" "NCIT:C54269"
    "submitter" "name"))
  ("suborder" ("suborder" "suborder" "NCIT:C45288" "suborder" "name"))
  ("subsite" ("subsite" "subsite" "NCIT:C45966" "subsite" "name"))
  ("subspecies" ("subspecies" "subspecies" "NCIT:C62700" "subspecies" "name"))
  ("subtype" ("subtype" "subtype" "NCIT:C25696" "subtype" "name"))
  ("sulbactam"
   ("sulbactam" "SULBACTAM" "NCIT:C61957" "sulbactam" "synonym" "," "sulbactam"
    "CHEBI:9321" "sulbactam" "name" "NCIT:C61957" "sulbactam" "name"))
  ("sulfonyl"
   ("sulfonyl" "sulfonyl" "CHEBI:29825" "sulfonyl group" "EXACT synonym"))
  ("supernatant"
   ("supernatant" "supernatant" "NCIT:C106485" "supernatant" "name"))
  ("superscript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("swiss"
   ("swiss" "swiss" "NCIT:C14425" "swiss mice (sdc)" "synonym" "NCIT:C14484"
    "swiss" "name"))
  ("sym" ("sym" "SYM" "HGNC:22935 G" "symplekin" "Synonym"))
  ("synthesizer"
   ("synthesizer" "synthesizer" "NCIT:C50206" "synthesizer device" "synonym"
    "NCIT:C50206" "synthesizer device" "synonym"))
  ("tachycardia"
   ("tachycardia" "TACHYCARDIA" "NCIT:C111121" "tachycardia by ECG finding"
    "synonym" "," "tachycardia" "NCIT:C38029" "tachycardia" "name"
    "NCIT:C111121" "tachycardia by ECG finding" "synonym" "NCIT:C111121"
    "tachycardia by ECG finding" "synonym" "NCIT:C111121"
    "tachycardia by ECG finding" "synonym"))
  ("taken" ("taken" "taken" "NCIT:C25701" "taken" "name"))
  ("tapetum" ("tapetum" "tapetum" "BTO:0001350" "tapetum" "name"))
  ("taxon"
   ("taxon" "taxon" "NCIT:C14250" "organism" "synonym" "NCIT:C40098" "taxon"
    "name" "NCIT:C45523" "taxon object" "synonym"))
  ("telehealth"
   ("telehealth" "telehealth" "NCIT:C15380" "telemedicine" "synonym"
    "NCIT:C16183" "telehealth" "name"))
  ("telemedicine"
   ("telemedicine" "telemedicine" "NCIT:C15380" "telemedicine" "name"))
  ("tenesmus" ("tenesmus" "tenesmus" "NCIT:C60661" "tenesmus" "name"))
  ("tert"
   ("tert" "TERT" "HGNC:11730 G" "telomerase reverse transcriptase"
    "Approved Symbol" "NCIT:C20183" "telomere reverse transcriptase" "synonym"
    "NCIT:C52497" "TERT" "name"))
  ("tetrad"
   ("tetrad" "tetrad" "BTO:0002442" "tetrad of microspores" "RELATED synonym"
    "BTO:0002443" "tetrad of pollen" "RELATED synonym"))
  ("tetrahedron"
   ("tetrahedron" "tetrahedron" "NCIT:C63856" "tetrahedron" "name"))
  ("tetramethylsilane"
   ("tetramethylsilane" "tetramethylsilane" "CHEBI:85361" "tetramethylsilane"
    "name" "MESH:C073196" "tetramethylsilane" "NM"))
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
  ("th"
   ("th" "TH" "CVCL:7026" "ACC-LC-73" "RELATED synonym" "CHEBI:73663" "Thr-His"
    "RELATED synonym" "HGNC:11782 G" "tyrosine hydroxylase" "Approved Symbol"
    "UP:P07101 H" "Tyrosine 3-monooxygenase" "AltName: Short" "UP:P24529 M"
    "Tyrosine 3-monooxygenase" "AltName: Short" "NCIT:C14998" "TH mouse"
    "synonym" "NCIT:C17192" "thailand" "synonym" "NCIT:C127895" "TH" "name"
    "NCIT:C127896" "tyrosine 3-monooxygenase" "synonym" "," "th" "UO:0010012"
    "thou" "EXACT synonym"))
  ("thalamus"
   ("thalamus" "THALAMUS" "NCIT:C12459" "thalamus" "synonym" "," "thalamus"
    "BTO:0001365" "thalamus" "name" "NCIT:C12459" "thalamus" "name"
    "NCIT:C23393" "thalamus" "name"))
  ("theta"
   ("theta" "THETA" "CHEBI:138143" "trihydroxyicosatrienoic acid"
    "RELATED synonym" "," "theta" "FA:01676" "theta family" "ID"))
  ("thioglycolate"
   ("thioglycolate" "thioglycolate" "CHEBI:30066" "thioglycolate(1-)"
    "RELATED synonym"))
  ("tibialis"
   ("tibialis" "tibialis" "BTO:0000864" "tibialis" "name" "NCIT:C53076"
    "tibialis muscle" "synonym"))
  ("tif"
   ("tif" "Tif" "HGNC:12446 G" "TYRO3 protein tyrosine kinase" "Synonym"))
  ("tigecycline"
   ("tigecycline" "TIGECYCLINE" "NCIT:C72865" "tigecycline" "synonym" ","
    "tigecycline" "CHEBI:142708" "tigecycline(1+)" "RELATED synonym"
    "CHEBI:149836" "tigecycline" "name" "NCIT:C72865" "tigecycline" "name"))
  ("tilorone"
   ("tilorone" "TILORONE" "NCIT:C73335" "tilorone" "synonym" "," "tilorone"
    "NCIT:C73335" "tilorone" "name"))
  ("timeline"
   ("timeline" "TimeLine" "MESH:C069856" "TimeLine" "NM" "," "timeline"
    "NCIT:C54576" "timeline" "name"))
  ("timepoint"
   ("timepoint" "timepoint" "EFO:0000724" "timepoint" "name" "NCIT:C68568"
    "timepoint" "name"))
  ("timespan" ("timespan" "timespan" "NCIT:C68594" "timespan" "name"))
  ("tinct" ("tinct" "tinct" "NCIT:C43000" "tincture dosage form" "synonym"))
  ("titer" ("titer" "titer" "NCIT:C67454" "titer" "name"))
  ("titre" ("titre" "titre" "NCIT:C67454" "titer" "synonym"))
  ("tonoplast"
   ("tonoplast" "tonoplast" "GO:0009705" "plant-type vacuole membrane"
    "EXACT synonym"))
  ("topology" ("topology" "topology" "NCIT:C54101" "topology" "name"))
  ("toremifene"
   ("toremifene" "TOREMIFENE" "NCIT:C1256" "toremifene" "synonym" ","
    "toremifene" "CHEBI:9635" "toremifene" "name" "NCIT:C1256" "toremifene"
    "name"))
  ("trans" ("trans" "TRANS" "NCIT:C82567" "transition rule" "synonym"))
  ("transcriptome"
   ("transcriptome" "transcriptome" "EFO:0004421" "transcriptome" "name"
    "NCIT:C153194" "transcriptome" "name"))
  ("transducer"
   ("transducer" "transducer" "NCIT:C50226" "transducer device" "synonym"
    "NCIT:C50226" "transducer device" "synonym"))
  ("transposon"
   ("transposon" "TRANSPOSON" "NCIT:C95942" "transposon" "synonym" ","
    "transposon" "NCIT:C1508" "retrotransposon" "synonym" "NCIT:C95942"
    "transposon" "name"))
  ("triamine" ("triamine" "triamine" "CHEBI:38751" "triamine" "name"))
  ("triethylamine"
   ("triethylamine" "Triethylamine" "CHEBI:35026" "triethylamine" "name" ","
    "triethylamine" "MESH:C016162" "triethylamine" "NM"))
  ("trimester" ("trimester" "trimester" "NCIT:C69121" "trimester" "name"))
  ("triploid" ("triploid" "triploid" "NCIT:C8324" "triploidy" "synonym"))
  ("tripolyphosphate"
   ("tripolyphosphate" "Tripolyphosphate" "CHEBI:18036" "triphosphate(5-)"
    "RELATED synonym"))
  ("ttest" ("ttest" "t-test" "NCIT:C53231" "t-test" "name"))
  ("tubulointerstitium"
   ("tubulointerstitium" "tubulointerstitium" "BTO:0006279"
    "tubulointerstitium" "name"))
  ("tuple" ("tuple" "tuple" "NCIT:C43426" "tuple" "name"))
  ("tv"
   ("tv" "TV" "CVCL:VU90" "TV" "name" "CHEBI:75193" "tetrazolium violet"
    "RELATED synonym" "NCIT:C17225" "tuvalu" "synonym" "NCIT:C49621"
    "trial visits domain" "synonym" "NCIT:C96983" "television" "synonym"
    "NCIT:C111324" "tidal volume" "synonym" "NCIT:C111324" "tidal volume"
    "synonym" "NCIT:C112910" "treated volume" "synonym"))
  ("u"
   ("u" "U" "NCIT:C17998" "unknown" "synonym" "NCIT:C17998" "unknown" "synonym"
    "NCIT:C17998" "unknown" "synonym" "NCIT:C25709" "unit of measure" "synonym"
    "NCIT:C25709" "unit of measure" "synonym" "NCIT:C25709" "unit of measure"
    "synonym" "NCIT:C44278" "unit" "synonym" "NCIT:C64778" "enzyme unit"
    "synonym" "," "u" "NCIT:C41127" "unified atomic mass unit" "synonym"
    "NCIT:C41127" "unified atomic mass unit" "synonym" "NCIT:C48438" "micro"
    "synonym" "NCIT:C64559" "atomic mass unit" "synonym"))
  ("uci"
   ("uci" "UcI" "UP:C9EIC7" "DELTA-actitoxin-Ucs1a" "AltName: Short"
    "UP:P0CG44" "Cytolysin Uc-1" "RecName: Short" "," "uCi" "UO:0000146"
    "microcurie" "EXACT synonym" "NCIT:C48507" "microcurie" "synonym"
    "NCIT:C48507" "microcurie" "synonym" "NCIT:C48507" "microcurie" "synonym"
    "NCIT:C48507" "microcurie" "synonym"))
  ("ucsc"
   ("ucsc" "UCSC" "NCIT:C63549" "university of california at santa cruz"
    "synonym"))
  ("uf"
   ("uf" "UF" "UP:P09889" "Tartrate-resistant acid phosphatase type 5"
    "AltName: Short"))
  ("ul"
   ("ul" "Ul" "HGNC:21610 G" "lunapark, ER junction formation factor" "Synonym"
    "," "uL" "NCIT:C48153" "microliter" "synonym" "NCIT:C48153" "microliter"
    "synonym" "NCIT:C48153" "microliter" "synonym" "NCIT:C48153" "microliter"
    "synonym" "," "ul" "UO:0000101" "microliter" "EXACT synonym" "NCIT:C48153"
    "microliter" "synonym" "NCIT:C48153" "microliter" "synonym"))
  ("umifenovir"
   ("umifenovir" "UMIFENOVIR" "NCIT:C152799" "umifenovir" "synonym" ","
    "umifenovir" "CHEBI:134730" "umifenovir" "name" "MESH:C086979" "arbidol"
    "SY" "NCIT:C152799" "umifenovir" "name"))
  ("un"
   ("un" "UN" "NCIT:C155839" "NDC UN (Unit)" "synonym" "NCIT:C155839"
    "NDC UN (Unit)" "synonym" "NCIT:C155839" "NDC UN (Unit)" "synonym"))
  ("unmet" ("unmet" "unmet" "NCIT:C99757" "unmet" "name"))
  ("ut"
   ("ut" "UT" "XFAM:PF03253 Family" "UT" "ID" "NCIT:C43502" "utah" "synonym"))
  ("uv"
   ("uv" "UV" "NCIT:C17231" "ultraviolet radiation" "synonym" "," "uV"
    "UO:0000249" "microvolt" "EXACT synonym" "NCIT:C71175" "microvolt"
    "synonym" "NCIT:C71175" "microvolt" "synonym" "NCIT:C71175" "microvolt"
    "synonym"))
  ("uz"
   ("uz" "UZ" "NCIT:C17246" "uzbekistan" "synonym" "NCIT:C158206"
    "uzbek chinese" "synonym" "NCIT:C158206" "uzbek chinese" "synonym"))
  ("v"
   ("v" "V" "NCIT:C14533" "V mouse" "synonym" "NCIT:C42551" "volt" "synonym"
    "NCIT:C42551" "volt" "synonym" "NCIT:C42551" "volt" "synonym" "NCIT:C42551"
    "volt" "synonym" "NCIT:C42551" "volt" "synonym" "NCIT:C94816"
    "clark level V" "synonym" "NCIT:C97227" "RASGRP1" "synonym"))
  ("vaccinia" ("vaccinia" "vaccinia" "NCIT:C14281" "vaccinia virus" "synonym"))
  ("valerate"
   ("valerate" "Valerate" "CHEBI:17418" "valeric acid" "RELATED synonym" ","
    "valerate" "CHEBI:31011" "valerate" "name"))
  ("vars"
   ("vars" "VARS" "HGNC:12651 G" "valyl-tRNA synthetase 1" "Previous Symbol"))
  ("vcf"
   ("vcf" "VCF" "HGNC:11592 G" "T-box transcription factor 1" "Previous Symbol"
    "NCIT:C2989" "DiGeorge syndrome" "synonym" "NCIT:C9560" "VCF regimen"
    "synonym" "NCIT:C9560" "VCF regimen" "synonym"))
  ("vegan" ("vegan" "vegan" "NCIT:C92994" "vegan" "name"))
  ("venipuncture"
   ("venipuncture" "venipuncture" "NCIT:C28221" "phlebotomy" "synonym"
    "NCIT:C28221" "phlebotomy" "synonym" "NCIT:C28221" "phlebotomy" "synonym"))
  ("vg"
   ("vg" "VG" "CVCL:X927" "VG" "name" "CHEBI:73699" "Val-Gly" "RELATED synonym"
    "UP:Q16927" "Vitellogenin-A1" "RecName: Short" "UP:Q7Z1M0" "Vitellogenin-1"
    "AltName: Short" "NCIT:C17653" "virgin islands, british" "synonym"
    "NCIT:C161535" "V-series nerve agent VG" "synonym" "NCIT:C161535"
    "V-series nerve agent VG" "synonym"))
  ("villitis" ("villitis" "villitis" "EFO:0003110" "villitis" "name"))
  ("villus"
   ("villus" "villus" "BTO:0003121" "villus" "name" "NCIT:C33874" "villus"
    "name" "NCIT:C94673" "intestinal villus" "synonym"))
  ("viremia"
   ("viremia" "viremia" "NCIT:C35125" "viremia" "name" "NCIT:C143215"
    "viremia, CTCAE" "synonym"))
  ("viscera" ("viscera" "viscera" "NCIT:C28287" "viscera" "name"))
  ("voxel"
   ("voxel" "VOXEL" "NCIT:C79424" "voxel" "synonym" "," "voxel" "NCIT:C79424"
    "voxel" "name"))
  ("w"
   ("w" "W" "NCIT:C42549" "watt" "synonym" "NCIT:C42549" "watt" "synonym"
    "NCIT:C42549" "watt" "synonym"))
  ("website"
   ("website" "website" "NCIT:C67518" "web site" "synonym" "NCIT:C67518"
    "web site" "synonym"))
  ("wi"
   ("wi" "W-I" "CHEBI:141448" "Trp-Ile" "RELATED synonym" "," "WI"
    "NCIT:C43485" "wisconsin" "synonym"))
  ("wildtype" ("wildtype" "wildtype" "NCIT:C62195" "wild type" "synonym"))
  ("withdrawn"
   ("withdrawn" "withdrawn" "NCIT:C38061" "withdraw" "synonym" "NCIT:C41341"
    "withdrawal" "synonym" "NCIT:C70758" "study withdrawn" "synonym"))
  ("wn"
   ("wn" "W-N" "CHEBI:141447" "Trp-Asn" "RELATED synonym" "," "WN"
    "NCIT:C14380" "WN, rat strain" "synonym"))
  ("workflow" ("workflow" "workflow" "NCIT:C42753" "workflow" "name"))
  ("www" ("www" "WWW" "NCIT:C20461" "world wide web" "synonym"))
  ("x"
   ("x" "X" "NCIT:C15023" "X mouse" "synonym" "NCIT:C44477" "X-coordinate"
    "synonym" "NCIT:C45784" "X-dimension" "synonym" "NCIT:C88111"
    "decimal series of attenuation" "synonym" "NCIT:C116676" "PSMB5"
    "synonym"))
  ("xg"
   ("xg" "XG" "HGNC:12806 G" "Xg glycoprotein (Xg blood group)"
    "Approved Symbol" "UP:Q7Z9M8" "Xyloglucanase" "RecName: Short"
    "NCIT:C123754" "gaza strip" "synonym" "NCIT:C123754" "gaza strip"
    "synonym"))
  ("xy" ("xy" "XY" "NCIT:C45977" "XY genotype" "synonym"))
  ("xylem" ("xylem" "xylem" "BTO:0001468" "xylem" "name"))
  ("xylose"
   ("xylose" "XYLOSE" "NCIT:C66674" "xylose" "synonym" "," "xylose"
    "CHEBI:18222" "xylose" "name" "NCIT:C66674" "xylose" "name"))
  ("y"
   ("y" "Y" "NCIT:C28199" "yttrium" "synonym" "NCIT:C45785" "Y-dimension"
    "synonym" "NCIT:C49488" "yes" "synonym" "NCIT:C67891" "yotta" "synonym"
    "NCIT:C81210" "year month day imputed" "synonym" "," "y" "NCIT:C44478"
    "Y-coordinate" "synonym" "NCIT:C67905" "yocto" "synonym"))
  ("yj" ("yj" "YJ" "CVCL:8931" "YJ" "name"))
  ("yl"
   ("yl" "YL" "CHEBI:75003" "Tyr-Leu" "RELATED synonym" "UP:P98163"
    "Putative vitellogenin receptor" "AltName: Short"))
  ("zika" ("zika" "zika" "NCIT:C128423" "zika virus infection" "synonym"))
  ("zolmitriptan"
   ("zolmitriptan" "ZOLMITRIPTAN" "NCIT:C47789" "zolmitriptan" "synonym" ","
    "zolmitriptan" "CHEBI:10124" "zolmitriptan" "name" "MESH:C089750"
    "zolmitriptan" "NM" "NCIT:C47789" "zolmitriptan" "name"))
  ("zopiclone"
   ("zopiclone" "ZOPICLONE" "NCIT:C80279" "zopiclone" "synonym" "," "zopiclone"
    "CHEBI:32315" "zopiclone" "name" "CHEBI:53762" "(5R)-zopiclone"
    "RELATED synonym" "MESH:C515050" "zopiclone" "NM" "NCIT:C80279" "zopiclone"
    "name")))
)

(defparameter *all-mixedcase-drum-terms* 
'(("AcOH" ("acoh" "AcOH" "CHEBI:15366" "acetic acid" "RELATED synonym"))
  ("Acaca"
   ("acaca" "ACACA" "HGNC:84 G" "acetyl-CoA carboxylase alpha"
    "Approved Symbol" "NCIT:C103886" "ACACA" "name" "NCIT:C103887"
    "acetyl-CoA carboxylase 1" "synonym"))
  ("Actinobacillus"
   ("actinobacillus" "ACTINOBACILLUS" "NCIT:C86097" "actinobacillus" "synonym"
    "," "actinobacillus" "NCIT:C86097" "actinobacillus" "name"))
  ("Actinobacteria"
   ("actinobacteria" "actinobacteria" "NCIT:C76195" "actinobacteria" "name"))
  ("Affymetrix" ("affymetrix" "affymetrix" "NCIT:C123894" "affymetrix" "name"))
  ("Africa" ("africa" "africa" "NCIT:C26272" "africa" "name"))
  ("African"
   ("african" "AFRICAN" "NCIT:C42331" "african" "synonym" "," "African"
    "EFO:0004561" "African" "name" "," "african" "NCIT:C42331" "african"
    "name"))
  ("Aj"
   ("aj" "AJ" "CVCL:3019" "Marcus" "RELATED synonym" "CVCL:1698" "SK-MG-1"
    "RELATED synonym" "EFO:0001327" "A/J" "EXACT synonym" "UP:SL-0009 D"
    "Adherens junction" "SY" "NCIT:C13736" "zonula adherens" "synonym"))
  ("Alg" ("alg" "ALG" "NCIT:C62577" "antilymphocyte serum" "synonym"))
  ("Alphacoronavirus"
   ("alphacoronavirus" "ALPHACORONAVIRUS" "NCIT:C119319" "alphacoronavirus"
    "synonym" "," "alphacoronavirus" "NCIT:C119319" "alphacoronavirus" "name"))
  ("Alternaria"
   ("alternaria" "ALTERNARIA" "NCIT:C119320" "alternaria" "synonym" ","
    "alternaria" "NCIT:C119320" "alternaria" "name"))
  ("Aluvia"
   ("aluvia" "Aluvia" "MESH:C558899" "lopinavir-ritonavir drug combination"
    "SY"))
  ("Americas"
   ("americas" "americas" "NCIT:C128457" "american ethnicity" "synonym"))
  ("Arab"
   ("arab" "ARAB" "NCIT:C43876" "arab" "synonym" "," "arab" "NCIT:C43876"
    "arab" "name"))
  ("Arcobacter"
   ("arcobacter" "ARCOBACTER" "NCIT:C86152" "arcobacter" "synonym" ","
    "arcobacter" "NCIT:C86152" "arcobacter" "name"))
  ("Artesunate"
   ("artesunate" "ARTESUNATE" "NCIT:C73005" "artesunate" "synonym" ","
    "artesunate" "CHEBI:63918" "artesunate" "name" "NCIT:C73005" "artesunate"
    "name"))
  ("Asian"
   ("asian" "ASIAN" "NCIT:C41260" "asian" "synonym" "NCIT:C41260" "asian"
    "synonym" "," "Asian" "EFO:0003152" "Asian" "name" "," "asian"
    "NCIT:C41260" "asian" "name"))
  ("Atto"
   ("atto" "atto" "UO:0000304" "atto" "name" "NCIT:C67903" "atto" "name" ","
    "atto-" "NCIT:C67903" "atto" "synonym"))
  ("Aves" ("aves" "aves" "NCIT:C14189" "aves" "name"))
  ("BBSome" ("bbsome" "BBSome" "GO:0034464" "BBSome" "name"))
  ("Babesia"
   ("babesia" "BABESIA" "NCIT:C122040" "babesia" "synonym" "," "babesia"
    "NCIT:C122040" "babesia" "name"))
  ("BamHI"
   ("bamhi" "BamHI" "XFAM:PF02923 Domain" "BamHI" "ID" "XFAM:PF02923 Domain"
    "BamHI" "WK"))
  ("Bangladeshi"
   ("bangladeshi" "BANGLADESHI" "NCIT:C43671" "bangladeshi" "synonym" ","
    "bangladeshi" "NCIT:C43671" "bangladeshi" "name"))
  ("Bcell"
   ("bcell" "B---cell" "CL:0000819" "B-1 B cell" "EXACT synonym" "," "B-cell"
    "BTO:0000776" "B-lymphocyte" "RELATED synonym" "CL:0000236" "B cell"
    "EXACT synonym" "NCIT:C12474" "B-lymphocyte" "synonym" "NCIT:C23408"
    "B-lymphocytes" "synonym"))
  ("Bcl"
   ("bcl" "BCL" "NCIT:C18512" "BCL1 oncogene" "synonym" "NCIT:C142819"
    "breast cancer locator" "synonym"))
  ("BiPAP"
   ("bipap" "BiPAP" "NCIT:C124039" "biphasic positive airway pressure"
    "synonym"))
  ("Bifidobacterium"
   ("bifidobacterium" "BIFIDOBACTERIUM" "NCIT:C86194" "bifidobacterium"
    "synonym" "," "bifidobacterium" "NCIT:C86194" "bifidobacterium" "name"))
  ("BioAssay"
   ("bioassay" "bioassay" "NCIT:C16341" "bioassay" "name" "NCIT:C42886"
    "bioassay class" "synonym"))
  ("Biologicals"
   ("biologicals" "biologicals" "NCIT:C307" "biological agent" "synonym"
    "NCIT:C307" "biological agent" "synonym"))
  ("BisTris"
   ("bistris" "Bis-Tris" "MESH:C026272" "Bistris" "SY" "," "Bistris"
    "MESH:C026272" "Bistris" "NM" "," "bistris" "CHEBI:41250" "bis-tris"
    "name"))
  ("BlpI"
   ("blpi" "BLPI" "HGNC:11092 G" "secretory leukocyte peptidase inhibitor"
    "Synonym" "UP:P03973 H" "Antileukoproteinase" "AltName: Full" "NCIT:C29979"
    "antileukoproteinase" "synonym" "NCIT:C51411" "SLPI" "synonym"))
  ("Bn"
   ("bn" "BN" "CVCL:Y432" "BN" "name" "NCIT:C14395" "BN, rat strain" "synonym"
    "NCIT:C16367" "brunei darussalam" "synonym" "NCIT:C52384" "GRP" "synonym"
    "NCIT:C71350" "bachelor of science in nursing" "synonym" "NCIT:C158203"
    "bonan chinese" "synonym" "NCIT:C158203" "bonan chinese" "synonym" "," "Bn"
    "CHEBI:22744" "benzyl group" "RELATED synonym"))
  ("Boolean" ("boolean" "boolean" "NCIT:C45254" "boolean" "name"))
  ("Brighton" ("brighton" "brighton" "NCIT:C44119" "brighton" "name"))
  ("Browser" ("browser" "browser" "NCIT:C80012" "HTML browser" "synonym"))
  ("Burkholderiaceae"
   ("burkholderiaceae" "burkholderiaceae" "NCIT:C85920" "burkholderiaceae"
    "name"))
  ("CLIPseq"
   ("clipseq" "CLIP-seq" "EFO:0003143" "CLIP-seq" "name" "NCIT:C116152"
    "cross-linking immunoprecipitation high-throughput sequencing" "synonym"))
  ("CLx" ("clx" "CLX" "UP:P14531" "Delta-hormotoxin-Cpt1b" "AltName: Short"))
  ("CPEs" ("cpes" "CpeS" "XFAM:PF09367 Domain" "CpeS" "ID"))
  ("CSis" ("csis" "c-sis" "NCIT:C51520" "PDGFB" "synonym"))
  ("Caliciviridae"
   ("caliciviridae" "CALICIVIRIDAE" "NCIT:C14304" "caliciviridae" "synonym" ","
    "caliciviridae" "NCIT:C14304" "caliciviridae" "name"))
  ("Calu" ("calu" "CALU" "HGNC:1458 G" "calumenin" "Approved Symbol"))
  ("Candida"
   ("candida" "CANDIDA" "NCIT:C77163" "candida" "synonym" "," "candida"
    "NCIT:C77163" "candida" "name"))
  ("Caribbean" ("caribbean" "caribbean" "NCIT:C26320" "caribbean" "name"))
  ("Carnivora" ("carnivora" "carnivora" "NCIT:C79104" "carnivora" "name"))
  ("Carnobacteriaceae"
   ("carnobacteriaceae" "carnobacteriaceae" "NCIT:C85922" "carnobacteriaceae"
    "name"))
  ("Celite"
   ("celite" "Celite" "CHEBI:82661" "diatomaceous earth" "RELATED synonym"))
  ("Celsius"
   ("celsius" "celsius" "NCIT:C41151" "celsius scale" "synonym" "NCIT:C42559"
    "degree celsius" "synonym"))
  ("Chemokine"
   ("chemokine" "chemokine" "FPLX:Chemokine" "Chemokine" "name"
    "XFAM:PF00048 Domain" "IL8" "WK" "NCIT:C20466" "chemokine" "name"))
  ("Ci"
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
  ("Cinolazepam"
   ("cinolazepam" "CINOLAZEPAM" "NCIT:C77635" "cinolazepam" "synonym" ","
    "cinolazepam" "CHEBI:59514" "cinolazepam" "name" "MESH:C053781"
    "cinolazepam" "NM" "NCIT:C77635" "cinolazepam" "name"))
  ("Clevidipine"
   ("clevidipine" "CLEVIDIPINE" "NCIT:C72727" "clevidipine" "synonym" ","
    "clevidipine" "CHEBI:135738" "clevidipine" "name" "MESH:C118563"
    "clevidipine" "NM" "NCIT:C72727" "clevidipine" "name"))
  ("Clostridium"
   ("clostridium" "CLOSTRIDIUM" "NCIT:C76275" "clostridium" "synonym" ","
    "clostridium" "NCIT:C76275" "clostridium" "name"))
  ("Clostripain"
   ("clostripain" "clostripain" "UP:P09870" "Clostripain" "RecName: Full"))
  ("Cmn"
   ("cmn" "CMN" "NCIT:C6569" "congenital mesoblastic nephroma" "synonym"
    "NCIT:C6569" "congenital mesoblastic nephroma" "synonym"))
  ("Columbia" ("columbia" "columbia" "NCIT:C44057" "columbia" "name"))
  ("Congo"
   ("congo" "CONGO" "NCIT:C16467" "congo" "synonym" "," "congo" "NCIT:C16467"
    "congo" "name"))
  ("Copan"
   ("copan" "CoPAN" "Orphanet:397725"
    "COASY protein-associated neurodegeneration" "EXACT synonym"))
  ("Copenhagen" ("copenhagen" "Copenhagen" "EFO:0001344" "Copenhagen" "name"))
  ("Corynebacterium"
   ("corynebacterium" "CORYNEBACTERIUM" "NCIT:C76308" "corynebacterium"
    "synonym" "," "corynebacterium" "NCIT:C76308" "corynebacterium" "name"))
  ("Coulomb"
   ("coulomb" "coulomb" "UO:0000220" "coulomb" "name" "NCIT:C42550" "coulomb"
    "name"))
  ("Cq" ("cq" "CQ" "NCIT:C48481" "cartridge dosing unit" "synonym"))
  ("CrI"
   ("cri" "CRI" "NCIT:C16470" "costa rica" "synonym" "NCIT:C16470" "costa rica"
    "synonym" "NCIT:C123799" "cell response index" "synonym" "NCIT:C156359"
    "cognitive regulation index" "synonym" "," "CRi" "NCIT:C103385"
    "complete response with incomplete bone marrow recovery" "synonym"))
  ("Cryptococcus"
   ("cryptococcus" "CRYPTOCOCCUS" "NCIT:C77184" "cryptococcus" "synonym" ","
    "cryptococcus" "NCIT:C77184" "cryptococcus" "name"))
  ("CsI" ("csi" "CS-I" "UP:P07469" "Corticostatin 1" "AltName: Short"))
  ("CspA"
   ("cspa" "CSP-A" "UP:P0A9Y1" "Cold shock protein CspA" "RecName: Short"
    "UP:etc" "" "fake"))
  ("Cuban"
   ("cuban" "CUBAN" "NCIT:C107608" "cuban" "synonym" "," "Cuban" "CHEBI:33014"
    "cubane" "RELATED synonym" "," "cuban" "NCIT:C107608" "cuban" "name"))
  ("Cum" ("cum" "cum" "NCIT:C62355" "with" "synonym"))
  ("DNAseq" ("dnaseq" "DNA-seq" "EFO:0002693" "DNA-seq" "name"))
  ("Dakar"
   ("dakar" "Dakar" "HGNC:17057 G" "caspase recruitment domain family member 8"
    "Synonym" "," "dakar" "NCIT:C84305" "CARD8" "synonym"))
  ("Darunavir"
   ("darunavir" "DARUNAVIR" "NCIT:C65364" "darunavir" "synonym" "," "darunavir"
    "CHEBI:367163" "darunavir" "name" "NCIT:C65364" "darunavir" "name"))
  ("Delaware"
   ("delaware" "delaware" "NCIT:C43470" "delaware" "name" "NCIT:C43969"
    "delaware" "name" "NCIT:C153896" "delaware language" "synonym"))
  ("Deltacoronavirus"
   ("deltacoronavirus" "DELTACORONAVIRUS" "NCIT:C122279" "deltacoronavirus"
    "synonym" "," "deltacoronavirus" "NCIT:C122279" "deltacoronavirus" "name"))
  ("Dev"
   ("dev" "DEV" "NCIT:C150110" "EDQM-HC administration device terminology"
    "synonym"))
  ("Diag" ("diag" "DIAG" "NCIT:C25482" "diagnostic" "synonym"))
  ("Digitizer"
   ("digitizer" "digitizer" "NCIT:C49921" "digitizer device" "synonym"
    "NCIT:C49921" "digitizer device" "synonym"))
  ("Ditan" ("ditan" "ditan" "CHEBI:38884" "diphenylmethane" "RELATED synonym"))
  ("Dscam"
   ("dscam" "DSCAM" "HGNC:3039 G" "DS cell adhesion molecule"
    "Approved Symbol"))
  ("Dura"
   ("dura" "dura" "BTO:0001637" "dura mater" "RELATED synonym" "NCIT:C32488"
    "dura mater" "synonym"))
  ("EcoRI"
   ("ecori" "EcoRI" "XFAM:PF02963 Domain" "EcoRI" "ID" "XFAM:PF02963 Domain"
    "EcoRI" "WK"))
  ("Ek"
   ("ek" "E-K" "CHEBI:73521" "Glu-Lys" "RELATED synonym" "," "EK" "CVCL:C313"
    "CCE" "RELATED synonym" "UP:P35790 H" "Choline kinase alpha"
    "AltName: Short" "UP:Q9Y259 H" "Choline/ethanolamine kinase"
    "AltName: Short" "UP:O54804 M" "Choline kinase alpha" "AltName: Short"
    "UP:O55229 M" "Choline/ethanolamine kinase" "AltName: Short" "NCIT:C25920"
    "choline kinase alpha" "synonym"))
  ("Encephalitozoon"
   ("encephalitozoon" "ENCEPHALITOZOON" "NCIT:C122293" "encephalitozoon"
    "synonym" "," "encephalitozoon" "NCIT:C122293" "encephalitozoon" "name"))
  ("EndoU"
   ("endou" "ENDOU" "HGNC:14369 G" "endonuclease, poly(U) specific"
    "Approved Symbol" "FA:01108" "ENDOU family" "ID"))
  ("Endpoint"
   ("endpoint" "ENDPOINT" "NCIT:C82866" "endpoint value derivation technique"
    "synonym" "," "end-point" "NCIT:C25212" "end point" "synonym" ","
    "endpoint" "NCIT:C25212" "end point" "synonym" "NCIT:C25212" "end point"
    "synonym" "NCIT:C25212" "end point" "synonym"))
  ("Endy" ("endy" "ENDY" "NCIT:C82569" "observation end day" "synonym"))
  ("Enterococcus"
   ("enterococcus" "ENTEROCOCCUS" "NCIT:C76311" "enterococcus" "synonym" ","
    "enterococcus" "NCIT:C76311" "enterococcus" "name"))
  ("Entrez" ("entrez" "entrez" "NCIT:C45764" "entrez" "name"))
  ("Epsin"
   ("epsin" "epsin" "FPLX:EPN" "EPN" "EXACT synonym" "UP:Q54EH1" "Epsin"
    "RecName: Full" "FA:01121" "epsin family" "ID"))
  ("Eq"
   ("eq" "E-Q" "CHEBI:141435" "Glu-Gln" "RELATED synonym" "," "EQ"
    "NCIT:C61582" "equality" "synonym" "," "eq" "NCIT:C67273"
    "equivalent weight" "synonym" "NCIT:C67273" "equivalent weight" "synonym"
    "NCIT:C67273" "equivalent weight" "synonym" "NCIT:C67273"
    "equivalent weight" "synonym"))
  ("Escherichia"
   ("escherichia" "ESCHERICHIA" "NCIT:C77208" "escherichia" "synonym" ","
    "escherichia" "NCIT:C77208" "escherichia" "name"))
  ("Est"
   ("est" "EST" "HGNC:6860 G"
    "mitogen-activated protein kinase kinase kinase 8" "Synonym" "HGNC:11377 G"
    "sulfotransferase family 1E member 1" "Synonym" "NCIT:C16562" "estonia"
    "synonym" "NCIT:C16562" "estonia" "synonym" "NCIT:C18155"
    "expressed sequence tag" "synonym" "NCIT:C51214" "MAP3K8" "synonym"
    "NCIT:C105992" "SULT1E1" "synonym" "NCIT:C116264" "eastern standard time"
    "synonym" "NCIT:C153910" "estonian language" "synonym" "," "Est"
    "EFO:0006986" "Est" "name"))
  ("Eubacterium"
   ("eubacterium" "EUBACTERIUM" "NCIT:C86383" "eubacterium" "synonym" ","
    "eubacterium" "NCIT:C86383" "eubacterium" "name"))
  ("Europe" ("europe" "europe" "NCIT:C26274" "europe" "name"))
  ("Exome"
   ("exome" "exome" "EFO:0004422" "exome" "name" "NCIT:C101296" "exome"
    "name"))
  ("Fabs" ("fabs" "FABS" "NCIT:C154838" "absolute bioavailability" "synonym"))
  ("FastQ" ("fastq" "FASTQ" "NCIT:C153250" "FASTQ format" "synonym"))
  ("Fc"
   ("fc" "FC" "UP:Q06529" "Cytochrome subunit of sulfide dehydrogenase"
    "AltName: Short" "UP:etc" "" "fake" "NCIT:C90384" "food consumption"
    "synonym"))
  ("Filoviridae"
   ("filoviridae" "FILOVIRIDAE" "NCIT:C112031" "filoviridae" "synonym" ","
    "filoviridae" "NCIT:C112031" "filoviridae" "name"))
  ("Finnish"
   ("finnish" "finnish" "NCIT:C43865" "finnish" "name" "NCIT:C153919"
    "finnish language" "synonym"))
  ("Flurazepam"
   ("flurazepam" "FLURAZEPAM" "NCIT:C62030" "flurazepam" "synonym" ","
    "flurazepam" "CHEBI:5128" "flurazepam" "name" "NCIT:C62030" "flurazepam"
    "name" "NCIT:C75373" "flurazepam measurement" "synonym" "NCIT:C75373"
    "flurazepam measurement" "synonym"))
  ("Fo"
   ("fo" "-FO" "CHEBI:30241" "fluorosyl group" "RELATED synonym" "," "FO"
    "CHEBI:74498" "5-fluoroorotic acid" "RELATED synonym" "CHEBI:43034"
    "7,8-didemethyl-8-hydroxy-5-deazariboflavin" "RELATED synonym"
    "NCIT:C16573" "faroe islands" "synonym" "NCIT:C48494" "fluid ounce US"
    "synonym" "," "Fo" "CHEBI:42485" "formyl group" "RELATED synonym"))
  ("FoV" ("fov" "FOV" "NCIT:C74298" "field of view" "synonym"))
  ("FuGENE" ("fugene" "FuGene" "MESH:C411955" "FuGene" "NM"))
  ("Fuc" ("fuc" "Fuc" "CHEBI:33984" "fucose" "RELATED synonym"))
  ("Fugene" ("fugene" "FuGene" "MESH:C411955" "FuGene" "NM"))
  ("GPe"
   ("gpe" "GPE" "HGNC:4705 G" "glycophorin E (MNS blood group)" "Synonym"
    "UP:P03639" "Lysis protein E" "AltName: Full" "UP:P07930" "Lysis protein"
    "AltName: Full" "UP:P31280" "Lysis protein" "AltName: Full" "UP:P03640"
    "Lysis protein" "AltName: Full" "UP:Q38040" "Lysis protein" "AltName: Full"
    "NCIT:C156266" "gemcitabine/Cisplatin/Everolimus regimen" "synonym" ","
    "gpE" "UP:O64313" "Tail assembly protein E" "AltName: Short" "UP:Q9T1W6"
    "Probable terminase, large subunit gp28" "AltName: Short"))
  ("GTEx"
   ("gtex" "GTEx" "NCIT:C126654" "genotype-tissue expression program"
    "synonym"))
  ("Gammacoronavirus"
   ("gammacoronavirus" "GAMMACORONAVIRUS" "NCIT:C122313" "gammacoronavirus"
    "synonym" "," "gammacoronavirus" "NCIT:C122313" "gammacoronavirus" "name"))
  ("Gatan" ("gatan" "GATA-N" "XFAM:PF05349 Family" "GATA-N" "ID"))
  ("Gauss" ("gauss" "gauss" "NCIT:C68915" "gauss" "name"))
  ("Gdf"
   ("gdf" "GdF" "HGNC:8573 G" "progestagen associated endometrial protein"
    "Synonym"))
  ("Gedunin"
   ("gedunin" "gedunin" "CHEBI:65954" "gedunin" "name" "MESH:C106014" "gedunin"
    "NM"))
  ("Gemella"
   ("gemella" "GEMELLA" "NCIT:C86889" "gemella" "synonym" "," "gemella"
    "NCIT:C86889" "gemella" "name"))
  ("Gemini" ("gemini" "Gemini" "CVCL:E024" "PAE-iPS-3" "RELATED synonym"))
  ("Genotype"
   ("genotype" "GENOTYPE" "NCIT:C45447" "genotyping" "synonym" "," "genotype"
    "EFO:0000513" "genotype" "name" "NCIT:C16631" "genotype" "name"
    "NCIT:C45447" "genotyping" "synonym" "NCIT:C45447" "genotyping" "synonym"))
  ("Gideon" ("gideon" "Gideon" "CVCL:D978" "MRC-iPS-62" "RELATED synonym"))
  ("Gini"
   ("gini" "GINI" "NCIT:C155858"
    "gardasil immunogenicity with needle-free injection" "synonym"))
  ("Glc" ("glc" "Glc" "CHEBI:17234" "glucose" "RELATED synonym"))
  ("Glutamyl"
   ("glutamyl" "glutamyl" "CHEBI:32483" "glutamic acid residue"
    "RELATED synonym"))
  ("Gquadruplex"
   ("gquadruplex" "G-quadruplex" "NCIT:C13725" "G-quartets" "synonym"))
  ("Gsx"
   ("gsx" "GS-X" "HGNC:51 G" "ATP binding cassette subfamily C member 1"
    "Synonym" "NCIT:C52275" "ABCC1" "synonym"))
  ("GxGxG" ("gxgxg" "GXGXG" "XFAM:PF01493 Family" "GXGXG" "ID"))
  ("HSAs"
   ("hsas" "HSAS" "Orphanet:2182"
    "Hydrocephalus with stenosis of the aqueduct of Sylvius" "EXACT synonym"
    "HGNC:6470 G" "L1 cell adhesion molecule" "Previous Symbol" "NCIT:C112137"
    "L1CAM" "synonym"))
  ("Hb"
   ("hb" "H-B" "HGNC:4632 G" "glutathione S-transferase mu 1" "Synonym" ","
    "HB" "CVCL:3694" "HB" "name" "UP:P08821" "DNA-binding protein HU 1"
    "AltName: Full" "UP:P0A3H2" "DNA-binding protein HU" "AltName: Full"
    "UP:P0A3H1" "DNA-binding protein HU" "AltName: Full" "UP:P0A3H0"
    "DNA-binding protein HU" "AltName: Full" "UP:P35588" "Hypodermin-B"
    "RecName: Short" "," "Hb" "EFO:0004509" "hemoglobin measurement"
    "EXACT synonym" "UP:P73925" "Group 1 truncated hemoglobin GlbN"
    "AltName: Short" "NCIT:C16676" "hemoglobin" "synonym"))
  ("HeLaM" ("helam" "HeLa-M" "CVCL:R965" "HeLa M" "RELATED synonym"))
  ("Helicobacter"
   ("helicobacter" "HELICOBACTER" "NCIT:C14296" "helicobacter" "synonym"
    "NCIT:C132488" "helicobacter present" "synonym" "," "helicobacter"
    "NCIT:C14296" "helicobacter" "name"))
  ("Hematocrit"
   ("hematocrit" "hematocrit" "EFO:0004348" "hematocrit" "name" "NCIT:C64796"
    "hematocrit measurement" "synonym" "NCIT:C64796" "hematocrit measurement"
    "synonym" "NCIT:C64796" "hematocrit measurement" "synonym"))
  ("Hematology" ("hematology" "hematology" "NCIT:C16673" "hematology" "name"))
  ("Henipavirus"
   ("henipavirus" "HENIPAVIRUS" "NCIT:C112290" "henipavirus" "synonym" ","
    "henipavirus" "NCIT:C112290" "henipavirus" "name"))
  ("Hepacivirus"
   ("hepacivirus" "hepacivirus" "NCIT:C113202" "hepacivirus" "name"))
  ("Herpesviridae"
   ("herpesviridae" "herpesviridae" "NCIT:C14217" "herpesvirus" "synonym"))
  ("Hottip"
   ("hottip" "HOTTIP" "HGNC:37461 R" "HOXA distal transcript antisense RNA"
    "Approved Symbol"))
  ("Hypoproteinemia"
   ("hypoproteinemia" "hypoproteinemia" "NCIT:C88511" "hypoproteinemia"
    "name"))
  ("IARs"
   ("iars" "IARS" "HGNC:5330 G" "isoleucyl-tRNA synthetase 1"
    "Previous Symbol"))
  ("IDi"
   ("idi" "IDI" "Orphanet:363300" "Genetic intractable diarrhea of infancy"
    "EXACT synonym"))
  ("IFNa"
   ("ifna" "IFN-a" "FPLX:IFNA" "IFNA" "name" "," "IFNA" "HGNC:5423 G"
    "interferon alpha 2" "Synonym" "NCIT:C52797" "IFNA2" "synonym"
    "NCIT:C81994" "interferon alpha measurement" "synonym"))
  ("IFNaB" ("ifnab" "IFN-aB" "MESH:C076799" "interferon-alpha 8" "SY"))
  ("IIIc"
   ("iiic" "IIIC" "NCIT:C88139" "stage IIIC uveal melanoma AJCC v7" "synonym"
    "NCIT:C133667" "pathologic stage IIIC gastric cancer AJCC v8" "synonym"
    "NCIT:C134750" "stage IIIC hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C140172" "stage IIIC prostate cancer AJCC v8" "synonym"))
  ("IIc"
   ("iic" "IIC" "NCIT:C140168" "stage IIC prostate cancer AJCC v8" "synonym"))
  ("Ifnar"
   ("ifnar" "IFNAR" "HGNC:5432 G"
    "interferon alpha and beta receptor subunit 1" "Previous Symbol"
    "NCIT:C51352" "IFNAR1" "synonym"))
  ("ImmunoChemistry"
   ("immunochemistry" "immunochemistry" "NCIT:C16713" "immunochemistry"
    "name"))
  ("Inc" ("inc" "INC" "CVCL:QX03" "INC" "name"))
  ("Iq"
   ("iq" "IQ" "CHEBI:74065" "Ile-Gln" "RELATED synonym" "CHEBI:42725"
    "3-methyl-3H-imidazo[4,5-f]quinolin-2-amine" "RELATED synonym"
    "XFAM:PF00612 Motif" "IQ" "ID" "NCIT:C16756" "iraq" "synonym" "NCIT:C44309"
    "2-amino-3-methylimidazo[4,5-f]quinoline" "synonym" "NCIT:C115125"
    "intelligence quotient" "synonym"))
  ("Iswi"
   ("iswi" "ISWI" "HGNC:11097 G"
    "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 1"
    "Synonym" "HGNC:11101 G"
    "SWI/SNF related, matrix associated, actin dependent regulator of chromatin, subfamily a, member 5"
    "Synonym" "FA:03705" "ISWI subfamily" "ID" "NCIT:C17795" "ISWI" "name"))
  ("Java" ("java" "java" "NCIT:C71585" "java programming language" "synonym"))
  ("Juno" ("juno" "JUNO" "HGNC:32565 G" "IZUMO1 receptor, JUNO" "Synonym"))
  ("KAc" ("kac" "KAC" "NCIT:C153967" "jingpho language" "synonym"))
  ("KOAc" ("koac" "KOAc" "CHEBI:32029" "potassium acetate" "RELATED synonym"))
  ("Kaletra"
   ("kaletra" "Kaletra" "MESH:C558899" "lopinavir-ritonavir drug combination"
    "SY" "," "kaletra" "NCIT:C2096" "lopinavir/Ritonavir" "synonym"
    "NCIT:C2096" "lopinavir/Ritonavir" "synonym"))
  ("Kluyveromyces"
   ("kluyveromyces" "kluyveromyces" "NCIT:C114123" "kluyveromyces" "name"))
  ("Korean"
   ("korean" "KOREAN" "NCIT:C43395" "korean" "synonym" "," "Korean"
    "EFO:0003165" "Korean" "name" "," "korean" "NCIT:C43395" "korean" "name"
    "NCIT:C120590" "korean language" "synonym"))
  ("KsgA" ("ksga" "ksgA" "FA:02277" "ksgA subfamily" "ID"))
  ("Lactobacillus"
   ("lactobacillus" "LACTOBACILLUS" "NCIT:C76352" "lactobacillus" "synonym" ","
    "lactobacillus" "NCIT:C76352" "lactobacillus" "name"))
  ("Laguna" ("laguna" "laguna" "NCIT:C44830" "laguna" "name"))
  ("Leh" ("leh" "LEH" "XFAM:PF07858 Domain" "LEH" "ID"))
  ("Leifsonia"
   ("leifsonia" "LEIFSONIA" "NCIT:C86490" "leifsonia" "synonym" "," "leifsonia"
    "NCIT:C86490" "leifsonia" "name"))
  ("Leptospiraceae"
   ("leptospiraceae" "leptospiraceae" "NCIT:C86000" "leptospiraceae" "name"))
  ("Leuconostoc"
   ("leuconostoc" "LEUCONOSTOC" "NCIT:C76357" "leuconostoc" "synonym" ","
    "leuconostoc" "NCIT:C76357" "leuconostoc" "name"))
  ("Lglutamine"
   ("lglutamine" "L-glutamine" "CHEBI:30011" "L-glutamine residue"
    "RELATED synonym" "CHEBI:18050" "L-glutamine" "name" "CHEBI:58359"
    "L-glutamine zwitterion" "RELATED synonym" "NCIT:C522" "glutamine"
    "synonym" "NCIT:C522" "glutamine" "synonym"))
  ("Lipofectamine"
   ("lipofectamine" "Lipofectamine" "MESH:C086724" "Lipofectamine" "NM"))
  ("LoD"
   ("lod" "LOD" "NCIT:C105701" "detection limit" "synonym" "NCIT:C134255"
    "loss on drying" "synonym"))
  ("Lpo"
   ("lpo" "LPO" "HGNC:6678 G" "lactoperoxidase" "Approved Symbol" "UP:P80025"
    "Lactoperoxidase" "RecName: Short" "UP:P22079 H" "Lactoperoxidase"
    "RecName: Short" "NCIT:C124072" "lipid hydroperoxide" "synonym"))
  ("Lse"
   ("lse" "LSE" "HGNC:18187 G" "sialic acid acetylesterase" "Synonym"
    "NCIT:C91283" "SIAE" "synonym"))
  ("Luce" ("luce" "LUCE" "CVCL:E760" "LUCE" "name"))
  ("MHCs"
   ("mhcs" "MHCS" "NCIT:C15814" "multicenter hemophilia cohort study"
    "synonym"))
  ("MHz"
   ("mhz" "MHz" "NCIT:C67314" "megahertz" "synonym" "NCIT:C67314" "megahertz"
    "synonym" "NCIT:C67314" "megahertz" "synonym"))
  ("Macrogen" ("macrogen" "macrogen" "NCIT:C77591" "molgramostim" "synonym"))
  ("Mannheimia"
   ("mannheimia" "MANNHEIMIA" "NCIT:C86507" "mannheimia" "synonym" ","
    "mannheimia" "NCIT:C86507" "mannheimia" "name"))
  ("Martinique"
   ("martinique" "MARTINIQUE" "NCIT:C16823" "martinique" "synonym"
    "NCIT:C16823" "martinique" "synonym" "," "martinique" "NCIT:C16823"
    "martinique" "name"))
  ("Mav"
   ("mav" "MAV" "HGNC:6353 G" "kelch like family member 2" "Synonym"
    "NCIT:C10151" "doxorubicin/Melphalan/Teniposide" "synonym"))
  ("MeOH" ("meoh" "MeOH" "CHEBI:17790" "methanol" "RELATED synonym"))
  ("MeV"
   ("mev" "MeV" "NCIT:C152057" "megaelectronvolt" "synonym" "," "meV"
    "NCIT:C67398" "millielectronvolt" "synonym" "NCIT:C67398"
    "millielectronvolt" "synonym"))
  ("Mesalazine"
   ("mesalazine" "mesalazine" "CHEBI:6775" "mesalamine" "RELATED synonym"
    "NCIT:C29249" "mesalamine" "synonym"))
  ("Metadata" ("metadata" "metadata" "NCIT:C52095" "metadata" "name"))
  ("MiSeq"
   ("miseq" "MISEQ" "NCIT:C117573" "microscopic findings sequence number"
    "synonym"))
  ("Microbacteriaceae"
   ("microbacteriaceae" "microbacteriaceae" "NCIT:C85945" "microbacteriaceae"
    "name"))
  ("Microbacterium"
   ("microbacterium" "MICROBACTERIUM" "NCIT:C85511" "microbacterium" "synonym"
    "," "microbacterium" "NCIT:C85511" "microbacterium" "name"))
  ("Microplate" ("microplate" "microplate" "NCIT:C43377" "microplate" "name"))
  ("Miseq"
   ("miseq" "MISEQ" "NCIT:C117573" "microscopic findings sequence number"
    "synonym"))
  ("MkI"
   ("mki" "MKI" "UP:P16388 M"
    "Potassium voltage-gated channel subfamily A member 1" "AltName: Full"
    "NCIT:C106317" "mitosis-karyorrhexis index" "synonym" "NCIT:C159078"
    "GDC mitosis karyorrhexis index terminology" "synonym"))
  ("MonoQ" ("monoq" "Mono-Q" "MESH:C042855" "Mono Q" "SY"))
  ("Moraxella"
   ("moraxella" "MORAXELLA" "NCIT:C86009" "moraxella" "synonym" "," "moraxella"
    "NCIT:C86009" "moraxella" "name"))
  ("Mpro" ("mpro" "MPRO" "CVCL:5430" "MPRO clone 2.1" "RELATED synonym"))
  ("Mprotein"
   ("mprotein" "M-protein" "UP:P54296 H" "Myomesin-2" "AltName: Full"
    "NCIT:C17788" "M protein" "synonym" "NCIT:C113808" "monoclonal band"
    "synonym"))
  ("MxB"
   ("mxb" "MXB" "HGNC:7533 G" "MX dynamin like GTPase 2" "Synonym"
    "NCIT:C101553" "MX2" "synonym"))
  ("Mycoplasma"
   ("mycoplasma" "MYCOPLASMA" "NCIT:C73540" "mycoplasma" "synonym" ","
    "mycoplasma" "NCIT:C73540" "mycoplasma" "name"))
  ("NTproBNP"
   ("ntprobnp" "NT-proBNP" "NCIT:C88524"
    "N-terminal fragment brain natriuretic protein" "synonym"))
  ("Nanopore" ("nanopore" "nanopore" "NCIT:C62343" "nanopore" "name"))
  ("Nb"
   ("nb" "NB" "HGNC:7650 G" "NBL1, DAN family BMP antagonist" "Synonym"
    "XFAM:PF04159 Family" "NB" "ID" "NCIT:C53089" "NBL1" "synonym"
    "NCIT:C142545" "european union notified body" "synonym"))
  ("Neisseria"
   ("neisseria" "NEISSERIA" "NCIT:C76371" "neisseria" "synonym" "," "neisseria"
    "NCIT:C76371" "neisseria" "name"))
  ("Nes"
   ("nes" "NES" "HGNC:7756 G" "nestin" "Approved Symbol" "NCIT:C104561" "NES"
    "name"))
  ("NeuAc"
   ("neuac" "NeuAc" "CHEBI:17012" "N-acetylneuraminic acid" "RELATED synonym"))
  ("Neutrophilia"
   ("neutrophilia" "neutrophilia" "NCIT:C35164" "neutrophilia" "name"))
  ("Norvir"
   ("norvir" "norvir" "NCIT:C1609" "ritonavir" "synonym" "NCIT:C1609"
    "ritonavir" "synonym" "NCIT:C1609" "ritonavir" "synonym"))
  ("Nosema"
   ("nosema" "NOSEMA" "NCIT:C123530" "nosema" "synonym" "," "nosema"
    "NCIT:C123530" "nosema" "name"))
  ("Novus"
   ("novus" "Novus" "MESH:C076789" "polyphosphazene fluoroelastomer" "SY"))
  ("OASs"
   ("oass" "OASS" "UP:P0A535" "O-acetylserine sulfhydrylase" "RecName: Short"
    "UP:O32978" "O-acetylserine sulfhydrylase" "RecName: Short" "UP:P9WP54"
    "O-acetylserine sulfhydrylase" "RecName: Short" "UP:P9WP55"
    "O-acetylserine sulfhydrylase" "RecName: Short"))
  ("ORs"
   ("ors" "ORS" "BTO:0003969" "hair follicle outer root sheath"
    "RELATED synonym" "MESH:C034130" "ORALIT" "SY" "NCIT:C116333"
    "oculo-respiratory syndrome" "synonym"))
  ("Oceania" ("oceania" "oceania" "NCIT:C26276" "oceania" "name"))
  ("Odorant" ("odorant" "odorant" "NCIT:C93262" "odorant" "name"))
  ("Oligofectamine"
   ("oligofectamine" "oligofectamine" "MESH:C484027" "oligofectamine" "NM"))
  ("Oncology" ("oncology" "oncology" "NCIT:C17837" "oncology" "name"))
  ("Orfs"
   ("orfs" "ORF-S" "UP:P36495" "Uncharacterized membrane protein ycf78"
    "AltName: Full"))
  ("Orthomyxoviridae"
   ("orthomyxoviridae" "orthomyxoviridae" "NCIT:C53453" "orthomyxoviridae"
    "name"))
  ("Ottawa" ("ottawa" "ottawa" "NCIT:C44069" "ottawa" "name"))
  ("PFam" ("pfam" "pfam" "NCIT:C43580" "protein families database" "synonym"))
  ("PHAs"
   ("phas" "PHAs" "CHEBI:53387" "poly(hydroxyalkanoate)" "RELATED synonym"))
  ("POs" ("pos" "POS" "NCIT:C62164" "body position" "synonym"))
  ("PaKi"
   ("paki" "PAKI" "UP:Q29502" "Serine/threonine-protein kinase PAK 2"
    "AltName: Short"))
  ("Pantoea"
   ("pantoea" "PANTOEA" "NCIT:C86631" "pantoea" "synonym" "," "pantoea"
    "NCIT:C86631" "pantoea" "name"))
  ("Paracoccus" ("paracoccus" "paracoccus" "NCIT:C123337" "paracoccus" "name"))
  ("Paramethasone"
   ("paramethasone" "PARAMETHASONE" "NCIT:C66309" "paramethasone" "synonym" ","
    "Paramethasone" "CHEBI:7922" "Paramethasone" "name" "," "paramethasone"
    "NCIT:C66309" "paramethasone" "name"))
  ("Parvoviridae"
   ("parvoviridae" "parvoviridae" "NCIT:C14299" "parvovirus" "synonym"))
  ("Pau" ("pau" "PAU" "NCIT:C154077" "palauan language" "synonym"))
  ("Pd"
   ("pd" "PD" "CVCL:8401" "PD PaCa" "RELATED synonym" "CHEBI:74756" "Pro-Asp"
    "RELATED synonym" "UP:SL-0208 D" "Plasmodesma" "SY" "NCIT:C35571"
    "progressive disease" "synonym" "NCIT:C142794"
    "lugano lymphoma response classification progressive disease by CT"
    "synonym" "NCIT:C142798"
    "lugano lymphoma response classification progressive disease by PET"
    "synonym" "NCIT:C159089" "GDC primary diagnosis terminology" "synonym"
    "NCIT:C159622" "RECIL PD" "synonym" "NCIT:C159622" "RECIL PD" "synonym"
    "NCIT:C159949" "global progressive disease" "synonym" "NCIT:C159955"
    "global progressive disease in skin" "synonym" "NCIT:C159961"
    "global progressive disease in lymph nodes" "synonym" "NCIT:C159967"
    "global progressive disease in viscera" "synonym" "NCIT:C159975"
    "global progressive disease in blood" "synonym" "," "Pd" "NCIT:C95184"
    "palladium" "synonym"))
  ("Pefabloc"
   ("pefabloc" "Pefabloc" "MESH:C002010"
    "4-(2-aminoethyl)benzenesulfonylfluoride" "SY"))
  ("PfCRT"
   ("pfcrt" "PfCRT" "UP:Q8IBZ9" "Putative chloroquine resistance transporter"
    "AltName: Full" "UP:Q9N623" "Chloroquine resistance transporter"
    "RecName: Short"))
  ("Pfam" ("pfam" "pfam" "NCIT:C43580" "protein families database" "synonym"))
  ("Ph"
   ("ph" "PH" "HGNC:8582 G" "phenylalanine hydroxylase" "Synonym" "UP:P06305"
    "Pancreatic hormone" "RecName: Short" "UP:etc" "" "fake"
    "XFAM:PF00169 Domain" "PH" "ID" "NCIT:C16978" "philippines" "synonym"
    "NCIT:C45997" "pH" "synonym" "NCIT:C129913" "pancreatic hormone" "synonym"
    "," "Ph" "CHEBI:30396" "phenyl group" "RELATED synonym" "NCIT:C28452"
    "philadelphia chromosome" "synonym" "," "Ph-" "NCIT:C128844"
    "philadelphia chromosome negative" "synonym" "," "pH" "UO:0000196" "pH"
    "name" "NCIT:C45997" "pH" "name"))
  ("Phy" ("phy" "PHY" "XFAM:PF00360 Family" "PHY" "ID"))
  ("Piscataway" ("piscataway" "piscataway" "NCIT:C44088" "piscataway" "name"))
  ("Plexiglas"
   ("plexiglas" "Plexiglas" "CHEBI:61369" "poly(methyl methacrylate) polymer"
    "RELATED synonym" "CHEBI:53205" "poly(methyl methacrylate) macromolecule"
    "RELATED synonym"))
  ("Polytetrafluoroethylene"
   ("polytetrafluoroethylene" "polytetrafluoroethylene" "CHEBI:53251"
    "poly(tetrafluoroethylene)" "RELATED synonym"))
  ("Porphyromonas"
   ("porphyromonas" "PORPHYROMONAS" "NCIT:C86653" "porphyromonas" "synonym" ","
    "porphyromonas" "NCIT:C86653" "porphyromonas" "name"))
  ("Poxviridae" ("poxviridae" "poxviridae" "NCIT:C14261" "poxvirus" "synonym"))
  ("Prec" ("prec" "PrEC" "CVCL:0061" "NPrEC" "RELATED synonym"))
  ("Prkaca"
   ("prkaca" "PRKACA" "HGNC:9380 G"
    "protein kinase cAMP-activated catalytic subunit alpha" "Approved Symbol"
    "NCIT:C38410" "cAMP-dependent protein kinase catalytic subunit alpha"
    "synonym" "NCIT:C51267" "PRKACA" "name"))
  ("Progeny"
   ("progeny" "progeny" "NCIT:C42708" "offspring" "synonym" "NCIT:C42708"
    "offspring" "synonym"))
  ("Pseudomonas"
   ("pseudomonas" "PSEUDOMONAS" "NCIT:C76375" "pseudomonas" "synonym" ","
    "pseudomonas" "NCIT:C76375" "pseudomonas" "name" "NCIT:C86261"
    "chryseomonas" "synonym"))
  ("Pulser"
   ("pulser" "pulser" "NCIT:C50127" "pulser device" "synonym" "NCIT:C50127"
    "pulser device" "synonym"))
  ("Pyridostatin"
   ("pyridostatin" "pyridostatin" "MESH:C567962" "pyridostatin" "NM"))
  ("QIAgen" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("Qiagen" ("qiagen" "qiagen" "NCIT:C157415" "qiagen HPV lab test" "synonym"))
  ("Queuosine"
   ("queuosine" "queuosine" "CHEBI:60193" "queuosine" "name" "CHEBI:64299"
    "queuosine residue" "RELATED synonym"))
  ("Québec" ("québec" "Québec" "NCIT:C86003" "quebec" "synonym"))
  ("RNAseq"
   ("rnaseq" "RNA-seq" "EFO:0002770"
    "transcription profiling by high throughput sequencing" "EXACT synonym"
    "NCIT:C124261" "whole transcriptome sequencing" "synonym" "NCIT:C124261"
    "whole transcriptome sequencing" "synonym"))
  ("RTx"
   ("rtx" "RTX" "CHEBI:8809" "Resiniferatoxin" "RELATED synonym"
    "XFAM:PF02382 Domain" "RTX" "ID" "NCIT:C1214" "resiniferatoxin" "synonym"))
  ("RefSeq" ("refseq" "refSeq" "NCIT:C45335" "refSeq" "name"))
  ("Reston"
   ("reston" "Rest-on" "CHEBI:6820" "methapyrilene" "RELATED synonym"))
  ("Rhodobacteraceae"
   ("rhodobacteraceae" "rhodobacteraceae" "NCIT:C118931" "rhodobacteraceae"
    "name"))
  ("Rhodococcus"
   ("rhodococcus" "RHODOCOCCUS" "NCIT:C76378" "rhodococcus" "synonym" ","
    "rhodococcus" "NCIT:C76378" "rhodococcus" "name"))
  ("Rifabutin"
   ("rifabutin" "RIFABUTIN" "NCIT:C1408" "rifabutin" "synonym" "," "Rifabutin"
    "CHEBI:45367" "rifabutin" "name" "," "rifabutin" "NCIT:C1408" "rifabutin"
    "name"))
  ("Rotavirus"
   ("rotavirus" "ROTAVIRUS" "NCIT:C77199" "rotavirus" "synonym" "," "rotavirus"
    "NCIT:C77199" "rotavirus" "name"))
  ("Rt"
   ("rt" "RT" "NCIT:C15313" "radiation therapy" "synonym" "NCIT:C82594"
    "refractory thrombocytopenia" "synonym" "NCIT:C105637" "right thigh"
    "synonym" "NCIT:C105637" "right thigh" "synonym" "NCIT:C159103"
    "GDC relationship type terminology" "synonym"))
  ("Rubella" ("rubella" "rubella" "NCIT:C85051" "rubella infection" "synonym"))
  ("Rxn"
   ("rxn" "RXN" "UP:Q9MYK8" "Prorelaxin" "RecName: Short" "UP:P22969"
    "Prorelaxin" "RecName: Short"))
  ("SARSCoV"
   ("sarscov" "SARS-CoV" "NCIT:C112432" "SARS coronavirus" "synonym"))
  ("SNr" ("snr" "SNR" "NCIT:C94983" "signal to noise ratio" "synonym"))
  ("SRs"
   ("srs" "SRS" "HGNC:11123 G" "spermine synthase" "Previous Symbol"
    "NCIT:C93342" "somatostatin receptor scintigraphy" "synonym"))
  ("SacI"
   ("saci" "SACI" "HGNC:21285 G" "adenylate cyclase 10" "Synonym" "NCIT:C39511"
    "cancer therapy and research center" "synonym"))
  ("Sandia" ("sandia" "sandia" "NCIT:C44840" "sandia" "name"))
  ("SapI" ("sapi" "SAPI" "XFAM:PF16560 Family" "SAPI" "ID"))
  ("Sapovirus"
   ("sapovirus" "SAPOVIRUS" "NCIT:C112029" "sapovirus" "synonym" ","
    "sapovirus" "NCIT:C112029" "sapovirus" "name"))
  ("Sartorius"
   ("sartorius" "sartorius" "BTO:0001215" "sartorius" "name" "NCIT:C33515"
    "sartorius muscle" "synonym"))
  ("Sci" ("sci" "SCI" "NCIT:C105626" "stanford cancer institute" "synonym"))
  ("Sequest"
   ("sequest" "sequest" "NCIT:C68825" "sequest scoring engine" "synonym"))
  ("Sia" ("sia" "SIA" "CVCL:F582" "SIA" "name"))
  ("SignalP" ("signalp" "signalP" "NCIT:C49043" "signalP algorithm" "synonym"))
  ("Singaporean"
   ("singaporean" "SINGAPOREAN" "NCIT:C43721" "singaporean" "synonym" ","
    "singaporean" "NCIT:C43721" "singaporean" "name"))
  ("Spanish"
   ("spanish" "SPANISH" "NCIT:C67120" "spanish" "synonym" "," "spanish"
    "NCIT:C67120" "spanish" "name" "NCIT:C120587" "spanish language"
    "synonym"))
  ("Sphingomonadaceae"
   ("sphingomonadaceae" "sphingomonadaceae" "NCIT:C85964" "sphingomonadaceae"
    "name"))
  ("Spirochaetes"
   ("spirochaetes" "spirochaetes" "NCIT:C76206" "spirochaetes" "name"))
  ("Sprotein"
   ("sprotein" "S-protein" "UP:P04004 H" "Vitronectin" "AltName: Full"
    "UP:P29788 M" "Vitronectin" "AltName: Full" "UP:P48819" "Vitronectin"
    "AltName: Full" "UP:P22458" "Vitronectin" "AltName: Full" "NCIT:C17283"
    "vitronectin" "synonym"))
  ("Stan" ("stan" "STAN" "NCIT:C92889" "ST waveform analysis" "synonym"))
  ("Std"
   ("std" "STD" "HGNC:11458 G" "sulfotransferase family 2A member 1"
    "Previous Symbol" "HGNC:12858 G"
    "zeta chain of T cell receptor associated protein kinase 70" "Synonym"
    "NCIT:C3365" "sexually transmitted disorder" "synonym" "NCIT:C3365"
    "sexually transmitted disorder" "synonym" "NCIT:C52231" "ZAP70" "synonym"))
  ("Strongyloides"
   ("strongyloides" "strongyloides" "NCIT:C125924" "strongyloides" "name"))
  ("Sumatran"
   ("sumatran" "Sumatran" "CHEBI:10650" "sumatriptan" "RELATED synonym"))
  ("SuperScript"
   ("superscript" "superscript" "NCIT:C80500" "superscript" "name"))
  ("TMDs"
   ("tmds" "t-MDS" "NCIT:C27722" "therapy-related myelodysplastic syndrome"
    "synonym"))
  ("TRIzol" ("trizol" "trizol" "MESH:C411644" "trizol" "NM"))
  ("Taiwanese"
   ("taiwanese" "TAIWANESE" "NCIT:C43675" "taiwanese" "synonym" "," "taiwanese"
    "NCIT:C43675" "taiwanese" "name"))
  ("Tbp"
   ("tbp" "TBP" "CHEBI:35019" "tributyl phosphate" "RELATED synonym"
    "EFO:0004536" "total blood protein measurement" "EXACT synonym"
    "HGNC:11588 G" "TATA-box binding protein" "Approved Symbol" "UP:P26354"
    "TATA-box-binding protein" "AltName: Short" "UP:etc" "" "fake" "FA:03941"
    "TBP family" "ID" "XFAM:PF00352 Domain" "TBP" "ID" "MESH:C009524"
    "tributyl phosphate" "SY" "NCIT:C17578" "TATA-box-binding protein"
    "synonym" "NCIT:C52514" "TBP" "name"))
  ("Teck"
   ("teck" "TECK" "HGNC:10624 G" "C-C motif chemokine ligand 25" "Synonym"
    "NCIT:C49742" "CCL25" "synonym"))
  ("Telazol"
   ("telazol" "Telazol" "MESH:C006131" "tiletamine, zolazepam drug combination"
    "SY"))
  ("Tenericutes"
   ("tenericutes" "tenericutes" "NCIT:C85860" "tenericutes" "name"))
  ("Tetraploid"
   ("tetraploid" "tetraploid" "NCIT:C28450" "tetraploidy" "synonym"))
  ("Tgt"
   ("tgt" "TGT" "HGNC:23797 G"
    "queuine tRNA-ribosyltransferase catalytic subunit 1" "Synonym"
    "HGNC:12612 G" "ubiquitin specific peptidase 14" "Synonym"
    "XFAM:PF01702 Family" "TGT" "ID" "NCIT:C132091" "USP14" "synonym"))
  ("Tibetan"
   ("tibetan" "tibetan" "NCIT:C153862" "standard tibetan language" "synonym"))
  ("Tli"
   ("tli" "TLI" "NCIT:C154170" "tlingit language" "synonym" "NCIT:C156721"
    "total lymphoid irradiation" "synonym" "NCIT:C161508"
    "right and left lung irradiation" "synonym"))
  ("Tmax"
   ("tmax" "TMAX" "NCIT:C70919" "tmax" "synonym" "," "tmax" "NCIT:C70919"
    "tmax" "name"))
  ("Toremifene"
   ("toremifene" "TOREMIFENE" "NCIT:C1256" "toremifene" "synonym" ","
    "toremifene" "CHEBI:9635" "toremifene" "name" "NCIT:C1256" "toremifene"
    "name"))
  ("Toxoplasma"
   ("toxoplasma" "TOXOPLASMA" "NCIT:C75538" "toxoplasma" "synonym" ","
    "toxoplasma" "NCIT:C75538" "toxoplasma" "name"))
  ("Treponema"
   ("treponema" "TREPONEMA" "NCIT:C76385" "treponema" "synonym" "," "treponema"
    "NCIT:C76385" "treponema" "name"))
  ("Trizol" ("trizol" "trizol" "MESH:C411644" "trizol" "NM"))
  ("Trt"
   ("trt" "TRT" "HGNC:11730 G" "telomerase reverse transcriptase" "Synonym"
    "NCIT:C41161" "protocol agent" "synonym" "NCIT:C41161" "protocol agent"
    "synonym" "NCIT:C52497" "TERT" "synonym" "NCIT:C82542" "treatment name"
    "synonym"))
  ("Twentytwo"
   ("twentytwo" "twenty-two" "NCIT:C126884" "twenty two" "synonym"))
  ("Ubx" ("ubx" "UBX" "XFAM:PF00789 Domain" "UBX" "ID"))
  ("UniProtKB" ("uniprotkb" "uniProtKB" "NCIT:C47851" "uniProtKB" "name"))
  ("Unigene" ("unigene" "uniGene" "NCIT:C43563" "uniGene" "name"))
  ("Ureaplasma"
   ("ureaplasma" "UREAPLASMA" "NCIT:C86832" "ureaplasma" "synonym" ","
    "ureaplasma" "NCIT:C86832" "ureaplasma" "name"))
  ("Urology" ("urology" "urology" "NCIT:C17243" "urology" "name"))
  ("Urso" ("urso" "URSO" "NCIT:C1818" "ursodiol" "synonym"))
  ("Vacutainer" ("vacutainer" "vacutainer" "NCIT:C63362" "vacutainer" "name"))
  ("Vero" ("vero" "VERO" "CVCL:0059" "Vero" "name"))
  ("Vg"
   ("vg" "VG" "CVCL:X927" "VG" "name" "CHEBI:73699" "Val-Gly" "RELATED synonym"
    "UP:Q16927" "Vitellogenin-A1" "RecName: Short" "UP:Q7Z1M0" "Vitellogenin-1"
    "AltName: Short" "NCIT:C17653" "virgin islands, british" "synonym"
    "NCIT:C161535" "V-series nerve agent VG" "synonym" "NCIT:C161535"
    "V-series nerve agent VG" "synonym"))
  ("ViPR"
   ("vipr" "VIP-R" "UP:Q90308" "Vasoactive intestinal polypeptide receptor"
    "RecName: Short" "UP:Q91085" "Vasoactive intestinal polypeptide receptor"
    "RecName: Short" "," "VIPR" "NCIT:C21443"
    "vasoactive intestinal polypeptide receptor 1" "synonym" "NCIT:C51482"
    "VIPR1" "synonym"))
  ("Vmax" ("vmax" "vmax" "NCIT:C47822" "vmax" "name"))
  ("Xc"
   ("xc" "XC" "CVCL:1891" "XC" "name" "NCIT:C123745" "coral sea islands"
    "synonym" "NCIT:C123745" "coral sea islands" "synonym"))
  ("Xf" ("xf" "XF" "CVCL:6E64" "XF" "name"))
  ("Xray"
   ("xray" "X-RAY" "NCIT:C17262" "X-ray" "synonym" "NCIT:C38101" "radiography"
    "synonym" "," "X-ray" "NCIT:C17261" "diagnostic radiology" "synonym"
    "NCIT:C17262" "X-ray" "name" "NCIT:C38101" "radiography" "synonym"
    "NCIT:C60727" "radiograph" "synonym" "NCIT:C115721"
    "radiography study file" "synonym" "," "x-ray" "NCIT:C17262" "X-ray"
    "synonym"))
  ("Yucatan"
   ("yucatan" "YUCATAN" "NCIT:C77108" "yucatan pig" "synonym" "," "yucatan"
    "NCIT:C77108" "yucatan pig" "synonym"))
  ("Zaire"
   ("zaire" "zaire" "NCIT:C17266" "congo, the democratic republic of the"
    "synonym"))
  ("Zetasizer"
   ("zetasizer" "zetasizer" "NCIT:C78812"
    "laser doppler velocimetry-phase analysis light scattering system"
    "synonym"))
  ("Zika" ("zika" "zika" "NCIT:C128423" "zika virus infection" "synonym"))
  ("attR"
   ("attr" "ATTR" "UP:P02766 H" "Transthyretin" "AltName: Full" "NCIT:C79963"
    "TTR" "synonym" "NCIT:C79964" "transthyretin" "synonym"))
  ("Clocortolone"
   ("clocortolone" "CLOCORTOLONE" "NCIT:C61684" "clocortolone" "synonym" ","
    "clocortolone" "CHEBI:59582" "clocortolone" "name" "MESH:C004686"
    "clocortolone" "NM" "NCIT:C61684" "clocortolone" "name"))
  ("Fosaprepitant"
   ("fosaprepitant" "FOSAPREPITANT" "NCIT:C72787" "fosaprepitant" "synonym" ","
    "fosaprepitant" "CHEBI:64321" "fosaprepitant" "name" "MESH:C579707"
    "fosaprepitant" "NM" "NCIT:C72787" "fosaprepitant" "name"))
  ("compB" ("compb" "CompB" "MESH:C402921" "J 113397" "SY"))
  ("crRNA" ("crrna" "crRNA" "CHEBI:134528" "CRISPR RNA" "RELATED synonym"))
  ("dN"
   ("dn" "DN" "EFO:0007834" "liver dysplastic nodule" "EXACT synonym"
    "NCIT:C7656" "liver dysplastic nodule" "synonym" "NCIT:C45774"
    "DN term type" "synonym" "," "dN" "CHEBI:33793"
    "canonical deoxyribonucleoside residue" "RELATED synonym"))
  ("dREG" ("dreg" "DREG" "NCIT:C153051" "ADGRG6" "synonym"))
  ("dS"
   ("ds" "D-S" "CHEBI:73454" "Asp-Ser" "RELATED synonym" "," "DS" "CVCL:QX99"
    "DS" "name" "CHEBI:62097" "alpha-Neup5Ac-(2->8)-alpha-Neup5Ac"
    "RELATED synonym" "Orphanet:33069" "Dravet syndrome" "EXACT synonym"
    "HGNC:20603 G" "dehydrodolichyl diphosphate synthase subunit" "Synonym"
    "UP:SL-0092 D" "Desmosome" "SY" "XFAM:PF01916 Domain" "DS" "ID" "NCIT:C447"
    "disulfiram" "synonym" "NCIT:C44375" "diethyl sulfate" "synonym"
    "NCIT:C49576" "disposition domain" "synonym" "NCIT:C50950" "DHPS" "synonym"
    "NCIT:C112519" "disease steps clinical classification" "synonym"))
  ("dsDNA" ("dsdna" "dsDNA" "NCIT:C449" "DNA" "synonym"))
  ("ePCR"
   ("epcr" "EPCR" "HGNC:9452 G" "protein C receptor" "Synonym" "NCIT:C118583"
    "PROCR" "synonym"))
  ("gDNA" ("gdna" "gDNA" "NCIT:C95940" "genomic DNA" "synonym"))
  ("hAPN"
   ("hapn" "hAPN" "UP:P15144 H" "Aminopeptidase N" "RecName: Short"
    "NCIT:C94661" "aminopeptidase N" "synonym"))
  ("hRSV"
   ("hrsv" "hRSV" "NCIT:C14267" "human respiratory syncytial virus" "synonym"))
  ("Helix"
   ("helix" "helix" "NCIT:C32724" "helix" "name" "NCIT:C47937" "helix" "name"
    "NCIT:C48043" "protein helix" "synonym"))
  ("Immunohistochemistry"
   ("immunohistochemistry" "immunohistochemistry" "NCIT:C16722"
    "immunohistochemistry" "name" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C23020"
    "immunohistochemistry staining method" "synonym" "NCIT:C51944"
    "immunohistochemical test" "synonym"))
  ("kC"
   ("kc" "KC" "BTO:0000375" "keratinocyte cell line" "RELATED synonym"
    "CVCL:M605" "105KC" "RELATED synonym" "CVCL:Z833" "Kc" "name" "CVCL:S097"
    "KC" "name" "NCIT:C49763" "CXCL1" "synonym" "NCIT:C52394" "CALCA" "synonym"
    "," "Kc" "EFO:0002068" "Kc" "name"))
  ("kHz"
   ("khz" "kHz" "NCIT:C67279" "kilohertz" "synonym" "NCIT:C67279" "kilohertz"
    "synonym" "NCIT:C67279" "kilohertz" "synonym"))
  ("keV"
   ("kev" "KeV" "NCIT:C67276" "kiloelectronvolt" "synonym" "NCIT:C67276"
    "kiloelectronvolt" "synonym" "," "keV" "NCIT:C67276" "kiloelectronvolt"
    "synonym" "NCIT:C67276" "kiloelectronvolt" "synonym"))
  ("lB"
   ("lb" "LB" "CVCL:E751" "LB" "name" "NCIT:C16784" "lebanon" "synonym"
    "NCIT:C48531" "pound" "synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C49592" "laboratory data domain" "synonym" "NCIT:C158212"
    "lhoba chinese" "synonym" "NCIT:C158212" "lhoba chinese" "synonym" "," "lb"
    "UO:0010034" "pound" "EXACT synonym" "NCIT:C48531" "pound" "synonym"
    "NCIT:C48531" "pound" "synonym"))
  ("lnP"
   ("lnp" "LNP" "HGNC:21610 G" "lunapark, ER junction formation factor"
    "Synonym" "HGNC:18538 G" "nucleolar and spindle associated protein 1"
    "Synonym" "NCIT:C126504" "NUSAP1" "synonym"))
  ("mefA"
   ("mefa" "MEFA" "NCIT:C10280" "doxorubicin/Fluorouracil/Semustine regimen"
    "synonym" "," "MeFA" "NCIT:C10280"
    "doxorubicin/Fluorouracil/Semustine regimen" "synonym"))
  ("miRNASeq"
   ("mirnaseq" "miRNA-seq" "NCIT:C156057" "microRNA sequencing" "synonym"))
  ("nCBE"
   ("ncbe" "NCBE" "HGNC:13811 G" "solute carrier family 4 member 10"
    "Synonym"))
  ("nRCs" ("nrcs" "NRCs" "CVCL:WJ27" "NRCs" "name"))
  ("nanA" ("nana" "nanA" "FA:00943" "nanA subfamily" "ID"))
  ("nsP"
   ("nsp" "NSP" "HGNC:10467 G" "reticulon 1" "Previous Symbol" "HGNC:30615 G"
    "sperm antigen with calponin homology and coiled-coil domains 1" "Synonym"
    "UP:Q9NQC3 H" "Reticulon-4" "AltName: Short" "UP:O95405 H"
    "Zinc finger FYVE domain-containing protein 9" "AltName: Short"
    "NCIT:C17692" "reticulon-1" "synonym" "NCIT:C20124" "reticulon-4" "synonym"
    "NCIT:C21259" "neuroendocrine-specific protein" "synonym" "NCIT:C26483"
    "zinc finger FYVE domain-containing protein 9" "synonym" "NCIT:C54436"
    "RTN1" "synonym" "NCIT:C97532" "SPECC1" "synonym"))
  ("pA"
   ("pa" "PA" "CVCL:E800" "PA" "name" "CHEBI:8429" "procainamide hydrochloride"
    "RELATED synonym" "CHEBI:7959" "D-penicillamine" "RELATED synonym"
    "CHEBI:74753" "Pro-Ala" "RELATED synonym" "CHEBI:30768" "propionic acid"
    "RELATED synonym" "CHEBI:30745" "phenylacetic acid" "RELATED synonym"
    "HGNC:8549 G" "biogenesis of lysosomal organelles complex 1 subunit 6"
    "Previous Symbol" "HGNC:3381 G" "erythrocyte membrane protein band 4.2"
    "Synonym" "UP:P04746 H" "Pancreatic alpha-amylase" "RecName: Short"
    "UP:P00688 M" "Pancreatic alpha-amylase" "RecName: Short"
    "XFAM:PF02225 Family" "PA" "ID" "NCIT:C16951" "panama" "synonym"
    "NCIT:C18233" "program announcement" "synonym" "NCIT:C43469" "pennsylvania"
    "synonym" "NCIT:C53423" "physician assistant" "synonym" "NCIT:C74924"
    "per year" "synonym" "NCIT:C102694" "pairing events domain" "synonym" ","
    "Pa" "HGNC:9366 G" "proline rich protein HaeIII subfamily 1" "Synonym"
    "UP:P02810 H" "Salivary acidic proline-rich phosphoprotein 1/2"
    "AltName: Short" "NCIT:C42547" "pascal" "synonym" "NCIT:C42547" "pascal"
    "synonym" "NCIT:C42547" "pascal" "synonym" "," "pA" "CHEBI:16027"
    "adenosine 5'-monophosphate" "RELATED synonym"))
  ("pDNA" ("pdna" "pDNA" "NCIT:C754" "plasmid" "synonym"))
  ("pI"
   ("pi" "PI" "CHEBI:74790" "Pro-Ile" "RELATED synonym" "CHEBI:53806"
    "phenyl isocyanate" "RELATED synonym" "CHEBI:28874" "phosphatidylinositol"
    "RELATED synonym" "CHEBI:61484" "polyimide polymer" "RELATED synonym"
    "HGNC:8941 G" "serpin family A member 1" "Previous Symbol" "NCIT:C743"
    "phosphatidylinositol" "synonym" "NCIT:C19924" "principal investigator"
    "synonym" "NCIT:C28042" "proliferative index" "synonym" "NCIT:C101388"
    "pulsatility index" "synonym" "NCIT:C105011" "SERPINA1" "synonym"
    "NCIT:C105167" "STANDARDS pain intensity questionnaire" "synonym"
    "NCIT:C105167" "STANDARDS pain intensity questionnaire" "synonym"
    "NCIT:C129914" "pancreatic icosapeptide" "synonym" "," "Pi" "CHEBI:35780"
    "phosphate ion" "RELATED synonym" "FA:01674" "Pi family" "ID" "NCIT:C68573"
    "pebi" "synonym" "," "pI" "NCIT:C54157" "isoelectric point" "synonym" ","
    "pi" "UO:0000188" "pi" "name"))
  ("pN"
   ("pn" "PN" "CHEBI:74754" "Pro-Asn" "RELATED synonym" "HGNC:16953 G"
    "periostin" "Synonym" "UP:Q15063 H" "Periostin" "RecName: Short"
    "UP:Q62009 M" "Periostin" "RecName: Short" "UP:P03045"
    "Antitermination protein N" "AltName: Short" "NCIT:C16993" "pitcairn"
    "synonym" "NCIT:C101423" "POSTN" "synonym" "NCIT:C101424" "periostin"
    "synonym" "NCIT:C120353" "picture naming subtest (WPPSI-IV)" "synonym" ","
    "pn" "CHEBI:30630" "propylenediamine" "RELATED synonym"))
  ("pP"
   ("pp" "PP" "CHEBI:73646" "Pro-Pro" "RELATED synonym" "CHEBI:53550"
    "poly(propylene)" "RELATED synonym" "HGNC:9226 G"
    "inorganic pyrophosphatase 1" "Previous Symbol" "UP:P01298 H"
    "Pancreatic prohormone" "AltName: Short" "UP:P10601 M"
    "Pancreatic prohormone" "AltName: Short" "NCIT:C725"
    "pancreatic polypeptide" "synonym" "NCIT:C49607"
    "pharmacokinetic parameters domain" "synonym" "NCIT:C129910" "PPY"
    "synonym" "NCIT:C129912" "pancreatic prohormone" "synonym" "," "Pp"
    "CHEBI:26294" "propionyl group" "RELATED synonym"))
  ("pR"
   ("pr" "PR" "CHEBI:73645" "Pro-Arg" "RELATED synonym" "HGNC:8910 G"
    "progesterone receptor" "Synonym" "HGNC:18216 G" "transmembrane protein 37"
    "Synonym" "UP:P06401 H" "Progesterone receptor" "RecName: Short"
    "UP:Q00175 M" "Progesterone receptor" "RecName: Short" "UP:etc" "" "fake"
    "NCIT:C17043" "puerto rico" "synonym" "NCIT:C17075" "progesterone receptor"
    "synonym" "NCIT:C18058" "partial remission" "synonym" "NCIT:C18058"
    "partial remission" "synonym" "NCIT:C18212" "partial response" "synonym"
    "NCIT:C51709" "PGR" "synonym" "NCIT:C102700" "procedure domain" "synonym"
    "NCIT:C105168" "STANDARDS pain relief questionnaire" "synonym"
    "NCIT:C105168" "STANDARDS pain relief questionnaire" "synonym"
    "NCIT:C117846" "progesterone receptor measurement" "synonym" "NCIT:C125212"
    "TMEM37" "synonym" "NCIT:C142792"
    "lugano lymphoma response classification partial remission by CT" "synonym"
    "NCIT:C142796"
    "lugano lymphoma response classification partial remission by PET"
    "synonym" "NCIT:C159094" "GDC progression or recurrence terminology"
    "synonym" "NCIT:C159619" "RECIL PR" "synonym" "NCIT:C159619" "RECIL PR"
    "synonym" "NCIT:C159947" "global partial response" "synonym" "NCIT:C159953"
    "global partial response in skin" "synonym" "NCIT:C159959"
    "global partial response in lymph nodes" "synonym" "NCIT:C159965"
    "global partial response in viscera" "synonym" "NCIT:C159971"
    "global partial response in blood" "synonym" "," "PR-" "NCIT:C15497"
    "progesterone receptor negative" "synonym" "," "Pr" "HGNC:9367 G"
    "proline rich protein HaeIII subfamily 2" "Synonym" "NCIT:C17075"
    "progesterone receptor" "synonym"))
  ("pdU"
   ("pdu" "PDu" "NCIT:C123607" "unconfirmed progressive disease" "synonym"
    "NCIT:C123607" "unconfirmed progressive disease" "synonym"))
  ("psaA"
   ("psaa" "psaA" "UP:Q9MTQ4" "Photosystem I P700 chlorophyll a apoprotein A1"
    "AltName: Full" "UP:etc" "" "fake"))
  ("qPCR" ("qpcr" "qPCR" "NCIT:C51962" "real time PCR" "synonym"))
  ("qW"
   ("qw" "Q-W" "CHEBI:141431" "Gln-Trp" "RELATED synonym" "," "QW"
    "NCIT:C123773" "wake island" "synonym" "NCIT:C123773" "wake island"
    "synonym"))
  ("repC"
   ("repc" "REPC" "CVCL:W815" "REPC" "name" "," "RepC" "XFAM:PF06504 Family"
    "RepC" "ID" "," "repc" "UP:P07040" "Repressor c protein" "RecName: Short"
    "UP:P06019" "Repressor protein c" "RecName: Short"))
  ("sCAI"
   ("scai" "SCAI" "HGNC:26709 G" "suppressor of cancer cell invasion"
    "Approved Symbol" "FA:03505" "SCAI family" "ID" "XFAM:PF12070 Family"
    "SCAI" "ID"))
  ("ssDNA"
   ("ssdna" "ssDNA" "NCIT:C111311" "single-stranded DNA" "synonym"
    "NCIT:C111311" "single-stranded DNA" "synonym"))
  ("Telemedicine"
   ("telemedicine" "telemedicine" "NCIT:C15380" "telemedicine" "name"))
  ("Tilorone"
   ("tilorone" "TILORONE" "NCIT:C73335" "tilorone" "synonym" "," "tilorone"
    "NCIT:C73335" "tilorone" "name"))
  ("vRNA" ("vrna" "vRNA" "HGNC:12654 R" "vault RNA 1-1" "Synonym"))
  ("vSIR"
   ("vsir" "VSIR" "HGNC:30085 G" "V-set immunoregulatory receptor"
    "Approved Symbol" "NCIT:C120578" "VSIR" "name" "NCIT:C120581"
    "V-type immunoglobulin domain-containing suppressor of T-cell activation"
    "synonym"))
  ("Villus"
   ("villus" "villus" "BTO:0003121" "villus" "name" "NCIT:C33874" "villus"
    "name" "NCIT:C94673" "intestinal villus" "synonym")))
)

(defparameter *first-name-drum-terms* 
'(("ADME" ("adme" "ADME" "NCIT:C15967" "ADME study" "synonym"))
  ("Alexander"
   ("alexander" "Alexander" "CVCL:0485" "PLC/PRF/5" "RELATED synonym" ","
    "alexander" "NCIT:C44734" "alexander" "name"))
  ("Amy"
   ("amy" "AMY" "HGNC:17187 G" "olfactomedin 1" "Synonym" "UP:Q9BXS0 H"
    "Collagen alpha-1(XXV) chain" "AltName: Short"))
  ("Angus" ("angus" "Angus" "CVCL:WS61" "Angus" "name"))
  ("Augustine" ("augustine" "augustine" "NCIT:C43909" "augustine" "name"))
  ("Austin" ("austin" "austin" "MESH:C012757" "austin" "NM"))
  ("BEI" ("bei" "BEI" "CVCL:E474" "BEI" "name"))
  ("BES"
   ("bes" "BES" "CHEBI:39043" "BES" "name" "CHEBI:39041"
    "2-[bis(2-hydroxyethyl)amino]ethanesulfonic acid" "RELATED synonym"
    "MESH:C012210" "BES" "NM" "NCIT:C101224" "bonaire, sint eustatius and saba"
    "synonym" "NCIT:C101224" "bonaire, sint eustatius and saba" "synonym"))
  ("BEs"
   ("bes" "BES" "CHEBI:39043" "BES" "name" "CHEBI:39041"
    "2-[bis(2-hydroxyethyl)amino]ethanesulfonic acid" "RELATED synonym"
    "MESH:C012210" "BES" "NM" "NCIT:C101224" "bonaire, sint eustatius and saba"
    "synonym" "NCIT:C101224" "bonaire, sint eustatius and saba" "synonym"))
  ("BO"
   ("bo" "BO" "CVCL:E492" "BOLETH" "RELATED synonym" "UP:P02945"
    "Bacteriorhodopsin" "AltName: Short" "NCIT:C10219" "bleomycin/Vincristine"
    "synonym" "NCIT:C16359" "bolivia, plurinational state of" "synonym"
    "NCIT:C48477" "bottle dosing unit" "synonym" "NCIT:C62580"
    "bronchiolitis obliterans" "synonym"))
  ("Boyd"
   ("boyd" "boyd" "NCIT:C68650" "boyd body surface area formula" "synonym"))
  ("CDC"
   ("cdc" "CDC" "EFO:0006820" "complicated disease course" "EXACT synonym"
    "NCIT:C16408" "centers for disease control and prevention" "synonym" ","
    "cDC" "CL:0000990" "conventional dendritic cell" "EXACT synonym"
    "NCIT:C123782" "conventional dendritic cell" "synonym"))
  ("CHE"
   ("che" "CHE" "NCIT:C17181" "switzerland" "synonym" "NCIT:C17181"
    "switzerland" "synonym" "NCIT:C153877" "chechen language" "synonym"))
  ("CMV"
   ("cmv" "CMV" "NCIT:C9717" "MCV regimen" "synonym" "NCIT:C9798"
    "cyclophosphamide/Etoposide/Methotrexate" "synonym" "NCIT:C14196"
    "cytomegalovirus" "synonym" "NCIT:C14196" "cytomegalovirus" "synonym"))
  ("Cao"
   ("cao" "CAO" "GO:0010277" "chlorophyllide a oxygenase [overall] activity"
    "BROAD synonym" "GO:0052606" "chlorophyllide a oxygenase activity"
    "BROAD synonym" "GO:0052607"
    "7-hydroxy-chlorophyllide a oxygenase activity" "BROAD synonym"))
  ("Carina"
   ("carina" "CARINA" "NCIT:C25264" "carina" "synonym" "," "carina"
    "NCIT:C25264" "carina" "name"))
  ("Carl" ("carl" "CARL" "CVCL:0E92" "Carl" "name"))
  ("Colin" ("colin" "Colin" "CVCL:6F56" "Colin" "name"))
  ("Cong" ("cong" "con-G" "UP:P07231" "Conantokin-G" "RecName: Short"))
  ("Craig" ("craig" "craig" "NCIT:C44714" "craig" "name"))
  ("Cui"
   ("cui" "CUI" "NCIT:C42718" "UMLS concept unique identifier" "synonym"
    "NCIT:C70818" "concept unique identifier" "synonym"))
  ("DALI"
   ("dali" "DALI" "HGNC:51429 R"
    "DNMT1-associated long intergenic non-coding RNA" "Synonym"))
  ("Dong" ("dong" "DONG" "NCIT:C158168" "dong chinese" "synonym"))
  ("ELLA"
   ("ella" "ELLA" "NCIT:C147466" "enzyme-linked lectin assay" "synonym" ","
    "Ella" "CHEBI:71025" "ulipristal acetate" "RELATED synonym" "," "ella"
    "NCIT:C91057" "ulipristal acetate" "synonym"))
  ("Eric"
   ("eric" "ERIC" "HGNC:49404 R" "E2F1-regulated inhibitor of cell death"
    "Synonym"))
  ("FEI"
   ("fei" "FEI" "NCIT:C134004" "facility FDA establishment identifier"
    "synonym" "NCIT:C134004" "facility FDA establishment identifier"
    "synonym"))
  ("GP"
   ("gp" "GP" "CVCL:S009" "GEC" "RELATED synonym" "CHEBI:70744" "Gly-Pro"
    "RELATED synonym" "HGNC:18280 G" "ring finger protein 130" "Synonym"
    "UP:P87671 H" "Envelope glycoprotein" "AltName: Short" "UP:Q85429 B"
    "Putative envelope glycoprotein" "RecName: Short" "UP:etc" "" "fake"
    "NCIT:C16651" "guadeloupe" "synonym" "NCIT:C25817"
    "cell division control protein 42 homolog" "synonym" "NCIT:C49450" "CDC42"
    "synonym" "NCIT:C52122" "TNC" "synonym" "NCIT:C111932" "RNF130" "synonym"
    "," "Gp" "CHEBI:28072" "guanosine 3'-monophosphate" "RELATED synonym"))
  ("Greg" ("greg" "GREG" "CVCL:AS31" "GREG" "name"))
  ("Heinz"
   ("heinz" "HEINZ" "NCIT:C74709" "heinz-ehrlich body measurement" "synonym"))
  ("Henry" ("henry" "henry" "NCIT:C42558" "henry" "name"))
  ("Hu"
   ("hu" "HU" "NCIT:C16699" "hungary" "synonym" "NCIT:C94908" "hounsfield unit"
    "synonym" "NCIT:C94908" "hounsfield unit" "synonym" "NCIT:C158160"
    "hui chinese" "synonym" "NCIT:C158160" "hui chinese" "synonym"))
  ("Hugo" ("hugo" "HUGO" "NCIT:C48690" "human genome organisation" "synonym"))
  ("Hui"
   ("hui" "HUI" "NCIT:C156124" "health utilities index" "synonym"
    "NCIT:C158160" "hui chinese" "synonym"))
  ("Ian" ("ian" "IAN" "FA:01805" "IAN subfamily" "ID"))
  ("JR"
   ("jr" "JR" "CVCL:RT33" "JR" "name" "CVCL:0584" "Jurkat Wurzburg"
    "RELATED synonym" "CVCL:M145" "NCI-EWS-94" "RELATED synonym" "," "Jr"
    "NCIT:C49466" "junior" "synonym"))
  ("Ji"
   ("ji" "JI" "CVCL:W934" "JI" "name" "UP:P10039" "Tenascin" "AltName: Full"
    "UP:P24821 H" "Tenascin" "AltName: Full" "UP:Q29116" "Tenascin"
    "AltName: Full" "NCIT:C17338" "tenascin" "synonym" "NCIT:C52122" "TNC"
    "synonym"))
  ("Jr"
   ("jr" "JR" "CVCL:RT33" "JR" "name" "CVCL:0584" "Jurkat Wurzburg"
    "RELATED synonym" "CVCL:M145" "NCI-EWS-94" "RELATED synonym" "," "Jr"
    "NCIT:C49466" "junior" "synonym"))
  ("Lan"
   ("lan" "LAN" "HGNC:2845 G" "DiGeorge syndrome critical region gene 2"
    "Synonym" "UP:Q6A1I3"
    "Acidic leucine-rich nuclear phosphoprotein 32 family member B"
    "AltName: Short" "NCIT:C52274" "ABCB6" "synonym"))
  ("Leo"
   ("leo" "Leo" "CVCL:A016" "Leo" "name" "CVCL:E026" "PAE-iPS-5"
    "RELATED synonym"))
  ("Luo"
   ("luo" "LUO" "NCIT:C154012" "luo language" "synonym" "," "luo"
    "NCIT:C154012" "luo language" "synonym"))
  ("MCM"
   ("mcm" "MCM" "FPLX:MCM" "MCM" "name" "Orphanet:60040"
    "Megalencephaly-capillary malformation-polymicrogyria syndrome"
    "EXACT synonym" "HGNC:7526 G" "methylmalonyl-CoA mutase" "Synonym"
    "UP:P22033 H" "Methylmalonyl-CoA mutase, mitochondrial" "RecName: Short"
    "UP:Q80Z19 M" "Mucin-2" "AltName: Short" "UP:P16332 M"
    "Methylmalonyl-CoA mutase, mitochondrial" "RecName: Short" "FA:02187"
    "MCM family" "ID" "XFAM:PF00493 Domain" "MCM" "ID" "NCIT:C51160" "PIK3CA"
    "synonym" "," "mcm" "NCIT:C48510" "micron" "synonym"))
  ("MlC"
   ("mlc" "MLC" "FPLX:MYL" "MYL" "EXACT synonym" "Orphanet:2478"
    "Megalencephalic leukoencephalopathy with subcortical cysts"
    "EXACT synonym" "HGNC:17082 G" "modulator of VRAC current 1" "Synonym"))
  ("NHS"
   ("nhs" "NHS" "HGNC:7820 G" "NHS actin remodeling regulator"
    "Approved Symbol" "FA:02466" "NHS family" "ID" "XFAM:PF15273 Family" "NHS"
    "ID"))
  ("NIV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("NiV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("Niv"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("PEI"
   ("pei" "PEI" "CHEBI:53231" "poly(ethylene imine)" "RELATED synonym"
    "CHEBI:144613" "Pro-Glu-Ile" "RELATED synonym" "NCIT:C67444"
    "ethanol ablation therapy" "synonym"))
  ("Peng" ("peng" "Peng" "CVCL:WK46" "Peng-EBV" "RELATED synonym"))
  ("SEN"
   ("sen" "SEN" "NCIT:C14468" "SEN mouse" "synonym" "NCIT:C17121" "senegal"
    "synonym" "NCIT:C17121" "senegal" "synonym"))
  ("Salar" ("salar" "SALAR" "NCIT:C158192" "salar chinese" "synonym"))
  ("Sen"
   ("sen" "SEN" "NCIT:C14468" "SEN mouse" "synonym" "NCIT:C17121" "senegal"
    "synonym" "NCIT:C17121" "senegal" "synonym"))
  ("Si"
   ("si" "SI" "CHEBI:90326" "Ser-Ile" "RELATED synonym" "HGNC:10880 G"
    "premelanosome protein" "Synonym" "HGNC:10856 G" "sucrase-isomaltase"
    "Approved Symbol" "UP:P15471" "Alpha-conotoxin S1" "AltName: Full"
    "NCIT:C17138" "slovenia" "synonym" "NCIT:C41037" "melanocyte protein PMEL"
    "synonym" "NCIT:C42541" "international system of units" "synonym"
    "NCIT:C54438" "PMEL" "synonym" "," "Si" "NCIT:C84589" "silicon" "synonym"))
  ("Simon" ("simon" "SIMON" "CVCL:0097" "SIM/EW27" "RELATED synonym"))
  ("Tom" ("tom" "TOM" "HGNC:15860 G" "pre-mRNA processing factor 6" "Synonym"))
  ("USA"
   ("usa" "USA" "NCIT:C17234" "united states" "synonym" "NCIT:C17234"
    "united states" "synonym"))
  ("USDA"
   ("usda" "USDA" "NCIT:C68708" "united states department of agriculture"
    "synonym"))
  ("Uniprot"
   ("uniprot" "uniProt" "NCIT:C43579" "universal protein resource" "synonym"))
  ("WTA" ("wta" "WTa" "CVCL:RN16" "UTA.00112.hFF" "RELATED synonym"))
  ("Xi" ("xi" "XI" "UP:P29442" "Xylose isomerase" "RecName: Short"))
  ("Xu"
   ("xu" "XU" "NCIT:C123762" "johnston atoll" "synonym" "NCIT:C123762"
    "johnston atoll" "synonym"))
  ("Yao"
   ("yao" "YAO" "NCIT:C154201" "yao language" "synonym" "NCIT:C158170"
    "yao chinese" "synonym" "," "yao" "NCIT:C154201" "yao language" "synonym"))
  ("Ye"
   ("ye" "YE" "CHEBI:74883" "Tyr-Glu" "RELATED synonym" "NCIT:C17264" "yemen"
    "synonym"))
  ("Yi"
   ("yi" "YI" "CVCL:7015" "ACC-LC-33" "RELATED synonym" "CVCL:E892" "Y.I."
    "RELATED synonym" "CHEBI:74993" "Tyr-Ile" "RELATED synonym" "NCIT:C17265"
    "serbia and montenegro" "synonym" "NCIT:C158164" "Yi chinese" "synonym"
    "NCIT:C158164" "Yi chinese" "synonym" "NCIT:C158164" "Yi chinese"
    "synonym"))
  ("Zheng" ("zheng" "zheng" "NCIT:C94403" "zheng" "name"))
  ("ab"
   ("ab" "AB" "NCIT:C15111" "AB mouse" "synonym" "NCIT:C45767" "AB term type"
    "synonym" "NCIT:C79967" "AB zebrafish" "synonym" "," "Ab" "NCIT:C16295"
    "antibody" "synonym"))
  ("bsc"
   ("bsc" "BSC" "CVCL:M116" "BSC" "name" "HGNC:10911 G"
    "solute carrier family 12 member 2" "Synonym" "NCIT:C14691" "BSC mouse"
    "synonym" "NCIT:C19139" "board of scientific counselors, NCI" "synonym"
    "NCIT:C102514" "SLC12A2" "synonym"))
  ("carina"
   ("carina" "CARINA" "NCIT:C25264" "carina" "synonym" "," "carina"
    "NCIT:C25264" "carina" "name"))
  ("cdc"
   ("cdc" "CDC" "EFO:0006820" "complicated disease course" "EXACT synonym"
    "NCIT:C16408" "centers for disease control and prevention" "synonym" ","
    "cDC" "CL:0000990" "conventional dendritic cell" "EXACT synonym"
    "NCIT:C123782" "conventional dendritic cell" "synonym"))
  ("chi"
   ("chi" "CHI" "CHEBI:136604" "cyclohexyl isocyanate" "RELATED synonym"
    "Orphanet:657" "Congenital isolated hyperinsulinism" "EXACT synonym"
    "NCIT:C14619" "CHI mouse" "synonym" "NCIT:C156647"
    "consolidated health informatics" "synonym" "," "chi" "UO:0000076"
    "mole fraction" "EXACT synonym"))
  ("iii"
   ("iii" "III" "NCIT:C49464" "third" "synonym" "NCIT:C94814" "clark level III"
    "synonym" "NCIT:C133421"
    "pathologic stage III esophageal adenocarcinoma AJCC v8" "synonym"
    "NCIT:C134747" "stage III hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134761" "stage III intrahepatic cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134817" "stage III distal bile duct cancer AJCC v8"
    "synonym" "NCIT:C139749" "stage III cervical cancer AJCC v8" "synonym"
    "NCIT:C140169" "stage III prostate cancer AJCC v8" "synonym" "NCIT:C140983"
    "stage III thyroid gland papillary carcinoma AJCC v8" "synonym"
    "NCIT:C153956" "nuosu language" "synonym"))
  ("ji"
   ("ji" "JI" "CVCL:W934" "JI" "name" "UP:P10039" "Tenascin" "AltName: Full"
    "UP:P24821 H" "Tenascin" "AltName: Full" "UP:Q29116" "Tenascin"
    "AltName: Full" "NCIT:C17338" "tenascin" "synonym" "NCIT:C52122" "TNC"
    "synonym"))
  ("le"
   ("le" "LE" "CHEBI:74531" "Leu-Glu" "RELATED synonym" "HGNC:4014 G"
    "fucosyltransferase 3 (Lewis blood group)" "Previous Symbol" "HGNC:15844 G"
    "HPS4 biogenesis of lysosomal organelles complex 3 subunit 2" "Synonym"
    "NCIT:C61586" "less than or equal To" "synonym" "NCIT:C76188"
    "LE, rat strain" "synonym"))
  ("max"
   ("max" "MAX" "HGNC:6913 G" "MYC associated factor X" "Approved Symbol"
    "FA:02182" "MAX family" "ID" "NCIT:C18604" "oncogene MAX" "synonym"
    "NCIT:C19951" "protein max" "synonym" "NCIT:C25564" "maximum" "synonym"
    "NCIT:C53036" "MAX" "name"))
  ("mr"
   ("mr" "MR" "CHEBI:74698" "Met-Arg" "RELATED synonym" "EFO:0007057"
    "miotic rate" "EXACT synonym" "HGNC:7979 G"
    "nuclear receptor subfamily 3 group C member 2" "Synonym" "UP:P08235 H"
    "Mineralocorticoid receptor" "RecName: Short" "UP:Q8VII8 M"
    "Mineralocorticoid receptor" "RecName: Short" "NCIT:C16826" "mauritania"
    "synonym" "NCIT:C17312" "mineralocorticoid receptor" "synonym"
    "NCIT:C123598" "minor response" "synonym" "NCIT:C123598" "minor response"
    "synonym" "NCIT:C158264" "minimal response" "synonym" "NCIT:C158264"
    "minimal response" "synonym" "NCIT:C159620" "RECIL MR" "synonym"
    "NCIT:C159620" "RECIL MR" "synonym"))
  ("su"
   ("su" "SU" "CVCL:W201" "SU" "name" "UP:P12490 H" "Truncated surface protein"
    "RecName: Short" "UP:P12491 H" "Truncated surface protein" "RecName: Short"
    "NCIT:C49615" "substance use domain" "synonym" "NCIT:C158183" "sui chinese"
    "synonym" "NCIT:C158183" "sui chinese" "synonym"))
  ("uniprot"
   ("uniprot" "uniProt" "NCIT:C43579" "universal protein resource" "synonym"))
  ("xi" ("xi" "XI" "UP:P29442" "Xylose isomerase" "RecName: Short")))
)

(defparameter *last-name-drum-terms* 
'(("Alexander"
   ("alexander" "Alexander" "CVCL:0485" "PLC/PRF/5" "RELATED synonym" ","
    "alexander" "NCIT:C44734" "alexander" "name"))
  ("Angus" ("angus" "Angus" "CVCL:WS61" "Angus" "name"))
  ("Austin" ("austin" "austin" "MESH:C012757" "austin" "NM"))
  ("BJ" ("bj" "BJ" "EFO:0002779" "BJ" "name" "NCIT:C16333" "benin" "synonym"))
  ("BO"
   ("bo" "BO" "CVCL:E492" "BOLETH" "RELATED synonym" "UP:P02945"
    "Bacteriorhodopsin" "AltName: Short" "NCIT:C10219" "bleomycin/Vincristine"
    "synonym" "NCIT:C16359" "bolivia, plurinational state of" "synonym"
    "NCIT:C48477" "bottle dosing unit" "synonym" "NCIT:C62580"
    "bronchiolitis obliterans" "synonym"))
  ("Bai"
   ("bai" "BAI" "NCIT:C154238" "brief appraisal inventory" "synonym"
    "NCIT:C158171" "bai chinese" "synonym"))
  ("Becker" ("becker" "BECKER" "CVCL:1093" "Becker" "name"))
  ("Boyd"
   ("boyd" "boyd" "NCIT:C68650" "boyd body surface area formula" "synonym"))
  ("CDC"
   ("cdc" "CDC" "EFO:0006820" "complicated disease course" "EXACT synonym"
    "NCIT:C16408" "centers for disease control and prevention" "synonym" ","
    "cDC" "CL:0000990" "conventional dendritic cell" "EXACT synonym"
    "NCIT:C123782" "conventional dendritic cell" "synonym"))
  ("CHE"
   ("che" "CHE" "NCIT:C17181" "switzerland" "synonym" "NCIT:C17181"
    "switzerland" "synonym" "NCIT:C153877" "chechen language" "synonym"))
  ("CW" ("cw" "CW" "NCIT:C101225" "curacao" "synonym"))
  ("Cao"
   ("cao" "CAO" "GO:0010277" "chlorophyllide a oxygenase [overall] activity"
    "BROAD synonym" "GO:0052606" "chlorophyllide a oxygenase activity"
    "BROAD synonym" "GO:0052607"
    "7-hydroxy-chlorophyllide a oxygenase activity" "BROAD synonym"))
  ("Churchill"
   ("churchill" "churchill" "FA:00597" "churchill family" "ID"
    "XFAM:PF06573 Family" "churchill" "ID"))
  ("Cole" ("cole" "COLE" "CVCL:J653" "CO" "RELATED synonym"))
  ("Cong" ("cong" "con-G" "UP:P07231" "Conantokin-G" "RecName: Short"))
  ("Craig" ("craig" "craig" "NCIT:C44714" "craig" "name"))
  ("Cui"
   ("cui" "CUI" "NCIT:C42718" "UMLS concept unique identifier" "synonym"
    "NCIT:C70818" "concept unique identifier" "synonym"))
  ("Deng" ("deng" "DEng" "NCIT:C71378" "doctor of engineering" "synonym"))
  ("Dis"
   ("dis" "DIS" "Orphanet:94064" "Deafness-infertility syndrome"
    "EXACT synonym" "NCIT:C25484" "discontinue" "synonym"))
  ("Dong" ("dong" "DONG" "NCIT:C158168" "dong chinese" "synonym"))
  ("Du"
   ("du" "-dU-" "CHEBI:75714" "dUMP residue" "RELATED synonym" "," "DU"
    "NCIT:C102622" "device-In-use domain" "synonym" "NCIT:C158191"
    "daur chinese" "synonym" "NCIT:C158191" "daur chinese" "synonym" "," "dU"
    "CHEBI:16450" "2'-deoxyuridine" "RELATED synonym" "NCIT:C120006"
    "deoxyuridine" "synonym"))
  ("Dunn" ("dunn" "Dunn" "CVCL:W629" "Dunn osteosarcoma" "RELATED synonym"))
  ("Ehrlich"
   ("ehrlich" "Ehrlich" "CVCL:3873" "Ehrlich-Lettre ascites strain E"
    "RELATED synonym"))
  ("Eisen" ("eisen" "Eisen" "CHEBI:18248" "iron atom" "RELATED synonym"))
  ("Eric"
   ("eric" "ERIC" "HGNC:49404 R" "E2F1-regulated inhibitor of cell death"
    "Synonym"))
  ("European"
   ("european" "EUROPEAN" "NCIT:C43851" "european" "synonym" "," "European"
    "EFO:0003156" "Caucasian" "EXACT synonym" "," "european" "NCIT:C43851"
    "european" "name"))
  ("FEI"
   ("fei" "FEI" "NCIT:C134004" "facility FDA establishment identifier"
    "synonym" "NCIT:C134004" "facility FDA establishment identifier"
    "synonym"))
  ("Ferron"
   ("ferron" "ferron" "CHEBI:135481" "loretin" "RELATED synonym" "MESH:C002833"
    "8-hydroxy-7-iodo-5-quinolinesulfonic acid" "SY"))
  ("GEE" ("gee" "GEE" "CVCL:RY59" "GEE" "name"))
  ("GU"
   ("gu" "GU" "NCIT:C16652" "guam" "synonym" "NCIT:C38214"
    "genitourinary route of administration" "synonym" "," "Gu" "CHEBI:42820"
    "guanidine" "RELATED synonym"))
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
  ("Gilbert" ("gilbert" "gilbert" "NCIT:C68918" "gilbert" "name"))
  ("Gu"
   ("gu" "GU" "NCIT:C16652" "guam" "synonym" "NCIT:C38214"
    "genitourinary route of administration" "synonym" "," "Gu" "CHEBI:42820"
    "guanidine" "RELATED synonym"))
  ("Guerrero" ("guerrero" "guerrero" "NCIT:C106170" "guerrero" "name"))
  ("HA"
   ("ha" "HA" "CHEBI:73924" "His-Ala" "RELATED synonym" "UO:0010010" "hectare"
    "EXACT synonym" "UP:P69208 H" "Morphogenetic neuropeptide" "AltName: Short"
    "XFAM:PF03457 Domain" "HA" "ID" "NCIT:C158158" "han chinese" "synonym"
    "NCIT:C158158" "han chinese" "synonym" "," "Ha" "CHEBI:33349"
    "dubnium atom" "RELATED synonym" "CHEBI:33357" "hassium atom"
    "RELATED synonym" "," "ha" "NCIT:C68865" "hectare" "synonym"))
  ("Harman"
   ("harman" "Harman" "CHEBI:5623" "harman" "name" "," "harman" "MESH:C005010"
    "harman" "NM"))
  ("Heinz"
   ("heinz" "HEINZ" "NCIT:C74709" "heinz-ehrlich body measurement" "synonym"))
  ("Henry" ("henry" "henry" "NCIT:C42558" "henry" "name"))
  ("Hoh"
   ("hoh" "HOH" "CHEBI:15377" "water" "RELATED synonym" "," "hoh" "NCIT:C43921"
    "hoh" "name"))
  ("Hu"
   ("hu" "HU" "NCIT:C16699" "hungary" "synonym" "NCIT:C94908" "hounsfield unit"
    "synonym" "NCIT:C94908" "hounsfield unit" "synonym" "NCIT:C158160"
    "hui chinese" "synonym" "NCIT:C158160" "hui chinese" "synonym"))
  ("Hughes"
   ("hughes" "Hughes" "CVCL:L357" "Hughes" "name" "," "hughes" "NCIT:C44762"
    "hughes" "name"))
  ("Hugo" ("hugo" "HUGO" "NCIT:C48690" "human genome organisation" "synonym"))
  ("Hui"
   ("hui" "HUI" "NCIT:C156124" "health utilities index" "synonym"
    "NCIT:C158160" "hui chinese" "synonym"))
  ("Hz"
   ("hz" "HZ" "NCIT:C158210" "hezhen chinese" "synonym" "NCIT:C158210"
    "hezhen chinese" "synonym" "," "Hz" "UO:0000106" "hertz" "EXACT synonym"
    "NCIT:C42545" "hertz" "synonym" "NCIT:C42545" "hertz" "synonym"
    "NCIT:C42545" "hertz" "synonym" "NCIT:C42545" "hertz" "synonym"
    "NCIT:C42545" "hertz" "synonym"))
  ("Ian" ("ian" "IAN" "FA:01805" "IAN subfamily" "ID"))
  ("JC" ("jc" "JC" "CVCL:3530" "JC" "name"))
  ("JR"
   ("jr" "JR" "CVCL:RT33" "JR" "name" "CVCL:0584" "Jurkat Wurzburg"
    "RELATED synonym" "CVCL:M145" "NCI-EWS-94" "RELATED synonym" "," "Jr"
    "NCIT:C49466" "junior" "synonym"))
  ("JY" ("jy" "JY" "CVCL:0108" "JY" "name"))
  ("Ji"
   ("ji" "JI" "CVCL:W934" "JI" "name" "UP:P10039" "Tenascin" "AltName: Full"
    "UP:P24821 H" "Tenascin" "AltName: Full" "UP:Q29116" "Tenascin"
    "AltName: Full" "NCIT:C17338" "tenascin" "synonym" "NCIT:C52122" "TNC"
    "synonym"))
  ("Jr"
   ("jr" "JR" "CVCL:RT33" "JR" "name" "CVCL:0584" "Jurkat Wurzburg"
    "RELATED synonym" "CVCL:M145" "NCI-EWS-94" "RELATED synonym" "," "Jr"
    "NCIT:C49466" "junior" "synonym"))
  ("KA" ("ka" "KA" "CVCL:7023" "ACC-LC-61" "RELATED synonym"))
  ("Ka" ("ka" "KA" "CVCL:7023" "ACC-LC-61" "RELATED synonym"))
  ("Kash" ("kash" "KASH" "XFAM:PF10541 Domain" "KASH" "ID"))
  ("Kimura" ("kimura" "Kimura" "CVCL:IU38" "Kimura" "name"))
  ("Kox"
   ("kox" "KOX" "HGNC:7891 G" "NADPH oxidase 4" "Synonym" "NCIT:C104571" "NOX4"
    "synonym"))
  ("Lan"
   ("lan" "LAN" "HGNC:2845 G" "DiGeorge syndrome critical region gene 2"
    "Synonym" "UP:Q6A1I3"
    "Acidic leucine-rich nuclear phosphoprotein 32 family member B"
    "AltName: Short" "NCIT:C52274" "ABCB6" "synonym"))
  ("Lek" ("lek" "LEK" "CVCL:F742" "LEK" "name"))
  ("Leo"
   ("leo" "Leo" "CVCL:A016" "Leo" "name" "CVCL:E026" "PAE-iPS-5"
    "RELATED synonym"))
  ("Leslie" ("leslie" "Leslie" "CVCL:VL63" "Leslie" "name"))
  ("Luo"
   ("luo" "LUO" "NCIT:C154012" "luo language" "synonym" "," "luo"
    "NCIT:C154012" "luo language" "synonym"))
  ("MOH"
   ("moh" "MOH" "CVCL:2782" "MOH (TOU II-3)" "RELATED synonym" "NCIT:C154033"
    "mohawk language" "synonym"))
  ("Maori"
   ("maori" "MAORI" "NCIT:C158274" "maori" "synonym" "," "maori" "NCIT:C154036"
    "maori language" "synonym" "NCIT:C158274" "maori" "name"))
  ("Maxwell" ("maxwell" "maxwell" "NCIT:C68793" "maxwell" "name"))
  ("McCoy" ("mccoy" "MCCOY" "CVCL:3742" "McCoy" "name"))
  ("Miao" ("miao" "MIAO" "NCIT:C158163" "miao chinese" "synonym"))
  ("Moras"
   ("moras" "MoRAS" "UP:G0LD36" "Rosmarinate synthase" "RecName: Short"))
  ("NGA"
   ("nga" "NGA" "NCIT:C16917" "nigeria" "synonym" "NCIT:C16917" "nigeria"
    "synonym" "NCIT:C60764" "notice of grant award" "synonym"))
  ("NIV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("NaH"
   ("nah" "NAH" "UP:Q0QLF4"
    "Nicotinate dehydrogenase FAD-subunit {ECO:0000312|EMBL:ABC88396.1}"
    "AltName: Short" "UP:Q0QLF2"
    "Nicotinate dehydrogenase large molybdopterin subunit {ECO:0000312|EMBL:ABC88398.1}"
    "AltName: Short" "UP:Q0QLF1"
    "Nicotinate dehydrogenase medium molybdopterin subunit {ECO:0000312|EMBL:ABC88399.1}"
    "AltName: Short" "UP:Q0QLF3"
    "Nicotinate dehydrogenase small FeS subunit {ECO:0000312|EMBL:ABC88397.1}"
    "AltName: Short"))
  ("Nah"
   ("nah" "NAH" "UP:Q0QLF4"
    "Nicotinate dehydrogenase FAD-subunit {ECO:0000312|EMBL:ABC88396.1}"
    "AltName: Short" "UP:Q0QLF2"
    "Nicotinate dehydrogenase large molybdopterin subunit {ECO:0000312|EMBL:ABC88398.1}"
    "AltName: Short" "UP:Q0QLF1"
    "Nicotinate dehydrogenase medium molybdopterin subunit {ECO:0000312|EMBL:ABC88399.1}"
    "AltName: Short" "UP:Q0QLF3"
    "Nicotinate dehydrogenase small FeS subunit {ECO:0000312|EMBL:ABC88397.1}"
    "AltName: Short"))
  ("Nam"
   ("nam" "NAM" "XFAM:PF02365 Family" "NAM" "ID" "NCIT:C16891" "namibia"
    "synonym" "NCIT:C16891" "namibia" "synonym" "NCIT:C117200" "vendor name"
    "synonym"))
  ("Nc"
   ("nc" "-NC" "CHEBI:36826" "isocyano group" "RELATED synonym" "," "NC"
    "UP:P15882 H" "N-chimaerin" "AltName: Short" "UP:Q91V57 M" "N-chimaerin"
    "AltName: Short" "XFAM:PF04970 Domain" "LRAT" "PI" "NCIT:C14783" "NC mouse"
    "synonym" "NCIT:C16913" "new caledonia" "synonym" "NCIT:C43474"
    "north carolina" "synonym" "NCIT:C97444" "N-chimaerin" "synonym" "," "NC-"
    "CHEBI:48819" "cyano group" "RELATED synonym"))
  ("Ngo"
   ("ngo" "NGO" "NCIT:C161397" "neisseria gonorrhoeae measurement" "synonym"))
  ("NiV"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("Niv"
   ("niv" "NIV" "NCIT:C29902" "nodule-inducing virus" "synonym" "," "NiV"
    "NCIT:C112359" "nipah virus" "synonym"))
  ("Nj" ("nj" "NJ" "NCIT:C43467" "new jersey" "synonym"))
  ("Ooi" ("ooi" "OOI" "NCIT:C150897" "organ of interest" "synonym"))
  ("PEI"
   ("pei" "PEI" "CHEBI:53231" "poly(ethylene imine)" "RELATED synonym"
    "CHEBI:144613" "Pro-Glu-Ile" "RELATED synonym" "NCIT:C67444"
    "ethanol ablation therapy" "synonym"))
  ("Peng" ("peng" "Peng" "CVCL:WK46" "Peng-EBV" "RELATED synonym"))
  ("Prins"
   ("prins" "PRINS" "HGNC:34235 R"
    "psoriasis associated non-protein coding RNA induced by stress"
    "Approved Symbol"))
  ("Roche" ("roche" "roche" "NCIT:C157414" "roche HPV lab test" "synonym"))
  ("SEN"
   ("sen" "SEN" "NCIT:C14468" "SEN mouse" "synonym" "NCIT:C17121" "senegal"
    "synonym" "NCIT:C17121" "senegal" "synonym"))
  ("SY"
   ("sy" "S-Y" "CHEBI:73652" "Ser-Tyr" "RELATED synonym" "," "SY" "CVCL:7028"
    "ACC-LC-80" "RELATED synonym" "NCIT:C17182" "syrian arab republic"
    "synonym" "NCIT:C45780" "SY term type" "synonym"))
  ("Scriber"
   ("scriber" "scriber" "NCIT:C50162" "scriber device" "synonym" "NCIT:C50162"
    "scriber device" "synonym"))
  ("Sen"
   ("sen" "SEN" "NCIT:C14468" "SEN mouse" "synonym" "NCIT:C17121" "senegal"
    "synonym" "NCIT:C17121" "senegal" "synonym"))
  ("Si"
   ("si" "SI" "CHEBI:90326" "Ser-Ile" "RELATED synonym" "HGNC:10880 G"
    "premelanosome protein" "Synonym" "HGNC:10856 G" "sucrase-isomaltase"
    "Approved Symbol" "UP:P15471" "Alpha-conotoxin S1" "AltName: Full"
    "NCIT:C17138" "slovenia" "synonym" "NCIT:C41037" "melanocyte protein PMEL"
    "synonym" "NCIT:C42541" "international system of units" "synonym"
    "NCIT:C54438" "PMEL" "synonym" "," "Si" "NCIT:C84589" "silicon" "synonym"))
  ("Simon" ("simon" "SIMON" "CVCL:0097" "SIM/EW27" "RELATED synonym"))
  ("Simpson" ("simpson" "Simpson" "CVCL:0014" "RPMI-8226" "RELATED synonym"))
  ("Supp"
   ("supp" "SUPP" "NCIT:C42993" "suppository dosage form" "synonym" "," "supp"
    "NCIT:C42993" "suppository dosage form" "synonym" "NCIT:C42993"
    "suppository dosage form" "synonym" "NCIT:C48539" "suppository dosing unit"
    "synonym"))
  ("TU"
   ("tu" "TU" "CVCL:Z025" "ACC-LC-97" "RELATED synonym" "NCIT:C79982"
    "tubingen zebrafish" "synonym" "NCIT:C106577" "tumor identifier domain"
    "synonym" "NCIT:C158186" "Tu chinese" "synonym" "NCIT:C158186" "Tu chinese"
    "synonym" "NCIT:C158186" "Tu chinese" "synonym" "," "tu" "CHEBI:36946"
    "thiourea" "RELATED synonym"))
  ("Tai"
   ("tai" "TAI" "CHEBI:142738" "tau aggregation inhibitor" "RELATED synonym"))
  ("Tokunaga" ("tokunaga" "TOKUNAGA" "CVCL:E855" "TOKUNAGA" "name"))
  ("Toledo"
   ("toledo" "TOLEDO" "CVCL:3611" "Toledo" "name" "," "Toledo" "EFO:0002383"
    "Toledo" "name"))
  ("Tom" ("tom" "TOM" "HGNC:15860 G" "pre-mRNA processing factor 6" "Synonym"))
  ("Traub" ("traub" "TRAUB" "XFAM:PF08164 Domain" "TRAUB" "ID"))
  ("Tu"
   ("tu" "TU" "CVCL:Z025" "ACC-LC-97" "RELATED synonym" "NCIT:C79982"
    "tubingen zebrafish" "synonym" "NCIT:C106577" "tumor identifier domain"
    "synonym" "NCIT:C158186" "Tu chinese" "synonym" "NCIT:C158186" "Tu chinese"
    "synonym" "NCIT:C158186" "Tu chinese" "synonym" "," "tu" "CHEBI:36946"
    "thiourea" "RELATED synonym"))
  ("USDA"
   ("usda" "USDA" "NCIT:C68708" "united states department of agriculture"
    "synonym"))
  ("UY" ("uy" "UY" "NCIT:C17244" "uruguay" "synonym"))
  ("VR"
   ("vr" "V-R" "CHEBI:73711" "Val-Arg" "RELATED synonym" "," "VR"
    "CHEBI:140422" "VR nerve agent" "RELATED synonym" "NCIT:C150759"
    "virtual patient encounter" "synonym"))
  ("Vita" ("vita" "VITA" "NCIT:C74895" "vitamin A measurement" "synonym"))
  ("Wyatt"
   ("wyatt" "wyatt" "HGNC:17192 G" "TIR domain containing adaptor protein"
    "Synonym"))
  ("Xi" ("xi" "XI" "UP:P29442" "Xylose isomerase" "RecName: Short"))
  ("Xu"
   ("xu" "XU" "NCIT:C123762" "johnston atoll" "synonym" "NCIT:C123762"
    "johnston atoll" "synonym"))
  ("Yaba"
   ("yaba" "YabA" "XFAM:PF06156 Family" "YabA" "ID" "," "yaba" "EFO:0007225"
    "cowpox" "EXACT synonym"))
  ("Yamada" ("yamada" "Yamada" "CVCL:FA16" "Yamada" "name"))
  ("Yao"
   ("yao" "YAO" "NCIT:C154201" "yao language" "synonym" "NCIT:C158170"
    "yao chinese" "synonym" "," "yao" "NCIT:C154201" "yao language" "synonym"))
  ("Ye"
   ("ye" "YE" "CHEBI:74883" "Tyr-Glu" "RELATED synonym" "NCIT:C17264" "yemen"
    "synonym"))
  ("Yi"
   ("yi" "YI" "CVCL:7015" "ACC-LC-33" "RELATED synonym" "CVCL:E892" "Y.I."
    "RELATED synonym" "CHEBI:74993" "Tyr-Ile" "RELATED synonym" "NCIT:C17265"
    "serbia and montenegro" "synonym" "NCIT:C158164" "Yi chinese" "synonym"
    "NCIT:C158164" "Yi chinese" "synonym" "NCIT:C158164" "Yi chinese"
    "synonym"))
  ("ZS" ("zs" "ZS" "Orphanet:912" "Zellweger syndrome" "EXACT synonym"))
  ("Zheng" ("zheng" "zheng" "NCIT:C94403" "zheng" "name"))
  ("bu"
   ("bu" "BU" "NCIT:C117966" "bethesda unit" "synonym" "NCIT:C117966"
    "bethesda unit" "synonym" "," "Bu" "CVCL:2527" "IMR-31" "RELATED synonym"
    "CHEBI:41264" "butyl group" "RELATED synonym"))
  ("cai"
   ("cai" "CA-I" "UP:P00915 H" "Carbonic anhydrase 1" "AltName: Short"
    "UP:P13634 M" "Carbonic anhydrase 1" "AltName: Short" "," "CAI"
    "NCIT:C1141" "carboxyamidotriazole" "synonym"))
  ("cdc"
   ("cdc" "CDC" "EFO:0006820" "complicated disease course" "EXACT synonym"
    "NCIT:C16408" "centers for disease control and prevention" "synonym" ","
    "cDC" "CL:0000990" "conventional dendritic cell" "EXACT synonym"
    "NCIT:C123782" "conventional dendritic cell" "synonym"))
  ("chi"
   ("chi" "CHI" "CHEBI:136604" "cyclohexyl isocyanate" "RELATED synonym"
    "Orphanet:657" "Congenital isolated hyperinsulinism" "EXACT synonym"
    "NCIT:C14619" "CHI mouse" "synonym" "NCIT:C156647"
    "consolidated health informatics" "synonym" "," "chi" "UO:0000076"
    "mole fraction" "EXACT synonym"))
  ("cn"
   ("cn" "-CN" "CHEBI:48819" "cyano group" "RELATED synonym" "," "CN"
    "NCIT:C3820" "cyclic neutropenia" "synonym" "NCIT:C14945" "CN mouse"
    "synonym" "NCIT:C16428" "china" "synonym" "NCIT:C45773" "CN term type"
    "synonym" "," "CN-" "CHEBI:17514" "cyanide" "RELATED synonym" "CHEBI:36826"
    "isocyano group" "RELATED synonym"))
  ("dis"
   ("dis" "DIS" "Orphanet:94064" "Deafness-infertility syndrome"
    "EXACT synonym" "NCIT:C25484" "discontinue" "synonym"))
  ("dy"
   ("dy" "DY" "CHEBI:73455" "Asp-Tyr" "RELATED synonym" "NCIT:C82437"
    "study day" "synonym" "," "Dy" "UP:Q53UH4"
    "Anthocyanidin 3-O-glucoside 2''-O-glucosyltransferase" "AltName: Short"
    "UP:Q53UH5" "Anthocyanidin 3-O-glucoside 2''-O-glucosyltransferase"
    "AltName: Short"))
  ("fr"
   ("fr" "FR" "CVCL:4202" "FR" "name" "CHEBI:73632" "Phe-Arg" "RELATED synonym"
    "HGNC:11027 G" "solute carrier family 4 member 1 (Diego blood group)"
    "Synonym" "UP:P52556" "Flavin reductase (NADPH)" "RecName: Short"
    "UP:P30043 H" "Flavin reductase (NADPH)" "RecName: Short" "UP:P55736"
    "Flavin reductase (NADPH)" "RecName: Short" "UP:Q923D2 M"
    "Flavin reductase (NADPH)" "RecName: Short" "NCIT:C16592" "france"
    "synonym" "NCIT:C105065" "SLC4A1" "synonym" "," "Fr" "NCIT:C101680"
    "french catheter gauge" "synonym"))
  ("ho"
   ("ho" "HO" "CVCL:M698" "Ho" "name" "UP:O73688" "Heme oxygenase"
    "RecName: Short" "NCIT:C50881" "HMOX1" "synonym" "NCIT:C117757"
    "healthcare encounters domain" "synonym" "," "HO-" "CHEBI:16234"
    "hydroxide" "RELATED synonym"))
  ("ii"
   ("ii" "II" "CHEBI:74067" "Ile-Ile" "RELATED synonym" "HGNC:4204 G"
    "glucosaminyl (N-acetyl) transferase 2 (I blood group)" "Previous Symbol"
    "NCIT:C49463" "second" "synonym" "NCIT:C51482" "VIPR1" "synonym"
    "NCIT:C52611" "TAF8" "synonym" "NCIT:C94813" "clark level II" "synonym"
    "NCIT:C95664" "instance identifier data type" "synonym" "NCIT:C95664"
    "instance identifier data type" "synonym" "NCIT:C97419" "CD74" "synonym"
    "NCIT:C133418" "pathologic stage II esophageal adenocarcinoma AJCC v8"
    "synonym" "NCIT:C134519" "stage II hepatocellular carcinoma AJCC v8"
    "synonym" "NCIT:C134746" "stage II hilar cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134760" "stage II intrahepatic cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134814" "stage II distal bile duct cancer AJCC v8"
    "synonym" "NCIT:C139743" "stage II cervical cancer AJCC v8" "synonym"
    "NCIT:C140420" "stage II bladder cancer AJCC v8" "synonym" "NCIT:C140980"
    "stage II thyroid gland papillary carcinoma AJCC v8" "synonym" "," "Ii"
    "UP:P04233 H" "HLA class II histocompatibility antigen gamma chain"
    "AltName: Short" "UP:P04441 M"
    "H-2 class II histocompatibility antigen gamma chain" "AltName: Short"
    "UP:P10247" "H-2 class II histocompatibility antigen gamma chain"
    "AltName: Short" "NCIT:C97419" "CD74" "synonym" "NCIT:C97420"
    "HLA class II histocompatibility antigen gamma chain" "synonym"))
  ("iii"
   ("iii" "III" "NCIT:C49464" "third" "synonym" "NCIT:C94814" "clark level III"
    "synonym" "NCIT:C133421"
    "pathologic stage III esophageal adenocarcinoma AJCC v8" "synonym"
    "NCIT:C134747" "stage III hilar cholangiocarcinoma AJCC v8" "synonym"
    "NCIT:C134761" "stage III intrahepatic cholangiocarcinoma AJCC v8"
    "synonym" "NCIT:C134817" "stage III distal bile duct cancer AJCC v8"
    "synonym" "NCIT:C139749" "stage III cervical cancer AJCC v8" "synonym"
    "NCIT:C140169" "stage III prostate cancer AJCC v8" "synonym" "NCIT:C140983"
    "stage III thyroid gland papillary carcinoma AJCC v8" "synonym"
    "NCIT:C153956" "nuosu language" "synonym"))
  ("ip"
   ("ip" "IP" "CVCL:F561" "IP" "name" "CHEBI:74076" "Ile-Pro" "RELATED synonym"
    "HGNC:871 G" "ATP synthase inhibitory factor subunit 1" "Synonym"
    "HGNC:9602 G" "prostaglandin I2 receptor" "Synonym" "UP:Q3T189"
    "Succinate dehydrogenase [ubiquinone] iron-sulfur subunit, mitochondrial"
    "AltName: Short" "NCIT:C13352" "intraperitoneal" "synonym" "NCIT:C16724"
    "immunoprecipitation" "synonym" "NCIT:C38258"
    "intraperitoneal route of administration" "synonym" "NCIT:C44393"
    "indeno[1,2,3-cd]pyrene" "synonym" "NCIT:C75608" "IKBKG" "synonym"
    "NCIT:C97774" "SDHB" "synonym" "NCIT:C122723" "5-iodo-2-pyrimidinone"
    "synonym" "," "Ip" "UP:P21912 H"
    "Succinate dehydrogenase [ubiquinone] iron-sulfur subunit, mitochondrial"
    "AltName: Short" "UP:Q9CQA3 M"
    "Succinate dehydrogenase [ubiquinone] iron-sulfur subunit, mitochondrial"
    "AltName: Short" "UP:Q8LBZ7 C"
    "Succinate dehydrogenase [ubiquinone] iron-sulfur subunit 1, mitochondrial"
    "AltName: Short" "UP:Q9S827 R"
    "Succinate dehydrogenase [ubiquinone] iron-sulfur subunit 1, mitochondrial"
    "AltName: Short" "UP:etc" "" "fake" "NCIT:C97775"
    "succinate dehydrogenase [Ubiquinone] iron-sulfur subunit, mitochondrial"
    "synonym" "," "iP" "CHEBI:17660" "N(6)-dimethylallyladenine"
    "RELATED synonym"))
  ("ji"
   ("ji" "JI" "CVCL:W934" "JI" "name" "UP:P10039" "Tenascin" "AltName: Full"
    "UP:P24821 H" "Tenascin" "AltName: Full" "UP:Q29116" "Tenascin"
    "AltName: Full" "NCIT:C17338" "tenascin" "synonym" "NCIT:C52122" "TNC"
    "synonym"))
  ("jy" ("jy" "JY" "CVCL:0108" "JY" "name"))
  ("le"
   ("le" "LE" "CHEBI:74531" "Leu-Glu" "RELATED synonym" "HGNC:4014 G"
    "fucosyltransferase 3 (Lewis blood group)" "Previous Symbol" "HGNC:15844 G"
    "HPS4 biogenesis of lysosomal organelles complex 3 subunit 2" "Synonym"
    "NCIT:C61586" "less than or equal To" "synonym" "NCIT:C76188"
    "LE, rat strain" "synonym"))
  ("max"
   ("max" "MAX" "HGNC:6913 G" "MYC associated factor X" "Approved Symbol"
    "FA:02182" "MAX family" "ID" "NCIT:C18604" "oncogene MAX" "synonym"
    "NCIT:C19951" "protein max" "synonym" "NCIT:C25564" "maximum" "synonym"
    "NCIT:C53036" "MAX" "name"))
  ("mu"
   ("mu" "MU" "HGNC:18561 G"
    "biogenesis of lysosomal organelles complex 1 subunit 5" "Synonym"
    "HGNC:4632 G" "glutathione S-transferase mu 1" "Synonym" "HGNC:9531 G"
    "proteasome 20S subunit alpha 2" "Synonym" "NCIT:C16827" "mauritius"
    "synonym" "NCIT:C112818" "monitor unit" "synonym" "," "Mu" "FA:01672"
    "Mu family" "ID" "," "mU" "NCIT:C67315" "milliunit" "synonym" "NCIT:C67315"
    "milliunit" "synonym"))
  ("oO" ("oo" "-OO-" "CHEBI:29369" "peroxy group" "RELATED synonym"))
  ("poss"
   ("poss" "POSS" "CHEBI:59828" "polyhedral oligomeric silsesquioxane"
    "RELATED synonym"))
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
  ("sp"
   ("sp" "SP" "CVCL:L986" "SpR" "RELATED synonym" "CHEBI:74820" "Ser-Pro"
    "RELATED synonym" "UP:Q03403 H" "Trefoil factor 2" "AltName: Short"
    "UP:Q03404 M" "Trefoil factor 2" "AltName: Short" "NCIT:C90452"
    "safety pharmacology" "synonym" "NCIT:C115189" "TFF2" "synonym"
    "NCIT:C115190" "trefoil factor 2" "synonym"))
  ("ss"
   ("ss" "-SS-" "CHEBI:29826" "disulfanediyl group" "RELATED synonym" "," "SS"
    "CVCL:7027" "ACC-LC-76" "RELATED synonym" "CHEBI:73653" "Ser-Ser"
    "RELATED synonym" "EFO:0001376" "synovial sarcoma" "EXACT synonym"
    "HGNC:4703 G" "glycophorin B (MNS blood group)" "Synonym" "HGNC:10853 G"
    "short stature homeobox" "Synonym" "UP:P37268 H" "Squalene synthase"
    "RecName: Short" "UP:P53798 M" "Squalene synthase" "RecName: Short"
    "NCIT:C3400" "synovial sarcoma" "synonym" "NCIT:C3400" "synovial sarcoma"
    "synonym" "NCIT:C14799" "SS mouse" "synonym" "NCIT:C76186" "SS, rat strain"
    "synonym" "NCIT:C97351" "south sudan" "synonym" "NCIT:C117655"
    "subject status domain" "synonym" "NCIT:C150758" "short stay" "synonym"))
  ("su"
   ("su" "SU" "CVCL:W201" "SU" "name" "UP:P12490 H" "Truncated surface protein"
    "RecName: Short" "UP:P12491 H" "Truncated surface protein" "RecName: Short"
    "NCIT:C49615" "substance use domain" "synonym" "NCIT:C158183" "sui chinese"
    "synonym" "NCIT:C158183" "sui chinese" "synonym"))
  ("tAI"
   ("tai" "TAI" "CHEBI:142738" "tau aggregation inhibitor" "RELATED synonym"))
  ("tj"
   ("tj" "TJ" "UP:SL-0265 D" "Tight junction" "SY" "NCIT:C17183" "tajikistan"
    "synonym" "NCIT:C158165" "tujia chinese" "synonym" "NCIT:C158165"
    "tujia chinese" "synonym"))
  ("washington" ("washington" "washington" "NCIT:C43507" "washington" "name"))
  ("xi" ("xi" "XI" "UP:P29442" "Xylose isomerase" "RecName: Short")))
)

