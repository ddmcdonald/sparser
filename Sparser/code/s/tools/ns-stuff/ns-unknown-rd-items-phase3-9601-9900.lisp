
(IN-PACKAGE :SP)
(DEFPARAMETER SPARSER::*NS-RD-PHASE3-9601-9900*
  '(".1845_1847" "A+B" "A-CREB" "A-NHEJ" "A-allele" "A-bound" "A-mutant"
    "A-ring" "A1" "A13" "A14" "A365E" "A4" "A5" "A53T" "A9" "A91W" "A98G"
    "AA-3" "AA12" "AA20" "AA3" "AAA-A" "AABC" "AACAACA" "AAG" "AATAAA" "AATACA"
    "AAUAAA" "AAX" "AB10" "AB23" "AB7" "ABADHS" "ABCB1B" "AC-system" "ACAACG"
    "ACAGCA" "ACAGCG" "ACAs" "ACBD3-Strep" "ACBD3-Strep-expressing"
    "ACBD3-TBC122A" "ACBD3-TBC1D22A" "ACCTGGAGGGCTGGGG" "ACFs" "ACPP" "ACRN"
    "AChR" "AChRs" "AD" "AD169" "ADAS" "ADAS-Cog" "ADAS-cog" "ADNI-1" "ADSc"
    "AF2240" "AF647" "AFIP" "AG01518" "AGACATGCCTAGACATGCCT" "AIMSS" "AJCC"
    "AKAP6" "AKC" "AKT473" "AKTi-1" "AL161431.1" "ALA60" "AMBER"
    "AMBER99SB-ILDN" "AML-3" "AML-M5" "AMPKα2" "AMPKβ1" "AMPKγ" "AMPKγ1" "ANAE"
    "ANCNT" "AOA" "AP-MS" "AP1510" "AP1GBP1" "APIM" "APOBEC3" "APOE*4" "APs"
    "AR-ERG-p536" "AR3andERG" "AR9" "ARE-Luc" "ARE-luciferase" "AREsite"
    "ARG106" "ARG8" "ARHGAP27" "ARMC2" "ARNT-dependent" "ARNT-mediated" "ARS"
    "ARVs" "ASP25" "ASP29" "AT100" "ATCC" "ATF3-immunoreactive"
    "ATGGGCTACAGGCTTGTCACT3" "ATMi" "ATP-competitive" "ATP-synthase" "ATS"
    "ATTS" "AU1-tagged" "AUUUA" "AZD1480-treatment" "Ab-p53-lin" "AbC20"
    "Abbas" "Abbott" "Abcam" "Ac" "AcGFP" "AcGFP–hERα" "Ace-H3" "Acharya"
    "Ad5EE1B55K" "AdCre" "AdLacZ" "AdSpry1" "AdSpry4" "AdV-HO-1"
    "AdV-HO-1significantly" "Adamson" "Addgene" "Affy6" "Affymetrix" "Africa"
    "African-American" "African-Americans" "African-descent" "Afro-American"
    "Afro-Caribbean" "Ag" "Ago-mediated" "Agos" "Aguiari" "Aichi" "Aisiku"
    "Akaike" "Akt-dependent" "Ala59del" "Alegre" "Alenquer" "Alexa" "Alexa-488"
    "Ali5" "Align-GVGD" "Alk14" "Alkushi" "Allele-specific" "Allis" "Alpi"
    "Alt-EJ" "Alzheimer" "Alzheimer's" "Alzheimer’s" "Amaxa" "Amazon" "Ambion"
    "America" "Americas" "Amersham" "Ames" "Amgen" "Amino-terminal" "Amoy"
    "Amphiphysin" "AmphoPack" "AmphoPack-293" "Amplex" "Amsterdam"
    "Amsterdam-criteria" "Anderson" "Andes" "Andrea" "Andrei" "Angeles"
    "Angelsio" "Anglesio" "Angplt4" "AnnexinV-FITC" "Antigen-B" "Anyang" "Aos1"
    "Aotus" "Apaf" "Apaf-1-591" "Apaf-1CARD" "Apaf-1β-propellers" "Apert"
    "Api6" "ApopTag" "Arabia" "Arakawa" "Arg72Pro" "Armitage" "Armstrong"
    "Aros" "Aroya" "Artandi" "Ashkenazi" "Ashkenazim" "Ashton" "Asian"
    "Asian-Australian" "Asian-descent" "Asians" "AstraZeneca" "AtTIP1" "Ateeq"
    "Atweh" "Atwood" "Australia" "Australian" "Auto-Dock" "Aβ" "Aβ-40" "Aβ-42"
    "Aβ1–40" "A–4C" "A–E" "A–H" "A–bound" "A→D" "B-NHL" "B-containing"
    "B-lymphoma" "B-ring" "B1" "B10" "B2" "B3" "B30.2-domain" "B4" "B5" "B6"
    "B7" "B8" "B9" "BACKGROUND" "BADa" "BAF-47" "BAF60" "BAG-family" "BAG1L"
    "BAG1M" "BAK-dependent" "BALB" "BASALT" "BAX" "BAY" "BBB" "BC80" "BCA"
    "BCL-2-like" "BCL11B-4" "BCL11B-6" "BCLC" "BD12" "BETi" "BFC" "BH1-3"
    "BH3-only" "BH3-to-BC" "BH3-to-groove" "BH3a" "BH3a–cBAK" "BH3‐only"
    "BH3–only" "BI6727" "BIDa" "BIDf" "BID–cBAK" "BIM1" "BIO" "BIU" "BIU-87"
    "BL1" "BLK–YF" "BMAL1-Dependent" "BMAL1-mediated" "BMLA1" "BMMNCs"
    "BMP7-null" "BMS" "BMS-214662" "BOND-2" "BP4" "BQ664" "BRAF-mutated"
    "BRCT-C" "BRCT-N" "BRD-NUT" "BRD3" "BRDT" "BRENCs" "BSC40" "BT-474R"
    "BT474TtzmR" "BV" "BYL" "BYL-719" "Background" "Bak" "Balb" "Balb-neuT"
    "Baldassarre" "Bam" "BamHI" "Bansode" "Baranovskaya" "Bardelli" "Bardoni"
    "Bartek" "Basel" "Bauer" "Bauman" "Bax-mediated" "Baxter" "Bayes" "Bcl2"
    "BeadArray" "BeadChip" "Beaudette" "Beckman" "Bedford" "Begg" "Begg’s"
    "Belgium" "Belletti" "Bennett" "Bergink" "Beroukhim" "Bertagnolli"
    "Bertucci" "Beta-Carotene" "Bethesda" "Betser-Cohen" "Between-study" "BglI"
    "Bienko" "Bierdermann" "Billerica" "Bin" "Binet" "Bio-Rad" "BioGPS"
    "Biologicals" "Biomark" "Bioptechs" "Biosoft" "Biosystem" "Biosystems"
    "Birdseye" "Birdsuite-1.53" "Bitplane" "Blagosklonny" "BlobFinder" "Blyth"
    "Boc-D-fmk" "Boehringer" "Bojesen" "Bomar" "Bonavia" "Bonferroni"
    "Bonferroni's" "Bonn" "Bonn–Cologne" "Boston" "Bowen" "Boyden" "Boyer"
    "Bp5310.1" "Braak" "Braconi" "Braconi's" "Branzei" "Brazil" "BrdUrd"
    "Brendel" "Breton" "British" "Bruton" "Bruton's" "Bryce" "Burkitt"
    "Burkitt's" "Butturini" "Byron" "Byun" "Böcker" "C-BCAC" "C-NHEJ"
    "C-allele" "C-depleted" "C-helix" "C-independent" "C-induced" "C-labeled"
    "C-labeling" "C-lobe" "C-lobes" "C-mutant" "C-rich" "C-specific"
    "C-terminally" "C-to-A" "C-type" "C-x-x-D-x-K-x-G" "C-β" "C1" "C10Orf113"
    "C10Orf114" "C10Orf140" "C10orf11" "C10orf114" "C10orf140" "C10orf76"
    "C17orf78" "C1G1" "C2" "C2-symmetric" "C21ORF45" "C21Orf45" "C2E8" "C2G"
    "C2orf52" "C3" "C3-FLAG" "C342A" "C347A" "C5" "C57B" "C6orf218" "C8" "CA1d"
    "CAAAA" "CAAT" "CAAX" "CACGCCTCTTTGTCTTGTTTCGAAA"
    "CACGCTCCGTTTCTCTGTTGTTAAA" "CACGTG" "CADMA" "CAGA12-luciferase"
    "CAGACCATATTAACCAGCTTCAGCA3" "CAGn" "CAP" "CAPES" "CAPPS" "CARD-CARD"
    "CARD10" "CAST-PCR" "CAV-1" "CAV-1is" "CAV-1lung" "CAV1-pos" "CArG-box"
    "CBDCA" "CBDCA-TAX" "CBON" "CC+CT" "CC-115" "CC-chemokine" "CCAAT" "CCDC38"
    "CCHS" "CCND" "CCRaVAT" "CCSP-rtTA" "CD-associated" "CD137-F" "CD137-R"
    "CD52" "CD68-pos" "CD8SP" "CD90" "CDDO-Im" "CDR-SB" "CEPH" "CEPH-Utah"
    "CEU" "CF-KOMΦs" "CFDP1" "CFSs" "CG3" "CGACTTGCTGGAGAAGATGC3" "CGC" "CGEMS"
    "CGF" "CGG" "CGGTC" "CH-11" "CH=C=O" "CHAP" "CHARMM" "CHARMM-27" "CHB+JPT"
    "CHI3L" "CHI3L1-GST" "CHIP" "CI95%" "CIMBA" "CIN612" "CJ" "CK2a" "CL"
    "CLGN" "CLOCK" "CMP-Neu5Ac" "CNM" "CNN1and" "CNPq" "CNV" "CNVE" "CNVEs"
    "CNVs" "COBRE" "COLD-PCR" "CORIS" "COS-1" "CP2139" "CP466722" "CPA-7"
    "CPRM" "CPS" "CPS-A" "CPS-B" "CR+PR" "CR-110-X-AF" "CR110-X-AF"
    "CR110-X-AF-tRNAamber" "CRPCs" "CRTC1M1" "CRTCs" "CRYs" "CRs" "CSGA"
    "CSNK2β" "CSRP2BP" "CT0" "CT12" "CTAGTG" "CTAR1" "CTAR2" "CTC" "CTCAE"
    "CTCH" "CTCH-D" "CTDBD" "CTDBS" "CTG" "CTNNA3" "CTPS" "CUG" "CV1P"
    "CWR22rv1" "CWWG" "CX-4945" "CXCL" "CYH" "CYK" "CYP1B1-AS1" "CaaX"
    "Cabello" "Caenorhabiditis" "Calbiochem" "CalcuSyn" "Caliper" "Callicebus"
    "Callithrix" "Campbell" "Canada" "Canevari" "Cantley" "Carboplatinum"
    "Cardiac‐specific" "Carlo" "Carlsbad" "Carney" "Carney–Stratakis"
    "Carracedo" "Carsbad" "Case-Control" "Case-control" "Cashman" "Casitas"
    "Caspase3" "Cassimeris" "Cassinelli" "Catarrhini" "Cattell" "Caucasians"
    "Cav-1expression" "Cawthon" "Cawthon’s" "Cdc42" "Cdc42-GTP" "Cdc45" "Cdk15"
    "Cdk4" "Cdk7-dependence" "CeShc" "CellTiter-Glo" "CellTracker" "Centore"
    "Cercopithecidae" "Cftr" "Cg-Prkdcscid" "ChIP" "ChIP-PCR" "ChIP-on-chip"
    "ChIP-reChIP" "ChIP-sequences" "Chan" "Chang" "Charafe" "Charron" "Chem"
    "ChemBridge" "ChemSilico" "Chemo" "Chemokine" "Cherry-tTA-ER" "Chi-Square"
    "Chi-square" "Chi-squared" "Chicken" "Chk1" "Chk1-mediated"
    "Chk2-phosphorylating" "Chol" "Chompret" "Chr5"
    "Chromatin-immunoprecipitation" "Ci" "Ciccia" "Cip" "Cl41" "Clara" "Clarke"
    "Clontech" "Clínicas" "Cochran" "Cochran-Armitage" "Codelink"
    "Coffin-Lowry" "Cohen" "Cohn" "Coiled-coil" "Coiled-coils" "ColTKO"
    "Collar-type" "Cologne" "Colomba" "Colorado" "Columbus" "Comedo-DCIS"
    "Companhia" "Conclusions" "Condel" "Convection-enhanced" "Coommasie"
    "Corbould" "Corno" "Corp" "Country-specific" "Courtois" "Cq" "Crabtree"
    "Crizotinib-naïve" "Crohn" "Crohn’s" "Crosetto" "Crosslin" "Crouzon" "Cruz"
    "Cryptochrome" "Cryst" "Ct" "CtIP-mediated" "Ctgf" "Cul1" "Cut-offs"
    "Cys166–Cys166" "Cys241-farnesyl" "Cys51_Ser65dup"
    "Cysteine-Histidine-rich" "Cytoplasmic" "Czech" "CΔ30-G245S" "CΔ30-R175H"
    "CΔ30-R248W" "CΔ30-R273H" "CΔ30-mutp53" "CΔ30-wtp53" "Cα" "Cα-C" "Cδ" "Cθ"
    "C–5G" "D-E" "D-T-G" "D-loop" "D-loops" "D-motif" "D-proline" "D-type"
    "D-x-x-D" "D-x-x-D-G" "D-­motif" "D10S1483" "D11S0268i" "D130V" "D13S319"
    "D169A" "D16v-F2" "D1–2" "D1–D3" "D2" "D3" "D334-G335" "D334–G335" "D34A"
    "D419del" "D49E" "D49N" "D54" "D6" "D7S522" "D8" "DAAM2" "DALK" "DAMP"
    "DAMPs" "DCAI" "DECMA-1" "DECs" "DEF-interaction" "DEGxxS" "DEJL" "DENND1A"
    "DENND1B" "DESI-MSI" "DEVD-fmk" "DFFA-like" "DFS" "DG" "DHO" "DHPLC" "DICE"
    "DIQ" "DKI" "DKI2" "DKI3" "DKI5" "DKI6" "DKO" "DLD1" "DLDL-1" "DLEU7"
    "DLID" "DN-like" "DN6" "DNA-damage-dependent" "DNA-end-binding"
    "DNA-nucleosome" "DNA-protein" "DNAJC1" "DNA " "DNA–protein" "DO-7" "DO1"
    "DOX52" "DQ571874" "DR-GFP" "DR-U2OS" "DRFS" "DRWD" "DSBs" "DSD" "DSFLQRYS"
    "DSGxxS" "DSVK" "DU135" "DU145" "DW" "DYJ" "DZNep" "Dabbs" "Dacic" "Dallas"
    "Damage-tolerant" "Damgaard" "Dangi-Garimella" "Danish" "Danvers" "Daouti"
    "Darby" "Daser" "David" "Davies" "Davis" "Deen" "DelCC" "Delair" "DeltaT"
    "Dep" "Deptor" "Deptor-mediated" "Deqin" "Derewenda" "Deshiere" "Dharmacon"
    "Dichlorobenzimidazole" "Dickson" "Dictyostelium" "Didelot" "Diego" "Diehl"
    "DisEMBL" "Discussion" "Distrophy" "DnMAML1" "Dock180" "Dose-dependently"
    "Dose-response" "Dox" "DraI" "Drapkin" "Du" "Duchenne" "Duffy" "Dulak"
    "Dulbecco" "Dulbecco’s" "Dura" "Dutta" "DxxxLL" "Dylight" "Dyson" "D–4F"
    "D–5F" "E-3" "E-Cadherin" "E-GBM" "E-GBMs" "E-SUM149" "E-and" "E-box"
    "E-cadherin" "E12" "E1B" "E1B-55" "E2+P4" "E2-SUMO–conjugating"
    "E2-treatment" "E2A" "E3-SUMO" "E3-small" "E3-ubiquitin" "E3–PCNA" "E47"
    "E5" "E7-immortalized" "E746-A750" "E746-A750del" "E746_A750" "EBC"
    "EBER-1" "EBER-2" "EBERs" "EBNA" "EBNA1BP2" "EBPßa" "EBVΔLMP-1" "EC1-5"
    "EC2" "EC3–EC5" "EC50" "ECD1-ECD6" "ECD7-ECD11" "ECM-cell" "ECOG" "EDS"
    "EDS-6J" "EDS-6J10" "EDS-6J7" "EDS-6J8" "EDS-7F" "EDS-7F2" "EF-G" "EFGR"
    "EFR3B" "EGF-like" "EGFR-L858R-T790M" "EGFR-P" "EGFR-Ser1046" "EGFR-Thr654"
    "EGFR-mutated" "EGFR2" "EGFRvIII" "EGFs" "EHY" "EI1" "EID2B" "EIP" "EJ-30"
    "EK505" "ELAV" "ELMO" "ELMOs" "ELPh" "EMBOSS" "EMID1" "EMR" "EMRs"
    "EMT-like" "EOCs" "EP-5" "EPIC-Norfolk" "EPS" "EPS-urine" "EPS-urines"
    "EQHY281AAAA" "ER-900" "ER-Golgi" "ER-expressing" "ER-negativity"
    "ER-stress" "ERBB2-negative" "ERBB2-postitive" "ERE" "ERE-reporter" "EREs"
    "ERGIC" "ERK-MAPK" "ERK-mediated" "ERK2_AA" "ERK2_AAG" "ERK2_AAGS"
    "ERK2_AAGS-pepMKK2" "ERK2–pepMNK1" "ERK2–regulator" "ERMS-like" "ERV9"
    "ERVs" "ERα-DBD-LBD" "ERα-VP16" "ER–mitochondrial" "ESCRT-0"
    "ESRRA-C11orf20" "ESTF" "ET-18-OCH" "ETS-factor" "ETS-family" "ETW" "EU"
    "EW" "Edelman" "Edmondson" "Edmunds" "Edwards" "Egger" "Egger's" "Egger’s"
    "Eighty-one" "Eighty-two" "El" "El-Serafi" "Elowe" "Emtpy" "Enduro"
    "English" "English-language" "Enzo" "ErbB" "ErbB2-Induced"
    "ErbB2-Pak-β-catenin" "ErbB2-driven" "ErbB2-expressing" "ErbB2-induced"
    "ErbB2-mediated" "ErbB2-negative" "ErbB2-positive" "ErbB2-relevant"
    "ErbB2-stimulated" "ErbB2-targeted" "ErbB2-transformed" "Ergoline"
    "Erk-independent" "Eser" "Et-Br" "Eukary­otic" "Eurasia" "Europe"
    "European" "European-descent" "Europeans" "Evers" "Exome" "ExxxLL" "Ezh1"
    "E–3" "E–3G" "F-12K" "F-ara-A" "F-ara-A-based" "F12" "F2" "F4"
    "F508del-CFTR" "F508del-MΦs" "FACSAria" "FAIM2" "FAIRE" "FAIRE-seq"
    "FAIREseq" "FAK-null" "FAPESP" "FAS-receptor" "FBR" "FBXL1" "FC-IBC01"
    "FC-IBC02" "FDC-6" "FDC6" "FDC6-positive" "FDF" "FDG-PET" "FERM" "FEV1"
    "FGFR1-4" "FI" "FIH" "FII" "FIII" "FIP" "FISH + " "FKB" "FL-CIP2A-WT"
    "FL1P" "FL6X" "FLAG" "FLAG-D868A-hTERT" "FLAG-HA-double" "FLAG-WT-hTERT"
    "FLAG-β-deletion" "FLAG–GADD45α" "FLAG–HA-tagged" "FLAG–S7" "FLI-dependent"
    "FLT3-ITD" "FLT3-ITD-expressing" "FM55" "FM55-M2" "FOPFlash" "FPKM" "FR1"
    "FR2" "FR3" "FRA16C" "FRA16D" "FS" "FT-4" "FT-7" "FTI-2153" "FTI-276"
    "FTI-277" "FV" "FV10-ASW" "FV1000" "FXF" "FXR1" "FXR1P" "FXR1P-dependant"
    "FXR1P-mRNP" "FXR2" "FXR2P" "Facio" "Facio-Scapulo" "Faculdade" "Faghani"
    "False-positivity" "Family-history" "Farmingdale" "Fas" "Fas-dependent"
    "Fascio" "Fascio-Scapulo" "Fascio-ScapuloHumeral" "Fast-twitch" "Fbw"
    "Fbw7-dependent" "Fc" "Fc-region" "FdL" "Fearon" "Femto" "Feng" "Ferlay"
    "Fernandez" "Fernandez-Rozadilla" "Ferrero" "Ferriman" "Ferriman-Gallwey"
    "Fgf" "Ficoll" "Ficoll–Paque" "Fifty-four" "Figure1A" "Filhol" "Fine-scale"
    "Fine-tuning" "Finnish" "Five-year" "Flachsbart" "Flag" "Flag-Fbw7α"
    "Flag-Lin28a" "Flaus" "Fleming–Harrington" "Flp-In" "Fluc" "Fluidigm"
    "Fluoview" "Follow-up" "Forsteronia" "Forty-eight" "Forty-four"
    "Forty-nine" "Forty-six" "Forty-three" "FoxO" "FoxO3‐Driven"
    "FoxO3‐activated" "FoxO3‐dependent" "FoxO3‐driven" "FoxO3‐elicited"
    "FoxO3‐expressing" "FoxO‐driven" "FoxO‐elicited" "Fragoso" "Frampton"
    "France" "Frantz" "Fraumeni" "Fraumeni-like" "Freire" "Freire-de-Lima"
    "French" "Friedman" "Friedreich" "Friedreich’s" "Fu" "Fuchs" "Fugene"
    "Fujita" "Full-Nutrient" "Fundação" "FxNPxF" "FxNPxY" "Fyn-Ab" "Förster"
    "G-A-C-T-C" "G-A-C-T-T" "G-T" "G-actin" "G-allele" "G-bands" "G-mutant"
    "G-positive" "G-quadruplex" "G-quadruplex-RNA" "G-quadruplexes" "G-rC"
    "G-rich" "G0" "G0–G1" "G1" "G1+G2" "G1-S" "G12A" "G15→A" "G2" "G2+G3"
    "G245Si" "G28→A" "G719X" "GA" "GABRIEL" "GAC" "GACRS" "GADD45α–S7" "GAS"
    "GATCC" "GBD" "GC-GBM" "GC-GBMs" "GCOG" "GCR" "GCRs" "GCS" "GCTCagac" "GDC"
    "GDC-879" "GEMMs" "GFP-15PGDH" "GFP-6D1" "GFP-7F1" "GFP-C" "GFP-M" "GFP-MC"
    "GFP-N" "GFP-NM" "GFP-RhoA" "GFP-T" "GFP-UNC119a" "GFP-ca-Src" "GFP-fusion"
    "GFP-wt-Src" "GFP‐LC3" "GFP–LC3-II" "GFP–S7" "GG" "GG+CG" "GG+GA" "GGCTA"
    "GGC→GaC" "GGC→aGC" "GGNn" "GGT→GtT" "GIANT" "GINI" "GINS"
    "GIST-lineage-related" "GL" "GLN" "GLOBOCAN" "GLW" "GLY27" "GLY48" "GLY95"
    "GLY96" "GOLDN" "GOOS" "GRCh37" "GROMOS96-53A6" "GRP-R-induced"
    "GRP-R-mediated" "GRPR-mediated" "GS" "GSE10347" "GSE21965" "GSE2603"
    "GSE33968" "GSE35065" "GSE43135" "GSE44122" "GSIGβ" "GSK3β-CA" "GSK3β-CA."
    "GSKβ" "GSM438363" "GSSGme" "GST-14-3-3β" "GST-DM-PTP" "GST-ShcPTB"
    "GST-ShcSH2" "GST-Vav1-SH3" "GST-WT-PTP" "GST-WW-Pin1" "GST-fusion"
    "GST-p53CD" "GST-pulldowns" "GSTM6" "GTAAA" "GTC" "GTG" "GTTGCG" "GU"
    "GVGD" "GWA" "GWASs" "GXGXXG" "GYES" "Gain-of-function" "Gal4-DBD-tagged"
    "Gal4-luc" "Gal4BD" "GalNAc" "Gali" "Gallego" "Gallego-Sanchez" "Gallwey"
    "Garai" "Garcia-Bernal" "Garg" "Garimella" "Garnis" "Garritano" "Gelsi"
    "Gelsi-Boyer" "Gemctabine" "GenBank" "GenCall" "Gene-Environment"
    "Gene-environment" "GeneAmp" "GeneChem" "GeneChip" "GeneFrontier" "GeneGo"
    "GeneMANIA" "GeneScan" "Genentech" "Geng" "Genomatix" "Genome"
    "Genome-Electronic" "Genome-Phenome" "Genome-Wide" "Genome-wide"
    "Gerlinger" "German" "Germany" "Gfp" "Gi" "Gibson" "Giemsa" "Gilljam"
    "Girardini" "Giα" "Gleason" "Gln-deprivation" "Gln953Stop" "Gln953stop"
    "GlobPlot" "Glu118-Lys100" "Gly-Cys-OMe" "Gly1057→Asp" "Gly388Arg"
    "Gly972→Arg" "GmbH" "Goh" "Gomori" "Goode" "Google" "Gorska" "Gosh" "Gould"
    "Gram-positive" "GraphPad" "Green–stained" "Grenzach" "Grenzach-Wyhlen"
    "Greulich" "Greulich-Pyle" "GuHCl" "Gualberto" "Guarini" "Gueranger"
    "Guglielmelli" "Guida" "Guinier" "Gunasekharan" "GxxS" "Gy" "Gö6850" "Gαi"
    "Gαi1" "Gαi2-ELMO1" "Gαi3" "Gβγ" "G–4I" "H&E" "H+E" "H-bond" "H-bonding"
    "H-score" "H-scores" "H1" "H1299-EGFR-L858R" "H1299-EGFR-WT"
    "H1299-Tet-On-p53" "H1299-Tet-On-p53-273H" "H129L" "H1650ER" "H1975" "H1N1"
    "H1N1-and" "H2" "H3" "H3K27" "H3K36" "H3K4m3" "H3K9m2" "H3Y41" "H4" "H5N1"
    "H9" "H9N2" "HA-ERα" "HA-tag" "HA-tagged-ΔNp73α" "HA-wild-type" "HAECs"
    "HAPMAP" "HBSS" "HCC-biomarkers" "HCC-marker" "HCI" "HCI-2509" "HCMV-based"
    "HCPS" "HCPS-pathogenesis" "HCT" "HCV-core-induced" "HDACI" "HDACIs"
    "HDCAIs" "HECD-1" "HEHRKL" "HEK293Tcells" "HER1-4" "HER1–4" "HER2oncogene"
    "HERV" "HERV-E" "HExxHxxGxxH" "HF-DH-PH-REM-Cdc25-PR" "HFD-fed" "HFFs"
    "HFK" "HFKs" "HFS" "HG-EOC" "HG-EOCs" "HG18" "HGMD" "HIAP" "HIF" "HIF-α"
    "HIF1-depedent" "HIF1-specifc" "HIF1-α" "HIFα" "HII" "HIS-FLAG-tagged"
    "HIV-1-infection" "HIV-1Nef" "HK" "HLX" "HMLER-shECad" "HMVT" "HNF-3α"
    "HO-1system" "HOX-B" "HOXC" "HOXD" "HPV-related" "HPV38" "HR-DSBR" "HR23"
    "HR=1.12" "HR=1.21" "HR=1.22" "HR=2.61" "HRs" "HR = 1.12" "HSP90-cofactor"
    "HSP90-inhibitory" "HSP90α" "HSRE" "HTLA" "HTLA-230" "HTLV" "HTLV-I" "HTNV"
    "HUTS-4" "Haar" "Haas" "Hackett" "Haematoxylin-eosin" "Han-ying" "Hanahan"
    "Hantaan" "Hantavirus-infection" "HapMap" "HapMap1" "HapMap3" "HaploReg"
    "Haplorhini" "Haplotype-diet" "Haploview" "Harbin" "Hardy-Weinberg"
    "Harrel" "Harrington" "Harris" "Hartgrink" "Hatay" "Hayflick" "Hazra"
    "Heinz" "Helicos" "Henan" "Hendel" "Henle" "Hennige" "Henrick" "Heo" "Her2"
    "Her2+" "Her2-overexpressing" "Her2-overexpressors" "Hercules" "Herishanu"
    "Heschel" "Heschel's" "Heu" "Hewitt" "Hgf" "HhaI" "Hibbert" "Hickey"
    "Hifla" "High-Grade" "High-risk" "Hildebrandt" "Hilden" "HindIII"
    "Hippocrates" "His-Ala-Val" "His-tag" "Hishida" "Hishiki" "Hispanic"
    "Hodgkin" "Hodgkin's" "Hoechst" "Hoege" "Hoeven" "Hoff" "Hofmann"
    "Holliday" "Hombauer" "Hominoids" "Hong" "Hong-mei" "Honjo" "Hoogsteen"
    "Hopkins" "Houle" "Howlett" "HpaII" "Hrs-SNX5_B5" "Hsieh" "Hsp70" "Hu"
    "HuJ" "HuR-regulatory" "Huang" "Human1M-Duo" "Human610" "Human610-Quad"
    "Huntington" "Huntington’s" "Huston" "Hyclone" "I-HC" "I-II" "I-Mutant"
    "I-induced" "I-mediated" "IAA" "IAP-family" "IARC" "IAVs" "IB" "IB-P-Tyr"
    "IB-v5" "IC50" "IC50s" "ICA9" "ICAD-L" "ICAD-S" "ICAM-1expression" "ICI"
    "ICMT1" "IDCs" "IE" "IEA" "IEGs" "IEKO" "IGF-1-deficient"
    "IGF-1-independent" "IGF-1-induced" "IGF-1-mediated" "IGF2BP" "IGHV" "IGR"
    "IGR-Heu" "IHA" "IHC-proven" "III-IV" "IIIB-IV" "IIIC" "IIICS" "IIIa"
    "III–IV" "IIS" "IIa" "IIb-IIIb" "IIb–IIIb" "IIx" "II–IV" "IKBα" "IKEO"
    "IKK2-EE" "IL-15R" "IL-6-JAK-STAT3" "IL-6R-JAK-STAT3" "IL-6Rα"
    "IL-family-induced" "IL2αR" "IL6→AR→TGF-β1→MMP-9" "IL6→AR→TGFβ→MMP9"
    "ILE59" "ILV" "ILVM" "ILVMF" "IMAP" "IMPUTE2" "ING1a" "ING1b" "INS1b"
    "IP3R-III" "IPASS" "IQR" "IRB" "IRE-1α" "ISEL" "ISceI" "ITC" "ITIM" "ITIMS"
    "IV-binding" "IVS" "IVS13+14" "IVS14-19" "IVS8-16" "IVS994-5T" "IXA"
    "Ibrahimi" "Iceland" "Ifi47" "IgA" "IgE-syndrome" "IgI" "IgII" "IgIII"
    "Igamma" "Iino" "Il2rgtm1Wjl" "Illinois" "Illumina" "Ilustra" "ImProm"
    "ImProm-II" "ImageJ" "Imaris" "Imidazole-HCl" "Immobilon-P" "Immunochip"
    "Immunoglobulin" "Immunopreciptated" "In-vitro" "In265" "InStat" "Inc"
    "Indians" "Infinium" "Ingraham" "Ins" "Ins+Del" "Intron5" "Intron9" "Inula"
    "Invitrogen" "Invitrogen's" "Invitrolon" "Iodoacetamide" "Iowa" "Ireland"
    "IrisPlex" "Isaksson" "Isaksson-Mettavainio" "Isoa" "Isob" "Isoc" "Isod"
    "Isoe" "Isof" "JAA" "JAK-STAT3" "JAK2V617F" "JBL" "JDM" "JFY" "JGG" "JHU"
    "JMR" "JMR-C9" "JQ" "JQ1" "JW55" "Jackson" "Jackson-Weiss" "Jaeger"
    "Japanese" "Jarai" "Jass" "Jemal" "Jentsch" "Jenuwein" "Jetlag" "Jewish"
    "Jews" "Jiangsu" "Jiangxi" "Jiri" "Johnson" "Jolla" "Jose" "Judkins"
    "Juhasz" "Jun2-luciferase" "K-R-X-S" "K-X-S" "K-samII" "K167R" "K224E"
    "K244R" "K24N-MDM2" "K24Nc" "K24Nf" "K24Nfis" "K324E" "K328E" "K44" "K46"
    "K48" "K601E" "K63" "K63A" "K71R" "K86A" "K9" "KCW" "KD3A" "KEGG" "KH1–KH4"
    "KI-67" "KIM" "KKAR" "KKGW" "KKGW42-KGA" "KKSK" "KLNENHSGELWKGRW" "KNDy"
    "KOC-7c" "KP372-1" "KY" "Kadonaga" "Kaletra" "Kanellis" "Kannouche"
    "Kaplan" "Kaplan-Meier" "Kaplan–Meier" "Kaposi" "Kaposi's" "Karin" "Karst"
    "Kasahara" "Kcal" "Kelman" "Kendall" "Kepes" "Khandanpour" "Khoden" "Ki-67"
    "Ki67Ag" "Kim" "KinExA" "KinasePhos" "Kip" "Kip1" "Kirsten" "Klinefelter"
    "Knock-down" "Kodak" "Koelink" "Kondrashov" "Kong" "Korea" "Korean"
    "Koreans" "Kos" "Kote" "Kote-Jarai" "Kouzarides" "Kozak" "Kpn" "Kratky"
    "Krejci" "Krissinel" "Kruse" "Kruskal-Wallis" "Kruskal–Wallis" "Krysov"
    "Krüppel" "Ku" "Kubota" "Kulathu" "Kumar" "Kupiec" "Kurman" "Kwon" "Kyoto"
    "L-lactate" "L-type" "L1" "L1-derived" "L2" "L5" "L9" "LC3II" "LC3‐II"
    "LCL" "LCLs" "LCN-HRM" "LDS" "LEU58" "LFDP" "LISA" "LJG" "LLR" "LNCaP-EE"
    "LNCaP-EV" "LNM" "LOC136242" "LOC221718" "LOD" "LPK-W" "LPxY" "LRRLLQE"
    "LS-like" "LSI" "LSR" "LSYYEYDFERGRRGS" "LTE" "LTR10" "LTR10A" "LTR10B"
    "LTR10D" "LTR12D" "LTR2" "LTR87" "LTR8A" "LTR9B" "LTRs" "LV105" "LX" "LXRα"
    "LYF" "Laemmli" "Laimins" "Lajeunie" "Lakin" "Lambert" "Lamellapodia"
    "Lamp2a" "Landen" "Landolph" "Large-Scale" "Laron" "Lasota" "Late-onset"
    "Latronico" "Lats1" "Lauren" "Lavarino" "Lawson" "Le" "Leahy" "Leary"
    "Lees-Miller" "Lef" "Lehmann" "Lengauer" "Lenti-RASSF3-transfected"
    "Leu1007fsinsC" "Leu647→Val" "Lewy" "Lexington" "Li" "Li-Fraumeni"
    "Li-Fraumeni-associated" "Li-Fraumeni-like" "Li-juan" "Lichtenberg" "Life"
    "Limb-bud" "Lincoln" "Lindner" "Lineage-specific" "LipofectAMINE" "Liu"
    "Lo" "Log-rank" "Lonza" "Lopez-Mateo" "Loss-of-function" "Louisville"
    "Low-Risk" "Lowry" "Ludwig" "Luminex" "Luo" "LxxLL" "Lys-373" "Lys-pSer"
    "Lys216-Asp211" "LysMCre" "M-SUM149" "M-domain" "M-domains" "M1–M5"
    "M3-mutated" "M5" "MA27" "MAKP" "MAPK-F" "MAPK-R" "MAPK-independent"
    "MAPKAP" "MAPK–PI3K" "MAR-WIZ" "MARY-X" "MASI" "MATCH" "MB-231cells"
    "MB897" "MBM" "MBag" "MBar" "MCAT_Luc" "MCF-10" "MCF-10CA1a" "MCF-10CA1d"
    "MCF-7-CM" "MCF10A-ErbB2" "MCF10AT3G" "MCK-tTA" "MCK-tTA-hYAP1" "MD41p53"
    "MDA-MB-231-2A" "MDA-MD-231" "MDA-MD231" "MDACC" "MDAH" "MDM2f" "MDM2mt"
    "MDM2wt" "MDM2–S7" "MDS-U" "MDSCs" "ME-PCR" "ME1" "MEK-5" "MEK-DD"
    "MEK-DD–expressing" "MEK-inhibitor-sensitive" "MEME" "MEN1-like" "MENX"
    "MER33" "MER61" "MFI" "MGH" "MHC-I" "MHC-II" "MHC-II-positive"
    "MHC‐Mer‐Cre‐Mer" "MIP-3α" "MIR" "MIR4457" "MIV" "MKP-1in" "MLT1C" "MLT1K"
    "MMEJ" "MMI-270" "MMR-competent" "MMR-deficient" "MMR-proficient"
    "MMR-susceptible" "MMSE" "MMTV-DECMA-1–treated" "MMTV-ErbB2" "MMTV-Erbb2"
    "MMTV-Neu-induced" "MMTV-PyMT" "MMTV-rtTA" "MO1" "MOI" "MRE1" "MRM"
    "MRPS33P4" "MS" "MSI-H" "MSKCC" "MSSBRAF" "MST-SAV" "MSigDB" "MSo" "MTH-68"
    "MTS" "MV-4-11" "MV4" "MYC-Off" "MYC-off" "MYC-on" "MZF" "MacERVK"
    "Machida" "Madin" "Madin–Darby" "Maemondo" "Maggiore" "MagneSphere"
    "Maheswaran" "Majka" "Maki" "Malay" "Malays" "Malaysia" "Mallette"
    "Manatec" "Maniwa" "Mannheim" "Marcos" "Marcos-Villar" "Mardilovich"
    "Marie" "Marini" "Markowitz" "Mary" "Mary-X" "Mary-X-shECad"
    "Mary-X-shEcad" "Masaoka" "MassArray" "Massachusetts" "Masson" "Masson’s"
    "Mastermind-like" "Masuda" "Matakidou" "Mateo" "Matrigel-coat" "Matthews"
    "MaxQuant" "Mayo" "MboII" "McAlpine" "McArdle" "McArdle’s" "McCampbell"
    "McCaughan" "McCaughan's" "McDonald" "McGinnes" "McNiven" "Mcm2-7" "MeDIP"
    "Medicina" "Mediterranean" "Medline" "Meier" "Mek" "Melanocortin" "Menini"
    "MerCreMer" "Merck" "Merkel" "Meta-regression" "MetaMorph" "Metabochip"
    "Methodology" "Methyl-2-cyano-3" "Methyl-CpG" "Mettavainio" "Meyniel"
    "Mfold" "Mgs1" "MiR-32" "MiR-345" "MiTMAB" "MiaPaCa" "Michael"
    "Michailidou" "Michigan" "MicroBeads" "MicroRNA-345" "MicroRNA-495"
    "Microcebus" "Microsuite" "Microvascules" "Migliaccio" "Milan" "Millipore"
    "Millot" "Milyavsky" "Minerais" "Mini-Cell" "Mini-Mental" "Minneapolis"
    "Mirzayans" "Miteva" "MitoProt" "MitoTracker" "Mitomycine" "Mitosciences"
    "Mizutani" "Mock-infected" "Modfit" "Mohlig" "Moldovan" "Molecular"
    "Molina" "Monte" "Monte-Carlo" "Moriishi" "Moroccan" "Mosbech" "Motlagh"
    "Mowiol" "Mst1" "MuRF1‐dependent" "MudPIT" "Muenke" "Muer" "Mulholland"
    "Mulla" "Muller" "Muoio" "Muscle-specific" "Mustela" "MutL-activated"
    "MutLα-activated" "MutS" "MutSα" "MutSα-supplemented" "Mycocd" "Myr-AKT"
    "Myxovirus" "MßCD" "MßCD-cholesterol" "Möröy" "MΦ" "N+T" "N+disease" "N-Cα"
    "N-H" "N-acetyl" "N-acetylgalactosaminyltransferase" "N-and" "N-cBAK"
    "N-cadherin" "N-cadherin-Δ-cyto" "N-domain" "N-glutamine" "N-labeled"
    "N-lobe" "N-methyltransferase" "N-nitroso" "N0" "N19Δ35" "N=11" "N=14"
    "N=17" "N=4" "N=4,705" "N=5" "N=62" "NADH-RT" "NADH-TR" "NADH1" "NBDs"
    "NBT" "NCBI" "NCBI’s" "NCCN-AFIP" "NCI" "NCI-60" "NCI-H295R" "NCR" "NCRs"
    "NDP" "NEDD4-1is" "NF-ΚB" "NF365" "NH" "NH1-LOPI1" "NHBE" "NHDF" "NHFs"
    "NHGRI" "NHLBI" "NICD3" "NKp44-Ig" "NL-AN" "NL-BQ" "NL-CP" "NL-EK" "NL-MB"
    "NL4-3" "NMM" "NMS-P937" "NO" "NOXA" "NOXAa" "NPXpY" "NPxY" "NRVMs"
    "NS2B-NS3" "NSV" "NUgene" "NZB" "Na" "Naegleria" "Naj" "Najy" "Nakabayashi"
    "Nakatake" "Nangang" "Nardini" "Naryzhny" "Nb-LOPI1" "Neduva" "Neil"
    "Nemenoff" "Neoadj" "Neoadj-Chemo" "Neoadj-Chemo-related" "Nested-PCR"
    "NetPhos2" "Netherlands" "NetphosK" "Neu-addicted" "Neu-initiated" "NeuNT"
    "NeuT" "Ng2x" "Ni" "Ni(II)" "Ni-Cd" "Ni-NTA" "Ni-bead" "NiCl"
    "Nicolantonio" "Nihon" "Niimi" "Nikon" "Nimblegen" "Ninety-four"
    "Ninety-six" "Nishikawa" "Niu" "Nodal" "Nomascus" "Noonan" "Norfolk"
    "Notch1-4" "Novartis" "Novex" "Novocastra" "Novus" "Nowell" "Nox"
    "Nox1-derived" "Np63" "Nrf1ACPD" "Nrf1BKO" "Nrf2-ARE" "Nrfl" "Nrfl-V5"
    "NuPAGE" "NuRD" "Nuclear" "Nulin-3a" "O-GlcNAcylation" "O-LOPI1"
    "O-LOPI1O6" "O-LOPI1O9" "O-glycosylation" "O1" "O22" "O28" "O37" "O41"
    "O47" "O6MeG" "O71" "O9" "O93" "OATL" "OBJECTIVE" "OBJECTIVES" "OMIM" "OMM"
    "ONOO" "OPB-31121" "OPB-51602" "OPLS" "OPLS-AA" "OR=1.09" "OR=1.16"
    "OR=1.19" "OR=16.96" "OR=2.2" "OR=2.6" "OR=2.93" "OR=4.1" "ORR" "ORRs"
    "ORs" "OVE26" "Oa" "Oa-LOPI1" "Ob" "Ob-LOPI1" "Oct3" "Oculo-albinism"
    "Ohio" "Ohmori" "Okazaki" "Olfr30" "Olympus" "Omega-3" "Oncology"
    "Oncomine" "Onda10" "Onda11" "Onder" "Onecut" "Orbitrap" "Oren" "Orlandini"
    "Ospedale" "Otsuka" "Ouyang" "Over-activation" "Oxford" "Oxicap" "P5+P6"
    "P6" "P7" "P7+P8" "P=0.001" "P=0.002" "P=0.007" "P=0.009" "P=0.016"
    "P=0.028" "P=0.03" "P=0.034" "P=0.036" "P=0.039" "P=0.046" "P=0.12"
    "P=0.55" "P=1.000" "P=1.8×10" "P=1.9×10" "P=2" "P=5.5×10" "P=8" "P=9.6×10"
    "P=9×10" "PA-P" "PABL" "PAGE" "PALB2-BRCA1" "PALB2-nucleic"
    "PAM50-predicted" "PANTHER" "PARP1in" "PARTEK" "PASM" "PAb1801" "PAb421"
    "PBMac" "PBMs" "PBs" "PC-3-luc" "PC3-AR9" "PC3AR9" "PCK" "PCNA-Alexa"
    "PCNA–Polδ" "PCOS-like" "PCR-RELP" "PCR-RFLP" "PCR–SSCP" "PCSC" "PCSCs"
    "PCY" "PD032291" "PD0322991" "PD220" "PDEδ" "PDGF" "PDGFA-proangiogenic"
    "PDGFR-dependent" "PDIA4" "PDK1-substrate" "PEA-15-high-expressing"
    "PEG-Chol" "PEG-chol" "PEG200" "PEPITO" "PER" "PER-403" "PERs-CRYs" "PEST"
    "PF07" "PFG" "PFGs" "PGN267AAA" "PHDH" "PHLPP1-Akt-Scrib" "PHOSIDA" "PI-4K"
    "PI-4Kα" "PI3-K-α" "PI3-K-β" "PI3-K-δ" "PI3K-activity" "PI3K-pathway"
    "PI3K-specific-inhibitors" "PI3KCA" "PI4-kinase" "PI4KB-V5" "PI4KIIIβ"
    "PI4P" "PIASxα" "PIASxβ" "PIASy-CI" "PIF6" "PILVM" "PINCH-CHIP"
    "PIP-defective" "PIP-like" "PIPKI" "PIPKIγi1" "PIPKIγi2" "PIPKIγi4"
    "PIPKIγi5-SNX5" "PIPKIγi5KD" "PIPKIγi5_2" "PIQOR" "PISA" "PJCV" "PKAR2α"
    "PKC-to-membrane" "PKC-λ" "PKCβI" "PKCβII" "PKCε-CA" "PKCη" "PKCθ" "PKMζ"
    "PLC-β" "PLCg" "PLCδ-PH" "PLCδ-PH-GFP" "PLEKHM" "PLINK" "PMF-Fibrotic"
    "PMF-Prefibrotic" "PMF-fibrotic" "PMF-prefibrotic" "PMF–fibrotic" "PMP"
    "PNAs" "PON-P" "POPGEN" "PP-121" "PP513LL" "PP513–514" "PPARγ-PPRE" "PPI"
    "PPII-helical" "PPII-helices" "PPIs" "PPP1Cα-CLOCK" "PPP1Cβ" "PPRY" "PPxY"
    "PPxY-mutated" "PQY15" "PR-619" "PRAJI" "PRKCD-pmirGLO" "PRO81" "PSMF"
    "PTD" "PTD-PDK1-PH" "PTD-PDK1-Thr-513-Asp" "PTD-PDK1-Thr-513-Ile" "PTEN-3"
    "PTEN-activity" "PTEN-levels" "PTEN-phosphatase-activity" "PTENs" "PTP1E"
    "PTPN14-YAP" "PTQ" "PU24FCI" "PUMAwas" "PUMAwere" "PUMAwould" "PUREfrex"
    "PV-701" "PWWP-mutated" "PXA-A" "PXA-As" "Pak" "Pak1" "Pak3-Tax" "Paks"
    "Palaeolithic-type" "Palle" "Pan-primate" "Panier" "Papanicolaou" "Papio"
    "Papouli" "Paque" "Parker" "Parkinson" "Parkinson's" "Parnas" "Pará"
    "Patel" "Pathol" "Paulo" "Pavan" "Pc-domains" "PeBow" "Pearce" "Pearson"
    "PennCNV" "Penzberg" "PepRSK1" "PepRSK1_SQAA" "Per-allele" "Perez" "Petri"
    "Petsalaki" "Peyer" "Peyer’s" "PfSir2A" "Pfam" "Pfander" "PhD-SNP" "Pharma"
    "Pharmingen" "Pharoah" "Phelan" "Phenome" "Phenoytpe" "Phosphopeptide"
    "PhysioFlow" "Pico" "Pierce" "Pietenpol" "Placebo-controlled" "Platyrrhini"
    "Plosky" "PolyPhen-2" "PolyPhen2" "Polyphen2" "Polζ" "Polη" "Polι" "Polκ"
    "Ponnaiya" "Porto" "Portuguese" "Post-DNA" "Post-Neoadj-Chemo"
    "Post-Translational" "Post-exercise" "Post-hoc" "Post-transcriptional"
    "Post-translationally" "Poulogiannis" "PrCa" "Prainha" "Prelp" "PrestoBlue"
    "Prestwick" "Principal" "Prkdcscid" "Pro-Trp-Trp-Pro" "Pro-survival"
    "Profiler" "Prognosis" "Prom-2" "Prom2-GFP-expressing" "Prom2-fluorescent"
    "Prom2-mKate" "Prom2-mKate-expressing" "Promega" "Propidium" "Prosperi"
    "ProteinCenter" "ProtoAarray" "Provenge" "PtdInsP" "Pts" "Puerto"
    "Puhlmann" "Pull-down" "Pupasuite" "Puyo" "Puyol" "Pvu" "PvuII" "Pyle"
    "P = 0.016" "P = 0.001" "P = 0.008" "P = 0.009" "P = 0.01" "P = 0.016"
    "P = 0.03" "P = 0.07" "P = 0.08" "P = 2" "P = 2×10" "P = 9.6×10"
    "Q-Exactive" "Q-Q" "Q-banding" "Q-rich" "Q61H" "Q72L" "QD" "QDs" "QDs-IHC"
    "QE65AA" "QF" "QFAA" "QGRS" "QIAamp" "QIAmp" "QL" "QMPSF" "QQ" "QQ-plot"
    "QRS" "QT" "QT-PCR" "QTc" "Qi" "Qiagen" "QuantiSNP" "Quanto" "R&D" "R-GBM"
    "R-GBMs" "R-R-X-S" "R-X-S" "R-X-X-S" "R-point" "R1" "R1086X" "R196X" "R2"
    "R208L" "R235E" "R2L2" "R330E" "R419X" "R42" "R5" "R7" "R85A" "RAD51-ssDNA"
    "RAD6" "RAEB" "RASAF3" "RASSF2A" "RASSF5A-Flag" "RASSF5B–GFP" "RASSF5C–GFP"
    "RAVLT" "RBP-IP" "RCB" "RCB-I" "RCB-II" "RCC4T" "RCG" "RCMD-R" "RFC1-like"
    "RFLP" "RG7204" "RHIVRKRT" "RIA" "RII" "RIN5mF" "RIPA" "RKeigrmlnilnRRRR"
    "RLNM" "RMSF" "RMST" "RNA" "RNA-protein" "RNA22" "RNA_down#1" "RNA_down#2"
    "RNAzolB" "RNH201" "RNaseH2-dependent" "ROCK-mediated" "ROI" "ROIs" "RORβ"
    "RORγ" "RPL" "RPMI-1640" "RPYP" "RQ-PCR" "RQ-TRAP" "RRRKPCSRPLS" "RSK1-4"
    "RTqPCR" "RUNX" "Rab11a-Ab" "Rab4-Ab" "Rab7·GTP" "Rab7·GTP-Rab7" "RabGAP"
    "RabGAPs" "Rac-interactive" "Rac-regulated" "Rac1" "Rac1-GDP" "Rac1-GTP"
    "Rac1level" "Rad3" "Rad3-related" "Radiation-induced" "Radioactive" "Raf1a"
    "Rag2M" "Rahman" "Ral-GTP" "RalBP1-defective" "Ramachandran"
    "Ramasubramanyan" "Ranieri" "Rank-product" "Ras-like" "Rausch" "Rb"
    "Rba11b" "Rce1p" "Re-ChIP" "Re-adminstration" "Re-chromatin"
    "Re-expression" "ReChIP" "Reaction-Restriction" "Receptor-1" "Recursos"
    "Ref-1-dependent" "RefSeq" "Refmac5" "Reid" "Reifenstein"
    "Renilla-luciferase" "RepeatMasker" "Response" "Results"
    "Retroviral-mediated" "Reuters" "Rev-Erbβ" "Reverse-transcription" "Rey"
    "Rh-WGA" "Rh-WGA-positive" "Rh17" "Rho-GTP" "Rho-family" "RhoA-FLARE"
    "RhoA-GTP" "RhoA-regulatory" "RhoG" "RhoGDIs" "RhoGTPases" "Rhod-2" "Rican"
    "Rico" "Rictor" "Rnd3" "Rnd3-A240" "Rnd3-AllA" "Rnd3-AllA-S210"
    "Rnd3-AllA-S210+S240" "Rnd3-AllA-S218+S240" "Rnd3-AllA-S240" "Rnd3-pS240"
    "Rnd3ΔC" "Robert" "Robitaille" "Roche" "Rockford" "Rockville" "Rodent-born"
    "Rogers" "Roock" "Rosell" "Rosen" "Rosetta" "Rossmann" "Rowe" "Rozadilla"
    "Ru360" "Rubin" "Russell" "Russia" "Rv1" "Rvs" "Rytomaa" "S-ABC"
    "S-adenosyl" "S-cysteine" "S-methionine" "S-transferases" "S1"
    "S10-histone-H3" "S10A" "S118" "S118-P119" "S15" "S16A" "S16D"
    "S183-specific" "S1981" "S1C" "S1D" "S1E" "S1F" "S1G" "S1H" "S1aRM" "S245"
    "S246" "S2A" "S2B" "S2C" "S3" "S33Y" "S350A–Nrf1-myc" "S350A–Nrfl" "S3C"
    "S3D" "S3E" "S3F" "S3G" "S3H" "S3I" "S3J" "S3K" "S466" "S473D" "S4A" "S4B"
    "S4C" "S52A" "S56A" "S5A" "S5C" "S6" "S6-kinase-mediated" "S644X" "S6A"
    "S6C" "S7" "S7-dependent" "S7-overexpressed" "S7A" "S7B" "S7C" "S7–MDM2"
    "S7–MDM2–GADD45α" "S8" "S9" "SA113" "SABiosciences" "SAHBa–cBAK"
    "SAHBq–cBAK" "SAHB–BAK" "SARMS" "SATURN" "SAV" "SB-885" "SB203580"
    "SB203580–etoposide" "SBHA" "SBI" "SBI-0087702" "SBI-0089410" "SBI-087702"
    "SC-19" "SC514" "SCCS" "SCF-Fbw7" "SCLIP-high-expressing"
    "SCLIP-low-expressing" "SCN10" "SCOOP" "SCS" "SCY" "SD+PD" "SDF-1α"
    "SDS-lysis" "SDS-polyacrylamide" "SEDT2" "SENP" "SENP5-pmirGLO" "SENPs"
    "SETD" "SFA" "SFA-to-carbohydrate" "SFM" "SFRP" "SFRSF11" "SFYW" "SH2C"
    "SH2N" "SHP2-null" "SHP2-proficient" "SHP2activity" "SHP2downregulates"
    "SHP2is" "SHP2localizes" "SHP2modulates" "SIDD" "SIFT" "SIL" "SIM-a"
    "SIM-b" "SIM-r" "SIM3" "SIM–SUMO" "SIPR1" "SIVcpz" "SIVgsn" "SIVmon"
    "SIVmus" "SIVrcm" "SJC" "SJY" "SK-Hep1and" "SK-N-BE2" "SK-N-DZ" "SM"
    "SMAD2C" "SMTN-B" "SNAG" "SNF-mediated" "SNP" "SNP-cancer" "SNP-phenotype"
    "SNP-trait" "SNP15" "SNP179" "SNP18" "SNP28" "SNP500Cancer" "SNPTEST"
    "SNPs" "SNPs3D" "SNU" "SNU-C4" "SNU750" "SNVs" "SNX5_PX3" "SNXs" "SOPHIA"
    "SOS" "SPRY1–4" "SPRY2-KD2" "SPRY2-KD3" "SPRY2-KD3A" "SPRY2-NS" "SPRY2KD3"
    "SPSS" "SS344" "SSBR" "SSCA" "SSCP" "SSEA-4" "SSPE" "SSc" "STACs" "STAT-5α"
    "STAT-5β" "STAT3-IP" "STAT3-defective" "STAT3-dominant-negative"
    "STAT3-mediated" "STAT3C-HA" "STATA" "SUBE" "SUBE-1" "SUBE-l" "SUBE-long"
    "SUBE-s" "SUBE-short" "SUBEs" "SUM-225" "SUM149-LUC-L3" "SUM149-LUC-L39"
    "SUM149-LUC-L42" "SUM149-LUC39" "SUM149-ZEB1-c16" "SUM149-ZEB1-c30"
    "SUM149-ZEB1-c38" "SUM149-shECad-65-1" "SUM149-shECad-65-2"
    "SUM149-shECad-66-1" "SUM149-shECad-66-2" "SUM149-shHIF1α" "SUMO-E2"
    "SUMO-chain" "SUMO-interaction" "SUMO-like" "SUMO-traps" "SUMOsp"
    "SUMOylation" "SUSPs" "SV5" "SXS" "SYBR" "SYL414AAA" "SYS511AAA" "SaaX"
    "Sabbioneda" "Sahra" "Saimiri" "Sakano" "SalI" "Samuels" "Sanchez" "Sanger"
    "Santagata" "Sarver" "Sase" "Sato" "Sau3A" "Saudi" "Scale-cognitive"
    "Scapulo" "Sce" "Schey" "Schizosaccharomyces" "Schluter" "Schoumacher"
    "Schrodinger" "Schuierer" "SciFinder" "Scion" "Scorpion-ARMS"
    "Scorpions-ARMS" "Scratch-wound" "Seckel" "Sekiguchi" "Self-renewal"
    "Selivanova" "Semi-quantitative" "Sengupta" "Sentara" "Sequenom"
    "Ser-10–independent" "Ser-63" "Ser-79" "Ser-Akt" "Ser-Pro" "Ser104"
    "Ser116" "Ser16" "Ser16A" "Ser194-Pro195" "Ser235" "Ser240" "Ser245"
    "Ser253" "Ser807" "Serafi" "Serban" "Serra" "Servomaa" "Shan" "Sharma"
    "Shaw" "Shc–PP2" "Shelford" "Shen" "Shieh" "Shiga" "Shih" "Shimamura"
    "Shimizu" "Shirasawa" "Short-term" "Shβ1" "Siah" "Siah2RM" "Siah2WT"
    "Sigma-Aldrich" "Signal" "Significance" "Sirius" "Sirius-red" "Sirt"
    "Sirt1-1-664" "Sirt1-1-664 " "Sirt1-214-664" "Sirt1-214-747" "Sirt6-KO"
    "Sirt6-null" "Sirtuins" "Situs" "Sixma" "Sixty-nine" "Sixty-one"
    "Sixty-three" "Skibbens" "Skp1" "Skp1–Cul1–F-box" "Skrzypczak" "Sloan"
    "Slow-twitch" "SmGM-2" "Smac-like" "Smad" "Smad1" "Smad2" "Smad2C" "Smad2L"
    "Smad3a" "Smad3b" "Smad4" "Smads" "Small-molecule" "Smartpools"
    "Smogorzewska" "Smt3p" "Snail-1" "Snm1" "Souza" "Sowd" "Sp1-mediated"
    "Spain" "Spanish" "Spearman" "Spearman's" "Speliotes" "SprT-like" "Spry"
    "Sprys" "Spurdle" "Src-family" "Srivatsa" "Srs2-like" "Stamatopoulos"
    "Stassi" "Stat3C-Flag" "Steady-state" "Stelter" "Step-wise" "Stephens"
    "Stepwise-regression" "Sterol-regulatory" "Stratagene" "Stratakis"
    "Stratton" "Strep-Tactin" "StrepII" "Strepsirrhini" "Stressgen"
    "Structure-class" "Structure-function" "Sun-protected" "Superscript"
    "Surelock" "Surg" "Surveyor-WAVE" "Sweden" "SzJ" "Szabolcs" "São"
    "S–P–E–V–E" "T+P" "T-172P" "T-X-X-D" "T-allele" "T-cell" "T-complex"
    "T-helper" "T1" "T183" "T1N0M0" "T1–T5" "T2" "T24-shAIB1" "T29Ht1" "T29Kt1"
    "T29Ktl" "T2D" "T2N0M0" "T3" "T308D" "T3N2M0" "T3N2M1" "T4" "T69" "TAA"
    "TALC" "TAM67" "TAN3" "TAT-WW-Pin1" "TAT-constitutively" "TAT-hSpry2"
    "TATA" "TAp53" "TBC" "TBC1D22A-ACBD3-containing" "TBC1D22A-V5" "TBC1D2A"
    "TBC1D2B" "TBC1D5" "TBST" "TC-797" "TCCATCTCTTCTTGGTCAAGG3"
    "TCGTGGTACCGTGACGTCAGTGACGT" "TCR-CD28-mediated" "TCT" "TDLU-like" "TDLUs"
    "TDLÚs" "TE617" "TEA" "TEER" "TEF" "TEFb" "TENOR" "TFII"
    "TGCCAAGCTTACTTAGATCGCTGACGTCACTGACGTCACTGACGTCACTGACGTCACTGA"
    "TGCTTGTTCCTCAGCCTCTT3" "TGF-ß1" "TGFß1" "TGFß1compared"
    "TGFß1proliferative" "TGFßRI" "TGFßRII" "TGFßand" "TGFßeither" "TGFßhas"
    "TGFßthrough" "TGGGGA" "TGTTTTA" "TGTTTTC" "TIAN" "TIC" "TKB" "TKD" "TLDA"
    "TLN-4601" "TM1–TM4" "TM4SF" "TMA-IHC" "TMA201" "TMAO" "TMEMFF" "TMH"
    "TMH-BCM" "TMN" "TMRM" "TNBCs" "TNF-receptor" "TNF-α-F" "TNF-α-R" "TNSY"
    "TOM" "TOP-like" "TOPFlash" "TPA" "TRAMPmice" "TRAMPtissues" "TRANSFAC"
    "TRI-zol" "TRIM34-1" "TRIM34-2" "TRIM34s" "TRIM5-1" "TRIM5s" "TROSY"
    "TSPN13" "TT+CT" "TT-3" "TTPp" "TTPp-1343" "TTPp-211" "TTPp-41" "TTT"
    "TTTA" "TUBE-HR23" "TUNEL‐positive" "TV" "TWW" "Ta" "Tactin" "Taiwan"
    "Takano" "Takaoka" "Takeuchi" "Tamura" "Taq" "TaqMan" "TargetScan"
    "Tat-induced" "Tat-mediated" "Tat-stimulated" "Tat-treated" "Tau-Tg"
    "Tau-immunoreactive" "Tax" "Tax-DNA" "Tax-Pak1" "Tax-activated"
    "Tax-binding" "Tax-depleted" "Tax-expressing" "Tax-induced" "Tax-mediated"
    "Tax-responsive" "Taz" "Tcf" "Tead" "Tead-co-factor" "Tead1-4" "Teads"
    "Tefferi" "Tefft" "Tekkök" "Tel-Test" "Temecula" "Tet-Off"
    "Tet-regulatable" "TetO-NeuNT" "Texas" "Tgf-β" "Th-68" "Thep53" "Thermo"
    "Thirty-five" "Thirty-four" "Thirty-nine" "Thirty-one" "Thirty-seven"
    "Thomson" "Thr-172" "Thr-513-Asp" "Thr-513-Ile" "Thr-Akt" "Thr-Cys-prenyl"
    "Thr-X-Tyr" "Thr-dependent" "Thr15" "Thr202" "Thr252" "Thr58_Met72dup"
    "Thr821" "Three-dimensional" "Thsb1" "Thursberg" "Thy-1Over-expression"
    "Time-course" "Tischkowitz" "Tissue-recombination" "Todorovic-Rakovic"
    "Toker" "Toll-like" "Tomilov" "Tomlinson" "Tomsk" "Tondu" "Tonon"
    "Top1-DNA" "Top1-breaks" "Torrance" "Total" "Tox" "TrCP1ΔFbox" "Tra2β"
    "Tranche" "Trans-am" "Transwells" "Travis" "Trento" "Trincao"
    "Triple-Negative" "Triple-negative" "Tris-Cl" "Tris-EDTA" "Tris-Glycine"
    "Tris-HCl" "Tris-glycine" "Tris–HCl" "Tris–glycerol" "Tris–tricine"
    "Triton-X–treated" "Trovato" "TrxG" "Tsang" "Tsuiji" "TtzmR" "Tukey"
    "Tunisia" "Turcot" "Turin" "Turk" "Turke" "Tween" "Tween-20" "Twenty-eight"
    "Twenty-five" "Twenty-four" "Twenty-one" "Twenty-seven" "Twenty-three"
    "Twenty-two" "Twist" "Twist-like" "Twist-normal" "Two-step" "TxN0M0"
    "TxN0M1" "TxN0M1and" "TxN0Mliver" "TxN1-2M0" "TxN1-2M1" "TxN1-2Mliver"
    "TxNxM0" "TxNxM1" "TxNxMo" "Type-1" "Tyr-655" "Tyr-containing" "Tyr14"
    "Tyr204" "TΔΔS" "U-mutant" "U-rich" "U-shaped" "U-tetrad" "U0124" "U1242"
    "U133" "U20S" "U251" "U251Ng2x" "U73122" "U87" "UACC903" "UBMs"
    "UBZ–ubiquitin" "UCCC" "UCLA" "UCSC" "UDP-GalNAc" "UDP-ManNAc" "UHPLC"
    "UHPLC-MS" "UKBS" "ULTRs" "UM-UC3" "UNC-Ab" "UOK121" "UOK143" "UPR-PERK"
    "UPS‐dependent" "UPS‐mediated" "URL" "URLs" "USA" "UTR-α" "UTR-β" "UTR-γ"
    "UTRs" "UV-HCMV" "UV-exposure" "UV-irradiated" "UV-irradiation"
    "UV-treatment" "Uba2" "Ubiquitin‐Proteasome" "Ueda" "Ulrich" "UltraPure"
    "Ungewitter" "UniHI" "Unigene" "Uniprot" "Unna" "Up-to-date" "Urology"
    "Useq" "Utah" "UvrD" "V-shaped" "V0" "V1" "V2" "V3" "V4" "V4UPM" "V4UPM-HN"
    "V5" "V5-tagged" "V600DK601del" "V600E" "V600E-mutated" "V600E2"
    "V600EK601del" "V600K" "V8V" "VAT1L" "VBM" "VDPVNKVLKGEIPWSQ" "VE-465"
    "VE1" "VE5" "VE5-induced" "VEGAS" "VEGR2" "VGER" "VL" "VL1-VL2" "VL100"
    "VL101AA" "VL2" "VL67" "VMD" "VMSC" "VNTR" "VPack-GP" "VPack-VSV-G" "VPxY"
    "VQF255AAA" "VSV-G" "VT1" "VTHPGY" "VVME93" "VX" "VX-11e" "Valencia"
    "Valenti" "Valeria" "Vallat" "Value" "Vanderbilt" "Vanderbilt-Ingram"
    "Vater" "Vaziri" "Vekilov" "Velichutina" "Venkataramana" "Venn" "Ventana"
    "Venus" "Verdaasdonk" "Vgll1-4" "Vietnamese" "Vijeh" "Villin-Cre"
    "Virginia" "Vitale" "Vito" "Vogelstein" "Vogt" "Voxel" "Vu" "Vysis" "W2E9"
    "W6" "WASP" "WASP-family" "WAY-166916" "WAY-169916" "WB" "WEAGE" "WEFHN"
    "WF" "WHD-HD2" "WI" "WKT" "WM131A" "WST-1" "WT-PTEN" "WT-SHP2" "WT-hTERT"
    "WTCCC2" "WTSIby" "WW2" "WW820" "WXXXS" "WYW" "WZ" "Waals" "Waf1"
    "Waist-Hip" "Walden" "Walerych" "Wallerand" "Wallis" "Walter" "Waltham"
    "Wansink" "Warbrick" "Warburg" "Washington" "Watson" "Watson-Crick"
    "Watson–Crick-type" "WebLogo" "Weinberg" "Weiss" "Well-differentiated"
    "Wellcome" "Werner" "West-East" "Weston" "Wey" "Whitney" "Whole-brain"
    "Whole-exome" "Whole-genome" "Wilcoxon" "Wilkie" "Williams" "Wiman"
    "Wnt–receptor" "Wolfle" "Wong" "Woodruff" "Wort" "Wright-Giemsa" "Wu"
    "Wyhlen" "X-Pro" "X-Ray" "X-Related" "X-ray" "X-tile" "X-weighted" "X4"
    "XC" "XCell" "XF" "XL" "XPA-UVDE" "XTerra" "Xba" "XbaI" "XmnI" "Xq"
    "Xq11-q12" "Xq26" "Xq26.3" "Xq27.3" "Xtsprouty" "Y1234" "Y1234–1235"
    "Y14-pCav1" "Y14-phosphorylated-Cav1" "Y185" "Y1853X" "Y207" "Y211" "Y2H"
    "Y484–488" "YG22" "YG8" "YG8R" "YIDL" "YKERPQDVDQREAPL" "YLAGL" "YMXM"
    "YPC" "YRI" "YTMA201" "YVNI" "YW" "Yaffe" "Yale" "Yamada" "Yamazaki" "Yang"
    "Yeast-Two-Hybrid" "Yes-Ab" "Yes-associated" "Ying-zhi" "Yokota" "Yorkie"
    "Yoshimoto" "Yu" "Yusufzai" "Yxxϕ" "Z-DNA" "Z-VAD" "Z-scores"
    "ZAP70-containing" "ZB4" "ZD" "ZFIN" "ZL" "ZO" "ZSK" "ZWM" "ZX" "ZYB"
    "Zanger" "Zauli" "Zellweger" "Zha" "Zhang" "Zhao" "Zhou" "Zhuang" "Zn"
    "Zn-finger" "Zona" "ZsGreen1" "Zyagen" "a-14" "a-c" "a-strand" "aBRAF"
    "aCGH" "aCSF" "aPten" "ab8245" "abberant" "aberrances" "aberrancies"
    "above-noted" "absorbance" "acetyl-K148" "acetyl-K157" "acetyl-lysine"
    "acetylcholine" "acetyllysine" "acid-binding" "acid-extracted"
    "acid-related" "acinar-ductal" "activatedBraf" "activation-competent"
    "activators" "activator–effector" "active-site" "acurate" "acyl"
    "acyltansferases" "adamantyl" "addipose" "adduct" "adducts"
    "adenine-thymine" "adenocarcinomas" "adenohypophyses" "adenoid"
    "adenoma-carcinoma" "adenomas" "adenoma→cancer" "adenosyl"
    "adenoviral-mediated" "adenylate" "adherens" "adipose-derived" "adjHR"
    "adnexectomy" "adrenalectomy" "adriablastin" "advanced-stage" "aeruginosa"
    "agar" "age-associated" "age-dependent" "age-frequency" "age-specific"
    "aggregated-like" "aggresome-like" "aging-like" "aglycone"
    "agonist-receptor" "albinism" "aldosteronism" "algorithm" "algorithms"
    "all-or-nothing" "allel" "allograft" "allografts" "allostery"
    "alone-treated" "alpha-helix" "althoughnone" "alveoli" "amino-acid"
    "amino-terminal" "amino-terminus" "aminoacid" "aminoacids"
    "aminomethylcoumarin" "aminomethylcoumarin-peptide" "aminooxyacetate"
    "amplicon" "amplicons" "amplifications" "ampulla" "anIkkα" "andCORM2"
    "andEGFR" "andPak1" "andPten" "andSiah2" "andTgfbr2" "andp14"
    "androgen-dependence" "androgen-deprivation" "aneuploidy" "aneurysm"
    "aneurysms" "angioplasty-induced" "angiopoietin-like" "annum" "anorexia"
    "ansamycin-analogue" "antagomir" "antagomirs" "anticodon" "antigen"
    "antigens" "antigrowth" "antiparallel" "antitubulin" "antitumour" "anubis"
    "anα-NKX6.1" "apical-basal" "apical-basolateral" "apocrine" "apoptotis"
    "appendictomy" "apt-probe" "aptamer" "aptamers" "araf-MO1" "araf-MOs"
    "araf-MOs-induced" "arcuate" "arisen" "around10%" "arrhythmia"
    "arsenite-stress" "as-yet-undiscovered" "as-yet-unknown" "ases"
    "association-defective" "astrocyte-like" "athanogen" "ation" "atoms"
    "atrogenes" "atypia" "aureus" "autocleavage" "autocrine-derived"
    "automated-sequential" "autophagosomes" "autophagy‐driven"
    "autophagy‐lysosomal" "autophagy–lysosome" "autoradiography"
    "autosomal-dominant" "axon" "a–c" "a–d" "bEGF" "bHLHZip" "backflow"
    "backup-NHEJ" "bafilomycin" "balloon-induced" "balloon-injury" "basal-like"
    "basaloid" "base-excision" "base-pair" "bearingPten" "begun" "benignancy"
    "benzamidine" "benzo" "benzyl" "beta-chain-associated" "between-country"
    "between-study" "bi" "bilayer" "biliverdin" "binding-motif" "bio-marker"
    "biofluids" "biolayer" "biomass" "biomolecules" "biotin" "bisphosphate"
    "bits" "blastulas" "blockade-induced" "blocker" "blockers" "blood-brain"
    "blood-brain-barrier" "blood-derived" "blood-tumor-barrier" "blown"
    "blue-violet" "bodies" "bodybuilders" "bona" "bona-fide" "bonafide"
    "bone-marrow" "boney" "bonobo" "bothEGFR" "bp" "bpV" "break-dependent"
    "breakpoints" "broad-specificity" "broad-spectrum" "broader"
    "bromodomain-acetyl-histone" "broncho" "broncho-alveolar" "brown-yellow"
    "browser" "bulimia" "by-product" "by-products" "byp14" "by≈20%" "c-Flip"
    "c-Jun63A" "c-JunΔ3-122" "c-JunΔLZ" "c-Myc-mediated" "c-flip"
    "c-myeloblastosis" "c17orf69" "c5–1291331" "cPKC" "cPKCs" "ca-Src" "caFoxO"
    "caFoxO3" "caFoxO3‐expressing" "caSTAT" "caSTAT-5" "cadherin-engagement"
    "calboxyl" "calboxyl-terminal" "calcein-AM" "calf-intestinal" "call-rate"
    "calorimetry" "calponin-h1" "cancer-relevant" "candidate-gene" "canis"
    "cannula" "capase-3" "capase-9" "capillary-derived" "capillary-like"
    "capsid" "carbocyanide" "carbonyl" "carboxyl" "carboxyl-terminal"
    "carboxymethoxyphenyl" "carcinima" "carcinomas" "cardia" "cardio"
    "cardio-pulmonary" "cardiography" "cardiomyocyte‐specific"
    "cardiomyopathies" "cardiopathies" "cardiovirus" "cargos" "carotid"
    "carryingPten" "case-control" "case-fatality" "case-only" "case–control"
    "casmad2" "caspease-3" "catalases" "catalytically-defective"
    "catalytically-independent" "catenates" "cav-1mRNA" "cav-l" "cavtratin"
    "cecum" "celiac" "cell-autonomous" "cell-autonomously" "cell-body"
    "cell-intrinsic" "cell-like" "cell-permeable" "cell-to-cell"
    "cell-type-specific" "celll" "cells" "cellulo" "centiles"
    "centrally-located" "centromer" "centromere" "cerebella" "cerebellum"
    "cerevisiae" "cg06550200" "cg23827991" "chamber-type" "channel-specific"
    "chd" "cheaper" "checkpoints" "chelates" "chemically-denatured"
    "chemically-induced" "chemiluminesce" "chemo" "chemo-sensitivity"
    "chemoattractant" "chemokines–a" "chemoradiotherapy" "chemoresistance"
    "chemoresistant" "chemoresponsiveness" "chemotherapeutic-induced" "chi-2"
    "chi-squared" "chip-on-chip" "cholesterol-rich" "chomodomain" "choroid"
    "chosen" "chr14" "chr15" "chr16" "chr16_hap6721" "chr16_hap6830" "chr17"
    "chr1p" "chr21" "chr22" "chr6" "chromatid" "chromatids"
    "chromatin-immune-precipitation" "chromatin-remodeling"
    "chromosomal-length" "ciliate" "ciliates" "cingulate" "circuit-like"
    "circuit-type" "circuitry" "cis-element" "cis-elements" "cis-regulatory"
    "cisplatin-pemetrexed" "cistron" "clamp-like" "clamp-loader" "classifier"
    "classifiers" "clear-cell" "clear-cut" "clearer" "cleavage-pattern"
    "cleaveage" "clefts" "clinic-pathologic" "clinically-distinct"
    "clinically-utilized" "clinicians" "clinico" "clinico-pathological"
    "clinicopathology" "clogP" "closely-packed" "closely-related" "close–up"
    "cocrystals" "codon" "codon-anticodon" "codons" "cohesiveness" "coil-like"
    "coiled-coil" "coiled-coils" "coinvestigators" "coli" "coligands"
    "collagen-PAA" "collagens" "colloid" "colobus" "colocalise" "colonoscopy"
    "colonscopy" "colony-forming" "comedo" "comedo-DCIS" "comedo-and"
    "comedo-ductal" "commonest" "comparably-sized" "composant"
    "compound-signaling" "concatemers" "conductance" "conformer" "conformers"
    "confounder" "congenita" "constitutively-active" "contraction-mediated"
    "contri" "contri­bution" "controlled-density" "controlled-stiffness"
    "convection-enhanced" "coomassie" "coopt" "copy-number"
    "core-associatedp21" "core-expressing" "core-induced" "core-modulated"
    "core-overexpressing" "core-pressor" "coronary-artery" "cortisol-treatment"
    "cosolute" "cost-effective" "cost-efficiency" "cotransfectants"
    "counter-regulatory" "covariates" "coworkers" "cox-regression" "coxsackie"
    "cribiform" "cross-analysis" "cross-bridging" "cross-checked"
    "cross-contamination" "cross-over" "cross-overs" "cross-peaks"
    "cross-reactivity" "cross-regulation" "cross-resistance" "cross-sectional"
    "cross-species" "crossingSiah2" "crossovers" "cross‐sectional" "cruciforms"
    "cryo" "cryo-microscopy" "crystal-engineering" "crystal-packing" "cut-off"
    "cut-offs" "cut-points" "cutpoint" "cutpoints" "cyan" "cycle-cycle"
    "cyclin-dependant" "cyclin-specificity" "cyclohexamide" "cysmethynil"
    "cysteine-to-serine" "cyto" "cytoarchitecture" "cytochromes"
    "cytologically-uniform" "cytology" "cytometer" "cytopathologists"
    "cytospin" "cytotoxicity-based" "cytotoxicity-induced" "d-e" "d-f"
    "d-strand" "dChip" "dFOXO" "dI-dC" "dL" "dN" "dNMPs" "dS"
    "damage-independent" "damage-induced" "damage-mediated" "damage-targeting"
    "damage-tolerant" "damage–induced" "dataset" "datasets" "day-to-day" "days"
    "daytime-dependence" "dbSNP" "dbSNP135" "de-regulate" "de-repress"
    "de-repressed" "de-repression" "deadliness" "death-receptor-mediated"
    "death-to-incidence" "deciduas" "decreasedIL" "decreasedIL-6" "deeper"
    "defatty" "defatty-acylation" "degradation-competence" "degradome" "degron"
    "degrons" "del557-558" "del564-581" "delWK557-558" "deleteriousness"
    "deletions" "demostrate" "denaturant" "denaturants" "deno"
    "deoxynucleoside" "deoxynucleotide" "deoxynucleotidyl" "deoxyuridine"
    "deprivation-induced" "der" "derivates" "dermcidin" "dermine"
    "designatedPten" "designatedTgfbr2" "desmoplasia"
    "developmentally-regulated" "di-nucleotide" "di-octanoyl"
    "diabetes-induced" "diabetes-linked" "dichlorofluorescein" "dichroism"
    "dideoxy" "dideoxycytidine" "diet-induced" "diff" "differentBRAF"
    "difficult-to-treat" "diffuse-type" "diff " "digitorum" "dihydroorotate"
    "dihydropteridinone" "dileucine" "dimethyl-malate" "dimethylamino"
    "dimethylbenz" "dimethylformamide" "dimethyloxaloylglycine" "dioxol-5-yl"
    "diphosphate" "diploid" "direct-EPS" "directly-genotyped" "discoideum"
    "disconcordant" "discrepant" "discriminant" "disease-causal" "disease-rare"
    "disomy" "distant-stage" "disulphate" "dltA" "docking-motif"
    "docking-peptide" "doi" "domain-PPxY" "domestica" "dominant-negative"
    "dominant-positive" "dorso" "dorso-lateral" "dose-depend" "dose-dependence"
    "dose-dependently" "dose-limiting" "dose-response" "dose–response"
    "double-hit" "double-knockout" "double-label" "double-membrane"
    "double-strand" "double‐membrane" "doublings" "down-modulates"
    "down-modulation" "down-regulatesp21" "down-regulators" "down-stream"
    "downstream-cistron" "doxorubicin-treatment" "doxycyline" "drawn"
    "drivingMYC" "droplets" "drug-treatment" "druglike" "dual-repeat"
    "dual-repeat-interaction" "ductal-lobular" "duloxetine" "dural"
    "dxycycline" "dyslipidemia" "dysplasia" "dysplasias" "dyspnoea"
    "eGFP-ca-Src" "eMyHC" "eQTL" "eRASSF5" "early-age" "early-onset"
    "early-passage" "early-stage" "early-to-advanced" "echocardiography"
    "ectoderm" "ectodomain" "ectodomains" "ectopically-expressed" "ed" "edema"
    "effecter" "eightfold" "electron-dense" "electrophysiology"
    "electroporation-mediated" "electrospray" "elices" "elongation-defective"
    "emboli" "enabler" "encephalomyocarditis" "end-binding" "end-organs"
    "end-product" "end-products" "end-replication" "end-resection" "end-stage"
    "end-to-end" "endmetrioid" "endo-α-N-acetylgalactosaminidose" "endocardium"
    "endocrinology" "endocytosis-independent" "endoderm" "endogenousY211"
    "endogenousp21" "endometriod" "endometrioid" "endometrium"
    "endothelial-cell" "endothelial-induced" "endothelial-leukocyte"
    "endothelial-specific" "endothelium-intact" "endpoint" "endpoints"
    "energy-dependent" "enhance-binding" "enhancer-binding-protein-alpha"
    "enhancesCAV-1" "enrollees" "enthalpy" "entropy" "enviroxime"
    "enzymatic-defective" "enzyme-activity" "enzyme-function"
    "enzyme-substrate" "enzymology" "eosin" "eosinophilia" "eosinophils"
    "epibatidine" "epigenome" "epimerases" "episomes" "epithelia"
    "epithelial-like" "epithelial-mesenchymal" "epithelial-to-mesenchymal"
    "epithelial-type" "epithelial–mesenchymal" "epithelioid" "epithelium"
    "ergometer" "estrogen-related" "et" "ethanamine" "ethynylphenyl"
    "event-related" "ever-smoking" "ex" "ex-periment" "exercise-induced"
    "exocrine" "exoglycosidases" "exomes" "exomethylene" "exon-intron" "exon5"
    "exon9–10" "exons" "exorbitism" "exosome" "expressions" "expressors"
    "extended-stage" "extra-cerebellar" "extra-cranial" "extra-synaptic"
    "extra-telomeric" "extracellular-domain–specific" "extrauterine"
    "extreme-trait" "facies" "facto" "factor-1" "factor-2" "fallen"
    "familiaris" "far-UV" "farnesyl" "fascicle" "fasciculata" "fast-migrating"
    "fast-to-slow" "fast-twitch" "fat-soluble" "fatpads" "feedback-loops"
    "feedback-regulation" "fendiline" "fibloblasts" "fibre-specific"
    "fibroblast-like" "fibrolasts" "fide" "field-of-view" "fifteen-year-old"
    "fifty-five" "fifty-seven" "fifty-three" "filopodia-like" "filter-binding"
    "fine-mapped" "fine-scale" "fine-tune" "fine-tuning" "finger-like"
    "first-degree" "first-line" "five-year" "fixed-content" "flavonoid"
    "flavonoids" "flavonol-kinase" "flexibly-docked" "flexure" "flh"
    "fluid-derived" "fluorescent-labeled" "fluoro-2-deoxy-D-glucose"
    "fluorophore" "fluorophores" "follicle" "follicles" "follow-up"
    "followed-up" "followup" "fontanelle" "for-GDP" "forBRAF" "force-expressed"
    "force-expressing" "force-generation" "force-induced" "force-producing"
    "forceps" "foresaw" "fork-associated" "four-patient" "four-stage"
    "four-way" "frame-shift" "frameshift" "frameshifts" "fromF"
    "fromF508del-CFTR" "fromPten" "fromSiah2" "fromcells" "fromxenografts"
    "front-line" "frozen" "fructose-6-phosphate" "fspKO" "full-nutrient"
    "fully-denatured" "fully-folded" "function-1" "fundus" "furfuryl"
    "fusiform" "fusion–negative" "gB" "gDNA" "ga89" "gain-of"
    "gain-of-function" "gain-of-function-like" "gammaherpesvirus" "ganglion-10"
    "gastro" "gastro-duodenal" "gastrocnemius" "gastroscopy" "gatekeeper"
    "gatekeepers" "gc" "gel-retardation" "gel-shift" "gelshift"
    "gemcitabine+MK-8776" "gender-specific" "gene-dense" "gene-diet"
    "gene-dose" "gene-environment" "gene-fusion" "gene-gene" "gene-mutated"
    "gene-regulatory" "genes" "geneset" "genesets" "gene‐specific" "genic"
    "genome-scale" "genome-wide" "genome-wide-significant" "genomes" "genotype"
    "genotype-age" "genotype-imputation" "genotype-phenotype" "genotypedsample"
    "genotypes" "genotype–phenotype" "geranyl" "geranylgeranyl" "germline"
    "gland-derived" "glomeruli" "glomerulonephritis" "glomerulosa" "glomerulus"
    "glucan" "glucosamine-6-phosphate" "glucosaminyl" "glucose-phosphate"
    "glutamylcystein" "glutathione-s-transferase" "glycaemia" "glycans"
    "glyceraldehydes" "glyceraldehydes-3-phosphate" "glycerophosphate"
    "glycine-to-serine" "glycine-to-valine" "glycoconjugate" "glycosaminglycan"
    "glycosyltranferases" "goes" "gone" "goosecoid" "gp120-DC-SIGN" "gracilis"
    "gram-negative" "gram-positive" "granule-mediated" "granule-pathway"
    "greater" "greatest" "growth-regulatory" "growth-suppressive" "growth-type"
    "guanyl" "guanylate" "guenons" "guereza" "hAQP8" "hAoSMC" "hELG1" "hERα"
    "hERα–AcGFP" "hHER" "hHER2-ECD" "hMLH3" "hMSH" "hMSH6-H3K36me3"
    "hMSH6-competent" "hMutL" "hMutSβ" "hPBMC" "hPBMCs" "hShc" "hTERC"
    "hTERT-D868A" "hTERTwt" "hTR" "hYAP1" "hadtop" "haeme" "hairpin-RNA"
    "half-life" "half-lives" "half-repeats" "half-site" "half-sites"
    "hantavirus-infection" "hantavirus-β" "haplo" "haplo-insufficient"
    "haplotype" "haplotypes" "haptotaxis" "harpin" "head-and-neck"
    "head-linked" "head-to-head" "head-to-tail" "head-to-tail-linked"
    "headgroup" "heat-inactivated" "heat-shock" "heatmap" "heavier"
    "heavy-chain" "helenium" "helix" "helix-loop-helix" "hematocrit"
    "hematoxilyn" "hematoxylin-eosin" "hemi" "hemi-catenates" "hemoproteins"
    "hencer" "hepato" "hepato-cellular" "hepatoctyes" "hepatocyte-specific"
    "hepatovirus" "hetero-dimeric" "hetero-oligomer" "hetero-oligomeric"
    "hetero-oligomers" "hetero-tetramer" "hetero-tetramers" "heterocomplex"
    "heteroduplex" "heteroduplexes" "heterotrimer" "heterozygote"
    "hexahistidine" "hexakisphosphate" "hexanucleotide" "hexapeptide" "hg19"
    "hidden" "high-GI" "high-affinity" "high-calcium" "high-carbohydrate"
    "high-content" "high-density" "high-dose" "high-efficiency" "high-grade"
    "high-level" "high-molecular-weight" "high-penetrance" "high-performance"
    "high-phosphate" "high-quality" "high-resolution" "high-risk" "high-salt"
    "high-score" "high-sensitivity" "higher-order" "higher-sensitivity"
    "highest-frequency" "highest-molecular-weight" "highly-correlated"
    "highly-expressed" "hirsutism" "histoarchitecture" "histochemistry"
    "histologies" "histology" "histone-lysine" "histopathology" "histotype"
    "histotypes" "hit-and-run" "hit-to-lead" "hitter" "hnRNPC" "hnRNPC1"
    "hnRNPE" "hnRNPs" "hoc" "holo" "holo-apoptosome" "homeodomain" "hominoid"
    "homo-oligomerization" "homo-trimers" "homoduplex" "homogenates" "homolog"
    "homologs" "homozygously-acting" "hort" "hosphoprotein" "host-cell"
    "hot-spot" "hotspot" "hotspots" "hp-Tau" "hpTau" "hr" "hsa-miR-132-3p"
    "hsa-miR-132-5p" "hsa-miR-146a" "hsa-miR-150" "hsa-miR-155-3p"
    "hsa-miR-155-5p" "hsa-miR-212" "hsa-miR146a" "hsa-mir-133b" "hsa-mir-146a"
    "hsa-mir-7-1" "htRPE-1" "huAF" "huAFMSC" "huAFMSCs" "huAFSC" "huAFSCs"
    "huMSCs" "hum1" "hum10" "hum11" "hum2" "hum3" "hum4" "hum5" "hum6" "hum7"
    "hum8" "hum9" "humanp14" "humanp21" "hydrogel" "hydrogen-bond"
    "hydrogen-bond-mediated" "hydrophobic-to-polar" "hydroxyethyl" "hydroxyl"
    "hydroxylases" "hydroxyls" "hydroxyphenyl" "hydroxyprostaglandin"
    "hyper-TLR4" "hyper-function" "hyper-glycaemia" "hyper-inflammation"
    "hyper-replication" "hyper-secretion" "hyperaldosteronemia"
    "hyperaldosteronism" "hyperandrogenaemia" "hyperandrogenism"
    "hypercytokinemia" "hyperdiploid" "hyperin" "hyperinsulinaemia"
    "hyperinsulinemia" "hyperinsulinemic-euglycemic" "hyperoxia"
    "hyperplasia-like" "hyperploidy" "hypo-insulinemia" "hypoglycemia"
    "hypoxia-response" "hypurgia" "i2" "i3" "i4" "i5" "i6" "iBlot" "iCLIP"
    "iCOGS" "iCORM" "iCRT" "iCRT14" "iCRT3" "iCasp9" "iPlex" "iScript"
    "iSelect" "ice-cold" "identifier" "identity-by-state" "ii" "iii"
    "ill-defined" "ill-nutrition" "imager" "imidazole" "immDCs"
    "immediate-early" "immune-activated" "immune-deficient" "immune-diseases"
    "immune-related" "immune-surveillance" "immuno" "immuno-fluorescence"
    "immuno-modulatory" "immuno-precipitation" "immunocomplex"
    "immunocomplexes" "immunocytochemistry" "immunodominant"
    "immunoglobulin-like" "immunohistochemistry" "immunophenotype"
    "immunophenotypes" "immunopre" "immunopre-cipitation"
    "immunoprecipitation-competent" "immunoprofiles" "immunoproteasome"
    "immunoproteasomes" "immunotherapies" "immunotherapy" "immuoprecipitaiton"
    "impedance" "import-export" "in-depth" "in-frame" "in-gel" "in-house"
    "in-situ" "in-vitro" "in-vivo" "in28a" "inBRAF" "inCBAP" "inPak1" "inPten"
    "inSiah2" "inactivation–and" "indel" "indels" "individual-nucleotide"
    "inducep21" "inducingp21" "inefficacy" "infection-associated"
    "inflammation-induced" "inflammation-initiated" "inflammatory-related"
    "influencesHO-1" "infoldings" "ing1-5" "inhibitor-of-apoptosis"
    "inhibitorSB203580" "inhibitsp21" "initiators" "initio" "inmurine"
    "inoculum" "inositol-1,4" "inside-out" "insilico" "insulin-driven"
    "insulin-induced" "insulin-like" "insulin-mediated" "insulin-producing"
    "insulin-sensitive" "insulin-signalling" "insulin-stimulated" "insulinemia"
    "intactness" "integrant" "integrants" "inter-endothelial" "inter-fiber"
    "inter-individual" "inter-particle" "inter-study" "inter-subunit"
    "interacst" "interaction-richest" "interaction=0.009" "interaction=0.03"
    "interaction=0.04" "interactome" "intercalant" "interdomain"
    "interferometry" "intermediated-risk" "interpenetrate" "interquartile"
    "interrater" "interrogateBRAF" "interspecies" "interstitium" "interstrand"
    "intestinal-type" "intra" "intra-S" "intra-cranially" "intra-ductal"
    "intra-glandular" "intra-heterogeneity" "intra-patient" "intra-peptide"
    "intra-peritoneally" "intra-spheroid" "intra-tumor" "intra-tumoral"
    "intra-tumorally" "intracardiac" "intracrine" "intrastrand" "intratumour"
    "invadapodia" "invadosomes" "invaginates" "invaginations"
    "invasion-associated" "inxenografts" "iodoacetate" "ionic" "iron–sulphur"
    "ischemia-reperfusion" "iso-BMI" "iso-antibody" "iso-butanol" "isobutyl"
    "isoenzyme" "isoenzymes" "isoform-1" "isoform-3" "isoleucin" "isomer"
    "isomerase-defective" "isomers" "isopeptide" "isopranyl" "isoprenyl"
    "isotype" "isovaleryl" "isovaleryl-CoA" "isozyme" "isozymes" "iv" "jacchus"
    "juan" "k-n" "kPa" "kalirin-12" "kalirin-7" "kalirin-9" "kappa-B"
    "karyotype" "karyotypes" "kbp" "kcal" "keto" "kg" "kinase-A"
    "kinase-defective" "kinase-β" "kinome" "kinome-wide" "klassevirus"
    "knock-down" "knock-in" "knockdown-rescue" "knocked-down" "knockin"
    "knocking-down" "kobuvirus" "kobuviruses" "l-n" "labor-intensive" "lactone"
    "lactones" "laevis" "lamellipod" "lamellipodia-persistence" "lane1"
    "lane 1" "lanperisone" "large-cell" "large-scale" "large-volume"
    "laser-induced" "laser-irradiated" "laser-scanner" "late-apoptotic"
    "late-onset" "late-passage" "late-passages" "late-stage" "lattest"
    "leading-strand" "leave-one-out" "left-handed" "left-side" "left-sided"
    "leftmost" "lefy1" "lements" "leptin-melanocortin" "less-than-additive"
    "let-60" "let-7a" "let-7f" "let-7g" "leucine-zipper"
    "leucine-zipper-containing" "leucogenys" "leukemia-1" "liability-based"
    "libitum" "life-quality" "lifespan" "ligand-1" "ligand-12" "ligand-21"
    "ligand-receptor" "ligand–receptor" "linBSK" "linMSP" "linPGM1" "line11"
    "lineage-specific" "linker-MH2" "lipid-antigen" "lipid-bilayer"
    "lipopolysaccharide" "lipoproteins" "liposome" "litter-mates" "littermate"
    "littermates" "live-cell" "lobectomy" "lobular-like" "lobuli"
    "local-regional" "loci" "locus-specific" "log-additive" "log-likelihood"
    "log-likelihoods" "log-rank-test" "log-rank=44.30" "log-rank=5.75"
    "long-distance" "long-lasting" "long-lived" "long-patch" "long-range"
    "long-standing" "longer-lived" "longus" "loss-PI3K" "loss-of-function"
    "low-affinity" "low-complexity" "low-copy" "low-density" "low-dose"
    "low-energy" "low-frequency" "low-grade" "low-intensity" "low-level"
    "low-melt" "low-molecular-weight" "low-penetrance" "low-resolution"
    "low-risk" "low-set" "lower-grade" "lowest-energy" "loxP" "lpha" "luc-GFP"
    "luciferase-reporter" "lumens" "luminal-like" "luminance"
    "luminescence-based" "luminometer" "luteum" "lymph-node" "lymphadenectomy"
    "lymphadenopathy" "lymphnode" "lymphoblastoid" "lymphocytoblasts"
    "lymphoma-2" "lysosome-fusion" "mAChR" "mCBAP" "mDR-hnRPUL1" "mEGFP" "mEOC"
    "mIgG2a" "mIgG2a-Dylight" "mIgG2a-HRP" "mIgM" "mPDE" "mPDEs" "mQTL"
    "mRNA-seq" "mTERT" "mTOR1" "mTORC1-mediated" "mTORC2-specific" "main-chain"
    "maliganencies" "malignances" "mammary-specific" "mammary-targeted"
    "mammoplasties" "mammoplasty" "mammosphere" "mammospheres" "mangabeys"
    "manitol" "materials" "maximum-intensity" "maximum-tolerated" "mdx"
    "mean-fold" "mean±S" "meat-derived" "mechamisms" "mechanisms"
    "mechanoenzyme" "mechanoenzymes" "median-of-absolute-deviation"
    "median=81.5" "mediastinum" "medium-to-large" "megadalton" "meioses"
    "melanin" "melanocortin-1" "melanogaster" "mellitus" "members" "meninges"
    "mepoluzimab" "mesenchymal-epithelial" "mesenchymal-like"
    "mesenchymal-to-epithelial" "mesenchymal-type" "mesenchyme" "mesendoderm"
    "mesentery" "meshwork" "mesoderm" "mesoporphyrin" "mesothelium" "mesylate"
    "metabolic-response" "metal-affinity" "metal-binding" "metallopeptidases"
    "metalloprotenases" "metanephros" "metaphases" "methionine-to-isoleucine"
    "methoxyphenyl" "methyl-2-cyano-3" "methyl-prednisolone" "methyladenine"
    "methylation-expression" "methylbutyl" "methylcytosine" "methylome"
    "miR-024-1" "miR-100" "miR-101" "miR-106b" "miR-106b-mediated" "miR-107"
    "miR-122" "miR-124" "miR-124a" "miR-124a-2" "miR-125bm-mediated"
    "miR-125bm-transfected" "miR-125bm-treated" "miR-132" "miR-132-3p"
    "miR-132-5p" "miR-134" "miR-137" "miR-138" "miR-139" "miR-142-3p" "miR-143"
    "miR-145" "miR-148a" "miR-150" "miR-151-5p" "miR-151-5p-mediated" "miR-153"
    "miR-153-2" "miR-155" "miR-15a" "miR-16-1" "miR-17" "miR-181b" "miR-189"
    "miR-190" "miR-191" "miR-192" "miR-196-mediated" "miR-19b" "miR-202"
    "miR-203" "miR-212" "miR-218" "miR-22" "miR-222" "miR-24" "miR-24-1"
    "miR-26b" "miR-27a" "miR-28-3p" "miR-296" "miR-29a" "miR-301b" "miR-32"
    "miR-32-induced" "miR-32-mediated" "miR-331" "miR-335" "miR-339" "miR-34"
    "miR-345" "miR-375" "miR-375-mimic" "miR-375-mimic–transfected"
    "miR-375–CIP2A" "miR-375–binding" "miR-375–deficient" "miR-375–mediated"
    "miR-470" "miR-493" "miR-494" "miR-495" "miR-518f" "miR-526b" "miR-548c"
    "miR-628" "miR-708" "miR-93" "miR-98" "miR15-a" "miR15a" "miR16-1" "miR26a"
    "miR27a" "miRNA-675" "miRanda" "mice" "micelle" "micro-environment"
    "micro-irradiation" "micro-metastases" "micro-vascular" "microJ"
    "microRNA-138" "microRNA-345" "microRNA-495" "microRNA-93" "microautophagy"
    "microbiota" "microdomain" "microdomains" "microdroplets"
    "microenvironment-targeted" "microgrammes" "microhomology"
    "micrometer-scale" "microsatellite" "microsatellites" "microvasculature"
    "microvascules" "microvessel" "microvessels" "mid-brain" "mid-passage"
    "mid-trimester" "midface" "midgut" "midline" "midzone" "migration-velocity"
    "mild-to-moderate" "mimosine" "mini-chromosomes" "mini-gene" "minigene"
    "minigenes" "miniscule" "mirDB" "misalignments" "misclassifications"
    "missense" "missingness" "mitochondrial-dependent"
    "mitochondrial-localization" "mitochondrial-mediated"
    "mitochondrial-specific" "mitochondrial-versus" "mitochondrially-localized"
    "mitomycin" "mitoses" "mix-tetrad" "mixed-lineage" "mobility-shift"
    "mobilization-competent" "mock-depleted" "mock-infected" "mock-transfected"
    "mock-treated" "moderate-high" "moderate-marked" "moderate-risk"
    "moderate-sized" "modulus" "molecular-level" "molecularly-homogenous"
    "molecules" "moloch" "mon" "mono-allelic" "monoctye" "monoculture"
    "monocultures" "monocyte-derived" "monodelphis" "monolayer"
    "monophosphates" "monosome" "monosomy" "monotherapies" "monotherapy"
    "morphants" "morpholino" "morpholinos" "mortem" "most-highly"
    "motif-binding" "motile" "mre11-3" "mucosa" "mucosae" "mulatta"
    "multi-center" "multi-channel" "multi-component" "multi-consortial"
    "multi-domain" "multi-factorial" "multi-functional" "multi-functionality"
    "multi-institutional" "multi-kinase" "multi-level" "multi-lineage"
    "multi-lobular" "multi-marker" "multi-megadalton" "multi-organ"
    "multi-potential" "multi-protein" "multi-region" "multi-sample"
    "multi-stage" "multi-step" "multi-subunit" "multi-system" "multi-unit"
    "multicenter" "multicentre" "multidomain" "multimembrane" "multimer"
    "multimers" "multinucleotide" "multiorgan" "multiprotein" "multisubstrate"
    "multisubunit" "multivariate" "murinus" "muscle-derived" "muscle-invasive"
    "muscle-lineage" "muscle-specific" "muscularis" "musculature" "musculus"
    "mut1" "mut2" "mutant-allele-dominant" "mutantBRAF" "mutants" "mutation+"
    "mutation-specific" "mutations" "mutp53-DNA" "mutp53-MSP" "mutp53-linPGM1"
    "mutp53BS-MSP" "mutp53BSs" "mutp53GOF" "mutp53GOFs" "mutp53i" "mutp53s"
    "myc-AMPKβ2" "myc-CAD" "myc-tag" "mycIPMK" "myc‐tagged" "myelodys"
    "myelodys-plastic" "myobasts" "myoblast-like" "myocardium" "myocytes"
    "myocyte–specific" "myoepithelium" "myofiber" "myofibers" "myofibre"
    "myofibres" "myokine" "myometria" "myometrium" "myosin-IXA" "myristoyl"
    "n-fold" "n=1" "n=10" "n=118" "n=13" "n=16" "n=162" "n=2" "n=20" "n=21"
    "n=24" "n=3" "n=4" "n=50" "n=59" "n=6" "n=60" "n=62" "n=7" "n=8" "n=80"
    "n=9" "nAChR" "nAChRs" "nancymaae" "nano" "nano-electrospray" "nanosecond"
    "nasopharynx" "naïve" "ncRNA7SK" "ncomms2680" "ncomms2762" "near-cognate"
    "near-complete" "nearest" "negative-sense" "negative-stranded"
    "neoadj-Chemo" "neoadjuvant" "neointima" "neoplasias" "nephrectomy"
    "nephron" "nephropathy" "nervosa" "neu-induced" "neu-positive" "neuT"
    "neurite" "neuro" "neuro-degeneration" "neuro-protective" "neurobiology"
    "neurode" "neuroendocrine" "neurokinin" "neuropathology" "neurophil"
    "neuropil" "neurosphere" "neurospheres" "neurosurgeons" "neutropenia"
    "neutrophilia" "never-smoker" "never-smokers" "never-smoking" "newer"
    "newly-formed" "newly-translated" "next-generation" "nick-end" "nigricans"
    "nitrocamptothecin" "nitroso" "no-go" "node-positive" "nodule-cyst"
    "nomograms" "nonaggregate" "noncarriers" "noncomedo" "noncomedo-DCIS"
    "nonconsensus" "nonmalignant" "nonmetalloenzyme" "nonmuscle" "nonrandom"
    "nonredondant" "nonredundant" "nonresponse" "nonrisk" "nonsense-mediated"
    "norFN" "normal-adenoma-adenocarcinoma" "normal-like"
    "normal-to-adenoma-to-carcinoma" "normoglycemia" "norvegicus" "nove"
    "novelBRAF" "novo" "nrb" "nsSNVs" "nt" "nts" "nuclear-to-cytoplasmic"
    "nuclear-to-mitochondrial" "nucleases" "nucleate" "nucleates" "nucleo"
    "nucleosome-length" "nurse-like" "nutrisome" "n = 4" "n = 6" "n = 62"
    "n = 1" "n = 21" "n = 24" "n = 3" "n = 4" "n = 6" "n = 7" "o-r" "ob"
    "occludens" "occludens-1" "octamers" "oculo" "oculo-albinism" "oesophago"
    "oesophago-gastric" "oestrogen" "ofBRAF" "ofKras" "ofPten" "ofTgfbr2"
    "ofcell" "ofcells" "off-target" "offline" "offs" "ofp14" "ofp21"
    "ofsubpopulations" "ofxenografts" "oldp53" "oligo" "oligo-anovulation"
    "oligodt" "oligomerise" "oligomycin" "oligopyrimidine" "oligos"
    "omentectomy" "omomyc" "on-call" "on-line" "on-set" "on-target"
    "on-treatment" "onco" "onco-genes" "oncogen" "oncogene-addiction"
    "oncogene-inactivation-induced" "oncogenicRAS" "oncomir" "oncomirs"
    "oncopathway" "oncrasin" "one-ended" "one-fourth" "one-half" "one-megabase"
    "one-step" "one-third" "one-way" "oneBRAF" "onfFN" "ong" "ontogeny"
    "oocytes" "oophorectomy" "open-circular" "optimise" "ordinate" "organelle"
    "organelles" "organizing-scaffold" "organoid" "orp53" "orthologue"
    "orthologues" "orthology" "osseus" "osteo" "osteoblasts" "osteoclast-like"
    "osteoclastogenesis-associated" "otic" "ou" "outgroup" "outputs"
    "over-activation" "over-inflated" "over-nutrition" "over-representation"
    "over-sized" "overs" "overstimulate" "overstimulates" "overview"
    "overviews" "ovo" "oxidases" "oxidoreductase-1" "oximetry" "oxygenase-1"
    "oxygenases" "p-Smad1" "p-Tyr" "p120-catenin–rescue" "p190RhoGAP-A"
    "p190RhoGAP-B" "p21-independent" "p21Pδ2.1-luc" "p21WAF1" "p21waf" "p21was"
    "p38-independency" "p38-mediated" "p38MAPK" "p45NFE2" "p4E-BP1" "p53-273H"
    "p53-273H-expressing" "p53-273H-mediated" "p53-273H-promoted" "p53-281G"
    "p53-SCS-binding" "p53-TTP-Lin28-let-7" "p53-antagonist" "p53-competent"
    "p53-effector" "p53-functional" "p53-immunoreactive" "p53-independence"
    "p53-linDNA" "p53-null" "p53-postive" "p53-proficient" "p53-scDNA" "p53-wt"
    "p53BEGRf" "p53BS" "p53CON" "p53CONs" "p53RE" "p53TADc" "p53TADf"
    "p53→miR-15a" "p53→miR15a" "p73RE" "p85α" "p=0.0002" "p=0.0006" "p=0.0027"
    "p=0.003" "p=0.004" "p=0.006" "p=0.007" "p=0.008" "p=0.009" "p=0.01"
    "p=0.016" "p=0.02" "p=0.03" "p=0.059" "p=0.065" "p=0.07" "p=0.08" "p=0.71"
    "p=7.0" "pAA12" "pAA3" "pAd-15-PGDH" "pAd-15PGDH" "pAd-control" "pAgo2"
    "pAkt" "pBSK" "pCDNA3.1-G245S" "pCGCG" "pCHK2" "pCMV" "pCMV-p53MUT"
    "pCMV-p53WT" "pCMV6-AC-GFP" "pCMV6-AV-GFP-15PGDH" "pCR" "pCRII" "pCRII-AA3"
    "pCRII-AB23" "pControl" "pDsRed-ISceI" "pEGFP" "pEGFR" "pEGFR-Ser1046"
    "pEGFR-Thr654" "pEGFR-Tyr1068" "pEJ" "pEJ5-GFP" "pFADD" "pFB-Neo-DENV"
    "pFOPFlash" "pFoxO3" "pFoxO3a" "pGEM-T-easy" "pGFP" "pGFP-ISceI"
    "pGFP-V-RS" "pGFP-V-RS-15PGDH" "pGFPN1" "pGL-3-Enhancer" "pGL3-1277Luc"
    "pGL3-1735Luc" "pGL3-2097Luc" "pGL3-51Luc" "pGL3-570Luc" "pGL3-91Luc"
    "pGL3-Basic" "pGL3-Enhancer" "pGL3-basic" "pGL3-promoter" "pH" "pHACE"
    "pH " "pH " "pJNK" "pLVX" "pLVX-Tight" "pLXSN-LMP-1" "pMSP" "pMX" "pMini"
    "pN" "pN0" "pN3a" "pPEA" "pPEA-15" "pPEA-15-mediated"
    "pPEA-15-overexpressing" "pPak1" "pQCXIH" "pQCXIH-ISceI" "pRLSV40"
    "pRS-vector" "pRetrosuper" "pS" "pS118" "pS118-ERα" "pS118-P119"
    "pS118-p119" "pS118ERα" "pS210-Rnd3" "pS218" "pS240" "pS387" "pS387-Ago2"
    "pS387-Ago2-specific" "pS94" "pSMAD3C" "pSPRY2" "pSTAT3" "pSUPER" "pSmad1"
    "pSuperPKC" "pSuperPKCδ-RNAi" "pT" "pT-X" "pT0" "pT2" "pT3" "pT3N0M0"
    "pT3N2M0" "pT4" "pT4N1M0" "pTCTP" "pTOPFlash" "pTrkA" "pUC12" "pV762A"
    "pVav1" "pX1MT" "pY397" "pY397-FAK" "pY407" "pY576" "pY705STAT3" "pYxxM"
    "pack-year" "pack-years" "packings" "pair-wise" "pairwise" "palmitoyl"
    "pan-HDACIs" "pan-cellular" "pan-inflammatory" "pan-inhibitor"
    "pan-isoform" "pan-nuclear" "pan-specific" "pan-transcription"
    "pan-tyrosine" "panatimumab" "pancreatitis" "panencephalitis"
    "para-tumorous" "paracrine" "paracrine-like" "paradentium" "paralog"
    "paralogues" "parechovirus" "parenchyma" "parity-identified" "parotid"
    "passage-number" "patho" "pathogen-associated" "pathogen-dependent"
    "pathophysiology" "pathotypes" "pathwa" "pathways" "patient-years"
    "patternless" "pc-9" "pc-Jun" "pcDNA" "pcDNA3" "pcDNA3-K42R" "pcDNA3-WT"
    "pcDNA3.0" "pcDNA3.0-GLIPR-2" "pcDNA3.0-GLIPR-2-transfected"
    "pcDNA3.0-transfected" "pcDNA3.1" "pcDNA3.1+RhoA" "pcr" "pediatric-onset"
    "penetrance" "penetrant" "penicillin-streptomycin" "pentakisphosphate"
    "pentamers" "pentaspan" "pepMKK2" "pepRSK1" "pepRSK1_SQAA" "peptidyl"
    "per-SNP" "per-allele" "perallele" "perfectly-complementary" "perhaps"
    "peri-natal" "peri-nuclear" "peri-operative" "perinuclear-mitochondrial"
    "periodontium" "peroxidases" "person-year" "person-years" "phagemid"
    "phagemids" "phagophores" "phalanges" "pharmacotherapy" "phase-2"
    "phase-based" "phase-specific" "phenyl" "phenylhydrazone" "phlebotomy"
    "phosphate-binding" "phosphate-responsive" "phosphate–binding"
    "phosphatidylalcohol" "phosphatidylinositol-3-4-5-triphosphate"
    "phosphatidylinositol-3-OH" "phosphatidylinositol-3-phosphate"
    "phosphatidylinositol-4-5-biphosphate" "phosphoAgo2" "phosphoCdk7"
    "phosphocholine" "phosphodegron" "phosphodiester" "phosphoinositide-3-OH"
    "phosphoinositides" "phosphoinositol" "phosphoinositol-3" "phosphomutants"
    "phosphopeptides" "phosphoproteins-rich" "phosphor-Src-Ab" "phosphor-lipid"
    "phosphoribosyl" "phosphorylation-site-targeted" "phosphosite"
    "phosphosites" "phosphotidylglycerol" "phosphotyrosyl" "photomicrographs"
    "physiopathology" "picoseconds" "pifithrin-α" "pigmentosa" "pin-point"
    "pinchases" "pintool" "pixel" "pixel-by-pixel" "pixels"
    "placebo-controlled" "plakogobin" "plakophilins" "plantaris"
    "plasmin-dependent" "plasmon" "pleiotropy" "pleomorphism" "pleura" "ploidy"
    "plugin" "pmTOR" "pneumonectomy" "point-mutants" "point-mutated" "pol-δ"
    "pol-ε" "poly-ADP-ribose" "poly-phosphate" "polyA" "polySUMO" "polySUMO-2"
    "polyT" "polyacrilamide" "polyadenine" "polydipsia" "polygene"
    "polyisoprenyl" "polymorphism" "polymorphisms" "polypectomy"
    "polypeptide-1" "polypeptide-like" "polyphenol" "polyphenols" "polyprotein"
    "polyribosome-containing" "polysome-fractionation" "polysomy" "polytene"
    "pombe" "poor-quality" "poorer" "poorest" "population-level"
    "pores-forming" "pos" "positive-sense" "positively-charged" "positron"
    "post-CHX" "post-DNA" "post-EBV" "post-Neoadj-Chemo" "post-PCR"
    "post-angioplasty" "post-biopsy" "post-chemotherapy" "post-compound"
    "post-diagnosis" "post-entry" "post-expansion" "post-exposure" "post-hoc"
    "post-immunoprecipitation" "post-implantation" "post-imputation"
    "post-infection" "post-inoculation" "post-insertion" "post-irradiation"
    "post-menopause" "post-mitotic" "post-mortem" "post-natal"
    "post-operational" "post-operative" "post-surgery" "post-synaptic"
    "post-transcriptional" "post-transcriptionally" "post-transfection"
    "post-translational" "post-translationally" "post-treatment"
    "postangioplasty" "postmortem" "potentially-causal" "pp70S6K" "pp72"
    "ppFEV" "ppFVC" "ppGalNAc" "ppGalNAc-T" "ppGalNAc-T3" "ppGalNAc-T6"
    "ppGalNac-T6" "preadypocites" "precipitants" "predrug" "preempt"
    "preimmune" "premature-ageing" "prenyl" "preselect" "preterm"
    "preterm-labour" "pri-miR-26a1" "pri-miR-26a2" "priori" "pro-angiogenic"
    "pro-cancer" "pro-differentiation" "pro-fibrotic" "pro-inflammatory"
    "pro-neural" "pro-survival" "pro-tein" "pro-tumor" "pro-tumorigenic"
    "pro-tumourigenic" "proMMP-1" "proband" "probands" "procollagen"
    "prodomain" "progenies" "progeny" "prognosis-relevant"
    "proliferation-competent" "proliferation-essential"
    "proliferator-activated" "proliferator–activated" "prolyl-isomerization"
    "promoter-proximal" "promoterless" "promoters" "proof-of"
    "proof-of-concept" "proof-of-principle" "prosimians" "prostaglandins"
    "prostasome" "prostasomes" "prostatectomies" "prostatectomy"
    "proteasome-mediated" "protein-A" "protein-DNA" "protein-coding"
    "protein-content" "protein-fragment" "protein-interaction" "protein-lipid"
    "protein-α" "proteins" "protein–peptide" "protein–peptide-type" "proteome"
    "proteomes" "proteosome" "protonophore" "proven" "pseudo-color"
    "pseudogenes" "pseudoknot" "pseudoknots" "pseudoviruses" "psiCHECK2" "ptau"
    "pubarche" "pull-down" "pull-downs" "pulled-down" "pulsed-field" "puro"
    "pyranoside" "pyrene-DNA" "pyrograms" "pyrophophates" "p " "p = 0.003"
    "p = 0.007" "p " "p = 0.002" "p = 0.004" "p = 0.006" "p = 0.02" "p≤0.01"
    "qua" "quadriceps" "quadruplex" "quadruplexes" "quantitative-RT" "r15-LOX"
    "rACTA2-P" "rC" "rCMP" "rECD" "rECD11-TM" "rECD2-TM" "rECD6-TM" "rECD9-TM"
    "rG" "rHER" "rHER2-ECD" "rNMP" "rNMPs" "ra" "racemosa"
    "radiation-associated" "radiation-induced" "radiobiologists" "radioiodine"
    "radioresistance" "raf1a" "raft-associated" "rapalogs" "rapamicin" "rarer"
    "rat11" "rat6" "rat9" "ratio=1.41" "rattus" "re-absorption" "re-acquiring"
    "re-acquisition" "re-administered" "re-administration" "re-assembled"
    "re-attached" "re-built" "re-called" "re-canalization" "re-confirmation"
    "re-constituted" "re-docked" "re-enforce" "re-enter" "re-establish"
    "re-evaluated" "re-examination" "re-examine" "re-expanded" "re-express"
    "re-expressed" "re-expressing" "re-expression" "re-folding"
    "re-interrogated" "re-ligate" "re-open" "re-organization" "re-precipitated"
    "re-programming" "re-sensitize" "re-sequencing" "re-wiring" "reChIP"
    "reaction-restriction" "readout" "readouts" "receptor-conformational"
    "receptor-conformer" "receptor-ligand" "receptor-like" "receptor-positive"
    "receptor-γ" "receptor2" "receptor–receptor" "recombination-based"
    "recruitment-defective" "recurrences" "red-capped" "red-necked"
    "red-shifted" "reenter" "refracta" "refractoriness" "regrew" "regrowth"
    "regulatesp21" "regulatingp21" "regulation-at-a-distance" "regulators"
    "regulatory-element" "reinitiate" "relMSP" "related-1" "related-2"
    "relatedness" "relpGL3-MSP" "remodeling" "repair-mediated"
    "replication-associated" "replication-based" "replication-competent"
    "replication-defective" "replication-independent" "replication-mediated"
    "replication–transcription" "replicon" "repopulate" "reporter-gene"
    "repressors" "resection-inhibitory" "resp" "respiratory-control-ratios"
    "responder" "responders" "restriction-induced" "resveratrol-like"
    "reticulum" "retromer" "retrotranslocate" "retrotransposons"
    "retroviral-like" "retroviral-mediated" "retrovirus" "rhEcad" "rhabdoid"
    "rheometer" "ribonucleoparticles" "ribose" "riboside" "rich-motifs"
    "right-handed" "ring-finger-containing" "ring-like" "risk-SNP"
    "risk-associated" "risk-modifying" "risk-reducing" "risk-reduction"
    "risten" "rmsd" "rnh201" "rohitukine" "rs10054203" "rs10069690"
    "rs10088218" "rs10168266" "rs1042522" "rs1045485" "rs1047057" "rs10483813"
    "rs10484326" "rs1050171" "rs10519201" "rs1052559" "rs10737692" "rs10741657"
    "rs10748858" "rs10759243" "rs1078985" "rs10818854" "rs10828247"
    "rs10828252" "rs10988989" "rs11023139" "rs11075995" "rs11079571"
    "rs11121704" "rs1112795" "rs11135910" "rs11196174" "rs11196175"
    "rs11199914" "rs11208659" "rs11240753" "rs11242675" "rs1136410" "rs1140475"
    "rs11526201" "rs11552449" "rs11568818" "rs11571833" "rs11606345"
    "rs11617740" "rs11650494" "rs11651753" "rs11710077" "rs11780156"
    "rs11782652" "rs11814448" "rs11849538" "rs11870250" "rs11902236"
    "rs11918254" "rs12032424" "rs12048230" "rs12061601" "rs12143842"
    "rs1217396" "rs12203592" "rs12203592*T" "rs12255372" "rs12404974"
    "rs1243180" "rs12493607" "rs12610495" "rs1269304" "rs1270884" "rs12710696"
    "rs12785878" "rs1278769" "rs12899618" "rs12947788" "rs12951053"
    "rs12984174" "rs13072632" "rs13190087" "rs132390" "rs1354106" "rs1379326"
    "rs137960856" "rs138206701" "rs138213197" "rs139755" "rs140338099"
    "rs1416920" "rs1445130" "rs145241704" "rs145302848C" "rs147406419"
    "rs147603016G" "rs1485993" "rs1485993*T" "rs1514346" "rs1529672"
    "rs1618536" "rs1619016" "rs1642785" "rs1649200" "rs16857609" "rs16917302"
    "rs169201" "rs17025867" "rs17035917" "rs171140" "rs17221319" "rs17337023"
    "rs17412740" "rs17631303" "rs17817449" "rs17878362" "rs1800370" "rs1800371"
    "rs1801132" "rs1801270" "rs1801278" "rs1801516" "rs1801516*A" "rs1805120"
    "rs183211" "rs184577" "rs1868402" "rs1881984" "rs191403470" "rs1980057"
    "rs1993709" "rs199533" "rs20417" "rs204247" "rs2046210" "rs2048332"
    "rs206015" "rs2072454" "rs2076295" "rs2076756" "rs2109069" "rs218361"
    "rs2227983" "rs2228001" "rs2234670" "rs2234693" "rs2242652" "rs224984"
    "rs2273669" "rs2279744" "rs2284378" "rs2290854" "rs2293347" "rs2295050"
    "rs2295080" "rs2369049" "rs2373115" "rs2380205" "rs2420946" "rs2532348"
    "rs2588809" "rs2609255" "rs2665390" "rs2735940" "rs2736098" "rs2736098A"
    "rs2736100" "rs2736107" "rs2736108" "rs2736109" "rs2786098" "rs28353676"
    "rs28384375" "rs2853669" "rs2853676" "rs2853677" "rs2854501" "rs2854509"
    "rs2869967" "rs287129" "rs288326" "rs2926534" "rs2943641" "rs2943641T"
    "rs2943650" "rs2981432" "rs2981451" "rs2981575" "rs3014606" "rs3020314"
    "rs3096702" "rs311499" "rs3132468" "rs3135772" "rs3213255" "rs3215401"
    "rs3218625" "rs3219090" "rs3219090*A" "rs35094336" "rs351855" "rs351855G"
    "rs35705950" "rs3585075" "rs35850753" "rs3740360" "rs3746319" "rs3756089"
    "rs3760982" "rs3760983" "rs3763511" "rs3771570" "rs3803662" "rs3816659"
    "rs3821236" "rs388159" "rs3903072" "rs3922844" "rs3923086" "rs3923087"
    "rs401681" "rs401681C" "rs402710" "rs4077759" "rs4135385" "rs4245739"
    "rs4352210" "rs4387287" "rs440277" "rs4506565" "rs4522809" "rs4588418"
    "rs459552" "rs4691139" "rs4725982" "rs4735692" "rs4791171" "rs4853643"
    "rs4915551" "rs4951389" "rs4951407" "rs4986934" "rs56156506" "rs60271534"
    "rs616402" "rs616488" "rs619373" "rs62090893" "rs62090893encompasses"
    "rs6232" "rs6235" "rs641120" "rs643507" "rs6438552" "rs6472903" "rs6485350"
    "rs6554754" "rs6590474" "rs6678914" "rs6682208" "rs6793295" "rs6795970"
    "rs6820671" "rs6825998" "rs6828523" "rs684232" "rs6869841" "rs6894268"
    "rs689465" "rs689466" "rs6922111" "rs6949082" "rs6963345" "rs7047693"
    "rs7072776" "rs7084454" "rs7141529" "rs71595003" "rs720475" "rs7241993"
    "rs7255638" "rs7322722" "rs7322916" "rs735951" "rs737582" "rs7449190"
    "rs74544416" "rs7503807" "rs757210" "rs7574865" "rs7578326" "rs7611694"
    "rs7616278" "rs7624327" "rs762507" "rs7626962" "rs763317" "rs7636840"
    "rs76507" "rs7651446" "rs7670758" "rs7671167" "rs7679673" "rs7705526"
    "rs7712562" "rs7713218" "rs7725218" "rs7726159" "rs7734992" "rs7775"
    "rs7775861" "rs78378222" "rs7880172" "rs789852" "rs7903146" "rs7904519"
    "rs7942850" "rs7944926" "rs7947224" "rs800372" "rs8050136" "rs8170"
    "rs8192708" "rs868903" "rs915927" "rs925847" "rs9322336" "rs9340799"
    "rs9348512" "rs941764" "rs9610775" "rs97595970" "rs9790517" "rs9894946"
    "rs9915547" "rs9922362" "rs9939609" "rs999737" "s-value" "s-values"
    "s00412-013-0410-4" "sCLU" "sEcad-HER" "sHR" "sRAGE" "salpingo"
    "salpingo-oophorectomy" "salt-bridge" "samII" "sapiens" "sarcomatoid"
    "sartorius" "save-lock" "scAA3" "scAB10" "scBSK" "scElg1" "scMSP" "scRNA"
    "scc10A" "scherichia" "scissile" "scpGL3-MSP" "scratch-wound" "screen-wide"
    "sds" "sebocytes" "seborrhoea" "sebum" "sebum-suppressive" "second-degree"
    "second-generation" "second-harmonic" "second-line" "second-site"
    "secondarily-transform" "secramine" "segmentectomy" "self-activation"
    "self-amplifying" "self-binding" "self-cleavage" "self-complementary"
    "self-hydral" "self-renew" "self-renewal" "self-report" "self-reported"
    "self-sufficient" "self-tolerance" "self-triggered" "semi" "semi-confluent"
    "semi-log" "semi-qRT-PCR" "semi-quantitative" "semi-quantitatively"
    "semi-solid" "senescence-bypass" "sensitise" "sensitivitiy" "sentitve"
    "sequelae" "sequence-independent" "sequence-specific"
    "sequence‐independent" "serine-PKC" "serosa" "serotype" "serum-and"
    "sessile" "set-summarize" "severals" "severe-early" "sh5a02" "sh5a04"
    "sh5b03" "sh5b04" "shAIB1" "shAbl" "shAngptl4" "shCON" "shCTRL" "shCtrL"
    "shCtrl" "shECad" "shECad-65" "shECad-66" "shEGFR" "shEGFR1" "shEGFR2"
    "shEad" "shFoxA1" "shGOT1" "shGRP" "shGRP-R" "shHIF-1α" "shIGF-1R" "shLacZ"
    "shLuc" "shNC" "shNS" "shNT" "shRKIP" "shRNA-1" "shRNA-2" "shRon" "shSETD"
    "shSETD2-DLD-1" "shSrc" "shake-off" "sheet-like" "shock-70" "shock-treated"
    "short-chain" "short-hairpin" "short-patch" "short-range" "short-term"
    "shp53" "shutoff" "shβ1" "si-CIP2A" "si-CIP2A–transfected" "si-GFP"
    "si-GFP–transfected" "siBCL11B-10" "siBCL11B-3" "siCDK6" "siControl"
    "siELMO" "siELMO1" "siELMO2" "siERK" "siFoxA" "siFoxA1-regulated" "siFxr"
    "siFxr1" "siFxr1#2" "siLUC" "siNUT" "siPak1" "siPak1A" "siPak1B" "siPak3"
    "siPak3A" "siPak3B" "siPaks" "siR-NAs" "siRNA-I" "siRNA-II" "siRNA-III"
    "siRNA-immune" "siRNA-transfected-GBM" "siTax" "siTax-A" "siTax-B"
    "side-by-side" "side-chain" "side-effects" "sideroblasts" "sigmoid"
    "signifcant" "significanlty" "significantly-associated" "silencd" "silico"
    "simple-binding" "simpler" "simplex" "sine-qua-non" "single-base"
    "single-cell" "single-center" "single-hitter" "single-nucleotide"
    "single-point" "single-quantum" "single-span" "single-stage"
    "single-strand" "single-subunit" "single-variant" "sinusoids" "sip14"
    "sirtuin" "situ" "six-well" "sixteen-bp" "sixty-one" "size-exclusion"
    "skeletal-related" "skin-derived" "skin-lesion" "skin-like" "skin-relevant"
    "slow-migrating" "slow-twitch" "small-RNA-directed" "small-T" "small-cell"
    "small-effect" "small-micelle" "small-molecular" "small-molecule"
    "small-sample" "smokers" "snail1a" "soft-agar" "soft-tissue" "sol" "soleus"
    "solid-organ" "solute" "solutes" "solvent-accessible" "somites"
    "south-east" "sox32" "sparsely-seeded" "specifc" "spectrometer"
    "sphere-forming" "spindle-like" "spindloid" "splenectomy" "splice-variant"
    "spoken" "sqt" "srs2" "ss" "ssay" "stabililty" "stability-regulating"
    "stage-IV" "stageIIb" "stainings" "stathmin-like" "steady-state" "stellate"
    "stem-cell" "stem-cells" "stem-like" "stem-loop" "stemness" "stepwise"
    "stereochemistry" "steroid-refractory" "sterol-regulatory" "strand-breaks"
    "stress-activated" "stress-dependent" "stress-induced" "stress-inducible"
    "stress-inducing" "stress-like" "stress-regulated" "stress-sensitive"
    "stress-tolerance" "stressful" "stressors" "stress–induced"
    "stress–mediated" "strocytes" "stromelysins" "strongly-associated"
    "structure-activity" "structure-class" "structure-function"
    "structure–activity" "sub-G0" "sub-G1" "sub-analysis" "sub-arrangement"
    "sub-categories" "sub-cellular" "sub-clonal" "sub-clones" "sub-diploid"
    "sub-fraction" "sub-group" "sub-nuclear" "sub-pathway" "sub-pathways"
    "sub-physiological" "sub-pixel" "sub-population" "sub-populations"
    "sub-set" "sub-therapeutic" "sub-type" "sub-types" "subG1" "subacute"
    "subarachnoid" "subcategories" "subclass" "subclasses" "subdomain"
    "subfamilies" "subject-pair" "subjectedSiah2" "sublines" "submucosa"
    "subscale" "subserosa" "subset" "subsets" "subsites" "subspecies"
    "substrate-recognition" "substrates" "subtrates" "subtype" "subtypes "
    "succinate" "succinyl" "sulfonyl" "sulfophenyl" "super-family"
    "super-shift" "super-super-shift" "super-super-shifted" "supergene"
    "superhelix" "supernatant" "supernatants" "suppressedp21" "suppressesp21"
    "suppressp21" "surface-engineering-based" "surface-entropy" "surviourship"
    "switch-like" "switch-over" "switched-off" "switched-on" "symmetry-related"
    "symptomatology" "synapse" "synapses" "synergism" "synteny"
    "systems-biology" "systems-wide" "tRNAamber" "tagSNP" "tagSNPs"
    "tamoxifen‐treated" "tandem-fluorescent" "tandem-repeated" "tandemSH2"
    "targeted-genes" "targeted-therapies" "targetingSTAT3" "taxel" "tein"
    "telomerase-defective" "telomerase-expressing" "telomerase-independent"
    "telomerase-mediated" "telomerase-negative" "telomerase-positive"
    "telopeptides" "temperature--dependent" "temperature-dependence"
    "ten-genes" "tensionally-integrated" "term-labour" "term-potentiation"
    "tertile" "tertiles" "test-statistic" "tetracycline-repressible" "tetrad"
    "tetraethylbenzimidazole" "tetrakisphosphate" "tetrazole" "text-based"
    "thatSHP2regulates" "thatp14" "thatp21" "thatΔNp63α" "theBRAF" "theK"
    "theMDA" "theMDA-MB231" "thePten" "theSiah2" "theTCL1-Tg" "theca"
    "theca-interstitial" "thecomedo" "thecomedo-DCIS" "themodel" "thenp21"
    "theorine" "therapy-induced" "therapy-naive" "thereshold" "thermocycler"
    "theta" "thexenograft" "thiazole" "thin-slice-core" "thiocysteine"
    "thiophene" "third-degree" "third-generation" "third-line" "thirty-one"
    "three-cell" "three-dimensional" "three-fourth" "three-generation"
    "three-subunit" "three-tiered" "threeGWAS" "threonine-specific"
    "threonine-to-methionine" "thrombocytes" "thrombocythemia" "thrombopoeitin"
    "throughmeta" "throughmeta-analyses" "thymocytes" "thyroidectomy"
    "tibialis" "ticlopidine" "tightly-packed" "time-average" "time-course"
    "time-dependently" "time-lapse" "time-of-day" "time-of-day-dependent"
    "time-of-day-specific" "time-to-90%" "time-to-PS" "timecourse" "timeline"
    "time‐dependent" "tissue-specificity" "tissues" "titer" "titers" "titi"
    "titre" "toTgfbr2" "tobramycin" "tocopherol" "tocopherol's" "tocopherols"
    "togheter" "toll-like" "tolperisone" "toolbelt" "top-layer" "top-left"
    "top-right" "top14" "topologies" "topology" "trait-SNP" "trans-endothelial"
    "trans-infection" "trans-membrane" "trans-signaling–dependent"
    "trans-species" "transaminases" "transcripiton" "transcription-3"
    "transcription-PCR" "transcriptome" "transdifferentiate"
    "transdifferentiates" "transdominant" "transducer" "transferase-mediated"
    "transferase–mediated" "transgenes" "transiently-transfected"
    "transition-to-transversion" "translation-factor"
    "translational-repressive" "transmembrane-spanning" "transposons"
    "transwell" "trauma-induced" "treatment-decision" "treatment-emergent"
    "treatment-naïve" "triage" "trial-and-error" "trichostatin-A" "trichrome"
    "tricyclodecan-9-yl-xanthogenate" "trifluoroethanol" "trimester"
    "trinucleotide" "trinucleotides" "triose" "tripepetide"
    "triphenyltetrazolium" "triphosphate" "triple-negative" "triplexes"
    "trisomy" "trisphospate" "trisphosphate" "trithorax" "ts" "tube-like"
    "tubule" "tubules" "tubulo" "tubulo-papillary" "tumor-node-metastasis"
    "tumor-suppressive" "tumor-susceptibility" "tumorsphere" "tumorspheres"
    "tumour-associated" "tumour-derived" "tumour-promoting"
    "tumour-suppressive" "tumour-suppressor" "tunica" "turn-around" "turn-over"
    "tv" "twelve-lead" "twenty-eight" "twenty-six" "twice-daily" "two-armed"
    "two-days" "two-ended" "two-hybrid" "two-marker" "two-member" "two-phase"
    "two-sided" "two-stage" "two-state" "two-step" "two-tailed" "two-third"
    "two-thirds" "two-times" "two-way" "twofolds" "tyosine" "type-I" "uL"
    "uORF" "uORFs" "ubiguitin" "ubiquitin-proteasome-mediated"
    "ubiquitination-proteasome" "ubiquitin‐proteasome"
    "ubiquitin–proteasome-dependent" "ug" "uisance" "ul" "ultra-low"
    "ultra-performance" "ultra-violet" "ultracentrifuge" "ultrastructure" "un"
    "un-irradiated" "unc" "uncoupler" "under-expressed" "under-recognized"
    "undergoes" "undergone" "underpinnings" "undertaken" "unfractionatedand"
    "unfractionatedcells" "uni" "uni-lobular" "uniporters" "unit-length"
    "unit-mass" "unit-type" "univariate" "unloader" "unloading‐induced" "unmet"
    "unpubl" "up-modulated" "up-modulation" "upper-gastrointestinal" "ura3-29"
    "uracils" "urea" "urine-derived" "usedp14" "utero" "vacuoles" "vaiant"
    "valine-to-glutamic" "value=2.2×10" "values" "values=6.1×10" "value "
    "variants" "vascular-directed" "vasculopathy" "vector-only"
    "vehicle-treated" "veliparb" "vena" "venules" "vera" "vesicle-associated"
    "vesicle-transport" "vesicles" "vestigial-like" "vi" "viii" "viral-induced"
    "viral-mediated" "virus-I" "visIs18" "vison" "vitro" "vivo" "vizIs18"
    "vizIs19" "voltage‐dependent" "volunteer-derived" "vorinostat-repressible"
    "voxel-wide" "voxel-wise" "vulgaris" "waist-hip" "water-soluble" "waviness"
    "weakest" "web-based" "website" "websites" "webtool" "well-accepted"
    "well-characterised" "well-correlated" "well-defined" "well-designed"
    "well-differentiated" "well-documented" "well-imputed" "well-phenotyped"
    "well-recognised" "well-studied" "well-suited" "western-blotting"
    "wgEncodeEH002692" "wheareas" "wheel-like" "whenp21" "whilep14"
    "white-blood" "white-cheeked" "whole-body" "whole-brain" "whole-cell"
    "whole-genome" "whole-genome-amplified" "whole-mount" "wide-range"
    "wild-living" "wildtype" "winged-helix" "withBRAF" "withSiah2" "withdrawn"
    "within1KGP" "withp53" "wk" "work-up" "workers" "workflow" "workup"
    "world-wide" "written" "wt-GIST" "wt-GISTs" "wtEGFR" "wth" "wtp53" "x-axis"
    "xFxr1" "xTAG" "xestospongin" "xfxr1" "xy" "xz" "y-axis" "yeast-two-hybrid"
    "yin" "yin-yang" "young-aged" "yr" "ys" "yz" "z-score" "z-slices" "z-stack"
    "zFxr1p" "zeta-chain" "zhi" "zinc-finger-type" "zoom-in" "zymogens"
    "­thiocysteine" "µl" "×1.1" "×10" "×2" "×3" "× 10" "× 3" "ßcatenin" "êB"
    "Δ133p53" "Δ142–146" "Δ2" "Δ20" "Δ22" "Δ3" "Δ30-G245S" "Δ30-R175H"
    "Δ30-R248W" "Δ30-R273H" "Δ30-mutp53" "Δ30-wp53" "Δ30-wtp53" "Δ30p53" "Δ340"
    "Δ35" "Δ38" "Δ4-13" "Δ40p53" "Δ510–514" "Δ542–546" "Δ557–558" "Δ564–581"
    "Δ800-811" "Δ9" "ΔC" "ΔCAAX" "ΔCPD" "ΔCTD" "ΔCt" "ΔCt " "ΔF-box" "ΔF508"
    "ΔFbox" "ΔG" "ΔH" "ΔLIM1" "ΔLIM2" "ΔLIM4" "ΔLIMS" "ΔLMP-1" "ΔLZ" "ΔMFI"
    "ΔN" "ΔN11" "ΔNTD" "ΔNp63α-mediated" "ΔNp73" "ΔNp73α" "ΔPDZ" "ΔPH"
    "ΔPH-Akt" "ΔPH-PHLPP1" "ΔPTP" "ΔRAM" "ΔS" "ΔZIP" "Δmsh2" "ΔΔG" "ΔΔH" "ΔΔS"
    "Δδ" "Δψ" "ΨKXD" "α-Flag" "α-GFP" "α-GPDH" "α-GalNAc" "α-ING1" "α-Src"
    "α-V5" "α-VE5" "α-VE5-treated" "α-glycerophosphate" "α-granules"
    "α-helical" "α-helix" "α-mediated" "α-pSrc" "α-pY" "α-secretase"
    "α-spectrin" "α-tubulin-Ab" "α10" "α12-α13" "α2-β3" "α2β1" "α2β2γ1"
    "α2–α10" "α3-helix" "α3-myc" "α32" "α3β4-myc" "α4β1" "α5" "α5-loop-α6" "α6"
    "α6–α6" "α7" "αB" "αB-helix" "αC" "αC-helix" "αD" "αD-helix" "αE" "αEF"
    "αG" "αKG" "αMHC" "αMβ2" "αXβ2" "β-40" "β-deletion" "β-deletion-specific"
    "β-mercapto­ethanol" "β-oxidation" "β-phosphate" "β-propeller"
    "β-propellers" "β-secretase" "β-sheet" "β-strand" "β-strands"
    "β-structured" "β-subunit" "β-synthase" "β1" "β2-α2" "β2–β4" "β3" "β7–β8"
    "β8" "βB" "βI" "βII" "βc" "βsubunits" "β–RCP" "β–propellers" "γ-H2A-X"
    "γ-Tocopherols" "γ-VE5" "γ-VE5-induced" "γ-VE5-mediated" "γ-VE5-treated"
    "γ-and" "γ-irradiation" "γ-phosphate" "γ-tocopherol" "γ-tocopherols"
    "γ-tubulin-Ab" "γ1" "γ2" "γ3" "γ32P-ATP" "γ90" "γH2A" "γfragment" "ε3" "ε4"
    "λ-phosphatase" "μL" "μg" "μg " "μl" "μmol" "μs" "π-π" "σ∼−0.05" "ψKxE"
    "ω-3" "ϕ-ψ" "”-like" "∆ψ" "∧E4" "≧1.5"))

(DEFPARAMETER SPARSER::*BIO-ENTITY-HEADS-PHASE3-9601-9900*
  '("sinusoids" "CQ" "TEER" "ZO" "occludens" "MEK-1/2" "antigen (PA)"
    "co-staining" "T183/Y185" "heteromeric neuronal nAChRs" "×2 µ" "CTCH"
    "ectodomains" "Δ-cyto" "AChRs" "anti-IL2αR" "IL2αR" "mEGFP" "nA"
    "epibatidine" "neuronal nAChRs" "synapse" "excitatory synapses" "synapses"
    "α3" "Heteromeric neuronal nAChRs" "axons" "Neuronal nAChRs" "pentamers"
    "α3β4" "48 hs" "= 22" "n = 24" "α10" "monolayers" "fasciculata"
    "unilateral adrenalectomy" "pharmacotherapy"
    "idiopathic hyperaldosteronism (IHA)" "aldosteronism (PA)" "glomerulosa"
    "zona" "hyperaldosteronemia" "polydipsia" "nephrectomy" "IHA"
    "hyperaldosteronism" "the available non-invasive" "aldosteronism"
    "serine/threonine" "Twist/N-cadherin" "hepatocellular carcinima"
    "carcinima" "LTE" "co-overexpression" "= 14" "P  = 0.000" "ΔCt " "= 47"
    "5,6-Dichloro-1-β-D-ribofuranosylbenzimidazole (DRB)" "Atm-/-" "MACA"
    "the ‘classical’ ACAs" "ACAs" "ATMi" "SSBR"
    "axonal neuropathy 1 (SCAN1) – mutated" "phosphodiester" "neuropathology"
    "formation/resolution" "N-Acetyl" "N-acetyl" "P = 0.006" "non-cycling"
    "– mutated" "anti-melanoma" "Pharma" "Otsuka" "re-wiring" "transcription-3"
    "4/20" "10 mins" "1uM" "E- and" "non-metastatic" "migration/invasion"
    "autocrine/paracrine" "non-endometrioid" "often more chemoresistant"
    "Ashton" "Ueda" "Arg72Pro" "interaction=0.04" "72Pro" "0.93–3.30"
    "the homozygous Arg/Arg genotype" "C/A" "≥25" "non-significantly" "Nrf1BKO"
    "γ32P-ATP" "immunopre" "phosphodegron (CPD)" "serine/" "Homologs"
    "transdominant" "Nrfl" "phosphodegron" "Fbw" "factor-1" "cells/mL" "Bowen"
    "Evers" "Feng" "6/19" "16/26" "Bertagnolli" "Markowitz" "Fearon"
    "Vogelstein" "~20-fold" "switch-like" "poses" "+1" "gone" "shutoff"
    "at least 9 hr" "Ser807/811" "~60%" "as/as" "3-MB-PP1" "R-point"
    "transgenes" "TEFb" "MO1" "/ K" "~3-fold" "non-inhibitory" "DYJ" "HMVT"
    "YPC" "anti-HTLV-1" "Gal4BD" "siPaks" "siPak3" "Pak1/3" "siPak1A"
    "siPak1/3" "siPak1" "CRTC1M1" "R419X" "A365E" "HIAP" "siTax" "CRTCs" "1/3"
    "PDEδ" "peptide/14-3-3" "Biolayer" "prenyl" "-C-X" "geranyl"
    "interferometry" "biolayer" "to 14-3-3ζ" "optimal binding to 14-3-3"
    "isothermal titration calorimetry" "to 14-3-3β" "ΔC" "pS240" "14-3-3β"
    "phosphomutants" "phosphosites" "BIM1" "phosphosite" "GST-14-3-3β" "AllA"
    "14-3-3ε" "Yaffe" "to 14-3-3" "RhoGDIs" "and 2C" "Wansink"
    "hematological maliganencies" "maliganencies" "newly-formed mispairs"
    "re-assembled" "Hombauer" "a Burkitt’s" "UOK121" "UOK143" "→G" "SETD2-"
    "SETD" "ccRCC" "hMSH" "whose SEDT2" "shSETD" "Δ340"
    "approximately 5-fold more hMutSα co-precipitating" "co-precipitating"
    "PAAP" "the hMSH6 PWWP domain efficiently pulls down histone octamers"
    "octamers" "HPRT" "H3K36" "~10:1" "hMutSβ" "insertion/deletion (ID)"
    "mispairs" "hMutSα" "100-mm" "~10-fold" "1.2 × 10" "A–bound" "mCBAP"
    "pVav1" "Garcia-Bernal" "inCBAP" "non-T-cell" "4Aii" "Transwells" "βc"
    "α4β1" "γ90" "WASP-family" "WASP" "Peyer’s" "venules" "Peyer" "**P" "CD90"
    "1 +" "shLacZ" "shCTRL" "shEGFR1" "shEGFR" "+EGF" "20EGF" "10EGF" "HRPC"
    "PCSC" "PCSCs" "Non-responsive" "non-neuronal" "α7" "nAChRs" "mAChR"
    "nAChR" "AChR" "acetylcholine" "misclassifications" "vaiant" "Egger's"
    "Faghani" "≤500" "1.00–1.40" "Del/Del" "Del/Ins" "rs17878362" "rs1042522"
    "= 1.21" "clinicians" "only COX-2 rs689466 polymorphism" "Bi" "Edelman"
    "= 1.06–2.57" "cisplatin/carboplatin" "heterozygous A/G" "G/G" "rs689465"
    "rs20417" "rs3218625" "bio" "rs689466" "95%CIs" "P = 0.009" "= 16"
    "= 0.045" "A/A" "= 146" "95%CI  " "= 0.009" "= 0.008" "G/A"
    "the double-negative mucinous ovarian cancer subtype"
    "triple-negative subtype" "Angelsio" "McAlpine" "McCaughan's"
    "each histological subtype" "IHC 2+" "LVI" "OSI" "colonscopy" "gastroscopy"
    "appendictomy" "primary invasive mEOC" "mEOC" "Malays"
    "comparatively younger" "= 0.72" "= 0.012" "= 0.12" "= 0.063" "= 0.094"
    "≥10%" "≥2" "Chr17" "Maemondo" "EFGR" "= 0.000" "thrombopoeitin"
    "just took superficial (non-deep) biopsy" "non-cirrhotics" "ticlopidine"
    "Further analysis using Wilcoxon" "non-ulcer" "enrollees"
    "the gastro-duodenal mucosa" "gastro" "Taiwan" "PUD" "Mucosa"
    "non-cirrhotic" "Non-parametric" "receptor 2" "backflow" "cannula"
    "radiobiologists" "p53-281G protein" "Gy" "BBB/BTB" "BBB" "neurospheres"
    "U1242" "S1981" "= 0.13" "Tsuiji" "EC2" "Carracedo" "Serra" "Mirzayans"
    "HECD-1" "pulmonary lymphovascular emboli" "MARY" "emboli" "Tomlinson"
    "bioactive soluble ectodomain" "the approximately 80-kDa ectodomain"
    "HER1–4" "p4E-BP1" "pmTOR" "pp70S6K"
    "resected tumors exhibited decreased HER1/2" "HER1/2" "E-cadherin/HER2 +"
    "Ectodomain" "BT474 TtzmR" "/HER2 +" "BrdUrd" "exogenous sEcad" "Najy"
    "sEcad" "an aggressive subtype" "monoclonal anti-bodies" "TtzmR" "PyMT"
    "DECMA-1" "ectodomain" "5-day" "-X–" "HER2 +" "ribosomal frameshift"
    "pseudoknot" "pseudoknots" "AcGFP" "CR110-X-AF" "non-natural" "tRNAamber"
    "GeneFrontier" "PUREfrex" "mesoporphyrin (NMM)" "NMM" "mesoporphyrin"
    "Hoff" "PEG200" "A-mutant" "uracils" "tetrad" "G-mutant" "C-mutant"
    "the U-mutant
potentially forms G-quadruplex"
    "U-mutant" "mfold" "90°C" "co-translational"
    "mRNAs likely forms RNA G-quadruplex" "cosolute" "solutes" "Hoogsteen"
    "ribosomal frameshifts" "QFP" "1 ×
10"
    "5 ×
10"
    "10
min"
    "-X-" "Δ G" "nomograms" "triage" "Greater"
    "characteristic serrated intra-glandular infoldings" "infoldings"
    "less aggressive histology" "Dacic" "malignances"
    "glandular immunophenotype" "histologic subsets" "divergent histology"
    "pure bronchioloalveolar carcinomas/adenocarcinomas" "4/6"
    "mucinous bronchioloalveolar/" "21/82" "2/35" "28/63" "=0.033"
    "mucinous histology" "included mucinous bronchioloalveolar carcinoma/"
    "colloid" "bronchial tumor resection n=1" "n=2" "n=60" "pneumonectomy"
    "lobectomy" "segmentectomy" "=120" "=35" "n=20" "=107" "=31" "re-examine"
    "re-examination" "Travis" "non-mucinous" "ra" "risten" "cytologic atypia"
    "non-solid" "cytology" "atypia" "heavier" "Non-small" "=0.52" "4/7"
    "=0.032" "=0.048" "=0.038" "1/17" "=59" "=60" "=20" "pack-years"
    "pack-year" "current/former" "=0.012" "p21  WAF1" "Deen" "Sase" "NRS"
    "Blyth" "CCRCC" "Tsang" "RUNX" "Mateo" "4 h" "p21 WAF" "1 h" "μ l"
    "re-enter" "p21  WAF" "p21 was" "-C/shGRP-R" "shGRP" "shCON" "C/" "CACGTG"
    "oral Kaposi’s" "Bonavia" "Angplt4" "shAngptl4" "shNC" "Frozen" "wtEGFR-"
    "wtEGFR" "angiopoietin-like" "-vIII" "vIII" "nu/nu" "6 h" "GLW" "WKT" "PCY"
    "SCY" "JFY" "WYW" "anti-oncogene" "Sarver" "mimics/inhibitor" "4 h"
    "Maniwa" "histologies" "re-expanded" "dyspnoea" "4-week" "Illinois" "LSI"
    "Vysis" "lymphadenopathy" "commonest" "48-year-old" "glycaemia" "DN6"
    "canonical pSmad1/5/8" "promoter/luciferase" "the tubular epithelium"
    "isolated renal proximal tubules" "vison" "Mustela"
    "distal convoluted tubules" "metanephros" "membranous nephropathy"
    "SDS/PAGE" "GCTCagac" "reduced proximal tubule"
    "cortical connecting tubule" "the proximal convoluted tubule"
    "the distal convoluted tubule" "the distal tubule" "proximal tubule"
    "Henle" "glomeruli" "glomerulus"
    "altered insulin-stimulated bicarbonate re-absorption" "re-absorption"
    "YIDL" "YVNI" "YMXM" "tubules" "tubule" "nephron"
    "Diabetic nephropathy (DN)" "n = 4" "non-diabetic" "~ 2.5-fold"
    "Transforming growth factor-β1" "uniporters" "primarily three subtypes"
    "∆ψ" "Ru360" "Rhod-2" "Δψ" "nonaggregate" "carbocyanide"
    "-tetraethylbenzimidazole" "tetraethylbenzimidazole" "xestospongin"
    "uncommon extended haplotypes" "the entire NOD2 IBD-associated haplotype"
    "rs2076756" "Leu1007fsinsC" "Dickson" "rs9922362" "AIC" "Akaike"
    "384 non-Jewish European ancestry Crohn’s"
    "non-Jewish European ancestry Crohn’s" "Ashkenazi Jewish Crohn’s"
    "the non-Jewish European ancestry samples comprising 192 Crohn’s"
    "Gln953stop" "the Ashkenazi Jewish Crohn’s"
    "40 previously unreported missense or nonsense polymorphisms" "50 Crohn’s"
    "_hap10940" "_hap8015" "non-Ashkenazi Crohn’s"
    "the three major disease-associated polymorphisms" "non-Ashkenazi"
    "these 15 Crohn’s" "The 15 Crohn’s" "chr16_hap6721" "25 Crohn’s"
    "15 Crohn’s" "chr16_hap6830" "_hap6721" "_hap6830" "chr16"
    "71 previously identified Crohn’s" "71 previously identified Crohn"
    "Immunochip" "547 non-Ashkenazi Crohn’s" "longer haplotype" "Jews"
    "Ashkenazim" "intestinal microbiota" "microbiota"
    "the downstream rare Crohn’s" "established Crohn’s" "non-Jewish" "Crohn’s"
    "Crohn" "Jewish" "Ashkenazi" "chr21" "Kos" "Hippocrates" "seborrhoea"
    "nutrisome" "overstimulate" "dFOXO" "haeme" "hyperandrogenaemia"
    "intracrine" "sebum" "Kwon" "sebocytes" "Laron" "bodybuilders"
    "postprandial hyperinsulinaemia" "insulin/insulin-like growth factor"
    "Deeper" "insulin/insulin-like growth factor-1" "IIS" "phosphoinositol-3"
    "anti-CHI3L1" "-CMV-Api6" "Api6" "-CMV-MMP12" "dxycycline" "-CMV-Stat3C"
    "secretory protein Chitinase 3-Like" "3-Like" "GeneChip" "Stat3C"
    "secretory CHI3L1" "CHI3L1" "BALF" "P = 0.001" "Co-localization" "∼3-fold"
    "C-induced" "±3" "= 0.1" "localization/activity" "midgut" "dimer/multimer"
    "VPxY" "LPxY" "WW2" "ΔPTP" "MCAT_Luc" "_Luc" "Coommasie" "adherens" "SAV"
    "Nuclear/Cytoplasmic" "elderly controls 4.41 and 5.96 ng/µl" "yrs"
    "pg/mm 2" "newer" "ng/µ" "SIRT" "≤3" "≤2" "≤24" "pyrophophates"
    "polyisoprenyl" "isoprenyl" "geranylgeranyl" "neurophil" "lamellapodia"
    "Lamellapodia" "supergene" "Capillary-like" "Type-1" "Moroccan"
    "_5723delCTCT" "co-segregation" "WXXXS" "pathogenic nsSNVs" "nsSNVs"
    "deleteriousness" "PolyPhen-2" "Pfam" "α3-helix" "Condel" "PhD-SNP"
    "Thursberg" "SIFT" "GVGD" "neutral missense" "Silico" "Millot"
    "non-pathogenic" "Diverse multifactorial likelihood algorithms" "Spurdle"
    "VUS" "HBOCS" "PolyPhen2" "cingulate" "axon" "Heschel's" "Heschel" "MMN"
    "spoken" "= 0.36" "1∶10,000" "≤0.01" "= 9" "p = 0.02" "p = 0.004" "= 0.55"
    "= 0.49" "PIK3CA- mutated" "=0.0013" "=0.0063" "PIK3CA -mutated" "P =0.028"
    "Tra2β" "co-transcriptional" "nrb" "α/β" "PTC+" "BioGPS" "unpubl" "RTqPCR"
    "RT+" "α+β+" "= 0.045" "DnMAML1" "Mastermind-like"
    "RAM domain (ΔRAM) completely abolished NICD3’s" "NICD3" "10 Gy"
    "new reagents/analytic" "MBar" "MBag" "MSo" "Guida" "Wiman" "Selivanova"
    "aptamers" "Lakin" "Gualberto" "C21orf45" "Rausch"
    "co-transcriptional activators" "Meyniel" "Anglesio" "C21Orf45"
    "the TCGA Ovarian Cancer Dataset" "cells/sample" "Trento" "Maggiore"
    "Ospedale" "Milan" "Elowe" "Cabello" "Verdaasdonk" "Valenti" "Lambert"
    "Walerych" "twofolds" "Shieh" "Leahy" "PKAR2α" "Huston" "Wong" "Harris"
    "Sengupta" "Gu" "Kruse" "Atweh" "Rubin" "mitotic MDAH" "MDAH" "Oren"
    "Muller" "Girardini" "Lavarino" "Cassinelli" "TAX" "CBDCA" "Carboplatinum"
    "Goh" "Drapkin" "Landen" "endometriod"
    "morphological characteristic and molecular alterations EOCs" "Jemal"
    "Shih" "Kurman" "Karst" "Baldassarre" "Belletti" "Cassimeris" "= 5 × 10"
    "= 0.65" "p  = 0.002" "p  = 0.01" "= 0.49" "S4C" "S4B" "co-regulators"
    "p53BEGRf" "The p53TADf simulations incorrectly estimate TΔΔS" "TΔΔS" "ΔΔH"
    "ΔΔS" "ΔH" "ΔS" "ΔΔG" "kcal/mol" "ΔG" "The last 50ns" "50ns" "MDM2mt"
    "MDM2f" "MDM2wt" "the bound fragment K24Nc" "K24Nc" "p53TADc" "RMSF"
    "p53TADf" "picoseconds" "nanosecond" "NHNOE" "1 H-" "K24Nf" "VMD" "plugin"
    "timeline" "Dyson" "isothermal titration calorimetry (ITC)" "1YCR"
    "identifier" "enthalpy" "the conformational entropy" "K24N" "ubiguitin"
    "100ns" "100 ns" "C α" "1 H" "non-stressed" "ε3/ ε3" "a 2-year" "neurode"
    "voxel" "VBM" "Voxel" "ADNI-1" "QTL" "rs6949082"
    "25 144 exonic non-synonymous SNVs" "25 234 synonymous SNVs"
    "29 236 intronic SNVs" "ts/tv" "whose APOE genotype" "WGS"
    "Late-onset Alzheimer’s" "ε3/ε3" "CARD10" "rs9610775" "the Alzheimer’s"
    "ε3" "P =0.0006" "dbSNP135" "≥30" "insertion/deletions" "2-year" "ε4"
    "p53→miR-15a/16-1→Mcl-1" "miR-15a/miR-16-1" "*1" "family/members"
    "anti-CLL" "4-month" "-Tg:p53 +" "progenies" "withp53" "miR15a"
    "leukemia-1" "lymphoma-2" "NZB" "chromosome 17p" "Chromosome 17p" "17p-"
    "miR-15a/16-1" "13q14" "p53 +" "miR-16-1" "CD5 +" "pJNK"
    "a longer deoxynucleotide" "deoxynucleotide" "HFF" "gelshift"
    "non-fibrillar" "polyphenols" "oxidisable biomolecules" "Tomilov" "Ob/Ob"
    "Ranieri" "Pavan" "ob/ob" "Bansode" "ADSc" "Aguiari" "C/EBP-" "Nishikawa"
    "sRAGE" "ligand/receptor" "Du" "overstimulates" "diabetic nephropathy"
    "blocker (ARB)" "rat cardiac myocytes" "neonatal cardiac myocytes" "PCK"
    "ischemic-preconditioning-" "PBMs" "ischemia/reperfusion" "Menini" "ONOO"
    "Migliaccio" "TIM/TOM" "Shimizu" "Judkins" "Nox" "oxidases"
    "particular hAQP8" "•−" "PKC β I" "C/EBP" "PKMζ" "broncho" "pFADD" "S16D"
    "dermine" "wth" "S16A" "systemically increased pulmonary eosinophilia"
    "interacst" "pulmonary eosinophilia" "eosinophilia" "mepoluzimab"
    "the bronchial and nasal mucosa" "Abnormally long-lived eosinophils"
    "eosinophils" "CH-11" "exuberant lung neutrophilia" "neutrophilia"
    "apoptosis/injury" "inhibitorSB203580" "CAV-1 is" "pos" "mucosae" "non-CF"
    "polypectomy" "CFTR" "fromF" "CAV-1/HO-1system" "p=0.02" "LysMCre" "ΔF508"
    "Cftr" "CAV-1is" "AdV" "decreasedIL" "inmurine" "15 h" "F508del" "6h"
    "iCORM" "15h" "4h" "CF-KOMΦs" "4 h" "CO-releasing" "guanylate" "biliverdin"
    "oxygenases (HO)" "peroxidases" "catalases" "cytochromes" "hemoproteins"
    "oxygenases" "the bacterial endotoxin lipopolysaccharide (LPS)"
    "lipopolysaccharide (LPS)" "aeruginosa (PA)" "aeruginosa"
    "secretory epithelia" "multiorgan" "HO-1/CO" "MΦs" "n=4" "mg/Kg" "2 ×10"
    "CAV-1 mRNA" "1 h" "12h" "80+" "Toll-like" "Wnt/ßcatenin"
    "expression/activity" "phosphorylation/inhibition" "mature osteoblasts"
    "huAFSC" "MFI" "spectrophotometric readouts" "ARS" "HuAFMSCs" "huMSCs"
    "huAFSCs" "trimester" "huAF" "huAFMSC" "huAFMSCs" "1 h" "20 μl" "1 × 10"
    "4 × 10" "–4 " "Marcos" "subtrates" "isopeptide" "HR23" "4xS2" "Plasmon"
    "IAA" "Iodoacetamide" "1h" "SUBE-l" "SUBE-s" "SUBE-short" "SUBE-long" "l"
    "SUBE" "SUBEs" "2–3 " "SIM3" "-x-" "SIM-a" "ILVMF" "ILVM" "PILVM" "Miteva"
    "SUSPs" "SENPs" "ψKxE" "polySUMO" "1/1000" "Non-covalent" "2–3-fold"
    "degrons" "SH2N" "pYxxM" "the last 16 h" "orthologues" "SH2C" "ΔF-box"
    "NHFs" "CaaX/SaaX" "MudPIT" "LLR" "degron" "CaaX" "non-redundant" "C/S"
    "anti-p-Tyr" "p85α" "3TP-lux" "p21Pδ2.1-luc" "SNU" "fromPten" "andPten"
    "aPten" "mesentery" "serosa" "inPten" "bearingPten" "toTgfbr2" "thePten"
    "muscularis" "cecum" "their intestinal epithelium" "Byun" "ofPten" "IKEO"
    "designatedPten" "carryingPten" "co-occurrence" "ofTgfbr2" "IEKO"
    "C57BL/6J" "= 50" "N=3" "N=4" "N=9" "andTgfbr2" "Heu" "IGR" "PASM"
    "MDA-MB-231/STAT3" "MDA-MB-231/HIF1α" "dimethyloxaloylglycine (DMOG)"
    "dimethyloxaloylglycine" "ChIP/ReChIP" "ReChIP" "STAT3C-HA" "HIFα"
    "MDA-MB-231/ARNT" "HIF1/2" "Clara" "specifc" "normoxic RCC4T" "RCC4T cells"
    "normoxic RCC4T cells" "pY705STAT3"
    "hypoxia-inducible transcription factor 1α (HIF1α) and 2α" "and 2α"
    "transcription factor 1α" "hypoxia-inducible transcription factor 1α"
    "A/protein" "head/neck" "normal squamous epithelium" "siNUT" "Omomyc"
    "bHLHZip" "mutated BD12" "BD12" "BRDT" "BRD3" "basaloid" "MSigDB" "PER-403"
    "BETi" "BRD" "omomyc" "retrotranslocate" "BADa" "NOXAa" "DKO"
    "copper/1,10-phenanthroline" "SAHBq" "A91W" "BH3a–cBAK" "micelle" "–e" "e"
    "TROSY" "SAHBa" "circular dichroism" "dichroism"
    "the amphipathic BID BH3 helix" "cBAK" "SAHB" "elices" "lpha-" "lpha" "A+B"
    "Δ 1" "Crabtree" "vemurafenib/PLX4032" "triose" "oligomycin" "FM55" "XF"
    "fluoro-2-deoxy-D-glucose" "blown" "facto" "OXPHOS" "pcDNA 3.1" "3 × 10"
    "pAgo2" "pS387" "Agos" "PLEKHM" "miR-106b" "antagomirs" "miR-151-5p"
    "KP372-1" "pS387-Ago2" "pS387-Ago2-specific" "megadalton" "antagomir"
    "FL6X" "de-repressed" "secondary re-confirmation" "weak de-repression"
    "hitter" "synergistic de-repression" "more significant de-repression"
    "an average screen-wide FLuc de-repression" "de-repression" "FLuc"
    "phosphoAgo2" "Watson" "degradome" "miR-29a" "let-7a"
    "8-oxo-deoxyguanosine" "Δmsh2" "RNH201" "FOA" "misalignments"
    "trinucleotides" "microsatellites" "rnh201" "siLUC" "RNase H1" "XmnI"
    "HindIII" "bacterial RNase HII" "HII" "rC/G"
    "the closed circular phagemids" "phagemids" "MutS" "heteroduplexes"
    "293TLα" "MutSα" "∼60%" "homoduplex" "rCMP" "C/G" "DraI" "Nt" "T/G" "SalI"
    "dNMPs" "monophosphates" "rNMPs" "rNMP" "RNase H2" "10 min" "∼1.5-fold"
    "lane 1" "62% triple-negative (11/17) IDCs" "GSE2603" "mammosphere"
    "S/G2/M" "phosphopeptide" "Erbb2/Nik" "secondary mammospheres"
    "mammospheres" "Nik" "FVB/N" "AA/+" "5-month-old" "knockin"
    "the mouse mammary epithelium" "lo" "TICs" "IDCs" "TIC" "ER/PR +" "CK5 +"
    "stem/progenitor" "PR +" "PI-4Kα" "PI-4K" "SNX5_B5" "cargos" "PtdInsP"
    "liposome" "SNX5_PX3" "_PX3" "SNXs" "invaginates" "PIPKIγi5-" "PIPKI"
    "-PIPKIγi5" "ed" "retromer" "late endosome/lysosome" "NCE" "PIPKIγi5KD"
    "i4" "PIPKIγi2" "FERM" "i2" "PIPKIγi1" "Phosphoinositides" "ILVs" "Hrs"
    "ILV" "PIPKIγi5" "i5" "Igamma" "PLCδ" "_B" "≤ 2" "_2" "YAP/TAZ" "proMMP-1"
    "inactive proMMP-1" "procollagen" "chelates" "HExxHxxGxxH" "4°C" "37°C"
    "~52kDa" "~52KDa" "Δ20" "nearly non-existent" "stromelysins" "non-smoking"
    "μmol" "10K" "normoandrogenemic hirsutism" "HpaII" "Indians" "nonrandom"
    "Gallwey" "Ferriman" "biallelic means greater" "Hickey" "Mohlig"
    "premature pubarche" "Klinefelter" "two polymorphic trinucleotide" "GGNn"
    "CAGn" "Reifenstein" "CAIS" "co-chaperones" "Xq" "antral follicles"
    "germinal epithelium" "luteum" "classic primary follicles"
    "growing preantral and antral follicles" "follicles"
    "compensatory hyperinsulinaemia" "theca" "hyperinsulinaemia" "Corbould"
    "preadypocites" "addipose" "neurokinin" "arcuate" "KNDy" "hirsutism"
    "follicle" "heterocomplex" "XCI" "biochemical hyperandrogenism"
    "hyperandrogenism" "CK2 as" "Kd" "PHOSIDA" "β4/β5" "co-operativity"
    "Orlandini" "Deshiere" "Filhol" "DSD" "HQQKKL" "HEHRKL" "caspase-3-FLAG-"
    "cleaveage" "scissile" "any isozyme-specific cellular functions/substrates"
    "CK2β" "7 × 10" "co-ordinating" "subsequent KRAS MASI" "gain/loss" "=0.015"
    "7/97" "5/22" "9/97" "/ CEP12" "#6" "/CEP12" "osteoclast-like" "3/25"
    "higher/equal" "hyperploidy" "cohesiveness" "Semi" "MASI" "P- value"
    "=0.0007" "P =0.08" "Only one mutational subtype" "67-year" "Lasota"
    "mono-allelic" "pigmentosa" "centromer"
    "the same heterozygous mutational subtype" "4/50" "53-year-old" "Bonn"
    "D419del" "_1257delGAC" "AFIP" "Stratakis" "Carney"
    "this mutational subtype" "n =24" "n =7" "=53" "n =80" "ER/PR+" "apocrine"
    "non-triple-negative" "43B2" "n = 3" "= 63" "desorption/ionization"
    "and 3+" "_A" "cavtratin" "metallopeptidases" "TGFRBI" "wk" "LV105" "6C5"
    "Ser235/236" "Thr202/Tyr204" "rs2943641 T" "nonrisk" "rs2943650"
    "rs1801278" "Finnish" "Danish" "low dietary GI" "dietary GI"
    "high dietary GL" "≤141.2" "≤0.24" "SFA" "SFA-to-carbohydrate" "IFG/T2D"
    "C-allele" "dietary GL" "GL" "dyslipidemia" "noncarriers" "T-allele"
    "rs2943641" "rs7578326" "BPRHS" "Rican" "Boston" "GOLDN" "P = 0.065"
    "= 0.048" "= 0.032" "= 0.012" "P = 0.07" "P = 0.009" "= 0.011" "= 0.0008"
    "Approximately 30 hnRNPs" "let-7f" "psiCHECK2"
    "-UTR fragments containing pentameric AUUUA" "AUUUA" "scRNA" "pCMV-p53MUT"
    "pCMV-p53WT" "CWWG" "+68" "TTPp" "human normal colonic mucosa" "pCMV"
    "NIH:OVCAR3" "DOX" "let-7 as" "HER2 Ile (I) 655Val (V) polymorphisms"
    "655Val" "497Lys" "receptor2" "Epidermal growth factor receptor1" "95%
CI"
    "pRetrosuper" "Blagosklonny" "Karin" "Damgaard" "RPL" "RNA_down#1" "-UTRs"
    "Translation_down #1" "_down#2" "_down#1" "_down #1" "PeBow" "#5" "_up#2"
    "_up#1" "oncogenicRAS" "KCW" "HCT" "TWW" "LYF" "CYH" "SJC" "Onecut"
    "G 0 /G 1 phase" "Schluter" "Hewitt" "Hsieh" "Hennige" "McCampbell"
    "Szabolcs" "Zha" "Mardilovich" "Beroukhim" "Gibson" "Byron" "Cantley"
    "Skrzypczak" "Garnis" "Bertucci" "Jass" "Iino" "The smallest amplicon"
    "gains/amplifications" "aCGH" "the recurrent 13q34 gain/amplicon"
    "gain/amplicon" "normal colonic mucosa" "Daser" "Poulogiannis" "McCaughan"
    "Kendall" "Leary" "Tonon" "Stratton" "Nowell" "Microsatellite" "Hanahan"
    "Lengauer" "13q" "Lane 1" "n = 7" "n = 62" "= 22" "EHY" "dihydroorotate"
    "nove" "deno" "Sahra" "mTOR1" "Robitaille" "DHO/ATC" "GLN/CPS" "calboxyl"
    "DHO" "CPS" "anti-CAD" "phosphoribosyl" "co-immuoprecipitaiton" "pcDNA3"
    "PBs" "76.7±19.8%" "37.9±25.5%" "2.2±0.1-fold" "precipitants"
    "3.1±1.6-fold" "1.5±0.5-fold" "1.1±0.3-fold" "2.8±0.8-fold" "Hu" "IEGs"
    "a premature termination codon (PTC)" "codon (PTC)" "±2" "±4"
    "heterozygous/hemizygous" "Prelp" "Ifi47" "nonredondant" "hencer"
    "homozygous/heterozygous" "miR-548c" "miR-301b" "f" "Thsb1" "composant"
    "WT/D54" "WT/D6" "SCF+" "TLDA" "hemi-" "Basel" "Novartis" "mesylate"
    "severals" "del557-558" "del564-581" "MiR-222" "p  = 0.01" "Δ Ct" "CC+CT"
    "TT+CT" "BeadArray" "only two polymorphisms"
    "The synonymous coding rs4986934 and rs1801132 SNPs" "approximately 50 bps"
    "Xba" "Pvu" "rs2234693" "rs9340799" "rs1801132" "rs4986934"
    "approximately 300 kbps" "kbps" "Functionally relevant polymorphisms"
    "rs2046210" "XbaI" "S/L" "rs2234670" "rs3020314" "PvuII" "STATA"
    "P  = 0.039" "= 0.87" "= 0.600" "= 0.020" "= 1.06" "P  = 0.007" "= 0.043"
    "6p25" "O -linked glycans" "glycans" "non-glycosylated" "norFN"
    "UDP-GalNAc" "manitol" "ppGalNac" "FDC6" "exoglycosidases" "Freire" "sol"
    "haptotaxis" "GalNAc" "FIII" "FII" "FI" "glycosyltranferases"
    "glycoconjugate" "epimerases" "derivates" "O -glycosylation" "rapamicin"
    "hexapeptide (VTHPGY)" "VTHPGY" "hexapeptide" "ppGalNAc" "O-glycosylation"
    "onfFN" "IIICS" "fibroblast-like" "non-randomly" "ANCNT" "WebLogo" "EMBOSS"
    "ciliate" "synteny" "ciliates" "non-FT" "Sau3A" "FT-4" "non-biotinylated"
    "PMP" "MagneSphere" "HOXD" "HOXC" "leftmost"
    "less frequently observed CFSs" "Enhancer" "FRA16D" "Carlo" "CFSs"
    "overviews" "chr17" "PFG" "42°C" "polytene" "PFGs" "exogenous nucleases"
    ":R" "G/C" "non-specifically" "GRCh37/hg19" "caSTAT" "Mallette" "HTLV"
    "Laimins" "Gunasekharan" "STAT-5 α" "CIN 612" "Monolayer" "∧E4" "STAT-5α"
    "STAT-5β" "HPV viral genomes" "the squamous epithelia" "the genital mucosa"
    "episomes" "72-hour" "non-treated" "non-telomere" "TrxG" "Trithorax" "yang"
    "yin" "Δ4-13" "Hayflick" "viii"
    "the basal and immediate suprabasal epithelium" "vi"
    "approximately 15 population doublings"
    "late passage (PD220) hTERT/E7 immortalized HFKs" "doublings"
    "hTERT-D868A HFKs" "hTERTwt" "Dataset" "N+T" "HFFs" "T/S" "HFKs" "HFK"
    "hTERT-" "hTERT" "Artandi" "mTERT" "important non-canonical"
    "cervical dysplasia" "= 50" "= 11" "2 ug/ml" "co-transduced"
    "integrated high risk papillomaviral genomes"
    "common viral genome breakpoints" "breakpoints"
    "an integrated viral genome" "the viral genome" "viral concatemers"
    "Concatemeric genomes" "Merkel" "one-ended replication-associated DSBs"
    "theta"
    "host replication and repair factors efficiently service many client viral genomes"
    "Sowd" "nucleates" "viral genomes" "Holliday" "catenates" "hemi" "Ys"
    "BamHI" "BglI" "viral DNA concatemers" "concatemers" "pMini" "BSC40"
    "deoxynucleoside" "simplex" "cellulo" "Seckel" "PIKK" "Rad3"
    "viral progeny" "ug/ml" "D-loops" "lane 1" "DNA replication/repair"
    "disassemble" "monosome" "anticodon" "TOP-like" "luminometer" "Fluc"
    "oligopyrimidine" "10.1038/ncomms2762" "pSMAD3C" "Smad3a/b" "Smad3b"
    "Smad3a" "raf1a" "ZFIN" "ectoderm" "p-Smad2/3C" "co-injection"
    "Ser253/human" "p-SMAD2C" "EIP" "Raf1a" "p-Smad2L" "p-Smad2C"
    "the endodermal marker sox32" "sqt" "sox32" "the dorsal markers goosecoid"
    "chd" "flh" "goosecoid" "morphants" "SXS" "blastulas" "endoderm"
    "mesendoderm" "** P" "10.1038/ncomms2680" "doi" "CXCL12-" "CXCL" "Gαi3"
    "Gαi1" "siELMO" "siELMO2" "Gβγ" "_FR3" "_FR2" "_FR1" "FR3" "FR2" "FR1"
    "Gαi" "siELMO1" "ELMOs" "ELMO/Dock180" "ELMO" "RhoG" "discoideum"
    "Dictyostelium" "Gαi2" "Gi" "μg " "Non-targeting" "AKT 473" "SDF-1α"
    "Tukey" "SYBR" "glyceraldehydes" "iScript" "Hercules" "Femto" "10-cm"
    "Dura" "Bio" "Zyagen" "Fugene"
    "-TGCCAAGCTTACTTAGATCGCTGACGTCACTGACGTCACTGACGTCACTGACGTCACTGA"
    "TGCCAAGCTTACTTAGATCGCTGACGTCACTGACGTCACTGACGTCACTGACGTCACTGA"
    "-TCGTGGTACCGTGACGTCAGTGACGT" "TCGTGGTACCGTGACGTCAGTGACGT" "Kpn" "ΔZIP"
    "Columbus" "Ohio" "Valencia" "QIAGEN" "Carsbad" "Jose" "WCL" "CCND1/2"
    "CCND" "2 × 10" "and 2B" "microvessels" "sensitise" "2A-CM"
    "non-irradiated" "MDA-MB-231-2A" "bEGF" "48 h" "24 h" "PDGF/PDGFR"
    "secondary DSBs" "intra-" "0–2" "MitoProt" "Bennett" "dideoxycytidine"
    "MitoTracker" "replication-associated nuclear DSBs" "This circular genome"
    "U20S" "5-bromo-2" "Koelink" "TMN" "the Pearson's" "=0.047" "P =0.007"
    "P =0.01" "=0.029" "P =0.004" "P =0.001" "P =0.002" "P =0.008" "P =0.12"
    "=44" "WZ" "7/20" "Recurrence/metastasis" "4/10" "benignancy" "mediastinum"
    "recurrence/metastasis" "postoperative recurrence/metastasis" "Masaoka"
    "=13" "= 6" "P = 0.016" "= 3" "= 8" "= 13" "16/22" "= 22" "= 10" "= 16"
    "= 5" "n = 4" "= 29" "= 14" "= 11" "= 9" "TNSY" "CYK" "interrater" "Malay"
    "non-adenocarcinomas" "SARMS" "non-adenocarcinoma" "co-exist" "p=0.004"
    "non-classical" "molecule/vitamin" "HSRE" "cytoplasmic/mitochondrial"
    "T69/71" "uncoupler" "transcripiton" "a distinct mechanism/target"
    "SBI-0089410-" "SciFinder" "ethanamine" "methoxyphenyl" "sulfonyl"
    "dimethylamino" "-4-" "adamantyl" "SBI-0087702" "uisance" "ssay-" "ssay"
    "Gö6850" "pLVX" "UACC903" "with/phosphorylation" "monotherapies"
    "SBI-0089410" "SBI" "Jun2" "~90%" "ΔNp63α-mediated" "Np63" "NEDD4-1 is"
    "NEDD4-1is" "that ΔNp63α" "Non-Silencing" "non-melanoma" "E746-A750del"
    "SFDA" "TKB" "ethynylphenyl" "± 2" "Rockford" "Pico" "TBST" "Tween"
    "Bedford" "Cl" "pH " "mmol/L" "GmbH" "Cologne" "Lonza" "Amaxa" "siERK"
    "GeneChem" "Lexington" "antitubulin" "Amgen" "Rogers" "lymphocytoblasts"
    "-b" "gc" "Casitas" "Giemsa" "a homozygous polymorphism" "rs800372" "C/C"
    "rs12951053" "rs12947788" "rs7880172" "Wallis" "ACCTGGAGGGCTGGGG"
    "Ponnaiya" "Alenquer" "Prainha" "Pará" "Monte" "CPRM" "Minerais" "Recursos"
    "Companhia" "Rytomaa" "Servomaa" "3/8" "= 0.0003" "= 8" "subarachnoid"
    "cytoarchitecture" "NDV-" "all treated EGAS" "fallen"
    "new monocyclic V4UPM progeny" "disulphate" "McGinnes"
    "treated GBMs regrew" "treated EGAS" "regrew" "PrestoBlue" "aCSF"
    "Puhlmann" "AF2240" "V4UPM" "Beaudette" "HuJ" "pathotypes" "MAKNA"
    "Malaysia" "regrowth" "EGAS" "NDV" "6-hour" "Wolfle" "pGL3-1735Luc"
    "promoterless" "CAAT" "TATA" "approximately 2100 bp" "codon (ATG)" "Wort"
    "BAY" "Yamazaki" "Lipopolysaccharide" "co-stimulatory" "MPS" "×3" "Adamson"
    "frameshifts" "the residual γH2A" "hnRNPC" "C-independent" "C-depleted"
    "-deoxyuridine" "deoxyuridine" "MMEJ" "GFP-" "co-IP" "HU" "iCLIP"
    "nucleate" "distribution/checkpoints" "S/G2" "oncopathway" "Provenge"
    "-silencd" "silencd" "re-built Muer's" "Muer" "top14" "sip14" "ofp14"
    "stabililty" "ING1 as" "homeodomain" "KinasePhos" "ys" "pathwa" "8hrs"
    "ING1B" "anti-phosphotyrosine" "ING1b" "Anti-phospho" "non-V600K" "Colomba"
    "melanin" "VE1" "Ventana" "Helicos" "amplicons (CADMA)" "CADMA"
    "approximately 3–4" "non-V600E" "Didelot" "LCN" "V600E/K601E"
    "_Lys601delinsGluGlu" "_1801delinsAGG" "dideoxy" "Cobas" "Rarer" "3–4"
    "competitive allele-specific TaqMan" "SSCA" "10 mins" "20 μl" "20 μL"
    "an essential enabler" "enabler"
    "12 publicly available cancer cell line datasets" "strocytes"
    "hosphoprotein" "Tactin" "goes" "cyto" "α2-β3" "the largest Δδ" "Δδ"
    "pTrkA" "Phosphopeptide" "vizIs18" "homolog—CeShc-1" "ga89" "hShc" "CeShc"
    "RRRKPCSRPLS" "initio" "fluorophore" "pulldowns" "ShcSH2" "ShcPTB"
    "Shc and Erk in vitro using isothermal titration calorimetry (ITC)"
    "calorimetry (ITC)" "ITC" "calorimetry" "Sos" "NPXpY" "μl" "/R"
    "anti-metastatic" "~2-fold" "the cumulative GWAS SNPs" "CTNNA3"
    "isovaleryl" "the most strongly-associated SNP" "plakophilins" "plakogobin"
    "three previously reported genes/loci" "rs2109069" "rs2076295"
    "the genome-wide significant SNPs" "rs6793295" "rs1881984"
    "the previously discovered MUC5B promoter SNP" "rs35705950"
    "genome-wide significant SNPs" "~1.6" "15q14-15" "7q22" "rs12610495"
    "= 2.4×10" "rs1278769" "rs10748858" "=2.4×10" "rs10484326" "rs2609255"
    "13q34" "10q24" "4q22" "rs868903" "11p15"
    "the 20 genome-wide significant SNPs" "another genome-wide significant SNP"
    "Neither the QQ-plot" "the QQ-plot" "QQ-plot" "QQ" "beadchip"
    "non-Hispanic" "FIP" "the alveolar interstitium" "interstitium"
    "non-European" "=0.13" "P = 0.03" "P = 0.0002" "=2.4" "= 5.5" "= 4.5×10"
    "= 3" "rs2853676" "7×10" "2×10" "N=8" "=14" "= 2.4" "3q26" "pCav1"
    "flattening/loss" "loss/flattening" "MßCD" "Shiga" "chol" "10°C" "mKate"
    "Chol" "pentaspan" "Rosen" "Nicolantonio" "Eser" "non-MIN" "anti-bodies"
    "gene targeted DKI/RBD" "DKI6" "DKI5" "DKI3" "DKI2" "Vogt" "G12V/"
    "Bardelli" "Samuels" "Shirasawa" "ductal lumens" "lumens" "grew DKI"
    "non-gene" "integrant" "DKI" "a mostly diploid karyotype" "InStat"
    "GraphPad" "Modfit" "cytometer" "LSR" "QIAamp" "AmphoPack" "Retrovirus"
    "hematoxilyn" "3×10" "Invitrolon" "NuPAGE" "Laemmli" "Nikon" "UltraPure"
    "Beckman" "cells/well" "HBSS" "Amersham" "targeted homologous integrants"
    "gDNA" "integrants" "Aldrich" "DMEM/F12" "Hyclone"
    "a mostly diploid genome" "DLD1" "number/expression" "Flachsbart"
    "Telopeptides" "nonhelical telopeptides" "telopeptides" "fibrolasts"
    "cav-1 mRNA" "hyperoxia" "alveoli" "Akt/FoxO3a" "non-phosphorylated" "DF"
    "-CAAAA" "CAAAA" "-GTAAA" "GTAAA" "∼45%" "∼85%" "α2β1" "IPF" "C/T"
    "mean ± S" "Anti-human" "Panier" "toolbelt" "Niimi" "Yu" "Sekiguchi" "Maki"
    "Dutta" "Abbas" "Naryzhny" "Skibbens" "Parnas" "Gali" "UvrD" "cerevisiae"
    "pombe" "Schizosaccharomyces" "PIP-like" "Armstrong" "Breton" "Le" "Robert"
    "overs" "Krejci" "Marini" "SRS2" "srs2" "Pfander" "Papouli" "Kubota"
    "unloader" "SIM" "co-localised" "Kanellis" "C—is" "Kupiec" "Aroya" "Majka"
    "Cohn" "Kulathu" "Mgs1/WRNIP1" "homologs" "colocalise" "D-loop" "Weston"
    "Kadonaga" "Yusufzai" "Flaus" "Ciccia" "rad6" "Motlagh" "Vijeh" "Crosetto"
    "Werner" "Branzei" "Hishida" "PCNA-associated Polη"
    "the previously uncharacterised human protein C1orf124" "protein C1orf124"
    "Mosbech" "Machida" "Juhasz" "Davis" "Centore" "Hofmann" "Cattell"
    "Pso2/Snm1" "Brendel" "Howlett" "DRWD" "Williams" "Vaziri" "Palle" "Geng"
    "Zhang" "Smogorzewska" "FANCD2/I" "Alpi" "multisubunit" "Andrea" "Shen"
    "Hendel" "Edmunds" "Sabbioneda" "Woodruff" "Acharya" "Gueranger" "UBMs"
    "Zhao" "Ramasubramanyan" "Polδ" "Sixma" "Hibbert" "Hishiki" "Bomar"
    "Trincao" "Masuda" "Zhuang" "Garg" "Polη-" "Parker" "UBZ" "Sharma" "Polκ"
    "Polι" "Polη" "Ohmori" "Plosky" "Bienko" "Kannouche" "Stelter" "McDonald"
    "RAD6" "Lehmann" "Fuchs" "Davies" "ss" "Sanchez" "Gallego" "Frampton"
    "Arakawa" "laevis" "Walden" "Ulrich" "Jentsch" "Bergink" "Hoege" "Prosperi"
    "Gilljam" "APIM" "Warbrick" "IDCL" "Moldovan" "Kelman" "Allis" "Jenuwein"
    "Kouzarides" "homologous recombination and DNA interstrand"
    "usual clinical oncology" "1/195" "2/81" "parotid" "T1N0M0" "R196X"
    "HER2 IHC 3+" "Younger" "PR+" "CORIS" "Chompret" "= 5" "= 0.0001" "≥ 40"
    "n=3" "HER2+" "non-amplified" "stemness" "eightfold" "HTLA-230" "HTLA"
    "chemokine receptor-4" "SB203580/etoposide" "dichlorofluorescein"
    "a semisolid agar" "× 10 " "15 ng/ml" "-5-" "capillary-like" "optimise"
    "intratumour" "V600DK601del" "MUP" "pyrograms" "V600DK601 del" "Wildtype"
    "Wyhlen" "Grenzach" "V600EK601del" "V600E2" "COBAS" "non-tumorous"
    "BRAF-mutated" "co-Smad4" "co-Smad" "a minimal thereshold" "thereshold"
    "the more aggressive basal subtype"
    "GATA3 not only transdifferentiates MB-231 cells"
    "the basal triple-negative MB-231 cell line transdifferentiates"
    "transdifferentiates" "TGFßeither" "heatmap" "231-Empty + TGFß"
    "231-Empty cells SR+ TGFß" "SR+" "PARTEK" "Pairwise" "TGFß1compared"
    "TGFßhas" "TGFßand" "MB-231 cells" "Emtpy" "occludens-1" "Zona" "spindloid"
    "TGFßthrough" "a dominant-negative TGFßRII" "Smads" "TGFßRI" "TGFßRII"
    "the pleiotroic cytokine transforming growth factor ß1" "ß1" "TGFß1" "TGFß"
    "**p" "oncomiR" "Braconi's" "Braconi" "suppressesp21" "suppressedp21"
    "endogenousp21" "humanp21" "p21 Waf1/Cip1" "Wu" "ofp21" "Moriishi"
    "the viral polyprotein" "the viral capsid" "capsid" "The viral genome"
    "polyprotein" "regulatesp21" "replicon" "Non-Radioactive" "Anti-HA"
    "typical osteoblastic/osteoclastic" "BV/TV" "0/4" "BV"
    "activated/inactivated" "EV" "RIA" "EE" "skeletal sequelae" "sequelae"
    "osteoblasts" "osseus" "osteoblastic/osteoclastic" "boney"
    "monocyte/macrophage" "prostate/PCa" "BALB/c" "M/" "monocyte/macrophages"
    "ΔCt" "fibloblasts" "tyosine" "metalloprotenases" "glomerulonephritis"
    "transdifferentiate" "vasculopathy" "T+P" "eosin (HE)" "SSc" "1∶5,000"
    "= 29" "β 1" "C1/C2" "Ku" "HnRNPs" "and 3AB" "PARP1−/−" "DIQ" "tripepetide"
    "UVDE" "Heterogeneous nuclear ribonucleoprotein U-like" "hnRNPs" "ation"
    "pcDNA/FRT" "500 uM" "Ser 663/675" "BT-474R" "co-administered" "iCRT"
    "iCRT3" "iCRT 3" "iCRT14" "JW55" "vitro" "inPak1" "uni" "AP1510" "Paks"
    "/Akt/mTOR" "Pak" "non-catalytic" "re-sensitize" "Co-administration" "S33Y"
    "non-induced" "R208L/K244R" "secramine" "S10A" "phosphatidylalcohol"
    "butanol" "Q72L/D49E" "Q72L/D49N" "Q72L/ΔN11"
    "a physiologically relevant readout" "p21 Waf/Cip1" "1:10,000" "ΔN"
    "p21 Waf" "Smad2/3" "Cip/Kip" "Ser104/Ser116" "Turk" "occlude" "αEF" "α6"
    "α5" "RXDL" "FxF" "FXF" "XL" "D-peptide" "DED" "1:5,000" "anti-rabbit"
    "MetaMorph" "bits/pixel" "μs/pixel" "pixels" "FV1000" "FV" "Fluoview"
    "Jolla" "Mowiol" "Novocastra" "Farmingdale" "Mitosciences" "Lincoln"
    "microgrammes" "Penzberg" "Roche" "PSMF" "Danvers" "GeneAmp" "ImProm"
    "oligodT" "RNAzolB" "FACSAria" "Biosystem" "KY" "Louisville" "GSSGme"
    "U/mL" "cell/cm 2" "Dulbecco’s" "Dulbecco" "Cashman" "Neil"
    "nucleus/cytoplasm" "cerebella" "Shan" "YG8R" "YG8" "oxidoreductase-1"
    "oxygenase-1" "aminoacids" "9q13" "the Clarke’s" "Clarke" "Friedreich’s"
    "Friedreich" "S -transferases" "the mammary organoid" "organoid"
    "the metanephric mesenchyme" "mesenchyme" "Tefft" "Lo" "monoculture"
    "TDLÚs" "monocultures" "BRENCs" "SPRY2KD3" "simple/early" "complex/late"
    "SPRY2-KD3A" "KD3" "lobular-like" "TDLU-like" "pSPRY2" "mammoplasties"
    "TDLUs" "TDLU" "lobuli" "MAKP" "EGFs" "histoarchitecture" "Co-culture"
    "spindle-like" "co-cultures" "haplo" "Beclin 1/high" "111/169" "pT2" "pN0"
    "pMX" "94/169" "X-tile" "optimal cutpoint" "clinicopathologic/prognostic"
    "immunohistochemistry (IHC)" "ovarian surface epithelium" "P  = 0.008"
    "P  = 0.002" "P  = 0.001" "= 0.011" "= 0.037" "non-ovarian"
    "the polymorphic mutation c" "All the published studies detected germline"
    "RII" "non-pathogeneity" "hMutL" "Histotypes" "IVS13+14" ".1845_1847"
    "_1847" "CGG" "TTT" "IVS8-16" "preselect" "LS-like" "Harbin" "Nangang"
    "GLOBOCAN" "AACAACA" "IVS" "=  0.65" "=  0.49" "p =  0.03" "p =  0.01"
    "= 5" "3p21" "insertion/deletion" "p  = 0.03" "=  0.02" "hyperdiploid"
    "karyotypes" "BMMNCs" "P-4EBP1" "cytopathologists" "cytospin" "BMMNC"
    "abberant" "p-4EBP1" "relapsed/refractory" "leukemia/lymphoma" "n = 3"
    "n = 7" "subG1" "n = 21" "n = 4" "non-leukemic" "PI4P" "coopt" "enviroxime"
    "pathogenic Escherichia coli"
    "a Golgi membrane-localized putative Rab33 RabGAP" "KKGW" "SYL414AAA"
    "EQHY281AAAA" "VQF255AAA" "Cardiovirus" "cardiovirus" "hepatovirus" "tein"
    "C10orf76" "VL67" "LKU" "-X-pS-X-P" "SFYW" "VL100" "VVME93" "Q-rich"
    "SS344" "phosphopeptides" "ERGIC" "Rab33A/B" "protein phosphatase 1H"
    "StrepII" "Strep" "AP-MS" "kobuviruses" "viral replication organelles"
    "kobuvirus" "klassevirus" "parechovirus" "Aichi" "TBC1D22A/B" "48 h"
    "alpha-helix" "A/B" "POPGEN" "HAPMAP"
    "all previously identified common risk SNPs" "This single uncommon SNP"
    "AATACA" "AATAAA" "surviourship" "confounder" "Harrington" "non-deleted"
    "10q" "co-deleted" "non-amplification" "oligo-"
    "a random effects model respective ORs" "Respective ORs" "non-GBM"
    "heterogeneous and different tumour subtypes" "weakest" "rs3585075"
    "rs1619016" "7p11.2" "Turcot" "rs78378222" "non-uniform" "P =8" "=63"
    "=0.90" "Thirty-one" "=0.17" "5.0 × 10" "thyroidectomy" "0.20–3.24"
    "radioiodine" "various clinicopathological subcategories" "0.53–2.76" "LNM"
    "1.40–4.55" "0.5%–2.0%" "11/1004" "45/845" "IQR"
    "several clinicopathological subcategories" "subcategories" "person-years"
    "interquartile" "Serafi" "El" "Spearman's" "Anyang" "subclass"
    "the 10 normal oesophageal epithelia" "10 normal oesophageal epithelia"
    "= 0.023" "P = 0.034" "non-immune" "re-evaluated" "P = 0.006" "PJCV" "CBON"
    "Written" "McArdle’s" "McArdle" "neutral pH" "H-bond" "pH " "Fragoso"
    "Latronico" "western Europe" "uniparental disomy" "SNP15" "SNP18" "SNP28"
    "29 intragenic SNPs" "Garritano" "SNP179" "3130XL" "IARC" "HhaI"
    "Agilent Technologies Inc" "Ilustra" "Hilden" "Qiagen" "QIAmp"
    "ventilation/carbon" "Paulo" "São" "Oxicap" "Takaoka" "oximetry" "Manatec"
    "Enduro" "PhysioFlow" "cardiography" "impedance" "Corp" "Khoden" "Nihon"
    "Jaeger" "Ergoline" "ergometer" "endocrinology" "Alegre" "Porto" "Clínicas"
    "Pyle" "Greulich" "μg/24 h" "μg/dl" "ng/dL" "μg/dL" "pubarche" "Portuguese"
    "southern and southeastern Brazil" "oligomerise" "CGC" "choroid" "LFL"
    "Brazil" "Fraumeni-like" "Li-" "Fraumeni" "5-3" "× 3" "= 2.4 " "24 h"
    "45persons" "genotypedsample" "around rs1445130" "rs1445130" "rs62090893"
    "DQ571874" "rs145241704" "their associated SNPs" "the relevant SNPs"
    "the other previously-reported associated SNPs" "Nakabayashi" "rs2048332"
    "althoughnone" "other mildly associated SNPs" "≥2%" "VEGAS" "rs7624327"
    "rs10519201" "rs218361"
    "five SNP markers (and associated genes) met genome-wide significance level:rs6894268"
    "level:rs6894268" "hadtop" "1q41"
    "genome-wide significant single-nucleotide polymorphisms" "threeGWAS"
    "throughmeta" "bulimia" "nervosa (AN)" "nervosa" "anorexia" ":rs"
    "autophagy‐lysosomal" "‐mediated" "‐lysosomal" "α MHC" "‐null" "BH3‐only"
    "‐only" "‐level" "unloading‐induced" "‐elicited" "UPS‐dependent"
    "FoxO3‐expressing" "‐proteasome" "cardiac myocyte ultrastructure"
    "‐Proteasome" "FoxO3‐Dependent" "cross‐sectional" "‐activated"
    "FoxO3‐driven" "GFP‐ LC3" "‐independent" "caFoxO3‐expressing" "NRVMs"
    "‐driven" "FoxO3‐Driven" "‐expressing" "‐positive" "‐treated"
    "quantitative RT‐PCR" "‐PCR" "phenylhydrazone (FCCP)" "TMRM" "protonophore"
    "phenylhydrazone" "S3H" "S3E" "‐membrane" "qua" "multimembrane" "17‐fold"
    "GFP‐LC3" "‐LC3" "60‐fold" "‐fold" "LC3‐II" "littermate" "‐Driven"
    "Myocardial ultrastructure" "ultrastructure" "caFoxO" "echocardiography"
    "‐course" "‐sectional" "=11" "caFoxo3" "‐tagged" "adult cardiac myocytes"
    "littermates" "MerCreMer" "‐specific" "loxP" "cardiac myocytes" "‐induced"
    "‐VAD" "myocardium" "FoxO3‐dependent" "myxovirus" "E1B" "Bcl2/adenovirus"
    "‐II" "‐dependent" "vena" "antigrowth" "atrogenes" "‐Cre" "‐Mer" "biomass"
    "caFoxO3" "S4A" "S3D" "S3C" "S1F" "S1E" "S1D" "S1C" "Hifla"
    "very modest ~1.5-fold" "nongenotoxic Ni(II)" "wheareas" "signifcant"
    "autocleavage" "apoptotis" "intactness" "nonmutagenic Ni(II)"
    "biochemical readouts" "HIF-1α-targeting prolyl hydroxylases"
    "hydroxylases" "8-oxo-dG" "Landolph" "Bierdermann" "Cd" "Ni(II)" "NiCl"
    "Ni" "anatomic subsites" "classifiers" "ISH" "multiple anatomical subsites"
    "subsites" "I/II" "2+" "1+" "1.0 × 10" "pathways/targets" "Puyol" "Kumar"
    "blockers" "fendiline" "Prestwick" "Hoeven" "cysmethynil"
    "-farnesyl-L-cysteine (BFC)" "BFC" "ICMT1" "Rce1p" "FTI-276" "BMS-214662"
    "non-peptidomimetics" "FTI-2153" "FTI-277" "BMS" "farnesyl" "CAAX"
    "thiazole" "Caliper" "IMAP" "Daouti" "-isoleucin" "isoleucin" "SOS"
    "Genentech" "DCAI" "clogP" "KRAS/GEF" "druglike" "lanperisone"
    "tolperisone" "Shaw" "T29Ht1" "oncrasin" "triphenyltetrazolium"
    "ChemBridge" "Torrance" "topologies" "≥90%" "100 mg/kg" "JBL" "FDF" "NSV"
    "polyT" "Deqin" "Baranovskaya" "whose genotypes" "QMPSF" "acurate"
    "panatimumab" "47/80" "polyA" "A13/A14" "polyadenine" "= 0.78" "= 0.70"
    "pCDNA 3.1" "n = 62" "ofKras" "Gemctabine" "1.09–4.42" "lymphnode" "CGGTC"
    "CTG" "TAA" "SSCP" "MCN" "Vater" "ampulla" "Frantz" "tubulo"
    "refractoriness" "exocrine" "P = 0.03" "P = 0.07" "skeletal myofibers"
    "coxsackie" "H3K9m2" "H3K4m3" "Genomatix" "retroviruses"
    "skeletal myofiber" "myokine" "DG" "HFD" "isoenzymes" "isoenzyme"
    "oxidative myofibers" "succinate" "glycerophosphate" "longus (EDL)"
    "plantaris" "quadriceps" "oxidative and mixed myofibers"
    "Skeletal myofibers" "myofiber" "Kodak" "chemiluminesce" "iBlot" "EU"
    "Biologicals" "Novus" "CNVE" "CNVEs" "YRI"
    "median-of-absolute-deviation (MAD)" "waviness" "LOD" "Birdseye" "PLINK"
    "≥0.01" "Taqman" "WTSIby" "Norfolk" "862,722 autosomal SNPs" "UKBS"
    "WTCCC2" "≥0.97" "=MAF" "An additional 334 UK Caucasian GOOS" "Aros" "GOOS"
    "WTSI" "PANTHER" "DAVID" "CCRaVAT" "Quanto" "typically singleton CNVs"
    "both common and rare variants around specific genes/loci" "genes/loci"
    "rare recurrent CNVs" "=0.70" "=0.16" "SCOOP" "chance p binomial = 6.10×10"
    "rs11208659" "melanocortin" "RMST" "=10" "non-random" "=0.05"
    "non-overlapping" "= 6" "rs6232" "DLEU7" "Bayes" "Yang" "polygene"
    "Speliotes" "≤0.02%" "T2D" "rs4735692" "MRPS33P4" "Metabochip" "WHR"
    "≥40kg/m 2" "≥40" "cutpoint" "absolute cutpoints" "cutpoints" "penetrant"
    "N=62" "overweight/obesity" "3B" "=0.87" "ΔMDM2" "scherichia" "45α"
    "GADD45α" "non–small" "Co-expressions" "Anti-FLAG" "MCF-10CA1d" "MCF-10"
    "the only PKC isozyme" "d" "cPKCs" "inhibition/depletion" "Gö" "cPKC"
    "4,5-dimethylthiazol-2-yl" "PKCη" "mechamisms" "ApopTag" "SK-N-BE2"
    "SK-N-DZ" "flavonoid" "4, 5-dimethylthiazol-2-yl" "mesenchymal-like"
    "Rab7·GTP" "vesicles/organelles" "bafilomycin" "·GDP" "Δ142–146" "Δ510–514"
    "D–5F" "WEAGE" "YLAGL" "TBC1D2B" "WEFHN" "OATL" "RabGAP" "A53T"
    "phagophores" "the localized activation/inactivation" "Uniprot" "TBC1D2A"
    "TBC/RabGAPs" "RabGAPs" "diphosphate (GDP)" "activation/inactivation"
    "·GTP" "TBC/RabGAP" "E–3" "/guanosine" "SR" "CUG" "Parkinson's" "Parkinson"
    "G28→A" "G15→A" "Mfold" "bonobo" "the basic minigene" "~1270nt" "~1500nt"
    "a strong 38 nucleotide consensus sequence ~1900nt" "~1900nt"
    "The basic minigene" "Invitrogen's" "GU" "Minigene" "36bp" "260nt" "VNTR"
    "minigene" "catalytically active telomerase molecules/cell"
    "molecules/cell" "minigenes" "LDS" "EW" "ZSK" "JDM" "RCG" "methylome"
    "Tischkowitz" "SNVs" "SNV" "probands" "FPC" "=C=O" "chain/number"
    "the isomeric PGs 18:1/18:2" "18:1/18:2" "ionic"
    "phosphotidylglycerol (PG)" "phosphotidylglycerol" "m/z"
    "secondary microdroplets" "-dimethylformamide" "dimethylformamide" "DESI"
    "microdroplets" "Orbitrap" "XY" "ON/4" "ON/2" "positron" "= 18" "=O" "miRs"
    "Stamatopoulos" "Guarini" "CTPS" "Vallat" "progenitor/lymphoma"
    "Targetscan" "Hsa-miR-132-5p" "mirDB" "miR-132-3p" "hsa-miR-155-5p"
    "hsa-miR-146a" "hsa-miR-132-5p" "anti-IgA" "IgA" "Krysov" "Herishanu"
    "Transcriptome" "hsa-miR-132-3p" "Binet" "IGHV" "17p" "D13S319"
    "Twenty-one" "insilico" "ADME/Tox" "LOPI 1/O9" "GLY48/Na-" "NH"
    "LOPI 1/O22" "Na-" "Oa-" "PRO81/Oa" "LOPI1/O41" "GLY48/Na" "O28" "O22"
    "ASP25" "LOPI1/O1" "GLY48/Ob" "Oa" "O93" "O47" "ASP29" "Ob" "GLY95/O"
    "LOPI1/O37" "in 1HPV" "Chem" "offline" "ARVs" "2NEF" "1HPV" "ChemSilico"
    "Ames" "ADME" "HIV-1 Nef" "co-formulation" "Kaletra" "Abbott" "Immuno"
    "Kcal/mole" "LOPI1" "binding/PI" "Multidomain" "anti-miR-27a"
    "Anti-miR-27a" "harpin" "H1299-Tet-On-p53-273H" "mut1/2" "mut1" "amplicon"
    "miR-27a/EGFR" "n =6" "pcDNA3.0" "P -value" "MiR-27a"
    "extracellular signal–regulated kinase 1/2" "mean±S" "Huang" "2 +"
    "Nardini" "non-smoker" "magnetic MicroBeads" "MicroBeads"
    "deoxynucleotidyl" "Amplex" "factor-2" "R&D" "K63/K48" "immunoproteasomes"
    "NeuT" "vacuoles" "aggregated-like" "methyladenine" "LC3II"
    "immunoproteasome" "BAG1M" "athanogen" "48 h" "=5" "BYL" "=77"
    "gene-mutated" "=0.363" "=0.552" "presence/absence" "mesothelium"
    "sarcomatoid" "n =1" "PI3KCA" "CG3" "GTG" "CACGCTCCGTTTCTCTGTTGTTAAA"
    "annexin V/FITC" "Calbiochem" "Stratagene" "MOI" "serotype" "lipofectamine"
    "CACGCCTCTTTGTCTTGTTTCGAAA" "R85A/K86A" "RKeigrmlnilnRRRR" "KKSK" "KKAR"
    "μg / ml" "/K" "HLX" "LJG" "XC" "ZL" "ZYB" "ZWM" "ZX" "FS" "WF" "SJY"
    "had shorter PFS" "the Takano’s" "Takano" "IPASS" "SATURN" "ISEL" "FISH-"
    "favorable PFS" "a significantly higher ORR" "mutation+/amplification"
    "mutation+/FISH + " "mutation+" "a longer PFS" "ECOG" "ORRs" "ORR"
    "non-smokers" "disomy" "situ" "longer PFS" "FISH + " "FISH+" "p " "xTAG"
    "= 0.005" "p = 0.007" "p = 0.003" "Perez" "adriablastin" "≥2.5" "/nucleus"
    "#4" "and 3/39" "4/23" "1/5" "in 1/49"
    "2+ presented HER2 /CEP17 ration ≥2.2" "≥2.2"
    "triple-negative (ER−/PR−/HER2−) molecular subtypes" "polysomy" "p = 0.006"
    "= 0.02" "p = 0.016" "p = 0.01" "= 0.017" "= 0.036" "p = 0.002" "p = 0.008"
    "= 0.023" "mg/m2" "miR-222" "ICAM-1 expression" "deeper" "homogenates"
    "aorta/heart" "endocardium" "MiR-221/-222" "miR-221/-222" "-222" "SC514"
    "monoctye" "HIVCM" "cardiomyopathies" "postmortem"
    "human immunodeficiency virus-1" "n = 6" "anti-retroviral" "polypeptide-1"
    "annum" "Hartgrink" "rs11121704" "Hildebrandt" "TRANSFAC" "effecter"
    "0.60–1.00" "TG/GG" "AJCC" "cardia" "rs2295080" "P  = 0.016" "P  = 0.003"
    "P =  0.008" "P  = 0.004" "= 0.65" "PI3K/Akt/mTOR" "guanyl" "Ali5"
    "multiprotein" "non-receptor" "Y484–488" "PP513LL" "Co-expression"
    "only partial co-localization" "perfect co-localization" "PLCg"
    "trisphospate" "Co-immunoprecipitation" "*10" "P-value " "co-localizes"
    "re-open" "a homozygous genotype" "a JAK2 V617F homozygous genotype"
    "Nakatake" "vera" "both heterozygous and homozygous genotypes"
    "a heterozygous genotype" "JAK2 V617F" "Harrel" "heterozygous genotype"
    "had heterozygous genotype" "homozygous V617F genotype" "splenectomy"
    "patient-years" "Guglielmelli" "Tefferi" "Campbell" "discriminant"
    "homozygous genotypes" "sHR" "a homozygous JAK2 V617F genotype" "8q 24"
    "= 0.04" "P = 0.08" "P = 0.008" "= 0.019" "co-stimulation" "Corno" "Vitale"
    "Andrei" "headgroup" "U73122" "nucleo" "Zauli" "Aisiku" "anti-gp120" "Oh"
    "foresaw" "activation/phosphorylation" "tricyclodecan-9-yl-xanthogenate"
    "±0.6" "the inactive analog U0124" "its inactive analog U0124" "U0124"
    "repopulate" "CLSM" "Isozyme" "phosphocholine" "conductance" "bisphosphate"
    "p38 MAPK" "7/12" "IEA" "neurosphere" "p21waf" "Ag" "IL-6-JAK-STAT3" "gB"
    "JAK-STAT3" "microJ" "pp72" "the viral titers" "MIEP" "AD169"
    "IL-6R-JAK-STAT3" "allograft" "tumorsphere" "tumorspheres" "PHH" "&D"
    "mutp53 is" "crossovers" "SIDD" "AB23" "Wtp53" "AA12" "AA3" "triplexes"
    "cruciforms" "quadruplexes" "CΔ30-G245S" "active CTDBS" "pCDNA" "renilla"
    "pRLSV40" "relMSP" "DO1" "AB10" "mutp53s" "CΔ30-wtp53" "scAB10"
    "repetitive intronic/intergenic mutp53BSs" "pCRII" "ICA9" "Bp5310.1-"
    "Bp5310.1" "Bp" "CTDBD" "1.5–4.5" "linMSP" "proteins: R273H" "scMSP" "pBSK"
    "pMSP" "mutp53BSs" "Δ30-G245S" "Δ30-wtp53" "At least two-times"
    "Δ30-mutp53" "two-times" "Δ30-R273H" "Δ30-R248W" "Δ30-R175H" "Δ30-wp53"
    "sc/lin" "linDNA" "AGACATGCCTAGACATGCCT" "linPGM1" "p53/DNA" "linBSK"
    "p53/DNA " "Et" "scBSK" "SCS" "scDNA" "mutp53GOFs" "trinucleotide" "non-B"
    "p53CON" "p53CD" "p53CONs" "wtp53" "Mutp53" "structure/stabilization"
    "The basic CTDBS" "CTDBS" "mutp53BS" "superhelix" "mutp53" "G/C-rich"
    "vulgaris" "dltA" "Zanger" "dermcidin" "aureus" "TT -3" "0.58–1.19"
    "= 0.52–0.90" "the nonsynonymous SNP rs28384375" "Puyo" "Jiangxi" "Henan"
    "N-nitroso" "nitroso" "ACAACG" "ACAGCG" "GTTGCG"
    "three possible haplotypes" "four possible haplotypes" "Exons" "rs28384375"
    "rs2293347" "rs1140475" "rs1050171" "rs17337023" "rs2227983" "only one SNP"
    "ACAGCA" "rs2072454" "Jiangsu" "= 0.52" "=  0.019" "= 0.61" "P =  0.036"
    "=  0.029" "=  0.050" "Methodology/Principal" "Koreans" "Cawthon’s" "CV"
    "Cawthon" "phlebotomy" "simpler" "0.8–2.5" "tertile" "SWHS" "ATBC"
    "tertiles" "= 0.03" "= 0.15" "= 0.44" "= 0.004" "= 0.032" "non-linear"
    "mol/L" "= 0.003" "Lenti-RASSF3-transfected" "HG18" "5-Aza-2"
    "adenohypophyses" "MeDIP" "48 h" "preliminary results demostrate"
    "demostrate" "rECD2" "rECD9" "rECD11-TM" "rECD" "immunodominant" "rat6"
    "rat11" "rat9" "neuT" "Balb" "xenogeneic antigen" "Balb/c" "LFDP"
    "absorbance" "EBC" "MBC" "hHER2" "phagemid" "hum7" "hum8" "hum9" "hum10"
    "hum11" "hum1" "hum2" "hum3" "hum4" "hum5" "hum6" "rHER" "hHER"
    "downmodulate" "make active immunotherapies" "immunotherapies" "kd"
    "PEPITO" "LFPD" "mIgG2A" "= 0.025" "= 0.05" "HER2 oncogene" "Atwood"
    "Lichtenberg" "CT0" "DECs" "paralogs" "the circadian interactome"
    "a global dynamic interactome" "a global interactome"
    "first assigned 2788 rhythmic PPIs" "our circadian PPI network topology"
    "KEGG" "Kyoto" "Jetlag" "Rev-Erbβ" "PPP1Cα" "Wilcoxon" "PCC" "Pearson"
    "the circadian transcriptome" "orthology" "UniHI" "Topology"
    "109 previously unknown PPIs" "CRYs" "rhythmic PPIs" "Y2H" "time-of-day"
    "precisely timed PPIs" "Cryptochrome" "a circadian interactome"
    "interactome" "circadian PPIs" "PPI" "E-box" "∼40%" "EJ-30" "Microhomology"
    "subtelomeric DSBs" "non-telomeric" "GCR" "GFP-6D1" "GFP-7F1" "EDS-6J7"
    "EDS-7F2" "EDS-6J8" "pQCXIH" "EDS"
    "interstitial or telomeric I- Sce I-induced DSBs" "pEJ5" "puro" "pEJ"
    "I-induced" "bps" "ISceI" "pGFP" "Sce" "nucleases" "microhomology"
    "interstitial DSBs" "interstitial and telomeric DSBs" "GCRs"
    "physiopathology" "Bardoni" "hnRNPE" "oocytes" "lattest" "AAUAAA"
    "FXR1P/G-quadruplex" "AREsite" "γ fragments" "G-rich"
    "two weak G-quadruplex" "webtool" "QGRS" "G-quadruplexes" "riboside (DRB)"
    "riboside" "Dichlorobenzimidazole" "siControl-" "distal γ fragment"
    "γ fragment" "the distal γfragment" "Renilla" "UTR-γ" "#830"
    "immunocomplexes" "N19Δ35" "Δ35" "nts" "efficiently re-express FXR1P Isoe"
    "WB" "Fxr1 -depleted myobasts" "myobasts" "G0/G1" "reenter" "mimosine"
    "blocker" "siFxr1-" "siFxr" "tetrazole" "intercalant" "Cdk15"
    "the previously studied subset" "siFxr1#2" "Hgf" "Fxr1-" "RefSeq" "3FX"
    "siFxr1" "motif/sequence" "ribonucleoparticles" "distrophy" "musculature"
    "Facio-Scapulo Humeral Distrophy (FSHD)" "Distrophy" "Isof" "Isoe" "Isod"
    "Isoc" "Isob" "Isoa" "FXR2" "molecular/cellular" "Fascio"
    "formation/regeneration" "G-quadruplex" "quadruplex" "Fxr1" "FXR1P" "FSHD"
    "Scapulo" "Facio" "FXR1" "paralog" "non-parametric" "17p13" "1P"
    "ubiquitin/proteasome" "a regulative uORF" "Unna" "Marie" "thrombocythemia"
    "Cq" "the mutated uORF" "typical MEN1-like" "MEN1-like"
    "resumption/reinitiation" "cistron" "C-rich" "Kozak" "neoplasias" "MENX"
    "IRES" "reinitiate" "uORFs" "uORF" "1.0×10" "38 bp" "non-covalent"
    "thrombocytes" "DLID" "VAD" "DEVD" "ANDV-" "co-incubated" "ANDV" "Andes"
    "HTNV" "Hantaan" "HFRS/HCPS" "Eurasia" "Americas" "HPS" "HCPS" "cardio"
    "** p" "Hoechst" "imager" "libitum" "Doxycyline" "U251 Ng2x" "doxycyline"
    "Rag2M" "96hr" "EGFR/Rictor" "U251" "their approximate EC 50" "Ng2x"
    "96 hrs" "96 hr" "photomicrographs" "co-silencing" "Molina" "non-invasive"
    "stem-like" "g/mL" "co-targeting" "êB" "C-type" "pseudoviruses" "g/ml"
    "titer" "immDCs" "mg/ml" "co- transfection" "anti- apoptotic"
    "this Myocd distal enhancer" "VMSC" "Mycocd" "48h" "pFoxO3a" "TGTTTTC"
    "TGTTTTA" "GenBank" "AdSpry1" "mitomycin" "AdLacZ" "AdSpry4" "CNN1 and"
    "Smartpools" "Dharmacon" "Spry1 shRNA-treated hAoSMC" "hAoSMC" "Sprys"
    "calponin-h1" "co-stained" "mg/kg/d" "0.5–1 µ" "Ateeq" "luminance" "Elisa"
    "only 2 h" "concentration/dosage" "AKT473" "IKBα" "system/cells"
    "times/week" "T/E" "= 0.048" "∼70%" "Luo" "RIPA" "Tg" "hpTau"
    "Confocal imaging suggested PINCH/hp-Tau co-localization" "Braak" "mortem"
    "* p" "approximately 72 h" "cyclohexamide" "ΔLIM1" "p " "*p" "PHF" "NFT"
    "SSPE" "panencephalitis" "subacute" "HIVE" "stressful" "neurite" "Turin"
    "Pupasuite" "rs1618536" "DSBR" "rs171140" "bulky chemical adducts"
    "intrastrand" "Mitomycine" "β4" "Sakano" "GGCTA" "rs3213255" "rs2854509"
    "rs2854501" "rs915927" "perallele" "nonmuscle" "the previous XRCC1 SNPs"
    "adjHR" "polymorphisms (SNP)" ": R" "= 449" "= 0.83" "Srivatsa" "Houle"
    "Canevari" "prophylactic bilateral adnexectomy" "ou/μm" "TM4SF" "11p11.2"
    "bilateral adnexectomy" "prophylactic adnexectomy" "p  "
    "BRCA1 mutation carriers underwent prophylactic adnexectomy" "adnexectomy"
    "prophylactic oophorectomy" "secretive organelles" "defatty" "Alk14"
    "fatty acyl" "other available human sirtuin" "enzymology" "ADPR"
    "hydrolyzing long chain fatty acyl" "theK" "succinyl"
    "long chain fatty acyl" "myristoyl" "acyl" "sirtuins" "100 ng/mL"
    "with/without" "20 μL" "+10" "/mouse" "oncomir" "oncomirs" "miR-148a"
    "NCI-60" "Bam" "GATCC" "contri" "RNA22" "miRanda" "TargetScan" "14-3-3ζ"
    "Transwell" "sulfophenyl" "carboxymethoxyphenyl" "∼80%" "yr" "NCI" "n = 6"
    "p = 0.03" "∼30%" "GBD" "DALK" "PTQ" "DSVK" "nonconsensus" "SUMOsp"
    "ΨKXD/E" "6xHis" "hexahistidine" "preimmune" "γ1" "AMPKα2" "AMPKγ1"
    "the regulatory AMPKγ1" "AMPKβ1" "Pc"
    "the SUMO-activating E1 enzyme Aos1/Uba2" "Aos1/Uba2" "SUMO2/3"
    "paralogues" "glucan" "AMPKγ" "heterotrimer" "AMPKβ2" "S2B" "S2A"
    "desmoplasia" "TFII" "isoform-1" "IXA" "RhoGTPases" "ROI" "ROIs" "Δ560–628"
    "isoform 3A" "isoform 4A" "Subsequently p190B shRNA-1" "p190A-" "p"
    "Förster" "FLARE" "#3" "shRNA-1" "∼20%" "Santagata" "4+" "7/13"
    "extent/scoring" "dural" "Mayo" "19q" "1p" "the diagnostic workup" "workup"
    "3+" "reticulum" "Gomori" "as 1+" "as 2+" "edema" "preempt" "9/2012"
    "followup" "neuropil" "patternless" "Epithelioid"
    "amplification/overexpression" "pleomorphism" "mitoses" "fascicle" "Vu"
    "Okazaki" "Tekkök" "Kepes" "Pathol" "Surg" "rhabdoid" "epithelioid" "5/9"
    "22q13" "non-tumoral" "=24" "Canada" "Australia" "16p13.11" "Human610"
    "n=50" "n=21" "relatedness" "logistic regression ORs" "dbSNP" "5/60"
    "10/645" "4/60" "8/645" "4/169" "1/114" "and 2/114" "6/169" "8/50"
    "72/1152" "19/169" "6/114" "Caucasian SOPHIA" "~0.8" "rs7322722" "=62"
    "=50" "=21" "GWA" "Iowa (SOPHIA)" "SOPHIA" "Iowa" "CNV" "QuantiSNP"
    "PennCNV" "HAPO" "Caribbean" "maternal single nucleotide polymorphisms"
    "CNVs" "=81" "=16" "p =0.004" "=3" "HapMap 3" "=28" "24-hour" "n=9" "=52"
    "Ingraham" "Huntington’s" "Huntington" "hexakisphosphate" "Lindner"
    "-triphosphate" "triphosphate" "mycIPMK" "pentakisphosphate"
    "tetrakisphosphate" "BJ" "ligand-1" "oneBRAF" "novelBRAF" "activatedBraf"
    "Robust GEMMs" "withBRAF" "GDC" "100mg/kg" "KI-67" "ofBraf"
    "cytologic dysplasia" "SSA/P" "mutantBRAF" "robust GEMM" "AdCre"
    "optical colonoscopy" "colonoscopy" "theBRAF" "VT1" "Ser240/244" "VACO432"
    "aBRAF" "differentBRAF" "ofBRAF" "adenoma/polyp" "GEMMs" "unmet" "MSSBRAF"
    "interrogateBRAF" "adenomas/polyps" "sessile" "forBRAF" "GEMM" "inBRAF"
    "P = 0.08" "= 0.017" "Penicillin/Streptomycin" "a prognostic classifier"
    "non-pCR" "stem cell-like" "luminal-like" "TNBCs" "1.52–4.49" "RCB" "TMH"
    "a mesenchymal stem-like (MSL)" "the Pietenpol’s" "Pietenpol" "NPV" "DRFS"
    "MDACC" "chemo-" "chemo" "pCR" "epidermal growth factor receptor-2"
    "classifier" "dChip" "269 operable TNBC"
    "47 neoadjuvant chemotherapy-treated TNBC (The Methodist Hospital) chosen"
    "chemoresistant" "TNBC" "Waltham" "Thermo" "BCA" "benzamidine" "Imidazole"
    "Minneapolis" "Supernatant" "Superscript" "oligo" "inoculum" "Darby"
    "Madin" "Paque" "Ficoll" "Kong" "Merck" "Dallas" "H1N1-" "Billerica"
    "the seasonal H1N1" "H9N2/G1-" "TaqMan" "OA" "lipopolysaccharide" "H5N1/97"
    "hypercytokinemia" "H9N2/G1" "type 2A" "PBMac" "H9N2" "p38MAPK"
    "non-constitutively" "Serban" "phosphorylation/activity" "H-Ras/GTP"
    "PI3K/Akt/eNOS/VASP" "PI3K/Akt/eNOS" "biotin" "acyltansferases" "palmitoyl"
    "HAECs" "AAX" "n = 1" "± 1" "resveratrol-like" "STACS" "non-modified"
    "non-physiological" "FdL" "aminomethylcoumarin" "GlobPlot" "DisEMBL" "~11%"
    "Sirt1-1-664" "C-terminally" "Sirt1-1-664 " "non-spherical"
    "the analytical ultracentrifuge" "ultracentrifuge" "Sirt" "STACs"
    "acetyllysine" "subdomains" "subdomain" "Rossmann" "Sirtuin" "polyphenol"
    "Sirtuins" "the most common histological subtype" "veliparb" "MiaPaCa"
    "co-treated" "phosphoinositol" "si" "chemoresponsiveness" "readouts"
    "Dabbs" "aneuploidy" "themodel" "myoepithelium" "glandular epithelium"
    "Böcker" "CK5+" "ofsubpopulations" "immunoprofiles"
    "weak or undetectable inxenografts" "inxenografts" "progeny" "thecomedo"
    "atypical basal-like p63+" "fromxenografts" "j" "20lesions" "g"
    "47xenografts" "bonafide" "unfractionatedcells" "fromcells" "ofcell"
    "invasive carcinoma ofxenografts" "ofxenografts" "the mammary fatpads"
    "fatpads" "p63+" "Comedo" "thexenograft" "3q27" "the mammary epithelium"
    "approximately ~15%" "~15%" "normal-like" "unfractionatedand" "ofcells"
    "noncomedo" "comedo-" "comedo" "~10%" "ER+" "= 0.038" "JGG" "Roock"
    "inefficacy" "nonresponse" "GXGXXG" "Thr58_Met72dup" "Ala59del" "Aminoacid"
    "61Leu" "P =0.000" "Sanger" "cheaper" "=0.011" "P= 0.000" "_Met72dup"
    "_Ser65dup" "1/201" "10/201" "148/201" "53/201" "6/201" "47/201" "22/59"
    "11/59" "26/59" "EMEA" "sigmoid" "FFPE" "=0.000" "P =0.034" "≤0.05"
    "= 0.000" "a composite endpoint" "CTCAE" "the phenotypic endpoints"
    "phenotypic endpoint" "endpoint" "this intronic ESR1 SNP" "duloxetine"
    "TTTA" "p=0.009" "rs2369049" "rs11849538" "non-statistically" "p=0.002"
    "p=0.007" "MA27" "rs9322336" "AIMSS" "ELPh" "endpoints" "priori"
    "multicenter" "non-steroidal" "=0.065" "p=0.008" "=0.006" "=0.0006"
    "=0.0002" "=0.08" "n=8" "3/13" "Yoshimoto" "=11/17" "=17/33"
    "prostatectomies" "21q22.3" "samII" "=0.028" "=80" "submucosa (SM)" "SM"
    "submucosa" "pg/ml" "CNM" "E-3" "GAS" "IIa/x" "pathways/mechanisms"
    "degeneration/necrosis" "Masson’s" "trichrome" "Masson" "Ctgf" "Duchenne"
    "mdx" "Phenoytpe" "eMyHC" "myofibres" "soleus" "longus" "digitorum"
    "gastrocnemius" "withdrawn" "tibialis" "hYAP1" "utero" "MCK-tTA-hYAP1 S"
    "TRE-hYAP1 S127A" "constitutively active hYAP1 S127A" "myofibre" "MCK"
    "tTA" "Yorkie" "melanogaster" "co-activation" "Teads" "Vgll1-4" "Tead1-4"
    "Tead" "TEA" "Tondu" "Vito" "Taz" "Mst1/2" "Lats1/2" "sartorius" "gracilis"
    "hYAP1 S127A" "hYAP1 S" "algorithms" "normal ovarian epithelium"
    "8,211 CIMBA" "c17orf69" "rs199533" "celiac"
    "normal ovarian surface epithelium" "pseudogenes" "rs2532348" "Wey"
    "the functionally relevant SNPs" "The most significant SNPs" "4q32.2"
    "95%CI:1.17–1.38" "rs11651753" "rs140338099" "The most significant SNP"
    "rs169201" "the most significant genotyped SNP" "rs183211" "and 3×10"
    "4×10" "rs4691139" "rs17631303" "displayed smaller P-values" "rs11196175"
    "Only imputed SNP rs12404974" "rs12404974" "only SNP rs4951407" "rs4951407"
    "diff " "rs6682208" "rs11196174" "1.09–1.20" "10q25.3" "rs2290854" "iPLEX"
    "4q32.3" "1.17–1.38" "5.4×10" "= 4" "= 0.07" "= 3×10" "16–1" "= 5×10"
    "HR = 1.12" "= 0.006" "P = 0.016" "P = 9.6×10" "1.2×10" "P -values"
    "P = 2×10" "2p22" "Xq26.3" "glucosaminyl"
    "a hypothetical protein LOC221718" "LOC221718" "6q24" "and 2p22" "12p11"
    "contained statistically significant SNPs" "subtypes " "1.20–1.53"
    "rs184577" "rs619373" "1.17–1.45" "P-value" "rs9348512" "rs17221319"
    "the previously reported SNPs" "5q11" "previously reported SNPs"
    "smaller P-values" "12p11 ( PTHLH )" "CDKN2A/B" "rs2420946" "rs311499"
    "rs16917302" "20q13" "the smallest P-values"
    "a rapid replication stage wherein 85 discovery stage SNPs" "6p24"
    "P-values" "2q35" "= 0.60" "5p12" "= 0.83" "n = 1" "= 0.33" "= 0.01"
    "= 0.35" "= 6×10" "P = 0.01" "P = 2" ": rs" "HapMap3" "= 3" "10q26"
    "= 3.9×10" "Stassi" "Ac" "meshwork" "c" "pPEA" "= 0.02" "= 0.01" "WST-1"
    "exogenous 15-PGDH/15-keto-PGE 2" "tumor suppressive 15-keto-PGE 2" "-β1"
    "non-hepatic" "PPRE" "pAd-15PGDH" "C57BL/6" "GFP" "PHDH"
    "15-PGDH/15-keto-PGE 2" "keto" "nonmetalloenzyme" "prostaglandins"
    "p21 WAF1/Cip1" "15-keto-PGE 2" "hydroxyprostaglandin" "Anti-cancer"
    "YTMA201" "Reid" "LXXLL" "S/T-P" "YTMA 201" "high/ERα" "TMA201" "Yale"
    "coomassie" "pS118ERα" "ΔCTD" "Immunocytochemistry" "pS118-ERα" "pS118"
    "peptidyl" "pS" "Co-IP" "=162" "=118" "T47D/shCtrl" "T47D/shRon"
    "immunocomplex" "shAbl" "mouse mammary epithelium"
    "a ubiquitous non-receptor tyrosine kinase" "non-receptor tyrosine kinase"
    "≤ 0.05" "=0.0027" "~40%" "fundus" "E2+P4" "non-labouring"
    "fundal myometrium" "NimbleGen" "ULTRs" "non-pregnant"
    "the pregnant myometrium" "non pregnant myometrium" "pregnant myometria"
    "non-labour" "two placental cytotrophoblast cell lines *17+" "*17+" "*14+"
    "Preterm" "Nimblegen" "ULTR" "myometria" "preterm" "myometrium" "° C" "=18"
    "Waals" "der" "αD" "Cryst" "pyranoside" "βB" "αB" "P-loop"
    "stereochemistry" "underpinnings" "-α-L-rhamnopyranoside" "kaempferol-3-O-"
    "dihydropteridinone" "kinome" "Lowry" "αC" "refracta" "Forsteronia"
    "Amazon" "rohitukine" "flavonoids" "hyperin" "A-ring" "possible conformers"
    "hydroxyls" "carbonyl" "ases" "3-hydroxy-2-phenylchromen-4-one" "NTKD"
    "aglycone" "B-ring" "non-polar" "Korean" "rs925847" "rs1416920" "rs6922111"
    "rs7616278" "rs1529672" "rs206015" "rs6820671" "rs17035917" "rs12899618"
    "rs6825998" "rs2869967" "rs1980057" "adenylate" "Phenome" "CFDP1" "CCDC38"
    "ARMC2" "DAAM2" ":r" "rs388159" "ATS" "TENOR" "CSGA" "rs7670758" "predrug"
    "/FVC" "BASALT" "TALC" "ACRN" "the previous GWASs" "ppFVC" "C10orf11" "FVC"
    "GWASs" "/forced" "structure/remodeling" "ppFEV" "P = 8" "= 5 × 10" "= 7"
    "= 9" "= 3 × 10" "hidden" "JMR" "iCasp9" "prodomain" "D/A" "protein A2"
    "Anti-apoptotic" "proven" "this intragenic enhancer" "astrocyte-like"
    "fusiform" "22RV1" "siFoxA" "anti-motility" "exomes" "co-occupies"
    "PD0322991" "AKT/S6" "MRM" "2 /2" "5 ×10" "oncogen" "EI1" "adenosyl" "Qi"
    "immunoglobulin" "co-regulation" "16-1" "Anti-miR-26a" "JQ1-" "JQ" "pri"
    "co-treatment" "anti-lymphoma" "Shelford" "Biosoft" "CalcuSyn" "miR-27a"
    "drivingMYC" "circuitry" "Velichutina"
    "rare de novo acute lymphoblastic lymphoma/leukemia" "JQ1" "DZNep"
    "anti-proliferation" "1/2" "48-hour" "co-ordinate" "hPBMC" "hPBMCs"
    "eRASSF5" "PPRY" "RPYP" "downmodulates" "CHX" "RASSF5A-Flag" "RASSF5B"
    "RASSF5A" "RASSF5C" "PPxY" "anti-HA" "non-functional" "tracheal/bronchial"
    "titers" "by≈20%" "≈20%" "ER/Golgi" "≈60 kD" "sCLU" "Hatay" "H5N1" "NHBE"
    "7AAD" "pEGFP" "H1N1" "h" "IAVs" "IAV" "10 min" "μ g/ml" "pCDNA3.1" "24 h"
    "QFAA" "proto-oncogene Vav1" "_ENREF" "Lamp2a" "QF" "QFPFKE"
    "microautophagy" "CMA" "MiTMAB" "Dyn2 Δ800-811" "timecourse"
    "a biochemical GST-PBD pulldown" "Δ800-811" "WWYY" "pulldown"
    "mechanoenzyme" "McNiven" "mechanoenzymes" "pinchases" "lamellipod"
    "re-expressing" "JAA" "CGF" "MIV" "MBM" "Melanocortin" "ets" "Oculo"
    "Solute" "IrisPlex" "*C" "Duffy" "cardiopathies" "the associated SNP"
    "the southern Mediterranean" "Mediterranean" "familiaris" "canis"
    "musculus" "norvegicus" "rattus" "domestica" "monodelphis"
    "an intronic enhancer" "rs1136410" "the associated rs3219090" "TSI"
    "Haploview" "rs7944926" "rs1485993" "GWAs" "rs12785878" "rs1801516*A"
    "0.57-1.02" "*G" "0.61-1.12" "rs12203592*T" "*T" "*A" "Only two SNPs"
    "rs1801516" "and 2q33.1" "Myxovirus" "albinism" "oculo" "45A2" "rs12203592"
    "rs3219090" "Genotypes" "11q22" "× 10" "QL" "GS" "YW" "YZ"
    "Nuclear factor (erythroid-derived 2)-like" "anti-oxidative" "dL/dt"
    "shortening/relengthening" "myocytes" "human diabetic nephropathy" "DM/Zn"
    "tunica" "Sirius" "OVE26" "normoglycemia" "Transforming growth factor -β1"
    "n = 6" "titre" "DENV" "Vietnamese" "non-DSS" "rs3132468" "rs3740360"
    "=  1.48" "invadosomes" "Schoumacher" "invadapodia" "focal adhesion-like"
    "and 3D" "Bitplane" "Imaris" "m/min" "kPa" "modulus" "rheometer" "cyan"
    "yz" "xz" "xy" "pixel" "filopodia-like" "Na"
    "a three-dimensional (3D) hydrogel" "hydrogel" "mg/mL" "Rapalogs"
    "3HOI-BA-01 suppressed mTOR’s" "a hierarchical docking algorithm"
    "algorithm" "M 3HOI-BA-01" "Cl41" "hydroxyphenyl" "Schrodinger"
    "-3-hydroxyindolin-2-one" "dioxol-5-yl" "FKB" "rapalogs" "oncology" "/Akt/"
    "3HOI-BA-01" "-2-oxobut-3-en-1-yl" "NPD" "n = 8" "F-12K" "Niu"
    "castration/ADT" "co-implantation" "IVIS" "APs" "CWR22Rv1" "AR9"
    "co-cultured" "CD34+" "CD31+" "Microvascules" "TME"
    "IL-6→androgen receptor→TGFβ→MMP9" "microvascules" "co-culture"
    "anti-leukemic" "non-stem cells" "HFS" "monosomy" "HDCAIs" "MK-8776/HDACIs"
    "AML-3" "initiation/elongation" "MK-8776/HDACI" "co-administration"
    "Synergism" "synergism" "SBHA" "MV-4-11" "ssDNA" "deletion/mutation"
    "MK-8776/vorinostat" "γH2A" "= 0.0007" "p21 WAF1" "myofibers" "VX" "onco"
    "TE617" "ERMS" "Caspase-3/7" "μg/mL" "Milyavsky" "PRAJI" "NCBI’s"
    "GSE44122" "PIQOR" "mg/m 2" "mispair" "methylated adducts" "adducts" "6BG-"
    "6BG/TMZ" "6BG" "non-transformed" "AKT1/2" "rs71595003" "rs13190087"
    "rs7734992" "the most likely functional SNPs" "browser" "UCSC" "HaploReg"
    "TFBS" "Haplotype" "non-multiplicative"
    "fresh frozen radical prostatectomy" "Biomark" "Fluidigm" "rs7449190"
    "the most significant two-marker haplotype" "rs2242652/rs7725218"
    "Haplotypes" "rs2853669" "rs7712562" "c5–1291331" "rs7725218"
    "our previously reported association rs2242652" "LR" "df"
    "Chr5:1227693-1361669" "Oncology" "Hapmap" "rs2736098" "rs401681"
    "the cancer-associated SNPs" "TL" "iPlex" "MassArray" "Sequenom" "PrCa"
    "H&E" "11q13" "re-sequencing" "at 5p15" "1p36.22" "16q12.1" "6q25"
    "available genotype" "GIANT" "nearest" "nonsynonymous SNPs"
    "no nonsynonymous SNPs" "AABC" "triple-negative status = 0.005" "rs6678914"
    "rs11075995" "rs12710696" "2p24.1" "16q12.2" "TNBCC" "5p15" "19p13.1"
    "1-Mb" "= 0.78" "= 0.005" "P = 0.039" "20q11" "rs2284378" "rs8170"
    "= 4.0 × 10" "= 4" "P = 2" "1q32" "SCCS" "Reuters" "Thomson" "SNPTEST"
    "Michigan" "rs138213197" "rs11650494" "the breast cancer–associated SNPs"
    "rs7141529" "rs11568818" "rs4245739" "the newly associated SNPs" "500-kb"
    "rs6869841" "rs3771570" "rs1270884" "non-aggressive" "the autosomal SNPs"
    "website" "CEU" "CGEMS" "= 0.001" "rs999737" "14q24" "P = 0.004" "BRCA1/2"
    "5p15.33" "rs2853677" "rs2736100" "a premature stop codon" "Jarai" "Kote"
    "= 0.33" "rs2736109" "approximately 19bp" "cg23827991" "cg06550200" "480bp"
    "INS1b" "38bp" "highly-correlated SNP rs10069690" "rs2736107"
    "myoepithelial/stem" "=4" "mammoplasty" "any risk-associated SNPs"
    "1.00–1.19" "1.06–1.31" "Stepwise" "The latter SNP"
    "The most strongly-associated SNPs" "rs3215401" "=5.8×10" "rs2736108"
    "1.016–1.023" "rs7726159" "CGPS" "conditional P =2" "1.019–1.033"
    "rs7705526" "CCHS" "ovarian cancer subtypes" "congenita" "Germline"
    "at 5p15.33" "hexanucleotide" "rs10069690" "rs2242652" "iCOGs" "8/9" "~20%"
    "P =0.07" "P =0.009" "non- significant" "4.8×10" "=0.04" "P =2" "5.8×10"
    "Wellcome" "Unigene" "GeneMANIA" "centiles" "~400kb" "~300kb" "Michailidou"
    "mucinous EOC subtypes" "publicly available datasets" "primary serous EOCs"
    "the most significant SNP" "homolog" "trithorax" "C10orf140" "=0.02"
    "C10orf114" "eQTL" "rs10828247" "rs10828252" "FAIREseq" "Genomes"
    "the one megabase region around rs1243180" "mQTL" "EOCs" "FAIRE"
    "a C-terminal amphipatic alpha helix" "ESCRT" "1000GP"
    "the most likely functional SNP"
    "The most significant risk-associated SNPs" "Pearce" "CL" "mucinous EOC"
    "serous EOC" "P=1.8×10" "=5.5" "rs757210" "rs11782652"
    "invasive serous EOC" "17q12" "rs7651446" "=0.050" "invasive EOC"
    "The associated SNP" "Goode" "19p13" "9p22" "2q31" "serous invasive EOC"
    "all invasive EOC" "Infinium" "17q21" "3q25" "8q21" "the serous subtype"
    "EOC" "=19" "rs10088218" "rs11780156" "=0.009" "P=0.03" "P=0.002" "=0.036"
    "=0.12" "Rs1243180" "=0.55" "rs1243180" "GenCall" "OCAC" "CIMBA" "URLs"
    "Bojesen" "French" "DNAJC1" "8q24" "~28%" "weakly associated SNPs" "22q12"
    "Zellweger" "the risk-associated SNPs" "rs1217396" "rs11552449" "rs3760982"
    "rs616402" "rs3760983" "rs3903072" "rs616488" "TCGA" "rs7072776" "Pharoah"
    "methylcytosine" "rs7679673" "rs9790517" "rs7904519" "rs1078985"
    "rs12493607" "interstrand" "rs132390" "the previously associated SNPs"
    "the previously associated SNP" "rs2588809" "14q24.1" "14q32.12"
    "rs17817449" "rs11814448" "rs6828523" "heterozygotes" "Genotype"
    "breast cancer–associated SNPs" "1-degree-of-freedom" "penetrance" "iCOGS"
    "iSelect" "BCAC" "n = 9" "P = 0.01" "= 0.05" "= 0.53" "= 1.12" "P = 0.007"
    "= 0.039" "= 1.06" "10p12" "= 2.2" "mPDEs" "mPDE" "C-labeled" "C-labeling"
    "NADPH/NADP +" "ME1" "ribose" "aminooxyacetate (AOA)" "AOA"
    "aminooxyacetate" "αKG" "transaminases" "KG" "LC-MS/MS" "~50%" "n=1"
    "non-canonical" "GFP-NM" "M-domains" "Naegleria"
    "The possible co-localization" "co-immunopreciptation" "Kasahara" "Gorska"
    "co-precipitated" "co-localize" "bi" "M-domain" "N-domain" "UNC"
    "Caenorhabiditis" "unc" "midzone" "UNC119a" "G 1 /S" "~1%" "rs3746319"
    "rs1868402" "ptau" "Aβ" "larger datasets"
    "The most significant associated SNP" "Aβ-42" "Aβ-40" "BACE" "rs12048230"
    "ADGC" "Naj" "P = 0.002" "rs11606345" "GCOG" "ADNI" "MMSE" "RAVLT" "Rey"
    "rs11023139" "ADAS-cog ( P < 0.05)" "covariates" "ADAS-cog" "ADAS" "Lewy"
    "the 65 most significant SNPs" "subscale" "Alzheimer’s" "= 0.08"
    "P = 0.001" "P = 0.008" "P = 0.003" "= 0.002" "= 0.0004" "Z -scores"
    "P = 7.0" "5.0×10" "non-generalization" "TagSNPs" "tagSNP" "tagSNPs"
    "only six SNPs" "BeadChip" "Illumina" "rs3922844"
    "SCN5A intronic rs3922844" "13/79" "rs97595970" "SCN5A/SCN10"
    "previously identified European Americans" "VGER"
    "abdominal aortic aneurysms" "Iceland" "aneurysms" "TMEMFF"
    "previously identified SNPs" "48/92" "rs1112795" "rs4725982" "rs6795970"
    "rs11710077" "rs4352210" "Crosslin" "EMR" "EMRs" "rs7626962" "arrhythmia"
    "Africans" "QTc" "NHGRI" "pleiotropy" "cardiac electrophysiology"
    "electrophysiology" "NUgene" "Americans" "QRS" "p = 0.01" "Non-synonymous"
    "p= 0.01" "=7" "=0.004" "= 2" "=0.03" "− 4" "= 0.03" "= 1" "OMM" "Michael"
    "-lactone" "-methylene-" "XTerra" "exomethylene" "-GCS" "GCS"
    "-glutamylcystein" "glutamylcystein" "PS" "Butturini" "racemosa" "helenium"
    "Inula" "lactones" "transducers" "lactone" "μ g" "μ mol" "IC 50" "μ L"
    "12 h" "μ g/mL" "Nemenoff" "hyperinsulinemia" "PTENs" "* P" "5.6%±2.3"
    "19.8%±4.4" "non-reducing" "bpV" "*P" "frozen" "neointima"
    "postangioplasty" "phosphorylation/activation" "carotid" "non-transfected"
    "∼50%" "Co-transfection" "12 h" "UHPLC-MS" "biofluids" "Schey" "prostasome"
    "antigen (PSA)" "CC" "overview" "workflow" "ProteinCenter" "David"
    "MaxQuant" "a Q-Exactive mass spectrometer" "electrospray" "nano"
    "spectrometer" "UHPLC" "dithiothreitol/sucrose" "trifluoroethanol" "μg/ml"
    "non-cancer" "Sentara" "Virginia" "Urology" "their associated proteomes"
    "DRE" "biomolecules" "prostasomes" "Exosomes" "Tranche" "exosomes"
    "the soluble proteome" "proteomes" "EPS" "multinucleotide" "Kondrashov"
    "Ibrahimi" "meioses" "Utah" "CEPH" "haplotypes"
    "the British family—dysmorphic facies" "facies" "the German proband's"
    "Midface" "Haas" "hotspots" "D10S1483" "rs2981432" "MboII"
    "a further four SNPs" "haplotype" "arisen" "GGCC" "and 2/3/4" "3/4" "4/5"
    "The proband's" "phalanges" "fontanelle" "forceps" "Oxford" "proband"
    "_515delGCinsTT" "IgI" "Lajeunie" "hotspot" "Muenke" "Johnson" "Rowe"
    "Hackett" "Venkataramana" "midface" "exorbitism" "German" "IgII" "British"
    "IgIII" "−4" "exon 5" "Trovato" "Mettavainio" "Isaksson" "Fujita" "TxNxMo"
    "=0.046" "=0.039" "p=0.016" "Takeuchi" "Kim" "≥or" "TxN0M1 and" "TxNxM0"
    "TxNxM1" "disconcordant" "P=1.000" "hoc" "Friedman" "TxN1-2 M1" "TxN1-2M0"
    "TxN1-2M1" "6/9" "TxN0M1" "TxN0M0" "RLNM" "HGF/Met" "chemoradiotherapy"
    "SLM" "P=0.003" "=0.016" "p=0.003" "andEGFR" "bothEGFR" "PUMAwould"
    "HER2/NeuNT" "NeuNT" "rtTA" "PUMAwas" "AKTi-1/2" "BEZ235-" "BEZ" "AKTi-1"
    "PUMAwere" "ErbB" "initiators" "iii" "ii" "multidomain" "subfamilies"
    "AstraZeneca" "and 2/2" "7/7" "OPB-51602" "OPB-31121" "JAK1/2" "P=0.001"
    "7/8" "caspase-3/7" "/Median" "non-tumorigenic" "EC 50" "EC50" "ESTF"
    "transducer" "anti-tumor" "ESFT" "H & E" "=0.001" "Caspase3/7" "PTD" "vivo"
    "CD28/TCR" "Cθ" "CBM" "phosphoinositides" "-hydroxyl" "hydroxyl"
    "PTD-PDK1-Thr-513-Asp" "PTD-PDK1-Thr-513-Ile" "20 μl" "HIF-1α/glycolysis"
    "fide" "bona" "Warburg" "Perhaps" "sublines" "shEcad" "HMLER"
    "re-programming" "L-lactate" "shEad" "ECAR" "SUM149-shHIF1α" "hrs"
    "shHIF-1α" "non-silencing" "shNS" "microvessel" "Genesets" "U133"
    "intracardiac" "Prkdcscid" "Charafe" "geneset" "Onder"
    "numerous statistically significant redundant genesets" "genesets" "shNT"
    "shECad" "non-IBC" "expressors" "cellular re-programming" "begun"
    "cell:cell adhesion" "Mary" "TMAO" "solute" "+60" "non-proline"
    "Ramachandran" "GROMOS96-53A6" "CHARMM-27" "OPLS" "CHARMM" "AMBER" "Kratky"
    "Guinier" "SAXS" "denaturant" "GuHCl" "urea" "denaturants" "CD" "coil-like"
    "helices" "Cα" "10ps" "Gerlinger" "ploidy" "exome" "pcr" "B10" "ng/uL"
    "PNAs" "amplicons" "duplexes" "12/13" "Biosystems" "COBRE" "Lifespan"
    "non-tumor" "neutropenia" "Bartek" "Jiri" "SNAG" "morpholinos" "morpholino"
    "Möröy" "Acute lymphoblastic leukemia/lymphoma" ":200-214" "Phelan"
    "Khandanpour" "ontogeny" "Wilkie" "Stephens" "nigricans" "TDII" "dysplasia"
    "Apert" "Weiss" "Jackson" "Crouzon" "Several human skeletal dysplasias"
    "dysplasias" "GeneScan" "HapMap" "NHLBI" "Exome" "URL" "HGMD" "1980G"
    "immunoglobulin-like" "IIIc" "glycosaminglycan" "25 ng/ml" "exosome"
    "coligands" "deadliness" "I/PCNA" "mIgG2a" "mIgM" "Alexa" "Dylight" "W6/32"
    "isotype" "Fc" "DAMPs" "Cohen" "an attractive potential immunotherapy"
    "immunotherapy" "deciduas" "ITIM" "Immunoglobulin" "NCRs" "ITIMS" "Antigen"
    "DAMP" "NCR" "allel" "paradentium" "Czech" "Souza" "2G/2G+2G/1G" "ORs"
    "Asians" "homozygote" "the latter two SNPs" "A/T" "A/G" "HWE" "hypurgia"
    "interstitial collagens" "collagens" "mellitus" "periodontium" "2G/2G"
    "2G/1G" "1G/1G" "heterozygote" "Google" "Medline" "=  0.023" "95%CI "
    "= 1.12" "= 1.35" "95% CI " "Xtsprouty" "mesoderm" "MEME" "HCI-2509" "HCI"
    "IC50" "chomodomain" "Venn" "Useq" "siControl" "re-expressed" "thymocytes"
    "ETW" "NuRD" "Re-expression" "co-repressors" "-4" "24 h" "Mulla"
    "nitrocamptothecin" "Fu" "Garimella" "Schuierer" "CJ" "19/124" "73/135"
    "Papanicolaou" "eosin" "ovo" "G2/M+S phase" "shRKIP" "immunocytochemistry"
    "SIL" "∼15%" "non-Hodgkin" "= 10" "anti-cancer" "microvasculature" "Lauren"
    "D7S522" "7q31.1" "Cav-1 Expression" "Cav-1 expression" "117cases"
    "Cav-1expression" "multifunctional inorganic fluorophores"
    "Fluorescent semiconductor nanocrystal QDs" "QD" "fluorophores"
    "the advanced quantum dots (QDs)-based immunofluorescence histochemistry"
    "QDs" "flask-shaped vesicular invaginations" "invaginations" "nasopharynx"
    "parenchyma" "histochemistry" "= 0.001" "10 min" "alpha-smooth muscle"
    "= 0.034" "discrepant" "an Egger’s" "Begg’s" "Egger’s" "HRs" "Ireland"
    "Tunisia" "Belgium" "Netherlands" "Sweden" "Spain" "France" "DFS" "=  7"
    "=  1.24" "=  6" "non-Asian" "95% CIs" "95% CI" "=  1" "undertaken"
    "English" "written" "Intron9" "Intron5" "conformational polymorphism"
    "heteroduplex" "_1854delAAG" "websites" "Begg" "Egger" "AC+"
    "European/Australian" "Amsterdam" "germline" "= 0.30" "= 0.78" "95%CI"
    "epigenome" "chemoresistance" "Our global transcriptome" "clinico"
    "Edmondson" "subclasses"
    "the human HCCs around 182 genes (around 15%) significanlty"
    "significanlty" "our previously published gene expression dataset"
    "sensitivitiy" "GeneGo" "Affymetrix" "Oncomine" "stepwise" "NAFLD"
    "hypoglycemia" "hepatoctyes" "sirtuin" "re-expression" "β1" "non-ligand"
    "Bauer" "chemoattractant" "Boyden" "IGF-1- induced" "ShSrc" "shSrc"
    "IGF-1-induced" "IGF-1-mediated" "15 ng/ml" "Ct" "expression/secretion"
    "100 ng/ml" "24h" "10min" "Y1234–1235" "multisubstrate" "at least 24h"
    "Dulak" "Missense" "Receptor-1" "non-stimulated" "~70%" "–4" "ABADHS"
    "CAPES" "neurobiology" "CI 95%" "namely GAB2 rs2373115" "APOE *4"
    "rs2373115" "rs6438552" "rs641120" "Polymorphisms" "pathophysiology"
    "APOE*4" "sporadic Alzheimer's" "sporadic Alzheimer" "*4" "Alzheimer's"
    "Alzheimer" "p  = 0.003" "= 7" "= 1" "= 2" "neurosurgeons" "Muoio"
    "Valeria" "CNPq" "Medicina" "Faculdade" "Fundação" "Ludwig" "FAPESP"
    "desmoplastic/extensive" "SFRP" "Yokota" "a Spearman's" "QT" "TAT" "TCT"
    "GAC" "midline" "glycogen synthase kinase-3β" "classical histology"
    "cerebellum" "missense" "OBJECTIVES" "= 0.002" "= 0.005" "ie"
    "transcription factor 1-3" "adrenalectomy" "∼10%" "∼10-fold" "G1/S"
    "anti–mir-26a" "miR26a" "oligos" "cotransfectants" "anti–miR-26a" "SENP"
    "pmirGLO" "miR-124a" "miR-181b" "b" "-124a-2" "miR-15a"
    "persistent/recurrent Cushing's" "persistent/recurrent" "Cδ (PRKCD)"
    "miR-26a" "AtT20/D16v-F2" "D16v-F2" "∼2-fold" "caspase 3/7" "KinExA"
    "multimers" "Zn" "SFM" "C2G" "DelCC" "HN" "furfuryl" "methylbutyl"
    "antiparallel" "chromatid" "DSB" "DSBs" "MRN" "Bidirectional allostery"
    "strong anti-inflammatory" "thiophene" "DBD/hinge" "co-crystal" "EREs"
    "ICI" "LxxLL" "ERE" "WAY-169916" "robotic pintool" "pintool" "isobutyl"
    "benzyl" "isomer" "allostery" "WAY-166916" "an active conformer"
    "interdomain" "titrate" "the active conformer" "the inactive conformer"
    "conformers" "celll" "Rahman" "a substantially larger dataset"
    "tumorigenesis-preventing gatekeepers" "gatekeepers"
    "endometrial endmetrioid" "endmetrioid" "the largest dataset"
    "the antecedent histotype" "histotypes" "Delair" "=8" "Alkushi" "datasets"
    "endometrioid" "BAF250a+" "p53+/BAF250a+" "p53+" "p=0.07" "=0.008"
    "extrauterine" "=2" "pleura" "=9" "directed peritoneal biopsies"
    "omentectomy" "Regional lymphadenectomy" "lymphadenectomy"
    "the diagnostic biopsy" "oophorectomy" "salpingo" "IIIC" "=1" "IIIA"
    "endometrium" "co-existence" "an uncommon histotype" "histotype"
    "p53-wt/BAF250a+, and p53-wt/BAF250a− composite immunophenotypes"
    "immunophenotypes" "relapses/recurrences" "dataset" "rarer" "n=6" "=0.07"
    "TIAN" "ZHOU" "juan" "Li" "zhi" "Hong" "Matakidou" "388Arg" "FIGO"
    "G-allele" "Rs351855" "rs351855" "1.114–2.784" "=1.562" "=0.007" "GG+GA"
    "The polymorphic genotypes" "A-allele" "Weinberg" "a nonsynonymous SNP"
    "GA" "responder" "non-responders" "rs351855G/A" "responders"
    "rs147603016G/A" "rs145302848C/G" "SPSS" "=0.002" "P =0.003" "Sato"
    "63A/73A" "Venus" "jun2" "non-phosphorylatable" "c-JunΔLZ" "A→D" "TAM67"
    "c-JunΔ3-122" "In265" "ΔLZ" "Dox" "COS-1" "carboxyl" "coworkers"
    "Mulholland" "Tamura" "Edwards" "Ouyang" "naïve" "5 × 10" "Anti-Human"
    "co-assemble" "co-assembly" "ATP/dATP" "NBDs" "conformer" "flexure"
    "interpenetrate" "WHD" "V-shaped" "the longest helix" "Situs" "un" "β8"
    "Apaf" "α32" "Rosetta" "rmsd" "cryo" "Apaf-1 CARD" "Apaf-1CARD" "helix"
    "~9.5" "zymogens" "neuro" "pc" "holo" "co-repressor" "undergoes" "CID"
    "pControl" "autoradiography" "Ci/ml" "DMEM" "pHACE" "NetphosK" "aminoacid"
    "BIO" "112 CoN" "HA-wild-type" "non- malignant" "pSuper" "pSuperPKC"
    "pSUPER" "Toker" "Addgene" "o" "pFOPFlash-" "pTOPFlash-"
    "TOPFlash/FOPFlash" "pFOPFlash" "pTOPFlash" "112CoN" "isozymes"
    "Co-localize" "Co-immunoprecipitate" "the intestinal epithelium" "PKCβII"
    "PKCθ" "proteosome" "these dysplastic ACFs"
    "carcinoma-associated colon mucosa" "ACFs" "gatekeeper"
    "Adenomatous polyposis coli ( APC )" "coli ( APC )" "non-malignant"
    "isozyme" "non- treated" "NOD/SCID" "pTCTP" "monotherapy" "togheter"
    "chromatids" "CNS" "immunophenotype" "patho" "mg/kg" "kg" "T/C"
    "histopathology" "meninges" "±1" "5×10" "iv" "kbp" "9p21" "11q23" "10p"
    "novo" "ex" "6/8" "metaphases" "Q-banding" "ANAE" "CD52" "trisomy"
    "antitumour" "karyotype" "H1650 ER" "Wallerand" "sentitve"
    "Immunohistochemistry" "Representative immunohistochemical stainings"
    "stainings" "motile" "PFS" "FACS" "H1650ER" "anti-Human" "1×10" "UV"
    "stressors" "which causes radioresistance" "non-homologous"
    "radioresistance" "the Spearman's" "Spearman" "VE-465" "R-X-X-S" "DSFLQRYS"
    "LRRLLQE" "RHIVRKRT" "H1975" "BlobFinder" "pEGFR" "PPIs" "ProtoAarray"
    "anti-apoptotic" "non-small" "Caucasians" "Amoy" "Rosell" "serial biopsies"
    "biopsies" "Maheswaran" "Turke" "miniscule" "EGFR-mutated" "biopsy" "4/66"
    "2/66" "3/66" "Armitage" "Cochran" "neoadj" "12/66" "22/66" "stageIIb"
    "IIa" "IIIa" "aberrances" "Neoadjuvant" "RFLP" "DHPLC" "Polymorphism"
    "pre-" "Chemo" "Neoadj" "neoadjuvant" "aberrancies" "non-significant"
    "Mizutani" "Bauman" "high conformational entropy" "Vekilov" "entropy"
    "Walter" "Derewenda" "Shimamura" "Charron" "Honjo" "Yamada" "Lawson"
    "Matthews" "Heinz" "packings" "pepRSK1_SQAA" "intra" "pepRSK1" "_SQAA"
    "D-­motif" "MAPKAP" "PepRSK1" "ERK2_AAGS" "Patel" "adduct" "­thiocysteine"
    "thiocysteine" "hydroxyethyl" "ERK2_AAG" "_AAG" "ERK2_AA" "_AA" "pepMKK2"
    "Henrick" "Krissinel" "PISA" "pepMNK1" "cocrystals" "D-motif" "Haar" "Liu"
    "Zhou" "Heo" "Chang" "Garai" "Petsalaki" "proteome" "Gould" "otic"
    "Russell" "Neduva" "∼0.1–10 µ" "2–3" "&E" "semi" "LipofectAMINE" "Petri"
    "non-targeting" "polyacrilamide" "°C/30" "thermocycler" "Taq" "bp"
    "NIH/Scion" "°C" "TT-3" "AA-3" "AGC" "GTC" "CTC" "Germany" "Mannheim"
    "Boehringer" "oligodt" "μg" "GIBCO" "TPBS" "Surelock" "Carlsbad"
    "Invitrogen" "Novex" "XCell" "pH" "CellTiter" "μL"
    "penicillin/streptomycin" "Rockville" "ATCC" "Temecula" "Millipore" "Diego"
    "Pharmingen" "BD" "WI" "Promega" "Abcam" "Inc" "Cruz" "USA" "Bethesda"
    "inhibition/decrease" "dorso" "days/wk" "gavage" "lysis" "CHAP" "MTS"
    "TTAGGG" "imidazole" "-dien-28-oate" "~30%" "R15-LOX" "D-x-x-D" "aptamer"
    "tobramycin" "non-specific" "wt" "pcDNA3.1" "#2" "#1" "1–3" "UTRs" "DICE"
    "r15-LOX" "organelles" "× 10" "1 × 10" "=0.0004" "adenoid" "CK5/6"
    "=0.0298" "=0.0001" "=1.402" "subtypes" "histological subtype" "cribiform"
    "subtype" "the first human tumour-associated antigen" "perhaps" "H-scores"
    "NED" "neuroendocrine" "co-activators" "ACPP" "CLGN" "prostatectomy"
    "Gleason" "paracrine" "epithelia" "-KO" "KO" "ColTKO" "fspKO" "transwell"
    "soft agar" "agar" "co-activator" "reChIP" "promoters/enhancers"
    "enhancers" "domain/zinc finger" "hr" "topology" "Siah2WT" "Siah2RM" "Rv1"
    "Subset" "TRAMPtissues" "inSiah2" "TRAMPmice" "FIH" "Siah" "LBD" "CRPCs"
    "CRPC" "clearer" "non-asthmatics" "intracranial aneurysm" "aneurysm"
    "the SNPs, rs10818854 in Han Chinese" "9q33" "Europeans" "GABRIEL" "offs"
    "4.5×10" "intergenic SNPs" "≤10" "Only 3 SNPs" "rs643507" "rs10818854"
    "non-asthmatic" "DENND1A" "p-value =2.2×10" "iso" "sds" "Rico" "Puerto"
    "Russia" "p=0.01" "the Russian study Tomsk" "the Canadian study CAPPS"
    "Tomsk" "=0.01" "=4,705" "p=0.71" "=0.71" "GINI" "CAPPS" "GACRS" "=0.059"
    "America" "Europe" "×10" "=2.2" "1q31" "co-morbidity" "kg/m 2" "rs4915551"
    "DENND1B" "European" "GWAS" "BMI" "=6" "homozygous GG genotype"
    "the homozygous GG genotype" "1.005–3.854" "rs13072632" "Hazra"
    "coinvestigators" "only SFRP3 rs7775" "rs459552" "Rozadilla" "Fernandez"
    "Spanish" "rs6485350" "rs3763511" "the heterozygous AG genotype" "GG"
    "only AXIN2 rs3923086" "≤43" "rs3923086" "df  " "homozygotes" "genotypes"
    "rs12255372" "rs3923087" "homozygous ‘AA’ genotype"
    "The heterozygous ‘AG’ genotype" "rs4135385" "only SFRP3 SNP rs7775"
    "rs7775" "genotype" "adenomatous polyposis coli (APC)" "coli (APC)" "coli"
    "Arabia" "Saudi" "Bonferroni's" "Bonferroni" "SNP" "SNPs" "EMT-like"
    "Baxter" "non-secretory" "non-myristoylated" "phospho-ERK1/2" "Profiler"
    "SABiosciences" "pcDNA3.0-GLIPR-2"
    "extracellular signal-regulated kinase 1/2" "epithelium" "related-1"
    "pcDNA3.0-GLIPR-2-transfected" "pcDNA" "diabetic nephropathy (DN)"
    "nephropathy" "related-2" "= 6" "APOBEC3" "PABL" "HERV"
    "the porcine genome" "non-primate" "the promoter-proximal first intron"
    "dN/dS" "non-synonymous" "both Old and New World primate genomes" "MLT1C"
    "MLT1K" "three unique LTRs" "eight unique LTR" "an internal LTR8A" "TRIM5s"
    "LTR87" "TRIM34s" "TRIM34-2" "UTR" "MER33" "MIR" "exons" "Catarrhini"
    "the internal LTR8A" "LTR8A" "LTR9B" "one time replication-competent ERVs"
    "ERVs" "all extant Cercopithecidae" "MacERVK" "Intron" "exon/intron"
    "Introns" "non-conserved" "the endogenous retroviral LTRs" "RepeatMasker"
    "greatest" "Widely divergent average indel" "pairwise" "indel" "outgroup"
    "dusky titi" "murinus" "Microcebus" "moloch" "Callicebus" "titi" "Saimiri"
    "jacchus" "Callithrix" "nancymaae" "Aotus" "Colobus" "colobus" "guereza"
    "mulatta" "anubis" "Papio" "leucogenys" "Nomascus" "sapiens" "NCBI"
    "LTR10D" "Hominoids" "prosimians" "multiple lineage-specific ERV LTRs"
    "indels" "Hominoid" "genic" "transposons" "ERV" "hort" "lements" "ong"
    "retrotransposons" "genomes" "Diehl" "encephalomyocarditis" "Strepsirrhini"
    "Platyrrhini" "Cercopithecidae" "hominoid" "retroviral LTRs" "LTR"
    "Haplorhini/prosimian" "the prosimian genome" "intron" "LTRs"
    "interspecies" "Haplorhini" "introns" "non-coding" "undergone" "Non-human"
    "12 of" "transforming growth factor-β1" "Caspase 3/7" "TUNEL" "Meier"
    "Kaplan" "BCLC" "H-score" "= 52" "polymorphisms" "H3K27" "p53/p73RE" "TPA"
    "the beta cutaneous HPV38" "Kaposi's" "Kaposi" "seq" "p53 RE" "hepato"
    "CTAR1" "HA" "CTAR2" "LCL" "p53RE" "RPMI/EBVΔLMP-1" "genome" "ΔLMP-1"
    "retrovirus" "pLXSN" "kD" "cutaneous HPV38" "NMSC"
    "in vitro EBV-transformed LCLs" "Hodgkin's" "EBERs" "antigens (EBNA)"
    "EBNA" "antigens" "Burkitt's" "Hodgkin" "Burkitt" "gammaherpesvirus"
    "ΔNp73" "HPV38" "transcriptome" "LCLs" "lymphoblastoid" "ΔNp73α"
    "anti-proliferative" "dimethylbenz" "A:T" "benzo" "nonredundant" "T:A"
    "Codon" "American" "African" "Angeles (UCLA)" "VICC" "Vanderbilt" "UCLA"
    "Angeles" "JHU" "Hopkins" "UCCC" "Colorado" "MGH" "Massachusetts" "MSKCC"
    "Sloan" "outputs" "G:C" "nonmalignant" "pancreatitis" "allografts" "pSTAT3"
    "NHDF" "CD11b + CD33 + CD15 +" "CD11b + CD33 +" "GI" "ELISA" "Luminex"
    "Supernatants" "T-helper" "droplets" "MDSCs" "vague early symptomatology"
    "symptomatology" "CD11b+CD33+" "supernatants" "MDSC" "stellate" "= 0.019"
    "anti-human" "FBR" "multi" "easier" "FxNPxF" "FxNPxY" "NPxY" "DEGxxS"
    "antigen" "mon" "SIVmon" "SIVmus" "SIVgsn" "red-capped mangabeys" "SIVrcm"
    "mangabeys" "guenons" "ΔFbox" "ß-TrCP1" "GYES" "IE" "NL-MB" "co-localized"
    "supernatant" "DEGYES" "BQ" "pCGCG" "NL" "DxxxLL" "CP2139" "EK505" "BQ664"
    "MB897" "TAN3" "NL4-3" "GxxS" "AP" "Yxxϕ" "subspecies" "dileucine" "Africa"
    "non-human" "orthologue" "DSGxxS" "Pts" "SIVcpz" "DW" "LX" "AKC" "APC/C"
    "G0/G1 phase" "Gal4-DBD-tagged" "anti-Gfp" "Δ3" "Δ2" "Δ1" "anti-Flag"
    "Ferrero" "Gfp" "protein phosphatase 2A" "PDXP" "centromere" "PEST"
    "4,5-triphos-phate" "10q23" "Fbw7α" "Protein phosphatase 2A" "Pre"
    "enhancer" "Δ133p53" "TAp53/Δ40p53" "Ungewitter" "somites"
    "co-transfection" "Chan" "readout" "co-transfected" "Gosh" "Courtois"
    "21PT" "frameshift" "TAp53" "a shorter lifespan" "insulinemia" "lifespan"
    "MD41p53" "OMIM" "Δ40p53/p53" "hetero" "Δ40p53" "LSYYEYDFERGRRGS"
    "KLNENHSGELWKGRW" "VDPVNKVLKGEIPWSQ" "YKERPQDVDQREAPL" "tocopherol's"
    "lipoproteins" "phenyl" "VL" "OH" "VL2" "plasmon" "Bruton's" "Bruton"
    "tocopherol-" "ΔPH-PHLPP1" "ΔPH-Akt" "ΔPH" "VE5" "hematocrit" "necropsy"
    "γ-VE5-treated" "luc" "γ-VE5-induced" "microdomain" "non-raft" "isopranyl"
    "bilayer" "co-localization" "trisphosphate" "pre" "co-recruitment"
    "anti-inflammatory" "anti-tumorigenic" "tocopherol" "Tocopherols"
    "tocopherols" "isomers" "hyper" "SHP2 modulates" "pY397-FAK" "anti-pY397"
    "iodoacetate" "pY576" "pY397" "anti-FLAG" "co-precipitation" "et" "Bryce"
    "broader" "ImageJ" "Bioptechs" "DeltaT" "Clontech"
    "approximately 20 and 30 µm/h" "approximately 35 and 45 µm/h" "m/h"
    "chosen" "SHP2localizes" "organelle" "Microsuite" "Olympus" "monolayer"
    "SHP2 is" "shRNA-2" "theMDA" "SHP2is" "BTBC" "RhoA" "HER2oncogene"
    "microdomains" "EGFR2" "Noonan" "basal-like" "phosphotyrosyl" "CRs"
    "sideroblasts" "myelodysplastic CMML" "Boyer" "Gelsi"
    "myeloproliferative CMML" "WBC" "/dL" "diploid" "TKD" "ITD" "RAEB"
    "Whitney" "27/43" "Anderson" "Texas" "CMML" "alternate codons" "myelodys"
    "subsets" "Ferlay" "oesophago" "IHC" "=0.5850" "=0.5057" "Univariate"
    "=0.034" "subserosa" "pN" "=0.005" "Yokohama" "polymorphism" "Leeds"
    "drawn" "pT" "histology" "Korea" "Asian" "multicentre" "Japanese" "=1.22"
    "3-year" "=1.21" "clinicopathology" "Genome" "greater" "codons"
    "missingness" "=1.06" "=1.12" "=1.39" "=1.53" "=728" "younger"
    "mutated codon" "-mutated" "BRAF -mutated" "- mutated" "1.13–1.66"
    "Multivariate" "=1.37" "∼62%" "-wild-type" "KRAS- wild-type" "codon"
    "KRAS -wild-type" "diphosphate" "- wild-type" "poorest" "poorer"
    "microsatellite" "Washington" "Kirsten" "5-year" "promoter/enhancer"
    "coactivates" "shAIB1" "shLuc" "BIU-87" "BIU" "=0.003" "multivariate"
    "univariate" "mucosa" "oestrogen" "20q12" "Ta" "immunohistochemistry"
    "Krüppel" "wildtype" "MZF" "−896" "−901" "CTAGTG" "TGGGGA" "−840" "−651"
    "−1064" "−1633" "−839" "−1243" "+45" "nt" "silico"
    "element binding protein-1" "subset" "resp" "immuno" "Rb"))

(DEFPARAMETER SPARSER::*BIO-CHEMICAL-HEADS-PHASE3-9601-9900*
  '(("fluid and small molecules" . SPARSER::MOLECULE)
    ("JNK and p38" . SPARSER::COLLECTION) ("gene (ERG)" . SPARSER::GENE)
    ("NF-κB, IRF-1, and AP-1" . SPARSER::COLLECTION)
    ("VCAM-1 and IRF-1" . SPARSER::COLLECTION)
    ("claudin-5 and occludin" . SPARSER::COLLECTION)
    ("ROCK and MLCK" . SPARSER::COLLECTION)
    ("endothelial claudin-5" . SPARSER::PROTEIN)
    ("PARP and caspase 3" . SPARSER::COLLECTION) ("marimastat" . SPARSER::DRUG)
    ("proteases, and pepstatin" . SPARSER::COLLECTION)
    ("CQ" . SPARSER::PROTEIN)
    ("the lysosomotropic agent chloroquine (CQ)" . SPARSER::PROTEIN)
    ("chloroquine (CQ)" . SPARSER::PROTEIN) ("claudins" . SPARSER::PROTEIN)
    ("SP600125 or SB203580" . SPARSER::COLLECTION)
    ("MEK-1, -2, and -4" . SPARSER::COLLECTION)
    ("ERK1/2, JNK1/2, and p38" . SPARSER::COLLECTION)
    ("ROCK or myosin light chain kinase (MLCK)" . SPARSER::COLLECTION)
    ("claudin-5 and TEER" . SPARSER::COLLECTION)
    ("ROCK or myosin light chain kinase" . SPARSER::COLLECTION)
    ("MLCK" . SPARSER::PROTEIN) ("the adherent monolayers" . SPARSER::PROTEIN)
    ("DEVD" . SPARSER::PROTEIN) ("p12 and p17" . SPARSER::COLLECTION)
    ("DEVD-fmk" . SPARSER::COLLECTION)
    ("ZO-1, ZO-2, occludin, or VE-cadherin" . SPARSER::COLLECTION)
    ("endothelial transmembrane junctional proteins claudin-5"
     . SPARSER::PROTEIN)
    ("ZO-1 and ZO-2" . SPARSER::COLLECTION) ("LF or PA" . SPARSER::COLLECTION)
    ("Barrier" . SPARSER::PROTEIN)
    ("other endothelial junctional complexes" . SPARSER::BIO-COMPLEX)
    ("myosin light chain (MLC), an actin-associated protein, and dependent"
     . SPARSER::COLLECTION)
    ("an actin-associated protein" . SPARSER::PROTEIN)
    ("VE-cadherin and claudin-5" . SPARSER::COLLECTION)
    ("another endothelial-specific adhesion molecule" . SPARSER::PROTEIN)
    ("LF, EF, and PA" . SPARSER::COLLECTION)
    ("ANTXR1 and ANTXR2" . SPARSER::COLLECTION)
    ("EF and LF" . SPARSER::COLLECTION) ("LF and PA" . SPARSER::COLLECTION)
    ("LF" . SPARSER::PROTEIN) ("occludin" . SPARSER::PROTEIN)
    ("toxin (LT)" . SPARSER::MOLECULE) ("SOX18" . SPARSER::PROTEIN)
    ("myosin light chain kinase" . SPARSER::PROTEIN)
    ("Claudin-5" . SPARSER::PROTEIN) ("CLDN5" . SPARSER::PROTEIN)
    ("HSP27" . SPARSER::PROTEIN) ("ML-7" . SPARSER::MOLECULE)
    ("myosin light chain" . SPARSER::PROTEIN)
    ("anthrax toxin receptor" . SPARSER::PROTEIN) ("Tie-2" . SPARSER::PROTEIN)
    ("calcium/calmodulin" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("ANTXR2" . SPARSER::PROTEIN) ("ANTXR1" . SPARSER::PROTEIN)
    ("lethal factor" . SPARSER::PROTEIN) ("VE-cadherin" . SPARSER::PROTEIN)
    ("ZO-2" . SPARSER::PROTEIN) ("claudin-5" . SPARSER::PROTEIN)
    ("tight junction" . SPARSER::PROTEIN)
    ("other neuronal components" . SPARSER::COMPONENT)
    ("AMPA" . SPARSER::MOLECULE) ("thrombospondins" . SPARSER::PROTEIN)
    ("ARF6 and Rac1" . SPARSER::COLLECTION)
    ("β-Pix-GIT1" . SPARSER::COLLECTION)
    ("GTPase-activating protein (GAP)" . SPARSER::PROTEIN)
    ("guanine nucleotide exchange factor (GEF)" . SPARSER::GEF)
    ("Scribble" . SPARSER::PROTEIN) ("scribble" . SPARSER::PROTEIN)
    ("anti-β-tubulin" . SPARSER::COLLECTION)
    ("N-cadherin and α3β4-myc nAChRs" . SPARSER::COLLECTION)
    ("a cell permeable RhoA inhibitor" . SPARSER::INHIBITOR)
    ("RhoA and its downstream effector Rho-associated protein kinase (ROCK)"
     . SPARSER::COLLECTION)
    ("its downstream effector Rho-associated protein kinase (ROCK)"
     . SPARSER::KINASE)
    ("Cadherins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LAT-A or CTCH-D" . SPARSER::COLLECTION)
    ("cortical F-actin" . SPARSER::BIO-COMPLEX)
    ("LAT-A and CTCH-D" . SPARSER::COLLECTION)
    ("RhoA and ROCK" . SPARSER::COLLECTION) ("Δ-cyto" . SPARSER::PROTEIN)
    ("N-cadherin-Δ-cyto" . SPARSER::COLLECTION)
    ("Δ-β-catenin" . SPARSER::COLLECTION) ("N-cadherin-" . SPARSER::PROTEIN)
    ("β-catenin and p120-catenin" . SPARSER::COLLECTION)
    ("N-cadherin-EGFP" . SPARSER::COLLECTION) ("α3β4" . SPARSER::PROTEIN)
    ("α3β4-myc" . SPARSER::COLLECTION)
    ("voltage-clamp" . SPARSER::PROTEIN-FAMILY)
    ("only one receptor subunit" . SPARSER::FRAGMENT)
    ("this smaller fragment" . SPARSER::FRAGMENT)
    ("α3 and β4" . SPARSER::COLLECTION) ("α3" . SPARSER::PROTEIN)
    ("the α3-myc and β4-myc proteins" . SPARSER::COLLECTION)
    ("70016 Da and 67559 Da" . SPARSER::COLLECTION)
    ("β4-myc" . SPARSER::COLLECTION) ("α3-myc" . SPARSER::COLLECTION)
    ("Subunits" . SPARSER::PROTEIN)
    ("filamentous (F) actin" . SPARSER::PROTEIN)
    ("RhoA, and ROCK" . SPARSER::COLLECTION)
    ("postsynaptic scaffolding proteins" . SPARSER::PROTEIN)
    ("synaptogenic molecules" . SPARSER::MOLECULE)
    ("synaptic components" . SPARSER::COMPONENT)
    ("p120-catenin and β-catenin" . SPARSER::COLLECTION)
    ("disulphide" . SPARSER::MOLECULE) ("cys" . SPARSER::AMINO-ACID)
    ("five homologous subunits" . SPARSER::PROTEIN)
    ("apical F-actin" . SPARSER::BIO-COMPLEX)
    ("latrunculin A and cytochalasin D" . SPARSER::COLLECTION)
    ("N-cadherin and α3β4" . SPARSER::COLLECTION)
    ("the synaptic complex" . SPARSER::BIO-COMPLEX)
    ("nicotinic receptors" . SPARSER::PROTEIN)
    ("Neuronal nicotinic acetylcholine receptors" . SPARSER::RECEPTOR)
    ("thrombospondin 1" . SPARSER::PROTEIN) ("ARF6" . SPARSER::PROTEIN)
    ("ARF family" . SPARSER::PROTEIN) ("GIT1" . SPARSER::PROTEIN)
    ("β-Pix" . SPARSER::PROTEIN) ("N-cadherins" . SPARSER::PROTEIN)
    ("1–2 µ" . SPARSER::PROTEIN) ("NaF 1" . SPARSER::PROTEIN)
    ("CHRNB4" . SPARSER::PROTEIN) ("CHRNA3" . SPARSER::PROTEIN)
    ("LAT-A" . SPARSER::DRUG) ("IL2" . SPARSER::PROTEIN)
    ("interleukin 2" . SPARSER::PROTEIN) ("B-1" . SPARSER::PROTEIN)
    ("L-ornithine" . SPARSER::DRUG) ("glutamate receptor" . SPARSER::PROTEIN)
    ("Arp3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("cytochalasin D" . SPARSER::DRUG)
    ("latrunculin A" . SPARSER::DRUG) ("in Chinese hamster" . SPARSER::PROTEIN)
    ("β4" . SPARSER::PROTEIN) ("aldosterone and zona" . SPARSER::COLLECTION)
    ("c-Myc, VEGF and IGF-II" . SPARSER::COLLECTION)
    ("lipoidal substances" . SPARSER::SUBSTANCE)
    ("sorafenib (a VEGFR tyrosine kinase inhibitor) and everolimus (an mTOR inhibitor)"
     . SPARSER::COLLECTION)
    ("VEGF and the VEGFR" . SPARSER::COLLECTION)
    ("NAG and PA" . SPARSER::COLLECTION) ("NAG" . SPARSER::PROTEIN)
    ("VEGF and cyclin D" . SPARSER::COLLECTION)
    ("protein kinase B (PKB)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("monolayers" . SPARSER::PROTEIN) ("VEGF/β-actin" . SPARSER::COLLECTION)
    ("p-S6/β-actin" . SPARSER::COLLECTION)
    ("p-AKT/β-actin" . SPARSER::COLLECTION)
    ("only faint protein" . SPARSER::PROTEIN)
    ("Aldosterone" . SPARSER::PROTEIN) ("group and PA" . SPARSER::COLLECTION)
    ("phospho-AKT (p-AKT), phospho-mTOR (p-mTOR), phospho-S6 (p-S6) and vascular endothelial growth factor (VEGF)"
     . SPARSER::COLLECTION)
    ("p-S6 and VEGF" . SPARSER::COLLECTION) ("renin" . SPARSER::PROTEIN)
    ("p-mTOR" . SPARSER::COLLECTION) ("aldosterone" . SPARSER::PROTEIN)
    ("PKB or AKT" . SPARSER::COLLECTION) ("IGF-II" . SPARSER::PROTEIN)
    ("hypoxia-inducible factor-1" . SPARSER::PROTEIN)
    ("l-glutamine" . SPARSER::MOLECULE) ("TDGF-1" . SPARSER::PROTEIN)
    ("teratocarcinoma-derived growth factor-1" . SPARSER::PROTEIN)
    ("sphingosine-1-phosphate" . SPARSER::DRUG)
    ("mineralocorticoid receptor" . SPARSER::PROTEIN)
    ("TNF-a and IGF" . SPARSER::COLLECTION)
    ("ARF/MDM2/p53" . SPARSER::COLLECTION) ("TwistS" . SPARSER::PROTEIN)
    ("Twist1-siRNA" . SPARSER::COLLECTION) ("HBE" . SPARSER::PROTEIN)
    ("Twist1 and Twist2" . SPARSER::COLLECTION)
    ("share high structural homology" . SPARSER::PROTEIN)
    ("proteins, Twist1 and Twist2" . SPARSER::COLLECTION)
    ("-CANNTG-3" . SPARSER::COLLECTION) ("bHLH" . SPARSER::PROTEIN)
    ("Twist1 or N-cadherin" . SPARSER::COLLECTION)
    ("Twist1 and N-cadherin" . SPARSER::COLLECTION)
    ("a putative oncogene and a key regulator" . SPARSER::COLLECTION)
    ("TNF-a" . SPARSER::PROTEIN) ("AC-3" . SPARSER::PROTEIN)
    ("T-3" . SPARSER::PROTEIN) ("twist1" . SPARSER::PROTEIN)
    ("Ala-Val" . SPARSER::MOLECULE) ("putative oncogene" . SPARSER::PROTEIN)
    ("A-T, and perhaps" . SPARSER::COLLECTION)
    ("Top1 and a fragment" . SPARSER::COLLECTION) ("XPF" . SPARSER::PROTEIN)
    ("mannitol or NAC" . SPARSER::COLLECTION)
    ("cysteine (NAC)" . SPARSER::MOLECULE) ("mannitol" . SPARSER::PROTEIN)
    ("the ‘classical’ ACA" . SPARSER::PROTEIN) ("MACA" . SPARSER::PROTEIN)
    ("camptothecin (CPT)" . SPARSER::DRUG)
    ("murine cortical astrocytes" . SPARSER::PROTEIN)
    ("CPT" . SPARSER::PROTEIN) ("SSB" . SPARSER::PROTEIN)
    ("polynucleotide kinase (PNK)" . SPARSER::PROTEIN)
    ("TDP1 and DNA" . SPARSER::COLLECTION) ("PNK" . SPARSER::PROTEIN)
    ("Top1 and DNA" . SPARSER::COLLECTION) ("Top1-CC" . SPARSER::COLLECTION)
    ("neural Top1-CCs" . SPARSER::COLLECTION) ("Atm" . SPARSER::PROTEIN)
    ("Top1-SSBs" . SPARSER::COLLECTION) ("Top1-CCs" . SPARSER::COLLECTION)
    ("CCs" . SPARSER::PROTEIN)
    ("tyrosyl DNA phosphodiesterase 1 (TDP1) and human hereditary ataxia"
     . SPARSER::COLLECTION)
    ("human hereditary ataxia" . SPARSER::PROTEIN)
    ("type VII" . SPARSER::PROTEIN) ("Tdp1" . SPARSER::PROTEIN)
    ("AT-1" . SPARSER::PROTEIN) ("Cullin 4B" . SPARSER::PROTEIN)
    ("ISG15" . SPARSER::PROTEIN) ("anti-oxidants" . SPARSER::DRUG)
    ("Ataxia Telangiectasia mutated" . SPARSER::PROTEIN)
    ("A–T" . SPARSER::PROTEIN) ("SCAN1" . SPARSER::PROTEIN)
    ("spinocerebellar ataxia" . SPARSER::PROTEIN) ("Top1" . SPARSER::PROTEIN)
    ("TDP1" . SPARSER::PROTEIN)
    ("tyrosyl DNA phosphodiesterase 1" . SPARSER::PROTEIN)
    ("SRC/JAK/STAT3" . SPARSER::COLLECTION)
    ("SRC, JAK, and STAT3" . SPARSER::COLLECTION)
    ("inhibitors and effectors" . SPARSER::COLLECTION)
    ("MEK and SRC" . SPARSER::COLLECTION)
    ("RTKs, Src, and JAKs" . SPARSER::COLLECTION)
    ("MAPK and STAT3" . SPARSER::COLLECTION)
    ("cadherins and integrins" . SPARSER::COLLECTION)
    ("growth factors and cytokine" . SPARSER::COLLECTION)
    ("IGF-R, PDGF-R, and FGF-R" . SPARSER::COLLECTION)
    ("IGFR/PI3K" . SPARSER::COLLECTION) ("BRAF or MEK" . SPARSER::COLLECTION)
    ("a BRAF inhibitor instead of a MEK inhibitor" . SPARSER::COLLECTION)
    ("RTKs and Src" . SPARSER::COLLECTION)
    ("ERK and STAT3" . SPARSER::COLLECTION)
    ("Src, FAK, and STAT3" . SPARSER::COLLECTION)
    ("Src/STAT3" . SPARSER::COLLECTION) ("kinase (JAK)" . SPARSER::KINASE)
    ("IGF-I/IGF-IR" . SPARSER::COLLECTION)
    ("The Erythropoietin-producing hepatocellular kinase A2"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EphA" . SPARSER::PROTEIN-FAMILY) ("Erythropoietin" . SPARSER::PROTEIN)
    ("IGFR and PDGFR" . SPARSER::COLLECTION)
    ("insulin receptor, and insulin-like growth factor 1 receptor"
     . SPARSER::COLLECTION)
    ("UO126 or AZD6244" . SPARSER::COLLECTION)
    ("UO126 and AZD6244" . SPARSER::COLLECTION)
    ("BRAF, MEK, RAS, or PI3K" . SPARSER::COLLECTION)
    ("COT" . SPARSER::PROTEIN) ("BRAFV" . SPARSER::PROTEIN)
    ("RAS and RAF" . SPARSER::COLLECTION)
    ("RTKs, SRC, or STAT3" . SPARSER::COLLECTION)
    ("RTKs, Src, FAK, and STAT3" . SPARSER::COLLECTION)
    ("Src/FAK/STAT3" . SPARSER::COLLECTION)
    ("MEK and BRAF" . SPARSER::COLLECTION) ("MEK2" . SPARSER::PROTEIN)
    ("FGF-R" . SPARSER::PROTEIN) ("PDGF-R" . SPARSER::PROTEIN)
    ("IGF-R" . SPARSER::PROTEIN) ("VEGF-R" . SPARSER::PROTEIN)
    ("SB590885" . SPARSER::DRUG) ("N- cadherin" . SPARSER::PROTEIN)
    ("IGF-I" . SPARSER::PROTEIN)
    ("insulin-like growth factor 1 receptor" . SPARSER::PROTEIN)
    ("platelet-derived growth factor receptor beta" . SPARSER::PROTEIN)
    ("HGF receptor" . SPARSER::PROTEIN) ("PDGFR β" . SPARSER::PROTEIN)
    ("TP53 and MDM2" . SPARSER::COLLECTION)
    ("p53, K-ras, PTEN and β-catenin" . SPARSER::COLLECTION)
    ("Ser/Ser" . SPARSER::COLLECTION)
    ("the SNP309 G allele and the TP53 Arg72Pro polymorphisms"
     . SPARSER::COLLECTION)
    ("the MDM2 SNP309, TP53 Arg72Pro, ESR1 Pvu II or Xba I and p21 codon 31 polymorphisms"
     . SPARSER::COLLECTION)
    ("MDM2 and TP53" . SPARSER::COLLECTION)
    ("the SNP309 and the Pvu II or Xba I or p21 polymorphism"
     . SPARSER::COLLECTION)
    ("ESR1 or p21 and SNP309" . SPARSER::COLLECTION)
    ("p21 and SNP309" . SPARSER::COLLECTION)
    ("TP53 and p21" . SPARSER::COLLECTION)
    ("allele and homozygosity" . SPARSER::COLLECTION)
    ("SNP309 and TP53" . SPARSER::COLLECTION) ("Pro/Pro" . SPARSER::COLLECTION)
    ("SNP309, TP53 , ESR1 and p21" . SPARSER::COLLECTION)
    ("SNP309, TP53, ESR1 and p21" . SPARSER::COLLECTION)
    ("the SNP309, TP53 Arg72Pro, ESR1 Pvu II and Xba I, and p21 codon 31 polymorphisms"
     . SPARSER::COLLECTION)
    ("/Arg" . SPARSER::COLLECTION)
    ("their restriction endonucleases, Pvu II T/C (rs2234693) and Xba I"
     . SPARSER::COLLECTION)
    ("the principal ER" . SPARSER::PROTEIN)
    ("mRNA and MDM2 protein" . SPARSER::COLLECTION)
    ("Ras/ER/MDM2" . SPARSER::COLLECTION)
    ("Raf/MEK/MAP kinase" . SPARSER::COLLECTION)
    ("pRb/E2F" . SPARSER::COLLECTION)
    ("ER and the progesterone receptor (PR)" . SPARSER::COLLECTION)
    ("progesterone receptor (PR)" . SPARSER::PROTEIN)
    ("two clinicopathological types" . TYPE) ("RITA" . SPARSER::PROTEIN)
    ("TG and TP53" . SPARSER::COLLECTION)
    ("TP53 , ESR1 and p21" . SPARSER::COLLECTION)
    ("murine double minute 2 ( MDM2) SNP309, TP53 Arg72Pro, ESR1 Pvu II and Xba I, and p21 codon"
     . SPARSER::COLLECTION)
    ("ER/MDM2/p53/p21" . SPARSER::COLLECTION) ("K-ras" . SPARSER::PROTEIN)
    ("SNP309" . SPARSER::PROTEIN) ("GSK3, and Nrf1" . SPARSER::COLLECTION)
    ("SCF–Fbw7" . SPARSER::COLLECTION) ("GSK3–Fbw7" . SPARSER::COLLECTION)
    ("Nrf2–KEAP1" . SPARSER::COLLECTION)
    ("antioxidant proteins and proteasome subunits" . SPARSER::COLLECTION)
    ("Hrd1" . SPARSER::PROTEIN)
    ("ischemia, stress, and amyloid beta peptide accumulation in the brain"
     . SPARSER::COLLECTION)
    ("Ho-1, and Nrf2" . SPARSER::COLLECTION) ("Ho-1" . SPARSER::PROTEIN)
    ("tunicamycin" . SPARSER::MOLECULE)
    ("Myc-tagged wild type Nrf1 (Nrf1-myc) or Nrf1" . SPARSER::COLLECTION)
    ("Nrf1-myc" . SPARSER::COLLECTION)
    ("S350A–Nrf1 and Nrf1ACPD" . SPARSER::COLLECTION)
    ("Nrf1 and Fbw7" . SPARSER::COLLECTION) ("GSK3β-" . SPARSER::PROTEIN)
    ("Fbw7 and GSK3β-CA" . SPARSER::COLLECTION)
    ("GSK3β-KD" . SPARSER::COLLECTION) ("V5-tagged Nrf1" . SPARSER::PROTEIN)
    ("SB216763 and lithium chloride" . SPARSER::COLLECTION)
    ("SB216763 and lithium chloride, and Nrf1" . SPARSER::COLLECTION)
    ("lithium chloride, and Nrf1" . SPARSER::COLLECTION)
    ("negatively impacts Nrf1's" . SPARSER::PROTEIN)
    ("negatively impacts Nrf1" . SPARSER::PROTEIN)
    ("SCF-Fbw7" . SPARSER::COLLECTION) ("Fbw7" . SPARSER::PROTEIN)
    ("GSK" . SPARSER::PROTEIN) ("GSK3α and GSK3β" . SPARSER::COLLECTION)
    ("a multifunctional serine/ threonine kinase" . SPARSER::KINASE)
    ("ARE-gene" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("phase-2 detoxification enzymes and a variety" . SPARSER::COLLECTION)
    ("other cytoprotective genes" . SPARSER::GENE)
    ("metallothioneins" . SPARSER::PROTEIN)
    ("small Maf proteins (Maf G, Maf K, and Maf F) and other bZIP proteins"
     . SPARSER::COLLECTION)
    ("Maf" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Collar-type basic leucine zipper (CNC-bZIP) protein family"
     . SPARSER::PROTEIN-FAMILY)
    ("CNC-bZIP" . SPARSER::COLLECTION) ("CNC" . SPARSER::PROTEIN)
    ("CPD" . SPARSER::PROTEIN)
    ("antioxidant and cytoprotective gene expression" . SPARSER::COLLECTION)
    ("a basic leucine zipper transcription factor" . SPARSER::PROTEIN)
    ("Nrf1" . SPARSER::PROTEIN) ("KEAP1" . SPARSER::PROTEIN)
    ("GSk3" . SPARSER::PROTEIN) ("Brain-specific" . SPARSER::PROTEIN)
    ("amyloid beta" . SPARSER::PROTEIN) ("S–P" . SPARSER::PROTEIN)
    ("p32" . SPARSER::PROTEIN) ("Not1" . SPARSER::PROTEIN)
    ("SB216763" . SPARSER::DRUG)
    ("Glycogen synthase" . SPARSER::PROTEIN-FAMILY)
    ("glutamate–cysteine ligase" . SPARSER::PROTEIN)
    ("Bach2" . SPARSER::PROTEIN) ("Bach1" . SPARSER::PROTEIN)
    ("Nrf3" . SPARSER::PROTEIN) ("NFE2" . SPARSER::PROTEIN)
    ("Cdc4" . SPARSER::PROTEIN)
    ("a metastasis suppressor gene and a potential marker"
     . SPARSER::COLLECTION)
    ("5-FU and oxaliplatin" . SPARSER::COLLECTION) ("kras" . SPARSER::PROTEIN)
    ("AKT2 and PTEN" . SPARSER::COLLECTION)
    ("engineered hypomorphic PTEN mutant" . SPARSER::MUTANT)
    ("KRAS, BRAF and PI3KCA" . SPARSER::COLLECTION)
    ("metastatic CRC" . SPARSER::PROTEIN)
    ("only one Adenine" . SPARSER::MOLECULE) ("Adenine" . SPARSER::MOLECULE)
    ("metastatic CRCs" . SPARSER::PROTEIN) ("AKT2" . SPARSER::PROTEIN)
    ("elongation and co-transcriptional" . SPARSER::COLLECTION)
    ("the ternary Cdk4/cyclin D/p27 complex" . SPARSER::BIO-COMPLEX)
    ("Cdk7–Cdk4" . SPARSER::COLLECTION)
    ("the monomeric substrate" . SPARSER::SUBSTRATE)
    ("Cdk1 and cyclin" . SPARSER::COLLECTION)
    ("an activating kinase (Cdk7) and a T-loop phosphatase"
     . SPARSER::COLLECTION)
    ("Cdk1 or Cdk2" . SPARSER::COLLECTION)
    ("ternary Cdk4/cyclin D/p27" . SPARSER::COLLECTION)
    ("Cdk4/cyclin D/p27" . SPARSER::COLLECTION)
    ("Cdk7, cyclin H and Mat1" . SPARSER::COLLECTION)
    ("RPE-hTERT" . SPARSER::COLLECTION) ("RPE" . SPARSER::PROTEIN)
    ("the mock-treated dimer" . SPARSER::DIMER)
    ("Cdk7/cyclin H" . SPARSER::COLLECTION)
    ("the phosphorylated dimer and the phosphorylated trimer"
     . SPARSER::COLLECTION)
    ("an active complex" . SPARSER::BIO-COMPLEX)
    ("dimer, trimer and phospho-trimer" . SPARSER::COLLECTION)
    ("Cdk4/cyclin D1" . SPARSER::COLLECTION)
    ("a binary complex" . SPARSER::BIO-COMPLEX)
    ("ternary complexes" . SPARSER::BIO-COMPLEX)
    ("cyclin H and Mat1" . SPARSER::COLLECTION)
    ("CDK/cyclin" . SPARSER::COLLECTION)
    ("Cdk1, Cdk2 or Cdk4" . SPARSER::COLLECTION)
    ("phosphospecific antibodies" . SPARSER::ANTIBODY)
    ("DMSO or 3-MB-PP1" . SPARSER::COLLECTION)
    ("Cdk4, Cdk6 or Cdk2" . SPARSER::COLLECTION)
    ("monomeric Cdk2" . SPARSER::PROTEIN)
    ("Cdk6/cyclin D" . SPARSER::COLLECTION)
    ("activation-competent Cdk6" . SPARSER::PROTEIN)
    ("CKIs" . SPARSER::PROTEIN)
    ("Cdk7 and a specific readout" . SPARSER::COLLECTION)
    ("Cdk4/6-" . SPARSER::PROTEIN)
    ("Cdk2, Cdk4 and Cdk6" . SPARSER::COLLECTION)
    ("Cdk4/6 and Cdk2" . SPARSER::COLLECTION)
    ("Cdk7 and Cdk4/6" . SPARSER::COLLECTION) ("Cdk4/6" . SPARSER::PROTEIN)
    ("Cdk2 and Cdk4" . SPARSER::COLLECTION) ("Cdk2-" . SPARSER::PROTEIN)
    ("either DMSO or 10 μM 3-MB-PP1" . SPARSER::COLLECTION)
    ("Cdk7 and Cdk4" . SPARSER::COLLECTION)
    ("Cdk4 and Cdk2" . SPARSER::COLLECTION)
    ("Cdk4/cyclin D" . SPARSER::COLLECTION)
    ("Cdk4 or Cdk6" . SPARSER::COLLECTION)
    ("a physiologic Cdk4- or Cdk6-activating kinase" . SPARSER::COLLECTION)
    ("a physiologic Cdk4-" . SPARSER::PROTEIN)
    ("E2F and their upstream regulators" . SPARSER::COLLECTION)
    ("inhibitor (CKI)" . SPARSER::INHIBITOR) ("CKI" . SPARSER::PROTEIN)
    ("Cdk1/cyclin" . SPARSER::COLLECTION)
    ("bulky adenine analogs" . SPARSER::ANALOG)
    ("RNA polymerase II (Pol II) and other proteins" . SPARSER::COLLECTION)
    ("TFIIH" . SPARSER::PROTEIN)
    ("which forms trimeric complexes" . SPARSER::BIO-COMPLEX)
    ("cell-autonomous cues" . SPARSER::PROTEIN-FAMILY)
    ("a Cdk4- and Cdk6-activating kinase" . SPARSER::COLLECTION)
    ("Cdk1 and Cdk2" . SPARSER::COLLECTION) ("Cdk4-" . SPARSER::PROTEIN)
    ("Cdk4 and Cdk6" . SPARSER::COLLECTION)
    ("Cdk2 and Cdk1" . SPARSER::COLLECTION) ("kinase (CAK)" . SPARSER::KINASE)
    ("C-22" . SPARSER::PROTEIN) ("C-21" . SPARSER::PROTEIN)
    ("T 4 S" . SPARSER::MOLECULE) ("S 2 P" . SPARSER::PROTEIN)
    ("Growth factor" . SPARSER::GROWTH-FACTOR) ("Cyclin E" . SPARSER::PROTEIN)
    ("elongation factor" . SPARSER::PROTEIN) ("Cdk9" . SPARSER::PROTEIN)
    ("Mat1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("cyclin H" . SPARSER::PROTEIN)
    ("Cdk6" . SPARSER::PROTEIN) ("Cdk7" . SPARSER::PROTEIN)
    ("CPC, YPC, HMVT and DYJ" . SPARSER::COLLECTION)
    ("CPC, YTS and HMVT" . SPARSER::COLLECTION) ("KHK" . SPARSER::PROTEIN)
    ("YTS" . SPARSER::PROTEIN) ("CPC" . SPARSER::PROTEIN)
    ("HBx" . SPARSER::PROTEIN) ("viral Nef protein" . SPARSER::PROTEIN)
    ("CtBP and histone" . SPARSER::COLLECTION) ("CtBP" . SPARSER::PROTEIN)
    ("CRTC1-" . SPARSER::PROTEIN) ("Env" . SPARSER::PROTEIN)
    ("pX" . SPARSER::PROTEIN)
    ("pulled down CRTC1-containing complex with a monoclonal anti-V5 antibody and Tax"
     . SPARSER::COLLECTION)
    ("a monoclonal anti-V5 antibody" . SPARSER::ANTIBODY)
    ("pulled down CRTC1-containing complex" . SPARSER::BIO-COMPLEX)
    ("CRTC1-Pak3-Tax protein" . SPARSER::COLLECTION)
    ("CRTC1-Pak3" . SPARSER::COLLECTION)
    ("a protein complex that contains CRTC1, Pak1 and Tax"
     . SPARSER::COLLECTION)
    ("V5-tagged CRTC1" . SPARSER::PROTEIN)
    ("Pak1 and CRTC1" . SPARSER::COLLECTION)
    ("CRTC2 and CRTC3" . SPARSER::COLLECTION)
    ("CREB and CRTC1" . SPARSER::COLLECTION)
    ("an adenoviral inhibitor" . SPARSER::INHIBITOR)
    ("CREB transcription factor as well as CRTC" . SPARSER::COLLECTION)
    ("CRTC" . SPARSER::PROTEIN)
    ("calf intestinal phosphatase" . SPARSER::PHOSPHATASE)
    ("MT2 and MT4" . SPARSER::COLLECTION)
    ("Pak1 and Pak3" . SPARSER::COLLECTION)
    ("neither Pak5 nor MEKK1" . SPARSER::COLLECTION)
    ("the viral promoter" . SPARSER::PROMOTER)
    ("CRIB and kinase domains" . SPARSER::COLLECTION) ("CRIB" . SPARSER::DRUG)
    ("Pak1, Pak2 and Pak3" . SPARSER::COLLECTION)
    ("Pak4, Pak5 and Pak6" . SPARSER::COLLECTION) ("Pak6" . SPARSER::PROTEIN)
    ("Pak4" . SPARSER::PROTEIN) ("Cdc42 and Rac1" . SPARSER::COLLECTION)
    ("CREB and CRTCs" . SPARSER::COLLECTION)
    ("TORCs" . SPARSER::PROTEIN-FAMILY)
    ("dimeric CREB" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TREs" . SPARSER::PROTEIN) ("ATL and TSP" . SPARSER::COLLECTION)
    ("TSP" . SPARSER::PROTEIN) ("ATL" . SPARSER::PROTEIN)
    ("Pak1 or Pak3" . SPARSER::COLLECTION)
    ("p300/CREB-binding protein" . SPARSER::COLLECTION)
    ("β -globin" . SPARSER::PROTEIN) ("ATG-3" . SPARSER::PROTEIN)
    ("Tax protein" . SPARSER::PROTEIN) ("CRTC3" . SPARSER::PROTEIN)
    ("CRTC2" . SPARSER::PROTEIN) ("M1 as" . SPARSER::MOLECULE)
    ("MEKK1" . SPARSER::PROTEIN) ("bar 1" . SPARSER::PROTEIN)
    ("Pak5" . SPARSER::PROTEIN) ("Group I" . SPARSER::PROTEIN)
    ("MT4" . SPARSER::PROTEIN) ("CRTC1" . SPARSER::PROTEIN)
    ("CREB-binding protein" . SPARSER::PROTEIN)
    ("basic amino acids" . SPARSER::AMINO-ACID)
    ("proteins and Rap1A" . SPARSER::COLLECTION)
    ("ROCKs and most PKCs" . SPARSER::COLLECTION)
    ("Ras and Ras-related GTPases" . SPARSER::COLLECTION)
    ("Ras and Rheb" . SPARSER::COLLECTION)
    ("the NADPH oxidase ( xref ) and Raf ( xref )" . SPARSER::COLLECTION)
    ("GTPases as well as other prenylated proteins" . SPARSER::COLLECTION)
    ("Rnd2 and Rnd3" . SPARSER::COLLECTION)
    ("ROCK and PKC" . SPARSER::COLLECTION) ("GDIs" . SPARSER::PROTEIN)
    ("the C-terminal farnesyl group and the adjacent phosphorylated serine residues"
     . SPARSER::COLLECTION)
    ("atypical G proteins" . SPARSER::PROTEIN)
    ("Rap1B and RhoG" . SPARSER::COLLECTION)
    ("Rap1A and PDE6C" . SPARSER::COLLECTION) ("−1/−2" . SPARSER::COLLECTION)
    ("the Rnd proteins as well as the geranylgeranylated proteins PDE6C, RPGR, and Rap1A ( xref B)"
     . SPARSER::COLLECTION)
    ("PDE6C, RPGR, and Rap1A" . SPARSER::COLLECTION)
    ("RPGR" . SPARSER::PROTEIN)
    ("the longer geranylgeranyl group" . SPARSER::MOLECULE)
    ("only one isoprenyl group" . SPARSER::MOLECULE)
    ("Rnd3 and Rap1A" . SPARSER::COLLECTION) ("-COOH" . SPARSER::MOLECULE)
    ("Rnd3 and ExoS" . SPARSER::COLLECTION) ("ExoS" . SPARSER::PROTEIN)
    ("Pr1" . SPARSER::PROTEIN) ("Pr" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("14-3-3:Rnd3" . SPARSER::BIO-COMPLEX)
    ("the last C-terminal ten amino acids of Rnd3 (232–241) that were phosphorylated on S240"
     . SPARSER::PROTEIN)
    ("the last C-terminal ten amino acids" . SPARSER::AMINO-ACID)
    ("wild-type Rnd3 and Rnd3-AllA-S210/218/240 binding to 14-3-3 proteins ( xref B)"
     . SPARSER::COLLECTION)
    ("inhibitor (FTI)" . SPARSER::INHIBITOR)
    ("the relevant kinases" . SPARSER::KINASE)
    ("Rnd3 and 14-3-3" . SPARSER::COLLECTION)
    ("the last four amino acids" . SPARSER::AMINO-ACID)
    ("PMA or calyculin A" . SPARSER::COLLECTION)
    ("ROCK1 or 14-3-3β" . SPARSER::COLLECTION) ("Rnd1-" . SPARSER::PROTEIN)
    ("Rnd3 and Rnd3-A240" . SPARSER::COLLECTION)
    ("PKCs and ROCKs" . SPARSER::COLLECTION)
    ("ROCKs" . SPARSER::PROTEIN-FAMILY) ("PKC or ROCK" . SPARSER::COLLECTION)
    ("methylated peptide" . SPARSER::PEPTIDE)
    ("FLAG-Rnd3" . SPARSER::COLLECTION) ("Ser or Thr" . SPARSER::COLLECTION)
    ("ROCK1 or PKC" . SPARSER::COLLECTION)
    ("Both ROCK1 (but not ROCK2) and PKC" . SPARSER::COLLECTION)
    ("ROCK1 and PKC" . SPARSER::COLLECTION) ("AllA" . SPARSER::PROTEIN)
    ("Rnd3-AllA" . SPARSER::COLLECTION)
    ("A putative phosphomimetic mutant" . SPARSER::MUTANT)
    ("calf-intestinal phosphatase" . SPARSER::PHOSPHATASE)
    ("Rnd3/14-3-3" . SPARSER::COLLECTION) ("Rho/ROCK" . SPARSER::COLLECTION)
    ("Rnd1 and Rnd3" . SPARSER::COLLECTION)
    ("a shorter 15-carbon farnesyl group" . SPARSER::MOLECULE)
    ("RhoA, Rac1, and Cdc42" . SPARSER::COLLECTION)
    ("Rac1 and K-Ras4B" . SPARSER::COLLECTION)
    ("most Ras superfamily G proteins" . SPARSER::PROTEIN)
    ("Rnd1 and Rnd2" . SPARSER::COLLECTION) ("kinase (ROCK)" . SPARSER::KINASE)
    ("classic G proteins" . SPARSER::PROTEIN)
    ("proteins, Rnd1, Rnd2, and Rnd3" . SPARSER::COLLECTION)
    ("RhoE" . SPARSER::PROTEIN)
    ("an inactive GDP-bound conformation and an active GTP-bound conformation"
     . SPARSER::COLLECTION)
    ("Most Ras superfamily G proteins" . SPARSER::PROTEIN)
    ("GTP/GDP" . SPARSER::PROTEIN-PAIR) ("Rap1A" . SPARSER::PROTEIN)
    ("RhoGDI" . SPARSER::PROTEIN) ("GTP-" . SPARSER::NUCLEOTIDE)
    ("MS 3" . SPARSER::PROTEIN) ("MS 2" . SPARSER::PROTEIN)
    ("T-14" . SPARSER::PROTEIN) ("ROCK 1" . SPARSER::PROTEIN)
    ("N 2" . SPARSER::PROTEIN)
    ("intestinal alkaline phosphatase" . SPARSER::PROTEIN)
    ("bisindolylmaleimide I" . SPARSER::DRUG) ("Rap1B" . SPARSER::PROTEIN)
    ("pS210" . SPARSER::DRUG) ("ROCK2" . SPARSER::PROTEIN)
    ("calyculin A" . SPARSER::MOLECULE) ("Rap1" . SPARSER::PROTEIN)
    ("Rnd2" . SPARSER::PROTEIN) ("Rnd1" . SPARSER::PROTEIN)
    ("Rnd3" . SPARSER::PROTEIN) ("gene or gene" . SPARSER::COLLECTION)
    ("double-thymidine" . SPARSER::PROTEIN) ("SETD2-" . SPARSER::PROTEIN)
    ("Nucleosome" . SPARSER::PROTEIN)
    ("foci, and partial" . SPARSER::COLLECTION)
    ("smaller hMSH6 foci" . SPARSER::PROTEIN)
    ("hMSH6 and H3K36" . SPARSER::COLLECTION)
    ("defective MMR" . SPARSER::PROTEIN)
    ("hMutSα and hMutSβ" . SPARSER::COLLECTION)
    ("hMSH6 and chromatin" . SPARSER::COLLECTION) ("SEDT" . SPARSER::PROTEIN)
    ("significantly fewer hMSH6 foci" . SPARSER::PROTEIN)
    ("significantly (p<0.001) fewer hMSH6 foci" . SPARSER::PROTEIN)
    ("hMSH6(PAAP) or hMSH6(F133A)" . SPARSER::COLLECTION)
    ("hMutSα[PAAP] and hMutSα[Δ3 40]" . SPARSER::COLLECTION)
    ("both PWWP-deficient proteins, hMutSα[PAAP] and hMutSα[Δ3 40]"
     . SPARSER::COLLECTION)
    ("wild type hMutSα or PWWP-deficient hMutSα" . SPARSER::COLLECTION)
    ("hMutSα and H3K36" . SPARSER::COLLECTION)
    ("hMutSα or hMutSα" . SPARSER::COLLECTION) ("hMutSα" . SPARSER::PROTEIN)
    ("PAAP" . SPARSER::AMINO-ACID) ("tri-" . SPARSER::PROTEIN)
    ("GST-hMSH6" . SPARSER::COLLECTION)
    ("alanines (PAAP)" . SPARSER::AMINO-ACID)
    ("hMSH6 and BRPF1" . SPARSER::COLLECTION)
    ("SETD2 and H3K36" . SPARSER::COLLECTION)
    ("many chromatin-associated proteins" . SPARSER::PROTEIN)
    ("MMR ( xref ; xref ) and MMR" . SPARSER::COLLECTION)
    ("nucleosomes or timely recruiting MMR proteins" . SPARSER::COLLECTION)
    ("recombinant histones and a mismatch-containing DNA"
     . SPARSER::COLLECTION)
    ("ATPase and DNA" . SPARSER::COLLECTION)
    ("simple repetitive DNA" . SPARSER::DNA)
    ("hMSH2, hMSH6 and hMLH1" . SPARSER::COLLECTION)
    ("hMSH6 or hMSH3" . SPARSER::COLLECTION)
    ("hMSH2-hMSH3" . SPARSER::COLLECTION)
    ("tri-methyltransferase" . SPARSER::COLLECTION) ("tri" . SPARSER::PROTEIN)
    ("an epigenetic histone" . SPARSER::PROTEIN)
    ("hMSH2-hMSH6" . SPARSER::COLLECTION) ("MSH3" . SPARSER::PROTEIN)
    ("Set2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("hypoxanthine-guanine phosphoribosyltransferase" . SPARSER::PROTEIN)
    ("BRPF1" . SPARSER::PROTEIN) ("Pro-Trp" . SPARSER::MOLECULE)
    ("SETD2" . SPARSER::PROTEIN) ("ZAP70-Vav1" . SPARSER::COLLECTION)
    ("CXCR4, CXCR5 and CCR2" . SPARSER::COLLECTION)
    ("filamin" . SPARSER::PROTEIN-FAMILY)
    ("an optimal conformation" . SPARSER::BIO-CONFORMATION)
    ("the integrin β1/CBAP/ZAP70-containing complex" . SPARSER::BIO-COMPLEX)
    ("Vav1 or ZAP70" . SPARSER::COLLECTION) ("at least three types" . TYPE)
    ("Vav1/talin" . SPARSER::COLLECTION)
    ("Vav1/talin/integrin" . SPARSER::COLLECTION)
    ("ZAP70 and integrin" . SPARSER::COLLECTION)
    ("CCL21 and CXCL12" . SPARSER::COLLECTION)
    ("CXCL12, CCL5, CXCL10 and CCL20" . SPARSER::COLLECTION)
    ("adhesion molecules and the migration machinery" . SPARSER::COLLECTION)
    ("Vav1 and integrin" . SPARSER::COLLECTION)
    ("these inflammatory chemokines" . SPARSER::PROTEIN)
    ("CXCL12, CCL5, CXCL10 or CCL20" . SPARSER::COLLECTION)
    ("CXCR4, CCR5, CXCR3 and CCR6" . SPARSER::COLLECTION)
    ("inflammatory chemokine receptors and some integrin β subunits"
     . SPARSER::COLLECTION)
    ("Chemotaxis" . SPARSER::PROTEIN) ("myc-ZAP70" . SPARSER::COLLECTION)
    ("ZAP70/CBAP/integrin" . SPARSER::COLLECTION)
    ("M2 and M4" . SPARSER::COLLECTION) ("TM1–3" . SPARSER::COLLECTION)
    ("TM1" . SPARSER::PROTEIN)
    ("GFP-tagged full-length CBAP ( xref ; FL) or various deletion mutants"
     . SPARSER::COLLECTION)
    ("talin/Vav1" . SPARSER::COLLECTION)
    ("talin and Vav1" . SPARSER::COLLECTION)
    ("ZAP70 and CBAP" . SPARSER::COLLECTION)
    ("the latter cells ZAP70" . SPARSER::PROTEIN)
    ("An obvious complex" . SPARSER::BIO-COMPLEX)
    ("Vav1 and talin" . SPARSER::COLLECTION)
    ("anti-Vav1 and anti-talin" . SPARSER::COLLECTION)
    ("anti-Vav1 or anti-talin, and co-precipitated" . SPARSER::COLLECTION)
    ("anti-talin, and co-precipitated" . SPARSER::COLLECTION)
    ("Vav1/Rac1" . SPARSER::COLLECTION)
    ("CBAP and ZAP70" . SPARSER::COLLECTION)
    ("Rac1 and Cdc42" . SPARSER::COLLECTION)
    ("ZAP70/Vav1/Rac1" . SPARSER::COLLECTION)
    ("ZAP70 and Vav1" . SPARSER::COLLECTION) ("CXCL12-" . SPARSER::PROTEIN)
    ("trimeric G protein" . SPARSER::PROTEIN) ("Aii" . SPARSER::PROTEIN)
    ("CXCR4 and CCR7" . SPARSER::COLLECTION)
    ("β2, or L-selectin" . SPARSER::COLLECTION)
    ("CXCL12 and CCL21" . SPARSER::COLLECTION)
    ("CXCL12 or CCL21" . SPARSER::COLLECTION)
    ("VCAM-1 or ICAM-1" . SPARSER::COLLECTION)
    ("mCBAP-GFP" . SPARSER::COLLECTION)
    ("the major chemokine receptor" . SPARSER::PROTEIN)
    ("the GM-CSF/IL-3/IL-5 receptor common beta-chain-associated protein (CBAP)"
     . SPARSER::PROTEIN)
    ("a homodimeric protein" . SPARSER::PROTEIN) ("Talin" . SPARSER::PROTEIN)
    ("Rac1 and another Rho family small GTPase" . SPARSER::COLLECTION)
    ("verprolin" . SPARSER::PROTEIN) ("RacV12" . SPARSER::PROTEIN)
    ("Vav1-talin" . SPARSER::COLLECTION) ("Syk" . SPARSER::PROTEIN)
    ("L-selectin and integrins" . SPARSER::COLLECTION)
    ("CC-chemokine receptor" . SPARSER::COLLECTION)
    ("ZAP70/Vav1/talin" . SPARSER::COLLECTION)
    ("talin-Vav1" . SPARSER::COLLECTION)
    ("inflammatory chemokines" . SPARSER::PROTEIN)
    ("GM-CSF/IL-3/IL-5 receptor common beta-chain-associated protein (CBAP)"
     . SPARSER::PROTEIN)
    ("GM-CSF/IL-3/IL-5 receptor" . SPARSER::COLLECTION)
    ("CBAP" . SPARSER::PROTEIN) ("CXCR5" . SPARSER::PROTEIN)
    ("Vav2" . SPARSER::PROTEIN) ("TMEM102" . SPARSER::PROTEIN)
    ("PI3Kγ" . SPARSER::PROTEIN) ("Thy1" . SPARSER::PROTEIN)
    ("Chemokine receptor" . SPARSER::PROTEIN)
    ("T-cell Receptor" . SPARSER::PROTEIN) ("N -2" . SPARSER::PROTEIN)
    ("PKH26" . SPARSER::DRUG) ("thy1" . SPARSER::PROTEIN)
    ("CXCR3" . SPARSER::PROTEIN) ("L17" . SPARSER::PROTEIN)
    ("CCR6" . SPARSER::PROTEIN) ("TS2" . SPARSER::PROTEIN)
    ("B12)" . SPARSER::PROTEIN) ("CCL20" . SPARSER::PROTEIN)
    ("CXCL10" . SPARSER::PROTEIN)
    ("phosphatidylinositol 4,5-bisphosphate" . SPARSER::PIP2)
    ("Wiskott-Aldrich syndrome protein" . SPARSER::PROTEIN)
    ("G protein–coupled receptor" . SPARSER::PROTEIN)
    ("L-selectin" . SPARSER::PROTEIN) ("CCR7" . SPARSER::PROTEIN)
    ("CCL21" . SPARSER::PROTEIN) ("αLβ2" . SPARSER::PROTEIN)
    ("IL-5 receptor" . SPARSER::PROTEIN)
    ("EGF or other EGFR-activating ligands (i.e. TGF-α)" . SPARSER::COLLECTION)
    ("autocrine-derived EGF-like ligands" . SPARSER::LIGAND)
    ("EGF or other ligands" . SPARSER::COLLECTION)
    ("efficiently knockdown either ERK1 or ERK2" . SPARSER::COLLECTION)
    ("ERK1 and ERK2" . SPARSER::COLLECTION)
    ("soft agar-containing media" . SPARSER::PROTEIN)
    ("complete media" . SPARSER::PROTEIN)
    ("These constructs efficiently knocked-down EGFR" . SPARSER::PROTEIN)
    ("Tyrphostin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the constitutively-active EGFR mutant" . SPARSER::MUTANT)
    ("-EGF" . SPARSER::COLLECTION) ("Mitogens" . SPARSER::MITOGEN)
    ("exogenous EGF" . SPARSER::PROTEIN) ("EGFR-ERK" . SPARSER::COLLECTION)
    ("EGF and bFGF" . SPARSER::COLLECTION)
    ("dominant-negative MEK1" . SPARSER::PROTEIN)
    ("ERK1 or ERK2" . SPARSER::COLLECTION)
    ("AG1478 and PD168393" . SPARSER::COLLECTION)
    ("a constitutively-active EGFR mutant" . SPARSER::MUTANT)
    ("Vitamin A" . SPARSER::MOLECULE) ("PD168393" . SPARSER::DRUG)
    ("AG1478" . SPARSER::DRUG) ("AR, STAT3 and AKT" . SPARSER::COLLECTION)
    ("AKT and STAT3" . SPARSER::COLLECTION)
    ("STAT3 and ERK1/2" . SPARSER::COLLECTION) ("nicotine" . SPARSER::DRUG)
    ("other molecules such as IL-6 and HER2/Neu signals xref"
     . SPARSER::COLLECTION)
    ("neurotransmitters and hormones" . SPARSER::COLLECTION)
    ("Endocrine" . SPARSER::PROTEIN) ("androgen and AR" . SPARSER::COLLECTION)
    ("Sexual hormone receptors" . SPARSER::RECEPTOR)
    ("AR and estrogen receptor" . SPARSER::COLLECTION)
    ("hepatocytes and HCC" . SPARSER::COLLECTION)
    ("esterase" . SPARSER::PROTEIN) ("Ach and AR" . SPARSER::COLLECTION)
    ("Casodex (CDX)" . SPARSER::DRUG) ("Casodex" . SPARSER::DRUG)
    ("Antagonist" . SPARSER::MOLECULE) ("Agonist" . SPARSER::AGONIST)
    ("MMTV-luc" . SPARSER::COLLECTION) ("mecamylamine (MEC)" . SPARSER::DRUG)
    ("Ach or AChR" . SPARSER::COLLECTION) ("mecamylamine" . SPARSER::DRUG)
    ("β2–β4" . SPARSER::PROTEIN-PAIR)
    ("nicotinic acetylcholine receptors (nAChR) and muscarinic acetylcholine receptors (mAChR)"
     . SPARSER::COLLECTION)
    ("nicotinic acetylcholine receptors" . SPARSER::RECEPTOR)
    ("muscarinic" . SPARSER::PROTEIN)
    ("Ach and endocrine" . SPARSER::COLLECTION)
    ("Ach and its regulators" . SPARSER::COLLECTION)
    ("acetylcholinesterase and acetylcholinic receptor" . SPARSER::COLLECTION)
    ("acetylcholinic receptor" . SPARSER::RECEPTOR)
    ("HCC, and Ach" . SPARSER::COLLECTION)
    ("acetylcholinesterase" . SPARSER::PROTEIN)
    ("Neurotransmitters" . SPARSER::MOLECULE) ("casodex (CDX)" . SPARSER::DRUG)
    ("CDX" . SPARSER::PROTEIN) ("Ach and hormone" . SPARSER::COLLECTION)
    ("neurotransmitter" . SPARSER::MOLECULE)
    ("STAT3 and AKT" . SPARSER::COLLECTION) ("casodex" . SPARSER::DRUG)
    ("Ach" . SPARSER::PROTEIN) ("alpha 7" . SPARSER::PROTEIN)
    ("acetylcholine receptor" . SPARSER::PROTEIN)
    ("Africans and Asians" . SPARSER::COLLECTION)
    ("allele and breast" . SPARSER::COLLECTION)
    ("the well-studied codon 72 variant" . SPARSER::VARIANT)
    ("Arg/Pro" . SPARSER::COLLECTION) ("gene and breast" . SPARSER::COLLECTION)
    ("Africans" . SPARSER::PROTEIN) ("Ins/Ins" . SPARSER::COLLECTION)
    ("Ins" . SPARSER::PROTEIN) ("Intron" . SPARSER::PROTEIN)
    ("Nan" . SPARSER::PROTEIN)
    ("at least one variant COX-2 rs689466 G allele" . SPARSER::ALLELE)
    ("AG or GG" . SPARSER::COLLECTION) ("df " . SPARSER::PROTEIN)
    ("AGG and GGG" . SPARSER::COLLECTION) ("AG and AA" . SPARSER::COLLECTION)
    ("NP or NC" . SPARSER::COLLECTION) ("PP or PC" . SPARSER::COLLECTION)
    ("vinorelbine" . SPARSER::DRUG) ("carboplatin" . SPARSER::DRUG)
    ("COX-2 gene and decrease" . SPARSER::COLLECTION)
    ("CASP3 and CASP9" . SPARSER::COLLECTION)
    ("apoptotic genes or activation of antiapoptotic genes"
     . SPARSER::COLLECTION)
    ("C-MYB" . SPARSER::PROTEIN) ("c-MYB" . SPARSER::PROTEIN)
    ("the largest Asian mucinous ovarian cancer cohort" . SPARSER::MOLECULE)
    ("HER2− and KRAS−" . SPARSER::COLLECTION) ("KRAS−" . SPARSER::PROTEIN)
    ("HER2+ and KRAS" . SPARSER::COLLECTION)
    ("Pertuzumab, Trastuzumab and Docetaxel" . SPARSER::COLLECTION)
    ("Docetaxel" . SPARSER::DRUG) ("serous subtypes" . SPARSER::PROTEIN)
    ("HER2+ and HER2−" . SPARSER::COLLECTION)
    ("our mucinous ovarian cancer cohort" . SPARSER::MOLECULE)
    ("our mucinous cohort" . SPARSER::MOLECULE)
    ("a large Asian retrospective cohort" . SPARSER::MOLECULE)
    ("CA 125" . SPARSER::DRUG) ("SP3" . SPARSER::PROTEIN)
    ("HER2+" . SPARSER::PROTEIN)
    ("Americans and Europeans" . SPARSER::COLLECTION)
    ("African" . SPARSER::PROTEIN) ("inhibitor (TKI)" . SPARSER::INHIBITOR)
    ("a homozygous variant" . SPARSER::VARIANT) ("5–2" . SPARSER::PROTEIN)
    ("FGFR1, FGFR2, and VEGFR2" . SPARSER::COLLECTION)
    ("VEGF and PDGFA-proangiogenic" . SPARSER::COLLECTION)
    ("VEGFR2, FGFR1 and FGFR2" . SPARSER::COLLECTION)
    ("Neither VEGF nor PDGFA" . SPARSER::COLLECTION)
    ("VEGF and its receptor" . SPARSER::COLLECTION)
    ("thrombin, collagen or adenosine" . SPARSER::COLLECTION)
    ("bFGF-FGFR-ERK" . SPARSER::COLLECTION) ("FGFR-ERK" . SPARSER::COLLECTION)
    ("misoprostol" . SPARSER::DRUG) ("histamine" . SPARSER::PROTEIN)
    ("clopidogrel" . SPARSER::DRUG)
    ("proangiogenic growth factors (PDGFB) and their receptors (VEGFR2, FGFR1, and FGFR2)"
     . SPARSER::COLLECTION)
    ("growth factors (PDGFB)" . SPARSER::GROWTH-FACTOR)
    ("Growth Factors/receptors" . SPARSER::COLLECTION)
    ("VEGFR2, PDGFB, FGFR1, and FGFR2" . SPARSER::COLLECTION)
    ("VEGF, VEGFR1, PDGFA, and PDGFRA" . SPARSER::COLLECTION)
    ("bFGF and PDGFRB" . SPARSER::COLLECTION)
    ("the cirrhotic group and non-cirrhotic group" . SPARSER::MOLECULE)
    ("VEGF, VEGFR1, bFGF, PDGFA, PDGFRA, and PDGFRB" . SPARSER::COLLECTION)
    ("PDGFA" . SPARSER::PROTEIN)
    ("proangiogenic growth factors (VEGF, bFGF, PDGF) and their receptors (VEGFR1, VEGFR2, FGFR1, FGFR2, PDGFRA, PDGFRB)"
     . SPARSER::COLLECTION)
    ("Proangiogenic Growth Factors and their Receptors" . SPARSER::COLLECTION)
    ("male and 41 (37.3%)" . SPARSER::COLLECTION)
    ("proangiogenic growth factors (VEGF, PDGF, bFGF) and their receptors (VEGFR1, VEGFR2, PDGFRA, PDGFRB, FGFR1, FGFR2)"
     . SPARSER::COLLECTION)
    ("platelets" . SPARSER::PROTEIN)
    ("complex and multi-factorial" . SPARSER::COLLECTION)
    ("PDGFB and VEGFR2, FGFR1, and FGFR2" . SPARSER::COLLECTION)
    ("VEGFR2, FGFR1, and FGFR2" . SPARSER::COLLECTION)
    ("PDGFB, VEGFR2, FGFR1, and FGFR2" . SPARSER::COLLECTION)
    ("PDGFB" . SPARSER::PROTEIN)
    ("these growth factors and their receptors" . SPARSER::COLLECTION)
    ("the proangiogenic growth factors (vascular endothelial growth factor [VEGF], platelet derived growth factor [PDGF], basic fibroblast growth factor [bFGF]) and their receptors (VEGFR1, VEGFR2, PDGFRA, PDGFRB, FGFR1, FGFR2)"
     . SPARSER::COLLECTION)
    ("proangiogenic growth factors and their receptors" . SPARSER::COLLECTION)
    ("Growth Factors" . SPARSER::GROWTH-FACTOR)
    ("proton pump" . SPARSER::PROTEIN) ("VEGFR1" . SPARSER::PROTEIN)
    ("a particularly attractive target group" . SPARSER::MOLECULE)
    ("a normal p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("both U87 (wild type) and U1242 (p53 mutant)" . SPARSER::COLLECTION)
    ("normal p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p53 and ATM, or Chk2" . SPARSER::COLLECTION)
    ("ATM, or Chk2" . SPARSER::COLLECTION)
    ("H2AX and KAP1" . SPARSER::COLLECTION)
    ("DNA-PK and ATR" . SPARSER::COLLECTION)
    ("KU-60019 and radiation" . SPARSER::COLLECTION)
    ("U87/luc-DsRed" . SPARSER::COLLECTION)
    ("radiation-induced DDR" . SPARSER::PROTEIN)
    ("-KAP1" . SPARSER::COLLECTION)
    ("H2AX, KAP1, and 53BP1" . SPARSER::COLLECTION)
    ("luciferase and GFP, or DsRed" . SPARSER::COLLECTION)
    ("radiation-induced repair foci" . SPARSER::PROTEIN)
    ("luc-GFP" . SPARSER::PROTEIN-PAIR)
    ("kinase, U1242 and U87" . SPARSER::COLLECTION) ("p-" . SPARSER::PROTEIN)
    ("key ATM" . SPARSER::PROTEIN) ("adjuvants" . SPARSER::DRUG)
    ("ATR (A-T and Rad3-related kinase) and DNA-PK (DNA-dependent protein kinase)"
     . SPARSER::COLLECTION)
    ("PDGFR, IDH1, and p53" . SPARSER::COLLECTION)
    ("radiosensitizer and adjuvant" . SPARSER::COLLECTION)
    ("radiosensitizer" . SPARSER::DRUG) ("KAP1" . SPARSER::PROTEIN)
    ("KU-55933" . SPARSER::DRUG) ("KU-60019" . SPARSER::DRUG)
    ("MAPK, PI3K/Akt/mTOR, or IAP" . SPARSER::COLLECTION)
    ("the homodimeric conformation" . SPARSER::BIO-CONFORMATION)
    ("the monomeric conformation" . SPARSER::BIO-CONFORMATION)
    ("bound both intact E-cadherin and the ectodomain fragment"
     . SPARSER::COLLECTION)
    ("bound both intact E-cadherin" . SPARSER::PROTEIN)
    ("both intact E-cadherin and the 80-kDa protein" . SPARSER::COLLECTION)
    ("the approximately 80-kDa ectodomain fragment" . SPARSER::FRAGMENT)
    ("the conformational state" . SPARSER::BIO-STATE)
    ("survivin and XIAP" . SPARSER::COLLECTION)
    ("ERK1/2 as well as Akt" . SPARSER::COLLECTION)
    ("the mTOR-binding protein Raptor and the mTOR substrate 4E-BP1"
     . SPARSER::COLLECTION)
    ("PI3K/Akt/mTOR and MAPK" . SPARSER::COLLECTION)
    ("HER2 +" . SPARSER::PROTEIN)
    ("a commercially available antibody" . SPARSER::PROTEIN)
    ("E-cadherin–HER2 +" . SPARSER::PROTEIN-PAIR)
    ("cell surface bound intact E-cadherin" . SPARSER::PROTEIN)
    ("sEcad–HER" . SPARSER::COLLECTION) ("exogenous sEcad" . SPARSER::PROTEIN)
    ("HER1, PI3K, Akt, and ERK1/2" . SPARSER::COLLECTION)
    ("bispecific antibodies" . SPARSER::ANTIBODY)
    ("MAPK or PI3K/Akt/mTOR" . SPARSER::COLLECTION)
    ("Targeted monoclonal antibodies" . SPARSER::ANTIBODY)
    ("Mel" . SPARSER::PROTEIN) ("PHK" . SPARSER::PROTEIN)
    ("Fib" . SPARSER::PROTEIN)
    ("both intact E-cadherin (120 kDa) and the soluble shed fragment (80 kDa)"
     . SPARSER::COLLECTION)
    ("the soluble shed fragment" . SPARSER::FRAGMENT)
    ("both intact E-cadherin" . SPARSER::PROTEIN)
    ("intact E-cadherin and/or the shed soluble approximately 80-kDa ectodomain fragment"
     . SPARSER::COLLECTION)
    ("the shed soluble approximately 80-kDa ectodomain fragment"
     . SPARSER::FRAGMENT)
    ("FL-Ecad and sEcad" . SPARSER::COLLECTION)
    ("HECD-1" . SPARSER::COLLECTION) ("sEcad" . SPARSER::PROTEIN)
    ("intact E-cadherin or the shed E-cadherin ectodomain"
     . SPARSER::COLLECTION)
    ("different extracellular-domain–specific antibodies" . SPARSER::ANTIBODY)
    ("Chloroquine" . SPARSER::PROTEIN)
    ("E-cadherin and HER2" . SPARSER::COLLECTION)
    ("c-IAP-1" . SPARSER::COLLECTION)
    ("ERK1/2, Akt, and mTOR" . SPARSER::COLLECTION)
    ("Punctate" . SPARSER::PROTEIN) ("histone-associated DNA" . SPARSER::DNA)
    ("IgG-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IgG, or DECMA-1" . SPARSER::COLLECTION) ("PyMT" . SPARSER::PROTEIN)
    ("a commercially available mAb" . SPARSER::DRUG)
    ("sEcad-HER" . SPARSER::PROTEIN-PAIR)
    ("HER1, HER2, and IGF-IR" . SPARSER::COLLECTION)
    ("MAPK–PI3K/Akt/mTOR" . SPARSER::PROTEIN-PAIR)
    ("polarized epithelial acini" . SPARSER::PROTEIN)
    ("HER1, Akt, and ERK" . SPARSER::COLLECTION)
    ("HER2 and HER3" . SPARSER::COLLECTION) ("MMP-9-" . SPARSER::PROTEIN)
    ("MMP-2-" . SPARSER::PROTEIN)
    ("a purified 80-kDa sEcad fragment or recombinant sEcad chimeric protein (rhEcad/Fc)"
     . SPARSER::COLLECTION)
    ("disintegrin and metalloproteinases" . SPARSER::COLLECTION)
    ("disintegrin" . SPARSER::PROTEIN) ("ADAMs" . SPARSER::PROTEIN)
    ("intact E-cadherin" . SPARSER::PROTEIN)
    ("E-cadherin and HER" . SPARSER::COLLECTION)
    ("family and E-cadherin" . SPARSER::COLLECTION)
    ("HER1 and HER2" . SPARSER::COLLECTION)
    ("trastuzumab and pertuzumab" . SPARSER::COLLECTION)
    ("the bispecific mAb pertuzumab" . SPARSER::DRUG)
    ("HER2–HER3" . SPARSER::COLLECTION) ("pertuzumab" . SPARSER::DRUG)
    ("trastuzumab, and BT474" . SPARSER::COLLECTION)
    ("phospho-Akt and Akt" . SPARSER::COLLECTION)
    ("HER2/HER3" . SPARSER::COLLECTION)
    ("lapatinib and HKI-272" . SPARSER::COLLECTION)
    ("endogenous phospho-HER1 and HER1/HER2 heterodimers"
     . SPARSER::COLLECTION)
    ("HER1/HER2" . SPARSER::COLLECTION)
    ("HER1, HER3, or HER4" . SPARSER::COLLECTION)
    ("homodimers or heterodimers" . SPARSER::COLLECTION)
    ("HER2–HER2" . SPARSER::COLLECTION) ("Herceptin" . SPARSER::DRUG)
    ("Ecad" . SPARSER::PROTEIN) ("MMTV-PyMT" . SPARSER::COLLECTION)
    ("the soluble ectodomain fragment" . SPARSER::FRAGMENT)
    ("mitogen-activated protein kinase–phosphoinositide 3-kinase"
     . SPARSER::COLLECTION)
    ("IAP-1" . SPARSER::PROTEIN) ("pMEK1" . SPARSER::PROTEIN)
    ("c-11" . SPARSER::PROTEIN) ("pPI3K" . SPARSER::PROTEIN-FAMILY)
    ("HKI-272" . SPARSER::DRUG)
    ("the QFP sequence
variants"
     . SPARSER::VARIANT)
    ("small ribosomal subunit" . SPARSER::FRAGMENT)
    ("the QFP sequence variant" . SPARSER::VARIANT)
    ("certain
QFP sequence variants"
     . SPARSER::VARIANT)
    ("all the QFP
sequence variants"
     . SPARSER::VARIANT)
    ("certain QFP sequence
variants"
     . SPARSER::VARIANT)
    ("the fluorescent protein" . SPARSER::PROTEIN)
    ("chymotrypsin" . SPARSER::PROTEIN) ("Weaker" . SPARSER::PROTEIN)
    ("tricine" . SPARSER::DRUG)
    ("a
non-natural fluorescent amino acid"
     . SPARSER::AMINO-ACID)
    ("RF1, RF2 and TyrRS" . SPARSER::COLLECTION) ("TyrRS" . SPARSER::PROTEIN)
    ("all QFP sequence
variants"
     . SPARSER::VARIANT)
    ("the QFP sequence variants" . SPARSER::VARIANT)
    ("all the QFP sequence variants" . SPARSER::VARIANT)
    ("guanines" . SPARSER::NUCLEOBASE) ("the UV melting" . SPARSER::DRUG)
    ("the
QFP sequence variants"
     . SPARSER::VARIANT)
    ("mRNA and variants" . SPARSER::COLLECTION)
    ("DNA and RNA" . SPARSER::COLLECTION) ("α at" . SPARSER::PROTEIN)
    ("RF1" . SPARSER::PROTEIN) ("C ()" . SPARSER::PROTEIN)
    ("tyrosyl-tRNA synthetase" . SPARSER::PROTEIN) ("RF2" . SPARSER::PROTEIN)
    ("K3" . SPARSER::PROTEIN)
    ("a
15"
     . SPARSER::PROTEIN)
    ("min −  1" . SPARSER::PROTEIN)
    ("transcription
factor"
     . SPARSER::PROTEIN)
    ("EGFR and KRAS" . SPARSER::COLLECTION)
    ("ALK , BRAF , HER2 , ROS1 , and RET" . SPARSER::COLLECTION)
    ("ALK , ROS1 , and RET" . SPARSER::COLLECTION)
    ("lepidic component" . SPARSER::COMPONENT)
    ("ties" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("purine or pyrimidine" . SPARSER::COLLECTION)
    ("leukocytes, and TTF-1" . SPARSER::COLLECTION)
    ("KRAS or EGFR" . SPARSER::COLLECTION)
    ("at least focal solid component" . SPARSER::COMPONENT)
    ("therapeutically target mutant KRAS" . SPARSER::PROTEIN)
    ("erlotinib and gefitinib" . SPARSER::COLLECTION)
    ("leukocytes and heavier" . SPARSER::COLLECTION)
    ("at least focal (>20%) solid component" . SPARSER::COMPONENT)
    ("KRAS and EGFR" . SPARSER::COLLECTION)
    ("PD-1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TTF-1" . SPARSER::PROTEIN)
    ("RUNX2, p53 and HDAC6 and deacetylase activity" . SPARSER::COLLECTION)
    ("HDAC6 and deacetylase activity" . SPARSER::COLLECTION)
    ("nucleosomal histones as well as other substrates" . SPARSER::COLLECTION)
    ("nucleosomal histones" . SPARSER::PROTEIN)
    ("HDAC6 and HDAC3" . SPARSER::COLLECTION)
    ("metalloproteinase and VEGF" . SPARSER::COLLECTION)
    ("PTK2/FAK" . SPARSER::COLLECTION)
    ("an attractive molecular target" . SPARSER::TARGET-PROTEIN)
    ("HDAC6 and p53" . SPARSER::COLLECTION)
    ("the anti-HDAC6" . SPARSER::ANTIBODY)
    ("RUNX2/p53/HDAC6" . SPARSER::COLLECTION)
    ("RUNX2, p53 and HDAC6" . SPARSER::COLLECTION)
    ("p53, RUNX2 or p53" . SPARSER::COLLECTION)
    ("soluble chromatin" . SPARSER::PROTEIN)
    ("protein (GFP)" . SPARSER::PROTEIN) ("p53/RUNX2" . SPARSER::COLLECTION)
    ("monoclonal anti-RUNX2 antibody" . SPARSER::ANTIBODY)
    ("the anti-p53" . SPARSER::ANTIBODY)
    ("monoclonal anti-p53 antibody" . SPARSER::ANTIBODY)
    ("anti-RUNX2 and anti-p53" . SPARSER::COLLECTION)
    ("RUNX1 as well as RUNX3" . SPARSER::COLLECTION)
    ("p53 and RUNX2" . SPARSER::COLLECTION)
    ("MTT and Trypan" . SPARSER::COLLECTION) ("Trypan" . SPARSER::DRUG)
    ("RUNX2 and p53" . SPARSER::COLLECTION)
    ("collagen , osteopontin and osteocalcin" . SPARSER::COLLECTION)
    ("osteocalcin" . SPARSER::PROTEIN) ("osteopontin" . SPARSER::PROTEIN)
    ("RUNX1 and RUNX3" . SPARSER::COLLECTION)
    ("RUNX2 and RUNX3" . SPARSER::COLLECTION) ("ATDC" . SPARSER::PROTEIN)
    ("ATF/CREB" . SPARSER::COLLECTION) ("CREBZF" . SPARSER::PROTEIN)
    ("ASPP1/ASPP2" . SPARSER::COLLECTION)
    ("its pro-apoptotic target genes" . SPARSER::GENE)
    ("BAX , NOXA and PUMA" . SPARSER::COLLECTION)
    ("a sequence-specific transcription factor" . SPARSER::PROTEIN)
    ("tubacin" . SPARSER::DRUG)
    ("histone deacetylase 6 (HDAC6) and HDAC6" . SPARSER::COLLECTION)
    ("RUNX2/p53" . SPARSER::COLLECTION)
    ("p53 as well as RUNX2" . SPARSER::COLLECTION) ("TLN1" . SPARSER::PROTEIN)
    ("PTK2" . SPARSER::PROTEIN)
    ("bone morphogenetic protein 2" . SPARSER::PROTEIN)
    ("CBF β" . SPARSER::PROTEIN)
    ("Runt-related transcription factor 1" . SPARSER::PROTEIN)
    ("TRIM29" . SPARSER::PROTEIN) ("PHF1" . SPARSER::PROTEIN)
    ("ASPP2" . SPARSER::PROTEIN) ("ASPP1" . SPARSER::PROTEIN)
    ("NH 2" . SPARSER::MOLECULE) ("HDAC6" . SPARSER::PROTEIN)
    ("histone deacetylase 6" . SPARSER::PROTEIN) ("RUNX2" . SPARSER::PROTEIN)
    ("Runt-related transcription factor 2" . SPARSER::PROTEIN)
    ("GRP/GRP-R/PI3K" . SPARSER::COLLECTION)
    ("PI3K and PTEN" . SPARSER::COLLECTION)
    ("MAPK and cyclin D1" . SPARSER::COLLECTION)
    ("GRP and GRP-R" . SPARSER::COLLECTION)
    ("GRP or GRP-R" . SPARSER::COLLECTION)
    ("PTEN and p27" . SPARSER::COLLECTION) ("GRPR" . SPARSER::PROTEIN)
    ("PI3K/PTEN" . SPARSER::COLLECTION) ("CDK2/cyclin" . SPARSER::COLLECTION)
    ("CDK2/cyclin E" . SPARSER::COLLECTION)
    ("CDK4, CDK6, and cyclin D-type" . SPARSER::COLLECTION)
    ("lipid and protein" . SPARSER::COLLECTION)
    ("gastrin-releasing peptide (GRP)" . SPARSER::PROTEIN)
    ("GRP/GRP-R" . SPARSER::COLLECTION)
    ("Gastrin-releasing peptide (GRP) and its receptor (GRP-R)"
     . SPARSER::COLLECTION)
    ("DAP1" . SPARSER::PROTEIN)
    ("gastrin-releasing peptide" . SPARSER::PROTEIN)
    ("GRP-R" . SPARSER::PROTEIN)
    ("Gastrin-releasing peptide" . SPARSER::PROTEIN)
    ("YK, YK and YK" . SPARSER::COLLECTION) ("YK and FK" . SPARSER::COLLECTION)
    ("YK" . SPARSER::MOLECULE) ("a possible biomarker" . SPARSER::MOLECULE)
    ("EGFRvIII or Angptl4" . SPARSER::COLLECTION)
    ("a possible inducer" . SPARSER::PROTEIN)
    ("Ras/MEK/ERK" . SPARSER::COLLECTION)
    ("PPARγ and Smad" . SPARSER::COLLECTION)
    ("the peroxisome proliferator-activated receptor (PPAR) family"
     . SPARSER::PROTEIN-FAMILY)
    ("VEGF-A and interleukin" . SPARSER::COLLECTION)
    ("c-Myc/Max" . SPARSER::COLLECTION) ("Max" . SPARSER::PROTEIN)
    ("THBS2 and ITGB3" . SPARSER::COLLECTION)
    ("fluorescent-labeled dextran" . SPARSER::DEXTRAN)
    ("macromolecule" . SPARSER::MOLECULE) ("Dextran" . SPARSER::DEXTRAN)
    ("NF-kB/IL-8" . SPARSER::COLLECTION)
    ("the vascular endothelial growth factor (VEGF) and interleukin-8 (IL-8)"
     . SPARSER::COLLECTION)
    ("a florid form" . SPARSER::FORM) ("ERK/c-Myc" . SPARSER::COLLECTION)
    ("Angptl4" . SPARSER::PROTEIN) ("angiopoietin" . SPARSER::PROTEIN)
    ("enhanced green fluorescent protein (EGFP)" . SPARSER::PROTEIN)
    ("EGFR, or EGFRvIII" . SPARSER::COLLECTION) ("Tween20" . SPARSER::MOLECULE)
    ("VEGF-A" . SPARSER::PROTEIN) ("Myc/Max" . SPARSER::PROTEIN)
    ("FR180204" . SPARSER::DRUG) ("ITGB3" . SPARSER::PROTEIN)
    ("THBS2" . SPARSER::PROTEIN) ("COL15A1" . SPARSER::PROTEIN)
    ("SERPINB5" . SPARSER::DRUG) ("interleukin-8" . SPARSER::PROTEIN)
    ("PTEN/PI3K/Akt" . SPARSER::COLLECTION)
    ("cancer-specific miRNAs and their targets" . SPARSER::COLLECTION)
    ("pmiR-PTEN-mut" . SPARSER::COLLECTION)
    ("pmiR-PTEN-wt" . SPARSER::COLLECTION)
    ("miR-32 directly targets PTEN" . SPARSER::PROTEIN)
    ("3-(4,5-dimethylthiazol-2-yl)-2, 5-diphenyltetrazolium bromide"
     . SPARSER::MOLECULE)
    ("gene 2" . SPARSER::PROTEIN)
    ("insulin-like growth factor receptor" . SPARSER::PROTEIN)
    ("patients given Crizotinib" . SPARSER::DRUG) ("1b" . SPARSER::PROTEIN)
    ("A 48-year-old Caucasian male" . SPARSER::MOLECULE)
    ("gefitinib and Bevacizumab" . SPARSER::COLLECTION)
    ("Bevacizumab" . SPARSER::DRUG) ("Crizotinib" . SPARSER::DRUG)
    ("TTF1" . SPARSER::PROTEIN)
    ("angiotensin II and TGFβ1" . SPARSER::COLLECTION)
    ("brown adipocytes" . SPARSER::PROTEIN)
    ("available phosphoserine antibodies" . SPARSER::ANTIBODY)
    ("the Irs2 proximal promoter" . SPARSER::PROMOTER)
    ("MCT" . SPARSER::PROTEIN)
    ("tissue-specific ligands and transcription factors" . SPARSER::COLLECTION)
    ("IRS2 and IRS4" . SPARSER::COLLECTION) ("p85/p55" . SPARSER::COLLECTION)
    ("serine and tyrosine" . SPARSER::COLLECTION)
    ("available antibodies" . SPARSER::ANTIBODY)
    ("using available antibodies" . SPARSER::ANTIBODY)
    ("These data shed new light" . SPARSER::PROTEIN)
    ("BMP7 and IRS2" . SPARSER::COLLECTION)
    ("IRS1 and protein" . SPARSER::COLLECTION) ("Irs2" . SPARSER::PROTEIN)
    ("Irs" . SPARSER::PROTEIN)
    ("Akt, extracellular signal-regulated kinase and mammalian target of rapamycin"
     . SPARSER::COLLECTION)
    ("insulin-like growth factor-1 and brain-derived neurotrophic factor"
     . SPARSER::COLLECTION)
    ("phosphatidylinositol-3-kinase, Grb2 and SHP2" . SPARSER::COLLECTION)
    ("tyrosine/serine" . SPARSER::COLLECTION) ("Smad5" . SPARSER::PROTEIN)
    ("Bone morphogenetic protein" . SPARSER::PROTEIN)
    ("glycogen synthase kinase-3 beta" . SPARSER::PROTEIN)
    ("IRS4" . SPARSER::PROTEIN)
    ("phosphatidylinositol-3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("bone morphogenetic protein" . SPARSER::PROTEIN)
    ("diverse pathological states" . SPARSER::BIO-STATE)
    ("IRS2/Akt" . SPARSER::COLLECTION)
    ("JNK1, JNK2, and JNK3" . SPARSER::COLLECTION)
    ("JNK1 and JNK2" . SPARSER::COLLECTION)
    ("a stress-dependent MAPK" . SPARSER::PROTEIN)
    ("kinases, and Bcl-2" . SPARSER::COLLECTION)
    ("monomeric green JC1" . SPARSER::MOLECULE) ("RIN" . SPARSER::PROTEIN)
    ("JNK1/2 and IP 3 R" . SPARSER::COLLECTION)
    ("siRNA and xestospongin" . SPARSER::COLLECTION)
    ("dantrolene or ryanodine" . SPARSER::COLLECTION)
    ("channel-specific inhibitors" . SPARSER::INHIBITOR)
    ("dantrolene and ryanodine" . SPARSER::COLLECTION)
    ("dantrolene" . SPARSER::DRUG)
    ("the ryanodine receptor (RyR) and the inositol triphosphate receptor (IP 3 R)"
     . SPARSER::COLLECTION)
    ("RyR" . SPARSER::PROTEIN) ("ryanodine" . SPARSER::PROTEIN)
    ("Rhod-2" . SPARSER::COLLECTION) ("Rhod" . SPARSER::PROTEIN)
    ("thapsigargin" . SPARSER::MOLECULE) ("MitoSox" . SPARSER::DRUG)
    ("IL-1β and JNK1/2" . SPARSER::COLLECTION) ("mPTP" . SPARSER::PROTEIN)
    ("Normal JC1" . SPARSER::MOLECULE)
    ("ER and mitochondria" . SPARSER::COLLECTION)
    ("Ca 2+ handling and storage" . SPARSER::COLLECTION)
    ("Glyceraldehyde-3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("JNK3" . SPARSER::PROTEIN) ("JNK2" . SPARSER::PROTEIN)
    ("IR 3" . SPARSER::PROTEIN) ("IP 3 Rs" . SPARSER::PROTEIN)
    ("INS-1" . SPARSER::PROTEIN) ("Fluo-4" . SPARSER::DRUG)
    ("JC1" . SPARSER::MOLECULE) ("JC-1" . SPARSER::MOLECULE)
    ("JNK 1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("IRE-1" . SPARSER::PROTEIN)
    ("iron–sulfur" . SPARSER::MOLECULE) ("Nitric oxide" . SPARSER::MOLECULE)
    ("β-cell" . SPARSER::PROTEIN) ("interleukin 1β" . SPARSER::PROTEIN)
    ("IP 3 R" . SPARSER::PROTEIN) ("JNK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BRD7 and the NOD2 causal variants" . SPARSER::COLLECTION)
    ("functional uncommon variants" . SPARSER::VARIANT)
    ("IBD" . SPARSER::PROTEIN)
    ("four uncommon causal NOD2 variants" . SPARSER::VARIANT)
    ("BRD7 (rs9922362) and NOD2 (rs2076756)" . SPARSER::COLLECTION)
    ("BRD7 and NOD2" . SPARSER::COLLECTION) ("muramyl" . SPARSER::MOLECULE)
    ("a comparably-sized non-Jewish cohort" . SPARSER::MOLECULE)
    ("ICOSLG (inducible T-cell co-stimulator ligand) and AIRE (autoimmune regulator)"
     . SPARSER::COLLECTION)
    ("AIRE" . SPARSER::PROTEIN) ("ICOSLG" . SPARSER::PROTEIN)
    ("a cohort comprising 397 Ashkenazi Crohn’s" . SPARSER::MOLECULE)
    ("uncommon variants" . SPARSER::VARIANT)
    ("disease-causal variants" . SPARSER::VARIANT)
    ("HEATR3 and rs9922362" . SPARSER::COLLECTION)
    ("member 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("subfamily M" . SPARSER::PROTEIN)
    ("transient receptor potential cation channel" . SPARSER::PROTEIN)
    ("Murr1" . SPARSER::PROTEIN) ("COMMD1" . SPARSER::PROTEIN)
    ("chr2" . SPARSER::PROTEIN) ("autoimmune regulator" . SPARSER::PROTEIN)
    ("bromodomain containing 7" . SPARSER::PROTEIN)
    ("kappa light polypeptide gene" . SPARSER::PROTEIN)
    ("BRD7" . SPARSER::PROTEIN) ("HEATR3" . SPARSER::PROTEIN)
    ("TRPM2" . SPARSER::PROTEIN) ("NOD2" . SPARSER::PROTEIN)
    ("tribbles" . SPARSER::PROTEIN-FAMILY)
    ("a potent repressor of mRNA translation and suppressor"
     . SPARSER::COLLECTION)
    ("Akt, mTORC1 and mTORC2" . SPARSER::COLLECTION)
    ("receptors and IRS-2" . SPARSER::COLLECTION)
    ("FoxO1, FoxO3 and FoxO4" . SPARSER::COLLECTION)
    ("Akt and mTORC1" . SPARSER::COLLECTION)
    ("mTORC1 and FoxO1" . SPARSER::COLLECTION)
    ("SREBP-1-dependent lipogenic genes" . SPARSER::GENE)
    ("mTORC1/S6K1" . SPARSER::COLLECTION)
    ("Liver kinase B1 and the energy sensor AMP-activated protein kinase (AMPK)"
     . SPARSER::COLLECTION)
    ("Rheb and mTORC1" . SPARSER::COLLECTION)
    ("TSC1/TSC2" . SPARSER::COLLECTION)
    ("several antimicrobial peptides" . SPARSER::PEPTIDE)
    ("AMPs" . SPARSER::AMP)
    ("manganese superoxide dismutase and catalase" . SPARSER::COLLECTION)
    ("anabolic states" . SPARSER::BIO-STATE)
    ("tenfold more active dihydrotestosterone" . SPARSER::DRUG)
    ("isotretinoin" . SPARSER::DRUG) ("Isotretinoin" . SPARSER::DRUG)
    ("LXR" . SPARSER::PROTEIN)
    ("the key transcription factor" . SPARSER::PROTEIN)
    ("a potent translational inhibitor and growth suppressor ( xref ) xref"
     . SPARSER::COLLECTION)
    ("a potent translational inhibitor" . SPARSER::INHIBITOR)
    ("p21 and p27" . SPARSER::COLLECTION)
    ("GHR and IGFBP-1" . SPARSER::COLLECTION)
    ("GHR, IGF-1 and sterol" . SPARSER::COLLECTION)
    ("-1c" . SPARSER::COLLECTION) ("SREBP" . SPARSER::PROTEIN-FAMILY)
    ("-1 and IRS-2" . SPARSER::COLLECTION)
    ("growth hormone receptor (GHR)" . SPARSER::PROTEIN)
    ("GHR" . SPARSER::PROTEIN) ("the postprandial state" . SPARSER::BIO-STATE)
    ("external nutrient and internal growth factor" . SPARSER::GROWTH-FACTOR)
    ("retinoids" . SPARSER::DRUG) ("glucose and lipid" . SPARSER::COLLECTION)
    ("The major endocrine" . SPARSER::PROTEIN)
    ("FoxO1 and mTORC1" . SPARSER::COLLECTION)
    ("growth factors and amino acids" . SPARSER::COLLECTION)
    ("the forkhead box class O1 transcription factor (FoxO1) and the nutrient-sensitive kinase mammalian target of rapamycin complex"
     . SPARSER::COLLECTION)
    ("androgen, TNF-α and IGF-1" . SPARSER::COLLECTION)
    ("acroinfundibular keratinocytes" . SPARSER::PROTEIN)
    ("lipin-1" . SPARSER::PROTEIN) ("Liver kinase B1" . SPARSER::PROTEIN)
    ("sestrin3" . SPARSER::PROTEIN) ("SEB-1" . SPARSER::PROTEIN)
    ("SREBP-1" . SPARSER::PROTEIN) ("SREBP-1c" . SPARSER::PROTEIN)
    ("4E-BP-1" . SPARSER::PROTEIN) ("IGFBP-1" . SPARSER::PROTEIN)
    ("IGF-binding protein-1" . SPARSER::PROTEIN) ("IRS-2" . SPARSER::PROTEIN)
    ("insulin receptor substrate-1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("growth hormone" . SPARSER::PROTEIN)
    ("growth hormone receptor" . SPARSER::PROTEIN)
    ("class O" . SPARSER::PROTEIN)
    ("additional secretory proteins" . SPARSER::PROTEIN)
    ("COPD/emphysema" . SPARSER::COLLECTION)
    ("an independent prognostic biomarker" . SPARSER::MOLECULE)
    ("Stat3 and its downstream genes" . SPARSER::COLLECTION)
    ("Recombinant CHI3L1-GST fusion protein or control GST protein"
     . SPARSER::COLLECTION)
    ("CHI3L1" . SPARSER::PROTEIN) ("protein and GST" . SPARSER::COLLECTION)
    ("CHI3L1-GST" . SPARSER::COLLECTION)
    ("Almost all infiltrated macrophages" . SPARSER::PROTEIN)
    ("c-fms-rtTA" . SPARSER::PROTEIN-PAIR)
    ("MMP12 and Api6" . SPARSER::COLLECTION)
    ("MMP12 or Api6" . SPARSER::COLLECTION)
    ("another pro-inflammatory molecule" . SPARSER::MOLECULE)
    ("the non-tumor group and the doxycycline-untreated group"
     . SPARSER::COLLECTION)
    ("secretory CHI3L1 protein" . SPARSER::PROTEIN)
    ("all four doxycycline-treated CCSP-rtTA" . SPARSER::PROTEIN-PAIR)
    ("-DOX" . SPARSER::COLLECTION) ("a secretory protein" . SPARSER::PROTEIN)
    ("Stat3C" . SPARSER::PROTEIN) ("Stat3C-Flag" . SPARSER::PROTEIN-PAIR)
    ("Chitinase" . SPARSER::PROTEIN)
    ("soluble and secretory proteins" . SPARSER::PROTEIN)
    ("around 800 Stat3 downstream genes" . SPARSER::GENE)
    ("inflammatory myeloid" . SPARSER::PROTEIN)
    ("doxycycline-treated CCSP-rtTA" . SPARSER::PROTEIN-PAIR)
    ("chitinase" . SPARSER::PROTEIN) ("tetO" . SPARSER::PROTEIN)
    ("MMP-12" . SPARSER::PROTEIN)
    ("Matrix metalloproteinase" . SPARSER::PROTEIN)
    ("c-fms" . SPARSER::PROTEIN) ("MMP12" . SPARSER::PROTEIN)
    ("CHI3" . SPARSER::PROTEIN)
    ("loss of heterozygosity (LOH)" . SPARSER::PROTEIN)
    ("a potentially larger complex" . SPARSER::BIO-COMPLEX)
    ("a larger complex" . SPARSER::BIO-COMPLEX)
    ("Pez/Kibra" . SPARSER::COLLECTION)
    ("Kibra" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Pez" . SPARSER::PROTEIN)
    ("RGA" . SPARSER::PROTEIN)
    ("both prolines and the tyrosine" . SPARSER::COLLECTION)
    ("tryptophan and proline" . SPARSER::COLLECTION)
    ("the PPxY mutant or the ΔPTP mutant" . SPARSER::COLLECTION)
    ("PTPN14 and V5-tagged" . SPARSER::COLLECTION)
    ("CYR61 and CTGF" . SPARSER::COLLECTION)
    ("COL8A1 , CYR61 and ITGB2" . SPARSER::COLLECTION)
    ("Resazurin" . SPARSER::DRUG) ("TEAD" . SPARSER::PROTEIN)
    ("phosphatase, and β-catenin" . SPARSER::COLLECTION)
    ("around 90 kDa" . SPARSER::PROTEIN)
    ("AMOT, AMOTL1 and AMOTL2" . SPARSER::COLLECTION)
    ("AMOT" . SPARSER::PROTEIN) ("around 140 kDa" . SPARSER::PROTEIN)
    ("LATS-MOB" . SPARSER::COLLECTION) ("MOB" . SPARSER::PROTEIN)
    ("LATS" . SPARSER::PROTEIN) ("Hpo" . SPARSER::PROTEIN)
    ("CYR61" . SPARSER::PROTEIN) ("LATS2" . SPARSER::PROTEIN)
    ("AMOTL2" . SPARSER::PROTEIN) ("AMOTL1" . SPARSER::PROTEIN)
    ("COL8A1" . SPARSER::PROTEIN) ("ITGB2" . SPARSER::PROTEIN)
    ("Cyr61" . SPARSER::PROTEIN) ("P40" . SPARSER::PROTEIN)
    ("nV5" . SPARSER::PROTEIN) ("EF1α" . SPARSER::PROTEIN)
    ("L-D" . SPARSER::PROTEIN) ("D-A" . SPARSER::PROTEIN)
    ("P202" . SPARSER::PROTEIN) ("PTPN14" . SPARSER::PROTEIN)
    ("pathogenic Aβ peptide" . SPARSER::PEPTIDE) ("yrs" . SPARSER::PROTEIN)
    ("pure SIRT1" . SPARSER::PROTEIN)
    ("virtually no biomarkers" . SPARSER::MOLECULE)
    ("Enzyme" . SPARSER::ENZYME) ("amyloid- β" . SPARSER::MOLECULE)
    ("β -amyloid" . SPARSER::MOLECULE) ("ADAM10" . SPARSER::PROTEIN)
    ("amyloid-β" . SPARSER::MOLECULE)
    ("the physiological regulators of Thy-1 expression and the role of Thy-1"
     . SPARSER::COLLECTION)
    ("derived growth factor (PDGF)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("RhoA/ROCK" . SPARSER::COLLECTION)
    ("control group (118.89±6.02) and Thy-1 pcDNA3.1+RhoA V14 pcDNA3.1 group (90.28±24.94)"
     . SPARSER::COLLECTION)
    ("both RhoA ( xref and xref ) and Rac-1 ( xref )" . SPARSER::COLLECTION)
    ("isoprenylated" . SPARSER::PROTEIN)
    ("Rho, Rac and Cdc42" . SPARSER::COLLECTION)
    ("Rac and Cdc42" . SPARSER::COLLECTION) ("paxillin" . SPARSER::PROTEIN)
    ("membrane-associated protein" . SPARSER::PROTEIN)
    ("isoprenoids" . SPARSER::MOLECULE)
    ("p190 RhoGAP and Rho GTPase" . SPARSER::COLLECTION)
    ("α1β1 and α2β1" . SPARSER::COLLECTION)
    ("IL-1β and PMA" . SPARSER::COLLECTION)
    ("what function Thy-1" . SPARSER::PROTEIN)
    ("matrix metalloproteinase-9 and CXCL8" . SPARSER::COLLECTION)
    ("Thy-1 and RhoA" . SPARSER::COLLECTION)
    ("RhoB and RhoC" . SPARSER::COLLECTION) ("RhoC" . SPARSER::PROTEIN)
    ("RhoB" . SPARSER::PROTEIN) ("IL-1β-" . SPARSER::PROTEIN)
    ("chemicals, IL-1β and PMA" . SPARSER::COLLECTION)
    ("Thy-1 mRNA ( xref ) and protein ( xref )" . SPARSER::COLLECTION)
    ("IL-1β or TNF-α" . SPARSER::COLLECTION)
    ("interleukin-1β (IL-1β) or tumor necrosis factor-α (TNF-α)"
     . SPARSER::COLLECTION)
    ("glycosylphosphatidylinositol" . SPARSER::MOLECULE)
    ("integrins and selectins" . SPARSER::COLLECTION)
    ("selectins" . SPARSER::PROTEIN) ("RhoA and Rac-1" . SPARSER::COLLECTION)
    ("interleukin-1β (IL-1β) or phorbol-12-myristate-13-acetate (PMA)"
     . SPARSER::COLLECTION)
    ("PMA" . SPARSER::PROTEIN) ("αvβ3" . SPARSER::PROTEIN)
    ("p190 RhoGAP" . SPARSER::PROTEIN)
    ("immunoglobulin superfamily" . SPARSER::PROTEIN)
    ("fibronectin receptor" . SPARSER::PROTEIN) ("α1β1" . SPARSER::PROTEIN)
    ("CXCL8" . SPARSER::PROTEIN)
    ("matrix metalloproteinase-9" . SPARSER::PROTEIN)
    ("Y-27632" . SPARSER::MOLECULE) ("mL −1" . SPARSER::PROTEIN)
    ("Rac-1" . SPARSER::PROTEIN)
    ("phorbol-12-myristate-13-acetate" . SPARSER::DRUG)
    ("interleukin-1β" . SPARSER::PROTEIN) ("Thy-1" . SPARSER::PROTEIN)
    ("BRCA1/PALB2" . SPARSER::COLLECTION) ("proper BRCA1" . SPARSER::PROTEIN)
    ("previously classified pathogenic variants" . SPARSER::VARIANT)
    ("10 not pathogenic variants" . SPARSER::VARIANT)
    ("the peptide’s" . SPARSER::PEPTIDE)
    ("the known pathogenic mutants" . SPARSER::MUTANT)
    ("PON" . SPARSER::PROTEIN) ("pathogenic BRCA1 variants" . SPARSER::VARIANT)
    ("BRCA1 or BRCA2" . SPARSER::COLLECTION) ("P38398" . SPARSER::PROTEIN)
    ("BRCA 1" . SPARSER::PROTEIN) ("protein and PAK3" . SPARSER::COLLECTION)
    ("nonsyndromic mental retardation" . SPARSER::PROTEIN)
    ("kalirin and Cdc42" . SPARSER::COLLECTION)
    ("possible differentially" . SPARSER::PROTEIN)
    ("GTPases, Rac1 and CDC42" . SPARSER::COLLECTION)
    ("PAK1 and spinophilin" . SPARSER::COLLECTION)
    ("Spinophilin" . SPARSER::PROTEIN) ("antipsychotic" . SPARSER::DRUG)
    ("substance" . SPARSER::SUBSTANCE)
    ("PMI group (High, Medium and Low) and diagnosis (F 2, 28.1  = 1.30, p = 0.29)"
     . SPARSER::COLLECTION)
    ("PMI" . SPARSER::PROTEIN) ("Kalirin" . SPARSER::PROTEIN)
    ("both kalirin (via Rac1) and CDC42" . SPARSER::COLLECTION)
    ("PAK1/PAK3" . SPARSER::COLLECTION)
    ("hippocampal region CA1" . SPARSER::PROTEIN)
    ("wild type PAK1 or constitutively active PAK1" . SPARSER::COLLECTION)
    ("LIMK" . SPARSER::PROTEIN)
    ("post-synaptic components" . SPARSER::COMPONENT)
    ("gyrus (HG)" . SPARSER::PROTEIN) ("PAK" . SPARSER::PROTEIN-FAMILY)
    ("spinophilin" . SPARSER::PROTEIN)
    ("kalirin and CDC42" . SPARSER::COLLECTION) ("kalirin" . SPARSER::PROTEIN)
    ("F 12" . SPARSER::PROTEIN) ("PAK2" . SPARSER::PROTEIN)
    ("phospho-threonine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("Cdk-5" . SPARSER::PROTEIN) ("A–C" . SPARSER::PROTEIN)
    ("PAK3" . SPARSER::PROTEIN) ("f-actin" . SPARSER::BIO-COMPLEX)
    ("CDC42" . SPARSER::PROTEIN) ("HER2, mTOR or PI3K" . SPARSER::COLLECTION)
    ("arm and PIK3CA" . SPARSER::COLLECTION)
    ("a heterodimeric enzyme" . SPARSER::ENZYME)
    ("Phosphatidylinositol-3,4,5-trisphosphate" . SPARSER::PIP3)
    ("Phosphatidylinositol 3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a β-deletion-specific antibody" . SPARSER::PROTEIN)
    ("both full-length RT+ hTERT and RT− β-deletion" . SPARSER::COLLECTION)
    ("hTERT and β-deletion" . SPARSER::COLLECTION)
    ("SRSF11, hnRNPH2 and hnRNPL" . SPARSER::COLLECTION)
    ("PSF and p54/" . SPARSER::COLLECTION) ("/NONO" . SPARSER::COLLECTION)
    ("PSF" . SPARSER::PROTEIN) ("Brm" . SPARSER::PROTEIN)
    ("hTERT and mTERT" . SPARSER::COLLECTION)
    ("hTR or TRF size" . SPARSER::COLLECTION)
    ("HER2/ERBB2" . SPARSER::COLLECTION) ("Southern blot" . SPARSER::PROTEIN)
    ("fragment (TRF)" . SPARSER::FRAGMENT) ("TRF" . SPARSER::PROTEIN)
    ("telomerase activity and breast cancer subtype" . SPARSER::COLLECTION)
    ("the endogenous functional hTERT" . SPARSER::PROTEIN)
    ("a dominant-negative inhibitor" . SPARSER::INHIBITOR)
    ("RTA" . SPARSER::PROTEIN)
    ("RT− point mutant D868A-hTERT ( xref ) and RT− β-deletion"
     . SPARSER::COLLECTION)
    ("a dominant-negative telomerase activity inhibitor" . SPARSER::INHIBITOR)
    ("SRSF11 and hnRNPH2" . SPARSER::COLLECTION)
    ("hnRNPL or hnRNPH2" . SPARSER::COLLECTION) ("hnRNPH2" . SPARSER::PROTEIN)
    ("proteins and hnRNPs" . SPARSER::COLLECTION)
    ("SRSF11, hnRNPL and hnRNPH2" . SPARSER::COLLECTION)
    ("hnRNPH" . SPARSER::PROTEIN) ("hnRNPL" . SPARSER::PROTEIN)
    ("FLAG/GFP" . SPARSER::COLLECTION) ("PTC−" . SPARSER::PROTEIN)
    ("PTC-" . SPARSER::PROTEIN)
    ("hTERT mRNA (BioGPS; 31) and telomerase activity ( xref )"
     . SPARSER::COLLECTION)
    ("Polyribosome" . SPARSER::BIO-COMPLEX)
    ("polyribosome" . SPARSER::BIO-COMPLEX)
    ("a pleiotropic inhibitor" . SPARSER::INHIBITOR)
    ("the RT motifs B – E (RT−) and the C-terminal part" . SPARSER::COLLECTION)
    ("the full-length RT competent form" . SPARSER::FORM)
    ("a catalytic reverse-transcriptase protein subunit (hTERT) and telomerase RNA (hTR/hTERC; 1)"
     . SPARSER::COLLECTION)
    ("hTERC" . SPARSER::RNA) ("a major hTERT" . SPARSER::PROTEIN)
    ("SRSF11, HNRNPH2 and HNRNPL" . SPARSER::COLLECTION)
    ("HNRNPL" . SPARSER::PROTEIN) ("Tra2" . SPARSER::PROTEIN)
    ("p54" . SPARSER::PROTEIN) ("B–E" . SPARSER::PROTEIN)
    ("Mnl1" . SPARSER::PROTEIN) ("SRSF3" . SPARSER::PROTEIN)
    ("UPF1" . SPARSER::PROTEIN) ("retinoic acid" . SPARSER::MOLECULE)
    ("B – E" . SPARSER::PROTEIN)
    ("reverse-transcriptase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HNRNPH2" . SPARSER::PROTEIN) ("SRSF11" . SPARSER::PROTEIN)
    ("T cell acute lymphoblastic leukemia" . SPARSER::PROTEIN)
    ("the closely-related Notch1" . SPARSER::PROTEIN)
    ("only mutant p53 protein" . SPARSER::PROTEIN)
    ("Notch1, Notch2 or Notch4" . SPARSER::COLLECTION)
    ("a functional MAML1" . SPARSER::PROTEIN)
    ("the CBF1:NICD:MAML ternary complex" . SPARSER::BIO-COMPLEX)
    ("CBF1:NICD:MAML" . SPARSER::BIO-COMPLEX) ("RAM-ANK" . SPARSER::COLLECTION)
    ("ANK" . SPARSER::PROTEIN) ("RAM" . SPARSER::PROTEIN)
    ("-GTGGGAA-3" . SPARSER::COLLECTION)
    ("Notch3 and p21" . SPARSER::COLLECTION)
    ("doxorubicin or etoposide" . SPARSER::COLLECTION)
    ("transcriptional activators and their co-activators ( xref )"
     . SPARSER::COLLECTION)
    ("MAML" . SPARSER::PROTEIN) ("Mastermind" . SPARSER::PROTEIN-FAMILY)
    ("CBF1/RBP-Jκ" . SPARSER::COLLECTION) ("NICD" . SPARSER::PROTEIN)
    ("Notch4" . SPARSER::PROTEIN) ("Notch2" . SPARSER::PROTEIN)
    ("MAML1" . SPARSER::PROTEIN) ("Hes1" . SPARSER::PROTEIN)
    ("mN1" . SPARSER::PROTEIN) ("Notch1" . SPARSER::PROTEIN)
    ("RBP-Jκ" . SPARSER::PROTEIN) ("CBF1" . SPARSER::PROTEIN)
    ("Notch3" . SPARSER::PROTEIN) ("BB and GB" . SPARSER::COLLECTION)
    ("VC" . SPARSER::MOLECULE) ("SDA" . SPARSER::PROTEIN)
    ("ADA" . SPARSER::PROTEIN) ("BB" . SPARSER::MOLECULE)
    ("mTOR and DNA-PK" . SPARSER::COLLECTION) ("taxanes" . SPARSER::DRUG)
    ("BUB1, CENPA, C21orf45, FAM64A and NCAPH" . SPARSER::COLLECTION)
    ("stathmin-DNA-PK-p53" . SPARSER::COLLECTION)
    ("S4 and S5" . SPARSER::COLLECTION)
    ("BUB1, CENPA, FAM64A and NCAPH" . SPARSER::COLLECTION)
    ("stathmin, FAM64A, NCAPH and BUB1" . SPARSER::COLLECTION)
    ("NCAPH and CENPA" . SPARSER::COLLECTION)
    ("DNA-PK, BUB1, CENPA, C21Orf45, FAM64A and NCAPH" . SPARSER::COLLECTION)
    ("CENPA" . SPARSER::PROTEIN) ("prognostic biomarker" . SPARSER::MOLECULE)
    ("p53 and stathmin" . SPARSER::COLLECTION) ("p  " . SPARSER::PROTEIN)
    ("stathmin, p53 and DNA-PK" . SPARSER::COLLECTION)
    ("condensin" . SPARSER::PROTEIN-FAMILY) ("NCAPH" . SPARSER::PROTEIN)
    ("MDM2 and p53" . SPARSER::COLLECTION)
    ("the unphosphorylable mutants" . SPARSER::MUTANT)
    ("p53-S15" . SPARSER::COLLECTION)
    ("endogenous DNA-PK and wild type p53 protein" . SPARSER::COLLECTION)
    ("DNA-PK-p53" . SPARSER::COLLECTION) ("DNA-PK/p53" . SPARSER::COLLECTION)
    ("stathmin and DNA-PK or stathmin and p53" . SPARSER::COLLECTION)
    ("DNA-PK or stathmin and p53" . SPARSER::COLLECTION)
    ("DNA-PK and p53" . SPARSER::COLLECTION)
    ("p53 ( xref ) and γH2A" . SPARSER::COLLECTION)
    ("HSP90 (Dote et al, xref ) and PKAR2α (Huston et al, xref )"
     . SPARSER::COLLECTION)
    ("PP6C (Mi et al, xref ), PP1 (Wong et al, xref ), HSP90 (Dote et al, xref ) and PKAR2α (Huston et al, xref )"
     . SPARSER::COLLECTION)
    ("cycloheximide (CHX)" . SPARSER::PROTEIN)
    ("mRNA or protein" . SPARSER::COLLECTION)
    ("given stathmin's" . SPARSER::PROTEIN)
    ("given stathmin" . SPARSER::PROTEIN)
    ("stathmin and DNA-PK" . SPARSER::COLLECTION) ("TAX" . SPARSER::DRUG)
    ("Taxol" . SPARSER::DRUG) ("type I and type II" . SPARSER::COLLECTION)
    ("oncoprotein 18, OP18, or metablastin" . SPARSER::COLLECTION)
    ("metablastin" . SPARSER::PROTEIN)
    ("stathmin and p53" . SPARSER::COLLECTION)
    ("stathmin or DNA-PK" . SPARSER::COLLECTION) ("pLP2" . SPARSER::PROTEIN)
    ("S6B" . SPARSER::PROTEIN) ("BUB1" . SPARSER::PROTEIN)
    ("ORF45" . SPARSER::PROTEIN) ("CENP-A" . SPARSER::PROTEIN)
    ("NU7441" . SPARSER::MOLECULE) ("sh-RNAs" . SPARSER::RNA)
    ("p53 S" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PP6C" . SPARSER::PROTEIN)
    ("DNA-PK catalytic subunit" . SPARSER::PROTEIN) ("S15" . SPARSER::PROTEIN)
    ("histone-H3" . SPARSER::PROTEIN) ("oncoprotein 18" . SPARSER::PROTEIN)
    ("stathmin 1" . SPARSER::PROTEIN) ("Van" . SPARSER::PROTEIN)
    ("the secondary chemical" . SPARSER::MOLECULE) ("IDPs" . SPARSER::PROTEIN)
    ("The NMR alpha carbon secondary chemical" . SPARSER::MOLECULE)
    ("K24N and MDM2" . SPARSER::COLLECTION) ("FEP" . SPARSER::PROTEIN)
    ("MDM2 and the p53TAD-MDM2 complex" . SPARSER::COLLECTION)
    ("MDM2, and forms" . SPARSER::COLLECTION)
    ("a flexible conformation" . SPARSER::BIO-CONFORMATION)
    ("K24N" . SPARSER::PROTEIN) ("MDM2 and p53TADc" . SPARSER::COLLECTION)
    ("fits" . SPARSER::PROTEIN-FAMILY) ("p53-MDM2" . SPARSER::COLLECTION)
    ("K24N-MDM2" . SPARSER::COLLECTION) ("TIP3" . SPARSER::PROTEIN)
    ("light chain" . SPARSER::PROTEIN) ("NUC-1" . SPARSER::PROTEIN)
    ("P27" . SPARSER::PROTEIN) ("K24" . SPARSER::PROTEIN)
    ("promoters or regulatory regions" . SPARSER::COLLECTION)
    ("NF-κB and PARP1" . SPARSER::COLLECTION) ("microglia" . SPARSER::PROTEIN)
    ("polymerase-1" . SPARSER::COLLECTION)
    ("the left temporal lobe" . SPARSER::PROTEIN)
    ("the bilateral inferior temporal lobe" . SPARSER::PROTEIN)
    ("GM" . SPARSER::PROTEIN)
    ("carrying at least one minor allele" . SPARSER::ALLELE)
    ("at least one alternative allele" . SPARSER::ALLELE)
    ("the causative genes" . SPARSER::GENE)
    ("five independent cross sectional cohorts" . SPARSER::MOLECULE)
    ("PARP1 and CARD10" . SPARSER::COLLECTION)
    ("the remaining ADNI APOE ε3/ε3 group" . SPARSER::MOLECULE)
    ("beta-amyloid" . SPARSER::PROTEIN) ("member 10" . SPARSER::PROTEIN)
    ("Caspase recruitment domain family" . SPARSER::PROTEIN)
    ("HYAL4" . SPARSER::PROTEIN) ("Bax and PUMA" . SPARSER::COLLECTION)
    ("Mcl-1, Bcl-2 and Bcl-XL" . SPARSER::COLLECTION)
    ("first isolated total RNA from the splenocytes of TCL1 -Tg and TCL1 -Tg:p53 −/− mice"
     . SPARSER::COLLECTION)
    ("Bcl-XL and Bcl-2" . SPARSER::COLLECTION)
    ("Mcl-1 and Bcl-XL" . SPARSER::COLLECTION)
    ("Mcl-1, Bcl-XL, and Bcl-2" . SPARSER::COLLECTION)
    ("Bcl-2, Mcl-1, and Bcl-XL" . SPARSER::COLLECTION)
    ("PCs" . SPARSER::PROTEIN)
    ("standard chemotherapeutic drugs" . SPARSER::DRUG)
    ("p53 and drug" . SPARSER::COLLECTION) ("oxaliplatin" . SPARSER::DRUG)
    ("chlorambucil" . SPARSER::DRUG) ("annexin-V/PI" . SPARSER::COLLECTION)
    ("fludarabine" . SPARSER::DRUG)
    ("promoter and immunoglobulin" . SPARSER::COLLECTION)
    ("APRIL" . SPARSER::PROTEIN) ("-Tg" . SPARSER::COLLECTION)
    ("-Tg:p53wt" . SPARSER::BIO-COMPLEX) ("/IgM" . SPARSER::COLLECTION)
    ("-Tg:p53" . SPARSER::BIO-COMPLEX) ("annexin-V" . SPARSER::PROTEIN)
    ("p 53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("b-Myb" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("JNK and/or AP-1 inhibitors" . SPARSER::COLLECTION)
    ("all three major MAPKs" . SPARSER::PROTEIN)
    ("homodimers and/or heterodimers" . SPARSER::COLLECTION)
    ("c-Jun and/or JunB" . SPARSER::COLLECTION)
    ("c-Jun and JunB" . SPARSER::COLLECTION)
    ("JunB/c-Fos" . SPARSER::COLLECTION) ("c-Jun/c-Fos" . SPARSER::COLLECTION)
    ("Dimers" . SPARSER::DIMER) ("c-Jun and Fra-1" . SPARSER::COLLECTION)
    ("c-Jun and cFos" . SPARSER::COLLECTION)
    ("JunB, and JunB" . SPARSER::COLLECTION) ("cFos" . SPARSER::PROTEIN)
    ("Jun/c-Fos" . SPARSER::COLLECTION) ("Jun/Fra-1" . SPARSER::COLLECTION)
    ("p-p38 and p-ERK" . SPARSER::COLLECTION)
    ("Kinase (JNK)" . SPARSER::KINASE)
    ("ERK, and p38 MAPK" . SPARSER::COLLECTION)
    ("c-Jun (more than IL-1) and c-Fos (much less than IL-1)"
     . SPARSER::COLLECTION)
    ("c-Jun, c-Fos, JunB and Fra-1" . SPARSER::COLLECTION)
    ("an actual promoter" . SPARSER::PROMOTER) ("pc" . SPARSER::PROTEIN)
    ("pc-Jun" . SPARSER::COLLECTION) ("IL-1 or IL-4" . SPARSER::COLLECTION)
    ("IL-1 and IL-4" . SPARSER::COLLECTION) ("Trans" . SPARSER::PROTEIN-FAMILY)
    ("Fra-1 and c-Jun" . SPARSER::COLLECTION)
    ("c-Fos and FosB" . SPARSER::COLLECTION)
    ("FosB and Fra-1" . SPARSER::COLLECTION)
    ("Jun and Fos" . SPARSER::COLLECTION)
    ("c-Jun, JunB, c-Fos, and Fra-1" . SPARSER::COLLECTION)
    ("IL-1-" . SPARSER::PROTEIN) ("IL-1 and/or IL-4" . SPARSER::COLLECTION)
    ("JNK, ERK and p38 MAPK" . SPARSER::COLLECTION)
    ("strong activators" . SPARSER::ACTIVATOR)
    ("c-Jun, c-Fos and FosB" . SPARSER::COLLECTION)
    ("JunB, JunD, Fra-1 and Fra-2" . SPARSER::COLLECTION)
    ("JunD" . SPARSER::PROTEIN) ("FosB" . SPARSER::PROTEIN)
    ("homodimers, or heterodimers" . SPARSER::COLLECTION)
    ("Fos or ATF" . SPARSER::COLLECTION)
    ("a dimeric transcription factor" . SPARSER::PROTEIN)
    ("Jun, Fos, and ATF" . SPARSER::COLLECTION)
    ("inflammatory cytokines and mitogens" . SPARSER::COLLECTION)
    ("cytokines and mitogens" . SPARSER::COLLECTION)
    ("chondrocytes" . SPARSER::PROTEIN)
    ("E-cadherin [ xref ] and FasL [ xref ]" . SPARSER::COLLECTION)
    ("proteoglycan" . SPARSER::PROTEIN)
    ("IL-1β, TNFα and prostaglandin E2" . SPARSER::COLLECTION)
    ("less active JunB-containing dimers" . SPARSER::DIMER)
    ("c-Jun, JunB, and c-Fos" . SPARSER::COLLECTION)
    ("c-Jun and c-Fos" . SPARSER::COLLECTION)
    ("mitogen activated protein kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("βgal" . SPARSER::PROTEIN)
    ("AP-1 Transcription Factor" . SPARSER::PROTEIN)
    ("p-p38" . SPARSER::PROTEIN)
    ("Glyceraldehyde-3-Phosphate Dehydrogenase" . SPARSER::PROTEIN)
    ("Fra-1" . SPARSER::PROTEIN) ("stromelysin-1" . SPARSER::PROTEIN)
    ("prostaglandin E2" . SPARSER::MOLECULE) ("c-Fos" . SPARSER::PROTEIN)
    ("Matrix metalloproteinase-3" . SPARSER::PROTEIN)
    ("particularly visceral fat" . SPARSER::PROTEIN)
    ("phytonutrients" . SPARSER::DRUG) ("wine" . SPARSER::MOLECULE)
    ("micronutrients" . SPARSER::MOLECULE)
    ("the wrong drug or combination" . SPARSER::COLLECTION)
    ("-carotene and lycopene" . SPARSER::COLLECTION)
    ("-carotene" . SPARSER::MOLECULE) ("lycopene" . SPARSER::DRUG)
    ("carotene" . SPARSER::MOLECULE) ("carotenoids" . SPARSER::MOLECULE)
    ("uric acid and bilirubin" . SPARSER::COLLECTION)
    ("nonenzymatic antioxidants" . SPARSER::DRUG)
    ("catalase, glutathione peroxidase, thioredoxin, and peroxiredoxin"
     . SPARSER::COLLECTION)
    ("peroxiredoxin" . SPARSER::PROTEIN) ("thioredoxin" . SPARSER::PROTEIN)
    ("Superoxide" . SPARSER::MOLECULE)
    ("lipids, and proteins" . SPARSER::COLLECTION) ("Lep" . SPARSER::PROTEIN)
    ("ROS and mitochondrial targets" . SPARSER::COLLECTION)
    ("hispidin" . SPARSER::MOLECULE)
    ("atypical antipsychotics" . SPARSER::DRUG)
    ("antipsychotics" . SPARSER::DRUG) ("adipokines" . SPARSER::PROTEIN-FAMILY)
    ("PGC-1 α and UCP-2" . SPARSER::COLLECTION)
    ("perilipin" . SPARSER::PROTEIN)
    ("preadipocytes and adipocytes" . SPARSER::COLLECTION)
    ("ROS and downstream effector kinases" . SPARSER::COLLECTION)
    ("particular PKC β" . SPARSER::PROTEIN)
    ("lower visceral fat" . SPARSER::PROTEIN) ("Antioxidants" . SPARSER::DRUG)
    ("Receptor-" . SPARSER::RECEPTOR)
    ("CCAAT/Enhancer Binding Protein-" . SPARSER::PROTEIN)
    ("preadipocytes" . SPARSER::PROTEIN)
    ("Tumor Necrosis Factor-" . SPARSER::PROTEIN)
    ("sorbitol" . SPARSER::PROTEIN)
    ("eukaryotic translational initiating factor 2" . SPARSER::PROTEIN)
    ("eIF2" . SPARSER::PROTEIN) ("-subunit" . SPARSER::FRAGMENT)
    ("BiP" . SPARSER::PROTEIN) ("adiponectin" . SPARSER::PROTEIN)
    ("RAGE" . SPARSER::PROTEIN)
    ("apolipoprotein B and phospholipid" . SPARSER::COLLECTION)
    ("sugars" . SPARSER::MOLECULE) ("synthase, and eNOS" . SPARSER::COLLECTION)
    ("prostacyclin" . SPARSER::MOLECULE)
    ("fatty acid (FFA)" . SPARSER::MOLECULE) ("FFA" . SPARSER::PROTEIN)
    ("mature adipocytes" . SPARSER::PROTEIN)
    ("angiotensin 1-converting enzyme" . SPARSER::COLLECTION)
    ("ARB" . SPARSER::PROTEIN) ("ACE" . SPARSER::PROTEIN)
    ("PKC and NADPH oxidase" . SPARSER::COLLECTION)
    ("ischemic preconditioning intracellular ROS" . SPARSER::PROTEIN)
    ("Noda" . SPARSER::PROTEIN-FAMILY)
    ("PKC β and prolyl-isomerization" . SPARSER::COLLECTION)
    ("TIM" . SPARSER::HUMAN-PROTEIN-FAMILY) ("IMS" . SPARSER::PROTEIN-FAMILY)
    ("mitochondrial antioxidants" . SPARSER::DRUG)
    ("mitochondrial ROS" . SPARSER::PROTEIN)
    ("mitochondrial superoxide" . SPARSER::MOLECULE)
    ("Nox1-derived ROS" . SPARSER::PROTEIN) ("Nox1" . SPARSER::PROTEIN)
    ("ApoE" . SPARSER::PROTEIN) ("Nox2 and Nox4" . SPARSER::COLLECTION)
    ("Nox2" . SPARSER::PROTEIN) ("chloride channel-3" . SPARSER::COLLECTION)
    ("aquaporins" . SPARSER::PROTEIN) ("Aquaporins" . SPARSER::PROTEIN)
    ("aquaporin" . SPARSER::PROTEIN) ("electrons" . SPARSER::MOLECULE)
    ("ETC" . SPARSER::PROTEIN)
    ("lipids, proteins, and DNA" . SPARSER::COLLECTION)
    ("H 2 O 2 and O" . SPARSER::COLLECTION)
    ("catalase, glutathione peroxidase, and peroxiredoxins"
     . SPARSER::COLLECTION)
    ("peroxiredoxins" . SPARSER::PROTEIN) ("OH" . SPARSER::PROTEIN)
    ("the growth factor adapter Shc (p66 Shc ) and some isoforms"
     . SPARSER::COLLECTION)
    ("protein and protein" . SPARSER::COLLECTION)
    ("uric acid" . SPARSER::MOLECULE) ("vitamin C" . SPARSER::MOLECULE)
    ("UCP-2" . SPARSER::PROTEIN) ("PGC-1 α" . SPARSER::PROTEIN)
    ("PPAR- γ" . SPARSER::PROTEIN)
    ("CCAAT/Enhancer Binding Protein" . SPARSER::PROTEIN)
    ("TNF α" . SPARSER::PROTEIN) ("Tumor Necrosis Factor" . SPARSER::PROTEIN)
    ("uncoupling protein-1" . SPARSER::PROTEIN) ("factor 2" . SPARSER::PROTEIN)
    ("angiotensin 1" . SPARSER::PROTEIN) ("Angiotensin II" . SPARSER::PROTEIN)
    ("PKC ε" . SPARSER::PROTEIN) ("I/R" . SPARSER::PROTEIN)
    ("p66Shc" . SPARSER::PROTEIN) ("PKC β" . SPARSER::PROTEIN)
    ("rac1" . SPARSER::PROTEIN) ("Complex I" . SPARSER::PROTEIN)
    ("Nox4" . SPARSER::PROTEIN) ("low-density lipoprotein" . SPARSER::PROTEIN)
    ("ClC-3" . SPARSER::PROTEIN) ("chloride channel" . SPARSER::PROTEIN)
    ("glutathione peroxidase" . SPARSER::PROTEIN)
    ("hydroxyl radical" . SPARSER::MOLECULE)
    ("superoxide anion" . SPARSER::MOLECULE) ("p66 Shc" . SPARSER::PROTEIN)
    ("FADD, Pin1 and PP2A" . SPARSER::COLLECTION)
    ("Pin1 and PP2A" . SPARSER::COLLECTION)
    ("PP2A or PP1" . SPARSER::COLLECTION)
    ("PKA ( xref , xref ) or PKMζ ( xref )" . SPARSER::COLLECTION)
    ("PKM" . SPARSER::PROTEIN) ("p-tau" . SPARSER::COLLECTION)
    ("residual p-FADD" . SPARSER::COLLECTION)
    ("anti-CD3 or anti-Fas" . SPARSER::COLLECTION)
    ("IL-5 and Pin1" . SPARSER::COLLECTION)
    ("Either IL-5 or constitutively active (S16A) Pin1" . SPARSER::COLLECTION)
    ("caspase 8 and Bid" . SPARSER::COLLECTION)
    ("FADD and caspase 8" . SPARSER::COLLECTION)
    ("Casein Kinase 1 or Plk1" . SPARSER::COLLECTION)
    ("Phospho-null Ser194Ala FADD mutants" . SPARSER::MUTANT)
    ("Fas or FasL" . SPARSER::COLLECTION) ("ongoing Fas" . SPARSER::PROTEIN)
    ("otherwise untreated BAL Eos" . SPARSER::PROTEIN)
    ("BAL Eos or peripheral blood Eos" . SPARSER::COLLECTION)
    ("segmental allergen" . SPARSER::MOLECULE)
    ("IL-5 and Fas" . SPARSER::COLLECTION) ("FADD-Pin1" . SPARSER::COLLECTION)
    ("anti-Fas and IL-5" . SPARSER::COLLECTION)
    ("either IL-5 and/or anti-Fas" . SPARSER::COLLECTION)
    ("phospho-mimetic Glu or Asp" . SPARSER::COLLECTION)
    ("threonine-proline" . SPARSER::COLLECTION)
    ("serine-proline" . SPARSER::COLLECTION)
    ("anti-Fas and cytoplasmic and nuclear fractions" . SPARSER::COLLECTION)
    ("anti-Fas treated Eos" . SPARSER::PROTEIN)
    ("S16A (constitutively active) Pin1 or S16D (constitutively inactive) Pin1"
     . SPARSER::PROTEIN)
    ("Pin1 or S16D" . SPARSER::COLLECTION)
    ("Bid and caspase" . SPARSER::COLLECTION)
    ("Bid, caspase 3 and caspase 9" . SPARSER::COLLECTION)
    ("TAT-GFP" . SPARSER::COLLECTION)
    ("phosphatase or kinase" . SPARSER::COLLECTION)
    ("phospho-null mutants" . SPARSER::MUTANT)
    ("Otherwise untreated Eos" . SPARSER::PROTEIN)
    ("Glu or Asp" . SPARSER::COLLECTION)
    ("FADD and Pin1" . SPARSER::COLLECTION) ("p-FADD" . SPARSER::COLLECTION)
    ("treatment wth anti-Fas" . SPARSER::ANTIBODY)
    ("Only Ser16A mutants" . SPARSER::MUTANT)
    ("alanine (A; phospho-null) or aspartic acid (D; phospho-mimetic)"
     . SPARSER::COLLECTION)
    ("TAT-HA-Pin1" . SPARSER::COLLECTION) ("Fas or IL-5" . SPARSER::COLLECTION)
    ("IL-5 and/or anti-Fas" . SPARSER::COLLECTION)
    ("lysis and PPIase" . SPARSER::COLLECTION)
    ("control (GFP) protein fused" . SPARSER::PROTEIN)
    ("penetratin" . SPARSER::DRUG) ("TAT" . SPARSER::PROTEIN)
    ("otherwise untreated Eos" . SPARSER::PROTEIN)
    ("PARP, caspase 3 and Bid" . SPARSER::COLLECTION)
    ("Fas-FasL" . SPARSER::COLLECTION) ("IL-5 or GM-CSF" . SPARSER::COLLECTION)
    ("Death Associated Protein Kinase 1 (DAPK1) or Mixed Lineage Kinase 3 (MLK3)"
     . SPARSER::COLLECTION)
    ("dipeptide" . SPARSER::MOLECULE)
    ("cytokines and Eos" . SPARSER::COLLECTION)
    ("the receptor-associated death-inducing signaling complex (DISC)"
     . SPARSER::BIO-COMPLEX)
    ("This pro-apoptotic agonist" . SPARSER::AGONIST)
    ("FasL" . SPARSER::PROTEIN)
    ("anti-IL-5 monoclonal antibodies" . SPARSER::ANTIBODY)
    ("reslizumab" . SPARSER::DRUG)
    ("IL-5, GM-CSF or IL-3" . SPARSER::COLLECTION)
    ("In vivo activated bronchoalvelolar (BAL) Eos" . SPARSER::PROTEIN)
    ("IL-5 and anti-Fas" . SPARSER::COLLECTION)
    ("Fas and pro-survival" . SPARSER::COLLECTION)
    ("long-lived Eos" . SPARSER::PROTEIN)
    ("GM-CSF or IL-5" . SPARSER::COLLECTION)
    ("IL-5 and GM-CSF" . SPARSER::COLLECTION) ("allergen" . SPARSER::MOLECULE)
    ("Eos" . SPARSER::PROTEIN) ("Plk1" . SPARSER::PROTEIN)
    ("exportin 5" . SPARSER::PROTEIN) ("Plk 1" . SPARSER::PROTEIN)
    ("Polo-like Kinase" . SPARSER::PROTEIN)
    ("Casein Kinase 1" . SPARSER::PROTEIN) ("16A" . SPARSER::PROTEIN)
    ("S16" . SPARSER::PROTEIN) ("MLK3" . SPARSER::PROTEIN)
    ("Mixed Lineage Kinase 3" . SPARSER::PROTEIN) ("DAPK1" . SPARSER::PROTEIN)
    ("Death Associated Protein Kinase 1" . SPARSER::PROTEIN)
    ("Mitogen-Activated Protein Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p-Thr" . SPARSER::PROTEIN)
    ("peptidyl-prolyl cis-trans isomerase" . SPARSER::PROTEIN)
    ("TNF-R" . SPARSER::PROTEIN) ("IL-3" . SPARSER::PROTEIN)
    ("an attractive pharmacological target" . SPARSER::TARGET-PROTEIN)
    ("nonfunctional-CFTR" . SPARSER::PROTEIN)
    ("the abnormal TLR4" . SPARSER::PROTEIN)
    ("CAV-1/HO-1" . SPARSER::COLLECTION) ("PA-LPS" . SPARSER::COLLECTION)
    ("Cre-recombinase" . SPARSER::COLLECTION)
    ("LPS and PA" . SPARSER::COLLECTION) ("neutrophils" . SPARSER::PROTEIN)
    ("F508del/F508del" . SPARSER::COLLECTION) ("/Sp1" . SPARSER::COLLECTION)
    ("The synthetic superoxide dismutase-SOD-/catalase mimetic EUK134"
     . SPARSER::DRUG)
    ("AdV" . SPARSER::PROTEIN) ("AdV-Ctr" . SPARSER::COLLECTION)
    ("AdV-HO-1" . SPARSER::PROTEIN-PAIR) ("Ctr" . SPARSER::PROTEIN)
    ("KO and F508del" . SPARSER::COLLECTION)
    ("KO or F508del" . SPARSER::COLLECTION) ("hyper" . SPARSER::PROTEIN)
    ("CAV-1 and HO-1" . SPARSER::COLLECTION)
    ("a functional CFTR" . SPARSER::PROTEIN)
    ("F508del-MΦs" . SPARSER::PROTEIN-PAIR) ("F508del" . SPARSER::PROTEIN)
    ("F508del-CFTR" . SPARSER::COLLECTION)
    ("TLR4 and HO-1" . SPARSER::COLLECTION) ("Flotillin" . SPARSER::PROTEIN)
    ("hyper-TLR4" . SPARSER::PROTEIN-PAIR) ("TIR" . SPARSER::PROTEIN-FAMILY)
    ("TLR4-MyD88" . SPARSER::COLLECTION) ("HO-1/CAV1" . SPARSER::COLLECTION)
    ("oxidase" . SPARSER::PROTEIN) ("interferon " . SPARSER::PROTEIN)
    ("bilirubin" . SPARSER::MOLECULE) ("Heme" . SPARSER::PROTEIN)
    ("receptor (TLR)" . SPARSER::RECEPTOR) ("endotoxin" . SPARSER::MOLECULE)
    ("functional CFTR" . SPARSER::PROTEIN) ("CFTR" . SPARSER::PROTEIN)
    ("HO-1/CAV-1" . SPARSER::COLLECTION)
    ("HO-1 and CAV-1" . SPARSER::COLLECTION)
    ("the cellular oxidative state" . SPARSER::BIO-STATE)
    ("pro-inflammatory cytokines" . SPARSER::PROTEIN)
    ("HMOX1" . SPARSER::PROTEIN) ("p38 " . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EUK134" . SPARSER::DRUG) ("SOD2" . SPARSER::PROTEIN)
    ("manganese superoxide dismutase" . SPARSER::PROTEIN)
    ("tissue transglutaminase" . SPARSER::PROTEIN) ("CM-H" . SPARSER::MOLECULE)
    ("MAC-1" . SPARSER::PROTEIN) ("EUK 134" . SPARSER::DRUG)
    ("Cl 2" . SPARSER::PROTEIN) ("CORM-2" . SPARSER::DRUG)
    ("virulence factors" . SPARSER::PROTEIN-FAMILY)
    ("NADPH oxidase" . SPARSER::PROTEIN)
    ("cAMP-dependent chloride channel" . SPARSER::PROTEIN)
    ("cystic fibrosis transmembrane conductance regulator" . SPARSER::PROTEIN)
    ("CORM2" . SPARSER::DRUG) ("CAV-1" . SPARSER::PROTEIN)
    ("caveolin 1" . SPARSER::PROTEIN)
    ("phosphoinositide 3 kinase/protein kinase B" . SPARSER::COLLECTION)
    ("pre-adipocytes" . SPARSER::COLLECTION)
    ("RUNX-2 and ALP" . SPARSER::COLLECTION) ("cKit" . SPARSER::PROTEIN)
    ("ALP and RUNX-2" . SPARSER::COLLECTION)
    ("PPARγ (at day 3 and 10) and FABP4 (at day 1, 3 and 10) mRNA"
     . SPARSER::COLLECTION)
    ("CD117 and CD133" . SPARSER::COLLECTION)
    ("hTERT, Sox-2, Oct3/4 and SSEA-4" . SPARSER::COLLECTION)
    ("SSEA" . SPARSER::PROTEIN) ("CD14, CD34 and CD45" . SPARSER::COLLECTION)
    ("MSC" . SPARSER::PROTEIN)
    ("the adenomatous polyposis coli protein (APC)" . SPARSER::PROTEIN)
    ("protein (APC)" . SPARSER::PROTEIN) ("LRP" . SPARSER::PROTEIN)
    ("MSCs" . SPARSER::PROTEIN) ("Runx2 and ALP" . SPARSER::COLLECTION)
    ("PPARγ and FABP4" . SPARSER::COLLECTION) ("Alizarin" . SPARSER::DRUG)
    ("ALP" . SPARSER::PROTEIN) ("phosphoinositide 3 kinase" . SPARSER::PROTEIN)
    ("Oct3" . SPARSER::PROTEIN) ("Sox-2" . SPARSER::PROTEIN)
    ("dishevelled-2" . SPARSER::PROTEIN)
    ("Beta-2 microglobulin" . SPARSER::PROTEIN)
    ("fatty acid binding protein 4" . SPARSER::PROTEIN)
    ("RUNX-2" . SPARSER::PROTEIN) ("CD144" . SPARSER::PROTEIN)
    ("CD146" . SPARSER::PROTEIN) ("CD73" . SPARSER::PROTEIN)
    ("CD166" . SPARSER::PROTEIN) ("CD105" . SPARSER::PROTEIN)
    ("b-FGF" . SPARSER::DRUG) ("DKK-1" . SPARSER::PROTEIN)
    ("low density lipoprotein" . SPARSER::PROTEIN)
    ("Dickkopf-1" . SPARSER::PROTEIN) ("Dvl-2" . SPARSER::PROTEIN)
    ("Dishevelled-2" . SPARSER::PROTEIN)
    ("glycerol-3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("Runx2" . SPARSER::PROTEIN)
    ("Alkaline Phosphatase" . SPARSER::PROTEIN-FAMILY)
    ("IFN-α or VSV" . SPARSER::COLLECTION) ("PML or p53" . SPARSER::COLLECTION)
    ("SUMO-trap" . SPARSER::COLLECTION) ("ATO" . SPARSER::PROTEIN)
    ("PML and p53" . SPARSER::COLLECTION)
    ("unmodified sticky forms" . SPARSER::FORM)
    ("IκBα or p53" . SPARSER::COLLECTION)
    ("SUMO-2 and SUMO-3" . SPARSER::COLLECTION)
    ("SPR ( xref right panel) and GST pulldown" . SPARSER::COLLECTION)
    ("ubiquitin-trap" . SPARSER::COLLECTION) ("tetra" . SPARSER::MOLECULE)
    ("media or lysis" . SPARSER::COLLECTION)
    ("N-ethylmaleimide (NEM)" . SPARSER::MOLECULE)
    ("popular cysteine protease inhibitors" . SPARSER::INHIBITOR)
    ("SUMO-2/-3" . SPARSER::COLLECTION) ("DUB" . SPARSER::PROTEIN)
    ("tandem-repeated SIMs" . SPARSER::PROTEIN)
    ("total and specific SUMOylated proteins" . SPARSER::PROTEIN)
    ("PTEN, IκBα, PML and p53" . SPARSER::COLLECTION)
    ("SIM2 and SIM3" . SPARSER::COLLECTION)
    ("RNF4, SIM2 and SIM3" . SPARSER::COLLECTION)
    ("SIM1 and SIM3" . SPARSER::COLLECTION)
    ("RNF4 and RNF111" . SPARSER::COLLECTION)
    ("substrates or enzymes" . SPARSER::COLLECTION)
    ("p53 and PML" . SPARSER::COLLECTION)
    ("SUMO-1, SUMO-2 and SUMO-3" . SPARSER::COLLECTION)
    ("enzyme (SAE)" . SPARSER::ENZYME)
    ("IκBα, PTEN, PML or p53" . SPARSER::COLLECTION)
    ("the heterologous carrier protein GST" . SPARSER::PROTEIN)
    ("SAE1" . SPARSER::PROTEIN)
    ("inorganic pyrophosphatase" . SPARSER::PROTEIN)
    ("Arsenic Trioxide" . SPARSER::MOLECULE) ("P78317" . SPARSER::PROTEIN)
    ("interferon-α" . SPARSER::DRUG) ("N-ethylmaleimide" . SPARSER::MOLECULE)
    ("SIM2" . SPARSER::PROTEIN) ("SIM1" . SPARSER::PROTEIN)
    ("RNF111" . SPARSER::PROTEIN) ("RNF4" . SPARSER::PROTEIN)
    ("CASP8AP2" . SPARSER::PROTEIN) ("D-L" . SPARSER::PROTEIN)
    ("arsenic trioxide" . SPARSER::MOLECULE)
    ("SUMO-3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SUMO-2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("SUMO-1" . SPARSER::PROTEIN)
    ("poly-Ubiquitin" . SPARSER::PROTEIN)
    ("FBXL2 or PTPL1" . SPARSER::COLLECTION)
    ("p85β and IRS1" . SPARSER::COLLECTION)
    ("threonines or serines" . SPARSER::COLLECTION)
    ("threonines" . SPARSER::AMINO-ACID)
    ("IRS1 or receptor" . SPARSER::COLLECTION)
    ("FBXL2 and the other subunit" . SPARSER::COLLECTION)
    ("IRS1 or a receptor" . SPARSER::COLLECTION)
    ("IRS1 and receptor" . SPARSER::COLLECTION)
    ("p110-free p85 monomers (or p110-free p85–p85 homodimers) and p85–p110 heterodimers"
     . SPARSER::COLLECTION)
    ("p85–p85" . SPARSER::COLLECTION)
    ("active p110–p85 heterodimers" . SPARSER::HETERODIMER)
    ("IRS1 and receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("AKT, S6K and GSK3" . SPARSER::COLLECTION)
    ("favourable nutrient" . SPARSER::MOLECULE)
    ("PI(3)K–AKT–mTOR" . SPARSER::COLLECTION)
    ("IRS1 and PDGFR" . SPARSER::COLLECTION)
    ("AKT, S6K1 and GSK3" . SPARSER::COLLECTION)
    ("p85β/FBXL2" . SPARSER::COLLECTION)
    ("GSK3α(on Ser 21) and GSK3β(on Ser 9)" . SPARSER::COLLECTION)
    ("phosphorylated AKT (on Thr 308 and Ser 473), S6K1 (on Thr 389), GSK3α(on Ser 21) and GSK3β(on Ser 9)"
     . SPARSER::COLLECTION)
    ("a non-silencing siRNA or an FBXL2 siRNA" . SPARSER::COLLECTION)
    ("FBXL2–p85β" . SPARSER::COLLECTION)
    ("PTPL1 and p85β" . SPARSER::COLLECTION)
    ("FLAG–p85β co-immunopurified both HA-tagged PTPL1 and GFP-tagged FBXL2 ( xref )"
     . SPARSER::COLLECTION)
    ("FLAG–p85β" . SPARSER::COLLECTION)
    ("PTPL1, FBXL2 and p85β" . SPARSER::COLLECTION)
    ("both exogenous and endogenous p85β" . SPARSER::PROTEIN)
    ("both exogenous and endogenous PTPL1" . SPARSER::PROTEIN)
    ("PTPN13, FAP-1, PTP-BAS and PTP1E" . SPARSER::COLLECTION)
    ("Tyr kinases and/or p-Tyr phosphatases" . SPARSER::COLLECTION)
    ("p85β and p85β" . SPARSER::COLLECTION)
    ("p85β–FBXL2" . SPARSER::COLLECTION) ("QR" . SPARSER::PROTEIN)
    ("Gln-Arg" . SPARSER::COLLECTION)
    ("Further deletion mutants" . SPARSER::MUTANT)
    ("NAs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("less SKP1 and more p85β" . SPARSER::COLLECTION)
    ("LPK" . SPARSER::PROTEIN) ("Nedd8" . SPARSER::PROTEIN)
    ("proteins and FBXL2" . SPARSER::COLLECTION)
    ("FLAG–HA–FBXO1" . SPARSER::COLLECTION)
    ("FLAG–HA-tagged FBXL2" . SPARSER::PROTEIN)
    ("p110α and p110β" . SPARSER::COLLECTION)
    ("free p85β and p110–p85 heterodimers" . SPARSER::COLLECTION)
    ("p110–p85" . SPARSER::COLLECTION) ("mitogens" . SPARSER::MITOGEN)
    ("PIK3CA, PIK3CB and PIK3CD" . SPARSER::COLLECTION)
    ("PIK3R1, PIK3R2 and PIK3R3" . SPARSER::COLLECTION)
    ("heterodimeric lipid kinases" . SPARSER::PROTEIN)
    ("IA and IB" . SPARSER::COLLECTION)
    ("PDK1, AKT and mTOR" . SPARSER::COLLECTION)
    ("homology and substrate" . SPARSER::COLLECTION)
    ("phosphatidylinositol-3-OH" . SPARSER::PROTEIN-PAIR)
    ("no membrane-associated substrates" . SPARSER::SUBSTRATE)
    ("multimeric ubiquitin ligase" . SPARSER::PROTEIN)
    ("SCFs" . SPARSER::PROTEIN) ("FBXL2 and PTPL1" . SPARSER::COLLECTION)
    ("p85–p110" . SPARSER::COLLECTION)
    ("p85β and tyrosine" . SPARSER::COLLECTION) ("FAST)" . SPARSER::PROTEIN)
    ("Ubch5c" . SPARSER::PROTEIN) ("messenger RNAs" . SPARSER::RNA)
    ("p-S6K" . SPARSER::PROTEIN) ("Lys-C" . SPARSER::PROTEIN)
    ("GFP–LC3" . SPARSER::PROTEIN) ("LC3-II" . SPARSER::PROTEIN)
    ("GSK3α" . SPARSER::PROTEIN) ("PTP1" . SPARSER::PROTEIN)
    ("FBXL3" . SPARSER::PROTEIN) ("FBXO1" . SPARSER::PROTEIN)
    ("p110β" . SPARSER::PROTEIN) ("p55γ" . SPARSER::PROTEIN)
    ("PIK3R3" . SPARSER::PROTEIN) ("PIK3R2" . SPARSER::PROTEIN)
    ("PIK3R1" . SPARSER::PROTEIN) ("PIK3CD" . SPARSER::PROTEIN)
    ("PIK3CB" . SPARSER::PROTEIN) ("PI(3)Ks" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FBL2" . SPARSER::PROTEIN) ("RBX1" . SPARSER::PROTEIN)
    ("CUL1" . SPARSER::PROTEIN) ("SKP1" . SPARSER::PROTEIN)
    ("p85β" . SPARSER::PROTEIN) ("PI(3)K" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FBXL2" . SPARSER::PROTEIN) ("Cul1" . SPARSER::PROTEIN)
    ("Skp1" . SPARSER::PROTEIN) ("cyclin:CDK" . SPARSER::BIO-COMPLEX)
    ("p19 Arf and Dcr2" . SPARSER::COLLECTION) ("Pik3r1" . SPARSER::PROTEIN)
    ("activin" . SPARSER::PROTEIN) ("TGF-β and PI3K" . SPARSER::COLLECTION)
    ("Pik3ca" . SPARSER::PROTEIN) ("Pik" . SPARSER::BIO-COMPLEX)
    ("PTEN/PI3K-AKT" . SPARSER::COLLECTION)
    ("TGF-β and PTEN" . SPARSER::COLLECTION) ("TP" . SPARSER::PROTEIN)
    ("PTEN and/or TGFBR2" . SPARSER::COLLECTION)
    ("PTEN and TGFBR2" . SPARSER::COLLECTION)
    ("p15 INK4B , p21 Cip1 and p27 Kip1" . SPARSER::COLLECTION)
    ("p15 Ink4b , p21 Cip1 and p27 Kip1" . SPARSER::COLLECTION)
    ("p15 INK4B , p21 CIP1 and p27 KIP1" . SPARSER::COLLECTION)
    ("PI3K-AKT and TGF-β" . SPARSER::COLLECTION)
    ("PTEN and TGF-β" . SPARSER::COLLECTION)
    ("Tgfbr2 and Pten" . SPARSER::COLLECTION)
    ("Axin2 and Cd44" . SPARSER::COLLECTION) ("Cd44" . SPARSER::PROTEIN)
    ("APC and CTNNB1" . SPARSER::COLLECTION)
    ("Tgfbr2 or Pten" . SPARSER::COLLECTION)
    ("Wnt-β-catenin" . SPARSER::COLLECTION)
    ("Pten and Tgfbr2" . SPARSER::COLLECTION)
    ("andVillin-Cre" . SPARSER::COLLECTION) ("flx/flx" . SPARSER::COLLECTION)
    ("flx" . SPARSER::PROTEIN) ("TGFBR2 and PTEN" . SPARSER::COLLECTION)
    ("Tgf" . SPARSER::DRUG) ("lack Tgfbr2 and/or Pten" . SPARSER::COLLECTION)
    ("microsatellite unstable CRCs" . SPARSER::PROTEIN)
    ("β-glucuronidase" . SPARSER::PROTEIN) ("Ink4b" . SPARSER::PROTEIN)
    ("wt/wt" . SPARSER::PROTEIN) ("Dcr2" . SPARSER::PROTEIN)
    ("p19 Arf" . SPARSER::PROTEIN) ("Pik3r" . SPARSER::PROTEIN-FAMILY)
    ("p15 Ink4b" . SPARSER::PROTEIN) ("p15 INK4B" . SPARSER::PROTEIN)
    ("Cyclin dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Axin2" . SPARSER::PROTEIN)
    ("cyclin dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Phosphatase and tensin homolog" . SPARSER::PROTEIN)
    ("transforming growth factor-beta" . SPARSER::PROTEIN)
    ("CBP, p300 and RNA" . SPARSER::COLLECTION)
    ("STAT3, HIF1α, p300 and RNA" . SPARSER::COLLECTION)
    ("p300 and CBP" . SPARSER::COLLECTION)
    ("HIF2α or both HIFα mRNAs" . SPARSER::COLLECTION)
    ("HIF1α, HIF2α or both HIFα mRNAs" . SPARSER::COLLECTION)
    ("HIF1α, HIF2α and ARNT" . SPARSER::COLLECTION)
    ("a general cotranscriptional activator" . SPARSER::ACTIVATOR)
    ("VEGF and haptoglobin" . SPARSER::COLLECTION)
    ("a weak activator" . SPARSER::ACTIVATOR)
    ("STAT3 , MYC and BIRC5" . SPARSER::COLLECTION)
    ("STAT3 shRNA ( xref ) or 100 μM STAT3 inhibitor S3I-201 ( xref )"
     . SPARSER::COLLECTION)
    ("HIF1α mRNA and/or protein" . SPARSER::COLLECTION)
    ("Janus kinase 2 and STAT3" . SPARSER::COLLECTION)
    ("saracatinib" . SPARSER::DRUG) ("STATTIC" . SPARSER::DRUG)
    ("SRC or other STAT3 activators" . SPARSER::COLLECTION)
    ("Cytokines and growth factors" . SPARSER::COLLECTION)
    ("HIF1α or STAT3" . SPARSER::COLLECTION)
    ("HIF and STAT3" . SPARSER::COLLECTION)
    ("shRNA or MDA-MB-231/STAT3" . SPARSER::COLLECTION)
    ("DMOG" . SPARSER::DRUG) ("STAT3 or HIF1α" . SPARSER::COLLECTION)
    ("p300 and STAT3" . SPARSER::COLLECTION)
    ("the same physical promoter" . SPARSER::PROMOTER)
    ("STAT3 and HIF1α" . SPARSER::COLLECTION)
    ("STAT3, HIF1α, p300 and Pol II form" . SPARSER::FORM)
    ("STAT3, HIF1α, p300 and Pol" . SPARSER::COLLECTION)
    ("STAT3 only co-precipitated HIF1α" . SPARSER::PROTEIN)
    ("antibodies and protein-A/protein-G" . SPARSER::COLLECTION)
    ("STAT3/HIF1α" . SPARSER::COLLECTION)
    ("HIF2αTM-Flag" . SPARSER::COLLECTION)
    ("HIF1αTM-Flag" . SPARSER::COLLECTION)
    ("STAT3 and HIFα" . SPARSER::COLLECTION)
    ("‘enhanceosome’" . SPARSER::PROTEIN)
    ("HIF1α (but not HIF2α) and STAT3" . SPARSER::COLLECTION)
    ("HIF1α, STAT3, CBP, p300 and Pol" . SPARSER::COLLECTION)
    ("CBP and p300 and Pol" . SPARSER::COLLECTION)
    ("p300 and Pol" . SPARSER::COLLECTION)
    ("shRNA or S3I-201" . SPARSER::COLLECTION)
    ("CA9 , PGK1 and VEGF" . SPARSER::COLLECTION)
    ("CBP, p300 and Pol" . SPARSER::COLLECTION)
    ("HIF1α and ARNT" . SPARSER::COLLECTION)
    ("PGK1 and exon" . SPARSER::COLLECTION)
    ("HIF1α, ARNT, STAT3, CBP, p300 and Pol" . SPARSER::COLLECTION)
    ("CA9, PGK1 and VEGF" . SPARSER::COLLECTION)
    ("HIF1 and STAT3" . SPARSER::COLLECTION)
    ("CA9 and PGK1" . SPARSER::COLLECTION)
    ("HIF1α and STAT3" . SPARSER::COLLECTION) ("acetylases" . SPARSER::PROTEIN)
    ("HIF1α, HIF2α, ARNT or STAT3" . SPARSER::COLLECTION)
    ("HIF1α, HIF2α or HIF1α" . SPARSER::COLLECTION)
    ("HIF1/HIF2" . SPARSER::COLLECTION) ("HIF1-" . SPARSER::PROTEIN)
    ("PDK1 , ANGPTL4 and CA9 , and HIF1/2" . SPARSER::COLLECTION)
    ("CA9 , and HIF1/2" . SPARSER::COLLECTION)
    ("STAT3 and ARNT" . SPARSER::COLLECTION)
    ("ANGPTL4 and CA9" . SPARSER::COLLECTION)
    ("GPR157 and PLAC8" . SPARSER::COLLECTION)
    ("VEGF and PDK1" . SPARSER::COLLECTION)
    ("siRNA or STAT3" . SPARSER::COLLECTION) ("HIF/ARNT" . SPARSER::COLLECTION)
    ("STAT3/HIF" . SPARSER::COLLECTION)
    ("MYC and BCL-XL" . SPARSER::COLLECTION)
    ("HIF1 and/or HIF2 target genes" . SPARSER::COLLECTION)
    ("HIF1α or HIF2α" . SPARSER::COLLECTION)
    ("STAT3 and HIF" . SPARSER::COLLECTION)
    ("PDK1 and VEGF" . SPARSER::COLLECTION)
    ("MYC and BIRC5" . SPARSER::COLLECTION)
    ("CA9, NDRG1, PGK1 and PAI1" . SPARSER::COLLECTION)
    ("HIF2α, ARNT and STAT3" . SPARSER::COLLECTION)
    ("HIF-" . SPARSER::PROTEIN-FAMILY)
    ("VEGF and PKM2, IL-6 and IL-8" . SPARSER::COLLECTION)
    ("PKM2, IL-6 and IL-8" . SPARSER::COLLECTION)
    ("VEGF and PKM2" . SPARSER::COLLECTION)
    ("IL-6, IL-8, VEGF and pyruvate" . SPARSER::COLLECTION)
    ("pVHL" . SPARSER::PROTEIN) ("haptoglobin" . SPARSER::PROTEIN)
    ("IL-6, IL-10 and IL-11" . SPARSER::COLLECTION)
    ("the Janus kinase family or cytoplasmic SRC family kinases"
     . SPARSER::COLLECTION)
    ("intrinsic receptor tyrosine kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("receptor-associated tyrosine kinases" . SPARSER::PROTEIN)
    ("HIF1 and HIF2" . SPARSER::COLLECTION)
    ("HIF1α and HIF2α" . SPARSER::COLLECTION)
    ("HIF2α/ARNT" . SPARSER::COLLECTION) ("HIF1α/ARNT" . SPARSER::COLLECTION)
    ("ARNT" . SPARSER::PROTEIN) ("STAT3 and HIF1" . SPARSER::COLLECTION)
    ("coactivators CREB binding protein (CBP) and p300, and RNA polymerase II (Pol II)"
     . SPARSER::COLLECTION)
    ("p300, and RNA polymerase II" . SPARSER::COLLECTION)
    ("HIF1α, STAT3, CBP, p300 and RNA" . SPARSER::COLLECTION)
    ("enhanceosome" . SPARSER::PROTEIN) ("HIF or STAT3" . SPARSER::COLLECTION)
    ("Janus kinase 2" . SPARSER::PROTEIN) ("SRC kinase" . SPARSER::PROTEIN)
    ("C-HA" . SPARSER::PROTEIN) ("PLAC8" . SPARSER::PROTEIN)
    ("GPR157" . SPARSER::PROTEIN) ("ANGPTL4" . SPARSER::PROTEIN)
    ("ARNT protein" . SPARSER::PROTEIN) ("S3I-201" . SPARSER::MOLECULE)
    ("PAI1" . SPARSER::PROTEIN) ("PGK1" . SPARSER::PROTEIN)
    ("PKM2" . SPARSER::PROTEIN)
    ("transcriptionally active form" . SPARSER::PROTEIN)
    ("BCL-XL" . SPARSER::PROTEIN) ("IL-11" . SPARSER::PROTEIN)
    ("aryl hydrocarbon receptor nuclear translocator" . SPARSER::PROTEIN)
    ("HIF2α" . SPARSER::PROTEIN) ("HIF2" . SPARSER::PROTEIN)
    ("repressor or activator" . SPARSER::COLLECTION)
    ("p53 and c-fos" . SPARSER::COLLECTION)
    ("c-fos and p53" . SPARSER::COLLECTION) ("HDACi" . SPARSER::MOLECULE)
    ("Trex" . SPARSER::PROTEIN-FAMILY) ("TRex" . SPARSER::PROTEIN-FAMILY)
    ("normal BRD4 as well as BRD-NUT oncoproteins" . SPARSER::COLLECTION)
    ("normal BRD4" . SPARSER::PROTEIN)
    ("BRD2, BRD3, BRD4, and BRDT" . SPARSER::COLLECTION)
    ("BRDs" . SPARSER::PROTEIN) ("BRD" . SPARSER::PROTEIN)
    ("MYC and a dominant-negative form" . SPARSER::COLLECTION)
    ("BRD4-NUT" . SPARSER::COLLECTION) ("an aggressive type" . TYPE)
    ("BRD-NUT" . SPARSER::COLLECTION) ("NUT" . SPARSER::PROTEIN)
    ("c-fos" . SPARSER::PROTEIN)
    ("approximately 20 activated BAX molecules" . SPARSER::MOLECULE)
    ("an adjacent active BAK monomer" . SPARSER::MONOMER)
    ("probably not NOXA or BAD" . SPARSER::COLLECTION)
    ("NOXA or BAD" . SPARSER::COLLECTION) ("BAK–BAK" . SPARSER::COLLECTION)
    ("both the effector and the direct activator" . SPARSER::COLLECTION)
    ("the pro-apoptotic effector proteins, BAX and BAK" . SPARSER::COLLECTION)
    ("proteins, BAX and BAK" . SPARSER::COLLECTION)
    ("BID or BIM" . SPARSER::COLLECTION) ("digitonin" . SPARSER::MOLECULE)
    ("weak BAK-mediated MOMP" . SPARSER::PROTEIN)
    ("SAHB and BAD" . SPARSER::COLLECTION) ("bim" . SPARSER::PROTEIN)
    ("bid" . SPARSER::PROTEIN) ("TNF/cycloheximide" . SPARSER::COLLECTION)
    ("the smaller fragment" . SPARSER::FRAGMENT)
    ("the respective mutants" . SPARSER::MUTANT) ("BID-" . SPARSER::PROTEIN)
    ("SAHBa–wt" . SPARSER::COLLECTION) ("BID–BAK" . SPARSER::COLLECTION)
    ("BCL-2 and BCL-xL" . SPARSER::COLLECTION) ("bak" . SPARSER::PROTEIN)
    ("SAHBq" . SPARSER::PROTEIN) ("SAHBq–cBAK" . SPARSER::COLLECTION)
    ("Cu/Phe" . SPARSER::COLLECTION)
    ("the naturally occurring cysteines" . SPARSER::AMINO-ACID)
    ("BID and SAHBa" . SPARSER::COLLECTION)
    ("BID and BAK" . SPARSER::COLLECTION)
    ("MOMP and active" . SPARSER::COLLECTION)
    ("Ala or Gly" . SPARSER::COLLECTION) ("SAHBa" . SPARSER::PROTEIN)
    ("SAHBa–cBAK" . SPARSER::COLLECTION) ("cBAK" . SPARSER::PROTEIN)
    ("BID–cBAK" . SPARSER::COLLECTION) ("detergents" . SPARSER::MOLECULE)
    ("native cellular BAK" . SPARSER::PROTEIN)
    ("the amphipathic BH3 helices" . SPARSER::PROTEIN)
    ("SAHBs" . SPARSER::PROTEIN) ("SAHB" . SPARSER::PROTEIN)
    ("SAHB–BAK" . SPARSER::PROTEIN-PAIR) ("BIM or BAX" . SPARSER::COLLECTION)
    ("BCL-2, BCL-xL, or MCL-1" . SPARSER::COLLECTION)
    ("BID and BIM" . SPARSER::COLLECTION)
    ("Pro-apoptotic effector and anti-apoptotic BCL-2 proteins"
     . SPARSER::PROTEIN)
    ("effector and anti-apoptotic" . SPARSER::COLLECTION)
    ("BCL-2, BCL-xL, and MCL-1" . SPARSER::COLLECTION)
    ("pro-apoptotic effector BCL-2 proteins" . SPARSER::PROTEIN)
    ("BAK or BAX" . SPARSER::COLLECTION) ("BAK and BAX" . SPARSER::COLLECTION)
    ("the pro-apoptotic BCL-2 effector proteins, BAK and BAX"
     . SPARSER::COLLECTION)
    ("proteins, BAK and BAX" . SPARSER::COLLECTION) ("cyt" . SPARSER::MOLECULE)
    ("NOXA and BAD" . SPARSER::COLLECTION) ("MOMP" . SPARSER::PROTEIN)
    ("C- 1" . SPARSER::PROTEIN) ("H- 1" . SPARSER::PROTEIN)
    ("Δ 1" . SPARSER::PROTEIN) ("N- 1" . SPARSER::PROTEIN)
    ("μ-calpain" . SPARSER::PROTEIN) ("m-calpain" . SPARSER::PROTEIN)
    ("T-1" . SPARSER::PROTEIN) ("1,10-phenanthroline" . SPARSER::MOLECULE)
    ("BH2" . SPARSER::MOLECULE) ("CL-2" . SPARSER::PROTEIN)
    ("BCL-xL" . SPARSER::PROTEIN) ("normal mitochondria" . SPARSER::PROTEIN)
    ("MYC or HIF-1α" . SPARSER::COLLECTION) ("avid" . SPARSER::DRUG)
    ("sugar" . SPARSER::MOLECULE)
    ("vemurafenib or trametinib" . SPARSER::COLLECTION)
    ("GAPDH or G6PD" . SPARSER::COLLECTION)
    ("MEK inhibitors or knock-down" . SPARSER::COLLECTION)
    ("BRAF-MEK-ERK" . SPARSER::COLLECTION)
    ("V600E BRAF and Q61L NRAS" . SPARSER::COLLECTION)
    ("G6PD, GAPDH, PGAM1 and LDHA" . SPARSER::COLLECTION)
    ("V600E BRAF or Q61L NRAS" . SPARSER::COLLECTION)
    ("LacZ" . SPARSER::PROTEIN) ("residual phospho-ERK" . SPARSER::PROTEIN)
    ("GAPDH and G6PD" . SPARSER::COLLECTION)
    ("U0126 or PD98059" . SPARSER::COLLECTION)
    ("triose phosphate isomerase (TPI1) and phosphogluconate dehydrogenase (PGD)"
     . SPARSER::COLLECTION)
    ("isomerase (GPI)" . SPARSER::ISOMERASE) ("PGLS" . SPARSER::PROTEIN)
    ("ALDOA" . SPARSER::PROTEIN) ("GPI" . SPARSER::PROTEIN)
    ("PGD" . SPARSER::PROTEIN)
    ("lactate dehydrogenase (LDHA) and glucose-6-phosphate dehydrogenase (G6PD)"
     . SPARSER::COLLECTION)
    ("dehydrogenase (LDHA)" . SPARSER::PROTEIN) ("LDHA" . SPARSER::PROTEIN)
    ("TREx" . SPARSER::PROTEIN-FAMILY)
    ("respiratory substrates" . SPARSER::SUBSTRATE)
    ("mitochondrial respiratory states" . SPARSER::BIO-STATE)
    ("RCR" . SPARSER::PROTEIN-FAMILY)
    ("individual respiratory states" . SPARSER::BIO-STATE)
    ("FM" . SPARSER::PROTEIN) ("RAS and MYC" . SPARSER::COLLECTION)
    ("FDG" . SPARSER::PROTEIN) ("MYC and HIF-1α" . SPARSER::COLLECTION)
    ("RAS, MYC and HIF-1α" . SPARSER::COLLECTION)
    ("p53, AMPK and mTOR" . SPARSER::COLLECTION)
    ("exogenous growth factors" . SPARSER::GROWTH-FACTOR)
    ("growth factors and receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("upstream growth factors and their cognate receptor tyrosine kinases"
     . SPARSER::COLLECTION)
    ("RAS and BRAF" . SPARSER::COLLECTION)
    ("trametinib and vemurafenib" . SPARSER::COLLECTION)
    ("U0126, AZD6244 and trametinib" . SPARSER::COLLECTION)
    ("RAS-BRAF-MEK-ERK" . SPARSER::COLLECTION)
    ("the BRAF inhibitors PLX4720 and its analog" . SPARSER::COLLECTION)
    ("PLX4032 or RG7204" . SPARSER::COLLECTION)
    ("an archetypical oncogene" . SPARSER::ONCOGENE)
    ("HRAS or BCR-ABL" . SPARSER::COLLECTION)
    ("individual kinases" . SPARSER::KINASE) ("p42 MAPK" . SPARSER::PROTEIN)
    ("P-Thr" . SPARSER::PROTEIN) ("CH 3" . SPARSER::MOLECULE)
    ("T-REx" . SPARSER::PROTEIN-FAMILY) ("citrate synthase" . SPARSER::PROTEIN)
    ("β -gal" . SPARSER::PROTEIN) ("alpha subunit" . SPARSER::PROTEIN)
    ("p42/44" . SPARSER::PROTEIN)
    ("phosphogluconate dehydrogenase" . SPARSER::PROTEIN)
    ("TPI1" . SPARSER::PROTEIN)
    ("glucose-6-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("PGAM1" . SPARSER::PROTEIN) ("D-glucose" . SPARSER::MOLECULE)
    ("lactic acid" . SPARSER::MOLECULE)
    ("PFKFB1 and the ATPase subunit ATPAF1" . SPARSER::COLLECTION)
    ("key developmental genes" . SPARSER::GENE)
    ("HoxB8, ATPAF1, PLEKHM1, PFKFB1 and LYPD3" . SPARSER::COLLECTION)
    ("far fewer endogenous miRNA" . SPARSER::PROTEIN)
    ("PIWI" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MID" . SPARSER::PROTEIN)
    ("the phospho-dominant (S387E) Ago2 mutant" . SPARSER::MUTANT)
    ("The phospho-null S387A Ago2 mutant" . SPARSER::MUTANT)
    ("miRNAs and siRNAs" . SPARSER::COLLECTION)
    ("masking" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a perfectly-complementary siRNA" . SPARSER::PROTEIN)
    ("an siRNA and target mRNA" . SPARSER::COLLECTION)
    ("ATPAF1, LYPD3 and PLEKHM" . SPARSER::COLLECTION)
    ("ATPAF1, LYPD3 and PLEKHM1" . SPARSER::COLLECTION)
    ("Akt1, Akt2, Akt3, and MK2" . SPARSER::COLLECTION)
    ("Akt1-" . SPARSER::PROTEIN) ("Akt3-" . SPARSER::PROTEIN)
    ("Akt1 or Akt3" . SPARSER::COLLECTION) ("KP" . SPARSER::PROTEIN)
    ("Ago2 and Akt" . SPARSER::COLLECTION)
    ("GW182 and the S387A Ago2 mutant" . SPARSER::COLLECTION)
    ("GW182 and WT Ago2" . SPARSER::COLLECTION)
    ("GW182 and the S387E Ago2 mutant ( xref , top and bottom panels)"
     . SPARSER::COLLECTION)
    ("neither Akt1 nor Akt2" . SPARSER::COLLECTION)
    ("GW182 and either Ago2 or pS387-Ago2 proteins" . SPARSER::COLLECTION)
    ("Ago2 or pS387-Ago2" . SPARSER::COLLECTION)
    ("GW182 and pS387-Ago2" . SPARSER::COLLECTION)
    ("EGFP-Ago2" . SPARSER::COLLECTION)
    ("the phospho-null S387A Ago2" . SPARSER::PROTEIN)
    ("the phospho-dominant mutant S387E Ago2" . SPARSER::PROTEIN)
    ("Ago2-GW182" . SPARSER::COLLECTION)
    ("Akt1, Akt2 or Akt3" . SPARSER::COLLECTION)
    ("Ago2 and GW182" . SPARSER::COLLECTION)
    ("mRNAs and Ago2" . SPARSER::COLLECTION)
    ("Akt3 and MK2" . SPARSER::COLLECTION)
    ("Akt1 or Akt3 and PDCD4" . SPARSER::COLLECTION)
    ("Akt3 and PDCD4" . SPARSER::COLLECTION)
    ("Akt2 or Akt3" . SPARSER::COLLECTION)
    ("newly-translated proteins" . SPARSER::PROTEIN)
    ("Akt1, Akt2, Akt3, or MK2" . SPARSER::COLLECTION)
    ("PTEN and PDCD4" . SPARSER::COLLECTION)
    ("the let-7 targets RAS ( xref ) and IMP-1 ( xref )" . SPARSER::COLLECTION)
    ("mRNA and PTEN" . SPARSER::COLLECTION) ("pten" . SPARSER::PROTEIN)
    ("CXCR4 siRNA or endogenous let-7a or miR-21" . SPARSER::COLLECTION)
    ("Ago2-associated miRNAs" . SPARSER::PROTEIN)
    ("Akt or MK2" . SPARSER::COLLECTION) ("Ago2-FLAG" . SPARSER::COLLECTION)
    ("Akt3/Ago2" . SPARSER::COLLECTION)
    ("CXCR4 siRNAs or endogenous microRNAs (let-7a, miR-21, miR-17, miR-29a)"
     . SPARSER::COLLECTION)
    ("CXCR4 siRNAs and endogenous miRNAs" . SPARSER::COLLECTION)
    ("IPs" . SPARSER::PROTEIN)
    ("the phospho-dominant Ago2-S387E mutant" . SPARSER::MUTANT)
    ("the phospho-null Ago2 S387A" . SPARSER::PROTEIN)
    ("Akt3 and various Ago2 S387 mutant" . SPARSER::COLLECTION)
    ("phospho-dominant S387E Ago2" . SPARSER::PROTEIN)
    ("a phospho-null alanine" . SPARSER::AMINO-ACID)
    ("Akt and Ago2" . SPARSER::COLLECTION)
    ("Akt3 and Ago2" . SPARSER::COLLECTION)
    ("Akt1, Akt2 and Akt3" . SPARSER::COLLECTION)
    ("MK2 and Akt3" . SPARSER::COLLECTION)
    ("Akt1 or Akt2" . SPARSER::COLLECTION)
    ("Akt3 or MK2" . SPARSER::COLLECTION)
    ("Ago2, Dicer, and TRBP" . SPARSER::COLLECTION) ("TRBP" . SPARSER::PROTEIN)
    ("2,168 unique siRNAs" . SPARSER::PROTEIN)
    ("PTEN ( xref ) and PDCD4 ( xref )" . SPARSER::COLLECTION)
    ("Akt3/PKBγ" . SPARSER::COLLECTION)
    ("trigger and its target" . SPARSER::COLLECTION)
    ("HoxB8 ( xref ) and Rtl1 ( xref )" . SPARSER::COLLECTION)
    ("siRNAs or miRNAs" . SPARSER::COLLECTION)
    ("complex (RISC)" . SPARSER::BIO-COMPLEX) ("dsRNAs" . SPARSER::RNA)
    ("Akt-3/PKBγ" . SPARSER::COLLECTION)
    ("Histone H2B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("N-term" . SPARSER::PROTEIN) ("LYPD3" . SPARSER::PROTEIN)
    ("IMP-1" . SPARSER::PROTEIN) ("MK2" . SPARSER::PROTEIN)
    ("MAPKAPK2" . SPARSER::PROTEIN) ("PFKFB1" . SPARSER::PROTEIN)
    ("ATPAF1" . SPARSER::PROTEIN) ("PDCD4" . SPARSER::PROTEIN)
    ("Rtl1" . SPARSER::PROTEIN) ("HoxB8" . SPARSER::PROTEIN)
    ("GW182" . SPARSER::PROTEIN) ("Argonaute 2" . SPARSER::PROTEIN)
    ("Akt3" . SPARSER::PROTEIN) ("PKBγ" . SPARSER::PROTEIN)
    ("Akt-3" . SPARSER::PROTEIN) ("replicative polymerases" . SPARSER::PROTEIN)
    ("a substantially more important part" . SPARSER::COMPONENT)
    ("a noncomplementary template nucleotide" . SPARSER::NUCLEOTIDE)
    ("several noncanonical nucleotides" . SPARSER::NUCLEOTIDE)
    ("MutL or its eukaryotic orthologs ( xref )" . SPARSER::COLLECTION)
    ("its eukaryotic orthologs" . SPARSER::PROTEIN)
    ("MutLα and PCNA" . SPARSER::COLLECTION) ("IDLs" . SPARSER::MOLECULE)
    ("agp1" . SPARSER::PROTEIN) ("agp" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the key nuclease" . SPARSER::PROTEIN)
    ("mismatch- and MutSα/MutLα-activated EXO1" . SPARSER::COLLECTION)
    ("mismatch-" . SPARSER::PROTEIN)
    ("the nick and ∼150 nucleotides" . SPARSER::COLLECTION)
    ("bacterial RNase" . SPARSER::PROTEIN)
    ("open-circular forms" . SPARSER::FORM) ("DNA " . SPARSER::DNA)
    ("the closed circular T/G-rC substrates" . SPARSER::SUBSTRATE)
    ("dCMP" . SPARSER::DCMP) ("dCTP" . SPARSER::MOLECULE)
    ("trigger noncanonical MMR" . SPARSER::PROTEIN)
    ("MSH2/MSH6" . SPARSER::COLLECTION) ("Mismatch" . SPARSER::PROTEIN)
    ("Ribonucleotide" . SPARSER::MOLECULE)
    ("successful MMR" . SPARSER::PROTEIN)
    ("NBI-catalyzed nick 361 nucleotides" . SPARSER::NUCLEOTIDE)
    ("a closed circular or supercoiled (sc) substrate" . SPARSER::SUBSTRATE)
    ("the flap endonuclease FEN1 and/or EXO1 ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("RNases" . SPARSER::PROTEIN)
    ("approximately four times more ribonucleotides" . SPARSER::MOLECULE)
    ("MutLα/PCNA" . SPARSER::COLLECTION)
    ("MLH1 and PMS2" . SPARSER::COLLECTION)
    ("eukaryotic MMR" . SPARSER::PROTEIN) ("MutL" . SPARSER::PROTEIN)
    ("GATC" . SPARSER::PROTEIN) ("eukaryotic DNA" . SPARSER::DNA)
    ("Ribonucleotides" . SPARSER::MOLECULE)
    ("ribonucleotides" . SPARSER::MOLECULE)
    ("ribonucleotide" . SPARSER::MOLECULE)
    ("Eukaryotic MMR" . SPARSER::PROTEIN) ("MLH1/PMS2" . SPARSER::COLLECTION)
    ("MLH1" . SPARSER::PROTEIN) ("H2a" . SPARSER::PROTEIN)
    ("ADE2" . SPARSER::PROTEIN) ("msh2" . SPARSER::PROTEIN)
    ("yeast)" . SPARSER::PROTEIN) ("OR1" . SPARSER::PROTEIN)
    ("OR2" . SPARSER::MOLECULE) ("ogg1" . SPARSER::PROTEIN)
    ("ura3" . SPARSER::PROTEIN) ("RNASEH2A" . SPARSER::PROTEIN)
    ("FEN1" . SPARSER::PROTEIN) ("S. cerevisiae )" . SPARSER::PROTEIN)
    ("MutLα" . SPARSER::PROTEIN) ("E. coli )" . SPARSER::PROTEIN)
    ("S. cerevisiae" . SPARSER::PROTEIN) ("S.cerevisiae" . SPARSER::PROTEIN)
    ("ER, PR, or ERBB2" . SPARSER::COLLECTION) ("maspin" . SPARSER::PROTEIN)
    ("stathmin (KIS)" . SPARSER::PROTEIN) ("KIS" . SPARSER::PROTEIN)
    ("cyclin:CDK2" . SPARSER::BIO-COMPLEX)
    ("nuclear IKKα and nuclear p27" . SPARSER::COLLECTION)
    ("a well-established haploinsufficient suppressor" . SPARSER::SUPPRESSOR)
    ("ErbB2 and IKKα" . SPARSER::COLLECTION) ("CK5-" . SPARSER::PROTEIN)
    ("multipotent MaSC" . SPARSER::PROTEIN) ("PI-MEC" . SPARSER::COLLECTION)
    ("MEC" . SPARSER::PROTEIN) ("CK5 and CK8" . SPARSER::COLLECTION)
    ("NIK/IKKα" . SPARSER::COLLECTION)
    ("high nuclear IKKα and low nuclear p27" . SPARSER::COLLECTION)
    ("ER, PR, and ERBB2" . SPARSER::COLLECTION)
    ("high nuclear IKKα and low nuclear p27 ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("CCNB1, CCNB2, CCND3, CCNE2, CCNA2, CDK2, and CDK7" . SPARSER::COLLECTION)
    ("two biological states" . SPARSER::BIO-STATE)
    ("TRAF2 and TRAF3" . SPARSER::COLLECTION)
    ("IKKα and p27" . SPARSER::COLLECTION)
    ("MMTV-Erbb2/Kip1" . SPARSER::COLLECTION) ("IKKα(AA)" . SPARSER::PROTEIN)
    ("transiently expressed exogenous p27" . SPARSER::PROTEIN)
    ("a single tryptic peptide" . SPARSER::PEPTIDE)
    ("Wild-type (WT) p27 and the S175A and S183A mutants"
     . SPARSER::COLLECTION)
    ("two-dimensional tryptic phosphopeptide mapping" . SPARSER::PROTEIN)
    ("p57/Kip2" . SPARSER::COLLECTION) ("p21/Cip1" . SPARSER::COLLECTION)
    ("four serines (S) and one threonine (T)" . SPARSER::COLLECTION)
    ("leptomycin B (LMB)" . SPARSER::MOLECULE) ("LMB" . SPARSER::MOLECULE)
    ("orthophosphate" . SPARSER::ORTHOPHOSPHATE)
    ("kinase-dead IKKα(K/A) or inactive IKKα(AA) mutants"
     . SPARSER::COLLECTION)
    ("IKKα(EE)" . SPARSER::PROTEIN)
    ("neither NIK nor IKKα" . SPARSER::COLLECTION)
    ("RelA/p65" . SPARSER::COLLECTION) ("Erbb2/Nik" . SPARSER::PROTEIN)
    ("MMTV-Erbb2/Nik" . SPARSER::COLLECTION) ("Skp2" . SPARSER::PROTEIN)
    ("Skp" . SPARSER::PROTEIN)
    ("p16, p19, E2F1, and Bcl2" . SPARSER::COLLECTION)
    ("MMTV-Erbb2/Ikkα" . SPARSER::COLLECTION)
    ("MMTV-cyclin D1" . SPARSER::COLLECTION) ("NIK-IKKα" . SPARSER::COLLECTION)
    ("Nik  −/− and MMTV-Erbb2" . SPARSER::COLLECTION)
    ("Nik  +/+ or MMTV-Erbb2" . SPARSER::COLLECTION) ("Nik" . SPARSER::PROTEIN)
    ("mammary fat" . SPARSER::PROTEIN) ("MMTV-Erbb2" . SPARSER::COLLECTION)
    ("MMTV-Erbb2/Ikka" . SPARSER::COLLECTION) ("Ikka" . SPARSER::PROTEIN)
    ("the immortalized ErbB2-induced mammary cancer cell line MT2"
     . SPARSER::PROTEIN)
    ("Wnt-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IKKα and NIK" . SPARSER::COLLECTION)
    ("the luminal marker cytokeratin 18 (CK18) and not the basal cell marker CK5 ( xref )"
     . SPARSER::COLLECTION)
    ("Erbb2" . SPARSER::PROTEIN) ("the #2 mammary fat" . SPARSER::PROTEIN)
    ("Rag1" . SPARSER::PROTEIN) ("/CD31" . SPARSER::COLLECTION)
    ("Rag" . SPARSER::PROTEIN) ("Form" . SPARSER::FORM)
    ("regulating mammary TICs" . SPARSER::PROTEIN)
    ("a haploinsufficient suppressor" . SPARSER::SUPPRESSOR)
    ("ligand (RANKL)" . SPARSER::MOLECULE) ("MaSCs" . SPARSER::PROTEIN)
    ("PI-MECs" . SPARSER::COLLECTION) ("MECs" . SPARSER::PROTEIN)
    ("MaSC" . SPARSER::PROTEIN)
    ("a humanized monoclonal ERBB2 antibody" . SPARSER::ANTIBODY)
    ("BCa" . SPARSER::PROTEIN) ("p27/Kip1" . SPARSER::COLLECTION)
    ("IKKα and its activator" . SPARSER::COLLECTION)
    ("kinase (NIK)" . SPARSER::KINASE) ("med" . SPARSER::PROTEIN)
    ("TICs" . SPARSER::PROTEIN) ("NIK" . SPARSER::PROTEIN)
    ("Foxa2" . SPARSER::PROTEIN) ("cyclin-D1" . SPARSER::PROTEIN)
    ("CDK7" . SPARSER::PROTEIN) ("CCNA2" . SPARSER::PROTEIN)
    ("CCND3" . SPARSER::PROTEIN) ("CCNB2" . SPARSER::PROTEIN)
    ("CCNB1" . SPARSER::PROTEIN) ("TRAF3" . SPARSER::PROTEIN)
    ("IKK α" . SPARSER::PROTEIN) ("Kip2" . SPARSER::PROTEIN)
    ("p57" . SPARSER::PROTEIN) ("S178" . SPARSER::PROTEIN)
    ("MT2" . SPARSER::PROTEIN)
    ("cyclin - dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ikkα" . SPARSER::PROTEIN) ("FoxP3" . SPARSER::PROTEIN)
    ("CD61" . SPARSER::PROTEIN) ("CD29" . SPARSER::PROTEIN)
    ("PIPKIγi5, SNX5 or Hrs" . SPARSER::COLLECTION)
    ("SNX1, SNX2, SNX5 and SNX6" . SPARSER::COLLECTION)
    ("SNX1 or SNX2" . SPARSER::COLLECTION)
    ("SNX1, SNX2 or SNX6" . SPARSER::COLLECTION)
    ("SNX5 and SNX6" . SPARSER::COLLECTION)
    ("SNX1 and SNX2" . SPARSER::COLLECTION)
    ("Vps26, Vps29 and Vps35" . SPARSER::COLLECTION)
    ("Vps29" . SPARSER::PROTEIN)
    ("PtdIns3,4P 2 and PtdIns4,5P 2 ( xref ; xref ; xref )"
     . SPARSER::COLLECTION)
    ("PIPKIγi5 and OCRL" . SPARSER::COLLECTION) ("OCRL" . SPARSER::PROTEIN)
    ("PLCδ-PH-GFP" . SPARSER::COLLECTION) ("PLCδ" . SPARSER::PROTEIN)
    ("PLCδ-PH" . SPARSER::PROTEIN-PAIR)
    ("PIPKIγi5, SNX5, and PtdIns4,5P" . SPARSER::COLLECTION)
    ("EGFR and other receptors" . SPARSER::COLLECTION)
    ("SNX5_B5" . SPARSER::PROTEIN) ("SNX5 and SNX5_B5" . SPARSER::COLLECTION)
    ("Hrs-SNX5_B5" . SPARSER::PROTEIN-PAIR)
    ("PIPKIγi5, SNX5, and Hrs" . SPARSER::COLLECTION)
    ("PIPKIγi5, phosphoinositides, and SNX5" . SPARSER::COLLECTION)
    ("both PtdIns3P and PtdIns4,5P 2 play critical roles"
     . SPARSER::COLLECTION)
    ("SNX5 and Hrs" . SPARSER::COLLECTION) ("SNX5-Hrs" . SPARSER::COLLECTION)
    ("Hrs-EGFR" . SPARSER::COLLECTION)
    ("PIPKIγi5 and phosphoinositides" . SPARSER::COLLECTION)
    ("SNX5, Hrs, and EGFR" . SPARSER::COLLECTION)
    ("PIPKIγi5-" . SPARSER::PROTEIN)
    ("antibody and 10-nm" . SPARSER::COLLECTION)
    ("PIPKIγi5 or SNX5" . SPARSER::COLLECTION)
    ("endo-lysosomal" . SPARSER::COLLECTION)
    ("c-Met or PAR1" . SPARSER::COLLECTION)
    ("c-Met ( xref ) or PAR1 ( xref )" . SPARSER::COLLECTION)
    ("thrombin" . SPARSER::PROTEIN) ("Vps26 or Vps35" . SPARSER::COLLECTION)
    ("Vps26 and Vps35" . SPARSER::COLLECTION) ("Vps26" . SPARSER::PROTEIN)
    ("a Vps26" . SPARSER::PROTEIN) ("Vps35" . SPARSER::PROTEIN)
    ("SNX" . SPARSER::PROTEIN) ("EGFR, AKT, and ERK" . SPARSER::COLLECTION)
    ("PIPKIγi5 and SNX5" . SPARSER::COLLECTION) ("PIPKIγi5" . SPARSER::PROTEIN)
    ("PIPKIγi5-SNX5" . SPARSER::PROTEIN-PAIR)
    ("GST-SNX5" . SPARSER::COLLECTION) ("GST-pulldown" . SPARSER::COLLECTION)
    ("Western blot (IB)" . SPARSER::PROTEIN) ("Bin" . SPARSER::PROTEIN)
    ("EGFR-LAMP1" . SPARSER::COLLECTION)
    ("the late endosome/lysosome marker lysosomal-associated membrane protein"
     . SPARSER::PROTEIN)
    ("EGFR-EEA1" . SPARSER::COLLECTION)
    ("Alexa Fluor 488-labelled EGF" . SPARSER::PROTEIN)
    ("often PtdIns4,5P 2 effectors" . SPARSER::EFFECTOR)
    ("the receptor or the agonist-receptor complex" . SPARSER::COLLECTION)
    ("Hrs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ILVs" . SPARSER::PROTEIN)
    ("a protein that binds PtdIns4,5P 2 and other phosphoinositides"
     . SPARSER::COLLECTION)
    ("SNX2" . SPARSER::PROTEIN) ("SNX1" . SPARSER::PROTEIN)
    ("SNX6" . SPARSER::PROTEIN) ("PI-4" . SPARSER::PROTEIN)
    ("Phosphatidylinositol 4-Kinase" . SPARSER::PROTEIN)
    ("NEDD-4-1" . SPARSER::PROTEIN) ("SNX9" . SPARSER::PROTEIN)
    ("PAR1" . SPARSER::PROTEIN) ("CI-MPR" . SPARSER::PROTEIN)
    ("cation-independent mannose-6-phosphate receptor" . SPARSER::PROTEIN)
    ("EEA1" . SPARSER::PROTEIN) ("transferrin receptor" . SPARSER::PROTEIN)
    ("clathrin adaptor protein" . SPARSER::PROTEIN)
    ("G protein-coupled receptor" . SPARSER::PROTEIN)
    ("SNX5" . SPARSER::PROTEIN) ("sorting nexin 5" . SPARSER::PROTEIN)
    ("PIPKIγ" . SPARSER::PROTEIN) ("PtdIns3P" . SPARSER::MOLECULE)
    ("Phosphatidylinositol-4,5-bisphosphate" . SPARSER::PIP2)
    ("dermal collagen" . SPARSER::PROTEIN) ("TAZ" . SPARSER::PROTEIN)
    ("TβRII, CCN2, and type I" . SPARSER::COLLECTION)
    ("TβRII and CCN2" . SPARSER::COLLECTION)
    ("the ECM and cell surface adhesion receptors" . SPARSER::COLLECTION)
    ("fragmented collagenous ECM" . SPARSER::PROTEIN)
    ("Microenvironmental cues" . SPARSER::PROTEIN-FAMILY)
    ("CTGF ( xref ) and type I procollagen ( xref ) proteins"
     . SPARSER::COLLECTION)
    ("TβRI and Smad2/3/4" . SPARSER::COLLECTION)
    ("CCN2 and type I" . SPARSER::COLLECTION) ("MMI" . SPARSER::MOLECULE)
    ("significantly more hydroxyproline" . SPARSER::MOLECULE)
    ("hydroxyproline" . SPARSER::MOLECULE)
    ("chelates divalent cations" . SPARSER::MOLECULE)
    ("proteases and cysteine" . SPARSER::COLLECTION)
    ("both MMP-1 V94G and wild type MMP-1" . SPARSER::COLLECTION)
    ("MMP-1 V94G and wild type MMP-1" . SPARSER::COLLECTION)
    ("MMP-1 V94G or wild type MMP-1" . SPARSER::COLLECTION)
    ("wild type MMP-1 and point mutation MMP-1 V94G" . SPARSER::COLLECTION)
    ("Media" . SPARSER::PROTEIN) ("MMP-3 and MMP-7" . SPARSER::COLLECTION)
    ("kallikrein, plasmin, or APMA" . SPARSER::COLLECTION)
    ("APMA" . SPARSER::PROTEIN) ("the collagenous ECM" . SPARSER::PROTEIN)
    ("MMP-3 and MMP-9" . SPARSER::COLLECTION)
    ("MMP-3 and MMP-10" . SPARSER::COLLECTION)
    ("kallikrein" . SPARSER::PROTEIN)
    ("approximately 100 amino acids" . SPARSER::AMINO-ACID)
    ("The dermal ECM" . SPARSER::PROTEIN)
    ("the cross-linked collagenous ECM" . SPARSER::PROTEIN)
    ("Type I collagen and other ECM proteins" . SPARSER::COLLECTION)
    ("TβRI" . SPARSER::PROTEIN) ("CCN2" . SPARSER::PROTEIN)
    ("TβRII" . SPARSER::PROTEIN) ("MMP-7" . SPARSER::PROTEIN)
    ("F-Actin" . SPARSER::BIO-COMPLEX) ("MMP-10" . SPARSER::PROTEIN)
    ("MMP-3" . SPARSER::PROTEIN) ("neutrophil elastase" . SPARSER::PROTEIN)
    ("MMI270" . SPARSER::DRUG)
    ("a hyperactive androgen receptor" . SPARSER::PROTEIN)
    ("the shorter CAG allele" . SPARSER::ALLELE)
    ("the shorter (and presumably, more functional) allele" . SPARSER::ALLELE)
    ("the longer allele" . SPARSER::ALLELE)
    ("the shorter allele" . SPARSER::ALLELE)
    ("African-Americans" . SPARSER::COLLECTION)
    ("Americans" . SPARSER::PROTEIN) ("gonadal" . SPARSER::PROTEIN-FAMILY)
    ("whose AR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("fragments, CAGn and GGNn" . SPARSER::COLLECTION)
    ("polyglutamine and polyglycine" . SPARSER::COLLECTION)
    ("polyglycine" . SPARSER::MOLECULE) ("polyglutamine" . SPARSER::MOLECULE)
    ("heat shock proteins, dimerisation, and binding to response elements"
     . SPARSER::COLLECTION)
    ("heat shock proteins (Hsp70 and Hsp90) and their co-chaperones [  xref  ]"
     . SPARSER::COLLECTION)
    ("gonadotropins" . SPARSER::PROTEIN)
    ("the classical AR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cultured subcutaneous adipocytes" . SPARSER::PROTEIN)
    ("cyproterone" . SPARSER::DRUG) ("dynorphin" . SPARSER::PROTEIN)
    ("kisspeptin" . SPARSER::PROTEIN) ("neuropeptides" . SPARSER::PROTEIN)
    ("estradiol and progesterone" . SPARSER::COLLECTION)
    ("flutamide" . SPARSER::DRUG) ("FSH" . SPARSER::DRUG)
    ("glucose and dyslipidemia" . SPARSER::COLLECTION)
    ("coactivators and corepressors" . SPARSER::COLLECTION)
    ("1 of the AR gene and PCOS" . SPARSER::COLLECTION)
    ("initially normal testosterone and dihydrotestosterone"
     . SPARSER::COLLECTION)
    ("a hyperactive androgen receptor (AR)" . SPARSER::PROTEIN)
    ("skeletal muscle or adipocytes" . SPARSER::COLLECTION)
    ("testosterone and dihydrotestosterone" . SPARSER::COLLECTION)
    ("GnRH" . SPARSER::PROTEIN) ("Androgen" . SPARSER::PROTEIN)
    ("other pathological CK2 substrates" . SPARSER::SUBSTRATE)
    ("the pathological substrates" . SPARSER::SUBSTRATE)
    ("pathological substrates" . SPARSER::SUBSTRATE)
    ("CK2 and caspases" . SPARSER::COLLECTION)
    ("fluorescent variants" . SPARSER::VARIANT)
    ("v-src/Hsp90" . SPARSER::COLLECTION) ("v-src" . SPARSER::COLLECTION)
    ("ATP and ATP-competitive" . SPARSER::COLLECTION)
    ("a unique proline" . SPARSER::AMINO-ACID)
    ("the CK2 catalytic subunits determined by X-ray crystallography"
     . SPARSER::FRAGMENT)
    ("acceptors" . SPARSER::MOLECULE) ("CK2β and CK2α" . SPARSER::COLLECTION)
    ("free catalyic CK2 subunits" . SPARSER::FRAGMENT)
    (":CK2α:CK2β" . SPARSER::BIO-COMPLEX)
    ("a tetrameric enzyme" . SPARSER::ENZYME)
    ("tautomycin" . SPARSER::MOLECULE)
    ("tetrameric holoenzyme" . SPARSER::PROTEIN)
    ("GFP-CK2α" . SPARSER::COLLECTION) ("spermine" . SPARSER::PROTEIN)
    ("ODC" . SPARSER::PROTEIN)
    ("subunits and holoenzyme" . SPARSER::COLLECTION)
    ("catalytic subunits or the holoenzyme (DSD in Figure xref ) and an eIF2β substrate peptide"
     . SPARSER::COLLECTION)
    ("the holoenzyme (DSD in Figure xref ) and an eIF2β substrate peptide"
     . SPARSER::COLLECTION)
    ("eIF2β" . SPARSER::PROTEIN) ("polyamines" . SPARSER::MOLECULE)
    ("myc-CK2α" . SPARSER::COLLECTION) ("myc-CK2β" . SPARSER::COLLECTION)
    ("PP2A-CK2α" . SPARSER::COLLECTION) ("PP2A/CK2α-HA" . SPARSER::COLLECTION)
    ("only CK2α-HA constructs containing amino acids" . SPARSER::AMINO-ACID)
    ("caspase-3-FLAG" . SPARSER::COLLECTION)
    ("catalytic cysteine" . SPARSER::AMINO-ACID) ("-HA" . SPARSER::COLLECTION)
    ("CK2α-HA" . SPARSER::COLLECTION)
    ("the doubly phosphorylated caspase-3 peptide (which are capable of detecting both singly and doubly phosphorylated and caspase-3 [ xref ]) and systematically modulated expression of the CK2 catalytic isoforms"
     . SPARSER::COLLECTION)
    ("CK2β" . SPARSER::PROTEIN)
    ("Bid [ xref ] and YY1 [ xref ]" . SPARSER::COLLECTION)
    ("CK2α:CK2β" . SPARSER::BIO-COMPLEX)
    ("CK2α and CK2α" . SPARSER::COLLECTION)
    ("at least one CK2 inhibitor" . SPARSER::INHIBITOR)
    ("CX" . SPARSER::PROTEIN-FAMILY) ("CK2α or CK2α" . SPARSER::COLLECTION)
    ("holoenzyme" . SPARSER::PROTEIN)
    ("selectively target individual CK2 subunits" . SPARSER::FRAGMENT)
    ("CK2 and caspase-3" . SPARSER::COLLECTION)
    ("CK2 and caspase" . SPARSER::COLLECTION)
    ("tetrameric complexes" . SPARSER::BIO-COMPLEX) ("P81" . SPARSER::PROTEIN)
    ("5 – 2" . SPARSER::PROTEIN) ("AG-3" . SPARSER::PROTEIN)
    ("− 3" . SPARSER::PROTEIN) ("ODC1" . SPARSER::PROTEIN)
    ("CKIP-1" . SPARSER::PROTEIN) ("Pin-1" . SPARSER::PROTEIN)
    ("T-X" . SPARSER::PROTEIN) ("CK2α" . SPARSER::PROTEIN)
    ("the wild-type KRAS allele or hyperploidy" . SPARSER::COLLECTION)
    ("the mutated KRAS allele" . SPARSER::ALLELE)
    ("a sizable cohort" . SPARSER::MOLECULE)
    ("the morphologic subtypes" . SPARSER::PROTEIN)
    ("the conventional ductal adenocarcinoma component" . SPARSER::COMPONENT)
    ("the well-differentiated component" . SPARSER::COMPONENT)
    ("successful FISH" . SPARSER::PROTEIN)
    ("allele peak higher/equal" . SPARSER::PROTEIN) ("histologic type" . TYPE)
    ("microscopic foci" . SPARSER::PROTEIN)
    ("TK1 and TK2" . SPARSER::COLLECTION)
    ("a well-defined cohort" . SPARSER::MOLECULE)
    ("KIT and centromer" . SPARSER::COLLECTION)
    ("adriamycin and ifosfamide" . SPARSER::COLLECTION)
    ("ifosfamide" . SPARSER::DRUG) ("adriamycin" . SPARSER::DRUG)
    ("our referral center cohort" . SPARSER::MOLECULE)
    ("all known mutational hot" . SPARSER::PROTEIN)
    ("hydrogenase" . SPARSER::PROTEIN)
    ("IGF1R , BRAF , or PIK3CA" . SPARSER::COLLECTION)
    ("gene and exons" . SPARSER::COLLECTION)
    ("KIT and platelet-derived growth factor receptor alpha ( PDGFRA )"
     . SPARSER::COLLECTION)
    ("KIT and platelet-derived growth factor receptor alpha"
     . SPARSER::COLLECTION)
    ("TK2" . SPARSER::PROTEIN) ("pre-imatinib" . SPARSER::DRUG)
    ("CEP4" . SPARSER::PROTEIN) ("L18" . SPARSER::PROTEIN)
    ("Mib1" . SPARSER::PROTEIN) ("DOG1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("neu, estrogen and progesterone" . SPARSER::COLLECTION)
    ("male and 83 (57%) female patients" . SPARSER::COLLECTION)
    ("NOS" . SPARSER::PROTEIN) ("ER, PR, and HER2" . SPARSER::COLLECTION)
    ("invasive lobular carcinoma pleomorphic type" . TYPE)
    ("cytokeratin 20" . SPARSER::PROTEIN) ("cytokeratin 7" . SPARSER::PROTEIN)
    ("MAP2K1" . SPARSER::PROTEIN) ("a soluble peptide" . SPARSER::PEPTIDE)
    ("ERK, RPS6 and mTOR" . SPARSER::COLLECTION)
    ("ERK, AKT, mTOR, RPS6 and cyclin D1" . SPARSER::COLLECTION)
    ("MMP1, MMP3 and PLAU" . SPARSER::COLLECTION)
    ("Erk and TP53" . SPARSER::COLLECTION) ("PLAU" . SPARSER::PROTEIN)
    ("ERK, PI3K and mTOR" . SPARSER::COLLECTION)
    ("p42/p44" . SPARSER::COLLECTION) ("receptor/SMAD" . SPARSER::COLLECTION)
    ("MMP1 and MMP2" . SPARSER::COLLECTION)
    ("SMAD2 and ERK" . SPARSER::COLLECTION)
    ("metallopeptidase" . SPARSER::PROTEIN)
    ("ITGA1, ITGA3, ITGA5, ITGAV, ITGB1 and ITGB5" . SPARSER::COLLECTION)
    ("RPS6 and MTOR" . SPARSER::COLLECTION)
    ("AKT/mTOR/ribosomal protein S6" . SPARSER::COLLECTION)
    ("mTOR and ERK" . SPARSER::COLLECTION)
    ("temozolomide (TMZ)" . SPARSER::DRUG)
    ("suppressor and tumor" . SPARSER::COLLECTION)
    ("suppressor or tumor" . SPARSER::COLLECTION) ("P-gp" . SPARSER::PROTEIN)
    ("BCL2L11" . SPARSER::PROTEIN) ("CASP3" . SPARSER::PROTEIN)
    ("MOAP1" . SPARSER::PROTEIN) ("CDKN1C" . SPARSER::PROTEIN)
    ("HDAC5" . SPARSER::PROTEIN) ("plasminogen activator" . SPARSER::PROTEIN)
    ("ITGB5" . SPARSER::PROTEIN) ("ITGB1" . SPARSER::PROTEIN)
    ("ITGA5" . SPARSER::PROTEIN) ("ITGA3" . SPARSER::PROTEIN)
    ("ITGA1" . SPARSER::PROTEIN) ("RPS6" . SPARSER::PROTEIN)
    ("α5β1" . SPARSER::PROTEIN) ("tissue type" . SPARSER::PROTEIN)
    ("MUFA, and carbohydrate" . SPARSER::COLLECTION)
    ("allele and rs2943641 T" . SPARSER::COLLECTION)
    ("IRS1 variants (rs7578326 and rs2943641) and dietary factors"
     . SPARSER::COLLECTION)
    ("dietary fat" . SPARSER::PROTEIN) ("fat, or SFA" . SPARSER::COLLECTION)
    ("fat and carbohydrate" . SPARSER::COLLECTION)
    ("macronutrients" . SPARSER::MOLECULE)
    ("dietary GL and GI and IRS1 variants" . SPARSER::VARIANT)
    ("allele and rs2943641" . SPARSER::COLLECTION)
    ("MetS, and type 2" . SPARSER::COLLECTION)
    ("the diabetogenic C allele" . SPARSER::ALLELE)
    ("IRS1 and IRS2" . SPARSER::COLLECTION)
    ("IRS1 variants and dietary factors" . SPARSER::COLLECTION)
    ("dietary total fat" . SPARSER::PROTEIN)
    ("dietary carbohydrate ( P = 0.027) and SFA-to-carbohydrate ratio ( P = 0.017)"
     . SPARSER::COLLECTION)
    ("dietary carbohydrate" . SPARSER::MOLECULE)
    ("dietary MUFA" . SPARSER::MOLECULE) ("HOMA-IR" . SPARSER::COLLECTION)
    ("IFG" . SPARSER::PROTEIN) ("MUFA" . SPARSER::MOLECULE)
    ("dietary carbohydrate and fat" . SPARSER::COLLECTION)
    ("carbohydrate and fat" . SPARSER::COLLECTION)
    ("IR and MetS" . SPARSER::COLLECTION) ("MetS" . SPARSER::PROTEIN)
    ("IR and related traits" . SPARSER::COLLECTION)
    ("related traits" . SPARSER::PROTEIN) ("Lipid" . SPARSER::LIPID)
    ("monounsaturated fatty acid" . SPARSER::MOLECULE)
    ("HDL-C" . SPARSER::PROTEIN)
    ("Insulin receptor substrate 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("oncogenes and induction of the tumor suppressor let-7"
     . SPARSER::COLLECTION)
    ("TTP target genes and p53 target genes" . SPARSER::COLLECTION)
    ("gene and cell type" . SPARSER::COLLECTION)
    ("TTP and hnRNP" . SPARSER::COLLECTION) ("transportin" . SPARSER::PROTEIN)
    ("c- fos and c- myc" . SPARSER::COLLECTION)
    ("colony-stimulating factor, interleukin-3, tumor necrosis factor-α, interleukin-2 and c- fos"
     . SPARSER::COLLECTION)
    ("the gene- and cell type-specific activity of TTP" . SPARSER::COLLECTION)
    ("gene-" . SPARSER::GENE) ("p53 or TTP" . SPARSER::COLLECTION)
    ("p53/TTP/Lin28" . SPARSER::COLLECTION)
    ("p53 and p53" . SPARSER::COLLECTION)
    ("p53-TTP-Lin28" . SPARSER::COLLECTION)
    ("Flag-Lin28a" . SPARSER::PROTEIN-PAIR)
    ("TTP , Lin28a and let-7" . SPARSER::COLLECTION)
    ("Lin28 and let-7 as" . SPARSER::COLLECTION)
    ("HMGA2 and CDC34" . SPARSER::COLLECTION)
    ("p53-siRNA" . SPARSER::COLLECTION)
    ("p53 and its target p21 ( xref B)" . SPARSER::COLLECTION)
    ("TTP-siRNA" . SPARSER::COLLECTION) ("p21 and TTP" . SPARSER::COLLECTION)
    ("anti-p53 or isotype" . SPARSER::COLLECTION)
    ("YYY-3" . SPARSER::COLLECTION) ("-RRR" . SPARSER::COLLECTION)
    ("RRR" . SPARSER::PROTEIN) ("NIH:OVCAR3" . SPARSER::PROTEIN)
    ("p53 and TTP" . SPARSER::COLLECTION)
    ("p53 , p21 or TTP" . SPARSER::COLLECTION)
    ("0.1 μg/ml 5-FU or 50 μM etoposide" . SPARSER::COLLECTION)
    ("p53, p21 and TTP" . SPARSER::COLLECTION)
    ("total and phosphorylated p53 proteins" . SPARSER::PROTEIN)
    ("the genotoxic agent doxorubicin (DOX)" . SPARSER::PROTEIN)
    ("oncogenes and the let-7 tumor suppressor" . SPARSER::COLLECTION)
    ("tristetraprolin (TTP)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cytokines and proto-oncogenes" . SPARSER::COLLECTION)
    ("Drosha and Dicer" . SPARSER::COLLECTION) ("Drosha" . SPARSER::PROTEIN)
    ("TTP and let-7 and chemoresistance" . SPARSER::COLLECTION)
    ("let-7 and chemoresistance" . SPARSER::COLLECTION)
    ("DOX" . SPARSER::PROTEIN) ("Lin28a" . SPARSER::PROTEIN)
    ("doxorubicin (DOX)" . SPARSER::PROTEIN)
    ("TTP and let-7" . SPARSER::COLLECTION)
    ("Tristetraprolin (TTP) and let-7 microRNA" . SPARSER::COLLECTION)
    ("Tristetraprolin" . SPARSER::PROTEIN) ("cIAP2" . SPARSER::PROTEIN)
    ("LAT2" . SPARSER::PROTEIN) ("c- fos" . SPARSER::PROTEIN)
    ("c- myc" . SPARSER::PROTEIN) ("MiR-200C" . SPARSER::MOLECULE)
    ("pre-miRNAs" . SPARSER::RNA) ("pri-miRNAs" . SPARSER::RNA)
    ("protein-G" . SPARSER::PROTEIN) ("PA1" . SPARSER::PROTEIN)
    ("Lin28" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HER1 497K and HER2 655V polymorphisms" . SPARSER::COLLECTION)
    ("HER1 497K and HER2 655V variant" . SPARSER::COLLECTION)
    ("HER1 R497K (rs 11543848) and HER2 I655V (rs 1136201) Polymorphisms"
     . SPARSER::COLLECTION)
    ("HER1" . SPARSER::PROTEIN)
    ("translationally co-regulate target mRNAs" . SPARSER::PROTEIN)
    ("p53, Sestrin1 and Sestrin2" . SPARSER::COLLECTION)
    ("both cell-cycle genes and translational machinery transcripts"
     . SPARSER::COLLECTION)
    ("TIA-1 or TIAR" . SPARSER::COLLECTION)
    ("eIF4G1 and eIF4E" . SPARSER::COLLECTION) ("eIF4G1" . SPARSER::PROTEIN)
    ("TIA-1 and TIAR" . SPARSER::COLLECTION) ("TIAR" . SPARSER::PROTEIN)
    ("the auxiliary genes" . SPARSER::GENE)
    ("The ribosomal proteins" . SPARSER::PROTEIN)
    ("cell-cycle genes and the inhibition of translational machinery genes"
     . SPARSER::COLLECTION)
    ("translational machinery genes" . SPARSER::GENE)
    ("Sestrin" . SPARSER::PROTEIN-FAMILY)
    ("SESN1 and SESN2" . SPARSER::COLLECTION)
    ("cell-cycle genes and broad translational repression of the ribosomal protein"
     . SPARSER::COLLECTION)
    ("ribosomal genes" . SPARSER::GENE)
    ("RPL34 and RPL23" . SPARSER::COLLECTION)
    ("MDM2 and a potent inducer" . SPARSER::COLLECTION)
    ("the auxiliary ribosome-genesis genes" . SPARSER::GENE)
    ("a comprehensive map" . SPARSER::PROTEIN) ("SPIKE" . SPARSER::PROTEIN)
    ("the ribosomal proteins" . SPARSER::PROTEIN)
    ("functional p53 and p16 INK4A" . SPARSER::COLLECTION)
    ("virtually all the ribosomal proteins" . SPARSER::PROTEIN)
    ("the 60S ribosomal subunit" . SPARSER::FRAGMENT)
    ("Sestrin2 (SESN2 ) and Polo-like kinase" . SPARSER::COLLECTION)
    ("inflammatory-related genes" . SPARSER::GENE)
    ("the transformed state" . SPARSER::BIO-STATE)
    ("the key inducer" . SPARSER::PROTEIN)
    ("SREBF1 and SREBF2" . SPARSER::COLLECTION)
    ("p53 and p16 INK4A" . SPARSER::COLLECTION)
    ("Ribo-Seq" . SPARSER::COLLECTION) ("Seq" . SPARSER::PROTEIN)
    ("p53 and mTOR" . SPARSER::COLLECTION)
    ("pivotal proto-oncogenes" . SPARSER::PROTO-ONCOGENE)
    ("RAS, PI3K and Akt" . SPARSER::COLLECTION)
    ("PTEN, NF1 and LKB1" . SPARSER::COLLECTION)
    ("Sestrin1 and Sestrin2" . SPARSER::COLLECTION)
    ("mTOR and p53" . SPARSER::COLLECTION) ("RPS23" . SPARSER::PROTEIN)
    ("polynucleotide kinase" . SPARSER::PROTEIN) ("RasV12" . SPARSER::DRUG)
    ("Torin 1" . SPARSER::DRUG) ("TIA-1" . SPARSER::PROTEIN)
    ("Sestrin-1" . SPARSER::PROTEIN) ("SESN1" . SPARSER::PROTEIN)
    ("RPL23" . SPARSER::PROTEIN) ("RPL34" . SPARSER::PROTEIN)
    ("nutlin-3a" . SPARSER::DRUG) ("PP242" . SPARSER::DRUG)
    ("ribonucleoprotein complexes" . SPARSER::BIO-COMPLEX)
    ("PA2G4" . SPARSER::PROTEIN) ("NOP56" . SPARSER::PROTEIN)
    ("BP2" . SPARSER::PROTEIN) ("EBNA1" . SPARSER::PROTEIN)
    ("BOP1" . SPARSER::PROTEIN) ("Polo-like kinase" . SPARSER::PROTEIN)
    ("SESN2" . SPARSER::PROTEIN) ("TP53I3" . SPARSER::PROTEIN)
    ("SREBF2" . SPARSER::PROTEIN) ("Sestrin2" . SPARSER::PROTEIN)
    ("Sestrin1" . SPARSER::PROTEIN) ("HCC and SJC" . SPARSER::COLLECTION)
    ("TNL" . SPARSER::PROTEIN) ("PYC" . SPARSER::PROTEIN)
    ("antagonists or miRNA" . SPARSER::COLLECTION)
    ("brain-derived neurotrophic factor in brain [ xref ] and hepatocyte nuclear factor 6 and Onecut 2 in developing liver and pancreas [ xref ]"
     . SPARSER::COLLECTION)
    ("CDK6 and CDC25A" . SPARSER::COLLECTION)
    ("pro- and anti-apoptotic" . SPARSER::COLLECTION)
    ("pSer" . SPARSER::PROTEIN) ("post-transcriptional gene" . SPARSER::GENE)
    ("the most aggressive type" . TYPE)
    ("Cyclin-dependent kinase 6" . SPARSER::PROTEIN)
    ("PRL-3" . SPARSER::PROTEIN)
    ("hepatocyte nuclear factor" . SPARSER::PROTEIN)
    ("brain-derived neurotrophic factor" . SPARSER::PROTEIN)
    ("RPL35A" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase 6" . SPARSER::PROTEIN)
    ("a strong candidate oncogene" . SPARSER::ONCOGENE)
    ("IGF1R–IRS2–PI3K" . SPARSER::COLLECTION)
    ("IRS2 and PI3 kinase" . SPARSER::COLLECTION)
    ("mTOR/S6 kinase" . SPARSER::COLLECTION)
    ("serrated/MSI" . SPARSER::COLLECTION)
    ("Minimal copy region analysis pinpoints IRS2" . SPARSER::PROTEIN)
    ("IGF-1, epidermal growth factor and IRS2" . SPARSER::COLLECTION)
    ("IRS2-HA" . SPARSER::COLLECTION) ("PI3K and MAPK" . SPARSER::COLLECTION)
    ("ncRNA" . SPARSER::RNA) ("a relevant MCR" . SPARSER::PROTEIN)
    ("the smallest MCR" . SPARSER::PROTEIN) ("CGH" . SPARSER::PROTEIN)
    ("even using very limited DNA" . SPARSER::DNA) ("MCC" . SPARSER::PROTEIN)
    ("MCRs" . SPARSER::PROTEIN)
    ("the so-called driver oncogenes (in regions of gain) or tumour suppressors (in regions of loss; Martin et al . xref ; Wood et al . xref ; Stratton et al . xref )"
     . SPARSER::COLLECTION)
    ("CNAs" . SPARSER::PROTEIN)
    ("Colorectal cancers (CRC) display two types" . TYPE)
    ("MCR" . SPARSER::PROTEIN) ("124 primary CRCs" . SPARSER::PROTEIN)
    ("7SK" . SPARSER::RNA) ("Rnase A" . SPARSER::PROTEIN)
    ("CRC2" . SPARSER::PROTEIN) ("IRS2" . SPARSER::PROTEIN)
    ("IK" . SPARSER::PROTEIN)
    ("proteins and nucleotides" . SPARSER::COLLECTION)
    ("mTORC1 and these CAD binding proteins" . SPARSER::COLLECTION)
    ("Rad9 [ xref ] and androgen receptor [ xref ]" . SPARSER::COLLECTION)
    ("orotate, and UTP" . SPARSER::COLLECTION) ("UTP" . SPARSER::MOLECULE)
    ("orotate" . SPARSER::MOLECULE)
    ("MAP kinase and PKA" . SPARSER::COLLECTION)
    ("mLST8 and raptor" . SPARSER::COLLECTION)
    ("FLAG-raptor" . SPARSER::COLLECTION)
    ("this multienzymatic protein" . SPARSER::PROTEIN)
    ("HA-mTOR" . SPARSER::COLLECTION) ("mLST8 and mTOR" . SPARSER::COLLECTION)
    ("ATC" . SPARSER::DRUG) ("GLN" . SPARSER::AMINO-ACID)
    ("the anti-mLST8" . SPARSER::ANTIBODY)
    ("the anti-myc and anti-FLAG" . SPARSER::COLLECTION)
    ("anti-myc and anti-FLAG" . SPARSER::COLLECTION)
    ("a multimeric complex" . SPARSER::BIO-COMPLEX)
    ("-pyrophosphate and uridine" . SPARSER::COLLECTION)
    ("-pyrophosphate" . SPARSER::MOLECULE) ("carbamoyl" . SPARSER::MOLECULE)
    ("mTOR-raptor" . SPARSER::COLLECTION)
    ("mLST8, mSin1, DEPTOR, and Protor" . SPARSER::COLLECTION)
    ("Akt, SGK, and PKCα" . SPARSER::COLLECTION)
    ("Protor" . SPARSER::PROTEIN-FAMILY)
    ("TSC1 and TSC2" . SPARSER::COLLECTION)
    ("GβL, and DEPTOR" . SPARSER::COLLECTION)
    ("S6 kinase, 4E-BP1, and PRAS40" . SPARSER::COLLECTION)
    ("called mTOR complex 1 (mTORC1) and mTOR complex 2 (mTORC2)"
     . SPARSER::COLLECTION)
    ("mechanistic TOR" . SPARSER::PROTEIN) ("TOR" . SPARSER::PROTEIN)
    ("FLAG-mLST8" . SPARSER::COLLECTION) ("β5" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p -nitrophenyl" . SPARSER::MOLECULE) ("mSin1" . SPARSER::PROTEIN)
    ("phosphatidylinositol 3-kinase-related kinase" . SPARSER::PROTEIN)
    ("guide rational drug" . SPARSER::DRUG)
    ("mRNA or miRNAs" . SPARSER::COLLECTION)
    ("KSRP and TTP" . SPARSER::COLLECTION)
    ("KH-type splicing regulatory protein (KSRP) and tristetraprolin (TTP)"
     . SPARSER::COLLECTION)
    ("TTP" . SPARSER::PROTEIN) ("tristetraprolin" . SPARSER::PROTEIN)
    ("reactive oxidant" . SPARSER::PROTEIN)
    ("emetine and puromycin" . SPARSER::COLLECTION)
    ("GM-CSF and LPS" . SPARSER::COLLECTION)
    ("HuR siRNA (26.5±5.6%) and control siRNA (26.2±10.7%)"
     . SPARSER::COLLECTION)
    ("mainly p45 isoform" . SPARSER::ISOFORM)
    ("HuR and AUF1" . SPARSER::COLLECTION)
    ("emetine, HuR and AUF1" . SPARSER::COLLECTION) ("RNP" . SPARSER::PROTEIN)
    ("GM-CSF instead of emetine" . SPARSER::COLLECTION)
    ("puromycin and cycloheximide" . SPARSER::COLLECTION)
    ("emetine and cycloheximide" . SPARSER::COLLECTION)
    ("GM-CSF or LPS" . SPARSER::COLLECTION)
    ("p37, p41, p42, and p45" . SPARSER::COLLECTION)
    ("AUF1/hnRNPD" . SPARSER::COLLECTION) ("RNPs" . SPARSER::PROTEIN)
    ("hnRNPD" . SPARSER::PROTEIN) ("ELAV" . SPARSER::PROTEIN)
    ("proteins and miRNAs" . SPARSER::COLLECTION)
    ("the oxidant arsenite and the translation inhibitor anisomycin"
     . SPARSER::COLLECTION)
    ("anisomycin" . SPARSER::DRUG) ("labile" . SPARSER::PROTEIN)
    ("Emetine" . SPARSER::DRUG) ("emetine" . SPARSER::DRUG)
    ("KH-type splicing regulatory protein" . SPARSER::PROTEIN)
    ("hnRNP D" . SPARSER::PROTEIN) ("p45" . SPARSER::PROTEIN)
    ("p41" . SPARSER::PROTEIN) ("AUF1" . SPARSER::PROTEIN)
    ("A more complete mRNA and miRNA" . SPARSER::COLLECTION)
    ("imatinib and sunitinib" . SPARSER::COLLECTION)
    ("ANXA8 , FBN1 , GALNTL4 , MFAP5 and RABEP1" . SPARSER::COLLECTION)
    ("SHP-1 and SHP-2" . SPARSER::COLLECTION)
    ("The Csk homologous kinase (CHK) and the Src kinase Lyn"
     . SPARSER::COLLECTION)
    ("The Csk homologous kinase (CHK)" . SPARSER::KINASE)
    ("CHK" . SPARSER::PROTEIN) ("Csk" . SPARSER::PROTEIN)
    ("the adapter protein APS and the ubiquitin E3 ligase Cbl"
     . SPARSER::COLLECTION)
    ("Ras/MAP kinase" . SPARSER::COLLECTION) ("Rac1/JNK" . SPARSER::COLLECTION)
    ("APS" . SPARSER::PROTEIN)
    ("AMP activated protein kinase and mTOR" . SPARSER::COLLECTION)
    ("TCF/β-catenin" . SPARSER::COLLECTION)
    ("transcription factor/lymphoid-enhancer" . SPARSER::COLLECTION)
    ("enhancer" . SPARSER::PROTEIN)
    ("which targets β-catenin" . SPARSER::PROTEIN)
    ("Wisp1 and Wisp2" . SPARSER::COLLECTION) ("WISP" . SPARSER::PROTEIN)
    ("the dominant connective tissue disease Marfan syndrome"
     . SPARSER::PROTEIN)
    ("Farp2, Fbn1, Ncam1 and Thbs1" . SPARSER::COLLECTION)
    ("Thbs1" . SPARSER::PROTEIN) ("deubiquitinase" . SPARSER::DEUBIQUITINASE)
    ("rabaptin" . SPARSER::PROTEIN) ("Anxa 8" . SPARSER::PROTEIN)
    ("heterozygous and hemizygous mutants" . SPARSER::MUTANT)
    ("KIT, HES1 and Mfap5" . SPARSER::COLLECTION)
    ("a poor prognostic biomarker" . SPARSER::MOLECULE)
    ("a microfibril-associated glycoprotein" . SPARSER::PROTEIN)
    ("Mfap5, or Magp2" . SPARSER::COLLECTION) ("Magp2" . SPARSER::PROTEIN)
    ("hetero-" . SPARSER::PROTEIN)
    ("hemizygous or heterozygous mutants" . SPARSER::MUTANT)
    ("homozygous and heterozygous KIT" . SPARSER::PROTEIN)
    ("hemizygous KIT mutants" . SPARSER::MUTANT)
    ("hemizygous human KIT mutants" . SPARSER::MUTANT)
    ("Anxa8 , Fbn1 , Ptx3 , Upp1 , and Usp33" . SPARSER::COLLECTION)
    ("Fbn1" . SPARSER::PROTEIN) ("PDGFRA and KIT" . SPARSER::COLLECTION)
    ("ANXA8, FBN1, GALNTL4, MFAP5 and RABEP1" . SPARSER::COLLECTION)
    ("the heterozygous mutants group" . SPARSER::MOLECULE)
    ("first eliminated unspecific miRNA" . SPARSER::PROTEIN)
    ("heterozygous mutants and WT cells" . SPARSER::COLLECTION)
    ("each hemizygous mutant" . SPARSER::MUTANT)
    ("each contributory mRNA" . SPARSER::PROTEIN) ("Wisp2" . SPARSER::PROTEIN)
    ("Usp33" . SPARSER::PROTEIN) ("Upp1" . SPARSER::PROTEIN)
    ("Riok1" . SPARSER::PROTEIN) ("Rgs16" . SPARSER::PROTEIN)
    ("Ptx3" . SPARSER::PROTEIN) ("Nf1" . SPARSER::PROTEIN)
    ("Ncam1" . SPARSER::PROTEIN) ("Mfap5" . SPARSER::PROTEIN)
    ("Galntl4" . SPARSER::PROTEIN) ("Farp2" . SPARSER::PROTEIN)
    ("Anxa8" . SPARSER::PROTEIN) ("Gpr" . SPARSER::PROTEIN)
    ("Fbn" . SPARSER::PROTEIN) ("D54 hemizygous mutants" . SPARSER::MUTANT)
    ("possible non specific mRNA" . SPARSER::PROTEIN)
    ("MIGR" . SPARSER::PROTEIN) ("SCF−" . SPARSER::PROTEIN)
    ("the most relevant genes" . SPARSER::GENE)
    ("the mutated allele" . SPARSER::ALLELE)
    ("heterozygous KIT" . SPARSER::PROTEIN)
    ("the immature form" . SPARSER::FORM)
    ("stem cell factor (SCF)" . SPARSER::PROTEIN) ("Glivec" . SPARSER::DRUG)
    ("Imatinib" . SPARSER::DRUG)
    ("KIT or platelet-derived growth factor receptor alpha"
     . SPARSER::COLLECTION)
    ("Cajal" . SPARSER::PROTEIN) ("MiRNA and mRNA" . SPARSER::COLLECTION)
    ("ANXA8 and FBN1" . SPARSER::COLLECTION)
    ("hemizygous mutants" . SPARSER::MUTANT)
    ("heterozygous mutants" . SPARSER::MUTANT) ("SHP-2" . SPARSER::PROTEIN)
    ("SHP-1" . SPARSER::PROTEIN) ("Src-like kinase" . SPARSER::PROTEIN)
    ("AMP activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Wisp 1" . SPARSER::PROTEIN) ("Marfan syndrome" . SPARSER::PROTEIN)
    ("fibrillin-1" . SPARSER::PROTEIN) ("USP33" . SPARSER::PROTEIN)
    ("annexin A8" . SPARSER::PROTEIN) ("HES1" . SPARSER::PROTEIN)
    ("Gab1" . SPARSER::PROTEIN) ("miR-29b" . SPARSER::MOLECULE)
    ("Wisp1" . SPARSER::PROTEIN) ("Ulk1" . SPARSER::PROTEIN)
    ("Slit3" . SPARSER::PROTEIN) ("Runx1t1" . SPARSER::PROTEIN)
    ("RABEP1" . SPARSER::PROTEIN) ("MFAP5" . SPARSER::PROTEIN)
    ("GALNTL4" . SPARSER::PROTEIN) ("Rabep1" . SPARSER::PROTEIN)
    ("MYH9" . SPARSER::PROTEIN)
    ("platelet-derived growth factor receptor alpha" . SPARSER::PROTEIN)
    ("RGS16" . SPARSER::PROTEIN) ("FBN1" . SPARSER::PROTEIN)
    ("ANXA8" . SPARSER::PROTEIN) ("pre-" . SPARSER::PROTEIN)
    ("STR (S/L) and rs2046210 (G>A) polymorphisms" . SPARSER::COLLECTION)
    ("RELP" . SPARSER::PROTEIN)
    ("ESR1 gene and the risk" . SPARSER::COLLECTION) ("STR" . SPARSER::PROTEIN)
    ("SHBG" . SPARSER::PROTEIN) ("PGR" . SPARSER::PROTEIN)
    ("Estrogen Receptor" . SPARSER::PROTEIN)
    ("Estrogen Receptor 1" . SPARSER::PROTEIN)
    ("estradiol receptor" . SPARSER::PROTEIN) ("UGT1A1" . SPARSER::PROTEIN)
    ("CYP17A1" . SPARSER::PROTEIN) ("CYP11A1" . SPARSER::PROTEIN)
    ("USF" . SPARSER::PROTEIN) ("FN and onfFN" . SPARSER::COLLECTION)
    ("hyperglycemia and excess hexosamines" . SPARSER::COLLECTION)
    ("hexosamines" . SPARSER::MOLECULE)
    ("TGF-β and onfFN" . SPARSER::COLLECTION)
    ("vimentin and N-cad" . SPARSER::COLLECTION)
    ("FN and TGF-β" . SPARSER::COLLECTION)
    ("the mesenchymal markers N-cadherin ( xref ) and vimentin ( xref )"
     . SPARSER::COLLECTION)
    ("the mesenchymal markers N-cadherin" . SPARSER::PROTEIN)
    ("concequently total FN" . SPARSER::PROTEIN)
    ("FN and ppGalNac-T6" . SPARSER::COLLECTION) ("EP" . SPARSER::PROTEIN)
    ("endo" . SPARSER::PROTEIN) ("HG, or OG" . SPARSER::COLLECTION)
    ("OG" . SPARSER::PROTEIN)
    ("EMT and increases O -glycosylation" . SPARSER::COLLECTION)
    ("Lima" . SPARSER::PROTEIN) ("FDC6-positive FN" . SPARSER::PROTEIN)
    ("FDC" . SPARSER::PROTEIN)
    ("acetylgalactosaminyltransferase" . SPARSER::PROTEIN)
    ("The mature FN molecules" . SPARSER::MOLECULE)
    ("N-cadherin (N-cad) and fibronectin (FN)" . SPARSER::COLLECTION)
    ("E-cadherin, desmoplakin, and cytokeratins" . SPARSER::COLLECTION)
    ("glycolipids" . SPARSER::MOLECULE) ("UDP-GlcNAc" . SPARSER::MOLECULE)
    ("CMP" . SPARSER::CMP) ("ManNAc" . SPARSER::MOLECULE)
    ("GlcNAc" . SPARSER::PROTEIN-FAMILY) ("GFAT" . SPARSER::PROTEIN)
    ("glucosamine" . SPARSER::MOLECULE) ("fructose" . SPARSER::PROTEIN)
    ("kinase and hexosamine" . SPARSER::COLLECTION)
    ("macromolecules" . SPARSER::MOLECULE)
    ("the oncofetal form" . SPARSER::FORM) ("HBP" . SPARSER::PROTEIN)
    ("Glucose" . SPARSER::PROTEIN) ("FN" . SPARSER::PROTEIN)
    ("human oncofetal fibronectin" . SPARSER::PROTEIN)
    ("TGF–β" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("O -glycans" . SPARSER::MOLECULE) ("T-6" . SPARSER::PROTEIN)
    ("Glyceraldehyde 3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("N -acetylglucosaminidase" . SPARSER::PROTEIN) ("1 µL" . SPARSER::PROTEIN)
    ("G Protein" . SPARSER::PROTEIN)
    ("receptor proteins" . SPARSER::RECEPTOR-PROTEIN)
    ("O-GlcNAc" . SPARSER::PROTEIN) ("Neu5Ac" . SPARSER::MOLECULE)
    ("UDP-" . SPARSER::PROTEIN)
    ("fructose-6-phosphate amidotransferase" . SPARSER::PROTEIN)
    ("ubiquitously expressed heterogeneous nuclear ribonucleoproteins"
     . SPARSER::PROTEIN)
    ("the prokaryotic PCR-amplified DNA" . SPARSER::DNA)
    ("topo" . SPARSER::PROTEIN) ("Topo" . SPARSER::PROTEIN)
    ("macronuclear DNA" . SPARSER::DNA) ("Argonaute" . SPARSER::PROTEIN-FAMILY)
    ("polymerase–helicase" . SPARSER::COLLECTION)
    ("Topoisomerase" . SPARSER::PROTEIN) ("micronuclear DNA" . SPARSER::DNA)
    ("a genome-wide mixture" . SPARSER::MOLECULE)
    ("gene and FT-4" . SPARSER::COLLECTION) ("HEF" . SPARSER::PROTEIN)
    ("FT-WWOX and FT-7" . SPARSER::COLLECTION)
    ("at least some part" . SPARSER::COMPONENT) ("HU" . SPARSER::DRUG)
    ("hydroxyurea (HU)" . SPARSER::DRUG)
    ("poly(ADP-ribose) polymerase 1 (PARP1) and heterogeneous nuclear ribonucleoprotein A2/B1 (HNRNPA2B1)"
     . SPARSER::COLLECTION)
    ("end-binding proteins" . SPARSER::PROTEIN)
    ("pGL3-Enhancer" . SPARSER::PROTEIN-PAIR)
    ("Ku70–Ku80" . SPARSER::COLLECTION) ("dC" . SPARSER::MOLECULE)
    ("Streptavidin" . SPARSER::PROTEIN) ("CFS" . SPARSER::PROTEIN)
    ("HOXA , HOXC , and HOXD" . SPARSER::COLLECTION)
    ("HOXA" . SPARSER::PROTEIN) ("HOXB" . SPARSER::PROTEIN)
    ("neighboring transcriptionally active" . SPARSER::ACTIVE)
    ("pGEM" . SPARSER::MOLECULE) ("pGL" . SPARSER::PROTEIN)
    ("a roughly 1 kb DNA fragment" . SPARSER::FRAGMENT)
    ("the approximately 1115 kb WWOX gene" . SPARSER::GENE)
    ("the approximately 1500 kb fragile histidine triad gene" . SPARSER::GENE)
    ("the very large tumor suppressor genes FHIT and WWOX"
     . SPARSER::COLLECTION)
    ("FHIT and WWOX" . SPARSER::COLLECTION)
    ("FRA3B and FRA16D" . SPARSER::COLLECTION) ("WWOX" . SPARSER::PROTEIN)
    ("FHIT" . SPARSER::PROTEIN) ("the ribosomal genes" . SPARSER::GENE)
    ("rDNA" . SPARSER::PROTEIN) ("mRNA-seq" . SPARSER::PROTEIN-PAIR)
    ("the solid agarose" . SPARSER::MOLECULE)
    ("sarcosine, and 1–2" . SPARSER::COLLECTION)
    ("proteinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("sarcosine" . SPARSER::MOLECULE) ("lauryl" . SPARSER::MOLECULE)
    ("the genome-wide mapping" . SPARSER::PROTEIN)
    ("intercalary heterochromatin" . SPARSER::PROTEIN)
    ("HC" . SPARSER::PROTEIN) ("DNA–agarose" . SPARSER::DNA)
    ("chemicals" . SPARSER::MOLECULE)
    ("genome-wide mapping" . SPARSER::PROTEIN)
    ("PARP1 and HNRNPa2B1" . SPARSER::COLLECTION)
    ("HNRNPa2B1" . SPARSER::PROTEIN)
    ("PARP1 and HNRNPA2B1" . SPARSER::COLLECTION)
    ("precise genome-wide mapping" . SPARSER::PROTEIN)
    ("Genome-wide mapping" . SPARSER::PROTEIN)
    ("p5" . SPARSER::HUMAN-PROTEIN-FAMILY) ("–3 µ" . SPARSER::PROTEIN)
    ("DNA polymerase I" . SPARSER::PROTEIN)
    ("heterogeneous nuclear ribonucleoprotein A2/B1" . SPARSER::PROTEIN)
    ("fragile histidine triad" . SPARSER::PROTEIN) ("FRA3B" . SPARSER::PROTEIN)
    ("large tumor suppressor" . SPARSER::PROTEIN) ("chr1" . SPARSER::PROTEIN)
    ("chr13" . SPARSER::PROTEIN) ("HNRNPa2" . SPARSER::PROTEIN)
    ("HNRNPA2B1" . SPARSER::PROTEIN) ("complementing" . SPARSER::PROTEIN)
    ("that E1 or E5" . SPARSER::COLLECTION)
    ("using heterologous promoters" . SPARSER::PROMOTER)
    ("the only HPV protein" . SPARSER::PROTEIN)
    ("ATM and pCHK2" . SPARSER::COLLECTION)
    ("JAK2 or alternatively some upstream regulator" . SPARSER::COLLECTION)
    ("alternatively some upstream regulator" . SPARSER::REGULATOR)
    ("BRCA2 or SMC1" . SPARSER::COLLECTION)
    ("STAT-5α and STAT-5β share extensive homology" . SPARSER::PROTEIN)
    ("growth factors or cytokines" . SPARSER::COLLECTION)
    ("STAT-1 and STAT-5" . SPARSER::COLLECTION)
    ("E7's" . SPARSER::PROTEIN-FAMILY) ("E6 or E7" . SPARSER::COLLECTION)
    ("BRCA-1 and phospho-BRCA-1" . SPARSER::COLLECTION)
    ("BRCA2 and SMC-1" . SPARSER::COLLECTION)
    ("total and phosphorylated forms" . SPARSER::FORM)
    ("p-CHK2" . SPARSER::COLLECTION)
    ("total and phosphorylated CHK2" . SPARSER::PROTEIN)
    ("ATM and CHK2" . SPARSER::COLLECTION)
    ("what role STAT-5" . SPARSER::PROTEIN)
    ("phopsho-STAT-5" . SPARSER::COLLECTION) ("Pimozide" . SPARSER::DRUG)
    ("filaments, and involucrin" . SPARSER::COLLECTION)
    ("involucrin" . SPARSER::PROTEIN)
    ("-negative keratinocytes" . SPARSER::PROTEIN)
    ("cytokines or growth factors" . SPARSER::COLLECTION)
    ("STAT2 or STAT3" . SPARSER::COLLECTION)
    ("STAT-2 or STAT-3" . SPARSER::COLLECTION)
    ("viral replication proteins, E1 and E2" . SPARSER::COLLECTION)
    ("proteins, E1 and E2" . SPARSER::COLLECTION)
    ("the late viral promoter" . SPARSER::PROMOTER)
    ("the cellular E3 ubiquitin ligase E6-associated protein"
     . SPARSER::PROTEIN)
    ("approximately six early genes and two" . SPARSER::COLLECTION)
    ("approximately six early genes" . SPARSER::GENE)
    ("pimozide" . SPARSER::DRUG) ("keratin-10" . SPARSER::PROTEIN)
    ("TIP60" . SPARSER::PROTEIN) ("SMC1" . SPARSER::PROTEIN)
    ("beta isoform" . SPARSER::PROTEIN) ("SOCS1" . SPARSER::PROTEIN)
    ("suppressor of cytokine signaling 1" . SPARSER::PROTEIN)
    ("HX531" . SPARSER::DRUG) ("BRCA-1" . SPARSER::PROTEIN)
    ("SMC-1" . SPARSER::PROTEIN) ("p-ATM" . SPARSER::PROTEIN)
    ("K-10" . SPARSER::PROTEIN) ("keratin 10" . SPARSER::PROTEIN)
    ("STAT2" . SPARSER::PROTEIN) ("STAT-2" . SPARSER::PROTEIN)
    ("capsid proteins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("STAT-5" . SPARSER::PROTEIN) ("STAT-1" . SPARSER::PROTEIN)
    ("further implicating chromatin" . SPARSER::BIO-COMPLEX)
    ("hTERT-Bmi1" . SPARSER::COLLECTION)
    ("Bmi1 and SIRT1" . SPARSER::COLLECTION)
    ("a potential universal cancer target" . SPARSER::TARGET-PROTEIN)
    ("RB and ROCK1" . SPARSER::COLLECTION)
    ("a naturally occurring hTERT" . SPARSER::PROTEIN)
    ("enzymatic-defective hTERT mutants" . SPARSER::MUTANT)
    ("wild type HPV16 E6 as well as an natural mutant E6"
     . SPARSER::COLLECTION)
    ("the various hTERT mutants and HPV oncogenes (  xref  )"
     . SPARSER::COLLECTION)
    ("CIN1 and CIN2" . SPARSER::COLLECTION)
    ("CIN1, and CIN2" . SPARSER::COLLECTION) ("HECs" . SPARSER::PROTEIN)
    ("Bmi1/E7" . SPARSER::COLLECTION) ("E7 or Bmi1" . SPARSER::COLLECTION)
    ("Bmi1 and E7" . SPARSER::COLLECTION)
    ("hTERT and Bmi1" . SPARSER::COLLECTION)
    ("hTERT and E7" . SPARSER::COLLECTION) ("Regulator" . SPARSER::REGULATOR)
    ("PIR" . SPARSER::PROTEIN) ("hTERT and E6" . SPARSER::COLLECTION)
    ("neither wild type hTERT nor mutant" . SPARSER::COLLECTION)
    ("the telomerase-defective hTERT-D868A mutant" . SPARSER::MUTANT)
    ("hTERT-HA/E7" . SPARSER::COLLECTION)
    ("E7 and the hTERT proteins" . SPARSER::COLLECTION)
    ("A telomere association-defective hTERT protein" . SPARSER::PROTEIN)
    ("hTERT/E7" . SPARSER::COLLECTION)
    ("polycomb repressive complex" . SPARSER::BIO-COMPLEX)
    ("Vascular endothelial growth factor (VEGF) and fibroblast growth factor (FGF)"
     . SPARSER::COLLECTION)
    ("p53 and Rb" . SPARSER::COLLECTION) ("E6 or hTERT" . SPARSER::COLLECTION)
    ("E6 and hTERT" . SPARSER::COLLECTION) ("PcG" . SPARSER::PROTEIN-FAMILY)
    ("E6, hTERT and mutant" . SPARSER::COLLECTION)
    ("telomere recruitment-defective hTERT" . SPARSER::PROTEIN)
    ("hTERT-HA" . SPARSER::COLLECTION)
    ("the viral E7 protein" . SPARSER::PROTEIN) ("P16" . SPARSER::PROTEIN)
    ("HBG2" . SPARSER::PROTEIN) ("Tel-1" . SPARSER::PROTEIN)
    ("HBG1" . SPARSER::PROTEIN) ("RB protein" . SPARSER::PROTEIN)
    ("ROCK1" . SPARSER::PROTEIN) ("Rho kinase" . SPARSER::PROTEIN)
    ("CIN2" . SPARSER::PROTEIN) ("CIN1" . SPARSER::PROTEIN)
    ("CIN3" . SPARSER::PROTEIN) ("PD42" . SPARSER::DRUG)
    ("PD 2" . SPARSER::PROTEIN) ("PRC1" . SPARSER::PROTEIN)
    ("Vascular endothelial" . SPARSER::PROTEIN) ("Bmi1" . SPARSER::PROTEIN)
    ("the polyomaviral T antigen" . SPARSER::MOLECULE)
    ("replisome" . SPARSER::BIO-COMPLEX)
    ("broken host chromatin" . SPARSER::BIO-COMPLEX)
    ("only unit length viral DNA" . SPARSER::DNA)
    ("GINS" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Mcm" . SPARSER::PROTEIN)
    ("unperturbed viral replication centers display nascent ssDNA (Sowd, unpublished) and DNA"
     . SPARSER::COLLECTION)
    ("unperturbed viral replication centers display nascent ssDNA"
     . SPARSER::PROTEIN)
    ("the large subnuclear foci" . SPARSER::PROTEIN)
    ("over-sized host DNA damage response foci" . SPARSER::PROTEIN)
    ("ATM ( xref ) and ATR ( xref , xref )" . SPARSER::COLLECTION)
    ("unperturbed replicating viral DNA" . SPARSER::DNA)
    ("ATRi" . SPARSER::MOLECULE) ("viral monomer" . SPARSER::MONOMER)
    ("Nu7441 or Nu7026" . SPARSER::COLLECTION)
    ("Ku-55933 or caffeine" . SPARSER::COLLECTION)
    ("Ku-55933 and ATR" . SPARSER::COLLECTION) ("Caffeine" . SPARSER::MOLECULE)
    ("star" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the unit-mass viral DNA" . SPARSER::DNA) ("arc" . SPARSER::PROTEIN)
    ("yet total viral DNA" . SPARSER::DNA)
    ("viral DNA monomers" . SPARSER::MONOMER)
    ("total viral DNA" . SPARSER::DNA)
    ("the concatemeric SV40 DNA" . SPARSER::DNA) ("Mito" . SPARSER::DRUG)
    ("unit length viral DNA" . SPARSER::DNA)
    ("DMSO or Ku-55933" . SPARSER::COLLECTION)
    ("EdU and γH2AX" . SPARSER::COLLECTION)
    ("EdU, and γH2AX" . SPARSER::COLLECTION)
    ("Nbs1 and Chk2" . SPARSER::COLLECTION)
    ("replicating viral chromatin" . SPARSER::PROTEIN)
    ("its replication-defective variants" . SPARSER::VARIANT)
    ("the CMG host replicative helicase" . SPARSER::PROTEIN)
    ("CMG" . SPARSER::MOLECULE) ("hpi" . SPARSER::PROTEIN)
    ("subnuclear foci" . SPARSER::PROTEIN)
    ("host mitotic checkpoint proteins" . SPARSER::PROTEIN)
    ("prominent subnuclear foci" . SPARSER::PROTEIN)
    ("ATM, ATR, and DNA-PK" . SPARSER::COLLECTION) ("PIKK" . SPARSER::KINASE)
    ("ATM or ATR" . SPARSER::COLLECTION)
    ("study eukaryotic replication proteins" . SPARSER::PROTEIN)
    ("ataxia" . SPARSER::PROTEIN) ("Chk1 and Chk2" . SPARSER::COLLECTION)
    ("TQ" . SPARSER::DRUG)
    ("The DNA damage signaling protein kinases ataxia telangiectasia-mutated (ATM) and ATM- and Rad3-related kinase (ATR)"
     . SPARSER::COLLECTION)
    ("ATM- and Rad3-related kinase (ATR)" . SPARSER::COLLECTION)
    ("kinase (ATR)" . SPARSER::KINASE) ("viral DNA" . SPARSER::DNA)
    ("ATM and ATR" . SPARSER::COLLECTION)
    ("DNA damage checkpoint signaling kinases ataxia telangiectasia-mutated (ATM) or ATM- and Rad3-related (ATR)"
     . SPARSER::COLLECTION)
    ("ataxia telangiectasia-mutated (ATM)" . SPARSER::PROTEIN)
    ("ATM- and Rad3-related" . SPARSER::COLLECTION) ("ATM-" . SPARSER::PROTEIN)
    ("per 2" . SPARSER::PROTEIN) ("PI3Kgamma" . SPARSER::PROTEIN)
    ("T antigen" . SPARSER::MOLECULE) ("Nu7026" . SPARSER::DRUG)
    ("Nu7441" . SPARSER::MOLECULE) ("Ku-55933" . SPARSER::DRUG)
    ("Cdc45" . SPARSER::PROTEIN) ("Bub1" . SPARSER::PROTEIN)
    ("DNA-dependent protein kinase" . SPARSER::PROTEIN)
    ("phosphoinositide-3 kinase" . SPARSER::PROTEIN)
    ("ataxia telangiectasia-mutated" . SPARSER::PROTEIN)
    ("synthesized ribosomal proteins" . SPARSER::PROTEIN)
    ("ribosomal subunits" . SPARSER::PROTEIN)
    ("correct tRNA" . SPARSER::PROTEIN) ("harringtonine" . SPARSER::MOLECULE)
    ("18 S ribosomal RNAs" . SPARSER::RNA)
    ("S6Ks or 4E-BPs" . SPARSER::COLLECTION)
    ("4E-BP1 and 4E-BP2" . SPARSER::COLLECTION)
    ("S6K1 and S6K2" . SPARSER::COLLECTION)
    ("4E-BPs and S6Ks" . SPARSER::COLLECTION)
    ("the resultant Fluc(R218S) mutant" . SPARSER::MUTANT)
    ("a luminogenic substrate" . SPARSER::SUBSTRATE)
    ("RpS6" . SPARSER::PROTEIN) ("RpS" . SPARSER::PROTEIN)
    ("the insoluble fraction" . SPARSER::COMPONENT)
    ("eIF2α" . SPARSER::PROTEIN)
    ("eukaryotic ribosomes" . SPARSER::BIO-COMPLEX)
    ("Ribosome" . SPARSER::BIO-COMPLEX)
    ("the translation initiation factor eIF4B and the elongation regulator eEF2K ( xref , xref )"
     . SPARSER::COLLECTION)
    ("eIF" . SPARSER::PROTEIN)
    ("the eukaryotic initiation factor 4E binding proteins (4E-BPs) and the p70 ribosomal S6 kinases (S6Ks)"
     . SPARSER::COLLECTION)
    ("the p70 ribosomal S6 kinases" . SPARSER::PROTEIN-FAMILY)
    ("BPs" . SPARSER::PROTEIN)
    ("several translational regulators" . SPARSER::REGULATOR)
    ("functional TSC" . SPARSER::PROTEIN) ("TSC" . SPARSER::PROTEIN)
    ("Rheb" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("triphosphatase" . SPARSER::PROTEIN)
    ("mTORC1 (mTOR complex 1) and mTORC2" . SPARSER::COLLECTION)
    ("mTORC1 and protein" . SPARSER::COLLECTION)
    ("ribosomal elongation" . SPARSER::PROTEIN)
    ("polypeptides" . SPARSER::PROTEIN) ("A 15" . SPARSER::PROTEIN)
    ("m 7 G" . SPARSER::MOLECULE) ("eEF2" . SPARSER::PROTEIN)
    ("4E-BP2" . SPARSER::PROTEIN) ("S6K2" . SPARSER::PROTEIN)
    ("eEF2K" . SPARSER::PROTEIN) ("S6Ks" . SPARSER::PROTEIN)
    ("4E-BP" . SPARSER::PROTEIN) ("SMAD1 and SMAD4" . SPARSER::COLLECTION)
    ("SMAD1 and SMAD3" . SPARSER::COLLECTION)
    ("SMAD4, SMAD5, SMAD6 or SMAD7" . SPARSER::COLLECTION)
    ("the mesendoderm marker gata5 and the endoderm marker sox32"
     . SPARSER::COLLECTION)
    ("braf or raf1a" . SPARSER::COLLECTION)
    ("Braf and Raf1a" . SPARSER::COLLECTION)
    ("at least four raf genes" . SPARSER::GENE)
    ("araf , braf , raf1a and raf1b" . SPARSER::COLLECTION)
    ("braf" . SPARSER::PROTEIN) ("Raf1/C-Raf" . SPARSER::COLLECTION)
    ("BMP/Smad1" . SPARSER::COLLECTION) ("Erk/Smad2" . SPARSER::COLLECTION)
    ("Raf/Smad2" . SPARSER::COLLECTION)
    ("araf and wild-type smad2 co-injection" . SPARSER::COLLECTION)
    ("Smad2 and Araf" . SPARSER::COLLECTION)
    ("MEKs/ERKs" . SPARSER::COLLECTION) ("p-Erks" . SPARSER::COLLECTION)
    ("Erks" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("The purified Araf protein or the kinase-dead mutant Araf KD"
     . SPARSER::COLLECTION)
    ("Smad2 or Smad2" . SPARSER::COLLECTION)
    ("MEKs or ERKs" . SPARSER::COLLECTION)
    ("MEKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the MEK inhibitor PD98059 or the ERK inhibitor EIP I"
     . SPARSER::COLLECTION)
    ("GST-Araf" . SPARSER::COLLECTION)
    ("the phospho-mimetic Smad2" . SPARSER::PROTEIN)
    ("the phospho-mimetic Smad2(S253D) mutant" . SPARSER::MUTANT)
    ("Smad2(S200A) (lane 5, xref ) mutants" . SPARSER::MUTANT)
    ("anti-phospho-Smad2" . SPARSER::COLLECTION)
    ("reconstituted fluorescent YFP" . SPARSER::PROTEIN)
    ("YC-Araf" . SPARSER::COLLECTION) ("Araf-Smad2" . SPARSER::COLLECTION)
    ("more phospho-mimetic Smad2(S466/468D) mutant" . SPARSER::MUTANT)
    ("Smad2–Araf" . SPARSER::COLLECTION)
    ("SMAD2 and ARAF" . SPARSER::COLLECTION)
    ("Myc–Smad2" . SPARSER::COLLECTION) ("HA-Araf" . SPARSER::COLLECTION)
    ("Araf and Smad2" . SPARSER::COLLECTION)
    ("-luciferase" . SPARSER::COLLECTION)
    ("ELK1-luciferase" . SPARSER::COLLECTION)
    ("TGF-β/Smad2" . SPARSER::COLLECTION) ("p-Erk1/2" . SPARSER::COLLECTION)
    ("BRE-Luc" . SPARSER::COLLECTION) ("-Luc" . SPARSER::COLLECTION)
    ("BRE" . SPARSER::PROTEIN) ("Bmp" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p-Erk" . SPARSER::COLLECTION) ("Smad1 or Smad2" . SPARSER::COLLECTION)
    ("Mek/Erk" . SPARSER::COLLECTION) ("gata5 and sox32" . SPARSER::COLLECTION)
    ("the ventral marker eve1" . SPARSER::PROTEIN)
    ("the mesendodermal marker gata5" . SPARSER::PROTEIN)
    ("ntl" . SPARSER::PROTEIN) ("hpf" . SPARSER::PROTEIN)
    ("the ventral markers eve1 , gata2 and bmp4" . SPARSER::COLLECTION)
    ("eve1 , gata2 and bmp4" . SPARSER::COLLECTION)
    ("gata2" . SPARSER::PROTEIN) ("chordin" . SPARSER::PROTEIN)
    ("gata5" . SPARSER::PROTEIN) ("araf-MO2" . SPARSER::COLLECTION)
    ("gata" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MEK/ERKs" . SPARSER::COLLECTION)
    ("Smad2-" . SPARSER::PROTEIN) ("Linker" . SPARSER::LINKER)
    ("TGF-β/Nodal" . SPARSER::COLLECTION)
    ("the downstream effectors Smad2 and/or Smad3" . SPARSER::COLLECTION)
    ("Smad4 and the complexes" . SPARSER::COLLECTION)
    ("Ras-regulated kinase" . SPARSER::COLLECTION) ("araf" . SPARSER::PROTEIN)
    ("Nodal/Smad2" . SPARSER::COLLECTION) ("Nodal" . SPARSER::PROTEIN)
    ("Araf" . SPARSER::PROTEIN) ("Ras-Raf-Mek-Erk" . SPARSER::COLLECTION)
    ("FAST2" . SPARSER::PROTEIN) ("SMAD7" . SPARSER::PROTEIN)
    ("SMAD6" . SPARSER::PROTEIN) ("SMAD5" . SPARSER::PROTEIN)
    ("SMAD3" . SPARSER::PROTEIN) ("MH1" . SPARSER::PROTEIN)
    ("raf1b" . SPARSER::PROTEIN) ("C-Raf" . SPARSER::PROTEIN)
    ("smad2" . SPARSER::PROTEIN) ("erk2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("lefty1" . SPARSER::PROTEIN) ("bmp4" . SPARSER::PROTEIN)
    ("eve1" . SPARSER::PROTEIN) ("sox17" . SPARSER::PROTEIN)
    ("snail1" . SPARSER::PROTEIN) ("MO2" . SPARSER::PROTEIN)
    ("SMAD2" . SPARSER::PROTEIN) ("regulated kinase" . SPARSER::PROTEIN)
    ("Nat" . SPARSER::PROTEIN)
    ("neither ELMO1 nor ELMO2" . SPARSER::COLLECTION)
    ("PIP3 and cofilin" . SPARSER::COLLECTION)
    ("ERK/MAPK" . SPARSER::COLLECTION)
    ("receptor or CXCR4" . SPARSER::COLLECTION)
    ("EGF and its receptor" . SPARSER::COLLECTION)
    ("haematoxylin" . SPARSER::MOLECULE)
    ("robust chemotaxis" . SPARSER::PROTEIN)
    ("ELMO1 and/or ELMO2" . SPARSER::COLLECTION)
    ("robust CXCL12-triggered chemotaxis" . SPARSER::PROTEIN)
    ("ELMO1 or ELMO2" . SPARSER::COLLECTION)
    ("Dock180, Gαi2, Rac1 and Rac2" . SPARSER::COLLECTION)
    ("ELMO2-YFP" . SPARSER::COLLECTION)
    ("CXCL12 and EGF" . SPARSER::COLLECTION) ("PDK1/AKT" . SPARSER::COLLECTION)
    ("Gαi2 and ELMO1" . SPARSER::COLLECTION) ("Gαi2" . SPARSER::PROTEIN)
    ("Gαi2-ELMO1" . SPARSER::PROTEIN-PAIR) ("FR" . SPARSER::PROTEIN)
    ("CXCR4 and heterotirmeric G-proteins" . SPARSER::COLLECTION)
    ("heterotirmeric G-proteins" . SPARSER::PROTEIN)
    ("CXCL12 and GTPγS" . SPARSER::COLLECTION)
    ("CXCR4 receptor or heterotrimeric G-proteins" . SPARSER::COLLECTION)
    ("ELMO1 and Dock180" . SPARSER::COLLECTION)
    ("pulldowns" . SPARSER::PROTEIN)
    ("heterotrimeric G-proteins" . SPARSER::PROTEIN)
    ("Dock180 and ELMO1" . SPARSER::COLLECTION)
    ("Dock180 and Gαi2" . SPARSER::COLLECTION)
    ("ELMO1-YFP" . SPARSER::COLLECTION)
    ("epidermal growth factor (EGF) and its receptor (a tyrosine kinase receptor; Supplementary Fig. S1B,C)"
     . SPARSER::COLLECTION)
    ("receptor-" . SPARSER::RECEPTOR) ("GPCR-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Chemokine" . SPARSER::PROTEIN)
    ("further inhibited chemotaxis" . SPARSER::PROTEIN)
    ("toxin (PTX)" . SPARSER::MOLECULE)
    ("ELMO1 and ELMO2" . SPARSER::COLLECTION)
    ("GPCR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ELMO/Dock180" . SPARSER::COLLECTION) ("new actin" . SPARSER::PROTEIN)
    ("the heterotrimeric G-proteins, Gαi and Gβγ" . SPARSER::COLLECTION)
    ("G-proteins, Gαi and Gβγ" . SPARSER::COLLECTION)
    ("chemokines and their receptors" . SPARSER::COLLECTION)
    ("Chemokines" . SPARSER::PROTEIN) ("ELMO1/Dock180" . SPARSER::COLLECTION)
    ("Rac1 and Rac2" . SPARSER::COLLECTION)
    ("heterotrimeric Gi proteins" . SPARSER::PROTEIN)
    ("anti-Phospho" . SPARSER::PROTEIN) ("ELMO3" . SPARSER::PROTEIN)
    ("GTPγS" . SPARSER::PROTEIN) ("protein expressed in" . SPARSER::PROTEIN)
    ("Bcap-37" . SPARSER::PROTEIN) ("ELMO2" . SPARSER::PROTEIN)
    ("Arp2/3" . SPARSER::PROTEIN) ("small G-protein" . SPARSER::PROTEIN)
    ("Rac2" . SPARSER::PROTEIN) ("G-proteins" . SPARSER::PROTEIN)
    ("Dock180" . SPARSER::PROTEIN)
    ("G-protein-coupled receptor" . SPARSER::PROTEIN)
    ("transcription factor or complex" . SPARSER::COLLECTION)
    ("ATF3–androgen receptor" . SPARSER::COLLECTION) ("HSD" . SPARSER::PROTEIN)
    ("dehydrogenase ( GAPDH )" . SPARSER::PROTEIN)
    ("-GGCAATGCCAGCCCCAGCGT-3" . SPARSER::COLLECTION)
    ("-CTGTGGGCAAGGTCATCCC-3" . SPARSER::COLLECTION)
    ("-CGGCCTTGGGGTCCATGTTC-3" . SPARSER::COLLECTION)
    ("-CTTCGTTGCCCTCTGTGCC-3" . SPARSER::COLLECTION)
    ("any residual genomic DNA" . SPARSER::DNA) ("HPO" . SPARSER::PROTEIN)
    ("-NTA" . SPARSER::MOLECULE) ("Soluble protein" . SPARSER::PROTEIN)
    ("Renilla" . SPARSER::PROTEIN) ("Reagent" . SPARSER::MOLECULE)
    ("GIBCO" . SPARSER::MOLECULE) ("CGTCACGGTACCACGA-3" . SPARSER::COLLECTION)
    ("CAGTGACGTCAGTGACGTCAGTGACGTCAGCGATCTAAGTAAGCTTGGCA-3"
     . SPARSER::COLLECTION)
    ("-GCCAAGCTTCCCCGCTGCAGCCTTTC-3" . SPARSER::COLLECTION)
    ("-ACGAGGTACCTAAAAAAAATGAGTCAG-3" . SPARSER::COLLECTION)
    ("Hin" . SPARSER::PROTEIN-FAMILY) ("Hai" . SPARSER::PROTEIN)
    ("pBP-ATF3" . SPARSER::COLLECTION) ("pBP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NTA" . SPARSER::MOLECULE) ("SUMO1 and SUMO3" . SPARSER::COLLECTION)
    ("All cell culture reagents and protein A-agarose" . SPARSER::COLLECTION)
    ("recombinant pcDNA3-WT ATF3 and pcDNA3-K42R ATF3" . SPARSER::PROTEIN)
    ("ATF3 and pcDNA3-K42R" . SPARSER::COLLECTION)
    ("WT ATF3 or K42R ATF3" . SPARSER::COLLECTION)
    ("mRNA and proteins" . SPARSER::COLLECTION) ("ZIP" . SPARSER::PROTEIN)
    ("pulldown" . SPARSER::PROTEIN)
    ("HIS-FLAG-tagged WT ATF3" . SPARSER::PROTEIN)
    ("HIS" . SPARSER::AMINO-ACID)
    ("a slowly migrating ATF3-immunoreactive band around 37 kDa"
     . SPARSER::PROTEIN)
    ("SUMOs" . SPARSER::PROTEIN) ("E6, p53, and smad3" . SPARSER::COLLECTION)
    ("EGR1 , SNAI1/2 , TP53 , and TWIST1" . SPARSER::COLLECTION)
    ("-TGACGTCA-3" . SPARSER::COLLECTION) ("ATF/cAMP" . SPARSER::COLLECTION)
    ("the basic leucine zipper (bZIP) protein family"
     . SPARSER::PROTEIN-FAMILY)
    ("androgen receptors and their associated cofactors" . SPARSER::COLLECTION)
    ("their associated cofactors" . SPARSER::PROTEIN)
    ("the androgen receptors as well as androgen-responsive genes"
     . SPARSER::COLLECTION)
    ("H 2 PO" . SPARSER::MOLECULE) ("H2PO" . SPARSER::MOLECULE)
    ("Cyclin D2" . SPARSER::PROTEIN) ("smad3" . SPARSER::PROTEIN)
    ("GADD153" . SPARSER::PROTEIN) ("DDIT3" . SPARSER::PROTEIN)
    ("ATF3" . SPARSER::PROTEIN) ("ATM/AKT" . SPARSER::COLLECTION)
    ("IL-8 and GROα" . SPARSER::COLLECTION)
    ("AKT and p38 MAPK" . SPARSER::COLLECTION)
    ("Chk2 and AKT" . SPARSER::COLLECTION)
    ("p53 and p16 INK4a" . SPARSER::COLLECTION)
    ("p53 or p16 INK4a" . SPARSER::COLLECTION) ("p21-" . SPARSER::PROTEIN)
    ("oligonucleotides, and siRNA" . SPARSER::COLLECTION)
    ("U0126 and wortmannin" . SPARSER::COLLECTION)
    ("IL-6R/STAT3" . SPARSER::COLLECTION)
    ("wortmannin and U0126" . SPARSER::COLLECTION)
    ("AKT and ERK1/2" . SPARSER::COLLECTION) ("PLC/PKC" . SPARSER::COLLECTION)
    ("SASPs and non-irradiated" . SPARSER::COLLECTION)
    ("using siRNA or a dominant-negative mutant (DN; xref left, and xref )"
     . SPARSER::COLLECTION)
    ("a dominant-negative mutant" . SPARSER::MUTANT)
    ("siRNA or a dominant-negative mutant (DN)" . SPARSER::COLLECTION)
    ("a dominant-negative mutant (DN)" . SPARSER::MUTANT)
    ("a multifunctional cytokine" . SPARSER::PROTEIN)
    ("caffeine, wortmannin, SB203580 and SB202190" . SPARSER::COLLECTION)
    ("the radiation-induced SASPs" . SPARSER::PROTEIN)
    ("Radiation-induced SASPs" . SPARSER::PROTEIN)
    ("wortmannin and LY294002" . SPARSER::COLLECTION)
    ("SB202190 and SB203580" . SPARSER::COLLECTION)
    ("MEK/ERK1/2" . SPARSER::COLLECTION) ("wortmannin" . SPARSER::PROTEIN)
    ("-p38" . SPARSER::COLLECTION) ("-ERK1/2" . SPARSER::COLLECTION)
    ("AKT, ERK1/2, and p38 MAPK" . SPARSER::COLLECTION)
    ("RB-" . SPARSER::PROTEIN)
    ("Senescence-associated β-galactosidase" . SPARSER::PROTEIN)
    ("pRB" . SPARSER::PROTEIN) ("ATM and p38" . SPARSER::COLLECTION)
    ("PDGF-BB/PDGFR" . SPARSER::COLLECTION)
    ("metalloproteinases and nitric oxide" . SPARSER::COLLECTION)
    ("/pRb" . SPARSER::COLLECTION) ("p53/p21" . SPARSER::COLLECTION)
    ("several chemotherapeutic drugs" . SPARSER::DRUG)
    ("SASP" . SPARSER::PROTEIN) ("STAT3-" . SPARSER::PROTEIN)
    ("/PDGF receptor" . SPARSER::COLLECTION)
    ("SASPs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Cytokine" . SPARSER::PROTEIN)
    ("ATM/Chk2" . SPARSER::COLLECTION) ("securin" . SPARSER::PROTEIN)
    ("Securin" . SPARSER::PROTEIN) ("ddH2" . SPARSER::PROTEIN)
    ("p21 Cip1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MIP-3" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 3" . SPARSER::PROTEIN)
    ("GROα" . SPARSER::PROTEIN) ("SB202190" . SPARSER::DRUG)
    ("β-gal" . SPARSER::PROTEIN) ("PTTG1" . SPARSER::PROTEIN)
    ("gene 1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MIP-1α" . SPARSER::PROTEIN)
    ("MCP-2" . SPARSER::PROTEIN) ("IL-1α" . SPARSER::PROTEIN)
    ("PDGF receptor" . SPARSER::PROTEIN)
    ("platelet-derived growth factor-BB" . SPARSER::PROTEIN)
    ("ddC and EtBr" . SPARSER::COLLECTION)
    ("ddC or EtBr" . SPARSER::COLLECTION) ("EtBr/Rec" . SPARSER::COLLECTION)
    ("ddC/Rec" . SPARSER::COLLECTION) ("Rec" . SPARSER::PROTEIN)
    ("ddC or ethidium" . SPARSER::COLLECTION) ("EtBr" . SPARSER::PROTEIN)
    ("pol" . SPARSER::PROTEIN)
    ("a stress-activated chaperone" . SPARSER::PROTEIN)
    ("mitochondrial Rad51" . SPARSER::PROTEIN)
    ("glucose oxidase (GO)" . SPARSER::PROTEIN)
    ("mitochondrial p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mitochondrially-localized Rad51" . SPARSER::PROTEIN)
    ("the nuclear marker PCNA and the cytosolic marker GAPDH ( xref )"
     . SPARSER::COLLECTION)
    ("TFAM and ATP synthase" . SPARSER::COLLECTION) ("ddC" . SPARSER::PROTEIN)
    ("a classic substrate" . SPARSER::SUBSTRATE)
    ("ATP synthase" . SPARSER::PROTEIN) ("glucose oxidase" . SPARSER::PROTEIN)
    ("recombinase activity" . SPARSER::PROTEIN) ("U20" . SPARSER::PROTEIN)
    ("a possible new therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("the cancer-associated fibroblast marker fibroblast-activation protein"
     . SPARSER::PROTEIN)
    ("VEGFA" . SPARSER::PROTEIN)
    ("growth factors and proteases" . SPARSER::COLLECTION)
    ("MICA" . SPARSER::PROTEIN) ("CD3, CD16 and CD68" . SPARSER::COLLECTION)
    ("the rectal cancer group" . SPARSER::MOLECULE)
    ("Bcl2, p53, MHC-II, CD3, CD68 or CD16" . SPARSER::COLLECTION)
    ("Bcl2, p53, CD3 or CD16" . SPARSER::COLLECTION)
    ("Bcl2 or p53" . SPARSER::COLLECTION) ("CD16-" . SPARSER::PROTEIN)
    ("CD68-" . SPARSER::PROTEIN) ("PARP or MHC-II" . SPARSER::COLLECTION)
    ("Bcl2 and p53" . SPARSER::COLLECTION)
    ("CD3, CD68 and CD16" . SPARSER::COLLECTION)
    ("Bcl2, p53, CD3, CD68, CD16 and MHC-II" . SPARSER::COLLECTION)
    ("the original cohort" . SPARSER::MOLECULE)
    ("DSS and TNM" . SPARSER::COLLECTION)
    ("HIF1 α and NF- κ B" . SPARSER::COLLECTION)
    ("PARP and MHC-II" . SPARSER::COLLECTION)
    ("CD16, CD68, CD3, p53 or Bcl2" . SPARSER::COLLECTION)
    ("using monoclonal antibodies" . SPARSER::ANTIBODY)
    ("stress-related protein" . SPARSER::PROTEIN)
    ("Procaspase 3" . SPARSER::PROTEIN) ("interferon-gamma" . SPARSER::PROTEIN)
    ("HIF1 α" . SPARSER::PROTEIN) ("anti-oxidant" . SPARSER::DRUG)
    ("IFN- γ" . SPARSER::PROTEIN) ("CD68" . SPARSER::PROTEIN)
    ("CD16" . SPARSER::PROTEIN) ("YL, PW and RZ" . SPARSER::COLLECTION)
    ("RZ" . SPARSER::PROTEIN) ("PW" . SPARSER::MOLECULE)
    ("the invasive TET" . SPARSER::PROTEIN) ("para" . SPARSER::PROTEIN-FAMILY)
    ("STATS" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Types and stages" . SPARSER::COLLECTION) ("TETs" . SPARSER::PROTEIN)
    ("TET and STAT3" . SPARSER::COLLECTION)
    ("JAKs/STATs" . SPARSER::COLLECTION) ("STATs" . SPARSER::PROTEIN)
    ("HR " . SPARSER::PROTEIN) ("type B" . SPARSER::PROTEIN)
    ("Tam" . SPARSER::PROTEIN) ("ARMS and HRM" . SPARSER::COLLECTION)
    ("the melting or dissociation behaviour" . SPARSER::COLLECTION)
    ("inhibitors (TKI)" . SPARSER::INHIBITOR) ("melt" . SPARSER::DRUG)
    ("a 20 " . SPARSER::PROTEIN) ("anti- EGFR" . SPARSER::PROTEIN)
    ("exogenous GFP-ATF2" . SPARSER::COLLECTION)
    ("alternate cellular target" . SPARSER::TARGET-PROTEIN)
    ("PKCε-ATF2" . SPARSER::COLLECTION)
    ("PKCε or a phosphomimic ATF2 mutant" . SPARSER::COLLECTION)
    ("a phosphomimic ATF2 mutant" . SPARSER::MUTANT)
    ("VDAC1 and HK1" . SPARSER::COLLECTION) ("HK1" . SPARSER::PROTEIN)
    ("otherwise activated oncogenes" . SPARSER::ONCOGENE)
    ("either DMSO or 10 μM SBI-0087702" . SPARSER::COLLECTION)
    ("response element (HSRE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("Jun2-luciferase" . SPARSER::PROTEIN-PAIR)
    ("PKCε and other PKC isoforms" . SPARSER::COLLECTION)
    ("JNK/p38" . SPARSER::COLLECTION) ("DMSO-" . SPARSER::MOLECULE)
    ("CCCP" . SPARSER::MOLECULE) ("ATF" . SPARSER::PROTEIN)
    ("Stat3 and β-catenin" . SPARSER::COLLECTION) ("benzamide" . SPARSER::DRUG)
    ("mutantN-Ras/Ink4a" . SPARSER::COLLECTION)
    ("kinase or p38" . SPARSER::COLLECTION)
    ("B-Raf and MEK" . SPARSER::COLLECTION)
    ("B-Raf, PI3K, and MEK" . SPARSER::COLLECTION)
    ("either constitutively active PKCε or phosphomimic mutant ATF2 T52E"
     . SPARSER::COLLECTION)
    ("phosphomimic mutant ATF2 T52E" . SPARSER::PROTEIN)
    ("PKCε and ATF2" . SPARSER::COLLECTION) ("GFP-ATF2" . SPARSER::COLLECTION)
    ("voltage-dependent" . SPARSER::PROTEIN) ("HSP60" . SPARSER::PROTEIN)
    ("pErk1/2" . SPARSER::PROTEIN) ("pP38" . SPARSER::PROTEIN)
    ("P38" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Cox IV" . SPARSER::PROTEIN)
    ("Stat3" . SPARSER::PROTEIN) ("Dimethyl sulfoxide" . SPARSER::MOLECULE)
    ("basic helix-loop-helix" . SPARSER::PROTEIN) ("B-Raf" . SPARSER::PROTEIN)
    ("PTEN and ΔNp63α-mediated" . SPARSER::COLLECTION)
    ("PTEN and ΔNp63α" . SPARSER::COLLECTION)
    ("CREB" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NEDD4-1 and ΔNp63α" . SPARSER::COLLECTION)
    ("a NEDD4-1 specific antibody or control IgG" . SPARSER::COLLECTION)
    ("ΔNp63α and NEDD4-1" . SPARSER::COLLECTION)
    ("ΔNp63α or NEDD4-1" . SPARSER::COLLECTION)
    ("ΔNp63α and Nedd4-1" . SPARSER::COLLECTION)
    ("NEDD4-1 and PTEN" . SPARSER::COLLECTION)
    ("exogenous PTEN" . SPARSER::PROTEIN) ("HA-Ub" . SPARSER::COLLECTION)
    ("ΔNp63α and PTEN" . SPARSER::COLLECTION) ("Nedd4" . SPARSER::PROTEIN)
    ("Nedd4-1" . SPARSER::PROTEIN) ("4-1" . SPARSER::PROTEIN)
    ("NEDD4-1" . SPARSER::PROTEIN) ("NEDD4" . SPARSER::PROTEIN)
    ("ligand (TRAIL)" . SPARSER::MOLECULE)
    ("proteins, c-Cbl and Cbl-b" . SPARSER::COLLECTION)
    ("EGFR, ERK, and Akt" . SPARSER::COLLECTION)
    ("Ras/Raf/MEK/ERK (MAPK)" . SPARSER::COLLECTION)
    ("EGFR-TKs" . SPARSER::COLLECTION) ("PI3K/PTEN/Akt" . SPARSER::COLLECTION)
    ("Ras/Raf/MEK/ERK" . SPARSER::COLLECTION) ("TKs" . SPARSER::PROTEIN)
    ("The classical caspase substrate PARP" . SPARSER::PROTEIN)
    ("a potent small-molecular inhibitor" . SPARSER::INHIBITOR)
    ("cyclin D1 and cyclin" . SPARSER::COLLECTION)
    ("EGFR, Akt, and ERK" . SPARSER::COLLECTION)
    ("negative regulators of nonreceptor TK and some activated signaling pathways [ xref ]"
     . SPARSER::COLLECTION)
    ("EGFR-TK" . SPARSER::COLLECTION) ("quinazoline" . SPARSER::MOLECULE)
    ("/extracellular signal-regulated kinase (ERK)" . SPARSER::COLLECTION)
    ("Shc, and phospholipase C" . SPARSER::COLLECTION)
    ("EGFR, Akt, and extracellular signal-regulated kinase"
     . SPARSER::COLLECTION)
    ("caspase-3, -8, and poly(ADP-ribose) polymerase (PARP)"
     . SPARSER::COLLECTION)
    ("polymerase (PARP)" . SPARSER::PROTEIN)
    ("cyclin D1 and cyclin A2" . SPARSER::COLLECTION)
    ("icotinib" . SPARSER::DRUG) ("Icotinib" . SPARSER::DRUG)
    ("interferon- α" . SPARSER::DRUG) ("anti-phospho" . SPARSER::PROTEIN)
    ("Anti-EGFR" . SPARSER::PROTEIN) ("ErbB-1" . SPARSER::PROTEIN)
    ("cyclin A2" . SPARSER::PROTEIN)
    ("the appropriate horseradish peroxidase-conjugated secondary antibodies"
     . SPARSER::ANTIBODY)
    ("Immobilon" . SPARSER::DRUG) ("ice-cold PBS" . SPARSER::PROTEIN)
    ("Triton" . SPARSER::MOLECULE)
    ("-AATTCTCCGAACGTGTCACGT-3" . SPARSER::COLLECTION)
    ("Ctrl" . SPARSER::PROTEIN)
    ("-GUGCUCUGCUUAUGAUAAUTT-3" . SPARSER::COLLECTION)
    ("Aldrich" . SPARSER::PROTEIN) ("Anti-p-Akt" . SPARSER::COLLECTION)
    ("Anti-phospho-ERK, anti-ERK, antitubulin, and anti-Cbl-b"
     . SPARSER::COLLECTION)
    ("Anti-phospho-ERK" . SPARSER::PROTEIN-PAIR)
    ("AKT/I κ B" . SPARSER::COLLECTION) ("PI3-K/AKT" . SPARSER::COLLECTION)
    ("JAK1 and JAK3" . SPARSER::COLLECTION)
    ("STAT3 and STAT5" . SPARSER::COLLECTION) ("-ERK" . SPARSER::COLLECTION)
    ("loose nuclear chromatin" . SPARSER::BIO-COMPLEX)
    ("ERK and JNK" . SPARSER::COLLECTION)
    ("anti-CD3/CD28" . SPARSER::COLLECTION)
    ("ERK, JNK, and p38 MAPK" . SPARSER::COLLECTION)
    ("c-Cbl, Cbl-b, and Cbl-3" . SPARSER::COLLECTION)
    ("JAK3 and JAK1" . SPARSER::COLLECTION) ("interleukin-" . SPARSER::PROTEIN)
    ("ERK, or Akt" . SPARSER::COLLECTION)
    ("Akt, and ubiquitin ligase" . SPARSER::COLLECTION)
    ("Cbl-b and c-Cbl" . SPARSER::COLLECTION) ("IL-" . SPARSER::PROTEIN)
    ("Interleukin-" . SPARSER::PROTEIN) ("Interleukin" . SPARSER::PROTEIN)
    ("phenylmethanesulfonyl fluoride" . SPARSER::MOLECULE)
    ("18 h" . SPARSER::PROTEIN) ("PS-341" . SPARSER::DRUG)
    ("IFN- α" . SPARSER::PROTEIN) ("activator protein-1" . SPARSER::PROTEIN)
    ("I κ B" . SPARSER::PROTEIN) ("interleukin-1 β" . SPARSER::PROTEIN)
    ("PS341" . SPARSER::DRUG) ("CD152" . SPARSER::PROTEIN)
    ("CTLA-4" . SPARSER::PROTEIN) ("Cbl-3" . SPARSER::PROTEIN)
    ("T-cell receptor" . SPARSER::PROTEIN) ("JAK3" . SPARSER::PROTEIN)
    ("CD132" . SPARSER::PROTEIN) ("CD122" . SPARSER::PROTEIN)
    ("IL-15" . SPARSER::PROTEIN) ("IL-2R" . SPARSER::PROTEIN)
    ("IL-2 receptor" . SPARSER::PROTEIN)
    ("T-cell growth factor" . SPARSER::PROTEIN) ("Cbl-b" . SPARSER::PROTEIN)
    ("PIN3, rs800372, rs7880172, rs12947788, and rs12951053"
     . SPARSER::COLLECTION)
    ("PIN3 and polymorphisms" . SPARSER::COLLECTION)
    ("Good biomarkers" . SPARSER::MOLECULE) ("Bq " . SPARSER::PROTEIN)
    ("rocks" . SPARSER::PROTEIN-FAMILY)
    ("an example of a physical genotoxic agent that may induce direct (via energy absorption) or indirect (via high production of reactive free radicals) damage"
     . SPARSER::COLLECTION)
    ("genotoxic chemical" . SPARSER::MOLECULE)
    ("4, 5, 6, 7, and 8 of the TP53 gene and adjacent introns"
     . SPARSER::COLLECTION)
    ("1 A" . SPARSER::PROTEIN) ("a 20 " . SPARSER::PROTEIN)
    ("PIN3" . SPARSER::PROTEIN) ("normal astrocytes" . SPARSER::PROTEIN)
    ("Ras and Rac1" . SPARSER::COLLECTION)
    ("ACTB, Rac1, V4UPM-HN, and Ras" . SPARSER::COLLECTION)
    ("beta-actin (ACTB)" . SPARSER::PROTEIN)
    ("the treated EGAS group" . SPARSER::MOLECULE)
    ("infective F protein" . SPARSER::PROTEIN) ("furin" . SPARSER::PROTEIN)
    ("carbogen" . SPARSER::DRUG) ("the monomeric G-protein" . SPARSER::PROTEIN)
    ("PI3K/Rac1" . SPARSER::COLLECTION) ("Example" . SPARSER::EXAMPLE)
    ("ERK-MAPK" . SPARSER::PROTEIN-PAIR) ("PV" . SPARSER::PROTEIN)
    ("6 viral proteins" . SPARSER::PROTEIN) ("N- Ras" . SPARSER::PROTEIN)
    ("precursor protein" . SPARSER::PROTEIN) ("D-Glucose" . SPARSER::MOLECULE)
    ("CO 3" . SPARSER::PROTEIN) ("G-protein" . SPARSER::PROTEIN)
    ("NF-kB, AP-1, and IRF-3" . SPARSER::COLLECTION)
    ("TRIF" . SPARSER::PROTEIN) ("APCs" . SPARSER::PROTEIN)
    ("TLR" . SPARSER::PROTEIN-FAMILY)
    ("NF-κB and MAPK and PI3K" . SPARSER::COLLECTION)
    ("MAPK and PI3K" . SPARSER::COLLECTION)
    ("anti-β-actin" . SPARSER::COLLECTION)
    ("only one fragment" . SPARSER::FRAGMENT) ("pRL-TK" . SPARSER::COLLECTION)
    ("pRL" . SPARSER::PROTEIN)
    ("negative control siRNA (NC) or p65 siRNA" . SPARSER::COLLECTION)
    ("siRNA (NC)" . SPARSER::PROTEIN) ("p65 and IκB" . SPARSER::COLLECTION)
    ("p65/p50" . SPARSER::COLLECTION)
    ("NF-κB, AP-1 and IRF3" . SPARSER::COLLECTION)
    ("LPS-TLR4" . SPARSER::COLLECTION) ("IRF-3" . SPARSER::PROTEIN)
    ("MyD88" . SPARSER::PROTEIN) ("Polymerase II" . SPARSER::PROTEIN)
    ("GT-AG" . SPARSER::PROTEIN) ("IRF3" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 1" . SPARSER::PROTEIN)
    ("IκB-α" . SPARSER::PROTEIN) ("BAY 11-7082" . SPARSER::DRUG)
    ("Toll-like receptor 4" . SPARSER::PROTEIN) ("TLR4" . SPARSER::PROTEIN)
    ("interleukin-10" . SPARSER::PROTEIN)
    ("tumor necrosis factor-alpha" . SPARSER::PROTEIN)
    ("CD274" . SPARSER::PROTEIN) ("PALB2-BRCA1/2" . SPARSER::PROTEIN-PAIR)
    ("camptothecin and ICRF-193" . SPARSER::COLLECTION)
    ("Brca1 , Brca2 and Rad51" . SPARSER::COLLECTION)
    ("Brca2" . SPARSER::PROTEIN) ("whose mRNA" . SPARSER::PROTEIN)
    ("intronic Alu" . SPARSER::PROTEIN)
    ("the BRCA and related genes" . SPARSER::COLLECTION)
    ("BRCA2 or PALB2" . SPARSER::COLLECTION)
    ("an important regulator of HR as well as general DSBR pathway choice"
     . SPARSER::COLLECTION)
    ("PALB2 and BARD1" . SPARSER::COLLECTION) ("uridine" . SPARSER::PROTEIN)
    ("BRCA1 , BRCA2 , RAD51 and BRIP1" . SPARSER::COLLECTION)
    ("BRCA1 , BRCA2 , PALB2 , RAD51 , BARD1 and BRIP1" . SPARSER::COLLECTION)
    ("above-noted key HR regulators" . SPARSER::REGULATOR)
    ("essential DNA replication factors MCM10, CDC45 and CDC6"
     . SPARSER::COLLECTION)
    ("DNAPK and 53BP1" . SPARSER::COLLECTION)
    ("MCM10, CDC45 and CDC6" . SPARSER::COLLECTION)
    ("DNAPK" . SPARSER::PROTEIN)
    ("PALB2, RAP80, CtIP and NBS1" . SPARSER::COLLECTION)
    ("BARD1 and perhaps" . SPARSER::COLLECTION)
    ("BRCA1 and RAD51" . SPARSER::COLLECTION)
    ("key HR and repair genes" . SPARSER::COLLECTION)
    ("key HR" . SPARSER::PROTEIN)
    ("all visible hnRNP C foci" . SPARSER::PROTEIN)
    ("ssDNA" . SPARSER::PROTEIN)
    ("bright and often clustered hnRNP C foci" . SPARSER::COLLECTION)
    ("at least several distinct foci" . SPARSER::PROTEIN)
    ("somewhat more foci" . SPARSER::PROTEIN)
    ("distinct foci" . SPARSER::PROTEIN) ("HR and SSA" . SPARSER::COLLECTION)
    ("IF" . SPARSER::PROTEIN) ("PALB2 and BRCA" . SPARSER::COLLECTION)
    ("bromo" . SPARSER::MOLECULE) ("PALB2 and BRCA1/2" . SPARSER::COLLECTION)
    ("PALB2 and hnRNP" . SPARSER::COLLECTION)
    ("DNase I or RNase A" . SPARSER::COLLECTION) ("DNA-" . SPARSER::DNA)
    ("PALB2 or hnRNP" . SPARSER::COLLECTION)
    ("PALB2/BRCA" . SPARSER::COLLECTION) ("DNA or RNA" . SPARSER::COLLECTION)
    ("PALB2 or its above-noted partner proteins" . SPARSER::COLLECTION)
    ("its above-noted partner proteins" . SPARSER::PROTEIN)
    ("hydroxyurea (HU) and mitomycin C (MMC)" . SPARSER::COLLECTION)
    ("MMC" . SPARSER::PROTEIN)
    ("BRCA1, BRCA2, RAD51 and MRG15" . SPARSER::COLLECTION)
    ("the soluble form" . SPARSER::FORM)
    ("insoluble chromatin" . SPARSER::PROTEIN)
    ("soluble components" . SPARSER::COMPONENT)
    ("salt and detergent" . SPARSER::COLLECTION)
    ("detergent" . SPARSER::MOLECULE)
    ("micrococcal nuclease (MNase)-solubilized nuclear fractions"
     . SPARSER::COMPONENT)
    ("FLAG-HA-double tagged PALB2" . SPARSER::PROTEIN)
    ("PALB2 and its chromatin-bound partner proteins" . SPARSER::COLLECTION)
    ("PALB2 and BRCA2" . SPARSER::COLLECTION)
    ("BRCA1 and MRG15" . SPARSER::COLLECTION)
    ("chromatin and DSBs" . SPARSER::COLLECTION)
    ("RAD51-ssDNA" . SPARSER::PROTEIN-PAIR)
    ("PALB2/BRCA2" . SPARSER::COLLECTION)
    ("filament" . SPARSER::PROTEIN-FAMILY) ("U2AF65" . SPARSER::PROTEIN)
    ("uridines" . SPARSER::DRUG)
    ("BRCA1, BRCA2, RAD51 and BRIP1" . SPARSER::COLLECTION)
    ("IR" . SPARSER::PROTEIN) ("PALB2, BRCA2 and BRCA1" . SPARSER::COLLECTION)
    ("BRCA1, BRCA2 and PALB2" . SPARSER::COLLECTION)
    ("complex and play" . SPARSER::COLLECTION) ("BACH1" . SPARSER::PROTEIN)
    ("RPLP0" . SPARSER::PROTEIN) ("α-Tubulin" . SPARSER::PROTEIN)
    ("ICRF-193" . SPARSER::DRUG) ("Brca1" . SPARSER::PROTEIN)
    ("BRCA2 protein" . SPARSER::PROTEIN) ("MCM10" . SPARSER::PROTEIN)
    ("RAP80" . SPARSER::PROTEIN) ("BARD1" . SPARSER::PROTEIN)
    ("MRG15" . SPARSER::PROTEIN) ("U2AF" . SPARSER::BIO-COMPLEX)
    ("hnRNP A1" . SPARSER::PROTEIN) ("pre-mRNAs" . SPARSER::RNA)
    ("Heterogeneous nuclear ribonucleoprotein" . SPARSER::PROTEIN)
    ("abiraterone acetate and MDV3100" . SPARSER::COLLECTION)
    ("abiraterone acetate, and MDV3100" . SPARSER::COLLECTION)
    ("cabazitaxel" . SPARSER::DRUG) ("Mcl-1 and Bcl-X" . SPARSER::COLLECTION)
    ("defective p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("miR-125b directly targets p53, Puma and Bak1" . SPARSER::COLLECTION)
    ("p14 ARF and Bak1" . SPARSER::COLLECTION)
    ("/p14 ARF" . SPARSER::COLLECTION)
    ("p53 (30%) and Bak1 (70%)" . SPARSER::COLLECTION)
    ("p14 ARF (60%), p53 (30%) and Bak1 (70%)" . SPARSER::COLLECTION)
    ("followed byp14 ARF" . SPARSER::PROTEIN)
    ("mitochondrial SMAC" . SPARSER::PROTEIN)
    ("p14 ARF and Mdm2" . SPARSER::COLLECTION)
    ("sip" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("effectors, p21 and Puma" . SPARSER::COLLECTION)
    ("Mdm2 and p53" . SPARSER::COLLECTION) ("-p14 ARF" . SPARSER::COLLECTION)
    ("anti-miR-NC" . SPARSER::COLLECTION) ("miR-NC" . SPARSER::COLLECTION)
    ("p53, Puma and Bak1" . SPARSER::COLLECTION)
    ("/Mdm2/p53" . SPARSER::COLLECTION)
    ("miR-125b directly targets several tumor suppressive and proapoptotic genes"
     . SPARSER::GENE)
    ("p53, Bak1 and Puma" . SPARSER::COLLECTION) ("Bak1" . SPARSER::PROTEIN)
    ("tumor suppressive miRNAs" . SPARSER::PROTEIN)
    ("specifically target oncogenes or tumor suppressor genes xref"
     . SPARSER::COLLECTION)
    ("specifically target oncogenes" . SPARSER::ONCOGENE)
    ("sequence-specific regulators" . SPARSER::REGULATOR)
    ("/Mdm2" . SPARSER::COLLECTION)
    ("p14 ARF , decreased level of Mdm2, and induction of apoptosis"
     . SPARSER::COLLECTION)
    ("p53 and its target genes p21 and Puma" . SPARSER::COLLECTION)
    ("p21 and Puma" . SPARSER::COLLECTION) ("ink4a/ARF" . SPARSER::COLLECTION)
    ("naturally occurring small non-coding RNAs" . SPARSER::RNA)
    ("MDV3100" . SPARSER::DRUG) ("abiraterone acetate" . SPARSER::DRUG)
    ("MiR-125b" . SPARSER::MOLECULE) ("Cas-3" . SPARSER::PROTEIN)
    ("second mitochondria-derived activator of caspase" . SPARSER::PROTEIN)
    ("RPM1" . SPARSER::PROTEIN) ("ARF 3" . SPARSER::PROTEIN)
    ("p14ARF" . SPARSER::PROTEIN) ("Bcl-X" . SPARSER::PROTEIN)
    ("ink4a" . SPARSER::PROTEIN) ("miR-125b" . SPARSER::MOLECULE)
    ("kinases or c-Abl" . SPARSER::COLLECTION)
    ("Jak" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Src and particularly activated Src" . SPARSER::COLLECTION)
    ("major histone deacetylase (HDAC)" . SPARSER::PROTEIN)
    ("HAT and HDAC" . SPARSER::COLLECTION) ("PHD" . SPARSER::PROTEIN)
    ("the predominant ING1 isoform" . SPARSER::ISOFORM)
    ("Cycloheximide" . SPARSER::PROTEIN)
    ("ING1 and kinase-dead Src" . SPARSER::COLLECTION)
    ("Src and ING1B" . SPARSER::COLLECTION)
    ("ING1 and Src" . SPARSER::COLLECTION)
    ("ectopically-expressed WT Src" . SPARSER::PROTEIN)
    ("both ATP and Src" . SPARSER::COLLECTION)
    ("Bacterial recombinant ING1 protein" . SPARSER::PROTEIN)
    ("Src-ING1" . SPARSER::COLLECTION)
    ("Src-associated ING1" . SPARSER::PROTEIN) ("VHL" . SPARSER::PROTEIN)
    ("ING" . SPARSER::PROTEIN-FAMILY)
    ("conformation and gene" . SPARSER::COLLECTION)
    ("INhibitor" . SPARSER::INHIBITOR) ("Src Kinase" . SPARSER::PROTEIN)
    ("p-40" . SPARSER::PROTEIN) ("p-nitrophenyl" . SPARSER::MOLECULE)
    ("H3K4Me3" . SPARSER::PROTEIN) ("Sin3A" . SPARSER::PROTEIN)
    ("SAP30" . SPARSER::PROTEIN) ("RUNX3" . SPARSER::PROTEIN)
    ("HIF1" . SPARSER::PROTEIN) ("ing1" . SPARSER::PROTEIN)
    ("ING1" . SPARSER::PROTEIN) ("is run" . SPARSER::PROTEIN-FAMILY)
    ("gold" . SPARSER::MOLECULE) ("LCN" . SPARSER::PROTEIN)
    ("P22" . SPARSER::PROTEIN) ("HRM, SSCA and Sanger" . SPARSER::COLLECTION)
    ("LCN-HRM" . SPARSER::PROTEIN-PAIR) ("-HRM" . SPARSER::COLLECTION)
    ("dCt" . SPARSER::PROTEIN) ("Glutamine" . SPARSER::AMINO-ACID)
    ("Valine" . SPARSER::AMINO-ACID) ("Braf or MEK" . SPARSER::COLLECTION)
    ("HRM and SSCA" . SPARSER::COLLECTION) ("CAST" . SPARSER::PROTEIN)
    ("Formalin" . SPARSER::MOLECULE) ("ATF 1" . SPARSER::PROTEIN)
    ("2–4 " . SPARSER::PROTEIN) ("–3 " . SPARSER::PROTEIN)
    ("P14" . SPARSER::PROTEIN) ("P33" . SPARSER::PROTEIN)
    ("P46" . SPARSER::PROTEIN) ("RG7204" . SPARSER::DRUG)
    ("CK2, PP5, or YES1" . SPARSER::COLLECTION)
    ("AKT and MAPK" . SPARSER::COLLECTION)
    ("HSP90:CDC37" . SPARSER::BIO-COMPLEX)
    ("CDC37:HSP90" . SPARSER::BIO-COMPLEX)
    ("CellTiter-Glo" . SPARSER::PROTEIN-PAIR)
    ("CDC37 and KIT" . SPARSER::COLLECTION)
    ("KIT and CDC37" . SPARSER::COLLECTION)
    ("the essential genes" . SPARSER::GENE) ("essential genes" . SPARSER::GENE)
    ("the GIST-lineage-related transcription factor ETV1" . SPARSER::PROTEIN)
    ("CDC37-kinase-HSP90" . SPARSER::COLLECTION)
    ("CDC37-HSP90" . SPARSER::COLLECTION)
    ("ribosome and proteasome" . SPARSER::COLLECTION)
    ("targeted proliferation-essential genes" . SPARSER::GENE)
    ("ansamycin" . SPARSER::MOLECULE)
    ("the essential KIT/PDGFRA oncoproteins" . SPARSER::PROTEIN)
    ("sunitinib" . SPARSER::DRUG) ("KIT/PDGFRA" . SPARSER::COLLECTION)
    ("the top six GIST-specific essential genes" . SPARSER::GENE)
    ("a lentiviral shRNA" . SPARSER::PROTEIN)
    ("KIT and PDGFRA" . SPARSER::COLLECTION)
    ("imatinib and other tyrosine kinase inhibitor (TKI) therapies"
     . SPARSER::COLLECTION)
    ("KIT or PDGFRA" . SPARSER::COLLECTION) ("PDGFRA" . SPARSER::PROTEIN)
    ("YES1" . SPARSER::PROTEIN) ("PP5" . SPARSER::PROTEIN)
    ("casein kinase 2" . SPARSER::PROTEIN) ("CDC37" . SPARSER::PROTEIN)
    ("Shc-Erk" . SPARSER::COLLECTION) ("Shc–RTK" . SPARSER::COLLECTION)
    ("TrkA, EGFR, ErbB2, and ErbB3" . SPARSER::COLLECTION)
    ("Pea-15 and Sef" . SPARSER::COLLECTION) ("Sef" . SPARSER::PROTEIN)
    ("EGF or insulin-like growth factor" . SPARSER::COLLECTION)
    ("ShcPTB–Erk" . SPARSER::COLLECTION)
    ("an appropriate RTK" . SPARSER::PROTEIN)
    ("the ShcPTB and the N-terminal lobe" . SPARSER::COLLECTION)
    ("the exogenous Shc" . SPARSER::PROTEIN) ("Strep" . SPARSER::PROTEIN)
    ("strep" . SPARSER::PROTEIN) ("peptide or pEGFR" . SPARSER::COLLECTION)
    ("the BFP (donor) and GFP (acceptor)" . SPARSER::COLLECTION)
    ("EGFR (pEGFR cyto ; xref ) or pTrkA ( xref )" . SPARSER::COLLECTION)
    ("TrkA and Erk" . SPARSER::COLLECTION) ("apo-" . SPARSER::PROTEIN)
    ("TrkA" . SPARSER::PROTEIN) ("Ras-Raf-Mek" . SPARSER::COLLECTION)
    ("–GFP" . SPARSER::COLLECTION) ("Erk or greater" . SPARSER::COLLECTION)
    ("-GFP" . SPARSER::COLLECTION) ("ras" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Renilla-luciferase" . SPARSER::PROTEIN-PAIR) ("RFP" . SPARSER::PROTEIN)
    ("RSK and Elk—which" . SPARSER::COLLECTION) ("SRE" . SPARSER::PROTEIN)
    ("pErk" . SPARSER::PROTEIN)
    ("wild type Shc (Shc WT ) or the mutant Shc R98Q (in which Shc binding to Erk is compromised)"
     . SPARSER::COLLECTION)
    ("the respective proteins" . SPARSER::PROTEIN)
    ("ShcPTB W24A and ShcPTB R175Q" . SPARSER::COLLECTION)
    ("previously reported Shc-binding proteins" . SPARSER::PROTEIN)
    ("phosphotyrosine and phospholipid" . SPARSER::COLLECTION)
    ("Erk and ShcPTB" . SPARSER::COLLECTION)
    ("BFP-ShcPTB" . SPARSER::COLLECTION)
    ("ShcPTB and full length Erk" . SPARSER::COLLECTION)
    ("GFP-Erk" . SPARSER::COLLECTION) ("BFP-Shc" . SPARSER::COLLECTION)
    ("BFP" . SPARSER::PROTEIN) ("ShcPTB and Erk" . SPARSER::COLLECTION)
    ("ShcPTB" . SPARSER::PROTEIN) ("ShcSH2" . SPARSER::PROTEIN)
    ("GST-ShcPTB and GST-ShcSH2" . SPARSER::COLLECTION)
    ("GST-ShcSH2" . SPARSER::PROTEIN-PAIR)
    ("GST-ShcPTB" . SPARSER::PROTEIN-PAIR)
    ("GST-pulldowns" . SPARSER::PROTEIN-PAIR)
    ("Erk and Shc" . SPARSER::COLLECTION)
    ("Shc and the N-terminal lobe" . SPARSER::COLLECTION)
    ("Shc and Erk" . SPARSER::COLLECTION)
    ("Raf1 and Sos" . SPARSER::COLLECTION) ("Erk–Mek" . SPARSER::COLLECTION)
    ("Erk1 and Erk2" . SPARSER::COLLECTION)
    ("Ras and Raf—that" . SPARSER::COLLECTION)
    ("Shc–Grb2" . SPARSER::COLLECTION) ("linking RTKs" . SPARSER::PROTEIN)
    ("PTB" . SPARSER::PROTEIN) ("p46, p52 and p66" . SPARSER::COLLECTION)
    ("ShcA" . SPARSER::PROTEIN) ("shcA" . SPARSER::PROTEIN)
    ("the receptor tyrosine kinase (RTK) Erb2" . SPARSER::PROTEIN)
    ("Shc–Erk" . SPARSER::COLLECTION) ("Dual-luciferase" . SPARSER::PROTEIN)
    ("pGL4" . SPARSER::PROTEIN) ("Shc-1" . SPARSER::PROTEIN)
    ("K 2" . SPARSER::PROTEIN) ("Pea-15" . SPARSER::PROTEIN)
    ("nerve growth factor receptor" . SPARSER::PROTEIN)
    ("MPK-1" . SPARSER::PROTEIN) ("shc-1" . SPARSER::PROTEIN)
    ("mpk-1" . SPARSER::PROTEIN) ("mek-2" . SPARSER::PROTEIN)
    ("lin-45" . SPARSER::PROTEIN) ("thymidine kinase" . SPARSER::PROTEIN)
    ("PDB 1" . SPARSER::PROTEIN) ("green fluorescent" . SPARSER::PROTEIN)
    ("Erk2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Erk1" . SPARSER::PROTEIN)
    ("p66" . SPARSER::PROTEIN) ("p46" . SPARSER::PROTEIN)
    ("MAP-kinase" . SPARSER::PROTEIN) ("cigarette" . SPARSER::DRUG)
    ("DSP, DPP9 , and CTNNA3" . SPARSER::COLLECTION)
    ("CoA" . SPARSER::MOLECULE)
    ("multi-transmembrane protein" . SPARSER::COLLECTION)
    ("surfactant" . SPARSER::PROTEIN)
    ("the ATP-binding cassette (ABC) transporter ( ABCA1 ), a gene"
     . SPARSER::PROTEIN)
    ("transporter" . SPARSER::PROTEIN)
    ("hypoxia and a SNP (rs7671167)" . SPARSER::COLLECTION)
    ("fibroblastic foci" . SPARSER::PROTEIN)
    ("wnt/β-catenin" . SPARSER::COLLECTION)
    ("wnt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("an adhesive intercellular molecule" . SPARSER::MOLECULE)
    ("potentially one common variant" . SPARSER::VARIANT)
    ("MUC2 or TOLLIP" . SPARSER::COLLECTION) ("mucins" . SPARSER::PROTEIN)
    ("the only consistently IIP-associated common variant" . SPARSER::VARIANT)
    ("MUC2 , DISP2 , WNT3 , and WNT9B" . SPARSER::COLLECTION)
    ("DPP9 , DSP , FAM13A , IVD , DISP2 , OBFC1 , ATP11A, and MUC2"
     . SPARSER::COLLECTION)
    ("MUC5B , MUC2 , WNT3 , and WNT9B" . SPARSER::COLLECTION)
    ("IVD" . SPARSER::PROTEIN) ("gene or SNPs" . SPARSER::COLLECTION)
    ("desmoplakin" . SPARSER::PROTEIN) ("TERT and TERC" . SPARSER::COLLECTION)
    ("MUC2 and TOLLIP" . SPARSER::COLLECTION) ("TOLLIP" . SPARSER::PROTEIN)
    ("different histologic types" . TYPE)
    ("MUC5B , TERT , TERC , and SFTPC" . SPARSER::COLLECTION)
    ("TERT , TERC, SFTPC, and SFTPA2" . SPARSER::COLLECTION)
    ("SFTPC" . SPARSER::PROTEIN) ("environmental toxins" . SPARSER::MOLECULE)
    ("toxins" . SPARSER::MOLECULE) ("DSP" . SPARSER::PROTEIN)
    ("TERT and MUC5B" . SPARSER::COLLECTION)
    ("Chromosome 17" . SPARSER::PROTEIN) ("γ-Interferon" . SPARSER::DRUG)
    ("dispatched homolog 2" . SPARSER::PROTEIN) ("ABCA3" . SPARSER::PROTEIN)
    ("ABCA1" . SPARSER::PROTEIN) ("alpha 3" . SPARSER::PROTEIN)
    ("cadherin-associated protein" . SPARSER::PROTEIN)
    ("fibroblast activation protein" . SPARSER::PROTEIN)
    ("γ-catenin" . SPARSER::PROTEIN) ("WNT9B" . SPARSER::PROTEIN)
    ("DISP2" . SPARSER::PROTEIN) ("LRRC34" . SPARSER::PROTEIN)
    ("ZKSCAN1" . SPARSER::PROTEIN) ("dipeptidyl-peptidase" . SPARSER::PROTEIN)
    ("type 11A" . SPARSER::PROTEIN) ("member A" . SPARSER::PROTEIN)
    ("family with sequence similarity 13" . SPARSER::PROTEIN)
    ("MUC2" . SPARSER::PROTEIN) ("SFTPA2" . SPARSER::PROTEIN)
    ("DPP9" . SPARSER::PROTEIN) ("ATP11A" . SPARSER::PROTEIN)
    ("MUC5B" . SPARSER::PROTEIN) ("pCav1" . SPARSER::PROTEIN)
    ("Y14-pCav1" . SPARSER::COLLECTION)
    ("Cav1 and actin" . SPARSER::COLLECTION) ("ruthenium" . SPARSER::MOLECULE)
    ("mKate (control) or Prom2-mKate" . SPARSER::COLLECTION)
    ("mKate" . SPARSER::PROTEIN) ("globoside" . SPARSER::MOLECULE)
    ("StxB" . SPARSER::PROTEIN) ("ganglioside" . SPARSER::PROTEIN)
    ("Prom2-mKate" . SPARSER::COLLECTION)
    ("Prom2 fluorescent protein" . SPARSER::PROTEIN)
    ("fluorescent Prom2" . SPARSER::PROTEIN) ("HSFs" . SPARSER::PROTEIN)
    ("prominin" . SPARSER::PROTEIN-FAMILY)
    ("The fluorescent lipid" . SPARSER::LIPID) ("GSL" . SPARSER::PROTEIN)
    ("BODIPY-lactosylceramide (Bodipy-LacCer), polyethylene glycol-coupled cholesterol (PEG-Chol)"
     . SPARSER::DRUG)
    ("BODIPY-lactosylceramide (Bodipy-LacCer)" . SPARSER::DRUG)
    ("BODIPY-lactosylceramide" . SPARSER::DRUG) ("CtxB" . SPARSER::PROTEIN)
    ("lactosylceramide" . SPARSER::MOLECULE) ("BODIPY" . SPARSER::DRUG)
    ("Prom1 and Prom2" . SPARSER::COLLECTION) ("Prom1" . SPARSER::PROTEIN)
    ("Prominin" . SPARSER::PROTEIN-FAMILY)
    ("prominins" . SPARSER::PROTEIN-FAMILY)
    ("HSF and CHO" . SPARSER::COLLECTION) ("HSF" . SPARSER::PROTEIN)
    ("Prominins" . SPARSER::PROTEIN-FAMILY) ("Y14" . SPARSER::PROTEIN)
    ("Cav1" . SPARSER::PROTEIN) ("Caveolin-1" . SPARSER::PROTEIN)
    ("B subunit" . SPARSER::PROTEIN) ("Bodipy-LacCer" . SPARSER::DRUG)
    ("Prom2" . SPARSER::PROTEIN) ("Prominin-2" . SPARSER::PROTEIN)
    ("Prominin-1" . SPARSER::PROTEIN) ("Mek and Akt" . SPARSER::COLLECTION)
    ("mTORC1/Mek" . SPARSER::COLLECTION)
    ("this cooperative oncogene" . SPARSER::ONCOGENE)
    ("mutant KRAS G13D and mutant PIK3CA H1047R" . SPARSER::COLLECTION)
    ("Kras and p110α" . SPARSER::COLLECTION)
    ("Pdk1, Akt and PI3 Kinase" . SPARSER::COLLECTION)
    ("Kras/p110α" . SPARSER::COLLECTION)
    ("mutant KRAS and/or PIK3CA" . SPARSER::COLLECTION)
    ("KRAS or mutant" . SPARSER::COLLECTION)
    ("homozygous mutant KRAS" . SPARSER::PROTEIN)
    ("alleles of mutant and wild type KRAS and PIK3CA" . SPARSER::COLLECTION)
    ("both mutant KRAS and other cooperating oncogenes" . SPARSER::COLLECTION)
    ("wild type KRAS or heterozygous mutant/wild type KRAS"
     . SPARSER::COLLECTION)
    ("only mutant KRAS" . SPARSER::PROTEIN)
    ("heterozygous mutant/wild type KRAS" . SPARSER::PROTEIN)
    ("parental MCF-10A and mutant KRAS" . SPARSER::PROTEIN)
    ("Akt and p90RSK" . SPARSER::COLLECTION)
    ("PI3 Kinase, Akt and Pdk1" . SPARSER::COLLECTION)
    ("Kras and mutant" . SPARSER::COLLECTION)
    ("exogenous mutant" . SPARSER::MUTANT)
    ("MCF-10A and KRAS" . SPARSER::COLLECTION)
    ("rapamycin and U0126" . SPARSER::COLLECTION)
    ("MCF-10A and mutant" . SPARSER::COLLECTION)
    ("PIK3CA and DKI" . SPARSER::COLLECTION)
    ("the MEK inhibitor U0126 and the mTOR inhibitor rapamycin"
     . SPARSER::COLLECTION)
    ("p70S6K and p90RSK" . SPARSER::COLLECTION)
    ("mTORC1 and PI3 Kinase" . SPARSER::COLLECTION)
    ("Akt and Erk" . SPARSER::COLLECTION) ("Erk and Akt" . SPARSER::COLLECTION)
    ("p90RSK and p70S6K" . SPARSER::COLLECTION)
    ("mutant KRAS and a single allele" . SPARSER::COLLECTION)
    ("KRAS or PIK3CA" . SPARSER::COLLECTION)
    ("KRAS alleles and PIK3CA alleles" . SPARSER::COLLECTION)
    ("parental MCF-10A" . SPARSER::PROTEIN)
    ("neighboring acini" . SPARSER::PROTEIN) ("RI" . SPARSER::MOLECULE)
    ("KRAS/PIK3CA" . SPARSER::COLLECTION) ("LT" . SPARSER::PROTEIN)
    ("phenylindole" . SPARSER::MOLECULE)
    ("Green dUTP or Red dUTP (Abbott Laboratories)" . SPARSER::COLLECTION)
    ("DNA polymerase/DNase I" . SPARSER::COLLECTION)
    ("KCl" . SPARSER::MOLECULE) ("Sigma-Aldrich" . SPARSER::COLLECTION)
    ("pLXSN" . SPARSER::PROTEIN) ("xylene" . SPARSER::MOLECULE)
    ("20% PBS and 80% Matrigel" . SPARSER::COLLECTION)
    ("p44/p42" . SPARSER::COLLECTION) ("anti-p44/p42" . SPARSER::COLLECTION)
    ("horseradish peroxidase-conjugated secondary antibodies"
     . SPARSER::ANTIBODY)
    ("peroxidase" . SPARSER::PROTEIN) ("Agarose" . SPARSER::MOLECULE)
    ("U0126 and 1nM" . SPARSER::COLLECTION)
    ("U0126 and rapamycin" . SPARSER::COLLECTION)
    ("1% charcoal dextran" . SPARSER::DEXTRAN) ("dextran" . SPARSER::DEXTRAN)
    ("a heterozygous KRAS G12V" . SPARSER::PROTEIN)
    ("The non-transformed human breast epithelial cell line MCF-10A ( xref ) and its derivatives"
     . SPARSER::COLLECTION)
    ("toxin" . SPARSER::MOLECULE) ("hydrocortisone" . SPARSER::DRUG)
    ("further studies using small molecule inhibitors" . SPARSER::INHIBITOR)
    ("KRAS and mutant" . SPARSER::COLLECTION) ("MIN" . SPARSER::PROTEIN)
    ("DLD" . SPARSER::PROTEIN) ("conditional alleles" . SPARSER::ALLELE)
    ("MAP Kinase and PI3 Kinase" . SPARSER::COLLECTION)
    ("p90RSK" . SPARSER::PROTEIN-FAMILY) ("Ras/p110α" . SPARSER::COLLECTION)
    ("PI3 Kinase and MAP Kinase" . SPARSER::COLLECTION)
    ("GSK2334470" . SPARSER::DRUG) ("PI3 Kinase" . SPARSER::PROTEIN)
    ("MnSOD and catalase" . SPARSER::COLLECTION) ("MnSOD" . SPARSER::PROTEIN)
    ("somata" . SPARSER::DRUG)
    ("reconstituted acid extracted type I collagen" . SPARSER::PROTEIN)
    ("the polymerized cross-linked collagen" . SPARSER::PROTEIN)
    ("Fas and caspase" . SPARSER::COLLECTION) ("myo" . SPARSER::PROTEIN)
    ("a physiologically relevant matrix" . SPARSER::PROTEIN-FAMILY)
    ("polymerized type I collagen matrices" . SPARSER::PROTEIN-FAMILY)
    ("cav-1/Fas" . SPARSER::COLLECTION)
    ("caspase-3 and Fas" . SPARSER::COLLECTION)
    ("phosphorylated FoxO3a (inactive FoxO3a) and α-smooth muscle actin ( xref upper left and middle, respectively)"
     . SPARSER::COLLECTION)
    ("the Fibroblastic Foci" . SPARSER::PROTEIN)
    ("FoxO3a and α-smooth Muscle" . SPARSER::COLLECTION)
    ("Inactive" . SPARSER::INACTIVE) ("Foci" . SPARSER::PROTEIN)
    ("smooth Muscle" . SPARSER::PROTEIN)
    ("Polymerized Collagen" . SPARSER::PROTEIN)
    ("FoxO3a and cav-1" . SPARSER::COLLECTION)
    ("FoxO3a and Cav-1" . SPARSER::COLLECTION)
    ("HA and GFP" . SPARSER::COLLECTION)
    ("hyperactive Akt (HA)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FoxO3a or GFP, and cav-1" . SPARSER::COLLECTION)
    ("hyperactive Akt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Akt (DA)" . SPARSER::HUMAN-PROTEIN-FAMILY) ("DA" . SPARSER::MOLECULE)
    ("cav" . SPARSER::PROTEIN) ("collagen, and active" . SPARSER::COLLECTION)
    ("FoxO3a and inactive" . SPARSER::COLLECTION)
    ("wild type FoxO3a transcriptionally increases cav-1" . SPARSER::PROTEIN)
    ("p-FoxO3a" . SPARSER::COLLECTION)
    ("dominant negative FoxO3a (DF) or GFP" . SPARSER::COLLECTION)
    ("FoxO3a (DF)" . SPARSER::PROTEIN) ("FHRE-Luc" . SPARSER::COLLECTION)
    ("FoxO3a or GFP" . SPARSER::COLLECTION)
    ("matrices and cav-1" . SPARSER::COLLECTION) ("rRNA" . SPARSER::PROTEIN)
    ("AF" . SPARSER::PROTEIN) ("IRS" . SPARSER::PROTEIN)
    ("polymerized collagen matrices" . SPARSER::PROTEIN-FAMILY)
    ("polymerized collagen matrix" . SPARSER::PROTEIN-FAMILY)
    ("IPF fibroblastic foci" . SPARSER::PROTEIN)
    ("caspase-3, cav-1 and Fas" . SPARSER::COLLECTION)
    ("FoxO3a or cav-1" . SPARSER::COLLECTION)
    ("FoxO3a/cav-1" . SPARSER::COLLECTION)
    ("cav-1 and FoxO3a" . SPARSER::COLLECTION)
    ("cav-1 and FoxO3a, and Fas" . SPARSER::COLLECTION)
    ("FoxO3a, and Fas" . SPARSER::COLLECTION)
    ("the type I collagen-rich fibrotic matrix" . SPARSER::PROTEIN-FAMILY)
    ("polymerized collagen" . SPARSER::PROTEIN)
    ("cav-1 and Fas" . SPARSER::COLLECTION) ("PTEN/Akt" . SPARSER::COLLECTION)
    ("the fibroblastic foci" . SPARSER::PROTEIN)
    ("polymerized type I collagen" . SPARSER::PROTEIN)
    ("collagen-matrix" . SPARSER::COLLECTION) ("FoxO3A" . SPARSER::PROTEIN)
    ("TG 3" . SPARSER::PROTEIN) ("CA 3" . SPARSER::PROTEIN)
    ("Fas-ligand" . SPARSER::PROTEIN) ("cav-1" . SPARSER::PROTEIN)
    ("C1ORF124 or ZRANB3" . SPARSER::COLLECTION)
    ("substrate-" . SPARSER::SUBSTRATE)
    ("RNF168 and RNF169" . SPARSER::COLLECTION)
    ("ubiquitin- or SUMO-interaction" . SPARSER::COLLECTION)
    ("ubiquitin-" . SPARSER::PROTEIN)
    ("ubiquitin and SUMO" . SPARSER::COLLECTION)
    ("loaded PCNA" . SPARSER::PROTEIN) ("MTH2–PCNA" . SPARSER::COLLECTION)
    ("Cai" . SPARSER::DRUG) ("dGMP" . SPARSER::DGMP) ("dGTP" . SPARSER::DGTP)
    ("CRL4-" . SPARSER::PROTEIN) ("CDT1 and p21" . SPARSER::COLLECTION)
    ("the chromatin-associated fraction" . SPARSER::COMPONENT)
    ("Eco1 and the SUMO-E2 Ubc9" . SPARSER::COLLECTION)
    ("SUMO-PCNA" . SPARSER::COLLECTION)
    ("posttranslational modifiers" . SPARSER::MOLECULE)
    ("Srs2 and Rad18" . SPARSER::COLLECTION)
    ("the damage-induced ubiquitylated form" . SPARSER::FORM)
    ("the replication-associated sumoylated form" . SPARSER::FORM)
    ("elg1" . SPARSER::PROTEIN) ("SIMs or PIP-like" . SPARSER::COLLECTION)
    ("SIMs and PIP" . SPARSER::COLLECTION) ("SIMs" . SPARSER::PROTEIN)
    ("Elg1" . SPARSER::PROTEIN) ("PCNA–SUMO" . SPARSER::COLLECTION)
    ("PARI" . SPARSER::PROTEIN) ("Saccharomyces" . SPARSER::PROTEIN)
    ("fungi" . SPARSER::PROTEIN) ("PCNA and SUMO" . SPARSER::COLLECTION)
    ("SIM" . SPARSER::PROTEIN) ("SIM–SUMO" . SPARSER::PROTEIN-PAIR)
    ("presynaptic Rad51 filaments" . SPARSER::PROTEIN-FAMILY)
    ("SUMO and ubiquitin" . SPARSER::COLLECTION) ("Siz1" . SPARSER::PROTEIN)
    ("substrate, and failure" . SPARSER::COLLECTION)
    ("USP1-UAF1" . SPARSER::COLLECTION) ("RFC" . SPARSER::PROTEIN)
    ("RFC2, RFC3, RFC4 and RFC5" . SPARSER::COLLECTION)
    ("UBC13 and the Rad5 homologs HLTF and SHPRH" . SPARSER::COLLECTION)
    ("HLTF and SHPRH" . SPARSER::COLLECTION)
    ("RAD18 or UBC13" . SPARSER::COLLECTION)
    ("WRNIP1, and WRNIP1" . SPARSER::COLLECTION) ("NZF" . SPARSER::PROTEIN)
    ("laser-induced DNA damage foci" . SPARSER::PROTEIN)
    ("ATP-driven DNA" . SPARSER::DNA) ("HNH" . SPARSER::PROTEIN-FAMILY)
    ("ZRANB3/AH2" . SPARSER::COLLECTION) ("PCNA–Polδ" . SPARSER::PROTEIN-PAIR)
    ("RPA-associated nuclear foci" . SPARSER::PROTEIN)
    ("RPA" . SPARSER::PROTEIN)
    ("K63- and linear polyubiquitin" . SPARSER::COLLECTION)
    ("its relevant modified targets" . SPARSER::TARGET-PROTEIN)
    ("K63-" . SPARSER::PROTEIN) ("PIP and UBZ" . SPARSER::COLLECTION)
    ("ubiquitylated PCNA and chromatin-associated Rad18 and Polη (Centore et al. xref ; Ghosal et al. xref )"
     . SPARSER::COLLECTION)
    ("chromatin-associated Rad18 and Polη" . SPARSER::COLLECTION)
    ("Rad18 and Polη" . SPARSER::COLLECTION)
    ("subsequently named Spartan (for SprT-like domain at the N terminus) or DVC1 (for DNA damage-targeting VCP adaptor C1orf124)"
     . SPARSER::COLLECTION)
    ("SHP" . SPARSER::PROTEIN) ("VCP" . SPARSER::PROTEIN)
    ("C1orf124/DVC1/Spartan" . SPARSER::COLLECTION)
    ("Spartan" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("damage-induced foci" . SPARSER::PROTEIN) ("UBZ-" . SPARSER::PROTEIN)
    ("ubiquitin–PCNA" . SPARSER::COLLECTION) ("poison" . SPARSER::MOLECULE)
    ("FANCA and FANCD2" . SPARSER::COLLECTION) ("FANCA" . SPARSER::PROTEIN)
    ("UBD" . SPARSER::PROTEIN)
    ("the chromatin-associated proteins FANCD2 and FANCI"
     . SPARSER::COLLECTION)
    ("FANCD2 and FANCI" . SPARSER::COLLECTION) ("FANCI" . SPARSER::PROTEIN)
    ("haploid" . SPARSER::PROTEIN) ("ICL" . SPARSER::PROTEIN)
    ("Damage-tolerant polymerases" . SPARSER::PROTEIN)
    ("ICLs" . SPARSER::PROTEIN) ("PCNA and DNA" . SPARSER::COLLECTION)
    ("PIP- and UBZ" . SPARSER::COLLECTION) ("PIP-" . SPARSER::PROTEIN)
    ("UBZ" . SPARSER::PROTEIN) ("UBZ–ubiquitin" . SPARSER::PROTEIN-PAIR)
    ("PCNA-ubiquitin" . SPARSER::COLLECTION)
    ("a stalled replicative polymerase" . SPARSER::PROTEIN)
    ("the damage-tolerant polymerases" . SPARSER::PROTEIN)
    ("zinc finger (UBZ)" . SPARSER::PROTEIN) ("UBM" . SPARSER::PROTEIN)
    ("classical PIP" . SPARSER::PROTEIN) ("Pol" . SPARSER::PROTEIN)
    ("UBDs" . SPARSER::PROTEIN)
    ("damage-tolerant DNA polymerases" . SPARSER::PROTEIN)
    ("Damage-tolerant DNA polymerases" . SPARSER::PROTEIN)
    ("Ubp10" . SPARSER::PROTEIN) ("isopeptidase" . SPARSER::PROTEIN)
    ("which—in complex with the ubiquitin protein ligase (E3) Rad18—monoubiquitylates PCNA and the heterodimeric E2 complex Ubc13-Mms2 (or Ubc13-UEV1 in mammals)"
     . SPARSER::COLLECTION)
    ("the heterodimeric E2 complex Ubc13-Mms2" . SPARSER::COLLECTION)
    ("homologues, SHPRH and HLTF" . SPARSER::COLLECTION)
    ("Ubc13-UEV1" . SPARSER::COLLECTION) ("Ubc13-Mms2" . SPARSER::COLLECTION)
    ("monoubiquitin" . SPARSER::PROTEIN) ("HLTF" . SPARSER::PROTEIN)
    ("SHPRH" . SPARSER::PROTEIN) ("homologues" . SPARSER::PROTEIN)
    ("AlkB" . SPARSER::PROTEIN) ("PIP" . SPARSER::PROTEIN)
    ("the replicative DNA polymerases as well as components"
     . SPARSER::COLLECTION)
    ("the eukaryotic sliding clamp" . SPARSER::PROTEIN-FAMILY)
    ("possible nucleosome variants" . SPARSER::VARIANT)
    ("octamer" . SPARSER::PROTEIN) ("the target’s" . SPARSER::TARGET-PROTEIN)
    ("The eukaryotic sliding clamp" . SPARSER::PROTEIN-FAMILY)
    ("C1ORF124" . SPARSER::PROTEIN) ("RNF169" . SPARSER::PROTEIN)
    ("RNF168" . SPARSER::PROTEIN) ("MTH2" . SPARSER::PROTEIN)
    ("CDT2" . SPARSER::PROTEIN) ("CUL4" . SPARSER::PROTEIN)
    ("CRL4" . SPARSER::PROTEIN) ("Cullin 4" . SPARSER::PROTEIN)
    ("eco1" . SPARSER::PROTEIN) ("Smc3" . SPARSER::PROTEIN)
    ("Eco1" . SPARSER::PROTEIN) ("SIZ1" . SPARSER::PROTEIN)
    ("Srs2" . SPARSER::PROTEIN) ("Ulp1" . SPARSER::PROTEIN)
    ("Siz2" . SPARSER::PROTEIN) ("RFC5" . SPARSER::PROTEIN)
    ("RFC4" . SPARSER::PROTEIN) ("RFC3" . SPARSER::PROTEIN)
    ("RFC2" . SPARSER::PROTEIN) ("ELG1" . SPARSER::PROTEIN)
    ("RFC1" . SPARSER::PROTEIN) ("UAF1" . SPARSER::PROTEIN)
    ("TAB2" . SPARSER::PROTEIN) ("UBC13" . SPARSER::PROTEIN)
    ("RAD18" . SPARSER::PROTEIN) ("Npl4" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SNF2" . SPARSER::PROTEIN) ("Ran-binding" . SPARSER::PROTEIN-FAMILY)
    ("AH2" . SPARSER::PROTEIN) ("ZRANB3" . SPARSER::PROTEIN)
    ("rad18" . SPARSER::PROTEIN) ("protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("WRNIP1" . SPARSER::PROTEIN) ("p97" . SPARSER::PROTEIN)
    ("SprT-like domain at the N terminus" . SPARSER::PROTEIN)
    ("DVC1" . SPARSER::PROTEIN) ("C1orf124" . SPARSER::PROTEIN)
    ("Snm1" . SPARSER::PROTEIN) ("yeast homolog" . SPARSER::PROTEIN)
    ("SNM1A" . SPARSER::PROTEIN) ("Fanconi anemia" . SPARSER::PROTEIN)
    ("Rev1" . SPARSER::PROTEIN) ("USP1" . SPARSER::PROTEIN)
    ("Rad5" . SPARSER::PROTEIN) ("UEV1" . SPARSER::PROTEIN)
    ("Mms2" . SPARSER::PROTEIN) ("Ubc13" . SPARSER::PROTEIN)
    ("Rad18" . SPARSER::PROTEIN) ("Rad6" . SPARSER::PROTEIN)
    ("classic Li-Fraumeni families" . SPARSER::PROTEIN-FAMILY)
    ("LFS or Chompret" . SPARSER::COLLECTION)
    ("one prospective cohort" . SPARSER::MOLECULE)
    ("ER/PR" . SPARSER::COLLECTION) ("von Hippel-Lindau" . SPARSER::PROTEIN)
    ("SDF1/CXCL12" . SPARSER::COLLECTION)
    ("MAPKs and Akt" . SPARSER::COLLECTION)
    ("acute myelogenous and lymphocytic leukemia" . SPARSER::PROTEIN)
    ("Akt and MAPKs" . SPARSER::COLLECTION)
    ("JNK, and p38" . SPARSER::COLLECTION)
    ("etoposide and SB203580" . SPARSER::COLLECTION)
    ("further reduced VEGF" . SPARSER::PROTEIN)
    ("SB203580 and etoposide" . SPARSER::COLLECTION)
    ("Etoposide or SB203580" . SPARSER::COLLECTION)
    ("etoposide or SB203580" . SPARSER::COLLECTION)
    ("cyclooxygenase (COX)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LY290042 or SB203580" . SPARSER::COLLECTION)
    ("LY290042 and SB203580" . SPARSER::COLLECTION)
    ("LY290042 or SB203580 or SP600125" . SPARSER::COLLECTION)
    ("basic fibroblast growth factor (bFGF) and vascular endothelial growth factor (VEGF) (data not shown)"
     . SPARSER::COLLECTION)
    ("bFGF" . SPARSER::PROTEIN) ("SB203580 or SP600125" . SPARSER::COLLECTION)
    ("SB203580 and SP600125" . SPARSER::COLLECTION)
    ("etoposide or LY290042" . SPARSER::COLLECTION)
    ("SP600125/etoposide" . SPARSER::COLLECTION)
    ("etoposide-" . SPARSER::PROTEIN)
    ("LY290042 or SP600125" . SPARSER::COLLECTION) ("DCF" . SPARSER::PROTEIN)
    ("CD133 and Oct4" . SPARSER::COLLECTION)
    ("therapy-resistant aggressive NBs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("growth factors and chemokines" . SPARSER::COLLECTION)
    ("NBs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("metalloprotease" . SPARSER::PROTEIN)
    ("AKT and c-Jun" . SPARSER::COLLECTION) ("Etoposide" . SPARSER::PROTEIN)
    ("phospho-JNK" . SPARSER::PROTEIN) ("anti-VEGF" . SPARSER::DRUG)
    ("MAP kinase kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CXCL12" . SPARSER::PROTEIN) ("SDF1" . SPARSER::PROTEIN)
    ("derived factor" . SPARSER::PROTEIN)
    ("Intercellular adhesion molecule-1" . SPARSER::PROTEIN)
    ("basic fibroblast growth factor" . SPARSER::PROTEIN)
    ("PI-3-kinase" . SPARSER::PROTEIN) ("LY290042" . SPARSER::DRUG)
    ("PKC α" . SPARSER::PROTEIN) ("γ -H2AX" . SPARSER::PROTEIN)
    ("chemokine receptor" . SPARSER::PROTEIN)
    ("intercellular adhesion molecule-1" . SPARSER::PROTEIN)
    ("the currently available antibody" . SPARSER::PROTEIN)
    ("dabrafenib and trametinib" . SPARSER::COLLECTION)
    ("MEK and the ERK1/2 kinases" . SPARSER::COLLECTION)
    ("the exact type" . TYPE) ("unequivocal abnormal melting" . SPARSER::DRUG)
    ("HRMA" . SPARSER::PROTEIN) ("Melting" . SPARSER::DRUG)
    ("dabrafenib" . SPARSER::DRUG) ("Zelboraf" . SPARSER::DRUG)
    ("here BRAF inhibitors" . SPARSER::INHIBITOR) ("1–8" . SPARSER::PROTEIN)
    ("EMT and TGFß" . SPARSER::COLLECTION)
    ("cytokines, IL-4, IL-5 and IL-13" . SPARSER::COLLECTION)
    ("cytokines, IFN-γ and IL-12" . SPARSER::COLLECTION)
    ("GATA3 and TGFß" . SPARSER::COLLECTION)
    ("GATA3 or BMP" . SPARSER::COLLECTION)
    ("BMP5 or TGFß" . SPARSER::COLLECTION)
    ("E-cadherin and ZO-1" . SPARSER::COLLECTION)
    ("BMP9 and BMP2" . SPARSER::COLLECTION) ("BMPs" . SPARSER::PROTEIN)
    ("EBP" . SPARSER::PROTEIN) ("LIP∶LAP" . SPARSER::BIO-COMPLEX)
    ("LAP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LAP1, LAP2 and LIP" . SPARSER::COLLECTION) ("LIP" . SPARSER::PROTEIN)
    ("the basic leucine zipper family" . SPARSER::PROTEIN-FAMILY)
    ("EMT/MET" . SPARSER::COLLECTION) ("claudin" . SPARSER::PROTEIN)
    ("TGFbeta" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GATA3 and BMP5" . SPARSER::COLLECTION)
    ("p-Smad1" . SPARSER::PROTEIN-PAIR) ("BMP" . SPARSER::PROTEIN)
    ("BMP2 and BMP4" . SPARSER::COLLECTION)
    ("Cyclin A, CDK1 and PCNA" . SPARSER::COLLECTION)
    ("only 23 genes" . SPARSER::GENE) ("only 112 genes" . SPARSER::GENE)
    ("p-MAPK" . SPARSER::COLLECTION) ("CAGA" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("619 unique genes" . SPARSER::GENE)
    ("-deoxycytidine" . SPARSER::COLLECTION) ("AZA" . SPARSER::DRUG)
    ("E-cadherin and GATA3" . SPARSER::COLLECTION)
    ("C-X-C chemokine receptor type 4 (CXCR4) and Fibronectin 1 (FN1)"
     . SPARSER::COLLECTION)
    ("Zinc finger E-box-binding homeobox 1 (ZEB1), Vimentin (VIM), Versican (VCAN), Fascin homolog 1 (FSCN1), C-X-C chemokine receptor type 4 (CXCR4) and Fibronectin 1 (FN1)"
     . SPARSER::COLLECTION)
    ("Fascin" . SPARSER::PROTEIN) ("Versican" . SPARSER::PROTEIN)
    ("Claudin 3 (CLDN3) and Claudin 4 (CLN4)" . SPARSER::COLLECTION)
    ("OCLN" . SPARSER::PROTEIN) ("Occludin" . SPARSER::PROTEIN)
    ("only one gene" . SPARSER::GENE)
    ("regulators and genes" . SPARSER::COLLECTION)
    ("transcriptional activators or repressors" . SPARSER::COLLECTION)
    ("Smad2 and Smad3" . SPARSER::COLLECTION)
    ("glycine-serine" . SPARSER::COLLECTION)
    ("ZEB1, ZEB2, SNAI1, SNAI2, Twist1, Twist2 and E12/E47"
     . SPARSER::COLLECTION)
    ("TEB" . SPARSER::PROTEIN) ("GATA" . SPARSER::PROTEIN)
    ("FOXP3" . SPARSER::PROTEIN) ("IL-13" . SPARSER::PROTEIN)
    ("IL-5" . SPARSER::PROTEIN) ("Th2" . SPARSER::PROTEIN)
    ("GATA-3" . SPARSER::PROTEIN) ("ZO-1" . SPARSER::PROTEIN)
    ("BMP9" . SPARSER::PROTEIN) ("C/EBPα" . SPARSER::PROTEIN)
    ("LAP2" . SPARSER::PROTEIN) ("LAP1" . SPARSER::PROTEIN)
    ("DAB2" . SPARSER::PROTEIN) ("disabled homolog 2" . SPARSER::PROTEIN)
    ("H-ras" . SPARSER::PROTEIN) ("BMP7" . SPARSER::PROTEIN)
    ("BMP4" . SPARSER::PROTEIN) ("BMP2" . SPARSER::PROTEIN)
    ("MCM2" . SPARSER::PROTEIN) ("CCNE2" . SPARSER::PROTEIN)
    ("CDC45" . SPARSER::PROTEIN) ("ORC1" . SPARSER::PROTEIN)
    ("Smad 2" . SPARSER::PROTEIN) ("FN1" . SPARSER::PROTEIN)
    ("Fibronectin 1" . SPARSER::PROTEIN)
    ("C-X-C chemokine receptor type 4" . SPARSER::PROTEIN)
    ("FSCN1" . SPARSER::PROTEIN)
    ("Zinc finger E-box-binding homeobox 1" . SPARSER::PROTEIN)
    ("TWIST1" . SPARSER::PROTEIN) ("Snail1" . SPARSER::PROTEIN)
    ("CLN4" . SPARSER::PROTEIN) ("Claudin 4" . SPARSER::PROTEIN)
    ("CLDN3" . SPARSER::PROTEIN) ("Claudin 3" . SPARSER::PROTEIN)
    ("ZO1" . SPARSER::PROTEIN) ("Tetraspanin 13" . SPARSER::PROTEIN)
    ("Gene 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("transforming growth factor beta-1" . SPARSER::PROTEIN)
    ("Smad1" . SPARSER::PROTEIN) ("MAP Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CDH11" . SPARSER::PROTEIN) ("Smad 4" . SPARSER::PROTEIN)
    ("R-Smads" . SPARSER::PROTEIN) ("Twist2" . SPARSER::PROTEIN)
    ("SNAI1" . SPARSER::PROTEIN)
    ("extracellular matrix protein" . SPARSER::PROTEIN)
    ("BMP5" . SPARSER::PROTEIN) ("Ras-MAPK" . SPARSER::COLLECTION)
    ("MiR" . SPARSER::PROTEIN) ("mature form" . SPARSER::FORM)
    ("The mature form" . SPARSER::FORM) ("mature microRNAs" . SPARSER::RNA)
    ("a mature HCV core protein" . SPARSER::PROTEIN)
    ("mature core protein" . SPARSER::PROTEIN)
    ("the mature form" . SPARSER::FORM)
    ("the full-length and mature core proteins" . SPARSER::COLLECTION)
    ("mature core proteins" . SPARSER::PROTEIN) ("MicroRNA" . SPARSER::RNA)
    ("Curcumin" . SPARSER::DRUG) ("SPP" . SPARSER::PROTEIN)
    ("cellular and viral proteases" . SPARSER::PROTEIN)
    ("approximately 3000 amino acids" . SPARSER::AMINO-ACID)
    ("E1, and E2" . SPARSER::COLLECTION)
    ("p7, NS2, NS3, NS4A, NS4B, NS5A, and NS5B" . SPARSER::COLLECTION)
    ("HCV core-modulated cellular microRNAs" . SPARSER::RNA)
    ("RASGRP1" . SPARSER::PROTEIN) ("DNMT1" . SPARSER::PROTEIN)
    ("DNA methyltransferase 1" . SPARSER::PROTEIN) ("PA28γ" . SPARSER::PROTEIN)
    ("NS5B" . SPARSER::PROTEIN) ("NS5A" . SPARSER::PROTEIN)
    ("NS4B" . SPARSER::PROTEIN) ("NS4A" . SPARSER::PROTEIN)
    ("core protein" . SPARSER::PROTEIN)
    ("sufficient microenvironmental cues" . SPARSER::PROTEIN-FAMILY)
    ("PC3-EV and C4-2B-EV" . SPARSER::COLLECTION)
    ("PC3-EV and PC3-KD" . SPARSER::COLLECTION)
    ("C4-2B-EV and C4-2B-KD" . SPARSER::COLLECTION) ("EV" . SPARSER::PROTEIN)
    ("PC3-KD and C4-2B-KD" . SPARSER::COLLECTION)
    ("LNCaP-EV and PC3-EV" . SPARSER::COLLECTION)
    ("LNCaP-EV" . SPARSER::PROTEIN-PAIR) ("IKK2-KD" . SPARSER::COLLECTION)
    ("EE" . SPARSER::PROTEIN) ("LNCaP-EE" . SPARSER::COLLECTION)
    ("the osteoclastogenesis-associated genes" . SPARSER::GENE)
    ("GFP/Luciferase" . SPARSER::COLLECTION) ("NGL" . SPARSER::PROTEIN)
    ("many osteoclastogenesis-associated genes" . SPARSER::GENE)
    ("RANKL, PTHrP, GM-CSF and uPA" . SPARSER::COLLECTION)
    ("osteoclastogenesis-associated genes" . SPARSER::GENE)
    ("RANKL and PTHrP" . SPARSER::COLLECTION)
    ("osteoclastogenic gene" . SPARSER::GENE)
    ("the matrix metalloproteinases (MMPs; specifically MMP-2 and MMP-9) as well as interleukin-1 (IL-1)"
     . SPARSER::COLLECTION)
    ("MMP-2 and MMP-9" . SPARSER::COLLECTION)
    ("uPA-plasmin" . SPARSER::COLLECTION)
    ("RANKL/RANK/OPG" . SPARSER::COLLECTION)
    ("the endogenous soluble RANKL inhibitor" . SPARSER::INHIBITOR)
    ("Ligand (RANKL)" . SPARSER::MOLECULE) ("OPG" . SPARSER::PROTEIN)
    ("osteoprotegerin" . SPARSER::PROTEIN) ("RANK" . SPARSER::PROTEIN)
    ("SREs" . SPARSER::PROTEIN-FAMILY)
    ("osteoblastic metastases form" . SPARSER::FORM)
    ("osteoclastogenic genes" . SPARSER::GENE)
    ("osteoclasts" . SPARSER::PROTEIN)
    ("PTHrP and RANKL" . SPARSER::COLLECTION) ("RANKL" . SPARSER::PROTEIN)
    ("PTHrP" . SPARSER::PROTEIN) ("H10" . SPARSER::PROTEIN)
    ("CT 40" . SPARSER::PROTEIN)
    ("Green Fluorescent Protein" . SPARSER::PROTEIN)
    ("A 20 µ" . SPARSER::PROTEIN) ("interleukin-1" . SPARSER::PROTEIN)
    ("MMP-2" . SPARSER::PROTEIN)
    ("urokinase-type plasminogen activator" . SPARSER::PROTEIN)
    ("PTH-1 receptor" . SPARSER::PROTEIN)
    ("Parathyroid hormone-related protein" . SPARSER::PROTEIN)
    ("collagen and fibronectin" . SPARSER::COLLECTION)
    ("siRNA, and α-SMA" . SPARSER::COLLECTION)
    ("mRNAs and proteins" . SPARSER::COLLECTION)
    ("-siRNA" . SPARSER::COLLECTION) ("siRNA-NC" . SPARSER::COLLECTION)
    ("NC" . SPARSER::PROTEIN)
    ("PDGF-AA, TGF-β 1, and PDGF-AA" . SPARSER::COLLECTION)
    ("10 ng/ml TGF-β 1 (T group), 25 ng/ml PDGF-AA (P group), and 10 ng/ml TGF-β 1"
     . SPARSER::COLLECTION)
    ("mRNA and Protein" . SPARSER::COLLECTION)
    ("TGF-β 1 and PDGF-AA" . SPARSER::COLLECTION)
    ("Vimentin" . SPARSER::PROTEIN) ("PDGF-A/PDGFR-α" . SPARSER::COLLECTION)
    ("PDGF-AA and TGF-β 1" . SPARSER::COLLECTION)
    ("PDGFR-α and α-SMA" . SPARSER::COLLECTION) ("Fra-2" . SPARSER::PROTEIN)
    ("TGF β 1" . SPARSER::PROTEIN) ("PDGFR α" . SPARSER::PROTEIN)
    ("PDGF-A" . SPARSER::PROTEIN) ("PDGFR-α" . SPARSER::PROTEIN)
    ("TGF-β 1" . SPARSER::PROTEIN) ("PDGF-AA" . SPARSER::PROTEIN)
    ("hnRPUL1 and hnRNPG" . SPARSER::COLLECTION) ("RBMX" . SPARSER::PROTEIN)
    ("hnRNPG" . SPARSER::PROTEIN) ("HnRNP" . SPARSER::PROTEIN)
    ("DNA and play" . SPARSER::COLLECTION)
    ("FLAG-hnRPUL1" . SPARSER::COLLECTION)
    ("anti-FLAG antibody and the precipitated proteins" . SPARSER::COLLECTION)
    ("FRAP" . SPARSER::PROTEIN) ("EGFP-PARP1" . SPARSER::COLLECTION)
    ("pADPr" . SPARSER::MOLECULE) ("PARPs" . SPARSER::MOLECULE)
    ("classical DSBs response proteins" . SPARSER::PROTEIN)
    ("Ku70/Ku80" . SPARSER::COLLECTION) ("CDDP" . SPARSER::DRUG)
    ("Ray" . SPARSER::PROTEIN) ("Arg-Gly-Gly" . SPARSER::COLLECTION)
    ("SAP" . SPARSER::PROTEIN) ("GFP-hnRPUL1" . SPARSER::COLLECTION)
    ("UVDE" . SPARSER::PROTEIN) ("endonuclease (UVDE)" . SPARSER::PROTEIN)
    ("XPA" . SPARSER::PROTEIN) ("EGFP-hnRPUL1" . SPARSER::COLLECTION)
    ("SSBs and DSBs" . SPARSER::COLLECTION) ("EGFP" . SPARSER::PROTEIN)
    ("ates" . SPARSER::PROTEIN)
    ("ATM, ATR, DNA-PK and p53" . SPARSER::COLLECTION)
    ("SSBs" . SPARSER::PROTEIN) ("TAP" . SPARSER::PROTEIN)
    ("hnRNP U and hnRNP G" . SPARSER::COLLECTION)
    ("adenovirus early region 1B-associated proteins" . SPARSER::PROTEIN)
    ("Heterogeneous nuclear ribonucleoproteins" . SPARSER::PROTEIN)
    ("ribonucleoproteins" . SPARSER::PROTEIN)
    ("Heterogeneous nuclear ribonucleoprotein U-like 1 (hnRPUL1) -also known as adenovirus early region 1B-associated proteins"
     . SPARSER::PROTEIN)
    ("hnRNPUL1" . SPARSER::PROTEIN) ("I-19" . SPARSER::PROTEIN)
    ("cis -diamminedichloroplatinum" . SPARSER::DRUG)
    ("FLJ12944" . SPARSER::PROTEIN) ("HnRPUL1" . SPARSER::PROTEIN)
    ("hnRNP G" . SPARSER::PROTEIN) ("hnRNP U" . SPARSER::PROTEIN)
    ("ADP-ribosyl" . SPARSER::MOLECULE) ("E1B-AP5" . SPARSER::PROTEIN)
    ("hnRPUL1" . SPARSER::PROTEIN)
    ("Heterogeneous nuclear ribonucleoprotein U" . SPARSER::PROTEIN)
    ("Kras, ErbB2 , NF1 , and NF2" . SPARSER::COLLECTION)
    ("nucleocytoplasmic ( i.e ., non plasma membrane) β-catenin"
     . SPARSER::PROTEIN)
    ("Akt/β-catenin" . SPARSER::COLLECTION)
    ("E-cadherin-β-catenin" . SPARSER::COLLECTION)
    ("MMTV-Wnt-1" . SPARSER::COLLECTION) ("MMTV-c-Neu" . SPARSER::COLLECTION)
    ("ErbB2 and β-catenin" . SPARSER::COLLECTION)
    ("employ clinically relevant inhibitors" . SPARSER::INHIBITOR)
    ("ErbB2-targeted therapeutic antibodies" . SPARSER::ANTIBODY)
    ("Myc and Cyclin D" . SPARSER::COLLECTION)
    ("both group A and B Paks ( xref )" . SPARSER::COLLECTION)
    ("tankyrase" . SPARSER::PROTEIN)
    ("Pak1 and β-catenin" . SPARSER::COLLECTION)
    ("aberrant acini" . SPARSER::PROTEIN)
    ("a phosphomimetic mutant" . SPARSER::MUTANT)
    ("fromNeu:Pak1" . SPARSER::BIO-COMPLEX)
    ("toNeu:Pak1" . SPARSER::BIO-COMPLEX) ("Neu:Pak1" . SPARSER::BIO-COMPLEX)
    ("thanNeu:Pak1" . SPARSER::BIO-COMPLEX) ("/Pak1" . SPARSER::COLLECTION)
    ("Pak2 and Pak3" . SPARSER::COLLECTION) ("Pak3" . SPARSER::PROTEIN)
    ("ERK, Akt, and β-catenin" . SPARSER::COLLECTION)
    ("ErbB2, ERK, Akt, β-catenin, and Pak" . SPARSER::COLLECTION)
    ("ERK, Akt, β-catenin, and Pak" . SPARSER::COLLECTION)
    ("inNeu:Pak1" . SPARSER::BIO-COMPLEX)
    ("MMTV-Neu/Pak1" . SPARSER::COLLECTION)
    ("andNeu:Pak1" . SPARSER::BIO-COMPLEX)
    ("ofNeu:Pak1" . SPARSER::BIO-COMPLEX) ("MMTV-" . SPARSER::PROTEIN)
    ("crossing-linking ErbB2" . SPARSER::PROTEIN)
    ("β-catenin, c-Myc, and cyclin D" . SPARSER::COLLECTION)
    ("almost all known β-catenin target genes" . SPARSER::GENE)
    ("c-Myc and cyclin D" . SPARSER::COLLECTION)
    ("BAD, and Akt" . SPARSER::COLLECTION)
    ("several dozen ErbB2-relevant phospho-protein specific antibodies"
     . SPARSER::ANTIBODY)
    ("phospho-antibody" . SPARSER::PROTEIN)
    ("Pak1 or Pak2-specific shRNA" . SPARSER::COLLECTION)
    ("c" . SPARSER::PROTEIN) ("EGF or AP1510" . SPARSER::COLLECTION)
    ("GFP-Pak2" . SPARSER::COLLECTION) ("GFP-Pak1" . SPARSER::COLLECTION)
    ("acini" . SPARSER::PROTEIN) ("ERK or Akt" . SPARSER::COLLECTION)
    ("anti-β-catenin" . SPARSER::COLLECTION)
    ("a stabilized β-catenin or a mutant form" . SPARSER::COLLECTION)
    ("Pak1 or Pak2" . SPARSER::COLLECTION)
    ("Pak1 and Pak2" . SPARSER::COLLECTION) ("Mek1" . SPARSER::PROTEIN)
    ("c-Raf" . SPARSER::COLLECTION) ("Mek" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cdc42/Rac" . SPARSER::COLLECTION) ("Src/Fak" . SPARSER::COLLECTION)
    ("Ras/ERK" . SPARSER::COLLECTION) ("Fak" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ErbB1 or ErbB3" . SPARSER::COLLECTION)
    ("β-catenin and its target genes" . SPARSER::COLLECTION)
    ("NF2" . SPARSER::PROTEIN) ("Jab1" . SPARSER::PROTEIN)
    ("Wnt-1" . SPARSER::PROTEIN) ("beta catenin" . SPARSER::PROTEIN)
    ("anti-ErbB2" . SPARSER::DRUG) ("Cyclin D" . SPARSER::PROTEIN)
    ("TNKS1" . SPARSER::PROTEIN) ("group A" . SPARSER::PROTEIN)
    ("PF-3758309" . SPARSER::DRUG) ("phospho-protein" . SPARSER::PROTEIN)
    ("For 3" . SPARSER::PROTEIN) ("ErbB1" . SPARSER::PROTEIN)
    ("Pak2" . SPARSER::PROTEIN) ("Pak1" . SPARSER::PROTEIN)
    ("p21-activated kinase-1" . SPARSER::PROTEIN)
    ("RalBP1-Akt" . SPARSER::COLLECTION) ("RalA–PLD1" . SPARSER::COLLECTION)
    ("Ral or RalBP1" . SPARSER::COLLECTION)
    ("RalA-RalBP1" . SPARSER::COLLECTION)
    ("subunits, or PLD1" . SPARSER::COLLECTION)
    ("subunits, and PLD1" . SPARSER::COLLECTION)
    ("Ras-Ral-GEF" . SPARSER::COLLECTION)
    ("RalB and RalA" . SPARSER::COLLECTION)
    ("p27 ( xref ) and both RalA and RalB" . SPARSER::COLLECTION)
    ("RalA(Q72L) and RalA(Q72L/ΔN11)" . SPARSER::COLLECTION)
    ("PI3K and Akt" . SPARSER::COLLECTION)
    ("LY294002 (PI3K inhibitor) and MK-2206 (Akt inhibitor; xref )"
     . SPARSER::COLLECTION)
    ("DN-PLD1 or RalA" . SPARSER::COLLECTION)
    ("RalA(Q72L/D49N) and RalA(Q72L/ΔN11)" . SPARSER::COLLECTION)
    ("RalBP1 or PLD1" . SPARSER::COLLECTION)
    ("RalBP1 and PLD1" . SPARSER::COLLECTION)
    ("cyclins and CDK" . SPARSER::COLLECTION) ("CK-" . SPARSER::PROTEIN)
    ("mutat­ing" . SPARSER::COLLECTION) ("ing" . SPARSER::PROTEIN-FAMILY)
    ("cyclin E–CDK2" . SPARSER::COLLECTION) ("tilt" . SPARSER::DRUG)
    ("either N-Ras(Q61K) or RalA(Q72L)" . SPARSER::COLLECTION)
    ("butanol" . SPARSER::PROTEIN) ("iso-butanol" . SPARSER::PROTEIN-PAIR)
    ("iso" . SPARSER::PROTEIN) ("DN-PLD1 and DN-PLD2" . SPARSER::COLLECTION)
    ("–p27" . SPARSER::COLLECTION) ("Ral-PLD1" . SPARSER::COLLECTION)
    ("RalBP1-RalA" . SPARSER::COLLECTION)
    ("RalBP1 or Sec5" . SPARSER::COLLECTION)
    ("RalBP1 and the exocyst complex" . SPARSER::COLLECTION)
    ("N-Ras(Q61K) and RalA(Q72L)" . SPARSER::COLLECTION)
    ("dominant-negative (DN)–RalA" . SPARSER::COLLECTION)
    ("–RalA" . SPARSER::COLLECTION) ("GFP-p27" . SPARSER::COLLECTION)
    ("RalA and RalA-derived mutants" . SPARSER::COLLECTION)
    ("RalA or RalB" . SPARSER::COLLECTION)
    ("their constitutively active forms—RalA(Q72L) and RalB(Q72L)"
     . SPARSER::COLLECTION)
    ("the CDK inhibitors p15 Ink4B (prominent in Mv1Lu mink lung epithelial cells) and p21 Waf/Cip1 ( xref ; xref ; xref )"
     . SPARSER::COLLECTION)
    ("Cdc25A, and CDK4/6" . SPARSER::COLLECTION)
    ("Both RalBP1 and the exocyst subunits" . SPARSER::COLLECTION)
    ("Cdc42 and Rac" . SPARSER::COLLECTION)
    ("Sec5 and Exo84" . SPARSER::COLLECTION) ("Sec5" . SPARSER::PROTEIN)
    ("exocyst" . SPARSER::BIO-COMPLEX) ("cyclin–CDK" . SPARSER::COLLECTION)
    ("cyclin D–" . SPARSER::PROTEIN) ("RalA and p27" . SPARSER::COLLECTION)
    ("protein kinase B/Akt" . SPARSER::COLLECTION)
    ("RalA and murine p27" . SPARSER::COLLECTION)
    ("RalBP1 and phospholipase D1" . SPARSER::COLLECTION)
    ("RalA and RalB" . SPARSER::COLLECTION) ("RalB" . SPARSER::PROTEIN)
    ("RalA" . SPARSER::PROTEIN) ("Gel2" . SPARSER::PROTEIN)
    ("Gag-Pol" . SPARSER::PROTEIN)
    ("Green fluorescent protein" . SPARSER::PROTEIN) ("L32" . SPARSER::PROTEIN)
    ("Smad3" . SPARSER::PROTEIN) ("NSC 23766" . SPARSER::DRUG)
    ("S10" . SPARSER::PROTEIN) ("PLD2" . SPARSER::PROTEIN)
    ("p15 Ink4B" . SPARSER::PROTEIN) ("Smad4" . SPARSER::PROTEIN)
    ("Exo84" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Cdc42" . SPARSER::PROTEIN)
    ("Rho-GAP" . SPARSER::PROTEIN) ("RLIP76" . SPARSER::PROTEIN)
    ("phospholipase D1" . SPARSER::PROTEIN) ("Ral-GEF" . SPARSER::PROTEIN)
    ("Kip1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PLD1" . SPARSER::PROTEIN)
    ("RalBP1" . SPARSER::PROTEIN) ("AKT or PKC" . SPARSER::COLLECTION)
    ("PKC, CaMKII and AKT" . SPARSER::COLLECTION) ("CaMKII" . SPARSER::PROTEIN)
    ("MEK-KSR-ERK" . SPARSER::COLLECTION)
    ("a catalytically competent conformation" . SPARSER::BIO-CONFORMATION)
    ("the helical conformation" . SPARSER::BIO-CONFORMATION)
    ("pThr and pTyr" . SPARSER::COLLECTION)
    ("ERK2-PEA-15" . SPARSER::COLLECTION)
    ("the same helical conformation" . SPARSER::BIO-CONFORMATION)
    ("ERK2 and PEA-15" . SPARSER::COLLECTION)
    ("the phosphomimetic Glu185 mutant" . SPARSER::MUTANT)
    ("helical conformation" . SPARSER::BIO-CONFORMATION)
    ("a helical conformation" . SPARSER::BIO-CONFORMATION)
    ("pThr" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("PEA-15 and ERK2" . SPARSER::COLLECTION)
    ("ERK2-DEF" . SPARSER::COLLECTION) ("PEA15–ERK2" . SPARSER::COLLECTION)
    ("ERK2–DEF" . SPARSER::COLLECTION)
    ("a minimal inverse D-peptide" . SPARSER::PROTEIN)
    ("MNK1 and RSK1" . SPARSER::COLLECTION) ("D-peptide" . SPARSER::PROTEIN)
    ("D-peptides" . SPARSER::PROTEIN)
    ("MAP kinase–D-peptide" . SPARSER::PROTEIN-PAIR)
    ("MAP kinase phosphatase and hematopoietic tyrosine phosphatase"
     . SPARSER::COLLECTION)
    ("DCC, MAP kinase phosphatase and hematopoietic tyrosine phosphatase"
     . SPARSER::COLLECTION)
    ("DCC" . SPARSER::PROTEIN)
    ("scaffold proteins as well as components" . SPARSER::COLLECTION)
    ("proteins, and phosphatases" . SPARSER::COLLECTION)
    ("RK" . SPARSER::PROTEIN) ("ERK2–PEA15" . SPARSER::COLLECTION)
    ("an activation loop phosphomimetic (T185E) mutant" . SPARSER::MUTANT)
    ("phosphomimetic mutants" . SPARSER::MUTANT)
    ("PEA-15-ERK" . SPARSER::COLLECTION) ("PEA-15–ERK2" . SPARSER::COLLECTION)
    ("ERK-PEA-15" . SPARSER::COLLECTION) ("mere" . SPARSER::PROTEIN-FAMILY)
    ("DEF" . SPARSER::PROTEIN)
    ("the classical ERK1/2 substrates ELK-1 and ETS-1" . SPARSER::COLLECTION)
    ("ELK-1 and ETS-1" . SPARSER::COLLECTION)
    ("directly binding ERK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("RAS–RAF–MEK" . SPARSER::COLLECTION)
    ("Ras (KSR)" . SPARSER::HUMAN-PROTEIN-FAMILY) ("KSR" . SPARSER::PROTEIN)
    ("Suppressor" . SPARSER::SUPPRESSOR)
    ("the dual specificity MAP Kinase Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the RAS small GTPase and the RAF serine/threonine kinase"
     . SPARSER::COLLECTION)
    ("RAS–RAF–MEK–ERK" . SPARSER::COLLECTION)
    ("the principal effectors" . SPARSER::EFFECTOR) ("Q 10" . SPARSER::PROTEIN)
    ("SENP1" . SPARSER::PROTEIN) ("Q15121" . SPARSER::PROTEIN)
    ("cAMP-dependent" . SPARSER::PROTEIN)
    ("MAP kinases" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Fus3" . SPARSER::PROTEIN)
    ("Ste5" . SPARSER::PROTEIN-FAMILY) ("PEA15" . SPARSER::PROTEIN)
    ("ETS-1" . SPARSER::PROTEIN)
    ("MAP Kinase Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Fluorochromes" . SPARSER::MOLECULE) ("ASW" . SPARSER::PROTEIN)
    ("PBS/BSA" . SPARSER::COLLECTION) ("Glass" . SPARSER::MOLECULE)
    ("polyclonal rabbit anti-Nrf2" . SPARSER::ANTIBODY)
    ("ice-cold 4% formaldehyde" . SPARSER::MOLECULE) ("BSA" . SPARSER::PROTEIN)
    ("porin" . SPARSER::PROTEIN)
    ("the primary anti-Frataxin antibody (1:250, Millipore, Temecula, CA, USA) and anti Nrf2 (AbC20, dilution 1:500, Santa Cruz Biotechnology, Santa Cruz, CA, USA)"
     . SPARSER::COLLECTION)
    ("LI-COR" . SPARSER::COLLECTION) ("COR" . SPARSER::PROTEIN-FAMILY)
    ("glyceraldehyde-3-phosphate dehydrogenase (GAPDH)" . SPARSER::PROTEIN)
    ("intron–exon" . SPARSER::COLLECTION)
    ("-tccagtcataacgcttaggtccac-3" . SPARSER::COLLECTION)
    ("-ttaaggctttagtgagctctg-3" . SPARSER::COLLECTION)
    ("-gtggagatctaggaacctatg-3" . SPARSER::COLLECTION)
    ("ImProm-II reverse transcriptase (Promega, Madison, WI, USA) and oligodT"
     . SPARSER::COLLECTION)
    ("DNase-treated RNA" . SPARSER::RNA) ("Tel" . SPARSER::PROTEIN)
    ("Antibiotic" . SPARSER::DRUG) ("Trypsinized" . SPARSER::PROTEIN)
    ("ShRNA" . SPARSER::PROTEIN) ("Glu-" . SPARSER::AMINO-ACID)
    ("Peptide" . SPARSER::PEPTIDE) ("-lysine" . SPARSER::COLLECTION)
    ("cytoskeletal proteins" . SPARSER::PROTEIN)
    ("Nrf2-Keap1" . SPARSER::COLLECTION)
    ("DRG and cerebella" . SPARSER::COLLECTION) ("DRG" . SPARSER::PROTEIN)
    ("cytoprotective genes" . SPARSER::GENE) ("Frataxin" . SPARSER::PROTEIN)
    ("glutamate-cysteine ligase catalytic subunit (GCLC) and glutamate-cysteine ligase modifier subunit (GCLM) [ xref – xref ]"
     . SPARSER::COLLECTION)
    ("glutamate-cysteine ligase modifier subunit (GCLM)" . SPARSER::PROTEIN)
    ("GCLM" . SPARSER::PROTEIN) ("GCLC" . SPARSER::PROTEIN)
    ("superoxide" . SPARSER::MOLECULE) ("oxygenase" . SPARSER::PROTEIN)
    ("YG" . SPARSER::MOLECULE) ("aconitase" . SPARSER::PROTEIN)
    ("MRS" . SPARSER::PROTEIN) ("sulphur" . SPARSER::MOLECULE)
    ("triplex DNA" . SPARSER::DNA) ("FXN" . SPARSER::PROTEIN)
    ("response element (ARE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("Ataxia (FRDA)" . SPARSER::PROTEIN) ("frataxin" . SPARSER::PROTEIN)
    ("FRDA" . SPARSER::PROTEIN) ("Bis–Tris" . SPARSER::MOLECULE)
    ("Gly-Cys" . SPARSER::MOLECULE) ("Keap1" . SPARSER::PROTEIN)
    ("B–D" . SPARSER::PROTEIN)
    ("glutamate-cysteine ligase modifier subunit" . SPARSER::PROTEIN)
    ("glutamate-cysteine ligase catalytic subunit" . SPARSER::PROTEIN)
    ("free-radical" . SPARSER::MOLECULE)
    ("autosomal recessive" . SPARSER::PROTEIN)
    ("pro-oxidants" . SPARSER::MOLECULE) ("NF-E2" . SPARSER::PROTEIN)
    ("endothelial-induced EMT" . SPARSER::PROTEIN)
    ("fibronectin and extracellular matrix-entrapped growth factors"
     . SPARSER::COLLECTION)
    ("laminin" . SPARSER::PROTEIN) ("p-EGFR" . SPARSER::COLLECTION)
    ("Partial" . SPARSER::PROTEIN) ("distinct luminal-" . SPARSER::DRUG)
    ("SPRY2-KD" . SPARSER::COLLECTION) ("KD3" . SPARSER::PROTEIN)
    ("D492 SPRY2-KD3 and D492 SPRY2-KD3A" . SPARSER::COLLECTION)
    ("SPRY2-KD3" . SPARSER::COLLECTION) ("SPRY2-KD1" . SPARSER::COLLECTION)
    ("EGFR and SPRY2" . SPARSER::COLLECTION)
    ("SPRY2 and pEGFR" . SPARSER::COLLECTION)
    ("no commercially available antibody" . SPARSER::PROTEIN)
    ("SPRY2 and CK14" . SPARSER::COLLECTION)
    ("cytokeratin (CK)" . SPARSER::PROTEIN-FAMILY)
    ("lactating" . SPARSER::MOLECULE) ("LEP and MEP" . SPARSER::COLLECTION)
    ("luminal- (LEP)" . SPARSER::DRUG) ("luminal-" . SPARSER::DRUG)
    ("MEP" . SPARSER::PROTEIN) ("FGFR, c-Met and EGFR" . SPARSER::COLLECTION)
    ("their respective receptors" . SPARSER::PROTEIN)
    ("FGFs and EGFs" . SPARSER::COLLECTION)
    ("fibroblast growth factor receptors (FGFRs) and epidermal growth factor receptors (EGFRs)"
     . SPARSER::COLLECTION)
    ("EGFRs" . SPARSER::PROTEIN) ("SPRY2 and EGFR" . SPARSER::COLLECTION)
    ("the pregnant mammary gland SPRY2" . SPARSER::PROTEIN)
    ("epidermal growth factor receptor (EGFR) and the sprouty protein family"
     . SPARSER::COLLECTION)
    ("sprouty" . SPARSER::PROTEIN-FAMILY) ("pERK1/2" . SPARSER::PROTEIN)
    ("LSM 5" . SPARSER::PROTEIN) ("ki67" . SPARSER::PROTEIN)
    ("Keratin 14" . SPARSER::PROTEIN) ("Keratin 19" . SPARSER::PROTEIN)
    ("CD-31" . SPARSER::PROTEIN) ("3 D" . SPARSER::PROTEIN-FAMILY)
    ("Casitas B-lineage lymphoma" . SPARSER::PROTEIN)
    ("PI-3 kinase" . SPARSER::PROTEIN)
    ("epidermal growth factor receptors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SPRY2" . SPARSER::PROTEIN) ("Sprouty-2" . SPARSER::PROTEIN)
    ("Receptor tyrosine kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Beclin-1/Vps34" . SPARSER::COLLECTION) ("ARF" . SPARSER::PROTEIN)
    ("autophagic genes" . SPARSER::GENE)
    ("a haplo-insufficient tumor-suppressor gene" . SPARSER::GENE)
    ("one essential component" . SPARSER::COMPONENT)
    ("highly-expressed Bcl-xL" . SPARSER::PROTEIN)
    ("the low Beclin 1/low Bcl-xL and the high Beclin 1/high Bcl-xL"
     . SPARSER::COLLECTION)
    ("Beclin1 and Bcl-xL" . SPARSER::COLLECTION)
    ("our ovarian carcinoma cohort" . SPARSER::MOLECULE)
    ("Medicine" . SPARSER::DRUG) ("a reliable biomarker" . SPARSER::MOLECULE)
    ("Atg14 and UVRAG" . SPARSER::COLLECTION) ("Vps34" . SPARSER::PROTEIN)
    ("Ambra1" . SPARSER::PROTEIN) ("UVRAG" . SPARSER::PROTEIN)
    ("Vps" . SPARSER::PROTEIN) ("ovarian carcinoma cohort" . SPARSER::MOLECULE)
    ("pM" . SPARSER::PROTEIN) ("Beclin 1 and Bcl-xL" . SPARSER::COLLECTION)
    ("pN1" . SPARSER::PROTEIN) ("Beclin1" . SPARSER::PROTEIN)
    ("P1–3" . SPARSER::PROTEIN) ("Atg14" . SPARSER::PROTEIN)
    ("Bif-1" . SPARSER::PROTEIN) ("hMLH1 or hMSH2" . SPARSER::COLLECTION)
    ("BG-CRC" . SPARSER::COLLECTION)
    ("sporadic (3.90%, 17/436) CRC" . SPARSER::PROTEIN)
    ("TA and c" . SPARSER::COLLECTION) ("ins" . SPARSER::PROTEIN)
    ("hPMS2/hPMS1" . SPARSER::COLLECTION)
    ("novel DNA variants and 12" . SPARSER::COLLECTION)
    ("distal colon cancer" . SPARSER::PROTEIN)
    ("proximal colon cancer" . SPARSER::PROTEIN)
    ("hMLH1 and c" . SPARSER::COLLECTION) ("CC" . SPARSER::PROTEIN)
    ("available blood DNA" . SPARSER::DNA)
    ("the hMLH1 gene and the c" . SPARSER::COLLECTION)
    ("TC" . SPARSER::PROTEIN) ("GAA and c" . SPARSER::COLLECTION)
    ("GAA" . SPARSER::PROTEIN) ("hMLH1/hMSH2" . SPARSER::COLLECTION)
    ("220,000 new CRC" . SPARSER::PROTEIN) ("p " . SPARSER::PROTEIN)
    ("p  " . SPARSER::PROTEIN)
    ("11 hMLH1 and seven hMSH2 DNA variants" . SPARSER::COLLECTION)
    ("mass sporadic CRC" . SPARSER::PROTEIN) ("19 A" . SPARSER::PROTEIN)
    ("16 A" . SPARSER::PROTEIN) ("Dual inhibitors" . SPARSER::INHIBITOR)
    ("rapamycin and various cytotoxic drugs" . SPARSER::COLLECTION)
    ("conventionally used chemotherapeutic drugs" . SPARSER::DRUG)
    ("dexamethasone, doxorubicin, etoposide, vincristine and asparaginase"
     . SPARSER::COLLECTION)
    ("asparaginase" . SPARSER::PROTEIN) ("dexamethasone" . SPARSER::PROTEIN)
    ("DLTs" . SPARSER::PROTEIN) ("sirolimus" . SPARSER::DRUG)
    ("MTI" . SPARSER::PROTEIN) ("p-S6–" . SPARSER::PROTEIN)
    ("PDK1, MAPKs and stress activated protein kinase" . SPARSER::COLLECTION)
    ("SAPK" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p-p70S6K" . SPARSER::COLLECTION)
    ("etoposide, vincristine and methyl-prednisolone" . SPARSER::COLLECTION)
    ("rapamycin and chemotherapeutic drugs" . SPARSER::COLLECTION)
    ("cytosine arabinoside, etoposide and methyl-prednisolone"
     . SPARSER::COLLECTION)
    ("doxorubicin, etoposide, vincristine, methotrexate and methyl-prednisolone"
     . SPARSER::COLLECTION)
    ("prednisolone" . SPARSER::DRUG) ("p-S6 and p-4EBP1" . SPARSER::COLLECTION)
    ("P-S6 and p-4EBP1" . SPARSER::COLLECTION) ("BCP-" . SPARSER::PROTEIN)
    ("BCP" . SPARSER::PROTEIN) ("Temsirolimus" . SPARSER::DRUG)
    ("IGF-1R and c-kit" . SPARSER::COLLECTION) ("flt-3" . SPARSER::PROTEIN)
    ("two key translational regulators" . SPARSER::REGULATOR)
    ("currently used mTOR inhibitors" . SPARSER::INHIBITOR)
    ("MTIs" . SPARSER::PROTEIN) ("kinases and NOTCH1" . SPARSER::COLLECTION)
    ("ABL" . SPARSER::PROTEIN) ("‘active’" . SPARSER::ACTIVE)
    ("Acute lymphoblastic leukemia (ALL)" . SPARSER::PROTEIN)
    ("stress activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P-4" . SPARSER::PROTEIN) ("P-S6" . SPARSER::PROTEIN)
    ("chi 2" . SPARSER::PROTEIN) ("p4" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Qdot 705" . SPARSER::MOLECULE) ("Ribosomal Protein" . SPARSER::PROTEIN)
    ("ETV6" . SPARSER::PROTEIN) ("Anti-neoplastic" . SPARSER::DRUG)
    ("FBW7" . SPARSER::PROTEIN) ("IL-7R" . SPARSER::PROTEIN)
    ("BCR-ABL" . SPARSER::PROTEIN) ("TCL1" . SPARSER::PROTEIN)
    ("EBP1" . SPARSER::PROTEIN)
    ("ACBD3, TBC1D22A/B, and GBF1" . SPARSER::COLLECTION)
    ("ACBD3 or TBC1D22A/B" . SPARSER::COLLECTION)
    ("immunoprecipitation-competent antibodies" . SPARSER::ANTIBODY)
    ("ACBD3 and TBC1D22A/B" . SPARSER::COLLECTION)
    ("ACBD3 and/or TBC1D22A/B" . SPARSER::COLLECTION)
    ("a 3A-GBF1-ACBD3-PI4KB" . SPARSER::COLLECTION)
    ("GBF1-Arf1" . SPARSER::COLLECTION)
    ("ACBD3-PI4KB-TBC1D22A/B" . SPARSER::COLLECTION)
    ("TBC1D22A/B-ACBD3" . SPARSER::COLLECTION)
    ("the kobuviral 3A proteins" . SPARSER::PROTEIN)
    ("ACBD3 and PI4KB" . SPARSER::COLLECTION)
    ("The picornaviral 3A proteins" . SPARSER::PROTEIN)
    ("TBC1D22A/B or PI4KB" . SPARSER::COLLECTION)
    ("TBC1D22B and PI4KB" . SPARSER::COLLECTION)
    ("alanine or glutamic acid" . SPARSER::COLLECTION)
    ("TBC1D22A/B and ACBD3" . SPARSER::COLLECTION)
    ("the kobuviral and enteroviral 3A proteins" . SPARSER::PROTEIN)
    ("TBC1D22A-ACBD3-containing complexes" . SPARSER::BIO-COMPLEX)
    ("3A-Flag and Aichi" . SPARSER::COLLECTION)
    ("PI4KB and TBC1D22A" . SPARSER::COLLECTION)
    ("proteins and TBC1D22A-V5" . SPARSER::COLLECTION)
    ("Aichi virus 3A-Flag or poliovirus 3A-Flag" . SPARSER::COLLECTION)
    ("TBC1D22A-ACBD3" . SPARSER::COLLECTION)
    ("ACBD3-PI4KB" . SPARSER::COLLECTION)
    ("Kobuviral 3A proteins" . SPARSER::PROTEIN) ("KGA" . SPARSER::PROTEIN)
    ("viral 3A proteins" . SPARSER::PROTEIN) ("SYL" . SPARSER::PROTEIN)
    ("only three amino acids" . SPARSER::AMINO-ACID) ("SYS" . SPARSER::PROTEIN)
    ("both picornaviral 3A proteins" . SPARSER::PROTEIN)
    ("enteroviral and kobuviral 3A proteins" . SPARSER::PROTEIN)
    ("ACBD3-Strep" . SPARSER::PROTEIN-PAIR)
    ("TBC1D22A-Flag" . SPARSER::COLLECTION)
    ("proteins and ACBD3" . SPARSER::COLLECTION)
    ("TBC1D22A/B and PI4KB" . SPARSER::COLLECTION)
    ("ACBD3, C10orf76, or Rab11B" . SPARSER::COLLECTION)
    ("QE" . SPARSER::MOLECULE) ("IDP" . SPARSER::PROTEIN)
    ("mammalian two-hybrid mapping" . SPARSER::PROTEIN)
    ("Mammalian two-hybrid mapping" . SPARSER::PROTEIN)
    ("valine-leucine" . SPARSER::COLLECTION) ("Alanine" . SPARSER::AMINO-ACID)
    ("both mammalian two-hybrid mapping" . SPARSER::PROTEIN)
    ("PGN" . SPARSER::PROTEIN) ("Mapping" . SPARSER::PROTEIN)
    ("potentially competitive binding states" . SPARSER::BIO-STATE)
    ("TBC1D22A/B" . SPARSER::PROTEIN)
    ("ACBD3-TBC1D22A/B" . SPARSER::PROTEIN-PAIR) ("GBA" . SPARSER::PROTEIN)
    ("PI4KB-ACBD3" . SPARSER::COLLECTION)
    ("TBC1D22A or TBC1D22B" . SPARSER::COLLECTION)
    ("ACBD3-TBC1D22A" . SPARSER::COLLECTION)
    ("ACBD3 and 14-3-3" . SPARSER::COLLECTION)
    ("included potassium chloride and divalent cations ( xref )"
     . SPARSER::COLLECTION)
    ("divalent cations" . SPARSER::MOLECULE) ("cations" . SPARSER::MOLECULE)
    ("transmembrane protein 55B isoform 2 (TMEM55B) and protein phosphatase 1H (PPM1H)"
     . SPARSER::COLLECTION)
    ("Nonspecific interacting proteins" . SPARSER::PROTEIN)
    ("the multifunctional protein ACBD3" . SPARSER::PROTEIN)
    ("picornaviral 3A proteins" . SPARSER::PROTEIN)
    ("Detailed mapping" . SPARSER::PROTEIN)
    ("hantavirus nonstructural proteins" . SPARSER::PROTEIN)
    ("a highly conserved Golgi complex-associated 60-kDa protein"
     . SPARSER::PROTEIN)
    ("giantin/GOLGB1" . SPARSER::COLLECTION) ("giantin" . SPARSER::PROTEIN)
    ("Arf1" . SPARSER::PROTEIN) ("metazoan" . SPARSER::PROTEIN-FAMILY)
    ("GOLD" . SPARSER::MOLECULE) ("PI4KB and TBC1D22A/B" . SPARSER::COLLECTION)
    ("TBC1D22A and TBC1D22B" . SPARSER::COLLECTION)
    ("ACBD3/GCP60" . SPARSER::COLLECTION) ("coenzyme" . SPARSER::MOLECULE)
    ("pG5" . SPARSER::PROTEIN) ("a 3A" . SPARSER::PROTEIN)
    ("A’" . SPARSER::PROTEIN) ("Rab11B" . SPARSER::PROTEIN)
    ("ARFGEF1" . SPARSER::PROTEIN) ("MTA2" . SPARSER::PROTEIN)
    ("PRKD1" . SPARSER::PROTEIN) ("Rab33A" . SPARSER::PROTEIN)
    ("PPM1H" . SPARSER::PROTEIN) ("TMEM55B" . SPARSER::PROTEIN)
    ("transmembrane protein 55B" . SPARSER::PROTEIN)
    ("TBC1 domain family member 22A" . SPARSER::PROTEIN)
    ("GOLGB1" . SPARSER::PROTEIN) ("GBF1" . SPARSER::PROTEIN)
    ("TBC1D22B" . SPARSER::PROTEIN) ("TBC1D22A" . SPARSER::PROTEIN)
    ("PI4KB" . SPARSER::PROTEIN)
    ("phosphatidylinositol 4-kinase" . SPARSER::PROTEIN)
    ("GCP60" . SPARSER::PROTEIN) ("ACBD3" . SPARSER::PROTEIN)
    ("acyl-CoA" . SPARSER::MOLECULE) ("available DNAs" . SPARSER::DNA)
    ("TP53, and rs35850753" . SPARSER::COLLECTION)
    ("CDKN2A/CDKN2B" . SPARSER::COLLECTION) ("RTEL1" . SPARSER::PROTEIN)
    ("PHLDB1" . SPARSER::PROTEIN) ("CDKN2B" . SPARSER::PROTEIN)
    ("CCDC26" . SPARSER::PROTEIN) ("thyrotropin" . SPARSER::DRUG)
    ("aggressive molecular patho genesis" . SPARSER::PROTEIN)
    ("all PTC and conventional PTC" . SPARSER::COLLECTION)
    ("the follicular variant PTC group" . SPARSER::MOLECULE)
    ("nucleotide or vice" . SPARSER::COLLECTION)
    ("Oncogene" . SPARSER::ONCOGENE)
    ("conventional PTC and follicular variant PTC" . SPARSER::COLLECTION)
    ("follicular variant PTC" . SPARSER::PROTEIN) ("SLC5A8" . SPARSER::PROTEIN)
    ("death-associated protein kinase" . SPARSER::PROTEIN)
    ("mask" . SPARSER::PROTEIN)
    ("MAP kinase and JAK–STAT" . SPARSER::COLLECTION)
    ("oesophageal SCCs" . SPARSER::PROTEIN)
    ("ATP-binding cassette" . SPARSER::PROTEIN) ("JAK–STAT" . SPARSER::PROTEIN)
    ("PI3K–Akt" . SPARSER::PROTEIN) ("c-kit" . SPARSER::PROTEIN)
    ("MTA-1" . SPARSER::PROTEIN) ("stem cell factor" . SPARSER::PROTEIN)
    ("type III" . SPARSER::HUMAN-PROTEIN-FAMILY) ("c- kit" . SPARSER::PROTEIN)
    ("PA" . SPARSER::PROTEIN) ("JG" . SPARSER::PROTEIN)
    ("functional p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("only one mutant p" . SPARSER::PROTEIN)
    ("homozygous and heterozygous states" . SPARSER::BIO-STATE)
    ("CCS" . SPARSER::PROTEIN) ("PALB2 , BRIP1 and ATM" . SPARSER::COLLECTION)
    ("Fanconi" . SPARSER::PROTEIN-FAMILY)
    ("the homozygous state" . SPARSER::BIO-STATE)
    ("the heterozygous state" . SPARSER::BIO-STATE)
    ("apparently sporadic ACC" . SPARSER::PROTEIN)
    ("no suspicious proliferative lesions detectable using standard whole-body MRI"
     . SPARSER::PROTEIN)
    ("developed ACC" . SPARSER::PROTEIN) ("Multiplex ligand" . SPARSER::LIGAND)
    ("MRC" . SPARSER::PROTEIN) ("SALSA" . SPARSER::PROTEIN)
    ("the Brazilian founder p" . SPARSER::PROTEIN)
    ("R337H Brazilian founder allele" . SPARSER::ALLELE)
    ("the entire TP53" . SPARSER::PROTEIN)
    ("heterozygous TP53 p" . SPARSER::PROTEIN)
    ("homozygote" . SPARSER::PROTEIN) ("bidirectional gene" . SPARSER::GENE)
    ("PRISM" . SPARSER::PROTEIN) ("ABI" . SPARSER::PROTEIN-FAMILY)
    ("MX" . SPARSER::PROTEIN) ("spin" . SPARSER::PROTEIN)
    ("Prep" . SPARSER::PROTEIN) ("Paris" . SPARSER::PROTEIN)
    ("Delta" . SPARSER::PROTEIN) ("undetectable androgens" . SPARSER::DRUG)
    ("SD " . SPARSER::PROTEIN) ("Urinary free cortisol" . SPARSER::DRUG)
    ("sulphate (DHEAS) " . SPARSER::MOLECULE) ("dl" . SPARSER::MOLECULE)
    ("androstenedione " . SPARSER::PROTEIN)
    ("dehydroepiandrosterone " . SPARSER::MOLECULE) ("nl" . SPARSER::PROTEIN)
    ("DHEAS" . SPARSER::MOLECULE)
    ("dehydroepiandrosterone" . SPARSER::MOLECULE)
    ("creatinine" . SPARSER::PROTEIN) ("homozygotes" . SPARSER::PROTEIN)
    ("oligomerisation" . SPARSER::PROTEIN-FAMILY)
    ("the classical forms" . SPARSER::FORM)
    ("LFS and LFL" . SPARSER::COLLECTION)
    ("the classical form" . SPARSER::FORM)
    ("the homozygous TP53 p" . SPARSER::PROTEIN)
    ("a conditional mutant" . SPARSER::MUTANT)
    ("two mutant TP53 alleles and no wild-type allele" . SPARSER::COLLECTION)
    ("LFS" . SPARSER::PROTEIN) ("BRIP1" . SPARSER::PROTEIN)
    ("53 kD" . SPARSER::PROTEIN) ("mega" . SPARSER::MOLECULE)
    ("TAS2R3 , TAS2R4 and TAS2R5" . SPARSER::COLLECTION)
    ("DQ" . SPARSER::MOLECULE) ("SDPR" . SPARSER::PROTEIN)
    ("This latter gene" . SPARSER::GENE)
    ("ZNF804B, CSRP2BP, NTNG1, AKAP6 and CDH9" . SPARSER::COLLECTION)
    ("AKAP" . SPARSER::PROTEIN) ("genes and pathways" . SPARSER::COLLECTION)
    ("TAS2R5" . SPARSER::PROTEIN) ("TAS2R4" . SPARSER::PROTEIN)
    ("TAS2R3" . SPARSER::PROTEIN) ("taste receptor" . SPARSER::PROTEIN)
    ("Piwi-interacting RNA" . SPARSER::RNA) ("Factor 2" . SPARSER::PROTEIN)
    ("Factor 1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TRPS1" . SPARSER::PROTEIN)
    ("SHC4" . SPARSER::PROTEIN) ("CCNL1" . SPARSER::PROTEIN)
    ("RUFY1" . SPARSER::PROTEIN) ("CDH9" . SPARSER::PROTEIN)
    ("NTNG1" . SPARSER::PROTEIN) ("ZNF804B" . SPARSER::PROTEIN)
    ("D11" . SPARSER::PROTEIN) ("HTR1D" . SPARSER::PROTEIN)
    ("receptor 1" . SPARSER::PROTEIN) ("5-HT" . SPARSER::PROTEIN)
    ("OPRD1" . SPARSER::PROTEIN) ("opioid receptor" . SPARSER::PROTEIN)
    ("ATP8A2" . SPARSER::PROTEIN) ("NT5C1B" . SPARSER::PROTEIN)
    ("SYTL5" . SPARSER::PROTEIN) ("TSHZ1" . SPARSER::PROTEIN)
    ("CLEC5A" . SPARSER::PROTEIN) ("MuRF1 or Atrogin1" . SPARSER::COLLECTION)
    ("sarcomeric proteins" . SPARSER::PROTEIN)
    ("Atrogin1 and MuRF1" . SPARSER::COLLECTION)
    ("cardiac Bnip3" . SPARSER::PROTEIN)
    ("activating and deactivating cardiac genes" . SPARSER::GENE)
    ("protein or mRNA" . SPARSER::COLLECTION)
    ("Bax, Bak, and Bok" . SPARSER::COLLECTION) ("Bok" . SPARSER::PROTEIN)
    ("Activator" . SPARSER::ACTIVATOR)
    ("FoxO1 and FoxO3" . SPARSER::COLLECTION)
    ("FoxO1, FoxO3, FoxO4, and FoxO6" . SPARSER::COLLECTION)
    ("daf" . SPARSER::PROTEIN) ("Catabolism" . SPARSER::PROTEIN)
    ("adrenergic" . SPARSER::PROTEIN) ("epoxomicin" . SPARSER::DRUG)
    ("cardiac troponin I" . SPARSER::PROTEIN) ("cTnI" . SPARSER::PROTEIN)
    ("Atrogin1 and Murf1" . SPARSER::COLLECTION)
    ("Atrogin1" . SPARSER::PROTEIN) ("catabolism" . SPARSER::PROTEIN)
    ("myofibrillar proteins" . SPARSER::PROTEIN)
    ("Ubiquitin" . SPARSER::PROTEIN) ("atg" . SPARSER::DRUG)
    ("–polymerase" . SPARSER::COLLECTION) ("FCCP" . SPARSER::MOLECULE)
    ("intact mitochondria" . SPARSER::PROTEIN) ("Nonyl" . SPARSER::MOLECULE)
    ("MTG" . SPARSER::PROTEIN)
    ("the cardiac myocyte–specific αMHC promoter" . SPARSER::PROMOTER)
    ("the caFoxO3 transgene or the MCM transgene ( xref C)"
     . SPARSER::COLLECTION)
    ("Transgene" . SPARSER::PROTEIN) ("p27 and Bnip3" . SPARSER::COLLECTION)
    ("S1B and S1C" . SPARSER::COLLECTION) ("MCM" . SPARSER::PROTEIN)
    ("Stop" . SPARSER::HUMAN-PROTEIN-FAMILY) ("mtND2" . SPARSER::PROTEIN)
    ("mtND" . SPARSER::PROTEIN) ("TFAM" . SPARSER::PROTEIN)
    ("Cox4" . SPARSER::PROTEIN) ("anion" . SPARSER::MOLECULE)
    ("VDAC" . SPARSER::PROTEIN) ("cardiac biomarkers" . SPARSER::MOLECULE)
    ("troponin" . SPARSER::PROTEIN)
    ("the abdominal aorta and vena cava" . SPARSER::PROTEIN)
    ("cava" . SPARSER::PROTEIN) ("Forkhead" . SPARSER::PROTEIN)
    ("LV" . SPARSER::MOLECULE) ("Mer" . SPARSER::PROTEIN)
    ("flox" . SPARSER::PROTEIN) ("MURF1" . SPARSER::PROTEIN)
    ("cytochrome C" . SPARSER::PROTEIN) ("troponin I" . SPARSER::PROTEIN)
    ("Murf3" . SPARSER::PROTEIN) ("Murf1" . SPARSER::PROTEIN)
    ("S5" . SPARSER::MOLECULE) ("NADH2" . SPARSER::PROTEIN)
    ("MX1" . SPARSER::PROTEIN)
    ("transcription factor A, mitochondrial" . SPARSER::PROTEIN)
    ("NADH dehydrogenase 1" . SPARSER::PROTEIN) ("ND1" . SPARSER::PROTEIN)
    ("cyclooxygenase 1" . SPARSER::PROTEIN) ("Cox 1" . SPARSER::PROTEIN)
    ("Beclin 1" . SPARSER::PROTEIN) ("Bcl2" . SPARSER::PROTEIN)
    ("Bnip3" . SPARSER::PROTEIN) ("Puma or Noxa" . SPARSER::COLLECTION)
    ("Bak and Bid" . SPARSER::COLLECTION)
    ("the apoptotic trigger" . SPARSER::PROTEIN)
    ("the initiator caspase 9 and the executioner caspase 3"
     . SPARSER::COLLECTION)
    ("H 2 O 2 and ischemia" . SPARSER::COLLECTION)
    ("the CDK inhibitor p21 ( CDKN1A ) and the proapoptotic factor PUMA ( BBC3 )"
     . SPARSER::COLLECTION)
    ("the E3 ubiquitin ligase MDM2 , the CDK inhibitor p21 ( CDKN1A ) and the proapoptotic factor PUMA ( BBC3 )"
     . SPARSER::COLLECTION)
    ("hexokinase" . SPARSER::PROTEIN) ("GAPDH and HK2" . SPARSER::COLLECTION)
    ("HIF-1α and p53" . SPARSER::COLLECTION)
    ("pro-apoptotic PUMA and BTG2" . SPARSER::COLLECTION)
    ("PUMA and BTG2" . SPARSER::COLLECTION)
    ("BCL2 and BCL2A1" . SPARSER::COLLECTION)
    ("shp" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PUMA (BBC3) and NOXA (PMAIP1)" . SPARSER::COLLECTION)
    ("the main pro-apoptotic genes" . SPARSER::GENE)
    ("its adaptor protein APAF1 or the inhibitory protein BIRC5 ( xref )"
     . SPARSER::COLLECTION)
    ("kDA" . SPARSER::PROTEIN) ("pifithrin" . SPARSER::DRUG)
    ("p35 and p37" . SPARSER::COLLECTION)
    ("the radiomimetic bleomycin" . SPARSER::DRUG)
    ("bleomycin" . SPARSER::DRUG) ("extracellular LDH" . SPARSER::PROTEIN)
    ("a principal form" . SPARSER::FORM)
    ("Annexin V and 7-AAD" . SPARSER::COLLECTION) ("MDMX" . SPARSER::PROTEIN)
    ("p53, p21 and MDM2" . SPARSER::COLLECTION)
    ("several p53-associated proteins" . SPARSER::PROTEIN)
    ("ascorbate" . SPARSER::MOLECULE) ("nanotubes" . SPARSER::MOLECULE)
    ("Nickel" . SPARSER::MOLECULE) ("antiapoptotic MCL1" . SPARSER::PROTEIN)
    ("PUMA and NOXA" . SPARSER::COLLECTION)
    ("the initiator caspase 9 and its downstream executioner caspase 3"
     . SPARSER::COLLECTION)
    ("MDM2 and p21" . SPARSER::COLLECTION) ("MDM4 (HDMX)" . SPARSER::PROTEIN)
    ("HDMX" . SPARSER::PROTEIN) ("nickel(II)" . SPARSER::MOLECULE)
    ("large T-antigen" . SPARSER::PROTEIN) ("HK2" . SPARSER::PROTEIN)
    ("BCL2A1" . SPARSER::PROTEIN) ("BTG2" . SPARSER::PROTEIN)
    ("PMAIP1" . SPARSER::PROTEIN) ("BIRC5" . SPARSER::PROTEIN)
    ("CASP9" . SPARSER::PROTEIN) ("Caspase 9" . SPARSER::PROTEIN)
    ("p37" . SPARSER::PROTEIN) ("B2M" . SPARSER::PROTEIN)
    ("pS15" . SPARSER::PROTEIN) ("Fe(II)" . SPARSER::MOLECULE)
    ("HIF-1" . SPARSER::PROTEIN) ("ATF-1" . SPARSER::PROTEIN)
    ("GADD45A" . SPARSER::PROTEIN)
    ("HPV RNA and p16 status ( xref )" . SPARSER::COLLECTION)
    ("a contemporary cohort" . SPARSER::MOLECULE)
    ("a contemporary OSCC cohort" . SPARSER::MOLECULE)
    ("cyclin D1/cyclin-dependent kinase" . SPARSER::COLLECTION)
    ("more robust prognostic biomarkers" . SPARSER::MOLECULE)
    ("human papillomavirus RNA ( P < 1.0 × 10 −18 for all cutoffs) and p16 positivity ( P < 1.0 × 10 −14 for all cutoffs)"
     . SPARSER::COLLECTION)
    ("prognostic biomarkers" . SPARSER::MOLECULE) ("SP4" . SPARSER::PROTEIN)
    ("CC1" . SPARSER::PROTEIN) ("messenger RNA" . SPARSER::RNA)
    ("retinoblastoma protein" . SPARSER::PROTEIN)
    ("p16-INK4a" . SPARSER::PROTEIN) ("RAS/RAF" . SPARSER::COLLECTION)
    ("PI3K and RAF" . SPARSER::COLLECTION) ("Flox/Flox" . SPARSER::COLLECTION)
    ("Flox" . SPARSER::PROTEIN)
    ("the mitotic kinase polo-like kinase 1" . SPARSER::PROTEIN)
    ("gefitinib ( 35 ) and erlotinib ( 36 )" . SPARSER::COLLECTION)
    ("the upstream target epidermal growth factor receptor (EGFR), gefitinib ( 35 ) and erlotinib ( 36 )"
     . SPARSER::COLLECTION)
    ("TARGETS" . SPARSER::TARGET-PROTEIN)
    ("The farnesyl isoprenoid-containing small molecules salirasib ( 33 ) and TLN-4601 ( 34 )"
     . SPARSER::COLLECTION)
    ("TLN" . SPARSER::PROTEIN) ("salirasib" . SPARSER::DRUG)
    ("the C-terminal 24 or 25 amino acids of KRAS (GFP-CTK) or HRAS (GFP-CTH)"
     . SPARSER::COLLECTION)
    ("KRAS (GFP-CTK) or HRAS (GFP-CTH)" . SPARSER::COLLECTION)
    ("GFP-CTH" . SPARSER::COLLECTION) ("GFP-CTK" . SPARSER::COLLECTION)
    ("CTH" . SPARSER::PROTEIN) ("CTK" . SPARSER::PROTEIN)
    ("AdoMet" . SPARSER::MOLECULE) ("RCE1 or ICMT1" . SPARSER::COLLECTION)
    ("the competitive CAAX protease Ste24p" . SPARSER::PROTEIN)
    ("pheromone" . SPARSER::MOLECULE) ("lonafarnib" . SPARSER::DRUG)
    ("tipifarnib" . SPARSER::DRUG) ("FTI" . SPARSER::DRUG)
    ("FTIs" . SPARSER::DRUG) ("isoprenoid" . SPARSER::MOLECULE)
    ("MEK and PI3K" . SPARSER::COLLECTION)
    ("PI3K and mTOR" . SPARSER::COLLECTION)
    ("PI3K and ERK" . SPARSER::COLLECTION)
    ("RAS and PIK3CA" . SPARSER::COLLECTION)
    ("ERK and PI3K" . SPARSER::COLLECTION)
    ("bRafV600E or mutant" . SPARSER::COLLECTION) ("bRafV" . SPARSER::PROTEIN)
    ("LOX" . SPARSER::PROTEIN) ("proprietary kinase" . SPARSER::KINASE)
    ("cRaf and bRaf" . SPARSER::COLLECTION) ("bRaf" . SPARSER::PROTEIN)
    ("cRaf and MEK" . SPARSER::COLLECTION)
    ("cRaf/MEK/ERK" . SPARSER::COLLECTION) ("RO" . SPARSER::PROTEIN)
    ("cRaf" . SPARSER::PROTEIN) ("Raf-MEK-ERK" . SPARSER::COLLECTION)
    ("Effectors" . SPARSER::EFFECTOR)
    ("The resulting S -isoleucin derivative 10 and D-proline analogue 11 ( xref )  xref"
     . SPARSER::COLLECTION)
    ("Indole" . SPARSER::DRUG)
    ("highly soluble organic molecules" . SPARSER::MOLECULE)
    ("bromodeoxyuridine" . SPARSER::DRUG) ("Glo" . SPARSER::PROTEIN)
    ("either mutant KRAS (T29Kt1) or mutant HRAS (T29Ht1)"
     . SPARSER::COLLECTION)
    ("Guo" . SPARSER::MOLECULE)
    ("a sulfinyl cytidine ( 1 ) derivative ( 2 or 3 ) and triphenyltetrazolium ( 4 )"
     . SPARSER::COLLECTION)
    ("DLD-1 and KO" . SPARSER::COLLECTION) ("cytidine" . SPARSER::MOLECULE)
    ("sulfinyl" . SPARSER::MOLECULE)
    ("mutant KRAS and an isogenic derivative" . SPARSER::COLLECTION)
    ("an isogenic derivative" . SPARSER::DERIVATIVE)
    ("structurally diverse chemical" . SPARSER::MOLECULE)
    ("HTS" . SPARSER::PROTEIN)
    ("prosurvival and cell-cycle progression genes" . SPARSER::GENE)
    ("SHC and growth factor" . SPARSER::COLLECTION) ("SHC" . SPARSER::PROTEIN)
    ("GEFs and GAPs" . SPARSER::COLLECTION)
    ("the inactive GDP-bound form and the active GTP-bound form"
     . SPARSER::COLLECTION)
    ("serine or methionine" . SPARSER::COLLECTION) ("ICMT" . SPARSER::PROTEIN)
    ("FTase" . SPARSER::PROTEIN) ("RCE1" . SPARSER::PROTEIN)
    ("GDP or GTP" . SPARSER::COLLECTION)
    ("inactive or active" . SPARSER::COLLECTION)
    ("KRAS and GTP" . SPARSER::COLLECTION)
    ("specifically targets mutant KRAS" . SPARSER::PROTEIN)
    ("HRAS, NRAS, and KRAS" . SPARSER::COLLECTION)
    ("an attractive cancer target" . SPARSER::TARGET-PROTEIN)
    ("MK-2206" . SPARSER::MOLECULE)
    ("cyclin-dependent kinase 4" . SPARSER::PROTEIN)
    ("GATA2" . SPARSER::PROTEIN) ("GATA binding protein 2" . SPARSER::PROTEIN)
    ("BI-2536" . SPARSER::DRUG) ("polo-like kinase 1" . SPARSER::PROTEIN)
    ("calcium channel" . SPARSER::PROTEIN) ("Ste24p" . SPARSER::PROTEIN)
    ("a-factor" . SPARSER::MOLECULE)
    ("MEK 1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("RO5068760" . SPARSER::DRUG)
    ("GDC-0973" . SPARSER::DRUG) ("3–2" . SPARSER::PROTEIN)
    ("son of sevenless" . SPARSER::PROTEIN)
    ("RAS-related protein" . SPARSER::PROTEIN)
    ("phosphoinositide 3" . SPARSER::PROTEIN) ("GRB2" . SPARSER::PROTEIN)
    ("carboxy group" . SPARSER::MOLECULE)
    ("converting enzyme" . SPARSER::PROTEIN) ("FB" . SPARSER::PROTEIN)
    ("FLP" . SPARSER::PROTEIN) ("DT" . SPARSER::PROTEIN)
    ("88 unselected sporadic CRC" . SPARSER::PROTEIN)
    ("the last group" . SPARSER::MOLECULE)
    ("MMR or adenomatous polyposis genes" . SPARSER::COLLECTION)
    ("adenomatous polyposis genes" . SPARSER::GENE)
    ("cetuximab or panitumumab" . SPARSER::COLLECTION)
    ("a localized form" . SPARSER::FORM)
    ("mRNA and RT-QMPSF" . SPARSER::COLLECTION)
    ("miRNAs (hsa-mir-146a/b, hsa-mir-133b, hsa-mir-7-1/2) or regulating proteins (HuR: AU-rich elements)"
     . SPARSER::COLLECTION)
    ("RAB31 and ATP6V1G1" . SPARSER::COLLECTION)
    ("RAB31 (member RAS oncogene family) and a polyA(14)"
     . SPARSER::COLLECTION)
    ("p " . SPARSER::PROTEIN) ("adenines" . SPARSER::NUCLEOBASE)
    ("dinucleotide" . SPARSER::MOLECULE)
    ("amphiregulin and epiregulin" . SPARSER::COLLECTION)
    ("epiregulin" . SPARSER::PROTEIN) ("amphiregulin" . SPARSER::PROTEIN)
    ("Oxaliplatin" . SPARSER::DRUG) ("Irinotecan" . SPARSER::DRUG)
    ("cetuximab and panatimumab" . SPARSER::COLLECTION)
    ("MT1X" . SPARSER::PROTEIN) ("subunit G" . SPARSER::PROTEIN)
    ("ATP6V1G1" . SPARSER::PROTEIN)
    ("member RAS oncogene family" . SPARSER::PROTEIN)
    ("RAB31" . SPARSER::PROTEIN) ("SF3" . SPARSER::PROTEIN)
    ("PCBD2" . SPARSER::PROTEIN) ("Ink4a/Arf" . SPARSER::COLLECTION)
    ("Arf" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("epidermal growth factor receptor monoclonal antibodies, cetuximab or panitumumab"
     . SPARSER::COLLECTION)
    ("antibodies, cetuximab or panitumumab" . SPARSER::COLLECTION)
    ("The ‘classical’ PDAC" . SPARSER::MOLECULE)
    ("KRAS, CDKN2A, TP53 and SMAD4" . SPARSER::COLLECTION)
    ("ADM" . SPARSER::PROTEIN) ("KRAS or CDKN2A" . SPARSER::COLLECTION)
    ("wildtype KRAS (log-rank test, P = 0.02; xref ) and HR"
     . SPARSER::COLLECTION)
    ("TGA" . SPARSER::PROTEIN) ("CGA" . SPARSER::PROTEIN)
    ("CAC" . SPARSER::PROTEIN) ("CGT" . SPARSER::PROTEIN)
    ("SCA" . SPARSER::PROTEIN)
    ("4 anaplastic undifferentiated variants" . SPARSER::VARIANT)
    ("the most fatal form" . SPARSER::FORM)
    ("an associated multivariate HR 2" . SPARSER::PROTEIN)
    ("PDACs" . SPARSER::MOLECULE) ("KRAS and CDKN2A" . SPARSER::COLLECTION)
    ("Ink4a" . SPARSER::PROTEIN) ("AKT/protein" . SPARSER::PROTEIN)
    ("SMAD4" . SPARSER::PROTEIN) ("p14 ARF" . SPARSER::PROTEIN)
    ("p16 INK4a" . SPARSER::PROTEIN) ("interferon-alpha" . SPARSER::PROTEIN)
    ("elevated glucose and insulin" . SPARSER::COLLECTION)
    ("Gata4, Tbx5, Nkx2–5, and MyoD" . SPARSER::COLLECTION)
    ("Tbx" . SPARSER::PROTEIN-FAMILY) ("SDH and COX" . SPARSER::COLLECTION)
    ("MCK-CAR" . SPARSER::COLLECTION) ("CAR" . SPARSER::PROTEIN)
    ("proximal Deptor promoter" . SPARSER::PROMOTER)
    ("Six4 and BAF60c" . SPARSER::COLLECTION)
    ("Six1 and Six4" . SPARSER::COLLECTION) ("-glucose" . SPARSER::COLLECTION)
    ("lipogenic genes" . SPARSER::GENE)
    ("Fatty β-oxidation genes" . SPARSER::GENE)
    ("hyperinsulinemic-euglycemic clamp" . SPARSER::PROTEIN-FAMILY)
    ("ITT" . SPARSER::MOLECULE) ("NEFA" . SPARSER::PROTEIN)
    ("ketone" . SPARSER::MOLECULE) ("triglycerides" . SPARSER::MOLECULE)
    ("fasting blood glucose and insulin levels" . SPARSER::COLLECTION)
    ("a repressive chromatin" . SPARSER::PROTEIN)
    ("the proximal BAF60c promoter" . SPARSER::PROMOTER)
    ("acetyl-histone" . SPARSER::PROTEIN)
    ("Mstn and IL6" . SPARSER::COLLECTION) ("Mstn" . SPARSER::PROTEIN)
    ("myostatin" . SPARSER::PROTEIN) ("PEPCK" . SPARSER::PROTEIN)
    ("lib" . SPARSER::DRUG) ("ATP/AMP" . SPARSER::PROTEIN-PAIR)
    ("dehydrogenase (LDH)" . SPARSER::PROTEIN) ("LDH" . SPARSER::PROTEIN)
    ("intermyofibrillar mitochondria" . SPARSER::PROTEIN)
    ("TA, EDL, and soleus" . SPARSER::COLLECTION)
    ("α-glycerophosphate dehydrogenase (α-GPDH) and succinate dehydrogenase (SDH)"
     . SPARSER::COLLECTION)
    ("dehydrogenase (SDH)" . SPARSER::PROTEIN) ("SDH" . SPARSER::PROTEIN)
    ("GPDH" . SPARSER::PROTEIN) ("the diabetic state" . SPARSER::BIO-STATE)
    ("BAF60c/Six4" . SPARSER::COLLECTION)
    ("a transcriptional cofactor" . SPARSER::MOLECULE)
    ("Protein-G" . SPARSER::PROTEIN) ("BAF53a" . SPARSER::PROTEIN)
    ("ribosomal protein S6" . SPARSER::PROTEIN) ("BAF60a" . SPARSER::PROTEIN)
    ("Nkx2–5" . SPARSER::PROTEIN) ("Gata4" . SPARSER::PROTEIN)
    ("Six1" . SPARSER::PROTEIN) ("Depdc6" . SPARSER::PROTEIN)
    ("min −1" . SPARSER::PROTEIN) ("g −1" . SPARSER::PROTEIN)
    ("m2" . SPARSER::MOLECULE) ("interleukin 6" . SPARSER::PROTEIN)
    ("LDH-B" . SPARSER::PROTEIN) ("Six4" . SPARSER::PROTEIN)
    ("BAF60c" . SPARSER::PROTEIN) ("Light" . SPARSER::PROTEIN)
    ("GIH" . SPARSER::PROTEIN) ("SAC" . SPARSER::PROTEIN)
    ("MAD" . SPARSER::PROTEIN) ("apt" . SPARSER::PROTEIN)
    ("Gold" . SPARSER::MOLECULE) ("Stata" . SPARSER::PROTEIN)
    ("BDNF" . SPARSER::PROTEIN) ("POMC" . SPARSER::PROTEIN)
    ("the follicle-stimulating hormone receptor (FSHR) and the oxytocin receptor (OXTR)"
     . SPARSER::COLLECTION)
    ("oxytocin receptor (OXTR)" . SPARSER::PROTEIN)
    ("follicle-stimulating hormone receptor (FSHR)" . SPARSER::PROTEIN)
    ("OXTR" . SPARSER::PROTEIN) ("FSHR" . SPARSER::PROTEIN)
    ("the larger allele" . SPARSER::ALLELE)
    ("the larger deletion allele" . SPARSER::ALLELE)
    ("the smaller deletion allele" . SPARSER::ALLELE)
    ("nominal p" . SPARSER::PROTEIN) ("HBD" . SPARSER::PROTEIN)
    ("NEGR1 (tagging the 40kb deletion) and SH2B1" . SPARSER::COLLECTION)
    ("FTO , TMEM18 and MC4R" . SPARSER::COLLECTION)
    ("FTO , TMEM18  and  MC4R" . SPARSER::COLLECTION)
    ("very few other cohorts" . SPARSER::MOLECULE)
    ("FTO , MC4R , TMEM18 and NEGR1" . SPARSER::COLLECTION)
    ("all cases carrying at least one predisposing (C) allele"
     . SPARSER::ALLELE)
    ("leptin receptor ( LEPR)" . SPARSER::PROTEIN)
    ("PRKCH , PACS1 and RMST" . SPARSER::COLLECTION)
    ("SCOOP-UK" . SPARSER::COLLECTION) ("leptin" . SPARSER::PROTEIN)
    ("PRKCH" . SPARSER::PROTEIN) ("LEPR" . SPARSER::PROTEIN)
    ("DRD2" . SPARSER::PROTEIN) ("dopamine receptor D2" . SPARSER::PROTEIN)
    ("oxytocin receptor" . SPARSER::PROTEIN)
    ("follicle-stimulating hormone receptor" . SPARSER::PROTEIN)
    ("OPRM1" . SPARSER::PROTEIN) ("mu-opioid receptor" . SPARSER::PROTEIN)
    ("G-protein coupled" . SPARSER::PROTEIN) ("NKX6.1" . SPARSER::PROTEIN)
    ("SH2B1" . SPARSER::PROTEIN) ("leptin receptor" . SPARSER::PROTEIN)
    ("melanocortin 4 receptor" . SPARSER::PROTEIN) ("NEGR1" . SPARSER::PROTEIN)
    ("PACS1" . SPARSER::PROTEIN)
    ("strong biological candidate genes" . SPARSER::GENE)
    ("IGFBP4 and SHOX2" . SPARSER::COLLECTION)
    ("HNF4G and ADCY9" . SPARSER::COLLECTION)
    ("LIN28B (Bayes factor: 105,478) and DLEU7 (Bayes factor: 66,599)"
     . SPARSER::COLLECTION)
    ("ID4 (Bayes factor: 118,839), LIN28B (Bayes factor: 105,478) and DLEU7 (Bayes factor: 66,599)"
     . SPARSER::COLLECTION)
    ("FANCL" . SPARSER::PROTEIN) ("EFR" . SPARSER::PROTEIN)
    ("BCKDHB" . SPARSER::PROTEIN) ("CRADD" . SPARSER::PROTEIN)
    ("GHSR" . SPARSER::PROTEIN)
    ("GNAT2, ZZZ3, HNF4G , and RPTOR" . SPARSER::COLLECTION)
    ("IGFBP4 and H6PD" . SPARSER::COLLECTION)
    ("PCSK1 (rs6235 and rs6232) and KCNMA1" . SPARSER::COLLECTION)
    ("TNKS" . SPARSER::PROTEIN) ("FAIM" . SPARSER::PROTEIN)
    ("SHOX" . SPARSER::PROTEIN) ("IGF1 and IGF2" . SPARSER::COLLECTION)
    ("sortilin" . SPARSER::PROTEIN) ("gene ( RPTOR )" . SPARSER::GENE)
    ("the regulatory associated protein" . SPARSER::PROTEIN)
    ("MTOR" . SPARSER::PROTEIN) ("at least one obesity class" . CLASS)
    ("these anthropometric traits" . SPARSER::PROTEIN)
    ("anthropometric traits" . SPARSER::PROTEIN) ("PTER" . SPARSER::PROTEIN)
    ("highly penetrant variants" . SPARSER::VARIANT)
    ("a strong heritable component" . SPARSER::COMPONENT)
    ("RPTOR" . SPARSER::PROTEIN) ("- 2" . SPARSER::PROTEIN)
    ("LIN28B" . SPARSER::PROTEIN) ("RSPO3" . SPARSER::PROTEIN)
    ("NPR3" . SPARSER::PROTEIN) ("EFEMP1" . SPARSER::PROTEIN)
    ("C6orf106" . SPARSER::PROTEIN) ("EDEM2" . SPARSER::PROTEIN)
    ("KCNMA1" . SPARSER::PROTEIN) ("SDCCAG8" . SPARSER::PROTEIN)
    ("NPC1" . SPARSER::PROTEIN) ("OLFM4" . SPARSER::PROTEIN)
    ("HOXB5" . SPARSER::PROTEIN) ("class 1" . SPARSER::PROTEIN-FAMILY)
    ("class 2" . SPARSER::PROTEIN)
    ("short stature homeobox" . SPARSER::PROTEIN) ("SHOX2" . SPARSER::PROTEIN)
    ("beta-catenin" . SPARSER::PROTEIN) ("TNS4" . SPARSER::PROTEIN)
    ("insulin-like growth factor binding protein 4" . SPARSER::PROTEIN)
    ("SORT1" . SPARSER::PROTEIN) ("ADCY5" . SPARSER::PROTEIN)
    ("adenylate cyclase 9" . SPARSER::PROTEIN)
    ("hepatocyte nuclear factor 4-gamma" . SPARSER::PROTEIN)
    ("BAI1" . SPARSER::PROTEIN) ("angiogenesis inhibitor" . SPARSER::DRUG)
    ("brain-specific" . SPARSER::PROTEIN) ("BAIAP2" . SPARSER::PROTEIN)
    ("BAI1-associated protein 2" . SPARSER::PROTEIN)
    ("PCSK1" . SPARSER::PROTEIN) ("ZZZ3" . SPARSER::PROTEIN)
    ("HS6ST3" . SPARSER::PROTEIN) ("MRPS33" . SPARSER::PROTEIN)
    ("GNAT2" . SPARSER::PROTEIN) ("HNF4G" . SPARSER::PROTEIN)
    ("PPP2R2A" . SPARSER::PROTEIN) ("RSRC1" . SPARSER::PROTEIN)
    ("H6PD" . SPARSER::PROTEIN) ("IGFBP4" . SPARSER::PROTEIN)
    ("IKK" . SPARSER::PROTEIN) ("MDM2 and GADD45α" . SPARSER::COLLECTION)
    ("GADD45α–JNKs" . SPARSER::COLLECTION)
    ("GADD45α-JNKs" . SPARSER::COLLECTION)
    ("MDM2/GADD45α" . SPARSER::COLLECTION) ("S7–ΔMDM2" . SPARSER::PROTEIN)
    ("p53 and GADD45α" . SPARSER::COLLECTION)
    ("MDM2–GADD45α" . SPARSER::COLLECTION) ("HA–MDM2" . SPARSER::COLLECTION)
    ("p53 and some other proteins" . SPARSER::COLLECTION)
    ("stabilizer" . SPARSER::MOLECULE) ("HA–GADD45α" . SPARSER::COLLECTION)
    ("GST–GADD45α" . SPARSER::COLLECTION)
    ("inhibitor (CHX)" . SPARSER::INHIBITOR) ("gadd45α" . SPARSER::PROTEIN)
    ("GADD45α" . SPARSER::PROTEIN) ("Myc–Ub" . SPARSER::COLLECTION)
    ("FLAG–GADD45α" . SPARSER::COLLECTION) ("Ub" . SPARSER::PROTEIN)
    ("a liable protein" . SPARSER::PROTEIN)
    ("a small subunit of RPs" . SPARSER::FRAGMENT)
    ("MDM2 and a small subunit" . SPARSER::COLLECTION)
    ("the different ribosomal proteins" . SPARSER::PROTEIN)
    ("ribosomal proteins" . SPARSER::PROTEIN)
    ("MDM2–p53" . SPARSER::COLLECTION) ("RPs" . SPARSER::PROTEIN)
    ("p53–MDM2" . SPARSER::COLLECTION) ("Arsenite" . SPARSER::DRUG)
    ("protein and undergoes" . SPARSER::COLLECTION) ("GADD" . SPARSER::PROTEIN)
    ("JNKs" . SPARSER::PROTEIN) ("arsenite" . SPARSER::DRUG)
    ("MDM2 protein" . SPARSER::PROTEIN)
    ("Ribosomal protein S7" . SPARSER::PROTEIN)
    ("gadd45" . SPARSER::HUMAN-PROTEIN-FAMILY) ("L26" . SPARSER::PROTEIN)
    ("L11" . SPARSER::PROTEIN) ("CDC2" . SPARSER::PROTEIN)
    ("ribosomal protein S7" . SPARSER::PROTEIN)
    ("PKCε and PDK1" . SPARSER::COLLECTION)
    ("spontaneously immortalized non-tumorigenic mammary epithelial MCF-10A"
     . SPARSER::PROTEIN)
    ("PI3K/PDK1/Akt" . SPARSER::COLLECTION)
    ("Ly294002 or PDK1" . SPARSER::COLLECTION)
    ("bisindolylmaleimide and Gö 6983" . SPARSER::COLLECTION)
    ("the PKC family as well as PDK1 [ xref - xref ]" . SPARSER::COLLECTION)
    ("PKCα, PKCδ, PKCε or PKCζ" . SPARSER::COLLECTION)
    ("CA1" . SPARSER::PROTEIN) ("PI3K/PDK1" . SPARSER::COLLECTION)
    ("PDK1 and novel PKCε" . SPARSER::COLLECTION)
    ("Ly294002 and Gö 6983" . SPARSER::COLLECTION)
    ("Ly294002 and PDK1" . SPARSER::COLLECTION)
    ("MG-132 and lactacystin" . SPARSER::COLLECTION)
    ("MG-132 or lactacystin" . SPARSER::COLLECTION)
    ("Gö 6983 or Ly294002" . SPARSER::COLLECTION)
    ("lactacystin" . SPARSER::DRUG) ("cathepsin" . SPARSER::PROTEIN)
    ("calpeptin" . SPARSER::MOLECULE)
    ("Gö 6983 and Ly294002" . SPARSER::COLLECTION) ("PDBu" . SPARSER::MOLECULE)
    ("PKC and PI3K" . SPARSER::COLLECTION)
    ("PKC or PI3K" . SPARSER::COLLECTION)
    ("rapamycin, PD98059 and KT5720" . SPARSER::COLLECTION)
    ("mTOR, MAPK and PKA" . SPARSER::COLLECTION)
    ("PKC or PDK1" . SPARSER::COLLECTION)
    ("the novel PKC family and shares highest homology" . SPARSER::COLLECTION)
    ("Calpains" . SPARSER::PROTEIN)
    ("calpains and ubiquitin" . SPARSER::COLLECTION)
    ("calpains" . SPARSER::PROTEIN) ("Calcium" . SPARSER::CALCIUM)
    ("Diacylglycerol (DAG) and Ca 2+" . SPARSER::COLLECTION)
    ("Ca 2+ and DAG" . SPARSER::COLLECTION)
    ("Diacylglycerol" . SPARSER::PROTEIN)
    ("atypical PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKCε or PDK1" . SPARSER::COLLECTION) ("MCF-10A" . SPARSER::PROTEIN)
    ("Gö 6983 and bisindolylmaleimide" . SPARSER::COLLECTION)
    ("bisindolylmaleimide" . SPARSER::DRUG)
    ("the MTT or clonal assay" . SPARSER::COLLECTION)
    ("calpain inhibitor" . SPARSER::PROTEIN) ("KT5720" . SPARSER::DRUG)
    ("kinase-1" . SPARSER::PROTEIN) ("nPKCε" . SPARSER::PROTEIN)
    ("Gö 6983" . SPARSER::DRUG)
    ("145 kDa SBDP and 120 kDa SBDP" . SPARSER::COLLECTION)
    ("several pro-apoptotic molecules" . SPARSER::MOLECULE)
    ("pro-apoptotic Bax and anti-apoptotic Bcl-2 proteins" . SPARSER::PROTEIN)
    ("Bax and anti-apoptotic" . SPARSER::COLLECTION)
    ("calpain-specific 145 kDa SBDP and caspase-3-specific 120 kDa SBDP"
     . SPARSER::COLLECTION)
    ("calpain and caspase-3" . SPARSER::COLLECTION) ("SBDP" . SPARSER::DRUG)
    ("spectrin" . SPARSER::PROTEIN) ("Bax:Bcl-2" . SPARSER::BIO-COMPLEX)
    ("tBid" . SPARSER::PROTEIN) ("CTL" . SPARSER::PROTEIN)
    ("shRNA, or APG" . SPARSER::COLLECTION)
    ("shRNA and APG" . SPARSER::COLLECTION)
    ("hTERT and APG" . SPARSER::COLLECTION) ("Apigenin" . SPARSER::DRUG)
    ("micro RNAs" . SPARSER::RNA) ("apigenin (APG)" . SPARSER::DRUG)
    ("APG" . SPARSER::PROTEIN) ("apigenin" . SPARSER::DRUG)
    ("mTOR or its associated substrates" . SPARSER::COLLECTION)
    ("its associated substrates" . SPARSER::SUBSTRATE)
    ("Rab7 effectors ( xref ; xref ) and an exchange factor ( xref )"
     . SPARSER::COLLECTION)
    ("distinct Rabs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Rac1 and the TBC/RabGAP Armus" . SPARSER::COLLECTION)
    ("Rabs and TBC/RabGAPs" . SPARSER::COLLECTION)
    ("LC3 and active" . SPARSER::COLLECTION)
    ("GST-Armus" . SPARSER::COLLECTION) ("Rac1 and LC3" . SPARSER::COLLECTION)
    ("dominant-negative Rac1" . SPARSER::PROTEIN)
    ("Rab7 or Rac1" . SPARSER::COLLECTION)
    ("Rab7 and Rac1" . SPARSER::COLLECTION)
    ("associated Armus" . SPARSER::PROTEIN)
    ("E-cadherin ( xref ) and LC3" . SPARSER::COLLECTION)
    ("Lysosomal" . SPARSER::PROTEIN) ("Rab7 " . SPARSER::PROTEIN)
    ("LIR" . SPARSER::PROTEIN) ("GST-LC3" . SPARSER::COLLECTION)
    ("A shorter fragment (Armus 1–169 ) modestly activated Rab7"
     . SPARSER::PROTEIN)
    ("Rab11/Rab25" . SPARSER::COLLECTION)
    ("Rab11 and Rab25" . SPARSER::COLLECTION)
    ("Rab5 or transferrin" . SPARSER::COLLECTION)
    ("lysotracker" . SPARSER::DRUG)
    ("tandem-fluorescent LC3" . SPARSER::PROTEIN)
    ("Nutrient" . SPARSER::MOLECULE) ("puncta" . SPARSER::PROTEIN)
    ("Vinblastine" . SPARSER::DRUG)
    ("Armus and its partners Rac1 and Rab7" . SPARSER::COLLECTION)
    ("Rab-associated guanosine triphosphate (GTP)" . SPARSER::MOLECULE)
    ("Tre2/Bub2/Cdc16" . SPARSER::COLLECTION)
    ("exchange factors, or GEFs" . SPARSER::COLLECTION)
    ("proteins, or GAPs" . SPARSER::COLLECTION) ("Rab9" . SPARSER::PROTEIN)
    ("Atg8/LC3" . SPARSER::COLLECTION)
    ("Rac1, Armus, and Rab7" . SPARSER::COLLECTION)
    ("Rac1 and Rab7" . SPARSER::COLLECTION) ("Rab7" . SPARSER::PROTEIN)
    ("Rab" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Armus" . SPARSER::PROTEIN)
    ("TBC" . SPARSER::BIO-COMPLEX) ("Rabs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("OATL1" . SPARSER::PROTEIN) ("TBC1D14" . SPARSER::PROTEIN)
    ("TBC1" . SPARSER::PROTEIN) ("TBC1D15" . SPARSER::PROTEIN)
    ("C–5" . SPARSER::PROTEIN) ("Arf6" . SPARSER::PROTEIN)
    ("S5B" . SPARSER::PROTEIN) ("G–4" . SPARSER::PROTEIN)
    ("D–4" . SPARSER::PROTEIN) ("A–4" . SPARSER::PROTEIN)
    ("D–5" . SPARSER::PROTEIN) ("Glutathione S-transferase" . SPARSER::PROTEIN)
    ("Rab25" . SPARSER::PROTEIN) ("α-synuclein" . SPARSER::PROTEIN)
    ("GFP-LC3" . SPARSER::PROTEIN) ("Cdc16" . SPARSER::PROTEIN)
    ("Bub2" . SPARSER::PROTEIN) ("Tre2" . SPARSER::PROTEIN)
    ("Rab33" . SPARSER::PROTEIN) ("Rab1" . SPARSER::PROTEIN)
    ("light chain 3" . SPARSER::PROTEIN)
    ("Atg8" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TBC1D2" . SPARSER::PROTEIN)
    ("spliceosome" . SPARSER::BIO-COMPLEX) ("hnRNP" . SPARSER::PROTEIN)
    ("kinase (DMPK)" . SPARSER::KINASE)
    ("myotonic dystrophy type 1" . SPARSER::PROTEIN)
    ("Mbnl1" . SPARSER::PROTEIN) ("DMPK" . SPARSER::PROTEIN)
    ("Antisense" . SPARSER::PROTEIN) ("DR6 and DR8" . SPARSER::COLLECTION)
    ("DR8 ( xref , constructs c5 vs c8) or replacing DR8"
     . SPARSER::COLLECTION)
    ("DR6, and DR8" . SPARSER::COLLECTION) ("Flp" . SPARSER::PROTEIN)
    ("FRT" . SPARSER::PROTEIN) ("acceptor" . SPARSER::MOLECULE)
    ("the identified alternative spliced forms" . SPARSER::FORM)
    ("ribozymes" . SPARSER::RNA) ("GRN" . SPARSER::PROTEIN)
    ("Imetelstat" . SPARSER::DRUG) ("hTR" . SPARSER::RNA)
    ("ribonucleoprotein" . SPARSER::PROTEIN)
    ("regenerative medicine" . SPARSER::DRUG)
    ("intron/exon" . SPARSER::COLLECTION)
    ("beta galactosidase" . SPARSER::PROTEIN) ("CUGBP1" . SPARSER::PROTEIN)
    ("splicing factor" . SPARSER::PROTEIN) ("G15" . SPARSER::PROTEIN)
    ("DR8" . SPARSER::PROTEIN) ("DR6" . SPARSER::PROTEIN)
    ("alpha isoform" . SPARSER::PROTEIN)
    ("Telomerase activity" . SPARSER::PROTEIN)
    ("SH, ZSK, EW, SS, TM and VP" . SPARSER::COLLECTION)
    ("VP" . SPARSER::PROTEIN) ("SS" . SPARSER::PROTEIN)
    ("SH" . SPARSER::PROTEIN-FAMILY) ("WA" . SPARSER::MOLECULE)
    ("ATM or PALB2" . SPARSER::COLLECTION) ("SNV" . SPARSER::VARIANT)
    ("ATM and a nonsense SNV" . SPARSER::COLLECTION)
    ("variant (SNV)" . SPARSER::VARIANT)
    ("somatic loss of heterozygosity" . SPARSER::PROTEIN)
    ("Letter" . SPARSER::MOLECULE) ("ATM and PALB2" . SPARSER::COLLECTION)
    ("family 1" . SPARSER::PROTEIN) ("FA, and m/z" . SPARSER::COLLECTION)
    ("the neutral molecule" . SPARSER::MOLECULE) ("PG" . SPARSER::PROTEIN)
    ("Da" . SPARSER::MOLECULE) ("DESI" . SPARSER::PROTEIN)
    ("SI" . SPARSER::PROTEIN) ("trap" . SPARSER::PROTEIN)
    ("LTQ" . SPARSER::MOLECULE) ("acetonitrile and N" . SPARSER::COLLECTION)
    ("Hematoxylin" . SPARSER::MOLECULE) ("ON" . SPARSER::PROTEIN)
    ("tTA" . SPARSER::PROTEIN) ("a conditional transgene" . SPARSER::PROTEIN)
    ("DESI-MSI" . SPARSER::COLLECTION) ("M - H" . SPARSER::PROTEIN)
    ("M – H" . SPARSER::PROTEIN) ("miRs" . SPARSER::PROTEIN)
    ("TGFB1, EP400 and ZBTB5" . SPARSER::COLLECTION)
    ("hsa-miR-1" . SPARSER::COLLECTION)
    ("CCND1/CCND2/CDK4" . SPARSER::COLLECTION)
    ("The latter two proteins" . SPARSER::PROTEIN)
    ("ERK/ELK-1/FOS" . SPARSER::COLLECTION)
    ("soluble anti-IgM antibodies" . SPARSER::ANTIBODY)
    ("EGR2/EGR3" . SPARSER::COLLECTION) ("PI3K/NFκB" . SPARSER::COLLECTION)
    ("ITK/ERK1-2/FOS" . SPARSER::COLLECTION)
    ("SYK/PLCγ/NFAT" . SPARSER::COLLECTION) ("ITK" . SPARSER::PROTEIN)
    ("YWHAB" . SPARSER::PROTEIN) ("GSS" . SPARSER::PROTEIN)
    ("GART" . SPARSER::PROTEIN) ("ADSL" . SPARSER::PROTEIN)
    ("NAMPT" . SPARSER::PROTEIN) ("GLA" . SPARSER::PROTEIN)
    ("mRNA/miRNA" . SPARSER::COLLECTION) ("hsa-miR" . SPARSER::COLLECTION)
    ("CFL2, ZCCHC11, LRRFIP1, MFSD11, RAD21, EIF4A2, HSBP1, EID2B and TGFB1"
     . SPARSER::COLLECTION)
    ("CFL" . SPARSER::PROTEIN)
    ("TMEM50B, EP400 and ZBTB5" . SPARSER::COLLECTION)
    ("pyrimidine" . SPARSER::DRUG) ("purine" . SPARSER::DRUG)
    ("wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("components (CD19, CD79A, CD79B) and immediate downstream signaling components (LYN, SYK, VAV1, PI3K components and even ERK1)"
     . SPARSER::COLLECTION)
    ("immediate downstream signaling components" . SPARSER::COMPONENT)
    ("miRNA/mRNA" . SPARSER::COLLECTION)
    ("636 mature miRNAs" . SPARSER::PROTEIN)
    ("ELK1 and NFAT5" . SPARSER::COLLECTION)
    ("DUSP2, FOS, EGR1 and MYC" . SPARSER::COLLECTION)
    ("239 (3 hours) and 164 (24 hours) of the upregulated genes and 140 (3 hours) and 102 (24 hours)"
     . SPARSER::COLLECTION)
    ("ELK1, EGR1, FOS and NFAT5" . SPARSER::COLLECTION)
    ("FOS or MYC" . SPARSER::COLLECTION)
    ("FOS, NFAT5, DUSP2, EGR1 and ELK1" . SPARSER::COLLECTION)
    ("CD38, ZAP-70 and IGHV" . SPARSER::COLLECTION) ("FOS" . SPARSER::PROTEIN)
    ("kappaB" . SPARSER::PROTEIN)
    ("lipoprotein lipase (LPL) and zeta-chain" . SPARSER::COLLECTION)
    ("gene ( IGHV )" . SPARSER::GENE) ("zeta" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LPL" . SPARSER::PROTEIN) ("hsa" . SPARSER::PROTEIN)
    ("MYC and other genes" . SPARSER::COLLECTION)
    ("miRNA and mRNA" . SPARSER::COLLECTION) ("PTK9" . SPARSER::PROTEIN)
    ("miR-1" . SPARSER::PROTEIN) ("ELK-1" . SPARSER::PROTEIN)
    ("ZAP70" . SPARSER::PROTEIN) ("CD62L" . SPARSER::PROTEIN)
    ("EGR3" . SPARSER::PROTEIN) ("EGR2" . SPARSER::PROTEIN)
    ("RBL2" . SPARSER::PROTEIN) ("RPA1" . SPARSER::PROTEIN)
    ("NME2" . SPARSER::PROTEIN) ("AK2" . SPARSER::PROTEIN)
    ("PDIA4" . SPARSER::PROTEIN) ("GFI1" . SPARSER::PROTEIN)
    ("TGFB1" . SPARSER::PROTEIN) ("HSBP1" . SPARSER::PROTEIN)
    ("EIF4A2" . SPARSER::PROTEIN) ("RAD21" . SPARSER::PROTEIN)
    ("MFSD11" . SPARSER::PROTEIN) ("LRRFIP1" . SPARSER::PROTEIN)
    ("ZCCHC11" . SPARSER::PROTEIN) ("TMEM50B" . SPARSER::PROTEIN)
    ("glucose-6-phosphate" . SPARSER::MOLECULE) ("ERK1" . SPARSER::PROTEIN)
    ("VAV1" . SPARSER::PROTEIN) ("CD79B" . SPARSER::PROTEIN)
    ("CD79A" . SPARSER::PROTEIN) ("CCL3" . SPARSER::PROTEIN)
    ("ZBTB5" . SPARSER::PROTEIN) ("EP400" . SPARSER::PROTEIN)
    ("ABL1" . SPARSER::PROTEIN) ("CD-" . SPARSER::PROTEIN)
    ("Anti-IgM" . SPARSER::PROTEIN) ("RP11" . SPARSER::PROTEIN)
    ("CLL-1" . SPARSER::PROTEIN) ("CD5" . SPARSER::PROTEIN)
    ("ELK1" . SPARSER::PROTEIN) ("DUSP2" . SPARSER::PROTEIN)
    ("NFAT5" . SPARSER::PROTEIN) ("micro-RNA" . SPARSER::MICRO-RNA)
    ("ZAP-70" . SPARSER::PROTEIN) ("lipoprotein lipase" . SPARSER::PROTEIN)
    ("new antiretroviral drugs" . SPARSER::DRUG)
    ("LOPI1 and 1HPV" . SPARSER::COLLECTION)
    ("LOPI 1/O6" . SPARSER::COLLECTION) ("LOPI 1" . SPARSER::PROTEIN)
    ("LOPI1" . SPARSER::PROTEIN) ("Nb-LOPI1" . SPARSER::PROTEIN-PAIR)
    ("Nb" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ASP" . SPARSER::PROTEIN)
    ("ALA" . SPARSER::AMINO-ACID) ("ILE" . SPARSER::AMINO-ACID)
    ("LEU" . SPARSER::AMINO-ACID) ("PRO" . SPARSER::AMINO-ACID)
    ("GLY" . SPARSER::AMINO-ACID) ("flap" . SPARSER::PROTEIN)
    ("Flap" . SPARSER::PROTEIN) ("ID" . SPARSER::PROTEIN)
    ("MHC" . SPARSER::PROTEIN) ("the viral Nef protein" . SPARSER::PROTEIN)
    ("runs" . SPARSER::PROTEIN-FAMILY)
    ("HIV Protease (1HPV) and HIV-1 Nef (2NEF)" . SPARSER::COLLECTION)
    ("Protease" . SPARSER::HUMAN-PROTEIN-FAMILY) ("AMI" . SPARSER::MOLECULE)
    ("the previously available standard drug Lopinavir" . SPARSER::DRUG)
    ("lopinavir and derivative (LOPI1)" . SPARSER::COLLECTION)
    ("the most comprehensive interaction map" . SPARSER::PROTEIN)
    ("an essential enzyme" . SPARSER::ENZYME) ("ritonavir" . SPARSER::DRUG)
    ("lopinavir" . SPARSER::DRUG) ("COPI" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("clathrin" . SPARSER::PROTEIN)
    ("protein and protease" . SPARSER::COLLECTION)
    ("Lopinavir" . SPARSER::DRUG) ("Env protein" . SPARSER::PROTEIN)
    ("T-G" . SPARSER::PROTEIN) ("gp 41" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gp 120" . SPARSER::DRUG)
    ("PEITC and anti-Fas-treated siRNA PTPL1 and siRNA PKC δ cells"
     . SPARSER::COLLECTION)
    ("PKC δ or both PTPL1 and PKC δ" . SPARSER::COLLECTION)
    ("AP-1 and NF- κ B" . SPARSER::COLLECTION)
    ("PEITC or paclitaxel" . SPARSER::COLLECTION)
    ("paclitaxel, etoposide  xref  or phorbol ester-induced apoptosis in LNCaP cells"
     . SPARSER::COLLECTION)
    ("PEITC and anti-Fas or paclitaxel" . SPARSER::COLLECTION)
    ("anti-Fas or paclitaxel" . SPARSER::COLLECTION)
    ("Mcl-1 or PARP" . SPARSER::COLLECTION)
    ("Both paclitaxel-treated PTPL1 and PKC δ" . SPARSER::COLLECTION)
    ("PTPL1 and siRNA" . SPARSER::COLLECTION)
    ("simultaneous PTPL1 and PKC δ" . SPARSER::COLLECTION)
    ("PTPL1 or PKC δ" . SPARSER::COLLECTION)
    ("all treated siRNA" . SPARSER::PROTEIN)
    ("PKC δ and PTPL1" . SPARSER::COLLECTION)
    ("using simultaneous PTPL1 and PKC δ" . SPARSER::COLLECTION)
    ("PEITC and anti-Fas, PEITC or paclitaxel" . SPARSER::COLLECTION)
    ("anti-Fas, PEITC or paclitaxel" . SPARSER::COLLECTION)
    ("PEITC and paclitaxel-induced apoptosis" . SPARSER::COLLECTION)
    ("PEITC or anti-Fas" . SPARSER::COLLECTION)
    ("PEITC and anti-Fas" . SPARSER::COLLECTION) ("PEITC" . SPARSER::DRUG)
    ("PTPN13, FAP-1, PTP-BAS or hPTP1E" . SPARSER::COLLECTION)
    ("NF- κ B and I κ B α" . SPARSER::COLLECTION)
    ("PTPL1 and PKC δ" . SPARSER::COLLECTION)
    ("Mcl-1 or poly (ADP-ribose) polymerase" . SPARSER::COLLECTION)
    ("Bcl-xL and Mcl-1" . SPARSER::COLLECTION) ("delta-" . SPARSER::PROTEIN)
    ("RPL13A" . SPARSER::PROTEIN) ("caspase 7" . SPARSER::PROTEIN)
    ("anti- β" . SPARSER::PROTEIN)
    ("sensitive to apoptosis" . SPARSER::PROTEIN)
    ("protein kinase C delta" . SPARSER::PROTEIN) ("hPTP1E" . SPARSER::PROTEIN)
    ("PTP-BAS" . SPARSER::PROTEIN) ("FAP-1" . SPARSER::PROTEIN)
    ("PTPN13" . SPARSER::PROTEIN)
    ("Protein tyrosine phosphatase" . SPARSER::PROTEIN)
    ("Fas ligand" . SPARSER::PROTEIN) ("I κ B α" . SPARSER::PROTEIN)
    ("protein tyrosine phosphatase" . SPARSER::PROTEIN)
    ("PTPL1" . SPARSER::PROTEIN) ("EGFR/ERK1/2" . SPARSER::COLLECTION)
    ("EGFR/PI3K-AKT" . SPARSER::COLLECTION)
    ("acute promyelocytic leukemia" . SPARSER::PROTEIN)
    ("MDR1 , c-MYC and NFKB2" . SPARSER::COLLECTION)
    ("N2 and N3" . SPARSER::COLLECTION) ("p" . SPARSER::PROTEIN)
    ("EGFR and p-ERK1/2" . SPARSER::COLLECTION) ("N1–N5" . SPARSER::COLLECTION)
    ("p53, miR-27a, EGFR, p-ERK1/2, and p-Akt" . SPARSER::COLLECTION)
    ("shRNA, or EGFR" . SPARSER::COLLECTION)
    ("p53- or EGFR-specific shRNA" . SPARSER::COLLECTION)
    ("ethynyl" . SPARSER::MOLECULE) ("p-ERK1/2" . SPARSER::PROTEIN)
    ("AKT or ERK" . SPARSER::COLLECTION)
    ("ZBTB10, FOXO1, and Myt-1" . SPARSER::COLLECTION)
    ("forkhead box O1 (FOXO1) and myelin transcription factor 1 (Myt-1)"
     . SPARSER::COLLECTION)
    ("myelin" . SPARSER::PROTEIN)
    ("neither miR-27a inhibitors nor miR-27a mimics caused any change in EGFR mRNA levels"
     . SPARSER::COLLECTION)
    ("egfr" . SPARSER::PROTEIN) ("p53 and miR-27a" . SPARSER::COLLECTION)
    ("different tumor-associated p53 mutants" . SPARSER::MUTANT)
    ("p53- and mutant" . SPARSER::COLLECTION)
    ("p53-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("wild-type p53 (H1299-Tet-On-p53) or mutant" . SPARSER::COLLECTION)
    ("typically 19–23 nucleotides" . SPARSER::NUCLEOTIDE)
    ("p53 and miRNA" . SPARSER::COLLECTION) ("PGL3" . SPARSER::PROTEIN)
    ("UO126" . SPARSER::DRUG)
    ("nuclear transcription factor Y" . SPARSER::PROTEIN)
    ("NFKB2" . SPARSER::PROTEIN) ("MDR1" . SPARSER::PROTEIN)
    ("N5" . SPARSER::PROTEIN) ("MEK-1" . SPARSER::PROTEIN)
    ("p-ERK1" . SPARSER::PROTEIN) ("Myt-1" . SPARSER::PROTEIN)
    ("forkhead box O1" . SPARSER::PROTEIN) ("ZBTB10" . SPARSER::PROTEIN)
    ("zinc finger and BTB domain containing 10" . SPARSER::PROTEIN)
    ("TTC5/EP300" . SPARSER::COLLECTION) ("MYC and BCL2" . SPARSER::COLLECTION)
    ("cellular MYC" . SPARSER::PROTEIN) ("TTC5 and MYC" . SPARSER::COLLECTION)
    ("KD and EP300" . SPARSER::COLLECTION)
    ("Neither TTC5 KD nor EP300 KD" . SPARSER::COLLECTION)
    ("TTC5 or EP300" . SPARSER::COLLECTION)
    ("BID , PUMA and BMF" . SPARSER::COLLECTION)
    ("EP300 and an EP300-interacting protein JMY" . SPARSER::COLLECTION)
    ("PUMA (also known as BBC3 ) and BMF" . SPARSER::COLLECTION)
    ("BMF" . SPARSER::PROTEIN) ("BIK" . SPARSER::PROTEIN)
    ("BOK" . SPARSER::PROTEIN) ("ACTB" . SPARSER::PROTEIN)
    ("Ttc5" . SPARSER::PROTEIN) ("HL60" . SPARSER::PROTEIN)
    ("MLL-AF9" . SPARSER::COLLECTION) ("JMY and EP300" . SPARSER::COLLECTION)
    ("HAT" . SPARSER::PROTEIN) ("JMY" . SPARSER::PROTEIN)
    ("proteins and Jumonji" . SPARSER::COLLECTION)
    ("demethylases" . SPARSER::PROTEIN) ("Jumonji" . SPARSER::PROTEIN)
    ("TET" . SPARSER::PROTEIN) ("excess cellular MYC" . SPARSER::PROTEIN)
    ("pro-apoptotic genes" . SPARSER::GENE)
    ("TTC5 and EP300" . SPARSER::COLLECTION)
    ("a stress-inducible transcription cofactor" . SPARSER::MOLECULE)
    ("TPR" . SPARSER::PROTEIN) ("HI30" . SPARSER::PROTEIN)
    ("CA5" . SPARSER::PROTEIN) ("EF1 α" . SPARSER::PROTEIN)
    ("IL3" . SPARSER::PROTEIN)
    ("acetyltransferase activity" . SPARSER::PROTEIN)
    ("BBC3" . SPARSER::PROTEIN) ("BAK1" . SPARSER::PROTEIN)
    ("NB4" . SPARSER::PROTEIN) ("AF9" . SPARSER::PROTEIN)
    ("PRMT5" . SPARSER::PROTEIN) ("HSF1" . SPARSER::PROTEIN)
    ("CHK2" . SPARSER::PROTEIN) ("checkpoint kinase 2" . SPARSER::PROTEIN)
    ("ataxia telangiectasia mutated" . SPARSER::PROTEIN)
    ("junction mediating and regulatory protein" . SPARSER::PROTEIN)
    ("tetratricopeptide repeat domain 5" . SPARSER::PROTEIN)
    ("TTC5" . SPARSER::PROTEIN)
    ("Tetratricopeptide repeat domain 5" . SPARSER::PROTEIN)
    ("CS and antioxidant" . SPARSER::COLLECTION)
    ("oxidants" . SPARSER::MOLECULE) ("acrolein" . SPARSER::MOLECULE)
    ("Nrf2, p53, 53BP1 and HO-1" . SPARSER::COLLECTION)
    ("IL-8, IL-6 and p53" . SPARSER::COLLECTION)
    ("-deoxyguanosine" . SPARSER::MOLECULE)
    ("deoxyguanosine" . SPARSER::MOLECULE) ("nickel" . SPARSER::MOLECULE)
    ("53BP1 and p53" . SPARSER::COLLECTION) ("Chen" . SPARSER::PROTEIN)
    ("trolox and CS" . SPARSER::COLLECTION)
    ("IL-8 and IL-6" . SPARSER::COLLECTION)
    ("p53 and Nrf2" . SPARSER::COLLECTION)
    ("Nrf2, HO-1, p53, 53BP1 and 4-HNE" . SPARSER::COLLECTION)
    ("TdT" . SPARSER::PROTEIN) ("Nrf2, HO-1 and p53" . SPARSER::COLLECTION)
    ("CSE" . SPARSER::PROTEIN) ("trolox and Nrf2" . SPARSER::COLLECTION)
    ("53BP1, p53 and 4-HNE" . SPARSER::COLLECTION)
    ("Nrf2, HO-1, NQO1, GCLc and 4-HNE" . SPARSER::COLLECTION)
    ("p53 and 4-HNE" . SPARSER::COLLECTION)
    ("Nrf2, NQO1, GCLc and 4-HNE" . SPARSER::COLLECTION)
    ("BAL" . SPARSER::PROTEIN) ("Trolox and Nrf2" . SPARSER::COLLECTION)
    ("oxidant" . SPARSER::PROTEIN) ("COPD and emphysema" . SPARSER::COLLECTION)
    ("emphysema" . SPARSER::PROTEIN) ("Antioxidant" . SPARSER::PROTEIN)
    ("NQO1 and GCLc" . SPARSER::COLLECTION) ("GCLc" . SPARSER::PROTEIN)
    ("Trolox" . SPARSER::MOLECULE) ("p53/53BP1" . SPARSER::COLLECTION)
    ("Nrf2, heme oxygenase 1, p53 and P53-binding protein 1"
     . SPARSER::COLLECTION)
    ("Nrf2 and p53" . SPARSER::COLLECTION) ("nick" . SPARSER::PROTEIN)
    ("dUTP" . SPARSER::MOLECULE) ("trolox" . SPARSER::MOLECULE)
    ("Oxidant/antioxidant" . SPARSER::COLLECTION)
    ("Oxidant" . SPARSER::PROTEIN) ("DNA and lung" . SPARSER::COLLECTION)
    ("smoke (CS)" . SPARSER::MOLECULE) ("COPD" . SPARSER::PROTEIN)
    ("smoke" . SPARSER::MOLECULE) ("Cigarette" . SPARSER::DRUG)
    ("Hydrogen peroxide" . SPARSER::MOLECULE)
    ("triton X-100" . SPARSER::MOLECULE) ("protein C" . SPARSER::PROTEIN)
    ("carbon monoxide" . SPARSER::MOLECULE) ("SP-A" . SPARSER::PROTEIN)
    ("Ep-CAM" . SPARSER::PROTEIN) ("lamin-B1" . SPARSER::PROTEIN)
    ("HBE1" . SPARSER::PROTEIN) ("Nf2" . SPARSER::PROTEIN)
    ("P53-binding protein 1" . SPARSER::PROTEIN)
    ("heme oxygenase 1" . SPARSER::PROTEIN)
    ("Hydrogen Peroxide" . SPARSER::MOLECULE)
    ("erythroid 2" . SPARSER::PROTEIN) ("GSK-3 β and PI" . SPARSER::COLLECTION)
    ("PERK, IRE1 α and ATF6" . SPARSER::COLLECTION)
    ("LC3 , Atg5 and Atg12" . SPARSER::COLLECTION)
    ("ATF4 and CHOP" . SPARSER::COLLECTION)
    ("even non-ubiquitinated proteins" . SPARSER::PROTEIN)
    ("This stress-regulated multi-adaptor protein" . SPARSER::COLLECTION)
    ("K63 and LC3" . SPARSER::COLLECTION)
    ("SQSTM1, BAG3 and LC3" . SPARSER::COLLECTION)
    ("multi-adaptor protein" . SPARSER::COLLECTION)
    ("specifically targets protein" . SPARSER::PROTEIN)
    ("soluble misfolded proteins" . SPARSER::PROTEIN)
    ("protein and organelle" . SPARSER::COLLECTION)
    ("Electron" . SPARSER::MOLECULE) ("LiCl and MG132" . SPARSER::COLLECTION)
    ("VII" . SPARSER::PROTEIN) ("LiCl" . SPARSER::DRUG)
    ("Akt and protein" . SPARSER::COLLECTION)
    ("Akt/GSK-3" . SPARSER::COLLECTION) ("BAG1 or BAG3" . SPARSER::COLLECTION)
    ("Atg5" . SPARSER::PROTEIN)
    ("the pro-apoptotic transcription factor CHOP" . SPARSER::PROTEIN)
    ("PERK" . SPARSER::PROTEIN) ("SRB" . SPARSER::PROTEIN-FAMILY)
    ("acute PI" . SPARSER::PROTEIN) ("Beclin-1 and Atg7" . SPARSER::COLLECTION)
    ("Atg7" . SPARSER::PROTEIN) ("Atg" . SPARSER::DRUG)
    ("β 1i/LMP2" . SPARSER::COLLECTION)
    ("both the constitutive β 5 and the inducible β 5i/LMP7 subunits"
     . SPARSER::COLLECTION)
    ("β 5i/LMP7" . SPARSER::COLLECTION) ("BAG3/BAG1" . SPARSER::COLLECTION)
    ("xref  BAG1 (∼36 kDa) and BAG1M (∼46 kDa)" . SPARSER::COLLECTION)
    ("p62/SQSTM1" . SPARSER::COLLECTION)
    ("BAG1 and BAG3" . SPARSER::COLLECTION)
    ("the Bcl-2-associated athanogen (BAG) proteins" . SPARSER::PROTEIN)
    ("BAG" . SPARSER::PROTEIN-FAMILY) ("CHOP" . SPARSER::PROTEIN)
    ("K 4" . SPARSER::PROTEIN)
    ("glyceraldehyde-3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("G-1" . SPARSER::PROTEIN) ("GSK 3" . SPARSER::PROTEIN)
    ("A11" . SPARSER::PROTEIN) ("LC3B" . SPARSER::PROTEIN)
    ("Acridine orange" . SPARSER::MOLECULE)
    ("Sulforhodamine B" . SPARSER::MOLECULE) ("Leu-Val" . SPARSER::MOLECULE)
    ("Chymotrypsin-like" . SPARSER::PROTEIN) ("Atg12" . SPARSER::PROTEIN)
    ("ATF6" . SPARSER::PROTEIN) ("IRE1 α" . SPARSER::PROTEIN)
    ("lithium chloride" . SPARSER::DRUG) ("PKC δ" . SPARSER::PROTEIN)
    ("GSK-3 α" . SPARSER::PROTEIN) ("β -catenin" . SPARSER::PROTEIN)
    ("HER-2" . SPARSER::PROTEIN) ("acridine orange" . SPARSER::MOLECULE)
    ("ATF4" . SPARSER::PROTEIN)
    ("activating transcription factor 4" . SPARSER::PROTEIN)
    ("sulforhodamine B" . SPARSER::MOLECULE) ("cathepsin D" . SPARSER::PROTEIN)
    ("Beclin-1" . SPARSER::PROTEIN) ("LMP2" . SPARSER::PROTEIN)
    ("β 1i" . SPARSER::PROTEIN) ("LMP7" . SPARSER::PROTEIN)
    ("β 5" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("chymotrypsin-like" . SPARSER::PROTEIN) ("LC3" . SPARSER::PROTEIN)
    ("p62" . SPARSER::PROTEIN) ("SQSTM1" . SPARSER::PROTEIN)
    ("ubiquitin-binding protein p62" . SPARSER::PROTEIN)
    ("BAG3" . SPARSER::PROTEIN) ("BAG1" . SPARSER::PROTEIN)
    ("GSK-3 β" . SPARSER::PROTEIN) ("KRAS and PIK3CA" . SPARSER::COLLECTION)
    ("KRAS or BRAF or PIK3CA" . SPARSER::COLLECTION) ("mAbs" . SPARSER::DRUG)
    ("BRAF and PI3KCA" . SPARSER::COLLECTION)
    ("a biphasic MPM" . SPARSER::MOLECULE) ("GGC" . SPARSER::PROTEIN)
    ("GGT" . SPARSER::PROTEIN)
    ("Eastern Cooperative Oncology Group" . SPARSER::MOLECULE)
    ("histological MPM" . SPARSER::MOLECULE)
    ("KRAS , BRAF , and PI3KCA" . SPARSER::COLLECTION)
    ("anti-EGFR monoclonal antibodies" . SPARSER::ANTIBODY)
    ("mABs" . SPARSER::DRUG) ("pemetrexed" . SPARSER::DRUG)
    ("asbestos" . SPARSER::MOLECULE) ("MPM" . SPARSER::MOLECULE)
    ("MPMs" . SPARSER::MOLECULE) ("MIB-1" . SPARSER::PROTEIN)
    ("SK" . SPARSER::PROTEIN) ("JN" . SPARSER::PROTEIN)
    ("PY and SN" . SPARSER::COLLECTION) ("PY" . SPARSER::MOLECULE)
    ("etanercept" . SPARSER::DRUG) ("p38 and CD137" . SPARSER::COLLECTION)
    ("CD137 and p38 MAPK" . SPARSER::COLLECTION) ("GCG" . SPARSER::PROTEIN)
    ("protease and NS2B-NS3" . SPARSER::COLLECTION)
    ("mAb and cycloheximide" . SPARSER::COLLECTION)
    ("anti-Fas and cycloheximide" . SPARSER::COLLECTION)
    ("annexinV/PI" . SPARSER::COLLECTION) ("annexinV" . SPARSER::PROTEIN)
    ("Sigma" . SPARSER::PROTEIN-FAMILY) ("polybrene" . SPARSER::MOLECULE)
    ("Neo" . SPARSER::PROTEIN)
    ("cJun N-terminal kinase (JNK) and p38 mitogen-activated protein kinase (MAPK) [ xref ]"
     . SPARSER::COLLECTION)
    ("kinase (JNK)" . SPARSER::KINASE) ("cJun" . SPARSER::PROTEIN)
    ("CD137 and CD137" . SPARSER::COLLECTION) ("Daxx" . SPARSER::PROTEIN)
    ("bipartite" . SPARSER::PROTEIN) ("exogenous TNF-α" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinase (MAPK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CD 137" . SPARSER::PROTEIN) ("TG3" . SPARSER::PROTEIN)
    ("NS2" . SPARSER::PROTEIN) ("NS3" . SPARSER::PROTEIN)
    ("p38 MAPK protein" . SPARSER::PROTEIN) ("ASK1" . SPARSER::PROTEIN)
    ("apoptosis signal regulating kinase 1" . SPARSER::PROTEIN)
    ("TNF receptor associated factor 2" . SPARSER::PROTEIN)
    ("capsid protein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CD137" . SPARSER::PROTEIN) ("SQ" . SPARSER::MOLECULE)
    ("Eastern cooperative oncology group" . SPARSER::MOLECULE)
    ("KRAS, BRAF, and cMET" . SPARSER::COLLECTION) ("cMET" . SPARSER::PROTEIN)
    ("continued receiving TKIs" . SPARSER::PROTEIN)
    ("favorable DCR" . SPARSER::PROTEIN) ("FISH+" . SPARSER::PROTEIN)
    ("a better predictive biomarker" . SPARSER::MOLECULE)
    ("FISH + " . SPARSER::PROTEIN) ("EGFR-FISH + " . SPARSER::PROTEIN-PAIR)
    ("DCRs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("DCR" . SPARSER::PROTEIN)
    ("EGFR-FISH" . SPARSER::COLLECTION) ("FISH and TKI" . SPARSER::COLLECTION)
    ("FISH and EGFR" . SPARSER::COLLECTION) ("NCCN" . SPARSER::MOLECULE)
    ("FISH-" . SPARSER::PROTEIN) ("FISH " . SPARSER::PROTEIN)
    ("A-D" . SPARSER::PROTEIN)
    ("cyclophosphamide, methotrexate and 5-fluorouracil or 5-fluorouracil"
     . SPARSER::COLLECTION)
    ("methotrexate" . SPARSER::DRUG) ("epirubicin" . SPARSER::DRUG)
    ("both HR (good prognosis) and HER2 (worse prognosis)"
     . SPARSER::COLLECTION)
    ("triple-negative subtypes" . SPARSER::PROTEIN)
    ("HER2 and HR" . SPARSER::COLLECTION)
    ("MYC and HER 2" . SPARSER::COLLECTION)
    ("triple-negative (p<0.001, OR: 24.44, 95% CI: 7.887–75.759) subtypes"
     . SPARSER::PROTEIN)
    ("HR and HER2" . SPARSER::COLLECTION)
    ("MYC and KRAS" . SPARSER::COLLECTION) ("ER and PR" . SPARSER::COLLECTION)
    ("protein and gene" . SPARSER::COLLECTION)
    ("Myc and the mutant Kras" . SPARSER::COLLECTION)
    ("ER or PR" . SPARSER::COLLECTION)
    ("ER, PR and HER2" . SPARSER::COLLECTION)
    ("PR−" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ER−" . SPARSER::PROTEIN)
    ("HER2−" . SPARSER::PROTEIN) ("cyclophosphamide" . SPARSER::DRUG)
    ("HER2 and MYC genes and their protein status" . SPARSER::COLLECTION)
    ("prognostic or predictive biomarkers" . SPARSER::MOLECULE)
    ("HER2 and MYC" . SPARSER::COLLECTION) ("5-FU" . SPARSER::PROTEIN)
    ("HER 2" . SPARSER::PROTEIN) ("c-erbB2" . SPARSER::PROTEIN)
    ("protease inhibitors and nucleoside reverse transcriptase inhibitors"
     . SPARSER::COLLECTION)
    ("nucleoside" . SPARSER::MOLECULE) ("ART" . SPARSER::PROTEIN)
    ("Tat-induced ICAM-1" . SPARSER::PROTEIN)
    ("p65/RelA" . SPARSER::COLLECTION) ("RelA" . SPARSER::PROTEIN)
    ("several HIV viral proteins" . SPARSER::PROTEIN) ("type (WT)" . TYPE)
    ("JNK (SP600125) or p38 (SB203580)" . SPARSER::COLLECTION)
    ("ALCAM and VCAM-1" . SPARSER::COLLECTION)
    ("molecule (ALCAM)" . SPARSER::MOLECULE) ("ALCAM" . SPARSER::PROTEIN)
    ("ICAM-1 and VCAM-1" . SPARSER::COLLECTION)
    ("HIV-1 viral protein Tat" . SPARSER::PROTEIN) ("Tg" . SPARSER::PROTEIN)
    ("the respective miRNAs" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinases and downstream transcription factor NF-κB"
     . SPARSER::COLLECTION)
    ("adhesion molecule" . SPARSER::PROTEIN) ("MiR-221" . SPARSER::PROTEIN)
    ("MAPK kinase" . SPARSER::PROTEIN) ("Serum Albumin" . SPARSER::PROTEIN)
    ("a 20 µ" . SPARSER::PROTEIN) ("10C" . SPARSER::PROTEIN)
    ("SB 203580" . SPARSER::DRUG) ("IKK2" . SPARSER::PROTEIN)
    ("IκB" . SPARSER::PROTEIN) ("miR-221" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ICAM-1" . SPARSER::PROTEIN) ("prolinerich" . SPARSER::PROTEIN-FAMILY)
    ("whose polymorphic variants" . SPARSER::VARIANT)
    ("everolimus" . SPARSER::DRUG) ("Sirolimus" . SPARSER::DRUG)
    ("p70S6k" . SPARSER::PROTEIN)
    ("insulin-like growth factors and other growth factors"
     . SPARSER::COLLECTION)
    ("TG or GG" . SPARSER::COLLECTION) ("Males" . SPARSER::MOLECULE)
    ("TG and GG" . SPARSER::COLLECTION) ("American" . SPARSER::PROTEIN)
    ("intestinal type" . TYPE)
    ("Sin1, mLST8, and rapamycin-insensitive companion of mTOR"
     . SPARSER::COLLECTION)
    ("raptor" . SPARSER::PROTEIN) ("a new biomarker" . SPARSER::MOLECULE)
    ("an imperative part" . SPARSER::COMPONENT)
    ("insulin receptor" . SPARSER::PROTEIN) ("FRAP1" . SPARSER::PROTEIN)
    ("g protein" . SPARSER::PROTEIN) ("GES-1" . SPARSER::PROTEIN)
    ("Sin1" . SPARSER::PROTEIN)
    ("regulatory-associated protein of mTOR" . SPARSER::PROTEIN)
    ("LST8" . SPARSER::PROTEIN) ("FK506-binding protein 12" . SPARSER::PROTEIN)
    ("Mammalian target of rapamycin" . SPARSER::PROTEIN)
    ("associated alleles" . SPARSER::ALLELE)
    ("BANK1, PLCg2 and BLK" . SPARSER::COLLECTION)
    ("PKC and Ras" . SPARSER::COLLECTION) ("BCR-PLCG2" . SPARSER::COLLECTION)
    ("Ali" . SPARSER::PROTEIN) ("the homeostatic BLK" . SPARSER::PROTEIN)
    ("BANK1 and both molecules" . SPARSER::COLLECTION)
    ("the predominant Src-kinases" . SPARSER::KINASE)
    ("LYN and BLK" . SPARSER::COLLECTION)
    ("SLP65 or BASH" . SPARSER::COLLECTION) ("BASH" . SPARSER::PROTEIN)
    ("BLNK" . SPARSER::PROTEIN) ("VAV, BTK or CSK" . SPARSER::COLLECTION)
    ("CSK" . SPARSER::PROTEIN) ("VAV" . SPARSER::PROTEIN)
    ("kinases and PLCg" . SPARSER::COLLECTION)
    ("receptor (BCR)" . SPARSER::RECEPTOR)
    ("BLK (BLK–YF) and PLCg2 ( xref )" . SPARSER::COLLECTION)
    ("orthologous proteins" . SPARSER::PROTEIN)
    ("prolines" . SPARSER::AMINO-ACID) ("tyrosines" . SPARSER::AMINO-ACID)
    ("BLK (YF)" . SPARSER::PROTEIN) ("YF" . SPARSER::MOLECULE)
    ("proteins, BANK1 and PLCg2" . SPARSER::COLLECTION)
    ("BLK and LYN" . SPARSER::COLLECTION)
    ("So far two kinases" . SPARSER::PROTEIN)
    ("BANK1, and BLK" . SPARSER::COLLECTION)
    ("BANK1 and PLCG2" . SPARSER::COLLECTION)
    ("Student´s t" . SPARSER::PROTEIN) ("bright" . SPARSER::PROTEIN)
    ("BcR" . SPARSER::PROTEIN) ("BANK1-PLCG2" . SPARSER::COLLECTION)
    ("CD163 and ATG4b" . SPARSER::COLLECTION) ("ATG4b" . SPARSER::PROTEIN)
    ("The scavenger receptor CD163 and the autophagy related protease ATG4b"
     . SPARSER::COLLECTION)
    ("BANK1 and the recovered Y2H" . SPARSER::COLLECTION)
    ("lipase" . SPARSER::PROTEIN) ("LYN, FYN and HCK" . SPARSER::COLLECTION)
    ("the mature Saposin C form" . SPARSER::FORM)
    ("PSAP and Saposin" . SPARSER::COLLECTION) ("saposin" . SPARSER::PROTEIN)
    ("Saposin" . SPARSER::PROTEIN) ("PSAP" . SPARSER::PROTEIN)
    ("BANK1 and BLK" . SPARSER::COLLECTION)
    ("BANK1-PLCg2" . SPARSER::COLLECTION)
    ("PLCg2 and BANK1" . SPARSER::COLLECTION)
    ("HCK, FGR and LCK" . SPARSER::COLLECTION) ("LCK" . SPARSER::PROTEIN)
    ("FGR" . SPARSER::PROTEIN) ("HCK" . SPARSER::PROTEIN)
    ("FYN" . SPARSER::PROTEIN) ("associated molecules" . SPARSER::MOLECULE)
    ("autoantibody" . SPARSER::PROTEIN) ("PLCg1" . SPARSER::PROTEIN)
    ("phospholipases (PLC)" . SPARSER::PROTEIN) ("IgM" . SPARSER::PROTEIN)
    ("spleen tyrosine kinase (SYK)" . SPARSER::PROTEIN)
    ("LYN or BTK" . SPARSER::COLLECTION) ("LYN" . SPARSER::PROTEIN)
    ("SYK" . SPARSER::PROTEIN) ("Dof-BCAP-BANK" . SPARSER::COLLECTION)
    ("BANK" . SPARSER::PROTEIN) ("BCAP" . SPARSER::PROTEIN)
    ("Src-" . SPARSER::PROTEIN) ("lyn" . SPARSER::PROTEIN)
    ("activators or inhibitors" . SPARSER::COLLECTION)
    ("BANK1 and PLCg2" . SPARSER::COLLECTION)
    ("tyrosine and proline" . SPARSER::COLLECTION)
    ("BANK1-" . SPARSER::PROTEIN) ("PLCg2" . SPARSER::PROTEIN)
    ("BCR" . SPARSER::PROTEIN)
    ("other B-cell signaling molecules or their role in the process"
     . SPARSER::COLLECTION)
    ("tyrosine kinase (BLK)" . SPARSER::PROTEIN) ("BLK" . SPARSER::PROTEIN)
    ("ankyrin" . SPARSER::PROTEIN) ("Phospho-Tyrosine" . SPARSER::MOLECULE)
    ("lipase activity" . SPARSER::PROTEIN) ("RASGRP3" . SPARSER::PROTEIN)
    ("protein 3" . SPARSER::PROTEIN) ("nSH2" . SPARSER::PROTEIN)
    ("SLP65" . SPARSER::PROTEIN)
    ("phospholipase C gamma" . SPARSER::PROTEIN-FAMILY)
    ("IP3R" . SPARSER::PROTEIN) ("P20" . SPARSER::PROTEIN)
    ("anti-IgM" . SPARSER::PROTEIN) ("PLCG2" . SPARSER::PROTEIN)
    ("ATG4B" . SPARSER::PROTEIN) ("protease ATG4b" . SPARSER::PROTEIN)
    ("CD163" . SPARSER::PROTEIN) ("Phospholipase C-gamma 2" . SPARSER::PROTEIN)
    ("A-14" . SPARSER::PROTEIN) ("Ku70" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("G22P1" . SPARSER::PROTEIN) ("cSH2" . SPARSER::PROTEIN)
    ("phospholipase C-gamma 2" . SPARSER::PROTEIN)
    ("Src-homology" . SPARSER::PROTEIN)
    ("phospholipase activity" . SPARSER::PROTEIN) ("IP3" . SPARSER::IP3)
    ("CD40" . SPARSER::PROTEIN) ("IP3R2" . SPARSER::PROTEIN)
    ("spleen tyrosine kinase" . SPARSER::PROTEIN) ("BANK1" . SPARSER::PROTEIN)
    ("IDH" . SPARSER::PROTEIN) ("MPL, ASXL1, and CBL" . SPARSER::COLLECTION)
    ("CBL" . SPARSER::PROTEIN) ("MPL" . SPARSER::PROTEIN)
    ("MPNs" . SPARSER::PROTEIN)
    ("JAK2V617F wt or homozygous genotype and age" . SPARSER::COLLECTION)
    ("wt and homozygous genotypes" . SPARSER::COLLECTION)
    ("had either wt or homozygous V617F genotype" . SPARSER::COLLECTION)
    ("PB" . SPARSER::PROTEIN) ("cohort-" . SPARSER::MOLECULE)
    ("mutated alleles" . SPARSER::ALLELE)
    ("JAK2 V617F wt and homozygous genotypes" . SPARSER::COLLECTION)
    ("PMF" . SPARSER::PROTEIN) ("ASXL1" . SPARSER::PROTEIN)
    ("LMO2" . SPARSER::PROTEIN)
    ("heterochromatin protein 1" . SPARSER::PROTEIN)
    ("HR 2" . SPARSER::PROTEIN) ("Janus Kinase 2" . SPARSER::PROTEIN)
    ("NF-kB and nuclear PI-PLC β1" . SPARSER::COLLECTION)
    ("virion-associated gp120" . SPARSER::DRUG)
    ("Pyk2 and p38 MAPK" . SPARSER::COLLECTION)
    ("Tak779 and PTX" . SPARSER::COLLECTION)
    ("cPLA 2 and lysosomal" . SPARSER::COLLECTION)
    ("PI and PC" . SPARSER::COLLECTION) ("PC-PLD" . SPARSER::COLLECTION)
    ("HIV-1-infected primary macrophages" . SPARSER::PROTEIN)
    ("alkylphospholipid" . SPARSER::DRUG) ("COOH" . SPARSER::MOLECULE)
    ("a distinct PI" . SPARSER::PROTEIN) ("Abs" . SPARSER::PROTEIN)
    ("viral proteins" . SPARSER::PROTEIN)
    ("immune-activated macrophages" . SPARSER::PROTEIN)
    ("the viral glycoprotein" . SPARSER::PROTEIN)
    ("PD98059 and U0126" . SPARSER::COLLECTION)
    ("gp120 and CCL4" . SPARSER::COLLECTION)
    ("PC-PLC and CCL2" . SPARSER::COLLECTION)
    ("the CCR5-specific pharmacologic antagonist Tak779" . SPARSER::DRUG)
    ("coreceptor" . SPARSER::PROTEIN) ("OCH" . SPARSER::PROTEIN)
    ("lysophospholipid" . SPARSER::MOLECULE) ("SE" . SPARSER::PROTEIN)
    ("heterotrimeric G protein subunits" . SPARSER::FRAGMENT)
    ("GPCRs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("monocyte-derived macrophages (MDM)" . SPARSER::PROTEIN)
    ("MDM" . SPARSER::PROTEIN) ("cytokine/chemokine" . SPARSER::COLLECTION)
    ("PLD, PLC and PLA 2" . SPARSER::COLLECTION) ("PLD" . SPARSER::PROTEIN)
    ("phospholipase" . SPARSER::PROTEIN)
    ("-1,4,5-trisphosphate and diacylglycerol" . SPARSER::COLLECTION)
    ("diacylglycerol" . SPARSER::PROTEIN) ("phospholipases" . SPARSER::PROTEIN)
    ("Phospholipid" . SPARSER::PHOSPHOLIPID)
    ("Phospholipases" . SPARSER::PROTEIN)
    ("neurotransmitters and other extracellular signals xref"
     . SPARSER::COLLECTION)
    ("neurotransmitters" . SPARSER::MOLECULE)
    ("Phospholipase" . SPARSER::PROTEIN)
    ("Lyn, MAP and PI3" . SPARSER::COLLECTION)
    ("soluble gp120" . SPARSER::DRUG) ("CCR5 or CXCR4" . SPARSER::COLLECTION)
    ("matrix protein p17 and transactivator protein Tat" . SPARSER::COLLECTION)
    ("Tat" . SPARSER::PROTEIN)
    ("the most studied pro-inflammatory molecules" . SPARSER::MOLECULE)
    ("monocytes/macrophages" . SPARSER::COLLECTION)
    ("CC-chemokine" . SPARSER::PROTEIN-PAIR) ("PC-" . SPARSER::PROTEIN)
    ("PC" . SPARSER::PROTEIN) ("phosphatidylcholine" . SPARSER::MOLECULE)
    ("CD1a" . SPARSER::PROTEIN) ("CCR2" . SPARSER::PROTEIN)
    ("cPLA 2" . SPARSER::PROTEIN) ("Tak779" . SPARSER::DRUG)
    ("G protein-coupled" . SPARSER::PROTEIN) ("PLA 2" . SPARSER::PROTEIN)
    ("ion channel" . SPARSER::PROTEIN-FAMILY)
    ("phosphatidyl-inositol" . SPARSER::MOLECULE)
    ("PI-PLCs" . SPARSER::PROTEIN) ("Pyk2" . SPARSER::PROTEIN)
    ("chemoattractant protein-1" . SPARSER::PROTEIN)
    ("PC-PLC" . SPARSER::PROTEIN) ("PI-PLC" . SPARSER::PROTEIN)
    ("sorafenib or sorafenib" . SPARSER::COLLECTION)
    ("STAT3-driven genes" . SPARSER::GENE) ("sorafenib" . SPARSER::DRUG)
    ("the immediate-early 2 protein" . SPARSER::PROTEIN)
    ("p53-Mdm2" . SPARSER::COLLECTION) ("waf" . SPARSER::PROTEIN)
    ("cyclin D1, and phospho-STAT3" . SPARSER::COLLECTION)
    ("fos, myc, and pim-1" . SPARSER::COLLECTION)
    ("fos" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ODN" . SPARSER::PROTEIN)
    ("an attractive therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("IE1 or US28" . SPARSER::COLLECTION)
    ("US28 and IE1" . SPARSER::COLLECTION)
    ("IL-6/JAK-2/STAT3" . SPARSER::COLLECTION)
    ("STAT3 or JAK" . SPARSER::COLLECTION)
    ("a STAT3 inhibitor or UV-inactivated HCMV blocked cell proliferation ( xref )"
     . SPARSER::COLLECTION)
    ("IL-6-STAT3" . SPARSER::COLLECTION)
    ("STAT3 and JAK2" . SPARSER::COLLECTION)
    ("receptor (EGFR)" . SPARSER::RECEPTOR)
    ("a pan-JAK inhibitor and a STAT3 inhibitor" . SPARSER::COLLECTION)
    ("JAK-1 and JAK-2" . SPARSER::COLLECTION) ("ganciclovir" . SPARSER::DRUG)
    ("Ganciclovir" . SPARSER::DRUG)
    ("the late viral proteins" . SPARSER::PROTEIN)
    ("the immediate early viral protein IE1" . SPARSER::PROTEIN)
    ("the early protein US28 and the late proteins pp65 and 65 kD"
     . SPARSER::COLLECTION)
    ("the late proteins pp65 and 65 kD" . SPARSER::COLLECTION)
    ("pp65 and 65 kD" . SPARSER::COLLECTION)
    ("promoter (MIEP)" . SPARSER::PROMOTER)
    ("cyclin D1, survivin, and Bcl-2" . SPARSER::COLLECTION)
    ("JAKs" . SPARSER::PROTEIN) ("LPS" . SPARSER::PROTEIN)
    ("hereditary iron" . SPARSER::MOLECULE) ("iron" . SPARSER::MOLECULE)
    ("genesis" . SPARSER::PROTEIN) ("p53 and p21" . SPARSER::COLLECTION)
    ("cyclin D1 and survivin" . SPARSER::COLLECTION)
    ("STAT3, pSTAT3, JAK, cyclin D1, survivin, p53, p21, and Mdm2"
     . SPARSER::COLLECTION)
    ("PHH" . SPARSER::PROTEIN) ("IE2" . SPARSER::PROTEIN)
    ("pim-1" . SPARSER::PROTEIN) ("JAK-2" . SPARSER::PROTEIN)
    ("JAK-1" . SPARSER::PROTEIN) ("immediate early protein" . SPARSER::PROTEIN)
    ("IE1" . SPARSER::PROTEIN) ("immediate early" . SPARSER::PROTEIN)
    ("US-28" . SPARSER::PROTEIN) ("beta-globin" . SPARSER::PROTEIN)
    ("US 28" . SPARSER::PROTEIN) ("WP1066" . SPARSER::DRUG)
    ("65 kD" . SPARSER::PROTEIN) ("1-L" . SPARSER::PROTEIN)
    ("pp65" . SPARSER::PROTEIN) ("US28" . SPARSER::PROTEIN)
    ("IE-1" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription-3" . SPARSER::PROTEIN)
    ("IL-6 receptor" . SPARSER::PROTEIN)
    ("higher-order oligomeric forms" . SPARSER::FORM)
    ("already existing non-B DNA" . SPARSER::DNA)
    ("EGFR , MDR-1 and c-myc" . SPARSER::COLLECTION)
    ("scaffold and components" . SPARSER::COLLECTION)
    ("Sp1, YY1 and RNA polymerase II" . SPARSER::COLLECTION)
    ("Mutp53" . SPARSER::PROTEIN)
    ("some genomic repetitive fragments" . SPARSER::FRAGMENT)
    ("mutp53" . SPARSER::PROTEIN) ("mutp53s" . SPARSER::PROTEIN)
    ("mutp53-MSP" . SPARSER::PROTEIN-PAIR) ("WIZ" . SPARSER::PROTEIN)
    ("higher oligomeric forms" . SPARSER::FORM) ("longer DNA" . SPARSER::DNA)
    ("the topological state" . SPARSER::BIO-STATE)
    ("unique chromatin" . SPARSER::PROTEIN)
    ("mut and wt" . SPARSER::COLLECTION) ("pGL3-MSP" . SPARSER::COLLECTION)
    ("pGL3-MDM2" . SPARSER::COLLECTION) ("pGL3-BAX" . SPARSER::COLLECTION)
    ("BAX and MSP/MST1 Promoter Topology" . SPARSER::COLLECTION)
    ("an equimolar mixture" . SPARSER::MOLECULE)
    ("pGL3 and pBSK" . SPARSER::COLLECTION) ("rel" . SPARSER::PROTEIN)
    ("p53CD" . SPARSER::PROTEIN) ("GST-Sp1" . SPARSER::COLLECTION)
    ("GST-p53CD" . SPARSER::COLLECTION) ("MBIP" . SPARSER::PROTEIN)
    ("scAA" . SPARSER::PROTEIN)
    ("repetitive intronic/intergenic DNA" . SPARSER::DNA)
    ("mutp53BS" . SPARSER::PROTEIN) ("mutp53BS-MSP" . SPARSER::PROTEIN-PAIR)
    ("PPARGC1A and FRMD5" . SPARSER::COLLECTION) ("linDNA" . SPARSER::PROTEIN)
    ("Si" . SPARSER::PROTEIN) ("relaxed circular duplex DNA" . SPARSER::DNA)
    ("p53-linDNA" . SPARSER::COLLECTION) ("wt and mut" . SPARSER::COLLECTION)
    ("scDNA" . SPARSER::PROTEIN) ("p53-scDNA" . SPARSER::COLLECTION)
    ("the former mutp53 proteins" . SPARSER::PROTEIN)
    ("Tumor-associated Mutant p53 Proteins" . SPARSER::PROTEIN)
    ("the BAX and MSP/MST1 promoters" . SPARSER::COLLECTION)
    ("supercoiled, linear and relaxed circular DNA" . SPARSER::DNA)
    ("DNAs" . SPARSER::DNA) ("at least Sp1" . SPARSER::PROTEIN)
    ("CD95/Fas/Apo1" . SPARSER::COLLECTION)
    ("p63 and p73" . SPARSER::COLLECTION)
    ("Sp1, NF-Y, E2F1, VDR and SREBP-2" . SPARSER::COLLECTION)
    ("PML" . SPARSER::PROTEIN) ("VDR" . SPARSER::PROTEIN)
    ("MARs" . SPARSER::PROTEIN) ("mer" . SPARSER::PROTEIN)
    ("cardinal tumor suppressor" . SPARSER::SUPPRESSOR)
    ("GOF" . SPARSER::PROTEIN)
    ("BAX and MSP/MST1 promoters" . SPARSER::COLLECTION)
    ("MSP/MST1" . SPARSER::COLLECTION)
    ("linear or relaxed circular DNA" . SPARSER::DNA)
    ("circular DNA" . SPARSER::DNA)
    ("topologically different DNA substrates (supercoiled, linear and relaxed) containing and/or lacking mutp53 binding sites (mutp53BS) using a variety"
     . SPARSER::COLLECTION)
    ("BS" . SPARSER::PROTEIN) ("Hot" . SPARSER::PROTEIN)
    ("TAp63" . SPARSER::PROTEIN) ("MDR-1" . SPARSER::PROTEIN)
    ("FRMD5" . SPARSER::PROTEIN) ("PPARGC1A" . SPARSER::PROTEIN)
    ("Id2" . SPARSER::PROTEIN) ("T-Rex" . SPARSER::PROTEIN-FAMILY)
    ("pT7" . SPARSER::PROTEIN) ("ID4" . SPARSER::PROTEIN)
    ("EGR1" . SPARSER::PROTEIN) ("ID2" . SPARSER::PROTEIN)
    ("Apo1" . SPARSER::PROTEIN) ("p42" . SPARSER::PROTEIN)
    ("MBP1" . SPARSER::PROTEIN) ("SREBP-2" . SPARSER::PROTEIN)
    ("NF-Y" . SPARSER::PROTEIN) ("p53 family" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("other skin-derived AMP" . SPARSER::AMP)
    ("hBD-2, hBD-3 and psoriasin" . SPARSER::COLLECTION)
    ("IL-17A and IL-17C" . SPARSER::COLLECTION)
    ("IL-17RA and IL-17RC" . SPARSER::COLLECTION)
    ("IFN-γ or other cytokines" . SPARSER::COLLECTION)
    ("staphylococcal" . SPARSER::PROTEIN) ("IgE" . SPARSER::PROTEIN)
    ("AMP-inducers" . SPARSER::AMP) ("inducers" . SPARSER::MOLECULE)
    ("other psoriasis-associated cytokines" . SPARSER::PROTEIN)
    ("IL-22, TNF-α and IL-1" . SPARSER::COLLECTION)
    ("antimicrobial peptides" . SPARSER::PEPTIDE)
    ("psoriasin, hBD-2 and -3" . SPARSER::COLLECTION)
    ("psoriasin and hBD-3" . SPARSER::COLLECTION)
    ("skin-derived AMP" . SPARSER::AMP)
    ("a powerful inducer" . SPARSER::PROTEIN)
    ("hBD-2 and RNase" . SPARSER::COLLECTION)
    ("psoriasin and hBD-2" . SPARSER::COLLECTION)
    ("IFN-γ or IL-17A" . SPARSER::COLLECTION)
    ("hBD-2 ( xref ) and hBD-3 ( xref )" . SPARSER::COLLECTION)
    ("other skin-relevant AMP" . SPARSER::AMP)
    ("hBD-2 and hBD-3" . SPARSER::COLLECTION)
    ("the Antimicrobial Peptides hBD-2, hBD-3 and Psoriasin"
     . SPARSER::COLLECTION)
    ("hBD-2, hBD-3 and Psoriasin" . SPARSER::COLLECTION)
    ("Psoriasin" . SPARSER::PROTEIN) ("Gene and Protein" . SPARSER::COLLECTION)
    ("IL-17A or IFN-γ" . SPARSER::COLLECTION)
    ("IL-17A/IL-1" . SPARSER::COLLECTION) ("Keratinocytes" . SPARSER::PROTEIN)
    ("an important skin-derived AMP" . SPARSER::AMP)
    ("-2 and hBD-3" . SPARSER::COLLECTION) ("hBD-3" . SPARSER::PROTEIN)
    ("ribonuclease" . SPARSER::PROTEIN)
    ("cathelicidin" . SPARSER::PROTEIN-FAMILY) ("defensins" . SPARSER::PROTEIN)
    ("mainly cationic endogenous proteins" . SPARSER::PROTEIN)
    ("antimicrobial peptides and proteins (AMP)" . SPARSER::COLLECTION)
    ("-2 and -3" . SPARSER::COLLECTION) ("hBD" . SPARSER::PROTEIN)
    ("IFN-γ and IL-17A" . SPARSER::COLLECTION)
    ("a strong inducer" . SPARSER::PROTEIN)
    ("IL-17A/TNF-α" . SPARSER::COLLECTION)
    ("IL-17A and IFN-γ" . SPARSER::COLLECTION)
    ("IL-17A/IFN-γ" . SPARSER::COLLECTION) ("keratinocytes" . SPARSER::PROTEIN)
    ("several antimicrobial peptides and proteins (AMP)" . SPARSER::COLLECTION)
    ("IL-17RC" . SPARSER::PROTEIN) ("IL-17RA" . SPARSER::PROTEIN)
    ("IL-22" . SPARSER::PROTEIN) ("IL-17C" . SPARSER::PROTEIN)
    ("IL-1" . SPARSER::PROTEIN) ("AG -3" . SPARSER::PROTEIN)
    ("C -3" . SPARSER::PROTEIN) ("TG -3" . SPARSER::PROTEIN)
    ("hBD-2" . SPARSER::PROTEIN) ("A -3" . SPARSER::PROTEIN)
    ("CCA -3" . SPARSER::PROTEIN) ("LL-37" . SPARSER::PROTEIN)
    ("S100A7c" . SPARSER::PROTEIN) ("beta-defensin" . SPARSER::PROTEIN)
    ("IL-17A" . SPARSER::PROTEIN) ("the intestinal or diffuse type" . TYPE)
    ("topoisomerase I and II inhibitors" . SPARSER::INHIBITOR)
    ("at least one variant T allele" . SPARSER::ALLELE)
    ("geldanamycin" . SPARSER::DRUG) ("EGF and TGF-α" . SPARSER::COLLECTION)
    ("highly invasive GC" . SPARSER::PROTEIN)
    ("some salty food" . SPARSER::MOLECULE) ("mycotoxins" . SPARSER::MOLECULE)
    ("XO" . SPARSER::PROTEIN) ("new GC" . SPARSER::PROTEIN)
    ("allele and genotype" . SPARSER::COLLECTION)
    ("both male and female GC" . SPARSER::PROTEIN)
    ("male and female GC" . SPARSER::PROTEIN)
    ("salty food and smoking" . SPARSER::COLLECTION)
    ("food and smoking" . SPARSER::COLLECTION)
    ("epidermal growth factor (EGF) and transforming growth factor alpha (TGF-α)"
     . SPARSER::COLLECTION)
    ("salty food" . SPARSER::MOLECULE) ("food" . SPARSER::MOLECULE)
    ("TGF-α" . SPARSER::PROTEIN)
    ("transforming growth factor alpha" . SPARSER::PROTEIN)
    ("GT" . SPARSER::PROTEIN) ("CLPTM1L-TERT" . SPARSER::COLLECTION)
    ("cohort (SWHS)" . SPARSER::MOLECULE) ("Carotene" . SPARSER::MOLECULE)
    ("a prospective cohort" . SPARSER::MOLECULE)
    ("additional prospective cohorts" . SPARSER::MOLECULE)
    ("peripheral white blood cell DNA" . SPARSER::DNA)
    ("Alpha-Tocopherol" . SPARSER::MOLECULE)
    ("RASSF1A and RASSF5" . SPARSER::COLLECTION)
    ("p53, Bax, and caspase-3" . SPARSER::COLLECTION)
    ("MMTV/neu" . SPARSER::COLLECTION)
    ("a 247-amino-acid protein" . SPARSER::PROTEIN)
    ("Lenti-P53" . SPARSER::COLLECTION)
    ("p53, Bax, Bcl-2, and caspase-3" . SPARSER::COLLECTION)
    ("Lenti-GFP" . SPARSER::COLLECTION) ("Lenti-RASSF3" . SPARSER::COLLECTION)
    ("DMSO, and TSA" . SPARSER::COLLECTION)
    ("ectogenic RASSF3" . SPARSER::PROTEIN) ("mouse GT1.1" . SPARSER::PROTEIN)
    ("bisulfite" . SPARSER::MOLECULE)
    ("H-cadherin and E-cadherin" . SPARSER::COLLECTION)
    ("TSG" . SPARSER::PROTEIN) ("classic oncogenes" . SPARSER::ONCOGENE)
    ("TSGs" . SPARSER::PROTEIN)
    ("Bax, p53, and caspase-3" . SPARSER::COLLECTION)
    ("deoxycytidine and trichostatin-A" . SPARSER::COLLECTION)
    ("deoxycytidine" . SPARSER::PROTEIN) ("Aza" . SPARSER::DRUG)
    ("GT1" . SPARSER::PROTEIN) ("Promoter" . SPARSER::PROMOTER)
    ("P53" . SPARSER::HUMAN-PROTEIN-FAMILY) ("homolog of" . SPARSER::PROTEIN)
    ("3-(4,5-dimethylthiazol-2-yl)-2,5-diphenyltetrazolium bromide"
     . SPARSER::MOLECULE)
    ("CpG 1" . SPARSER::PROTEIN) ("RASSF7" . SPARSER::PROTEIN)
    ("RASSF6" . SPARSER::PROTEIN) ("RASSF2" . SPARSER::PROTEIN)
    ("H-cadherin" . SPARSER::PROTEIN) ("RASSF1A" . SPARSER::PROTEIN)
    ("GSTP1" . SPARSER::PROTEIN) ("RB1" . SPARSER::PROTEIN)
    ("RASSF3" . SPARSER::PROTEIN)
    ("patient-specific monoclonal antibodies" . SPARSER::ANTIBODY)
    ("rECD2-TM and rECD11-TM" . SPARSER::COLLECTION)
    ("rECD2-TM" . SPARSER::PROTEIN-PAIR) ("rECD9-TM" . SPARSER::PROTEIN-PAIR)
    ("pFUSE-TM" . SPARSER::COLLECTION) ("EC-TM" . SPARSER::COLLECTION)
    ("TM" . SPARSER::PROTEIN)
    ("the first two principal component mapping" . SPARSER::PROTEIN)
    ("HD, EBC and MBC" . SPARSER::COLLECTION) ("hHER2" . SPARSER::PROTEIN)
    ("Sera" . SPARSER::PROTEIN)
    ("only hum8 fragment ( xref ) and Trastuzumab only hum11 fragment ( xref )"
     . SPARSER::COLLECTION)
    ("Trastuzumab only hum11 fragment" . SPARSER::FRAGMENT)
    ("only hum8 fragment" . SPARSER::FRAGMENT)
    ("hHER2-ECD" . SPARSER::COLLECTION)
    ("Two monoclonal antibodies, Pertuzumab and Trastuzumab"
     . SPARSER::COLLECTION)
    ("antibodies, Pertuzumab and Trastuzumab" . SPARSER::COLLECTION)
    ("Pertuzumab" . SPARSER::DRUG)
    ("its corresponding part of the entire molecule ( xref )"
     . SPARSER::COMPONENT)
    ("PIF" . SPARSER::PROTEIN) ("ECD" . SPARSER::PROTEIN)
    ("Trastuzumab" . SPARSER::DRUG) ("HER" . SPARSER::PROTEIN)
    ("ErbB2 or neu" . SPARSER::COLLECTION) ("rEC9" . SPARSER::PROTEIN)
    ("B7.1" . SPARSER::PROTEIN) ("H-2" . SPARSER::PROTEIN)
    ("p-Nitrophenyl" . SPARSER::MOLECULE) ("coat protein" . SPARSER::PROTEIN)
    ("g3p" . SPARSER::PROTEIN) ("surface protein" . SPARSER::PROTEIN)
    ("CLOCK/CRY1" . SPARSER::COLLECTION)
    ("PPP1Cα and the CLOCK/BMAL1 heterodimer" . SPARSER::COLLECTION)
    ("core clock components and regulatory components" . SPARSER::COLLECTION)
    ("proteins or modulators" . SPARSER::COLLECTION)
    ("Protein–protein" . SPARSER::COLLECTION)
    ("Protein–Protein" . SPARSER::COLLECTION) ("PPP1Cα" . SPARSER::PROTEIN)
    ("PPP1Cα-CLOCK" . SPARSER::PROTEIN-PAIR) ("RORs" . SPARSER::PROTEIN-FAMILY)
    ("artificial promoter" . SPARSER::PROMOTER) ("paralogs" . SPARSER::PROTEIN)
    ("a precisely timed acting repressor complex" . SPARSER::BIO-COMPLEX)
    ("transforming growth factor beta receptor 1 and platelet derived growth factor receptor"
     . SPARSER::COLLECTION)
    ("estrogen receptor 1, transforming growth factor beta receptor 1 and platelet derived growth factor receptor"
     . SPARSER::COLLECTION)
    ("the circadian clock" . SPARSER::PROTEIN)
    ("cancer-associated genes" . SPARSER::GENE)
    ("Genes and Genomes" . SPARSER::COLLECTION)
    ("CLOCK and AR" . SPARSER::COLLECTION)
    ("CLOCK, BMAL1, PER3 and CRY1" . SPARSER::COLLECTION)
    ("Dec1 or Dec2" . SPARSER::COLLECTION) ("Fbxl15" . SPARSER::PROTEIN)
    ("Cry1 and Cry2" . SPARSER::COLLECTION)
    ("Bmal1 and Clock" . SPARSER::COLLECTION) ("Nr1d2" . SPARSER::PROTEIN)
    ("Erb" . SPARSER::PROTEIN) ("Rev" . SPARSER::PROTEIN-FAMILY)
    ("circadian core components" . SPARSER::COMPONENT)
    ("Rank" . SPARSER::PROTEIN)
    ("circadian oscillator components" . SPARSER::COMPONENT)
    ("NONO, GSK3β, HDAC1, CREBBP, UBE2I and NCOR1/2" . SPARSER::COLLECTION)
    ("NONO" . SPARSER::PROTEIN) ("TIMELESS and CK2" . SPARSER::COLLECTION)
    ("TIMELESS" . SPARSER::PROTEIN) ("Bmal1" . SPARSER::PROTEIN)
    ("circadian clock core components" . SPARSER::COMPONENT)
    ("CREBBP" . SPARSER::PROTEIN)
    ("regulatory components (22 components) and the neighborhood (88 components; xref and xref )"
     . SPARSER::COLLECTION)
    ("circadian clock components" . SPARSER::COMPONENT)
    ("CLOCK and the α-catalytic subunit" . SPARSER::COLLECTION)
    ("CLOCK and RORβ/γ" . SPARSER::COLLECTION)
    ("BMAL1 and WDR5" . SPARSER::COLLECTION) ("ROR" . SPARSER::PROTEIN-FAMILY)
    ("CRYs-BMAL1" . SPARSER::COLLECTION) ("CLOCK-BMAL1" . SPARSER::COLLECTION)
    ("PERs" . SPARSER::PROTEIN)
    ("excluding transcriptionally autoactive components" . SPARSER::COMPONENT)
    ("46 known or assumed clock or clock-associated components ( xref ; for justification of our selection see xref and xref )"
     . SPARSER::COLLECTION)
    ("clock-associated components" . SPARSER::COMPONENT)
    ("Circadian Clock Components" . SPARSER::COMPONENT)
    ("Clock" . SPARSER::PROTEIN)
    ("46 circadian components" . SPARSER::COMPONENT)
    ("circadian oscillator proteins" . SPARSER::PROTEIN)
    ("complexes or ‘modules’" . SPARSER::COLLECTION) ("CRY" . SPARSER::PROTEIN)
    ("CLOCK and BMAL1" . SPARSER::COLLECTION) ("Cry2" . SPARSER::PROTEIN)
    ("Cry1" . SPARSER::PROTEIN) ("circadian components" . SPARSER::COMPONENT)
    ("CLOCK/BMAL1" . SPARSER::COLLECTION) ("CLOCK" . SPARSER::PROTEIN)
    ("circadian clock proteins" . SPARSER::PROTEIN)
    ("clock" . SPARSER::PROTEIN) ("MYC-tagged" . SPARSER::PROTEIN)
    ("X-Gal" . SPARSER::MOLECULE) ("URA3" . SPARSER::PROTEIN)
    ("L40" . SPARSER::PROTEIN) ("FBXW11" . SPARSER::PROTEIN)
    ("PPP2" . SPARSER::PROTEIN-FAMILY)
    ("Protein Phosphatase 1" . SPARSER::PROTEIN) ("beta)" . SPARSER::PROTEIN)
    ("estrogen receptor 1" . SPARSER::PROTEIN) ("HSP90AA1" . SPARSER::PROTEIN)
    ("heat-shock protein" . SPARSER::PROTEIN) ("PER3" . SPARSER::PROTEIN)
    ("Dec2" . SPARSER::PROTEIN) ("Dec1" . SPARSER::PROTEIN)
    ("KAT2B" . SPARSER::PROTEIN) ("UBE2I" . SPARSER::PROTEIN)
    ("CDH4" . SPARSER::PROTEIN) ("CK2" . SPARSER::PROTEIN)
    ("PER2" . SPARSER::PROTEIN)
    ("transcriptional activators" . SPARSER::PROTEIN-FAMILY)
    ("WDR5" . SPARSER::PROTEIN) ("CRY1" . SPARSER::PROTEIN)
    ("DEC1" . SPARSER::PROTEIN) ("PPP1" . SPARSER::PROTEIN-FAMILY)
    ("– 2" . SPARSER::PROTEIN) ("Per3" . SPARSER::PROTEIN)
    ("Per2" . SPARSER::PROTEIN) ("Per1" . SPARSER::PROTEIN)
    ("BMAL1" . SPARSER::PROTEIN) ("included subtelomeric DNA" . SPARSER::DNA)
    ("selectable marker genes" . SPARSER::GENE)
    ("active promoters" . SPARSER::PROMOTER)
    ("Apollo and/or MRE11" . SPARSER::COLLECTION)
    ("KU55933 and ATM" . SPARSER::COLLECTION)
    ("ATM or NHEJ proteins" . SPARSER::COLLECTION)
    ("the chromatin-associated ATM" . SPARSER::PROTEIN)
    ("KU55933 and shRNA" . SPARSER::COLLECTION)
    ("hygromycin" . SPARSER::MOLECULE)
    ("a selectable neo gene" . SPARSER::GENE) ("neo" . SPARSER::PROTEIN)
    ("containing both the pEJ5-GFP" . SPARSER::COLLECTION)
    ("pEJ5" . SPARSER::PROTEIN) ("pEJ5-GFP" . SPARSER::COLLECTION)
    ("DsRed" . SPARSER::PROTEIN)
    ("the Apollo and/or MRE11 nucleases" . SPARSER::COLLECTION)
    ("53BP1 and H2AX" . SPARSER::COLLECTION)
    ("POT1 or TPP1" . SPARSER::COLLECTION)
    ("POT1 and its partner TPP1" . SPARSER::COLLECTION)
    ("Apollo" . SPARSER::PROTEIN) ("TRF1 and TRF2" . SPARSER::COLLECTION)
    ("RAP1, TIN2, TPP1, and POT1" . SPARSER::COLLECTION)
    ("shelterin" . SPARSER::PROTEIN) ("euchromatin" . SPARSER::BIO-COMPLEX)
    ("heterochromatin" . SPARSER::BIO-COMPLEX)
    ("53BP1 and γH2AX" . SPARSER::COLLECTION)
    ("MRE11/CtIP" . SPARSER::COLLECTION) ("exonuclease" . SPARSER::PROTEIN)
    ("KU70, KU86, DNA-PKcs, LIG4, XRCC4, XLF, and Artemis"
     . SPARSER::COLLECTION)
    ("Artemis" . SPARSER::PROTEIN) ("XLF" . SPARSER::PROTEIN)
    ("l -glutamine" . SPARSER::MOLECULE) ("KU55933" . SPARSER::DRUG)
    ("POT1" . SPARSER::PROTEIN) ("TPP1" . SPARSER::PROTEIN)
    ("TIN2" . SPARSER::PROTEIN) ("RAP1" . SPARSER::PROTEIN)
    ("TRF1" . SPARSER::PROTEIN) ("S. cerevisiae" . SPARSER::PROTEIN)
    ("EXO1" . SPARSER::PROTEIN) ("53BP1" . SPARSER::PROTEIN)
    ("XRCC4" . SPARSER::PROTEIN) ("LIG4" . SPARSER::PROTEIN)
    ("DNA-PKcs" . SPARSER::PROTEIN) ("KU86" . SPARSER::PROTEIN)
    ("KU70" . SPARSER::PROTEIN) ("nucleo-protein" . SPARSER::PROTEIN)
    ("TRF2" . SPARSER::PROTEIN) ("FMRP" . SPARSER::PROTEIN)
    ("the other Fragile X related proteins" . SPARSER::PROTEIN)
    ("the proximal part" . SPARSER::COMPONENT)
    ("HuR, RNPC1 and KSRP" . SPARSER::COLLECTION)
    ("HuR and hnRNPC1" . SPARSER::COLLECTION) ("KSRP" . SPARSER::PROTEIN)
    ("the proximal ARE" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("fragment-" . SPARSER::FRAGMENT) ("RISC" . SPARSER::PROTEIN)
    ("Prothrombin" . SPARSER::DRUG) ("DSE" . SPARSER::PROTEIN)
    ("the classical ARE" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("zip" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Ren" . SPARSER::PROTEIN)
    ("Cyclin A/Cdk2-E2F" . SPARSER::COLLECTION) ("Igf1" . SPARSER::PROTEIN)
    ("p21/Cdkn1a" . SPARSER::COLLECTION)
    ("Both the full-length and the γ fragment" . SPARSER::COLLECTION)
    ("cation" . SPARSER::MOLECULE) ("DRB" . SPARSER::PROTEIN)
    ("val" . SPARSER::AMINO-ACID) ("only 16% mRNA" . SPARSER::PROTEIN)
    ("ActD" . SPARSER::MOLECULE) ("only p21 mRNA" . SPARSER::PROTEIN)
    ("Myogenin , MyoD and β-tubulin" . SPARSER::COLLECTION)
    ("β-tubulin and the myogenic factors Myogenin and MyoD"
     . SPARSER::COLLECTION)
    ("p21, β-tubulin and the myogenic factors Myogenin and MyoD"
     . SPARSER::COLLECTION)
    ("Myogenin and MyoD" . SPARSER::COLLECTION)
    ("IgGs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the longest muscle-specific isoform" . SPARSER::ISOFORM)
    ("its long muscle-specific isoforms increases p21 mRNA" . SPARSER::PROTEIN)
    ("the muscle-specific long isoforms" . SPARSER::ISOFORM)
    ("Waf1-" . SPARSER::PROTEIN) ("CDKI" . SPARSER::DRUG)
    ("Iodide" . SPARSER::PROTEIN) ("Propidium" . SPARSER::MOLECULE)
    ("the cyclin-dependent kinase inhibitor ( p21/Cdkn1a/Cip1/Waf1 ) and the Hepatocyte growth factor ( Hgf )"
     . SPARSER::COLLECTION)
    ("the myoregulatory factors MyoD and Myogenin" . SPARSER::COLLECTION)
    ("MyoD and Myogenin" . SPARSER::COLLECTION)
    ("Cdk" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Dual specific phosphatase ( Dusp6 ) and finally Limb-bud and heart protein ( Lbh , xref )"
     . SPARSER::COLLECTION)
    ("asialoglycoprotein receptor 1 ( Asgr1 ), the cyclin-dependant kinase inhibitor p21 ( p21/Cdkn1a/Waf1/Cip1 ), Hepatocyte growth factor ( Hgf ), Dual specific phosphatase ( Dusp6 ) and finally Limb-bud and heart protein ( Lbh , xref )"
     . SPARSER::COLLECTION)
    ("finally Limb-bud and heart protein" . SPARSER::PROTEIN)
    ("Dual specific phosphatase" . SPARSER::PHOSPHATASE)
    ("Dusp6" . SPARSER::PROTEIN) ("p21/Cdkn1a/Waf1/Cip1" . SPARSER::COLLECTION)
    ("Asgr1" . SPARSER::PROTEIN) ("Sema7a" . SPARSER::PROTEIN)
    ("Lbh" . SPARSER::PROTEIN) ("Dusp" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Sema" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Semaphorin" . SPARSER::PROTEIN-FAMILY)
    ("western-blot" . SPARSER::PROTEIN)
    ("p21/Cdkn1a/Cip1/Waf1" . SPARSER::COLLECTION)
    ("Desmoplakin and Talin2" . SPARSER::COLLECTION)
    ("-KO" . SPARSER::COLLECTION) ("mRNP" . SPARSER::BIO-COMPLEX)
    ("Desmoplakin" . SPARSER::PROTEIN)
    ("its long muscle-specific isoform" . SPARSER::ISOFORM)
    ("−ARE" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("the shortest isoform" . SPARSER::ISOFORM)
    ("Very few specific target mRNAs" . SPARSER::PROTEIN)
    ("polyribosomes" . SPARSER::BIO-COMPLEX) ("mRNPs" . SPARSER::BIO-COMPLEX)
    ("these muscle-specific mRNA variants" . SPARSER::VARIANT)
    ("long muscle-specific FXR1 mRNA variants" . SPARSER::VARIANT)
    ("the Fragile X Mental Retardation 1 ( FMR1 ) and Fragile X-Related 2 ( FXR2 ) genes (reviewed in xref )"
     . SPARSER::COLLECTION)
    ("Fragile X-Related 2 ( FXR2 ) genes" . SPARSER::GENE)
    ("The Fragile X-Related 1 ( FXR1 ) gene" . SPARSER::GENE)
    ("mouse myoblasts and FSHD-derived myopathic myoblasts"
     . SPARSER::COLLECTION)
    ("FSHD-derived myopathic myoblasts" . SPARSER::PROTEIN)
    ("which commands myoblasts" . SPARSER::PROTEIN) ("Cip1" . SPARSER::PROTEIN)
    ("Cdkn1a" . SPARSER::PROTEIN)
    ("the Fragile X related 1 ( FXR1 ) gene" . SPARSER::GENE)
    ("new light" . SPARSER::PROTEIN)
    ("FXR1P muscle-specific isoforms" . SPARSER::ISOFORM)
    ("Fxr" . SPARSER::PROTEIN) ("The Fragile X-Related 1 gene" . SPARSER::GENE)
    ("FXR" . SPARSER::PROTEIN) ("a 11" . SPARSER::PROTEIN)
    ("TATA Box Binding Protein" . SPARSER::PROTEIN)
    ("RNPC1" . SPARSER::PROTEIN) ("PCBP4" . SPARSER::PROTEIN)
    ("PCBP1" . SPARSER::PROTEIN) ("Ago2" . SPARSER::PROTEIN)
    ("Cyclin A" . SPARSER::PROTEIN) ("K +" . SPARSER::MOLECULE)
    ("pTL1" . SPARSER::PROTEIN) ("P21 protein" . SPARSER::PROTEIN)
    ("P21" . SPARSER::PROTEIN) ("Hepatocyte growth factor" . SPARSER::PROTEIN)
    ("asialoglycoprotein receptor 1" . SPARSER::PROTEIN)
    ("Mctp2" . SPARSER::PROTEIN) ("Talin2" . SPARSER::PROTEIN)
    ("AGO2" . SPARSER::PROTEIN) ("pre-mRNA" . SPARSER::RNA)
    ("Waf1" . SPARSER::PROTEIN) ("RNA–binding protein" . SPARSER::PROTEIN)
    ("FMR1" . SPARSER::PROTEIN)
    ("Fragile X Mental Retardation 1" . SPARSER::PROTEIN)
    ("thrombopoietin" . SPARSER::PROTEIN)
    ("the two allelic mRNAs" . SPARSER::PROTEIN)
    ("polysomes" . SPARSER::BIO-COMPLEX) ("insC" . SPARSER::PROTEIN)
    ("lovastatin" . SPARSER::DRUG)
    ("PI3K- and MEK-dependent kinases" . SPARSER::COLLECTION)
    ("PI3K-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CDKN1B allelic mRNAs" . SPARSER::PROTEIN) ("RACE" . SPARSER::PROTEIN)
    ("re-acquiring appropriate cofactors" . SPARSER::PROTEIN)
    ("the 40S ribosomal subunits" . SPARSER::PROTEIN)
    ("a proximal or distal ATG" . SPARSER::DRUG)
    ("DNA and protein" . SPARSER::COLLECTION)
    ("Cdk2 or Grb2" . SPARSER::COLLECTION)
    ("parathyroid" . SPARSER::PROTEIN-FAMILY)
    ("type 1 (MEN1, MIM 131100) and type 2 variants" . SPARSER::COLLECTION)
    ("MIM" . SPARSER::PROTEIN)
    ("the pseudouridine synthase that alters the ribosome's"
     . SPARSER::PROTEIN)
    ("pseudouridine" . SPARSER::MOLECULE) ("TGFβ/SMAD" . SPARSER::COLLECTION)
    ("SMAD" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cdk2/cyclin" . SPARSER::COLLECTION)
    ("Cdk2/cyclin E" . SPARSER::COLLECTION) ("polysome" . SPARSER::BIO-COMPLEX)
    ("an atypical tumor suppressor" . SPARSER::SUPPRESSOR)
    ("Cyclosporin A" . SPARSER::MOLECULE) ("GSP2" . SPARSER::PROTEIN)
    ("reducing agent" . SPARSER::MOLECULE)
    ("P8" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P5" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("P2R" . SPARSER::PROTEIN)
    ("PRKAR1A" . SPARSER::PROTEIN) ("antigen Ki-67" . SPARSER::PROTEIN)
    ("MEN1" . SPARSER::PROTEIN) ("type 4" . SPARSER::PROTEIN)
    ("KIP1" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase inhibitor p27" . SPARSER::PROTEIN)
    ("CDKN1B" . SPARSER::PROTEIN)
    ("granzyme B and caspase 3-inhibitor" . SPARSER::COLLECTION)
    ("their cytotoxic as well as their cytokine" . SPARSER::COLLECTION)
    ("immunologic components" . SPARSER::COMPONENT)
    ("caspase 3 and/or granzyme B" . SPARSER::COLLECTION)
    ("importin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("200 viral proteins" . SPARSER::PROTEIN) ("DNA-viruses" . SPARSER::DNA)
    ("a potent viral granzyme B-inhibitor" . SPARSER::INHIBITOR)
    ("at least three fragments" . SPARSER::FRAGMENT)
    ("a previously unknown virus-encoded protein" . SPARSER::PROTEIN)
    ("caspase 3 and granzyme B" . SPARSER::COLLECTION)
    ("human adenovirus type 5 (Ad5-100K) and poxvirus CrmA"
     . SPARSER::COLLECTION)
    ("Two viral proteins" . SPARSER::PROTEIN)
    ("a new viral caspase 3-inhibitor" . SPARSER::INHIBITOR)
    ("p35 and p49" . SPARSER::COLLECTION) ("CrmA" . SPARSER::PROTEIN)
    ("protein, and caspase 3-activity" . SPARSER::COLLECTION)
    ("approximately 35 kDa" . SPARSER::PROTEIN)
    ("competitive inhibitors" . SPARSER::INHIBITOR)
    ("Staurosporine" . SPARSER::DRUG)
    ("perforin and granzymes" . SPARSER::COLLECTION)
    ("granzymes" . SPARSER::PROTEIN-FAMILY) ("perforin" . SPARSER::PROTEIN)
    ("granzyme B and caspase 3" . SPARSER::COLLECTION)
    ("protein+" . SPARSER::PROTEIN) ("DEVD-CHO" . SPARSER::DRUG)
    ("Z-VAD-fmk" . SPARSER::DRUG) ("cytokeratin 18" . SPARSER::PROTEIN)
    ("Ad5" . SPARSER::PROTEIN) ("type 5" . SPARSER::PROTEIN)
    ("p49" . SPARSER::PROTEIN) ("CD107a" . SPARSER::PROTEIN)
    ("HLA class I molecules" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("granzyme B" . SPARSER::PROTEIN) ("therapeutic siRNAs" . SPARSER::PROTEIN)
    ("temozolomide, irinotecan and vincristine" . SPARSER::COLLECTION)
    ("the dual targeted therapy validated here using RNAi-mediated gene"
     . SPARSER::GENE)
    ("PKC and AKT" . SPARSER::COLLECTION)
    ("Raf-1-MEK-ERK" . SPARSER::COLLECTION)
    ("oligonucleotide or shRNA" . SPARSER::COLLECTION)
    ("EGFR and Rictor pathway suppressors" . SPARSER::COLLECTION)
    ("the EGFR inhibitor gefitinib or the pan-PI3K inhibitor LY294002"
     . SPARSER::COLLECTION)
    ("Fan" . SPARSER::PROTEIN) ("AKT and PKC-α" . SPARSER::COLLECTION)
    ("STAT3, MAPK and BCL-X" . SPARSER::COLLECTION)
    ("PKC-α and MAPK" . SPARSER::COLLECTION) ("Rapamycin" . SPARSER::DRUG)
    ("EGFR and mTOR" . SPARSER::COLLECTION)
    ("mTOR and EGFR" . SPARSER::COLLECTION)
    ("EGFR , and U251 Ng2x" . SPARSER::COLLECTION)
    ("EGFR and Rictor shRNA" . SPARSER::COLLECTION)
    ("-PKCα" . SPARSER::COLLECTION) ("-SGK" . SPARSER::COLLECTION)
    ("-NDRG1" . SPARSER::COLLECTION) ("EGFR and U251" . SPARSER::COLLECTION)
    ("irinotecan, vincristine and temozolomide" . SPARSER::COLLECTION)
    ("Turbo Red Fluorescent Protein" . SPARSER::PROTEIN)
    ("tRFP" . SPARSER::PROTEIN) ("Vincristine" . SPARSER::DRUG)
    ("Fa" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GTPases and PLC-γ" . SPARSER::COLLECTION)
    ("RHO" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the apoptotic or dead cell fraction" . SPARSER::COMPONENT)
    ("EGFR or Rictor/EGFR" . SPARSER::COLLECTION)
    ("siRNA and EGFR" . SPARSER::COLLECTION) ("Kinase (ILK)" . SPARSER::KINASE)
    ("Kinase" . SPARSER::KINASE) ("-AKT" . SPARSER::COLLECTION)
    ("PKCα (serine 657 site) and AKT" . SPARSER::COLLECTION)
    ("Gli" . SPARSER::PROTEIN) ("Chemotherapeutic Drugs" . SPARSER::DRUG)
    ("Ras/MAPK" . SPARSER::COLLECTION) ("src" . SPARSER::PROTEIN)
    ("EGFRvIII" . SPARSER::PROTEIN) ("multi" . SPARSER::PROTEIN)
    ("phosphatase and tensin homolog (PTEN)" . SPARSER::PROTEIN)
    ("the epidermal growth factor receptor (EGFR) and the rapamycin-insensitive companion of mTOR (Rictor)"
     . SPARSER::COLLECTION)
    ("vincristine and temozolomide" . SPARSER::COLLECTION)
    ("irinotecan, temozolomide and vincristine" . SPARSER::COLLECTION)
    ("vincristine" . SPARSER::DRUG) ("CD133" . SPARSER::PROTEIN)
    ("Insulin Receptor Substrate 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKC-α" . SPARSER::PROTEIN) ("PLC-γ" . SPARSER::PROTEIN-FAMILY)
    ("ML −1" . SPARSER::PROTEIN) ("SGK1" . SPARSER::PROTEIN)
    ("NDRG1" . SPARSER::PROTEIN) ("RNase 1" . SPARSER::PROTEIN)
    ("5−2" . SPARSER::PROTEIN) ("G16" . SPARSER::PROTEIN)
    ("Endothelial Growth Factor" . SPARSER::PROTEIN)
    ("Ribosomal S6 Kinase 1" . SPARSER::PROTEIN)
    ("rapamycin-insensitive companion of mTOR" . SPARSER::PROTEIN)
    ("Rag2" . SPARSER::PROTEIN) ("gp120-" . SPARSER::DRUG)
    ("Ras, Raf and NF-êB" . SPARSER::COLLECTION)
    ("SOCS-1 and SOCS-3" . SPARSER::COLLECTION)
    ("IL-6 and IL-6" . SPARSER::COLLECTION)
    ("Raf-1 and NF-êB" . SPARSER::COLLECTION)
    ("p65, p50, p52, Rel-B and c-Rel" . SPARSER::COLLECTION)
    ("siRNA and GW5074" . SPARSER::COLLECTION)
    ("PP2 (kinase inhibitor) and GW5074 (Raf-1 inhibitor)"
     . SPARSER::COLLECTION)
    ("siRNA and kinase" . SPARSER::COLLECTION)
    ("signalosome" . SPARSER::PROTEIN) ("CD4 and CCR5" . SPARSER::COLLECTION)
    ("CD4, CCR5 and DC-SIGN" . SPARSER::COLLECTION)
    ("CD4 and other chemokine receptors" . SPARSER::COLLECTION)
    ("env and env" . SPARSER::COLLECTION) ("env" . SPARSER::PROTEIN)
    ("VSV" . SPARSER::PROTEIN)
    ("MIP-1alpha, MIP-1beta, IL-6, IL-10 and TNF-alpha" . SPARSER::COLLECTION)
    ("proteins, gp120 and Nef" . SPARSER::COLLECTION)
    ("primary cytokines" . SPARSER::PROTEIN)
    ("IL-6, IL-10, TNF-alpha, MIP-1alpha and MIP-1beta" . SPARSER::COLLECTION)
    ("cytokine and chemokine" . SPARSER::COLLECTION)
    ("sera" . SPARSER::PROTEIN) ("lectin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the viral envelope glycoprotein gp120" . SPARSER::DRUG)
    ("these two viral proteins" . SPARSER::PROTEIN)
    ("gp120 and Nef" . SPARSER::COLLECTION) ("DCs" . SPARSER::MOLECULE)
    ("lectins" . SPARSER::HUMAN-PROTEIN-FAMILY) ("N-2" . SPARSER::PROTEIN)
    ("c-Rel" . SPARSER::PROTEIN) ("Rel-B" . SPARSER::PROTEIN)
    ("p52" . SPARSER::PROTEIN) ("GW5074" . SPARSER::DRUG)
    ("Gp120" . SPARSER::DRUG) ("MIP-1beta" . SPARSER::PROTEIN)
    ("MIP-1alpha" . SPARSER::PROTEIN) ("IL-10" . SPARSER::PROTEIN)
    ("SOCS-3" . SPARSER::PROTEIN) ("DC-SIGN" . SPARSER::PROTEIN)
    ("envelope glycoprotein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gp120" . SPARSER::DRUG) ("FoxO, Mef2C and Tead" . SPARSER::COLLECTION)
    ("catalase/ROS" . SPARSER::COLLECTION)
    ("what conditions Spry1 and Spry4" . SPARSER::COLLECTION)
    ("FGF2 and PDGF-BB" . SPARSER::COLLECTION)
    ("FBS and growth factor" . SPARSER::COLLECTION)
    ("ACTA2, SM22α and CCN1" . SPARSER::COLLECTION)
    ("heterodimers and homodimers" . SPARSER::COLLECTION)
    ("Spry1, Spry2, Spry3, and Spry4" . SPARSER::COLLECTION)
    ("homodimers and heterodimers" . SPARSER::COLLECTION)
    ("Ras-Raf-ERK" . SPARSER::COLLECTION)
    ("Spry1 or Spry2" . SPARSER::COLLECTION)
    ("FGFR and EGFR" . SPARSER::COLLECTION)
    ("Spry1 and Spry2" . SPARSER::COLLECTION)
    ("FHRE-Luciferase" . SPARSER::COLLECTION)
    ("Akt/FoxO" . SPARSER::COLLECTION)
    ("FHRE-luciferase" . SPARSER::COLLECTION)
    ("FoxO3 or FoxO4" . SPARSER::COLLECTION)
    ("FoxO1, FoxO3a or FoxO4" . SPARSER::COLLECTION)
    ("mRNA and ACTA2" . SPARSER::COLLECTION)
    ("Myocd and VSMC marker ACTA2" . SPARSER::COLLECTION)
    ("whose promoter" . SPARSER::PROMOTER)
    ("FoxO1, FoxO3a and FoxO4" . SPARSER::COLLECTION)
    ("FoxO1 and FoxO4" . SPARSER::COLLECTION)
    ("FoxO1 or FoxO3a" . SPARSER::COLLECTION)
    ("SM22α and CNN1" . SPARSER::COLLECTION)
    ("U0126 and Ly294002" . SPARSER::COLLECTION)
    ("Akt and FoxO3a" . SPARSER::COLLECTION)
    ("surprisingly increased pAkt and pFoxO3a" . SPARSER::COLLECTION)
    ("pAkt and pFoxO3a" . SPARSER::COLLECTION)
    ("pAkt" . SPARSER::PROTEIN-FAMILY)
    ("ACTA2, CNN1and SM22α" . SPARSER::COLLECTION)
    ("Akt and ERK" . SPARSER::COLLECTION)
    ("Spry1 or Spry4" . SPARSER::COLLECTION)
    ("use lentiviral delivered shRNAs" . SPARSER::RNA)
    ("Spry1, Spry2 and Spry4" . SPARSER::COLLECTION)
    ("Smooth Muscle" . SPARSER::PROTEIN)
    ("Akt/FoxO/Myocd" . SPARSER::COLLECTION)
    ("wild type FoxO3a and an Akt phosphorylation sites mutant FoxO3aTM"
     . SPARSER::COLLECTION)
    ("FoxO3aTM" . SPARSER::PROTEIN) ("aTM" . SPARSER::PROTEIN)
    ("ERK and Akt" . SPARSER::COLLECTION)
    ("TAT-hSpry2" . SPARSER::PROTEIN-PAIR) ("Spry proteins" . SPARSER::PROTEIN)
    ("FoxO4-Myocd" . SPARSER::COLLECTION) ("FoxOs" . SPARSER::PROTEIN-FAMILY)
    ("Elk1" . SPARSER::PROTEIN)
    ("an SRF/Myocd transcriptional complex and drives CArG box-dependent VSMC marker gene expression xref"
     . SPARSER::COLLECTION)
    ("SRF/Myocd" . SPARSER::COLLECTION) ("Myocd" . SPARSER::PROTEIN)
    ("Myocardin" . SPARSER::PROTEIN) ("SRF" . SPARSER::PROTEIN)
    ("CArG" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase (MAPK/ERK) and p38 mitogen-activated protein kinase (p38)"
     . SPARSER::COLLECTION)
    ("phosphatidylinositol 3-kinase/protein kinase B" . SPARSER::COLLECTION)
    ("SMTN" . SPARSER::PROTEIN) ("smoothelin" . SPARSER::PROTEIN)
    ("calponin" . SPARSER::PROTEIN) ("Spry1 and Spry4" . SPARSER::COLLECTION)
    ("Akt/FoxO/myocardin" . SPARSER::COLLECTION)
    ("FoxO" . SPARSER::PROTEIN-FAMILY) ("myocardin" . SPARSER::PROTEIN)
    ("The Spry proteins" . SPARSER::PROTEIN)
    ("pathological states" . SPARSER::BIO-STATE) ("Mef2C" . SPARSER::PROTEIN)
    ("Mef2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PDGF-BB" . SPARSER::PROTEIN)
    ("CCN1" . SPARSER::PROTEIN) ("FGF2" . SPARSER::PROTEIN)
    ("Spry3" . SPARSER::PROTEIN) ("c-Cbl" . SPARSER::PROTEIN)
    ("histone 3" . SPARSER::PROTEIN) ("2-P" . SPARSER::PROTEIN)
    ("pH3" . SPARSER::MOLECULE) ("histone3" . SPARSER::PROTEIN)
    ("beta-actin" . SPARSER::PROTEIN) ("FoxO1" . SPARSER::PROTEIN)
    ("U0126" . SPARSER::DRUG) ("FoxO3" . SPARSER::PROTEIN)
    ("hSpry2" . SPARSER::PROTEIN) ("Spry2" . SPARSER::PROTEIN)
    ("FoxO4" . SPARSER::PROTEIN) ("serum response factor" . SPARSER::PROTEIN)
    ("CNN1" . SPARSER::PROTEIN) ("SM22α" . SPARSER::PROTEIN)
    ("SM22 alpha" . SPARSER::PROTEIN) ("ACTA2" . SPARSER::PROTEIN)
    ("alpha-actin" . SPARSER::PROTEIN) ("FoxO3a" . SPARSER::PROTEIN)
    ("Spry4" . SPARSER::PROTEIN) ("p536, ERG and AR" . SPARSER::COLLECTION)
    ("LNCaP, PC3 and DU145 cells" . SPARSER::PROTEIN)
    ("IKKβ, IKKε and NAK" . SPARSER::COLLECTION)
    ("JNK and p53" . SPARSER::COLLECTION) ("NAK" . SPARSER::PROTEIN)
    ("the Celastrol’s" . SPARSER::MOLECULE)
    ("further highlights Celastrol’s" . SPARSER::MOLECULE)
    ("further highlights Celastrol" . SPARSER::MOLECULE)
    ("AR, ERG and NF-κB" . SPARSER::COLLECTION) ("masks" . SPARSER::PROTEIN)
    ("p536 and CCL2" . SPARSER::COLLECTION) ("celastrol" . SPARSER::MOLECULE)
    ("NF-κB p65 and a potent regulator" . SPARSER::COLLECTION)
    ("an excellent candidate drug" . SPARSER::DRUG)
    ("SPINK1 and epidermal growth factor receptor" . SPARSER::COLLECTION)
    ("/ETS" . SPARSER::COLLECTION) ("AR, ERG and p536" . SPARSER::COLLECTION)
    ("snap" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("AR, ERG, and p536" . SPARSER::COLLECTION)
    ("AR-ERG-NF-κB" . SPARSER::COLLECTION)
    ("even 0.05 µM Celastrol" . SPARSER::MOLECULE)
    ("chemokine" . SPARSER::PROTEIN) ("RNA and Protein" . SPARSER::COLLECTION)
    ("only 0.75 µM Celastrol" . SPARSER::MOLECULE)
    ("p65, IKBα, phospho-Akt473, total-Akt and Hsp90" . SPARSER::COLLECTION)
    ("–1 µ" . SPARSER::PROTEIN)
    ("phospho-AKT 473 and Hsp90" . SPARSER::COLLECTION)
    ("IKB" . SPARSER::PROTEIN) ("AR and ERG" . SPARSER::COLLECTION)
    ("the other two NF-κB inhibitors 481407 (2 µM) and MG132 (2.5 µM) xref"
     . SPARSER::COLLECTION)
    ("AR-ERG-NF-kB" . SPARSER::COLLECTION)
    ("AR, ERG and NF-kB" . SPARSER::COLLECTION)
    ("Celastrol and growth inhibition and target expression"
     . SPARSER::COLLECTION)
    ("evaluated Celastrol’s" . SPARSER::MOLECULE)
    ("Celastrol" . SPARSER::MOLECULE) ("PCas" . SPARSER::PROTEIN)
    ("TMPRSS2/ERG" . SPARSER::COLLECTION) ("NF-KappaB" . SPARSER::PROTEIN)
    ("IKKε" . SPARSER::PROTEIN) ("IKKβ" . SPARSER::PROTEIN)
    ("serine protease inhibitor" . SPARSER::PROTEIN)
    ("SPINK1" . SPARSER::PROTEIN) ("PS1145" . SPARSER::DRUG)
    ("P65" . SPARSER::PROTEIN) ("CCL2" . SPARSER::PROTEIN)
    ("AR-V7" . SPARSER::PROTEIN) ("p536" . SPARSER::DRUG)
    ("abnormal Tau" . SPARSER::PROTEIN) ("PINCH and Tau" . SPARSER::COLLECTION)
    ("neither PINCH nor hp-Tau" . SPARSER::COLLECTION)
    ("rectal cancer PINCH" . SPARSER::PROTEIN)
    ("ERK-Bim" . SPARSER::COLLECTION) ("proper ILK" . SPARSER::PROTEIN)
    ("the highly soluble RAB fraction" . SPARSER::COMPONENT)
    ("RAB and RIPA" . SPARSER::COLLECTION)
    ("soluble proteins" . SPARSER::PROTEIN)
    ("the formic acid fraction (FA)" . SPARSER::COMPONENT)
    ("fraction (FA)" . SPARSER::COMPONENT) ("RP" . SPARSER::PROTEIN)
    ("RAB" . SPARSER::PROTEIN) ("PHF and NFT" . SPARSER::COLLECTION)
    ("increased soluble hp-Tau and PINCH" . SPARSER::COLLECTION)
    ("Tau-Tg" . SPARSER::PROTEIN-PAIR)
    ("a pathological component" . SPARSER::COMPONENT)
    ("approximately 55–60 kDa" . SPARSER::PROTEIN)
    ("approximately 37 and 42 kDa" . SPARSER::PROTEIN)
    ("soluble hp-Tau and PINCH" . SPARSER::COLLECTION)
    ("OA-induced hp-Tau" . SPARSER::PROTEIN)
    ("significantly less hp-Tau" . SPARSER::PROTEIN)
    ("PINCH1 and PINCH2" . SPARSER::COLLECTION)
    ("PINCH/Tau" . SPARSER::COLLECTION)
    ("Neither full-length PINCH nor ΔLIM1" . SPARSER::COLLECTION)
    ("Nck2" . SPARSER::PROTEIN) ("Nck" . SPARSER::PROTEIN)
    ("approximately 80 and 50 kDa" . SPARSER::PROTEIN)
    ("Tau and PINCH protein" . SPARSER::COLLECTION)
    ("PINCH and ILK" . SPARSER::COLLECTION)
    ("Hsp70 or Hsp90" . SPARSER::COLLECTION)
    ("approximately 37 kDa and 42 kDa" . SPARSER::COLLECTION)
    ("approximately 37 kDa" . SPARSER::PROTEIN)
    ("PHF" . SPARSER::PROTEIN-FAMILY)
    ("hp-Tau and PINCH" . SPARSER::COLLECTION)
    ("PINCH and hp-Tau" . SPARSER::COLLECTION)
    ("Hsp90 or Hsp70" . SPARSER::COLLECTION)
    ("Significantly more Tau" . SPARSER::PROTEIN)
    ("included microtubule-associated binding proteins and heat shock protein response (HSR)-related proteins"
     . SPARSER::COLLECTION)
    ("included microtubule-associated binding proteins" . SPARSER::PROTEIN)
    ("ILK and Nck-2" . SPARSER::COLLECTION)
    ("PINCH protein-protein" . SPARSER::COLLECTION)
    ("synaptodendritic proteins" . SPARSER::PROTEIN)
    ("PINCH1 and 2 share approximately 82% homology" . SPARSER::PROTEIN)
    ("multi-protein" . SPARSER::COLLECTION)
    ("MAP2 and synaptophysin" . SPARSER::COLLECTION)
    ("New Cysteine-Histidine-rich (PINCH) protein" . SPARSER::PROTEIN)
    ("Histidine" . SPARSER::AMINO-ACID) ("Cysteine" . SPARSER::AMINO-ACID)
    ("paired helical filaments (PHF)" . SPARSER::PROTEIN-FAMILY)
    ("Hsp70 and Hsp90" . SPARSER::COLLECTION)
    ("inherent ATPase activity" . SPARSER::PROTEIN)
    ("synaptodendritic signaling proteins" . SPARSER::PROTEIN)
    ("MAP2 or synaptophysin" . SPARSER::COLLECTION)
    ("synaptophysin" . SPARSER::PROTEIN) ("protein (PINCH)" . SPARSER::PROTEIN)
    ("histidine-" . SPARSER::AMINO-ACID) ("cysteine-" . SPARSER::AMINO-ACID)
    ("PINCH" . SPARSER::PROTEIN) ("LIM2" . SPARSER::PROTEIN)
    ("LIM1" . SPARSER::PROTEIN) ("LIMS 1" . SPARSER::PROTEIN)
    ("microtubule-associated protein" . SPARSER::PROTEIN)
    ("Nck-2" . SPARSER::PROTEIN) ("PINCH protein" . SPARSER::PROTEIN)
    ("Texas-red" . SPARSER::DRUG) ("Hsp-70" . SPARSER::PROTEIN)
    ("prion protein" . SPARSER::PROTEIN)
    ("microtubule associated protein Tau" . SPARSER::PROTEIN)
    ("shP2" . SPARSER::PROTEIN) ("RNA1" . SPARSER::PROTEIN-FAMILY)
    ("shP1" . SPARSER::PROTEIN) ("PLP1" . SPARSER::PROTEIN)
    ("Protein-A" . SPARSER::PROTEIN) ("PHF-Tau" . SPARSER::PROTEIN)
    ("AT8" . SPARSER::PROTEIN) ("Grb-2" . SPARSER::PROTEIN)
    ("GSK3-β" . SPARSER::PROTEIN) ("PINCH2" . SPARSER::PROTEIN)
    ("PINCH1" . SPARSER::PROTEIN) ("Hsp70" . SPARSER::PROTEIN)
    ("ATPase activity" . SPARSER::PROTEIN) ("MAP2" . SPARSER::PROTEIN)
    ("XRCC1 and ERCC2" . SPARSER::COLLECTION)
    ("NER and DSBR" . SPARSER::COLLECTION) ("aphidicolin" . SPARSER::PROTEIN)
    ("Epirubicine and Gemcitabine" . SPARSER::COLLECTION)
    ("cisplatinum" . SPARSER::DRUG)
    ("ERCC2 (rs1052559) and XPC (rs2228001) polymorphisms"
     . SPARSER::COLLECTION)
    ("XPC , ERCC2 , and XPG" . SPARSER::COLLECTION) ("XPG" . SPARSER::PROTEIN)
    ("XPC" . SPARSER::PROTEIN)
    ("at least one variant allele" . SPARSER::ALLELE)
    ("ERCC2 or XRCC1" . SPARSER::COLLECTION) ("NER" . SPARSER::PROTEIN)
    ("gene (BER)" . SPARSER::GENE)
    ("Gemcitabine, Mitomycin C, and Epirubicine" . SPARSER::COLLECTION)
    ("CIS" . SPARSER::PROTEIN) ("BCG" . SPARSER::DRUG)
    ("Epirubicine" . SPARSER::DRUG) ("Gemcitabine" . SPARSER::DRUG)
    ("OGG1" . SPARSER::PROTEIN)
    ("8-oxoguanine DNA glycosylase" . SPARSER::PROTEIN)
    ("γH2AX" . SPARSER::PROTEIN) ("ERCC2" . SPARSER::PROTEIN)
    ("pT1" . SPARSER::PROTEIN) ("Mitomycin C" . SPARSER::DRUG)
    ("XRCC1" . SPARSER::PROTEIN)
    ("BRCA1, KAI1, NM23, and p53" . SPARSER::COLLECTION)
    ("Gao" . SPARSER::PROTEIN) ("KAI1 and p53" . SPARSER::COLLECTION)
    ("nonfunctional p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the prophylactic adnexectomy group" . SPARSER::MOLECULE)
    ("BRCA1, p53, KAI1, and Nm23" . SPARSER::COLLECTION)
    ("BRCA1 protein as well as p53, Nm23, and KAI1 proteins"
     . SPARSER::COLLECTION)
    ("p53, Nm23, and KAI1" . SPARSER::COLLECTION) ("NDPK" . SPARSER::PROTEIN)
    ("SF" . SPARSER::PROTEIN) ("BRCA" . SPARSER::PROTEIN-FAMILY)
    ("BRCA1, p53, Nm23, and KAI1" . SPARSER::COLLECTION)
    ("Nm23" . SPARSER::PROTEIN) ("NM23" . SPARSER::PROTEIN)
    ("G-2" . SPARSER::PROTEIN) ("KAI 1" . SPARSER::PROTEIN)
    ("nucleoside diphosphate kinase" . SPARSER::PROTEIN)
    ("CD 82" . SPARSER::PROTEIN) ("KAI1" . SPARSER::PROTEIN)
    ("MEF and THP-1" . SPARSER::COLLECTION) ("THP-1" . SPARSER::PROTEIN)
    ("a pan-specific acetyl lysine antibody" . SPARSER::ANTIBODY)
    ("Synthetic TNFα K19 and K20 myristoyl peptides" . SPARSER::COLLECTION)
    ("KR" . SPARSER::PROTEIN-FAMILY)
    ("fatty acylated proteins" . SPARSER::PROTEIN)
    ("azide" . SPARSER::MOLECULE) ("rhodamine" . SPARSER::PROTEIN)
    ("alkyne" . SPARSER::MOLECULE)
    ("other ternary complex" . SPARSER::BIO-COMPLEX)
    ("ADPR" . SPARSER::MOLECULE) ("fatty acyl peptides" . SPARSER::PEPTIDE)
    ("These results further support Sirt6" . SPARSER::PROTEIN)
    ("Only H3 K9 and H3 K56 acetyl peptides" . SPARSER::PEPTIDE)
    ("Arg and Tyr" . SPARSER::COLLECTION) ("butyryl" . SPARSER::MOLECULE)
    ("weak deacetylase activity" . SPARSER::PROTEIN)
    ("malonyl" . SPARSER::PROTEIN)
    ("very weak deacetylase activity" . SPARSER::PROTEIN)
    ("enzymes or sirtuins" . SPARSER::COLLECTION)
    ("sirtuins" . SPARSER::PROTEIN-FAMILY) ("_WT" . SPARSER::PROTEIN)
    ("H -1" . SPARSER::PROTEIN) ("brefeldin A" . SPARSER::MOLECULE)
    ("pMD2" . SPARSER::MOLECULE) ("OCT4" . SPARSER::PROTEIN)
    ("EF2" . SPARSER::PROTEIN) ("D-1" . SPARSER::PROTEIN)
    ("GRP 78" . SPARSER::PROTEIN) ("Lamin A/C" . SPARSER::PROTEIN)
    ("IGF1" . SPARSER::PROTEIN) ("palmitic acid" . SPARSER::MOLECULE)
    ("Sir2Tm" . SPARSER::PROTEIN) ("H2B" . SPARSER::PROTEIN)
    ("K56" . SPARSER::PROTEIN) ("K19" . SPARSER::PROTEIN)
    ("long chain" . SPARSER::PROTEIN)
    ("an attractive potential therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("let-7 directly targets miRNA-processing enzyme Dicer" . SPARSER::PROTEIN)
    ("Nanog, Oct4, and Sox2" . SPARSER::COLLECTION)
    ("Dicer" . SPARSER::PROTEIN) ("Nanog" . SPARSER::PROTEIN)
    ("trypsinized" . SPARSER::PROTEIN) ("si" . SPARSER::PROTEIN)
    ("CIP2A (si-CIP2A) or green fluorescent protein (si-GFP)"
     . SPARSER::COLLECTION)
    ("si-GFP" . SPARSER::COLLECTION) ("si-CIP2A" . SPARSER::COLLECTION)
    ("genome-wide mRNA and miRNA" . SPARSER::COLLECTION)
    ("CIP2A and MYC" . SPARSER::COLLECTION)
    ("nucleotides (GATCC)" . SPARSER::NUCLEOTIDE)
    ("CIP2A-mutA" . SPARSER::COLLECTION) ("mutA" . SPARSER::PROTEIN)
    ("miRNA–mRNA" . SPARSER::COLLECTION) ("CDS" . SPARSER::PROTEIN)
    ("PDK1 and 14-3-3ζ" . SPARSER::COLLECTION) ("HuD" . SPARSER::PROTEIN)
    ("YWHAZ" . SPARSER::PROTEIN) ("-2-" . SPARSER::PROTEIN)
    ("A 3-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("inhibitor, or non-specific" . SPARSER::COLLECTION)
    ("SCCs" . SPARSER::PROTEIN) ("p90/CIP2A" . SPARSER::COLLECTION)
    ("autoantigen" . SPARSER::DRUG) ("particular miRNAs" . SPARSER::PROTEIN)
    ("posttranscriptional regulators" . SPARSER::REGULATOR)
    ("MicroRNAs" . SPARSER::RNA) ("H-9" . SPARSER::PROTEIN)
    ("C-16" . SPARSER::PROTEIN) ("G10" . SPARSER::PROTEIN)
    ("small nuclear RNA" . SPARSER::RNA) ("Sox2" . SPARSER::PROTEIN)
    ("Oct4" . SPARSER::PROTEIN) ("KIAA1524" . SPARSER::PROTEIN)
    ("14-3-3" . SPARSER::PROTEIN) ("A 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cancerous inhibitor of PP2A" . SPARSER::PROTEIN)
    ("MYC protein" . SPARSER::PROTEIN) ("CIP2A" . SPARSER::PROTEIN)
    ("an active AMPK complex" . SPARSER::BIO-COMPLEX)
    ("PIASy, SUMO2, and AMPK" . SPARSER::COLLECTION)
    ("AMPKβ2 and SUMO2" . SPARSER::COLLECTION)
    ("FLAG-CIDEA" . SPARSER::COLLECTION)
    ("either wild-type AMPKβ2 or the K262R mutant" . SPARSER::COLLECTION)
    ("6xHis-ubiquitin" . SPARSER::COLLECTION)
    ("HA-ubiquitin" . SPARSER::COLLECTION) ("-ubiquitin" . SPARSER::COLLECTION)
    ("hemagglutinin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the trimeric complex" . SPARSER::BIO-COMPLEX)
    ("phenformin" . SPARSER::DRUG)
    ("the hypersumoylable AMPKβ2 K262R mutant" . SPARSER::MUTANT)
    ("ACC" . SPARSER::PROTEIN) ("PIASy and SUMO1" . SPARSER::COLLECTION)
    ("the trimeric AMPK complex" . SPARSER::BIO-COMPLEX)
    ("PIASy and SUMO2" . SPARSER::COLLECTION)
    ("the heterotrimeric AMPK complex (AMPKα2/β2/γ1) and 6xHis-SUMO2 in the presence or absence of FLAG-PIASy"
     . SPARSER::COLLECTION)
    ("the heterotrimeric AMPK complex" . SPARSER::BIO-COMPLEX)
    ("a trimeric complex" . SPARSER::BIO-COMPLEX)
    ("the mutated forms" . SPARSER::FORM)
    ("a heterotrimeric complex" . SPARSER::BIO-COMPLEX)
    ("6xHis" . SPARSER::PROTEIN)
    ("the three AMPK complex subunits (α2, β2, and γ1) and 6xHis-SUMO1 or 6xHis-SUMO2"
     . SPARSER::COLLECTION)
    ("β2, and γ1" . SPARSER::COLLECTION)
    ("6xHis-SUMO1 or 6xHis-SUMO2" . SPARSER::COLLECTION)
    ("6xHis-SUMO2" . SPARSER::COLLECTION)
    ("6xHis-SUMO1" . SPARSER::PROTEIN-PAIR)
    ("the chaotropic agent guanidinium hydrochloride" . SPARSER::MOLECULE)
    ("hydrochloride" . SPARSER::MOLECULE) ("guanidinium" . SPARSER::MOLECULE)
    ("SUMO1 or SUMO2" . SPARSER::COLLECTION) ("SH-SY5Y" . SPARSER::PROTEIN)
    ("AMPKβ2" . SPARSER::PROTEIN) ("myc-AMPKβ2" . SPARSER::PROTEIN-PAIR)
    ("antibodies, AMPKα2, AMPKβ2, and AMPKγ1" . SPARSER::COLLECTION)
    ("a heterotrimeric AMPK complex" . SPARSER::BIO-COMPLEX)
    ("FLAG-PIASy" . SPARSER::COLLECTION)
    ("the catalytic AMPKα2 subunit, the scaffolding AMPKβ1 and β2 subunits, and the regulatory AMPKγ1"
     . SPARSER::COLLECTION)
    ("AMPK and PIASy" . SPARSER::COLLECTION)
    ("subunits and PIASy" . SPARSER::COLLECTION)
    ("PIAS1, PIAS3, PIASxα, PIASxβ, and PIASy" . SPARSER::COLLECTION)
    ("PIASx" . SPARSER::PROTEIN) ("Pc2" . SPARSER::PROTEIN)
    ("RanBP2/Nup358" . SPARSER::COLLECTION) ("PIAS" . SPARSER::PROTEIN-FAMILY)
    ("SUMO2 and SUMO3" . SPARSER::COLLECTION)
    ("SUMO1, SUMO2, and SUMO3" . SPARSER::COLLECTION)
    ("K63-ubiquitin" . SPARSER::COLLECTION)
    ("the glucan phosphatase laforin and the E3-ubiquitin ligase malin"
     . SPARSER::COLLECTION)
    ("malin" . SPARSER::PROTEIN) ("laforin" . SPARSER::PROTEIN)
    ("CIDEA" . SPARSER::PROTEIN) ("DFFA" . SPARSER::PROTEIN)
    ("K29 and K33" . SPARSER::COLLECTION) ("polyubiquitin" . SPARSER::PROTEIN)
    ("AMPK and the upstream kinase LKB1" . SPARSER::COLLECTION)
    ("AMP and the phosphorylation of Thr-172 residue" . SPARSER::COLLECTION)
    ("AMPKα and AMPKγ" . SPARSER::COLLECTION)
    ("cystathionine" . SPARSER::MOLECULE)
    ("the trimeric α2β2γ1 AMPK complex" . SPARSER::BIO-COMPLEX)
    ("the E3-small ubiquitin-like modifier (SUMO) ligase protein inhibitor"
     . SPARSER::INHIBITOR)
    ("kinase (AMPK)" . SPARSER::KINASE) ("PIASy" . SPARSER::PROTEIN)
    ("SUMO" . SPARSER::PROTEIN) ("SP2" . SPARSER::PROTEIN)
    ("Topro3" . SPARSER::MOLECULE) ("Texas red" . SPARSER::DRUG)
    ("ACC1" . SPARSER::PROTEIN) ("p100" . SPARSER::PROTEIN)
    ("p60" . SPARSER::PROTEIN) ("acetyl-CoA" . SPARSER::MOLECULE)
    ("leptomycin B" . SPARSER::MOLECULE) ("Snf1" . SPARSER::PROTEIN-FAMILY)
    ("PIAS3" . SPARSER::PROTEIN) ("PIAS1" . SPARSER::PROTEIN)
    ("JAK-STAT" . SPARSER::PROTEIN) ("Nup358" . SPARSER::PROTEIN)
    ("RanBP2" . SPARSER::PROTEIN) ("Ubc9" . SPARSER::PROTEIN)
    ("SUMO3" . SPARSER::PROTEIN) ("K33" . SPARSER::PROTEIN)
    ("K29" . SPARSER::PROTEIN) ("AMPKα1" . SPARSER::PROTEIN)
    ("serine/threonine protein kinase" . SPARSER::PROTEIN)
    ("β2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("AMPKα" . SPARSER::PROTEIN-FAMILY)
    ("AMP-activated" . SPARSER::PROTEIN) ("SUMO2" . SPARSER::PROTEIN)
    ("AMPKβ" . SPARSER::PROTEIN) ("RhoGEF" . SPARSER::PROTEIN)
    ("RhoGEFs" . SPARSER::PROTEIN) ("p120-catnein/p190B" . SPARSER::COLLECTION)
    ("p190B-RhoGAP" . SPARSER::COLLECTION)
    ("accessory proteins" . SPARSER::PROTEIN)
    ("p120RasGAP or TFII" . SPARSER::COLLECTION)
    ("Functionally both isoforms" . SPARSER::ISOFORM)
    ("proteins, p190A and p190B" . SPARSER::COLLECTION)
    ("p190B or RhoA" . SPARSER::COLLECTION)
    ("p120-catenin and either p190A or p190B" . SPARSER::COLLECTION)
    ("Rho/Rac" . SPARSER::COLLECTION)
    ("GAPs and guanine nucleotide exchange factors" . SPARSER::COLLECTION)
    ("RhoGAP" . SPARSER::PROTEIN) ("RhoA and p190B" . SPARSER::COLLECTION)
    ("FLARE" . SPARSER::PROTEIN) ("RhoA-FLARE" . SPARSER::COLLECTION)
    ("both compliant and rigid collagen matrices" . SPARSER::PROTEIN-FAMILY)
    ("p120-catenin–" . SPARSER::PROTEIN)
    ("p120-catenin or pRS-vector" . SPARSER::COLLECTION)
    ("pRS" . SPARSER::PROTEIN) ("p120-catenin and p190B" . SPARSER::COLLECTION)
    ("GFP-p190B" . SPARSER::COLLECTION) ("Δ560–628" . SPARSER::PROTEIN)
    ("4A Δ560–628" . SPARSER::PROTEIN)
    ("the most predominant isoform" . SPARSER::ISOFORM)
    ("p190B and p120-catenin" . SPARSER::COLLECTION)
    ("p190A:RhoA and p190A:p120-catenin" . SPARSER::COLLECTION)
    ("p190A:p120-catenin" . SPARSER::BIO-COMPLEX)
    ("p190A:RhoA" . SPARSER::BIO-COMPLEX)
    ("p190B:p120-catenin:RhoA" . SPARSER::BIO-COMPLEX)
    ("p120-catenin and RhoA" . SPARSER::COLLECTION)
    ("p190A and p120-catenin" . SPARSER::COLLECTION)
    ("both compliant and rigid matrices" . SPARSER::PROTEIN-FAMILY)
    ("RhoA" . SPARSER::PROTEIN) ("p190A and p190B" . SPARSER::COLLECTION)
    ("GFP-RhoA" . SPARSER::COLLECTION)
    ("compliant and rigid collagen" . SPARSER::PROTEIN)
    ("both compliant and rigid collagen" . SPARSER::PROTEIN)
    ("compliant or rigid collagen" . SPARSER::PROTEIN)
    ("Rho-ROCK" . SPARSER::COLLECTION)
    ("3D compliant collagen" . SPARSER::PROTEIN)
    ("rigid (attached) 1.3 mg/ml collagen" . SPARSER::PROTEIN)
    ("p190A or p190B" . SPARSER::COLLECTION)
    ("p190B–p120-catenin" . SPARSER::COLLECTION)
    ("the junctional protein" . SPARSER::PROTEIN)
    ("Rho GTPase-activating protein (GAP)" . SPARSER::COLLECTION)
    ("a compliant matrix" . SPARSER::PROTEIN-FAMILY)
    ("Rho GTPase-activating protein" . SPARSER::COLLECTION)
    ("three-dimensional (3D) matrices" . SPARSER::PROTEIN-FAMILY)
    ("rigid collagen" . SPARSER::PROTEIN)
    ("compliant 3D collagen" . SPARSER::PROTEIN)
    ("compliant collagen" . SPARSER::PROTEIN)
    ("three-dimensional (3D) collagen" . SPARSER::PROTEIN)
    ("yellow fluorescent protein" . SPARSER::PROTEIN)
    ("per 1" . SPARSER::PROTEIN) ("p190" . SPARSER::PROTEIN)
    ("pSM2" . SPARSER::PROTEIN) ("GEF-H1" . SPARSER::PROTEIN)
    ("p120" . SPARSER::PROTEIN) ("p120RasGAP" . SPARSER::PROTEIN)
    ("Cd42" . SPARSER::BIO-COMPLEX) ("isoform 3" . SPARSER::PROTEIN)
    ("p190A" . SPARSER::PROTEIN) ("Rho GTPase" . SPARSER::PROTEIN)
    ("p120-catenin" . SPARSER::PROTEIN) ("p190B" . SPARSER::PROTEIN)
    ("p190RhoGAP" . SPARSER::PROTEIN)
    ("PXAs (64: 38 adult, 26 pediatric) and PXA-As (23: 13 adult; 10 pediatric)"
     . SPARSER::COLLECTION)
    ("PXAs or PXA-As" . SPARSER::COLLECTION)
    ("strong p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("nucleotide and amino acid" . SPARSER::COLLECTION)
    ("Synaptophysin" . SPARSER::PROTEIN) ("Reticulin" . SPARSER::MOLECULE)
    ("more variable and patchy GFAP" . SPARSER::PROTEIN)
    ("our original cohort" . SPARSER::MOLECULE)
    ("the entire cohort" . SPARSER::MOLECULE)
    ("a formal variant" . SPARSER::VARIANT) ("reticulin" . SPARSER::MOLECULE)
    ("HPFs" . SPARSER::PROTEIN) ("PXAs and PXA-As" . SPARSER::COLLECTION)
    ("IDH1 , and PXAs" . SPARSER::COLLECTION)
    ("larger multi-institutional cohorts" . SPARSER::MOLECULE)
    ("PXAs" . SPARSER::PROTEIN-FAMILY) ("PXA" . SPARSER::PROTEIN-FAMILY)
    ("IDH-1" . SPARSER::PROTEIN) ("as 2" . SPARSER::PROTEIN)
    ("S100" . SPARSER::PROTEIN) ("loss of heterozygosity" . SPARSER::PROTEIN)
    ("INI-1" . SPARSER::PROTEIN) ("LRR and BAF" . SPARSER::COLLECTION)
    ("BAF" . SPARSER::PROTEIN) ("LRR" . SPARSER::PROTEIN)
    ("cryptic" . SPARSER::PROTEIN) ("recurrent CNVs met" . SPARSER::AMINO-ACID)
    ("The top 10 principal components" . SPARSER::COMPONENT)
    ("PC1" . SPARSER::PROTEIN) ("Caribbean" . SPARSER::PROTEIN)
    ("Afro-American" . SPARSER::PROTEIN-PAIR)
    ("hypertensive disorder of pregnancy" . SPARSER::PROTEIN)
    ("Afro-Caribbean" . SPARSER::COLLECTION) ("Duo" . SPARSER::PROTEIN)
    ("Quad" . SPARSER::DRUG) ("Afro" . SPARSER::PROTEIN)
    ("LZTS1" . SPARSER::PROTEIN) ("MYCBP2" . SPARSER::PROTEIN)
    ("FGF14" . SPARSER::PROTEIN) ("PC2" . SPARSER::PROTEIN)
    ("X chromosome" . SPARSER::PROTEIN) ("PSG11" . SPARSER::PROTEIN)
    ("of Pregnancy" . SPARSER::PROTEIN)
    ("noncatalytic states" . SPARSER::BIO-STATE)
    ("apoptotic p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p21 and PUMA" . SPARSER::COLLECTION) ("kinase-2" . SPARSER::COLLECTION)
    ("a physiologic transcriptional coactivator" . SPARSER::PROTEIN)
    ("mRNAs ( xref ) and proteins ( xref )" . SPARSER::COLLECTION)
    ("PUMA and Bax" . SPARSER::COLLECTION) ("HEK" . SPARSER::PROTEIN)
    ("adenosine" . SPARSER::PROTEIN)
    ("full-length and fragments" . SPARSER::COLLECTION)
    ("sulindac" . SPARSER::DRUG) ("treated MEFs" . SPARSER::PROTEIN)
    ("etoposide-treated MEFs" . SPARSER::PROTEIN)
    ("PARP and caspase-3" . SPARSER::COLLECTION)
    ("cleaved PARP [poly(ADP-ribose) polymerase] and caspase-3 ( xref )"
     . SPARSER::COLLECTION)
    ("that IPMK’s" . SPARSER::PROTEIN)
    ("p53 and histones" . SPARSER::COLLECTION)
    ("etoposide-treated primary MEFs" . SPARSER::PROTEIN)
    ("PUMA , Bax , or p21" . SPARSER::COLLECTION)
    ("primary MEFs" . SPARSER::PROTEIN)
    ("PUMA , Bax , and p21" . SPARSER::COLLECTION)
    ("PUMA, Bax, and p21" . SPARSER::COLLECTION)
    ("PUMA, Bax, and p21 proteins" . SPARSER::COLLECTION)
    ("the canonical p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IPMK and p53" . SPARSER::COLLECTION) ("recombinase" . SPARSER::PROTEIN)
    ("Cre" . SPARSER::PROTEIN) ("exogenous IPMK" . SPARSER::PROTEIN)
    ("phosphate-responsive genes" . SPARSER::GENE)
    ("kinase and PI3K" . SPARSER::COLLECTION)
    ("a physiologic phosphatidylinositol 3-kinase"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("neutrophil" . SPARSER::PROTEIN) ("pyrophosphate" . SPARSER::MOLECULE)
    ("polyphosphate" . SPARSER::MOLECULE) ("Sal" . SPARSER::PROTEIN)
    ("IPMK-p53" . SPARSER::COLLECTION) ("p53 and p300" . SPARSER::COLLECTION)
    ("inositol polyphosphate multikinase (IPMK)" . SPARSER::PROTEIN)
    ("inositol" . SPARSER::PROTEIN) ("acetyltransferase" . SPARSER::PROTEIN)
    ("IPMK" . SPARSER::PROTEIN) ("Acetyl-CoA" . SPARSER::MOLECULE)
    ("histone deacetylase 3" . SPARSER::PROTEIN) ("IP 6 K2" . SPARSER::PROTEIN)
    ("P-C" . SPARSER::PROTEIN)
    ("glutathione S -transferase" . SPARSER::PROTEIN)
    ("Lys 9" . SPARSER::PROTEIN) ("p21 proteins" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase inhibitor 1" . SPARSER::PROTEIN)
    ("CDKN1A" . SPARSER::PROTEIN)
    ("p53 up-regulated modulator of apoptosis" . SPARSER::PROTEIN)
    ("PHO5" . SPARSER::PROTEIN) ("steroidogenic factor 1" . SPARSER::PROTEIN)
    ("PIP 2" . SPARSER::PIP2) ("IP 3" . SPARSER::IP3)
    ("inositol 1,4,5-trisphosphate" . SPARSER::MOLECULE)
    ("inositol polyphosphate multikinase" . SPARSER::PROTEIN)
    ("BRAF and PI3K/mTOR inhibitors" . SPARSER::COLLECTION)
    ("robust therapeutic strategies forBRAF V600E CRC" . SPARSER::PROTEIN)
    ("p-ERK and p-S6" . SPARSER::COLLECTION)
    ("both an EGFR inhibitor and a PI3K inhibitor" . SPARSER::COLLECTION)
    ("TRAIL" . SPARSER::PROTEIN) ("staurosporine" . SPARSER::DRUG)
    ("a prototypic PIK3CA" . SPARSER::PROTEIN)
    ("only growth arrest ofBRAF V600E thyroid" . SPARSER::PROTEIN)
    ("a RAF inhibitor (RAF265) and a dual PI3K/mTOR inhibitor (BEZ)"
     . SPARSER::COLLECTION)
    ("a dual PI3K/mTOR inhibitor (BEZ)" . SPARSER::INHIBITOR)
    ("inhibitor (BEZ)" . SPARSER::INHIBITOR)
    ("pure PI3K inhibitors or pure mTOR inhibitors" . SPARSER::COLLECTION)
    ("pure mTOR inhibitors" . SPARSER::INHIBITOR)
    ("pure PI3K inhibitors" . SPARSER::INHIBITOR)
    ("preclinical drug" . SPARSER::DRUG)
    ("a robust surrogate forBRAF V600E CRC" . SPARSER::PROTEIN)
    ("GEM" . SPARSER::PROTEIN)
    ("RAS-GTP, CRAF, and pAKT" . SPARSER::COLLECTION)
    ("NVP-BEZ235-treated cohort" . SPARSER::MOLECULE)
    ("GDC-0879 (27.5% in pre-treatment vs. 27.7% in post-treatment; P = 0.95) and NVP-BEZ235 (33.7% in pre-treatment vs. 36.5% in post-treatment; P = 0.68)"
     . SPARSER::COLLECTION)
    ("GDC-0879 and NVP-BEZ235" . SPARSER::COLLECTION)
    ("the GDC-0879-treated cohort" . SPARSER::MOLECULE)
    ("mucin" . SPARSER::PROTEIN) ("discrete foci" . SPARSER::PROTEIN)
    ("SSA" . SPARSER::PROTEIN) ("dystrophic" . SPARSER::PROTEIN)
    ("mononucleotide" . SPARSER::MOLECULE) ("Apc-Braf" . SPARSER::COLLECTION)
    ("Braf" . SPARSER::PROTEIN) ("Apc" . SPARSER::PROTEIN)
    ("VACO432" . SPARSER::PROTEIN) ("GDC-0879 and 100nM" . SPARSER::COLLECTION)
    ("Concurrent BRAF" . SPARSER::PROTEIN)
    ("concurrent BRAF" . SPARSER::PROTEIN)
    ("GDC-0879 and the dual PI3K/mTOR inhibitor NVP-BEZ235"
     . SPARSER::COLLECTION)
    ("the dual PI3K/mTOR inhibitor NVP-BEZ235" . SPARSER::DRUG)
    ("EGFR and IGFR" . SPARSER::COLLECTION) ("IGFR" . SPARSER::PROTEIN)
    ("continued PI3K/mTOR" . SPARSER::COLLECTION)
    ("BRAF mutant (VACO432 and RKO) and BRAF/KRAS WT (VT1 and T29) cells"
     . SPARSER::COLLECTION)
    ("BRAF/KRAS" . SPARSER::COLLECTION) ("p-MEK" . SPARSER::COLLECTION)
    ("PLX4032, PLX4720, and GDC-0879" . SPARSER::COLLECTION)
    ("sporadic CRC" . SPARSER::PROTEIN) ("only one partial" . SPARSER::PROTEIN)
    ("RAS, HRAS, NRAS, or MEK1" . SPARSER::COLLECTION)
    ("PDGFRβ or IGF-1R" . SPARSER::COLLECTION) ("dacarbazine" . SPARSER::DRUG)
    ("vemurafenib" . SPARSER::DRUG) ("serrated" . SPARSER::PROTEIN)
    ("/mammalian target of rapamycin" . SPARSER::COLLECTION)
    ("phosphatidyl" . SPARSER::MOLECULE) ("PD-L1" . SPARSER::PROTEIN)
    ("RAF265" . SPARSER::DRUG) ("PLX4720" . SPARSER::DRUG)
    ("p-S6" . SPARSER::PROTEIN) ("NVP-BEZ235" . SPARSER::DRUG)
    ("GDC-0879" . SPARSER::DRUG) ("DLD-1" . SPARSER::PROTEIN)
    ("PDGFRβ" . SPARSER::PROTEIN) ("COT-1" . SPARSER::PROTEIN)
    ("PLX4032" . SPARSER::DRUG) ("inositol 3-kinase" . SPARSER::PROTEIN)
    ("biologically relevant genes" . SPARSER::GENE)
    ("the homogeneous validation cohort" . SPARSER::MOLECULE)
    ("AR and its ligand androgens" . SPARSER::COLLECTION)
    ("luminal-like genes and cancer stem cell-like genes"
     . SPARSER::COLLECTION)
    ("EMT-associated genes" . SPARSER::GENE) ("etc" . SPARSER::PROTEIN)
    ("nodal" . SPARSER::PROTEIN) ("RFS (NPV)" . SPARSER::PROTEIN)
    ("BCM" . SPARSER::DRUG) ("AR and GATA3" . SPARSER::COLLECTION)
    ("WNT11 and MMP28" . SPARSER::COLLECTION)
    ("AR, GATA3, and KRT16" . SPARSER::COLLECTION) ("LAR" . SPARSER::PROTEIN)
    ("PPV" . SPARSER::MOLECULE) ("GATA3 and ESR1" . SPARSER::COLLECTION)
    ("PAM50-predicted subtypes" . SPARSER::PROTEIN) ("PAM" . SPARSER::PROTEIN)
    ("ERα and GATA3" . SPARSER::COLLECTION)
    ("AR and luminal" . SPARSER::COLLECTION)
    ("WNT11, and epithelial-to-mesenchymal" . SPARSER::COLLECTION)
    ("GATA 3" . SPARSER::PROTEIN) ("member 11" . SPARSER::PROTEIN)
    ("wingless-type MMTV integration site family" . SPARSER::PROTEIN)
    ("matrix metallopeptidase 28" . SPARSER::PROTEIN)
    ("MMP28" . SPARSER::PROTEIN) ("keratin 16" . SPARSER::PROTEIN)
    ("KRT16" . SPARSER::PROTEIN)
    ("gastrulation brain homeobox 2" . SPARSER::PROTEIN)
    ("GBX2" . SPARSER::PROTEIN) ("GATA binding protein 3" . SPARSER::PROTEIN)
    ("estrogen receptor 2" . SPARSER::PROTEIN) ("GATA3" . SPARSER::PROTEIN)
    ("androgen-receptor" . SPARSER::PROTEIN) ("Glycerol" . SPARSER::PROTEIN)
    ("lysis" . SPARSER::PROTEIN) ("PBS" . SPARSER::PROTEIN)
    ("MN" . SPARSER::PROTEIN) ("dT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TRIzol" . SPARSER::DRUG)
    ("2 μg/mL leupeptin and 10 mM sodium fluoride" . SPARSER::COLLECTION)
    ("SDS-lysis" . SPARSER::PROTEIN-PAIR) ("leupeptin" . SPARSER::DRUG)
    ("pepstatin" . SPARSER::DRUG) ("orthovanadate" . SPARSER::MOLECULE)
    ("aprotinin" . SPARSER::DRUG) ("PMSF" . SPARSER::MOLECULE)
    ("EGTA" . SPARSER::MOLECULE) ("EDTA" . SPARSER::MOLECULE)
    ("Macrophages" . SPARSER::PROTEIN) ("Monocytes" . SPARSER::PROTEIN)
    ("Human monocyte-derived macrophages" . SPARSER::PROTEIN)
    ("MKP-1 and actin" . SPARSER::COLLECTION) ("TX" . SPARSER::PROTEIN)
    ("PP1 and PP2A" . SPARSER::COLLECTION)
    ("the viral protein" . SPARSER::PROTEIN)
    ("MKP-1 and PP2A" . SPARSER::COLLECTION)
    ("TNF-alpha and IL-6" . SPARSER::COLLECTION)
    ("MAPK and phosphatases" . SPARSER::COLLECTION)
    ("pro- and anti-inflammatory" . SPARSER::COLLECTION)
    ("pro-" . SPARSER::AMINO-ACID)
    ("TNF-alpha, IL-1β and IL-6" . SPARSER::COLLECTION)
    ("proinflammatory cytokines and chemokines" . SPARSER::COLLECTION)
    ("p38 mitogen activated protein kinase (MAPK)" . SPARSER::PROTEIN)
    ("primary monocyte-derived macrophages" . SPARSER::PROTEIN)
    ("primary macrophages" . SPARSER::PROTEIN)
    ("MAPK phosphatase-1 (MKP-1) and protein phosphatase type 2A (PP2A)"
     . SPARSER::COLLECTION)
    ("primary human monocyte-derived macrophages" . SPARSER::PROTEIN)
    ("SB203580" . SPARSER::DRUG) ("H3N2" . SPARSER::MOLECULE)
    ("MKP-1" . SPARSER::PROTEIN) ("phosphatase-1" . SPARSER::PROTEIN)
    ("TNF-alpha" . SPARSER::PROTEIN)
    ("p38 mitogen activated protein kinase" . SPARSER::PROTEIN)
    ("calcium and DAG" . SPARSER::COLLECTION)
    ("Src/PLCγ" . SPARSER::COLLECTION) ("DAG" . SPARSER::DAG)
    ("N-Ras and H-Ras" . SPARSER::COLLECTION)
    ("either Raf or the PI3K catalytic subunit p110" . SPARSER::COLLECTION)
    ("the predominant isoform" . SPARSER::ISOFORM)
    ("N-Ras-" . SPARSER::PROTEIN) ("Akt and eNOS" . SPARSER::COLLECTION)
    ("PalM" . SPARSER::PROTEIN) ("streptavidin" . SPARSER::PROTEIN)
    ("hydroxylamine" . SPARSER::MOLECULE) ("Thioester" . SPARSER::MOLECULE)
    ("-citrulline" . SPARSER::MOLECULE) ("citrulline" . SPARSER::MOLECULE)
    ("Akt, eNOS, VASP, and ERK 1/2" . SPARSER::COLLECTION)
    ("VASP" . SPARSER::PROTEIN) ("PKG" . SPARSER::PROTEIN)
    ("GMP" . SPARSER::MOLECULE)
    ("growth factor (VEGF)" . SPARSER::GROWTH-FACTOR)
    ("PI3K, Akt, and eNOS" . SPARSER::COLLECTION)
    ("Raf1 and PI3K" . SPARSER::COLLECTION) ("Raf1" . SPARSER::PROTEIN)
    ("Raf/MEK/ERK" . SPARSER::COLLECTION)
    ("the receptor ( xref ) and increases Ras GTP" . SPARSER::COLLECTION)
    ("thioester" . SPARSER::MOLECULE) ("at least two different types" . TYPE)
    ("PM" . SPARSER::PROTEIN) ("H-Ras, K-Ras, and N-Ras" . SPARSER::COLLECTION)
    ("GDP/GTP" . SPARSER::PROTEIN-PAIR)
    ("Raf and the catalytic subunit p110" . SPARSER::COLLECTION)
    ("endothelial nitric-oxide synthase" . SPARSER::PROTEIN)
    ("eNOS" . SPARSER::PROTEIN) ("GRP1" . SPARSER::PROTEIN)
    ("l -NAME" . SPARSER::MOLECULE) ("LY 294002" . SPARSER::MOLECULE)
    ("Gö6983" . SPARSER::DRUG) ("cGMP-dependent" . SPARSER::PROTEIN)
    ("l -arginine" . SPARSER::MOLECULE)
    ("Nitric-oxide Synthase" . SPARSER::PROTEIN)
    ("polyvinylidene fluoride" . SPARSER::DRUG)
    ("exchange factors" . SPARSER::EXCHANGE-FACTOR)
    ("GTPase-activating" . SPARSER::PROTEIN) ("Ras-binding" . SPARSER::PROTEIN)
    ("p21Ras" . SPARSER::PROTEIN) ("nitric-oxide synthase" . SPARSER::PROTEIN)
    ("H-Ras" . SPARSER::PROTEIN)
    ("resveratrol and other STACS" . SPARSER::COLLECTION)
    ("DNase/RNase" . SPARSER::COLLECTION) ("RNase" . SPARSER::PROTEIN)
    ("S3A and S3B" . SPARSER::COLLECTION) ("PDE" . SPARSER::PROTEIN)
    ("cAMP or cGMP" . SPARSER::COLLECTION) ("cAMP/cGMP" . SPARSER::COLLECTION)
    ("a competitive inhibitor" . SPARSER::INHIBITOR)
    ("cAMP and cGMP" . SPARSER::COLLECTION)
    ("phosphodiesterases" . SPARSER::PROTEIN) ("PDEs" . SPARSER::PROTEIN)
    ("cAMP, cGMP and SRT1720" . SPARSER::COLLECTION)
    ("cGMP" . SPARSER::PROTEIN) ("cAMP" . SPARSER::PROTEIN)
    ("piceatannol" . SPARSER::DRUG)
    ("mammalian Sirt5 [ xref ] and yeast Sir2 [ xref ]" . SPARSER::COLLECTION)
    ("cofactors or further interacting proteins" . SPARSER::COLLECTION)
    ("further interacting proteins" . SPARSER::PROTEIN)
    ("cofactors" . SPARSER::PROTEIN) ("an unusual protein" . SPARSER::PROTEIN)
    ("yielded pure protein" . SPARSER::PROTEIN)
    ("AROS and DBC1" . SPARSER::COLLECTION) ("DBC1" . SPARSER::PROTEIN)
    ("approximately 71 kDa" . SPARSER::PROTEIN)
    ("spherical monomer" . SPARSER::MONOMER)
    ("spherical protein" . SPARSER::PROTEIN) ("hydrated" . SPARSER::MOLECULE)
    ("an at least partially folded protein" . SPARSER::PROTEIN)
    ("trimeric Sirt1" . SPARSER::PROTEIN) ("SV" . SPARSER::MOLECULE)
    ("Sirt1 " . SPARSER::PROTEIN) ("EM" . SPARSER::PROTEIN)
    ("a monomeric protein" . SPARSER::PROTEIN)
    ("a spherical monomer" . SPARSER::MONOMER)
    ("the protein's" . SPARSER::PROTEIN)
    ("monomer and dimer" . SPARSER::COLLECTION)
    ("full-length protein and deletion variants" . SPARSER::COLLECTION)
    ("protein " . SPARSER::PROTEIN) ("trimers" . SPARSER::TRIMER)
    ("an unusual conformation" . SPARSER::BIO-CONFORMATION)
    ("STAC" . SPARSER::PROTEIN)
    ("Mammalian Sirt1 and its yeast homologue Sir2" . SPARSER::COLLECTION)
    ("resveratrol and other STACs (Sirtuin-activating compounds)"
     . SPARSER::COLLECTION)
    ("the enzyme's" . SPARSER::ENZYME) ("subdomains" . SPARSER::PROTEIN)
    ("a smaller Zn 2+" . SPARSER::MOLECULE)
    ("an attractive drug target" . SPARSER::TARGET-PROTEIN)
    ("Resveratrol" . SPARSER::PROTEIN)
    ("Sirt1 and Sirt1" . SPARSER::COLLECTION) ("AROS" . SPARSER::PROTEIN)
    ("Sirt1" . SPARSER::PROTEIN) ("Sirtuins" . SPARSER::PROTEIN-FAMILY)
    ("S4" . SPARSER::PROTEIN-FAMILY) ("Sirt2" . SPARSER::PROTEIN)
    ("1 C" . SPARSER::PROTEIN) ("Sirt5" . SPARSER::PROTEIN)
    ("N-terminally" . SPARSER::PROTEIN) ("S1B" . SPARSER::PROTEIN)
    ("1–1" . SPARSER::PROTEIN) ("Deacetylase activity" . SPARSER::PROTEIN)
    ("SRT1720" . SPARSER::DRUG) ("Sirt3" . SPARSER::PROTEIN)
    ("Sir2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("deacetylase activity" . SPARSER::PROTEIN) ("NAD +" . SPARSER::MOLECULE)
    ("poisons, and veliparib" . SPARSER::COLLECTION)
    ("poisons" . SPARSER::MOLECULE) ("defective HR" . SPARSER::PROTEIN)
    ("BRCA1 (OVCAR-8 treated with siRNA, xref ) or BRCA2 (PEO1, xref )"
     . SPARSER::COLLECTION)
    ("currently unappreciated substrates" . SPARSER::SUBSTRATE)
    ("appropriate biomarkers" . SPARSER::MOLECULE)
    ("cisplatin, topotecan, or gemcitabine" . SPARSER::COLLECTION)
    ("the endonucleases MRE11 ( xref ) or MUS81 ( xref )"
     . SPARSER::COLLECTION)
    ("genotoxins" . SPARSER::MOLECULE)
    ("hydroxyurea, gemcitabine and cytarabine" . SPARSER::COLLECTION)
    ("hydroxyurea" . SPARSER::DRUG) ("camptothecin" . SPARSER::DRUG)
    ("CAMK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("caffeine or UCN-01" . SPARSER::COLLECTION) ("caffeine" . SPARSER::DRUG)
    ("Chk1 and ATR" . SPARSER::COLLECTION)
    ("siRNA or small molecule inhibitors" . SPARSER::COLLECTION)
    ("ATR and HR" . SPARSER::COLLECTION) ("ATR or Chk1" . SPARSER::COLLECTION)
    ("DR" . SPARSER::MOLECULE)
    ("cisplatin, topotecan, or veliparib" . SPARSER::COLLECTION)
    ("cisplatin, topotecan, and veliparib" . SPARSER::COLLECTION)
    ("Chk1, gemcitabine, topotecan, and cisplatin" . SPARSER::COLLECTION)
    ("MK-8776 and VE-821" . SPARSER::COLLECTION)
    ("gemcitabine, topotecan, or cisplatin" . SPARSER::COLLECTION)
    ("topotecan, and cisplatin" . SPARSER::COLLECTION)
    ("genotoxin" . SPARSER::MOLECULE)
    ("gemcitabine, and topotecan" . SPARSER::COLLECTION)
    ("MK-8776 and other Chk1 inhibitors ( xref , xref , xref )"
     . SPARSER::COLLECTION)
    ("cisplatin, topotecan, veliparib, or gemcitabine" . SPARSER::COLLECTION)
    ("ATR-Chk1" . SPARSER::COLLECTION)
    ("topotecan and cisplatin" . SPARSER::COLLECTION)
    ("antimetabolite" . SPARSER::DRUG)
    ("cisplatin or topotecan" . SPARSER::COLLECTION)
    ("cisplatin and topotecan" . SPARSER::COLLECTION)
    ("MK-8776 or VE-821" . SPARSER::COLLECTION)
    ("VE-821 and MK-8776" . SPARSER::COLLECTION)
    ("antimetabolites" . SPARSER::DRUG)
    ("continuous cisplatin" . SPARSER::DRUG) ("poisoning" . SPARSER::MOLECULE)
    ("topoisomerase" . SPARSER::PROTEIN)
    ("cisplatin, topotecan, gemcitabine, and veliparib" . SPARSER::COLLECTION)
    ("ATR signaling (but not Chk1 signaling) strikingly further sensitized BRCA1-"
     . SPARSER::PROTEIN)
    ("cisplatin, topotecan and PARP" . SPARSER::COLLECTION)
    ("BRCA1-" . SPARSER::PROTEIN) ("ATR/Chk1" . SPARSER::COLLECTION)
    ("cisplatin, gemcitabine, topotecan, and veliparib" . SPARSER::COLLECTION)
    ("genotoxic drugs" . SPARSER::DRUG) ("ATR and Chk1" . SPARSER::COLLECTION)
    ("The 9-1-1 complex and its associated protein" . SPARSER::COLLECTION)
    ("its associated protein" . SPARSER::PROTEIN)
    ("Rad9-Hus1-Rad1" . SPARSER::COLLECTION) ("polymerases" . SPARSER::PROTEIN)
    ("helicases" . SPARSER::PROTEIN) ("dNTP" . SPARSER::MOLECULE)
    ("cisplatin, topotecan and veliparib" . SPARSER::COLLECTION)
    ("the ATR kinase inhibitor VE-821 or the CHK1 inhibitor MK-8776"
     . SPARSER::COLLECTION)
    ("cisplatin, topotecan and gemcitabine" . SPARSER::COLLECTION)
    ("gemcitabine and the poly(ADP-ribose)-polymerase (PARP) inhibitor veliparib (ABT-888)"
     . SPARSER::COLLECTION)
    ("cisplatin, topotecan, gemcitabine and the poly(ADP-ribose)-polymerase (PARP) inhibitor veliparib (ABT-888)"
     . SPARSER::COLLECTION)
    ("ATR and CHK1" . SPARSER::COLLECTION)
    ("-polymerase" . SPARSER::COLLECTION) ("veliparib" . SPARSER::DRUG)
    ("gemcitabine" . SPARSER::DRUG) ("topotecan" . SPARSER::DRUG)
    ("ATR-CHK1" . SPARSER::COLLECTION) ("UCN-01" . SPARSER::DRUG)
    ("SCH 900776" . SPARSER::DRUG) ("kinase-like" . SPARSER::PROTEIN-FAMILY)
    ("I-SceI" . SPARSER::PROTEIN) ("ATR-2" . SPARSER::PROTEIN)
    ("heat shock protein 90" . SPARSER::PROTEIN) ("Rad51" . SPARSER::PROTEIN)
    ("LY 2603618" . SPARSER::DRUG) ("TopBP1" . SPARSER::PROTEIN)
    ("9-1-1 complex" . SPARSER::|9-1-1|) ("Rad1" . SPARSER::PROTEIN)
    ("Hus1" . SPARSER::PROTEIN) ("Rad9" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("VE-821" . SPARSER::DRUG) ("ABT-888" . SPARSER::DRUG)
    ("EGFR and CK5" . SPARSER::COLLECTION)
    ("the invasive basal-like cancer component" . SPARSER::COMPONENT)
    ("atypical p63" . SPARSER::PROTEIN)
    ("CK5/CK8/CK18/CK19" . SPARSER::COLLECTION)
    ("luminal and basal cells" . SPARSER::COLLECTION)
    ("p63 and basal cytokeratins CK5 and CK17" . SPARSER::COLLECTION)
    ("CK5 and CK17" . SPARSER::COLLECTION)
    ("either strong p63 and decreased/weak" . SPARSER::COLLECTION)
    ("p63 and decreased/weak" . SPARSER::COLLECTION) ("g-i" . SPARSER::PROTEIN)
    ("CK5/EGFR" . SPARSER::COLLECTION) ("bothand-CK5" . SPARSER::COLLECTION)
    ("ER/PgR" . SPARSER::COLLECTION) ("CK5/CK14/CK17" . SPARSER::COLLECTION)
    ("cytokeratin" . SPARSER::PROTEIN-FAMILY) ("p63/CK5" . SPARSER::COLLECTION)
    ("p63 and CK5" . SPARSER::COLLECTION) ("P63 and CK5" . SPARSER::COLLECTION)
    ("ER and PgR" . SPARSER::COLLECTION) ("neu and EGFR" . SPARSER::COLLECTION)
    ("EGFR, ER and PgR" . SPARSER::COLLECTION)
    ("p63, CK5, CK6, CK14 and CK17" . SPARSER::COLLECTION)
    ("cytokeratins" . SPARSER::PROTEIN) ("/EGFR" . SPARSER::COLLECTION)
    ("/PgR" . SPARSER::COLLECTION)
    ("estrogen receptor (ER)" . SPARSER::PROTEIN)
    ("-CK5" . SPARSER::COLLECTION) ("PgR" . SPARSER::PROTEIN)
    ("p63 and cytokeratin 5" . SPARSER::COLLECTION)
    ("neu and hormone" . SPARSER::COLLECTION)
    ("type IV collagen" . SPARSER::PROTEIN) ("a 37" . SPARSER::PROTEIN)
    ("CK19" . SPARSER::PROTEIN) ("CK18" . SPARSER::PROTEIN)
    ("CK17" . SPARSER::PROTEIN) ("P63" . SPARSER::PROTEIN)
    ("cytokeratin 5" . SPARSER::PROTEIN) ("LLS" . SPARSER::MOLECULE)
    ("FA" . SPARSER::PROTEIN) ("PL and RH" . SPARSER::COLLECTION)
    ("RH" . SPARSER::MOLECULE) ("PL" . SPARSER::PROTEIN)
    ("PP" . SPARSER::PROTEIN)
    ("KRAS , BRAF , NRAS , and PIK3CA" . SPARSER::COLLECTION)
    ("PIK3CA helical domain mutants" . SPARSER::MUTANT)
    ("BRAF and CRAF" . SPARSER::COLLECTION) ("Mutants" . SPARSER::MUTANT)
    ("a moderately transforming mutant" . SPARSER::MUTANT)
    ("Lys, and Arg" . SPARSER::COLLECTION)
    ("KRAS , BRAF, and PIK3CA" . SPARSER::COLLECTION)
    ("BRAF or PIK3CA" . SPARSER::COLLECTION)
    ("KRAS or BRAF" . SPARSER::COLLECTION)
    ("helical domain mutants" . SPARSER::MUTANT)
    ("dup" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PIK3CA and KRAS" . SPARSER::COLLECTION)
    ("PIK3CA and BRAF" . SPARSER::COLLECTION)
    ("HRM and DNA" . SPARSER::COLLECTION)
    ("BRAF, and exons" . SPARSER::COLLECTION)
    ("KRAS , BRAF , and PIK3CA" . SPARSER::COLLECTION)
    ("an inactive GDP-bound form and an active GTP-bound form"
     . SPARSER::COLLECTION)
    ("cetuximab and panitumumab" . SPARSER::COLLECTION)
    ("Food and Drug Administration (FDA)" . SPARSER::COLLECTION)
    ("Drug" . SPARSER::DRUG) ("Food" . SPARSER::MOLECULE)
    ("Medicines" . SPARSER::DRUG) ("fluoropyrimidine" . SPARSER::DRUG)
    ("antibodies (moABs) that compete with EGFR’s" . SPARSER::ANTIBODY)
    ("a fully human IgG2" . SPARSER::BIO-COMPLEX) ("moABs" . SPARSER::DRUG)
    ("JAK/STAT" . SPARSER::COLLECTION)
    ("RAS/RAF/MEK/ERK" . SPARSER::COLLECTION)
    ("a transmembrane receptor tyrosine kinase (TK)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TK" . SPARSER::PROTEIN) ("KRAS , BRAF , or PIK3CA" . SPARSER::COLLECTION)
    ("BRAF and PIK3CA" . SPARSER::COLLECTION)
    ("high resolution melting (HRM) and positive cases" . SPARSER::COLLECTION)
    ("melting (HRM)" . SPARSER::DRUG) ("HRM" . SPARSER::PROTEIN-FAMILY)
    ("melting" . SPARSER::DRUG) ("RAS-RAF-MAPK" . SPARSER::COLLECTION)
    ("RAS/RAF/ERK" . SPARSER::COLLECTION) ("mCRC" . SPARSER::PROTEIN)
    ("Amino acids" . SPARSER::AMINO-ACID) ("p110α" . SPARSER::PROTEIN)
    ("glutamic acid" . SPARSER::AMINO-ACID) ("RAS-GTP" . SPARSER::PROTEIN)
    ("IgG2" . SPARSER::BIO-COMPLEX) ("PLCγ" . SPARSER::PROTEIN-FAMILY)
    ("ATAC" . SPARSER::PROTEIN) ("Tamoxifen" . SPARSER::MOLECULE)
    ("Arimidex" . SPARSER::DRUG)
    ("only 20% received letrozole" . SPARSER::DRUG)
    ("Estrogen" . SPARSER::MOLECULE)
    ("anastrozole or exemestane" . SPARSER::COLLECTION)
    ("taxane" . SPARSER::DRUG)
    ("the other candidate genetic variants and discontinuation"
     . SPARSER::COLLECTION)
    ("available DNA" . SPARSER::DNA)
    ("exemestane (n=248) or letrozole (n=252)" . SPARSER::COLLECTION)
    ("AIs" . SPARSER::PROTEIN) ("inhibitors (AI)" . SPARSER::INHIBITOR)
    ("anastrozole, exemestane, and letrozole" . SPARSER::COLLECTION)
    ("modulators" . SPARSER::PROTEIN) ("anastrozole" . SPARSER::DRUG)
    ("an intronic variant" . SPARSER::VARIANT)
    ("available germline DNA" . SPARSER::DNA) ("letrozole" . SPARSER::DRUG)
    ("exemestane" . SPARSER::DRUG) ("AI" . SPARSER::PROTEIN)
    ("aromatase" . SPARSER::PROTEIN) ("4–1" . SPARSER::PROTEIN)
    ("HR 1" . SPARSER::PROTEIN-FAMILY) ("CYP19" . SPARSER::PROTEIN)
    ("HCRTR2" . SPARSER::PROTEIN) ("HCRTR1" . SPARSER::PROTEIN)
    ("HTR2A" . SPARSER::PROTEIN) ("HTR1A" . SPARSER::PROTEIN)
    ("PELP1" . SPARSER::PROTEIN) ("NCOA1" . SPARSER::PROTEIN)
    ("EP300" . SPARSER::PROTEIN) ("ESR2" . SPARSER::PROTEIN)
    ("CYP3A5" . SPARSER::PROTEIN) ("CYP2A6" . SPARSER::PROTEIN)
    ("TCL1A" . SPARSER::PROTEIN) ("CYP19A1" . SPARSER::PROTEIN)
    ("TMPRSS2 and ERG" . SPARSER::COLLECTION)
    ("previously using FISH" . SPARSER::PROTEIN)
    ("TMPRSS2-ERG" . SPARSER::COLLECTION)
    ("heterogeneous PTEN" . SPARSER::PROTEIN)
    ("homogeneous ERG" . SPARSER::PROTEIN)
    ("ERG or ETV1" . SPARSER::COLLECTION)
    ("PTEN and ERG" . SPARSER::COLLECTION)
    ("these (N=41/44) cases showing homogeneous ERG" . SPARSER::PROTEIN)
    ("ERG or PTEN" . SPARSER::COLLECTION)
    ("ERG and PTEN" . SPARSER::COLLECTION) ("HMGN1" . SPARSER::PROTEIN)
    ("alkaline phosphatase" . SPARSER::PROTEIN-FAMILY)
    ("serine 2" . SPARSER::PROTEIN)
    ("transmembrane protease" . SPARSER::PROTEIN)
    ("K-sam or KGF" . SPARSER::COLLECTION) ("macroscopic types" . TYPE)
    ("gene and serum" . SPARSER::COLLECTION)
    ("the pathological KGF receptor KGFR" . SPARSER::PROTEIN)
    ("fibroblast growth factors and their receptors" . SPARSER::COLLECTION)
    ("KGF and K-samII" . SPARSER::COLLECTION)
    ("KGF/K-sam" . SPARSER::COLLECTION) ("the macroscopic type" . TYPE)
    ("KGFR" . SPARSER::PROTEIN) ("HGF and TGF-β" . SPARSER::COLLECTION)
    ("fibroblast growth factor (FGF)" . SPARSER::PROTEIN-FAMILY)
    ("epidermal growth factor (EGF)" . SPARSER::PROTEIN)
    ("pg" . SPARSER::MOLECULE) ("K-sam and KGF" . SPARSER::COLLECTION)
    ("KGF" . SPARSER::PROTEIN)
    ("fibroblast growth factors" . SPARSER::PROTEIN-FAMILY)
    ("keratinocyte growth factor" . SPARSER::PROTEIN)
    ("K-sam" . SPARSER::PROTEIN)
    ("autosomal dominant and recessive forms" . SPARSER::COLLECTION)
    ("Amphiphysin" . SPARSER::PROTEIN) ("Myotubularin" . SPARSER::PROTEIN)
    ("mitochondria and glycogen" . SPARSER::COLLECTION)
    ("glycogen" . SPARSER::PROTEIN) ("Histochemical ATPase" . SPARSER::PROTEIN)
    ("its proximal promoter (MCAT)" . SPARSER::PROMOTER)
    ("Col1A1 and Fibronectin" . SPARSER::COLLECTION)
    ("a universal growth regulator" . SPARSER::REGULATOR)
    ("Pax7 , Myf5 or Myogenin" . SPARSER::COLLECTION)
    ("heavy chain , Pax7 , Myf5 and Myogenin" . SPARSER::COLLECTION)
    ("MuRF-1 or Atrogin-1" . SPARSER::COLLECTION)
    ("muscle-specific proteins" . SPARSER::PROTEIN)
    ("MuRF-1 and Atrogin-1" . SPARSER::COLLECTION)
    ("ligases, MuRF1 and Atrogin-1" . SPARSER::COLLECTION)
    ("TA, GAS and EDL" . SPARSER::COLLECTION) ("Types" . TYPE)
    ("Akt, p70S6K, Smad2/3 or Foxo3a" . SPARSER::COLLECTION)
    ("Fibronectin and Type-1" . SPARSER::COLLECTION)
    ("Fibronectin" . SPARSER::PROTEIN)
    ("the muscle specific ubiquitin ligases Atrogin-1 and Muscle ring finger protein ( MuRF-1 )"
     . SPARSER::COLLECTION)
    ("Myf5 and Myogenin" . SPARSER::COLLECTION) ("Myogenin" . SPARSER::PROTEIN)
    ("dystrophin" . SPARSER::PROTEIN) ("CK" . SPARSER::PROTEIN)
    ("Haematoxylin" . SPARSER::MOLECULE) ("EDL" . SPARSER::PROTEIN)
    ("skeletal muscles" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Tet" . SPARSER::PROTEIN) ("MCK-tTA" . SPARSER::PROTEIN-PAIR)
    ("Skeletal Muscle" . SPARSER::PROTEIN) ("ww45/Sav" . SPARSER::COLLECTION)
    ("Sav" . SPARSER::PROTEIN) ("-CATTCC-3" . SPARSER::COLLECTION)
    ("MCAT" . SPARSER::PROTEIN) ("TEF" . SPARSER::PROTEIN)
    ("vestigial" . SPARSER::PROTEIN-FAMILY) ("paralogue" . SPARSER::PROTEIN)
    ("angiomotin" . SPARSER::PROTEIN)
    ("auxiliary proteins ww45 and mob1" . SPARSER::COLLECTION)
    ("ww45 and mob1" . SPARSER::COLLECTION)
    ("a transcriptional co-factor" . SPARSER::MOLECULE)
    ("AMPK and PGC-1α" . SPARSER::COLLECTION)
    ("calcineurin-NFAT" . SPARSER::COLLECTION)
    ("calcineurin" . SPARSER::PROTEIN)
    ("Atrogin-1 and MuRF-1" . SPARSER::COLLECTION)
    ("Skeletal muscle" . SPARSER::PROTEIN) ("ATPase" . SPARSER::PROTEIN)
    ("myogenin" . SPARSER::PROTEIN) ("TR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NADH" . SPARSER::MOLECULE)
    ("Skeletal muscles" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MCK" . SPARSER::PROTEIN)
    ("the Hippo pathway member Yes-associated protein" . SPARSER::PROTEIN)
    ("BIN1" . SPARSER::PROTEIN) ("DNM2" . SPARSER::PROTEIN)
    ("MTM1" . SPARSER::PROTEIN) ("Fast Type" . SPARSER::PROTEIN)
    ("Col1A1" . SPARSER::PROTEIN) ("ring finger protein" . SPARSER::PROTEIN)
    ("muscle specific" . SPARSER::PROTEIN)
    ("Creatine kinase" . SPARSER::PROTEIN)
    ("Creatine Kinase" . SPARSER::PROTEIN)
    ("Nicotinamide adenine dinucleotide" . SPARSER::MOLECULE)
    ("Foxo3a" . SPARSER::PROTEIN) ("Smad2" . SPARSER::PROTEIN)
    ("p70 S6" . SPARSER::PROTEIN) ("Akt/PKB" . SPARSER::PROTEIN)
    ("nicotinamide adenine dinucleotide" . SPARSER::MOLECULE)
    ("creatine kinase" . SPARSER::PROTEIN) ("α-actin" . SPARSER::PROTEIN)
    ("Tead1" . SPARSER::PROTEIN) ("1-4" . SPARSER::PROTEIN)
    ("transcriptional coactivator with PDZ-binding motif" . SPARSER::PROTEIN)
    ("mob1" . SPARSER::PROTEIN) ("ww45" . SPARSER::PROTEIN)
    ("Lats1" . SPARSER::PROTEIN) ("PGC-1α" . SPARSER::PROTEIN)
    ("MuRF-1" . SPARSER::PROTEIN) ("Atrogin-1" . SPARSER::PROTEIN)
    ("MuRF1" . SPARSER::PROTEIN) ("atrogin-1" . SPARSER::PROTEIN)
    ("Pax7" . SPARSER::PROTEIN) ("Myf5" . SPARSER::PROTEIN)
    ("Yap1" . SPARSER::PROTEIN)
    ("TRIM60 , c4orf39 and TMEM19" . SPARSER::COLLECTION)
    ("c4orf39 and TMEM192" . SPARSER::COLLECTION)
    ("PLEKHM1 , c17orf69 , ARHGAP27 , MAPT , KANSL1 and WNT3"
     . SPARSER::COLLECTION)
    ("13 genes and several predicted pseudogenes ( xref )"
     . SPARSER::COLLECTION)
    ("types (TCGA)" . TYPE) ("LRRN2 and PIK3C2B" . SPARSER::COLLECTION)
    ("p53 and MDM2" . SPARSER::COLLECTION) ("NSF" . SPARSER::PROTEIN)
    ("MAPT" . SPARSER::PROTEIN)
    ("the known common ovarian cancer susceptibility alleles"
     . SPARSER::ALLELE)
    ("larger HR" . SPARSER::PROTEIN) ("PIK3C2B and MDM4" . SPARSER::COLLECTION)
    ("MDM4 and TCF7L2" . SPARSER::COLLECTION)
    ("class1 and class2" . SPARSER::COLLECTION)
    ("Country-specific HR" . SPARSER::PROTEIN)
    ("TOX3 , LSP1 , 2q35 and RAD51L1" . SPARSER::COLLECTION)
    ("previously identified modifiers" . SPARSER::MOLECULE)
    ("fine-map" . SPARSER::PROTEIN)
    ("ER, Progesterone and HER2" . SPARSER::COLLECTION)
    ("TMEM19" . SPARSER::PROTEIN) ("TRIM60" . SPARSER::PROTEIN)
    ("TMEM192" . SPARSER::PROTEIN) ("c4orf39" . SPARSER::PROTEIN)
    ("KANSL1" . SPARSER::PROTEIN) ("CRHR1" . SPARSER::PROTEIN)
    ("WNT3" . SPARSER::PROTEIN) ("PLEKHM1" . SPARSER::PROTEIN)
    ("class2" . SPARSER::PROTEIN) ("class1" . SPARSER::PROTEIN-FAMILY)
    ("Class 2" . SPARSER::PROTEIN) ("Class 1" . SPARSER::PROTEIN-FAMILY)
    ("Previously reported BRCA2" . SPARSER::PROTEIN)
    ("FGFR2 , TOX3 , MAP3K1 , LSP1 , 2q35, SLC4A7 , 5p12, 1p11.2, ZNF365 , and 19p13.1"
     . SPARSER::COLLECTION)
    ("2p22-p21" . SPARSER::PROTEIN-PAIR) ("ER-subtypes" . SPARSER::COLLECTION)
    ("a possible tumor suppressor gene" . SPARSER::PROTEIN)
    ("FGF13 or rs184577" . SPARSER::COLLECTION)
    ("subtypes " . SPARSER::PROTEIN)
    ("FGFR2 and rs3803662" . SPARSER::COLLECTION) ("HR " . SPARSER::PROTEIN)
    ("previously reported breast cancer susceptibility alleles"
     . SPARSER::ALLELE)
    ("FGFR2 , MAP3K1 , CDKN2A/B , and PTHLH" . SPARSER::COLLECTION)
    ("SLC4A7" . SPARSER::PROTEIN) ("group I" . SPARSER::PROTEIN)
    ("AP-2α" . SPARSER::PROTEIN) ("LSP1" . SPARSER::PROTEIN)
    ("GCNT2" . SPARSER::PROTEIN) ("CYP1B1" . SPARSER::PROTEIN)
    ("FGF13" . SPARSER::PROTEIN) ("ZNF365" . SPARSER::PROTEIN)
    ("TFAP2A" . SPARSER::PROTEIN)
    ("sequestering soluble tubulin" . SPARSER::PROTEIN)
    ("that paclitaxel's" . SPARSER::DRUG)
    ("cellular molecules that enhance paclitaxel's" . SPARSER::MOLECULE)
    ("Fas" . SPARSER::PROTEIN) ("FADD" . SPARSER::PROTEIN)
    ("Glu and Ac" . SPARSER::COLLECTION)
    ("polymerized tubulin" . SPARSER::PROTEIN)
    ("both soluble α-tubulin and soluble β-tubulin subunits"
     . SPARSER::COLLECTION)
    ("soluble β-tubulin subunits" . SPARSER::FRAGMENT)
    ("both soluble α-tubulin" . SPARSER::PROTEIN)
    ("more soluble α- and β-tubulin subunits" . SPARSER::FRAGMENT)
    ("paclitaxel and SCLIP" . SPARSER::COLLECTION)
    ("soluble tubulin heterodimers" . SPARSER::HETERODIMER)
    ("Shc" . SPARSER::PROTEIN)
    ("caspase 8 and 9 inhibitors" . SPARSER::COLLECTION)
    ("PARP and caspases 3" . SPARSER::COLLECTION)
    ("Annexin-V and 7-AAD" . SPARSER::COLLECTION)
    ("siRNA PEA-15-treated HEY" . SPARSER::PROTEIN-FAMILY)
    ("KOC" . SPARSER::PROTEIN)
    ("SKOV3.ip1-AA, and SKOV3.ip1-DD" . SPARSER::COLLECTION)
    ("AA and DD" . SPARSER::COLLECTION) ("trypan" . SPARSER::DRUG)
    ("phosphomimetic PEA-15" . SPARSER::PROTEIN)
    ("nonphosphorylatable PEA-15" . SPARSER::PROTEIN)
    ("Stathmin" . SPARSER::PROTEIN)
    ("sequestering soluble tubulin heterodimers" . SPARSER::HETERODIMER)
    ("heterodimers" . SPARSER::HETERODIMER)
    ("stathmin/OP18" . SPARSER::COLLECTION) ("stathmin" . SPARSER::PROTEIN)
    ("AKT/PKB" . SPARSER::COLLECTION)
    ("a multifunctional protein" . SPARSER::PROTEIN)
    ("a chemotherapeutic drug" . SPARSER::DRUG) ("SCLIP" . SPARSER::PROTEIN)
    ("transiently overexpressing nonphosphorylatable PEA-15"
     . SPARSER::PROTEIN)
    ("transiently overexpressing phosphomimetic PEA-15" . SPARSER::PROTEIN)
    ("PEA-15-high-expressing HEY" . SPARSER::PROTEIN-FAMILY)
    ("HEY" . SPARSER::PROTEIN-FAMILY) ("Paclitaxel" . SPARSER::DRUG)
    ("caspases 3" . SPARSER::PROTEIN) ("Annexin-V" . SPARSER::PROTEIN)
    ("BR3" . SPARSER::PROTEIN) ("housekeeping gene" . SPARSER::PROTEIN)
    ("caspase 8" . SPARSER::PROTEIN) ("aspartic acid" . SPARSER::AMINO-ACID)
    ("RB3" . SPARSER::PROTEIN) ("SCG10" . SPARSER::PROTEIN)
    ("OP18" . SPARSER::PROTEIN) ("STMN3" . SPARSER::PROTEIN)
    ("calmodulin-dependent protein kinase" . SPARSER::PROTEIN)
    ("SCG10-like protein" . SPARSER::PROTEIN)
    ("phosphoprotein enriched in astrocytes" . SPARSER::PROTEIN)
    ("PEA-15" . SPARSER::PROTEIN) ("/PPARγ/p21" . SPARSER::COLLECTION)
    ("thiazolidinediones" . SPARSER::PROTEIN)
    ("CDK-cyclin" . SPARSER::COLLECTION)
    ("CDK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cyclin-cdk" . SPARSER::COLLECTION) ("glucocorticoids" . SPARSER::PROTEIN)
    ("COX-2 and 15-PGDH" . SPARSER::COLLECTION)
    ("hepatocyte growth factor (HGF)" . SPARSER::PROTEIN)
    ("E2F1 and RB" . SPARSER::COLLECTION)
    ("key cell cycle-regulatory molecules" . SPARSER::MOLECULE)
    ("CDK2, CyclinE, CDK4 and CyclinD1" . SPARSER::COLLECTION)
    ("CyclinE" . SPARSER::PROTEIN-FAMILY)
    ("p21 and PCNA" . SPARSER::COLLECTION)
    ("PCNA and CDKs" . SPARSER::COLLECTION)
    ("PGR2 and PPARγ" . SPARSER::COLLECTION)
    ("the western blot" . SPARSER::PROTEIN)
    ("the pharmacologic PPARγ agonist" . SPARSER::AGONIST)
    ("ciglitazone" . SPARSER::DRUG) ("PPARγ and p21" . SPARSER::COLLECTION)
    ("a key transcription factor" . SPARSER::PROTEIN)
    ("PPRE" . SPARSER::PROTEIN) ("PPARγ-PPRE" . SPARSER::COLLECTION)
    ("PPAR" . SPARSER::PROTEIN)
    ("cells exhibited decreased PGE 2" . SPARSER::DRUG)
    ("PGE 2 and 15-keto-PGE 2 metabolite levels in cells"
     . SPARSER::COLLECTION)
    ("proliferating cell nuclear antigen (PCNA)" . SPARSER::PROTEIN)
    ("AV" . SPARSER::MOLECULE) ("CDKs and PCNA" . SPARSER::COLLECTION)
    ("CDKs" . SPARSER::PROTEIN) ("–PGDH" . SPARSER::COLLECTION)
    ("PGDH" . SPARSER::PROTEIN) ("NSAID" . SPARSER::PROTEIN)
    ("dysplastic hepatocytes" . SPARSER::PROTEIN) ("PGs" . SPARSER::PROTEIN)
    ("PPARγ and p21 WAF1/Cip1" . SPARSER::COLLECTION)
    ("CDK2, CDK4 and PCNA" . SPARSER::COLLECTION)
    ("severe combined immunodeficiency" . SPARSER::PROTEIN)
    ("streptavidin-agarose" . SPARSER::DRUG)
    ("Streptavidin-agarose" . SPARSER::DRUG) ("1-2 µ" . SPARSER::PROTEIN)
    ("15d-PGJ 2" . SPARSER::MOLECULE) ("prostaglandin J 2" . SPARSER::MOLECULE)
    ("C-myc" . SPARSER::PROTEIN) ("p21 protein" . SPARSER::PROTEIN)
    ("GW9662" . SPARSER::DRUG) ("PGR2" . SPARSER::PROTEIN)
    ("proliferating cell nuclear antigen" . SPARSER::PROTEIN)
    ("RS-15" . SPARSER::PROTEIN) ("alcohol dehydrogenase" . SPARSER::PROTEIN)
    ("NAD+" . SPARSER::MOLECULE) ("PGE 2" . SPARSER::DRUG)
    ("15-PGDH" . SPARSER::PROTEIN)
    ("ubiquitin-ligase defective E6AP" . SPARSER::PROTEIN)
    ("IκBα and an E3 ligase" . SPARSER::COLLECTION)
    ("NF-κB, c-jun, β-catenin, PPARγ, TR3, p53, and p73" . SPARSER::COLLECTION)
    ("PR, RARα, PPARα, GR, AR, ERβ, and ERα" . SPARSER::COLLECTION)
    ("a key posttranslational regulator" . SPARSER::REGULATOR)
    ("AQUA" . SPARSER::MOLECULE)
    ("a Yale Pathology retrospective cohort" . SPARSER::MOLECULE)
    ("ERα:E6AP" . SPARSER::BIO-COMPLEX) ("ERα and E6AP" . SPARSER::COLLECTION)
    ("a model wherein ERα protein can" . SPARSER::PROTEIN)
    ("Pin1 or E6AP" . SPARSER::COLLECTION) ("juglone" . SPARSER::DRUG)
    ("E6AP and Pin1" . SPARSER::COLLECTION) ("GST-E6AP" . SPARSER::COLLECTION)
    ("Pin1 and E6AP" . SPARSER::COLLECTION) ("tet" . SPARSER::PROTEIN)
    ("E6AP and wild-type ERα" . SPARSER::COLLECTION)
    ("E6AP and ERα" . SPARSER::COLLECTION) ("GFP-Pin1" . SPARSER::COLLECTION)
    ("immunophilin" . SPARSER::PROTEIN)
    ("A Pin1 isomerase-defective mutant" . SPARSER::MUTANT)
    ("Pin1:ERα" . SPARSER::BIO-COMPLEX) ("HA" . SPARSER::PROTEIN)
    ("HA-ERα" . SPARSER::COLLECTION)
    ("ERα and pS118-ERα" . SPARSER::COLLECTION)
    ("Pin1 and ERα" . SPARSER::COLLECTION)
    ("ERα and Pin1" . SPARSER::COLLECTION)
    ("cis/trans isomerase" . SPARSER::COLLECTION) ("PPIase" . SPARSER::PROTEIN)
    ("cis or trans" . SPARSER::COLLECTION)
    ("Serine/Threonine-Proline" . SPARSER::COLLECTION)
    ("Proline" . SPARSER::AMINO-ACID) ("Threonine" . SPARSER::AMINO-ACID)
    ("Serine" . SPARSER::AMINO-ACID)
    ("a retrospective cohort" . SPARSER::MOLECULE)
    ("protein, ESR1 , and Pin1" . SPARSER::COLLECTION)
    ("isomerase" . SPARSER::ISOMERASE) ("prolyl" . SPARSER::PROTEIN)
    ("UPP" . SPARSER::PROTEIN) ("protein and ESR1" . SPARSER::COLLECTION)
    ("Ribosomal protein" . SPARSER::PROTEIN)
    ("adenosine triphosphate" . SPARSER::MOLECULE)
    ("phenol-red" . SPARSER::DRUG) ("17β-estradiol" . SPARSER::PROTEIN)
    ("Glutathione S -transferase" . SPARSER::PROTEIN)
    ("NFκB" . SPARSER::PROTEIN) ("SOCS-1" . SPARSER::PROTEIN)
    ("TR3" . SPARSER::PROTEIN) ("c-jun" . SPARSER::PROTEIN)
    ("PPARα" . SPARSER::PROTEIN) ("RARα" . SPARSER::PROTEIN)
    ("S-P" . SPARSER::PROTEIN) ("βTrCP" . SPARSER::PROTEIN)
    ("UbcH5a" . SPARSER::PROTEIN)
    ("ubiquitin conjugating enzyme" . SPARSER::PROTEIN-FAMILY)
    ("Ube1" . SPARSER::PROTEIN)
    ("ubiquitin activating enzyme E1" . SPARSER::PROTEIN)
    ("FKBP51" . SPARSER::PROTEIN) ("trans isomerase" . SPARSER::PROTEIN)
    ("T-P" . SPARSER::PROTEIN) ("receptor protein" . SPARSER::RECEPTOR-PROTEIN)
    ("E6AP" . SPARSER::PROTEIN) ("Pin1" . SPARSER::PROTEIN)
    ("the EGFR-ERBB2 dual inhibitor lapatinib and the c-Abl inhibitor imatinib"
     . SPARSER::COLLECTION)
    ("the EGFR-ERBB2 dual inhibitor lapatinib" . SPARSER::DRUG)
    ("EGFR-ERBB2" . SPARSER::COLLECTION)
    ("molecules and antibodies" . SPARSER::COLLECTION)
    ("c-Abl and phospho-Y211" . SPARSER::COLLECTION)
    ("Ron and phospho-Y211 PCNA as well as phospho-Y211 PCNA and c-Abl"
     . SPARSER::COLLECTION)
    ("PCNA and c-Abl" . SPARSER::COLLECTION)
    ("c-Abl and membrane receptors" . SPARSER::COLLECTION)
    ("the catalyzed substrate" . SPARSER::SUBSTRATE)
    ("trimer" . SPARSER::TRIMER)
    ("Ron, c-Abl, and phospho-Y211" . SPARSER::COLLECTION)
    ("phospho-Y211 PCNA (H score higher than medium) and c-Abl (H score higher than medium)"
     . SPARSER::COLLECTION)
    ("Abl-PCNA" . SPARSER::COLLECTION) ("Ron and cAbl" . SPARSER::COLLECTION)
    ("Ron and phospho-Y211" . SPARSER::COLLECTION)
    ("Ron as well as EGFR" . SPARSER::COLLECTION)
    ("EGFR and Ron" . SPARSER::COLLECTION)
    ("PCNA and EGFR" . SPARSER::COLLECTION)
    ("EGFR, PCNA, and phospho-Y211" . SPARSER::COLLECTION)
    ("PCNA and Ron" . SPARSER::COLLECTION)
    ("HGFL-Ron-c-Abl" . SPARSER::COLLECTION)
    ("CrkL and MAPK" . SPARSER::COLLECTION)
    ("HGFL-Ron-Abl-PCNA" . SPARSER::COLLECTION)
    ("GST-Crk" . SPARSER::COLLECTION) ("Crk" . SPARSER::PROTEIN)
    ("Ron-Abl" . SPARSER::COLLECTION) ("c-Abl and Ron" . SPARSER::COLLECTION)
    ("HGFL-Ron" . SPARSER::COLLECTION) ("CrkL" . SPARSER::PROTEIN)
    ("EGFR and ERBB2" . SPARSER::COLLECTION)
    ("a potent inhibitor of EGFR family members EGFR and ERBB2/HER2"
     . SPARSER::COLLECTION)
    ("ERBB2/HER2" . SPARSER::COLLECTION) ("GST-PCNA" . SPARSER::COLLECTION)
    ("wild-type PCNA and a mutant PCNA" . SPARSER::COLLECTION)
    ("Ron-Abl-PCNA" . SPARSER::COLLECTION) ("Abl" . SPARSER::PROTEIN)
    ("MSP" . SPARSER::PROTEIN) ("an indispensable protein" . SPARSER::PROTEIN)
    ("Ron-cAbl-PCNA" . SPARSER::COLLECTION) ("cAbl" . SPARSER::PROTEIN)
    ("chromatin-associated PCNA" . SPARSER::PROTEIN)
    ("Ron and c-Abl" . SPARSER::COLLECTION) ("HGFL" . SPARSER::PROTEIN)
    ("the Ron receptor tyrosine kinase and the downstream non-receptor tyrosine kinase c-Abl"
     . SPARSER::COLLECTION)
    ("Ron" . SPARSER::PROTEIN)
    ("an indispensable component" . SPARSER::COMPONENT)
    ("32P" . SPARSER::|32P|) ("STI571" . SPARSER::DRUG)
    ("PI-3K" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("macrophage-stimulating protein" . SPARSER::PROTEIN)
    ("hepatocyte growth factor-like protein" . SPARSER::PROTEIN)
    ("MST1R" . SPARSER::PROTEIN)
    ("Macrophage Stimulating Protein" . SPARSER::PROTEIN)
    ("anti-estrogen" . SPARSER::DRUG)
    ("Proliferating cell nuclear antigen" . SPARSER::PROTEIN)
    ("c-Abl" . SPARSER::PROTEIN)
    ("IL-8 , PGHS-2 , IL-1β and CX-43" . SPARSER::COLLECTION)
    ("S6K and 4EBP1" . SPARSER::COLLECTION)
    ("concanavalin A and interleukin-2" . SPARSER::COLLECTION)
    ("cortisol" . SPARSER::DRUG) ("mTOR and S6K1" . SPARSER::COLLECTION)
    ("mTOR/DEPTOR" . SPARSER::COLLECTION)
    ("all pregnant states" . SPARSER::BIO-STATE) ("PEO1" . SPARSER::PROTEIN)
    ("AMPK" . SPARSER::PROTEIN) ("STRAD" . SPARSER::PROTEIN)
    ("RHEB" . SPARSER::PROTEIN)
    ("IL-1β, IL-6, IL-8 and TNF-α" . SPARSER::COLLECTION)
    ("inflammatory cytokines and progesterone" . SPARSER::COLLECTION)
    ("Raptor and DEPTOR" . SPARSER::COLLECTION)
    ("cytokines and progesterone" . SPARSER::COLLECTION)
    ("IL-1β, IL-6, IL-8 and TNFα" . SPARSER::COLLECTION)
    ("perinatal" . SPARSER::PROTEIN) ("placental DEPTOR" . SPARSER::PROTEIN)
    ("mTOR and 4EBP" . SPARSER::COLLECTION)
    ("mSIN1, Protor-1, GβL and DEPTOR" . SPARSER::COLLECTION)
    ("p70 ribosomal S6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("eukaryotic initiation factor 4E-BP1" . SPARSER::COLLECTION)
    ("PRAS40 and DEPTOR" . SPARSER::COLLECTION)
    ("Ser/Thr" . SPARSER::COLLECTION) ("Progesterone" . SPARSER::PROTEIN)
    ("inflammatory cytokines" . SPARSER::PROTEIN)
    ("progesterone" . SPARSER::PROTEIN)
    ("mTOR and Raptor" . SPARSER::COLLECTION)
    ("mTOR, DEPTOR, and Raptor" . SPARSER::COLLECTION)
    ("Raptor" . SPARSER::PROTEIN) ("DEPTOR" . SPARSER::PROTEIN)
    ("CX-43" . SPARSER::PROTEIN) ("PGHS-2" . SPARSER::PROTEIN)
    ("4EBP1" . SPARSER::PROTEIN) ("interleukin-2" . SPARSER::PROTEIN)
    ("concanavalin A" . SPARSER::DRUG) ("ERK 2" . SPARSER::PROTEIN)
    ("ERK 1" . SPARSER::PROTEIN) ("S6K1" . SPARSER::PROTEIN)
    ("TSC1" . SPARSER::PROTEIN) ("MO25" . SPARSER::PROTEIN)
    ("LKB1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("REDD1" . SPARSER::PROTEIN)
    ("IRS1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P4" . SPARSER::HUMAN-PROTEIN-FAMILY) ("of pregnancy" . SPARSER::PROTEIN)
    ("4EBP" . SPARSER::PROTEIN) ("Protor-1" . SPARSER::PROTEIN)
    ("mSIN1" . SPARSER::PROTEIN) ("BP1" . SPARSER::PROTEIN)
    ("eukaryotic initiation factor 4E" . SPARSER::PROTEIN-FAMILY)
    ("p70" . SPARSER::PROTEIN) ("protein 6" . SPARSER::PROTEIN)
    ("DEPDC6" . SPARSER::PROTEIN) ("PRAS40" . SPARSER::PROTEIN)
    ("mLST8" . SPARSER::PROTEIN) ("GβL" . SPARSER::PROTEIN)
    ("the ATP-site" . SPARSER::ATP) ("ATP-site" . SPARSER::ATP)
    ("van" . SPARSER::PROTEIN) ("Leu" . SPARSER::AMINO-ACID)
    ("Acta" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Quercitrin" . SPARSER::DRUG)
    ("Afzelin" . SPARSER::DRUG) ("glucosides" . SPARSER::MOLECULE)
    ("DFG" . SPARSER::PROTEIN) ("SL0101-" . SPARSER::DRUG)
    ("the naturally occurring flavonol rhamnoside" . SPARSER::MOLECULE)
    ("RSK1 and RSK2" . SPARSER::COLLECTION)
    ("pro-apoptotic protein Bad" . SPARSER::PROTEIN)
    ("phosphoryl" . SPARSER::MOLECULE) ("AMPPNP" . SPARSER::MOLECULE)
    ("another heterologous kinase" . SPARSER::KINASE)
    ("two homologous mitogen-" . SPARSER::MITOGEN)
    ("four homologous isoforms" . SPARSER::ISOFORM)
    ("Six unusual human protein kinases" . SPARSER::PROTEIN)
    ("kinases, MSK1 and MSK2" . SPARSER::COLLECTION)
    ("mitogen-" . SPARSER::MITOGEN)
    ("typically multidomain proteins" . SPARSER::PROTEIN)
    ("only two commercially available selective inhibitors"
     . SPARSER::INHIBITOR)
    ("the p90 ribosomal (RSK) kinases" . SPARSER::KINASE)
    ("alkaloid" . SPARSER::MOLECULE) ("Flavopiridol" . SPARSER::DRUG)
    ("alvocidib" . SPARSER::DRUG) ("flavopiridol" . SPARSER::DRUG)
    ("CDK2 and CDK5" . SPARSER::COLLECTION) ("galactoside" . SPARSER::MOLECULE)
    ("quercetin" . SPARSER::MOLECULE) ("carbohydrate" . SPARSER::MOLECULE)
    ("natural flavonols" . SPARSER::MOLECULE)
    ("glucose or rhamnose" . SPARSER::COLLECTION)
    ("oligosaccharides" . SPARSER::MOLECULE)
    ("the precise fit" . SPARSER::PROTEIN-FAMILY)
    ("ATP-competitive" . SPARSER::ATP) ("amide" . SPARSER::MOLECULE)
    ("aminopyrimidine" . SPARSER::MOLECULE) ("Kinases" . SPARSER::KINASE)
    ("whose planar AC" . SPARSER::PROTEIN)
    ("kinases and ATP-ases" . SPARSER::COLLECTION) ("ATP-ases" . SPARSER::ATP)
    ("ultraviolet light" . SPARSER::PROTEIN)
    ("the most ubiquitous secondary metabolites" . SPARSER::PROTEIN)
    ("biomedically relevant inhibitors" . SPARSER::INHIBITOR)
    ("the kinase tertiary scaffold" . SPARSER::SCAFFOLD)
    ("afzelin and quercitrin" . SPARSER::COLLECTION)
    ("quercitrin" . SPARSER::DRUG) ("afzelin" . SPARSER::DRUG)
    ("pure flavonols" . SPARSER::MOLECULE)
    ("the p90 ribosomal S6 kinases (RSK)" . SPARSER::PROTEIN-FAMILY)
    ("rhamnoside" . SPARSER::MOLECULE) ("kaempferol" . SPARSER::DRUG)
    ("naturally occurring flavonols" . SPARSER::MOLECULE)
    ("the possible chemical scaffolds" . SPARSER::SCAFFOLD)
    ("flavonols" . SPARSER::MOLECULE) ("Gleevec" . SPARSER::DRUG)
    ("most globular proteins" . SPARSER::PROTEIN)
    ("medically relevant kinases" . SPARSER::KINASE)
    ("Ser, Thr and Tyr" . SPARSER::COLLECTION)
    ("the largest gene families" . SPARSER::PROTEIN-FAMILY)
    ("glycoside" . SPARSER::MOLECULE) ("rhamnose" . SPARSER::MOLECULE)
    ("p90 ribosomal S6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("rhamnosides" . SPARSER::MOLECULE) ("glycosides" . SPARSER::MOLECULE)
    ("flavonol" . SPARSER::MOLECULE)
    ("naturally occurring plant metabolites" . SPARSER::MOLECULE)
    ("Flavonols" . SPARSER::MOLECULE) ("mental retardation" . SPARSER::PROTEIN)
    ("X-linked" . SPARSER::PROTEIN) ("Mg 2+" . SPARSER::MOLECULE)
    ("RSK4" . SPARSER::PROTEIN)
    ("Ca 2+ /calmodulin" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("MSK2" . SPARSER::PROTEIN) ("MSK1" . SPARSER::PROTEIN)
    ("BI-D1870" . SPARSER::MOLECULE)
    ("cyclin dependent kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CDK5" . SPARSER::PROTEIN) ("CDK2" . SPARSER::PROTEIN)
    ("non-selective" . SPARSER::PROTEIN)
    ("S6 kinases" . SPARSER::PROTEIN-FAMILY) ("SL0101" . SPARSER::DRUG)
    ("protein kinase domains" . SPARSER::PROTEIN-FAMILY)
    ("S6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("IL-12 and IL-23" . SPARSER::COLLECTION)
    ("systemic lupus erythematosus" . SPARSER::PROTEIN)
    ("IL-12–STAT4–IFNG" . SPARSER::COLLECTION)
    ("IL-12RB2 and IRF1" . SPARSER::COLLECTION) ("IFNG" . SPARSER::PROTEIN)
    ("IL-12RB1 and IL-12RB2" . SPARSER::COLLECTION)
    ("the p35 subunit (encoded by IL12A ) and the p40 subunit (encoded by IL12B )"
     . SPARSER::COLLECTION)
    ("a key cytokine" . SPARSER::PROTEIN)
    ("IL12RB1, STAT4 , and IRF2" . SPARSER::COLLECTION)
    ("TSLP, IL13 , and HLA-DRA" . SPARSER::COLLECTION)
    ("IL1RL1-IL18R1" . SPARSER::COLLECTION)
    ("ORMDL3-GSDMB" . SPARSER::COLLECTION) ("GSDMB" . SPARSER::PROTEIN)
    ("asthma genes and lung function genes" . SPARSER::COLLECTION)
    ("PID1, PTCH1, and THSD4" . SPARSER::COLLECTION)
    ("ADCY2 and ADCY9" . SPARSER::COLLECTION)
    ("APIP-EHF" . SPARSER::COLLECTION) ("APIP and EHF" . SPARSER::COLLECTION)
    ("EHF" . SPARSER::PROTEIN) ("APIP" . SPARSER::PROTEIN)
    ("SARP, CSGA, TENOR, and ACRN" . SPARSER::COLLECTION)
    ("SARP" . SPARSER::PROTEIN)
    ("PID1, PTCH1, THSD4, ARMC2, CCDC38, CDC123, CFDP1, HDAC4, KCNE2, LRP1, MFAP2, MMP15, NCR3, RARB, SPATA9, and TGFB2"
     . SPARSER::COLLECTION)
    ("NOTCH4-AGER-PPT2" . SPARSER::COLLECTION)
    ("ZKSCAN3-ZNF323" . SPARSER::COLLECTION)
    ("INTS12-GSTCD-NPNT" . SPARSER::COLLECTION) ("MECOM" . SPARSER::PROTEIN)
    ("NPNT" . SPARSER::PROTEIN)
    ("IL13, TSLP, IL33 , and IL1RL1" . SPARSER::COLLECTION)
    ("TSLP" . SPARSER::PROTEIN)
    ("IL12A, IL12RB1, STAT4 , and IRF2" . SPARSER::COLLECTION)
    ("RARB , and ZNF323" . SPARSER::COLLECTION)
    ("NOTCH4-AGER" . SPARSER::COLLECTION) ("RARB" . SPARSER::PROTEIN)
    ("AGER" . SPARSER::PROTEIN) ("GSTCD" . SPARSER::PROTEIN)
    ("HHIP" . SPARSER::PROTEIN) ("IL-23" . SPARSER::PROTEIN)
    ("IL-12Rβ1" . SPARSER::PROTEIN) ("IL-12p35" . SPARSER::PROTEIN)
    ("CITED2" . SPARSER::PROTEIN) ("TIMP3" . SPARSER::PROTEIN)
    ("SYN3" . SPARSER::PROTEIN) ("SULF1" . SPARSER::PROTEIN)
    ("IFNB1" . SPARSER::PROTEIN) ("IFN-β" . SPARSER::PROTEIN)
    ("IFNA1" . SPARSER::PROTEIN) ("IFN-α" . SPARSER::PROTEIN)
    ("IL-12 receptor" . SPARSER::PROTEIN) ("IL-12RB2" . SPARSER::PROTEIN)
    ("IL-12RB1" . SPARSER::PROTEIN) ("IL12B" . SPARSER::PROTEIN)
    ("p40" . SPARSER::PROTEIN) ("p35" . SPARSER::PROTEIN)
    ("HLA-DRA" . SPARSER::PROTEIN) ("IL18R1" . SPARSER::PROTEIN)
    ("ORMDL3" . SPARSER::PROTEIN) ("HLA-C" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ADCY9" . SPARSER::PROTEIN) ("ADCY2" . SPARSER::PROTEIN)
    ("TGFB2" . SPARSER::PROTEIN) ("SPATA9" . SPARSER::PROTEIN)
    ("NCR3" . SPARSER::PROTEIN) ("MMP15" . SPARSER::PROTEIN)
    ("MFAP2" . SPARSER::PROTEIN) ("LRP1" . SPARSER::PROTEIN)
    ("KCNE2" . SPARSER::PROTEIN) ("HDAC4" . SPARSER::PROTEIN)
    ("PTCH1" . SPARSER::PROTEIN) ("PID1" . SPARSER::PROTEIN)
    ("PPT2" . SPARSER::PROTEIN) ("GPR126" . SPARSER::PROTEIN)
    ("ADAM19" . SPARSER::PROTEIN) ("ZKSCAN3" . SPARSER::PROTEIN)
    ("CDC123" . SPARSER::PROTEIN) ("TNS1" . SPARSER::PROTEIN)
    ("INTS12" . SPARSER::PROTEIN) ("HTR4" . SPARSER::PROTEIN)
    ("IL1RL1" . SPARSER::PROTEIN) ("IL33" . SPARSER::PROTEIN)
    ("IL13" . SPARSER::PROTEIN) ("IL-12" . SPARSER::PROTEIN)
    ("IRF2" . SPARSER::PROTEIN) ("STAT4" . SPARSER::PROTEIN)
    ("IL12RB1" . SPARSER::PROTEIN) ("IL12A" . SPARSER::PROTEIN)
    ("ZNF323" . SPARSER::PROTEIN) ("NOTCH4" . SPARSER::PROTEIN)
    ("THSD4" . SPARSER::PROTEIN) ("FAM13A" . SPARSER::PROTEIN)
    ("Chemotherapeutic drugs" . SPARSER::DRUG)
    ("Smac or cytochrome c" . SPARSER::COLLECTION)
    ("AIF and cytochrome c" . SPARSER::COLLECTION) ("IAPs" . SPARSER::PROTEIN)
    ("these pro-apoptotic fragments" . SPARSER::FRAGMENT)
    ("the multi-domain pro-apoptotic proteins Bax and Bak"
     . SPARSER::COLLECTION)
    ("Bax and Bak" . SPARSER::COLLECTION)
    ("a pro-apoptotic protein" . SPARSER::PROTEIN)
    ("Bcl-2, Bcl-xL or ICAD" . SPARSER::COLLECTION)
    ("significantly less cytochrome c and Smac" . SPARSER::COLLECTION)
    ("caspase-3 and caspase-9" . SPARSER::COLLECTION)
    ("cytochrome c and Smac" . SPARSER::COLLECTION)
    ("Bcl-2 and BclxL" . SPARSER::COLLECTION) ("BclxL" . SPARSER::PROTEIN)
    ("a dimeric FK506 analog" . SPARSER::ANALOG)
    ("Smac and cytochrome c" . SPARSER::COLLECTION) ("ICAD" . SPARSER::PROTEIN)
    ("/DNA Fragmentation Factor" . SPARSER::COLLECTION)
    ("caspase-9 or caspases-3" . SPARSER::COLLECTION)
    ("Bcl-2 and Bcl-xL" . SPARSER::COLLECTION) ("DIABLO" . SPARSER::PROTEIN)
    ("Endo" . SPARSER::PROTEIN) ("AIF" . SPARSER::PROTEIN)
    ("Cytochrome c, Apaf-1 and caspase-9" . SPARSER::COLLECTION)
    ("Bcl-2/Bcl-xL" . SPARSER::COLLECTION) ("Smac" . SPARSER::PROTEIN)
    ("Bcl-2 or Bcl-xL" . SPARSER::COLLECTION)
    ("X-linked IAP" . SPARSER::PROTEIN) ("caspases-9" . SPARSER::PROTEIN)
    ("caspase-activated DNase" . SPARSER::PROTEIN) ("VDAC1" . SPARSER::PROTEIN)
    ("z-VAD-fmk" . SPARSER::DRUG) ("FK506" . SPARSER::DRUG)
    ("FK506-binding protein" . SPARSER::PROTEIN) ("DFF45" . SPARSER::PROTEIN)
    ("DFF40" . SPARSER::PROTEIN)
    ("DNA Fragmentation Factor" . SPARSER::PROTEIN)
    ("Caspase-activated DNase" . SPARSER::PROTEIN)
    ("caspases-3" . SPARSER::PROTEIN) ("HtrA2" . SPARSER::PROTEIN)
    ("endonuclease G" . SPARSER::PROTEIN) ("Bcl-xL" . SPARSER::PROTEIN)
    ("RPRM" . SPARSER::PROTEIN)
    ("a transcriptional activator and a cofactor" . SPARSER::COLLECTION)
    ("the regulatory elements around SLUG" . SPARSER::PROTEIN)
    ("suppressors and oncogenes" . SPARSER::COLLECTION)
    ("larger cohorts" . SPARSER::MOLECULE) ("Mutant" . SPARSER::MUTANT)
    ("both benign and localized PCa" . SPARSER::PROTEIN)
    ("AR-" . SPARSER::HUMAN-PROTEIN-FAMILY) ("SLUG" . SPARSER::PROTEIN)
    ("dys" . SPARSER::PROTEIN) ("matrigel" . SPARSER::PROTEIN)
    ("bicalutamide" . SPARSER::DRUG) ("PSA and TMPRSS2" . SPARSER::COLLECTION)
    ("AR and FoxA1" . SPARSER::COLLECTION)
    ("FoxA1 and AR" . SPARSER::COLLECTION) ("RV" . SPARSER::MOLECULE)
    ("androgen and FoxA1" . SPARSER::COLLECTION)
    ("405 genes that were decreased and 516 genes increased by FoxA1 knockdown ( xref )"
     . SPARSER::COLLECTION)
    ("molecules and pathways" . SPARSER::COLLECTION)
    ("FoxA1 pre-occupies lineage-specific enhancers" . SPARSER::PROTEIN)
    ("HDAC7" . SPARSER::PROTEIN) ("E-4" . SPARSER::PROTEIN)
    ("anti-androgens" . SPARSER::DRUG) ("anti-androgen" . SPARSER::DRUG)
    ("E-Cad" . SPARSER::PROTEIN) ("GL2" . SPARSER::DRUG)
    ("Androgen Receptor" . SPARSER::PROTEIN) ("HNF-3" . SPARSER::PROTEIN)
    ("FOXA1" . SPARSER::PROTEIN) ("FoxA1" . SPARSER::PROTEIN)
    ("MEK and CDK4" . SPARSER::COLLECTION) ("Wee1/HSP90" . SPARSER::COLLECTION)
    ("tyrosine kinase and HSP90" . SPARSER::COLLECTION)
    ("CDK4/PI3K" . SPARSER::COLLECTION) ("PI3K/CDK4" . SPARSER::COLLECTION)
    ("BRAF and NRAS" . SPARSER::COLLECTION)
    ("ARAF or CRAF" . SPARSER::COLLECTION)
    ("Bcl-2/Bcl-XL" . SPARSER::COLLECTION) ("bortezomib" . SPARSER::DRUG)
    ("pro-apoptotic Bak/Bax" . SPARSER::COLLECTION)
    ("Bak/Bax" . SPARSER::COLLECTION) ("BIM-EL" . SPARSER::COLLECTION)
    ("Bak" . SPARSER::PROTEIN) ("ARAF/CRAF" . SPARSER::COLLECTION)
    ("Bcl-2, Bcl-w, Bcl-XL, and Mcl-1" . SPARSER::COLLECTION)
    ("Bcl-2 and Mcl-1" . SPARSER::COLLECTION)
    ("dual MEK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BRAF and PI3K" . SPARSER::COLLECTION) ("PI3K/mTOR" . SPARSER::COLLECTION)
    ("the pro-apoptotic proteins BAD and BIM" . SPARSER::COLLECTION)
    ("BAD and BIM" . SPARSER::COLLECTION) ("MEK/ERK" . SPARSER::COLLECTION)
    ("Raf/MEK/ERK/CDK4" . SPARSER::COLLECTION)
    ("significantly more cytotoxic" . SPARSER::PROTEIN)
    ("MK1775 and PI-103" . SPARSER::COLLECTION)
    ("PI3K/AKT/mTOR" . SPARSER::COLLECTION)
    ("ARAF and CRAF" . SPARSER::COLLECTION)
    ("pAKT and pS6" . SPARSER::COLLECTION)
    ("Wee1 and CDK4" . SPARSER::COLLECTION) ("AKT/mTOR" . SPARSER::COLLECTION)
    ("BAD, BAX, BID, Bcl-2, BCL-w and Bcl-XL" . SPARSER::COLLECTION)
    ("the pro-apoptotic protein BAK" . SPARSER::PROTEIN)
    ("pro and anti-apoptotic" . SPARSER::COLLECTION)
    ("pERK" . SPARSER::PROTEIN) ("Ral, p53 or cdc25" . SPARSER::COLLECTION)
    ("Ral" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CRAF, CDK4, Wee1, CHK1, RB and cdc2" . SPARSER::COLLECTION)
    ("RB" . SPARSER::PROTEIN) ("chronic XL888" . SPARSER::DRUG)
    ("CDK4, Wee1 and AKT" . SPARSER::COLLECTION)
    ("orally available HSP90 inhibitor" . SPARSER::INHIBITOR)
    ("receptors and kinases" . SPARSER::COLLECTION)
    ("chaperones" . SPARSER::PROTEIN) ("BRAF and MEK" . SPARSER::COLLECTION)
    ("RAL-GDS" . SPARSER::COLLECTION) ("GDS" . SPARSER::PROTEIN)
    ("RAL" . SPARSER::PROTEIN) ("CDK4 and Wee1" . SPARSER::COLLECTION)
    ("ARAF, CRAF or MAPK" . SPARSER::COLLECTION)
    ("ARAF, CRAF, Wee1, Chk1 and cdc2" . SPARSER::COLLECTION)
    ("MAPK, AKT, mTOR and JNK" . SPARSER::COLLECTION)
    ("CRAF" . SPARSER::PROTEIN) ("ARAF" . SPARSER::PROTEIN)
    ("CDK4/6" . SPARSER::PROTEIN) ("Bcl-w" . SPARSER::PROTEIN)
    ("PI-103" . SPARSER::DRUG) ("pS6" . SPARSER::PROTEIN)
    ("Bcl-XL" . SPARSER::PROTEIN) ("BCL-w" . SPARSER::PROTEIN)
    ("Mcl-1 protein" . SPARSER::PROTEIN) ("cdc25" . SPARSER::PROTEIN)
    ("p27 KIP1" . SPARSER::PROTEIN) ("CHK1" . SPARSER::PROTEIN)
    ("L-15" . SPARSER::PROTEIN) ("RSK2" . SPARSER::PROTEIN)
    ("p90" . SPARSER::PROTEIN) ("HSP70" . SPARSER::PROTEIN)
    ("PI103" . SPARSER::DRUG) ("PD0332991" . SPARSER::DRUG)
    ("MCL1" . SPARSER::PROTEIN) ("HSP90β" . SPARSER::PROTEIN)
    ("mitogen activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phospho-inositide" . SPARSER::MOLECULE) ("MK1775" . SPARSER::DRUG)
    ("Mcl-1" . SPARSER::PROTEIN) ("Wee1" . SPARSER::PROTEIN)
    ("XL888" . SPARSER::DRUG) ("HSP90" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MYC and histone" . SPARSER::COLLECTION) ("myc" . SPARSER::PROTEIN)
    ("methionine (SAM)" . SPARSER::MOLECULE) ("Ezh2" . SPARSER::PROTEIN)
    ("SAM" . SPARSER::MOLECULE) ("IgH" . SPARSER::PROTEIN)
    ("bromodomain-containing protein 4 ( BRD4 ) and BRD2"
     . SPARSER::COLLECTION)
    ("indirectly targets MYC" . SPARSER::PROTEIN)
    ("CDK6, and IGF-1R" . SPARSER::COLLECTION) ("MiRNA" . SPARSER::PROTEIN)
    ("a pleiotropic transcription factor" . SPARSER::PROTEIN)
    ("pre-miR-26a" . SPARSER::COLLECTION)
    ("MYC, and MYC" . SPARSER::COLLECTION)
    ("gene CTDSPL (for pri-miR-26a1) and CTDSP2 (for pri-miR-26a2)"
     . SPARSER::COLLECTION)
    ("pri-miR-26a2" . SPARSER::PROTEIN-PAIR)
    ("pri-miR-26a1" . SPARSER::PROTEIN-PAIR) ("CTDSPL" . SPARSER::PROTEIN)
    ("mature miR-26a" . SPARSER::PROTEIN)
    ("a tetracycline-repressible MYC gene" . SPARSER::GENE)
    ("synergizes" . SPARSER::PROTEIN) ("Cip" . SPARSER::PROTEIN)
    ("azepine" . SPARSER::MOLECULE) ("HDAC3 and EZH2" . SPARSER::COLLECTION)
    ("MYC and EZH2" . SPARSER::COLLECTION)
    ("HDAC and EZH2" . SPARSER::COLLECTION)
    ("Myc and EZH2" . SPARSER::COLLECTION)
    ("miR-26a, and miR-29" . SPARSER::COLLECTION)
    ("BCL2 or CCND1" . SPARSER::COLLECTION) ("Myc" . SPARSER::PROTEIN)
    ("driving oncogene" . SPARSER::ONCOGENE)
    ("blastic variant" . SPARSER::VARIANT) ("MCL" . SPARSER::PROTEIN)
    ("MYC-miRNA-EZH2" . SPARSER::COLLECTION)
    ("miR-26a promoter and cooperatively repressed miR-26a expression in aggressive lymphoma cell lines as well as primary lymphoma cells"
     . SPARSER::COLLECTION)
    ("bromodomain" . SPARSER::PROTEIN) ("BET" . SPARSER::PROTEIN)
    ("MYC, EZH2, and miRNA" . SPARSER::COLLECTION)
    ("MYC-miRNAs-EZH2" . SPARSER::COLLECTION) ("SET domain" . SPARSER::PROTEIN)
    ("BCL6" . SPARSER::PROTEIN) ("BRD2" . SPARSER::PROTEIN)
    ("BRD4" . SPARSER::PROTEIN)
    ("bromodomain-containing protein 4" . SPARSER::PROTEIN)
    ("CDK6" . SPARSER::PROTEIN) ("MiR-26a" . SPARSER::PROTEIN)
    ("a2S" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CTDSP2" . SPARSER::PROTEIN)
    ("Myc protein" . SPARSER::PROTEIN) ("CCK8" . SPARSER::PROTEIN)
    ("HDAC3" . SPARSER::PROTEIN) ("SUZ12" . SPARSER::PROTEIN)
    ("H3K27me3" . SPARSER::PROTEIN) ("PRC2" . SPARSER::PROTEIN)
    ("polycomb repressive complex 2" . SPARSER::PROTEIN)
    ("miR-29" . SPARSER::PROTEIN) ("miR-34a" . SPARSER::MOLECULE)
    ("single-stranded RNAs" . SPARSER::RNA) ("BCL2" . SPARSER::PROTEIN)
    ("acetyl" . SPARSER::MOLECULE)
    ("ubiquitin ligases and other downstream targets" . SPARSER::COLLECTION)
    ("p73, p63, and LATS1" . SPARSER::COLLECTION)
    ("RASSF5–Itch" . SPARSER::COLLECTION)
    ("an essential component" . SPARSER::COMPONENT)
    ("C646 or TSA" . SPARSER::COLLECTION) ("AA and C646" . SPARSER::COLLECTION)
    ("TSA" . SPARSER::PROTEIN) ("trichostatin" . SPARSER::MOLECULE)
    ("Itch and RASSF5" . SPARSER::COLLECTION)
    ("RASSF5 and Itch" . SPARSER::COLLECTION)
    ("RASSF5–GFP" . SPARSER::COLLECTION)
    ("RASSF5C or RASSF5A" . SPARSER::COLLECTION)
    ("-Flag" . SPARSER::COLLECTION) ("RASSF5A–GFP" . SPARSER::COLLECTION)
    ("CHX" . SPARSER::INHIBITOR) ("wt or Itch" . SPARSER::COLLECTION)
    ("RASSF5A and RASSF5C" . SPARSER::COLLECTION)
    ("Itch and RASSF5A" . SPARSER::COLLECTION) ("RASSF5A" . SPARSER::PROTEIN)
    ("RASSF5C-Flag" . SPARSER::COLLECTION) ("RASSF5C" . SPARSER::PROTEIN)
    ("RASSF5A–green fluorescent protein (GFP) and RASSF5B–GFP"
     . SPARSER::COLLECTION)
    ("RASSF5C–GFP or GFP" . SPARSER::COLLECTION)
    ("RASSF5C–GFP" . SPARSER::COLLECTION)
    ("RASSF5B–GFP" . SPARSER::PROTEIN-PAIR)
    ("RASSF5A–green fluorescent protein" . SPARSER::PROTEIN-PAIR)
    ("GST-Itch" . SPARSER::COLLECTION)
    ("Importin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p73, p63 and LATS1" . SPARSER::COLLECTION)
    ("Components" . SPARSER::COMPONENT) ("RASSF" . SPARSER::PROTEIN-FAMILY)
    ("RASSF5/NORE1" . SPARSER::COLLECTION)
    ("sterile" . SPARSER::PROTEIN-FAMILY)
    ("a unique negative regulator" . SPARSER::NEGATIVE-REGULATOR)
    ("HECT" . SPARSER::PROTEIN)
    ("the ligase activity defective Itch" . SPARSER::PROTEIN)
    ("a more stable inert protein" . SPARSER::PROTEIN)
    ("Itch" . SPARSER::PROTEIN) ("RalGDS/AF-6" . SPARSER::COLLECTION)
    ("RalGDS" . SPARSER::PROTEIN) ("AF-6" . SPARSER::PROTEIN)
    ("DE-" . SPARSER::MOLECULE) ("C646" . SPARSER::MOLECULE)
    ("poly-ubiquitin" . SPARSER::PROTEIN)
    ("glutathione S-transferase" . SPARSER::PROTEIN)
    ("RASSF10" . SPARSER::PROTEIN) ("RASSF1" . SPARSER::PROTEIN)
    ("Ubiquitin ligase" . SPARSER::PROTEIN) ("p63" . SPARSER::PROTEIN)
    ("LATS1" . SPARSER::PROTEIN) ("TNF- α" . SPARSER::PROTEIN)
    ("YAP1" . SPARSER::PROTEIN) ("yes associated protein 1" . SPARSER::PROTEIN)
    ("MST1" . SPARSER::PROTEIN) ("NORE1" . SPARSER::PROTEIN)
    ("ligase activity" . SPARSER::PROTEIN) ("RASSF5" . SPARSER::PROTEIN)
    ("NS1 and PB1F2" . SPARSER::COLLECTION) ("IFN" . SPARSER::DRUG)
    ("Bax–CLU" . SPARSER::COLLECTION) ("NP–CLU" . SPARSER::COLLECTION)
    ("conversely IAV NP" . SPARSER::PROTEIN)
    ("IAV NP and host protein CLU" . SPARSER::COLLECTION)
    ("NP and Bax" . SPARSER::COLLECTION) ("CLU–Bax" . SPARSER::COLLECTION)
    ("Casp" . SPARSER::PROTEIN) ("Cyt" . SPARSER::MOLECULE)
    ("Calnexin" . SPARSER::PROTEIN) ("CLU and CLU" . SPARSER::COLLECTION)
    ("α -chain or GST" . SPARSER::COLLECTION)
    ("the mature CLU protein" . SPARSER::PROTEIN)
    ("endogenous cellular CLU ( xref , lane 1, panel 1) and vice versa ( xref , lane 1, panel 2)"
     . SPARSER::COLLECTION)
    ("endogenous cellular CLU" . SPARSER::PROTEIN)
    ("overexpressed CLU (lane 2, panel 1) and vice versa (lane 2, panel 2)"
     . SPARSER::COLLECTION)
    ("versa" . SPARSER::PROTEIN) ("NP/CLU" . SPARSER::COLLECTION)
    ("a heterodimeric glycoprotein" . SPARSER::PROTEIN)
    ("prey" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NS1 and NP" . SPARSER::COLLECTION) ("pEGFP-NP" . SPARSER::COLLECTION)
    ("all the viral proteins" . SPARSER::PROTEIN)
    ("NS1 and M1 proteins" . SPARSER::COLLECTION)
    ("CLU and Bax, and CLU" . SPARSER::COLLECTION)
    ("Bax, and CLU" . SPARSER::COLLECTION)
    ("Viral proteins" . SPARSER::PROTEIN) ("interactors" . SPARSER::PROTEIN)
    ("other apoptosis modulatory proteins" . SPARSER::PROTEIN)
    ("CLU and Bax" . SPARSER::COLLECTION)
    ("any other known apoptosis modulatory protein" . SPARSER::PROTEIN)
    ("NP and CLU" . SPARSER::COLLECTION) ("Clusterin (CLU)" . SPARSER::PROTEIN)
    ("Clusterin" . SPARSER::PROTEIN) ("nucleoprotein (NP)" . SPARSER::PROTEIN)
    ("NP" . SPARSER::PROTEIN) ("L15" . SPARSER::PROTEIN)
    ("Anti- β" . SPARSER::PROTEIN) ("N -p" . SPARSER::PROTEIN)
    ("virulence factor" . SPARSER::PROTEIN-FAMILY)
    ("perinuclear region" . SPARSER::PROTEIN) ("α -chain" . SPARSER::PROTEIN)
    ("myc-tagged" . SPARSER::PROTEIN) ("50 kD" . SPARSER::PROTEIN)
    ("80 kD)" . SPARSER::PROTEIN) ("60 kD" . SPARSER::PROTEIN)
    ("UAP56" . SPARSER::PROTEIN) ("BAT1" . SPARSER::PROTEIN)
    ("CRM1" . SPARSER::PROTEIN) ("PB2" . SPARSER::PROTEIN)
    ("PB1F2" . SPARSER::MOLECULE)
    ("Sam68, and transcriptional regulators" . SPARSER::COLLECTION)
    ("zyxin" . SPARSER::PROTEIN) ("QFPFKE" . SPARSER::PROTEIN)
    ("calpain" . SPARSER::PROTEIN) ("Cbl" . SPARSER::PROTEIN)
    ("phospholipids and assembly" . SPARSER::COLLECTION)
    ("polymers" . SPARSER::MOLECULE) ("a mutated form" . SPARSER::FORM)
    ("Dyn2 Δ800-811" . SPARSER::PROTEIN)
    ("Vav1, and Rac1" . SPARSER::COLLECTION)
    ("siRNA, and Vav1" . SPARSER::COLLECTION)
    ("Dyn2 and Lamp2a" . SPARSER::COLLECTION)
    ("pentapeptide" . SPARSER::MOLECULE) ("Vav1/Hsc70" . SPARSER::COLLECTION)
    ("Vav1 and Hsc70" . SPARSER::COLLECTION)
    ("mCherry-Vav1" . SPARSER::COLLECTION) ("GFP-Lamp1" . SPARSER::COLLECTION)
    ("Lamp1" . SPARSER::PROTEIN) ("chloroquine" . SPARSER::PROTEIN)
    ("Dynasore" . SPARSER::MOLECULE) ("Vav1 and Vav1" . SPARSER::COLLECTION)
    ("GFP-Dyn2 Δ800-811" . SPARSER::PROTEIN-PAIR)
    ("Dyn2 or Dyn2 Δ800-811" . SPARSER::COLLECTION)
    ("transferrin" . SPARSER::PROTEIN) ("Vav1 or Vav1" . SPARSER::COLLECTION)
    ("Dyn2 or Dyn2" . SPARSER::COLLECTION)
    ("a known regulator of spreading and induction" . SPARSER::COLLECTION)
    ("Vav1, and Vav1 and Dyn2" . SPARSER::COLLECTION)
    ("Vav1/Dyn2" . SPARSER::COLLECTION) ("YY" . SPARSER::MOLECULE)
    ("Dyn2/Vav1" . SPARSER::COLLECTION) ("PRD" . SPARSER::PROTEIN)
    ("Vav1 and Dyn2" . SPARSER::COLLECTION)
    ("GAP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Dyn2 and Rac1" . SPARSER::COLLECTION)
    ("siRNA or siRNA" . SPARSER::COLLECTION)
    ("Vav1 and the chaperone Hsc70" . SPARSER::COLLECTION)
    ("Dyn2 and Vav1" . SPARSER::COLLECTION)
    ("the large mechanoenzyme Dyn2 and the small regulatory switch Rac1"
     . SPARSER::COLLECTION)
    ("these distinct GTPases, the large mechanoenzyme Dyn2 and the small regulatory switch Rac1"
     . SPARSER::COLLECTION)
    ("GAPs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("GEFs" . SPARSER::PROTEIN)
    ("dynamins" . SPARSER::PROTEIN)
    ("Several cytoskeletal proteins" . SPARSER::PROTEIN)
    ("Vav" . SPARSER::PROTEIN) ("Dyn2-Vav1" . SPARSER::COLLECTION)
    ("GEF" . SPARSER::GEF) ("Sam68" . SPARSER::PROTEIN)
    ("proto-oncogene Vav" . SPARSER::PROTEIN)
    ("membrane-bound" . SPARSER::PROTEIN) ("Rab5" . SPARSER::PROTEIN)
    ("Lamp2" . SPARSER::PROTEIN) ("NH 4 Cl" . SPARSER::MOLECULE)
    ("exchange factor" . SPARSER::EXCHANGE-FACTOR)
    ("GTPase activating" . SPARSER::PROTEIN)
    ("guanine nucleotide exchange factors" . SPARSER::GEF)
    ("Hsc70" . SPARSER::PROTEIN) ("Vav1" . SPARSER::PROTEIN)
    ("Rac1" . SPARSER::PROTEIN) ("Dyn2" . SPARSER::PROTEIN)
    ("Dynamin 2" . SPARSER::PROTEIN)
    ("MPC, MBM, MIV and GR" . SPARSER::COLLECTION) ("MMG" . SPARSER::PROTEIN)
    ("CMC" . SPARSER::PROTEIN-FAMILY) ("MPC" . SPARSER::PROTEIN)
    ("v-ets" . SPARSER::COLLECTION) ("ets" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Nucleotide" . SPARSER::NUCLEOTIDE)
    ("PARP1, IRF4 and CCND1" . SPARSER::COLLECTION)
    ("PARP1 and ATM" . SPARSER::COLLECTION) ("Ataxia" . SPARSER::PROTEIN)
    ("IRFs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a chromatin-associated enzyme" . SPARSER::ENZYME)
    ("poly-ADP" . SPARSER::PROTEIN) ("phenotypic traits" . SPARSER::PROTEIN)
    ("Asn" . SPARSER::AMINO-ACID) ("TG" . SPARSER::PROTEIN)
    ("gene and melanoma" . SPARSER::COLLECTION)
    ("ATM (p-value 0.04) and rs12203592" . SPARSER::COLLECTION)
    ("gene ( ATM )" . SPARSER::GENE) ("gene ( TYR )" . SPARSER::GENE)
    ("Tyrosinase" . SPARSER::PROTEIN)
    ("only two high-penetrance genes" . SPARSER::GENE)
    ("IRF4, PARP1 , and CCND1" . SPARSER::COLLECTION)
    ("gene, and rs12203592" . SPARSER::COLLECTION)
    ("PARP1, MX2, ATM, CCND1, NADSYN1, CASP8, IRF4 and CYP2R1"
     . SPARSER::COLLECTION)
    ("MC1R , OCA2, ASIP , SLC45A2 and TYR" . SPARSER::COLLECTION)
    ("TYR" . SPARSER::AMINO-ACID) ("ASIP" . SPARSER::PROTEIN)
    ("homolog 1" . SPARSER::PROTEIN)
    ("Transcription Factor" . SPARSER::PROTEIN)
    ("Interferon regulatory factor 4" . SPARSER::PROTEIN)
    ("Cytochrome P450" . SPARSER::PROTEIN-FAMILY)
    ("Ataxia Telangiectasia Mutated" . SPARSER::PROTEIN)
    ("Agouti Signaling Protein" . SPARSER::PROTEIN)
    ("Cyclin-dependent kinase inhibitor 2A" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cell cycle checkpoint kinase" . SPARSER::PROTEIN)
    ("PI4" . SPARSER::PROTEIN) ("interferon-inducible" . SPARSER::PROTEIN)
    ("ETS1" . SPARSER::PROTEIN) ("OR 1" . SPARSER::PROTEIN)
    ("Vitamin D" . SPARSER::MOLECULE)
    ("interferon regulatory factor 4" . SPARSER::PROTEIN)
    ("polypeptide 1" . SPARSER::PROTEIN) ("subfamily R" . SPARSER::PROTEIN)
    ("family 2" . SPARSER::PROTEIN)
    ("cytochrome P450" . SPARSER::PROTEIN-FAMILY)
    ("Caspase 8" . SPARSER::PROTEIN)
    ("Ataxia telangiectasia mutated" . SPARSER::PROTEIN)
    ("Agouti signaling protein" . SPARSER::PROTEIN)
    ("Cyclin-dependent kinase 4" . SPARSER::PROTEIN)
    ("Cyclin-dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CYP2R1" . SPARSER::PROTEIN) ("IRF4" . SPARSER::PROTEIN)
    ("NADSYN1" . SPARSER::PROTEIN) ("MX2" . SPARSER::PROTEIN)
    ("PARP1" . SPARSER::PROTEIN) ("SLC45A2" . SPARSER::PROTEIN)
    ("OCA2" . SPARSER::PROTEIN) ("MC1R" . SPARSER::PROTEIN)
    ("Vascular cell adhesion molecule 1" . SPARSER::PROTEIN)
    ("oxidoreductase" . SPARSER::PROTEIN) ("quinine" . SPARSER::DRUG)
    ("Metallothionein" . SPARSER::PROTEIN)
    ("nitrotyrosine" . SPARSER::MOLECULE)
    ("acute hind limb ischemia" . SPARSER::PROTEIN)
    ("extracellular Zn2+" . SPARSER::MOLECULE)
    ("glucose (HG)" . SPARSER::MOLECULE) ("HG" . SPARSER::MOLECULE)
    ("Nrf2 or NQO-1" . SPARSER::COLLECTION)
    ("Nrf2 and its downstream antioxidants" . SPARSER::COLLECTION)
    ("mRNA and Zn" . SPARSER::COLLECTION)
    ("Nrf2 and its down-stream antioxidant genes" . SPARSER::COLLECTION)
    ("diabetic state" . SPARSER::BIO-STATE)
    ("dt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("STZ-induced diabetic animals STZ" . SPARSER::DRUG)
    ("STZ" . SPARSER::DRUG) ("streptozotocin" . SPARSER::DRUG)
    ("TNF-α, VACM-1 and PAI-1" . SPARSER::COLLECTION)
    ("HNE" . SPARSER::PROTEIN)
    ("inflammatory markers VCAM-1 (Figure  xref A) and PAI-1 (Figure  xref B)"
     . SPARSER::COLLECTION)
    ("the aortic tunica media" . SPARSER::PROTEIN)
    ("mediators, CTGF and TGF-β1, and collagen" . SPARSER::COLLECTION)
    ("TGF-β1, and collagen" . SPARSER::COLLECTION) ("CTGF" . SPARSER::PROTEIN)
    ("aortic tunica media" . SPARSER::PROTEIN)
    ("metal-binding proteins" . SPARSER::PROTEIN) ("MTs" . SPARSER::PROTEIN)
    ("Nrf2 and ARE" . SPARSER::COLLECTION) ("ARE-driven genes" . SPARSER::GENE)
    ("enzymes and antioxidant" . SPARSER::COLLECTION)
    ("lipids and cytokines" . SPARSER::COLLECTION)
    ("cofactor of numerous enzymes and transcription factors"
     . SPARSER::COLLECTION)
    ("cofactor" . SPARSER::MOLECULE) ("nutrient" . SPARSER::MOLECULE)
    ("a pivotal regulator" . SPARSER::REGULATOR)
    ("metallothionein" . SPARSER::PROTEIN)
    ("Tumor necrosis factor-alpha" . SPARSER::PROTEIN)
    ("TGFβ1" . SPARSER::PROTEIN)
    ("Plasminogen activator inhibitor-1" . SPARSER::PROTEIN)
    ("Nuclear factor (erythroid-derived 2)" . SPARSER::PROTEIN)
    ("Connective tissue growth factor" . SPARSER::PROTEIN)
    ("Zn 2+" . SPARSER::MOLECULE) ("Zn2+" . SPARSER::MOLECULE)
    ("Ca(2+)" . SPARSER::CALCIUM-ION) ("Ca2+" . SPARSER::CALCIUM-ION)
    ("VACM-1" . SPARSER::PROTEIN) ("NQO1" . SPARSER::PROTEIN)
    ("VCAM-1 " . SPARSER::PROTEIN) ("F3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("VCAM-1" . SPARSER::PROTEIN)
    ("cell adhesion molecule 1" . SPARSER::PROTEIN)
    ("tumor necrosis factor" . SPARSER::PROTEIN) ("PAI-1" . SPARSER::PROTEIN)
    ("plasminogen activator inhibitor-1" . SPARSER::PROTEIN)
    ("3-NT" . SPARSER::PROTEIN)
    ("connective tissue growth factor" . SPARSER::PROTEIN)
    ("– 3" . SPARSER::PROTEIN) ("glutamate-cysteine ligase" . SPARSER::PROTEIN)
    ("HO-1" . SPARSER::PROTEIN) ("NQO-1" . SPARSER::PROTEIN)
    ("quinone oxidoreductase" . SPARSER::PROTEIN)
    ("NAD(P)H" . SPARSER::MOLECULE)
    ("NF-E2-related factor 2" . SPARSER::PROTEIN)
    ("nuclear factor (erythroid-derived 2)" . SPARSER::PROTEIN)
    ("MICB and PLCE1" . SPARSER::COLLECTION)
    ("a given cohort" . SPARSER::MOLECULE)
    ("PLCE1 and DSS" . SPARSER::COLLECTION)
    ("adult and pediatric DSS" . SPARSER::PROTEIN)
    ("all pediatric and adult patient cohorts" . SPARSER::MOLECULE)
    ("het  " . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("1.07 – 1.25" . SPARSER::PROTEIN)
    ("the pediatric patient cohorts" . SPARSER::MOLECULE)
    ("a distinct cohort" . SPARSER::MOLECULE)
    ("complemented" . SPARSER::PROTEIN)
    ("Umbilical cord blood DNA" . SPARSER::DNA)
    ("proteinuria" . SPARSER::PROTEIN)
    ("pediatric and adult cohorts" . SPARSER::MOLECULE)
    ("the paediatric and adult cohorts" . SPARSER::MOLECULE)
    ("MICB (rs3132468) and PLCE1 (rs3740360)" . SPARSER::COLLECTION)
    ("MICB" . SPARSER::PROTEIN) ("DSS" . SPARSER::PROTEIN)
    ("NS1" . SPARSER::PROTEIN)
    ("non-structural protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("anti-viral" . SPARSER::DRUG) ("epsilon 1" . SPARSER::PROTEIN)
    ("MHC class I polypeptide-related sequence B" . SPARSER::PROTEIN)
    ("PLCE1" . SPARSER::PROTEIN)
    ("the otherwise impenetrable ECM" . SPARSER::PROTEIN)
    ("filaments and tubulin" . SPARSER::COLLECTION)
    ("tubulin and WAVE2" . SPARSER::COLLECTION) ("tubulin" . SPARSER::PROTEIN)
    ("Src and PKC" . SPARSER::COLLECTION) ("fascin" . SPARSER::PROTEIN)
    ("Src and ECM" . SPARSER::COLLECTION) ("ROCK" . SPARSER::PROTEIN-FAMILY)
    ("c-Src, MT1-MMP and cortactin" . SPARSER::COLLECTION)
    ("MT1-MMP and cortactin" . SPARSER::COLLECTION)
    ("phosphoproteins" . SPARSER::PROTEIN) ("GFP-Src" . SPARSER::COLLECTION)
    ("Src and protease" . SPARSER::COLLECTION)
    ("fibrillar collagen" . SPARSER::PROTEIN)
    ("Src and F-actin" . SPARSER::COLLECTION)
    ("eGFP-wt-Src" . SPARSER::COLLECTION)
    ("the 3D fibrillar collagen" . SPARSER::PROTEIN) ("tip" . SPARSER::PROTEIN)
    ("pinch" . SPARSER::PROTEIN) ("Active" . SPARSER::ACTIVE)
    ("GFP-c-Src" . SPARSER::COLLECTION) ("GFP/c-Src" . SPARSER::COLLECTION)
    ("acid-extracted collagen" . SPARSER::PROTEIN)
    ("3D Fibrillar Collagen" . SPARSER::PROTEIN)
    ("Collagen" . SPARSER::PROTEIN) ("phalloidin" . SPARSER::MOLECULE)
    ("soma" . SPARSER::DRUG) ("3D fibrillar collagen" . SPARSER::PROTEIN)
    ("fluorescent gelatin matrix" . SPARSER::PROTEIN-FAMILY)
    ("glutaraldehyde" . SPARSER::MOLECULE) ("glass" . SPARSER::MOLECULE)
    ("wt-Src" . SPARSER::COLLECTION) ("pSrc" . SPARSER::PROTEIN)
    ("GFP-tagged wild type Src protein (GFP-wt-Src, W2E9 clone) and a GFP-tagged mutant"
     . SPARSER::COLLECTION)
    ("GFP-wt-Src" . SPARSER::COLLECTION)
    ("phosphatase and kinase" . SPARSER::COLLECTION) ("IIB" . SPARSER::PROTEIN)
    ("MT1-MMP and form" . SPARSER::COLLECTION) ("proteases" . SPARSER::PROTEIN)
    ("Myosin" . SPARSER::PROTEIN-FAMILY) ("Actin" . SPARSER::PROTEIN)
    ("myosin" . SPARSER::PROTEIN-FAMILY)
    ("metalloproteinase" . SPARSER::PROTEIN)
    ("talin and p130CAS" . SPARSER::COLLECTION) ("talin" . SPARSER::PROTEIN)
    ("biopolymer" . SPARSER::MOLECULE)
    ("3D fibrillar collagen matrices" . SPARSER::PROTEIN-FAMILY)
    ("matrices" . SPARSER::PROTEIN-FAMILY)
    ("GFP-tagged constitutively active Src or wild-type Src"
     . SPARSER::COLLECTION)
    ("the invasion-associated protein kinase Src" . SPARSER::PROTEIN)
    ("Sodium Bicarbonate" . SPARSER::DRUG) ("L 40" . SPARSER::PROTEIN)
    ("P50" . SPARSER::PROTEIN) ("I19" . SPARSER::PROTEIN)
    ("N3" . SPARSER::PROTEIN) ("WAVE2" . SPARSER::PROTEIN)
    ("Rho family" . SPARSER::PROTEIN) ("Cell Membrane" . SPARSER::PROTEIN)
    ("F-actin" . SPARSER::BIO-COMPLEX) ("Src kinase" . SPARSER::PROTEIN)
    ("TGF-beta" . SPARSER::PROTEIN) ("MMP-14" . SPARSER::PROTEIN)
    ("MT1-MMP" . SPARSER::PROTEIN) ("p130CAS" . SPARSER::PROTEIN)
    ("RPTPα" . SPARSER::PROTEIN) ("a 3D" . SPARSER::PROTEIN)
    ("known and conventional chemotherapeutic drugs" . SPARSER::DRUG)
    ("a novel mTOR/PI3K dual inhibitor" . SPARSER::INHIBITOR)
    ("mTOR/PI3K" . SPARSER::COLLECTION)
    ("IGF1R/insulin receptor substrate 1" . SPARSER::COLLECTION)
    ("oxindole" . SPARSER::DRUG) ("PI3-K/mTOR" . SPARSER::COLLECTION)
    ("Akt1 and Akt2" . SPARSER::COLLECTION)
    ("Akt (S473) and mTOR (S2448)" . SPARSER::COLLECTION)
    ("PI3-K or Akt" . SPARSER::COLLECTION)
    ("EGFR, RAF, MEK and ERKs" . SPARSER::COLLECTION)
    ("ERKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p70S6K and S6 ribosomal protein (S6)" . SPARSER::COLLECTION)
    ("RAS/RAF/MEK" . SPARSER::COLLECTION) ("Sepharose" . SPARSER::MOLECULE)
    ("PI3-K and mTOR" . SPARSER::COLLECTION) ("Wortmannin" . SPARSER::MOLECULE)
    ("Val" . SPARSER::AMINO-ACID) ("Fit" . SPARSER::PROTEIN-FAMILY)
    ("PI3-K-delta" . SPARSER::COLLECTION) ("PDB" . SPARSER::MOLECULE)
    ("mTOR and PI3-K" . SPARSER::COLLECTION)
    ("rapamycin and its analogues (also referred as rapalogs)"
     . SPARSER::COLLECTION)
    ("ribosomal protein and 4E-BP1" . SPARSER::COLLECTION)
    ("at least two functionally distinct protein" . SPARSER::PROTEIN)
    ("mTORC1 and mTORC2" . SPARSER::COLLECTION) ("p70S6K" . SPARSER::PROTEIN)
    ("-3-" . SPARSER::PROTEIN) ("/Akt" . SPARSER::COLLECTION)
    ("IRS-1" . SPARSER::PROTEIN)
    ("insulin receptor substrate 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IGF1R" . SPARSER::PROTEIN) ("PI3-Ks" . SPARSER::PROTEIN)
    ("Nonidet P-40" . SPARSER::DRUG) ("p81" . SPARSER::PROTEIN)
    ("Akt2" . SPARSER::PROTEIN) ("MnCl 2" . SPARSER::DRUG)
    ("beta-glycerophosphate" . SPARSER::DRUG) ("6B" . SPARSER::PROTEIN)
    ("id 2" . SPARSER::PROTEIN) ("4E-BP1" . SPARSER::PROTEIN)
    ("TSC2" . SPARSER::PROTEIN) ("p70S6" . SPARSER::PROTEIN)
    ("astrocytes" . SPARSER::PROTEIN) ("plasmin" . SPARSER::PROTEIN)
    ("uPA" . SPARSER::PROTEIN)
    ("a growth suppressive cytokine" . SPARSER::PROTEIN)
    ("active and important" . SPARSER::COLLECTION)
    ("TGF-β and MMP9" . SPARSER::COLLECTION) ("IL-6-AR" . SPARSER::COLLECTION)
    ("macrophages ( xref ) and adipocytes ( xref )" . SPARSER::COLLECTION)
    ("even other cytokines" . SPARSER::PROTEIN)
    ("IL-4 and IL-8" . SPARSER::COLLECTION)
    ("increased metastatic PCa" . SPARSER::PROTEIN)
    ("nestin" . SPARSER::PROTEIN) ("androgen/AR" . SPARSER::COLLECTION)
    ("AR, TGF-β1, and MMP-9" . SPARSER::COLLECTION)
    ("vimentin and Snail" . SPARSER::COLLECTION)
    ("N-cad, vimentin, and Snail" . SPARSER::COLLECTION)
    ("TGF-β1 and MMP-9" . SPARSER::COLLECTION)
    ("C4-2 and CWR22Rv1" . SPARSER::COLLECTION) ("rv" . SPARSER::MOLECULE)
    ("mRNA and ELISA" . SPARSER::COLLECTION)
    ("IL-4 or IL-8" . SPARSER::COLLECTION)
    ("IL-6, IL-4, and IL-8" . SPARSER::COLLECTION)
    ("the best possible candidate molecules" . SPARSER::MOLECULE)
    ("IL-6 and IL-8" . SPARSER::COLLECTION)
    ("CCL5 and IL-6" . SPARSER::COLLECTION)
    ("IL-4, IL-6, and IL-8" . SPARSER::COLLECTION)
    ("chemokines/cytokines" . SPARSER::COLLECTION)
    ("antibodies, CD31 and CD34" . SPARSER::COLLECTION)
    ("antibody, AR-siRNA," . SPARSER::PROTEIN)
    ("antibody, AR-siRNA, or TGF-β1 inhibitor" . SPARSER::COLLECTION)
    ("AR-siRNA" . SPARSER::COLLECTION) ("TGF-β/MMP9" . SPARSER::COLLECTION)
    ("Cadherin-11" . SPARSER::PROTEIN) ("SB431542" . SPARSER::DRUG)
    ("N-cad" . SPARSER::PROTEIN) ("E-cad" . SPARSER::PROTEIN)
    ("IL6" . SPARSER::PROTEIN) ("MMP-9" . SPARSER::PROTEIN)
    ("IL-8" . SPARSER::PROTEIN) ("CCL5" . SPARSER::PROTEIN)
    ("pMD 2" . SPARSER::MOLECULE) ("wt-" . SPARSER::PROTEIN)
    ("a clinically high-risk AML group" . SPARSER::MOLECULE)
    ("Chk1/HDAC" . SPARSER::COLLECTION)
    ("BRCA1, CtIP, and Cdt1" . SPARSER::COLLECTION)
    ("preferentially repairs DNA" . SPARSER::DNA)
    ("MK-8776 and HDACIs" . SPARSER::COLLECTION) ("Vorinostat" . SPARSER::DRUG)
    ("wt or deficient/deleted" . SPARSER::COLLECTION)
    ("Chk1 or Chk1" . SPARSER::COLLECTION) ("AAD" . SPARSER::MOLECULE)
    ("primitive CD34 + /CD38" . SPARSER::COLLECTION)
    ("p53 and its downstream target p21 CIP1 (  xref  )" . SPARSER::COLLECTION)
    ("ATM/ATR" . SPARSER::COLLECTION) ("EdU" . SPARSER::DRUG)
    ("HDACI and MK-8776/HDACI lethality (  xref  right panel, Chk1 wt vs Chk1 wt , 36.5% vs 23.2% or 65.3% vs 49.4% for vorinostat alone or in combination with MK-8776, P = 0.0019 and 0.0003 respectively, and  xref  )"
     . SPARSER::COLLECTION)
    ("wild type Chk1 (Chk1 wt ) or a kinase-dead Chk1 mutant (Chk1 KD , D130A)"
     . SPARSER::COLLECTION)
    ("MK-8776 and HDACI" . SPARSER::COLLECTION)
    ("MK-8776 or HDACIs" . SPARSER::COLLECTION)
    ("cdc2/Cdk1" . SPARSER::COLLECTION) ("two major Chk1" . SPARSER::PROTEIN)
    ("Cdc2/Cdk1" . SPARSER::COLLECTION) ("fmk" . SPARSER::PROTEIN)
    ("Boc" . SPARSER::PROTEIN) ("MK-8776 and vorinostat" . SPARSER::COLLECTION)
    ("FLT-ITD" . SPARSER::COLLECTION) ("FLT" . SPARSER::PROTEIN)
    ("wt-p53" . SPARSER::COLLECTION)
    ("bearing mutant p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("either wt or deficient p53" . SPARSER::COLLECTION)
    ("those bearing defective p53" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HDAC and Chk1" . SPARSER::COLLECTION)
    ("acute myelogenous leukemia (AML)" . SPARSER::PROTEIN)
    ("ATR" . SPARSER::PROTEIN) ("DDR" . SPARSER::PROTEIN)
    ("chaperone" . SPARSER::PROTEIN) ("ITD" . SPARSER::PROTEIN)
    ("/CD123" . SPARSER::COLLECTION) ("/CD38" . SPARSER::COLLECTION)
    ("kinase-dead Chk1 (D130A) or Chk1 shRNA" . SPARSER::COLLECTION)
    ("HDACIs" . SPARSER::MOLECULE) ("CtIP and BRCA1" . SPARSER::COLLECTION)
    ("CtIP" . SPARSER::PROTEIN) ("FLT3-ITD" . SPARSER::COLLECTION)
    ("the novel Chk1 inhibitor MK-8776 and the HDAC inhibitor (HDACI) vorinostat"
     . SPARSER::COLLECTION)
    ("HDACI" . SPARSER::MOLECULE) ("AZD7762" . SPARSER::DRUG)
    ("Nutlin-3a" . SPARSER::DRUG) ("Cdc25A" . SPARSER::PROTEIN)
    ("Cdc2" . SPARSER::PROTEIN) ("MG-132" . SPARSER::DRUG)
    ("Cdc25C" . SPARSER::PROTEIN) ("promyelocytic leukemia" . SPARSER::PROTEIN)
    ("caspase 9" . SPARSER::PROTEIN) ("CIP1" . SPARSER::PROTEIN)
    ("Cdt1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CHEK1" . SPARSER::PROTEIN)
    ("DiOC 6" . SPARSER::DRUG) ("MK8776" . SPARSER::DRUG)
    ("SCH900776" . SPARSER::DRUG) ("p21 CIP1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cdk2" . SPARSER::PROTEIN) ("Cdk1" . SPARSER::PROTEIN)
    ("Cdc25s" . SPARSER::PROTEIN) ("FANCD2" . SPARSER::PROTEIN)
    ("Hsp90" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Histone deacetylase" . SPARSER::PROTEIN) ("H2A" . SPARSER::PROTEIN)
    ("CDT1" . SPARSER::PROTEIN) ("MK-8776" . SPARSER::DRUG)
    ("Chk1" . SPARSER::PROTEIN)
    ("MEK and ERK pharmacologic inhibitors" . SPARSER::INHIBITOR)
    ("RAS/MEK/ERK" . SPARSER::COLLECTION)
    ("HMGA2/IGFBP2/NRAS/MEK/ERK" . SPARSER::COLLECTION)
    ("RAS–HMGA2–IGF2BP2" . SPARSER::COLLECTION)
    ("HMGA2–IGF2BP2" . SPARSER::COLLECTION)
    ("myogenesis—in normal myoblasts" . SPARSER::PROTEIN)
    ("proliferating human myoblasts" . SPARSER::PROTEIN)
    ("NRAS-MEK-ERK-MAPK" . SPARSER::COLLECTION)
    ("MEK and ERK" . SPARSER::COLLECTION) ("luciferase-" . SPARSER::PROTEIN)
    ("HMGA2 or IGF2BP2" . SPARSER::COLLECTION)
    ("IGF2BP2 or HMGA2" . SPARSER::COLLECTION)
    ("GAPDH , MYOD , or HMGA2" . SPARSER::COLLECTION)
    ("MYOD" . SPARSER::PROTEIN)
    ("NRAS , RAN , RHOA , and SP1" . SPARSER::COLLECTION)
    ("RAN" . SPARSER::PROTEIN) ("SP1" . SPARSER::PROTEIN)
    ("NRAS , CCND2 , and RHOA" . SPARSER::COLLECTION)
    ("RBP" . SPARSER::PROTEIN) ("a causative oncogene" . SPARSER::ONCOGENE)
    ("CCND2 and RHOA" . SPARSER::COLLECTION) ("RHOA" . SPARSER::PROTEIN)
    ("mRNAs, tRNAs, rRNAs, and microRNAs" . SPARSER::COLLECTION)
    ("rRNAs" . SPARSER::RNA) ("tRNAs" . SPARSER::PROTEIN)
    ("HMGA2/IGF2BP2" . SPARSER::COLLECTION)
    ("CDC25A, CDC6, CDk1, CyclinA2, and TK1" . SPARSER::COLLECTION)
    ("this highly heterogeneous cancer group" . SPARSER::MOLECULE)
    ("HMGA2 and IGF2BP2" . SPARSER::COLLECTION)
    ("mRNAs and protein" . SPARSER::COLLECTION)
    ("shRNA or HMGA2" . SPARSER::COLLECTION)
    ("hairpins" . SPARSER::PROTEIN-FAMILY)
    ("proliferating myoblasts" . SPARSER::PROTEIN)
    ("IGF2BP1/IMP1" . SPARSER::COLLECTION)
    ("RRM1 and RRM2" . SPARSER::COLLECTION)
    ("hnRNP K-homology" . SPARSER::COLLECTION)
    ("PAX7–FOXO1" . SPARSER::COLLECTION) ("PAX3–FOXO1" . SPARSER::COLLECTION)
    ("immature skeletal muscle" . SPARSER::PROTEIN)
    ("MyoD and Desmin" . SPARSER::COLLECTION) ("Desmin" . SPARSER::PROTEIN)
    ("MyoD" . SPARSER::PROTEIN) ("myogenic" . SPARSER::PROTEIN)
    ("HMGA2–IGFBP2–NRAS" . SPARSER::COLLECTION)
    ("/extracellular signal-regulated kinase" . SPARSER::COLLECTION)
    ("MAP-ERK" . SPARSER::COLLECTION)
    ("myoblasts and ERMS" . SPARSER::COLLECTION)
    ("myoblasts" . SPARSER::PROTEIN) ("CCND2" . SPARSER::PROTEIN)
    ("TK1" . SPARSER::PROTEIN) ("CyclinA2" . SPARSER::PROTEIN)
    ("CDk1" . SPARSER::PROTEIN) ("CDC6" . SPARSER::PROTEIN)
    ("HMGA1" . SPARSER::PROTEIN) ("RNA-Binding Protein" . SPARSER::PROTEIN)
    ("RNA-binding protein" . SPARSER::PROTEIN) ("IMP1" . SPARSER::PROTEIN)
    ("IGF2BP1" . SPARSER::PROTEIN) ("KH1" . SPARSER::PROTEIN)
    ("RRM2" . SPARSER::PROTEIN) ("RRM1" . SPARSER::PROTEIN)
    ("IMP2" . SPARSER::PROTEIN) ("DNA-binding protein" . SPARSER::PROTEIN)
    ("High mobility group AT-hook 2" . SPARSER::PROTEIN)
    ("NF1" . SPARSER::PROTEIN) ("PAX7" . SPARSER::PROTEIN)
    ("PAX3" . SPARSER::PROTEIN) ("IGFBP2" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IGF2BP2" . SPARSER::PROTEIN)
    ("insulin–like growth factor" . SPARSER::PROTEIN)
    ("HMGA2" . SPARSER::PROTEIN)
    ("high mobility group AT-hook 2" . SPARSER::PROTEIN)
    ("cytarabine and vidarabine" . SPARSER::COLLECTION)
    ("vidarabine" . SPARSER::DRUG)
    ("bone marrow microenvironmental cues" . SPARSER::PROTEIN-FAMILY)
    ("cues" . SPARSER::PROTEIN-FAMILY)
    ("TMZ and other methylating agents" . SPARSER::COLLECTION)
    ("fotemustine, mafosfamide, and cisplatin" . SPARSER::COLLECTION)
    ("mafosfamide" . SPARSER::DRUG) ("fotemustine" . SPARSER::DRUG)
    ("only 2 cytokines" . SPARSER::PROTEIN) ("alkylator" . SPARSER::MOLECULE)
    ("-methylguanine" . SPARSER::MOLECULE) ("cFLIP" . SPARSER::PROTEIN)
    ("complex (DISC)" . SPARSER::BIO-COMPLEX) ("DISC" . SPARSER::BIO-COMPLEX)
    ("c-FLI" . SPARSER::COLLECTION) ("forkhead" . SPARSER::PROTEIN)
    ("Bad" . SPARSER::PROTEIN)
    ("agonistic anti-FAS in the absence or presence of isotype control or neutralizing anti-FAS antibodies"
     . SPARSER::COLLECTION)
    ("agonistic anti-FAS" . SPARSER::ANTIBODY)
    ("the agonistic anti-FAS antibodies" . SPARSER::ANTIBODY)
    ("both c-Flip isoforms" . SPARSER::ISOFORM)
    ("caspase-8 and caspase-9" . SPARSER::COLLECTION)
    ("TMZ or control" . SPARSER::COLLECTION)
    ("mitochondrial DNA-strand" . SPARSER::DNA)
    ("a mitochondrial-specific CoII-ATPase 6 DNA" . SPARSER::DNA)
    ("mitochondrial-specific DNA-strand" . SPARSER::DNA)
    ("CoII-ATPase 6" . SPARSER::COLLECTION) ("DNA-strand" . SPARSER::DNA)
    ("alkaline" . SPARSER::PROTEIN) ("essential proteins" . SPARSER::PROTEIN)
    ("TMZ and 6BG/TMZ exposure" . SPARSER::COLLECTION)
    ("p21 and FAS" . SPARSER::COLLECTION) ("max" . SPARSER::PROTEIN)
    ("MTD" . SPARSER::PROTEIN) ("DNA, RNA, and protein" . SPARSER::COLLECTION)
    ("G-CSF and SCF" . SPARSER::COLLECTION) ("SCF" . SPARSER::PROTEIN)
    ("cytosine" . SPARSER::NUCLEOBASE)
    ("methylguanine and N 3" . SPARSER::COLLECTION) ("MeG" . SPARSER::DRUG)
    ("methylguanine" . SPARSER::MOLECULE) ("MTIC" . SPARSER::DRUG)
    ("carboxamide" . SPARSER::MOLECULE)
    ("agonistic anti-FAS antibodies" . SPARSER::ANTIBODY)
    ("FAS/CD95/APO1" . SPARSER::COLLECTION) ("FAS" . SPARSER::PROTEIN)
    ("methylguanine-DNA methyltransferase (MGMT)" . SPARSER::PROTEIN)
    ("MGMT" . SPARSER::PROTEIN)
    ("caspase-9 and caspase-3" . SPARSER::COLLECTION)
    ("O 6 -benzylguanine (6BG) and TMZ" . SPARSER::COLLECTION)
    ("BG" . SPARSER::PROTEIN) ("TMZ" . SPARSER::DRUG)
    ("temozolomide" . SPARSER::DRUG) ("alkylating agent" . SPARSER::MOLECULE)
    ("PINK1" . SPARSER::PROTEIN) ("procaspase-8" . SPARSER::PROTEIN)
    ("Caspases 3" . SPARSER::PROTEIN) ("H2A-X" . SPARSER::PROTEIN)
    ("benzyl group" . SPARSER::MOLECULE) ("ATPase 6" . SPARSER::PROTEIN)
    ("Sodium hydroxide" . SPARSER::MOLECULE) ("Caspase-9" . SPARSER::PROTEIN)
    ("Caspase-8" . SPARSER::PROTEIN) ("H2AX" . SPARSER::PROTEIN)
    ("Waf1/Cip1" . SPARSER::PROTEIN) ("CD64" . SPARSER::PROTEIN)
    ("CD71" . SPARSER::PROTEIN) ("CD38" . SPARSER::PROTEIN)
    ("PC5" . SPARSER::PROTEIN) ("c-FLIP" . SPARSER::PROTEIN)
    ("G-CSF" . SPARSER::PROTEIN) ("O6" . SPARSER::PROTEIN)
    ("N 3" . SPARSER::PROTEIN) ("O 6 benzylguanine" . SPARSER::DRUG)
    ("caspase-8" . SPARSER::PROTEIN) ("APO1" . SPARSER::PROTEIN)
    ("methylguanine-DNA methyltransferase" . SPARSER::PROTEIN)
    ("O 6" . SPARSER::PROTEIN) ("DNA repair protein" . SPARSER::PROTEIN)
    ("γ-H2AX" . SPARSER::PROTEIN) ("O 6 -benzylguanine" . SPARSER::DRUG)
    ("additional associated variants" . SPARSER::VARIANT)
    ("TCF12 and MAFK" . SPARSER::COLLECTION) ("MAFK" . SPARSER::PROTEIN)
    ("NRSF and LRF" . SPARSER::COLLECTION) ("LRF" . SPARSER::PROTEIN)
    ("NRSF" . SPARSER::PROTEIN) ("HEN1, Zfx and E2A" . SPARSER::COLLECTION)
    ("Zfx" . SPARSER::PROTEIN) ("Mrg" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the precise functional variants" . SPARSER::VARIANT)
    ("candidate causative variants" . SPARSER::VARIANT)
    ("2–4 and TERT" . SPARSER::COLLECTION)
    ("housekeeping genes β-actin and 18S RNA" . SPARSER::COLLECTION)
    ("TERT and CLPTM1L" . SPARSER::COLLECTION) ("HD" . SPARSER::PROTEIN)
    ("SNPs correlated atr" . SPARSER::PROTEIN) ("atr" . SPARSER::PROTEIN)
    ("independently associated variants" . SPARSER::VARIANT)
    ("hg" . SPARSER::MOLECULE) ("byr 2" . SPARSER::PROTEIN)
    ("of 45" . SPARSER::PROTEIN)
    ("aryl hydrocarbon receptor" . SPARSER::PROTEIN)
    ("TCF12" . SPARSER::PROTEIN) ("EBF1" . SPARSER::PROTEIN)
    ("RBP-Jkappa" . SPARSER::PROTEIN) ("RNA polymerase II" . SPARSER::PROTEIN)
    ("Mtf1" . SPARSER::PROTEIN) ("HEN1" . SPARSER::PROTEIN)
    ("Chr5" . SPARSER::PROTEIN)
    ("ribonucleoprotein complex" . SPARSER::BIO-COMPLEX)
    ("this aggressive form" . SPARSER::FORM)
    ("the immediately neighboring genes or all genes" . SPARSER::COLLECTION)
    ("the immediately neighboring genes" . SPARSER::GENE)
    ("95% CI = 1.09–1.24" . SPARSER::PROTEIN) ("Traits" . SPARSER::PROTEIN)
    ("obesity-associated gene FTO" . SPARSER::PROTEIN)
    ("LGR6 and several other genes" . SPARSER::COLLECTION)
    ("UBE2T and PTPN7" . SPARSER::COLLECTION)
    ("TP53 and TP73" . SPARSER::COLLECTION)
    ("PIK3C2B and LRRN2" . SPARSER::COLLECTION) ("tRNA" . SPARSER::PROTEIN)
    ("at least one first-degree relative, and risk alleles" . SPARSER::ALLELE)
    ("het" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TERT-CLPTM1L" . SPARSER::COLLECTION) ("H3K27ac" . SPARSER::MOLECULE)
    ("H3K4" . SPARSER::PROTEIN) ("K14" . SPARSER::PROTEIN)
    ("TOX3" . SPARSER::PROTEIN) ("p11" . SPARSER::PROTEIN)
    ("ESR1" . SPARSER::PROTEIN) ("p36" . SPARSER::PROTEIN)
    ("OSR1" . SPARSER::PROTEIN) ("PTPN7" . SPARSER::PROTEIN)
    ("UBE2T" . SPARSER::PROTEIN) ("LRRN2" . SPARSER::PROTEIN)
    ("PIK3C2B" . SPARSER::PROTEIN) ("TP73" . SPARSER::PROTEIN)
    ("MERIT40" . SPARSER::PROTEIN) ("BABAM1" . SPARSER::PROTEIN)
    ("LGR6" . SPARSER::PROTEIN)
    ("core histones and other histone-associated proteins"
     . SPARSER::COLLECTION)
    ("histone deacetylase, core histones and other histone-associated proteins"
     . SPARSER::COLLECTION)
    ("other histone-associated proteins" . SPARSER::PROTEIN)
    ("DAXX" . SPARSER::PROTEIN)
    ("HOXB13 , PRAC and SPOP" . SPARSER::COLLECTION) ("lincRNA" . SPARSER::RNA)
    ("HOXB13 , PRAC , SPOP and ZNF652" . SPARSER::COLLECTION)
    ("PRAC" . SPARSER::PROTEIN) ("the longest isoform" . SPARSER::ISOFORM)
    ("the last intron" . SPARSER::PROTEIN)
    ("only four other variants" . SPARSER::VARIANT)
    ("causative variants" . SPARSER::VARIANT)
    ("the associated genes" . SPARSER::GENE)
    ("plausible causative genes" . SPARSER::GENE)
    ("six principal components" . SPARSER::COMPONENT)
    ("Cohort" . SPARSER::MOLECULE)
    ("death-associated protein" . SPARSER::PROTEIN)
    ("ZNF652" . SPARSER::PROTEIN) ("HOXB13" . SPARSER::PROTEIN)
    ("RAD51" . SPARSER::PROTEIN) ("FOXA2" . SPARSER::PROTEIN)
    ("matrix metalloproteinase" . SPARSER::PROTEIN) ("MMP7" . SPARSER::PROTEIN)
    ("MDM4" . SPARSER::PROTEIN) ("KLK3" . SPARSER::PROTEIN)
    ("prostate-specific antigen" . SPARSER::PROTEIN)
    ("BPC3" . SPARSER::PROTEIN) ("top 1" . SPARSER::PROTEIN)
    ("WNT/β-catenin" . SPARSER::COLLECTION)
    ("MYC and WNT" . SPARSER::COLLECTION)
    ("canonical telomerase activity" . SPARSER::PROTEIN)
    ("a physical map" . SPARSER::PROTEIN)
    ("a premature stop codon 16 amino acids" . SPARSER::AMINO-ACID)
    ("Cancer risk-associated alleles" . SPARSER::ALLELE)
    ("PRE" . SPARSER::PROTEIN)
    ("the risk-associated variants" . SPARSER::VARIANT)
    ("PREs" . SPARSER::PROTEIN) ("MCF7" . SPARSER::PROTEIN)
    ("mature luminal fractions" . SPARSER::COMPONENT)
    ("formaldehyde" . SPARSER::MOLECULE)
    ("a single causative variant" . SPARSER::VARIANT)
    ("Peak 2 and weaker" . SPARSER::COLLECTION)
    ("serous LMP" . SPARSER::PROTEIN) ("Modifiers" . SPARSER::MOLECULE)
    ("the strongest candidate causative variants" . SPARSER::VARIANT)
    ("potentially-causal variants" . SPARSER::VARIANT)
    ("chr5" . SPARSER::PROTEIN) ("CD49f" . SPARSER::PROTEIN)
    ("CD235a" . SPARSER::PROTEIN) ("CD45" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SLC6A18" . SPARSER::PROTEIN) ("OBFC1" . SPARSER::PROTEIN)
    ("INS1" . SPARSER::PROTEIN) ("CLPTM1L" . SPARSER::PROTEIN)
    ("Peak 2" . SPARSER::PROTEIN) ("Peak 1" . SPARSER::PROTEIN)
    ("MACH" . SPARSER::PROTEIN)
    ("serous associated risk alleles" . SPARSER::ALLELE)
    ("the functionally relevant gene" . SPARSER::GENE)
    ("a strong candidate gene target" . SPARSER::TARGET-PROTEIN)
    ("DUSP14, HNF1B, TBC1D3, TBC1D3F, MRPL45, SOCS7 and ARHGAP23"
     . SPARSER::COLLECTION)
    ("MRPL45, GRP179, SOCS7, and ARHGAP23" . SPARSER::COLLECTION)
    ("GRP" . SPARSER::PROTEIN) ("DUSP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ACACA" . SPARSER::PROTEIN) ("ESRRA" . SPARSER::PROTEIN)
    ("nebulin" . SPARSER::PROTEIN) ("Nebulette" . SPARSER::PROTEIN)
    ("NEBL-MLL" . SPARSER::COLLECTION)
    ("NEBL and MLLT10" . SPARSER::COLLECTION)
    ("NEBL, C10orf114, C10orf140 and MLLT10" . SPARSER::COLLECTION)
    ("NEBL and C10orf114" . SPARSER::COLLECTION) ("orf" . SPARSER::PROTEIN)
    ("introns" . SPARSER::PROTEIN) ("a synonymous variant" . SPARSER::VARIANT)
    ("NEBL, C10Orf113, C10Orf114, C10Orf140, MLLT10 and DNAJC1"
     . SPARSER::COLLECTION)
    ("Orf" . SPARSER::PROTEIN) ("NEBL" . SPARSER::PROTEIN)
    ("the last three genes" . SPARSER::GENE)
    ("IMPA1, ZFAND1, CHMP4C and SNX16" . SPARSER::COLLECTION)
    ("CHMP4C and SNX16" . SPARSER::COLLECTION)
    ("CHMP4C (P=0.001) and SNX16 (P=0.001)" . SPARSER::COLLECTION)
    ("ZFAND1 (P=0.003), CHMP4C (P=0.001) and SNX16 (P=0.001)"
     . SPARSER::COLLECTION)
    ("FABP5, PMP2, FABP4, FABP12, IMPA1, SLC10A5, ZFAND1, CHMP4C and SNX16"
     . SPARSER::COLLECTION)
    ("intron" . SPARSER::PROTEIN) ("ALIX" . SPARSER::PROTEIN)
    ("the deleted allele" . SPARSER::ALLELE)
    ("the next four nucleotides" . SPARSER::NUCLEOTIDE)
    ("exon-intron" . SPARSER::PROTEIN-PAIR)
    ("variants, or variants" . SPARSER::COLLECTION)
    ("EAF" . SPARSER::PROTEIN-FAMILY) ("p22" . SPARSER::PROTEIN)
    ("piwi-interacting RNAs" . SPARSER::RNA)
    ("micro-RNAs" . SPARSER::MICRO-RNA) ("ARHGAP23" . SPARSER::PROTEIN)
    ("SOCS7" . SPARSER::PROTEIN) ("MRPL45" . SPARSER::PROTEIN)
    ("TBC1D3" . SPARSER::PROTEIN) ("TBC1D3F" . SPARSER::PROTEIN)
    ("GBP1" . SPARSER::PROTEIN) ("TADA2L" . SPARSER::PROTEIN)
    ("HNF1B" . SPARSER::PROTEIN) ("chromosome 17" . SPARSER::PROTEIN)
    ("C11" . SPARSER::PROTEIN) ("cardiac muscle" . SPARSER::PROTEIN)
    ("Drosophila)" . SPARSER::PROTEIN) ("c10orf140" . SPARSER::PROTEIN)
    ("c10orf114" . SPARSER::PROTEIN) ("MLLT10" . SPARSER::PROTEIN)
    ("SNX16" . SPARSER::PROTEIN) ("ZFAND1" . SPARSER::PROTEIN)
    ("SLC10A5" . SPARSER::PROTEIN) ("IMPA1" . SPARSER::PROTEIN)
    ("FABP12" . SPARSER::PROTEIN) ("FABP4" . SPARSER::PROTEIN)
    ("PMP2" . SPARSER::PROTEIN) ("FABP5" . SPARSER::PROTEIN)
    ("CHMP4" . SPARSER::PROTEIN) ("SOX9" . SPARSER::PROTEIN)
    ("CHMP4C" . SPARSER::PROTEIN) ("SNAP" . SPARSER::PROTEIN)
    ("TET2 , 8q24 and DNAJC1" . SPARSER::COLLECTION)
    ("TCF7L2 and FTO" . SPARSER::COLLECTION)
    ("Dysfunctional ARHGEF5" . SPARSER::PROTEIN) ("PTHLH" . SPARSER::PROTEIN)
    ("cofilin" . SPARSER::PROTEIN)
    ("plausible candidate genes" . SPARSER::GENE)
    ("ZNF45, ZNF222 and ZNF283" . SPARSER::COLLECTION)
    ("PTPN22 ( P = 0.0055) and DCLRE1B ( P = 0.0067)" . SPARSER::COLLECTION)
    ("ZNF283 ( P = 0.05) and ZNF222 ( P = 0.01)" . SPARSER::COLLECTION)
    ("ZNF45 ( P = 0.0077), ZNF283 ( P = 0.05) and ZNF222 ( P = 0.01)"
     . SPARSER::COLLECTION)
    ("both ZNF404 ( P = 1.2 × 10 −6 in tumors) and ZNF283 ( P = 0.0089)"
     . SPARSER::COLLECTION)
    ("CTSW" . SPARSER::PROTEIN) ("MYC" . SPARSER::PROTEIN)
    ("genes and variants" . SPARSER::COLLECTION) ("TGF" . SPARSER::DRUG)
    ("delC" . SPARSER::PROTEIN) ("variant or variants" . SPARSER::COLLECTION)
    ("Lys" . SPARSER::AMINO-ACID)
    ("seven principal components" . SPARSER::COMPONENT)
    ("BRCA1 and BRCA2" . SPARSER::COLLECTION)
    ("ATM , CHEK2 and PALB2" . SPARSER::COLLECTION)
    ("secreted growth factor" . SPARSER::PROTEIN) ("NTN4" . SPARSER::PROTEIN)
    ("KREMEN1" . SPARSER::PROTEIN) ("SSBP4" . SPARSER::PROTEIN)
    ("PAX9" . SPARSER::PROTEIN) ("MKL1" . SPARSER::PROTEIN)
    ("ARHGEF5" . SPARSER::PROTEIN) ("p25" . SPARSER::PROTEIN)
    ("FOXQ1" . SPARSER::PROTEIN) ("PTH1R" . SPARSER::PROTEIN)
    ("CFL1" . SPARSER::PROTEIN) ("MUS81" . SPARSER::PROTEIN)
    ("PTPN22" . SPARSER::PROTEIN) ("ZNF222" . SPARSER::PROTEIN)
    ("ZNF45" . SPARSER::PROTEIN) ("ZNF283" . SPARSER::PROTEIN)
    ("ZNF404" . SPARSER::PROTEIN) ("PEX14" . SPARSER::PROTEIN)
    ("type 2" . SPARSER::PROTEIN) ("SNM1B" . SPARSER::PROTEIN)
    ("DCLRE1B" . SPARSER::PROTEIN) ("RAD51L1" . SPARSER::PROTEIN)
    ("RAD51B" . SPARSER::PROTEIN) ("CASP8" . SPARSER::PROTEIN)
    ("PALB2" . SPARSER::PROTEIN) ("CHEK2" . SPARSER::PROTEIN)
    ("BRCA2" . SPARSER::PROTEIN)
    ("GLUD1 and transaminases" . SPARSER::COLLECTION)
    ("two lentiviral shRNAs" . SPARSER::RNA)
    ("N-acetylcysteine (NAC)" . SPARSER::DRUG)
    ("a cell permeable GSH analog" . SPARSER::ANALOG)
    ("OAA- or malate" . SPARSER::COLLECTION) ("OAA-" . SPARSER::MOLECULE)
    ("Asp and αKG" . SPARSER::COLLECTION)
    ("central metabolites" . SPARSER::PROTEIN)
    ("MDH1 or ME1" . SPARSER::COLLECTION)
    ("uniformly 13 C-labeled Asp" . SPARSER::AMINO-ACID)
    ("G6PD or isocitrate" . SPARSER::COLLECTION)
    ("/NADPH" . SPARSER::COLLECTION) ("malate and OAA" . SPARSER::COLLECTION)
    ("ME" . SPARSER::PROTEIN) ("ROS and OAA" . SPARSER::COLLECTION)
    ("cellular redox" . SPARSER::PROTEIN) ("pentose" . SPARSER::MOLECULE)
    ("aspartate (Asp) and αKG" . SPARSER::COLLECTION)
    ("uniformly 13 C-labeled Gln" . SPARSER::AMINO-ACID)
    ("-Gln" . SPARSER::COLLECTION) ("tracer" . SPARSER::MOLECULE)
    ("aspartate, alanine and phosphoserine" . SPARSER::COLLECTION)
    ("phosphoserine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("EGCG" . SPARSER::DRUG) ("an essential metabolite" . SPARSER::MOLECULE)
    ("glutamate dehydrogenase (GLUD1) or transaminases ( xref )"
     . SPARSER::COLLECTION)
    ("GLS" . SPARSER::PROTEIN) ("glutaminase" . SPARSER::PROTEIN)
    ("nonessential amino acid (NEAA) and hexosamine biosynthesis xref"
     . SPARSER::COLLECTION)
    ("nonessential amino acid (NEAA)" . SPARSER::AMINO-ACID)
    ("hexosamine" . SPARSER::MOLECULE) ("NEAA" . SPARSER::PROTEIN)
    ("Kras" . SPARSER::PROTEIN) ("NADPH" . SPARSER::PROTEIN)
    ("pyruvate" . SPARSER::PROTEIN) ("malate" . SPARSER::MOLECULE)
    ("transaminase" . SPARSER::PROTEIN) ("OAA" . SPARSER::MOLECULE)
    ("oxaloacetate" . SPARSER::MOLECULE) ("PDAC" . SPARSER::MOLECULE)
    ("Gln" . SPARSER::AMINO-ACID) ("MS-MS" . SPARSER::PROTEIN)
    ("NADP+" . SPARSER::MOLECULE) ("1-1" . SPARSER::PROTEIN)
    ("M 2" . SPARSER::MOLECULE) ("NBP1" . SPARSER::PROTEIN)
    ("N-acetylcysteine" . SPARSER::DRUG) ("GOT2" . SPARSER::PROTEIN)
    ("MDH1" . SPARSER::PROTEIN) ("G6PD" . SPARSER::PROTEIN)
    ("oxidized glutathione" . SPARSER::DRUG)
    ("epigallocatechin gallate" . SPARSER::DRUG) ("NADP +" . SPARSER::MOLECULE)
    ("GLUD1" . SPARSER::PROTEIN)
    ("proteins, UNC119a and UNC119b" . SPARSER::COLLECTION)
    ("Rab11a and Rab11b" . SPARSER::COLLECTION)
    ("possibly other proteins" . SPARSER::PROTEIN)
    ("Fyn and Rab11a" . SPARSER::COLLECTION)
    ("a multi-functional protein" . SPARSER::PROTEIN)
    ("Fyn and form" . SPARSER::COLLECTION)
    ("the N-terminal 60 amino acid of human UNC119a" . SPARSER::PROTEIN)
    ("Fyn, UNC119a and Rab11a" . SPARSER::COLLECTION)
    ("Fyn-UNC119a" . SPARSER::COLLECTION) ("GFP-Rab11a" . SPARSER::COLLECTION)
    ("Fyn and UNC119a" . SPARSER::COLLECTION)
    ("the respective kinases" . SPARSER::KINASE)
    ("UNC119a and Fyn" . SPARSER::COLLECTION)
    ("Rab11a and Rba11b" . SPARSER::COLLECTION)
    ("Rab11a-UNC119a" . SPARSER::COLLECTION)
    ("Rab4-UNC119a" . SPARSER::COLLECTION)
    ("UNC119a and Rab4" . SPARSER::COLLECTION)
    ("UNC119a and Rab11a" . SPARSER::COLLECTION)
    ("Rab11a and UNC119a" . SPARSER::COLLECTION)
    ("Rab11 and UNC119a" . SPARSER::COLLECTION)
    ("microtubules" . SPARSER::PROTEIN) ("UNC119a" . SPARSER::PROTEIN)
    ("GFP-UNC119a" . SPARSER::PROTEIN-PAIR)
    ("gap" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("paraformaldehyde" . SPARSER::DRUG)
    ("the membrane vesicle-associated protein" . SPARSER::PROTEIN)
    ("htRPE-1" . SPARSER::COLLECTION) ("glutathione" . SPARSER::DRUG)
    ("Pre" . SPARSER::PROTEIN) ("punctate" . SPARSER::PROTEIN)
    ("monoclonal γ-tubulin-antibody" . SPARSER::COLLECTION)
    ("γ-tubulin-antibody" . SPARSER::COLLECTION)
    ("centrosomes" . SPARSER::PROTEIN) ("methanol" . SPARSER::MOLECULE)
    ("Lck" . SPARSER::PROTEIN) ("Lyn" . SPARSER::PROTEIN)
    ("fish" . SPARSER::PROTEIN) ("refs" . SPARSER::PROTEIN)
    ("Fyn" . SPARSER::PROTEIN) ("c-Yes" . SPARSER::PROTEIN)
    ("C-14" . SPARSER::PROTEIN) ("anti-ERK" . SPARSER::PROTEIN)
    ("Oligo-2" . SPARSER::PROTEIN) ("Full-length" . SPARSER::PROTEIN)
    ("Rab11b" . SPARSER::PROTEIN) ("PP2" . SPARSER::DRUG)
    ("Rab4" . SPARSER::PROTEIN) ("Rab11a" . SPARSER::PROTEIN)
    ("α-tubulin" . SPARSER::PROTEIN) ("p230" . SPARSER::PROTEIN)
    ("γ-tubulin" . SPARSER::PROTEIN) ("UNC119b" . SPARSER::PROTEIN)
    ("HRG4" . SPARSER::PROTEIN) ("unc119" . SPARSER::PROTEIN)
    ("UNC119" . SPARSER::PROTEIN) ("Rab11" . SPARSER::PROTEIN)
    ("phosphoenolpyruvate" . SPARSER::MOLECULE) ("tau" . SPARSER::PROTEIN)
    ("CDR" . SPARSER::PROTEIN) ("Larger cohorts" . SPARSER::MOLECULE)
    ("previously unknown genetic variants" . SPARSER::VARIANT)
    ("LIPC" . SPARSER::PROTEIN) ("NCS" . SPARSER::PROTEIN)
    ("CYCS" . SPARSER::PROTEIN) ("complex (BACE)" . SPARSER::BIO-COMPLEX)
    ("amyloid precursor protein (APP)" . SPARSER::PROTEIN)
    ("genome-wide genetic variants" . SPARSER::VARIANT)
    ("ROS/MAP" . SPARSER::COLLECTION) ("MAP" . SPARSER::PROTEIN)
    ("amyloid" . SPARSER::PROTEIN) ("mannosidase" . SPARSER::PROTEIN)
    ("whose minor alleles" . SPARSER::ALLELE) ("PCK1" . SPARSER::PROTEIN)
    ("ZNF224" . SPARSER::PROTEIN)
    ("zinc finger protein 224" . SPARSER::PROTEIN)
    ("PPP3R1" . SPARSER::PROTEIN) ("OSBPL7" . SPARSER::PROTEIN)
    ("ELMO1" . SPARSER::PROTEIN) ("CACNA1G" . SPARSER::PROTEIN)
    ("CAMK4" . SPARSER::PROTEIN) ("VAT1" . SPARSER::PROTEIN)
    ("GABRG3" . SPARSER::PROTEIN) ("EXOC4" . SPARSER::PROTEIN)
    ("GJB5" . SPARSER::PROTEIN) ("beta 5" . SPARSER::PROTEIN)
    ("gap junction protein" . SPARSER::PROTEIN) ("PVRL2" . SPARSER::PROTEIN)
    ("spondin 1" . SPARSER::PROTEIN) ("MAN2A1" . SPARSER::PROTEIN)
    ("a 15" . SPARSER::PROTEIN)
    ("amyloid precursor protein" . SPARSER::PROTEIN)
    ("SPON1" . SPARSER::PROTEIN)
    ("not realistic given previously reported candidate gene and GWAS findings"
     . SPARSER::COLLECTION)
    ("realistic given previously reported candidate gene" . SPARSER::GENE)
    ("additional ECG-trait" . SPARSER::DRUG) ("ECG-trait" . SPARSER::DRUG)
    ("SCN10A/SCN5A" . SPARSER::COLLECTION)
    ("KCNH2 and SCN5A" . SPARSER::COLLECTION) ("SCN" . SPARSER::MOLECULE)
    ("peptidase" . SPARSER::PROTEIN) ("ST" . SPARSER::PROTEIN)
    ("Allele" . SPARSER::ALLELE)
    ("electrocardiographic (ECG) traits" . SPARSER::PROTEIN)
    ("Variants" . SPARSER::VARIANT)
    ("the cardiac sodium channel gene SCN5A" . SPARSER::PROTEIN)
    ("congenital long QT syndrome genes" . SPARSER::GENE)
    ("fine-mapping" . SPARSER::PROTEIN) ("traits" . SPARSER::PROTEIN)
    ("PR and QT" . SPARSER::COLLECTION) ("PR and QRS" . SPARSER::COLLECTION)
    ("ECG" . SPARSER::DRUG) ("voltage-gated" . SPARSER::PROTEIN)
    ("GTPase-activating protein" . SPARSER::PROTEIN)
    ("DAB2IP" . SPARSER::PROTEIN) ("KCNH2" . SPARSER::PROTEIN)
    ("SERPINI1" . SPARSER::PROTEIN) ("SCN5A" . SPARSER::PROTEIN)
    ("sodium channel" . SPARSER::PROTEIN) ("voltage gated" . SPARSER::PROTEIN)
    ("SCN10A" . SPARSER::PROTEIN) ("NOS1AP" . SPARSER::PROTEIN)
    ("a promising chemotherapeutic drug" . SPARSER::DRUG)
    ("Bcl-2 and proapoptotic proteins" . SPARSER::COLLECTION)
    ("alantolactone and parthenolide" . SPARSER::COLLECTION)
    ("STAT3 and Bcl-2" . SPARSER::COLLECTION)
    ("pTyr 705 STAT3 and its downstream target protein Bcl-2"
     . SPARSER::COLLECTION)
    ("parthenolide and helenalin" . SPARSER::COLLECTION)
    ("helenalin" . SPARSER::DRUG) ("parthenolide" . SPARSER::MOLECULE)
    ("antioxidants" . SPARSER::DRUG)
    ("32 kDa and 17 kDa" . SPARSER::COLLECTION)
    ("Bcl-2 and cyclin D1" . SPARSER::COLLECTION)
    ("acetonitrile (A) and water (B)" . SPARSER::COLLECTION)
    ("acetonitrile" . SPARSER::MOLECULE) ("synthetase" . SPARSER::PROTEIN)
    ("GR" . SPARSER::PROTEIN) ("PEG-catalase" . SPARSER::COLLECTION)
    ("GSH and GSSG" . SPARSER::COLLECTION)
    ("cellular thiols" . SPARSER::MOLECULE) ("thiols" . SPARSER::MOLECULE)
    ("GSSG" . SPARSER::DRUG)
    ("MMP in HepG2 cells using Rhodamine 123 and flow cytometry"
     . SPARSER::COLLECTION)
    ("Rhodamine" . SPARSER::PROTEIN) ("annexin V or PI" . SPARSER::COLLECTION)
    ("PS" . SPARSER::PROTEIN) ("calcein" . SPARSER::MOLECULE)
    ("proteins, and caspase-3" . SPARSER::COLLECTION)
    ("Sesquiterpene" . SPARSER::MOLECULE)
    ("transducers and activators" . SPARSER::COLLECTION)
    ("transducers" . SPARSER::PROTEIN)
    ("NF- κ B and STAT3" . SPARSER::COLLECTION)
    ("the existing conventional chemotherapeutic drugs" . SPARSER::DRUG)
    ("NAC" . SPARSER::PROTEIN) ("thiol" . SPARSER::MOLECULE)
    ("Bax/Bcl-2" . SPARSER::COLLECTION) ("GSH" . SPARSER::DRUG)
    ("alantolactone" . SPARSER::DRUG) ("sesquiterpene" . SPARSER::MOLECULE)
    ("Alantolactone" . SPARSER::DRUG) ("PEG-SOD" . SPARSER::DRUG)
    ("β -lactone" . SPARSER::MOLECULE)
    ("Glutathione Reductase" . SPARSER::PROTEIN) ("DCFH-DA" . SPARSER::DRUG)
    ("glutathione reductase" . SPARSER::PROTEIN)
    ("β -actin" . SPARSER::PROTEIN) ("Dimethyl Sulfoxide" . SPARSER::MOLECULE)
    ("NF- κ B" . SPARSER::PROTEIN) ("N-acetyl-L-cysteine" . SPARSER::MOLECULE)
    ("U87" . SPARSER::PROTEIN)
    ("Signal transducer and activator of transcription 3" . SPARSER::PROTEIN)
    ("pro-inflammatory cytokines and chemokines" . SPARSER::COLLECTION)
    ("ROS" . SPARSER::PROTEIN) ("APE1/Ref-1" . SPARSER::COLLECTION)
    ("redox" . SPARSER::PROTEIN) ("a robust PTEN" . SPARSER::PROTEIN)
    ("hyperglycemia" . SPARSER::PROTEIN)
    ("exogenous peroxynitrite" . SPARSER::MOLECULE)
    ("peroxynitrite" . SPARSER::MOLECULE) ("medial SMC" . SPARSER::PROTEIN)
    ("catalase" . SPARSER::PROTEIN) ("PCI" . SPARSER::PROTEIN)
    ("iso-antibody" . SPARSER::PROTEIN-PAIR) ("DAPI" . SPARSER::DRUG)
    ("lipid-" . SPARSER::LIPID)
    ("a prominent tumor suppressor protein and important regulator"
     . SPARSER::COLLECTION)
    ("a prominent tumor suppressor protein" . SPARSER::PROTEIN)
    ("phosphatase and tensin" . SPARSER::COLLECTION)
    ("oxygen" . SPARSER::MOLECULE)
    ("PTEN and a constitutive active Akt mutant" . SPARSER::COLLECTION)
    ("/protein kinase B" . SPARSER::COLLECTION) ("NF-kB" . SPARSER::PROTEIN)
    ("Egr-1" . SPARSER::PROTEIN) ("Ref-1" . SPARSER::PROTEIN)
    ("APE1" . SPARSER::PROTEIN) ("H2O2" . SPARSER::DRUG)
    ("Stat 2" . SPARSER::PROTEIN) ("SO 4" . SPARSER::PROTEIN)
    ("Cdk4" . SPARSER::PROTEIN) ("diC8" . SPARSER::DRUG)
    ("Ly294002" . SPARSER::MOLECULE) ("E 7" . SPARSER::PROTEIN-FAMILY)
    ("tumor suppressor protein" . SPARSER::PROTEIN)
    ("PI3-K" . SPARSER::PROTEIN)
    ("larger EPS-urine cohorts" . SPARSER::MOLECULE)
    ("almost 900 proteins" . SPARSER::PROTEIN)
    ("mRNA and miRNA" . SPARSER::COLLECTION)
    ("TMPRSS2:ERG" . SPARSER::BIO-COMPLEX)
    ("the proteins and other molecules" . SPARSER::COLLECTION)
    ("immune-related proteins" . SPARSER::PROTEIN) ("Alix" . SPARSER::PROTEIN)
    ("phosphatase (ACPP)" . SPARSER::PHOSPHATASE) ("PSMA" . SPARSER::PROTEIN)
    ("BP" . SPARSER::PROTEIN) ("prostasomal proteins" . SPARSER::PROTEIN)
    ("exosomal proteins" . SPARSER::PROTEIN)
    ("a comprehensive healthy human urine exosome protein" . SPARSER::PROTEIN)
    ("novel vesicle-associated protein" . SPARSER::PROTEIN)
    ("TFE" . SPARSER::PROTEIN) ("dithiothreitol" . SPARSER::PROTEIN)
    ("benign prostatic" . SPARSER::PROTEIN)
    ("Our collaborative research group" . SPARSER::MOLECULE)
    ("a recent FDA" . SPARSER::PROTEIN)
    ("sphingomyelin and phosphatidylethanolamine" . SPARSER::COLLECTION)
    ("phosphatidylethanolamine" . SPARSER::MOLECULE)
    ("sphingomyelin" . SPARSER::MOLECULE)
    ("protein, RNAs and lipids" . SPARSER::COLLECTION)
    ("prostatic" . SPARSER::PROTEIN) ("ANXA5" . SPARSER::PROTEIN)
    ("FLOT2" . SPARSER::PROTEIN) ("FLOT1" . SPARSER::PROTEIN)
    ("flotillin-1" . SPARSER::PROTEIN) ("TSG101" . SPARSER::PROTEIN)
    ("ANXA2" . SPARSER::PROTEIN) ("annexin-2" . SPARSER::PROTEIN)
    ("programmed cell death 6-interacting protein" . SPARSER::PROTEIN)
    ("CD81" . SPARSER::PROTEIN) ("CD63" . SPARSER::PROTEIN)
    ("CD9" . SPARSER::PROTEIN)
    ("prostate-specific membrane antigen" . SPARSER::PROTEIN)
    ("TGM4" . SPARSER::PROTEIN) ("PCA3" . SPARSER::RNA)
    ("a paradigmatic example" . SPARSER::EXAMPLE)
    ("bulky phenylalanine" . SPARSER::AMINO-ACID)
    ("divergent strabismus" . SPARSER::PROTEIN)
    ("strabismus" . SPARSER::PROTEIN)
    ("-ACCAAATCAGGGCAGGATCAAAGGCAACTG-3" . SPARSER::COLLECTION)
    ("-CTAGTTGGCATCTGGGGCTTGGCATGC-3" . SPARSER::COLLECTION)
    ("G-A-C-T" . SPARSER::COLLECTION)
    ("the disease-associated allele" . SPARSER::ALLELE)
    ("two consecutive nucleotides" . SPARSER::NUCLEOTIDE)
    ("a transmembrane receptor tyrosine kinase"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Phe" . SPARSER::AMINO-ACID) ("A mild form" . SPARSER::FORM)
    ("C-T" . SPARSER::PROTEIN) ("G-A" . SPARSER::PROTEIN)
    ("2/3" . SPARSER::PROTEIN)
    ("further using inhibitors" . SPARSER::INHIBITOR)
    ("primary CRCs and RLNM" . SPARSER::COLLECTION)
    ("CRCs and RLNM" . SPARSER::COLLECTION)
    ("HGF (r=0.600, P=0.003) and Met" . SPARSER::COLLECTION)
    ("protein and RNA" . SPARSER::COLLECTION) ("1-2" . SPARSER::PROTEIN)
    ("primary CRC" . SPARSER::PROTEIN)
    ("DNA, RNA and protein" . SPARSER::COLLECTION) ("Nk4" . SPARSER::PROTEIN)
    ("hepatocyte growth factor (HGF) and its receptor" . SPARSER::COLLECTION)
    ("primary CRCs" . SPARSER::PROTEIN) ("HGF and Met" . SPARSER::COLLECTION)
    ("hepatocyte growth factor (HGF) and Met" . SPARSER::COLLECTION)
    ("M1" . SPARSER::MOLECULE) ("C-12" . SPARSER::PROTEIN)
    ("TxN1" . SPARSER::PROTEIN) ("The BH3 mimetic ABT-737" . SPARSER::DRUG)
    ("bridging tyrosine kinase inhibitors and BAX-" . SPARSER::COLLECTION)
    ("PI3K-AKT and support PUMA" . SPARSER::COLLECTION)
    ("lapatinib- or BEZ235-induced cell death ( xref )" . SPARSER::COLLECTION)
    ("lapatinib-" . SPARSER::DRUG) ("IAP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EGFR-" . SPARSER::PROTEIN) ("EGFR and HER2" . SPARSER::COLLECTION)
    ("oncogenic kinases and the BCL-2 family" . SPARSER::COLLECTION)
    ("key sentinels" . SPARSER::DRUG)
    ("MAPK and PI3K-AKT" . SPARSER::COLLECTION)
    ("PI3K/mTORC1" . SPARSER::COLLECTION)
    ("TORC1 or AKT" . SPARSER::COLLECTION)
    ("PI3K and MEK" . SPARSER::COLLECTION)
    ("ABT-737 and BEZ235 or GDC0941" . SPARSER::COLLECTION)
    ("BEZ235 or GDC0941" . SPARSER::COLLECTION)
    ("BEZ235 and GDC0941" . SPARSER::COLLECTION)
    ("tBID, BIM, and PUMA" . SPARSER::COLLECTION) ("tBID" . SPARSER::PROTEIN)
    ("BAD and its mimetics ABT-737 or ABT-263 (navitoclax)"
     . SPARSER::COLLECTION)
    ("ABT-737 or ABT-263" . SPARSER::COLLECTION)
    ("BIM, PUMA, or truncated BID" . SPARSER::COLLECTION)
    ("BCL-2 and BCL-X" . SPARSER::COLLECTION) ("/BCL-X" . SPARSER::COLLECTION)
    ("navitoclax" . SPARSER::DRUG) ("PI3K-PUMA" . SPARSER::COLLECTION)
    ("inTetO-EGFR" . SPARSER::COLLECTION) ("rtTA" . SPARSER::PROTEIN)
    ("CCSP-rtTA" . SPARSER::PROTEIN-PAIR)
    ("theTetO-EGFR" . SPARSER::COLLECTION) ("CCSP" . SPARSER::PROTEIN)
    ("Doxycycline" . SPARSER::DRUG)
    ("caspase-3 and caspase-7" . SPARSER::COLLECTION)
    ("tetracycline" . SPARSER::DRUG) ("MTB" . SPARSER::PROTEIN)
    ("TetO" . SPARSER::PROTEIN) ("FOXO1 or FOXO3" . SPARSER::COLLECTION)
    ("AKT-FOXO-PUMA" . SPARSER::COLLECTION)
    ("two clinically efficacious EGFR inhibitors" . SPARSER::INHIBITOR)
    ("HER2 or PI3K-AKT" . SPARSER::COLLECTION)
    ("PI3K-AKT-FOXO" . SPARSER::COLLECTION)
    ("coactivators or corepressors" . SPARSER::COLLECTION)
    ("FOXO3:ER" . SPARSER::BIO-COMPLEX)
    ("FOXO3 and FOXO1" . SPARSER::COLLECTION)
    ("cytokine or growth factor" . SPARSER::COLLECTION)
    ("FOXO1 and FOXO3" . SPARSER::COLLECTION)
    ("lapatinib and AZD6244" . SPARSER::COLLECTION) ("EL" . SPARSER::PROTEIN)
    ("AKTi" . SPARSER::PROTEIN) ("Myr" . SPARSER::MOLECULE)
    ("RAS-RAF-MEK-ERK" . SPARSER::COLLECTION)
    ("MEK and PI3K-AKT" . SPARSER::COLLECTION)
    ("BIM and PUMAwere" . SPARSER::COLLECTION)
    ("BIM or PUMA" . SPARSER::COLLECTION)
    ("BID, NOXA, and BAD" . SPARSER::COLLECTION) ("Lapatinib" . SPARSER::DRUG)
    ("a BAD mimetic ABT-737" . SPARSER::DRUG)
    ("tyrosine kinase inhibitors that cooperate to activate BAX- and BAK-dependent mitochondrial apoptosis"
     . SPARSER::COLLECTION)
    ("BAX-" . SPARSER::PROTEIN) ("HER2/Neu" . SPARSER::COLLECTION)
    ("Neu" . SPARSER::PROTEIN) ("PI3K-mTOR and AKT" . SPARSER::COLLECTION)
    ("EGFR and PI3K" . SPARSER::COLLECTION)
    ("a prosurvival protein" . SPARSER::PROTEIN)
    ("only tyrosine kinase inhibitors" . SPARSER::INHIBITOR)
    ("tyrosine kinase and MEK" . SPARSER::COLLECTION)
    ("ERK and ribosomal protein S6 kinase (RSK)" . SPARSER::COLLECTION)
    ("ERK and ribosomal protein S6 kinase" . SPARSER::COLLECTION)
    ("RSK" . SPARSER::PROTEIN) ("gefitinib-" . SPARSER::DRUG)
    ("PI3K-mTOR or AKT" . SPARSER::COLLECTION)
    ("HER2- and EGFR" . SPARSER::COLLECTION) ("HER2-" . SPARSER::PROTEIN)
    ("MEK-ERK" . SPARSER::COLLECTION)
    ("–AKT–mammalian target of rapamycin" . SPARSER::COLLECTION)
    ("ErbB4" . SPARSER::PROTEIN) ("Bid, Bim , and Puma" . SPARSER::COLLECTION)
    ("Bid" . SPARSER::PROTEIN) ("BID, BIM, and PUMA" . SPARSER::COLLECTION)
    ("BAD and NOXA" . SPARSER::COLLECTION) ("NOXA" . SPARSER::PROTEIN)
    ("BAD" . SPARSER::PROTEIN) ("BID" . SPARSER::PROTEIN)
    ("antiapoptotic BCL-2" . SPARSER::PROTEIN)
    ("cytochrome c and SMAC" . SPARSER::COLLECTION)
    ("caspases" . SPARSER::PROTEIN) ("SMAC" . SPARSER::PROTEIN)
    ("multidomain proapoptotic BAX and BAK" . SPARSER::COLLECTION)
    ("multidomain antiapoptotic BCL-2" . SPARSER::PROTEIN)
    ("EGFR, and lapatinib" . SPARSER::COLLECTION) ("lapatinib" . SPARSER::DRUG)
    ("imatinib" . SPARSER::DRUG) ("sentinels" . SPARSER::DRUG)
    ("Bim or Puma" . SPARSER::COLLECTION) ("Bim" . SPARSER::PROTEIN)
    ("–AKT" . SPARSER::COLLECTION)
    ("–extracellular signal–regulated kinase" . SPARSER::COLLECTION)
    ("FOXO" . SPARSER::PROTEIN-FAMILY) ("mitogen" . SPARSER::MITOGEN)
    ("BIM and PUMA" . SPARSER::COLLECTION)
    ("BAX and BAK" . SPARSER::COLLECTION) ("BAK" . SPARSER::PROTEIN)
    ("PUMA and BIM" . SPARSER::COLLECTION) ("BIM" . SPARSER::PROTEIN)
    ("PUMA" . SPARSER::PROTEIN) ("anti-S" . SPARSER::ANTIBODY)
    ("S6K" . SPARSER::PROTEIN) ("C-20" . SPARSER::PROTEIN)
    ("N-20" . SPARSER::PROTEIN) ("ERT2" . SPARSER::PROTEIN)
    ("mTORC1" . SPARSER::PROTEIN) ("TORC1" . SPARSER::PROTEIN)
    ("PI3" . SPARSER::PROTEIN) ("truncated BID" . SPARSER::PROTEIN)
    ("ABT-263" . SPARSER::DRUG) ("caspase-7" . SPARSER::PROTEIN)
    ("4-OHT" . SPARSER::DRUG) ("4-hydroxytamoxifen" . SPARSER::DRUG)
    ("FOXO3" . SPARSER::PROTEIN) ("FOXO1" . SPARSER::PROTEIN)
    ("FOXO3a" . SPARSER::PROTEIN) ("AZD6244" . SPARSER::DRUG)
    ("BEZ235" . SPARSER::DRUG) ("ABT-737" . SPARSER::DRUG)
    ("β-TRCP" . SPARSER::PROTEIN)
    ("ribosomal protein S6 kinase" . SPARSER::PROTEIN)
    ("Tyrosine kinase" . SPARSER::PROTEIN) ("PI3K-AKT-mTOR" . SPARSER::PROTEIN)
    ("PI3K-mTOR" . SPARSER::PROTEIN) ("PI3K-AKT" . SPARSER::PROTEIN)
    ("HER4" . SPARSER::PROTEIN) ("HER3" . SPARSER::PROTEIN)
    ("ErbB3" . SPARSER::PROTEIN) ("MCL-1" . SPARSER::PROTEIN)
    ("BCL-X" . SPARSER::PROTEIN) ("BH4" . SPARSER::PROTEIN-FAMILY)
    ("BH1" . SPARSER::PROTEIN)
    ("extracellular signal–regulated kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("protein kinase kinase" . SPARSER::PROTEIN)
    ("AKT and mTOR" . SPARSER::COLLECTION)
    ("anti-angiogenic and anti-metastatic activity via inhibition of VEGF and MMP9 [ xref , xref ]"
     . SPARSER::COLLECTION)
    ("VEGF and MMP9" . SPARSER::COLLECTION)
    ("Bcl-2 and CyclinD1" . SPARSER::COLLECTION) ("Rh" . SPARSER::MOLECULE)
    ("OPB" . SPARSER::MOLECULE) ("mAb" . SPARSER::DRUG)
    ("JAK and STAT3" . SPARSER::COLLECTION)
    ("IL-6/JAK/STAT3" . SPARSER::COLLECTION)
    ("Bcl-2, CyclinD1 and Survivin" . SPARSER::COLLECTION)
    ("JAK2/STAT3" . SPARSER::COLLECTION)
    ("the AZD1480-treated cohort" . SPARSER::MOLECULE)
    ("CyclinD1,-3, Bcl-2 and Survivin" . SPARSER::COLLECTION)
    ("Survivin" . SPARSER::PROTEIN)
    ("Bcl-2, survivin and c-Myc" . SPARSER::COLLECTION)
    ("TIMP-1 and VEGF" . SPARSER::COLLECTION)
    ("CyclinD1, CyclinD3, Cdc25a, Bcl-2, survivin, TIMP-1 and c-Myc"
     . SPARSER::COLLECTION)
    ("Cdc25a" . SPARSER::PROTEIN) ("JAK2 and STAT3" . SPARSER::COLLECTION)
    ("AZD1480 and TC32 (ESFT)" . SPARSER::COLLECTION)
    ("AZD1480 and TC32" . SPARSER::COLLECTION) ("MYCN" . SPARSER::PROTEIN)
    ("NB and 1/7" . SPARSER::COLLECTION)
    ("an ATP competitive inhibitor" . SPARSER::INHIBITOR)
    ("particular STAT3" . SPARSER::PROTEIN)
    ("Bcl-2, CyclinD1 and VEGF" . SPARSER::COLLECTION)
    ("JAK1 and JAK2" . SPARSER::COLLECTION) ("activators" . SPARSER::ACTIVATOR)
    ("Cytokines" . SPARSER::PROTEIN) ("Janus" . SPARSER::PROTEIN-FAMILY)
    ("high-risk aggressive NB" . SPARSER::PROTEIN)
    ("Bcl-2 and survivin" . SPARSER::COLLECTION)
    ("TIMP-1 and c-Myc" . SPARSER::COLLECTION) ("EC" . SPARSER::PROTEIN)
    ("Family" . SPARSER::PROTEIN-FAMILY) ("NB" . SPARSER::PROTEIN)
    ("JAK/STAT3" . SPARSER::COLLECTION) ("IL-6/JAK/STAT" . SPARSER::COLLECTION)
    ("JAK" . SPARSER::PROTEIN) ("β-Actin" . SPARSER::PROTEIN)
    ("BCL-2" . SPARSER::PROTEIN) ("anti-angiogenic" . SPARSER::DRUG)
    ("JAK2 inhibitor AZD1480" . SPARSER::DRUG) ("cyclinD3" . SPARSER::PROTEIN)
    ("CyclinD3" . SPARSER::PROTEIN) ("gp130" . SPARSER::PROTEIN)
    ("gp80" . SPARSER::PROTEIN) ("IL-6R" . SPARSER::PROTEIN)
    ("Z-VAD-FMK" . SPARSER::DRUG) ("caspase-3" . SPARSER::PROTEIN)
    ("leukemia inhibitory factor" . SPARSER::PROTEIN)
    ("oncostatin M" . SPARSER::PROTEIN) ("TIMP-1" . SPARSER::PROTEIN)
    ("Bcl-2" . SPARSER::PROTEIN) ("CDC25A" . SPARSER::PROTEIN)
    ("CyclinD1" . SPARSER::PROTEIN) ("JAK1" . SPARSER::PROTEIN)
    ("AZD1480" . SPARSER::DRUG) ("the phosphomimic form" . SPARSER::FORM)
    ("PDK1 and its substrate ( xref , xref )" . SPARSER::COLLECTION)
    ("PDK1 and its substrates" . SPARSER::COLLECTION)
    ("cytokine genes and the survival" . SPARSER::COLLECTION)
    ("CD69 ( xref and xref ) and CD25 ( xref and xref )" . SPARSER::COLLECTION)
    ("Pdk1" . SPARSER::PROTEIN) ("Peptides" . SPARSER::PEPTIDE)
    ("PDK1 and PDK1" . SPARSER::COLLECTION) ("PDK1-PH" . SPARSER::COLLECTION)
    ("PDK1 Thr-513-Ile proteins ( xref ) and PTD-PDK1-Thr-513-Asp"
     . SPARSER::COLLECTION)
    ("anti-CD3 and anti-CD28" . SPARSER::COLLECTION)
    ("Jurkat" . SPARSER::PROTEIN)
    ("17 PTD amino acids and 6 amino acids" . SPARSER::COLLECTION)
    ("unphosphomimic PDK1 Thr-513 peptide" . SPARSER::PEPTIDE)
    ("Phosphomimic PDK1 Thr-513 region-containing peptide" . SPARSER::PEPTIDE)
    ("PH and kinase" . SPARSER::COLLECTION)
    ("phosphomimic Thr-513 peptide" . SPARSER::PEPTIDE)
    ("PDK1 and PKCθ or CARMA1" . SPARSER::COLLECTION)
    ("PDK1 and AKT" . SPARSER::COLLECTION) ("DP" . SPARSER::PROTEIN)
    ("CARMA1-BCL10-MALT1" . SPARSER::COLLECTION) ("PtdIns" . SPARSER::PROTEIN)
    ("phosphatidylinositol or phosphoinositides" . SPARSER::COLLECTION)
    ("PDK1 and CARMA1" . SPARSER::COLLECTION)
    ("PDK1 and PKCθ" . SPARSER::COLLECTION)
    ("NF-κB and AKT" . SPARSER::COLLECTION)
    ("cell permeable peptides" . SPARSER::PEPTIDE)
    ("derivative" . SPARSER::DERIVATIVE)
    ("pleckstrin homology (PH)" . SPARSER::PROTEIN)
    ("homodimers" . SPARSER::HOMODIMER) ("Myc-tagged" . SPARSER::PROTEIN)
    ("anti-CD28" . SPARSER::PROTEIN) ("CD69" . SPARSER::PROTEIN)
    ("IκBα" . SPARSER::PROTEIN) ("DN4" . SPARSER::PROTEIN)
    ("MALT1" . SPARSER::PROTEIN) ("BCL10" . SPARSER::PROTEIN)
    ("P 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphatidylinositol-3,4,5-trisphosphate" . SPARSER::PIP3)
    ("phosphatidylinositol-4,5-bisphosphate" . SPARSER::PIP2)
    ("Phosphoinositide 3" . SPARSER::PROTEIN)
    ("pleckstrin homology" . SPARSER::PROTEIN) ("CARMA1" . SPARSER::PROTEIN)
    ("E-Cadherin and HIF-1α" . SPARSER::COLLECTION)
    ("E-Cadherin and the downstream effectors" . SPARSER::COLLECTION)
    ("E-Cadherin and HIF-1α/glycolysis" . SPARSER::COLLECTION)
    ("HIF-1α and hypoxia" . SPARSER::COLLECTION) ("Hypoxia" . SPARSER::PROTEIN)
    ("HIF-1α, CA9, and COX2" . SPARSER::COLLECTION)
    ("E-Cadherin/CDH1" . SPARSER::COLLECTION)
    ("E-Cadherin or MET" . SPARSER::COLLECTION) ("/CD24" . SPARSER::COLLECTION)
    ("the mesenchymal proteins N-Cadherin" . SPARSER::PROTEIN)
    ("the most aggressive form" . SPARSER::FORM)
    ("Seahorse" . SPARSER::PROTEIN) ("HIF-1α and CD31" . SPARSER::COLLECTION)
    ("bot" . SPARSER::PROTEIN) ("reduced endothelial CD31" . SPARSER::PROTEIN)
    ("synthase and cyclooxygenase" . SPARSER::COLLECTION)
    ("PTGS2/COX2" . SPARSER::COLLECTION) ("synthase" . SPARSER::PROTEIN)
    ("prostaglandin" . SPARSER::PROTEIN) ("BLI" . SPARSER::PROTEIN)
    ("MFP" . SPARSER::PROTEIN)
    ("multiple EMT-associated genes" . SPARSER::GENE)
    ("ZEB1 , ZEB2 , Twist1 , N-Cadherin, MMP2, MMP9 and vimentin"
     . SPARSER::COLLECTION)
    ("Luminal" . SPARSER::DRUG) ("Targets" . SPARSER::TARGET-PROTEIN)
    ("psoriasin" . SPARSER::PROTEIN) ("LUC" . SPARSER::PROTEIN)
    ("the mesenchymal proteins N-Cadherin and vimentin" . SPARSER::COLLECTION)
    ("N-Cadherin and vimentin" . SPARSER::COLLECTION)
    ("N-Cadherin, ZEB1 and vimentin" . SPARSER::COLLECTION)
    ("two lentiviral based shRNA" . SPARSER::PROTEIN)
    ("mesenchymal cadherins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("OB-cadherin or N-Cadherin" . SPARSER::COLLECTION)
    ("ZEB" . SPARSER::PROTEIN) ("FC" . SPARSER::PROTEIN)
    ("N-Cadherin and OB-Cadherin" . SPARSER::COLLECTION)
    ("the very aggressive IBC variant" . SPARSER::VARIANT)
    ("The poor RFS" . SPARSER::PROTEIN) ("RFS" . SPARSER::PROTEIN)
    ("lactate" . SPARSER::LACTATE) ("EMT and MET" . SPARSER::COLLECTION)
    ("prominent MET" . SPARSER::PROTEIN) ("an aggressive form" . SPARSER::FORM)
    ("metastatic foci" . SPARSER::PROTEIN)
    ("A 2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("a 20" . SPARSER::PROTEIN)
    ("Monoclonal antibody" . SPARSER::DRUG)
    ("DNA Polymerase" . SPARSER::PROTEIN) ("HIF1A" . SPARSER::PROTEIN)
    ("DNA polymerase" . SPARSER::PROTEIN) ("CoCL2" . SPARSER::MOLECULE)
    ("L-Glutamine" . SPARSER::MOLECULE) ("CD24" . SPARSER::PROTEIN)
    ("TGFβ" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Transforming growth factor" . SPARSER::PROTEIN)
    ("CoCl 2" . SPARSER::MOLECULE) ("HIF1α" . SPARSER::PROTEIN)
    ("CD31" . SPARSER::PROTEIN) ("COX2" . SPARSER::PROTEIN)
    ("PTGS2" . SPARSER::PROTEIN)
    ("prostaglandin-endoperoxide synthase 2" . SPARSER::PROTEIN)
    ("Carbonic Anhydrase 9" . SPARSER::PROTEIN) ("MMP9" . SPARSER::PROTEIN)
    ("Twist1" . SPARSER::PROTEIN) ("ZEB2" . SPARSER::PROTEIN)
    ("S100A7" . SPARSER::PROTEIN) ("L39" . SPARSER::PROTEIN)
    ("OB-cadherin" . SPARSER::PROTEIN)
    ("zinc finger E-box binding homeobox 1" . SPARSER::PROTEIN)
    ("OB-Cadherin" . SPARSER::PROTEIN) ("ZEB1" . SPARSER::PROTEIN)
    ("N-Cadherin" . SPARSER::PROTEIN) ("E-Cadherin" . SPARSER::PROTEIN)
    ("osmolyte" . SPARSER::MOLECULE) ("osmolytes" . SPARSER::MOLECULE)
    ("a folded globular protein" . SPARSER::PROTEIN)
    ("an otherwise fully-folded globular protein" . SPARSER::PROTEIN)
    ("pyrrolidine" . SPARSER::DRUG)
    ("our previous static light" . SPARSER::PROTEIN)
    ("around 28kD" . SPARSER::PROTEIN)
    ("a compact globular conformation" . SPARSER::BIO-CONFORMATION)
    ("x-ray" . SPARSER::COLLECTION)
    ("the overall three-dimensional conformation" . SPARSER::BIO-CONFORMATION)
    ("a fully-denatured state" . SPARSER::BIO-STATE)
    ("a fully-folded globular conformation" . SPARSER::BIO-CONFORMATION)
    ("water" . SPARSER::MOLECULE) ("cis-trans" . SPARSER::COLLECTION)
    ("trans-cis" . SPARSER::COLLECTION) ("helices" . SPARSER::PROTEIN)
    ("PPII-helices" . SPARSER::COLLECTION)
    ("the chemically-denatured state" . SPARSER::BIO-STATE)
    ("peptides and proteins" . SPARSER::COLLECTION)
    ("globular proteins" . SPARSER::PROTEIN)
    ("valine, leucine, isoleucine, methionine, phenylalanine, tyrosine and tryptophan"
     . SPARSER::COLLECTION)
    ("tryptophan" . SPARSER::AMINO-ACID)
    ("phenylalanine" . SPARSER::AMINO-ACID)
    ("isoleucine" . SPARSER::AMINO-ACID) ("valine" . SPARSER::AMINO-ACID)
    ("proline and glycine" . SPARSER::COLLECTION)
    ("serine, threonine, glutamine, glutamate, lysine and arginine"
     . SPARSER::COLLECTION)
    ("glutamine" . SPARSER::AMINO-ACID)
    ("a well-defined conformation" . SPARSER::BIO-CONFORMATION)
    ("phospholipids" . SPARSER::PHOSPHOLIPID)
    ("Sos1-Abi" . SPARSER::COLLECTION) ("DH" . SPARSER::PROTEIN)
    ("Abi" . SPARSER::PROTEIN-FAMILY) ("Sos1-Abi1" . SPARSER::COLLECTION)
    ("filaments" . SPARSER::PROTEIN-FAMILY) ("GTP-GDP" . SPARSER::PROTEIN-PAIR)
    ("Sos1-Grb2" . SPARSER::COLLECTION) ("Grb2 and Abi1" . SPARSER::COLLECTION)
    ("states" . SPARSER::BIO-STATE) ("GDP" . SPARSER::NUCLEOTIDE)
    ("Ras and Rac" . SPARSER::COLLECTION)
    ("Rac" . SPARSER::HUMAN-PROTEIN-FAMILY) ("HF" . SPARSER::PROTEIN)
    ("II (PPII)" . SPARSER::PROTEIN) ("PPII" . SPARSER::PROTEIN)
    ("polyproline" . SPARSER::PROTEIN) ("Sos1" . SPARSER::PROTEIN)
    ("N-C" . SPARSER::PROTEIN) ("28kD" . SPARSER::PROTEIN)
    ("and −1" . SPARSER::PROTEIN) ("Na +" . SPARSER::MOLECULE)
    ("1D" . SPARSER::PROTEIN) ("a polypeptide" . SPARSER::PROTEIN)
    ("a 15 µ" . SPARSER::PROTEIN) ("cm −1" . SPARSER::PROTEIN)
    ("M −1" . SPARSER::PROTEIN) ("Ras-GTP" . SPARSER::PROTEIN)
    ("Eps8" . SPARSER::PROTEIN) ("Abi1" . SPARSER::PROTEIN)
    ("Cdc25" . SPARSER::PROTEIN) ("DH-PH" . SPARSER::PROTEIN)
    ("guanine nucleotide exchange factor" . SPARSER::GEF)
    ("cetuximab and bevacizumab" . SPARSER::COLLECTION)
    ("irinotecan" . SPARSER::DRUG) ("bevacizumab" . SPARSER::DRUG)
    ("a protein’s" . SPARSER::PROTEIN)
    ("a completely homozygous mutant" . SPARSER::MUTANT)
    ("homozygous mutant" . SPARSER::MUTANT) ("PNA" . SPARSER::PROTEIN)
    ("run" . SPARSER::PROTEIN-FAMILY) ("endonuclease" . SPARSER::PROTEIN)
    ("medicine" . SPARSER::DRUG) ("Monoclonal antibodies" . SPARSER::ANTIBODY)
    ("Cetuximab" . SPARSER::DRUG)
    ("another phenotypic variant" . SPARSER::VARIANT)
    ("Exon" . SPARSER::PROTEIN) ("WAVE" . SPARSER::PROTEIN)
    ("ion" . SPARSER::MOLECULE) ("Wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("bank" . SPARSER::PROTEIN) ("von Hippel Lindau" . SPARSER::PROTEIN)
    ("A3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("B9)" . SPARSER::PROTEIN)
    ("MgSO4" . SPARSER::DRUG) ("lysines" . SPARSER::AMINO-ACID)
    ("a ternary complex" . SPARSER::BIO-COMPLEX)
    ("p53 and LSD1" . SPARSER::COLLECTION)
    ("pro-apoptotic proteins" . SPARSER::PROTEIN)
    ("Puma, Noxa and Bax" . SPARSER::COLLECTION) ("Bax" . SPARSER::PROTEIN)
    ("Noxa" . SPARSER::PROTEIN) ("Puma" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Snail and Slug" . SPARSER::COLLECTION) ("Slug" . SPARSER::PROTEIN)
    ("Snail" . SPARSER::PROTEIN) ("Gf1" . SPARSER::PROTEIN)
    ("NSG" . SPARSER::PROTEIN-FAMILY)
    ("a potential new therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("BMT" . SPARSER::PROTEIN) ("acute leukemia" . SPARSER::PROTEIN)
    ("Acute Lymphoblastic Leukemia (ALL)" . SPARSER::PROTEIN)
    ("Leukemia" . SPARSER::PROTEIN) ("B-ALL" . SPARSER::PROTEIN)
    ("Gfi1" . SPARSER::PROTEIN) ("PAE" . SPARSER::PROTEIN-FAMILY)
    ("heparin and ligand" . SPARSER::COLLECTION)
    ("no commonly point-mutated and activated protein kinase gene"
     . SPARSER::GENE)
    ("FGFR2 and the equivalent lysine" . SPARSER::COLLECTION)
    ("FGFR2 and FGFR3" . SPARSER::COLLECTION)
    ("TDII" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("thanatophoric dysplasia type I (TDI)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("type I (TDI)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TDI" . SPARSER::MOLECULE) ("FGFR1 and FGFR2" . SPARSER::COLLECTION)
    ("FGFR1 , FGFR2 and FGFR3" . SPARSER::COLLECTION)
    ("FGFs or FGFRs" . SPARSER::COLLECTION)
    ("FGFs and FGFRs" . SPARSER::COLLECTION)
    ("the isoform IIIb and not isoform IIIc" . SPARSER::COLLECTION)
    ("MEK1/2 and STAT3" . SPARSER::COLLECTION)
    ("anti-p-FRS2" . SPARSER::COLLECTION)
    ("wt and mutant" . SPARSER::COLLECTION)
    ("a dominant-negative kinase-defective (KD) FGFR2 mutant"
     . SPARSER::MUTANT)
    ("the receptor and the arginine" . SPARSER::COLLECTION)
    ("only one isoform" . SPARSER::ISOFORM)
    ("the IIIb and IIIc transcripts" . SPARSER::COLLECTION)
    ("FGFR2-IIIb or FGFR2-IIIc" . SPARSER::COLLECTION)
    ("FGFR2-IIIb and FGFR2-IIIc" . SPARSER::COLLECTION)
    ("ESP" . SPARSER::PROTEIN) ("Variant" . SPARSER::VARIANT)
    ("blood-derived DNA" . SPARSER::DNA) ("asparagine" . SPARSER::AMINO-ACID)
    ("the typical mutational hot" . SPARSER::PROTEIN)
    ("both candidate genes and further investigated identified breast cancer mutations by functional analysis"
     . SPARSER::COLLECTION)
    ("FGF7 and FGF10" . SPARSER::COLLECTION)
    ("FGFR1, -2 and -3" . SPARSER::COLLECTION) ("FGFR" . SPARSER::PROTEIN)
    ("sulphate or heparin" . SPARSER::COLLECTION)
    ("sulphate" . SPARSER::MOLECULE) ("FGFRs" . SPARSER::PROTEIN)
    ("drosophila" . SPARSER::PROTEIN) ("FGFs" . SPARSER::PROTEIN)
    ("the relevant variants" . SPARSER::VARIANT)
    ("FGFR2 and FGF10" . SPARSER::COLLECTION)
    ("type II" . SPARSER::HUMAN-PROTEIN-FAMILY) ("FGFR3" . SPARSER::PROTEIN)
    ("MEK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p-MEK1" . SPARSER::PROTEIN)
    ("FRS2" . SPARSER::PROTEIN) ("Reducing Agent" . SPARSER::MOLECULE)
    ("FGF1" . SPARSER::PROTEIN) ("TX-100" . SPARSER::DRUG)
    ("18 h" . SPARSER::PROTEIN) ("pRK5" . SPARSER::PROTEIN)
    ("FGFR2-IIIc" . SPARSER::PROTEIN) ("FGF7" . SPARSER::PROTEIN)
    ("FGFR1" . SPARSER::PROTEIN)
    ("fibroblast growth factor 10" . SPARSER::PROTEIN)
    ("FGFR2-IIIb" . SPARSER::PROTEIN) ("FGF10" . SPARSER::PROTEIN)
    ("FGFR2" . SPARSER::PROTEIN) ("NKp44 and PCNA" . SPARSER::COLLECTION)
    ("lysosomal" . SPARSER::PROTEIN)
    ("molecules, or proteins" . SPARSER::COLLECTION)
    ("High-Mobility Group Protein B1 and S100A8/9" . SPARSER::COLLECTION)
    ("sulfate and heparin" . SPARSER::COLLECTION)
    ("a unique activating ligand" . SPARSER::MOLECULE)
    ("Neither NKp30 nor NKp46" . SPARSER::COLLECTION)
    ("Bat3 and NKp44" . SPARSER::COLLECTION)
    ("receptors binding respective ligands" . SPARSER::LIGAND)
    ("lymphoid" . SPARSER::PROTEIN)
    ("anti-PCNA or anti-HLA" . SPARSER::COLLECTION)
    ("PCNA or HLA" . SPARSER::COLLECTION) ("PCNA/HLA" . SPARSER::COLLECTION)
    ("Cytotoxic" . SPARSER::PROTEIN)
    ("possible membrane protein" . SPARSER::PROTEIN)
    ("DTT" . SPARSER::MOLECULE)
    ("immunoglobulins and DU145" . SPARSER::COLLECTION)
    ("immunoglobulins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Fluor" . SPARSER::MOLECULE) ("mIgG" . SPARSER::PROTEIN)
    ("PCNA and HLA" . SPARSER::COLLECTION)
    ("a soluble NKp44 fusion protein" . SPARSER::PROTEIN)
    ("Ig" . SPARSER::MOLECULE) ("Antibody" . SPARSER::PROTEIN)
    ("termed damage associated molecular pattern molecules"
     . SPARSER::MOLECULE)
    ("BAT3 and PCNA" . SPARSER::COLLECTION)
    ("this unique form" . SPARSER::FORM)
    ("Proliferating Cell Nuclear Antigen (PCNA)" . SPARSER::PROTEIN)
    ("a transmembrane glycoprotein" . SPARSER::PROTEIN)
    ("glycoprotein" . SPARSER::PROTEIN)
    ("NKp30, NKp46, and NKp44" . SPARSER::COLLECTION)
    ("Receptors" . SPARSER::RECEPTOR)
    ("other ligands and signal" . SPARSER::COLLECTION)
    ("Class I Human Leukocyte Antigen (HLA I) molecules and signal"
     . SPARSER::COLLECTION)
    ("ITAMs" . SPARSER::PROTEIN) ("ITAMS" . SPARSER::PROTEIN)
    ("Tyrosine" . SPARSER::AMINO-ACID)
    ("ligands or ligands" . SPARSER::COLLECTION)
    ("potentially heparin sulfate proteoglycans" . SPARSER::PROTEIN)
    ("proteoglycans" . SPARSER::PROTEIN) ("sulfate" . SPARSER::MOLECULE)
    ("heparin" . SPARSER::PROTEIN) ("NKp44 and HLA" . SPARSER::COLLECTION)
    ("DAMPs" . SPARSER::DAMP) ("PCNA" . SPARSER::PROTEIN)
    ("Brefeldin A" . SPARSER::MOLECULE) ("S100A8" . SPARSER::PROTEIN)
    ("High-Mobility Group Protein B1" . SPARSER::PROTEIN)
    ("DAP-12" . SPARSER::PROTEIN) ("D–F" . SPARSER::PROTEIN)
    ("heavy chain" . SPARSER::PROTEIN) ("HLA-E" . SPARSER::PROTEIN)
    ("membrane protein" . SPARSER::PROTEIN)
    ("β-2-microglobulin" . SPARSER::PROTEIN) ("P-40" . SPARSER::PROTEIN)
    ("IgG2a" . SPARSER::PROTEIN) ("CH3" . SPARSER::MOLECULE)
    ("CH2" . SPARSER::PROTEIN) ("BAT3" . SPARSER::PROTEIN)
    ("Bat3" . SPARSER::PROTEIN) ("Transcript 3" . SPARSER::PROTEIN)
    ("Proliferating Cell Nuclear Antigen" . SPARSER::PROTEIN)
    ("envelope protein" . SPARSER::PROTEIN)
    ("gp41" . SPARSER::HUMAN-PROTEIN-FAMILY) ("DAP12" . SPARSER::PROTEIN)
    ("NKp46" . SPARSER::PROTEIN) ("NKp30" . SPARSER::PROTEIN)
    ("Class I" . SPARSER::PROTEIN) ("target cell" . SPARSER::PROTEIN)
    ("NK cell receptor" . SPARSER::PROTEIN) ("NKp44" . SPARSER::PROTEIN)
    ("2G allele instead of 1G allel" . SPARSER::COLLECTION)
    ("Cao" . SPARSER::MOLECULE) ("t " . SPARSER::PROTEIN)
    ("thymidine" . SPARSER::PROTEIN) ("TIMPs" . SPARSER::PROTEIN)
    ("the predominant types" . TYPE)
    ("proteinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Matrix" . SPARSER::PROTEIN-FAMILY)
    ("AgP" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MMP1" . SPARSER::PROTEIN)
    ("dominant and recessive" . SPARSER::PROTEIN)
    ("matrix metalloproteinase-1" . SPARSER::PROTEIN)
    ("MMP-1" . SPARSER::PROTEIN)
    ("Matrix metalloproteinase-1" . SPARSER::PROTEIN)
    ("WNT" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TGFB" . SPARSER::PROTEIN)
    ("important developmental genes" . SPARSER::GENE)
    ("RAS/ERK" . SPARSER::COLLECTION) ("PLC" . SPARSER::PROTEIN)
    ("potential direct targets" . SPARSER::TARGET-PROTEIN)
    ("NuRD-associated HDACs" . SPARSER::PROTEIN)
    ("HDAC1 and HDAC2" . SPARSER::COLLECTION)
    ("repressors" . SPARSER::REPRESSOR)
    ("a more primitive state" . SPARSER::BIO-STATE) ("GGAA" . SPARSER::PROTEIN)
    ("RAS/MAPK" . SPARSER::COLLECTION) ("vorinostat" . SPARSER::DRUG)
    ("HDAC" . SPARSER::PROTEIN) ("HDACs" . SPARSER::PROTEIN)
    ("SIRT1 and SUV39H1" . SPARSER::COLLECTION)
    ("NCEH1, SPRY1, ADORA1, and TGFBR1" . SPARSER::COLLECTION)
    ("a fungal metabolite" . SPARSER::MOLECULE)
    ("metabolite" . SPARSER::MOLECULE) ("Chaetocin" . SPARSER::DRUG)
    ("NCEH1, SPRY1, ADORA1, or TGFBR1" . SPARSER::COLLECTION)
    ("SUV39H1 or SIRT1" . SPARSER::COLLECTION) ("helicase" . SPARSER::PROTEIN)
    ("nucleosome" . SPARSER::PROTEIN)
    ("SPRY1 and ADORA1" . SPARSER::COLLECTION)
    ("NCEH1 and TGFBR1" . SPARSER::COLLECTION)
    ("only two genes" . SPARSER::GENE) ("NES " . SPARSER::PROTEIN)
    ("NES" . SPARSER::PROTEIN) ("BCL11B and 26 genes" . SPARSER::COLLECTION)
    ("differentially expressed genes" . SPARSER::GENE)
    ("a control siRNA (siControl) or two different siRNAs"
     . SPARSER::COLLECTION)
    ("B-3" . SPARSER::PROTEIN) ("methylcellulose" . SPARSER::DRUG)
    ("the first six amino acids of EWS (Δ22)" . SPARSER::PROTEIN)
    ("a modular protein" . SPARSER::PROTEIN)
    ("a retroviral shRNA" . SPARSER::PROTEIN)
    ("RNA and protein" . SPARSER::COLLECTION)
    ("a haploinsufficient tumor suppressor" . SPARSER::SUPPRESSOR)
    ("a pivotal developmental transcription factor" . SPARSER::PROTEIN)
    ("gyrus" . SPARSER::PROTEIN) ("dentate" . SPARSER::PROTEIN)
    ("Bcl11b" . SPARSER::PROTEIN)
    ("suppressors or oncogenes" . SPARSER::COLLECTION)
    ("ERG, ETV1, ETV4, or FEV" . SPARSER::COLLECTION)
    ("FEV" . SPARSER::PROTEIN) ("ERG" . SPARSER::PROTEIN)
    ("ETS" . SPARSER::PROTEIN)
    ("an aberrant transcription factor" . SPARSER::PROTEIN)
    ("the causative oncogene" . SPARSER::ONCOGENE)
    ("EWS/FLI" . SPARSER::COLLECTION) ("FLI" . SPARSER::PROTEIN)
    ("EWS" . SPARSER::PROTEIN) ("phospholipase C" . SPARSER::PROTEIN)
    ("Spry1" . SPARSER::PROTEIN) ("HDAC2" . SPARSER::PROTEIN)
    ("HDAC1" . SPARSER::PROTEIN) ("p57KIP2" . SPARSER::PROTEIN)
    ("sirtuin1" . SPARSER::PROTEIN)
    ("suppressor of variegation 3–9 homolog 1" . SPARSER::PROTEIN)
    ("TGFBR1" . SPARSER::PROTEIN)
    ("transforming growth factor beta receptor 1" . SPARSER::PROTEIN)
    ("ADORA1" . SPARSER::PROTEIN) ("adenosine A1 receptor" . SPARSER::PROTEIN)
    ("Sprouty1" . SPARSER::PROTEIN) ("NCEH1" . SPARSER::PROTEIN)
    ("Neutral cholesterol ester hydrolase 1" . SPARSER::PROTEIN)
    ("B-10" . SPARSER::PROTEIN) ("P-ERK1/2" . SPARSER::PROTEIN)
    ("Messenger RNA" . SPARSER::RNA)
    ("Reverse-transcriptase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SIRT1" . SPARSER::PROTEIN) ("Ex-527" . SPARSER::DRUG)
    ("SUV39H1" . SPARSER::PROTEIN) ("LSD1" . SPARSER::PROTEIN)
    ("histone deacetylase" . SPARSER::PROTEIN) ("EF-2" . SPARSER::PROTEIN)
    ("CHD4" . SPARSER::PROTEIN) ("TLX1" . SPARSER::PROTEIN)
    ("co-factor" . SPARSER::MOLECULE) ("CTIP2" . SPARSER::PROTEIN)
    ("TGFBR2" . SPARSER::PROTEIN) ("GLI1" . SPARSER::PROTEIN)
    ("NR0B1" . SPARSER::PROTEIN) ("NKX2.2" . SPARSER::PROTEIN)
    ("ETV4" . SPARSER::PROTEIN) ("ETV1" . SPARSER::PROTEIN)
    ("ETS family" . SPARSER::PROTEIN) ("FLI1" . SPARSER::PROTEIN)
    ("EWSR1" . SPARSER::PROTEIN) ("SPRY1" . SPARSER::PROTEIN)
    ("BCL11B" . SPARSER::PROTEIN) ("a potential biomarker" . SPARSER::MOLECULE)
    ("Rituximab" . SPARSER::DRUG) ("Locostatin" . SPARSER::DRUG)
    ("RKIP-KEAP 1-NRF2" . SPARSER::COLLECTION)
    ("taxol and cisplatin" . SPARSER::COLLECTION) ("taxol" . SPARSER::DRUG)
    ("IkB" . SPARSER::PROTEIN) ("NFkB" . SPARSER::PROTEIN)
    ("Kappa" . SPARSER::PROTEIN-FAMILY) ("c-RAF" . SPARSER::COLLECTION)
    ("RAF-1-" . SPARSER::PROTEIN) ("PARP and capase-9" . SPARSER::COLLECTION)
    ("hematoxylin" . SPARSER::MOLECULE) ("BrdU" . SPARSER::DRUG)
    ("EGF, and EGFR and ERK" . SPARSER::COLLECTION)
    ("RAF/MEK/ERK" . SPARSER::COLLECTION)
    ("three different histological subtypes" . SPARSER::PROTEIN)
    ("ASC" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CAM" . SPARSER::PROTEIN)
    ("protein (RKIP)" . SPARSER::PROTEIN) ("RKIP" . SPARSER::PROTEIN)
    ("raf" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("nitric oxide" . SPARSER::MOLECULE) ("NRF2" . SPARSER::PROTEIN)
    ("KEAP 1" . SPARSER::PROTEIN)
    ("G-protein–coupled receptor kinase-2" . SPARSER::PROTEIN)
    ("RAF-1" . SPARSER::PROTEIN) ("β-Tubulin" . SPARSER::PROTEIN)
    ("caspase-9" . SPARSER::PROTEIN) ("Na3VO4" . SPARSER::MOLECULE)
    ("Raf-1" . SPARSER::PROTEIN)
    ("phosphatidylethanolamine-binding protein1" . SPARSER::PROTEIN)
    ("PEBP1" . SPARSER::PROTEIN)
    ("simultaneously two different proteins" . SPARSER::PROTEIN)
    ("still lacks enough appropriate biomarkers" . SPARSER::MOLECULE)
    ("endocrine" . SPARSER::PROTEIN) ("ER(-)/PR(-)/HER2" . SPARSER::COLLECTION)
    ("the most essential components" . SPARSER::COMPONENT)
    ("metalloproteinases and vascular endothelial" . SPARSER::COLLECTION)
    ("stromal Cav-1" . SPARSER::PROTEIN) ("varieties" . SPARSER::VARIETY)
    ("TNM" . SPARSER::MOLECULE) ("log-rank" . SPARSER::PROTEIN)
    ("Cav-1 and α-SMA" . SPARSER::COLLECTION) ("absorptive" . SPARSER::PROTEIN)
    ("Cav-1 and GC" . SPARSER::COLLECTION)
    ("Various receptors and signaling molecules" . SPARSER::COLLECTION)
    ("CAV1 , CAV2 , and CAV3" . SPARSER::COLLECTION)
    ("caveolin-2 and caveolin-3" . SPARSER::COLLECTION)
    ("caveolin" . SPARSER::PROTEIN) ("epithelial Cav-1" . SPARSER::PROTEIN)
    ("CAFs" . SPARSER::PROTEIN)
    ("epithelial or stromal caveolin-1" . SPARSER::PROTEIN)
    ("Aims" . SPARSER::PROTEIN) ("vascular endothelial" . SPARSER::PROTEIN)
    ("caveolin-3" . SPARSER::PROTEIN) ("caveolin-2" . SPARSER::PROTEIN)
    ("CAV3" . SPARSER::PROTEIN) ("CAV2" . SPARSER::PROTEIN)
    ("CAV1" . SPARSER::PROTEIN) ("Cav-1" . SPARSER::PROTEIN)
    ("caveolin-1" . SPARSER::PROTEIN) ("peroxisome" . SPARSER::PROTEIN)
    ("NSAIDs" . SPARSER::DRUG) ("drugs, and celecoxib" . SPARSER::COLLECTION)
    ("celecoxib" . SPARSER::DRUG) ("– 1" . SPARSER::PROTEIN)
    ("HRs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("met" . SPARSER::AMINO-ACID)
    ("COX-1 and COX-2" . SPARSER::COLLECTION)
    ("prostanoids" . SPARSER::MOLECULE) ("Cyclooxygenase" . SPARSER::PROTEIN)
    ("COX" . SPARSER::PROTEIN) ("cyclooxygenase" . SPARSER::PROTEIN)
    ("HR  " . SPARSER::PROTEIN) ("cyclooxygenase-2" . SPARSER::PROTEIN)
    ("COX-1" . SPARSER::PROTEIN) ("Cox-2" . SPARSER::PROTEIN)
    ("COX-2" . SPARSER::PROTEIN) ("Cyclooxygenase-2" . SPARSER::PROTEIN)
    ("particular hMSH6 or hPMS2" . SPARSER::COLLECTION)
    ("hMSH6 or hPMS2" . SPARSER::COLLECTION)
    ("the sporadic colorectal cancer group" . SPARSER::MOLECULE)
    ("the most common pathogenic deleterious variants" . SPARSER::VARIANT)
    ("most common pathogenic variants" . SPARSER::VARIANT)
    ("Trim" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("sporadic cancer group" . SPARSER::MOLECULE)
    ("both hMLH1 (I 2  = 80.10%) and hMSH2 (I 2  = 79.98%)"
     . SPARSER::COLLECTION)
    ("the sporadic cancer group" . SPARSER::MOLECULE)
    ("AC−" . SPARSER::PROTEIN) ("AC" . SPARSER::PROTEIN)
    ("hMLH1 , hMSH2 , hMSH6 , hPMS1 and hPMS2" . SPARSER::COLLECTION)
    ("HNPCC" . SPARSER::PROTEIN) ("hMLH1 and hMSH2" . SPARSER::COLLECTION)
    ("hMSH3" . SPARSER::PROTEIN) ("hPMS2" . SPARSER::PROTEIN)
    ("hPMS1" . SPARSER::PROTEIN) ("hMSH6" . SPARSER::PROTEIN)
    ("autosomal dominant" . SPARSER::PROTEIN) ("hMSH 2" . SPARSER::PROTEIN)
    ("hMSH2" . SPARSER::PROTEIN) ("hMLH1" . SPARSER::PROTEIN)
    ("MET and TGF-β" . SPARSER::COLLECTION)
    ("authentic primary HCC" . SPARSER::PROTEIN)
    ("tie" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Casein" . SPARSER::PROTEIN)
    ("Cyclins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GSEA and Oncomine" . SPARSER::COLLECTION) ("GSEA" . SPARSER::PROTEIN)
    ("previously published prognostic subtypes" . SPARSER::PROTEIN)
    ("958 orthologous genes" . SPARSER::GENE)
    ("chemotherapeutic drugs" . SPARSER::DRUG)
    ("Afp and Igf2" . SPARSER::COLLECTION)
    ("Afp, Igf2, H19, and Gpc3 as well-established HCC biomarkers"
     . SPARSER::COLLECTION)
    ("Western Blot" . SPARSER::PROTEIN) ("NF-κB and IGF" . SPARSER::COLLECTION)
    ("DNA-damage" . SPARSER::DNA) ("SLR" . SPARSER::PROTEIN)
    ("triglyceride" . SPARSER::MOLECULE) ("HCCs" . SPARSER::PROTEIN)
    ("alcohol" . SPARSER::DRUG) ("SIRT6 and genes" . SPARSER::COLLECTION)
    ("KO" . SPARSER::PROTEIN) ("Sirt6-KO" . SPARSER::COLLECTION)
    ("AFP" . SPARSER::PROTEIN) ("Gpc3" . SPARSER::PROTEIN)
    ("Afp" . SPARSER::PROTEIN) ("hepatocytes" . SPARSER::PROTEIN)
    ("deacetylases" . SPARSER::PROTEIN) ("NAD" . SPARSER::MOLECULE)
    ("GSTM3" . SPARSER::PROTEIN) ("GSTM5" . SPARSER::PROTEIN)
    ("GSTM4" . SPARSER::PROTEIN) ("GSTM2" . SPARSER::PROTEIN)
    ("GSTM1" . SPARSER::PROTEIN) ("ABCG8" . SPARSER::PROTEIN)
    ("ABCB1" . SPARSER::PROTEIN) ("ABCB11" . SPARSER::PROTEIN)
    ("CYP51A1" . SPARSER::PROTEIN) ("CYP4F12" . SPARSER::PROTEIN)
    ("CYP4A22" . SPARSER::PROTEIN) ("CYP3A4" . SPARSER::PROTEIN)
    ("CYP2J5" . SPARSER::PROTEIN) ("CYP2J2" . SPARSER::PROTEIN)
    ("CYP2F1" . SPARSER::PROTEIN) ("CYP2" . SPARSER::PROTEIN)
    ("CYP2B6" . SPARSER::PROTEIN) ("MAP4K4" . SPARSER::PROTEIN)
    ("MAP3K8" . SPARSER::PROTEIN) ("MAP3K1" . SPARSER::PROTEIN)
    ("CDK1" . SPARSER::PROTEIN) ("CDC34" . SPARSER::PROTEIN)
    ("CDC20" . SPARSER::PROTEIN) ("B1–2" . SPARSER::PROTEIN)
    ("A2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CHI 2" . SPARSER::PROTEIN)
    ("NAD(+)" . SPARSER::MOLECULE) ("CD95" . SPARSER::PROTEIN)
    ("Glypican-3" . SPARSER::PROTEIN) ("Igf2" . SPARSER::PROTEIN)
    ("Alpha-fetoprotein" . SPARSER::PROTEIN) ("Sirt6" . SPARSER::PROTEIN)
    ("SIRT6" . SPARSER::PROTEIN) ("Sirtuin 6" . SPARSER::PROTEIN)
    ("TGFα and EGFR" . SPARSER::COLLECTION)
    ("MET and EGFR" . SPARSER::COLLECTION) ("liganded" . SPARSER::MOLECULE)
    ("MET and Src" . SPARSER::COLLECTION) ("docetaxel" . SPARSER::DRUG)
    ("IGF and MET" . SPARSER::COLLECTION)
    ("IGF-1/IGF-1R" . SPARSER::COLLECTION) ("sh" . SPARSER::PROTEIN-FAMILY)
    ("Sh" . SPARSER::PROTEIN-FAMILY) ("Integrins" . SPARSER::PROTEIN)
    ("IGF-1 or HGF" . SPARSER::COLLECTION)
    ("a functional MET" . SPARSER::PROTEIN)
    ("IGF-1 and HGF" . SPARSER::COLLECTION) ("dasatinib" . SPARSER::DRUG)
    ("HGF/MET" . SPARSER::COLLECTION) ("Dai" . SPARSER::PROTEIN)
    ("18h and 24h" . SPARSER::COLLECTION) ("EGFR/MET" . SPARSER::COLLECTION)
    ("IGF-1R and MET" . SPARSER::COLLECTION)
    ("Src, Akt, and Erk1/2" . SPARSER::COLLECTION)
    ("MET and IGF-1R" . SPARSER::COLLECTION) ("MET/EGFR" . SPARSER::COLLECTION)
    ("EGFR and MET" . SPARSER::COLLECTION)
    ("receptors and other receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("EGFR and RET" . SPARSER::COLLECTION) ("plexins" . SPARSER::PROTEIN)
    ("Integrin" . SPARSER::PROTEIN)
    ("Hepatocyte Growth Factor (HGF)" . SPARSER::PROTEIN)
    ("a 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("actinomycin D" . SPARSER::MOLECULE) ("IGF-1 -" . SPARSER::PROTEIN)
    ("Insulin like Growth Factor" . SPARSER::PROTEIN)
    ("IGF1-R" . SPARSER::PROTEIN) ("Actinomycin D" . SPARSER::MOLECULE)
    ("DU 145" . SPARSER::PROTEIN) ("CD44" . SPARSER::PROTEIN)
    ("scatter factor" . SPARSER::PROTEIN)
    ("hepatocyte growth factor" . SPARSER::PROTEIN)
    ("c- met" . SPARSER::PROTEIN) ("c-Met" . SPARSER::PROTEIN)
    ("IGF-1-" . SPARSER::PROTEIN)
    ("Hepatocyte Growth Factor" . SPARSER::PROTEIN) ("18h" . SPARSER::PROTEIN)
    ("Insulin Like Growth Factor" . SPARSER::PROTEIN)
    ("Epidermal Growth Factor Receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GAB2 and presenilin 1" . SPARSER::COLLECTION) ("PKB" . SPARSER::PROTEIN)
    ("GSK3B and GAB2" . SPARSER::COLLECTION)
    ("GAB2 and GSK3B" . SPARSER::COLLECTION)
    ("amyloid-precursor protein (APP)" . SPARSER::PROTEIN)
    ("APP" . SPARSER::PROTEIN) ("Tau" . SPARSER::PROTEIN)
    ("GSK3B (rs6438552) and SORL1 (rs641120) polymorphisms"
     . SPARSER::COLLECTION)
    ("SORL1 , GAB2 and GSK3B" . SPARSER::COLLECTION)
    ("modifiers" . SPARSER::MOLECULE)
    ("PICALM , CLU, CR1 and SORL1" . SPARSER::COLLECTION)
    ("CLU" . SPARSER::PROTEIN) ("PICALM" . SPARSER::PROTEIN)
    ("the sporadic form" . SPARSER::FORM)
    ("GSK3B (rs6438552) and SORL1 (rs641120) and Alzheimer"
     . SPARSER::COLLECTION)
    ("SORL1 (rs641120) and Alzheimer" . SPARSER::COLLECTION)
    ("APOE" . SPARSER::PROTEIN) ("presenilin 1" . SPARSER::PROTEIN)
    ("scaffolding protein" . SPARSER::PROTEIN)
    ("amyloid-beta peptide" . SPARSER::PROTEIN)
    ("amyloid-precursor protein" . SPARSER::PROTEIN) ("- 3" . SPARSER::PROTEIN)
    ("Mix 1" . SPARSER::PROTEIN) ("CR1" . SPARSER::PROTEIN)
    ("apolipoprotein E" . SPARSER::PROTEIN) ("SORL1" . SPARSER::PROTEIN)
    ("GSK3B" . SPARSER::PROTEIN) ("GAB2" . SPARSER::PROTEIN)
    ("classic, desmoplastic and extensive nodularity tumor variants"
     . SPARSER::VARIANT)
    ("SHH" . SPARSER::PROTEIN) ("the medulloblastoma histological type" . TYPE)
    ("the serpentine receptors" . SPARSER::PROTEIN)
    ("these soluble proteins" . SPARSER::PROTEIN)
    ("SFRP1, SFRP2 and SFRP3" . SPARSER::COLLECTION)
    ("gene and protein" . SPARSER::COLLECTION) ("FAM" . SPARSER::PROTEIN)
    ("receptors or SUFU" . SPARSER::COLLECTION) ("SUFU" . SPARSER::PROTEIN)
    ("ERBB" . SPARSER::PROTEIN) ("classic variants" . SPARSER::VARIANT)
    ("APC and AXIN1" . SPARSER::COLLECTION)
    ("these three genes and their relation" . SPARSER::COLLECTION)
    ("CTNNB1, AXIN1 and APC" . SPARSER::COLLECTION)
    ("Rho" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CTNNB1, APC and AXIN1" . SPARSER::COLLECTION)
    ("any specific histological type" . TYPE)
    ("AAC (two cases) and GAC" . SPARSER::COLLECTION)
    ("GGA" . SPARSER::MOLECULE) ("TGT" . SPARSER::PROTEIN)
    ("AAC" . SPARSER::PROTEIN) ("histological type" . TYPE)
    ("the classic type" . TYPE)
    ("Adenomatous polyposis coli (APC) protein and AXIN1"
     . SPARSER::COLLECTION)
    ("protein and AXIN1" . SPARSER::COLLECTION) ("Shh" . SPARSER::PROTEIN)
    ("five histological subtypes" . SPARSER::PROTEIN)
    ("CSF" . SPARSER::PROTEIN)
    ("classic, desmoplastic and extensive nodularity medulloblastoma variants"
     . SPARSER::VARIANT)
    ("CTNNB1, APC, AXIN1 and WNT1" . SPARSER::COLLECTION)
    ("the histological type" . TYPE)
    ("histological medulloblastoma type" . TYPE)
    ("histological subtypes" . SPARSER::PROTEIN)
    ("Sonic hedgehog" . SPARSER::PROTEIN) ("SFRP2" . SPARSER::PROTEIN)
    ("SFRP1" . SPARSER::PROTEIN)
    ("frizzled-related protein" . SPARSER::PROTEIN) ("MUC1" . SPARSER::PROTEIN)
    ("ubiquitin specific peptidase 9, X-linked" . SPARSER::PROTEIN)
    ("USP9X" . SPARSER::PROTEIN) ("ERBB1" . SPARSER::PROTEIN)
    ("HPRT1" . SPARSER::PROTEIN) ("Colon cancer" . SPARSER::PROTEIN)
    ("DNase I" . SPARSER::PROTEIN) ("α-catenin" . SPARSER::PROTEIN)
    ("glycogen synthase kinase-3" . SPARSER::PROTEIN)
    ("miR-26a directly targets PRKCD" . SPARSER::PROTEIN)
    ("cyclin E-cdk2" . SPARSER::COLLECTION) ("cdks" . SPARSER::PROTEIN)
    ("cyclins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cdk2-cyclin" . SPARSER::COLLECTION) ("E2F1-3" . SPARSER::COLLECTION)
    ("cdk" . SPARSER::HUMAN-PROTEIN-FAMILY) ("etoposide" . SPARSER::PROTEIN)
    ("which targets PRKCD" . SPARSER::PROTEIN)
    ("vascular smooth muscle" . SPARSER::PROTEIN) ("glial" . SPARSER::PROTEIN)
    ("mir-26a" . SPARSER::PROTEIN) ("p27 and JNK" . SPARSER::COLLECTION)
    ("miR-26a" . SPARSER::PROTEIN)
    ("total and phosphorylated JNK and p27" . SPARSER::COLLECTION)
    ("JNK and p27" . SPARSER::COLLECTION)
    ("pre–miR-26a or anti–miR-26a" . SPARSER::COLLECTION)
    ("pre–miR-26a" . SPARSER::COLLECTION) ("pre" . SPARSER::PROTEIN)
    ("pre-miR" . SPARSER::COLLECTION)
    ("blot and luciferase" . SPARSER::COLLECTION)
    ("SENP5-pmirGLO" . SPARSER::COLLECTION) ("pmirGLO" . SPARSER::PROTEIN)
    ("PRKCD-pmirGLO" . SPARSER::COLLECTION)
    ("potential miR-26a target genes" . SPARSER::GENE)
    ("PRKCD and SENP5" . SPARSER::COLLECTION) ("RQ" . SPARSER::MOLECULE)
    ("oncogenes or tumor suppressor genes ( xref – xref )"
     . SPARSER::COLLECTION)
    ("mRNA/protein" . SPARSER::COLLECTION) ("innovative drugs" . SPARSER::DRUG)
    ("prolactin, GH, ACTH, and TSH" . SPARSER::COLLECTION)
    ("TSH" . SPARSER::PROTEIN) ("GH" . SPARSER::PROTEIN)
    ("prolactin" . SPARSER::PROTEIN)
    ("cyclin E and cyclin" . SPARSER::COLLECTION) ("PRKCD" . SPARSER::PROTEIN)
    ("miR" . SPARSER::PROTEIN)
    ("diagnostic and prognostic biomarkers" . SPARSER::MOLECULE)
    ("ACTH" . SPARSER::PROTEIN) ("miRNA" . SPARSER::PROTEIN)
    ("microRNA" . SPARSER::RNA) ("adenoma gene 1" . SPARSER::PROTEIN)
    ("PLAG1" . SPARSER::PROTEIN)
    ("enhancer of zeste homolog 2" . SPARSER::PROTEIN)
    ("mothers against decapentaplegic homolog 1" . SPARSER::PROTEIN)
    ("SMAD1" . SPARSER::PROTEIN) ("JNK protein" . SPARSER::PROTEIN)
    ("p19" . SPARSER::PROTEIN) ("transcription factor 1" . SPARSER::PROTEIN)
    ("E2F" . SPARSER::PROTEIN-FAMILY) ("cdk2" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cyclin D" . SPARSER::PROTEIN) ("procaspase 3" . SPARSER::PROTEIN)
    ("Anti–" . SPARSER::ANTIBODY) ("Glo 3" . SPARSER::PROTEIN)
    ("p27 Kip1" . SPARSER::PROTEIN) ("dual-luciferase" . SPARSER::PROTEIN)
    ("m1" . SPARSER::MOLECULE) ("SENP5" . SPARSER::PROTEIN)
    ("SUMO1" . SPARSER::PROTEIN)
    ("glyceraldehyde 3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("miR-21" . SPARSER::PROTEIN) ("let-7" . SPARSER::RNA)
    ("miR-16" . SPARSER::PROTEIN)
    ("dimeric or multimeric complexes" . SPARSER::BIO-COMPLEX)
    ("Hook" . SPARSER::PROTEIN-FAMILY)
    ("the only available N 6-modified analog" . SPARSER::ANALOG)
    ("nitrogen" . SPARSER::MOLECULE)
    ("a capillary matrix" . SPARSER::PROTEIN-FAMILY)
    ("MR-Nbs1" . SPARSER::COLLECTION) ("rapamycin" . SPARSER::DRUG)
    ("FKBP" . SPARSER::PROTEIN) ("head-linked dimers" . SPARSER::DIMER)
    ("more Rad50's" . SPARSER::PROTEIN)
    ("only one Rad50 and dimers" . SPARSER::COLLECTION)
    ("Rad50 and dimers" . SPARSER::COLLECTION)
    ("two Rad50 and two Mre11" . SPARSER::COLLECTION)
    ("hooks" . SPARSER::PROTEIN-FAMILY)
    ("a short flexible linker" . SPARSER::LINKER)
    ("zinc-binding" . SPARSER::PROTEIN) ("Mirin" . SPARSER::DRUG)
    ("DV" . SPARSER::MOLECULE) ("histidine" . SPARSER::AMINO-ACID)
    ("endonucleases" . SPARSER::PROTEIN) ("ions" . SPARSER::MOLECULE)
    ("a quantitative Western blot" . SPARSER::PROTEIN)
    ("GST-p53" . SPARSER::COLLECTION) ("-ATP" . SPARSER::ATP)
    ("analogs" . SPARSER::ANALOG)
    ("Mre11 nuclease activity and the Rad50" . SPARSER::COLLECTION)
    ("Mre11/Rad50" . SPARSER::COLLECTION) ("apex" . SPARSER::PROTEIN)
    ("SMC" . SPARSER::PROTEIN) ("The eukaryotic forms" . SPARSER::FORM)
    ("meiotic" . SPARSER::DRUG) ("MR" . SPARSER::PROTEIN)
    ("mirin" . SPARSER::DRUG) ("analog" . SPARSER::ANALOG)
    ("nuclease" . SPARSER::PROTEIN) ("hook" . SPARSER::PROTEIN-FAMILY)
    ("Mre11/Rad50/Nbs1" . SPARSER::COLLECTION) ("RAD50" . SPARSER::PROTEIN)
    ("MRE11" . SPARSER::PROTEIN) ("A-T" . SPARSER::PROTEIN)
    ("G protein" . SPARSER::PROTEIN) ("m protein" . SPARSER::PROTEIN)
    ("G 2 /M" . SPARSER::PROTEIN) ("exonuclease activity" . SPARSER::PROTEIN)
    ("manganese chloride" . SPARSER::DRUG) ("mre11" . SPARSER::PROTEIN)
    ("Spo11" . SPARSER::PROTEIN) ("endonuclease activity" . SPARSER::PROTEIN)
    ("manganese-dependent" . SPARSER::PROTEIN)
    ("Kinase Activity" . SPARSER::PROTEIN)
    ("Nuclease Activity" . SPARSER::PROTEIN) ("NBS1" . SPARSER::PROTEIN)
    ("AP20187" . SPARSER::DRUG) ("AMP-PNP" . SPARSER::MOLECULE)
    ("H 2 O 2" . SPARSER::DRUG) ("Chk2" . SPARSER::PROTEIN)
    ("Fv1" . SPARSER::PROTEIN) ("FKBP12" . SPARSER::PROTEIN)
    ("ATP-dependent" . SPARSER::PROTEIN)
    ("nuclease activity" . SPARSER::PROTEIN)
    ("Ataxia Telangiectasia-Mutated" . SPARSER::PROTEIN)
    ("Nbs1" . SPARSER::PROTEIN) ("Rad50" . SPARSER::PROTEIN)
    ("Mre11" . SPARSER::PROTEIN) ("scaffold" . SPARSER::SCAFFOLD)
    ("MPG" . SPARSER::PROTEIN)
    ("the only full-length nuclear receptor" . SPARSER::RECEPTOR)
    ("RXR" . SPARSER::PROTEIN) ("AF1 or AF2" . SPARSER::COLLECTION)
    ("h11-h12" . SPARSER::COLLECTION)
    ("the typical agonist conformation" . SPARSER::BIO-CONFORMATION)
    ("Met" . SPARSER::AMINO-ACID) ("oxime" . SPARSER::MOLECULE)
    ("the phytoestrogen resveratrol and two synthetic estrogens"
     . SPARSER::COLLECTION)
    ("estrogens" . SPARSER::MOLECULE) ("resveratrol" . SPARSER::PROTEIN)
    ("phytoestrogen" . SPARSER::MOLECULE) ("scaffolds" . SPARSER::SCAFFOLD)
    ("mRNA and IL-6" . SPARSER::COLLECTION)
    ("c- MYC or CCND1" . SPARSER::COLLECTION)
    ("coactivators and gene" . SPARSER::COLLECTION)
    ("agonists" . SPARSER::AGONIST)
    ("renilla-ERα-YFP-ERβ" . SPARSER::COLLECTION)
    ("YFP-ERα-renilla-ERα" . SPARSER::COLLECTION) ("YFP" . SPARSER::PROTEIN)
    ("BRET" . SPARSER::PROTEIN) ("GREB1 and pS2" . SPARSER::COLLECTION)
    ("CCND1 and c- MYC" . SPARSER::COLLECTION)
    ("c- MYC, GREB1 and pS2" . SPARSER::COLLECTION) ("SRC" . SPARSER::PROTEIN)
    ("Receptor" . SPARSER::RECEPTOR)
    ("Faslodex or Fulvestrant" . SPARSER::COLLECTION)
    ("Fulvestrant" . SPARSER::DRUG) ("Faslodex" . SPARSER::DRUG)
    ("AF2 or a mixture" . SPARSER::COLLECTION)
    ("AF1 or DBD/hinge" . SPARSER::COLLECTION)
    ("Many eukaryotic proteins" . SPARSER::PROTEIN) ("SERMs" . SPARSER::DRUG)
    ("SERM" . SPARSER::DRUG) ("Ligands" . SPARSER::LIGAND)
    ("Chemical" . SPARSER::MOLECULE)
    ("the bulky side group" . SPARSER::MOLECULE) ("agonist" . SPARSER::AGONIST)
    ("directly reposition h12" . SPARSER::PROTEIN)
    ("Antagonists" . SPARSER::MOLECULE)
    ("histones and the associated transcriptional proteins"
     . SPARSER::COLLECTION)
    ("the associated transcriptional proteins" . SPARSER::PROTEIN)
    ("histones" . SPARSER::PROTEIN)
    ("active or inactive" . SPARSER::COLLECTION)
    ("energetically more stable complexes" . SPARSER::BIO-COMPLEX)
    ("c-MYC" . SPARSER::PROTEIN) ("LT1" . SPARSER::PROTEIN)
    ("SRC2" . SPARSER::PROTEIN) ("GAL4" . SPARSER::PROTEIN)
    ("CCP4" . SPARSER::PROTEIN) ("c- MYC" . SPARSER::PROTEIN)
    ("Cyclin D1" . SPARSER::PROTEIN) ("ICI 182,780" . SPARSER::DRUG)
    ("SRC1" . SPARSER::PROTEIN)
    ("steroid receptor coactivator-1" . SPARSER::PROTEIN)
    ("estrogen-receptor" . SPARSER::PROTEIN)
    ("Interleukin-6" . SPARSER::PROTEIN) ("ERβ" . SPARSER::PROTEIN)
    ("h11" . SPARSER::PROTEIN) ("h12" . SPARSER::PROTEIN)
    ("dihydrofolate reductase" . SPARSER::PROTEIN) ("PPARγ" . SPARSER::PROTEIN)
    ("GREB1" . SPARSER::PROTEIN)
    ("complexes or the expression" . SPARSER::COLLECTION)
    ("p53 and chromatin" . SPARSER::COLLECTION)
    ("ARID1A, BRG1 and SNF" . SPARSER::COLLECTION)
    ("ARID1A and TP53" . SPARSER::COLLECTION)
    ("the larger chromatin" . SPARSER::PROTEIN) ("example" . SPARSER::EXAMPLE)
    ("PTEN and TP53" . SPARSER::COLLECTION) ("Vang" . SPARSER::PROTEIN)
    ("Lax" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a potent tetrameric transcription factor" . SPARSER::PROTEIN)
    ("Adjuvant" . SPARSER::DRUG) ("IIIB" . SPARSER::DRUG)
    ("IB" . SPARSER::DRUG)
    ("the SWI/SNF complex and its subunits" . SPARSER::COLLECTION)
    ("cel" . SPARSER::PROTEIN)
    ("Eukaryotic SWI/SNF complexes" . SPARSER::BIO-COMPLEX)
    ("thymine" . SPARSER::MOLECULE) ("adenine" . SPARSER::NUCLEOBASE)
    ("SWI/SNF" . SPARSER::COLLECTION) ("nucleosomes" . SPARSER::BIO-COMPLEX)
    ("sucrose" . SPARSER::MOLECULE) ("SNF" . SPARSER::PROTEIN-FAMILY)
    ("SWI" . SPARSER::PROTEIN) ("p53/BAF250a" . SPARSER::COLLECTION)
    ("BAF250a−" . SPARSER::PROTEIN) ("wt" . SPARSER::PROTEIN)
    ("p53-wt" . SPARSER::COLLECTION) ("p53 and BAF250a" . SPARSER::COLLECTION)
    ("p53 and the BAF250a protein" . SPARSER::COLLECTION)
    ("BAF250a" . SPARSER::PROTEIN)
    ("the rarer histologic subtypes" . SPARSER::PROTEIN)
    ("BRG1" . SPARSER::PROTEIN) ("HIC1" . SPARSER::PROTEIN)
    ("protein 1A" . SPARSER::PROTEIN) ("ARID1A" . SPARSER::PROTEIN)
    ("BAF250" . SPARSER::PROTEIN) ("mei" . SPARSER::MOLECULE)
    ("either glycine (Gly, GGG) or arginine (Arg, AGG)" . SPARSER::COLLECTION)
    ("AGG" . SPARSER::MOLECULE) ("GGG" . SPARSER::MOLECULE)
    ("rank" . SPARSER::PROTEIN) ("fgfr4" . SPARSER::PROTEIN)
    ("Platinum" . SPARSER::MOLECULE)
    ("tyrosine kinase receptor" . SPARSER::PROTEIN)
    ("Fibroblast growth factor receptor 4" . SPARSER::PROTEIN)
    ("FGFR4" . SPARSER::PROTEIN)
    ("fibroblast growth factor receptor 4" . SPARSER::PROTEIN)
    ("a c-Jun target gene ( xref ; xref ; xref ) and an AR corepressor ( xref ; xref ; xref )"
     . SPARSER::COLLECTION)
    ("CREB binding protein (CBP)" . SPARSER::PROTEIN)
    ("AR and c-Jun" . SPARSER::COLLECTION) ("metabolites" . SPARSER::PROTEIN)
    ("PSA , KLK2 and TMPRSS2" . SPARSER::COLLECTION)
    ("AR/c-Jun" . SPARSER::COLLECTION)
    ("AP-1 and steroid hormone" . SPARSER::COLLECTION) ("Brdu" . SPARSER::DRUG)
    ("LNCaP-rtTA-c-Jun" . SPARSER::COLLECTION)
    ("c-Jun or c-Jun63A/73A" . SPARSER::COLLECTION)
    ("Jun" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the transactivation domain-deleted mutant" . SPARSER::MUTANT)
    ("A Venus fluorescent protein" . SPARSER::PROTEIN)
    ("alanine" . SPARSER::AMINO-ACID) ("-promoter" . SPARSER::PROMOTER)
    ("jun" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TAM" . SPARSER::PROTEIN)
    ("phosphorylatable" . SPARSER::PROTEIN)
    ("PCDH11 ( xref ) and UGT2B15 ( xref )" . SPARSER::COLLECTION)
    ("KLK2 and transmembrane protease, serine 2" . SPARSER::COLLECTION)
    ("exogenous Flag-c-Jun" . SPARSER::COLLECTION)
    ("Flag-c-Jun" . SPARSER::COLLECTION) ("LZ" . SPARSER::PROTEIN)
    ("doxycycline" . SPARSER::DRUG) ("COS" . SPARSER::MOLECULE)
    ("the mouse mammary tumor virus promoter (MMTV-Luc) and the probasin promoters (ARR3tk-luc)"
     . SPARSER::COLLECTION)
    ("ARR3tk-luc" . SPARSER::COLLECTION) ("MMTV-Luc" . SPARSER::COLLECTION)
    ("Luc" . SPARSER::PROTEIN) ("MMTV" . SPARSER::PROTEIN)
    ("NFAT ( xref ) and nuclear hormone receptors ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("NF-kappaB ( xref ; xref ), NFAT ( xref ) and nuclear hormone receptors ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("NFAT" . SPARSER::PROTEIN) ("c-Jun and Fos" . SPARSER::COLLECTION)
    ("JunB and Fos" . SPARSER::COLLECTION) ("JunB" . SPARSER::PROTEIN)
    ("c-Jun/AP-1" . SPARSER::COLLECTION) ("CRE" . SPARSER::PROTEIN)
    ("AMP" . SPARSER::AMP) ("TRE" . SPARSER::PROTEIN)
    ("a homodimer or a heterodimer" . SPARSER::COLLECTION)
    ("Fos and activating transcription factor 2" . SPARSER::COLLECTION)
    ("Fos" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("heterodimer" . SPARSER::HETERODIMER)
    ("a basic region leucine zipper (bZIP) transcription factor"
     . SPARSER::PROTEIN)
    ("bZIP" . SPARSER::PROTEIN-FAMILY) ("leucine" . SPARSER::AMINO-ACID)
    ("testosterone or dihydrotestosterone (DHT)" . SPARSER::COLLECTION)
    ("testosterone or dihydrotestosterone" . SPARSER::COLLECTION)
    ("homodimer" . SPARSER::HOMODIMER) ("DHT" . SPARSER::PROTEIN)
    ("dihydrotestosterone" . SPARSER::DRUG)
    ("testosterone" . SPARSER::MOLECULE)
    ("protein and mRNA" . SPARSER::COLLECTION) ("c- Jun" . SPARSER::PROTEIN)
    ("CREB binding protein" . SPARSER::PROTEIN)
    ("aspartic acids" . SPARSER::AMINO-ACID)
    ("transmembrane protease, serine 2" . SPARSER::PROTEIN)
    ("ARR3" . SPARSER::PROTEIN) ("Texas Red" . SPARSER::DRUG)
    ("RNase A" . SPARSER::PROTEIN) ("CA-3" . SPARSER::PROTEIN)
    ("AT-3" . SPARSER::PROTEIN) ("TG-3" . SPARSER::PROTEIN)
    ("PCDH11" . SPARSER::PROTEIN) ("A-3" . SPARSER::PROTEIN)
    ("KLK2" . SPARSER::PROTEIN) ("CC-3" . SPARSER::PROTEIN)
    ("G-3" . SPARSER::PROTEIN) ("Anti-β" . SPARSER::PROTEIN)
    ("NF-kappaB" . SPARSER::PROTEIN)
    ("AP-1 transcription factor" . SPARSER::PROTEIN)
    ("ATF2" . SPARSER::PROTEIN)
    ("activating transcription factor 2" . SPARSER::PROTEIN)
    ("AF-2" . SPARSER::PROTEIN) ("AF-1" . SPARSER::PROTEIN)
    ("activator protein 1" . SPARSER::PROTEIN)
    ("Androgen receptor" . SPARSER::PROTEIN) ("maps" . SPARSER::PROTEIN)
    ("Apaf-1 and pc-9" . SPARSER::COLLECTION)
    ("the central NBD" . SPARSER::PROTEIN)
    ("cytochrome c and ATP/dATP" . SPARSER::COLLECTION)
    ("NBD/HD2" . SPARSER::COLLECTION)
    ("monomers and apoptosomes" . SPARSER::COLLECTION)
    ("pro" . SPARSER::AMINO-ACID) ("dimer" . SPARSER::DIMER)
    ("the WHD and the β-phosphate" . SPARSER::COLLECTION)
    ("Asp" . SPARSER::AMINO-ACID) ("salt" . SPARSER::MOLECULE)
    ("HD1-WHD" . SPARSER::COLLECTION) ("parts" . SPARSER::COMPONENT)
    ("NBD-HD1" . SPARSER::COLLECTION) ("arm and 8-blade" . SPARSER::COLLECTION)
    ("NBD-HD1-WHD" . SPARSER::COLLECTION) ("WHD" . SPARSER::PROTEIN)
    ("WHD-HD2" . SPARSER::COLLECTION) ("phospholipid" . SPARSER::PHOSPHOLIPID)
    ("arm and WHD" . SPARSER::COLLECTION)
    ("cytochrome c and the 7-blade propeller" . SPARSER::COLLECTION)
    ("heme" . SPARSER::PROTEIN)
    ("cytochrome c and the β-propellers" . SPARSER::COLLECTION)
    ("linker" . SPARSER::LINKER) ("linkers" . SPARSER::LINKER)
    ("NOD and HD2" . SPARSER::COLLECTION)
    ("bovine cytochrome c" . SPARSER::PROTEIN) ("NBD" . SPARSER::PROTEIN)
    ("clamp" . SPARSER::PROTEIN-FAMILY) ("propeller" . SPARSER::PROTEIN-FAMILY)
    ("ADP and ATP" . SPARSER::COLLECTION)
    ("conformations" . SPARSER::BIO-CONFORMATION) ("ADP" . SPARSER::PROTEIN)
    ("apoptosomes" . SPARSER::BIO-COMPLEX) ("Drosophila" . SPARSER::PROTEIN)
    ("elegans" . SPARSER::PROTEIN) ("dimers or monomers" . SPARSER::COLLECTION)
    ("Apaf-1 and pc" . SPARSER::COLLECTION) ("dimers" . SPARSER::DIMER)
    ("dATP or ATP" . SPARSER::COLLECTION) ("NTP" . SPARSER::MOLECULE)
    ("dATP" . SPARSER::DATP) ("cardiolipin" . SPARSER::MOLECULE)
    ("metazoans" . SPARSER::PROTEIN-FAMILY)
    ("the inactive Apaf-1 monomer" . SPARSER::MONOMER)
    ("induced-fit" . SPARSER::PROTEIN-FAMILY) ("fit" . SPARSER::PROTEIN-FAMILY)
    ("propellers" . SPARSER::PROTEIN-FAMILY) ("electron" . SPARSER::MOLECULE)
    ("apoptosome" . SPARSER::BIO-COMPLEX) ("Apoptosome" . SPARSER::BIO-COMPLEX)
    ("two domains" . SPARSER::PROTEIN) ("CED4" . SPARSER::PROTEIN)
    ("CED-4" . SPARSER::PROTEIN) ("3D" . SPARSER::PROTEIN-FAMILY)
    ("A 3D" . SPARSER::PROTEIN) ("E-2" . SPARSER::PROTEIN)
    ("HD2" . SPARSER::PROTEIN) ("HD1" . SPARSER::PROTEIN)
    ("domain 1" . SPARSER::PROTEIN) ("Cytochrome c" . SPARSER::PROTEIN)
    ("activating factor" . SPARSER::PROTEIN)
    ("procaspase-9" . SPARSER::PROTEIN) ("cytochrome c" . SPARSER::PROTEIN)
    ("Apaf-1" . SPARSER::PROTEIN)
    ("promoter or enhancer" . SPARSER::COLLECTION)
    ("LEF-1/TCF" . SPARSER::COLLECTION)
    ("a nucleocytoplasmic shuttling protein" . SPARSER::PROTEIN)
    ("a casein kinase 1 (CK1) and GSK3 substrate" . SPARSER::COLLECTION)
    ("APC and Axin" . SPARSER::COLLECTION)
    ("Catenin" . SPARSER::PROTEIN-FAMILY)
    ("β-catenin and a phosphorylated APC 20 amino acid" . SPARSER::COLLECTION)
    ("Ck1 and Ck2" . SPARSER::COLLECTION) ("Ck1" . SPARSER::PROTEIN)
    ("calmodulin" . SPARSER::PROTEIN) ("Ck" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("casein" . SPARSER::PROTEIN) ("PKA" . SPARSER::PROTEIN)
    ("a dominant-negative PKCδ" . SPARSER::PROTEIN)
    ("CYCLIN D1 and C-MYC" . SPARSER::COLLECTION)
    ("neither PKCε ( xref ) nor PKCβII (not shown)" . SPARSER::COLLECTION)
    ("esters" . SPARSER::MOLECULE) ("phorbol" . SPARSER::DRUG)
    ("nitrocellulose" . SPARSER::MOLECULE) ("pDN-PKCδ" . SPARSER::COLLECTION)
    ("calreticulin" . SPARSER::PROTEIN)
    ("PKCδ or a wild-type PKCδ" . SPARSER::COLLECTION)
    ("a dominant-negative form" . SPARSER::FORM)
    ("Luciferase" . SPARSER::PROTEIN) ("ells" . SPARSER::PROTEIN)
    ("normal APC" . SPARSER::PROTEIN)
    ("mutant truncated APC" . SPARSER::PROTEIN)
    ("transfectants" . SPARSER::PROTEIN)
    ("ligand and rottlerin" . SPARSER::COLLECTION)
    ("c-myc and cyclin D1" . SPARSER::COLLECTION)
    ("Wnt target genes and cell proliferation" . SPARSER::COLLECTION)
    ("Canonical Wnt Target Genes and Cell Proliferation" . SPARSER::COLLECTION)
    ("ligand-" . SPARSER::LIGAND) ("siRNA-PKCδ" . SPARSER::COLLECTION)
    ("Dr" . SPARSER::MOLECULE) ("β-catenin-" . SPARSER::PROTEIN)
    ("GSK3 and PDK1" . SPARSER::COLLECTION) ("rottlerin" . SPARSER::DRUG)
    ("β-catenin/TCF" . SPARSER::COLLECTION)
    ("Dvl" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKCδ and APC" . SPARSER::COLLECTION) ("atypical PKCζ" . SPARSER::PROTEIN)
    ("delta" . SPARSER::PROTEIN)
    ("the atypical PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKCα and PKCδ" . SPARSER::COLLECTION)
    ("PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("at least nine PKC isoforms" . SPARSER::ISOFORM)
    ("what role APC" . SPARSER::PROTEIN)
    ("Axin, GSK3β, and Casein kinase 1" . SPARSER::COLLECTION)
    ("the dysplastic ACF" . SPARSER::PROTEIN) ("ACF" . SPARSER::PROTEIN)
    ("sporadic and hereditary forms" . SPARSER::FORM)
    ("an intestinal tumor suppressor gene" . SPARSER::PROTEIN)
    ("C-MYC and CYCLIN D1" . SPARSER::COLLECTION)
    ("The tumor suppressor Adenomatous Polyposis coli ( APC ) gene"
     . SPARSER::GENE)
    ("transcriptional regulators" . SPARSER::PROTEIN-FAMILY)
    ("casein kinase 1" . SPARSER::PROTEIN)
    ("Ck2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cyclin-dependent kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Wnt 3a" . SPARSER::PROTEIN) ("S33" . SPARSER::PROTEIN)
    ("GSK3" . SPARSER::PROTEIN) ("NKD1" . SPARSER::PROTEIN)
    ("LEF-1" . SPARSER::PROTEIN) ("NaHCO 3" . SPARSER::DRUG)
    ("SP5" . SPARSER::PROTEIN) ("trypsin inhibitor" . SPARSER::PROTEIN)
    ("Protein A" . SPARSER::PROTEIN) ("GSK-3" . SPARSER::PROTEIN)
    ("β-tubulin" . SPARSER::PROTEIN) ("TCF4" . SPARSER::PROTEIN)
    ("E-5" . SPARSER::PROTEIN) ("β catenin" . SPARSER::PROTEIN)
    ("proto-oncogenes" . SPARSER::PROTO-ONCOGENE) ("PKCζ" . SPARSER::PROTEIN)
    ("PKCε" . SPARSER::PROTEIN) ("PKCβ" . SPARSER::PROTEIN)
    ("CK1" . SPARSER::PROTEIN) ("Casein kinase 1" . SPARSER::PROTEIN)
    ("GSK3β" . SPARSER::PROTEIN) ("B-RAF" . SPARSER::PROTEIN)
    ("second type" . SPARSER::PROTEIN) ("CYCLIN D1" . SPARSER::PROTEIN)
    ("C-MYC" . SPARSER::PROTEIN) ("PKCδ" . SPARSER::PROTEIN)
    ("reliable biomarkers" . SPARSER::MOLECULE) ("NCT" . SPARSER::PROTEIN)
    ("BI" . SPARSER::PROTEIN) ("FAB" . SPARSER::PROTEIN)
    ("cyclin" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PLK" . SPARSER::PROTEIN)
    ("his" . SPARSER::AMINO-ACID) ("cytometry and MRI" . SPARSER::COLLECTION)
    ("phospho-Histone" . SPARSER::PROTEIN)
    ("the classical anti-mitotic drug Nocodazole" . SPARSER::DRUG)
    ("Nocodazole" . SPARSER::DRUG)
    ("translational controlled tumour protein (TCTP)" . SPARSER::PROTEIN)
    ("protein (TCTP)" . SPARSER::PROTEIN) ("TCTP" . SPARSER::PROTEIN)
    ("NPM1 and Histone" . SPARSER::COLLECTION) ("HLA" . SPARSER::PROTEIN)
    ("cytarabine, doxorubicin and NMS-P937" . SPARSER::COLLECTION)
    ("cytarabine and doxorubicin" . SPARSER::COLLECTION)
    ("aggressive and resistant forms" . SPARSER::FORM)
    ("cytarabine and anthracycline" . SPARSER::COLLECTION)
    ("Drugs" . SPARSER::DRUG) ("Inhibitor" . SPARSER::INHIBITOR)
    ("MRI" . SPARSER::PROTEIN)
    ("the tumour suppressor gene CDKN2A (p16 INK4A ) and MTAP (methylthioadenosine phosphorylase)"
     . SPARSER::COLLECTION)
    ("MTAP" . SPARSER::PROTEIN)
    ("LAMP1, D13S319 and ATM" . SPARSER::COLLECTION) ("ATM" . SPARSER::PROTEIN)
    ("p12" . SPARSER::PROTEIN) ("NPM1 , CEBPA and FLT3" . SPARSER::COLLECTION)
    ("CBFβ/MYH11" . SPARSER::COLLECTION) ("AML1/ETO" . SPARSER::COLLECTION)
    ("ETO" . SPARSER::PROTEIN) ("arm" . SPARSER::PROTEIN)
    ("FISH" . SPARSER::PROTEIN)
    ("preliminary drug testing and mechanistic studies" . SPARSER::COLLECTION)
    ("preliminary drug" . SPARSER::DRUG)
    ("CD34, CD117, CD25, CD3, CD7 and CD19" . SPARSER::COLLECTION)
    ("NOD" . SPARSER::PROTEIN)
    ("a possible therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("this mitotic kinase" . SPARSER::KINASE) ("ser/thr" . SPARSER::COLLECTION)
    ("thr" . SPARSER::AMINO-ACID)
    ("anthracyclines and cytosine arabinoside" . SPARSER::COLLECTION)
    ("anthracyclines" . SPARSER::MOLECULE) ("NCAM" . SPARSER::PROTEIN)
    ("CEBPA" . SPARSER::PROTEIN) ("MST " . SPARSER::PROTEIN)
    ("MST" . SPARSER::PROTEIN) ("multidrug" . SPARSER::PROTEIN)
    ("B/Cdk1" . SPARSER::PROTEIN) ("cyclin B1" . SPARSER::PROTEIN)
    ("neuronal cell adhesion molecule" . SPARSER::PROTEIN)
    ("INK4" . SPARSER::PROTEIN) ("p16" . SPARSER::PROTEIN)
    ("Histone-H3" . SPARSER::PROTEIN) ("anti-mitotic" . SPARSER::MOLECULE)
    ("PLK 1" . SPARSER::PROTEIN) ("HLA-A" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("methylthioadenosine phosphorylase" . SPARSER::PROTEIN)
    ("p16 INK4A" . SPARSER::PROTEIN) ("CDKN2A" . SPARSER::PROTEIN)
    ("LAMP1" . SPARSER::PROTEIN) ("p13" . SPARSER::PROTEIN)
    ("p14" . SPARSER::PROTEIN) ("IL-3R" . SPARSER::PROTEIN)
    ("CD11c" . SPARSER::PROTEIN) ("CD13" . SPARSER::PROTEIN)
    ("CD117" . SPARSER::PROTEIN) ("CD18" . SPARSER::PROTEIN)
    ("CD25" . SPARSER::PROTEIN) ("CD123" . SPARSER::PROTEIN)
    ("CD10" . SPARSER::PROTEIN) ("interleukin-3" . SPARSER::PROTEIN)
    ("granulocyte-macrophage colony-stimulating factor" . SPARSER::PROTEIN)
    ("MYH11" . SPARSER::PROTEIN) ("CBFβ" . SPARSER::PROTEIN)
    ("AML1" . SPARSER::PROTEIN) ("CD19" . SPARSER::PROTEIN)
    ("CD7" . SPARSER::PROTEIN) ("HLA-DR" . SPARSER::PROTEIN)
    ("CD34" . SPARSER::PROTEIN) ("G2/M" . SPARSER::PROTEIN)
    ("ara-C" . SPARSER::DRUG) ("cytosine arabinoside" . SPARSER::DRUG)
    ("DNMT3" . SPARSER::PROTEIN) ("PLK1" . SPARSER::PROTEIN)
    ("Polo-Like Kinase" . SPARSER::PROTEIN) ("M5a" . SPARSER::DRUG)
    ("NS8" . SPARSER::PROTEIN) ("CD56" . SPARSER::PROTEIN)
    ("N-cadherin–specific monoclonal antibodies" . SPARSER::ANTIBODY)
    ("EGFR and ERK" . SPARSER::COLLECTION)
    ("cadherins, or cadherin" . SPARSER::COLLECTION)
    ("cadherins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the mesenchymal markers vimentin" . SPARSER::PROTEIN)
    ("These efficient siRNAs" . SPARSER::PROTEIN)
    ("the epithelial marker E-cadherin and the mesenchymal marker vimentin"
     . SPARSER::COLLECTION)
    ("N-cadherin and EMT" . SPARSER::COLLECTION)
    ("the mesenchymal protein vimentin" . SPARSER::PROTEIN)
    ("PI3K/Akt" . SPARSER::COLLECTION) ("Erk" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EGFR and Akt" . SPARSER::COLLECTION)
    ("catenins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a mesenchymal cadherin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("traditional chemotherapeutic drugs" . SPARSER::DRUG)
    ("pH 3" . SPARSER::MOLECULE) ("CCK-8" . SPARSER::PROTEIN)
    ("p-42" . SPARSER::PROTEIN)
    ("fluorescein isothiocyanate" . SPARSER::MOLECULE)
    ("anti–β" . SPARSER::PROTEIN) ("anti–" . SPARSER::ANTIBODY)
    ("epidermal growth-factor receptor" . SPARSER::PROTEIN)
    ("nocodazole" . SPARSER::DRUG) ("Ser, Thr, and Tyr" . SPARSER::COLLECTION)
    ("caspase and PARP" . SPARSER::COLLECTION) ("caspase" . SPARSER::PROTEIN)
    ("TNF-α and UV" . SPARSER::COLLECTION)
    ("nuclear EGFR and repairs non-homologous" . SPARSER::COLLECTION)
    ("cyclin D1, iNOS and B-Myb" . SPARSER::COLLECTION)
    ("iNOS" . SPARSER::PROTEIN)
    ("AURKA and the EGFR-L858R mutant" . SPARSER::COLLECTION)
    ("AURKA, pEGFR-Thr654 and pEGFR-Ser1046" . SPARSER::COLLECTION)
    ("pAKT" . SPARSER::PROTEIN-FAMILY) ("EGFR-AURKA" . SPARSER::COLLECTION)
    ("AURKA-KD" . SPARSER::COLLECTION) ("KD" . SPARSER::PROTEIN)
    ("in situ PLA and western blot" . SPARSER::COLLECTION)
    ("the antibodies tested negative" . SPARSER::ANTIBODY)
    ("fluorescent-labeled oligonucleotides" . SPARSER::MOLECULE)
    ("the secondary antibodies" . SPARSER::ANTIBODY)
    ("secondary antibodies" . SPARSER::ANTIBODY)
    ("oligonucleotides" . SPARSER::MOLECULE)
    ("ERK and AKT" . SPARSER::COLLECTION)
    ("EGFR and STAT5" . SPARSER::COLLECTION)
    ("serine and threonine" . SPARSER::COLLECTION) ("Ligand" . SPARSER::LIGAND)
    ("EGF and TGFα" . SPARSER::COLLECTION)
    ("Gefitinib (Iressa) and Erlotinib (Tarceva)" . SPARSER::COLLECTION)
    ("Tarceva" . SPARSER::DRUG) ("Erlotinib" . SPARSER::DRUG)
    ("Iressa" . SPARSER::DRUG) ("Gefitinib" . SPARSER::DRUG)
    ("receptor tyrosine kinase (RTK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EGFR and AURKA" . SPARSER::COLLECTION)
    ("AURKA and EGFR" . SPARSER::COLLECTION) ("AURKA" . SPARSER::PROTEIN)
    ("PLA" . SPARSER::PROTEIN) ("EGFR antibody" . SPARSER::PROTEIN)
    ("TNFα" . SPARSER::PROTEIN) ("Grb2" . SPARSER::PROTEIN)
    ("DNA-PK" . SPARSER::PROTEIN) ("B-Myb" . SPARSER::PROTEIN)
    ("R-R" . SPARSER::PROTEIN) ("K-R" . SPARSER::PROTEIN)
    ("K-X" . SPARSER::PROTEIN) ("R-T" . SPARSER::PROTEIN)
    ("TGFα" . SPARSER::PROTEIN) ("SQC" . SPARSER::PROTEIN)
    ("gefitinib or erlotinib" . SPARSER::COLLECTION)
    ("methionine" . SPARSER::AMINO-ACID) ("cisplatin" . SPARSER::DRUG)
    ("c-MET and KRAS" . SPARSER::COLLECTION)
    ("intra-tumoral foci" . SPARSER::PROTEIN) ("sharp" . SPARSER::PROTEIN)
    ("SD" . SPARSER::PROTEIN) ("paclitaxel" . SPARSER::DRUG)
    ("KRAS and c-MET" . SPARSER::COLLECTION) ("GFR" . SPARSER::PROTEIN)
    ("phosphatidylinositol 3-kinase/AKT" . SPARSER::COLLECTION)
    ("platinum" . SPARSER::MOLECULE)
    ("gefitinib and erlotinib" . SPARSER::COLLECTION)
    ("Epidermal growth factor receptor-tyrosine kinase" . SPARSER::COLLECTION)
    ("Fragment" . SPARSER::FRAGMENT) ("Polymerase" . SPARSER::PROTEIN)
    ("ARMS" . SPARSER::PROTEIN) ("IIIb" . SPARSER::DRUG)
    ("IIb" . SPARSER::DRUG) ("EGFR-TKIs" . SPARSER::COLLECTION)
    ("aims" . SPARSER::PROTEIN) ("EGFR-tyrosine kinase" . SPARSER::COLLECTION)
    ("alpha polypeptide)" . SPARSER::PROTEIN)
    ("phosphoinositide-3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("2-4" . SPARSER::PROTEIN) ("EGFR-TKI" . SPARSER::PROTEIN)
    ("c-MET" . SPARSER::PROTEIN) ("ribosomes" . SPARSER::BIO-COMPLEX)
    ("the ribosomal L9 protein" . SPARSER::PROTEIN) ("EF" . SPARSER::PROTEIN)
    ("ribosome" . SPARSER::BIO-COMPLEX)
    ("larger protein–protein complexes" . SPARSER::BIO-COMPLEX)
    ("reverse transcriptase and diphthine synthase" . SPARSER::COLLECTION)
    ("SER" . SPARSER::AMINO-ACID) ("disulfide" . SPARSER::MOLECULE)
    ("cysteines" . SPARSER::AMINO-ACID) ("MES" . SPARSER::MOLECULE)
    ("pepMNK1 and pepMKK2" . SPARSER::COLLECTION)
    ("a serine and a glutamine residue" . SPARSER::COLLECTION)
    ("MAP kinase-activated protein kinase (MAPKAP)" . SPARSER::COLLECTION)
    ("MAP kinase-activated protein kinase" . SPARSER::COLLECTION)
    ("ERK2-AAG" . SPARSER::COLLECTION) ("cysteine" . SPARSER::AMINO-ACID)
    ("ethanol" . SPARSER::PROTEIN) ("mercapto" . SPARSER::MOLECULE)
    ("Cys" . SPARSER::AMINO-ACID)
    ("a symmetry-related MAPK molecule" . SPARSER::MOLECULE)
    ("Ile" . SPARSER::AMINO-ACID) ("Glu" . SPARSER::AMINO-ACID)
    ("apo ERK2 and the ERK2–pepMNK1 protein–peptide complex"
     . SPARSER::COLLECTION)
    ("pepMNK1" . SPARSER::PROTEIN)
    ("a crystallographic symmetry-related kinase molecule" . SPARSER::MOLECULE)
    ("solution" . SPARSER::MOLECULE) ("malonate" . SPARSER::DRUG)
    ("MIB" . SPARSER::PROTEIN) ("PEG" . SPARSER::PROTEIN)
    ("a symmetry-related kinase molecule" . SPARSER::MOLECULE)
    ("ERK2–pepMNK1" . SPARSER::COLLECTION)
    ("ERK2, p38α and JNK1" . SPARSER::COLLECTION) ("MAPKs" . SPARSER::PROTEIN)
    ("Mitogen-activated protein kinase (MAPK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LM" . SPARSER::MOLECULE) ("protein–protein" . SPARSER::COLLECTION)
    ("LMs" . SPARSER::MOLECULE)
    ("weakly binding protein–peptide complexes" . SPARSER::BIO-COMPLEX)
    ("alanines" . SPARSER::AMINO-ACID) ("apo" . SPARSER::PROTEIN)
    ("ribosomal protein" . SPARSER::PROTEIN)
    ("diphthine synthase" . SPARSER::PROTEIN)
    ("aspartyl-tRNA synthetase" . SPARSER::PROTEIN)
    ("glutamine residue" . SPARSER::MOLECULE) ("RSK1" . SPARSER::PROTEIN)
    ("activated protein kinase" . SPARSER::PROTEIN) ("MKK2" . SPARSER::PROTEIN)
    ("P28482" . SPARSER::PROTEIN) ("MNK1" . SPARSER::PROTEIN)
    ("p38α" . SPARSER::PROTEIN)
    ("Mitogen-activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("extracellular signal-regulated kinase 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ERK2" . SPARSER::PROTEIN) ("p-STAT-3" . SPARSER::COLLECTION)
    ("10% neutral buffered formalin" . SPARSER::MOLECULE)
    ("the dorsolateral lobe" . SPARSER::PROTEIN)
    ("formalin" . SPARSER::MOLECULE) ("pCIneo-hTERT" . SPARSER::COLLECTION)
    ("TS" . SPARSER::PROTEIN) ("dNTPs" . SPARSER::MOLECULE)
    ("ethidium" . SPARSER::MOLECULE) ("agarose" . SPARSER::MOLECULE)
    ("-AGA" . SPARSER::COLLECTION) ("-TCC" . SPARSER::COLLECTION)
    ("-GTTCTTGGCTTTCAGGATGG-3" . SPARSER::COLLECTION)
    ("-TGTTTCTGGATTTGCAGGTG-3" . SPARSER::COLLECTION)
    ("GAT" . SPARSER::PROTEIN) ("ACG" . SPARSER::PROTEIN)
    ("ACA" . SPARSER::PROTEIN) ("AGA" . SPARSER::PROTEIN)
    ("ATT" . SPARSER::PROTEIN) ("AAG" . SPARSER::PROTEIN)
    ("TCC" . SPARSER::PROTEIN) ("reagent (GIBCO)" . SPARSER::MOLECULE)
    ("zol" . SPARSER::DRUG) ("TRI" . SPARSER::PROTEIN)
    ("mRNA and hTERT" . SPARSER::COLLECTION)
    ("β-actin (loading control) and HRP-conjugated secondary antibody"
     . SPARSER::COLLECTION)
    ("HRP-conjugated secondary antibody" . SPARSER::PROTEIN)
    ("Tween 20 (TPBS)" . SPARSER::MOLECULE) ("HRP" . SPARSER::PROTEIN)
    ("NaCl" . SPARSER::PROTEIN) ("PVDF" . SPARSER::DRUG)
    ("Proteins" . SPARSER::PROTEIN) ("Glycine" . SPARSER::AMINO-ACID)
    ("polyacrylamide" . SPARSER::DRUG) ("mercaptoethanol" . SPARSER::MOLECULE)
    ("Tris" . SPARSER::MOLECULE) ("bromophenol" . SPARSER::MOLECULE)
    ("SDS" . SPARSER::PROTEIN) ("glycerol" . SPARSER::PROTEIN)
    ("iodide (PI)" . SPARSER::PROTEIN) ("reagent" . SPARSER::MOLECULE)
    ("phosphatidylserine" . SPARSER::PROTEIN) ("HEPES" . SPARSER::MOLECULE)
    ("streptomycin" . SPARSER::DRUG) ("Type" . TYPE) ("San" . SPARSER::PROTEIN)
    ("Solution" . SPARSER::MOLECULE)
    ("Sp1, c-Myc and β-actin" . SPARSER::COLLECTION)
    ("p-STAT3" . SPARSER::COLLECTION) ("c-Myc and Sp1" . SPARSER::COLLECTION)
    ("Protein" . SPARSER::PROTEIN) ("CDDO and CDDO-Me" . SPARSER::COLLECTION)
    ("a potential molecular target" . SPARSER::TARGET-PROTEIN)
    ("c-Myc and NF-κB" . SPARSER::COLLECTION)
    ("Akt or Akt" . SPARSER::COLLECTION)
    ("significantly affecting basal Akt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Sp1, Sp3 and Sp4" . SPARSER::COLLECTION)
    ("cyclin D1, survivin and VEGF" . SPARSER::COLLECTION)
    ("survivin" . SPARSER::PROTEIN) ("Sp3 and Sp4" . SPARSER::COLLECTION)
    ("genistein, sulforaphane and curcumin" . SPARSER::COLLECTION)
    ("curcumin" . SPARSER::DRUG) ("sulforaphane" . SPARSER::PROTEIN)
    ("genistein" . SPARSER::PROTEIN)
    ("both basal and phosphorylated hTERT" . SPARSER::PROTEIN)
    ("TERT and p-TERT" . SPARSER::COLLECTION) ("p-TERT" . SPARSER::COLLECTION)
    ("dorso-lateral prostate lobe (DLP)" . SPARSER::PROTEIN)
    ("lobe (DLP)" . SPARSER::PROTEIN) ("PIN" . SPARSER::PROTEIN)
    ("DLP" . SPARSER::PROTEIN) ("siRNA-hTERT" . SPARSER::COLLECTION)
    ("siRNA or hTERT" . SPARSER::COLLECTION)
    ("basal Akt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p-Akt" . SPARSER::COLLECTION)
    ("c-Myc, Sp1 and NF-κB" . SPARSER::COLLECTION)
    ("c-Myc, Sp1, NF-κB and STAT-3" . SPARSER::COLLECTION)
    ("TRAP" . SPARSER::PROTEIN)
    ("both hTERT and p-hTERT" . SPARSER::COLLECTION)
    ("p-hTERT" . SPARSER::COLLECTION) ("ser" . SPARSER::AMINO-ACID)
    ("GAPDH" . SPARSER::PROTEIN)
    ("hTERT and its telomerase activity" . SPARSER::COLLECTION)
    ("Akt and NF-κB" . SPARSER::COLLECTION) ("RNA (TERC)" . SPARSER::RNA)
    ("hsp90 and p23" . SPARSER::COLLECTION) ("TERC" . SPARSER::PROTEIN)
    ("the hexameric DNA" . SPARSER::DNA) ("nucleoprotein" . SPARSER::PROTEIN)
    ("TGF-β/Smad" . SPARSER::COLLECTION) ("PI3K/Akt/mTOR" . SPARSER::PROTEIN)
    ("Smad" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CDDOs" . SPARSER::DRUG)
    ("triterpenoids" . SPARSER::MOLECULE) ("ester" . SPARSER::MOLECULE)
    ("CDDO" . SPARSER::DRUG)
    ("TERT and its regulatory proteins" . SPARSER::COLLECTION)
    ("TERT" . SPARSER::PROTEIN) ("PINs" . SPARSER::PROTEIN)
    ("human telomerase reverse transcriptase (hTERT) and its telomerase activity"
     . SPARSER::COLLECTION)
    ("hTERT" . SPARSER::PROTEIN) ("triterpenoid" . SPARSER::MOLECULE)
    ("oleanane" . SPARSER::DRUG) ("dien" . SPARSER::MOLECULE)
    ("NP 40" . SPARSER::MOLECULE) ("F-12" . SPARSER::PROTEIN)
    ("p65" . SPARSER::PROTEIN) ("Sp4" . SPARSER::PROTEIN)
    ("Sp3" . SPARSER::PROTEIN) ("STAT-3" . SPARSER::PROTEIN)
    ("Sp1" . SPARSER::PROTEIN) ("c-Myc" . SPARSER::PROTEIN)
    ("catalytic subunit" . SPARSER::PROTEIN) ("PARP-1" . SPARSER::PROTEIN)
    ("apoptosis-inducing" . SPARSER::PROTEIN) ("p23" . SPARSER::PROTEIN)
    ("hsp90" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TEP-1" . SPARSER::PROTEIN)
    ("protein-1" . SPARSER::PROTEIN) ("Nrf2" . SPARSER::PROTEIN)
    ("Erk1/2" . SPARSER::PROTEIN) ("telomerase activity" . SPARSER::PROTEIN)
    ("telomerase reverse transcriptase" . SPARSER::PROTEIN)
    ("CDDO-Me" . SPARSER::DRUG)
    ("the translational regulator hnRNP K" . SPARSER::PROTEIN)
    ("Uba6" . SPARSER::PROTEIN) ("Uba1" . SPARSER::PROTEIN)
    ("Uba" . SPARSER::PROTEIN) ("Tak1" . SPARSER::PROTEIN)
    ("Tak" . SPARSER::PROTEIN) ("ubiquitin and ATP" . SPARSER::COLLECTION)
    ("ATP" . SPARSER::ATP) ("HuR" . SPARSER::PROTEIN)
    ("Tob-matrix" . SPARSER::COLLECTION) ("Tob" . SPARSER::PROTEIN)
    ("Caspase-3 and His-hnRNP K" . SPARSER::COLLECTION)
    ("Caspase" . SPARSER::PROTEIN) ("PARP and hnRNP K" . SPARSER::COLLECTION)
    ("hnRNP K and PARP" . SPARSER::COLLECTION)
    ("both hnRNP K and the N-terminal fragment" . SPARSER::COLLECTION)
    ("a smaller fraction" . SPARSER::COMPONENT) ("His" . SPARSER::AMINO-ACID)
    ("ctrl or Casp-3" . SPARSER::COLLECTION)
    ("a non-specific control siRNA (ctrl) or two individual siRNAs"
     . SPARSER::COLLECTION)
    ("ctrl" . SPARSER::PROTEIN) ("Puromycin" . SPARSER::DRUG)
    ("protein (XIAP)" . SPARSER::PROTEIN) ("XIAP" . SPARSER::PROTEIN)
    ("iodide" . SPARSER::PROTEIN) ("propidium" . SPARSER::MOLECULE)
    ("FITC" . SPARSER::MOLECULE) ("AnnexinV" . SPARSER::PROTEIN)
    ("Ac-DMQD-CHO" . SPARSER::COLLECTION) ("CHO" . SPARSER::PROTEIN)
    ("Caspase-3 and Caspase-7" . SPARSER::COLLECTION)
    ("butyrate" . SPARSER::PROTEIN) ("skeletal muscle" . SPARSER::PROTEIN)
    ("peptides" . SPARSER::PEPTIDE) ("trypsin" . SPARSER::PROTEIN)
    ("the internal peptide" . SPARSER::PEPTIDE)
    ("Antibodies" . SPARSER::ANTIBODY)
    ("an internal peptide" . SPARSER::PEPTIDE)
    ("protease" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Caspases" . SPARSER::PROTEIN) ("Mitochondria" . SPARSER::PROTEIN)
    ("mRNAs" . SPARSER::PROTEIN) ("KH" . SPARSER::MOLECULE)
    ("aa" . SPARSER::MOLECULE) ("puromycin" . SPARSER::DRUG)
    ("erythroid" . SPARSER::PROTEIN)
    ("its translational silenced state" . SPARSER::BIO-STATE)
    ("lipoxygenase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Erythroid" . SPARSER::PROTEIN) ("potassium chloride" . SPARSER::MOLECULE)
    ("or 2 " . SPARSER::MOLECULE) ("Bis-Tris" . SPARSER::MOLECULE)
    ("K1" . SPARSER::PROTEIN) ("Granzyme M" . SPARSER::PROTEIN)
    ("c-Src" . SPARSER::PROTEIN) ("D-G" . SPARSER::PROTEIN)
    ("YB-1" . SPARSER::PROTEIN) ("p53 cofactor" . SPARSER::PROTEIN)
    ("1–4" . SPARSER::PROTEIN) ("β-globin" . SPARSER::PROTEIN)
    ("RNA binding" . SPARSER::PROTEIN) ("p20" . SPARSER::PROTEIN)
    ("Casp-3" . SPARSER::PROTEIN) ("ADP-ribose" . SPARSER::MOLECULE)
    ("Caspase-7" . SPARSER::PROTEIN) ("p17" . SPARSER::PROTEIN)
    ("p34" . SPARSER::PROTEIN) ("aa 1" . SPARSER::PROTEIN)
    ("48 kD" . SPARSER::PROTEIN) ("HDM2" . SPARSER::PROTEIN)
    ("Caspase-3" . SPARSER::PROTEIN) ("HnRNP K" . SPARSER::PROTEIN)
    ("hnRNP K" . SPARSER::PROTEIN)
    ("Heterogeneous nuclear ribonucleoprotein K" . SPARSER::PROTEIN)
    ("15-LOX" . SPARSER::PROTEIN) ("therapeutics" . SPARSER::THERAPEUTICS)
    ("HER2, and basal-like" . SPARSER::COLLECTION)
    ("extracellular EpCAM" . SPARSER::PROTEIN)
    ("HER2 and EpCAM" . SPARSER::COLLECTION)
    ("EpCAM and HER2" . SPARSER::COLLECTION)
    ("special histological subtypes" . SPARSER::PROTEIN)
    ("ER, HER2, p53, CK5/6, and CK14" . SPARSER::COLLECTION)
    ("/HER2" . SPARSER::COLLECTION) ("/PR" . SPARSER::COLLECTION)
    ("HER2 and basal-like" . SPARSER::COLLECTION)
    ("medullary (84%) histological types" . TYPE)
    ("oestrogen receptor (ER) and progesterone receptor (PR)"
     . SPARSER::COLLECTION)
    ("receptor (ER)" . SPARSER::RECEPTOR)
    ("the breast cancer intrinsic subtypes" . SPARSER::PROTEIN)
    ("TMAs" . SPARSER::MOLECULE) ("FDA" . SPARSER::PROTEIN)
    ("monoclonal antibodies" . SPARSER::ANTIBODY)
    ("a calcium-independent homophilic cell adhesion molecule"
     . SPARSER::MOLECULE)
    ("PR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the different intrinsic subtypes" . SPARSER::PROTEIN)
    ("the intrinsic subtypes" . SPARSER::PROTEIN)
    ("intrinsic subtypes" . SPARSER::PROTEIN) ("EpCAM" . SPARSER::PROTEIN)
    ("CK14" . SPARSER::PROTEIN) ("CK5" . SPARSER::PROTEIN)
    ("C-4" . SPARSER::PROTEIN) ("NP40" . SPARSER::MOLECULE)
    ("F12" . SPARSER::PROTEIN) ("transmembrane protein" . SPARSER::PROTEIN)
    ("CD326" . SPARSER::PROTEIN) ("TACSTD1" . SPARSER::PROTEIN)
    ("epithelial cell adhesion molecule" . SPARSER::PROTEIN)
    ("Epithelial cell adhesion molecule" . SPARSER::PROTEIN)
    ("HIF-1α and FoxA2" . SPARSER::COLLECTION) ("FoxA2" . SPARSER::PROTEIN)
    ("AKR1C2, AKR1C3, and UGT2B15" . SPARSER::COLLECTION)
    ("androgens" . SPARSER::DRUG) ("PCa and CRPC" . SPARSER::COLLECTION)
    ("sterol and lipid" . SPARSER::COLLECTION) ("sterol" . SPARSER::PROTEIN)
    ("corepressors" . SPARSER::PROTEIN)
    ("Mdm2 and Siah2" . SPARSER::COLLECTION) ("AR-p300" . SPARSER::COLLECTION)
    ("AR-NCOR1" . SPARSER::COLLECTION) ("the naive PCa" . SPARSER::PROTEIN)
    ("C4-2 and Rv1" . SPARSER::COLLECTION) ("TMA" . SPARSER::MOLECULE)
    ("growth factor (HGF)" . SPARSER::GROWTH-FACTOR) ("HGF" . SPARSER::PROTEIN)
    ("phospho-histone" . SPARSER::PROTEIN)
    ("Ki67, and TUNEL" . SPARSER::COLLECTION)
    ("phosphorylated-histone" . SPARSER::PROTEIN) ("Pten" . SPARSER::PROTEIN)
    ("Tgfbr2" . SPARSER::PROTEIN) ("Prostatic" . SPARSER::PROTEIN)
    ("three-dimensional Matrigel" . SPARSER::PROTEIN)
    ("Matrigel" . SPARSER::PROTEIN) ("Siah2 or AR" . SPARSER::COLLECTION)
    ("Siah2 (e.g., NKX3.1, PMEPA1 ) or Mdm2 (e.g., TMPRSS2 )"
     . SPARSER::COLLECTION)
    ("Siah2 and Mdm2" . SPARSER::COLLECTION)
    ("NCOR1 and co-activator" . SPARSER::COLLECTION)
    ("p300 and NCOR1" . SPARSER::COLLECTION)
    ("AR, NCOR1, and co-activator" . SPARSER::COLLECTION)
    ("PSA, NKX3.1, and PMEPA1" . SPARSER::COLLECTION)
    ("NCOR1/AR" . SPARSER::COLLECTION) ("AR/NCOR1" . SPARSER::COLLECTION)
    ("Siah2, NCOR1, and AR" . SPARSER::COLLECTION)
    ("chromatins" . SPARSER::BIO-COMPLEX)
    ("AR ( xref ) or NCOR1 ( xref )" . SPARSER::COLLECTION)
    ("AR and NCOR1" . SPARSER::COLLECTION)
    ("ARE" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("PSA, NKX3.1 , and PMEPA1" . SPARSER::COLLECTION)
    ("enhancers" . SPARSER::PROTEIN)
    ("WT AR or G683A mutant AR ( xref )" . SPARSER::COLLECTION)
    ("WT AR or an AR mutant (G683A)" . SPARSER::COLLECTION)
    ("Siah2–AR" . SPARSER::COLLECTION) ("solvent" . SPARSER::MOLECULE)
    ("AR and Siah2" . SPARSER::COLLECTION)
    ("androgen–AR" . SPARSER::COLLECTION) ("AR–Siah2" . SPARSER::COLLECTION)
    ("SBD" . SPARSER::PROTEIN)
    ("purified GST-Siah2 induced polyubiquitination" . SPARSER::PROTEIN)
    ("GST-Siah2" . SPARSER::COLLECTION)
    ("Siah2, AR, and ubiquitin" . SPARSER::COLLECTION)
    ("polyubiquitination" . SPARSER::PROTEIN)
    ("polyubiquitinated" . SPARSER::PROTEIN) ("aRM" . SPARSER::PROTEIN)
    ("which forms stable complexes" . SPARSER::BIO-COMPLEX)
    ("Siah2 and AR" . SPARSER::COLLECTION) ("RM" . SPARSER::MOLECULE)
    ("the primary ARGs" . SPARSER::PROTEIN)
    ("58 primary PCa" . SPARSER::PROTEIN) ("Siah2-AR" . SPARSER::COLLECTION)
    ("lipid and cholesterol" . SPARSER::COLLECTION)
    ("lipids, cholesterol, and steroids" . SPARSER::COLLECTION)
    ("CS-FBS" . SPARSER::COLLECTION) ("siRNAs" . SPARSER::PROTEIN)
    ("GO" . SPARSER::PROTEIN) ("ARG" . SPARSER::PROTEIN)
    ("hypoxia-" . SPARSER::PROTEIN) ("IPA" . SPARSER::MOLECULE)
    ("LNCaP and Rv1" . SPARSER::COLLECTION)
    ("PSA, NKX3.1, PMEPA1, and SLC45A3" . SPARSER::COLLECTION)
    ("TMPRSS2 and FKBP5" . SPARSER::COLLECTION)
    ("LNCaP or Rv1" . SPARSER::COLLECTION)
    ("AR or Siah2" . SPARSER::COLLECTION) ("ARGs" . SPARSER::PROTEIN)
    ("normoxia and hypoxia" . SPARSER::COLLECTION)
    ("normoxia" . SPARSER::PROTEIN)
    ("hypoxia ( xref ) and hypoxia" . SPARSER::COLLECTION)
    ("Rv" . SPARSER::MOLECULE) ("FBS" . SPARSER::PROTEIN)
    ("CS" . SPARSER::PROTEIN) ("PSA" . SPARSER::PROTEIN)
    ("Target" . SPARSER::TARGET-PROTEIN) ("luminal" . SPARSER::DRUG)
    ("NKX3.1 and SPINK3" . SPARSER::COLLECTION)
    ("probasin and TMPRSS2" . SPARSER::COLLECTION)
    ("probasin" . SPARSER::PROTEIN)
    ("dorsal prostate lobes" . SPARSER::PROTEIN)
    ("the dorsal prostate lobes" . SPARSER::PROTEIN)
    ("the ventral lobe" . SPARSER::PROTEIN) ("lobes" . SPARSER::PROTEIN)
    ("AH" . SPARSER::MOLECULE) ("lobe" . SPARSER::PROTEIN)
    ("TRAMP" . SPARSER::PROTEIN) ("ARs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ligase" . SPARSER::LIGASE) ("HIF" . SPARSER::PROTEIN-FAMILY)
    ("dehydrogenase, and Sprouty 2" . SPARSER::COLLECTION)
    ("Siah1 and Siah2" . SPARSER::COLLECTION) ("CRPC" . SPARSER::PROTEIN)
    ("PCa (CRPC)" . SPARSER::PROTEIN)
    ("a more aggressive form" . SPARSER::FORM)
    ("metastatic PCa" . SPARSER::PROTEIN)
    ("AREs" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("AF1 and AF2" . SPARSER::COLLECTION) ("PCa" . SPARSER::PROTEIN)
    ("androgen receptor (AR)" . SPARSER::PROTEIN)
    ("UGT2B15" . SPARSER::PROTEIN) ("AKR1C3" . SPARSER::PROTEIN)
    ("AKR1C2" . SPARSER::PROTEIN) ("interleukin-6" . SPARSER::PROTEIN)
    ("Wnt3a" . SPARSER::PROTEIN) ("Ki67" . SPARSER::PROTEIN)
    ("MPC3" . SPARSER::PROTEIN) ("receptor type" . SPARSER::PROTEIN)
    ("DU145" . SPARSER::PROTEIN) ("C4-2" . SPARSER::PROTEIN)
    ("zinc finger" . SPARSER::PROTEIN) ("K63" . SPARSER::PROTEIN)
    ("Siah1a" . SPARSER::PROTEIN) ("Ubiquitin Ligase" . SPARSER::PROTEIN)
    ("SREBF1" . SPARSER::PROTEIN) ("HIF-1α" . SPARSER::PROTEIN)
    ("HNF4A" . SPARSER::PROTEIN) ("FKBP5" . SPARSER::PROTEIN)
    ("SLC45A3" . SPARSER::PROTEIN) ("PMEPA1" . SPARSER::PROTEIN)
    ("CA9" . SPARSER::PROTEIN) ("CK8" . SPARSER::PROTEIN)
    ("TMPRSS2" . SPARSER::PROTEIN) ("SPINK3" . SPARSER::PROTEIN)
    ("NKX3.1" . SPARSER::PROTEIN) ("T-antigen" . SPARSER::PROTEIN)
    ("HIPK2" . SPARSER::PROTEIN) ("PHD1" . SPARSER::PROTEIN)
    ("negative regulators" . SPARSER::NEGATIVE-REGULATOR)
    ("hypoxia-inducible factor" . SPARSER::PROTEIN)
    ("Sprouty 2" . SPARSER::PROTEIN) ("α-ketoglutarate" . SPARSER::MOLECULE)
    ("TRAF2" . SPARSER::PROTEIN) ("Siah1" . SPARSER::PROTEIN)
    ("Mdm2" . SPARSER::PROTEIN) ("AF2" . SPARSER::PROTEIN)
    ("AF1" . SPARSER::PROTEIN) ("NCOR1" . SPARSER::PROTEIN)
    ("Siah2" . SPARSER::PROTEIN) ("any strong candidate genes" . SPARSER::GENE)
    ("proteins and lipids" . SPARSER::COLLECTION) ("lipids" . SPARSER::PROTEIN)
    ("Clathrin" . SPARSER::PROTEIN) ("Han" . SPARSER::PROTEIN)
    ("se" . SPARSER::HUMAN-PROTEIN-FAMILY) ("guanine" . SPARSER::MOLECULE)
    ("hypoxia or macrophage" . SPARSER::COLLECTION)
    ("DENN/MADD" . SPARSER::COLLECTION) ("hypoxia" . SPARSER::PROTEIN)
    ("adipocytes" . SPARSER::PROTEIN) ("MADD" . SPARSER::PROTEIN)
    ("DENN" . SPARSER::PROTEIN) ("respective cohort" . SPARSER::MOLECULE)
    ("hot" . SPARSER::PROTEIN) ("LEP, PRKCA and TNF" . SPARSER::COLLECTION)
    ("GNPDA2, PTPRD and ROBO1" . SPARSER::COLLECTION)
    ("PTPRD" . SPARSER::PROTEIN) ("TNF" . SPARSER::PROTEIN)
    ("PRKCA" . SPARSER::PROTEIN) ("LEP" . SPARSER::PROTEIN)
    ("other genetic variants or chance" . SPARSER::COLLECTION)
    ("STARD13, PRKCQ and SLC24A2" . SPARSER::COLLECTION)
    ("PRKCQ" . SPARSER::PROTEIN)
    ("a reasonable candidate gene" . SPARSER::GENE) ("QC" . SPARSER::PROTEIN)
    ("FTO, TMEM18 and MC4R" . SPARSER::COLLECTION) ("FTO" . SPARSER::PROTEIN)
    ("MAP kinase" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TNFR1" . SPARSER::PROTEIN)
    ("ROBO1" . SPARSER::PROTEIN) ("GNPDA2" . SPARSER::PROTEIN)
    ("SLC24A2" . SPARSER::PROTEIN) ("STARD13" . SPARSER::PROTEIN)
    ("LPIN2" . SPARSER::PROTEIN) ("−3" . SPARSER::PROTEIN)
    ("SLC12A9" . SPARSER::PROTEIN) ("factor 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MC4R" . SPARSER::PROTEIN) ("TMEM18" . SPARSER::PROTEIN)
    ("m 2" . SPARSER::MOLECULE) ("a larger patient cohort" . SPARSER::MOLECULE)
    ("DKK3 and rs3763511" . SPARSER::COLLECTION) ("DKK" . SPARSER::PROTEIN)
    ("the pathological types" . TYPE)
    ("The heterozygous genotype AG" . SPARSER::PROTEIN)
    ("The homologous proteins AXIN1 and AXIN2" . SPARSER::COLLECTION)
    ("AXIN1 and AXIN2" . SPARSER::COLLECTION)
    ("suppressors" . SPARSER::SUPPRESSOR)
    ("The ancestral allele" . SPARSER::ALLELE) ("Wang" . SPARSER::PROTEIN)
    ("heterozygous genotype AG" . SPARSER::PROTEIN)
    ("Wnt/β-catenin" . SPARSER::COLLECTION)
    ("the CG as well as GG genotypes" . SPARSER::COLLECTION)
    ("CG" . SPARSER::PROTEIN)
    ("either Arg ( C GC) or Gly ( G GC)" . SPARSER::COLLECTION)
    ("APC, β-catenin, axin and TCF7L2" . SPARSER::COLLECTION)
    ("axin" . SPARSER::PROTEIN) ("ER-" . SPARSER::PROTEIN)
    ("ER" . SPARSER::PROTEIN)
    ("AXIN2 (rs4791171, rs11079571 and rs3923086) and SFRP3 (rs288326)"
     . SPARSER::COLLECTION)
    ("APC, DKK4 and LRP6" . SPARSER::COLLECTION)
    ("heterozygous Arg/Gly" . SPARSER::COLLECTION)
    ("Gly/Gly" . SPARSER::COLLECTION) ("Arg/Arg" . SPARSER::COLLECTION)
    ("Arg and Gly" . SPARSER::COLLECTION) ("Arg/Gly" . SPARSER::COLLECTION)
    ("SFRP3 and TCF7L2" . SPARSER::COLLECTION)
    ("the homozygous genotype ‘AA’" . SPARSER::MOLECULE)
    ("heterozygotes" . SPARSER::PROTEIN)
    ("AXIN2, DKK3, SFRP3 and TCF7L2" . SPARSER::COLLECTION)
    ("‘AA’" . SPARSER::MOLECULE) ("‘AG’" . SPARSER::PROTEIN)
    ("AA" . SPARSER::MOLECULE)
    ("either arginine (Arg) or glycine (Gly) amino acid" . SPARSER::COLLECTION)
    ("Gly" . SPARSER::AMINO-ACID) ("Arg" . SPARSER::AMINO-ACID)
    ("SFRP3 (rs7775) and TCF7L2 (rs12255372) genes" . SPARSER::COLLECTION)
    ("β-catenin (rs4135385), AXIN2 (rs3923087), DKK3 (rs6485350), SFRP3 (rs7775) and TCF7L2 (rs12255372) genes"
     . SPARSER::COLLECTION)
    ("Homozygous ancestral allele" . SPARSER::ALLELE)
    ("allele" . SPARSER::ALLELE)
    ("WNT1, WNT4, AXIN2 and LEF1" . SPARSER::COLLECTION)
    ("Axin, APC and β-catenin" . SPARSER::COLLECTION)
    ("APC and β-catenin" . SPARSER::COLLECTION) ("FAP" . SPARSER::PROTEIN)
    ("cyclin D1 and c-myc" . SPARSER::COLLECTION)
    ("TCF/LEF" . SPARSER::COLLECTION) ("oncogenes" . SPARSER::ONCOGENE)
    ("LEF" . SPARSER::PROTEIN) ("TCF" . SPARSER::PROTEIN)
    ("Axin" . SPARSER::PROTEIN) ("Dsh" . SPARSER::PROTEIN)
    ("two co-receptors, the Frizzled seven transmembrane receptor, and the low density lipoprotein receptor related protein LRP5/6"
     . SPARSER::COLLECTION)
    ("glycoproteins" . SPARSER::PROTEIN) ("subtypes" . SPARSER::PROTEIN)
    ("AXIN2 and rs3763511" . SPARSER::COLLECTION)
    ("arginine or glycine" . SPARSER::COLLECTION)
    ("arginine" . SPARSER::AMINO-ACID)
    ("β-catenin, AXIN2, DKK3, SFRP3 and TCF7L2" . SPARSER::COLLECTION)
    ("AXIN1" . SPARSER::PROTEIN) ("Type 2" . SPARSER::PROTEIN)
    ("its receptor" . SPARSER::PROTEIN) ("LRP6" . SPARSER::PROTEIN)
    ("LEF1" . SPARSER::PROTEIN) ("WNT4" . SPARSER::PROTEIN)
    ("WNT1" . SPARSER::PROTEIN) ("GSK-3β" . SPARSER::PROTEIN)
    ("glycogen synthase" . SPARSER::PROTEIN-FAMILY)
    ("LRP5/6" . SPARSER::PROTEIN)
    ("low density lipoprotein receptor" . SPARSER::PROTEIN)
    ("co-receptors" . SPARSER::PROTEIN) ("DKK4" . SPARSER::PROTEIN)
    ("TCF7L2" . SPARSER::PROTEIN) ("SFRP3" . SPARSER::PROTEIN)
    ("DKK3" . SPARSER::PROTEIN) ("AXIN2" . SPARSER::PROTEIN)
    ("β-catenin" . SPARSER::PROTEIN) ("MEK-ERK-1/2" . SPARSER::COLLECTION)
    ("PR-1 proteins and other mammalian SCP domain-containing proteins"
     . SPARSER::COLLECTION)
    ("monocytes and leukocytes" . SPARSER::COLLECTION)
    ("monocytes" . SPARSER::PROTEIN) ("kDa" . SPARSER::PROTEIN)
    ("protein-protein" . SPARSER::COLLECTION) ("anchor" . SPARSER::ANCHOR)
    ("myristoylated" . SPARSER::PROTEIN)
    ("ERK1/2 siRNA and control siRNA" . SPARSER::COLLECTION)
    ("MAPK/ERK" . SPARSER::COLLECTION) ("MEK-ERK1/2" . SPARSER::COLLECTION)
    ("PTC" . SPARSER::PROTEIN) ("/ERK" . SPARSER::COLLECTION)
    ("vimentin and α-SMA" . SPARSER::COLLECTION)
    ("E-cadherin and N-cadherin" . SPARSER::COLLECTION)
    ("8 up-regulated genes (CTNNB1, EGFR, ITGAV, SNAI2, SPARC, STEAP1, VCAN, VIM, ratios ≧1.5) and 10 down-regulated genes (CDH1, FGFBP1, FOXC2, IL1RN, MMP2, MMP3, NOTCH1, PDGFRB, SOX10, WNT11, ratios ≧−1.5)"
     . SPARSER::COLLECTION)
    ("≧−1.5" . SPARSER::COLLECTION) ("VIM" . SPARSER::PROTEIN)
    ("VCAN" . SPARSER::PROTEIN) ("SPARC" . SPARSER::PROTEIN)
    ("ITGAV" . SPARSER::PROTEIN) ("−1" . SPARSER::PROTEIN)
    ("PDGFRB" . SPARSER::PROTEIN)
    ("the mesenchymal marker vimentin" . SPARSER::PROTEIN)
    ("E-cadherin, vimentin and α-SMA" . SPARSER::COLLECTION)
    ("plant PR-1 proteins and other mammalian SCP/CAP domain-containing proteins"
     . SPARSER::COLLECTION)
    ("peripheral leukocytes" . SPARSER::PROTEIN)
    ("GAPR-1 and C9orf19" . SPARSER::COLLECTION)
    ("leukocytes" . SPARSER::PROTEIN)
    ("E-cadherin and vimentin" . SPARSER::COLLECTION)
    ("PTCs" . SPARSER::PROTEIN) ("EMT" . SPARSER::PROTEIN)
    ("ERK-1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PD98059" . SPARSER::MOLECULE)
    ("ERK 1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("N-cadherin" . SPARSER::PROTEIN) ("WNT11" . SPARSER::PROTEIN)
    ("SOX10" . SPARSER::PROTEIN) ("NOTCH1" . SPARSER::PROTEIN)
    ("MMP3" . SPARSER::PROTEIN) ("MMP2" . SPARSER::PROTEIN)
    ("IL1RN" . SPARSER::PROTEIN) ("FOXC2" . SPARSER::PROTEIN)
    ("FGFBP1" . SPARSER::PROTEIN) ("STEAP1" . SPARSER::PROTEIN)
    ("SNAI2" . SPARSER::PROTEIN) ("CTNNB1" . SPARSER::PROTEIN)
    ("p-ERK" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("signal peptide" . SPARSER::PROTEIN) ("PR-1" . SPARSER::PROTEIN)
    ("C9orf19" . SPARSER::PROTEIN) ("GAPR-1" . SPARSER::PROTEIN)
    ("alpha-" . SPARSER::PROTEIN) ("E-cadherin" . SPARSER::PROTEIN)
    ("HK-2" . SPARSER::PROTEIN) ("GLIPR-2" . SPARSER::PROTEIN)
    ("an antiviral TRIM gene" . SPARSER::GENE)
    ("APOBEC" . SPARSER::BIO-COMPLEX) ("polypeptide" . SPARSER::PROTEIN)
    ("an antiviral gene" . SPARSER::GENE)
    ("the human fetal gamma globin gene" . SPARSER::GENE)
    ("the human salivary amylase gene" . SPARSER::GENE)
    ("globin" . SPARSER::PROTEIN) ("amylase" . SPARSER::PROTEIN)
    ("H3K27Ac, DNase hypersensitivity, and transcription factors"
     . SPARSER::COLLECTION)
    ("DNase" . SPARSER::PROTEIN) ("mapping" . SPARSER::PROTEIN)
    ("TRIM6 , TRIM34 , and TRIM22" . SPARSER::COLLECTION)
    ("whose TRIM5 orthologs" . SPARSER::PROTEIN)
    ("TRIM5 , TRIM22 , and TRIM34" . SPARSER::COLLECTION)
    ("a well-studied inhibitor" . SPARSER::INHIBITOR)
    ("TRIM5 and β-actin" . SPARSER::COLLECTION)
    ("TRIM5 , and β-actin" . SPARSER::COLLECTION)
    ("fluorouracil" . SPARSER::DRUG)
    ("TRIM34 , TRIM22 and TRIM5" . SPARSER::COLLECTION)
    ("predates" . SPARSER::DRUG)
    ("the positively selected antiviral genes" . SPARSER::GENE)
    ("Fragments" . SPARSER::FRAGMENT)
    ("the minimal complement" . SPARSER::PROTEIN)
    ("complement" . SPARSER::PROTEIN) ("MER" . SPARSER::PROTEIN)
    ("the previously characterized Haplorhini TRIM genes" . SPARSER::GENE)
    ("the extant genes" . SPARSER::GENE)
    ("two TRIM34 and TRIM5 genes and the loss of TRIM22" . SPARSER::COLLECTION)
    ("TRIM34 and TRIM5" . SPARSER::COLLECTION)
    ("HUERS-P3b" . SPARSER::COLLECTION)
    ("approximately 2200 nucleotides" . SPARSER::NUCLEOTIDE)
    ("TRIM34 or TRIM22" . SPARSER::COLLECTION)
    ("the ancestral Platyrrhini TRIM22" . SPARSER::PROTEIN)
    ("approximately 3,200 nucleotides" . SPARSER::NUCLEOTIDE)
    ("ERV3-2" . SPARSER::COLLECTION)
    ("approximately 225 nucleotides" . SPARSER::NUCLEOTIDE)
    ("approximately 3,400 nucleotides" . SPARSER::NUCLEOTIDE)
    ("specific transposable element families" . SPARSER::PROTEIN-FAMILY)
    ("TRIM34 and TRIM22" . SPARSER::COLLECTION)
    ("TRIM22 and TRIM5" . SPARSER::COLLECTION) ("classes" . CLASS)
    ("Examples" . SPARSER::EXAMPLE) ("MIRs and Alu" . SPARSER::COLLECTION)
    ("MIRs" . SPARSER::PROTEIN) ("families" . SPARSER::PROTEIN-FAMILY)
    ("TRIM22 and TRIM34" . SPARSER::COLLECTION)
    ("approximately 2 nucleotides" . SPARSER::NUCLEOTIDE)
    ("TRIM6 or TRIM34" . SPARSER::COLLECTION)
    ("each TRIM gene’s" . SPARSER::GENE) ("Genes" . SPARSER::GENE)
    ("polymerase" . SPARSER::PROTEIN)
    ("the mobilization-competent form" . SPARSER::FORM)
    ("Alu" . SPARSER::PROTEIN) ("elongation" . SPARSER::PROTEIN)
    ("TRIM5 or TRIM22" . SPARSER::COLLECTION)
    ("TRIM6 and TRIM34" . SPARSER::COLLECTION)
    ("conformation" . SPARSER::BIO-CONFORMATION)
    ("orthologs" . SPARSER::PROTEIN)
    ("TRIM6 , TRIM34 , TRIM22 and TRIM5" . SPARSER::COLLECTION)
    ("PRY-SPRY" . SPARSER::COLLECTION) ("PRY" . SPARSER::PROTEIN)
    ("SPRY" . SPARSER::PROTEIN)
    ("70 tripartite motif-containing (TRIM) genes" . SPARSER::GENE)
    ("the antiviral TRIM genes" . SPARSER::GENE)
    ("TRIM" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the shared Haplorhini/prosimian ancestral state" . SPARSER::BIO-STATE)
    ("the prosimian TRIM5 genes" . SPARSER::GENE)
    ("TRIM6 , TRIM34 , TRIM5 , and TRIM22" . SPARSER::COLLECTION)
    ("TRIM5 and TRIM22" . SPARSER::COLLECTION)
    ("interferon" . SPARSER::PROTEIN) ("Amino acid" . SPARSER::AMINO-ACID)
    ("isoform 4" . SPARSER::PROTEIN) ("cyclophilin A" . SPARSER::PROTEIN)
    ("apolipoprotein B" . SPARSER::PROTEIN)
    ("murine leukemia virus" . SPARSER::PROTEIN)
    ("H3K27Ac" . SPARSER::MOLECULE) ("P3b" . SPARSER::PROTEIN)
    ("1C" . SPARSER::PROTEIN) ("1K" . SPARSER::PROTEIN)
    ("ERV3" . SPARSER::PROTEIN) ("reverse transcriptase" . SPARSER::PROTEIN)
    ("olfactory receptor" . SPARSER::PROTEIN) ("B-box" . SPARSER::PROTEIN)
    ("TRIM22" . SPARSER::PROTEIN) ("TRIM5" . SPARSER::PROTEIN)
    ("TRIM34" . SPARSER::PROTEIN) ("TRIM6" . SPARSER::PROTEIN)
    ("antibody, and PAK1" . SPARSER::COLLECTION)
    ("VEGFR2 or PAK1" . SPARSER::COLLECTION)
    ("Sorafenib, Axitinib and IPA3" . SPARSER::COLLECTION)
    ("Raf, VEGFR and PDGFR" . SPARSER::COLLECTION)
    ("Sorafenib" . SPARSER::DRUG) ("PDGFR" . SPARSER::PROTEIN)
    ("VEGFR" . SPARSER::PROTEIN)
    ("Axitinib, or anti-VEGFR2" . SPARSER::COLLECTION)
    ("antibody, or PAK1" . SPARSER::COLLECTION)
    ("bax/bcl-2" . SPARSER::COLLECTION) ("bax" . SPARSER::PROTEIN)
    ("a potential tumor suppressor and an inhibitor of the IGF-1 pathway and activator of the FGF pathway"
     . SPARSER::COLLECTION)
    ("IGFs" . SPARSER::PROTEIN)
    ("insulin-like growth factor-1 (IGF-1) and Wnt" . SPARSER::COLLECTION)
    ("ion channels and growth factors" . SPARSER::COLLECTION)
    ("Wnt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Klotho or FGF23" . SPARSER::COLLECTION) ("calcium" . SPARSER::CALCIUM)
    ("VEGFR2 and PAK1" . SPARSER::COLLECTION)
    ("VEGFR2 inhibitor Axitinib and its blocking antibody treatment in Klotho-overexpressed hepatoma cells"
     . SPARSER::COLLECTION)
    ("Annexin V/PI" . SPARSER::COLLECTION) ("PI" . SPARSER::PROTEIN)
    ("HBsAg" . SPARSER::DRUG)
    ("first evaluated immunohistochemical Klotho" . SPARSER::PROTEIN)
    ("Klotho/VEGFR2/PAK1" . SPARSER::COLLECTION)
    ("IPA3 or VEGFR2" . SPARSER::COLLECTION)
    ("high immunohistochemical Klotho" . SPARSER::PROTEIN)
    ("a potential tumor suppressor" . SPARSER::SUPPRESSOR)
    ("the primary matrix or cell-cell anchors" . SPARSER::COLLECTION)
    ("anchors" . SPARSER::ANCHOR) ("VEGFR2/PAK1" . SPARSER::COLLECTION)
    ("Axitinib" . SPARSER::DRUG) ("anoikis" . SPARSER::PROTEIN)
    ("immunohistochemical Klotho" . SPARSER::PROTEIN)
    ("cirrhosis" . SPARSER::PROTEIN) ("Klotho" . SPARSER::PROTEIN)
    ("bcl-2" . SPARSER::PROTEIN) ("TGF-β1" . SPARSER::PROTEIN)
    ("transforming growth factor" . SPARSER::PROTEIN)
    ("IGF-IR" . SPARSER::PROTEIN) ("IGF-1" . SPARSER::PROTEIN)
    ("insulin-like growth factor-1" . SPARSER::PROTEIN)
    ("ion channels" . SPARSER::PROTEIN-FAMILY)
    ("vitamin D" . SPARSER::MOLECULE) ("FGF23" . SPARSER::PROTEIN)
    ("fibroblast growth factor" . SPARSER::PROTEIN-FAMILY)
    ("co-receptor" . SPARSER::PROTEIN) ("angiotensin II" . SPARSER::PROTEIN)
    ("Ca 2+" . SPARSER::CALCIUM-ION) ("caspase 3" . SPARSER::PROTEIN)
    ("Caspase 3" . SPARSER::PROTEIN) ("single-pass" . SPARSER::PROTEIN-FAMILY)
    ("VEGFR2" . SPARSER::PROTEIN) ("IPA3" . SPARSER::MOLECULE)
    ("PAK1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p21-activated kinase 1" . SPARSER::PROTEIN) ("BAX" . SPARSER::PROTEIN)
    ("HOX" . SPARSER::PROTEIN) ("p73 and ΔNp73" . SPARSER::COLLECTION)
    ("KDM6A and KDM6B" . SPARSER::COLLECTION)
    ("demethylase" . SPARSER::PROTEIN) ("E6 and E7" . SPARSER::COLLECTION)
    ("E6/E7" . SPARSER::COLLECTION) ("AP1" . SPARSER::PROTEIN)
    ("roscovitine" . SPARSER::DRUG) ("trigger" . SPARSER::PROTEIN)
    ("PLK2 and KLHDC8B" . SPARSER::COLLECTION)
    ("the viral oncoprotein" . SPARSER::PROTEIN)
    ("DNA-repair and signaling pathways" . SPARSER::COLLECTION)
    ("RAS, and toll-like" . SPARSER::COLLECTION) ("DNA-repair" . SPARSER::DNA)
    ("TLRs" . SPARSER::PROTEIN-FAMILY)
    ("approximately 253 genes" . SPARSER::GENE)
    ("differentially" . SPARSER::PROTEIN)
    ("oligo-nucleotide (AS)" . SPARSER::MOLECULE)
    ("siRNA or chemical inhibitor" . SPARSER::COLLECTION)
    ("condensation and gene" . SPARSER::COLLECTION)
    ("condensation" . SPARSER::PROTEIN-FAMILY) ("Lysine" . SPARSER::AMINO-ACID)
    ("Histone" . SPARSER::PROTEIN) ("Polycomb" . SPARSER::PROTEIN)
    ("p73 and ΔNp73α" . SPARSER::COLLECTION) ("JNK" . SPARSER::PROTEIN)
    ("RPMI or RPMI" . SPARSER::COLLECTION) ("anti" . SPARSER::PROTEIN)
    ("p53 and/or p73" . SPARSER::COLLECTION)
    ("The p73 p2 internal promoter" . SPARSER::PROMOTER)
    ("mRNA and protein" . SPARSER::COLLECTION)
    ("RPMI/LMP-1" . SPARSER::COLLECTION)
    ("pLXSN-LMP-1" . SPARSER::PROTEIN-PAIR) ("RPMI" . SPARSER::PROTEIN)
    ("regulators" . SPARSER::REGULATOR) ("bad" . SPARSER::PROTEIN)
    ("p53 and p73" . SPARSER::COLLECTION)
    ("one viral protein" . SPARSER::PROTEIN) ("p53/p73" . SPARSER::COLLECTION)
    ("CpG" . SPARSER::PROTEIN) ("mdm2 and Gemin3" . SPARSER::COLLECTION)
    ("viral genes" . SPARSER::GENE) ("pRb" . SPARSER::PROTEIN)
    ("EBNA-2, EBNA-3A and EBNA-3C" . SPARSER::COLLECTION)
    ("receptor (TNFR)" . SPARSER::RECEPTOR) ("TNFR" . SPARSER::PROTEIN)
    ("carboxy" . SPARSER::MOLECULE) ("IV" . SPARSER::PROTEIN)
    ("EBNA-1, LMP-1, LMP-2A, LMP-2B, EBERs and miRNAs" . SPARSER::COLLECTION)
    ("EBNA-1 as well as EBERs and miRNAs" . SPARSER::COLLECTION)
    ("miRNAs" . SPARSER::PROTEIN) ("proteins (LMP)" . SPARSER::PROTEIN)
    ("microRNAs" . SPARSER::RNA) ("RNAs" . SPARSER::RNA)
    ("LMP" . SPARSER::PROTEIN) ("NPC" . SPARSER::MOLECULE)
    ("a transcriptional repressive polycomb 2 complex" . SPARSER::BIO-COMPLEX)
    ("ΔNp73 promoter and the activation of JNK-1" . SPARSER::COLLECTION)
    ("some cutaneous beta HPV types" . TYPE)
    ("their viral proteins" . SPARSER::PROTEIN)
    ("The mucosal high-risk HPV types" . TYPE) ("shotgun" . SPARSER::PROTEIN)
    ("the transcriptional repressive polycomb 2 complex"
     . SPARSER::BIO-COMPLEX)
    ("polycomb" . SPARSER::PROTEIN) ("methyltransferase" . SPARSER::PROTEIN)
    ("lysine" . SPARSER::AMINO-ACID) ("chemical" . SPARSER::MOLECULE)
    ("a strong antagonist" . SPARSER::MOLECULE)
    ("oncoprotein" . SPARSER::PROTEIN) ("RNase III" . SPARSER::PROTEIN)
    ("Histone H4" . SPARSER::PROTEIN) ("MgCl2" . SPARSER::MOLECULE)
    ("JNK1" . SPARSER::PROTEIN) ("S12" . SPARSER::PROTEIN)
    ("F10" . SPARSER::PROTEIN) ("Reverse Transcriptase" . SPARSER::PROTEIN)
    ("or 2 µ" . SPARSER::MOLECULE) ("penicillin G" . SPARSER::MOLECULE)
    ("CCND1" . SPARSER::PROTEIN) ("GADD45" . SPARSER::PROTEIN)
    ("APAF1" . SPARSER::PROTEIN) ("Histone 3" . SPARSER::PROTEIN)
    ("Polycomb1" . SPARSER::PROTEIN) ("BMI1" . SPARSER::PROTEIN)
    ("KDM6B" . SPARSER::PROTEIN) ("KDM6A" . SPARSER::PROTEIN)
    ("proto-oncogene c-Jun" . SPARSER::PROTEIN) ("cdc2" . SPARSER::PROTEIN)
    ("E7" . SPARSER::PROTEIN-FAMILY) ("KLHDC8B" . SPARSER::PROTEIN)
    ("site 1" . SPARSER::PROTEIN) ("PLK2" . SPARSER::PROTEIN)
    ("ΔNp63α" . SPARSER::PROTEIN) ("oligo-nucleotide" . SPARSER::MOLECULE)
    ("interferon alpha" . SPARSER::PROTEIN) ("de-" . SPARSER::MOLECULE)
    ("p38" . SPARSER::HUMAN-PROTEIN-FAMILY) ("SP600125" . SPARSER::PROTEIN)
    ("transforming protein" . SPARSER::PROTEIN) ("70 kD" . SPARSER::PROTEIN)
    ("LMP1" . SPARSER::PROTEIN) ("E2F-1" . SPARSER::PROTEIN)
    ("Gemin3" . SPARSER::PROTEIN) ("mdm2" . SPARSER::PROTEIN)
    ("EBNA-3C" . SPARSER::PROTEIN) ("EBNA-3A" . SPARSER::PROTEIN)
    ("EBNA-2" . SPARSER::PROTEIN) ("tumour necrosis factor" . SPARSER::PROTEIN)
    ("integral membrane protein" . SPARSER::PROTEIN)
    ("Type III" . SPARSER::HUMAN-PROTEIN-FAMILY) ("LMP-2B" . SPARSER::PROTEIN)
    ("LMP-2A" . SPARSER::PROTEIN) ("Type II" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EBNA-1" . SPARSER::PROTEIN) ("Type I" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EZH2" . SPARSER::PROTEIN) ("p73" . SPARSER::PROTEIN)
    ("JNK-1" . SPARSER::PROTEIN) ("NH2" . SPARSER::MOLECULE)
    ("c-Jun" . SPARSER::PROTEIN) ("LMP-1" . SPARSER::PROTEIN)
    ("tumor suppressor p53" . SPARSER::PROTEIN)
    ("nucleotide" . SPARSER::NUCLEOTIDE) ("drugs" . SPARSER::DRUG)
    ("EGFR and ALK" . SPARSER::COLLECTION) ("DMBA" . SPARSER::MOLECULE)
    ("anthracene" . SPARSER::DRUG) ("pyrene" . SPARSER::PROTEIN)
    ("Tobacco" . SPARSER::DRUG) ("EGFR , KRAS , and ALK" . SPARSER::COLLECTION)
    ("HCC" . SPARSER::PROTEIN) ("PC-9" . SPARSER::PROTEIN)
    ("ALK/MET/RON/ROS1" . SPARSER::COLLECTION) ("linsitinib" . SPARSER::DRUG)
    ("RON" . SPARSER::PROTEIN) ("TKI" . SPARSER::PROTEIN)
    ("tobacco" . SPARSER::DRUG) ("NRAS and KRAS" . SPARSER::COLLECTION)
    ("Los" . SPARSER::MOLECULE) ("GTPases" . SPARSER::GTPASE)
    ("KRAS and HRAS" . SPARSER::COLLECTION) ("HRAS" . SPARSER::PROTEIN)
    ("serine-threonine" . SPARSER::COLLECTION) ("RET" . SPARSER::PROTEIN)
    ("EGFR (gefitinib, erlotinib) or ALK (crizotinib) tyrosine kinase inhibitors (TKIs)"
     . SPARSER::COLLECTION)
    ("TKIs" . SPARSER::PROTEIN) ("crizotinib" . SPARSER::DRUG)
    ("erlotinib" . SPARSER::DRUG) ("gefitinib" . SPARSER::DRUG)
    ("the gene encoding the epidermal growth factor receptor ( EGFR ) or translocations"
     . SPARSER::COLLECTION)
    ("anaplastic lymphoma kinase ( ALK )" . SPARSER::PROTEIN)
    ("epidermal growth factor receptor ( EGFR )"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("selumetinib and trametinib" . SPARSER::COLLECTION)
    ("trametinib" . SPARSER::DRUG) ("selumetinib" . SPARSER::DRUG)
    ("EGFR, ALK, MET, IGF-1R, BRAF, PI3K and MEK" . SPARSER::COLLECTION)
    ("MET" . SPARSER::PROTEIN) ("ALK" . SPARSER::PROTEIN)
    ("NRAS" . SPARSER::PROTEIN) ("phospho-ERK" . SPARSER::PROTEIN)
    ("GDC-0941" . SPARSER::DRUG) ("CO2" . SPARSER::PROTEIN)
    ("N-Ras" . SPARSER::PROTEIN) ("K-Ras" . SPARSER::PROTEIN)
    ("etc." . SPARSER::PROTEIN) ("SGX-523" . SPARSER::MOLECULE)
    ("GDC0941" . SPARSER::DRUG) ("PI3 kinase" . SPARSER::PROTEIN)
    ("RAS family" . SPARSER::PROTEIN) ("1–2" . SPARSER::PROTEIN)
    ("ROS1" . SPARSER::PROTEIN) ("MEK1" . SPARSER::PROTEIN)
    ("2–4" . SPARSER::PROTEIN) ("PIK3CA" . SPARSER::PROTEIN)
    ("ERBB2" . SPARSER::PROTEIN)
    ("anaplastic lymphoma kinase" . SPARSER::PROTEIN)
    ("IGF-1R" . SPARSER::PROTEIN) ("IL-6/STAT3" . SPARSER::COLLECTION)
    ("molecules or pathways" . SPARSER::COLLECTION)
    ("vasculature" . SPARSER::PROTEIN)
    ("cytokines and growth factors" . SPARSER::COLLECTION)
    ("ERK and mitogen-activated protein kinase" . SPARSER::COLLECTION)
    ("mediators" . SPARSER::PROTEIN) ("ERK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TGF-β and platelet-derived growth factor" . SPARSER::COLLECTION)
    ("collagen" . SPARSER::PROTEIN) ("biologic" . SPARSER::DRUG)
    ("IL-6, and pSTAT3" . SPARSER::COLLECTION) ("mixture" . SPARSER::MOLECULE)
    ("M-CSF and VEGF" . SPARSER::COLLECTION)
    ("ref" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("STAT3/SOCS3" . SPARSER::COLLECTION) ("macrophages" . SPARSER::PROTEIN)
    ("IL-6, GM-CSF, M-CSF, and VEGF" . SPARSER::COLLECTION)
    ("proinflammatory cytokines" . SPARSER::PROTEIN)
    ("cytokines and suppressor" . SPARSER::COLLECTION)
    ("PARP" . SPARSER::PROTEIN)
    ("media in the presence of DMSO (vehicle) or the FLLL32 STAT3 inhibitor"
     . SPARSER::COLLECTION)
    ("media" . SPARSER::PROTEIN) ("DMSO" . SPARSER::MOLECULE)
    ("molecule" . SPARSER::MOLECULE)
    ("a commercially available blocking antibodies" . SPARSER::ANTIBODY)
    ("STAT" . SPARSER::PROTEIN)
    ("IL-6 and other cytokines (e.g., VEGF, M-CSF; xref )"
     . SPARSER::COLLECTION)
    ("IL-6 and STAT3" . SPARSER::COLLECTION) ("CD3/CD28" . SPARSER::COLLECTION)
    ("CFSE" . SPARSER::DRUG) ("HPF or NHDF" . SPARSER::COLLECTION)
    ("IL-6/GM-CSF" . SPARSER::COLLECTION)
    ("IL-6 and GM-CSF" . SPARSER::COLLECTION)
    ("cytokines and chemokines" . SPARSER::COLLECTION)
    ("CXCL5, MIG, IP-10, and RANTES" . SPARSER::COLLECTION)
    ("RANTES" . SPARSER::PROTEIN) ("MIG" . SPARSER::PROTEIN)
    ("IL-6, VEGF, and macrophage" . SPARSER::COLLECTION)
    ("several notable proinflammatory cytokines" . SPARSER::PROTEIN)
    ("TNF-α, IFN-γ, and IL-1β" . SPARSER::COLLECTION)
    ("chemotaxis" . SPARSER::PROTEIN)
    ("vimentin and GFAP" . SPARSER::COLLECTION)
    ("GFAP and α-SMA" . SPARSER::COLLECTION)
    ("myofibrolastic markers vimentin, GFAP, and α-SMA" . SPARSER::COLLECTION)
    ("vimentin, GFAP, and α-SMA" . SPARSER::COLLECTION)
    ("IL" . SPARSER::PROTEIN) ("proteins and MMPs" . SPARSER::COLLECTION)
    ("MMPs" . SPARSER::PROTEIN)
    ("metalloproteinases (MMP)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MMP" . SPARSER::PROTEIN)
    ("metalloproteinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("substances" . SPARSER::SUBSTANCE)
    ("cytokines, chemokines, and growth factors" . SPARSER::COLLECTION)
    ("States" . SPARSER::BIO-STATE) ("STAT1 or STAT5" . SPARSER::COLLECTION)
    ("MDSC-promoting cytokines [interleukin (IL-6), VEGF, macrophage colony-stimulating factor (M-CSF)] and chemokines (SDF-1, MCP-1)"
     . SPARSER::COLLECTION)
    ("chemokines" . SPARSER::PROTEIN) ("macrophage" . SPARSER::PROTEIN)
    ("VEGF" . SPARSER::PROTEIN) ("interleukin" . SPARSER::PROTEIN)
    ("cytokines" . SPARSER::PROTEIN) ("HPF" . SPARSER::PROTEIN)
    ("GFAP" . SPARSER::PROTEIN) ("vimentin" . SPARSER::PROTEIN)
    ("smooth muscle" . SPARSER::PROTEIN) ("sonic hedgehog" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TGF-β" . SPARSER::HUMAN-PROTEIN-FAMILY) ("GM—CSF" . SPARSER::PROTEIN)
    ("HMGB1" . SPARSER::PROTEIN) ("MCP—1" . SPARSER::PROTEIN)
    ("SOCS3" . SPARSER::PROTEIN) ("PSC2" . SPARSER::PROTEIN-FAMILY)
    ("CD14" . SPARSER::PROTEIN) ("IP-10" . SPARSER::PROTEIN)
    ("CXCL5" . SPARSER::PROTEIN) ("IL-4" . SPARSER::PROTEIN)
    ("IL-1β" . SPARSER::PROTEIN) ("TNF-α" . SPARSER::PROTEIN)
    ("PANC-1" . SPARSER::PROTEIN) ("CD28" . SPARSER::PROTEIN)
    ("CD3" . SPARSER::PROTEIN) ("CD8" . SPARSER::PROTEIN)
    ("IgG1" . SPARSER::BIO-COMPLEX) ("T-cell" . SPARSER::PROTEIN)
    ("PGE2" . SPARSER::DRUG) ("Prostaglandin E2" . SPARSER::MOLECULE)
    ("1A" . SPARSER::PROTEIN) ("–3" . SPARSER::PROTEIN)
    ("IFN-γ" . SPARSER::PROTEIN) ("IL-2" . SPARSER::PROTEIN)
    ("vitamin A" . SPARSER::MOLECULE)
    ("growth factors" . SPARSER::GROWTH-FACTOR) ("FLLL32" . SPARSER::DRUG)
    ("STAT5" . SPARSER::PROTEIN) ("STAT1" . SPARSER::PROTEIN)
    ("CD15" . SPARSER::DRUG) ("CD33" . SPARSER::PROTEIN)
    ("CD11b" . SPARSER::PROTEIN) ("GM-CSF" . SPARSER::PROTEIN)
    ("MCP-1" . SPARSER::PROTEIN) ("SDF-1" . SPARSER::PROTEIN)
    ("M-CSF" . SPARSER::PROTEIN)
    ("colony-stimulating factor" . SPARSER::PROTEIN)
    ("IL-6" . SPARSER::PROTEIN)
    ("glial fibrillary acidic protein" . SPARSER::PROTEIN)
    ("α-SMA" . SPARSER::PROTEIN) ("FK" . SPARSER::MOLECULE)
    ("MV, MP, YL, FBR and BHH" . SPARSER::COLLECTION)
    ("BHH" . SPARSER::PROTEIN) ("MP" . SPARSER::PROTEIN)
    ("MV" . SPARSER::PROTEIN)
    ("both CD4 and ß-TrCP molecules (Figure xref )" . SPARSER::COLLECTION)
    ("NL-TA" . SPARSER::COLLECTION)
    ("potent anti-tetherin" . SPARSER::ANTIBODY)
    ("lentiviral accessory proteins" . SPARSER::PROTEIN)
    ("LDL" . SPARSER::PROTEIN) ("the viral proteins" . SPARSER::PROTEIN)
    ("the viral accessory proteins" . SPARSER::PROTEIN)
    ("just two amino acid" . SPARSER::AMINO-ACID) ("mus" . SPARSER::PROTEIN)
    ("BQ" . SPARSER::PROTEIN)
    ("the respective wild-type SIVcpz and SIVgor Vpus proteins"
     . SPARSER::PROTEIN)
    ("trans" . SPARSER::PROTEIN-FAMILY) ("ANT and BQ664" . SPARSER::COLLECTION)
    ("ß-catenin" . SPARSER::COLLECTION)
    ("catenin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("functional luciferase" . SPARSER::PROTEIN) ("fused" . SPARSER::PROTEIN)
    ("serines" . SPARSER::AMINO-ACID) ("proteasomes" . SPARSER::PROTEIN)
    ("tetherin and CD4" . SPARSER::COLLECTION) ("CPs" . SPARSER::PROTEIN)
    ("NL-BQ" . SPARSER::COLLECTION) ("NL" . SPARSER::PROTEIN)
    ("CD4 and eGFP" . SPARSER::COLLECTION)
    ("Vpu and eGFP" . SPARSER::COLLECTION)
    ("Vpu and tetherin" . SPARSER::COLLECTION) ("TGN" . SPARSER::PROTEIN)
    ("NL-EK" . SPARSER::COLLECTION)
    ("the parental SIVcpz and SIVgor proteins" . SPARSER::PROTEIN)
    ("vpu" . SPARSER::PROTEIN) ("substantially more active" . SPARSER::ACTIVE)
    ("inactive" . SPARSER::INACTIVE)
    ("tetherin and eGFP" . SPARSER::COLLECTION) ("eGFP" . SPARSER::PROTEIN)
    ("the insoluble membrane fraction" . SPARSER::COMPONENT)
    ("Western blot" . SPARSER::PROTEIN) ("part (CP)" . SPARSER::COMPONENT)
    ("ß-TrCP" . SPARSER::COLLECTION) ("ANT" . SPARSER::PROTEIN)
    ("EK" . SPARSER::PROTEIN) ("TrCP" . SPARSER::PROTEIN)
    ("tyrosine-" . SPARSER::AMINO-ACID)
    ("the primary viral receptor" . SPARSER::RECEPTOR)
    ("antagonist" . SPARSER::MOLECULE)
    ("the accessory protein Nef" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Vif" . SPARSER::PROTEIN) ("retroviral capsids" . SPARSER::PROTEIN)
    ("capsids" . SPARSER::PROTEIN) ("barrier" . SPARSER::PROTEIN)
    ("their viral antagonists" . SPARSER::MOLECULE)
    ("proteasomal" . SPARSER::PROTEIN) ("antagonists" . SPARSER::MOLECULE)
    ("Ptt" . SPARSER::MOLECULE) ("tetherin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Vpu" . SPARSER::PROTEIN) ("MgSO 4" . SPARSER::DRUG)
    ("CXCR4" . SPARSER::PROTEIN) ("L-glutamine" . SPARSER::MOLECULE)
    ("CCR5" . SPARSER::PROTEIN) ("isoform 2" . SPARSER::PROTEIN)
    ("enhanced green fluorescent protein" . SPARSER::PROTEIN)
    ("AP-2" . SPARSER::PROTEIN) ("CD1d" . SPARSER::PROTEIN)
    ("NTB-A" . SPARSER::PROTEIN) ("S3B" . SPARSER::PROTEIN)
    ("S3A" . SPARSER::PROTEIN) ("S2" . SPARSER::MOLECULE)
    ("TGN46" . SPARSER::PROTEIN) ("p24" . SPARSER::PROTEIN)
    ("B-D" . SPARSER::PROTEIN) ("serine residue" . SPARSER::MOLECULE)
    ("NL4" . SPARSER::PROTEIN) ("protein Nef" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("APOBEC3G" . SPARSER::PROTEIN) ("TRIM5α" . SPARSER::PROTEIN)
    ("tripartite motif-containing protein 5" . SPARSER::PROTEIN)
    ("type 1" . SPARSER::PROTEIN) ("CD4" . SPARSER::PROTEIN)
    ("β-TrCP" . SPARSER::PROTEIN) ("adaptor protein" . SPARSER::PROTEIN)
    ("reagents" . SPARSER::MOLECULE) ("YL" . SPARSER::PROTEIN)
    ("SL" . SPARSER::PROTEIN)
    ("Anaphase-promoting complex/cyclosome" . SPARSER::COLLECTION)
    ("Phosphoinositide-3" . SPARSER::COLLECTION) ("PDXP" . SPARSER::PROTEIN)
    ("Cadherin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Phosphoinositide" . SPARSER::PROTEIN) ("estradiol" . SPARSER::PROTEIN)
    ("AIB1/PTEN/Fbw7α" . SPARSER::COLLECTION) ("Int6" . SPARSER::PROTEIN)
    ("AR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("AIB1 and PTEN" . SPARSER::COLLECTION)
    ("pS2 and c-myc" . SPARSER::COLLECTION) ("ERα-AIB1" . SPARSER::COLLECTION)
    ("ERα or AIB1" . SPARSER::COLLECTION)
    ("ERα and AIB1" . SPARSER::COLLECTION) ("ERE-luc" . SPARSER::COLLECTION)
    ("estrogen" . SPARSER::MOLECULE) ("weaker" . SPARSER::PROTEIN)
    ("Gal4-luc" . SPARSER::COLLECTION) ("Gal4" . SPARSER::PROTEIN)
    ("Fbw7α and AIB1" . SPARSER::COLLECTION)
    ("PTEN or phosphatase" . SPARSER::COLLECTION)
    ("PTEN-Fbw7α" . SPARSER::COLLECTION) ("PTEN-AIB1" . SPARSER::COLLECTION)
    ("Fbw7α" . SPARSER::PROTEIN)
    ("Gfp-tagged PTEN and Flag-tagged Fbw7α" . SPARSER::COLLECTION)
    ("PTEN and Fbw7α" . SPARSER::COLLECTION)
    ("Flag-Fbw7α" . SPARSER::PROTEIN-PAIR)
    ("APC and CDH1" . SPARSER::COLLECTION) ("Δ1" . SPARSER::PROTEIN)
    ("PTEN Δ1" . SPARSER::PROTEIN)
    ("Flag-tagged full-length PTEN (PTEN FL) or mutant PTEN"
     . SPARSER::COLLECTION)
    ("Gal" . SPARSER::PROTEIN) ("map" . SPARSER::PROTEIN)
    ("anti-IgG or -PTEN antibody" . SPARSER::COLLECTION)
    ("-PTEN" . SPARSER::COLLECTION) ("siRNA" . SPARSER::PROTEIN)
    ("Flag-tagged AIB1 and Gfp-tagged wild-type PTEN or its mutant (G129R)"
     . SPARSER::COLLECTION)
    ("Gfp-tagged wild-type PTEN or its mutant (G129R)" . SPARSER::COLLECTION)
    ("Flag" . SPARSER::PROTEIN-FAMILY) ("PTEN and AIB1" . SPARSER::COLLECTION)
    ("a classical E3 ubiquitin ligase" . SPARSER::PROTEIN)
    ("c-myc and cyclin E" . SPARSER::COLLECTION)
    ("oncoproteins" . SPARSER::PROTEIN)
    ("speckle-type POZ protein (SPOP)" . SPARSER::PROTEIN)
    ("E6-associated protein" . SPARSER::PROTEIN) ("SPOP" . SPARSER::PROTEIN)
    ("only E3 ubiquitin ligases" . SPARSER::LIGASE)
    ("E1, E2 and E3" . SPARSER::COLLECTION) ("ligases" . SPARSER::LIGASE)
    ("enzymes" . SPARSER::ENZYME)
    ("pyridoxal phosphate phosphatase (PDXP)" . SPARSER::PROTEIN)
    ("phosphatases" . SPARSER::PHOSPHATASE) ("examples" . SPARSER::EXAMPLE)
    ("IGF" . SPARSER::PROTEIN) ("secondary coactivators" . SPARSER::PROTEIN)
    ("coactivators" . SPARSER::PROTEIN) ("HER2/neu" . SPARSER::COLLECTION)
    ("neu" . SPARSER::PROTEIN) ("SRC-2/GRIP1" . SPARSER::COLLECTION)
    ("Ncoa3" . SPARSER::PROTEIN) ("APC-CDH1" . SPARSER::COLLECTION)
    ("anaphase-promoting complex/cyclosome" . SPARSER::COLLECTION)
    ("cadherin" . SPARSER::HUMAN-PROTEIN-FAMILY) ("APC" . SPARSER::PROTEIN)
    ("cyclosome" . SPARSER::PROTEIN)
    ("a centromeric binding protein" . SPARSER::PROTEIN)
    ("phosphoinositide-3" . SPARSER::COLLECTION)
    ("activator" . SPARSER::ACTIVATOR) ("PPase" . SPARSER::PROTEIN)
    ("tamoxifen" . SPARSER::MOLECULE) ("AIB1 and Fbw7α" . SPARSER::COLLECTION)
    ("ubiquitin" . SPARSER::PROTEIN)
    ("Phosphatase and tensin" . SPARSER::COLLECTION)
    ("protein and lipid" . SPARSER::COLLECTION)
    ("phosphoinositide 3-kinase/AKT" . SPARSER::COLLECTION)
    ("homologue" . SPARSER::PROTEIN) ("tensin" . SPARSER::PROTEIN)
    ("Phosphatase" . SPARSER::PHOSPHATASE)
    ("Speckle-type POZ protein" . SPARSER::PROTEIN)
    ("Protein phosphatase 1" . SPARSER::PROTEIN)
    ("Pyridoxal phosphate phosphatase" . SPARSER::PROTEIN)
    ("Epidermal growth factor receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Estrogen receptor" . SPARSER::PROTEIN)
    ("Anaphase-promoting complex" . SPARSER::PROTEIN)
    ("Centromere protein C" . SPARSER::PROTEIN)
    ("sodium chloride" . SPARSER::DRUG) ("phenol red" . SPARSER::DRUG)
    ("M2" . SPARSER::MOLECULE) ("U6" . SPARSER::PROTEIN)
    ("p3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("A-C" . SPARSER::PROTEIN)
    ("pS2" . SPARSER::PROTEIN) ("activating protein" . SPARSER::PROTEIN)
    ("transcriptional activator" . SPARSER::PROTEIN-FAMILY)
    ("VP16" . SPARSER::DRUG) ("MG132" . SPARSER::PROTEIN)
    ("speckle-type POZ protein" . SPARSER::PROTEIN)
    ("E6-AP" . SPARSER::PROTEIN) ("E6" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("E2" . SPARSER::MOLECULE) ("E1" . SPARSER::MOLECULE)
    ("PP2A" . SPARSER::PROTEIN) ("protein phosphatase 2" . SPARSER::PROTEIN)
    ("PP1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("protein phosphatase 1" . SPARSER::PROTEIN)
    ("pyridoxal phosphate phosphatase" . SPARSER::PROTEIN)
    ("ERα" . SPARSER::PROTEIN) ("GRIP1" . SPARSER::PROTEIN)
    ("SRC-2" . SPARSER::PROTEIN) ("SRC-1" . SPARSER::PROTEIN)
    ("p160" . SPARSER::PROTEIN) ("SRC-3" . SPARSER::PROTEIN)
    ("CDH1" . SPARSER::PROTEIN)
    ("anaphase-promoting complex" . SPARSER::PROTEIN)
    ("CENP-C" . SPARSER::PROTEIN) ("centromere protein C" . SPARSER::PROTEIN)
    ("BRCA1" . SPARSER::PROTEIN) ("tumor suppressor gene" . SPARSER::PROTEIN)
    ("negative regulator" . SPARSER::NEGATIVE-REGULATOR)
    ("WD repeat domain" . SPARSER::PROTEIN) ("western blot" . SPARSER::PROTEIN)
    ("DS" . SPARSER::PROTEIN)
    ("p53 and its N-terminal isoforms" . SPARSER::COLLECTION)
    ("proline" . SPARSER::AMINO-ACID)
    ("an essential regulator" . SPARSER::REGULATOR)
    ("each isoform and their interrelations" . SPARSER::COLLECTION)
    ("a new light" . SPARSER::PROTEIN) ("light" . SPARSER::PROTEIN)
    ("a dominant-negative p53 mutant" . SPARSER::MUTANT)
    ("prone" . SPARSER::PROTEIN-FAMILY) ("monomer" . SPARSER::MONOMER)
    ("component" . SPARSER::COMPONENT)
    ("a generic reporter gene" . SPARSER::GENE)
    ("a potential dominant inhibitor" . SPARSER::INHIBITOR)
    ("oligomer" . SPARSER::MOLECULE)
    ("the monoclonal antibody PAb421" . SPARSER::PROTEIN)
    ("hetero" . SPARSER::PROTEIN) ("hetero-oligomers" . SPARSER::COLLECTION)
    ("Complex" . SPARSER::BIO-COMPLEX) ("Yin" . SPARSER::PROTEIN)
    ("hrs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PAb" . SPARSER::PROTEIN)
    ("cycloheximide" . SPARSER::PROTEIN) ("TA" . SPARSER::PROTEIN)
    ("TAp" . SPARSER::HUMAN-PROTEIN-FAMILY) ("glucose" . SPARSER::PROTEIN)
    ("Trp" . SPARSER::AMINO-ACID) ("transgene" . SPARSER::PROTEIN)
    ("stop" . SPARSER::HUMAN-PROTEIN-FAMILY) ("regulator" . SPARSER::REGULATOR)
    ("at least part" . SPARSER::COMPONENT) ("part" . SPARSER::COMPONENT)
    ("variants" . SPARSER::VARIANT) ("Isoforms" . SPARSER::ISOFORM)
    ("The type and degree" . SPARSER::COLLECTION)
    ("Hdm2/Hdmx" . SPARSER::COLLECTION) ("Hdmx" . SPARSER::PROTEIN)
    ("monomers" . SPARSER::MONOMER) ("tetramers" . SPARSER::TETRAMER)
    ("tetramer" . SPARSER::TETRAMER)
    ("a generic p53-dependent reporter gene" . SPARSER::GENE)
    ("p53 and Δ40p53" . SPARSER::COLLECTION) ("oligomers" . SPARSER::MOLECULE)
    ("promoter or codon" . SPARSER::COLLECTION) ("variant" . SPARSER::VARIANT)
    ("phospho-serine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("Ku80" . SPARSER::PROTEIN) ("WAF1" . SPARSER::PROTEIN)
    ("phospho-Serine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("β -galactosidase" . SPARSER::PROTEIN)
    ("β-galactosidase" . SPARSER::PROTEIN)
    ("response element" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("C-1" . SPARSER::PROTEIN) ("s 5A" . SPARSER::PROTEIN)
    ("Epidermal Growth Factor" . SPARSER::PROTEIN) ("p44" . SPARSER::PROTEIN)
    ("response elements" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("ubiquitin ligase" . SPARSER::PROTEIN) ("E3" . SPARSER::MOLECULE)
    ("TP53" . SPARSER::PROTEIN) ("Hdm2" . SPARSER::PROTEIN)
    ("kinase inhibitors or PH domain-targeted inhibitors ( xref - xref )"
     . SPARSER::COLLECTION)
    ("PDK1, BTK, and ILK" . SPARSER::COLLECTION)
    ("PDK-1, ILK, and BTK" . SPARSER::COLLECTION)
    ("PDK-1 and ILK" . SPARSER::COLLECTION)
    ("aminotransferase and albumin" . SPARSER::COLLECTION)
    ("albumin" . SPARSER::PROTEIN) ("the PTEN -null PC-3" . SPARSER::PROTEIN)
    ("isoform" . SPARSER::ISOFORM) ("PHLPP1 and PHLPP2" . SPARSER::COLLECTION)
    ("dysfunctional Scrib" . SPARSER::DRUG)
    ("a PHLPP1-Akt-Scrib heterotrimeric complex" . SPARSER::BIO-COMPLEX)
    ("Scrib" . SPARSER::DRUG) ("transporters" . SPARSER::PROTEIN)
    ("a racemic form" . SPARSER::FORM) ("-α-tocopherol" . SPARSER::MOLECULE)
    ("rac" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("net" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Akt and PIP 3" . SPARSER::COLLECTION)
    ("membrane-associated Akt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("sphingolipids" . SPARSER::MOLECULE) ("glycine" . SPARSER::AMINO-ACID)
    ("the VL2-deleted mutant" . SPARSER::MUTANT) ("Pro" . SPARSER::AMINO-ACID)
    ("Ala" . SPARSER::AMINO-ACID) ("peptide" . SPARSER::PEPTIDE)
    ("ray" . SPARSER::PROTEIN)
    ("Akt and other PH domain-containing proteins" . SPARSER::COLLECTION)
    ("a soluble form" . SPARSER::FORM) ("octanoyl" . SPARSER::MOLECULE)
    ("PDK1 and ILK" . SPARSER::COLLECTION) ("SPR" . SPARSER::PROTEIN)
    ("membrane-associated PDK-1" . SPARSER::PROTEIN)
    ("tyrosine kinase (BTK)" . SPARSER::PROTEIN)
    ("kinase (ILK)" . SPARSER::KINASE) ("BTK" . SPARSER::PROTEIN)
    ("ILK" . SPARSER::PROTEIN) ("kinases" . SPARSER::PROTEIN)
    ("PHLPP1 and PH" . SPARSER::COLLECTION) ("-Akt" . SPARSER::COLLECTION)
    ("GFP-Akt" . SPARSER::COLLECTION) ("PH" . SPARSER::PROTEIN)
    ("aminotransferase" . SPARSER::PROTEIN) ("aspartate" . SPARSER::PROTEIN)
    ("hemoglobin" . SPARSER::MOLECULE) ("MDM2, and IKKα" . SPARSER::COLLECTION)
    ("murine double minute 2 (MDM2) and inhibitor" . SPARSER::COLLECTION)
    ("two Akt downstream targets, murine double minute 2 (MDM2) and inhibitor"
     . SPARSER::COLLECTION)
    ("subunit" . SPARSER::FRAGMENT) ("kappa" . SPARSER::PROTEIN-FAMILY)
    ("luc" . SPARSER::PROTEIN) ("PC-3-luc" . SPARSER::COLLECTION)
    ("subline" . SPARSER::PROTEIN)
    ("Akt and all detectable Akt" . SPARSER::COLLECTION)
    ("the raft-associated marker flotillin-2" . SPARSER::PROTEIN)
    ("fractions" . SPARSER::COMPONENT)
    ("cholesterol-rich lipid" . SPARSER::LIPID)
    ("membrane-associated Akt and PHLPP1" . SPARSER::COLLECTION)
    ("a 3-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SGK, and PKCα" . SPARSER::COLLECTION)
    ("their parent molecules" . SPARSER::MOLECULE)
    ("LNCaP and PC-3" . SPARSER::COLLECTION) ("molecules" . SPARSER::MOLECULE)
    ("lipid" . SPARSER::LIPID) ("the polar head group" . SPARSER::MOLECULE)
    ("chroman" . SPARSER::MOLECULE)
    ("phosphoinositide-dependent protein kinase 1 (PDK-1) and mTORC2"
     . SPARSER::COLLECTION)
    ("Akt-PHLPP1" . SPARSER::COLLECTION) ("fraction" . SPARSER::COMPONENT)
    ("blot" . SPARSER::PROTEIN) ("SGK or PKCα" . SPARSER::COLLECTION)
    ("kinase (SGK)" . SPARSER::KINASE) ("PKC" . SPARSER::PROTEIN)
    ("SGK" . SPARSER::PROTEIN) ("glucocorticoid" . SPARSER::PROTEIN)
    ("types" . TYPE) ("complex" . SPARSER::BIO-COMPLEX)
    ("mTOR" . SPARSER::PROTEIN) ("phosphatidylinositol" . SPARSER::PROTEIN)
    ("Akt and PHLPP" . SPARSER::COLLECTION)
    ("LNCaP (androgen-responsive) and PC-3 (androgen-independent)"
     . SPARSER::COLLECTION)
    ("androgen" . SPARSER::PROTEIN) ("LNCaP" . SPARSER::PROTEIN)
    ("PC-3" . SPARSER::PROTEIN) ("PTEN" . SPARSER::PROTEIN)
    ("suppressor" . SPARSER::SUPPRESSOR)
    ("Akt and pleckstrin homology (PH) domain leucine-rich repeat protein phosphatase (PHLPP)"
     . SPARSER::COLLECTION)
    ("protein phosphatase (PHLPP)" . SPARSER::PROTEIN)
    ("Selenium" . SPARSER::MOLECULE) ("derivatives" . SPARSER::DERIVATIVE)
    ("PHLPP" . SPARSER::PROTEIN) ("Akt and PHLPP1" . SPARSER::COLLECTION)
    ("Ser" . SPARSER::AMINO-ACID) ("Thr" . SPARSER::AMINO-ACID)
    ("the predominant form" . SPARSER::FORM)
    ("serine/threonine" . SPARSER::COLLECTION)
    ("threonine" . SPARSER::AMINO-ACID) ("serine" . SPARSER::AMINO-ACID)
    ("antioxidant" . SPARSER::PROTEIN) ("tocotrienols" . SPARSER::MOLECULE)
    ("fat" . SPARSER::PROTEIN) ("1B" . SPARSER::PROTEIN)
    ("AKT1" . SPARSER::PROTEIN) ("PDPK1" . SPARSER::PROTEIN)
    ("Akt1" . SPARSER::PROTEIN) ("or 2" . SPARSER::MOLECULE)
    ("Foxn1" . SPARSER::PROTEIN) ("NP-40" . SPARSER::DRUG)
    ("Annexin V" . SPARSER::PROTEIN) ("annexin V" . SPARSER::PROTEIN)
    ("protein A" . SPARSER::PROTEIN) ("Na 3 VO 4" . SPARSER::MOLECULE)
    ("MgCl 2" . SPARSER::MOLECULE) ("β-mercaptoethanol" . SPARSER::MOLECULE)
    ("K+" . SPARSER::MOLECULE) ("Na+" . SPARSER::MOLECULE)
    ("β-actin" . SPARSER::PROTEIN) ("PIP3" . SPARSER::PIP3)
    ("32 P" . SPARSER::|32P|) ("amino acid" . SPARSER::AMINO-ACID)
    ("PHLPP2" . SPARSER::PROTEIN) ("type I" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("scavenger receptor class B" . SPARSER::PROTEIN)
    ("glutathione-S-transferase" . SPARSER::PROTEIN)
    ("PDK1" . SPARSER::PROTEIN)
    ("green fluorescent protein" . SPARSER::PROTEIN)
    ("IKKα" . SPARSER::PROTEIN) ("MDM2" . SPARSER::PROTEIN)
    ("double minute 2" . SPARSER::PROTEIN)
    ("siRNA-mediated" . SPARSER::PROTEIN) ("flotillin-2" . SPARSER::PROTEIN)
    ("polyunsaturated fatty acid" . SPARSER::MOLECULE)
    ("α- tocopherol" . SPARSER::MOLECULE)
    ("a 3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PDK-1" . SPARSER::PROTEIN)
    ("phosphoinositide-dependent protein kinase 1" . SPARSER::PROTEIN)
    ("Protein phosphatase 2" . SPARSER::PROTEIN) ("PKCα" . SPARSER::PROTEIN)
    ("mTORC2" . SPARSER::PROTEIN)
    ("mammalian target of rapamycin" . SPARSER::PROTEIN)
    ("LY-294002" . SPARSER::PROTEIN) ("PIP 3" . SPARSER::PIP3)
    ("phosphatase and tensin homolog" . SPARSER::PROTEIN)
    ("α-tocopherol" . SPARSER::MOLECULE) ("isoform 1" . SPARSER::PROTEIN)
    ("protein phosphatase" . SPARSER::PROTEIN)
    ("leucine-rich repeat" . SPARSER::PROTEIN) ("PHLPP1" . SPARSER::PROTEIN)
    ("focal complexes" . SPARSER::BIO-COMPLEX) ("drug" . SPARSER::DRUG)
    ("ECM" . SPARSER::PROTEIN) ("that SHP2’s" . SPARSER::PROTEIN)
    ("partial" . SPARSER::PROTEIN) ("PTPs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MEF" . SPARSER::PROTEIN) ("PTP" . SPARSER::PROTEIN)
    ("GST" . SPARSER::PROTEIN)
    ("Previously identified SHP2 substrates" . SPARSER::SUBSTRATE)
    ("PTPase" . SPARSER::PROTEIN) ("Tyr" . SPARSER::AMINO-ACID)
    ("an approximately 120 KDa protein" . SPARSER::PROTEIN)
    ("KDa" . SPARSER::PROTEIN) ("forms" . SPARSER::FORM)
    ("FLAG" . SPARSER::PROTEIN-FAMILY) ("MEFs" . SPARSER::PROTEIN)
    ("substrate" . SPARSER::SUBSTRATE) ("Substrate" . SPARSER::SUBSTRATE)
    ("mCherry-actin" . SPARSER::COLLECTION) ("actin" . SPARSER::PROTEIN)
    ("mCherry" . SPARSER::PROTEIN) ("MDA" . SPARSER::DRUG)
    ("ligand" . SPARSER::LIGAND) ("cortactin" . SPARSER::PROTEIN)
    ("Cortactin" . SPARSER::PROTEIN) ("fibronectin" . SPARSER::PROTEIN)
    ("opted" . SPARSER::HUMAN-PROTEIN-FAMILY) ("integrin" . SPARSER::PROTEIN)
    ("form" . SPARSER::FORM) ("glycosphingolipid" . SPARSER::MOLECULE)
    ("phosphoprotein" . SPARSER::PROTEIN) ("PAG" . SPARSER::PROTEIN)
    ("Sprouty" . SPARSER::PROTEIN-FAMILY)
    ("the epidermal growth factor receptor (EGFR) ( xref ) and the human EGFR2 (HER2 also known as ErbB2)"
     . SPARSER::COLLECTION)
    ("functional Ras" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ErbB2" . SPARSER::PROTEIN)
    ("Ras-extracellular signal-regulated kinases" . SPARSER::COLLECTION)
    ("inducer" . SPARSER::PROTEIN) ("RasGAP" . SPARSER::PROTEIN)
    ("matrix" . SPARSER::PROTEIN-FAMILY) ("integrins" . SPARSER::PROTEIN)
    ("CagA" . SPARSER::PROTEIN) ("ligands" . SPARSER::LIGAND)
    ("phosphotyrosine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("substrates" . SPARSER::SUBSTRATE) ("phosphatase" . SPARSER::PHOSPHATASE)
    ("tyrosine" . SPARSER::AMINO-ACID) ("enzyme" . SPARSER::ENZYME)
    ("pY" . SPARSER::PROTEIN)
    ("nascent focal complexes" . SPARSER::BIO-COMPLEX)
    ("complexes" . SPARSER::BIO-COMPLEX) ("kinase (FAK)" . SPARSER::KINASE)
    ("pTyr" . SPARSER::PHOSPHORYLATED-AMINO-ACID) ("FAK" . SPARSER::PROTEIN)
    ("MDA-MB468" . SPARSER::PROTEIN) ("RTKs" . SPARSER::PROTEIN)
    ("homology" . SPARSER::PROTEIN) ("Src" . SPARSER::PROTEIN)
    ("Anti-" . SPARSER::ANTIBODY)
    ("growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GM-130" . SPARSER::PROTEIN) ("Triton X-100" . SPARSER::MOLECULE)
    ("serum albumin" . SPARSER::PROTEIN) ("sPax2" . SPARSER::PROTEIN)
    ("PF-573228" . SPARSER::DRUG) ("F11" . SPARSER::PROTEIN)
    ("anti-β" . SPARSER::PROTEIN) ("kinase activity" . SPARSER::PROTEIN)
    ("v-Src" . SPARSER::PROTEIN)
    ("fibroblast growth factor receptor" . SPARSER::PROTEIN)
    ("GTPase activating protein" . SPARSER::PROTEIN)
    ("protein kinase B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ERK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("extracellular signal-regulated kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphatase 2" . SPARSER::PROTEIN)
    ("growth-factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("receptor tyrosine kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SHP2" . SPARSER::PROTEIN) ("phosphatase2" . SPARSER::PROTEIN)
    ("azacytidine and decitabine" . SPARSER::COLLECTION)
    ("decitabine" . SPARSER::DRUG) ("azacytidine" . SPARSER::DRUG)
    ("RARS or RCMD-R" . SPARSER::COLLECTION)
    ("N-RAS and K-RAS" . SPARSER::COLLECTION)
    ("the largest cohort" . SPARSER::MOLECULE)
    ("FLT3 and RAS" . SPARSER::COLLECTION) ("Gene" . SPARSER::GENE)
    ("cytarabine" . SPARSER::MOLECULE) ("clofarabine" . SPARSER::DRUG)
    ("CR" . SPARSER::PROTEIN) ("RA" . SPARSER::PROTEIN)
    ("RARS" . SPARSER::PROTEIN) ("RAEB-t" . SPARSER::COLLECTION)
    ("CMML" . SPARSER::PROTEIN) ("t" . SPARSER::PROTEIN)
    ("dL" . SPARSER::MOLECULE)
    ("chronic myelomonocytic leukemia (CMML)" . SPARSER::PROTEIN)
    ("N- RAS or K- RAS" . SPARSER::COLLECTION)
    ("RAS GTP, which in turn activates the RAS/Raf/MEK and the RAS/PI3K signaling pathways"
     . SPARSER::COLLECTION)
    ("kinase, and RalGDs" . SPARSER::COLLECTION)
    ("RAS/PI3K" . SPARSER::COLLECTION) ("RAS/Raf/MEK" . SPARSER::COLLECTION)
    ("RalGDs" . SPARSER::PROTEIN) ("phosphoinositide" . SPARSER::PROTEIN)
    ("effectors" . SPARSER::EFFECTOR) ("MEK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Raf" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("N-RAS, K-RAS , and H-RAS" . SPARSER::COLLECTION)
    ("isoforms" . SPARSER::ISOFORM) ("dehydrogenase" . SPARSER::PROTEIN)
    ("isocitrate" . SPARSER::PROTEIN) ("MLL" . SPARSER::PROTEIN)
    ("leukemia" . SPARSER::PROTEIN) ("CCAAT" . SPARSER::PROTEIN)
    ("KIT" . SPARSER::PROTEIN) ("nucleophosmin" . SPARSER::PROTEIN)
    ("myeloid" . SPARSER::PROTEIN) ("alleles" . SPARSER::ALLELE)
    ("MDS" . SPARSER::PROTEIN) ("6.3" . SPARSER::PROTEIN)
    ("JAK2" . SPARSER::PROTEIN) ("K- RAS" . SPARSER::PROTEIN)
    ("N- RAS" . SPARSER::PROTEIN) ("H-RAS" . SPARSER::PROTEIN)
    ("K-RAS" . SPARSER::PROTEIN) ("N-RAS" . SPARSER::PROTEIN)
    ("IDH1" . SPARSER::PROTEIN) ("TET2" . SPARSER::PROTEIN)
    ("C/EBP α" . SPARSER::PROTEIN) ("tyrosine kinase" . SPARSER::PROTEIN)
    ("NPM1" . SPARSER::PROTEIN) ("member 1" . SPARSER::PROTEIN)
    ("FLT3" . SPARSER::PROTEIN) ("RTK/RAS" . SPARSER::COLLECTION)
    ("RTK" . SPARSER::PROTEIN) ("well-differentiated GC" . SPARSER::PROTEIN)
    ("all primary resectable GC" . SPARSER::PROTEIN)
    ("locally advanced resectable GC" . SPARSER::PROTEIN)
    ("/BRAF" . SPARSER::COLLECTION) ("radical" . SPARSER::MOLECULE)
    ("a mucinous GC" . SPARSER::PROTEIN) ("KRAS/BRAF" . SPARSER::COLLECTION)
    ("Yokohama" . SPARSER::PROTEIN) ("-mutant" . SPARSER::MUTANT)
    ("well-differentiated Yokohama GC" . SPARSER::PROTEIN)
    ("Leeds" . SPARSER::PROTEIN) ("GCs" . SPARSER::PROTEIN)
    ("male" . SPARSER::MOLECULE)
    ("only three KRAS mutant GC" . SPARSER::PROTEIN)
    ("cohort and 67%" . SPARSER::COLLECTION)
    ("resectable GC" . SPARSER::PROTEIN) ("cohorts" . SPARSER::MOLECULE)
    ("panitumumab and cetuximab" . SPARSER::COLLECTION)
    ("panitumumab" . SPARSER::DRUG) ("antibodies" . SPARSER::ANTIBODY)
    ("HER2-positive inoperable GC" . SPARSER::PROTEIN)
    ("trastuzumab" . SPARSER::DRUG) ("cytotoxic" . SPARSER::PROTEIN)
    ("the UK and the Japanese cohort ( P <0.05)" . SPARSER::COLLECTION)
    ("UK" . SPARSER::PROTEIN) ("MMR" . SPARSER::PROTEIN)
    ("mismatch" . SPARSER::PROTEIN) ("GC" . SPARSER::PROTEIN)
    ("Inhibitors" . SPARSER::INHIBITOR) ("N2" . SPARSER::PROTEIN)
    ("pN3" . SPARSER::PROTEIN) ("N1" . SPARSER::PROTEIN)
    ("S-1" . SPARSER::PROTEIN) ("HER2" . SPARSER::PROTEIN)
    ("epidermal growth factor" . SPARSER::PROTEIN)
    ("MSI and BRAF-" . SPARSER::COLLECTION) ("BRAF-" . SPARSER::PROTEIN)
    ("II" . SPARSER::PROTEIN) ("Group" . SPARSER::MOLECULE)
    ("cetuximab" . SPARSER::DRUG) ("KRAS and BRAF" . SPARSER::COLLECTION)
    ("BRAF and KRAS" . SPARSER::COLLECTION)
    ("phosphoinositide 3-kinase-AKT" . SPARSER::COLLECTION)
    ("state" . SPARSER::BIO-STATE) ("GTPase" . SPARSER::GTPASE)
    ("MSS" . SPARSER::PROTEIN) ("group" . SPARSER::MOLECULE)
    ("incident invasive CRC" . SPARSER::PROTEIN)
    ("a prognostic biomarker" . SPARSER::MOLECULE)
    ("a predictive biomarker" . SPARSER::MOLECULE)
    ("biomarker" . SPARSER::MOLECULE) ("adjuvant" . SPARSER::DRUG)
    ("epidermal growth factor receptor (EGFR)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("RAS/RAF/MAPK" . SPARSER::COLLECTION) ("MAPK" . SPARSER::PROTEIN)
    ("RAF" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("RAS" . SPARSER::HUMAN-PROTEIN-FAMILY) ("EGFR" . SPARSER::PROTEIN)
    ("guanosine" . SPARSER::MOLECULE) ("GTP" . SPARSER::NUCLEOTIDE)
    ("KRAS- or BRAF" . SPARSER::COLLECTION) ("–1" . SPARSER::PROTEIN)
    ("HR" . SPARSER::PROTEIN) ("MSI" . SPARSER::PROTEIN)
    ("BRAF" . SPARSER::PROTEIN) ("exon" . SPARSER::PROTEIN)
    ("Western Washington State" . SPARSER::BIO-STATE)
    ("State" . SPARSER::BIO-STATE) ("KRAS-" . SPARSER::PROTEIN)
    ("KRAS" . SPARSER::PROTEIN) ("Ras" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphoinositide 3-kinase" . SPARSER::PROTEIN) ("–2" . SPARSER::PROTEIN)
    ("−2" . SPARSER::PROTEIN) ("C20" . SPARSER::PROTEIN)
    ("PMS2" . SPARSER::PROTEIN) ("MSH6" . SPARSER::PROTEIN)
    ("MSH2" . SPARSER::PROTEIN) ("D5S346" . SPARSER::PROTEIN)
    ("anti-EGFR" . SPARSER::PROTEIN)
    ("epidermal growth factor receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("guanosine triphosphate" . SPARSER::MOLECULE)
    ("proto-oncogene" . SPARSER::PROTEIN)
    ("cyclin D1, cyclin E, and p27" . SPARSER::COLLECTION)
    ("that AIB1's" . SPARSER::PROTEIN)
    ("cyclin D1, cyclin E, c-myc, and E2F1" . SPARSER::COLLECTION)
    ("targets" . SPARSER::TARGET-PROTEIN) ("AP-1" . SPARSER::PROTEIN)
    ("PI3K/AKT" . SPARSER::COLLECTION)
    ("c-myc, cyclin D1, cyclin E, and E2F1" . SPARSER::COLLECTION)
    ("progesterone receptor and androgen receptor" . SPARSER::COLLECTION)
    ("AIB1 and oestrogen" . SPARSER::COLLECTION)
    ("CBP and p300" . SPARSER::COLLECTION)
    ("acetyltransferases, and methyltransferases" . SPARSER::COLLECTION)
    ("CARM1 and PRMT1" . SPARSER::COLLECTION)
    ("methyltransferases" . SPARSER::PROTEIN) ("histone" . SPARSER::PROTEIN)
    ("acetyltransferases" . SPARSER::PROTEIN) ("shRNA" . SPARSER::PROTEIN)
    ("Aib1" . SPARSER::PROTEIN) ("Aib" . SPARSER::DRUG)
    ("cyclin D1 or cyclin E" . SPARSER::COLLECTION)
    ("c-myc or E2F1" . SPARSER::COLLECTION)
    ("c-myc and E2F1" . SPARSER::COLLECTION)
    ("cyclin E and cyclin D1" . SPARSER::COLLECTION)
    ("inhibitor" . SPARSER::INHIBITOR)
    ("cyclin D1, and cyclin E" . SPARSER::COLLECTION)
    ("E2F1 and c-myc" . SPARSER::COLLECTION)
    ("cyclin D1 and cyclin E" . SPARSER::COLLECTION)
    ("E2F1 or c-myc" . SPARSER::COLLECTION)
    ("E2F1, c-myc, cyclin D1, cyclin E, and p27" . SPARSER::COLLECTION)
    ("myr" . SPARSER::MOLECULE) ("active" . SPARSER::ACTIVE)
    ("CDK4 and p21" . SPARSER::COLLECTION)
    ("E2F1, c-myc, cyclin D1, and cyclin E" . SPARSER::COLLECTION)
    ("p-AKT" . SPARSER::COLLECTION) ("cytometry" . SPARSER::PROTEIN)
    ("foci" . SPARSER::PROTEIN)
    ("shAIB1 almost completely depleted intracellular AIB1 protein"
     . SPARSER::PROTEIN)
    ("shRNAs" . SPARSER::RNA) ("RNA" . SPARSER::RNA)
    ("seven" . SPARSER::PROTEIN) ("cohort" . SPARSER::MOLECULE)
    ("receptor and androgen receptor" . SPARSER::COLLECTION)
    ("hormone" . SPARSER::MOLECULE) ("receptors" . SPARSER::PROTEIN)
    ("SRC3 , p/CIP , RAC3 , ACTR , and TRAM1" . SPARSER::COLLECTION)
    ("ACTR" . SPARSER::PROTEIN) ("biomarkers" . SPARSER::MOLECULE)
    ("Biomarkers" . SPARSER::MOLECULE) ("proteins" . SPARSER::PROTEIN)
    ("PEA3" . SPARSER::PROTEIN) ("STAT6" . SPARSER::PROTEIN)
    ("NF-κB" . SPARSER::PROTEIN) ("PRMT1" . SPARSER::PROTEIN)
    ("CARM1" . SPARSER::PROTEIN)
    ("transcriptional coactivator" . SPARSER::PROTEIN)
    ("LY294002" . SPARSER::MOLECULE) ("c-nu" . SPARSER::PROTEIN)
    ("ml −1" . SPARSER::PROTEIN) ("G418" . SPARSER::MOLECULE)
    ("α -tubulin" . SPARSER::PROTEIN) ("p21" . SPARSER::PROTEIN)
    ("CDK4" . SPARSER::PROTEIN) ("p27" . SPARSER::PROTEIN)
    ("cyclin E" . SPARSER::PROTEIN) ("cyclin D1" . SPARSER::PROTEIN)
    ("c-myc" . SPARSER::PROTEIN) ("amino acids" . SPARSER::AMINO-ACID)
    ("monoclonal antibody" . SPARSER::DRUG)
    ("hydrogen peroxide" . SPARSER::DRUG) ("mitomycin C" . SPARSER::DRUG)
    ("androgen receptor" . SPARSER::PROTEIN)
    ("steroid hormone" . SPARSER::MOLECULE) ("TRAM1" . SPARSER::PROTEIN)
    ("RAC3" . SPARSER::PROTEIN) ("p/CIP" . SPARSER::PROTEIN)
    ("SRC3" . SPARSER::PROTEIN) ("cancer 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("E2F1" . SPARSER::PROTEIN) ("non-muscle" . SPARSER::PROTEIN)
    ("AIB1" . SPARSER::PROTEIN) ("MZF1-GFP" . SPARSER::COLLECTION)
    ("GFP" . SPARSER::PROTEIN) ("MTT" . SPARSER::MOLECULE)
    ("oncogene" . SPARSER::ONCOGENE) ("MZF1 and AXL" . SPARSER::COLLECTION)
    ("AXL" . SPARSER::PROTEIN) ("Axl" . SPARSER::PROTEIN)
    ("kinase" . SPARSER::KINASE) ("oligonucleotide" . SPARSER::MOLECULE)
    ("antisense" . SPARSER::PROTEIN) ("Blot" . SPARSER::PROTEIN)
    ("MZF1-SiRNA" . SPARSER::COLLECTION) ("SiRNA" . SPARSER::PROTEIN)
    ("the proximal promoter" . SPARSER::PROMOTER)
    ("SW480 and CRC" . SPARSER::COLLECTION)
    ("IgG" . SPARSER::HUMAN-PROTEIN-FAMILY) ("antibody" . SPARSER::PROTEIN)
    ("SW480 or CRC" . SPARSER::COLLECTION) ("chromatin" . SPARSER::PROTEIN)
    ("MZF1-mut1" . SPARSER::PROTEIN) ("mut" . SPARSER::PROTEIN)
    ("transcription factors p53 [ xref ] and STAT3 [ xref ]"
     . SPARSER::COLLECTION)
    ("p300/CBP" . SPARSER::COLLECTION) ("genes" . SPARSER::GENE)
    ("family" . SPARSER::PROTEIN-FAMILY) ("CBP" . SPARSER::PROTEIN)
    ("-AGACGC-3" . SPARSER::COLLECTION) ("cytokine" . SPARSER::PROTEIN)
    ("-CACCACCC-3" . SPARSER::COLLECTION) ("-ACCATTC-3" . SPARSER::COLLECTION)
    ("type" . TYPE) ("-CGGGnGAGGGGGAA-3" . SPARSER::COLLECTION)
    ("-AGTGGGGA-3" . SPARSER::COLLECTION) ("promoters" . SPARSER::PROMOTER)
    ("YY1, MZF1, Runx1, ADR1, IRF1, Delta1, and p300" . SPARSER::COLLECTION)
    ("ADR" . SPARSER::PROTEIN) ("mutant" . SPARSER::MUTANT)
    ("fragment" . SPARSER::FRAGMENT) ("DNA" . SPARSER::DNA)
    ("fragments" . SPARSER::FRAGMENT) ("ATG" . SPARSER::DRUG)
    ("mutants" . SPARSER::MUTANT) ("nucleotides" . SPARSER::NUCLEOTIDE)
    ("luciferase" . SPARSER::PROTEIN) ("CRCs" . SPARSER::PROTEIN)
    ("CFP-10/ESAT-6" . SPARSER::COLLECTION) ("berberine" . SPARSER::MOLECULE)
    ("REBP-1" . SPARSER::COLLECTION) ("AG" . SPARSER::PROTEIN)
    ("Sterol" . SPARSER::PROTEIN) ("-1" . SPARSER::PROTEIN)
    ("p53/estrogen receptor/progesterone receptor" . SPARSER::COLLECTION)
    ("antibiotic" . SPARSER::DRUG) ("anthracycline" . SPARSER::MOLECULE)
    ("doxorubicin" . SPARSER::PROTEIN) ("ischemia" . SPARSER::PROTEIN)
    ("target" . SPARSER::TARGET-PROTEIN) ("-p55PIK" . SPARSER::COLLECTION)
    ("receptor" . SPARSER::RECEPTOR) ("EGF" . SPARSER::PROTEIN)
    ("thyroid" . SPARSER::PROTEIN) ("pik3r3" . SPARSER::PROTEIN)
    ("p85, p55, and p50" . SPARSER::COLLECTION)
    ("subunits" . SPARSER::FRAGMENT) ("Class" . CLASS)
    ("Akt" . SPARSER::HUMAN-PROTEIN-FAMILY) ("effector" . SPARSER::EFFECTOR)
    ("components" . SPARSER::COMPONENT) ("inhibitors" . SPARSER::INHIBITOR)
    ("/AKT" . SPARSER::COLLECTION) ("variety" . SPARSER::VARIETY)
    ("AKT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MZF1 and p55PIK" . SPARSER::COLLECTION) ("mRNA" . SPARSER::PROTEIN)
    ("CRC" . SPARSER::PROTEIN) ("cis" . SPARSER::PROTEIN)
    ("Chromatin" . SPARSER::PROTEIN) ("gene" . SPARSER::GENE)
    ("promoter" . SPARSER::PROMOTER) ("mitochondria" . SPARSER::PROTEIN)
    ("protein" . SPARSER::PROTEIN) ("repressor" . SPARSER::REPRESSOR)
    ("IA" . SPARSER::MOLECULE) ("class" . CLASS) ("MZF-1" . SPARSER::PROTEIN)
    ("colon cancer" . SPARSER::PROTEIN)
    ("receptor tyrosine kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Transcription factor" . SPARSER::PROTEIN)
    ("zinc finger protein" . SPARSER::PROTEIN)
    ("Myeloid zinc finger 1" . SPARSER::PROTEIN)
    ("transcriptional regulator" . SPARSER::PROTEIN-FAMILY)
    ("STAT3" . SPARSER::PROTEIN) ("IRF-1" . SPARSER::PROTEIN)
    ("interferon beta" . SPARSER::PROTEIN)
    ("Interferon regulatory factor 1" . SPARSER::PROTEIN)
    ("RUNX1" . SPARSER::PROTEIN) ("p300" . SPARSER::PROTEIN)
    ("Delta1" . SPARSER::PROTEIN) ("IRF1" . SPARSER::PROTEIN)
    ("Runx1" . SPARSER::PROTEIN) ("YY1" . SPARSER::PROTEIN)
    ("full-length" . SPARSER::PROTEIN)
    ("dimethyl sulfoxide" . SPARSER::MOLECULE) ("-2" . SPARSER::PROTEIN)
    ("anti-" . SPARSER::ANTIBODY) ("Tween 20" . SPARSER::MOLECULE)
    ("-3" . SPARSER::PROTEIN) ("Dual-Luciferase" . SPARSER::PROTEIN)
    ("pGL3" . SPARSER::PROTEIN) ("CO 2" . SPARSER::PROTEIN)
    ("SW480" . SPARSER::PROTEIN) ("transcription factor" . SPARSER::PROTEIN)
    ("ESAT-6" . SPARSER::PROTEIN) ("CFP-10" . SPARSER::PROTEIN)
    ("neuroprotective agent" . SPARSER::DRUG)
    ("derived growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("element binding protein" . SPARSER::PROTEIN)
    ("fatty acid" . SPARSER::MOLECULE)
    ("Insulin-like growth factor" . SPARSER::PROTEIN)
    ("progesterone receptor" . SPARSER::PROTEIN)
    ("estrogen receptor" . SPARSER::PROTEIN)
    ("p53" . SPARSER::HUMAN-PROTEIN-FAMILY) ("IGF2" . SPARSER::PROTEIN)
    ("insulin-like growth factor" . SPARSER::PROTEIN)
    ("tumor suppressor retinoblastoma protein" . SPARSER::PROTEIN)
    ("pik3r" . SPARSER::PROTEIN-FAMILY) ("p55 γ" . SPARSER::PROTEIN)
    ("p50" . SPARSER::PROTEIN) ("p55" . SPARSER::PROTEIN)
    ("p85" . SPARSER::PROTEIN) ("p110" . SPARSER::PROTEIN)
    ("PI3Ks" . SPARSER::PROTEIN) ("cell membrane" . SPARSER::PROTEIN)
    ("phosphatidylinositol-3" . SPARSER::PROTEIN) ("MZF1" . SPARSER::PROTEIN)
    ("myeloid zinc finger 1" . SPARSER::PROTEIN)
    ("protein can" . SPARSER::PROTEIN) (NIL . SPARSER::PROTEIN)
    ("PI3K" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphatidylinositol 3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p55PIK" . SPARSER::PROTEIN)))