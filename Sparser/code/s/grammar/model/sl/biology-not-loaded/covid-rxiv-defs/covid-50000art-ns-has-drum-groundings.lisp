(in-package :sparser)

(defparameter *ns-drum-terms* 
'(("100%" ("100%" "100%" "NCIT:C158695" "one hundred percent" "synonym"))
  ("17A" ("17a" "17a" "CVCL:8991" "17a" "name"))
  ("21c"
   ("21c" "21C" "CVCL:IN11" "iPSc-GD-C21" "RELATED synonym" "CVCL:UL46"
    "USCi002-A" "RELATED synonym"))
  ("21hydroxylase"
   ("21hydroxylase" "21-hydroxylase" "GO:0004509"
    "steroid 21-monooxygenase activity" "EXACT synonym"))
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
  ("AAV2"
   ("aav2" "AAV2" "NCIT:C48818" "adeno-associated virus type 2" "synonym"))
  ("AC15" ("ac15" "AC1-5" "CVCL:9561" "AC1-5" "name"))
  ("ADGRG1"
   ("adgrg1" "ADGRG1" "HGNC:4512 G" "adhesion G protein-coupled receptor G1"
    "Approved Symbol" "NCIT:C99658" "ADGRG1" "name" "NCIT:C99659"
    "adhesion G-protein coupled receptor G1" "synonym"))
  ("ADR5000"
   ("adr5000" "ADR5000" "CVCL:D544" "CCRF/ADR5000" "RELATED synonym"))
  ("AH1" ("ah1" "AH-1" "CVCL:L878" "GMK-AH-1" "RELATED synonym"))
  ("AM404"
   ("am404" "AM-404" "MESH:C107594" "N-(4-hydroxyphenyl)arachidonylamide" "SY"
    "," "AM404" "MESH:C107594" "N-(4-hydroxyphenyl)arachidonylamide" "SY"))
  ("AMPKa1"
   ("ampka1" "AMPKa1" "HGNC:9376 G"
    "protein kinase AMP-activated catalytic subunit alpha 1" "Synonym"
    "NCIT:C116032" "PRKAA1" "synonym"))
  ("AP2a" ("ap2a" "AP2A" "FPLX:AP2A" "AP2A" "name"))
  ("AP2b"
   ("ap2b" "AP-2B" "NCIT:C52214" "TFAP2B" "synonym" "," "AP2-B" "HGNC:11743 G"
    "transcription factor AP-2 beta" "Synonym" "NCIT:C52214" "TFAP2B" "synonym"
    "," "AP2b" "NCIT:C52214" "TFAP2B" "synonym"))
  ("AP5"
   ("ap5" "AP-5" "HGNC:25104 G"
    "adaptor related protein complex 5 subunit beta 1" "Synonym" "," "AP5"
    "CVCL:KT04" "AP-5" "name" "CVCL:1148" "CRO-AP5" "RELATED synonym"
    "UP:P06595" "Phytochrome A type 5" "RecName: Short"))
  ("APOBEC3DE"
   ("apobec3de" "APOBEC3DE" "HGNC:17354 G"
    "apolipoprotein B mRNA editing enzyme catalytic subunit 3D" "Synonym"))
  ("AR001" ("ar001" "AR001" "NCIT:C107799" "arkansas county, AR" "synonym"))
  ("ARG1"
   ("arg1" "ARG-1" "UP:Q9NH76" "Hemerythrin-like protein" "AltName: Full" ","
    "ARG1" "HGNC:663 G" "arginase 1" "Approved Symbol" "HGNC:19168 G"
    "tubulointerstitial nephritis antigen like 1" "Synonym" "NCIT:C103928"
    "ARG1" "name" "NCIT:C158392" "TINAGL1" "synonym"))
  ("ARTD11"
   ("artd11" "ARTD11" "UP:Q9NR21 H"
    "Protein mono-ADP-ribosyltransferase PARP11" "AltName: Short" "UP:Q8CFF0 M"
    "Protein mono-ADP-ribosyltransferase PARP11" "AltName: Short"))
  ("ARTD3"
   ("artd3" "ARTD3" "UP:Q9Y6F1 H" "Protein mono-ADP-ribosyltransferase PARP3"
    "AltName: Short" "UP:Q3ULW8 M" "Protein mono-ADP-ribosyltransferase PARP3"
    "AltName: Short" "NCIT:C147980" "poly [ADP-ribose] polymerase 3"
    "synonym"))
  ("ATB2"
   ("atb2" "AtB2" "UP:Q9LTG0 C" "Beta-carotene 3-hydroxylase 2, chloroplastic"
    "RecName: Short"))
  ("ATG16l1"
   ("atg16l1" "ATG16L1" "HGNC:21498 G" "autophagy related 16 like 1"
    "Approved Symbol" "NCIT:C119724" "ATG16L1" "name"))
  ("AV2"
   ("av2" "Av2" "UP:P0DL50" "Delta-actitoxin-Avd1c 2" "AltName: Short" "UP:etc"
    "" "fake"))
  ("Abcc2"
   ("abcc2" "ABCC2" "HGNC:53 G" "ATP binding cassette subfamily C member 2"
    "Approved Symbol" "NCIT:C103883" "ABCC2" "name" "NCIT:C103884"
    "canalicular multispecific organic anion transporter 1" "synonym"))
  ("Ad1"
   ("ad1" "AD1" "HGNC:620 G" "amyloid beta precursor protein" "Previous Symbol"
    "NCIT:C51309" "APP" "synonym"))
  ("Ad2"
   ("ad2" "AD2" "HGNC:613 G" "apolipoprotein E" "Previous Symbol" "NCIT:C84469"
    "APOE" "synonym"))
  ("AdH5"
   ("adh5" "ADH-5" "HGNC:255 G" "alcohol dehydrogenase 6 (class V)" "Synonym"
    "," "ADH5" "HGNC:253 G"
    "alcohol dehydrogenase 5 (class III), chi polypeptide" "Approved Symbol"))
  ("Ag43" ("ag43" "AG43" "UP:P39180" "Antigen 43" "RecName: Short"))
  ("Ag85a"
   ("ag85a" "Ag85A" "UP:O52956"
    "Diacylglycerol acyltransferase/mycolyltransferase Ag85A" "AltName: Short"
    "UP:etc" "" "fake"))
  ("Ag85b"
   ("ag85b" "Ag85B" "UP:Q06947"
    "Diacylglycerol acyltransferase/mycolyltransferase Ag85B" "AltName: Short"
    "UP:etc" "" "fake"))
  ("AgC1" ("agc1" "AGC1" "HGNC:319 G" "aggrecan" "Previous Symbol"))
  ("AgNO3"
   ("agno3" "AgNO3" "CHEBI:32130" "silver(1+) nitrate" "RELATED synonym"))
  ("Aldh8a1"
   ("aldh8a1" "ALDH8A1" "HGNC:15471 G"
    "aldehyde dehydrogenase 8 family member A1" "Approved Symbol"))
  ("Alg9"
   ("alg9" "ALG9" "HGNC:15672 G" "ALG9 alpha-1,2-mannosyltransferase"
    "Approved Symbol"))
  ("Aph1a"
   ("aph1a" "APH-1A" "HGNC:29509 G" "aph-1 homolog A, gamma-secretase subunit"
    "Synonym" "," "APH-1a" "UP:Q96BI3 H" "Gamma-secretase subunit APH-1A"
    "RecName: Short" "UP:Q8BVF7 M" "Gamma-secretase subunit APH-1A"
    "RecName: Short" "," "APH1A" "HGNC:29509 G"
    "aph-1 homolog A, gamma-secretase subunit" "Approved Symbol"))
  ("Apr2"
   ("apr2" "APR-2" "HGNC:17505 R"
    "family with sequence similarity 215 member A" "Synonym" "UP:Q9Y5M1 H"
    "Uncharacterized protein FAM215A" "AltName: Short" "UP:Q17078"
    "Pheromone-binding protein 2" "AltName: Full"))
  ("Arg1"
   ("arg1" "ARG-1" "UP:Q9NH76" "Hemerythrin-like protein" "AltName: Full" ","
    "ARG1" "HGNC:663 G" "arginase 1" "Approved Symbol" "HGNC:19168 G"
    "tubulointerstitial nephritis antigen like 1" "Synonym" "NCIT:C103928"
    "ARG1" "name" "NCIT:C158392" "TINAGL1" "synonym"))
  ("AtATG6"
   ("atatg6" "AtATG6" "UP:Q9M367 C" "Beclin-1-like protein" "AltName: Short"))
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
  ("B2GP1" ("b2gp1" "B2GP1" "NCIT:C142154" "APOH" "synonym"))
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
  ("B95.8" ("b95.8" "B95.8" "CVCL:1953" "B95-8" "RELATED synonym"))
  ("BC5"
   ("bc5" "BC-5" "EFO:0002047" "BC-5" "name" "," "BC5" "CVCL:B040" "BC-5"
    "name"))
  ("BCL2L15"
   ("bcl2l15" "BCL2L15" "HGNC:33624 G" "BCL2 like 15" "Approved Symbol" ","
    "bcl2-L-15" "UP:Q0II48" "Bcl-2-like protein 15" "RecName: Short"
    "UP:Q5TBC7 H" "Bcl-2-like protein 15" "RecName: Short" "UP:Q08ED0 M"
    "Bcl-2-like protein 15" "RecName: Short"))
  ("BDCA1"
   ("bdca1" "BDCA-1" "NCIT:C118909" "T-cell surface glycoprotein CD1c"
    "synonym" "," "BDCA1" "NCIT:C118908" "CD1C" "synonym"))
  ("BDCA4" ("bdca4" "BDCA4" "NCIT:C51570" "NRP1" "synonym"))
  ("BE26" ("be26" "BE26" "CVCL:8806" "BE26" "name"))
  ("BHK21" ("bhk21" "BHK21" "CVCL:1914" "BHK-21" "name"))
  ("BL57" ("bl57" "BL57" "CVCL:C152" "BL-57" "name"))
  ("BMS986094" ("bms986094" "BMS-986094" "MESH:C553340" "INX 08189" "SY"))
  ("BS7"
   ("bs7" "BS7" "UP:P21469"
    "30S ribosomal protein S7 {ECO:0000255|HAMAP-Rule:MF_00480}"
    "RecName: Short" "UP:P22744" "30S ribosomal protein S7" "RecName: Short"))
  ("Bcar1"
   ("bcar1" "BCAR1" "HGNC:971 G" "BCAR1 scaffold protein, Cas family member"
    "Approved Symbol" "NCIT:C21491"
    "breast cancer anti-estrogen resistance protein 1" "synonym" "NCIT:C52369"
    "BCAR1" "name"))
  ("Bcrp1" ("bcrp1" "BCRP1" "NCIT:C52276" "ABCG2" "synonym"))
  ("Bind1"
   ("bind1" "B-ind1" "HGNC:24175 G" "3-hydroxyacyl-CoA dehydratase 3" "Synonym"
    "UP:Q9P035 H" "Very-long-chain (3R)-3-hydroxyacyl-CoA dehydratase 3"
    "AltName: Short" "UP:Q8K2C9 M"
    "Very-long-chain (3R)-3-hydroxyacyl-CoA dehydratase 3" "AltName: Short"))
  ("BoV1"
   ("bov1" "BOV-1" "UP:Q9Y5S9 H" "RNA-binding protein 8A" "AltName: Short"))
  ("Br1"
   ("br1" "BR-1" "CVCL:C062" "BR-1" "name" "," "b-R1" "HGNC:10638 G"
    "C-X-C motif chemokine ligand 11" "Synonym" "NCIT:C49758" "CXCL11"
    "synonym"))
  ("C052" ("c052" "C052" "CVCL:EI46" "C052" "name"))
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
  ("C1INH"
   ("c1inh" "C1-INH" "HGNC:1228 G" "serpin family G member 1" "Synonym"
    "NCIT:C96366" "conestat alfa" "synonym" "," "C1INH" "HGNC:1228 G"
    "serpin family G member 1" "Synonym" "NCIT:C147313"
    "complement C1 esterase inhibitor measurement" "synonym" "," "C1Inh"
    "UP:P05155 H" "Plasma protease C1 inhibitor" "RecName: Short" "UP:P97290 M"
    "Plasma protease C1 inhibitor" "RecName: Short" "UP:Q9TRG2"
    "Plasma protease C1 inhibitor" "RecName: Short" "UP:Q6P734"
    "Plasma protease C1 inhibitor" "RecName: Short"))
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
  ("C2a" ("c2a" "C2A" "CVCL:1709" "SNU-C2A" "RELATED synonym"))
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
  ("C3d"
   ("c3d" "C3D" "NCIT:C82159" "C3D format" "synonym" "," "C3d" "NCIT:C154099"
    "complement C3d" "synonym"))
  ("C412" ("c412" "C4-12" "CVCL:GX99" "MCF-7/C4-12" "RELATED synonym"))
  ("C430" ("c430" "C430" "CVCL:4J80" "C-430" "name"))
  ("C44"
   ("c44" "C44" "CVCL:Z204" "BmVIII-SCC-OPr-C44" "RELATED synonym" "CVCL:K132"
    "C44" "name" "UP:Q9EPH1" "Alpha-1B-glycoprotein" "AltName: Full"))
  ("C46" ("c46" "C46" "CVCL:VU15" "C-1300 clone C46" "RELATED synonym"))
  ("C4a"
   ("c4a" "C4A" "HGNC:1323 G" "complement C4A (Rodgers blood group)"
    "Approved Symbol" "NCIT:C80178" "complement C4a measurement" "synonym"
    "NCIT:C128858" "C4A" "name"))
  ("C57"
   ("c57" "C57" "EFO:0004472" "C57BL/6" "EXACT synonym" "NCIT:C14522"
    "C57 mouse" "synonym"))
  ("C57BL6" ("c57bl6" "C57BL6" "EFO:0004472" "C57BL/6" "EXACT synonym"))
  ("C57BR" ("c57br" "C57BR" "NCIT:C37389" "C57BR mouse" "synonym"))
  ("C57Br" ("c57br" "C57BR" "NCIT:C37389" "C57BR mouse" "synonym"))
  ("C57L" ("c57l" "C57L" "NCIT:C37391" "C57L mouse" "synonym"))
  ("C58" ("c58" "C58" "NCIT:C37392" "C58 mouse" "synonym"))
  ("C5b9"
   ("c5b9" "C5B9" "NCIT:C158235" "complement C5b-9 measurement" "synonym"))
  ("C63"
   ("c63" "C6-3" "CVCL:X905" "C6-3" "name" "," "C63" "CVCL:DF68" "NGC-0363"
    "RELATED synonym"))
  ("C6orf130"
   ("c6orf130" "C6orf130" "HGNC:21257 G" "O-acyl-ADP-ribose deacylase 1"
    "Previous Symbol"))
  ("C70" ("c70" "C70" "CVCL:5247" "C70" "name"))
  ("C73" ("c73" "C-73" "MESH:C000961" "C 73" "SY"))
  ("C84" ("c84" "C84" "CVCL:5250" "C84" "name"))
  ("C86" ("c86" "C86" "CVCL:J327" "CCCL-2" "RELATED synonym"))
  ("C87"
   ("c87" "C87" "CVCL:IX10" "HepG2 CYP3A4G/7R clone 87" "RELATED synonym"))
  ("C89" ("c89" "C-89" "CVCL:T718" "OpC-89" "RELATED synonym"))
  ("CACNA1" ("cacna1" "CACNA1" "FPLX:CACNA1" "CACNA1" "name"))
  ("CALCOCO3"
   ("calcoco3" "CALCOCO3" "HGNC:11575 G" "Tax1 binding protein 1" "Synonym"
    "NCIT:C137982" "TAX1BP1" "synonym"))
  ("CB6F1" ("cb6f1" "CB6F1" "EFO:0001339" "CB6F1" "name"))
  ("CC22" ("cc22" "CC22" "CVCL:2H56" "CC22" "name"))
  ("CC30"
   ("cc30" "CC-30" "CVCL:K139" "CC 30" "RELATED synonym" "," "CC30" "CVCL:G105"
    "CC30" "name"))
  ("CCDC122"
   ("ccdc122" "CCDC122" "HGNC:26478 G" "coiled-coil domain containing 122"
    "Approved Symbol"))
  ("CCID50"
   ("ccid50" "CCID50" "NCIT:C70534" "50 percent cell culture infective dose"
    "synonym" "NCIT:C70534" "50 percent cell culture infective dose"
    "synonym"))
  ("CD102"
   ("cd102" "CD102" "HGNC:5345 G" "intercellular adhesion molecule 2" "Synonym"
    "NCIT:C17503" "intercellular adhesion molecule 2" "synonym" "NCIT:C51156"
    "ICAM2" "synonym"))
  ("CD143"
   ("cd143" "CD143" "HGNC:2707 G" "angiotensin I converting enzyme" "Synonym"
    "NCIT:C91296" "ACE" "synonym" "NCIT:C91297" "angiotensin-converting enzyme"
    "synonym"))
  ("CD172a"
   ("cd172a" "CD172A" "NCIT:C51031" "SIRPA" "synonym" "," "CD172a"
    "HGNC:9662 G" "signal regulatory protein alpha" "Synonym"))
  ("CD19+" ("cd19+" "CD19+" "NCIT:C129255" "CD19 positive" "synonym"))
  ("CD200R2"
   ("cd200r2" "CD200R2" "HGNC:24665 G" "CD200 receptor 1 like" "Synonym"))
  ("CD277"
   ("cd277" "CD277" "HGNC:1138 G" "butyrophilin subfamily 3 member A1"
    "Synonym"))
  ("CD278"
   ("cd278" "CD278" "HGNC:5351 G" "inducible T cell costimulator" "Synonym"
    "NCIT:C94802" "ICOS" "synonym" "NCIT:C94803"
    "inducible T-cell costimulator" "synonym"))
  ("CD300lf"
   ("cd300lf" "CD300LF" "HGNC:29883 G" "CD300 molecule like family member f"
    "Approved Symbol"))
  ("CD370"
   ("cd370" "CD370" "HGNC:26705 G" "C-type lectin domain containing 9A"
    "Synonym"))
  ("CD3d"
   ("cd3d" "CD3D" "HGNC:1673 G" "CD3d molecule" "Approved Symbol" "NCIT:C38899"
    "T-cell surface glycoprotein CD3 delta chain" "synonym" "NCIT:C52021"
    "CD3D" "name" "," "CD3d" "NCIT:C38899"
    "T-cell surface glycoprotein CD3 delta chain" "synonym"))
  ("CD3e"
   ("cd3e" "CD3E" "HGNC:1674 G" "CD3e molecule" "Approved Symbol" "NCIT:C25792"
    "T-cell surface glycoprotein CD3 epsilon chain" "synonym" "NCIT:C52022"
    "CD3E" "name"))
  ("CD45R" ("cd45r" "CD45R" "NCIT:C49531" "PTPRC" "synonym"))
  ("CD79" ("cd79" "CD79" "NCIT:C114991" "CD79" "name"))
  ("CD8b"
   ("cd8b" "CD8B" "HGNC:1707 G" "CD8b molecule" "Approved Symbol" "NCIT:C17441"
    "T-cell surface glycoprotein CD8 beta chain" "synonym" "NCIT:C51135" "CD8B"
    "name"))
  ("CD8b2" ("cd8b2" "CD8B2" "HGNC:1708 G" "CD8b2 molecule" "Approved Symbol"))
  ("CD91"
   ("cd91" "CD91" "HGNC:6692 G" "LDL receptor related protein 1" "Synonym"
    "NCIT:C95473" "LRP1" "synonym" "NCIT:C95474"
    "prolow-density lipoprotein receptor-related protein 1" "synonym"))
  ("CDw52"
   ("cdw52" "CDW52" "HGNC:1804 G" "CD52 molecule" "Previous Symbol"
    "NCIT:C38908" "CAMPATH-1 antigen" "synonym" "NCIT:C51036" "CD52" "synonym"
    "," "CDw52" "UP:P31358 H" "CAMPATH-1 antigen" "AltName: Full" "NCIT:C38908"
    "CAMPATH-1 antigen" "synonym"))
  ("CF33" ("cf33" "CF33" "CVCL:5259" "CF33.MT" "RELATED synonym"))
  ("CH13" ("ch13" "Ch-13" "CVCL:8951" "Ch13" "name"))
  ("CH200" ("ch200" "CH-200" "MESH:C014895" "CH 200" "SY"))
  ("CH3COOH"
   ("ch3cooh" "CH3-COOH" "CHEBI:15366" "acetic acid" "RELATED synonym"))
  ("CHCl3" ("chcl3" "CHCl3" "CHEBI:35255" "chloroform" "RELATED synonym"))
  ("CI4" ("ci4" "CI-4" "MESH:C098401" "cyclo(Arg-Pro)" "SY"))
  ("CLL2" ("cll2" "cll2" "UP:P59898" "Beta-toxin Cll2" "RecName: Short"))
  ("CM9" ("cm9" "CM9" "CVCL:Y624" "CM-9" "name"))
  ("CMT2I"
   ("cmt2i" "CMT2I" "Orphanet:99942"
    "Autosomal dominant Charcot-Marie-Tooth disease type 2I" "EXACT synonym"
    "HGNC:7225 G" "myelin protein zero" "Synonym"))
  ("COR1" ("cor1" "cor1" "XFAM:PF04803 Family" "cor1" "ID"))
  ("CP10"
   ("cp10" "CP-10" "MESH:C100139" "quinterenol" "SY" "NCIT:C29927"
    "protein S100-A8" "synonym" "NCIT:C52263" "S100A8" "synonym"))
  ("CP66" ("cp66" "CP66" "CVCL:1144" "CP66-MEL" "RELATED synonym"))
  ("CS5"
   ("cs5" "CS-5" "HGNC:2442 G" "chorionic somatomammotropin hormone like 1"
    "Synonym" "," "CS5" "UP:P19954"
    "Ribosome-binding factor PSRP1, chloroplastic" "AltName: Short"))
  ("CSP2"
   ("csp2" "CSP-2" "UP:P72507" "Competence-stimulating peptide type 2"
    "RecName: Short"))
  ("CY7" ("cy7" "CY7" "CVCL:1Q03" "CY7" "name"))
  ("CYP2C19*1"
   ("cyp2c19*1" "CYP2C19*1" "NCIT:C45598" "CYP2C19*1 allele" "synonym"))
  ("CYP2C19*2"
   ("cyp2c19*2" "CYP2C19*2" "NCIT:C45600" "CYP2C19*2 allele" "synonym"))
  ("CYP2D6*1"
   ("cyp2d6*1" "CYP2D6*1" "NCIT:C45616" "CYP2D6*1 allele" "synonym"))
  ("CYP3A5*3"
   ("cyp3a5*3" "CYP3A5*3" "NCIT:C46021" "CYP3A5*3 allele" "synonym"))
  ("Ca++"
   ("ca++" "Ca++" "NCIT:C61660" "calcium cation" "synonym" "NCIT:C68242" "Ca2+"
    "synonym"))
  ("CaMKIIβ"
   ("camkiiβ" "CaMKIIβ" "HGNC:1461 G"
    "calcium/calmodulin dependent protein kinase II beta" "Synonym"))
  ("Cbp80"
   ("cbp80" "CBP80" "HGNC:7658 G" "nuclear cap binding protein subunit 1"
    "Synonym" "UP:Q09161 H" "Nuclear cap-binding protein subunit 1"
    "AltName: Short" "UP:Q3UYV9 M" "Nuclear cap-binding protein subunit 1"
    "AltName: Short" "UP:Q10LJ0 R" "Nuclear cap-binding protein subunit 1"
    "AltName: Short"))
  ("Ccbl1"
   ("ccbl1" "CCBL1" "HGNC:1564 G" "kynurenine aminotransferase 1"
    "Previous Symbol"))
  ("Cd107a"
   ("cd107a" "CD107a" "HGNC:6499 G" "lysosomal associated membrane protein 1"
    "Synonym" "NCIT:C104628" "LAMP1" "synonym"))
  ("Cd26"
   ("cd26" "CD26" "HGNC:3009 G" "dipeptidyl peptidase 4" "Previous Symbol"
    "NCIT:C91299" "DPP4" "synonym" "NCIT:C91300" "dipeptidyl peptidase 4"
    "synonym"))
  ("Cd40"
   ("cd40" "CD40" "HGNC:11919 G" "CD40 molecule" "Approved Symbol"
    "NCIT:C17281" "tumor necrosis factor receptor superfamily member 5"
    "synonym" "NCIT:C51382" "CD40" "name" "NCIT:C82006" "CD40 measurement"
    "synonym" "NCIT:C82006" "CD40 measurement" "synonym" "NCIT:C82006"
    "CD40 measurement" "synonym"))
  ("ChlaDUB1"
   ("chladub1" "chlaDub1" "UP:B0B9A0" "Deubiquitinase and deneddylase Dub1"
    "RecName: Short" "UP:etc" "" "fake"))
  ("Clec7a"
   ("clec7a" "CLEC7A" "HGNC:14558 G" "C-type lectin domain containing 7A"
    "Approved Symbol" "NCIT:C122762" "CLEC7A" "name"))
  ("Cor1" ("cor1" "cor1" "XFAM:PF04803 Family" "cor1" "ID"))
  ("Coy1" ("coy1" "COY1" "NCIT:C95579" "CUX1" "synonym"))
  ("Cp40" ("cp40" "CP40" "UP:Q29549" "Clusterin" "AltName: Full"))
  ("Creb1"
   ("creb1" "CREB-1" "UP:P27925"
    "Cyclic AMP-responsive element-binding protein 1" "RecName: Short"
    "UP:P16220 H" "Cyclic AMP-responsive element-binding protein 1"
    "RecName: Short" "UP:Q01147 M"
    "Cyclic AMP-responsive element-binding protein 1" "RecName: Short"
    "UP:P15337" "Cyclic AMP-responsive element-binding protein 1"
    "RecName: Short" "NCIT:C38537"
    "cyclic AMP-responsive element-binding protein 1" "synonym" "," "CREB1"
    "HGNC:2345 G" "cAMP responsive element binding protein 1" "Approved Symbol"
    "NCIT:C38537" "cyclic AMP-responsive element-binding protein 1" "synonym"
    "NCIT:C52529" "CREB1" "name"))
  ("Ct28"
   ("ct28" "CT-28" "UP:Q9P127 H" "Leucine zipper protein 4" "AltName: Short"
    "," "CT28" "HGNC:24971 G" "leucine zipper protein 4" "Synonym"
    "UP:Q9P127 H" "Leucine zipper protein 4" "AltName: Short"))
  ("Ct29"
   ("ct29" "CT29" "HGNC:24054 G" "kinetochore scaffold 1" "Synonym"
    "UP:Q8NG31 H" "Kinetochore scaffold 1" "AltName: Short" "NCIT:C97379"
    "KNL1" "synonym" "NCIT:C97380" "kinetochore scaffold 1" "synonym"))
  ("Ct30"
   ("ct30" "CT30" "HGNC:24603 G" "transcription factor Dp family member 3"
    "Synonym" "UP:Q5H9I0 H" "Transcription factor Dp family member 3"
    "AltName: Short"))
  ("Ct5"
   ("ct5" "CT5" "UP:L0GAZ8" "Antimicrobial peptide UyCT5" "RecName: Short"))
  ("Cy7" ("cy7" "CY7" "CVCL:1Q03" "CY7" "name"))
  ("Cyp2a"
   ("cyp2a" "CYP2A" "HGNC:2610 G"
    "cytochrome P450 family 2 subfamily A member 6" "Synonym" "HGNC:2611 G"
    "cytochrome P450 family 2 subfamily A member 7" "Synonym" "HGNC:2608 G"
    "cytochrome P450 family 2 subfamily A member 13" "Synonym" "NCIT:C52355"
    "CYP2A6" "synonym" "NCIT:C116971" "CYP2A7" "synonym" "NCIT:C117154"
    "CYP2A13" "synonym"))
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
  ("DBA1" ("dba1" "DBA1" "NCIT:C53162" "RPS19" "synonym"))
  ("DBA2" ("dba2" "DBA2" "EFO:0005184" "DBA/2J" "EXACT synonym"))
  ("DC1"
   ("dc1" "DC1" "CVCL:6B02" "DC1" "name" "XFAM:PF03107 Domain" "C1 2" "PI"))
  ("DENV1" ("denv1" "DENV-1" "NCIT:C112266" "dengue virus 1" "synonym"))
  ("DESC1"
   ("desc1" "DESC1" "HGNC:24465 G" "transmembrane serine protease 11E"
    "Synonym"))
  ("DESC3"
   ("desc3" "DESC-3" "UP:Q3UQ41 M" "Transmembrane protease serine 11A"
    "AltName: Short"))
  ("DFNB8"
   ("dfnb8" "DFNB8" "HGNC:11877 G" "transmembrane serine protease 3"
    "Previous Symbol"))
  ("DH2"
   ("dh2" "DH-2" "UP:P82015" "Diuretic hormone 2" "RecName: Short" "UP:P24858"
    "Diuretic hormone 2" "RecName: Short"))
  ("DL2" ("dl2" "DL2" "CVCL:Z232" "Schneider 2" "RELATED synonym"))
  ("DM20"
   ("dm20" "DM20" "UP:P79826" "Myelin proteolipid protein" "AltName: Full"))
  ("DMI1" ("dmi1" "DMI-1" "MESH:C098700" "8-methylpentadecanoic acid" "SY"))
  ("DNAJC14"
   ("dnajc14" "DNAJC14" "HGNC:24581 G"
    "DnaJ heat shock protein family (Hsp40) member C14" "Approved Symbol"))
  ("DP107" ("dp107" "DP107" "MESH:C102014" "peptide T21" "SY"))
  ("DP178" ("dp178" "DP178" "NCIT:C2105" "enfuvirtide" "synonym"))
  ("DRB4" ("drb4" "DRB4" "NCIT:C71262" "HLA-DRB4" "synonym"))
  ("Der3" ("der3" "DER3" "HGNC:20738 G" "synoviolin 1" "Synonym"))
  ("Dhx9"
   ("dhx9" "DHX9" "HGNC:2750 G" "DExH-box helicase 9" "Approved Symbol"))
  ("DnajB1"
   ("dnajb1" "DNAJB1" "HGNC:5270 G"
    "DnaJ heat shock protein family (Hsp40) member B1" "Approved Symbol"
    "NCIT:C122561" "DNAJB1" "name" "NCIT:C122562"
    "dnaJ homolog subfamily B member 1" "synonym"))
  ("Dp3"
   ("dp3" "DP3" "HGNC:583 G" "APC regulator of WNT signaling pathway" "Synonym"
    "HGNC:6207 G" "junction plakoglobin" "Synonym" "NCIT:C51178" "JUP"
    "synonym" "NCIT:C52458" "APC" "synonym" "," "Dp-3" "UP:Q64163 M"
    "Transcription factor Dp-2" "AltName: Full"))
  ("Dpm1"
   ("dpm1" "DPM1" "HGNC:3005 G"
    "dolichyl-phosphate mannosyltransferase subunit 1, catalytic"
    "Approved Symbol"))
  ("Dr12"
   ("dr12" "DR-12" "UP:Q95IE3 H"
    "HLA class II histocompatibility antigen, DRB1-12 beta chain"
    "AltName: Short" "," "DR12" "UP:Q95IE3 H"
    "HLA class II histocompatibility antigen, DRB1-12 beta chain"
    "AltName: Short"))
  ("Ds3"
   ("ds3" "DS-3" "CVCL:C450" "DS-3" "name" "," "DS3" "CVCL:7895" "DS3" "name"
    "UP:P80279" "Dermaseptin-3" "AltName: Short"))
  ("Dspc1"
   ("dspc1" "DSPC1" "HGNC:32388 G" "synapse differentiation inducing 1 like"
    "Synonym" "UP:A4IFJ1"
    "Synapse differentiation-inducing gene protein 1-like" "AltName: Short"
    "UP:Q5TZE2" "Synapse differentiation-inducing gene protein 1-like"
    "AltName: Short" "UP:A6NDD5 H"
    "Synapse differentiation-inducing gene protein 1-like" "AltName: Short"
    "UP:Q3USQ7 M" "Synapse differentiation-inducing gene protein 1-like"
    "AltName: Short"))
  ("Dspc2"
   ("dspc2" "DSPC2" "HGNC:15885 G" "synapse differentiation inducing 1"
    "Synonym" "UP:Q08DM6" "Synapse differentiation-inducing gene protein 1"
    "AltName: Short" "UP:Q9H7V2 H"
    "Synapse differentiation-inducing gene protein 1" "AltName: Short"
    "UP:Q4R532" "Synapse differentiation-inducing gene protein 1"
    "AltName: Short" "UP:A2ANU3 M"
    "Synapse differentiation-inducing gene protein 1" "AltName: Short"
    "UP:Q58DZ9" "Synapse differentiation-inducing gene protein 1"
    "AltName: Short"))
  ("Dw2"
   ("dw2" "Dw2" "UP:Q30154 H"
    "HLA class II histocompatibility antigen, DR beta 5 chain"
    "AltName: Full"))
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
  ("EC2"
   ("ec2" "EC2" "CVCL:5V06" "EC9706 clone EC2" "RELATED synonym" "HGNC:11627 G"
    "transcription factor 15" "Synonym"))
  ("EC50" ("ec50" "EC50" "CVCL:IR37" "EC-50" "name"))
  ("EID50"
   ("eid50" "EID50" "NCIT:C70532" "50 percent embryo infective dose" "synonym"
    "NCIT:C70532" "50 percent embryo infective dose" "synonym"))
  ("ENA78"
   ("ena78" "ENA-78" "HGNC:10642 G" "C-X-C motif chemokine ligand 5" "Synonym"
    "NCIT:C1368" "recombinant ENA-78" "synonym" "NCIT:C20470"
    "C-X-C motif chemokine 5" "synonym" "NCIT:C49766" "CXCL5" "synonym" ","
    "ENA78" "CHEBI:138180" "chemokine ligand 5" "RELATED synonym" "NCIT:C49766"
    "CXCL5" "synonym" "NCIT:C82010"
    "epithelial neutrophil-activating peptide 78 measurement" "synonym"))
  ("ER+"
   ("er+" "ER+" "NCIT:C15492" "estrogen receptor positive" "synonym"
    "NCIT:C15492" "estrogen receptor positive" "synonym"))
  ("ER22" ("er22" "ER22" "CVCL:0H89" "39ER22" "RELATED synonym"))
  ("ESAT6"
   ("esat6" "ESAT-6" "UP:P0A565" "6 kDa early secretory antigenic target"
    "AltName: Full" "UP:P9WNK6" "6 kDa early secretory antigenic target"
    "AltName: Full" "UP:P9WNK7" "6 kDa early secretory antigenic target"
    "AltName: Full"))
  ("EtMIC2" ("etmic2" "etmic-2" "XFAM:PF06670 Family" "etmic-2" "ID"))
  ("F119" ("f119" "F119" "CVCL:J278" "F119" "name"))
  ("F127" ("f127" "F127" "MESH:C078661" "UCON 50-HB-5100" "SY"))
  ("F128" ("f128" "F12-8" "CVCL:C633" "F12-8" "name"))
  ("F13" ("f13" "F13" "CVCL:RZ87" "F13" "name" "EFO:0002711" "F13" "name"))
  ("F344"
   ("f344" "F344" "EFO:0000176" "Fischer 344" "EXACT synonym" "NCIT:C14401"
    "F344, rat strain" "synonym" "NCIT:C14401" "F344, rat strain" "synonym"))
  ("F8A1"
   ("f8a1" "F8A1" "HGNC:3547 G" "coagulation factor VIII associated 1"
    "Approved Symbol"))
  ("FADH2"
   ("fadh2" "FADH2" "CHEBI:58307" "FADH2(2-)" "RELATED synonym" "CHEBI:17877"
    "FADH2" "name"))
  ("FALL39"
   ("fall39" "FALL-39" "HGNC:1472 G" "cathelicidin antimicrobial peptide"
    "Synonym" "," "FALL39" "HGNC:1472 G" "cathelicidin antimicrobial peptide"
    "Synonym"))
  ("FAM63B"
   ("fam63b" "FAM63B" "HGNC:26954 G" "MINDY lysine 48 deubiquitinase 2"
    "Previous Symbol"))
  ("FAP59"
   ("fap59" "FAP59" "HGNC:25244 G" "coiled-coil domain containing 39"
    "Synonym"))
  ("FCHo1"
   ("fcho1" "FCHO1" "HGNC:29002 G"
    "FCH and mu domain containing endocytic adaptor 1" "Approved Symbol"))
  ("FEV1"
   ("fev1" "FEV1" "EFO:0004314" "forced expiratory volume" "EXACT synonym"
    "NCIT:C38084" "forced expiratory volume in 1 second" "synonym"
    "NCIT:C38084" "forced expiratory volume in 1 second" "synonym"))
  ("FEV6"
   ("fev6" "FEV6" "NCIT:C47843" "forced expiratory volume in 6 seconds"
    "synonym" "NCIT:C47843" "forced expiratory volume in 6 seconds" "synonym"))
  ("FF1" ("ff1" "FF1" "CVCL:RP34" "FF-1" "name"))
  ("FIO2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("FL3" ("fl3" "FL3" "CVCL:M897" "T24T FL3" "RELATED synonym"))
  ("FLJ23834"
   ("flj23834" "FLJ23834" "HGNC:26308 G" "cadherin related family member 3"
    "Synonym"))
  ("Fal1"
   ("fal1" "FAL1" "HGNC:43713 R"
    "focally amplified long non-coding RNA in epithelial cancer" "Synonym"
    "NCIT:C119656" "FALEC" "synonym" "NCIT:C119657"
    "focally amplified long non-coding RNA in epithelial cancer" "synonym" ","
    "Fal1" "HGNC:18683 G" "eukaryotic translation initiation factor 4A3"
    "Synonym"))
  ("FiO2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("Fio2"
   ("fio2" "FIO2" "NCIT:C38082" "inspired oxygen fraction test" "synonym"
    "NCIT:C38082" "inspired oxygen fraction test" "synonym"))
  ("G085" ("g085" "G085" "CVCL:E670" "G085" "name"))
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
  ("G1P1"
   ("g1p1" "G1P1" "HGNC:225 G" "adenosine deaminase RNA specific"
    "Previous Symbol" "NCIT:C157284" "ADAR" "synonym"))
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
  ("GA1"
   ("ga1" "GA1" "CHEBI:27717" "gibberellin A1" "RELATED synonym" "CHEBI:27938"
    "beta-D-Gal-(1->3)-beta-D-GalNAc-(1->4)-beta-D-Gal-(1->4)-beta-D-Glc-(1<->1')-Cer"
    "RELATED synonym" "Orphanet:25" "Glutaryl-CoA dehydrogenase deficiency"
    "EXACT synonym"))
  ("GA98" ("ga98" "GA98" "CHEBI:133480" "gibberellin A98" "RELATED synonym"))
  ("GDH2"
   ("gdh2" "GDH-2" "UP:P80053" "Glutamate dehydrogenase 2" "RecName: Short"))
  ("GM1a"
   ("gm1a" "GM1a" "CHEBI:18216"
    "alpha-N-acetylneuraminosyl-(2->3)-[beta-D-galactosyl-(1->3)-N-acetyl-beta-D-galactosaminyl-(1->4)]-beta-D-galactosyl-(1->4)-beta-D-glucosyl-(1<->1')-N-acylsphingosine"
    "RELATED synonym"))
  ("GOS28"
   ("gos28" "GOS-28" "HGNC:4430 G" "golgi SNAP receptor complex member 1"
    "Synonym" "UP:O95249 H" "Golgi SNAP receptor complex member 1"
    "AltName: Short" "UP:O88630 M" "Golgi SNAP receptor complex member 1"
    "AltName: Short" "," "GOS28" "HGNC:4430 G"
    "golgi SNAP receptor complex member 1" "Synonym" "UP:Q62931"
    "Golgi SNAP receptor complex member 1" "AltName: Short"))
  ("GQ1b"
   ("gq1b" "GQ1b" "CHEBI:27515"
    "alpha-Neu5Ac-(2->8)-alpha-Neu5Ac-(2->3)-beta-Gal-D-(1->3)-beta-D-GalNAc-(1->4)-[alpha-Neu5Ac-(2->8)-alpha-Neu5Ac-(2->3)]-beta-D-Gal-(1->4)-beta-D-Glc-(1<->1')-Cer"
    "RELATED synonym"))
  ("GRIF1"
   ("grif1" "GRIF-1" "HGNC:13206 G" "trafficking kinesin protein 2" "Synonym"
    "UP:Q8R2H7" "Trafficking kinesin-binding protein 2" "AltName: Short"))
  ("GSK1265744" ("gsk1265744" "GSK1265744" "MESH:C584914" "GSK1265744" "NM"))
  ("GSK2656157"
   ("gsk2656157" "GSK2656157" "CHEBI:139047" "GSK2656157" "name"
    "MESH:C000597302" "GSK2656157" "NM"))
  ("GSX1"
   ("gsx1" "GSX1" "HGNC:20374 G" "GS homeobox 1" "Approved Symbol" "UP:P02968"
    "Flagellin" "AltName: Full"))
  ("GW0385" ("gw0385" "GW0385" "MESH:C494906" "GW0385" "NM"))
  ("Ga1"
   ("ga1" "GA1" "CHEBI:27717" "gibberellin A1" "RELATED synonym" "CHEBI:27938"
    "beta-D-Gal-(1->3)-beta-D-GalNAc-(1->4)-beta-D-Gal-(1->4)-beta-D-Glc-(1<->1')-Cer"
    "RELATED synonym" "Orphanet:25" "Glutaryl-CoA dehydrogenase deficiency"
    "EXACT synonym"))
  ("Gbp6"
   ("gbp6" "GBP-6" "UP:Q6ZN66 H" "Guanylate-binding protein 6" "AltName: Short"
    "UP:Q5R9T9" "Guanylate-binding protein 6" "AltName: Short" "," "GBP6"
    "HGNC:25395 G" "guanylate binding protein family member 6"
    "Approved Symbol"))
  ("Gdf8"
   ("gdf8" "GDF-8" "UP:O14793 H" "Growth/differentiation factor 8"
    "RecName: Short" "UP:O08689 M" "Growth/differentiation factor 8"
    "RecName: Short" "NCIT:C26328" "growth/Differentiation factor 8" "synonym"
    "," "GDF8" "HGNC:4223 G" "myostatin" "Previous Symbol" "NCIT:C26328"
    "growth/Differentiation factor 8" "synonym" "NCIT:C51537" "MSTN" "synonym"
    "NCIT:C135423" "growth differentiation factor 8 measurement" "synonym"))
  ("Ge1"
   ("ge1" "GE-1" "CVCL:T724" "GE-1" "name" "," "GE1" "CVCL:E112" "GE1" "name"
    "UP:A0A1D8EJG8" "4-O-methyl-glucuronoyl methylesterase 1" "AltName: Short"
    "UP:P0CT87" "4-O-methyl-glucuronoyl methylesterase 1" "AltName: Short"
    "UP:B2ABS0" "4-O-methyl-glucuronoyl methylesterase" "AltName: Short"
    "UP:P0CU53" "4-O-methyl-glucuronoyl methylesterase 1" "AltName: Short" ","
    "Ge-1" "CVCL:DD92" "Ge1" "name" "HGNC:17157 G"
    "enhancer of mRNA decapping 4" "Synonym" "," "gE-1" "UP:P04488 H"
    "Envelope glycoprotein E" "AltName: Full" "UP:Q703F0 H"
    "Envelope glycoprotein E" "AltName: Full"))
  ("Ge2"
   ("ge2" "GE-2" "CVCL:VN47" "GE-2" "name" "," "GE2" "UP:G2QJR6"
    "4-O-methyl-glucuronoyl methylesterase" "AltName: Short" "UP:P0CT88"
    "4-O-methyl-glucuronoyl methylesterase 2" "AltName: Short" "," "gE-2"
    "UP:P89475 H" "Envelope glycoprotein E" "AltName: Full"))
  ("Gemin1"
   ("gemin1" "GEMIN1" "HGNC:11117 G" "survival of motor neuron 1, telomeric"
    "Synonym" "HGNC:11118 G" "survival of motor neuron 2, centromeric"
    "Synonym" "NCIT:C127864" "SMN1" "synonym" "NCIT:C127869" "SMN2" "synonym"
    "," "gemin-1" "UP:Q86AD2" "Component of gems protein 1" "AltName: Full"
    "UP:Q16637 H" "Survival motor neuron protein" "AltName: Full"
    "NCIT:C127871" "survival motor neuron protein" "synonym"))
  ("Gene33"
   ("gene33" "GENE-33" "HGNC:18185 G" "ERBB receptor feedback inhibitor 1"
    "Synonym" "NCIT:C101730" "ERRFI1" "synonym"))
  ("Get2"
   ("get2" "GET2" "HGNC:1471 G" "calcium modulating ligand" "Synonym"
    "XFAM:PF08690 Family" "GET2" "ID"))
  ("Get4"
   ("get4" "GET4" "HGNC:21690 G"
    "guided entry of tail-anchored proteins factor 4" "Approved Symbol"
    "FA:01497" "GET4 family" "ID"))
  ("Get5" ("get5" "GET5" "HGNC:12505 G" "ubiquitin like 4A" "Synonym"))
  ("Gp3"
   ("gp3" "GP3" "UP:P49859" "Portal protein" "AltName: Full"
    "XFAM:PF03076 Family" "GP3" "ID" "," "Gp3" "UP:P00641" "Endonuclease I"
    "AltName: Short" "UP:O64199" "Gene 3 protein" "AltName: Full" "UP:Q05242"
    "Gene 3 protein" "AltName: Full" "," "gp3" "UP:D3WAC2"
    "Probable HNH endonuclease" "AltName: Short" "UP:etc" "" "fake"))
  ("Grp58"
   ("grp58" "GRP58" "HGNC:4606 G"
    "protein disulfide isomerase family A member 3" "Previous Symbol"
    "NCIT:C112120" "PDIA3" "synonym"))
  ("Gsta1"
   ("gsta1" "GSTA1" "HGNC:4626 G" "glutathione S-transferase alpha 1"
    "Approved Symbol" "NCIT:C104975" "GSTA1" "name" "NCIT:C104976"
    "glutathione S-transferase A1" "synonym"))
  ("Gsta2"
   ("gsta2" "GSTA2" "HGNC:4627 G" "glutathione S-transferase alpha 2"
    "Approved Symbol"))
  ("H0104" ("h0104" "H0104" "CVCL:E700" "HO104" "RELATED synonym"))
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
  ("H2SO4" ("h2so4" "H2SO4" "CHEBI:26836" "sulfuric acid" "RELATED synonym"))
  ("H2b"
   ("h2b" "H2B" "FPLX:Histone_H2B" "Histone-H2B" "EXACT synonym" "HGNC:4760 G"
    "H2B clustered histone 21" "Previous Symbol" "UP:P54348" "Histone H2B.5"
    "RecName: Short" "NCIT:C154300" "histone H2B gene" "synonym"))
  ("H34"
   ("h34" "H-34" "UP:C0QYX7" "Uncharacterized protein BHWA1_00569"
    "AltName: Full" "," "H3-4" "CVCL:1S35" "GM11749" "RELATED synonym"
    "HGNC:4778 G" "H3.4 histone" "Approved Symbol" "NCIT:C154670" "H3-4" "name"
    "NCIT:C154671" "histone H3.1t" "synonym"))
  ("H357" ("h357" "H357" "CVCL:2462" "H357" "name"))
  ("H369" ("h369" "H369" "CVCL:A558" "NCI-H369" "RELATED synonym"))
  ("H3FB"
   ("h3fb" "H3FB" "HGNC:4767 G" "H3 clustered histone 4" "Previous Symbol"
    "NCIT:C154501" "HIST1H3D" "synonym"))
  ("H3K4me1"
   ("h3k4me1" "H3K4Me1" "CHEBI:85042" "H3K4Me1" "name" "," "H3K4me1"
    "NCIT:C120024" "histone H3 methyl lys4" "synonym"))
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
  ("HA7" ("ha7" "HA-7" "MESH:C109999" "HA 7" "SY"))
  ("HAP40"
   ("hap40" "HAP40" "UP:P23610 H" "40-kDa huntingtin-associated protein"
    "RecName: Short"))
  ("HE1"
   ("he1" "HE-1" "CVCL:2922" "HE-1" "name" "," "HE1" "HGNC:14537 G"
    "NPC intracellular cholesterol transporter 2" "Synonym"))
  ("HE21" ("he21" "HE21" "CVCL:0T80" "HE21" "name"))
  ("HHV4"
   ("hhv4" "HHV-4" "NCIT:C14204" "epstein-barr virus" "synonym" "NCIT:C14204"
    "epstein-barr virus" "synonym"))
  ("HIV1"
   ("hiv1" "HIV-1" "NCIT:C14220" "human immunodeficiency virus 1" "synonym"
    "NCIT:C14220" "human immunodeficiency virus 1" "synonym"))
  ("HIV2"
   ("hiv2" "HIV-2" "NCIT:C14221" "human immunodeficiency virus 2" "synonym"
    "NCIT:C14221" "human immunodeficiency virus 2" "synonym"))
  ("HL1"
   ("hl1" "HL-1" "CVCL:D145" "HL-1 Friendly Myeloma-653" "RELATED synonym"
    "HGNC:18259 G" "intelectin 1" "Synonym" "UP:P07306 H"
    "Asialoglycoprotein receptor 1" "AltName: Short" "UP:P34927 M"
    "Asialoglycoprotein receptor 1" "AltName: Short" "UP:P02706"
    "Asialoglycoprotein receptor 1" "AltName: Short" "NCIT:C124077" "ITLN1"
    "synonym" "," "HL1" "CVCL:0303" "HL-1" "name" "HGNC:2950 G"
    "dynein axonemal heavy chain 5" "Synonym" "NCIT:C124077" "ITLN1" "synonym"
    "," "Hl1" "UP:P20279" "50S ribosomal protein L3" "AltName: Full"))
  ("HL18"
   ("hl18" "HL-18" "HGNC:2945 G" "dynein axonemal heavy chain 14" "Synonym" ","
    "HL18" "HGNC:2945 G" "dynein axonemal heavy chain 14" "Synonym"))
  ("HL2"
   ("hl2" "H-L2" "CVCL:N700" "HL-2" "name" "," "HL-2" "HGNC:2951 G"
    "dynein axonemal heavy chain 6" "Synonym" "HGNC:20599 G" "intelectin 2"
    "Synonym" "UP:P07307 H" "Asialoglycoprotein receptor 2" "AltName: Short"
    "UP:P24721 M" "Asialoglycoprotein receptor 2" "AltName: Short" "UP:P08290"
    "Asialoglycoprotein receptor 2" "AltName: Short"))
  ("HP14" ("hp14" "HP14" "CVCL:T611" "MDCC-HP14" "RELATED synonym"))
  ("Ha4" ("ha4" "Ha-4" "HGNC:6452 G" "keratin 34" "Synonym"))
  ("Hbs1"
   ("hbs1" "HBS1" "HGNC:4834 G" "HBS1 like translational GTPase" "Synonym"))
  ("Hg38"
   ("hg38" "HG38" "HGNC:4504 G"
    "leucine rich repeat containing G protein-coupled receptor 5" "Synonym"
    "NCIT:C101485" "LGR5" "synonym"))
  ("HuH7"
   ("huh7" "HuH-7" "CVCL:0336" "Huh-7" "name" "," "Huh-7" "EFO:0005384" "HuH-7"
    "name" "," "Huh7" "HGNC:30049 R" "MIR7-3 host gene" "Synonym"))
  ("Huh7"
   ("huh7" "HuH-7" "CVCL:0336" "Huh-7" "name" "," "Huh-7" "EFO:0005384" "HuH-7"
    "name" "," "Huh7" "HGNC:30049 R" "MIR7-3 host gene" "Synonym"))
  ("Huh7Lunet" ("huh7lunet" "Huh7-Lunet" "CVCL:U459" "Huh-7-Lunet" "name"))
  ("Hy5" ("hy5" "hY5" "HGNC:10248 R" "RNA, Ro60-associated Y5" "Synonym"))
  ("I45" ("i45" "I-45" "CVCL:M200" "I-45" "name"))
  ("ICD9"
   ("icd9" "ICD-9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym" ","
    "ICD9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym"))
  ("ICP1" ("icp1" "ICP-1" "UP:Q6KCA4" "Amoebiasin-1" "AltName: Short"))
  ("IDX184" ("idx184" "IDX184" "MESH:C557801" "IDX184" "NM"))
  ("IFI27L2"
   ("ifi27l2" "IFI27L2" "HGNC:19753 G"
    "interferon alpha inducible protein 27 like 2" "Approved Symbol"))
  ("IFNa2"
   ("ifna2" "IFNA2" "HGNC:5423 G" "interferon alpha 2" "Approved Symbol"
    "NCIT:C26318" "interferon alpha-2" "synonym" "NCIT:C52797" "IFNA2" "name"))
  ("IFNb1"
   ("ifnb1" "IFNB1" "HGNC:5434 G" "interferon beta 1" "Approved Symbol"))
  ("IFNl2"
   ("ifnl2" "IFNL2" "HGNC:18364 G" "interferon lambda 2" "Approved Symbol"
    "NCIT:C104348" "IFNL2" "name" "NCIT:C104349" "interferon lambda-2"
    "synonym"))
  ("IFNαB" ("ifnαb" "IFN-αB" "HGNC:5429 G" "interferon alpha 8" "Synonym"))
  ("IFNλ3"
   ("ifnλ3" "IFN-λ-3" "UP:B4ER10" "Interferon lambda-3" "RecName: Short"
    "UP:Q8IZI9 H" "Interferon lambda-3" "RecName: Short" "UP:Q8CGK6 M"
    "Interferon lambda-3" "RecName: Short" "NCIT:C106357" "interferon lambda-3"
    "synonym"))
  ("IFNλR1"
   ("ifnλr1" "IFN-λ-R1" "UP:Q8IU57 H" "Interferon lambda receptor 1"
    "RecName: Short"))
  ("IH1"
   ("ih1" "IH-1" "CVCL:WZ44" "IH-1" "name" "," "IH1" "UP:Q9CQK7 M"
    "RWD domain-containing protein 1" "AltName: Full"))
  ("IL10b"
   ("il10b" "IL10B" "HGNC:11346 G" "interleukin 24" "Synonym" "MESH:C097541"
    "interleukin-24" "SY" "NCIT:C50932" "IL24" "synonym"))
  ("IL12Rβ2"
   ("il12rβ2" "IL-12R-β-2" "UP:Q9BEG2" "Interleukin-12 receptor subunit beta-2"
    "RecName: Short" "UP:Q99665 H" "Interleukin-12 receptor subunit beta-2"
    "RecName: Short" "UP:P97378 M" "Interleukin-12 receptor subunit beta-2"
    "RecName: Short" "UP:Q8MJS1" "Interleukin-12 receptor subunit beta-2"
    "RecName: Short" "NCIT:C38919" "interleukin-12 receptor subunit beta-2"
    "synonym"))
  ("IL16R"
   ("il16r" "IL-16R" "GO:0042012" "interleukin-16 receptor activity"
    "EXACT synonym"))
  ("IL4rα"
   ("il4rα" "IL-4R-α" "UP:Q6WG24" "Interleukin-4 receptor subunit alpha"
    "RecName: Short" "UP:P24394 H" "Interleukin-4 receptor subunit alpha"
    "RecName: Short" "UP:P16382 M" "Interleukin-4 receptor subunit alpha"
    "RecName: Short" "UP:Q863Z5" "Interleukin-4 receptor subunit alpha"
    "RecName: Short" "UP:Q63257" "Interleukin-4 receptor subunit alpha"
    "RecName: Short" "NCIT:C26268" "interleukin-4 receptor subunit alpha"
    "synonym"))
  ("Ifitm2"
   ("ifitm2" "IFITM2" "HGNC:5413 G"
    "interferon induced transmembrane protein 2" "Approved Symbol"))
  ("Ifna1"
   ("ifna1" "IFNA1" "HGNC:5417 G" "interferon alpha 1" "Approved Symbol"))
  ("Ifnar2"
   ("ifnar2" "IFNAR2" "HGNC:5433 G"
    "interferon alpha and beta receptor subunit 2" "Approved Symbol"
    "NCIT:C51353" "IFNAR2" "name"))
  ("Ifngr2"
   ("ifngr2" "IFNGR2" "HGNC:5440 G" "interferon gamma receptor 2"
    "Approved Symbol" "NCIT:C51355" "IFNGR2" "name"))
  ("Ifnl2"
   ("ifnl2" "IFNL2" "HGNC:18364 G" "interferon lambda 2" "Approved Symbol"
    "NCIT:C104348" "IFNL2" "name" "NCIT:C104349" "interferon lambda-2"
    "synonym"))
  ("IgG2"
   ("igg2" "IGG2" "NCIT:C122128" "immunoglobulin G subclass 2 measurement"
    "synonym" "," "IgG2" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG2B"
   ("igg2b" "IgG2b" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG2b"
   ("igg2b" "IgG2b" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("IgG3"
   ("igg3" "IGG3" "NCIT:C122129" "immunoglobulin G subclass 3 measurement"
    "synonym" "," "IgG3" "GO:0071735" "IgG immunoglobulin complex"
    "NARROW synonym"))
  ("Imm75" ("imm75" "imm75" "XFAM:PF15660 Family" "imm75" "ID"))
  ("JF1"
   ("jf1" "JF1" "CVCL:L879" "JF1" "name" "NCIT:C14886" "JF1 mouse" "synonym"))
  ("JF5" ("jf5" "JF5" "CVCL:V085" "JF5" "name"))
  ("JK2" ("jk2" "JK2" "CVCL:VS46" "QIMR-JK2" "RELATED synonym"))
  ("JNJ63623872"
   ("jnj63623872" "JNJ-63623872" "MESH:C000605010" "pimodivir" "SY"
    "NCIT:C158086" "pimodivir" "synonym" "," "JNJ63623872" "NCIT:C158086"
    "pimodivir" "synonym"))
  ("Jc1"
   ("jc1" "JC-1" "CVCL:WN03" "JC-1" "name" "CHEBI:52097"
    "1,1',3,3'-tetraethyl-5,5',6,6'-tetrachloroimidacarbocyanine iodide"
    "RELATED synonym" "MESH:C068624"
    "5,5',6,6'-tetrachloro-1,1',3,3'-tetraethylbenzimidazolocarbocyanine"
    "SY"))
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
  ("KIAA1985"
   ("kiaa1985" "KIAA1985" "HGNC:29427 G"
    "SH3 domain and tetratricopeptide repeats 2" "Synonym"))
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
  ("LA3" ("la3" "LA3" "CVCL:T963" "LA3" "name"))
  ("LA7" ("la7" "LA7" "CVCL:3838" "LA7" "name"))
  ("LACC1"
   ("lacc1" "LACC-1" "CVCL:9U23" "LACC-1" "name" "," "LACC1" "HGNC:26789 G"
    "laccase domain containing 1" "Approved Symbol" "FA:04908" "LACC1 family"
    "ID"))
  ("LAF237"
   ("laf237" "LAF-237" "MESH:C475520"
    "1-(((3-hydroxy-1-adamantyl)amino)acetyl)-2-cyanopyrrolidine" "SY" ","
    "LAF237" "MESH:C475520"
    "1-(((3-hydroxy-1-adamantyl)amino)acetyl)-2-cyanopyrrolidine" "SY"))
  ("LC3II"
   ("lc3ii" "LC3-II" "NCIT:C105644"
    "microtubule-associated proteins 1A/1B light chain 3-II" "synonym"))
  ("LD50"
   ("ld50" "LD-50" "NCIT:C16788" "LD-50" "name" "," "LD50" "NCIT:C16788"
    "LD-50" "synonym"))
  ("LKM1"
   ("lkm1" "LKM-1" "NCIT:C96683"
    "liver kidney microsomal type 1 antibody measurement" "synonym"))
  ("LR8" ("lr8" "LR8" "HGNC:29596 G" "transmembrane protein 176B" "Synonym"))
  ("LRRC25"
   ("lrrc25" "LRRC25" "HGNC:29806 G" "leucine rich repeat containing 25"
    "Approved Symbol"))
  ("LY12" ("ly12" "Ly12" "CVCL:8796" "OCI-Ly12" "RELATED synonym"))
  ("LYS2"
   ("lys2" "LYS2" "HGNC:23993 G" "aminoadipate-semialdehyde dehydrogenase"
    "Synonym"))
  ("Lep1"
   ("lep1" "LEP1" "HGNC:29459 G" "late cornified envelope 1A" "Synonym"))
  ("Lep2"
   ("lep2" "LEP2" "HGNC:16611 G" "late cornified envelope 1B" "Synonym"))
  ("Leu9"
   ("leu9" "LEU-9" "HGNC:1695 G" "CD7 molecule" "Synonym" "," "LEU9"
    "NCIT:C51038" "CD7" "synonym" "," "leu-9" "NCIT:C38935"
    "T-cell antigen CD7" "synonym"))
  ("Log10" ("log10" "log10" "NCIT:C75941" "log10" "name"))
  ("Lps2"
   ("lps2" "LPS2" "CVCL:SA55" "LPS2" "name" "CVCL:IW35" "LS030609"
    "RELATED synonym" "UP:M1W600" "D-lysergyl-peptide-synthetase subunit 2"
    "RecName: Short" "UP:Q8J0L6" "D-lysergyl-peptide-synthetase subunit 2"
    "RecName: Short" "UP:A2TBU4" "D-lysergyl-peptide-synthetase subunit 2"
    "RecName: Short"))
  ("Lu6" ("lu6" "Lu6" "CVCL:T984" "Lu6" "name"))
  ("M05" ("m05" "M05" "CVCL:WM77" "B16-MO5" "RELATED synonym"))
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
  ("MA18"
   ("ma18" "MA1-8" "CVCL:J839" "MA1-8" "name" "," "Ma18" "CVCL:D069" "Ma-18"
    "name"))
  ("MAC387"
   ("mac387" "MAC387" "HGNC:10499 G" "S100 calcium binding protein A9"
    "Synonym" "NCIT:C52264" "S100A9" "synonym"))
  ("MACROD2"
   ("macrod2" "MACROD2" "HGNC:16126 G" "mono-ADP ribosylhydrolase 2"
    "Approved Symbol"))
  ("MF59" ("mf59" "MF59" "MESH:C089950" "MF59 oil emulsion" "SY"))
  ("MIP1B"
   ("mip1b" "MIP-1-b" "NCIT:C1467"
    "recombinant human macrophage inflammatory protein-1 beta" "synonym" ","
    "MIP-1B" "NCIT:C20477" "C-C motif chemokine 4" "synonym" "NCIT:C49748"
    "CCL4" "synonym" "," "MIP1B" "NCIT:C20477" "C-C motif chemokine 4"
    "synonym" "NCIT:C49748" "CCL4" "synonym" "NCIT:C82024"
    "macrophage inflammatory protein 1 beta measurement" "synonym"))
  ("MIP2A"
   ("mip2a" "MIP-2A" "HGNC:23068 G" "trafficking protein particle complex 2"
    "Synonym" "HGNC:10710 G" "trafficking protein particle complex 2B"
    "Synonym" "UP:P0DI82 H" "Trafficking protein particle complex subunit 2B"
    "AltName: Short" "NCIT:C49764" "CXCL2" "synonym" "," "MIP-2a" "HGNC:4603 G"
    "C-X-C motif chemokine ligand 2" "Synonym" "," "MIP2A" "NCIT:C49764"
    "CXCL2" "synonym"))
  ("MIP3A"
   ("mip3a" "MIP-3a" "HGNC:10619 G" "C-C motif chemokine ligand 20" "Synonym"
    "NCIT:C49735" "CCL20" "synonym" "," "MIP3A" "NCIT:C49735" "CCL20" "synonym"
    "NCIT:C161362" "chemokine (C-C motif) ligand 20 measurement" "synonym"))
  ("Mapk3"
   ("mapk3" "MAPK3" "HGNC:6877 G" "mitogen-activated protein kinase 3"
    "Approved Symbol" "NCIT:C17408" "mitogen-activated protein kinase 3"
    "synonym" "NCIT:C52875" "MAPK3" "name"))
  ("Mip3b"
   ("mip3b" "MIP-3b" "HGNC:10617 G" "C-C motif chemokine ligand 19" "Synonym"
    "NCIT:C49726" "CCL19" "synonym" "," "MIP3B" "NCIT:C49726" "CCL19" "synonym"
    "NCIT:C130157" "chemokine (C-C motif) ligand 19 measurement" "synonym"))
  ("Mkk3"
   ("mkk3" "MKK3" "HGNC:6843 G" "mitogen-activated protein kinase kinase 3"
    "Synonym" "NCIT:C125165" "MAP2K3" "synonym"))
  ("Mm5mt" ("mm5mt" "Mm5mt" "CVCL:5840" "Mm5MT" "name"))
  ("Molt4"
   ("molt4" "MOLT-4" "NCIT:C117119" "MOLT-4" "name" "," "MOLT4" "EFO:0001220"
    "MOLT-4" "name" "," "Molt-4" "CVCL:0013" "MOLT-4" "name"))
  ("Mov34"
   ("mov34" "MOV-34" "HGNC:2240 G" "COP9 signalosome subunit 5" "Synonym" ","
    "MOV34" "HGNC:9565 G" "proteasome 26S subunit, non-ATPase 7" "Synonym" ","
    "mov34" "XFAM:PF01398 Family" "JAB" "PI"))
  ("Mpp10"
   ("mpp10" "MPP10" "HGNC:7213 G" "M-phase phosphoprotein 10" "Synonym"
    "FA:02353" "MPP10 family" "ID" "," "mpp10" "XFAM:PF04006 Family" "mpp10"
    "ID"))
  ("Mse1"
   ("mse1" "MSE1" "HGNC:29419 G" "glutamyl-tRNA synthetase 2, mitochondrial"
    "Synonym"))
  ("Mxra8"
   ("mxra8" "MXRA8" "HGNC:7542 G" "matrix remodeling associated 8"
    "Approved Symbol"))
  ("N.D." ("n.d." "N.D." "NCIT:C39473" "naturopathic doctor" "synonym"))
  ("N03"
   ("n03" "N03" "UP:Q61477 M" "Neuroblastoma suppressor of tumorigenicity 1"
    "AltName: Full" "UP:Q06880" "Neuroblastoma suppressor of tumorigenicity 1"
    "AltName: Full" "NCIT:C53089" "NBL1" "synonym"))
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
  ("NA5"
   ("na5" "NA-5" "MESH:C043348" "acrylic acid-N-vinylpyrrolidone copolymer"
    "SY"))
  ("NA8" ("na8" "Na-8" "CVCL:S599" "NA8-MEL" "RELATED synonym"))
  ("NCD4"
   ("ncd4" "NCD-4" "MESH:C038088"
    "N-cyclohexyl-N'-(4-dimethylamino-alpha-naphthyl)carbodiimide" "SY"))
  ("ND7" ("nd7" "ND7" "CVCL:VK87" "ND7" "name"))
  ("NH4OAc"
   ("nh4oac" "NH4OAc" "CHEBI:62947" "ammonium acetate" "RELATED synonym"))
  ("NH4OH"
   ("nh4oh" "NH4OH" "CHEBI:18219" "ammonium hydroxide" "RELATED synonym"))
  ("NM009" ("nm009" "NM009" "NCIT:C109488" "curry county, NM" "synonym"))
  ("NM11" ("nm11" "NM11" "CVCL:X014" "NM11" "name"))
  ("NM283"
   ("nm283" "NM-283" "MESH:C506207" "valopicitabine" "SY" "NCIT:C72874"
    "valopicitabine dihydrochloride" "synonym"))
  ("NP94" ("np94" "NP94" "NCIT:C106350" "CIZ1" "synonym"))
  ("NS3A"
   ("ns3a" "ns3a" "UP:Q0Q4F1" "Non-structural protein 3a" "RecName: Short"
    "UP:etc" "" "fake"))
  ("NS3a"
   ("ns3a" "ns3a" "UP:Q0Q4F1" "Non-structural protein 3a" "RecName: Short"
    "UP:etc" "" "fake"))
  ("NS5b"
   ("ns5b" "ns5b" "UP:Q89786" "Non-structural protein 5b" "RecName: Short"
    "UP:P19745" "Non-structural protein 5b" "RecName: Short" "UP:Q80RZ3"
    "Non-structural protein 5b" "RecName: Short"))
  ("NS7"
   ("ns7" "NS-7" "CVCL:C804" "IMHe005-A" "RELATED synonym" "MESH:C106144"
    "4-(4-fluorophenyl)-2-methyl-6-(5-piperidinopentyloxy)pyrimidine hydrochloride"
    "SY" "," "NS7" "NCIT:C51194" "BRAF" "synonym" "," "ns7" "UP:P05992"
    "Non-structural protein 7" "RecName: Short" "UP:P04136"
    "Non-structural protein 7" "RecName: Short" "UP:P69612"
    "Non-structural protein 7" "RecName: Short" "UP:P69613"
    "Non-structural protein 7" "RecName: Short"))
  ("NaBH4"
   ("nabh4" "NaBH4" "CHEBI:50985" "sodium borohydride" "RELATED synonym"))
  ("NaN3" ("nan3" "NAN3" "CVCL:B318" "NAN-3" "name"))
  ("Neu5GC"
   ("neu5gc" "Neu5Gc" "CHEBI:62084" "N-glycoloyl-beta-neuraminic acid"
    "RELATED synonym"))
  ("Nup58"
   ("nup58" "NUP58" "HGNC:20261 G" "nucleoporin 58" "Approved Symbol"
    "FA:02568" "NUP58 family" "ID"))
  ("O91" ("o91" "O9-1" "CVCL:GS42" "O9-1" "name"))
  ("OARD1"
   ("oard1" "OARD1" "HGNC:21257 G" "O-acyl-ADP-ribose deacylase 1"
    "Approved Symbol"))
  ("OD260" ("od260" "OD260" "NCIT:C48169" "absorbance at 260nm" "synonym"))
  ("OD280" ("od280" "OD280" "NCIT:C48170" "absorbance at 280nm" "synonym"))
  ("OH1" ("oh1" "OH1" "CVCL:A765" "OH-1" "name"))
  ("OH3"
   ("oh3" "OH-3" "UP:P82662" "Alpha-elapitoxin-Oh2b" "AltName: Full" "," "OH3"
    "CVCL:A766" "OH-3" "name"))
  ("OKT4A" ("okt4a" "OKT4A" "MESH:C079851" "OKT4A monoclonal antibody" "SY"))
  ("OKT8" ("okt8" "OKT8" "CVCL:2669" "OKT 8" "RELATED synonym"))
  ("ORF4a"
   ("orf4a" "ORF4a" "UP:K9N4V0 H" "Non-structural protein ORF4a"
    "RecName: Short"))
  ("ORF7"
   ("orf7" "ORF7" "UP:P21290" "Protein ADP-ribose pyrophosphatase ORF38"
    "AltName: Full" "UP:etc" "" "fake" "," "orf7" "UP:Q4L2X1"
    "DegV domain-containing protein" "AltName: Full"))
  ("Oas2"
   ("oas2" "OAS2" "HGNC:8087 G" "2'-5'-oligoadenylate synthetase 2"
    "Approved Symbol"))
  ("Oas3"
   ("oas3" "OAS3" "HGNC:8088 G" "2'-5'-oligoadenylate synthetase 3"
    "Approved Symbol"))
  ("Omp85"
   ("omp85" "OMP85" "HGNC:24276 G"
    "SAMM50 sorting and assembly machinery component" "Synonym" "," "omp85"
    "UP:P0A940"
    "Outer membrane protein assembly factor BamA {ECO:0000255|HAMAP-Rule:MF_01430}"
    "AltName: Full"))
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
  ("P75NTR"
   ("p75ntr" "p75NTR" "HGNC:7809 G" "nerve growth factor receptor" "Synonym"
    "NCIT:C17342" "tumor necrosis factor receptor superfamily member 16"
    "synonym" "NCIT:C51552" "NGFR" "synonym"))
  ("P815" ("p815" "P-815" "CVCL:2154" "P815" "name"))
  ("P99"
   ("p99" "p99" "HGNC:9284 G" "protein phosphatase 1 regulatory subunit 10"
    "Synonym" "UP:Q96QC0 H"
    "Serine/threonine-protein phosphatase 1 regulatory subunit 10"
    "AltName: Full"))
  ("PA317" ("pa317" "pA317" "CVCL:3920" "PA317" "name"))
  ("PAO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("PB18" ("pb18" "PB18" "CVCL:T883" "PB18" "name"))
  ("PDCA1"
   ("pdca1" "PDCA-1" "NCIT:C154135" "BST2" "synonym" "NCIT:C154136"
    "bone marrow stromal antigen 2" "synonym"))
  ("PE9" ("pe9" "PE9" "CVCL:XC30" "PE 9" "RELATED synonym"))
  ("PEG300"
   ("peg300" "PEG-300" "NCIT:C84078" "polyethylene glycol 300" "synonym"))
  ("PEG400"
   ("peg400" "PEG-400" "MESH:C000595213" "polyethylene glycol 400" "SY"))
  ("PEG8000"
   ("peg8000" "PEG-8000" "NCIT:C84088" "polyethylene glycol 8000" "synonym"))
  ("PERP1"
   ("perp1" "pERp1" "HGNC:30125 G"
    "marginal zone B and B1 cell specific protein" "Synonym" "UP:A5PJ93"
    "Marginal zone B- and B1-cell-specific protein" "AltName: Short"
    "UP:Q8WU39 H" "Marginal zone B- and B1-cell-specific protein"
    "AltName: Short" "UP:Q9D8I1 M"
    "Marginal zone B- and B1-cell-specific protein" "AltName: Short"
    "UP:Q561R0" "Marginal zone B- and B1-cell-specific protein"
    "AltName: Short"))
  ("PF13"
   ("pf13" "PF13" "HGNC:20188 G" "dynein axonemal assembly factor 2"
    "Synonym"))
  ("PI10"
   ("pi10" "PI-10" "UP:P48595 H" "Serpin B10" "AltName: Short" "," "PI10"
    "HGNC:8942 G" "serpin family B member 10" "Previous Symbol"))
  ("PI11"
   ("pi11" "PI-11" "CVCL:G249" "PI-11" "name" "UP:P48594 H" "Serpin B4"
    "AltName: Short" "NCIT:C148326" "serpin B4" "synonym" "," "PI11"
    "HGNC:10570 G" "serpin family B member 4" "Synonym" "NCIT:C148324"
    "SERPINB4" "synonym"))
  ("PI12"
   ("pi12" "PI-12" "UP:Q90935" "Neuroserpin" "AltName: Short" "UP:Q99574 H"
    "Neuroserpin" "AltName: Short" "UP:O35684 M" "Neuroserpin" "AltName: Short"
    "UP:Q9JLD2" "Neuroserpin" "AltName: Short" "," "PI12" "HGNC:8943 G"
    "serpin family I member 1" "Previous Symbol"))
  ("PI14"
   ("pi14" "PI-14" "UP:O75830 H" "Serpin I2" "AltName: Short" "," "PI14"
    "HGNC:8945 G" "serpin family I member 2" "Previous Symbol" "NCIT:C29937"
    "serpin I2" "synonym" "NCIT:C51410" "SERPINI2" "synonym"))
  ("PI15"
   ("pi15" "PI-15" "UP:O43692 H" "Peptidase inhibitor 15" "RecName: Short"
    "UP:Q8BS03 M" "Peptidase inhibitor 15" "RecName: Short" "," "PI15"
    "HGNC:8946 G" "peptidase inhibitor 15" "Approved Symbol"))
  ("PI3Kp85" ("pi3kp85" "PI3K-p85" "FPLX:PI3K_p85" "PI3K-p85" "name"))
  ("PL12"
   ("pl12" "PL12" "CVCL:1639" "Panc 10.05" "RELATED synonym" "CVCL:JM28" "PL12"
    "name"))
  ("PL7" ("pl7" "PL7" "CVCL:JM39" "PL7" "name"))
  ("PP68"
   ("pp68" "pp68" "UP:Q7TMK9 M" "Heterogeneous nuclear ribonucleoprotein Q"
    "AltName: Full"))
  ("PP78" ("pp78" "pp78" "CVCL:C236" "PP78" "name"))
  ("PPARg1"
   ("pparg1" "PPARG1" "HGNC:9236 G"
    "peroxisome proliferator activated receptor gamma" "Synonym" "NCIT:C34077"
    "peroxisome proliferator-activated receptor gamma" "synonym" "NCIT:C51710"
    "PPARG" "synonym"))
  ("PPP1R15a"
   ("ppp1r15a" "PPP1R15A" "HGNC:14375 G"
    "protein phosphatase 1 regulatory subunit 15A" "Approved Symbol"
    "NCIT:C97252" "PPP1R15A" "name"))
  ("PQ9" ("pq9" "PQ-9" "CHEBI:28377" "plastoquinone-9" "RELATED synonym"))
  ("PRO1"
   ("pro1" "PRO1" "HGNC:6636 G" "lamin A/C" "Previous Symbol" "HGNC:12877 G"
    "zinc metallopeptidase STE24" "Synonym" "NCIT:C61149" "LMNA" "synonym"))
  ("PS341"
   ("ps341" "PS-341" "CHEBI:52717" "bortezomib" "RELATED synonym" "NCIT:C1851"
    "bortezomib" "synonym" "NCIT:C1851" "bortezomib" "synonym" "," "PS341"
    "NCIT:C1851" "bortezomib" "synonym"))
  ("PTX10" ("ptx10" "PTX10" "CVCL:H620" "1A9PTX10" "RELATED synonym"))
  ("PTX22" ("ptx22" "PTX22" "CVCL:H621" "1A9PTX22" "RELATED synonym"))
  ("PaO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("Pam2" ("pam2" "PAM2" "XFAM:PF07145 Motif" "PAM2" "ID"))
  ("Pan6"
   ("pan6" "PAN6" "HGNC:22938 G" "NLR family pyrin domain containing 12"
    "Synonym"))
  ("Pan7"
   ("pan7" "PAN7" "HGNC:22947 G" "NLR family pyrin domain containing 7"
    "Synonym"))
  ("Pao2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("Parep1" ("parep1" "PaREP1" "XFAM:PF05942 Family" "PaREP1" "ID"))
  ("Pcp4"
   ("pcp4" "PCP4" "HGNC:8742 G" "Purkinje cell protein 4" "Approved Symbol"
    "FA:02669" "PCP4 family" "ID"))
  ("Pebp1"
   ("pebp1" "PEBP-1" "UP:P30086 H" "Phosphatidylethanolamine-binding protein 1"
    "RecName: Short" "UP:P70296 M" "Phosphatidylethanolamine-binding protein 1"
    "RecName: Short" "," "PEBP1" "HGNC:8630 G"
    "phosphatidylethanolamine binding protein 1" "Approved Symbol"))
  ("Po0" ("po0" "Po-0" "EFO:0006972" "Po-0" "name"))
  ("Pou2f1"
   ("pou2f1" "POU2F1" "HGNC:9212 G" "POU class 2 homeobox 1" "Approved Symbol"
    "NCIT:C17521" "POU domain, class 2, transcription factor 1" "synonym"
    "NCIT:C53106" "POU2F1" "name"))
  ("Ppp1r12a"
   ("ppp1r12a" "PPP1R12A" "HGNC:7618 G"
    "protein phosphatase 1 regulatory subunit 12A" "Approved Symbol"))
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
  ("RC17" ("rc17" "RC17" "CVCL:L206" "RC-17" "name"))
  ("RD9"
   ("rd9" "RD-9" "CVCL:UZ76" "RD-9" "name" "," "Rd9" "HGNC:9003 G"
    "phosphatidylinositol transfer protein membrane associated 1" "Synonym"))
  ("RF4"
   ("rf4" "RF4" "UP:Q9TKZ3"
    "Photosystem I assembly protein Ycf4 {ECO:0000255|HAMAP-Rule:MF_00437}"
    "RecName: Short"))
  ("RG7221"
   ("rg7221" "RG-7221" "NCIT:C118578" "vanucizumab" "synonym" "," "RG7221"
    "NCIT:C118578" "vanucizumab" "synonym"))
  ("RIN5F" ("rin5f" "Rin-5F" "CVCL:2177" "RIN-5F" "name"))
  ("RL2" ("rl2" "RL2" "CVCL:LJ72" "RL2" "name"))
  ("RLP068" ("rlp068" "RLP068" "MESH:C477806" "RLP068" "NM"))
  ("RSPH9"
   ("rsph9" "RSPH9" "HGNC:21057 G" "radial spoke head component 9"
    "Approved Symbol"))
  ("RdRp1" ("rdrp1" "rDRP1" "UP:P30287 R" "Dehydrin Rab25" "AltName: Full"))
  ("Rf1"
   ("rf1" "RF-1" "UP:O67032" "Peptide chain release factor 1" "RecName: Short"
    "UP:etc" "" "fake" "XFAM:PF00472 Family" "RF-1" "ID" "," "RF1" "CVCL:3580"
    "RF-1" "name" "HGNC:3477 G" "eukaryotic translation termination factor 1"
    "Synonym" "HGNC:7469 G" "mitochondrial translation release factor 1"
    "Synonym" "UP:Q9TKU7" "Uncharacterized membrane protein ycf78"
    "AltName: Full" "UP:Q20EU8" "Uncharacterized membrane protein ycf78"
    "AltName: Full" "UP:Q06SH2" "Uncharacterized membrane protein ycf78"
    "AltName: Full" "UP:Q1KVQ9" "Uncharacterized membrane protein ycf78"
    "AltName: Full"))
  ("Rio1" ("rio1" "RIO1" "XFAM:PF01163 Family" "RIO1" "ID"))
  ("Rp105" ("rp105" "RP105" "HGNC:6726 G" "CD180 molecule" "Synonym"))
  ("Rpl13a"
   ("rpl13a" "RPL13A" "HGNC:10304 G" "ribosomal protein L13a" "Approved Symbol"
    "NCIT:C104762" "RPL13A" "name"))
  ("Rsad2"
   ("rsad2" "RSAD2" "HGNC:30908 G"
    "radical S-adenosyl methionine domain containing 2" "Approved Symbol"
    "FA:03469" "RSAD2 family" "ID"))
  ("Rsp5"
   ("rsp5" "RSP5" "HGNC:7728 G" "NEDD4 like E3 ubiquitin protein ligase"
    "Synonym" "," "rsp-5" "UP:P86187" "Raniseptin-5" "RecName: Short"))
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
  ("S5b"
   ("s5b" "S5B" "HGNC:9563 G" "proteasome 26S subunit, non-ATPase 5"
    "Synonym"))
  ("S61" ("s61" "S6-1" "CVCL:9W07" "S6-1" "name"))
  ("S62"
   ("s62" "S6-2" "CVCL:9W08" "S6-2" "name" "," "S62" "CVCL:XG22" "MSU-1.1-S62"
    "RELATED synonym"))
  ("S63" ("s63" "S6-3" "CVCL:9W09" "S6-3" "name"))
  ("S64" ("s64" "S64" "UP:M1E1F1" "U1-sicaritoxin-Sdo1a" "AltName: Full"))
  ("S67" ("s67" "S67" "UP:M1E1F0" "U2-sicaritoxin-Sdo1a" "AltName: Full"))
  ("S68" ("s68" "S68" "CVCL:5585" "S68" "name"))
  ("S87" ("s87" "S87" "CVCL:JX94" "S87" "name"))
  ("SARS1"
   ("sars1" "SARS1" "HGNC:10537 G" "seryl-tRNA synthetase 1"
    "Approved Symbol"))
  ("SF12" ("sf12" "SF-12" "NCIT:C20079" "SF-12" "name"))
  ("SGS2" ("sgs2" "SGS-2" "CVCL:4007" "SGS" "RELATED synonym"))
  ("SN3" ("sn3" "SN3" "CVCL:UM48" "HL-60 SN3" "RELATED synonym"))
  ("SSL1"
   ("ssl1" "SSL-1" "CVCL:6295" "SSL-1" "name" "," "ssl1" "XFAM:PF04056 Family"
    "ssl1" "ID"))
  ("ST101"
   ("st101" "ST-101" "MESH:C511224"
    "spiro(imidazo-(1,2-a)pyridine-3,2-indan)-2(3H)-one" "SY"))
  ("ST22"
   ("st22" "ST-22" "MESH:C034488" "homocysteine-thiolactone-nicotinamide" "SY"
    "," "ST22" "MESH:C034488" "homocysteine-thiolactone-nicotinamide" "SY"))
  ("ST52"
   ("st52" "ST-52" "MESH:C004955" "fosfestrol" "SY" "NCIT:C1105" "fosfestrol"
    "synonym"))
  ("STRL33"
   ("strl33" "STRL33" "HGNC:16647 G" "C-X-C motif chemokine receptor 6"
    "Synonym" "NCIT:C28748" "C-X-C chemokine receptor type 6" "synonym"
    "NCIT:C51339" "CXCR6" "synonym"))
  ("Sa02"
   ("sa02" "SA02" "CVCL:B348" "SA002" "RELATED synonym" "NCIT:C20265" "SA02"
    "name"))
  ("Sacas9"
   ("sacas9" "SaCas9" "UP:Q6NKI3" "CRISPR-associated endonuclease Cas9"
    "AltName: Full" "UP:J7RUA5"
    "CRISPR-associated endonuclease Cas9 {ECO:0000255|HAMAP-Rule:MF_01480}"
    "AltName: Full"))
  ("Ser2" ("ser2" "SER2" "NCIT:C84308" "JAG2" "synonym"))
  ("Serinc5"
   ("serinc5" "SERINC5" "HGNC:18825 G" "serine incorporator 5"
    "Approved Symbol"))
  ("Sfrs4"
   ("sfrs4" "SFRS4" "HGNC:10786 G" "serine and arginine rich splicing factor 4"
    "Previous Symbol"))
  ("Sl4" ("sl4" "SL4" "CVCL:3922" "T24T SLT4" "RELATED synonym"))
  ("Slc11a1"
   ("slc11a1" "SLC11A1" "HGNC:10907 G" "solute carrier family 11 member 1"
    "Approved Symbol"))
  ("Slc26a4"
   ("slc26a4" "SLC26A4" "HGNC:8818 G" "solute carrier family 26 member 4"
    "Approved Symbol"))
  ("Slc2a3"
   ("slc2a3" "SLC2A3" "HGNC:11007 G" "solute carrier family 2 member 3"
    "Approved Symbol" "NCIT:C115021" "SLC2A3" "name"))
  ("Slc51a"
   ("slc51a" "SLC51A" "HGNC:29955 G" "solute carrier family 51 alpha subunit"
    "Approved Symbol"))
  ("Spint2"
   ("spint2" "SPINT2" "HGNC:11247 G"
    "serine peptidase inhibitor, Kunitz type 2" "Approved Symbol"))
  ("Src1"
   ("src1" "SRC-1" "UP:Q15788 H" "Nuclear receptor coactivator 1"
    "AltName: Short" "UP:P70365 M" "Nuclear receptor coactivator 1"
    "AltName: Short" "UP:Q4PJW2" "Nuclear receptor coactivator 1"
    "AltName: Short" "XFAM:PF08832 Domain" "SRC-1" "ID" "NCIT:C17977"
    "nuclear receptor coactivator 1" "synonym" "," "SRC1" "HGNC:7668 G"
    "nuclear receptor coactivator 1" "Synonym" "HGNC:11283 G"
    "SRC proto-oncogene, non-receptor tyrosine kinase" "Previous Symbol"
    "NCIT:C17977" "nuclear receptor coactivator 1" "synonym" "NCIT:C51124"
    "SRC" "synonym" "NCIT:C52135" "NCOA1" "synonym"))
  ("Srr1"
   ("srr1" "SRR1" "FA:03832" "SRR1 family" "ID" "XFAM:PF07985 Domain" "SRR1"
    "ID" "XFAM:PF07985 Domain" "SRR1" "DE"))
  ("St16"
   ("st16" "ST16" "CVCL:RM01" "St16" "name" "HGNC:11346 G" "interleukin 24"
    "Previous Symbol" "MESH:C097541" "interleukin-24" "SY" "NCIT:C50932" "IL24"
    "synonym"))
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
  ("TAK1"
   ("tak1" "TAK1" "HGNC:6859 G"
    "mitogen-activated protein kinase kinase kinase 7" "Previous Symbol"
    "HGNC:7972 G" "nuclear receptor subfamily 2 group C member 2" "Synonym"
    "NCIT:C51213" "MAP3K7" "synonym" "NCIT:C106598" "NR2C2" "synonym"))
  ("TC22" ("tc22" "TC22" "NCIT:C129380" "TC22 allele" "synonym"))
  ("TCID50"
   ("tcid50" "TCID50" "NCIT:C67450" "tissue culture infectious dose 50%"
    "synonym" "NCIT:C70536" "50 percent tissue culture infective dose"
    "synonym"))
  ("TGBp2"
   ("tgbp2" "TGBp2" "UP:P04869 B" "Movement protein TGB2" "AltName: Short"))
  ("TGBp3"
   ("tgbp3" "TGBp3" "UP:P04868 B" "Movement protein TGB3" "AltName: Short"
    "XFAM:PF02495 Family" "TGBp3" "ID"))
  ("TH17" ("th17" "Th17" "NCIT:C113815" "T helper 17 cell" "synonym"))
  ("TMBIM3"
   ("tmbim3" "TMBIM3" "HGNC:4589 G"
    "glutamate ionotropic receptor NMDA type subunit associated protein 1"
    "Synonym"))
  ("TMC114"
   ("tmc114" "TMC114" "CHEBI:367163" "darunavir" "RELATED synonym"
    "NCIT:C65364" "darunavir" "synonym" "NCIT:C77389" "darunavir ethanolate"
    "synonym"))
  ("TMPRSS11B"
   ("tmprss11b" "TMPRSS11B" "HGNC:25398 G" "transmembrane serine protease 11B"
    "Approved Symbol"))
  ("TMPRSS11E"
   ("tmprss11e" "TMPRSS11E" "HGNC:24465 G" "transmembrane serine protease 11E"
    "Approved Symbol"))
  ("TMPRSS11F"
   ("tmprss11f" "TMPRSS11F" "HGNC:29994 G" "transmembrane serine protease 11F"
    "Approved Symbol"))
  ("TMPRSS5"
   ("tmprss5" "TMPRSS5" "HGNC:14908 G" "transmembrane serine protease 5"
    "Approved Symbol"))
  ("TPMT*1" ("tpmt*1" "TPMT*1" "NCIT:C45688" "TPMT" "synonym"))
  ("TRAPβ"
   ("trapβ" "TRAP-β" "UP:Q5E9E4" "Translocon-associated protein subunit beta"
    "RecName: Short" "UP:P23438" "Translocon-associated protein subunit beta"
    "RecName: Short" "UP:Q54VI6" "Translocon-associated protein subunit beta"
    "RecName: Short" "UP:P43308 H" "Translocon-associated protein subunit beta"
    "RecName: Short" "UP:Q9CPW5 M" "Translocon-associated protein subunit beta"
    "RecName: Short"))
  ("TRL7"
   ("trl7" "TRL7" "UP:P16805 H" "Uncharacterized protein IRL7"
    "RecName: Short"))
  ("TRPT1"
   ("trpt1" "TRPT1" "HGNC:20316 G" "tRNA phosphotransferase 1"
    "Approved Symbol"))
  ("TW1" ("tw1" "TW1" "CVCL:Y013" "TW1" "name"))
  ("Th17" ("th17" "Th17" "NCIT:C113815" "T helper 17 cell" "synonym"))
  ("ThOX2"
   ("thox2" "THOX2" "GO:0016174" "NAD(P)H oxidase activity" "NARROW synonym"
    "HGNC:13273 G" "dual oxidase 2" "Synonym"))
  ("Tll2" ("tll2" "TLL2" "HGNC:11844 G" "tolloid like 2" "Approved Symbol"))
  ("Tmem90a"
   ("tmem90a" "TMEM90A" "HGNC:32388 G"
    "synapse differentiation inducing 1 like" "Previous Symbol"))
  ("Tmem90b"
   ("tmem90b" "TMEM90B" "HGNC:15885 G" "synapse differentiation inducing 1"
    "Previous Symbol"))
  ("Tn5" ("tn5" "Tn-5" "CVCL:C190" "BTI-Tn-5B1-4" "RELATED synonym"))
  ("Tom20"
   ("tom20" "TOM-20" "NCIT:C118209"
    "mitochondrial import receptor subunit TOM20 homolog" "synonym" "," "TOM20"
    "HGNC:20947 G" "translocase of outer mitochondrial membrane 20" "Synonym"
    "NCIT:C118208" "TOMM20" "synonym" "," "tom20" "FA:04123" "tom20 family"
    "ID"))
  ("Trm112"
   ("trm112" "TRM112" "HGNC:26940 G" "tRNA methyltransferase subunit 11-2"
    "Synonym" "FA:04207" "TRM112 family" "ID"))
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
  ("TrxR3"
   ("trxr3" "TRXR3" "HGNC:20667 G" "thioredoxin reductase 3" "Synonym"))
  ("Ty1" ("ty1" "TY1" "CVCL:DG42" "TY-1" "name"))
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
  ("UC6" ("uc6" "UC-6" "CVCL:2751" "UM-UC-6" "RELATED synonym"))
  ("US12" ("us12" "uS12" "HGNC:10410 G" "ribosomal protein S23" "Synonym"))
  ("UbcM8"
   ("ubcm8" "ubcM8" "UP:Q9QZU9 M" "Ubiquitin/ISG15-conjugating enzyme E2 L6"
    "AltName: Full"))
  ("Ube2L6"
   ("ube2l6" "UBE2L6" "HGNC:12490 G" "ubiquitin conjugating enzyme E2 L6"
    "Approved Symbol"))
  ("Ugt1a"
   ("ugt1a" "UGT-1A" "UP:P22309 H" "UDP-glucuronosyltransferase 1-1"
    "AltName: Short" "NCIT:C28288" "UDP-glucuronosyltransferase 1-1" "synonym"
    "," "UGT1A" "HGNC:12529 G"
    "UDP glucuronosyltransferase family 1 member A complex locus"
    "Approved Symbol" "UP:P22309 H" "UDP-glucuronosyltransferase 1-1"
    "AltName: Short" "NCIT:C28288" "UDP-glucuronosyltransferase 1-1" "synonym"
    "NCIT:C51018" "UGT1A1" "synonym" "NCIT:C127927" "UGT1A locus" "synonym"
    "NCIT:C127927" "UGT1A locus" "synonym"))
  ("Ugt1a10"
   ("ugt1a10" "UGT1A10" "UP:Q6ZQM8 M" "UDP-glucuronosyltransferase 1-7C"
    "AltName: Full"))
  ("Us6" ("us6" "US6" "XFAM:PF17616 Family" "US6" "ID"))
  ("V241" ("v241" "V241" "CVCL:5396" "VACO 241" "RELATED synonym"))
  ("V410" ("v410" "V410" "CVCL:8632" "VACO 410" "RELATED synonym"))
  ("VEGF165"
   ("vegf165" "VEGF-165" "NCIT:C126413"
    "vascular endothelial growth factor A 165 isoform" "synonym" "," "VEGF165"
    "NCIT:C20450" "vascular endothelial growth factor A" "synonym"
    "NCIT:C126413" "vascular endothelial growth factor A 165 isoform"
    "synonym"))
  ("VIP17"
   ("vip17" "VIP17" "HGNC:6817 G" "mal, T cell differentiation protein"
    "Synonym"))
  ("VIP21"
   ("vip21" "VIP-21" "HGNC:1529 G" "caveolin 3" "Synonym" "," "VIP21"
    "HGNC:1529 G" "caveolin 3" "Synonym" "NCIT:C17971" "caveolin-1" "synonym"))
  ("VJ300" ("vj300" "VJ-300" "CVCL:X217" "VJ-300" "name"))
  ("VK2" ("vk2" "VK2" "CVCL:6471" "VK2/E6E7" "RELATED synonym"))
  ("VLTF2"
   ("vltf2" "VLTF-2" "UP:O57216 H" "Viral late gene transcription factor 2"
    "RecName: Short" "UP:P20982 H" "Viral late gene transcription factor 2"
    "RecName: Short" "UP:P0DSV3 H" "Viral late gene transcription factor 2"
    "RecName: Short" "UP:P0DSV4 H" "Viral late gene transcription factor 2"
    "RecName: Short"))
  ("VO2"
   ("vo2" "VO2" "CHEBI:30047" "vanadium dioxide" "RELATED synonym"
    "NCIT:C123570" "oxygen consumption" "synonym"))
  ("VP16"
   ("vp16" "VP-16" "CHEBI:4911" "etoposide" "RELATED synonym" "NCIT:C491"
    "etoposide" "synonym" "NCIT:C491" "etoposide" "synonym" "," "VP16"
    "NCIT:C491" "etoposide" "synonym" "NCIT:C1405" "valspodar" "synonym"))
  ("VP2"
   ("vp2" "VP-2" "MESH:C032364" "17-acetoxy-6-methylene-4-pregnene-3,20-dione"
    "SY" "," "VP2" "UP:W6JIC6" "Capsid protein" "AltName: Short" "UP:P19193"
    "Minor spike protein H" "AltName: Short" "UP:Q9G055"
    "Minor spike protein H" "AltName: Short"))
  ("VP6"
   ("vp6" "VP6" "UP:Q9INI1 H" "Non-structural protein 2" "AltName: Full"))
  ("VP7" ("vp7" "VP7" "XFAM:PF00434 Family" "VP7" "ID"))
  ("VP9"
   ("vp9" "VP9" "UP:Q9YWQ1 H" "Spike protein VP9" "AltName: Short"
    "XFAM:PF09625 Domain" "VP9" "ID"))
  ("VPS13C"
   ("vps13c" "VPS13C" "HGNC:23594 G" "vacuolar protein sorting 13 homolog C"
    "Approved Symbol"))
  ("VX787"
   ("vx787" "VX-787" "MESH:C000605010" "pimodivir" "SY" "NCIT:C158086"
    "pimodivir" "synonym" "," "VX787" "NCIT:C158086" "pimodivir" "synonym"))
  ("WA1"
   ("wa1" "WA1" "CVCL:JL42" "WA-1" "name" "CVCL:9771" "WA01"
    "RELATED synonym"))
  ("WF1"
   ("wf1" "WF-1" "CVCL:R857" "WF-1" "name" "HGNC:26937 G"
    "TP53 regulated inhibitor of apoptosis 1" "Synonym" "UP:O43715 H"
    "TP53-regulated inhibitor of apoptosis 1" "AltName: Full" "UP:Q9D8Z2 M"
    "TP53-regulated inhibitor of apoptosis 1" "AltName: Full" "NCIT:C106455"
    "TRIAP1" "synonym" "NCIT:C106456" "TP53-regulated inhibitor of apoptosis 1"
    "synonym"))
  ("WI1" ("wi1" "WI1" "CVCL:JE97" "WI-1" "name"))
  ("WI38"
   ("wi38" "WI38" "EFO:0001260" "WI38" "name" "," "Wi-38" "CVCL:0579" "WI-38"
    "name"))
  ("WIPI49"
   ("wipi49" "WIPI49" "HGNC:25471 G"
    "WD repeat domain, phosphoinositide interacting 1" "Synonym"))
  ("X63" ("x63" "X63" "CVCL:3411" "P3X63Ag8" "RELATED synonym"))
  ("Xlim1"
   ("xlim1" "xLIM-1" "UP:P29674" "LIM/homeobox protein Lhx1" "AltName: Short"
    "," "xlim1" "UP:P29674" "LIM/homeobox protein Lhx1" "AltName: Short"))
  ("Xp22.3" ("xp22.3" "Xp22.3" "NCIT:C25139" "Xp22.3" "name"))
  ("Y700"
   ("y700" "Y-700" "MESH:C433950"
    "1-(3-cyano-4-neopentyloxyphenyl)pyrazole-4-carboxylic acid" "SY"))
  ("YB2" ("yb2" "YB-2" "MESH:C002989" "indenolol" "SY"))
  ("YN1" ("yn1" "YN-1" "CVCL:8775" "YN-1" "name"))
  ("Yp11.3" ("yp11.3" "Yp11.3" "NCIT:C41840" "Yp11.3" "name"))
  ("ZNF330"
   ("znf330" "ZNF330" "HGNC:15462 G" "zinc finger protein 330"
    "Approved Symbol"))
  ("Zbp1"
   ("zbp1" "ZBP-1" "UP:O42254"
    "Insulin-like growth factor 2 mRNA-binding protein 1" "AltName: Short"
    "UP:Q9NZI8 H" "Insulin-like growth factor 2 mRNA-binding protein 1"
    "AltName: Short" "UP:O88477 M"
    "Insulin-like growth factor 2 mRNA-binding protein 1" "AltName: Short" ","
    "ZBP1" "HGNC:16176 G" "Z-DNA binding protein 1" "Approved Symbol"
    "UP:Q8CGX0" "Insulin-like growth factor 2 mRNA-binding protein 1"
    "AltName: Short"))
  ("Zbtb46"
   ("zbtb46" "ZBTB46" "HGNC:16094 G" "zinc finger and BTB domain containing 46"
    "Approved Symbol" "NCIT:C131772" "ZBTB46" "name"))
  ("Zc3h12a"
   ("zc3h12a" "ZC3H12A" "HGNC:26259 G" "zinc finger CCCH-type containing 12A"
    "Approved Symbol" "NCIT:C148600" "ZC3H12A" "name" "NCIT:C148603"
    "endoribonuclease ZC3H12A" "synonym"))
  ("aa120" ("aa120" "AA120" "EFO:0004072" "AA120" "name"))
  ("ace2"
   ("ace2" "ACE2" "HGNC:13557 G" "angiotensin I converting enzyme 2"
    "Approved Symbol" "NCIT:C102528" "ACE2" "name"))
  ("adra2"
   ("adra2" "ADRA2" "FPLX:ADRA2" "ADRA2" "name" "HGNC:281 G"
    "adrenoceptor alpha 2A" "Previous Symbol" "NCIT:C51404" "ADRA2A"
    "synonym"))
  ("antiCD28" ("anticd28" "anti-CD28" "EFO:0003304" "anti-CD28" "name"))
  ("antiCD3" ("anticd3" "anti-CD3" "EFO:0003317" "anti-CD3" "name"))
  ("app1"
   ("app1" "APP-1" "HGNC:8557 G" "poly(A) binding protein cytoplasmic 4"
    "Synonym" "UP:Q13310 H" "Polyadenylate-binding protein 4"
    "AltName: Short"))
  ("arg1"
   ("arg1" "ARG-1" "UP:Q9NH76" "Hemerythrin-like protein" "AltName: Full" ","
    "ARG1" "HGNC:663 G" "arginase 1" "Approved Symbol" "HGNC:19168 G"
    "tubulointerstitial nephritis antigen like 1" "Synonym" "NCIT:C103928"
    "ARG1" "name" "NCIT:C158392" "TINAGL1" "synonym"))
  ("at1"
   ("at1" "AT-1" "CVCL:3568" "R-3327-AT-1" "RELATED synonym" "CVCL:A300"
    "UoC-B12" "RELATED synonym" "HGNC:95 G" "solute carrier family 33 member 1"
    "Synonym" "UP:O00400 H" "Acetyl-coenzyme A transporter 1" "RecName: Short"
    "UP:Q99J27 M" "Acetyl-coenzyme A transporter 1" "RecName: Short"
    "UP:Q6AYY8" "Acetyl-coenzyme A transporter 1" "RecName: Short" "UP:P50297"
    "Arylamine N-acetyltransferase 1" "AltName: Short" "," "AT1" "HGNC:336 G"
    "angiotensin II receptor type 1" "Synonym" "HGNC:95 G"
    "solute carrier family 33 member 1" "Synonym" "HGNC:52650 R"
    "PGR antisense RNA 1" "Synonym" "UP:P30556 H"
    "Type-1 angiotensin II receptor" "AltName: Short" "NCIT:C51192" "ATM"
    "synonym"))
  ("atatg6"
   ("atatg6" "AtATG6" "UP:Q9M367 C" "Beclin-1-like protein" "AltName: Short"))
  ("autophagin1"
   ("autophagin1" "autophagin-1" "UP:Q9Y4P1 H" "Cysteine protease ATG4B"
    "AltName: Full" "UP:Q8BGE6 M" "Cysteine protease ATG4B" "AltName: Full"))
  ("b2GP1" ("b2gp1" "B2GP1" "NCIT:C142154" "APOH" "synonym"))
  ("b50"
   ("b50" "B-50" "CVCL:4112" "B50" "name" "CVCL:W341" "HeLa B-50"
    "RELATED synonym" "HGNC:4140 G" "growth associated protein 43" "Synonym"))
  ("bR2"
   ("br2" "BR-2" "CVCL:AU04" "BR-2" "name" "," "Br2" "CHEBI:29224" "dibromine"
    "RELATED synonym"))
  ("bel1" ("bel1" "BEL1" "CVCL:0081" "BEL-1" "name"))
  ("c13"
   ("c13" "C-13" "CVCL:UF35" "IB-RS-2 clone 13" "RELATED synonym" "," "C13"
    "CVCL:0114" "2008/C13*5.25" "RELATED synonym" "CVCL:1915" "BHK-21 clone 13"
    "RELATED synonym"))
  ("c1r"
   ("c1r" "C1R" "CVCL:3714" "HMy2.C1R" "RELATED synonym" "HGNC:1246 G"
    "complement C1r" "Approved Symbol"))
  ("c50" ("c50" "C-50" "CVCL:0191" "C50" "name"))
  ("c57"
   ("c57" "C57" "EFO:0004472" "C57BL/6" "EXACT synonym" "NCIT:C14522"
    "C57 mouse" "synonym"))
  ("cBD1"
   ("cbd1" "cBD-1" "UP:P83943" "Beta-defensin 1" "AltName: Full" "," "cBD1"
    "UP:P60023" "Beta-defensin 1" "AltName: Full"))
  ("cD150"
   ("cd150" "CD150" "HGNC:10903 G"
    "signaling lymphocytic activation molecule family member 1" "Synonym"
    "NCIT:C104060" "SLAMF1" "synonym" "NCIT:C104061"
    "signaling lymphocytic activation molecule" "synonym"))
  ("cD46"
   ("cd46" "CD46" "HGNC:6953 G" "CD46 molecule" "Approved Symbol"
    "NCIT:C126978" "CD46" "name"))
  ("cH5"
   ("ch5" "CH5" "CVCL:DD89" "Ch5" "name" "CVCL:N171" "GM11322"
    "RELATED synonym"))
  ("cH8" ("ch8" "CH8" "CVCL:M020" "CH 8" "RELATED synonym"))
  ("cXcr4"
   ("cxcr4" "CXC-R4" "UP:P61073 H" "C-X-C chemokine receptor type 4"
    "RecName: Short" "UP:P70658 M" "C-X-C chemokine receptor type 4"
    "RecName: Short" "NCIT:C17789" "C-X-C chemokine receptor type 4" "synonym"
    "NCIT:C51336" "CXCR4" "synonym" "," "CXCR-4" "UP:P61073 H"
    "C-X-C chemokine receptor type 4" "RecName: Short" "UP:P70658 M"
    "C-X-C chemokine receptor type 4" "RecName: Short" "NCIT:C17789"
    "C-X-C chemokine receptor type 4" "synonym" "NCIT:C51336" "CXCR4" "synonym"
    "," "CXCR4" "GO:0038147" "C-X-C motif chemokine 12 receptor activity"
    "NARROW synonym" "HGNC:2561 G" "C-X-C motif chemokine receptor 4"
    "Approved Symbol" "NCIT:C17789" "C-X-C chemokine receptor type 4" "synonym"
    "NCIT:C51336" "CXCR4" "name"))
  ("cap3"
   ("cap3" "CAP-3" "UP:P50453 H" "Serpin B9" "AltName: Short" "NCIT:C104579"
    "SERPINB9" "synonym" "NCIT:C104580" "serpin B9" "synonym" "," "CAP3"
    "HGNC:8955 G" "serpin family B member 9" "Synonym" "UP:P50453 H"
    "Serpin B9" "AltName: Short" "NCIT:C104579" "SERPINB9" "synonym"
    "NCIT:C104580" "serpin B9" "synonym"))
  ("casp13" ("casp13" "CASP-13" "UP:O75601" "Caspase-13" "RecName: Short"))
  ("cd11c"
   ("cd11c" "CD11C" "HGNC:6152 G" "integrin subunit alpha X" "Previous Symbol"
    "," "CD11c" "HGNC:6152 G" "integrin subunit alpha X" "Synonym"
    "NCIT:C16789" "integrin alpha-X" "synonym" "NCIT:C16789" "integrin alpha-X"
    "synonym" "NCIT:C51170" "ITGAX" "synonym"))
  ("cd20"
   ("cd20" "CD20" "HGNC:7315 G" "membrane spanning 4-domains A1"
    "Previous Symbol" "XFAM:PF04103 Family" "CD20" "ID" "NCIT:C38896"
    "B-lymphocyte antigen CD20" "synonym" "NCIT:C38896"
    "B-lymphocyte antigen CD20" "synonym" "NCIT:C51082" "MS4A1" "synonym"
    "NCIT:C96458" "KRT20" "synonym" "NCIT:C103368"
    "CD20 expressing cell measurement" "synonym" "NCIT:C103368"
    "CD20 expressing cell measurement" "synonym" "NCIT:C103368"
    "CD20 expressing cell measurement" "synonym"))
  ("ce11"
   ("ce11" "CE11" "UP:Q866G7" "Thymic stromal cotransporter homolog"
    "AltName: Full"))
  ("cep3"
   ("cep3" "CEP3" "HGNC:16943 G" "CDC42 effector protein 3" "Synonym" ","
    "cep3" "XFAM:PF16846 Family" "cep3" "ID"))
  ("coast6"
   ("coast6" "coaSt6" "UP:Q2EMV9 M"
    "Protein mono-ADP-ribosyltransferase PARP14" "AltName: Short"))
  ("cyp2d6"
   ("cyp2d6" "CYP2D6" "HGNC:2625 G"
    "cytochrome P450 family 2 subfamily D member 6" "Approved Symbol"
    "NCIT:C17287" "cytochrome P450 2D6" "synonym" "NCIT:C52361" "CYP2D6"
    "name"))
  ("d122" ("d122" "D122" "CVCL:0242" "D122" "name"))
  ("d14"
   ("d14" "D-14" "CVCL:U052" "LXXIX-1G12-G7" "RELATED synonym" "," "D14"
    "CVCL:J750" "D 14" "RELATED synonym" "CVCL:H944" "D14" "name"))
  ("d20" ("d20" "D20" "CVCL:W869" "D20" "name"))
  ("d4T"
   ("d4t" "d4T" "CHEBI:63581" "stavudine" "RELATED synonym" "NCIT:C1428"
    "stavudine" "synonym"))
  ("d4t"
   ("d4t" "d4T" "CHEBI:63581" "stavudine" "RELATED synonym" "NCIT:C1428"
    "stavudine" "synonym"))
  ("dC3"
   ("dc3" "DC3" "HGNC:23250 G" "diacylglycerol O-acyltransferase 2 like 6"
    "Synonym"))
  ("dV1" ("dv1" "DV-1" "CVCL:AQ54" "DV-1" "name"))
  ("dpp2" ("dpp2" "DPP2" "HGNC:14892 G" "dipeptidyl peptidase 7" "Synonym"))
  ("e13"
   ("e13" "E13" "UP:Q38488" "Uncharacterized protein gp12" "AltName: Full"))
  ("eiF4E"
   ("eif4e" "EIF4E" "FPLX:EIF4E" "EIF4E" "name" "HGNC:3287 G"
    "eukaryotic translation initiation factor 4E" "Approved Symbol"
    "NCIT:C105124" "EIF4E" "name" "," "eIF-4E" "UP:P06730 H"
    "Eukaryotic translation initiation factor 4E" "RecName: Short"
    "UP:P63073 M" "Eukaryotic translation initiation factor 4E"
    "RecName: Short" "NCIT:C105125"
    "eukaryotic translation initiation factor 4E" "synonym" "," "eIF4E"
    "UP:P06730 H" "Eukaryotic translation initiation factor 4E"
    "RecName: Short" "UP:P63073 M"
    "Eukaryotic translation initiation factor 4E" "RecName: Short"
    "NCIT:C105125" "eukaryotic translation initiation factor 4E" "synonym"))
  ("eid2"
   ("eid2" "EID-2" "HGNC:28292 G"
    "EP300 interacting inhibitor of differentiation 2" "Synonym" "UP:Q17QW4"
    "EP300-interacting inhibitor of differentiation 2" "RecName: Short"
    "UP:Q8N6I1 H" "EP300-interacting inhibitor of differentiation 2"
    "RecName: Short" "UP:Q6X7S9 M"
    "EP300-interacting inhibitor of differentiation 2" "RecName: Short" ","
    "EID2" "HGNC:28292 G" "EP300 interacting inhibitor of differentiation 2"
    "Approved Symbol"))
  ("em3" ("em3" "EM3" "CVCL:2033" "EM-3" "name"))
  ("er1"
   ("er1" "ER-1" "CVCL:L896" "ER-1" "name" "," "ER1" "CVCL:EJ07" "HCC827 ER1"
    "RELATED synonym" "," "Er1" "CVCL:Z906" "E-r[1]" "RELATED synonym"
    "UP:Q8N108 H" "Mesoderm induction early response protein 1"
    "RecName: Short" "UP:Q5UAK0 M"
    "Mesoderm induction early response protein 1" "RecName: Short" "UP:Q5REE1"
    "Mesoderm induction early response protein 1" "RecName: Short" "UP:Q7T105"
    "Mesoderm induction early response protein 1" "RecName: Short"))
  ("ert2"
   ("ert2" "ERT2" "UP:P27361 H" "Mitogen-activated protein kinase 3"
    "AltName: Full" "UP:Q63844 M" "Mitogen-activated protein kinase 3"
    "AltName: Full" "UP:P21708" "Mitogen-activated protein kinase 3"
    "AltName: Full" "NCIT:C17408" "mitogen-activated protein kinase 3"
    "synonym"))
  ("fip200"
   ("fip200" "FIP200" "HGNC:15574 G" "RB1 inducible coiled-coil 1" "Synonym"
    "UP:Q8TDY2 H" "RB1-inducible coiled-coil protein 1" "AltName: Short"
    "UP:Q9ESK9 M" "RB1-inducible coiled-coil protein 1" "AltName: Short"
    "NCIT:C88177" "RB1CC1" "synonym" "NCIT:C88178"
    "RB1-inducible coiled-coil protein 1" "synonym"))
  ("ft3"
   ("ft3" "ft3" "NCIT:C48487" "cubic foot" "synonym" "NCIT:C68859"
    "standard cubic foot" "synonym"))
  ("g111"
   ("g111" "G-111" "CVCL:N739" "NCE-G 111" "RELATED synonym" "," "G111"
    "EFO:0006395" "G111" "name"))
  ("g123" ("g123" "G-123" "CVCL:N745" "NCE-G 123" "RELATED synonym"))
  ("g41"
   ("g41" "G4-1" "HGNC:17485 G"
    "protein phosphatase 2 regulatory subunit B''gamma" "Synonym"))
  ("gG2"
   ("gg2" "gG-2" "UP:P81780 H" "Envelope glycoprotein G" "AltName: Full"
    "UP:P13290 H" "Envelope glycoprotein G" "AltName: Full"))
  ("galectin9"
   ("galectin9" "galectin-9" "UP:Q3MHZ8" "Galectin-9" "RecName: Full"
    "UP:O00182 H" "Galectin-9" "RecName: Full" "UP:O08573 M" "Galectin-9"
    "RecName: Full" "UP:P97840" "Galectin-9" "RecName: Full" "NCIT:C112126"
    "galectin-9" "name"))
  ("gastrin17" ("gastrin17" "gastrin-17" "CHEBI:75441" "gastrin-17" "name"))
  ("gmp140"
   ("gmp140" "GMP-140" "UP:P42201" "P-selectin" "AltName: Short" "UP:P16109 H"
    "P-selectin" "AltName: Short" "UP:Q01102 M" "P-selectin" "AltName: Short"
    "UP:P98106" "P-selectin" "AltName: Short" "UP:P98109" "P-selectin"
    "AltName: Short" "NCIT:C17522" "P-selectin" "synonym" "NCIT:C117850"
    "P-selectin measurement" "synonym" "," "GMP140" "HGNC:10721 G" "selectin P"
    "Synonym" "NCIT:C17522" "P-selectin" "synonym" "NCIT:C51191" "SELP"
    "synonym"))
  ("gp15"
   ("gp15" "Gp15" "UP:D3WAD3" "Distal tail protein" "AltName: Short" "UP:etc"
    "" "fake" "," "gp15" "UP:Q38300" "Major capsid protein" "AltName: Short"
    "UP:P11112" "Tail completion protein gp15" "AltName: Short" "UP:Q9T1X4"
    "Uncharacterized protein gp15" "AltName: Short"))
  ("gp26"
   ("gp26" "Gp26" "UP:Q6XQB2" "Portal protein" "AltName: Short" "UP:B6UL32"
    "SaV protein {ECO:0000312|EMBL:ACI94899.1}" "AltName: Short" "UP:O21894"
    "SaV protein" "AltName: Short" "," "gp26" "UP:Q9T1W8"
    "Uncharacterized protein gp26" "AltName: Short" "UP:P13335"
    "Baseplate hub assembly protein gp26" "AltName: Short"))
  ("gp37"
   ("gp37" "Gp37" "UP:Q05247" "Gene 37 protein" "AltName: Full" "," "gp37"
    "UP:P03744" "Long-tail fiber protein gp37" "AltName: Short" "UP:Q9T1V8"
    "Probable tail terminator protein" "AltName: Short" "XFAM:PF09646 Domain"
    "gp37" "ID"))
  ("gp38"
   ("gp38" "GP38" "UP:P38616" "Protein YGP1" "AltName: Full"
    "XFAM:PF05268 Family" "GP38" "ID" "," "Gp38" "HGNC:29602 G" "podoplanin"
    "Synonym" "UP:Q62011 M" "Podoplanin" "AltName: Short" "UP:O64229"
    "Gene 38 protein" "AltName: Full" "UP:Q05248" "Gene 38 protein"
    "AltName: Full" "NCIT:C104786" "PDPN" "synonym" "," "gp38" "UP:Q09YD1"
    "Gene product 38" "RecName: Short" "UP:P79677"
    "Putative sheath terminator protein" "AltName: Short" "UP:P03739"
    "Tail fiber assembly protein" "AltName: Short" "UP:Q6XQC4"
    "Tape measure protein {ECO:0000255|HAMAP-Rule:MF_04138}" "AltName: Short"))
  ("gp46"
   ("gp46" "GP46" "UP:P29457" "Serpin H1" "AltName: Full" "XFAM:PF07409 Family"
    "GP46" "ID" "," "Gp46" "UP:O64237" "Gene 46 protein" "AltName: Full"
    "UP:Q05257" "Gene 46 protein" "AltName: Full" "," "gp46" "UP:Q9T1V3"
    "Baseplate protein gp46" "AltName: Short" "UP:P04522"
    "Exonuclease subunit 2" "AltName: Short"))
  ("gp52"
   ("gp52" "GP52" "XFAM:PF17468 Family" "GP52" "ID" "," "Gp52" "UP:O64242"
    "Gene 52 protein" "AltName: Full" "UP:Q05268" "Gene 52 protein"
    "AltName: Full" "," "gp52" "XFAM:PF17468 Family" "GP52" "PI"))
  ("gp53"
   ("gp53" "Gp53" "UP:O64243" "Gene 53 protein" "AltName: Full" "UP:Q05269"
    "Gene 53 protein" "AltName: Full" "," "gp53" "UP:P16011"
    "Baseplate wedge protein gp53" "AltName: Short" "UP:P03015"
    "Serine recombinase gin" "AltName: Short"))
  ("gp69"
   ("gp69" "Gp69" "UP:O64262" "Gene 69 protein" "AltName: Full" "UP:Q05283"
    "Gene 69 protein" "AltName: Full" "," "gp69" "UP:P04523"
    "DNA replication protein" "AltName: Short"))
  ("gpr15"
   ("gpr15" "GPR15" "HGNC:4469 G" "G protein-coupled receptor 15"
    "Approved Symbol" "NCIT:C140246" "GPR15" "name" "NCIT:C140247"
    "G-protein coupled receptor 15" "synonym"))
  ("h14"
   ("h14" "H1-4" "HGNC:4718 G" "H1.4 linker histone, cluster member"
    "Approved Symbol" "NCIT:C115354" "H1-4" "name" "NCIT:C115355"
    "histone H1.4" "synonym" "," "H14" "CVCL:9775" "WA14" "RELATED synonym"
    "NCIT:C20260" "GE14" "synonym" "NCIT:C20312" "WA14" "synonym"))
  ("hAPG5"
   ("hapg5" "hAPG5" "HGNC:589 G" "autophagy related 5" "Synonym" "NCIT:C104963"
    "ATG5" "synonym"))
  ("hAd2" ("had2" "HAD2" "CVCL:C073" "HAD2" "name"))
  ("hg38"
   ("hg38" "HG38" "HGNC:4504 G"
    "leucine rich repeat containing G protein-coupled receptor 5" "Synonym"
    "NCIT:C101485" "LGR5" "synonym"))
  ("hs2" ("hs2" "HS2" "UP:P29202" "30S ribosomal protein S2" "AltName: Full"))
  ("hsp90"
   ("hsp90" "HSP-90" "NCIT:C17766" "heat shock protein 90" "synonym" ","
    "HSP90" "FPLX:HSP90" "HSP90" "name" "UP:Q4UDU8" "Heat shock protein 90"
    "RecName: Short" "UP:P24724" "Heat shock protein 90" "RecName: Short"
    "XFAM:PF00183 Family" "HSP90" "ID" "NCIT:C17766" "heat shock protein 90"
    "synonym" "," "Hsp90" "HGNC:5253 G"
    "heat shock protein 90 alpha family class A member 1" "Synonym" "," "hsp90"
    "XFAM:PF02518 Domain" "HATPase c" "WK" "XFAM:PF13589 Domain" "HATPase c 3"
    "WK" "XFAM:PF00183 Family" "HSP90" "WK" "NCIT:C97587" "HSP90AA1"
    "synonym"))
  ("hspA5"
   ("hspa5" "HSPA5" "HGNC:5238 G"
    "heat shock protein family A (Hsp70) member 5" "Approved Symbol"
    "NCIT:C48836" "78 kDa glucose-regulated protein" "synonym" "NCIT:C49546"
    "HSPA5" "name"))
  ("i90" ("i90" "I90" "CVCL:0347" "IMR-90" "RELATED synonym"))
  ("icd9"
   ("icd9" "ICD-9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym" ","
    "ICD9" "NCIT:C71890"
    "international classification of diseases, ninth revision" "synonym"))
  ("ifnar1"
   ("ifnar1" "IFNAR1" "HGNC:5432 G"
    "interferon alpha and beta receptor subunit 1" "Approved Symbol"
    "NCIT:C51352" "IFNAR1" "name"))
  ("ihg2"
   ("ihg2" "IHG-2" "UP:O60565 H" "Gremlin-1" "AltName: Short" "NCIT:C152000"
    "GREM1" "synonym" "NCIT:C152001" "gremlin-1" "synonym" "," "IHG2"
    "HGNC:9005 G" "paired like homeodomain 2" "Previous Symbol" "NCIT:C75892"
    "PITX2" "synonym"))
  ("it1"
   ("it1" "IT1" "HGNC:28719 G" "HAUS augmin like complex subunit 3" "Synonym"))
  ("km2" ("km2" "km2" "NCIT:C68864" "square kilometer" "synonym"))
  ("l23"
   ("l23" "L23" "CVCL:3829" "L23" "name" "HGNC:10316 G" "ribosomal protein L23"
    "Synonym" "UP:P09540" "Myosin light chain, embryonic" "AltName: Full"
    "UP:P24049" "60S ribosomal protein L17" "AltName: Full" "UP:P0CX82"
    "60S ribosomal protein L19-A" "AltName: Full" "UP:P0CX83"
    "60S ribosomal protein L19-B" "AltName: Full" "XFAM:PF00276 Family"
    "ribosomal L23" "PI"))
  ("l45"
   ("l45" "L45" "UP:P02400" "60S acidic ribosomal protein P2-beta"
    "AltName: Full"))
  ("lef2"
   ("lef2" "lef-2" "XFAM:PF03041 Family" "baculo LEF-2" "DE"
    "XFAM:PF03041 Family" "baculo LEF-2" "PI"))
  ("lh3"
   ("lh3" "LH3" "HGNC:9083 G"
    "procollagen-lysine,2-oxoglutarate 5-dioxygenase 3" "Synonym"))
  ("linc1992"
   ("linc1992" "Linc1992" "HGNC:49503 R"
    "TNF and HNRNPL related immunoregulatory long non-coding RNA" "Synonym"))
  ("log10" ("log10" "log10" "NCIT:C75941" "log10" "name"))
  ("m127" ("m127" "M12-7" "CVCL:EL40" "PENN140i-M12-7" "RELATED synonym"))
  ("m129"
   ("m129" "M-129" "MESH:C009964"
    "10-(2-dimethylaminopropyl)-9-acridone monohydrochloride" "SY"))
  ("m13"
   ("m13" "M-13" "CVCL:J751" "E 20" "RELATED synonym" "," "M13" "CVCL:UU87"
    "MCF-7 M13" "RELATED synonym" "CHEBI:140166" "cyclosporin A metabolite M13"
    "RELATED synonym"))
  ("m138" ("m138" "M138" "CVCL:J758" "M 138" "RELATED synonym"))
  ("mAPG10"
   ("mapg10" "mAPG10" "UP:Q8R1P4 M" "Ubiquitin-like-conjugating enzyme ATG10"
    "AltName: Short"))
  ("mda5"
   ("mda5" "MDA-5" "HGNC:18873 G" "interferon induced with helicase C domain 1"
    "Synonym" "UP:Q9BYX4 H"
    "Interferon-induced helicase C domain-containing protein 1"
    "AltName: Short" "UP:Q8R5F7 M"
    "Interferon-induced helicase C domain-containing protein 1"
    "AltName: Short" "NCIT:C119720" "IFIH1" "synonym" "NCIT:C119721"
    "interferon-induced helicase C domain-containing protein 1" "synonym" ","
    "MDA5" "HGNC:18873 G" "interferon induced with helicase C domain 1"
    "Synonym" "NCIT:C119720" "IFIH1" "synonym"))
  ("met2"
   ("met2" "MET2" "CVCL:LN10" "MET-2" "name" "," "met-2" "UP:O55055 M"
    "tRNA (cytosine(38)-C(5))-methyltransferase" "AltName: Full"))
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
  ("mm10" ("mm10" "MM10" "CVCL:WZ38" "TCPH-MM10" "RELATED synonym"))
  ("mm3"
   ("mm3" "MM-3" "CVCL:VG92" "MM-3" "name" "," "MM3" "CVCL:M193" "TCPH-MM03"
    "RELATED synonym" "UP:Q91771" "Homeobox protein Hox-B7-A" "AltName: Full"
    "UP:P49111" "Transmembrane 4 L6 family member 1" "AltName: Full" "," "mm3"
    "NCIT:C48153" "microliter" "synonym" "NCIT:C48153" "microliter" "synonym"))
  ("mm8" ("mm8" "MM8" "CVCL:WZ36" "TCPH-MM08" "RELATED synonym"))
  ("n39" ("n39" "N39" "CVCL:D439" "mHypoE-N39" "RELATED synonym"))
  ("nc2" ("nc2" "NC2" "NCIT:C53101" "DR1" "synonym"))
  ("nci60" ("nci60" "NCI-60" "NCIT:C139309" "NCI-60 cell line" "synonym"))
  ("neo1"
   ("neo1" "NEO1" "HGNC:7754 G" "neogenin 1" "Approved Symbol" "NCIT:C33999"
    "neogenin" "synonym" "NCIT:C52345" "NEO1" "name"))
  ("nps2"
   ("nps2" "NPS2" "UP:A0A248AFK6" "Nonribosomal peptide synthase NPS2"
    "RecName: Short"))
  ("nsp16" ("nsp16" "NSP16" "XFAM:PF06460 Domain" "NSP16" "ID"))
  ("nylon6" ("nylon6" "nylon-6" "MESH:C009916" "nylon 6" "SY"))
  ("ot2" ("ot2" "OT2" "CVCL:7021" "ACC-LC-52" "RELATED synonym"))
  ("p095" ("p095" "P095" "CVCL:JT89" "JHU095i" "RELATED synonym"))
  ("p138"
   ("p138" "P138" "HGNC:15448 G" "golgi integral membrane protein 4" "Synonym"
    "NCIT:C101653" "GOLIM4" "synonym"))
  ("p155"
   ("p155" "P1-55" "CVCL:B253" "KBM-7 P1-55" "RELATED synonym" "," "P155"
    "CVCL:JU35" "JHU155i" "RELATED synonym"))
  ("p165"
   ("p165" "P-165" "NCIT:C289" "azaserine" "synonym" "NCIT:C289" "azaserine"
    "synonym" "," "P165" "CVCL:JU44" "JHU165i" "RELATED synonym"))
  ("p183" ("p183" "P183" "CVCL:JU57" "JHU183i" "RELATED synonym"))
  ("p204" ("p204" "P204" "CVCL:JU75" "JHU204i" "RELATED synonym"))
  ("p247" ("p247" "P247" "CVCL:JV12" "JHU247i" "RELATED synonym"))
  ("p510" ("p510" "P5-10" "HGNC:30984 R" "HLA complex P5B" "Synonym"))
  ("p542"
   ("p542" "P542" "HGNC:15921 G" "RALY heterogeneous nuclear ribonucleoprotein"
    "Synonym"))
  ("pDAP2"
   ("pdap2" "PDAP2" "HGNC:17034 G"
    "tumor suppressor 2, mitochondrial calcium regulator" "Previous Symbol"
    "NCIT:C54391" "TUSC2" "synonym"))
  ("pET100"
   ("pet100" "PET100" "HGNC:40038 G" "PET100 cytochrome c oxidase chaperone"
    "Approved Symbol" "FA:05079" "PET100 family" "ID" "," "pet100"
    "XFAM:PF09803 Family" "pet100" "ID" "XFAM:PF09803 Family" "pet100" "DE"))
  ("pEX1"
   ("pex1" "PEX1" "HGNC:8850 G" "peroxisomal biogenesis factor 1"
    "Approved Symbol"))
  ("pI4"
   ("pi4" "PI-4" "UP:P29622 H" "Kallistatin" "AltName: Short" "UP:P58517"
    "Serine protease inhibitor 4" "RecName: Short" "," "PI4" "HGNC:8948 G"
    "serpin family A member 4" "Previous Symbol" "," "Pi-4" "UP:P58498"
    "Potassium channel toxin alpha-KTx 6.4" "AltName: Short" "," "Pi4"
    "UP:P58498" "Potassium channel toxin alpha-KTx 6.4" "AltName: Short"))
  ("pMX2" ("pmx2" "PMX2" "HGNC:21338 G" "paired related homeobox 2" "Synonym"))
  ("pRB3"
   ("prb3" "PRB3" "HGNC:9339 G" "proline rich protein BstNI subfamily 3"
    "Approved Symbol"))
  ("pSTAT3"
   ("pstat3" "pSTAT3" "NCIT:C156521" "phosphorylated STAT3 measurement"
    "synonym"))
  ("pSma1"
   ("psma1" "PSMA1" "HGNC:9530 G" "proteasome 20S subunit alpha 1"
    "Approved Symbol"))
  ("pV1"
   ("pv1" "PV-1" "HGNC:13635 G" "plasmalemma vesicle associated protein"
    "Synonym" "UP:Q9BX97 H" "Plasmalemma vesicle-associated protein"
    "AltName: Short" "UP:Q91VC4 M" "Plasmalemma vesicle-associated protein"
    "AltName: Short" "UP:Q9WV78" "Plasmalemma vesicle-associated protein"
    "AltName: Short" "XFAM:PF06637 Family" "PV-1" "ID" "NCIT:C103953" "PLVAP"
    "synonym" "NCIT:C103954" "plasmalemma vesicle-associated protein" "synonym"
    "," "PV1" "CVCL:8970" "PV1" "name" "HGNC:13635 G"
    "plasmalemma vesicle associated protein" "Synonym" "NCIT:C103953" "PLVAP"
    "synonym"))
  ("paO2"
   ("pao2" "PaO2" "NCIT:C71251" "partial pressure of oxygen measurement"
    "synonym"))
  ("page4"
   ("page4" "PAGE-4" "HGNC:4108 G" "PAGE family member 4" "Synonym"
    "UP:O60829 H" "P antigen family member 4" "RecName: Short" "," "PAGE4"
    "HGNC:4108 G" "PAGE family member 4" "Approved Symbol"))
  ("parp13"
   ("parp13" "PARP13" "HGNC:23721 G"
    "zinc finger CCCH-type containing, antiviral 1" "Synonym" "UP:Q7Z2W4 H"
    "Zinc finger CCCH-type antiviral protein 1" "AltName: Short" "UP:Q3UPF5 M"
    "Zinc finger CCCH-type antiviral protein 1" "AltName: Short" "UP:Q8K3Y6"
    "Zinc finger CCCH-type antiviral protein 1" "AltName: Short"))
  ("parp14"
   ("parp14" "PARP-14" "UP:Q460N5 H"
    "Protein mono-ADP-ribosyltransferase PARP14" "AltName: Short" "UP:Q2EMV9 M"
    "Protein mono-ADP-ribosyltransferase PARP14" "AltName: Short" "," "PARP14"
    "HGNC:29232 G" "poly(ADP-ribose) polymerase family member 14"
    "Approved Symbol"))
  ("parp9"
   ("parp9" "PARP-9" "UP:Q8IXQ6 H" "Protein mono-ADP-ribosyltransferase PARP9"
    "AltName: Short" "UP:Q8CAS9 M" "Protein mono-ADP-ribosyltransferase PARP9"
    "AltName: Short" "," "PARP9" "HGNC:24118 G"
    "poly(ADP-ribose) polymerase family member 9" "Approved Symbol"))
  ("pbp1"
   ("pbp1" "PBP1" "UP:P34176" "Pheromone-binding protein 1" "RecName: Short"
    "UP:P39793" "Penicillin-binding protein 1A/1B" "RecName: Short" "UP:Q8XJ01"
    "Penicillin-binding protein 1A" "RecName: Short"))
  ("phosphoeIF4E"
   ("phosphoeif4e" "phospho-EIF4E" "NCIT:C153382" "phosphorylated EIF4E"
    "synonym"))
  ("po0" ("po0" "Po-0" "EFO:0006972" "Po-0" "name"))
  ("pp1b"
   ("pp1b" "PP-1B" "HGNC:9282 G" "protein phosphatase 1 catalytic subunit beta"
    "Synonym" "UP:P62140 H"
    "Serine/threonine-protein phosphatase PP1-beta catalytic subunit"
    "RecName: Short" "UP:P62141 M"
    "Serine/threonine-protein phosphatase PP1-beta catalytic subunit"
    "RecName: Short" "," "PP1B" "HGNC:9282 G"
    "protein phosphatase 1 catalytic subunit beta" "Synonym"))
  ("prE2" ("pre2" "pre2" "UP:Q90ZE4" "Presenilin-2" "AltName: Full"))
  ("pstS1"
   ("psts1" "pstS-1" "UP:A0A0H3M950" "Phosphate-binding protein PstS1"
    "RecName: Short" "UP:P9WGU0" "Phosphate-binding protein PstS 1"
    "RecName: Short" "UP:P9WGU1" "Phosphate-binding protein PstS 1"
    "RecName: Short"))
  ("q35"
   ("q35" "Q-35" "MESH:C077155" "balofloxacin" "SY" "NCIT:C72631"
    "balofloxacin" "synonym"))
  ("rb1cc1"
   ("rb1cc1" "RB1CC1" "HGNC:15574 G" "RB1 inducible coiled-coil 1"
    "Approved Symbol" "NCIT:C88177" "RB1CC1" "name"))
  ("rp5"
   ("rp5" "RP5" "HGNC:53953 R" "SREBF2 antisense RNA 1" "Synonym" "UP:P0CX35"
    "40S ribosomal protein S4-A" "AltName: Full" "UP:P0CX36"
    "40S ribosomal protein S4-B" "AltName: Full"))
  ("rps11"
   ("rps11" "RPS11" "HGNC:10384 G" "ribosomal protein S11" "Approved Symbol"))
  ("rsp5"
   ("rsp5" "RSP5" "HGNC:7728 G" "NEDD4 like E3 ubiquitin protein ligase"
    "Synonym" "," "rsp-5" "UP:P86187" "Raniseptin-5" "RecName: Short"))
  ("s1360" ("s1360" "S-1360" "MESH:C451733" "S 1360" "SY"))
  ("s3578"
   ("s3578" "S-3578" "MESH:C471249"
    "7-(2-(5-amino-1,2,4-thiadiazol-3-yl)-2-ethoxyiminoacetamido)-3-(1-(3-methylaminopropyl)-1H-imidazo(4,5-b)pyridinium-4-yl)methyl-3-cephem-4-carboxylate"
    "SY"))
  ("sec13"
   ("sec13" "SEC13" "HGNC:10697 G"
    "SEC13 homolog, nuclear pore and COPII coat complex component"
    "Approved Symbol"))
  ("sec24" ("sec24" "SEC24" "FA:03535" "SEC24 subfamily" "ID"))
  ("serpinB2"
   ("serpinb2" "SERPINB2" "HGNC:8584 G" "serpin family B member 2"
    "Approved Symbol" "NCIT:C16948" "plasminogen activator inhibitor 2"
    "synonym" "NCIT:C51406" "SERPINB2" "name"))
  ("sms2"
   ("sms2" "SMS2" "HGNC:28395 G" "sphingomyelin synthase 2" "Synonym"
    "NCIT:C105025" "SGMS2" "synonym"))
  ("sod1"
   ("sod1" "SOD1" "HGNC:11179 G" "superoxide dismutase 1" "Approved Symbol"
    "NCIT:C54579" "SOD1" "name" "," "So-D1" "UP:P81572" "Defensin D1"
    "AltName: Full"))
  ("t14"
   ("t14" "T14" "UP:P26842 H" "CD27 antigen" "AltName: Full" "NCIT:C104072"
    "CD27" "synonym"))
  ("t18" ("t18" "T18" "UP:P13903" "Twist-related protein" "AltName: Full"))
  ("t20" ("t20" "T-20" "NCIT:C2105" "enfuvirtide" "synonym"))
  ("t21" ("t21" "T21" "CHEBI:75682" "dT21" "RELATED synonym"))
  ("tab2"
   ("tab2" "TAB-2" "UP:Q9NYJ8 H"
    "TGF-beta-activated kinase 1 and MAP3K7-binding protein 2" "AltName: Short"
    "UP:Q99K90 M" "TGF-beta-activated kinase 1 and MAP3K7-binding protein 2"
    "AltName: Short" "," "TAB2" "HGNC:17075 G"
    "TGF-beta activated kinase 1 (MAP3K7) binding protein 2"
    "Approved Symbol"))
  ("tef4"
   ("tef4" "TEF-4" "HGNC:11715 G" "TEA domain transcription factor 2" "Synonym"
    "," "TEF4" "HGNC:11715 G" "TEA domain transcription factor 2" "Synonym" ","
    "TeF4" "CHEBI:30468" "tellurium tetrafluoride" "RELATED synonym"))
  ("ttL1"
   ("ttl1" "TTL1" "UP:Q8VWG3 C" "Protein TRANSPARENT TESTA 1" "AltName: Full"))
  ("type2"
   ("type2" "TYPE2" "NCIT:C74570" "fitzpatrick skin type II" "synonym"))
  ("upf3"
   ("upf3" "UPF3" "HGNC:20332 G"
    "UPF3A regulator of nonsense mediated mRNA decay" "Synonym"))
  ("us12" ("us12" "uS12" "HGNC:10410 G" "ribosomal protein S23" "Synonym"))
  ("vBcl2"
   ("vbcl2" "vBcl-2" "UP:Q6VZT9" "Apoptosis regulator Bcl-2 homolog"
    "RecName: Short" "UP:P89884" "Apoptosis regulator Bcl-2 homolog"
    "RecName: Short" "UP:Q85365 H" "Apoptosis regulator Bcl-2 homolog"
    "RecName: Short"))
  ("vIL10"
   ("vil10" "vIL-10" "UP:P0C6Z6 H" "Viral interleukin-10 homolog"
    "RecName: Short" "UP:P03180 H" "Viral interleukin-10 homolog"
    "RecName: Short" "UP:P0CAP9 H" "Viral interleukin-10 homolog"
    "RecName: Short" "UP:P17150 H" "Viral interleukin-10 homolog"
    "RecName: Short" "UP:F5HC71 H" "Viral interleukin-10 homolog"
    "RecName: Short"))
  ("val2" ("val2" "VAL-2" "CVCL:9970" "VAL-2" "name"))
  ("αagglutinin"
   ("αagglutinin" "α-agglutinin" "UP:P20840" "Alpha-agglutinin"
    "RecName: Full"))
  ("αcubebene"
   ("αcubebene" "α-Cubebene" "CHEBI:10224" "alpha-Cubebene" "name"))
  ("βactin"
   ("βactin" "β-actin" "UP:P60709 H" "Actin, cytoplasmic 1" "AltName: Full"
    "UP:P60710 M" "Actin, cytoplasmic 1" "AltName: Full" "NCIT:C103969"
    "actin, cytoplasmic 1" "synonym"))
  ("βcarotene"
   ("βcarotene" "β-carotene" "NCIT:C1016" "beta-carotene" "name" "NCIT:C68305"
    "beta-carotene" "name"))
  ("βlactam" ("βlactam" "β-Lactam" "CHEBI:35627" "beta-lactam" "name"))
  ("βtubulin"
   ("βtubulin" "β-tubulin" "UP:P93176 B" "Tubulin beta chain" "AltName: Full"
    "NCIT:C129655" "beta tubulin" "synonym"))
  ("γinterferon"
   ("γinterferon" "γ-interferon" "NCIT:C583" "recombinant interferon gamma"
    "synonym" "NCIT:C20496" "interferon gamma" "synonym")))
)

