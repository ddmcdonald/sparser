(in-package :sparser)

(defparameter *no-texttagger-has-drum* 
'(("100%" ("100%" "100%" "NCIT:C158695" "one hundred percent" "synonym"))
  ("17A" ("17a" "17a" "CVCL:8991" "17a" "name"))
  ("A10"
   ("a10" "A-10" "MESH:C052091" "antineoplaston A10" "SY" "," "A10" "CVCL:0130"
    "A-10" "name" "UP:Q61753 M" "D-3-phosphoglycerate dehydrogenase"
    "AltName: Full" "MESH:C052091" "antineoplaston A10" "SY" "NCIT:C1004"
    "antineoplaston A10" "synonym"))
  ("A12"
   ("a12" "A1-2" "CVCL:0I95" "T47D/A1-2" "RELATED synonym" "," "A12"
    "CVCL:DH60" "A12" "name" "UP:P32529"
    "DNA-directed RNA polymerase I subunit RPA12" "AltName: Full"))
  ("A13" ("a13" "A13" "CVCL:DH61" "A13" "name"))
  ("A23" ("a23" "a23" "CVCL:K265" "Don/a23" "RELATED synonym"))
  ("A230"
   ("a230" "A-230" "CHEBI:140423" "A-230 nerve agent" "RELATED synonym"))
  ("A24"
   ("a24" "A2-4" "CVCL:1R83" "GM10063" "RELATED synonym" "," "A24" "CVCL:V064"
    "A24" "name"))
  ("A253" ("a253" "A253" "CVCL:1060" "A-253" "name"))
  ("A260" ("a260" "A260" "NCIT:C48169" "absorbance at 260nm" "synonym"))
  ("A280" ("a280" "A280" "NCIT:C48170" "absorbance at 280nm" "synonym"))
  ("A29"
   ("a29" "A-29" "MESH:C029665" "N,N-dimethyl-3,3-diphenyl-1-methylallylamine"
    "SY"))
  ("A2G" ("a2g" "A2G" "NCIT:C14647" "A2G mouse" "synonym"))
  ("A304" ("a304" "A304" "CVCL:9V40" "A304" "name"))
  ("A31" ("a31" "A3-1" "CVCL:GS33" "A3-1" "name"))
  ("A32"
   ("a32" "A32" "CVCL:Z290" "USP-1" "RELATED synonym" "NCIT:C17313"
    "cell surface glycoprotein MUC18" "synonym"))
  ("A33"
   ("a33" "A33" "HGNC:4445 G" "glycoprotein A33" "Synonym" "NCIT:C2410"
    "monoclonal antibody A33" "synonym" "NCIT:C2410" "monoclonal antibody A33"
    "synonym" "NCIT:C51027" "GPA33" "synonym"))
  ("A43"
   ("a43" "A43" "UP:P46669" "DNA-directed RNA polymerase I subunit RPA43"
    "RecName: Short"))
  ("A45"
   ("a45" "A45" "UP:P80315 M" "T-complex protein 1 subunit delta"
    "AltName: Full"))
  ("A51" ("a51" "A51" "CVCL:5845" "NIH 3T3-ras" "RELATED synonym"))
  ("A52"
   ("a52" "A52" "UP:P47963 M" "60S ribosomal protein L13" "AltName: Full"))
  ("A590" ("a590" "A590" "CVCL:6A73" "A590" "name"))
  ("A72" ("a72" "A72" "CVCL:3453" "A-72" "name"))
  ("A735" ("a735" "A735" "CVCL:X371" "A735" "name"))
  ("A8103" ("a8103" "A-8103" "CHEBI:8242" "pipobroman" "RELATED synonym"))
  ("AC15" ("ac15" "AC1-5" "CVCL:9561" "AC1-5" "name"))
  ("AR001" ("ar001" "AR001" "NCIT:C107799" "arkansas county, AR" "synonym"))
  ("Arg1"
   ("arg1" "ARG-1" "UP:Q9NH76" "Hemerythrin-like protein" "AltName: Full" ","
    "ARG1" "HGNC:663 G" "arginase 1" "Approved Symbol" "HGNC:19168 G"
    "tubulointerstitial nephritis antigen like 1" "Synonym" "NCIT:C103928"
    "ARG1" "name" "NCIT:C158392" "TINAGL1" "synonym"))
  ("B104"
   ("b104" "B-104" "CVCL:0154" "B104 [Rat neuroblastoma]" "RELATED synonym"))
  ("B11"
   ("b11" "B-11" "CVCL:U041" "VII-II-5G3-F3" "RELATED synonym" "," "B11"
    "CVCL:B038" "B11" "name" "CVCL:1977" "CHO-DXB11" "RELATED synonym"
    "CVCL:4347" "II b" "RELATED synonym"))
  ("B12D" ("b12d" "B12D" "XFAM:PF06522 Family" "B12D" "ID"))
  ("B21"
   ("b21" "B2-1" "CVCL:4503" "B2-1" "name" "HGNC:9501 G" "cytohesin 1"
    "Synonym"))
  ("B220"
   ("b220" "B-220" "MESH:C060183" "B 220" "SY" "," "B220" "NCIT:C49531" "PTPRC"
    "synonym"))
  ("B32"
   ("b32" "B32" "UP:P20433" "DNA-directed RNA polymerase II subunit RPB4"
    "AltName: Full"))
  ("B37"
   ("b37" "B37" "HGNC:3033 G" "atrophin 1" "Synonym" "HGNC:1305 G"
    "chromosome 21 open reading frame 62" "Synonym" "UP:Q9NYP8 H"
    "Uncharacterized protein C21orf62" "AltName: Full"))
  ("B50"
   ("b50" "B-50" "CVCL:4112" "B50" "name" "CVCL:W341" "HeLa B-50"
    "RELATED synonym" "HGNC:4140 G" "growth associated protein 43" "Synonym"))
  ("B69" ("b69" "B69" "CVCL:4504" "B69" "name"))
  ("B80" ("b80" "B80" "CVCL:A283" "Bre-80" "RELATED synonym"))
  ("C101" ("c101" "C101" "CVCL:DF67" "NGC-0301" "RELATED synonym"))
  ("C127" ("c127" "C-127" "CVCL:6550" "C127" "name"))
  ("C13"
   ("c13" "C-13" "CVCL:UF35" "IB-RS-2 clone 13" "RELATED synonym" "," "C13"
    "CVCL:0114" "2008/C13*5.25" "RELATED synonym" "CVCL:1915" "BHK-21 clone 13"
    "RELATED synonym"))
  ("C15"
   ("c15" "C15" "CVCL:H624" "NSCLC-N6 clone C15" "RELATED synonym"
    "CHEBI:42504" "pentadecanoic acid" "RELATED synonym" "HGNC:19254 G"
    "placenta associated 8" "Synonym" "NCIT:C90306" "PLAC8" "synonym" "," "c15"
    "UP:Q63525" "Nuclear migration protein nudC" "AltName: Full"))
  ("C17"
   ("c17" "C17" "CVCL:VT47" "C17" "name" "CVCL:4511" "C17.2" "RELATED synonym"
    "CVCL:WN85" "CF iPSC clone 17" "RELATED synonym" "HGNC:24435 G"
    "cytokine like 1" "Synonym"))
  ("C18"
   ("c18" "C18" "CVCL:J335" "CCCL-4" "RELATED synonym" "CVCL:2178" "RLC-18"
    "RELATED synonym" "NCIT:C114661" "BBS9" "synonym" "NCIT:C161776"
    "octadecyl carbon chain-bonded silica" "synonym"))
  ("C19" ("c19" "C19" "CVCL:VL17" "C19 MEL" "RELATED synonym"))
  ("C21"
   ("c21" "C21" "CVCL:IN11" "iPSc-GD-C21" "RELATED synonym" "HGNC:29529 G"
    "TBL1X receptor 1" "Synonym" "NCIT:C80117" "TBL1XR1" "synonym"))
  ("C22"
   ("c22" "C2-2" "CVCL:JJ76" "TAB1/C2-2" "RELATED synonym" "," "C22"
    "CVCL:F277" "C22 (Clara)" "RELATED synonym" "CHEBI:87145"
    "(Z)-N-hydroxy-11-methyldodec-2-enamide" "RELATED synonym" "UP:Q8VI67 M"
    "Transcription factor Sp7" "AltName: Full"))
  ("C25" ("c25" "C25" "CVCL:VF08" "TUMi001-A" "RELATED synonym"))
  ("C27" ("c27" "C27" "CVCL:3862" "RLC-27" "RELATED synonym"))
  ("C29" ("c29" "C29" "CVCL:J336" "CCCL-6" "RELATED synonym"))
  ("C2S" ("c2s" "C2-S" "CVCL:1R44" "C2 [Dog mastocytoma]" "RELATED synonym"))
  ("C31"
   ("c31" "C31" "UP:P17890" "DNA-directed RNA polymerase III subunit RPC7"
    "AltName: Short"))
  ("C32"
   ("c32" "C-32" "CVCL:1097" "C32 [Human melanoma]" "RELATED synonym" "," "C32"
    "EFO:0006364" "C32" "name" "HGNC:13253 G" "chemokine like factor" "Synonym"
    "UP:Q9UBR5 H" "Chemokine-like factor" "AltName: Full" "NCIT:C79958"
    "C32 zebrafish" "synonym"))
  ("C33"
   ("c33" "C-33" "CVCL:M129" "LNCaP C-33" "RELATED synonym" "," "C33"
    "CVCL:1094" "C-33 A" "RELATED synonym" "NCIT:C51181" "CD82" "synonym"))
  ("C34"
   ("c34" "C34" "CVCL:Z203" "BmVIII-SCC-OPr-C34" "RELATED synonym" "UP:P32910"
    "DNA-directed RNA polymerase III subunit RPC6" "AltName: Full"))
  ("C39" ("c39" "C39" "CVCL:WI16" "JMAR C39" "RELATED synonym"))
  ("C3H"
   ("c3h" "C3H" "EFO:0001329" "C3H/HeJ" "EXACT synonym" "NCIT:C14621" "C3H"
    "name" "NCIT:C37366" "C3H mouse" "synonym"))
  ("C412" ("c412" "C4-12" "CVCL:GX99" "MCF-7/C4-12" "RELATED synonym"))
  ("C430" ("c430" "C430" "CVCL:4J80" "C-430" "name"))
  ("C44"
   ("c44" "C44" "CVCL:Z204" "BmVIII-SCC-OPr-C44" "RELATED synonym" "CVCL:K132"
    "C44" "name" "UP:Q9EPH1" "Alpha-1B-glycoprotein" "AltName: Full"))
  ("C46" ("c46" "C46" "CVCL:VU15" "C-1300 clone C46" "RELATED synonym"))
  ("C57"
   ("c57" "C57" "EFO:0004472" "C57BL/6" "EXACT synonym" "NCIT:C14522"
    "C57 mouse" "synonym"))
  ("C57BL6" ("c57bl6" "C57BL6" "EFO:0004472" "C57BL/6" "EXACT synonym"))
  ("C57L" ("c57l" "C57L" "NCIT:C37391" "C57L mouse" "synonym"))
  ("C58" ("c58" "C58" "NCIT:C37392" "C58 mouse" "synonym"))
  ("C5b9"
   ("c5b9" "C5B9" "NCIT:C158235" "complement C5b-9 measurement" "synonym"))
  ("C63"
   ("c63" "C6-3" "CVCL:X905" "C6-3" "name" "," "C63" "CVCL:DF68" "NGC-0363"
    "RELATED synonym"))
  ("C70" ("c70" "C70" "CVCL:5247" "C70" "name"))
  ("C73" ("c73" "C-73" "MESH:C000961" "C 73" "SY"))
  ("C84" ("c84" "C84" "CVCL:5250" "C84" "name"))
  ("C86" ("c86" "C86" "CVCL:J327" "CCCL-2" "RELATED synonym"))
  ("C87"
   ("c87" "C87" "CVCL:IX10" "HepG2 CYP3A4G/7R clone 87" "RELATED synonym"))
  ("C89" ("c89" "C-89" "CVCL:T718" "OpC-89" "RELATED synonym"))
  ("CB6F1" ("cb6f1" "CB6F1" "EFO:0001339" "CB6F1" "name"))
  ("CCID50"
   ("ccid50" "CCID50" "NCIT:C70534" "50 percent cell culture infective dose"
    "synonym" "NCIT:C70534" "50 percent cell culture infective dose"
    "synonym"))
  ("CD19+" ("cd19+" "CD19+" "NCIT:C129255" "CD19 positive" "synonym"))
  ("Ca++"
   ("ca++" "Ca++" "NCIT:C61660" "calcium cation" "synonym" "NCIT:C68242" "Ca2+"
    "synonym"))
  ("Cys1" ("cys1" "CYS1" "HGNC:18525 G" "cystin 1" "Approved Symbol"))
  ("D10"
   ("d10" "D-10" "HGNC:15781 G"
    "CHRNA7 (exons 5-10) and FAM7A (exons A-E) fusion" "Synonym" "UP:Q494W8 H"
    "CHRNA7-FAM7A fusion protein" "AltName: Full" "," "D10" "CVCL:H945" "D10"
    "name" "CVCL:0241" "D10G41" "RELATED synonym"))
  ("D13"
   ("d13" "D-13" "CVCL:U036" "LI-3H2-G6" "RELATED synonym" "," "D13"
    "CVCL:Y039" "D13" "name" "UP:P11109" "Probable exonuclease subunit 2"
    "AltName: Full"))
  ("D14"
   ("d14" "D-14" "CVCL:U052" "LXXIX-1G12-G7" "RELATED synonym" "," "D14"
    "CVCL:J750" "D 14" "RELATED synonym" "CVCL:H944" "D14" "name"))
  ("D161" ("d161" "D161" "CVCL:VN35" "ADBSi001-A" "RELATED synonym"))
  ("D20" ("d20" "D20" "CVCL:W869" "D20" "name"))
  ("D23"
   ("d23" "D23" "CVCL:W870" "D23" "name" "EFO:0007113" "ML-DmD23"
    "EXACT synonym"))
  ("D28"
   ("d28" "D28" "CVCL:DH69" "D28" "name" "CVCL:Y595" "HD129"
    "RELATED synonym"))
  ("D2O" ("d2o" "D2O" "CHEBI:41981" "dideuterium oxide" "RELATED synonym"))
  ("D33" ("d33" "D-33" "CVCL:3419" "SHM-D33" "RELATED synonym"))
  ("D64" ("d64" "D64" "CVCL:DH64" "D64" "name"))
  ("D93"
   ("d93" "D93" "NCIT:C71749"
    "anti-denatured collagen monoclonal antibody TRC093" "synonym"))
  ("DBA2" ("dba2" "DBA2" "EFO:0005184" "DBA/2J" "EXACT synonym"))
  ("E11" ("e11" "E11" "CVCL:5679" "HCT-8/E11" "RELATED synonym"))
  ("E15"
   ("e15" "E1-5" "HGNC:10104 R" "RNA, U105C small nucleolar" "Synonym" ","
    "E15" "CVCL:RU18" "E15" "name" "UP:P24795" "Uncharacterized protein gp14"
    "AltName: Full" "UP:Q38492" "Uncharacterized protein gp14"
    "AltName: Full"))
  ("E16"
   ("e16" "E1-6" "HGNC:10104 R" "RNA, U105C small nucleolar" "Synonym" ","
    "E16" "HGNC:11063 G" "solute carrier family 7 member 5" "Synonym"
    "UP:Q01650 H" "Large neutral amino acids transporter small subunit 1"
    "AltName: Short" "NCIT:C106589" "SLC7A5" "synonym"))
  ("E260" ("e260" "E-260" "CHEBI:15366" "acetic acid" "RELATED synonym"))
  ("E265"
   ("e265" "E-265" "CHEBI:9648" "tramadol" "RELATED synonym" "," "E265"
    "CVCL:EQ01" "E265" "name"))
  ("E31"
   ("e31" "E3-1" "UP:Q9M5K3 C" "Dihydrolipoyl dehydrogenase 1, mitochondrial"
    "AltName: Short" "UP:A8MS68 C"
    "Dihydrolipoyl dehydrogenase 1, chloroplastic" "AltName: Short"))
  ("E39" ("e39" "E39" "MESH:C026480" "inproquone" "SY"))
  ("E47" ("e47" "E47" "HGNC:11633 G" "transcription factor 3" "Synonym"))
  ("E614"
   ("e614" "E614" "CHEBI:32264" "Tripamide" "RELATED synonym" "MESH:C031282"
    "tripamide" "SY"))
  ("EID50"
   ("eid50" "EID50" "NCIT:C70532" "50 percent embryo infective dose" "synonym"
    "NCIT:C70532" "50 percent embryo infective dose" "synonym"))
  ("ER+"
   ("er+" "ER+" "NCIT:C15492" "estrogen receptor positive" "synonym"
    "NCIT:C15492" "estrogen receptor positive" "synonym"))
  ("F119" ("f119" "F119" "CVCL:J278" "F119" "name"))
  ("F127" ("f127" "F127" "MESH:C078661" "UCON 50-HB-5100" "SY"))
  ("F128" ("f128" "F12-8" "CVCL:C633" "F12-8" "name"))
  ("F13" ("f13" "F13" "CVCL:RZ87" "F13" "name" "EFO:0002711" "F13" "name"))
  ("F344"
   ("f344" "F344" "EFO:0000176" "Fischer 344" "EXACT synonym" "NCIT:C14401"
    "F344, rat strain" "synonym" "NCIT:C14401" "F344, rat strain" "synonym"))
  ("FEV1"
   ("fev1" "FEV1" "EFO:0004314" "forced expiratory volume" "EXACT synonym"
    "NCIT:C38084" "forced expiratory volume in 1 second" "synonym"
    "NCIT:C38084" "forced expiratory volume in 1 second" "synonym"))
  ("FEV6"
   ("fev6" "FEV6" "NCIT:C47843" "forced expiratory volume in 6 seconds"
    "synonym" "NCIT:C47843" "forced expiratory volume in 6 seconds" "synonym"))
  ("FIO2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("FiO2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("Fio2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("G101" ("g101" "G10-1" "CVCL:XC62" "G10-1" "name"))
  ("G11"
   ("g11" "G-11" "CVCL:U962" "G-11" "name" "," "G1-1" "CVCL:WL15" "G-OF1iPS1"
    "RELATED synonym" "," "G11" "CVCL:1414" "MJ" "RELATED synonym"
    "HGNC:11398 G" "serine/threonine kinase 19" "Synonym" "NCIT:C102910"
    "STK19" "synonym"))
  ("G13"
   ("g13" "G13" "HGNC:2349 G" "activating transcription factor 6 beta"
    "Synonym" "HGNC:4381 G" "G protein subunit alpha 13" "Synonym"
    "NCIT:C115329" "GNA13" "synonym"))
  ("G195" ("g195" "G-195" "CVCL:N755" "NCE-G 195" "RELATED synonym"))
  ("G1P"
   ("g1p" "G1P" "UP:P03657" "Gene 1 protein" "AltName: Full" "UP:etc" ""
    "fake"))
  ("G20"
   ("g20" "G20" "CHEBI:76780" "G20" "name" "HGNC:24837 G"
    "chromosome 3 open reading frame 18" "Synonym"))
  ("G22"
   ("g22" "G-22" "CVCL:N723" "NCE-G 22" "RELATED synonym" "," "G22"
    "EFO:0006406" "G22" "name"))
  ("G25" ("g25" "G2-5" "CVCL:WL17" "G-OF2iPS5" "RELATED synonym"))
  ("G35" ("g35" "G-3-5" "CVCL:C554" "G-3-5" "name"))
  ("G38" ("g38" "G-38" "CVCL:N726" "NCE-G 38" "RELATED synonym"))
  ("G6P"
   ("g6p" "G6P" "UP:P69531" "Head virion protein G6P" "AltName: Full" "UP:etc"
    "" "fake" "," "G6p" "UP:Q96329 C" "Acyl-coenzyme A oxidase 4, peroxisomal"
    "AltName: Full"))
  ("G72"
   ("g72" "G72" "HGNC:21191 G" "D-amino acid oxidase activator" "Synonym"))
  ("G8P"
   ("g8p" "G8P" "UP:P69540" "Capsid protein G8P" "AltName: Short" "UP:etc" ""
    "fake"))
  ("G9P"
   ("g9p" "G9P" "UP:Q99706 H" "Killer cell immunoglobulin-like receptor 2DL4"
    "AltName: Full"))
  ("H13"
   ("h13" "H1-3" "HGNC:4717 G" "H1.3 linker histone, cluster member"
    "Approved Symbol" "NCIT:C162862" "H1-3" "name" "NCIT:C162863"
    "histone H1.3" "synonym" "," "H13" "CVCL:9774" "WA13" "RELATED synonym"
    "HGNC:16435 G" "histocompatibility minor 13" "Synonym" "NCIT:C20259" "GE13"
    "synonym" "NCIT:C20311" "WA13" "synonym"))
  ("H14"
   ("h14" "H1-4" "HGNC:4718 G" "H1.4 linker histone, cluster member"
    "Approved Symbol" "NCIT:C115354" "H1-4" "name" "NCIT:C115355"
    "histone H1.4" "synonym" "," "H14" "CVCL:9775" "WA14" "RELATED synonym"
    "NCIT:C20260" "GE14" "synonym" "NCIT:C20312" "WA14" "synonym"))
  ("H140"
   ("h140" "H140" "CVCL:S697" "H140" "name" "CVCL:JZ80" "NCI-H140"
    "RELATED synonym"))
  ("H15"
   ("h15" "H-15" "CVCL:1E31" "H-15" "name" "," "H1-5" "HGNC:4719 G"
    "H1.5 linker histone, cluster member" "Approved Symbol" "NCIT:C162850"
    "H1-5" "name" "NCIT:C162851" "histone H1.5" "synonym" "," "H15" "UP:P15856"
    "Homeobox protein abdominal-A homolog" "AltName: Full"))
  ("H16"
   ("h16" "H1-6" "HGNC:4720 G" "H1.6 linker histone, cluster member"
    "Approved Symbol" "NCIT:C162865" "H1-6" "name" "NCIT:C162866" "histone H1t"
    "synonym" "," "H16" "MESH:C022870" "asoxime chloride" "SY"))
  ("H17"
   ("h17" "H1-7" "HGNC:24893 G" "H1.7 linker histone" "Approved Symbol"
    "NCIT:C162800" "H1-7" "name" "NCIT:C162801" "testis-specific histone H1"
    "synonym" "," "H17" "HGNC:26927 G"
    "FAD dependent oxidoreductase domain containing 1" "Synonym"))
  ("H18"
   ("h18" "H1-8" "HGNC:18463 G" "H1.8 linker histone" "Approved Symbol"
    "NCIT:C162810" "H1-8" "name" "NCIT:C162811" "histone H1oo" "synonym"))
  ("H19"
   ("h19" "H1-9" "NCIT:C162868" "H1-9" "name" "NCIT:C162869"
    "spermatid-specific linker histone H1-like protein" "synonym" "," "H19"
    "HGNC:4713 R" "H19 imprinted maternally expressed transcript"
    "Approved Symbol" "NCIT:C29669" "H19 imprinted maternal untranslated mRNA"
    "synonym" "NCIT:C54405" "H19" "name"))
  ("H2009" ("h2009" "H2009" "CVCL:1514" "NCI-H2009" "RELATED synonym"))
  ("H21"
   ("h21" "H21" "UP:P24588 H" "A-kinase anchor protein 5" "AltName: Full"))
  ("H22"
   ("h22" "H-22" "CVCL:1E32" "H-22" "name" "," "H22" "CVCL:H613" "H22" "name"))
  ("H28" ("h28" "H28" "CVCL:1555" "NCI-H28" "RELATED synonym"))
  ("H2O" ("h2o" "H2O" "CHEBI:15377" "water" "RELATED synonym"))
  ("H2S" ("h2s" "H2S" "CHEBI:16136" "hydrogen sulfide" "RELATED synonym"))
  ("H34"
   ("h34" "H-34" "UP:C0QYX7" "Uncharacterized protein BHWA1_00569"
    "AltName: Full" "," "H3-4" "CVCL:1S35" "GM11749" "RELATED synonym"
    "HGNC:4778 G" "H3.4 histone" "Approved Symbol" "NCIT:C154670" "H3-4" "name"
    "NCIT:C154671" "histone H3.1t" "synonym"))
  ("H357" ("h357" "H357" "CVCL:2462" "H357" "name"))
  ("H369" ("h369" "H369" "CVCL:A558" "NCI-H369" "RELATED synonym"))
  ("H3R"
   ("h3r" "H3R" "UP:Q9JI35" "Histamine H3 receptor" "RecName: Short"
    "UP:Q9Y5N1 H" "Histamine H3 receptor" "RecName: Short" "UP:P58406 M"
    "Histamine H3 receptor" "RecName: Short" "UP:Q9QYN8"
    "Histamine H3 receptor" "RecName: Short"))
  ("H41" ("h41" "H41" "HGNC:26928 G" "CDV3 homolog" "Synonym"))
  ("H57" ("h57" "H57" "CVCL:D667" "H57" "name"))
  ("H60" ("h60" "H60" "CVCL:A592" "NCI-H60" "RELATED synonym"))
  ("H87"
   ("h87" "H-87" "MESH:C063509"
    "N-(2-(4-bromocinnamylamino)ethyl)-5-isoquinolinesulfonamide" "SY" ","
    "H87" "CVCL:1603" "NCI-N87" "RELATED synonym"))
  ("I45" ("i45" "I-45" "CVCL:M200" "I-45" "name"))
  ("ICD9"
   ("icd9" "ICD-9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym" ","
    "ICD9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym"))
  ("K107" ("k107" "K107" "CVCL:UZ33" "K107-Ep" "RELATED synonym"))
  ("K15"
   ("k15" "K15" "HGNC:6421 G" "keratin 15" "Synonym" "UP:P19012 H"
    "Keratin, type I cytoskeletal 15" "AltName: Short" "UP:Q61414 M"
    "Keratin, type I cytoskeletal 15" "AltName: Short" "UP:Q5K2P2"
    "Keratin, type I cytoskeletal 15" "AltName: Short" "UP:Q6IFV3"
    "Keratin, type I cytoskeletal 15" "AltName: Short" "UP:O77727"
    "Keratin, type I cytoskeletal 15" "AltName: Short"))
  ("K183"
   ("k183" "K-183" "MESH:C522127"
    "N-(2-aminophenyl)-4-((benzyl(2-hydroxyethyl)amino)methyl) benzamide"
    "SY"))
  ("K20"
   ("k20" "K20" "CVCL:IZ94" "BJAB-K20" "RELATED synonym" "HGNC:20412 G"
    "keratin 20" "Synonym" "UP:A6QQQ9" "Keratin, type I cytoskeletal 20"
    "AltName: Short" "UP:P35900 H" "Keratin, type I cytoskeletal 20"
    "AltName: Short" "UP:Q9D312 M" "Keratin, type I cytoskeletal 20"
    "AltName: Short" "UP:Q29218" "Keratin, type I cytoskeletal 20"
    "AltName: Short" "UP:P25030" "Keratin, type I cytoskeletal 20"
    "AltName: Short" "NCIT:C96458" "KRT20" "synonym" "NCIT:C96459"
    "keratin, type I cytoskeletal 20" "synonym"))
  ("K22" ("k22" "K22" "CVCL:6D68" "K-22" "name"))
  ("K251" ("k251" "K-251" "CVCL:5141" "K-251" "name"))
  ("K308" ("k308" "K-308" "MESH:C006081" "K 308" "SY"))
  ("K309" ("k309" "K-309" "MESH:C006082" "K 309" "SY"))
  ("K31"
   ("k31" "K-31" "MESH:C008612" "nicomol" "SY" "," "K31" "UP:Q15323 H"
    "Keratin, type I cuticular Ha1" "AltName: Short" "UP:Q61765 M"
    "Keratin, type I cuticular Ha1" "AltName: Short" "UP:A5A6M5"
    "Keratin, type I cuticular Ha1" "AltName: Short"))
  ("K32"
   ("k32" "K32" "UP:Q14532 H" "Keratin, type I cuticular Ha2" "AltName: Short"
    "UP:Q62168 M" "Keratin, type I cuticular Ha2" "AltName: Short"))
  ("K33A"
   ("k33a" "K33A" "UP:O76009 H" "Keratin, type I cuticular Ha3-I"
    "AltName: Short" "UP:Q8K0Y2 M" "Keratin, type I cuticular Ha3-I"
    "AltName: Short" "UP:A5A6P3" "Keratin, type I cuticular Ha3-I"
    "AltName: Short"))
  ("K35"
   ("k35" "K35" "HGNC:1779 G" "cyclin dependent kinase 8" "Synonym" "UP:Q0P5J7"
    "Keratin, type I cuticular Ha5" "AltName: Short" "UP:Q92764 H"
    "Keratin, type I cuticular Ha5" "AltName: Short" "UP:Q497I4 M"
    "Keratin, type I cuticular Ha5" "AltName: Short" "UP:B0LKP1"
    "Keratin, type I cuticular Ha5" "AltName: Short" "NCIT:C95298" "CDK8"
    "synonym"))
  ("K39"
   ("k39" "K39" "UP:Q6A163 H" "Keratin, type I cytoskeletal 39"
    "AltName: Short" "UP:Q6IFX4 M" "Keratin, type I cytoskeletal 39"
    "AltName: Short" "UP:Q6IFW3" "Keratin, type I cytoskeletal 39"
    "AltName: Short"))
  ("K40"
   ("k40" "K40" "UP:A7YWM2" "Keratin, type I cytoskeletal 40" "AltName: Short"
    "UP:Q6A162 H" "Keratin, type I cytoskeletal 40" "AltName: Short"
    "UP:Q6IFX3 M" "Keratin, type I cytoskeletal 40" "AltName: Short"
    "UP:Q6IFW2" "Keratin, type I cytoskeletal 40" "AltName: Short"))
  ("K41" ("k41" "K-41" "MESH:C012106" "K 41" "SY"))
  ("K41A" ("k41a" "K-41A" "MESH:C012106" "K 41" "SY"))
  ("K43" ("k43" "K43" "CVCL:IZ95" "BJAB-K43" "RELATED synonym"))
  ("K46" ("k46" "K46" "CVCL:K163" "K46" "name"))
  ("K60"
   ("k60" "K60" "HGNC:6025 G" "C-X-C motif chemokine ligand 8" "Synonym"
    "NCIT:C50942" "CXCL8" "synonym"))
  ("K620" ("k620" "K620" "CVCL:1823" "Karpas-620" "RELATED synonym"))
  ("K71"
   ("k71" "K71" "UP:Q148H5" "Keratin, type II cytoskeletal 71" "AltName: Short"
    "UP:Q3SY84 H" "Keratin, type II cytoskeletal 71" "AltName: Short"
    "UP:Q9R0H5 M" "Keratin, type II cytoskeletal 71" "AltName: Short"))
  ("K74"
   ("k74" "K74" "UP:A3KN27" "Keratin, type II cytoskeletal 74" "AltName: Short"
    "UP:Q7RTS7 H" "Keratin, type II cytoskeletal 74" "AltName: Short"
    "UP:Q6IFZ9 M" "Keratin, type II cytoskeletal 74" "AltName: Short"))
  ("K77"
   ("k77" "K77" "UP:Q7Z794 H" "Keratin, type II cytoskeletal 1b"
    "AltName: Short" "UP:Q6IFZ6 M" "Keratin, type II cytoskeletal 1b"
    "AltName: Short" "UP:Q6IG01" "Keratin, type II cytoskeletal 1b"
    "AltName: Short"))
  ("K80"
   ("k80" "K80" "UP:A0JND2" "Keratin, type II cytoskeletal 80" "AltName: Short"
    "UP:Q6KB66 H" "Keratin, type II cytoskeletal 80" "AltName: Short"
    "UP:Q0VBK2 M" "Keratin, type II cytoskeletal 80" "AltName: Short"
    "UP:Q6IMF1" "Keratin, type II cytoskeletal 80" "AltName: Short"))
  ("K81"
   ("k81" "K81" "UP:Q148H4" "Keratin, type II cuticular Hb1" "AltName: Short"
    "UP:Q14533 H" "Keratin, type II cuticular Hb1" "AltName: Short"
    "UP:Q9ERE2 M" "Keratin, type II cuticular Hb1" "AltName: Short"))
  ("K82"
   ("k82" "K82" "UP:Q9NSB4 H" "Keratin, type II cuticular Hb2" "AltName: Short"
    "UP:Q99M74 M" "Keratin, type II cuticular Hb2" "AltName: Short"))
  ("K85"
   ("k85" "K85" "UP:P78386 H" "Keratin, type II cuticular Hb5" "AltName: Short"
    "UP:Q9Z2T6 M" "Keratin, type II cuticular Hb5" "AltName: Short"))
  ("K86"
   ("k86" "K86" "UP:O43790 H" "Keratin, type II cuticular Hb6" "AltName: Short"
    "UP:P97861 M" "Keratin, type II cuticular Hb6" "AltName: Short"))
  ("K87"
   ("k87" "K87" "UP:Q6IMF0 M" "Keratin, type II cuticular 87"
    "AltName: Short"))
  ("L10"
   ("l10" "L10" "HGNC:10298 G" "ribosomal protein L10" "Synonym" "UP:P51417"
    "60S ribosomal protein L15" "AltName: Full" "XFAM:PF00466 Family"
    "ribosomal L10" "PI" "NCIT:C53153" "RPL10" "synonym"))
  ("L100" ("l100" "L100" "CVCL:0C34" "L100" "name"))
  ("L1210"
   ("l1210" "L-1210" "CVCL:0382" "L1210" "name" "," "L1210" "EFO:0005284"
    "L-1210" "name"))
  ("L132" ("l132" "L132" "CVCL:1908" "L-132" "name"))
  ("L16"
   ("l16" "L16" "UP:P42794 C" "60S ribosomal protein L11-2" "AltName: Full"
    "UP:P0C0W9" "60S ribosomal protein L11-A" "AltName: Full" "UP:Q3E757"
    "60S ribosomal protein L11-B" "AltName: Full" "XFAM:PF00252 Family"
    "ribosomal L16" "PI"))
  ("L20"
   ("l20" "L20" "UP:P46990" "60S ribosomal protein L17-B" "AltName: Full"
    "XFAM:PF00453 Family" "ribosomal L20" "PI"))
  ("L22"
   ("l22" "L22" "HGNC:10315 G" "ribosomal protein L22" "Synonym" "UP:P47830"
    "60S ribosomal protein L27a" "AltName: Full" "XFAM:PF00237 Domain"
    "ribosomal L22" "PI" "NCIT:C97762" "RPL22" "synonym"))
  ("L23"
   ("l23" "L23" "CVCL:3829" "L23" "name" "HGNC:10316 G" "ribosomal protein L23"
    "Synonym" "UP:P09540" "Myosin light chain, embryonic" "AltName: Full"
    "UP:P24049" "60S ribosomal protein L17" "AltName: Full" "UP:P0CX82"
    "60S ribosomal protein L19-A" "AltName: Full" "UP:P0CX83"
    "60S ribosomal protein L19-B" "AltName: Full" "XFAM:PF00276 Family"
    "ribosomal L23" "PI"))
  ("L24"
   ("l24" "L24" "HGNC:10325 G" "ribosomal protein L24" "Synonym"
    "XFAM:PF00467 Family" "KOW" "PI"))
  ("L30"
   ("l30" "L30" "HGNC:10333 G" "ribosomal protein L30" "Synonym" "HGNC:18479 G"
    "ribosomal L24 domain containing 1" "Synonym" "UP:P04449"
    "60S ribosomal protein L24-A" "AltName: Full" "UP:P24000"
    "60S ribosomal protein L24-B" "AltName: Full" "UP:P83732"
    "60S ribosomal protein L24" "AltName: Full" "XFAM:PF00327 Domain"
    "ribosomal L30" "PI"))
  ("L46"
   ("l46" "L46" "UP:Q96W55" "60S ribosomal protein L39" "AltName: Full"
    "UP:P48536" "60S ribosomal protein L39" "AltName: Full" "UP:P04650"
    "60S ribosomal protein L39" "AltName: Full"))
  ("L47"
   ("l47" "L47" "UP:P0CX86" "60S ribosomal protein L41-A" "AltName: Full"
    "UP:P0CX87" "60S ribosomal protein L41-B" "AltName: Full"))
  ("L54" ("l54" "L-54" "MESH:C106625" "L 5409709" "SY"))
  ("L56"
   ("l56" "L56" "UP:Q92743 H" "Serine protease HTRA1" "AltName: Full"
    "NCIT:C101310" "HTRA1" "synonym" "NCIT:C101311" "serine protease HTRA1"
    "synonym"))
  ("LC3II"
   ("lc3ii" "LC3-II" "NCIT:C105644"
    "microtubule-associated proteins 1A/1B light chain 3-II" "synonym"))
  ("LD50"
   ("ld50" "LD-50" "NCIT:C16788" "LD-50" "name" "," "LD50" "NCIT:C16788"
    "LD-50" "synonym"))
  ("LKM1"
   ("lkm1" "LKM-1" "NCIT:C96683"
    "liver kidney microsomal type 1 antibody measurement" "synonym"))
  ("Leu9"
   ("leu9" "LEU-9" "HGNC:1695 G" "CD7 molecule" "Synonym" "," "LEU9"
    "NCIT:C51038" "CD7" "synonym" "," "leu-9" "NCIT:C38935"
    "T-cell antigen CD7" "synonym"))
  ("Log10" ("log10" "log10" "NCIT:C75941" "log10" "name"))
  ("M12" ("m12" "M-12" "CVCL:J160" "LI 66" "RELATED synonym"))
  ("M129"
   ("m129" "M-129" "MESH:C009964"
    "10-(2-dimethylaminopropyl)-9-acridone monohydrochloride" "SY"))
  ("M13"
   ("m13" "M-13" "CVCL:J751" "E 20" "RELATED synonym" "," "M13" "CVCL:UU87"
    "MCF-7 M13" "RELATED synonym" "CHEBI:140166" "cyclosporin A metabolite M13"
    "RELATED synonym"))
  ("M17"
   ("m17" "M-17" "CVCL:D028" "M-17" "name" "," "M17" "CHEBI:140154"
    "cyclosporin A metabolite M17" "RELATED synonym"))
  ("M207" ("m207" "M207" "CVCL:D747" "M207" "name"))
  ("M23"
   ("m23" "M-23" "CVCL:J017" "L 230" "RELATED synonym" "," "M23" "CVCL:RT32"
    "M23" "name"))
  ("M24"
   ("m24" "M-24" "CVCL:J758" "M 138" "RELATED synonym" "," "M24" "CVCL:D032"
    "M24" "name"))
  ("M297" ("m297" "M297" "CVCL:D764" "M297" "name"))
  ("M30"
   ("m30" "M30" "UP:Q03943" "Membrane-associated 30 kDa protein, chloroplastic"
    "RecName: Short" "NCIT:C126895" "monoclonal antibody M30" "synonym"))
  ("M41"
   ("m41" "M4-1" "CVCL:RG60" "M4-1" "name" "," "M41" "HGNC:40197 R"
    "DSCAM antisense RNA 1" "Synonym"))
  ("M65"
   ("m65" "M-65" "NCIT:C118181" "M65-antigen" "synonym" "," "M65" "CVCL:U490"
    "MCH065" "RELATED synonym" "NCIT:C118181" "M65-antigen" "synonym"))
  ("N.D." ("n.d." "N.D." "NCIT:C39473" "naturopathic doctor" "synonym"))
  ("N10"
   ("n10" "N10" "HGNC:7980 G" "nuclear receptor subfamily 4 group A member 1"
    "Synonym" "NCIT:C52144" "NR4A1" "synonym"))
  ("N100" ("n100" "N-100" "UP:P13708" "Sucrose synthase" "AltName: Short"))
  ("N103" ("n103" "N103" "CVCL:L428" "N-1A-103" "RELATED synonym"))
  ("N11" ("n11" "N11" "CVCL:D426" "mHypoE-N11" "RELATED synonym"))
  ("N12"
   ("n12" "N-12" "UP:P30365" "Early nodulin-12" "RecName: Short" "UP:Q41701"
    "Early nodulin-12" "RecName: Short"))
  ("N147"
   ("n147" "N147" "UP:P81674" "Unknown protein from 2D-PAGE of needles"
    "AltName: Full"))
  ("N177" ("n177" "N177" "CVCL:A589" "NCI-N177" "RELATED synonym"))
  ("N179" ("n179" "N179" "CVCL:D056" "NCI-N179" "RELATED synonym"))
  ("N230" ("n230" "N230" "CVCL:D057" "NCI-N230" "RELATED synonym"))
  ("N231"
   ("n231" "N231" "CVCL:A788" "NCI-N231" "RELATED synonym" "EFO:0002840" "N231"
    "name"))
  ("N27"
   ("n27" "N-27" "CVCL:D584" "N27" "name" "UP:P08864" "Nodulin-27"
    "RecName: Short"))
  ("N36" ("n36" "N36" "XFAM:PF11438 Family" "N36" "ID"))
  ("N37" ("n37" "N37" "CVCL:D437" "mHypoE-N37" "RELATED synonym"))
  ("N44"
   ("n44" "N-44" "UP:P04672" "Nodulin-44" "RecName: Short" "," "N44"
    "CVCL:D457" "mHypoE-N44" "RELATED synonym"))
  ("N45" ("n45" "N45" "CVCL:D458" "mHypoE-N45" "RELATED synonym"))
  ("N46" ("n46" "N46" "CVCL:D459" "mHypoE-N46" "RELATED synonym"))
  ("N50" ("n50" "N-50" "UP:P02235" "Leghemoglobin C1" "AltName: Short"))
  ("N55"
   ("n55" "N55" "UP:P81667" "Unknown protein from 2D-PAGE of needles"
    "AltName: Full"))
  ("N56"
   ("n56" "N-56" "UP:Q39891" "Probable 2-isopropylmalate synthase"
    "AltName: Short"))
  ("N63" ("n63" "N63" "UP:P86702" "Nautilin-63" "RecName: Short"))
  ("N70" ("n70" "N-70" "UP:Q02920" "Early nodulin-70" "RecName: Short"))
  ("N93" ("n93" "N-93" "UP:Q02921" "Early nodulin-93" "RecName: Short"))
  ("NM009" ("nm009" "NM009" "NCIT:C109488" "curry county, NM" "synonym"))
  ("O91" ("o91" "O9-1" "CVCL:GS42" "O9-1" "name"))
  ("P123" ("p123" "P123" "CVCL:JU11" "JHU123i" "RELATED synonym"))
  ("P128"
   ("p128" "P128" "CVCL:JU16" "JHU128i" "RELATED synonym" "," "p128"
    "UP:O94679" "Condensin complex subunit 1" "AltName: Full"))
  ("P138"
   ("p138" "P138" "HGNC:15448 G" "golgi integral membrane protein 4" "Synonym"
    "NCIT:C101653" "GOLIM4" "synonym"))
  ("P218" ("p218" "P218" "CVCL:JU86" "JHU218i" "RELATED synonym"))
  ("P22077"
   ("p22077" "P22077" "MESH:C570895"
    "1-(5-((2,4-difluorophenyl)thio)-4-nitrothiophen-2-yl)ethanone" "SY"
    "PC:46931953" "P22077" "Name"))
  ("P245" ("p245" "P245" "CVCL:JV10" "JHU245i" "RELATED synonym"))
  ("P388" ("p388" "P-388" "CVCL:7222" "P388" "name"))
  ("P5091" ("p5091" "P5091" "MESH:C576408" "P5091" "NM"))
  ("P560" ("p560" "P560" "CVCL:8580" "SMA-560" "RELATED synonym"))
  ("P815" ("p815" "P-815" "CVCL:2154" "P815" "name"))
  ("P99"
   ("p99" "p99" "HGNC:9284 G" "protein phosphatase 1 regulatory subunit 10"
    "Synonym" "UP:Q96QC0 H"
    "Serine/threonine-protein phosphatase 1 regulatory subunit 10"
    "AltName: Full"))
  ("PAO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("PEG300"
   ("peg300" "PEG-300" "NCIT:C84078" "polyethylene glycol 300" "synonym"))
  ("PEG8000"
   ("peg8000" "PEG-8000" "NCIT:C84088" "polyethylene glycol 8000" "synonym"))
  ("PaO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("Pao2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("Po0" ("po0" "Po-0" "EFO:0006972" "Po-0" "name"))
  ("R105" ("r105" "R105" "CVCL:M670" "R105" "name"))
  ("R11"
   ("r11" "R-11" "CHEBI:48236" "trichlorofluoromethane" "RELATED synonym" ","
    "R1-1" "CVCL:1S36" "GM11750" "RELATED synonym" "," "R11" "CVCL:D489"
    "rHypoE-11" "RELATED synonym" "EFO:0002849" "R11" "name"))
  ("R110" ("r110" "R-110" "CHEBI:39227" "hexachloroethane" "RELATED synonym"))
  ("R12"
   ("r12" "R1-2" "CVCL:9226" "R1-2" "name" "," "R12" "UP:Q13304 H"
    "Uracil nucleotide/cysteinyl leukotriene receptor" "AltName: Full"
    "NCIT:C26196" "uracil nucleotide/Cysteinyl leukotriene receptor" "synonym"
    "NCIT:C51455" "GPR17" "synonym" "," "r12" "NCIT:C158951"
    "ring chromosome 12" "synonym"))
  ("R124"
   ("r124" "R-124" "MESH:C072959" "1,1,1,2-tetrafluoro-2-chloroethane" "SY"))
  ("R13" ("r13" "R13" "CVCL:D490" "rHypoE-13" "RELATED synonym"))
  ("R134A" ("r134a" "R-134a" "MESH:C063006" "norflurane" "SY"))
  ("R15" ("r15" "R15" "CVCL:D491" "rHypoE-15" "RELATED synonym"))
  ("R18"
   ("r18" "R18" "CVCL:D493" "rHypoE-18" "RELATED synonym" "EFO:0001226" "R18"
    "name"))
  ("R198" ("r198" "R198" "CVCL:4895" "R198" "name"))
  ("R225" ("r225" "R-225" "MESH:C033006" "sudan III" "SY"))
  ("R25" ("r25" "R25" "CVCL:D500" "rHypoE-25" "RELATED synonym"))
  ("R33"
   ("r33" "R-33" "CHEBI:140422" "VR nerve agent" "RELATED synonym" "," "R33"
    "CVCL:WI11" "N2a-R33" "RELATED synonym" "CVCL:D506" "rHypoE-33"
    "RELATED synonym"))
  ("R35"
   ("r35" "R35" "HGNC:23627 G" "G protein-coupled receptor 149" "Synonym"))
  ("R38A"
   ("r38a" "R38A" "HGNC:32556 R" "small nucleolar RNA, C/D box 1A" "Synonym"))
  ("R40"
   ("r40" "R-40" "CHEBI:36014" "chloromethane" "RELATED synonym" "MESH:C005915"
    "Allura Red AC Dye" "SY"))
  ("R43" ("r43" "R43" "EFO:0001228" "R43" "name"))
  ("R547"
   ("r547" "R-547" "NCIT:C64544" "CDK inhibitor R547" "synonym" "," "R547"
    "NCIT:C64544" "CDK inhibitor R547" "synonym"))
  ("R63" ("r63" "R63" "CVCL:4551" "R63" "name"))
  ("R7112"
   ("r7112" "R7112" "NCIT:C91724" "MDM2 antagonist RO5045337" "synonym"))
  ("R73" ("r73" "R73" "CVCL:J772" "R73" "name"))
  ("R745"
   ("r745" "R-7-45" "MESH:C065461" "R 7-45" "SY" "," "R7-45" "MESH:C065461"
    "R 7-45" "SY"))
  ("R751" ("r751" "R-75-1" "MESH:C023808" "rifamycin SV" "SY"))
  ("R848"
   ("r848" "R-848" "CHEBI:36706" "resiquimod" "RELATED synonym" "MESH:C402365"
    "resiquimod" "SY" "," "R848" "NCIT:C63958" "resiquimod" "synonym"))
  ("S101" ("s101" "S-101" "FA:03481" "S-101 family" "ID"))
  ("S102" ("s102" "S102" "CVCL:M359" "HCC-S102" "RELATED synonym"))
  ("S104" ("s104" "S-10-4" "CVCL:XE90" "S-10-4" "name"))
  ("S110" ("s110" "S110" "NCIT:C95209" "guadecitabine" "synonym"))
  ("S114"
   ("s114" "S114" "UP:Q9HCY8 H" "Protein S100-A14" "AltName: Short"
    "UP:Q9D2Q8 M" "Protein S100-A14" "AltName: Short"))
  ("S117" ("s117" "S117" "CVCL:1674" "S-117" "name"))
  ("S124"
   ("s124" "S124" "MESH:C448907"
    "Nalpha-(2-naphthylsulfonyl)-3-amidinophenylalanine-carboxymethylpiperazide"
    "SY"))
  ("S1401" ("s1401" "S1401" "CVCL:1L34" "GM13668" "RELATED synonym"))
  ("S145" ("s145" "S-145" "MESH:C056566" "S 145" "SY"))
  ("S147"
   ("s147" "S-147" "MESH:C016847" "di-(1-isoquinolinyl)-di-(pyridyl-2')butane"
    "SY"))
  ("S148" ("s148" "S148" "CVCL:CW61" "S148" "name"))
  ("S164"
   ("s164" "S164" "HGNC:23244 G" "RNA binding motif protein 25" "Synonym"))
  ("S171" ("s171" "S171" "NCIT:C101636" "NUMB" "synonym"))
  ("S180" ("s180" "S-180" "CVCL:2874" "CCRF S-180 II" "RELATED synonym"))
  ("S20"
   ("s20" "S20" "CVCL:VU14" "C-1300 clone S20" "RELATED synonym" "CVCL:VN74"
    "OARSAi009-A" "RELATED synonym" "HGNC:10405 G" "ribosomal protein S20"
    "Synonym" "NCIT:C152006" "RPS20" "synonym"))
  ("S261"
   ("s261" "S-261" "MESH:C000958"
    "N,N'-diethylene-N''-(5-methyl-1,3,4-thiadiazol-2-yl)phosphoramide" "SY"))
  ("S27"
   ("s27" "S27" "CVCL:N331" "S27" "name" "HGNC:10416 G" "ribosomal protein S27"
    "Synonym" "NCIT:C53163" "RPS27" "synonym"))
  ("S28"
   ("s28" "S28" "HGNC:10418 G" "ribosomal protein S28" "Synonym" "UP:P05764"
    "40S ribosomal protein S21" "AltName: Full" "UP:P0CX29"
    "40S ribosomal protein S23-A" "AltName: Full" "UP:P0CX30"
    "40S ribosomal protein S23-B" "AltName: Full"))
  ("S31"
   ("s31" "S3-1" "CVCL:GY00" "S3-1" "name" "," "S31" "UP:P28566 H"
    "5-hydroxytryptamine receptor 1E" "AltName: Full" "UP:P49216 R"
    "40S ribosomal protein S26" "AltName: Full"))
  ("S36"
   ("s36" "S36" "UP:P41057" "40S ribosomal protein S29-A" "AltName: Full"
    "UP:P41058" "40S ribosomal protein S29-B" "AltName: Full"))
  ("S49"
   ("s49" "S49" "CVCL:6519" "S49.1" "RELATED synonym" "EFO:0001234" "S49"
    "name"))
  ("S51" ("s51" "S51" "NCIT:C61728" "diphenhydramine" "synonym"))
  ("S52"
   ("s52" "S52" "HGNC:2359 G" "cysteine rich transmembrane BMP regulator 1"
    "Previous Symbol"))
  ("S53"
   ("s53" "S53" "UP:P49754 H"
    "Vacuolar protein sorting-associated protein 41 homolog" "AltName: Full"))
  ("S61" ("s61" "S6-1" "CVCL:9W07" "S6-1" "name"))
  ("S62"
   ("s62" "S6-2" "CVCL:9W08" "S6-2" "name" "," "S62" "CVCL:XG22" "MSU-1.1-S62"
    "RELATED synonym"))
  ("S63" ("s63" "S6-3" "CVCL:9W09" "S6-3" "name"))
  ("S64" ("s64" "S64" "UP:M1E1F1" "U1-sicaritoxin-Sdo1a" "AltName: Full"))
  ("S67" ("s67" "S67" "UP:M1E1F0" "U2-sicaritoxin-Sdo1a" "AltName: Full"))
  ("S68" ("s68" "S68" "CVCL:5585" "S68" "name"))
  ("S87" ("s87" "S87" "CVCL:JX94" "S87" "name"))
  ("SF12" ("sf12" "SF-12" "NCIT:C20079" "SF-12" "name"))
  ("Ser2" ("ser2" "SER2" "NCIT:C84308" "JAG2" "synonym"))
  ("T10"
   ("t10" "T10" "CVCL:RL56" "T10" "name" "CHEBI:75594" "dT10" "RELATED synonym"
    "UP:P28907 H" "ADP-ribosyl cyclase/cyclic ADP-ribose hydrolase 1"
    "AltName: Full" "NCIT:C84322" "CD38" "synonym" "NCIT:C84323"
    "ADP-ribosyl cyclase 1" "synonym"))
  ("T11"
   ("t11" "T-11" "CVCL:U051" "XCIV-1H2-A8" "RELATED synonym" "," "T11"
    "NCIT:C51120" "CD2" "synonym"))
  ("T12"
   ("t12" "T12" "CVCL:Y543" "CRTDi001-A" "RELATED synonym" "CHEBI:75713" "dT12"
    "RELATED synonym" "UP:P30203 H" "T-cell differentiation antigen CD6"
    "AltName: Full" "NCIT:C73129" "T-cell differentiation antigen CD6"
    "synonym"))
  ("T15" ("t15" "T15" "CHEBI:76376" "dT15" "RELATED synonym"))
  ("T17"
   ("t17" "T17" "CVCL:JF18" "DuckCelt-T17" "RELATED synonym" "," "t-17"
    "UP:Q02931" "NET1-associated nuclear protein 1" "AltName: Short"))
  ("T174"
   ("t174" "T-174" "MESH:C089946" "2,4-thiazolidinedione" "SY" "," "T174"
    "CVCL:J678" "CLT 174" "RELATED synonym"))
  ("T20" ("t20" "T-20" "NCIT:C2105" "enfuvirtide" "synonym"))
  ("T21" ("t21" "T21" "CHEBI:75682" "dT21" "RELATED synonym"))
  ("T24"
   ("t24" "T-24" "CVCL:0554" "T24" "name" "," "T24" "EFO:0002864" "T24"
    "name"))
  ("T29" ("t29" "T29" "CVCL:2G67" "T29" "name"))
  ("T3C" ("t3c" "T3c" "NCIT:C48731" "T3c stage finding" "synonym"))
  ("T82" ("t82" "T-82" "CVCL:LK91" "T-82" "name"))
  ("T88" ("t88" "T88" "CVCL:5369" "T-88" "name"))
  ("T98"
   ("t98" "T-98" "CVCL:B368" "T98" "name" "MESH:C080882"
    "LHRH, lysine(6)-glutaryl-2-(hydroxymethyl)anthraquinone" "SY"))
  ("TCID50"
   ("tcid50" "TCID50" "NCIT:C67450" "tissue culture infectious dose 50%"
    "synonym" "NCIT:C70536" "50 percent tissue culture infective dose"
    "synonym"))
  ("TH17" ("th17" "Th17" "NCIT:C113815" "T helper 17 cell" "synonym"))
  ("Th17" ("th17" "Th17" "NCIT:C113815" "T helper 17 cell" "synonym"))
  ("Trp2"
   ("trp2" "TRP-2" "UP:P40126 H" "L-dopachrome tautomerase" "AltName: Short"
    "UP:Q9R244 M" "Short transient receptor potential channel 2"
    "AltName: Short" "UP:P29812 M" "L-dopachrome tautomerase" "AltName: Short"
    "NCIT:C2646" "L-dopachrome tautomerase" "synonym" "NCIT:C38682"
    "recombinant tyrosinase-related protein-2" "synonym" "NCIT:C38769"
    "recombinant tyrosinase-related protein-2" "synonym" "," "TRP2"
    "HGNC:12331 R" "tRNA-Pro (anticodon AGG) 2-6" "Previous Symbol" "UP:Q95119"
    "L-dopachrome tautomerase" "AltName: Short" "UP:O93505"
    "L-dopachrome tautomerase" "AltName: Short" "UP:P40126 H"
    "L-dopachrome tautomerase" "AltName: Short" "UP:P29812 M"
    "L-dopachrome tautomerase" "AltName: Short" "UP:Q4R1H1"
    "L-dopachrome tautomerase" "AltName: Short" "NCIT:C2646"
    "L-dopachrome tautomerase" "synonym" "NCIT:C114453" "RANBP2" "synonym"))
  ("U100"
   ("u100" "U100" "HGNC:32571 R" "small Cajal body-specific RNA 14" "Synonym"))
  ("U16"
   ("u16" "U16" "HGNC:32712 R" "small nucleolar RNA, C/D box 16" "Synonym"))
  ("U35"
   ("u35" "U35" "HGNC:10162 R" "small nucleolar RNA, C/D box 35A" "Synonym"))
  ("U42"
   ("u42" "U42" "HGNC:10180 R" "small nucleolar RNA, C/D box 42A" "Synonym"))
  ("U52"
   ("u52" "U52" "HGNC:10202 R" "small nucleolar RNA, C/D box 52" "Synonym"))
  ("U70"
   ("u70" "U70" "HGNC:10231 R" "small nucleolar RNA, H/ACA box 70" "Synonym"))
  ("U80"
   ("u80" "U80" "HGNC:10096 R" "small nucleolar RNA, C/D box 80" "Synonym"))
  ("V241" ("v241" "V241" "CVCL:5396" "VACO 241" "RELATED synonym"))
  ("V410" ("v410" "V410" "CVCL:8632" "VACO 410" "RELATED synonym"))
  ("X63" ("x63" "X63" "CVCL:3411" "P3X63Ag8" "RELATED synonym"))
  ("Xp22.3" ("xp22.3" "Xp22.3" "NCIT:C25139" "Xp22.3" "name"))
  ("Y700"
   ("y700" "Y-700" "MESH:C433950"
    "1-(3-cyano-4-neopentyloxyphenyl)pyrazole-4-carboxylic acid" "SY"))
  ("Yp11.3" ("yp11.3" "Yp11.3" "NCIT:C41840" "Yp11.3" "name"))
  ("aa120" ("aa120" "AA120" "EFO:0004072" "AA120" "name"))
  ("antiCD28" ("anticd28" "anti-CD28" "EFO:0003304" "anti-CD28" "name"))
  ("antiCD3" ("anticd3" "anti-CD3" "EFO:0003317" "anti-CD3" "name"))
  ("c57"
   ("c57" "C57" "EFO:0004472" "C57BL/6" "EXACT synonym" "NCIT:C14522"
    "C57 mouse" "synonym"))
  ("ft3"
   ("ft3" "ft3" "NCIT:C48487" "cubic foot" "synonym" "NCIT:C68859"
    "standard cubic foot" "synonym"))
  ("g41"
   ("g41" "G4-1" "HGNC:17485 G"
    "protein phosphatase 2 regulatory subunit B''gamma" "Synonym"))
  ("icd9"
   ("icd9" "ICD-9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym" ","
    "ICD9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym"))
  ("km2" ("km2" "km2" "NCIT:C68864" "square kilometer" "synonym"))
  ("log10" ("log10" "log10" "NCIT:C75941" "log10" "name"))
  ("m127" ("m127" "M12-7" "CVCL:EL40" "PENN140i-M12-7" "RELATED synonym"))
  ("miR122"
   ("mir122" "MIR122" "HGNC:31501 R" "microRNA 122" "Approved Symbol"
    "NCIT:C82057" "MIR122" "name" "," "miR-122" "HGNC:31501 R" "microRNA 122"
    "Synonym"))
  ("miR135b"
   ("mir135b" "MIR135B" "HGNC:31760 R" "microRNA 135b" "Approved Symbol"
    "NCIT:C117064" "MIR135B" "name" "," "mir-135b" "NCIT:C117064" "MIR135B"
    "synonym"))
  ("miR146a"
   ("mir146a" "MIR146A" "HGNC:31533 R" "microRNA 146a" "Approved Symbol"
    "NCIT:C82098" "MIR146A" "name"))
  ("miR19a"
   ("mir19a" "MIR19A" "HGNC:31574 R" "microRNA 19a" "Approved Symbol"
    "NCIT:C81890" "MIR19A" "name"))
  ("miR30c"
   ("mir30c" "MIR30C" "NCIT:C162388" "microRNA 30c" "synonym" "," "miR-30c"
    "NCIT:C162385" "MIR30C2" "synonym" "NCIT:C162388" "microRNA 30c" "synonym"
    "," "miR30c" "NCIT:C162388" "microRNA 30c" "synonym"))
  ("miR373"
   ("mir373" "MIR373" "HGNC:31787 R" "microRNA 373" "Approved Symbol"
    "NCIT:C82191" "MIR373" "name" "," "mir-373" "NCIT:C82191" "MIR373"
    "synonym"))
  ("miR451"
   ("mir451" "MIR451" "HGNC:32053 R" "microRNA 451a" "Previous Symbol"
    "NCIT:C82199" "MIR451A" "synonym" "," "miR-451" "NCIT:C82199" "MIR451A"
    "synonym"))
  ("miR494"
   ("mir494" "MIR494" "HGNC:32084 R" "microRNA 494" "Approved Symbol"))
  ("mir143"
   ("mir143" "MIR143" "HGNC:31530 R" "microRNA 143" "Approved Symbol"
    "NCIT:C82095" "MIR143" "name"))
  ("p510" ("p510" "P5-10" "HGNC:30984 R" "HLA complex P5B" "Synonym"))
  ("pSTAT3"
   ("pstat3" "pSTAT3" "NCIT:C156521" "phosphorylated STAT3 measurement"
    "synonym"))
  ("paO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("phosphoeIF4E"
   ("phosphoeif4e" "phospho-EIF4E" "NCIT:C153382" "phosphorylated EIF4E"
    "synonym"))
  ("po0" ("po0" "Po-0" "EFO:0006972" "Po-0" "name"))
  ("type2"
   ("type2" "TYPE2" "NCIT:C74570" "fitzpatrick skin type II" "synonym"))
  ("βcarotene"
   ("βcarotene" "β-carotene" "NCIT:C1016" "beta-carotene" "name" "NCIT:C68305"
    "beta-carotene" "name")))
)

