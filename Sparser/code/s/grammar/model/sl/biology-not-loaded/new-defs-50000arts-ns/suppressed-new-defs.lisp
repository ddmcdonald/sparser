(in-package :sparser)

(defparameter *SUPPRESSED-HYPHENATED-NEW-WORDS* 'NIL)

(defparameter *SUPPRESSED-MOD-REDEFS* '(("upcase" "APH1A"
                                         ("Aph1a" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q96BI3" :NAME
                                          "Gamma-secretase subunit APH-1A"))
                                        ("upcase" "CT28"
                                         ("Ct28" "ONT:GENE-PROTEIN" :ID
                                          "UP:Q9P127" :NAME
                                          "Leucine zipper protein 4"))
                                        ("upcase" "CT5"
                                         ("Ct5" "ONT:PROTEIN" :ID "UP:L0GAZ8"
                                          :NAME "Antimicrobial peptide UyCT5"))
                                        ("upcase" "DR12"
                                         ("Dr12" "ONT:PROTEIN" :ID "UP:Q95IE3"
                                          :NAME
                                          "HLA class II histocompatibility antigen, DRB1-12 beta chain"))
                                        ("upcase" "FAL1"
                                         ("Fal1" "ONT:GENE" :ID "NCIT:C119656"
                                          :NAME "FALEC"))
                                        ("upcase" "GDF8"
                                         ("Gdf8" "ONT:GENE-PROTEIN" :ID
                                          "UP:O14793" :NAME
                                          "Growth/differentiation factor 8"))
                                        ("upcase" "NS5B"
                                         ("NS5b" "ONT:PROTEIN" :ID "UP:Q89786"
                                          :NAME "Non-structural protein 5b"))
                                        ("upcase" "CASP13"
                                         ("casp13" "ONT:PROTEIN" :ID
                                          "UP:O75601" :NAME "Caspase-13"))
                                        ("upcase" "HS2"
                                         ("hs2" "ONT:PROTEIN" :ID "UP:P29202"
                                          :NAME "30S ribosomal protein S2"))
                                        ("upcase" "HSP90"
                                         ("hsp90" "ONT:GENE-PROTEIN" :ID
                                          "FPLX:HSP90" :NAME "HSP90"))
                                        ("upcase" "PP1B"
                                         ("pp1b" "ONT:GENE-PROTEIN" :ID
                                          "UP:P62140" :NAME
                                          "Serine/threonine-protein phosphatase PP1-beta catalytic subunit"))
                                        ("upcase" "TTL1"
                                         ("ttL1" "ONT:PROTEIN" :ID "UP:Q8VWG3"
                                          :NAME "Protein TRANSPARENT TESTA 1"))))

(defparameter *ID-MISMATCH-REDEF* '(("upcase" "ATG16L1" "UP:Q676U5"
                                     ("ATG16l1" "ONT:GENE" :ID "HGNC:21498"
                                      :NAME "autophagy related 16 like 1"))
                                    ("upcase" "ABCC2" "UP:Q92887"
                                     ("Abcc2" "ONT:GENE-PROTEIN" :ID "HGNC:53"
                                      :NAME
                                      "ATP binding cassette subfamily C member 2"))
                                    ("upcase" "AD1" "UP:P05067"
                                     ("Ad1" "ONT:GENE" :ID "NCIT:C51309" :NAME
                                      "APP"))
                                    ("upcase" "AD2" "UP:P02649"
                                     ("Ad2" "ONT:GENE" :ID "NCIT:C84469" :NAME
                                      "APOE"))
                                    ("upcase" "ADH5" "UP:P11766"
                                     ("AdH5" "ONT:GENE" :ID "HGNC:253" :NAME
                                      "alcohol dehydrogenase 5 (class III), chi polypeptide"))
                                    ("upcase" "AGC1" "UP:P16112"
                                     ("AgC1" "ONT:GENE" :ID "HGNC:319" :NAME
                                      "aggrecan"))
                                    ("upcase" "ALDH8A1" "UP:Q9H2A2"
                                     ("Aldh8a1" "ONT:GENE" :ID "HGNC:15471"
                                      :NAME
                                      "aldehyde dehydrogenase 8 family member A1"))
                                    ("upcase" "ALG9" "UP:Q9H6U8"
                                     ("Alg9" "ONT:GENE" :ID "HGNC:15672" :NAME
                                      "ALG9 alpha-1,2-mannosyltransferase"))
                                    ("upcase" "BCAR1" "UP:P56945"
                                     ("Bcar1" "ONT:GENE-PROTEIN" :ID "HGNC:971"
                                      :NAME
                                      "BCAR1 scaffold protein, Cas family member"))
                                    ("upcase" "BCRP1" "UP:Q9UNQ0"
                                     ("Bcrp1" "ONT:GENE" :ID "NCIT:C52276"
                                      :NAME "ABCG2"))
                                    ("upcase" "C4A" "UP:P0C0L4"
                                     ("C4a" "ONT:GENE" :ID "HGNC:1323" :NAME
                                      "complement C4A (Rodgers blood group)"))
                                    ("upcase" "CD300LF" "UP:Q8TDQ1"
                                     ("CD300lf" "ONT:GENE" :ID "HGNC:29883"
                                      :NAME
                                      "CD300 molecule like family member f"))
                                    ("upcase" "CD3D" "UP:P04234"
                                     ("CD3d" "ONT:GENE-PROTEIN" :ID "HGNC:1673"
                                      :NAME "CD3d molecule"))
                                    ("upcase" "CD3E" "UP:P07766"
                                     ("CD3e" "ONT:GENE-PROTEIN" :ID "HGNC:1674"
                                      :NAME "CD3e molecule"))
                                    ("upcase" "CD8B" "UP:P10966"
                                     ("CD8b" "ONT:GENE-PROTEIN" :ID "HGNC:1707"
                                      :NAME "CD8b molecule"))
                                    ("upcase" "CBP80" "UP:Q09161"
                                     ("Cbp80" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:7658" :NAME
                                      "nuclear cap binding protein subunit 1"))
                                    ("upcase" "CCBL1" "UP:Q16773"
                                     ("Ccbl1" "ONT:GENE" :ID "HGNC:1564" :NAME
                                      "kynurenine aminotransferase 1"))
                                    ("upcase" "CD26" "UP:P27487"
                                     ("Cd26" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C91299" :NAME "DPP4"))
                                    ("upcase" "CD40" "UP:P25942"
                                     ("Cd40" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11919" :NAME "CD40 molecule"))
                                    ("upcase" "CLEC7A" "UP:Q9BXN2"
                                     ("Clec7a" "ONT:GENE" :ID "HGNC:14558"
                                      :NAME
                                      "C-type lectin domain containing 7A"))
                                    ("upcase" "COY1" "UP:P34237"
                                     ("Coy1" "ONT:GENE" :ID "NCIT:C95579" :NAME
                                      "CUX1"))
                                    ("upcase" "CREB1" "UP:P16220"
                                     ("Creb1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2345" :NAME
                                      "cAMP responsive element binding protein 1"))
                                    ("upcase" "CT29" "UP:Q8NG31"
                                     ("Ct29" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C97379" :NAME "KNL1"))
                                    ("upcase" "CYP2A" "UP:Q16696"
                                     ("Cyp2a" "ONT:GENE" :ID "NCIT:C52355"
                                      :NAME "CYP2A6"))
                                    ("upcase" "DER3" "UP:Q86TM6"
                                     ("Der3" "ONT:GENE" :ID "HGNC:20738" :NAME
                                      "synoviolin 1"))
                                    ("upcase" "DHX9" "UP:Q08211"
                                     ("Dhx9" "ONT:GENE" :ID "HGNC:2750" :NAME
                                      "DExH-box helicase 9"))
                                    ("upcase" "DNAJB1" "UP:P25685"
                                     ("DnajB1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5270" :NAME
                                      "DnaJ heat shock protein family (Hsp40) member B1"))
                                    ("upcase" "DP3" "UP:P14923"
                                     ("Dp3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51178" :NAME "JUP"))
                                    ("upcase" "DPM1" "UP:O60762"
                                     ("Dpm1" "ONT:GENE" :ID "HGNC:3005" :NAME
                                      "dolichyl-phosphate mannosyltransferase subunit 1, catalytic"))
                                    ("upcase" "FCHO1" "UP:O14526"
                                     ("FCHo1" "ONT:GENE" :ID "HGNC:29002" :NAME
                                      "FCH and mu domain containing endocytic adaptor 1"))
                                    ("upcase" "GBP6" "UP:Q6ZN66"
                                     ("Gbp6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:25395" :NAME
                                      "guanylate binding protein family member 6"))
                                    ("upcase" "GP3" "XFAM:PF03076.12"
                                     ("Gp3" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF03076" :NAME "GP3"))
                                    ("upcase" "GRP58" "UP:P30101"
                                     ("Grp58" "ONT:GENE" :ID "NCIT:C112120"
                                      :NAME "PDIA3"))
                                    ("upcase" "GSTA1" "UP:P08263"
                                     ("Gsta1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4626" :NAME
                                      "glutathione S-transferase alpha 1"))
                                    ("upcase" "GSTA2" "UP:P09210"
                                     ("Gsta2" "ONT:GENE" :ID "HGNC:4627" :NAME
                                      "glutathione S-transferase alpha 2"))
                                    ("upcase" "H2B" "FA:01763"
                                     ("H2b" "ONT:GENE-PROTEIN" :ID
                                      "FPLX:Histone_H2B" :NAME "Histone-H2B"))
                                    ("upcase" "HA4" "UP:Q9D646"
                                     ("Ha4" "ONT:GENE" :ID "HGNC:6452" :NAME
                                      "keratin 34"))
                                    ("upcase" "HBS1" "UP:Q9Y450"
                                     ("Hbs1" "ONT:GENE" :ID "HGNC:4834" :NAME
                                      "HBS1 like translational GTPase"))
                                    ("upcase" "IFNA2" "UP:P01563"
                                     ("IFNa2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5423" :NAME "interferon alpha 2"))
                                    ("upcase" "IFNB1" "UP:P01574"
                                     ("IFNb1" "ONT:GENE" :ID "HGNC:5434" :NAME
                                      "interferon beta 1"))
                                    ("upcase" "IL10B" "UP:Q13007"
                                     ("IL10b" "ONT:GENE" :ID "NCIT:C50932"
                                      :NAME "IL24"))
                                    ("upcase" "IFITM2" "UP:Q01629"
                                     ("Ifitm2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5413" :NAME
                                      "interferon induced transmembrane protein 2"))
                                    ("upcase" "IFNA1" "UP:P01562"
                                     ("Ifna1" "ONT:GENE" :ID "HGNC:5417" :NAME
                                      "interferon alpha 1"))
                                    ("upcase" "IFNAR2" "UP:P48551"
                                     ("Ifnar2" "ONT:GENE" :ID "HGNC:5433" :NAME
                                      "interferon alpha and beta receptor subunit 2"))
                                    ("upcase" "IFNGR2" "UP:P38484"
                                     ("Ifngr2" "ONT:GENE" :ID "HGNC:5440" :NAME
                                      "interferon gamma receptor 2"))
                                    ("upcase" "IFNL2" "UP:Q8IZJ0"
                                     ("Ifnl2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:18364" :NAME
                                      "interferon lambda 2"))
                                    ("upcase" "MAPK3" "UP:P27361"
                                     ("Mapk3" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:6877" :NAME
                                      "mitogen-activated protein kinase 3"))
                                    ("upcase" "MKK3" "UP:P46734"
                                     ("Mkk3" "ONT:GENE" :ID "NCIT:C125165"
                                      :NAME "MAP2K3"))
                                    ("upcase" "MOV34" "UP:P51665"
                                     ("Mov34" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9565" :NAME
                                      "proteasome 26S subunit, non-ATPase 7"))
                                    ("upcase" "MSE1" "UP:Q5JPH6"
                                     ("Mse1" "ONT:GENE" :ID "HGNC:29419" :NAME
                                      "glutamyl-tRNA synthetase 2, mitochondrial"))
                                    ("upcase" "NUP58" "UP:Q9BVL2"
                                     ("Nup58" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:20261" :NAME "nucleoporin 58"))
                                    ("upcase" "OAS2" "UP:P29728"
                                     ("Oas2" "ONT:GENE" :ID "HGNC:8087" :NAME
                                      "2'-5'-oligoadenylate synthetase 2"))
                                    ("upcase" "OAS3" "UP:Q9Y6K5"
                                     ("Oas3" "ONT:GENE" :ID "HGNC:8088" :NAME
                                      "2'-5'-oligoadenylate synthetase 3"))
                                    ("upcase" "OMP85" "UP:Q9Y512"
                                     ("Omp85" "ONT:GENE-PROTEIN" :ID
                                      "UP:P0A940" :NAME
                                      "Outer membrane protein assembly factor BamA {ECO:0000255|HAMAP-Rule:MF_01430}"))
                                    ("upcase" "PPP1R15A" "UP:O75807"
                                     ("PPP1R15a" "ONT:GENE" :ID "HGNC:14375"
                                      :NAME
                                      "protein phosphatase 1 regulatory subunit 15A"))
                                    ("upcase" "PAN6" "UP:P59046"
                                     ("Pan6" "ONT:GENE" :ID "HGNC:22938" :NAME
                                      "NLR family pyrin domain containing 12"))
                                    ("upcase" "PCP4" "UP:P48539"
                                     ("Pcp4" "ONT:GENE-PROTEIN" :ID "HGNC:8742"
                                      :NAME "Purkinje cell protein 4"))
                                    ("upcase" "PEBP1" "UP:P30086"
                                     ("Pebp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8630" :NAME
                                      "phosphatidylethanolamine binding protein 1"))
                                    ("upcase" "POU2F1" "UP:P14859"
                                     ("Pou2f1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:9212" :NAME
                                      "POU class 2 homeobox 1"))
                                    ("upcase" "PPP1R12A" "UP:O14974"
                                     ("Ppp1r12a" "ONT:GENE" :ID "HGNC:7618"
                                      :NAME
                                      "protein phosphatase 1 regulatory subunit 12A"))
                                    ("upcase" "RP105" "UP:Q99467"
                                     ("Rp105" "ONT:GENE" :ID "HGNC:6726" :NAME
                                      "CD180 molecule"))
                                    ("upcase" "RPL13A" "UP:P40429"
                                     ("Rpl13a" "ONT:GENE" :ID "HGNC:10304"
                                      :NAME "ribosomal protein L13a"))
                                    ("upcase" "RSAD2" "UP:Q8WXG1"
                                     ("Rsad2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:30908" :NAME
                                      "radical S-adenosyl methionine domain containing 2"))
                                    ("upcase" "S5B" "UP:Q16401"
                                     ("S5b" "ONT:GENE" :ID "HGNC:9563" :NAME
                                      "proteasome 26S subunit, non-ATPase 5"))
                                    ("upcase" "SFRS4" "UP:Q08170"
                                     ("Sfrs4" "ONT:GENE" :ID "HGNC:10786" :NAME
                                      "serine and arginine rich splicing factor 4"))
                                    ("upcase" "SLC11A1" "UP:P49279"
                                     ("Slc11a1" "ONT:GENE" :ID "HGNC:10907"
                                      :NAME
                                      "solute carrier family 11 member 1"))
                                    ("upcase" "SLC26A4" "UP:O43511"
                                     ("Slc26a4" "ONT:GENE" :ID "HGNC:8818"
                                      :NAME
                                      "solute carrier family 26 member 4"))
                                    ("upcase" "SLC2A3" "UP:P11169"
                                     ("Slc2a3" "ONT:GENE" :ID "HGNC:11007"
                                      :NAME
                                      "solute carrier family 2 member 3"))
                                    ("upcase" "SPINT2" "UP:O43291"
                                     ("Spint2" "ONT:GENE" :ID "HGNC:11247"
                                      :NAME
                                      "serine peptidase inhibitor, Kunitz type 2"))
                                    ("upcase" "SRC1" "UP:P12931"
                                     ("Src1" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C17977" :NAME
                                      "nuclear receptor coactivator 1"))
                                    ("upcase" "THOX2" "UP:Q9NRD8"
                                     ("ThOX2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:13273" :NAME "dual oxidase 2"))
                                    ("upcase" "TLL2" "UP:Q9Y6L7"
                                     ("Tll2" "ONT:GENE" :ID "HGNC:11844" :NAME
                                      "tolloid like 2"))
                                    ("upcase" "UBE2L6" "UP:O14933"
                                     ("Ube2L6" "ONT:GENE" :ID "HGNC:12490"
                                      :NAME
                                      "ubiquitin conjugating enzyme E2 L6"))
                                    ("upcase" "UGT1A" "UP:P22309"
                                     ("Ugt1a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:12529" :NAME
                                      "UDP glucuronosyltransferase family 1 member A complex locus"))
                                    ("upcase" "UGT1A10" "UP:Q9HAW8"
                                     ("Ugt1a10" "ONT:PROTEIN" :ID "UP:Q6ZQM8"
                                      :NAME
                                      "UDP-glucuronosyltransferase 1-7C"))
                                    ("upcase" "ZBP1" "UP:Q9H171"
                                     ("Zbp1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:16176" :NAME
                                      "Z-DNA binding protein 1"))
                                    ("upcase" "ZC3H12A" "UP:Q5D1E8"
                                     ("Zc3h12a" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:26259" :NAME
                                      "zinc finger CCCH-type containing 12A"))
                                    ("upcase" "ACE2" "UP:Q9BYF1"
                                     ("ace2" "ONT:GENE" :ID "HGNC:13557" :NAME
                                      "angiotensin I converting enzyme 2"))
                                    ("upcase" "APP1" "UP:Q13310"
                                     ("app1" "ONT:GENE-PROTEIN" :ID "HGNC:8557"
                                      :NAME
                                      "poly(A) binding protein cytoplasmic 4"))
                                    ("upcase" "AT1" "UP:P30556"
                                     ("at1" "ONT:GENE-PROTEIN" :ID "UP:O00400"
                                      :NAME "Acetyl-coenzyme A transporter 1"))
                                    ("upcase" "C1R" "UP:P00736"
                                     ("c1r" "ONT:GENE" :ID "HGNC:1246" :NAME
                                      "complement C1r"))
                                    ("upcase" "CD150" "UP:Q13291"
                                     ("cD150" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104060" :NAME "SLAMF1"))
                                    ("upcase" "CD46" "UP:P15529"
                                     ("cD46" "ONT:GENE" :ID "HGNC:6953" :NAME
                                      "CD46 molecule"))
                                    ("upcase" "CXCR4" "UP:P61073"
                                     ("cXcr4" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C51336" :NAME "CXCR4"))
                                    ("upcase" "CAP3" "UP:P50453"
                                     ("cap3" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104579" :NAME "SERPINB9"))
                                    ("upcase" "CD11C" "UP:P20702"
                                     ("cd11c" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C16789" :NAME "integrin alpha-X"))
                                    ("upcase" "CD20" "XFAM:PF04103.13"
                                     ("cd20" "ONT:GENE-PROTEIN" :ID
                                      "XFAM:PF04103" :NAME "CD20"))
                                    ("upcase" "CYP2D6" "UP:P10635"
                                     ("cyp2d6" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:2625" :NAME
                                      "cytochrome P450 family 2 subfamily D member 6"))
                                    ("upcase" "DC3" "UP:Q6ZPD8"
                                     ("dC3" "ONT:GENE" :ID "HGNC:23250" :NAME
                                      "diacylglycerol O-acyltransferase 2 like 6"))
                                    ("upcase" "EID2" "UP:Q8N6I1"
                                     ("eid2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:28292" :NAME
                                      "EP300 interacting inhibitor of differentiation 2"))
                                    ("upcase" "ERT2" "UP:P27361"
                                     ("ert2" "ONT:PROTEIN" :ID "NCIT:C17408"
                                      :NAME
                                      "mitogen-activated protein kinase 3"))
                                    ("upcase" "FIP200" "UP:Q8TDY2"
                                     ("fip200" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C88177" :NAME "RB1CC1"))
                                    ("upcase" "GP38" "UP:P79677"
                                     ("gp38" "ONT:GENE-PROTEIN" :ID "UP:Q09YD1"
                                      :NAME "Gene product 38"))
                                    ("upcase" "GPR15" "UP:P49685"
                                     ("gpr15" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4469" :NAME
                                      "G protein-coupled receptor 15"))
                                    ("upcase" "HSPA5" "UP:P11021"
                                     ("hspA5" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:5238" :NAME
                                      "heat shock protein family A (Hsp70) member 5"))
                                    ("upcase" "IFNAR1" "UP:P17181"
                                     ("ifnar1" "ONT:GENE" :ID "HGNC:5432" :NAME
                                      "interferon alpha and beta receptor subunit 1"))
                                    ("upcase" "IT1" "UP:Q68CZ6"
                                     ("it1" "ONT:GENE" :ID "HGNC:28719" :NAME
                                      "HAUS augmin like complex subunit 3"))
                                    ("upcase" "LH3" "UP:O60568"
                                     ("lh3" "ONT:GENE" :ID "HGNC:9083" :NAME
                                      "procollagen-lysine,2-oxoglutarate 5-dioxygenase 3"))
                                    ("upcase" "MDA5" "UP:Q9BYX4"
                                     ("mda5" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C119720" :NAME "IFIH1"))
                                    ("upcase" "NEO1" "UP:Q92859"
                                     ("neo1" "ONT:GENE-PROTEIN" :ID "HGNC:7754"
                                      :NAME "neogenin 1"))
                                    ("upcase" "P542" "UP:Q9UKM9"
                                     ("p542" "ONT:GENE" :ID "HGNC:15921" :NAME
                                      "RALY heterogeneous nuclear ribonucleoprotein"))
                                    ("upcase" "PET100" "UP:P0DJ07"
                                     ("pET100" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:40038" :NAME
                                      "PET100 cytochrome c oxidase chaperone"))
                                    ("upcase" "PEX1" "UP:O43933"
                                     ("pEX1" "ONT:GENE" :ID "HGNC:8850" :NAME
                                      "peroxisomal biogenesis factor 1"))
                                    ("upcase" "PI4" "UP:P29622"
                                     ("pI4" "ONT:GENE-PROTEIN" :ID "UP:P58517"
                                      :NAME "Serine protease inhibitor 4"))
                                    ("upcase" "PSMA1" "UP:P25786"
                                     ("pSma1" "ONT:GENE" :ID "HGNC:9530" :NAME
                                      "proteasome 20S subunit alpha 1"))
                                    ("upcase" "PAGE4" "UP:O60829"
                                     ("page4" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:4108" :NAME
                                      "PAGE family member 4"))
                                    ("upcase" "PARP14" "UP:Q460N5"
                                     ("parp14" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:29232" :NAME
                                      "poly(ADP-ribose) polymerase family member 14"))
                                    ("upcase" "PARP9" "UP:Q8IXQ6"
                                     ("parp9" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:24118" :NAME
                                      "poly(ADP-ribose) polymerase family member 9"))
                                    ("upcase" "PBP1" "UP:Q17077"
                                     ("pbp1" "ONT:PROTEIN" :ID "UP:P34176"
                                      :NAME "Pheromone-binding protein 1"))
                                    ("upcase" "PRE2" "UP:Q9LXG5"
                                     ("prE2" "ONT:PROTEIN" :ID "UP:Q90ZE4"
                                      :NAME "Presenilin-2"))
                                    ("upcase" "RB1CC1" "UP:Q8TDY2"
                                     ("rb1cc1" "ONT:GENE" :ID "HGNC:15574"
                                      :NAME "RB1 inducible coiled-coil 1"))
                                    ("upcase" "RPS11" "UP:P62280"
                                     ("rps11" "ONT:GENE" :ID "HGNC:10384" :NAME
                                      "ribosomal protein S11"))
                                    ("upcase" "RSP5" "UP:Q96PU5"
                                     ("rsp5" "ONT:GENE-PROTEIN" :ID "UP:P86187"
                                      :NAME "Raniseptin-5"))
                                    ("upcase" "SEC13" "UP:P55735"
                                     ("sec13" "ONT:GENE" :ID "HGNC:10697" :NAME
                                      "SEC13 homolog, nuclear pore and COPII coat complex component"))
                                    ("upcase" "SERPINB2" "UP:P05120"
                                     ("serpinB2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:8584" :NAME
                                      "serpin family B member 2"))
                                    ("upcase" "SMS2" "UP:Q8NHU3"
                                     ("sms2" "ONT:GENE" :ID "NCIT:C105025"
                                      :NAME "SGMS2"))
                                    ("upcase" "SOD1" "UP:P00441"
                                     ("sod1" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:11179" :NAME
                                      "superoxide dismutase 1"))
                                    ("upcase" "T14" "UP:P26842"
                                     ("t14" "ONT:GENE-PROTEIN" :ID
                                      "NCIT:C104072" :NAME "CD27"))
                                    ("upcase" "TAB2" "UP:Q9NYJ8"
                                     ("tab2" "ONT:GENE-PROTEIN" :ID
                                      "HGNC:17075" :NAME
                                      "TGF-beta activated kinase 1 (MAP3K7) binding protein 2"))
                                    ("upcase" "TEF4" "UP:Q15562"
                                     ("tef4" "ONT:GENE" :ID "HGNC:11715" :NAME
                                      "TEA domain transcription factor 2"))
                                    ("upcase" "UPF3" "UP:Q9H1J1"
                                     ("upf3" "ONT:GENE" :ID "HGNC:20332" :NAME
                                      "UPF3A regulator of nonsense mediated mRNA decay"))))

(defparameter *ID-AND-CAT-MISMATCH* '(("upcase" "BR1" "UP:P08724" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Br1" "ONT:CELL-LINE" :ID "CVCL:C062"
                                        :NAME "BR-1"))
                                      ("upcase" "GE2" "UP:P89475" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Ge2" "ONT:CELL-LINE" :ID "CVCL:VN47"
                                        :NAME "GE-2"))
                                      ("upcase" "HY5" "UP:O24646" :OLD-CAT
                                       PROTEIN :NEW-CAT RNA
                                       ("Hy5" "ONT:RNA" :ID "HGNC:10248" :NAME
                                        "RNA, Ro60-associated Y5"))
                                      ("upcase" "MPP10" "UP:O00566" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Mpp10" "ONT:GENE-PROTEIN" :ID
                                        "FA:02353" :NAME "MPP10 family"))
                                      ("upcase" "PAM2" "UP:O14126" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-DOMAIN
                                       ("Pam2" "ONT:MOLECULAR-DOMAIN" :ID
                                        "XFAM:PF07145" :NAME "PAM2"))
                                      ("upcase" "RF1" "UP:P62495" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("Rf1" "ONT:CELL-LINE" :ID "CVCL:3580"
                                        :NAME "RF-1"))
                                      ("upcase" "RIO1" "UP:O28471" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Rio1" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF01163" :NAME "RIO1"))
                                      ("upcase" "ST16" "UP:Q13007" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("St16" "ONT:CELL-LINE" :ID "CVCL:RM01"
                                        :NAME "St16"))
                                      ("upcase" "TOM20" "UP:Q15388" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Tom20" "ONT:GENE-PROTEIN" :ID
                                        "FA:04123" :NAME "tom20 family"))
                                      ("upcase" "TRM112" "UP:Q9UI30" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Trm112" "ONT:GENE-PROTEIN" :ID
                                        "FA:04207" :NAME "TRM112 family"))
                                      ("upcase" "US6" "UP:P0CK29" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("Us6" "ONT:PROTEIN-FAMILY" :ID
                                        "XFAM:PF17616" :NAME "US6"))
                                      ("upcase" "ADRA2" "UP:P08913" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("adra2" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:ADRA2" :NAME "ADRA2"))
                                      ("upcase" "BR2" "UP:P08725" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("bR2" "ONT:CELL-LINE" :ID "CVCL:AU04"
                                        :NAME "BR-2"))
                                      ("upcase" "BEL1" "UP:Q38897" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("bel1" "ONT:CELL-LINE" :ID "CVCL:0081"
                                        :NAME "BEL-1"))
                                      ("upcase" "CEP3" "UP:Q9UKI2" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("cep3" "ONT:GENE-PROTEIN" :ID
                                        "XFAM:PF16846" :NAME "cep3"))
                                      ("upcase" "EIF4E" "UP:P06730" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("eiF4E" "ONT:GENE-PROTEIN" :ID
                                        "FPLX:EIF4E" :NAME "EIF4E"))
                                      ("upcase" "ER1" "UP:Q8N108" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("er1" "ONT:CELL-LINE" :ID "CVCL:L896"
                                        :NAME "ER-1"))
                                      ("upcase" "MM3" "UP:Q91771" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("mm3" "ONT:CELL-LINE" :ID "CVCL:VG92"
                                        :NAME "MM-3"))
                                      ("upcase" "PV1" "UP:Q9BX97" :OLD-CAT
                                       PROTEIN :NEW-CAT CELL-LINE
                                       ("pV1" "ONT:CELL-LINE" :ID "CVCL:8970"
                                        :NAME "PV1"))
                                      ("upcase" "SEC24" "UP:Q75B16" :OLD-CAT
                                       PROTEIN :NEW-CAT PROTEIN-FAMILY
                                       ("sec24" "ONT:PROTEIN-FAMILY" :ID
                                        "FA:03535" :NAME "SEC24 subfamily"))))

(defparameter *NO-ID-REDEF* 'NIL)

(defparameter *NAMECAT-ID-MISMATCHES* 'NIL)

(defparameter *NO-RULE-REDEF* 'NIL)

(defparameter *NAME-ID-MISMATCHES* '((MOLECULE "chloroform" "NCIT:C29815"
                                      :NEWUID "CHEBI:35255" :WORD "CHCl3")
                                     (CELL-LINE "MOLT-4" "NCIT:C117119" :NEWUID
                                      "EFO:0001220" :WORD "Molt4")
                                     (DRUG "bortezomib" "CHEBI:52717" :NEWUID
                                      "NCIT:C1851" :WORD "PS341")
                                     (DRUG "fosfestrol" "MESH:C004955" :NEWUID
                                      "NCIT:C1105" :WORD "ST52")))

(defparameter *PROT-FAM-REDEF* 'NIL)

(defparameter *VIOLATES-NO-PLURAL* 'NIL)

(defparameter *WORD-DIFF-POS-NAME* 'NIL)

(defparameter *PLURALS-OF-EXISTING-CATS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-CATS* 'NIL)

(defparameter *PLURALS-OF-EXISTING-WORDS* 'NIL)

(defparameter *DIFF-POS-OF-EXISTING-WORDS* 'NIL)

(defparameter *SYNONYM-FOR-EXISTING-WORDS* '((CELL-LINE "AH1" "CVCL:L878"
                                              "GMK-AH-1")
                                             (CELL-LINE "B95.8" "CVCL:1953"
                                              "B95-8")
                                             (CELL-LINE "BHK21" "CVCL:1914"
                                              "BHK-21")
                                             (MOLECULE "CH3COOH" "CHEBI:15366"
                                              "acetic acid")
                                             (MOLECULE "CHCl3" "CHEBI:35255"
                                              "chloroform")
                                             (VIRUS "DENV1" "NCIT:C112266"
                                              "dengue virus 1")
                                             (DRUG "DP178" "NCIT:C2105"
                                              "enfuvirtide")
                                             (DRUG "HA7" "MESH:C109999" "HA 7")
                                             (VIRUS "HHV4" "NCIT:C14204"
                                              "epstein-barr virus")
                                             (VIRUS "HIV1" "NCIT:C14220"
                                              "human immunodeficiency virus 1")
                                             (VIRUS "HIV2" "NCIT:C14221"
                                              "human immunodeficiency virus 2")
                                             (CELL-LINE "HL1" "CVCL:0303"
                                              "HL-1")
                                             (CELL-LINE "Huh7" "EFO:0005384"
                                              "HuH-7")
                                             (BIO-COMPLEX "IgG2" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (BIO-COMPLEX "IgG2b" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (BIO-COMPLEX "IgG3" "GO:0071735"
                                              "IgG immunoglobulin complex")
                                             (DRUG "JNJ63623872" "NCIT:C158086"
                                              "pimodivir")
                                             (DRUG "MF59" "MESH:C089950"
                                              "MF59 oil emulsion")
                                             (CELL-LINE "Molt4" "EFO:0001220"
                                              "MOLT-4")
                                             (MOLECULE "Neu5GC" "CHEBI:62084"
                                              "N-glycoloyl-beta-neuraminic acid")
                                             (CELL-LINE "OH1" "CVCL:A765"
                                              "OH-1")
                                             (DRUG "PS341" "NCIT:C1851"
                                              "bortezomib")
                                             (DRUG "ST52" "NCIT:C1105"
                                              "fosfestrol")
                                             (DRUG "TMC114" "NCIT:C65364"
                                              "darunavir")
                                             (CELL-LINE "Tn5" "CVCL:C190"
                                              "BTI-Tn-5B1-4")
                                             (CELL-LINE "UC6" "CVCL:2751"
                                              "UM-UC-6")
                                             (DRUG "VX787" "NCIT:C158086"
                                              "pimodivir")
                                             (CELL-LINE "WI1" "CVCL:JE97"
                                              "WI-1")
                                             (DRUG "d4t" "NCIT:C1428"
                                              "stavudine")
                                             (CELL-LINE "dV1" "CVCL:AQ54"
                                              "DV-1")
                                             (CELL-LINE "i90" "CVCL:0347"
                                              "IMR-90")
                                             (RNA "linc1992" "HGNC:49503"
                                              "TNF and HNRNPL related immunoregulatory long non-coding RNA")
                                             (DRUG "t20" "NCIT:C2105"
                                              "enfuvirtide")
                                             (MOLECULE "βlactam" "CHEBI:35627"
                                              "beta-lactam")))

(defparameter *CATEGORY-MISMATCH-EXISTING-CATS* 'NIL)

(defparameter *CATEGORY-MISMATCH-EXISTING-WORDS* '((:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "AP-5"
                                                    :NEWUID "CVCL:KT04" :WORD
                                                    "AP5")
                                                   (:ORIG-CAT MOLECULE :NEW-CAT
                                                    CELL-LINE :NAME "JC-1"
                                                    :NEWUID "CVCL:WN03" :WORD
                                                    "Jc1")
                                                   (:ORIG-CAT PROTEIN-FAMILY
                                                    :NEW-CAT CELL-LINE :NAME
                                                    "SGS" :NEWUID "CVCL:4007"
                                                    :WORD "SGS2")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    DRUG :NAME "etoposide"
                                                    :NEWUID "NCIT:C491" :WORD
                                                    "VP16")
                                                   (:ORIG-CAT PROTEIN :NEW-CAT
                                                    CELL-LINE :NAME "WF-1"
                                                    :NEWUID "CVCL:R857" :WORD
                                                    "WF1")))

(defparameter *SUPPRESSED-REDEFS* 'NIL)

(defparameter *NON-BIO-DEFS* 'NIL)

