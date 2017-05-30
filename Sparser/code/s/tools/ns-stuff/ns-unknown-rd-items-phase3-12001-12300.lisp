
(IN-PACKAGE :SP)
(DEFPARAMETER SPARSER::*NS-RD-PHASE3-12001-12300*
  '(".213-1G" ".213−1G" ".4185+1G" ".5074+1G" ".5075−1G" ".5277+1G"
    ".547+14delG" ".670+16G" ".80+1G" ".932delC" "A-C" "A-C-A-A" "A-D" "A-H"
    "A-T" "A-allele" "A-binding" "A-loop" "A1" "A11_G12insGA" "A1459P" "A165V"
    "A171T" "A1A2" "A2" "A2210P" "A2226S" "A2A2" "A300-459A" "A41P" "A5-13"
    "A549scells" "A598V" "AAT-1" "ABCA11" "ABD" "ABRs" "ABT-510" "ABT-898"
    "ACEView" "ACGC" "ACR-pedi" "ACR-pedi30" "ACR-pedi50" "ACR-pedi70"
    "AD-relevant" "AD228" "ADA-Two-A" "ADAM9-L" "ADAM9-S" "ADAM9-long"
    "ADAM9-miR-218-CDH2" "ADCK3" "ADPC" "ADPR" "AF1-Fn" "AGAC" "AGC-family"
    "AGCAA" "AGEN" "AGGC" "AGS-DOC" "AHTO" "AHTO-7" "AIC" "AIDS-associated"
    "AIDS-caused" "AIO" "AIO-94" "AJCC" "AK294696" "AKB" "AKT1and" "AKT1m"
    "ALDH1A1expression" "ALDH1A1siRNA" "ALK01" "ALMS1" "AMAP" "AML-2" "AMPK-α2"
    "AMPK-β" "AMPK-β1" "AMPK-β1-expressing" "AMPK-β1-overexpressing" "ANCT"
    "ANDROGEN-INSENSITIVITY" "ANGPTL5" "ANGTL1" "ANKRD55" "ANRIL" "AOPP"
    "AP1-like" "AP5" "APDS" "APHA9" "APK" "APOL6" "APP695" "AR-GRIP-1"
    "AR-knockin" "AR-ligand" "AR-only" "ARE-like" "ARE3" "ARE4" "ARGINAID"
    "ARORs" "ARS" "AS-D" "ASCO" "ASCO15" "ASSST" "ASTN2" "AT-MD" "ATCC"
    "ATF4-dependent" "ATF4-induced" "ATF4-initiated" "ATF4-mediated"
    "ATM-mediated" "ATMi" "ATNLLYTR" "ATNLWW" "ATR-pathway" "ATTG" "AW008643.1"
    "AWK" "AZD" "AZD-2281" "Ab3" "Ab5" "Abcam" "Abnova" "Ac" "Ac-Leu-Gly-Lys"
    "AcH3" "AcH3-K9" "AcK175" "Acetyl-mimic" "Acidemia" "Activin-like"
    "Actr-IIB" "Actr-IIb" "Adam" "Addison" "Adenovirus-Cre-GFP" "Adenylyl"
    "Adeyemi" "Adr" "Adriamycin" "Advanced-stage" "Aeolicus" "AfCS" "Afa"
    "Affymetrix" "Africa" "African" "African-American" "African-Americans"
    "Africans" "Afro-Brazilian" "Afro-Brazilians" "Ag" "Ag-recall" "Ago-clade"
    "Ago2" "Aims" "Aisen" "Aisner" "Ak11" "Akio" "Akira" "Akiyama" "Akt-pS473"
    "Akt-pathway" "Akt-substrate" "Akt1-476" "Akt1-AA" "Akt1-DE"
    "Akt1-DE-expressing" "Akt1-S477" "Akt1-S477A" "Akt1-pS473" "Akt1-pS477"
    "Akt1-tail" "Akt1m" "Akt2-pS474" "Akt2-pS478" "Akt308" "Alan" "Alanazi"
    "Alcohol-fed" "Alff" "Align-GVGD" "Allelic-specific" "Alli" "AluS" "AluSc8"
    "AluSq2" "AluSx1" "AluY" "AluYa5" "AluYk4" "Aly" "Alzheimer" "Alzheimer's"
    "Alzheimer’s" "American" "Americans" "Amersham"
    "Amino-3-hydroxy-5-methyl-isoxazole-4-propionic" "Amish" "Andersen"
    "Anderson" "Androgen-Deprivation" "Angulo" "Ankrd2-001" "Ankrd2-202"
    "Anterior" "Apo-BrdU" "Apostolova" "Applichem" "Aquifex" "Arab" "Arabia"
    "Arg399Gln" "ArgTrp" "ArgTrp " "Arnold" "Arora" "Ashcroft" "Asian" "Asians"
    "Asp-rich" "AstraZeneca" "Astro" "Astro#40-UP" "Ataluren" "Auditory-Verbal"
    "Audrey" "Austin" "Australians" "Awadelkarim" "Axon" "Aydın" "A·C" "Aα"
    "Aβ" "A → G" "A–C" "A–D" "A→G" "B-C" "B-D" "B-E" "B-a" "B-type" "B1"
    "B4DGP4" "BAG57855.1" "BALB" "BAPTA-AM" "BAX5" "BAs" "BCL" "BCL11"
    "BCL2-like" "BCLU" "BCSS" "BD-L" "BDNFactivities" "BFB" "BFB-cycles"
    "BFDR " "BGJ" "BGJ-398" "BGLF4" "BH3-only" "BIA" "BIM-L" "BIM-S" "BLASTP"
    "BLBCs" "BM7-sh" "BMDM" "BMDMs" "BMI" "BNGL" "BORR" "BRC1-8" "BRC5"
    "BRCA1-deficent" "BRCA1-mutated" "BRCA1_OVEREXP_DN" "BRCA2-mutated"
    "BRCAness" "BRCC" "BRD7-p85α" "BRD9" "BT-12" "BT145" "BT164" "Background"
    "Badie" "Bagnoli" "Bai" "Balb" "Balko" "Balmer" "Baltimore" "BamH1+Xho1"
    "BamHI" "Bamezai" "Bandyopadhyay" "Barcelona" "Bardet" "Bardet–Biedl"
    "Barnes" "Barr" "Barr-virus" "Barrett" "Barretto" "Barro" "Basel" "Baselga"
    "Bassermann" "Bay-11-7082" "Bayes" "Bcl-2" "Bcl-xL#2" "Beabesand" "Begg"
    "Begg's" "Begg’s" "Behçet" "Belgrano" "Belém" "Benin" "Benjamini"
    "Benjamini-Hochberg" "Bentink" "Benveniste" "Berlin" "Bernards" "Bertaux"
    "Bethyl" "Bhattacharya" "Bhoj" "Bibeau" "Bibeau-Poirier" "Biedl"
    "Billerica" "Binet" "Bio-Plex" "Bio-Rad" "Bio-Tech" "Bio-Tek" "BioGRID"
    "BioID" "BioNetGen" "BioRad" "Biochrome" "Biofluids" "Biologicals"
    "Biomedicine" "Biosystems" "Bioworlde" "BirA*-CEP63" "Birbeck"
    "Bisphenol-A" "Blom" "Blumer" "Bnz" "Boettler" "Boltzmann" "Bonferonni"
    "Bonferroni" "Borrmann" "Borrmann’s" "Boston" "Box1" "Boyden"
    "Boyden-chamber" "Bp53" "Brachytherapy" "Bradford" "Bradner"
    "Brain-metastatic" "Braunschweig" "Brazil" "British" "Broader" "Brodie"
    "Bromberg" "Browser" "Bruch" "Bruch’s" "Brugge" "BubR" "Buch"
    "Buckinghamshire" "Buerger" "Burkitt" "Burkitt's" "Burkitt-like" "Burm"
    "Buxbaum" "B·D" "Bβ" "C-9G" "C-G-G-C-G-G-G" "C-Src-triggered" "C-a"
    "C-allele" "C-alleles" "C-c-all" "C-d-all" "C-lobe" "C-terminally" "C-type"
    "C1" "C1483F" "C1483R" "C1b" "C1orf85" "C2" "C2CD4A" "C2HC-type"
    "C2orf44-ALK" "C3" "C3-treated" "C3orf15" "C4" "C5" "C57Bl6" "C5orf24" "C6"
    "C6.5" "C8-BID" "C8orf13–BLK" "CACAG" "CAF-like" "CAL-101" "CAO" "CAP"
    "CARNs" "CBD" "CBMDisc" "CBR3" "CCAT1" "CCAT1-L-in" "CCAT1-S" "CCAT2"
    "CCC-3" "CCD-18Co" "CCDC67" "CCJ" "CCNA2-Drug" "CCNA2and" "CCRF-CEM2"
    "CCRP" "CCSCs" "CCTA1-L" "CD-PTEN" "CD279" "CD28-induced" "CD28-stimulated"
    "CD28-stimulation" "CD4+CD62L" "CD4-CD8-αβ" "CD4-Nef-GFP"
    "CD4-promoter-directed" "CD41a" "CD44-activated" "CD44-induced"
    "CD44-mediated" "CD44-regulated" "CD44s" "CD44v6" "CD95-HeLa" "CD95R-CD95L"
    "CDD-111" "CDDR" "CDH-1" "CDH-2" "CDH-5" "CDHI" "CDK6-F1" "CDY1" "CDYL"
    "CEACAMs" "CECAM" "CEER" "CEP17" "CEP85" "CEU" "CG-MD" "CG-MD-based" "CGC"
    "CGG" "CGP53353" "CGTG" "CH-11" "CHANG" "CHAQ" "CHARMS" "CHARMS-JIA" "CHEK"
    "CHK1i" "CHLA" "CHLA-10" "CHLA-9" "CHX-mediated" "CIAP" "CID" "CIMP-1"
    "CIMP-2" "CK-903" "CK1α1" "CK1γ" "CK1δ" "CK1ε" "CK2-IP6" "CKAP2L" "CKH"
    "CKIγ" "CKIδ" "CKIδ-mediated" "CLEOPATRA" "CLIA" "CMK3" "CMV-miR-99a" "CMY"
    "CNAS" "CNIO" "CNKI" "CNST" "CNVs" "CORAL" "CORUM" "CPG53353" "CQ" "CRBP-1"
    "CRE" "CRL-2098" "CRMI" "CRP-XL" "CRPCa" "CRT0066101" "CSC-like" "CSR-D"
    "CSSSS" "CTAGE" "CTCs" "CTFR" "CTG" "CTL#1" "CTL#2" "CTT" "CTTNB1" "CWR"
    "CWR-22Rv1" "CXCL14" "CXXGXXR" "CYP3A4-metabolized" "CaCl" "CaM-dependent"
    "CaMKIIα" "Cai" "Caiolfa" "Calabrese" "Calbiochem" "Calmette"
    "Calmette-Guérin" "Cam5.2" "Cambridge" "Cameroon" "Cameroonians" "Campisi"
    "Canada" "CancerQuest" "Canel" "Cap-D3" "CapLC" "Capetillo"
    "Carboxyl-Terminus" "CardioMetabochip" "Carl" "Carlisle" "Carlo" "Carlos"
    "Carlsbad" "Caron" "Carriere" "Castleman" "CatD" "Catalan" "Caucasian"
    "Caucasian-matched" "Caucasians" "Caudle" "Ccnd"
    "Cdc20-Mad2-BubR1-Bub3-bound" "Cdk2" "Cell-to-Cell" "CellMiner"
    "Cetuximab-resistance" "ChIP" "ChIP-PCR" "ChIP-on-chip" "ChIP-qPCR" "Chan"
    "ChemBridge" "ChemiDoc" "Cheng" "Chester" "Chi-Square" "Chi-square"
    "Chicago" "Chitest" "Chlamydophilapneumoniae" "Choi" "Chou" "Chou-Talalay"
    "Chr2" "Chuanwei" "Ci-VSP–bilayer" "Ciona" "Cip" "Cip1" "Cl" "Clarks"
    "Clementz" "ClfA-Fg" "Clfa" "Click-iT" "Click-it" "Clinical-Translational"
    "Clinicaltrials" "Clinico" "Clinico-pathologic" "Clinico-pathological"
    "ClustalW" "Clínico" "Cnidium" "CoV" "Cochrane" "Coeff" "Coeff-Diff"
    "Colbe" "College" "ColoPrint" "Complete" "Connell" "Control-IEC-6"
    "Coomassie" "Coornaert" "Corcept" "Corp" "Corso" "Coshi" "Couturier"
    "Covariates" "Cowden" "Cox-regression" "Coxsackievirus" "CpG-islands" "Cre"
    "Cre-LoxP" "Crm" "Crm1-dependent" "Crohn" "Crohn's" "Crohn’s"
    "Cross-contamination" "Cross-talk-like" "Cruz" "Cs" "Ct=27" "Cufflinks"
    "Culin3" "Cullin" "Cullin-RING" "Cullin-Ring" "Cxcr" "Cxs" "Cybulski"
    "Cycletest" "Cyclin" "Cyclophophamide" "Cyper" "Cypher" "Cypher1" "Cypriot"
    "CytoSNP" "CytoSNP-12" "Cytohesin-2" "Cytokine" "Cytoscape" "Czech" "Cα"
    "Cα2" "Cβ" "CβII" "C–mediated" "C–type" "D-I" "D-II" "D-III" "D-IV" "D-Phe"
    "D-SPOP" "D-Trp" "D-domain" "D-motif" "D-peptide-binding" "D-recruitment"
    "D-type" "D18S1067" "D1S2705" "D2" "D2512G" "D26A" "D3" "D385TG" "D4"
    "DAF-2DA" "DAMMIN" "DAVID-based" "DCFH" "DCIS-like" "DDAG" "DDB1and"
    "DDRNAs" "DDX56" "DE3" "DENV-2" "DENVs" "DEP-domain-containing" "DEPC"
    "DETA" "DFI" "DFS" "DGKζ-null" "DHPLC" "DHS-Mind" "DHSs" "DIANA" "DIMSCAN"
    "DMFS" "DNA-aneuploidy" "DNA-chip" "DNA-ploidy" "DNA-protein"
    "DNA-pull-down" "DNAse-1" "DNaseI" "DOI" "DOJINDO" "DPOAEs" "DR-GFP"
    "DRB1*0301" "DRD2RR" "DSBs" "DSGxxS" "DSMZ" "DSST" "DTIC" "DUD"
    "DUSP5-like" "DUSP5P1" "DUSP7-SBC" "DWK" "DYKDDDDK" "DYKDDDDK-tag" "DZNep"
    "Daclizumab" "Dae" "Dae-Woon" "Dako" "Danish" "Danlos" "Danvers"
    "Darmstadt" "Dasgupta" "David" "David-Beabesand" "Davies" "Davis" "Dead"
    "Debelenko" "Deficient-Like" "Dekker" "Delehanty" "Demokritos" "Dennis"
    "Deup1" "Devaraj" "Dex" "DharmaFECT" "Dharmacon" "DiRNA" "Diabetes"
    "Diamino" "Diamino-benzidine" "Dictyostelium" "Diego" "Diff" "DiscoveRx"
    "Discs-large" "Djerf" "DnaK" "Dnmts" "Dominant-negative" "Dorfman"
    "Dose-response" "Douala" "Dox" "Doxycyline" "Dps" "Dr" "Dr-I" "Drost"
    "DsDB" "Dtosophila" "Du" "Duchenne" "Dulbecco" "Dulbecco’s" "Dunn"
    "Durango" "Durocher" "Dutch" "DynaMagnet" "D–F" "E-GEOD-10061"
    "E-MTAB-1196" "E-box" "E-boxes" "E-only" "E-plate" "E-screen" "E0"
    "E1-m1-5" "E4" "E7" "E8" "EAG-family" "EAG-like" "EAG-superfamily" "EAV"
    "EBPγ" "EBPδ" "EBRT" "EBV-associated" "EC-1" "EC50" "ECB-J" "EEH" "EF-end"
    "EGF-like" "EGF-or" "EGF-treatment" "EGFR-PKCα-dependent" "EGFR1"
    "EGFR1-JNK-ERK-AP-1" "EGL-38" "EGL5" "EIA" "EIA-like" "EID•DNA" "EID•Ets1"
    "EJS" "EJW" "EKH" "EKLC" "EKVX" "ELAM" "ELISA" "ELISA-like" "ELISAs"
    "ELISPOT" "ELQTDG" "EMBL-EBI" "EMC192" "EMC286" "EMND-1198-treated"
    "EMT-like" "ENMD" "ENMD-1198" "ENSOF1" "ENST00000307518" "ENST00000370655"
    "ENaC" "EOCs" "EPTB" "ER+ " "ER-PM" "ER-dependent" "ER-expressing"
    "ER-like" "ER-localized" "ER-mediated" "ER-negative" "ER-pathway"
    "ER-positive" "ER-to-Golgi" "ER2" "ERBA1" "ERBB2-positive"
    "ERCC1-XPF-decificent" "EREs" "ERG-like" "ERVK" "ERVK_1q42.13"
    "ERα-negative" "ERαKO" "ER + " "ESCRT" "ESMO16" "EURTAC" "EW" "EYC"
    "EZ-TAXIScan" "Early-stage" "Easter" "Ec-LDP" "Ec-LDP-AE" "Ec-LDP-Hr"
    "Ec-LDP-Hr-AE" "EcR-293" "Edlundh" "Edlundh-Rose" "Edwards" "Egger"
    "Egger's" "Egger’s" "Eguchi" "Ehlers" "Ehlers-Danlos" "Ehrlich"
    "Eighty-one" "Eighty-three" "Eker" "El-Shinawi" "Embelia" "Emory"
    "Emsdetten" "Endothelial-FAK" "Endothelial-cell" "Endothelial-derived"
    "Engima" "England" "English" "Entrez" "Eom" "Eosinophils" "EpiTYPER"
    "Epithelial-Mesenchymal" "Epithelial-to-mesenchymal"
    "Epithelial–mesenchymal" "Epstein" "ErbB2-2" "Erdheim" "Erdheim-Chester"
    "Eschborn" "Esco1" "Ethenyl" "Ets1-interaction" "Ets1•DNA" "Ets1•Ets1"
    "Ets1•Runx1" "Europe" "European" "Europeans" "Evan" "Exclusion"
    "Exon1-13del" "Exon1-24del" "Exon1-2dup" "ExpMod" "ExpMods" "Expression"
    "Extra-tumoral" "Eñquez" "E–H" "F-FDG" "F-IPFs" "F-NLs" "F-strand" "F-κB"
    "F1" "F1174-3266" "F1C4" "F1P1" "F2" "F2M" "F2P2" "F2P2’s" "F2P3" "F2P3’s"
    "F2α" "F312A" "F3382-1718" "F36V-MPL" "F4" "FAD" "FAK-heterozygous"
    "FAK-pFAK" "FAK-pFAK-Y397" "FAS1domain" "FAS1domains" "FASL" "FBC" "FBXL"
    "FBXL19-V5" "FBXL19-V5-induced" "FCRγIIb" "FEMX" "FERM–SH2" "FFPE" "FFPET"
    "FGF-driven" "FGFR-IIIb" "FGFR-IIIc" "FGFR-α" "FGFR-β" "FGFR1-IIIb"
    "FGFR1-IIIc" "FGFR1-α" "FGFR1-α-IIIc" "FGFR1-β" "FGFR1-β-IIIc" "FGFRα"
    "FGFRβ" "FHOD" "FIGO" "FII" "FIII" "FISH-negative" "FITC-12-dUTP"
    "FKBP12-rapamycin" "FL-E7" "FLAG" "FLAG-Klf9-specific" "FLAG-ZM1"
    "FLIM–FRET" "FLT-6" "FLT3-ITD" "FLT3-ITD1" "FLT3-ITD2" "FLT3-JM"
    "FLT3-non-ITD" "FLT3-wt" "FN10" "FN3KI" "FNAB" "FNABs" "FOLFIRI"
    "FOLFIRINOX" "FOX" "FOXM1-siRNA–transfected" "FRET–FLIM" "FRET–FLIM–ICS"
    "FRR" "FTE" "FTSEC" "Fallucca" "Farhana" "Favorable-prognosis" "Fe" "Feng"
    "Fenton" "Fernandez" "Fernandez-Capetillo" "Fg-FnBPA" "Fgure" "FgγC"
    "Fifty-eight" "Finak" "Fine-mapping" "Fine-tuning" "Finland" "Finnin"
    "Finnish" "First-line" "First-strand" "Fitzgerald" "Flag"
    "Flag-tagged-PRAS40" "FlowJo" "Flt-1suggest" "Flt-3L" "FnBPA-1" "FnBPA-11"
    "FnBPA-FgD" "FnBR" "FnBRs" "FnPBA" "Fo-Fc" "Follow-up" "Fondazione"
    "Forty-eight" "Forty-four" "France" "Francisco" "Franco" "Franz" "French"
    "Frieman" "Frizzleds" "Fucci" "Fuchs" "Fujita" "Fulton" "Fura-2" "Förster"
    "Föster" "G-248A" "G-A" "G-A+A-A" "G-LISA" "G-MDSC" "G-T-G-G" "G-allele"
    "G-alleles" "G-carriers" "G-conjugated" "G0" "G0–G1" "G1" "G10_A11insG"
    "G1αR" "G2" "G2-M" "GA+AA" "GAC" "GAPS" "GAS" "GATOR1" "GBR10" "GCAA" "GCR"
    "GCR-alpha" "GDC-0068" "GDC-0068–treated" "GDF15-treatment" "GDM" "GEMMs"
    "GFAP-Nrf2" "GFFs" "GFP-WT-CNK2" "GFP-WW-Vilse" "GFP-ZASP6_A147T"
    "GFP-ZASP6_K136M" "GFP-empty" "GFP-fusion" "GGATGTGG" "GGJ" "GGJ-414"
    "GGR-590-1" "GLOBOCAN2008" "GMR-dRET" "GMR-gal4" "GOBO" "GR-alpha"
    "GR-expressing" "GRGDSPAS" "GRα" "GS3KB" "GS5–6" "GS8–9" "GSE13294"
    "GSE15871" "GSE20437" "GSE3494" "GSE37642" "GSE47561" "GSK-1101212"
    "GSK-110212" "GSK-3i" "GSK-3β-mediated" "GSK3i" "GSK3βCA" "GSKB"
    "GSM671400" "GSM671402" "GST-53BP1-FFRs" "GST-CA-Ankrd2" "GST-FL-Ankrd2"
    "GST-NA-Ankrd2" "GST-PAK1-CRIB" "GST-UBZ4" "GST-ZASP6" "GST-ZM"
    "GST-fusion" "GST-overlay" "GST-pull" "GST-tag" "GSs" "GTC" "GTG" "GTx"
    "GTx-758" "GVGD" "GW-572016" "GWAMA" "GWARJD07" "GWARJD10" "GWARJD14"
    "GWARJD22" "GWASs" "Gain-of-function" "Gaithersburg" "Gal4-ElK" "Galicia"
    "Gallo" "Gapdh" "Garcia" "Garcinia" "Garibay" "Garnett" "Garrett" "Gaussia"
    "GenBank" "Gene" "Gene-environment" "Gene-gene" "GeneChip" "GeneChips"
    "GeneGo" "GeneLoc" "GeneMANIA" "Genentech" "Genome-Wide" "Genome-wide"
    "Germ-line" "German" "Germany" "Gero–Suppressive" "Ghayad" "Ghosh" "Gi"
    "Gibco" "Giovannini" "Giα" "Glands" "GlaxoSmithKline" "Gleason" "Gln-rich"
    "Glu+4" "Glu453del" "GluN" "GluN2" "Glutaryl-CoA" "Gn" "Goettingen" "Goetz"
    "Google" "Goseki" "Gram-positive" "Grande" "Grb2–Sos–Grb2" "Grb2–mRFP"
    "Grb2–pEGFR" "Greco" "Greek" "Greenland" "Gruber" "Grünwald-Giemsa-stained"
    "Gsα" "Gu" "Guillén" "Guiu" "Gupta" "Guérin" "Gy" "Gyorffy" "Gö6976" "Gα"
    "Gβγ" "G–H" "H&E" "H-bond" "H-bonded" "H-bonding" "H-bonds" "H-score"
    "H-scores" "H1" "H13" "H157-scramble" "H157-shRaptor" "H157-shRictor"
    "H16-H40" "H16N2" "H1993" "H2" "H2009" "H2A-K15-ub" "H3" "H3-subtype"
    "H3.3" "H37Rv" "H3Ac" "H3K27" "H3S10" "H3TrimK4" "H3TrimK9" "H4" "H4K12"
    "H4K16ac" "H4K20" "H5" "H9" "HA-Bcl-xL" "HA-Bcl-xL-expressing"
    "HA-Bcl-xL-transfected" "HA-MxΔRING" "HA-Ub" "HA-p63-expressing" "HA-probe"
    "HA-ubi" "HA-ubi-K0" "HA-ubi-WT" "HADC7" "HAMD" "HAMD-24" "HASMCs" "HASes"
    "HASs" "HCAEC" "HCB" "HCSC" "HCXXGXXR" "HDAC-like" "HDAC1-NuRD" "HDF"
    "HDFs" "HDQP" "HDQP-I" "HEK293-SPOP-cyto" "HER-drugs" "HER-family" "HER2+ "
    "HER2-4" "HER2-bispecific" "HER2-heterogeneous" "HER2-negative"
    "HER2-normal" "HER2-positive" "HER2-positive-women" "HER2–4" "HER3-4"
    "HER3–4" "HFD-fed" "HGVS" "HHJ" "HI1" "HI2" "HIC-1" "HIF-1α-regulated"
    "HIF1-α" "HIFα" "HIGM-AID" "HIV-1p24" "HIV-Tat" "HK1-272" "HL-7792"
    "HLA-A2" "HLA-A2-restricted" "HLA-B22" "HLA-B27" "HLA-DR1" "HLA-DR9"
    "HLA8.1" "HLZ" "HM+TM" "HMEC-1cells" "HMEC-1cellswere" "HMIP-2" "HMJ"
    "HNSCCs" "HPLC-MS" "HPRD" "HR=3.52" "HR=4.12" "HRG-lapatinib" "HRGβ1"
    "HRwas" "HSQC" "HSV-1" "HSV-2" "HSulf-1" "HSulf-1ShRNA1" "HT-DHPLC"
    "HTB-22" "HTB-81" "HTRY-LT" "HUANG" "HYAL" "HYALs" "Hajdo-Milasinovic"
    "Halder" "Half-life" "Hamilton" "Hanahan" "Hand-Schüller-Christian"
    "Hanken" "Hans" "Hansen" "Hansen’s" "HapMap" "HapMap2" "Hardy-Weinberg"
    "Hardy–Weinberg" "Harris" "Hashimoto" "Hashimoto's" "Havana" "Hayflick"
    "HbS-β" "HbSC" "HbSS" "Hdm2-siRNA" "He-ping" "Heat-inactivated" "Hedgehog"
    "Heinrich" "Henan" "HepG" "HepG2-shVASH2" "HepG2-shcont" "Hepes" "Hercept"
    "Hercules" "Hermes-1" "Heumüller" "Hi-Myc" "Hi-Tox" "HiTox" "Higgins"
    "High-STMN1-expressing" "High-dose-rate" "High-grade" "High-level"
    "High-plasma" "High-risk" "Higher-Order" "Hilden" "Hippo-YAP" "Hirota"
    "His-Ankrd2" "His-p53" "His-tag" "His114-His116" "Histidine" "HmIgG"
    "Hochberg" "Hodgkin" "Hodgkin's" "Hoechst" "Hoeft" "Hof" "Holla"
    "Holmström" "HomoMINT" "HomoloGene" "Hoon" "Hoozemans" "Hornung"
    "Horseredish" "Horsfall" "Hot-spot" "Hotspots" "Hou" "Houston" "Hoya"
    "HpaII" "Hrr25p" "HsPDF" "HsPDF-based" "Hsu" "Htb126" "Huggins" "Humar"
    "Hunan" "Huntington" "Huntington's" "Huntington’s" "HyPer-mito"
    "Hydroxyprostaglandin" "Hye" "Hyperfilm" "Hz" "I+II" "I+Z" "I-II" "I-IV"
    "I-line" "IAASMRALVL" "IARGDWN" "IAV" "IAV+P70i" "IAV+R" "IAV+T"
    "IAV+T20nM" "IAV+T4nM" "IAV+W" "IAV+Z" "IAV+Z+3MA" "IAV+Z+P70i" "IAV+Z+R"
    "IAV+Z+T" "IAV+Z+T20nM" "IAV+Z+T4nM" "IAV+Z+W" "IAV+Z+Wort" "IAV+wort"
    "IBM" "IBN" "ICGC" "ICI" "ICLAC" "IEC" "IECs" "IETD" "IFN-I" "IFNβ-Luc"
    "IFT" "IGF-sensitive" "IGT" "IHC2+" "II-IV" "IIA" "IIAA" "IIB-IIIB" "IID"
    "III+IV" "III-I" "III-IV" "III-Ig" "IIIA" "IIM" "II–III" "II–IV" "IKK-1"
    "IKKs" "IKKε-activated" "IKKε-mediated" "IL-17contributes" "IL-5R" "IL2Rα"
    "ILAR" "ILD" "IMEM" "IMPUTE2" "IMR" "INFGR" "INI-1" "IOPs" "IP4" "IP6Ks"
    "IP7" "IP8" "IPFs" "IPGTT" "IPITT" "IQ" "IQ5" "IQR" "IRCCS" "IRES-eGFP"
    "IRF3-5D" "IRF3-BD" "IRM-SRR" "ISDB3008" "ISI" "ISosfson" "ITG" "ITGs"
    "ITGα10" "ITGα6" "ITGαv" "ITGβ4" "ITIM-hERG" "ITSM" "ITSM1" "ITSM1+ITSM2"
    "ITSM2" "ITSM3" "ITSM3+ITSM4" "ITSMs" "IU" "IVA" "IVIG" "IZT" "Iadecola"
    "Ia–b" "Ibadan" "Ibidi" "Ib–III" "Ids" "Ig-like" "IgI" "IgII" "Il" "Il-6"
    "Il6-induced" "Ile+3" "Illumina" "ImClone" "ImageQuant" "Imaging-FRET" "In"
    "In-Gel" "In-frame" "In-fusion" "In-gel" "In-vitro" "InMac-Rap" "Inc"
    "Inclusion" "Indian-Arab" "Indianapolis" "Infection" "Ins30" "Ins30adjBMI"
    "Intellikine" "Intra-peritoneal" "Intra-tumoral" "Inuit" "Invitrogen"
    "Ionomycin" "Iowa" "Isaacson" "Iso" "Israel" "Istituto" "Ito" "Iδ"
    "Iκ-specific" "I–L" "I–V" "I–treated" "JAK-STAT3" "JAK2V617F" "JBL" "JCO"
    "JD" "JDL" "JEV" "JHH" "JHK" "JLJ" "JNZ" "JPT" "JPT+CHB" "JQ1" "JRFL"
    "JSF-V" "JSK" "JT-144" "JW" "JXY" "JXZ" "JZ" "Janus-like" "Japanese"
    "Jeghers" "Jiang" "Jiangsu" "Jim" "Jo-1" "Jonckheere" "Jonckheere–Terpstra"
    "Juan" "K0" "K117" "K120" "K175" "K175Ac" "K2R" "K370" "K3R" "K48-linker"
    "K49" "K6R" "K7R" "K8R" "K9" "KCKO" "KCM" "KDACs" "KEGG" "KF772970" "KFW"
    "KGDWN" "KHD" "KJW" "KLZ" "KMH" "KPS" "KPS " "KRAB-ZFP" "KRR" "KRTS"
    "KSR-2" "KSR1-knockout" "KSR2-knockout" "KSRs" "KSYE" "KSYE-510" "KT-16"
    "KTS" "KUW" "KWL" "KY" "KYE" "Kallel" "Kamitani" "KangChen" "Kapelan"
    "Kaplan" "Kaplan-Meier" "Kaplan–Meier" "Kaposi" "Kaposi's" "Karban"
    "Karbowniczek" "Karlsruhe" "Karnofsky" "Karnoub" "Karpas" "Kasahara"
    "Kasteren" "Kattenhorn" "Kaul" "Kaur" "Kawai" "Kayagaki" "Keizman"
    "Kelch-like" "Kelch-like-ECH-associated" "Kendall" "Kenya" "Kevin" "Ki-67"
    "Ki-67-expressing" "Ki-67–positive" "Ki67association" "Kikuchi" "Kim"
    "Kinase-I" "Kip" "Kirsten" "Kiyohara" "Knock-down" "Knock-in" "Knudson"
    "Knudson’s" "Koda" "Koff" "Kohn" "Kolmogorov" "Kolmogorov–Smirnov" "Kondo"
    "Kopecky" "Kopecky-Bromberg" "Korea" "Korean" "Kotilinek" "Kou" "Koyama"
    "Kozlitina" "Krause" "Kruppel-like" "Kruskal-Wallis" "Kruskal−Wallis"
    "Krüppel" "Ku" "Kv10" "Kv11" "Kv12" "K→Q" "K→R"
    "L-3,4-dihydroxyphenylalanine" "L-MTP-PE" "L-lysine" "L-type" "L1" "L2"
    "L3" "L41G3" "L597R" "LASC" "LASCs" "LC3-I" "LC30A8" "LC3II" "LCC" "LCC6"
    "LCH-I" "LCH-JXG-098" "LCH-JXG-099" "LCH-JXG099" "LCH-like" "LCH040"
    "LCH067" "LCH068" "LCH070" "LCH075" "LCH077" "LCL" "LDB3-8"
    "LDL-cholesterol" "LDP-Hr" "LDP-Hr-AE" "LGR" "LGRs" "LHC" "LHD" "LI"
    "LIBS-1" "LIBS-6" "LISA" "LJC" "LM609" "LMM" "LNCaP-P" "LNCaPP" "LOC646993"
    "LR" "LR02-064" "LR11-424" "LRR13" "LS-associated" "LSECs" "LTFU" "LTLT-Ca"
    "LTR-luc" "LUV" "LUVs" "LVCN" "LVLL" "LXCXE" "LY2064827" "LY2940012" "LYC"
    "Lachman" "Laemmli" "Langerhans" "Lap" "Lap#6" "Lapidot" "Lasota"
    "Latency-associated" "Latin" "Lauren" "Lauren’s" "Laurén" "Laurén’s"
    "Lavigne" "Laviotte" "Leigh" "Leipzig" "Lenti-AS-566" "Let-7f"
    "Letter-Siwe" "Lettre" "Leu-X-Tyr-X-X-Leu" "Leu198Ala" "Leu201Ala" "Leung"
    "Levi" "Lewy" "Liang" "Limma" "LincRNA-p21" "Lindner" "Lipofectamine" "Liu"
    "Live" "Live-cell" "Lo" "Lo-Tox" "LocusZoom" "Long" "Long-lasting" "Looij"
    "Low-level" "LoxP-Stop-LoxP" "LoxP-neomycin-stop-LoxP" "Lu" "Luhya" "Lui"
    "Lv-siMMP-7-transfected" "LxRxxS" "Lyn" "Lys270X" "LysmCre" "M-MLV" "M1b"
    "M1c" "MACF" "MALME-3E" "MAN2271" "MAP1D" "MAP3kinase" "MAPK-dependent"
    "MAR-Wiz" "MASCOT" "MASTOS" "MATH-SBC" "MBII" "MBIII" "MBP-Mdp3"
    "MBP-pulldown" "MC3T3E-1" "MCF-7TN-R" "MCF10" "MCF10A-UP" "MCF7-MKP-1-Pool"
    "MCF7-MKP-2-Pool" "MCF7-PELP1cyto" "MCF7-TAM-R" "MCF7-TAMR"
    "MCF7-pCDNA3.1-Pool" "MCMD" "MDA-MB-231cells" "MDD+BP" "ME-like" "MEFS"
    "MEH" "MEH-D7945A" "MEM" "MESCD2" "MET-like" "MET-positive" "MFIs" "MGC"
    "MGMT-null" "MGMT-positivity" "MGTMT" "MHC-I" "MHC-II" "MHT" "MHV"
    "MHV-A59" "MHV68" "MIA-PaCa2" "MIA-Paca2" "MIBC" "MIBG" "MKC-1" "MKS"
    "MLBCLs" "MLD-STZ-b" "MLD-STZ-induced" "MLD-STZ-injected" "MLD-STZ-treated"
    "MLS-9" "MMH-D3" "MMH-R" "MMTV-hSCRIBP305L" "MMTV-neu-induced" "MODELLER"
    "MPT0E014" "MSAs" "MSCWT1" "MSK82" "MSKCC" "MSigDB" "MTISDS" "MTS" "MUpro"
    "MVLN" "MW~8" "MYC-335" "MYC-515" "MYC-S" "MYC-STAGA" "MYPS" "Mac-Rap"
    "Mackow" "MacroH2A" "Mai" "Malay" "Manassas" "Manchester" "Manley"
    "Mannheim" "Mannini" "Marambaud" "Mariño-Eñquez" "Marra" "Maryland"
    "Marzec" "Masahiro" "MassARRAY" "MassLynx" "Masson" "Masson’s" "MatTek"
    "Matsumoto" "Matthys" "MaxQuant" "May-Grünwald-Giemsa-stained" "Mayo"
    "McIntyre" "McMullin" "McNemar-Bowker’s" "Mda5-MAVS-STING" "Mdp2" "Mdp3-FL"
    "Mdp3-N" "Mdp3-ΔN" "MeCP2-mediated" "MeDIP" "Meckel" "Meckel–Gruber"
    "Medina-Franco" "Medline" "Meier" "Mendoza" "Meng" "Meng-chao" "Menten"
    "Mesenchymal–epithelial" "Mestizos" "Met-containing" "Met5A-UP" "MetaCore"
    "Methodology" "Mexican" "Mexican-American" "Mexico" "MiR-218" "MiR-506"
    "MiR-608" "MiR-99a" "MiR-99a-mediated" "Michaelis-Menten" "MicroRNA-146a"
    "MicroRNA-21" "MicroRNA-218" "MicroRNA-7" "MicroVigene" "Micromass"
    "Miettinen" "Migone" "Migration-Prone" "Milan" "Milford" "Milleron"
    "Millipore" "Millot" "Minghetti" "Mini-MAVS" "Mini-Mental" "Minneapolis"
    "Minnesota" "Mitchem" "Mn" "Mo-MDSC" "Mo-MDSC-infiltrating"
    "Mock-infection" "Monte" "Monte-Carlo" "Montgomery" "Montine" "Mori"
    "Morris" "Mossoró" "Mp" "Mrak" "MspI" "Multi-cellular" "Munich" "Murata"
    "Mutairi" "MutationTaster" "Mv1Lu-800bp-Luc" "Mxt" "Myc-ER-induced"
    "Myc-Tag" "Myc-specificity" "Mycoplasmapneumoniae" "MyoII"
    "MyoII-dependent" "Myr-AKT1" "MyrPalm" "MyrPalm-ELQTDG-mCherry"
    "MyrPalm-MTISDS-YFP" "MyrPalm-PREQDS-YFP" "Myrsinaceae" "MΩ" "MβCD"
    "MβCDwas" "M–P" "N-SH2" "N-acetylated" "N-domain" "N-domains"
    "N-glycosylation" "N-hexamethylenebisacetamide" "N-kinase" "N-labeled"
    "N-nitrosonornicotine" "N-status" "N0" "N1" "N297A-T" "N2N3" "N2N3·FgγC"
    "N3-G" "N4" "NA-and" "NARP21" "NARP21gene" "NB-100-105" "NBCI" "NCBI"
    "NCBI36" "NCBInr" "NCGM" "NCI-60" "NCI-H1703" "NCI-H2347" "NCI60" "NCR"
    "NCT00880672" "NC_000017.10" "NEDD4-AA" "NEDD4-AA-expressing" "NEDD4-S347A"
    "NEIL" "NF-κB1" "NF-κβ" "NF24" "NFAT-regulatory" "NFPA" "NFPAs" "NFRET"
    "NFSTVDIQK" "NFY" "NG108" "NGVK" "NG_005905.2" "NH3T3" "NHAPC" "NHLBI"
    "NKI295" "NL63" "NLRP-1" "NMDI" "NMDI14" "NMDI25" "NMDI9" "NMDIs" "NME-LM"
    "NME-LM2" "NNGH" "NNK" "NO-PKG" "NOD-SCID" "NOX2ds" "NOXs" "NPM1-wt"
    "NPRL2-null" "NPXpY" "NR4A" "NS23766" "NS2B-GFP" "NS2BNS3-GFP"
    "NS2BNS3pro-GFP" "NS3-membrane" "NYC" "NaBu" "Nagy" "Naidu" "Nallet"
    "Nallet-Staubet" "NanoDrop" "Narayanan" "Nazionale" "NeoSphere" "Nernst"
    "Netherlands" "Netland" "Netphos" "NeuroAIDS" "NeutrAvidin"
    "NeutrAvidin–agarose" "Neve" "Newcastle" "Next-generation" "Nguyen" "Ni"
    "Ni-NTA" "Nigeria" "Nigro" "Ninety-eight" "Ninety-five" "Ninety-nine"
    "Ningxia" "Nitroarginine" "Nitroquinoline" "Nod-like" "Nonidet"
    "Nonsense-mediated" "Noonan" "Normal-tension" "Norte" "North-Americans"
    "Norway" "Notch" "Novartis" "Novus" "Nox" "Nox2ds" "Nrdp-1" "Nrf" "Nrf2"
    "Nrf2-ARE" "Nthy-ori" "NuPAGE" "Nuemberecht" "Nui" "Nutilins" "Nδ2" "N = 1"
    "N = 15" "O+E" "O-Q506" "O-acyl-ADP-ribose" "O-linked" "OA-ADPR" "OADH"
    "OAM4558g" "OCPs" "OH" "OHdG" "OI" "OMIM" "OPSCCs" "OR-3.4" "OR=1.59"
    "OR=1.69" "OR=12.2" "OR=3.83" "ORAI1-3" "ORAI1–red" "ORF3b" "ORF47"
    "ORF67D" "ORs" "OSU-NSP1" "OU" "OV202NTC" "OV202Sh1" "OVCA" "Off"
    "Oganesyan" "Oka" "Okorokov" "OligoEngine" "On" "Oncology" "Oncomine"
    "One-third" "Opti" "Out" "Ouyang" "Over-all" "Oxford" "Ozyme"
    "Ozyme-Panomics" "Oδ1" "P-X-Y" "P0" "P1" "P104L" "P1E6" "P1m-CNK2" "P2m"
    "P305L1" "P305L2" "P362X" "P519–P526" "P7" "P70i" "P=0.0001" "P=0.0004"
    "P=0.0007" "P=0.0009" "P=0.004" "P=0.005" "P=0.008" "P=0.014" "P=0.02"
    "P=0.021" "P=0.026" "P=0.0462" "P=0.072" "P=0.175" "P=0.943" "PA8" "PAGE"
    "PANTHER" "PARP-1–8-mer" "PARP-DNA" "PARP1i" "PARPi" "PBAF" "PC-3"
    "PC3-shCtr" "PC3-shJAG1" "PCGEM1" "PCHD8" "PCNA-interaction" "PCR-ELISA"
    "PCR-PFLP" "PCR-RFLP" "PDAs" "PDE4s" "PDGF-CC" "PDGF-DD" "PDGF-β" "PDL-1"
    "PDL-2" "PDX1-T11A-expressing" "PDX1-T11A-transfected" "PDZ" "PDZ2" "PDZ3"
    "PD–C2" "PELP1cyto-tamoxifen–mediated" "PELP1over" "PEST" "PETACC"
    "PETACC-8" "PF-00562271" "PF05738" "PF271" "PFCA" "PFDA" "PFDoA" "PFHxS"
    "PFOS" "PFSA" "PFT-α" "PGSF1" "PH2B" "PH3-immunoreactivity" "PHAH" "PHAHs"
    "PHLPPs" "PI-double" "PI3-kinase-like" "PI3-like" "PI3CKD" "PI3K-1"
    "PI3KCA" "PI3Kp110" "PIKKs" "PKCα-Venus" "PKCβI" "PKCβII-Venus"
    "PKCβII-Venus–expressing" "PKCζ" "PKCλ" "PKG1α" "PKM1" "PKM2-SAICAR" "PLCO"
    "PLGS" "PLINK" "PLP2" "PLpro-TM" "PMA" "PMA-stimulated" "PMN" "PMN-MDSC"
    "PND-1186" "PODXL1" "POP" "POPS" "POS" "PP2A-like" "PP4R3β" "PPBG" "PPTP"
    "PPXY" "PR-negative" "PR18846227" "PRAS40WT-RPL11" "PREQDS" "PRF5"
    "PRGDWNEG" "PRKRLKQ" "PRL-R" "PRNCR1" "PTC-bypass" "PTC39" "PTCfv" "PTD"
    "PTEFb" "PTEN-399" "PTEN-like" "PTEN-null" "PTENs" "PTEN–bilayer"
    "PTEN–lipid" "PTEN–membrane" "PTER-ITC" "PTP13IP" "PVETDS" "PXL" "PYP"
    "Packings" "Paik" "Pak" "Pal" "Palamidessi" "PanIN" "Pandy" "Papetti"
    "ParVAS" "Parent-of-Origin" "Pari" "Parity-induced" "Parkinson"
    "Parkinson’s" "Pará" "Pasinetti" "Pax5•Ets1" "Pc" "Pdgfr" "Pdgfrs"
    "Pearson" "Pearson's" "Pearson’s" "Peixoto" "Pennsylvania" "Pepro" "Perez"
    "PerfeCTa" "Perlman" "Petitjean" "Petri" "Petrova" "Peutz" "Peutz-Jeghers"
    "Pfam" "Pfirrmann" "PgR-negative" "Ph-positive" "Pharoah" "Phe+5"
    "Philadelphia" "Phipps" "PhyloP" "PhysVAS" "Pichlmair" "Pico" "Picro"
    "Pietras" "Pifithrin-α" "Pils" "Pintard" "Pintel" "Plex" "Ploegh" "Pmut"
    "Pneumovax" "Poirier" "PolII" "Poland" "PolarScreen" "PolyPhen-2"
    "Polyphen" "Poor-prognosis" "Portuguese" "Post-transcriptional" "Posterior"
    "Prahallad" "Primer3" "Principal" "Prives" "Pro-MAVS" "ProbeIDs" "Prol"
    "Promega" "ProteinLynx" "Proteintech" "Proteome-wide" "Protor1"
    "Proximity-induced" "Ps" "Ps-like" "Pseudomonasaeruginosa"
    "Pt-derivatization" "PuPuPu" "Puc" "Pull-down" "PxxP" "PyPyPy" "P = 0.011"
    "P = 0.003" "Q-MSP" "Q-T" "Q-TOF" "Q-loop" "Q-test" "Q61K" "Q61L" "Q61R"
    "QI" "QI-FRET" "QIAamp" "QT" "QTL" "QUASAR2" "QW" "QY" "Qiagen" "Qian"
    "Qian-qian" "Qiang" "Qiang-Song" "Qiu" "Quality-Assessment"
    "Quantile-quantile" "R-2" "R-CHOP" "R-NCS" "R-X-R" "R-to-K" "R1" "R1-2"
    "R13" "R1881±MDV3100" "R2" "R2-4" "R200VL" "R248" "R248Q" "R273DL" "R282"
    "R3" "R3-4" "R362X" "R370TL" "R3α" "R3β" "R4" "R5" "R5-tropic" "R76CL" "R8"
    "RAD51-ssDNA" "RAECs" "RALA255-10G" "RAS-RAF-PI3KCA" "RASFs" "RBMEC"
    "RBMECs" "RCC10+VHL" "REF-like" "REL-A" "REMARK" "REU" "RFLP-PCR" "RGD-CAP"
    "RGD-like" "RGDWN" "RIG-I-like" "RII" "RING-E3" "RKM" "RKT" "RMSD" "RMSFs"
    "RNA22" "RNA38" "RNAseP" "RNF" "RNF-168" "RNU24" "RNaseOUT" "ROC"
    "ROCK-mediated" "ROR-γt-driven" "ROS-DNA" "ROS–DNA" "ROka" "ROka61D"
    "ROka61DR" "ROka63D" "ROka63DR" "ROka67D" "RP-S6" "RPKM" "RPMI-1640"
    "RQ-PCR" "RRRL" "RSV" "RT-CT" "RT-QPCR" "RT-qPCR" "RT-realtime" "RT2P"
    "RTK-proximal" "RV-J" "RXL" "Rabinosyn" "Rabinosyn-5" "Rac3-V5"
    "Rac3N17-V5" "RacGAP" "RacGDP" "RacGTP" "Rad3" "Rad3-related"
    "Rad51-related" "Raf-BXB" "Raf-BXB-mediated" "Raf-BXB-mediated-STAT3"
    "Rako" "Ramanathan" "Ramaswamy" "Rap1-GTP" "Rapalogs" "Ras-G12V+TNFα"
    "Ras-like" "RasG12V+TNFα" "Rat1MycER" "Ratia" "Raynaud" "Razani" "Rb"
    "Re-ChIP" "Re-expression" "Re-probing" "Re-staging" "Reaction-Restriction"
    "Recklinghausen" "Reed-Sternberg" "Refseq" "Regulators" "Remmers" "Renilla"
    "RepeatMasker" "ResearchCentre" "Results" "RetroSearch"
    "Retroviral-transduced" "Rey" "Rh-123" "Rh123" "RhFasL" "Rho-like" "RhoA-C"
    "RhoA-GTP" "Richmond" "Rickle" "Ring" "Rio" "Roadkill" "Roberts" "Roche"
    "Roche-Genentech" "Rochester" "Rockford" "Rockville" "Roma" "Romaniuk"
    "Rosai" "Rosai-Dorfman" "Rosen" "Roswell" "Roth" "Rotte" "Royer" "Rozek"
    "Rudd" "Rui" "Rui-ying" "Ruiz" "Rundle" "Runx" "Runx1•Ets1"
    "Runx1•Ets1•TCRα" "Ruo" "Ruo-yu" "Rx2" "RxRxxS" "Ryan" "Ryu" "S1" "S15-p53"
    "S1618" "S1618A" "S1981" "S1C" "S1D" "S1E" "S21" "S217" "S218" "S221"
    "S2215F" "S2A" "S2B" "S2C" "S3" "S347" "S347A" "S348" "S348A" "S348A-NEDD4"
    "S3C" "S3D" "S3E" "S3–S5" "S473" "S473A" "S477" "S477A" "S477D"
    "S477P478-Akt1" "S487" "S4A" "S4B" "S4C" "S5A" "S5C" "S6" "S654A" "S6K"
    "S6RP" "S7" "S7A" "S7B" "S8" "S9" "S9A" "SA-β-Gal–positive" "SABBAC"
    "SAGA-like" "SAICAR-PKM2" "SAMD" "SAP-family" "SAPKp38α" "SB208350"
    "SB43152" "SCG10-like" "SCOS3" "SCRIBL223Q" "SCRIBWT" "SCY" "SCZ" "SD-0006"
    "SDS-polyacrylamide" "SELEX" "SEN" "SF33" "SFN-only" "SGK1-Flag-expressing"
    "SGK1-Flag-overexpressing" "SGKI" "SH2-like" "SH2–box2"
    "SH2–phosphopeptide" "SHIV" "SHIV-Nef" "SIE" "SIE-fragment" "SIFT" "SIRT"
    "SIRT5H158Y" "SIRT5HY" "SIRT5KO" "SISH" "SIVmac239" "SKAT" "SKBR"
    "SKBR3-LR" "SKO" "SLAM-family" "SLEDAI" "SM" "SMI-71" "SMIFH2" "SMIs"
    "SMMC" "SMMC-7221" "SN50" "SNP1-5" "SNP3-4" "SNP4" "SNP4-5" "SNP5"
    "SNPinfo" "SNPstats" "SOD1G93A" "SPECS" "SPOP-cyto" "SPOP-cyto-mediated"
    "SPRR2C" "SPSS" "SRC-dependently" "SRRGDMS" "SSCP" "SSG" "STAT-dependent"
    "STAT-family-conserved" "STAT3-STAT3-DNA" "STAT3-dependnet" "STAT3A"
    "STAT3C" "STAT3K49" "STAT3Tyr705" "STAT5-ChIP-cloning" "STAT5A_01"
    "STAT5B_01" "STMN1-high-expression" "STRING" "STZ-mice"
    "SUMOylation-defective" "SUSARs" "SVBP" "SVZ" "SWOG" "SYBR" "Sa" "Saadat"
    "Saharan" "Saitoh" "Sakurai" "Samowitz" "Sanger" "Sapienza" "Sarbassove"
    "Sarstedt" "Satoh" "Saud" "Saudi" "Saus" "Scandinavia" "Sce" "Schindler"
    "Schwalbach" "Schwann" "Schwartz" "Sd" "SdrG" "Sec23p" "Sec24p" "Seike"
    "Self-renewal" "Self-report" "Selleckchem" "Semi-quantitative" "Sendai"
    "Senescence-To-Apoptosis" "Senf" "Seq" "Sequence" "Sequenom" "Ser1981"
    "Ser235" "Ser2CTD" "Ser487" "Ser49" "Ser63" "Sergina" "Serine-347"
    "Serine-348" "Serine-to-Arginine" "Serra" "Sertoli" "Serum-deprivation"
    "Seung" "Severinsson" "Sgroi" "Shaat" "Shandong" "Shang" "Sharan" "Shaukat"
    "Shen" "Shibuya" "Shinawi" "Short" "Short-term" "SiDCoN" "SiMES"
    "Sigma-Aldrich" "Silva-Zolezzi" "Singh" "Single-Mutant" "Single-locus"
    "Single-nucleotide" "Sirius" "Sirius-red" "Siu" "Siwe" "Sixty-eight"
    "Sixty-five" "Sixty-three" "Sjögren" "SkQ1" "SkQR1" "Skp1-Cullin-1-F-box"
    "Slit-like" "Sluiter" "Smad" "Smad-dependent" "Smad2" "Smad3"
    "Smad3-positive" "Small-angle" "Smirnov" "Socio" "Socio-demographic"
    "Soerensen" "Soft-glass" "Solexa" "Solid-pseudopapillary" "Sonia" "Sood"
    "Sorkin" "Sos" "Southampton" "Space-time" "Spain" "Spaniards" "Spanish"
    "Spearman" "Spearman’s" "Spec-2" "Spermidine" "Spermine" "Src" "Src-family"
    "Src40-58" "Src40-58s" "Stanford" "StatXact" "Staubet" "Steady-state"
    "Steinheim" "Stenmark" "StepOne" "Sterile-20-like" "Sternberg" "Strelau"
    "Stress-induced" "Stroop" "Structure–function" "Struhl" "Studies" "Study"
    "Sub-G1" "Sub-networks" "Subpopulations" "Succinyl-CoA" "Sudan" "Sulea"
    "Sunnyvale" "SuperMix" "SuperScript" "Superose" "Survival-signaling"
    "Survivin" "Surwit" "Suv4-20H2" "Suzuki" "Sweden" "Swedish" "Switzerland"
    "SxxGxxR" "SyMBS" "Sydney" "Sykes" "T)(T" "T-50C" "T-DN" "T-S" "T-allele"
    "T-cell-endothelium" "T-effector" "T-helper" "T-lineage-restricted"
    "T-lymphoma" "T-regulatory" "T-screen" "T-stage" "T-status" "T-to-C" "T0"
    "T1" "T1+T2" "T1-T3" "T1-weighted" "T11PDX1" "T1609" "T1609A" "T1977"
    "T1977K" "T1977R" "T1977S" "T1D" "T202" "T246" "T2D" "T2DM" "T2K" "T2–4a"
    "T3" "T3+T4" "T3-4N0M0" "T308" "T4" "T4-CD95L" "T4-Foldon" "T479" "T479A"
    "T479E" "T479E-Akt1" "T634A" "T641A" "T660A" "T7" "T7-SCRIB" "T7-SCRIBWT"
    "T7-WTSCRIB" "T7-epitope" "T7-hSCRIBP305L" "TAED4" "TAGAAC" "TAK-700"
    "TALEN" "TALENs" "TARBP" "TATA" "TATA-box" "TATA-box-containing"
    "TATA-less" "TATTA" "TAZ-dependent" "TAZ-null" "TAp73" "TBCRC" "TBNC"
    "TBNCs" "TBP-family" "TBS" "TBS-T" "TBST" "TCAAAC" "TCF-bound" "TCG" "TCRα"
    "TDLUs" "TEAD-interaction" "TEAD1-4" "TEADs" "TEFb" "TGF-β1addition"
    "TGFB-2" "TGFBRII" "TGFβ-1" "TGFβR1" "TGFβR1–TGFβR2" "TGFβR2"
    "TGFβR2–TGFβR1" "TGFβRII" "TGR-1" "TGTGGT" "TH-1" "TH-2" "TH17" "TIFF"
    "TJW" "TKK" "TLHA" "TM+HM" "TM-Grb2-IEC-6" "TM-Shc1-IEC-6" "TM-Shc2-IEC-6"
    "TM-shCTRL" "TM-shGrb2" "TM-shShc" "TNBCs" "TNBCtype"
    "TNFα-stimulated-WT-Ras" "TNP-ATP" "TNT-ATP" "TP+FP" "TPF" "TPF-11-743"
    "TRCP" "TRIPZ" "TRL-1215" "TRL1215" "TSD" "TSF" "TSPANS" "TTAGGG" "TTC"
    "TTCN" "TTCN3GAA" "TTCTGAGAA" "TTGGAGCAA" "TTT" "TU" "TV" "TV*4" "TWMU"
    "TXY" "TZ" "Tadesse" "TaiChi" "Taiwan" "Taiwanese" "Talalay" "Tamm"
    "Tamm-Horsfall" "Tanaka" "Taniguchi" "Tanzanians" "TaqMan" "TargetScan"
    "TargetScanHuman" "Tat" "Tat-induced" "Tat-treated" "Taz" "Teicher"
    "Terpstra" "Tessier" "Tessier-Lavigne" "Tet-On" "Texas" "Tg" "Tg2576"
    "Th17" "Th2-predominant" "Therapy-induced" "Thermo" "Thiel" "Thirty-eight"
    "Thirty-four" "Thirty-three" "Thompson" "Thr183" "Thr37"
    "Three-dimensional" "Ti1" "Time-course" "Time-lapse" "Timofeeva" "Tobin"
    "Tok" "Tokyo" "Toll-like" "TopFlash" "Tox" "Toyobo" "Tpr-IEC-6" "Tpr-Met"
    "Tpr-Met-IEC-6" "Tpr-Met-derived" "Tpr-Met-induced" "Tpr-Met-mediated"
    "Tpr-Met-transformed" "TrEMBL" "Tramtrack" "Transcription-3" "Transwell"
    "Treg-intrinsic" "Treg-lineage" "Triple-negative" "Triple-phase" "Tripodi"
    "Tripterygium" "Tris-HCl" "Tris–HCl" "Tris–Hcl" "Trizma" "Trp1496-Tyr122"
    "TrpTrp" "TrpTrp " "Truong" "Tsc1KO" "Tti1C" "Tti1M" "Tti1MC" "Tti1S828A"
    "Tumori" "Turkish" "Twenty-five" "Twenty-four" "Twenty-nine" "Twenty-one"
    "Twenty-six" "Twenty-three" "Twenty-two" "Two-month" "Two-way" "TxYxxV"
    "Txnrd-1" "Txnrd3" "Tyr1221" "Tyr185" "Tyr279" "Tyr62" "U0124" "U251"
    "U46619" "U6" "U73122" "UAS" "UAS-dFAK" "UBE" "UBE4B-siRNA" "UBHA24" "UBXD"
    "UBXN2C" "UBZ3" "UCSC" "UFD" "UICC" "UKCCSG" "UL12" "ULBP-1" "UMD"
    "UMSCC47" "UN1" "UN1a" "UN2" "UNC7" "UNIVAPO" "UPCI" "USA" "USD" "USP2a"
    "UTRs" "UVB" "UVC" "UVP" "UWB1.289" "UbiG76A" "Ubiquitins" "Ultima"
    "Ultra-deep" "Ultra-structural" "UniProt" "UniProtKB" "Utah" "Utomo"
    "V-Ets" "V432fsX87" "V5" "V5-HIS-TOPO" "V5-His" "V5-His-tagged" "V5-STAT3"
    "V5-tagged" "V600E" "V600V" "VAD" "VANGL1" "VCL-ALK–associated" "VDSSS"
    "VECs" "VER155008" "VHL-null" "VI-do-B" "VIII-like" "VKSK" "VNTR" "VNTRand"
    "VOC" "VP6-7" "VR" "VTA" "VU" "VZ" "VZVORF61" "Valle" "Vassilev" "Vector"
    "Vector1" "Veerhuis" "Vehicle-injectedPdgfrα" "Venn" "Ventana" "VigeneTech"
    "Virally-induced" "VisionWorksLS" "Vitagenes" "Vogt–Koyanagi–Harada"
    "Vousden" "Vural" "Vybrant" "WAGR" "WBC" "WBRT" "WC" "WCL" "WEGO" "WF"
    "WHR" "WHS" "WI" "WJS" "WNT-pathway" "WPDF" "WPDH" "WPE" "WST" "WT-CNK2"
    "WT-NEDD4" "WT-PDX1" "WT-PTEN" "WT-Ras" "WT-Ras-expressing"
    "WT-Ras-induced" "WT-p53" "WT1-GFP-fusion" "WT1-delZ" "WTD-fed" "WTSCRIB"
    "WTand" "WTp53" "WY" "Waals" "Wallis" "Warburg" "Wardelmann" "Washington"
    "Watamoto" "Wathelet" "Watrin" "Websites" "Webster" "Webuye" "Weggen"
    "Weigel" "Weinberg" "Weiss" "Welkoborsky" "Well-defined" "Western-type"
    "Weyrich" "Whitney" "Whole-cell" "Wi38-UP" "Wilcoxon" "Wiley" "Willcox"
    "Wilmington" "Wilms2+exon5" "Wilms2−exon5" "Wilms4" "Wilson" "Wims3"
    "Winooski" "Wisconsin" "Wisconsin-Madison" "Wiseman" "Wiseman’s" "Wittner"
    "Wiza" "Wnt-response" "Woburn" "Wolber" "Woon" "Wu" "Wwrt1" "X-ray"
    "X-rays" "X3P" "X40" "XChIP" "XFP" "XIIIa" "XIN2" "XJ" "XRCC" "XRS" "XTT"
    "XYW" "XZ" "Xeloda" "Xia" "Xiang" "XmnI" "XmnI-158" "Xpress" "Xq26.3" "Xue"
    "Y-shaped" "Y103fsX37" "Y1349" "Y1356" "Y1853X" "Y204" "Y216" "Y276" "Y2H"
    "Y311A" "Y35N" "Y482" "Y489" "YAP-5SA" "YAP-5SA-ΔC" "YAP-5SA-ΔC-expressing"
    "YAP1have" "YCP" "YFP+3XFLAG" "YFP-SMAD2-HaCaT" "YIPm" "YJC" "YLEK" "YMH"
    "YML" "YMM" "YPet" "YQ" "YRI" "YS" "YUSOC" "YUTICA" "YW" "YYF" "YZ" "Yale"
    "Yamamoto" "Yaoundé" "Yatabe" "Yates" "Yermakova" "Yes-associated" "Yki"
    "Yom" "Yoneyama" "York" "Yoruba" "Yoshino" "YxxV" "Z+R" "Z+T" "Z-band"
    "Z-line" "Z-lines" "Z-score" "Z-scores" "Z-spray" "ZASP-like" "ZASP1-7"
    "ZASP1_S189L" "ZASP1–ZASP7" "ZASP2" "ZASP3" "ZASP4" "ZASP5" "ZASP6_A147T"
    "ZASP6_A165V" "ZASP6_A171T" "ZASP7" "ZASP8" "ZASP_A165V" "ZB4" "ZBTB" "ZD"
    "ZDOCK" "ZFs" "ZHENG" "ZKM" "ZL" "ZM-like" "ZMLZ1" "ZNF"
    "ZNF304-corepressor" "ZP25" "ZP8" "ZR" "ZR75" "ZSL" "ZT" "ZU" "ZU-5" "ZY"
    "ZZ" "Zapotecos" "Zasp52" "Zasp66" "Zealand" "Zeng" "Zhang" "Zhao" "Zhong"
    "Zielecki" "Zillner" "Zinquin" "Zn" "ZnCl" "Zohny" "Zolezzi" "Zr-MEHD7945A"
    "Zust" "Zuylen" "a-lane" "a3β1" "aCGH" "aCaspase3+IAV" "aP" "aP-2" "aPKCs"
    "aPKCζ" "above-motioned" "absorbance" "accordant" "acetyl-acceptor"
    "acetyl-lysine" "acetyl-mimic" "acetyl-mimics" "acetylated-lysine"
    "acetylation-defective" "acetylcholine" "acetylglutamate" "acid-induced"
    "acid-mediated" "acid-stimulated" "acid-treated" "acinar-to-ductal"
    "acneiform" "acquired-resistance" "actinmyosin" "actinomycete"
    "actinomyosin" "actinonamide" "activation-loop" "activator-coactivator"
    "activator-like" "activators" "acute-phase" "acyl" "adduct" "adducts"
    "adeno" "adenoma-carcinoma" "adenomas" "adenopathy" "adenylate" "adherens"
    "adhesiveness" "adipoyl" "adipoyllysine" "adsl-kd" "adult-onset"
    "advance-stage" "advanced-stage" "aeruginosa" "after-lentiviral" "after12"
    "after43" "agar" "agonism" "akt" "alcohol-fed" "alexa" "alexa-488"
    "algorithm" "algorithms" "allelic-specific" "allo" "allo-responses"
    "allograft" "alpha-cell" "alpha-cells" "alpha-linked" "alpha-subunit"
    "alphaherpesvirus" "alt-a" "alveoli" "amido" "amines" "amino-acid"
    "amino-terminal" "amino-terminus" "aminoethyl" "ammonium" "amoeboid"
    "amp-1q23.3" "amplicon" "amplicons" "amygdala" "anEGFR" "analyte"
    "anchorage-dependence" "anchorage-independence" "and+21,087" "and-4"
    "andE2F1" "andEGFR" "andFXR" "andGcdh" "andMac" "andMac-Rap" "andPdgfrα"
    "andRap" "andTsc1" "andWT1" "andWwtr1" "anddsRNAin" "andksr2"
    "androgen-dependence" "androgen-deprivation" "androgen-derivation"
    "androgen-insensitivity" "aneuploid" "aneuploidy" "aneurysm" "aneurysms"
    "angiography" "anisotropy" "anlage" "annum" "anthraquinone" "antiHER2"
    "antibiotherapy" "antibody-Ab5" "antidiabetes" "antiepithelial-mesenchymal"
    "antigrowth" "antiparallel" "antiphosphotyrosine" "antiplatelet"
    "antiretrovirals" "antrum" "aphidocolin" "apo-structure" "apo-structures"
    "apocrine" "apoptosis-insensitivity" "apoptosis–autophagy"
    "appropriateness" "approx" "aptamers" "arabinofuranoside" "arachnoid"
    "arctan" "arcuate" "arene-arene" "arginase-1" "arisen" "aroclors"
    "arterivirus" "as-of-yet" "aspirin-treatment" "astroctyes" "astrotactin"
    "at-risk" "at27.7%" "ation" "atticus" "atypia" "audiometry" "aureus"
    "auto-amplification" "auto-inhibited" "auto-inhibition" "auto-inhibitory"
    "autocleavage" "autoimmune-risk" "autonomously-replicating"
    "autophagosome-like" "autophagy-dependence" "autophagy-dependency"
    "autoradiography" "average-risk" "avoidance-learning" "avβ5" "axial"
    "azadeoxycytidine" "a–c" "a–d" "b-d" "b-lane" "bHLHZ" "back-up"
    "bacteraemia" "bafilomycin" "barbourin" "basal-like" "basal-specific"
    "basal-type" "basalis" "basally-oriented" "base-long" "begun" "benzo"
    "benzyl" "beta-like" "between-study" "bi" "bi-allelic" "bi-orientation"
    "bi-potentiality" "biconcave" "bile-duct" "biliverdin" "binders"
    "binding-null" "bindiong" "bio-marker" "bio-markers" "bio-processes"
    "bioavailabilty" "biobank" "biomaker" "biomakers" "biopsy-proven"
    "biotin-amido" "biotin-streptavidin" "biphenyl" "bipyramid" "bipyridinium"
    "bis-indolylmaleimide" "biscoclaurine" "bishydroxamide" "bisphosphate"
    "blasticidin-resistance" "blastoid" "bleed-through" "bleedings" "blocker"
    "blockers" "blood-born" "blood-brain" "blood-derived" "bodyweight" "bolus"
    "bona" "bona-fide" "bonafide" "bootstrap" "bothPdgfrβ" "botulinum"
    "box-mutated" "box1" "brac" "brain-permeable" "brain-tropic" "brainstem"
    "branched-chain" "brassica" "breakage-fusion-bridge" "breakpoint"
    "breakpoints" "breast-cancer-derived" "brighter" "broad-spectrum" "broncho"
    "broncho-constrictor" "brown-yellow" "brussels" "buffy" "bule" "butPdgfrα"
    "butanone" "bw" "by-products" "byRap" "byWT1" "bywhere" "c-Src-STAT3"
    "c-Src-mediated" "c-Src-specific" "c-Src-transformed"
    "cAMP-response-element-binding" "cNBD" "cPARP" "cPKCα" "cYAP" "caliper"
    "calipers" "call-rates" "calleddRET" "calpain-1" "calvaria"
    "cancer-susceptibility" "cancers" "caner" "cannabinoid" "cannabinoids"
    "cap-binding" "cap-dependent" "capacitance" "capasaicin"
    "capecitabine+bevacizumab" "capecitabine±bevacizumab" "capsid"
    "carbamoyl-phosphate" "carbonyl" "carboxyacyl" "carboxyacyl-lysine"
    "carboxyacyl-lysines" "carboxyl" "carboxyl-terminal" "cardia"
    "cardiac-specific" "care-giving" "carried-out" "carriers"
    "caspase-3-mediated" "castration-resistance" "castration-resistant"
    "catabolizes" "catalyse" "catanin" "cathechol" "ccRCC" "ccRCCs"
    "cel-miR-67" "celiac" "cell-autonomous" "cell-permeable" "cell-phasor"
    "cell-to" "cell-to-cell" "cell-to-matrix" "cells" "cells-3"
    "cells-of-origin" "cellulo" "centriole" "centroid" "centromere"
    "cepharanthine" "cerebella" "cerebellum" "cerebrum" "chao"
    "charcoal-stripped" "charcoal–dextran" "charge–charge" "cheaper" "chelate"
    "chemically-induced" "chemo" "chemo-radio" "chemo-radiotherapy"
    "chemo-resistance" "chemo-sensitivity" "chemo-therapy" "chemoattractant"
    "chemokine-glycosaminoglycan" "chemokine-like" "chemoresistance"
    "chemoresistant" "chemotherapy-resistance" "chemo­tactic" "cherry-positive"
    "chi-squared" "child-parent" "childhood-onset" "chimerism" "chip-wide"
    "chlorophenyl" "cholestasis-induced" "cholesteatoma-atheroma"
    "cholesterol-rich" "chosen" "chr18" "chromatid" "chromatids"
    "chromatin-binding" "chromatin-immunoprecipitation" "chromatin-remodeling"
    "chromen-4-one" "chromenone" "chromosome
17q11-q21"
    "ciRNA" "circuitries" "circuitry" "cis+trans" "cis-regulatory" "cisternae"
    "class-II" "classifiers" "clearer" "clearest" "clinical-pathological"
    "clinicians" "clinico-pathological" "close-to-normal" "cnLOH" "coIP"
    "coIPs" "coactivator-1α" "coated-pits" "cobas" "cobblestone-like"
    "cochaperone" "codominance" "codon" "codon-12" "codon31" "codons"
    "coinduces" "cold-induced" "colectomies" "colectomy" "coli" "collagen-IV"
    "collections" "collegues" "colony-formation" "colony-forming" "colostomy"
    "com" "com-parisons" "comedo" "commonest" "comorbidities"
    "compartment-specific" "complex-1" "complex-I" "compulsive-like"
    "concentration-response" "concentration–dose" "conduces" "conductance"
    "conductance-versus-voltage" "conduit-like" "cone-like" "conformer"
    "conformers" "confounders" "congener" "congeners" "consensus-binding"
    "consortin" "constitutively-activated" "context-dependent" "continuum"
    "contra-lateral" "contraversy" "control-fed" "controlGMR" "controll"
    "copy-neutral" "copy-number" "coronaviruses" "corrrelates" "corticosteroid"
    "corticosteroids" "counter-intuitively" "counter-therapeutic" "coworker"
    "coworkers" "co­localised" "craniotomy" "cribriform" "cross-activation"
    "cross-communication" "cross-complementing" "cross-contaminated"
    "cross-contamination" "cross-interact" "cross-interactinn" "cross-linkers"
    "cross-membrane" "cross-phosphorylation" "cross-react" "cross-reactivity"
    "cross-referencing" "cross-resistance" "cross-sectional" "cross-sections"
    "cross-signaling" "cross-species" "cross-talking" "cross-validation"
    "crossedRap" "crossingTsc1" "crosspeaks" "crosstides" "crotonyl"
    "crotonyl-CoA" "cryptotanshinone" "ctr+TLP" "cup-to-disc" "curettage"
    "current-versus-voltage" "cut-off" "cut-offs" "cut–off" "cyclin-A-mediated"
    "cyclin-CDK-CDK-inhibitor" "cyclodextrin" "cyclohexamide" "cyclooxgenase-2"
    "cystectomy" "cysteinyl" "cytohesin" "cytohesin-2" "cytohesins" "cytohezin"
    "cytokeratin-6" "cytokine-1" "cytokine-secretion" "cytology" "cytometer"
    "cytopathology" "cytoplasm-to-membrane" "cytosine-5" "cytosol-to-membrane"
    "c→o→i" "d-lane" "dBHL" "dEGFR" "dFAK" "dMMR" "dUTP-biotin" "daidzedin"
    "damage-avoidance" "damage-repair" "dark-brown" "dataset" "datasets"
    "datasheets" "day#7" "days" "dbSNP" "de-acethylation" "de-activating"
    "de-adhered" "de-condensation" "de-differentiated" "de-escalation"
    "de-protection" "de-regulated" "de-repress" "de-repressor"
    "de-stabilization" "decapeptide" "decrements" "deeper" "degron"
    "dehydrogenases" "del-18p11" "del-18q11.2" "delATTG" "deletants"
    "deletions" "demonstates" "dendritc" "dendrite-like" "densitometer"
    "dependent-manner" "dependnet" "deprivation-induced" "der" "derivates"
    "des-gamma-carboxy" "desmoplasia" "detachment-dependent" "deubiquitin"
    "deubiquitinase–substrate" "df" "di-leucine" "diRNA" "diRNAs"
    "diabetes-associated" "diabetes-impaired" "diabetes-induced"
    "diabetes-mimic" "diagnosis-relapse" "diaphragma" "diarrhoeaquant"
    "dichloride" "dichlorobenzimidazole" "diet-induced" "diethoxycarbonyl-1"
    "difluoride" "dihydrocollidine" "dihydrodicholorofluorescein"
    "dihydroepiandrosterone" "dimethylbenz" "dimethylethyl" "dinucleotides"
    "dioxin-like" "dipeptidase-like" "diphosphate" "diphosphoinositol"
    "diploid" "dipole" "dis" "dis-cohesive" "discectomy" "discoideum"
    "discrepant" "disease-susceptibility" "disequilibria" "disrupters"
    "disruptors" "dithiobis" "dmTOR" "dnMST1" "docetaxel-resistance" "doi"
    "dominant-negative" "donor-only" "donors" "dormancy" "dorzolamide"
    "dosage-dependent" "dose-dense" "dose-depedent" "dose-dependently"
    "dose-limiting" "dose-response" "dose-schedule" "dose–response" "dot-like"
    "double-knockdown" "double-membrane" "double-mutant" "double-mutants"
    "double-strand" "double-transfection" "doubly-occupied" "down-expressed"
    "down-expression" "down-modulation" "down-regulators" "down-stream"
    "downreglate" "downregulatedandhomologue" "downstream-target" "dox-shDRD2"
    "dpp-gal4" "draw-back" "drawn" "drinkers" "droplets" "drug-behavioral"
    "drug-like" "drug-resistance" "drugs" "drusen" "ds" "dsDNA" "dual-colored"
    "dual-erbB" "dual-input" "dual-substrate" "duct-like" "ductal-lobular"
    "duplexes" "dynabeads" "dyslipidemia" "dysmorphism" "dysplasia" "dyspnoea"
    "dystophy" "eIF2α-induced" "eIF2α-initiated" "eIF2α-mediated" "eLife"
    "eQTL" "eRNAs" "eYFP" "early-onset" "early-stage" "ebB3" "ectoderm"
    "ectodomain" "ectodomains" "ectodomain–ectodomain" "ectoenzyme" "edema"
    "edge-to-face" "eff" "effecter" "effector-like" "efficient "
    "efflux-dominated" "egfp-CCAT1-L" "egion" "eight-month" "eight-residue"
    "eight-week" "eight-week-old" "eightfold" "eitherWwtr1" "el" "electrospray"
    "element-binding" "eluate" "eluates" "emboli" "empty-vector"
    "encounter-plus-reorientation" "end-binding" "end-resection" "endocarditis"
    "endocardium" "endocrine-treatment" "endocrinology" "endocrinopathy"
    "endoderm" "endometrioid" "endometrium" "endoperoxide"
    "endothelial-associated" "endothelial-cell" "endpoint" "endpoints"
    "end–directed" "energy-dependent" "enhancer" "enhancer-like"
    "enhancer-promoter" "enoyl-CoA" "envelope-dependent" "enzymes" "eosin"
    "eosinophil" "eosinophil-survival-prolonging" "eosinophilia" "epandrium"
    "epidermal-like" "epidermal-mesenchymal" "epidermidis" "epidermoid"
    "epigalocatechin" "epigalocatechin-3-gallate" "epigenome" "epithelia"
    "epithelial-derived" "epithelial-like" "epithelial-mesenchymal"
    "epithelial-to-mesenchymal" "epithelial-type" "epithelial–mesenchymal"
    "epithelioid" "epithelioid-like" "epithelium" "eq" "eqs" "equationThe"
    "erb3" "erbB" "erbB2" "ery" "erythema" "erythrocytes"
    "erythroid-cell-derived" "erythroid-specificity" "escaperptc" "escapers"
    "estbliash" "estrogen-pathway" "et" "etal" "ether-a-go-go"
    "ethnic-specific" "ethylamide" "ever-increasing" "ever-smokers"
    "evirolimus" "ex" "ex-vivo" "excited-state" "executer" "exocrine" "exome"
    "exome-seq" "exome-wide" "exomes" "exon1-13del" "exon1-24del" "exon1-2dup"
    "exons" "exosome" "expander" "expectation–maximization" "expresser"
    "expresson" "extra-nuclear" "extra-pulmonary" "extra-terminal"
    "extra-tumoral" "extravasate" "factor-1" "factor-alpha" "factors-1α"
    "facultative-enhanced" "false-positives" "far-reaching" "farnesyl"
    "farnesyl-transferase" "farthest" "fast-moving" "fast-transient"
    "favorable-prognosis" "fc" "fecal" "feed-back" "feedforward"
    "female-pattern" "female-specific" "feredoxin" "fetal-maternal"
    "fexaramine" "fibrinogen-like" "fibritin" "fibroblast-like"
    "fibroblast-myofibroblast" "fibroblastoid" "fibronectin-1" "fide"
    "fifty-three" "filiae" "filopodia-like" "filter-based" "fine-mapping"
    "fine-needle" "fine-tuned" "fine-tuning" "finger-like" "first-degree"
    "first-generation" "first-order" "first-site" "first-strand" "five-carbon"
    "five-strand" "five-year" "flexneri" "flexure" "flow-cytometry-based"
    "flowchart" "fluid-phase" "fluoroethylamide" "fluorophore" "fluorophores"
    "flurouracil" "fold-increase" "follicle" "follicles" "follow-up" "forBrca2"
    "forMac" "force-induced" "forebrain" "forelimb" "fork-head" "formazan"
    "formend" "formulti" "formulti-directional" "formyl" "forty-nine"
    "forty-one" "four-α-helix" "fractions" "frameshift" "frequency-domain"
    "frequently-occurring" "fresh-frozen" "from26" "fromBrca2" "fromE2F1"
    "fromLdlr" "fromMac" "fromMac-Rap" "fromPdgfrα" "fromRap" "fromSirt5"
    "fromdFAK" "fromksr1" "fromksr2" "frozen" "full-dose" "full-scale"
    "full-term" "full-text" "fully-adapted" "fundus" "fura" "fura-2"
    "fura-2-based" "fusiform" "gD" "gDNA" "gain-of-function" "gain-of–function"
    "gallate" "gallbladder" "gamma-chain" "gand" "gastrula" "gatekeepers"
    "gavage" "gelatinases" "gender-specific" "gene-1" "gene-I" "gene-by-gene"
    "gene-environment" "gene-environmental" "gene-gene" "gene-h3" "gene-level"
    "gene-regulatory" "gene-to-gene" "geneandhomologue" "genes"
    "genetically-expressed" "gene–environment" "gene–gene" "genic" "genitalia"
    "genome" "genome-scale" "genome-wide" "genome-widely" "genomes"
    "genophenotype" "genotype-phenotype" "genoypes" "genu" "genus" "germline"
    "gero" "gero-suppressive" "giant-cell" "glass-bottom" "glia"
    "glioblastoams" "globalquant" "glomeruli" "glomerulonephritis" "glucolipo"
    "glucolipo-toxicity" "glucorticoid" "glucose-deprivation"
    "glucotoxicity-induced" "glucotoxicity-mediated" "glutamate-cysteine"
    "glutaryl" "glutaryl-CoA" "glutaryl-lysine" "glutaryl-peptide" "glycan"
    "glyceraldehydes" "glyceraldehydes-3-phosphate" "glycerophosphate"
    "glycerophospholipids" "glycine-to-arginine" "glycine-to-aspartate"
    "glycolylases" "glycosyl" "goes" "gp120-induced" "granuloma-like"
    "great-grandmother" "greater" "greatest" "growth-state-dependent"
    "growth-suppressive" "gsk-3α" "h-p62-T2r" "h-p62T1f" "h-p62T1r" "h-p62T2f"
    "h-p62T2r" "hCLIM" "hFN10-βA" "hFN10W" "hFN10–αVβ3" "hNopp140" "hPSC"
    "hSOCS3" "hSOD1G93A" "hSPT7" "hTER" "hairpin-like" "half-cousin"
    "half-diluted" "half-life" "half-lives" "half-maximal" "halflife"
    "half–life" "hand-foot" "haplotype" "haplotypes" "harn" "head-to-head"
    "head-to-tail" "headgroup" "headgroups" "health-span" "heat-inactivated"
    "heat-shock" "heat-stroke" "heat-treated" "heat-treatment" "heatmap"
    "heatstress" "helical-domain" "helices" "helies" "helix" "helix-loop-helix"
    "hemangio" "hemangio-pericytomatous" "hemato" "hemato-endothelial"
    "hematocrit" "hematology" "hematology-oncology" "hematuria"
    "hemoglobinopaties" "hemoglobinurea" "hepatectomy" "hepato"
    "hepato-cellular" "hepato-splenomegaly" "heptad" "heptapeptide"
    "herparansulphate" "hetero" "hetero-dimeric" "hetero-dimers"
    "hetero-tetramers" "heterocomplex" "heterocomplexes" "heterotetramer"
    "heterotrimer" "heterotrimers" "heterozygote" "heterozygouse"
    "hexakisphosphate" "hexamer" "hexanoate" "hexanucleotide" "hexapole"
    "hexasulfate" "hfsquant" "hg17" "hg18" "hiPSC" "hidden"
    "high-STMN1-expressing" "high-STMN1-expression" "high-affinity"
    "high-amplitude" "high-confidence" "high-degree" "high-density" "high-dose"
    "high-expression" "high-frequency" "high-glucose-consuming"
    "high-glucose-induced" "high-grade" "high-level" "high-mobility-group"
    "high-order" "high-passage" "high-penetrance"
    "high-performance-liquid-chromatography" "high-plasma" "high-power"
    "high-probability" "high-resolution" "high-risk" "high-sensitivity"
    "high-serum" "higher-order" "higher-risk" "highly-ordered" "hindgut"
    "hirsutism" "histocore" "histologies" "histology" "histopathology"
    "histoscore" "histoscores" "histotype" "histotypes" "hit-to-lead" "hnRNPs"
    "holo" "holo-complex" "holoenzymes" "homeobox-1" "homeodomain"
    "homo-dimers" "homo-oligomerize" "homo-trimeric" "homogenates" "homolog"
    "homologous-directed" "homologous-recombination" "homologs" "homology-2"
    "homology-3" "homotrimerizes" "homozygote" "homozygotes" "homozygousWwtr1"
    "hong" "hort" "host-microbe" "host-pathogen" "host–virus" "hot-spot"
    "house-keeping" "hsa-let-7b" "hsa-miR-1" "hsa-miR-1297" "hsa-miR-148b"
    "hsa-miR-301b" "hsa-miR-302e" "hsa-miR-30a" "hsa-miR-424" "hsa-miR-520a-3p"
    "hsa-miR-520b" "hsa-miR-520c-3p" "hsa-miR-520d-3p" "hsa-miR-520e"
    "hsa-miR-874" "http" "huperzine" "huttle" "hybrid-polar" "hydroxyl"
    "hydroxyls" "hydroxyvitamin" "hygroscopicus" "hyper-activation"
    "hyper-proliferation" "hyperandrogenism" "hyperresponsiveness"
    "hyperthropy" "hypodermis" "hypothalamic-pituitary"
    "hypothalamic-pituitary-gonadal" "hypothalamic-pituitary-ovarian"
    "hypothermia" "hypoxia-inducible" "hypoxia-responsivecis-regulatory"
    "i-iii" "iCO" "iCO-RM2" "iCOGS" "iCORM" "iCORM-2" "iCycler" "iPOND" "iPlex"
    "iQ5" "iSelect" "ice-cold" "identifier" "identifiers" "ie" "igand" "ii"
    "iii" "ill-defined" "ilse" "imidazole" "immediate-early"
    "immune-cell-engaged" "immune-mediated" "immune-reactive" "immune-related"
    "immuno" "immuno-fluorescence" "immuno-precipitation"
    "immuno-precipitation-sequencing" "immuno-suppressors"
    "immuno-surveillance" "immuno-therapies" "immunoassay" "immunochemotherapy"
    "immunocomplex" "immunocomplexes" "immunocytochemistry" "immunoglobulin"
    "immunoglobulin-like" "immunohistochemistry" "immunologists"
    "immunophenotype" "immunoreactivty" "immunoregulators" "immunostainings"
    "immunotherapies" "importin-α" "importins-α" "in-activation" "in-cell"
    "in-depth" "in-frame" "in-gel" "in-house" "in-silico" "in-situ" "in-stent"
    "in-vitro" "in-vivo" "inBRAFV600E" "inE2F1" "inE2f1" "inLdlr" "inMac"
    "inMac-Rap" "inMacRap" "inPanel" "inPdgfrα" "inSHP" "inWT1" "inWwtr1"
    "increased+autophagy" "indFAK" "indels" "indica" "induced-expression"
    "inflammation-associated" "inflammation-derived" "inflammation-fibrosis"
    "inflammation-induced" "inflammaton" "influenza-zVAD-induced"
    "influenza-zVAD-torin1" "influenzaz" "influenzaz-VAD"
    "influenzaz-VAD-induced" "influenzazVAD" "inhibition162" "inhibiton"
    "initio" "injectedPdgfrα" "injuredPdgfrα" "inksr2" "innately-resistant"
    "innately-sensitive" "inoculum" "inoculums" "ins-del" "insATTG"
    "inside-out" "insipidus" "instill" "insulin-PI3K–stimulated" "insulin-like"
    "insult-induced" "integrators" "intensity-based" "intensity-modulated"
    "intensiveness" "intent-to-treat" "inter-array" "inter-cellular"
    "inter-chromosome" "inter-dimeric" "inter-genic" "inter-individual"
    "inter-kinetochore" "inter-laboratory" "inter-patient" "inter-phase"
    "inter-tumor" "interactants" "interactinn" "interactome" "interdomain"
    "intermediate-length" "interpeak" "interphase-type" "interquartile"
    "interstitium" "interstrand" "intestinal-derived" "intestinalis"
    "intestine-specific" "intima" "intoLdlr" "intra" "intra-NAc" "intra-and"
    "intra-articularly" "intra-chromosome" "intra-hippocampal"
    "intra-peritoneal" "intra-tumor" "intra-tumoural" "intracardiac"
    "intrachromosome" "intradimer" "intradomain" "intraobserver" "intravasate"
    "intron–exon" "invadopodia-like" "invaginations" "invariant"
    "invasion-promoting" "invasion-related" "invitro" "iodo" "ipsi" "ir"
    "iritis" "irradiation-induced" "ischaemia" "isoenzymes" "isomer" "isomers"
    "isoschizomer" "isotype" "isozyme" "isozyme-selectively" "ite" "ites" "iv"
    "i→o" "junction-associated" "kHz" "kIU" "kappa-light-chain-enhancer"
    "karyotype" "karyotypes" "kb-1" "kbp" "kcal" "keto" "kg" "kidney-293"
    "kinase-2" "kinase-3" "kinases" "kinome" "kit-8" "kncokdown" "knock-down"
    "knock-in" "knocked-down" "knockin" "knownEGFR" "laevis" "lambda"
    "lamellae" "lamellapodia" "laminin-332" "lane1" "lapatinib-resistance"
    "large-animal" "large-cell" "large-scale" "large-size" "larger-diameter"
    "late-gestational" "late-mitosis" "late-stage" "lattice-mediated" "lavage"
    "lbenzyl" "lead-time" "leakiness" "left-hand" "lenti-AS-566"
    "lenti-NC-infected" "lenti-NC-treated" "lentiviral-mediated" "leprae"
    "leprosum" "leptin-to-adiponectin" "leucine-zipper" "lifespan" "lifespans"
    "lifetime-detected" "ligand-domain" "ligand-mimetic" "ligand-regulatible"
    "limb-salvage" "lineage-restriction" "lineage-specific" "lipid-soluble"
    "lipopolysaccharide" "literature-based" "littermate" "littermates"
    "live-cell" "live-dye" "lobules" "localizations" "locally-advanced"
    "locus-dependent" "locus-specific" "log-normal" "long-QT" "long-chain"
    "long-lasting" "long-lived" "long-range" "long-time" "longer-lived"
    "loss-of" "loss-of-function" "low-GR-expressing" "low-HER2-expressing"
    "low-STMN1-expressing" "low-activity" "low-complexity" "low-conductance"
    "low-degree" "low-density" "low-dose" "low-expression" "low-frequency"
    "low-grade" "low-level" "low-magnification" "low-malignant" "low-passage"
    "low-penetrance" "low-resolution" "low-risk" "low-serum"
    "low-serum–containing" "low-to-no" "lower-order" "lowerK" "lucGAP"
    "lucGMCSF" "lucIL6" "luciferase-reporter" "lumens" "luminal-like"
    "luminal-to-basal" "lymph-node" "lymphadenectomy" "lymphadenitis"
    "lymphadenopathy" "lymphangioleiomyomas" "lymphoblastoid" "lymphoblasts"
    "lymphoma-2" "lymphopenia" "lysis" "m-carboxycinnamic" "mARE3" "mARE4"
    "mCherry" "mDia-YFP-fusion" "mDia1-3" "mDia1-depleted" "mDia2-dependent"
    "mDia2-kncokdown" "mEID1" "mFOLFOX6" "mGFP" "mIR-608" "mKO" "mKO2-CDT1"
    "mPFC" "mPanIN" "mRNA" "mSOC3" "mSOCS3" "mTOR-dependent" "mTOR1"
    "mTORC1-activity" "mTORC1specific" "mTORC2-controlled" "mTORCs" "mTORKinib"
    "mTORKinibs" "mac-3" "macroadenomas" "macrophage-like" "macrophage-tropic"
    "main-chain" "male-specific" "male-to-female" "malonyl-lysine"
    "mammary-specific" "mammoplasties" "mammoplasty" "mammosphere"
    "mammospheres" "mass-action" "mass-spectrometric" "masse" "mast-cells"
    "materials" "matrix-poor" "mcherry-tagged-ubi-STAT3" "means±S" "mean ± SD"
    "mean±SD" "mean±standard" "mean ± SD" "mean ± standard"
    "mechanistically-related" "mechanoresponse" "mediastinum" "medulla"
    "megakaryoctye" "megalencephaly-associated" "megalencephaly-capillary"
    "megalencephaly-polymicrogyria-polydactyly-hydrocephalus" "melanogaster"
    "mellitus" "melvonate" "membrane-proximal" "mesangium"
    "mesenchymal-epithelial" "mesenchymal-like" "mesenchymal-to"
    "mesenchymal-type" "mesenchymal–epithelial" "mesoderm" "mesothelia"
    "mesothelium" "mestizo" "mesylate" "metagene" "metaloproteinases"
    "metanephrine" "metastasise" "metastatic-potential" "meth"
    "method-of-choice" "methoxy" "methoxyestradiol" "methyl-gliotoxin"
    "methyladenine" "methylcytosine" "methylnitrosamino" "methylome"
    "methylsulfinyl" "miR-1" "miR-103" "miR-106b-93-25" "miR-122" "miR-1227"
    "miR-128" "miR-130b" "miR-143" "miR-145" "miR-146a" "miR-155-HG" "miR-15a"
    "miR-16-1" "miR-17-5p" "miR-17-92" "miR-181" "miR-181b" "miR-181d"
    "miR-190" "miR-191" "miR-196a" "miR-200" "miR-203" "miR-204" "miR-206"
    "miR-20a" "miR-20b" "miR-21" "miR-21-Induced" "miR-214" "miR-218"
    "miR-218-2" "miR-21binding" "miR-21in" "miR-21overexpression" "miR-22"
    "miR-221" "miR-222" "miR-23b" "miR-26a" "miR-27b" "miR-30" "miR-30b"
    "miR-30c" "miR-31" "miR-363" "miR-375" "miR-375-mediated" "miR-375-mimic"
    "miR-424" "miR-424-induced" "miR-506" "miR-506-514" "miR-506-DOPC"
    "miR-506–induced" "miR-506–mediated" "miR-506–transfected" "miR-518"
    "miR-518b" "miR-524-5p" "miR-542-3p" "miR-566" "miR-582-3p" "miR-582-5p"
    "miR-608" "miR-630" "miR-663a" "miR-7-1" "miR-7-3" "miR-768-5p"
    "miR-885-5p" "miR-98" "miR-99" "miR-99-targeted" "miR-99a" "miR-99a-based"
    "miR-99a-mediated" "miR-99b" "miR-con" "miR-control" "miR-ctrl" "miR-empty"
    "miR190" "miR506" "miRBridge" "miRNA-122" "miRNA-128b" "miRNA-21"
    "miRNA-218" "miRNA-342" "miRNA-34a" "miRNA-mRNA" "miRNAs" "miRSystem"
    "miRWalk" "miRanda" "miRecords" "micelles" "micro-BM" "micro-dissection"
    "micro-domains" "micro-laser" "micro-pattern" "micro-patterned"
    "micro-patterns" "microPTC" "microRNA-212" "microRNA-34a" "microRNA-608"
    "microRNA-630" "microRNA-7" "microadenomas" "microcephaly-polymicrogyria"
    "microdomains" "microenvironements" "microenvironment-induced"
    "microfilter" "micrographs" "micrometastases" "microparticles" "micropenis"
    "microplate" "microsatellite" "microsatellite-unstable" "microsatellites"
    "microtiter" "microvasculature" "microvessel" "microvessels" "mid-mitosis"
    "mid-secretory" "midbrain" "midchain" "midgut" "midline" "midzone"
    "mifamurtide" "mimickers" "mini-gene" "minimally-invasive" "mir" "mir-218"
    "mir-27a" "mir-302" "miravirsen" "mis-segregate" "mis-segregates"
    "mis-segregation" "mis-sense" "missense" "mitoTracker" "mitogen-activated"
    "mitogens" "mitoses" "mitosis-like" "mitoxantone" "ml " "mmLDL"
    "mobility-group" "mock-infected" "moderate-penetrance"
    "molecularly-targeted" "molecule-2" "molecule-inhibitor" "monnieri"
    "mono-methylation" "mono-nuclear" "mono-nucleated" "mono-phosphorylated"
    "mono-therapy" "mono-ubiquitin" "monocyte-derived" "monodisperse"
    "monolayer" "mononuclesomes" "monophosphates" "monosomy" "monotherapies"
    "monotherapy" "morbidities" "morpholino" "morphological-like" "mortem"
    "motif-TTCN" "motif-defective" "motifs" "motile" "mtEREs" "mucoid" "mucosa"
    "muirne" "multi-SNPs" "multi-cellular" "multi-color" "multi-component"
    "multi-directional" "multi-disciplinary" "multi-drug" "multi-factorial"
    "multi-functional" "multi-gene" "multi-hit" "multi-lineage"
    "multi-modality" "multi-nucleate" "multi-organ" "multi-parametric"
    "multi-photon" "multi-point" "multi-polar" "multi-step" "multi-substrate"
    "multi-subunit" "multi-system" "multi-systemic" "multicancer" "multicenter"
    "multiclamp" "multidomain" "multigene" "multilocus" "multiple-substrates"
    "multiprotein" "multiscale" "multisubunit" "multisystem" "multivariate"
    "multivitamin" "multiwell" "muscularis" "muta" "mutantWT1" "mutants"
    "mutationBRCA2" "mutations" "myc-rictor" "myc-tag" "myofibroblast-like"
    "myometrium" "myosin-mediated" "myristate" "myristoylation-palmitoylation"
    "n=1" "n=15" "n=27" "n=3" "n=4" "n=5" "n=760" "nA" "nAChR"
    "nAChR-signaling" "nAChRs" "nAChRs-signaling" "nCounter" "nGFP" "nPKC"
    "nYAP" "nano-ESI" "nano-analytical" "nano-flow" "nanoliposomes"
    "nanometer-scale" "naïve" "near-complete" "near-completion" "near-maximal"
    "near-maximally" "near-universal" "nearest" "necropsy" "necrostatin"
    "negative-control" "negative-feedback" "neo-adjuvant" "neo-vessels"
    "neoadjuvant" "neocortex" "neomorph" "nephrectomy" "nephro" "nephron"
    "nephropathies" "nephropathy" "nephroureterectomy" "neratinib-resistance"
    "network-as" "neu-induced" "neurite" "neuritin" "neurobiology"
    "neuroendocrine" "neuroepithelium" "neuronally-expressed" "neuropathology"
    "neurophysiology" "neuroplasticity-associated" "neurosphere" "neurospheres"
    "neurosurgery" "neurotrophy" "neutropaenia" "neutrophil-like"
    "never-smokers" "never-smoking" "new-ly-publicated" "newer"
    "newly-discovered" "newly-synthesised" "newly-synthesized"
    "next-generation" "nick-end" "nitrobenzyl" "no-T" "node-negative" "nodosum"
    "noncancer" "noncarriers" "nonconcordance" "nondomain" "nonexpressors"
    "nonhistone" "nonhuman" "nonlinearities" "nonmalignant" "nonpregnant"
    "nonprogressors" "nonrandom" "nonresponders" "nonresponse"
    "nonsense-mediated" "nonsignificant" "nonstem" "nonusers" "normal-like"
    "normal-looking" "normoglycemia" "normogylcemia" "notochord" "novel-taste"
    "nt" "nuclear-soluble" "nucleases" "nucleate" "nucleo" "nucleoprotein–RNA"
    "nucleosome-remodeling" "nude-mouse" "number-dependent" "nutlin-treatment"
    "nutritionally-induced" "n = 4" "ob" "observables" "occludens-1" "occludes"
    "odor-taste" "oestrogen" "oestrogens" "ofALDH1A1" "ofBRAF600E"
    "ofBRAFV600E" "ofFAK" "ofGMR" "ofLdlr" "ofMacRap" "ofRap" "ofSHP" "ofWwtr1"
    "ofdFAK" "ofdpp" "off-target" "off-targets" "ofptc" "ofrare" "oldWwtr1"
    "oleic" "oleracea" "oligo" "oligo-genetic" "oligodeoxynucleotide"
    "oligomerise" "oligonucleotidique" "oligopyrimidine" "oligos"
    "oligosacharides" "omega-3" "omic" "omics" "ommatidia" "ommatidium" "on-10"
    "on-going" "on-target" "onco" "oncogen" "oncologists" "oncomiR" "oncosome"
    "one-color" "one-day" "one-half" "one-hour" "one-sixth" "one-third"
    "one-turn" "one-way" "one-week" "one-year" "ones" "ontogeny" "oocytes"
    "open-angle" "open-channel" "operant" "opioid" "orFAK" "orMac" "orMac-Rap"
    "orchestrators" "organ-confined" "organ-dependent" "organelle" "organelles"
    "organochlorine" "organoid" "organoids" "organosulfur" "ori"
    "origin-dependent" "orksr2" "orligand" "ornithine" "orrFnBPA" "orteronel"
    "ortholog" "orthologue" "osteoarthropathy" "osteoblast-like" "osteoblasts"
    "osteoid" "osteoprogenitors" "otitis" "ought" "out-compete" "out-competing"
    "out-of-context" "out-of-frame" "outcompete" "outside-in"
    "over-accumulating" "over-activation" "over-expressBcl-2" "over-nutrition"
    "over-production" "over-representation" "over-ride" "overactivate"
    "oversaturate" "overview" "ovo" "ovulate" "oxidases" "oxodeoxyguanosine"
    "oxygenase-1" "o→c" "p+E" "p110s" "p21-Bax-a" "p21expression" "p38MAPK"
    "p38MAPK’s" "p38i" "p38α-mediated" "p38αand" "p38β" "p46Shc" "p46shc"
    "p52shc" "p53-DNA" "p53-DNA-binding" "p53-bindiong" "p53-depedent"
    "p53-hotspot" "p53-interactive" "p53-null" "p53-restorative" "p53-shRNA"
    "p53DBD" "p53R280K" "p53RE" "p54Shc" "p63-binding" "p66shc-dependant"
    "p70S6K-mediated" "p70SK6" "p800luc" "p=0.00001" "p=0.0001" "p=0.00021"
    "p=0.0004" "p=0.00051" "p=0.0008" "p=0.001" "p=0.00115" "p=0.0012"
    "p=0.002" "p=0.0021" "p=0.0029" "p=0.003" "p=0.005" "p=0.01" "p=0.011"
    "p=0.012" "p=0.019" "p=0.02" "p=0.0212" "p=0.023" "p=0.025" "p=0.027"
    "p=0.028" "p=0.029" "p=0.032" "p=0.0324" "p=0.035" "p=0.037" "p=0.039"
    "p=0.042" "p=0.043" "p=0.047" "p=0.05" "p=0.06" "p=0.068" "p=0.07" "p=0.09"
    "p=0.10" "p=0.12" "p=0.14" "p=0.19" "p=0.2" "p=0.43" "p=0.47" "p=0.58"
    "p=0.651" "p=0.687" "p=1" "p=1.54×10" "p=1.72×10" "p=1.9×10" "p=2.1×10"
    "p=2.55×10" "p=2.9×10" "p=3.10×10" "p=3.67×10" "p=3.7×10" "p=4.31×10"
    "p=4.8×10" "p=5.28×10" "pA147T" "pA165V" "pA171T" "pAMPKα" "pBlue3"
    "pClamp" "pET-15b" "pFAK-Y397" "pFLAG" "pFLAG-CMV2" "pGADT7" "pGBKT7"
    "pGEX" "pGEX-4t-3" "pGIPZ" "pGL-3" "pGL3-promoter" "pGSK3β" "pHER2" "pIRS"
    "pIRS1" "pIκBα" "pJAK2" "pJNK" "pK136M" "pKAP-1-NuRD" "pKO2.1-LSL-hK-ras"
    "pLCMV" "pLKO" "pLSLP" "pLenti-Flag" "pLenti-TopFlash" "pM" "pMAPK" "pMEK"
    "pMLC" "pMLC2" "pMMR" "pMMTV-neomycin-luciferase" "pMSCV" "pMST" "pMST1"
    "pMST1-T183" "pNPP" "pP70S6K" "pPAK1" "pPAK2" "pQCXIX" "pRBloss" "pS"
    "pS1618" "pS473-Akt1" "pS477-Akt1" "pS6K1" "pS6PR" "pS6RP" "pS6rp" "pSMAD2"
    "pSMAD3" "pSTAT1" "pSTAT3-Luc" "pSTAT5" "pSUPER" "pSecUNC5A" "pSer20PAK2"
    "pSer20PAK2associate" "pShc" "pT" "pT11" "pT1609" "pT1N1MX" "pT1a" "pT308"
    "pT479" "pT479-Akt1" "pTA-2LTR" "pTNM" "pTag-RFP-N" "pTyr-peptide" "pY705"
    "pYAP" "pYXNX" "paclitaxel-only" "paics-kd" "pair-wise" "pairwise"
    "palitaxel" "palitaxol" "palmatum" "pan-HDACi" "pan-HDACis" "pan-Threonine"
    "pan-acetyl" "pan-cPKC" "pan-α-acetyl" "pancreatitis" "papain-like"
    "papillae" "para-aortic" "paracrine" "parafilm" "parainfluenza" "paralog"
    "paramaters" "parenTDT" "parenchyma" "parent-of-origin" "parents-offspring"
    "parisons" "partitioning-defective" "patho" "pathologically-relevant"
    "pathomechanism" "pathophysiology" "pathways" "path­way" "patient-matched"
    "paxilin" "pcD-NSP1-C395" "pcD-NSP1-N100" "pcD-NSP1-OSU" "pcD-NSP1ΔIRF3BD"
    "pcDNA-c-Myb" "pcDNA3,1-FOXM1" "pcDNA3-p53" "pcDNA3.1-FOXM1"
    "pcDNA3.1-FOXM1–transfected" "pcDNA3.1-Stathmin" "pcDNA3.1D" "pcDNA4"
    "pcSathmin" "penetrance" "penetrant" "penile" "pentakisphosphate"
    "pentamers" "pepMap" "pepMap100" "peptides" "per-residue" "perbB2"
    "perhaps" "peri-menopausal" "peri-tumor" "peri-tumoral" "pericarditis"
    "perimatrix" "perimetry" "perindopril" "peritumour" "peritumours"
    "permeant" "peroxidases" "pharmacophore" "phenotye" "phenyl"
    "pheochromocytomas" "phos-Smad2" "phosphate-binding" "phosphate–aqueous"
    "phosphatidylethanolamine-binding-protein" "phosphatidylinositide"
    "phosphatidylinositide-3-kinase" "phosphatidylinositides" "phospho-c-Jun"
    "phosphoS6" "phosphoSTAT3" "phosphoarray" "phosphodiester" "phosphoflow"
    "phosphohistone" "phosphoinositide-3-kinase-related-kinases"
    "phosphoinositides" "phosphoinositol" "phospholiapse" "phosphomutants"
    "phosphonull" "phosphoresidues" "phosphoribosyl" "phosphorothioate"
    "phosphorylated-S6" "phosphorylatione" "phosphosites" "phosphotransfer"
    "phosphotyrosines" "phosphotyrosyl" "photo-oxidative" "photoproducts"
    "physiopathology" "picrosirius" "pifithrin-α" "pigment-like" "pironetin"
    "pixel" "pixels" "planitis" "plaque-like" "plasmacytoid" "plasmon"
    "plastic-derived" "plasticware" "plate-bound" "platin"
    "platinum-fluoropyrimidine" "pleomorphism" "pleura" "ploidy" "plus-end"
    "pmTOR" "pmirGLO" "point-mutations" "pollutant-induced" "poly-A"
    "poly-ADPribose" "poly-SUMOylation" "polychemotherapy" "polyendocrinopathy"
    "polymer-like" "polymerase-1" "polymerization-activators" "polyphenol"
    "polyphenols" "polyprotein" "polypyrimidine" "polysomy"
    "polyvinyldifluoride" "polyvinylidene" "poor-prognosis" "poorer" "poorest"
    "poorly-differentiated" "pore-forming" "portal-portal" "positive-sense"
    "positive-strand" "positron" "post-BrdU" "post-IUEP" "post-TEV"
    "post-antiretroviral" "post-bleomycin" "post-burn" "post-castration"
    "post-chemoradiotherapy" "post-chemotherapy" "post-implantation"
    "post-infection" "post-injection" "post-inoculation" "post-irradiation"
    "post-mastectomy" "post-menopausal" "post-mitotic" "post-mortem"
    "post-operational" "post-operative" "post-progression" "post-pubertal"
    "post-recurrence" "post-replicative" "post-surgery" "post-taxol"
    "post-transcriptional" "post-transcriptionally" "post-transfection"
    "post-translational" "post-translationally" "post-transplantation"
    "post-trauma" "post-treatment" "postmenopause" "postmortem"
    "post–operative" "potassium-selective" "pppdsRNA" "prebound"
    "prefoldin-like" "premyofibril" "presenelin" "pri-let-7i" "pri-miR-218-1"
    "pri-mir-218-1" "pri-mir-218-2" "prion-like" "priori" "pro-angiogenic"
    "pro-arrest" "pro-atherogenic" "pro-cancerous" "pro-carcinogenic"
    "pro-contractile" "pro-death" "pro-diabetic" "pro-drug" "pro-fibrotic"
    "pro-growth" "pro-inflammatory" "pro-invasive" "pro-malignancy"
    "pro-malignant" "pro-mesenchymal" "pro-metastasis" "pro-metastatic"
    "pro-migratory" "pro-proliferative" "pro-survival" "pro-tumor"
    "pro-tumoral" "pro-tumorigenic" "pro-viral" "proband" "probands"
    "probesets" "procarcinogen" "procarcinogens" "procaspase-3" "procaspase-8a"
    "procaspase-8b" "procentriole" "procollagen" "prodomain" "proenzyme"
    "progenitor-like" "progeny" "progestin" "prognostic-predictive"
    "progressors" "prolif-erator-activated" "proliferator-activated"
    "proliferators" "promoter-less" "promoter-reporter" "promoter–reporter"
    "proof-of-concept" "proof-of-principle" "proportional-hazards"
    "prostaglandins" "prostatectomy" "proteasome-dependent" "protein-2"
    "protein-Ser" "protein-biosynthesis" "proteins" "proteolipid" "proteome"
    "proteosome" "prothymosine" "proto-oncoproteins" "proto-typical" "protomer"
    "protomers" "protooncogene" "protooncogenes" "protrusions" "proven"
    "proximity-dependent" "pseudogene" "pseudogenes" "pseudosubstrate"
    "pseudosubstrates" "psiCHECK2" "psoralane-UV-irradiated" "ptc-gal4"
    "pten-bound-1" "pten_away-1" "pten_away-2" "pten_bound-2" "pull-down"
    "pull-downs" "pullown" "pulposus" "pulse-chase" "puncta-like" "punctae"
    "pupal" "puparium" "pure-tone" "purimycin" "pyrazolo" "pyridyl"
    "pyridylemethyl" "pyrimidin-4-amine" "pyrimidine-pyrimidone"
    "pyrroledithiocarbamate" "pyrrolidinedithiocarbamate" "p = 0.001"
    "p = 0.002" "p = 0.003" "p = 0.005" "p = 0.035" "p = 0.043" "p = 1"
    "p = 0.01" "p = 0.02" "p = 0.039" "p = 0.06" "p = 1" "p = 1×10"
    "p = 4.8×10" "p≤0.05" "qCT" "qVD" "quadri" "quadri-radial" "quadrupole"
    "quality-of-life" "quant" "quinone-1" "quintile" "r-squared" "r=0.31"
    "rERG-1B" "rERG1" "rFnBPA" "rPKM2" "race-specific" "radiation-induced"
    "radio-chemotherapy" "radio-therapeutic" "radiochemotherapy" "radioimmune"
    "radioimmune-precipitation" "radioiodine" "radioresistance" "radiosurgery"
    "radiusR" "raft-disrupting" "raft-resident" "raison" "random-effect"
    "random-ordered" "rapalog" "rapamycin-resistance" "rapidly-adhering"
    "rarer" "ratioswhere" "re-ChIP" "re-appearance" "re-attach" "re-attachment"
    "re-establish" "re-established" "re-establishment" "re-examined"
    "re-examining" "re-exposure" "re-express" "re-expressed" "re-expressing"
    "re-expression" "re-feeding" "re-introduced" "re-introduction"
    "re-localization" "re-localized" "re-occlusion" "re-organizing"
    "re-passaged" "re-plated" "re-probed" "re-purposing" "re-routed"
    "re-seeded" "re-sensitization" "re-sensitized" "re-sensitizing"
    "re-staging" "re-treating" "reabsorb" "reaction-diffusion"
    "reaction-restriction" "reactive-immunoassay" "readout" "readouts"
    "reagents-analytical" "receptor-status" "receptor-γ" "receptor–ligand"
    "recessiveness" "rechallenge" "red-cell-associated" "red-fluorescent"
    "refractile" "refractoriness" "reggie" "regions" "regrowth" "regulators"
    "regulatory-associated" "remodeler" "replication-associated"
    "replication-blocking" "replication-dependent" "replication-enhancing"
    "replication-induced" "repressors" "residues1-263" "resluts" "responder"
    "responders" "reticulum" "retinol" "retrieval-induced" "retro"
    "retro-virally" "retroperitoneum" "retrospectively-identified" "retrovirus"
    "revalidate" "reverse-immunoprecipitations" "reverse-phase"
    "reverse-transcription" "reversed-phase" "rhEGFR" "rhabdoid"
    "rhodamine-phalloidin" "rhodopsin-like" "ribes" "ribose" "riboside"
    "rictor-induced" "right-hand" "risen" "risk-allele" "risk-benefit"
    "risk-reducing" "risk-stratify" "rna22" "romer" "rpm" "rs10026278"
    "rs10046" "rs10248565" "rs1042522" "rs1046875" "rs1046896" "rs1048943"
    "rs1056836" "rs1058808" "rs10769565" "rs10876993" "rs10893872" "rs10908495"
    "rs10908496" "rs10931481" "rs11079571" "rs11171806" "rs11202592"
    "rs11221332" "rs11225055" "rs1128334" "rs1130214" "rs1130233" "rs1130409"
    "rs115370042" "rs11543848" "rs11555134" "rs11667918" "rs11761619"
    "rs11886868" "rs120222243" "rs12022243" "rs12123160" "rs12132152"
    "rs12574073" "rs13017599" "rs13181" "rs13217795" "rs13220810" "rs13277113"
    "rs13277113A" "rs1327713" "rs1346271" "rs1346271G" "rs136855" "rs138487371"
    "rs139222464" "rs139509083" "rs1415377" "rs1426945" "rs1426945G"
    "rs1466785" "rs1467311" "rs149344143" "rs16260" "rs167715" "rs16825626"
    "rs16926246" "rs16941" "rs1700874" "rs174570" "rs1751031" "rs1751031A"
    "rs1751051" "rs1751051T" "rs1760944" "rs17879961" "rs1799782" "rs1799884"
    "rs1800504" "rs1800562" "rs1800975" "rs1800975-G" "rs1801200" "rs1801278"
    "rs1801516" "rs1801552" "rs1810132" "rs1935949" "rs199968569" "rs201459496"
    "rs201741811" "rs202113404" "rs20417" "rs2153960" "rs2230194" "rs2237457"
    "rs2273773" "rs2276330" "rs2279008" "rs2279244" "rs2304277" "rs230532"
    "rs2370512T" "rs2395185" "rs2494732" "rs2517955" "rs2517956" "rs2517959"
    "rs25487" "rs25487-G" "rs25489" "rs2555639" "rs2612091" "rs2612656"
    "rs2736340" "rs2741171" "rs2764264" "rs2802288" "rs2802292" "rs28384513"
    "rs2883881" "rs2910164" "rs2952156" "rs3093926" "rs31276" "rs3218536"
    "rs33964119" "rs34259" "rs34550074G" "rs3730358" "rs3743674" "rs3755157"
    "rs3800227" "rs3802604" "rs3803300" "rs3918290" "rs4135087" "rs4135385"
    "rs4148411" "rs422628" "rs4274624" "rs429358" "rs4420638" "rs4645878"
    "rs4646536" "rs4671393" "rs4680" "rs4691139" "rs4698861" "rs4737009"
    "rs4793665" "rs4853543" "rs4895441" "rs493102" "rs4937333" "rs5006884"
    "rs5275" "rs5275C" "rs5275T" "rs5277" "rs540078" "rs552976" "rs560191"
    "rs560887" "rs569421" "rs57095329" "rs61995542" "rs6265" "rs6439448"
    "rs6439448C" "rs6474359" "rs6590330" "rs6684514"
    "rs6684514-rs10908495-rs10908496-rs2230194" "rs67373796" "rs6739369"
    "rs6839448" "rs6839448C" "rs6864584" "rs689466" "rs689466A" "rs689466G"
    "rs689466GG" "rs6929404" "rs6943153" "rs6983267" "rs699466" "rs7069102"
    "rs7086803" "rs712829" "rs712830" "rs72554020" "rs730497" "rs731975"
    "rs743572" "rs7482144" "rs74949017" "rs7547519" "rs7548189" "rs7574865"
    "rs7616492" "rs7616492G" "rs7617492" "rs7617492G" "rs76387818" "rs7747752"
    "rs7762395" "rs7772603" "rs7776054" "rs7832767" "rs78332767" "rs7895833"
    "rs7931910" "rs7945071" "rs804271" "rs804276" "rs851539" "rs861539"
    "rs8752" "rs9316119" "rs933360" "rs9372190" "rs9376090" "rs9387478"
    "rs9389268" "rs9389269" "rs9399137" "rs9402686" "rs9480867" "rs9494142"
    "rs9695439" "rs9933309" "rubella" "rule-based" "run-to-run" "r "
    "s-transferase" "s00262-014-1527-x" "sALS" "sCD14" "sRNA" "sRNAs"
    "sample-size-weighted" "sarco" "sarcomatoid" "scIgG" "scIgG-T"
    "scintigraphy" "scotomas" "scratch-wound" "screenings" "secineH3"
    "second-generation" "second-hand" "second-round" "second-site"
    "selected-for" "self-activation" "self-administration" "self-biotinylation"
    "self-cleavage" "self-interaction" "self-interactions" "self-limited"
    "self-limiting" "self-oligomerize" "self-renewal" "self-sufficiency"
    "self-sustaining" "self-tolerance" "semi" "semi-independently"
    "semi-permeable" "semi-quantitative" "semidry" "senesce"
    "senescence-to-apoptosis" "sensitizer" "sequelae" "sequence-specific"
    "sequestosome" "sera-free" "serine–hydrolase" "serotype"
    "serum-deprivation" "sesinH3" "several-week" "severalfold"
    "severe-toxicity" "sex-dependent" "sex-specific" "shAKT" "shANGPTL1"
    "shAUF1a" "shAUF1b" "shCtr" "shDRD2" "shFBX4#1" "shFBX4#5" "shFGFR1"
    "shKSR" "shKSR2-depleted" "shMST1" "shRIP2" "shRNA#1" "shRNA#2" "shRNA2"
    "shRNAi" "shRNAmir" "shSIRT5" "shScr" "shScram" "shScramble" "shTAZ"
    "shTSC1" "shTSC1a" "shXIAP" "shake-off" "shaken" "shcIAP2" "shcont"
    "shcontrol" "sheet-like" "short-chain" "short-hairpin" "short-interfering"
    "short-life" "short-term" "shp38" "shrunken" "shwon" "shβ1-C1" "shβ1-C5"
    "si-RIP2" "siCOX" "siCOX-2" "siCtrl" "siFAK" "siGFP" "siGNAI2" "siGNAI2s"
    "siGRP78" "siMMP" "siMMP-7" "siMdm4" "siMst1" "siRNA#2-resistant" "siRNA2"
    "siRNABcl-xL#2" "siScr" "siWapl" "sickle-cell" "side-by-side" "side-chain"
    "side-chains" "side-effects" "sidechain" "sidechains" "sigmoid"
    "signaling-competent" "signallosome" "significate" "silico" "simpler"
    "simplest" "simplex" "simulation-generated" "single-cell" "single-center"
    "single-centric" "single-chain" "single-channel" "single-copy"
    "single-exponential-decaying" "single-head" "single-homozygote"
    "single-lesion" "single-locus" "single-nucleotide" "single-patient"
    "single-point" "single-site" "single-strand" "single-wavelength"
    "single–locus" "sinificant" "sinusoids" "sirtuin" "sirtuin-family" "situ"
    "six-12" "six-transmembrane" "size-dependent" "slit-like" "slow-growing"
    "sma-α" "small-angle" "small-cell" "small-interfering" "small-molecule"
    "small-scale" "small–cell" "smokers" "smoothen" "smples" "sn-2"
    "socio-demographic" "socio-demographical" "soft-agar" "soft-tissue"
    "soft-ware" "solid-pseudopapillary" "sonography" "spacer" "spacers"
    "spatio" "spatio-temporal" "specificity-determining" "spectrometer"
    "sphere-forming" "spheroid-derived" "spheroid-forming"
    "spheroid-mesothelial" "spindle-assembly" "spindle-like" "squamoid"
    "squamous-cell" "square-bipyramid" "ss" "ssDNA-RAD51" "stably-express"
    "stainings" "stand-alone" "standard-of-care" "state-of-the-art"
    "steady-state" "stellate" "stem-cell" "stem-like" "stem-loop" "stemcell"
    "stemness" "step-wise" "stepwise" "stochiometry" "straight-forward"
    "strain-dependent" "strand-binding" "strand-forming" "strand-specificity"
    "stres" "stress-dependent" "stress-induced" "stress-inducible"
    "stress-inducing" "stress-mediated" "stress-regulated" "stress-related"
    "stress-responsive" "stress-sensitive" "stress-treated" "stress-triggered"
    "stressful" "stretch-induced" "stromal-specific" "structurally-related"
    "structure-activity" "structure-based" "structure-function"
    "structure-specific" "sub-G0" "sub-G1" "sub-Mendelian" "sub-Saharan"
    "sub-analysis" "sub-arachnoid" "sub-categories" "sub-category"
    "sub-cellular" "sub-chromosomal" "sub-compartment" "sub-compartments"
    "sub-confluent" "sub-cytotoxic" "sub-deletion" "sub-domain" "sub-domains"
    "sub-epithelial" "sub-families" "sub-family" "sub-group" "sub-groups"
    "sub-lethal" "sub-location" "sub-locus" "sub-network" "sub-networks"
    "sub-nuclear" "sub-physiological" "sub-population" "sub-populations"
    "sub-region" "sub-toxic" "sub-type" "sub-types" "sub-units" "subacute"
    "subarachnoid" "subclass" "subclasses" "subcohort" "subdomain"
    "subfamilies" "subfemtoliter" "subgroup-analysis" "sublines" "subnetworks"
    "subset" "subsets" "subsite" "subsites" "substrate-recognition"
    "substrates" "subtype" "succ" "succinimidyl" "succinimidylpropionate"
    "succinyl" "succinyl-5-aminoimidazole-4-carboxamide-1-ribose-5"
    "succinyl-CoA" "succinyl-lysine" "sulfate-polyacrylamide"
    "sulfo-NHS-LC-biotin" "sulfonate" "sulphate-polyacrylamide"
    "super-enhancer" "super-family" "super-infection" "super-resolution"
    "supernatant" "supernatants" "superoxides" "supro" "survivalin" "sw" "swe"
    "swing-out" "switch-like" "synapse" "synapses" "syndrom"
    "syndrome-associated" "synergism" "synthases" "synthates" "synthetases"
    "systemic-disease" "t-statistics" "tGFP" "tRNAs" "tagSNP" "tagSNPs"
    "tandem-linked" "tartrate" "telomerase-activity" "temperature-dependent"
    "teno" "tet-on" "tetra-nucleotide" "tetrachloride"
    "tetracyline-off-mediated" "tetrahydroxyflavone" "tetrakis" "tetraploid"
    "tetrodotoxin" "thalamus" "thaliana" "thanLdlr" "thatPdgfrα" "thatWT1"
    "the1930s" "theBRAFV600E" "theBrca2" "theE2F1" "theEGFR" "theK" "theLdlr"
    "theMac" "theMac-Rap" "theRap" "theSHP" "theTsc1" "theWT1" "theca"
    "therapy-induced" "therapy-resistant" "there-fore" "thermotherapy" "theseK"
    "theumatoid" "thiazole" "thick-walled" "thinner" "thiol-cleavable"
    "thiosemicarbazide" "third-generation" "third-line" "three-dimensional"
    "three-marker" "three-quarters" "three-residue" "three-stranded"
    "three-tiered" "throid" "thrombi" "thromboctytopaenia" "thrombus"
    "thymocytes" "thyroidectomy" "tieredScreen" "time-dependency"
    "time-dependently" "time-lapse" "time-points" "time-response"
    "time-to-death" "time-window" "timeframe" "timeline" "timepoint"
    "timepoints" "timolol" "tissue-resident" "tissues" "titer" "titers" "tk"
    "to1.910" "toBRAFV600E" "toE2F1" "toGln" "toMac" "toMac-Rap" "toRap"
    "toluidine" "top-ten" "topologies" "topology" "toxicant" "toxicants"
    "toxicity-associated" "toxicity-induced" "trabeculoplasty" "tranducers"
    "trans-diffferentiation" "trans-well" "transactivation-competent"
    "transaminases" "transcript-level" "transcription-PCR"
    "transcriptional-independent" "transcriptome" "transcriptomes" "transducer"
    "transferase-mediated" "transformation-associated" "transgenes"
    "transgenicPdgfrα" "transiently-expressed" "translational-independent"
    "translationally-relevant" "transplantedLdlr" "transwells" "travoprost"
    "treatments" "tri-radial" "trichrome" "triepoxide" "trifluoromethy"
    "triphosphate" "triple-negative" "triple-pulse" "triple-stranded"
    "trisphosphate" "trypan-blue" "trypan-bule" "tryrosine" "tset2" "tubal"
    "tube-like" "tuberculoid" "tubular-like" "tubule" "tubules"
    "tumor-adjacent" "tumor-characteristics" "tumor-igenicity" "tumor-immune"
    "tumor-initiating" "tumor-node-metastasis" "tumor-suppressive"
    "tumorigeneis" "tumour-like" "tumours" "turn-around" "twenty-four"
    "twenty-seven" "two-chain" "two-hit" "two-hybrid" "two-locus" "two-phase"
    "two-phases" "two-sided" "two-species" "two-stage" "two-strand"
    "two-tailed" "two-third" "two-thirds" "two-three" "two-tier" "two-way"
    "type-1" "type-I" "tyr-397" "uL" "uanine" "ubi-K0"
    "ubiquitinated-Lys97-STAT3" "ug" "ultra-deep" "ultra-pure" "ultra-short"
    "ultralow" "un" "unc-51-like" "uncoordinated-5" "under-appreciated"
    "under-expression" "under-studied" "undergoes" "undergone" "underpinnings"
    "undertaken" "uniEquip" "univariae" "univariate" "unmet" "unresponsiveness"
    "up-stream" "upregulaiton" "urea" "ureter" "urothelium" "user-friendly"
    "usingCcr2" "uteri" "utero" "utero-placental" "utilizedPdgfrα" "v-Ki-ras2"
    "v-akt" "v-ets" "v1-10" "v2" "v3" "vMOS" "vaccine-induced" "vacuole"
    "vacuole-like" "vacuoles" "values" "variant-1" "variant1" "variant2"
    "variant3" "variation_HU1" "variation_HU2" "variation_HU3"
    "vasculitis-like" "vasculopathy" "vaso" "vaso-occlusive"
    "vehicle-injectedPdgfrα" "vehicle-treated" "vena" "vessel-like"
    "violet-based" "viremia" "vitro" "vivarium" "vivo" "viz"
    "voltage-activated" "voltage-dependence" "voltage-sensor" "vsp_away-3"
    "wash-out" "weakest" "web-based" "website" "week-old" "well-circumscribed"
    "well-conserved" "well-coordinated" "well-defined" "well-delineated"
    "well-designed" "well-differentiated" "well-documented" "well-encapsulated"
    "well-matched" "well-organized" "well-researched" "well-studied"
    "western-based" "whereGtv" "whereGtv-a" "whole-cell" "whole-exomic"
    "whole-genome" "whole-lesion" "whole-mount" "wide-range" "wide-ranging"
    "wide-scale" "wide-spread" "wide-type" "wild-typeWT1" "wildtype"
    "wilfordii" "winged-helix" "withE2F1" "withEGFR" "withGSK-3" "withKras"
    "withLdlr" "withMac" "withMac-Rap" "withRap" "withdrawn" "wk" "wordwide"
    "work-up" "workers" "workflow" "workup" "world-wide" "wortmanin" "written"
    "wtWT1" "x-ray" "year-old" "yeast-2-hybrid" "yeast-two" "yeast-two-hybrid"
    "yet-to-be" "yin-yang" "ypN" "ypT" "ypTisN0M1" "yr" "yu" "z-VAD-inhibitor"
    "zVAD" "zaspopathy" "zinc-transcriptional" "zona" "zoomed-in" "zymography"
    "×10" "×ERE-TATA" "× 10" "× 10" "être" "Δ11–20" "Δ400" "Δ543-604" "ΔAP1"
    "ΔBTB" "ΔC" "ΔCt" "ΔDD" "ΔDegron" "ΔDnaK" "ΔG" "ΔIRF3" "ΔIRF3BD" "ΔITIM"
    "ΔITIM-hERG" "ΔN" "ΔNLS" "ΔNp73" "ΔPCNA" "ΔPH" "ΔPIP" "ΔRING" "ΔTM" "ΔWW"
    "Δdegron" "Δp63RE" "ΔΔCt" "ΔΨ" "ΔΨPm" "ΔΨm" "Φ-π-S-S" "ΦΦPPPPxxP" "α-MEK1"
    "α-Pix" "α-cell" "α-dependent" "α-granule" "α-helical" "α-helices"
    "α-helies" "α-helix" "α-keto-hydroxyl" "α-nAChRs" "α-subunit" "α-subunits"
    "α1-collagen" "α2β1" "α3" "α3β1" "α4" "α5" "α6" "α7" "α7-nAChR" "αA" "αB"
    "αC" "αD" "αF" "αV" "αVβ3-cilengitide" "αVβ3-hFN10" "αVβ3-wtFN10" "αϖ"
    "β-N-acetylglucosamine" "β-TRCP" "β-TRCP-mediated" "β-TRCP1" "β-TRCP1+2"
    "β-TRCP1-R474A" "β-TRCP2" "β-arestin" "β-arrested" "β-barrel" "β-catanin"
    "β-chain" "β-form" "β-genu" "β-glycerophosphate" "β-helix"
    "β-hemoglobinopathies" "β-hydrolase" "β-nAChRs" "β-protein" "β-sandwich"
    "β-secretase" "β-sheet" "β-sheets" "β-strand" "β-strand-dominated"
    "β-strands" "β-subunit" "β-zipper" "β2-nAChR" "β3-integrin" "β3-subunit"
    "β3–β4" "βB" "βC" "βD" "βE" "βF" "βG2" "βI" "βII" "βTD" "βig-h3" "γ+β"
    "γ-Fibrinogen" "γ-aminobutyric" "γ-chain" "γ-complex-associated"
    "γ-irradiated" "γ-irradiation" "γ-phosphate" "γ1" "γ2" "γ3" "γA" "γIR"
    "γδT" "δ-cells" "δ-dependent" "δCT-EGFP" "δ−mediated" "ε-amino" "εCT-EGFP"
    "ε–amino" "κB" "λεαδing" "μL" "μg" "μg " "μl" "μmol" "μs" "π-electrons"
    "ρ0" "ρ0-RKO" "τ-induced" "χ2" "χ²" "χ² " "ψBRCA1" "ϕKXe" "”-induced" "−3"
    "−8" "≅60%"))

(DEFPARAMETER SPARSER::*BIO-ENTITY-HEADS-PHASE3-12001-12300*
  '("Q61R/K" "4/6" "LGH" "1/4" "11/15" "commonest" "4/7" "7/11" "3/5"
    "neurotrophy" "HAMD" "TSD" "mitogen-activated protein kinase kinase 1/2"
    "BDNFactivities" "TRD" "Prahallad" "non-EGFR" "EGF-like" "VR" "antigrowth"
    "Severinsson" "Djerf" "WT/EGFR" "pg/mg" "8/13" "Clarks" "WTand" "TPF"
    "FEMX" "human/mouse" "erbB2/3" "±1.1%" "erbB3/4" "with/without" "+ 10"
    "Rotte" "introns/exons" "≥0.8" "rs4793665" "CTFR" "eQTL" "cytohezin"
    "PhysVAS" "CHAQ" "LJC" "ParVAS" "AJC" "ACR-pedi50" "ACR-pedi30" "ILAR"
    "CHARMS" "pedi" "non–responders" "≤ 0.001" "non-response" "polyphenols"
    "congener" "C57Bl/6" "glutathione peroxidase-1" "just 24 h"
    "nuclear factor (erythroid-derived 2)-like" "toxicant" "CBD"
    "invaginations" "aroclors" "coplanar polychlorinated biphenyls" "quinone-1"
    "toxicants" "biphenyls" "/µL" "dioxin-like" "EKLC" "HMJ" "mature miR-15a"
    "miR-23b" "*I" "~10%" "14-3-3ζ" "~30%"
    "oropharyngeal cancer line UPCI:SCC090" "UPCI:SCC090" "E7/E1" "~90%"
    "TTAGGG" "hexanucleotide" "Nuclear/Cytoplasmic" "nuclear/cytoplasmic"
    "RNA22" "~ 60%" "~60%" "the functional non-redundancy"
    "these same Met-transformed IECs" "Tpr-Met-transformed IECs"
    "important integrators" "cobblestone-like" "shCTRL" "shShc" "refractile"
    "epithelioid" "NPXpY" "pYXNX" "Met/hepatocyte growth factor (HGF)" "IEC"
    "IECs" "fibroblast-like" "5 μg/mL" "autocrine/paracrine" "pleomorphism"
    "England" "sarcomatoid" "hemangio"
    "controversial and ‘classical’ nephrectomy" "ureter" "scintigraphy"
    "benzyl" "iodo" "MIBG" "metanephrine" "von Recklinghausen’s" "DHPLC" "vena"
    "Recklinghausen" "pleura" "the1930s" "nephron" "theumatoid"
    "glyceraldehydes" "HCB" "rs1128334/rs4937333"
    "lacteal glandular epithelium" "the associated SNP rs1128334" "Pc"
    "rs12574073" "rs11221332" "11q23" "GWASs" "21q22" "2p15" "HLA-B27" "iritis"
    "axial" "rs4937333" "CGC" "Ningxia" "Shandong" "= 69" "= 28" "= 0.95"
    "= 0.035" "P = 0.005" "50 μL" "non-MHC" "rs1128334" "IBN" "Diamino"
    "Brachytherapy" "multisubunit" "BRCAness" "r " "NCR" "responder"
    "Non-complete" "p = 0.035" "_007294.3" "p = 1" "non-responding" "NeoSphere"
    "Neoadjuvant" "Baselga" "abdomen/pelvis" "expander" "underwent re-staging"
    "CLEOPATRA" "workup" "comedo" "Biopsy" "Re-staging"
    "the patient underwent modified radical mastectomy" "mastectomy" "BCLM"
    "Five-year" "3-month" "JHK" "JSK" "KYE" "DWK" "KWL" "non-complete"
    "more robust identifiers" "identifiers" "p21 expression" "dormancy" "ypN"
    "ypT" "preoperative chemoradiotherapy (CRT)" "AIO" "T3/4"
    "chemoradiotherapy (CRT)" "= 0.045" "non-pCR" "Alli" "siRNA1 and"
    "interactinn" "siRNA2" "EHCC" "anti-microtubule" "48 h" "1 × 10" "Cip/Kip"
    "=   0" "P  =   0.0021" "insATTG" "Karban" "Crohn's" "conduces" "IIAA"
    "DDAG" "the intronic enhancer" "Baltimore" "ATTG" "delATTG" "-94ins" "BIA"
    "insertion/deletion" "A → G" "Smad2/3/4" "well-differentiated ones" "IIIA"
    "gastric SRCC" "SRCC" "= 12" "P = 0.004" "≤5" "P = 0.001" "revalidate"
    "MPT0E014" "MPK" "m-carboxycinnamic acid bishydroxamide (CBHA)"
    "nonhistone" "the m -carboxycinnamic acid bishydroxamide (CBHA)"
    "bishydroxamide (CBHA)" "bishydroxamide" "800 bp" "PGSF1"
    "lapatinib-treated MDA-MB-231 cells" "CQ" "231/Lap#6" "#6" "231/Lap"
    "antidiabetes" "24 hrs" "5  μ g" "Pietras" "DFI" "BCSS" "Francisco"
    "dimer/ligand" "ER+ " "= 0.015" "p  = 0.001" "95 % CI" "p  = 0.027"
    "p  = 0.005" "= 0.044" "HER2+ " "571–3"
    "first used computational algorithms" "Pri-mir-218-1" "pri-mir-218-1"
    "rna22" "miRBridge" "DIANA" "miRSystem" "Brain-metastatic cell line BM7"
    "BM7" "pri-miR-218-1" "P-fractions" "P-fraction" "phosphohistone"
    "co-labeled" "IUEP" "co-label" "Ccnd2-" "Ccnd" "SVZ" "VZ" "NHLBI" "exomes"
    "probands" "=6" "n =4" "n =5" "12h" "non-synonymous" "± 1.7%" "± 2.1%"
    "± 1.1%" "± 1.5%" "Ki67+" "GFP+" "DNA/chromatin" "M2/3 motifs" "M2/3motifs"
    "Δ54-56" "D26A" "succinimidylpropionate" "dithiobis" "M2/3"
    "our knowledge only one study has" "SAGA-like" "MBIII" "MBII" "bHLHZ" "MBI"
    "STAGA" "~40%" "48 h" "Anti-Flag" "5μg" "5 μg" "Representative micrographs"
    "**P" "*P" "siCOX" "T3+T4" "T1+T2" "III+IV" "I+II" "ANCT" "siMMP" "P=0.014"
    "S221/T246" "Wiza" "coIPs" "Crm" "co-KD" "Doxycyline" "coIP" "Superose"
    "C-terminally" "Eluates" "eluates" "IAASMRALVL" "LVLL" "anti-phospho"
    "non-phosphorylatable" "co-precipitates" "box1" "box1 and"
    "characteristic gatekeepers" "gatekeepers" "di-leucine"
    "the SHP2-bound IRS-1 phosphopeptide" "sidechains" "sidechain" "headgroups"
    "paralogs" "monodisperse" "box2" "SH2-like" "+5" "βC" "non-cleavable"
    "de-protection" "anaphase/telophase" "GST-53BP1-FFRs" "Durocher"
    "the BRCA1-mutant ovarian line UWB1.289" "UWB1.289" "aphidocolin"
    "Wildtype" "subfemtoliter" "phosphomutants" "phosphonull" "RNF" "mKO"
    "Fucci" "pT1609/pS1618" "PP4C/PP4R3β" "pT1609" "pS1618" "PP4R3β" "PP4C/R3β"
    "phosphoresidues" "T1609A/S1618A" "mononuclesomes" "UDR" "anti–rabbit"
    "anti–mouse" "anti–Flag" "dehydrogenases" "the proteomic datasets"
    "andGcdh" "GCDHKO" "crotonyl" "Acidemia" "-acetylglutamate (NAG)"
    "-acetylglutamate" "acetylglutamate" "MODELLER" "SIRT5HY" "SIRT5H158Y"
    "shScramble" "urea/ornithine" "ornithine" "shSIRT5" "SIRT5KO" "CORUM"
    "GOCC" "FAD" "GOMF" "MaxQuant" "carboxyacyl" "adipoyl" "succinyl-"
    "-adipoyllysine" "adipoyllysine" "the enzymatically inactive muta nt"
    "muta" "NaBu" "Dps" "ATNLWW" "VKSK" "pseudosubstrates" "ADPR"
    "-glutaryl-CoA" "114.0281Da" "the in vivo -derived peptide co-eluted"
    "co-eluted" "NGVK" "NFSTVDIQK" "ATNLLYTR" "co-elution" "isomers" "ac"
    "anti-K" "Glutaryl" "Succinyl" "SIRT5-" "SIRT" "succinyl" "succ" "KDACs"
    "acyl" "glutaryl" "urea" "Proteome" "/µl" "non-enzymatic" "three-quarters"
    "p =1" "4×10" "=8" "=9" "=2.6" "~2-fold" "Michaelis-Menten" "N -acetylated"
    "+4" "IU/L" "curative hepatectomy" "hepatectomy" "*61" "P =  0.43" "/L"
    "= 38" "P =  0.01" "g/dL" "± 0.5 " "mean ± SD" "=  0.04" "=  0" "≤2 "
    "P =  0.02" "identifier" "HGVS" "ICLAC" "Website" "Websites"
    "_R110delYQGSYGFR" "_333" "CellMiner" "NCI 60" "NCI/ADR-RES" "MCF-7/Adr"
    "omic" "the most popular ones" "UMD" "NCI-60" "GGJ-414" "GGJ" "12q14"
    "scotomas" "arcuate" "perimetry" "Algorithm" "OU" "IOPs" "Raynaud"
    "topical timolol" "travoprost" "dorzolamide" "timolol" "trabeculoplasty"
    "kbp" "GGR-590-1" "POAG" "Iowa" "Minnesota" "Rochester" "Southampton" "IOP"
    "NTG" "Canel" "chelate" "the vector-control monolayer" "CDH-1" "ITGα10"
    "ITGα6" "non-homogeneity" "plasticware" "re-attachment" "decapeptide"
    "ITGαv" "ITGs" "p≤0.05" "Pintel" "Adeyemi" "K7R" "ΔDegron" "ΔPCNA"
    "Δdegron" "KRR" "APAR" "WAF1/Cip1" "re-localized" "MVM" "UN1a" "GBR10"
    "secretion/expression" "EpiTYPER" "MassARRAY" "rs11555134" "UN1" "UN2"
    "rs1800504" "UN" "2,637 developed T2D" "FBAT" "rs6943153" "T-allele" "IGT"
    "parenTDT" "Finland" "rs2237457" "Amish" "rs933360" "C2CD4A"
    "previously reported T2D" "CardioMetabochip" "iSelect"
    "5-dimethylthiazol-2-yl" "= 38" "p  = 0.001" "= 81" "p  = 0.07" "p  = 0.10"
    "p =  0.002" "=  0.0009" "p =  0.005" "p =  0.02" "p =  0.035" "= 0.82"
    "G-alleles" "=  0.026" "N = 1" "=  0.0016" "p =  0.0012" "N = 15" "p =  1"
    "=  0" "knockin" "palmatum" "anthraquinone" "Co-regulators"
    "the precise anti-apoptotic" "a naturally occurring polyphenol"
    "polyphenol" "almost non-significant" "exogenous co-activators"
    "pMMTV-neomycin-luciferase" "PFT-α" "-VAD-FMK" "Alexa" "noncancer"
    "45±1.50" "40±1.12" "thiosemicarbazide" "brussels" "ITCs" "RESV" "HRPC"
    "co-treatments" "non-steroidal" "Primer 3" "Annexin V/Propidium" "2H"
    "anti-androgenic" "anti-hormonal" "glycolylases" "rs61995542" "rs34259"
    "rs4135087" "rs167715" "oxodeoxyguanosine" "rs804271" "= 9×10" "Guérin"
    "Calmette" "rs804276" "= 6×10" "NEIL2-" "NEIL" "rs3093926" "VIII-like"
    "1.03–1.21" "rs2304277" "1.03–1.16" "rs1466785" "Carlos (HCSC)"
    "ResearchCentre (CNIO)" "MBCSG" "Milan" "Demokritos" "ICO" "HCSC" "Clínico"
    "CNIO" "ResearchCentre" "Carlos" "iCOGS" "COGS" "a comprehensive study has"
    "CIMBA" "1000 Genome" "= 9" "= 8" "= 6" "p = 1" "BRCA1/ 2" "p = 4.8×10"
    "the distinctive intracytoplasmic vacuoles" "INI-1" "Debelenko"
    "nephroureterectomy" "Eñquez" "indeterminate subtype"
    "prominent intracytoplasmic vacuoles" "2p23" "Ventana" "Dako"
    "the prominent intracytoplasmic vacuoles"
    "rare displaced renal tubular epithelium" "Horsfall" "Tamm"
    "conspicuous intracytoplasmic vacuoles" "dis" "hematuria" "actinmyosin"
    "cribriform" "desmoplasia" "medulla" "vaso" "nephropathies" "non–clear"
    "1/10" "EBV+" "prophylactic antibiotherapy" "antibiotherapy" "diaphragma"
    "retroperitoneum" "pericarditis" "syndrom" "Cyclophophamide" "UKCCSG"
    "transaminases" "arachnoid" "progressive lymphopenia" "APDS" "nonrandom"
    "activity/phosphorylation" "Phenyl" "approximately 4.6-fold greater"
    "nondomain" "pentamers" "Nagy" "Wiseman’s" "Wiseman" "receptors/cluster"
    "clusters/μm" "antiphosphotyrosine" "Caiolfa" "Sorkin" "BioNetGen" "BNGL"
    "arctan" "pixels" "equationThe" "fraction/" "ratioswhere" "eqs" "NON-FRET"
    "non-FRET" "eq" "NFRET" "bywhere" "This graphical approach has"
    "polymer-like" "a model system wherein higher-order oligomerization
has"
    "mRFP" "BaF/3" "phosphotyrosines" "=
2"
    "N – 1" "N −1" "= 50" "variant 1" "ultralow" "nonstem" "Actr" "Lapidot"
    "CCSCs" "cells/" "Smad2/3" "metastasizing has" "pTNM" "Lauren’s"
    "Borrmann’s" "Borrmann" "Lauren" "Goseki" "p  = 0.023" "p  = 0.037"
    "p  = 0.012" "p  = 0.002" "= 6" "breast/ovarian" "BRCC" "Chang" "Millot"
    "Drost" "CRMI" "Co-precipitation" "HEK23T cells" "oncologists"
    "co-precipitate" "DYKDDDDK-tag" "DYKDDDDK" "pQCXIX" "pFLAG" "MASTOS"
    "Sharan" "In contrast full-length BRCA1 protein sequence has" "GVGD"
    "Cypriot" "VUS" "α/β" "= 13" "10 μg" "Tris/HCl" "co-precipitation"
    "P = 0.02" "Alanazi" "EPTB" "rs11079571" "Frizzleds" "SFRP" "Rs7832767"
    "rs7832767" "rs4135385" "Wnt/β-catenin" "Wnt/β-Catenin" "TH17" "p  = 0.047"
    "ng/μL" "p  = 0.005" "p  = 0.002" "p  = 0.019" "Tok" "Shaat" "Fallucca"
    "Greek" "Arabia" "Saud" "OGTT" "PPBG" "2q36" "ample evidence has"
    "Gestational diabetes mellitus (GDM)" "rs1801278" "non-GDM" "T2DM"
    "gestational diabetes mellitus (GDM)" "mellitus (GDM)" "GDM" "kg/m 2"
    "= 300" "γδT" "PMN" "endoderm" "PanIN" "10-months"
    "Constitutively active Akt (CA-Akt) has" "mPanIN" "Myrsinaceae" "Burm"
    "ribes" "Embelia" "flurouracil" "Balb" "50 μl" "phosphorylation/activation"
    "Anti-proliferative" "rarer" "the nonsynonymous rs34550074G" "rs2370512T"
    "tagSNPs (TAGAAC)" "rs6839448C"
    "primary hypertrophic osteoarthropathy (PHO)" "osteoarthropathy" "SNPinfo"
    "rs1426945G" "Chan" "rs5275T" "benzo" "rs689466 A" "rs689466G (GGT)"
    "rs1751051T" "rs6439448C" "rs1346271G" "TATTA" "AATTA" "TCAAAC" "TAGAAC"
    "ACGC" "AGGC" "AGAC" "rs5275" "bootstrap" "rs7616492" "rs1346271"
    "Thompson" "Hoeft" "rs689466A" "Holla" "keto" "catabolizes"
    "hydroxyprostaglandin" "colorectal adenomas" "prostaglandins" "rs1751031"
    "rs1751051" "rs6439448" "rs1426945" "rs689466" "Hydroxyprostaglandin"
    "P  = 0.008" "P  = 0.023" "= 0.06" "P  = 0.037" "= 0.63" "P  = 0.004"
    "= 0.38" "P  = 0.032" "P  = 0.003" "P  = 0.047" "P  = 0.026" "P  = 0.029"
    "Non-parametric" "10/10" "P  = 0.011" "YS" "Roswell" "E:T"
    "trastuzumab or scIgG-T (with a compromised Fc) weekly at 5 mg/kg" "pSTAT1"
    "cytometer" "scIgG" "-1β" "co-cultured" "co-culturing" "10 μg" "1 × 10"
    "JLJ" "KHD" "Yom" "non-TN" "co-efficient " "apocrine" "= 0.048"
    "non-luminal" "p = 0.002" "p = 0.005" "≥5 " "non-small–cell" "p = 0.043"
    "p = 0.001" "Xia" "Garrett" "ERBB2/3" "EIA" "HRG β1" "ErbB3/4" "50 ng/ml"
    "decreased starting 2 h" "HRGβ1" "FlowJo" "DynaMagnet" "RNaseOUT" "DEPC"
    "Ethenyl" "IMEM" "LTLT-Ca" "TCG" "CGG" "GTG" "-GTC" "GTC" "GAC" "CTG"
    "PerfeCTa" "iCycler" "Gaithersburg" "SuperMix" "SuperScript" "UVP"
    "VisionWorksLS" "NuPAGE" "Richmond" "BioRad" "Bradford" "Indianapolis"
    "Brodie" "Rockville" "Biofluids" "Maryland" "rabbit anti- phospho p70 S6K"
    "Billerica" "Houston" "Selleckchem" "Woburn" "ErbB2/3" "p=0.02" "K2R" "K8R"
    "K120/164" "K6R" "K120/164R" "Sykes" "Gu" "Chao" "Campisi" "Prives"
    "Vousden" "Paik" "monosomy" "Guiu" "treated IHC3+" "IHC2+FISH+"
    "IHC2+ FISH+" "IHC3+" "HER2/CEP17" "Webster" "polysomy" "Oncology/College"
    "and 1+" "Hercept" "0–3" "=13" "59 IHC2+-treated cases n =28" "IHC2+"
    "FISH+" "=28" "co-purification" "ΔDnaK" "DE3" "DnaK" "TEV" "coomassie"
    "BRC1-8" "Okorokov"
    "—PuPuPu C (A/T)(T/A) G PyPyPy ( n ) PuPuPu C (A/T)(T/A) G PyPyPy" "T/A"
    "A/T" "PyPyPy" "—PuPuPu" "PuPuPu" "p53RE" "has" "binding/hydrolysis"
    "after 12" "rechallenge" "ha" "Aisner" "refractoriness" "Tumori"
    "Nazionale" "Istituto" "IRCCS" "Fondazione" "a relevant subset"
    "Co-localization" "= 0.045" "KPS " "KPS" "Karnofsky" "P  = 0.002"
    "mean ±SD" "±20" "PELP1cyto" "mg/kg/day/i" "tumorigeneis" "ZR75"
    "PELP1over" "ER-mediated" "mg/Kg/day" "1×10" "intraobserver" "SISH"
    "only nuclear atypia" "TTMA" "10-year" "from 26" "= 29" "PETACC" "CLIA"
    "hindgut" "subsite" "999/2822" "interquartile" "pMMR" "dMMR" "FOLFOX"
    "non-metastatic" "Kasahara" "only approximately 1/2" "/ cell" "≥5"
    "Nonsignificant" "withEGFR" "SMIs" "clinicaltrials" "≥3" "andEGFR" "/cell"
    "theEGFR" "≥ 3" "≥4" "HRwas" "knownEGFR" "anEGFR" "withKRAS" "p+E"
    "appropriateness" "H-score" "H-scores" "Terpstra" "Jonckheere" "OAM4558g"
    "O+E" "cell lines/tissues" "3 +" "P = 1" "= 23" "P = 0.10" "= 0.40"
    "= 0.38" "P = 0.06" "primer/probes" "FISH +" "P = 0.002" "P = 0.09"
    "P = 0.01" "muirne" "mmLDL/IL-6" "monocyte/macrophages" "inMacRap"
    "ofMacRap" "byRap" "BMDMs" "Gapdh" "toMac" "phosphoSTAT3" "forMac"
    "expresson" "BMDM" "theRap" "InMac" "LysmCre" "ofRap" "toRap"
    "succinimidyl" "withRap" "ofLdlr" "Razani" "theLdlr" "InLdlr" "thanLdlr"
    "orMac" "fromRap" "withLdlr" "inLdlr" "-Mac-Rap" "phosphoS6" "withMac"
    "crossedRap" "fromLdlr" "transplantedLdlr" "theMac" "andRap"
    "cardiac transplantation vasculopathy" "vasculopathy" "anti-atherogenic"
    "andMac" "inMac" "mmLDL" "fromMac" "WTD" "intoLdlr" "Co-transfection"
    "Tsc1  KO" "Tsc1 KO" "Hoya" "Breakpoint" "a proband's" "exon1-2dup"
    "AluYa5" "_012772:g" "_111983del" "_005905:g" "AluS" "Garibay" "Ruiz"
    "co-segregation" "co-segregates" "Peixoto"
    "the approximately 250 kb exon1-13del LGR" "Valle" "exon1-13del"
    "_000017.10:41230935" "Spaniards" "Yates" "indels" "_41399840" "arisen"
    "AluSx1" "AluSq2" "Exon1-13del" "Exon1-24del" "_97270" "RepeatMasker"
    "AluY" "NG_005905.2:g" "Exon1-2dup" "∼6%" "Portugal BRCA1 LGRs"
    "only one BRCA2 LGR" "proband" "Sluiter" "Netherlands" "_157insAluYa5"
    "_41399840delinsAluSx1" "_000017.10:g" "_180359del" "_005905.2:g" "LGR"
    "pathogenic LGRs" "Galicia" "HBOC" "LGRs" "Primer3" "BRCA1 / 2" "P -value "
    "NARP21 genes" "NARP21 gene" "AD228" "NF24" "PR18846227" "univariae"
    "clinic endpoint" "NARP21" "Radical Retropubic Prostatectomy (RRP)"
    "Prostatectomy" "Mayo" "HomoloGene" "Myc/IκBα+/−" "atypia" "USPSTF" "ERSPC"
    "PLCO" "1 – 3" "ATRA/PP2" "For example PP2/ATRA co-treatment" "PP2/ATRA"
    "co-administered" "SFK/Lyn" "Lyn/SFK" "CD38+" "co-adminstration" "NAADP+"
    "ectoenzyme" "non-APL" "Endometrioid" "normal cyclical endometrium"
    "carcinoma-associated nonmalignant endometrium" "Balmer" "myometrium"
    "Glands/stroma" "most extra-tumoral biopsies" "situ"
    "The glandular epithelium" "non-tumoral" "YMH" "YCP" "HHJ" "YJC" "WHS"
    "CCJ" "SCY" "Humar" "CTT" "approximately 7 years younger" "Laurén’s"
    "Laurén" "Franco" "Jiangsu" "Portuguese" "Pharoah" "Corso" "CDHI"
    "The genotypic polymorphisms" "+ 6" "= 27" "= 19" "P  = 0.011" "P  = 0.005"
    "+ 6 " "JDL" "ZL" "YZ" "RKM" "JW" "FBXL"
    "normal squamous epithelium and non-malignant Barrett’s"
    "normal squamous epithelium and non-malignant Barrett" "Barrett"
    "botulinum" "2 h" "pcDNA3.1D" "protein 1B" "astrotactin" "forebrain"
    "rs4420638" "= 0.2–0.7" "SKAT" "dipeptidase-like" "for 3MSE" "consortin"
    "rs138487371" "rs199968569" "rs139509083" "activin A receptor type IIA"
    "RAVLT" "3MSE" "rs7547519" "rs429358" "rs6265" "rs10769565" "oncogen"
    "Bonferonni" "genes/regions" "DSST" "the associated comorbidities"
    "other associated comorbidities" "comorbidities" "CNST" "ĥ" "Rey" "Stroop"
    "= 0.2" "/OR" "p = 0.01" "rs1130214" "p = 0.005" "p = 0.002" "= 26"
    "IMPUTE2" "1000 Genomes" "re-examined" "p = 3.7 × 10" "invasion/metastasis"
    "MIBC" "the prognostic markers proven" "nearly three-quarters"
    "pelvic lymphadenectomy" "r  " "Univariate"
    "only 16.7% (5/30) bladder urothelium" "urothelium"
    "bilateral lymphadenectomy" "biologically aggressive UCB" "cystectomy"
    "UCB" "P  = 0.001" "= 0.009" "P  = 0.005" "P  = 0.012" "= 3" "= 6" "= 4"
    "= 17" "χ² " "χ²" "= 0.038" "= 0" "P  = 0.01" "= 0.04" "P  = 0.02"
    "P  = 0.002" "Schwartz" "Welkoborsky" "protooncogenes" "pathomechanism"
    "ELAM" "antrum" "atticus" "perimatrix"
    "multilayered keratinizing squamous epithelium" "protooncogene"
    "epidermoid" "= 9" "P = 0.012" "P = 0.0001" "= 6" "dependnet"
    "systemic corticosteroid" "immunoglobulins" "72.86±3.07%" "75.58±1.91%"
    "±0.26%" "27.26±1.84%" "26.72±1.35%" "p=0.0012" "2.97± 0.27%" "1.83±0.25%"
    "±0.60%" "3.91±0.79%" "2.29±0.27%" "3.62±0.66%" "p=0.043" "5.03±0.66%"
    "9.18±0.96%" "9.26±1.48%" "3.61±0.49%" "8.09±1.93%" "p=0.019" "29.40±6.37%"
    "p=0.0004" "17.59±4.47%" "SLEDAI" "±0.40" "p=0.035" "CD3 +" "N=1" "N=5"
    "N=3" "=0.0012" "pS6RP" "L-3,4-dihydroxyphenylalanine"
    "its toxic metabolite 1-methyl-4-phenylpyridinium"
    "1-methyl-4-phenylpyridinium" "Postmortem" "Lewy" "GSK-3 is" "Bernards"
    "vMOS-" "vMOS" "helies" "wildtype (WT)" "S218/222D" "K175/362R" "K175/362Q"
    "K→R" "non-acetylated" "AcK175" "class I/II"
    "mitogen-activated protein kinase kinase-1" "Sirtuins" "Garcia" "Kozlitina"
    "≥65" "quintile" "CV" "RDW" "Mp:area" "Mxt" "pixel" "S6 P" "ΔΨm"
    "-dihydrodichlorofluorescein–diacetate" "cepharanthine" "biscoclaurine"
    "2dG" "RSV" "drugs/supplements" "BRB" "CDDR" "Gero" "drug/supplement"
    "mTOR/S6" "être" "raison" "Hayflick" "gero" "6 P" "Ser235/236"
    "insulin-like" "megakaryoctye" "CD41a" "growth/survival" "hemato" "GlyA+"
    "n=5" "F36V-MPL" "CID" "hiPSC" "hPSC" "P=0.005" "=0.0009" "P=0.02" "=0.026"
    "n=3" "=0.015" "P=0.003" "P=0.0001" "pSTAT5" "Anti-rabbit" "CD34+"
    "the precise CNV breakpoints" "_HU2" "variation_HU1" "GSKB" "aCGH" "Saus"
    "Czech" "variation_HU3" "_HU3" "C3orf15/AAT-1" "_HU1" "p=0.00001"
    "p =0.00051" "Lachman" "C3orf15" "pancreatitis" "kinase-3" "synthates"
    "=0.04" "=12" "p=0.05" "cell membrane/cytoplasm" "mechanoresponse"
    "plasma membrane/cytoplasmic" "its inactive analog U0124" "U0124" "Sa/CD99"
    "plasma membrane/cytoplasm" "IOR/OS7" "Osteoblasts" "osteoblast-like"
    "glycerophosphate" "24/34" "6/34" "mature human osteoblasts"
    "trabecular osteoblasts" "AHTO" "Hamilton" "Bertaux" "osteoprogenitors"
    "osteoid" "mifamurtide" "Wiley" "mature osteoblasts" "co-regulators"
    "co-regulator" "+200" "phospho-ERK 1/2" "only diploid non-dysplastic"
    "hTERT/Ki67association" "non-dysplasia" "normal colonic mucosa" "colectomy"
    "BFB" "p=0.037" "colonic mucosa" "Greco" "colectomies" "Diploid" "LMM"
    "dysplastic mucosa" "UC colonic mucosa" "non-UC" "hTER" "non-dysplastic"
    "non-progressor" "The colonic mucosa" "the colonic mucosa"
    "non-progressors" "p=0.12" "=0.2" "larger chromosome
haplotypes"
    "priori" "Mossoró" "covariates" "Belém" "northeastern Brazil"
    "non-myelinated" "leprosum (ENL)" "T-helper" "tuberculoid" "MDT" "Hansen’s"
    "Hansen" "Brazil" "leprosum" "nodosum" "erythema" "Norte" "Grande" "Rio"
    "rs1058808" "rs2952156" "rs2517956" "Pará" "leprae" "p = 0.05" "= 0.0016" "=
0"
    "de-differentiated" "p =
0.001"
    "= 2" "forelimb" "L554P protein" "Xpress" "pSecUNC5A" "Lavigne" "Tessier"
    "ΔDD" "-TLHA" "TLHA" "ZU" "zona" "PEST" "NMJ" "imaginal disc epithelia"
    "siFAK" "dEGFR" "GMR-gal4" "re-appearance" "cone-like" "ommatidium"
    "primary pigment-like" "pupal" "orFAK" "puparium" "hs" "/+" "ofFAK" "ofGMR"
    "controlGMR" "transgenes" "UAS" "multiple imaginal disc epithelia" "ofdpp"
    "ofptc" "escapers" "epandrium" "anlage" "escaperptc" "ptc-gal4" "indFAK"
    "ofdFAK" "fromdFAK" "Sos" "calleddRET" "ommatidia" "Anterior/Posterior"
    "dRET" "pheochromocytomas" "dFAK" "melanogaster" "Non-targeting" "A1 and"
    "co-overexpression" "S1D" "biomaker" "68/80" "biomakers" "wordwide"
    "inhibiton" "1∶50,000" "confounders" "diagnostic biopsy" "Clinicians"
    "Australians" "Hanken" "The more sensitive Egger’s" "p = 0.01" "p = 0.06"
    "p = 0.039" "p = 0.003" "= 0.031" "JAK-STAT3" "pMSCV" "5-aza-CdR"
    "multicentric Castleman's" "multicentric Castleman" "Castleman" "Kaposi's"
    "Kaposi" "tRNAs" "Leigh" "c-Myc-positive Burkitt's"
    "the c-Myc-overexpressing Burkitt's" "MAP1D" "CEB/P"
    "methionine aminopeptidase 1D" "Warburg" "actinonamide" "NNGH"
    "at least 24 h" "the two Burkitt's" "The Burkitt's" "eightfold"
    "micrographs" "anti-HsPDF" "alexa" "mitotracker" "RNAseP" "formyl"
    "myc-positive Burkitt's" "Burkitt's" "HsPDF" "E-boxes" "Cxs" "timeline"
    "exosomes" "rhEGFR" "EGFR1" "∼35%" "LHD" "BT145" "BT164" "Schwann" "GJIC"
    "Chemoresistance" "2 h" "+50" "non-targeted" "Z -score" "PDAs"
    "TNF α -induced
I κ Bα phosphorylation/degradation"
    "phosphorylation/degradation" "shcontrol" "16.2%±1.9" "shXIAP" "S9A"
    "TopFlash" "pLenti" "LY2064827" "GSK-3i" "5  μ g/ml"
    "activation/repression" "NF- κ B1" "auto-inhibitory" "72-hour" "IP4"
    "fisetin-treated monolayer" "Corp" "occludes" "Kinome" "chromenone"
    "α-keto-hydroxyl" "α3" "α4" "kcal/mol" "ΔG" "vs" "hypodermis"
    "Karbowniczek" "MatTek" "~20μM" "tetrahydroxyflavone" "polypyrimidine"
    "horizontal plaque-like" "VGP" "Thr 37/46" "*3" "1 +" "Protor1/2"
    "ER-pathway" "ER-expressing" "p=0.01" "p=0.039" "p=0.002" "r=0.31"
    "serous histology" "the most common histologic subtype" "HGSOC" "p=0.001"
    "ploidy" "LVSI" "=0.12" "=0.044" "≥11" "p=0.011" "=0.039" "=0.002"
    "95%CI 1" "CCRP" "Yamamoto" "Sakurai" "Taniguchi" "Heinrich" "Hirota"
    "Kikuchi" "Koyama" "Wardelmann" "AFIP" "Lasota" "Miettinen" "P  = 0.02"
    "P  = 0.0001" "P  = 0.003" "= 0.0003" "= 0" "= 0.72" "EJS" "HZ" "ZD" "RKT"
    "EKH" "the associated protomer" "protomers"
    "the resulting profound anti-cancer" "Nthy-ori" "3–1" "ori" "radioiodine"
    "p44/42" "Binet" "ER +ve" "PR+" "rs" "Yoshino" "Kondo" "Suzuki" "Qiang"
    "Ghayad" "Koda" "Shinawi" "Zohny" "El" "Eguchi" "lobular +other" "+other"
    "wild type/variant" "the wild types normal (G-G) 234 bp" "SSCP" "ACEView"
    "GeneLoc" "NBCI" "3+high" "ER +" "= 0.009" "P = 0.02" "serotype"
    "demonstrated not only CNS penetrance" "fluoroethylamide" "ethylamide"
    "Ghosh" "Satoh" "Boettler" "TARBP" "Keizman" "ARE-like" "Marzec"
    "collegues" "Ryu" "GAGCAAAA" "SOD1G93A" "Holmström" "factor-erythroid 2-"
    "postmortem" "sALS" "C/A" "AOPP" "χ  2" "μ mol/L" "inksr2" "Cyper"
    "puncta-like" "ORAI1-3" "andksr2" "CRAC" "Tg-" "sarco" "KSRs" "shKSR"
    "F / F" "S4B" "ER–" "ALDH1A1expression" "ALDH1A1siRNA" "ofALDH1A1"
    "57.61±1.29%" "ALDH1A1 siRNA" "LASC" "stemcell" "ALDH1A1 expression"
    "formulti" "LASCs" "anti-proliferation" "μg/L" "p38i-" "co-injected" "p38i"
    "mammoplasty (NMF)" "Karnoub" "Finak" "lucIL6" "lucGAP" "lucGMCSF" "shp38"
    "shSCR" "p38MAPK’s" "senesce" "+ 1" "Δ/" "both in vitro soft agar"
    "crosstides" "pS477/pT479" "Akt2-pS474" "Akt2-pS478" "pS473" "S477D/T479E"
    "Akt-pS473" "pT479" "pS477" "RXL" "S477/T479" "pT308" "and 3+" "Ramanathan"
    "the v-Ki-ras2 Kirsten rat sarcoma viral oncogene homolog ( KRAS )"
    "homolog ( KRAS )" "Kirsten" "v" "contemporary oncology" "= 0.033" "1+"
    "≥10" "∼40%" "= 0" "XJ" "Milleron" "Hsu" "integrators"
    "physiology/pathophysiology" "heatstress" "thermo" "parafilm"
    "adequate hypothermia" "hypothermia" "ΔΨ" "48–72 h" "± 0.5" "2 h" ".213-1G"
    ".5277+1G" ".5074+1G" ".547+14delG" "5278−14C" "4987−21G" "4676−20A"
    ".670+16G" ".5075−1G" ".4185+1G" "302−15C" ".213−1G" ".80+1G"
    "at least two different algorithms" "samples/lymphoblastoid" "LSECs"
    "sinusoids" "chimerism" "Pdgfrs" "corrrelates" "injuredPdgfrα"
    "picrosirius" "inPdgfrα" "-injectedPdgfrα" "injectedPdgfrα" "WT/nGFP"
    "Pdgfr" "Stellate" "un" "tetrachloride" "non-parenchymal" "non-tumor"
    "oxidative stress causes protein misfolding/damage" "misfolding/damage"
    "349-DPSTGE-354" "Matsumoto" "bafilomycin" "drusen" "αB" "125μg/ml" "v2/v3"
    "v1 and" "v2/3" "h-p62T1r" "r" "h-p62T2f" "h-p62T1f" "f" "variant1" "POS"
    "Bruch’s" "Bruch" "the retinal pigment epithelium (RPE)" "epithelium (RPE)"
    "=0" "5μg/ml" "Sergina" "TBCRC" "CTCs" "Zr" "MEH" "CEER" "immunoassay"
    "Frozen" "taxane/" "n = 3" "Ser 235/6" "GWAs" "Sudan" "rs5006884"
    "the Senegal S haplotype" "rs7482144" "YRI" "Nigeria" "Ibadan" "Yoruba"
    "AWK" "Kenya" "Webuye" "Luhya" "rs9389269" "Tanzanians" "Brazilians"
    "Lettre" "non-anemic" "rs9402686" "rs11886868" "rs9376090" "rs9494142"
    "rs28384513" "rs4671393" "atypical haplotype" "Benin" "Cameroonians" "VOC"
    "USD" "socio" "HbSC" "ie" "Douala" "Yaoundé" "CSSCD" "Saharan" "XmnI"
    "OR51B5/6" "QTL" "hematocrit" "exceptionally severe SCD sequelae"
    "sequelae" "annum" "biconcave" "the Senegal and Indian Arab haplotypes"
    "Arab" "PLINK" "Socio" "Cameroon" "HbSS" "C/T" "= 26" "= 2" "n  = 3" "= 21"
    "=  0.002" "= 0" "11p" "YW" "ZSL" "heterocomplex" "co-criterion"
    "amplification/overexpression" "genophenotype" "+++" "28/115" "=15" "12q"
    "diagnostic algorithms" "available karyotypes" "Africans" "12/160" "19/160"
    "LTFU" "g/dl" "/l" "WCC" "FBC" "multigene" "neurobiology" "cannabinoid"
    "opioid" "non-neuronal" "immunoreactivty" "OFC" "re-exposure" "operant"
    "neural circuitry" "Morris" "the basolateral amygdala" "amygdala" "mPFC"
    "Parkinson’s" "Parkinson" "allograft" "Easter" "genus" "VTA" "cannabinoids"
    "PI3K/AKT/mTORC1" "non-neuronal cells" "GABAergic synapses"
    "glutamatergic synapses" "fura-2-based" "GluN2A-" "GluN" "Iadecola" "Gallo"
    "non-expressing" "Fura" "fura" "calpain-1" "excitatory synapses" "synapses"
    "lifespans" "pg/mL" "n=1" "7b" "phosphosites" "masse" "Rosen" "V600E/K"
    "genomic/transcriptomic" "splicing/binding" "Pak" "MAP3kinase" "kinome"
    "bispecific Ec-LDP-Hr-AE" "EC-1" "mol/L"
    "the bispecific fusion protein Ec-LDP-Hr-AE" "shrunken"
    "bispecific fusion protein Ec-LDP-Hr-AE"
    "the bispecific energized fusion protein Ec-LDP-Hr-AE" "LDP-Hr-AE"
    "Ec-LDP-AE" "bispecific energized fusion protein Ec-LDP-Hr-AE" "MFIs" "AE"
    "Ec-LDP-Hr" "caner" "Ec" "Henan" "Ec-LDP-Hr-AE" "Hr" "μmol/L" "3 mg/kg"
    "CXCR1/2" "NeuroAIDS" "Formazan" "pBlue3" "the viral genome" "MGC"
    "HIV-1p24" "viral antigen HIV-1 p24" "HIV-1 p24" "-κB" "JRFL" "LTR"
    "an important neutrophil chemoattractant" "anti-retroviral" "n=760"
    "co-amplification" "=760" "WTSCRIB" "-trisphosphate" "trisphosphate"
    "RxRxxS/T" "Akt308" "SCRIBWT" "intravascular tumor emboli" "emboli"
    "P305L1" "Penetrance" "P305L2" "lo" "immunohistochemistry (IHC)"
    "Mesenchymal stem-like (MSL)" "four publically available datasets"
    "hSCRIBP305L" "LRR13" "Prol" "neuroepithelium"
    "the planar cell polarity protein VANGL1" "VANGL1" "axon"
    "the corneal epithelium" "neomorph" "HER2 +" "=0.06" "6/6" "Basal-like"
    "sensitizer" "co-purifying" "iPOND" "brighter" "CHK1i" "Smaller Z-scores"
    "Z-scores" "Z-score" "bulky DNA adducts" "Capetillo" "Fernandez"
    "the replication-associated DSBs" "oncology" "non-viability"
    "re-establishment" "shwon"
    "5,6-Dichloro-1-β-D-ribofuranosylbenzimidazole (DRB)" "HDQP" "Chitest"
    "a premature stop codon" "-4,5-dimethyl-3-thiophenecarboxylate" "NMDI14"
    "PTC 39" "Diego" "ChemBridge" "NMDI" "non-NMD" "NMDIs" "Ataluren" "EJC"
    "Duchenne muscular dystophy (DMD)" "dystophy"
    "premature termination codons" "non-functional" "24hrs" "DDX56"
    "re-introduced" "anti-invasive" "MDA-MB-231cells"
    "the highly invasive MDA-MB-231 cells" "eluate" "MDA-MB-231 cells" "Δp63RE"
    "TRANSFAC" "Δ400" "Two control regions located 2756–2868 bp" "~1.5-"
    "let-7i" "~3.5" "~ 10-fold" "~1.5" "PCGEM1" "ciRNA" "IVT"
    "available 5C datasets" "a typical enhancer" "clearer" "nucleases (ZNF)"
    "ZNF" "TALEN" "TALENs" "ISH" "oligodeoxynucleotide (ASO)"
    "oligodeoxynucleotide" "phosphorothioate" "halflife" "CRC/control" "RDA"
    "CCAT2" "CCAT1" "PRNCR1" "8q24" "eRNAs" "Enhancers" "CCAT1-L" "co-stained"
    "∼1.5" "mono-methylation" "3C" "diRNA" "DiRNA" "Ago2/diRNAs" "sRNA" "Sce"
    "clade" "DDRNAs" "thaliana" "sRNAs" "DiRNAs" "diRNAs" "2 h" "PXL" "WJS"
    "YML" "Du" "= 0.015" "P = 0.011" "karyotypes" "non-parametric"
    "the most recurrent breakpoint" "breakpoint" "chromosomal region 1p36"
    "ΔNp73:TAp73" "TAp73" "ΔNp73" "= 0.015" "= 0.532" "oligomerise" "siCtrl"
    "siMdm4" "PLISA" "Bp" "Calbiochem" "ATMi" "WTp53" "non-genotoxic"
    "epithelial-like" "glucorticoid" "poorest" "SB43152" "T-stage" "probesets"
    "GeneGo" "MET-like" "the normal intestinal epithelium" "χ2"
    "mesenchymal-like" "mimickers" "CTNNB1/LEF1" "CTNNB1/" "dot-like"
    "exocrine" "Franz" "squamoid" "=2" "Wnt/ CTNNB1" "11q22" "=25" "n =1" "=29"
    "n =27" "AG1478/haloperidol" "Talalay" "Chou" "siGNAI2s" "CMK3" "lox/+"
    "whereGtv" "neurosphere" "an isogenic hGFAP-Cre+" "hGFAP-Cre+" "cerebrum"
    "DRD2RR" "shDRD2" "non-treated" "10 mg/kg" "Nu/Nu" "1-3" "+1" "OI" "HIV+"
    "C/EBPγ" "p38β" "p38MAPK" "phosphoribosyl" "Plex" "~12-fold"
    "neuropathology" "nef/LTR" "progressors" "nonprogressors" "SBBC" "Sydney"
    "HAART" "MCMD" "p38 MAPK" "IKK-1" "± 2.9%" "Balko" "expression/activity"
    "+ICI" "+TAM" "TXY" "TAMR" "Non-silencing" "Anti-V5" "Phospho-ERK1/2"
    "the soluble αVβ3 ectodomain" "RGD-like" "IARGDWN" "Fo-Fc" "hFN10/B"
    "KGDWN" "barbourin/eptifibatide" "genu" "βTD" "F-strand" "SDL" "αV" "LM609"
    "H-bonds" "farthest" "Fc" "2h" "LIBS-1" "soluble wtFN10" "2+" "/Mg 2+"
    "barbourin" "RGDWN" "GRGDSPAS" "PRGDWNEG" "FN10" "agonism" "α7" "SyMBS"
    "gand" "li" "Mn" "ite" "etal-" "etal" "ectodomains" "heptapeptide"
    "monoclonal antibodies AP5" "AP5" "ites" "igand-" "igand" "wtFN10" "hFN10"
    "non-inhibitory" "binding/unbinding" "p=0.003" "IL-6/gp130/JAK"
    "chemokine-like" "c-Src-STAT3" "congeners" "Cxcr" "pY 705" "pY705" "BXB"
    "a STAT3-binding SIE-fragment" "STAT3-binding SIE-fragment" "SIE-fragment"
    "SIE" "c-Src-mediated" "MKC-1" "ENMD-1198" "Methoxyestradiol" "ENMD"
    "IL-6/" "NU/J" "PepMap 100" "5 μg/mL" "ets" "Fuchs" "ocular Behçet's"
    "Behçet" "9.41×10" "ets-1/rs10893872" "ets-1/rs1128334" "rs6864584"
    "rs57095329" "microRNA-146a" "*1104" "angiography (FFA)" "Fundus"
    "planitis" "fundus" "rs10893872" "2.75×10" "rs2910164" "MicroRNA-146a"
    "Methodology/Principal" "azadeoxycytidine" "effecter" "786-O+VHL"
    "RCC10+VHL" "physiopathology" "phospholiapse" "ug/mL" "nu/nu" "HIFα"
    "Forkhead box protein M1B" "retro" "non-degradable" "S347/S348"
    "β-TRCP1/CKIδ-mediated" "CKIδ-mediated" "S347A/S348A"
    "an evolutionally degenerate phospho-degron variant SSG" "SSG" "Degron"
    "degron" "DSGxxS" "further pinpointing CKIδ" "CKIδ" "Iδ" "TRCP" "β-TRCP1"
    "ENaC" "Carboxyl" "anti-Flag" "1+2" "cellulo" "cyclohexamide" "approx"
    "JQ1" "mSOCS3" "XChIP" "immnoprecipitate" "PolII" "PTEFb"
    "suppressor of cytokine signaling-3" "YLEK" "supro" "ϕKXe" "ClustalW"
    "mono-ubiquitin" "ed" "STAT3K49/87R" "lane 1" "hexamer" "Ni" "HA-ubi-K0"
    "anti-V5" "immunocomplex" "WCL" "ubi" "deubiquitin"
    "transcriptional activation/repression" "Ubiquitins" "TEFb"
    "Transcription-3" "Transducers" "STAT3  +" "Live/Dead" "IQ5" "μg/ μL"
    "anti- mouse" "STAT3 +" "phospholipase Cγ" "Cerebral ischaemia" "ischaemia"
    "different Alzheimer's" "post-mortem Alzheimer's" "mortem" "neocortex"
    "the Alzheimer's" "an Alzheimer's" "neurophysiology" "hydroxyvitamin"
    "hirsutism" "Hyperandrogenism" "hyperandrogenism" "gallate"
    "epigalocatechin" "metastasise" "Huntington's" "D-motif"
    "phospholipase Cγ1" "anisotropy" "VSM" "sertoli" "D-domain" "XFP"
    "extracellular signal-regulated kinase 1/2" "non-nuclear" "co-occurrence"
    "holo" "p53 S15-phosphorylation" "Tti1S828A" "hexasulfate" "IP6/7" "Tobin"
    "RRRADDSDDDDD" "-nitrobenzyl" "nitrobenzyl" "lbenzyl" "trifluoromethy"
    "Bassermann" "Tti1MC" "IP6Ks" "IP8" "isomer" "IP7" "monophosphates"
    "hydroxyls" "highly energetic diphosphate" "hNopp140"
    "exogenous inositol hexakisphosphate" "hexakisphosphate"
    "pentakisphosphate" "diphosphoinositol" "TTT" "PIKKs" "S1981"
    "non-hydrolyzable" "Rad3" "interstrand" "nucleases" "UBZ3" "co-depleting"
    "replication-associated DSBs" "Nitroquinoline" "Pari" "ΔBTB" "microfilter"
    "UVC" "photoproducts" "pKAP-1" "brac" "Tramtrack" "ZBTB"
    "ultraviolet (UV)-induced DNA adducts" "UBZ4" "6P" "& 2" "-OH"
    "phosphatidylinositides" "Monomeric p110s" "p110α/β" "BRD9" "at 5:1" "ΔNLS"
    "exogenous p85α" "Δ543-604" "AfCS" "PBAF" "ABD" "-hydroxyl" "p85α"
    "RacGTP/GDP" "EV" "YPet" "phenotye" "dendritc" "non-syndromic" "egion"
    "ilse-" "ilse" "neurites" "RacGDP/GTP" "re-expressed" "RacGTP"
    "GFP-WT-CNK2" "GFP-WT-" "P1m" "YIPm" "+3" "Cytohesin"
    "an almost equal stochiometry" "stochiometry" "RacGAP" "GIT1/2" "PAK3/4"
    "SAMD" "NG108" "VDSSS" "CSSSS" "ASSST" "Puc" "SBC" "0/19" "cyto"
    "non-ccRCC" "PRKRLKQ" "/94%" "Immunocytochemistry" "CGTG" "CACAG"
    "virtually all ccRCCs" "MacroH2A" "Roadkill" "Pintard" "S6 kinase1"
    "ccRCCs" "immunotherapies" "ccRCC" "Caspase 3/7" "14/14" "2 /5" "pHER2"
    "circumvent resistance/insensitivity" "Farhana" "ANGTL1" "shANGPTL1" "Kou"
    "TargetScanHuman" "transwells" "resistance/insensitivity" "peritumours"
    "a publically available dataset" "=0.07" "SKBR" "LR" "peritumour"
    "non-protein" "Newer" "ELISAs" "anti- proliferative" "SM" "paxilin" "Pils"
    "Sood" "Kohn" "histotype" "only serous histology" "limma" "romer"
    "Hochberg" "Benjamini" "KEGG" "BFDR " "ProbeIDs" "non-responder" "Murata"
    "FIGO" "pFAK" "TKK" "KMH" "APK" "KFW" "MKS" "AKB" "Janus-like"
    "another natural compound- cryptotanshinone" "cryptotanshinone" "Intra"
    "hepato" "PLC/PRF5" "around 24–36 h" "kcal" "around 4–6 h"
    "protein/enzymes" "indica" "Garcinia" "non-histone" "12 h" "non–receptor"
    "−299" "+6" "DZNep" "Re-ChIP" "COX-2/PGE 2"
    "co-RE1-silencing transcription factor" "Dnmts" "IPFs" "IPF" "mRNA/protein"
    "H3K27" "arginase-1" "Monocytic MDSC" "similarly immunosuppressive ex vivo"
    "KCKO" "KCM" "Mitchem" "MDSC" "p  = 0.02" "EpCAM +" "CD 14 +" "5 × 10"
    "Δ C" "mg/ml " "× 10" "eight-week-old" "= 5" "N  = 4" "CD14 +" "8q24.13"
    "6p25.1" "quicker" "focal CNAS" "CNAS" "20p12.1" "8q24.21" "17q22"
    "17q24.3" "6p25.1 ( CDYL )" "CDYL" "22q" "18q11.2" "CTAGE" "1/18" "11/33"
    "18q (11/33, 33% Vs 1/18, 6%; p = 0.04) predominantly encompassing 18q21.2"
    "encompassing 18q21.2" "18q21.2" "the focal or whole length subsets" "17q"
    "6p" "SiDCoN" "13q" "and 1p" "8p" "17p" "cnLOH" "18q"
    "minimal CIN-affected genomes" "wt/MSS" "wild type/MSS" "mutant/MSI"
    "mutant/MSS" "CytoSNP" "p = 0.02" "≥20" "Rundle" "calvaria" "Krause" "aP"
    "toluidine" "S/BS" "qCT" "-α-mediated" "50 mg/kg" "evirolimus"
    "non-responders" "pS6rp" "≥ 10" "PI3K/AKT/mTOR" "SACO" "expresser" "FASL"
    "Smirnov" "Kolmogorov" "TGAYTCA" "MEME" "Solexa/Illumina" "Wnt/CTNNB1"
    "NCBI36/hg18" "p  =  1" "Wnt/" "isoenzymes" "ARGINAID" "Yatabe" "bule"
    "HDF" "phosphoinositol" "tissues/cells" "mg/L" "Alan" "pGEX" "Roma"
    "Sapienza" "Tripodi" "μ mol/l" "and 3C" "EBNA" "the only DUSP5 pseudogene"
    "teno" "leukemia/lymphoma" "pseudogenes" "ERVK_1q42.13" "ERVK" "_1q42.13"
    "RetroSearch" "retroviruses (ERV)" "ERV" "chemo-"
    "the pro-apoptotic factor B cell leukemia/lymphoma 2-like" "2-like"
    "DUSP5P1/DUSP5" "DUSP5P1" "pseudogene" "Hodgkin's"
    "the chemoresistant Hodgkin's" "JHH" "LHC" "PCC" "EYC" "CKH" "MHT" "LCL"
    "Taiwanese" "3p14.2" "9p21" "17p13" "3p21" "an intergenic region in 1q41"
    "in 1q41" "rs9316119" "rs11761619" "baculoviral IAP repeat-containing 2/3"
    "≥18%" "rs1700874" "breakpoints" "7p21.1" "rs10248565" "CNVs" "CNV"
    "Taiwan" "± 0.5" "non-smoking" "JXY" "TSF" "EJW" "PYP" "JNZ" "JXZ" "LCC"
    "LYC" "XZ" "KLZ" "YR" "sarcoma viral oncogene homolog (SRC)"
    "homolog (SRC)" "Seike" "Masahiro" "Adam" "acneiform" "Havana" "subacute"
    "an important oncomiR" "oncomiR" "lenti-AS-566" "Lenti-AS-566" "miRNA-128b"
    "non-small-cell" "G 0 /G 1" "proenzyme" "interstitium"
    "the proximal and distal tubules" "the proximal tubules"
    "The distal tubules" "tubules" "mesangium" "perindopril"
    "survival/apoptosis" "glomeruli" "Oxford"
    "immunoglobulin A (IgA) glomerulonephritis (GN)" "glomerulonephritis (GN)"
    "glomerulonephritis" "= 0.044" "synapse" "orthologue" "regrowth"
    "AKAP450/3643-3908" "AKAP450/3315-3496" "S7A" "AKAP450/159-463"
    "medial cisternae" "cisternae" "δCT-EGFP" "CK1ε" "Casein kinase 1δ" "IFT"
    "Gruber" "Meckel" "Biedl" "Bardet" "Ras-like" "centrosomal CK1δ"
    "mouse inner medullary collecting duct cells-3" "cells-3" "/D" "48–72 h"
    "7B" "S5A" "CK1δ" "stem/progenitor" "HIC-1"
    "the particularly aggressive BLBC subtype" "Royer" "instill" "pMEK"
    "Breast Cancer Online algorithm" "GOBO" "co-injection" "NOD/SCID"
    "DCIS-like" "BLBCs" "AcH3" "H16N2" "re-passaged" "mammosphere"
    "stem/progenitor-like" "IDC" "BLBC" "the normal mammary 184hTERT" "HTRZ"
    "HTRY" "pYB-1 S102" "p = 1" "ER-negative" "~25%" "CD44+" "re-seeded"
    "an aggressive PCa subtype" "TGTGGT" "Kendall" "histocore" "histoscores"
    "particularly strong synergism" "clearest" "200-kb" "co-ordinates" "Refseq"
    "nearest" "ARORs" "co-immunofluorescence" "ADPC" "dox" "osteoblasts" "RUNX"
    "histoscore" "co-occupied" "=0.011" "p =0.003" "co-stimulation" "DSBs"
    "p-H3S10" "mitosis-like" "mitotic co-localization" "H3S10" "non-isogenic"
    "SRF 2Gy" "several-week" "unresponsiveness"
    "an unexpected mitosis-like co-localization" "DSB" "=0.02"
    "approximately 40% ( xref ) at 5 μmol/l" "cPARP" "+R" "timepoints"
    "therapy/prevention" "imidazole" "nmol/l" "μmol/l" "GWARJD07" "GWARJD14"
    "GWARJD22" "PolarScreen" "CRPCa" "GWARJD10" "DCFH" "Gaussia" "N = 4"
    "anti-Rabbit" "anti-Mouse" "EC 50" "superoxides" "MAGIC" "rs9933309"
    "rs2279008" "Dutch" "Spanish" "rs11667918" "Celiac" "celiac" "hematology"
    "HMIP" "rs9399137" "rs2230194" "rs10908496" "rs10908495"
    "only two common haplotypes" "PolyPhen" "rs6684514" "nonconcordance" "≥7"
    "≥6.5%" "NCGM" "NHAPC" "SiMES" "Malay" "SCES" "the raw HbA 1c" "PVE"
    "JPT+CHB" "9q31.2" "rs540078" "rs174570"
    "Hsp70 subfamily B suppressor 1-like protein/v-myb avian myeloblastosis viral oncogene homolog"
    "TaiChi" "rs6474359" "rs16926246" "rs7747752" "rs7772603" "JPT" "CEU"
    "HapMap" "rs552976" "rs3755157" "G6PC2/ABCB11" "rs4737009" "G6PC2/"
    "= 5× 10" "KARE" "AGEN" "erythrocytes" "HbA 1c" "mmol/L" "= 21"
    "cardiac Z-lines ZASP" "Cypher/ZASP" "LTCC" "SUMO-2/3" "Duchenne"
    "Huntington’s" "Huntington" "ZASP6_A165V" "Z-lines" "Koff" "Leung" "seq"
    "3c" "pcDNA3" "anti-Histidine" "immunocomplexes" "ZASP6_A171T" "pA171T"
    "pA147T" "pA165V" "_A147T" "ZASP6_K136M" "deletants" "EMBL" "ZM1"
    "ZASP1_S189L" "_S189L" "_S196L" "LVCN" "_A165V" "Diff" "Coeff" "_K136M"
    "_A171T" "_D117N" "Belgrano" "A171T" "premyofibril" "co-localisation"
    "ZASP4" "ZASP6" "ZASP2" "ZASP8" "ZASP5" "ZASP7" "ZASP 8" "ZASP1" "ZASP3"
    "RPKM" "Cufflinks" "BLASTP" "AK294696" "BAG57855.1" "Genbank" "ZASP"
    "UniProtKB" "hCLIM" "MFM" "MFMs" "Zaspopathy" "non-compaction" "Zasp66"
    "Zasp52" "respectively sixteen and seventeen exons" "Z-band"
    "10q22.3-10q23.2" "zaspopathy" "A165V" "left ventricular non-compaction"
    "Anti-mouse" "Anti-FLAG" "non-muscle" "co-localization" "presence/absence"
    "4DGP" "Egger's" "Biologicals" "Novus" "Eom" "Woon" "Dae" "Kim" "Seung"
    "Hye" "Hoon" "Eastern Asian" "1.318–1.725" "Biomedicine" "MEDLINE"
    "factor-1" "= 0.009" "≥50" "T 1 and" "GWAMA" "LocusZoom" "*13" "Caudle"
    "OMIM" "MutationTaster" "PhyloP" "Polyphen" "HiTox" "Lo" "Tox"
    "minimised AIC incorporated rs2741171" "AIC" "VNTRand" "p=1" "=0.19"
    "=0.95" "hfsquant" "rs2741171" "quant" "G-allele" "p=5.28×10" "ENSOF1"
    "rs7548189/rs120222243" "*2A" "=2.55×10" "diarrhoeaquant" "globalquant"
    "rs7548189" "tagSNP" "chr1:97 " "rs76387818" "A-allele" "p=4.31×10"
    "capecitabine/5-FU" "tagSNPs" "homogeneous datasets"
    "capecitabine±bevacizumab" "QUASAR2" "2R/3R" "thromboctytopaenia"
    "neutropaenia" "HFS" "bolus" "Xeloda" "VNTR" "rs2612091" "rs12132152"
    "rs12022243" "=0.0021" "non-Caucasian" "mg/m 2" "genes/proteins" "=5"
    "±0.5" "NCBInr" "Boston" "MASCOT" "centroid" "electrospray" "PLGS"
    "ProteinLynx" "Milford" "MassLynx" "hexapole" "quadrupole"
    "a Q-TOF Ultima Global mass spectrometer" "Manchester" "Micromass"
    "spectrometer" "Ultima" "Eschborn" "CapLC" "Emsdetten" "Packings" "pepMap"
    "nano" "uniEquip" "UNIVAPO" "colloidal Coomassie" "Karlsruhe" "Roth" "Carl"
    "Leipzig" "Kapelan" "Hyperfilm" "semidry" "difluoride" "polyvinylidene"
    "MEM" "Opti" "Na" "Laemmli" "Goettingen" "Seq" "Dynabeads" "dynabeads"
    "rpm" "Lysis" "Berlin" "Biochrome" "Nuemberecht" "Sarstedt" "Braunschweig"
    "DSMZ" "Austin" "Sarbassove" "Rockford" "Colbe" "Steinheim" "AMBIC"
    "ammonium" "Mannheim" "Darmstadt" "Applichem" "Munich" "Montgomery"
    "Bethyl" "Schwalbach" "OADH" "hnRNPs" "GeneMANIA" "UniProt"
    "a vesicular trafficking protein co-localized" "PIKK" "lymphoblasts"
    "heterogeneous nuclear ribonucleoproteins A2/B1" "A2/B1" "glycosyl"
    "-domain-containing" "Ets1•Ets1" "•SRE" "Pax5•Ets1" "Runx1•Ets1•TCRα"
    "constitutively active CaMKIIα" "TCR α" "auto-inhibition" "Runx1•Ets1"
    "•CBFβ•TCRα" "Runx" "duplexes" "Goetz" "TCRα" "•Pax5•DNA" "HI1" "HI2"
    "•DNA" "EID•Ets1" "EID" "•TCRα" "bipyramid" "•Ets1" "GGATGTGG"
    "co-occupancy" "IRM" "Ets1•Runx1" "•Runx1" "12 h" "auto-" "/p53DBD" "L2/α1"
    "ZDOCK" "α5/6" "α3/4" "α1/2" "N- 1" "crosspeaks" "HSQC" "N-labeled"
    "p53DBD" "atypical PKCζ/ζ" "pGIPZ" "PC-3/shRNA" "PC-3/Vector"
    "SW620/vector" "SW620/Vector" "non-targeting" "pLKO" "pPAK1" "muscularis"
    "adenomatous polyposis coli (APC)" "PC-3" "~ 50%" "24 hrs" "year-old" "Qiu"
    "accordant" "Liu" "1.07-1.54" "1.05-1.53" "1.09-1.75" "Arg/Arg" "1.04-1.31"
    "All chi-squared P -values" "3-kb-long" "codon 31" "_000389.3:c" "codon31"
    "6p21" "= 15" "χ 2" "≤ 0.05" "Inclusion/Exclusion" "CD279" "Crohn’s"
    "Crohn" "IL-17 contributes" "IL-17contributes" "Pseudomonasaeruginosa"
    "Chlamydophilapneumoniae" "Mycoplasmapneumoniae" "inflammaton" "CD4+CD62L"
    "anti-tuberculosis" "CD3+PD-1+" "Anti-tuberculosis" "pg/ml" "PD-1+" "CD3+"
    "CD4+pSTAT3+" "SCOS3" "MFI" "H37Rv" "CD14+" "PPD+" "= 0.02" "= 0.002"
    "prion-like" "Hou" "proteosome" "co-relate" "Arnold" "anti-FLAG" "4hpi"
    "Co-IP" "pcD-NSP1ΔIRF3BD" "pcD-NSP1-N100" "pcD-NSP1-C395" "ΔIRF3BD" "Fgure"
    "as 2hpi" "pcD-NSP1-OSU" "pppdsRNA" "EW" "A5-13" "A5-16"
    "RV namely porcine OSU" "KU" "OSU" "viral titer" "realtime" "Barro"
    "non-enveloped" "Sen" "Coxsackievirus" "Sendai" "Newcastle"
    "Co- immunoprecipitation" "CO-IP" "mean±standard" "5D" "Toll-like"
    "1.9ug/ml" "Nutilins" "Vassilev" "Petitjean" "Audrey" "Mori" "Akio" "Ito"
    "capasaicin" "and 1B" "Latin" "2 hrs" "A/G" "parainfluenza" "non–raft"
    "JEV-" "JEV" "the viral inoculums" "inoculums" "Polyprotein" "MβCD" "h"
    "anddsRNAin" "NS3pro" "NS2BNS3pro" "viral RNA replication HMEC-1 cells"
    "HMEC-1 cells" "non-caveolar" "Non-caveolar" "reggie"
    "glycerophospholipids" "capsid" "DENVs"
    "caveolar cholesterol-rich lipid raft microdomains" "polyprotein"
    "cyclodextrin" "HMEC-1cells" "NS2B" "non-structural" "DENV" "microdomains"
    "TJW" "the membrane distal ones" "phosphopeptides" "lentiviral shRNA"
    "ITSM1+ITSM2" "ITSM3+ITSM4" "ITSM3" "FCRγIIb" "phosphopeptide" "ADYDTI"
    "TxYxxV" "ITSM" "ITSM1" "ITSM2" "plasmon" "YxxV" "ITSMs" "γ1" "LC-MS/MS"
    "= 23" "= 0.003" "computational intensiveness" "intensiveness"
    "only seven common polymorphisms" "Saudi" "Mutairi" "Roberts" "rs1760944"
    "rs3218536" "rs1799782" "1.07–1.51" "C-G-G-C-G-G-G" "Sim  " "0.05/7"
    "rs1800975" "Bonferroni" "= 0.026" "A11_G12insGA" "G10_A11insG"
    "poorly differentiated mucinous histology" "Codon" "_G12insGA"
    "_34insGGAGCT:p" "#833" "_A11insG" "_31insGGA" "#286" "splenic flexure"
    "flexure" "Hong" "~80%" "SUSARs" "McIntyre" "co-workers" "Lui" "colostomy"
    "co-infection" "radiochemotherapy" "Nigro" "SCAC"
    "3-(4-chlorophenyl) 1-(1,1-dimethylethyl)-1 H -pyrazolo(3,4- d )pyrimidin-4-amine"
    "-pyrazolo" "pyrazolo" "dimethylethyl" "chlorophenyl" "TNBCs"
    "the triple-negative subset" "Clinicaltrials" "ER-positive" "#D"
    "the public datasets" "a larger dataset" "UTSW"
    "a validated public software platform TNBCtype" "TNBCtype"
    "publicly available breast cancer expression array datasets" "TBNCs" "TBNC"
    "Htb126" "scratch/wound" "nonresponders" "recurrent/refractory"
    "granuloma-like" "ofBRAFV600E" "mitoses" "inBRAFV600E" "ofBRAF600E" "wk"
    "LCH075" "LCH067" "plasmacytoid" "available aliquots" "LCH068"
    "subsequent histology" "Dorfman" "Rosai" "XIIIa" "transcriptome"
    "relapse/recurrence" "insipidus" "gDNA" "yr" "Texas" "Chester" "Erdheim"
    "Langerhans" "Birbeck" "Siwe" "curettage" "LCH-like" "iQ5" "= 17" "∼5%"
    "C–type" "CD34 +" "MiR-99a" "miR-99a-mediated" "Targetscan" "miR-99b"
    "onco-" "onco" "p-S6K1" "miR-99a" "Emory" "website" "CancerQuest" "Il"
    "del-18p11" "5aza" "del-18q11.2" "#28" "#7" "amp-1q23.3" "18p11.2"
    "oligonucleotidique" "methylome" "France" "Ozyme" "astroctyes" "4/5"
    "French" "MeDIP" "Astro#40" "methylcytosine" "Astro" "#40" "24 h"
    "non-cancerous" "6q21" "1p" "WF" "WY" "ZY" "Follicle" "microadenomas"
    "Halder" "invasive and noninvasive NFPAs" "RII" "NFPA"
    "invasive macroadenomas" "macroadenomas" "subarachnoid" "noninvasive ones"
    "noninvasive NFPAs" "invasive NFPAs" "NFPAs" "mean ± standard" "± 10" "ITG"
    "3G3-" "pMAPK" "HmIgG" "nmol/L" "for 3G3" "York" "ImClone"
    "immunoglobulin-like" "Greater" "3G3" "= 0.011" "cells/mL" "DTIC"
    "Micrometastases" "small cell lung cancer prophylactic WBRT" "WBRT" "H&E"
    "craniotomy" "histologies" "n=27" "MGTMT" "intracardiac"
    "231-BR-EGFP-vector" "micrometastases" "necropsy"
    "-methylguanine-DNA methyltransferase" "stereotactic radiosurgery"
    "neurosurgery" "radiosurgery" "days/week"
    "-methylguanine-DNA methyltransferase (MGMT)"
    "triple negative 231-BR-EGFP sublines" "=27" "MLD-STZ-induced" "Culin3"
    "patho" "siScr" "littermate" "ipITT" "fat/" "mg/dl" "fl/fl" "pMst1"
    "re-established" "MLD-STZ-treated" "MLD-STZ- treated" "MLD-STZ-injected"
    "alpha-cells" "alpha-cell" "MLD-STZ-" "non-MLD-STZ-treated" "ipGTT" "IPITT"
    "IPGTT" "littermates" "shMST1" "shScr" "glucolipo" "de-stabilization"
    "ubiquitination/degradation" "Netphos" "autoradiography"
    "transcriptional/translational"
    "the critical beta-cell transcription factor pancreatic duodenal homeobox-1"
    "homeobox-1" "GSIS" "PMST1 and" "pMST1" "db/db" "Surwit" "pMST"
    "normogylcemia" "20-like" "reticulum" "T2D" "T1D" "normoglycemia" "5 μg/ml"
    "2.5:1" "AKT1 and" "ischemia/ reperfusion" "TCR/CD28" "Ser 235/236"
    "peripheral T cell lymphopenia" "the effector or effector memory subsets"
    "mature T and B cell subsets" "FoxO1/3" "Ser 240/244" "shTSC1" "Hz"
    "typical readouts" "eff" "allo" "HLA-A2" "Barr" "Epstein" "Ag" "Naïve"
    "SIFT" "MUpro" "Pmut" "Migone" "LOD" "Exome" "mature T cell subsets"
    "thymocytes" "lymphangioleiomyomas" "peripheral CD4 and CD8 T cell subsets"
    "n = 4" "CD8 +" "HLA 8.1" "rs2736340" "*0803" "ARS" "synthetases" "*0301"
    "the HLA8.1 ancestral haplotype" "HLA8.1" "MSAs" "viz" "non-HLA" "TWMU"
    "anti-Jo-1" "ILD" "Pcorr  " "C8orf13" "8p23–p22" "GWAS" "British" "IIMs"
    "IIM" "rs13277113 A" "rs13277113A" "rs13277113" "C8orf13–BLK" "dbSNP"
    "polymyositis/dermatomyositis" "Th17" "5×10" "= 0.033" "95% CIs" "= 0.011"
    "cardia" "Harris" "A/A" "G/T" "two associated polymorphisms" "SNP4" "SNP5"
    "GCAA" "AGCAA" "multilocus" "SNP4-5" "disequilibria" "Haplotypes"
    "rs2279244" "rs1130233" "rs11202592" "rs1042522" "= 1" "C/C" "=  1"
    "95% CI  " "=  3" "Rapalog" "A1459P" "mTORs" "non-recurrent" "T1977S"
    "T1977" "ICGC" "tuberous sclerosis 1/2" "neurofibromin 1/2"
    "publicly available tumor genome" "W/V" "TSC1/2" "=0.38" "micelles" "o"
    "radiusR" "Föster" "demonstates" "the dimeric fraction ( f ) times Ẽ"
    "the calculated dimeric fraction ( f ) times Ẽ" "fluorophores" "Ẽ" "Wolber"
    "SEN" "eYFP" "thinner" "overactivate" "QI" "Förster" "~ 70%" "~ 80%" "= 1"
    "β A" "C/EBPs" "MEFS" "C/EBPδ" "ΔAP1" "F/R" "Bnz" "C/EBP" "VECs" "CNBD"
    "uanine" "co-ordinated" "regional cerebral edema" "edema" "fexaramine"
    "A/M" "RBMECs" "cerebral microvessels" "the Evan’s" "RBMEC"
    "continuous cerebral microvessels" "increased Evan’s" "Evan" "reabsorb"
    "gallbladder" "BBB" "microvessel" "biphenyl" "Organochlorine"
    "17α-hydroxylase" "Written" "PFOS/PFOA" "disrupters" "MVLN" "PFHxS"
    "Finnish" "A1/A1" "cathechol" "PFDA" "PFDoA" "Arctic Inuit" "rs743572"
    "organochlorine" "Greenlandic Inuit" "polymorphism (SNP)" "rs10046"
    "catalyses" "17α-hydroxylation" "methoxyestradiol" "methoxy"
    "procarcinogen" "amines" "PHAHs" "procarcinogens" "4-OH-E2" "2-OH-E2"
    "catalyse" "oestrogen" "Canada" "Greenland" "oestrogens" "OCPs"
    "sulfonate (PFOS)" "PFOS" "sulfonate" "TTTA" "POPs" "POP" "Inuit" "= 0.038"
    "= 0.054" "≤ 0.05" "Chemoradiotherapy" "the endoscopic biopsy" "= 0.06"
    "radioresistance" "Ku" "3-year" "clinico" "Clinico" "adherens"
    "the tumour suppressor adenomatous polyposis coli (APC)" "coli (APC)" "Gy"
    "Preoperative chemoradiotherapy (CRT)" "chemoradiotherapy" "= 0.02" "JSF-V"
    "haplotypes" "metaloproteinases" "Kallel" "Long / Long" "Buerger"
    "Americans" "Short/Long" "recessiveness" "codominance" "biobank"
    "subcohort" "Short/Short" "hort/Long" "Long/Long" "REMARK" "≥ 20" "= 21"
    "p = 0.003" "ΔΔCt" "95% CI " "YYF" "non-BRCA1-mutated" "non-mutated"
    "primary non-mutated" "= 3" "EEH" "H1993" "EGL5" "nonexpressors"
    "invariant" "homeodomain" "adeno" "PA8" "Non-specific" "24 h" "5 × 10"
    "pcSathmin" "pcDNA3.1" "anti-tumour" "thiazole" "pcDNA3.1-FOXM1"
    "palitaxel" "CIAP" "palitaxol" "pcDNA" "mg/l" "co-treated" "24 hrs" "NYC"
    "QW" "tryrosine" "WPDF" "WPDH" "proteins/peptides" "Q-loop" "–OH" "OH"
    "Waals" "der" "αC" "αD" "helices" "βB" "βA" "pNPP" "cysteinyl" "and 2SHP"
    "a smaller rmsd" "rmsd" "2SHP" "Hof" "facial dysmorphism" "penetrant"
    "dysmorphism" "phosphotyrosyl" "genitalia" "Noonan" "P-loops" "Cα" "~50%"
    "KUW" "GI" "mammoplasties" "levels at least two-fold greater" "ATCC"
    "Pennsylvania" "the orthologous Akt1m" "a unique epithelial subtype"
    "nonpregnant" "AKT1/3" "orthologous AKT1m" "GenBank" "Akt1m" "AKT1m"
    "non-redundant" "non-tumorigenic" "Activator Protein-1" "G/A" "Connell"
    "F1 and" "midchain" "FnPBA" "intradomain" "strand/strand"
    "S. aureus infective endocarditis" "analyte" "ITC" "TheK"
    "FgγC-bound rFnBPA" "FgγC" "A·C" "·D" "·C" "·FgγC" "theseK"
    "rFnBPA (189–505) ( xref  A ) orrFnBPA" "orrFnBPA" "theK" "rFnBPA" "FgD"
    "FnBPA-1" "FnBR" "anti-parallel" "At least six FnBRs" "FnBRs" "γA"
    "g/liter" "Aα" "heterotrimers" "Clfa" "_B" "Pfam" "epidermidis" "SdrG"
    "subdomains" "N2N3" "Infective endocarditis" "bacteraemia" "endocardium"
    "infective endocarditis" "endocarditis" "thrombi" "subdomain" "Fn" "Fg"
    "FnBPA" "aureus" "Ig-like" "active holoenzymes" "holoenzymes"
    "constitutively active GSK3βCA" "mTORKinibs" "mTORCs" "EKVX" "S21/9"
    "a 3-day" "GSK3βCA" "mTORKinib" "= 5" "ribose-"
    "dihydrodicholorofluorescein" "qVD" "PBA" "phenyl" "cochaperone" "ribose"
    "non-diabetic" "CCD-18Co" "executer" "ISosfson" "Kaul" "Utomo"
    "-TYG-tagged" "p53−/−" "p53+/+" "UVB" "co-upregulation" "co-fractionation"
    "co-sedimentation" "UBXN2C" "co-sedimented" "UBXD" "non-transcriptional"
    "Carriere" "-bisphosphate" "bisphosphate" "methyladenine" "aminoethyl"
    "Fluo-3/AM" "70KD" "shAKT" "ADCK3" "DiscoveRx" "/human"
    "2-pyrimidyl-5-amidothiazole" "phosphorylation/dephosphorylation" "=1 "
    "1 and" "survival appeared greater" "BCL2−" "BCL" "MYC+" "non-GC" "=0.068"
    "=0.035" "newer immunohistochemical algorithms" "Choi" "Hans" "non-Burkitt"
    "13/27" "5/7" "7/14" "6/55" "blastoid" "ASCT" "at least subset" "27/198"
    "immunochemotherapy" "SWOG" "BCLU" "Burkitt" "non-Hodgkin" "Non-Hodgkin"
    "Sridhar Ramaswamy and Dennis C Sgroi" "Sgroi" "Dennis" "Ramaswamy"
    "co-authors" "Chuanwei" "Wittner" "McMullin" "Ryan" "extant classifiers"
    "classifiers" "goes" "Garnett" "Neve" "AZD" "BRCA1/2-"
    "the sporadic ER-/HER2- subtype" "EMC286/MSK82" "EMC286" "/MSK82" "EMC192"
    "NKI295" "sporadic breast cancer subtypes" "noncarriers" "ER-" "GeneChip"
    "X3P" "metagene" "BRCA1_OVEREXP_DN" "_OVEREXP" "Frameshift" "_DN" "MSigDB"
    "GeneChips" "non-patient-matched" "neoadjuvant" "Deficient-Like" "BD"
    "anti-correlates" "HER2+" "= 1" "5 × 10" "= 0.033" "= 4" "= 15" "= 5"
    "= 19" "BRCA1/2" "ER + " "KT-16" "T/C" "In/Out" "CHLA-10" "CHLA"
    "the PPTP’s" "rhabdoid" "1-methyl-2-pyrrolidinone (NMP)" "Intellikine"
    "StatXact" "glioblastoams" "multiwell" "DIMSCAN" "24/31" "x" "PPTP"
    "mg/kg/day" "Sonia" "Struhl" "Kevin" "Manley" "Jim" "ANRIL" "hESCS"
    "retroviruses" "robust re-expression" "attractive anti-cancer" "ZFP" "hESC"
    "a representative subset" "CRT0066101" "LxRxxS" "hESCs" "CIMP-1" "DOI"
    "Serra" "eLife" "co–repressor" "≤0.01" "≤0.05" "Mackow" "Matthys" "Alff"
    "Gn" "Narayanan" "Zust" "Wathelet" "Bromberg" "Kopecky" "Kamitani" "PRRSV"
    "Kattenhorn" "Kasteren" "EAV" "arterivirus" "MHV" "coronaviruses" "NL63"
    "Kayagaki" "Coornaert" "Zeng" "Saitoh" "CoV" "Zuylen" "Ratia" "Lindner"
    "Ploegh" "Isaacson" "Bhoj" "Poirier" "Bibeau" "Tanaka" "Shang" "Ouyang"
    "Huang" "PLP2" "Clementz" "Frieman" "Barretto" "Sulea" "papain-like"
    "Zielecki" "Netland" "Perlman" "Thiel" "Devaraj" "Marra" "Schindler"
    "ER/mitochondrial membrane" "Zhong" "Fitzgerald" "Oganesyan" "Cheng"
    "Fujita" "Yoneyama" "Pichlmair" "Hornung" "Akira" "Kawai" "PLpro"
    "co-transfection" "NSABP" "Cytoscape" "ISDB3008" "GSE3494" "Gyorffy"
    "GSE47561" "publicly available datasets" "DMFS" "DFS" "ER+" "P = 0.003"
    "= 0.038" "= 5" "one-half" "state-of-the-art" "catanin"
    "YAP-5SA-ΔC-expressing" "YAP-5SA-ΔC-" "similarly treated YAP-5SA"
    "constitutively active YAP-5SA" "ΔC" "YAP-5SA-" "YAP-5SA" "cYAP"
    "strong YAP IHC" "These IHC" "pYAP" "MST1/2" "EOCs" "= 0.002" "4-week"
    "= 15" "non-coated" "LATS1/2" "filiae" "R1-2" ".932delC" "#1-3" "#5" "FRB"
    "#3" "#1" "=1" "n=4" "nephrectomy" "exome" "rapalogs" "rapalog"
    "monotherapy" "Rapalogs" "# 4" "Cochlear histology" "heterozygouse" "Looij"
    "dBHL" "absent DPOAEs" "severe SNHL" "interpeak" "10p15" "dysplasia"
    "Non-syndromic" "SNHL" "kHz" "Behavioral audiometry" "ABRs" "brainstem"
    "DPOAEs" "audiometry" "synergistic anti-tumor" "tetraploid" "KRTS"
    "significate" "miR-582-5p" "miR-768-5p" "miR-582-3p" "Washington" "miR-1"
    "midline" "microRNA-34a" "notochord" "∼ 50%" "∼80%" "re-probed" "40X"
    "YAP1 have" "MACF" "Staubet" "Nallet" "Abnova" "tGFP" "KSYE" "α7-nAChR"
    "neurite" "nAChR" "Yu" "Dasgupta" "YAP1have" "herparansulphate" "nACHRs"
    "butanone" "pyridyl" "methylnitrosamino" "NNK" "nAChRs" "+ +" "pironetin"
    "Cdc20-Mad2-BubR1-Bub3-bound" "APC/C" "ΔTM" "MAPK14/SAPKp38α" "Bcl-xL#2"
    "*significant" "siRNABcl-xL#2" "de-condensation" "#4" "Ser49/62Ala"
    "siRNA#2-resistant" "co-location" "the mitotic cytosol and spindle midzone"
    "midzone" "telophase/cytokinesis" "screenings" "chromatids" "bi-" "BubR1-"
    "BubR" "non-homologous" "G 1 /S" "#2" "Weggen" "Marambaud" "Bai" "Davies"
    "Rickle" "Senf" "Dekker" "Perez" "vitagenes" "Calabrese" "Vitagenes"
    "basalis" "Xiang" "swe" "Benveniste" "Hu" "glia" "Mrak" "Petrova" "Levi"
    "Minghetti" "Badie" "Akiyama" "Yermakova" "sw" "Couturier" "Kotilinek"
    "Giovannini" "Cai" "Zheng" "Buxbaum" "VER155008" "Kaur" "Montine"
    "Hoozemans" "Blom" "Veerhuis" "Aisen" "Pasinetti" "Aβ" "Alzheimer’s" "κB"
    "pPAK2" "Siu" "Li" "Africa" "immunostainings" "pSer20PAK2" "= 0.002"
    "severalfold" "drawn" "PVETDS" "ELQTDG" "MyrPalm" "PREQDS" "MTISDS"
    "cis+trans/cis+trans" "-mGFP" "smoothen" "topologies" "RRRL"
    "homotrimerizes" "CD95R" "fibritin" "nonlinearities" "Fluorophore" "mGFP"
    "IETD" "procaspase-3" "observables" "protomer" "autocleavage" "intradimer"
    "heterotetramer" "prodomain" "switch-like" "BAs" "andFXR" "RGZ"
    "lipopolysaccharide" "andE2F1" "LXCXE" "heptad" "2+3" "SKO" "theSHP"
    "-dihydrocollidine" "inE2F1" "fibrotic/cirrhotic" "feedforward"
    "alcoholic liver fibrosis/cirrhosis" "fibrosis/cirrhosis" "stellate"
    "ofSHP" "STG" "inSHP" "fecal" "BA" "Sirius" "Picro" "Trichrome"
    "diethoxycarbonyl-1" "dihydrocollidine" "early growth response-1"
    "Co-expression" "Sertoli" "NFY" "theWT1" "delZ" "andWT1" "MutantWT1"
    "Knudson’s" "mutantWT1" "wt-" "+−" "Wilms3+−" "Wilms3++" "_Spindle"
    "_Chromosome" "++" "transcriptomes" "Luc" "GCR-alpha" "GCR" "Cycletest"
    "WST" "TGFBRII" "_TGF" "a comprehensive overview" "Cell cycle_The"
    "_initiation" "_The" "inPanel" "Venn" "_Role" "MetaCore" "PODXL1" "fc"
    "two biological replicates" "si" "Wilms2+exon5" "V432fsX87" "WAGR"
    "Romaniuk" "Weiss" "aptamers" "SELEX" "+KTS" "−KTS" "KTS" "Krüppel" "ZFs"
    "11p13" "Wilms3" "Wilms2" "frameshift/extension" "co-repressors"
    "non-responsive" "G1/S" "P -values" "Amerindian Zapotecos" "Zapotecos"
    "Zolezzi" "Mestizos" "Spain" "Barcelona" "Oncology" "Catalan" "SNPstats"
    "_10" "StepOne" "Wilmington" "NanoDrop" "Hilden" "Qiagen" "QIAamp"
    "≥ 140/90" "Mexico" "Durango" "Arg399Gln" "Vural" "399Gln" "Saadat"
    "Tadesse" "utero" "0.96–3.14" "rs861539" "rs25487" "SSBR" "multidomain"
    "rs13181" "19q13.3" "rs1130409" "hydroxyl" "phosphodiester" "14q11.2"
    "apurinic/apyrimidinic" "anti-oxidative" "mestizo"
    "group 3 ( XRCC3 ) Thr241Met (rs861539) polymorphisms" "Mexican" "XRCC"
    "= 0.048" "undertaken" "-omics" "omics" "Whitney" "=0.032" "REU" "Carlisle"
    "VigeneTech" "MicroVigene" "FFPE" "technical replicates"
    "phosphatidylinositide-3-kinase" "ColoPrint" "lymphadenectomy" "UICC"
    "UICC/AJCC" "S6RP" "phosphatidylinositide" "retinol" "signallosome"
    "prothymosine" "Fe" "RIRR" "ρ0" "SkQR1" "SkQ1" "pLCMV" "purimycin" "p46shc"
    "p52shc" "a lentiviral construct pLSLP" "pLSLP" "sublines" "Fenton"
    "organosulfur" "a shorter lifespan" "NOXs" "HyPer" "HDFs" "∼50%"
    "ARNO/cytohesins" "the most important cytohesin" "pIRS" "cytohesins/ARNO"
    "pShc" "Lipofectamine" "pEGFR" "Cytohesins" "ectodomain" "cytohesins"
    "cytohesin" "= 36" "mean ± standard" "T202/Y204" "S 5A" "reestablish"
    "actively growing tumor organoids" "PF271" "FAK1/2" "organoids" "organoid"
    "three unique shRNAs" "NME" "deeper" "Renilla" "FGFRα/FGFRβ" "morpholino"
    "IgII" "IgI" "IIIc" "monotherapies" "the orally available compound BGJ-398"
    "BGJ-398" "BGJ" "withdrawn" "S2C" "S2B" "S1C" "5 μg/ml" "BALB/c" "× 10"
    "BALB/C" "protein/mRNA" "Guillén" "CO-RMs" "biliverdin" "immunoregulators"
    "Fulton" "Pandy" "iCO" "activation/ROS" "TNF- α -stimulated RASFs" "Gö6976"
    "iCORM" "TNF- α -challenged RASFs" "CO-releasing" "carbonyl" "CO-RM2"
    "RASFs" "κ B" "μ g/mL" "μ L" "β II" "Gs α" "Arora" "outcompete" "22Rv1s"
    "unmet" "SGK1/2" "22Rv1 xenografts" "Biosystems" "shRNAmir" "TRIPZ" "Dox"
    "Corcept" "Dex" "non-castrated" "progressive CRPC" "newer"
    "dihydroepiandrosterone" "orteronel" "Huggins" "SGKI"
    "GR ( NR3C1 )-targeted shRNA" "CWR" "=0.009" "=0.038" "3-day" "bodyweight"
    "CSC-like" "coinduces" "stem cell-like" "FOLFIRINOX"
    "the typical duct-like" "frozen" "representative stainings" "stainings"
    "ovo" "calipers" "strong anti-inflammatory" "triepoxide"
    "Western blot analysis 48 and 72 hr" "wilfordii" "Tripterygium"
    "nonmalignant" "fibroblastoid" "PDA" "EMT-like" "Ki67 +" "= 1/" "&E"
    "week-old" "× 10" "/CD24 +" "CD44 +" "huperzine" "tieredScreen" "SPECS"
    "NPD" "ICI" "miravirsen" "algorithms" "mtEREs" "EREs"
    "two, three, or four valid ER-α LBD conformers" "non-binders" "DUD"
    "all the four valid conformers" "each valid ER-α LBD conformer" "offs"
    "conformer" "conformers" "RMSFs" "RMSD" "hsa-let-7b" "hsa-miR-30a"
    "miRanda" "miRWalk" "miRecords" "WEGO" "≥2.0" "DAVID" "HomoMINT" "HPRD"
    "BioGRID" "nt" "LBD" "TCM" "carboxyl" "Alzheimer's" "Alzheimer" "pullown"
    "Mdp3-ΔN" "pulldown" "Mdp3" "vacuole-like" "microvessels" "oligosacharides"
    "HASes" "vacuole" "HYAL" "adhesiveness" "HYALs" "HASs" "tubular-like"
    "CD44s" "vessel-like" "IQ" "v1-10" "microvasculature" "exome/genome"
    "Europeans" "Eastern Europe" "Germany" "Scandinavia"
    "these associated SNPs" "Poland" "Hashimoto's" "Hashimoto"
    "larger datasets" "autoimmune Addison's" "Korean" "rs7574865" "×10"
    "Remmers" "primary Sjögren's" "Sjögren" "rs4646536" "21OH+" "rs3802604"
    "rs10876993" "rs10931481" "rs4274624" "rs230532" "Haplotype" "rs4698861"
    "NF-κB1" "Europe" "polyendocrinopathy" "endocrinopathy" "Zealand" "Norway"
    "Swedish" "iPlex" "Autoimmune Addison's" "Addison" "CD8+" "= 4" "= 0.04"
    "= 0.0003" "95% CI 1" "P-values" "non-substrate" "oleic" "Gi" "Gs" "∼30%"
    "In fact all four subtypes" "17E 2" "BAEC" "downreglate" "endoperoxide"
    "streptozotocin-induced diabetic nephropathy" "melvonate" "non-SMAD"
    "the renal tubular epithelium" "UUO" "TGF-β1 addition" "pSMAD3"
    "TGF-β1addition" "renal obstructive nephropathy" "SMAD2/3" "FOX" "oxidases"
    "the tubular epithelium" "prominent co-induction" "Immunohistochemistry"
    "non-canonical" "Yki/Sd" "midgut" "homologs" "mammary epithelial subsets"
    "PPXY" "co-IP" "interactants" "TEADs" "KRT14+" "heterozygotes" "inWwtr1"
    "16-week" "homozygousWwtr1" "sparser" "ofWwtr1" "homozygotes" "andWwtr1"
    "both human and mouse mammary epithelia" "basal/MaSC"
    "Co-immunofluorescence" "lobules" "TDLUs" "Zhao" "nCounter" "mammospheres"
    "shTAZ" "shScram" "immunophenotype" "luminal-like" "Basal/ME"
    "basal/stem cells" "amplicons" "mammoplasty" "EpCAM+" "CD10+" "basal/ME"
    "orchestrators" "alveoli" "lumens" "ontogeny" "basal/myoepithelial"
    "the mammary epithelium" "ug/ml" "Non-adherent" "cerebellum" "enhancers"
    "Higgins" "non-lethal" "Masson’s" "Ashcroft" "trichrome" "Masson" "BALF"
    "OHdG" "Txnrd3" "bona" "lI" "IGV" "co-precipitated" "Illumina"
    "oxidative stress-induced upregulaiton" "ARE3-" "upregulaiton" "mARE4"
    "mARE3" "ARE4" "ARE3" "bps" "isotype-" "oversaturate" "Nrf2-" "Nrf"
    "dichloride" "-bipyridinium" "bipyridinium" "Kruppel-like" "P-value"
    "mg/Kg" "G/C" "≥ 50" "non-overlapping" "non-toxic" "pRBloss" "harn" "Coshi"
    "NCI" "aneuploid" "=0.079" "siWapl" "Suv4-20H2" "H4K20" "Caron" "Watrin"
    "Mannini" "co-operatively" "intrachromosome" "centromeres" "centromere"
    "co-localizes" "=300" "BirA*-CEP63" "Co-immunoprecipitation" "*-CEP63"
    "*-CCDC67" "orthologs" "the parental centriole" "procentriole" "non-PLK4"
    "NSAF" "centrioles" "CCDC67" "paralog" "centriole" "BioID" "co-localize"
    "iv" "PI3 kinase/Src" "adenylate" "VU" "U46619" "antiplatelet" "Weyrich"
    "diphosphate" "myristate" "complex-1" "thrombus" "μg " "w/v"
    "PI3 kinase/Akt" "endpoint" "phosphoflow" "the last measurable timepoint"
    "timepoint" "caliper" "pSTAT3" "120mg/kg" "Karpas" "JAK2V617F"
    "the recurrent 9p24.1 amplicon" "amplicon" "MLBCLs" "9p24"
    "an extensive immune/inflammatory cell" "Sternberg" "immunoglobulin" "EC50"
    "9p24.1/" "MLBCL" "9p" "Angulo" "HSCT" "histopathology" "Zhang"
    "mutations/Lynch syndrome" "neuroendocrine" "F2M" "F2P2’s" "ELISPOT"
    "Hodgkin" "F2P3’s" "F2P2" "F2P3" "lambda" "24-year-old" "nephro-" "nephro"
    "corticosteroid" "mediastinum" "lymphadenitis" "mg/dL" "36-year-old"
    "bulky adenopathy" "IVA" "adenopathy" "Pneumovax" "rubella"
    "18 months onward and initiated IVIG" "IVIG" "otitis" "naïve" "XL"
    "immunologists" "HIGM" "viremia" "lymphadenopathy" "lymphopenia" "1P"
    "Zillner" "E-box" "simplest" "BamHI" "non-matrix" "non-silenced"
    "isoschizomer" "MspI" "HpaII" "Non-silenced" "leakiness" "TGR-1" "DNaseI"
    "non-transcribed" "S/MARs" "intergenic spacers (IGS)" "IGS" "spacers"
    "rRNA" "spacer" "genic" "non-coding" "≤ 20" "non-methylated" "= 0.026"
    "P = 0.003" "multivitamin" "Nox" "NOX2ds" "peroxidases" "Heumüller"
    "bioavailabilty" "PxxP" "immuno" "exosome" "co-staining" "SHIV" "Tg"
    "Vybrant" "HCAEC" "homology-3" "which uses antiretrovirals" "dyslipidemia"
    "antiretrovirals" "co-cultures" "WU" "chao" "Meng" "CHANG" "ZHENG" "Rui"
    "HUANG" "yu" "Ruo" "hong" "HU" "Liang" "LI" "Juan" "TU" "qian" "Qian"
    "SMMC-7221" "SMMC" "autophagic vacuoles" "autophagosome-like" "punctae"
    "vacuoles" "droplets (LD)" "droplets" "HFD-fed" "C57BL/6" "Singh" "OA"
    "risen" "Korea" "HFD" "NAFLD" "mean±SD" "a daily oral gavage" "gavage"
    "fide" "orally available derivates" "derivates" "LUV" "LUVs" "de-repress"
    "sensitizer/de-repressor" "co-treatment" "proteolipid" "OMM"
    "Anti-apoptotic" "pS/T-Q" "MxΔRING" "ΔRING" "γIR"
    "a bicistronic retrovirus" "retrovirus" "S/T" "FLT3-I867S, -D839G"
    "continuum" "STAT5B_01" "STAT5A_01" "_02" "_01" "glycan" "heatmap"
    "FLT3-non-ITD" "-D835V" "-I867S, -D839G" "ITD1" "weakest" "-PTD" "PTD"
    "WBC" "835/836" "-TKD" "-ITD" "karyotype" "TKD" "ITD" "= 0.048" "95% CI"
    "= 3" "phosphorylatione" "Hanahan" "PKM1" "pT11" "pT" "Jiang" "proteome"
    "lowerK" "PKM1/2" "H3.3" "kd" "laevis" "Menten" "Lu" "rPKM2" "orligand"
    "H3 T11" "phosphotransfer" "Bamezai" "Gupta" "isozyme" "non-phosphorylated"
    "collections/analysis" "apoptosis/death" "production/function"
    "promoter/enhancer" "synthases" "upstream/enhancer" "non-immune"
    "anti-phospho-c-Jun" "expression/function" "24h" "non-receptor"
    "migration/invasion" "mTORC2/p70S6K" "mTORC2/P70 S6K" "IAV+T 4 nM" "+IAV+T"
    "IAV+T 20 nM" "IAV+Z+T 20 nM" "infectious virus progeny" "mTOR/P70 S6K"
    "ZR" "ZT" "Z+T" "mTOR/p70S6K" "general infectious progeny"
    "half-diluted supernatants" "IZT" "cytopathology" "and 3MA" "IAV+Z+T20 nM"
    "IAV+T20nM" "3 MA" "released infectious virus progeny"
    "half-diluted supernatant" "oligopyrimidine" "IAV+Z+P70i"
    "influenza A virus titer" "IAV+P70i" "P70i" "indolylmaleimide" "bis"
    "increased+autophagy" "VAD" "influenzaz" "IAV+Z+T20nM" "ir" "+Wort"
    "IAV+Z+T4nM" "IAV+T" "IAV+R" "IAV+Z+T" "IAV+Z+R" "IAV+Z" "p-p70S6K"
    "influenzazVAD" "+zVAD" "phospho-p70S6K" "3MA" "+wort" "–IAV"
    "+IAV+zVAD+wort" "IAV" "overview" "Necrostatin" "+IAV+zVAD" "+IAV" "zVAD"
    "PI3K-1" "NA" "stressful" "necrostatin" "non-apoptotic" "3+" "MHV68"
    "ortholog" "the larger inoculum" "ROka67D" "only EBV BGLF4" "ROka63DR"
    "ROka61DR" "lymphoblastoid" "ORF67D" "titers" "inoculum" "titer" "ROka61D"
    "ROka63D" "parental (wild-type) VZV Oka" "Oka" "cell-associated VZV ROka"
    "ROka" "diploid" "alphaherpesvirus" "BGLF4" "UL12" "tranducers" "MRN"
    "ORF47" "Lymphangioleiomyomatosis/TSC" "G1/S phase" "epigenome"
    "dinucleotides" "Barnes" "ng/μl" "the sub-confluent monolayer" "Eker"
    "H3Ac" "H3TrimK4" "H3TrimK9" "16p13.3" "Ab5" "meth" "HASMCs" "non-adherent"
    "smooth muscle-like" "dyspnoea" "multisystem" "stemness" "/S phase" "G0/G1"
    "ΔCt" "GTx" "CARNs" "ofrare" "Pearson's" "prostatectomy" "cl5/cl1"
    "Dtosophila" "co-exist" "GS8–9" "GS5–6" "GSs" "shCtr" "cl1/cl5"
    "the internal control microRNA RNU24" "RNU24" "15q" "LNCaPP" "-cl17"
    "-cl13" "-cl9" "CRPC" "GS" "Gleason" "re-introduction" "D-type" "Bagnoli"
    "Bentink" "nanoliposomes" "nonsignificant" "0/1" "pmirGLO-" "pmirGLO"
    "-UTRs" "UTRs" "TargetScan" "co-transfected" "= 25" "English/Chinese"
    "Naidu" "Timofeeva" "JD" "Truong" "Rudd" "resluts" "sinificant" "Begg’s"
    "Kiyohara" "CNKI" "CBMDisc" "Google" "Cochrane" "Medline" "rs560191"
    "95% CI " "tubulostromal adenomas"
    "the endocrinologically inactive tubular adenomas" "tube-like" "oocytes"
    "the tubular or tubulostromal adenomas" "the coelomic epithelium"
    "ovarian cancer subtypes" "histotypes" "immunocytochemistry"
    "benign adenomas" "adenomas" "VCAM" "Oncomine" "datasets" "endometrioid"
    "tubal" "the oviductal epithelium" "the serous subtype" "uteri" "ovulate"
    "ERαKO" "j" "theca" "cystic hemorrhagic follicles" "follicles" "f/f"
    "Laviotte" "papillae" "dimethylbenz" "the ovarian surface epithelium (OSE)"
    "FTE" "postmenopause" "d/d" "6-month" "five-year" "datasheets" "PKCλ"
    "Awadelkarim" "smples" "aPKCs" "The last subclass" "subclass" "nPKC"
    "subclasses" "= 0.0009" "λ/ι" "βII" "βI" "Spearman’s" "Pearson’s" "Pearson"
    "IBM" "SPSS" "Tokyo" "DOJINDO" "1:50,000" "overnight using 5% non-fat"
    "Proteintech" "Minneapolis" "Bioworlde" "Cambridge" "Abcam"
    "Buckinghamshire" "Amersham" "Hercules" "DharmaFECT" "Chicago" "Dharmacon"
    "WI" "Wisconsin" "Promega" "GIBCO" "Carlsbad" "Invitrogen" "2–3"
    "Pfirrmann" "discectomy" "Hunan" "oligos" "oligo" "Taqman" "TaqMan"
    "pulposus" "U/mL" "= 4" "neurospheres" "stem-like" "–d" "d" "phase/blastic"
    "AP/BP" "–b" "b" "non-SP" "the primitive stem cell subset" "ABCG2+"
    "mitoxantone" "K562/AO2" "geneandhomologue" "Hoechst" "mesylate"
    "Philadelphia" "K562/ABCG2" "K562/IMR" "downregulatedandhomologue"
    "R248/R282" "nonresponse" "CCLE" "p53 R248" "Wb" "FOLFIRI" "genes/pathways"
    "Multivariate" "frameshift" "JCO" "MSKCC" "mir" "P- value" "μ g/ml" "μ l"
    "μ g" "24 h" "KY" "Feng" "alpha-subunit" "Jeghers" "Peutz"
    "cell migration/invasion" "Thr183/Tyr185" "pJNK" "pP70S6K" "pmTOR" "~70%"
    "pAMPKα" "shRNAi" "stepwise" "heterotrimer" "microenvironements" "S4C"
    "S4A" "-triphosphate" "adenylyl" "Gβγ" "Adenylyl"
    "the social ameba Dictyostelium discoideum" "discoideum" "Dictyostelium"
    "Gα" "HM+TM" "Perhaps" "CGP53353" "Venus" "S2A" "PKCβI/II" "TAXIScan"
    "potential active shRNAs" "neutrophil-like" "Active PKCβII" "cPKC"
    "pseudosubstrate" "A-loop" "cPKCs" "Cs" "mTORC1/2" "chemoattractants"
    "CβII" "PKCβII" "MyoII" "chemoattractant" "S3D" "PTENs" "WPE" "TGFβ-1"
    "CD-PTEN" "non-malignant" "TRL-1215" "22RV1" "activated/phosphorylated"
    "PHLPPs" "Non-transformed" "24 h" "PI3 kinase/" "PI3K/AKT/" "F2α"
    "subsites" "survivalin" "UNC7" "PI3KCA" "UMSCC47" "HPV-associated HNSCCs"
    "TCGA" "HNSCCs" "GSK3α/β" "non-significant" "one normal tonsillar mucosa"
    "nearly 1/3" "Rb" "de-escalation" "platin" "timeframe" "HNSCC" "dmTOR"
    "OPSCCs" "OPSCC" "μg/mL" "invitro" "aeruginosa" "flexneri"
    "kappa-light-chain-enhancer" "CECAM" "Afa/Dr" "CEACAMs" "ought" "DTNO"
    "DETA" "-Nitroarginine" "Nitroarginine" "controll" "estbliash"
    "phosphoinositides" "triphosphate" "paroxysmal nocturnal hemoglobinurea"
    "hemoglobinurea" "endometrium" "the uropathogenic Escherichia coli" "Dr +"
    "coli" "FRR" "Cybulski" "multicancer" "hetero-" "T-status" "95%CI"
    "pairwise" "Covariates" "microPTC" "PTCfv" "2.37e-10"
    "significantly younger" "Rs17879961" "rs1801516" "CHEK2-" "CHEK" "rs16941"
    "rs17879961" "Sequenom" "= 0.04" "= 3" "P -value" "mono-therapy"
    "bleedings" "nonusers" "polychemotherapy" "multivariate" "WHR" "df" "IQR"
    "flowchart" "thermotherapy" "C-alleles" "C-allele" "≥850" "G/G" "Sweden"
    "rs5277" "≤20" "5-year" "Subpopulations" "Coomassie" "ZnCl" "Zymography"
    "Ibidi" "using Costar transwell" "Sunnyvale" "ImageQuant" "densitometer"
    "polyvinyldifluoride" "Trizma" "Winooski" "Tek" "microplate" "shaken"
    "formazan" "Manassas" "Danvers" "Dulbecco’s" "Inc" "USA" "Aldrich" "U251"
    "anti-osteoporosis" "anti-seizure" "7-methoxy-8-" "monnieri" "Cnidium"
    "gelatinases" "means ± S" "w / v" "μL" "mg/mL" "responders" "∼25%" "PARP1i"
    "AstraZeneca" "PARPi" "bi" "nucleo" "forBrca2" "a typical Knudson"
    "Knudson" "withKras" "wildtype" "∼4-8-fold" "most available GEMMs" "GEMMs"
    "GEMM" "ESCRT" "nucleate" "aneuploidy" "dsDNA" "ssDNA" "ds" "ss" "quadri"
    "chromatid" "penetrance" "Germline" "GERMLINE" "Horseredish" "proven"
    "genetic/signaling" "protein/s" "clinicians" "Ras-G12V+TNFα"
    "angiogenic ones" "genetic/epigenetic" "non-stimulated" "=3" "mean ± SD"
    "non-invasive" "anti-rabbit" "anti-mouse" "GDF15–TGFβR2–Kv2.1–" "Ehrlich"
    "Weigel" "organelles" "L-type" "obstructive nephropathy" "neuritin" "α6"
    "Bandyopadhyay" "non-Smad" "TGFβR1/TGFβR2" "TGFβR1" "0.9±1.9%" "−47.3±2.2%"
    "=4" "1+exp" "=1/" "+10" "Gibco" "antibiotic/antimycotic" "riboside"
    "dichlorobenzimidazole" "Pepro" "parisons" "com" "NeutrAvidin"
    "homogenates" "radioimmune" "mg/ml" "sulfosuccinimidyl-6-" "Thermo"
    "hexanoate" "amido" "Cruz" "Hepes/NP40" "μl" "Toyobo" "SYBR" "XRS"
    "ChemiDoc" "Pico" "KangChen" "TBS" "TBST" "Bio" "non-fat" "Davis" "UC"
    "SDS/PAGE" "Millipore" "Nonidet" "capacitance" "fusiform" "MΩ" "CaCl"
    "tetrodotoxin" "pClamp" "Axon" "multiclamp" "-arabinofuranoside"
    "arabinofuranoside" "°C" "Dulbecco" "DMEM" "μg/ml" "cells/ml" "Petri"
    "cerebella" "Strelau" "midbrain" "thalamus" "TGFβRII" "TGFβR2"
    "diabetic nephropathy" "Sirius-red" "diabetes/TPEN" "Semi" "Diabetes/TPEN"
    "HG/Pal/TPEN" "the last 30 hrs" "extra exogenous Zn" "Zinquin"
    "the last 6 hrs" "pyridylemethyl" "-tetrakis" "tetrakis" "tubule"
    "Diabetic nephropathy" "oxygenase-1" "Apostolova" "HG/Pal" "bw" "Zn"
    "mean ± SD" "non-specific" "chemo" "OV202 Sh1" "HSulf-1" "3prime"
    "The prosurvival protein A1" "44±69" "soft agar" "agar" "ShRNA (NTC)"
    "ShRNA" "ShRNAs" "re-expression" "paracrine" "SVBP" "mg/kg"
    "the inherent chemoresistance" "TUNEL" "Xue" "shcont" "HepG" "microtiter"
    "absorbance" "Wallis" "IHC" "adducts" "1q32.3" "Shibuya" "anti-human"
    "α3β1" "four repetitive highly conserved FAS1 domains" "FAS1domains"
    "FAS1 domains" "FAS1 domain" "6S6" "P1E6" "heterocomplexes" "FAS1domain"
    "a3β1" "CAP" "extravasate" "intravasate" "βig-h3" "α2β1" "co-localized"
    "co-activator" "bindiong" "p" "#320" "TLPs" "CDFR" "#22.23-expressing"
    "variant-1" "#22.324" "#22" "#152" "IIA (TFIIA)" "IID (TFIID)" "IID"
    "#22.23" "germline" "histological subtype" "Rozek" "Israel" "Shaukat"
    "Mucinous histology" "non-drinkers" "Rako" "Phipps" "Samowitz" "B-type"
    "mucinous histology" "CIMP" "microsatellite" "histology" "ISI"
    "non-smokers" "NCBI" "TATA" "-fluoro-D-glucose" "2-deoxy-2-" "Positron"
    "RFLP" "GCV" "GFFs" "co-existence" "-IRES-HSV1-TK" "-IRES-HSV1-tk" "IRES"
    "a much longer lifespan" "positron" "codon" "bio" "USU" "Utah" "vivarium"
    "nonhuman" "SCNT" "LoxP" "tk" "simplex" "GFF" "cheaper" "∼20%" "Ac"
    "Papetti" "UBHA24" "pharmacophore" "Finnin" "Aeolicus" "Aquifex"
    "undergone" "supernatant" "WB" "CMY" "decrements" "throid" "ery" "huttle"
    "Mai" "Delehanty" "γ+β" "N-hexamethylenebisacetamide" "Watamoto"
    "co-repressor" "Bradner" "remodeler" "multiprotein" "sirtuins"
    "hemoglobinopaties" "γ/" "APHA9" "NuRD" "IIa" "Caucasians" "Asians" "Buch"
    "Egger’s" "Egger" "0.94–1.25" "0.87–1.00" "0.92–1.23" "0.92–1.03" "HWE"
    "multicenter" "coworker" "African" "Beabesand" "David" "coworkers" "Shen"
    "toGln" "codons" "19q13.2–13.3" "ArgTrp " "TrpTrp " "TrpTrp" "ArgTrp"
    "ones" "TV" "*4" "et" "Teicher" "LC3II" "non-silencing" "non-transformed"
    "readouts" "shRNAs" "basal-like" "TNBC" "organelle" "anti-cancer" "XYW"
    "ZKM" "JZ" "KJW" "YMM" "micropenis" "Andersen" "μg"
    "two functionally polymorphic microsatellites" "microsatellites" "follicle"
    "height/weight" "penile" "± 10" "WC" "TZ" "CL" "HLZ" "SCZ" "Danish"
    "These male-specific longevity polymorphisms" "non-carriers"
    "all intronic SNPs" "The most familiar FOXO3A intronic SNP rs2802292"
    "lifespan" "Begg's" "Begg" "Soerensen" "rs2802288" "1.15–1.67" "1.15–1.66"
    "1.33–1.79" "Q-test" "Weinberg" "English" "written" "haplotype"
    "rs13220810" "rs7762395" "rs2153960" "rs1935949" "rs13217795" "German"
    "long-lived American" "Japanese" "Willcox" "rs2764264" "rs2802292" "ORs"
    "= 0.003" "QY" "YQ" "ZZ" "indeterminate fine-needle aspiration cytology"
    "eosin" "The Spearman’s" "Spearman" "Wilcoxon" "thyroidectomy" "=0.003"
    "NPV" "cytology" "~20%" "biopsy (FNAB)" "FNAB" "sonography" "30/42" "14/20"
    "FNABs" "JBL" "Anderson" "annexin V/propidium" "fluorophore" "YUTICA"
    "YUSOC" "Switzerland" "Basel" "Novartis" "farnesyl" "GlaxoSmithKline"
    "Genentech" "Roche" "CNS" "inhibition162" "Yale" "phospho-ERK1/2 " "Nguyen"
    "tartrate" "prebound" "PTEN-like" "SxxGxxR" "_away-3" "dipole" "CXXGXXR"
    "headgroup" "_bound-2" "Cα2" "μs" "_away-2" "_away-1" "Bilayers" "CBR3"
    "Cowden" "P-loop" "HCXXGXXR" "antiparallel" "FERM" "bilayer" "bilayers"
    "multiscale" "intestinalis" "Ciona" "helix" "ation" "FIII" "SABBAC" "CORAL"
    "initio" "DAMMIN" "DsDB" "SAXS" "FII" "interdomain" "polymerase-1"
    "readout" "dyne/cm 2" "mitoTracker" "DAF-2DA" "RAECs" "coverslip"
    "hygroscopicus" "actinomycete" "g/mL" "/G1" "synergism" "taking biopsies"
    "XTT" "homolog" "anti-inflammatory" "PUVA" "approximately 2–3" "Ps"
    "anti-proliferative" "hyper" "acetylcholine" "corticosteroids" "lavage"
    "RGD" "SRRGDMS" "co­localised" "Isotype" "β3" "SB208350" "wortmanin"
    "phosphoarray" "ELISA" "supernatants"
    "increases bronchial hyperresponsiveness" "ex"
    "bronchial hyperresponsiveness" "hyperresponsiveness" "broncho"
    "co-localised" "bronchial biopsies" "biopsies" "phospho-ERK1/2"
    "anti-tumor" "parenchyma" "MTS" "adduct" "1-isothiocyanato-4-" "oleracea"
    "brassica" "methylsulfinyl" "zymography" "transwell" "anti-metastatic"
    "oxidative stres" "stres" "Aydın" "pathophysiology" "paramaters"
    "age-related cardiac hyperthropy" "hyperthropy" "contraversy"
    "had positive coronary angiography" "CC" "genoypes" "homozygote" "Cl" "GG"
    "Polymorphisms" "positive coronary angiography" "angiography" "BMI"
    "Turkish" "polymorphism" "ischemia/reperfusion" "coactivator-1α"
    "proliferators" "10p37.5" "Sirtuin" "sirtuin" "mellitus" "heterozygote"
    "rs7895833" "rs2273773" "rs7069102" "OSI" "SNPs" "polymorphisms"
    "LY2940012" "4EGI-1" "factor 4G" "eIF" "activator protein-1" "siGFP"
    "siGRP78" "GAPS" "Stenmark" "Blumer" "AMAP" "semi" "Mendoza" "mesoderm"
    "ectoderm" "gastrula" "silencing/over-expression" "the endocytic circuitry"
    "circuitry" "re-plated" "akt" "significantly less motile" "OligoEngine"
    "pSUPER" "el" "Palamidessi" "Rabinosyn" "Bhattacharya" "genomes" "spatio"
    "coverslips" "Transwell" "broader" "mesothelium" "mesothelia" "Brugge"
    "single cellular migration/invasion" "actinomyosin"
    "mDia2 depletion specifically impacts spheroid organization/integrity"
    "organization/integrity" "underpinnings" "Boyden" "kncokdown" "Amoeboid"
    "oncosome" "microparticles" "∼60%" "monolayers" "pMLC2" "hrs" "SMIFH2"
    "monolayer" "ovarian spheroid formation/integrity" "formation/integrity"
    "underlying/proximal" "LISA" "dominant-negative YFP-mDia-FH2ΔN" "ΔN"
    "lamellapodia" "lamellae" "Dunn" "FHOD" "pMLC" "spindle-like" "EOC"
    "American" "motile" "amoeboid" "chemoresistant" "OvCa" "Multi" "TTC"
    "buffy" "almost 1200 bp" "DHSs" "browser" "Browser" "UCSC" "bp" "Intron"
    "TTGGAGCAA" "TTCTGAGAA" "Silico" "cancers/tumours" "PANTHER" "bonafide"
    "vivo" "vitro" "non-consensus" "N-domains" "perhaps" "silico" "enhancer"
    "introns" "begun" "TTCN" "Daclizumab" "the internal intron"
    "an internal intron" "intron" "transducers" "eosinophilia" "blockers"
    "undergoes" "RALA255-10G" "pyrroledithiocarbamate" "Eosinophil" "IKKs"
    "protein IκB" "isotype" "g/ml" "co-culture" "an antagonistic Fas mAb ZB4"
    "ZB4" "May-Grünwald-Giemsa-stained" "RhFasL" "synthesise" "pM" "47.3±8.1%"
    "55.3±9.2%" "lysis" "eosinophils" "yang" "c-jun-" "c" "IIA"
    "pyrrolidinedithiocarbamate" "anti-apoptotic" "eosinophil" "Eosinophils"
    "±10" "E3/E4" "1p36" "siRNA" "UBE" "Wu" "UFD" "Ub" "multi" "Broader"
    "ΔITIM" "unitary conductance" "cNBD" "hetero" "ether-a-go-go"
    "non-excitable" "wt" "1–3" "ΔITIM-hERG" "Iso" "-X-X-Leu" "ERG-like"
    "reached ∼44%" "simpler" "nA" "non-transfected" "proto" "Src40-58s"
    "Src40-58" "∼42%" "the largest conductance" "Boltzmann" "1/2" "conductance"
    "∼45%" "+20" "Nernst" "+60" "permeant"
    "conductance-versus-voltage relations" "blocker" "ERG1/Kv11.1/"
    "EAG1/Kv10.1/" "ITIM" "QT" "subfamilies" "non-receptor tyrosine kinases"
    "intra-" "co-regulated" "treated OVCA 420 Scr and OVCA p53 shRNA" "OVCA"
    "shRNA" "oviductal epithelium" "normal mouse ovarian surface epithelium"
    "immunohistochemistry" "/G 1" "hr"
    "human fallopian tube epithelium (FTSEC)" "epithelium (FTSEC)" "FTSEC"
    "fallopian tube epithelium (TEC)" "epithelium (TEC)"
    "ovarian surface epithelium (OSE)" "epithelium (OSE)" "chosen"
    "chemoresistance" "co-activators" "IARC" "CGAN" "missense"
    "the fallopian tube epithelium" "the ovarian surface epithelium" "Genome"
    "FFPET" "biopsy" "greater" "discrepant" "BORR" "subsets" "workflow" "exons"
    "European" "subset" "Sanger" "cobas" "Asian" "EURTAC" "subtypes" "mucoid"
    "aneurysms" "transducer" "hotspot" "aneurysm" "procollagen" "Danlos"
    "Ehlers" "Affymetrix" "STRING" "forms dense subnetworks" "INFGR" "ExpMod"
    "hotspots/ExpMods" "ExpMods" "topology" "Carlo" "Monte" "Limma"
    "subnetworks" "Hotspots" "Interactome" "aliquots"
    "non-receptor tyrosine kinase" "CKAP2L" "TSPANS" "Ids" "Bayes" "Entrez"
    "intra" "algorithm" "dataset" "genome" "intima" "Stanford" "hotspots"
    "interactome" "univariate" "Meier" "Kaplan" "younger" "AJCC" "Edlundh"
    "poorer" "subtype" "daidzedin" "progestin" "ED" "sigmoid" "replicate"
    "endpoints" "endocrinology" "Pre" "formend" "CHX" "co-administration" "pre"
    "pS2/TIFF" "CatD" "presenelin" "E2:ERα" "circuitries" "co-ordinately" "ERE"
    "EDs" "disruptors" "the oral and genital epithelium" "Mucosal epithelium"
    "the oral and anal mucosa" "oral and genital epithelium" "HSV-1/2" "hidden"
    "severe nephropathy" "nephropathy" "genotypes" "genotype"
    "anogenital mucosal epithelium" "gD" "tat/gp120-" "∼70%" "anti-serum"
    "approximately one-half" "active or inactive tat/gp120" "The soluble HSV-1"
    "active and inactive tat/gp120" "biotin" "306t" "ϖ" "β1" "UV"
    "dual X4- and R5-tropic HIV-1 SF33" "SF33" "mucosal epithelium"
    "Mucosal Epithelium" "Epithelium" "inactive tat/gp120" "MOI" "tat/gp120"
    "active tat/gp120" "iii" "ii" "greatest" "oropharyngeal mucosal epithelium"
    "oral mucosal epithelium" "progeny" "various mucosal epithelia" "epithelia"
    "mucosa" "the oral mucosal epithelium" "HSV-1" "epithelium" "replicates"))

(DEFPARAMETER SPARSER::*BIO-CHEMICAL-HEADS-PHASE3-12001-12300*
  '(("the most frequent mutations BRAF V600E and NRAS Q61R/K"
     . SPARSER::COLLECTION)
    ("leucine/arginine/lysine" . SPARSER::COLLECTION)
    ("superficial spreading melanoma" . SPARSER::PROTEIN)
    ("BRAF and NRAS" . SPARSER::COLLECTION) ("MART1" . SPARSER::PROTEIN)
    ("S100" . SPARSER::PROTEIN) ("an immediate activator" . SPARSER::ACTIVATOR)
    ("MEK–ERK" . SPARSER::COLLECTION) ("BDNF and MEK1" . SPARSER::COLLECTION)
    ("mitogen-activated protein kinase kinase 1" . SPARSER::PROTEIN)
    ("EGFR or erb3/4" . SPARSER::COLLECTION) ("erb" . SPARSER::PROTEIN)
    ("MEK/MAPK/ERK" . SPARSER::COLLECTION)
    ("single-erbB and multi-erbB targeting inhibitors" . SPARSER::COLLECTION)
    ("gefitinib and canertinib" . SPARSER::COLLECTION)
    ("RaH" . SPARSER::PROTEIN)
    ("multiple non-EGFR preferential erbB ligands" . SPARSER::LIGAND)
    ("NRG3, and NRG4" . SPARSER::COLLECTION)
    ("EGFR preferential ligands" . SPARSER::LIGAND)
    ("vemurafenib and canertinib" . SPARSER::COLLECTION)
    ("pSTAT3 and pAKT" . SPARSER::COLLECTION) ("p-erbB4" . SPARSER::COLLECTION)
    ("p-erbB3" . SPARSER::COLLECTION)
    ("EGFR and/or erbB2" . SPARSER::COLLECTION)
    ("pAkt and pSTAT3" . SPARSER::COLLECTION)
    ("Akt and STAT3" . SPARSER::COLLECTION)
    ("EGF or NRG1" . SPARSER::COLLECTION)
    ("EGFR and erbB3 or erbB4" . SPARSER::COLLECTION)
    ("erbB3 or erbB4" . SPARSER::COLLECTION)
    ("EGFR and both erbB2 and erbB3" . SPARSER::COLLECTION)
    ("EGFR, erbB3, and erbB4" . SPARSER::COLLECTION)
    ("EGFR, erbB2, and erbB4" . SPARSER::COLLECTION)
    ("receptor or ligand" . SPARSER::COLLECTION)
    ("gefitinib or lapatinib" . SPARSER::COLLECTION)
    ("erbB2, erbB3, or erbB4" . SPARSER::COLLECTION)
    ("erbB2 and erbB4" . SPARSER::COLLECTION) ("Gefitinib" . SPARSER::DRUG)
    ("gefitinib and lapatinib" . SPARSER::COLLECTION)
    ("TKIs, gefitinib, and erlotinib" . SPARSER::COLLECTION)
    ("lapatinib and canertinib" . SPARSER::COLLECTION)
    ("a feasible and effective erbB" . SPARSER::PROTEIN)
    ("erbB2, erbB3, and erbB4" . SPARSER::COLLECTION)
    ("erbB2/erbB3" . SPARSER::COLLECTION) ("erbB2/erbB4" . SPARSER::COLLECTION)
    ("TGF-α and amphiregulin" . SPARSER::COLLECTION)
    ("erbB2 and erbB3" . SPARSER::COLLECTION)
    ("EGFR, erbB2, erbB3, and erbB4" . SPARSER::COLLECTION)
    ("pan-erbB" . SPARSER::COLLECTION)
    ("mutant and wildtype (WT)" . SPARSER::COLLECTION)
    ("NRG" . SPARSER::PROTEIN) ("erbB3 and erbB4" . SPARSER::COLLECTION)
    ("a recombinant human/mouse chimeric monoclonal antibody" . SPARSER::DRUG)
    ("erbB3, and erbB4" . SPARSER::COLLECTION)
    ("a particular BRAF" . SPARSER::PROTEIN) ("Zelboraf" . SPARSER::DRUG)
    ("multi-erbB" . SPARSER::COLLECTION)
    ("mutant and wildtype" . SPARSER::COLLECTION)
    ("Canertinib" . SPARSER::DRUG)
    ("single-erbB or dual-erbB" . SPARSER::COLLECTION)
    ("gefitinib, erlotinib, and lapatinib" . SPARSER::COLLECTION)
    ("Multi-erbB" . SPARSER::COLLECTION) ("canertinib" . SPARSER::DRUG)
    ("Neuregulin 3 and neuregulin" . SPARSER::COLLECTION)
    ("neuregulin" . SPARSER::PROTEIN)
    ("receptors and ligands" . SPARSER::COLLECTION)
    ("BRAF and erbB" . SPARSER::COLLECTION) ("/erbB" . SPARSER::COLLECTION)
    ("ERBB4" . SPARSER::PROTEIN) ("80 kD" . SPARSER::PROTEIN)
    ("grb2" . SPARSER::PROTEIN) ("120 kD" . SPARSER::PROTEIN)
    ("180 kD" . SPARSER::PROTEIN) ("citric acid" . SPARSER::MOLECULE)
    ("NRG3" . SPARSER::PROTEIN) ("ECL 2" . SPARSER::PROTEIN)
    ("NRG4" . SPARSER::PROTEIN) ("neuregulin 1" . SPARSER::PROTEIN)
    ("Neuregulin 3" . SPARSER::PROTEIN) ("erbB4" . SPARSER::PROTEIN)
    ("erbB3" . SPARSER::PROTEIN) ("erbB2" . SPARSER::PROTEIN)
    ("TGIF1, ZMIZ1 and CFTR" . SPARSER::COLLECTION)
    ("MTX and the genes" . SPARSER::COLLECTION) ("tocilizumab" . SPARSER::DRUG)
    ("protein, and guanosine" . SPARSER::COLLECTION)
    ("long-term observational cohorts" . SPARSER::MOLECULE)
    ("TGFbeta/SMAD" . SPARSER::COLLECTION)
    ("Other notable associated genes" . SPARSER::GENE)
    ("CFTR, ZMIZ1 and TGIF1" . SPARSER::COLLECTION)
    ("a low voltage-activated calcium channel" . SPARSER::PROTEIN)
    ("the most significant associated SNPs" . SPARSER::PROTEIN)
    ("CFTR-CTTNBP2" . SPARSER::COLLECTION) ("pedi" . SPARSER::PROTEIN)
    ("TGFB" . SPARSER::PROTEIN) ("TGFbeta" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ACR-pedi" . SPARSER::COLLECTION) ("PCs" . SPARSER::PROTEIN)
    ("MTX and adenosine" . SPARSER::COLLECTION)
    ("acceptable has" . SPARSER::PROTEIN)
    ("ZMIZ1, TGIF1 and CFTR" . SPARSER::COLLECTION) ("ACR" . SPARSER::PROTEIN)
    ("UK, Netherlands and Czech" . SPARSER::COLLECTION)
    ("MTX" . SPARSER::PROTEIN) ("interferon-beta" . SPARSER::DRUG)
    ("zinc finger protein" . SPARSER::PROTEIN) ("ABCC3" . SPARSER::PROTEIN)
    ("ABCC7" . SPARSER::PROTEIN) ("CYTH4" . SPARSER::PROTEIN)
    ("CSMD1" . SPARSER::PROTEIN) ("KIAA1377" . SPARSER::PROTEIN)
    ("CTTNBP2" . SPARSER::PROTEIN) ("alpha 1I subunit" . SPARSER::PROTEIN)
    ("T type" . SPARSER::PROTEIN) ("CACNA1I" . SPARSER::PROTEIN)
    ("calcium channel" . SPARSER::PROTEIN)
    ("ATP-binding cassette transporter" . SPARSER::PROTEIN)
    ("homeobox 1" . SPARSER::PROTEIN)
    ("zinc finger MIZ-type containing 1" . SPARSER::PROTEIN)
    ("TGIF1" . SPARSER::PROTEIN) ("ZMIZ1" . SPARSER::PROTEIN)
    ("pig" . SPARSER::PROTEIN)
    ("more targeted and effective nutritional and pharmacological therapeutics"
     . SPARSER::THERAPEUTICS)
    ("simvastatin" . SPARSER::DRUG) ("omega" . SPARSER::PROTEIN)
    ("kinase (PERK)" . SPARSER::KINASE) ("Cav-1 and Akt" . SPARSER::COLLECTION)
    ("Keap1 or Fyn" . SPARSER::COLLECTION)
    ("PCB 77 or PCB 126" . SPARSER::COLLECTION)
    ("Cav-1, AhR, and Nrf2" . SPARSER::COLLECTION)
    ("caveolae-related proteins and other factors has" . SPARSER::COLLECTION)
    ("adipose fat" . SPARSER::PROTEIN)
    ("the previous porcine siRNA" . SPARSER::PROTEIN)
    ("the considerably higher protein" . SPARSER::PROTEIN)
    ("NQO1 and GST" . SPARSER::COLLECTION) ("coplanar PCB 126" . SPARSER::DRUG)
    ("DMSO and PCB" . SPARSER::COLLECTION)
    ("delta and Akt" . SPARSER::COLLECTION)
    ("Fyn and Keap1" . SPARSER::COLLECTION) ("basal DMSO" . SPARSER::MOLECULE)
    ("these cytoprotective genes" . SPARSER::GENE)
    ("GST and NQO1" . SPARSER::COLLECTION)
    ("Nrf2-antioxidant" . SPARSER::COLLECTION)
    ("endothelial Cav-1" . SPARSER::PROTEIN)
    ("Cav-1/Nrf2" . SPARSER::COLLECTION)
    ("Nrf2 and NFκB" . SPARSER::COLLECTION)
    ("AhR and Nrf2" . SPARSER::COLLECTION) ("dioxins" . SPARSER::MOLECULE)
    ("relevant kinases" . SPARSER::KINASE) ("Keap1/Nrf2" . SPARSER::COLLECTION)
    ("bioactive phytochemicals" . SPARSER::DRUG)
    ("electrophiles" . SPARSER::MOLECULE)
    ("protein, iNrf2 or Keap1" . SPARSER::COLLECTION)
    ("Coplanar PCBs" . SPARSER::PROTEIN)
    ("non-ortho-substituted coplanar PCBs" . SPARSER::PROTEIN)
    ("PCB 77 and PCB 126" . SPARSER::COLLECTION)
    ("coplanar PCBs" . SPARSER::PROTEIN) ("PCBs and PCB" . SPARSER::COLLECTION)
    ("mixtures" . SPARSER::MOLECULE) ("Cav-1 and Nrf2" . SPARSER::COLLECTION)
    ("Keap1 and Fyn" . SPARSER::COLLECTION)
    ("cells exhibited decreased mRNA" . SPARSER::RNA)
    ("quinone" . SPARSER::PROTEIN) ("GPX1" . SPARSER::PROTEIN)
    ("MRP1" . SPARSER::PROTEIN) ("Von Willebrand Factor" . SPARSER::PROTEIN)
    ("PECAM1" . SPARSER::PROTEIN)
    ("platelet endothelial cell adhesion molecule" . SPARSER::PROTEIN)
    ("NQO1" . SPARSER::PROTEIN) ("iNrf2" . SPARSER::PROTEIN)
    ("Vascular Cell Adhesion Molecule-1" . SPARSER::PROTEIN)
    ("PCB 126" . SPARSER::DRUG) ("PCB 77" . SPARSER::DRUG)
    ("nuclear factor (erythroid-derived 2)" . SPARSER::PROTEIN)
    ("BLP" . SPARSER::PROTEIN)
    ("in turn re-express major tumor suppressors" . SPARSER::SUPPRESSOR)
    ("E6AP, CIP2A, and 14-3-3ζ" . SPARSER::COLLECTION)
    ("p53, RB, and p21" . SPARSER::COLLECTION)
    ("endogenous HPV viral genes" . SPARSER::GENE)
    ("MYC, p53, and E2F" . SPARSER::COLLECTION)
    ("E7 or E1" . SPARSER::COLLECTION) ("EGF and EGF" . SPARSER::COLLECTION)
    ("E6 and another isoform E6*I" . SPARSER::COLLECTION)
    ("epithelial growth factor (EGF)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("polycistronic mRNAs" . SPARSER::PROTEIN)
    ("E6, E7, and E1" . SPARSER::COLLECTION)
    ("p53-p21-RB" . SPARSER::COLLECTION)
    ("CRM1/exportin-1" . SPARSER::COLLECTION)
    ("E6 or E6AP" . SPARSER::COLLECTION) ("MYC and E6" . SPARSER::COLLECTION)
    ("p53, p21, and RB" . SPARSER::COLLECTION)
    ("E6, and E6AP" . SPARSER::COLLECTION)
    ("p53 and p21 protein" . SPARSER::COLLECTION)
    ("si-E6AP" . SPARSER::COLLECTION) ("si-E6" . SPARSER::COLLECTION)
    ("si-CIP2A" . SPARSER::COLLECTION) ("CIP2A and E6AP" . SPARSER::COLLECTION)
    ("CIP2A, E6, and E6AP" . SPARSER::COLLECTION)
    ("E6AP, and CIP2A" . SPARSER::COLLECTION)
    ("p53, p21, RB, and MYC" . SPARSER::COLLECTION)
    ("E6, E6AP, and CIP2A" . SPARSER::COLLECTION)
    ("p53-RB-p21" . SPARSER::COLLECTION) ("p53 and MYC" . SPARSER::COLLECTION)
    ("CIP2A, E6, E6AP, and E7" . SPARSER::COLLECTION)
    ("E6, and miR-375-mediated" . SPARSER::COLLECTION)
    ("CIP2A and MYC protein" . SPARSER::COLLECTION)
    ("si-p53" . SPARSER::COLLECTION) ("si-GFP" . SPARSER::COLLECTION)
    ("p53, and miR-375-mediated" . SPARSER::COLLECTION)
    ("CIP2A and p53" . SPARSER::COLLECTION)
    ("CIP2A or p53" . SPARSER::COLLECTION) ("CIP2A-MYC" . SPARSER::COLLECTION)
    ("p21, p53, and RB protein" . SPARSER::COLLECTION)
    ("E6 and E7 viral oncoproteins" . SPARSER::PROTEIN)
    ("p53 and RB protein" . SPARSER::COLLECTION)
    ("p53 and RB" . SPARSER::COLLECTION) ("Cellular E6AP" . SPARSER::PROTEIN)
    ("wild type p53 and/or RB" . SPARSER::COLLECTION)
    ("p21, p53, and RB" . SPARSER::COLLECTION)
    ("protein and ~40%" . SPARSER::COLLECTION)
    ("UTR and miR-375" . SPARSER::COLLECTION)
    ("E7 and E1" . SPARSER::COLLECTION)
    ("E6, E7, and E6/E7/E1" . SPARSER::COLLECTION)
    ("E6 or E7" . SPARSER::COLLECTION) ("m1 or m2" . SPARSER::COLLECTION)
    ("E6 and E7, and E6AP" . SPARSER::COLLECTION)
    ("E7, and E6AP" . SPARSER::COLLECTION) ("telosomes" . SPARSER::BIO-COMPLEX)
    ("approximately 22 nucleotide (nt) long small non-coding RNAs"
     . SPARSER::RNA)
    ("p53, p21, and retinoblastoma protein" . SPARSER::COLLECTION)
    ("E6-associated protein" . SPARSER::PROTEIN)
    ("oncogenic molecules and their downstream molecules"
     . SPARSER::COLLECTION)
    ("genes and miRNAs" . SPARSER::COLLECTION)
    ("Cancerous Inhibitor of PP2A" . SPARSER::PROTEIN)
    ("Telomerase reverse transcriptase" . SPARSER::PROTEIN)
    ("Retinoblastoma protein" . SPARSER::PROTEIN)
    ("miR-125b" . SPARSER::MOLECULE) ("miR-23a" . SPARSER::MOLECULE)
    ("exportin-1" . SPARSER::PROTEIN)
    ("transcriptional activators" . SPARSER::PROTEIN-FAMILY)
    ("RB protein" . SPARSER::PROTEIN) ("m2" . SPARSER::MOLECULE)
    ("CIP2A" . SPARSER::PROTEIN)
    ("ribonucleoprotein complex" . SPARSER::BIO-COMPLEX)
    ("interferon-α" . SPARSER::DRUG) ("E6AP" . SPARSER::PROTEIN)
    ("possibly other RTKs" . SPARSER::PROTEIN)
    ("at least several RTKs" . SPARSER::PROTEIN)
    ("panitumumab and cetuximab" . SPARSER::COLLECTION)
    ("the Grb2- and Shc-specific docking oncoproteins, and Tpr-Met"
     . SPARSER::COLLECTION)
    ("oncoproteins, and Tpr-Met" . SPARSER::COLLECTION)
    ("IQGAP1, Crk and Sgk269" . SPARSER::COLLECTION) ("Crk" . SPARSER::PROTEIN)
    ("Shc or Tpr-Met" . SPARSER::COLLECTION)
    ("the Grb2 or Shc-binding variants oncoproteins" . SPARSER::COLLECTION)
    ("the Grb2- and Shc-docking oncoproteins" . SPARSER::COLLECTION)
    ("TM-Shc" . SPARSER::COLLECTION)
    ("the Grb2- and Shc-specific docking oncoproteins" . SPARSER::COLLECTION)
    ("Grb2 and Shc, Erk or Akt" . SPARSER::COLLECTION)
    ("Shc, Erk or Akt" . SPARSER::COLLECTION)
    ("EGF/TGF-α" . SPARSER::COLLECTION)
    ("Snail, Twist, and Zeb" . SPARSER::COLLECTION)
    ("metastatic CRCs" . SPARSER::PROTEIN)
    ("MEK1/2 or PI3K" . SPARSER::COLLECTION)
    ("U0126 or LY294002" . SPARSER::COLLECTION)
    ("MEK and PI3K" . SPARSER::COLLECTION)
    ("MEK1/2 and PI3K" . SPARSER::COLLECTION) ("-Met" . SPARSER::COLLECTION)
    ("AZD6244 or PD184352" . SPARSER::COLLECTION)
    ("MEK or PI3K" . SPARSER::COLLECTION)
    ("Erk1/2 or Akt" . SPARSER::COLLECTION)
    ("Erk1/2 and Akt" . SPARSER::COLLECTION)
    ("Erk2 and Akt" . SPARSER::COLLECTION)
    ("neither Erk1/2 nor Akt" . SPARSER::COLLECTION)
    ("MEK and PI3K, Erk1/2 and Akt" . SPARSER::COLLECTION)
    ("PI3K, Erk1/2 and Akt" . SPARSER::COLLECTION)
    ("TM-Grb2" . SPARSER::COLLECTION) ("Grb2, or Shc" . SPARSER::COLLECTION)
    ("shCTRL" . SPARSER::PROTEIN) ("shShc" . SPARSER::PROTEIN)
    ("TM-shCTRL" . SPARSER::COLLECTION) ("TM-shShc" . SPARSER::COLLECTION)
    ("ShcA" . SPARSER::PROTEIN)
    ("Grb2 (TM-shGrb2) or Shc (TM-shShc)" . SPARSER::COLLECTION)
    ("the docking-specific Tpr-Met-derived variants" . SPARSER::VARIANT)
    ("Anoikis" . SPARSER::PROTEIN) ("matrix (ECM)" . SPARSER::PROTEIN-FAMILY)
    ("Grb2- or Shc-dependent signals permits IECs" . SPARSER::COLLECTION)
    ("TM-Shc2" . SPARSER::COLLECTION) ("TM-Shc1" . SPARSER::COLLECTION)
    ("Snail2 , Twist1, or Twist2" . SPARSER::COLLECTION)
    ("Snail1 or Zeb1" . SPARSER::COLLECTION) ("Zeb1" . SPARSER::PROTEIN)
    ("Zeb" . SPARSER::PROTEIN) ("Grb2-" . SPARSER::PROTEIN)
    ("the Grb2 or the Shc adaptor protein" . SPARSER::COLLECTION)
    ("the Grb2 (TM-Grb2-IEC-6 cells) or Shc (TM-Shc1-IEC-6 and TM-Shc2-IEC-6 cells, respectively) adaptor proteins"
     . SPARSER::COLLECTION)
    ("This unique characteristic has" . SPARSER::PROTEIN)
    ("proteins, Grb2 and Shc" . SPARSER::COLLECTION)
    ("Ras/Raf/MEK/Erk" . SPARSER::COLLECTION)
    ("collagen-homology" . SPARSER::COLLECTION)
    ("Grb2/RTK" . SPARSER::COLLECTION)
    ("Ligand or receptor" . SPARSER::COLLECTION)
    ("virtually all metastatic CRC" . SPARSER::PROTEIN)
    ("the receptor and/or its ligand" . SPARSER::COLLECTION)
    ("These latter proteins" . SPARSER::PROTEIN)
    ("kinases (RTK)" . SPARSER::KINASE) ("Erk and Akt" . SPARSER::COLLECTION)
    ("Grb2 and Shc" . SPARSER::COLLECTION)
    ("Ras/MEK/Erk" . SPARSER::COLLECTION) ("Grb2 or Shc" . SPARSER::COLLECTION)
    ("Tpr" . SPARSER::PROTEIN)
    ("the proximal signaling molecules" . SPARSER::MOLECULE)
    ("HGF receptor" . SPARSER::PROTEIN) ("Sgk269" . SPARSER::PROTEIN)
    ("K-RAS" . SPARSER::PROTEIN) ("TGF-α" . SPARSER::PROTEIN)
    ("Snail1" . SPARSER::PROTEIN) ("Snail2" . SPARSER::PROTEIN)
    ("P-Erk" . SPARSER::PROTEIN) ("Shc2" . SPARSER::PROTEIN)
    ("Shc1" . SPARSER::PROTEIN) ("PD184352" . SPARSER::DRUG)
    ("CH1" . SPARSER::PROTEIN) ("Src-homology" . SPARSER::PROTEIN)
    ("GGB" . SPARSER::PROTEIN) ("MM" . SPARSER::PROTEIN)
    ("TE" . SPARSER::PROTEIN) ("SFT and NF1" . SPARSER::COLLECTION)
    ("STF" . SPARSER::PROTEIN) ("pararenal SFT" . SPARSER::PROTEIN)
    ("a well-encapsulated pararenal SFT" . SPARSER::PROTEIN)
    ("aggressive behavior, and vice versa" . SPARSER::PROTEIN)
    ("cytokeratins and/or desmin has" . SPARSER::COLLECTION)
    ("CD 34, CD99, and Bcl-2" . SPARSER::COLLECTION)
    ("antigen and smooth muscle" . SPARSER::COLLECTION)
    ("a well-encapsulated SFT" . SPARSER::PROTEIN)
    ("CD34, CD99, and bcl-2" . SPARSER::COLLECTION)
    ("protein and EMA" . SPARSER::COLLECTION) ("EMA" . SPARSER::PROTEIN)
    ("thin-" . SPARSER::PROTEIN) ("cava" . SPARSER::PROTEIN)
    ("renal or pararenal SFT" . SPARSER::PROTEIN)
    ("CD34, CD99 and Bcl-2" . SPARSER::COLLECTION)
    ("a right suprarenal SFT" . SPARSER::PROTEIN)
    ("Pararenal SFT" . SPARSER::PROTEIN) ("SFT" . SPARSER::PROTEIN)
    ("CD 34" . SPARSER::PROTEIN) ("S-100" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("c-Kit" . SPARSER::PROTEIN) ("CD117" . SPARSER::PROTEIN)
    ("YG" . SPARSER::MOLECULE) ("CB" . SPARSER::PROTEIN)
    ("v" . SPARSER::PROTEIN) ("GGAA" . SPARSER::PROTEIN)
    ("peripheral leukocytes" . SPARSER::PROTEIN)
    ("AS, RA and SLE" . SPARSER::COLLECTION)
    ("genotype and haplotype" . SPARSER::COLLECTION)
    ("ETS1 genetic polymorphisms and AS" . SPARSER::COLLECTION)
    ("polymorphisms and AS" . SPARSER::COLLECTION)
    ("systemic lupus erythematosus (SLE)" . SPARSER::PROTEIN)
    ("major histocompatibility complex (MHC)" . SPARSER::PROTEIN)
    ("ankylosis" . SPARSER::PROTEIN) ("AS and haplotype" . SPARSER::COLLECTION)
    ("TAT" . SPARSER::PROTEIN) ("Kinesin family member 21B" . SPARSER::PROTEIN)
    ("interleukin 23 receptor" . SPARSER::PROTEIN)
    ("Endoplasmic reticulum aminopeptidase 1" . SPARSER::PROTEIN)
    ("vascular endothelial" . SPARSER::PROTEIN) ("IL23R" . SPARSER::PROTEIN)
    ("KIF21B" . SPARSER::PROTEIN) ("ERAP1" . SPARSER::PROTEIN)
    ("RB and SS" . SPARSER::COLLECTION) ("LP and LM" . SPARSER::COLLECTION)
    ("VN" . SPARSER::PROTEIN) ("BF" . SPARSER::PROTEIN)
    ("SV" . SPARSER::MOLECULE) ("MR" . SPARSER::PROTEIN)
    ("OT" . SPARSER::PROTEIN) ("LB" . SPARSER::PROTEIN)
    ("OB" . SPARSER::PROTEIN) ("RIN" . SPARSER::PROTEIN)
    ("benzidine" . SPARSER::MOLECULE) ("Cyanine" . SPARSER::MOLECULE)
    ("chemoradiotherapy" . SPARSER::PROTEIN)
    ("an important prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a supplementary prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("new valuable prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PARP1 and PARP2" . SPARSER::COLLECTION)
    ("BRCA1 and RAD51" . SPARSER::COLLECTION)
    ("pre- and post-chemoradiotherapy" . SPARSER::COLLECTION)
    ("post-chemoradiotherapy" . SPARSER::PROTEIN-PAIR)
    ("BRCA1 and FANCD2" . SPARSER::COLLECTION)
    ("SLX4/FANCP/BTBD12" . SPARSER::COLLECTION) ("FANCP" . SPARSER::PROTEIN)
    ("FANCM, FANCL, UBE2T and RAD18" . SPARSER::COLLECTION)
    ("the UBE2T (E2) enzyme and a multisubunit ubiquitin E3 ligase"
     . SPARSER::COLLECTION)
    ("FANCA" . SPARSER::PROTEIN)
    ("BRCA1, BRCA2 and RAD51" . SPARSER::COLLECTION)
    ("\"FA/BRCA" . SPARSER::COLLECTION)
    ("FANCJ/BRIP1/BACH" . SPARSER::COLLECTION) ("BACH" . SPARSER::PROTEIN)
    ("an essential protein" . SPARSER::PROTEIN)
    ("BACH1/BRIP1" . SPARSER::COLLECTION)
    ("BLM and RFC1" . SPARSER::COLLECTION) ("PMS2/MLH1" . SPARSER::COLLECTION)
    ("MSH2/MSH6" . SPARSER::COLLECTION)
    ("BACH1/BRIP1/FANCJ" . SPARSER::COLLECTION) ("FANCJ" . SPARSER::PROTEIN)
    ("more active DNA" . SPARSER::DNA) ("radiosensitizer" . SPARSER::DRUG)
    ("FANCD2, RAD51, BRCA1, and BRIP 1" . SPARSER::COLLECTION)
    ("FANCD2, BRCA1, RAD51 and BRIP1" . SPARSER::COLLECTION)
    ("MoAb" . SPARSER::PROTEIN)
    ("classical factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BRCA1, BRCA2, RAD51, FANCD2, BLM and BRIP1" . SPARSER::COLLECTION)
    ("BRCA1, BRCA2, BLM and FANCD2" . SPARSER::COLLECTION)
    ("FANCD2, BLM and RFC" . SPARSER::COLLECTION) ("RFC" . SPARSER::PROTEIN)
    ("RAD51, BRIP1, BLM, BRCA1, BRCA2, BRCC3, HLTF, FANCD2, FANCI, FANCM, FANCL, ATF1, E2F4, E2F2, SMARCA2, SMARCA4 and RFC1"
     . SPARSER::COLLECTION)
    ("FANCL" . SPARSER::PROTEIN) ("FANCM" . SPARSER::PROTEIN)
    ("FANCI" . SPARSER::PROTEIN) ("HLTF" . SPARSER::PROTEIN)
    ("BLM" . SPARSER::PROTEIN) ("hemoglobin and FIGO" . SPARSER::COLLECTION)
    ("FANCD2, RAD51, BRCA1 and BRIP1" . SPARSER::COLLECTION)
    ("FA/BRCA" . SPARSER::COLLECTION)
    ("BRCA1, BRIP1, FANCD2 and RAD51" . SPARSER::COLLECTION)
    ("BTBD12" . SPARSER::PROTEIN) ("UBE2T" . SPARSER::PROTEIN)
    ("BRCA2 protein" . SPARSER::PROTEIN) ("fanconi anemia" . SPARSER::PROTEIN)
    ("BRIP 1" . SPARSER::PROTEIN) ("RFC1" . SPARSER::PROTEIN)
    ("SMARCA4" . SPARSER::PROTEIN) ("SMARCA2" . SPARSER::PROTEIN)
    ("ATF1" . SPARSER::PROTEIN) ("BRCC3" . SPARSER::PROTEIN)
    ("PA1" . SPARSER::PROTEIN) ("BRIP1" . SPARSER::PROTEIN)
    ("JK" . SPARSER::PROTEIN) ("FH and CV" . SPARSER::COLLECTION)
    ("Adriamycin" . SPARSER::DRUG) ("dual HER2" . SPARSER::PROTEIN)
    ("Pertuzumab and Herceptin" . SPARSER::COLLECTION)
    ("pertuzumab and trastuzumab" . SPARSER::COLLECTION)
    ("mastectomy" . SPARSER::PROTEIN)
    ("post-mastectomy" . SPARSER::PROTEIN-PAIR)
    ("Pertuzumab and Trastuzumab" . SPARSER::COLLECTION)
    ("docetaxel, trastuzumab, and pertuzumab" . SPARSER::COLLECTION)
    ("docetaxel and trastuzumab" . SPARSER::COLLECTION)
    ("pertuzumab and review" . SPARSER::COLLECTION)
    ("trastuzumab and pertuzumab" . SPARSER::COLLECTION)
    ("pertuzumab" . SPARSER::DRUG) ("HSL" . SPARSER::PROTEIN)
    ("SBK" . SPARSER::PROTEIN) ("SHS" . SPARSER::PROTEIN)
    ("Acetaldehyde" . SPARSER::MOLECULE)
    ("CD 166 and p21" . SPARSER::COLLECTION)
    ("CD44, EpCAM, ALDH1 or HIF1α" . SPARSER::COLLECTION)
    ("metalloproteinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("pre- and post-" . SPARSER::COLLECTION) ("post-" . SPARSER::PROTEIN)
    ("ALDH1,CD166 and EpCAM" . SPARSER::COLLECTION)
    ("a prognostic or predictive factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("pre-CRT" . SPARSER::COLLECTION)
    ("Ki67, HIF1α and CD44" . SPARSER::COLLECTION)
    ("ALDH1, CD166 and EpCAM" . SPARSER::COLLECTION)
    ("Ki67, HIF1α, ALDH1, CD166, EpCAM and CD44" . SPARSER::COLLECTION)
    ("p53, TS, BAX, p21 and CD133" . SPARSER::COLLECTION)
    ("CD166 and p21" . SPARSER::COLLECTION) ("Odd" . SPARSER::PROTEIN)
    ("Ki67 and p21" . SPARSER::COLLECTION)
    ("p53, Ki67, HIF1α, CD44 and CD133" . SPARSER::COLLECTION)
    ("5-FU and leucovorin" . SPARSER::COLLECTION)
    ("irinotecan and cetuximab" . SPARSER::COLLECTION)
    ("received preoperative CRT" . SPARSER::PROTEIN)
    ("still no validated biomarkers" . SPARSER::MOLECULE)
    ("bax" . SPARSER::PROTEIN) ("the preoperative CRT" . SPARSER::PROTEIN)
    ("ARO" . SPARSER::PROTEIN) ("CAO" . SPARSER::MOLECULE)
    ("predictive biomarker" . SPARSER::MOLECULE)
    ("p21 and CD166" . SPARSER::COLLECTION)
    ("Ki67, TS, BAX, EpCAM, p53, p21, EGFR, CD44, CD133, CD166, HIF1α and ALDH1"
     . SPARSER::COLLECTION)
    ("TS" . SPARSER::PROTEIN)
    ("received 5-FU based pre-operative CRT" . SPARSER::PROTEIN)
    ("Hypoxia-inducible factor 1-alpha" . SPARSER::PROTEIN)
    ("Epithelial cell adhesion molecule" . SPARSER::PROTEIN)
    ("Thymidylate synthase" . SPARSER::PROTEIN) ("CD 133" . SPARSER::PROTEIN)
    ("CD 44" . SPARSER::PROTEIN) ("CD 166" . SPARSER::PROTEIN)
    ("bcl2" . SPARSER::PROTEIN) ("of 45 " . SPARSER::PROTEIN)
    ("taxane and anti-STMN1" . SPARSER::COLLECTION)
    ("taxol and anti-STMN1" . SPARSER::COLLECTION)
    ("S phase kinase-associated protein 2" . SPARSER::PROTEIN)
    ("poor RFS" . SPARSER::PROTEIN) ("postoperative RFS" . SPARSER::PROTEIN)
    ("other existing clinicopathological factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p27 and clinicopathological factors" . SPARSER::COLLECTION)
    ("STMN1, p27 and clinicopathological factors" . SPARSER::COLLECTION)
    ("inhibitors (CKI)" . SPARSER::INHIBITOR)
    ("STMN1 and p27" . SPARSER::COLLECTION) ("SKP2" . SPARSER::PROTEIN)
    ("OP18" . SPARSER::PROTEIN) ("oncoprotein 18" . SPARSER::PROTEIN)
    ("STMN1" . SPARSER::PROTEIN) ("Stathmin1" . SPARSER::PROTEIN)
    ("the kinases, phosphatases," . SPARSER::KINASE)
    ("p50/p105" . SPARSER::COLLECTION)
    ("A functional polymorphism" . SPARSER::PROTEIN) ("IkB" . SPARSER::PROTEIN)
    ("p50–p65" . SPARSER::COLLECTION) ("NF-" . SPARSER::PROTEIN)
    ("NF- κ B2" . SPARSER::PROTEIN) ("I-kappa-B" . SPARSER::PROTEIN)
    ("IkK- β" . SPARSER::PROTEIN) ("IkK- α" . SPARSER::PROTEIN)
    ("runt" . SPARSER::PROTEIN)
    ("transforming growth factor (TGF)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a more grossly infiltrative type" . TYPE)
    ("a more grossly depressed type" . TYPE) ("depressed type" . TYPE)
    ("IIIC" . SPARSER::PROTEIN) ("IIIB" . SPARSER::DRUG)
    ("an oncogene and has" . SPARSER::COLLECTION)
    ("mucin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SMAD family member 2" . SPARSER::PROTEIN) ("Tbx5" . SPARSER::PROTEIN)
    ("paired box 3" . SPARSER::PROTEIN) ("Pax3" . SPARSER::PROTEIN)
    ("transcription factor-1" . SPARSER::PROTEIN) ("TTF-1" . SPARSER::PROTEIN)
    ("PPAR    γ" . SPARSER::PROTEIN) ("family member 2" . SPARSER::PROTEIN)
    ("forkhead box P3" . SPARSER::PROTEIN) ("BMP-7" . SPARSER::PROTEIN)
    ("bone morphogenetic proteins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Transcriptional coactivator" . SPARSER::PROTEIN)
    ("the profibrotic mediator PAI-1" . SPARSER::PROTEIN)
    ("receptor and TGF- β 1" . SPARSER::COLLECTION)
    ("homodimers or heterodimers" . SPARSER::COLLECTION)
    ("Fos, Jun, and ATF2" . SPARSER::COLLECTION)
    ("MKP-5 and MKP-1 " . SPARSER::COLLECTION)
    ("phosphatases, MKP-5 and MKP-1" . SPARSER::COLLECTION)
    ("NF- κ B and MAPK" . SPARSER::COLLECTION)
    ("Smads, NF- κ B, and AP-1" . SPARSER::COLLECTION)
    ("stimulant-" . SPARSER::DRUG) ("stimulant" . SPARSER::DRUG)
    ("ATF2 and c-Jun" . SPARSER::COLLECTION)
    ("MKP-5/MKP-1" . SPARSER::COLLECTION)
    ("MKP-5 and MKP-1" . SPARSER::COLLECTION)
    ("phosphatase (MPK)" . SPARSER::PROTEIN)
    ("p38 and JNK" . SPARSER::COLLECTION)
    ("a MEK inhibitor (PD98059) nor a PI3K inhibitor (LY294002)"
     . SPARSER::COLLECTION)
    ("parthenolide" . SPARSER::MOLECULE)
    ("their specific pharmacologic inhibitors" . SPARSER::INHIBITOR)
    ("the proinflammatory cytokine" . SPARSER::PROTEIN)
    ("TNF- α , or HDAC" . SPARSER::COLLECTION)
    ("another HDAC inhibitor Trichostatin A (TSA) has" . SPARSER::PROTEIN)
    ("a hybrid-polar HDAC inhibitor" . SPARSER::INHIBITOR)
    ("HAT and HDAC" . SPARSER::COLLECTION)
    ("Histone acetyltransferase (HAT) and histone deacetylase (HDAC)"
     . SPARSER::COLLECTION)
    ("histone and nonhistone" . SPARSER::COLLECTION)
    ("TNF- α and PAI-1" . SPARSER::COLLECTION)
    ("MAPK/AP-1" . SPARSER::COLLECTION) ("ATF2/c-Jun" . SPARSER::COLLECTION)
    ("p38/JNK" . SPARSER::COLLECTION) ("phosphatase-" . SPARSER::PHOSPHATASE)
    ("CBHA" . SPARSER::PROTEIN) ("MeT" . SPARSER::PROTEIN)
    ("TNF- α or HDAC" . SPARSER::COLLECTION) ("PAI-" . SPARSER::PROTEIN)
    ("inhibitor-" . SPARSER::INHIBITOR)
    ("Tumor necrosis factor-" . SPARSER::PROTEIN) ("MKP-1 " . SPARSER::PROTEIN)
    ("MKP-5" . SPARSER::PROTEIN) ("α -SMA" . SPARSER::PROTEIN)
    ("mRNA and promoter" . SPARSER::COLLECTION)
    ("SAHA and TSA" . SPARSER::COLLECTION) ("MLH" . SPARSER::PROTEIN)
    ("gene and microRNA" . SPARSER::COLLECTION)
    ("lysosomal and proteasomal inhibitors" . SPARSER::COLLECTION)
    ("proteasomal inhibitors" . SPARSER::INHIBITOR)
    ("H3 K9 and histone H2B" . SPARSER::COLLECTION)
    ("heterogeneous nuclear ribonucleoprotein K (HNRNPK) (for miR-7-1) and pituitary gland specific factor 1 (PGSF1)"
     . SPARSER::COLLECTION)
    ("heterogeneous nuclear ribonucleoprotein K (HNRNPK)" . SPARSER::PROTEIN)
    ("an intronic miRNA" . SPARSER::MICRO-RNA)
    ("miR-7-3" . SPARSER::COLLECTION) ("HNRNPK" . SPARSER::PROTEIN)
    ("NH 4 Cl and chloroquine" . SPARSER::COLLECTION)
    ("α -tubulin and subsequent EGFR" . SPARSER::COLLECTION)
    ("subsequent EGFR" . SPARSER::PROTEIN)
    ("these proteasomal inhibitors" . SPARSER::INHIBITOR)
    ("lactacystin" . SPARSER::DRUG) ("myc-HDAC7" . SPARSER::COLLECTION)
    ("myc-HDAC3" . SPARSER::COLLECTION)
    ("the protein (Figures xref and xref ) and mRNA ( xref )"
     . SPARSER::COLLECTION)
    ("HDAC3 or HDAC7" . SPARSER::COLLECTION)
    ("HDAC3 and HDAC7" . SPARSER::COLLECTION)
    ("HDAC1, HDAC2, HDAC4, and HDAC5" . SPARSER::COLLECTION)
    ("pan-HDAC" . SPARSER::COLLECTION) ("TSA or SAHA" . SPARSER::COLLECTION)
    ("TSA and SAHA" . SPARSER::COLLECTION)
    ("Lap" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("histones or transcription factor" . SPARSER::COLLECTION)
    ("epidermal growth factor receptor (EGFR) and HER2 receptors"
     . SPARSER::COLLECTION)
    ("a dual tyrosine kinase inhibitor" . SPARSER::INHIBITOR)
    ("GW" . SPARSER::PROTEIN) ("this dual inhibitor" . SPARSER::INHIBITOR)
    ("a dual EGFR/HER2 tyrosine kinase inhibitor" . SPARSER::INHIBITOR)
    ("H3 K9" . SPARSER::PROTEIN)
    ("heterogeneous nuclear ribonucleoprotein K" . SPARSER::PROTEIN)
    ("TSA 1 " . SPARSER::PROTEIN) ("α -tubulin" . SPARSER::PROTEIN)
    ("H3 K9" . SPARSER::PROTEIN) ("K5" . SPARSER::PROTEIN)
    ("β -gal" . SPARSER::PROTEIN) ("murine leukemia virus" . SPARSER::PROTEIN)
    ("suberoylanilide hydroxamic acid" . SPARSER::DRUG)
    ("HER2/HER3 heterodimers and the loss" . SPARSER::COLLECTION)
    ("ER and BCL-2" . SPARSER::COLLECTION) ("HER/HER3" . SPARSER::COLLECTION)
    ("a durable and strong trigger" . SPARSER::PROTEIN)
    ("PI3 K/Akt" . SPARSER::COLLECTION) ("Akt and PI3K" . SPARSER::COLLECTION)
    ("chromogenic PLA" . SPARSER::PROTEIN)
    ("heterodimer and patient" . SPARSER::COLLECTION)
    ("HR  " . SPARSER::PROTEIN) ("PTEN and p53" . SPARSER::COLLECTION)
    ("PgR (all p  < 0.001) and MUC-1 ( p  = 0.020)" . SPARSER::COLLECTION)
    ("p53 ( p  < 0.001) and PTEN ( p  = 0.006)" . SPARSER::COLLECTION)
    ("pAkt ( p  = 0.044), PI3K ( p  < 0.001), p53 ( p  < 0.001) and PTEN ( p  = 0.006)"
     . SPARSER::COLLECTION)
    ("p  " . SPARSER::PROTEIN)
    ("HER2/HER3 heterodimers and correlation" . SPARSER::COLLECTION)
    ("an active heterodimer" . SPARSER::HETERODIMER)
    ("HER2 and HER3" . SPARSER::COLLECTION)
    ("EGFR, HER2, HER3 and HER4" . SPARSER::COLLECTION)
    ("receptors, ER and PgR" . SPARSER::COLLECTION)
    ("PI3K, pAKT, ER, PgR, HER3, BCL2, p53, PTEN and p21"
     . SPARSER::COLLECTION)
    ("PI3 K" . SPARSER::PROTEIN) ("MUC-1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("AKT-GSK3β" . SPARSER::COLLECTION)
    ("SLIT2 , SLIT3 , pri-mir-218-1, and pri-mir-218-2" . SPARSER::COLLECTION)
    ("SLIT2 (pri-mir-218-1) and SLIT3 (pri-mir-218-2)" . SPARSER::COLLECTION)
    ("BM7" . SPARSER::PROTEIN) ("PXN" . SPARSER::PROTEIN)
    ("SLIT2 ( xref ) and miR-218 ( xref )" . SPARSER::COLLECTION)
    ("BM7-sh" . SPARSER::PROTEIN-PAIR)
    ("ADAM9 , SLIT2 , miR-218, and CDH2" . SPARSER::COLLECTION)
    ("ADAM9 , miR-218, and CDH2" . SPARSER::COLLECTION)
    ("tet" . SPARSER::PROTEIN) ("bp" . SPARSER::PROTEIN)
    ("SLIT3 and pri-mir-218-2" . SPARSER::COLLECTION)
    ("SLIT2 and pri-mir-218-1" . SPARSER::COLLECTION)
    ("CDH1 (E-cadherin) and VIM (vimentin) protein" . SPARSER::COLLECTION)
    ("western blot ( xref ) and immunohistochemistry ( xref )"
     . SPARSER::COLLECTION)
    ("ADAM9 and CDH2" . SPARSER::COLLECTION)
    ("ADAM9-CDH2" . SPARSER::COLLECTION)
    ("disintegrin and metalloprotease" . SPARSER::COLLECTION)
    ("ADAM" . SPARSER::PROTEIN) ("The mature miRNA" . SPARSER::MICRO-RNA)
    ("their mature form" . SPARSER::FORM) ("dicer" . SPARSER::PROTEIN)
    ("Intronic miRNAs" . SPARSER::MICRO-RNA)
    ("intronic miRNAs" . SPARSER::MICRO-RNA)
    ("Intergenic miRNAs" . SPARSER::MICRO-RNA) ("introns" . SPARSER::PROTEIN)
    ("approximately 22 nucleotides" . SPARSER::NUCLEOTIDE)
    ("Only miR-145 has" . SPARSER::PROTEIN)
    ("CDH2 and ADAM9" . SPARSER::COLLECTION)
    ("the major histological type" . TYPE)
    ("SLIT2 and miR-218" . SPARSER::COLLECTION)
    ("CDH2 (N-cadherin, a mesenchymal marker of the epithelial-mesenchymal transition) and ADAM9 (a type I transmembrane protein)"
     . SPARSER::COLLECTION)
    ("long form" . SPARSER::PROTEIN) ("beta-catenin" . SPARSER::PROTEIN)
    ("ROBO1" . SPARSER::PROTEIN) ("ddH 2" . SPARSER::PROTEIN)
    ("EF1α" . SPARSER::PROTEIN) ("EF1A" . SPARSER::PROTEIN)
    ("N-Cadherin" . SPARSER::PROTEIN) ("SLIT3" . SPARSER::PROTEIN)
    ("exportin 5" . SPARSER::PROTEIN) ("Pre-miRNAs" . SPARSER::RNA)
    ("pre-miRNA" . SPARSER::RNA) ("TP63" . SPARSER::PROTEIN)
    ("Twist 1" . SPARSER::PROTEIN) ("Neural cadherin" . SPARSER::PROTEIN)
    ("SLIT2" . SPARSER::PROTEIN) ("ADAM9" . SPARSER::PROTEIN)
    ("EOMES" . SPARSER::PROTEIN)
    ("The phosphodeficient CCND2 mutant" . SPARSER::MUTANT)
    ("GFP and Tbr2" . SPARSER::COLLECTION)
    ("phosphodeficient CCND2" . SPARSER::PROTEIN)
    ("Pax6 and Tbr2" . SPARSER::COLLECTION)
    ("phosphodeficient forms" . SPARSER::FORM)
    ("the proliferative fraction (P-fraction, ie: cells that remain in the cell cycle, GFP+/BrdU+/Ki67+) and exit fraction (ie: those cells that have exited the cell cycle 24 hours post-BrdU injection, GFP+/BrdU+/Ki67-)"
     . SPARSER::COLLECTION)
    ("anti-GFP, anti-BrdU, and anti-Ki67" . SPARSER::COLLECTION)
    ("Ki67-" . SPARSER::PROTEIN)
    ("pregnant dams 24 hours post-IUEP" . SPARSER::PROTEIN-PAIR)
    ("post-IUEP" . SPARSER::PROTEIN-PAIR) ("dams" . SPARSER::PROTEIN)
    ("bromodeoxyuridine" . SPARSER::DRUG)
    ("the phosphodeficient form" . SPARSER::FORM)
    ("GFP and PH3-immunoreactivity" . SPARSER::COLLECTION)
    ("GFP and PH3" . SPARSER::COLLECTION)
    ("the exogenous WT protein" . SPARSER::PROTEIN)
    ("anti-GFP and anti-Ki67" . SPARSER::COLLECTION)
    ("GFP-" . SPARSER::PROTEIN) ("IRES-eGFP" . SPARSER::PROTEIN-PAIR)
    ("the neighboring p" . SPARSER::PROTEIN)
    ("microcephaly" . SPARSER::PROTEIN) ("IPCs" . SPARSER::PROTEIN)
    ("the pS9" . SPARSER::PROTEIN) ("PIK3R2 and PIK3CA" . SPARSER::COLLECTION)
    ("PIK3CA , PIK3R2, and AKT3" . SPARSER::COLLECTION)
    ("Ccnd2" . SPARSER::PROTEIN) ("PIK3R2 or AKT3" . SPARSER::COLLECTION)
    ("PIK3R2 and AKT3" . SPARSER::COLLECTION)
    ("PIK3CA and AKT3" . SPARSER::COLLECTION)
    ("a smaller fraction" . SPARSER::COMPONENT)
    ("PIK3CA , PIK3R2 or AKT3" . SPARSER::COLLECTION)
    ("MPPH" . SPARSER::PROTEIN) ("BTG3" . SPARSER::PROTEIN)
    ("GLG1" . SPARSER::PROTEIN) ("HN1" . SPARSER::PROTEIN)
    ("TBR2" . SPARSER::PROTEIN) ("PH3" . SPARSER::PROTEIN)
    ("Tbr2" . SPARSER::PROTEIN) ("3 D" . SPARSER::PROTEIN-FAMILY)
    ("LR11" . SPARSER::PROTEIN) ("PIK3R2" . SPARSER::PROTEIN)
    ("cyclin D2" . SPARSER::PROTEIN)
    ("both GCN5 ( xref ) and p300 ( xref )" . SPARSER::COLLECTION)
    ("HATs and other cofactors" . SPARSER::COLLECTION)
    ("TIP60 and p400" . SPARSER::COLLECTION)
    ("both p53 and E1a proteins" . SPARSER::COLLECTION)
    ("STAGA-MYC" . SPARSER::COLLECTION)
    ("MYC and its transcription coactivator complex STAGA"
     . SPARSER::COLLECTION)
    ("Tra1/SAGA" . SPARSER::COLLECTION)
    ("an acetylation-defective MYC mutant" . SPARSER::MUTANT)
    ("has" . SPARSER::PROTEIN)
    ("an artificial TERT promoter-luciferase reporter gene" . SPARSER::PROTEIN)
    ("endogenous MYC and a silent TERT gene" . SPARSER::COLLECTION)
    ("SPT3 and TAF9" . SPARSER::COLLECTION)
    ("GCN5 and MYC" . SPARSER::COLLECTION) ("GCN5/STAGA" . SPARSER::COLLECTION)
    ("GCN5 and native STAGA" . SPARSER::COLLECTION)
    ("GCN5/PCAF" . SPARSER::COLLECTION)
    ("GCN5 and the purified STAGA complex" . SPARSER::COLLECTION)
    ("MAX and the CDK9 subunit" . SPARSER::COLLECTION)
    ("Flag-MYC" . SPARSER::COLLECTION) ("TAD 2" . SPARSER::PROTEIN)
    ("p400 and TIP60" . SPARSER::COLLECTION) ("Δ54-56" . SPARSER::PROTEIN)
    ("the triple mutant" . SPARSER::MUTANT)
    ("GCN5 or its paralog PCAF ( xref , xref , xref )" . SPARSER::COLLECTION)
    ("M2 and M3" . SPARSER::COLLECTION) ("GCN5 and map" . SPARSER::COLLECTION)
    ("the ATAC-specific subunit YEATS2 and the Mediator subunit MED1"
     . SPARSER::COLLECTION)
    ("most other STAGA subunits, the ATAC-specific subunit YEATS2 and the Mediator subunit MED1"
     . SPARSER::COLLECTION)
    ("covalently links amine" . SPARSER::MOLECULE)
    ("a thiol-cleavable homobifunctional chemical crosslinker"
     . SPARSER::PROTEIN)
    ("crosslinker" . SPARSER::PROTEIN) ("DSP" . SPARSER::PROTEIN)
    ("MYC TAD indeed contacts TRRAP and/or other subunits"
     . SPARSER::COLLECTION)
    ("MYC TAD indeed contacts TRRAP" . SPARSER::PROTEIN)
    ("STAGA and the TIP60" . SPARSER::COLLECTION)
    ("3.2 MYC TAD contacts both the GCN5 and TRRAP subunits"
     . SPARSER::FRAGMENT)
    ("GCN5 and TRRAP" . SPARSER::COLLECTION)
    ("immobilized GST-MYC(1-263) fusion protein and HeLa nuclear"
     . SPARSER::COLLECTION)
    ("GST-MYC" . SPARSER::COLLECTION)
    ("a possible MYC-interacting protein" . SPARSER::PROTEIN)
    ("UBAP2L and NC2β" . SPARSER::COLLECTION)
    ("GCN5 and the STAGA complex" . SPARSER::COLLECTION)
    ("GCN5, TAF9, and ADA2B" . SPARSER::COLLECTION)
    ("TIP60 and STAGA" . SPARSER::COLLECTION)
    ("Ada1, Taf6 and Taf12" . SPARSER::COLLECTION) ("Taf12" . SPARSER::PROTEIN)
    ("Taf6" . SPARSER::PROTEIN) ("Taf" . SPARSER::PROTEIN)
    ("the essential Tra1/TRRAP subunit" . SPARSER::FRAGMENT)
    ("NuA4 and SAGA" . SPARSER::COLLECTION)
    ("Tra1/TRRAP" . SPARSER::COLLECTION) ("MYC-nick" . SPARSER::COLLECTION)
    ("SPT3-TAF9" . SPARSER::COLLECTION) ("TAD 1" . SPARSER::PROTEIN)
    ("ATAC" . SPARSER::PROTEIN) ("metazoan" . SPARSER::PROTEIN-FAMILY)
    ("the yeast SAGA (Spt-Ada-Gcn5 Acetyltransferase) and derivative SAGA-like (i.e., SLIK/SALSA) complexes ( xref , xref ) and their homologous mammalian STAGA (SPT3-TAF9-GCN5/PCAF Acetyltransferase) complexes ( xref - xref )"
     . SPARSER::COLLECTION)
    ("the yeast NuA4 complex ( xref ) and the homologous mammalian TIP60 complex ( xref )"
     . SPARSER::COLLECTION)
    ("the yeast SAGA (Spt-Ada-Gcn5 Acetyltransferase) and derivative SAGA-like (i.e., SLIK/SALSA)"
     . SPARSER::COLLECTION)
    ("their homologous mammalian STAGA" . SPARSER::PROTEIN)
    ("the homologous mammalian TIP60 complex" . SPARSER::BIO-COMPLEX)
    ("SPT3-TAF9-GCN5/PCAF" . SPARSER::COLLECTION)
    ("SLIK/SALSA" . SPARSER::COLLECTION) ("Spt-Ada-Gcn5" . SPARSER::COLLECTION)
    ("SALSA" . SPARSER::PROTEIN) ("Ada" . SPARSER::PROTEIN)
    ("SAGA" . SPARSER::PROTEIN) ("MYC-TRRAP" . SPARSER::COLLECTION)
    ("all active genes" . SPARSER::GENE)
    ("the transactivation/transformation-associated protein (TRRAP) and several histone acetyltransferases (HATs)"
     . SPARSER::COLLECTION)
    ("protein (TRRAP)" . SPARSER::PROTEIN) ("TRRAP-HAT" . SPARSER::COLLECTION)
    ("MYC and its family members MYCN and MYCL ( xref )" . SPARSER::COLLECTION)
    ("MYCN and MYCL" . SPARSER::COLLECTION) ("MYCL" . SPARSER::PROTEIN)
    ("MYCN" . SPARSER::PROTEIN) ("metazoans" . SPARSER::PROTEIN-FAMILY)
    ("TRRAP and GCN5" . SPARSER::COLLECTION) ("STAGA" . SPARSER::PROTEIN)
    ("MYC-STAGA" . SPARSER::COLLECTION) ("MAX" . SPARSER::PROTEIN)
    ("GCN5 and STAGA" . SPARSER::COLLECTION)
    ("both TRRAP and the GCN5 acetyltransferase" . SPARSER::COLLECTION)
    ("TRRAP and/or other subunits" . SPARSER::COLLECTION)
    ("these macromolecular complexes" . SPARSER::BIO-COMPLEX)
    ("“SPT3-TAF9-GCN5" . SPARSER::COLLECTION)
    ("Acetyltransferase" . SPARSER::PROTEIN) ("TIP48" . SPARSER::PROTEIN)
    ("ADA2" . SPARSER::PROTEIN) ("MYC 1" . SPARSER::PROTEIN)
    ("NC2β" . SPARSER::PROTEIN) ("UBAP2L" . SPARSER::PROTEIN)
    ("FAM48A" . SPARSER::PROTEIN) ("MED1" . SPARSER::PROTEIN)
    ("TAF12" . SPARSER::PROTEIN) ("YEATS2" . SPARSER::PROTEIN)
    ("GL2" . SPARSER::PROTEIN) ("hGCN5" . SPARSER::PROTEIN)
    ("ADA2B" . SPARSER::PROTEIN) ("alpha-tubulin" . SPARSER::PROTEIN)
    ("STAF65γ" . SPARSER::PROTEIN) ("p400" . SPARSER::PROTEIN)
    ("Gcn5" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TIP60" . SPARSER::PROTEIN)
    ("NuA4" . SPARSER::PROTEIN-FAMILY) ("yeast)" . SPARSER::PROTEIN)
    ("Tra1" . SPARSER::PROTEIN) ("GCN5" . SPARSER::PROTEIN)
    ("TAF9" . SPARSER::PROTEIN) ("SPT3" . SPARSER::PROTEIN)
    ("a minimal domain MMP" . SPARSER::PROTEIN)
    ("matrilysin" . SPARSER::PROTEIN)
    ("laminin and type IV collagen" . SPARSER::COLLECTION)
    ("Lv" . SPARSER::MOLECULE) ("CON and NC" . SPARSER::COLLECTION)
    ("NC and CON" . SPARSER::COLLECTION) ("group (NC)" . SPARSER::MOLECULE)
    ("COX-2 and MMP-7" . SPARSER::COLLECTION)
    ("the pathological TNM" . SPARSER::MOLECULE)
    ("MMP-7 and COX-2" . SPARSER::COLLECTION)
    ("Akt and MAPK" . SPARSER::COLLECTION)
    ("MMP-7 and MMP-9" . SPARSER::COLLECTION) ("BCA" . SPARSER::PROTEIN)
    ("lentiviral vector-mediated MMP-7 siRNA" . SPARSER::PROTEIN)
    ("LAC" . SPARSER::PROTEIN) ("MMP-7" . SPARSER::PROTEIN)
    ("RAS, B-RAF, E2F3, and SRSF1" . SPARSER::COLLECTION)
    ("Akt/mTORC1" . SPARSER::COLLECTION)
    ("Akt- and mTORC1-phosphorylated PRAS40" . SPARSER::COLLECTION)
    ("RPL11-PRAS40" . SPARSER::COLLECTION)
    ("PRAS40-14-3-3" . SPARSER::COLLECTION)
    ("mature ribosomes" . SPARSER::BIO-COMPLEX)
    ("a nuclear-specific PRAS40-associated protein" . SPARSER::PROTEIN)
    ("Crm1-dependent nuclear" . SPARSER::PROTEIN)
    ("p53 or RPL11" . SPARSER::COLLECTION)
    ("RPL11 binding-null PRAS40 T246A" . SPARSER::PROTEIN)
    ("p53 and p21" . SPARSER::COLLECTION)
    ("Doxycyline (Dox)-inducible NS or PRAS40-targeted shRNAs"
     . SPARSER::COLLECTION)
    ("KD and ActD" . SPARSER::COLLECTION)
    ("either NS or PRAS40-targeted shRNAs" . SPARSER::COLLECTION)
    ("ubiquitin-ligase activity" . SPARSER::COLLECTION)
    ("RPL11-HDM2" . SPARSER::COLLECTION)
    ("what effect PRAS40" . SPARSER::PROTEIN)
    ("the amino acid- and serum-stimulated kinase activities of mTORC1 and Akt"
     . SPARSER::COLLECTION)
    ("amino acid-" . SPARSER::AMINO-ACID)
    ("Akt- and mTORC1-activity" . SPARSER::COLLECTION)
    ("exogenous Flag-PRAS40" . SPARSER::COLLECTION)
    ("Akt or mTOR" . SPARSER::COLLECTION) ("mTOR or Akt" . SPARSER::COLLECTION)
    ("Leu and Met" . SPARSER::COLLECTION) ("HA-Akt" . SPARSER::COLLECTION)
    ("amino acids and serum factors" . SPARSER::COLLECTION)
    ("mTORC1 and Akt" . SPARSER::COLLECTION)
    ("the nuclear PRAS40- and RPL11-containing complex" . SPARSER::COLLECTION)
    ("PIs" . SPARSER::PROTEIN) ("PRAS40-Raptor" . SPARSER::COLLECTION)
    ("Raptor/mTORC1" . SPARSER::COLLECTION)
    ("Ser or Thr" . SPARSER::COLLECTION)
    ("Raptor and 14-3-3" . SPARSER::COLLECTION)
    ("GST-PRAS40" . SPARSER::COLLECTION)
    ("the nuclear-specific PRAS40- and RPL11-containing complex"
     . SPARSER::COLLECTION)
    ("most likely representing monomeric Raptor" . SPARSER::PROTEIN)
    ("around 100–200 kDa" . SPARSER::PROTEIN)
    ("approximately 450–700 kDa" . SPARSER::PROTEIN)
    ("The smaller PRAS40 complex" . SPARSER::BIO-COMPLEX)
    ("approximately 2,600 kDa" . SPARSER::PROTEIN)
    ("mTORC1 or a novel complex" . SPARSER::COLLECTION)
    ("The nuclear PRAS40- and RPL11-containing complex" . SPARSER::COLLECTION)
    ("Venus-L11" . SPARSER::COLLECTION)
    ("Neither non-specific IgG nor PRAS40-specific antibody"
     . SPARSER::COLLECTION)
    ("PRAS40-L11" . SPARSER::COLLECTION)
    ("PRAS40 and RPL11" . SPARSER::COLLECTION) ("RPs" . SPARSER::PROTEIN)
    ("each subcellular fraction" . SPARSER::COMPONENT)
    ("N-terminally or C-terminally" . SPARSER::COLLECTION)
    ("Flag-PRAS40" . SPARSER::COLLECTION)
    ("what function PRAS40" . SPARSER::PROTEIN)
    ("at least two putative NES" . SPARSER::PROTEIN)
    ("Ven-PRAS40" . SPARSER::COLLECTION)
    ("Leptomycin B (LMB)" . SPARSER::MOLECULE)
    ("Venus-PRAS40" . SPARSER::COLLECTION) ("LMB" . SPARSER::MOLECULE)
    ("Venus- and Flag-tagged-PRAS40" . SPARSER::COLLECTION)
    ("Venus-" . SPARSER::PROTEIN)
    ("The resultant nuclear fraction" . SPARSER::COMPONENT)
    ("GAPDH and calnexin" . SPARSER::COLLECTION)
    ("PRAS40 and other mTORC1 components" . SPARSER::COLLECTION)
    ("a nuclear-specific PRAS40- and RPL11-containing complex"
     . SPARSER::COLLECTION)
    ("PRAS40-" . SPARSER::PROTEIN) ("LKB1 and TSC2" . SPARSER::COLLECTION)
    ("Akt and mTORC1" . SPARSER::COLLECTION)
    ("glucose and amino acids, and growth factors" . SPARSER::COLLECTION)
    ("amino acids, and growth factors" . SPARSER::COLLECTION)
    ("pro-growth/survival" . SPARSER::PROTEIN-PAIR)
    ("Complexes" . SPARSER::BIO-COMPLEX)
    ("Bad, TSC2, and FOXO1" . SPARSER::COLLECTION)
    ("PRAS40-RPL11" . SPARSER::COLLECTION)
    ("RPL11-HDM2-p53" . SPARSER::COLLECTION)
    ("the RPL11 binding-null PRAS40 T246A mutant" . SPARSER::MUTANT)
    ("Akt-" . SPARSER::HUMAN-PROTEIN-FAMILY) ("kDA" . SPARSER::PROTEIN)
    ("-HDM2-p53" . SPARSER::COLLECTION) ("14-3-3 epsilon" . SPARSER::PROTEIN)
    ("X-Gal" . SPARSER::MOLECULE) ("β-Galactosidase" . SPARSER::PROTEIN)
    ("CCL-2" . SPARSER::PROTEIN) ("SRSF1" . SPARSER::PROTEIN)
    ("E2F3" . SPARSER::PROTEIN) ("PICT1" . SPARSER::PROTEIN)
    ("p14ARF" . SPARSER::PROTEIN) ("L11" . SPARSER::PROTEIN)
    ("IP-MS" . SPARSER::PROTEIN) ("Leptomycin B" . SPARSER::MOLECULE)
    ("ribosomal protein L11" . SPARSER::PROTEIN) ("RPL11" . SPARSER::PROTEIN)
    ("Ribosomal Protein L11" . SPARSER::PROTEIN)
    ("Ribosomal Protein" . SPARSER::PROTEIN)
    ("JAK and receptor" . SPARSER::COLLECTION)
    ("SH2–box2" . SPARSER::PROTEIN-PAIR) ("Pro-Phe-Pro" . SPARSER::COLLECTION)
    ("gp130 and EPO-R" . SPARSER::COLLECTION)
    ("JAK2–EPO-R" . SPARSER::COLLECTION) ("JAK1–gp130" . SPARSER::COLLECTION)
    ("JAK3-associated receptors" . SPARSER::PROTEIN)
    ("histidine, glutamine, or arginine" . SPARSER::COLLECTION)
    ("RIN2 and SH2D5" . SPARSER::COLLECTION)
    ("a primitive SH2-containing JAK kinase" . SPARSER::KINASE)
    ("EF and BG" . SPARSER::COLLECTION)
    ("a primordial JAK–receptor" . SPARSER::COLLECTION)
    ("Glu–Glu" . SPARSER::COLLECTION)
    ("phosphoserine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("SH2–phosphopeptide" . SPARSER::PROTEIN-PAIR)
    ("a classical SH2" . SPARSER::PROTEIN) ("classical SH2" . SPARSER::PROTEIN)
    ("SH2 and linker sequence homology" . SPARSER::COLLECTION)
    ("BG" . SPARSER::PROTEIN) ("β1–β2" . SPARSER::COLLECTION)
    ("a basic patch" . SPARSER::PROTEIN) ("paralogs" . SPARSER::PROTEIN)
    ("ezrin, radixin and moesin" . SPARSER::COLLECTION)
    ("moesin" . SPARSER::PROTEIN) ("ezrin" . SPARSER::PROTEIN)
    ("the FERM and SH2 domains form" . SPARSER::COLLECTION)
    ("SAD" . SPARSER::PROTEIN)
    ("TYK2 and the IFNAR1 peptide" . SPARSER::COLLECTION)
    ("SEC" . SPARSER::PROTEIN) ("FERM and SH2-like" . SPARSER::COLLECTION)
    ("FERM" . SPARSER::PROTEIN) ("FERM–SH2" . SPARSER::COLLECTION)
    ("an unexpected evolutionary path" . SPARSER::PROTEIN)
    ("TYK2 and IFNAR1" . SPARSER::COLLECTION)
    ("JAK–receptor" . SPARSER::COLLECTION)
    ("IFNAR1 and IFNAR2" . SPARSER::COLLECTION)
    ("TYK2 and JAK1" . SPARSER::COLLECTION)
    ("the IFNα and β family" . SPARSER::COLLECTION)
    ("sixteen distinct cytokines" . SPARSER::PROTEIN)
    ("receptor–JAK" . SPARSER::COLLECTION)
    ("JAK1, JAK2, JAK3, and TYK2" . SPARSER::COLLECTION)
    ("type I and II cytokine receptors" . SPARSER::COLLECTION)
    ("II cytokine receptors" . SPARSER::RECEPTOR)
    ("essential mediators" . SPARSER::PROTEIN)
    ("cytokine and interferon" . SPARSER::COLLECTION)
    ("divergent receptor" . SPARSER::PROTEIN)
    ("TYK2–IFNAR1" . SPARSER::COLLECTION) ("b-factor" . SPARSER::PROTEIN)
    ("CCP4" . SPARSER::PROTEIN) ("K 2" . SPARSER::PROTEIN)
    ("IFN-α" . SPARSER::PROTEIN) ("L-selenomethionine" . SPARSER::DRUG)
    ("L-leucine" . SPARSER::MOLECULE) ("L-phenylalanine" . SPARSER::MOLECULE)
    ("magnesium sulfate" . SPARSER::DRUG) ("SH2D5" . SPARSER::PROTEIN)
    ("RIN2" . SPARSER::PROTEIN) ("SPT6" . SPARSER::PROTEIN)
    ("Acyl-CoA" . SPARSER::MOLECULE) ("interferon receptor" . SPARSER::PROTEIN)
    ("IFNAR2" . SPARSER::PROTEIN) ("IFNAR1" . SPARSER::PROTEIN)
    ("IFNα" . SPARSER::PROTEIN) ("Tyrosine kinase 2" . SPARSER::PROTEIN)
    ("53BP1 and DNA repair proteins" . SPARSER::COLLECTION)
    ("the MRN complex and the Ku complex ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("TPQ" . SPARSER::MOLECULE)
    ("Surprisingly cells expressing 53BP1-AA mutant" . SPARSER::MUTANT)
    ("distinct foci" . SPARSER::PROTEIN)
    ("replication-induced DNA" . SPARSER::DNA)
    ("53BP1 or 53BP1" . SPARSER::COLLECTION) ("RFP-H2B" . SPARSER::COLLECTION)
    ("RNF8 and RNF168" . SPARSER::COLLECTION)
    ("GST-53BP1-FFR" . SPARSER::COLLECTION) ("NCPs" . SPARSER::PROTEIN)
    ("NCP" . SPARSER::PROTEIN) ("the methylated peptide" . SPARSER::PEPTIDE)
    ("FFR (ED)" . SPARSER::PROTEIN) ("53BP1-FFR" . SPARSER::COLLECTION)
    ("FFR" . SPARSER::PROTEIN) ("ub" . SPARSER::PROTEIN)
    ("wildtype 53BP1 and the phosphonull 53BP1-AA mutant"
     . SPARSER::COLLECTION)
    ("the nuclear soluble fraction" . SPARSER::COMPONENT)
    ("the phosphomimetic 53BP1-ED mutant" . SPARSER::MUTANT)
    ("chromatin-enriched fractions and nuclear-soluble fractions"
     . SPARSER::COLLECTION)
    ("nuclear-soluble fractions" . SPARSER::COMPONENT)
    ("the wildtype 53BP1 or the 53BP1-AA mutant" . SPARSER::COLLECTION)
    ("the wild-type 53BP1 and the 53BP1-AA mutant ( xref )"
     . SPARSER::COLLECTION)
    ("53BP1-ED phosphomimetic mutants" . SPARSER::MUTANT)
    ("aphidicolin" . SPARSER::PROTEIN)
    ("Wildtype 53BP1 and the 53BP1-AA mutant" . SPARSER::COLLECTION)
    ("wildtype 53BP1 or the 53BP1-ED mutant ( xref )" . SPARSER::COLLECTION)
    ("phosphomimetic 53BP1-ED mutant" . SPARSER::MUTANT)
    ("AA and ED" . SPARSER::COLLECTION) ("ED" . SPARSER::PROTEIN)
    ("FLAG and HA" . SPARSER::COLLECTION) ("53BP1-ED" . SPARSER::COLLECTION)
    ("phosphomimetic mutants" . SPARSER::MUTANT)
    ("the precise impact" . SPARSER::PROTEIN)
    ("PLK1 and the p38 MAPK ( xref )" . SPARSER::COLLECTION)
    ("PP4C, or PP4R3β" . SPARSER::COLLECTION)
    ("PLK1 and the p38 MAPK" . SPARSER::COLLECTION)
    ("PLK1 and p38 MAPK" . SPARSER::COLLECTION)
    ("CDK1 or NEK2" . SPARSER::COLLECTION)
    ("SB203580 and SB202190" . SPARSER::COLLECTION)
    ("the Group-based Prediction System (GPS 2.1.2) ( xref ) several isoforms"
     . SPARSER::ISOFORM)
    ("PP4C or PP4R3β" . SPARSER::COLLECTION)
    ("the phospho-T1609/pS1618 antibody and an antibody" . SPARSER::COLLECTION)
    ("PP4C and PP4R3β" . SPARSER::COLLECTION)
    ("PP4C (the catalytic subunit) and PP4R3β" . SPARSER::COLLECTION)
    ("state and site" . SPARSER::COLLECTION)
    ("factors, H2AX, RPA2 and KAP-1" . SPARSER::COLLECTION)
    ("chromatin and DNA" . SPARSER::COLLECTION) ("mitotic DNA" . SPARSER::DNA)
    ("53BP1-" . SPARSER::PROTEIN) ("RPE1" . SPARSER::PROTEIN)
    ("protein phosphatases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Rif1" . SPARSER::PROTEIN) ("RNF168" . SPARSER::PROTEIN)
    ("ABT-888" . SPARSER::DRUG) ("CDT1" . SPARSER::PROTEIN)
    ("NEK2" . SPARSER::PROTEIN) ("GPS 2" . SPARSER::PROTEIN)
    ("BI2536" . SPARSER::DRUG) ("PLK-1" . SPARSER::PROTEIN)
    ("PP4R3" . SPARSER::PROTEIN) ("PP4" . SPARSER::PROTEIN)
    ("p53 binding protein 1" . SPARSER::PROTEIN) ("PP4C" . SPARSER::PROTEIN)
    ("one alternate fate" . SPARSER::PROTEIN)
    ("fatty acid and polyketide" . SPARSER::COLLECTION)
    ("polyketide" . SPARSER::MOLECULE)
    ("H2BK5, H2BK116, and H2BK120" . SPARSER::COLLECTION)
    ("at least 40 non-mitochondrial substrates" . SPARSER::SUBSTRATE)
    ("the predominant mitochondrial K glu substrates" . SPARSER::SUBSTRATE)
    ("reactive thioesters" . SPARSER::MOLECULE)
    ("thioesters" . SPARSER::MOLECULE)
    ("Purified bovine serum albumin (BSA)" . SPARSER::PROTEIN)
    ("acetyl-CoA, crotonyl-CoA, and succinyl-CoA" . SPARSER::COLLECTION)
    ("lysine and tryptophan" . SPARSER::COLLECTION)
    ("dehydrogenase ( GCDH )" . SPARSER::PROTEIN) ("GCDH" . SPARSER::PROTEIN)
    ("pathophysiological states" . SPARSER::BIO-STATE)
    ("possible metabolic states" . SPARSER::BIO-STATE)
    ("NAG" . SPARSER::PROTEIN) ("its monomeric form" . SPARSER::FORM)
    ("carB" . SPARSER::PROTEIN) ("glutaminase" . SPARSER::PROTEIN)
    ("chemically treated recombinant CPS1" . SPARSER::PROTEIN)
    ("a comprehensive map" . SPARSER::PROTEIN) ("HY" . SPARSER::PROTEIN)
    ("a toxic metabolite" . SPARSER::MOLECULE)
    ("EMBL-EBI" . SPARSER::PROTEIN-PAIR) ("EBI" . SPARSER::PROTEIN)
    ("OTC" . SPARSER::PROTEIN) ("HADH" . SPARSER::PROTEIN)
    ("SDHA" . SPARSER::PROTEIN) ("aldehyde" . SPARSER::MOLECULE)
    ("coenzyme" . SPARSER::MOLECULE) ("HADHA" . SPARSER::PROTEIN)
    ("enoyl" . SPARSER::MOLECULE)
    ("the global lysine glutarylation state" . SPARSER::BIO-STATE)
    ("glutaryl-modified histone peptides and SIRT5" . SPARSER::COLLECTION)
    ("malonyl-" . SPARSER::PROTEIN)
    ("SIRT5 and various acylated peptide substrates ( xref , xref , and Table S2C, detailed analyses are included in the xref )"
     . SPARSER::COLLECTION)
    ("fluorogenic peptide substrates" . SPARSER::SUBSTRATE)
    ("the fluorescent substrates" . SPARSER::SUBSTRATE)
    ("nicotinamide (NAM)" . SPARSER::PROTEIN) ("sirtinol" . SPARSER::DRUG)
    ("acetyl-CoA, succinyl-CoA, or glutaryl-CoA" . SPARSER::COLLECTION)
    ("peptide or protein" . SPARSER::COLLECTION)
    ("first treated HeLa cells non-isotopic glutarate" . SPARSER::MOLECULE)
    ("malonate" . SPARSER::DRUG)
    ("isotopic D 4 -glutarate" . SPARSER::MOLECULE)
    ("-glutarate" . SPARSER::MOLECULE) ("glutarate" . SPARSER::MOLECULE)
    ("a tryptic peptide" . SPARSER::PEPTIDE) ("Peptides" . SPARSER::PEPTIDE)
    ("the corresponding tryptic peptides" . SPARSER::PEPTIDE)
    ("the tryptic peptides" . SPARSER::PEPTIDE) ("ammonia" . SPARSER::MOLECULE)
    ("three key cellular metabolites" . SPARSER::PROTEIN)
    ("malonyl" . SPARSER::PROTEIN) ("mal" . SPARSER::PROTEIN)
    ("the cellular NAD +" . SPARSER::MOLECULE)
    ("AMP-activated protein kinase (AMPK) and lysine deacetylases (KDACs or HDACs)"
     . SPARSER::COLLECTION)
    ("acetyl-CoA, SAM, NAD + , and alpha-ketoglutarate" . SPARSER::COLLECTION)
    ("CoA" . SPARSER::MOLECULE) ("carbamoyl" . SPARSER::MOLECULE)
    ("enzymes and mitochondrial" . SPARSER::COLLECTION)
    ("the previously annotated deacetylase" . SPARSER::PROTEIN)
    ("glu" . SPARSER::PROTEIN) ("HCO 3" . SPARSER::MOLECULE)
    ("anti—" . SPARSER::ANTIBODY)
    ("glutamine amidotransferase" . SPARSER::PROTEIN)
    ("SCP2" . SPARSER::PROTEIN) ("ACAT1" . SPARSER::PROTEIN)
    ("ACAA2" . SPARSER::PROTEIN) ("MDH2" . SPARSER::PROTEIN)
    ("NADP +" . SPARSER::MOLECULE) ("acyl-CoA" . SPARSER::MOLECULE)
    ("GOT2" . SPARSER::PROTEIN)
    ("aspartate aminotransferase" . SPARSER::PROTEIN)
    ("Leu-Gly" . SPARSER::MOLECULE) ("Sirt5" . SPARSER::PROTEIN)
    ("SIRT4" . SPARSER::PROTEIN) ("SIRT3" . SPARSER::PROTEIN)
    ("Sirtuin 1" . SPARSER::PROTEIN) ("HDAC 1" . SPARSER::PROTEIN)
    ("DNA mismatch repair protein Msh2" . SPARSER::PROTEIN)
    ("acyl-CoAs" . SPARSER::MOLECULE) ("alpha-ketoglutarate" . SPARSER::DRUG)
    ("CPS1" . SPARSER::PROTEIN) ("synthase 1" . SPARSER::PROTEIN)
    ("SIRT5" . SPARSER::PROTEIN) ("sirtuin 5" . SPARSER::PROTEIN)
    ("the high score group and the low score group (0.87 ± 0.53 vs 0.79 ± 0.55, P =  0.43)"
     . SPARSER::COLLECTION)
    ("an AA group and a non-AA group" . SPARSER::COLLECTION)
    ("a significantly higher RFS" . SPARSER::PROTEIN)
    ("mAU/mL" . SPARSER::COLLECTION) ("prothrombin" . SPARSER::PROTEIN)
    ("des" . SPARSER::PROTEIN)
    ("a high score group (immunoreactivity score >5, n  = 38) and a low score group (immunoreactivity score ≤5, n  = 103)"
     . SPARSER::COLLECTION)
    ("the AA group ( n  = 16) and the AG/GG group ( n  = 125)"
     . SPARSER::COLLECTION)
    ("n  " . SPARSER::PROTEIN) ("AA, AG and GG" . SPARSER::COLLECTION)
    ("other preoperative, intraoperative and pathological factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gene and EGFR" . SPARSER::COLLECTION)
    ("polymorphism and EGFR" . SPARSER::COLLECTION)
    ("recurrent HCC" . SPARSER::PROTEIN) ("SNP and EGFR" . SPARSER::COLLECTION)
    ("SNP and EGF" . SPARSER::COLLECTION)
    ("alpha-fetoprotein" . SPARSER::PROTEIN) ("tip" . SPARSER::PROTEIN)
    ("RNA-or DNA-based" . SPARSER::RNA) ("RNA-or" . SPARSER::RNA)
    ("type and ATCC" . SPARSER::COLLECTION)
    ("mutant TP53 and wild-type TP53" . SPARSER::COLLECTION)
    ("MDM2 and MDMX" . SPARSER::COLLECTION)
    ("controversial genotypes" . SPARSER::PROTEIN) ("Hot" . SPARSER::PROTEIN)
    ("polymorphism (RFLP)" . SPARSER::PROTEIN) ("shorter RNA" . SPARSER::RNA)
    ("miss shorter isoforms" . SPARSER::ISOFORM)
    ("Northern blot" . SPARSER::PROTEIN) ("exogenous TP53" . SPARSER::PROTEIN)
    ("RNA or protein" . SPARSER::COLLECTION) ("mutagens" . SPARSER::MOLECULE)
    ("either chronic lymphocytic or acute myelogenous leukemia"
     . SPARSER::PROTEIN)
    ("TA" . SPARSER::PROTEIN) ("a 3-bp" . SPARSER::PROTEIN-PAIR)
    ("HTB" . SPARSER::DRUG) ("DLD1" . SPARSER::PROTEIN)
    ("STR" . SPARSER::PROTEIN) ("Adr" . SPARSER::PROTEIN)
    ("DNA, RNA, and protein" . SPARSER::COLLECTION)
    ("in turn at least 12 isoforms" . SPARSER::ISOFORM)
    ("intron/exon" . SPARSER::COLLECTION)
    ("TBK1, OPTN , and TLR4" . SPARSER::COLLECTION)
    ("TBK1 and other NTG genes ( OPTN and TLR4 )" . SPARSER::COLLECTION)
    ("OPTN and TLR4" . SPARSER::COLLECTION)
    ("TBK1 and NTG" . SPARSER::COLLECTION) ("no repetitive DNA" . SPARSER::DNA)
    ("migraine" . SPARSER::PROTEIN) ("brimonidine" . SPARSER::DRUG)
    ("hydrochloride" . SPARSER::MOLECULE) ("cup" . SPARSER::PROTEIN)
    ("gene and part" . SPARSER::COLLECTION) ("XPOT" . SPARSER::PROTEIN)
    ("GGR" . SPARSER::PROTEIN) ("TBK1 and OPTN" . SPARSER::COLLECTION)
    ("the only other known NTG gene" . SPARSER::PROTEIN)
    ("OPTN" . SPARSER::PROTEIN) ("MYOC" . SPARSER::PROTEIN)
    ("SIX1/SIX6" . SPARSER::COLLECTION) ("CDKN2B-AS1" . SPARSER::COLLECTION)
    ("CAV1/CAV2" . SPARSER::COLLECTION) ("AS1" . SPARSER::PROTEIN)
    ("NOD2" . SPARSER::PROTEIN) ("ELOVL5" . SPARSER::PROTEIN)
    ("SRBD1" . SPARSER::PROTEIN) ("TMCO1" . SPARSER::PROTEIN)
    ("SIX6" . SPARSER::PROTEIN) ("SIX1" . SPARSER::PROTEIN)
    ("ATOH7" . SPARSER::PROTEIN) ("CAV2" . SPARSER::PROTEIN)
    ("CAV1" . SPARSER::PROTEIN) ("TANK binding kinase1" . SPARSER::PROTEIN)
    ("E-cadherin-E-cadherin" . SPARSER::COLLECTION)
    ("the integrins and the cadherins" . SPARSER::COLLECTION)
    ("PAR-1 or -3" . SPARSER::COLLECTION) ("CDH" . SPARSER::PROTEIN)
    ("PAR-3 KD's" . SPARSER::PROTEIN)
    ("integrin or integrins" . SPARSER::COLLECTION)
    ("the hetero-dimeric transmembrane adhesion proteins" . SPARSER::PROTEIN)
    ("PAR-1 and PAR-3" . SPARSER::COLLECTION)
    ("PAR-1 or PAR-3" . SPARSER::COLLECTION)
    ("receptors, PAR-1 and -3" . SPARSER::COLLECTION)
    ("PAC" . SPARSER::PROTEIN) ("PAR-1 and -3" . SPARSER::COLLECTION)
    ("KDs" . SPARSER::PROTEIN) ("PARs" . SPARSER::PROTEIN)
    ("CDH5" . SPARSER::PROTEIN) ("CDH2" . SPARSER::PROTEIN)
    ("PAR-3" . SPARSER::PROTEIN) ("PAR-1" . SPARSER::PROTEIN)
    ("dNTPs and polymerase" . SPARSER::COLLECTION)
    ("dNTPs" . SPARSER::MOLECULE) ("PCNA and CDKs" . SPARSER::COLLECTION)
    ("CDKs and PCNA" . SPARSER::COLLECTION)
    ("a specific cellular ubiquitin ligase" . SPARSER::PROTEIN)
    ("PCNA nor the ligase" . SPARSER::COLLECTION)
    ("p53 and NS1" . SPARSER::COLLECTION)
    ("the parvoviral NS1 protein" . SPARSER::PROTEIN)
    ("over-expressed FLAG-tagged p21 and endogenous PCNA"
     . SPARSER::COLLECTION)
    ("a previously described peptide" . SPARSER::PEPTIDE)
    ("p21-PCNA" . SPARSER::COLLECTION) ("penetratin" . SPARSER::DRUG)
    ("p21 and PCNA" . SPARSER::COLLECTION)
    ("ligase and PCNA" . SPARSER::COLLECTION)
    ("which targets p21" . SPARSER::PROTEIN)
    ("the viral replication-enhancing CRL4 Cdt2 ligase complex"
     . SPARSER::BIO-COMPLEX)
    ("DDB1and Cdt2" . SPARSER::COLLECTION)
    ("accumulated viral replicative forms" . SPARSER::FORM)
    ("Set8 and Cdt1" . SPARSER::COLLECTION)
    ("the viral NS1 protein" . SPARSER::PROTEIN)
    ("endogenous DDB1 (panel 1B) or Cdt2 (panel 1C)" . SPARSER::COLLECTION)
    ("DDB1 and Cdt2" . SPARSER::COLLECTION)
    ("viral chromatin" . SPARSER::PROTEIN)
    ("the scaffold protein Cullin 4 and the homo-trimeric protein DDB1"
     . SPARSER::COLLECTION)
    ("the homo-trimeric protein DDB1" . SPARSER::PROTEIN)
    ("CRL" . SPARSER::PROTEIN)
    ("a potent antiviral factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cdt2 and PCNA" . SPARSER::COLLECTION) ("To-Pro-3" . SPARSER::MOLECULE)
    ("Cyclin A" . SPARSER::PROTEIN) ("Cul4A" . SPARSER::PROTEIN)
    ("ribonucleotide reductase" . SPARSER::PROTEIN) ("K7" . SPARSER::PROTEIN)
    ("Set8" . SPARSER::PROTEIN) ("Cullin 4A" . SPARSER::PROTEIN)
    ("Cdt2" . SPARSER::PROTEIN) ("CRL4" . SPARSER::PROTEIN)
    ("the maternal allele" . SPARSER::ALLELE)
    ("receptor tyrosine kinases and signaling molecules" . SPARSER::COLLECTION)
    ("down-regulator" . SPARSER::PROTEIN)
    ("forskolin- and K +" . SPARSER::COLLECTION)
    ("forskolin-" . SPARSER::PROTEIN) ("PBL" . SPARSER::PROTEIN)
    ("GRB10 and INS" . SPARSER::COLLECTION)
    ("GRB10 and GCG" . SPARSER::COLLECTION)
    ("rho " . SPARSER::HUMAN-PROTEIN-FAMILY) ("GCG" . SPARSER::PROTEIN)
    ("INS" . SPARSER::PROTEIN) ("weak LD" . SPARSER::PROTEIN)
    ("DGI" . SPARSER::PROTEIN) ("Gluc" . SPARSER::PROTEIN)
    ("Ins" . SPARSER::PROTEIN) ("-VII" . SPARSER::COLLECTION)
    ("IFG and IGT" . SPARSER::COLLECTION) ("-VI" . SPARSER::COLLECTION)
    ("IFG" . SPARSER::PROTEIN) ("glycemic trait variants" . SPARSER::VARIANT)
    ("GCK and ANK1" . SPARSER::COLLECTION) ("GIPR/QPCTL" . SPARSER::COLLECTION)
    ("HHEX/IDE/KIF11" . SPARSER::COLLECTION) ("QPCTL" . SPARSER::PROTEIN)
    ("GIPR" . SPARSER::PROTEIN) ("IDE" . SPARSER::PROTEIN)
    ("HHEX" . SPARSER::PROTEIN) ("CIR" . SPARSER::PROTEIN)
    ("insulin and glucose" . SPARSER::COLLECTION)
    ("maternal and elevated glucose" . SPARSER::PROTEIN)
    ("all previously reported glycemic traits" . SPARSER::PROTEIN)
    ("MACH2" . SPARSER::DRUG) ("UCN3" . SPARSER::PROTEIN)
    ("Grb10" . SPARSER::PROTEIN) ("ARAP1" . SPARSER::PROTEIN)
    ("PPP1R3B" . SPARSER::PROTEIN) ("GRB14" . SPARSER::PROTEIN)
    ("NLF1" . SPARSER::PROTEIN) ("KIF11" . SPARSER::PROTEIN)
    ("GRB10" . SPARSER::PROTEIN) ("exogenous SRC-1" . SPARSER::PROTEIN)
    ("recurrent PCa" . SPARSER::PROTEIN) ("emodin" . SPARSER::DRUG)
    ("andrographolide" . SPARSER::DRUG) ("EGCG" . SPARSER::DRUG)
    ("ARs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p-ERK1/2 and Bcl-2" . SPARSER::COLLECTION)
    ("PI-3-kinase and ERKs" . SPARSER::COLLECTION)
    ("ERKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("sulforaphane and phenethyl isothiocyanate" . SPARSER::COLLECTION)
    ("LNCaP (androgen dependent) and PC-3 (androgen independent)"
     . SPARSER::COLLECTION)
    ("glucosinolate" . SPARSER::MOLECULE) ("ITCs" . SPARSER::PROTEIN)
    ("AR-SRC-1" . SPARSER::COLLECTION) ("pEGFP-AR" . SPARSER::COLLECTION)
    ("pSG5-hAR" . SPARSER::COLLECTION) ("hAR" . SPARSER::PROTEIN)
    ("response element (ARE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("DHT induced AR protein" . SPARSER::PROTEIN)
    ("their respective siRNAs" . SPARSER::PROTEIN)
    ("Akt and ERK1/2" . SPARSER::COLLECTION)
    ("treated LNCaP" . SPARSER::PROTEIN) ("Bax/Bcl2" . SPARSER::COLLECTION)
    ("Bcl-2 and Bax" . SPARSER::COLLECTION)
    ("caspase-9/−3" . SPARSER::COLLECTION) ("FMK" . SPARSER::PROTEIN)
    ("caspase -9 and -3" . SPARSER::COLLECTION)
    ("essential proteases" . SPARSER::PROTEIN)
    ("caspase-8 and caspase-9" . SPARSER::COLLECTION)
    ("Alexa Fluor 488-conjugated Annexin-V and PI" . SPARSER::COLLECTION)
    ("Annexin-V and PI" . SPARSER::COLLECTION)
    ("Annexin-V/PI" . SPARSER::COLLECTION)
    ("PTER and RESV" . SPARSER::COLLECTION)
    ("LNCaP and PC-3" . SPARSER::COLLECTION)
    ("complete RPMI and DMEM media" . SPARSER::COLLECTION)
    ("complete RPMI" . SPARSER::PROTEIN) ("RESV" . SPARSER::PROTEIN)
    ("ITC" . SPARSER::PROTEIN) ("PTER and ITC" . SPARSER::COLLECTION)
    ("PTER-ITC" . SPARSER::COLLECTION)
    ("attractive combinational targets" . SPARSER::TARGET-PROTEIN)
    ("extracellular-regulated kinase" . SPARSER::COLLECTION)
    ("testosterone and dihydrotestosterone" . SPARSER::COLLECTION)
    ("Androgen and AR" . SPARSER::COLLECTION)
    ("androgens and estrogens" . SPARSER::COLLECTION)
    ("AR, Akt, and ERK" . SPARSER::COLLECTION)
    ("AR and its co-activators (SRC-1, GRIP-1)" . SPARSER::COLLECTION)
    ("the inhibitor of Akt (A6730) or Akt-specific small interference RNA (siRNA) greatly sensitized PC-3 cells"
     . SPARSER::COLLECTION)
    ("PD98059 or ERK" . SPARSER::COLLECTION)
    ("-isothiocyanate (ITC)" . SPARSER::MOLECULE)
    ("-isothiocyanate" . SPARSER::MOLECULE) ("PTER" . SPARSER::PROTEIN)
    ("pterostilbene" . SPARSER::DRUG) ("indole-3-carbinol" . SPARSER::DRUG)
    ("tea polyphenol" . SPARSER::MOLECULE)
    ("phenethyl isothiocyanate" . SPARSER::DRUG)
    ("caspase -9" . SPARSER::PROTEIN) ("Caspase-9" . SPARSER::PROTEIN)
    ("Ac-DEVD-pNA" . SPARSER::DRUG) ("N-CoR" . SPARSER::PROTEIN)
    ("Z-IETD-FMK" . SPARSER::DRUG) ("Z-LEHD-FMK" . SPARSER::DRUG)
    ("Z-VAD-FMK" . SPARSER::DRUG) ("regulated kinase" . SPARSER::PROTEIN)
    ("SRC-1" . SPARSER::PROTEIN)
    ("at least two SNPs, rs1466785 and rs2304277" . SPARSER::COLLECTION)
    ("SNPs, rs1466785 and rs2304277" . SPARSER::COLLECTION)
    ("BRCA2 and BRCA1" . SPARSER::COLLECTION)
    ("NEIL2 and OGG1" . SPARSER::COLLECTION) ("dUMP" . SPARSER::DUMP)
    ("a slightly higher MAF" . SPARSER::PROTEIN)
    ("gene and rs3093926" . SPARSER::COLLECTION)
    ("a more plausible causal SNP" . SPARSER::PROTEIN)
    ("date only one SNP" . SPARSER::PROTEIN)
    ("NEIL2 and BRCA2" . SPARSER::COLLECTION) ("cis-" . SPARSER::PROTEIN)
    ("thymine" . SPARSER::NUCLEOBASE) ("TDG" . SPARSER::PROTEIN)
    ("neither XRCC1 nor the other genes" . SPARSER::COLLECTION)
    ("PARP1 and both BRCA1 and BRCA2" . SPARSER::COLLECTION)
    ("Group (MBCSG)" . SPARSER::MOLECULE)
    ("either XRCC1 or the other genes" . SPARSER::COLLECTION)
    ("BRCA1- and BRCA2-" . SPARSER::COLLECTION) ("BRCA2-" . SPARSER::PROTEIN)
    ("CIMBA" . SPARSER::COLLECTION) ("at least two SNPs" . SPARSER::PROTEIN)
    ("BRCA1 or BRCA2" . SPARSER::COLLECTION) ("germ-line" . SPARSER::PROTEIN)
    ("Modifiers" . SPARSER::MOLECULE) ("Nucleotide" . SPARSER::NUCLEOTIDE)
    ("LIG3" . SPARSER::PROTEIN) ("NEIL1" . SPARSER::PROTEIN)
    ("NTHL1" . SPARSER::PROTEIN) ("MBD4" . SPARSER::PROTEIN)
    ("SMUG1" . SPARSER::PROTEIN) ("PARP2" . SPARSER::PROTEIN)
    ("DNA glycosylase" . SPARSER::PROTEIN) ("OGG1" . SPARSER::PROTEIN)
    ("NEIL2" . SPARSER::PROTEIN)
    ("the United States Food and Drug Administration" . SPARSER::COLLECTION)
    ("crizotinib" . SPARSER::DRUG) ("talin" . SPARSER::PROTEIN)
    ("Vinculin" . SPARSER::PROTEIN) ("ALK-associated RCC" . SPARSER::PROTEIN)
    ("a TPM3-ALK fusion protein and an EML4-ALK fusion protein"
     . SPARSER::COLLECTION)
    ("TPM3-ALK" . SPARSER::COLLECTION)
    ("a resultant VCL-ALK fusion gene" . SPARSER::PROTEIN)
    ("MX" . SPARSER::PROTEIN) ("ALK or TPM4" . SPARSER::COLLECTION)
    ("Ras/Mek/Erk" . SPARSER::COLLECTION) ("JAK3/STAT3" . SPARSER::COLLECTION)
    ("scored nuclei showed split ALK" . SPARSER::PROTEIN)
    ("noncircumferential ALK" . SPARSER::PROTEIN) ("INI" . SPARSER::PROTEIN)
    ("cathepsin K, Mart1, HMB45, p63, CD31, CD34, and desmin"
     . SPARSER::COLLECTION)
    ("CASE" . SPARSER::PROTEIN) ("papillary RCC" . SPARSER::PROTEIN)
    ("vesicular chromatin" . SPARSER::PROTEIN)
    ("VCL-ALK" . SPARSER::COLLECTION)
    ("the vinculin ( VCL ) and anaplastic lymphoma kinase ( ALK ) genes"
     . SPARSER::COLLECTION)
    ("vinculin ( VCL )" . SPARSER::PROTEIN) ("VCL" . SPARSER::PROTEIN)
    ("vinculin" . SPARSER::PROTEIN) ("α-actinin" . SPARSER::PROTEIN)
    ("TPM4" . SPARSER::PROTEIN) ("TPM3" . SPARSER::PROTEIN)
    ("Mart1" . SPARSER::PROTEIN) ("cathepsin K" . SPARSER::PROTEIN)
    ("ALK1" . SPARSER::PROTEIN) ("IL10RA or IL10RB-" . SPARSER::COLLECTION)
    ("IL-10R/STAT3" . SPARSER::COLLECTION) ("IL10RB-" . SPARSER::PROTEIN)
    ("hyper-IgE" . SPARSER::COLLECTION)
    ("IC87114 and GS-1101" . SPARSER::COLLECTION)
    ("Idelalisib" . SPARSER::DRUG) ("CAL" . SPARSER::PROTEIN)
    ("EBV+ nodular sclerosis form" . SPARSER::FORM)
    ("IgG (<1.9g/L) and IgA (0.41 g/L)" . SPARSER::COLLECTION)
    ("CD40L and CD40" . SPARSER::COLLECTION)
    ("normal IgG" . SPARSER::HUMAN-PROTEIN-FAMILY) ("PID" . SPARSER::PROTEIN)
    ("IL-10R" . SPARSER::PROTEIN) ("IL10RB" . SPARSER::PROTEIN)
    ("GS-1101" . SPARSER::DRUG) ("IC87114" . SPARSER::MOLECULE)
    ("Bcl-6" . SPARSER::PROTEIN) ("PI3Kδ" . SPARSER::PROTEIN)
    ("Phosphoinositide 3-Kinase" . SPARSER::PROTEIN)
    ("the classical EGFR dimer" . SPARSER::DIMER)
    ("fraction of EGFR’s" . SPARSER::COMPONENT)
    ("the smallest possible aggregation state" . SPARSER::BIO-STATE)
    ("refs" . SPARSER::PROTEIN) ("arsine" . SPARSER::MOLECULE)
    ("Oxide" . SPARSER::MOLECULE) ("Arsine" . SPARSER::MOLECULE)
    ("a trimeric complex and this trimeric
Grb2–Sos–Grb2 complex"
     . SPARSER::COLLECTION)
    ("this trimeric
Grb2–Sos–Grb2 complex"
     . SPARSER::BIO-COMPLEX)
    ("coated-pit" . SPARSER::PROTEIN) ("pit" . SPARSER::PROTEIN)
    ("an oligomeric complex" . SPARSER::BIO-COMPLEX)
    ("trimers and dimers" . SPARSER::COLLECTION)
    ("Tetramers" . SPARSER::TETRAMER) ("EGFR and Grb2" . SPARSER::COLLECTION)
    ("dimers, trimers, and tetramers" . SPARSER::COLLECTION)
    ("Pike" . SPARSER::BIO-COMPLEX)
    ("different oligomeric states or errors" . SPARSER::COLLECTION)
    ("states or errors" . SPARSER::COLLECTION) ("-mer" . SPARSER::COLLECTION)
    ("EGFRs" . SPARSER::PROTEIN)
    ("EGF–EGFR–eGFP/Grb2–mRFP" . SPARSER::COLLECTION)
    ("EGF–EGFR–eGFP" . SPARSER::COLLECTION)
    ("eGFP and EGFR" . SPARSER::COLLECTION) ("Grb2–YFP" . SPARSER::COLLECTION)
    ("EGFR–CFP" . SPARSER::COLLECTION) ("intact EGFR" . SPARSER::PROTEIN)
    ("a cyclic EGFR
tetramer and a ligand-triggered conformation change that frees the
EGFR kinase domain"
     . SPARSER::COLLECTION)
    ("Grb2–pEGFR" . SPARSER::PROTEIN-PAIR)
    ("oligomeric
state"
     . SPARSER::BIO-STATE)
    ("oligomeric state" . SPARSER::BIO-STATE)
    ("state and r" . SPARSER::COLLECTION)
    ("complex, or excited-state" . SPARSER::COLLECTION)
    ("sin" . SPARSER::PROTEIN) ("cos" . SPARSER::MOLECULE)
    ("possibly other proteins" . SPARSER::PROTEIN)
    ("Grb2-associated proteins" . SPARSER::PROTEIN)
    ("Oligomers" . SPARSER::PROTEIN) ("ligand–receptor" . SPARSER::PROTEIN)
    ("EGFR–Grb2" . SPARSER::COLLECTION) ("EGF-EGFR–eGFP" . SPARSER::COLLECTION)
    ("EGFR–eGFP/Grb2–mRFP" . SPARSER::COLLECTION)
    ("eGFP
and Grb2"
     . SPARSER::COLLECTION)
    ("oligomers" . SPARSER::MOLECULE) ("dimeric EGFR" . SPARSER::PROTEIN)
    ("tetrameric EGFR" . SPARSER::PROTEIN)
    ("Grb2 and EGFR" . SPARSER::COLLECTION) ("trimers" . SPARSER::TRIMER)
    ("mRFP" . SPARSER::PROTEIN) ("Grb2–mRFP" . SPARSER::COLLECTION)
    ("Grb2 (Grb2–mRFP) and EGFR
(EGFR–eGFP)"
     . SPARSER::COLLECTION)
    ("EGFR–eGFP" . SPARSER::COLLECTION) ("eGFP" . SPARSER::PROTEIN)
    ("BaF" . SPARSER::HUMAN-PROTEIN-FAMILY) ("FLIM" . SPARSER::PROTEIN)
    ("quaternary
state"
     . SPARSER::BIO-STATE)
    ("Sal 1" . SPARSER::PROTEIN)
    ("receptor tyrosine
kinases"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("epidermal growth
factor"
     . SPARSER::PROTEIN)
    ("Adaptor
protein"
     . SPARSER::PROTEIN)
    ("Smad2/3" . SPARSER::PROTEIN) ("CD24 and CD44" . SPARSER::COLLECTION)
    ("ALK4, ALK7 and Actr-IIb" . SPARSER::COLLECTION)
    ("phos-Smad2/3" . SPARSER::PROTEIN-PAIR) ("phos-" . SPARSER::PROTEIN)
    ("phos" . SPARSER::PROTEIN) ("ALK-4 and ALK-7" . SPARSER::COLLECTION)
    ("ALK-4 and Actr-IIb" . SPARSER::COLLECTION)
    ("Nodal ligand and its receptors" . SPARSER::COLLECTION)
    ("ALK-4, ALK-7, and Actr-IIb" . SPARSER::COLLECTION)
    ("CD24 ( xref ) and CD44 ( xref )" . SPARSER::COLLECTION)
    ("CD44 (95%, xref ) and CD24 (91%, xref )" . SPARSER::COLLECTION)
    ("CD44 (35%, xref ) and CD24 (20%, xref )" . SPARSER::COLLECTION)
    ("NODAL and its receptor" . SPARSER::COLLECTION)
    ("ligand and its receptor" . SPARSER::COLLECTION)
    ("Nodal, ALK-4, ALK-7, and Actr-IIb" . SPARSER::COLLECTION)
    ("Actr" . SPARSER::PROTEIN)
    ("Nodal and its receptors ALK-4, ALK-7, and Actr-IIB"
     . SPARSER::COLLECTION)
    ("ALK-4, ALK-7, and Actr-IIB" . SPARSER::COLLECTION)
    ("Actr-IIB" . SPARSER::PROTEIN-PAIR) ("IIB" . SPARSER::PROTEIN)
    ("kinase (ALK)" . SPARSER::KINASE) ("Activin" . SPARSER::PROTEIN)
    ("CD44 and CD24" . SPARSER::COLLECTION)
    ("anti-CD24 and anti-CD44" . SPARSER::COLLECTION)
    ("NODAL and ALK-4" . SPARSER::COLLECTION)
    ("NODAL, CD24, and CD44" . SPARSER::COLLECTION)
    ("NODAL" . SPARSER::PROTEIN)
    ("Nodal and its receptors" . SPARSER::COLLECTION)
    ("Nodal" . SPARSER::PROTEIN) ("ACTR-IIB" . SPARSER::PROTEIN)
    ("ALK-7" . SPARSER::PROTEIN) ("ALK4" . SPARSER::PROTEIN)
    ("ALK7" . SPARSER::PROTEIN)
    ("Activin receptor type IIB" . SPARSER::PROTEIN)
    ("ALK-4" . SPARSER::PROTEIN)
    ("a strong independent prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("this histological type" . TYPE)
    ("positive PRL-3 and abnormal E-cadherin" . SPARSER::COLLECTION)
    ("mucinous type" . TYPE) ("abnormal E-cadherin" . SPARSER::PROTEIN)
    ("E-cadherin and CDH22" . SPARSER::COLLECTION)
    ("a transmembrane adhesion molecule and PRL-3" . SPARSER::COLLECTION)
    ("adhesion molecule and PRL-3" . SPARSER::COLLECTION)
    ("remote parts" . SPARSER::COMPONENT)
    ("predictive factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p  " . SPARSER::PROTEIN) ("a mucinous type" . TYPE)
    ("protein and E-cadherin" . SPARSER::COLLECTION)
    ("catenins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("β-catenin or γ-catenin" . SPARSER::COLLECTION)
    ("mesenchymal markers—vimentin, fibronectin, and Snail—and"
     . SPARSER::COLLECTION)
    ("markers—vimentin, fibronectin, and Snail—and" . SPARSER::COLLECTION)
    ("β3, and E-cadherin" . SPARSER::COLLECTION)
    ("PRL-3 and proteins" . SPARSER::COLLECTION)
    ("PRL-3 and E-cadherin" . SPARSER::COLLECTION)
    ("a transmembrane adhesion molecule, and phosphatase"
     . SPARSER::COLLECTION)
    ("adhesion molecule, and phosphatase" . SPARSER::COLLECTION)
    ("CDH22" . SPARSER::PROTEIN) ("γ-catenin" . SPARSER::PROTEIN)
    ("γ-catenins" . SPARSER::PROTEIN) ("PRL-3" . SPARSER::PROTEIN)
    ("CHEK2 and PALB2" . SPARSER::COLLECTION)
    ("known pathogenic variants" . SPARSER::VARIANT)
    ("BRCA2, PALB2, Rad51 and BRCC36" . SPARSER::COLLECTION)
    ("Abraxas, BACH1 and CtIP" . SPARSER::COLLECTION)
    ("Abraxas" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BRCA1-BARD1" . SPARSER::COLLECTION)
    ("The known pathogenic p" . SPARSER::PROTEIN)
    ("foci and Rad51" . SPARSER::COLLECTION)
    ("ubiquitin and γH2AX" . SPARSER::COLLECTION)
    ("importins-α/β" . SPARSER::PROTEIN-PAIR)
    ("importin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("importins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ser36Tyr variant and the known pathogenic variant p"
     . SPARSER::COLLECTION)
    ("the possible impact" . SPARSER::PROTEIN)
    ("the pathogenic p" . SPARSER::PROTEIN)
    ("BRCA1 or BARD1" . SPARSER::COLLECTION)
    ("exogenous BRCA1 protein" . SPARSER::PROTEIN)
    ("The known pathogenic variant p" . SPARSER::PROTEIN)
    ("BRCA1:BARD1" . SPARSER::BIO-COMPLEX)
    ("full-length exogenous BRCA1" . SPARSER::PROTEIN)
    ("BRCA1 and p" . SPARSER::COLLECTION)
    ("variant and breast" . SPARSER::COLLECTION)
    ("a knock-out allele and a conditional BRCA1 allele" . SPARSER::COLLECTION)
    ("a conditional BRCA1 allele" . SPARSER::ALLELE)
    ("an aberrant cryptic" . SPARSER::PROTEIN)
    ("functional BRCA1" . SPARSER::PROTEIN)
    ("a fluorescent protein" . SPARSER::PROTEIN)
    ("many pathogenic BRCA1 variants" . SPARSER::VARIANT)
    ("the viral repressor LexA" . SPARSER::PROTEIN) ("LexA" . SPARSER::PROTEIN)
    ("BRCA1 and BARD1" . SPARSER::COLLECTION)
    ("BARD1 and E2" . SPARSER::COLLECTION)
    ("indirect (histopathology of associated breast tumors, loss of heterozygosity in tumor DNA, severity of the amino acid change and its conservation across species) factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cys61Gly pathogenic variant" . SPARSER::VARIANT)
    ("the known pathogenic variant p" . SPARSER::PROTEIN)
    ("exogenous full-length BRCA1" . SPARSER::PROTEIN)
    ("BACH1" . SPARSER::PROTEIN) ("BRCC36" . SPARSER::PROTEIN)
    ("PALB2" . SPARSER::PROTEIN) ("UbcH5C" . SPARSER::PROTEIN)
    ("UbCh5C" . SPARSER::PROTEIN) ("BARD1" . SPARSER::PROTEIN)
    ("colorectal carcinomas xref Polymorphisms" . SPARSER::PROTEIN)
    ("a novel antiinflammatory factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("some regulatory SNPs" . SPARSER::PROTEIN) ("intron" . SPARSER::PROTEIN)
    ("TH1" . SPARSER::PROTEIN)
    ("high CRP group and normal CRP group ( p  = 0.014)" . SPARSER::COLLECTION)
    ("CRP and ESR" . SPARSER::COLLECTION) ("ESR" . SPARSER::PROTEIN)
    ("HRM" . SPARSER::PROTEIN-FAMILY) ("clear genotype" . SPARSER::PROTEIN)
    ("family and AXIN2" . SPARSER::COLLECTION)
    ("critical antimicrobial effector" . SPARSER::EFFECTOR)
    ("WNT5A and Frizzled-5" . SPARSER::COLLECTION)
    ("frizzled" . SPARSER::PROTEIN) ("LRP5/6-Frizzled" . SPARSER::COLLECTION)
    ("AXIN" . SPARSER::PROTEIN) ("MTB" . SPARSER::PROTEIN)
    ("TB" . SPARSER::PROTEIN) ("TC/CC" . SPARSER::COLLECTION)
    ("AG/GG" . SPARSER::COLLECTION)
    ("gene, and rs11079571" . SPARSER::COLLECTION) ("melting" . SPARSER::DRUG)
    ("secreted frizzled-related protein 1" . SPARSER::PROTEIN)
    ("β-Catenin" . SPARSER::PROTEIN) ("Wnt6" . SPARSER::PROTEIN)
    ("Frizzled-5" . SPARSER::PROTEIN) ("LRP5/6" . SPARSER::PROTEIN)
    ("SFRP1" . SPARSER::PROTEIN) ("glyburide" . SPARSER::DRUG)
    ("polymorphism and GDM" . SPARSER::COLLECTION) ("Pappa" . SPARSER::PROTEIN)
    ("NGT" . SPARSER::PROTEIN) ("Advanced maternal age" . SPARSER::PROTEIN)
    ("gene and GDM" . SPARSER::COLLECTION)
    ("Gly and Arg" . SPARSER::COLLECTION)
    ("FBS, PPBG, GCT, OGTT, and lipid" . SPARSER::COLLECTION)
    ("TC, TG, HDL-C, and LDL-C" . SPARSER::COLLECTION)
    ("IRS-" . SPARSER::PROTEIN) ("substrate-" . SPARSER::SUBSTRATE)
    ("advanced maternal age" . SPARSER::PROTEIN)
    ("the latter half of pregnancy" . SPARSER::PROTEIN)
    ("Polymorphism" . SPARSER::PROTEIN) ("Fragment" . SPARSER::FRAGMENT)
    ("β -cell" . SPARSER::PROTEIN) ("PI3 K" . SPARSER::PROTEIN)
    ("LDL-C" . SPARSER::MOLECULE)
    ("low density lipoprotein" . SPARSER::PROTEIN)
    ("HDL-C" . SPARSER::MOLECULE)
    ("high density lipoprotein" . SPARSER::PROTEIN)
    ("pro-angiogenic IL-8 and VEGF/VEGFR" . SPARSER::COLLECTION)
    ("VEGF/VEGFR" . SPARSER::COLLECTION) ("NKT" . SPARSER::PROTEIN)
    ("Snail, Slug and ZEB-1" . SPARSER::COLLECTION)
    ("cytokines, chemokines and growth factors" . SPARSER::COLLECTION)
    ("COX-2 and Akt" . SPARSER::COLLECTION)
    ("intrinsic COX-2" . SPARSER::PROTEIN)
    ("Snail and Slug" . SPARSER::COLLECTION)
    ("HER-2/neu" . SPARSER::COLLECTION) ("Pdx-Shh" . SPARSER::COLLECTION)
    ("PTEN/PI3K/Akt" . SPARSER::COLLECTION)
    ("Shh and Akt" . SPARSER::COLLECTION)
    ("Shh, and Akt" . SPARSER::COLLECTION)
    ("TRAIL-death receptor" . SPARSER::COLLECTION)
    ("Gli1 and Gli2" . SPARSER::COLLECTION)
    ("TRAIL-R2/DR5" . SPARSER::COLLECTION)
    ("TRAIL-R1/DR4" . SPARSER::COLLECTION)
    ("MMP-2, MMP-9, Snail, Slug, and Zeb-1" . SPARSER::COLLECTION)
    ("E-cadherin, Snail, Slug, ZEB1, MMP-2 and MMP-9" . SPARSER::COLLECTION)
    ("Twist, ZEB-1, and ZEB2" . SPARSER::COLLECTION)
    ("mesenchymal marker N-cadherin" . SPARSER::PROTEIN)
    ("IL-8/IL-8" . SPARSER::COLLECTION)
    ("VEGF and VEGFR" . SPARSER::COLLECTION)
    ("pro-apoptotic protein Bax" . SPARSER::PROTEIN)
    ("cell cycle related proteins Cyclin-D1, CDK-2 and CDK-6"
     . SPARSER::COLLECTION)
    ("Cyclin-D1, CDK-2 and CDK-6" . SPARSER::COLLECTION)
    ("Cyclin D1, CDK-2, and CDK-6" . SPARSER::COLLECTION)
    ("Bcl-2, and Bax" . SPARSER::COLLECTION) ("Caspase" . SPARSER::PROTEIN)
    ("PCNA and Ki67" . SPARSER::COLLECTION)
    ("anti-PCNA or anti-Ki67" . SPARSER::COLLECTION)
    ("Polymerase (PARP)" . SPARSER::PROTEIN)
    ("Patched 1 and Patched 2" . SPARSER::COLLECTION)
    ("Smo" . SPARSER::PROTEIN) ("Smoothened" . SPARSER::PROTEIN)
    ("Ptch" . SPARSER::PROTEIN) ("Patched" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ADM" . SPARSER::PROTEIN) ("p53, and SMAD4" . SPARSER::COLLECTION)
    ("Gemcitabine" . SPARSER::DRUG)
    ("Snail, Slug, and ZEB1" . SPARSER::COLLECTION)
    ("Akt and Shh" . SPARSER::COLLECTION)
    ("COX-2, VEGF, VEGFR, and IL-8" . SPARSER::COLLECTION)
    ("MMP-2 and MMP-9" . SPARSER::COLLECTION)
    ("Ki67, PCNA and Bcl-2" . SPARSER::COLLECTION)
    ("cyclin D1, CDK2, and CDK6" . SPARSER::COLLECTION)
    ("Akt or Shh" . SPARSER::COLLECTION) ("Embelin" . SPARSER::DRUG)
    ("Akt, and Sonic Hedgehog" . SPARSER::COLLECTION)
    ("Shh" . SPARSER::PROTEIN) ("embelin" . SPARSER::DRUG)
    ("Pdx-1" . SPARSER::PROTEIN) ("Cox-2" . SPARSER::PROTEIN)
    ("FKBP5" . SPARSER::PROTEIN) ("Gli1" . SPARSER::PROTEIN)
    ("TRAIL-R2" . SPARSER::PROTEIN) ("TRAIL-R1" . SPARSER::PROTEIN)
    ("ZEB2" . SPARSER::PROTEIN) ("ZEB-1" . SPARSER::PROTEIN)
    ("secreted growth factor" . SPARSER::PROTEIN)
    ("Vascular Endothelial Growth Factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cyclin-D" . SPARSER::PROTEIN) ("CDK-6" . SPARSER::PROTEIN)
    ("CDK-2" . SPARSER::PROTEIN) ("Patched 2" . SPARSER::PROTEIN)
    ("Patched 1" . SPARSER::PROTEIN) ("Sonic hedgehog" . SPARSER::PROTEIN)
    ("Sonic Hedgehog" . SPARSER::PROTEIN)
    ("PTGS2/HPGD/SLCO2A1/ABCC4" . SPARSER::COLLECTION)
    ("mRNA and the nonsynonymous rs34550074G" . SPARSER::COLLECTION)
    ("Alanine" . SPARSER::AMINO-ACID) ("COX-2 and MRP4" . SPARSER::COLLECTION)
    ("PHO" . SPARSER::PROTEIN) ("a causative SNP" . SPARSER::PROTEIN)
    ("Apc" . SPARSER::PROTEIN) ("-adrenoceptors" . SPARSER::COLLECTION)
    ("adrenoceptors" . SPARSER::PROTEIN) ("pyrene" . SPARSER::PROTEIN)
    ("Tobacco" . SPARSER::DRUG) ("alleles (AGC)" . SPARSER::ALLELE)
    ("The GG homozygous genotype" . SPARSER::PROTEIN)
    ("SLCO2A1 and the rs1751051T" . SPARSER::COLLECTION)
    ("COX-2/HPGD/SLCO2A1/ABCC4" . SPARSER::COLLECTION)
    ("SNP and rs1751051 and rs1751031" . SPARSER::COLLECTION)
    ("gene (AATTA)" . SPARSER::PROTEIN)
    ("the rs1751051 A allele" . SPARSER::ALLELE)
    ("the decreased risk associated rs6439448 A allele and rs7616492 G allele"
     . SPARSER::ALLELE)
    ("allele and rs7616492" . SPARSER::COLLECTION) ("AGT" . SPARSER::PROTEIN)
    ("The rs7616492 homozygous AA genotype" . SPARSER::PROTEIN)
    ("COX-2 rs689466 SNP (OR = 3.3; 95%CI:1.23–9.09, P  = 0.018) and AA"
     . SPARSER::COLLECTION)
    ("respectively all other variants" . SPARSER::VARIANT)
    ("SLCO2A1 and ABCC4" . SPARSER::COLLECTION) ("FPRP" . SPARSER::PROTEIN)
    ("the rs6439448 heterozygous AG genotype" . SPARSER::PROTEIN)
    ("GC and AA" . SPARSER::COLLECTION) ("homozygous GG" . SPARSER::PROTEIN)
    ("AG and GG" . SPARSER::COLLECTION)
    ("COX-2/HPGD/ABCC4/SLCO2A1" . SPARSER::COLLECTION)
    ("ATP-Binding Cassette Sub-Family C Member 4 ( ABCC4 ) and solute carrier organic anion transporter family"
     . SPARSER::COLLECTION)
    ("MRP4 and PGT" . SPARSER::COLLECTION)
    ("a well-established etiologic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PGT and MRP4" . SPARSER::COLLECTION) ("HPGD" . SPARSER::PROTEIN)
    ("Celecoxib" . SPARSER::DRUG) ("catabolism" . SPARSER::PROTEIN)
    ("a physiologic antagonist" . SPARSER::MOLECULE)
    ("the major PG" . SPARSER::PROTEIN)
    ("an immediate-early response gene" . SPARSER::PROTEIN)
    ("PGs" . SPARSER::PROTEIN)
    ("the nonsteroidal anti-inflammatory drugs" . SPARSER::DRUG)
    ("four-factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("rs689466 GG homozygous genotype" . SPARSER::PROTEIN)
    ("PGT and rs1751051 and rs1751031" . SPARSER::COLLECTION)
    ("Prostaglandin Transporter (PGT)" . SPARSER::PROTEIN)
    ("PGT" . SPARSER::PROTEIN) ("PGDH" . SPARSER::PROTEIN)
    ("Dehydrogenase" . SPARSER::PROTEIN) ("PTGS2" . SPARSER::PROTEIN)
    ("SCO2" . SPARSER::PROTEIN) ("SLCO2A1" . SPARSER::PROTEIN)
    ("member 2A1" . SPARSER::PROTEIN)
    ("solute carrier organic anion transporter family" . SPARSER::PROTEIN)
    ("ABCC4" . SPARSER::PROTEIN)
    ("ATP-Binding Cassette Sub-Family C Member 4" . SPARSER::PROTEIN)
    ("prostaglandin transporter" . SPARSER::PROTEIN)
    ("multidrug resistance-associated protein 4" . SPARSER::PROTEIN)
    ("Prostaglandin Transporter" . SPARSER::PROTEIN)
    ("MRP4" . SPARSER::PROTEIN) ("Multidrug Resistance" . SPARSER::PROTEIN)
    ("Cyclooxygenase-2" . SPARSER::PROTEIN) ("HD" . SPARSER::PROTEIN)
    ("bovine serum albumin" . SPARSER::PROTEIN)
    ("MCF7/HER2" . SPARSER::COLLECTION)
    ("trastuzumab or scIgG-T" . SPARSER::COLLECTION)
    ("fludarabine" . SPARSER::DRUG)
    ("protein and pSTAT1" . SPARSER::COLLECTION)
    ("exogenous IFN-γ" . SPARSER::PROTEIN)
    ("significantly higher IFN-γ mRNA" . SPARSER::RNA)
    ("paraformaldehyde (PFA)" . SPARSER::DRUG) ("PFA" . SPARSER::MOLECULE)
    ("paraformaldehyde" . SPARSER::DRUG)
    ("significantly more IFN-γ" . SPARSER::PROTEIN)
    ("the soluble effectors" . SPARSER::EFFECTOR)
    ("certain soluble effectors" . SPARSER::EFFECTOR)
    ("soluble effectors" . SPARSER::EFFECTOR)
    ("IgGs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("trastuzumab and NK cells or monocytes" . SPARSER::COLLECTION)
    ("MG132 or chloroquine" . SPARSER::COLLECTION)
    ("a proteasome inhibitor (MG132) or a lysosome inhibitor (chloroquine)"
     . SPARSER::COLLECTION)
    ("trastuzumab and PBMCs" . SPARSER::COLLECTION)
    ("trastuzumab or PBMCs" . SPARSER::COLLECTION) ("ADCC" . SPARSER::PROTEIN)
    ("HER2/HER3" . SPARSER::COLLECTION) ("HER2/ERBB2" . SPARSER::COLLECTION)
    ("the antibody’s" . SPARSER::ANTIBODY)
    ("immune-cell-engaged trastuzumab" . SPARSER::DRUG)
    ("IL-12p70" . SPARSER::PROTEIN) ("IFN- γ" . SPARSER::PROTEIN)
    ("Interferon gamma" . SPARSER::PROTEIN) ("FcγR" . SPARSER::PROTEIN-FAMILY)
    ("interferon gamma" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 1" . SPARSER::PROTEIN)
    ("FcγRs" . SPARSER::PROTEIN-FAMILY) ("CMH" . SPARSER::MOLECULE)
    ("ANA, VP and KHD" . SPARSER::COLLECTION)
    ("other established poor prognostic factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Sunitinib or the anti-VEGF agent Bevacizumab" . SPARSER::COLLECTION)
    ("VEGF-receptor" . SPARSER::COLLECTION) ("Bevacizumab" . SPARSER::DRUG)
    ("Sunitinib" . SPARSER::DRUG)
    ("an established poor prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ER/PR" . SPARSER::COLLECTION)
    ("Significantly higher mean cancer cell FAK" . SPARSER::PROTEIN)
    ("Significantly higher mean endothelial FAK" . SPARSER::PROTEIN)
    ("no special type" . TYPE)
    ("clinicopathological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("epidermal FAK" . SPARSER::PROTEIN)
    ("integrins and extracellular" . SPARSER::COLLECTION)
    ("tamoxifen or aromatase" . SPARSER::COLLECTION)
    ("type and basal-like" . SPARSER::COLLECTION)
    ("established prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TN/BL" . SPARSER::COLLECTION) ("estrogen (ER)" . SPARSER::MOLECULE)
    ("anti-VEGF" . SPARSER::DRUG) ("ErbB2 and AKT" . SPARSER::COLLECTION)
    ("ultimately reducing lapatinib's" . SPARSER::DRUG)
    ("CHIP and EBP1" . SPARSER::COLLECTION) ("Neuregulin" . SPARSER::PROTEIN)
    ("ErbB2-" . SPARSER::PROTEIN)
    ("a dual EGFR/ErbB2 inhibitor" . SPARSER::INHIBITOR)
    ("proteins that mediate HRG's" . SPARSER::PROTEIN)
    ("ERBB" . SPARSER::PROTEIN) ("Pertuzumab" . SPARSER::DRUG)
    ("GATA4 and the ErbB3 binding protein EBP1" . SPARSER::COLLECTION)
    ("estrogen receptor, PEAS3, FOXP3, GATA4 and the ErbB3 binding protein EBP1"
     . SPARSER::COLLECTION)
    ("PEAS" . SPARSER::PROTEIN)
    ("Estrogen and Progesterone" . SPARSER::COLLECTION)
    ("Progesterone" . SPARSER::PROTEIN)
    ("ERBB2 and ERBB3" . SPARSER::COLLECTION)
    ("classical ligand" . SPARSER::LIGAND)
    ("lapatinib and HRG" . SPARSER::COLLECTION)
    ("HRG (50 ng/ml) and/or lapatinib (1 μM)" . SPARSER::COLLECTION)
    ("the MEK inhibitor U0126 or the AKT inhibitor GSK690693"
     . SPARSER::COLLECTION)
    ("HRG and lapatinib" . SPARSER::COLLECTION)
    ("the ErbB1/ErbB2 dual kinase inhibitor lapatinib" . SPARSER::DRUG)
    ("ErbB1/ErbB2" . SPARSER::COLLECTION) ("uridine (ENU)" . SPARSER::DRUG)
    ("ENU" . SPARSER::MOLECULE) ("uridine" . SPARSER::PROTEIN)
    ("ErbB2/ErbB3" . SPARSER::COLLECTION)
    ("protein or mRNA" . SPARSER::COLLECTION)
    ("HRG and/or lapatinib" . SPARSER::COLLECTION)
    ("ultra-pure glycogen" . SPARSER::PROTEIN) ("Uridine" . SPARSER::PROTEIN)
    ("hr" . SPARSER::PROTEIN) ("dextran" . SPARSER::DEXTRAN)
    ("ErbB2, ErbB3 and GAPDH" . SPARSER::COLLECTION) ("GGT" . SPARSER::PROTEIN)
    ("GT" . SPARSER::PROTEIN) ("GAT" . SPARSER::PROTEIN)
    ("AAG" . SPARSER::PROTEIN) ("GGC" . SPARSER::PROTEIN)
    ("GCA" . SPARSER::PROTEIN) ("TTG" . SPARSER::PROTEIN)
    ("AAC" . SPARSER::PROTEIN) ("TGT" . SPARSER::PROTEIN)
    ("GAG" . SPARSER::PROTEIN) ("ATA" . SPARSER::PROTEIN)
    ("CAC" . SPARSER::PROTEIN) ("CCT" . SPARSER::PROTEIN)
    ("AAA" . SPARSER::PROTEIN) ("TGC" . SPARSER::PROTEIN)
    ("ACT" . SPARSER::PROTEIN) ("were run" . SPARSER::PROTEIN)
    ("Deoxycholate" . SPARSER::MOLECULE) ("RIPA" . SPARSER::PROTEIN)
    ("rabbit anti-ErbB3 (C-17) and mouse anti-phospho p70S6K (Santa Cruz Biotechnology, Santa Cruz, CA)"
     . SPARSER::COLLECTION)
    ("rabbit anti- phospho p44/42 ERK (T202/Y204) and rabbit anti- phospho p70 S6K (Thr389)"
     . SPARSER::COLLECTION)
    ("rabbit monoclonal anti-phospho ErbB3" . SPARSER::PROTEIN)
    ("rabbit monoclonal anti-phospho ErbB2" . SPARSER::PROTEIN)
    ("mouse anti-GAPDH" . SPARSER::ANTIBODY)
    ("rabbit anti-ErbB3" . SPARSER::ANTIBODY)
    ("rabbit anti-ErbB1" . SPARSER::ANTIBODY)
    ("Reagents and Antibodies" . SPARSER::COLLECTION)
    ("ER, PR and GR" . SPARSER::COLLECTION)
    ("ErbB3 and ErbB2" . SPARSER::COLLECTION)
    ("EGFR and ErbB2" . SPARSER::COLLECTION)
    ("the humanized monoclonal antibody Trastuzumab ( xref ; xref ; xref ) and the EGFR/ErbB2 receptor tyrosine kinase inhibitor lapatinib ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("/ErbB3" . SPARSER::COLLECTION) ("ErbB2-ErbB3" . SPARSER::COLLECTION)
    ("known ligand" . SPARSER::LIGAND)
    ("significant structural homology" . SPARSER::PROTEIN)
    ("ErbB2, ErbB3 and ErbB4" . SPARSER::COLLECTION)
    ("EGFR/ErbB2" . SPARSER::COLLECTION) ("HRG-" . SPARSER::PROTEIN)
    ("ErbB2/EGFR" . SPARSER::COLLECTION)
    ("ErbB2 or ErbB3" . SPARSER::COLLECTION)
    ("Heregulin (HRG)" . SPARSER::PROTEIN)
    ("ErbB2 and ErbB3" . SPARSER::COLLECTION) ("HRG" . SPARSER::PROTEIN)
    ("Heregulin" . SPARSER::PROTEIN) ("ERRB2" . SPARSER::PROTEIN)
    ("EBP1" . SPARSER::PROTEIN) ("C-myc" . SPARSER::PROTEIN)
    ("ERBB3" . SPARSER::PROTEIN) ("ErbB-2" . SPARSER::PROTEIN)
    ("Actinomycin D" . SPARSER::MOLECULE) ("G - 3" . SPARSER::PROTEIN)
    ("- 3" . SPARSER::PROTEIN) ("anti- ERK" . SPARSER::PROTEIN)
    ("anti-ErbB2" . SPARSER::DRUG) ("orphan receptor" . SPARSER::PROTEIN)
    ("the preferential targets" . SPARSER::TARGET-PROTEIN)
    ("p53 and its E3 ligase Mdm2" . SPARSER::COLLECTION)
    ("p21, Mdm2, and Puma" . SPARSER::COLLECTION)
    ("Mdm2 and p53" . SPARSER::COLLECTION) ("hESC" . SPARSER::PROTEIN)
    ("Tip60 and CBP" . SPARSER::COLLECTION)
    ("p53 and Mdm2 or MdmX" . SPARSER::COLLECTION)
    ("Mdm2 or MdmX" . SPARSER::COLLECTION) ("MdmX" . SPARSER::PROTEIN)
    ("p53 and E3" . SPARSER::COLLECTION)
    ("p21, Mdm-2, noxa, and puma" . SPARSER::COLLECTION)
    ("noxa" . SPARSER::PROTEIN)
    ("the p53 knock-in mutant hESCs and their derivatives"
     . SPARSER::COLLECTION)
    ("hESCs" . SPARSER::PROTEIN) ("RP11" . SPARSER::PROTEIN)
    ("K8" . SPARSER::PROTEIN) ("K3" . SPARSER::PROTEIN)
    ("Tip60" . SPARSER::PROTEIN) ("Mdm-2" . SPARSER::PROTEIN)
    ("Tumor suppressor p53" . SPARSER::PROTEIN)
    ("chromosome 17 and intra-tumoural" . SPARSER::COLLECTION)
    ("ER and HER2" . SPARSER::COLLECTION) ("HERA" . SPARSER::PROTEIN)
    ("Trastuzumab" . SPARSER::DRUG) ("STATA" . SPARSER::PROTEIN)
    ("its strong interactor protein" . SPARSER::PROTEIN)
    ("Hsp70 and p53" . SPARSER::COLLECTION) ("TEV" . SPARSER::PROTEIN)
    ("post-TEV" . SPARSER::COLLECTION) ("p53 and GST" . SPARSER::COLLECTION)
    ("Chaperone" . SPARSER::PROTEIN) ("Glutathione" . SPARSER::DRUG)
    ("wherein p53-GST protein" . SPARSER::PROTEIN) ("3C" . SPARSER::PROTEIN)
    ("TLC" . SPARSER::PROTEIN) ("clone 3C" . SPARSER::PROTEIN)
    ("GST tagged p53" . SPARSER::PROTEIN) ("p53-GST" . SPARSER::COLLECTION)
    ("even Histidine-tagged p53 protein" . SPARSER::PROTEIN)
    ("Histidine" . SPARSER::AMINO-ACID) ("associated GST" . SPARSER::PROTEIN)
    ("only p53 protein" . SPARSER::PROTEIN)
    ("p53 and BRC" . SPARSER::COLLECTION) ("ATP:ADP" . SPARSER::BIO-COMPLEX)
    ("LC-ESI-MS/MS" . SPARSER::COLLECTION) ("pH 3" . SPARSER::PROTEIN)
    ("hRAD51" . SPARSER::PROTEIN)
    ("therapeutic monoclonal antibodies" . SPARSER::ANTIBODY)
    ("MET or EGFR" . SPARSER::COLLECTION)
    ("a possible molecular target" . SPARSER::TARGET-PROTEIN)
    ("EGFR and ALK" . SPARSER::COLLECTION)
    ("a true predictive factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("possible confounding RAS" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("regorafenib" . SPARSER::DRUG)
    ("an independent poor prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("KRAS and ALK" . SPARSER::COLLECTION)
    ("HER-3, MET or IGFR" . SPARSER::COLLECTION)
    ("KRAS wild-type metastatic CRC" . SPARSER::PROTEIN)
    ("anti-EGFR monoclonal antibodies" . SPARSER::ANTIBODY)
    ("Irinotecan" . SPARSER::DRUG) ("KRAS and NRAS" . SPARSER::COLLECTION)
    ("Most biological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the monoclonal antibodies cetuximab and panitumumab"
     . SPARSER::COLLECTION)
    ("CRC and state" . SPARSER::COLLECTION)
    ("abnormal FISH" . SPARSER::PROTEIN)
    ("irinotecan ineligible and received panitumumab" . SPARSER::DRUG)
    ("dei" . SPARSER::PROTEIN) ("chemorefractory CRC" . SPARSER::PROTEIN)
    ("irinotecan and cetuximab or panitumumab" . SPARSER::COLLECTION)
    ("EML4-ALK" . SPARSER::COLLECTION)
    ("KRAS , BRAF , NRAS and exon" . SPARSER::COLLECTION)
    ("anti-epidermal growth factor receptor (EGFR) monoclonal antibodies"
     . SPARSER::ANTIBODY)
    ("second-line" . SPARSER::PROTEIN) ("disomic ALK" . SPARSER::PROTEIN)
    ("cetuximab and irinotecan or panitumumab" . SPARSER::COLLECTION)
    ("irinotecan or panitumumab" . SPARSER::COLLECTION)
    ("RAS, BRAF and PI3KCA" . SPARSER::COLLECTION)
    ("KRAS-NRAS-BRAF" . SPARSER::COLLECTION) ("HER-3" . SPARSER::PROTEIN)
    ("breakpoint cluster region" . SPARSER::PROTEIN)
    ("EML4" . SPARSER::PROTEIN)
    ("Anaplastic lymphoma kinase" . SPARSER::PROTEIN)
    ("serial dynamic plasma IGFBP-2" . SPARSER::PROTEIN)
    ("exogenous IGFBP-2" . SPARSER::PROTEIN)
    ("systemic state and specific treatment regimens" . SPARSER::COLLECTION)
    ("systemic state" . SPARSER::BIO-STATE)
    ("patients underwent GTR" . SPARSER::PROTEIN) ("GTR" . SPARSER::PROTEIN)
    ("preoperative plasma IGFBP-2" . SPARSER::PROTEIN)
    ("insulin-like growth factor-binding protein 2" . SPARSER::PROTEIN)
    ("IGFBP-2" . SPARSER::PROTEIN) ("PELP1–mTOR" . SPARSER::COLLECTION)
    ("specifically targets PELP1" . SPARSER::PROTEIN)
    ("PELP1–mTORC1" . SPARSER::COLLECTION)
    ("PELP1–mTORC2" . SPARSER::COLLECTION)
    ("tamoxifen or tamoxifen" . SPARSER::COLLECTION)
    ("PELP1cyto" . SPARSER::PROTEIN) ("Tam and HER2" . SPARSER::COLLECTION)
    ("MCF7-Tam" . SPARSER::COLLECTION) ("MCF7-HER2" . SPARSER::COLLECTION)
    ("Tam" . SPARSER::PROTEIN) ("MCF7-TamR" . SPARSER::COLLECTION)
    ("TamR" . SPARSER::PROTEIN) ("PELP1 cyto" . SPARSER::PROTEIN)
    ("MCF7-PELP1cyto" . SPARSER::PROTEIN-PAIR)
    ("Rapamycin and AZD8055" . SPARSER::COLLECTION)
    ("Rapamycin- and AZD8055-treated mice" . SPARSER::COLLECTION)
    ("Rapamycin-" . SPARSER::DRUG) ("rapamycin-" . SPARSER::DRUG)
    ("The mammary fat" . SPARSER::PROTEIN)
    ("MCF7 and ZR75" . SPARSER::COLLECTION)
    ("rapamycin or AZD8055" . SPARSER::COLLECTION)
    ("MCF7-PELP" . SPARSER::COLLECTION) ("MCF7-PELP1" . SPARSER::COLLECTION)
    ("PELP" . SPARSER::PROTEIN) ("mTORC1, and AZD8055" . SPARSER::COLLECTION)
    ("rapamycin and AZD8055" . SPARSER::COLLECTION)
    ("mTOR, p70S6K, S6K, and 4EBP1" . SPARSER::COLLECTION)
    ("mTOR–PELP1" . SPARSER::COLLECTION) ("Src-MAPK" . SPARSER::COLLECTION)
    ("growth factor– and ER-dependent" . SPARSER::COLLECTION)
    ("growth factor–" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mTOR/PI3K/Akt" . SPARSER::COLLECTION)
    ("Akt/PKB and SGK1" . SPARSER::COLLECTION)
    ("PELP1-mTOR" . SPARSER::COLLECTION) ("PELP1-cyto" . SPARSER::COLLECTION)
    ("Rapamycin or AZD8055" . SPARSER::COLLECTION)
    ("Src and PI3" . SPARSER::COLLECTION)
    ("Glutamic acid-" . SPARSER::AMINO-ACID) ("Leucine" . SPARSER::AMINO-ACID)
    ("cyclin dependent kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("tumor antigen" . SPARSER::DRUG) ("G1-S" . SPARSER::PROTEIN)
    ("PELP1" . SPARSER::PROTEIN) ("Protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Glutamic acid" . SPARSER::AMINO-ACID)
    ("clinical prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("an adverse prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the only prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("an even stronger independent prognostic factor"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the significant prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Both high-level GATA4 and high-level HER2" . SPARSER::COLLECTION)
    ("GATA4 and HER2" . SPARSER::COLLECTION) ("SE" . SPARSER::PROTEIN)
    ("HER2 (Fig. xref C, Table xref A) and GATA4 (Fig. xref D, Table xref A)"
     . SPARSER::COLLECTION)
    ("Ia" . SPARSER::MOLECULE)
    ("HER2 ( P = 0.02) and GATA4 ( P = 0.006)" . SPARSER::COLLECTION)
    ("both HER2 and high GATA4" . SPARSER::COLLECTION) ("Ib" . SPARSER::DRUG)
    ("primary and recurrent GCTs" . SPARSER::PROTEIN)
    ("eight primary GCTs" . SPARSER::PROTEIN)
    ("inoperable stage IIIc GCT" . SPARSER::PROTEIN)
    ("primary GCTs" . SPARSER::PROTEIN)
    ("a potential prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("solid prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HER2, HER3, and HER4" . SPARSER::COLLECTION)
    ("a monoclonal antibody trastuzumab and a small molecule HER2/EGFR (epidermal growth factor receptor) inhibitor lapatinib"
     . SPARSER::COLLECTION)
    ("HER2/EGFR" . SPARSER::COLLECTION) ("ErbB2/neu" . SPARSER::COLLECTION)
    ("HER1, HER2, HER3, and HER4" . SPARSER::COLLECTION)
    ("the only definitive prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("shorter DSS" . SPARSER::PROTEIN) ("HER2 and GATA4" . SPARSER::COLLECTION)
    ("the molecular prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HER2, and GATA4" . SPARSER::COLLECTION)
    ("the human epidermal growth factor receptors (HER 2–4) and the transcription factor GATA4"
     . SPARSER::COLLECTION)
    ("clinicopathological prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("reliable prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GCTs" . SPARSER::PROTEIN) ("FOXL2" . SPARSER::PROTEIN)
    ("Forkhead Box L2" . SPARSER::PROTEIN) ("GATA4" . SPARSER::PROTEIN)
    ("HER 2" . SPARSER::PROTEIN)
    ("epidermal growth factor receptors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("vs proficient MMR" . SPARSER::PROTEIN)
    ("KRAS , NRAS , or HRAS" . SPARSER::COLLECTION)
    ("KRAS-" . SPARSER::PROTEIN)
    ("the adverse prognostic impact" . SPARSER::PROTEIN)
    ("IV CRCs" . SPARSER::PROTEIN) ("TTR" . SPARSER::PROTEIN)
    ("KRAS/BRAF" . SPARSER::COLLECTION) ("proficient MMR" . SPARSER::PROTEIN)
    ("RAS/RAF/MAPK" . SPARSER::COLLECTION) ("MSH6" . SPARSER::PROTEIN)
    ("rilotumumab" . SPARSER::DRUG)
    ("an alternative predictive biomarker" . SPARSER::MOLECULE)
    ("the only mRNA biomarker" . SPARSER::MOLECULE)
    ("MET/HGF" . SPARSER::COLLECTION)
    ("alternative predictive biomarkers" . SPARSER::MOLECULE)
    ("a negative prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MET, HGF , and EGFR" . SPARSER::COLLECTION)
    ("AREG and EREG" . SPARSER::COLLECTION) ("EREG" . SPARSER::PROTEIN)
    ("AREG" . SPARSER::PROTEIN) ("/FISH" . SPARSER::COLLECTION)
    ("MET/EGFR" . SPARSER::COLLECTION) ("Polymorphisms" . SPARSER::PROTEIN)
    ("EGFR and KRAS" . SPARSER::COLLECTION) ("shorter PFS" . SPARSER::PROTEIN)
    ("SP44 and MET" . SPARSER::COLLECTION)
    ("the bivalent form" . SPARSER::FORM)
    ("a variably strong cytoplasmic component" . SPARSER::COMPONENT)
    ("Ron" . SPARSER::PROTEIN) ("cMET" . SPARSER::PROTEIN)
    ("16 commercially or internally available antibodies" . SPARSER::ANTIBODY)
    ("ITT" . SPARSER::MOLECULE) ("third-line" . SPARSER::PROTEIN)
    ("monovalent monoclonal antibody" . SPARSER::DRUG)
    ("Onartuzumab" . SPARSER::DRUG) ("MET and EGFR" . SPARSER::COLLECTION)
    ("MET and EGF" . SPARSER::COLLECTION)
    ("MET, EGFR , amphiregulin, epiregulin, or HGF" . SPARSER::COLLECTION)
    ("Biomarkers" . SPARSER::MOLECULE) ("MetMAb" . SPARSER::DRUG)
    ("onartuzumab" . SPARSER::DRUG) ("MST1R" . SPARSER::PROTEIN)
    ("L41" . SPARSER::PROTEIN) ("CSF1" . SPARSER::PROTEIN)
    ("S11" . SPARSER::PROTEIN) ("SP44" . SPARSER::PROTEIN)
    ("receptor protein" . SPARSER::RECEPTOR-PROTEIN)
    ("a key inflammatory cytokine" . SPARSER::PROTEIN)
    ("CAD" . SPARSER::PROTEIN) ("CHD" . SPARSER::PROTEIN)
    ("Ccl2 , Ccl3 and Ccl7" . SPARSER::COLLECTION)
    ("classical monocytes" . SPARSER::PROTEIN)
    ("CCR1 and CCR5" . SPARSER::COLLECTION)
    ("Ccl3/Mip1α" . SPARSER::COLLECTION) ("Ccl2/Mcp-1" . SPARSER::COLLECTION)
    ("IL6/STAT3" . SPARSER::COLLECTION) ("CCL2/MCP-1" . SPARSER::COLLECTION)
    ("monocyte-macrophage" . SPARSER::PROTEIN)
    ("IL6 and its neutralizing antibody" . SPARSER::COLLECTION)
    ("mTORC1/STAT3" . SPARSER::COLLECTION)
    ("mTORC1 and IL6" . SPARSER::COLLECTION)
    ("Cyclin D2 (CCND2) and Gapdh" . SPARSER::COLLECTION)
    ("next co-transfected RAW macrophages" . SPARSER::PROTEIN)
    ("DN-STAT3" . SPARSER::COLLECTION)
    ("STAT3 and BCL-6" . SPARSER::COLLECTION)
    ("lesional macrophages" . SPARSER::PROTEIN)
    ("BCL-6 and STATs" . SPARSER::COLLECTION)
    ("Ccl2 , Ccl3 , Ccl6 , Ccl7 , and Cxcl2" . SPARSER::COLLECTION)
    ("Ccl7" . SPARSER::PROTEIN)
    ("Tnfα , Il6, Il10, Il12p40 , and chemokine" . SPARSER::COLLECTION)
    ("lipoxygenase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("classical (Ly6C hi ) monocytes" . SPARSER::PROTEIN)
    ("adoptively transferred classical monocytes" . SPARSER::PROTEIN)
    ("ester (CFSE)" . SPARSER::MOLECULE) ("CFSE" . SPARSER::DRUG)
    ("experiments using classical (Ly6C hi ) monocytes" . SPARSER::PROTEIN)
    ("Mip1α , Ccl6, and Cxcl2" . SPARSER::COLLECTION)
    ("Il10 , Tnfα, Il12p40 and Il6" . SPARSER::COLLECTION)
    ("Il6" . SPARSER::PROTEIN) ("Il10" . SPARSER::PROTEIN)
    ("Ccl6" . SPARSER::PROTEIN) ("Ccl3" . SPARSER::PROTEIN)
    ("Mcp-1" . SPARSER::PROTEIN) ("Beclin-Het" . SPARSER::COLLECTION)
    ("Het" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Beclin" . SPARSER::PROTEIN)
    ("α-actin and CD3" . SPARSER::COLLECTION)
    ("neutrophils, monocytes and Ly6C" . SPARSER::COLLECTION)
    ("-KO" . SPARSER::COLLECTION) ("Ldlr" . SPARSER::PROTEIN)
    ("LysM-Cre" . SPARSER::COLLECTION) ("LysM" . SPARSER::PROTEIN)
    ("LDL and triglyceride" . SPARSER::COLLECTION) ("LDLR" . SPARSER::PROTEIN)
    ("LPL" . SPARSER::PROTEIN) ("serine–threonine" . SPARSER::COLLECTION)
    ("mRNAs and STAT3" . SPARSER::COLLECTION)
    ("Cre/loxP" . SPARSER::COLLECTION)
    ("C-reactive protein" . SPARSER::PROTEIN) ("CCND2" . SPARSER::PROTEIN)
    ("Cyclin D2" . SPARSER::PROTEIN) ("BCL-6" . SPARSER::PROTEIN)
    ("Bcl6" . SPARSER::PROTEIN) ("Il12p40" . SPARSER::PROTEIN)
    ("Tnfα" . SPARSER::DRUG) ("Cxcl2" . SPARSER::PROTEIN)
    ("Mip1α" . SPARSER::PROTEIN) ("Pcsk9" . SPARSER::PROTEIN)
    ("lipoprotein lipase" . SPARSER::PROTEIN)
    ("LDL receptor" . SPARSER::PROTEIN)
    ("definitely pathogenic BRCA1 variants" . SPARSER::VARIANT)
    ("TMEM106A and exon" . SPARSER::COLLECTION)
    ("NBR2 , NBR1 and TMEM106A" . SPARSER::COLLECTION)
    ("RND2 , ψBRCA1 , BRCA1 and NBR2" . SPARSER::COLLECTION)
    ("LRGs" . SPARSER::PROTEIN)
    ("BRCA1 and/or BRCA2 LGRs" . SPARSER::COLLECTION)
    ("NBR2 and BRCA1" . SPARSER::COLLECTION)
    ("Galician HBOC families" . SPARSER::PROTEIN-FAMILY)
    ("only 81 BRCA1 variants and 17 BRCA2 variants" . SPARSER::COLLECTION)
    ("only 81 BRCA1 variants" . SPARSER::VARIANT)
    ("dup" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MLPA" . SPARSER::PROTEIN)
    ("BRCA1/BRCA2" . SPARSER::COLLECTION) ("ARL4D" . SPARSER::PROTEIN)
    ("TMEM106A" . SPARSER::PROTEIN) ("RND2" . SPARSER::PROTEIN)
    ("VAT1" . SPARSER::PROTEIN) ("NBR1" . SPARSER::PROTEIN)
    ("NBR2" . SPARSER::PROTEIN) ("NF-κB and JNK" . SPARSER::COLLECTION)
    ("both prognostic and predictive biomarkers" . SPARSER::MOLECULE)
    ("the primary PCa" . SPARSER::PROTEIN) ("active (EE)" . SPARSER::ACTIVE)
    ("EE" . SPARSER::PROTEIN) ("the Mayo clinic cohort" . SPARSER::MOLECULE)
    ("factors and NARP21" . SPARSER::COLLECTION)
    ("other known prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DSS" . SPARSER::PROTEIN) ("RRP" . SPARSER::PROTEIN)
    ("Radical" . SPARSER::MOLECULE) ("Gene and NCBI" . SPARSER::COLLECTION)
    ("ventral prostatic lobes" . SPARSER::PROTEIN)
    ("the dorsal and lateral lobes" . SPARSER::PROTEIN)
    ("the dorsal and lateral prostatic lobes" . SPARSER::PROTEIN)
    ("lobes" . SPARSER::PROTEIN) ("p65-pho" . SPARSER::COLLECTION)
    ("pho" . SPARSER::PROTEIN) ("NGL" . SPARSER::PROTEIN)
    ("-PAI" . SPARSER::COLLECTION) ("PB-" . SPARSER::PROTEIN)
    ("PB" . SPARSER::PROTEIN) ("latent or indolent PCa" . SPARSER::PROTEIN)
    ("indolent PCa" . SPARSER::PROTEIN)
    ("PCa ( xref ) and the European" . SPARSER::COLLECTION)
    ("prostate-specific antigen (PSA)" . SPARSER::PROTEIN)
    ("NARP" . SPARSER::PROTEIN) ("A 20µ" . SPARSER::PROTEIN)
    ("ARR 2" . SPARSER::PROTEIN)
    ("during ATRA or ATRA/PP2 co-treatment" . SPARSER::COLLECTION)
    ("Dasatinib" . SPARSER::DRUG) ("CD38-driven c-Cbl" . SPARSER::PROTEIN)
    ("c-Raf" . SPARSER::COLLECTION) ("c-Raf/ERK" . SPARSER::COLLECTION)
    ("Lyn/c-Raf" . SPARSER::COLLECTION) ("Lyn and c-Cbl" . SPARSER::COLLECTION)
    ("Lyn/c-Cbl" . SPARSER::COLLECTION)
    ("CD38 and c-Cbl" . SPARSER::COLLECTION)
    ("ATRA-induced c-Cbl and p55/p85 PI3K" . SPARSER::COLLECTION)
    ("p55/p85" . SPARSER::COLLECTION)
    ("negligible and activated Fgr" . SPARSER::PROTEIN)
    ("Vav1/PI3K" . SPARSER::COLLECTION)
    ("c-Cbl, Vav1, and SLP-76" . SPARSER::COLLECTION)
    ("enzyme and receptor" . SPARSER::COLLECTION)
    ("CD38, Vav1, SLP-76, and active" . SPARSER::COLLECTION)
    ("CD38/SLP-76" . SPARSER::COLLECTION) ("CD38/Vav1" . SPARSER::COLLECTION)
    ("CD38 and its related signaling molecules" . SPARSER::COLLECTION)
    ("CD38 and Lyn" . SPARSER::COLLECTION)
    ("CD38/Lyn/p85" . SPARSER::COLLECTION)
    ("CD38/Lyn/Vav1" . SPARSER::COLLECTION)
    ("CD38/Lyn/SLP-76" . SPARSER::COLLECTION)
    ("PI3K and c-Cbl" . SPARSER::COLLECTION)
    ("ATRA and IB4" . SPARSER::COLLECTION)
    ("PP2 and ATRA" . SPARSER::COLLECTION)
    ("c-Cbl and PI3K" . SPARSER::COLLECTION)
    ("p55 and p85" . SPARSER::COLLECTION) ("ATRA-" . SPARSER::DRUG)
    ("ATRA, and IB4" . SPARSER::COLLECTION)
    ("Lyn-associated CD38" . SPARSER::PROTEIN)
    ("ERK and p85" . SPARSER::COLLECTION)
    ("little basal CD38" . SPARSER::PROTEIN)
    ("SLP-76 and Vav1" . SPARSER::COLLECTION)
    ("c-Cbl and Lyn" . SPARSER::COLLECTION) ("Lyn/CD38" . SPARSER::COLLECTION)
    ("Lyn/Vav1" . SPARSER::COLLECTION) ("Lyn/SLP-76" . SPARSER::COLLECTION)
    ("CD38, Vav1, and SLP-76" . SPARSER::COLLECTION)
    ("CD38, SLP-76, and Vav1, and kinase" . SPARSER::COLLECTION)
    ("Vav1, and kinase" . SPARSER::COLLECTION)
    ("ATRA and CD38" . SPARSER::COLLECTION)
    ("CD38/Vav1/SLP-76" . SPARSER::COLLECTION)
    ("SLP-76/Vav1/CD38" . SPARSER::COLLECTION)
    ("CD38 and Vav1" . SPARSER::COLLECTION)
    ("CD38 and SLP-76" . SPARSER::COLLECTION)
    ("CD38/SLP-76/Vav1" . SPARSER::COLLECTION)
    ("SLP-76 and Vav1, and CD38+" . SPARSER::COLLECTION)
    ("Vav1, and CD38+" . SPARSER::COLLECTION)
    ("Vav1 or SLP-76" . SPARSER::COLLECTION)
    ("SLP-76, Vav1, and CD38" . SPARSER::COLLECTION)
    ("CD38 and SLP-76 or Vav1" . SPARSER::COLLECTION)
    ("SLP-76 or Vav1" . SPARSER::COLLECTION)
    ("PI3K, Lyn, and CD38" . SPARSER::COLLECTION)
    ("SLP-76, Vav1, and Lyn" . SPARSER::COLLECTION)
    ("PI3K/Lyn/CD38" . SPARSER::COLLECTION) ("p-p85" . SPARSER::COLLECTION)
    ("ATRA or CD38" . SPARSER::COLLECTION) ("pY-p85" . SPARSER::COLLECTION)
    ("pY-c-Cbl" . SPARSER::COLLECTION) ("c-Cbl and p85" . SPARSER::COLLECTION)
    ("c-Cbl, ERK, and p85" . SPARSER::COLLECTION)
    ("CD38, SLP-76, and Vav1" . SPARSER::COLLECTION)
    ("c-Cbl, SLP-76, Vav1, PI3K, and Lyn" . SPARSER::COLLECTION)
    ("BCR/ABL" . SPARSER::COLLECTION) ("ABL" . SPARSER::PROTEIN)
    ("ZAP70 and JAK2" . SPARSER::COLLECTION)
    ("Fyn and Lck" . SPARSER::COLLECTION)
    ("ATRA, PP2, dasatinib, or ATRA and SFK" . SPARSER::COLLECTION)
    ("ATRA and SFK" . SPARSER::COLLECTION) ("Fgr" . SPARSER::PROTEIN)
    ("Fyn and Lyn" . SPARSER::COLLECTION)
    ("other CD38-associated signaling molecules" . SPARSER::MOLECULE)
    ("PI3K and ERK" . SPARSER::COLLECTION)
    ("PI3K or ERK" . SPARSER::COLLECTION)
    ("Lyn and other Src family kinases (SFKs)" . SPARSER::COLLECTION)
    ("CSF-1/c-FMS" . SPARSER::COLLECTION) ("Vav1/SLP-76" . SPARSER::COLLECTION)
    ("Vav1/c-Cbl" . SPARSER::COLLECTION)
    ("c-Cbl and SLP-76" . SPARSER::COLLECTION)
    ("c-Cbl, SLP-76, and Vav1" . SPARSER::COLLECTION)
    ("c-Cbl/CD38" . SPARSER::COLLECTION)
    ("an E3 ubiquitin ligase and adaptor molecule" . SPARSER::COLLECTION)
    ("CD38-associated signaling molecules" . SPARSER::MOLECULE)
    ("cADPR" . SPARSER::MOLECULE) ("NAADP" . SPARSER::MOLECULE)
    ("Molecules and signaling pathways" . SPARSER::COLLECTION)
    ("acute promyelocytic leukemia (APL)" . SPARSER::PROTEIN)
    ("retinoic acid (ATRA)" . SPARSER::MOLECULE) ("APL" . SPARSER::PROTEIN)
    ("Lyn and CD38" . SPARSER::COLLECTION)
    ("SLP-76/Lyn/CD38" . SPARSER::COLLECTION)
    ("Vav1/Lyn/CD38" . SPARSER::COLLECTION)
    ("In contrast another SFK inhibitor" . SPARSER::INHIBITOR)
    ("ATRA and PP2" . SPARSER::COLLECTION) ("p85/p55" . SPARSER::COLLECTION)
    ("PP2 and dasatinib" . SPARSER::COLLECTION)
    ("kinase (SFK)" . SPARSER::KINASE)
    ("Vav1 and SLP-76" . SPARSER::COLLECTION) ("Lyn" . SPARSER::PROTEIN)
    ("ATRA" . SPARSER::DRUG) ("ZAP70" . SPARSER::PROTEIN)
    ("c-FMS" . SPARSER::PROTEIN) ("CSF-1" . SPARSER::PROTEIN)
    ("NB4" . SPARSER::PROTEIN) ("RARα" . SPARSER::PROTEIN)
    ("c-Cbl" . SPARSER::PROTEIN) ("SLP-76" . SPARSER::PROTEIN)
    ("Vav1" . SPARSER::PROTEIN) ("JP" . SPARSER::PROTEIN)
    ("IE" . SPARSER::PROTEIN) ("Formalin" . SPARSER::MOLECULE)
    ("an endometrial estrogen agonist" . SPARSER::AGONIST)
    ("stromal PR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("stromal ER" . SPARSER::PROTEIN)
    ("ER-α, PR-A and PR-B" . SPARSER::COLLECTION)
    ("PR and ER" . SPARSER::COLLECTION)
    ("complex, and precision" . SPARSER::COLLECTION)
    ("most superficial EC" . SPARSER::PROTEIN)
    ("ER-α, PR-A and Ki67" . SPARSER::COLLECTION)
    ("ER-α and ER-β" . SPARSER::COLLECTION)
    ("ESR1 and ESR2" . SPARSER::COLLECTION)
    ("intra-and extra-nuclear receptors" . SPARSER::PROTEIN)
    ("PRs and ERs" . SPARSER::COLLECTION) ("histologic type" . TYPE)
    ("ER-α and PR-A" . SPARSER::COLLECTION)
    ("PR-A and ER-α" . SPARSER::COLLECTION)
    ("ER-α, PR-A, PR–B and Ki67" . SPARSER::COLLECTION)
    ("ER-α, PR-A and PR–B" . SPARSER::COLLECTION)
    ("estrogen and progesterone" . SPARSER::COLLECTION)
    ("NT 4" . SPARSER::PROTEIN) ("ESR2" . SPARSER::PROTEIN)
    ("ER-β" . SPARSER::PROTEIN) ("PR-B" . SPARSER::PROTEIN)
    ("PR–B" . SPARSER::PROTEIN) ("PR-A" . SPARSER::PROTEIN)
    ("two polymorphic variants" . SPARSER::VARIANT)
    ("only one polymorphic variant" . SPARSER::VARIANT)
    ("ATC and ACC" . SPARSER::COLLECTION) ("ATT" . SPARSER::PROTEIN)
    ("multiple polymorphic variants" . SPARSER::VARIANT)
    ("ATC" . SPARSER::PROTEIN) ("intestinal type" . TYPE)
    ("the intestinal type" . TYPE) ("Medina" . SPARSER::MOLECULE)
    ("A alleles and AA" . SPARSER::COLLECTION)
    ("the double A alleles" . SPARSER::ALLELE) ("RFLP" . SPARSER::PROTEIN)
    ("transmembrane glycoproteins" . SPARSER::PROTEIN)
    ("A promoter polymorphism and four polymorphisms (48 + 6 T → C, 2076C → T, 2253C → T and 1937–13 T → C)"
     . SPARSER::COLLECTION)
    ("intron–exon" . SPARSER::PROTEIN-PAIR)
    ("polymorphism and haplotypes" . SPARSER::COLLECTION)
    ("MgSO4" . SPARSER::DRUG) ("CDH1  " . SPARSER::PROTEIN)
    ("Guanidine" . SPARSER::MOLECULE) ("Rac3 and FBXL19" . SPARSER::COLLECTION)
    ("shRNA, or FBXL19" . SPARSER::COLLECTION)
    ("IAP or HACE1" . SPARSER::COLLECTION)
    ("IAP and HACE1" . SPARSER::COLLECTION)
    ("cyclin, c-Myc and c-Jun" . SPARSER::COLLECTION)
    ("Rac1 and Rac3" . SPARSER::COLLECTION)
    ("ubiquitin, and Rac3" . SPARSER::COLLECTION)
    ("Rac3-Flag" . SPARSER::COLLECTION)
    ("V5-tagged FBXL19 and Flag-tagged Rac3" . SPARSER::COLLECTION)
    ("Lactacystin" . SPARSER::DRUG)
    ("inhibitors of proteasomes (MG-132) or lysosomes (leupeptin)"
     . SPARSER::COLLECTION)
    ("RT-realtime" . SPARSER::PROTEIN-PAIR)
    ("co-overexpressed V5-tagged Rac3" . SPARSER::PROTEIN)
    ("Rac3 and Rac1" . SPARSER::COLLECTION)
    ("NEDD4L, FBXL18, and FBXL22" . SPARSER::COLLECTION)
    ("V5-tagged FBXL19" . SPARSER::PROTEIN) ("FBXL19-HA" . SPARSER::COLLECTION)
    ("TGFβ1, and TGFβ1" . SPARSER::COLLECTION)
    ("a type I classical cadherin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a lysine of the target protein [ xref ]" . SPARSER::PROTEIN)
    ("a cysteine of the E1 enzyme and the ubiquitin molecule"
     . SPARSER::COLLECTION)
    ("the E1 enzyme and the ubiquitin molecule" . SPARSER::COLLECTION)
    ("thioester" . SPARSER::MOLECULE) ("NF-κB and Erk2" . SPARSER::COLLECTION)
    ("guanidine" . SPARSER::MOLECULE)
    ("a small GTPase multifunctional protein" . SPARSER::PROTEIN)
    ("Interleukin 33" . SPARSER::PROTEIN) ("IL-33" . SPARSER::PROTEIN)
    ("PAK-1" . SPARSER::PROTEIN) ("ammonium chloride" . SPARSER::MOLECULE)
    ("HACE1" . SPARSER::PROTEIN) ("FBXW7" . SPARSER::PROTEIN)
    ("NH4Cl" . SPARSER::MOLECULE) ("FBXL22" . SPARSER::PROTEIN)
    ("FBXL18" . SPARSER::PROTEIN) ("NEDD4L" . SPARSER::PROTEIN)
    ("ST2L" . SPARSER::PROTEIN) ("FBXL19" . SPARSER::PROTEIN)
    ("Rac3" . SPARSER::PROTEIN)
    ("a cognitively heterogenous T2D-enriched cohort" . SPARSER::MOLECULE)
    ("a schizophrenic cohort" . SPARSER::MOLECULE)
    ("the cytoskeletal protein Radixin" . SPARSER::PROTEIN)
    ("Radixin" . SPARSER::PROTEIN) ("school-age" . SPARSER::PROTEIN)
    ("synaptic components" . SPARSER::COMPONENT)
    ("protocadherin" . SPARSER::PROTEIN)
    ("several exonic SNPs" . SPARSER::PROTEIN)
    ("The top 25 associated genes" . SPARSER::GENE)
    ("more polymorphic exonic variants" . SPARSER::VARIANT)
    ("The most strongly associated signals included variants"
     . SPARSER::VARIANT)
    ("MCL" . SPARSER::PROTEIN) ("dipeptidase" . SPARSER::PROTEIN)
    ("given cognitive traits" . SPARSER::PROTEIN)
    ("associated variants" . SPARSER::VARIANT)
    ("multiple associated variants" . SPARSER::VARIANT)
    ("RDX/FDX1" . SPARSER::COLLECTION) ("RDX" . SPARSER::PROTEIN)
    ("radixin" . SPARSER::PROTEIN) ("paralemmin" . SPARSER::PROTEIN)
    ("the cognitive traits" . SPARSER::PROTEIN)
    ("olfactory receptor family 56 subfamily A member4/member 1"
     . SPARSER::COLLECTION)
    ("apolipoprotein" . SPARSER::MOLECULE)
    ("the previously reported cognition-associated SNPs" . SPARSER::PROTEIN)
    ("MSE" . SPARSER::PROTEIN) ("the original cohort" . SPARSER::MOLECULE)
    ("PLAA ( p = 4.9 × 10 −9 ) and rs138487371" . SPARSER::COLLECTION)
    ("PLAA" . SPARSER::PROTEIN)
    ("the Rey Auditory-Verbal Learning Task" . SPARSER::PROTEIN)
    ("Task" . SPARSER::PROTEIN) ("PID1" . SPARSER::PROTEIN)
    ("phosphotyrosine interaction domain containing 1" . SPARSER::PROTEIN)
    ("low density lipoprotein receptor" . SPARSER::PROTEIN)
    ("PCDHGA1" . SPARSER::PROTEIN) ("subfamily A" . SPARSER::PROTEIN)
    ("CHD5" . SPARSER::PROTEIN)
    ("chromodomain helicase DNA binding protein 5" . SPARSER::PROTEIN)
    ("MCF2L" . SPARSER::PROTEIN) ("KRT34" . SPARSER::PROTEIN)
    ("keratin 34" . SPARSER::PROTEIN) ("NAALADL1" . SPARSER::PROTEIN)
    ("CMYA5" . SPARSER::PROTEIN) ("protocadherin 8" . SPARSER::PROTEIN)
    ("PLEKHA6" . SPARSER::PROTEIN) ("member 6" . SPARSER::PROTEIN)
    ("family A" . SPARSER::PROTEIN) ("phospholipase A2" . SPARSER::PROTEIN)
    ("FDX1" . SPARSER::PROTEIN) ("ACCN1" . SPARSER::PROTEIN)
    ("ACVR2A" . SPARSER::PROTEIN) ("receptor type" . SPARSER::PROTEIN)
    ("MPP2" . SPARSER::PROTEIN) ("PALM2" . SPARSER::PROTEIN)
    ("WDR19" . SPARSER::PROTEIN) ("WD repeat domain 19" . SPARSER::PROTEIN)
    ("OR56A4" . SPARSER::PROTEIN) ("member 1" . SPARSER::PROTEIN)
    ("olfactory receptor family 56 subfamily A member4" . SPARSER::PROTEIN)
    ("brain derived neurotrophic factor" . SPARSER::PROTEIN)
    ("CAMTA1" . SPARSER::PROTEIN)
    ("calmodulin binding transcription activator 1" . SPARSER::PROTEIN)
    ("APOC1" . SPARSER::PROTEIN) ("C-1" . SPARSER::PROTEIN)
    ("color blindness" . SPARSER::PROTEIN) ("HbA1" . SPARSER::PROTEIN)
    ("PCDH8" . SPARSER::PROTEIN)
    ("other prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Tp53, and DAB2IP" . SPARSER::COLLECTION)
    ("an independent predictive factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DAB2IP and vimentin" . SPARSER::COLLECTION)
    ("DAB2IP and E-cadherin" . SPARSER::COLLECTION)
    ("ERK or Akt" . SPARSER::COLLECTION) ("p-ERK1/2" . SPARSER::PROTEIN)
    ("Akt or ERK" . SPARSER::COLLECTION) ("DAB2IP-" . SPARSER::PROTEIN)
    ("DAB2IP-siRNA" . SPARSER::COLLECTION) ("CON-siRNA" . SPARSER::COLLECTION)
    ("CON" . SPARSER::PROTEIN)
    ("DAB2IP and other established prognostic factors" . SPARSER::COLLECTION)
    ("other established prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("log–rank" . SPARSER::COLLECTION) ("Actuarial RFS" . SPARSER::PROTEIN)
    ("Tp53 and Ki67" . SPARSER::COLLECTION)
    ("DOC-2/DAB2 interacting protein" . SPARSER::COLLECTION)
    ("possible novel therapeutic targets" . SPARSER::TARGET-PROTEIN)
    ("novel prognostic biomarkers" . SPARSER::MOLECULE)
    ("E-cadherin and vimentin" . SPARSER::COLLECTION)
    ("histological variants" . SPARSER::VARIANT)
    ("The DOC-2/DAB2 interactive protein" . SPARSER::PROTEIN)
    ("DOC-2/DAB2" . SPARSER::COLLECTION)
    ("Phenylmethanesulfonyl fluoride" . SPARSER::MOLECULE)
    ("1-C" . SPARSER::PROTEIN) ("1-B" . SPARSER::PROTEIN)
    ("DIP1" . SPARSER::PROTEIN) ("DAB2 interacting protein" . SPARSER::PROTEIN)
    ("DAB2IP" . SPARSER::PROTEIN) ("DAB2" . SPARSER::PROTEIN)
    ("DOC-2" . SPARSER::PROTEIN) ("MIB-1 and PCNA" . SPARSER::COLLECTION)
    ("a multifunctional transcription factor" . SPARSER::PROTEIN)
    ("genes or protooncogenes" . SPARSER::COLLECTION)
    ("The cholesteatomatous suppurative otitis media" . SPARSER::PROTEIN)
    ("EGF, TGF-alpha, beta, IL-6, IL-1, and GM-CSF" . SPARSER::COLLECTION)
    ("ICAM" . SPARSER::PROTEIN-FAMILY) ("matrixes" . SPARSER::PROTEIN-FAMILY)
    ("keratin" . SPARSER::PROTEIN) ("a keratinous cyst" . SPARSER::PROTEIN)
    ("a multilayered keratinizing squamous cyst" . SPARSER::PROTEIN)
    ("the keratinous cyst" . SPARSER::PROTEIN)
    ("−3 and 6.3" . SPARSER::COLLECTION) ("SD " . SPARSER::PROTEIN)
    ("PPIA" . SPARSER::PROTEIN) ("resp" . SPARSER::PROTEIN)
    ("a plausible causative factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the peripheral part" . SPARSER::COMPONENT) ("cyst" . SPARSER::PROTEIN)
    ("TGF-alpha" . SPARSER::PROTEIN) ("ROR" . SPARSER::PROTEIN)
    ("APCs" . SPARSER::PROTEIN)
    ("two potentially pathogenic cytokines" . SPARSER::PROTEIN)
    ("rapamycin-sensitive mTORC1 and rapamycin-resistant GATA-3"
     . SPARSER::COLLECTION)
    ("neither exogenous IL-4" . SPARSER::PROTEIN)
    ("IL-4 or IL-17" . SPARSER::COLLECTION) ("Ionomycin" . SPARSER::DRUG)
    ("HC and SLE" . SPARSER::COLLECTION)
    ("IL-4 and IL-17" . SPARSER::COLLECTION)
    ("IFN-γ and IL-17" . SPARSER::COLLECTION)
    ("IFN-γ and IL-4" . SPARSER::COLLECTION)
    ("anti-double stranded DNA antibodies" . SPARSER::ANTIBODY)
    ("neither CD4 nor CD8" . SPARSER::COLLECTION)
    ("Systemic lupus erythematosus" . SPARSER::PROTEIN)
    ("SLE and HC" . SPARSER::COLLECTION)
    ("pS6K or pS6RP and pAkt" . SPARSER::COLLECTION)
    ("CD39" . SPARSER::PROTEIN) ("brefeldin A" . SPARSER::MOLECULE)
    ("Mechanistic target of rapamycin" . SPARSER::PROTEIN)
    ("GATA-3" . SPARSER::PROTEIN) ("pS6K" . SPARSER::PROTEIN)
    ("mechanistic target of rapamycin" . SPARSER::PROTEIN)
    ("further activating microglia" . SPARSER::PROTEIN)
    ("mixed lineage kinase 3/c-Jun" . SPARSER::COLLECTION)
    ("a mainly proinflammatory cytokine" . SPARSER::PROTEIN)
    ("noxious endogenous mediators" . SPARSER::PROTEIN)
    ("GSK-3β inhibitors or upstream Akt inhibitors ( xref , xref )"
     . SPARSER::COLLECTION)
    ("special inhibitors" . SPARSER::INHIBITOR)
    ("a presynaptic neuronal protein" . SPARSER::PROTEIN)
    ("apoptogenic molecules and cell apoptosis ( xref )" . SPARSER::COLLECTION)
    ("Bcl-2 and Mcl-1" . SPARSER::COLLECTION)
    ("pro-apoptotic molecules" . SPARSER::MOLECULE)
    ("particularly B-cell lymphoma 2 (Bcl-2) family proteins"
     . SPARSER::PROTEIN)
    ("Bax, Bcl-2 and Mcl-1" . SPARSER::COLLECTION)
    ("apoptogenic molecules" . SPARSER::MOLECULE)
    ("further inhibiting complex I" . SPARSER::PROTEIN)
    ("rotenone and MPTP" . SPARSER::COLLECTION)
    ("MPP + and rotenone" . SPARSER::COLLECTION)
    ("neurotoxins" . SPARSER::PROTEIN)
    ("SN, platelets and skeletal muscle" . SPARSER::COLLECTION)
    ("a lipophilic molecule" . SPARSER::MOLECULE)
    ("a pleiotropic enzyme" . SPARSER::ENZYME)
    ("two highly homologous genes" . SPARSER::GENE) ("MPTP" . SPARSER::PROTEIN)
    ("tetrahydropyridine" . SPARSER::MOLECULE)
    ("key inducers" . SPARSER::MOLECULE) ("mPTP" . SPARSER::PROTEIN)
    ("GSK-3α and GSK-3β" . SPARSER::COLLECTION)
    ("a pleiotropic serine/threonine protein kinase" . SPARSER::PROTEIN)
    ("mixed lineage kinase 3" . SPARSER::PROTEIN)
    ("α-synuclein" . SPARSER::PROTEIN)
    ("dopamine transporter" . SPARSER::PROTEIN)
    ("monoamine oxidase" . SPARSER::PROTEIN) ("type B" . SPARSER::PROTEIN)
    ("MPP +" . SPARSER::MOLECULE) ("gsk-3β" . SPARSER::PROTEIN)
    ("Complex I" . SPARSER::PROTEIN) ("complex I" . SPARSER::PROTEIN)
    ("a key deacetylase" . SPARSER::PROTEIN)
    ("the unique sirtuin-regulated substrates" . SPARSER::SUBSTRATE)
    ("either MEK1(S218/222D) or MEK1(K175/362Q) proteins"
     . SPARSER::COLLECTION)
    ("nucleosome and caspase-3" . SPARSER::COLLECTION)
    ("the acetylation-defective MEK1(K175/362R) mutant" . SPARSER::MUTANT)
    ("VC" . SPARSER::MOLECULE) ("Gal4-ELK" . SPARSER::COLLECTION)
    ("Gal4" . SPARSER::PROTEIN) ("ElK" . SPARSER::PROTEIN)
    ("Gal" . SPARSER::PROTEIN) ("exclusively nuclear MEK1" . SPARSER::PROTEIN)
    ("Flag-MEK1" . SPARSER::COLLECTION) ("MEK1 or ERK" . SPARSER::COLLECTION)
    ("SIRT1 and MEK1" . SPARSER::COLLECTION)
    ("subsequently immunoblotted MEK1" . SPARSER::PROTEIN)
    ("immunoblotted MEK1" . SPARSER::PROTEIN)
    ("acetyltransferases directly target MEK1" . SPARSER::PROTEIN)
    ("suramin or splitomicin" . SPARSER::COLLECTION)
    ("splitomicin" . SPARSER::DRUG) ("suramin" . SPARSER::DRUG)
    ("MEK1 and ERK" . SPARSER::COLLECTION) ("NAM" . SPARSER::PROTEIN-FAMILY)
    ("MEK1/2 and ERK1/2" . SPARSER::COLLECTION)
    ("p300/EP300" . SPARSER::COLLECTION) ("deacetylase" . SPARSER::PROTEIN)
    ("both threonine (T) and tyrosine (Y) residues" . SPARSER::COLLECTION)
    ("ERK2/MAPK1" . SPARSER::COLLECTION) ("ERK1/MAPK3" . SPARSER::COLLECTION)
    ("MEK2/MAP2K2" . SPARSER::COLLECTION) ("MEK1/MAP2K1" . SPARSER::COLLECTION)
    ("mitogen activated protein kinase kinase (MEK)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SIRT1 or SIRT2" . SPARSER::COLLECTION)
    ("SIRT1 and SIRT2" . SPARSER::COLLECTION)
    ("Sirtuins" . SPARSER::PROTEIN-FAMILY) ("interleukin-3" . SPARSER::PROTEIN)
    ("ADP-ribosyltransferase" . SPARSER::PROTEIN)
    ("mitogen activated protein kinase kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mitogen-activated protein kinase kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IGF-1/mTOR" . SPARSER::COLLECTION) ("IGFs/mTOR" . SPARSER::COLLECTION)
    ("FLS" . SPARSER::PROTEIN) ("MF and/or RAP" . SPARSER::COLLECTION)
    ("p21, γH2AX, and RP" . SPARSER::COLLECTION) ("Mtx" . SPARSER::DRUG)
    ("the senescence-associated β-galactosidase" . SPARSER::PROTEIN)
    ("LSC" . SPARSER::PROTEIN) ("mTOR or 4EBP1" . SPARSER::COLLECTION)
    ("S6 P" . SPARSER::PROTEIN) ("BRB and RAP" . SPARSER::COLLECTION)
    ("mTOR and 4EBP1" . SPARSER::COLLECTION)
    ("mTOR, RP-S6, and 4EBP1" . SPARSER::COLLECTION)
    ("RAP, BRB, 2dG, and Vit" . SPARSER::COLLECTION)
    ("mTOR and the eukaryotic translation initiation factor 4E–binding protein (4EBP1)"
     . SPARSER::COLLECTION)
    ("available phospho-specific Abs" . SPARSER::PROTEIN)
    ("RP-S6 P" . SPARSER::COLLECTION) ("fluorochrome" . SPARSER::MOLECULE)
    ("γH2AX or RP-S6 P" . SPARSER::COLLECTION) ("BRB" . SPARSER::MOLECULE)
    ("the strongly fluorescent DCF" . SPARSER::PROTEIN)
    ("nearly all these drugs" . SPARSER::DRUG)
    ("resveratrol (RSV)" . SPARSER::PROTEIN) ("ASA" . SPARSER::PROTEIN)
    ("metformin (MF)" . SPARSER::DRUG) ("rapamycin (RAP)" . SPARSER::DRUG)
    ("berberine (BRB)" . SPARSER::MOLECULE) ("Vit" . SPARSER::PROTEIN)
    ("ascorbate and celecoxib" . SPARSER::COLLECTION)
    ("bromopyruvate" . SPARSER::DRUG) ("celecoxib" . SPARSER::DRUG)
    ("ascorbate" . SPARSER::MOLECULE)
    ("the classical ROS scavenger N-acetylcysteine" . SPARSER::DRUG)
    ("hyaluronate" . SPARSER::MOLECULE) ("oxidants" . SPARSER::MOLECULE)
    ("Variety" . SPARSER::VARIETY) ("protein kinase (ATM)" . SPARSER::PROTEIN)
    ("Refs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ROS and oxidative DNA" . SPARSER::COLLECTION)
    ("ROS and/or mTOR" . SPARSER::COLLECTION)
    ("IGFs and mTOR" . SPARSER::COLLECTION) ("spermidine" . SPARSER::MOLECULE)
    ("Polyamines" . SPARSER::MOLECULE)
    ("The autophagy-associated genes" . SPARSER::GENE)
    ("a naturally occurring alkaloid" . SPARSER::MOLECULE)
    ("alkaloid" . SPARSER::MOLECULE) ("Berberine" . SPARSER::MOLECULE)
    ("Metformin and berberine" . SPARSER::COLLECTION)
    ("GH and IGF-1" . SPARSER::COLLECTION)
    ("somatotropin (growth hormone, GH) and IGF-1 ( xref – xref )"
     . SPARSER::COLLECTION)
    ("mitogens and growth factors" . SPARSER::COLLECTION)
    ("somatotropin" . SPARSER::PROTEIN)
    ("sugars and amino acids" . SPARSER::COLLECTION)
    ("MAPK, AKT, and PI3K" . SPARSER::COLLECTION)
    ("IGF-1/GH" . SPARSER::COLLECTION)
    ("indirect (e.g., metformin) mTOR inhibitors" . SPARSER::INHIBITOR)
    ("mammalian target of rapamycin (mTOR) and its downstream substrate S6 protein kinase (S6K)"
     . SPARSER::COLLECTION)
    ("growth hormone (GH)" . SPARSER::PROTEIN)
    ("“GH/IGFs" . SPARSER::COLLECTION) ("GH" . SPARSER::PROTEIN)
    ("protein or RNA" . SPARSER::COLLECTION) ("nutrient-" . SPARSER::MOLECULE)
    ("oncogene or tumor suppressor gene" . SPARSER::COLLECTION)
    ("nonhomologous DNA-end joining (NHEJ)" . SPARSER::DNA)
    ("nonhomologous DNA-end" . SPARSER::DNA) ("DNA-end" . SPARSER::DNA)
    ("ROS or mTOR" . SPARSER::COLLECTION)
    ("decreased oxidative DNA" . SPARSER::DNA)
    ("deoxyglucose" . SPARSER::MOLECULE) ("resveratrol" . SPARSER::PROTEIN)
    ("berberine" . SPARSER::MOLECULE) ("mTOR/S6K1" . SPARSER::COLLECTION)
    ("IGF-1/mTOR/S6K1" . SPARSER::COLLECTION) ("B12" . SPARSER::PROTEIN)
    ("DNA topoisomerase II" . SPARSER::PROTEIN)
    ("Ataxia Telangiectasia" . SPARSER::PROTEIN) ("NAD+" . SPARSER::MOLECULE)
    ("SIRT-1" . SPARSER::PROTEIN) ("d-glucose" . SPARSER::MOLECULE)
    ("growth hormone" . SPARSER::PROTEIN) ("vitamin D3" . SPARSER::MOLECULE)
    ("CDKN1A and RB1" . SPARSER::COLLECTION)
    ("their respective receptors" . SPARSER::PROTEIN)
    ("EPO and TPO" . SPARSER::COLLECTION) ("TPO and EPO" . SPARSER::COLLECTION)
    ("myeloid and erythroid" . SPARSER::COLLECTION) ("mESC" . SPARSER::PROTEIN)
    ("therapeutically relevant RBCs" . SPARSER::PROTEIN)
    ("any mature enucleated RBCs" . SPARSER::PROTEIN)
    ("MEPs" . SPARSER::PROTEIN) ("embryonic globins" . SPARSER::PROTEIN)
    ("globins" . SPARSER::PROTEIN) ("sac" . SPARSER::PROTEIN)
    ("TPO or EPO" . SPARSER::COLLECTION)
    ("MEP and their erythroid progeny" . SPARSER::COLLECTION)
    ("GATA1 and RB1" . SPARSER::COLLECTION)
    ("BCL-xL (P=0.004, n=3) and VEGFA (P=0.008, n=3)" . SPARSER::COLLECTION)
    ("PI3K inhibitors (LY294002 and Wortmannin) and an AKT specific inhibitor (AKT inhibitor IV)"
     . SPARSER::COLLECTION)
    ("LY294002 and Wortmannin" . SPARSER::COLLECTION)
    ("AKT and STAT5" . SPARSER::COLLECTION)
    ("ERK1/2 or p38" . SPARSER::COLLECTION) ("ERK-MAPK" . SPARSER::COLLECTION)
    ("Globin" . SPARSER::PROTEIN)
    ("both gamma (fetal) and beta (adult) globin" . SPARSER::COLLECTION)
    ("EPO or TPO" . SPARSER::COLLECTION)
    ("Thrombopoietin (TPO)" . SPARSER::PROTEIN)
    ("EPO, or CID" . SPARSER::COLLECTION)
    ("EPO or EPO and CID" . SPARSER::COLLECTION)
    ("EPO and CID" . SPARSER::COLLECTION)
    ("CD34 and CD43" . SPARSER::COLLECTION)
    ("VE-cadherin" . SPARSER::COLLECTION) ("MEP" . SPARSER::PROTEIN)
    ("BMP4, VEGF, and FGF" . SPARSER::COLLECTION) ("GlyA" . SPARSER::PROTEIN)
    ("aka" . SPARSER::PROTEIN) ("an essential cytokine" . SPARSER::PROTEIN)
    ("TPO" . SPARSER::PROTEIN) ("Thrombopoietin" . SPARSER::PROTEIN)
    ("functional mature RBCs" . SPARSER::PROTEIN)
    ("approximately 85 million blood components" . SPARSER::COMPONENT)
    ("Red" . SPARSER::PROTEIN) ("GATA-1 and FOXO3" . SPARSER::COLLECTION)
    ("gamma:epsilon" . SPARSER::BIO-COMPLEX) ("epsilon" . SPARSER::PROTEIN)
    ("MPL" . SPARSER::PROTEIN) ("RBCs" . SPARSER::PROTEIN)
    ("PSC" . SPARSER::PROTEIN) ("EPO-R" . SPARSER::PROTEIN)
    ("Prolactin receptor" . SPARSER::PROTEIN) ("epsilon)" . SPARSER::PROTEIN)
    ("CD71" . SPARSER::PROTEIN) ("alpha-globin" . SPARSER::PROTEIN)
    ("Glycophorin-A" . SPARSER::PROTEIN) ("CD42a" . SPARSER::PROTEIN)
    ("Flt3 Ligand" . SPARSER::PROTEIN) ("BMP-4" . SPARSER::PROTEIN)
    ("AP20187" . SPARSER::DRUG) ("V-MPL" . SPARSER::PROTEIN)
    ("GATA-1" . SPARSER::PROTEIN) ("PGA" . SPARSER::PROTEIN)
    ("the unusual CNV variants" . SPARSER::VARIANT)
    ("the previously found structural variants" . SPARSER::VARIANT)
    ("MDD and BP" . SPARSER::COLLECTION) ("BD" . SPARSER::PROTEIN)
    ("The C3orf15/AAT-1 gene (position A) and the NR1I2 5"
     . SPARSER::COLLECTION)
    ("a considerable variety" . SPARSER::VARIETY)
    ("NR1I2 and GSK3B" . SPARSER::COLLECTION)
    ("GSK3B and RNase" . SPARSER::COLLECTION)
    ("unusual structural variants" . SPARSER::VARIANT)
    ("NR1I2 (pregnane X receptor isoform 2) and C3orf15 (expressed exclusively in the testis)"
     . SPARSER::COLLECTION)
    ("arestin" . SPARSER::MOLECULE) ("C4A and C4B" . SPARSER::COLLECTION)
    ("abnormal GSK3B" . SPARSER::PROTEIN)
    ("allelic variants" . SPARSER::VARIANT)
    ("β-arrestin-2/Akt/PP2A" . SPARSER::COLLECTION)
    ("These ubiquitous serine/threonine protein kinases" . SPARSER::KINASE)
    ("GSK3A and GSK3B" . SPARSER::COLLECTION) ("Glycogen" . SPARSER::PROTEIN)
    ("the GSK3B gene and the adjacent NR1I2 and C3orf15 genes"
     . SPARSER::COLLECTION)
    ("NR1I2 and C3orf15" . SPARSER::COLLECTION)
    ("GSK3B and NR1I2" . SPARSER::COLLECTION) ("MDD" . SPARSER::PROTEIN)
    ("antidepressants" . SPARSER::DRUG) ("CHRFAM7A" . SPARSER::PROTEIN)
    ("HU2" . SPARSER::PROTEIN) ("isoform 2" . SPARSER::PROTEIN)
    ("pregnane X receptor" . SPARSER::PROTEIN) ("C4B" . SPARSER::PROTEIN)
    ("C4A" . SPARSER::PROTEIN) ("DISC1" . SPARSER::PROTEIN)
    ("disrupted in schizophrenia 1" . SPARSER::PROTEIN)
    ("β-arrestin-2" . SPARSER::PROTEIN) ("GSK3B protein" . SPARSER::PROTEIN)
    ("GSK3A" . SPARSER::PROTEIN) ("NR1I2" . SPARSER::PROTEIN)
    ("GSK3B" . SPARSER::PROTEIN) ("3B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BMP2 or FGF2" . SPARSER::COLLECTION)
    ("BMP-SMAD-AP1" . SPARSER::COLLECTION)
    ("BMP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Myosin Light Chain Kinase, paxillin, FAK, and connexin43"
     . SPARSER::COLLECTION)
    ("RUNX2 and AP1" . SPARSER::COLLECTION)
    ("MAPK/ERK 1/2" . SPARSER::COLLECTION)
    ("undifferentiated pluripotential MSCs" . SPARSER::PROTEIN)
    ("lymphoid and myeloid" . SPARSER::COLLECTION)
    ("new light" . SPARSER::PROTEIN)
    ("acute promyelocytic leukemia" . SPARSER::PROTEIN)
    ("PPARgamma" . SPARSER::PROTEIN) ("CD99-pERK-RUNX2" . SPARSER::COLLECTION)
    ("siRNA or p53" . SPARSER::COLLECTION)
    ("ERK 1/2 and RUNX2" . SPARSER::COLLECTION)
    ("OCN and +200" . SPARSER::COLLECTION)
    ("OCN and p21" . SPARSER::COLLECTION) ("WAF/CIP1" . SPARSER::COLLECTION)
    ("WAF" . SPARSER::PROTEIN) ("Fos/Jun" . SPARSER::COLLECTION)
    ("factors and nuclear phosphatases" . SPARSER::COLLECTION)
    ("Weaker" . SPARSER::PROTEIN)
    ("ERK, JNK, and p38 MAPK" . SPARSER::COLLECTION)
    ("Nanog and OCT3/4" . SPARSER::COLLECTION)
    ("dentin matrix protein 1 (DMP1) and matrix extracellular phosphoglycoprotein (MEPE) ( xref  D ; Supplemental Fig. S3)"
     . SPARSER::COLLECTION)
    ("matrix extracellular phosphoglycoprotein (MEPE)" . SPARSER::PROTEIN)
    ("Nanog and OCT3" . SPARSER::COLLECTION) ("MEPE" . SPARSER::PROTEIN)
    ("collagen, ALP, and OCN" . SPARSER::COLLECTION)
    ("collagens and OCN" . SPARSER::COLLECTION) ("IOR" . SPARSER::PROTEIN)
    ("ALP and osteocalcin" . SPARSER::COLLECTION) ("OCN" . SPARSER::PROTEIN)
    ("CD99 and CD166, CD105, or CD29" . SPARSER::COLLECTION)
    ("CD166, CD105, or CD29" . SPARSER::COLLECTION)
    ("hBM-MSCs" . SPARSER::COLLECTION)
    ("human MSCs and mature human osteoblasts" . SPARSER::COLLECTION)
    ("CD99 and the transcription factor RUNX2" . SPARSER::COLLECTION)
    ("type 2 receptor (PILR)" . SPARSER::PROTEIN) ("PILR" . SPARSER::PROTEIN)
    ("well-differentiated variants" . SPARSER::VARIANT)
    ("methotrexate, doxorubicin, and cisplatin" . SPARSER::COLLECTION)
    ("ifosfamide or etoposide" . SPARSER::COLLECTION)
    ("ifosfamide" . SPARSER::DRUG)
    ("macrophages and monocytes" . SPARSER::COLLECTION)
    ("MTP" . SPARSER::PROTEIN) ("ethanolamine" . SPARSER::DRUG)
    ("tripeptide" . SPARSER::MOLECULE) ("muramyl" . SPARSER::MOLECULE)
    ("its social impact" . SPARSER::PROTEIN)
    ("the main osteogenic transcriptional factors AP1 and RUNX2"
     . SPARSER::COLLECTION)
    ("AP1 and RUNX2" . SPARSER::COLLECTION)
    ("osteocalcin and p21" . SPARSER::COLLECTION)
    ("WAF1/CIP1" . SPARSER::COLLECTION)
    ("connexin43" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Myosin Light Chain Kinase" . SPARSER::PROTEIN)
    ("Caveolin-1" . SPARSER::PROTEIN)
    ("short cytoplasmic tail" . SPARSER::PROTEIN)
    ("promyelocytic leukemia" . SPARSER::PROTEIN) ("BMP2" . SPARSER::PROTEIN)
    ("OCT3" . SPARSER::PROTEIN)
    ("matrix extracellular phosphoglycoprotein" . SPARSER::PROTEIN)
    ("DMP1" . SPARSER::PROTEIN) ("dentin matrix protein 1" . SPARSER::PROTEIN)
    ("1 C" . SPARSER::PROTEIN) ("CD105" . SPARSER::PROTEIN)
    ("CD166" . SPARSER::PROTEIN) ("ELK-1" . SPARSER::PROTEIN)
    ("OS9" . SPARSER::PROTEIN) ("type 2 receptor" . SPARSER::PROTEIN)
    ("MIC2" . SPARSER::PROTEIN) ("CIP1" . SPARSER::PROTEIN)
    ("WAF1" . SPARSER::PROTEIN) ("hTERT/Ki67" . SPARSER::COLLECTION)
    ("The monoclonal hTERT antibody" . SPARSER::ANTIBODY)
    ("mucosal leukocytes" . SPARSER::PROTEIN) ("holoenzyme" . SPARSER::PROTEIN)
    ("hTERT-protein" . SPARSER::COLLECTION) ("DNA-status" . SPARSER::DNA)
    ("macrophages and neutrophils" . SPARSER::COLLECTION)
    ("accessory proteins" . SPARSER::PROTEIN)
    ("hTERT and hTR" . SPARSER::COLLECTION)
    ("hTR or hTER" . SPARSER::COLLECTION)
    ("TERT-telomerase reverse transcriptase" . SPARSER::COLLECTION)
    ("hTR" . SPARSER::PROTEIN) ("TR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TERT" . SPARSER::PROTEIN) ("ribonucleoprotein" . SPARSER::PROTEIN)
    ("Telomerase" . SPARSER::PROTEIN) ("hTERT and Ki67" . SPARSER::COLLECTION)
    ("Telomerase activity" . SPARSER::PROTEIN) ("THRA" . SPARSER::PROTEIN)
    ("CCL" . SPARSER::DRUG) ("gene and leprosy" . SPARSER::COLLECTION)
    ("ERBB2 and any
form"
     . SPARSER::COLLECTION)
    ("ENL and RR" . SPARSER::COLLECTION)
    ("ERBB2 alleles and leprosy" . SPARSER::COLLECTION)
    ("LL and TT" . SPARSER::COLLECTION)
    ("se and leprosy subtypes" . SPARSER::COLLECTION)
    ("nitric oxide synthase and chemokines" . SPARSER::COLLECTION)
    ("ENL" . SPARSER::PROTEIN) ("RN" . SPARSER::PROTEIN)
    ("CSF3" . SPARSER::PROTEIN) ("NOS2A" . SPARSER::PROTEIN)
    ("epidermal growth
factor receptor"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("chromosome
17"
     . SPARSER::PROTEIN)
    ("UNC5B/DAPK" . SPARSER::COLLECTION)
    ("death-associated protein kinase (DAPK)" . SPARSER::PROTEIN)
    ("DAPK" . SPARSER::PROTEIN) ("NRAGE" . SPARSER::PROTEIN)
    ("cytokines, and oxygen" . SPARSER::COLLECTION)
    ("FANCC negatively impacts UNC5A's" . SPARSER::PROTEIN)
    ("FANCC negatively impacts UNC5A" . SPARSER::PROTEIN)
    ("the pro-apoptotic dependence receptor UNC5A" . SPARSER::PROTEIN)
    ("FANCC L554P and UNC5A ΔDD" . SPARSER::COLLECTION)
    ("full-length FANCC and a UNC5A death domain deletion mutant (UNC5A ΔDD )"
     . SPARSER::COLLECTION)
    ("anti-GFP and anti-HA" . SPARSER::COLLECTION)
    ("HA-UNC5A" . SPARSER::COLLECTION)
    ("HA-tagged UNC5A ICD and endogenous FANCC" . SPARSER::COLLECTION)
    ("anti-HA or anti-FANCC" . SPARSER::COLLECTION)
    ("ICD and FANCC" . SPARSER::COLLECTION)
    ("UNC5A and FANCC" . SPARSER::COLLECTION)
    ("full-length FANCC and both FANCC" . SPARSER::COLLECTION)
    ("FANCC or FANCC" . SPARSER::COLLECTION) ("ICD" . SPARSER::PROTEIN)
    ("FANCG" . SPARSER::PROTEIN) ("prey" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FANCC and UNC5A" . SPARSER::COLLECTION) ("limb" . SPARSER::PROTEIN)
    ("DDs" . SPARSER::PROTEIN) ("DCC" . SPARSER::PROTEIN)
    ("thrombospondin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("UNC5A, UNC5B, UNC5C, and UNC5D" . SPARSER::COLLECTION)
    ("UNC5H1, UNC5H2, UNC5H3, and UNC5H4" . SPARSER::COLLECTION)
    ("FANCE" . SPARSER::PROTEIN)
    ("16 FA disease-associated genes" . SPARSER::GENE)
    ("various congenital malformations" . SPARSER::PROTEIN)
    ("a pro-apoptotic dependence receptor" . SPARSER::RECEPTOR)
    ("Fanconi anemia group C protein (FANCC)" . SPARSER::PROTEIN)
    ("FANCC" . SPARSER::PROTEIN) ("protein phosphatase 2A" . SPARSER::PROTEIN)
    ("death-associated protein kinase" . SPARSER::PROTEIN)
    ("MAGED1" . SPARSER::PROTEIN) ("P protein" . SPARSER::PROTEIN)
    ("peroxiredoxin-3" . SPARSER::PROTEIN) ("AH109 S" . SPARSER::DRUG)
    ("ADE2" . SPARSER::PROTEIN) ("AH109" . SPARSER::DRUG)
    ("Gal-4" . SPARSER::PROTEIN) ("CA5" . SPARSER::PROTEIN)
    ("ZU5" . SPARSER::PROTEIN-FAMILY) ("single-pass" . SPARSER::PROTEIN-FAMILY)
    ("UNC5" . SPARSER::PROTEIN) ("UNC5H4" . SPARSER::PROTEIN)
    ("UNC5H3" . SPARSER::PROTEIN) ("UNC5H2" . SPARSER::PROTEIN)
    ("UNC5H1" . SPARSER::PROTEIN) ("UNC5D" . SPARSER::PROTEIN)
    ("UNC5C" . SPARSER::PROTEIN) ("UNC5B" . SPARSER::PROTEIN)
    ("netrin-1" . SPARSER::PROTEIN) ("group E" . SPARSER::PROTEIN)
    ("UNC5A" . SPARSER::PROTEIN) ("Fanconi anemia" . SPARSER::PROTEIN)
    ("Fanconi anemia group C protein" . SPARSER::PROTEIN)
    ("complex and context-dependent xref" . SPARSER::COLLECTION)
    ("pFAK and pMAPK" . SPARSER::COLLECTION)
    ("these promiscuous oncogenic kinases" . SPARSER::KINASE)
    ("RET or Src" . SPARSER::COLLECTION)
    ("RET and other RTKs" . SPARSER::COLLECTION)
    ("RET or EGFR" . SPARSER::COLLECTION) ("RTK and FAK" . SPARSER::COLLECTION)
    ("FAK and several RTKs" . SPARSER::COLLECTION)
    ("dRET and dEGFR" . SPARSER::COLLECTION) ("Receptors" . SPARSER::PROTEIN)
    ("ERK1/2 or EGFR" . SPARSER::COLLECTION) ("Dynasore" . SPARSER::MOLECULE)
    ("Dynamin" . SPARSER::PROTEIN) ("EGF/EGFR" . SPARSER::COLLECTION)
    ("FAK-siRNA" . SPARSER::COLLECTION)
    ("ERK1/2 and EGFR" . SPARSER::COLLECTION)
    ("EGFR and FAK" . SPARSER::COLLECTION)
    ("The epithelial growth factor receptor (EGFR)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ras and Raf" . SPARSER::COLLECTION) ("dRET/MAPK" . SPARSER::COLLECTION)
    ("pSrc" . SPARSER::PROTEIN) ("dInR" . SPARSER::PROTEIN)
    ("Cut" . SPARSER::PROTEIN) ("RET and FAK" . SPARSER::COLLECTION)
    ("Src and Ras" . SPARSER::COLLECTION)
    ("Ras85D or Src42A" . SPARSER::COLLECTION)
    ("Hid or its downstream effectors" . SPARSER::COLLECTION)
    ("GMR-hid" . SPARSER::COLLECTION) ("hid" . SPARSER::PROTEIN)
    ("Hid" . SPARSER::PROTEIN)
    ("virtually no apoptotic cells inGMR-dRET WT retinas" . SPARSER::DRUG)
    ("inGMR-dRET" . SPARSER::COLLECTION) ("APF" . SPARSER::PROTEIN)
    ("retinas" . SPARSER::DRUG) ("RET/FAK" . SPARSER::COLLECTION)
    ("the imaginal discs" . SPARSER::BIO-COMPLEX)
    ("most imaginal discs" . SPARSER::BIO-COMPLEX)
    ("patched" . SPARSER::PROTEIN)
    ("different imaginal discs" . SPARSER::BIO-COMPLEX)
    ("dRET and dFAK" . SPARSER::COLLECTION) ("GMR-gal4" . SPARSER::COLLECTION)
    ("dpp" . SPARSER::PROTEIN) ("withGMR-dRET" . SPARSER::COLLECTION)
    ("CG1" . SPARSER::PROTEIN) ("Src42A or Ras85D" . SPARSER::COLLECTION)
    ("Jra" . SPARSER::PROTEIN) ("RasGAP" . SPARSER::PROTEIN)
    ("ksr" . SPARSER::PROTEIN) ("drk" . SPARSER::PROTEIN)
    ("dRET" . SPARSER::PROTEIN) ("GMR-dRET" . SPARSER::COLLECTION)
    ("GMR" . SPARSER::PROTEIN) ("Src and MAPK" . SPARSER::COLLECTION)
    ("Src, FAK or MAPK" . SPARSER::COLLECTION)
    ("imaginal discs" . SPARSER::BIO-COMPLEX) ("gal" . SPARSER::PROTEIN)
    ("ptc" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FAK and MAPK" . SPARSER::COLLECTION)
    ("the RTK epithelial growth factor receptor (EGFR)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FAK and RET" . SPARSER::COLLECTION)
    ("RTK/Ras/MAPK" . SPARSER::COLLECTION)
    ("a valid drug target" . SPARSER::TARGET-PROTEIN)
    ("Integrins and Receptor Tyrosine Kinases" . SPARSER::COLLECTION)
    ("RTK/MAPK" . SPARSER::COLLECTION) ("RET and EGFR" . SPARSER::COLLECTION)
    ("Receptor Tyrosine Kinases (RTKs) and Focal Adhesion Kinase (FAK)"
     . SPARSER::COLLECTION)
    ("Kinase (FAK)" . SPARSER::KINASE) ("anti–EGFR" . SPARSER::PROTEIN)
    ("MAPK kinase" . SPARSER::PROTEIN) ("Src64B" . SPARSER::PROTEIN)
    ("Src42A" . SPARSER::PROTEIN) ("Gap1" . SPARSER::PROTEIN)
    ("Ras85D" . SPARSER::PROTEIN) ("Myb" . SPARSER::PROTEIN)
    ("is line" . SPARSER::PROTEIN) ("HCA" . SPARSER::PROTEIN)
    ("pcDNA" . SPARSER::PROTEIN) ("pcDNA-c-Myb" . SPARSER::COLLECTION)
    ("HCCs" . SPARSER::PROTEIN) ("PLAG1" . SPARSER::PROTEIN)
    ("C-Myb protein" . SPARSER::PROTEIN) ("c-Myb" . SPARSER::PROTEIN)
    ("a vital cell cycle regulator" . SPARSER::REGULATOR)
    ("the HRs and its 95% CIs" . SPARSER::COLLECTION)
    ("HRs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("het  " . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("het" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the clinicopathological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("certain prognostic factors and cyclin" . SPARSER::COLLECTION)
    ("factors and cyclin" . SPARSER::COLLECTION)
    ("cyclin E and cyclin" . SPARSER::COLLECTION)
    ("cyclin E-CDK 2" . SPARSER::COLLECTION)
    ("a vital protein" . SPARSER::PROTEIN)
    ("molecular biomarkers and the aggressiveness" . SPARSER::COLLECTION)
    ("HR " . SPARSER::PROTEIN) ("CDK 2" . SPARSER::PROTEIN)
    ("subunit 4" . SPARSER::PROTEIN)
    ("approximately 80 cellular genes" . SPARSER::GENE)
    ("Latency-associated nuclear antigen (LANA)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("antigen (LANA)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LANA" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a homolog of cellular IL-6" . SPARSER::PROTEIN)
    ("Cellular IL-6" . SPARSER::PROTEIN) ("STAT3-DN" . SPARSER::COLLECTION)
    ("STAT3 (pMSCV-STAT3-DN) and the control vector pMSCV"
     . SPARSER::COLLECTION)
    ("pMSCV-STAT3-DN" . SPARSER::COLLECTION)
    ("STAT3 and DNMT1" . SPARSER::COLLECTION)
    ("STAT3 and/or AKT" . SPARSER::COLLECTION) ("hy" . SPARSER::MOLECULE)
    ("EA" . SPARSER::PROTEIN) ("vIL-6 and cellular IL-6" . SPARSER::COLLECTION)
    ("cellular IL-6" . SPARSER::PROTEIN)
    ("cellular IL-6 and VEGF" . SPARSER::COLLECTION)
    ("IL-6 and VEGF" . SPARSER::COLLECTION) ("a viral form" . SPARSER::FORM)
    ("STAT3 and AKT" . SPARSER::COLLECTION)
    ("Acquired immunodeficiency syndrome-associated KS" . SPARSER::PROTEIN)
    ("MCD" . SPARSER::PROTEIN) ("PEL" . SPARSER::PROTEIN)
    ("Fli-1" . SPARSER::PROTEIN) ("DNMT3a" . SPARSER::PROTEIN)
    ("S3I-201" . SPARSER::MOLECULE) ("K2" . SPARSER::PROTEIN)
    ("DNA methyltransferase 1" . SPARSER::PROTEIN) ("vIL-6" . SPARSER::PROTEIN)
    ("EFTu" . SPARSER::PROTEIN) ("bacterial PDF" . SPARSER::PROTEIN)
    ("CAM and tetracycline" . SPARSER::COLLECTION)
    ("Hsp10 and Hsp60" . SPARSER::COLLECTION) ("ClpP" . SPARSER::PROTEIN)
    ("actinonin, CHOP and CEB/P" . SPARSER::COLLECTION)
    ("the chaperone trigger factor and a methionine aminopeptidase"
     . SPARSER::COLLECTION)
    ("galactose" . SPARSER::MOLECULE) ("bestatin" . SPARSER::MOLECULE)
    ("APN" . SPARSER::PROTEIN) ("CAM or tetracycline" . SPARSER::COLLECTION)
    ("actinonins" . SPARSER::MOLECULE)
    ("possibly histone deacetylases" . SPARSER::PROTEIN)
    ("metalloproteases" . SPARSER::PROTEIN) ("Actinonin" . SPARSER::MOLECULE)
    ("Chloramphenicol" . SPARSER::DRUG)
    ("a secondary antibody" . SPARSER::ANTIBODY)
    ("red and HsPDF" . SPARSER::COLLECTION)
    ("the peptidomimetic actinonin" . SPARSER::MOLECULE)
    ("the mitochondrial DNA and control mitochondrial DNA replication  xref"
     . SPARSER::COLLECTION)
    ("PDF" . SPARSER::PROTEIN) ("CHOP and CEB/P" . SPARSER::COLLECTION)
    ("Lon" . SPARSER::PROTEIN) ("CEB" . SPARSER::PROTEIN)
    ("chloramphenicol or tetracycline" . SPARSER::COLLECTION)
    ("chloramphenicol" . SPARSER::DRUG) ("actinonin" . SPARSER::MOLECULE)
    ("Oxa1" . SPARSER::PROTEIN) ("Hsp60" . SPARSER::PROTEIN)
    ("Hsp10" . SPARSER::PROTEIN)
    ("methionine aminopeptidase 1" . SPARSER::PROTEIN)
    ("methionine aminopeptidase" . SPARSER::PROTEIN)
    ("trigger factor" . SPARSER::PROTEIN)
    ("adenosine triphosphate" . SPARSER::MOLECULE)
    ("aminopeptidase N" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("caspases-3" . SPARSER::PROTEIN) ("only Cx43 protein" . SPARSER::PROTEIN)
    ("the gap junctional protein" . SPARSER::PROTEIN)
    ("fluorescent dye" . SPARSER::MOLECULE) ("MAPK-AP-1" . SPARSER::COLLECTION)
    ("octanol" . SPARSER::MOLECULE) ("CMTMR" . SPARSER::DRUG)
    ("Omalizumab" . SPARSER::DRUG) ("-EGFR" . SPARSER::COLLECTION)
    ("FDA-approved anti-EGFR chimeric monoclonal antibody" . SPARSER::DRUG)
    ("200  μ M TMZ and exogenous rhEGF (IC 50 =50 ng/ml)"
     . SPARSER::COLLECTION)
    ("exogenous rhEGF" . SPARSER::DRUG) ("rhEGF" . SPARSER::DRUG)
    ("JNK and U0126" . SPARSER::COLLECTION)
    ("JNK, ERK1/2 and EGFR" . SPARSER::COLLECTION)
    ("JNK-ERK-AP-1" . SPARSER::COLLECTION)
    ("phospho-ERK and -JNK ( xref and xref )" . SPARSER::COLLECTION)
    ("-JNK" . SPARSER::COLLECTION) ("JNK and ERK1/2" . SPARSER::COLLECTION)
    ("increased phospho-c-Jun in both cell lines and minimum phospho-c-Fos ( xref , xref )"
     . SPARSER::COLLECTION)
    ("-Fos" . SPARSER::COLLECTION)
    ("a heterodimeric transcription factor" . SPARSER::PROTEIN)
    ("c-Fos and c-Jun" . SPARSER::COLLECTION)
    ("Cx26 and Cx32" . SPARSER::COLLECTION) ("Chip" . SPARSER::PROTEIN)
    ("reduced Cx26 and undetectable Cx32 ( xref )" . SPARSER::COLLECTION)
    ("undetectable Cx32" . SPARSER::PROTEIN)
    ("commercial U87" . SPARSER::PROTEIN)
    ("Cx26, Cx32 and Cx43" . SPARSER::COLLECTION)
    ("small molecules and microRNA" . SPARSER::COLLECTION)
    ("connexin" . SPARSER::PROTEIN-FAMILY) ("Erb" . SPARSER::PROTEIN)
    ("JNK-ERK1/2-AP-1" . SPARSER::COLLECTION) ("Cx" . SPARSER::PROTEIN-FAMILY)
    ("connexins" . SPARSER::PROTEIN-FAMILY) ("GJA1" . SPARSER::PROTEIN)
    ("Cx32" . SPARSER::PROTEIN) ("Cx26" . SPARSER::PROTEIN)
    ("Cx43" . SPARSER::PROTEIN)
    ("Bcl-xL
and XIAP"
     . SPARSER::COLLECTION)
    ("cFLIP" . SPARSER::PROTEIN) ("HDAC3 and SIRT1" . SPARSER::COLLECTION)
    ("promoter-" . SPARSER::PROMOTER)
    ("GSK-3 β -null
MEFs"
     . SPARSER::PROTEIN)
    ("DDX3 and cIAP1" . SPARSER::COLLECTION)
    ("caspase-8 and caspase-3" . SPARSER::COLLECTION)
    ("the available GSK-3 kinase inhibitors" . SPARSER::INHIBITOR)
    ("flag" . SPARSER::PROTEIN-FAMILY) ("pLenti-Flag" . SPARSER::PROTEIN-PAIR)
    ("an NF- κ B- and GSK-3i-independent promoter" . SPARSER::COLLECTION)
    ("NF- κ B-" . SPARSER::PROTEIN) ("shBcl-xL" . SPARSER::COLLECTION)
    ("Bcl-xL or XIAP" . SPARSER::COLLECTION)
    ("XIAP as well as cIAP2" . SPARSER::COLLECTION)
    ("lentiviral shRNA" . SPARSER::PROTEIN)
    ("TRAIL and TNF α" . SPARSER::COLLECTION)
    ("Bcl-xL, cIAP2 and XIAP" . SPARSER::COLLECTION)
    ("Bcl-xL and XIAP" . SPARSER::COLLECTION)
    ("TRAIL- and TNF α" . SPARSER::COLLECTION) ("TRAIL-" . SPARSER::PROTEIN)
    ("GSK-3 β nor re-expression" . SPARSER::COLLECTION)
    ("I κ B α , Bcl-xL and cIAP2" . SPARSER::COLLECTION)
    ("differentially impact p65 and/or
p50"
     . SPARSER::COLLECTION)
    ("repressive
chromatin"
     . SPARSER::PROTEIN)
    ("p65 and RNA" . SPARSER::COLLECTION) ("pol" . SPARSER::PROTEIN)
    ("p65 or p50" . SPARSER::COLLECTION) ("p65 and p50" . SPARSER::COLLECTION)
    ("GSK-3 β- null MEFs" . SPARSER::PROTEIN) ("GSK-3 β-" . SPARSER::PROTEIN)
    ("shRNA, Bcl-xL and cIAP2" . SPARSER::COLLECTION)
    ("Bcl-xL, cIAP2 and
cFlip"
     . SPARSER::COLLECTION)
    ("I κ B α and
Bcl-2, and XIAP"
     . SPARSER::COLLECTION)
    ("Bcl-2, and XIAP" . SPARSER::COLLECTION)
    ("BCL2L1 and BIRC3" . SPARSER::COLLECTION)
    ("GSK-3 β null MEFs" . SPARSER::PROTEIN)
    ("the predominant form" . SPARSER::FORM) ("p50/p65" . SPARSER::COLLECTION)
    ("GSK-3 β -null MEFs" . SPARSER::PROTEIN)
    ("GSK-3 α and GSK-3 β" . SPARSER::COLLECTION) ("TNF α-" . SPARSER::PROTEIN)
    ("GSK-3 α or
GSK-3 β"
     . SPARSER::COLLECTION)
    ("GSK-3 α or GSK-3 α" . SPARSER::COLLECTION)
    ("PARP and CASP3" . SPARSER::COLLECTION)
    ("multiple lentiviral
shRNA"
     . SPARSER::PROTEIN)
    ("DR4 or DR5" . SPARSER::COLLECTION) ("Isoform" . SPARSER::PROTEIN)
    ("GSK-3 α and
GSK-3 β"
     . SPARSER::COLLECTION)
    ("cFlip, Bcl-xL, Mcl-1 and IAPs" . SPARSER::COLLECTION)
    ("cFlip" . SPARSER::PROTEIN) ("DR4 and DR5" . SPARSER::COLLECTION)
    ("TNFα
and TRAIL"
     . SPARSER::COLLECTION)
    ("SIRT1 and HDAC3" . SPARSER::COLLECTION) ("BIR" . SPARSER::PROTEIN)
    ("Bcl-xL and cIAP2" . SPARSER::COLLECTION)
    ("GSK-3 α or GSK-3 β" . SPARSER::COLLECTION) ("and 1 " . SPARSER::PROTEIN)
    ("Triton
X-100"
     . SPARSER::MOLECULE)
    ("T-antigen" . SPARSER::PROTEIN) ("H1P" . SPARSER::PROTEIN)
    ("γ -tubulin" . SPARSER::PROTEIN) ("ORC2" . SPARSER::PROTEIN)
    ("p105" . SPARSER::PROTEIN) ("DDX3" . SPARSER::PROTEIN)
    ("TAK1" . SPARSER::PROTEIN) ("K16" . SPARSER::PROTEIN)
    ("histone 4" . SPARSER::PROTEIN)
    ("glycogen
synthase"
     . SPARSER::PROTEIN-FAMILY)
    ("BIRC3" . SPARSER::PROTEIN) ("I κ Bα" . SPARSER::PROTEIN)
    ("CASP3" . SPARSER::PROTEIN) ("DR4" . SPARSER::PROTEIN)
    ("death receptor" . SPARSER::PROTEIN) ("TNF α" . SPARSER::PROTEIN)
    ("GSK-3 α" . SPARSER::PROTEIN)
    ("tight binary complex" . SPARSER::BIO-COMPLEX)
    ("AKT, reflecting the trend observed with binding assays ( xref )"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("serine, threonine, or tyrosine" . SPARSER::COLLECTION)
    ("phosphoryl" . SPARSER::MOLECULE) ("favorable ΔG b" . SPARSER::PROTEIN)
    ("fisetin and staurosporine" . SPARSER::COLLECTION)
    ("PI3K, TSC and mTORC" . SPARSER::COLLECTION)
    ("fisetin and the group-binding residues [ xref ]" . SPARSER::COLLECTION)
    ("an endogenous ligand or a bioactive molecule" . SPARSER::COLLECTION)
    ("PTEN , PIK3CA , and TSC1/2" . SPARSER::COLLECTION)
    ("Kd" . SPARSER::PROTEIN) ("AKT and p70S6K" . SPARSER::COLLECTION)
    ("mTOR-FKBP12" . SPARSER::COLLECTION)
    ("mTOR, p70S6K and AKT" . SPARSER::COLLECTION)
    ("an alternate conformation" . SPARSER::BIO-CONFORMATION)
    ("arene" . SPARSER::MOLECULE)
    ("fisetin (the top ranked pose in each cluster indicates a close binding site) and staurosporine"
     . SPARSER::COLLECTION)
    ("AKT-PH" . SPARSER::COLLECTION) ("mTOR and AKT" . SPARSER::COLLECTION)
    ("p-" . SPARSER::PROTEIN) ("Fisetin" . SPARSER::DRUG)
    ("AKT, SGK1 and PKCα" . SPARSER::COLLECTION)
    ("a 70-kDa cytoplasmic isoform (p70S6K) and an 85-kDa nuclear isoform (p85S6K)"
     . SPARSER::COLLECTION)
    ("The ribosomal protein S6 kinase (S6K) and eukaryotic initiation factor 4E-binding protein 1 (4E-BP1)"
     . SPARSER::COLLECTION)
    ("Raptor and PRAS40" . SPARSER::COLLECTION)
    ("mSin1 and Protor1/2" . SPARSER::COLLECTION)
    ("mLST8/GβL" . SPARSER::COLLECTION) ("RGP" . SPARSER::PROTEIN)
    ("p70S6K and mTOR" . SPARSER::COLLECTION)
    ("mTOR and p70S6K" . SPARSER::COLLECTION)
    ("AKT, mTOR and p70S6K" . SPARSER::COLLECTION) ("fisetin" . SPARSER::DRUG)
    ("immunophilin FKBP12" . SPARSER::PROTEIN) ("CDC2L1" . SPARSER::PROTEIN)
    ("Na3VO4" . SPARSER::MOLECULE) ("p70S6K1" . SPARSER::PROTEIN)
    ("p85S" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("eukaryotic initiation factor 4E" . SPARSER::PROTEIN-FAMILY)
    ("mammalian target of Rapamycin" . SPARSER::PROTEIN)
    ("PDK-1" . SPARSER::PROTEIN)
    ("possible confounding factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("estrogen receptor and other receptor tyrosine kinase (RTK)"
     . SPARSER::COLLECTION)
    ("receptor tyrosine kinase (RTK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("other histologic types" . TYPE)
    ("p53, MDR1, EGFR, HER2, and PR" . SPARSER::COLLECTION)
    ("p53, MDR1, EGFR, and HER2" . SPARSER::COLLECTION)
    ("DNA S-phase fraction and PR (r=−0.22, p=0.025, xref )"
     . SPARSER::COLLECTION)
    ("ER and DNA" . SPARSER::COLLECTION)
    ("MDR1 (14.3%) and PR (8.9%)" . SPARSER::COLLECTION)
    ("paclitaxel (46.3%) and carboplatin" . SPARSER::COLLECTION)
    ("Carboplatin" . SPARSER::DRUG)
    ("an unproven factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the peri-menopausal period" . SPARSER::PROTEIN)
    ("tested biomarkers showed ER" . SPARSER::PROTEIN)
    ("Biomarker" . SPARSER::MOLECULE)
    ("estrogen receptor and LVSI" . SPARSER::COLLECTION)
    ("Anti-angiogenic" . SPARSER::DRUG) ("CA-125" . SPARSER::DRUG)
    ("MDR-1" . SPARSER::PROTEIN) ("LZ and PC" . SPARSER::COLLECTION)
    ("CCRB" . SPARSER::PROTEIN) ("KIT/PDGFR" . SPARSER::COLLECTION)
    ("-negative subtypes" . SPARSER::PROTEIN) ("mutational types" . TYPE)
    ("PDGFRA and KIT" . SPARSER::COLLECTION)
    ("a significant predictive factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("KIT and PDGFRA" . SPARSER::COLLECTION)
    ("KIT or PDGFRA" . SPARSER::COLLECTION)
    ("PDGFRA or BRAF" . SPARSER::COLLECTION)
    ("KIT/PDGFRA" . SPARSER::COLLECTION) ("EH" . SPARSER::PROTEIN)
    ("PLX4032 and Akt inhibitors or HER kinase inhibitors"
     . SPARSER::COLLECTION)
    ("PLX4032 and Akt" . SPARSER::COLLECTION)
    ("VEGFR and PDGFR" . SPARSER::COLLECTION) ("VEGFR" . SPARSER::PROTEIN)
    ("Sorafenib" . SPARSER::DRUG)
    ("RAS and other upstream molecules" . SPARSER::COLLECTION)
    ("CRAF-BRAF" . SPARSER::COLLECTION) ("CRAF-CRAF" . SPARSER::COLLECTION)
    ("phospho-MEK, phospho-MAPK, and phospho-mTOR" . SPARSER::COLLECTION)
    ("N-RAS or MEK" . SPARSER::COLLECTION)
    ("MEK, MAPK, and mTOR" . SPARSER::COLLECTION)
    ("a commonly mutated signal transduction molecule" . SPARSER::MOLECULE)
    ("ARAF, BRAF, and CRAF" . SPARSER::COLLECTION) ("ARAF" . SPARSER::PROTEIN)
    ("the drug’s" . SPARSER::DRUG) ("PLX4032" . SPARSER::DRUG)
    ("the G(-248)A polymorphism" . SPARSER::PROTEIN)
    ("PR−" . SPARSER::HUMAN-PROTEIN-FAMILY) ("BAX-" . SPARSER::PROTEIN)
    ("LN1" . SPARSER::PROTEIN) ("proapoptotic Bak" . SPARSER::PROTEIN)
    ("ER or PR" . SPARSER::COLLECTION) ("the principal form" . SPARSER::FORM)
    ("the two multidomain proapoptotic Bax and Bak" . SPARSER::COLLECTION)
    ("factor and biomarker" . SPARSER::COLLECTION)
    ("the G(-248)A genotypes" . SPARSER::PROTEIN) ("Exon" . SPARSER::PROTEIN)
    ("the essential genes" . SPARSER::GENE) ("precursor mRNA" . SPARSER::RNA)
    ("Tau1" . SPARSER::DRUG) ("F 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Tau 1" . SPARSER::DRUG) ("a nontoxic Nrf2" . SPARSER::PROTEIN)
    ("-apomorphine" . SPARSER::DRUG) ("apomorphine" . SPARSER::DRUG)
    ("a modest impact" . SPARSER::PROTEIN) ("CDDO" . SPARSER::DRUG)
    ("an attractive therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("promoter's" . SPARSER::PROMOTER)
    ("these SNPs and the assessed peripheral oxidative stress biomarkers"
     . SPARSER::COLLECTION)
    ("the assessed peripheral oxidative stress biomarkers" . SPARSER::MOLECULE)
    ("SNPs and ALS" . SPARSER::COLLECTION) ("thiol" . SPARSER::MOLECULE)
    ("SLE and Nrf2" . SPARSER::COLLECTION)
    ("polymorphism and ALS" . SPARSER::COLLECTION)
    ("the gene's" . SPARSER::PROTEIN) ("Keap1 and Nrf2" . SPARSER::COLLECTION)
    ("phase II enzyme genes and antioxidant stress protein genes [ xref , xref ]"
     . SPARSER::COLLECTION)
    ("Maf" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CNC" . SPARSER::PROTEIN)
    ("classical antioxidant enzymes" . SPARSER::ENZYME)
    ("catalase and superoxide" . SPARSER::COLLECTION)
    ("quinine" . SPARSER::DRUG)
    ("FUS , TARBP , ANG , and SMN" . SPARSER::COLLECTION)
    ("SMN" . SPARSER::PROTEIN) ("ANG" . SPARSER::PROTEIN)
    ("these peripheral oxidative stress biomarkers" . SPARSER::MOLECULE)
    ("reduced plasmatic FRAP" . SPARSER::PROTEIN)
    ("plasmatic biomarkers and the analysis of −653 A/G" . SPARSER::COLLECTION)
    ("plasmatic biomarkers" . SPARSER::MOLECULE)
    ("phloroglucinol" . SPARSER::MOLECULE)
    ("promoter (GAGCAAAA)" . SPARSER::PROMOTER) ("von" . SPARSER::PROTEIN)
    ("Proximal promoter SNPs" . SPARSER::PROTEIN)
    ("MZF1, AP1-like, and ARE-like" . SPARSER::COLLECTION)
    ("alleles and haplotypes" . SPARSER::COLLECTION)
    ("publically available SNPs" . SPARSER::PROTEIN)
    ("GFAP-Nrf2" . SPARSER::PROTEIN-PAIR) ("GFAP" . SPARSER::PROTEIN)
    ("NADH" . SPARSER::MOLECULE) ("NF-E2-" . SPARSER::PROTEIN)
    ("significant etiological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("proteins, and lipids" . SPARSER::COLLECTION)
    ("the oxidative stress biomarkers" . SPARSER::MOLECULE)
    ("peripheral biomarkers" . SPARSER::MOLECULE) ("-SH" . SPARSER::COLLECTION)
    ("SH" . SPARSER::PROTEIN) ("thiols" . SPARSER::MOLECULE)
    ("NFE2L2/Nrf2" . SPARSER::COLLECTION) ("ALS" . SPARSER::PROTEIN)
    ("γ -glutamyl" . SPARSER::MOLECULE)
    ("Huntington disease" . SPARSER::PROTEIN) ("uric acid" . SPARSER::MOLECULE)
    ("potassium iodide" . SPARSER::DRUG) ("MZF1" . SPARSER::PROTEIN)
    ("hSOD1" . SPARSER::PROTEIN) ("factor 2" . SPARSER::PROTEIN)
    ("erythroid 2" . SPARSER::PROTEIN) ("NFE2L2" . SPARSER::PROTEIN)
    ("several cytoskeletal proteins" . SPARSER::PROTEIN)
    ("β-tubulin and F-actin" . SPARSER::COLLECTION)
    ("KSR2-CN" . SPARSER::COLLECTION)
    ("F-actin and tubulin organization" . SPARSER::COLLECTION)
    ("KSR2 and calcineurin" . SPARSER::COLLECTION)
    ("calcineurin-NFAT" . SPARSER::COLLECTION)
    ("GFP-NFAT" . SPARSER::COLLECTION) ("stabilizer" . SPARSER::MOLECULE)
    ("both cytoskeletal components" . SPARSER::COMPONENT)
    ("F-actin and α-tubulin" . SPARSER::COLLECTION)
    ("STIM1-ORAI" . SPARSER::COLLECTION) ("Transfectants" . SPARSER::PROTEIN)
    ("CN and KSR2" . SPARSER::COLLECTION) ("STIM-ORAI" . SPARSER::COLLECTION)
    ("ORAI" . SPARSER::PROTEIN-FAMILY) ("STIM" . SPARSER::PROTEIN)
    ("–NFAT" . SPARSER::COLLECTION)
    ("Supplemental Figure S5" . SPARSER::MOLECULE) ("CsA" . SPARSER::PROTEIN)
    ("cypermethrin" . SPARSER::DRUG)
    ("Calcineurin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("puncta and Ca 2+" . SPARSER::COLLECTION)
    ("KSR2, Orai1, and STIM1" . SPARSER::COLLECTION)
    ("KSR2 and endogenous ORAI1 and STIM1" . SPARSER::COLLECTION)
    ("ORAI1 and STIM1" . SPARSER::COLLECTION)
    ("STIM1 and ORAI1" . SPARSER::COLLECTION)
    ("proteins and Flag" . SPARSER::COLLECTION)
    ("ORAI1-RFP" . SPARSER::COLLECTION) ("YFP-STIM1" . SPARSER::COLLECTION)
    ("yellow fluorescent protein (YFP)–STIM1 and ORAI1–red fluorescent protein (RFP) fusion proteins"
     . SPARSER::PROTEIN)
    ("–STIM1" . SPARSER::COLLECTION) ("protein or Flag" . SPARSER::COLLECTION)
    ("KSR2-Flag" . SPARSER::COLLECTION)
    ("its essential components" . SPARSER::COMPONENT)
    ("KSR2 or KSR1" . SPARSER::COLLECTION) ("ionomycin" . SPARSER::DRUG)
    ("external calcium" . SPARSER::CALCIUM)
    ("antibody or anti-IgM" . SPARSER::COLLECTION)
    ("wt and ksr2" . SPARSER::COLLECTION) ("-ATPase" . SPARSER::COLLECTION)
    ("receptor (BCR)" . SPARSER::RECEPTOR)
    ("wt and ksr1" . SPARSER::COLLECTION) ("BCR" . SPARSER::PROTEIN)
    ("KSR2 and CN" . SPARSER::COLLECTION)
    ("calcineurin (CN)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CA2 and CA3" . SPARSER::COLLECTION)
    ("Ras, RAF-1, MEK-1, and ERK-1/2" . SPARSER::COLLECTION)
    ("kinase and phosphatase" . SPARSER::COLLECTION)
    ("Raf/MEK/ERK" . SPARSER::COLLECTION)
    ("STIM1 and Orai1" . SPARSER::COLLECTION) ("Ca 2+-" . SPARSER::CALCIUM-ION)
    ("TRPC" . SPARSER::PROTEIN) ("distinct puncta" . SPARSER::PROTEIN)
    ("PM" . SPARSER::PROTEIN) ("/ORAI1" . SPARSER::COLLECTION)
    ("STIM1-ORAI1" . SPARSER::COLLECTION)
    ("KSR2-calcineurin" . SPARSER::COLLECTION)
    ("KSR2-associated calcineurin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("STIM1/ORAI1" . SPARSER::COLLECTION) ("3 d" . SPARSER::PROTEIN-FAMILY)
    ("CRACR2A" . SPARSER::PROTEIN) ("cyclosporin A" . SPARSER::MOLECULE)
    ("calcineurin inhibitor" . SPARSER::PROTEIN)
    ("anti-IgM" . SPARSER::PROTEIN) ("ksr2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ksr1" . SPARSER::PROTEIN) ("CA3" . SPARSER::PROTEIN)
    ("CA2" . SPARSER::PROTEIN) ("ERK-1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MEK-1" . SPARSER::PROTEIN) ("RAF-1" . SPARSER::PROTEIN)
    ("KSR-1" . SPARSER::PROTEIN) ("TRPC1" . SPARSER::PROTEIN)
    ("Orai1" . SPARSER::PROTEIN)
    ("stromal interaction molecule 1" . SPARSER::PROTEIN)
    ("kinase suppressor of Ras 2" . SPARSER::PROTEIN)
    ("ORAI1" . SPARSER::PROTEIN) ("STIM1" . SPARSER::PROTEIN)
    ("KSR2" . SPARSER::PROTEIN) ("their immature state" . SPARSER::BIO-STATE)
    ("CDK2 and CCNE1" . SPARSER::COLLECTION)
    ("ALDH1A1 and the Notch genes" . SPARSER::COLLECTION)
    ("ALDH1A1, CDK2, and CCNE1" . SPARSER::COLLECTION)
    ("CDK2/cyclin" . SPARSER::COLLECTION)
    ("CDK2 and CDK6" . SPARSER::COLLECTION)
    ("T-cell lymphoblastic leukemia" . SPARSER::PROTEIN)
    ("cyclin D1, CDK2, and p21" . SPARSER::COLLECTION)
    ("cyclin and CDK2" . SPARSER::COLLECTION)
    ("retinaldehyde" . SPARSER::MOLECULE)
    ("ALDH1A1, ALDH2, and ALDH1B1" . SPARSER::COLLECTION)
    ("Leukemia" . SPARSER::PROTEIN)
    ("CD31, vWF, and CD34" . SPARSER::COLLECTION)
    ("CCN" . SPARSER::PROTEIN-FAMILY) ("ALDH" . SPARSER::PROTEIN)
    ("Notch3 or CDK2" . SPARSER::COLLECTION)
    ("−3, CDK2, and CCNE1" . SPARSER::COLLECTION)
    ("CD133 and CD326" . SPARSER::COLLECTION) ("CRIF1" . SPARSER::PROTEIN)
    ("CMTM7" . SPARSER::PROTEIN) ("G1–S" . SPARSER::PROTEIN)
    ("Notch-1" . SPARSER::PROTEIN) ("ALDH1B1" . SPARSER::PROTEIN)
    ("ALDH2" . SPARSER::PROTEIN) ("alcohol dehydrogenase" . SPARSER::PROTEIN)
    ("s 18" . SPARSER::PROTEIN) ("NOTCH4" . SPARSER::PROTEIN)
    ("NOTCH3" . SPARSER::PROTEIN) ("NOTCH2" . SPARSER::PROTEIN)
    ("Notch2" . SPARSER::PROTEIN) ("SiRNA-mediated" . SPARSER::PROTEIN)
    ("Notch3" . SPARSER::PROTEIN) ("CD326" . SPARSER::PROTEIN)
    ("ALDH1A1" . SPARSER::PROTEIN) ("pCAF" . SPARSER::PROTEIN)
    ("bona fide CAFs" . SPARSER::PROTEIN) ("primary CAFs" . SPARSER::PROTEIN)
    ("pCAFs" . SPARSER::PROTEIN)
    ("the p38MAPK inhibitor’s" . SPARSER::INHIBITOR)
    ("significantly less IL8 mRNA" . SPARSER::RNA) ("CDD" . SPARSER::PROTEIN)
    ("MCF7-Ras" . SPARSER::COLLECTION) ("NMF" . SPARSER::DRUG)
    ("BC-associated stromal genes" . SPARSER::GENE)
    ("CCL20, CXCL5, IL11, IL1β, and MMP1" . SPARSER::COLLECTION)
    ("CCL20, CXCL5, IL11, IL1β, IRAK3, MMP1, MPP7, and SOD2"
     . SPARSER::COLLECTION)
    ("CXCL2 and IL24" . SPARSER::COLLECTION)
    ("GMCSF, GCSF, IL1α, IL1β, CXCL1, CXCL2, CXCL5, CCL20, MMP1, and MMP7"
     . SPARSER::COLLECTION)
    ("GCSF" . SPARSER::PROTEIN)
    ("SB203580 or vehicle control" . SPARSER::COLLECTION)
    ("AUF1–SASP" . SPARSER::COLLECTION)
    ("bleomycin and 24 hours" . SPARSER::COLLECTION)
    ("GMCSF and CCL20" . SPARSER::COLLECTION)
    ("an AUF1-specific antibody or a nonspecific IgG" . SPARSER::COLLECTION)
    ("a nonspecific IgG" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("AUF1 and p38MAPK" . SPARSER::COLLECTION)
    ("IL6 and GMCSF" . SPARSER::COLLECTION)
    ("IL6 (lucIL6) or GMCSF (lucGMCSF)" . SPARSER::COLLECTION)
    ("shp" . SPARSER::HUMAN-PROTEIN-FAMILY) ("NaB" . SPARSER::PROTEIN)
    ("NFκB-luc" . SPARSER::COLLECTION) ("ActD" . SPARSER::MOLECULE)
    ("IL6 and IL8" . SPARSER::COLLECTION) ("BPH1-CBR" . SPARSER::COLLECTION)
    ("red (CBR)" . SPARSER::PROTEIN) ("SIPS" . SPARSER::PROTEIN)
    ("IL6, IL8, and GMCSF" . SPARSER::COLLECTION) ("GMCSF" . SPARSER::PROTEIN)
    ("Post" . SPARSER::PROTEIN) ("RNA binding-protein" . SPARSER::COLLECTION)
    ("the mitogen-activated protein kinase p38 (p38MAPK) and the DNA-damage response protein ATM ( xref )"
     . SPARSER::COLLECTION)
    ("NFκB and C/EBPβ" . SPARSER::COLLECTION)
    ("the profound impact" . SPARSER::PROTEIN)
    ("LCM" . SPARSER::PROTEIN-FAMILY) ("CAF" . SPARSER::PROTEIN)
    ("granulin" . SPARSER::PROTEIN)
    ("TME-derived factor" . SPARSER::COLLECTION) ("SASP" . SPARSER::PROTEIN)
    ("CAFs" . SPARSER::PROTEIN) ("L Protein" . SPARSER::PROTEIN)
    ("p190" . SPARSER::PROTEIN) ("sodium chloride" . SPARSER::DRUG)
    ("MMP3" . SPARSER::PROTEIN) ("MPP7" . SPARSER::PROTEIN)
    ("IRAK3" . SPARSER::PROTEIN) ("IL11" . SPARSER::PROTEIN)
    ("IL24" . SPARSER::PROTEIN) ("MMP7" . SPARSER::PROTEIN)
    ("CXCL5" . SPARSER::PROTEIN) ("CXCL2" . SPARSER::PROTEIN)
    ("IL1α" . SPARSER::PROTEIN) ("CCL20" . SPARSER::PROTEIN)
    ("BPH1" . SPARSER::PROTEIN) ("Hsp27" . SPARSER::PROTEIN)
    ("β-gal" . SPARSER::PROTEIN) ("AUF1" . SPARSER::PROTEIN)
    ("derived factor" . SPARSER::PROTEIN)
    ("Akt1 and mTORC2" . SPARSER::COLLECTION)
    ("pS477/pT479" . SPARSER::PROTEIN) ("nestin-Cre" . SPARSER::COLLECTION)
    ("nestin" . SPARSER::PROTEIN) ("Akt1-pS477/pT479" . SPARSER::COLLECTION)
    ("the chemotherapeutic agents etoposide or camptothecin"
     . SPARSER::COLLECTION)
    ("Skp2 or FOXO" . SPARSER::COLLECTION)
    ("etoposide or camptothecin" . SPARSER::COLLECTION)
    ("Skp2 or crosstides" . SPARSER::COLLECTION)
    ("S477/T479" . SPARSER::PROTEIN)
    ("Sin1 ( xref ) and mTOR" . SPARSER::COLLECTION)
    ("CTMP" . SPARSER::PROTEIN) ("pS473 and pS477/pT479" . SPARSER::COLLECTION)
    ("pS473" . SPARSER::PROTEIN) ("Akt1-pS473" . SPARSER::COLLECTION)
    ("Akt1-S477/T479" . SPARSER::COLLECTION)
    ("/cyclin A2" . SPARSER::COLLECTION) ("/cyclin A1" . SPARSER::COLLECTION)
    ("/cyclin E2" . SPARSER::COLLECTION)
    ("the cyclin A binding motif-defective mutant, R76A ( xref ), as well as its anchorage-independent growth ability ( xref )"
     . SPARSER::COLLECTION)
    ("the cyclin A binding motif-defective mutant" . SPARSER::MUTANT)
    ("a phosphomimetic S477D/T479E (Akt1-DE) mutant" . SPARSER::MUTANT)
    ("mTORC2 or DNAPK" . SPARSER::COLLECTION)
    ("Pten heterozygous MEFs" . SPARSER::PROTEIN)
    ("mTOR ( xref , xref and xref ) or DNAPK ( xref )" . SPARSER::COLLECTION)
    ("DNAPK" . SPARSER::PROTEIN) ("pS477" . SPARSER::PROTEIN)
    ("Akt1-pS477" . SPARSER::COLLECTION) ("TP/SP" . SPARSER::COLLECTION)
    ("green fluorescent protein (GFP)" . SPARSER::PROTEIN)
    ("other bulky amino acids" . SPARSER::AMINO-ACID)
    ("the canonical Cdk2" . SPARSER::PROTEIN) ("SP/TP" . SPARSER::COLLECTION)
    ("Cdk2/cyclin A2" . SPARSER::COLLECTION) ("Cdh1" . SPARSER::PROTEIN)
    ("Cdh" . SPARSER::PROTEIN)
    ("cyclin A1 or cyclin E1/E2" . SPARSER::COLLECTION)
    ("AXA" . SPARSER::MOLECULE)
    ("a Cdk2/cyclin A substrate" . SPARSER::SUBSTRATE)
    ("Cdk2/cyclin" . SPARSER::COLLECTION)
    ("cyclin A2 or Cdk2" . SPARSER::COLLECTION)
    ("PDK1 and mTORC2" . SPARSER::COLLECTION) ("geminin" . SPARSER::PROTEIN)
    ("/cyclin" . SPARSER::COLLECTION) ("P81" . SPARSER::PROTEIN)
    ("yellow fluorescent protein" . SPARSER::PROTEIN)
    ("p-S" . SPARSER::PROTEIN) ("G-1" . SPARSER::PROTEIN)
    ("P35" . SPARSER::PROTEIN) ("pRAS40" . SPARSER::PROTEIN)
    ("FOXO 3a" . SPARSER::PROTEIN) ("anti-S" . SPARSER::ANTIBODY)
    ("Cyclin A2" . SPARSER::PROTEIN)
    ("glutathione S -transferase" . SPARSER::PROTEIN)
    ("brain-specific" . SPARSER::PROTEIN) ("Skp2" . SPARSER::PROTEIN)
    ("cyclin E2" . SPARSER::PROTEIN) ("cyclin-A" . SPARSER::PROTEIN)
    ("cyclin A1" . SPARSER::PROTEIN) ("Cdt1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cyclin A2" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase 2" . SPARSER::PROTEIN)
    ("colon cancer and KRAS" . SPARSER::COLLECTION)
    ("HER2 and KRAS" . SPARSER::COLLECTION)
    ("KRAS and HER2" . SPARSER::COLLECTION)
    ("a key negative predictive factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Monoclonal antibodies" . SPARSER::ANTIBODY)
    ("cetuximab and panitumumab" . SPARSER::COLLECTION)
    ("colon cancer, and HER2" . SPARSER::COLLECTION)
    ("fluorouracil and leucovorin" . SPARSER::COLLECTION)
    ("irinotecan or oxaliplatin" . SPARSER::COLLECTION)
    ("leucovorin" . SPARSER::DRUG) ("CA-3" . SPARSER::PROTEIN)
    ("H11" . SPARSER::PROTEIN) ("EGFR antibody" . SPARSER::PROTEIN)
    ("type XXIV" . SPARSER::PROTEIN) ("erbB-2" . SPARSER::PROTEIN)
    ("ROS and caspase" . SPARSER::COLLECTION)
    ("Intense heat stress-induced early wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("enzyme and non-enzyme" . SPARSER::COLLECTION)
    ("cytochrome c and caspase-9 and -3" . SPARSER::COLLECTION)
    ("caspase-9 and caspase-3" . SPARSER::COLLECTION)
    ("the apical protease" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the cell-permeable ROS scavenger MnTMPyP" . SPARSER::DRUG)
    ("the fluorescent dye DCFH-DA" . SPARSER::DRUG)
    ("siRNA-" . SPARSER::PROTEIN)
    ("the intense heat stress-induced early wave"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ells" . SPARSER::PROTEIN)
    ("initiator caspase (caspase-8,-9, and-4) and effector caspase (caspase-3)"
     . SPARSER::COLLECTION)
    ("intense heat stress-induced early wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a second slower wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Puma, Noxa, Bax, and Bid" . SPARSER::COLLECTION)
    ("wave" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the heat stress-induced p53's" . SPARSER::PROTEIN)
    ("the heat stress-induced p53" . SPARSER::PROTEIN)
    ("MnTMPyP" . SPARSER::DRUG) ("a p53's" . SPARSER::PROTEIN)
    ("pifithrin" . SPARSER::DRUG) ("Cytochrome C" . SPARSER::PROTEIN)
    ("for 3 " . SPARSER::PROTEIN) ("caspase-4" . SPARSER::PROTEIN)
    ("caspase- 9" . SPARSER::PROTEIN) ("DCFH-DA" . SPARSER::DRUG)
    ("min-1 " . SPARSER::PROTEIN)
    ("the 20 pathogenic variants" . SPARSER::VARIANT)
    ("the last base" . SPARSER::PROTEIN)
    ("the six deleterious variants resulted in the use of a cryptic"
     . SPARSER::VARIANT)
    ("the protein instead of a premature stop codon" . SPARSER::COLLECTION)
    ("cryptic" . SPARSER::PROTEIN)
    ("acceptor or donor sites in BRCA1" . SPARSER::COLLECTION)
    ("Pathogenic germline variants" . SPARSER::VARIANT)
    ("delG" . SPARSER::PROTEIN)
    ("numerous pathogenic variants" . SPARSER::VARIANT)
    ("PDGFRβ or other kinases" . SPARSER::COLLECTION)
    ("imatinib or sorafenib" . SPARSER::COLLECTION)
    ("sorafenib" . SPARSER::DRUG)
    ("the five PDGF ligand dimers, PDGF-AA," . SPARSER::DIMER)
    ("hepatocytes, Kupffer cells," . SPARSER::PROTEIN)
    ("hepatocytes, Kupffer cells, or LSECs" . SPARSER::COLLECTION)
    ("Col4 and Timp1" . SPARSER::COLLECTION)
    ("the profibrotic genes Acta2 and Col1a1" . SPARSER::COLLECTION)
    ("Acta2 and Col1a1" . SPARSER::COLLECTION)
    ("ligand or receptor" . SPARSER::COLLECTION)
    ("Col1a1 and Acta2" . SPARSER::COLLECTION)
    ("Significantly less collagen" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Timp1" . SPARSER::PROTEIN) ("Col4" . SPARSER::PROTEIN)
    ("1a1" . SPARSER::PROTEIN) ("Acta2" . SPARSER::PROTEIN)
    ("Acta" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Hepatocytes" . SPARSER::PROTEIN)
    ("CRBP" . SPARSER::PROTEIN) ("desmin" . SPARSER::PROTEIN)
    ("fibrotic bands form" . SPARSER::FORM) ("Pdgfrs" . SPARSER::PROTEIN)
    ("Pdgfrα and Pdgfrβ" . SPARSER::COLLECTION) ("–CC" . SPARSER::COLLECTION)
    ("NPCs" . SPARSER::MOLECULE) ("only one allele" . SPARSER::ALLELE)
    ("PDGFRα and PDGFRβ" . SPARSER::COLLECTION) ("-CC" . SPARSER::COLLECTION)
    ("-BB" . SPARSER::COLLECTION) ("-AB" . SPARSER::COLLECTION)
    ("-AA" . SPARSER::MOLECULE) ("receptor (PDGFR)" . SPARSER::RECEPTOR)
    ("Many inflammatory cytokines and growth factors" . SPARSER::COLLECTION)
    ("CCl" . SPARSER::DRUG)
    ("the primary collagen" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("metalloproteinase 1" . SPARSER::PROTEIN) ("Col1a1" . SPARSER::PROTEIN)
    ("cellular retinol binding protein" . SPARSER::PROTEIN)
    ("Pdgfrβ" . SPARSER::PROTEIN) ("PDGF -AA" . SPARSER::PROTEIN)
    ("LX-1" . SPARSER::PROTEIN) ("muscle and heart" . SPARSER::PROTEIN)
    ("derived growth factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Pdgfrα" . SPARSER::PROTEIN) ("IL-1b and TNF-alpha" . SPARSER::COLLECTION)
    ("macular RPE" . SPARSER::PROTEIN)
    ("proteins and protein" . SPARSER::COLLECTION) ("Past" . SPARSER::PROTEIN)
    ("chaperones or enzymes" . SPARSER::COLLECTION)
    ("47 kDa and 38 kDa" . SPARSER::COLLECTION)
    ("isoform1/isoform2" . SPARSER::COLLECTION)
    ("the RPE’s" . SPARSER::PROTEIN)
    ("the adjacent neurosensory retina" . SPARSER::DRUG)
    ("retina" . SPARSER::DRUG) ("p62 and Nrf2" . SPARSER::COLLECTION)
    ("Nqo1 and Gclm" . SPARSER::COLLECTION) ("Gclm" . SPARSER::PROTEIN)
    ("polyubiquitination, and αB" . SPARSER::COLLECTION)
    ("CSE or DMSO" . SPARSER::COLLECTION) ("Lau" . SPARSER::MOLECULE)
    ("proteins, and αB" . SPARSER::COLLECTION)
    ("Cyto-ID" . SPARSER::COLLECTION) ("Cyto" . SPARSER::PROTEIN)
    ("a relevant biomarker" . SPARSER::MOLECULE)
    ("proteins and αB" . SPARSER::COLLECTION)
    ("crystallin" . SPARSER::PROTEIN-FAMILY)
    ("DMSO or CSE" . SPARSER::COLLECTION) ("around 60 kDa" . SPARSER::PROTEIN)
    ("V5-tagged isoform1" . SPARSER::PROTEIN)
    ("V5-tagged p62 isoforms" . SPARSER::ISOFORM) ("TOPO" . SPARSER::PROTEIN)
    ("HIS" . SPARSER::AMINO-ACID)
    ("p62 isoform1 or both isoforms" . SPARSER::COLLECTION)
    ("isoform1 and isoform2" . SPARSER::COLLECTION)
    ("p62 isoform2’s" . SPARSER::PROTEIN) ("three mature mRNA" . SPARSER::RNA)
    ("antioxidant and autophagy related genes" . SPARSER::COLLECTION)
    ("CSE" . SPARSER::PROTEIN)
    ("proteins, lipids, and DNA" . SPARSER::COLLECTION)
    ("AMD and AD" . SPARSER::COLLECTION) ("UBA" . SPARSER::PROTEIN)
    ("complexes or aggregates" . SPARSER::COLLECTION)
    ("protein trafficking, aggregation, and degradation" . SPARSER::COLLECTION)
    ("a stress-inducible intracellular protein" . SPARSER::PROTEIN)
    ("p62/SQSTM1" . SPARSER::COLLECTION) ("CS and p62" . SPARSER::COLLECTION)
    ("smoke (CS)" . SPARSER::MOLECULE) ("CS" . SPARSER::PROTEIN)
    ("smoke" . SPARSER::MOLECULE) ("insoluble protein" . SPARSER::PROTEIN)
    ("AMD" . SPARSER::PROTEIN) ("IL-1b" . SPARSER::PROTEIN)
    ("p62 S" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P62S" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cyclophilin A" . SPARSER::PROTEIN) ("IgG 2a" . SPARSER::PROTEIN)
    ("Bafilomycin A1" . SPARSER::DRUG) ("isoform2" . SPARSER::PROTEIN)
    ("Kelch-like ECH-associated protein 1" . SPARSER::PROTEIN)
    ("nuclear factor erythroid-2 related factor 2" . SPARSER::PROTEIN)
    ("SQSTM1" . SPARSER::PROTEIN) ("isoform1" . SPARSER::PROTEIN)
    ("flags" . SPARSER::PROTEIN-FAMILY)
    ("using other HER inhibitors ( xref ) or specific molecules directly targeting PI3K or Akt ( xref , xref )"
     . SPARSER::COLLECTION)
    ("PI3K or Akt" . SPARSER::COLLECTION) ("panitumumab-" . SPARSER::DRUG)
    ("carboplatin" . SPARSER::DRUG) ("reached pCR" . SPARSER::PROTEIN)
    ("cyclophosphamide" . SPARSER::DRUG)
    ("the EGFR antibodies panitumumab (47 patients) and cetuximab (29 patients)"
     . SPARSER::COLLECTION)
    ("MEHD7945A and cetuximab" . SPARSER::COLLECTION)
    ("PDX" . SPARSER::PROTEIN) ("cetuximab and GDC-0941" . SPARSER::COLLECTION)
    ("MEHD7945A and GDC-0941" . SPARSER::COLLECTION)
    ("EGFR, HER3, and PI3K" . SPARSER::COLLECTION)
    ("cetuximab and MEHD7945A" . SPARSER::COLLECTION)
    ("tracer" . SPARSER::MOLECULE)
    ("the GDC-0068–treated cohort" . SPARSER::MOLECULE)
    ("PDXs" . SPARSER::PROTEIN) ("collaborative enzyme" . SPARSER::ENZYME)
    ("GDC-0941, or MEHD7945A" . SPARSER::COLLECTION)
    ("GDC-0941 and MEHD7945A" . SPARSER::COLLECTION)
    ("PI3K-" . SPARSER::PROTEIN) ("Akt and ERK" . SPARSER::COLLECTION)
    ("ribosomal protein S6 and extracellular signal–regulated kinase"
     . SPARSER::COLLECTION)
    ("pan-PI3K" . SPARSER::COLLECTION) ("EGFR-HER3" . SPARSER::COLLECTION)
    ("the EGFR inhibitor cetuximab ( xref , xref ) and the pan–phosphatidylinositol 3-kinase (PI3K) inhibitor NVP-BKM120 ( xref )"
     . SPARSER::COLLECTION)
    ("pan–phosphatidylinositol 3-kinase" . SPARSER::COLLECTION)
    ("pCR" . SPARSER::PROTEIN) ("the reproductive age" . SPARSER::PROTEIN)
    ("EGFR/HER3" . SPARSER::COLLECTION)
    ("a dual EGFR and HER3 inhibitor" . SPARSER::INHIBITOR)
    ("HER3 and EGFR" . SPARSER::COLLECTION)
    ("EGFR and HER3" . SPARSER::COLLECTION)
    ("an Akt inhibitor (GDC-0068) or a PI3K inhibitor (GDC-0941)"
     . SPARSER::COLLECTION)
    ("EGFR or HER3" . SPARSER::COLLECTION)
    ("EGF or heregulin" . SPARSER::COLLECTION) ("GDC" . SPARSER::PROTEIN)
    ("heregulin" . SPARSER::PROTEIN) ("EGFR or ErbB1" . SPARSER::COLLECTION)
    ("–Akt" . SPARSER::COLLECTION)
    ("enhanced green fluorescent protein" . SPARSER::PROTEIN)
    ("epithelial cell adhesion molecule" . SPARSER::PROTEIN)
    ("glucose oxidase" . SPARSER::PROTEIN) ("17β-Estradiol" . SPARSER::PROTEIN)
    ("Akt inhibitor GDC-0068" . SPARSER::DRUG)
    ("extracellular signal–regulated kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NRG1" . SPARSER::PROTEIN) ("NVP-BKM120" . SPARSER::DRUG)
    ("MEHD7945A" . SPARSER::DRUG) ("GDC-0941" . SPARSER::DRUG)
    ("phosphatidyl-inositol" . SPARSER::MOLECULE)
    ("fetal hemoglobin" . SPARSER::PROTEIN)
    ("financial factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Afro-Brazilians" . SPARSER::PROTEIN-PAIR)
    ("the proximal promoter" . SPARSER::PROMOTER)
    ("the causative sequence variant" . SPARSER::VARIANT)
    ("this Cameroonian cohort" . SPARSER::MOLECULE)
    ("human complex quantitative traits" . SPARSER::PROTEIN)
    ("Afro-" . SPARSER::PROTEIN) ("Afro" . SPARSER::PROTEIN)
    ("a Tanzanian SCD cohort" . SPARSER::MOLECULE)
    ("the intronic SNP" . SPARSER::PROTEIN)
    ("a Brazilian SCD cohort" . SPARSER::MOLECULE)
    ("at least three independent genetic variants" . SPARSER::VARIANT)
    ("Thein" . SPARSER::MOLECULE)
    ("the 10 HbF-associated SNPs" . SPARSER::PROTEIN)
    ("MCH" . SPARSER::PROTEIN) ("RBC" . SPARSER::PROTEIN)
    ("HbF-associated variants and hematological parameters"
     . SPARSER::COLLECTION)
    ("HbF-associated variants" . SPARSER::VARIANT) ("HF" . SPARSER::PROTEIN)
    ("this Cameroonian SCA cohort" . SPARSER::MOLECULE)
    ("BCL11A, XmnI-158 and OR51B5/6" . SPARSER::COLLECTION)
    ("leukocytes and platelets" . SPARSER::COLLECTION)
    ("HbS" . SPARSER::PROTEIN) ("specific allelic variants" . SPARSER::VARIANT)
    ("fetal haemoglobin" . SPARSER::MOLECULE) ("SCA" . SPARSER::PROTEIN)
    ("haemoglobin" . SPARSER::MOLECULE) ("HBS1L-MYB" . SPARSER::COLLECTION)
    ("relevant variants" . SPARSER::VARIANT) ("HBB" . SPARSER::PROTEIN)
    ("Hemoglobin" . SPARSER::MOLECULE) ("SCD" . SPARSER::PROTEIN)
    ("beta-globin" . SPARSER::PROTEIN) ("HBG2" . SPARSER::PROTEIN)
    ("γ- globin" . SPARSER::PROTEIN) ("OR51B5" . SPARSER::PROTEIN)
    ("BCL11A" . SPARSER::PROTEIN) ("LL" . SPARSER::PROTEIN)
    ("MDM2 or MDMx and p53" . SPARSER::COLLECTION)
    ("MDMx and p53" . SPARSER::COLLECTION)
    ("TP53 or MDM2" . SPARSER::COLLECTION) ("the latter class" . CLASS)
    ("diffuse strong nuclear" . SPARSER::PROTEIN)
    ("useful prognostic biomarker" . SPARSER::MOLECULE)
    ("few genetic biomarkers" . SPARSER::MOLECULE)
    ("TP53, MDMx and MDM2" . SPARSER::COLLECTION)
    ("p53 or Mdmx" . SPARSER::COLLECTION)
    ("Mdmx (located on 1q32.1) and Mdm2 (located on 12q15)"
     . SPARSER::COLLECTION)
    ("MDM2 and MDMx" . SPARSER::COLLECTION) ("Mdm1-3" . SPARSER::COLLECTION)
    ("DM" . SPARSER::PROTEIN)
    ("a mutant p53 gene and/or loss of heterozygosity (LOH)"
     . SPARSER::COLLECTION)
    ("ductal carcinoma in situ (DCIS) components" . SPARSER::COMPONENT)
    ("MDMx and MDM2" . SPARSER::COLLECTION) ("MDMx" . SPARSER::PROTEIN)
    ("p53, Mdmx and Mdm2" . SPARSER::COLLECTION)
    ("The murine double minute 2 (Mdm2) and Mdmx" . SPARSER::COLLECTION)
    ("MIB-1" . SPARSER::PROTEIN) ("HDM2" . SPARSER::PROTEIN)
    ("Mdm1" . SPARSER::PROTEIN) ("ki67" . SPARSER::PROTEIN)
    ("tumor protein p53" . SPARSER::PROTEIN)
    ("data available describing AML" . SPARSER::PROTEIN)
    ("social factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("LIS" . SPARSER::PROTEIN) ("FLT3-ITDs" . SPARSER::COLLECTION)
    ("ITDs" . SPARSER::PROTEIN) ("secondary AML" . SPARSER::PROTEIN)
    ("RQ" . SPARSER::MOLECULE) ("FLT-ITD" . SPARSER::COLLECTION)
    ("NPM1-wt/FLT3-wt" . SPARSER::COLLECTION) ("wt" . SPARSER::PROTEIN)
    ("FLT3-wt" . SPARSER::PROTEIN-PAIR) ("NPM1-wt" . SPARSER::PROTEIN-PAIR)
    ("NPM1-mut" . SPARSER::COLLECTION)
    ("NPM1-mut/FLT3-ITD" . SPARSER::COLLECTION)
    ("childhood acute lymphoblastic leukemia (ALL)" . SPARSER::PROTEIN)
    ("-methyltransferase" . SPARSER::COLLECTION)
    ("Deoxyribose" . SPARSER::MOLECULE) ("isocitrate" . SPARSER::PROTEIN)
    ("Cytogenetically normal (CN) AML" . SPARSER::PROTEIN)
    ("Nucleophosmin" . SPARSER::PROTEIN) ("A-F" . SPARSER::PROTEIN)
    ("TET2" . SPARSER::PROTEIN)
    ("tet methylcytosine dioxygenase 2" . SPARSER::PROTEIN)
    ("IDH1" . SPARSER::PROTEIN)
    ("FMS-like tyrosine kinase 3" . SPARSER::PROTEIN)
    ("several synaptic proteins" . SPARSER::PROTEIN)
    ("neurotrophic factor (BDNF)" . SPARSER::PROTEIN)
    ("neurotrophin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DAMGO" . SPARSER::MOLECULE) ("relevant substrates" . SPARSER::SUBSTRATE)
    ("This latter hypothesis obviously makes mTORC1 and its downstream effectors very valuable targets"
     . SPARSER::COLLECTION)
    ("its downstream effectors very valuable targets"
     . SPARSER::TARGET-PROTEIN)
    ("This latter hypothesis obviously makes mTORC1" . SPARSER::PROTEIN)
    ("drug and alcohol" . SPARSER::COLLECTION)
    ("GluR1 as well as postsynaptic protein" . SPARSER::COLLECTION)
    ("postsynaptic protein" . SPARSER::PROTEIN)
    ("GluR1 and GluR2" . SPARSER::COLLECTION)
    ("Homer" . SPARSER::PROTEIN-FAMILY)
    ("alcohol-associated contextual and instrumental cues"
     . SPARSER::PROTEIN-FAMILY)
    ("PrL and OFC" . SPARSER::COLLECTION) ("PrL" . SPARSER::PROTEIN)
    ("CeA" . SPARSER::HUMAN-PROTEIN-FAMILY) ("subregions" . SPARSER::PROTEIN)
    ("cocaine or alcohol" . SPARSER::COLLECTION)
    ("cocaine and alcohol" . SPARSER::COLLECTION)
    ("a noncompetitive NMDA receptor antagonist" . SPARSER::MOLECULE)
    ("ketamine" . SPARSER::DRUG) ("antidepressant" . SPARSER::DRUG)
    ("a potent noncompetitive antagonist" . SPARSER::MOLECULE)
    ("ERK1/2 ( xref , xref ) and mTORC1 ( xref )" . SPARSER::COLLECTION)
    ("cue" . SPARSER::PROTEIN-FAMILY)
    ("both ERK1/2 ( xref , xref ) and mTORC1 ( xref , xref , xref )"
     . SPARSER::COLLECTION)
    ("both ERK1/2 ( xref , xref , xref ) and mTORC1 ( xref )"
     . SPARSER::COLLECTION)
    ("THC, morphine and alcohol" . SPARSER::COLLECTION)
    ("H-Ras/PI3K/AKT" . SPARSER::COLLECTION)
    ("THC and opiates" . SPARSER::COLLECTION)
    ("psychostimulants" . SPARSER::DRUG)
    ("ERK1/2 and AKT" . SPARSER::COLLECTION) ("morphine" . SPARSER::MOLECULE)
    ("cocaine, THC and alcohol" . SPARSER::COLLECTION)
    ("methamphetamine" . SPARSER::DRUG)
    ("Tetrahydrocannabinol (THC)" . SPARSER::DRUG) ("THC" . SPARSER::DRUG)
    ("Tetrahydrocannabinol" . SPARSER::DRUG) ("cocaine" . SPARSER::DRUG)
    ("NAc" . SPARSER::MOLECULE) ("CPP" . SPARSER::PROTEIN)
    ("chronic rapamycin" . SPARSER::DRUG)
    ("Y maze reversal task" . SPARSER::PROTEIN) ("CTA" . SPARSER::PROTEIN)
    ("an inhibitory avoidance-learning task" . SPARSER::PROTEIN)
    ("the rat medial PFC" . SPARSER::PROTEIN)
    ("misfolded toxic proteins" . SPARSER::PROTEIN)
    ("mTORC2 or other kinases ( xref , xref )" . SPARSER::COLLECTION)
    ("immunosuppressant" . SPARSER::DRUG) ("Rapa" . SPARSER::DRUG)
    ("rapa" . SPARSER::PROTEIN)
    ("death-associated protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("unc" . SPARSER::PROTEIN)
    ("the sterol regulatory element-binding proteins" . SPARSER::PROTEIN)
    ("sterol" . SPARSER::MOLECULE) ("ribosomal RNAs" . SPARSER::RNA)
    ("rRNAs" . SPARSER::PROTEIN)
    ("eIF4B and the S6K1 Aly/REF-like target protein (SKAR)"
     . SPARSER::COLLECTION)
    ("protein (SKAR)" . SPARSER::PROTEIN) ("SKAR" . SPARSER::PROTEIN)
    ("REF" . SPARSER::PROTEIN) ("Aly" . SPARSER::PROTEIN)
    ("S6K1 and 4E-BP" . SPARSER::COLLECTION)
    ("the eukaryotic translation initiation factor-4E binding protein"
     . SPARSER::PROTEIN)
    ("the 90 kDa ribosomal S6 kinase (RSK)" . SPARSER::PROTEIN-FAMILY)
    ("the tuberous sclerosis complex 1 (TSC1, also called hamartin) and the tuberous sclerosis complex"
     . SPARSER::COLLECTION)
    ("GTP-" . SPARSER::NUCLEOTIDE) ("Rheb and mTORC1" . SPARSER::COLLECTION)
    ("mTOR (RAPTOR) and the 40 kDa Pro-rich Akt substrate (PRAS40)"
     . SPARSER::COLLECTION)
    ("the mammalian stress-activated MAP kinase-interacting protein 1 (mSIN1) and the protein"
     . SPARSER::COLLECTION)
    ("the regulatory-associated protein" . SPARSER::PROTEIN)
    ("PROTOR" . SPARSER::PROTEIN) ("RICTOR" . SPARSER::PROTEIN)
    ("RAPTOR" . SPARSER::PROTEIN) ("protein (DEPTOR)" . SPARSER::PROTEIN)
    ("an atypical kinase" . SPARSER::KINASE)
    ("mTORC1 and mTOR" . SPARSER::COLLECTION)
    ("a large ubiquitous and evolutionary conserved protein kinase"
     . SPARSER::PROTEIN)
    ("neuronal mTORC1 kinase" . SPARSER::KINASE)
    ("neuronal mTORC1" . SPARSER::PROTEIN) ("PFC" . SPARSER::PROTEIN)
    ("diverse chemical" . SPARSER::MOLECULE)
    ("compulsive drug" . SPARSER::DRUG)
    ("synaptic proteins" . SPARSER::PROTEIN) ("stimulants" . SPARSER::DRUG)
    ("mu opioid receptor" . SPARSER::PROTEIN)
    ("activity-regulated cytoskeleton-associated protein" . SPARSER::PROTEIN)
    ("GluR2" . SPARSER::PROTEIN) ("GluR1" . SPARSER::PROTEIN)
    ("MK801" . SPARSER::MOLECULE) ("SL327" . SPARSER::DRUG)
    ("interleukin-1 beta" . SPARSER::PROTEIN) ("FK 506" . SPARSER::DRUG)
    ("DAP1" . SPARSER::PROTEIN) ("ATG13" . SPARSER::PROTEIN)
    ("eEF2K" . SPARSER::PROTEIN)
    ("eukaryotic elongation factor 2 kinase" . SPARSER::PROTEIN)
    ("ras homolog enriched in brain" . SPARSER::PROTEIN)
    ("mSIN1" . SPARSER::PROTEIN)
    ("stress-activated MAP kinase-interacting protein 1" . SPARSER::PROTEIN)
    ("Pro-rich" . SPARSER::PROTEIN-FAMILY) ("SEC13" . SPARSER::PROTEIN)
    ("mechanistic Target of Rapamycin" . SPARSER::PROTEIN)
    ("LRP/Src" . SPARSER::COLLECTION)
    ("the transcription factor CREB and the kinase Akt ( xref )"
     . SPARSER::COLLECTION)
    ("neuroprotective proteins" . SPARSER::PROTEIN)
    ("sGC/cGMP/PKG" . SPARSER::COLLECTION)
    ("Rho-associated kinase" . SPARSER::KINASE)
    ("a macromolecular complex" . SPARSER::BIO-COMPLEX)
    ("LRP, PSD95, NMDAR, and nNOS" . SPARSER::COLLECTION)
    ("nNOS" . SPARSER::PROTEIN)
    ("vasodilator-stimulated phosphoprotein (VASP)" . SPARSER::PROTEIN)
    ("VASP" . SPARSER::PROTEIN) ("benzodiazepine" . SPARSER::DRUG)
    ("LRP1 and GluN2B" . SPARSER::COLLECTION) ("Lrp1" . SPARSER::PROTEIN)
    ("activated α2-macroglobulin ( xref ) and amyloid-β ( xref )"
     . SPARSER::COLLECTION)
    ("ApoE4" . SPARSER::PROTEIN) ("ApoE" . SPARSER::PROTEIN)
    ("neurotoxin" . SPARSER::PROTEIN)
    ("GluN2A or GluN2B" . SPARSER::COLLECTION) ("ifenprodil" . SPARSER::DRUG)
    ("the aforementioned neuroplasticity-associated proteins"
     . SPARSER::PROTEIN)
    ("neuroplasticity-associated proteins" . SPARSER::PROTEIN)
    ("c-Fos, Egr-1, Arc, and BDNF" . SPARSER::COLLECTION)
    ("BDNF" . SPARSER::PROTEIN) ("Arc" . SPARSER::PROTEIN)
    ("NOS/cGMP/PKG" . SPARSER::COLLECTION) ("DN-PKG" . SPARSER::COLLECTION)
    ("ODQ" . SPARSER::MOLECULE) ("cGMP" . SPARSER::PROTEIN)
    ("DN-Fyn" . SPARSER::COLLECTION)
    ("a red-fluorescent protein" . SPARSER::PROTEIN)
    ("DN-Src" . SPARSER::COLLECTION) ("-Fyn" . SPARSER::COLLECTION)
    ("RFP" . SPARSER::PROTEIN) ("pTag" . SPARSER::PROTEIN)
    ("RAP and PP2" . SPARSER::COLLECTION) ("RAP or PP2" . SPARSER::COLLECTION)
    ("Either RAP (50 nM) or PP2 (10 μM)" . SPARSER::COLLECTION)
    ("calpain" . SPARSER::PROTEIN) ("GluN2A and GluN2B" . SPARSER::COLLECTION)
    ("RAP" . SPARSER::PROTEIN)
    ("the LRP ( xref ) and Tat-induced" . SPARSER::COLLECTION)
    ("receptor (NMDAR)" . SPARSER::RECEPTOR)
    ("LRP and a Src family kinase" . SPARSER::COLLECTION)
    ("nitric oxide synthase (NOS)" . SPARSER::PROTEIN)
    ("lipoprotein receptor-related protein (LRP)" . SPARSER::PROTEIN)
    ("NMDAR" . SPARSER::PROTEIN) ("cART" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NOS/sGC/PKG" . SPARSER::COLLECTION)
    ("soluble guanylate cyclase (sGC) and cGMP-dependent protein kinase (PKG)"
     . SPARSER::COLLECTION)
    ("protein kinase (PKG)" . SPARSER::PROTEIN) ("PKG" . SPARSER::PROTEIN)
    ("sGC" . SPARSER::PROTEIN)
    ("lipoprotein receptors (LRP) or Src tyrosine kinase"
     . SPARSER::COLLECTION)
    ("receptors (LRP)" . SPARSER::RECEPTOR) ("LRP" . SPARSER::PROTEIN)
    ("lipoprotein" . SPARSER::PROTEIN)
    ("HIV-infected cells shed viral proteins" . SPARSER::PROTEIN)
    ("NMDARs" . SPARSER::PROTEIN) ("NMDA" . SPARSER::MOLECULE)
    ("glutamate receptor" . SPARSER::PROTEIN) ("AP-2" . SPARSER::PROTEIN)
    ("vasodilator-stimulated phosphoprotein" . SPARSER::PROTEIN)
    ("amyloid-β" . SPARSER::MOLECULE) ("α2-macroglobulin" . SPARSER::PROTEIN)
    ("LRP1" . SPARSER::PROTEIN) ("Zn 2+" . SPARSER::MOLECULE)
    ("MAP kinase kinase 1" . SPARSER::PROTEIN)
    ("guanosine monophosphate" . SPARSER::MOLECULE)
    ("receptor-associated protein" . SPARSER::PROTEIN)
    ("GluN2B" . SPARSER::PROTEIN) ("GluN2A" . SPARSER::PROTEIN)
    ("GluN1" . SPARSER::PROTEIN) ("KT5823" . SPARSER::DRUG)
    ("PP3" . SPARSER::PROTEIN) ("t- butyl" . SPARSER::MOLECULE)
    ("lipoprotein receptor-related protein" . SPARSER::PROTEIN)
    ("cGMP-dependent" . SPARSER::PROTEIN)
    ("soluble guanylate cyclase" . SPARSER::PROTEIN)
    ("receptor tyrosine kinases and the adaptive kinome" . SPARSER::COLLECTION)
    ("vemurafemib" . SPARSER::DRUG) ("Ras-Raf" . SPARSER::COLLECTION)
    ("selumetinib and other MEK inhibitors" . SPARSER::COLLECTION)
    ("trametinib and selumetinib" . SPARSER::COLLECTION)
    ("available antibodies" . SPARSER::ANTIBODY)
    ("tyrosines, serines and threonines" . SPARSER::COLLECTION)
    ("many Src family kinases and serine/threonine kinases"
     . SPARSER::COLLECTION)
    ("PDGFRβ and additional receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("Axl" . SPARSER::PROTEIN)
    ("selumetinib or trametinib" . SPARSER::COLLECTION)
    ("selumetinib" . SPARSER::DRUG)
    ("mTOR ( xref ) and many receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("BRaf or Raf1" . SPARSER::COLLECTION) ("BRAF/MEK" . SPARSER::COLLECTION)
    ("BRAF and MEK" . SPARSER::COLLECTION)
    ("Vemurafenib and dabrafenib" . SPARSER::COLLECTION)
    ("ATP competitive inhibitors" . SPARSER::INHIBITOR)
    ("currently two BRaf inhibitors" . SPARSER::INHIBITOR)
    ("BRaf and Raf1" . SPARSER::COLLECTION)
    ("guanine nucleotide exchange factor, Raf1, BRaf and MEK1"
     . SPARSER::COLLECTION)
    ("Only one KRas G12V" . SPARSER::PROTEIN)
    ("EGFR, KRas and BRaf" . SPARSER::COLLECTION)
    ("EGFR-KRas-BRaf" . SPARSER::COLLECTION) ("KRas" . SPARSER::PROTEIN)
    ("BRaf or upstream regulators" . SPARSER::COLLECTION)
    ("aspartic acid or lysine" . SPARSER::COLLECTION)
    ("MEK and ERK" . SPARSER::COLLECTION) ("NRas" . SPARSER::PROTEIN)
    ("other kinases (FAK) and GTPases (Rac)" . SPARSER::COLLECTION)
    ("kinases (FAK)" . SPARSER::KINASE)
    ("specific deacetylases (HDAC6) and bromodomain proteins (BRD1, BRD9)"
     . SPARSER::COLLECTION)
    ("Bat2" . SPARSER::PROTEIN) ("Hnrnph2" . SPARSER::PROTEIN)
    ("Rsk" . SPARSER::PROTEIN)
    ("the MAPK phosphatases (DUSPs) and Sprouty (SPRY)" . SPARSER::COLLECTION)
    ("MAPK and growth-factor" . SPARSER::COLLECTION)
    ("Sprouty" . SPARSER::PROTEIN-FAMILY) ("JuB" . SPARSER::PROTEIN)
    ("Elk" . SPARSER::PROTEIN)
    ("A few representative ERK target substrates" . SPARSER::SUBSTRATE)
    ("MAP3Ks and MEK 1" . SPARSER::COLLECTION)
    ("MAPK substrates and cellular functions" . SPARSER::COLLECTION)
    ("Raf1, MAP3K1 and MAP3K8" . SPARSER::COLLECTION)
    ("MEK1 and MEK2" . SPARSER::COLLECTION)
    ("MAP3K1 (MEKK1) and MAP3K8 (Tpl2/COT)" . SPARSER::COLLECTION)
    ("Raf1, BRaf, MAP3K1 (MEKK1) and MAP3K8 (Tpl2/COT)" . SPARSER::COLLECTION)
    ("Tpl2/COT" . SPARSER::COLLECTION) ("COT" . SPARSER::PROTEIN)
    ("MAP-extracellular signal-regulated kinase kinase (MEK) and extracellular signal-regulated kinase (ERK) ( xref , xref )"
     . SPARSER::COLLECTION)
    ("extracellular signal-regulated kinase (ERK)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("kinase (MEK)" . SPARSER::KINASE)
    ("MAP-extracellular signal-regulated kinase" . SPARSER::COLLECTION)
    ("proteins and regulators of these two pathways" . SPARSER::REGULATOR)
    ("proteins and regulators" . SPARSER::COLLECTION)
    ("BRaf-MEK-ERK" . SPARSER::COLLECTION)
    ("mTOR and many receptor tyrosine kinases" . SPARSER::COLLECTION)
    ("BRaf and MEK" . SPARSER::COLLECTION)
    ("BRAF inhibitor and MEK inhibitor (trametinib)" . SPARSER::COLLECTION)
    ("significantly more active" . SPARSER::ACTIVE)
    ("currently two inhibitors" . SPARSER::INHIBITOR)
    ("BRaf" . SPARSER::PROTEIN) ("BRAF-MEK-ERK" . SPARSER::COLLECTION)
    ("PDGFRβ" . SPARSER::PROTEIN) ("DDR1" . SPARSER::PROTEIN)
    ("Son of Sevenless" . SPARSER::PROTEIN) ("BRD1" . SPARSER::PROTEIN)
    ("NUMA1" . SPARSER::PROTEIN) ("Tip1" . SPARSER::PROTEIN)
    ("connexin 43" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DDX47" . SPARSER::PROTEIN) ("EIF4EBP" . SPARSER::PROTEIN-FAMILY)
    ("KSR1" . SPARSER::PROTEIN) ("immediate early" . SPARSER::PROTEIN)
    ("ETV3" . SPARSER::PROTEIN) ("MEK 1" . SPARSER::PROTEIN)
    ("MEK2" . SPARSER::PROTEIN) ("Tpl2" . SPARSER::PROTEIN)
    ("MAP3K8" . SPARSER::PROTEIN) ("Raf1" . SPARSER::PROTEIN)
    ("MAP3Ks" . SPARSER::PROTEIN-FAMILY) ("MAP3K" . SPARSER::PROTEIN)
    ("MAP3" . SPARSER::PROTEIN)
    ("phosphoinositide-3 kinase" . SPARSER::PROTEIN)
    ("the bispecific fusion protein" . SPARSER::PROTEIN)
    ("AE" . SPARSER::MOLECULE)
    ("monospecific fusion proteins" . SPARSER::PROTEIN)
    ("bispecific fusion protein" . SPARSER::PROTEIN)
    ("LDM and two monospecific fusion proteins (Ec-LDP-AE and LDP-Hr-AE)"
     . SPARSER::COLLECTION)
    ("two monospecific fusion proteins" . SPARSER::PROTEIN)
    ("a bispecific molecule" . SPARSER::MOLECULE)
    ("bispecific molecules" . SPARSER::MOLECULE)
    ("novel bispecific molecules" . SPARSER::MOLECULE)
    ("toxin" . SPARSER::PROTEIN) ("Ontak" . SPARSER::MOLECULE)
    ("DAB" . SPARSER::MOLECULE)
    ("monoclonal antibodies and tyrosine kinase inhibitors"
     . SPARSER::INHIBITOR)
    ("antibodies or ligands" . SPARSER::COLLECTION)
    ("immunotoxins" . SPARSER::DRUG)
    ("some monospecific antibodies and tyrosine kinase inhibitors"
     . SPARSER::INHIBITOR)
    ("antibodies and tyrosine kinase" . SPARSER::COLLECTION)
    ("EGFR or HER2" . SPARSER::COLLECTION)
    ("cetuximab, trastuzumab, gefitinib, and erlotinib" . SPARSER::COLLECTION)
    ("EGFR, AKT and JNK" . SPARSER::COLLECTION)
    ("HER2 and p38MAPK" . SPARSER::COLLECTION)
    ("AKT, ERK, p38MAPK and JNK" . SPARSER::COLLECTION)
    ("apoptosis related molecules and several key molecules"
     . SPARSER::COLLECTION)
    ("LDM, Ec-LDP-Hr-AE, Ec-LDP-AE and LDP-Hr-AE" . SPARSER::COLLECTION)
    ("the bispecific Ec-LDP-Hr-AE protein" . SPARSER::PROTEIN)
    ("LDM and monospecific energized fusion proteins Ec-LDP-AE and LDP-Hr-AE"
     . SPARSER::COLLECTION)
    ("EGFR/HER2" . SPARSER::COLLECTION) ("Prism" . SPARSER::PROTEIN)
    ("LDM and three fusion proteins" . SPARSER::COLLECTION)
    ("chromophore (AE)" . SPARSER::MOLECULE) ("Hr" . SPARSER::PROTEIN)
    ("Ec" . SPARSER::PROTEIN) ("chromophore" . SPARSER::MOLECULE)
    ("LDP-Hr" . SPARSER::PROTEIN-PAIR) ("Ec-LDP" . SPARSER::PROTEIN-PAIR)
    ("apoptosis related molecules and key molecules" . SPARSER::COLLECTION)
    ("a bispecific fusion protein" . SPARSER::PROTEIN)
    ("EGF and Hr" . SPARSER::COLLECTION) ("VH" . SPARSER::PROTEIN)
    ("oligopeptides" . SPARSER::MOLECULE)
    ("epidermal growth factor receptor (EGFR) and human epidermal growth factor receptor"
     . SPARSER::COLLECTION)
    ("HER3 and HER4" . SPARSER::COLLECTION) ("HER2/neu" . SPARSER::COLLECTION)
    ("HER1/EGFR" . SPARSER::COLLECTION)
    ("caspase-3 and caspase-7" . SPARSER::COLLECTION)
    ("EGFR and HER2" . SPARSER::COLLECTION) ("lidamycin (LDM)" . SPARSER::DRUG)
    ("LDM" . SPARSER::PROTEIN) ("lidamycin" . SPARSER::DRUG)
    ("oligopeptide" . SPARSER::MOLECULE)
    ("both epidermal growth factor receptor (EGFR) and epidermal growth factor receptor"
     . SPARSER::COLLECTION)
    ("a recently developed bispecific enediyne-energized fusion protein"
     . SPARSER::PROTEIN)
    ("enediyne" . SPARSER::MOLECULE) ("LDP" . SPARSER::PROTEIN)
    ("BL22" . SPARSER::PROTEIN) ("denileukin diftitox" . SPARSER::MOLECULE)
    ("mm 3" . SPARSER::PROTEIN) ("CO 3" . SPARSER::PROTEIN)
    ("Anti-β" . SPARSER::PROTEIN) ("caspase 7" . SPARSER::PROTEIN)
    ("extracellular regulated protein kinase" . SPARSER::PROTEIN)
    ("CDR3" . SPARSER::PROTEIN) ("CXCL8 and receptors" . SPARSER::COLLECTION)
    ("Reparixin" . SPARSER::DRUG) ("reparixin" . SPARSER::DRUG)
    ("dominant-negative CXCL8 decoy proteins" . SPARSER::PROTEIN)
    ("unintegrated viral DNA" . SPARSER::DNA)
    ("Viral proteins" . SPARSER::PROTEIN)
    ("HIV-1-infected macrophages and primary microglia" . SPARSER::COLLECTION)
    ("primary microglia" . SPARSER::PROTEIN)
    ("macrophages/microglia" . SPARSER::COLLECTION)
    ("monocytes/macrophages" . SPARSER::COLLECTION)
    ("Astrocytes" . SPARSER::PROTEIN)
    ("our group and others showing robust increase in CXCL8 levels"
     . SPARSER::COLLECTION)
    ("viral proteins, cytokines and chemokines" . SPARSER::COLLECTION)
    ("proteins, cytokines and chemokines" . SPARSER::COLLECTION)
    ("receptors, CXCR1 and CXCR2" . SPARSER::COLLECTION)
    ("CXCR1 or CXCR2" . SPARSER::COLLECTION) ("MDMs" . SPARSER::PROTEIN)
    ("viral genes" . SPARSER::GENE)
    ("CD68 and HIV-1 p24" . SPARSER::COLLECTION) ("pTA" . SPARSER::PROTEIN)
    ("heat-inactivated CXCL8" . SPARSER::PROTEIN)
    ("astrocytes, macrophages and microglia" . SPARSER::COLLECTION)
    ("CXCL8-treated MDM" . SPARSER::PROTEIN)
    ("CXCL8-treated HIV-1-infected MDM" . SPARSER::PROTEIN)
    ("Heat-inactivated CXCL8" . SPARSER::PROTEIN)
    ("HIV-1 ADA or HIV-1 JRFL" . SPARSER::COLLECTION)
    ("CCL3 and CCL5" . SPARSER::COLLECTION)
    ("HIV-1 ADA and HIV-1 JRFL" . SPARSER::COLLECTION)
    ("macrophages and microglia" . SPARSER::COLLECTION)
    ("Cytokines and chemokines" . SPARSER::COLLECTION)
    ("Cytokines" . SPARSER::PROTEIN)
    ("human monocyte-derived macrophages (MDM)" . SPARSER::PROTEIN)
    ("IL-1β and TNF-α" . SPARSER::COLLECTION)
    ("protein tyrosine phosphatase and mitogen activated protein kinases"
     . SPARSER::COLLECTION)
    ("IL-1β, IL-6 and tumor necrosis factor" . SPARSER::COLLECTION)
    ("the first chemokines found in the brain" . SPARSER::PROTEIN)
    ("HIV-1 viral proteins" . SPARSER::PROTEIN)
    ("macrophages and/or microglia" . SPARSER::COLLECTION)
    ("viral proteins and other soluble factors" . SPARSER::COLLECTION)
    ("other soluble factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("perivascular macrophages and/or microglia" . SPARSER::COLLECTION)
    ("viral factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Macrophage tropic viruses primarily use CCR5" . SPARSER::PROTEIN)
    ("Macrophage" . SPARSER::PROTEIN)
    ("perivascular macrophages" . SPARSER::PROTEIN)
    ("Microglia" . SPARSER::PROTEIN) ("CXCR1 and CXCR2" . SPARSER::COLLECTION)
    ("both HIV-1-infected MDM as well as microglia" . SPARSER::COLLECTION)
    ("MDM and microglia" . SPARSER::COLLECTION) ("ADA" . SPARSER::PROTEIN)
    ("macrophages (MDM)" . SPARSER::PROTEIN) ("MDM" . SPARSER::PROTEIN)
    ("interleukin-1β and tumor necrosis factor-α" . SPARSER::COLLECTION)
    ("Cytokine/chemokine" . SPARSER::COLLECTION)
    ("triton X-100" . SPARSER::MOLECULE) ("CCL3" . SPARSER::PROTEIN)
    ("mitogen activated protein kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CXCR1" . SPARSER::PROTEIN)
    ("possibly other cell polarity proteins" . SPARSER::PROTEIN)
    ("mTORC1/Akt/S6K" . SPARSER::COLLECTION)
    ("aggressive subtypes" . SPARSER::PROTEIN)
    ("PI3K/S6K" . SPARSER::COLLECTION) ("aggressive forms" . SPARSER::FORM)
    ("TP53, BRCA1, BRCA2, FGFR1, EGFR, MAP3K1 and ZNF217"
     . SPARSER::COLLECTION)
    ("SCRIB and 40 breast cancer driver genes ( xref )" . SPARSER::COLLECTION)
    ("hSCRIBP305L and NEU/HER2" . SPARSER::COLLECTION)
    ("hSCRIBP305L and HER2" . SPARSER::COLLECTION)
    ("NEU/HER2" . SPARSER::COLLECTION) ("NEU" . SPARSER::PROTEIN)
    ("SCRIB and MYC" . SPARSER::COLLECTION)
    ("PTEN (P=0.2, n=760) and PIK3CA (p=0.3, n=482)" . SPARSER::COLLECTION)
    ("markedly higher pS6" . SPARSER::PROTEIN)
    ("SCRIB/PTEN" . SPARSER::COLLECTION)
    ("GFP-tagged wild type PTEN (WT) and a PTEN mutant" . SPARSER::COLLECTION)
    ("PTEN (WT)" . SPARSER::PROTEIN) ("SCRIB-PTEN" . SPARSER::COLLECTION)
    ("GFP-PTEN" . SPARSER::COLLECTION) ("SCRIB and PTEN" . SPARSER::COLLECTION)
    ("the apical polarity determinant PARD3" . SPARSER::PROTEIN)
    ("the basolateral polarity protein DLG1" . SPARSER::PROTEIN)
    ("mTOR and Akt" . SPARSER::COLLECTION)
    ("p70S6K and S6 proteins" . SPARSER::COLLECTION)
    ("PRAS40 and TSC2" . SPARSER::COLLECTION)
    ("PRAS40 (40kDa proline-rich protein) and TSC2 (tuberin)"
     . SPARSER::COLLECTION)
    ("40kDa" . SPARSER::PROTEIN)
    ("ERK, neither SCRIBWT nor hSCRIBP305L" . SPARSER::COLLECTION)
    ("JNK or p38" . SPARSER::COLLECTION) ("kinase (ERK)" . SPARSER::KINASE)
    ("p38, and Akt" . SPARSER::COLLECTION) ("RAS-MAPK" . SPARSER::COLLECTION)
    ("Rac-JNK" . SPARSER::COLLECTION)
    ("Vimentin and CK14" . SPARSER::COLLECTION)
    ("NDL and hSCRIBP305L" . SPARSER::COLLECTION)
    ("ErbB2 (NDL)" . SPARSER::PROTEIN) ("GATA3 and CK18" . SPARSER::COLLECTION)
    ("NDL" . SPARSER::PROTEIN)
    ("known luminal and basal markers" . SPARSER::COLLECTION)
    ("luminal and basal markers" . SPARSER::COLLECTION)
    ("CK18 or CK14" . SPARSER::COLLECTION) ("CK18/CK14" . SPARSER::COLLECTION)
    ("CK18 and CK14" . SPARSER::COLLECTION)
    ("the luminal marker cytokeratin-18 (CK18) and the basal marker CK14 ( xref )"
     . SPARSER::COLLECTION)
    ("the entire mammary fat" . SPARSER::PROTEIN)
    ("/CD61" . SPARSER::COLLECTION)
    ("CD49f (integrin α6) and CD61 (integrin β3)" . SPARSER::COLLECTION)
    ("hSCRIBP305L" . SPARSER::PROTEIN)
    ("MMTV-hSCRIBP305L" . SPARSER::PROTEIN-PAIR)
    ("the aggressive forms" . SPARSER::FORM)
    ("androgen receptor (LAR)" . SPARSER::PROTEIN) ("LAR" . SPARSER::PROTEIN)
    ("IM" . SPARSER::PROTEIN) ("LGL and DLG" . SPARSER::COLLECTION)
    ("LGL" . SPARSER::PROTEIN) ("hSCRIB" . SPARSER::PROTEIN)
    ("an open neural tube" . SPARSER::PROTEIN) ("scrib" . SPARSER::PROTEIN)
    ("the Akt phosphatase PHLPP1 ( xref ), the planar cell polarity protein VANGL1 ( xref ), and the neuronal nitric oxide synthase adaptor protein NOS1AP ( xref )"
     . SPARSER::COLLECTION)
    ("the neuronal nitric oxide synthase adaptor protein NOS1AP"
     . SPARSER::PROTEIN)
    ("epithelial mesenchymal transition regulators" . SPARSER::REGULATOR)
    ("Ras/MAPK" . SPARSER::COLLECTION) ("/Rac/JNK" . SPARSER::COLLECTION)
    ("Discs" . SPARSER::BIO-COMPLEX) ("LRR" . SPARSER::PROTEIN)
    ("maternal effects mutants" . SPARSER::MUTANT)
    ("Akt/mTOR/S6kinase" . SPARSER::COLLECTION)
    ("PTEN or PIK3CA" . SPARSER::COLLECTION)
    ("PIK3CA or PTEN" . SPARSER::COLLECTION)
    ("Akt/mTOR/S6K" . SPARSER::COLLECTION) ("SCRIB" . SPARSER::PROTEIN)
    ("ZNF217" . SPARSER::PROTEIN) ("MAP3K1" . SPARSER::PROTEIN)
    ("PARD3" . SPARSER::PROTEIN) ("DLG1" . SPARSER::PROTEIN)
    ("proline-rich protein" . SPARSER::PROTEIN)
    ("3-phosphoinositide dependent protein kinase-1" . SPARSER::PROTEIN)
    ("cytokeratin-5" . SPARSER::PROTEIN) ("cytokeratin-18" . SPARSER::PROTEIN)
    ("cytokeratin 14" . SPARSER::PROTEIN) ("BL2" . SPARSER::PROTEIN)
    ("BL1" . SPARSER::PROTEIN) ("CK6" . SPARSER::PROTEIN)
    ("p206" . SPARSER::PROTEIN) ("CD140a" . SPARSER::PROTEIN)
    ("CD61" . SPARSER::PROTEIN) ("PDZ1" . SPARSER::PROTEIN)
    ("βPIX" . SPARSER::PROTEIN) ("NOS1AP" . SPARSER::PROTEIN)
    ("PAK-interacting exchange factor" . SPARSER::PROTEIN)
    ("PSD-95" . SPARSER::PROTEIN) ("S6kinase" . SPARSER::PROTEIN-FAMILY)
    ("hydroxyurea" . SPARSER::DRUG)
    ("the recently reported Replication Protein A inhibitors"
     . SPARSER::INHIBITOR)
    ("ATM( xref ) and XRCC1( xref )" . SPARSER::COLLECTION)
    ("proteins and ATR" . SPARSER::COLLECTION)
    ("drugs and gemcitabine" . SPARSER::COLLECTION)
    ("ATRi and CHK1i treatment" . SPARSER::COLLECTION)
    ("ATRi or CHK1i" . SPARSER::COLLECTION)
    ("HU and ATRi" . SPARSER::COLLECTION) ("HU" . SPARSER::DRUG)
    ("foci, and γH2AX" . SPARSER::COLLECTION)
    ("foci and pan-nuclear γH2AX" . SPARSER::COLLECTION)
    ("Pan" . SPARSER::PROTEIN) ("XPF or ERCC1" . SPARSER::COLLECTION)
    ("ERCC1/XPF" . SPARSER::COLLECTION)
    ("XPF and vice versa" . SPARSER::COLLECTION)
    ("XPC and XPA" . SPARSER::COLLECTION) ("XPB and XPD" . SPARSER::COLLECTION)
    ("XPB" . SPARSER::PROTEIN) ("ICL" . SPARSER::PROTEIN)
    ("ERCC1 or XPF" . SPARSER::COLLECTION)
    ("ERCC1 and XPF" . SPARSER::COLLECTION)
    ("ATR and CHK1" . SPARSER::COLLECTION)
    ("ATR, ATRIP, RPA, CHEK1, CLSPN, HUS1, RAD1, RAD17, TIMELESS , and TIPIN"
     . SPARSER::COLLECTION)
    ("TIPIN" . SPARSER::PROTEIN) ("TIMELESS" . SPARSER::PROTEIN)
    ("CLSPN" . SPARSER::PROTEIN) ("ATRIP" . SPARSER::PROTEIN)
    ("alamar blue dye" . SPARSER::MOLECULE) ("ATRi" . SPARSER::MOLECULE)
    ("ICLs" . SPARSER::PROTEIN) ("ATR or CHK1" . SPARSER::COLLECTION)
    ("nuclease" . SPARSER::PROTEIN) ("ATR or CHEK1" . SPARSER::COLLECTION)
    ("ERCC1-XPF" . SPARSER::COLLECTION) ("XPF" . SPARSER::PROTEIN)
    ("ATM and XRCC1" . SPARSER::COLLECTION)
    ("The DNA damage response kinase ATR and its effector kinase CHEK1"
     . SPARSER::COLLECTION)
    ("Replication Protein" . SPARSER::PROTEIN) ("RAD17" . SPARSER::PROTEIN)
    ("RAD1" . SPARSER::PROTEIN) ("HUS1" . SPARSER::PROTEIN)
    ("AZD7762" . SPARSER::DRUG) ("VE-821" . SPARSER::DRUG)
    ("ERCC4" . SPARSER::PROTEIN) ("ERCC1" . SPARSER::PROTEIN)
    ("Cyclin E" . SPARSER::PROTEIN) ("CHEK1" . SPARSER::PROTEIN)
    ("UPF1 and UPF2" . SPARSER::COLLECTION)
    ("enogenous NMD" . SPARSER::PROTEIN)
    ("mRNAs and non-mutated" . SPARSER::COLLECTION)
    ("the pro-apoptotic BAX and PUMA" . SPARSER::COLLECTION)
    ("BAX and PUMA" . SPARSER::COLLECTION)
    ("p21, BAX and PUMA" . SPARSER::COLLECTION)
    ("the mutated p53 mRNA" . SPARSER::RNA)
    ("UPF1 or emetine" . SPARSER::COLLECTION)
    ("emetine or UPF1" . SPARSER::COLLECTION)
    ("methionine, and protein" . SPARSER::COLLECTION)
    ("previously described inhibitors" . SPARSER::INHIBITOR)
    ("emetine" . SPARSER::DRUG) ("Hela" . SPARSER::PROTEIN)
    ("rid" . SPARSER::DRUG) ("RNAse" . SPARSER::PROTEIN)
    ("PTC β globin and wild-type β globin mRNA" . SPARSER::COLLECTION)
    ("San" . SPARSER::PROTEIN) ("UPF1 and SMG7" . SPARSER::COLLECTION)
    ("UPF1-SMG7" . SPARSER::COLLECTION) ("UPF1 or UPF2" . SPARSER::COLLECTION)
    ("geneticin" . SPARSER::MOLECULE)
    ("cystic fibrosis transmembrane conductance regulator (CFTR)"
     . SPARSER::PROTEIN)
    ("CFTR" . SPARSER::PROTEIN) ("Gentamicin" . SPARSER::DRUG)
    ("globin and PTC" . SPARSER::COLLECTION) ("gentamicin" . SPARSER::DRUG)
    ("exonucleases" . SPARSER::PROTEIN)
    ("SMG-7 and SMG5" . SPARSER::COLLECTION)
    ("UPF1 and form" . SPARSER::COLLECTION)
    ("a vital component" . SPARSER::COMPONENT) ("EJC" . SPARSER::BIO-COMPLEX)
    ("complex (EJC)" . SPARSER::BIO-COMPLEX)
    ("p53 and BRCA1, ATM, VHL, and NF1 and NF2" . SPARSER::COLLECTION)
    ("BRCA1, ATM, VHL, and NF1 and NF2" . SPARSER::COLLECTION)
    ("NF1 and NF2" . SPARSER::COLLECTION) ("DMD" . SPARSER::PROTEIN)
    ("NMD targeted mRNAs" . SPARSER::PROTEIN)
    ("SMG7-UPF1" . SPARSER::COLLECTION) ("VLS" . SPARSER::PROTEIN)
    ("NMD" . SPARSER::PROTEIN) ("170A" . SPARSER::PROTEIN)
    ("β-Globin" . SPARSER::PROTEIN)
    ("cystic fibrosis transmembrane conductance regulator" . SPARSER::PROTEIN)
    ("PP2A" . SPARSER::PROTEIN) ("UPF-1" . SPARSER::PROTEIN)
    ("SMG5" . SPARSER::PROTEIN) ("SMG-7" . SPARSER::PROTEIN)
    ("UPF2" . SPARSER::PROTEIN) ("NF2" . SPARSER::PROTEIN)
    ("UPF1" . SPARSER::PROTEIN) ("SMG7" . SPARSER::PROTEIN)
    ("CPSF1, DDX18, LIN28B and TARBP2" . SPARSER::COLLECTION)
    ("E2F5 and MYC" . SPARSER::COLLECTION)
    ("MYC and E2F5" . SPARSER::COLLECTION)
    ("NEDD9 and DOCK3" . SPARSER::COLLECTION)
    ("MYC and LIN28B" . SPARSER::COLLECTION)
    ("p53/let-7i" . SPARSER::COLLECTION)
    ("CPSF1, DDX18 and LIN28B" . SPARSER::COLLECTION)
    ("E2F5, LIN28B and MYC" . SPARSER::COLLECTION)
    ("CPSF1, DDX18, EIF4A1, LSM6, PABPC4, RBM38, TARBP2 and ZC3H3"
     . SPARSER::COLLECTION)
    ("CPSF1 and MYC protein" . SPARSER::COLLECTION)
    ("CPSF1, DDX18, DDX56, EIF4A1, EIF2C2, LSM6, PABPC4, RBM38, TARBP2 and ZC3H3"
     . SPARSER::COLLECTION)
    ("E2F5, HMGA1, LIN28B, MYC and NRAS" . SPARSER::COLLECTION)
    ("downregulating some indirect let-7i" . SPARSER::PROTEIN)
    ("MYC and E2F" . SPARSER::COLLECTION)
    ("CPSF1, DICER1, DDX18, DDX56, EIF2C2, LIN28B and XPO5"
     . SPARSER::COLLECTION)
    ("AURKB, CCND1, CDC25A, E2F2, E2F4, E2F5 and E2F6" . SPARSER::COLLECTION)
    ("AURKB, CCND1, CDC25A, E2F2, E2F5, MYC and NRAS" . SPARSER::COLLECTION)
    ("375 unique mRNAs" . SPARSER::PROTEIN)
    ("E2F5 (2.8-fold) and NRAS (2.3-fold)" . SPARSER::COLLECTION)
    ("AURKB (1.9-fold) and MYC (1.6-fold)" . SPARSER::COLLECTION)
    ("AURKB" . SPARSER::PROTEIN) ("DICER" . SPARSER::PROTEIN)
    ("72 unique mRNAs" . SPARSER::PROTEIN)
    ("complex (RISC)" . SPARSER::BIO-COMPLEX) ("RISC" . SPARSER::PROTEIN)
    ("CTL or let-7i" . SPARSER::COLLECTION) ("cel" . SPARSER::PROTEIN)
    ("p53-p63" . SPARSER::COLLECTION) ("HA-p63" . SPARSER::COLLECTION)
    ("p63 and mutant" . SPARSER::COLLECTION)
    ("CTL, p63 or p53" . SPARSER::COLLECTION)
    ("TSS and mutant" . SPARSER::COLLECTION)
    ("CTL, p53 or p63" . SPARSER::COLLECTION) ("p53/p63" . SPARSER::COLLECTION)
    ("p53–p63" . SPARSER::COLLECTION) ("CTL or p63" . SPARSER::COLLECTION)
    ("p63 or mutant" . SPARSER::COLLECTION) ("CTL" . SPARSER::PROTEIN)
    ("anti-p53 or anti-p63" . SPARSER::COLLECTION)
    ("p63 and/or p73" . SPARSER::COLLECTION)
    ("mutant p53, p63 and/or p73" . SPARSER::COLLECTION)
    ("p63 or p73" . SPARSER::COLLECTION)
    ("p63, p73 and mutant" . SPARSER::COLLECTION)
    ("p53-shRNAs" . SPARSER::COLLECTION)
    ("exogenous mutant p53" . SPARSER::PROTEIN)
    ("pGL4-let-7i" . SPARSER::COLLECTION) ("p53 and p63" . SPARSER::COLLECTION)
    ("further establishing let-7i" . SPARSER::PROTEIN)
    ("p53 and p53R273H" . SPARSER::COLLECTION) ("let-7 is" . SPARSER::PROTEIN)
    ("let-7i" . SPARSER::PROTEIN) ("pri-let-7i" . SPARSER::COLLECTION)
    ("pri" . SPARSER::PROTEIN)
    ("the hot-spot aggressive mutant p53R273H" . SPARSER::PROTEIN)
    ("p53 and miRNAs" . SPARSER::COLLECTION)
    ("PIN1 and TOPBP1" . SPARSER::COLLECTION) ("VDR" . SPARSER::PROTEIN)
    ("‘hotspot’" . SPARSER::PROTEIN)
    ("E2F5, LIN28B, MYC and NRAS" . SPARSER::COLLECTION)
    ("p63 and p73" . SPARSER::COLLECTION) ("CPSF6" . SPARSER::PROTEIN)
    ("RAC1" . SPARSER::PROTEIN) ("DOCK3" . SPARSER::PROTEIN)
    ("NEDD9" . SPARSER::PROTEIN) ("ETS-2" . SPARSER::PROTEIN)
    ("ETS-1" . SPARSER::PROTEIN) ("ZC3H3" . SPARSER::PROTEIN)
    ("RBM38" . SPARSER::PROTEIN) ("PABPC4" . SPARSER::PROTEIN)
    ("LSM6" . SPARSER::PROTEIN) ("EIF4A1" . SPARSER::PROTEIN)
    ("HMGA1" . SPARSER::PROTEIN) ("XPO5" . SPARSER::PROTEIN)
    ("DDX18" . SPARSER::PROTEIN) ("E2F6" . SPARSER::PROTEIN)
    ("E2F4" . SPARSER::PROTEIN) ("pre-mRNA" . SPARSER::RNA)
    ("CPSF1" . SPARSER::PROTEIN) ("TARBP2" . SPARSER::PROTEIN)
    ("EIF2C2" . SPARSER::PROTEIN) ("DICER1" . SPARSER::PROTEIN)
    ("E2F2" . SPARSER::PROTEIN) ("CDC25A" . SPARSER::PROTEIN)
    ("p53R248W" . SPARSER::PROTEIN) ("p53R273H" . SPARSER::PROTEIN)
    ("pri-miRNAs" . SPARSER::RNA)
    ("p53 family" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ETS2" . SPARSER::PROTEIN)
    ("NF-Y" . SPARSER::PROTEIN) ("TOPBP1" . SPARSER::PROTEIN)
    ("PIN1" . SPARSER::PROTEIN) ("LIN28B" . SPARSER::PROTEIN)
    ("E2F5" . SPARSER::PROTEIN) ("let-7" . SPARSER::RNA)
    ("yet another component" . SPARSER::COMPONENT)
    ("gene desert around MYC" . SPARSER::PROTEIN)
    ("precisely CTCF" . SPARSER::PROTEIN)
    ("enhancers and the MYC promoter ( xref )" . SPARSER::COLLECTION)
    ("CTCF-associated higher-order chromatin" . SPARSER::BIO-COMPLEX)
    ("ChIA-PET" . SPARSER::COLLECTION)
    ("Mediators, cohesin or chromatin" . SPARSER::COLLECTION)
    ("Mediators" . SPARSER::PROTEIN)
    ("a human colorectal cancer-specific lncRNA CCAT1-L" . SPARSER::PROTEIN)
    ("CCTA" . SPARSER::PROTEIN) ("ACA" . SPARSER::PROTEIN)
    ("ncRNAs" . SPARSER::RNA) ("antisera" . SPARSER::PROTEIN)
    ("CCAT1-L and CTCF" . SPARSER::COLLECTION)
    ("down TCF4 or another abundant nuclear protein p54 nrb ( xref and data not shown)"
     . SPARSER::COLLECTION)
    ("CTCF and CCAT1-L" . SPARSER::COLLECTION)
    ("CTCF and CTCF-mediated chromatin" . SPARSER::COLLECTION)
    ("a dominant-negative TCF4" . SPARSER::PROTEIN)
    ("MYC and CCAT1-L" . SPARSER::COLLECTION)
    ("TCF4 and CTCF" . SPARSER::COLLECTION)
    ("CCAT1-L and MYC" . SPARSER::COLLECTION) ("bin" . SPARSER::PROTEIN)
    ("edu" . SPARSER::DRUG) ("GROUP" . SPARSER::MOLECULE)
    ("CBP/P300" . SPARSER::COLLECTION) ("MYC and MYC" . SPARSER::COLLECTION)
    ("Conformation" . SPARSER::BIO-CONFORMATION)
    ("a northern blot" . SPARSER::PROTEIN) ("CCAT1-L" . SPARSER::PROTEIN)
    ("a CMV promoter and egfp just upstream" . SPARSER::COLLECTION)
    ("egfp-CCAT1-L" . SPARSER::COLLECTION) ("egfp" . SPARSER::PROTEIN)
    ("Fractions" . SPARSER::COMPONENT) ("Xist" . SPARSER::PROTEIN)
    ("APA" . SPARSER::PROTEIN) ("ASO" . SPARSER::PROTEIN)
    ("The same northern blot" . SPARSER::PROTEIN)
    ("northern blot" . SPARSER::PROTEIN)
    ("a previously unreported lncRNA" . SPARSER::RNA) ("ncRNA" . SPARSER::RNA)
    ("MYC ( MYC -335) and the MYC promoter" . SPARSER::COLLECTION)
    ("factors and chromatin" . SPARSER::COLLECTION)
    ("factors/mediators" . SPARSER::COLLECTION)
    ("super-enhancers" . SPARSER::PROTEIN) ("Enhancers" . SPARSER::PROTEIN)
    ("LincRNA" . SPARSER::RNA) ("HOTAIR" . SPARSER::PROTEIN)
    ("lncRNAs" . SPARSER::RNA)
    ("a previously unannotated lncRNA" . SPARSER::RNA)
    ("lncRNA" . SPARSER::RNA) ("chr8" . SPARSER::PROTEIN)
    ("Ribonuclease Inhibitor" . SPARSER::PROTEIN) ("SP6" . SPARSER::PROTEIN)
    ("PYGO2" . SPARSER::PROTEIN) ("p54 nrb" . SPARSER::PROTEIN)
    ("H3K27ac" . SPARSER::MOLECULE) ("FAM84B" . SPARSER::PROTEIN)
    ("transcription factor 4" . SPARSER::PROTEIN) ("MALAT1" . SPARSER::PROTEIN)
    ("hnRNP-K" . SPARSER::PROTEIN) ("1-L" . SPARSER::PROTEIN)
    ("Ago-clade" . SPARSER::PROTEIN-PAIR) ("broken DNA" . SPARSER::DNA)
    ("Base" . SPARSER::PROTEIN) ("homologous DNA" . SPARSER::DNA)
    ("a mature complex" . SPARSER::BIO-COMPLEX)
    ("efficient HR" . SPARSER::PROTEIN)
    ("Ago2 ( xref ) and Ago2" . SPARSER::COLLECTION)
    ("ssDNAs" . SPARSER::PROTEIN) ("YA/FA" . SPARSER::COLLECTION)
    ("YA" . SPARSER::PROTEIN) ("Mre11 and RPA" . SPARSER::COLLECTION)
    ("Ago2-" . SPARSER::PROTEIN) ("Ago2 and Dicer" . SPARSER::COLLECTION)
    ("Ago2 and Rad51" . SPARSER::COLLECTION)
    ("Mdc1, 53BP1 and RPA" . SPARSER::COLLECTION)
    ("Ago2 and diRNAs" . SPARSER::COLLECTION)
    ("Drosha and Dicer" . SPARSER::COLLECTION)
    ("Ago1, Ago3 and Ago4" . SPARSER::COLLECTION) ("Ago3" . SPARSER::PROTEIN)
    ("Drosha/DGCR8" . SPARSER::COLLECTION)
    ("functional GFP" . SPARSER::PROTEIN) ("DR-GFP" . SPARSER::PROTEIN-PAIR)
    ("Ago2-Rad51" . SPARSER::COLLECTION)
    ("Similar site-specific Dicer- and Drosha-dependent sRNAs (named DDRNAs)"
     . SPARSER::COLLECTION)
    ("Dicer-" . SPARSER::PROTEIN) ("Drosha" . SPARSER::PROTEIN)
    ("CtBP-interacting protein (CtIP) and Exonuclease 1 (EXO1)"
     . SPARSER::COLLECTION)
    ("CtIP" . SPARSER::PROTEIN) ("CtBP" . SPARSER::PROTEIN)
    ("RPA and Mre11" . SPARSER::COLLECTION)
    ("Ago2 or Dicer" . SPARSER::COLLECTION) ("Ago" . SPARSER::PROTEIN)
    ("Argonaute" . SPARSER::PROTEIN-FAMILY)
    ("Rap80" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MDC1" . SPARSER::PROTEIN)
    ("I-R" . SPARSER::PROTEIN) ("Ago4" . SPARSER::PROTEIN)
    ("Ago1" . SPARSER::PROTEIN) ("DGCR8" . SPARSER::PROTEIN)
    ("Replication protein" . SPARSER::PROTEIN) ("EXO1" . SPARSER::PROTEIN)
    ("Exonuclease 1" . SPARSER::PROTEIN) ("Ago2" . SPARSER::PROTEIN)
    ("WXL" . SPARSER::PROTEIN-FAMILY) ("SGL" . SPARSER::PROTEIN)
    ("epidermal growth factor receptor and anaplastic lymphoma kinase"
     . SPARSER::COLLECTION)
    ("III " . SPARSER::PROTEIN) ("Tiam1-Rac1" . SPARSER::COLLECTION)
    ("guanosine" . SPARSER::MOLECULE)
    ("anaplastic lymphoma kinase" . SPARSER::PROTEIN)
    ("guanosine triphosphate" . SPARSER::MOLECULE)
    ("p73 and Ki-67" . SPARSER::COLLECTION)
    ("The prognostic impact" . SPARSER::PROTEIN)
    ("its pro-apoptotic targets" . SPARSER::TARGET-PROTEIN)
    ("BIM, PUMA and NOXA" . SPARSER::COLLECTION)
    ("the three pro-apoptotic transcriptional targets"
     . SPARSER::TARGET-PROTEIN)
    ("its pro-apoptotic transcriptional targets" . SPARSER::TARGET-PROTEIN)
    ("its pro-apoptotic targets Bim, Puma, and Noxa" . SPARSER::COLLECTION)
    ("TP73 and TP53" . SPARSER::COLLECTION) ("NHL" . SPARSER::PROTEIN)
    ("its pro-apoptotic transcriptional targets Bim, Puma, and Noxa"
     . SPARSER::COLLECTION)
    ("Bim, Puma, and Noxa" . SPARSER::COLLECTION)
    ("the pro-apoptotic TAp73 and anti-apoptotic ΔNp73 isoforms"
     . SPARSER::ISOFORM)
    ("TAp" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TNFRSF14" . SPARSER::PROTEIN)
    ("chromosomal region 1" . SPARSER::PROTEIN) ("TP73" . SPARSER::PROTEIN)
    ("traditional chemotherapeutic drugs" . SPARSER::DRUG)
    ("Anti-leukaemia chemotherapeutic drugs" . SPARSER::DRUG)
    ("AraC, etoposide, daunorubicin and doxorubicin" . SPARSER::COLLECTION)
    ("daunorubicin" . SPARSER::DRUG) ("AraC" . SPARSER::DRUG)
    ("Bcl-2 [ xref ] and Bcl-xL [ xref ]" . SPARSER::COLLECTION)
    ("pro-apoptotic proteins" . SPARSER::PROTEIN)
    ("Bax and/or Bak [ xref , xref ]" . SPARSER::COLLECTION)
    ("pro-apoptotic genes" . SPARSER::GENE)
    ("PUMA, NOXA and Bax" . SPARSER::COLLECTION)
    ("newly-synthesised p53" . SPARSER::PROTEIN)
    ("only nascent p53" . SPARSER::PROTEIN)
    ("PARP and Lamin B" . SPARSER::COLLECTION)
    ("mdm2 , p21 , NOXA and PUMA" . SPARSER::COLLECTION)
    ("siP" . SPARSER::PROTEIN) ("AML2 or AML3" . SPARSER::COLLECTION)
    ("p53 and Mdm2, and p53 and Mdm4" . SPARSER::COLLECTION)
    ("Mdm2, and p53 and Mdm4" . SPARSER::COLLECTION)
    ("p53 and Mdm4" . SPARSER::COLLECTION) ("p53-Mdm4" . SPARSER::COLLECTION)
    ("CHX and/or MG132" . SPARSER::COLLECTION)
    ("proteasomes" . SPARSER::PROTEIN) ("Mdm2/Mdm4" . SPARSER::COLLECTION)
    ("CHX and MG132" . SPARSER::COLLECTION)
    ("cycloheximide (CHX) and the proteasome inhibitor MG132"
     . SPARSER::COLLECTION)
    ("p53, Mdm2 and Mdm4" . SPARSER::COLLECTION)
    ("the high basal p53" . SPARSER::PROTEIN) ("USPs" . SPARSER::PROTEIN)
    ("Mdm2 or Mdm4" . SPARSER::COLLECTION)
    ("Mdm2, p21 and NOXA" . SPARSER::COLLECTION)
    ("nutlin-3 and Mdm2" . SPARSER::COLLECTION)
    ("only 2μM nutlin-3" . SPARSER::DRUG)
    ("AML2 and AML3" . SPARSER::COLLECTION) ("NPM" . SPARSER::PROTEIN)
    ("OCI/AML-3" . SPARSER::COLLECTION) ("p53-Mdm2" . SPARSER::COLLECTION)
    ("p53-Mdm2-Mdm4" . SPARSER::COLLECTION) ("nutlin" . SPARSER::DRUG)
    ("Mdm2-p53" . SPARSER::COLLECTION) ("OCI" . SPARSER::PROTEIN)
    ("Mdm2 and Mdm4" . SPARSER::COLLECTION)
    ("Lamin B" . SPARSER::PROTEIN-FAMILY) ("mdm2" . SPARSER::PROTEIN)
    ("USP2" . SPARSER::PROTEIN) ("USP5" . SPARSER::PROTEIN)
    ("KU-55933" . SPARSER::DRUG) ("AML3" . SPARSER::PROTEIN)
    ("AML2" . SPARSER::PROTEIN) ("ligase activity" . SPARSER::PROTEIN)
    ("nutlin-3" . SPARSER::DRUG) ("Mdm4" . SPARSER::PROTEIN)
    ("EMT-MET" . SPARSER::COLLECTION) ("ASD" . SPARSER::PROTEIN)
    ("ZEB1 and/or SNAI2" . SPARSER::COLLECTION)
    ("FRA1/Jun" . SPARSER::COLLECTION)
    ("MMP14 , LAMC2 , VIM and ZEB1" . SPARSER::COLLECTION)
    ("FRA1/β-catenin" . SPARSER::COLLECTION)
    ("Pathological EMT" . SPARSER::PROTEIN)
    ("genes and pathways" . SPARSER::COLLECTION)
    ("migratory and invasive traits" . SPARSER::PROTEIN)
    ("the epithelial FRA1" . SPARSER::PROTEIN)
    ("VIM and AXL" . SPARSER::COLLECTION)
    ("CDH1 and CLDN7" . SPARSER::COLLECTION)
    ("several mesenchymal and epithelial FRA1" . SPARSER::PROTEIN)
    ("whose components" . SPARSER::COMPONENT)
    ("FRA1 and TGFβ" . SPARSER::COLLECTION)
    ("FOSL1 and pro-mesenchymal" . SPARSER::COLLECTION)
    ("FRA1 and an epithelial subset" . SPARSER::COLLECTION)
    ("FLAG-FRA1" . SPARSER::COLLECTION)
    ("2 distinct shRNAs" . SPARSER::PROTEIN) ("strong FRA1" . SPARSER::PROTEIN)
    ("AE1/AE3" . SPARSER::COLLECTION) ("AE1" . SPARSER::PROTEIN)
    ("mesenchymal genes" . SPARSER::GENE)
    ("a clinically relevant cohort" . SPARSER::MOLECULE)
    ("Fos, Jun, ATF and MAF" . SPARSER::COLLECTION) ("ATF" . SPARSER::PROTEIN)
    ("SMAD2 and SMAD3" . SPARSER::COLLECTION)
    ("RAS and TGFβ" . SPARSER::COLLECTION) ("primary CRCs" . SPARSER::PROTEIN)
    ("TGFBR2 , SMAD2 , SMAD3 or SMAD4" . SPARSER::COLLECTION)
    ("Snail, Twist and ZEB" . SPARSER::COLLECTION) ("ZEB" . SPARSER::PROTEIN)
    ("bHLH" . SPARSER::PROTEIN)
    ("an invasive mesenchymal-like state" . SPARSER::BIO-STATE)
    ("epithelial-mesenchymal transition (EMT)-related genes" . SPARSER::GENE)
    ("a potent regulator of migration and invasion" . SPARSER::COLLECTION)
    ("RAS-ERK" . SPARSER::COLLECTION)
    ("Gene 1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("WNT5A" . SPARSER::PROTEIN)
    ("E-Cadherin" . SPARSER::PROTEIN) ("1 A" . SPARSER::PROTEIN)
    ("LAMC2" . SPARSER::PROTEIN) ("MMP14" . SPARSER::PROTEIN)
    ("CLDN7" . SPARSER::PROTEIN) ("TGFβ2" . SPARSER::PROTEIN)
    ("BMP4" . SPARSER::PROTEIN) ("FOSL1" . SPARSER::PROTEIN)
    ("MEF-2" . SPARSER::PROTEIN) ("AE3" . SPARSER::PROTEIN)
    ("TGFBR2" . SPARSER::PROTEIN) ("FRA-1" . SPARSER::PROTEIN)
    ("CD10 and CD99" . SPARSER::COLLECTION)
    ("CD10, CD99, E-cadherin, and CTNNB1" . SPARSER::COLLECTION)
    ("a comprehensive cohort" . SPARSER::MOLECULE)
    ("TCF1/TCF7" . SPARSER::COLLECTION)
    ("CTNNB1 and LEF1" . SPARSER::COLLECTION)
    ("LEF1/TCF" . SPARSER::COLLECTION)
    ("cyclin D1 and c-myc" . SPARSER::COLLECTION)
    ("both LEF1 and nuclear CTNNB1" . SPARSER::COLLECTION)
    ("patchy CD10" . SPARSER::PROTEIN) ("strong nuclear" . SPARSER::PROTEIN)
    ("CTNNB1, E-cadherin, CD10, and CD99" . SPARSER::COLLECTION)
    ("The interspersed foamy macrophages" . SPARSER::PROTEIN)
    ("hyaline" . SPARSER::PROTEIN)
    ("a strong and diffuse nuclear" . SPARSER::PROTEIN)
    ("strong and diffuse nuclear" . SPARSER::PROTEIN)
    ("LEF1 and CTNNB1" . SPARSER::COLLECTION) ("/T-cell" . SPARSER::COLLECTION)
    ("TCF7" . SPARSER::PROTEIN) ("TCF1" . SPARSER::PROTEIN)
    ("alpha-chain" . SPARSER::PROTEIN) ("CD99" . SPARSER::PROTEIN)
    ("lymphoid enhancer-binding factor 1" . SPARSER::PROTEIN)
    ("beta 1" . SPARSER::PROTEIN)
    ("catenin (cadherin-associated protein)" . SPARSER::PROTEIN)
    ("RTKs and neurotransmitter" . SPARSER::COLLECTION)
    ("AG1478 and haloperidol" . SPARSER::COLLECTION)
    ("GSCs" . SPARSER::PROTEIN)
    ("AG1478-, or haloperidol-" . SPARSER::COLLECTION)
    ("haloperidol-" . SPARSER::DRUG) ("AG1478-" . SPARSER::DRUG)
    ("AG1478 or haloperidol" . SPARSER::COLLECTION)
    ("AG1478, and haloperidol" . SPARSER::COLLECTION)
    ("Ras/ERK" . SPARSER::COLLECTION)
    ("heterotrimeric G proteins" . SPARSER::PROTEIN)
    ("quinpirole" . SPARSER::DRUG) ("Haloperidol" . SPARSER::DRUG)
    ("RCAS-PDGFB-HA" . SPARSER::COLLECTION) ("Ink4a-Arf" . SPARSER::COLLECTION)
    ("PDGFB" . SPARSER::PROTEIN) ("lox/lox" . SPARSER::COLLECTION)
    ("an astrocytic line" . SPARSER::PROTEIN)
    ("flox/flox" . SPARSER::COLLECTION) ("hGFAP" . SPARSER::PROTEIN)
    ("sh- and siRNAs" . SPARSER::COLLECTION) ("sh-" . SPARSER::PROTEIN-FAMILY)
    ("receptors (GPCR)" . SPARSER::RECEPTOR)
    ("PDGF and Wnt" . SPARSER::COLLECTION) ("dopamine" . SPARSER::PROTEIN)
    ("Epidermal Growth Factor Receptor (EGFR)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EGFR and DRD2" . SPARSER::COLLECTION)
    ("DRD2 and Epidermal Growth Factor Receptor (EGFR)" . SPARSER::COLLECTION)
    ("DRD2 and Epidermal Growth Factor Receptor" . SPARSER::COLLECTION)
    ("GNAI2/Rap1/Ras/ERK" . SPARSER::COLLECTION)
    ("haloperidol" . SPARSER::DRUG) ("si-/shRNAs" . SPARSER::COLLECTION)
    ("Receptor (GPCR)" . SPARSER::RECEPTOR)
    ("parallel genome-wide shRNA" . SPARSER::PROTEIN)
    ("neurotransmitter" . SPARSER::MOLECULE) ("Ku86" . SPARSER::PROTEIN)
    ("pSTAT3" . SPARSER::PROTEIN) ("Rap1GAPII" . SPARSER::PROTEIN)
    ("GTPase-activating protein" . SPARSER::PROTEIN)
    ("Ink4a" . SPARSER::PROTEIN)
    ("Epidermal Growth Factor Receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GNAI2" . SPARSER::PROTEIN) ("DRD2" . SPARSER::PROTEIN)
    ("Dopamine Receptor D2" . SPARSER::PROTEIN)
    ("G-Protein Coupled" . SPARSER::PROTEIN)
    ("AP-1, C/EBPα and C/EBPγ" . SPARSER::COLLECTION)
    ("AP-1 and C/EBP" . SPARSER::COLLECTION)
    ("p38αand p38δ" . SPARSER::COLLECTION)
    ("p38γ or p38δ" . SPARSER::COLLECTION)
    ("Akt2 or Akt3" . SPARSER::COLLECTION)
    ("Akt, Akt1, Akt2 and Akt3" . SPARSER::COLLECTION)
    ("HAD and HIV+" . SPARSER::COLLECTION)
    ("Vpr" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cytokines or chemokines" . SPARSER::COLLECTION)
    ("cytokines and chemokines" . SPARSER::COLLECTION)
    ("C/EBPα, C/EBPγ and AP-1" . SPARSER::COLLECTION)
    ("C/EBPα and C/EBPγ" . SPARSER::COLLECTION)
    ("CCAT/enhancer binding protein" . SPARSER::COLLECTION)
    ("CCAT" . SPARSER::PROTEIN) ("p38α or p38δ" . SPARSER::COLLECTION)
    ("p38α and p38δ" . SPARSER::COLLECTION)
    ("p38α, p38β, p38γ and p38δ" . SPARSER::COLLECTION)
    ("mRNA (6 h post-transfection) and protein (48 h post-transfection)"
     . SPARSER::COLLECTION)
    ("p38α and p38β" . SPARSER::COLLECTION)
    ("hypoxanthine-guanine" . SPARSER::PROTEIN)
    ("hypoxanthine" . SPARSER::DRUG) ("HPRT" . SPARSER::PROTEIN)
    ("UV light" . SPARSER::PROTEIN) ("ethidium" . SPARSER::MOLECULE)
    ("Akt2 and Akt3" . SPARSER::COLLECTION)
    ("Akt1, Akt2 and Akt3" . SPARSER::COLLECTION)
    ("PI3-Akt" . SPARSER::COLLECTION) ("IKK1 and IKK2" . SPARSER::COLLECTION)
    ("CCL5 and appropriate secondary antibodies" . SPARSER::COLLECTION)
    ("appropriate secondary antibodies" . SPARSER::ANTIBODY)
    ("fluorescent antibodies" . SPARSER::ANTIBODY)
    ("mRNA and supernatants" . SPARSER::COLLECTION)
    ("CCL5, or RANTES" . SPARSER::COLLECTION)
    ("CCR1, CCR3 or CCR5" . SPARSER::COLLECTION) ("RANTES" . SPARSER::PROTEIN)
    ("soluble factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CCL2, IL-6, TNF-α and IFN-γ" . SPARSER::COLLECTION)
    ("vpr" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a nef-deleted mutant" . SPARSER::MUTANT) ("nef" . SPARSER::PROTEIN)
    ("SBBC" . SPARSER::MOLECULE) ("cohort (SBBC)" . SPARSER::MOLECULE)
    ("bank" . SPARSER::PROTEIN) ("CD4, MHC-I and MHC-II" . SPARSER::COLLECTION)
    ("a multifunctional viral accessory protein" . SPARSER::PROTEIN)
    ("quinolinic acid and arachidonic acid metabolites" . SPARSER::COLLECTION)
    ("arachidonic acid metabolites" . SPARSER::MOLECULE)
    ("toxic mediators" . SPARSER::PROTEIN)
    ("the less severe form" . SPARSER::FORM)
    ("the most severe form" . SPARSER::FORM) ("HAD" . SPARSER::PROTEIN)
    ("NF-κB, CEBP, and AP-1" . SPARSER::COLLECTION)
    ("Akt, p38MAPK, NF-κB, CEBP, and AP-1" . SPARSER::COLLECTION)
    ("CEBP" . SPARSER::PROTEIN) ("NF-κB, PI3K, and p38" . SPARSER::COLLECTION)
    ("Antagonists" . SPARSER::MOLECULE)
    ("siRNA and chemical antagonists" . SPARSER::COLLECTION)
    ("p38 α" . SPARSER::PROTEIN) ("IKK 2" . SPARSER::PROTEIN)
    ("prion protein" . SPARSER::PROTEIN) ("IkBα" . SPARSER::PROTEIN)
    ("C/EBPα" . SPARSER::PROTEIN) ("p38δ" . SPARSER::PROTEIN)
    ("p38γ" . SPARSER::PROTEIN) ("Akt3" . SPARSER::PROTEIN)
    ("and 1 " . SPARSER::PROTEIN) ("Bay11-7082" . SPARSER::DRUG)
    ("IKK2" . SPARSER::PROTEIN) ("IKK1" . SPARSER::PROTEIN)
    ("SC-514" . SPARSER::DRUG) ("CCR3" . SPARSER::PROTEIN)
    ("CCR1" . SPARSER::PROTEIN) ("quinolinic acid" . SPARSER::MOLECULE)
    ("CCL5" . SPARSER::PROTEIN)
    ("antibodies and reagents" . SPARSER::COLLECTION)
    ("E 2 , TAM or their combination" . SPARSER::COLLECTION)
    ("MKP-1, MKP-2, ERK1/2 and JNK1/2" . SPARSER::COLLECTION)
    ("ERK1/2 and JNK1/2" . SPARSER::COLLECTION) ("and 1-" . SPARSER::PROTEIN)
    ("MKP-1-" . SPARSER::PROTEIN)
    ("E 2 , TAM or a combination" . SPARSER::COLLECTION)
    ("estrogen or tamoxifen" . SPARSER::COLLECTION)
    ("V5-tagged MKP-1 and MKP-2" . SPARSER::COLLECTION)
    ("exogenous MKP-1 and MKP-2" . SPARSER::COLLECTION)
    ("pCDNA3.1-MKP-2" . SPARSER::COLLECTION)
    ("pCDNA3.1-MKP-1" . SPARSER::COLLECTION)
    ("charcoal-stripped FBS" . SPARSER::PROTEIN) ("TAM" . SPARSER::PROTEIN)
    ("MKP-2 and MKP-1" . SPARSER::COLLECTION)
    ("both the exogenous 48 kDa and endogenous 43 kDa" . SPARSER::COLLECTION)
    ("both the exogenous 48 kDa" . SPARSER::PROTEIN)
    ("MKP-1 (39 kDa) and a 43 kDa protein" . SPARSER::COLLECTION)
    ("exogenous MKP proteins" . SPARSER::PROTEIN)
    ("threonine and tyrosine" . SPARSER::COLLECTION)
    ("ERK, JNK, and p38" . SPARSER::COLLECTION)
    ("threonine-tyrosine" . SPARSER::COLLECTION)
    ("ERK, JNK and p38" . SPARSER::COLLECTION)
    ("the estrogen receptor [ xref ] and tamoxifen" . SPARSER::COLLECTION)
    ("Tamoxifen" . SPARSER::MOLECULE) ("ERalpha" . SPARSER::PROTEIN)
    ("TAMR" . SPARSER::PROTEIN)
    ("MKP-2 and phospho-ERK1/2" . SPARSER::COLLECTION)
    ("MCF7-TAMR" . SPARSER::COLLECTION)
    ("the major MAPK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MKP-1 and MKP-2" . SPARSER::COLLECTION)
    ("MCF7-MKP-1" . SPARSER::COLLECTION) ("MCF7-MKP-2" . SPARSER::COLLECTION)
    ("MKP-1 or MKP-2" . SPARSER::COLLECTION)
    ("MKP-1/MKP-2" . SPARSER::COLLECTION)
    ("Phosphatases" . SPARSER::PHOSPHATASE)
    ("4-hydroxy-tamoxifen" . SPARSER::DRUG)
    ("beta-estradiol" . SPARSER::MOLECULE) ("anti-estrogens" . SPARSER::DRUG)
    ("pCDNA3.1" . SPARSER::PROTEIN)
    ("MAP Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Mitogen-activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Mitogen-Activated Protein Kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("extracellular signal regulated kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MKP-2" . SPARSER::PROTEIN)
    ("Mitogen-Activated Protein Kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ligand-mimetic integrin inhibitors" . SPARSER::INHIBITOR)
    ("a structure-based drug" . SPARSER::DRUG)
    ("αVβ3–hFN10/B" . SPARSER::COLLECTION)
    ("its prototypical RGD motif" . SPARSER::PROTEIN)
    ("wtFN10–αVβ3" . SPARSER::COLLECTION) ("α5β1-FN" . SPARSER::COLLECTION)
    ("αVβ3-FN" . SPARSER::COLLECTION) ("FN-type III" . SPARSER::COLLECTION)
    ("αVβ3/FN" . SPARSER::COLLECTION)
    ("a macromolecular physiologic ligand" . SPARSER::LIGAND)
    ("wtFN10 or native FN" . SPARSER::COLLECTION)
    ("cation" . SPARSER::MOLECULE) ("αVβ3–hFN10" . SPARSER::COLLECTION)
    ("the physiologically relevant macromolecular ligand fibronectin"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("hFN10/B" . SPARSER::PROTEIN) ("αVβ3-hFN10/B" . SPARSER::COLLECTION)
    ("pdb" . SPARSER::MOLECULE) ("βA and βTD" . SPARSER::COLLECTION)
    ("βA" . SPARSER::PROTEIN) ("hFN10-βA" . SPARSER::PROTEIN-PAIR)
    ("MIDAS and ADMIDAS" . SPARSER::COLLECTION)
    ("cellular αVβ3" . SPARSER::PROTEIN) ("mannose" . SPARSER::MOLECULE)
    ("propeller" . SPARSER::PROTEIN-FAMILY)
    ("Propeller and βA" . SPARSER::COLLECTION)
    ("pentapeptide" . SPARSER::MOLECULE)
    ("hFN10- or wtFN10-bound αVβ3" . SPARSER::COLLECTION)
    ("hFN10-" . SPARSER::PROTEIN)
    ("the macromolecular ligands hFN10 or wtFN10" . SPARSER::COLLECTION)
    ("hFN10 or wtFN10" . SPARSER::COLLECTION)
    ("wtFN10 ( xref ) or hFN10 ( xref )" . SPARSER::COLLECTION)
    ("wtFN10" . SPARSER::PROTEIN) ("αVβ3-wtFN10" . SPARSER::COLLECTION)
    ("αVβ3-hFN10" . SPARSER::COLLECTION)
    ("soluble RGD-based ligands" . SPARSER::LIGAND)
    ("plexin-semaphorin-integrin" . SPARSER::COLLECTION)
    ("semaphorin" . SPARSER::PROTEIN-FAMILY) ("plexin" . SPARSER::PROTEIN)
    ("soluble fluoresceinated hFN10" . SPARSER::PROTEIN)
    ("soluble physiologic ligands" . SPARSER::LIGAND)
    ("-Mg 2+" . SPARSER::MOLECULE) ("disintegrin" . SPARSER::PROTEIN)
    ("resting and activated cellular αVβ3" . SPARSER::PROTEIN)
    ("hFN10" . SPARSER::PROTEIN) ("pure antagonists" . SPARSER::MOLECULE)
    ("hFN10–αVβ3" . SPARSER::PROTEIN-PAIR)
    ("a physiologically relevant ligand" . SPARSER::LIGAND)
    ("the modular matrix protein fibronectin (FN)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("fibronectin (FN)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("no RGD-based pure antagonists" . SPARSER::MOLECULE)
    ("cilengitide" . SPARSER::DRUG)
    ("the li gand-associated m etal b" . SPARSER::PROTEIN)
    ("ADMIDAS" . SPARSER::PROTEIN) ("cations" . SPARSER::MOLECULE)
    ("MIDAS" . SPARSER::PROTEIN) ("Propeller" . SPARSER::PROTEIN-FAMILY)
    ("parenteral ligand-mimetic antagonists" . SPARSER::MOLECULE)
    ("eptifibatide" . SPARSER::DRUG) ("LIBS" . SPARSER::DRUG)
    ("unusual receptors" . SPARSER::PROTEIN)
    ("α/β heterodimeric cell adhesion receptors" . SPARSER::RECEPTOR)
    ("RGD-based pure antagonists" . SPARSER::MOLECULE)
    ("a pure antagonist" . SPARSER::MOLECULE) ("RGD" . SPARSER::COLLECTION)
    ("pdb 1" . SPARSER::PROTEIN) ("id 3" . SPARSER::PROTEIN)
    ("AP3" . SPARSER::PROTEIN) ("α5β1" . SPARSER::PROTEIN)
    ("fibronectin receptor" . SPARSER::PROTEIN) ("id 2" . SPARSER::PROTEIN)
    ("MnCl 2" . SPARSER::DRUG) ("Rs 6" . SPARSER::PROTEIN)
    ("Mg 2+" . SPARSER::MOLECULE) ("αIIbβ3" . SPARSER::PROTEIN)
    ("filamentous actin" . SPARSER::BIO-COMPLEX) ("αVβ3" . SPARSER::PROTEIN)
    ("RKIP/STAT3" . SPARSER::COLLECTION)
    ("IL-6 and JAK and serine" . SPARSER::COLLECTION)
    ("JAK and serine" . SPARSER::COLLECTION)
    ("Osteopontin (OPN)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a chemokine-like extracellular matrix-associated protein"
     . SPARSER::PROTEIN)
    ("OPN" . SPARSER::PROTEIN) ("Osteopontin" . SPARSER::PROTEIN)
    ("attractive targets" . SPARSER::TARGET-PROTEIN)
    ("Cxcr4, Muc1 and VEGF" . SPARSER::COLLECTION) ("Cxcr4" . SPARSER::PROTEIN)
    ("Muc1 and VEGF" . SPARSER::COLLECTION)
    ("monomeric tubulin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Paclitaxel" . SPARSER::DRUG) ("STAT3 and c-Src" . SPARSER::COLLECTION)
    ("JAK and Raf" . SPARSER::COLLECTION)
    ("STAT3 and iv" . SPARSER::COLLECTION)
    ("RKIP and MDA" . SPARSER::COLLECTION)
    ("RKIP ( xref - xref ) and RKIP siRNA ( xref )" . SPARSER::COLLECTION)
    ("these EMT-associated proteins" . SPARSER::PROTEIN)
    ("Cxcr-4, VEGF and Muc1" . SPARSER::COLLECTION)
    ("Cxcr-4" . SPARSER::PROTEIN) ("Src-STAT3" . SPARSER::COLLECTION)
    ("Src:STAT3" . SPARSER::BIO-COMPLEX)
    ("STAT3 or other proteins" . SPARSER::COLLECTION)
    ("c-Src, STAT3 or other proteins" . SPARSER::COLLECTION)
    ("LC/MS" . SPARSER::COLLECTION)
    ("Src, STAT3, and RKIP" . SPARSER::COLLECTION)
    ("Src and STAT3" . SPARSER::COLLECTION)
    ("nitrocellulose" . SPARSER::MOLECULE)
    ("RKIP, c-Src, and STAT3" . SPARSER::COLLECTION)
    ("Flag-RKIP" . SPARSER::COLLECTION) ("HA-STAT3" . SPARSER::COLLECTION)
    ("c-myc-Src" . SPARSER::COLLECTION) ("c-Src:STAT3" . SPARSER::BIO-COMPLEX)
    ("Src-" . SPARSER::PROTEIN) ("c-Src- and JAK1" . SPARSER::COLLECTION)
    ("BXB" . SPARSER::PROTEIN) ("Raf-BXB" . SPARSER::COLLECTION)
    ("JAK1-" . SPARSER::PROTEIN) ("tyrphostin and AG490" . SPARSER::COLLECTION)
    ("tyrphostin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IRF-1 and JAK1" . SPARSER::COLLECTION)
    ("JAK3 or TYK2" . SPARSER::COLLECTION)
    ("RKIP and ENMD-1198" . SPARSER::COLLECTION) ("JAK-" . SPARSER::PROTEIN)
    ("MDA and PC3" . SPARSER::COLLECTION) ("PC3 and MDA" . SPARSER::COLLECTION)
    ("DU145, PC3 and MDA" . SPARSER::COLLECTION)
    ("camptothecins" . SPARSER::DRUG) ("c-Src and RKIP" . SPARSER::COLLECTION)
    ("p2xSIE-Luc" . SPARSER::COLLECTION) ("HA-RKIP" . SPARSER::COLLECTION)
    ("MDA" . SPARSER::DRUG) ("STAT3 and NF-κB" . SPARSER::COLLECTION)
    ("as 2-ME2" . SPARSER::COLLECTION) ("RKIP and STAT3" . SPARSER::COLLECTION)
    ("Ras-Raf-1" . SPARSER::COLLECTION)
    ("a popular target" . SPARSER::TARGET-PROTEIN)
    ("JAK or Src" . SPARSER::COLLECTION)
    ("bcl-XL , bcl-2 , and mcl-1" . SPARSER::COLLECTION)
    ("Cytokine" . SPARSER::PROTEIN) ("family and Src" . SPARSER::COLLECTION)
    ("cytokines or growth factor receptors" . SPARSER::COLLECTION)
    ("cytokines, growth factors, and hormones" . SPARSER::COLLECTION)
    ("tyrosine, serine, and lysine" . SPARSER::COLLECTION)
    ("c-Src and STAT3" . SPARSER::COLLECTION) ("IL-6-" . SPARSER::PROTEIN)
    ("RKIP and signal transducers and activators" . SPARSER::COLLECTION)
    ("PEBP" . SPARSER::PROTEIN)
    ("phosphatidylethanolamine" . SPARSER::MOLECULE)
    ("RKIP" . SPARSER::PROTEIN) ("isoform 1" . SPARSER::PROTEIN)
    ("AG490" . SPARSER::DRUG) ("IRF-1" . SPARSER::PROTEIN)
    ("C-Src" . SPARSER::PROTEIN) ("C-Src-" . SPARSER::PROTEIN)
    ("STAT 3" . SPARSER::PROTEIN) ("CS6" . SPARSER::PROTEIN)
    ("Green Fluorescent Protein" . SPARSER::PROTEIN)
    ("PEBP-1" . SPARSER::PROTEIN) ("Muc1" . SPARSER::PROTEIN)
    ("HIF1" . SPARSER::PROTEIN) ("ME2" . SPARSER::PROTEIN)
    ("G Protein-Coupled Receptor Kinase 2" . SPARSER::PROTEIN)
    ("GRK2" . SPARSER::PROTEIN) ("Beta)" . SPARSER::PROTEIN)
    ("mcl-1" . SPARSER::PROTEIN) ("bcl-2" . SPARSER::PROTEIN)
    ("bcl-XL" . SPARSER::PROTEIN)
    ("Raf kinase inhibitor protein" . SPARSER::PROTEIN)
    ("only Han Chinese cohorts" . SPARSER::MOLECULE) ("almost any type" . TYPE)
    ("cytokine and chemokine" . SPARSER::COLLECTION)
    ("v-ets" . SPARSER::COLLECTION) ("ets" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("certain proinflammatory cytokines" . SPARSER::PROTEIN)
    ("IL-17, TNF-α and IL-1β" . SPARSER::COLLECTION) ("FUS" . SPARSER::PROTEIN)
    ("the GG genotype and G allele" . SPARSER::COLLECTION)
    ("SNPs and FFA" . SPARSER::COLLECTION)
    ("the rs2910164 CC genotype and C allele" . SPARSER::COLLECTION)
    ("Genotype and allele" . SPARSER::COLLECTION)
    ("a vital regulator" . SPARSER::PROTEIN)
    ("rheumatoid factor (RF) and anti-nuclear antibody (ANA)"
     . SPARSER::COLLECTION)
    ("antibody (ANA)" . SPARSER::ANTIBODY)
    ("rheumatoid factor (RF)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ANA" . SPARSER::PROTEIN) ("pars" . SPARSER::PROTEIN)
    ("genotype and G/C" . SPARSER::COLLECTION)
    ("the rs10893872 CC genotype and C allele" . SPARSER::COLLECTION)
    ("the CT genotype and T allele" . SPARSER::COLLECTION)
    ("the rs2910164 GG genotype and G allele" . SPARSER::COLLECTION)
    ("the CC genotype and C allele" . SPARSER::COLLECTION)
    ("c  " . SPARSER::PROTEIN) ("pre-miRNAs" . SPARSER::RNA)
    ("HLA-DRB1" . SPARSER::PROTEIN) ("HLA-B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ets-1" . SPARSER::PROTEIN) ("Ets-1" . SPARSER::PROTEIN)
    ("HIF2α-c-MYC" . SPARSER::COLLECTION)
    ("the CpG [ xref , xref ] and PLA2R1" . SPARSER::COLLECTION)
    ("various repressive complexes" . SPARSER::BIO-COMPLEX)
    ("CKIs" . SPARSER::PROTEIN) ("HIF2α and HIF1α" . SPARSER::COLLECTION)
    ("ACHN or 786-O" . SPARSER::COLLECTION) ("bisulphite" . SPARSER::MOLECULE)
    ("dC" . SPARSER::MOLECULE) ("VHL-HIF2α-MYC" . SPARSER::COLLECTION)
    ("VHL-HIF-MYC" . SPARSER::COLLECTION)
    ("HIF2α and c-MYC" . SPARSER::COLLECTION)
    ("PR1 and PR2" . SPARSER::COLLECTION) ("PR3 and PR4" . SPARSER::COLLECTION)
    ("HIF2α-MYC" . SPARSER::COLLECTION)
    ("HIF1α or HIF2α" . SPARSER::COLLECTION)
    ("a mutated nonfunctional VHL protein" . SPARSER::PROTEIN)
    ("a functional VHL" . SPARSER::PROTEIN) ("mm3" . SPARSER::PROTEIN)
    ("ACHN and 786-O" . SPARSER::COLLECTION) ("ACHN" . SPARSER::PROTEIN)
    ("Inducible Factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gene ( VHL )" . SPARSER::PROTEIN)
    ("several secreted phospholipases A2 (sPLA2s) and various collagens"
     . SPARSER::COLLECTION)
    ("sPLA2s" . SPARSER::PROTEIN) ("sPLA" . SPARSER::PROTEIN)
    ("phospholipases" . SPARSER::PROTEIN)
    ("VHL, HIF-2alpha and c-MYC" . SPARSER::COLLECTION)
    ("HIF-2alpha/c-MYC" . SPARSER::COLLECTION) ("C-MYC" . SPARSER::PROTEIN)
    ("PR4" . SPARSER::PROTEIN) ("PR3" . SPARSER::PROTEIN)
    ("PR2" . SPARSER::PROTEIN) ("PR1" . SPARSER::PROTEIN)
    ("PHD3" . SPARSER::PROTEIN) ("HIF1α" . SPARSER::PROTEIN)
    ("pT3" . SPARSER::PROTEIN) ("HIF2α" . SPARSER::PROTEIN)
    ("mannose receptor" . SPARSER::PROTEIN) ("HIF-2alpha" . SPARSER::PROTEIN)
    ("Von Hippel-Lindau" . SPARSER::PROTEIN) ("PLA2R1" . SPARSER::PROTEIN)
    ("phospholipase A2 receptor" . SPARSER::PROTEIN)
    ("LATS1 and PTEN" . SPARSER::COLLECTION)
    ("NEDD4 (NEDD4-S347A/S348A, referred to as NEDD4-AA) or wild-type NEDD4 (NEDD4-WT)"
     . SPARSER::COLLECTION)
    ("S347A/S348A" . SPARSER::PROTEIN)
    ("NEDD4-S347A/S348A" . SPARSER::COLLECTION)
    ("NEDD4 and β-TRCP1" . SPARSER::COLLECTION)
    ("alanines" . SPARSER::AMINO-ACID)
    ("CKIα, CKIε or CKIγ" . SPARSER::COLLECTION)
    ("CKIα, CK2, IKKα, ERK or GSK3β" . SPARSER::COLLECTION)
    ("proto" . SPARSER::PROTEIN)
    ("the SCF E3 ligase components Rbx1 (Figure xref ) and Skp1 (Figure xref )"
     . SPARSER::COLLECTION)
    ("Cullin-2, Cullin-3, Cullin-4A or Cullin-5" . SPARSER::COLLECTION)
    ("Spy1A [ xref ] and PTEN (phosphatase and tensin homologue)"
     . SPARSER::COLLECTION)
    ("Deltex" . SPARSER::PROTEIN-FAMILY) ("AMPA" . SPARSER::PROTEIN)
    ("The neural precursor cell-expressed developmentally downregulated gene 4"
     . SPARSER::PROTEIN)
    ("ubiquitin or poly-ubiquitin" . SPARSER::COLLECTION)
    ("E6-AP Carboxyl-Terminus (HECT) type and Ring/Cullin Ligase (RCL)-type"
     . SPARSER::COLLECTION)
    ("-type" . TYPE) ("RCL" . SPARSER::PROTEIN)
    ("Cullin" . SPARSER::PROTEIN-FAMILY)
    ("the E2 ubiquitin-conjugating enzyme and the E3 ubiquitin ligase"
     . SPARSER::COLLECTION)
    ("the E1 ubiquitin-activating enzyme, the E2 ubiquitin-conjugating enzyme and the E3 ubiquitin ligase"
     . SPARSER::COLLECTION)
    ("CKI or SCF" . SPARSER::COLLECTION) ("CKI/SCF" . SPARSER::COLLECTION)
    ("mTOR/Akt" . SPARSER::COLLECTION) ("CKI" . SPARSER::PROTEIN)
    ("HECT" . SPARSER::PROTEIN) ("CS4" . SPARSER::PROTEIN)
    ("anti–β" . SPARSER::PROTEIN) ("Cullin 5" . SPARSER::PROTEIN)
    ("Cullin 4" . SPARSER::PROTEIN) ("Cullin 3" . SPARSER::PROTEIN)
    ("Cullin 2" . SPARSER::PROTEIN) ("Cullin 1" . SPARSER::PROTEIN)
    ("N-myc" . SPARSER::PROTEIN) ("NDRG1" . SPARSER::PROTEIN)
    ("FoxM1B" . SPARSER::PROTEIN) ("isoform 4" . SPARSER::PROTEIN)
    ("CKIε" . SPARSER::PROTEIN) ("CKIα" . SPARSER::PROTEIN)
    ("Cullin1" . SPARSER::PROTEIN) ("Rbx1" . SPARSER::PROTEIN)
    ("Fbl18" . SPARSER::PROTEIN) ("Cullin-5" . SPARSER::PROTEIN)
    ("Cullin-4A" . SPARSER::PROTEIN) ("Cullin-3" . SPARSER::PROTEIN)
    ("Cullin-2" . SPARSER::PROTEIN) ("Cullin-1" . SPARSER::PROTEIN)
    ("Spy1A" . SPARSER::PROTEIN) ("EPS15" . SPARSER::PROTEIN)
    ("Cbl-b" . SPARSER::PROTEIN) ("VEGF-R2" . SPARSER::PROTEIN)
    ("epithelial sodium channel" . SPARSER::PROTEIN)
    ("NEDD4-1" . SPARSER::PROTEIN) ("gene 4" . SPARSER::PROTEIN)
    ("E6-AP" . SPARSER::PROTEIN) ("NEDD4" . SPARSER::PROTEIN)
    ("active PTEFb complex" . SPARSER::BIO-COMPLEX)
    ("TNFα/CHX" . SPARSER::COLLECTION) ("HSFs" . SPARSER::PROTEIN)
    ("HSF" . SPARSER::PROTEIN) ("P300/CBP" . SPARSER::COLLECTION)
    ("transcriptional elongation" . SPARSER::PROTEIN)
    ("acute phase response gene" . SPARSER::PROTEIN)
    ("Pol II and phospho-Ser2CTD" . SPARSER::COLLECTION)
    ("a sequence-specific transcription factor" . SPARSER::PROTEIN)
    ("IP-SID-SRM-MS" . SPARSER::COLLECTION) ("SID" . SPARSER::PROTEIN)
    ("endogenous fluorescent protein mcherry-conjugated ubi-STAT3 FP"
     . SPARSER::PROTEIN)
    ("a monomeric ubiquitin-conjugated fusion protein" . SPARSER::PROTEIN)
    ("SHIP2 [ xref ] and other mammalian proteins" . SPARSER::COLLECTION)
    ("SRC3 [ xref ], SHIP2 [ xref ] and other mammalian proteins"
     . SPARSER::COLLECTION)
    ("TNFα and CHX" . SPARSER::COLLECTION)
    ("STAT3 or mcherry-tagged-ubi-STAT3" . SPARSER::COLLECTION)
    ("mcherry" . SPARSER::PROTEIN)
    ("TNFα and cyclohexamide" . SPARSER::COLLECTION)
    ("CCND1 , BCL2L1, APEX1, SOD2 and BCL2" . SPARSER::COLLECTION)
    ("MEFs, and OSM" . SPARSER::COLLECTION)
    ("STAT3 and BRD4" . SPARSER::COLLECTION)
    ("oncostatin-M (OSM)" . SPARSER::PROTEIN)
    ("gp130-STAT3" . SPARSER::COLLECTION) ("OSM" . SPARSER::PROTEIN)
    ("STAT3-associated BRD4" . SPARSER::PROTEIN)
    ("IP-SRM" . SPARSER::COLLECTION)
    ("ubi-STAT3 FP and total RNA" . SPARSER::COLLECTION)
    ("ubiquitin monomer and STAT3 (ubi-STAT3 FP)" . SPARSER::COLLECTION)
    ("trypsin and Glu-C" . SPARSER::COLLECTION)
    ("LC-SRM-MS" . SPARSER::COLLECTION) ("SRM" . SPARSER::PROTEIN)
    ("STAT3 and ubiquitin" . SPARSER::COLLECTION) ("ubi" . SPARSER::PROTEIN)
    ("NH2-terminal hydrophobic aa (ϕ is hydrophobic residue I, L or V) and a COOH-terminal acidic aa (e stands for E or D)"
     . SPARSER::COLLECTION)
    ("Both WT STAT3 (1-125) and STAT3K49/87R (1-125) mutant"
     . SPARSER::COLLECTION)
    ("HA-ubi" . SPARSER::COLLECTION)
    ("STAT3 deletion mutants STAT3 (1-688) and STAT3 (1-130)"
     . SPARSER::COLLECTION)
    ("H 2 O 2 or left" . SPARSER::COLLECTION)
    ("STAT3 and ubi-K0" . SPARSER::COLLECTION) ("sIL" . SPARSER::PROTEIN)
    ("an additional slower migrating species around ~100 kDa"
     . SPARSER::PROTEIN)
    ("pan-STAT3" . SPARSER::COLLECTION) ("HA-ubiquitin" . SPARSER::COLLECTION)
    ("V5-His-tagged STAT3 ( xref , lane1) or V5-His-tagged STAT3 and HA-ubi-WT ( xref , lane 2) /or HA-ubi-K0 ( xref , lane 3)"
     . SPARSER::COLLECTION)
    ("STAT3 and HA-ubi-WT" . SPARSER::COLLECTION) ("NTA" . SPARSER::MOLECULE)
    ("HA-Ubiquitin" . SPARSER::COLLECTION)
    ("the Western blot" . SPARSER::PROTEIN)
    ("A western blot" . SPARSER::PROTEIN)
    ("STAT3 and HA- tagged ubiquitin" . SPARSER::PROTEIN)
    ("V5-tagged STAT3" . SPARSER::PROTEIN)
    ("STAT3 and HA-" . SPARSER::COLLECTION) ("HA-" . SPARSER::PROTEIN)
    ("ubi-STAT3" . SPARSER::COLLECTION)
    ("active P-TEFb complex" . SPARSER::BIO-COMPLEX)
    ("STAT3 and CDK9" . SPARSER::COLLECTION)
    ("the bromodomain and extra-terminal bromodomain protein family"
     . SPARSER::COLLECTION)
    ("ubiquitin-STAT3" . SPARSER::COLLECTION)
    ("enzymes (DUB)" . SPARSER::ENZYME) ("a protein’s" . SPARSER::PROTEIN)
    ("–COOH" . SPARSER::COLLECTION) ("COOH" . SPARSER::PROTEIN)
    ("PTMS" . SPARSER::PROTEIN)
    ("BCL2L1, BCL2, MYC and CCND1" . SPARSER::COLLECTION)
    ("tyrosine and serine" . SPARSER::COLLECTION)
    ("cytokines and growth factors" . SPARSER::COLLECTION)
    ("a key trigger" . SPARSER::PROTEIN)
    ("BCL2 , BCL2L1 , APEX1 , SOD2 , CCND1 and MYC" . SPARSER::COLLECTION)
    ("ubi-STAT3-FP" . SPARSER::COLLECTION)
    ("a deubiquitinase-resistant monomeric ubiquitin fused" . SPARSER::PROTEIN)
    ("Transducers and Activator" . SPARSER::COLLECTION)
    ("Activator" . SPARSER::ACTIVATOR) ("Transducers" . SPARSER::PROTEIN)
    ("Brd4" . SPARSER::PROTEIN) ("SHIP2" . SPARSER::PROTEIN)
    ("SRC3" . SPARSER::PROTEIN) ("oncostatin-M" . SPARSER::PROTEIN)
    ("bromodomain containing protein 4" . SPARSER::PROTEIN)
    ("cyclin- dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("pCDNA 3.1" . SPARSER::PROTEIN) ("P300" . SPARSER::PROTEIN)
    ("Glu-C" . SPARSER::PROTEIN) ("CDK9" . SPARSER::PROTEIN)
    ("Pol II" . SPARSER::PROTEIN) ("serine 2" . SPARSER::PROTEIN)
    ("bromodomain containing 4" . SPARSER::PROTEIN)
    ("branched chain" . SPARSER::PROTEIN) ("PDLIM2" . SPARSER::PROTEIN)
    ("suppressor of cytokine signaling" . SPARSER::PROTEIN)
    ("elongation factor" . SPARSER::PROTEIN) ("BRD4" . SPARSER::PROTEIN)
    ("bromodomain -containing protein" . SPARSER::PROTEIN)
    ("overexpressing nonphosphorylatable PEA-15 mutants" . SPARSER::MUTANT)
    ("α-actin and smooth muscle" . SPARSER::COLLECTION)
    ("most notably PDGF-β receptor tyrosine kinase"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PEA-15 or a component" . SPARSER::COLLECTION)
    ("adiponectin" . SPARSER::PROTEIN)
    ("calcium and phosphorus" . SPARSER::COLLECTION)
    ("a routinely used antidiabetic drug" . SPARSER::DRUG)
    ("glucose and insulin" . SPARSER::COLLECTION)
    ("reproductive age" . SPARSER::PROTEIN)
    ("thiazolidinediones" . SPARSER::PROTEIN)
    ("an atypical antipsychotic" . SPARSER::DRUG) ("clozapine" . SPARSER::DRUG)
    ("PLD and PKCβ" . SPARSER::COLLECTION)
    ("TGF-β1 and fibronectin" . SPARSER::COLLECTION)
    ("creatine" . SPARSER::PROTEIN)
    ("glucose and recovery" . SPARSER::COLLECTION)
    ("PEA-15 and PLD1" . SPARSER::COLLECTION)
    ("the atypical PKCζ" . SPARSER::PROTEIN)
    ("the major glucose transporter isoforms, GLUT1 and GLUT4"
     . SPARSER::ISOFORM)
    ("GLUT1 and GLUT4" . SPARSER::COLLECTION)
    ("skeletal muscle and adipocytes" . SPARSER::COLLECTION)
    ("glucose and lipid" . SPARSER::COLLECTION)
    ("phosphoprotein enriched in diabetes or PED" . SPARSER::COLLECTION)
    ("PED" . SPARSER::PROTEIN) ("gene or genes" . SPARSER::COLLECTION)
    ("PCOS" . SPARSER::PROTEIN) ("suppressor and tumour" . SPARSER::COLLECTION)
    ("decitabine" . SPARSER::DRUG)
    ("PEA-15 and other anti-apoptotic proteins" . SPARSER::COLLECTION)
    ("CD95 or Fas" . SPARSER::COLLECTION)
    ("FADD and caspase-8" . SPARSER::COLLECTION) ("SCLIP" . SPARSER::PROTEIN)
    ("ligand (TRAIL)" . SPARSER::MOLECULE)
    ("suppressor and promoter" . SPARSER::COLLECTION)
    ("VSM" . SPARSER::PROTEIN) ("phosphatidylcholine" . SPARSER::MOLECULE)
    ("PEA-15 and FADD" . SPARSER::COLLECTION)
    ("an essential part" . SPARSER::COMPONENT)
    ("PKC and CaMKII" . SPARSER::COLLECTION)
    ("CaMKII or Akt" . SPARSER::COLLECTION)
    ("at least some downstream substrates" . SPARSER::SUBSTRATE)
    ("ERK1/2 and PEA-15" . SPARSER::COLLECTION)
    ("e.g. kinase suppressor" . SPARSER::SUPPRESSOR)
    ("ribosomal s6 kinase (RSK)" . SPARSER::PROTEIN-FAMILY)
    ("ETS" . SPARSER::PROTEIN) ("serine and threonine" . SPARSER::COLLECTION)
    ("therapeutically relevant target" . SPARSER::TARGET-PROTEIN)
    ("phosphoprotein enriched in astrocytes-15 (PEA-15) almost 20 years ago"
     . SPARSER::PROTEIN)
    ("around PEA-15" . SPARSER::PROTEIN)
    ("Fas-associated death domain protein (FADD)" . SPARSER::PROTEIN)
    ("DED" . SPARSER::PROTEIN)
    ("myosin heavy chain" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKCγ" . SPARSER::PROTEIN) ("potassium channel" . SPARSER::PROTEIN)
    ("GLUT4" . SPARSER::PROTEIN) ("GLUT1" . SPARSER::PROTEIN)
    ("HNF-4α" . SPARSER::PROTEIN)
    ("hepatocyte nuclear factor 4alpha" . SPARSER::PROTEIN)
    ("pea-15" . SPARSER::PROTEIN)
    ("phosphoprotein enriched in diabetes" . SPARSER::PROTEIN)
    ("protein phosphatase 4" . SPARSER::PROTEIN) ("DR5" . SPARSER::PROTEIN)
    ("death receptor 5" . SPARSER::PROTEIN)
    ("laminin receptor" . SPARSER::PROTEIN) ("SCG10" . SPARSER::PROTEIN)
    ("type 5" . SPARSER::PROTEIN) ("phospholipase D1" . SPARSER::PROTEIN)
    ("Elk-1" . SPARSER::PROTEIN) ("s6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("calcium/calmodulin" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("phosphoprotein enriched in astrocytes" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mitogen-activated protein kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PEA-15" . SPARSER::PROTEIN)
    ("Phosphoprotein enriched in astrocytes" . SPARSER::PROTEIN)
    ("a potential cancer chemotherapeutic target" . SPARSER::TARGET-PROTEIN)
    ("ATM or the other PIKKs" . SPARSER::COLLECTION)
    ("wortmannin or caffeine" . SPARSER::COLLECTION)
    ("proteins and IP6K2" . SPARSER::COLLECTION)
    ("mTOR, ATR, SMG-1, and TRRAP" . SPARSER::COLLECTION)
    ("ATR, mTOR, SMG1, and TRRAP form highly stable complexes"
     . SPARSER::BIO-COMPLEX)
    ("ATR, mTOR, SMG1, and TRRAP" . SPARSER::COLLECTION)
    ("IP6K1 or CK2α" . SPARSER::COLLECTION)
    ("nucleolin ( xref ) and HSP90 ( xref )" . SPARSER::COLLECTION)
    ("Two other proteins, nucleolin ( xref ) and HSP90 ( xref )"
     . SPARSER::COLLECTION)
    ("peptide or ATP" . SPARSER::COLLECTION)
    ("H2AX and p53" . SPARSER::COLLECTION)
    ("DNA-PK and ATM" . SPARSER::COLLECTION)
    ("CK2 and IP6K2/IP7" . SPARSER::COLLECTION)
    ("these latter two proteins" . SPARSER::PROTEIN) ("NCS" . SPARSER::PROTEIN)
    ("Neocarzinostatin" . SPARSER::PROTEIN)
    ("Both male and female mutants" . SPARSER::MUTANT)
    ("Cre-loxp" . SPARSER::COLLECTION) ("loxp" . SPARSER::PROTEIN)
    ("the DNA-PKcs inhibitor Nu7026 or the ATM inhibitor Ku55933 ( xref , xref )"
     . SPARSER::COLLECTION)
    ("DNA-PKcs or ATM" . SPARSER::COLLECTION)
    ("5-FU or etoposide" . SPARSER::COLLECTION)
    ("ATM or DNA-PKcs" . SPARSER::COLLECTION)
    ("IP6K2-p53" . SPARSER::COLLECTION)
    ("protein and phospho-S15-p53" . SPARSER::COLLECTION)
    ("the ATM-specific substrates checkpoint kinase 2 (Chk2) and KAP1"
     . SPARSER::COLLECTION)
    ("ATR-Chk1" . SPARSER::COLLECTION) ("PUMA and NOXA" . SPARSER::COLLECTION)
    ("NOXA" . SPARSER::PROTEIN) ("DNA-damage ( xref )" . SPARSER::DNA)
    ("DNA-PK/ATM" . SPARSER::COLLECTION)
    ("DNA-PKcs/ATM-p53" . SPARSER::COLLECTION)
    ("the proteasomal inhibitor MG132 or the caspase inhibitor z-VAD-fmk"
     . SPARSER::COLLECTION)
    ("the proteasomal inhibitor MG132" . SPARSER::PROTEIN)
    ("Tel2 and DNA-PKcs/ATM" . SPARSER::COLLECTION)
    ("mTOR, ATR, SMG1, and TRRAP" . SPARSER::COLLECTION)
    ("Tel2/Tti1" . SPARSER::COLLECTION)
    ("the dominant-negative IP6K2" . SPARSER::PROTEIN)
    ("ATM/DNA-PKcs" . SPARSER::COLLECTION) ("Tetracycline" . SPARSER::DRUG)
    ("IP6K2-TAP" . SPARSER::COLLECTION)
    ("alanine of Tel2’s" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("alanine of Tel2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DNA-PKcs, ATM, and mTOR" . SPARSER::COLLECTION)
    ("Tel2 and Tti1" . SPARSER::COLLECTION)
    ("DNA-PKcs, ATM and mTOR" . SPARSER::COLLECTION)
    ("Tti1 or Tti1S828A" . SPARSER::COLLECTION) ("PCP" . SPARSER::PROTEIN)
    ("a CK2α-associated factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CK2 and CK2α" . SPARSER::COLLECTION) ("GST-CK2" . SPARSER::COLLECTION)
    ("subunit or myc" . SPARSER::COLLECTION)
    ("an acidophilic kinase" . SPARSER::KINASE) ("pure CK2" . SPARSER::PROTEIN)
    ("the classical CK2 substrate peptide (RRRADDSDDDDD)" . SPARSER::PEPTIDE)
    ("peptide (RRRADDSDDDDD)" . SPARSER::PEPTIDE) ("TBB" . SPARSER::PROTEIN)
    ("Tti2 or Tel2" . SPARSER::COLLECTION) ("Tti1/Tel2" . SPARSER::COLLECTION)
    ("recombinant IP6K2 and recombinant Tti1MC" . SPARSER::COLLECTION)
    ("recombinant IP6K2’s" . SPARSER::PROTEIN)
    ("Tti1 ( xref ) and Tel2 ( xref )" . SPARSER::COLLECTION)
    ("myc-Tel2" . SPARSER::COLLECTION) ("myc-IP6K2" . SPARSER::COLLECTION)
    ("myc-Tti2" . SPARSER::COLLECTION) ("Flag-Tel2" . SPARSER::COLLECTION)
    ("Flag-Tti1" . SPARSER::COLLECTION) ("GST-IP6K2" . SPARSER::COLLECTION)
    ("IP6K2 and the TTT complex" . SPARSER::COLLECTION)
    ("Tti1, Tel2, DNA-PKcs and ATM" . SPARSER::COLLECTION)
    ("ATR, mTOR, SMG1 or TRRAP" . SPARSER::COLLECTION)
    ("Tti1-IP6K2" . SPARSER::COLLECTION)
    ("Tti1/Tti2/Tel2" . SPARSER::COLLECTION)
    ("DNA-PK/ATM-p53" . SPARSER::COLLECTION)
    ("DNA-PKcs/ATM" . SPARSER::COLLECTION)
    ("Tel2/Tti1/Tti2" . SPARSER::COLLECTION)
    ("the only yeast IP6 kinase" . SPARSER::KINASE)
    ("wortmannin and caffeine" . SPARSER::COLLECTION)
    ("caffeine" . SPARSER::MOLECULE) ("IP6K1 or IP6K3" . SPARSER::COLLECTION)
    ("a more recently identified enzyme termed VIP" . SPARSER::PROTEIN)
    ("IP6K1-3" . SPARSER::COLLECTION) ("polyphosphate" . SPARSER::MOLECULE)
    ("Inositol" . SPARSER::PROTEIN) ("polyphosphates" . SPARSER::MOLECULE)
    ("prefoldin" . SPARSER::PROTEIN-FAMILY)
    ("Tti1 and Tel2" . SPARSER::COLLECTION)
    ("Tel2, Tti1 and Tti2" . SPARSER::COLLECTION) ("PIKK" . SPARSER::KINASE)
    ("ATM, ATR, DNA-PKcs, mTOR, TRRAP, and SMG1" . SPARSER::COLLECTION)
    ("TRRAP" . SPARSER::PROTEIN) ("Noxa, PUMA, and Bax" . SPARSER::COLLECTION)
    ("pyrophosphates" . SPARSER::MOLECULE) ("Tti1" . SPARSER::PROTEIN)
    ("DNA-PKcs and ATM" . SPARSER::COLLECTION) ("CD43" . SPARSER::PROTEIN)
    ("pAX2" . SPARSER::PROTEIN) ("p-ATM" . SPARSER::PROTEIN)
    ("DNA-Pkcs" . SPARSER::PROTEIN) ("SMG-1" . SPARSER::PROTEIN)
    ("Ku70" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Ku80" . SPARSER::PROTEIN)
    ("Ku55933" . SPARSER::DRUG) ("p53 S" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("checkpoint kinase 2" . SPARSER::PROTEIN) ("Nu7026" . SPARSER::DRUG)
    ("z-VAD-fmk" . SPARSER::DRUG) ("CK2α" . SPARSER::PROTEIN)
    ("protein phosphatase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("DDB1" . SPARSER::PROTEIN) ("IP6K" . SPARSER::PROTEIN)
    ("Tel1" . SPARSER::PROTEIN) ("Kcs1" . SPARSER::PROTEIN)
    ("IP6K3" . SPARSER::PROTEIN) ("IP6K1" . SPARSER::PROTEIN)
    ("SMG1" . SPARSER::PROTEIN)
    ("DNA-dependent protein kinase catalytic subunit" . SPARSER::PROTEIN)
    ("IP6K2" . SPARSER::PROTEIN) ("IP6" . SPARSER::DRUG)
    ("CK2" . SPARSER::PROTEIN) ("Tti2" . SPARSER::PROTEIN)
    ("phosphoinositide-3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("polymerases and helicases" . SPARSER::COLLECTION)
    ("helicases" . SPARSER::PROTEIN) ("types, and helps" . SPARSER::COLLECTION)
    ("severe combined immunodeficiency (SCID)" . SPARSER::PROTEIN)
    ("coactivators" . SPARSER::PROTEIN) ("NR4" . SPARSER::PROTEIN)
    ("ATM and/or ATR" . SPARSER::COLLECTION)
    ("Efficient TLS" . SPARSER::PROTEIN) ("pKAP-1" . SPARSER::PROTEIN)
    ("pKAP-1-NuRD" . SPARSER::COLLECTION) ("exogenous DNA" . SPARSER::DNA)
    ("DDR" . SPARSER::PROTEIN) ("RSC" . SPARSER::PROTEIN)
    ("FAN1 and SLX4" . SPARSER::COLLECTION)
    ("SNM1A and WRNIP1" . SPARSER::COLLECTION)
    ("efficient TLS" . SPARSER::PROTEIN)
    ("UV-inducible RAD18" . SPARSER::PROTEIN)
    ("SUMOylation-defective KAP-1" . SPARSER::PROTEIN)
    ("SIM:KAP-1" . SPARSER::BIO-COMPLEX) ("Heterochromatin" . SPARSER::PROTEIN)
    ("UV-inducible RAD18 foci" . SPARSER::PROTEIN) ("TSA" . SPARSER::PROTEIN)
    ("Trichostatin" . SPARSER::MOLECULE)
    ("KAP-1 and MTA2" . SPARSER::COLLECTION)
    ("a component of the nucleosome-remodeling and histone deacetylation (NuRD) complex and KAP-1 (also known as TRIM28)"
     . SPARSER::COLLECTION)
    ("the UBZ4 mutant nor the BTB mutant" . SPARSER::COLLECTION)
    ("Rad18 and Zbtb1" . SPARSER::COLLECTION)
    ("mitomycin C (MMC) and cisplatin ( xref )" . SPARSER::COLLECTION)
    ("CPT" . SPARSER::PROTEIN) ("camptothecin" . SPARSER::DRUG)
    ("oxide" . SPARSER::MOLECULE) ("NQO" . SPARSER::PROTEIN)
    ("Fancd2" . SPARSER::PROTEIN) ("histones and XPC" . SPARSER::COLLECTION)
    ("XPC" . SPARSER::PROTEIN) ("UBZ4 and ΔBTB" . SPARSER::COLLECTION)
    ("UV-induced CPD foci" . SPARSER::PROTEIN)
    ("PCNA and CPDs" . SPARSER::COLLECTION) ("CPD" . SPARSER::PROTEIN)
    ("localized DNA" . SPARSER::DNA) ("UV-induced DNA" . SPARSER::DNA)
    ("polymerases, Rev1 and Pol" . SPARSER::COLLECTION)
    ("UV-mediated DNA" . SPARSER::DNA) ("UBZ4" . SPARSER::PROTEIN)
    ("GST-UBZ4" . SPARSER::PROTEIN-PAIR)
    ("polyubiquitin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cysteines" . SPARSER::AMINO-ACID) ("MMC" . SPARSER::PROTEIN)
    ("ZBTB1 and POLH" . SPARSER::COLLECTION) ("POLH" . SPARSER::PROTEIN)
    ("PPs" . SPARSER::PROTEIN) ("pyrimidone" . SPARSER::MOLECULE)
    ("a structure-specific endonuclease" . SPARSER::PROTEIN)
    ("γ H2AX and phospho-RPA2" . SPARSER::COLLECTION)
    ("PCNA-Ub" . SPARSER::COLLECTION) ("HC" . SPARSER::PROTEIN)
    ("UV-induced cyclobutane pyrimidine dimers" . SPARSER::DIMER)
    ("CPDs" . SPARSER::PROTEIN) ("cyclobutane" . SPARSER::MOLECULE)
    ("Zbtb1" . SPARSER::PROTEIN) ("SIM" . SPARSER::PROTEIN)
    ("KAP" . SPARSER::PROTEIN) ("USP1-UAF1" . SPARSER::COLLECTION)
    ("monoubiquitin" . SPARSER::PROTEIN) ("Pol" . SPARSER::PROTEIN)
    ("DVC1 (also known as Spartan/C1orf124) and NBS1" . SPARSER::COLLECTION)
    ("Spartan/C1orf124" . SPARSER::COLLECTION)
    ("Spartan" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("polymerase and helicase" . SPARSER::COLLECTION)
    ("RPA" . SPARSER::PROTEIN) ("polymerases" . SPARSER::PROTEIN)
    ("TLS" . SPARSER::PROTEIN) ("FAAP20" . SPARSER::PROTEIN)
    ("RNF8" . SPARSER::PROTEIN)
    ("Heterochromatin protein 1" . SPARSER::PROTEIN)
    ("INO80" . SPARSER::PROTEIN) ("FANCD2" . SPARSER::PROTEIN)
    ("SLX4" . SPARSER::PROTEIN) ("FAN1" . SPARSER::PROTEIN)
    ("WRNIP1" . SPARSER::PROTEIN) ("SNM1A" . SPARSER::PROTEIN)
    ("CHD4" . SPARSER::PROTEIN) ("TRIM28" . SPARSER::PROTEIN)
    ("MTA2" . SPARSER::PROTEIN) ("Rad18" . SPARSER::PROTEIN)
    ("DDB2" . SPARSER::PROTEIN) ("group C" . SPARSER::PROTEIN)
    ("Rev1" . SPARSER::PROTEIN)
    ("Glutathione-S-transferase" . SPARSER::PROTEIN)
    ("MUS81" . SPARSER::PROTEIN) ("RPA2" . SPARSER::PROTEIN)
    ("γ H2AX" . SPARSER::PROTEIN)
    ("severe combined immunodeficiency" . SPARSER::PROTEIN)
    ("CUL-3" . SPARSER::PROTEIN) ("Broad Complex" . SPARSER::PROTEIN)
    ("CHD3" . SPARSER::PROTEIN) ("ATAD5" . SPARSER::PROTEIN)
    ("UAF1" . SPARSER::PROTEIN) ("USP1" . SPARSER::PROTEIN)
    ("C1orf124" . SPARSER::PROTEIN) ("DVC1" . SPARSER::PROTEIN)
    ("KAP-1" . SPARSER::PROTEIN) ("ZBTB1" . SPARSER::PROTEIN)
    ("RAD18" . SPARSER::PROTEIN) ("PI3K and p53" . SPARSER::COLLECTION)
    ("newly-synthesized p110" . SPARSER::PROTEIN)
    ("p85α and/or p85β" . SPARSER::COLLECTION)
    ("KO and p85α/β" . SPARSER::COLLECTION) ("p53-p300" . SPARSER::COLLECTION)
    ("p85α and p53" . SPARSER::COLLECTION) ("Fluor" . SPARSER::MOLECULE)
    ("basal insulin" . SPARSER::PROTEIN) ("Bromodomain" . SPARSER::PROTEIN)
    ("monomeric p85α" . SPARSER::PROTEIN)
    ("any exogenous proteins" . SPARSER::PROTEIN)
    ("BRD7-p85" . SPARSER::COLLECTION)
    ("the BRD7/p85α complex and BRD7/ARID2 complex" . SPARSER::COLLECTION)
    ("BRD7/ARID2" . SPARSER::COLLECTION) ("BRD7/p85α" . SPARSER::COLLECTION)
    ("p110α or p110β" . SPARSER::COLLECTION) ("Fraction" . SPARSER::COMPONENT)
    ("BRD7 or p110α/β" . SPARSER::COLLECTION)
    ("p85α/p110α" . SPARSER::COLLECTION)
    ("p85α and p110α" . SPARSER::COLLECTION)
    ("anti-p85α and anti-p110α" . SPARSER::COLLECTION)
    ("BRD7, p85α and p110α" . SPARSER::COLLECTION)
    ("BRD7 or p85 or p110" . SPARSER::COLLECTION)
    ("p85 or p110" . SPARSER::COLLECTION)
    ("a heterodimeric complex" . SPARSER::BIO-COMPLEX)
    ("subunits or PTEN" . SPARSER::COLLECTION)
    ("Further separating nuclear" . SPARSER::PROTEIN)
    ("p85α" . SPARSER::PROTEIN) ("BRD7-p85α" . SPARSER::COLLECTION)
    ("GST-tagged BRD7 and GFP-fused p85α" . SPARSER::COLLECTION)
    ("BRD7 or p85α" . SPARSER::COLLECTION) ("GFP-fused" . SPARSER::COLLECTION)
    ("BRD7 and p85α" . SPARSER::COLLECTION) ("coiled-coil" . SPARSER::PROTEIN)
    ("p110α and p110β" . SPARSER::COLLECTION) ("polybromo" . SPARSER::PROTEIN)
    ("bromodomain" . SPARSER::PROTEIN) ("coil" . SPARSER::PROTEIN)
    ("p85 and p110" . SPARSER::COLLECTION)
    ("p110α, p110β and p110δ" . SPARSER::COLLECTION) ("Class" . CLASS)
    ("homology and substrate" . SPARSER::COLLECTION)
    ("phosphatidylinositol and phosphoinositides" . SPARSER::COLLECTION)
    ("BRD7 and p110" . SPARSER::COLLECTION) ("p85/p110" . SPARSER::COLLECTION)
    ("XBP-1" . SPARSER::PROTEIN) ("interleukin 1" . SPARSER::PROTEIN)
    ("p53 regulator" . SPARSER::PROTEIN) ("ARID2" . SPARSER::PROTEIN)
    ("BRG1-associated factor" . SPARSER::PROTEIN) ("p55γ" . SPARSER::PROTEIN)
    ("PI-3" . SPARSER::PROTEIN) ("PI-4" . SPARSER::PROTEIN)
    ("phosphatidylinositol-4,5-bisphosphate" . SPARSER::PIP2)
    ("PI3Ks" . SPARSER::PROTEIN) ("iSH2" . SPARSER::PROTEIN)
    ("BRD7" . SPARSER::PROTEIN)
    ("bromodomain-containing protein" . SPARSER::PROTEIN)
    ("CNK2 and a regulator" . SPARSER::COLLECTION)
    ("Rac1, and CFP" . SPARSER::COLLECTION)
    ("RaichuEV-Rac1" . SPARSER::COLLECTION) ("CFP" . SPARSER::PROTEIN)
    ("GDP/GTP" . SPARSER::PROTEIN-PAIR) ("GFP-Vilse" . SPARSER::COLLECTION)
    ("PSD" . SPARSER::PROTEIN)
    ("GFP and the synaptic marker PSD95" . SPARSER::COLLECTION)
    ("the synaptic marker PSD95" . SPARSER::PROTEIN)
    ("the excitatory synaptic marker PSD95" . SPARSER::PROTEIN)
    ("DIV" . SPARSER::PROTEIN) ("thin" . SPARSER::PROTEIN)
    ("GFP-VBR-CNK2" . SPARSER::COLLECTION)
    ("GST-VBR-CNK2" . SPARSER::COLLECTION)
    ("GST- and GFP-fusion" . SPARSER::COLLECTION)
    ("VBR-CNK2" . SPARSER::COLLECTION) ("GST-" . SPARSER::PROTEIN)
    ("PSD95, β-Pix, GIT1, and Cytohesin-2" . SPARSER::COLLECTION)
    ("CNK2-interactors" . SPARSER::COLLECTION)
    ("GFP-P1m-CNK2" . SPARSER::COLLECTION) ("P1m" . SPARSER::PROTEIN)
    ("P1m-CNK2" . SPARSER::COLLECTION) ("Vilse and CNK2" . SPARSER::COLLECTION)
    ("CNK2/Vilse" . SPARSER::COLLECTION) ("Proline" . SPARSER::AMINO-ACID)
    ("Vilse, PSD95, Cytohesin-2, β-Pix, GIT1, and Scribble"
     . SPARSER::COLLECTION)
    ("Scribble" . SPARSER::PROTEIN) ("Pix" . SPARSER::PROTEIN)
    ("GTPase activating protein (GAP)" . SPARSER::PROTEIN)
    ("previously known CNK2-interacting proteins" . SPARSER::PROTEIN)
    ("PSD95/DLG5" . SPARSER::COLLECTION)
    ("LAP" . SPARSER::HUMAN-PROTEIN-FAMILY) ("DLG" . SPARSER::PROTEIN)
    ("exogenous GFP-tagged CNK2" . SPARSER::PROTEIN)
    ("trap" . SPARSER::PROTEIN) ("NGF" . SPARSER::PROTEIN)
    ("Components" . SPARSER::COMPONENT) ("Scaffold" . SPARSER::SCAFFOLD)
    ("CNK2 and Vilse" . SPARSER::COLLECTION)
    ("Rac/Cdc42" . SPARSER::COLLECTION)
    ("Vilse/ARHGAP39" . SPARSER::COLLECTION) ("Vilse" . SPARSER::PROTEIN)
    ("mental retardation (MRX)" . SPARSER::PROTEIN)
    ("a neuronally-expressed scaffold" . SPARSER::SCAFFOLD)
    ("MRX" . SPARSER::PROTEIN) ("KSR" . SPARSER::PROTEIN)
    ("scaffold protein" . SPARSER::PROTEIN) ("Robo1" . SPARSER::PROTEIN)
    ("axon guidance receptor" . SPARSER::PROTEIN) ("CNK1" . SPARSER::PROTEIN)
    ("β-Pix" . SPARSER::PROTEIN)
    ("guanine nucleotide exchange factors" . SPARSER::GEF)
    ("PSD95" . SPARSER::PROTEIN) ("Rho Family" . SPARSER::PROTEIN)
    ("PAK3" . SPARSER::PROTEIN) ("GIT1" . SPARSER::PROTEIN)
    ("β-PIX" . SPARSER::PROTEIN) ("ARHGAP39" . SPARSER::PROTEIN)
    ("CNK2" . SPARSER::PROTEIN) ("PTEN/mTOR" . SPARSER::COLLECTION)
    ("PTEN, DUSP6, DUSP7, Daxx, and Gli2" . SPARSER::COLLECTION)
    ("Daxx (14/14) and Gli2 (14/14)" . SPARSER::COLLECTION)
    ("DUSP7 (10/10), Daxx (14/14) and Gli2 (14/14)" . SPARSER::COLLECTION)
    ("PTEN, DUSP7 and Daxx" . SPARSER::COLLECTION)
    ("Daxx and Gli2" . SPARSER::COLLECTION)
    ("ASK1 and other apical kinases" . SPARSER::COLLECTION)
    ("other apical kinases" . SPARSER::KINASE)
    ("Daxx ( xref ) and Gli2 ( xref )" . SPARSER::COLLECTION)
    ("Gli2" . SPARSER::PROTEIN) ("PTEN and DUSP7" . SPARSER::COLLECTION)
    ("PTEN, DUSP6 and DUSP7" . SPARSER::COLLECTION) ("SBC" . SPARSER::PROTEIN)
    ("DUSP7-SBC" . SPARSER::PROTEIN-PAIR)
    ("DUSP6 and DUSP7" . SPARSER::COLLECTION)
    ("DUSPs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Phosphatase (DUSP)" . SPARSER::PROTEIN) ("‘hub’" . SPARSER::PROTEIN)
    ("exogenous SPOP-cyto" . SPARSER::COLLECTION)
    ("p-Histone" . SPARSER::COLLECTION) ("phospho-histone" . SPARSER::PROTEIN)
    ("p-Bax" . SPARSER::COLLECTION) ("cyto" . SPARSER::PROTEIN)
    ("SPOP-cyto and wild type SPOP" . SPARSER::COLLECTION)
    ("SPOP-cyto" . SPARSER::COLLECTION)
    ("Cullin3 or SPOP" . SPARSER::COLLECTION)
    ("GFP-SPOP" . SPARSER::COLLECTION) ("arsenite" . SPARSER::DRUG)
    ("residual SPOP" . SPARSER::PROTEIN)
    ("a monoclonal anti-SPOP antibody" . SPARSER::ANTIBODY)
    ("HIF-1α or HIF-2α" . SPARSER::COLLECTION)
    ("HIF-1α and HIF-2α" . SPARSER::COLLECTION)
    ("ACAG-3" . SPARSER::COLLECTION) ("-RCGTG-3" . SPARSER::COLLECTION)
    ("the death domain–associated protein" . SPARSER::PROTEIN)
    ("the Gli transcription factor ortholog Cubitus interruptus (Ci) and the JNK phosphatase"
     . SPARSER::COLLECTION)
    ("MEI-1/katanin" . SPARSER::COLLECTION) ("katanin" . SPARSER::PROTEIN)
    ("meiotic" . SPARSER::DRUG) ("protein, and MEL-26" . SPARSER::COLLECTION)
    ("HIF, and VHL" . SPARSER::COLLECTION)
    ("the angiogenic gene VEGF" . SPARSER::PROTEIN)
    ("VEGF and PDGF" . SPARSER::COLLECTION)
    ("Interleukin-2 and interferon alpha" . SPARSER::COLLECTION)
    ("the pro-apoptotic molecule Daxx and the Hedgehog pathway transcription factor Gli2"
     . SPARSER::COLLECTION)
    ("the tumor suppressor PTEN, ERK phosphatases, the pro-apoptotic molecule Daxx and the Hedgehog pathway transcription factor Gli2"
     . SPARSER::COLLECTION)
    ("the Hedgehog pathway transcription factor Gli2" . SPARSER::PROTEIN)
    ("the pro-apoptotic molecule Daxx" . SPARSER::PROTEIN)
    ("Gli" . SPARSER::PROTEIN) ("Daxx" . SPARSER::PROTEIN)
    ("SPOP" . SPARSER::PROTEIN) ("HIFs" . SPARSER::PROTEIN)
    ("DUSP7" . SPARSER::PROTEIN)
    ("Proliferating Cell Nuclear Antigen" . SPARSER::PROTEIN)
    ("HIF-2α" . SPARSER::PROTEIN) ("BMI-1" . SPARSER::PROTEIN)
    ("Tumor Necrosis Factor" . SPARSER::PROTEIN)
    ("Cubitus interruptus" . SPARSER::PROTEIN) ("MEI-1" . SPARSER::PROTEIN)
    ("Cul3" . SPARSER::PROTEIN) ("Cullin3" . SPARSER::PROTEIN)
    ("MEL-26" . SPARSER::PROTEIN)
    ("mammalian Target of Rapamycin" . SPARSER::PROTEIN)
    ("interferon alpha" . SPARSER::PROTEIN)
    ("Interleukin-2" . SPARSER::PROTEIN) ("IG" . SPARSER::MOLECULE)
    ("Lapatinib" . SPARSER::DRUG)
    ("a minimally-invasive (as well as cell-based) biomarker"
     . SPARSER::MOLECULE)
    ("IGF1R and/or HER family receptors" . SPARSER::COLLECTION)
    ("IGF1R and these HER-family receptors" . SPARSER::COLLECTION)
    ("IGF1R and other tyrosine kinases" . SPARSER::COLLECTION)
    ("minimally-invasive predictive biomarker" . SPARSER::MOLECULE)
    ("lapatinib- and neratinib-" . SPARSER::COLLECTION)
    ("neratinib-" . SPARSER::DRUG) ("lapatinib-" . SPARSER::DRUG)
    ("extracellular predictive biomarkers" . SPARSER::MOLECULE)
    ("BCL2 and BCL2L2" . SPARSER::COLLECTION)
    ("CdCl 2 , etoposide, mitoxantrone, and oxaliplatin" . SPARSER::COLLECTION)
    ("-CER" . SPARSER::COLLECTION) ("oxaliplatin" . SPARSER::DRUG)
    ("CER" . SPARSER::PROTEIN)
    ("pIGF1R, pHER2 and pEGFR" . SPARSER::COLLECTION)
    ("HER2 and EGFR" . SPARSER::COLLECTION)
    ("xref A (ii) p" . SPARSER::PROTEIN) ("xref A (i) p" . SPARSER::PROTEIN)
    ("FC" . SPARSER::PROTEIN) ("NR" . SPARSER::PROTEIN)
    ("neratinib (HK1-272) and afatinib (BIBW 2992)" . SPARSER::COLLECTION)
    ("dually targets human epidermal growth factor receptor 2 (HER2) and epidermal growth factor receptor (EGFR/HER1)"
     . SPARSER::COLLECTION)
    ("dually targets human epidermal growth factor receptor"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("inhibitor (TKI)" . SPARSER::INHIBITOR)
    ("EGFR/HER1" . SPARSER::COLLECTION) ("Tykerb" . SPARSER::DRUG)
    ("Herceptin" . SPARSER::DRUG)
    ("proteins and their phosphorylated forms" . SPARSER::COLLECTION)
    ("lapatinib, neratinib and afatinib" . SPARSER::COLLECTION)
    ("afatinib" . SPARSER::DRUG)
    ("lapatinib and neratinib" . SPARSER::COLLECTION)
    ("neratinib" . SPARSER::DRUG)
    ("diagnostic, prognostic and predictive biomarkers" . SPARSER::MOLECULE)
    ("Insulin-like growth factor" . SPARSER::PROTEIN)
    ("ANGPTL1" . SPARSER::PROTEIN) ("BCL2L2" . SPARSER::PROTEIN)
    ("CdCl 2" . SPARSER::MOLECULE)
    ("Growth Factor Receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HER4" . SPARSER::PROTEIN) ("BIBW 2992" . SPARSER::DRUG)
    ("HER1" . SPARSER::PROTEIN) ("RZ" . SPARSER::PROTEIN)
    ("DCT" . SPARSER::PROTEIN) ("RH" . SPARSER::MOLECULE)
    ("ABH" . SPARSER::PROTEIN) ("pFAK" . SPARSER::PROTEIN)
    ("mTOR and FAK" . SPARSER::COLLECTION) ("FAK-pFAK" . SPARSER::PROTEIN-PAIR)
    ("Rapamycin, Everolimus, and Temsirolimus" . SPARSER::COLLECTION)
    ("FAK and paxilin" . SPARSER::COLLECTION) ("tyr" . SPARSER::PROTEIN)
    ("ribosomal proteins" . SPARSER::PROTEIN)
    ("The previously described prognostic impact" . SPARSER::PROTEIN)
    ("CCNE1 [ xref ] and TRAP1 [ xref ]" . SPARSER::COLLECTION)
    ("the most relevant clinicopathologic factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("prognostic biomarkers" . SPARSER::MOLECULE)
    ("the histological subtypes" . SPARSER::PROTEIN)
    ("FAK and pFAK-Y397" . SPARSER::COLLECTION)
    ("well-described stage II-IV serous EOC patient cohort"
     . SPARSER::MOLECULE)
    ("prognostic impact" . SPARSER::PROTEIN) ("FDR " . SPARSER::PROTEIN)
    ("Ribosome" . SPARSER::BIO-COMPLEX)
    ("an important clinical prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Fan and Shi" . SPARSER::COLLECTION) ("Shi" . SPARSER::PROTEIN)
    ("Fan" . SPARSER::PROTEIN)
    ("the FAK and the pFAK-Y397 antibodies immunofluorescence co-staining"
     . SPARSER::COLLECTION)
    ("PND" . SPARSER::PROTEIN) ("v-src" . SPARSER::COLLECTION)
    ("src" . SPARSER::PROTEIN) ("anoikis" . SPARSER::PROTEIN)
    ("the strongest independent prognostic factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mTOR-S6K1" . SPARSER::COLLECTION)
    ("phosphorylated FAK (pFAK-Y397) and FAK" . SPARSER::COLLECTION)
    ("FAK and pFAK" . SPARSER::COLLECTION) ("TRAP1" . SPARSER::PROTEIN)
    ("CCNE1" . SPARSER::PROTEIN) ("DLC1" . SPARSER::PROTEIN)
    ("HR 3" . SPARSER::PROTEIN) ("PS" . SPARSER::PROTEIN)
    ("NN" . SPARSER::PROTEIN) ("diphenyl" . SPARSER::DRUG)
    ("phospho-STAT3 and Bcl-2" . SPARSER::COLLECTION)
    ("the garcinol’s" . SPARSER::MOLECULE)
    ("Bcl-2, Bcl-xL, survivin and Mcl-1" . SPARSER::COLLECTION)
    ("pro-caspase-3" . SPARSER::COLLECTION)
    ("antiapoptotic genes ( Bcl-2, Bcl-xL, survivin, and Mcl-1 ) and angiogenic gene ( VEGF )"
     . SPARSER::COLLECTION)
    ("angiogenic gene ( VEGF )" . SPARSER::GENE)
    ("Bcl-2, Bcl-xL, survivin, and Mcl-1" . SPARSER::COLLECTION)
    ("histones and non-histone" . SPARSER::COLLECTION)
    ("gp130/JAK" . SPARSER::COLLECTION) ("benzofuran" . SPARSER::DRUG)
    ("cyclin D1, Bcl-2, Bcl-xL, survivin, Mcl-1, and VEGF"
     . SPARSER::COLLECTION)
    ("Bcl-2 (marker of survival) and caspase-3 (marker of apoptosis)"
     . SPARSER::COLLECTION)
    ("doxorubicin or paclitaxel" . SPARSER::COLLECTION)
    ("a mitotic inhibitor" . SPARSER::INHIBITOR)
    ("antibiotic, and paclitaxel" . SPARSER::COLLECTION)
    ("pro-caspase 3" . SPARSER::COLLECTION)
    ("pro-caspase" . SPARSER::COLLECTION)
    ("Mcl-1 and the angiogenic gene product VEGF" . SPARSER::COLLECTION)
    ("the cell cycle regulator cyclin D1 , the antiapoptotic proteins Bcl-2, Bcl-xL, survivin, Mcl-1 and the angiogenic gene product VEGF"
     . SPARSER::COLLECTION)
    ("the angiogenic gene product VEGF" . SPARSER::PROTEIN)
    ("Dominant-negative STAT3" . SPARSER::PROTEIN)
    ("pSTAT3-Luc" . SPARSER::PROTEIN-PAIR) ("PRF" . SPARSER::PROTEIN)
    ("cyclin D1, Bcl-2, Bcl-xL, Mcl-1, survivin, and VEGF"
     . SPARSER::COLLECTION)
    ("butyrate" . SPARSER::PROTEIN)
    ("STAT3 and garcinol" . SPARSER::COLLECTION)
    ("FLAG-STAT3" . SPARSER::COLLECTION) ("BG1" . SPARSER::PROTEIN)
    ("an attractive molecule" . SPARSER::MOLECULE)
    ("STAT3/JAK2" . SPARSER::COLLECTION)
    ("inducible nitric oxide synthase (iNOS) and cyclooxygenase-2"
     . SPARSER::COLLECTION)
    ("pro-inflammatory cytokines, inducible nitric oxide synthase (iNOS) and cyclooxygenase-2"
     . SPARSER::COLLECTION)
    ("nicotinic receptors, cyclin D3, and histone acetyltransferases"
     . SPARSER::PROTEIN)
    ("receptors, cyclin D3, and histone" . SPARSER::COLLECTION)
    ("potent anti-oxidant, anti-inflammatory and bactericidal activities [ xref - xref ]"
     . SPARSER::COLLECTION)
    ("p300 and PCAF" . SPARSER::COLLECTION)
    ("cytokines (like IL-6) or growth factors (such as EGF, PDGF)"
     . SPARSER::COLLECTION)
    ("HCC [ xref - xref ] and this constitutively active STAT3"
     . SPARSER::COLLECTION)
    ("Garcinol" . SPARSER::MOLECULE)
    ("garcinol and the inhibition of STAT3 activation, dimerization and acetylation"
     . SPARSER::COLLECTION)
    ("benzophenone" . SPARSER::DRUG) ("garcinol" . SPARSER::MOLECULE)
    ("Signal transducer and activator of transcription 3" . SPARSER::PROTEIN)
    ("id 1" . SPARSER::PROTEIN) ("gp130" . SPARSER::PROTEIN)
    ("c-fos" . SPARSER::PROTEIN) ("anti-neoplastic" . SPARSER::DRUG)
    ("cyclin D3" . SPARSER::PROTEIN)
    ("acetyltransferase activity" . SPARSER::PROTEIN)
    ("silenced antifibrotic genes" . SPARSER::GENE)
    ("COX-2 and probably other antifibrotic genes" . SPARSER::COLLECTION)
    ("probably other antifibrotic genes" . SPARSER::GENE)
    ("COX-2 and potentially other antifibrotic genes" . SPARSER::COLLECTION)
    ("potentially other antifibrotic genes" . SPARSER::GENE)
    ("COX-2 and other antifibrotic genes" . SPARSER::COLLECTION)
    ("other antifibrotic genes" . SPARSER::GENE)
    ("the profibrotic cytokine transforming growth factor-β1"
     . SPARSER::PROTEIN)
    ("antifibrotic gene" . SPARSER::GENE)
    ("histone and DNA" . SPARSER::COLLECTION)
    ("COX-2, Thy-1, and IP-10" . SPARSER::COLLECTION)
    ("HMTs and HDACs" . SPARSER::COLLECTION)
    ("the preferential target" . SPARSER::TARGET-PROTEIN)
    ("the antifibrotic gene Thy-1" . SPARSER::PROTEIN)
    ("-azacytidine" . SPARSER::DRUG)
    ("the antifibrotic mediator PGE 2" . SPARSER::DRUG)
    ("HP1, Dnmt1, and HDAC1" . SPARSER::COLLECTION)
    ("both EZH2 and the H3K9 HMT SETDB1" . SPARSER::COLLECTION)
    ("the G9a-specific inhibitor BIX-01294 and the EZH2 inhibitor DZNep"
     . SPARSER::COLLECTION)
    ("EED, Dnmt1, and Dnmt3a, and EED" . SPARSER::COLLECTION)
    ("Dnmt3a, and EED" . SPARSER::COLLECTION)
    ("CoREST and mSin3a" . SPARSER::COLLECTION)
    ("another repressed antifibrotic gene" . SPARSER::GENE)
    ("G9a and H3K9" . SPARSER::COLLECTION)
    ("the H3K9-specific HMT G9a and the H3K27-specific HMT EZH2"
     . SPARSER::COLLECTION)
    ("antifibrotic genes" . SPARSER::GENE)
    ("siRNAs or IL-1β" . SPARSER::COLLECTION)
    ("siRNA and IL-1β" . SPARSER::COLLECTION)
    ("their respective mRNAs" . SPARSER::PROTEIN)
    ("G9a, EZH2, or Dnmt1" . SPARSER::COLLECTION)
    ("IL-1β and BIX-01294" . SPARSER::COLLECTION)
    ("BIX-01294 and DZNep" . SPARSER::COLLECTION)
    ("protein (CBP)" . SPARSER::PROTEIN)
    ("siRNA and EZH2" . SPARSER::COLLECTION)
    ("p300, and p300/CBP-associated factor" . SPARSER::COLLECTION)
    ("respective HMTs" . SPARSER::PROTEIN)
    ("HMTs and Dnmt1" . SPARSER::COLLECTION)
    ("the G9a inhibitor BIX-01294, the EZH2 inhibitor DZNep, and the Dnmt1 inhibitor RG108"
     . SPARSER::COLLECTION)
    ("HMT and Dnmt" . SPARSER::COLLECTION)
    ("G9a, EZH2, Dnmt1, Dnmt3a, NCoR, CoREST, and mSin3a"
     . SPARSER::COLLECTION)
    ("Dnmt1 and Dnmt3a" . SPARSER::COLLECTION)
    ("EZH2/EED" . SPARSER::COLLECTION)
    ("EED, Dnmt1, and Dnmt3a" . SPARSER::COLLECTION)
    ("both primary and secondary IPs" . SPARSER::PROTEIN)
    ("G9a, Dnmt1, Dnmt3a, NCoR, CoREST, and mSin3a" . SPARSER::COLLECTION)
    ("the respective epigenetic enzymes" . SPARSER::ENZYME)
    ("NCoR, CoREST, and mSin3a" . SPARSER::COLLECTION)
    ("HP1 and PRC1" . SPARSER::COLLECTION)
    ("H3K9 and H3K27" . SPARSER::COLLECTION)
    ("repressive chromatin" . SPARSER::PROTEIN)
    ("the antifibrotic COX-2 gene" . SPARSER::PROTEIN)
    ("COX-2 and COX-2-derived PGE 2" . SPARSER::COLLECTION)
    ("a major prostanoid" . SPARSER::MOLECULE)
    ("HDACs and HMTs" . SPARSER::COLLECTION)
    ("the primary Dnmt" . SPARSER::PROTEIN) ("Dnmt3a/b" . SPARSER::COLLECTION)
    ("Dnmt" . SPARSER::PROTEIN)
    ("a stable repressive state" . SPARSER::BIO-STATE)
    ("PRC" . SPARSER::PROTEIN) ("HMT" . SPARSER::PROTEIN)
    ("zeste 12 protein, embryonic ectoderm development (EED) protein, and EED-associated HDAC1 and HDAC2 ( xref )"
     . SPARSER::COLLECTION)
    ("EED-associated HDAC1 and HDAC2" . SPARSER::COLLECTION)
    ("EED" . SPARSER::PROTEIN)
    ("DNA methyltransferases (Dnmts) and HDAC-containing complexes"
     . SPARSER::COLLECTION)
    ("mSin3a" . SPARSER::PROTEIN) ("CoREST" . SPARSER::PROTEIN)
    ("G9a and SUV39H" . SPARSER::COLLECTION) ("HMTs" . SPARSER::PROTEIN)
    ("HATs" . SPARSER::PROTEIN) ("lysines" . SPARSER::AMINO-ACID)
    ("Histones" . SPARSER::PROTEIN)
    ("G9a and EZH2 inhibitors and small interfering RNAs"
     . SPARSER::COLLECTION)
    ("G9a and EZH2" . SPARSER::COLLECTION)
    ("HP1, EZH2, and MeCP2" . SPARSER::COLLECTION)
    ("their respective modifying enzymes G9a, EZH2, and DNA methyltransferases (Dnmts) and respective binding proteins heterochromatin protein 1 (HP1)"
     . SPARSER::COLLECTION)
    ("respective binding proteins heterochromatin protein 1"
     . SPARSER::PROTEIN)
    ("their respective modifying enzymes G9a, EZH2, and DNA methyltransferases"
     . SPARSER::PROTEIN)
    ("G9a, EZH2, and DNA" . SPARSER::COLLECTION)
    ("G9a- and enhancer of zeste homolog 2" . SPARSER::COLLECTION)
    ("G9a-" . SPARSER::PROTEIN)
    ("the antifibrotic mediator prostaglandin E 2" . SPARSER::MOLECULE)
    ("Thy-1" . SPARSER::PROTEIN) ("Ep-CAM" . SPARSER::PROTEIN)
    ("IP-10" . SPARSER::PROTEIN)
    ("p300/CBP-associated factor" . SPARSER::PROTEIN)
    ("BIX-01294" . SPARSER::DRUG) ("HP1α" . SPARSER::PROTEIN)
    ("SUV39H1" . SPARSER::PROTEIN) ("Prostaglandin E 2" . SPARSER::MOLECULE)
    ("Dnmt3a" . SPARSER::PROTEIN)
    ("embryonic ectoderm development" . SPARSER::PROTEIN)
    ("zeste 12" . SPARSER::PROTEIN) ("SIN3 homolog A" . SPARSER::PROTEIN)
    ("RE1-silencing transcription factor" . SPARSER::PROTEIN)
    ("nuclear receptor corepressor" . SPARSER::PROTEIN)
    ("SUV39H" . SPARSER::PROTEIN) ("Dnmt1" . SPARSER::PROTEIN)
    ("MeCP2" . SPARSER::PROTEIN) ("CpG binding protein" . SPARSER::PROTEIN)
    ("HP1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("heterochromatin protein 1" . SPARSER::PROTEIN)
    ("enhancer of zeste homolog 2" . SPARSER::PROTEIN)
    ("G9a" . SPARSER::PROTEIN) ("cyclooxygenase-2" . SPARSER::PROTEIN)
    ("a crucial transcription factor" . SPARSER::PROTEIN)
    ("CD44, CD24, CD133, and CXCR4" . SPARSER::COLLECTION)
    ("Myeloid" . SPARSER::PROTEIN) ("CD14 and pSTAT3" . SPARSER::COLLECTION)
    ("STATTIC" . SPARSER::DRUG)
    ("Snail, Slug, Twist, Zeb-1, Nanog, and Oct-4" . SPARSER::COLLECTION)
    ("Bright and CD24" . SPARSER::COLLECTION)
    ("Oct-4 and Nanog" . SPARSER::COLLECTION)
    ("Snail, Slug, Twist and Zeb-1" . SPARSER::COLLECTION)
    ("IFN-γ, TNF-α and IL-12" . SPARSER::COLLECTION)
    ("arginase" . SPARSER::PROTEIN) ("spontaneous PC" . SPARSER::PROTEIN)
    ("p48-Cre" . SPARSER::COLLECTION) ("P48-Cre " . SPARSER::COLLECTION)
    ("LSL-KRAS" . SPARSER::COLLECTION) ("Cre " . SPARSER::PROTEIN)
    ("G-CSF/CSF-3" . SPARSER::COLLECTION) ("CSF" . SPARSER::PROTEIN)
    ("GCSFR" . SPARSER::PROTEIN)
    ("predominant CD14 + /CD8" . SPARSER::COLLECTION)
    ("CD29, CD44, and CD49f" . SPARSER::COLLECTION)
    ("/CD33" . SPARSER::COLLECTION) ("/CD11b" . SPARSER::COLLECTION)
    ("mature tumor-associated macrophages" . SPARSER::PROTEIN)
    ("/ESA" . SPARSER::COLLECTION) ("/HLA-DR" . SPARSER::COLLECTION)
    ("/Ly6C" . SPARSER::COLLECTION) ("/Ly6G" . SPARSER::COLLECTION)
    ("/Gr1" . SPARSER::COLLECTION) ("Bright" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 3" . SPARSER::PROTEIN)
    ("Zeb-1" . SPARSER::PROTEIN) ("Oct-4" . SPARSER::PROTEIN)
    ("GCSF receptor" . SPARSER::PROTEIN)
    ("3-methylcholanthrene" . SPARSER::MOLECULE) ("p48" . SPARSER::PROTEIN)
    ("P48" . SPARSER::PROTEIN) ("G-CSF receptor" . SPARSER::PROTEIN)
    ("G-CSF" . SPARSER::PROTEIN)
    ("Granulocyte colony-stimulating factor" . SPARSER::PROTEIN)
    ("CD29" . SPARSER::PROTEIN) ("Bis–Tris" . SPARSER::MOLECULE)
    ("keratin 7" . SPARSER::PROTEIN) ("NH 4 Cl" . SPARSER::MOLECULE)
    ("G-CSFR" . SPARSER::PROTEIN) ("CD8a" . SPARSER::PROTEIN)
    ("GK1" . SPARSER::PROTEIN) ("Gr-1" . SPARSER::PROTEIN)
    ("SK1" . SPARSER::PROTEIN) ("HI30" . SPARSER::PROTEIN)
    ("CD15" . SPARSER::DRUG) ("CD33" . SPARSER::PROTEIN)
    ("Ly6C" . SPARSER::PROTEIN) ("Ly6G" . SPARSER::PROTEIN)
    ("Gr1" . SPARSER::PROTEIN) ("Aldehyde dehydrogenase-1" . SPARSER::PROTEIN)
    ("frequent focal length CNAs" . SPARSER::PROTEIN)
    ("RNF43 , AXIN2 and SOX9" . SPARSER::COLLECTION)
    ("focal and whole arm CNAs" . SPARSER::PROTEIN)
    ("significantly more frequent whole chromosome arm CNAs"
     . SPARSER::PROTEIN)
    ("BRAF mut/MSS colorectal cancers predominantly harbour focal or targeted CNAs"
     . SPARSER::PROTEIN)
    ("type and length" . SPARSER::COLLECTION)
    ("frequent focal CNAs" . SPARSER::PROTEIN)
    ("substantially fewer MCRs" . SPARSER::PROTEIN)
    ("RNF43 and VEZF1" . SPARSER::COLLECTION) ("MCRs" . SPARSER::PROTEIN)
    ("GATA6 and CTAGE" . SPARSER::COLLECTION)
    ("focal amplification CNAs" . SPARSER::PROTEIN)
    ("all cohorts focal deletion CNAs" . SPARSER::PROTEIN)
    ("substantially fewer focal CNAs" . SPARSER::PROTEIN)
    ("23.2 focal CNAs" . SPARSER::PROTEIN) ("regional CNAs" . SPARSER::PROTEIN)
    ("BRAFmut/MSS" . SPARSER::COLLECTION) ("BRAFwt/MSS" . SPARSER::COLLECTION)
    ("Arm" . SPARSER::PROTEIN) ("S3A and S3B" . SPARSER::COLLECTION)
    ("the specific chromosomal arm" . SPARSER::PROTEIN)
    ("colorectal cancer, and greater amplification CNAs" . SPARSER::PROTEIN)
    ("focal CNAs" . SPARSER::PROTEIN) ("mut/MSI" . SPARSER::COLLECTION)
    ("mut/MSS" . SPARSER::COLLECTION) ("CNAs" . SPARSER::PROTEIN)
    ("MACROD2" . SPARSER::PROTEIN) ("RBFOX1" . SPARSER::PROTEIN)
    ("VEZF1" . SPARSER::PROTEIN) ("RNF43" . SPARSER::PROTEIN)
    ("GATA6" . SPARSER::PROTEIN) ("MSS 11" . SPARSER::PROTEIN)
    ("RUNX3" . SPARSER::PROTEIN) ("NEUROG1" . SPARSER::PROTEIN)
    ("CACNA1G" . SPARSER::PROTEIN) ("adipokine" . SPARSER::PROTEIN-FAMILY)
    ("adipogenic genes" . SPARSER::GENE)
    ("chondrogenic marker mRNA" . SPARSER::RNA)
    ("pro-MMPs" . SPARSER::COLLECTION) ("pro-matrix" . SPARSER::COLLECTION)
    ("Runx2, Osterix, and ALP mRNA as well as ALP activity"
     . SPARSER::COLLECTION)
    ("Runx2, Osterix, and ALP" . SPARSER::COLLECTION)
    ("osteogenic genes" . SPARSER::GENE)
    ("PA/plasminogen" . SPARSER::COLLECTION)
    ("pathological states" . SPARSER::BIO-STATE)
    ("PA/PAI-1" . SPARSER::COLLECTION)
    ("a pivotal component" . SPARSER::COMPONENT)
    ("serpin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("adipogenic marker genes" . SPARSER::GENE)
    ("peroxisome proliferator-activated receptor γ (PPAR-γ) mRNA"
     . SPARSER::RNA)
    ("osteoprotegerin (OPG) mRNA as well as the ratio" . SPARSER::COLLECTION)
    ("ligand (RANKL)" . SPARSER::MOLECULE) ("RANKL/OPG" . SPARSER::COLLECTION)
    ("OPG" . SPARSER::PROTEIN) ("osteoprotegerin" . SPARSER::PROTEIN)
    ("RANKL" . SPARSER::PROTEIN)
    ("Runx2, Osterix, ALP, type I collagen, and osteocalcin mRNA in PAI-1  +/+ mice, and PAI-1 deficiency"
     . SPARSER::COLLECTION)
    ("collagen, and osteocalcin" . SPARSER::COLLECTION)
    ("Runx2, ALP, and type I" . SPARSER::COLLECTION)
    ("osteogenic marker mRNA" . SPARSER::RNA) ("TRAP" . SPARSER::PROTEIN)
    ("Ob/BS" . SPARSER::COLLECTION) ("PAI-1-" . SPARSER::PROTEIN)
    ("type 1 and type 2" . SPARSER::COLLECTION)
    ("the principal inhibitor" . SPARSER::INHIBITOR)
    ("high-glucose" . SPARSER::PROTEIN)
    ("the diabetic state" . SPARSER::BIO-STATE)
    ("collagen and aggrecan" . SPARSER::COLLECTION)
    ("diabetic state" . SPARSER::BIO-STATE)
    ("ALP and type I" . SPARSER::COLLECTION)
    ("Osterix and osteocalcin" . SPARSER::COLLECTION)
    ("Osterix" . SPARSER::PROTEIN) ("type X" . SPARSER::PROTEIN)
    ("Runx2" . SPARSER::PROTEIN)
    ("granulocyte colony-stimulating factor" . SPARSER::PROTEIN)
    ("letrozole and metformin" . SPARSER::COLLECTION)
    ("Metformin" . SPARSER::DRUG) ("PI3K/PTEN/mTOR" . SPARSER::COLLECTION)
    ("PIK3CA and KRAS" . SPARSER::COLLECTION)
    ("a more biologically relevant biomarker" . SPARSER::MOLECULE)
    ("a more homogenous treatment group" . SPARSER::MOLECULE)
    ("–everolimus" . SPARSER::DRUG) ("ridaforolimus" . SPARSER::DRUG)
    ("no accurate predictive biomarkers" . SPARSER::MOLECULE)
    ("the relevant target" . SPARSER::TARGET-PROTEIN)
    ("6–16" . SPARSER::PROTEIN) ("CTNNB1/TCF" . SPARSER::COLLECTION)
    ("only 2 genes" . SPARSER::GENE) ("AXIN2 and WNT11" . SPARSER::COLLECTION)
    ("si/shRNAs" . SPARSER::COLLECTION) ("si" . SPARSER::PROTEIN)
    ("bona fide CTNNB1" . SPARSER::PROTEIN)
    ("functional CTNNB1" . SPARSER::PROTEIN)
    ("AXIN2, APCDD1, NKD1, NKD2 , and NOTUM" . SPARSER::COLLECTION)
    ("NES  " . SPARSER::PROTEIN) ("NOTUM and PPP1R2" . SPARSER::COLLECTION)
    ("Frizzled" . SPARSER::PROTEIN)
    ("glypicans" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Wnts" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("APCDD1 , NOTUM, PPP1R2 , and ZNRF3" . SPARSER::COLLECTION)
    ("WNT6 and WNT11" . SPARSER::COLLECTION)
    ("negative or positive feedback regulators" . SPARSER::REGULATOR)
    ("AXIN2, LEF1, NKD1 and NKD2" . SPARSER::COLLECTION)
    ("EDAR" . SPARSER::PROTEIN)
    ("FASLG, IL10, LMO2, MPZL2, NOTUM, PPP1R2, and TREM2"
     . SPARSER::COLLECTION)
    ("NOTUM" . SPARSER::PROTEIN) ("FASLG" . SPARSER::PROTEIN)
    ("AXIN2, CDX2, ID2, LEF1, LGR6, MSX1, NKD1, NKD2, SP5, TDGF1, and TNFRSF19"
     . SPARSER::COLLECTION)
    ("functionally relevant CTNNB1 target genes" . SPARSER::GENE)
    ("a classical target" . SPARSER::TARGET-PROTEIN)
    ("similarly sized random genomic fragments" . SPARSER::FRAGMENT)
    ("k-mer" . SPARSER::COLLECTION) ("the unique CTNNB1" . SPARSER::PROTEIN)
    ("MACS" . SPARSER::PROTEIN) ("antibody or isotype" . SPARSER::COLLECTION)
    ("MYC and LEF1" . SPARSER::COLLECTION)
    ("CTNNB1 or TCF" . SPARSER::COLLECTION)
    ("GSK-3, and Axin" . SPARSER::COLLECTION)
    ("APC or CTNNB1" . SPARSER::COLLECTION) ("-catenin" . SPARSER::COLLECTION)
    ("catenin" . SPARSER::HUMAN-PROTEIN-FAMILY) ("LP2" . SPARSER::PROTEIN)
    ("k 1" . SPARSER::PROTEIN) ("polynucleotide kinase" . SPARSER::PROTEIN)
    ("EphB2" . SPARSER::PROTEIN) ("protein phosphatase 1" . SPARSER::PROTEIN)
    ("ZNRF3" . SPARSER::PROTEIN) ("APCDD1" . SPARSER::PROTEIN)
    ("WNT11" . SPARSER::PROTEIN) ("WNT6" . SPARSER::PROTEIN)
    ("FGF19" . SPARSER::PROTEIN) ("FGF9" . SPARSER::PROTEIN)
    ("FGF3" . SPARSER::PROTEIN) ("GLI3" . SPARSER::PROTEIN)
    ("TNFRSF11B" . SPARSER::PROTEIN) ("TNFRSF1B" . SPARSER::PROTEIN)
    ("IL10RA" . SPARSER::PROTEIN) ("CXCL6" . SPARSER::PROTEIN)
    ("CXCL4" . SPARSER::PROTEIN) ("BMP7" . SPARSER::PROTEIN)
    ("TREM2" . SPARSER::PROTEIN) ("PPP1R2" . SPARSER::PROTEIN)
    ("MPZL2" . SPARSER::PROTEIN) ("LMO2" . SPARSER::PROTEIN)
    ("IL10" . SPARSER::PROTEIN) ("TNFRSF19" . SPARSER::PROTEIN)
    ("TDGF1" . SPARSER::PROTEIN) ("NKD2" . SPARSER::PROTEIN)
    ("NKD1" . SPARSER::PROTEIN) ("MSX1" . SPARSER::PROTEIN)
    ("LGR6" . SPARSER::PROTEIN) ("CDX2" . SPARSER::PROTEIN)
    ("transcriptional activator" . SPARSER::PROTEIN-FAMILY)
    ("a Beta" . SPARSER::PROTEIN) ("AXIN2" . SPARSER::PROTEIN)
    ("Axin2" . SPARSER::PROTEIN) ("LEF1" . SPARSER::PROTEIN)
    ("Lgr5" . SPARSER::PROTEIN) ("(beta" . SPARSER::PROTEIN)
    ("a highly diffusible intercellular signaling molecule"
     . SPARSER::MOLECULE)
    ("nitric" . SPARSER::PROTEIN) ("ERK1/2-CREB" . SPARSER::COLLECTION)
    ("GPRC6A, CREB, ERK1/2 and Akt" . SPARSER::COLLECTION)
    ("ERK and Akt" . SPARSER::COLLECTION)
    ("ERK1/2 and CREB" . SPARSER::COLLECTION)
    ("At least 3 MAPK families" . SPARSER::PROTEIN-FAMILY)
    ("kinase, and p38" . SPARSER::COLLECTION) ("WATER" . SPARSER::MOLECULE)
    ("Supplemental l -arginine" . SPARSER::MOLECULE)
    ("GPRC6A, ERK1/2, Akt and CREB" . SPARSER::COLLECTION)
    ("GPRC6A or CREB" . SPARSER::COLLECTION)
    ("c-AMP-PKA" . SPARSER::COLLECTION)
    ("ERK1/2, Akt, PKA, and CREB" . SPARSER::COLLECTION)
    ("both ERK1/2 and its downstream effector" . SPARSER::COLLECTION)
    ("ERK1/2, Akt and PKA" . SPARSER::COLLECTION)
    ("cAMP-PKA" . SPARSER::COLLECTION) ("trypan-blue dye" . SPARSER::MOLECULE)
    ("basic amino acids" . SPARSER::AMINO-ACID)
    ("l -arginine and l -ornithine" . SPARSER::COLLECTION)
    ("the prototypical MAPK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("growth factors and other proteins" . SPARSER::COLLECTION)
    ("nitric oxide (NO)" . SPARSER::MOLECULE)
    ("a nonessential amino acid" . SPARSER::AMINO-ACID)
    ("GPRC6A-ERK1/2" . SPARSER::COLLECTION)
    ("ERK1/2, Akt and CREB" . SPARSER::COLLECTION)
    ("PKA and its downstream target" . SPARSER::COLLECTION)
    ("ERK1/2, Akt, PKA and its downstream target" . SPARSER::COLLECTION)
    ("a conditionally essential amino acid" . SPARSER::AMINO-ACID)
    ("p21 ras" . SPARSER::PROTEIN) ("L-ornithine" . SPARSER::DRUG)
    ("L-arginine" . SPARSER::MOLECULE) ("c-AMP" . SPARSER::PROTEIN)
    ("U-0126" . SPARSER::MOLECULE) ("NH3" . SPARSER::MOLECULE)
    ("terminal deoxynucleotidyltransferase" . SPARSER::PROTEIN)
    ("Growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("L-Arginine" . SPARSER::MOLECULE)
    ("G protein-coupled receptor 3" . SPARSER::PROTEIN)
    ("l -ornithine" . SPARSER::DRUG) ("l -arginine" . SPARSER::MOLECULE)
    ("GPRC6A" . SPARSER::PROTEIN)
    ("cAMP response element binding protein" . SPARSER::PROTEIN)
    ("l -Arginine" . SPARSER::MOLECULE)
    ("TGF- β 1 and Ras" . SPARSER::COLLECTION)
    ("-P62-NF- κ B" . SPARSER::COLLECTION)
    ("p62, or thioredoxin reductase 1" . SPARSER::COLLECTION)
    ("-Par6-Rac1" . SPARSER::COLLECTION) ("Rac1-Mek-Erk" . SPARSER::COLLECTION)
    ("Par6-Rac1" . SPARSER::COLLECTION) ("PB1-PB1" . SPARSER::COLLECTION)
    ("EMT and aPKC" . SPARSER::COLLECTION) ("–Par6" . SPARSER::COLLECTION)
    ("-Par6-Rac1-Pak-Mek-Erk" . SPARSER::COLLECTION)
    ("Mek" . SPARSER::HUMAN-PROTEIN-FAMILY) ("-Par6" . SPARSER::COLLECTION)
    ("Snail and HNF4a" . SPARSER::COLLECTION)
    ("Ha-Ras and TGF- β 1" . SPARSER::COLLECTION)
    ("protein and anti-aPKC" . SPARSER::COLLECTION)
    ("western blotting and standardizing IOD" . SPARSER::MOLECULE)
    ("IOD" . SPARSER::MOLECULE) ("PB1" . SPARSER::PROTEIN)
    ("protein and aPKC" . SPARSER::COLLECTION)
    ("E-cadherin and β -catenin" . SPARSER::COLLECTION)
    ("epithelial markers E-cadherin (135 kDa) and β -catenin (92 kDa)"
     . SPARSER::COLLECTION)
    ("v-Ha-Ras" . SPARSER::COLLECTION) ("Marco" . SPARSER::PROTEIN)
    ("Prof" . SPARSER::PROTEIN)
    ("Snail, Twist, and Zinc finger" . SPARSER::COLLECTION)
    ("bio" . SPARSER::PROTEIN) ("aurothiomalate (ATM)" . SPARSER::MOLECULE)
    ("aurothiomalate" . SPARSER::MOLECULE) ("MMH-RT" . SPARSER::COLLECTION)
    ("MMH" . SPARSER::PROTEIN) ("β -actin" . SPARSER::PROTEIN)
    ("β -Actin" . SPARSER::PROTEIN)
    ("recombinant human epidermal growth factor" . SPARSER::DRUG)
    ("P62" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("thioredoxin reductase 1" . SPARSER::PROTEIN)
    ("MMP 10" . SPARSER::PROTEIN) ("TGF- β" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HNF4a" . SPARSER::PROTEIN) ("TGF β" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("anti-Par" . SPARSER::DRUG) ("PAR6" . SPARSER::PROTEIN)
    ("Ha-Ras" . SPARSER::PROTEIN) ("β -catenin" . SPARSER::PROTEIN)
    ("Par6" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Par3" . SPARSER::PROTEIN)
    ("Atypical protein kinase" . SPARSER::PROTEIN) ("ZEB1" . SPARSER::PROTEIN)
    ("TGF- β 1" . SPARSER::PROTEIN)
    ("transforming growth factor- β 1" . SPARSER::PROTEIN)
    ("atypical protein kinase" . SPARSER::PROTEIN)
    ("pro-apoptotic BCL2L11" . SPARSER::PROTEIN)
    ("nonsense-mediated transcriptional gene" . SPARSER::GENE)
    ("DUSP5 and DUSP6" . SPARSER::COLLECTION)
    ("MAPK1/ERK2" . SPARSER::COLLECTION)
    ("mitogen-activated protein kinase 1/extracellular signal-regulated kinase 2"
     . SPARSER::COLLECTION)
    ("superantigen" . SPARSER::MOLECULE) ("MS and HL" . SPARSER::COLLECTION)
    ("viral antigens" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TTV" . SPARSER::PROTEIN) ("DUSP5 or BCL2L11" . SPARSER::COLLECTION)
    ("the pro-apoptotic factor BCL2L11" . SPARSER::PROTEIN)
    ("DUSP5 and DUSP5P1" . SPARSER::COLLECTION) ("MER" . SPARSER::PROTEIN)
    ("more viral genes" . SPARSER::GENE)
    ("Reverse transcriptase-polymerase" . SPARSER::COLLECTION)
    ("polycomb repressive complex 2" . SPARSER::PROTEIN)
    ("EBNA3C" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NT2" . SPARSER::PROTEIN) ("CSF1R" . SPARSER::PROTEIN)
    ("kappa light polypeptide gene" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinase 1" . SPARSER::PROTEIN)
    ("a polypeptide" . SPARSER::PROTEIN) ("pseudogene 1" . SPARSER::PROTEIN)
    ("g-3" . SPARSER::PROTEIN) ("actin beta" . SPARSER::PROTEIN)
    ("CL-2" . SPARSER::PROTEIN) ("DNA polymerase I" . SPARSER::PROTEIN)
    ("RNase H" . SPARSER::PROTEIN) ("DUSP5" . SPARSER::PROTEIN)
    ("TPL" . SPARSER::PROTEIN) ("SKC" . SPARSER::PROTEIN)
    ("CPH" . SPARSER::PROTEIN) ("one parental allele" . SPARSER::ALLELE)
    ("family, and FUS1" . SPARSER::COLLECTION) ("FHIT" . SPARSER::PROTEIN)
    ("nucleosomal core histones" . SPARSER::PROTEIN)
    ("candidate oncogenes or tumor suppressors" . SPARSER::COLLECTION)
    ("a possible biomarker" . SPARSER::MOLECULE)
    ("TGFB2 and LYPLAL1" . SPARSER::COLLECTION) ("–log" . SPARSER::COLLECTION)
    ("EGFR (encoding epidermal growth factor receptor) and HDAC9"
     . SPARSER::COLLECTION)
    ("loss of heterozygosity (LOH)" . SPARSER::PROTEIN)
    ("MYC and ERBB2" . SPARSER::COLLECTION)
    ("RB1 , CDKN2A , and PTEN" . SPARSER::COLLECTION)
    ("polymorphism (SNP)" . SPARSER::PROTEIN)
    ("fragile histidine triad" . SPARSER::PROTEIN) ("FUS1" . SPARSER::PROTEIN)
    ("GTF2F2" . SPARSER::PROTEIN) ("BBS9" . SPARSER::PROTEIN)
    ("p14" . SPARSER::PROTEIN)
    ("transforming growth factor beta" . SPARSER::PROTEIN)
    ("topoisomerase II" . SPARSER::PROTEIN) ("BIRC2" . SPARSER::PROTEIN)
    ("baculoviral IAP repeat-containing 2" . SPARSER::PROTEIN)
    ("DOK2" . SPARSER::PROTEIN) ("docking protein 2" . SPARSER::PROTEIN)
    ("LYPLAL1" . SPARSER::PROTEIN) ("TGFB2" . SPARSER::PROTEIN)
    ("delta-" . SPARSER::PROTEIN) ("DUSP4" . SPARSER::PROTEIN)
    ("CBZ" . SPARSER::MOLECULE) ("ZDS" . SPARSER::PROTEIN)
    ("PKC-" . SPARSER::PROTEIN)
    ("epidermal growth factor (EGF) and MET receptors" . SPARSER::COLLECTION)
    ("Nimotuzumab" . SPARSER::DRUG)
    ("cetuximab or panitumumab" . SPARSER::COLLECTION)
    ("gefitinib and erlotinib" . SPARSER::COLLECTION)
    ("gefitinib, erlotinib, lapatinib, cetuximab and panitumumab"
     . SPARSER::COLLECTION)
    ("panitumumab" . SPARSER::DRUG)
    ("low molecular weight tyrosine kinase inhibitors (TKIs) and mAbs that inhibit the EGFR extracellular domain"
     . SPARSER::COLLECTION)
    ("nimotuzumab in glioma cells and xenograft model" . SPARSER::COLLECTION)
    ("HIF-1α and β-catenin" . SPARSER::COLLECTION)
    ("HIF-1α or β-catenin" . SPARSER::COLLECTION)
    ("β-catenin/HIF-1α" . SPARSER::COLLECTION) ("nimotuzumab" . SPARSER::DRUG)
    ("β-catenin and HIF-1α" . SPARSER::COLLECTION)
    ("β-catenin/TCF" . SPARSER::COLLECTION)
    ("β-catenin/TCF4" . SPARSER::COLLECTION)
    ("LiCl or not" . SPARSER::COLLECTION) ("LiCl" . SPARSER::DRUG)
    ("FLASH" . SPARSER::PROTEIN) ("VHL/HIF-1α" . SPARSER::COLLECTION)
    ("VHL/β-catenin" . SPARSER::COLLECTION) ("lenti-NC" . SPARSER::COLLECTION)
    ("EGFR and Akt" . SPARSER::COLLECTION) ("EGFR/Akt" . SPARSER::COLLECTION)
    ("EGFR and loss of heterozygosity" . SPARSER::COLLECTION)
    ("gefitinib" . SPARSER::DRUG)
    ("either oncogenes or tumor suppressor genes" . SPARSER::COLLECTION)
    ("small nuclear RNA" . SPARSER::RNA) ("messenger RNA" . SPARSER::RNA)
    ("CoCl 2" . SPARSER::MOLECULE)
    ("apoptotic peptidase activating factor 1" . SPARSER::PROTEIN)
    ("AG1478" . SPARSER::DRUG) ("U87" . SPARSER::PROTEIN)
    ("von Hippel-Lindau" . SPARSER::PROTEIN)
    ("identified serum soluble uPAR" . SPARSER::PROTEIN)
    ("vitronectin" . SPARSER::PROTEIN) ("pro-uPA" . SPARSER::COLLECTION)
    ("the uPA (uPA+, uPAR+) and uPAR (uPA-, uPAR+)" . SPARSER::COLLECTION)
    ("uPA-" . SPARSER::PROTEIN) ("renal uPA and uPAR" . SPARSER::COLLECTION)
    ("uPA or uPAR" . SPARSER::COLLECTION)
    ("uPA and PAI-1" . SPARSER::COLLECTION)
    ("uPA, uPAR, and PAI-1" . SPARSER::COLLECTION)
    ("uPA and/or uPAR" . SPARSER::COLLECTION)
    ("angiotensin II-converting enzyme" . SPARSER::COLLECTION)
    ("telmisartan" . SPARSER::DRUG) ("valsartan" . SPARSER::DRUG)
    ("losartan" . SPARSER::PROTEIN) ("angiotensin" . SPARSER::PROTEIN)
    ("immunoglobulin A (IgA) GN" . SPARSER::PROTEIN)
    ("uPA/uPAR/PAI-1" . SPARSER::COLLECTION)
    ("uPA and matrix metalloproteinase" . SPARSER::COLLECTION)
    ("osteopontin" . SPARSER::PROTEIN)
    ("uPA and tissue-type plasminogen activator" . SPARSER::COLLECTION)
    ("plasmin" . SPARSER::PROTEIN) ("plasminogen" . SPARSER::PROTEIN)
    ("uPA/uPAR" . SPARSER::COLLECTION) ("uPA and uPAR" . SPARSER::COLLECTION)
    ("uPA, PAI-1, and uPAR" . SPARSER::COLLECTION) ("GN" . SPARSER::PROTEIN)
    ("PAI" . SPARSER::PROTEIN) ("uPAR" . SPARSER::PROTEIN)
    ("uPA" . SPARSER::PROTEIN) ("Aims" . SPARSER::PROTEIN)
    ("u-PA" . SPARSER::PROTEIN) ("converting enzyme" . SPARSER::PROTEIN)
    ("angiotensin II" . SPARSER::PROTEIN)
    ("Plasminogen Activator" . SPARSER::PROTEIN) ("NBP1" . SPARSER::PROTEIN)
    ("t-PA" . SPARSER::PROTEIN)
    ("tissue-type plasminogen activator" . SPARSER::PROTEIN)
    ("Plasminogen activator inhibitor-1" . SPARSER::PROTEIN)
    ("a soluble N -ethylmaleimide–sensitive factor attachment protein receptor–associated protein"
     . SPARSER::PROTEIN)
    ("Snapin" . SPARSER::PROTEIN) ("GM130 and IFT20" . SPARSER::COLLECTION)
    ("AKAP450 and GM130" . SPARSER::COLLECTION)
    ("multiple ciliary effectors" . SPARSER::EFFECTOR)
    ("Rab11a and Rab8a, CEP290, PCM1, and IFT20" . SPARSER::COLLECTION)
    ("Rab8a, CEP290, PCM1, and IFT20" . SPARSER::COLLECTION)
    ("centrosomal AKAP450" . SPARSER::PROTEIN)
    ("AKAP450-GM130" . SPARSER::COLLECTION) ("PACT" . SPARSER::PROTEIN)
    ("AKAP450 and IFT20" . SPARSER::COLLECTION)
    ("Luc or CK1ε" . SPARSER::COLLECTION) ("asters" . SPARSER::BIO-COMPLEX)
    ("Nocodazole" . SPARSER::DRUG) ("IFT20-GFP" . SPARSER::COLLECTION)
    ("the cis and medial cisternae" . SPARSER::COLLECTION)
    ("the centrosomal marker γ-tubulin and the cis -Golgi marker GM130"
     . SPARSER::COLLECTION)
    ("the centrosomal marker γ-tubulin" . SPARSER::PROTEIN)
    ("CEP290 and pericentrin" . SPARSER::COLLECTION)
    ("the centrosomal marker pericentrin" . SPARSER::PROTEIN)
    ("CEP290 and PCM1" . SPARSER::COLLECTION)
    ("GFP-Rab8a" . SPARSER::COLLECTION) ("GFP-Rab11a" . SPARSER::COLLECTION)
    ("Rab11a and Rab8a" . SPARSER::COLLECTION)
    ("Rab11a/Rab8a" . SPARSER::COLLECTION) ("Ctl" . SPARSER::PROTEIN)
    ("the siRNA reagents and kinase inhibitor" . SPARSER::COLLECTION)
    ("Luc" . SPARSER::PROTEIN)
    ("Rab11a, Rab8a, CEP290, PCM1, AKAP450, and IFT20" . SPARSER::COLLECTION)
    ("TGN" . SPARSER::PROTEIN)
    ("several key centrosomal components" . SPARSER::COMPONENT)
    ("Pericentriolar material protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("centrin, pericentrin, and ninein" . SPARSER::COLLECTION)
    ("BBS4 and OFD1" . SPARSER::COLLECTION) ("ninein" . SPARSER::PROTEIN)
    ("pericentrin" . SPARSER::PROTEIN) ("centrin" . SPARSER::PROTEIN)
    ("MTs" . SPARSER::PROTEIN) ("/NPHP6" . SPARSER::COLLECTION)
    ("proteins—factors" . SPARSER::COLLECTION)
    ("ciliary membrane proteins" . SPARSER::PROTEIN)
    ("Intraflagellar transport protein 20 homologue" . SPARSER::PROTEIN)
    ("axonemal" . SPARSER::PROTEIN) ("Joubert" . SPARSER::PROTEIN-FAMILY)
    ("intraflagellar transport protein 20 homologue" . SPARSER::PROTEIN)
    ("pericentriolar material protein 1, and polycystin-2"
     . SPARSER::COLLECTION)
    ("centrosomal protein" . SPARSER::PROTEIN)
    ("protein 1, and polycystin-2" . SPARSER::COLLECTION)
    ("CLS" . SPARSER::PROTEIN) ("Csnk1d" . SPARSER::PROTEIN)
    ("ciliary effectors Rab11, Rab8, CEP290, PCM1, and IFT20"
     . SPARSER::COLLECTION)
    ("Rab11, Rab8, CEP290, PCM1, and IFT20" . SPARSER::COLLECTION)
    ("CS3" . SPARSER::PROTEIN)
    ("receptor–associated protein" . SPARSER::PROTEIN)
    ("N -ethylmaleimide" . SPARSER::MOLECULE) ("Sec23" . SPARSER::PROTEIN)
    ("Hrr25" . SPARSER::PROTEIN) ("CK1α" . SPARSER::PROTEIN)
    ("GM130" . SPARSER::PROTEIN) ("pcDNA3" . SPARSER::PROTEIN)
    ("PF670462" . SPARSER::DRUG) ("Rab8a" . SPARSER::PROTEIN)
    ("Rab11a" . SPARSER::PROTEIN) ("Wnt3a" . SPARSER::PROTEIN)
    ("Casein kinase 1" . SPARSER::PROTEIN) ("BBS4" . SPARSER::PROTEIN)
    ("NPHP6" . SPARSER::PROTEIN)
    ("guanine nucleotide exchange factor" . SPARSER::GEF)
    ("Rabin8" . SPARSER::PROTEIN)
    ("A-kinase anchor protein 450" . SPARSER::PROTEIN)
    ("polycystin-2" . SPARSER::PROTEIN) ("casein kinase 1" . SPARSER::PROTEIN)
    ("AKAP450" . SPARSER::PROTEIN) ("IFT20" . SPARSER::PROTEIN)
    ("CEP290" . SPARSER::PROTEIN) ("Rab8" . SPARSER::PROTEIN)
    ("Rab11" . SPARSER::PROTEIN) ("Ras/ERK/RSK" . SPARSER::COLLECTION)
    ("HIC" . SPARSER::PROTEIN) ("BMI1, CD44, and CD49f" . SPARSER::COLLECTION)
    ("RSK2 and hTERT" . SPARSER::COLLECTION)
    ("ribosomal protein, and pRSK" . SPARSER::COLLECTION)
    ("pRSK" . SPARSER::PROTEIN) ("YB-1 and BLBC" . SPARSER::COLLECTION)
    ("EP300 and BMI1" . SPARSER::COLLECTION)
    ("the luminal lineage marker KRT18 and the TIC genes CD44 and ITGA6 (encoding CD49f)"
     . SPARSER::COLLECTION)
    ("ER1 , ER2 , PR and CDKN2A" . SPARSER::COLLECTION)
    ("CD44 and ITGA6" . SPARSER::COLLECTION)
    ("ER, PR, and HER2" . SPARSER::COLLECTION)
    ("ESR1 , PGR , and ERBB2" . SPARSER::COLLECTION)
    ("ESR1 (encoding ER) and PGR (encoding PR)" . SPARSER::COLLECTION)
    ("Matrigel and collagen" . SPARSER::COLLECTION)
    ("NSG and NOD/SCID" . SPARSER::COLLECTION)
    ("pan-RSK" . SPARSER::COLLECTION)
    ("YB-1, RSK1, and RSK2" . SPARSER::COLLECTION)
    ("YB-1, RSK2, and hTERT" . SPARSER::COLLECTION)
    ("YB-1 and RSK2" . SPARSER::COLLECTION)
    ("YB-1 or RSK2" . SPARSER::COLLECTION) ("YB-1/RSK2" . SPARSER::COLLECTION)
    ("p300 and BMI1" . SPARSER::COLLECTION)
    ("CD44 or CD49f" . SPARSER::COLLECTION) ("CD24-" . SPARSER::PROTEIN)
    ("pMIN:BMI1" . SPARSER::BIO-COMPLEX) ("EdU" . SPARSER::DRUG)
    ("siRNA or the small molecule inhibitor BI-D1870" . SPARSER::COLLECTION)
    ("BMI1 and CD49f" . SPARSER::COLLECTION)
    ("TIC-associated gene promoters" . SPARSER::PROMOTER)
    ("a preferential substrate" . SPARSER::SUBSTRATE)
    ("AcH" . SPARSER::PROTEIN)
    ("the predominant HAT enzyme" . SPARSER::PROTEIN)
    ("YB-1 and p300" . SPARSER::COLLECTION)
    ("YB-1 or its upstream kinases RSK1 and RSK2 ( xref )"
     . SPARSER::COLLECTION)
    ("RSK1 and RSK2" . SPARSER::COLLECTION) ("/CD49f" . SPARSER::COLLECTION)
    ("TIC-associated genes" . SPARSER::GENE)
    ("FLAG:YB-1" . SPARSER::BIO-COMPLEX)
    ("HTRZ and HTRY" . SPARSER::COLLECTION)
    ("BMI1 , CD44 , and CD49f" . SPARSER::COLLECTION)
    ("YB-1 and the BMI1 promoter [ xref ]" . SPARSER::COLLECTION)
    ("Acini" . SPARSER::PROTEIN) ("post-YB-1" . SPARSER::COLLECTION)
    ("three-dimensional polarized acini" . SPARSER::PROTEIN)
    ("HTRY" . SPARSER::PROTEIN) ("HTRZ" . SPARSER::PROTEIN)
    ("HTRY-LT" . SPARSER::COLLECTION) ("LT" . SPARSER::PROTEIN)
    ("LacZ (HTRZ)" . SPARSER::PROTEIN) ("YB-1 (HTRY)" . SPARSER::PROTEIN)
    ("LacZ" . SPARSER::PROTEIN) ("Tet" . SPARSER::PROTEIN)
    ("p16 INK4a and p14 ARF" . SPARSER::COLLECTION)
    ("/CD24" . SPARSER::COLLECTION) ("CD44 and CD49f" . SPARSER::COLLECTION)
    ("TIC" . SPARSER::PROTEIN)
    ("p90 ribosomal S6 kinase (RSK)" . SPARSER::PROTEIN-FAMILY)
    ("the estrogen receptor (ER)-negative subtypes" . SPARSER::PROTEIN)
    ("YB-1/RSK2/hTERT" . SPARSER::COLLECTION)
    ("three-dimensional breast acini" . SPARSER::PROTEIN)
    ("acini" . SPARSER::PROTEIN) ("tetracycline" . SPARSER::DRUG)
    ("ITGA6" . SPARSER::PROTEIN) ("ER1" . SPARSER::PROTEIN)
    ("CK5" . SPARSER::PROTEIN) ("H3-K9" . SPARSER::PROTEIN)
    ("EP300" . SPARSER::PROTEIN) ("RSK1" . SPARSER::PROTEIN)
    ("acetyl-CoA" . SPARSER::MOLECULE)
    ("Histone acetyltransferase" . SPARSER::PROTEIN)
    ("CK18" . SPARSER::PROTEIN) ("CK14" . SPARSER::PROTEIN)
    ("BI-D1870" . SPARSER::MOLECULE) ("telomerase activity" . SPARSER::PROTEIN)
    ("telomerase reverse transcriptase" . SPARSER::PROTEIN)
    ("RSK2" . SPARSER::PROTEIN) ("H2A" . SPARSER::PROTEIN)
    ("Y-box binding protein-1" . SPARSER::PROTEIN)
    ("AR-RUNX2" . SPARSER::COLLECTION) ("AR/RUNX2" . SPARSER::COLLECTION)
    ("low AR or low RUNX2" . SPARSER::COLLECTION)
    ("/RUNX2" . SPARSER::COLLECTION)
    ("strong AR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("primary PCa" . SPARSER::PROTEIN)
    ("composite enhancers" . SPARSER::PROTEIN)
    ("androgens and RUNX2" . SPARSER::COLLECTION)
    ("the anti-RUNX2" . SPARSER::ANTIBODY) ("estradiol" . SPARSER::PROTEIN)
    ("most RUNX2- and most estrogen-responsive genes ( xref , xref )"
     . SPARSER::COLLECTION)
    ("RUNX2-" . SPARSER::PROTEIN)
    ("RUNX2 at most androgen-stimulated (Type I) genes" . SPARSER::GENE)
    ("the pro-metastatic gene SNAI2 and additional genes"
     . SPARSER::COLLECTION)
    ("EGFR, ITSN1 and CRYAB" . SPARSER::COLLECTION)
    ("HIPK2, SOX9 and RAB3B" . SPARSER::COLLECTION)
    ("PRKCD" . SPARSER::PROTEIN) ("CRYAB" . SPARSER::PROTEIN)
    ("NKX3-1 and PDEF" . SPARSER::COLLECTION) ("PDEF" . SPARSER::PROTEIN)
    ("Examples" . SPARSER::EXAMPLE)
    ("genes and phenotypes" . SPARSER::COLLECTION)
    ("AR or RUNX2" . SPARSER::COLLECTION) ("/SNAI2" . SPARSER::COLLECTION)
    ("/AR" . SPARSER::COLLECTION) ("AR, RUNX2 or SNAI2" . SPARSER::COLLECTION)
    ("both nuclear RUNX2 and nuclear AR ( xref )" . SPARSER::COLLECTION)
    ("either nuclear RUNX2 or nuclear AR" . SPARSER::COLLECTION)
    ("the respective proteins" . SPARSER::PROTEIN)
    ("RUNX2 and androgen" . SPARSER::COLLECTION) ("shRNAs" . SPARSER::PROTEIN)
    ("DHT and/or dox" . SPARSER::COLLECTION)
    ("DHT and dox" . SPARSER::COLLECTION)
    ("DHT and RUNX2" . SPARSER::COLLECTION)
    ("doubly-occupied enhancers" . SPARSER::PROTEIN)
    ("many more doubly-occupied enhancers" . SPARSER::PROTEIN)
    ("the doubly-occupied enhancers" . SPARSER::PROTEIN)
    ("the doubly-occupied presumptive enhancers" . SPARSER::PROTEIN)
    ("NKX3-1 and TMPRSS2" . SPARSER::COLLECTION)
    ("NKX3 -1 and TMPRSS2" . SPARSER::COLLECTION)
    ("PIP and PGC" . SPARSER::COLLECTION) ("PGC" . SPARSER::PROTEIN)
    ("GFP-AR" . SPARSER::COLLECTION)
    ("a relatively uniform nuclear" . SPARSER::PROTEIN)
    ("PC3-AR" . SPARSER::COLLECTION) ("CRPC" . SPARSER::PROTEIN)
    ("PCa (CRPC)" . SPARSER::PROTEIN) ("LNCaP/Rx2" . SPARSER::COLLECTION)
    ("Type I and Type II" . SPARSER::COLLECTION)
    ("first analyzed global mRNA" . SPARSER::RNA)
    ("RUNX2 and AR" . SPARSER::COLLECTION)
    ("comprehensive mRNA" . SPARSER::RNA) ("DHT" . SPARSER::PROTEIN)
    ("dihydrotestosterone" . SPARSER::DRUG) ("osteocalcin" . SPARSER::PROTEIN)
    ("PIN" . SPARSER::PROTEIN)
    ("certain invasion-promoting genes" . SPARSER::GENE)
    ("SNAI2, RUNX2 and AR" . SPARSER::COLLECTION)
    ("AR and RUNX2" . SPARSER::COLLECTION)
    ("androgen and RUNX2" . SPARSER::COLLECTION)
    ("androgen receptor (AR)" . SPARSER::PROTEIN) ("RAB3B" . SPARSER::PROTEIN)
    ("SOX9" . SPARSER::PROTEIN) ("HIPK2" . SPARSER::PROTEIN)
    ("ITSN1" . SPARSER::PROTEIN) ("KRT19" . SPARSER::PROTEIN)
    ("Type IIA" . SPARSER::PROTEIN) ("TMPRSS2" . SPARSER::PROTEIN)
    ("NKX3 -1" . SPARSER::PROTEIN) ("Rx2" . SPARSER::PROTEIN)
    ("nuclear hormone receptor" . SPARSER::PROTEIN)
    ("ETS family" . SPARSER::PROTEIN) ("FOXA1" . SPARSER::PROTEIN)
    ("NKX3-1" . SPARSER::PROTEIN) ("TKI and chloroquine" . SPARSER::COLLECTION)
    ("a potential promoter or a precondition" . SPARSER::COLLECTION)
    ("EGFR-PKCα" . SPARSER::COLLECTION) ("p16/RB" . SPARSER::COLLECTION)
    ("RB" . SPARSER::PROTEIN) ("Oncogene" . SPARSER::ONCOGENE)
    ("anaphase-promoting complex/cyclosome" . SPARSER::COLLECTION)
    ("mitotic chromatin condensation" . SPARSER::PROTEIN-FAMILY)
    ("rays" . SPARSER::PROTEIN)
    ("erlotinib and chloroquine" . SPARSER::COLLECTION)
    ("MEK-ERK" . SPARSER::COLLECTION) ("kinase and EGFR" . SPARSER::COLLECTION)
    ("mitotic condensation" . SPARSER::PROTEIN-FAMILY)
    ("Regulators" . SPARSER::REGULATOR)
    ("heterochromatin as well as mitotic chromatin ( xref )"
     . SPARSER::COLLECTION)
    ("mitotic chromatin" . SPARSER::PROTEIN)
    ("dense chromatin" . SPARSER::PROTEIN)
    ("cetuximab or erlotinib" . SPARSER::COLLECTION)
    ("Condensation" . SPARSER::PROTEIN-FAMILY)
    ("Erlotinib and cetuximab" . SPARSER::COLLECTION)
    ("post-IR" . SPARSER::COLLECTION)
    ("erlotinib or cetuximab" . SPARSER::COLLECTION)
    ("erlotinib or mAbs" . SPARSER::COLLECTION)
    ("EGFR-targeted monoclonal antibodies (mAb) or selective tyrosine kinase inhibitors (TKI)"
     . SPARSER::COLLECTION)
    ("EGFR-targeted monoclonal antibodies" . SPARSER::ANTIBODY)
    ("erbB" . SPARSER::PROTEIN) ("the principal type" . TYPE)
    ("IR and erlotinib" . SPARSER::COLLECTION)
    ("EGFR and PKCα" . SPARSER::COLLECTION)
    ("erlotinib and cetuximab" . SPARSER::COLLECTION)
    ("predictive genomic biomarkers" . SPARSER::MOLECULE)
    ("p-H3" . SPARSER::MOLECULE) ("I-SceI" . SPARSER::PROTEIN)
    ("DNA-PKcs" . SPARSER::PROTEIN) ("SRF 2" . SPARSER::PROTEIN)
    ("S10" . SPARSER::PROTEIN) ("Lys9" . SPARSER::PROTEIN)
    ("AZD6244" . SPARSER::DRUG) ("NU7026" . SPARSER::DRUG)
    ("B27" . SPARSER::PROTEIN)
    ("basic fibroblast growth factor" . SPARSER::PROTEIN)
    ("cyclin D1 and ROS" . SPARSER::COLLECTION)
    ("genes that are involved in growth and ROS generation in PCa cells"
     . SPARSER::COLLECTION)
    ("JunD-AR" . SPARSER::COLLECTION) ("AR or JunD" . SPARSER::COLLECTION)
    ("a more recent anti-androgen" . SPARSER::DRUG)
    ("Enzalutamide" . SPARSER::DRUG)
    ("blocking androgen-induced cellular ROS" . SPARSER::PROTEIN)
    ("containing approximately 2,000 and 25,000 molecules" . SPARSER::MOLECULE)
    ("c and d" . SPARSER::COLLECTION)
    ("5 μmol/l GWARJD10-treated LNCaP" . SPARSER::PROTEIN)
    ("Response Element (ARE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("ssat" . SPARSER::PROTEIN)
    ("genes that are involved in growth and ROS production"
     . SPARSER::COLLECTION)
    ("Androgen Receptor (AR) and JunD" . SPARSER::COLLECTION)
    ("CPC" . SPARSER::PROTEIN) ("the dual HTS" . SPARSER::PROTEIN)
    ("antiandrogens" . SPARSER::DRUG) ("Antiandrogens" . SPARSER::DRUG)
    ("smad3/PKB" . SPARSER::COLLECTION) ("AR and JunD" . SPARSER::COLLECTION)
    ("polyamine" . SPARSER::MOLECULE)
    ("oxidative stress causes DNA, RNA, and phospholipid"
     . SPARSER::COLLECTION)
    ("DNA, RNA, and phospholipid" . SPARSER::COLLECTION)
    ("hydroxyl radical, superoxide, hydrogen peroxide, and nitric oxide"
     . SPARSER::COLLECTION)
    ("the early stage recurrent PCa" . SPARSER::PROTEIN)
    ("AR-JunD" . SPARSER::COLLECTION) ("-JunD" . SPARSER::COLLECTION)
    ("-Acetyl" . SPARSER::MOLECULE) ("JunD" . SPARSER::PROTEIN)
    ("SSAT" . SPARSER::PROTEIN) ("Acetyl" . SPARSER::MOLECULE)
    ("Spermine" . SPARSER::PROTEIN) ("Spermidine" . SPARSER::MOLECULE)
    ("PCa" . SPARSER::PROTEIN) ("Caspases 3" . SPARSER::PROTEIN)
    ("Response Element" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("alpha-tocopherol" . SPARSER::MOLECULE) ("anti-oxidants" . SPARSER::DRUG)
    ("smad3" . SPARSER::PROTEIN) ("N 1" . SPARSER::PROTEIN)
    ("nonglycemic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FNK" . SPARSER::PROTEIN) ("ANK1 , and CYBA" . SPARSER::COLLECTION)
    ("glycemic traits or T2D" . SPARSER::COLLECTION)
    ("traits or T2D" . SPARSER::COLLECTION)
    ("high-glucose-induced superoxide" . SPARSER::MOLECULE)
    ("high environmental glucose" . SPARSER::PROTEIN)
    ("the recessive chronic granulomatous disease" . SPARSER::PROTEIN)
    ("Glucose and Insulin-Related Traits Consortium (MAGIC) meta-analysis ( xref )"
     . SPARSER::COLLECTION)
    ("DP-BB" . SPARSER::COLLECTION) ("BB" . SPARSER::PROTEIN)
    ("DP" . SPARSER::PROTEIN)
    ("mean corpuscular hemoglobin" . SPARSER::PROTEIN)
    ("Cohorts" . SPARSER::MOLECULE) ("HBS1L and MYB" . SPARSER::COLLECTION)
    ("HbA" . SPARSER::PROTEIN) ("ABCA" . SPARSER::PROTEIN)
    ("glucose, HbA 1c , and HbA 1c" . SPARSER::COLLECTION)
    ("SP2, KARE, Nutrition and Health" . SPARSER::COLLECTION)
    ("glucose or T2D" . SPARSER::COLLECTION)
    ("the three Singapore Progressive Study Program (SP2) cohorts"
     . SPARSER::MOLECULE)
    ("the genome-wide significant index SNPs" . SPARSER::PROTEIN)
    ("CYBA , and ANK1" . SPARSER::COLLECTION)
    ("HBS1/MYB" . SPARSER::COLLECTION) ("FN3K and ANK1" . SPARSER::COLLECTION)
    ("GCK and G6PC2" . SPARSER::COLLECTION)
    ("Glucose and Erythrocyte" . SPARSER::COLLECTION)
    ("Traits" . SPARSER::PROTEIN) ("Glucose" . SPARSER::PROTEIN)
    ("MAF" . SPARSER::PROTEIN) ("CYBA , and myosin IXB" . SPARSER::COLLECTION)
    ("protein/v-myb" . SPARSER::COLLECTION)
    ("PSMD13 and rs174570" . SPARSER::COLLECTION) ("CHB" . SPARSER::PROTEIN)
    ("perfect LD" . SPARSER::PROTEIN) ("GCK and FN3K" . SPARSER::COLLECTION)
    ("MDR/TAP" . SPARSER::COLLECTION) ("TAP" . SPARSER::PROTEIN)
    ("glucose and HbA 1c" . SPARSER::COLLECTION)
    ("γ-complex-associated protein 3" . SPARSER::PROTEIN)
    ("type 11A/tubulin" . SPARSER::COLLECTION) ("spectrin" . SPARSER::PROTEIN)
    ("HFE" . SPARSER::PROTEIN) ("hemochromatosis" . SPARSER::PROTEIN)
    ("HK1" . SPARSER::PROTEIN) ("other glycemic traits" . SPARSER::PROTEIN)
    ("glucokinase" . SPARSER::PROTEIN)
    ("glucose and hemoglobin" . SPARSER::COLLECTION)
    ("MYB , CYBA , MYO9B , ANK1 , and FN3K" . SPARSER::COLLECTION)
    ("glucose or type 2" . SPARSER::COLLECTION)
    ("ABCB11 , GCK , ANK1 , and FN3KI" . SPARSER::COLLECTION)
    ("HBS1L/MYB" . SPARSER::COLLECTION) ("CYBA" . SPARSER::PROTEIN)
    ("MYB" . SPARSER::PROTEIN) ("Glycated hemoglobin A 1c" . SPARSER::PROTEIN)
    ("1c" . SPARSER::PROTEIN) ("β-cell" . SPARSER::PROTEIN)
    ("chronic granulomatous disease" . SPARSER::PROTEIN)
    ("p22phox" . SPARSER::PROTEIN) ("T-G" . SPARSER::PROTEIN)
    ("CCT3" . SPARSER::PROTEIN) ("HBS1" . SPARSER::PROTEIN)
    ("myosin IXB" . SPARSER::PROTEIN) ("v-myb" . SPARSER::PROTEIN)
    ("transmembrane protein 79" . SPARSER::PROTEIN)
    ("cytochrome b-245" . SPARSER::PROTEIN) ("member 11" . SPARSER::PROTEIN)
    ("subfamily B" . SPARSER::PROTEIN) ("PSMD13" . SPARSER::PROTEIN)
    ("non-ATPase" . SPARSER::PROTEIN)
    ("macropain) 26S subunit" . SPARSER::PROTEIN)
    ("proteasome (prosome" . SPARSER::PROTEIN) ("FADS2" . SPARSER::PROTEIN)
    ("fatty acid desaturase 2" . SPARSER::PROTEIN)
    ("fructosamine 3 kinase" . SPARSER::PROTEIN)
    ("hexokinase 1" . SPARSER::PROTEIN) ("SPTA1" . SPARSER::PROTEIN)
    ("ankyrin 1" . SPARSER::PROTEIN) ("TUBGCP3" . SPARSER::PROTEIN)
    ("ATP11A" . SPARSER::PROTEIN) ("type 11A" . SPARSER::PROTEIN)
    ("TMPRSS6" . SPARSER::PROTEIN)
    ("transmembrane protease, serine 6" . SPARSER::PROTEIN)
    ("CDK5 regulatory subunit associated protein 1-like 1" . SPARSER::PROTEIN)
    ("MTNR1B" . SPARSER::PROTEIN) ("melatonin receptor 1B" . SPARSER::PROTEIN)
    ("glucose-6-phosphatase" . SPARSER::PROTEIN) ("TCF7L2" . SPARSER::PROTEIN)
    ("transcription factor 7" . SPARSER::PROTEIN)
    ("member 8" . SPARSER::PROTEIN)
    ("solute carrier family 30 (zinc transporter)" . SPARSER::PROTEIN)
    ("FN3K" . SPARSER::PROTEIN) ("FN3" . SPARSER::PROTEIN)
    ("ANK1" . SPARSER::PROTEIN) ("ABCB11" . SPARSER::PROTEIN)
    ("G6PC2" . SPARSER::PROTEIN) ("CDKAL1" . SPARSER::PROTEIN)
    ("HBS1L" . SPARSER::PROTEIN) ("TMEM79" . SPARSER::PROTEIN)
    ("HbA 1" . SPARSER::PROTEIN)
    ("the heterotrimeric complex" . SPARSER::BIO-COMPLEX)
    ("causes MFM" . SPARSER::PROTEIN)
    ("calcineurin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("physical anchor" . SPARSER::ANCHOR)
    ("PKA and ZASP" . SPARSER::COLLECTION) ("Telethonin" . SPARSER::PROTEIN)
    ("Bax (Bcl2-associated X protein) and the MDM2 promoter"
     . SPARSER::COLLECTION)
    ("ZASP6 ZM-motif mutants" . SPARSER::MUTANT)
    ("p53 and Ankrd2" . SPARSER::COLLECTION)
    ("the trimeric complex" . SPARSER::BIO-COMPLEX)
    ("SUMO1 and SUMO2/3" . SPARSER::COLLECTION)
    ("YB-1 and PML" . SPARSER::COLLECTION) ("PML" . SPARSER::PROTEIN)
    ("ZM1 or vice versa" . SPARSER::COLLECTION)
    ("PDZ-ZASP and p53" . SPARSER::COLLECTION)
    ("both alpha-actinin2 ( xref ) and Ankrd2 ( xref )" . SPARSER::COLLECTION)
    ("building sarcomeric multiprotein complexes" . SPARSER::BIO-COMPLEX)
    ("titin and telethonin" . SPARSER::COLLECTION)
    ("all sarcomeric proteins" . SPARSER::PROTEIN)
    ("ZASP1 and PKA" . SPARSER::COLLECTION)
    ("protein kinase A (PKA)" . SPARSER::PROTEIN)
    ("the mobile fraction and the Koff value compared to the wt ZASP1"
     . SPARSER::COLLECTION)
    ("ZASP6 and ZASP1" . SPARSER::COLLECTION)
    ("monomeric proteins" . SPARSER::PROTEIN)
    ("ZASP1 and ZASP5" . SPARSER::COLLECTION)
    ("ZASP1 and ZASP8" . SPARSER::COLLECTION)
    ("three long isoforms (ZASP1, ZASP2 and ZASP8) and two short isoforms (ZASP5 and ZASP6)"
     . SPARSER::COLLECTION)
    ("ZASP1, ZASP2 and ZASP8" . SPARSER::COLLECTION)
    ("ZASP1, ZASP5 and ZASP8" . SPARSER::COLLECTION)
    ("both the BAX ( xref ) and MDM2 ( xref ) promoters" . SPARSER::COLLECTION)
    ("the both the BAX ( xref ) and MDM2 ( xref ) promoters"
     . SPARSER::COLLECTION)
    ("the both the BAX" . SPARSER::PROTEIN)
    ("the BAX promoter-LUC or the MDM2 promoter-LUC as well as the Renilla luciferase reporter gene"
     . SPARSER::COLLECTION)
    ("the MDM2 promoter-LUC as well as the Renilla luciferase reporter gene"
     . SPARSER::COLLECTION)
    ("p53, ZASP6 and Ankrd2" . SPARSER::COLLECTION) ("LUC" . SPARSER::PROTEIN)
    ("Dual luciferase" . SPARSER::PROTEIN)
    ("The ZASP6-Ankrd2-p53 Triple Complex" . SPARSER::BIO-COMPLEX)
    ("ZASP6-Ankrd2-p53" . SPARSER::COLLECTION)
    ("ZASP6 and p53" . SPARSER::COLLECTION)
    ("pcDNA3-p53" . SPARSER::PROTEIN-PAIR) ("EGFP-ZASP6" . SPARSER::COLLECTION)
    ("pCMV-cMyc-Ankrd2" . SPARSER::COLLECTION)
    ("pEGFP-ZASP6" . SPARSER::COLLECTION)
    ("Ankrd2, ZASP and p53" . SPARSER::COLLECTION)
    ("full-length and Ankrd2" . SPARSER::COLLECTION)
    ("anti-GST, anti-Ankrd2 and anti-ZASP" . SPARSER::COLLECTION)
    ("GST-Ankrd2" . SPARSER::COLLECTION)
    ("the ZM1 or vice versa" . SPARSER::COLLECTION)
    ("ZM1 and p53" . SPARSER::COLLECTION)
    ("ZM1 and Ankrd2" . SPARSER::COLLECTION)
    ("anti-Ankrd2 and anti-GFP" . SPARSER::COLLECTION)
    ("EGFP-p53" . SPARSER::COLLECTION)
    ("PDZ-ZASP6, Ankrd2 and p53" . SPARSER::COLLECTION)
    ("PDZ-ZASP6 and p53" . SPARSER::COLLECTION)
    ("Ankrd2 ( xref ) and p53 ( xref )" . SPARSER::COLLECTION)
    ("anti-Ankrd2 and anti-p53" . SPARSER::COLLECTION)
    ("EGPF-p53" . SPARSER::COLLECTION)
    ("this triple complex" . SPARSER::BIO-COMPLEX)
    ("the triple complex" . SPARSER::BIO-COMPLEX)
    ("Ankrd2 and ZASP" . SPARSER::COLLECTION)
    ("SUMO-1 and SUMO-2/3" . SPARSER::COLLECTION) ("SUMO" . SPARSER::PROTEIN)
    ("anti-ZASP, anti-Ankrd2 and anti-GFP" . SPARSER::COLLECTION)
    ("antibody ( xref , row 1) and anti-ZASP antibody ( xref , row 2)"
     . SPARSER::COLLECTION)
    ("a Triple Complex" . SPARSER::BIO-COMPLEX)
    ("ZASP6, Ankrd2 and p53" . SPARSER::COLLECTION)
    ("the ZM1-p53 interaction probably needs another protein or proteins"
     . SPARSER::COLLECTION)
    ("protein or proteins" . SPARSER::COLLECTION)
    ("ZM1-p53" . SPARSER::COLLECTION) ("p53 and ZASP6" . SPARSER::COLLECTION)
    ("ZASP6-ZM1" . SPARSER::COLLECTION)
    ("anti-GFP and anti-p53" . SPARSER::COLLECTION)
    ("antibody and ZASP6" . SPARSER::COLLECTION)
    ("the ZASP6_K136M and ZASP6_A147T mutants as well as ZASP6 wt but not the mutants"
     . SPARSER::COLLECTION)
    ("ZASP6_K136M and ZASP6_A147T" . SPARSER::COLLECTION)
    ("ZASP6_K136M" . SPARSER::PROTEIN) ("GFP-ZASP6" . SPARSER::COLLECTION)
    ("Ankrd2 and ZASP6" . SPARSER::COLLECTION)
    ("GFP-ZASP6_K136M and GFP-ZASP6_A147T" . SPARSER::COLLECTION)
    ("GFP-ZASP6_K136M" . SPARSER::PROTEIN-PAIR)
    ("cMyc-alpha-actinin2 and FLAG-ZASP6 wt protein or different mutants"
     . SPARSER::COLLECTION)
    ("FLAG-ZASP6" . SPARSER::COLLECTION)
    ("cMyc-alpha-actinin2" . SPARSER::COLLECTION)
    ("wt ZASP6 and its mutants" . SPARSER::COLLECTION)
    ("Alpha-actinin2 and Ankrd2" . SPARSER::COLLECTION)
    ("The Western blot" . SPARSER::PROTEIN)
    ("ZASP6 and GST-FL-Ankrd2, GST-NA-Ankrd2 and GST-CA-Ankrd2"
     . SPARSER::COLLECTION)
    ("HA-ZASP6" . SPARSER::COLLECTION)
    ("the designated canonical Ankrd2" . SPARSER::PROTEIN)
    ("ZASP6 and Ankrd2" . SPARSER::COLLECTION)
    ("GST-ZM1" . SPARSER::COLLECTION) ("ZASP6" . SPARSER::PROTEIN)
    ("GST-ZASP6" . SPARSER::COLLECTION) ("ZM1" . SPARSER::PROTEIN)
    ("antibody and Ankrd2" . SPARSER::COLLECTION)
    ("FLAG-ZM1" . SPARSER::COLLECTION) ("cMyc-Ankrd2" . SPARSER::COLLECTION)
    ("ZASP1" . SPARSER::PROTEIN)
    ("zaspopathy associated ZASP6 isoforms" . SPARSER::ISOFORM)
    ("an higher immobile fraction" . SPARSER::COMPONENT)
    ("GFP-ZASP" . SPARSER::COLLECTION)
    ("actively growing murine myoblasts" . SPARSER::PROTEIN)
    ("Z-bodies or Z-lines" . SPARSER::COLLECTION)
    ("alpha-actinin2 and the tested ZASP isoforms ( xref )"
     . SPARSER::COLLECTION)
    ("monoclonal anti-alpha-actinin2 antibody" . SPARSER::ANTIBODY)
    ("phalloidin" . SPARSER::MOLECULE)
    ("only ZASP isoforms" . SPARSER::ISOFORM)
    ("a straightforward task" . SPARSER::PROTEIN) ("task" . SPARSER::PROTEIN)
    ("both human adult cardiac and skeletal RNA" . SPARSER::RNA)
    ("odd" . SPARSER::PROTEIN) ("BAG" . SPARSER::PROTEIN)
    ("AK" . SPARSER::PROTEIN) ("Isoforms" . SPARSER::ISOFORM)
    ("a trimeric complex" . SPARSER::BIO-COMPLEX)
    ("ZASP, Ankrd2 and p53" . SPARSER::COLLECTION)
    ("BAX and MDM2" . SPARSER::COLLECTION)
    ("RIL and hCLIM" . SPARSER::COLLECTION) ("RIL" . SPARSER::PROTEIN)
    ("Many sarcomeric proteins" . SPARSER::PROTEIN)
    ("isoforms and mutants" . SPARSER::COLLECTION)
    ("nebulette" . SPARSER::PROTEIN) ("telethonin" . SPARSER::PROTEIN)
    ("FATZ/calsarcin/myozenin family" . SPARSER::COLLECTION)
    ("palladin" . SPARSER::PROTEIN) ("myopalladin" . SPARSER::PROTEIN)
    ("myotilin" . SPARSER::PROTEIN) ("Myotilin" . SPARSER::PROTEIN)
    ("calsarcin" . SPARSER::PROTEIN-FAMILY)
    ("cysteine and histidine" . SPARSER::COLLECTION)
    ("ALP and Enigma" . SPARSER::COLLECTION) ("Enigma" . SPARSER::PROTEIN)
    ("ALP" . SPARSER::PROTEIN) ("discs" . SPARSER::BIO-COMPLEX)
    ("actin and titin" . SPARSER::COLLECTION)
    ("filaments" . SPARSER::PROTEIN-FAMILY) ("titin" . SPARSER::PROTEIN)
    ("MDM2 and BAX" . SPARSER::COLLECTION)
    ("Ankrd2 and p53" . SPARSER::COLLECTION)
    ("a triple complex" . SPARSER::BIO-COMPLEX)
    ("proteins and ZASP" . SPARSER::COLLECTION)
    ("the mechanosensing protein Ankrd2 and the tumour suppressor protein p53"
     . SPARSER::COLLECTION)
    ("complexes and plays" . SPARSER::COLLECTION)
    ("a cytoskeletal PDZ-LIM protein" . SPARSER::PROTEIN)
    ("LIM" . SPARSER::PROTEIN) ("ZASP" . SPARSER::PROTEIN)
    ("IgG2a" . SPARSER::PROTEIN) ("Serum Albumin" . SPARSER::PROTEIN)
    ("SUMO2" . SPARSER::PROTEIN) ("YB-1" . SPARSER::PROTEIN)
    ("N-acetylglucosamine" . SPARSER::MOLECULE) ("SUMO-2" . SPARSER::PROTEIN)
    ("SUMO-1" . SPARSER::PROTEIN)
    ("small ubiquitin-related modifier" . SPARSER::PROTEIN)
    ("Ankyrin repeat" . SPARSER::PROTEIN) ("Ankyrin Repeat" . SPARSER::PROTEIN)
    ("Z-bodies" . SPARSER::PROTEIN) ("cardiac muscle" . SPARSER::PROTEIN)
    ("LDB3" . SPARSER::PROTEIN) ("phosphoprotein p53" . SPARSER::PROTEIN)
    ("ankyrin repeat" . SPARSER::PROTEIN)
    ("phosphoglucomutase1" . SPARSER::PROTEIN)
    ("phosphoglucomutase 1" . SPARSER::PROTEIN)
    ("sodium channel" . SPARSER::PROTEIN) ("T-Cap" . SPARSER::PROTEIN)
    ("myozenin family" . SPARSER::PROTEIN)
    ("Alpha-actinin2" . SPARSER::PROTEIN) ("CLP-36" . SPARSER::PROTEIN)
    ("ldb3" . SPARSER::PROTEIN) ("LIM domain binding 3" . SPARSER::PROTEIN)
    ("alpha-actinin2" . SPARSER::PROTEIN) ("Ankrd2" . SPARSER::PROTEIN)
    ("E-cadherin, Stat3, and MMP-9" . SPARSER::COLLECTION)
    ("the main prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("several new-ly-publicated meta" . SPARSER::PROTEIN)
    ("HIF-1α or Survivin" . SPARSER::COLLECTION)
    ("HIF-1α/PTEN/Survivin" . SPARSER::COLLECTION)
    ("HIF-1α and PTEN" . SPARSER::COLLECTION) ("IFP" . SPARSER::PROTEIN)
    ("local hypoxia" . SPARSER::PROTEIN) ("HR  " . SPARSER::PROTEIN)
    ("RR  " . SPARSER::PROTEIN) ("/Survivin" . SPARSER::COLLECTION)
    ("Xin" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Hur" . SPARSER::PROTEIN)
    ("HIF-1α and vascular endothelial growth factor (VEGF)"
     . SPARSER::COLLECTION)
    ("HIF-1α and vascular endothelial growth factor" . SPARSER::COLLECTION)
    ("Dutasteride" . SPARSER::DRUG) ("Topotecan" . SPARSER::DRUG)
    ("cell-adhesion molecules and membrane proteins xref"
     . SPARSER::COLLECTION)
    ("receptor-associated kinases, and transporters" . SPARSER::COLLECTION)
    ("factors and histone" . SPARSER::COLLECTION)
    ("kinases, and transporters" . SPARSER::COLLECTION)
    ("RR " . SPARSER::PROTEIN) ("RR" . SPARSER::PROTEIN)
    ("HIF-1a" . SPARSER::PROTEIN)
    ("additional polymorphisms and rare variants" . SPARSER::COLLECTION)
    ("either capecitabine and/or bevacizumab" . SPARSER::COLLECTION)
    ("capecitabine and bevacizumab" . SPARSER::COLLECTION)
    ("ENOSF1 and TYMS" . SPARSER::COLLECTION)
    ("polymorphisms and tagSNP" . SPARSER::COLLECTION)
    ("fine-map" . SPARSER::PROTEIN)
    ("The toxicity-associated allele" . SPARSER::ALLELE)
    ("previously reported DPYD toxicity alleles" . SPARSER::ALLELE)
    ("SNPs and rare genetic variants" . SPARSER::COLLECTION)
    ("subsequent exon" . SPARSER::PROTEIN)
    ("SNP and exome" . SPARSER::COLLECTION)
    ("DPYD and TYMS" . SPARSER::COLLECTION)
    ("polymorphisms" . SPARSER::PROTEIN) ("TYMS/ENOSF1" . SPARSER::COLLECTION)
    ("as 2-polymorphism" . SPARSER::COLLECTION)
    ("polymorphism" . SPARSER::PROTEIN)
    ("the previously identified variants" . SPARSER::VARIANT)
    ("a 3-polymorphism" . SPARSER::COLLECTION)
    ("TYMS mRNA and/or protein expression" . SPARSER::COLLECTION)
    ("genotype and TYMS and ENSOF1" . SPARSER::COLLECTION)
    ("protein and RNAs" . SPARSER::COLLECTION)
    ("TYMS and ENOSF1" . SPARSER::COLLECTION)
    ("TYMS and ENSOF1" . SPARSER::COLLECTION)
    ("only 4 (2%) genotypes" . SPARSER::PROTEIN)
    ("The second DPYD toxicity-associated variant" . SPARSER::VARIANT)
    ("open chromatin and one" . SPARSER::COLLECTION)
    ("freq" . SPARSER::PROTEIN) ("SNP and SNP" . SPARSER::COLLECTION)
    ("Avastin" . SPARSER::DRUG)
    ("regarding inherited genetic biomarkers" . SPARSER::MOLECULE)
    ("the drug's" . SPARSER::DRUG) ("ins" . SPARSER::PROTEIN)
    ("previously reported DPYD toxicity variants" . SPARSER::VARIANT)
    ("TAF" . SPARSER::PROTEIN)
    ("candidate loci dihydropyrimidine dehydrogenase ( DPYD ) and thymidylate synthase ( TYMS )"
     . SPARSER::COLLECTION)
    ("dihydropyrimidine dehydrogenase ( DPYD )" . SPARSER::PROTEIN)
    ("The few proven genetic biomarkers" . SPARSER::MOLECULE)
    ("TYMS" . SPARSER::PROTEIN) ("DPYD" . SPARSER::PROTEIN)
    ("Capecitabine" . SPARSER::DRUG) ("1A" . SPARSER::PROTEIN)
    ("set2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("set1" . SPARSER::PROTEIN)
    ("enolase superfamily member 1" . SPARSER::PROTEIN)
    ("K4" . SPARSER::PROTEIN) ("chr1" . SPARSER::PROTEIN)
    ("v 3–4" . SPARSER::PROTEIN) ("ENOSF1" . SPARSER::PROTEIN)
    ("thymidylate synthase" . SPARSER::PROTEIN)
    ("dihydropyrimidine dehydrogenase" . SPARSER::PROTEIN)
    ("the universal protein" . SPARSER::PROTEIN)
    ("nano-ESI" . SPARSER::PROTEIN-PAIR) ("whose ion" . SPARSER::MOLECULE)
    ("mass tolerance ±0.5 Da and MS/MS tolerance ±0.5 Da"
     . SPARSER::COLLECTION)
    ("Da" . SPARSER::MOLECULE) ("Swiss-Prot" . SPARSER::COLLECTION)
    ("Prot" . SPARSER::PROTEIN) ("PKLs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKL" . SPARSER::PROTEIN) ("ion" . SPARSER::MOLECULE)
    ("an aqueous solution" . SPARSER::MOLECULE) ("Peptide" . SPARSER::PEPTIDE)
    ("ACN and TFA" . SPARSER::COLLECTION)
    ("ACN (50%) and AMBIC (100 mM)" . SPARSER::COLLECTION)
    ("nitrate" . SPARSER::MOLECULE)
    ("using enhanced chemiluminescent (ECL) reagent" . SPARSER::MOLECULE)
    ("HRP-conjugated secondary antibodies" . SPARSER::ANTIBODY)
    ("Trans-Blot" . SPARSER::COLLECTION) ("spin" . SPARSER::PROTEIN)
    ("leupeptin, protease and phosphatase" . SPARSER::COLLECTION)
    ("the antibody and lysate mixture" . SPARSER::COLLECTION)
    ("HEPES" . SPARSER::MOLECULE) ("RPMI" . SPARSER::PROTEIN)
    ("Sigma-Aldrich" . SPARSER::PROTEIN-PAIR) ("ACN" . SPARSER::PROTEIN)
    ("acetonitrile" . SPARSER::MOLECULE) ("FA" . SPARSER::PROTEIN)
    ("TFA" . SPARSER::PROTEIN) ("DTT" . SPARSER::MOLECULE)
    ("Dithiothreitol" . SPARSER::PROTEIN)
    ("protease and phosphatase" . SPARSER::COLLECTION)
    ("secondary antibodies" . SPARSER::ANTIBODY)
    ("peroxidase (HRP)" . SPARSER::PROTEIN) ("TX" . SPARSER::PROTEIN)
    ("Antibodies and reagents" . SPARSER::COLLECTION)
    ("Antibodies and Reagents" . SPARSER::COLLECTION)
    ("Reagents" . SPARSER::MOLECULE)
    ("inhibitor or activator" . SPARSER::COLLECTION)
    ("glycosyltransferase 25 family member 1 (GLT25D1) and prohibitin 2 (PHB2)"
     . SPARSER::COLLECTION)
    ("glycosyltransferase" . SPARSER::PROTEIN)
    ("insulin and amino acids" . SPARSER::COLLECTION)
    ("a multifunctional protein" . SPARSER::PROTEIN)
    ("60S acidic ribosomal protein P0 (RPLP0) and nucleolin (NCL)"
     . SPARSER::COLLECTION)
    ("NCL" . SPARSER::PROTEIN) ("mTOR and S6K2" . SPARSER::COLLECTION)
    ("proteins, hnRNP A2/B1 and Edc4" . SPARSER::COLLECTION)
    ("Edc4" . SPARSER::PROTEIN) ("Edc" . SPARSER::MOLECULE)
    ("their substrates and scaffold proteins [ xref ]" . SPARSER::COLLECTION)
    ("universal protein" . SPARSER::PROTEIN)
    ("Protein-Protein" . SPARSER::COLLECTION)
    ("hnRNP A2/B1- and dynamin 2-specific antibodies ( xref )"
     . SPARSER::COLLECTION)
    ("hnRNP A2/B1-" . SPARSER::PROTEIN)
    ("intact and purified mTORC1" . SPARSER::PROTEIN)
    ("Nano-LC" . SPARSER::COLLECTION) ("TCLs" . SPARSER::PROTEIN)
    ("Component" . SPARSER::COMPONENT) ("the anti-raptor" . SPARSER::ANTIBODY)
    ("both the raptor and rictor IP" . SPARSER::COLLECTION)
    ("raptor IP and vice versa" . SPARSER::COLLECTION)
    ("raptor and rictor antibodies" . SPARSER::COLLECTION)
    ("IP or antibody" . SPARSER::COLLECTION)
    ("monoclonal myc-tag antibody" . SPARSER::ANTIBODY)
    ("hnRNP" . SPARSER::PROTEIN)
    ("proline-rich AKT substrate 40 kDa (PRAS40) and DEP-domain-containing mTOR-interacting protein (Deptor)"
     . SPARSER::COLLECTION)
    ("G protein beta subunit-like (GβL), proline-rich AKT substrate 40 kDa (PRAS40) and DEP-domain-containing mTOR-interacting protein (Deptor)"
     . SPARSER::COLLECTION)
    ("Regulatory associated proteins" . SPARSER::PROTEIN)
    ("macrolide" . SPARSER::MOLECULE)
    ("hnRNP A2/B1 and dynamin 2" . SPARSER::COLLECTION)
    ("These new mTORC1" . SPARSER::PROTEIN)
    ("family member 1 and prohibitin 2" . SPARSER::COLLECTION)
    ("glyceraldehyde" . SPARSER::PROTEIN) ("nucleolin" . SPARSER::PROTEIN)
    ("ribonucleoproteins" . SPARSER::PROTEIN) ("MS/MS" . SPARSER::COLLECTION)
    ("nano-LC" . SPARSER::COLLECTION) ("TOF" . SPARSER::PROTEIN)
    ("ESI" . SPARSER::PROTEIN) ("beta-glycerophosphate" . SPARSER::DRUG)
    ("PHB2" . SPARSER::PROTEIN) ("GLT25D1" . SPARSER::PROTEIN)
    ("DNM2" . SPARSER::PROTEIN)
    ("60S acidic ribosomal protein P0" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("S6K2" . SPARSER::PROTEIN) ("Dynamin 2" . SPARSER::PROTEIN)
    ("Heterogeneous nuclear ribonucleoproteins A2/B1" . SPARSER::PROTEIN)
    ("G protein beta subunit-like" . SPARSER::PROTEIN)
    ("kinase-related protein" . SPARSER::PROTEIN)
    ("hnRNP A2/B1" . SPARSER::PROTEIN) ("prohibitin 2" . SPARSER::PROTEIN)
    ("family member 1" . SPARSER::PROTEIN)
    ("oxoglutarate dehydrogenase" . SPARSER::PROTEIN)
    ("dynamin 2" . SPARSER::PROTEIN) ("protein 4" . SPARSER::PROTEIN)
    ("a unique activator" . SPARSER::ACTIVATOR)
    ("GATA, or AP-1 or Ets" . SPARSER::COLLECTION)
    ("AP-1 or Ets" . SPARSER::COLLECTION)
    ("its autoinhibitory B-box" . SPARSER::PROTEIN)
    ("Runx1 and SAP1" . SPARSER::COLLECTION)
    ("SAP1 and SRF" . SPARSER::COLLECTION)
    ("response element (SRE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("SRE" . SPARSER::PROTEIN) ("IRM" . SPARSER::PROTEIN)
    ("IRM-SRR" . SPARSER::COLLECTION) ("Pax5 and Ets1" . SPARSER::COLLECTION)
    ("-GGAG-3" . SPARSER::COLLECTION) ("RD and EID" . SPARSER::COLLECTION)
    ("Ets1•Runx1•CBFβ•TCRα quaternary complex" . SPARSER::BIO-COMPLEX)
    ("CBFβ and Ets1" . SPARSER::COLLECTION) ("Ets1-" . SPARSER::PROTEIN)
    ("Runx1 and Ets1" . SPARSER::COLLECTION)
    ("our ternary complex" . SPARSER::BIO-COMPLEX)
    ("Runx1 and IRM" . SPARSER::COLLECTION)
    ("Ets1 and DNA" . SPARSER::COLLECTION)
    ("Ets1 (296-441) and 16 base" . SPARSER::COLLECTION)
    ("Ets1 and Runx1" . SPARSER::COLLECTION) ("RD" . SPARSER::PROTEIN)
    ("Runt" . SPARSER::PROTEIN) ("serines" . SPARSER::AMINO-ACID)
    ("Ets" . SPARSER::HUMAN-PROTEIN-FAMILY) ("SRR" . SPARSER::PROTEIN)
    ("USF1" . SPARSER::PROTEIN) ("serum response factor" . SPARSER::PROTEIN)
    ("B-box" . SPARSER::PROTEIN) ("SAP1" . SPARSER::PROTEIN)
    ("stromelysin-1" . SPARSER::PROTEIN) ("mb-1" . SPARSER::PROTEIN)
    ("SC1" . SPARSER::PROTEIN) ("Pax5" . SPARSER::PROTEIN)
    ("min -1" . SPARSER::PROTEIN) ("ml -1" . SPARSER::PROTEIN)
    ("Mono Q" . SPARSER::DRUG) ("Myc3" . SPARSER::PROTEIN)
    ("AML1" . SPARSER::PROTEIN) ("TCR β" . SPARSER::PROTEIN)
    ("CBFβ" . SPARSER::PROTEIN) ("Ets1" . SPARSER::PROTEIN)
    ("Runx1" . SPARSER::PROTEIN)
    ("the pro-apoptotic Bcl-2 family proteins" . SPARSER::PROTEIN)
    ("MDM2 ( xref ) and BRCA2 ( xref )" . SPARSER::COLLECTION)
    ("Bcl-w, Mcl-1, Bcl-2, and Bcl-X" . SPARSER::COLLECTION)
    ("Bim, Puma and tBid" . SPARSER::COLLECTION) ("tBid" . SPARSER::PROTEIN)
    ("Bad" . SPARSER::PROTEIN) ("Bclw, Mcl-1, and Bcl-2" . SPARSER::COLLECTION)
    ("Bclw" . SPARSER::PROTEIN) ("BH2 and BH3 domains" . SPARSER::COLLECTION)
    ("severe line" . SPARSER::PROTEIN) ("Bcl-w or Mcl-1" . SPARSER::COLLECTION)
    ("anti-GST and anti-FLAG" . SPARSER::COLLECTION)
    ("pro-apoptotic BH3-only proteins" . SPARSER::PROTEIN)
    ("p53 and the anti-apoptotic Bcl-2 family proteins" . SPARSER::COLLECTION)
    ("pro-apoptotic effectors" . SPARSER::EFFECTOR)
    ("Bak and Bax" . SPARSER::COLLECTION) ("BH1-BH4" . SPARSER::COLLECTION)
    ("Pro-apoptotic Bcl-2 family proteins" . SPARSER::PROTEIN)
    ("Bak, Bax, and Bok" . SPARSER::COLLECTION) ("Bok" . SPARSER::PROTEIN)
    ("pro-apoptotic B-cell lymphoma 2 (Bcl-2) family proteins"
     . SPARSER::PROTEIN)
    ("various pro-apoptotic target genes" . SPARSER::GENE)
    ("Bax and Puma" . SPARSER::COLLECTION)
    ("light, and oncogene" . SPARSER::COLLECTION)
    ("Bcl-w and Mcl-1" . SPARSER::COLLECTION)
    ("Bcl-w, Mcl-1, and Bcl-2" . SPARSER::COLLECTION)
    ("proteins, Bcl-w, Mcl-1, and Bcl-2" . SPARSER::COLLECTION)
    ("tumor suppressor p53 and the anti-apoptotic Bcl-2 family proteins"
     . SPARSER::COLLECTION)
    ("MK3" . SPARSER::PROTEIN) ("TM 4" . SPARSER::PROTEIN)
    ("BH4" . SPARSER::PROTEIN-FAMILY) ("BH2" . SPARSER::MOLECULE)
    ("BH1" . SPARSER::PROTEIN) ("Bcl-X" . SPARSER::PROTEIN)
    ("Bcl-w" . SPARSER::PROTEIN) ("RA and TN" . SPARSER::COLLECTION)
    ("KC" . SPARSER::PROTEIN)
    ("metastatic CRC or other cancer types" . SPARSER::COLLECTION)
    ("metastatic CRC" . SPARSER::PROTEIN)
    ("DGKζ and RhoA" . SPARSER::COLLECTION)
    ("RhoA and DGKζ" . SPARSER::COLLECTION)
    ("DGKζ or DGKζ" . SPARSER::COLLECTION)
    ("at least two additional DGK isoforms" . SPARSER::ISOFORM)
    ("DGKζ and DGKζ" . SPARSER::COLLECTION)
    ("the former case" . SPARSER::PROTEIN)
    ("Rac1 or RhoA" . SPARSER::COLLECTION)
    ("polysomal PAK1 mRNA" . SPARSER::RNA)
    ("Rac1 or Cdc42" . SPARSER::COLLECTION)
    ("Rac or Cdc42" . SPARSER::COLLECTION)
    ("PAK1 and Rhotekin" . SPARSER::COLLECTION) ("Rhotekin" . SPARSER::PROTEIN)
    ("DGK" . SPARSER::PROTEIN) ("diacylglycerol (DAG)" . SPARSER::DAG)
    ("DGKs" . SPARSER::PROTEIN) ("Diacylglycerol" . SPARSER::PROTEIN)
    ("a biologically inactive cytosolic complex" . SPARSER::BIO-COMPLEX)
    ("RhoGDI" . SPARSER::PROTEIN)
    ("soluble cytosolic complexes" . SPARSER::BIO-COMPLEX)
    ("GDIs" . SPARSER::PROTEIN) ("Guanine" . SPARSER::PROTEIN)
    ("Asef" . SPARSER::PROTEIN) ("Cdc42, Rac1 and RhoA" . SPARSER::COLLECTION)
    ("Rac1 and RhoA" . SPARSER::COLLECTION)
    ("p21-activated kinase 1" . SPARSER::PROTEIN) ("ATA 3" . SPARSER::PROTEIN)
    ("Guanine nucleotide exchange factors" . SPARSER::GEF)
    ("exchange factor" . SPARSER::EXCHANGE-FACTOR)
    ("Rho family" . SPARSER::PROTEIN) ("DGKζ" . SPARSER::PROTEIN)
    ("Diacylglycerol kinase" . SPARSER::PROTEIN)
    ("Ser/Arg" . SPARSER::COLLECTION)
    ("Ser-allele and susceptibility" . SPARSER::COLLECTION)
    ("NM" . SPARSER::PROTEIN)
    ("the cyclindependent kinase (CDK) inhibitor" . SPARSER::INHIBITOR)
    ("Cip" . SPARSER::PROTEIN) ("kda" . SPARSER::PROTEIN)
    ("Ser-allele and Ser/Ser" . SPARSER::COLLECTION)
    ("Ser-allele or Ser/Ser" . SPARSER::COLLECTION)
    ("Arg/Ser" . SPARSER::COLLECTION) ("Ser/Ser" . SPARSER::COLLECTION)
    ("P21" . SPARSER::PROTEIN) ("CDKN1A" . SPARSER::PROTEIN)
    ("PD-1 and its ligands" . SPARSER::COLLECTION) ("PDL" . SPARSER::MOLECULE)
    ("IL-6 or TGF-β" . SPARSER::COLLECTION) ("fungi" . SPARSER::PROTEIN)
    ("an inflammatory cytokine" . SPARSER::PROTEIN)
    ("transcription factor, STAT3 and IL-23R" . SPARSER::COLLECTION)
    ("STAT3, and IL-23R" . SPARSER::COLLECTION)
    ("STAT3 and SOCS3" . SPARSER::COLLECTION)
    ("CD4 and IL-23R" . SPARSER::COLLECTION)
    ("autologous monocytes" . SPARSER::PROTEIN)
    ("TGF-β, IL-1 or IL-6" . SPARSER::COLLECTION) ("pg" . SPARSER::MOLECULE)
    ("Rv" . SPARSER::MOLECULE) ("TGF-β or IL-1 or IL-6" . SPARSER::COLLECTION)
    ("IL-1 or IL-6" . SPARSER::COLLECTION)
    ("IL-1, IL-6, TGF-β and IL-23" . SPARSER::COLLECTION)
    ("BCG" . SPARSER::DRUG) ("a proinflammatory cytokine" . SPARSER::PROTEIN)
    ("IL-17 and IFN-γ" . SPARSER::COLLECTION) ("PPD" . SPARSER::PROTEIN)
    ("tuberculin" . SPARSER::DRUG) ("RORγt" . SPARSER::PROTEIN)
    ("Foxp3" . SPARSER::PROTEIN) ("IL-27" . SPARSER::PROTEIN)
    ("programmed death ligand 1" . SPARSER::PROTEIN) ("Let-7" . SPARSER::RNA)
    ("CD5" . SPARSER::PROTEIN) ("CXCL13" . SPARSER::PROTEIN)
    ("H37" . SPARSER::PROTEIN) ("ULBP1" . SPARSER::PROTEIN)
    ("NKG2D" . SPARSER::PROTEIN) ("IL-23R" . SPARSER::PROTEIN)
    ("IL-23p19" . SPARSER::PROTEIN) ("antivirals" . SPARSER::DRUG)
    ("IRF" . SPARSER::PROTEIN) ("OSU, Wa, DS-1 or KU" . SPARSER::COLLECTION)
    ("RIGI, MAVS, IRF3 and IRF7" . SPARSER::COLLECTION)
    ("MDA-5 and RIG-I" . SPARSER::COLLECTION)
    ("RIGI–MDA5" . SPARSER::COLLECTION) ("RIGI" . SPARSER::PROTEIN)
    ("SDS-" . SPARSER::PROTEIN) ("TRAFs" . SPARSER::PROTEIN)
    ("IRF3-BD" . SPARSER::PROTEIN-PAIR) ("Qin" . SPARSER::PROTEIN)
    ("other viral protein" . SPARSER::PROTEIN)
    ("proteosomal inhibitor" . SPARSER::INHIBITOR)
    ("IRFs and β-TrCP" . SPARSER::COLLECTION)
    ("MAVS and full length NSP1 (SA11)" . SPARSER::COLLECTION)
    ("OSU, KU, DS-1 or Wa" . SPARSER::COLLECTION)
    ("IRF5 and IR7" . SPARSER::COLLECTION)
    ("Wa and DS-1" . SPARSER::COLLECTION)
    ("IRF3, IRF5, IRF7, β-TrCP and RIG" . SPARSER::COLLECTION)
    ("RIG" . SPARSER::PROTEIN) ("para-" . SPARSER::PROTEIN-FAMILY)
    ("para" . SPARSER::PROTEIN-FAMILY) ("MG132 or DMSO" . SPARSER::COLLECTION)
    ("A5-16" . SPARSER::PROTEIN) ("cellular MAVS" . SPARSER::PROTEIN)
    ("RV strain A5-16" . SPARSER::PROTEIN)
    ("MAVS, phospho-IRF3 and COX IV" . SPARSER::COLLECTION)
    ("SDD-AGE" . SPARSER::COLLECTION) ("AGE" . SPARSER::PROTEIN)
    ("viral infection MAVS" . SPARSER::PROTEIN)
    ("CARD-TM" . SPARSER::COLLECTION) ("mini MAVS" . SPARSER::PROTEIN)
    ("pFLAG-CARD-TM" . SPARSER::COLLECTION) ("pCD-NSP1" . SPARSER::COLLECTION)
    ("FL-NSP1, pcD-NSP1-N100 and pcD-NSP1ΔIRF3BD" . SPARSER::COLLECTION)
    ("MAVS induced IFN-β" . SPARSER::PROTEIN)
    ("MAVS and either pcD-NSP1-N100 or pcD-NSP1-C395 or pcD-NSP1ΔIRF3BD and IFN-β and ISG56"
     . SPARSER::COLLECTION)
    ("C- terminal fragment (NSP1-C395) and MAVS protein ( xref )"
     . SPARSER::COLLECTION)
    ("Mini MAVS" . SPARSER::PROTEIN) ("FLAG or His" . SPARSER::COLLECTION)
    ("MAVS or NSP1" . SPARSER::COLLECTION)
    ("any other rotaviral protein" . SPARSER::PROTEIN)
    ("FLAG-MAVS" . SPARSER::COLLECTION) ("NSP1-MAVS" . SPARSER::COLLECTION)
    ("MAVS-TBK1" . SPARSER::COLLECTION) ("TBK1 and MAVS" . SPARSER::COLLECTION)
    ("MAVS and TBK1" . SPARSER::COLLECTION)
    ("NSP1 and MAVS" . SPARSER::COLLECTION) ("5D" . SPARSER::PROTEIN)
    ("a phosphomimetic form" . SPARSER::FORM)
    ("TBK1 and IRF3-5D" . SPARSER::COLLECTION)
    ("IRF3-5D" . SPARSER::COLLECTION) ("OSU" . SPARSER::PROTEIN)
    ("OSU-NSP1" . SPARSER::COLLECTION)
    ("IRF-3 and NF-kB" . SPARSER::COLLECTION) ("pRL-TK" . SPARSER::COLLECTION)
    ("NFκB–luc" . SPARSER::COLLECTION) ("pRL" . SPARSER::PROTEIN)
    ("luc" . SPARSER::PROTEIN) ("pCMV-MAVS" . SPARSER::COLLECTION)
    ("IRF3 and NFκB" . SPARSER::COLLECTION) ("IC" . SPARSER::PROTEIN)
    ("dA" . SPARSER::MOLECULE) ("IFN-β and ISG56" . SPARSER::COLLECTION)
    ("pFLAG-ubiquitin" . SPARSER::COLLECTION)
    ("pFLAG-NSP1" . SPARSER::COLLECTION) ("pFLAG-MAVS" . SPARSER::COLLECTION)
    ("MAVS and IRF3" . SPARSER::COLLECTION) ("Wa" . SPARSER::MOLECULE)
    ("pcD-NSP1" . SPARSER::COLLECTION) ("NSP1-NSP5" . SPARSER::COLLECTION)
    ("NSPs" . SPARSER::PROTEIN)
    ("viral nonstructural proteins" . SPARSER::PROTEIN)
    ("hpi" . SPARSER::PROTEIN) ("the same viral protein" . SPARSER::PROTEIN)
    ("IRFs" . SPARSER::PROTEIN) ("RIG-I/MDA5-MAVS" . SPARSER::COLLECTION)
    ("p53 and TRAF2" . SPARSER::COLLECTION) ("VP" . SPARSER::PROTEIN)
    ("two nonstructural proteins" . SPARSER::PROTEIN)
    ("MAVS/IPS-1" . SPARSER::COLLECTION) ("TLR3/TRIF" . SPARSER::COLLECTION)
    ("RIG-I/MDA-5-MAVS" . SPARSER::COLLECTION) ("PKR" . SPARSER::PROTEIN)
    ("IFN-β and other IFN" . SPARSER::COLLECTION)
    ("NF-κB and IRF-3" . SPARSER::COLLECTION)
    ("IRF3 and NF-κB" . SPARSER::COLLECTION)
    ("prion" . SPARSER::PROTEIN-FAMILY)
    ("IPS-1/VISA/Cardif" . SPARSER::COLLECTION)
    ("dsRNA and 5" . SPARSER::COLLECTION)
    ("RIG-I and MDA-5" . SPARSER::COLLECTION)
    ("RNA and DNA" . SPARSER::COLLECTION)
    ("receptor (NLR)" . SPARSER::RECEPTOR)
    ("receptor (TLR)" . SPARSER::RECEPTOR) ("RLR" . SPARSER::PROTEIN)
    ("NLR" . SPARSER::PROTEIN) ("Nod" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Mitochondrial Antiviral Signaling protein (MAVS)" . SPARSER::PROTEIN)
    ("PAMPs" . SPARSER::PROTEIN)
    ("ubiquitin conjugating enzymes" . SPARSER::PROTEIN-FAMILY)
    ("β-TrCP" . SPARSER::PROTEIN) ("COX IV" . SPARSER::PROTEIN)
    ("interferon beta" . SPARSER::PROTEIN) ("IL8" . SPARSER::PROTEIN)
    ("ISG56" . SPARSER::PROTEIN) ("DS-1" . SPARSER::PROTEIN)
    ("NSP5" . SPARSER::PROTEIN) ("NSP2" . SPARSER::PROTEIN)
    ("Iκbα" . SPARSER::PROTEIN) ("NSP3" . SPARSER::PROTEIN)
    ("MDA5" . SPARSER::PROTEIN)
    ("TNF receptor associated factor 2" . SPARSER::PROTEIN)
    ("TRAF2" . SPARSER::PROTEIN)
    ("Non-structural protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("VP1" . SPARSER::PROTEIN) ("Protein kinase R" . SPARSER::PROTEIN)
    ("IRF-3" . SPARSER::PROTEIN)
    ("mitochondrial antiviral signaling protein" . SPARSER::PROTEIN)
    ("MDA-5" . SPARSER::PROTEIN)
    ("Melanoma Differentiation-Associated protein 5" . SPARSER::PROTEIN)
    ("Retinoic Acid" . SPARSER::MOLECULE)
    ("RIG-I-like receptor" . SPARSER::PROTEIN) ("NSP1" . SPARSER::PROTEIN)
    ("non-structural protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Mitochondrial Antiviral Signaling protein" . SPARSER::PROTEIN)
    ("RNA helicases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a functional p53" . SPARSER::PROTEIN)
    ("MI-219 and Nutlin-3" . SPARSER::COLLECTION)
    ("cyclin-CDK2" . SPARSER::COLLECTION)
    ("MDM2 and capsaicin" . SPARSER::COLLECTION)
    ("MDM2 and p53" . SPARSER::COLLECTION) ("pGL3-p53" . SPARSER::COLLECTION)
    ("Given p21 and Bax" . SPARSER::COLLECTION)
    ("p21 and Bax" . SPARSER::COLLECTION)
    ("a pro-apoptotic protein" . SPARSER::PROTEIN)
    ("p21, Bax and cleaved-caspase3" . SPARSER::COLLECTION)
    ("shRNA" . SPARSER::PROTEIN)
    ("serine and/or threonines" . SPARSER::COLLECTION)
    ("threonines" . SPARSER::AMINO-ACID)
    ("several pro-apoptotic proteins" . SPARSER::PROTEIN)
    ("neuropathic pain" . SPARSER::PROTEIN) ("vanilloid" . SPARSER::DRUG)
    ("the principal pungent component" . SPARSER::COMPONENT)
    ("p53-shRNA" . SPARSER::PROTEIN-PAIR)
    ("p53 and MDM2" . SPARSER::COLLECTION) ("capsaicin" . SPARSER::DRUG)
    ("Capsaicin" . SPARSER::DRUG) ("STAT-3" . SPARSER::PROTEIN)
    ("Nutlin-3" . SPARSER::DRUG) ("MI-219" . SPARSER::DRUG)
    ("PMD2" . SPARSER::MOLECULE) ("ribonuclease A" . SPARSER::PROTEIN)
    ("NH2" . SPARSER::MOLECULE) ("TRPV-1" . SPARSER::PROTEIN)
    ("viral proteins" . SPARSER::PROTEIN)
    ("hemagglutinin and M proteins" . SPARSER::COLLECTION)
    ("viral complexes" . SPARSER::BIO-COMPLEX)
    ("Cav-1 and DENV" . SPARSER::COLLECTION)
    ("caveolar membrane-specific lipids" . SPARSER::PROTEIN)
    ("glycosphingolipids" . SPARSER::MOLECULE)
    ("a non–raft-associated protein" . SPARSER::PROTEIN)
    ("hemagglutinin and neuraminidase" . SPARSER::COLLECTION)
    ("non–raft-associated proteins" . SPARSER::PROTEIN)
    ("NS3 and NS4A" . SPARSER::COLLECTION)
    ("Cav-1 and Flt-1suggest" . SPARSER::COLLECTION)
    ("the viral RNA" . SPARSER::RNA) ("NS2B and NS3" . SPARSER::COLLECTION)
    ("viral protein" . SPARSER::PROTEIN)
    ("lipid raft-resident proteins" . SPARSER::PROTEIN)
    ("NS2B, NS3, or NS5" . SPARSER::COLLECTION)
    ("anti-NS2B and anti-NS5" . SPARSER::COLLECTION)
    ("approximately 72 kDa" . SPARSER::PROTEIN)
    ("the viral proteins NS2B, NS3, and NS5" . SPARSER::COLLECTION)
    ("anti-NS2B, anti-NS3, and anti-NS5" . SPARSER::COLLECTION)
    ("NS2B, NS3, and NS5" . SPARSER::COLLECTION)
    ("NS3 and anti" . SPARSER::COLLECTION) ("anti" . SPARSER::PROTEIN)
    ("the viral replication complex" . SPARSER::BIO-COMPLEX)
    ("NS3, NS2B, and NS5" . SPARSER::COLLECTION)
    ("Cav-1 and dsRNA" . SPARSER::COLLECTION)
    ("proteins and lipid" . SPARSER::COLLECTION)
    ("Cav-1 or Flt-1" . SPARSER::COLLECTION)
    ("NS3, NS5, and NS2B" . SPARSER::COLLECTION) ("viral dsRNA" . SPARSER::RNA)
    ("Flt-1 and Cav-1" . SPARSER::COLLECTION)
    ("NS3pro-GFP" . SPARSER::COLLECTION) ("NS2B" . SPARSER::PROTEIN)
    ("NS3pro" . SPARSER::PROTEIN)
    ("NS3pro-green fluorescent protein (GFP)" . SPARSER::PROTEIN-PAIR)
    ("caveolar lipid" . SPARSER::LIPID)
    ("NS2BNS3pro-GFP, or NS2B-GFP" . SPARSER::COLLECTION)
    ("NS2B-GFP" . SPARSER::COLLECTION)
    ("NS2BNS3pro-GFP" . SPARSER::PROTEIN-PAIR)
    ("NS3pro-green fluorescent protein" . SPARSER::PROTEIN-PAIR)
    ("NS3, NS2B, or NS5" . SPARSER::COLLECTION)
    ("Cav-1, Flt-1, and transferrin receptor" . SPARSER::COLLECTION)
    ("TfR" . SPARSER::PROTEIN) ("lipid rafts anti-Flt1" . SPARSER::ANTIBODY)
    ("DRMs" . SPARSER::PROTEIN) ("NS3 and NS5" . SPARSER::COLLECTION)
    ("the viral proteins NS3 and NS2B" . SPARSER::COLLECTION)
    ("anti-Cav-1 and anti-Flt-1" . SPARSER::COLLECTION)
    ("viral double-stranded RNA" . SPARSER::RNA)
    ("Cav-1 and flotillin" . SPARSER::COLLECTION)
    ("Cav-1 and flotillin 1" . SPARSER::COLLECTION)
    ("factor-kappaB" . SPARSER::COLLECTION) ("clathrin" . SPARSER::PROTEIN)
    ("caveolin (Cav-1) or reggie proteins (flotillins)" . SPARSER::COLLECTION)
    ("flotillins" . SPARSER::PROTEIN-FAMILY)
    ("viral receptors" . SPARSER::PROTEIN)
    ("viral structural proteins" . SPARSER::PROTEIN)
    ("Nile" . SPARSER::PROTEIN)
    ("membrane-associated proteins" . SPARSER::PROTEIN)
    ("different lipids (glycerophospholipids, sphingolipids, and cholesterol) and different proteins"
     . SPARSER::COLLECTION)
    ("RNA helicase and nucleotide" . SPARSER::COLLECTION)
    ("triphosphatase" . SPARSER::PROTEIN)
    ("mature proteins" . SPARSER::PROTEIN)
    ("NS3 protease and host proteases" . SPARSER::COLLECTION)
    ("precursor protein, and capsid" . SPARSER::COLLECTION)
    ("NS1, NS2A, NS2B, NS3, NS4A, NS4B, and NS5" . SPARSER::COLLECTION)
    ("the viral envelope protein" . SPARSER::PROTEIN)
    ("Cav-1 and NS3" . SPARSER::COLLECTION)
    ("double-stranded viral RNA" . SPARSER::RNA) ("dsRNA" . SPARSER::RNA)
    ("NS3 and Cav-1" . SPARSER::COLLECTION)
    ("Cav-1 and Flt-1" . SPARSER::COLLECTION)
    ("The non-structural viral proteins NS3 and NS2B" . SPARSER::COLLECTION)
    ("NS3 and NS2B" . SPARSER::COLLECTION)
    ("Caveolin (Cav-1) and flotillin (Flt-1)" . SPARSER::COLLECTION)
    ("flotillin" . SPARSER::PROTEIN) ("Caveolin" . SPARSER::PROTEIN)
    ("sphingolipids" . SPARSER::MOLECULE) ("L protein" . SPARSER::PROTEIN)
    ("SP2" . SPARSER::PROTEIN)
    ("Fluorescein isothiocyanate" . SPARSER::MOLECULE)
    ("D-7" . SPARSER::PROTEIN) ("lipid droplet" . SPARSER::PROTEIN)
    ("fatty acid synthase" . SPARSER::PROTEIN)
    ("transferrin receptor" . SPARSER::PROTEIN) ("Flt1" . SPARSER::PROTEIN)
    ("flotillin 1" . SPARSER::PROTEIN) ("RNA polymerase" . SPARSER::PROTEIN)
    ("RNA helicase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NS4B" . SPARSER::PROTEIN) ("NS4A" . SPARSER::PROTEIN)
    ("NS2A" . SPARSER::PROTEIN) ("precursor protein" . SPARSER::PROTEIN)
    ("NS5" . SPARSER::PROTEIN) ("NS2" . SPARSER::PROTEIN)
    ("NS3" . SPARSER::PROTEIN) ("Flt-1" . SPARSER::PROTEIN)
    ("Cav-1" . SPARSER::PROTEIN) ("EAT-2 and PLCγ1" . SPARSER::COLLECTION)
    ("both EAT-2 and the mouse specific EAT-2 related protein"
     . SPARSER::COLLECTION)
    ("FYN and PLCγ" . SPARSER::COLLECTION) ("FYN" . SPARSER::PROTEIN)
    ("SHP-1 and SHP-2" . SPARSER::COLLECTION)
    ("SAP and SHIP" . SPARSER::COLLECTION)
    ("SHP1 and SHP2" . SPARSER::COLLECTION)
    ("CD244, NTB-A and CRACC" . SPARSER::COLLECTION)
    ("PLCγ1 or PLCγ2" . SPARSER::COLLECTION)
    ("linking surface receptors" . SPARSER::RECEPTOR)
    ("EAT-2 and PLCγ" . SPARSER::COLLECTION) ("LAT" . SPARSER::PROTEIN)
    ("substantially more unique peptides" . SPARSER::PEPTIDE)
    ("PTB" . SPARSER::PROTEIN)
    ("phosphotyrosine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("at least 3 unique peptides" . SPARSER::PEPTIDE)
    ("soluble SHP-2" . SPARSER::PROTEIN) ("tyrosines" . SPARSER::AMINO-ACID)
    ("FCR" . SPARSER::PROTEIN-FAMILY)
    ("phosphatase and SHP-2" . SPARSER::COLLECTION)
    ("SHIP-1, SHIP-2, SHP-1, SHP-2 and CSK" . SPARSER::COLLECTION)
    ("GRB-2 and PLCγ1" . SPARSER::COLLECTION)
    ("CD2 and NKp30" . SPARSER::COLLECTION)
    ("CD244 and CRACC" . SPARSER::COLLECTION)
    ("EAT-2 and SAP" . SPARSER::COLLECTION)
    ("CD2 (which contains multiple PxxP motifs for SH3 domain binding) and NKp30 (which associates with CD3ζ)"
     . SPARSER::COLLECTION)
    ("CD244, NTB-A, and CRACC" . SPARSER::COLLECTION)
    ("receptors and anti-CD58" . SPARSER::COLLECTION)
    ("Neither SAP nor EAT-2" . SPARSER::COLLECTION)
    ("EAT2/ERT" . SPARSER::COLLECTION)
    ("SAP, PLCγ1 and PLCγ2" . SPARSER::COLLECTION)
    ("pulldowns" . SPARSER::PROTEIN)
    ("phosphatases, SHP-1 and SHP-2" . SPARSER::COLLECTION)
    ("Ly108/NTB-A" . SPARSER::COLLECTION) ("SHIP" . SPARSER::PROTEIN)
    ("SAP, EAT-2 and ERT" . SPARSER::COLLECTION)
    ("PLCγ1 and the tyrosine" . SPARSER::COLLECTION)
    ("EAT-2/ERT" . SPARSER::COLLECTION) ("ERT" . SPARSER::PROTEIN)
    ("intracellular enzyme" . SPARSER::ENZYME) ("XLP" . SPARSER::PROTEIN)
    ("receptor and SIRPα" . SPARSER::COLLECTION)
    ("an activating kinase or an inhibitory phosphatase" . SPARSER::COLLECTION)
    ("ITIMs" . SPARSER::PROTEIN) ("ITAMs" . SPARSER::PROTEIN)
    ("longer peptides" . SPARSER::PEPTIDE)
    ("SAP or EAT-2" . SPARSER::COLLECTION)
    ("NTB-A (SLAMF6) and CRACC" . SPARSER::COLLECTION)
    ("CD244 (SLAMF4), NTB-A (SLAMF6) and CRACC" . SPARSER::COLLECTION)
    ("PLCγ1 and PLCγ2" . SPARSER::COLLECTION) ("CRACC" . SPARSER::PROTEIN)
    ("SAP and EAT-2" . SPARSER::COLLECTION) ("SAP" . SPARSER::PROTEIN)
    ("SLAM" . SPARSER::PROTEIN) ("SHP1" . SPARSER::PROTEIN)
    ("Phospho-Tyrosine" . SPARSER::MOLECULE) ("GRB-2" . SPARSER::PROTEIN)
    ("SHIP-2" . SPARSER::PROTEIN) ("CD3ζ" . SPARSER::PROTEIN)
    ("Fc receptor" . SPARSER::PROTEIN) ("EAT2" . SPARSER::PROTEIN)
    ("SAP – 2" . SPARSER::PROTEIN) ("CD58" . SPARSER::PROTEIN)
    ("P30" . SPARSER::DRUG) ("NKp30" . SPARSER::PROTEIN)
    ("S Protein" . SPARSER::PROTEIN) ("P20" . SPARSER::PROTEIN)
    ("P16885" . SPARSER::PROTEIN) ("P19174" . SPARSER::PROTEIN)
    ("SHIP-1" . SPARSER::PROTEIN) ("Ly108" . SPARSER::PROTEIN)
    ("PLCγ" . SPARSER::PROTEIN-FAMILY) ("SH2D1A" . SPARSER::PROTEIN)
    ("CD2" . SPARSER::PROTEIN) ("SIRPα" . SPARSER::PROTEIN)
    ("SHP-2" . SPARSER::PROTEIN) ("SLAMF6" . SPARSER::PROTEIN)
    ("NTB-A" . SPARSER::PROTEIN) ("SLAMF4" . SPARSER::PROTEIN)
    ("CD244" . SPARSER::PROTEIN) ("PLCγ2" . SPARSER::PROTEIN)
    ("PLCγ1" . SPARSER::PROTEIN) ("SLAMF7" . SPARSER::PROTEIN)
    ("EAT-2" . SPARSER::PROTEIN)
    ("A data-mining analytical approach MDR" . SPARSER::PROTEIN)
    ("MDR" . SPARSER::PROTEIN)
    ("genotypes and alleles of XRCC1 gene rs25487 and XPA gene rs1800975"
     . SPARSER::ALLELE)
    ("a single gene or a single polymorphism" . SPARSER::COLLECTION)
    ("a strong genetic component" . SPARSER::COMPONENT)
    ("Family" . SPARSER::PROTEIN-FAMILY)
    ("multiple hereditary and environmental modulators" . SPARSER::PROTEIN)
    ("XRCC1, XRCC2, XRCC3, XPA and APEX1" . SPARSER::COLLECTION)
    ("XPA" . SPARSER::PROTEIN) ("DNA ligase" . SPARSER::PROTEIN)
    ("carboxy-fluorescein" . SPARSER::DRUG)
    ("DNA repair enzyme" . SPARSER::PROTEIN)
    ("APEX nuclease" . SPARSER::PROTEIN)
    ("xeroderma pigmentosum" . SPARSER::PROTEIN)
    ("repair in Chinese hamster" . SPARSER::PROTEIN)
    ("complementing defective" . SPARSER::PROTEIN) ("G-G" . SPARSER::PROTEIN)
    ("G-G-C" . SPARSER::PROTEIN) ("XRCC2" . SPARSER::PROTEIN)
    ("hotspots" . SPARSER::PROTEIN) ("acute leukemia" . SPARSER::PROTEIN)
    ("HRAS" . SPARSER::PROTEIN)
    ("inactive GDP-bound form (Ras-GDP) and active GTP-bound form (Ras-GTP)"
     . SPARSER::COLLECTION)
    ("their epidemiological, clinicopathologic, and molecular biologic"
     . SPARSER::DRUG)
    ("Balb/c" . SPARSER::COLLECTION)
    ("both active RAS (Ras-GTP) and its downstream signaling molecule"
     . SPARSER::COLLECTION)
    ("wild-type KRAS ( KRAS -WT) and a well-known active KRAS mutant ( KRAS -G12V)"
     . SPARSER::COLLECTION)
    ("GA" . SPARSER::PROTEIN)
    ("glycine (amino acid 10) and alanine (amino acid 11)"
     . SPARSER::COLLECTION)
    ("glycine and alanine" . SPARSER::COLLECTION) ("GCT" . SPARSER::PROTEIN)
    ("GGA" . SPARSER::MOLECULE) ("flame" . SPARSER::PROTEIN)
    ("UK, Switzerland, and Spain" . SPARSER::COLLECTION)
    ("CRCs and missense" . SPARSER::COLLECTION)
    ("Raf-MEK-ERK" . SPARSER::COLLECTION)
    ("signal switch molecule called GTPase" . SPARSER::GTPASE)
    ("proto-oncoproteins" . SPARSER::PROTEIN-PAIR) ("mCRC" . SPARSER::PROTEIN)
    ("Raf-1" . SPARSER::PROTEIN) ("RAS family" . SPARSER::PROTEIN)
    ("Ras-GDP" . SPARSER::PROTEIN) ("A 15" . SPARSER::PROTEIN)
    ("A11" . SPARSER::PROTEIN) ("G10" . SPARSER::PROTEIN)
    ("RAS-GDP" . SPARSER::PROTEIN) ("RAS-GTP" . SPARSER::PROTEIN)
    ("5FU and cisplatin" . SPARSER::COLLECTION)
    ("cisplatin and radiotherapy xref" . SPARSER::COLLECTION)
    ("cisplatin and radiotherapy" . SPARSER::COLLECTION)
    ("moAb" . SPARSER::PROTEIN) ("a longer PFS" . SPARSER::PROTEIN)
    ("significantly longer PFS" . SPARSER::PROTEIN)
    ("a significantly longer PFS" . SPARSER::PROTEIN)
    ("wild type KRAS (codons 12, 13, 61 and 146) and BRAF (exons 11 and 15)"
     . SPARSER::COLLECTION)
    ("BRAF and PIK3CA" . SPARSER::COLLECTION)
    ("the main etiologic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("KRAS , BRAF and PIK3CA" . SPARSER::COLLECTION)
    ("BRAF or PIK3CA" . SPARSER::COLLECTION) ("SLB" . SPARSER::PROTEIN)
    ("GJ" . SPARSER::PROTEIN) ("CC" . SPARSER::PROTEIN)
    ("SMS" . SPARSER::PROTEIN) ("Hematoxylin and eosin" . SPARSER::COLLECTION)
    ("small-interfering RNA" . SPARSER::RNA) ("amine" . SPARSER::MOLECULE)
    ("Hematoxylin" . SPARSER::MOLECULE)
    ("a multimeric complex" . SPARSER::BIO-COMPLEX)
    ("JNK and p38" . SPARSER::COLLECTION)
    ("an attractive novel therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("poly-ADP" . SPARSER::PROTEIN) ("iniparib" . SPARSER::DRUG)
    ("immediate actionable targets" . SPARSER::TARGET-PROTEIN)
    ("JNK and FAK" . SPARSER::COLLECTION)
    ("RIP2 [ xref ] and the Src family" . SPARSER::COLLECTION)
    ("p-FAK" . SPARSER::COLLECTION) ("kinase ( FAK )" . SPARSER::KINASE)
    ("p38 or ERK" . SPARSER::COLLECTION) ("sh-RIP2" . SPARSER::COLLECTION)
    ("NOD" . SPARSER::PROTEIN) ("Omni-RIP2" . SPARSER::COLLECTION)
    ("si-RIP2" . SPARSER::PROTEIN-PAIR)
    ("significantly worse PFS" . SPARSER::PROTEIN)
    ("a key prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the larger tumor cohort" . SPARSER::MOLECULE)
    ("PFS and n" . SPARSER::COLLECTION) ("PR-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("both ERK [ xref ] and p-38 [ xref ]" . SPARSER::COLLECTION)
    ("labile" . SPARSER::PROTEIN)
    ("metalloproteinases, urokinase-type plasminogen activator, and cytokines"
     . SPARSER::COLLECTION)
    ("chemosensitizer" . SPARSER::DRUG) ("receptor (TNFR)" . SPARSER::RECEPTOR)
    ("NF-kappa" . SPARSER::COLLECTION)
    ("RIPK2, RICK and CARDIAK" . SPARSER::COLLECTION)
    ("CARD" . SPARSER::PROTEIN) ("carboxy" . SPARSER::MOLECULE)
    ("CARDIAK" . SPARSER::PROTEIN) ("RICK" . SPARSER::PROTEIN)
    ("Factor-kappaB" . SPARSER::COLLECTION) ("kappaB" . SPARSER::PROTEIN)
    ("an independent prognostic biomarker" . SPARSER::MOLECULE)
    ("progesterone-receptor" . SPARSER::COLLECTION) ("Htb" . SPARSER::DRUG)
    ("KIF14" . SPARSER::PROTEIN) ("pMD2" . SPARSER::MOLECULE)
    ("De-" . SPARSER::MOLECULE)
    ("urokinase-type plasminogen activator" . SPARSER::PROTEIN)
    ("RIPK2" . SPARSER::PROTEIN) ("estrogen-receptor" . SPARSER::PROTEIN)
    ("protein kinase 2" . SPARSER::PROTEIN)
    ("vinblastine, prednisone, or etoposide" . SPARSER::COLLECTION)
    ("prednisone and vinblastine" . SPARSER::COLLECTION)
    ("prednisone" . SPARSER::DRUG)
    ("vinblastine or etoposide" . SPARSER::COLLECTION)
    ("chemotactic cytokines" . SPARSER::PROTEIN)
    ("CD1a and langerin" . SPARSER::COLLECTION) ("clofarabine" . SPARSER::DRUG)
    ("cladribine" . SPARSER::PROTEIN) ("cytarabine" . SPARSER::MOLECULE)
    ("chemokines and cytokines" . SPARSER::COLLECTION)
    ("Ccl2, Ccl5, Il-6, Il-10, IFN-γ, and TGF-β" . SPARSER::COLLECTION)
    ("Ccl2" . SPARSER::PROTEIN) ("Ccl" . SPARSER::DRUG)
    ("pre-DCs" . SPARSER::COLLECTION) ("CDPs" . SPARSER::PROTEIN)
    ("lesional MHC II + CD11c + DCs" . SPARSER::PROTEIN)
    ("MHC II + CD11c + DCs" . SPARSER::PROTEIN)
    ("the BRAF-V600E conditional allele" . SPARSER::ALLELE)
    ("mainly MHC II + CD11c + DCs" . SPARSER::PROTEIN)
    ("differentiated tissue-resident DCs" . SPARSER::PROTEIN)
    ("conditional BRAF-V600E allele" . SPARSER::ALLELE)
    ("monocytes and myeloid" . SPARSER::COLLECTION)
    ("HSPC" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HLA-DR + CD11c + classical DCs" . SPARSER::PROTEIN)
    ("DCs, and CD3" . SPARSER::COLLECTION)
    ("HSPCs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("RDD" . SPARSER::PROTEIN-FAMILY)
    ("serial ECD" . SPARSER::PROTEIN)
    ("Factor" . SPARSER::HUMAN-PROTEIN-FAMILY) ("fascin" . SPARSER::PROTEIN)
    ("the single discordant case" . SPARSER::PROTEIN)
    ("base and orbit" . SPARSER::COLLECTION) ("orbit" . SPARSER::DRUG)
    ("whole-lesion genomic DNA (gDNA) and/or cell-specific Sanger sequencing of cDNA from purified langerin + cells"
     . SPARSER::COLLECTION)
    ("pathological DCs" . SPARSER::PROTEIN) ("ECD" . SPARSER::PROTEIN)
    ("Langerin" . SPARSER::PROTEIN) ("lectin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the pathological infiltrating DCs" . SPARSER::PROTEIN)
    ("Letter" . SPARSER::MOLECULE)
    ("pathological langerin + DCs" . SPARSER::PROTEIN)
    ("langerin" . SPARSER::PROTEIN) ("DCs" . SPARSER::PROTEIN)
    ("Siglec F" . SPARSER::PROTEIN) ("CD115" . SPARSER::PROTEIN)
    ("F10" . SPARSER::PROTEIN) ("CD16" . SPARSER::PROTEIN)
    ("c-kit" . SPARSER::PROTEIN) ("NK1.1" . SPARSER::PROTEIN)
    ("FOXP3" . SPARSER::PROTEIN) ("Flt3L" . SPARSER::PROTEIN)
    ("IL-11" . SPARSER::PROTEIN) ("CD127" . SPARSER::PROTEIN)
    ("CD90" . SPARSER::PROTEIN) ("CD38" . SPARSER::PROTEIN)
    ("CD123" . SPARSER::PROTEIN) ("BSL2" . SPARSER::PROTEIN)
    ("Il-10" . SPARSER::PROTEIN) ("Ccl5" . SPARSER::PROTEIN)
    ("CD56" . SPARSER::PROTEIN) ("BDCA2" . SPARSER::PROTEIN)
    ("HLA-DR" . SPARSER::PROTEIN) ("S100A" . SPARSER::PROTEIN)
    ("CD1a" . SPARSER::PROTEIN) ("CD103" . SPARSER::PROTEIN)
    ("CD207" . SPARSER::PROTEIN) ("CD11c" . SPARSER::PROTEIN)
    ("4E-BP1 or S6K1" . SPARSER::COLLECTION)
    ("cyclin D1, c-Myc, Bcl-2, Bcl-xL and eIF4B" . SPARSER::COLLECTION)
    ("cap-dependent mRNAs" . SPARSER::PROTEIN)
    ("cyclin D1 and c-Myc" . SPARSER::COLLECTION)
    ("cellular mRNAs" . SPARSER::PROTEIN)
    ("mTOR and its substrate" . SPARSER::COLLECTION)
    ("acute myelogenous leukemia" . SPARSER::PROTEIN)
    ("S6K1 and 4E-BP1" . SPARSER::COLLECTION)
    ("CDK and cyclin D1" . SPARSER::COLLECTION)
    ("CDK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a well-studied tumor suppressor" . SPARSER::SUPPRESSOR)
    ("total and phosphorylated 4E-BP1 and S6K1" . SPARSER::COLLECTION)
    ("4E-BP1 and S6K1" . SPARSER::COLLECTION)
    ("mTOR-siRNA" . SPARSER::COLLECTION)
    ("mTOR and miR-99a" . SPARSER::COLLECTION)
    ("insulin-like growth factor 1 receptor (IGF-1R) and mammalian target of rapamycin (mTOR)"
     . SPARSER::COLLECTION)
    ("miR-200c, and miR-10b" . SPARSER::COLLECTION)
    ("mTOR and its downstream phosphorylated proteins (p-4E-BP1 and p-S6K1)"
     . SPARSER::COLLECTION)
    ("p-4E-BP1" . SPARSER::PROTEIN-PAIR) ("c-Src-" . SPARSER::PROTEIN)
    ("its 3" . SPARSER::PROTEIN) ("estrogen receptor 1" . SPARSER::PROTEIN)
    ("SMARCD1" . SPARSER::PROTEIN) ("SMARCA5" . SPARSER::PROTEIN)
    ("TGF-beta" . SPARSER::PROTEIN) ("miR-200c" . SPARSER::MOLECULE)
    ("K1" . SPARSER::PROTEIN) ("DNMT1 and protein" . SPARSER::COLLECTION)
    ("the maintenance methyltransferase activity and not the de novo methyltransferase activity (which must be increase to promote a remethylation)"
     . SPARSER::COLLECTION)
    ("PDGF-B and K-ras" . SPARSER::COLLECTION)
    ("hTERT, K-ras , and MDR1" . SPARSER::COLLECTION)
    ("p21 and WT1" . SPARSER::COLLECTION)
    ("genes or oncogenes" . SPARSER::COLLECTION)
    ("Gata" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("specific DNMT inhibitors or unspecific DNMT1 inhibitors"
     . SPARSER::COLLECTION)
    ("unspecific DNMT1 inhibitors" . SPARSER::INHIBITOR)
    ("DNMT" . SPARSER::PROTEIN) ("DNMT1 or UHRF1" . SPARSER::COLLECTION)
    ("DNMT1 and UHRF1" . SPARSER::COLLECTION)
    ("p-UNOI-UHRF1" . SPARSER::COLLECTION) ("pORF-DNMT1" . SPARSER::COLLECTION)
    ("Astro#40-pUP" . SPARSER::COLLECTION)
    ("DNMT1 and/or UHRF1" . SPARSER::COLLECTION) ("amp" . SPARSER::PROTEIN)
    ("CGH" . SPARSER::PROTEIN)
    ("BAGE, hTERT, IRF7, KIR2DL4, Pax6, RIOK3, SYBL1 and WT1"
     . SPARSER::COLLECTION)
    ("BAGE, hTERT, Pax6 , and WT1" . SPARSER::COLLECTION)
    ("hTERT" . SPARSER::PROTEIN) ("BAGE" . SPARSER::PROTEIN)
    ("Astro#40/Astro#40-UP" . SPARSER::COLLECTION)
    ("Astro#40" . SPARSER::PROTEIN) ("Astro#40-UP" . SPARSER::COLLECTION)
    ("pCt" . SPARSER::PROTEIN) ("DNMT1, PCNA and UHRF1" . SPARSER::COLLECTION)
    ("DNMT1, UHRF1 and PCNA" . SPARSER::COLLECTION) ("pCT" . SPARSER::PROTEIN)
    ("mC" . SPARSER::PROTEIN) ("DNMT1/UHRF1" . SPARSER::COLLECTION)
    ("UP and UP" . SPARSER::COLLECTION) ("the mutated forms" . SPARSER::FORM)
    ("DNMT1/PCNA" . SPARSER::COLLECTION)
    ("PCNA (163–174) and UHRF1 (596–614)" . SPARSER::COLLECTION)
    ("pUP" . SPARSER::PROTEIN) ("UP" . SPARSER::PROTEIN)
    ("DNMT1/PCNA/UHRF1" . SPARSER::COLLECTION) ("tR − C" . SPARSER::PROTEIN)
    ("methyltransferase activity" . SPARSER::PROTEIN)
    ("Pax-6" . SPARSER::PROTEIN) ("Intelectin-1" . SPARSER::PROTEIN)
    ("sh-RNA" . SPARSER::RNA) ("PDGF-B" . SPARSER::PROTEIN)
    ("p11" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Del 1" . SPARSER::PROTEIN)
    ("SYBL1" . SPARSER::PROTEIN) ("RIOK3" . SPARSER::PROTEIN)
    ("Pax6" . SPARSER::PROTEIN) ("KIR2DL4" . SPARSER::PROTEIN)
    ("IRF7" . SPARSER::PROTEIN) ("UHRF1" . SPARSER::PROTEIN)
    ("LZ, LC and ZY" . SPARSER::COLLECTION)
    ("Smad3 and TGF-β1" . SPARSER::COLLECTION)
    ("deoxyribonucleic acid polymerase delta" . SPARSER::PROTEIN)
    ("the auxiliary protein" . SPARSER::PROTEIN) ("delta" . SPARSER::PROTEIN)
    ("ABT" . SPARSER::PROTEIN) ("TGF-β2 or TGF-β3" . SPARSER::COLLECTION)
    ("Smad3 and Smad7" . SPARSER::COLLECTION)
    ("pathological forms" . SPARSER::FORM)
    ("TGF-β1, Smad7, and Smad4" . SPARSER::COLLECTION)
    ("Smad3 and p-Smad3 protein" . SPARSER::COLLECTION)
    ("a heteromeric complex" . SPARSER::BIO-COMPLEX)
    ("Smad2 and Smad3" . SPARSER::COLLECTION)
    ("TGF-β1, TGF-β2, and TGF-β3" . SPARSER::COLLECTION)
    ("RI" . SPARSER::PROTEIN) ("Smad4, and Smad7" . SPARSER::COLLECTION)
    ("p-Smad3" . SPARSER::COLLECTION) ("p-Smad2" . SPARSER::COLLECTION)
    ("a suppressor or a promoter" . SPARSER::COLLECTION)
    ("Proliferating cell nuclear antigen" . SPARSER::PROTEIN)
    ("thrombospondin-1" . SPARSER::PROTEIN) ("TGF-β3" . SPARSER::PROTEIN)
    ("TGF-β2" . SPARSER::PROTEIN)
    ("proliferating cell nuclear antigen" . SPARSER::PROTEIN)
    ("Smad7" . SPARSER::PROTEIN) ("Smad4" . SPARSER::PROTEIN)
    ("Smad3" . SPARSER::PROTEIN) ("PDGFRα and receptor" . SPARSER::COLLECTION)
    ("Antibody" . SPARSER::ANTIBODY) ("PDGF/PDGFRα" . SPARSER::COLLECTION)
    ("VEGFA, HADC7, ITG and VCAN" . SPARSER::COLLECTION)
    ("VCAN" . SPARSER::PROTEIN) ("VEGFA" . SPARSER::PROTEIN)
    ("pAKT and pMAPK" . SPARSER::COLLECTION)
    ("tumor-associated MVD" . SPARSER::PROTEIN)
    ("PDGFRα, pAKT and pMAPK" . SPARSER::COLLECTION) ("MVD" . SPARSER::PROTEIN)
    ("PDGFAA" . SPARSER::PROTEIN)
    ("paclitaxel, docetaxel, and cisplatin" . SPARSER::COLLECTION)
    ("p-MAPK" . SPARSER::COLLECTION)
    ("PDGFRα and anti-phosphorylation" . SPARSER::COLLECTION)
    ("PDGF-AA and PDGF-BB" . SPARSER::COLLECTION) ("PDGFRs" . SPARSER::PROTEIN)
    ("Ras/mitogen-activated protein kinase" . SPARSER::COLLECTION)
    ("cellular chemotaxis" . SPARSER::PROTEIN)
    ("polypeptide" . SPARSER::PROTEIN)
    ("PDGF-AA, PDGF-AB, PDGF-BB, and PDGF-CC" . SPARSER::COLLECTION)
    ("PDGF-CC" . SPARSER::PROTEIN-PAIR) ("Spec" . SPARSER::PROTEIN)
    ("PDGFRα and PDGFRα" . SPARSER::COLLECTION) ("Hec1" . SPARSER::PROTEIN)
    ("deoxyuridine triphosphate" . SPARSER::MOLECULE)
    ("g protein" . SPARSER::PROTEIN)
    ("cis-diamminedichloroplatinum" . SPARSER::DRUG)
    ("PDGF-BB" . SPARSER::PROTEIN) ("PDGF-AB" . SPARSER::PROTEIN)
    ("PDGF-AA" . SPARSER::PROTEIN)
    ("Platelet-derived growth factor receptor alpha" . SPARSER::PROTEIN)
    ("a more normal vasculature" . SPARSER::PROTEIN)
    ("resected BM retained concordant MGMT" . SPARSER::PROTEIN)
    ("concordant low MGMT" . SPARSER::PROTEIN) ("TMAs" . SPARSER::MOLECULE)
    ("lapatinib" . SPARSER::DRUG) ("A brain-tropic subline" . SPARSER::PROTEIN)
    ("O 6 -methylguanine-DNA-methyltransferase (MGMT)" . SPARSER::PROTEIN)
    ("-methylguanine" . SPARSER::MOLECULE)
    ("a brain-tropic subline" . SPARSER::PROTEIN)
    ("brain-permeable alkylating agent" . SPARSER::MOLECULE)
    ("estrogen receptor and progesterone receptor" . SPARSER::COLLECTION)
    ("brain-tropic human epidermal growth factor receptor 2 (HER2)-positive Jimt1-BR3 and triple negative 231-BR-EGFP sublines"
     . SPARSER::COLLECTION)
    ("brain-tropic human epidermal growth factor receptor 2 (HER2)-positive Jimt1-BR3"
     . SPARSER::PROTEIN)
    ("MGMT" . SPARSER::PROTEIN) ("methylguanine" . SPARSER::MOLECULE)
    ("BR" . SPARSER::PROTEIN) ("Temozolomide" . SPARSER::DRUG)
    ("O 6 -methylguanine-DNA-methyltransferase" . SPARSER::PROTEIN)
    ("brain)" . SPARSER::PROTEIN) ("BR1" . SPARSER::PROTEIN)
    ("Br3" . SPARSER::PROTEIN) ("α-Tubulin" . SPARSER::PROTEIN)
    ("BR3" . SPARSER::PROTEIN) ("epididymal fat" . SPARSER::PROTEIN)
    ("IRS2-KO" . SPARSER::COLLECTION) ("STZ-" . SPARSER::PROTEIN)
    ("T-cell and macrophage" . SPARSER::COLLECTION)
    ("hepatocytes and microglia" . SPARSER::COLLECTION)
    ("glucose sensing and glucose-stimulated insulin secretion"
     . SPARSER::COLLECTION)
    ("PDX1 target genes and beta-cell functional impairment"
     . SPARSER::COLLECTION)
    ("factors and gene" . SPARSER::COLLECTION)
    ("AKT and MST1" . SPARSER::COLLECTION)
    ("MST1 and its cleaved form" . SPARSER::COLLECTION)
    ("MST1 and AKT" . SPARSER::COLLECTION)
    ("caspase-9 and -3" . SPARSER::COLLECTION)
    ("Bax/Bcl-2" . SPARSER::COLLECTION)
    ("the dominant-negative form" . SPARSER::FORM)
    ("IFN-γ-" . SPARSER::PROTEIN) ("Fas ligand-" . SPARSER::PROTEIN)
    ("TNF-α-" . SPARSER::PROTEIN)
    ("an essential apoptotic molecule" . SPARSER::MOLECULE)
    ("insulin/glucose" . SPARSER::COLLECTION) ("dl" . SPARSER::MOLECULE)
    ("RIP-" . SPARSER::PROTEIN) ("RIP" . SPARSER::PROTEIN)
    ("flox" . SPARSER::PROTEIN) ("Cre-lox" . SPARSER::COLLECTION)
    ("Pdx1 and Glut2" . SPARSER::COLLECTION) ("rim" . SPARSER::PROTEIN)
    ("insulin and glucagon" . SPARSER::COLLECTION)
    ("glucagon" . SPARSER::PROTEIN)
    ("progressive hyperglycemia" . SPARSER::PROTEIN)
    ("SLC2A2, GCK, Ins1 and Ins2" . SPARSER::COLLECTION)
    ("palmitate ( xref ) and H 2 O 2 ( xref )" . SPARSER::COLLECTION)
    ("caspase-3- and PARP-" . SPARSER::COLLECTION)
    ("caspase-3-" . SPARSER::PROTEIN) ("IL/IF" . SPARSER::COLLECTION)
    ("IF-" . SPARSER::PROTEIN)
    ("a phosphospecific antibody" . SPARSER::ANTIBODY)
    ("PDX1-GST" . SPARSER::COLLECTION) ("cytokine-" . SPARSER::PROTEIN)
    ("PDX1 and myc-tagged" . SPARSER::COLLECTION)
    ("PDX1 and MST1" . SPARSER::COLLECTION)
    ("MST1 and PDX1" . SPARSER::COLLECTION)
    ("GLP-1 and glibenclamide" . SPARSER::COLLECTION)
    ("glibenclamide" . SPARSER::DRUG) ("secretagogues" . SPARSER::MOLECULE)
    ("the predominant glucose transporter" . SPARSER::PROTEIN)
    ("Ins1 or Ins2" . SPARSER::COLLECTION)
    ("SLC2A2 and GCK" . SPARSER::COLLECTION) ("GCK" . SPARSER::PROTEIN)
    ("Insulin" . SPARSER::PROTEIN) ("Stress-induced kinases" . SPARSER::KINASE)
    ("JNK and glycogen synthase kinase-3" . SPARSER::COLLECTION)
    ("hyperglycemia" . SPARSER::PROTEIN) ("AKT- and JNK" . SPARSER::COLLECTION)
    ("AKT-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MST1 and Myr-AKT1" . SPARSER::COLLECTION)
    ("BIM, BAX, BCL-2, BCL-xL and caspase-3" . SPARSER::COLLECTION)
    ("pro-apoptotic Bax" . SPARSER::PROTEIN)
    ("Bcl-2 and Bcl-xL" . SPARSER::COLLECTION)
    ("Bcl-xL/Bax" . SPARSER::COLLECTION) ("Bcl-2/Bax" . SPARSER::COLLECTION)
    ("MST" . SPARSER::PROTEIN)
    ("JNK, PARP- and caspase-3" . SPARSER::COLLECTION)
    ("PARP-" . SPARSER::PROTEIN) ("JNK-" . SPARSER::PROTEIN)
    ("LY294002 and triciribine" . SPARSER::COLLECTION)
    ("GSK3 and FOXO1" . SPARSER::COLLECTION)
    ("triciribine" . SPARSER::MOLECULE)
    ("GLP-1 and insulin" . SPARSER::COLLECTION)
    ("glucagon-like peptide 1 (GLP1) or insulin" . SPARSER::COLLECTION)
    ("glucose- and cytokine-induced pMST1" . SPARSER::COLLECTION)
    ("Myr" . SPARSER::MOLECULE)
    ("JNK (SP600125) and caspase (z-DEVD-fmk) inhibitors"
     . SPARSER::COLLECTION)
    ("JNK and caspase-3" . SPARSER::COLLECTION)
    ("z-DEVD-fmk" . SPARSER::COLLECTION)
    ("Caspase-3 and JNK" . SPARSER::COLLECTION)
    ("hyperglycemic high fat/ high sucrose" . SPARSER::MOLECULE)
    ("Lepr" . SPARSER::PROTEIN) ("IL-1β/IFNγ:IL/IF" . SPARSER::BIO-COMPLEX)
    ("IPF1, IDX1, STF1, or IUF1" . SPARSER::COLLECTION)
    ("homeobox" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Kinase (JNK)" . SPARSER::KINASE)
    ("Sterile-20-like" . SPARSER::PROTEIN-PAIR)
    ("KRS" . SPARSER::PROTEIN-FAMILY) ("Fas/FasL" . SPARSER::COLLECTION)
    ("perforin" . SPARSER::PROTEIN)
    ("novel pro-apoptotic kinase" . SPARSER::KINASE)
    ("Mst1" . SPARSER::PROTEIN) ("Sterile" . SPARSER::PROTEIN-FAMILY)
    ("PO4" . SPARSER::PROTEIN) ("tuba1" . SPARSER::PROTEIN)
    ("INS2" . SPARSER::PROTEIN) ("INS1" . SPARSER::PROTEIN)
    ("BCL2L11" . SPARSER::PROTEIN) ("pdx1" . SPARSER::PROTEIN)
    ("phospho-serine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("phospho-threonine" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("GSK-3" . SPARSER::PROTEIN) ("glut2" . SPARSER::PROTEIN)
    ("L-Glutamine" . SPARSER::MOLECULE) ("NaHCO 3" . SPARSER::DRUG)
    ("rat 2" . SPARSER::PROTEIN) ("Palmitic acid" . SPARSER::MOLECULE)
    ("peptide 1" . SPARSER::PROTEIN) ("PI-3 kinase" . SPARSER::PROTEIN)
    ("Pcif1" . SPARSER::PROTEIN) ("Glut2" . SPARSER::PROTEIN)
    ("Pdx1" . SPARSER::PROTEIN) ("Cytochrome c" . SPARSER::PROTEIN)
    ("PH2" . SPARSER::PROTEIN) ("SLC2A2" . SPARSER::PROTEIN)
    ("Ins2" . SPARSER::PROTEIN) ("Ins1" . SPARSER::PROTEIN)
    ("GLP-1" . SPARSER::PROTEIN) ("GLP1" . SPARSER::PROTEIN)
    ("glucagon-like peptide 1" . SPARSER::PROTEIN) ("Casp3" . SPARSER::PROTEIN)
    ("IFNγ" . SPARSER::PROTEIN) ("MODY4" . SPARSER::PROTEIN)
    ("IUF1" . SPARSER::PROTEIN) ("STF1" . SPARSER::PROTEIN)
    ("IDX1" . SPARSER::PROTEIN) ("IPF1" . SPARSER::PROTEIN)
    ("STK4" . SPARSER::PROTEIN) ("anti-diabetic" . SPARSER::DRUG)
    ("proto-oncogenes and oncogenes" . SPARSER::COLLECTION)
    ("Bim and Bcl-2" . SPARSER::COLLECTION) ("transporter" . SPARSER::PROTEIN)
    ("particular HO-1" . SPARSER::PROTEIN)
    ("a microsomal enzyme" . SPARSER::ENZYME)
    ("oxygenase (HO)" . SPARSER::PROTEIN) ("HO" . SPARSER::PROTEIN)
    ("Hmox1 and Bim" . SPARSER::COLLECTION)
    ("improper mTORC2/AKT/FoxO" . SPARSER::COLLECTION)
    ("effector or effector" . SPARSER::COLLECTION)
    ("IL-2/IFN-γ" . SPARSER::COLLECTION)
    ("AKT and FoxO1/3" . SPARSER::COLLECTION) ("Puromycin" . SPARSER::DRUG)
    ("mTORC2/AKT/FoxO" . SPARSER::COLLECTION)
    ("AKT and FoxO" . SPARSER::COLLECTION)
    ("monoallelic T-cell" . SPARSER::PROTEIN)
    ("CD3/CD28" . SPARSER::COLLECTION) ("TSC1 and TSC2" . SPARSER::COLLECTION)
    ("plate-bound anti-CD3/CD28 mAbs" . SPARSER::DRUG) ("mAbs" . SPARSER::DRUG)
    ("IL-7/IL-15" . SPARSER::COLLECTION)
    ("anti-CD3/CD28" . SPARSER::COLLECTION)
    ("IL-2 and IFN-γ" . SPARSER::COLLECTION) ("/IFN-γ" . SPARSER::COLLECTION)
    ("EM" . SPARSER::PROTEIN) ("Tsc1" . SPARSER::PROTEIN)
    ("focal malformations" . SPARSER::PROTEIN)
    ("malformations" . SPARSER::PROTEIN)
    ("Complex (TSC)" . SPARSER::BIO-COMPLEX)
    ("hamartin, and TSC2" . SPARSER::COLLECTION)
    ("CD4 and CD8" . SPARSER::COLLECTION) ("pMD 2" . SPARSER::MOLECULE)
    ("CCR7" . SPARSER::PROTEIN) ("l11" . SPARSER::PROTEIN)
    ("Caspase 8" . SPARSER::PROTEIN) ("Brefeldin A" . SPARSER::MOLECULE)
    ("mental retardation" . SPARSER::PROTEIN) ("4EBP-1" . SPARSER::PROTEIN)
    ("Pt1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Pt3" . SPARSER::PROTEIN)
    ("IL-15" . SPARSER::PROTEIN) ("IL-7" . SPARSER::PROTEIN)
    ("HLA-A" . SPARSER::HUMAN-PROTEIN-FAMILY) ("FoxP3" . SPARSER::PROTEIN)
    ("CD27" . SPARSER::PROTEIN) ("CD62L" . SPARSER::PROTEIN)
    ("CD45RA" . SPARSER::PROTEIN) ("Pt 3" . SPARSER::PROTEIN)
    ("Pt 1-2" . SPARSER::PROTEIN)
    ("mammalian Target Of Rapamycin" . SPARSER::PROTEIN)
    ("the most representative susceptibility genes" . SPARSER::GENE)
    ("IL-12, IL-23-, and type-1" . SPARSER::COLLECTION)
    ("IL-23-" . SPARSER::PROTEIN) ("autoantibody" . SPARSER::PROTEIN)
    ("Blk" . SPARSER::PROTEIN) ("SNPs" . SPARSER::PROTEIN)
    ("MSA" . SPARSER::PROTEIN) ("aminoacyl-tRNA" . SPARSER::PROTEIN)
    ("autoantibodies" . SPARSER::PROTEIN)
    ("at least two major components" . SPARSER::COMPONENT)
    ("the A (risk) allele" . SPARSER::ALLELE) ("C8orf13" . SPARSER::PROTEIN)
    ("C8orf13–BLK" . SPARSER::COLLECTION)
    ("BLK mRNA and high levels of C8orf13 mRNA" . SPARSER::COLLECTION)
    ("p22" . SPARSER::PROTEIN) ("SLE and RA" . SPARSER::COLLECTION)
    ("the most well-documented risk genes" . SPARSER::GENE)
    ("the polymorphic genes" . SPARSER::GENE) ("SSc" . SPARSER::PROTEIN)
    ("systemic lupus erythematosus" . SPARSER::PROTEIN)
    ("skeletal muscles" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BLK" . SPARSER::PROTEIN) ("HLA" . SPARSER::PROTEIN)
    ("IRF5" . SPARSER::PROTEIN)
    ("interferon regulatory factor 5" . SPARSER::PROTEIN)
    ("STAT-4" . SPARSER::PROTEIN) ("DRB1" . SPARSER::PROTEIN)
    ("p23" . SPARSER::PROTEIN)
    ("major histocompatibility complex" . SPARSER::PROTEIN)
    ("multi-SNPs" . SPARSER::PROTEIN-PAIR)
    ("the p53 Arg72Pro and PTEN polymorphisms" . SPARSER::COLLECTION)
    ("the MDM2 SNP309 and the p53 Arg72Pro polymorphisms"
     . SPARSER::COLLECTION)
    ("a functional SNP and a marker SNP" . SPARSER::COLLECTION)
    ("TC" . SPARSER::PROTEIN) ("a unique variant" . SPARSER::VARIANT)
    ("a functional SNP" . SPARSER::PROTEIN)
    ("an antiapoptotic protein kinase" . SPARSER::PROTEIN)
    ("p53, MDM2, PTEN and AKT1" . SPARSER::COLLECTION)
    ("P53, MDM2, PTEN and AKT1" . SPARSER::COLLECTION)
    ("PTEN , AKT 1, MDM2 and p53" . SPARSER::COLLECTION)
    ("strong LD" . SPARSER::PROTEIN) ("CAA" . SPARSER::PROTEIN)
    ("multi-SNP" . SPARSER::COLLECTION)
    ("PTEN, AKT1 , MDM2 and p53" . SPARSER::COLLECTION)
    ("two known tumor suppressor proteins (p53 and PTEN) and two oncoproteins (MDM2 and AKT1)"
     . SPARSER::COLLECTION)
    ("p53 and PTEN" . SPARSER::COLLECTION)
    ("MDM2 and AKT1" . SPARSER::COLLECTION)
    ("phosphatase and tensin homolog (PTEN)" . SPARSER::PROTEIN)
    ("genes and oncogenes" . SPARSER::COLLECTION)
    ("PTEN, AKT1, MDM2 and p53" . SPARSER::COLLECTION)
    ("Pro/Pro" . SPARSER::COLLECTION) ("Arg/Pro" . SPARSER::COLLECTION)
    ("PTEN , AKT1 , MDM2 and p53" . SPARSER::COLLECTION)
    ("NPC" . SPARSER::MOLECULE)
    ("Phosphatase and tensin homolog (PTEN)" . SPARSER::PROTEIN)
    ("v-akt murine thymoma viral oncogene homolog 1" . SPARSER::PROTEIN)
    ("MDM2 protein" . SPARSER::PROTEIN) ("AKT 1" . SPARSER::PROTEIN)
    ("SNP3" . SPARSER::PROTEIN) ("SNP2" . SPARSER::PROTEIN)
    ("SNP309" . SPARSER::PROTEIN) ("SNP1" . SPARSER::PROTEIN)
    ("double minute 2" . SPARSER::PROTEIN)
    ("amino acid or glucose withdrawal" . SPARSER::COLLECTION)
    ("glucose and amino acids" . SPARSER::COLLECTION)
    ("rapamycin or Torin1" . SPARSER::COLLECTION)
    ("TREX" . SPARSER::PROTEIN-FAMILY) ("FLP" . SPARSER::PROTEIN)
    ("mTOR-Deptor" . SPARSER::COLLECTION) ("mTORs" . SPARSER::PROTEIN)
    ("FAT" . SPARSER::PROTEIN) ("S6K1/Akt1" . SPARSER::COLLECTION)
    ("MTOR or RHEB" . SPARSER::COLLECTION) ("RHEB" . SPARSER::PROTEIN)
    ("only mutant mTOR" . SPARSER::PROTEIN)
    ("PI3K-p110α" . SPARSER::COLLECTION)
    ("mTORC1 and/or mTORC2" . SPARSER::COLLECTION)
    ("mTORC1 or mTORC2" . SPARSER::COLLECTION)
    ("S6K1/4EBP1" . SPARSER::COLLECTION)
    ("S6K1, 4EBP1, or Akt1" . SPARSER::COLLECTION)
    ("almost every gene" . SPARSER::PROTEIN)
    ("KRAS , PIK3CA , or AKT" . SPARSER::COLLECTION)
    ("Deptor" . SPARSER::PROTEIN) ("PI3K-Akt-mTOR" . SPARSER::COLLECTION)
    ("pRK5" . SPARSER::PROTEIN) ("bis-tris" . SPARSER::MOLECULE)
    ("NPRL2" . SPARSER::PROTEIN) ("GDC0980" . SPARSER::DRUG)
    ("FKBP12" . SPARSER::PROTEIN) ("Rheb1" . SPARSER::PROTEIN)
    ("phosphatidylinositol-4,5-bisphosphate 3-kinase"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("tor2" . SPARSER::PROTEIN) ("neurofibromin 1" . SPARSER::PROTEIN)
    ("FGFR3 and GpA TM domain dimeric fractions" . SPARSER::COMPONENT)
    ("FGFR3 and GpA" . SPARSER::COLLECTION)
    ("The measured dimeric fractions" . SPARSER::COMPONENT)
    ("GpA" . SPARSER::PROTEIN) ("glycophorin" . SPARSER::PROTEIN-FAMILY)
    ("the monomeric state" . SPARSER::BIO-STATE)
    ("the dimeric fractions" . SPARSER::COMPONENT) ("x" . SPARSER::PROTEIN)
    ("acceptors" . SPARSER::MOLECULE) ("Hudson" . SPARSER::PROTEIN)
    ("gauge" . SPARSER::PROTEIN-FAMILY)
    ("the dimeric fraction and the total protein concentration"
     . SPARSER::COLLECTION)
    ("the dimeric fraction" . SPARSER::COMPONENT)
    ("mCherry or eYFP" . SPARSER::COLLECTION)
    ("monomers and dimers" . SPARSER::COLLECTION)
    ("detergents" . SPARSER::MOLECULE) ("HER/Neu/ErbB2" . SPARSER::COLLECTION)
    ("HER2/Neu" . SPARSER::COLLECTION) ("ErbB2/Neu" . SPARSER::COLLECTION)
    ("HER/Neu" . SPARSER::COLLECTION) ("membrane protein" . SPARSER::PROTEIN)
    ("G -3" . SPARSER::PROTEIN) ("pcDNA3.1" . SPARSER::PROTEIN)
    ("pcDNA 3.1" . SPARSER::PROTEIN) ("PKA-" . SPARSER::PROTEIN)
    ("wild type human c-Jun (c-Jun WT) or human c-Jun" . SPARSER::COLLECTION)
    ("C/EBPβ and C/EBPδ" . SPARSER::COLLECTION)
    ("EPAC1 and PKA" . SPARSER::COLLECTION)
    ("the probe-associated c-Jun" . SPARSER::PROTEIN)
    ("probe-associated c-Jun protein" . SPARSER::PROTEIN)
    ("c-Jun or STAT3" . SPARSER::COLLECTION) ("pc-Jun" . SPARSER::COLLECTION)
    ("the SOCS3 promoter containing the putative AP1 and distal STAT binding sites (SOCS3 WT; xref )"
     . SPARSER::COLLECTION)
    ("homodimers and heterodimers" . SPARSER::COLLECTION)
    ("EPAC1 or PKA" . SPARSER::COLLECTION) ("homodimers" . SPARSER::HOMODIMER)
    ("SOCS" . SPARSER::PROTEIN)
    ("the minimal SOCS3 promoter" . SPARSER::PROMOTER)
    ("AP1, STAT and SP3" . SPARSER::COLLECTION)
    ("a proximal STAT" . SPARSER::PROTEIN) ("a distal STAT" . SPARSER::PROTEIN)
    ("IBMX" . SPARSER::MOLECULE) ("PDE" . SPARSER::PROTEIN)
    ("the adenylate cyclase activator forskolin and the cyclic AMP-specific phosphodiesterases inhibitor"
     . SPARSER::COLLECTION)
    ("rolipram" . SPARSER::DRUG) ("phosphodiesterases" . SPARSER::PROTEIN)
    ("c-Jun and AP1" . SPARSER::COLLECTION)
    ("PKA and EPAC1" . SPARSER::COLLECTION)
    ("MAP kinases, ERK and JNK" . SPARSER::COLLECTION)
    ("factors, C/EBPβ and C/EBPδ" . SPARSER::COLLECTION)
    ("EBP" . SPARSER::PROTEIN)
    ("nucleotide exchange factor (GEF)" . SPARSER::NUCLEOTIDE-EXCHANGE-FACTOR)
    ("Rap1 and Rap2" . SPARSER::COLLECTION) ("EPAC" . SPARSER::PROTEIN)
    ("factors and the mitogen-activated protein (MAP) kinase"
     . SPARSER::COLLECTION)
    ("adenosine and prostaglandin" . SPARSER::COLLECTION)
    ("phospho-null c-Jun" . SPARSER::PROTEIN)
    ("the SOCS3 minimal promoter" . SPARSER::PROMOTER)
    ("PU.1" . SPARSER::PROTEIN) ("COS1" . SPARSER::PROTEIN)
    ("PDE4" . SPARSER::PROTEIN) ("EPAC2" . SPARSER::PROTEIN)
    ("streptavidin-agarose" . SPARSER::DRUG)
    ("β-Mercaptoethanol" . SPARSER::MOLECULE)
    ("IL6 receptor" . SPARSER::PROTEIN) ("SP3" . SPARSER::PROTEIN)
    ("C/EBPβ" . SPARSER::PROTEIN)
    ("enhancer binding protein" . SPARSER::PROTEIN) ("Rap2" . SPARSER::PROTEIN)
    ("Rap1" . SPARSER::PROTEIN)
    ("nucleotide exchange factor" . SPARSER::NUCLEOTIDE-EXCHANGE-FACTOR)
    ("SOCS3" . SPARSER::PROTEIN) ("EPAC1" . SPARSER::PROTEIN)
    ("p42/44, PKC and Ca 2+" . SPARSER::COLLECTION)
    ("chenodeoxycholic acid and deoxycholic acid" . SPARSER::COLLECTION)
    ("BBB and iii" . SPARSER::COLLECTION) ("galactosamine" . SPARSER::MOLECULE)
    ("p42/44 or EGFR" . SPARSER::COLLECTION)
    ("MAPK p42/44 and the bile acid receptor FXR [ xref ]"
     . SPARSER::COLLECTION)
    ("Rho, PKC, MAPK p42/44 and the bile acid receptor FXR [ xref ]"
     . SPARSER::COLLECTION)
    ("claudin-5, ZO-1 or ZO-2" . SPARSER::COLLECTION)
    ("the tight junction or tight junction-associated proteins"
     . SPARSER::COLLECTION)
    ("tight junction-associated proteins" . SPARSER::PROTEIN)
    ("occludin, ZO-1, and ZO-2" . SPARSER::COLLECTION)
    ("after chenodeoxycholic acid or deoxycholic acid treatment occludin, ZO-1 and ZO-2 immunoreactivity"
     . SPARSER::COLLECTION)
    ("chenodeoxycholic acid or deoxycholic acid" . SPARSER::COLLECTION)
    ("Chenodeoxycholic acid or deoxycholic acid" . SPARSER::COLLECTION)
    ("sham serum-treated monolayers" . SPARSER::PROTEIN)
    ("albumin" . SPARSER::PROTEIN) ("SMI" . SPARSER::PROTEIN)
    ("aims" . SPARSER::PROTEIN) ("ERK1/2 and JNK" . SPARSER::COLLECTION)
    ("farnesoid X receptor (FXR)" . SPARSER::PROTEIN)
    ("BBB" . SPARSER::PROTEIN)
    ("the tight junction proteins occludin [ xref ] or claudin-5 [ xref ]"
     . SPARSER::COLLECTION)
    ("Cerebral endothelial cells form" . SPARSER::FORM)
    ("occludin and claudin-5" . SPARSER::COLLECTION)
    ("ZO-1 and ZO-2" . SPARSER::COLLECTION)
    ("occludin, ZO-1 and ZO-2" . SPARSER::COLLECTION)
    ("occludin" . SPARSER::PROTEIN) ("D-galactosamine" . SPARSER::MOLECULE)
    ("myosin light chain kinase" . SPARSER::PROTEIN)
    ("rho kinase" . SPARSER::PROTEIN) ("bile acid receptor" . SPARSER::PROTEIN)
    ("phospho-tyrosine" . SPARSER::MOLECULE)
    ("Chenodeoxycholic acid" . SPARSER::MOLECULE)
    ("Glyceraldehyde-3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("claudin 5" . SPARSER::PROTEIN) ("phenol-red" . SPARSER::DRUG)
    ("p42/44" . SPARSER::PROTEIN) ("Rho kinase" . SPARSER::PROTEIN)
    ("NSC23766" . SPARSER::DRUG) ("protein expressed in" . SPARSER::PROTEIN)
    ("TGR5" . SPARSER::PROTEIN) ("claudin-5" . SPARSER::PROTEIN)
    ("ZO-2" . SPARSER::PROTEIN) ("chenodeoxycholic acid" . SPARSER::MOLECULE)
    ("Valine" . SPARSER::AMINO-ACID) ("Perfluorooctane" . SPARSER::DRUG)
    ("PAH" . SPARSER::PROTEIN) ("Isoleucine" . SPARSER::AMINO-ACID)
    ("Oestradiol" . SPARSER::MOLECULE) ("Aromatase" . SPARSER::PROTEIN)
    ("individual gene" . SPARSER::GENE)
    ("larger study group" . SPARSER::MOLECULE)
    ("vitellogenin" . SPARSER::PROTEIN)
    ("a larger study group" . SPARSER::MOLECULE)
    ("n and rs10046" . SPARSER::COLLECTION)
    ("A2 allele and BC risk [ xref ]" . SPARSER::COLLECTION)
    ("Meta" . SPARSER::PROTEIN) ("CYP17 A1/A2" . SPARSER::COLLECTION)
    ("both the CYP1B1 high activity Val and COMT low activity Met"
     . SPARSER::COLLECTION)
    ("the variant COMT Met allele and risk" . SPARSER::COLLECTION)
    ("more reactive metabolites" . SPARSER::PROTEIN)
    ("reactive metabolites" . SPARSER::PROTEIN)
    ("the homozygous variant CYP1B1 Val/Val genotype" . SPARSER::PROTEIN)
    ("a potential carcinogenic estrogen metabolite" . SPARSER::MOLECULE)
    ("CYP1A1 and PFASs" . SPARSER::COLLECTION) ("TCDD" . SPARSER::PROTEIN)
    ("subsequently oxidative DNA" . SPARSER::DNA)
    ("at least one Val allele" . SPARSER::ALLELE)
    ("more carcinogenic metabolites" . SPARSER::PROTEIN)
    ("genotoxic and mutagenic metabolites" . SPARSER::PROTEIN)
    ("CYP1A1 and CYP17" . SPARSER::COLLECTION)
    ("Leu/Val " . SPARSER::COLLECTION) ("Leu/Leu" . SPARSER::COLLECTION)
    ("at least one variant CYP1B1 Val allele" . SPARSER::ALLELE)
    ("at least one CYP17 A2 allele" . SPARSER::ALLELE)
    ("at least one variant COMT Met allele" . SPARSER::ALLELE)
    ("at least one variant CYP1A1 Val allele" . SPARSER::ALLELE)
    ("PFASs and PCBs" . SPARSER::COLLECTION)
    ("PCBs and PFASs" . SPARSER::COLLECTION)
    ("at least one variant CYP17 A2 allele" . SPARSER::ALLELE)
    ("the common homozygous A1/A1 genotype" . SPARSER::PROTEIN)
    ("the common homozygous Ile/Ile genotype" . SPARSER::PROTEIN)
    ("at least one CYP1A1 variant Val allele" . SPARSER::ALLELE)
    ("Ile/Ile" . SPARSER::COLLECTION) ("Val/Val" . SPARSER::COLLECTION)
    ("Ile/Val " . SPARSER::COLLECTION) ("age " . SPARSER::PROTEIN)
    ("The longer (TTTA)n allele" . SPARSER::ALLELE)
    ("at least one CYP17 A2 variant allele" . SPARSER::ALLELE)
    ("A2/A2" . SPARSER::COLLECTION) ("age and cotinine" . SPARSER::COLLECTION)
    ("CYP19 TTTA(11–13)" . SPARSER::PROTEIN) ("TTTA" . SPARSER::PROTEIN)
    ("CYP1B1 Leu432Val and COMT Val158Met polymorphisms" . SPARSER::COLLECTION)
    ("Allele and genotype frequencies" . SPARSER::COLLECTION)
    ("Allele" . SPARSER::ALLELE) ("cotinine" . SPARSER::DRUG)
    ("CYP1A1, CYP1B1, COMT, CYP17 and CYP19" . SPARSER::COLLECTION)
    ("pesticides" . SPARSER::MOLECULE) ("PFASs" . SPARSER::PROTEIN)
    ("substances" . SPARSER::SUBSTANCE)
    ("gene and gene-environment" . SPARSER::COLLECTION)
    ("PCB" . SPARSER::PROTEIN)
    ("The relatively longer alleles" . SPARSER::ALLELE)
    ("postmenopausal circulating E2" . SPARSER::MOLECULE)
    ("tetra" . SPARSER::MOLECULE)
    ("testosterone and androstenedione" . SPARSER::COLLECTION)
    ("oestradiol and oestrone" . SPARSER::COLLECTION)
    ("ref" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("testosterone, progesterone, oestrone, and oestradiol"
     . SPARSER::COLLECTION)
    ("oestrone" . SPARSER::DRUG)
    ("pregnenolone and progesterone" . SPARSER::COLLECTION)
    ("androgen and oestrogen" . SPARSER::COLLECTION)
    ("pregnenolone" . SPARSER::PROTEIN) ("Met/Met" . SPARSER::COLLECTION)
    ("COMT and codon" . SPARSER::COLLECTION) ("Val " . SPARSER::AMINO-ACID)
    ("methionine" . SPARSER::AMINO-ACID) ("Leu " . SPARSER::AMINO-ACID)
    ("Ile " . SPARSER::AMINO-ACID) ("isoleucine" . SPARSER::AMINO-ACID)
    ("AHH" . SPARSER::PROTEIN)
    ("some environmental chemicals" . SPARSER::MOLECULE)
    ("AhR" . SPARSER::PROTEIN)
    ("biphenyls (PCBs) and aryl amines" . SPARSER::COLLECTION)
    ("epoxide" . SPARSER::MOLECULE) ("aryl" . SPARSER::PROTEIN)
    ("dioxin" . SPARSER::MOLECULE) ("PAHs" . SPARSER::PROTEIN)
    ("catechol" . SPARSER::PROTEIN) ("oestradiol" . SPARSER::MOLECULE)
    ("CYP1A1 and CYP1B1" . SPARSER::COLLECTION)
    ("xenobiotics" . SPARSER::MOLECULE)
    ("Catechol-O-methyltransferase (COMT)" . SPARSER::PROTEIN)
    ("lyase" . SPARSER::PROTEIN) ("CYP" . SPARSER::PROTEIN)
    ("BRCA1 and BRCA2" . SPARSER::COLLECTION)
    ("PCBs and OCPs" . SPARSER::COLLECTION)
    ("CYP1B1 and CYP19" . SPARSER::COLLECTION) ("PFOA" . SPARSER::PROTEIN)
    ("perfluorooctane" . SPARSER::DRUG)
    ("CYP1A1 (Val) and CYP17 (A1)" . SPARSER::COLLECTION)
    ("CYP1A1, CYP1B1, COMT and CYP17" . SPARSER::COLLECTION)
    ("COMT" . SPARSER::PROTEIN) ("xenobiotic" . SPARSER::MOLECULE)
    ("PCBs" . SPARSER::PROTEIN) ("biphenyls" . SPARSER::DRUG)
    ("PFAS" . SPARSER::PROTEIN) ("POPs" . SPARSER::MOLECULE)
    ("Persistent organic pollutant" . SPARSER::MOLECULE)
    ("Cytochrome P450" . SPARSER::PROTEIN-FAMILY)
    ("Aryl hydrocarbon" . SPARSER::PROTEIN) ("OR 2" . SPARSER::PROTEIN)
    ("manganese superoxide dismutase" . SPARSER::PROTEIN)
    ("GSTP1" . SPARSER::PROTEIN) ("A2 " . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("wt/wt " . SPARSER::PROTEIN) ("1A2 " . SPARSER::PROTEIN)
    ("slow) " . SPARSER::PROTEIN) ("fast) " . SPARSER::PROTEIN)
    ("a 15 " . SPARSER::PROTEIN) ("DNA Polymerase" . SPARSER::PROTEIN)
    ("wt/wt" . SPARSER::PROTEIN) ("aryl hydrocarbon" . SPARSER::PROTEIN)
    ("aryl hydrocarbon receptor" . SPARSER::PROTEIN)
    ("OH-" . SPARSER::MOLECULE)
    ("Catechol-O-methyltransferase" . SPARSER::PROTEIN)
    ("1A1" . SPARSER::PROTEIN) ("CYP17 A1" . SPARSER::PROTEIN)
    ("A2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CYP17A1" . SPARSER::PROTEIN)
    ("CYP17" . SPARSER::PROTEIN) ("CYP1B1" . SPARSER::PROTEIN)
    ("CYP1A1" . SPARSER::PROTEIN) ("EG" . SPARSER::PROTEIN)
    ("ET" . SPARSER::PROTEIN) ("SRG" . SPARSER::PROTEIN)
    ("LP" . SPARSER::PROTEIN) ("JG" . SPARSER::PROTEIN)
    ("pre- and post-treatment" . SPARSER::COLLECTION)
    ("a significant prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("this prognostic biomarker" . SPARSER::MOLECULE)
    ("APC, Axin, GSK3β and casein" . SPARSER::COLLECTION)
    ("the only prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("available samples pre-" . SPARSER::PROTEIN) ("HR " . SPARSER::PROTEIN)
    ("Preoperative CRT" . SPARSER::PROTEIN) ("TRG" . SPARSER::PROTEIN)
    ("the tumoral specimen pre-" . SPARSER::PROTEIN)
    ("post-CRT" . SPARSER::COLLECTION)
    ("β-catenin or E-cadherin" . SPARSER::COLLECTION)
    ("anal verge" . SPARSER::PROTEIN) ("verge" . SPARSER::PROTEIN)
    ("RT and 5-fluorouracil" . SPARSER::COLLECTION)
    ("β-catenin and E-cadherin" . SPARSER::COLLECTION)
    ("RT or CRT" . SPARSER::COLLECTION) ("TCF/LEF" . SPARSER::COLLECTION)
    ("LEF" . SPARSER::PROTEIN) ("TCF" . SPARSER::PROTEIN)
    ("HMG" . SPARSER::PROTEIN) ("casein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Axin" . SPARSER::PROTEIN)
    ("a key multifunctional adaptor protein" . SPARSER::PROTEIN)
    ("pelvic RT" . SPARSER::PROTEIN) ("TME" . SPARSER::PROTEIN)
    ("capecitabine" . SPARSER::DRUG)
    ("nuclear β-catenin and membranous E-cadherin" . SPARSER::COLLECTION)
    ("preoperative CRT" . SPARSER::PROTEIN)
    ("membranous E-cadherin" . SPARSER::PROTEIN)
    ("β-catenin/E-cadherin" . SPARSER::COLLECTION) ("LARC" . SPARSER::PROTEIN)
    ("TRG1" . SPARSER::PROTEIN) ("TRG 3" . SPARSER::PROTEIN)
    ("βcatenin" . SPARSER::PROTEIN) ("5-FU" . SPARSER::PROTEIN)
    ("TRG 1" . SPARSER::PROTEIN) ("TCF-LEF" . SPARSER::PROTEIN-FAMILY)
    ("5FU" . SPARSER::DRUG) ("SK" . SPARSER::PROTEIN) ("VI" . SPARSER::PROTEIN)
    ("DNP" . SPARSER::DRUG) ("genotypes and haplotypes" . SPARSER::COLLECTION)
    ("INCA" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("their biological subtypes" . SPARSER::PROTEIN)
    ("the Arg/Arg genotype and two short alleles (< 20 CA repeats)"
     . SPARSER::COLLECTION)
    ("the Lys/Lys or Arg/Lys variant genotypes and any long allele (≥ 20 CA repeats)"
     . SPARSER::COLLECTION)
    ("metastatic colon cancer" . SPARSER::PROTEIN)
    ("at least one 497 Arg allele and both (CA)n" . SPARSER::COLLECTION)
    ("at least one 497 Arg allele" . SPARSER::ALLELE)
    ("genotypes and Lys" . SPARSER::COLLECTION)
    ("PIK3-Akt-mTOR" . SPARSER::COLLECTION)
    ("integrins [ xref ] and metaloproteinases [ xref ]" . SPARSER::COLLECTION)
    ("the tumoral (CA)n genotype" . SPARSER::PROTEIN)
    ("the smaller allele" . SPARSER::ALLELE)
    ("various possible heterozygous genotypes" . SPARSER::PROTEIN)
    ("the other biological subtypes" . SPARSER::PROTEIN)
    ("genotype and PR" . SPARSER::COLLECTION)
    ("the homozygous variant genotype Lys/Lys" . SPARSER::COLLECTION)
    ("the reference homozygous genotype Arg/Arg" . SPARSER::COLLECTION)
    ("the heterozygous genotype Arg/Lys" . SPARSER::COLLECTION)
    ("Lys/Lys" . SPARSER::COLLECTION) ("Arg/Lys" . SPARSER::COLLECTION)
    ("myc , fos , and jun" . SPARSER::COLLECTION)
    ("jun" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("fos" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Arginine" . SPARSER::AMINO-ACID)
    ("dinucleotide" . SPARSER::MOLECULE) ("p12" . SPARSER::PROTEIN)
    ("TK" . SPARSER::PROTEIN)
    ("new prognostic factors or potential targets" . SPARSER::COLLECTION)
    ("new prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("new biomarkers" . SPARSER::MOLECULE) ("ERR" . SPARSER::PROTEIN)
    ("pN2 or pN3" . SPARSER::COLLECTION) ("Arg/Arg" . SPARSER::COLLECTION)
    ("Variant" . SPARSER::VARIANT)
    ("the (CA)n and R497K polymorphisms" . SPARSER::COLLECTION)
    ("epidermal growth factor receptor (EGFR)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Akt-mTOR" . SPARSER::PROTEIN) ("POP7" . SPARSER::PROTEIN)
    ("Epidermal growth factor Receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Progesterone Receptor" . SPARSER::PROTEIN)
    ("proto-oncogenes" . SPARSER::PROTO-ONCOGENE) ("pN3" . SPARSER::PROTEIN)
    ("pN2" . SPARSER::PROTEIN) ("TTL" . SPARSER::PROTEIN)
    ("CYL" . SPARSER::PROTEIN) ("DL" . SPARSER::MOLECULE)
    ("progesterone receptor (PR)" . SPARSER::PROTEIN)
    ("both the insulin-like growth factor 1 receptor
[ xref ] and epidermal growth factor receptor
[ xref ]"
     . SPARSER::COLLECTION)
    ("a hypermethylated BRCA1 promoter" . SPARSER::PROMOTER)
    ("BRCA and GR" . SPARSER::COLLECTION)
    ("BRCA1 and GR" . SPARSER::COLLECTION)
    ("the main known hereditary factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Progesterone receptor" . SPARSER::PROTEIN)
    ("tumor suppressor gene" . SPARSER::PROTEIN)
    ("ER-alpha" . SPARSER::PROTEIN) ("NELF-B" . SPARSER::PROTEIN)
    ("MT and AH" . SPARSER::COLLECTION) ("AH" . SPARSER::MOLECULE)
    ("RK, EEH and ID" . SPARSER::COLLECTION)
    ("RS and RK" . SPARSER::COLLECTION) ("RK" . SPARSER::PROTEIN)
    ("PAX8 and the RTKs" . SPARSER::COLLECTION) ("anion" . SPARSER::MOLECULE)
    ("A recent PAX8" . SPARSER::PROTEIN) ("FLT" . SPARSER::PROTEIN)
    ("PAX8-PPAR-γ" . SPARSER::COLLECTION)
    ("PAX8 and MET" . SPARSER::COLLECTION)
    ("PAX8 and the receptor tyrosine kinases MET and RON"
     . SPARSER::COLLECTION)
    ("Annexin V and PI" . SPARSER::COLLECTION)
    ("RON and PAX8" . SPARSER::COLLECTION) ("p-MET" . SPARSER::COLLECTION)
    ("factors and MET and RON" . SPARSER::COLLECTION)
    ("MET/RON" . SPARSER::COLLECTION)
    ("a key transcription factor" . SPARSER::PROTEIN)
    ("PAX8-" . SPARSER::PROTEIN) ("MET/PAX8" . SPARSER::COLLECTION)
    ("PAX5 and PAX8" . SPARSER::COLLECTION) ("PAX" . SPARSER::PROTEIN)
    ("A much wider impact" . SPARSER::PROTEIN)
    ("ALK/ROS1" . SPARSER::COLLECTION) ("MET and RON" . SPARSER::COLLECTION)
    ("MET and EGL5" . SPARSER::COLLECTION) ("EGL" . SPARSER::PROTEIN)
    ("MET (also RON) and PAX8" . SPARSER::COLLECTION)
    ("PAX8, MET, and RON" . SPARSER::COLLECTION)
    ("MET, RON and PAX8" . SPARSER::COLLECTION) ("RON" . SPARSER::PROTEIN)
    ("PAX 8" . SPARSER::PROTEIN) ("perinuclear region" . SPARSER::PROTEIN)
    ("H2O2" . SPARSER::DRUG) ("PAX2" . SPARSER::PROTEIN)
    ("BCl2" . SPARSER::PROTEIN) ("p25" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SU11274" . SPARSER::DRUG) ("PAX5" . SPARSER::PROTEIN)
    ("reducing FOXM1 or its down-stream target Stathmin" . SPARSER::COLLECTION)
    ("FOXM1 or Stathmin" . SPARSER::COLLECTION)
    ("pcDNA3.1-Stathmin" . SPARSER::PROTEIN-PAIR)
    ("FOXM1–Stathmin" . SPARSER::COLLECTION)
    ("FOXM1 and docetaxel" . SPARSER::COLLECTION)
    ("platinum and fluoropyrimidine" . SPARSER::COLLECTION)
    ("FOXM1 and its downstream target Stathmin" . SPARSER::COLLECTION)
    ("thiostrepton and docetaxel" . SPARSER::COLLECTION)
    ("docetaxel and thiostrepton" . SPARSER::COLLECTION)
    ("Thiostrepton" . SPARSER::PROTEIN) ("pc3" . SPARSER::PROTEIN)
    ("Stathmin-siRNA" . SPARSER::COLLECTION)
    ("FOXM1, Stathmin and MCAK" . SPARSER::COLLECTION)
    ("siRNA-FOXM1" . SPARSER::COLLECTION)
    ("polymerized tubulin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Stathmin and MCAK" . SPARSER::COLLECTION)
    ("the polymerized fraction" . SPARSER::COMPONENT)
    ("the soluble form" . SPARSER::FORM)
    ("tubulins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("polymerized and soluble tubulin fractions" . SPARSER::COMPONENT)
    ("polymerized microtubule fractions" . SPARSER::COMPONENT)
    ("DOC" . SPARSER::DRUG)
    ("the malignant human gastric cell line AGS" . SPARSER::PROTEIN)
    ("docetaxol" . SPARSER::DRUG) ("FOXM1-siRNA" . SPARSER::COLLECTION)
    ("AGS" . SPARSER::PROTEIN)
    ("Stathmin and mitotic centromere–associated kinesin (MCAK)"
     . SPARSER::COLLECTION)
    ("mitotic centromere–associated kinesin (MCAK)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("even regulating microtubule-associated protein" . SPARSER::PROTEIN)
    ("docetaxel and FOXM1" . SPARSER::COLLECTION)
    ("Ras-mitogen-activated protein kinase" . SPARSER::COLLECTION)
    ("KIP" . SPARSER::PROTEIN) ("hedgehog" . SPARSER::PROTEIN)
    ("Forkhead" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a semisynthetic taxane" . SPARSER::DRUG)
    ("epirubicin or docetaxel" . SPARSER::COLLECTION)
    ("epirubicin" . SPARSER::DRUG) ("fluoropyrimidine" . SPARSER::DRUG)
    ("thiostrepton" . SPARSER::PROTEIN)
    ("FOXM1 and Stathmin" . SPARSER::COLLECTION)
    ("another microtubule dynamics protein mitotic centromere–associated kinesin (MCAK)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MCAK" . SPARSER::PROTEIN) ("kinesin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Stathmin" . SPARSER::PROTEIN)
    ("an effective chemotherapeutic drug" . SPARSER::DRUG)
    ("Docetaxel" . SPARSER::DRUG) ("Kif2c" . SPARSER::PROTEIN)
    ("P-Glycoprotein" . SPARSER::PROTEIN) ("AC-3" . SPARSER::PROTEIN)
    ("Polyvinylidene fluoride" . SPARSER::DRUG) ("Cdc25B" . SPARSER::PROTEIN)
    ("Forkhead box protein M1" . SPARSER::PROTEIN)
    ("forkhead box protein M1" . SPARSER::PROTEIN) ("BGN" . SPARSER::PROTEIN)
    ("EFP" . SPARSER::PROTEIN) ("LA" . SPARSER::PROTEIN)
    ("RV and HA" . SPARSER::COLLECTION) ("WX" . SPARSER::PROTEIN)
    ("PTP and N-SH2 domain" . SPARSER::COLLECTION)
    ("thiophosphate" . SPARSER::MOLECULE)
    ("the pTyr- and P-loops" . SPARSER::COLLECTION)
    ("deuterium" . SPARSER::MOLECULE) ("GST-SHP2" . SPARSER::COLLECTION)
    ("the corresponding mutant and wild-type crystal structure"
     . SPARSER::COLLECTION)
    ("PTP and N-SH2 domains" . SPARSER::COLLECTION)
    ("-peptides" . SPARSER::PEPTIDE) ("aspartate" . SPARSER::MOLECULE)
    ("molecule (CTAB)" . SPARSER::MOLECULE) ("CTAB" . SPARSER::PROTEIN)
    ("detergent" . SPARSER::MOLECULE) ("NS/LS" . SPARSER::COLLECTION)
    ("Ptpn11" . SPARSER::PROTEIN) ("MPD" . SPARSER::PROTEIN)
    ("RAS-RAF-MEK-ERK" . SPARSER::COLLECTION)
    ("pTyr-" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("WT SHP2 and five NS/LS-associated SHP2 mutants" . SPARSER::COLLECTION)
    ("NS-" . SPARSER::PROTEIN) ("NS and LS" . SPARSER::COLLECTION)
    ("sensorineural Deafness" . SPARSER::PROTEIN)
    ("Deafness" . SPARSER::PROTEIN) ("LS" . SPARSER::PROTEIN)
    ("The ubiquitous non-receptor protein tyrosine phosphatase SHP2"
     . SPARSER::PROTEIN)
    ("growth factors, cytokines and integrins" . SPARSER::COLLECTION)
    ("RAS/ERK" . SPARSER::COLLECTION) ("GAB1" . SPARSER::PROTEIN)
    ("PTP1B" . SPARSER::PROTEIN) ("C-SH2" . SPARSER::PROTEIN)
    ("E-D" . SPARSER::MOLECULE) ("A 20" . SPARSER::PROTEIN)
    ("DE-" . SPARSER::MOLECULE) ("RAF1" . SPARSER::PROTEIN)
    ("SHOC2" . SPARSER::PROTEIN) ("PTPN11" . SPARSER::PROTEIN)
    ("SHP2" . SPARSER::PROTEIN) ("KS and AAT" . SPARSER::COLLECTION)
    ("AAT" . SPARSER::PROTEIN) ("KS" . SPARSER::PROTEIN)
    ("Serine-threonine" . SPARSER::COLLECTION)
    ("AKT/PKB" . SPARSER::COLLECTION) ("Prolactin" . SPARSER::PROTEIN)
    ("lipocalin" . SPARSER::PROTEIN) ("Neu" . SPARSER::PROTEIN)
    ("a persistently active house-keeping gene" . SPARSER::GENE)
    ("The latter promoter" . SPARSER::PROMOTER)
    ("AKT1 and c-MYC" . SPARSER::COLLECTION)
    ("the transformed state" . SPARSER::BIO-STATE)
    ("a hypermetabolic state" . SPARSER::BIO-STATE)
    ("STAT5 and AKT1" . SPARSER::COLLECTION)
    ("the developmental state" . SPARSER::BIO-STATE)
    ("hyperactive STAT5" . SPARSER::PROTEIN)
    ("a unique Akt1 mRNA" . SPARSER::RNA)
    ("the Janus kinase 2 (JAK2) and active STAT5 [ xref ]"
     . SPARSER::COLLECTION)
    ("AKT1-3" . SPARSER::COLLECTION) ("MCF-10A" . SPARSER::PROTEIN)
    ("RNA polymerase II and c-MYC" . SPARSER::COLLECTION)
    ("RNA polymerase II and the c-MYC proto-oncogene" . SPARSER::COLLECTION)
    ("TESS" . SPARSER::PROTEIN) ("TTC(T/C)N(G/A)GAA" . SPARSER::PROTEIN)
    ("a unique promoter" . SPARSER::PROMOTER)
    ("at least two distinct promoters" . SPARSER::PROMOTER)
    ("RACE" . SPARSER::PROTEIN)
    ("These longer transcript variants" . SPARSER::VARIANT)
    ("the orthologous AKT1m exon" . SPARSER::PROTEIN)
    ("this particular exon" . SPARSER::PROTEIN)
    ("PI-MECs" . SPARSER::COLLECTION) ("lactating" . SPARSER::MOLECULE)
    ("PTEN and prolactin" . SPARSER::COLLECTION)
    ("ERBB2 (MMTV-neu) and prolactin (NRL-PRL)" . SPARSER::COLLECTION)
    ("NRL-PRL" . SPARSER::COLLECTION) ("MMTV-neu" . SPARSER::COLLECTION)
    ("NRL" . SPARSER::PROTEIN) ("neu" . SPARSER::PROTEIN)
    ("MMTV" . SPARSER::PROTEIN) ("an orthologous promoter" . SPARSER::PROMOTER)
    ("JAK2/STAT5" . SPARSER::COLLECTION)
    ("a previously unknown mammary-specific promoter" . SPARSER::PROMOTER)
    ("growth factors and their corresponding receptors" . SPARSER::COLLECTION)
    ("PI3K and AKT" . SPARSER::COLLECTION)
    ("PI3-kinase/AKT" . SPARSER::COLLECTION)
    ("growth factors and their signal transducers" . SPARSER::COLLECTION)
    ("a previously unknown promoter" . SPARSER::PROMOTER)
    ("Phosphatase and tensin homolog" . SPARSER::PROTEIN)
    ("Receptor tyrosine kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Glucocorticoid receptor" . SPARSER::PROTEIN)
    ("growth-factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Janus kinase 2" . SPARSER::PROTEIN) ("messenger RNAs" . SPARSER::RNA)
    ("β-ACTIN" . SPARSER::PROTEIN) ("Brca1" . SPARSER::PROTEIN)
    ("IGF1" . SPARSER::PROTEIN) ("PIK3R1" . SPARSER::PROTEIN)
    ("Elastin" . SPARSER::PROTEIN) ("soluble Fg" . SPARSER::PROTEIN)
    ("fibrinogen or fibrin" . SPARSER::COLLECTION)
    ("FnBPA or ClfA" . SPARSER::COLLECTION)
    ("intact Fg and Fn" . SPARSER::COLLECTION)
    ("Fg and the NTD subdomain" . SPARSER::COLLECTION)
    ("a streptococcal protein" . SPARSER::PROTEIN)
    ("/FgD" . SPARSER::COLLECTION) ("intact FnBPA" . SPARSER::PROTEIN)
    ("ClfB" . SPARSER::PROTEIN)
    ("both the previously determined ClfA/Fg peptide" . SPARSER::PEPTIDE)
    ("Fg and elastin" . SPARSER::COLLECTION)
    ("ClfA and FnBPA" . SPARSER::COLLECTION) ("FnBPA/Fn" . SPARSER::COLLECTION)
    ("Fg (∼3 g/liter; 9 μ m ) and Fn (0.3 g/liter; 0.7 μ m )"
     . SPARSER::COLLECTION)
    ("Fg or Fn" . SPARSER::COLLECTION) ("Fn or Fg" . SPARSER::COLLECTION)
    ("AF1, Fn, and Fg" . SPARSER::COLLECTION)
    ("Fn (23 n m ) and Fg (23 μ m )" . SPARSER::COLLECTION)
    ("no ternary complex" . SPARSER::BIO-COMPLEX)
    ("Fg:Fn" . SPARSER::BIO-COMPLEX)
    ("either Fg (2.3, 23, and 90 μ m ) or Fn (23 and 230 n m )"
     . SPARSER::COLLECTION)
    ("Fg and intact Fn" . SPARSER::COLLECTION) ("intact Fn" . SPARSER::PROTEIN)
    ("Fg and NTD" . SPARSER::COLLECTION)
    ("the ternary complex" . SPARSER::BIO-COMPLEX)
    ("intact Fg" . SPARSER::PROTEIN) ("Fg and FgD" . SPARSER::COLLECTION)
    ("Fn and NTD" . SPARSER::COLLECTION) ("Fn" . SPARSER::PROTEIN)
    ("AF1/NTD" . SPARSER::COLLECTION) ("AF1/FgD" . SPARSER::COLLECTION)
    ("FgD" . SPARSER::PROTEIN) ("intact dimeric Fg" . SPARSER::PROTEIN)
    ("AF1/Fg" . SPARSER::COLLECTION) ("AF1-Fn" . SPARSER::COLLECTION)
    ("Fg and Fn" . SPARSER::COLLECTION) ("apo-protein" . SPARSER::COLLECTION)
    ("x-ray" . SPARSER::PROTEIN-PAIR)
    ("a suitable minimal complex" . SPARSER::BIO-COMPLEX)
    ("FnBPA-FgD" . SPARSER::PROTEIN-PAIR) ("chip" . SPARSER::PROTEIN)
    ("SPR" . SPARSER::PROTEIN) ("disulfide" . SPARSER::MOLECULE)
    ("N2-N3" . SPARSER::COLLECTION) ("DEv-IgG" . SPARSER::COLLECTION)
    ("the adjacent Fg-" . SPARSER::PROTEIN)
    ("peptide or FgD" . SPARSER::COLLECTION)
    ("apo and Fg" . SPARSER::COLLECTION) ("FnBPA" . SPARSER::PROTEIN)
    ("Fg-" . SPARSER::PROTEIN) ("ClfA/Fg" . SPARSER::COLLECTION)
    ("Fg-FnBPA" . SPARSER::PROTEIN-PAIR) ("Fg" . SPARSER::PROTEIN)
    ("FnBR/NTD" . SPARSER::COLLECTION) ("NTD" . SPARSER::PROTEIN)
    ("Fibronectin" . SPARSER::PROTEIN)
    ("a soluble dimeric form" . SPARSER::FORM)
    ("ClfA-Fg" . SPARSER::PROTEIN-PAIR) ("ClfA and SdrG" . SPARSER::COLLECTION)
    ("ClfA ( xref ) and FnBPA ( xref )" . SPARSER::COLLECTION)
    ("integrins ( xref ) and growth factors ( xref )" . SPARSER::COLLECTION)
    ("Cna" . SPARSER::PROTEIN)
    ("ClfA ( xref ) and SdrG ( xref )" . SPARSER::COLLECTION)
    ("N2 and N3" . SPARSER::COLLECTION) ("ClfA" . SPARSER::PROTEIN)
    ("fibrinogen (Fg) and elastin ( xref , xref )" . SPARSER::COLLECTION)
    ("N1–N3" . SPARSER::COLLECTION)
    ("The bacterial cell surface fibronectin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("S. aureus proteins and host proteins" . SPARSER::COLLECTION)
    ("a ternary complex" . SPARSER::BIO-COMPLEX) ("apo" . SPARSER::PROTEIN)
    ("The adjacent fibrinogen" . SPARSER::PROTEIN)
    ("fibrin" . SPARSER::PROTEIN) ("Fibrinogen" . SPARSER::PROTEIN)
    ("intact fibronectin and fibrinogen" . SPARSER::COLLECTION)
    ("homologous bacterial proteins" . SPARSER::PROTEIN)
    ("fibronectin and fibrinogen" . SPARSER::COLLECTION)
    ("α-chain" . SPARSER::PROTEIN) ("C chain" . SPARSER::PROTEIN)
    ("T200" . SPARSER::PROTEIN) ("A chain" . SPARSER::PROTEIN)
    ("γC" . SPARSER::PROTEIN) ("AF1" . SPARSER::PROTEIN)
    ("virulence factor" . SPARSER::PROTEIN-FAMILY)
    ("p-GSK3α/β" . SPARSER::PROTEIN-PAIR)
    ("SGK1 and cyclin E1" . SPARSER::COLLECTION)
    ("GSK3 or FBX4" . SPARSER::COLLECTION)
    ("INK128 and other TORkinibs" . SPARSER::COLLECTION)
    ("TORkinibs" . SPARSER::DRUG) ("INK128 or TORKinibs" . SPARSER::COLLECTION)
    ("SB216763 or siRNA-mediated" . SPARSER::COLLECTION)
    ("pilot" . SPARSER::PROTEIN) ("hyper" . SPARSER::PROTEIN)
    ("INK128 or PP242" . SPARSER::COLLECTION)
    ("GSK3-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Flag-cyclin D1" . SPARSER::COLLECTION) ("mTORC" . SPARSER::PROTEIN)
    ("proteins and RBX/ROC" . SPARSER::COLLECTION) ("RBX" . SPARSER::PROTEIN)
    ("cullins" . SPARSER::PROTEIN-FAMILY) ("cullin" . SPARSER::PROTEIN-FAMILY)
    ("INK128 or AZD8055" . SPARSER::COLLECTION)
    ("INK128 and AZD8055" . SPARSER::COLLECTION)
    ("p-GSK3β" . SPARSER::COLLECTION) ("p-4EBP1" . SPARSER::COLLECTION)
    ("INK128 and other TORKinibs decrease cyclin D1 levels"
     . SPARSER::COLLECTION)
    ("p-GSK3" . SPARSER::COLLECTION) ("GSK3β-KO" . SPARSER::COLLECTION)
    ("GSK3α-KO" . SPARSER::COLLECTION)
    ("GSK3α and GSK3β" . SPARSER::COLLECTION)
    ("GSK3α or GSK3β" . SPARSER::COLLECTION)
    ("INK128 and SB216763" . SPARSER::COLLECTION)
    ("AZD8055, Torin 1 and PP242" . SPARSER::COLLECTION)
    ("SB216763 and INK128" . SPARSER::COLLECTION)
    ("a representative TORKinib" . SPARSER::DRUG) ("TORKinib" . SPARSER::DRUG)
    ("INK128 and other TORKinibs" . SPARSER::COLLECTION)
    ("mTOR and GSK3" . SPARSER::COLLECTION)
    ("c-Myc, c-Jun, cyclin E, Mcl-1 and cyclin D" . SPARSER::COLLECTION)
    ("a ubiquitous serine/threonine kinase" . SPARSER::KINASE)
    ("TORKinibs" . SPARSER::DRUG) ("INK128 and PP242" . SPARSER::COLLECTION)
    ("rapamycin and its analogues (rapalogs)" . SPARSER::COLLECTION)
    ("an attractive cancer therapeutic target" . SPARSER::TARGET-PROTEIN)
    ("the essential partner protein raptor" . SPARSER::PROTEIN)
    ("SIN1" . SPARSER::PROTEIN)
    ("cyclin-dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Skp1" . SPARSER::PROTEIN) ("GSK-3α" . SPARSER::PROTEIN)
    ("sulforhodamine B" . SPARSER::MOLECULE) ("p-S6" . SPARSER::PROTEIN)
    ("MLN4924" . SPARSER::DRUG) ("NEDD8" . SPARSER::PROTEIN)
    ("Torin 1" . SPARSER::DRUG) ("Mcl-1" . SPARSER::PROTEIN)
    ("cyclin E" . SPARSER::PROTEIN)
    ("Glycogen synthase kinase-3" . SPARSER::PROTEIN) ("PP242" . SPARSER::DRUG)
    ("FBX4" . SPARSER::PROTEIN)
    ("glucose, lipids and amyloid" . SPARSER::COLLECTION)
    ("glucose and ribose" . SPARSER::COLLECTION)
    ("the prosurvival molecule Bcl-2" . SPARSER::PROTEIN)
    ("depleting cellular glutathione" . SPARSER::DRUG)
    ("glucose-" . SPARSER::PROTEIN)
    ("The ER stress pathway-associated transcription factor CHOP and the proapoptotic BH3-only proteins Bim and Puma"
     . SPARSER::COLLECTION)
    ("The ER stress pathway-associated transcription factor CHOP"
     . SPARSER::PROTEIN)
    ("proapoptotic ER" . SPARSER::PROTEIN)
    ("Puma and Bax" . SPARSER::COLLECTION)
    ("Bim , Puma , Bax and Bid" . SPARSER::COLLECTION)
    ("Bid" . SPARSER::PROTEIN) ("DCF" . SPARSER::PROTEIN)
    ("PBA or TUDCA" . SPARSER::COLLECTION) ("PBA" . SPARSER::MOLECULE)
    ("ER stress TUDCA and 4-phenyl butyric acid (PBA)" . SPARSER::COLLECTION)
    ("butyric acid (PBA)" . SPARSER::MOLECULE)
    ("FOXO3a and pAkt" . SPARSER::COLLECTION)
    ("Akt-FoxO3a" . SPARSER::COLLECTION) ("Bim or Bax" . SPARSER::COLLECTION)
    ("Bim , Puma and Bax" . SPARSER::COLLECTION)
    ("TUDCA or NAC" . SPARSER::COLLECTION)
    ("CHOP and Puma" . SPARSER::COLLECTION)
    ("N -acetylcysteine (NAC)" . SPARSER::DRUG)
    ("tauroursodeoxycholic acid (TUDCA)" . SPARSER::DRUG)
    ("TUDCA" . SPARSER::DRUG) ("BiP and Pdia4" . SPARSER::COLLECTION)
    ("BiP" . SPARSER::PROTEIN) ("glucose or fructose" . SPARSER::COLLECTION)
    ("fructose" . SPARSER::PROTEIN) ("sugars" . SPARSER::MOLECULE)
    ("pentose" . SPARSER::MOLECULE) ("Bim-" . SPARSER::PROTEIN)
    ("Thapsigargin" . SPARSER::MOLECULE)
    ("PERK, IRE1 α and ATF6" . SPARSER::COLLECTION)
    ("leptin" . SPARSER::PROTEIN) ("PERK" . SPARSER::PROTEIN)
    ("significantly higher Bim and Puma mRNA" . SPARSER::RNA)
    ("rotenone" . SPARSER::PROTEIN) ("Bim or Puma" . SPARSER::COLLECTION)
    ("glucose or ribose" . SPARSER::COLLECTION)
    ("the proapoptotic Bcl-2 homology domain 3 (BH3)-only proteins Bim and Puma"
     . SPARSER::COLLECTION)
    ("Bim and Puma" . SPARSER::COLLECTION) ("FoXO3a" . SPARSER::PROTEIN)
    ("Q-VD-OPh" . SPARSER::DRUG) ("D -Glucose" . SPARSER::MOLECULE)
    ("butyric acid" . SPARSER::MOLECULE) ("FOXO3a" . SPARSER::PROTEIN)
    ("N -acetylcysteine" . SPARSER::DRUG)
    ("tauroursodeoxycholic acid" . SPARSER::DRUG)
    ("P58" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Pdia4" . SPARSER::PROTEIN)
    ("CARD8" . SPARSER::PROTEIN) ("DP5" . SPARSER::PROTEIN)
    ("glutathione peroxidase" . SPARSER::PROTEIN) ("ATF6" . SPARSER::PROTEIN)
    ("IRE1 α" . SPARSER::PROTEIN) ("Type 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("N -acetyl-cysteine" . SPARSER::DRUG)
    ("C/EBP homologous protein" . SPARSER::PROTEIN)
    ("p53-positive regulators that inhibit p53's" . SPARSER::REGULATOR)
    ("ILE" . SPARSER::AMINO-ACID) ("LYS" . SPARSER::AMINO-ACID)
    ("PRO" . SPARSER::PROTEIN) ("dysfunctional p53" . SPARSER::PROTEIN)
    ("p53- and caspase-3" . SPARSER::COLLECTION)
    ("mot-2 and release cytoplasmic p53" . SPARSER::COLLECTION)
    ("RPS14 and UBXN2A" . SPARSER::COLLECTION)
    ("MDM2-p53" . SPARSER::COLLECTION) ("SW480 and MCF7" . SPARSER::COLLECTION)
    ("mot-2–p53" . SPARSER::COLLECTION)
    ("the desired exogenous proteins" . SPARSER::PROTEIN)
    ("the Mot-2 amino-acid residues 253-282 Mot-2" . SPARSER::PROTEIN)
    ("a part of p53's" . SPARSER::COMPONENT)
    ("the truncated mot-2 (1-506 aa) and SBD (432-674 aa)"
     . SPARSER::COLLECTION)
    ("SEP" . SPARSER::PROTEIN) ("SBD" . SPARSER::PROTEIN)
    ("-UBXN2A" . SPARSER::COLLECTION) ("Staurosporine" . SPARSER::DRUG)
    ("CCD" . SPARSER::PROTEIN) ("functional p53" . SPARSER::PROTEIN)
    ("single DNA-strand" . SPARSER::DNA) ("DNA-strand" . SPARSER::DNA)
    ("Exogenous UBXN2A" . SPARSER::PROTEIN)
    ("UBXN2A as well as mot-2" . SPARSER::COLLECTION)
    ("p53 and mot-2" . SPARSER::COLLECTION)
    ("GST-UBXN2A" . SPARSER::COLLECTION)
    ("UBXN2A only pulls down recombinant mot-2" . SPARSER::PROTEIN)
    ("GST-mot-2" . SPARSER::COLLECTION)
    ("UBXN2A and mot-2" . SPARSER::COLLECTION)
    ("mot-2 and UBXN2A" . SPARSER::COLLECTION) ("iodixanol" . SPARSER::DRUG)
    ("the genotoxic agent etoposide" . SPARSER::DRUG)
    ("SW480 and HT-29 colon cancer" . SPARSER::COLLECTION)
    ("GFP-UBXN2A" . SPARSER::COLLECTION) ("GFP-p53" . SPARSER::COLLECTION)
    ("fully functional p53" . SPARSER::PROTEIN)
    ("mot-2-p53" . SPARSER::COLLECTION)
    ("partly overlaps p53's" . SPARSER::PROTEIN)
    ("partly overlaps p53" . SPARSER::PROTEIN)
    ("UBXN2A and p53" . SPARSER::COLLECTION)
    ("mot-2 and p53" . SPARSER::COLLECTION) ("UBX" . SPARSER::PROTEIN)
    ("p53-mot-2" . SPARSER::COLLECTION)
    ("the tumor suppressor p53's" . SPARSER::PROTEIN)
    ("Mortalin" . SPARSER::PROTEIN) ("RPS14" . SPARSER::PROTEIN)
    ("ribosomal protein S14" . SPARSER::PROTEIN) ("Hsp70" . SPARSER::PROTEIN)
    ("HSC70" . SPARSER::PROTEIN) ("caspase 6" . SPARSER::PROTEIN)
    ("p47" . SPARSER::PROTEIN) ("p97" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Mot-2" . SPARSER::PROTEIN) ("UBXN2A" . SPARSER::PROTEIN)
    ("mot-2" . SPARSER::PROTEIN)
    ("DC120, RAD001 and U0126" . SPARSER::COLLECTION)
    ("ERK and AKT" . SPARSER::COLLECTION) ("AKT and HER" . SPARSER::COLLECTION)
    ("The proximal mTORC1 activator Rheb" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("B-Raf/C-Raf" . SPARSER::COLLECTION) ("AKT/mTOR" . SPARSER::COLLECTION)
    ("the small GTPase Ras homolog enriched in brain (Rheb) and mTORC1"
     . SPARSER::COLLECTION)
    ("DC120 and GDC0068" . SPARSER::COLLECTION) ("CaMK" . SPARSER::PROTEIN)
    ("4E-BP1 and P70S6K" . SPARSER::COLLECTION)
    ("PI3K and mTORC2" . SPARSER::COLLECTION)
    ("MAPK and mTORC1" . SPARSER::COLLECTION)
    ("RAD001 or U0126" . SPARSER::COLLECTION) ("nick" . SPARSER::PROTEIN)
    ("dUTP" . SPARSER::MOLECULE) ("FITC" . SPARSER::MOLECULE)
    ("P70S6K and 4E-BP1, and RAD001" . SPARSER::COLLECTION)
    ("4E-BP1, and RAD001" . SPARSER::COLLECTION)
    ("U0126 or RAD001" . SPARSER::COLLECTION)
    ("10  μ M DC120 and 20  μ M U0126" . SPARSER::COLLECTION)
    ("AKT and MEK" . SPARSER::COLLECTION)
    ("a special inhibitor of MEK and its chemical structure"
     . SPARSER::COLLECTION)
    ("a special inhibitor" . SPARSER::INHIBITOR)
    ("the pivotal component" . SPARSER::COMPONENT)
    ("three distinct siRNAs" . SPARSER::PROTEIN)
    ("chelators" . SPARSER::MOLECULE) ("HA-AKT" . SPARSER::COLLECTION)
    ("thapsigargin" . SPARSER::MOLECULE)
    ("DC120 and RAD001" . SPARSER::COLLECTION)
    ("Raptor and mTOR" . SPARSER::COLLECTION)
    ("S6K and 4E-BP1" . SPARSER::COLLECTION)
    ("P-S6K and P-4E-BP1" . SPARSER::COLLECTION)
    ("mTOR, P70S6K and 4E-BP1" . SPARSER::COLLECTION)
    ("P70S6K and 4E-BP1" . SPARSER::COLLECTION)
    ("caspase-3 and PARP" . SPARSER::COLLECTION)
    ("Annexin V/PI" . SPARSER::COLLECTION)
    ("A-443654 and GSK690693" . SPARSER::COLLECTION)
    ("hyperactive AKT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("another new ATP- competitive inhibitor GDC0068" . SPARSER::DRUG)
    ("ATP-" . SPARSER::ATP) ("CREB and c-Fos" . SPARSER::COLLECTION)
    ("CREB and PKC" . SPARSER::COLLECTION)
    ("AKT2 and AKT3" . SPARSER::COLLECTION)
    ("mTORC1 inhibitor and/or MAPK inhibitor" . SPARSER::COLLECTION)
    ("Ca 2+ /calmodulin (CaM)/human vacuolar protein" . SPARSER::PROTEIN)
    ("GDC0068, GSK690693 and A-443654" . SPARSER::COLLECTION)
    ("perifosine" . SPARSER::PROTEIN)
    ("a universal intracellular Ca 2+" . SPARSER::CALCIUM-ION)
    ("mTORC1 and/or MEK inhibitors" . SPARSER::COLLECTION)
    ("AKT, mTORC1 and/or MEK inhibitors" . SPARSER::COLLECTION)
    ("mTORC1 inhibitor and/or MEK inhibitor" . SPARSER::COLLECTION)
    ("mTORC1 and MAPK" . SPARSER::COLLECTION) ("CRAF" . SPARSER::PROTEIN)
    ("human vacuolar protein" . SPARSER::PROTEIN) ("CaM" . SPARSER::PROTEIN)
    ("70KD ribosomal protein S6 kinase (P70S6K) and eukaryotic translation initiation factor 4E binding protein 1 (4E-BP1)"
     . SPARSER::COLLECTION)
    ("an ATP competitive AKT kinase inhibitor" . SPARSER::INHIBITOR)
    ("CaM3" . SPARSER::PROTEIN) ("CaM2" . SPARSER::PROTEIN)
    ("CaM1" . SPARSER::PROTEIN) ("PIP2" . SPARSER::PROTEIN)
    ("Ras homolog enriched in brain" . SPARSER::PROTEIN)
    ("Ca 2+ / CaM" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("insulin receptor substrate-1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MK2206" . SPARSER::DRUG) ("Fluo-3" . SPARSER::MOLECULE)
    ("Ca 2+ /CaM" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("FKBP-12" . SPARSER::PROTEIN)
    ("FK506 binding protein 12" . SPARSER::PROTEIN)
    ("P-S6K" . SPARSER::PROTEIN) ("GSK-3 β" . SPARSER::PROTEIN)
    ("LO2" . SPARSER::PROTEIN) ("DYRK1B" . SPARSER::PROTEIN)
    ("CSNK1D" . SPARSER::PROTEIN) ("AKT3" . SPARSER::PROTEIN)
    ("AKT2" . SPARSER::PROTEIN) ("C-Raf" . SPARSER::PROTEIN)
    ("HER3" . SPARSER::PROTEIN)
    ("phosphatidylinositol-3,4,5-trisphosphate" . SPARSER::PIP3)
    ("A-443654" . SPARSER::DRUG) ("GSK690693" . SPARSER::DRUG)
    ("GDC0068" . SPARSER::DRUG) ("IP3R3" . SPARSER::PROTEIN)
    ("IP3R1" . SPARSER::PROTEIN) ("IP3" . SPARSER::IP3)
    ("Inositol 1,4,5-trisphosphate" . SPARSER::MOLECULE)
    ("GSK3 β" . SPARSER::PROTEIN) ("Protor 2" . SPARSER::PROTEIN)
    ("Protor 1" . SPARSER::PROTEIN) ("Sin1" . SPARSER::PROTEIN)
    ("PKB α" . SPARSER::PROTEIN) ("hVps34" . SPARSER::PROTEIN)
    ("Ca 2+ /calmodulin" . SPARSER::CALCIUM-CALMODULIN-COMPLEX)
    ("eukaryotic translation initiation factor 4E binding protein 1"
     . SPARSER::PROTEIN)
    ("ribosomal protein S6 kinase" . SPARSER::PROTEIN)
    ("DC120" . SPARSER::DRUG) ("GC or non-GC" . SPARSER::COLLECTION)
    ("IPI and rituximab" . SPARSER::COLLECTION)
    ("the biologic and clinical significance" . SPARSER::COLLECTION)
    ("MYC protein and MYC" . SPARSER::COLLECTION) ("rituximab" . SPARSER::DRUG)
    ("IPI" . SPARSER::PROTEIN) ("BCL6 or MUM1" . SPARSER::COLLECTION)
    ("CD10 (10/17, 59%) and BCL2 (21/26, 81%)" . SPARSER::COLLECTION)
    ("CD10 and 42/79" . SPARSER::COLLECTION)
    ("CD10, BCL6, MUM1, or BCL2" . SPARSER::COLLECTION)
    ("a new monoclonal antibody" . SPARSER::DRUG)
    ("MYC and BCL2" . SPARSER::COLLECTION)
    ("a poor prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BL" . SPARSER::PROTEIN) ("MUM1" . SPARSER::PROTEIN)
    ("BCL6" . SPARSER::PROTEIN) ("MYC protein" . SPARSER::PROTEIN)
    ("olaparib and a temozolomide" . SPARSER::COLLECTION)
    ("IPA" . SPARSER::MOLECULE)
    ("BRCA1 and its interacting components" . SPARSER::COLLECTION)
    ("temozolomide or olaparib" . SPARSER::COLLECTION)
    ("olaparib and temozolomide" . SPARSER::COLLECTION)
    ("BRCA1-" . SPARSER::PROTEIN) ("olaparib" . SPARSER::DRUG)
    ("HER-" . SPARSER::PROTEIN) ("HER" . SPARSER::PROTEIN)
    ("MSK" . SPARSER::PROTEIN) ("EMC" . SPARSER::PROTEIN)
    ("HER2-receptor" . SPARSER::COLLECTION)
    ("PRY, DAZ4, and CDY1" . SPARSER::COLLECTION) ("DAZ" . SPARSER::PROTEIN)
    ("PRY" . SPARSER::PROTEIN)
    ("potentially novel BRCA1 pathogenic variants" . SPARSER::VARIANT)
    ("identified no previously known pathogenic or novel potentially pathogenic variants"
     . SPARSER::VARIANT)
    ("EcR" . SPARSER::PROTEIN) ("DN" . SPARSER::PROTEIN)
    ("HER2 and ER" . SPARSER::COLLECTION) ("herceptin" . SPARSER::DRUG)
    ("systemic trastuzumab" . SPARSER::DRUG) ("trastuzumab" . SPARSER::DRUG)
    ("MBC" . SPARSER::PROTEIN) ("HER2-" . SPARSER::PROTEIN)
    ("gene2" . SPARSER::PROTEIN) ("MAS5" . SPARSER::PROTEIN)
    ("PI3K inhibitors [ xref ] and AKT inhibitors [ xref , xref ]"
     . SPARSER::COLLECTION)
    ("decreased phospho-4E-BP1 (Thr37/46) and phospho-S6(Ser235/6) protein"
     . SPARSER::COLLECTION)
    ("Rh30" . SPARSER::PROTEIN) ("Rh" . SPARSER::MOLECULE)
    ("PVP" . SPARSER::MOLECULE) ("polyvinylpyrrolidone" . SPARSER::DRUG)
    ("NMP" . SPARSER::MOLECULE) ("Drugs and Formulation" . SPARSER::COLLECTION)
    ("Drugs" . SPARSER::DRUG) ("The exact log-rank" . SPARSER::COLLECTION)
    ("SAS" . SPARSER::PROTEIN) ("Proc" . SPARSER::PROTEIN)
    ("diacetate" . SPARSER::MOLECULE) ("fluorescein" . SPARSER::MOLECULE)
    ("4E-BP-eIF4E" . SPARSER::COLLECTION)
    ("both the Raptor (TORC1) and Rictor (TORC2) complexes"
     . SPARSER::COLLECTION)
    ("EFS" . SPARSER::PROTEIN)
    ("an investigational small molecule ATP-competitive inhibitor"
     . SPARSER::INHIBITOR)
    ("AZD8055" . SPARSER::DRUG) ("PD2" . SPARSER::PROTEIN)
    ("Rh18" . SPARSER::PROTEIN) ("INK128" . SPARSER::DRUG)
    ("4E-BP" . SPARSER::PROTEIN) ("MLN0128" . SPARSER::DRUG)
    ("a DNA-binding transcription factor and its associated co–repressor complex"
     . SPARSER::COLLECTION)
    ("its associated co–repressor complex" . SPARSER::BIO-COMPLEX)
    ("methylase" . SPARSER::PROTEIN) ("letter" . SPARSER::MOLECULE)
    ("the same sequence-specific DNA-binding protein" . SPARSER::PROTEIN)
    ("PRCs or DNMTs" . SPARSER::COLLECTION) ("DNMTs" . SPARSER::PROTEIN)
    ("the repressive H3K27me3 mark" . SPARSER::PROTEIN)
    ("HOXA9 and the long non-coding RNA ANRIL" . SPARSER::COLLECTION)
    ("KRAB-ZFPs" . SPARSER::COLLECTION) ("ZFPs" . SPARSER::PROTEIN)
    ("ZNF304 or repressive cofactors" . SPARSER::COLLECTION)
    ("the relevant oncoprotein" . SPARSER::PROTEIN)
    ("More efficacious therapeutics" . SPARSER::THERAPEUTICS)
    ("DNA methyltransferase and histone deacetylase" . SPARSER::COLLECTION)
    ("p14  ARF , p15  INK4B  , and p16" . SPARSER::COLLECTION)
    ("ZFP" . SPARSER::PROTEIN) ("KRAB-ZFP" . SPARSER::COLLECTION)
    ("kinase, and USP28" . SPARSER::COLLECTION)
    ("SETDB1, KAP1 and DNMT1" . SPARSER::COLLECTION)
    ("TSG" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("EZH2 or BMI1" . SPARSER::COLLECTION)
    ("PRC1 and PRC2" . SPARSER::COLLECTION)
    ("EZH2 and BMI1" . SPARSER::COLLECTION)
    ("the PRC2 subunit EZH2 and the PRC1 subunit BMI1" . SPARSER::COLLECTION)
    ("repressive cofactors" . SPARSER::PROTEIN)
    ("Polycomb repressive complexes" . SPARSER::BIO-COMPLEX)
    ("PRCs" . SPARSER::PROTEIN) ("bisulfite" . SPARSER::MOLECULE)
    ("representative CIMP marker genes" . SPARSER::GENE)
    ("ZNF304, KAP1, SETDB1, and DNMT1" . SPARSER::COLLECTION)
    ("p16  INK4A and seven additional genes" . SPARSER::COLLECTION)
    ("included p14  ARF , p16  INK4A and seven additional genes"
     . SPARSER::COLLECTION)
    ("VIM and SEPT9" . SPARSER::COLLECTION)
    ("KRAS or ZNF304" . SPARSER::COLLECTION)
    ("the intestine-specific transcription factor CDX1" . SPARSER::PROTEIN)
    ("USP28 and PRKD1" . SPARSER::COLLECTION)
    ("ZNF304, KAP1, SETDB1 , and DNMT1" . SPARSER::COLLECTION)
    ("CRT" . SPARSER::PROTEIN) ("cJUN" . SPARSER::PROTEIN)
    ("USP28 protein ( xref ) and mRNA ( xref )" . SPARSER::COLLECTION)
    ("USP28 and ZNF304" . SPARSER::COLLECTION)
    ("Bisulfite" . SPARSER::MOLECULE) ("ZNF304 or KRAS" . SPARSER::COLLECTION)
    ("p14 ARF , p15 INK4B  , and p16 INK4A" . SPARSER::COLLECTION)
    ("PI3K-AKT" . SPARSER::COLLECTION) ("manumycin" . SPARSER::MOLECULE)
    ("INK4A  , and p16" . SPARSER::COLLECTION)
    ("ZNF304, KAP1, SETDB1 or DNMT1" . SPARSER::COLLECTION)
    ("KAP1, SETDB1 and DNMT1" . SPARSER::COLLECTION)
    ("KAP1, SETDB1, and DNMT1" . SPARSER::COLLECTION)
    ("corepressors" . SPARSER::PROTEIN)
    ("methyltransferases, DNMT3A, or DNMT3B" . SPARSER::COLLECTION)
    ("methyltransferases" . SPARSER::PROTEIN)
    ("KAP1 or SETDB1" . SPARSER::COLLECTION)
    ("p14  ARF , p15  INK4B  , and p16  INK4A" . SPARSER::COLLECTION)
    ("the scaffolding protein KAP1 and the histone methyltransferase SETDB1 ( xref )"
     . SPARSER::COLLECTION)
    ("p15  INK4B and p16  INK4A" . SPARSER::COLLECTION)
    ("KRAB" . SPARSER::PROTEIN-FAMILY)
    ("a sequence-specific DNA-binding protein" . SPARSER::PROTEIN)
    ("TSGs" . SPARSER::PROTEIN) ("Blasticidin" . SPARSER::MOLECULE)
    ("blasticidin" . SPARSER::MOLECULE)
    ("a representative CIMP gene" . SPARSER::PROTEIN)
    ("demethylase" . SPARSER::PROTEIN) ("INK4A-ARF" . SPARSER::COLLECTION)
    ("p14  ARF and p16  INK4A" . SPARSER::COLLECTION)
    ("polypeptides" . SPARSER::PROTEIN)
    ("these enzymes and the KRAS protein" . SPARSER::COLLECTION)
    ("the pivotal factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p14  ARF , p15  INK4B , and p16  INK4A" . SPARSER::COLLECTION)
    ("INK4-ARF" . SPARSER::COLLECTION) ("l 32" . SPARSER::PROTEIN)
    ("p3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("K-Ras" . SPARSER::PROTEIN)
    ("HLX1" . SPARSER::PROTEIN) ("ZFP354B" . SPARSER::PROTEIN)
    ("BMI1" . SPARSER::PROTEIN) ("PRC1" . SPARSER::PROTEIN)
    ("EZH2" . SPARSER::PROTEIN) ("PRC2" . SPARSER::PROTEIN)
    ("SEPT9" . SPARSER::PROTEIN) ("CDX1" . SPARSER::PROTEIN)
    ("serine/threonine protein kinase" . SPARSER::PROTEIN)
    ("PRKD1" . SPARSER::PROTEIN) ("USP28" . SPARSER::PROTEIN)
    ("p16 INK4A" . SPARSER::PROTEIN) ("p15 INK4B" . SPARSER::PROTEIN)
    ("p14 ARF" . SPARSER::PROTEIN) ("PI-103" . SPARSER::DRUG)
    ("INK4B" . SPARSER::PROTEIN) ("DNMT3B" . SPARSER::PROTEIN)
    ("DNMT3A" . SPARSER::PROTEIN) ("SETDB1" . SPARSER::PROTEIN)
    ("KAP1" . SPARSER::PROTEIN) ("JMJD3" . SPARSER::PROTEIN)
    ("H3K27me3" . SPARSER::MOLECULE) ("INK4A" . SPARSER::PROTEIN)
    ("CDKN2A" . SPARSER::PROTEIN) ("DNMT1" . SPARSER::PROTEIN)
    ("DNA methyltransferase" . SPARSER::PROTEIN)
    ("DNA-binding protein" . SPARSER::PROTEIN) ("ZNF304" . SPARSER::PROTEIN)
    ("INK4" . SPARSER::PROTEIN) ("p16  INK4A" . SPARSER::PROTEIN)
    ("p15  INK4B" . SPARSER::PROTEIN) ("p14  ARF" . SPARSER::PROTEIN)
    ("STING, TRAF3, TBK1, and IRF3" . SPARSER::COLLECTION)
    ("TBK1-TRAF3" . SPARSER::COLLECTION)
    ("IFNβ-Luc and PRD" . SPARSER::COLLECTION)
    ("IFNβ-Luc" . SPARSER::PROTEIN-PAIR)
    ("TBK1 and IKKε" . SPARSER::COLLECTION)
    ("M protein and PLpro-TM" . SPARSER::COLLECTION)
    ("TRAF3 and TBK1" . SPARSER::COLLECTION)
    ("an essential step" . SPARSER::PROTEIN)
    ("TRAF3-TBK1" . SPARSER::COLLECTION)
    ("Multiple SARS coronaviral proteins" . SPARSER::PROTEIN)
    ("These viral proteins" . SPARSER::PROTEIN)
    ("porcine reproductive and respiratory syndrome virus (PRRSV) nsp2"
     . SPARSER::PROTEIN)
    ("STING, RIG-I, TBK1, and IRF3" . SPARSER::COLLECTION)
    ("DUBA" . SPARSER::PROTEIN)
    ("RIP1, TRAF6, RIP2, and NEMO" . SPARSER::COLLECTION)
    ("TBK1 and forms" . SPARSER::COLLECTION)
    ("IRF3 and IFNβ" . SPARSER::COLLECTION) ("Mda" . SPARSER::DRUG)
    ("TBK1 and IRF3" . SPARSER::COLLECTION)
    ("RIG-I, TRAF3, STING, TBK1, and IRF3" . SPARSER::COLLECTION)
    ("RIG-I, TRAF3, STING, TBK1, or IRF3" . SPARSER::COLLECTION)
    ("HA-Ub-K63" . SPARSER::COLLECTION)
    ("TRAF3 and STING" . SPARSER::COLLECTION)
    ("MAVS or TBK1" . SPARSER::COLLECTION)
    ("TRAF3, MAVS, STING, and TBK1" . SPARSER::COLLECTION)
    ("functional STING-TRAF3-TBK1 tripartite complex" . SPARSER::BIO-COMPLEX)
    ("STING and PLpro-TM (Fig.  xref D, lanes 4, 6, and 7)"
     . SPARSER::COLLECTION)
    ("helicase" . SPARSER::PROTEIN)
    ("STING and PLpro-TM" . SPARSER::COLLECTION) ("PLpros" . SPARSER::PROTEIN)
    ("Yin" . SPARSER::PROTEIN) ("Shu" . SPARSER::PROTEIN)
    ("STING, TRAF3, TBK1, and IKKε" . SPARSER::COLLECTION)
    ("TRAF3, TBK1, or IKKε" . SPARSER::COLLECTION)
    ("Flag-STING" . SPARSER::COLLECTION) ("STING-" . SPARSER::PROTEIN)
    ("V5-tagged PLpro-TM" . SPARSER::COLLECTION)
    ("Flag-IKKε" . SPARSER::COLLECTION) ("Flag-TBK1" . SPARSER::COLLECTION)
    ("HA-STING" . SPARSER::COLLECTION)
    ("STING/TBK1/IKKε" . SPARSER::COLLECTION)
    ("TBK1 (Fig.  xref C and xref D) and IKKε (Fig.  xref E and xref F)"
     . SPARSER::COLLECTION)
    ("IFN-β promoter (Fig.  xref A, xref C and xref E) or IRF3 promoter"
     . SPARSER::COLLECTION)
    ("STING, TBK1, or IKKε" . SPARSER::COLLECTION)
    ("IFNβ- and IRF3-" . SPARSER::COLLECTION) ("IRF3-" . SPARSER::PROTEIN)
    ("IFNβ-" . SPARSER::PROTEIN)
    ("STING, TRAF3, and TBK1" . SPARSER::COLLECTION)
    ("TRAF3-TBK1-IKKε" . SPARSER::COLLECTION) ("PLP" . SPARSER::PROTEIN)
    ("DUB" . SPARSER::PROTEIN) ("TRAF3, STING, and TBK1" . SPARSER::COLLECTION)
    ("ERIS" . SPARSER::PROTEIN) ("MITA" . SPARSER::PROTEIN)
    ("Saha" . SPARSER::DRUG) ("TRAF" . SPARSER::PROTEIN-FAMILY)
    ("IFN regulatory factor-3" . SPARSER::PROTEIN)
    ("TLR3, and MyD88" . SPARSER::COLLECTION)
    ("Chen and Jiang" . SPARSER::COLLECTION)
    ("MAVS/IPS-1/VISA/Cardif" . SPARSER::COLLECTION)
    ("ATF-2/c-jun" . SPARSER::COLLECTION) ("TRIF" . SPARSER::PROTEIN)
    ("Cardif" . SPARSER::PROTEIN) ("VISA" . SPARSER::PROTEIN)
    ("MAVS" . SPARSER::PROTEIN)
    ("the intracellular double-stranded viral RNA" . SPARSER::RNA)
    ("RLRs" . SPARSER::PROTEIN) ("TLRs" . SPARSER::PROTEIN-FAMILY)
    ("PRRs" . SPARSER::PROTEIN) ("receptors (PRR)" . SPARSER::RECEPTOR)
    ("PRR" . SPARSER::PROTEIN)
    ("RIG-I, STING, TRAF3, TBK1, and IRF3" . SPARSER::COLLECTION)
    ("TRAF3, TBK1, IKKε, STING, and IRF3" . SPARSER::COLLECTION)
    ("STING-TRAF3-TBK1" . SPARSER::COLLECTION) ("PLpro" . SPARSER::PROTEIN)
    ("STING and TBK1" . SPARSER::COLLECTION) ("PLpro-TM" . SPARSER::COLLECTION)
    ("IFNs" . SPARSER::DRUG) ("STING" . SPARSER::PROTEIN)
    ("SARS" . SPARSER::PROTEIN) ("protease" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("papain" . SPARSER::PROTEIN) ("interferon" . SPARSER::PROTEIN)
    ("2 P 1" . SPARSER::PROTEIN) ("nsp1" . SPARSER::PROTEIN)
    ("ORF6" . SPARSER::PROTEIN) ("ORF3" . SPARSER::PROTEIN)
    ("nsp2" . SPARSER::PROTEIN) ("UL36" . SPARSER::PROTEIN)
    ("TRAF6" . SPARSER::PROTEIN) ("RIP1" . SPARSER::PROTEIN)
    ("A20" . SPARSER::PROTEIN) ("IFN-β" . SPARSER::PROTEIN)
    ("IFNβ" . SPARSER::PROTEIN) ("M protein" . SPARSER::PROTEIN)
    ("TLR7" . SPARSER::PROTEIN) ("MyD88" . SPARSER::PROTEIN)
    ("TLR3" . SPARSER::PROTEIN) ("IPS-1" . SPARSER::PROTEIN)
    ("ATF-2" . SPARSER::PROTEIN) ("factor-3" . SPARSER::PROTEIN)
    ("retinoic acid" . SPARSER::MOLECULE) ("RIG-I" . SPARSER::PROTEIN)
    ("TRAF3" . SPARSER::PROTEIN) ("IKKε" . SPARSER::PROTEIN)
    ("TBK1" . SPARSER::PROTEIN) ("IRF3" . SPARSER::PROTEIN)
    ("a key regulator of cell cycle" . SPARSER::PROTEIN)
    ("CD44 and deltaEF1" . SPARSER::COLLECTION)
    ("Doxorubicin and Everolimus" . SPARSER::COLLECTION)
    ("Oxaliplatin" . SPARSER::DRUG) ("Everolimus" . SPARSER::MOLECULE)
    ("CTD" . SPARSER::PROTEIN)
    ("CCNA2 and available cancer drugs" . SPARSER::COLLECTION)
    ("available cancer drugs" . SPARSER::DRUG) ("ER-" . SPARSER::PROTEIN)
    ("CCNA2 and available anti-cancer drugs" . SPARSER::COLLECTION)
    ("available anti-cancer drugs" . SPARSER::DRUG)
    ("estrogen receptor-" . SPARSER::PROTEIN)
    ("CCNA2 and several available cancer drugs" . SPARSER::COLLECTION)
    ("several available cancer drugs" . SPARSER::DRUG)
    ("effective prognostic biomarkers" . SPARSER::MOLECULE)
    ("deltaEF1" . SPARSER::PROTEIN) ("Retinoic acid" . SPARSER::MOLECULE)
    ("Acid ceramidase" . SPARSER::PROTEIN) ("cyclin family" . SPARSER::PROTEIN)
    ("CyclinA2" . SPARSER::PROTEIN) ("CCNA2" . SPARSER::PROTEIN)
    ("YAP-TEAD4" . SPARSER::COLLECTION) ("nYAP" . SPARSER::PROTEIN-FAMILY)
    ("E-cadherin and other EMT genes" . SPARSER::COLLECTION)
    ("a possible oncogene" . SPARSER::ONCOGENE)
    ("YAP and TAED4" . SPARSER::COLLECTION)
    ("CA125 and YAP" . SPARSER::COLLECTION)
    ("PARP and caspase 3" . SPARSER::COLLECTION)
    ("Cisplatin and Taxol" . SPARSER::COLLECTION) ("Cisplatin" . SPARSER::DRUG)
    ("overexpressed constitutively active YAP (YAP with five LATS1/2 phosphorylation site mutations; YAP-5SA) and dominant negative YAP (YAP-5SA with a C-terminal transactivation domain deletion; YAP-5SA-ΔC; xref )"
     . SPARSER::COLLECTION)
    ("Both cytoplasmic YAP (cYAP) and pYAP" . SPARSER::COLLECTION)
    ("YAP and pYAP" . SPARSER::COLLECTION)
    ("total and phosphorylated YAP" . SPARSER::PROTEIN)
    ("a key ovarian cancer oncogene" . SPARSER::PROTEIN)
    ("YAP/TEAD4" . SPARSER::COLLECTION) ("YAP/TEAD" . SPARSER::COLLECTION)
    ("targets and TEAD" . SPARSER::COLLECTION) ("LATS" . SPARSER::PROTEIN)
    ("Taxol" . SPARSER::DRUG) ("YAP and TEAD4" . SPARSER::COLLECTION)
    ("CA125" . SPARSER::PROTEIN) ("AC40" . SPARSER::PROTEIN)
    ("TEAD3" . SPARSER::PROTEIN) ("TEAD2" . SPARSER::PROTEIN)
    ("TEAD1" . SPARSER::PROTEIN) ("RUNX2" . SPARSER::PROTEIN)
    ("Drosophila )" . SPARSER::PROTEIN) ("Sav1" . SPARSER::PROTEIN)
    ("TEAD4" . SPARSER::PROTEIN) ("TSC1, TSC2 and mTOR" . SPARSER::COLLECTION)
    ("modifiers" . SPARSER::MOLECULE) ("CNA" . SPARSER::PROTEIN)
    ("sporadic RCC" . SPARSER::PROTEIN)
    ("a relevant tumor suppressor" . SPARSER::SUPPRESSOR)
    ("TSC1 and MTOR" . SPARSER::COLLECTION)
    ("PI3K and MAPK" . SPARSER::COLLECTION)
    ("VHL and MLL3" . SPARSER::COLLECTION)
    ("VHL , PBRM1, and NFKB1" . SPARSER::COLLECTION) ("VHL" . SPARSER::PROTEIN)
    ("exogenous S6K" . SPARSER::PROTEIN)
    ("rapamycin and its analogues" . SPARSER::COLLECTION)
    ("delC" . SPARSER::PROTEIN) ("IMPACT" . SPARSER::PROTEIN)
    ("sunitinib" . SPARSER::DRUG) ("Histologic subtypes" . SPARSER::PROTEIN)
    ("temsirolimus [n=4] or everolimus [n=1]" . SPARSER::COLLECTION)
    ("temsirolimus" . SPARSER::DRUG)
    ("rapamycin (rapalogs) and allosteric inhibitors" . SPARSER::COLLECTION)
    ("Temsirolimus and everolimus" . SPARSER::COLLECTION)
    ("everolimus" . SPARSER::DRUG) ("Temsirolimus" . SPARSER::DRUG)
    ("MTOR" . SPARSER::PROTEIN) ("RCC" . SPARSER::PROTEIN)
    ("BAP1" . SPARSER::PROTEIN) ("SETD2" . SPARSER::PROTEIN)
    ("VEGFR2" . SPARSER::PROTEIN) ("MLL3" . SPARSER::PROTEIN)
    ("PBRM1" . SPARSER::PROTEIN) ("glutamine residue" . SPARSER::MOLECULE)
    ("apex and base" . SPARSER::COLLECTION) ("apex" . SPARSER::PROTEIN)
    ("ABR" . SPARSER::PROTEIN) ("van" . SPARSER::PROTEIN)
    ("parathyroid" . SPARSER::PROTEIN-FAMILY) ("HDR" . SPARSER::PROTEIN)
    ("GATA" . SPARSER::PROTEIN)
    ("hereditary congenital deafness" . SPARSER::PROTEIN)
    ("deafness" . SPARSER::PROTEIN) ("hypoparathyroidism" . SPARSER::PROTEIN)
    ("Gata3" . SPARSER::PROTEIN)
    ("tumor suppressive miRNAs" . SPARSER::MICRO-RNA)
    ("small molecules and target" . SPARSER::COLLECTION)
    ("MET and HGF" . SPARSER::COLLECTION)
    ("The receptor tyrosine kinase MET and its ligand hepatocyte growth factor (HGF)"
     . SPARSER::COLLECTION)
    ("hepatocyte growth factor (HGF)" . SPARSER::PROTEIN)
    ("Bcl-xL and EGFR" . SPARSER::COLLECTION)
    ("EGFRvIII-STAT5b" . SPARSER::COLLECTION) ("EGFRvIII" . SPARSER::PROTEIN)
    ("directly target EGFR, Bcl-xL or MET" . SPARSER::COLLECTION)
    ("novel tumor suppressive miRNAs" . SPARSER::MICRO-RNA)
    ("EGFR or MET" . SPARSER::COLLECTION) ("mIR" . SPARSER::MICRO-RNA)
    ("EGFR/Bcl-xL" . SPARSER::COLLECTION)
    ("CDK2 and MCM5" . SPARSER::COLLECTION)
    ("PTEN, p21, and p53" . SPARSER::COLLECTION) ("HoxB7" . SPARSER::PROTEIN)
    ("HOX" . SPARSER::PROTEIN)
    ("tumor suppressive molecules" . SPARSER::MOLECULE)
    ("EGFR, Bcl-xL and MET" . SPARSER::COLLECTION)
    ("EGFR, Bcl-xL or MET" . SPARSER::COLLECTION)
    ("proteins and miR-34a" . SPARSER::COLLECTION) ("con" . SPARSER::PROTEIN)
    ("miR-34a and MET" . SPARSER::COLLECTION)
    ("Erlotinib and Crizotinib" . SPARSER::COLLECTION)
    ("Crizotinib" . SPARSER::DRUG)
    ("EGF (20 ng/ml) or MET" . SPARSER::COLLECTION)
    ("very few molecules" . SPARSER::MOLECULE)
    ("EGFR and Bcl-xL mRNAs (which are overexpressed in almost all chordoma tumors) and miR-34a"
     . SPARSER::COLLECTION)
    ("UCH1 and UCH2" . SPARSER::COLLECTION) ("UCH" . SPARSER::PROTEIN)
    ("MiRNAs" . SPARSER::MICRO-RNA)
    ("chordoma and shed new light" . SPARSER::PROTEIN)
    ("the receptor tyrosine kinase (RTK) EGFR and the apoptosis inhibitor Bcl-xL"
     . SPARSER::COLLECTION)
    ("a tumor suppressive miRNAs" . SPARSER::MICRO-RNA)
    ("EGFR, PDGFR and MET" . SPARSER::COLLECTION) ("PDGFR" . SPARSER::PROTEIN)
    ("EGFR, MET and Bcl-xL" . SPARSER::COLLECTION)
    ("EGFR and MET" . SPARSER::COLLECTION)
    ("EGFR and Bcl-xL" . SPARSER::COLLECTION)
    ("novel tumor suppressive microRNAs" . SPARSER::MICRO-RNA)
    ("no adjuvant and molecular therapies" . SPARSER::COLLECTION)
    ("MCM5" . SPARSER::PROTEIN) ("CDK2" . SPARSER::PROTEIN)
    ("SPRR2" . SPARSER::PROTEIN-FAMILY) ("S100A9" . SPARSER::PROTEIN)
    ("ANXA1" . SPARSER::PROTEIN) ("HMGA2" . SPARSER::PROTEIN)
    ("HOXD8" . SPARSER::PROTEIN) ("HOXB8" . SPARSER::PROTEIN)
    ("HOXC8" . SPARSER::PROTEIN) ("HOXA7" . SPARSER::PROTEIN)
    ("mIR-34a" . SPARSER::MOLECULE) ("MiR-34a" . SPARSER::MOLECULE)
    ("β-galactosidase" . SPARSER::PROTEIN) ("MCM7" . SPARSER::PROTEIN)
    ("miR-7" . SPARSER::PROTEIN) ("6B" . SPARSER::PROTEIN)
    ("UCH1" . SPARSER::PROTEIN) ("miR-34a" . SPARSER::MOLECULE)
    ("YAP1 and PKC" . SPARSER::COLLECTION)
    ("XIAP and survivin" . SPARSER::COLLECTION)
    ("survivin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MST1 and MST2" . SPARSER::COLLECTION) ("JNK/SAPK" . SPARSER::COLLECTION)
    ("SAPK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("YAP1, and 14-3-3" . SPARSER::COLLECTION)
    ("14-3-3 and CHRNA3/CHRNA5/CHRNB4 in KYSE510 cell" . SPARSER::COLLECTION)
    ("N-cadherin/β-catenin" . SPARSER::COLLECTION)
    ("APC, EB1, IQGAP1 and MACF" . SPARSER::COLLECTION)
    ("EB1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("YAP1 and α-catenin" . SPARSER::COLLECTION)
    ("α-catenin and β-catenin" . SPARSER::COLLECTION)
    ("YAP1 and α-catenin/β-catenin/14-3-3" . SPARSER::COLLECTION)
    ("α-catenin/β-catenin/14-3-3" . SPARSER::COLLECTION)
    ("PLC/IP3R/PKC" . SPARSER::COLLECTION) ("YAP1/TAZ" . SPARSER::COLLECTION)
    ("TLR4/NANOG" . SPARSER::COLLECTION) ("TICs" . SPARSER::PROTEIN)
    ("YAP1 and TAZ" . SPARSER::COLLECTION)
    ("catecholamine" . SPARSER::MOLECULE)
    ("YAP1 and cigarette" . SPARSER::COLLECTION)
    ("YAP1 and p63" . SPARSER::COLLECTION)
    ("α-catenin, β-catenin, 14-3-3, and p63" . SPARSER::COLLECTION)
    ("14-3-3, α-catenin and β-catenin" . SPARSER::COLLECTION)
    ("14-3-3 and CHRNA3/CHRNA5/CHRNB4" . SPARSER::COLLECTION)
    ("CHRNA3 and YAP1" . SPARSER::COLLECTION)
    ("GST-YAP1" . SPARSER::COLLECTION)
    ("YAP1 and CHRNA3" . SPARSER::COLLECTION)
    ("CHRNA3/CHRNA5/CHRNB4" . SPARSER::COLLECTION)
    ("CTGF and other YAP1 downstream genes" . SPARSER::COLLECTION)
    ("CHRNA3 and CHRNA5" . SPARSER::COLLECTION)
    ("CHRNA5 (neuronal acetylcholine receptor subunit alpha-5) and CHRNA3 (neuronal acetylcholine receptor subunit alpha-3)"
     . SPARSER::COLLECTION)
    ("MP" . SPARSER::PROTEIN) ("RTCA" . SPARSER::PROTEIN)
    ("Survivin and CTGF" . SPARSER::COLLECTION)
    ("XIAP and Survivin" . SPARSER::COLLECTION)
    ("Survivin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("rapsyn and herparansulphate" . SPARSER::COLLECTION)
    ("agrin" . SPARSER::PROTEIN) ("rapsyn" . SPARSER::PROTEIN)
    ("Nicotinic acetylcholine receptors" . SPARSER::RECEPTOR)
    ("nicotine and its derivatives such as NNN (N-nitrosonornicotine) and NNK"
     . SPARSER::COLLECTION)
    ("its derivatives such as NNN (N-nitrosonornicotine) and NNK"
     . SPARSER::COLLECTION)
    ("nicotinic acetylcholine receptors" . SPARSER::RECEPTOR)
    ("nitrosonornicotine" . SPARSER::MOLECULE) ("NNN" . SPARSER::MOLECULE)
    ("cigarette" . SPARSER::DRUG) ("Enzastaurin" . SPARSER::DRUG)
    ("α-catenin, β-catenin and 14-3-3" . SPARSER::COLLECTION)
    ("Nicotine" . SPARSER::DRUG) ("nicotine" . SPARSER::DRUG)
    ("the key transcription factor" . SPARSER::PROTEIN)
    ("Yes-associated protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cigarette" . SPARSER::DRUG) ("MST2" . SPARSER::PROTEIN)
    ("MST1" . SPARSER::PROTEIN) ("IQGAP1" . SPARSER::PROTEIN)
    ("IP3R" . SPARSER::PROTEIN) ("S1P" . SPARSER::PROTEIN)
    ("sphingosine-1-phosphate" . SPARSER::DRUG)
    ("neuronal acetylcholine receptor subunit alpha-3" . SPARSER::PROTEIN)
    ("neuronal acetylcholine receptor subunit alpha-5" . SPARSER::PROTEIN)
    ("PPP1" . SPARSER::PROTEIN) ("EDN1" . SPARSER::PROTEIN)
    ("Cyr61" . SPARSER::PROTEIN) ("CHRNA5" . SPARSER::PROTEIN)
    ("CHRNB4" . SPARSER::PROTEIN) ("P63" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("α-catenin" . SPARSER::PROTEIN) ("CHRNA3" . SPARSER::PROTEIN)
    ("YAP1" . SPARSER::PROTEIN) ("Bcl-2 or Bcl-xL" . SPARSER::COLLECTION)
    ("ser" . SPARSER::AMINO-ACID) ("poisons" . SPARSER::MOLECULE)
    ("Mad2, BubR1, and Bub3" . SPARSER::COLLECTION)
    ("kinases, PLK1 and MAPK14/SAPKp38α" . SPARSER::COLLECTION)
    ("inhibitors and binders" . SPARSER::COLLECTION)
    ("phospho-Bcl-xL(Ser62) and phospho-Bcl-xL(Ser49)" . SPARSER::COLLECTION)
    ("wt Bcl-xL or the phosphorylation mutant Bcl-xL(Ser62Ala)"
     . SPARSER::COLLECTION)
    ("Mad2, Cdc20, and BubR1" . SPARSER::COLLECTION)
    ("APC-3" . SPARSER::COLLECTION)
    ("Mad2, BubR1, and Cdc20" . SPARSER::COLLECTION)
    ("Mad2, BubR1, Bub3, and Cdc20" . SPARSER::COLLECTION)
    ("BubR1-" . SPARSER::PROTEIN)
    ("phospho-Bcl-xL ( Ser62 ) and the Cdc20/Mad2/BubR1/Bub3 complex"
     . SPARSER::COLLECTION)
    ("Cdc20/Mad2/BubR1/Bub3" . SPARSER::COLLECTION)
    ("PLK and MAPK14/SAPKp38α" . SPARSER::COLLECTION)
    ("PLK" . SPARSER::PROTEIN) ("Enzyme" . SPARSER::ENZYME)
    ("MAPKAPK2, MAPK14/SAPKp38α, GSK3α, and GSK3β" . SPARSER::COLLECTION)
    ("MAPK9/JNK2" . SPARSER::COLLECTION) ("MAPK8/JNK1" . SPARSER::COLLECTION)
    ("rBcl-xL" . SPARSER::COLLECTION) ("rBcl" . SPARSER::PROTEIN)
    ("PLK1 and MAPK14/SAPKp38α" . SPARSER::COLLECTION)
    ("xL" . SPARSER::PROTEIN) ("GFP-H2B" . SPARSER::COLLECTION)
    ("protein-histone H2B" . SPARSER::COLLECTION)
    ("a longer period" . SPARSER::PROTEIN)
    ("siRNAs or siRNAs" . SPARSER::COLLECTION)
    ("poisoning" . SPARSER::MOLECULE) ("BubR1 and Mad2" . SPARSER::COLLECTION)
    ("CENPA and HEC1, and co-location" . SPARSER::COLLECTION)
    ("HEC1, and co-location" . SPARSER::COLLECTION) ("Abs" . SPARSER::PROTEIN)
    ("the microtubule plus-end tracking-associated protein CLIP170"
     . SPARSER::PROTEIN)
    ("CENPA and HEC1" . SPARSER::COLLECTION) ("CENPA" . SPARSER::PROTEIN)
    ("cyclinB1 and phospho-H3" . SPARSER::COLLECTION)
    ("blebbistatin" . SPARSER::DRUG)
    ("cyclinB1 and securin" . SPARSER::COLLECTION)
    ("securin" . SPARSER::PROTEIN)
    ("wild type (wt) HA-Bcl-xL and HA-Bcl-xL(Ser62Ala) mutants"
     . SPARSER::MUTANT)
    ("HA-Bcl-xL" . SPARSER::COLLECTION)
    ("Bcl-xL and various Bcl-xL phosphorylation mutants" . SPARSER::COLLECTION)
    ("colchicine" . SPARSER::DRUG) ("vincristine" . SPARSER::DRUG)
    ("paclitaxel" . SPARSER::DRUG)
    ("anaphase-promoting complex or cyclosome" . SPARSER::COLLECTION)
    ("cyclosome" . SPARSER::PROTEIN) ("SAC" . SPARSER::PROTEIN)
    ("Cajal" . SPARSER::PROTEIN)
    ("the phosphorylation mutant Bcl-xL(Ser49Ala) and dual mutant Bcl-xL(Ser49/62Ala)"
     . SPARSER::COLLECTION)
    ("dual mutant Bcl-xL" . SPARSER::PROTEIN) ("Mad2-" . SPARSER::PROTEIN)
    ("Cdc20-" . SPARSER::PROTEIN) ("taxol-" . SPARSER::DRUG)
    ("PLK1, BubR1, and Mad2" . SPARSER::COLLECTION)
    ("PLK1 and MAPK14/SAPKp38α at" . SPARSER::COLLECTION)
    ("taxol" . SPARSER::DRUG) ("Ala" . SPARSER::AMINO-ACID)
    ("p38α" . SPARSER::PROTEIN) ("Cdc27" . SPARSER::PROTEIN)
    ("MAPKAPK2" . SPARSER::PROTEIN) ("MAPK9" . SPARSER::PROTEIN)
    ("MAPK8" . SPARSER::PROTEIN) ("H2B" . SPARSER::PROTEIN)
    ("histone H2B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Bcl-xS" . SPARSER::PROTEIN) ("Bcl-x" . SPARSER::PROTEIN)
    ("CLIP170" . SPARSER::PROTEIN) ("HEC1" . SPARSER::PROTEIN)
    ("N2" . SPARSER::PROTEIN) ("G 2 /M" . SPARSER::PROTEIN)
    ("cyclinB1" . SPARSER::PROTEIN) ("Bub1" . SPARSER::PROTEIN)
    ("cdc20" . SPARSER::PROTEIN)
    ("anaphase-promoting complex" . SPARSER::PROTEIN)
    ("Cdk1" . SPARSER::PROTEIN) ("Cdc20" . SPARSER::PROTEIN)
    ("γ-tubulin" . SPARSER::PROTEIN) ("α at" . SPARSER::PROTEIN)
    ("MAPK14" . SPARSER::PROTEIN) ("IL-1β and BACE-1" . SPARSER::COLLECTION)
    ("using nonselective pharmacological antagonists" . SPARSER::MOLECULE)
    ("the frontal cortex soluble fraction" . SPARSER::COMPONENT)
    ("the temporal cortex soluble fractions" . SPARSER::COMPONENT)
    ("Sara" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HSP32 and HSP70" . SPARSER::COLLECTION)
    ("IκB and NF-κB" . SPARSER::COLLECTION)
    ("astrocytes/microglia" . SPARSER::COLLECTION)
    ("rofecoxib" . SPARSER::DRUG)
    ("the key pathogenic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("/PS1/COX-2" . SPARSER::COLLECTION)
    ("IL-6 and TNF-α" . SPARSER::COLLECTION)
    ("neo or sw" . SPARSER::COLLECTION)
    ("COX-2 and IL-1β" . SPARSER::COLLECTION)
    ("IL-1β or BACE-1" . SPARSER::COLLECTION)
    ("IL-1β, PGE 2, or forskolin" . SPARSER::COLLECTION)
    ("IL-1β-" . SPARSER::PROTEIN) ("PI3-K and PKA" . SPARSER::COLLECTION)
    ("IL-1β-treated SH-SY5Y" . SPARSER::PROTEIN) ("SH-SY5Y" . SPARSER::PROTEIN)
    ("PGE 2 or forskolin" . SPARSER::COLLECTION)
    ("AKT and ERK1/2" . SPARSER::COLLECTION)
    ("LY294002 and H89" . SPARSER::COLLECTION)
    ("AKT or CREB" . SPARSER::COLLECTION)
    ("LY294002 or H89" . SPARSER::COLLECTION)
    ("AKT and CREB" . SPARSER::COLLECTION)
    ("the selective PI3-K inhibitor LY294002 (10 μ m ) or the PKA inhibitor H89 (1 μ m ) in the absence or presence of PGE 2 (10 μ m )"
     . SPARSER::COLLECTION)
    ("PGE 2 and forskolin" . SPARSER::COLLECTION)
    ("forskolin" . SPARSER::PROTEIN)
    ("NS398 (50 μ m ) or VER155008 (10 μ m )" . SPARSER::COLLECTION)
    ("PGE 2 , cAMP, and IL-1β" . SPARSER::COLLECTION)
    ("Wang" . SPARSER::PROTEIN) ("PGE 2 and cAMP" . SPARSER::COLLECTION)
    ("IL-1β and Aβ" . SPARSER::COLLECTION)
    ("COX-2 and PGE 2" . SPARSER::COLLECTION)
    ("COX-2 or PGE 2" . SPARSER::COLLECTION)
    ("prions" . SPARSER::PROTEIN-FAMILY) ("COX-2 and Aβ" . SPARSER::COLLECTION)
    ("APP" . SPARSER::PROTEIN) ("APs" . SPARSER::PROTEIN)
    ("PKA/CREB" . SPARSER::COLLECTION) ("PI3-K/AKT" . SPARSER::COLLECTION)
    ("interleukin-1β (IL-1β) and Aβ" . SPARSER::COLLECTION)
    ("COX-2 and its metabolic product prostaglandin (PG)E 2"
     . SPARSER::COLLECTION)
    ("PG" . SPARSER::PROTEIN)
    ("nonsteroidal anti-inflammatory drugs" . SPARSER::DRUG)
    ("NSAIDs" . SPARSER::DRUG) ("amyloid" . SPARSER::PROTEIN)
    ("AD" . SPARSER::PROTEIN) ("γ-secretase" . SPARSER::PROTEIN)
    ("HSP32" . SPARSER::PROTEIN) ("β 1" . SPARSER::PROTEIN)
    ("PS1" . SPARSER::PROTEIN) ("KT5720" . SPARSER::DRUG)
    ("heat shock protein 70" . SPARSER::PROTEIN)
    ("mPGES-1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("NS398" . SPARSER::DRUG)
    ("Heat shock protein 70" . SPARSER::PROTEIN)
    ("amyloid precursor protein" . SPARSER::PROTEIN)
    ("β-amyloid" . SPARSER::MOLECULE) ("BACE-1" . SPARSER::PROTEIN)
    ("interleukin-1β" . SPARSER::PROTEIN)
    ("cyclooxygenase 2" . SPARSER::PROTEIN) ("XR" . SPARSER::PROTEIN)
    ("MTH" . SPARSER::PROTEIN) ("GCC" . SPARSER::PROTEIN)
    ("both independent prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PAK2 and pPAK2" . SPARSER::COLLECTION)
    ("PAk2 and pPAK2" . SPARSER::COLLECTION)
    ("an invasiveness-associated gene" . SPARSER::GENE)
    ("caspase-3 and similar proteases" . SPARSER::COLLECTION)
    ("at least one known target" . SPARSER::TARGET-PROTEIN)
    ("independent prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PAK2 and pSer20PAK2associate" . SPARSER::COLLECTION)
    ("PAK2 (IRS for gastric cancer vs. normal gastric mucosa: 5.62 ± 1.93 vs. 2.33 ± 0.68, P < 0.001) and pSer20PAK2 (IRS for gastric cancer vs. normal gastric mucosa: 5.99 ± 2.06 vs. 2.27 ± 0.61, P < 0.001) proteins"
     . SPARSER::COLLECTION)
    ("IRS" . SPARSER::PROTEIN)
    ("caspase-3 and similar proteases
[ xref ]"
     . SPARSER::COLLECTION)
    ("Cdc42/Rac" . SPARSER::COLLECTION)
    ("PAK1 and 96% homology" . SPARSER::COLLECTION)
    ("attractive therapeutic targets" . SPARSER::TARGET-PROTEIN)
    ("active monomers" . SPARSER::MONOMER)
    ("an inactive homodimer" . SPARSER::HOMODIMER)
    ("Rac and Cdc42" . SPARSER::COLLECTION) ("PAKs 1–3" . SPARSER::COLLECTION)
    ("monomers" . SPARSER::MONOMER) ("homodimer" . SPARSER::HOMODIMER)
    ("Cdc42 and Rac1" . SPARSER::COLLECTION) ("PAKs" . SPARSER::PROTEIN-FAMILY)
    ("various angiogenic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("protein catabolic enzymes" . SPARSER::ENZYME)
    ("PAK2 (p = 0.012) and pSer20PAK2 (p = 0.010)" . SPARSER::COLLECTION)
    ("multi-factor" . SPARSER::COLLECTION) ("p " . SPARSER::PROTEIN)
    ("cox" . SPARSER::PROTEIN) ("PAK2 and pSer20PAK2" . SPARSER::COLLECTION)
    ("PAK2 and Ser20-phosphorylated PAK2 (pSer20PAK2)" . SPARSER::COLLECTION)
    ("kinase (PAK)" . SPARSER::KINASE) ("PAK" . SPARSER::PROTEIN)
    ("PAk2" . SPARSER::PROTEIN) ("–3 " . SPARSER::PROTEIN)
    ("tub2" . SPARSER::PROTEIN) ("small G protein" . SPARSER::PROTEIN)
    ("PAKs 1" . SPARSER::PROTEIN) ("group I" . SPARSER::PROTEIN)
    ("procaspase-8 and BID" . SPARSER::COLLECTION)
    ("Polyubiquitination" . SPARSER::PROTEIN)
    ("unstable p18" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the stable intermediate enzyme p43 and the unstable product p18"
     . SPARSER::COLLECTION)
    ("Apoptosome" . SPARSER::BIO-COMPLEX) ("apoptosome" . SPARSER::BIO-COMPLEX)
    ("the subsequent procaspase-8" . SPARSER::PROTEIN)
    ("the synthetic leucine zipper soluble CD95 ligand (LZ-sCD95) or biotin-labeled TRAIL"
     . SPARSER::COLLECTION)
    ("the synthetic leucine zipper soluble CD95 ligand" . SPARSER::PROTEIN)
    ("CD95 or TRAIL" . SPARSER::COLLECTION) ("LZ" . SPARSER::PROTEIN)
    ("p43, p30, and p18" . SPARSER::COLLECTION) ("FLIP" . SPARSER::PROTEIN)
    ("p55 and BID" . SPARSER::COLLECTION)
    ("receptors, and FADD" . SPARSER::COLLECTION)
    ("p55 or p30" . SPARSER::COLLECTION)
    ("Glu-Leu-Gln-Thr-Asp-Gly" . SPARSER::COLLECTION)
    ("Met-Thr-Ile-Ser-Asp-Ser (MTISDS)" . SPARSER::COLLECTION)
    ("Pro-Arg-Glu-Gln-Asp-Ser" . SPARSER::COLLECTION)
    ("Met-Thr-Ile-Ser-Asp-Ser" . SPARSER::COLLECTION)
    ("the minimal cis/trans variant" . SPARSER::VARIANT)
    ("trans/trans" . SPARSER::COLLECTION) ("trans/cis" . SPARSER::COLLECTION)
    ("cis/cis" . SPARSER::COLLECTION) ("CD95R" . SPARSER::PROTEIN)
    ("GFP, and GFP" . SPARSER::COLLECTION)
    ("calibrated Western blot" . SPARSER::PROTEIN)
    ("FADD, p55, and BID" . SPARSER::COLLECTION)
    ("-mCherry" . SPARSER::COLLECTION)
    ("p55, p43, p30, p18, BID, and tBID" . SPARSER::COLLECTION)
    ("cis and trans" . SPARSER::COLLECTION) ("cis/trans" . SPARSER::COLLECTION)
    ("modes—cis, trans, or cis+trans—of" . SPARSER::COLLECTION)
    ("The trimeric CD95 receptor" . SPARSER::RECEPTOR)
    ("FADD and procaspase-8" . SPARSER::COLLECTION)
    ("receptor, FADD, and procaspase-8" . SPARSER::COLLECTION)
    ("Cis" . SPARSER::PROTEIN) ("classes" . CLASS)
    ("cis or trans" . SPARSER::COLLECTION) ("cis" . SPARSER::PROTEIN)
    ("the active RRRL complex" . SPARSER::BIO-COMPLEX)
    ("a single monomeric receptor" . SPARSER::PROTEIN)
    ("a pure and stable trimer" . SPARSER::TRIMER)
    ("the biologically active ligand-bound receptor trimer" . SPARSER::TRIMER)
    ("trimer" . SPARSER::TRIMER) ("CD95R-CD95L" . SPARSER::PROTEIN-PAIR)
    ("its trimeric form" . SPARSER::FORM)
    ("soluble CD95L fused" . SPARSER::PROTEIN)
    ("dimeric conformation" . SPARSER::BIO-CONFORMATION)
    ("p43 and p18" . SPARSER::COLLECTION) ("ncl" . SPARSER::PROTEIN)
    ("Pr" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PrF" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p18 and p43" . SPARSER::COLLECTION)
    ("the red fluorescent protein mCherry" . SPARSER::PROTEIN)
    ("monomeric green fluorescent protein" . SPARSER::PROTEIN)
    ("calnexin" . SPARSER::PROTEIN)
    ("the fluorescent proteins" . SPARSER::PROTEIN)
    ("the fluorescent protein" . SPARSER::PROTEIN)
    ("Ile-Glu-Thr-Asp (IETD)" . SPARSER::COLLECTION)
    ("Ile-Glu-Thr-Asp" . SPARSER::COLLECTION)
    ("Neither p55 nor p53 (later referred to as p55) nor p30"
     . SPARSER::COLLECTION)
    ("p53 (later referred to as p55) nor p30" . SPARSER::COLLECTION)
    ("BID and procaspase-3" . SPARSER::COLLECTION)
    ("caspase-3 and BID" . SPARSER::COLLECTION)
    ("p43 or p41" . SPARSER::COLLECTION)
    ("a minimal model variant" . SPARSER::VARIANT)
    ("dimeric procaspase-8" . SPARSER::PROTEIN)
    ("accelerated caspase-8" . SPARSER::PROTEIN)
    ("the dimeric conformation" . SPARSER::BIO-CONFORMATION)
    ("BID or procaspase-3" . SPARSER::COLLECTION)
    ("more p26 (or p24 for the b isoform) and p18" . SPARSER::COLLECTION)
    ("p43 and p30" . SPARSER::COLLECTION) ("p18 and p10" . SPARSER::COLLECTION)
    ("p26 (or p24 for the b isoform) and p30 ( xref )" . SPARSER::COLLECTION)
    ("p43 (or p41 for the b isoform) and p10" . SPARSER::COLLECTION)
    ("p55 and p53" . SPARSER::COLLECTION) ("subdomains" . SPARSER::PROTEIN)
    ("the adaptor protein Fas-associated death domain protein (FADD)"
     . SPARSER::PROTEIN)
    ("protein (FADD)" . SPARSER::PROTEIN)
    ("caspase-8 and caspase-10" . SPARSER::COLLECTION)
    ("proteases" . SPARSER::PROTEIN)
    ("further proapoptotic proteins" . SPARSER::PROTEIN)
    ("caspases, caspase-3 and caspase-7" . SPARSER::COLLECTION)
    ("tBID" . SPARSER::PROTEIN)
    ("CD95L (also known as Fas ligand) or TRAIL" . SPARSER::COLLECTION)
    ("complex (DISC)" . SPARSER::BIO-COMPLEX)
    ("caspases, caspase-8 and caspase-10" . SPARSER::COLLECTION)
    ("DISC" . SPARSER::BIO-COMPLEX) ("TRAIL" . SPARSER::PROTEIN)
    ("DISCs" . SPARSER::BIO-COMPLEX) ("N1" . SPARSER::PROTEIN)
    ("caspase-9" . SPARSER::PROTEIN) ("procaspase-9" . SPARSER::PROTEIN)
    ("factor–κB" . SPARSER::PROTEIN) ("Procaspase-8" . SPARSER::PROTEIN)
    ("c-FLIP" . SPARSER::PROTEIN) ("CD95 ligand" . SPARSER::PROTEIN)
    ("p18" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p30" . SPARSER::PROTEIN)
    ("p26" . SPARSER::PROTEIN) ("p10" . SPARSER::PROTEIN)
    ("p41" . SPARSER::PROTEIN) ("p43" . SPARSER::PROTEIN)
    ("procaspase-8" . SPARSER::PROTEIN) ("caspase-7" . SPARSER::PROTEIN)
    ("caspase-10" . SPARSER::PROTEIN) ("caspase-8" . SPARSER::PROTEIN)
    ("CD95L" . SPARSER::PROTEIN) ("E2F1/Egr-1" . SPARSER::COLLECTION)
    ("the proinflammatory cytokines" . SPARSER::PROTEIN)
    ("other new E2F1" . SPARSER::PROTEIN) ("BDL and DDC" . SPARSER::COLLECTION)
    ("E2F1, Egr1, Shp, and EID1" . SPARSER::COLLECTION)
    ("Shp" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cyp7a1 and Cyp8b1" . SPARSER::COLLECTION) ("Cyp8b1" . SPARSER::PROTEIN)
    ("Cyp7a1" . SPARSER::PROTEIN) ("b" . SPARSER::PROTEIN)
    ("rosiglitazone (RGZ)" . SPARSER::DRUG)
    ("GW4064 and peroxisome proliferator-activated receptor gamma"
     . SPARSER::COLLECTION)
    ("FXR" . SPARSER::PROTEIN) ("CDCA" . SPARSER::MOLECULE)
    ("E2F1-EID1" . SPARSER::COLLECTION) ("E2F1 and SHP" . SPARSER::COLLECTION)
    ("Int and Rep" . SPARSER::COLLECTION) ("Rep" . SPARSER::PROTEIN)
    ("Int" . SPARSER::PROTEIN)
    ("E2F1 and SHP or E2F1 and EID1" . SPARSER::COLLECTION)
    ("SHP or E2F1 and EID1" . SPARSER::COLLECTION)
    ("E2F1 and EID1" . SPARSER::COLLECTION)
    ("EID1 and SHP" . SPARSER::COLLECTION)
    ("SHP or EID1" . SPARSER::COLLECTION) ("GFP and IP" . SPARSER::COLLECTION)
    ("HA-EID1" . SPARSER::COLLECTION) ("GFP-SHP" . SPARSER::COLLECTION)
    ("Flag-E2F1" . SPARSER::COLLECTION) ("SHP and EID1" . SPARSER::COLLECTION)
    ("fibrogenic genes" . SPARSER::GENE) ("sera" . SPARSER::PROTEIN)
    ("triglycerides" . SPARSER::MOLECULE)
    ("aminotransferase (ALT)" . SPARSER::PROTEIN)
    ("aminotransferase" . SPARSER::PROTEIN) ("NC" . SPARSER::PROTEIN)
    ("Egr1" . SPARSER::PROTEIN)
    ("TNFα and intercellular adhesion molecule 1" . SPARSER::COLLECTION)
    ("DDC or BDL" . SPARSER::COLLECTION)
    ("fibrogenic genes α-SMA and α1-collagen mRNA" . SPARSER::RNA)
    ("the commonly used fibrotic markers α-SMA and α1-collagen"
     . SPARSER::COLLECTION)
    ("E2F1, Egr-1, α-SMA, and α1-collagen mRNA and reduction of SHP mRNA in 8 NASH cirrhotic livers"
     . SPARSER::COLLECTION)
    ("E2F1, Egr-1, α-SMA, and α1-collagen" . SPARSER::COLLECTION)
    ("Cirrhosis" . SPARSER::PROTEIN) ("a new biomarker" . SPARSER::MOLECULE)
    ("α-SMA and α1-collagen" . SPARSER::COLLECTION)
    ("a novel fibrogenic gene" . SPARSER::GENE)
    ("alpha smooth muscle actin (α-SMA) and type I collagen"
     . SPARSER::COLLECTION)
    ("HSCs" . SPARSER::PROTEIN) ("a fibrogenic gene" . SPARSER::GENE)
    ("E2F1, SHP and EID1" . SPARSER::COLLECTION)
    ("SHP and its co-repressor EID1" . SPARSER::COLLECTION)
    ("sham and BDL" . SPARSER::COLLECTION) ("BDL" . SPARSER::PROTEIN)
    ("DDC" . SPARSER::PROTEIN) ("NF-kappaB" . SPARSER::PROTEIN)
    ("PPARγ" . SPARSER::PROTEIN)
    ("peroxisome proliferator-activated receptor gamma" . SPARSER::PROTEIN)
    ("farnesoid X receptor" . SPARSER::PROTEIN)
    ("hepatic type" . SPARSER::PROTEIN)
    ("Type I" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Glutathione S-transferase" . SPARSER::PROTEIN) ("GW4064" . SPARSER::DRUG)
    ("2F1" . SPARSER::PROTEIN) ("Zinc finger" . SPARSER::PROTEIN)
    ("Nuclear receptor" . SPARSER::PROTEIN) ("EID1" . SPARSER::PROTEIN)
    ("inhibitor of differentiation 1" . SPARSER::PROTEIN)
    ("NR0B2" . SPARSER::PROTEIN)
    ("small heterodimer partner" . SPARSER::PROTEIN)
    ("Egr-1" . SPARSER::PROTEIN) ("early growth response" . SPARSER::PROTEIN)
    ("transcription factor 1" . SPARSER::PROTEIN)
    ("Wilms3 and PODXL" . SPARSER::COLLECTION)
    ("WT1 and BASP1" . SPARSER::COLLECTION)
    ("WT1 and PODXL" . SPARSER::COLLECTION) ("MYO5a" . SPARSER::PROTEIN)
    ("HGFL" . SPARSER::PROTEIN) ("NES" . SPARSER::PROTEIN)
    ("GDNF" . SPARSER::PROTEIN)
    ("phosphatase and negative regulator of this pathway ( xref )"
     . SPARSER::NEGATIVE-REGULATOR)
    ("phosphatase and negative regulator" . SPARSER::COLLECTION)
    ("RAS/MAPK" . SPARSER::COLLECTION) ("XIN" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the canonical Wnt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("WT1-delZ" . SPARSER::PROTEIN-PAIR)
    ("CCNB1 and CCNB2" . SPARSER::COLLECTION)
    ("Cyclin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("E2F1 and NFY" . SPARSER::COLLECTION)
    ("CCNB1 , CCNB2 and CDK1" . SPARSER::COLLECTION)
    ("BIRC5 , BUB1 , CCNB1 , CCNB2 , CDC20 , CDK1 , CENPF , PLK1 and UBE2C"
     . SPARSER::COLLECTION)
    ("CENPF" . SPARSER::PROTEIN)
    ("a leukaemia-associated mutant WT1 protein" . SPARSER::PROTEIN)
    ("the wt WT1 and the mutant protein ()" . SPARSER::COLLECTION)
    ("only two genes" . SPARSER::GENE) ("pink" . SPARSER::PROTEIN)
    ("wt WT1 and the mutant protein (green area)" . SPARSER::COLLECTION)
    ("APOL" . SPARSER::PROTEIN) ("WT1  Wilms3" . SPARSER::PROTEIN)
    ("WT1 or sh" . SPARSER::COLLECTION) ("RHO" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MSC" . SPARSER::PROTEIN)
    ("p65, ZNF143, NANOG, c-JUN, EGR1, ETS1 and NFKB" . SPARSER::COLLECTION)
    ("NFKB" . SPARSER::PROTEIN) ("NANOG" . SPARSER::PROTEIN)
    ("around CREB1" . SPARSER::PROTEIN) ("SP1" . SPARSER::PROTEIN)
    ("WT1-" . SPARSER::PROTEIN)
    ("receptors and downstream signalling components" . SPARSER::COLLECTION)
    ("DSH ( DVL3 ), CTNNB1 , as well as the downstream target VIM ()"
     . SPARSER::COLLECTION)
    ("TOP/FOP" . SPARSER::COLLECTION) ("Wnt/β-catenin" . SPARSER::COLLECTION)
    ("FOP" . SPARSER::PROTEIN)
    ("CDKN1B (p27) and CDKN2B (p15) genes" . SPARSER::COLLECTION)
    ("DUSP3 and DUSP16" . SPARSER::COLLECTION) ("MLCK" . SPARSER::PROTEIN)
    ("DSH" . SPARSER::PROTEIN) ("AXL" . SPARSER::PROTEIN)
    ("Wilms3" . SPARSER::PROTEIN) ("WT1 and sh" . SPARSER::COLLECTION)
    ("WT1 Wilms3" . SPARSER::PROTEIN) ("Wilms2" . SPARSER::PROTEIN)
    ("_ATM/ATR" . SPARSER::COLLECTION) ("WT1 Wilms2" . SPARSER::PROTEIN)
    ("only 70 identical genes" . SPARSER::GENE)
    ("WT1 and si" . SPARSER::COLLECTION)
    ("PODXL and JARID2" . SPARSER::COLLECTION) ("PODXL" . SPARSER::PROTEIN)
    ("WT1 and Wilms3" . SPARSER::COLLECTION)
    ("p53 or a control antibody" . SPARSER::COLLECTION)
    ("GFP, or GFP" . SPARSER::COLLECTION) ("an intact ZF1" . SPARSER::PROTEIN)
    ("EGR" . SPARSER::PROTEIN) ("WT1 and p53" . SPARSER::COLLECTION)
    ("α-Actinin1" . SPARSER::PROTEIN) ("mRNP" . SPARSER::PROTEIN)
    ("RNP" . SPARSER::PROTEIN) ("ZF" . SPARSER::PROTEIN)
    ("factors, and WT1" . SPARSER::COLLECTION)
    ("WT1 and the +KTS isoform" . SPARSER::COLLECTION)
    ("TCC" . SPARSER::PROTEIN) ("GC" . SPARSER::PROTEIN)
    ("amino acids, lysine, threonine and serine (KTS)" . SPARSER::COLLECTION)
    ("amino acids, lysine, threonine and serine" . SPARSER::COLLECTION)
    ("Pro/Gln" . SPARSER::COLLECTION)
    ("proline–glutamine" . SPARSER::COLLECTION)
    ("DNA and RNA" . SPARSER::COLLECTION) ("N-terminally" . SPARSER::PROTEIN)
    ("Phospho-Kinase" . SPARSER::PROTEIN) ("RER1" . SPARSER::PROTEIN)
    ("_WT" . SPARSER::PROTEIN) ("pCL7" . SPARSER::PROTEIN)
    ("of 45 µ" . SPARSER::PROTEIN) ("ZF 1" . SPARSER::PROTEIN)
    ("NKX3–1" . SPARSER::PROTEIN) ("MYO9B" . SPARSER::PROTEIN)
    ("MYO5" . SPARSER::PROTEIN) ("HMOX1" . SPARSER::PROTEIN)
    ("GREM2" . SPARSER::PROTEIN)
    ("dual specificity phosphatase" . SPARSER::PROTEIN)
    ("DUSP6" . SPARSER::PROTEIN) ("MKP3" . SPARSER::PROTEIN)
    ("TCF4" . SPARSER::PROTEIN) ("Cyclin B1" . SPARSER::PROTEIN)
    ("MAD2a" . SPARSER::PROTEIN) ("UBE2C" . SPARSER::PROTEIN)
    ("PLK1" . SPARSER::PROTEIN) ("CDC20" . SPARSER::PROTEIN)
    ("CCNB2" . SPARSER::PROTEIN) ("CCNB1" . SPARSER::PROTEIN)
    ("BUB1" . SPARSER::PROTEIN) ("BIRC5" . SPARSER::PROTEIN)
    ("MNS1" . SPARSER::PROTEIN) ("S46" . SPARSER::PROTEIN)
    ("S15" . SPARSER::PROTEIN) ("ETS1" . SPARSER::PROTEIN)
    ("ZNF143" . SPARSER::PROTEIN) ("E2F1" . SPARSER::PROTEIN)
    ("OCT 3" . SPARSER::PROTEIN) ("YY1" . SPARSER::PROTEIN)
    ("CREB1" . SPARSER::PROTEIN) ("DVL3" . SPARSER::PROTEIN)
    ("MESDC2" . SPARSER::PROTEIN) ("FZD8" . SPARSER::PROTEIN)
    ("p15" . SPARSER::PROTEIN) ("CDKN2B" . SPARSER::PROTEIN)
    ("CDKN1B" . SPARSER::PROTEIN) ("MYLK1" . SPARSER::PROTEIN)
    ("DUSP16" . SPARSER::PROTEIN) ("DUSP3" . SPARSER::PROTEIN)
    ("FZD6" . SPARSER::PROTEIN) ("WNT5" . SPARSER::PROTEIN)
    ("Androgen Receptor" . SPARSER::PROTEIN) ("JARID2" . SPARSER::PROTEIN)
    ("CASP7" . SPARSER::PROTEIN) ("GDF5" . SPARSER::PROTEIN)
    ("CTNNB1" . SPARSER::PROTEIN) ("BASP1" . SPARSER::PROTEIN)
    ("ACTN1" . SPARSER::PROTEIN) ("α-Actinin" . SPARSER::PROTEIN)
    ("RNA binding" . SPARSER::PROTEIN) ("ZF2" . SPARSER::PROTEIN)
    ("ZF1" . SPARSER::PROTEIN) ("U2AF65" . SPARSER::PROTEIN)
    ("ZF3" . SPARSER::PROTEIN) ("EGR1" . SPARSER::PROTEIN)
    ("Mix" . SPARSER::PROTEIN) ("Hg and proteinuria" . SPARSER::COLLECTION)
    ("seizures" . SPARSER::PROTEIN)
    ("APEX1 Asp148Glu and PE" . SPARSER::COLLECTION)
    ("XRCC1 and XRCC7" . SPARSER::COLLECTION)
    ("APEX1 , XRCC1 and XPD" . SPARSER::COLLECTION)
    ("GSTT1 and GSTM1" . SPARSER::COLLECTION) ("Oxidative DNA" . SPARSER::DNA)
    ("gestational age" . SPARSER::PROTEIN)
    ("oxidative stress-induced DNA" . SPARSER::DNA)
    ("placental genes" . SPARSER::GENE)
    ("placental ischemia" . SPARSER::PROTEIN)
    ("the mild and severe PE" . SPARSER::PROTEIN)
    ("mild PE and severe PE" . SPARSER::COLLECTION)
    ("XPD Lys751Gln and XRCC3 polymorphisms" . SPARSER::COLLECTION)
    ("APEX1 Asp148Glu, XPD Lys751Gln and XRCC3 polymorphisms"
     . SPARSER::COLLECTION)
    ("APEX1 Asp148Glu, XPD Lys751Gln, XRCC1 Arg399Gln and XRCC3 Thr241Met polymorphisms"
     . SPARSER::COLLECTION)
    ("severe PE" . SPARSER::PROTEIN) ("mild PE" . SPARSER::PROTEIN)
    ("XRCC1 Arg399Gln and XRCC3 Thr241Met polymorphisms" . SPARSER::COLLECTION)
    ("RecA" . SPARSER::PROTEIN) ("polymerase (PARP)" . SPARSER::PROTEIN)
    ("DNA polymerase-b and poly-ADPribose" . SPARSER::COLLECTION)
    ("DNA polymerase-b" . SPARSER::PROTEIN-PAIR)
    ("ADPribose" . SPARSER::MOLECULE) ("Ligase" . SPARSER::LIGASE)
    ("deoxyribose" . SPARSER::MOLECULE)
    ("hydroxyl radical, and hydrogen peroxide" . SPARSER::COLLECTION)
    ("Oxygen" . SPARSER::MOLECULE) ("Hg" . SPARSER::MOLECULE)
    ("group D ( XPD )" . SPARSER::PROTEIN) ("Met" . SPARSER::AMINO-ACID)
    ("Gln" . SPARSER::AMINO-ACID) ("XPD" . SPARSER::PROTEIN)
    ("PE" . SPARSER::PROTEIN) ("XRCC7" . SPARSER::PROTEIN)
    ("GSTM1" . SPARSER::PROTEIN) ("GSTT1" . SPARSER::PROTEIN)
    ("of pregnancy" . SPARSER::PROTEIN) ("Rad51" . SPARSER::PROTEIN)
    ("XPD protein" . SPARSER::PROTEIN)
    ("xeroderma pigmentosum group D" . SPARSER::PROTEIN)
    ("ERCC2" . SPARSER::PROTEIN)
    ("excision repair cross-complementing rodent repair deficiency"
     . SPARSER::PROTEIN)
    ("DNA repair protein" . SPARSER::PROTEIN) ("XRCC3" . SPARSER::PROTEIN)
    ("group D" . SPARSER::PROTEIN) ("APEX1" . SPARSER::PROTEIN)
    ("Akt, PI3K and mTOR" . SPARSER::COLLECTION)
    ("sporadic colon cancer" . SPARSER::PROTEIN)
    ("BRAF and KRAS" . SPARSER::COLLECTION) ("CDKs" . SPARSER::PROTEIN)
    ("KRAS and TP53" . SPARSER::COLLECTION)
    ("WNT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the respective protein and grade 1 or 2" . SPARSER::COLLECTION)
    ("the respective protein" . SPARSER::PROTEIN)
    ("phospho-AKT, S6RP and phospho-4E-BP1" . SPARSER::COLLECTION)
    ("phospho-Akt, S6RP and phospho-4E-BP1" . SPARSER::COLLECTION)
    ("the other proteins (AKT, GSK3-beta, mTOR, PI3K, 4E-BP1) or phospho-proteins (phospho-mTOR, phospho-PI3K, pS6PR)"
     . SPARSER::COLLECTION)
    ("phospho-Akt, S6RP or phospho-4E-BP1" . SPARSER::COLLECTION)
    ("4E-BP1 and phospho-4E-BP1" . SPARSER::COLLECTION)
    ("PI3K and phospho-PI3K" . SPARSER::COLLECTION)
    ("mTOR and phospho-mTOR" . SPARSER::COLLECTION)
    ("4E-BP1 and 121 REU" . SPARSER::COLLECTION)
    ("phospho-PI3K and phospho-S6RP" . SPARSER::COLLECTION)
    ("their respective phosphorylated forms" . SPARSER::FORM)
    ("potential prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PI3K/mammalian target of rapamycin" . SPARSER::COLLECTION)
    ("Adjuvant" . SPARSER::DRUG) ("adjuvant" . SPARSER::DRUG)
    ("prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("RP" . SPARSER::PROTEIN) ("KRAS and BRAF, and DNA" . SPARSER::COLLECTION)
    ("BRAF, and DNA" . SPARSER::COLLECTION) ("formalin" . SPARSER::MOLECULE)
    ("D5S346" . SPARSER::PROTEIN) ("GSK3-beta" . SPARSER::PROTEIN)
    ("Colon cancer" . SPARSER::PROTEIN) ("cellular ROS" . SPARSER::PROTEIN)
    ("signalosome" . SPARSER::PROTEIN)
    ("PKCδ and cytochrome c" . SPARSER::COLLECTION)
    ("p66shc and Romo1" . SPARSER::COLLECTION)
    ("Antioxidant" . SPARSER::PROTEIN)
    ("myxothiazol and stigmatellin" . SPARSER::COLLECTION)
    ("stigmatellin" . SPARSER::MOLECULE) ("myxothiazol" . SPARSER::DRUG)
    ("functional ETC." . SPARSER::PROTEIN)
    ("neighboring mitochondria" . SPARSER::PROTEIN)
    ("a strong CMV promoter" . SPARSER::PROMOTER)
    ("the stress-induced intracellular ROS" . SPARSER::PROTEIN)
    ("mitochondria-targeted recombinant fluorescent protein HyPer-mito"
     . SPARSER::COLLECTION)
    ("HyPer" . SPARSER::PROTEIN)
    ("exogenous hydrogen peroxide" . SPARSER::DRUG)
    ("a strong CMV-promoter" . SPARSER::PROMOTER)
    ("a lentiviral construct pLCMV-p66shc" . SPARSER::COLLECTION)
    ("pLCMV-p66shc" . SPARSER::COLLECTION)
    ("no functional ETC" . SPARSER::PROTEIN) ("puromycin" . SPARSER::DRUG)
    ("shc" . SPARSER::PROTEIN)
    ("a reactive iron and a production of ROS" . SPARSER::COLLECTION)
    ("a reactive iron" . SPARSER::MOLECULE) ("ferritin" . SPARSER::PROTEIN)
    ("DATS" . SPARSER::MOLECULE) ("Foxos" . SPARSER::PROTEIN-FAMILY)
    ("Foxo" . SPARSER::PROTEIN-FAMILY)
    ("Foxo1 and Foxo3a" . SPARSER::COLLECTION)
    ("PKCβ or JNK" . SPARSER::COLLECTION) ("electrons" . SPARSER::MOLECULE)
    ("oxidoreductase" . SPARSER::PROTEIN) ("Shc" . SPARSER::PROTEIN)
    ("thioredoxin reductase/peroxiredoxin" . SPARSER::COLLECTION)
    ("peroxiredoxin" . SPARSER::PROTEIN) ("excessive ROS" . SPARSER::PROTEIN)
    ("dysfunctional mitochondria" . SPARSER::PROTEIN)
    ("HyPer-mito" . SPARSER::COLLECTION) ("mito" . SPARSER::PROTEIN)
    ("ETC" . SPARSER::PROTEIN) ("Romo1" . SPARSER::PROTEIN)
    ("ETC." . SPARSER::PROTEIN) ("superoxide anions" . SPARSER::MOLECULE)
    ("p52" . SPARSER::PROTEIN) ("Mitotracker Red" . SPARSER::MOLECULE)
    ("diallyl trisulfide" . SPARSER::MOLECULE) ("Foxo3a" . SPARSER::PROTEIN)
    ("Foxo1" . SPARSER::PROTEIN) ("p66" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p46" . SPARSER::PROTEIN) ("p54" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p66Shc" . SPARSER::PROTEIN) ("thioredoxin reductase" . SPARSER::PROTEIN)
    ("SOD2" . SPARSER::PROTEIN) ("SHC1" . SPARSER::PROTEIN)
    ("p66shc" . SPARSER::PROTEIN) ("EGFR and IGFR" . SPARSER::COLLECTION)
    ("IGFR" . SPARSER::PROTEIN) ("IGF-IR and EGFR" . SPARSER::COLLECTION)
    ("the typical matrices" . SPARSER::PROTEIN-FAMILY)
    ("ARNO or cytohesins" . SPARSER::COLLECTION)
    ("siRNA and SecinH3-inhibited ARNO/cytohesins" . SPARSER::COLLECTION)
    ("EGF and IGF" . SPARSER::COLLECTION) ("Tran" . SPARSER::PROTEIN)
    ("EGF or IGF" . SPARSER::COLLECTION)
    ("IGF pathway-associated molecules" . SPARSER::MOLECULE)
    ("SecinH3 and ARNO-siRNA xref" . SPARSER::COLLECTION)
    ("EGF pathway-associated molecules" . SPARSER::MOLECULE)
    ("ARNO, EGFR, pEGFR, pIRS1, pShc, and pERK1/2" . SPARSER::COLLECTION)
    ("ARNO and pEGFR" . SPARSER::COLLECTION) ("n  " . SPARSER::PROTEIN)
    ("p  " . SPARSER::PROTEIN) ("pIGF-IR" . SPARSER::COLLECTION)
    ("pIGF" . SPARSER::PROTEIN)
    ("ARNO and other cytohesins" . SPARSER::COLLECTION)
    ("EGFR and IGF-IR" . SPARSER::COLLECTION)
    ("Cetuximab or Panitumumab-resistant cells" . SPARSER::COLLECTION)
    ("EGF and IGFs" . SPARSER::COLLECTION)
    ("dimerized receptors" . SPARSER::PROTEIN)
    ("IGF-I and IGF-II" . SPARSER::COLLECTION) ("IGF" . SPARSER::PROTEIN)
    ("Cetuximab and Panitumumab" . SPARSER::COLLECTION)
    ("Panitumumab" . SPARSER::DRUG) ("Cetuximab" . SPARSER::DRUG)
    ("Anti-EGFR monoclonal antibodies and EGFR tyrosine kinase inhibitors"
     . SPARSER::INHIBITOR)
    ("antibodies and EGFR" . SPARSER::COLLECTION) ("Ligands" . SPARSER::LIGAND)
    ("ErbB3, and ErbB4" . SPARSER::COLLECTION)
    ("EGFR/ErbB1" . SPARSER::COLLECTION) ("ErbB" . SPARSER::PROTEIN)
    ("EGFR and IGF-I" . SPARSER::COLLECTION)
    ("ARNO-siRNA" . SPARSER::COLLECTION)
    ("EGF and IGF-I" . SPARSER::COLLECTION) ("ARNO" . SPARSER::PROTEIN)
    ("Epidermal growth factor (EGF) and insulin-like growth factor-I (IGF-I)"
     . SPARSER::COLLECTION)
    ("SW480" . SPARSER::PROTEIN) ("group B" . SPARSER::PROTEIN)
    ("group A" . SPARSER::PROTEIN) ("PO 4" . SPARSER::PROTEIN)
    ("pIRS1" . SPARSER::PROTEIN) ("pERK1/2" . SPARSER::PROTEIN)
    ("IGF-IR" . SPARSER::PROTEIN) ("IGF-II" . SPARSER::PROTEIN)
    ("IGF –IR" . SPARSER::PROTEIN) ("Anti-EGFR" . SPARSER::PROTEIN)
    ("ErbB4" . SPARSER::PROTEIN) ("ErbB3" . SPARSER::PROTEIN)
    ("ErbB1" . SPARSER::PROTEIN) ("biological agent" . SPARSER::DRUG)
    ("SecinH3" . SPARSER::DRUG) ("WS" . SPARSER::PROTEIN)
    ("KSA" . SPARSER::PROTEIN) ("CTC" . SPARSER::PROTEIN)
    ("EMT and MET" . SPARSER::COLLECTION)
    ("E-cad-luciferase" . SPARSER::COLLECTION)
    ("a secondary epithelial state" . SPARSER::BIO-STATE)
    ("a mesenchymal state" . SPARSER::BIO-STATE)
    ("the clinically relevant FGFR kinase inhibitor" . SPARSER::INHIBITOR)
    ("a three-dimensional matrix" . SPARSER::PROTEIN-FAMILY)
    ("pan-FGFR1" . SPARSER::COLLECTION) ("IIIc" . SPARSER::PROTEIN)
    ("ER " . SPARSER::PROTEIN)
    ("betacellulin, amphiregulin and epiregulin" . SPARSER::COLLECTION)
    ("epiregulin" . SPARSER::PROTEIN) ("amphiregulin" . SPARSER::PROTEIN)
    ("betacellulin" . SPARSER::PROTEIN)
    ("the TGF-β family member bone morphogenic protein 2" . SPARSER::PROTEIN)
    ("actin, Twist and Snail" . SPARSER::COLLECTION)
    ("Twist" . SPARSER::PROTEIN) ("exogenous TGF-β1" . SPARSER::PROTEIN)
    ("NME" . SPARSER::PROTEIN)
    ("a pre- or post-TGF-β exposure state" . SPARSER::COLLECTION)
    ("post-TGF-β" . SPARSER::COLLECTION) ("pre-" . SPARSER::PROTEIN)
    ("NME-LM" . SPARSER::COLLECTION) ("LM" . SPARSER::PROTEIN)
    ("secondary mammary fat" . SPARSER::PROTEIN)
    ("post-EMT" . SPARSER::COLLECTION)
    ("E-cad and fibronectin" . SPARSER::COLLECTION)
    ("track" . SPARSER::PROTEIN)
    ("exogenous TGF-β" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FGFR1-IIIc" . SPARSER::COLLECTION) ("IIIb" . SPARSER::DRUG)
    ("FGFR1, FGFR2 and FGFR3" . SPARSER::COLLECTION)
    ("a predictive biomarker" . SPARSER::MOLECULE)
    ("variants and recombinant expression" . SPARSER::COLLECTION)
    ("FGFR" . SPARSER::PROTEIN) ("EMT:MET" . SPARSER::BIO-COMPLEX)
    ("hope" . SPARSER::PROTEIN)
    ("Fibroblast growth factor receptor" . SPARSER::PROTEIN)
    ("Epidermal growth factor receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Epithelial cadherin" . SPARSER::PROTEIN) ("FAK1" . SPARSER::PROTEIN)
    ("FGFR4" . SPARSER::PROTEIN) ("Snai2" . SPARSER::PROTEIN)
    ("1K" . SPARSER::PROTEIN) ("FGFR2-IIIb" . SPARSER::PROTEIN)
    ("FGF2" . SPARSER::PROTEIN)
    ("fibroblast growth factor receptor" . SPARSER::PROTEIN)
    ("E-cad" . SPARSER::PROTEIN) ("epithelial cadherin" . SPARSER::PROTEIN)
    ("/IKK α" . SPARSER::COLLECTION)
    ("IL-1 β -stimulated osteoarthritic chondrocytes" . SPARSER::PROTEIN)
    ("chondrocytes" . SPARSER::PROTEIN) ("iNOS" . SPARSER::PROTEIN)
    ("Erk1/2 and JNK1/2" . SPARSER::COLLECTION)
    ("iron, and CO" . SPARSER::COLLECTION) ("TNFR" . SPARSER::PROTEIN)
    ("IKK/NF- κ B" . SPARSER::COLLECTION)
    ("mediators, and inhibitors of apoptosis" . SPARSER::INHIBITOR)
    ("inflammatory mediators, and inhibitors" . SPARSER::COLLECTION)
    ("mediators, and inhibitors" . SPARSER::COLLECTION)
    ("ROS-thioredoxin-ASK1" . SPARSER::COLLECTION)
    ("JNK1/2 and p38" . SPARSER::COLLECTION)
    ("PKC α and β II" . SPARSER::COLLECTION)
    ("at least three cytosolic subunits" . SPARSER::FRAGMENT)
    ("a multimeric protein complex" . SPARSER::BIO-COMPLEX)
    ("p47 phox , p67 phox , and p40 phox" . SPARSER::COLLECTION)
    ("the classical PKC α" . SPARSER::PROTEIN)
    ("DAG and Ca 2+" . SPARSER::COLLECTION)
    ("DAG or Ca 2+" . SPARSER::COLLECTION) ("RM" . SPARSER::PROTEIN)
    ("eicosanoids and the production of inflammatory molecules"
     . SPARSER::COLLECTION)
    ("eicosanoids" . SPARSER::MOLECULE)
    ("ROS and NF- κ B" . SPARSER::COLLECTION)
    ("The classical NF- κ B" . SPARSER::PROTEIN)
    ("cPLA 2 and HO-1" . SPARSER::COLLECTION)
    ("SB202190, SP600125, DPI, NAC, or helenalin" . SPARSER::COLLECTION)
    ("SB202190, SP600125, DPI, APO, NAC, or helenalin" . SPARSER::COLLECTION)
    ("MAPK, JNK1/2, and ROS" . SPARSER::COLLECTION)
    ("SB202190, SP600125, or NAC" . SPARSER::COLLECTION)
    ("SB202190, SP600125, DPI, APO, or NAC" . SPARSER::COLLECTION)
    ("JNK1/2-" . SPARSER::HUMAN-PROTEIN-FAMILY) ("helenalin" . SPARSER::DRUG)
    ("MAPK-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SB202190 or SP600125" . SPARSER::COLLECTION)
    ("MAPK or JNK1/2" . SPARSER::COLLECTION)
    ("their respective proteins" . SPARSER::PROTEIN)
    ("MAPK or JNK1" . SPARSER::COLLECTION)
    ("their respective inhibitors U0126, SB202190, or SP600125"
     . SPARSER::COLLECTION)
    ("MAPK, and JNK1/2" . SPARSER::COLLECTION)
    ("U0126, SB202190, or SP600125" . SPARSER::COLLECTION)
    ("p42/p44 MAPK" . SPARSER::COLLECTION)
    ("SB202190 and SP600125" . SPARSER::COLLECTION)
    ("DPI or Gö6976" . SPARSER::COLLECTION)
    ("NAC, DPI, or APO" . SPARSER::COLLECTION)
    ("NOX and ROS" . SPARSER::COLLECTION) ("DPI and APO" . SPARSER::COLLECTION)
    ("/NOX" . SPARSER::COLLECTION) ("APO" . SPARSER::PROTEIN)
    ("H 2 O 2 and superoxide anion" . SPARSER::COLLECTION)
    ("PKC α and TNFR1" . SPARSER::COLLECTION)
    ("TNFR1 and PKC α" . SPARSER::COLLECTION)
    ("TNFR1 and PKC" . SPARSER::COLLECTION)
    ("PKC α and PKC β II" . SPARSER::COLLECTION) ("nAb" . SPARSER::PROTEIN)
    ("VCAM-1 and ICAM-1" . SPARSER::COLLECTION)
    ("a CO-releasing molecule and HO-1 inducer" . SPARSER::COLLECTION)
    ("LPS-induced proinflammatory cytokines" . SPARSER::PROTEIN)
    ("iron" . SPARSER::MOLECULE) ("bilirubin" . SPARSER::MOLECULE)
    ("NOX/ROS" . SPARSER::COLLECTION)
    ("the cytoplasmic components and translocation to the membrane"
     . SPARSER::COLLECTION)
    ("p22 phox and NOX2" . SPARSER::COLLECTION)
    ("p40 phox ,  p47 phox , and p67 phox" . SPARSER::COLLECTION)
    ("prostaglandin and leukotriene" . SPARSER::COLLECTION)
    ("TNF- α and IL-1 β" . SPARSER::COLLECTION)
    ("p65 and IKK α" . SPARSER::COLLECTION)
    ("MAPK and JNK1/2" . SPARSER::COLLECTION)
    ("TNFR1/PKC α" . SPARSER::COLLECTION) ("Heme" . SPARSER::PROTEIN)
    ("proinflammatory cytokines" . SPARSER::PROTEIN)
    ("PKC β" . SPARSER::PROTEIN) ("PKC δ" . SPARSER::PROTEIN)
    ("I κ B α" . SPARSER::PROTEIN) ("TNF- α   " . SPARSER::PROTEIN)
    ("cPLA2 α" . SPARSER::PROTEIN) ("JNK-1" . SPARSER::PROTEIN)
    ("p44 MAPK" . SPARSER::PROTEIN) ("superoxide anion" . SPARSER::MOLECULE)
    ("PKC β II" . SPARSER::PROTEIN) ("β -galactosidase" . SPARSER::PROTEIN)
    ("anti- β" . SPARSER::PROTEIN) ("gp91 phox" . SPARSER::PROTEIN)
    ("N-acetylcysteine" . SPARSER::DRUG) ("CORM-2" . SPARSER::DRUG)
    ("Cl 2" . SPARSER::PROTEIN)
    ("tricarbonyldichlororuthenium (II) dimer" . SPARSER::DRUG)
    ("IL-10" . SPARSER::PROTEIN) ("Heme oxygenase 1" . SPARSER::PROTEIN)
    ("p67 phox" . SPARSER::PROTEIN) ("p47 phox" . SPARSER::PROTEIN)
    ("p40 phox" . SPARSER::PROTEIN) ("IL-1 β" . SPARSER::PROTEIN)
    ("JNK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("IKK α" . SPARSER::PROTEIN)
    ("PKC α" . SPARSER::PROTEIN) ("TNFR1" . SPARSER::PROTEIN)
    ("NF- κ B" . SPARSER::PROTEIN) ("carbon monoxide" . SPARSER::MOLECULE)
    ("TNF- α" . SPARSER::PROTEIN) ("cPLA 2" . SPARSER::PROTEIN)
    ("Cytosolic phospholipase A 2" . SPARSER::PROTEIN)
    ("estrogen receptor (ER)" . SPARSER::PROTEIN)
    ("GR-beta" . SPARSER::COLLECTION)
    ("variants and mutants" . SPARSER::COLLECTION)
    ("MDV3100 [ xref ] and mifepristone [ xref ]" . SPARSER::COLLECTION)
    ("established pro-survival AR target genes that could be downstream mediators of GR’s"
     . SPARSER::GENE)
    ("beginning step" . SPARSER::PROTEIN)
    ("abiraterone or enzalutamide" . SPARSER::COLLECTION)
    ("PI3-K/mTOR" . SPARSER::COLLECTION)
    ("SGK1 and MKP1" . SPARSER::COLLECTION)
    ("adrenal androgens" . SPARSER::DRUG)
    ("antagonists, mifepristone or CORT" . SPARSER::COLLECTION)
    ("the GR-regulated prosurvival gene SGK1" . SPARSER::PROTEIN)
    ("AR/GR" . SPARSER::COLLECTION)
    ("their respective promoters" . SPARSER::PROMOTER)
    ("AR or GR" . SPARSER::COLLECTION) ("PSA and SGK1" . SPARSER::COLLECTION)
    ("detectable using available antibodies" . SPARSER::ANTIBODY)
    ("MDV3100, and dexamethasone" . SPARSER::COLLECTION)
    ("the known AR- and GR-regulated genes SGKI and MKP1"
     . SPARSER::COLLECTION)
    ("AR-" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Mifepristone" . SPARSER::DRUG)
    ("NSC" . SPARSER::PROTEIN) ("Doxycycline" . SPARSER::DRUG)
    ("GR-KD" . SPARSER::COLLECTION) ("doxycycline" . SPARSER::DRUG)
    ("SC" . SPARSER::PROTEIN) ("systemic testicular androgens" . SPARSER::DRUG)
    ("Therapeutics" . SPARSER::THERAPEUTICS) ("Mif" . SPARSER::PROTEIN)
    ("androgen and glucocorticoid" . SPARSER::COLLECTION)
    ("Trypan" . SPARSER::DRUG) ("exogenous androgen" . SPARSER::PROTEIN)
    ("AR and GR" . SPARSER::COLLECTION) ("CDX" . SPARSER::PROTEIN)
    ("Casodex" . SPARSER::DRUG) ("Mrna" . SPARSER::RNA)
    ("GR agonist dexamethasone (Dex, 100 nM) and the AR antagonist MDV3100 (10 μM)"
     . SPARSER::COLLECTION)
    ("DU145 and PC3" . SPARSER::COLLECTION) ("primary PC" . SPARSER::PROTEIN)
    ("glucocorticoids" . SPARSER::PROTEIN) ("GR and AR" . SPARSER::COLLECTION)
    ("docetaxel" . SPARSER::DRUG) ("enzalutamide" . SPARSER::DRUG)
    ("Abiraterone" . SPARSER::DRUG) ("androstenedione" . SPARSER::PROTEIN)
    ("DHEA" . SPARSER::DRUG) ("galeterone" . SPARSER::DRUG)
    ("controlling metastatic PC" . SPARSER::PROTEIN)
    ("metastatic PC" . SPARSER::PROTEIN) ("Glucocorticoid" . SPARSER::PROTEIN)
    ("MKP1/DUSP" . SPARSER::COLLECTION)
    ("DUSP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SGK1-Flag" . SPARSER::COLLECTION)
    ("mifepristone and CORT" . SPARSER::COLLECTION) ("CORT" . SPARSER::PROTEIN)
    ("mifepristone" . SPARSER::DRUG) ("dexamethasone" . SPARSER::PROTEIN)
    ("The glucocorticoid receptor (GR) and AR share several transcriptional targets"
     . SPARSER::COLLECTION)
    ("glucocorticoid receptor (GR)" . SPARSER::PROTEIN)
    ("/dual specificity phosphatase 1" . SPARSER::COLLECTION)
    ("glucocorticoid-regulated kinase 1" . SPARSER::COLLECTION)
    ("glucocorticoid" . SPARSER::PROTEIN) ("PI3-K" . SPARSER::PROTEIN)
    ("SGK2" . SPARSER::PROTEIN) ("MKP-1" . SPARSER::PROTEIN)
    ("KLK3" . SPARSER::PROTEIN) ("H12" . SPARSER::PROTEIN)
    ("SE 2" . SPARSER::PROTEIN) ("micrococcal nuclease" . SPARSER::PROTEIN)
    ("beta-actin" . SPARSER::PROTEIN) ("RNA1" . SPARSER::PROTEIN)
    ("G-3" . SPARSER::PROTEIN) ("GSK 650394" . SPARSER::DRUG)
    ("serum/glucocorticoid-regulated kinase 1" . SPARSER::PROTEIN)
    ("anti-androgens" . SPARSER::DRUG) ("tissue type" . SPARSER::PROTEIN)
    ("TOK-001" . SPARSER::DRUG)
    ("prostate-specific antigen" . SPARSER::PROTEIN)
    ("NR3C1" . SPARSER::PROTEIN) ("GSK650394" . SPARSER::DRUG)
    ("DUSP1" . SPARSER::PROTEIN)
    ("dual specificity phosphatase 1" . SPARSER::PROTEIN)
    ("MKP1" . SPARSER::PROTEIN) ("Map kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("regulated kinase 1" . SPARSER::PROTEIN)
    ("NF-κB, VEGF and MMP-9" . SPARSER::COLLECTION)
    ("Notch1 and its ligand Jagged1" . SPARSER::COLLECTION)
    ("c-Rel, Rel-A and Twist2" . SPARSER::COLLECTION)
    ("twist" . SPARSER::PROTEIN) ("solvents" . SPARSER::MOLECULE)
    ("sesquiterpene" . SPARSER::MOLECULE)
    ("IKKβ, IκBα and NF-κB" . SPARSER::COLLECTION)
    ("EMT and stemness" . SPARSER::COLLECTION)
    ("tumor blood vessel formation increases intratumoral hypoxia"
     . SPARSER::PROTEIN)
    ("OCT4, Nanog, SOX2, KLF4 and cMyc" . SPARSER::COLLECTION)
    ("Vimentin, Slug, Snail and Twist2" . SPARSER::COLLECTION)
    ("cMyc" . SPARSER::PROTEIN) ("HIF" . SPARSER::PROTEIN)
    ("Notch1, Jagged1, Notch4, c-Met and CD133" . SPARSER::COLLECTION)
    ("Nanog, SOX2, FOXA2, SOX17 and PDX-1" . SPARSER::COLLECTION)
    ("Gas" . SPARSER::PROTEIN) ("more severe hypoxia" . SPARSER::PROTEIN)
    ("gemcitabine and FOLFIRINOX" . SPARSER::COLLECTION)
    ("gemcitabine" . SPARSER::DRUG) ("Alu" . SPARSER::PROTEIN)
    ("the proliferation marker Ki67 and the EMT marker Vimentin"
     . SPARSER::COLLECTION)
    ("E-cadherin and the cleaved fragment" . SPARSER::COLLECTION)
    ("Notch1 and its ligand Jagged1 (the latter two genes were not represented in the stem cell array)"
     . SPARSER::COLLECTION)
    ("SOX2 and FOXA2" . SPARSER::COLLECTION) ("MSCs" . SPARSER::PROTEIN)
    ("normoxia or hypoxia" . SPARSER::COLLECTION)
    ("HIF-1α, the NF-κB subunits c-Rel and Rel-A and the EMT-related protein Twist2"
     . SPARSER::COLLECTION)
    ("c-Rel and Rel-A" . SPARSER::COLLECTION)
    ("Slug and Vimentin" . SPARSER::COLLECTION)
    ("the highly transactivation-competent NF-κB subunit c-Rel"
     . SPARSER::PROTEIN)
    ("liposomes" . SPARSER::PROTEIN) ("NF-κB and EMT" . SPARSER::COLLECTION)
    ("Snail and Twist2" . SPARSER::COLLECTION)
    ("Slug, Snail, Twist2 and Vimentin" . SPARSER::COLLECTION)
    ("SOX2 and Nanog" . SPARSER::COLLECTION)
    ("Jagged1 and Notch4" . SPARSER::COLLECTION)
    ("FOXA2 (involved in differentiation of pancreas and tumorigenesis) and Snail (involved in downregulation of E-cadherin and induction of EMT)"
     . SPARSER::COLLECTION)
    ("SOX2 (essential for self-renewal and pluripotency), FOXA2 (involved in differentiation of pancreas and tumorigenesis) and Snail (involved in downregulation of E-cadherin and induction of EMT)"
     . SPARSER::COLLECTION)
    ("normoxia" . SPARSER::PROTEIN)
    ("5% CO 2 and 94% N 2" . SPARSER::COLLECTION)
    ("HIF-1α and its target gene VEGF" . SPARSER::COLLECTION)
    ("gas" . SPARSER::PROTEIN) ("K-ras and/or p53" . SPARSER::COLLECTION)
    ("E-cadherin and Vimentin" . SPARSER::COLLECTION)
    ("MIA" . SPARSER::PROTEIN) ("CSC and EMT" . SPARSER::COLLECTION)
    ("NFAT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ref" . SPARSER::HUMAN-PROTEIN-FAMILY) ("diterpenoid" . SPARSER::MOLECULE)
    ("Hook" . SPARSER::PROTEIN-FAMILY) ("c-Rel and Rel" . SPARSER::COLLECTION)
    ("Rel" . SPARSER::PROTEIN) ("Vimentin" . SPARSER::PROTEIN)
    ("ESA" . SPARSER::PROTEIN) ("EMT and CSC" . SPARSER::COLLECTION)
    ("Triptolide" . SPARSER::DRUG) ("Hypoxia" . SPARSER::PROTEIN)
    ("triptolide" . SPARSER::DRUG) ("MMP-9" . SPARSER::PROTEIN)
    ("Twist1" . SPARSER::PROTEIN) ("KLF4" . SPARSER::PROTEIN)
    ("OCT4" . SPARSER::PROTEIN) ("PDX-1" . SPARSER::PROTEIN)
    ("SOX17" . SPARSER::PROTEIN) ("Notch1" . SPARSER::PROTEIN)
    ("FOXA2" . SPARSER::PROTEIN) ("SOX2" . SPARSER::PROTEIN)
    ("N  2" . SPARSER::PROTEIN) ("N  1" . SPARSER::PROTEIN)
    ("cytokeratin 19" . SPARSER::PROTEIN) ("Rel-A" . SPARSER::PROTEIN)
    ("Sox2" . SPARSER::PROTEIN) ("Notch4" . SPARSER::PROTEIN)
    ("Twist2" . SPARSER::PROTEIN) ("Aldehyde dehydrogenase" . SPARSER::PROTEIN)
    ("c-Rel" . SPARSER::PROTEIN) ("HIF-1" . SPARSER::PROTEIN)
    ("CD133" . SPARSER::PROTEIN) ("HIF-1α" . SPARSER::PROTEIN)
    ("ALDH1" . SPARSER::PROTEIN) ("aldehyde dehydrogenase" . SPARSER::PROTEIN)
    ("human ER-α-interacting proteins and target genes" . SPARSER::COLLECTION)
    ("neuraminidase" . SPARSER::PROTEIN)
    ("acetylcholinesterase" . SPARSER::PROTEIN) ("Pang" . SPARSER::PROTEIN)
    ("an indispensable factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("proteins and ligand" . SPARSER::COLLECTION)
    ("receptor-" . SPARSER::PROTEIN) ("HTS" . SPARSER::PROTEIN)
    ("a locked nucleic acid (LNA)-based miRNA-122 inhibitor"
     . SPARSER::INHIBITOR)
    ("ER-α-associated proteins" . SPARSER::PROTEIN)
    ("all these ER-α-associated proteins" . SPARSER::PROTEIN)
    ("both ER-α-interacting proteins and target genes (both validated and predicted)"
     . SPARSER::COLLECTION)
    ("estrogen or ER-α" . SPARSER::COLLECTION)
    ("ER-α and its associated proteins" . SPARSER::COLLECTION)
    ("its associated proteins" . SPARSER::PROTEIN)
    ("plasma membrane-associated ER-α" . SPARSER::PROTEIN)
    ("non-nuclear subcellular fractions" . SPARSER::COMPONENT)
    ("grid" . SPARSER::PROTEIN) ("E2 and ER-α" . SPARSER::COLLECTION)
    ("3200 ps and 4800 ps" . SPARSER::COLLECTION)
    ("cut-offs" . SPARSER::PROTEIN-PAIR)
    ("many conformational states" . SPARSER::BIO-STATE)
    ("ps" . SPARSER::PROTEIN) ("protein and ligand" . SPARSER::COLLECTION)
    ("FP " . SPARSER::PROTEIN) ("TP, FP, TN and FN" . SPARSER::COLLECTION)
    ("ACC, PPV and FPR" . SPARSER::COLLECTION) ("FPR" . SPARSER::PROTEIN)
    ("FN" . SPARSER::PROTEIN) ("TN" . SPARSER::PROTEIN)
    ("FP" . SPARSER::PROTEIN) ("TP" . SPARSER::PROTEIN)
    ("hsa-miR-155" . SPARSER::COLLECTION) ("MTI" . SPARSER::PROTEIN)
    ("hsa" . SPARSER::PROTEIN) ("mature miRNA" . SPARSER::MICRO-RNA)
    ("previously obtained target genes" . SPARSER::GENE)
    ("SAM" . SPARSER::PROTEIN) ("DIANA-microT-CDS" . SPARSER::COLLECTION)
    ("CDS" . SPARSER::PROTEIN) ("MTIs" . SPARSER::PROTEIN)
    ("MF" . SPARSER::PROTEIN) ("ER-α-protein" . SPARSER::COLLECTION)
    ("EPI" . SPARSER::PROTEIN)
    ("lasofoxifene, arzoxifene and bazedoxifene" . SPARSER::COLLECTION)
    ("bazedoxifene" . SPARSER::DRUG) ("arzoxifene" . SPARSER::DRUG)
    ("lasofoxifene" . SPARSER::DRUG)
    ("the Food and Drug Administration (FDA)" . SPARSER::COLLECTION)
    ("raloxifene" . SPARSER::DRUG) ("SERM" . SPARSER::DRUG)
    ("SERDs" . SPARSER::DRUG) ("SERMs" . SPARSER::DRUG)
    ("modulators-" . SPARSER::PROTEIN) ("miRNAs-" . SPARSER::MICRO-RNA)
    ("ER-α-interacting proteins and target genes" . SPARSER::COLLECTION)
    ("those ER-α-associated proteins" . SPARSER::PROTEIN)
    ("ICI 182,780" . SPARSER::DRUG) ("MRX34" . SPARSER::PROTEIN)
    ("etc ." . SPARSER::PROTEIN) ("PDB2" . SPARSER::PROTEIN)
    ("DOCK6" . SPARSER::PROTEIN) ("dock 3" . SPARSER::PROTEIN)
    ("hsa-let-7" . SPARSER::RNA) ("miR-155" . SPARSER::PROTEIN)
    ("log 2" . SPARSER::PROTEIN) ("ER-α" . SPARSER::PROTEIN)
    ("Estrogen receptor" . SPARSER::PROTEIN) ("dynein" . SPARSER::PROTEIN)
    ("polyubiquitinated" . SPARSER::PROTEIN) ("cortactin" . SPARSER::PROTEIN)
    ("HDAC6 and sirtuin 2" . SPARSER::COLLECTION)
    ("acetyltransferases" . SPARSER::PROTEIN)
    ("proteins, Mdp1 and Mdp2" . SPARSER::COLLECTION)
    ("a profound impact" . SPARSER::PROTEIN)
    ("axonal microtubules" . SPARSER::PROTEIN)
    ("GST-pulldown" . SPARSER::COLLECTION) ("pulldown" . SPARSER::PROTEIN)
    ("Mdp3 and HDAC6" . SPARSER::COLLECTION)
    ("GFP-HDAC6" . SPARSER::COLLECTION) ("Mdp3" . SPARSER::PROTEIN)
    ("MBP or MBP-Mdp3" . SPARSER::COLLECTION)
    ("MBP-Mdp3" . SPARSER::PROTEIN-PAIR) ("rhodamine" . SPARSER::PROTEIN)
    ("MBP-pulldown" . SPARSER::PROTEIN-PAIR) ("amylase" . SPARSER::PROTEIN)
    ("bacteria MBP-tagged Mdp3 full-length (FL) and two mutant"
     . SPARSER::COLLECTION)
    ("full-length (FL)" . SPARSER::PROTEIN) ("MBP" . SPARSER::PROTEIN)
    ("ice, and Mdp3" . SPARSER::COLLECTION)
    ("cellular tubulin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("microtubules/tubulin" . SPARSER::COLLECTION)
    ("MAP1, MAP2, and tau" . SPARSER::COLLECTION)
    ("MAP1, MAP2, MAP4, tau, and MAP7" . SPARSER::COLLECTION)
    ("tau" . SPARSER::PROTEIN)
    ("microtubules and/or its tubulin subunits" . SPARSER::COLLECTION)
    ("the major cytoskeletal components" . SPARSER::COMPONENT)
    ("tubulin and microtubules" . SPARSER::COLLECTION)
    ("soluble dimer" . SPARSER::DIMER)
    ("tubulin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("microtubule-associated proteins" . SPARSER::PROTEIN)
    ("MAPs" . SPARSER::PROTEIN) ("Hsp90" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SIRT2" . SPARSER::PROTEIN) ("sirtuin 2" . SPARSER::PROTEIN)
    ("MEC-17" . SPARSER::PROTEIN) ("Mdp1" . SPARSER::PROTEIN)
    ("deacetylase activity" . SPARSER::PROTEIN)
    ("L -glutamine" . SPARSER::MOLECULE) ("MAP7D3" . SPARSER::PROTEIN)
    ("MAP4" . SPARSER::PROTEIN) ("MAP2" . SPARSER::PROTEIN)
    ("MAP1" . SPARSER::PROTEIN) ("histone deacetylase 6" . SPARSER::PROTEIN)
    ("protein 3" . SPARSER::PROTEIN) ("MAP7" . SPARSER::PROTEIN)
    ("VEGF, bFGF and HGF" . SPARSER::COLLECTION)
    ("chondroitin" . SPARSER::MOLECULE)
    ("Several angiogenic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("heparin" . SPARSER::PROTEIN)
    ("CD44 and chemokines" . SPARSER::COLLECTION)
    ("CD44 and other adhesion molecules" . SPARSER::COLLECTION)
    ("chemokines and their receptors" . SPARSER::COLLECTION)
    ("CXCL12/CXCR4" . SPARSER::COLLECTION)
    ("angiogenic hyaluronan" . SPARSER::PROTEIN)
    ("HAS1 and HAS2" . SPARSER::COLLECTION)
    ("stromal proteoglycans and glycosaminoglycans" . SPARSER::COLLECTION)
    ("proteoglycans and glycosaminoglycans" . SPARSER::COLLECTION)
    ("chemokines receptors and their ligands" . SPARSER::COLLECTION)
    ("Chemokines" . SPARSER::PROTEIN)
    ("hyaluronan or hyaluronan" . SPARSER::COLLECTION)
    ("CD44 or HASes" . SPARSER::COLLECTION)
    ("CD31 and CD44" . SPARSER::COLLECTION)
    ("intercellular adhesion molecule 1 (ICAM-1) and vascular cell adhesion molecule 1 (VCAM-1)"
     . SPARSER::COLLECTION)
    ("interleukin 6 (IL-6), intercellular adhesion molecule 1 (ICAM-1) and vascular cell adhesion molecule 1 (VCAM-1)"
     . SPARSER::COLLECTION)
    ("vascular cell adhesion molecule 1" . SPARSER::PROTEIN)
    ("CXCL9, CXCR3, CXCL12 and CXCR4" . SPARSER::COLLECTION)
    ("the cell-permeable NFκB inhibitor SN50" . SPARSER::PROTEIN)
    ("SN" . SPARSER::PROTEIN) ("IKKβ and IKKβ" . SPARSER::COLLECTION)
    ("chemokine receptors and their ligands" . SPARSER::COLLECTION)
    ("Akt, p38, Erk, STAT3 and FAK" . SPARSER::COLLECTION)
    ("both ligand- and cell-type dependent xref" . SPARSER::COLLECTION)
    ("PI3K-Akt" . SPARSER::COLLECTION) ("ligand-" . SPARSER::LIGAND)
    ("CXCL12 and their receptors" . SPARSER::COLLECTION)
    ("chemokine CXCL9, CXCL12 and their receptors" . SPARSER::COLLECTION)
    ("the fibroblast growth factor 1 (FGF1) and leukocyte cell-derived chemotaxin"
     . SPARSER::COLLECTION)
    ("chemotaxin" . SPARSER::PROTEIN)
    ("connective tissue growth factor (CTGF)" . SPARSER::PROTEIN)
    ("HYAL2-" . SPARSER::PROTEIN) ("CD44-" . SPARSER::PROTEIN)
    ("HYAL2 and CD44" . SPARSER::COLLECTION)
    ("HYAL2 or CD44" . SPARSER::COLLECTION)
    ("peritumoral hyaluronan" . SPARSER::PROTEIN)
    ("peri-tumoral hyaluronan" . SPARSER::PROTEIN)
    ("the pericellular hyaluronan" . SPARSER::PROTEIN)
    ("Hermes" . SPARSER::PROTEIN) ("leukocytes" . SPARSER::PROTEIN)
    ("anchors" . SPARSER::ANCHOR)
    ("HYAL2 and vice versa ( xref , insert)" . SPARSER::COLLECTION)
    ("exogenous hyaluronan" . SPARSER::PROTEIN) ("aggrecan" . SPARSER::PROTEIN)
    ("the major hyaluronidases" . SPARSER::DRUG)
    ("HYAL1 and HYAL2" . SPARSER::COLLECTION)
    ("HAS1 and HAS3" . SPARSER::COLLECTION)
    ("HAS1, HAS2 and HAS3" . SPARSER::COLLECTION)
    ("CD44 and HYAL2" . SPARSER::COLLECTION)
    ("pro- and anti-angiogenic" . SPARSER::COLLECTION)
    ("CD44-hyaluronan" . SPARSER::COLLECTION)
    ("a soluble hyaluronan binding protein" . SPARSER::PROTEIN)
    ("epidermal growth factor (EGF) and hepatocyte growth factor (HGF)"
     . SPARSER::COLLECTION)
    ("cytokine and growth factor receptors" . SPARSER::COLLECTION)
    ("IQGAP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Hyaluronan and hyaluronan" . SPARSER::COLLECTION)
    ("vascular endothelial growth factors (VEGF)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("disaccharide" . SPARSER::MOLECULE)
    ("proteoglycans, glycolipids and glycosaminoglycans" . SPARSER::COLLECTION)
    ("glycosaminoglycans" . SPARSER::MOLECULE)
    ("glycolipids" . SPARSER::MOLECULE)
    ("cytokines and their receptors" . SPARSER::COLLECTION)
    ("CD44 and hyaluronan" . SPARSER::COLLECTION)
    ("CXCL9 and CXCL12" . SPARSER::COLLECTION)
    ("CXCR3 and CXCR4" . SPARSER::COLLECTION)
    ("CD44 or HYAL2" . SPARSER::COLLECTION)
    ("the hyaluronan receptor CD44 and the hyaluronidase HYAL2"
     . SPARSER::COLLECTION)
    ("hyaluronidase" . SPARSER::PROTEIN)
    ("three-dimensional (3D) extracellular matrices" . SPARSER::PROTEIN-FAMILY)
    ("collagen or Matrigel" . SPARSER::COLLECTION)
    ("matrices" . SPARSER::PROTEIN-FAMILY) ("VEGFR-2" . SPARSER::PROTEIN)
    ("c-Met" . SPARSER::PROTEIN) ("Hyaluronan binding" . SPARSER::PROTEIN)
    ("cell adhesion molecule 1" . SPARSER::PROTEIN) ("IKKβ" . SPARSER::PROTEIN)
    ("LECT1" . SPARSER::PROTEIN) ("FGF1" . SPARSER::PROTEIN)
    ("fibroblast growth factor 1" . SPARSER::PROTEIN)
    ("l protein" . SPARSER::PROTEIN) ("IKKα" . SPARSER::PROTEIN)
    ("p-38" . SPARSER::PROTEIN) ("p-p38" . SPARSER::PROTEIN)
    ("Akt 1" . SPARSER::PROTEIN) ("per 1" . SPARSER::PROTEIN)
    ("as 2" . SPARSER::PROTEIN) ("VCAM-1" . SPARSER::PROTEIN)
    ("fibroblast growth factor 2" . SPARSER::PROTEIN)
    ("anti-angiogenic" . SPARSER::DRUG) ("CXCR2" . SPARSER::PROTEIN)
    ("hyaluronan binding" . SPARSER::PROTEIN)
    ("hepatocyte growth factor" . SPARSER::PROTEIN)
    ("co-receptor" . SPARSER::PROTEIN)
    ("GTPase activating protein" . SPARSER::PROTEIN)
    ("vascular endothelial growth factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("HYAL1" . SPARSER::PROTEIN) ("HAS3" . SPARSER::PROTEIN)
    ("HAS2" . SPARSER::PROTEIN) ("HAS1" . SPARSER::PROTEIN)
    ("CXCR3" . SPARSER::PROTEIN) ("CXCL9" . SPARSER::PROTEIN)
    ("HYAL2" . SPARSER::PROTEIN) ("collaborative cohorts" . SPARSER::MOLECULE)
    ("a more distant causative variant" . SPARSER::VARIANT)
    ("an intronic variant" . SPARSER::VARIANT)
    ("gene and AAD" . SPARSER::COLLECTION)
    ("UK and Poland" . SPARSER::COLLECTION) ("RA" . SPARSER::PROTEIN)
    ("SLE" . SPARSER::PROTEIN) ("almost 2,000 AAD" . SPARSER::PROTEIN)
    ("the New Zealand rheumatoid arthritis cohort" . SPARSER::MOLECULE)
    ("SNP and AAD" . SPARSER::COLLECTION)
    ("The intronic SNP" . SPARSER::PROTEIN)
    ("the Italian cohort" . SPARSER::MOLECULE)
    ("IL17A, CYP24A1, GATA3, NFKB1 and RORA" . SPARSER::COLLECTION)
    ("RORA" . SPARSER::PROTEIN) ("the Norwegian cohort" . SPARSER::MOLECULE)
    ("1 Norwegian cohort" . SPARSER::MOLECULE) ("allele  " . SPARSER::ALLELE)
    ("CYP24A1 , CYP27B1, GATA3, IL17A, IL21, IL23A, REL and STAT2"
     . SPARSER::COLLECTION)
    ("REL" . SPARSER::PROTEIN) ("Alleles" . SPARSER::ALLELE)
    ("AAD such a monogenic form" . SPARSER::FORM) ("AIRE" . SPARSER::PROTEIN)
    ("APS" . SPARSER::PROTEIN) ("monogenic forms" . SPARSER::FORM)
    ("the UK and Italian cohorts" . SPARSER::COLLECTION)
    ("Italian cohorts" . SPARSER::MOLECULE)
    ("UK and Norwegian AAD cohorts" . SPARSER::COLLECTION)
    ("UK and Norwegian AAD cohorts (691 AAD, 715 controls)"
     . SPARSER::COLLECTION)
    ("Norwegian AAD cohorts" . SPARSER::MOLECULE)
    ("MHC, MICA, CIITA, CTLA4, PTPN22, CYP27B1, NLRP-1 and CD274"
     . SPARSER::COLLECTION)
    ("NLRP" . SPARSER::PROTEIN-FAMILY) ("CIITA" . SPARSER::PROTEIN)
    ("MICA" . SPARSER::PROTEIN) ("MHC" . SPARSER::PROTEIN)
    ("OR 1" . SPARSER::PROTEIN)
    ("interferon induced with helicase C domain 1" . SPARSER::PROTEIN)
    ("IFIH1" . SPARSER::PROTEIN)
    ("GC, vitamin D binding protein" . SPARSER::PROTEIN)
    ("25-hydroxyvitamin D-1 alpha hydroxylase" . SPARSER::PROTEIN)
    ("1,25-dihydroxyvitamin D" . SPARSER::MOLECULE)
    ("CYP24A1" . SPARSER::PROTEIN) ("vitamin D" . SPARSER::MOLECULE)
    ("CYP2R1" . SPARSER::PROTEIN) ("homolog )" . SPARSER::PROTEIN)
    ("kappa light polypeptide gene enhancer in B-cells 1" . SPARSER::PROTEIN)
    ("NFATC2" . SPARSER::PROTEIN) ("TBX21" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 4" . SPARSER::PROTEIN)
    ("signal transducer and activator of transcription 2" . SPARSER::PROTEIN)
    ("STAT2" . SPARSER::PROTEIN)
    ("RAR-related orphan receptor C" . SPARSER::PROTEIN)
    ("RAR-related orphan receptor A" . SPARSER::PROTEIN)
    ("p19" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("alpha subunit" . SPARSER::PROTEIN) ("interleukin 21" . SPARSER::PROTEIN)
    ("IL21" . SPARSER::PROTEIN)
    ("interleukin 17 receptor A" . SPARSER::PROTEIN)
    ("IL17RA" . SPARSER::PROTEIN) ("interleukin 17A" . SPARSER::PROTEIN)
    ("IL17A" . SPARSER::PROTEIN) ("GATA binding protein 3" . SPARSER::PROTEIN)
    ("IL23A" . SPARSER::PROTEIN) ("STAT4" . SPARSER::PROTEIN)
    ("CYP27B1" . SPARSER::PROTEIN) ("PTPN22" . SPARSER::PROTEIN)
    ("CTLA4" . SPARSER::PROTEIN) ("caveolin-1 and EP 1" . SPARSER::COLLECTION)
    ("pathological cues" . SPARSER::PROTEIN-FAMILY)
    ("EP 2 , EP 3 and EP 4" . SPARSER::COLLECTION) ("Gq" . SPARSER::DRUG)
    ("an E3 ligase and other scaffold proteins" . SPARSER::COLLECTION)
    ("EP 1 and COX-2" . SPARSER::COLLECTION)
    ("the enzyme and the receptor" . SPARSER::COLLECTION)
    ("COX-2 and EP 1 receptor" . SPARSER::COLLECTION)
    ("phosho-ERK" . SPARSER::COLLECTION) ("prostanoid" . SPARSER::MOLECULE)
    ("only cells overexpressing COX-2" . SPARSER::PROTEIN)
    ("EP 1 or COX-2" . SPARSER::COLLECTION)
    ("ligand or substrate" . SPARSER::COLLECTION) ("LPS" . SPARSER::PROTEIN)
    ("EP 2 , EP 3 or EP 4" . SPARSER::COLLECTION)
    ("COX-1 or COX-2" . SPARSER::COLLECTION)
    ("a relatively stable protein" . SPARSER::PROTEIN)
    ("COX-1 and COX-2" . SPARSER::COLLECTION) ("COXs" . SPARSER::PROTEIN)
    ("selective agonists and antagonists xref" . SPARSER::COLLECTION)
    ("antagonists" . SPARSER::MOLECULE) ("EP" . SPARSER::PROTEIN)
    ("rhodopsin" . SPARSER::PROTEIN) ("PGI 2 and TXA 2" . SPARSER::COLLECTION)
    ("PGF" . SPARSER::PROTEIN) ("prostanoids" . SPARSER::MOLECULE)
    ("cyclooxygenase (COX)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("two-step" . SPARSER::PROTEIN)
    ("cyclooxygenase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phospholipids" . SPARSER::PHOSPHOLIPID) ("Lipid" . SPARSER::LIPID)
    ("COX-2 and EP 1" . SPARSER::COLLECTION) ("-COX-2" . SPARSER::COLLECTION)
    ("receptor and COX-2" . SPARSER::COLLECTION) ("EP 1" . SPARSER::PROTEIN)
    ("prostaglandin" . SPARSER::PROTEIN) ("caveolin-1" . SPARSER::PROTEIN)
    ("COX 2" . SPARSER::PROTEIN)
    ("hypoxanthine-guanine phosphoribosyltransferase" . SPARSER::PROTEIN)
    ("EP 4" . SPARSER::PROTEIN) ("EP 3" . SPARSER::PROTEIN)
    ("COX-1" . SPARSER::PROTEIN) ("EP 2" . SPARSER::PROTEIN)
    ("prostaglandin E 2" . SPARSER::MOLECULE)
    ("G-protein coupled" . SPARSER::PROTEIN) ("TXA 2" . SPARSER::MOLECULE)
    ("PGI 2" . SPARSER::PROTEIN) ("PGE 2" . SPARSER::DRUG)
    ("PGD 2" . SPARSER::PROTEIN) ("PGH 2" . SPARSER::MOLECULE)
    ("phospholipase A 2" . SPARSER::PROTEIN)
    ("EP 1 receptor" . SPARSER::PROTEIN)
    ("cyclooxygenase -2" . SPARSER::PROTEIN) ("p53/SMAD" . SPARSER::COLLECTION)
    ("p53, SMAD3, and PAI-1" . SPARSER::COLLECTION)
    ("p53/SMAD/p63" . SPARSER::COLLECTION)
    ("Mutant p53 and serum response element-binding proteins (SREBPs)"
     . SPARSER::COLLECTION)
    ("SREBPs" . SPARSER::PROTEIN-FAMILY)
    ("PAI-1 and other target genes (e.g., CTGF)" . SPARSER::COLLECTION)
    ("NOX" . SPARSER::PROTEIN) ("ROS and p53" . SPARSER::COLLECTION)
    ("fibronectin, CTGF and p21" . SPARSER::COLLECTION)
    ("PAI-1, fibronectin, and COX-2" . SPARSER::COLLECTION)
    ("oxidase/ROS" . SPARSER::COLLECTION) ("DPI" . SPARSER::PROTEIN)
    ("SMAD and p53" . SPARSER::COLLECTION)
    ("p53 and p300" . SPARSER::COLLECTION) ("mink" . SPARSER::PROTEIN)
    ("PAI-1 and p21" . SPARSER::COLLECTION)
    ("p53 and SMAD3" . SPARSER::COLLECTION) ("activin" . SPARSER::PROTEIN)
    ("the TGF-β1-responsive genes PAI-1 (by 80%; xref ), fibronectin (by 95%; xref ), connective tissue growth factor (CTGF/CCN2), α-smooth muscle actin (α-SMA), cyclooxgenase-2 (COX-2) and p21 (by >70%; xref )"
     . SPARSER::COLLECTION)
    ("CTGF/CCN2" . SPARSER::COLLECTION) ("Pifithrin" . SPARSER::DRUG)
    ("p53 and SMAD" . SPARSER::COLLECTION)
    ("SMAD" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SMAD3/p53" . SPARSER::COLLECTION)
    ("the ALK5 receptor and downstream effectors SMAD2/3"
     . SPARSER::COLLECTION)
    ("pleotrophic ligands" . SPARSER::LIGAND)
    ("SMAD3-p53" . SPARSER::COLLECTION) ("NADP" . SPARSER::MOLECULE)
    ("SMAD3, p53 and PAI-1" . SPARSER::COLLECTION)
    ("p53 and SMADs" . SPARSER::COLLECTION) ("p53/SMAD3" . SPARSER::COLLECTION)
    ("SMAD3 and p53" . SPARSER::COLLECTION) ("Sharp-1" . SPARSER::PROTEIN)
    ("regulator of cell cycle" . SPARSER::PROTEIN)
    ("bone morphogenetic protein 7" . SPARSER::PROTEIN)
    ("Interleukin 6" . SPARSER::PROTEIN) ("p27 kip1" . SPARSER::PROTEIN)
    ("NOX1" . SPARSER::PROTEIN)
    ("histone acetyltransferase" . SPARSER::PROTEIN) ("PE2" . SPARSER::PROTEIN)
    ("α-SMA" . SPARSER::PROTEIN) ("TWEEN 20" . SPARSER::MOLECULE)
    ("DCF-DA" . SPARSER::DRUG) ("Lamin A/C" . SPARSER::PROTEIN)
    ("CCN2" . SPARSER::PROTEIN) ("SIS3" . SPARSER::PROTEIN)
    ("p22 phox" . SPARSER::PROTEIN) ("SMAD2" . SPARSER::PROTEIN)
    ("p22 Phox" . SPARSER::PROTEIN) ("HK-2" . SPARSER::PROTEIN)
    ("plasminogen activator inhibitor-1" . SPARSER::PROTEIN)
    ("SMAD3" . SPARSER::PROTEIN)
    ("Transforming growth factor-β1" . SPARSER::PROTEIN)
    ("CSC" . SPARSER::PROTEIN) ("BRM and BRG1" . SPARSER::COLLECTION)
    ("Yki" . SPARSER::PROTEIN) ("Brm" . SPARSER::PROTEIN)
    ("Brahma" . SPARSER::PROTEIN)
    ("the luminal and basal lineages" . SPARSER::COLLECTION)
    ("bipotent MaSCs" . SPARSER::PROTEIN)
    ("adherens/tight junction" . SPARSER::COLLECTION)
    ("apical junction-associated signaling molecules" . SPARSER::MOLECULE)
    ("luminal and basal phenotypes" . SPARSER::COLLECTION)
    ("a plastic substrate" . SPARSER::SUBSTRATE)
    ("basal biomarkers" . SPARSER::MOLECULE)
    ("GATA3 , estrogen receptor, and androgen receptor" . SPARSER::COLLECTION)
    ("TAZ/TEAD" . SPARSER::COLLECTION) ("BRG1/BRM" . SPARSER::COLLECTION)
    ("TAZ and its target genes" . SPARSER::COLLECTION)
    ("TAZ and BRM" . SPARSER::COLLECTION)
    ("basal-specific genes CD44 and VIM" . SPARSER::COLLECTION)
    ("CD44 and VIM" . SPARSER::COLLECTION) ("VIM" . SPARSER::PROTEIN)
    ("/EpCAM" . SPARSER::COLLECTION) ("BRM/BRG1" . SPARSER::COLLECTION)
    ("CTGF or ANKRD1" . SPARSER::COLLECTION)
    ("BRG1 and BRM" . SPARSER::COLLECTION)
    ("TAZ-SWI/SNF" . SPARSER::COLLECTION)
    ("TAZ and at least one of the PPXY-containing SWI/SNF subunits ( xref and xref )"
     . SPARSER::COLLECTION)
    ("endogenous TAZ and the SWI/SNF catalytic subunit BRG1"
     . SPARSER::COLLECTION)
    ("multi-protein" . SPARSER::COLLECTION)
    ("nucleosomes" . SPARSER::BIO-COMPLEX)
    ("BRG1 or BRM" . SPARSER::COLLECTION) ("BRM" . SPARSER::PROTEIN)
    ("ATPase" . SPARSER::PROTEIN)
    ("the apical junction/polarity complex" . SPARSER::BIO-COMPLEX)
    ("AMOT" . SPARSER::PROTEIN) ("angiomotin" . SPARSER::PROTEIN)
    ("IP/MS" . SPARSER::COLLECTION) ("MEC" . SPARSER::PROTEIN)
    ("SMADs" . SPARSER::PROTEIN) ("heterozygotes" . SPARSER::PROTEIN)
    ("actin (SMA)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("luminal and basal cells" . SPARSER::COLLECTION)
    ("EpCAM and alpha-smooth muscle" . SPARSER::COLLECTION)
    ("/lacZ" . SPARSER::COLLECTION) ("lacZ-stop" . SPARSER::COLLECTION)
    ("lacZ/lacZ" . SPARSER::COLLECTION) ("Wwtr1" . SPARSER::PROTEIN)
    ("lacZ" . SPARSER::PROTEIN) ("CTGF and ANKRD1" . SPARSER::COLLECTION)
    ("TAZ and KRT14" . SPARSER::COLLECTION)
    ("only occasional nuclear" . SPARSER::PROTEIN)
    ("TAZ and phospho-LATS1" . SPARSER::COLLECTION)
    ("lineage-specific genes" . SPARSER::GENE)
    ("YAP/TAZ" . SPARSER::COLLECTION) ("YAP and TAZ" . SPARSER::COLLECTION)
    ("more mature luminal" . SPARSER::DRUG)
    ("ESR1 and PGR" . SPARSER::COLLECTION) ("PGR" . SPARSER::PROTEIN)
    ("CD24, MUC1 and CLDN4" . SPARSER::COLLECTION)
    ("KRT6B, CD14 , and ALDH1A3" . SPARSER::COLLECTION)
    ("mature luminal differentiation state" . SPARSER::BIO-STATE)
    ("the plastic substrate" . SPARSER::SUBSTRATE)
    ("EpCAM-" . SPARSER::PROTEIN) ("EpCAM and CDH1" . SPARSER::COLLECTION)
    ("MUC1, CDH1, EpCAM , and GATA3" . SPARSER::COLLECTION)
    ("Luminal and basal subpopulations" . SPARSER::COLLECTION)
    ("EpCAM and CD44" . SPARSER::COLLECTION) ("luminal-" . SPARSER::DRUG)
    ("bar" . SPARSER::PROTEIN)
    ("mammary epithelial differentiation state" . SPARSER::BIO-STATE)
    ("primary MECs" . SPARSER::PROTEIN)
    ("collagen/matrigel" . SPARSER::COLLECTION)
    ("TAZ and its paralog YAP" . SPARSER::COLLECTION)
    ("sequence-specific DNA-binding proteins" . SPARSER::PROTEIN)
    ("TEAD" . SPARSER::PROTEIN) ("YAP" . SPARSER::PROTEIN)
    ("HOXA5, HOXA9, ID1, ID2, ID3, and SNAI1" . SPARSER::COLLECTION)
    ("TF" . SPARSER::PROTEIN) ("plastic substrates" . SPARSER::SUBSTRATE)
    ("cytokeratins" . SPARSER::PROTEIN) ("EpCAM" . SPARSER::PROTEIN)
    ("basal-specific genes" . SPARSER::GENE) ("MECs" . SPARSER::PROTEIN)
    ("MaSCs" . SPARSER::PROTEIN) ("MaSC" . SPARSER::PROTEIN)
    ("luminal and basal/myoepithelial (ME)" . SPARSER::COLLECTION)
    ("ME" . SPARSER::PROTEIN) ("examples" . SPARSER::EXAMPLE)
    ("SWI/SNF" . SPARSER::COLLECTION) ("SNF" . SPARSER::PROTEIN)
    ("SWI" . SPARSER::PROTEIN) ("WWTR1/TAZ" . SPARSER::COLLECTION)
    ("TAZ" . SPARSER::PROTEIN) ("CD45" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("For 3" . SPARSER::PROTEIN) ("SS2" . SPARSER::PROTEIN)
    ("tight junction" . SPARSER::PROTEIN) ("P-P" . SPARSER::PROTEIN)
    ("BRG1" . SPARSER::PROTEIN) ("SNF5" . SPARSER::PROTEIN)
    ("BAF170" . SPARSER::PROTEIN) ("BAF155" . SPARSER::PROTEIN)
    ("14-3-3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CD49f" . SPARSER::PROTEIN)
    ("ANKRD1" . SPARSER::PROTEIN) ("β-TRCP" . SPARSER::PROTEIN)
    ("LATS1" . SPARSER::PROTEIN) ("ESR1" . SPARSER::PROTEIN)
    ("ALDH1A3" . SPARSER::PROTEIN) ("CD14" . SPARSER::PROTEIN)
    ("KRT6B" . SPARSER::PROTEIN) ("CLDN4" . SPARSER::PROTEIN)
    ("CD24" . SPARSER::PROTEIN) ("proliferation-associated" . SPARSER::PROTEIN)
    ("GATA3" . SPARSER::PROTEIN) ("CDH1" . SPARSER::PROTEIN)
    ("MUC1" . SPARSER::PROTEIN) ("K14" . SPARSER::PROTEIN)
    ("KRT18" . SPARSER::PROTEIN) ("HOXC4" . SPARSER::PROTEIN)
    ("KLHDC5" . SPARSER::PROTEIN) ("LIMS1" . SPARSER::PROTEIN)
    ("BTBD1" . SPARSER::PROTEIN) ("SNAI1" . SPARSER::PROTEIN)
    ("ID3" . SPARSER::PROTEIN) ("ID2" . SPARSER::PROTEIN)
    ("ID1" . SPARSER::PROTEIN) ("HOXA9" . SPARSER::PROTEIN)
    ("HOXA5" . SPARSER::PROTEIN) ("CD10" . SPARSER::PROTEIN)
    ("KRT14" . SPARSER::PROTEIN) ("WWTR1" . SPARSER::PROTEIN)
    ("Nrf2 and Klf9" . SPARSER::COLLECTION) ("only few genes" . SPARSER::GENE)
    ("bona fide Nrf2" . SPARSER::PROTEIN)
    ("AREs and AREs" . SPARSER::COLLECTION) ("-TGA" . SPARSER::COLLECTION)
    ("TGA" . SPARSER::PROTEIN) ("Klf9 and Hmox1 or Nqo1" . SPARSER::COLLECTION)
    ("enhancers" . SPARSER::PROTEIN)
    ("cellular macromolecules" . SPARSER::MOLECULE)
    ("both sulforaphane (12-14 μM) and hydrogen peroxide (≥ 50μM)"
     . SPARSER::COLLECTION)
    ("sulforaphane (10μM, xref ) or hydrogen peroxide (25μM, xref , xref )"
     . SPARSER::COLLECTION)
    ("sulforaphane and hydrogen peroxide" . SPARSER::COLLECTION)
    ("paraquat or hydrogen peroxide" . SPARSER::COLLECTION)
    ("thioredoxin and Txnrd2" . SPARSER::COLLECTION)
    ("thioredoxin" . SPARSER::PROTEIN)
    ("Mitochondrial" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("selenoprotein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Bleomycin" . SPARSER::DRUG) ("oxidative DNA" . SPARSER::DNA)
    ("-deoxyguanosine" . SPARSER::MOLECULE)
    ("deoxyguanosine" . SPARSER::MOLECULE) ("sulfate" . SPARSER::MOLECULE)
    ("The chemotherapeutic agent bleomycin" . SPARSER::DRUG)
    ("ROS and H 2 O 2" . SPARSER::COLLECTION)
    ("Hmox1 , Nqo1, and Txnrd1" . SPARSER::COLLECTION)
    ("Txnrd2 and Txnrd3" . SPARSER::COLLECTION) ("Txnrd1" . SPARSER::PROTEIN)
    ("Polymerase" . SPARSER::PROTEIN) ("“FLAG-Klf9" . SPARSER::COLLECTION)
    ("runs" . SPARSER::PROTEIN-FAMILY) ("global chromatin" . SPARSER::PROTEIN)
    ("FLAG-Klf9" . SPARSER::COLLECTION) ("Hmox1 or Nqo1" . SPARSER::COLLECTION)
    ("Hmox1 ( xref ), Nqo1 ( xref ), Klf9 ARE3 and ARE4 as well as ARE3 and ARE4"
     . SPARSER::COLLECTION)
    ("AREs" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("Nqo1 or Hmox1" . SPARSER::COLLECTION)
    ("a classic Nrf2 activator and oxidative stress agent ( xref )"
     . SPARSER::COLLECTION)
    ("a classic Nrf2 activator" . SPARSER::ACTIVATOR)
    ("Nrf2 and its downstream targets" . SPARSER::COLLECTION)
    ("MEFs and Keap1" . SPARSER::COLLECTION) ("Partial" . SPARSER::PROTEIN)
    ("-RTGAYnnnGCR-3" . SPARSER::COLLECTION)
    ("the pro-apoptotic protein NOXA" . SPARSER::PROTEIN)
    ("arsenic trioxide (ATO)" . SPARSER::MOLECULE)
    ("a well-characterized oxidative stress inducer" . SPARSER::MOLECULE)
    ("ATO" . SPARSER::PROTEIN) ("Klf9 and Hmox1" . SPARSER::COLLECTION)
    ("Hmox1 and Nqo1" . SPARSER::COLLECTION)
    ("Klf9 , Nqo1 and Hmox1" . SPARSER::COLLECTION)
    ("oxidative stress response genes Nqo1 and Hmox1" . SPARSER::COLLECTION)
    ("Nqo1 and Hmox1" . SPARSER::COLLECTION) ("Hmox1" . SPARSER::PROTEIN)
    ("Hmox" . SPARSER::PROTEIN) ("H 2 O 2 and paraquat" . SPARSER::COLLECTION)
    ("H 2 O 2 or paraquat" . SPARSER::COLLECTION)
    ("etoposide and doxorubicin" . SPARSER::COLLECTION)
    ("paraquat" . SPARSER::MOLECULE)
    ("the proteasomal inhibitor bortezomib and the histone deacetylase inhibitor panobinostat, and Klf9"
     . SPARSER::COLLECTION)
    ("the proteasomal inhibitor bortezomib" . SPARSER::DRUG)
    ("panobinostat, and Klf9" . SPARSER::COLLECTION)
    ("panobinostat" . SPARSER::DRUG) ("bortezomib" . SPARSER::DRUG)
    ("adipocytes" . SPARSER::PROTEIN)
    ("response elements (ARE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("ARE" . SPARSER::ANTI-OXIDANT-RESPONSE-ELEMENT)
    ("Nrf2-Keap1" . SPARSER::COLLECTION)
    ("a novel ubiquitous regulator" . SPARSER::PROTEIN)
    ("bleomycin" . SPARSER::DRUG) ("HD2" . SPARSER::PROTEIN)
    ("alkaline phosphatase" . SPARSER::PROTEIN-FAMILY)
    ("Hydrogen peroxide" . SPARSER::MOLECULE)
    ("pro-oxidant" . SPARSER::MOLECULE) ("TCA-3" . SPARSER::PROTEIN)
    ("TXNRD2" . SPARSER::PROTEIN) ("−3" . SPARSER::PROTEIN)
    ("Txnrd2" . SPARSER::PROTEIN)
    ("thioredoxin reductases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Bach1" . SPARSER::PROTEIN) ("KEAP1" . SPARSER::PROTEIN)
    ("Keap-1" . SPARSER::PROTEIN) ("protein NOXA" . SPARSER::PROTEIN)
    ("arsenic trioxide" . SPARSER::MOLECULE) ("Nqo1" . SPARSER::PROTEIN)
    ("KLF9" . SPARSER::PROTEIN) ("C2H2" . SPARSER::MOLECULE)
    ("response elements" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("thioredoxin reductase 2" . SPARSER::PROTEIN) ("Klf9" . SPARSER::PROTEIN)
    ("transcription factor 2" . SPARSER::PROTEIN) ("NF-E2" . SPARSER::PROTEIN)
    ("dNTP" . SPARSER::MOLECULE)
    ("indirectly impacts pericentric heterochromatin" . SPARSER::PROTEIN)
    ("pRB and cohesin" . SPARSER::COLLECTION)
    ("pRB and Suv4-20" . SPARSER::COLLECTION)
    ("KDM4A and Suv3-9" . SPARSER::COLLECTION)
    ("both facultative and constitutive heterochromatin" . SPARSER::PROTEIN)
    ("pRB and Cap-D3" . SPARSER::COLLECTION) ("Van" . SPARSER::PROTEIN)
    ("Condensin" . SPARSER::PROTEIN-FAMILY)
    ("Wapl, and nucleoside" . SPARSER::COLLECTION)
    ("chromosomes 6 and 8 using centromeric FISH" . SPARSER::PROTEIN)
    ("mitotic centromeres" . SPARSER::PROTEIN)
    ("using centromeric FISH" . SPARSER::PROTEIN) ("RPE" . SPARSER::PROTEIN)
    ("Hydroxyurea" . SPARSER::DRUG) ("blot and ChIP" . SPARSER::COLLECTION)
    ("exogenous nucleosides" . SPARSER::MOLECULE) ("nuc" . SPARSER::PROTEIN)
    ("nucleosides" . SPARSER::MOLECULE) ("nucleoside" . SPARSER::MOLECULE)
    ("Ctrl" . SPARSER::PROTEIN) ("siRB" . SPARSER::PROTEIN-FAMILY)
    ("Cohesin" . SPARSER::PROTEIN)
    ("chromatin-associated cohesin" . SPARSER::PROTEIN)
    ("Wapl" . SPARSER::PROTEIN)
    ("pericentromeric heterochromatin" . SPARSER::PROTEIN)
    ("pericentromeric chromatin" . SPARSER::PROTEIN) ("Rb1" . SPARSER::PROTEIN)
    ("Lysine" . SPARSER::AMINO-ACID) ("methyltransferase" . SPARSER::PROTEIN)
    ("CTCF and the mediator complex ( xref ; xref ; xref )"
     . SPARSER::COLLECTION)
    ("acetylase" . SPARSER::PROTEIN)
    ("pericentric heterochromatin" . SPARSER::PROTEIN)
    ("p53 and the three pocket proteins (pRB, p107, and p130)"
     . SPARSER::COLLECTION)
    ("pRB, p107, and p130" . SPARSER::COLLECTION) ("Mad2" . SPARSER::PROTEIN)
    ("Mad" . SPARSER::PROTEIN)
    ("cohesin proteins (Rad21 and SMC3) or condensin II (CAPD3)"
     . SPARSER::COLLECTION)
    ("Rad21 and SMC3" . SPARSER::COLLECTION)
    ("condensin" . SPARSER::PROTEIN-FAMILY)
    ("thymidine or HU" . SPARSER::COLLECTION) ("nocodazole" . SPARSER::DRUG)
    ("FISH" . SPARSER::PROTEIN) ("hairpins" . SPARSER::PROTEIN-FAMILY)
    ("several mitotic regulators" . SPARSER::REGULATOR)
    ("a single mitotic protein" . SPARSER::PROTEIN)
    ("tumor suppressors and increases copy number of oncogenes ( xref )"
     . SPARSER::COLLECTION)
    ("functional pRB" . SPARSER::PROTEIN) ("cohesin" . SPARSER::PROTEIN)
    ("centromeres" . SPARSER::PROTEIN) ("pRB" . SPARSER::PROTEIN)
    ("RO3306" . SPARSER::DRUG) ("Suv3" . SPARSER::PROTEIN)
    ("KDM4A" . SPARSER::PROTEIN) ("H3K9" . SPARSER::PROTEIN)
    ("cdk4" . SPARSER::PROTEIN) ("p16INK4A" . SPARSER::PROTEIN)
    ("RB1" . SPARSER::PROTEIN) ("Histone 4" . SPARSER::PROTEIN)
    ("Suv4-20" . SPARSER::PROTEIN) ("p130" . SPARSER::PROTEIN)
    ("p107" . SPARSER::PROTEIN)
    ("mitotic checkpoint protein" . SPARSER::PROTEIN)
    ("CAPD3" . SPARSER::PROTEIN) ("SMC3" . SPARSER::PROTEIN)
    ("Rad21" . SPARSER::PROTEIN) ("S21" . SPARSER::PROTEIN)
    ("PCNT, CEP85 and ALMS1" . SPARSER::COLLECTION) ("PCNT" . SPARSER::PROTEIN)
    ("these two centriolar satellite proteins" . SPARSER::PROTEIN)
    ("these centriolar satellite proteins" . SPARSER::PROTEIN)
    ("GFP-CCDC14" . SPARSER::COLLECTION) ("GFP-KIAA0753" . SPARSER::COLLECTION)
    ("CCDC14 or KIAA0753" . SPARSER::COLLECTION)
    ("several previously characterized centriolar satellite proteins"
     . SPARSER::PROTEIN)
    ("*-KIAA0753" . SPARSER::COLLECTION) ("*-CCDC14" . SPARSER::COLLECTION)
    ("CEP" . SPARSER::PROTEIN) ("*-CEP63" . SPARSER::COLLECTION)
    ("CEP63 and CCDC67" . SPARSER::COLLECTION)
    ("Centrosomin and Asterless" . SPARSER::COLLECTION)
    ("centrosomes" . SPARSER::PROTEIN) ("Asterless" . SPARSER::PROTEIN)
    ("Centrosomin" . SPARSER::PROTEIN) ("*-CEP152" . SPARSER::COLLECTION)
    ("CEP152-BirA" . SPARSER::COLLECTION)
    ("CEP152, CEP63, CCDC67 and CPAP" . SPARSER::COLLECTION)
    ("*-CPAP" . SPARSER::COLLECTION)
    ("CEP152, CEP63, CPAP and CCDC67" . SPARSER::COLLECTION)
    ("CEP152 and CEP63" . SPARSER::COLLECTION)
    ("CPAP and PLK4" . SPARSER::COLLECTION) ("scaffolds" . SPARSER::SCAFFOLD)
    ("CEP152, CEP63 and CPAP" . SPARSER::COLLECTION)
    ("CYLD" . SPARSER::PROTEIN) ("deubiquitinase" . SPARSER::DEUBIQUITINASE)
    ("Aurora" . SPARSER::PROTEIN) ("AURKA" . SPARSER::PROTEIN)
    ("STIL" . SPARSER::PROTEIN) ("CEP152 and CEP192" . SPARSER::COLLECTION)
    ("at least some CEP192" . SPARSER::PROTEIN) ("peptides" . SPARSER::PEPTIDE)
    ("dimer" . SPARSER::DIMER) ("NSAF" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("sucrose" . SPARSER::MOLECULE) ("*-CEP192" . SPARSER::COLLECTION)
    ("biotin" . SPARSER::PROTEIN) ("interactors" . SPARSER::PROTEIN)
    ("*-PLK4" . SPARSER::COLLECTION) ("Myc-BirA" . SPARSER::COLLECTION)
    ("PLK4 and CEP192" . SPARSER::COLLECTION)
    ("biotin-streptavidin" . SPARSER::PROTEIN-PAIR)
    ("streptavidin" . SPARSER::PROTEIN)
    ("a promiscuous mutant" . SPARSER::MUTANT) ("BirA" . SPARSER::PROTEIN)
    ("CCDC14 and KIAA0753" . SPARSER::COLLECTION)
    ("CEP63 and its paralog CCDC67" . SPARSER::COLLECTION)
    ("centriolar satellite proteins" . SPARSER::PROTEIN)
    ("known physically interacting proteins" . SPARSER::PROTEIN)
    ("PLK4, CEP192 and CEP152" . SPARSER::COLLECTION)
    ("CEP152 and CDK5RAP2" . SPARSER::COLLECTION)
    ("PLK4, CEP192, CEP152, CEP63 and CPAP" . SPARSER::COLLECTION)
    ("CPAP" . SPARSER::PROTEIN) ("PCM" . SPARSER::PROTEIN)
    ("S-G2" . SPARSER::PROTEIN) ("OFD1" . SPARSER::PROTEIN)
    ("K63" . SPARSER::PROTEIN) ("NEDD1" . SPARSER::PROTEIN)
    ("SDCCAG3" . SPARSER::PROTEIN) ("KIAA0753" . SPARSER::PROTEIN)
    ("CCDC14" . SPARSER::PROTEIN) ("CDK5RAP2" . SPARSER::PROTEIN)
    ("CEP63" . SPARSER::PROTEIN) ("CEP152" . SPARSER::PROTEIN)
    ("CEP192" . SPARSER::PROTEIN) ("PLK4" . SPARSER::PROTEIN)
    ("PKC and P2Y 12" . SPARSER::COLLECTION)
    ("PKC and Akt" . SPARSER::COLLECTION) ("Akt/PRAS40" . SPARSER::COLLECTION)
    ("Rheb and TSC2" . SPARSER::COLLECTION) ("glial" . SPARSER::PROTEIN)
    ("AMOG" . SPARSER::PROTEIN) ("Akt and PKC" . SPARSER::COLLECTION)
    ("Akt/TSC2" . SPARSER::COLLECTION) ("Akt and PRAS40" . SPARSER::COLLECTION)
    ("SU6656 and SU6656" . SPARSER::COLLECTION)
    ("IGF-1 and epinephrine" . SPARSER::COLLECTION)
    ("adenylyl cyclase, PKA, and DAG" . SPARSER::COLLECTION)
    ("P2Y 12 and PI3 kinase" . SPARSER::COLLECTION)
    ("PI3 kinase or P2Y 12" . SPARSER::COLLECTION)
    ("physiological platelet agonists, the growth factor IGF-1, and the PKC activator PMA"
     . SPARSER::COLLECTION)
    ("TSC2 and mTORC1" . SPARSER::COLLECTION)
    ("platelets, TSC2 and mTORC1" . SPARSER::COLLECTION)
    ("epinephrine and IGF-1" . SPARSER::COLLECTION)
    ("epinephrine" . SPARSER::DRUG) ("cyclase" . SPARSER::PROTEIN)
    ("kinases and PI3 kinase" . SPARSER::COLLECTION)
    ("TSC2 or p70S6K" . SPARSER::COLLECTION)
    ("secretagogue" . SPARSER::MOLECULE)
    ("a weak activator" . SPARSER::ACTIVATOR) ("PMA" . SPARSER::PROTEIN)
    ("Abciximab or RGDS" . SPARSER::COLLECTION) ("RGDS" . SPARSER::PROTEIN)
    ("Abciximab" . SPARSER::DRUG) ("MRS" . SPARSER::PROTEIN)
    ("P2Y 1 and P2Y 12" . SPARSER::COLLECTION)
    ("ERK, p90RSK, and PLD" . SPARSER::COLLECTION)
    ("MEK (U0126 and PD98059) or PLD (VU 0155069 [PLD1] and VU 0364739 HCl [PLD2])"
     . SPARSER::COLLECTION)
    ("U0126 and PD98059" . SPARSER::COLLECTION)
    ("ERK, RSK, and PLD" . SPARSER::COLLECTION) ("PLD" . SPARSER::PROTEIN)
    ("ERK, p90RSK and phospholipase D" . SPARSER::COLLECTION)
    ("p90RSK" . SPARSER::PROTEIN-FAMILY) ("RSK" . SPARSER::PROTEIN)
    ("wortmannin and MK-2206" . SPARSER::COLLECTION)
    ("either pThr389 p70S6K (Fig. xref A) or pSer65 4E-BP1 (data not shown)"
     . SPARSER::COLLECTION)
    ("pThr" . SPARSER::PROTEIN) ("a classic agonist" . SPARSER::AGONIST)
    ("wortmannin and AR-C" . SPARSER::COLLECTION)
    ("pleckstrin and extracellular signal-regulated kinase"
     . SPARSER::COLLECTION)
    ("pleckstrin" . SPARSER::PROTEIN)
    ("PI3 kinase and PKC" . SPARSER::COLLECTION)
    ("TSC2 and p70S6K" . SPARSER::COLLECTION)
    ("Akt and its downstream substrate PRAS40" . SPARSER::COLLECTION)
    ("PI3 kinase (wortmannin) or Akt (MK-2206)" . SPARSER::COLLECTION)
    ("pSer" . SPARSER::PROTEIN)
    ("Akt (Ser473) and its downstream substrate" . SPARSER::COLLECTION)
    ("CRP-XL" . SPARSER::PROTEIN-PAIR) ("CRP" . SPARSER::PROTEIN)
    ("TSC2-GAP" . SPARSER::COLLECTION)
    ("insulin/PI3 kinase" . SPARSER::COLLECTION)
    ("Rheb-GAP" . SPARSER::COLLECTION) ("TSC1-TSC2" . SPARSER::COLLECTION)
    ("/TSC2/Rheb" . SPARSER::COLLECTION)
    ("hamartin/tuberous sclerosis 1" . SPARSER::COLLECTION)
    ("Rheb" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the mTOR substrates p70S6K (ribosomal S6 kinase 1) and 4E-BP1 (eukaryotic translation initiation factor 4E-binding protein 1)"
     . SPARSER::COLLECTION)
    ("mTOR (FRAP)" . SPARSER::PROTEIN) ("proline" . SPARSER::AMINO-ACID)
    ("FRAP" . SPARSER::PROTEIN)
    ("CCI-779, AP23573, and RAD001" . SPARSER::COLLECTION)
    ("immunosuppressants" . SPARSER::DRUG) ("analogs" . SPARSER::ANALOG)
    ("exogenous ADP" . SPARSER::PROTEIN) ("adenosine" . SPARSER::PROTEIN)
    ("thrombin" . SPARSER::PROTEIN) ("/Akt" . SPARSER::COLLECTION)
    ("Thrombin or the protein kinase C (PKC) activator phorbal 12-myristate 13-acetate"
     . SPARSER::COLLECTION)
    ("tuberin/tuberous sclerosis 2" . SPARSER::COLLECTION)
    ("Thrombin" . SPARSER::PROTEIN)
    ("its downstream substrate ribosomal S6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("platelets" . SPARSER::PROTEIN) ("P2Y12" . SPARSER::PROTEIN)
    ("SU6656" . SPARSER::PROTEIN)
    ("adenylate cyclase activity" . SPARSER::PROTEIN)
    ("P2Y1" . SPARSER::PROTEIN) ("P2Y 1" . SPARSER::PROTEIN)
    ("PLD2" . SPARSER::PROTEIN) ("PLD1" . SPARSER::PROTEIN)
    ("phospholipase D" . SPARSER::PROTEIN) ("p90" . SPARSER::PROTEIN)
    ("IGF-1 –" . SPARSER::PROTEIN) ("thromboxane A2" . SPARSER::MOLECULE)
    ("microcystin-LR" . SPARSER::MOLECULE) ("anti –" . SPARSER::ANTIBODY)
    ("α IIb β 3" . SPARSER::PROTEIN) ("d -glucose" . SPARSER::MOLECULE)
    ("MgSO 4" . SPARSER::DRUG) ("mL −1" . SPARSER::PROTEIN)
    ("Microcystin-LR" . SPARSER::MOLECULE) ("VU 0155069" . SPARSER::DRUG)
    ("SQ 22536" . SPARSER::MOLECULE) ("SL 327" . SPARSER::DRUG)
    ("bisindolylmaleimide I" . SPARSER::DRUG) ("AR-C" . SPARSER::PROTEIN)
    ("CD62P" . SPARSER::PROTEIN) ("P-selectin" . SPARSER::PROTEIN)
    ("anti–" . SPARSER::ANTIBODY)
    ("glycogen synthase" . SPARSER::PROTEIN-FAMILY)
    ("tuberous sclerosis 1" . SPARSER::PROTEIN)
    ("Tel2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("GβL" . SPARSER::PROTEIN)
    ("regulatory associated protein of mTOR" . SPARSER::PROTEIN)
    ("RAD001" . SPARSER::DRUG) ("AP23573" . SPARSER::DRUG)
    ("CCI-779" . SPARSER::DRUG) ("P2Y 12" . SPARSER::PROTEIN)
    ("phosphoinositide 3 kinase" . SPARSER::PROTEIN)
    ("tuberous sclerosis 2" . SPARSER::PROTEIN)
    ("S6 kinase" . SPARSER::PROTEIN-FAMILY)
    ("Mammalian target of rapamycin" . SPARSER::PROTEIN)
    ("a robust pharmacodynamic biomarker" . SPARSER::MOLECULE)
    ("ISRE/IRF1" . SPARSER::COLLECTION) ("JAK2/STAT1" . SPARSER::COLLECTION)
    ("PTPN2 and SOCS1" . SPARSER::COLLECTION)
    ("SEC31A-JAK2" . SPARSER::COLLECTION)
    ("a robust biomarker" . SPARSER::MOLECULE) ("mCherry" . SPARSER::PROTEIN)
    ("NSG" . SPARSER::PROTEIN-FAMILY) ("PIM1 and c-MYC" . SPARSER::COLLECTION)
    ("heterochromatin" . SPARSER::PROTEIN)
    ("c-MYC and PIM1" . SPARSER::COLLECTION)
    ("JAK2, STAT1 and STAT3" . SPARSER::COLLECTION)
    ("JAK2 and downstream STATs" . SPARSER::COLLECTION)
    ("JAK2 and STAT1, STAT3 and STAT6" . SPARSER::COLLECTION)
    ("STAT1, STAT3 and STAT6" . SPARSER::COLLECTION)
    ("Fedratinib" . SPARSER::DRUG) ("vera" . SPARSER::PROTEIN)
    ("JAK1 and JAK2" . SPARSER::COLLECTION)
    ("JAK1, TYK2 and JAK3" . SPARSER::COLLECTION)
    ("pan-JAK" . SPARSER::COLLECTION)
    ("ruxolitinib and fedratinib" . SPARSER::COLLECTION)
    ("ruxolitinib" . SPARSER::DRUG)
    ("commercially available tool JAK2 inhibitors" . SPARSER::INHIBITOR)
    ("PD-L1 ( CD274 ) and PD-L2 ( PDCD1LG2 )" . SPARSER::COLLECTION)
    ("the immunoregulatory PD-1 ligand genes" . SPARSER::GENE)
    ("primary nodular sclerosing HLs and ≅60%" . SPARSER::COLLECTION)
    ("HLs and ≅60%" . SPARSER::COLLECTION) ("HLs" . SPARSER::PROTEIN)
    ("nodular sclerosing HL" . SPARSER::PROTEIN) ("HL" . SPARSER::PROTEIN)
    ("RS" . SPARSER::PROTEIN) ("an excellent biomarker" . SPARSER::MOLECULE)
    ("p-STAT3" . SPARSER::COLLECTION) ("JAK2/STAT" . SPARSER::COLLECTION)
    ("JAK2, STAT1, STAT3 and STAT6" . SPARSER::COLLECTION)
    ("Chemical" . SPARSER::MOLECULE)
    ("biomarkers in cell lines and murine xenograft models"
     . SPARSER::COLLECTION)
    ("fedratinib" . SPARSER::DRUG) ("IRF1" . SPARSER::PROTEIN)
    ("SOCS1" . SPARSER::PROTEIN) ("PTPN2" . SPARSER::PROTEIN)
    ("negative regulators" . SPARSER::NEGATIVE-REGULATOR)
    ("SEC31A" . SPARSER::PROTEIN) ("PD1" . SPARSER::PROTEIN)
    ("IL2" . SPARSER::PROTEIN) ("L26" . SPARSER::PROTEIN)
    ("CD20" . SPARSER::PROTEIN) ("Stat3" . SPARSER::PROTEIN)
    ("PIM1" . SPARSER::PROTEIN) ("c-MYC" . SPARSER::PROTEIN)
    ("TYK2" . SPARSER::PROTEIN) ("JAK1" . SPARSER::PROTEIN)
    ("SB1518" . SPARSER::DRUG) ("PDCD1LG2" . SPARSER::PROTEIN)
    ("PD-L2" . SPARSER::PROTEIN) ("CD274" . SPARSER::PROTEIN)
    ("PD-1" . SPARSER::PROTEIN) ("PD-L1" . SPARSER::PROTEIN)
    ("STAT6" . SPARSER::PROTEIN) ("TG101348" . SPARSER::DRUG)
    ("SAR302503" . SPARSER::DRUG) ("HIGMs" . SPARSER::PROTEIN)
    ("intact or normal CSR" . SPARSER::PROTEIN)
    ("intact CSR" . SPARSER::PROTEIN)
    ("p110δ and mitogen-extracellular" . SPARSER::COLLECTION)
    ("mitogen-extracellular" . SPARSER::PROTEIN)
    ("developed different forms" . SPARSER::FORM)
    ("CD40L/CD40" . SPARSER::COLLECTION) ("CSR and SHM" . SPARSER::COLLECTION)
    ("AID/UNG" . SPARSER::COLLECTION) ("CD40/CD40L" . SPARSER::COLLECTION)
    ("NEMO" . SPARSER::PROTEIN) ("SHM" . SPARSER::DRUG)
    ("CSR" . SPARSER::PROTEIN) ("IgA and/or IgE" . SPARSER::COLLECTION)
    ("low serum IgG, IgA and/or IgE" . SPARSER::COLLECTION)
    ("normal IgM" . SPARSER::PROTEIN)
    ("CD40, CD40L, AICDA, and UNG" . SPARSER::COLLECTION)
    ("AICDA" . SPARSER::PROTEIN) ("HIGM" . SPARSER::PROTEIN)
    ("IgG and IgM" . SPARSER::COLLECTION)
    ("kappa and lambda" . SPARSER::COLLECTION) ("MALT" . SPARSER::PROTEIN)
    ("massive GCs" . SPARSER::PROTEIN) ("HIGM-AID" . SPARSER::PROTEIN-PAIR)
    ("GCs" . SPARSER::PROTEIN)
    ("protein and polysaccharide" . SPARSER::COLLECTION)
    ("polysaccharide" . SPARSER::POLYSACCHARIDE)
    ("antigens" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IgG and IgA" . SPARSER::COLLECTION) ("CHOP" . SPARSER::PROTEIN)
    ("mitogens" . SPARSER::MITOGEN)
    ("low IgG2 (<12 mg/dL) and IgG4 (<9 mg/dL)" . SPARSER::COLLECTION)
    ("dL" . SPARSER::PROTEIN) ("Case" . SPARSER::PROTEIN)
    ("IgG, IgA, or IgE" . SPARSER::COLLECTION)
    ("AID or UNG" . SPARSER::COLLECTION)
    ("CD40 ligand/CD40" . SPARSER::COLLECTION) ("UNG" . SPARSER::PROTEIN)
    ("AID" . SPARSER::PROTEIN) ("IgA" . SPARSER::PROTEIN)
    ("immunoglobulins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IgM" . SPARSER::PROTEIN) ("activated protein kinase" . SPARSER::PROTEIN)
    ("PMS2" . SPARSER::PROTEIN) ("CD40L" . SPARSER::PROTEIN)
    ("CD19" . SPARSER::PROTEIN) ("age 1" . SPARSER::PROTEIN)
    ("IgG4" . SPARSER::PROTEIN) ("IgG2" . SPARSER::BIO-COMPLEX)
    ("PI(3)K" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CD40" . SPARSER::PROTEIN)
    ("CD40 ligand" . SPARSER::PROTEIN) ("PIK3CD" . SPARSER::PROTEIN)
    ("p110δ" . SPARSER::PROTEIN) ("Autosomal dominant" . SPARSER::PROTEIN)
    ("NAR" . SPARSER::PROTEIN) ("c-Myc and TTF1" . SPARSER::COLLECTION)
    ("Tip5" . SPARSER::PROTEIN) ("NoRC" . SPARSER::PROTEIN)
    ("Tip" . SPARSER::PROTEIN) ("UBF" . SPARSER::PROTEIN)
    ("an unimportant spacer DNA" . SPARSER::DNA) ("CTCF" . SPARSER::PROTEIN)
    ("associated gene" . SPARSER::GENE) ("Yang" . SPARSER::PROTEIN)
    ("mainly rDNA genes" . SPARSER::GENE)
    ("ternary complexes" . SPARSER::BIO-COMPLEX)
    ("Myc-associated rDNA gene loop structures form" . SPARSER::FORM)
    ("form growth-associated higher-order rDNA" . SPARSER::PROTEIN)
    ("an irrelevant control antibody" . SPARSER::ANTIBODY)
    ("IGS" . SPARSER::PROTEIN) ("matrix:IGS" . SPARSER::PROTEIN-PAIR)
    ("the matrix-associated fraction" . SPARSER::COMPONENT)
    ("non-matrix-associated and matrix-associated fractions"
     . SPARSER::COMPONENT)
    ("formaldehyde" . SPARSER::MOLECULE)
    ("non-matrix-associated (center panel) fractions" . SPARSER::COMPONENT)
    ("the non-matrix-associated rDNA genes" . SPARSER::GENE)
    ("non-matrix-associated DNA" . SPARSER::DNA)
    ("XhoI" . SPARSER::PROTEIN-FAMILY) ("PolI" . SPARSER::PROTEIN)
    ("SL1" . SPARSER::PROTEIN) ("Max and E-box" . SPARSER::COLLECTION)
    ("Max" . SPARSER::PROTEIN) ("rRNA" . SPARSER::PROTEIN)
    ("Myc-ER" . SPARSER::COLLECTION)
    ("Myc/Estrogen Receptor" . SPARSER::COLLECTION)
    ("pre-rRNA" . SPARSER::PROTEIN-PAIR) ("nucleolar c-Myc" . SPARSER::PROTEIN)
    ("Myc-Estrogen Receptor" . SPARSER::COLLECTION)
    ("a facultative-enhanced matrix associated" . SPARSER::PROTEIN)
    ("chromatin and growth-state-dependent" . SPARSER::COLLECTION)
    ("promoter and terminator" . SPARSER::COLLECTION)
    ("rDNA and matrix" . SPARSER::COLLECTION)
    ("more precisely map" . SPARSER::PROTEIN)
    ("the matrix-associated genes" . SPARSER::GENE) ("TGR" . SPARSER::PROTEIN)
    ("Wiz" . SPARSER::PROTEIN)
    ("the nucleolar matrix" . SPARSER::PROTEIN-FAMILY)
    ("epigenetically non-silenced rDNA genes" . SPARSER::GENE)
    ("ribosomes" . SPARSER::BIO-COMPLEX) ("a key inducer" . SPARSER::PROTEIN)
    ("nucleolar genes" . SPARSER::GENE) ("MARs" . SPARSER::PROTEIN)
    ("rest" . SPARSER::PROTEIN) ("the ribosomal DNA" . SPARSER::DNA)
    ("nucleolar matrix" . SPARSER::PROTEIN-FAMILY)
    ("mammalian ribosomal ribonucleic acid genes" . SPARSER::GENE)
    ("rDNA" . SPARSER::PROTEIN) ("scaffold/matrix" . SPARSER::COLLECTION)
    ("TTF1" . SPARSER::PROTEIN) ("S5B" . SPARSER::PROTEIN)
    ("Myc/Max" . SPARSER::PROTEIN) ("Estrogen Receptor" . SPARSER::PROTEIN)
    ("matrix associated" . SPARSER::PROTEIN)
    ("matrix-bound" . SPARSER::PROTEIN) ("H10" . SPARSER::PROTEIN)
    ("NaHCO3" . SPARSER::DRUG) ("upstream binding factor" . SPARSER::PROTEIN)
    ("Pst1" . SPARSER::PROTEIN)
    ("Glyceraldehyde 3-phosphate" . SPARSER::MOLECULE)
    ("4-hydroxytamoxifen" . SPARSER::DRUG) ("Rat1" . SPARSER::PROTEIN)
    ("Dlx5" . SPARSER::PROTEIN) ("IGF2" . SPARSER::PROTEIN)
    ("ribonucleic acid" . SPARSER::RNA)
    ("atherosclerotic chemokines" . SPARSER::PROTEIN)
    ("ROS and NF-κB" . SPARSER::COLLECTION)
    ("NADPH or ROS" . SPARSER::COLLECTION)
    ("NADPH oxidase- and ROS" . SPARSER::COLLECTION)
    ("the vascular isoform" . SPARSER::PROTEIN)
    ("Nox4-oxidase" . SPARSER::COLLECTION)
    ("NADPH oxidase-Nox2" . SPARSER::COLLECTION) ("oxidase" . SPARSER::PROTEIN)
    ("exogenous peroxidase and hydrogen peroxide" . SPARSER::COLLECTION)
    ("peroxidase and hydrogen peroxide" . SPARSER::COLLECTION)
    ("MPO" . SPARSER::PROTEIN) ("myeloperoxidase" . SPARSER::PROTEIN)
    ("the ROS inhibitor trolox, a vitamin E derivative xref , and NADPH oxidase inhibitors"
     . SPARSER::COLLECTION)
    ("trolox" . SPARSER::MOLECULE) ("leaky promoters" . SPARSER::PROMOTER)
    ("Nanotube" . SPARSER::MOLECULE) ("Dio" . SPARSER::MOLECULE)
    ("NADPH oxidase-" . SPARSER::PROTEIN) ("Nox2" . SPARSER::PROTEIN)
    ("antioxidant/NADPH oxidase" . SPARSER::COLLECTION)
    ("apocynin" . SPARSER::MOLECULE) ("Trolox" . SPARSER::MOLECULE)
    ("derivative" . SPARSER::DERIVATIVE) ("Ikki" . SPARSER::PROTEIN)
    ("vWF" . SPARSER::PROTEIN)
    ("anti-GFP and endothelial specific antibodies" . SPARSER::COLLECTION)
    ("CD4-GFP" . SPARSER::COLLECTION) ("nanotube" . SPARSER::MOLECULE)
    ("significantly more dye" . SPARSER::MOLECULE) ("DIO" . SPARSER::MOLECULE)
    ("Dye" . SPARSER::MOLECULE) ("monocytes" . SPARSER::PROTEIN)
    ("nanotubes" . SPARSER::MOLECULE) ("SH3" . SPARSER::PROTEIN)
    ("The HIV viral protein Nef" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("myristoylated" . SPARSER::PROTEIN) ("Jurkat" . SPARSER::PROTEIN)
    ("a viral protein" . SPARSER::PROTEIN) ("TNF-alpha" . SPARSER::PROTEIN)
    ("anti-oxidant" . SPARSER::DRUG) ("Nox4" . SPARSER::PROTEIN)
    ("cytokeratin 1" . SPARSER::PROTEIN) ("NOX2" . SPARSER::PROTEIN)
    ("2 B" . SPARSER::HUMAN-PROTEIN-FAMILY) ("gp91phox" . SPARSER::PROTEIN)
    ("protein can" . SPARSER::PROTEIN)
    ("von Willebrand factor" . SPARSER::PROTEIN) ("THP1" . SPARSER::PROTEIN)
    ("IGF-1" . SPARSER::PROTEIN) ("P65" . SPARSER::PROTEIN)
    ("NF- κB" . SPARSER::PROTEIN) ("bis-Tris" . SPARSER::MOLECULE)
    ("Reverse transcriptase" . SPARSER::PROTEIN) ("JC-1" . SPARSER::MOLECULE)
    ("EH1" . SPARSER::PROTEIN) ("NL4" . SPARSER::PROTEIN)
    ("SF2" . SPARSER::PROTEIN) ("NADPH oxidase" . SPARSER::PROTEIN)
    ("protein Nef" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Negative factor" . SPARSER::PROTEIN)
    ("envelope protein" . SPARSER::PROTEIN) ("MCP-1" . SPARSER::PROTEIN)
    ("protein-1" . SPARSER::PROTEIN)
    ("microtubule-associated protein light chain 3" . SPARSER::PROTEIN)
    ("Ruo-yu WANG and Dan-dan HUANG" . SPARSER::COLLECTION)
    ("Hong-yang" . SPARSER::COLLECTION) ("Yan-xin" . SPARSER::COLLECTION)
    ("yang" . SPARSER::PROTEIN) ("xin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Yan" . SPARSER::PROTEIN) ("dan" . SPARSER::PROTEIN)
    ("WANG" . SPARSER::PROTEIN) ("CHEN" . SPARSER::PROTEIN)
    ("Lei" . SPARSER::PROTEIN) ("ERK, p38, and JNK" . SPARSER::COLLECTION)
    ("ERK or p38" . SPARSER::COLLECTION) ("lipases" . SPARSER::PROTEIN)
    ("proteins and organelles" . SPARSER::COLLECTION)
    ("AST" . SPARSER::PROTEIN) ("ALT" . SPARSER::PROTEIN)
    ("nutrient or growth factor" . SPARSER::COLLECTION)
    ("protein or organelles" . SPARSER::COLLECTION) ("Mei" . SPARSER::MOLECULE)
    ("the visible green" . SPARSER::PROTEIN)
    ("antioxidants, NAC and GSH" . SPARSER::COLLECTION)
    ("NAC" . SPARSER::PROTEIN) ("ERK-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("The ERK-specific inhibitor U0126 and the p38-specific inhibitor SB202190"
     . SPARSER::COLLECTION)
    ("ERK and p38" . SPARSER::COLLECTION)
    ("extracellular signal-regulated kinase (ERK) and p38 mitogen-activated protein kinase (MAPK)"
     . SPARSER::COLLECTION)
    ("the essential Atg proteins, Beclin1 and Atg5" . SPARSER::COLLECTION)
    ("proteins, Beclin1 and Atg5" . SPARSER::COLLECTION)
    ("Atg" . SPARSER::DRUG) ("IETD-fmk" . SPARSER::COLLECTION)
    ("DEVD-fmk" . SPARSER::COLLECTION) ("fmk" . SPARSER::PROTEIN)
    ("PI3K/Beclin 1-Vps34" . SPARSER::COLLECTION)
    ("Electron" . SPARSER::MOLECULE) ("LC3-GFP" . SPARSER::COLLECTION)
    ("green" . SPARSER::PROTEIN) ("PA and OA" . SPARSER::COLLECTION)
    ("OA or PA" . SPARSER::COLLECTION) ("LD" . SPARSER::PROTEIN)
    ("TEM" . SPARSER::PROTEIN) ("JNK1 and JNK2" . SPARSER::COLLECTION)
    ("PA-JNK1" . SPARSER::COLLECTION) ("OA" . SPARSER::MOLECULE)
    ("ethanol" . SPARSER::MOLECULE) ("Ding" . SPARSER::PROTEIN)
    ("Atg6/Beclin1" . SPARSER::COLLECTION) ("Atg8/LC3" . SPARSER::COLLECTION)
    ("proteins and organelles and helps" . SPARSER::COLLECTION)
    ("FFAs" . SPARSER::PROTEIN) ("fatty acid (FFA)" . SPARSER::MOLECULE)
    ("FFA" . SPARSER::PROTEIN) ("cirrhosis" . SPARSER::PROTEIN)
    ("The autophagy-associated proteins Beclin1 and Atg5"
     . SPARSER::COLLECTION)
    ("Beclin1 and Atg5" . SPARSER::COLLECTION) ("PA" . SPARSER::PROTEIN)
    ("Aim" . SPARSER::PROTEIN) ("light chain 3" . SPARSER::PROTEIN)
    ("PKC-α" . SPARSER::PROTEIN) ("Protein Kinase" . SPARSER::PROTEIN)
    ("SB202190" . SPARSER::DRUG) ("ZVAD-fmk" . SPARSER::DRUG)
    ("Vps34" . SPARSER::PROTEIN) ("Beclin 1" . SPARSER::PROTEIN)
    ("p62" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("green fluorescent protein" . SPARSER::PROTEIN)
    ("Fatty acid" . SPARSER::MOLECULE) ("Atg6" . SPARSER::PROTEIN)
    ("Atg8" . SPARSER::HUMAN-PROTEIN-FAMILY) ("JNK2" . SPARSER::PROTEIN)
    ("Atg5" . SPARSER::PROTEIN) ("Beclin1" . SPARSER::PROTEIN)
    ("oleic acid" . SPARSER::MOLECULE) ("palmitic acid" . SPARSER::MOLECULE)
    ("PLX-4032 and ABT-263" . SPARSER::COLLECTION)
    ("ABT-263 and ABT-737" . SPARSER::COLLECTION)
    ("cisplatin, dacarbazine, or vinblastine" . SPARSER::COLLECTION)
    ("cisplatin, dacarbazine, and vinblastine" . SPARSER::COLLECTION)
    ("vinblastine" . SPARSER::DRUG) ("GSK" . SPARSER::PROTEIN)
    ("caspases-9/-3" . SPARSER::COLLECTION)
    ("staurosporine and cycloheximide" . SPARSER::COLLECTION)
    ("staurosporine" . SPARSER::DRUG)
    ("BAX, BCL-xL, BIM, MCL-1, and PUMA" . SPARSER::COLLECTION)
    ("the pro-apoptotic protein" . SPARSER::PROTEIN)
    ("BAX or BIM" . SPARSER::COLLECTION)
    ("BIM, and PUMA" . SPARSER::COLLECTION)
    ("BCL-2/BCL-xL" . SPARSER::COLLECTION)
    ("pro-apoptotic BIM" . SPARSER::PROTEIN)
    ("PUMA or ABT-737" . SPARSER::COLLECTION)
    ("PUMA and ABT-737" . SPARSER::COLLECTION)
    ("protein and mitochondrial" . SPARSER::COLLECTION)
    ("BIM and mitochondria" . SPARSER::COLLECTION)
    ("a sensitizer/de-repressor BH3-only protein ( e.g., PUMA) or ABT-737"
     . SPARSER::COLLECTION)
    ("Mitochondria" . SPARSER::PROTEIN) ("bim" . SPARSER::PROTEIN)
    ("the potent pro-apoptotic form" . SPARSER::FORM)
    ("BIM-EL" . SPARSER::COLLECTION) ("EL" . SPARSER::PROTEIN)
    ("all the pro-apoptotic BCL-2 proteins" . SPARSER::PROTEIN)
    ("the pro-apoptotic protein BAX" . SPARSER::PROTEIN)
    ("PLX-4032 and ABT-737" . SPARSER::COLLECTION)
    ("BCL-2, BCL-xL, and BCL-w" . SPARSER::COLLECTION)
    ("pan-caspase" . SPARSER::COLLECTION) ("BID/BIM" . SPARSER::COLLECTION)
    ("PUMA" . SPARSER::PROTEIN) ("BAD" . SPARSER::PROTEIN)
    ("BID and BIM" . SPARSER::COLLECTION) ("BAK/BAX" . SPARSER::COLLECTION)
    ("BID" . SPARSER::PROTEIN) ("BAK and BAX" . SPARSER::COLLECTION)
    ("BAX" . SPARSER::PROTEIN) ("BAK" . SPARSER::PROTEIN)
    ("‘effectors’" . SPARSER::EFFECTOR)
    ("the pro-apoptotic proteins" . SPARSER::PROTEIN)
    ("pro-apoptotic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("proteins and mitochondria" . SPARSER::COLLECTION)
    ("the mutated form" . SPARSER::FORM)
    ("a cancer-associated oncogene" . SPARSER::ONCOGENE)
    ("A classic example" . SPARSER::EXAMPLE) ("BIM" . SPARSER::PROTEIN)
    ("caspases-9" . SPARSER::PROTEIN) ("APAF-1" . SPARSER::PROTEIN)
    ("BCL-w" . SPARSER::PROTEIN) ("pUS9" . SPARSER::PROTEIN)
    ("Green fluorescent protein" . SPARSER::PROTEIN) ("N 2" . SPARSER::PROTEIN)
    ("Caspase-8" . SPARSER::PROTEIN) ("p42 MAPK" . SPARSER::PROTEIN)
    ("HSP60" . SPARSER::PROTEIN) ("CD31" . SPARSER::PROTEIN)
    ("ABT-263" . SPARSER::DRUG) ("ABT-199" . SPARSER::DRUG)
    ("MCL-1" . SPARSER::PROTEIN) ("BCL-xL" . SPARSER::PROTEIN)
    ("cytochrome c" . SPARSER::PROTEIN) ("ABT-737" . SPARSER::DRUG)
    ("PLX-4032" . SPARSER::DRUG) ("lack functional p53" . SPARSER::PROTEIN)
    ("Mdmx and Mdm2" . SPARSER::COLLECTION)
    ("p53 and Arf" . SPARSER::COLLECTION)
    ("H2AX and S/T-Q" . SPARSER::COLLECTION) ("clear Mdmx" . SPARSER::PROTEIN)
    ("p53, and genome" . SPARSER::COLLECTION)
    ("Mre11 and Rad50" . SPARSER::COLLECTION)
    ("Mdmx:Nbs1" . SPARSER::BIO-COMPLEX) ("MxΔRING" . SPARSER::PROTEIN)
    ("HA-MxΔRING" . SPARSER::PROTEIN-PAIR)
    ("Mdmx and Nbs1" . SPARSER::COLLECTION)
    ("Mre11 or Rad50" . SPARSER::COLLECTION)
    ("Nbs1 and Nbs1" . SPARSER::COLLECTION) ("HA-Mdmx" . SPARSER::COLLECTION)
    ("Nbs1 and Rad50" . SPARSER::COLLECTION)
    ("a deletion mutant of Mdmx lacking the RING domain (MxΔRING; aa 1–345) or a mutant of Mdmx consisting"
     . SPARSER::COLLECTION)
    ("Nbs1, Mre11, and Rad50" . SPARSER::COLLECTION) ("Atm" . SPARSER::PROTEIN)
    ("serine or threonine" . SPARSER::COLLECTION)
    ("the Mdmx and the MxΔRING" . SPARSER::COLLECTION)
    ("ARF and p53" . SPARSER::COLLECTION) ("ARF" . SPARSER::PROTEIN)
    ("Mdmx or MxΔRING" . SPARSER::COLLECTION)
    ("elevated Mdmx or the MxΔRING mutant" . SPARSER::COLLECTION)
    ("foci and protein" . SPARSER::COLLECTION)
    ("p53, Arf, and Mdm2" . SPARSER::COLLECTION)
    ("Arf and p53" . SPARSER::COLLECTION)
    ("full-length Mdmx and the mutant form" . SPARSER::COLLECTION)
    ("Mdmx (MxΔRING) similarly inhibited DNA" . SPARSER::DNA)
    ("Mdmx and MxΔRING" . SPARSER::COLLECTION)
    ("Mdm2 and Mdmx" . SPARSER::COLLECTION)
    ("Arf" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Mx" . SPARSER::PROTEIN)
    ("Mdmx and YFP, or Mdm2 and GFP" . SPARSER::COLLECTION)
    ("YFP, or Mdm2 and GFP" . SPARSER::COLLECTION)
    ("Mdm2 and GFP" . SPARSER::COLLECTION)
    ("Mdmx and YFP" . SPARSER::COLLECTION)
    ("certain tumor types or subsets" . SPARSER::COLLECTION)
    ("Mdmx and p53" . SPARSER::COLLECTION)
    ("an aggressive form" . SPARSER::FORM)
    ("p53 or Mdm2" . SPARSER::COLLECTION) ("MDMX" . SPARSER::PROTEIN)
    ("NBS1 and ATM" . SPARSER::COLLECTION)
    ("Mdm2 and Nbs1" . SPARSER::COLLECTION) ("MRN" . SPARSER::COLLECTION)
    ("p53-" . SPARSER::PROTEIN) ("p53 and Mdm2" . SPARSER::COLLECTION)
    ("Mre11-Rad50-Nbs1" . SPARSER::COLLECTION)
    ("serine/threonine-glutamine" . SPARSER::COLLECTION)
    ("Mdmx" . SPARSER::PROTEIN) ("sodium bicarbonate" . SPARSER::DRUG)
    ("aa 1" . SPARSER::PROTEIN) ("T-Q" . SPARSER::DRUG)
    ("Myc-tagged" . SPARSER::PROTEIN) ("MDM4" . SPARSER::PROTEIN)
    ("NBS1" . SPARSER::PROTEIN) ("Mdm2" . SPARSER::PROTEIN)
    ("SOCS2 and ENPP2" . SPARSER::COLLECTION) ("Genes" . SPARSER::GENE)
    ("only FLT3 point mutation" . SPARSER::PROTEIN)
    ("MAPK and AKT" . SPARSER::COLLECTION) ("Lnk" . SPARSER::PROTEIN)
    ("the mature 150 kDa isoform" . SPARSER::ISOFORM)
    ("in contrast FLT3 point mutation" . SPARSER::PROTEIN)
    ("lobe" . SPARSER::PROTEIN)
    ("The corresponding amino acid (D820) of the homologous c-KIT receptor"
     . SPARSER::RECEPTOR)
    ("the homologous c-KIT receptor" . SPARSER::RECEPTOR)
    ("the adverse impact" . SPARSER::PROTEIN)
    ("SOCS2 , ENPP2 and MRC1" . SPARSER::COLLECTION)
    ("PRUNE2 and ART3" . SPARSER::COLLECTION)
    ("an additional NPM1 mutation only 23 genes" . SPARSER::GENE)
    ("GEP" . SPARSER::PROTEIN) ("FLT3-ITD1" . SPARSER::PROTEIN-PAIR)
    ("STAT5 and FLT3" . SPARSER::COLLECTION)
    ("the strong glycosylated 150 kDa" . SPARSER::PROTEIN)
    ("Mutants" . SPARSER::MUTANT)
    ("simultaneous FLT3 -ITD" . SPARSER::COLLECTION)
    ("mere" . SPARSER::PROTEIN-FAMILY)
    ("the same independent prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MLL" . SPARSER::PROTEIN)
    ("NPM1 (HR: 0.2; 95% CI: 0.1–0.3) and bi CEBPA (HR: 0.24; 95% CI: 0.1–0.5)"
     . SPARSER::COLLECTION)
    ("Independent prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("favorable prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CEBPA" . SPARSER::PROTEIN)
    ("a significantly shorter RFS" . SPARSER::PROTEIN)
    ("CR" . SPARSER::PROTEIN) ("CN-AML" . SPARSER::COLLECTION)
    ("CN" . SPARSER::PROTEIN)
    ("an independent prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FLT3-" . SPARSER::PROTEIN) ("myeloid and lymphoid" . SPARSER::COLLECTION)
    ("myeloid" . SPARSER::PROTEIN)
    ("SOCS2 , ENPP2 , PRUNE2 and ART3" . SPARSER::COLLECTION)
    ("-ITD" . SPARSER::COLLECTION) ("AKT and MAPK" . SPARSER::COLLECTION)
    ("ITD" . SPARSER::PROTEIN) ("FLT3-ITD" . SPARSER::COLLECTION)
    ("c-CBL" . SPARSER::PROTEIN) ("adaptor protein" . SPARSER::PROTEIN)
    ("SOCS6" . SPARSER::PROTEIN)
    ("suppressor of cytokine signaling 6" . SPARSER::PROTEIN)
    ("c-KIT" . SPARSER::PROTEIN) ("MRC1" . SPARSER::PROTEIN)
    ("CD135" . SPARSER::PROTEIN) ("4–1" . SPARSER::PROTEIN)
    ("3–2" . SPARSER::PROTEIN) ("MK 2206" . SPARSER::DRUG)
    ("FLT3 ligand" . SPARSER::PROTEIN) ("S18" . SPARSER::PROTEIN)
    ("NPM1" . SPARSER::PROTEIN)
    ("Fms-like tyrosine kinase 3" . SPARSER::PROTEIN)
    ("ART3" . SPARSER::PROTEIN) ("PRUNE2" . SPARSER::PROTEIN)
    ("ENPP2" . SPARSER::PROTEIN) ("SOCS2" . SPARSER::PROTEIN)
    ("FLT3" . SPARSER::PROTEIN) ("sugar" . SPARSER::MOLECULE)
    ("other energetic molecules" . SPARSER::MOLECULE)
    ("these classical protein kinases" . SPARSER::KINASE)
    ("These typical protein kinases use ATP" . SPARSER::ATP)
    ("QK" . SPARSER::PROTEIN) ("a relevant ligand" . SPARSER::LIGAND)
    ("EGF/MAPK" . SPARSER::COLLECTION) ("MEK1 and PAK2" . SPARSER::COLLECTION)
    ("B-Raf and Grb2" . SPARSER::COLLECTION)
    ("commercial recombinant epidermal growth factor receptor"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKM2, SAICAR, and PEP" . SPARSER::COLLECTION)
    ("pT-pY" . SPARSER::COLLECTION) ("even more active" . SPARSER::ACTIVE)
    ("other canonical MAPKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphoprotein" . SPARSER::PROTEIN)
    ("MAPK3 and MAPK1" . SPARSER::COLLECTION)
    ("protein kinases and other proteins" . SPARSER::COLLECTION)
    ("ABL1, ABL2, ALK, CCDC6, CHEK2, EGFR, ERBB2, FGFR1, FGFR2, FGFR3, JAK2, JAK3, KDR, KIT, MAP2K1, MAP2K2, MET, NTRK3, PCM1, PDGFRA, RET, ROS1, and SYK"
     . SPARSER::COLLECTION)
    ("SYK" . SPARSER::PROTEIN) ("PDGFRA" . SPARSER::PROTEIN)
    ("MET" . SPARSER::PROTEIN) ("KIT" . SPARSER::PROTEIN)
    ("KDR" . SPARSER::PROTEIN) ("ALK" . SPARSER::PROTEIN)
    ("EGFR and non-receptor" . SPARSER::COLLECTION) ("GO" . SPARSER::PROTEIN)
    ("ProQ" . SPARSER::PROTEIN) ("PEP and PKM2" . SPARSER::COLLECTION)
    ("the constitutively nuclear mutant PKM2 R399E" . SPARSER::PROTEIN)
    ("PKM2 and SAICAR" . SPARSER::COLLECTION)
    ("EGF, glucose withdrawal, or adsl-kd ( xref )" . SPARSER::COLLECTION)
    ("PKM" . SPARSER::PROTEIN)
    ("hemagglutinin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("paics-kd" . SPARSER::COLLECTION) ("kd" . SPARSER::PROTEIN)
    ("adsl-kd" . SPARSER::COLLECTION) ("paics" . SPARSER::PROTEIN)
    ("synthase" . SPARSER::PROTEIN) ("adsl" . SPARSER::PROTEIN)
    ("monomer" . SPARSER::MONOMER) ("H3.2 and H3.3" . SPARSER::COLLECTION)
    ("protein and pyruvate" . SPARSER::COLLECTION)
    ("FBP ( xref ) or SAICAR" . SPARSER::COLLECTION) ("FBP" . SPARSER::PROTEIN)
    ("the activity in vitro using purified recombinant PKM2 (rPKM2) and PEP"
     . SPARSER::COLLECTION)
    ("mostly protein kinases" . SPARSER::KINASE) ("purine" . SPARSER::DRUG)
    ("cellular metabolites" . SPARSER::PROTEIN)
    ("metabolites" . SPARSER::MOLECULE) ("MYC and CCND1" . SPARSER::COLLECTION)
    ("MYC" . SPARSER::PROTEIN)
    ("kinase and protein kinase" . SPARSER::COLLECTION)
    ("pyruvate and ATP" . SPARSER::COLLECTION) ("ADP" . SPARSER::PROTEIN)
    ("PEP" . SPARSER::PROTEIN) ("phosphoenolpyruvate" . SPARSER::MOLECULE)
    ("therapeutics and/or diagnostic tools (for review, see Gupta and Bamezai, 2010; xref ; xref )"
     . SPARSER::COLLECTION)
    ("pyruvate" . SPARSER::PROTEIN)
    ("enzyme enriched in highly proliferating cells and most types"
     . SPARSER::COLLECTION)
    ("100 human proteins– mostly protein kinases–" . SPARSER::KINASE)
    ("kinases–" . SPARSER::KINASE) ("proteins–" . SPARSER::PROTEIN)
    ("SAICAR" . SPARSER::MOLECULE) ("Pyruvate" . SPARSER::PROTEIN)
    ("anti-Histone" . SPARSER::PROTEIN)
    ("potassium chloride" . SPARSER::MOLECULE) ("B-Raf" . SPARSER::PROTEIN)
    ("PAK2" . SPARSER::PROTEIN) ("MEK1" . SPARSER::PROTEIN)
    ("Bub3" . SPARSER::PROTEIN) ("Cdc25A" . SPARSER::PROTEIN)
    ("ROS1" . SPARSER::PROTEIN) ("PCM1" . SPARSER::PROTEIN)
    ("NTRK3" . SPARSER::PROTEIN) ("FGFR3" . SPARSER::PROTEIN)
    ("FGFR2" . SPARSER::PROTEIN) ("ERBB2" . SPARSER::PROTEIN)
    ("CCDC6" . SPARSER::PROTEIN) ("ABL2" . SPARSER::PROTEIN)
    ("MAP3K3" . SPARSER::PROTEIN) ("MAP3K2" . SPARSER::PROTEIN)
    ("MAP3K11" . SPARSER::PROTEIN) ("MAP2K2" . SPARSER::PROTEIN)
    ("MAP2K1" . SPARSER::PROTEIN) ("MAPK3" . SPARSER::PROTEIN)
    ("MAPK1" . SPARSER::PROTEIN) ("Myc protein" . SPARSER::PROTEIN)
    ("adenylosuccinate lyase" . SPARSER::PROTEIN)
    ("Histone H3.1" . SPARSER::PROTEIN) ("H3.2" . SPARSER::PROTEIN)
    ("5-aminoimidazole-4-carboxamide" . SPARSER::MOLECULE)
    ("H3 T" . SPARSER::PROTEIN) ("s protein" . SPARSER::PROTEIN)
    ("PKM2" . SPARSER::PROTEIN) ("6b" . SPARSER::PROTEIN)
    ("c-IAP-2" . SPARSER::COLLECTION) ("c-IAP-1" . SPARSER::COLLECTION)
    ("c" . SPARSER::PROTEIN) ("Step" . SPARSER::PROTEIN)
    ("c-IAP1, c-IAP2 and XIAP" . SPARSER::COLLECTION)
    ("c-IAP1" . SPARSER::PROTEIN-PAIR) ("ankyrin" . SPARSER::PROTEIN)
    ("topoisomerase" . SPARSER::PROTEIN) ("Bcl2 and IAP" . SPARSER::COLLECTION)
    ("protein, Bcl2, and anti-apoptotic" . SPARSER::COLLECTION)
    ("p68 and DROSHA" . SPARSER::COLLECTION) ("DROSHA" . SPARSER::PROTEIN)
    ("Nanog" . SPARSER::PROTEIN) ("p53 and cyclinD1" . SPARSER::COLLECTION)
    ("both receptor kinases (e.g., ErbB2, EGFR and TGFβ receptors) and non-receptor kinases (e.g., c-Src and ROK)"
     . SPARSER::COLLECTION)
    ("ErbB2, EGFR and TGFβ" . SPARSER::COLLECTION)
    ("multifunctional transmembrane glycoproteins" . SPARSER::PROTEIN)
    ("LMW-HA" . SPARSER::COLLECTION) ("HMW-HA" . SPARSER::COLLECTION)
    ("hyaluronidases" . SPARSER::DRUG) ("HMW" . SPARSER::PROTEIN)
    ("c-Jun or miR-21" . SPARSER::COLLECTION)
    ("Bcl2 and/or IAPs" . SPARSER::COLLECTION)
    ("c-Jun siRNA (Figure  xref B-a, b, c, d-lane 3) or JNK inhibitor (Figure  xref C-a, b, c, d-lane 4)"
     . SPARSER::COLLECTION)
    ("Bcl2 and IAPs" . SPARSER::COLLECTION)
    ("cIAP1/cIAP2/XIAP" . SPARSER::COLLECTION)
    ("cIAP-1, cIAP-2 and X-linked" . SPARSER::COLLECTION)
    ("XIAP" . SPARSER::PROTEIN) ("Bcl2/IAP" . SPARSER::COLLECTION)
    ("RNase" . SPARSER::PROTEIN) ("JNK/c-Jun" . SPARSER::COLLECTION)
    ("c-Jun or phospho-c-Jun" . SPARSER::COLLECTION)
    ("anti-c-Jun or anti-phospho-c-Jun" . SPARSER::COLLECTION)
    ("antibody or anti-phospho-c-Jun" . SPARSER::COLLECTION)
    ("phospho-c-Jun and Jun" . SPARSER::COLLECTION)
    ("both phospho-c-Jun and total c-Jun" . SPARSER::COLLECTION)
    ("Inhibitor" . SPARSER::INHIBITOR) ("p-c-Jun" . SPARSER::COLLECTION)
    ("both phosphorylated c-Jun[pS63] and c-Jun" . SPARSER::COLLECTION)
    ("JNK and c-Jun" . SPARSER::COLLECTION)
    ("c-Jun and miR-21" . SPARSER::COLLECTION)
    ("survival proteins (IAPs) and Doxorubicin chemoresistance"
     . SPARSER::COLLECTION)
    ("Doxorubicin" . SPARSER::PROTEIN)
    ("/P-glycoprotein" . SPARSER::COLLECTION) ("multidrug" . SPARSER::PROTEIN)
    ("insulin or insulin-like" . SPARSER::COLLECTION)
    ("c-Jun or c- fos" . SPARSER::COLLECTION) ("IGFs" . SPARSER::PROTEIN)
    ("c-Jun and c- fos" . SPARSER::COLLECTION)
    ("/c- fos" . SPARSER::COLLECTION) ("c-Jun and c-Fos" . SPARSER::COLLECTION)
    ("c-Jun, ATF2, ELK1, SMAD4, p53 and HSF1" . SPARSER::COLLECTION)
    ("JNKs" . SPARSER::PROTEIN) ("CD44 and HA" . SPARSER::COLLECTION)
    ("homologous proteins" . SPARSER::PROTEIN)
    ("CD44 and RHAMM" . SPARSER::COLLECTION)
    ("whose cell surface form" . SPARSER::FORM) ("RHAMM" . SPARSER::PROTEIN)
    ("Hyaluronan (HA)" . SPARSER::MOLECULE)
    ("glycosaminoglycan" . SPARSER::MOLECULE) ("Hyaluronan" . SPARSER::PROTEIN)
    ("Matrix" . SPARSER::PROTEIN-FAMILY) ("Bcl-2/IAP" . SPARSER::COLLECTION)
    ("IAP" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Bcl-2 and IAPs" . SPARSER::COLLECTION)
    ("proteins (IAPs) as well as chemoresistance" . SPARSER::COLLECTION)
    ("IAPs" . SPARSER::PROTEIN) ("HA/CD44" . SPARSER::COLLECTION)
    ("CHIP" . SPARSER::PROTEIN) ("hyaluronan (HA)" . SPARSER::MOLECULE)
    ("/c-Jun" . SPARSER::COLLECTION) ("-CD44" . SPARSER::COLLECTION)
    ("Kinase" . SPARSER::KINASE) ("MicroRNA" . SPARSER::MICRO-RNA)
    ("Texas Red" . SPARSER::DRUG) ("or 2 " . SPARSER::MOLECULE)
    ("Doxorubicin hydrochloride" . SPARSER::DRUG) ("C-JUN" . SPARSER::PROTEIN)
    ("IAP-2" . SPARSER::PROTEIN) ("IAP-1" . SPARSER::PROTEIN)
    ("c-IAP2" . SPARSER::PROTEIN) ("IAP1" . SPARSER::PROTEIN)
    ("p68" . SPARSER::PROTEIN) ("pri-miRNA" . SPARSER::RNA)
    ("c-Src" . SPARSER::PROTEIN) ("cIAP2" . SPARSER::PROTEIN)
    ("cIAP1" . SPARSER::PROTEIN) ("X-linked" . SPARSER::PROTEIN)
    ("cIAP-2" . SPARSER::PROTEIN) ("cIAP-1" . SPARSER::PROTEIN)
    ("c-JNK" . SPARSER::PROTEIN) ("MDR1" . SPARSER::PROTEIN)
    ("HA-CD44" . SPARSER::PROTEIN) ("PDCD4" . SPARSER::PROTEIN)
    ("single-stranded RNAs" . SPARSER::RNA) ("c- fos" . SPARSER::PROTEIN)
    ("c-Fos" . SPARSER::PROTEIN) ("HSF1" . SPARSER::PROTEIN)
    ("SMAD4" . SPARSER::PROTEIN) ("ELK1" . SPARSER::PROTEIN)
    ("ATF2" . SPARSER::PROTEIN) ("CD168" . SPARSER::PROTEIN)
    ("mTORC2 or p70S6K" . SPARSER::COLLECTION)
    ("mTORC1/mTORC2" . SPARSER::COLLECTION) ("LC3/ATG8" . SPARSER::COLLECTION)
    ("pyrimidine" . SPARSER::DRUG)
    ("an invariable cytosine" . SPARSER::NUCLEOBASE)
    ("cytosine and uracil" . SPARSER::COLLECTION)
    ("polyribosome" . SPARSER::BIO-COMPLEX) ("uracil" . SPARSER::NUCLEOBASE)
    ("pyrimidines" . SPARSER::DRUG) ("proteins (ATG)" . SPARSER::PROTEIN)
    ("bis-indolylmaleimide" . SPARSER::PROTEIN-PAIR)
    ("Bcl-2 and LC3" . SPARSER::COLLECTION)
    ("mTORC1, PI3K, mTORC2 or Erk" . SPARSER::COLLECTION)
    ("4 nM torin1 or 50 nM rapamycin" . SPARSER::COLLECTION)
    ("mTORC2 slightly increases LC3-II" . SPARSER::PROTEIN)
    ("mark" . SPARSER::PROTEIN) ("ULK1–ATG 13–FIP200" . SPARSER::COLLECTION)
    ("viral RNA" . SPARSER::RNA) ("HPI, and caspase" . SPARSER::COLLECTION)
    ("Beclin-1, ATG 5 and LC3" . SPARSER::COLLECTION)
    ("20 nM torin1 or 3MA" . SPARSER::COLLECTION)
    ("residual inhibitors" . SPARSER::INHIBITOR) ("TOP" . SPARSER::PROTEIN)
    ("mTORC2 and p70S6K" . SPARSER::COLLECTION)
    ("p-Erk1/2" . SPARSER::COLLECTION) ("bis" . SPARSER::PROTEIN)
    ("mTORC2 or PI3K" . SPARSER::COLLECTION)
    ("mTORC2 and PI3K" . SPARSER::COLLECTION)
    ("rapamycin or 4 nM torin1" . SPARSER::COLLECTION)
    ("Rapamycin or torin1 partially decrease LC3-II" . SPARSER::PROTEIN)
    ("Rapamycin or torin1" . SPARSER::COLLECTION)
    ("rapamycin and torin1" . SPARSER::COLLECTION)
    ("Threonine" . SPARSER::AMINO-ACID) ("at least 10 HPI" . SPARSER::PROTEIN)
    ("transiently increases p-Akt" . SPARSER::COLLECTION)
    ("mTORC2/PI3K" . SPARSER::COLLECTION) ("new media" . SPARSER::PROTEIN)
    ("class 3 PI3K and autophagy inhibitor 3MA" . SPARSER::COLLECTION)
    ("PI3K and mTOR" . SPARSER::COLLECTION)
    ("functional caspases" . SPARSER::PROTEIN) ("MEFs" . SPARSER::PROTEIN)
    ("electron" . SPARSER::MOLECULE) ("trypan" . SPARSER::DRUG)
    ("opted" . SPARSER::HUMAN-PROTEIN-FAMILY) ("toxins" . SPARSER::MOLECULE)
    ("Influenza A virus kills various types" . TYPE)
    ("given new media" . SPARSER::PROTEIN) ("HPI" . SPARSER::PROTEIN)
    ("The increased autophagic state" . SPARSER::BIO-STATE)
    ("PI3K, mTORC2 or p70S6K" . SPARSER::COLLECTION)
    ("PI3K/mTORC2" . SPARSER::COLLECTION)
    ("the autophagic state" . SPARSER::BIO-STATE)
    ("Two viral proteins" . SPARSER::PROTEIN)
    ("NS1 and M2" . SPARSER::COLLECTION) ("protein (ATG)" . SPARSER::PROTEIN)
    ("Serine" . SPARSER::AMINO-ACID)
    ("Class 1 PI3K (PI3K-1) and mammalian target of rapamycin complex"
     . SPARSER::COLLECTION)
    ("molecules or complexes" . SPARSER::COLLECTION)
    ("viral nucleoprotein–RNA complexes" . SPARSER::BIO-COMPLEX)
    ("caspases, VDAC, ANT3, NF-κB, Bcl-2, Bax and Bak" . SPARSER::COLLECTION)
    ("VDAC" . SPARSER::PROTEIN) ("caspases" . SPARSER::PROTEIN)
    ("several viral proteins" . SPARSER::PROTEIN)
    ("PB1-F2 and M2" . SPARSER::COLLECTION) ("Inhibitors" . SPARSER::INHIBITOR)
    ("PI3K/mTORC1" . SPARSER::COLLECTION)
    ("mTORC1, PI3K and mTORC2" . SPARSER::COLLECTION)
    ("PI3K and mTORC1" . SPARSER::COLLECTION)
    ("bis-benzimide" . SPARSER::MOLECULE) ("p70" . SPARSER::PROTEIN)
    ("ATG8" . SPARSER::PROTEIN) ("FIP200" . SPARSER::PROTEIN)
    ("ATG 13" . SPARSER::PROTEIN) ("ULK1" . SPARSER::PROTEIN)
    ("Beclin-1" . SPARSER::PROTEIN) ("cytochrome C" . SPARSER::PROTEIN)
    ("P70 S6K" . SPARSER::PROTEIN) ("P25" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("P8" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Erk 1" . SPARSER::PROTEIN)
    ("P70" . SPARSER::PROTEIN) ("Bcl2" . SPARSER::PROTEIN)
    ("Torin1" . SPARSER::DRUG) ("torin1" . SPARSER::DRUG)
    ("GFP-LC3" . SPARSER::PROTEIN) ("ATG 5" . SPARSER::PROTEIN)
    ("caspases 3" . SPARSER::PROTEIN) ("zVAD-fmk" . SPARSER::DRUG)
    ("caspase 8" . SPARSER::PROTEIN) ("p85β" . SPARSER::PROTEIN)
    ("Class 1" . SPARSER::PROTEIN-FAMILY) ("ANT3" . SPARSER::PROTEIN)
    ("PB1-F2" . SPARSER::MOLECULE) ("NS1" . SPARSER::PROTEIN)
    ("phosphoproteins" . SPARSER::PROTEIN)
    ("Chk2, and p53" . SPARSER::COLLECTION)
    ("γH2AX or ATM" . SPARSER::COLLECTION) ("viral mutants" . SPARSER::MUTANT)
    ("other viral proteins" . SPARSER::PROTEIN)
    ("these viral proteins" . SPARSER::PROTEIN)
    ("p53 and retinoblastoma" . SPARSER::COLLECTION)
    ("neither HSV UL13 nor the VZV protein kinases" . SPARSER::COLLECTION)
    ("ATM and H2AX" . SPARSER::COLLECTION)
    ("UL13 and ORF47" . SPARSER::COLLECTION)
    ("the viral protein kinases" . SPARSER::KINASE)
    ("fused" . SPARSER::PROTEIN) ("protein and IE63" . SPARSER::COLLECTION)
    ("IE62 and IE63" . SPARSER::COLLECTION)
    ("protein, IE62, or IE63" . SPARSER::COLLECTION)
    ("ORF61, ORF62, or ORF63, and γ-H2AX" . SPARSER::COLLECTION)
    ("ORF63, and γ-H2AX" . SPARSER::COLLECTION)
    ("ORF61 and ORF63" . SPARSER::COLLECTION)
    ("ORF61 (ROka61D [ xref ]) and ORF63 (ROka63D [ xref ])"
     . SPARSER::COLLECTION)
    ("DR" . SPARSER::PROTEIN)
    ("the HSV ICP0 immediate-early gene" . SPARSER::GENE)
    ("an immediate-early gene" . SPARSER::GENE)
    ("immediate-early genes" . SPARSER::GENE)
    ("Nbs1, Chk2, 53BP1, and p53" . SPARSER::COLLECTION)
    ("both viral proteins (ICP8, viral DNA polymerase [ xref ; xref ]) as well as host cell proteins"
     . SPARSER::COLLECTION)
    ("both viral proteins" . SPARSER::PROTEIN) ("viral DNA" . SPARSER::DNA)
    ("linear viral DNA" . SPARSER::DNA) ("v-cyclin" . SPARSER::COLLECTION)
    ("cyclin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("herpesvirus (KSHV) vIRF1 ( xref ) and Epstein-Barr virus (EBV) LMP1 ( xref )"
     . SPARSER::COLLECTION)
    ("HSV ICP0 ( xref ) and cytomegalovirus IE1 ( xref )"
     . SPARSER::COLLECTION)
    ("unusual DNA" . SPARSER::DNA) ("eukaryotic DNA" . SPARSER::DNA)
    ("H2AX, Mdc1, Nbs1, Chk2, 53BP1, and p53" . SPARSER::COLLECTION)
    ("ataxia telangiectasia and Rad3-related" . SPARSER::COLLECTION)
    ("H2AX and ATM" . SPARSER::COLLECTION)
    ("H2AX or ATM" . SPARSER::COLLECTION)
    ("ORF61, ORF62, or ORF63" . SPARSER::COLLECTION)
    ("ORF61 or ORF63" . SPARSER::COLLECTION)
    ("cellular ATM" . SPARSER::PROTEIN) ("32 P" . SPARSER::|32P|)
    ("ORF36" . SPARSER::PROTEIN) ("thymidylate synthetase" . SPARSER::PROTEIN)
    ("ORF13" . SPARSER::PROTEIN) ("UL13" . SPARSER::PROTEIN)
    ("IE63" . SPARSER::PROTEIN) ("IE62" . SPARSER::PROTEIN)
    ("γH2AX" . SPARSER::PROTEIN) ("Rad50" . SPARSER::PROTEIN)
    ("Mre11" . SPARSER::PROTEIN) ("IE1" . SPARSER::PROTEIN)
    ("ICP0" . SPARSER::PROTEIN) ("LMP1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("vIRF1" . SPARSER::PROTEIN) ("E1B" . SPARSER::PROTEIN)
    ("γ-H2AX" . SPARSER::PROTEIN) ("Nbs1" . SPARSER::PROTEIN)
    ("Mdc1" . SPARSER::PROTEIN) ("DNA-PK" . SPARSER::PROTEIN)
    ("ataxia telangiectasia" . SPARSER::PROTEIN)
    ("ataxia telangiectasia mutated" . SPARSER::PROTEIN)
    ("ORF66" . SPARSER::PROTEIN) ("homolog of" . SPARSER::PROTEIN)
    ("ORF62" . SPARSER::PROTEIN) ("ORF67" . SPARSER::PROTEIN)
    ("ORF63" . SPARSER::PROTEIN) ("ORF61" . SPARSER::PROTEIN)
    ("H2AX" . SPARSER::PROTEIN) ("LAM or TSC" . SPARSER::COLLECTION)
    ("Sirolimus" . SPARSER::DRUG)
    ("Both anti-EGFR monoclonal antibodies" . SPARSER::ANTIBODY)
    ("Tsc2" . SPARSER::PROTEIN) ("CpGs" . SPARSER::PROTEIN)
    ("TSC1/TSC2" . SPARSER::COLLECTION)
    ("methylprednisolone and repertaxin" . SPARSER::COLLECTION)
    ("repertaxin" . SPARSER::DRUG) ("methylprednisolone" . SPARSER::DRUG)
    ("Interleukin-6, IL-8 and IL-1α" . SPARSER::COLLECTION)
    ("rapamycin or anti-EGFR" . SPARSER::COLLECTION)
    ("Interleukin-1α, IL-6 and IL-8" . SPARSER::COLLECTION)
    ("Interleukin-8 and IL-6" . SPARSER::COLLECTION)
    ("PI3K and mitogen-activated protein kinase" . SPARSER::COLLECTION)
    ("SNAIL" . SPARSER::PROTEIN) ("antigen" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Cdk4 and cyclin D1" . SPARSER::COLLECTION)
    ("their appropriate cyclin D" . SPARSER::PROTEIN)
    ("Cdk 4, Cdk2 and Cdk6" . SPARSER::COLLECTION)
    ("Cdks" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TSC2 −/− and TSC2 −/meth ASM cells" . SPARSER::COLLECTION)
    ("FAK/Akt/mTOR" . SPARSER::COLLECTION) ("FAK-Akt" . SPARSER::COLLECTION)
    ("FAK/Akt" . SPARSER::COLLECTION)
    ("antibody and rapamycin" . SPARSER::COLLECTION)
    ("both p70S6K and its ribosomal protein S6 substrate"
     . SPARSER::COLLECTION)
    ("azacytidine" . SPARSER::DRUG) ("trichostatin" . SPARSER::MOLECULE)
    ("transcriptionally active genes" . SPARSER::GENE)
    ("euchromatin" . SPARSER::BIO-COMPLEX)
    ("tuberin, and HASMCs" . SPARSER::COLLECTION)
    ("Tuberin and its Thr1462-phosphorylated form" . SPARSER::COLLECTION)
    ("Tuberin" . SPARSER::PROTEIN)
    ("HMB45 and CD44v6 antibodies (Fig. xref A)" . SPARSER::COLLECTION)
    ("TSC and LAM" . SPARSER::COLLECTION)
    ("Rapamycin and anti-EGFR" . SPARSER::COLLECTION)
    ("receptor (EGFR)" . SPARSER::RECEPTOR) ("AML" . SPARSER::PROTEIN)
    ("retinoblastoma" . SPARSER::PROTEIN)
    ("hamartin and tuberin" . SPARSER::COLLECTION)
    ("hamartin" . SPARSER::PROTEIN) ("LAM and TSC" . SPARSER::COLLECTION)
    ("antibodies and rapamycin" . SPARSER::COLLECTION)
    ("/Akt/mTOR" . SPARSER::COLLECTION) ("LAM/TSC" . SPARSER::COLLECTION)
    ("tuberin" . SPARSER::PROTEIN) ("LAM" . SPARSER::PROTEIN)
    ("complex (TSC)" . SPARSER::BIO-COMPLEX)
    ("TSC1 or TSC2" . SPARSER::COLLECTION)
    ("Interleukin-1β" . SPARSER::PROTEIN) ("Interleukin-6" . SPARSER::PROTEIN)
    ("Interleukin-1α" . SPARSER::PROTEIN) ("Interleukin-8" . SPARSER::PROTEIN)
    ("Cdk4" . SPARSER::PROTEIN) ("cyclin D" . SPARSER::PROTEIN)
    ("Cdk6" . SPARSER::PROTEIN) ("Cdk 4" . SPARSER::PROTEIN)
    ("cyclin-dependent kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("extracellular matrix protein" . SPARSER::PROTEIN)
    ("ribosomal protein S6" . SPARSER::PROTEIN) ("HMB45" . SPARSER::DRUG)
    ("α-actin" . SPARSER::PROTEIN) ("IL-1α" . SPARSER::PROTEIN)
    ("m1" . SPARSER::MOLECULE) ("PF228" . SPARSER::DRUG)
    ("COS7" . SPARSER::PROTEIN) ("Type II" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("anti-EGFR" . SPARSER::PROTEIN)
    ("Loss of heterozygosity" . SPARSER::PROTEIN)
    ("autosomal dominant" . SPARSER::PROTEIN) ("TAK" . SPARSER::PROTEIN)
    ("abiraterone" . SPARSER::DRUG) ("TRAMP" . SPARSER::PROTEIN)
    ("SPRY1 , JAG1 , and PSA" . SPARSER::COLLECTION)
    ("radical" . SPARSER::MOLECULE)
    ("JAG1 and N-cadherin" . SPARSER::COLLECTION)
    ("Four Notch receptors (NOTCH1–4) and five ligands (JAG-1, -2, DLL-1, -3, -4)"
     . SPARSER::COLLECTION)
    ("AR and ERK" . SPARSER::COLLECTION) ("EGF/ERK" . SPARSER::COLLECTION)
    ("RTK and MAP kinase" . SPARSER::COLLECTION)
    ("SPRY1 and AR" . SPARSER::COLLECTION) ("MAP" . SPARSER::PROTEIN)
    ("at least four SPRY homologues" . SPARSER::PROTEIN)
    ("only one SPRY gene" . SPARSER::PROTEIN) ("homologues" . SPARSER::PROTEIN)
    ("FGF" . SPARSER::PROTEIN) ("SPRY" . SPARSER::PROTEIN)
    ("independent histologic foci" . SPARSER::PROTEIN)
    ("RTK and EGF" . SPARSER::COLLECTION) ("Target" . SPARSER::TARGET-PROTEIN)
    ("SPRY1 (cl5/cl1 ratio = 5.67) and JAG1 (cl5/cl1 ratio = 5.27)"
     . SPARSER::COLLECTION)
    ("trypsin" . SPARSER::PROTEIN) ("SPRY1 AND JAG1" . SPARSER::COLLECTION)
    ("RGS2 , NBPF10 , or FAM5C" . SPARSER::COLLECTION)
    ("C15orf21 , ADAMTSL3 , CYP11A1 , SH3GL3 , or SH3GL3"
     . SPARSER::COLLECTION)
    ("FAM" . SPARSER::PROTEIN) ("Matrigel" . SPARSER::PROTEIN)
    ("bicalutamide" . SPARSER::DRUG) ("PSA/β-actin" . SPARSER::COLLECTION)
    ("AR/β-actin" . SPARSER::COLLECTION)
    ("the parental LNCaP (LNCaP-P) and randomly selected LNCaP"
     . SPARSER::COLLECTION)
    ("the parental LNCaP" . SPARSER::PROTEIN)
    ("AR and PSA" . SPARSER::COLLECTION) ("-cl5" . SPARSER::COLLECTION)
    ("ANDROGEN" . SPARSER::PROTEIN)
    ("a heterogeneous mixture" . SPARSER::MOLECULE)
    ("androgens" . SPARSER::DRUG) ("Androgen" . SPARSER::PROTEIN)
    ("SPRY1 and JAG1" . SPARSER::COLLECTION)
    ("Sprouty1 (SPRY1) and Jagged1 (JAG1)" . SPARSER::COLLECTION)
    ("LNCaP-cl5" . SPARSER::COLLECTION) ("PSA" . SPARSER::PROTEIN)
    ("MDV3100" . SPARSER::DRUG) ("Nkx3.1" . SPARSER::PROTEIN)
    ("TWIST1" . SPARSER::PROTEIN) ("UGT2B17" . SPARSER::PROTEIN)
    ("DLL-1" . SPARSER::PROTEIN) ("JAG-1" . SPARSER::PROTEIN)
    ("NOTCH1" . SPARSER::PROTEIN)
    ("fibroblast growth factor" . SPARSER::PROTEIN-FAMILY)
    ("SH3GL3" . SPARSER::PROTEIN) ("CYP11A1" . SPARSER::PROTEIN)
    ("ADAMTSL3" . SPARSER::PROTEIN) ("C15orf21" . SPARSER::PROTEIN)
    ("NBPF10" . SPARSER::PROTEIN) ("RGS2" . SPARSER::PROTEIN)
    ("dual-luciferase" . SPARSER::PROTEIN) ("pGL3" . SPARSER::PROTEIN)
    ("DUAL-LUCIFERASE" . SPARSER::PROTEIN) ("anti-androgen" . SPARSER::DRUG)
    ("JAG1" . SPARSER::PROTEIN) ("Jagged1" . SPARSER::PROTEIN)
    ("SPRY1" . SPARSER::PROTEIN) ("Sprouty1" . SPARSER::PROTEIN)
    ("cl5" . SPARSER::PROTEIN)
    ("a tumor-suppressive miRNA" . SPARSER::MICRO-RNA)
    ("vimentin and N-cadherin" . SPARSER::COLLECTION)
    ("a desirable target" . SPARSER::TARGET-PROTEIN)
    ("p16-cyclinD1/CDK4-pRb" . SPARSER::COLLECTION) ("pRb" . SPARSER::PROTEIN)
    ("CDK4/6–cyclinD" . SPARSER::COLLECTION) ("cyclinD" . SPARSER::PROTEIN)
    ("Nanoparticle" . SPARSER::MOLECULE)
    ("CDK4, CDK6, and FOXM1" . SPARSER::COLLECTION)
    ("CDK4, CDK6, FOXM1, and Ki-67" . SPARSER::COLLECTION)
    ("CDK4/CDK6-FOXM1" . SPARSER::COLLECTION)
    ("CDK4, CDK6, and Ki-67" . SPARSER::COLLECTION)
    ("SKOV3-IP1 and HeyA8-IP1" . SPARSER::COLLECTION)
    ("SNAI2 and vimentin" . SPARSER::COLLECTION)
    ("vimentin" . SPARSER::PROTEIN) ("DOPC" . SPARSER::DRUG)
    ("CDK6 or both CDK4 and CDK6" . SPARSER::COLLECTION)
    ("CDK4 or CDK6" . SPARSER::COLLECTION)
    ("Senescence-associated beta-galactosidase" . SPARSER::PROTEIN)
    ("cyclinD1 or cyclinD3" . SPARSER::COLLECTION)
    ("cyclinD1, cyclinD3, and forkhead box M1" . SPARSER::COLLECTION)
    ("Apo" . SPARSER::PROTEIN) ("BrdU" . SPARSER::DRUG)
    ("CDK4 and CDK6-F1" . SPARSER::COLLECTION)
    ("anti-miR-ctrl" . SPARSER::COLLECTION) ("LNA" . SPARSER::PROTEIN)
    ("oligonucleotides" . SPARSER::MOLECULE) ("antisense" . SPARSER::PROTEIN)
    ("ctrl" . SPARSER::PROTEIN) ("MiR" . SPARSER::MICRO-RNA)
    ("miR-506 directly targets both CDK4 and CDK6" . SPARSER::COLLECTION)
    ("microRNA" . SPARSER::MICRO-RNA) ("killer" . SPARSER::PROTEIN)
    ("CDK4 and CDK6" . SPARSER::COLLECTION)
    ("CDK4/6-FOXM1" . SPARSER::COLLECTION) ("MicroRNAs" . SPARSER::MICRO-RNA)
    ("N-cadherin" . SPARSER::PROTEIN) ("FoxM1" . SPARSER::PROTEIN)
    ("PD-0332991" . SPARSER::DRUG)
    ("retinoblastoma protein" . SPARSER::PROTEIN) ("IP1" . SPARSER::PROTEIN)
    ("beta-galactosidase" . SPARSER::PROTEIN)
    ("forkhead box M1" . SPARSER::PROTEIN) ("β-Gal" . SPARSER::PROTEIN)
    ("cyclinD1" . SPARSER::PROTEIN) ("cyclinD3" . SPARSER::PROTEIN)
    ("CyclinD1" . SPARSER::PROTEIN)
    ("fluorescein isothiocyanate" . SPARSER::MOLECULE)
    ("SNAI2" . SPARSER::PROTEIN) ("FOXM1" . SPARSER::PROTEIN)
    ("CDK4/6" . SPARSER::PROTEIN) ("CDK6" . SPARSER::PROTEIN)
    ("CDK4" . SPARSER::PROTEIN) ("Pro" . SPARSER::AMINO-ACID)
    ("gene and risk" . SPARSER::COLLECTION) ("Glu/Glu" . SPARSER::COLLECTION)
    ("on-line" . SPARSER::PROTEIN) ("VIP" . SPARSER::PROTEIN)
    ("53BP1" . SPARSER::PROTEIN) ("p53-binding protein 1" . SPARSER::PROTEIN)
    ("TP53BP1" . SPARSER::PROTEIN) ("hormonal effectors" . SPARSER::EFFECTOR)
    ("PDGFRα, and VCAM" . SPARSER::COLLECTION) ("DNA-damage" . SPARSER::DNA)
    ("a p53-inducible phosphatase and an oncogene" . SPARSER::COLLECTION)
    ("Wip1, a p53-inducible phosphatase and an oncogene" . SPARSER::COLLECTION)
    ("a vascular cell adhesion molecule" . SPARSER::MOLECULE)
    ("PDGFRα, VCAM, and Wip1" . SPARSER::COLLECTION)
    ("Pten and Dicer" . SPARSER::COLLECTION)
    ("Amhr2-Cre" . SPARSER::COLLECTION) ("fallopian tube" . SPARSER::PROTEIN)
    ("OSE and FTE" . SPARSER::COLLECTION)
    ("Pten and Kras or PTEN and Dicer" . SPARSER::COLLECTION)
    ("Kras or PTEN and Dicer" . SPARSER::COLLECTION)
    ("PTEN and Dicer" . SPARSER::COLLECTION) ("Dicer" . SPARSER::PROTEIN)
    ("Pten , APC , p53 and Rb" . SPARSER::COLLECTION)
    ("APC" . SPARSER::PROTEIN) ("Pten" . SPARSER::PROTEIN)
    ("c-myc , Kras , and Akt" . SPARSER::COLLECTION)
    ("PDGFRα and VCAM" . SPARSER::COLLECTION) ("sham" . SPARSER::DRUG)
    ("OSC" . SPARSER::PROTEIN)
    ("PDGFRα, VCAM, ICAM1, and clusterin" . SPARSER::COLLECTION)
    ("VCAM" . SPARSER::MOLECULE)
    ("vascular cell adhesion molecule (VCAM)" . SPARSER::MOLECULE)
    ("molecule (VCAM)" . SPARSER::MOLECULE) ("clusterin" . SPARSER::PROTEIN)
    ("no available biomarkers" . SPARSER::MOLECULE)
    ("Ber-EP4" . SPARSER::COLLECTION) ("Ber" . SPARSER::PROTEIN)
    ("calretinin" . SPARSER::PROTEIN) ("the fallopian tube" . SPARSER::PROTEIN)
    ("OSE or FTE" . SPARSER::COLLECTION)
    ("widespread cytokeratin 8" . SPARSER::PROTEIN)
    ("cytokeratin" . SPARSER::PROTEIN) ("AMH" . SPARSER::PROTEIN)
    ("/AKT" . SPARSER::COLLECTION)
    ("LH, progesterone, testosterone, and E" . SPARSER::COLLECTION)
    ("progesterone, testosterone and E" . SPARSER::COLLECTION)
    ("HPO" . SPARSER::PROTEIN) ("sharp" . SPARSER::PROTEIN)
    ("PR-Cre" . SPARSER::COLLECTION) ("cre" . SPARSER::PROTEIN)
    ("HRT" . SPARSER::PROTEIN) ("Estrogen" . SPARSER::MOLECULE)
    ("follicle stimulating hormone (FSH)" . SPARSER::PROTEIN)
    ("anthracene (DMBA)" . SPARSER::DRUG) ("DMBA" . SPARSER::PROTEIN)
    ("anthracene" . SPARSER::DRUG) ("gonadotropins" . SPARSER::PROTEIN)
    ("estrogen or estrogen" . SPARSER::COLLECTION)
    ("letrozole" . SPARSER::DRUG) ("RPLP0" . SPARSER::PROTEIN)
    ("2/3" . SPARSER::PROTEIN) ("tm2" . SPARSER::PROTEIN-FAMILY)
    ("tyrosine kinase receptor" . SPARSER::PROTEIN)
    ("anti-estrogen" . SPARSER::DRUG) ("Amhr2" . SPARSER::PROTEIN)
    ("c-myc" . SPARSER::PROTEIN) ("aromatase activity" . SPARSER::PROTEIN)
    ("ICAM1" . SPARSER::PROTEIN) ("Wip1" . SPARSER::PROTEIN)
    ("phosphatase 1" . SPARSER::PROTEIN)
    ("intercellular adhesion molecule 1" . SPARSER::PROTEIN)
    ("PDGFRα" . SPARSER::PROTEIN)
    ("platelet derived growth factor receptor alpha" . SPARSER::PROTEIN)
    ("EP4" . SPARSER::PROTEIN) ("WT1" . SPARSER::PROTEIN)
    ("PAX8" . SPARSER::PROTEIN) ("CK8" . SPARSER::PROTEIN)
    ("cytokeratin 8" . SPARSER::PROTEIN)
    ("transcriptionally active form" . SPARSER::PROTEIN)
    ("follicle stimulating hormone" . SPARSER::PROTEIN)
    ("P450" . SPARSER::PROTEIN-FAMILY) ("HER2 or EGFR" . SPARSER::COLLECTION)
    ("STSs" . SPARSER::PROTEIN) ("a prognostic biomarker" . SPARSER::MOLECULE)
    ("Fas-associated protein" . SPARSER::PROTEIN) ("FADD" . SPARSER::PROTEIN)
    ("INAD" . SPARSER::PROTEIN)
    ("only one single band around 80kDa" . SPARSER::PROTEIN)
    ("around 74 kDa and 65 kDa" . SPARSER::COLLECTION)
    ("around 74 kDa" . SPARSER::PROTEIN) ("around 80kDa" . SPARSER::PROTEIN)
    ("80kDa" . SPARSER::PROTEIN) ("receptor and HER2" . SPARSER::COLLECTION)
    ("RFS" . SPARSER::PROTEIN) ("PKCζ, and PKCζ" . SPARSER::COLLECTION)
    ("ER and PR" . SPARSER::COLLECTION) ("ß-actin" . SPARSER::COLLECTION)
    ("Only one single band around 80 kDa" . SPARSER::PROTEIN)
    ("partitioning-defective (PAR)-3 and PAR-6 proteins" . SPARSER::PROTEIN)
    ("-3 and PAR-6" . SPARSER::COLLECTION)
    ("calcium or phosphatidylserine" . SPARSER::COLLECTION)
    ("esters" . SPARSER::MOLECULE) ("phorbol" . SPARSER::DRUG)
    ("PKCζ and HER2" . SPARSER::COLLECTION)
    ("estrogen or progesterone receptor" . SPARSER::COLLECTION)
    ("worse prognostic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p " . SPARSER::PROTEIN)
    ("Both TMA and western blot" . SPARSER::COLLECTION)
    ("TMA" . SPARSER::MOLECULE)
    ("important clinicopathologic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("atypical PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PKCι" . SPARSER::PROTEIN)
    ("phenylmethanesulfonyl fluoride" . SPARSER::MOLECULE)
    ("zeta)" . SPARSER::PROTEIN) ("PAR-6" . SPARSER::PROTEIN)
    ("Protein kinase" . SPARSER::PROTEIN) ("PKCζ" . SPARSER::PROTEIN)
    ("shed new light" . SPARSER::PROTEIN) ("ZSGB-BIO" . SPARSER::COLLECTION)
    ("BIO" . SPARSER::PROTEIN) ("pH" . SPARSER::PROTEIN)
    ("anti-p-AKT" . SPARSER::COLLECTION) ("MN" . SPARSER::PROTEIN)
    ("UK" . SPARSER::PROTEIN)
    ("using endogenous GAPDH and U6 snRNA" . SPARSER::COLLECTION)
    ("snRNA" . SPARSER::RNA)
    ("using M-MLV reverse transcriptase (Invitrogen, Carlsbad, CA, USA) and oligo(dT)"
     . SPARSER::COLLECTION)
    ("dT" . SPARSER::HUMAN-PROTEIN-FAMILY) ("DNAs" . SPARSER::DNA)
    ("Trizol" . SPARSER::DRUG) ("Oligonucleotides" . SPARSER::MOLECULE)
    ("pGL" . SPARSER::PROTEIN) ("Dual Luciferase" . SPARSER::PROTEIN)
    ("trypsinization" . SPARSER::PROTEIN) ("FBS (GIBCO)" . SPARSER::PROTEIN)
    ("AF" . SPARSER::PROTEIN) ("MRI" . SPARSER::PROTEIN)
    ("Human lumbar IVD" . SPARSER::PROTEIN)
    ("phosphoinositide-3kinase (PI3K) and Akt [ xref ]" . SPARSER::COLLECTION)
    ("the intervertebral disc" . SPARSER::BIO-COMPLEX)
    ("NP, and miR-21" . SPARSER::COLLECTION) ("PTEN/AKT" . SPARSER::COLLECTION)
    ("the control group or the untreated group" . SPARSER::COLLECTION)
    ("types or genders" . SPARSER::COLLECTION) ("NP" . SPARSER::PROTEIN)
    ("various etiological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IDD" . SPARSER::PROTEIN)
    ("the intervertebral disc (IVD)" . SPARSER::BIO-COMPLEX)
    ("pain" . SPARSER::PROTEIN) ("PTEN/Akt" . SPARSER::COLLECTION)
    ("disc" . SPARSER::BIO-COMPLEX) ("Tween20" . SPARSER::MOLECULE)
    ("type II" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("phosphoinositide-3kinase" . SPARSER::PROTEIN)
    ("Cyclin D1" . SPARSER::PROTEIN) ("Ly294002" . SPARSER::MOLECULE)
    ("miR-10b" . SPARSER::MOLECULE)
    ("PTEN, ABCG2 and the SP" . SPARSER::COLLECTION)
    ("mRNA or protein" . SPARSER::COLLECTION)
    ("PTEN and ABCG2" . SPARSER::COLLECTION)
    ("ABCG2 and SP" . SPARSER::COLLECTION)
    ("chronic myelogenous leukemia" . SPARSER::PROTEIN)
    ("verapamil" . SPARSER::DRUG) ("FACS" . SPARSER::PROTEIN)
    ("CP" . SPARSER::PROTEIN) ("ABCG2 and BCR-ABL" . SPARSER::COLLECTION)
    ("PI3K and Akt" . SPARSER::COLLECTION)
    ("the PI3K inhibitor LY294002 (20 µM) or the mTOR inhibitor rapamycin (100 nM)"
     . SPARSER::COLLECTION)
    ("Hoechst 33342-labeled sorted SP and non-SP fractions"
     . SPARSER::COMPONENT)
    ("SP and non-SP" . SPARSER::COLLECTION)
    ("cytometry confirmed higher fractions" . SPARSER::COMPONENT)
    ("functional ABCG2" . SPARSER::PROTEIN) ("dye" . SPARSER::MOLECULE)
    ("p-PI3K" . SPARSER::COLLECTION) ("mitoxantrone" . SPARSER::DRUG)
    ("adriamycin" . SPARSER::DRUG)
    ("both a substrate and an inhibitor" . SPARSER::COLLECTION)
    ("Imatinib" . SPARSER::DRUG) ("ABCG2 and PTEN" . SPARSER::COLLECTION)
    ("breast cancer resistance protein (BCRP)" . SPARSER::PROTEIN)
    ("BCRP" . SPARSER::PROTEIN) ("transporters" . SPARSER::PROTEIN)
    ("inhibitors (TKI)" . SPARSER::INHIBITOR)
    ("nilotinib and dasatinib" . SPARSER::COLLECTION)
    ("dasatinib" . SPARSER::DRUG) ("nilotinib" . SPARSER::DRUG)
    ("HSC" . SPARSER::PROTEIN) ("ABCG2 and the SP" . SPARSER::COLLECTION)
    ("BP" . SPARSER::PROTEIN)
    ("both the PI3K inhibitor LY294002 and the mTOR inhibitor rapamycin"
     . SPARSER::COLLECTION)
    ("imatinib" . SPARSER::DRUG) ("SP" . SPARSER::PROTEIN)
    ("ABC transporter" . SPARSER::PROTEIN)
    ("BCR-ABL fusion gene" . SPARSER::PROTEIN)
    ("ATPase activity" . SPARSER::PROTEIN) ("P-gp" . SPARSER::PROTEIN)
    ("P-glycoprotein" . SPARSER::PROTEIN)
    ("multidrug resistance" . SPARSER::PROTEIN)
    ("IgG2b" . SPARSER::BIO-COMPLEX) ("PTEN 1" . SPARSER::PROTEIN)
    ("p55" . SPARSER::PROTEIN) ("EF2" . SPARSER::PROTEIN)
    ("AO2" . SPARSER::PROTEIN) ("BCR-ABL" . SPARSER::PROTEIN)
    ("breast cancer resistance protein" . SPARSER::PROTEIN)
    ("ABCG2" . SPARSER::PROTEIN) ("member 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ATP-binding cassette" . SPARSER::PROTEIN)
    ("the unequal GOF" . SPARSER::PROTEIN)
    ("multiple CYP3A4-metabolized antineuplastic drugs" . SPARSER::DRUG)
    ("Hotspot" . SPARSER::PROTEIN)
    ("etoposide, rapamycin, elesclomol, MK-2206 and NVP-BEZ235"
     . SPARSER::COLLECTION)
    ("elesclomol" . SPARSER::DRUG) ("GSE" . SPARSER::PROTEIN)
    ("Cyp3a4" . SPARSER::PROTEIN) ("Cyp" . SPARSER::PROTEIN)
    ("p53 R248W" . SPARSER::PROTEIN) ("Line" . SPARSER::PROTEIN)
    ("the mortality-associated mutants" . SPARSER::MUTANT)
    ("rapamycin and other antineoplastic drugs ( xref )" . SPARSER::COLLECTION)
    ("etoposide, rapamycin and other antineoplastic drugs ( xref )"
     . SPARSER::COLLECTION)
    ("other antineoplastic drugs" . SPARSER::DRUG)
    ("irinotecan" . SPARSER::DRUG) ("fluorouracil" . SPARSER::DRUG)
    ("chemotherapeutic drugs" . SPARSER::DRUG) ("hydrolase" . SPARSER::PROTEIN)
    ("fell" . SPARSER::PROTEIN)
    ("p53 mutations display unequal GOF" . SPARSER::PROTEIN)
    ("group and hotspot" . SPARSER::COLLECTION)
    ("the unequal mutant GOF" . SPARSER::PROTEIN)
    ("sit" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MOMP" . SPARSER::PROTEIN)
    ("mitochondria" . SPARSER::PROTEIN) ("hot" . SPARSER::PROTEIN)
    ("several CYP3A4-metabolized chemotherapeutic drugs" . SPARSER::DRUG)
    ("hotspot" . SPARSER::PROTEIN)
    ("different types and magnitudes" . SPARSER::COLLECTION)
    ("p53-hotspot" . SPARSER::COLLECTION) ("GOF" . SPARSER::PROTEIN)
    ("OCT1" . SPARSER::PROTEIN) ("NVP-BEZ235" . SPARSER::DRUG)
    ("cytochrome p450" . SPARSER::PROTEIN-FAMILY) ("top 1" . SPARSER::PROTEIN)
    ("p13" . SPARSER::PROTEIN) ("chromosome 17" . SPARSER::PROTEIN)
    ("CYP3A4" . SPARSER::PROTEIN) ("HN" . SPARSER::PROTEIN)
    ("VL" . SPARSER::PROTEIN)
    ("their respective inhibitors" . SPARSER::INHIBITOR)
    ("wortmannin and U0126" . SPARSER::COLLECTION)
    ("wortmannin" . SPARSER::PROTEIN)
    ("a stress-responsive gene" . SPARSER::GENE)
    ("IGF-1–AKT–mTOR" . SPARSER::COLLECTION) ("-β2" . SPARSER::COLLECTION)
    ("pharmaceutical activators" . SPARSER::ACTIVATOR)
    ("AMPK heterotrimeric complexes" . SPARSER::BIO-COMPLEX)
    ("the AMPK heterotrimeric complex" . SPARSER::BIO-COMPLEX)
    ("AMPK-β2" . SPARSER::COLLECTION) ("regulatory beta-" . SPARSER::PROTEIN)
    ("a heterotrimeric complex" . SPARSER::BIO-COMPLEX)
    ("gamma-subunits" . SPARSER::COLLECTION) ("beta-" . SPARSER::PROTEIN)
    ("beta" . SPARSER::PROTEIN)
    ("p53 and other regulatory molecules" . SPARSER::COLLECTION)
    ("JNK and mTOR" . SPARSER::COLLECTION)
    ("ERK and JNK" . SPARSER::COLLECTION) ("JNK and ERK" . SPARSER::COLLECTION)
    ("AKT, ERK and JNK" . SPARSER::COLLECTION)
    ("pERK and pJNK" . SPARSER::COLLECTION)
    ("AKT and mTOR" . SPARSER::COLLECTION)
    ("pAKT (Ser473), pmTOR (Ser2448) and pP70S6K (Figure  xref A, right panel)"
     . SPARSER::COLLECTION)
    ("pAKT" . SPARSER::PROTEIN-FAMILY)
    ("phospho-AMPKα (pAMPKα) and phospho-ACC (pACC)" . SPARSER::COLLECTION)
    ("pACC" . SPARSER::PROTEIN) ("ACC" . SPARSER::PROTEIN)
    ("/mTOR" . SPARSER::COLLECTION) ("sh-β1" . SPARSER::COLLECTION)
    ("sh" . SPARSER::PROTEIN-FAMILY) ("GFP/AMPK-β1" . SPARSER::COLLECTION)
    ("β1, β2, γ1, γ2 and γ3" . SPARSER::COLLECTION)
    ("+ acute lymphoblastic leukemia (ALL)" . SPARSER::PROTEIN)
    ("chronic myelogenous leukemia (CML)" . SPARSER::PROTEIN)
    ("AICAR or metformin" . SPARSER::COLLECTION) ("CML" . SPARSER::PROTEIN)
    ("metformin" . SPARSER::DRUG) ("AICAR" . SPARSER::PROTEIN)
    ("nutrient or oxygen" . SPARSER::COLLECTION) ("NADPH" . SPARSER::PROTEIN)
    ("hypoxia and nutrient" . SPARSER::COLLECTION)
    ("AMP/ATP" . SPARSER::PROTEIN-PAIR) ("AKT/ERK" . SPARSER::COLLECTION)
    ("β1" . SPARSER::PROTEIN) ("AMPK-β1" . SPARSER::COLLECTION)
    ("the heterotimeric AMPK enzyme" . SPARSER::PROTEIN)
    ("IGF-1–" . SPARSER::PROTEIN) ("CC1" . SPARSER::PROTEIN)
    ("18 h" . SPARSER::PROTEIN) ("mitomycin C" . SPARSER::DRUG)
    ("β-Actin" . SPARSER::PROTEIN) ("P70S6K" . SPARSER::PROTEIN)
    ("ribosome" . SPARSER::BIO-COMPLEX)
    ("phosphodiesterase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ACs" . SPARSER::PROTEIN) ("AC1, AC3, and AC6" . SPARSER::COLLECTION)
    ("CaM kinase or PKA" . SPARSER::COLLECTION) ("ions" . SPARSER::MOLECULE)
    ("PKCβII and AC9" . SPARSER::COLLECTION) ("cyclases" . SPARSER::PROTEIN)
    ("signaling-competent enzymes" . SPARSER::ENZYME)
    ("the PKC isoforms or the regulation" . SPARSER::COLLECTION)
    ("fast-moving neutrophils" . SPARSER::PROTEIN)
    ("calcium and DAG" . SPARSER::COLLECTION)
    ("mTORC2, calcium, and DAG" . SPARSER::COLLECTION)
    ("hepatocytes" . SPARSER::PROTEIN) ("HL60" . SPARSER::PROTEIN)
    ("only cells lacking PKCβII" . SPARSER::PROTEIN)
    ("Neutrophils" . SPARSER::PROTEIN)
    ("GPCRs and no PKC homologue" . SPARSER::COLLECTION)
    ("GPCR" . SPARSER::PROTEIN)
    ("receptor and epidermal growth factor" . SPARSER::COLLECTION)
    ("RhoA and Rac1" . SPARSER::COLLECTION) ("paxillin" . SPARSER::PROTEIN)
    ("receptor tyrosine kinase or GPCRs" . SPARSER::COLLECTION)
    ("AC9-Venus" . SPARSER::COLLECTION)
    ("PKCβII and the transmembrane protein AC9" . SPARSER::COLLECTION)
    ("membrane-associated PKCβII" . SPARSER::PROTEIN)
    ("both PKCα (T638) and PKCβII (T641)" . SPARSER::COLLECTION)
    ("the phosphospecific antibody" . SPARSER::ANTIBODY)
    ("primary neutrophils" . SPARSER::PROTEIN)
    ("phosphospecific antibodies" . SPARSER::ANTIBODY)
    ("TM and HM+TM" . SPARSER::COLLECTION)
    ("lysed primary neutrophils" . SPARSER::PROTEIN)
    ("LCRs" . SPARSER::PROTEIN) ("LCR" . SPARSER::PROTEIN)
    ("Simple" . SPARSER::PROTEIN) ("S2, D and E" . SPARSER::COLLECTION)
    ("fMLP or LTB 4" . SPARSER::COLLECTION) ("TAXIScan" . SPARSER::PROTEIN)
    ("the upstream regulator mTORC2 and the downstream effector AC9"
     . SPARSER::COLLECTION)
    ("PKCβII" . SPARSER::PROTEIN) ("PKCβII-Venus" . SPARSER::COLLECTION)
    ("Venus" . SPARSER::PROTEIN) ("PKCα-Venus" . SPARSER::COLLECTION)
    ("cPKCs" . SPARSER::PROTEIN) ("Myo" . SPARSER::PROTEIN)
    ("EZ-TAXIScan" . SPARSER::COLLECTION) ("MLC" . SPARSER::PROTEIN)
    ("EZ" . SPARSER::PROTEIN-FAMILY)
    ("neither PKCα nor PKCβII KD" . SPARSER::COLLECTION)
    ("PKCα and PKCβII" . SPARSER::COLLECTION)
    ("a permeable ATP-competitive PKCβII/EGFR inhibitor" . SPARSER::INHIBITOR)
    ("ATP-competitive" . SPARSER::ATP) ("leukotriene" . SPARSER::MOLECULE)
    ("fMLP" . SPARSER::PROTEIN) ("Primary neutrophils" . SPARSER::PROTEIN)
    ("PKCα and PKCβI/II" . SPARSER::COLLECTION) ("cPKC" . SPARSER::PROTEIN)
    ("pan-cPKC" . SPARSER::PROTEIN-PAIR)
    ("Akt, SGK1, and PKC" . SPARSER::COLLECTION) ("DAG" . SPARSER::DAG)
    ("diacylglycerol" . SPARSER::DAG)
    ("atypical (aPKCζ and λ/ι) PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("aPKC" . SPARSER::PROTEIN) ("kinases and effectors" . SPARSER::COLLECTION)
    ("AGC" . SPARSER::PROTEIN) ("PKCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mTOR, mLST8, DEPTOR, Raptor, and PRAS40, and mTORC2"
     . SPARSER::COLLECTION)
    ("PRAS40, and mTORC2" . SPARSER::COLLECTION)
    ("mSin1, and protor1/2" . SPARSER::COLLECTION)
    ("DEPTOR" . SPARSER::PROTEIN) ("Ser/Thr" . SPARSER::COLLECTION)
    ("actively polymerizing F-actin" . SPARSER::BIO-COMPLEX)
    ("phospholipase C (PLC)" . SPARSER::PROTEIN)
    ("rapamycin (TOR)" . SPARSER::DRUG) ("TOR" . SPARSER::PROTEIN)
    ("AC" . SPARSER::PROTEIN)
    ("the heterotrimeric G protein" . SPARSER::PROTEIN)
    ("external chemoattractants" . SPARSER::PROTEIN)
    ("GPCRs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("attractant" . SPARSER::PROTEIN)
    ("chemotaxis and AC9" . SPARSER::COLLECTION)
    ("Chemotaxis" . SPARSER::PROTEIN) ("chemoattractants" . SPARSER::PROTEIN)
    ("CD11b" . SPARSER::PROTEIN) ("myosin light chain 2" . SPARSER::PROTEIN)
    ("CaM kinase" . SPARSER::HUMAN-PROTEIN-FAMILY) ("AC6" . SPARSER::PROTEIN)
    ("AC3" . SPARSER::PROTEIN) ("AC1" . SPARSER::PROTEIN)
    ("G-protein" . SPARSER::PROTEIN) ("HSP70" . SPARSER::PROTEIN)
    ("PKCδ" . SPARSER::PROTEIN) ("transmembrane protein" . SPARSER::PROTEIN)
    ("S3B" . SPARSER::PROTEIN) ("latrunculin A" . SPARSER::DRUG)
    ("myosin regulatory light chain" . SPARSER::PROTEIN)
    ("1C" . SPARSER::PROTEIN) ("S1B" . SPARSER::PROTEIN)
    ("LTB 4" . SPARSER::PROTEIN) ("GO6976" . SPARSER::DRUG)
    ("SGK1" . SPARSER::PROTEIN)
    ("N -formyl-methionyl-leucyl-phenylalanine" . SPARSER::MOLECULE)
    ("Phosphoinositide-dependent protein kinase 1" . SPARSER::PROTEIN)
    ("nPKCδ" . SPARSER::PROTEIN) ("protor1" . SPARSER::PROTEIN)
    ("mSin1" . SPARSER::PROTEIN) ("PRAS40" . SPARSER::PROTEIN)
    ("mLST8" . SPARSER::PROTEIN) ("TORC2" . SPARSER::PROTEIN)
    ("TORC1" . SPARSER::PROTEIN) ("catalytic subunit" . SPARSER::PROTEIN)
    ("phospholipase C" . SPARSER::PROTEIN)
    ("phosphatidylinositol 3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("G protein" . SPARSER::PROTEIN) ("G protein–coupled" . SPARSER::PROTEIN)
    ("PKCα" . SPARSER::PROTEIN) ("AC9" . SPARSER::PROTEIN)
    ("adenylyl cyclase" . SPARSER::PROTEIN) ("PKCβ" . SPARSER::PROTEIN)
    ("microglia" . SPARSER::PROTEIN)
    ("proteins, and DNA" . SPARSER::COLLECTION)
    ("the potent genotoxic carcinogen diethylnitrosamine" . SPARSER::MOLECULE)
    ("diethylnitrosamine" . SPARSER::MOLECULE) ("Rat" . SPARSER::PROTEIN)
    ("MMP9 and MMP2" . SPARSER::COLLECTION) ("TNP" . SPARSER::PROTEIN)
    ("AM" . SPARSER::PROTEIN) ("BAPTA" . SPARSER::MOLECULE)
    ("TNT" . SPARSER::PROTEIN)
    ("the respective target protein" . SPARSER::PROTEIN)
    ("P2X4 and P2X7" . SPARSER::COLLECTION)
    ("P2X4 or P2X7" . SPARSER::COLLECTION) ("Receptor" . SPARSER::PROTEIN)
    ("Phosphatase" . SPARSER::PHOSPHATASE)
    ("phosphatases, PHLPP1, PHLPP2, and PTEN" . SPARSER::COLLECTION)
    ("PTEN and PHLPP1 or PHLPP2" . SPARSER::COLLECTION)
    ("MMP9, MMP2, and pAkt" . SPARSER::COLLECTION)
    ("PC ( xref ) and targets PTEN" . SPARSER::COLLECTION)
    ("Bmi1, Evi1, and miR-214" . SPARSER::COLLECTION)
    ("PHLPP1 or PHLPP2 and PHLPP2" . SPARSER::COLLECTION)
    ("PHLPP2 and PHLPP2" . SPARSER::COLLECTION)
    ("MMP9, MMP2, Snail, Slug, and β-catenin" . SPARSER::COLLECTION)
    ("Slug" . SPARSER::PROTEIN) ("Snail" . SPARSER::PROTEIN)
    ("Bmi1 and miR-214" . SPARSER::COLLECTION)
    ("-deoxycytidine" . SPARSER::COLLECTION) ("Aza" . SPARSER::DRUG)
    ("deoxycytidine" . SPARSER::PROTEIN) ("aza" . SPARSER::DRUG)
    ("Evi1 and Bmi1" . SPARSER::COLLECTION)
    ("polycomb repressive complexes" . SPARSER::BIO-COMPLEX)
    ("Evi1" . SPARSER::PROTEIN) ("Evi" . SPARSER::PROTEIN)
    ("PcG" . SPARSER::PROTEIN-FAMILY) ("Polycomb" . SPARSER::PROTEIN)
    ("PTEN and 22RV1" . SPARSER::COLLECTION)
    ("mRNA and miR" . SPARSER::COLLECTION)
    ("pAkt and its downstream targets ( xref  E )" . SPARSER::COLLECTION)
    ("PTEN or PHLPP" . SPARSER::COLLECTION) ("miRs" . SPARSER::MICRO-RNA)
    ("PTEN ( xref  xref  xref ) and miR-190" . SPARSER::COLLECTION)
    ("PHLPP1 and PTEN" . SPARSER::COLLECTION)
    ("PHLPP1 and PHLPP2" . SPARSER::COLLECTION)
    ("PHLPP1 , PHLPP2 , and PTEN" . SPARSER::COLLECTION)
    ("PTEN or PHLPP1" . SPARSER::COLLECTION)
    ("PC3 and LNCaP" . SPARSER::COLLECTION)
    ("DU145 and 22RV1" . SPARSER::COLLECTION) ("versa" . SPARSER::PROTEIN)
    ("PHLPP1 or PHLPP2" . SPARSER::COLLECTION) ("RV" . SPARSER::PROTEIN)
    ("PTEN and PHLPP2" . SPARSER::COLLECTION)
    ("PHLPP2 and PTEN" . SPARSER::COLLECTION)
    ("the phosphatases required for depletion of nuclear pAkt"
     . SPARSER::PHOSPHATASE)
    ("statin" . SPARSER::MOLECULE) ("LNCaP" . SPARSER::PROTEIN)
    ("statins" . SPARSER::DRUG) ("PHLPP and PTEN" . SPARSER::COLLECTION)
    ("PC" . SPARSER::PROTEIN) ("PTEN and PHLPP1" . SPARSER::COLLECTION)
    ("PI3K and AR" . SPARSER::COLLECTION)
    ("purinergic receptors" . SPARSER::PROTEIN)
    ("Extracellular" . SPARSER::PROTEIN)
    ("PTEN, PHLPP1, and PHLPP2" . SPARSER::COLLECTION)
    ("PTEN and PHLPP" . SPARSER::COLLECTION)
    ("PHLPP, PHLPP1 and PHLPP2" . SPARSER::COLLECTION)
    ("PI3K/Akt/mammalian target of rapamycin" . SPARSER::COLLECTION)
    ("an attractive target" . SPARSER::TARGET-PROTEIN)
    ("PTEN and PHLPPs" . SPARSER::COLLECTION) ("polycomb" . SPARSER::PROTEIN)
    ("phosphatase (PHLPP)" . SPARSER::PROTEIN) ("PHLPP" . SPARSER::PROTEIN)
    ("purinergic receptor P2X7" . SPARSER::PROTEIN)
    ("or 2" . SPARSER::MOLECULE) ("CD-" . SPARSER::PROTEIN)
    ("pSG5" . SPARSER::PROTEIN) ("MMP2" . SPARSER::PROTEIN)
    ("GSK3β" . SPARSER::PROTEIN) ("Bmi1" . SPARSER::PROTEIN)
    ("MMP9" . SPARSER::PROTEIN) ("Cdk2" . SPARSER::PROTEIN)
    ("Akt2" . SPARSER::PROTEIN) ("Akt1" . SPARSER::PROTEIN)
    ("trypsin inhibitor" . SPARSER::PROTEIN)
    ("l -glutamine" . SPARSER::MOLECULE) ("P2X4" . SPARSER::PROTEIN)
    ("PC3" . SPARSER::PROTEIN) ("P2X7" . SPARSER::PROTEIN)
    ("inositol 1,4,5-trisphosphate" . SPARSER::MOLECULE)
    ("PHLPP2" . SPARSER::PROTEIN) ("PHLPP1" . SPARSER::PROTEIN)
    ("TGF-β1" . SPARSER::PROTEIN)
    ("purinergic receptor P2X4" . SPARSER::PROTEIN)
    ("leucine-rich repeat" . SPARSER::PROTEIN)
    ("phosphatase and tensin homolog" . SPARSER::PROTEIN)
    ("a dual PIK3/mTOR inhibitor" . SPARSER::INHIBITOR)
    ("pan-AKT" . SPARSER::COLLECTION) ("PIK3/mTOR" . SPARSER::COLLECTION)
    ("PKCa" . SPARSER::PROTEIN) ("mTOR/S6K" . SPARSER::COLLECTION)
    ("Prostaglandin" . SPARSER::PROTEIN)
    ("PKC and MAP kinases" . SPARSER::COLLECTION)
    ("PDK1 and SGK3" . SPARSER::COLLECTION) ("warts" . SPARSER::PROTEIN)
    ("PARP-1, BRCA2, PCNA and XRCC1" . SPARSER::COLLECTION)
    ("cyclin E1 and cyclin B1" . SPARSER::COLLECTION)
    ("PIK3CA/mTOR" . SPARSER::COLLECTION)
    ("a dual PI3K/mTOR inhibitor (BEZ-235) or a pan-Akt inhibitor (MK-2206)"
     . SPARSER::COLLECTION)
    ("pan-Akt" . SPARSER::COLLECTION) ("UNC" . SPARSER::PROTEIN)
    ("an indirect target" . SPARSER::TARGET-PROTEIN)
    ("E-cadherin and β-catenin" . SPARSER::COLLECTION)
    ("Hedgehog" . SPARSER::PROTEIN) ("EGFR and FGFR1" . SPARSER::COLLECTION)
    ("EGFR, insulin receptor, and insulin-like growth factor receptor"
     . SPARSER::COLLECTION)
    ("caveolin, and perhaps" . SPARSER::COLLECTION)
    ("IRS-1 and IRS-2" . SPARSER::COLLECTION)
    ("IR and IGF-1R" . SPARSER::COLLECTION) ("IR" . SPARSER::PROTEIN)
    ("LKB1/AMPK" . SPARSER::COLLECTION)
    ("phospho-TSC2 and phospho-GSK3α/β" . SPARSER::COLLECTION)
    ("eIF2B" . SPARSER::PROTEIN) ("GSK3 and TSC/mTOR" . SPARSER::COLLECTION)
    ("TSC/mTOR" . SPARSER::COLLECTION) ("TSC" . SPARSER::PROTEIN)
    ("insulin/insulin-like growth factor" . SPARSER::COLLECTION)
    ("insulin receptor and insulin like growth factor" . SPARSER::COLLECTION)
    ("IRS1, IRS2, and caveolin" . SPARSER::COLLECTION)
    ("caveolin" . SPARSER::PROTEIN) ("pY" . SPARSER::PROTEIN)
    ("relatively more cleaved caspase7" . SPARSER::PROTEIN)
    ("pro- and anti-apoptotic" . SPARSER::COLLECTION)
    ("pro-" . SPARSER::PROTEIN) ("pS" . SPARSER::PROTEIN)
    ("cyclins" . SPARSER::HUMAN-PROTEIN-FAMILY) ("IB" . SPARSER::PROTEIN)
    ("IA and Group IB" . SPARSER::COLLECTION) ("IA" . SPARSER::MOLECULE)
    ("Group" . SPARSER::MOLECULE)
    ("protein and phospho-protein" . SPARSER::COLLECTION)
    ("MS" . SPARSER::PROTEIN) ("E6 and E7" . SPARSER::COLLECTION)
    ("p53 and Rb" . SPARSER::COLLECTION) ("oncoproteins" . SPARSER::PROTEIN)
    ("rational targeted therapeutics" . SPARSER::THERAPEUTICS)
    ("tobacco" . SPARSER::DRUG)
    ("a dual PI3K/mTOR inhibitor" . SPARSER::INHIBITOR)
    ("PI3K/mTOR" . SPARSER::COLLECTION) ("E6/E7" . SPARSER::COLLECTION)
    ("PI3K/AKT/mTOR" . SPARSER::COLLECTION)
    ("PIK3CA and AKT" . SPARSER::COLLECTION)
    ("137 total and phosphorylated proteins" . SPARSER::PROTEIN)
    ("RPPA" . SPARSER::PROTEIN) ("PIK3" . SPARSER::PROTEIN)
    ("MAP kinases" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TSC1" . SPARSER::PROTEIN)
    ("SGK3" . SPARSER::PROTEIN) ("KU80" . SPARSER::PROTEIN)
    ("cyclin B1" . SPARSER::PROTEIN) ("cyclin E1" . SPARSER::PROTEIN)
    ("PI3" . SPARSER::PROTEIN) ("S6K" . SPARSER::PROTEIN)
    ("4EBP1" . SPARSER::PROTEIN) ("β-catenin" . SPARSER::PROTEIN)
    ("IGFBP2" . SPARSER::PROTEIN) ("IGF1R" . SPARSER::PROTEIN)
    ("FGFR1" . SPARSER::PROTEIN) ("P104" . SPARSER::PROTEIN)
    ("AKT1" . SPARSER::PROTEIN) ("IRS-2" . SPARSER::PROTEIN)
    ("IRS-1" . SPARSER::PROTEIN) ("IGF-1R" . SPARSER::PROTEIN)
    ("insulin-like growth factor receptor" . SPARSER::PROTEIN)
    ("Insulin receptor" . SPARSER::PROTEIN) ("AMPKα" . SPARSER::PROTEIN-FAMILY)
    ("fatty acid" . SPARSER::MOLECULE) ("LKB1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("2B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GSK3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("TSC2" . SPARSER::PROTEIN)
    ("GSK3α" . SPARSER::PROTEIN)
    ("insulin-like growth factor" . SPARSER::PROTEIN)
    ("IRS2" . SPARSER::PROTEIN) ("IRS1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("insulin like growth factor" . SPARSER::PROTEIN)
    ("MKK2" . SPARSER::PROTEIN) ("caspase 3" . SPARSER::PROTEIN)
    ("caspase3" . SPARSER::PROTEIN) ("caspase7" . SPARSER::PROTEIN)
    ("CHK1" . SPARSER::PROTEIN) ("cyclin D1" . SPARSER::PROTEIN)
    ("E2F" . SPARSER::PROTEIN) ("Group IB" . SPARSER::PROTEIN)
    ("Group I" . SPARSER::PROTEIN) ("MK-2206" . SPARSER::MOLECULE)
    ("BEZ-235" . SPARSER::DRUG) ("pS6" . SPARSER::PROTEIN)
    ("p110α" . SPARSER::PROTEIN) ("p16 INK4a" . SPARSER::PROTEIN)
    ("E7" . SPARSER::PROTEIN-FAMILY) ("PIK3CA" . SPARSER::PROTEIN)
    ("microbial or viral ligands" . SPARSER::LIGAND)
    ("AfaE-VIII" . SPARSER::COLLECTION) ("AfaE-VII" . SPARSER::COLLECTION)
    ("VIII" . SPARSER::PROTEIN) ("VII" . SPARSER::PROTEIN)
    ("bacterial adhesins" . SPARSER::PROTEIN)
    ("type IV collagen, DAF and CEACAMs" . SPARSER::COLLECTION)
    ("Dr and F1845" . SPARSER::COLLECTION)
    ("adhesins and invasins" . SPARSER::COLLECTION)
    ("invasins" . SPARSER::PROTEIN) ("gene and HuR" . SPARSER::COLLECTION)
    ("HuR" . SPARSER::PROTEIN) ("proteins, PDK1 and Akt" . SPARSER::COLLECTION)
    ("pPDK1 and pAkt" . SPARSER::COLLECTION)
    ("the western blot" . SPARSER::PROTEIN) ("DTNO" . SPARSER::MOLECULE)
    ("NONOate (DTNO)" . SPARSER::MOLECULE)
    ("Diethylenetriamine (DETA)" . SPARSER::DRUG)
    ("NONOate" . SPARSER::MOLECULE) ("Diethylenetriamine" . SPARSER::MOLECULE)
    ("ester" . SPARSER::MOLECULE) ("PLA" . SPARSER::PROTEIN)
    ("the bacterial ligand" . SPARSER::LIGAND)
    ("PDK1 and Akt" . SPARSER::COLLECTION)
    ("The western blot" . SPARSER::PROTEIN)
    ("The pAkt (Ser473) and pAkt (Thr308)" . SPARSER::COLLECTION)
    ("the total PDK1 and total Akt" . SPARSER::COLLECTION)
    ("phosphor-PDK1 (pPDK1) and phospho-Akt [pAkt (Ser473) and pAkt (Thr308)]"
     . SPARSER::COLLECTION)
    ("functional PTEN" . SPARSER::PROTEIN) ("adhesin" . SPARSER::PROTEIN)
    ("Homology" . SPARSER::PROTEIN) ("Tensin" . SPARSER::PROTEIN)
    ("kinases (PDK)" . SPARSER::KINASE) ("PKB or Akt" . SPARSER::COLLECTION)
    ("serine-threonine" . SPARSER::COLLECTION) ("PKB" . SPARSER::PROTEIN)
    ("PDK" . SPARSER::PROTEIN)
    ("Specificity protein 1 (Sp1) and cAMP response element-binding protein (CREB) ( xref ; xref )"
     . SPARSER::COLLECTION)
    ("cAMP response element-binding protein (CREB)"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("apoptotic neutrophils" . SPARSER::PROTEIN)
    ("neutrophils" . SPARSER::PROTEIN) ("anchor" . SPARSER::ANCHOR)
    ("gram negative bacterial adhesion proteins" . SPARSER::PROTEIN)
    ("chaperone-usher" . SPARSER::COLLECTION)
    ("usher" . SPARSER::PROTEIN-FAMILY) ("chaperone" . SPARSER::PROTEIN)
    ("adhesins" . SPARSER::PROTEIN) ("CEA" . SPARSER::PROTEIN)
    ("GPI" . SPARSER::PROTEIN)
    ("glycosylphosphatidylinositol" . SPARSER::MOLECULE)
    ("UTI" . SPARSER::PROTEIN) ("DAF or CD55" . SPARSER::COLLECTION)
    ("DAF" . SPARSER::PROTEIN) ("Dr" . SPARSER::MOLECULE)
    ("NFκB" . SPARSER::PROTEIN) ("type IV collagen" . SPARSER::PROTEIN)
    ("transcription factor Sp1" . SPARSER::PROTEIN)
    ("L-NAME" . SPARSER::MOLECULE) ("pPDK1" . SPARSER::PROTEIN)
    ("PDK1" . SPARSER::PROTEIN) ("phosphatidylinositol-3" . SPARSER::PROTEIN)
    ("Phosphoinositide 3-kinase" . SPARSER::PROTEIN)
    ("cAMP response element-binding protein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("complement regulatory protein" . SPARSER::PROTEIN)
    ("carcinoembryonic antigen" . SPARSER::PROTEIN)
    ("LY-294002" . SPARSER::PROTEIN)
    ("protein kinase B" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CD55" . SPARSER::PROTEIN)
    ("decay accelerating factor" . SPARSER::PROTEIN)
    ("lymphocytic leukemia" . SPARSER::PROTEIN)
    ("ATM, CHEK2 , and BRCA1/2" . SPARSER::COLLECTION)
    ("leukemia" . SPARSER::PROTEIN)
    ("pathological subtypes" . SPARSER::PROTEIN)
    ("ATM, BRCA1, and CHEK2" . SPARSER::COLLECTION)
    ("ATM, CHEK2 and BRCA1" . SPARSER::COLLECTION)
    ("germinal DNA" . SPARSER::DNA) ("BRCA1 and age" . SPARSER::COLLECTION)
    ("the interactive impact" . SPARSER::PROTEIN)
    ("CHEK2 or BRCA1" . SPARSER::COLLECTION)
    ("variant and gender" . SPARSER::COLLECTION)
    ("BRCA1 and ATM" . SPARSER::COLLECTION)
    ("follicular variant PTC" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("age- and gender-matched cohorts ( xref )" . SPARSER::COLLECTION)
    ("ATM and PTC" . SPARSER::COLLECTION)
    ("age- and gender-matched cohorts" . SPARSER::COLLECTION)
    ("age-" . SPARSER::PROTEIN) ("ATM-CHEK2-BRCA1" . SPARSER::COLLECTION)
    ("radiation-induced DNA" . SPARSER::DNA)
    ("ATM , BRCA1 , and CHEK2" . SPARSER::COLLECTION)
    ("a tumour suppressor gene and the rs17879961 (Ile157Thr) variant"
     . SPARSER::COLLECTION)
    ("p53 and BRCA1" . SPARSER::COLLECTION)
    ("CHEK2 and rs16941" . SPARSER::COLLECTION) ("Gly" . SPARSER::AMINO-ACID)
    ("Glu" . SPARSER::AMINO-ACID) ("Ile" . SPARSER::AMINO-ACID)
    ("Asn" . SPARSER::AMINO-ACID) ("ATM-BRCA1-CHEK2" . SPARSER::COLLECTION)
    ("polymorphic genotypes" . SPARSER::PROTEIN) ("ATM-" . SPARSER::PROTEIN)
    ("ATM and BRCA1" . SPARSER::COLLECTION)
    ("ATM, CHEK2 , and BRCA1" . SPARSER::COLLECTION)
    ("pT1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cancer 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("yeast homolog" . SPARSER::PROTEIN) ("CHEK2" . SPARSER::PROTEIN)
    ("metabolite" . SPARSER::MOLECULE)
    ("age and hormone" . SPARSER::COLLECTION) ("estrogens" . SPARSER::MOLECULE)
    ("taxane" . SPARSER::DRUG) ("anthracycline" . SPARSER::MOLECULE)
    ("functional SNP" . SPARSER::PROTEIN) ("NF" . SPARSER::PROTEIN)
    ("an ongoing cohort" . SPARSER::MOLECULE)
    ("inhibitors (AI)" . SPARSER::INHIBITOR) ("tamoxifen" . SPARSER::MOLECULE)
    ("AI" . SPARSER::PROTEIN) ("genotype and ER" . SPARSER::COLLECTION)
    ("Rank" . SPARSER::PROTEIN) ("Log" . SPARSER::PROTEIN)
    ("nodal" . SPARSER::PROTEIN) ("COX" . SPARSER::PROTEIN)
    ("aromatase" . SPARSER::PROTEIN) ("Genotype" . SPARSER::PROTEIN)
    ("Minor" . SPARSER::PROTEIN) ("prostaglandin E2" . SPARSER::MOLECULE)
    ("IGF-I" . SPARSER::PROTEIN) ("of 45" . SPARSER::PROTEIN)
    ("CI 1" . SPARSER::PROTEIN) ("HR 1" . SPARSER::PROTEIN)
    ("CYP19" . SPARSER::PROTEIN) ("HER-2" . SPARSER::PROTEIN)
    ("CYP19A1" . SPARSER::PROTEIN) ("19A" . SPARSER::PROTEIN)
    ("cytochrome P450" . SPARSER::PROTEIN-FAMILY)
    ("Cyclooxygenase 2" . SPARSER::PROTEIN) ("HR 4" . SPARSER::PROTEIN)
    ("COX-2" . SPARSER::PROTEIN) ("COX2" . SPARSER::PROTEIN)
    ("trypsinized" . SPARSER::PROTEIN) ("NaN" . SPARSER::PROTEIN)
    ("Substrate" . SPARSER::SUBSTRATE) ("methanol" . SPARSER::MOLECULE)
    ("polyacrylamide" . SPARSER::DRUG) ("sulphate" . SPARSER::MOLECULE)
    ("dodecyl" . SPARSER::MOLECULE) ("Bio-Tek" . SPARSER::PROTEIN-PAIR)
    ("VT" . SPARSER::PROTEIN) ("mixture" . SPARSER::MOLECULE)
    ("streptomycin" . SPARSER::DRUG) ("mL" . SPARSER::PROTEIN)
    ("VA" . SPARSER::PROTEIN) ("Type" . TYPE)
    ("MMP-13 or β-actin" . SPARSER::COLLECTION)
    ("a major mechanosensitive kinase" . SPARSER::KINASE)
    ("transient focal cerebral ischemia" . SPARSER::PROTEIN)
    ("MMP-13 and cell motility dependent FAK" . SPARSER::COLLECTION)
    ("subline" . SPARSER::PROTEIN) ("Prone" . SPARSER::PROTEIN-FAMILY)
    ("MMP-13 and cell motility-dependent FAK" . SPARSER::COLLECTION)
    ("MMP-13 and FAK" . SPARSER::COLLECTION)
    ("MTT and SRB" . SPARSER::COLLECTION) ("SRB" . SPARSER::PROTEIN)
    ("coumarin" . SPARSER::DRUG) ("phytochemicals" . SPARSER::DRUG)
    ("collagenases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("osthole" . SPARSER::MOLECULE) ("Osthole" . SPARSER::MOLECULE)
    ("3-(4,5-dimethylthiazol-2-yl)-2,5-diphenyltetrazolium bromide"
     . SPARSER::MOLECULE)
    ("P10" . SPARSER::PROTEIN) ("MMP-13" . SPARSER::PROTEIN)
    ("matrix metalloproteinase" . SPARSER::PROTEIN)
    ("prostatic" . SPARSER::PROTEIN) ("Olaparib" . SPARSER::DRUG)
    ("BRCA2 and RAD51" . SPARSER::COLLECTION) ("exportin" . SPARSER::PROTEIN)
    ("Tp53" . SPARSER::PROTEIN) ("-CRE" . SPARSER::COLLECTION)
    ("Kras" . SPARSER::PROTEIN) ("PDX1-CRE" . SPARSER::COLLECTION)
    ("CRE" . SPARSER::PROTEIN) ("lox" . SPARSER::PROTEIN)
    ("Brca2" . SPARSER::PROTEIN) ("Tr" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PDAC" . SPARSER::PROTEIN) ("BRCA2-RAD51" . SPARSER::COLLECTION)
    ("BRCA2-HMG20b" . SPARSER::COLLECTION)
    ("the cytokinetic regulator HMG20b" . SPARSER::PROTEIN)
    ("acetyltransferase" . SPARSER::PROTEIN) ("PCAF" . SPARSER::PROTEIN)
    ("ssDNA" . SPARSER::PROTEIN) ("ssDNA-RAD51" . SPARSER::PROTEIN-PAIR)
    ("sterile" . SPARSER::PROTEIN-FAMILY) ("BRC" . SPARSER::PROTEIN)
    ("the homologous DNA" . SPARSER::DNA)
    ("a helical nucleoprotein filament" . SPARSER::PROTEIN-FAMILY)
    ("filament" . SPARSER::PROTEIN-FAMILY) ("nucleoprotein" . SPARSER::PROTEIN)
    ("BRCA" . SPARSER::PROTEIN-FAMILY) ("Fanconi" . SPARSER::PROTEIN-FAMILY)
    ("tri" . SPARSER::PROTEIN) ("etc" . SPARSER::PROTEIN)
    ("nucleotides" . SPARSER::NUCLEOTIDE) ("PARP1" . SPARSER::PROTEIN)
    ("CRM1" . SPARSER::PROTEIN) ("DSS1" . SPARSER::PROTEIN)
    ("PDX1" . SPARSER::PROTEIN) ("F11" . SPARSER::PROTEIN)
    ("G2/M" . SPARSER::PROTEIN) ("HMG20b" . SPARSER::PROTEIN)
    ("filamin A" . SPARSER::PROTEIN) ("BubR1" . SPARSER::PROTEIN)
    ("endonuclease activity" . SPARSER::PROTEIN) ("RAD51" . SPARSER::PROTEIN)
    ("BRCA2" . SPARSER::PROTEIN) ("Pre" . SPARSER::PROTEIN)
    ("AA and MW" . SPARSER::COLLECTION) ("TM" . SPARSER::PROTEIN)
    ("YL" . SPARSER::PROTEIN) ("HRP" . SPARSER::PROTEIN)
    ("the clinically available TNFα inhibitors" . SPARSER::INHIBITOR)
    ("activated Ras and the inflammatory cytokines" . SPARSER::COLLECTION)
    ("the inflammatory cytokines" . SPARSER::PROTEIN)
    ("the angiogenic chemokines CXCL8 and CCL2" . SPARSER::COLLECTION)
    ("EGF and many other RTK ligands (e.g., VEGF, bFGF, HGF)"
     . SPARSER::COLLECTION)
    ("HGF" . SPARSER::PROTEIN) ("bFGF" . SPARSER::PROTEIN)
    ("RTK-Ras" . SPARSER::COLLECTION)
    ("oncogenic Ras G12V and TNFα (each alone)" . SPARSER::COLLECTION)
    ("TNFα, IL-1β, CXCL8 and CCL2" . SPARSER::COLLECTION)
    ("microenvironmental factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TNFα and Ras" . SPARSER::COLLECTION) ("mammary fat" . SPARSER::PROTEIN)
    ("the culture medium soluble factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ras G12V and TNFα-stimulated-WT-Ras" . SPARSER::COLLECTION)
    ("his" . SPARSER::AMINO-ACID)
    ("multiple angiogenic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CM" . SPARSER::PROTEIN) ("multi" . SPARSER::PROTEIN)
    ("angiogenic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("CAM" . SPARSER::PROTEIN) ("AP-1-mutated promoter" . SPARSER::PROMOTER)
    ("dual luciferase" . SPARSER::PROTEIN)
    ("NF-κB-luciferase" . SPARSER::COLLECTION) ("RelA" . SPARSER::PROTEIN)
    ("Erk1 and Erk2" . SPARSER::COLLECTION) ("MEK-Erk" . SPARSER::COLLECTION)
    ("Ras G12V and WT-Ras" . SPARSER::COLLECTION)
    ("TNFα and WT-Ras" . SPARSER::COLLECTION)
    ("the previous parts" . SPARSER::COMPONENT) ("parts" . SPARSER::COMPONENT)
    ("ErbB2-EGF" . SPARSER::COLLECTION)
    ("the powerful angiogenic and tumor-promoting chemokine CXCL8"
     . SPARSER::PROTEIN)
    ("TNFα or IL-1β" . SPARSER::COLLECTION)
    ("inflammatory cytokines" . SPARSER::PROTEIN)
    ("epidermal growth factor (EGF)" . SPARSER::PROTEIN)
    ("RTK" . SPARSER::PROTEIN) ("Erk" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("transfectants" . SPARSER::PROTEIN)
    ("Ras and ErbB2" . SPARSER::COLLECTION)
    ("Ras (such inhibitors are now in clinical trials, [ xref ]) as well as inhibitors"
     . SPARSER::COLLECTION)
    ("CXCL8 and CCL2" . SPARSER::COLLECTION)
    ("inflammatory chemokines" . SPARSER::PROTEIN) ("RTKs" . SPARSER::PROTEIN)
    ("Ras and p53" . SPARSER::COLLECTION)
    ("Ras and TNFα" . SPARSER::COLLECTION)
    ("MEK, NF-κB and AP-1" . SPARSER::COLLECTION)
    ("the mammary fat" . SPARSER::PROTEIN)
    ("Ras " . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TNFα and IL-1β" . SPARSER::COLLECTION)
    ("Receptor Tyrosine Kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Interleukin 1β" . SPARSER::PROTEIN)
    ("Epidermal growth factor" . SPARSER::PROTEIN)
    ("RasG12V" . SPARSER::PROTEIN) ("Erk2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Erk1" . SPARSER::PROTEIN) ("β-tubulin" . SPARSER::PROTEIN)
    ("P34" . SPARSER::PROTEIN) ("P28" . SPARSER::PROTEIN)
    ("N3" . SPARSER::PROTEIN) ("H-Ras" . SPARSER::PROTEIN)
    ("ErbB2" . SPARSER::PROTEIN) ("interleukin 1β" . SPARSER::PROTEIN)
    ("TNFα " . SPARSER::PROTEIN)
    ("receptor tyrosine kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ras-binding" . SPARSER::PROTEIN) ("CXCL8" . SPARSER::PROTEIN)
    ("maturation state and developmental stage" . SPARSER::COLLECTION)
    ("TGFβ1 and GDF15 " . SPARSER::COLLECTION)
    ("cAMP/PKA" . SPARSER::COLLECTION)
    ("an immature state" . SPARSER::BIO-STATE)
    ("mature CGNs" . SPARSER::PROTEIN)
    ("ERK1/2 and mTOR" . SPARSER::COLLECTION)
    ("LY364947, SB431542 or PP1" . SPARSER::COLLECTION)
    ("ERK and mTOR" . SPARSER::COLLECTION)
    ("post-receptor" . SPARSER::COLLECTION)
    ("long-lived proteins and cytoplasmic organelles" . SPARSER::COLLECTION)
    ("the principal negative regulator" . SPARSER::NEGATIVE-REGULATOR)
    ("long-lived proteins" . SPARSER::PROTEIN)
    ("particular Kv2.1" . SPARSER::PROTEIN)
    ("Na + and Ca 2+ channel proteins" . SPARSER::COLLECTION)
    ("Nav1.5, Cav2.2 and Cav1.2" . SPARSER::COLLECTION)
    ("lysosomal" . SPARSER::PROTEIN) ("GDF" . SPARSER::PROTEIN)
    ("neurotrophic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p-CREB" . SPARSER::COLLECTION) ("cAMP" . SPARSER::PROTEIN)
    ("GABA" . SPARSER::MOLECULE) ("Kv2.1 and CGN" . SPARSER::COLLECTION)
    ("PI3K/Akt/mTOR" . SPARSER::COLLECTION)
    ("mTOR, ERK1/2 and Akt" . SPARSER::COLLECTION)
    ("Akt, mTOR and ERK1/2" . SPARSER::COLLECTION)
    ("PP2 or LY2109761" . SPARSER::COLLECTION)
    ("TGFβR1 (ALK5) inhibitors (LY364947, SB431542 and PP1) and TGFβR1/TGFβR2 dual inhibitors (PP2 and LY2109761)"
     . SPARSER::COLLECTION)
    ("TGFβR1/TGFβR2 dual inhibitors" . SPARSER::INHIBITOR)
    ("LY364947, SB431542 and PP1" . SPARSER::COLLECTION)
    ("PP2 and LY2109761" . SPARSER::COLLECTION)
    ("heterodimer" . SPARSER::HETERODIMER) ("MAPK/ERK" . SPARSER::COLLECTION)
    ("ERK1 and ERK2" . SPARSER::COLLECTION)
    ("p-ERK1 and p-ERK2" . SPARSER::COLLECTION)
    ("LY294002 and rapamycin" . SPARSER::COLLECTION)
    ("LY294002 or rapamycin" . SPARSER::COLLECTION)
    ("p-Akt" . SPARSER::COLLECTION) ("p-mTOR" . SPARSER::COLLECTION)
    ("50 μM MG-132 (a proteasome inhibitor) or 10 μM leupeptin (a lysosome inhibitor)"
     . SPARSER::COLLECTION)
    ("the intracellular soluble proteins" . SPARSER::PROTEIN)
    ("UPS" . SPARSER::PROTEIN) ("transferrin" . SPARSER::PROTEIN)
    ("Kv2.1 and Kv2.2" . SPARSER::COLLECTION) ("-max" . SPARSER::COLLECTION)
    ("exp" . SPARSER::PROTEIN) ("rev" . SPARSER::PROTEIN)
    ("GK" . SPARSER::PROTEIN) ("held" . SPARSER::PROTEIN)
    ("n" . SPARSER::PROTEIN)
    ("FBS, DMEM and antibiotic/antimycotic" . SPARSER::COLLECTION)
    ("Sigma" . SPARSER::PROTEIN) ("DRB" . SPARSER::PROTEIN)
    ("heat-inactivated GDF15" . SPARSER::PROTEIN)
    ("Chemicals" . SPARSER::MOLECULE) ("ANOVA" . SPARSER::PROTEIN)
    ("The total and biotinylated surface proteins" . SPARSER::PROTEIN)
    ("pepstatin" . SPARSER::DRUG) ("aprotinin" . SPARSER::PROTEIN)
    ("leupeptin" . SPARSER::DRUG) ("PMSF" . SPARSER::MOLECULE)
    ("BSA" . SPARSER::PROTEIN) ("Tris" . SPARSER::MOLECULE)
    ("PBS" . SPARSER::PROTEIN) ("Santa" . SPARSER::PROTEIN)
    ("mix" . SPARSER::PROTEIN) ("Green" . SPARSER::PROTEIN)
    ("CAGCCAATGCTTGATCATATTCTT-3" . SPARSER::COLLECTION)
    ("-GGCTCTTGAAATGGACCCTTC-3" . SPARSER::COLLECTION)
    ("-GCCCTCTTGGTCCATTTCCACTTGTT-3" . SPARSER::COLLECTION)
    ("-ATTGCCGGGGTCCTGGTGATTG-3" . SPARSER::COLLECTION)
    ("Bio" . SPARSER::PROTEIN) ("Bio-Tech" . SPARSER::PROTEIN-PAIR)
    ("peroxidase" . SPARSER::PROTEIN) ("Tech" . SPARSER::PROTEIN)
    ("GAPDH" . SPARSER::PROTEIN) ("Kv2.1 or Kv2.2" . SPARSER::COLLECTION)
    ("fat" . SPARSER::PROTEIN) ("PVDF" . SPARSER::DRUG)
    ("SDS" . SPARSER::PROTEIN) ("ice" . SPARSER::PROTEIN)
    ("proteinase" . SPARSER::HUMAN-PROTEIN-FAMILY) ("NaF" . SPARSER::PROTEIN)
    ("EDTA" . SPARSER::MOLECULE) ("glycerol" . SPARSER::PROTEIN)
    ("pF" . SPARSER::PROTEIN) ("soma" . SPARSER::DRUG)
    ("internal solution" . SPARSER::MOLECULE)
    ("1 mM ATP and 0.1 mM GTP" . SPARSER::COLLECTION)
    ("an internal solution" . SPARSER::MOLECULE) ("EGTA" . SPARSER::PROTEIN)
    ("gluconate" . SPARSER::MOLECULE) ("glass" . SPARSER::MOLECULE)
    ("aminopyridine" . SPARSER::MOLECULE) ("pH " . SPARSER::PROTEIN)
    ("Hepes" . SPARSER::MOLECULE) ("NaCl" . SPARSER::PROTEIN)
    ("Patch-clamp" . SPARSER::COLLECTION) ("Patch" . SPARSER::PROTEIN)
    ("cytosine" . SPARSER::NUCLEOBASE) ("antibiotic" . SPARSER::DRUG)
    ("KCl" . SPARSER::MOLECULE) ("-lysine" . SPARSER::COLLECTION)
    ("immature CGNs" . SPARSER::PROTEIN)
    ("axonal elongation" . SPARSER::PROTEIN) ("striatum" . SPARSER::PROTEIN)
    ("a novel cardioprotective cytokine" . SPARSER::PROTEIN)
    ("Akt/mTOR" . SPARSER::COLLECTION) ("CGN" . SPARSER::PROTEIN)
    ("Akt and mTOR" . SPARSER::COLLECTION) ("CGNs" . SPARSER::PROTEIN)
    ("TGFβ 1" . SPARSER::PROTEIN) ("protein kinase A" . SPARSER::PROTEIN)
    ("MEK kinase 1" . SPARSER::PROTEIN) ("MEKK1" . SPARSER::PROTEIN)
    ("Smad2" . SPARSER::PROTEIN) ("R-Smad" . SPARSER::PROTEIN-FAMILY)
    ("ERK1/2 " . SPARSER::HUMAN-PROTEIN-FAMILY) ("Kir2.1" . SPARSER::PROTEIN)
    ("Cav1.2" . SPARSER::PROTEIN) ("Cav2.2" . SPARSER::PROTEIN)
    ("Nav1" . SPARSER::PROTEIN) ("Na +" . SPARSER::MOLECULE)
    ("Kv4.2" . SPARSER::PROTEIN) ("Kv2.1 " . SPARSER::PROTEIN)
    ("LY2109761" . SPARSER::DRUG) ("ALK5" . SPARSER::PROTEIN)
    ("p-ERK2" . SPARSER::PROTEIN) ("p-ERK1" . SPARSER::PROTEIN)
    ("MG-132" . SPARSER::DRUG) ("GDF15 " . SPARSER::PROTEIN)
    ("actinomycin D" . SPARSER::MOLECULE) ("m 1" . SPARSER::MOLECULE)
    ("LY364947" . SPARSER::DRUG) ("and 1 " . SPARSER::PROTEIN)
    ("cyclophilin D" . SPARSER::PROTEIN)
    ("insulin receptor" . SPARSER::PROTEIN) ("Kv2.2" . SPARSER::PROTEIN)
    ("P40)" . SPARSER::PROTEIN) ("neurotrophic factor" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TGFβs" . SPARSER::HUMAN-PROTEIN-FAMILY) ("MIC-1" . SPARSER::PROTEIN)
    ("TGFβR" . SPARSER::PROTEIN)
    ("extracellular-signal-regulated kinase" . SPARSER::PROTEIN)
    ("Kv2.1" . SPARSER::PROTEIN) ("delayed-rectifier" . SPARSER::PROTEIN)
    ("growth/differentiation factor 15" . SPARSER::PROTEIN)
    ("GDF15" . SPARSER::PROTEIN) ("ionophore" . SPARSER::MOLECULE)
    ("clioquinol" . SPARSER::DRUG) ("synthetase" . SPARSER::PROTEIN)
    ("renal Nrf2 and its downstream antioxidants" . SPARSER::COLLECTION)
    ("Nrf2 and its downstream antioxidants" . SPARSER::COLLECTION)
    ("renal Nrf2" . SPARSER::PROTEIN) ("whose glucose" . SPARSER::PROTEIN)
    ("Nrf2 and its downstream antioxidant" . SPARSER::COLLECTION)
    ("CTGF and PAI-1" . SPARSER::COLLECTION) ("GSH" . SPARSER::DRUG)
    ("glutathione" . SPARSER::DRUG)
    ("an essential component" . SPARSER::COMPONENT) ("red" . SPARSER::PROTEIN)
    ("glycogen" . SPARSER::PROTEIN) ("macromolecules" . SPARSER::MOLECULE)
    ("carbohydrate" . SPARSER::MOLECULE) ("esterase" . SPARSER::PROTEIN)
    ("Chloroacetate" . SPARSER::MOLECULE) ("AS" . SPARSER::PROTEIN)
    ("Naphthol" . SPARSER::MOLECULE) ("NT" . SPARSER::PROTEIN)
    ("HNE" . SPARSER::PROTEIN)
    ("their nuclear and cytosol proteins" . SPARSER::COLLECTION)
    ("Nrf2 and HO-1" . SPARSER::COLLECTION)
    ("Nrf2 and its effector HO-1" . SPARSER::COLLECTION)
    ("HG or Pal" . SPARSER::COLLECTION)
    ("PAI-1 and CTGF" . SPARSER::COLLECTION)
    ("PAI-1, CTGF and Nrf2" . SPARSER::COLLECTION) ("CTGF" . SPARSER::PROTEIN)
    ("ethylenediamine (TPEN)" . SPARSER::DRUG)
    ("MLD-STZ" . SPARSER::COLLECTION) ("ethylenediamine" . SPARSER::DRUG)
    ("MLD" . SPARSER::PROTEIN) ("sulforaphane (SFN)" . SPARSER::DRUG)
    ("diabetic proteinuria" . SPARSER::PROTEIN)
    ("proteinuria" . SPARSER::PROTEIN) ("sulforaphane" . SPARSER::PROTEIN)
    ("Nrf2-KO" . SPARSER::COLLECTION) ("ROS or RNS" . SPARSER::COLLECTION)
    ("the well-studied Nrf2 target genes" . SPARSER::GENE)
    ("SOD" . SPARSER::PROTEIN) ("oxygenase" . SPARSER::PROTEIN)
    ("heme" . SPARSER::PROTEIN) ("reactive oxygen" . SPARSER::MOLECULE)
    ("at least other components" . SPARSER::COMPONENT)
    ("STZ" . SPARSER::PROTEIN) ("streptozotocin" . SPARSER::DRUG)
    ("metallothionein (MT)" . SPARSER::PROTEIN) ("MT" . SPARSER::PROTEIN)
    ("metallothionein" . SPARSER::PROTEIN)
    ("Akt and GSK-3β" . SPARSER::COLLECTION) ("Fyn" . SPARSER::PROTEIN)
    ("mediators, connective tissue growth factor and PAI-1"
     . SPARSER::COLLECTION)
    ("TPEN" . SPARSER::DRUG) ("chelator" . SPARSER::MOLECULE)
    ("glucose (HG)" . SPARSER::MOLECULE) ("streptozotocins" . SPARSER::DRUG)
    ("Pal" . SPARSER::PROTEIN) ("palmitate" . SPARSER::PROTEIN)
    ("HG" . SPARSER::MOLECULE) ("γ-glutamyl" . SPARSER::MOLECULE)
    ("Keap1" . SPARSER::PROTEIN) ("64 kD" . SPARSER::PROTEIN)
    ("3-NT" . SPARSER::PROTEIN) ("plasminogen activator" . SPARSER::PROTEIN)
    ("SOD1" . SPARSER::PROTEIN)
    ("transforming growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ICAM-1" . SPARSER::PROTEIN) ("adhesion molecule" . SPARSER::PROTEIN)
    ("F3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Type 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("serum albumin" . SPARSER::PROTEIN) ("HK 11" . SPARSER::PROTEIN)
    ("HO-1" . SPARSER::PROTEIN) ("NQO-1" . SPARSER::PROTEIN)
    ("quinone oxidoreductase-1" . SPARSER::PROTEIN)
    ("NAD(P)H" . SPARSER::MOLECULE)
    ("nuclear factor-erythroid 2-related factor 2" . SPARSER::PROTEIN)
    ("GSK-3β" . SPARSER::PROTEIN) ("PAI-1" . SPARSER::PROTEIN)
    ("connective tissue growth factor" . SPARSER::PROTEIN)
    ("HK11" . SPARSER::PROTEIN) ("Nrf2" . SPARSER::PROTEIN)
    ("Nuclear factor-erythroid 2-related factor 2" . SPARSER::PROTEIN)
    ("myc" . SPARSER::PROTEIN) ("miR" . SPARSER::MICRO-RNA)
    ("effectors, Bax and Bak" . SPARSER::COLLECTION)
    ("Bax and Bak" . SPARSER::COLLECTION)
    ("Bim, Noxa and Puma" . SPARSER::COLLECTION)
    ("Puma" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Noxa" . SPARSER::PROTEIN)
    ("essential regulators" . SPARSER::REGULATOR)
    ("Bcl-2, Bcl-XL and Bcl-W" . SPARSER::COLLECTION) ("BH" . SPARSER::PROTEIN)
    ("only one gene" . SPARSER::PROTEIN)
    ("PD98059 and PI3K" . SPARSER::COLLECTION) ("p-AKT" . SPARSER::COLLECTION)
    ("AKT and ERK" . SPARSER::COLLECTION) ("p44/p42" . SPARSER::COLLECTION)
    ("the prosurvival proteins Bcl-2" . SPARSER::PROTEIN)
    ("puma, Bax and Bak" . SPARSER::COLLECTION) ("Bak" . SPARSER::PROTEIN)
    ("puma" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p" . SPARSER::PROTEIN)
    ("-UTR" . SPARSER::COLLECTION) ("ORF" . SPARSER::PROTEIN)
    ("UTR" . SPARSER::PROTEIN)
    ("growth factors and cytokines" . SPARSER::COLLECTION)
    ("coreceptors" . SPARSER::PROTEIN) ("HSPGs" . SPARSER::PROTEIN)
    ("proteoglycans" . SPARSER::PROTEIN) ("p-ERK" . SPARSER::COLLECTION)
    ("Bim" . SPARSER::PROTEIN) ("NTC" . SPARSER::PROTEIN)
    ("Sh1 and Sh2" . SPARSER::COLLECTION) ("Sh1" . SPARSER::PROTEIN)
    ("Sh" . SPARSER::PROTEIN-FAMILY) ("FoxO3a" . SPARSER::PROTEIN)
    ("c-Myc" . SPARSER::PROTEIN) ("Bcl-W" . SPARSER::PROTEIN)
    ("Bcl-XL" . SPARSER::PROTEIN) ("p42" . SPARSER::PROTEIN)
    ("Bcl-xL" . SPARSER::PROTEIN) ("Bcl-2" . SPARSER::PROTEIN)
    ("BCL-2" . SPARSER::PROTEIN) ("Monoclonal antibody" . SPARSER::DRUG)
    ("Q-VD-Oph" . SPARSER::DRUG) ("loss of heterozygosity" . SPARSER::PROTEIN)
    ("HB-EGF" . SPARSER::PROTEIN) ("HSulf-1" . SPARSER::PROTEIN)
    ("Sulfatase1" . SPARSER::PROTEIN)
    ("VEGF and other angiogenic factors" . SPARSER::COLLECTION)
    ("an extrinsic and VEGF-independent angiogenic factor"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("other angiogenic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("VASH2 and the mutated type p53" . SPARSER::COLLECTION)
    ("aflatoxin" . SPARSER::MOLECULE) ("NER" . SPARSER::PROTEIN)
    ("VASH2 and HepG2-shcont" . SPARSER::COLLECTION)
    ("VASH2 and HepG2-EGFP" . SPARSER::COLLECTION)
    ("RNA and protein" . SPARSER::COLLECTION)
    ("p53-Bax-caspase-3" . SPARSER::COLLECTION)
    ("HepG2-VASH2 and HepG2-EGFP" . SPARSER::COLLECTION)
    ("EGFP" . SPARSER::PROTEIN) ("reagent" . SPARSER::MOLECULE)
    ("the pro-apoptotic protein Bax" . SPARSER::PROTEIN)
    ("chemotherapeutic drug" . SPARSER::DRUG)
    ("exogenous VASH1" . SPARSER::PROTEIN)
    ("VEGF and FGF-2" . SPARSER::COLLECTION)
    ("VASH1 and VASH2" . SPARSER::COLLECTION) ("VASH" . SPARSER::PROTEIN)
    ("Bax" . SPARSER::PROTEIN) ("CDDP" . SPARSER::DRUG)
    ("HCC" . SPARSER::PROTEIN) ("six 3" . SPARSER::PROTEIN)
    ("CCK-8" . SPARSER::MOLECULE) ("FGF-2" . SPARSER::PROTEIN)
    ("VASH1" . SPARSER::PROTEIN) ("vasohibin 1" . SPARSER::PROTEIN)
    ("Vasohibin 2" . SPARSER::PROTEIN) ("BCL2" . SPARSER::PROTEIN)
    ("VASH2" . SPARSER::PROTEIN) ("vasohibin 2" . SPARSER::PROTEIN)
    ("integrins and their ligands" . SPARSER::COLLECTION)
    ("-AKT" . SPARSER::COLLECTION)
    ("arginyl-glycyl-aspartic acid" . SPARSER::COLLECTION)
    ("integrin α2β1-associated signaling molecules" . SPARSER::MOLECULE)
    ("mouse anti-human integrin α2 mAb (P1E6) and mouse anti-human integrin β1 mAb (6S6)"
     . SPARSER::COLLECTION)
    ("antibodies, mouse anti-human integrin α2 mAb (P1E6) and mouse anti-human integrin β1 mAb (6S6)"
     . SPARSER::COLLECTION)
    ("bidirectional transducers" . SPARSER::PROTEIN)
    ("either a promoter or an inhibitor of carcinogenesis"
     . SPARSER::COLLECTION)
    ("αvβ3, and integrin" . SPARSER::COLLECTION) ("av" . SPARSER::MOLECULE)
    ("TGFBI, RGD-CAP, and MP78/70" . SPARSER::COLLECTION)
    ("TGFBI" . SPARSER::PROTEIN) ("TGF" . SPARSER::PROTEIN)
    ("a considerable impact" . SPARSER::PROTEIN) ("Multi" . SPARSER::PROTEIN)
    ("past" . SPARSER::PROTEIN) ("Full-length" . SPARSER::PROTEIN)
    ("Texas red" . SPARSER::DRUG) ("chemo-attractant" . SPARSER::PROTEIN)
    ("phosphoinositide 3-kinase" . SPARSER::PROTEIN)
    ("LY294002" . SPARSER::MOLECULE) ("E6" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("β5" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("a3" . SPARSER::HUMAN-PROTEIN-FAMILY) ("fasciclin-1" . SPARSER::PROTEIN)
    ("MP78" . SPARSER::PROTEIN)
    ("Transforming growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FAS1" . SPARSER::PROTEIN) ("ig-h3" . SPARSER::PROTEIN)
    ("TBP and TBP-associated factors" . SPARSER::COLLECTION)
    ("dual promoters" . SPARSER::PROMOTER)
    ("TBP-associated factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p53, and TLP" . SPARSER::COLLECTION) ("TBP-p53" . SPARSER::COLLECTION)
    ("TBP and TLP" . SPARSER::COLLECTION)
    ("the typical mutant TLP" . SPARSER::PROTEIN)
    ("partial" . SPARSER::PROTEIN) ("obvious mutants" . SPARSER::MUTANT)
    ("TFIID, TBP and TFIIH" . SPARSER::COLLECTION) ("TFIIH" . SPARSER::PROTEIN)
    ("the most popular cellular regulators" . SPARSER::REGULATOR)
    ("100 th Phe (F100) of TLP" . SPARSER::PROTEIN)
    ("Phe" . SPARSER::AMINO-ACID)
    ("whose corresponding AAs" . SPARSER::PROTEIN) ("AAs" . SPARSER::PROTEIN)
    ("TLPs" . SPARSER::PROTEIN) ("p53-TLP" . SPARSER::COLLECTION)
    ("mut" . SPARSER::PROTEIN) ("ctr" . SPARSER::PROTEIN)
    ("p53 or #22.23" . SPARSER::COLLECTION)
    ("the most typical mutant" . SPARSER::MUTANT)
    ("a typical mutant" . SPARSER::MUTANT)
    ("p53 and #152" . SPARSER::COLLECTION)
    ("siRNA and representative p53 mutants" . SPARSER::COLLECTION)
    ("representative p53 mutants" . SPARSER::MUTANT)
    ("the most severe mutant" . SPARSER::MUTANT) ("TD" . SPARSER::PROTEIN)
    ("a severe mutant" . SPARSER::MUTANT) ("TLP-p53" . SPARSER::COLLECTION)
    ("GST-TLP:FH-p53" . SPARSER::BIO-COMPLEX) ("FH-p53" . SPARSER::COLLECTION)
    ("FH-TLP" . SPARSER::COLLECTION) ("FH-TBP" . SPARSER::COLLECTION)
    ("FH" . SPARSER::PROTEIN) ("GST-TLP" . SPARSER::COLLECTION)
    ("GST-TBP" . SPARSER::COLLECTION) ("TLP and TBP" . SPARSER::COLLECTION)
    ("TLP as well as p53" . SPARSER::COLLECTION)
    ("Genotoxin" . SPARSER::MOLECULE)
    ("cyclin G2 , TAp63 , wee1 , PCNA , and NF1" . SPARSER::COLLECTION)
    ("PCNA" . SPARSER::PROTEIN) ("TFIIA" . SPARSER::PROTEIN)
    ("TRF3, and TRF4" . SPARSER::COLLECTION) ("TLP/TRF2" . SPARSER::COLLECTION)
    ("TBP and multiple TBP-associated factors" . SPARSER::COLLECTION)
    ("multiple TBP-associated factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TFIID" . SPARSER::PROTEIN)
    ("a TATA-box-containing downstream promoter and a TATA-less upstream promoter xref"
     . SPARSER::COLLECTION)
    ("p53, Sp1 and MyoD" . SPARSER::COLLECTION) ("MyoD" . SPARSER::PROTEIN)
    ("a representative p53-responsive gene" . SPARSER::PROTEIN)
    ("Cdk" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TAp63 and p73" . SPARSER::COLLECTION) ("Chk1/Chk2" . SPARSER::COLLECTION)
    ("ATM/ATR" . SPARSER::COLLECTION) ("homotetramer" . SPARSER::HOMOTETRAMER)
    ("ATR" . SPARSER::PROTEIN) ("ATM" . SPARSER::PROTEIN)
    ("genotoxin" . SPARSER::MOLECULE)
    ("the most typical tumor suppressors" . SPARSER::SUPPRESSOR)
    ("suppressors" . SPARSER::SUPPRESSOR) ("etoposide" . SPARSER::DRUG)
    ("TAD1" . SPARSER::PROTEIN) ("TLP and p53" . SPARSER::COLLECTION)
    ("TBP and p53" . SPARSER::COLLECTION) ("TBP" . SPARSER::PROTEIN)
    ("protein (TLP)" . SPARSER::PROTEIN) ("TLP" . SPARSER::PROTEIN)
    ("P/CAF" . SPARSER::PROTEIN) ("p21 proteins" . SPARSER::PROTEIN)
    ("Reverse Transcriptase" . SPARSER::PROTEIN)
    ("glyceraldehyde-3-phosphate dehydrogenase" . SPARSER::PROTEIN)
    ("M2" . SPARSER::MOLECULE) ("Dual-Luciferase" . SPARSER::PROTEIN)
    ("pG5" . SPARSER::PROTEIN) ("VP16" . SPARSER::DRUG)
    ("GAL4" . SPARSER::PROTEIN) ("dimethyl sulfoxide" . SPARSER::MOLECULE)
    ("NF1" . SPARSER::PROTEIN) ("wee1" . SPARSER::PROTEIN)
    ("cyclin G2" . SPARSER::PROTEIN) ("TRF4" . SPARSER::PROTEIN)
    ("TRF3" . SPARSER::PROTEIN) ("TRF2" . SPARSER::PROTEIN)
    ("TRF1" . SPARSER::PROTEIN) ("factor 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Transcription factor" . SPARSER::PROTEIN)
    ("RNA polymerase II" . SPARSER::PROTEIN) ("Sp1" . SPARSER::PROTEIN)
    ("Waf1/Cip1" . SPARSER::PROTEIN) ("p73" . SPARSER::PROTEIN)
    ("TAp63" . SPARSER::PROTEIN) ("Chk2" . SPARSER::PROTEIN)
    ("Chk1" . SPARSER::PROTEIN) ("MDM2" . SPARSER::PROTEIN)
    ("transcriptional regulator" . SPARSER::PROTEIN-FAMILY)
    ("domain 1" . SPARSER::PROTEIN) ("TBP-like" . SPARSER::PROTEIN)
    ("the mutL homolog 1 (MLH1) or mutS homolog 2 (MSH2)"
     . SPARSER::COLLECTION)
    ("defective MMR" . SPARSER::PROTEIN) ("MMR" . SPARSER::PROTEIN)
    ("sporadic CRC" . SPARSER::PROTEIN) ("TP53 and KRAS" . SPARSER::COLLECTION)
    ("other pathological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("The gold standard prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("several clinicopathological factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("NOS" . SPARSER::PROTEIN) ("MSS" . SPARSER::PROTEIN)
    ("alcohol" . SPARSER::DRUG) ("Alcohol" . SPARSER::DRUG)
    ("Age" . SPARSER::PROTEIN) ("CI " . SPARSER::PROTEIN)
    ("BRAFV" . SPARSER::PROTEIN) ("CRCs" . SPARSER::PROTEIN)
    ("sociodemographic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("KRAS or BRAF" . SPARSER::COLLECTION)
    ("KRAS and BRAF" . SPARSER::COLLECTION)
    ("raf" . SPARSER::HUMAN-PROTEIN-FAMILY) ("mutL" . SPARSER::PROTEIN)
    ("MLH1" . SPARSER::PROTEIN) ("CpG" . SPARSER::PROTEIN)
    ("MSI" . SPARSER::PROTEIN) ("TNM" . SPARSER::MOLECULE)
    ("met" . SPARSER::PROTEIN)
    ("proto-oncogene (BRAF)" . SPARSER::PROTO-ONCOGENE)
    ("CRC" . SPARSER::PROTEIN) ("MSH2" . SPARSER::PROTEIN)
    ("mutS homolog 2" . SPARSER::PROTEIN) ("b-raf" . SPARSER::PROTEIN)
    ("epidermal growth factor receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ki-ras" . SPARSER::PROTEIN) ("P53" . SPARSER::PROTEIN)
    ("homolog 1" . SPARSER::PROTEIN)
    ("proto-oncogene" . SPARSER::PROTO-ONCOGENE)
    ("K-ras and HSV1-tk" . SPARSER::COLLECTION)
    ("chemokines" . SPARSER::PROTEIN)
    ("a highly conservative gene" . SPARSER::GENE)
    ("K-ras and goat" . SPARSER::COLLECTION) ("TRE" . SPARSER::PROTEIN)
    ("mismatch" . SPARSER::PROTEIN)
    ("dihydrofolate reductase (DHFR) and epidermal growth factor (EGF) receptor genes"
     . SPARSER::COLLECTION)
    ("DHFR" . SPARSER::PROTEIN) ("CCAAT" . SPARSER::PROTEIN)
    ("MEF" . SPARSER::PROTEIN) ("FDG" . SPARSER::PROTEIN)
    ("telomerase" . SPARSER::PROTEIN) ("methylcellulose" . SPARSER::DRUG)
    ("/log2" . SPARSER::COLLECTION) ("PFLP" . SPARSER::PROTEIN)
    ("commercial antibody" . SPARSER::ANTIBODY) ("MTT" . SPARSER::MOLECULE)
    ("GCV" . SPARSER::DRUG) ("Ganciclovir" . SPARSER::DRUG)
    ("loxP" . SPARSER::PROTEIN) ("Only 279 bp fragment" . SPARSER::FRAGMENT)
    ("Lox-hK-ras" . SPARSER::COLLECTION) ("Lox" . SPARSER::PROTEIN)
    ("bright" . SPARSER::PROTEIN) ("recombinase" . SPARSER::PROTEIN)
    ("Cre-LoxP" . SPARSER::PROTEIN-PAIR) ("LSL-hK-ras" . SPARSER::COLLECTION)
    ("one-step" . SPARSER::PROTEIN) ("stop" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("neomycin" . SPARSER::DRUG) ("LSL" . SPARSER::PROTEIN)
    ("Stop" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("oncogene and HSV1-tk" . SPARSER::COLLECTION)
    ("genesis" . SPARSER::PROTEIN) ("pre" . SPARSER::PROTEIN)
    ("PET" . SPARSER::PROTEIN) ("analog" . SPARSER::ANALOG)
    ("thymidine" . SPARSER::PROTEIN)
    ("K-ras oncogene (hK-ras G12D thereafter) and a herpes simplex viral thymidine kinase HSV1-tk gene"
     . SPARSER::COLLECTION)
    ("a herpes simplex viral thymidine kinase HSV1-tk gene" . SPARSER::PROTEIN)
    ("valine, arginine, aspartic acid, or cysteine" . SPARSER::COLLECTION)
    ("cysteine" . SPARSER::AMINO-ACID) ("State" . SPARSER::BIO-STATE)
    ("art" . SPARSER::HUMAN-PROTEIN-FAMILY) ("mRNAs" . SPARSER::PROTEIN)
    ("Cre" . SPARSER::PROTEIN)
    ("a herpes simplex viral thymidine kinase (HSV1-tk) reporter genes"
     . SPARSER::GENE)
    ("hK-ras" . SPARSER::COLLECTION) ("transgene" . SPARSER::PROTEIN)
    ("ras" . SPARSER::HUMAN-PROTEIN-FAMILY) ("co-factor" . SPARSER::MOLECULE)
    ("c-K-ras" . SPARSER::PROTEIN)
    ("dihydrofolate reductase" . SPARSER::PROTEIN)
    ("D-glucose" . SPARSER::MOLECULE) ("P3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("aspartic acid" . SPARSER::AMINO-ACID)
    ("thymidine kinase" . SPARSER::PROTEIN) ("K-ras" . SPARSER::PROTEIN)
    ("pan- or class I-selective HDACis" . SPARSER::COLLECTION)
    ("pan-" . SPARSER::PROTEIN) ("epigenomic regulators" . SPARSER::REGULATOR)
    ("hemoglobin" . SPARSER::PROTEIN) ("inducers" . SPARSER::MOLECULE)
    ("chemical" . SPARSER::MOLECULE) ("-NuRD" . SPARSER::COLLECTION)
    ("se" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("factors, and pERK" . SPARSER::COLLECTION) ("NuRD" . SPARSER::PROTEIN)
    ("contained more (2-fold) p21 and less (5- to 10-fold) p27"
     . SPARSER::COLLECTION)
    ("Dai" . SPARSER::PROTEIN) ("Erythroid" . SPARSER::PROTEIN)
    ("p21 and p27" . SPARSER::COLLECTION) ("SCF" . SPARSER::PROTEIN)
    ("cKIT" . SPARSER::PROTEIN) ("GATA1, HDAC5 and EKLF" . SPARSER::COLLECTION)
    ("HDAC5 and EKLF" . SPARSER::COLLECTION)
    ("HDAC1-NuRD ( xref ; xref ) and GATA1" . SPARSER::COLLECTION)
    ("HDAC1-NuRD" . SPARSER::COLLECTION)
    ("HDAC1, HDAC4 and HDAC5" . SPARSER::COLLECTION) ("ID" . SPARSER::PROTEIN)
    ("both β-globin (modestly) and γ-globin (robust) mRNA"
     . SPARSER::COLLECTION)
    ("SAHA" . SPARSER::DRUG) ("HDACis" . SPARSER::MOLECULE)
    ("the NuRSERY complex and retention of GATA1 and EKLF in the nuclei"
     . SPARSER::COLLECTION)
    ("HDAC1 and HDAC4" . SPARSER::COLLECTION) ("Wortmannin" . SPARSER::PROTEIN)
    ("HDAC5, GATA1, EKLF and ERK" . SPARSER::COLLECTION)
    ("antibodies and GR" . SPARSER::COLLECTION)
    ("GATA1, EKLF and HDAC5" . SPARSER::COLLECTION)
    ("EKLF and HDAC5" . SPARSER::COLLECTION) ("IPs" . SPARSER::PROTEIN)
    ("GATA1 and HDAC5" . SPARSER::COLLECTION)
    ("HDAC5 and pERK" . SPARSER::COLLECTION)
    ("GATA1, EKLF and pERK" . SPARSER::COLLECTION) ("GR" . SPARSER::PROTEIN)
    ("HDAC4 and HDAC5" . SPARSER::COLLECTION)
    ("HDAC1 antibodies ( xref ) and HDAC1" . SPARSER::COLLECTION)
    ("HDAC1 and GATA1" . SPARSER::COLLECTION)
    ("HDAC5 and HDAC4" . SPARSER::COLLECTION)
    ("HDAC1, HDAC2 and GATA1" . SPARSER::COLLECTION)
    ("HDAC4 and EKLF" . SPARSER::COLLECTION)
    ("HDAC2 and GATA1" . SPARSER::COLLECTION)
    ("HDAC1, HDAC3, HDAC5 and EKLF" . SPARSER::COLLECTION)
    ("EKLF and GATA1" . SPARSER::COLLECTION) ("fractions" . SPARSER::COMPONENT)
    ("Nuclear" . SPARSER::PROTEIN) ("CMK and CMY" . SPARSER::COLLECTION)
    ("CMK" . SPARSER::PROTEIN) ("HEL" . SPARSER::PROTEIN)
    ("HDAC5-IP" . SPARSER::COLLECTION)
    ("anti-HDAC1 or anti-HDAC5" . SPARSER::COLLECTION)
    ("-acetyl" . SPARSER::MOLECULE) ("IP" . SPARSER::PROTEIN)
    ("acetyl" . SPARSER::MOLECULE) ("MK" . SPARSER::PROTEIN)
    ("HDAC1, HDAC2, HDAC3 and HDAC5" . SPARSER::COLLECTION)
    ("CD36 and CD235a" . SPARSER::COLLECTION) ("HEMA" . SPARSER::PROTEIN)
    ("GATA1 and EKLF" . SPARSER::COLLECTION)
    ("GATA1 and its NuRD partner HDAC1" . SPARSER::COLLECTION)
    ("class I and class" . SPARSER::COLLECTION) ("EPO" . SPARSER::PROTEIN)
    ("erythropoietin" . SPARSER::PROTEIN)
    ("murine erythroleukemic cells (MEL) HDAC5 and GATA1 form" . SPARSER::FORM)
    ("HDAC5 and GATA1" . SPARSER::COLLECTION)
    ("hexamethylenebisacetamide" . SPARSER::DRUG) ("MEL" . SPARSER::PROTEIN)
    ("NCoR" . SPARSER::PROTEIN) ("repressor" . SPARSER::REPRESSOR)
    ("HDAC1 and HDAC2" . SPARSER::COLLECTION)
    ("EKLF and the Mi2β subunit" . SPARSER::COLLECTION)
    ("HDAC1 and the erythroid-specific transcription factor GATA1"
     . SPARSER::COLLECTION)
    ("PKC and ERK" . SPARSER::COLLECTION)
    ("HDAC1, HDAC2, HDAC3 and HDAC8" . SPARSER::COLLECTION)
    ("HDAC4, HDAC5, HDAC7 and HDAC9" . SPARSER::COLLECTION)
    ("HDAC6 and HDAC10" . SPARSER::COLLECTION)
    ("sirtuins" . SPARSER::PROTEIN-FAMILY) ("IIb" . SPARSER::DRUG)
    ("histones and other proteins ( xref ; xref ; xref )"
     . SPARSER::COLLECTION)
    ("fate" . SPARSER::PROTEIN) ("deacetylases" . SPARSER::PROTEIN)
    ("Histone" . SPARSER::PROTEIN) ("globin" . SPARSER::PROTEIN)
    ("HDACi" . SPARSER::MOLECULE) ("HDAC" . SPARSER::PROTEIN)
    ("chaperones" . SPARSER::PROTEIN)
    ("HDAC5, GATA1 and EKLF" . SPARSER::COLLECTION)
    ("HDAC5, GATA1, EKLF and pERK" . SPARSER::COLLECTION)
    ("pERK" . SPARSER::PROTEIN) ("EKLF" . SPARSER::PROTEIN)
    ("HDAC1, HDAC2 and HDAC3" . SPARSER::COLLECTION)
    ("erythroid" . SPARSER::PROTEIN)
    ("class I (HDAC1, HDAC2, HDAC3) and class IIa (HDAC4, HDAC5) HDACs"
     . SPARSER::COLLECTION)
    ("HDACs" . SPARSER::PROTEIN) ("class I" . SPARSER::PROTEIN)
    ("Caspase 3" . SPARSER::PROTEIN) ("p27" . SPARSER::PROTEIN)
    ("Caspase-3" . SPARSER::PROTEIN) ("β-globin" . SPARSER::PROTEIN)
    ("glucocorticoid receptor" . SPARSER::PROTEIN) ("7B2" . SPARSER::PROTEIN)
    ("Protein A" . SPARSER::PROTEIN) ("HSP90" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Lamin B1" . SPARSER::PROTEIN) ("p27 Kip1" . SPARSER::PROTEIN)
    ("C20" . SPARSER::PROTEIN) ("CD235a" . SPARSER::PROTEIN)
    ("thrombospondin receptor" . SPARSER::PROTEIN) ("CD36" . SPARSER::PROTEIN)
    ("PI-3K" . SPARSER::HUMAN-PROTEIN-FAMILY) ("CD42" . SPARSER::BIO-COMPLEX)
    ("CD41" . SPARSER::PROTEIN) ("CD34" . SPARSER::PROTEIN)
    ("Interleukin-3" . SPARSER::PROTEIN)
    ("Stem Cell Factor" . SPARSER::PROTEIN) ("γ-globin" . SPARSER::PROTEIN)
    ("nuclear receptor" . SPARSER::PROTEIN) ("γ globin" . SPARSER::PROTEIN)
    ("Mi2β" . SPARSER::PROTEIN) ("GATA2" . SPARSER::PROTEIN)
    ("FOG1" . SPARSER::PROTEIN) ("ATP-dependent" . SPARSER::PROTEIN)
    ("Class I" . SPARSER::PROTEIN) ("HDAC11" . SPARSER::PROTEIN)
    ("HDAC10" . SPARSER::PROTEIN) ("HDAC6" . SPARSER::PROTEIN)
    ("HDAC9" . SPARSER::PROTEIN) ("HDAC7" . SPARSER::PROTEIN)
    ("HDAC8" . SPARSER::PROTEIN) ("GATA1" . SPARSER::PROTEIN)
    ("HDAC5" . SPARSER::PROTEIN) ("HDAC4" . SPARSER::PROTEIN)
    ("HDAC3" . SPARSER::PROTEIN) ("HDAC2" . SPARSER::PROTEIN)
    ("HDAC1" . SPARSER::PROTEIN) ("PRISMA" . SPARSER::DRUG)
    ("His" . SPARSER::AMINO-ACID) ("ArgArg" . SPARSER::MOLECULE)
    ("CI " . SPARSER::PROTEIN) ("Trp" . SPARSER::AMINO-ACID)
    ("Arg" . SPARSER::AMINO-ACID) ("X-ray repair" . SPARSER::PROTEIN)
    ("the autophagic marker LC3B" . SPARSER::PROTEIN)
    ("complete media" . SPARSER::PROTEIN)
    ("luminal and non-transformed cell lines ( xref – xref )"
     . SPARSER::COLLECTION)
    ("doxorubicin and chloroquine" . SPARSER::COLLECTION)
    ("doxorubicin" . SPARSER::PROTEIN) ("synergizes" . SPARSER::PROTEIN)
    ("puncta" . SPARSER::PROTEIN) ("Cyclin D and BCL2L1" . SPARSER::COLLECTION)
    ("chloroquine or ATG" . SPARSER::COLLECTION) ("Stattic" . SPARSER::DRUG)
    ("II" . SPARSER::PROTEIN) ("Chloroquine" . SPARSER::PROTEIN)
    ("chloroquine" . SPARSER::PROTEIN) ("iodide (PI)" . SPARSER::PROTEIN)
    ("Western Blot" . SPARSER::PROTEIN) ("Blot" . SPARSER::PROTEIN)
    ("ATG7 and BECN1" . SPARSER::COLLECTION)
    ("ATG7 or BECN1" . SPARSER::COLLECTION)
    ("ATG5, ATG7 and BECN1" . SPARSER::COLLECTION) ("Prat" . SPARSER::PROTEIN)
    ("Ligand" . SPARSER::LIGAND) ("IFN or IL-6" . SPARSER::COLLECTION)
    ("SRC and ABL1" . SPARSER::COLLECTION) ("SRC" . SPARSER::PROTEIN)
    ("PDGF" . SPARSER::PROTEIN) ("IFN" . SPARSER::PROTEIN)
    ("STATs" . SPARSER::PROTEIN)
    ("endocrine or anti-HER2" . SPARSER::COLLECTION) ("PgR" . SPARSER::PROTEIN)
    ("claudin" . SPARSER::PROTEIN) ("Luminal" . SPARSER::DRUG)
    ("ATG" . SPARSER::DRUG) ("nutrient" . SPARSER::MOLECULE)
    ("protein and organelle" . SPARSER::COLLECTION) ("LC3B" . SPARSER::PROTEIN)
    ("BCL-XL" . SPARSER::PROTEIN) ("Cyclin D" . SPARSER::PROTEIN)
    ("LC3" . SPARSER::PROTEIN) ("LC3-II" . SPARSER::PROTEIN)
    ("BECN1" . SPARSER::PROTEIN) ("ATG7" . SPARSER::PROTEIN)
    ("ATG5" . SPARSER::PROTEIN) ("green fluorescent" . SPARSER::PROTEIN)
    ("CCND1" . SPARSER::PROTEIN) ("BCL2L1" . SPARSER::PROTEIN)
    ("ABL1" . SPARSER::PROTEIN) ("HER2" . SPARSER::PROTEIN)
    ("DLH" . SPARSER::PROTEIN) ("BK and XYW" . SPARSER::COLLECTION)
    ("BK" . SPARSER::PROTEIN) ("LN and JZ" . SPARSER::COLLECTION)
    ("LN" . SPARSER::PROTEIN) ("weaker" . SPARSER::PROTEIN)
    ("antipsychotic" . SPARSER::DRUG) ("gonadotropin" . SPARSER::PROTEIN)
    ("gonadal" . SPARSER::PROTEIN-FAMILY)
    ("water and salt" . SPARSER::COLLECTION) ("salt" . SPARSER::MOLECULE)
    ("FSH, LH, PRL, E 2 or P" . SPARSER::COLLECTION)
    ("FSH, LH, PRL, E 2 or progesterone" . SPARSER::COLLECTION)
    ("androgen" . SPARSER::PROTEIN) ("polyglutamine" . SPARSER::MOLECULE)
    ("estrogen (E 2 ) and prolactin (PRL)" . SPARSER::COLLECTION)
    ("hormone (FSH)" . SPARSER::PROTEIN) ("LH" . SPARSER::PROTEIN)
    ("FSH" . SPARSER::PROTEIN) ("Han" . SPARSER::PROTEIN)
    ("PRL" . SPARSER::PROTEIN) ("prolactin" . SPARSER::PROTEIN)
    ("testosterone" . SPARSER::MOLECULE) ("AR" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ml −1" . SPARSER::PROTEIN) ("NH 2" . SPARSER::MOLECULE)
    ("E 2" . SPARSER::MOLECULE) ("androgen receptor" . SPARSER::PROTEIN)
    ("XLS and SCZ" . SPARSER::COLLECTION) ("XLS" . SPARSER::PROTEIN)
    ("QC" . SPARSER::PROTEIN)
    ("socioeconomic factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("insulin" . SPARSER::PROTEIN)
    ("a convincing longevity gene and some SNPs" . SPARSER::COLLECTION)
    ("polymorphic variants" . SPARSER::VARIANT) ("meta" . SPARSER::PROTEIN)
    ("variants" . SPARSER::VARIANT) ("a strong impact" . SPARSER::PROTEIN)
    ("genetic, epigenetic and environmental factors"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("APOE" . SPARSER::PROTEIN) ("traits" . SPARSER::PROTEIN)
    ("the A allele" . SPARSER::ALLELE)
    ("genotype and allele" . SPARSER::COLLECTION)
    ("gene and longevity" . SPARSER::COLLECTION)
    ("FOXO1 , FOXO3 , FOXO4 and FOXO6" . SPARSER::COLLECTION)
    ("the multifunctional forkhead box O3 transcription factor"
     . SPARSER::PROTEIN)
    ("FOXO" . SPARSER::PROTEIN-FAMILY) ("MIM" . SPARSER::PROTEIN)
    ("the minor and major alleles" . SPARSER::COLLECTION)
    ("CIs" . SPARSER::PROTEIN) ("type 2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FOXO6" . SPARSER::PROTEIN) ("FOXO4" . SPARSER::PROTEIN)
    ("FOXO3" . SPARSER::PROTEIN) ("FOXO1" . SPARSER::PROTEIN)
    ("class O" . SPARSER::PROTEIN) ("Forkhead box" . SPARSER::PROTEIN)
    ("insulin-like growth factor-1" . SPARSER::PROTEIN)
    ("FKHR-L1" . SPARSER::PROTEIN) ("forkhead box O3" . SPARSER::PROTEIN)
    ("FOXO3A" . SPARSER::PROTEIN) ("BS and PH" . SPARSER::COLLECTION)
    ("KW and QY" . SPARSER::COLLECTION) ("KW" . SPARSER::MOLECULE)
    ("SL and ZZ" . SPARSER::COLLECTION) ("SL" . SPARSER::PROTEIN)
    ("PH and BS" . SPARSER::COLLECTION) ("BS" . SPARSER::PROTEIN)
    ("PH" . SPARSER::PROTEIN)
    ("particularly tumor suppressor genes" . SPARSER::GENE)
    ("a prognostic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("iodine" . SPARSER::MOLECULE) ("TG" . SPARSER::PROTEIN)
    ("hematoxylin" . SPARSER::MOLECULE)
    ("PPV and NPV (Table  xref )" . SPARSER::COLLECTION)
    ("DAPK1 (0.732) and RASSF1A (0.707) genes" . SPARSER::COLLECTION)
    ("cut" . SPARSER::PROTEIN) ("DAPK1 and RASSF1A" . SPARSER::COLLECTION)
    ("CALCA , RAR-beta , DAPK1 , TIMP3, and RASSF1A" . SPARSER::COLLECTION)
    ("PPV" . SPARSER::MOLECULE)
    ("The former included 42 PTCs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Promoter" . SPARSER::PROMOTER) ("Ras/Raf/MEK/ERK" . SPARSER::COLLECTION)
    ("Raf" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("BRAF and Ras" . SPARSER::COLLECTION) ("RET/PTC" . SPARSER::COLLECTION)
    ("RET" . SPARSER::PROTEIN) ("gold" . SPARSER::MOLECULE)
    ("PTCs" . SPARSER::PROTEIN)
    ("CALCA , DAPK1 , TIMP3 , RAR-beta and RASSF1A" . SPARSER::COLLECTION)
    ("CALCA" . SPARSER::PROTEIN) ("PTC" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MSP" . SPARSER::PROTEIN) ("p16" . SPARSER::PROTEIN)
    ("Ki67" . SPARSER::PROTEIN) ("CITED1" . SPARSER::PROTEIN)
    ("CK-19" . SPARSER::PROTEIN) ("galectin-3" . SPARSER::PROTEIN)
    ("MgCl2" . SPARSER::MOLECULE) ("for 3 " . SPARSER::PROTEIN)
    ("RASSF1A" . SPARSER::PROTEIN) ("RAR-beta" . SPARSER::PROTEIN)
    ("TIMP3" . SPARSER::PROTEIN) ("DAPK1" . SPARSER::PROTEIN)
    ("JT and DS" . SPARSER::COLLECTION) ("HMK" . SPARSER::PROTEIN)
    ("SAA" . SPARSER::PROTEIN) ("DS" . SPARSER::PROTEIN)
    ("JT" . SPARSER::PROTEIN)
    ("vemurafenib and dabrafenib" . SPARSER::COLLECTION)
    ("NCT" . SPARSER::PROTEIN) ("RAS/RAF" . SPARSER::COLLECTION)
    ("trametinib and the two drugs" . SPARSER::COLLECTION)
    ("Selumetinib" . SPARSER::DRUG)
    ("a plausible target" . SPARSER::TARGET-PROTEIN)
    ("directly target N-RAS" . SPARSER::PROTEIN)
    ("RAF and MEK" . SPARSER::COLLECTION) ("still no drugs" . SPARSER::DRUG)
    ("stimulatory RAS GEFs (GTP Exchange Factors) and RAS"
     . SPARSER::COLLECTION)
    ("stimulatory RAS GEFs" . SPARSER::GEF)
    ("RAF, PI3K, and PLC" . SPARSER::COLLECTION) ("PLC" . SPARSER::PROTEIN)
    ("B-RAF (50-60%) or N-RAS (15-25%)" . SPARSER::COLLECTION)
    ("sun" . SPARSER::PROTEIN) ("a larger cohort" . SPARSER::MOLECULE)
    ("annexin V and propidium" . SPARSER::COLLECTION)
    ("annexinV" . SPARSER::PROTEIN) ("Propidium" . SPARSER::MOLECULE)
    ("phospholipid" . SPARSER::PHOSPHOLIPID)
    ("ERK1/2 and β-actin" . SPARSER::COLLECTION)
    ("dual specificity kinases MEK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the immediate downstream substrates" . SPARSER::SUBSTRATE)
    ("B-RAF mutant and N-RAS mutant melanoma" . SPARSER::COLLECTION)
    ("B-RAF mutant and N-RAS mutant" . SPARSER::COLLECTION)
    ("RAF265 and MEK162" . SPARSER::COLLECTION)
    ("MEK162 (a MEK1/2 inhibitor) and the MEK inhibitor trametinib"
     . SPARSER::COLLECTION)
    ("RAF265 (a pan-RAF inhibitor), MEK162 (a MEK1/2 inhibitor) and the MEK inhibitor trametinib"
     . SPARSER::COLLECTION)
    ("a pan-RAF inhibitor (N = 1) or a pan-RAF inhibitor"
     . SPARSER::COLLECTION)
    ("glutamine" . SPARSER::AMINO-ACID) ("valine" . SPARSER::AMINO-ACID)
    ("our institutional patient cohort" . SPARSER::MOLECULE)
    ("dabrafenib and trametinib" . SPARSER::COLLECTION)
    ("trametinib" . SPARSER::DRUG) ("dabrafenib" . SPARSER::DRUG)
    ("N-RAS and MEK" . SPARSER::COLLECTION)
    ("RAS/RAF/MEK/ERK" . SPARSER::COLLECTION)
    ("MEK–ERK1/2" . SPARSER::COLLECTION) ("vemurafenib" . SPARSER::DRUG)
    ("RAS-GAPs" . SPARSER::COLLECTION) ("RAS-GEFs" . SPARSER::COLLECTION)
    ("pre-RAS" . SPARSER::PROTEIN-PAIR) ("pyrophosphate" . SPARSER::MOLECULE)
    ("Mutated RAS isoforms" . SPARSER::ISOFORM) ("GDP" . SPARSER::NUCLEOTIDE)
    ("the immediate upstream regulators" . SPARSER::REGULATOR)
    ("III" . SPARSER::PROTEIN)
    ("an orally available and selective inhibitor" . SPARSER::INHIBITOR)
    ("Trametinib" . SPARSER::DRUG) ("Dabrafenib" . SPARSER::DRUG)
    ("Drug" . SPARSER::DRUG) ("Food" . SPARSER::MOLECULE)
    ("Vemurafenib" . SPARSER::DRUG) ("B-RAF and PI3K" . SPARSER::COLLECTION)
    ("B-RAF and N-RAS, and N-RAS" . SPARSER::COLLECTION)
    ("N-RAS, and N-RAS" . SPARSER::COLLECTION)
    ("B-RAF or N-RAS" . SPARSER::COLLECTION)
    ("N-RAS and B-RAF" . SPARSER::COLLECTION)
    ("RAS-RAF-MAPK" . SPARSER::COLLECTION)
    ("RAS" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Melanoma" . SPARSER::PROTEIN)
    ("n " . SPARSER::PROTEIN) ("pan-RAF" . SPARSER::COLLECTION)
    ("RAF" . SPARSER::HUMAN-PROTEIN-FAMILY) ("pan" . SPARSER::PROTEIN)
    ("B-RAF and MEK" . SPARSER::COLLECTION)
    ("B-RAF and N-RAS" . SPARSER::COLLECTION) ("mitogen" . SPARSER::MITOGEN)
    ("anti-β" . SPARSER::PROTEIN) ("RAS GAPs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("GTPase Activating" . SPARSER::PROTEIN)
    ("Exchange Factors" . SPARSER::EXCHANGE-FACTOR)
    ("annexin V" . SPARSER::PROTEIN) ("glutamic acid" . SPARSER::AMINO-ACID)
    ("C-RAF" . SPARSER::PROTEIN) ("GTPase activating" . SPARSER::PROTEIN)
    ("co-factors" . SPARSER::MOLECULE) ("GSK1120212" . SPARSER::DRUG)
    ("GSK2118436" . SPARSER::DRUG)
    ("mitogen activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MEK162" . SPARSER::DRUG) ("RAF265" . SPARSER::DRUG)
    ("activating protein" . SPARSER::PROTEIN) ("N-RAS" . SPARSER::PROTEIN)
    ("B-RAF" . SPARSER::PROTEIN)
    ("the membrane-bound and
membrane-unbound states"
     . SPARSER::COLLECTION)
    ("conformations" . SPARSER::BIO-CONFORMATION)
    ("anionic lipid
bilayers"
     . SPARSER::PROTEIN)
    ("peripheral proteins" . SPARSER::PROTEIN) ("bilayers" . SPARSER::PROTEIN)
    ("a productive PTEN–membrane complex" . SPARSER::BIO-COMPLEX)
    ("bilayer, and PTEN" . SPARSER::COLLECTION)
    ("protein–PIP" . SPARSER::COLLECTION)
    ("Ci-VSP and the lipids" . SPARSER::COLLECTION) ("vsp" . SPARSER::PROTEIN)
    ("PIP 2 or PIP 3" . SPARSER::COLLECTION)
    ("PTEN and PIP 3" . SPARSER::COLLECTION) ("AT" . SPARSER::PROTEIN)
    ("both four
PIP 2 molecules and four PIP 3 molecules"
     . SPARSER::COLLECTION)
    ("PIP 2 and PIP 3" . SPARSER::COLLECTION)
    ("PTEN–Bilayer" . SPARSER::COLLECTION) ("Molecules" . SPARSER::MOLECULE)
    ("Complex" . SPARSER::BIO-COMPLEX) ("Bilayer" . SPARSER::PROTEIN)
    ("POPC" . SPARSER::PROTEIN) ("run" . SPARSER::PROTEIN)
    ("POPS" . SPARSER::MOLECULE)
    ("a productive PTEN–bilayer
complex"
     . SPARSER::BIO-COMPLEX)
    ("only one PIP 3 lipid" . SPARSER::LIPID) ("bilayer" . SPARSER::PROTEIN)
    ("PTEN–bilayer" . SPARSER::COLLECTION) ("pten" . SPARSER::PROTEIN)
    ("alanine" . SPARSER::AMINO-ACID) ("CBR" . SPARSER::PROTEIN)
    ("PDB" . SPARSER::MOLECULE) ("Bank" . SPARSER::PROTEIN)
    ("potassium-selective voltage-gated" . SPARSER::PROTEIN)
    ("VS" . SPARSER::PROTEIN) ("P 3 and PI" . SPARSER::COLLECTION)
    ("TPIP" . SPARSER::PROTEIN) ("TPTE" . SPARSER::PROTEIN)
    ("orthologs" . SPARSER::PROTEIN)
    ("phosphatidylserine and PIPs" . SPARSER::COLLECTION)
    ("face" . SPARSER::PROTEIN) ("the major PIPs" . SPARSER::PROTEIN)
    ("PI(4,5)P 2 and PI(3,4,5)P 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("VSP
and auxilin"
     . SPARSER::COLLECTION)
    ("auxilin" . SPARSER::PROTEIN) ("PX" . SPARSER::PROTEIN)
    ("peripheral membrane proteins" . SPARSER::PROTEIN)
    ("PIPs" . SPARSER::PROTEIN) ("lipids" . SPARSER::LIPID)
    ("scaffold" . SPARSER::SCAFFOLD)
    ("protein and bilayer" . SPARSER::COLLECTION)
    ("The
phosphatase and tensin homologue (PTEN) and the Ciona
intestinalis voltage sensitive phosphatase (Ci-VSP)"
     . SPARSER::COLLECTION)
    ("homologue (PTEN)" . SPARSER::PROTEIN)
    ("phosphatase and tensin" . SPARSER::COLLECTION) ("PIP" . SPARSER::PROTEIN)
    ("phosphatidylinositol" . SPARSER::MOLECULE) ("VSP" . SPARSER::PROTEIN)
    ("PTEN" . SPARSER::PROTEIN) ("tensin" . SPARSER::PROTEIN)
    ("membrane-bound" . SPARSER::PROTEIN) ("S5" . SPARSER::MOLECULE)
    ("S3A" . SPARSER::PROTEIN) ("– 3" . SPARSER::PROTEIN)
    ("inositol 1,4,5-triphosphate" . SPARSER::IP3) ("1D" . SPARSER::PROTEIN)
    ("IP 3" . SPARSER::IP3) ("PTEN2" . SPARSER::PROTEIN)
    ("PIP 2" . SPARSER::PROTEIN)
    ("phosphatidylinositol
3-kinase"
     . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the full-length enzyme and its complex" . SPARSER::COLLECTION)
    ("full-length PARP-1 and the PARP-1–8-mer complex" . SPARSER::COLLECTION)
    ("their associated DNA complexes" . SPARSER::BIO-COMPLEX)
    ("full-length PARP-1 and the AB and ABC" . SPARSER::COLLECTION)
    ("the
full-length enzyme and several truncation mutants"
     . SPARSER::COLLECTION)
    ("SUMO1 or SUMO3" . SPARSER::COLLECTION)
    ("ERK1
and ERK2"
     . SPARSER::COLLECTION)
    ("CBP" . SPARSER::PROTEIN) ("CREB" . SPARSER::PROTEIN)
    ("FI, FIII, and EF" . SPARSER::COLLECTION) ("cat" . SPARSER::PROTEIN)
    ("FI and FIII" . SPARSER::COLLECTION)
    ("full-length PARP-1 and the PARP-1–8-mer
complex"
     . SPARSER::COLLECTION)
    ("water" . SPARSER::MOLECULE) ("best-fit" . SPARSER::PROTEIN-FAMILY)
    ("EF" . SPARSER::PROTEIN) ("fits" . SPARSER::PROTEIN-FAMILY)
    ("ABC and ABCD" . SPARSER::COLLECTION) ("30-mer blunt DNA" . SPARSER::DNA)
    ("ABCD" . SPARSER::PROTEIN-FAMILY) ("AB and ABC" . SPARSER::COLLECTION)
    ("AB, ABC, and DEF" . SPARSER::COLLECTION) ("max" . SPARSER::PROTEIN)
    ("AB, ABC, DEF,
and full-length"
     . SPARSER::COLLECTION)
    ("DEF" . SPARSER::PROTEIN) ("ABC" . SPARSER::PROTEIN)
    ("AB" . SPARSER::PROTEIN) ("mutants" . SPARSER::MUTANT)
    ("NMR" . SPARSER::PROTEIN)
    ("tryptophan, glycine, and arginine" . SPARSER::COLLECTION)
    ("protein–protein" . SPARSER::COLLECTION) ("PRD" . SPARSER::PROTEIN)
    ("glycine" . SPARSER::AMINO-ACID) ("tryptophan" . SPARSER::AMINO-ACID)
    ("FI and FII" . SPARSER::COLLECTION) ("bipartite" . SPARSER::PROTEIN)
    ("FI" . SPARSER::PROTEIN) ("PARP" . SPARSER::PROTEIN)
    ("nicotinamide and ADP-ribose" . SPARSER::COLLECTION)
    ("factors, and PARP-1" . SPARSER::COLLECTION)
    ("nicotinamide" . SPARSER::PROTEIN)
    ("conformation" . SPARSER::BIO-CONFORMATION) ("mer" . SPARSER::PROTEIN)
    ("ray" . SPARSER::PROTEIN) ("polymers" . SPARSER::MOLECULE)
    ("acceptor" . SPARSER::MOLECULE) ("polymerase" . SPARSER::PROTEIN)
    ("ERK2" . SPARSER::PROTEIN) ("ERK1" . SPARSER::PROTEIN)
    ("extracellular signal-regulated kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("two domains" . SPARSER::PROTEIN) ("p300" . SPARSER::PROTEIN)
    ("SUMO3" . SPARSER::PROTEIN) ("SUMO1" . SPARSER::PROTEIN)
    ("transcriptional coactivator" . SPARSER::PROTEIN)
    ("cAMP-response
element binding protein"
     . SPARSER::PROTEIN)
    ("histone acetyltransferase p300" . SPARSER::PROTEIN)
    ("S4" . SPARSER::PROTEIN-FAMILY) ("S2" . SPARSER::MOLECULE)
    ("scaffolding protein" . SPARSER::PROTEIN) ("XRCC1" . SPARSER::PROTEIN)
    ("TIP3" . SPARSER::PROTEIN) ("Alpha-" . SPARSER::PROTEIN)
    ("zinc finger" . SPARSER::PROTEIN)
    ("β-mercaptoethanol" . SPARSER::MOLECULE) ("GAG-3" . SPARSER::PROTEIN)
    ("Domain E" . SPARSER::PROTEIN) ("BRCA1" . SPARSER::PROTEIN)
    ("breast cancer
type 1 susceptibility protein"
     . SPARSER::PROTEIN)
    ("A–F" . SPARSER::PROTEIN) ("caspase-3" . SPARSER::PROTEIN)
    ("ADP-ribosyl" . SPARSER::MOLECULE) ("NAD +" . SPARSER::MOLECULE)
    ("nicotinamide
adenine dinucleotide"
     . SPARSER::MOLECULE)
    ("nicotinamide adenine dinucleotide" . SPARSER::MOLECULE)
    ("PARP-1" . SPARSER::PROTEIN) ("ADP-ribose" . SPARSER::MOLECULE)
    ("rosiglitazone" . SPARSER::DRUG)
    ("antioxidative sestrin1" . SPARSER::PROTEIN)
    ("the actual target" . SPARSER::TARGET-PROTEIN)
    ("mTOR-raptor" . SPARSER::COLLECTION) ("vasculature" . SPARSER::PROTEIN)
    ("SMCs" . SPARSER::PROTEIN) ("mTORC2 and mTORC1" . SPARSER::COLLECTION)
    ("RNAs" . SPARSER::RNA) ("cm 2" . SPARSER::PROTEIN)
    ("mTOR, mTORC1 and mTORC2" . SPARSER::COLLECTION)
    ("ROS/RNS" . SPARSER::COLLECTION) ("superoxide" . SPARSER::MOLECULE)
    ("peroxynitrite" . SPARSER::MOLECULE) ("DA" . SPARSER::MOLECULE)
    ("DHE" . SPARSER::DRUG) ("mitoSOX" . SPARSER::DRUG)
    ("mitochondrial" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("static state" . SPARSER::BIO-STATE) ("DAPI" . SPARSER::DRUG)
    ("mTOR and sestrins" . SPARSER::COLLECTION)
    ("p53 and FoxO" . SPARSER::COLLECTION) ("FoxO" . SPARSER::PROTEIN)
    ("sestrin1, sestrin2, and sestrin3" . SPARSER::COLLECTION)
    ("Sestrins" . SPARSER::PROTEIN-FAMILY) ("luminal" . SPARSER::DRUG)
    ("derivatives" . SPARSER::DERIVATIVE) ("raptor" . SPARSER::PROTEIN)
    ("mTORC1 and mTORC2" . SPARSER::COLLECTION) ("RNS" . SPARSER::PROTEIN)
    ("nitrogen" . SPARSER::MOLECULE) ("Rapamycin" . SPARSER::DRUG)
    ("EC" . SPARSER::PROTEIN) ("LSS and rapamycin" . SPARSER::COLLECTION)
    ("SS (LSS)" . SPARSER::PROTEIN) ("mTOR and sestrin1" . SPARSER::COLLECTION)
    ("LSS" . SPARSER::PROTEIN) ("sestrins" . SPARSER::PROTEIN-FAMILY)
    ("SS" . SPARSER::PROTEIN) ("tert-butyl hydroperoxide" . SPARSER::MOLECULE)
    ("S6K1" . SPARSER::PROTEIN) ("Sestrin1" . SPARSER::PROTEIN)
    ("Messenger RNA" . SPARSER::RNA) ("p70 S6" . SPARSER::PROTEIN)
    ("MitoTracker Red" . SPARSER::MOLECULE) ("DAF-2" . SPARSER::PROTEIN)
    ("oxidoreductase activity" . SPARSER::PROTEIN)
    ("sestrin3" . SPARSER::PROTEIN) ("sestrin2" . SPARSER::PROTEIN)
    ("mTORC2" . SPARSER::PROTEIN) ("mTORC1" . SPARSER::PROTEIN)
    ("sestrin1" . SPARSER::PROTEIN) ("mast cell" . SPARSER::PROTEIN)
    ("lab" . SPARSER::PROTEIN)
    ("a structurally-related flavonoid" . SPARSER::MOLECULE)
    ("flavonol" . SPARSER::MOLECULE)
    ("TNF, IL-17, IL-6, IL-8, CCL2 and VEGF" . SPARSER::COLLECTION)
    ("p50 and p65" . SPARSER::COLLECTION)
    ("NFKB1 (encoding NF-κB p50 subunit) and RELA (encoding v-rel reticuloendotheliosis viral oncogene homolog A or NF-κB p65 subunit)"
     . SPARSER::COLLECTION)
    ("two different NF-κB subunits, NFKB1 (encoding NF-κB p50 subunit) and RELA (encoding v-rel reticuloendotheliosis viral oncogene homolog A or NF-κB p65 subunit)"
     . SPARSER::COLLECTION)
    ("v-rel" . SPARSER::COLLECTION) ("rel" . SPARSER::PROTEIN)
    ("IL-6 ( xref ) and IL-8 ( xref )" . SPARSER::COLLECTION)
    ("IL-6 and IL-8" . SPARSER::COLLECTION)
    ("gene and protein" . SPARSER::COLLECTION) ("Luteolin" . SPARSER::DRUG)
    ("IL-6, IL-8 and VEGF" . SPARSER::COLLECTION)
    ("IL-1β, IL-6, IL-8 and TNF" . SPARSER::COLLECTION)
    ("Quercetin" . SPARSER::MOLECULE)
    ("quercetin and luteolin" . SPARSER::COLLECTION)
    ("antioxidant and anti-inflammatory" . SPARSER::COLLECTION)
    ("quercetin" . SPARSER::MOLECULE)
    ("IL-12, IL-17 and IL-23" . SPARSER::COLLECTION)
    ("cyclosporine, and acitretin" . SPARSER::COLLECTION)
    ("acitretin" . SPARSER::DRUG) ("cyclosporine" . SPARSER::DRUG)
    ("psoralen" . SPARSER::DRUG) ("methotrexate" . SPARSER::DRUG)
    ("etanercept" . SPARSER::DRUG) ("Keratinocytes" . SPARSER::PROTEIN)
    ("luteolin and related flavones" . SPARSER::COLLECTION)
    ("flavones" . SPARSER::DRUG) ("NFKB1 and RELA" . SPARSER::COLLECTION)
    ("p50 and NF-κB" . SPARSER::COLLECTION) ("RELA" . SPARSER::PROTEIN)
    ("factor-kappa" . SPARSER::COLLECTION) ("kappa" . SPARSER::PROTEIN-FAMILY)
    ("interleukin-6, interleukin-8 and VEGF" . SPARSER::COLLECTION)
    ("luteolin" . SPARSER::DRUG) ("Flavonoids" . SPARSER::MOLECULE)
    ("biologic" . SPARSER::DRUG)
    ("tumor necrosis factor (TNF) and vascular endothelial growth factor (VEGF)"
     . SPARSER::COLLECTION)
    ("VEGF" . SPARSER::PROTEIN) ("a 15" . SPARSER::PROTEIN)
    ("a 20" . SPARSER::PROTEIN) ("Transcription Factor" . SPARSER::PROTEIN)
    ("Bis-Tris" . SPARSER::MOLECULE) ("C11" . SPARSER::PROTEIN)
    ("lamin A/C" . SPARSER::PROTEIN) ("IL-23" . SPARSER::PROTEIN)
    ("IL-17" . SPARSER::PROTEIN) ("IL-12" . SPARSER::PROTEIN)
    ("IL-1" . SPARSER::PROTEIN) ("Tumor necrosis factor" . SPARSER::PROTEIN)
    ("IL-8" . SPARSER::PROTEIN) ("p65" . SPARSER::PROTEIN)
    ("p50" . SPARSER::PROTEIN) ("NFKB1" . SPARSER::PROTEIN)
    ("interleukin-8" . SPARSER::PROTEIN) ("interleukin-6" . SPARSER::PROTEIN)
    ("vascular endothelial growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("tumor necrosis factor" . SPARSER::PROTEIN)
    ("regulator of MMP-1 expression in vivo and target" . SPARSER::COLLECTION)
    ("abnormal ECM" . SPARSER::PROTEIN) ("Integrin" . SPARSER::PROTEIN)
    ("chemoattractant protein-1, IL-5, IL-13 and IgE" . SPARSER::COLLECTION)
    ("IgE" . SPARSER::PROTEIN) ("Ovalbumin" . SPARSER::PROTEIN)
    ("simple" . SPARSER::PROTEIN)
    ("more MMP-1 and a functionally different ECM" . SPARSER::COLLECTION)
    ("tenascin-C and some laminin isoforms" . SPARSER::COLLECTION)
    ("proteins and re-expression" . SPARSER::COLLECTION)
    ("collagen-I and laminin" . SPARSER::COLLECTION)
    ("fibrinogen" . SPARSER::PROTEIN) ("IL1β and TNFα" . SPARSER::COLLECTION)
    ("β3" . SPARSER::PROTEIN) ("β3-integrin" . SPARSER::COLLECTION)
    ("siRNAs" . SPARSER::PROTEIN)
    ("serotonin, carbachol and bradykinin" . SPARSER::COLLECTION)
    ("bradykinin" . SPARSER::PROTEIN) ("carbachol" . SPARSER::DRUG)
    ("serotonin" . SPARSER::MOLECULE) ("agonists" . SPARSER::AGONIST)
    ("tenascin-C and collagen-I" . SPARSER::COLLECTION)
    ("subunit" . SPARSER::FRAGMENT)
    ("MMP-1 and higher tenascin-C" . SPARSER::COLLECTION)
    ("Neither tenascin-C nor MMP-1 protein" . SPARSER::COLLECTION)
    ("tenascin-C and MMP-1" . SPARSER::COLLECTION)
    ("TLR4 and β1, β3 and αvβ5" . SPARSER::COLLECTION)
    ("Integrins" . SPARSER::PROTEIN)
    ("Rac1 (NS23766, 100 µmol) and p38 (SB208350, 10 µmol)"
     . SPARSER::COLLECTION)
    ("JNK (SP600125, 10 µmol), MEK1/2 (U0126, 10 µmol), Rac1 (NS23766, 100 µmol) and p38 (SB208350, 10 µmol)"
     . SPARSER::COLLECTION)
    ("NS" . SPARSER::PROTEIN) ("Akt, MEK 1/2 and JNK" . SPARSER::COLLECTION)
    ("JNK, p38 and ERK1/2" . SPARSER::COLLECTION)
    ("pro and active" . SPARSER::COLLECTION)
    ("Casein" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Active" . SPARSER::ACTIVE)
    ("collagen-I and tenascin-C" . SPARSER::COLLECTION)
    ("collagen­I and tenascin­C" . SPARSER::COLLECTION)
    ("collagen-I, collagen-IV, fibronectin, laminin and tenascin-C"
     . SPARSER::COLLECTION)
    ("IV" . SPARSER::PROTEIN)
    ("these asthma relevant regulators" . SPARSER::REGULATOR)
    ("TNF-α and IL-1β" . SPARSER::COLLECTION)
    ("IL-4 and IL-13" . SPARSER::COLLECTION) ("Collagenase" . SPARSER::PROTEIN)
    ("human bronchial smooth muscle" . SPARSER::PROTEIN)
    ("BAL" . SPARSER::PROTEIN) ("collagenase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("lumican, tenascin-C and versican" . SPARSER::COLLECTION)
    ("laminin-β2" . SPARSER::COLLECTION) ("versican" . SPARSER::PROTEIN)
    ("lumican" . SPARSER::PROTEIN) ("laminin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("hyaluronan" . SPARSER::PROTEIN) ("elastin" . SPARSER::PROTEIN)
    ("biglycan" . SPARSER::PROTEIN)
    ("collagens" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MMP-1 and tenascin-C" . SPARSER::COLLECTION)
    ("ilomastat" . SPARSER::DRUG) ("Bradykinin" . SPARSER::PROTEIN)
    ("normal ASM" . SPARSER::PROTEIN)
    ("Tenascin-C and MMP-1" . SPARSER::COLLECTION)
    ("ERK1/2, JNK and p38" . SPARSER::COLLECTION)
    ("Collagen-I and tenascin-C" . SPARSER::COLLECTION)
    ("ASM" . SPARSER::PROTEIN) ("myosin II" . SPARSER::PROTEIN)
    ("chemoattractant protein-1" . SPARSER::PROTEIN)
    ("Th 2" . SPARSER::PROTEIN) ("αvβ3" . SPARSER::PROTEIN)
    ("TNFα" . SPARSER::PROTEIN) ("IL1β" . SPARSER::PROTEIN)
    ("glycogen synthase kinase-3" . SPARSER::PROTEIN)
    ("MEK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MEK 1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("collagen­I" . SPARSER::PROTEIN) ("F12" . SPARSER::PROTEIN)
    ("tenascin­C" . SPARSER::PROTEIN) ("anti­" . SPARSER::ANTIBODY)
    ("IgG1" . SPARSER::BIO-COMPLEX) ("TLR4" . SPARSER::PROTEIN)
    ("toll like receptor 4" . SPARSER::PROTEIN) ("αvβ5" . SPARSER::PROTEIN)
    ("SB216763" . SPARSER::DRUG) ("p44" . SPARSER::PROTEIN)
    ("Erk1/2" . SPARSER::PROTEIN) ("MMP1" . SPARSER::PROTEIN)
    ("­3" . SPARSER::PROTEIN) ("housekeeping gene" . SPARSER::PROTEIN)
    ("COL1A1" . SPARSER::PROTEIN) ("MMP­1" . SPARSER::PROTEIN)
    ("IL-1β" . SPARSER::PROTEIN) ("leukotriene D4" . SPARSER::DRUG)
    ("derived growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IL-13" . SPARSER::PROTEIN) ("β2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Tenascin-C" . SPARSER::PROTEIN) ("tenascin-C" . SPARSER::PROTEIN)
    ("MMP-1" . SPARSER::PROTEIN)
    ("Matrix metalloproteinase-1" . SPARSER::PROTEIN)
    ("further downregulated MMP-2" . SPARSER::PROTEIN)
    ("prone" . SPARSER::PROTEIN-FAMILY) ("molecule" . SPARSER::MOLECULE)
    ("AP-1 and NF-κB" . SPARSER::COLLECTION) ("ECM" . SPARSER::PROTEIN)
    ("downstream invasion-related protein MMP-2" . SPARSER::PROTEIN)
    ("component" . SPARSER::COMPONENT) ("bad" . SPARSER::PROTEIN)
    ("PD98059 and SFN" . SPARSER::COLLECTION) ("SD" . SPARSER::PROTEIN)
    ("gap" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mRNA and protein" . SPARSER::COLLECTION)
    ("ERK1/2 and its downstream effectors" . SPARSER::COLLECTION)
    ("MEK/ERK" . SPARSER::COLLECTION) ("Sulforaphane (SFN)" . SPARSER::DRUG)
    ("isothiocyanates" . SPARSER::MOLECULE)
    ("isothiocyanate" . SPARSER::MOLECULE) ("side" . SPARSER::PROTEIN)
    ("temozolomide (TMZ)" . SPARSER::DRUG) ("TMZ" . SPARSER::DRUG)
    ("polymer" . SPARSER::MOLECULE) ("carmustine" . SPARSER::DRUG)
    ("astrocytes" . SPARSER::PROTEIN)
    ("Western blot and Gelatin zymography" . SPARSER::COLLECTION)
    ("Western blot" . SPARSER::PROTEIN) ("SFN" . SPARSER::PROTEIN)
    ("Sulforaphane" . SPARSER::PROTEIN) ("R-250" . SPARSER::PROTEIN)
    ("α-tubulin" . SPARSER::PROTEIN) ("phospho-ERK" . SPARSER::PROTEIN)
    ("anti-ERK" . SPARSER::PROTEIN) ("Dimethyl sulfoxide" . SPARSER::MOLECULE)
    ("alkylating agent" . SPARSER::MOLECULE) ("CD44" . SPARSER::PROTEIN)
    ("MMP-2" . SPARSER::PROTEIN)
    ("matrix metalloproteinase-2" . SPARSER::PROTEIN)
    ("U87MG" . SPARSER::PROTEIN) ("middle-age" . SPARSER::PROTEIN)
    ("genotype (GG)" . SPARSER::PROTEIN) ("GG" . SPARSER::PROTEIN)
    ("heterozygote CG genotype (rs7069102) and heterozygote CT genotype (rs2273773)"
     . SPARSER::COLLECTION)
    ("SNP" . SPARSER::PROTEIN) ("genotype and mutant" . SPARSER::COLLECTION)
    ("MnSOD and catalase" . SPARSER::COLLECTION)
    ("catalase" . SPARSER::PROTEIN) ("drugs" . SPARSER::DRUG)
    ("antioxidants" . SPARSER::DRUG) ("Sun" . SPARSER::PROTEIN)
    ("JNK1-SIRT1" . SPARSER::COLLECTION)
    ("ROS and SIRT1" . SPARSER::COLLECTION) ("AG" . SPARSER::PROTEIN)
    ("genotypes and allele" . SPARSER::COLLECTION)
    ("CT genotype and C allele" . SPARSER::COLLECTION)
    ("TT genotype and T allele" . SPARSER::COLLECTION)
    ("TT" . SPARSER::PROTEIN)
    ("CG genotype and C allele" . SPARSER::COLLECTION)
    ("CG" . SPARSER::PROTEIN)
    ("GG genotype and G allele" . SPARSER::COLLECTION)
    ("genotypes and alleles" . SPARSER::COLLECTION)
    ("genotypes" . SPARSER::PROTEIN)
    ("HDL-cholesterol and LDL-cholesterol levels" . SPARSER::COLLECTION)
    ("LDL" . SPARSER::PROTEIN) ("triglyceride" . SPARSER::MOLECULE)
    ("promoter, intron and exon" . SPARSER::COLLECTION)
    ("glucose" . SPARSER::PROTEIN) ("ischemia" . SPARSER::PROTEIN)
    ("MnSOD" . SPARSER::PROTEIN) ("ROS" . SPARSER::PROTEIN)
    ("oxygen" . SPARSER::MOLECULE)
    ("protein tyrosine phosphatase (PTP)" . SPARSER::PROTEIN)
    ("endothelial nitric oxide synthase" . SPARSER::PROTEIN)
    ("protein kinase (AMPK)" . SPARSER::PROTEIN) ("AMPK" . SPARSER::PROTEIN)
    ("FoxOs" . SPARSER::PROTEIN-FAMILY)
    ("forkhead" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("peroxisome" . SPARSER::PROTEIN)
    ("transcription factor and cofactor" . SPARSER::COLLECTION)
    ("histone and non-histone" . SPARSER::COLLECTION)
    ("cofactor" . SPARSER::MOLECULE) ("NAD" . SPARSER::MOLECULE)
    ("skeletal muscle" . SPARSER::PROTEIN)
    ("the previous candidate gene" . SPARSER::PROTEIN)
    ("TAS, TOS and OSI" . SPARSER::COLLECTION) ("genotype" . SPARSER::PROTEIN)
    ("protein, TAS, TOS and OSI" . SPARSER::COLLECTION)
    ("allele" . SPARSER::ALLELE) ("SIRT1 and eNOS" . SPARSER::COLLECTION)
    ("TOS" . SPARSER::PROTEIN) ("oxidant" . SPARSER::PROTEIN)
    ("TAS" . SPARSER::PROTEIN) ("antioxidant" . SPARSER::PROTEIN)
    ("eNOS" . SPARSER::PROTEIN) ("JNK1" . SPARSER::PROTEIN)
    ("ASK1" . SPARSER::PROTEIN) ("HDL-cholesterol" . SPARSER::MOLECULE)
    ("a 2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("SO 4" . SPARSER::PROTEIN)
    ("H 2 O 2" . SPARSER::DRUG) ("hydrogen peroxide" . SPARSER::MOLECULE)
    ("hydroxyl radical" . SPARSER::MOLECULE)
    ("free-radical" . SPARSER::MOLECULE) ("m 2" . SPARSER::MOLECULE)
    ("nitric oxide" . SPARSER::MOLECULE) ("FoxO1" . SPARSER::PROTEIN)
    ("protein kinase" . SPARSER::PROTEIN) ("AMP-activated" . SPARSER::PROTEIN)
    ("PGC-1α" . SPARSER::PROTEIN) ("PPAR-γ" . SPARSER::PROTEIN)
    ("histone deacetylase" . SPARSER::PROTEIN) ("p37" . SPARSER::PROTEIN)
    ("Silent Information Regulator 2" . SPARSER::PROTEIN)
    ("Sir2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("nitric oxide synthase" . SPARSER::PROTEIN) ("SIRT1" . SPARSER::PROTEIN)
    ("p70S6K and 4E-BP1" . SPARSER::COLLECTION)
    ("mTOR, and mTOR" . SPARSER::COLLECTION)
    ("phosphorlated eIF2α and its downstream target ATF4"
     . SPARSER::COLLECTION)
    ("PI3K/Akt" . SPARSER::COLLECTION) ("eIF4E/eIF4G" . SPARSER::COLLECTION)
    ("SP600125 or rapamycin" . SPARSER::COLLECTION)
    ("rapamycin" . SPARSER::DRUG)
    ("p70S6K ( xref ) and eukaryotic translation initiation factor 4E-binding protein 1 (4E-BP1)"
     . SPARSER::COLLECTION)
    ("mTOR and Raptor" . SPARSER::COLLECTION)
    ("regulatory-associated protein" . SPARSER::PROTEIN)
    ("Raptor" . SPARSER::PROTEIN) ("p70S6K" . SPARSER::PROTEIN)
    ("tunicamycin" . SPARSER::MOLECULE) ("curcumin" . SPARSER::DRUG)
    ("western blot" . SPARSER::PROTEIN) ("salubrinal" . SPARSER::DRUG)
    ("Tunicamycin" . SPARSER::MOLECULE) ("RBE" . SPARSER::PROTEIN)
    ("phosphorylated JNK and its downstream target" . SPARSER::COLLECTION)
    ("/activating transcription factor 4" . SPARSER::COLLECTION)
    ("JNK and GRP78" . SPARSER::COLLECTION)
    ("JNK and CCA" . SPARSER::COLLECTION)
    ("mitogen-activated protein kinase (MAPK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("kinases (JNK)" . SPARSER::KINASE)
    ("an essential regulator" . SPARSER::PROTEIN)
    ("JNK/mTOR" . SPARSER::COLLECTION) ("ATF4 and GRP78" . SPARSER::COLLECTION)
    ("activating transcription factor 4 (ATF4) and GRP78"
     . SPARSER::COLLECTION)
    ("eIF2α" . SPARSER::PROTEIN) ("eIF" . SPARSER::PROTEIN)
    ("mTOR" . SPARSER::PROTEIN) ("CCA" . SPARSER::PROTEIN)
    ("interleukin 6" . SPARSER::PROTEIN) ("factor 4" . SPARSER::PROTEIN)
    ("protein 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("eukaryotic translation initiation factor 4E" . SPARSER::PROTEIN)
    ("ribosomal protein" . SPARSER::PROTEIN)
    ("activator protein" . SPARSER::PROTEIN)
    ("X-box binding protein 1" . SPARSER::PROTEIN) ("TG-3" . SPARSER::PROTEIN)
    ("XBP1" . SPARSER::PROTEIN) ("reverse transcriptase" . SPARSER::PROTEIN)
    ("4E-BP1" . SPARSER::PROTEIN) ("phospho-JNK" . SPARSER::PROTEIN)
    ("CCK8" . SPARSER::PROTEIN) ("PF-4708671" . SPARSER::DRUG)
    ("p70S6" . SPARSER::PROTEIN) ("TGF-β" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Glucose-regulated protein" . SPARSER::PROTEIN)
    ("ATF4" . SPARSER::PROTEIN)
    ("activating transcription factor 4" . SPARSER::PROTEIN)
    ("GRP78" . SPARSER::PROTEIN)
    ("glucose-regulated protein" . SPARSER::PROTEIN)
    ("mammalian target of rapamycin" . SPARSER::PROTEIN)
    ("c-Jun" . SPARSER::PROTEIN)
    ("effectors and activators" . SPARSER::COLLECTION)
    ("Rabs and their exchange factors" . SPARSER::COLLECTION)
    ("Rabs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the macromolecular complex" . SPARSER::BIO-COMPLEX)
    ("exocyst" . SPARSER::BIO-COMPLEX) ("Arf6/integrin" . SPARSER::COLLECTION)
    ("the EGF- and other growth factor receptors" . SPARSER::COLLECTION)
    ("EGF-" . SPARSER::PROTEIN) ("Rab5-" . SPARSER::PROTEIN)
    ("Cadherins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cadherins and integrins" . SPARSER::COLLECTION)
    ("PI3K and Rab5" . SPARSER::COLLECTION)
    ("pAkt and PIP 3" . SPARSER::COLLECTION) ("pAkt" . SPARSER::PROTEIN-FAMILY)
    ("EGFR-Ras-Rac1" . SPARSER::COLLECTION)
    ("Ras-GTP and Tiam1" . SPARSER::COLLECTION)
    ("Grb2/SOS" . SPARSER::COLLECTION) ("SOS" . SPARSER::PROTEIN)
    ("focal adhesion complex-associated proteins" . SPARSER::PROTEIN)
    ("kinase (FAK)" . SPARSER::KINASE) ("FAK" . SPARSER::PROTEIN)
    ("multi-step" . SPARSER::COLLECTION)
    ("the proximal downstream targets" . SPARSER::TARGET-PROTEIN)
    ("Rac and akt" . SPARSER::COLLECTION)
    ("Vav, SOS1 and Tiam1" . SPARSER::COLLECTION)
    ("Rac-GEFs" . SPARSER::COLLECTION) ("Vav" . SPARSER::PROTEIN)
    ("PtdIns" . SPARSER::PROTEIN) ("PI3 kinase and Ras" . SPARSER::COLLECTION)
    ("Cdc42/Rac1" . SPARSER::COLLECTION) ("CRIB" . SPARSER::DRUG)
    ("GST" . SPARSER::PROTEIN) ("fraction" . SPARSER::COMPONENT)
    ("membrane-associated GFP-Rac1" . SPARSER::COLLECTION)
    ("fibronectin" . SPARSER::PROTEIN) ("KD" . SPARSER::PROTEIN)
    ("effectors, GEFs and GAPs" . SPARSER::COLLECTION)
    ("GAPs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PI5 and PI4" . SPARSER::COLLECTION)
    ("phosphoinositide" . SPARSER::PROTEIN)
    ("APPL1 and APPL2" . SPARSER::COLLECTION) ("Als2" . SPARSER::PROTEIN)
    ("GAP" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Als" . SPARSER::PROTEIN)
    ("GEFs" . SPARSER::PROTEIN)
    ("The complex and diverse role of Rab5 isoforms in endocytic transport"
     . SPARSER::COLLECTION)
    ("GEF" . SPARSER::PROTEIN) ("guanine" . SPARSER::PROTEIN)
    ("Chen" . SPARSER::PROTEIN) ("microtubules" . SPARSER::PROTEIN)
    ("xref almost 25 years ago" . SPARSER::PROTEIN) ("ago" . SPARSER::PROTEIN)
    ("significantly fewer focal adhesion foci" . SPARSER::PROTEIN)
    ("spatio-temporal assembly/disassembly" . SPARSER::PROTEIN)
    ("Akt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Rab5C and Rac" . SPARSER::COLLECTION) ("EGF" . SPARSER::PROTEIN)
    ("Rab5A, Rab5B or Rab5C" . SPARSER::COLLECTION)
    ("GFP-Rac1" . SPARSER::COLLECTION) ("GFP" . SPARSER::PROTEIN)
    ("Rac" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Rab5A or Rab5B" . SPARSER::COLLECTION)
    ("neither Rab5A nor Rab5C" . SPARSER::COLLECTION)
    ("neither Rab5A nor Rab5B" . SPARSER::COLLECTION)
    ("the prototypical Rab GTPase and master regulator" . SPARSER::COLLECTION)
    ("Rab5, the prototypical Rab GTPase and master regulator"
     . SPARSER::COLLECTION)
    ("Rab5A, Rab5B and Rab5C" . SPARSER::COLLECTION)
    ("Rab" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("exchange factors" . SPARSER::EXCHANGE-FACTOR) ("Arf6" . SPARSER::PROTEIN)
    ("growth factor receptors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("AMAP1" . SPARSER::PROTEIN) ("p85" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p110β" . SPARSER::PROTEIN) ("Grb2" . SPARSER::PROTEIN)
    ("Gab1" . SPARSER::PROTEIN) ("Ras-GTP" . SPARSER::PROTEIN)
    ("growth factor receptor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PIP 3" . SPARSER::PIP3) ("Akt/PKB" . SPARSER::PROTEIN)
    ("Tiam1" . SPARSER::PROTEIN) ("SOS1" . SPARSER::PROTEIN)
    ("P 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PI3-kinase" . SPARSER::HUMAN-PROTEIN-FAMILY) ("Cdc42" . SPARSER::PROTEIN)
    ("TX-100" . SPARSER::DRUG) ("glutathione S-transferase" . SPARSER::PROTEIN)
    ("a 3" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("PAK1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p110" . SPARSER::PROTEIN)
    ("PIP3" . SPARSER::PIP3) ("PI4" . SPARSER::PROTEIN)
    ("PI5" . SPARSER::PROTEIN) ("PI3 kinase" . SPARSER::PROTEIN)
    ("APPL2" . SPARSER::PROTEIN) ("APPL1" . SPARSER::PROTEIN)
    ("EEA1" . SPARSER::PROTEIN) ("RN-Tre" . SPARSER::PROTEIN)
    ("RabGap-5" . SPARSER::PROTEIN) ("GTPase-activating" . SPARSER::PROTEIN)
    ("Rin3" . SPARSER::PROTEIN) ("Rin2" . SPARSER::PROTEIN)
    ("Gapex-5" . SPARSER::PROTEIN) ("Rabex5" . SPARSER::PROTEIN)
    ("Rin1" . SPARSER::PROTEIN) ("assembly/disassembly" . SPARSER::PROTEIN)
    ("Rac1" . SPARSER::PROTEIN) ("Rab5C" . SPARSER::PROTEIN)
    ("Rab5B" . SPARSER::PROTEIN) ("Rab5A" . SPARSER::PROTEIN)
    ("Rab5" . SPARSER::PROTEIN)
    ("CXCL12 and its receptor" . SPARSER::COLLECTION)
    ("mDia2 and its functional inhibitor" . SPARSER::COLLECTION)
    ("RhoA/mDia/ROCK" . SPARSER::COLLECTION) ("light" . SPARSER::PROTEIN)
    ("Rho/ROCK" . SPARSER::COLLECTION)
    ("cadherins" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("cadherin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("mDia and ROCK" . SPARSER::COLLECTION)
    ("mDia2 or ROCK" . SPARSER::COLLECTION)
    ("the predominant formin" . SPARSER::PROTEIN)
    ("RhoA and ROCK" . SPARSER::COLLECTION)
    ("Studies firmly place mDia proteins" . SPARSER::PROTEIN)
    ("exaggerated cellular elongation" . SPARSER::PROTEIN)
    ("matrigel" . SPARSER::PROTEIN) ("mDia2/ROCK" . SPARSER::COLLECTION)
    ("myosin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ROCK and mDia" . SPARSER::COLLECTION) ("EI" . SPARSER::PROTEIN)
    ("ES2" . SPARSER::PROTEIN) ("SRF" . SPARSER::PROTEIN)
    ("GTPases" . SPARSER::GTPASE) ("post-siRNA" . SPARSER::COLLECTION)
    ("mDia2 or mDia1" . SPARSER::COLLECTION) ("punctate" . SPARSER::PROTEIN)
    ("mDia2 and F-actin" . SPARSER::COLLECTION)
    ("lysophosphatidic acid (LPA)" . SPARSER::LPA) ("LPA" . SPARSER::PROTEIN)
    ("mDia or ROCK" . SPARSER::COLLECTION) ("GTP" . SPARSER::NUCLEOTIDE)
    ("effectors, mDia1 and mDia2" . SPARSER::COLLECTION)
    ("RhoA/mDia2" . SPARSER::COLLECTION)
    ("lipid and control siRNA-treated cells" . SPARSER::COLLECTION)
    ("lipid" . SPARSER::LIPID) ("YFP-mDia-FH2" . SPARSER::COLLECTION)
    ("FH2" . SPARSER::PROTEIN) ("FLAG" . SPARSER::PROTEIN-FAMILY)
    ("YFP" . SPARSER::PROTEIN) ("mDia1 and/or mDia2" . SPARSER::COLLECTION)
    ("stabilizing cortical actin" . SPARSER::PROTEIN) ("IF" . SPARSER::PROTEIN)
    ("FBS" . SPARSER::PROTEIN) ("mDia1 and mDia2" . SPARSER::COLLECTION)
    ("mDia2 and ROCK" . SPARSER::COLLECTION)
    ("RhoA/mDia2/ROCK" . SPARSER::COLLECTION)
    ("Rho/mDia" . SPARSER::COLLECTION)
    ("mDia2 ( DIAPH3/DRF3 ) and formin" . SPARSER::COLLECTION)
    ("DIAPH3/DRF3" . SPARSER::COLLECTION) ("DIAPH1/DRF1" . SPARSER::COLLECTION)
    ("FMNL/FRL" . SPARSER::COLLECTION)
    ("FRL, FHOD and Formin1" . SPARSER::COLLECTION) ("FRL" . SPARSER::PROTEIN)
    ("mDia1" . SPARSER::HUMAN-PROTEIN-FAMILY) ("chemotaxis" . SPARSER::PROTEIN)
    ("neutrophil" . SPARSER::PROTEIN) ("DIP" . SPARSER::PROTEIN)
    ("mDia-Rho" . SPARSER::COLLECTION) ("Rho" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("homologue" . SPARSER::PROTEIN) ("monolayers" . SPARSER::PROTEIN)
    ("The mammalian Diaphanous (mDia)-related formins" . SPARSER::PROTEIN)
    ("Formin" . SPARSER::PROTEIN)
    ("F-actin and microtubule" . SPARSER::COLLECTION)
    ("Formins" . SPARSER::PROTEIN) ("actin" . SPARSER::PROTEIN)
    ("metalloprotease (MMP)" . SPARSER::PROTEIN) ("MMP" . SPARSER::PROTEIN)
    ("metalloprotease" . SPARSER::PROTEIN) ("cues" . SPARSER::PROTEIN-FAMILY)
    ("GTPase" . SPARSER::GTPASE) ("ROCK and mDia2" . SPARSER::COLLECTION)
    ("ROCK" . SPARSER::PROTEIN-FAMILY) ("siRNA" . SPARSER::PROTEIN)
    ("collagen" . SPARSER::HUMAN-PROTEIN-FAMILY) ("RhoA" . SPARSER::PROTEIN)
    ("formin" . SPARSER::PROTEIN) ("effectors" . SPARSER::EFFECTOR)
    ("formins" . SPARSER::PROTEIN) ("mDia" . SPARSER::PROTEIN)
    ("Lysophosphatidic acid" . SPARSER::LPA) ("M 1" . SPARSER::MOLECULE)
    ("Collagen-I" . SPARSER::PROTEIN) ("Apo 1" . SPARSER::PROTEIN)
    ("a 37" . SPARSER::PROTEIN) ("CXCL12" . SPARSER::PROTEIN)
    ("etc." . SPARSER::PROTEIN) ("18 h" . SPARSER::PROTEIN)
    ("de-" . SPARSER::MOLECULE) ("siRNA-mediated" . SPARSER::PROTEIN)
    ("lysophosphatidic acid" . SPARSER::LPA) ("FMN1" . SPARSER::PROTEIN)
    ("DIAPH3" . SPARSER::PROTEIN) ("DRF1" . SPARSER::PROTEIN)
    ("DIAPH1" . SPARSER::PROTEIN) ("T-cell" . SPARSER::PROTEIN)
    ("DU145" . SPARSER::PROTEIN)
    ("myosin light chain" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("transcriptional regulators" . SPARSER::PROTEIN-FAMILY)
    ("collagen-I" . SPARSER::PROTEIN) ("DRF3" . SPARSER::PROTEIN)
    ("mDia2" . SPARSER::PROTEIN) ("F-actin" . SPARSER::BIO-COMPLEX)
    ("Rho GTPase" . SPARSER::PROTEIN) ("DNAse" . SPARSER::PROTEIN)
    ("STAT5a or STAT5b" . SPARSER::COLLECTION)
    ("IL-2/IL-2R" . SPARSER::COLLECTION) ("JAK3/STAT5" . SPARSER::COLLECTION)
    ("CD25 and HAT" . SPARSER::COLLECTION) ("HAT" . SPARSER::PROTEIN)
    ("anti-CD3 and anti-CD28" . SPARSER::COLLECTION)
    ("CD25 and JAK3" . SPARSER::COLLECTION)
    ("exogenous IL-2" . SPARSER::PROTEIN)
    ("the genome-wide targets" . SPARSER::TARGET-PROTEIN)
    ("STAT5A and STAT5B" . SPARSER::COLLECTION)
    ("nucleosome" . SPARSER::PROTEIN)
    ("lysine and arginine" . SPARSER::COLLECTION)
    ("histones" . SPARSER::PROTEIN) ("hg" . SPARSER::MOLECULE)
    ("DNase" . SPARSER::PROTEIN) ("fragment" . SPARSER::FRAGMENT)
    ("antibody or IgG" . SPARSER::COLLECTION)
    ("GAS1 and GAS2" . SPARSER::COLLECTION) ("PHA" . SPARSER::PROTEIN)
    ("DHS" . SPARSER::PROTEIN) ("oncogenes" . SPARSER::ONCOGENE)
    ("enzymes and proteins" . SPARSER::COLLECTION)
    ("tetrameric STAT5" . SPARSER::PROTEIN) ("tetramer" . SPARSER::TETRAMER)
    ("whereby tetrameric STAT5 complexes" . SPARSER::BIO-COMPLEX)
    ("tetrameric STAT5 complexes" . SPARSER::BIO-COMPLEX)
    ("a tetrameric complex" . SPARSER::BIO-COMPLEX) ("dimers" . SPARSER::DIMER)
    ("GAA and TTN" . SPARSER::COLLECTION) ("AA" . SPARSER::MOLECULE)
    ("TTN" . SPARSER::PROTEIN) ("STAT1 and NF-kB" . SPARSER::COLLECTION)
    ("fragments" . SPARSER::FRAGMENT) ("IL-2/JAK3/STAT5" . SPARSER::COLLECTION)
    ("map" . SPARSER::PROTEIN)
    ("c-FOS, FOSB, FRA1, and FRA2" . SPARSER::COLLECTION)
    ("c-JUN, JUNB and JUND" . SPARSER::COLLECTION)
    ("FOS/JUN" . SPARSER::COLLECTION) ("JUND" . SPARSER::PROTEIN)
    ("JUNB" . SPARSER::PROTEIN) ("Jun" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("FOSB" . SPARSER::PROTEIN) ("heterodimers" . SPARSER::HETERODIMER)
    ("JUN" . SPARSER::PROTEIN) ("FOS" . SPARSER::PROTEIN)
    ("AP1" . SPARSER::PROTEIN) ("CD4-Th2" . SPARSER::COLLECTION)
    ("IL-2 and STAT5" . SPARSER::COLLECTION) ("TSS" . SPARSER::PROTEIN)
    ("IL-2/STAT5" . SPARSER::COLLECTION) ("STAT5-ChIP" . SPARSER::COLLECTION)
    ("cofactors" . SPARSER::PROTEIN) ("GAA" . SPARSER::PROTEIN)
    ("variety" . SPARSER::VARIETY) ("kinases (JAK)" . SPARSER::KINASE)
    ("highly homologous proteins" . SPARSER::PROTEIN)
    ("STAT5a and STAT5b" . SPARSER::COLLECTION) ("STAT5a" . SPARSER::PROTEIN)
    ("FRA2 and reporter gene" . SPARSER::COLLECTION)
    ("a transcriptionally active promoter" . SPARSER::PROMOTER)
    ("elongation" . SPARSER::PROTEIN) ("histone" . SPARSER::PROTEIN)
    ("a basic -leucine zipper (bZIP) motif ‘Fos’ family transcription factor"
     . SPARSER::PROTEIN)
    ("-leucine" . SPARSER::COLLECTION)
    ("‘Fos’" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Fos" . SPARSER::HUMAN-PROTEIN-FAMILY) ("bZIP" . SPARSER::PROTEIN-FAMILY)
    ("leucine" . SPARSER::AMINO-ACID) ("GAS" . SPARSER::PROTEIN)
    ("ChIP" . SPARSER::PROTEIN) ("Chromatin" . SPARSER::PROTEIN)
    ("transducers and activators" . SPARSER::COLLECTION)
    ("effector" . SPARSER::EFFECTOR) ("transducers" . SPARSER::PROTEIN)
    ("IL2R" . SPARSER::PROTEIN) ("interleukin 2" . SPARSER::PROTEIN)
    ("CD25" . SPARSER::PROTEIN) ("CD28" . SPARSER::PROTEIN)
    ("Chr2" . SPARSER::PROTEIN) ("chr2" . SPARSER::PROTEIN)
    ("STAT5B" . SPARSER::PROTEIN) ("STAT5A" . SPARSER::PROTEIN)
    ("H2A.Z" . SPARSER::PROTEIN) ("GAS 1" . SPARSER::PROTEIN)
    ("GAS2" . SPARSER::PROTEIN) ("CHD6" . SPARSER::PROTEIN)
    ("ADAM22" . SPARSER::PROTEIN) ("IGFBP3" . SPARSER::PROTEIN)
    ("GRID1" . SPARSER::PROTEIN) ("CHD1" . SPARSER::PROTEIN)
    ("FAT1" . SPARSER::PROTEIN) ("ST6GAL2" . SPARSER::PROTEIN)
    ("CDH10" . SPARSER::PROTEIN) ("LRP1B" . SPARSER::PROTEIN)
    ("HERC2" . SPARSER::PROTEIN) ("KIF1A" . SPARSER::PROTEIN)
    ("TSC22D1" . SPARSER::PROTEIN) ("TCEA1" . SPARSER::PROTEIN)
    ("TOP1" . SPARSER::PROTEIN) ("ACSL6" . SPARSER::PROTEIN)
    ("TLE4" . SPARSER::PROTEIN) ("NF-kB" . SPARSER::PROTEIN)
    ("STAT1" . SPARSER::PROTEIN) ("and 1 µ" . SPARSER::PROTEIN)
    ("Stat5" . SPARSER::PROTEIN) ("cytokine receptor" . SPARSER::PROTEIN)
    ("pGL4" . SPARSER::PROTEIN) ("GAS1" . SPARSER::PROTEIN)
    ("IL-2R" . SPARSER::PROTEIN) ("DNA polymerase" . SPARSER::PROTEIN)
    ("anti-CD28" . SPARSER::PROTEIN) ("T –cell" . SPARSER::PROTEIN)
    ("c-JUN" . SPARSER::PROTEIN) ("FRA1" . SPARSER::PROTEIN)
    ("c-FOS" . SPARSER::PROTEIN) ("IL-4" . SPARSER::PROTEIN)
    ("Th2" . SPARSER::PROTEIN) ("c-maf" . SPARSER::PROTEIN)
    ("TH2" . SPARSER::PROTEIN) ("JAK-STAT" . SPARSER::PROTEIN)
    ("STAT5b" . SPARSER::PROTEIN) ("JAK3" . SPARSER::PROTEIN)
    ("H4K20me1" . SPARSER::PROTEIN) ("H2BK" . SPARSER::PROTEIN)
    ("H3K4" . SPARSER::PROTEIN)
    ("AP-1 transcription factor" . SPARSER::PROTEIN)
    ("FRA2" . SPARSER::PROTEIN) ("Fos-related antigen 2" . SPARSER::PROTEIN)
    ("IFN-γ" . SPARSER::PROTEIN) ("CD4" . SPARSER::PROTEIN)
    ("STAT5" . SPARSER::PROTEIN) ("golimumab" . SPARSER::DRUG)
    ("yin-yang" . SPARSER::PROTEIN-PAIR) ("RALA" . SPARSER::PROTEIN)
    ("net" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TNF-receptor" . SPARSER::COLLECTION)
    ("stress-related inducer" . SPARSER::PROTEIN)
    ("JNK/AP-1" . SPARSER::COLLECTION) ("inducer" . SPARSER::PROTEIN)
    ("SODD" . SPARSER::PROTEIN) ("caspase" . SPARSER::PROTEIN)
    ("minor" . SPARSER::PROTEIN) ("ERK1/2 and p38" . SPARSER::COLLECTION)
    ("Tanshinone" . SPARSER::DRUG) ("PDTC and gliotoxin" . SPARSER::COLLECTION)
    ("un-masks" . SPARSER::COLLECTION) ("masks" . SPARSER::PROTEIN)
    ("monoclonal antibodies" . SPARSER::ANTIBODY)
    ("the naturally occurring agonist FasL" . SPARSER::PROTEIN)
    ("the agonistic monoclonal Fas antibody" . SPARSER::ANTIBODY)
    ("Both SR 11302 and tanshinone IIA enhanced the survival-prolonging activity of TNF-α significantly ( xref )"
     . SPARSER::COLLECTION)
    ("JNK-AP-1" . SPARSER::COLLECTION) ("JNK–" . SPARSER::PROTEIN)
    ("kinase (JNK)" . SPARSER::KINASE) ("JNK" . SPARSER::PROTEIN)
    ("redox" . SPARSER::PROTEIN) ("“un-mask" . SPARSER::COLLECTION)
    ("mediators" . SPARSER::PROTEIN) ("mask" . SPARSER::PROTEIN)
    ("IKK" . SPARSER::PROTEIN)
    ("PDTC ( xref ) and gliotoxin" . SPARSER::COLLECTION)
    ("PDTC" . SPARSER::DRUG) ("oligonucleotide" . SPARSER::MOLECULE)
    ("kinase (NIK)" . SPARSER::KINASE) ("NIK" . SPARSER::PROTEIN)
    ("MAP kinase kinase (MEK)" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IL-5 and GM-CSF" . SPARSER::COLLECTION)
    ("MAP kinase and extracellular signal regulated kinase"
     . SPARSER::COLLECTION)
    ("TNF-R1 and TNF-R2" . SPARSER::COLLECTION) ("TNF-" . SPARSER::PROTEIN)
    ("exogenous IL-3, IL-5 or GM-CSF" . SPARSER::COLLECTION)
    ("relevant neutralising antibodies" . SPARSER::ANTIBODY)
    ("the known eosinophil-survival-prolonging cytokines IL-3, IL-5 or GM-CSF"
     . SPARSER::COLLECTION)
    ("TNF-α and GM-CSF" . SPARSER::COLLECTION)
    ("IL-3, IL-5 or GM-CSF" . SPARSER::COLLECTION)
    ("soluble FasLigand" . SPARSER::PROTEIN)
    ("soluble recombinant human FasLigand" . SPARSER::PROTEIN)
    ("FasLigand" . SPARSER::PROTEIN) ("agarose" . SPARSER::MOLECULE)
    ("CH" . SPARSER::PROTEIN) ("mAb" . SPARSER::DRUG)
    ("a trophic factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("IL-5 (10 pM) and 62.8±10.0%" . SPARSER::COLLECTION)
    ("clearly less potent inhibitor" . SPARSER::INHIBITOR)
    ("iodide" . SPARSER::PROTEIN) ("propidium" . SPARSER::MOLECULE)
    ("phosphatidylserine" . SPARSER::PROTEIN) ("PI" . SPARSER::PROTEIN)
    ("GM-CSF and p38" . SPARSER::COLLECTION)
    ("the agonistic monoclonal anti-Fas antibody" . SPARSER::ANTIBODY)
    ("FasL and TNF-α" . SPARSER::COLLECTION)
    ("ligand-receptor" . SPARSER::PROTEIN) ("FasL" . SPARSER::PROTEIN)
    ("Tnfrsf1b" . SPARSER::PROTEIN) ("Tnfrsf1a" . SPARSER::PROTEIN)
    ("a pleiotropic cytokine" . SPARSER::PROTEIN)
    ("chromatin condensation and endonuclease-catalysed DNA"
     . SPARSER::COLLECTION)
    ("endonuclease" . SPARSER::PROTEIN)
    ("condensation" . SPARSER::PROTEIN-FAMILY) ("chromatin" . SPARSER::PROTEIN)
    ("cytokines principally interleukin (IL) -3" . SPARSER::PROTEIN)
    ("macrophage-colony stimulating factor" . SPARSER::COLLECTION)
    ("IL" . SPARSER::PROTEIN) ("interleukin" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("COPD" . SPARSER::PROTEIN) ("NF-κB and AP-1" . SPARSER::COLLECTION)
    ("yin" . SPARSER::PROTEIN) ("tanshinone" . SPARSER::DRUG)
    ("SR" . SPARSER::PROTEIN) ("AP-1" . SPARSER::PROTEIN)
    ("gliotoxin" . SPARSER::DRUG) ("TNF-receptor 1" . SPARSER::COLLECTION)
    ("TNF" . SPARSER::PROTEIN) ("macrophage" . SPARSER::PROTEIN)
    ("interleukins" . SPARSER::PROTEIN) ("Fas" . SPARSER::PROTEIN)
    ("TRAF-2" . SPARSER::PROTEIN) ("SP 600125" . SPARSER::PROTEIN)
    ("IKK-2" . SPARSER::PROTEIN) ("protein I" . SPARSER::PROTEIN)
    ("PD 98059" . SPARSER::MOLECULE)
    ("MAP kinase kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("ERK 1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Extracellular signal regulated kinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SB 203580" . SPARSER::DRUG)
    ("extracellular signal regulated kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MAP kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("apoptosis-inducing" . SPARSER::PROTEIN) ("Annexin-V" . SPARSER::PROTEIN)
    ("SB203580" . SPARSER::DRUG) ("beta2" . SPARSER::PROTEIN)
    ("Fas ligand" . SPARSER::PROTEIN) ("APO-1" . SPARSER::PROTEIN)
    ("2-(2-Amino-3-methoxyphenyl)-4 H -1-benzopyran-4-one" . SPARSER::DRUG)
    ("PD98059" . SPARSER::MOLECULE) ("IκBα" . SPARSER::PROTEIN)
    ("CD95" . SPARSER::PROTEIN) ("IgG 1" . SPARSER::BIO-COMPLEX)
    ("IL-3" . SPARSER::PROTEIN) ("factor-κB" . SPARSER::PROTEIN)
    ("its receptor" . SPARSER::PROTEIN) ("Fas Ligand" . SPARSER::PROTEIN)
    ("TNF-R2" . SPARSER::PROTEIN) ("TNF-R1" . SPARSER::PROTEIN)
    ("Tumour necrosis factor" . SPARSER::PROTEIN) ("GM-CSF" . SPARSER::PROTEIN)
    ("colony stimulating factor" . SPARSER::PROTEIN)
    ("SP600125" . SPARSER::PROTEIN) ("c-jun" . SPARSER::PROTEIN)
    ("BMS-345541" . SPARSER::DRUG) ("NF-κB" . SPARSER::PROTEIN)
    ("IκB" . SPARSER::PROTEIN) ("receptor 1" . SPARSER::PROTEIN)
    ("colony-stimulating factor" . SPARSER::PROTEIN)
    ("TNF-α" . SPARSER::PROTEIN) ("tumour necrosis factor" . SPARSER::PROTEIN)
    ("oncogene" . SPARSER::ONCOGENE) ("Hdm2 and p53" . SPARSER::COLLECTION)
    ("a pathologic form" . SPARSER::FORM) ("ligase" . SPARSER::LIGASE)
    ("a well-studied E3 Ub" . SPARSER::PROTEIN) ("Ub" . SPARSER::PROTEIN)
    ("oncoprotein" . SPARSER::PROTEIN)
    ("The p53 protein and its gene" . SPARSER::COLLECTION)
    ("UBE4B-siRNA, Hdm2-siRNA, or UBE4B" . SPARSER::COLLECTION)
    ("Hdm2-siRNA" . SPARSER::PROTEIN-PAIR)
    ("UBE4B-siRNA" . SPARSER::PROTEIN-PAIR) ("Myc-Hdm2" . SPARSER::COLLECTION)
    ("Flag-UBE4B" . SPARSER::COLLECTION) ("Myc" . SPARSER::PROTEIN)
    ("Flag" . SPARSER::PROTEIN-FAMILY) ("KO" . SPARSER::PROTEIN)
    ("the respective antibodies" . SPARSER::ANTIBODY)
    ("MCF7" . SPARSER::PROTEIN) ("p53 and UBE4B-siRNA" . SPARSER::COLLECTION)
    ("Hdm2 or UBE4B" . SPARSER::COLLECTION)
    ("Hdm2 and UBE4B" . SPARSER::COLLECTION)
    ("UBE4B, Hdm2, or UBE4B and Hdm2" . SPARSER::COLLECTION)
    ("UBE4B and Hdm2" . SPARSER::COLLECTION) ("HA-Ub" . SPARSER::PROTEIN-PAIR)
    ("ubiquitin" . SPARSER::PROTEIN) ("HA" . SPARSER::PROTEIN)
    ("p53 and UBE4B" . SPARSER::COLLECTION)
    ("UBE4B and p53" . SPARSER::COLLECTION)
    ("polyubiquitinate" . SPARSER::PROTEIN)
    ("E1, E2, and E3" . SPARSER::COLLECTION) ("enzyme" . SPARSER::PROTEIN)
    ("Proteins" . SPARSER::PROTEIN)
    ("Ub-activating enzymes (E1s), Ub conjugating enzymes (E2s), and Ub ligases (E3s) xref"
     . SPARSER::COLLECTION)
    ("ligases" . SPARSER::LIGASE) ("enzymes" . SPARSER::ENZYME)
    ("Lys" . SPARSER::AMINO-ACID) ("kDa" . SPARSER::PROTEIN)
    ("Ubiquitin" . SPARSER::PROTEIN) ("p53 and Hdm2" . SPARSER::COLLECTION)
    ("which targets p53" . SPARSER::PROTEIN) ("ataxin-3" . SPARSER::PROTEIN)
    ("tumor suppressor protein" . SPARSER::PROTEIN)
    ("Annexin V" . SPARSER::PROTEIN) ("protein A" . SPARSER::PROTEIN)
    ("NP-40" . SPARSER::DRUG) ("polyvinylidene fluoride" . SPARSER::DRUG)
    ("CO2" . SPARSER::PROTEIN) ("E1" . SPARSER::MOLECULE)
    ("UFD2" . SPARSER::PROTEIN) ("E3" . SPARSER::MOLECULE)
    ("p36" . SPARSER::PROTEIN) ("a chain" . SPARSER::PROTEIN)
    ("E3s" . SPARSER::MOLECULE) ("E2s" . SPARSER::MOLECULE)
    ("E1s" . SPARSER::MOLECULE) ("UBE4B" . SPARSER::PROTEIN)
    ("Hdm2" . SPARSER::PROTEIN) ("ubiquitin ligase" . SPARSER::PROTEIN)
    ("domain E" . SPARSER::PROTEIN) ("Tyrosine" . SPARSER::AMINO-ACID)
    ("Trans" . SPARSER::PROTEIN-FAMILY) ("PKA and PKC" . SPARSER::COLLECTION)
    ("kinases and tyrosine" . SPARSER::COLLECTION)
    ("PP1, Src40-58, and wt" . SPARSER::COLLECTION)
    ("kinases, and tyrosine" . SPARSER::COLLECTION)
    ("pTyr" . SPARSER::PHOSPHORYLATED-AMINO-ACID)
    ("-Cys-Asp-Leu" . SPARSER::COLLECTION)
    ("Leu-Thr-Tyr" . SPARSER::COLLECTION) ("Asp" . SPARSER::AMINO-ACID)
    ("Cys" . SPARSER::AMINO-ACID) ("Thr" . SPARSER::AMINO-ACID)
    ("modulators" . SPARSER::PROTEIN) ("orthovanadate" . SPARSER::MOLECULE)
    ("HEK" . SPARSER::PROTEIN)
    ("the Src-specific inhibitory peptide (Src40-58) similarly reduced both cloned hERG1"
     . SPARSER::PROTEIN)
    ("CSK" . SPARSER::PROTEIN) ("PTKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Lck" . SPARSER::PROTEIN) ("PP1 and PP2" . SPARSER::COLLECTION)
    ("ATP" . SPARSER::ATP) ("pyrazolopyrimidine" . SPARSER::MOLECULE)
    ("an EGFR inhibitor (AG556) and a broad-spectrum inhibitor"
     . SPARSER::COLLECTION)
    ("isoforms" . SPARSER::ISOFORM) ("hERG or hEAG1" . SPARSER::COLLECTION)
    ("the shorter rERG-1B isoform" . SPARSER::ISOFORM)
    ("isoform" . SPARSER::PROTEIN) ("tetramers" . SPARSER::TETRAMER)
    ("ERG and EAG" . SPARSER::COLLECTION)
    ("kinases, PKA, PKC and CaMKII" . SPARSER::COLLECTION)
    ("CaMKII" . SPARSER::PROTEIN) ("PKC" . SPARSER::PROTEIN)
    ("PKA" . SPARSER::PROTEIN) ("EAG-ERG-ELK" . SPARSER::COLLECTION)
    ("a Western blot" . SPARSER::PROTEIN) ("CHO" . SPARSER::PROTEIN)
    ("a competitive inhibitor" . SPARSER::INHIBITOR)
    ("PP1 or Src40-58" . SPARSER::COLLECTION)
    ("-nitrophenol" . SPARSER::MOLECULE) ("nitrophenol" . SPARSER::MOLECULE)
    ("trans" . SPARSER::PROTEIN-FAMILY) ("ITIM" . SPARSER::PROTEIN)
    ("ITIM-hERG" . SPARSER::COLLECTION) ("substrates" . SPARSER::SUBSTRATE)
    ("Tyr" . SPARSER::AMINO-ACID) ("Leu" . SPARSER::AMINO-ACID)
    ("Val" . SPARSER::AMINO-ACID) ("rERG" . SPARSER::PROTEIN)
    ("voltage-clamp" . SPARSER::PROTEIN) ("astemizole" . SPARSER::DRUG)
    ("solution" . SPARSER::MOLECULE) ("fit" . SPARSER::PROTEIN-FAMILY)
    ("NB" . SPARSER::PROTEIN) ("period" . SPARSER::PROTEIN)
    ("solvent" . SPARSER::MOLECULE) ("mV" . SPARSER::PROTEIN)
    ("a strong hyperpolarizing step" . SPARSER::PROTEIN)
    ("hyperpolarizing step" . SPARSER::PROTEIN) ("state" . SPARSER::BIO-STATE)
    ("a sufficiently depolarizing step" . SPARSER::PROTEIN)
    ("depolarizing step" . SPARSER::PROTEIN) ("fast" . SPARSER::PROTEIN)
    ("hERG/Kv11.1" . SPARSER::COLLECTION) ("patch-clamp" . SPARSER::COLLECTION)
    ("clamp" . SPARSER::PROTEIN-FAMILY) ("patch" . SPARSER::PROTEIN)
    ("PTP" . SPARSER::PROTEIN)
    ("A Src-family kinase inhibitor (PP2) and an EGFR kinase inhibitor (AG556)"
     . SPARSER::COLLECTION)
    ("EAG and ERG" . SPARSER::COLLECTION)
    ("hEAG1 and hERG" . SPARSER::COLLECTION)
    ("ERG1 and ERG2" . SPARSER::COLLECTION) ("homology" . SPARSER::PROTEIN)
    ("MLS" . SPARSER::PROTEIN) ("SH2" . SPARSER::PROTEIN)
    ("EAG/ERG/ELK" . SPARSER::COLLECTION)
    ("EAG1 and ERG1" . SPARSER::COLLECTION) ("PTPs" . SPARSER::PROTEIN)
    ("ERG1 or EAG1" . SPARSER::COLLECTION)
    ("cardiac and vascular smooth muscle" . SPARSER::PROTEIN)
    ("myoblasts" . SPARSER::PROTEIN)
    ("EAG-related gene (ERG) and EAG-like ( ELK ) K +" . SPARSER::COLLECTION)
    ("EAG , EAG-related gene (ERG) and EAG-like ( ELK ) K +"
     . SPARSER::COLLECTION)
    ("gene (ERG)" . SPARSER::PROTEIN)
    ("six-transmembrane domain voltage-gated K +" . SPARSER::MOLECULE)
    ("subunits" . SPARSER::FRAGMENT) ("ether" . SPARSER::MOLECULE)
    ("Src and SHP-1" . SPARSER::COLLECTION)
    ("ERG1 and EAG1" . SPARSER::COLLECTION)
    ("hERG and hEAG1" . SPARSER::COLLECTION) ("substrate" . SPARSER::SUBSTRATE)
    ("PTP-1C/PTPN6/HCP" . SPARSER::COLLECTION)
    ("activator" . SPARSER::ACTIVATOR) ("HCP" . SPARSER::PROTEIN)
    ("phosphatase" . SPARSER::PHOSPHATASE)
    ("immuno-receptor" . SPARSER::COLLECTION) ("rat" . SPARSER::PROTEIN)
    ("kinases and phosphatases" . SPARSER::COLLECTION)
    ("kinases and SHP" . SPARSER::COLLECTION)
    ("phosphatases" . SPARSER::PHOSPHATASE) ("SHP" . SPARSER::PROTEIN)
    ("kinases" . SPARSER::KINASE) ("tyrosine" . SPARSER::AMINO-ACID)
    ("Src" . SPARSER::PROTEIN) ("hERG" . SPARSER::PROTEIN)
    ("KCNH1 and ERG1/Kv11.1/" . SPARSER::COLLECTION) ("ELK" . SPARSER::PROTEIN)
    ("ERG" . SPARSER::PROTEIN) ("EAG" . SPARSER::PROTEIN)
    ("KCNE1" . SPARSER::PROTEIN) ("v-Src" . SPARSER::PROTEIN)
    ("voltage-dependent" . SPARSER::PROTEIN) ("hERG1" . SPARSER::PROTEIN)
    ("Src kinase" . SPARSER::PROTEIN) ("CK1" . SPARSER::PROTEIN)
    ("RIP2" . SPARSER::PROTEIN) ("epidermal growth factor" . SPARSER::PROTEIN)
    ("protein tyrosine phosphatase" . SPARSER::PROTEIN)
    ("full-length" . SPARSER::PROTEIN) ("myc-tagged" . SPARSER::PROTEIN)
    ("p -nitrophenyl" . SPARSER::MOLECULE) ("Tween 20" . SPARSER::MOLECULE)
    ("Na 3 VO 4" . SPARSER::MOLECULE) ("NP40" . SPARSER::MOLECULE)
    ("S protein" . SPARSER::PROTEIN) ("protein-G" . SPARSER::PROTEIN)
    ("Ca 2+" . SPARSER::CALCIUM-ION) ("MgCl 2" . SPARSER::MOLECULE)
    ("AG556" . SPARSER::DRUG) ("PP2" . SPARSER::PROTEIN)
    ("ERG2" . SPARSER::PROTEIN) ("ion channels" . SPARSER::PROTEIN-FAMILY)
    ("voltage-gated" . SPARSER::PROTEIN)
    ("ion channel" . SPARSER::PROTEIN-FAMILY) ("PTPN6" . SPARSER::PROTEIN)
    ("PTP-1C" . SPARSER::PROTEIN) ("SHP-1" . SPARSER::PROTEIN)
    ("PP1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Ion channel" . SPARSER::PROTEIN-FAMILY) ("hEAG1" . SPARSER::PROTEIN)
    ("KCNH2" . SPARSER::PROTEIN) ("Kv11.1" . SPARSER::PROTEIN)
    ("ERG1" . SPARSER::PROTEIN) ("KCNH1" . SPARSER::PROTEIN)
    ("Kv10.1" . SPARSER::PROTEIN) ("EAG1" . SPARSER::PROTEIN)
    ("K +" . SPARSER::MOLECULE) ("therapeutics" . SPARSER::THERAPEUTICS)
    ("OSE or TEC" . SPARSER::COLLECTION) ("only mouse OSE" . SPARSER::PROTEIN)
    ("suppressor" . SPARSER::SUPPRESSOR) ("p53 and Smad" . SPARSER::COLLECTION)
    ("maspin" . SPARSER::PROTEIN) ("p53 or TGFβ" . SPARSER::COLLECTION)
    ("Scr and OVCA" . SPARSER::COLLECTION)
    ("TGFβ and p53" . SPARSER::COLLECTION)
    ("the parental line" . SPARSER::PROTEIN) ("Luciferase" . SPARSER::PROTEIN)
    ("variant" . SPARSER::VARIANT) ("Scr" . SPARSER::PROTEIN)
    ("Variants" . SPARSER::VARIANT) ("DMSO" . SPARSER::MOLECULE)
    ("p21 and CDC2" . SPARSER::COLLECTION) ("p53-Smad" . SPARSER::COLLECTION)
    ("cytometry" . SPARSER::PROTEIN) ("OSE and TEC" . SPARSER::COLLECTION)
    ("human immortalized OSE (IOSE80) and human fallopian tube epithelium (FTSEC)"
     . SPARSER::COLLECTION)
    ("OSE (MOSE)" . SPARSER::PROTEIN) ("SBE-luciferase" . SPARSER::COLLECTION)
    ("MOSE" . SPARSER::DRUG) ("SBE" . SPARSER::PROTEIN)
    ("TEC" . SPARSER::PROTEIN) ("OSE" . SPARSER::PROTEIN)
    ("luciferase" . SPARSER::PROTEIN) ("cisplatin" . SPARSER::DRUG)
    ("Maspin" . SPARSER::PROTEIN) ("Wnt" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("TMEPAI and DKK1" . SPARSER::COLLECTION)
    ("Factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("p53/Smad" . SPARSER::COLLECTION) ("Ras" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Smads and p53" . SPARSER::COLLECTION)
    ("p53 and Smads" . SPARSER::COLLECTION)
    ("p53 and TGFβ" . SPARSER::COLLECTION)
    ("Smads" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("receptors, and Smad" . SPARSER::COLLECTION)
    ("components" . SPARSER::COMPONENT) ("repressors" . SPARSER::REPRESSOR)
    ("activators" . SPARSER::ACTIVATOR) ("complexes" . SPARSER::BIO-COMPLEX)
    ("Smad" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("serine/threonine" . SPARSER::COLLECTION) ("peptide" . SPARSER::PEPTIDE)
    ("Mutant" . SPARSER::MUTANT) ("histidine" . SPARSER::AMINO-ACID)
    ("base" . SPARSER::PROTEIN) ("nucleotide" . SPARSER::NUCLEOTIDE)
    ("DKK1 and TMEPAI" . SPARSER::COLLECTION) ("pro" . SPARSER::PROTEIN)
    ("TMEPAI" . SPARSER::PROTEIN) ("p53 R273H" . SPARSER::PROTEIN)
    ("null p53" . SPARSER::PROTEIN) ("tube" . SPARSER::PROTEIN)
    ("serine protease inhibitor" . SPARSER::PROTEIN)
    ("T antigen" . SPARSER::MOLECULE) ("3D" . SPARSER::PROTEIN-FAMILY)
    ("a 3D" . SPARSER::PROTEIN) ("p21 protein" . SPARSER::PROTEIN)
    ("CDK1" . SPARSER::PROTEIN)
    ("cyclin dependent kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("SB431542" . SPARSER::DRUG) ("alpha-" . SPARSER::PROTEIN)
    ("CDC2" . SPARSER::PROTEIN) ("Sulforhodamine B" . SPARSER::MOLECULE)
    ("SB-431542" . SPARSER::DRUG) ("TGFβ1" . SPARSER::PROTEIN)
    ("LT1" . SPARSER::PROTEIN)
    ("growth factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("G418" . SPARSER::MOLECULE) ("s 5A" . SPARSER::PROTEIN)
    ("L-glutamine" . SPARSER::MOLECULE)
    ("negative regulator" . SPARSER::NEGATIVE-REGULATOR)
    ("p63" . SPARSER::HUMAN-PROTEIN-FAMILY) ("p21" . SPARSER::PROTEIN)
    ("Smads 2" . SPARSER::PROTEIN) ("growth factors" . SPARSER::GROWTH-FACTOR)
    ("amino acid" . SPARSER::AMINO-ACID) ("TP53" . SPARSER::PROTEIN)
    ("transcription factor" . SPARSER::PROTEIN)
    ("tumor suppressor p53" . SPARSER::PROTEIN) ("DKK1" . SPARSER::PROTEIN)
    ("TGFβ" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("Transforming Growth Factor Beta" . SPARSER::PROTEIN)
    ("p53" . SPARSER::PROTEIN) ("reagents" . SPARSER::MOLECULE)
    ("DNA" . SPARSER::DNA) ("PFS and BORR" . SPARSER::COLLECTION)
    ("percent mutant alleles" . SPARSER::ALLELE) ("n " . SPARSER::PROTEIN)
    ("alleles" . SPARSER::ALLELE) ("OPA" . SPARSER::PROTEIN)
    ("PPA" . SPARSER::PROTEIN) ("MPP" . SPARSER::PROTEIN)
    ("arms" . SPARSER::PROTEIN) ("HR" . SPARSER::PROTEIN)
    ("log-rank" . SPARSER::COLLECTION) ("CI" . SPARSER::PROTEIN)
    ("rank" . SPARSER::PROTEIN) ("log" . SPARSER::PROTEIN)
    ("IVD" . SPARSER::PROTEIN) ("exon" . SPARSER::PROTEIN)
    ("NCCN" . SPARSER::PROTEIN) ("AMP" . SPARSER::AMP)
    ("arm" . SPARSER::PROTEIN) ("PFS" . SPARSER::PROTEIN)
    ("Erlotinib" . SPARSER::DRUG) ("platinum" . SPARSER::MOLECULE)
    ("KRAS" . SPARSER::PROTEIN) ("cetuximab" . SPARSER::DRUG)
    ("antibody" . SPARSER::ANTIBODY)
    ("predictive biomarkers" . SPARSER::MOLECULE)
    ("The optimal approval path" . SPARSER::PROTEIN)
    ("path" . SPARSER::PROTEIN) ("drug" . SPARSER::DRUG)
    ("biomarker" . SPARSER::MOLECULE) ("FDA" . SPARSER::PROTEIN)
    ("biomarkers" . SPARSER::MOLECULE) ("LDTs" . SPARSER::DRUG)
    ("TKIs" . SPARSER::PROTEIN) ("EGFR" . SPARSER::PROTEIN)
    ("erlotinib" . SPARSER::DRUG) ("TKI" . SPARSER::PROTEIN)
    ("6.3" . SPARSER::PROTEIN) ("anti- EGFR" . SPARSER::PROTEIN)
    ("tyrosine kinase" . SPARSER::PROTEIN)
    ("cytokines/receptors" . SPARSER::COLLECTION)
    ("subtypes" . SPARSER::PROTEIN) ("seven" . SPARSER::PROTEIN)
    ("JAK/STAT" . SPARSER::COLLECTION) ("families" . SPARSER::PROTEIN-FAMILY)
    ("regulator" . SPARSER::REGULATOR)
    ("JAK2 and the differentially" . SPARSER::COLLECTION)
    ("STAT" . SPARSER::PROTEIN) ("JAKs" . SPARSER::PROTEIN)
    ("JAK" . SPARSER::PROTEIN) ("gamma and CCL2" . SPARSER::COLLECTION)
    ("gamma" . SPARSER::PROTEIN) ("INF" . SPARSER::PROTEIN)
    ("IL-6, IL-6R, CCL2 and IFNGR2" . SPARSER::COLLECTION)
    ("fibrillin-1, and Ehlers-Danlos" . SPARSER::COLLECTION)
    ("CCL2, KITLG and EPOR" . SPARSER::COLLECTION)
    ("IL-6/IL-6R" . SPARSER::COLLECTION)
    ("protein-protein" . SPARSER::COLLECTION)
    ("Protein-protein" . SPARSER::COLLECTION) ("Protein" . SPARSER::PROTEIN)
    ("hub" . SPARSER::PROTEIN) ("ligand (KITLG)" . SPARSER::MOLECULE)
    ("totally 112 genes" . SPARSER::GENE) ("OSMR" . SPARSER::PROTEIN)
    ("CSFR" . SPARSER::PROTEIN) ("EPOR" . SPARSER::PROTEIN)
    ("Chemokine" . SPARSER::PROTEIN) ("hypoxia" . SPARSER::PROTEIN)
    ("TLR" . SPARSER::PROTEIN) ("GSEA" . SPARSER::PROTEIN)
    ("PER2, CNN1, MCM2, APITD1, JAK2, HIF1A, IL1R1 and CDC45L"
     . SPARSER::COLLECTION)
    ("call" . SPARSER::PROTEIN)
    ("these containing at least 10 genes" . SPARSER::GENE)
    ("part" . SPARSER::COMPONENT)
    ("IL-6, KITLG and CCL2" . SPARSER::COLLECTION)
    ("JAK2, IL-6, KITLG and CCL2" . SPARSER::COLLECTION)
    ("KITLG" . SPARSER::PROTEIN) ("RNA" . SPARSER::RNA)
    ("cytokine" . SPARSER::PROTEIN) ("Janus" . SPARSER::PROTEIN-FAMILY)
    ("a transmembrane glycoprotein" . SPARSER::PROTEIN)
    ("family" . SPARSER::PROTEIN-FAMILY) ("MMPs" . SPARSER::PROTEIN)
    ("metalloproteinases" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("matrix" . SPARSER::PROTEIN-FAMILY)
    ("CDC45L, ST14, CKAP2L, TIMP1, PHLDA1, LHFPL2, PCSK1, GINS2, TMEM158, TSPANS, ECT2, CCDC34, VARS, CDC7, NT5DC2, LOC646993 and PPIF"
     . SPARSER::COLLECTION)
    ("RYR2, C5orf24, JAK2, REEP1, THSD4, BRP44L, RNF115 and BAMBI"
     . SPARSER::COLLECTION)
    ("BAMBI" . SPARSER::PROTEIN) ("orf" . SPARSER::PROTEIN)
    ("PPIF" . SPARSER::PROTEIN) ("VARS" . SPARSER::PROTEIN)
    ("smooth muscle" . SPARSER::PROTEIN) ("FDR" . SPARSER::PROTEIN)
    ("DEGs" . SPARSER::PROTEIN) ("Gene" . SPARSER::GENE)
    ("the aortic media" . SPARSER::PROTEIN) ("substance" . SPARSER::SUBSTANCE)
    ("HE" . SPARSER::PROTEIN) ("Stanford type A AAD" . SPARSER::PROTEIN)
    ("aid" . SPARSER::PROTEIN) ("states" . SPARSER::BIO-STATE)
    ("AAD" . SPARSER::PROTEIN)
    ("cytokines and receptors" . SPARSER::COLLECTION)
    ("cytokines" . SPARSER::PROTEIN) ("type" . TYPE)
    ("differentially" . SPARSER::PROTEIN) ("CD68" . SPARSER::PROTEIN)
    ("CD3" . SPARSER::PROTEIN) ("IL-5" . SPARSER::PROTEIN)
    ("STAT3" . SPARSER::PROTEIN) ("IL-2" . SPARSER::PROTEIN)
    ("IFNGR2" . SPARSER::PROTEIN) ("type III" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("fibrillin-1" . SPARSER::PROTEIN) ("IL6R" . SPARSER::PROTEIN)
    ("IL6" . SPARSER::PROTEIN) ("IL-13RA1" . SPARSER::PROTEIN)
    ("IL-27RA" . SPARSER::PROTEIN) ("IL-5RA" . SPARSER::PROTEIN)
    ("IL-6R" . SPARSER::PROTEIN) ("IL-24" . SPARSER::PROTEIN)
    ("CXCL1" . SPARSER::PROTEIN) ("C-C motif" . SPARSER::PROTEIN)
    ("IL1R1" . SPARSER::PROTEIN) ("HIF1A" . SPARSER::PROTEIN)
    ("APITD1" . SPARSER::PROTEIN) ("MCM2" . SPARSER::PROTEIN)
    ("CNN1" . SPARSER::PROTEIN) ("PER2" . SPARSER::PROTEIN)
    ("CCL2" . SPARSER::PROTEIN) ("IL-6" . SPARSER::PROTEIN)
    ("receptor tyrosine kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("type I" . SPARSER::HUMAN-PROTEIN-FAMILY) ("FBN1" . SPARSER::PROTEIN)
    ("protein 2" . SPARSER::PROTEIN) ("RNF115" . SPARSER::PROTEIN)
    ("BRP44L" . SPARSER::PROTEIN) ("THSD4" . SPARSER::PROTEIN)
    ("REEP1" . SPARSER::PROTEIN) ("RYR2" . SPARSER::PROTEIN)
    ("NT5DC2" . SPARSER::PROTEIN) ("CDC7" . SPARSER::PROTEIN)
    ("CCDC34" . SPARSER::PROTEIN) ("ECT2" . SPARSER::PROTEIN)
    ("TMEM158" . SPARSER::PROTEIN) ("GINS2" . SPARSER::PROTEIN)
    ("PCSK1" . SPARSER::PROTEIN) ("LHFPL2" . SPARSER::PROTEIN)
    ("PHLDA1" . SPARSER::PROTEIN) ("TIMP1" . SPARSER::PROTEIN)
    ("ST14" . SPARSER::PROTEIN) ("CDC45L" . SPARSER::PROTEIN)
    ("log2" . SPARSER::PROTEIN) ("Marfan syndrome" . SPARSER::PROTEIN)
    ("TGF beta" . SPARSER::PROTEIN)
    ("transforming growth factor-beta" . SPARSER::PROTEIN)
    ("JAK2" . SPARSER::PROTEIN) ("only 7.7% dacarbazine" . SPARSER::DRUG)
    ("BRAF- or MEK" . SPARSER::COLLECTION) ("BRAF-" . SPARSER::PROTEIN)
    ("about prognostic impact" . SPARSER::PROTEIN)
    ("the entire cohort" . SPARSER::MOLECULE)
    ("BRAF or MEK" . SPARSER::COLLECTION) ("cohort" . SPARSER::MOLECULE)
    ("the prognostic impact" . SPARSER::PROTEIN) ("aim" . SPARSER::PROTEIN)
    ("NRAS or BRAF" . SPARSER::COLLECTION)
    ("BRAF or NRAS" . SPARSER::COLLECTION)
    ("temozolomide and bevacizumab" . SPARSER::COLLECTION)
    ("-mutant" . SPARSER::MUTANT) ("bevacizumab" . SPARSER::DRUG)
    ("NRAS" . SPARSER::PROTEIN) ("two Australian cohorts" . SPARSER::MOLECULE)
    ("States" . SPARSER::BIO-STATE) ("cohorts" . SPARSER::MOLECULE)
    ("LDH" . SPARSER::PROTEIN) ("Cox" . SPARSER::PROTEIN)
    ("cytotoxic" . SPARSER::PROTEIN) ("age" . SPARSER::PROTEIN)
    ("dehydrogenase" . SPARSER::PROTEIN) ("lactate" . SPARSER::LACTATE)
    ("MEK-" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("MEK" . SPARSER::HUMAN-PROTEIN-FAMILY) ("first-line" . SPARSER::PROTEIN)
    ("line" . SPARSER::PROTEIN)
    ("dacarbazine or temozolomide" . SPARSER::COLLECTION)
    ("temozolomide" . SPARSER::DRUG) ("dacarbazine" . SPARSER::DRUG)
    ("melanoma" . SPARSER::PROTEIN) ("BRAF" . SPARSER::PROTEIN)
    ("HR 2" . SPARSER::PROTEIN) ("and 1" . SPARSER::PROTEIN)
    ("M1a" . SPARSER::MOLECULE) ("M1" . SPARSER::MOLECULE)
    ("agonist" . SPARSER::AGONIST) ("BPA-" . SPARSER::PROTEIN)
    ("targets" . SPARSER::TARGET-PROTEIN) ("threonine" . SPARSER::AMINO-ACID)
    ("Nar or BPA" . SPARSER::COLLECTION) ("ERK/MAPK" . SPARSER::COLLECTION)
    ("PI3K/AKT" . SPARSER::COLLECTION) ("AKT" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("promoters" . SPARSER::PROMOTER) ("regulators" . SPARSER::REGULATOR)
    ("genistein" . SPARSER::PROTEIN) ("flavonoids" . SPARSER::MOLECULE)
    ("miRNA" . SPARSER::MICRO-RNA) ("PRs" . SPARSER::PROTEIN)
    ("progesterone" . SPARSER::PROTEIN)
    ("polyubiquitination" . SPARSER::PROTEIN)
    ("only BPA mimics E2" . SPARSER::MOLECULE)
    ("xenoestrogen" . SPARSER::MOLECULE) ("antagonist" . SPARSER::MOLECULE)
    ("kinase" . SPARSER::KINASE) ("inositol" . SPARSER::PROTEIN)
    ("phosphatidyl" . SPARSER::MOLECULE) ("E2-" . SPARSER::MOLECULE)
    ("Mg132" . SPARSER::PROTEIN) ("E2, BPA or CHX" . SPARSER::COLLECTION)
    ("CHX" . SPARSER::PROTEIN) ("cycloheximide (CHX)" . SPARSER::PROTEIN)
    ("E2, BPA and Nar" . SPARSER::COLLECTION) ("neo" . SPARSER::PROTEIN)
    ("cycloheximide" . SPARSER::PROTEIN) ("ERα and PR" . SPARSER::COLLECTION)
    ("ERα, pS2/TIFF, CatD or PR" . SPARSER::COLLECTION)
    ("E2 or Nar" . SPARSER::COLLECTION) ("E2 and BPA" . SPARSER::COLLECTION)
    ("Nar or E2" . SPARSER::COLLECTION)
    ("E2 (10 −8 M) or BPA administration" . SPARSER::COLLECTION)
    ("BPA and E2" . SPARSER::COLLECTION) ("impact" . SPARSER::PROTEIN)
    ("Nar and BPA" . SPARSER::COLLECTION) ("ERs" . SPARSER::PROTEIN)
    ("RT" . SPARSER::PROTEIN) ("typical E2:ERα target genes" . SPARSER::GENE)
    ("PR" . SPARSER::HUMAN-PROTEIN-FAMILY) ("trigger" . SPARSER::PROTEIN)
    ("BPA or Nar" . SPARSER::COLLECTION) ("serine" . SPARSER::AMINO-ACID)
    ("Impact" . SPARSER::PROTEIN) ("Naringenin" . SPARSER::DRUG)
    ("Bisphenol" . SPARSER::MOLECULE) ("BPA and Nar" . SPARSER::COLLECTION)
    ("Nar and 10 −5 M BPA" . SPARSER::COLLECTION)
    ("ERE" . SPARSER::DNA-RESPONSE-ELEMENT) ("flavonoid" . SPARSER::MOLECULE)
    ("food" . SPARSER::MOLECULE) ("group" . SPARSER::MOLECULE)
    ("heterogeneous chemicals" . SPARSER::MOLECULE)
    ("Endocrine" . SPARSER::PROTEIN) ("molecules" . SPARSER::MOLECULE)
    ("example" . SPARSER::EXAMPLE) ("miRNAs" . SPARSER::MICRO-RNA)
    ("microRNAs" . SPARSER::MICRO-RNA) ("promoter" . SPARSER::PROMOTER)
    ("post" . SPARSER::PROTEIN) ("ERα and ERβ" . SPARSER::COLLECTION)
    ("response element (ERE)" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("genes" . SPARSER::GENE) ("ligand" . SPARSER::MOLECULE)
    ("estrogen" . SPARSER::MOLECULE) ("hormone" . SPARSER::PROTEIN)
    ("p38/MAPK" . SPARSER::COLLECTION) ("complex" . SPARSER::BIO-COMPLEX)
    ("protein and mRNA" . SPARSER::COLLECTION) ("mRNA" . SPARSER::RNA)
    ("E2 or BPA" . SPARSER::COLLECTION) ("hrs" . SPARSER::PROTEIN)
    ("Ser" . SPARSER::AMINO-ACID) ("ligands" . SPARSER::LIGAND)
    ("Nar" . SPARSER::PROTEIN) ("naringenin" . SPARSER::DRUG)
    ("BPA" . SPARSER::PROTEIN) ("bisphenol" . SPARSER::MOLECULE)
    ("nuclear" . SPARSER::PROTEIN) ("xenoestrogens" . SPARSER::MOLECULE)
    ("endocrine" . SPARSER::PROTEIN) ("chemicals" . SPARSER::MOLECULE)
    ("class" . CLASS) ("target" . SPARSER::TARGET-PROTEIN)
    ("step" . SPARSER::PROTEIN) ("ER" . SPARSER::PROTEIN)
    ("extracellular regulated kinase" . SPARSER::PROTEIN)
    ("PI3K" . SPARSER::PROTEIN)
    ("glyceraldehyde 3-phosphate" . SPARSER::MOLECULE)
    ("progesterone receptor" . SPARSER::PROTEIN)
    ("cathepsin D" . SPARSER::PROTEIN) ("pS2" . SPARSER::PROTEIN)
    ("MG132" . SPARSER::PROTEIN) ("Anti-" . SPARSER::ANTIBODY)
    ("P4" . SPARSER::HUMAN-PROTEIN-FAMILY) ("phenol red" . SPARSER::DRUG)
    ("colon cancer" . SPARSER::PROTEIN) ("ERβ" . SPARSER::PROTEIN)
    ("response element" . SPARSER::DNA-RESPONSE-ELEMENT)
    ("p38" . SPARSER::HUMAN-PROTEIN-FAMILY) ("ERα" . SPARSER::PROTEIN)
    ("estrogen receptor" . SPARSER::PROTEIN) ("E2" . SPARSER::MOLECULE)
    ("17β-estradiol" . SPARSER::PROTEIN)
    ("Topical inhibitors" . SPARSER::INHIBITOR)
    ("inhibitors" . SPARSER::INHIBITOR)
    ("factors" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("arginine and lysine" . SPARSER::COLLECTION)
    ("lysine" . SPARSER::AMINO-ACID) ("arginine" . SPARSER::AMINO-ACID)
    ("ART" . SPARSER::PROTEIN) ("gene" . SPARSER::PROTEIN)
    ("Ig" . SPARSER::MOLECULE) ("factor" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("case" . SPARSER::PROTEIN) ("form" . SPARSER::FORM)
    ("nectins" . SPARSER::PROTEIN) ("EMT" . SPARSER::PROTEIN)
    ("ing" . SPARSER::PROTEIN-FAMILY) ("ERK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gp120-" . SPARSER::PROTEIN) ("nectin-1 and gD" . SPARSER::COLLECTION)
    ("-nectin-1" . SPARSER::COLLECTION) ("foci" . SPARSER::PROTEIN)
    ("HVEM" . SPARSER::PROTEIN) ("goat" . SPARSER::PROTEIN)
    ("aa" . SPARSER::MOLECULE) ("CK" . SPARSER::PROTEIN)
    ("antibodies" . SPARSER::ANTIBODY) ("gB" . SPARSER::PROTEIN)
    ("min" . SPARSER::PROTEIN) ("active and inactive" . SPARSER::COLLECTION)
    ("substantially more nectin-1" . SPARSER::PROTEIN)
    ("avidin" . SPARSER::PROTEIN) ("LC" . SPARSER::PROTEIN)
    ("E-cadherin and nectin-1" . SPARSER::COLLECTION)
    ("inactive or active" . SPARSER::COLLECTION)
    ("nectin-1 and E-cadherin" . SPARSER::COLLECTION)
    ("calcium" . SPARSER::CALCIUM)
    ("proteins and inhibitor" . SPARSER::COLLECTION)
    ("inhibitor" . SPARSER::INHIBITOR)
    ("total and phosphorylated ERK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("blot" . SPARSER::PROTEIN) ("active or inactive" . SPARSER::COLLECTION)
    ("MAPKs" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("integrins, and CCR5 and CXCR4" . SPARSER::COLLECTION)
    ("CCR5 and CXCR4" . SPARSER::COLLECTION)
    ("CXCR4 and CCR5" . SPARSER::COLLECTION) ("macrophages" . SPARSER::PROTEIN)
    ("receptors" . SPARSER::RECEPTOR) ("chemokine" . SPARSER::PROTEIN)
    ("integrins" . SPARSER::PROTEIN)
    ("inactive and active" . SPARSER::COLLECTION) ("SF" . SPARSER::PROTEIN)
    ("media" . SPARSER::PROTEIN) ("the key glycoproteins" . SPARSER::PROTEIN)
    ("extracellular" . SPARSER::PROTEIN) ("t" . SPARSER::PROTEIN)
    ("glycoproteins" . SPARSER::PROTEIN)
    ("immediate-early protein" . SPARSER::PROTEIN) ("ICP" . SPARSER::PROTEIN)
    ("IgG" . SPARSER::HUMAN-PROTEIN-FAMILY) ("forms" . SPARSER::FORM)
    ("active" . SPARSER::ACTIVE) ("TER" . SPARSER::PROTEIN)
    ("heat-inactivated gp120" . SPARSER::PROTEIN)
    ("inactive" . SPARSER::INACTIVE) ("integrin" . SPARSER::PROTEIN)
    ("mutant" . SPARSER::MUTANT) ("keratinocytes" . SPARSER::PROTEIN)
    ("glycoprotein" . SPARSER::PROTEIN)
    ("a poliovirus receptor-related protein 1 (PRR1/HveC/CD111) and a Ca2+-independent cell adhesion protein"
     . SPARSER::COLLECTION)
    ("PRR1/HveC/CD111" . SPARSER::COLLECTION) ("HveC" . SPARSER::PROTEIN)
    ("MAPK" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("the mucosal barrier" . SPARSER::PROTEIN) ("barrier" . SPARSER::PROTEIN)
    ("/CD8" . SPARSER::COLLECTION) ("lymphoid" . SPARSER::PROTEIN)
    ("nectin-1 and HSV-1" . SPARSER::COLLECTION)
    ("Antibodies" . SPARSER::ANTIBODY)
    ("an adhesion protein and critical receptor" . SPARSER::COLLECTION)
    ("sequestered nectin-1, an adhesion protein and critical receptor"
     . SPARSER::COLLECTION)
    ("receptor" . SPARSER::PROTEIN) ("protein" . SPARSER::PROTEIN)
    ("proteins" . SPARSER::PROTEIN) ("types" . TYPE)
    ("amino acids" . SPARSER::AMINO-ACID) ("nectin-2" . SPARSER::PROTEIN)
    ("fibroblast growth factor-2" . SPARSER::PROTEIN)
    ("transforming growth factor-β1" . SPARSER::PROTEIN)
    ("heparan sulfate" . SPARSER::MOLECULE)
    ("herpesvirus entry mediator" . SPARSER::PROTEIN)
    ("cell membrane" . SPARSER::PROTEIN) ("CCR5" . SPARSER::PROTEIN)
    ("CXCR4" . SPARSER::PROTEIN) ("–3" . SPARSER::PROTEIN)
    ("ERK1/2" . SPARSER::HUMAN-PROTEIN-FAMILY) ("U0126" . SPARSER::DRUG)
    ("streptavidin–agarose" . SPARSER::DRUG) ("Nonidet P-40" . SPARSER::DRUG)
    ("sulfo-NHS" . SPARSER::DRUG) ("β-actin" . SPARSER::PROTEIN)
    ("for 3" . SPARSER::PROTEIN) ("monoclonal antibody" . SPARSER::DRUG)
    ("SP5" . SPARSER::PROTEIN) ("-3" . SPARSER::PROTEIN)
    ("ICP4" . SPARSER::PROTEIN) ("Triton X-100" . SPARSER::MOLECULE)
    ("E-cadherin" . SPARSER::PROTEIN) ("RGD motif" . SPARSER::PROTEIN)
    ("p24" . SPARSER::HUMAN-PROTEIN-FAMILY)
    (NIL . SPARSER::HUMAN-PROTEIN-FAMILY) ("anti-" . SPARSER::ANTIBODY)
    ("ZO-1" . SPARSER::PROTEIN) ("CO 2" . SPARSER::PROTEIN)
    ("immunoglobulin superfamily" . SPARSER::PROTEIN)
    ("Ca2+" . SPARSER::CALCIUM-ION) ("CD111" . SPARSER::PROTEIN)
    ("PRR1" . SPARSER::PROTEIN)
    ("poliovirus receptor-related protein 1" . SPARSER::PROTEIN)
    ("Nectin-1" . SPARSER::PROTEIN) ("CD8" . SPARSER::PROTEIN)
    ("type 1" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("envelope glycoprotein" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("nectin-1" . SPARSER::PROTEIN)
    ("mitogen-activated protein kinase" . SPARSER::HUMAN-PROTEIN-FAMILY)
    ("gp120" . SPARSER::PROTEIN)))