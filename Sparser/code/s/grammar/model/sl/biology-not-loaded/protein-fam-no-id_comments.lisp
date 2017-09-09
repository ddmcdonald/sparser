
(def-family "14-3-3") 
(def-family "DUSP") 
(def-family "USP" :synonyms ("ubiquitin-specific protease" "ubiquitin-specific peptidase")) 
(def-family "UBL" :synonyms ("ubiquitin-like")) 
(def-family "eIF" :synonyms ("eukaryotic initiation factor" "eiF")) 
(def-family "GPCR" :synonyms ("G protein–coupled receptor")) 
(def-family "HLA class I molecule") 
(def-family "PTK") 
(def-family "RAS GAP") 
(def-family "Wnt") 
(def-family "arrestin") 
(def-family "endophilin") 
(def-family "importin") 
(def-family "karyopherin α" :synonyms ("karyopherin αs" "karyopherin alpha")) 
(def-family "karyopherin β" :synonyms ("karyopherin βs" "karyopherin beta")) 
(def-family "tyrphostin") 
;(def-family "1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase delta-1" :members ("UP:P10895" "UP:P51178"))
;(define-protein "UP:P10895" ()) bovine

;(def-family "12 kDa FK506-binding protein" :members ("UP:P48375" "UP:P62942"))
;(define-protein "UP:P48375" ("FKBP")) drome

(def-family "20 alpha-hydroxysteroid dehydrogenase" :synonyms ("20 α-hydroxysteroid dehydrogenase" "20-α-HSD" "E2DH" "EDH17B2") :members ("UP:P14061" "UP:P37059"))
(def-family "20-alpha-HSD" :members ("UP:P14061" "UP:P37059" "UP:Q04828")) 
(def-family "2B" :members ("UP:O94953" "UP:Q93097" "UP:Q9UQ03"))
;(define-protein "UP:Q9DD33" ("LMP-2A" "LMP-2B" "LMP2-A" "LMP2A" "LMP2B" "psmb9a"))  salmon
(def-family "3B" :members ("UP:Q13214" "UP:Q96PB8" "UP:Q9UBC3"))
;(define-protein "UP:Q6R325" ("P1B" "P3C" "Protein 3A" "VPg" "p3a" "p3b" "protein 2A")) ; avian virus
;(def-family "5'-3' exoribonuclease 1" :members ("UP:P40383" "UP:Q8IZH2"))
;(define-protein "UP:P40383" ("exo2")) ;; yeast
(def-family "51 kDa FK506-binding protein" :members ("UP:Q02790" "UP:Q13451")) 
;(def-family "60S acidic ribosomal protein P0" :members ("UP:P05388" "UP:Q8SRJ7"))
;(define-protein "UP:Q8SRJ7" ("a0")) ;;parasite
(def-family "ADF" :members ("UP:P06396" "UP:P10599")) 
(def-family "ADH1" :members ("UP:P07327" "UP:P00325" "UP:P00326") :synonyms ("ADH1" "ADH-1" "alcohol dehydrogenase 1"))
;(define-protein "UP:P23991" ("ADH-1" "alcohol dehydrogenase 1")) chicken, but there are 2 other human ones that weren't on the list
;(def-family "AF-1" :members ("UP:O28836" "UP:P38484"))
;(define-protein "UP:O28836" ("ISF1" "Iron-sulfur flavoprotein AF_1436")) ;arcfu
;(def-family "AF-2" :members ("UP:O28753" "UP:Q9HCD5")) 
;(define-protein "UP:O28753" ( "ISF2" "Iron-sulfur flavoprotein AF_1519")) ;arcfu
(def-family "AGR2" :members ("UP:O95994" "UP:Q4JM46"))
;(def-family "AIM-1" :members ("UP:Q96GD4" "UP:Q9Y4K1")) 
;; according to BG, "UP:Q9Y4K1" is not really known as AIM1, and in fact its uniprot mnemonic has changed to not be AIM1 anymore
(def-family "AIP1" :members ("UP:O75083" "UP:Q5VWQ8")) 
(def-family "AIP4" :members ("UP:Q66PJ3" "UP:Q96J02")) 
(def-family "AMPK" :synonyms ("AMP activated protein kinase") :members ("UP:O43741" "UP:P54646" "UP:Q13131")) 
(def-family "ANT 2" :members ("UP:P05141" "UP:P12236")) 
(def-family "AP-1" :members ("UP:P05412" "UP:P61966")) 
(def-family "AP4" :synonyms ("AP-4") :members ("UP:Q9UPM8" "UP:Q9Y587" "UP:Q9Y6B7" "UP:O00189")) 
;(define-protein "UP:P06594" ("AP-4" "Phytochrome A type 4")) ;avesa, but there are other human ones in this family/complex
(def-family "AR" :members ("UP:P10275" "UP:P15121" "UP:P15514")) 
(def-family "ARIA" :members ("UP:Q02297" "UP:Q19T08")) 
(def-family "ASF" :members ("UP:P54793" "UP:P55036")) 
(def-family "ASIP" :members ("UP:P42127" "UP:Q8TEW0")) 
(def-family "ASPP" :synonyms ("apoptosis-stimulating protein of p53") :members ("ASPP1" "ASPP2")) 
(def-family "ATP-PFK" :synonyms ("phosphohexokinase") :members ("UP:P17858" "UP:Q01813")) 
(def-family "ATP6C" :members ("UP:P21283" "UP:P27449")) 
(def-family "ATP6D" :members ("UP:P21283" "UP:P61421")) 
(def-family "Adenylate cyclase-inhibiting G alpha protein" :synonyms ("Adenylate cyclase-inhibiting G α protein") :members ("UP:P04899" "UP:P63096")) 
;(def-family "Aminopeptidase N" :members ("UP:P15144" "UP:P79098" "UP:P79171")) 
;(define-protein "UP:P79098" ("BAPN")) ;bovine 
;(define-protein "UP:P79171" ("fAPN")) ;feline
;(def-family "Amyloid beta A4 protein" :members ("UP:P05067" "UP:P12023"))
;(define-protein "UP:P12023" ("A-G" "AG")) ; mouse
;(def-family "B-MYB" :members ("UP:P10244" "UP:Q03237"))
;(define-protein "UP:Q03237" ("B-Myb" "b-myb" "Myb-related protein B")) ;chick

(def-family "BAG family molecular chaperone regulator 2" :members ("UP:O95816" "UP:Q3ZBG5")) 
(def-family "BBP" :synonyms ("bbp") :members ("UP:P09464" "UP:Q13625" "UP:Q15637"))
;(define-protein "UP:P09464" ("bbp" "bilin-binding protein" "bilin binding protein")) ;piebr
(def-family "BMH" :members ("UP:Q13867" "UP:Q9UQE7"))
;(define-protein "UP:P87362" ("bleomycin hydrolase")) ;chick
(def-family "BRF1" :members ("UP:Q07352" "UP:Q92994")) 
;(def-family "CAM2" :members ("UP:P62158" "UP:Q13554"))
;(define-protein "UP:P62158" ("C-CAM" "CALM" "CALM1" "CALM2" "CALM3" "CALML2" "CALM_HUMAN" "CAM" "CAM1" "CAM3" "CAMB" "CAMC" "CAMIII" "CaM" "CaM1" "CaM2" "CaM3" "calm2" "Mel-CAM" "p62158" "calmodulin" "calmodulin 1" "melanoma adhesion molecule"))  obsolete
(def-family "CAP2" :members ("UP:P40123" "UP:P50452")) 
(def-family "CAR" :members ("UP:P36575" "UP:P78310")) 
(def-family "CAS" :members ("UP:O60716" "UP:P56945")) 
(def-family "CCR4-associated factor 1" :members ("UP:A5YKK6" "UP:Q9UIV1")) 
(def-family "CD36" :members ("UP:P16671" "UP:Q14108")) 
(def-family "CDH3" :members ("UP:P22223" "UP:P55291")) 
(def-family "CDKN2" :members ("UP:P24941" "UP:P42771" "UP:Q8N726")) 
;(def-family "CGRP" :members ("UP:P10286" "UP:P80511"))
;(define-protein "UP:P10286" ("calcitonin gene-related peptide")) ;chick
(def-family "CK" :members ("UP:P30085" "UP:P35790")) 
(def-family "CMK" :members ("UP:P30085" "UP:Q07325")) 
;(def-family "COX3" :members ("UP:P00414" "UP:Q37374" "XFAM:PF00510.16"))
;(define-protein "UP:Q37374" nil) 
(def-family "CPO" :members ("UP:P36551" "UP:Q8IVL8")) 
(def-family "CPS1" :members ("UP:P08686" "UP:P31327")) 
(def-family "CREB" :synonyms ("cAMP response element-binding protein") :members ("UP:O43889" "UP:P16220" "UP:Q02930")) 
(def-family "CSN2" :members ("UP:P05814" "UP:P61201")) 
(def-family "CSN3" :members ("UP:P07498" "UP:Q9UNS2")) 
(def-family "CTCBF" :synonyms ("TLAA" "thyroid-lupus autoantigen") :members ("UP:P12956" "UP:P13010")) 
;(def-family "CTF" :members ("NCIT:C20186" "UP:O00712" "UP:P08651")) 
(def-family "CYP1" :members ("UP:O15528" "UP:P04798"))
;(define-protein "UP:Q42406" ("cyclophilin 1")) ;arath
(def-family "Cam-PDE 1" :members ("PDE1A_HUMAN" "PDE1B_HUMAN" "PDE1C_HUMAN")) 
;(def-family "Casein kinase I isoform epsilon" :members ("UP:P49674" "UP:Q5ZLL1"))
;(define-protein "UP:Q5ZLL1" ("CKI-epsilon" "CKIε")) ;chick

(def-family "Cbp/PAG" :members ("UP:P40763" "UP:Q9NWQ8")) 
(def-family "Constitutive NOS" :members ("UP:P29474" "UP:P29475")) 
(def-family "Cyclin-dependent kinase inhibitor 2A" :synonyms ("Cyclin dependent kinase inhibitor 2A") :members ("UP:G3XAG3" "UP:P42771" "UP:Q8N726")) 
(def-family "DAO" :members ("UP:P14920" "UP:P19801")) 
(def-family "DAP5" :members ("UP:P78344" "UP:Q15398")) 
(def-family "DBP" :members ("UP:P02774" "UP:P51659" "UP:Q10586")) 
(def-family "DEP1" :members ("UP:Q12913" "UP:Q6P493")) 
(def-family "DLK" :members ("UP:O43293" "UP:P80370" "UP:Q12852")) 
;(def-family "DNA-3-methyladenine glycosylase" :members ("UP:P29372" "UP:P44321"))
;(define-protein "UP:P44321" ("T-Ag")) ;flu
(def-family "DOC-2" :members ("UP:P98082" "UP:Q14183")) 
(def-family "DP2" :members ("UP:P25054" "UP:Q14188" "UP:Q9Y5Y4")) 
(def-family "DRG-1" :members ("UP:Q9NP79" "UP:Q9Y295")) 
(def-family "DRP-1" :members ("UP:P46939" "UP:Q9UIK4")) 
(def-family "DT" :members ("UP:P40126" "UP:Q03001")) 
(def-family "DUP" :members ("UP:P20585" "UP:Q9H211")) 
(def-family "E2F-1" :synonyms ("Transcription factor E2F1") :members ("UP:Q01094" "UP:Q90977")) 
(def-family "E3 ligase" :synonyms ("E3 ubiquitin ligase" "ubiquitin ligase" "e3-ubiquitin ligase") :members ("UP:P78317" "UP:P98170" "UP:Q00987" "UP:Q05086" "UP:Q06587" "UP:Q13049" "UP:Q13191" "UP:Q14258" "UP:Q14669" "UP:Q15034" "UP:Q15386" "UP:Q15751" "UP:Q2Q1W2" "UP:Q5GLZ8" "UP:Q5T447" "UP:Q5T4S7" "UP:Q5TA31" "UP:Q5U5Q3" "UP:Q5U5R9" "UP:Q5VTB9" "UP:Q5VTR2" "UP:Q5XPI4" "UP:Q63HN8" "UP:Q6AZZ1" "UP:Q6Q0C0" "UP:Q6UWE0" "UP:Q6VVB1" "UP:Q6ZMZ0" "UP:Q6ZNA4" "UP:Q75N03" "UP:Q76N89" "UP:Q7Z3V4" "UP:Q7Z419" "UP:Q7Z569" "UP:Q7Z6E9" "UP:Q7Z6J0" "UP:Q7Z6J8" "UP:Q7Z6Z7")) 
(def-family "EB1" :members ("UP:O14548" "UP:Q15691")) 
(def-family "EBP" :members ("UP:Q15125" "UP:Q5HYK7")) 
(def-family "EPHB receptor" :members ("EPHB1_HUMAN" "EPHB2_HUMAN" "EPHB3_HUMAN" "EPHB4_HUMAN" "EPHB6_HUMAN")) 
(def-family "ERp60" :members ("UP:P27797" "UP:P30101")) 
(def-family "ET-1" :synonyms ("endothelin-1") :members ("UP:P05305" "UP:P22387")) 
;(def-family "Endogenous retrovirus group K member 18 Env polyprotein" :members ("UP:C6FX96" "UP:O42043"))
;(define-protein "UP:C6FX96" ("18h" "C6FX96_9HIV1" "Endogenous retrovirus group K member 113 Env polyprotein" "Endogenous retrovirus group K member 13-1 Env polyprotein" "Endogenous retrovirus group K member 19 Env polyprotein" "Endogenous retrovirus group K member 21 Env polyprotein" "Endogenous retrovirus group K member 24 Env polyprotein" "Endogenous retrovirus group K member 25 Env polyprotein" "Endogenous retrovirus group K member 6 Env polyprotein" "Endogenous retrovirus group K member 8 Env polyprotein" "Endogenous retrovirus group K member 9 Env polyprotein" "envelope glycoprotein gp160")) virus
;(def-family "Ephrin-B1" :members ("UP:O73612" "UP:P98172"))
;(define-protein "UP:O73612" ("ephrinB1")) ;chick
;(def-family "Exportin-T" :members ("UP:O43592" "UP:Q753A0"))
;(define-protein "UP:Q753A0" ("los1" "karyopherin-β" "karyopherin-βs" "karyopherinbeta" "karyopherinβ")) ;ashgo
(def-family "FAP" :members ("UP:Q12884" "UP:Q92990")) 
(def-family "FBP2" :members ("UP:O00757" "UP:Q92945")) 
(def-family "FcERI" :members ("UP:P12319" "UP:Q01362")) 
(def-family "G-CSF" :members ("UP:P09919" "UP:Q99062")) 
(def-family "GAR1" :members ("UP:Q14028" "UP:Q9NY12")) 
(def-family "GLR" :members ("UP:P23416" "UP:P47871")) 
(def-family "GLUT3" :members ("UP:P11169" "UP:Q8TDB8")) 
(def-family "GNT1" :synonyms ("UGT1") :members ("UP:O60656" "UP:P19224" "UP:P22309" "UP:P35503" "UP:Q9HAW7" "UP:Q9HAW8" "UP:Q9HAW9")) 
(def-family "GRF2" :members ("UP:O14827" "UP:Q13905")) 
(def-family "GRIP1" :members ("UP:Q15596" "UP:Q96DT0" "UP:Q9Y3R0")) 
(def-family "GRP" :members ("UP:P07492" "UP:Q9Y4Z0")) 
(def-family "GSK3" :members ("UP:P38615" "UP:P49840" "UP:Q9U2Q9")) 
(def-family "HBGF-8" :synonyms ("heparin-binding growth factor 8") :members ("UP:P21246" "UP:P55075")) 
(def-family "HBP" :members ("UP:O75886" "UP:P20160" "UP:Q46125"))
;(define-protein "UP:Q46125" ("probable histidine-binding protein")) ;camje
(def-family "HD1" :members ("UP:Q13547" "UP:Q15149")) 
(def-family "HIP-1" :members ("UP:O00291" "UP:Q9BYW2")) 
(def-family "HLA class I histocompatibility antigen, A-10 alpha chain" :synonyms ("HLA class I histocompatibility antigen, A-10 α chain") :members ("UP:P18462" "UP:P30453" "UP:P30457")) 
(def-family "HLA class I histocompatibility antigen, A-28 alpha chain" :synonyms ("HLA class I histocompatibility antigen, A-28 α chain") :members ("UP:P01891" "UP:P10316")) 
(def-family "HLA class I histocompatibility antigen, A-9 alpha chain" :synonyms ("HLA class I histocompatibility antigen, A-9 α chain") :members ("UP:P05534" "UP:P30447")) 
(def-family "HLA class I histocompatibility antigen, B-21 alpha chain" :synonyms ("HLA class I histocompatibility antigen, B-21 α chain") :members ("UP:P30487" "UP:P30488")) 
(def-family "HLA class II histocompatibility antigen, DRB1-8 beta chain" :synonyms ("q30134") :members ("UP:P04229" "UP:Q30134")) 
(def-family "HLA-A" :synonyms ("HLAA") :members ("UP:P01891" "UP:P01892" "UP:P04439" "UP:P05534" "UP:P10314" "UP:P10316" "UP:P13746" "UP:P16188" "UP:P16189" "UP:P16190" "UP:P18462" "UP:P30443" "UP:P30447" "UP:P30450" "UP:P30453" "UP:P30455" "UP:P30456" "UP:P30457" "UP:P30459" "UP:P30512" "UP:Q09160")) 
(def-family "HLA-B" :synonyms ("HLAB") :members ("UP:P01889" "UP:P03989" "UP:P10319" "UP:P18463" "UP:P18464" "UP:P18465" "UP:P30460" "UP:P30461" "UP:P30462" "UP:P30464" "UP:P30466" "UP:P30475" "UP:P30479" "UP:P30480" "UP:P30481" "UP:P30483" "UP:P30484" "UP:P30485" "UP:P30487" "UP:P30488" "UP:P30490" "UP:P30491" "UP:P30492" "UP:P30493" "UP:P30495" "UP:P30498" "UP:P30685" "UP:Q04826" "UP:Q29718" "UP:Q29836" "UP:Q29940" "UP:Q31610" "UP:Q31612" "UP:Q95365")) 
(def-family "HLA-C" :synonyms ("HLAC") :members ("UP:P04222" "UP:P10321" "UP:P30499" "UP:P30501" "UP:P30504" "UP:P30505" "UP:P30508" "UP:P30510" "UP:Q07000" "UP:Q29865" "UP:Q29960" "UP:Q29963" "UP:Q95604" "UP:Q9TNN7")) 
(def-family "HP1" :members ("UP:P45973" "UP:P59665"))
;(define-protein "UP:P05205" ("heterochromatin protein 1")) ;dros
(def-family "HRAS1" :members ("UP:P01111" "UP:P01112")) 
(def-family "HRG" :members ("UP:P04196" "UP:Q02297")) 
(def-family "HRS" :members ("UP:O14964" "UP:Q13243")) 
;(def-family "HSFs" :members ("UP:P19875" "UP:P22813")) 
;(define-protein "UP:P22813" ("HSF" "heat shock factor protein")) ;dros
(def-family "HSP71_HUMAN" :members ("UP:P0DMV8" "UP:P0DMV9" "UP:P48741")) 
;(def-family "HSP72" :members ("NCIT:C103999" "UP:P0DMV8" "UP:P0DMV9")) 
;(def-family "HSPA1" :members ("UP:P08107" "UP:P0DMV8" "UP:P48741")) 
;(def-family "HSPA1A" :members ("NCIT:C103999" "UP:P0DMV8" "UP:P48741")) 
(def-family "HSPA1B" :members ("UP:P0DMV9" "UP:P48741"))
;obsolete
(def-family "HSPG" :members ("UP:P34741" "UP:P98160")) 
(def-family "HST" :members ("UP:P08620" "UP:Q06520")) 
(def-family "HTRA3" :members ("UP:O15484" "UP:P83110")) 
;(def-family "HV205_HUMAN" :members ("UP:P01817")) 
;(def-family "HV311_HUMAN" :members ("UP:P01762" "UP:P01772")) 
;(def-family "HV313_HUMAN" :members ("UP:P01766" "UP:P01774")) 
;(def-family "Heat shock 70 kDa protein 1A" :members ("UP:P0DMV8" "UP:Q27975" "UP:Q61696"))
;(define-protein "UP:Q27975" ("HSP70.1")) ;bovine
;(define-protein "UP:Q61696" ("hsp68")) ;mouse

;(def-family "Hematopoietic prostaglandin D synthase" :members ("UP:O60760" "UP:O73888"))
;(define-protein "UP:O73888" ("H-Pgds")) ;chick

(def-family "HisRS" :members ("UP:P12081" "UP:P49590")) 
(def-family "IAP" :members ("UP:P09923" "UP:Q08722" "UP:Q9H0U3")) 
(def-family "IFN-γ" :members ("UP:P01579" "UP:P15260")) 
(def-family "IL13R" :members ("UP:P78552" "UP:Q14627")) 
(def-family "INPP4B" :members ("UP:O15327" "UP:Q9BS68")) 
(def-family "IQGAP" :members ("IQGAP1" "IQGAP2" "IQGAP3")) 
(def-family "IgG" :members ("UP:P12314" "UP:P31994" "UP:P55899")) 
;(def-family "IkappaB" :members ("NCIT:C17583" "UP:O14920" "UP:O15111" "UP:P25963")) changed to def-id
;(def-family "Inhibitor of nuclear factor kappa-B kinase subunit beta" :members ("UP:O14920" "UP:Q95KV0"))
;(define-protein "UP:Q95KV0" ("IKK-β" "IKKb" "IKKbeta" "ikkb" "ikkbeta")) ;bovine

(def-family "Jnk" :members ("JNK1" "JNK2" "JNK3A")) 
(def-family "KCIP-1" :synonyms ("Protein kinase C inhibitor protein 1") :members ("UP:P31946" "UP:P61981" "UP:P63104")) 
(def-family "KLK3" :members ("UP:P03952" "UP:P07288")) 
(def-family "KNS2" :members ("UP:O00139" "UP:Q07866")) 
(def-family "KSR2" :members ("UP:Q6VAB6" "UP:Q8WXI2")) 
;(def-family "KV117_HUMAN" :members ("UP:P01599" "UP:P01609"))
;(define-protein "UP:P01609" ("Ig kappa chain V-I region Scw" "p01609")) ;obsolete
;(def-family "KV311_HUMAN" :members ("UP:P04433" "UP:P06311")) 
;(define-protein "UP:P06311" ("Ig kappa chain V-III region IARC/BL41" "p06311")) ;obsolete 
(def-family "L1CAM" :members ("UP:P19320" "UP:P32004" "UP:Q9UHY7")) 
(def-family "LAMB2" :members ("UP:P11047" "UP:P55268")) 
(def-family "LANA" :members ("NCIT:C114488" "NCIT:C114489" "UP:Q65DC4"))
;;(define-protein "UP:Q65DC4" ("LANA1")) lactobacillis
(def-family "LAP" :members ("UP:P01137" "UP:P10600" "UP:P17676" "UP:P61812")) 
(def-family "LAP1" :members ("UP:P11142" "UP:P15144" "UP:Q13114")) 
(def-family "LHR" :members ("UP:P16070" "UP:P22888")) 
;(def-family "LIM and SH3 domain protein 1" :members ("UP:O77506" "UP:Q14847"))
;(define-protein "UP:O77506" ("pp40")) ;rabbit
;(def-family "LIM domain kinase 2" :members ("UP:P53671" "UP:Q32L23"))
;;(define-protein "UP:Q32L23" ("LIMK-2")) ;bovine
;(def-family "LMP1" :members ("NCIT:C18863" "UP:P03230" "UP:Q11117"))
;(define-protein "UP:Q11117" ("LMP- 1")) ;caeel
;(define-protein "NCIT:C18863" ("q11117")) 

(def-family "LRRN1" :members ("UP:O75427" "UP:Q6UXK5")) 
;(def-family "LV208_HUMAN" :members ("UP:P01709" "UP:P01711"))
;(define-protein "UP:P01711" ("Ig lambda chain V-II region VIL" "p01711")) ;obsolete
;(def-family "LV211_HUMAN" :members ("UP:P01706" "UP:P04209"))
;(define-protein "UP:P04209" ("Ig lambda chain V-II region NIG-84" "p04209")) ;obsolete
(def-family "MAG" :members ("UP:P18074" "UP:P20916")) 
(def-family "MAP" :synonyms ("microtubule-associated protein" "microtubule associated protein") :members ("UP:P10636" "UP:P11137" "UP:P27816" "UP:P46821" "UP:P78559" "UP:Q14244" "UP:Q15691" "UP:Q49MG5" "UP:Q66K74" "UP:Q8IWC1" "UP:Q96JE9" "UP:Q9GZQ8" "UP:Q9H492" "UP:Q9UPY8")) 
#+ignore(def-family "ERK" :synonyms ("extracellular signal-regulated kinase" "erk" "Extracellular signal Regulated Kinase" "MAPK)/extracellular activating kinase" "MAPK)/extracellular signal regulated kinase" "extra-cellular signal regulated kinase" "extracellular regulated kinase" "extracellular regulated protein kinase" "extracellular regulating kinase" "extracellular signal regulated protein kinase" "extracellular signal related kinase" "extracellular-signal-regulated kinase" "signal regulated kinase") :members ("UP:P27361" "UP:P28482" "UP:P31152" "UP:P53778" "UP:Q13164" "UP:Q16659" "UP:Q8TD08")) ;added id
(def-family "ERK1/2" :synonyms ("ERK-1/2" "extracellular signal regulated kinase 1/2" "extracellular signal-regulated kinase 1/2" "extracellular signal regulated kinases 1 and 2") :members ("UP:P27361" "UP:P28482")) 
;(def-family "MBP-1" :members ("UP:P06733" "UP:P22032"))
;(define-protein "UP:P22032" ("eosinophil granule major basic protein 1" "MBP1" "mbp1")) ;cavpo
(def-family "MGAT3" :members ("UP:Q09327" "UP:Q86VF5")) 
(def-family "MGF" :members ("UP:P05019" "UP:P21583")) 
;(def-family "MK2" :members ("UP:P49136" "UP:P49137"))
;(define-protein "UP:P49136" ("MAP kinase-activated protein kinase 2" "MAPKAP kinase-2")) ;crilo
(def-family "MPP1" :members ("UP:Q00013" "UP:Q96Q89")) 
(def-family "MSF" :members ("UP:P02751" "UP:Q92954" "UP:Q9UHD8")) 
(def-family "MT1" :synonyms ("MTI" "MtI" "MtIs" "metallothionein-1" "mts1") :members ("UP:P04731" "UP:P04732" "UP:P04733" "UP:Q9BT22"))
(def-family "metallothionein-1" :members ("UP:P04731" "UP:P04732" "UP:P04733"))
;(define-protein "UP:P02802" ("MT-1" "MTI" "MtI" "MtIs" "metallothionein-1" "mts1")) ;mouse
;(def-family "MUC-1" :synonyms ("mucin-1") :members ("UP:P15941" "UP:Q8WML4"))
;(define-protein "UP:Q8WML4" ("mucin1")) ;bovine

(def-family "MUC3" :members ("UP:Q02505" "UP:Q685J3")) 
;(def-family "Major capsid protein L1" :members ("UP:A0A089N7W1" "UP:G3LTJ9" "UP:P03101"))
;unreviewed -- removed by BG "UP:A0A089N7W1" "UP:G3LTJ9"
(def-family "MuRF" :members ("UP:Q969Q1" "UP:Q9BYV2")) 
(def-family "NAF1" :members ("UP:Q15025" "UP:Q96HR8")) 
(def-family "NAP1" :members ("UP:O96009" "UP:P10145" "UP:Q9Y2A7")) 
(def-family "NARF" :members ("UP:Q8WVD3" "UP:Q9UHQ1")) 
(def-family "NAT1" :members ("UP:P18440" "UP:P78344")) 
(def-family "NAT6" :members ("UP:Q12794" "UP:Q93015")) 
(def-family "NEK8" :members ("UP:Q86SG6" "UP:Q8TD19")) 
(def-family "NET" :members ("UP:P23975" "UP:P54762")) 
(def-family "NG2" :members ("UP:Q6UVK1" "UP:Q99942"))
;(define-protein "UP:P40139" ("protein new-glue 2")) ;dros

;(def-family "NHE-1" :synonyms ("sodium/hydrogen exchanger 1") :members ("UP:P19634" "UP:Q552S0")) ;(define-protein "UP:Q552S0" ("NHE1")) ;dicdi

(def-family "NK1" :synonyms ("NK 1") :members ("UP:O95971" "UP:Q9P2W7"))
;(define-protein "UP:P22807" ("NK 1" "slou")) ;dros

(def-family "NRXN1" :synonyms ("p58400" "neurexin 1") :members ("UP:P58400" "UP:Q9ULB1")) 
(def-family "NRXN2" :synonyms ("p58401" "neurexin 2") :members ("UP:P58401" "UP:Q9P2S2")) 
;(def-family "Neural Wiskott-Aldrich syndrome protein" :members ("UP:O00401" "UP:Q95107"))
;(define-protein "UP:Q95107" ("N-WASp" "nwasp")) ;bovine

(def-family "ODC1" :members ("UP:P11926" "UP:Q9BQT8")) 
(def-family "ORC1" :members ("UP:Q13415" "UP:Q9Y619")) 
(def-family "ORF2" :members ("UP:P42537" "UP:P52069" "UP:Q68985")) 
(def-family "PAK-1" :synonyms ("PAK1") :members ("UP:Q13153" "UP:Q16512")) 
(def-family "PAK" :synonyms ("PAK" "p21-activated kinase" "p21 activated serine threonine kinases") :members ("UP:O75914" "UP:O96013" "UP:Q13153" "UP:Q13177" "UP:Q16512" "UP:Q9NQU5" "UP:Q9P286")) 
(def-family "PAR-3" :members ("UP:O00254" "UP:Q8TEW0")) 
(def-family "PB2" :synonyms ("polymerase basic protein 2") :members ("UP:P03428" "UP:Q6UBL8"))
;;(define-protein "UP:Q693B9" ("polymerase basic protein 2" "Q693B9_9INFA")) removed by BG even though the other two aren't human either

(def-family "PBP" :members ("UP:P02775" "UP:P30086" "UP:Q15648")) 
(def-family "PDI" :members ("UP:P07237" "UP:Q9ULC6")) 
(def-family "PEMT" :members ("UP:P15941" "UP:Q9UBM1")) 
;(def-family "PI3K-alpha" :synonyms ("phosphatidylinositol 4,5-bisphosphate 3-kinase catalytic subunit alpha isoform") :members ("UP:P32871" "UP:P42336"))
;;(define-protein "UP:P32871" nil) ;bovine

(def-family "PIP" :members ("UP:O95861" "UP:P12273")) 
(def-family "PKCdelta" :members ("UP:P83099" "UP:Q05655")) 
(def-family "PKD2" :members ("UP:Q13563" "UP:Q9BZL6")) 
(def-family "PKL" :members ("UP:P30613" "UP:Q14161")) 
(def-family "PLAP-1" :members ("UP:P05187" "UP:Q9BXN1")) 
(def-family "PNI" :members ("UP:P07093" "UP:Q15858" "UP:Q9H0P0")) 
(def-family "POB1" :members ("UP:O94972" "UP:Q8NFH8")) 
(def-family "PP4" :members ("UP:P08758" "UP:P60510")) 
(def-family "PPAT" :members ("UP:Q06203" "UP:Q13057")) 
(def-family "PPIase" :members ("UP:P30414" "UP:Q9H2H8" "UP:Q9Y3C6")) 
(def-family "PPT" :members ("UP:P20366" "UP:P50897" "UP:P53041")) 
(def-family "PR" :members ("UP:P06401" "UP:P10265" "UP:P63120" "UP:P63121" "UP:P63122" "UP:P63123" "UP:P63124" "UP:P63125" "UP:P63127" "UP:P63129" "UP:P63131" "UP:Q9Y6I0")) 
(def-family "PRP" :members ("UP:F7VJQ1" "UP:P04003" "UP:P32119")) 
(def-family "PSP" :members ("UP:O00186" "UP:P05451")) 
(def-family "PTC" :members ("UP:P00740" "UP:P07949" "UP:Q13635")) 
(def-family "PTP" :members ("UP:P05451" "UP:Q00325")) 
;(def-family "Plexin-A4" :members ("UP:Q6BEA0" "UP:Q9HCM2"))
;;(define-protein "UP:Q6BEA0" ("PlexinA4" "plexinA4")) ;danre

;(def-family "Poly [ADP-ribose] polymerase 3" :members ("UP:Q9FK91" "UP:Q9Y6F1"))
;(define-protein "UP:Q9FK91" ("PARP-3")) ;arath

;(def-family "Pre T-cell antigen receptor alpha" :members ("UP:P0C6B2" "UP:Q0VCS0" "UP:Q6ISU1")) 
;(define-protein "UP:Q0VCS0" ("PTalpha" "pTa")) ;bovine 
;(define-protein "UP:P0C6B2" ("gp33")) ;mouse 

;(def-family "Protein Nef" :members ("UP:B0ZG58" "UP:J9RB96")) found ID
;(def-family "Protein disulfide-isomerase A3" :members ("UP:P11598" "UP:P30101"))
;(define-protein "UP:P11598" ("q-2")) ;rat

;(def-family "Protein lin-28 homolog B" :members ("UP:Q45KJ4" "UP:Q6ZN17"))
;(define-protein "UP:Q45KJ4" ("Lin28B")) ;chicken

(def-family "Proto-oncogene c-Fgr" :members ("UP:P09769" "UP:P11362")) 
(def-family "Q9HDB5" :members ("UP:Q9HDB5" "UP:Q9Y4C0")) 
(def-family "Q9TQE0" :members ("UP:P04229" "UP:Q9TQE0")) 
(def-family "RAC-3" :members ("UP:P60763" "UP:Q9Y6Q9")) 
(def-family "RBP1" :members ("UP:O95153" "UP:P09455" "UP:P29374")) 
(def-family "RBP4" :members ("UP:O15514" "UP:P02753")) 
(def-family "RGS9" :members ("UP:O75916" "UP:Q6ZS82")) 
(def-family "RIS1" :members ("UP:P47985" "UP:Q8WZ71")) 
(def-family "RNA helicase" :members ("UP:A6VKC3" "UP:P60842" "UP:Q08211" "UP:Q9H2U1")) 
;(def-family "ROCK-II" :members ("UP:O75116" "UP:Q28021"))
;(define-protein "UP:Q28021" ("ROCKII")) ;bovine

(def-family "ROR1" :members ("UP:P35398" "UP:Q01973")) 
(def-family "RPF1" :members ("UP:P46934" "UP:Q9H9Y2")) 
(def-family "RPL10" :members ("UP:P27635" "UP:P61313")) 
;(def-family "RPS6KA1" :members ("NCIT:C104765" "UP:P18652" "UP:Q15418"))
;(define-protein "UP:P18652" ("MAPKAP-K1" "RSK" "Ribosomal protein S6 kinase 2 alpha" "rsk")) ;chicken
(def-family "RasGAP" :members ("UP:P09851" "UP:P20936")) 
(def-family "S6K1" :members ("UP:P23443" "UP:Q6TJY3")) 
(def-family "SAP-1" :members ("UP:P07602" "UP:P28324")) 
(def-family "SBP" :members ("UP:P04278" "UP:Q13228")) 
(def-family "SCAN1" :members ("UP:Q8WVQ1" "UP:Q9NUW8")) 
(def-family "SERS" :members ("UP:P49591" "UP:Q9NP81")) 
(def-family "SIP" :members ("UP:Q63ZY3" "UP:Q9HB71")) 
(def-family "SKD1" :members ("UP:O75351" "UP:Q9UN37")) 
(def-family "SMEK" :members ("UP:Q5MIZ7" "UP:Q6IN85")) 
(def-family "SOCS4" :synonyms ("suppressor of cytokine signaling 4") :members ("UP:O14544" "UP:Q8WXH5")) 
(def-family "SPP1" :members ("UP:P10451" "UP:Q9P0U4")) 
(def-family "SRK" :members ("UP:P43403" "UP:Q9UBS0")) 
(def-family "ST7" :members ("UP:Q9NRC1" "UP:Q9Y561")) 
;(def-family "STATs" :members ("UP:P08457" "UP:P35610"))
;(define-protein "UP:P08457" ("STATx" "stat" "stats" "streptothricin acetyltransferase")) ;strep
(def-family "STK-1" :members ("UP:P36888" "UP:Q96GD4")) 
;(def-family "SUMO-2" :synonyms ("small ubiquitin-related modifier 2") :members ("UP:P61956" "UP:Q5ZJM9")) 
;(define-protein "UP:Q5ZJM9" nil) ;chick

;(def-family "SWI1" :members ("NCIT:C19807" "UP:O14497" "UP:Q9FGN8"))
;(define-protein "UP:Q9FGN8" ("DYAD")) ;arath

(def-family "SWI2" :members ("UP:P28370" "UP:P51531")) 
;(define-protein "UP:F4I2H2" nil) ;arath

;(def-family "Segment polarity protein dishevelled homolog DVL-2" :members ("UP:O14641" "UP:P51142"))
;(define-protein "UP:P51142" ("dsh" "XDsh" "protein dishevelled")) ;xela

;(def-family "Selenoprotein P" :members ("UP:P49907" "UP:P49908"))
;(define-protein "UP:P49907" ("SEP" "sep")) ;bovine

;(def-family "Serine/threonine-protein kinase PLK1" :members ("UP:P53350" "UP:P70032"))
;(define-protein "UP:P70032" ("PLX1" "plx1")) ;xenla

(def-family "StAR" :members ("UP:P25092" "UP:P49675")) 
(def-family "TAB2/3" :members ("UP:Q8N5C8" "UP:Q9NYJ8")) 
(def-family "TAP" :members ("UP:O60763" "UP:O75369")) 
(def-family "TEP1" :members ("UP:P60484" "UP:Q99973")) 
(def-family "TGF-B superfamily receptor type I" :synonyms ("TSR-I") :members ("UP:P37023" "UP:Q04771")) 
(def-family "TIM" :members ("UP:P60174" "UP:Q12774" "UP:Q96D42" "UP:Q9UNS1")) 
(def-family "TKT" :members ("UP:P29401" "UP:Q16832")) 
(def-family "TNC" :members ("UP:P24821" "UP:P63316")) 
;(def-family "TNFAIP3-interacting protein 1" :members ("UP:Q15025" "UP:Q9WUU8"))
;(define-protein "UP:Q9WUU8" ("ABIN")) ;mouse

(def-family "TORC-3" :synonyms ("Transducer of CREB protein 3") :members ("UP:Q6UUV7" "UP:Q6UUV9")) 
(def-family "TR" :members ("UP:P02786" "UP:P25116" "UP:Q16881")) 
(def-family "TRAM-1" :members ("UP:Q15629" "UP:Q9Y6Q9")) 
(def-family "TYRO4" :members ("UP:P29320" "UP:P54756")) 
;(def-family "Transcription factor AP-2-alpha" :members ("UP:A1A4R9" "UP:P05549"))
;(define-protein "UP:A1A4R9" ("AP-2alpha" "AP-2α" "AP2alpha" "AP2α")) ;bovine

;(def-family "Transcription factor AP-2-beta" :members ("UP:Q76HI7" "UP:Q92481"))
;(define-protein "UP:Q76HI7" ("AP-2beta" "AP-2β" "AP2β")) ;canlf

;(def-family "Transforming protein RhoA" :members ("UP:P24406" "UP:P61586"))
;(define-protein "UP:P24406" ("rho1")) ;canlf

;(def-family "TrxR1" :members ("UP:P91938" "UP:Q16881" "UP:Q17745"))
;(define-protein "UP:Q17745" ("TRR" "TRRs" "thioredoxin reductase 1")) ;caeel
;(define-protein "UP:P91938" ("thioredoxin reductase 1, mitochondrial")) ;dros

;(def-family "Tyrosine-protein kinase FRK" :members ("UP:P42685" "UP:Q922K9"))
;(define-protein "UP:Q922K9" ("bsk")) ;mouse

;(def-family "Ubiquitin-conjugating enzyme E2 variant 1" :members ("UP:Q13404" "UP:Q3SZ52" "UP:Q90879"))
;(define-protein "UP:Q3SZ52" ("uev1")) ;bovine
;(define-protein "UP:Q90879" ("Croc1B")) ;chick

(def-family "VCAM-1" :synonyms ("vascular cell adhesion protein 1") :members ("UP:P19320" "UP:Q28260")) 
;(def-family "VEGFR-3" :synonyms ("VEGFR3") :members ("UP:P35916" "UP:P79701"))
;(define-protein "UP:P79701" ("VEGF-R3" "vascular endothelial growth factor receptor 3" "k -2" "k 2")) ;cotco
(def-family "WBP1" :members ("UP:P39656" "UP:Q96G27")) 
;(def-family "Zinc finger protein GLI1" :members ("UP:P08151" "UP:P55878"))
;(define-protein "UP:P55878" ("GLI" "gli")) chick

;(def-family "a2" :members ("UP:Q07032" "UP:Q9Y487"))
;(define-protein "UP:Q07032" ("A25_VAR67" "Protein A2.5")) ;smallpox

(def-family "a3" :members ("UP:P05813" "UP:Q13488")) 
(def-family "actin depolymerizing factor" :synonyms ("ADF") :members ("UP:P23528" "UP:Q9Y281"))
;(define-protein "UP:Q9LQ81" ("actin-depolymerizing factor 10" "AtADF10")) ;arath
;(define-protein "UP:Q39250" ("ADF1" "actin-depolymerizing factor 1" "AtADF1")) ;arath
;(define-protein "UP:Q9ZSK4" ("ADF3" "actin-depolymerizing factor 3")) ;arath
;(define-protein "UP:Q41764" ("actin-depolymerizing factor 3" "ZmADF3")) ;maize
;(define-protein "UP:Q9ZSK3" ("actin-depolymerizing factor 4" "AtADF4")) ;arath
;(define-protein "UP:Q9ZNT3" ("actin-depolymerizing factor 5" "AtADF5")) ;arath
;(define-protein "UP:Q67ZM4" ("actin-depolymerizing factor 7" "AtADF7")) ;arath
;(define-protein "UP:Q570Y6" ("actin-depolymerizing factor 8" "AtADF8")) ;arath

(def-family "actin" :members ("UP:P63267" "UP:P68133")) 
;(def-family "actin, aortic smooth muscle" :members ("UP:P08023" "UP:P62736"))
;(define-protein "UP:P08023" ("alpha-actin" "α-actin")) ;chicken

(def-family "adenosine deaminase" :members ("UP:P00813" "UP:P78563")) 
(def-family "adenylate monophosphate kinase" :members ("UP:P00568" "UP:P54819")) 
(def-family "adiponectin" :members ("UP:Q15848" "UP:Q3Y5Z3")) 
(def-family "albumin" :members ("UP:P02768" "UP:Q10586")) 
(def-family "aldehyde reductase" :members ("UP:P14550" "UP:P15121")) 
(def-family "alpha 1" :members ("UP:P68133" "UP:Q03692")) 
;(def-family "alpha-2-antiplasmin" :members ("UP:P08697" "UP:P28800"))
;;(define-protein "UP:P28800" ("alpha2-antiplasmin")) ;bovine

;(def-family "alpha-internexin" :members ("UP:Q08DH7" "UP:Q16352")) 
(def-family "aquaporin" :members ("UP:Q25074" "UP:Q9V5Z7"))
;(define-protein "UP:Q7KY01" ("Q7KY01")) ;unreviewed

(def-family "arf-1" :members ("UP:P84077" "UP:Q9ULH1")) 
(def-family "arpc1b" :members ("UP:A4D275" "UP:O15143")) 
;(def-family "ataxin-3" :members ("UP:P54252" "UP:Q9W689"))
;(define-protein "UP:Q9W689" nil) ;chicken

(def-family "aw-19" :members ("UP:P16190" "UP:P30459" "UP:P30512")) 
;(def-family "beta-defensin 1" :members ("UP:O19038" "UP:O89117" "UP:P60022"))
;(define-protein "UP:O89117" ("RBD1")) ;rat
;(define-protein "UP:O19038" ("SBD-1")) ;sheep

;(def-family "beta-defensin 2" :members ("UP:O15263" "UP:P82020"))
;(define-protein "UP:P82020" ("BD2" "bD2")) ;mouse

(def-family "beta-gal" :members ("UP:P06864" "UP:P70753")) 
(def-family "breast cancer type 1 susceptibility protein" :members ("UP:B7ZA85" "UP:P38398")) 
(def-family "bw-22" :members ("UP:P30492" "UP:P30495")) 
(def-family "c3b" :members ("UP:P01024" "UP:P17927")) 
(def-family "cAMP dependent protein kinase catalytic subunit alpha" :synonyms ("cAMP-dependent protein kinase catalytic subunit alpha") :members ("UP:P17612" "UP:Q15136")) 
(def-family "cadherin" :members ("CADH1_HUMAN" "UP:P55287" "UP:P55283" "UP:P55285" "UP:P55286" "UP:P55289" "UP:P55290" "UP:P55291")) ;possibly others too
;(def-family "cadherin-11" :members ("UP:O93319" "UP:P55287"))
;(define-protein "UP:O93319" nil) ;chicken
(def-family "cadherin-associated protein" :members ("UP:P26232" "UP:P35221")) 
;(def-family "calnexin" :members ("UP:P24643" "UP:P27824"))
;(define-protein "UP:P24643" ("pp90")) ;canlf

;(def-family "calponin-3" :members ("UP:Q15417" "UP:Q32L92")) 
;(define-protein "UP:Q32L92" nil) ;bovine

(def-family "cancer 1" :members ("UP:Q14526" "UP:Q4ZG55" "UP:Q9BY67" "UP:Q9Y6Q9")) 
;(def-family "carbohydrate sulfotransferase 11" :members ("UP:Q7T3S3" "UP:Q9NPF2"))
;(define-protein "UP:Q7T3S3" ("C4ST-1")) ;danre

;(def-family "caspase-2" :members ("UP:P42575" "UP:Q98943"))
;(define-protein "UP:Q98943" ("caspases-2")) ;chick

;(def-family "caspase-6" :members ("UP:P55212" "UP:Q3T0P5"))
;(define-protein "UP:Q3T0P5" ("caspases-6")) ;bovine

(def-family "catenin" :members ("UP:P35221" "UP:P35222" "UP:Q9UQB3")) 
;(def-family "caveolin-3" :members ("UP:P56539" "UP:Q2KI43"))
;(define-protein "UP:Q2KI43" nil) ;bovine

;(def-family "cdc14" :members ("UP:Q00684" "UP:Q9UNH5" "XFAM:PF08045.9")) 
;(def-family "cerberus" :members ("UP:O55233" "UP:O95813" "UP:P70041" "UP:Q9PWB0"))
;(define-protein "UP:O55233" ("cerl")) ;non-human
;(define-protein "UP:P70041" ("CERS" "cer")) ;xenla
;(define-protein "UP:Q9PWB0" nil) ;non-human

;(def-family "cholecystokinin" :members ("UP:O93464" "UP:P06307"))
;(define-protein "UP:O93464" ("CCK8")) ;carau

;(def-family "claudin-16" :members ("UP:Q9XT98" "UP:Q9Y5I7"))
;(define-protein "UP:Q9XT98" nil) ;bovine
;(def-family "claudin-18" :members ("UP:P56856" "UP:Q0VCN0"))
;(define-protein "UP:Q0VCN0" nil) ;bovine
;(def-family "claudin-2" :members ("UP:P57739" "UP:Q765P1")) 
;(define-protein "UP:Q765P1" ("claudin2")) ;bovine 
;(define-protein "UP:Q765N9" ("claudin-3" "claudin3")) ;bovine
;(def-family "claudin-4" :members ("UP:O14493" "UP:Q6BBL6"))
;(define-protein "UP:Q6BBL6" ("claudin4")) ;bovine
;(def-family "claudin-7" :members ("UP:O95471" "UP:Q3B7N4"))
;(define-protein "UP:Q3B7N4" ("claudin7")) ;bovine

(def-family "cofilin" :synonyms ("cofil-ins") :members ("UP:P23528" "UP:Q9Y281")) 
(def-family "collagen" :members ("UP:P02452" "UP:P02461" "UP:P08123" "UP:P17301")) 
;(def-family "collagenase" :members ("UP:P08897" "UP:P45452"))
;(define-protein "UP:P08897" ("HC")) ;bovine

;(def-family "collectin-12" :members ("UP:Q2LK54" "UP:Q5KU26"))
;(define-protein "UP:Q2LK54" ("CL3" "cl3")) ;chicken

(def-family "cpt1b" :members ("UP:A5PLL0" "UP:Q92523")) 
;(def-family "cyclooxygenase" :members ("NCIT:C17015" "PGH2_HUMAN" "UP:P23219" "UP:P35354")) redone with ID
;(def-family "cytohesin-1" :members ("UP:Q15438" "UP:Q76MZ1"))
;(define-protein "UP:Q76MZ1" ("cytohesin1")) ;chlae

(def-family "derived growth factor" :members ("UP:P01127" "UP:P04085" "UP:P16234")) 
;(def-family "desmoglein-3" :members ("UP:P32926" "UP:Q7YRU7"))
;(define-protein "UP:Q7YRU7" nil) ;canlf

(def-family "dihydrodiol dehydrogenase 3" :members ("UP:P14550" "UP:P42330")) 
;(def-family "diphthamide biosynthesis protein 1" :members ("UP:Q3T7C9" "UP:Q9BZG8"))
;(define-protein "UP:Q3T7C9" ("TSL")) ;litva

;(def-family "docking protein 2" :members ("UP:O60496" "UP:O70469"))
;(define-protein "UP:O70469" ("Dok-R" "DokR" "FRIP")) ;mouse

(def-family "eIF-2A" :members ("UP:P05198" "UP:Q9BY44")) 
(def-family "ecto" :members ("UP:P49961" "UP:Q9UPN9"))
;(define-protein "UP:Q56R14" ("ectodermin")) ;xenla

;(def-family "efs" :members ("UP:P40136" "UP:Q9NQ75"))
;(define-protein "UP:P40136" ("BXA0141" "calmodulin-sensitive adenylate cyclase" "E-F" "EF" "Edema Factor" "GBAA_pXO1_0142" "p40136" "cya" "pXO1-122")) ;bacan
(def-family "envelope glycoprotein" :members ("UP:D2XWF1" "UP:E2F1Z4" "UP:O41637" "UP:Q5EHA4" "UP:Q99C47" "UP:W0G7P8")) ;all HIV, so BG removed them, but that's what they're from 
(def-family "epidermal growth factor receptor" :members ("UP:P00533" "UP:P0CY46" "UP:P13387")) 
(def-family "extracellular signal regulated kinase" :members ("UP:Q16539")) 
(def-family "f-actin cross-linking protein" :members ("UP:P12814" "UP:P35609")) 
(def-family "f3" :members ("UP:P13726" "UP:Q12860")) 
(def-family "factor 1" :members ("UP:O95831" "UP:P48061" "UP:Q8WXW3")) 
;(def-family "fibrillin-1" :members ("UP:P35555" "UP:P98133"))
;(define-protein "UP:P98133" nil);bovine 

(def-family "fibronectin" :members ("UP:P02751" "UP:Q5R3F8")) 
;(def-family "fibulin-5" :members ("UP:Q5EA62" "UP:Q9UBX5"))
;(define-protein "UP:Q5EA62" nil) ;bovine

;(def-family "fimbrin" :members ("UP:P32599" "UP:P54680" "UP:Q16658"))
;(define-protein "UP:P54680" nil) ;dicdi
;(define-protein "UP:P32599" nil) ;yeast

(def-family "forkhead" :synonyms ("Forkhead Box Protein") :members ("UP:O16850" "UP:O43524" "UP:Q9UJU5"))
;(define-protein "UP:O16850" ("DAF-16" "DAF16" "Forkhead Box Protein" "FoxO" "forkhead box protein O")) ;caeel
(def-family "FRA" :long "Fos-related antigen" :synonyms ("fra") :members ("UP:P15407" "UP:P15408")) 
(def-family "fritz" :members ("UP:O95876" "UP:Q92765")) 
;(def-family "frizzled-2" :members ("UP:Q08464" "UP:Q14332"))
;(define-protein "UP:Q08464" ("rfz2")) ;rat

(def-family "gag protein" :members ("UP:Q79354" "UP:Q79360"))
;all HIV, so BG removed them, but that's what they're from 

;(def-family "galectin-9" :members ("UP:O00182" "UP:Q3MHZ8")) 
(def-family "gene 1" :members ("UP:O14503" "UP:O15503" "UP:O95997" "UP:P49788" "UP:Q2M385" "UP:Q86UE4")) 
;(def-family "genome polyprotein" :members ("UP:D2IE15" "UP:D2IE16" "UP:Q99IB8"))
;unreviewed proteins "UP:D2IE15" "UP:D2IE16" removed
(def-family "glyceraldehyde-3-phosphate dehydrogenase" :members ("UP:O14556" "UP:P04406")) 
(def-family "growth factor receptor" :members ("UP:P00533" "UP:P04629" "UP:P08138" "UP:P08581" "UP:P16234" "UP:P17948" "UP:P35968")) 
(def-family "growth-factor" :long "growth factor" :members ("EGF_HUMAN")) 
;(def-family "gtr1" :members ("UP:P11166" "UP:Q944G5" "UP:W2TX68"))
;;(define-protein "UP:Q944G5" nil) ;non-human
;(define-protein "UP:W2TX68" ("Gtr1/RagA G protein conserved region" "W2TX68_NECAM")) ;non-human
(def-family "hCAP" :members ("UP:P49913" "UP:Q9UQE7")) 
(def-family "hK2" :members ("UP:O00139" "UP:P52789")) 
(def-family "hbeta3" :members ("UP:Q9NPA1" "UP:Q9Y691")) 
;(def-family "heat shock protein" :synonyms ("HSP" "Hsp") :members ("UP:P04792" "UP:P07900" "UP:P08238" "UP:P0DMV8" "UP:P0DMV9" "UP:P10809" "UP:P11021" "UP:P11142" "UP:P14625" "UP:P17066")) added more proteins and def-id
;(define-protein "UP:P32590" ("HSP" "Hsp")) ;non-human
;(define-protein "UP:P63038" ("hsp65")) ;non-human

(def-family "hemolysin" :members ("UP:Q00951" "UP:Q06304")) 
;(def-family "hepatocyte nuclear factor 1-alpha" :members ("UP:P20823" "UP:Q90867" "UP:Q91474"))
;(define-protein "UP:Q90867" ("HNF1alpha" "HNF1α" "hnf-1α")) ;chick
;define-protein "UP:Q91474" ("HNF 1" "HNF1" "hepatocyte nuclear factor" "hepatocyte nuclear factor 1" "shNF1")) ;salsa
(def-family "homeobox" :members ("UP:O43186" "UP:P37275" "UP:Q03014" "UP:Q9BPY8"))
;(define-protein "UP:Q91926" nil);xenla 

(def-family "hrs" :members ("UP:O14964" "UP:O43593")) 
;(def-family "immunoglobulin heavy locus" :members ("HGNC:5477" "NCIT:C26422" "UP:P34041"))
;(define-protein "HGNC:5477" ("igh")) 
;(define-protein "NCIT:C26422" ("IGH@")) 

(def-family "indanol dehydrogenase" :synonyms ("trans-1,2-dihydrobenzene-1,2-diol dehydrogenase") :members ("UP:P42330" "UP:Q04828")) 
;(def-family "indoleamine 2,3-dioxygenase" :members ("UP:P14902" "UP:P47125"))
;(define-protein "UP:P47125" ("BNA2" "IDO" "ido" "indoleamine 2,3 dioxygenase" "indoleamine-2,3-dioxygenase")) ;yeast
;(def-family "inositol 1,4,5-trisphosphate receptor" :members ("UP:P29993" "UP:Q14643" "UP:Q8WSR4"))
;(define-protein "UP:Q8WSR4" ("IP3R" "Q8WSR4" "inositol-1-4-5-triphosphate receptor type-1" "phosphate receptor")) ;patpe
;(define-protein "UP:P29993" ("ITPR" "InsP3 receptor" "InsP3R" "InsP3Rs")) ;dros

;(def-family "intercellular adhesion molecule 2" :members ("UP:P13598" "UP:Q5NKV1"))
;(define-protein "UP:Q5NKV1" ("ICAM-2")) ;gorilla

;(def-family "interferon alpha" :synonyms ("IFN-alpha" "IFN-α" "IFNA" "IFNalpha" "IFNα") :members ("UP:P01563" "UP:P01562" "UP:P01566" "UP:P01567" "UP:P01568" "UP:P01569" "UP:P01570" "UP:P01571")) added def-id and other human ones
;(define-protein "UP:P35849" ("IFN-alpha" "IFN-α" "IFNA" "IFNalpha" "IFNα")) ;feline

;(def-family "interferon regulatory factor 3" :members ("UP:Q14653" "UP:Q4JF28"))
;(define-protein "UP:Q4JF28" ("IRF-3")) ;bovine

;(def-family "interferon regulatory factor 5" :members ("UP:Q13568" "UP:Q58DJ0"))
;(define-protein "UP:Q58DJ0" ("IRF-5")) ;bovine

;(def-family "interleukin" :members ("NCIT:C20497" "UP:P01583" "UP:P01584" "UP:P05231" "UP:P08700" "UP:P10145" "UP:P13232" "UP:P60568")) added id
;(def-family "interleukin-33" :members ("UP:O95760" "UP:O97863"))
;(define-protein "UP:O97863" ("IL-33")) ;canlf

(def-family "interleukin-6" :members ("UP:P05231" "UP:P40189")) 
(def-family "jagged1" :members ("UP:P78504" "UP:Q90Y57"))
;(define-protein "UP:Q90Y57" ("JAGGED1" "jagged 1a" "jagged-1" "protein jagged-1a")) ;danre
(def-family "l-dopachrome tautomerase" :members ("UP:P14174" "UP:P40126")) 
(def-family "lactase" :members ("UP:P09848" "UP:P16278")) 
(def-family "laminin" :members ("UP:P07942" "UP:P11047" "UP:Q13751" "UP:Q13753")) 
(def-family "latency-associated peptide" :members ("UP:P01137" "UP:P10600" "UP:P61812")) 
(def-family "lectin" :members ("UP:P05046" "UP:P16300" "UP:P84849" "UP:Q01MB6")) 
(def-family "mast cell growth factor" :members ("UP:P08700" "UP:P21583")) 
;(def-family "maternal embryonic leucine zipper kinase" :members ("UP:Q14680" "UP:Q61846"))
;(define-protein "UP:Q61846" ("MPK38")) ;mouse

(def-family "member 2" :members ("UP:P24468" "UP:Q08J23" "UP:Q14108" "UP:Q9BZC7")) 
;(def-family "metalloproteinase" :members ("NCIT:C16843" "UP:P01033" "UP:P08253" "UP:P16035" "UP:P35625" "UP:P50281")) 
;(def-family "metalloproteinases" :members ("NCIT:C16843" "UP:P01033" "UP:P16035")) 
(def-family "mitochondrial" :members ("UP:O95363" "UP:P11177" "UP:P50213" "UP:Q15031" "UP:Q8IVS2" "UP:Q99798")) 
(def-family "mitogen-activated protein kinase 14" :members ("UP:P47812" "UP:Q16539"))
;;(define-protein "UP:P47812" ("MPK2" "mpk2")) ;xenla

(def-family "mitogen-activated protein kinase 2" :members ("UP:O42781" "UP:P28482"))
;(define-protein "UP:O42781" ("PCM" "PCMs")) ;pneca

(def-family "mixed lineage kinase" :members ("UP:O43283" "UP:Q12852")) 
(def-family "myosin heavy chain" :members ("UP:A7E2Y1" "UP:P11055" "UP:P12882" "UP:P12883" "UP:P13533" "UP:P13535" "UP:P35579" "UP:P35580" "UP:P35749" "UP:Q9UKX2" "UP:Q9UKX3" "UP:Q9Y2K3" "UP:Q9Y4I1" "UP:Q9Y623"))
;(define-protein "UP:P05661" ("MHC" "p05661" "beta-MHC" "beta-myosin heavy chain")) ;dros
;(define-protein "UP:P08799" ("myosin II heavy chain")) ;dicdi
;(define-protein "UP:Q05000" ("Q05000")) ;podca

(def-family "myosin light chain" :synonyms ("MLC" "MyLC") :members ("UP:O14950" "UP:P05976" "UP:P10916" "UP:P12829" "UP:P19105" "UP:P24844" "UP:P60660" "UP:Q01449" "UP:Q02045"   "UP:Q12965" "UP:Q13402" "UP:Q96A32" "UP:Q9BUA6"))
;(define-protein "UP:P07291" ("ELC" "myosin essential light chain, striated adductor muscle")) ;argir
;(define-protein "UP:P09541" ("MLC1A" "myosin light chain 4")) ;mouse
;(define-protein "UP:P53141" ("myosin light chain 1")) ;yeast
;(define-protein "UP:P86703" ("p86703")) ;penmo
;(define-protein "UP:Q06580" ("myosin light chain 2")) ;yeast
;(define-protein "UP:Q09510" ("MRLC" "myosin regulatory light chain")) ;caeel

(def-family "myosin" :members ("UP:B0I1T2" "UP:B2RTY4" "UP:O00159" "UP:O43795" "UP:O94832" "UP:Q13402" "UP:Q13459" "UP:Q9HD67" "UP:Q9NQX4" "UP:Q9ULV0" "UP:Q9Y6X6"))
;(define-protein "UP:Q23978" ("Myo31DF" "myosin IA")) ;dros 
;(define-protein "UP:Q23979" ("myosin IB")) ;dros
;(define-protein "UP:Q758Q9" ("MYO1" "myo-1" "type I myosin")) ;ashgo
;(define-protein "UP:P08964" ("type II myosin")) ;yeast
;(define-protein "UP:Q875X3" ("myo2a" "myosin 2a")) ;naucc
;(define-protein "UP:A6ZZJ1" ("MYO3" "myo-3" "type I myosin Myo3")) ;yeast
;(define-protein "UP:Q8IDR3" ("myosin A")) ;plaf7
;(define-protein "UP:Q99323" ("myosin II")) ;drome


;(def-family "nephrocystin-1" :members ("UP:O15259" "UP:Q9TU19"))
;(define-protein "UP:Q9TU19" nil) ;canlf

;(def-family "netrin-1" :members ("UP:O95631" "UP:Q90922"))
;(define-protein "UP:Q90922" nil) ;chick

;(def-family "neurogenic differentiation factor 1" :members ("UP:P79765" "UP:Q13562" "UP:Q60430"))
;(define-protein "UP:P79765" ("NeuroD")) ;mesau
;(define-protein "UP:Q60430" ("Neurogenic differentiation factor 1" "NeuroD1" "Beta-cell E-box transcriptional activator 2" "beta2" "β-2" "β2")) ;mesau
(def-family "non-structural protein 1" :members ("UP:Q0H8C5" "UP:Q0PDM0" "UP:Q9INI2")) 
(def-family "non-structural protein 3" :members ("UP:Q3ZK63" "UP:Q9YWQ0")) 
(def-family "noxa" :members ("UP:Q0GKC8" "UP:Q13794")) 
(def-family "o00505" :synonyms ("o00629") :members ("UP:O00505" "UP:O00629")) 
;(def-family "oncomodulin" :members ("UP:O35508" "UP:P0CE72"))
;(define-protein "UP:O35508" ("OM")) ;cavpo

;(def-family "osteopontin" :members ("UP:P10451" "UP:P31097"))
;(define-protein "UP:P31097" ("OC-1" "OC1")) ;rabit

(def-family "p100" :members ("UP:P40967" "UP:Q9ULW0")) 
(def-family "p102" :members ("UP:P25205" "UP:P35606")) 
(def-family "p11" :members ("UP:P55957" "UP:P60903" "UP:Q5RKV6")) 
;(def-family "p17" :members ("UP:P52309" "UP:Q9NRF9" "UP:Q9SJZ2"))
;(define-protein "UP:Q9SJZ2" nil) ;arath
;(define-protein "UP:P52309" ("UPF0178 protein Lmo1456")) ;lismo

(def-family "p18" :members ("UP:O43324" "UP:P23528" "UP:P63279")) 
(def-family "p19" :members ("UP:P55273" "UP:Q9NPF7"))
;(define-protein "UP:O22959" ("ATP51")) ;arath

;(def-family "p200" :members ("UP:P75211" "UP:Q6X2U4" "UP:Q8N3C0"))
;(define-protein "UP:P75211" nil) ;mycpn
;(define-protein "UP:Q6X2U4" ("non-structural polyprotein p200")) ;rubvb

(def-family "p21Cip1" :members ("UP:P38936" "UP:P49918")) 
(def-family "p22 phagocyte B-cytochrome" :members ("UP:P04839" "UP:P13498")) 
(def-family "p24" :members ("UP:O94811" "UP:P21926" "UP:Q15363")) 
(def-family "p25" :members ("UP:P13985" "UP:P80188" "UP:Q9BVK6")) 
(def-family "p27" :members ("UP:P40305" "UP:Q13177")) 
(def-family "p29" :members ("UP:O95926" "UP:P24158")) 
(def-family "p3" :members ("UP:P09131" "UP:Q01780")) 
(def-family "p31" :members ("UP:P36543" "UP:Q9NZ43")) 
(def-family "p36" :members ("UP:P07355" "UP:Q9H0P0")) 
(def-family "p38 SAPK" :members ("UP:Q15759" "UP:Q16539")) 
(def-family "p38 mitogen activated protein kinase" :synonyms ("p38 MAP kinase" "P38 MAP kinase" "p38 MAPK") :members ("UP:O15264" "UP:P46108" "UP:P53778" "UP:Q15759" "UP:Q16539")) 
(def-family "p39" :members ("UP:P05412" "UP:P61421")) 
(def-family "p4" :members ( "UP:Q01780" "UP:Q9HC77"))
;(define-protein "UP:Q00223" nil) ;xenla

(def-family "p45" :members ("UP:P29466" "UP:P62195" "UP:Q16621")) 
(def-family "p47" :members ("UP:P08567" "UP:Q12802")) 
(def-family "p5" :members ("UP:Q06265" "UP:Q15084")) 
(def-family "p54" :members ("UP:P09913" "UP:P14921" "UP:Q13451")) 
(def-family "p55" :members ("UP:P01589" "UP:Q16658")) 
(def-family "p56" :members ("UP:P09914" "UP:P62191" "UP:Q7Z6B0")) 
(def-family "p57" :members ("UP:P31146" "UP:P49918"))
;;(define-protein "UP:Q9JGF2" nil) ;anv1

(def-family "p58" :members ("UP:P14618" "UP:P30101" "UP:Q13177")) 
(def-family "p59" :members ("UP:Q02790" "UP:Q9H8Y8")) 
(def-family "p62" :members ("UP:P0CA05" "UP:Q07666" "UP:Q13501")) 
(def-family "p63" :members ("UP:Q07065" "UP:Q9H3D4" "UP:Q9P2Y5")) 
(def-family "p65" :members ("UP:P21579" "UP:Q9H4A3")) 
;(def-family "p66" :members ("NCIT:C17316" "UP:P56820" "UP:Q8WXI9"))
;(define-protein "UP:P56820" nil) ;arath

(def-family "p68" :members ("UP:P08133" "UP:Q07666")) 
;(def-family "p72" :members ("UP:P22776" "UP:Q5IZI7" "UP:Q92841"))
;(define-protein "UP:P22776" ("major capsid protein")) ;non-human
;(define-protein "UP:Q5IZI7" nil) ;non-human

(def-family "p75" :members ("UP:P14317" "UP:P14784" "UP:P20333" "UP:Q92945" "UP:Q9Y286")) 
(def-family "p8" :members ("UP:P05109" "UP:Q7Z2W7")) 
(def-family "p85" :members ("UP:O00459" "UP:O43439" "UP:Q14155")) 
(def-family "p90" :members ("UP:P02786" "UP:P27824")) 
(def-family "p97" :members ("UP:P55072" "UP:P57678" "UP:P78344")) 
;(def-family "pT1" :members ("UP:P84813" "UP:Q15935" "UP:Q8VYM2"))
;(define-protein "UP:P84813" ("PT-1" "potamin-1")) ;non-human
;(define-protein "UP:Q8VYM2" nil) ;non-human

(def-family "pds1" :members ("UP:P37840" "UP:Q15116"))
;(define-protein "UP:P93836" nil) ;arath

;(def-family "period circadian protein homolog 2" :members ("UP:O15055" "UP:O54943"))
;(define-protein "UP:O54943" ("mPer2")) ;mouse

;(def-family "peroxisome proliferator-activated receptor gamma coactivator 1-alpha" :members ("UP:Q865B7" "UP:Q9UBK2"))
;(define-protein "UP:Q865B7" ("PGC-1alpha" "PGC-1α" "PGC1alpha" "PPARGC1α" "PPARγ-coactivator 1α" "pgc-1α" "pgc1α" "peroxisome proliferator-activated receptor γ coactivator 1α")) ;bovine
(def-family "peroxisome proliferator-activated receptor gamma" :members ("UP:P37231" "UP:Q86YN6")) 
(def-family "phosphatase 1" :members ("UP:Q8TDY2" "UP:Q9UQK1")) 
(def-family "phosphodiesterase" :members ("UP:J3SBP3" "UP:O04147" "UP:O76074" "UP:P06776" "UP:P09543" "UP:P22434" "UP:Q13370")) 
(def-family "phosphoinositide-3-kinase" :members ("UP:O75747" "UP:P42336" "UP:Q8NEB9" "UP:Q8WYR1")) 
;(def-family "platelet-derived growth factor receptor beta" :members ("UP:P09619" "UP:Q6QNF3"))
;(define-protein "UP:Q6QNF3" ("PDGF-Rbeta" "PDGF-Rβ" "PDGFR-β" "PDGFRβ" "pdgfrβ")) ;canlf
(def-family "pol protein" :members ("UP:A4ZJ37" "UP:B7TEU4" "UP:B7TEZ7" "UP:G3FA30" "UP:G3FA67" "UP:G3GCR0" "UP:G3GCV8" "UP:Q5G4B7" "UP:Q9WJJ2")) 
(def-family "poly(ADP–ribose)" :members ("PARP1_HUMAN" "PARP2_HUMAN" "PARP3_HUMAN")) 
;(def-family "polycystin-2" :members ("UP:Q13563" "UP:Q4GZT3"))
;(define-protein "UP:Q4GZT3" nil) ;bovine

(def-family "polyubiquitin" :members ("UP:P0CG72" "UP:P0CG83" "UP:P42739")) 
(def-family "pop3" :members ("UP:Q9BVC4" "UP:Q9HBV1")) 
(def-family "protease" :members ("UP:C3VI15" "UP:P10265" "UP:P63120" "UP:P63121" "UP:P63122" "UP:P63123" "UP:P63124" "UP:P63125" "UP:P63127" "UP:P63129" "UP:P63131" "UP:Q07CK6" "UP:Q9Y6I0")) 
(def-family "protein 1" :members ("UP:O60894" "UP:O95388" "UP:P05412" "UP:P18887" "UP:P31948" "UP:Q13009" "UP:Q13794" "UP:Q16531" "UP:Q8IXJ9" "UP:Q8TB36" "UP:Q9UQF2")) 
;(def-family "protein diaphanous homolog 1" :synonyms ("mDia1") :members ("UP:O08808" "UP:O60610"))
;(define-protein "UP:O08808" ("mDia-1" "p140mDia")) ;mouse

(def-family "protein phosphatase" :members ("UP:O00743" "UP:O14829" "UP:O15297" "UP:O15355" "UP:O60346" "UP:O60729" "UP:O75688" "UP:O95476" "UP:P28562" "UP:P62136" "UP:P62140" "UP:P62714" "UP:P67775" "UP:Q9P2J9")) 
(def-family "protein phosphatase 2A" :synonyms ("protein phosphatase 2A" "PP-2A" "PP2A" "Phosphatase 2A") :members ("UP:P62714" "UP:P67775")) 
(def-family "protein phosphatase 2" :synonyms ("phosphatase 2") :members ("UP:P62714" "UP:P67775" "UP:Q06124")) 
(def-family "lipid phosphatase" :members ("UP:O14494" "UP:O14495" "UP:O43688" "UP:P60484" "UP:Q5VZY2" "UP:Q8NEB5")) 
(def-family "proteinase" :members ("UP:P10265" "UP:P55085" "UP:P63120" "UP:P63121" "UP:P63122" "UP:P63123" "UP:P63124" "UP:P63125" "UP:P63127" "UP:P63129" "UP:P63131" "UP:Q9Y6I0")) 
(def-family "prx" :members ("UP:P30048" "UP:Q9BXM0")) 
(def-family "rad1" :members ("UP:O60671" "UP:Q9BSD3")) 
(def-family "rap1" :members ("UP:P0C768" "UP:Q9NYB0")) 
(def-family "rap2" :members ("UP:P10114" "UP:Q96NL0")) 
(def-family "receptor-type tyrosine-protein phosphatase kappa" :members ("UP:Q15262" "UP:Q6P493")) 
(def-family "replication-associated protein" :members ("UP:P0C768" "UP:P18919")) 
;(def-family "retinoblastoma-associated protein" :members ("UP:P06400" "UP:P13405"))
;(define-protein "UP:P13405" ("pp105")) ;mouse

(def-family "retinol dehydrogenase" :members ("UP:O14756" "UP:P40394")) 
;(def-family "rho guanyl-nucleotide exchange factor activity" :members ("GO:0005089" "UP:Q8N1W1" "UP:Q9NR83")) changed to def-id
;(def-family "rho-associated protein kinase 2" :members ("UP:Q28021" "UP:Q62868")) 
                                        ;(define-protein "UP:Q28021" ("ROCKII")) ;bovine
;(define-protein "UP:Q62868" ("ROK-alpha" "ROKalpha" "ROKα" "ROCKII")) rat

;(def-family "rhodopsin kinase" :members ("UP:P28327" "UP:Q15835"))
;;(define-protein "UP:P28327" ("RK")) 

(def-family "rotamase" :members ("UP:P62942" "UP:Q02790" "UP:Q13451")) 
;(def-family "rubisco" :members ("UP:P10809" "UP:Q21YM9" "UP:Q5ENN5"))
;(define-protein "UP:Q5ENN5" ("ribulose bisphosphate carboxylase, chloroplastic")) ;hettr
;(define-protein "UP:Q21YM9" nil) ;rhoft

;(def-family "secreted frizzled-related protein 2" :members ("UP:Q863H1" "UP:Q96HF1"))
;(define-protein "UP:Q863H1" ("sFRP2")) ;canlf

;(def-family "sentrin-specific protease 2" :members ("UP:Q91ZX6" "UP:Q9EQE1" "UP:Q9HC62"))
;(define-protein "UP:Q91ZX6" ("SuPr-1")) ;mouse
;(define-protein "UP:Q9EQE1" ("axam")) ;rat

(def-family "serine/threonine-protein kinase 13" :members ("UP:P53350" "UP:Q9UQB9")) 
(def-family "serum albumin" :members ("UP:P02768" "UP:P02769"))
;left in the bovine one, because I know it's used in papers 
(def-family "skeletal muscle" :members ("UP:P35523" "UP:P68133")) 
(def-family "smad" :synonyms ("SMAD") :members ("UP:O95405" "UP:P84022" "UP:Q13485")) 
;(def-family "sterol regulatory element-binding protein 1" :members ("UP:P36956" "UP:Q60416"))
;(define-protein "UP:Q60416" ("SREBP1" "srebp1")) ;crigr

(def-family "stomatin" :members ("UP:P27105" "UP:Q9UBI4")) 
;(def-family "stress-70 protein, mitochondrial" :members ("UP:P38646" "UP:P48721"))
;(define-protein "UP:P48721" ("mtHSP70" "mtHsp70")) ;rat

;(def-family "suppressor of cytokine signaling 5" :members ("UP:O75159" "UP:Q29RN6"))
;(define-protein "UP:Q29RN6" ("SOCS-5")) ;bovine

;(def-family "survivin" :members ("NCIT:C18179" "UP:O15392" "UP:Q4R1J6"))
;(define-protein "UP:Q4R1J6" ("su2")) ;tree frog

(def-family "tapasin" :members ("UP:O15533" "UP:Q9BX59")) 
(def-family "thioredoxin reductase" :members ("UP:P30044" "UP:P80892")) 
(def-family "thyroid hormone receptor beta" :members ("UP:P10828" "UP:Q9PVE4")) 
;(def-family "transcription factor 12" :members ("UP:Q60420" "UP:Q99081"))
;(define-protein "UP:Q60420" ("beta-1" "beta1")) ;mesau

;(def-family "transformer-2 protein homolog beta" :members ("UP:P62995" "UP:Q3ZBT6"))
;(define-protein "UP:Q3ZBT6" ("tra2beta")) ;bovine

;(def-family "transforming growth factor alpha" :members ("UP:P01135" "UP:P98138"))
;(define-protein "UP:P98138" ("TGF-alpha" "TGF-α" "TGFalpha")) ;rabit

(def-family "transforming growth factor" :members ("UP:P01135" "UP:P01137" "UP:P10600" "UP:P36897" "UP:P37173" "UP:Q15582")) 
;(def-family "tristetraprolin" :members ("UP:P26651" "UP:P53781"))
;(define-protein "UP:P53781" nil) ;bovine

(def-family "tuftelin" :members ("UP:Q9NNX1" "UP:Q9UBB9")) 
(def-family "type 1" :members ("UP:P14778" "UP:P30556" "UP:P36897" "UP:Q02338" "UP:Q16878")) 
(def-family "type 2" :members ("UP:P50052" "UP:Q16620" "UP:Q9BUT1")) 
(def-family "type I" :members ("UP:P02452" "UP:P08123" "UP:P14778" "UP:P36897" "UP:Q6ZMM2")) 
(def-family "type II" :members ("UP:O15327" "UP:P27930" "UP:P37173" "UP:P78540" "UP:Q16671")) 
(def-family "type III" :members ("UP:P52895" "UP:P55073" "UP:Q03167")) 
;(def-family "vascular endothelial growth factor receptor 2" :members ("UP:P35968" "UP:P52583"))
;(define-protein "UP:P52583" ("VEGF-R2")) ;cotja

(def-family "vascular endothelial growth factor" :members ("UP:P15692" "UP:P17948" "UP:P35968")) 
(def-family "clathrin" :members ("UP:P09496" "UP:P09497" "UP:P53675" "UP:Q00610")) 
(def-family "clathrin adaptor protein" :members ("UP:P49407" "UP:P98082")) 
(def-family "trypsin" :members ("UP:P07477" "UP:P07478" "UP:P35030")) 
(def-family "tryptase" :members ("UP:Q02844" "UP:Q15661" "UP:Q9GZN4" "UP:Q9NRR2")) 
(def-family "phospholipase Cβ" :synonyms ("phospholipase Cbeta" "phospholipase C-beta" "PLC-beta" "PLC-β" "PLCbeta" "PLCβ" "PLCB") :members ("UP:Q00722" "UP:Q01970" "UP:Q15147" "UP:Q9NQ66")) 
