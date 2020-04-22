;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "examples"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

;; Broken out from Biology-workspace 10/8/15

(in-package :sparser)

;;;---------------
;;; Example texts
;;;---------------

(defun cov-reactome ()
  (p "Severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) is a strain of the species severe acute respiratory syndrome-related coronavirus (SARSr-CoV). It belongs to the family Coronaviridae which are a family of enveloped, positive-sense, single-stranded RNA viruses. SARS-CoV-2 likely originated from a bat coronavirus, to which it has a close genetic similarity. A highly contagious disease in humans, transmission occurs via liquid droplets from coughs or sneezes in a range of around 2 metres. SARS-CoV-2 is the cause of the ongoing pandemic of coronavirus disease 2019"))

(defun yellow-fever ()
  (p "Yellow fever, a mosquito-borne flavivirus, was inescapable in the 19th-century Deep South and a point of near-constant terror in New Orleans, the region’s hub. In the six decades between the Louisiana Purchase and the Civil War, New Orleans experienced 22 full-blown epidemics, cumulatively killing over 150,000 people. (Perhaps another 150,000 died in nearby American cities.) The virus killed about half of all those it infected and it killed them horribly, with many victims vomiting thick black blood, the consistency and color of coffee grounds. The lucky survivors became “acclimated,” or immune for life."))

;; From David Mudd, guest column in the Arlington Advocate 4/9/20
(defun mudd-p1 ()
  (p "The COVID-19 epidemic started in Wuhan China in late December at a market where live bats and other wild animals are sold along with chickens and pigs. The virus transformed into a new and dangerous virus in humans, spreading like wildfire as no one has immunity to the virus and there are no proven treatments."))
(defun mudd-p2 ()
  (p "The virus is highly contagious, spread by respiratory droplets from coughing sneezing and breathing. We contaminate our fingers from touching the moth and nose and then all manner of surfaces. Others touch those surfaces and then become infected from touching their noses and mouths. The virus can stay contagious on plastic and metal for several days unless destroyed with 60 percent alcohol or various detergents. Thorough hand washing is a very effective method of preventing the virus from spreading."))

;;----- Brent's texts selected from article-preview-8
#|
(p "HPAI virus and MERS-CoV induce repressive histone modifications, which downregulate expression of ISG subsets.")
(p "Notably, influenza A virus NS1 appears to play a central role in this histone-mediated downregulation")

(p "NS1 contributes to ISG control via altered histone methylation")

(p "H1N1-09 quickly and robustly induced the majority (97%) of ISGs")


(p "However, H5N1-VN1203 induced robust induction in only 35% of the consensus annotated ISGs")

(p "several ISGs showed only minimal, if any, stimulation (e.g., TLR3, SERPIN1), and ACE2O")

(p "H1N1-09, the limited control of ISG RNA expression also manifested in robust ISG protein production; 27 ISG proteins were among 530 significantly upregulated host proteins")

(p "H5N1-VN1203 infection had reduced protein expression of both STAT1 (27.4% decrease at 24 hpi) and PKR (28.5% decrease at 18 hpi) relative to that of mock; similarly, MERS-CoV reduced the protein level of STAT1 (15.8% decrease at 18 to 24 hpi) and PKR (20.2% decrease at 18 to 24 hpi). In contrast, both proteins were significantly increased following both H1N1-09 and SARS-CoV infection")

(p "both H5N1-VN1203 and H1N1-09 infection resulted in robust transcription of type I and type III IFN molecules (Fig. 2A); IFN-β1, IFN-α5, and IFN-λ1 were each strongly induced in both influenza strains.")

;;(cid:3) = beta
;;(cid:2) = alpha
;;(cid:4) = lambda

[[ can't find the prior one in the source ]]

(p "CoV infections more tightly block recognition and/or disrupt IFN induction.")

(p "The results indicated that CXCL10 and IFIT1, highly expressed ISGs following H5N1-VN1203 infection (Fig. 3A), had a corresponding increase in STAT1 binding in their 5' promoter region at 12 hpi (Fig. 3B). In contrast, CFHR1 and APOL6, ISGs with decreased expression, had no increase in STAT1 binding despite the presence of activated STAT1 in those cells.")

(p "the repressive H3K27me3 revealed enhanced association with CFHR1, DDX58, and SMAD9L during H5N1-VN1203 infection")

(p "both MERS-CoV and SARS-CoV maintain delayed IFN induction")

(p "two genes (TLR3 and CFHR1) downregulated in both H5N1VN1203 and MERS-CoV, but not SARS-CoV infection")

(p "DDX58, a gene downregulated by H5N1-VN1203 but not MERS-CoV")

(p "Having established NS1 as a required component for strong ISG manipulation and downregulation")

(p "mutations in PB1-F2 and PB2 resulted in significant ISG augmentation, the majority of ISGs maintain low or downregulated expression")

(p "NS1 truncation halted ISG downregulation by H5N1-VN1203")

(p "ORF4b, a MERS accessory protein with no homologue in SARS-CoV, maintains a purported nuclear localization signal, exhibits nuclear localization based on transfection, and may play a role in IFN antagonism")


;;--- Brent's excerpts from 2020.03.24

(p "SARS-CoV-2 elicits a muted response  that  lacks  robust  induction  of  a  subset  of  cytokines  including  the  Type  I  and  Type  III  interferons as well as a numerous chemokines.")

(p "SARS-CoV-2  infection  shows  a  significant  lack of Type I and III interferon (IFN-I and IFN-III) expression")

(p "A  highly  interacting  cluster  enriched  in  genes  involved  in  the  cellular  response  to  virus  infection  (GO:0009615, FDR << 0.0001), mainly composed of type-I ISGs (GO:0034340, FDR <<  0.0001),  and  a  second  cluster  enriched  in  genes  involved  in  the  humoral  immune  response  (GO:0006959,  FDR  <<  0.0001),  which  further  subdivided  into  two  smaller  clusters  enriched  in  chemokines  and  cytokines  (GO:0005125,  FDR  <  0.001),  and  complement  proteins  (GO:0006956,  FDR  <  0.0005)")

(p "we  observe  the  induction  of  well-characterized  direct  effectors  of  the  innate  immune  response  including:  MX1,  IFITM3,  SAMHD1  and  TRIM25,  as  well  as  the  induction  of  viral  RNA  sensors  such  as  RIG-I  and  the  OAS1-3  genes")

(p "SARS-CoV-2  lacks  the  induction  of  IFN-I  and  IFN-III  genes")

(p "two  cytokines  (EDN1  and  TNFSF15)  were  uniquely upregulated")

(p "Despite  the  apparent  muted  induction  of  antiviral  genes  in  response  to  SARS-CoV-2,  we do observe a significant up regulation of well-characterized ISGs including: IFIT1-3, ISG15,  DDX58,  and  others.")

(p "Amongst  the  genes  that  are  uniquely  present  when  comparing  SARS-CoV-2  to  other  respiratory  viruses  are  EDN1  and  TNFSF15  -  two  putative biomarkers that may contribute to COVID-19 pathology.")
|#

;;---- Scott's 11/21/17 paragraphs to illustrate interesting DefNP anaphora
;; Lifted from Reactome curators descriptions

(defun scott-1 ()
  (p "In mammals there are three AKT isoforms (AKT1-3) encoded by
three separate genes. The three isoforms share a high degree of
amino acid identity and have indistinguishable substrate specificity
in vitro. However, isoform-preferred substrates in vivo cannot
be ruled out. The relative expression of the three isoforms
differs in different mammalian tissues: AKT1 is the predominant
isoform in the majority of tissues, AKT2 is the predominant isoform
in insulin-responsive tissues, and AKT3 is the predominant isoform
in brain and testes. All 3 isoforms are expressed in human and
mouse platelets (Yin et al. 2008; O'Brien et al. 2008)."))

(defun scott-2 ()
  (p "Nuclear MAPKs may also be inactivated by nuclear forms of class III DUSPs, 
including DUSP8, 10 and 16, although the preferred substrate of these enzymes 
are the p38 and JNK MAP kinases (reviewed in Bermudez et al, 2010; Kondoh and 
Nishida, 2007)."))

(defun scott-3 ()
  (p "RAF1 is phosphorylated by activated MAPK at 6 serine residues (S29, 
S43, S289, S296, S301 and S642). MAPK-dependent hyperphosphorylation 
of RAF1 abrogates the ability of activated RAF1 to interact with RAS 
and is coincident with inactivation of RAF1. RAF1 proteins containing 
mutation of these phosphorylation sites persist at the plasma membrane, 
show sustained S338 phosphorylation and persistent activation 
relative to WT RAF1 protein."))

(defun scott-4 ()
  (p "Activated MAPK proteins negatively regulate MAP2K1:MAP2K2 heterodimers 
by phosphorylating MAP2K1 at T292, a residue that is not present in MAP2K2. 
Phosphorylation of this site in MAP2K1 promotes the dephosphorylation of 
the MAP2K phosphorylated activation loop (AL) by an unknown mechanism, 
establishing a negative feedback loop that limits MAPK signaling (Catalanotti et al, 
2009; Brunet et al, 1994; Xu et al, 1999). 
Deletion of MAP2K1 or mutation of this site prolongs MAP2K2 AL phosphorylation 
and MAPK activation (Catalanotti et al, 2009)."))


;;--- Brent

(defun brent-CaM-Ras ()
  (p "Fine tuning of Ras activity is widely known as a mechanism to induce
different cellular responses. Recently, we have shown that calmodulin (CaM)
binds to K-Ras and that K-Ras phosphorylation inhibits its
interaction with CaM. In this study we report that CaM inhibits K-Ras
phosphorylation at Ser181 by protein kinase C (PKC) in vivo, and this is
a mechanism to modulate K-Ras activity and signaling. Although CaM
inhibition increased the activation of endogenous K-Ras, PKC inhibition
decreased its activation status. We demonstrate that K-Ras
phosphorylation decreased susceptibility to p120GAP activity.
Accordingly, we also observed that non-phosphorylable K-Ras mutant
exhibits a less sustained activation profile and do not efficiently
activate AKT at low growth factor doses compared with wild-type K-Ras.
It is interesting that the physiological responses induced by K-Ras are
affected by this phosphorylation; when K-Ras cannot be phosphorylated it
exhibits a remarkably decreased ability to stimulate proliferation in
non-saturated serum conditions. Finally, we demonstrate that
phosphorylation also regulates oncogenic K-Ras functions, as focus
formation capacity, mobility and apoptosis resistance upon adriamycin
treatment of cells expressing oncogenic K-Ras that cannot be
phosphorylated are highly compromised. Moreover, at low serum
concentration proliferation and survival is practically inhibited when
cells cannot phosphorylate oncogenic K-Ras. In this condition, K-Ras
phosphorylation is essential to ensure a proper activation of
mitogen-activated protein kinase and PI3K/AKT pathways. In summary, our
findings suggest that the interplay between CaM interaction and PKC
phosphorylation is essential to regulate non-oncogenic and oncogenic
K-Ras activity and functionality."))


(defun mapk-sites ()
  ;; From results section of January ASPP2 article, first paragraph
  ;; of the section "ASPP2 is a novel substrate of MAPK"
  (p "Interestingly, we observed two conserved putative MAPK 
phosphorylation sites in ASPP1 and ASPP2. 
The ASPP1 sites are at residues 671 and 746, 
and the ASPP2 sites are at residues 698 and 827."))

(defun figure-7 ()
  ;; of Turke et al. "MKE inhibition leads ..."
  ;; Caption of figure seven  on page 20 minus the portion in bold
  (p "In untreated cells, EGFR is phosphorylated at T669 by MEK/ERK,
which inhibits activation of EGFR and ERBB3. In the presence of AZD6244,
ERK is inhibited and T669 phosphorylation is blocked, increasing
EGFR and ERBB3 tyrosine phosphorylation and up-regulating downstream signaling."))

(defun empty-this-mutant () ;; for ticket 12
  ;; it's p85<alpha> though its not rinting like one
  (p "Thus, we introduced the same mutations (R358A and R649A in 
the FLVRD/E motif of each of the SH2 domains of p85ﰀ) to generate 
the EGFP–p85ﰀ RARA mutant. As expected, although this mutant 
bound the PI 3-kinase p110 catalytic sub- unit normally, 
it could no longer bind tyrosine-phosphorylated IRS-1 
after IGF-1 stimulation."))

(defun cells-defNP ()
  ;; from the December passages, sentences 17 and 18
  (p "BRAF is not active and is not required for MEK/ERK activation
in RAS mutant cells.
Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells."))


#| From Reactome. Nice conjunctions. Removed the referents
   also good of a statement about RAF being refined to BRAF. 
"Activated RAF phosphorylates the MEK kinases MAP2K1 and MAP2K2 
on 2 serine residues in the MAP2K activation loop (S218 and S222 in MAP2K1 
and S222 and S226 in MAP2K2. 
Although all three RAF kinases can phosphorylate MAP2K1 and MAP2K2, 
BRAF appears to be the primary activator in vivo."
|#

#| Reactome http://www.reactome.org/PathwayBrowser/#DIAGRAM=177929&ID=179467&PATH=162582
  "Gab1 binds phosphatidylinositol-3,4,5-trisphosphate"
  "The pleckstrin homology (PH) domain of GAB1 binds to PIP3 and 
   can target GAB1 to the plasma membrane in response to 
   EGF stimulation. This mechanism provides a positive feedback loop
   with respect to PI3K activation, to enhance EGFR signalling."
|#

#| From Reactome. Descrption of "SPRED dimer binds NF1"
Sprouty-related proteins (SPRED) 1, 2 and 3 are negative regulators
of the MAPK pathway that act at least in part by recruiting
the RAS GAP protein neurofibromin 1 (NF1) to the plasma membrane
(Kato et al, 2003; King et al, 2006; Stowe et al, 2012).
NF1, a negative regulator of RAS is a tumor suppressor that is mutated
in the familial cancer syndrome neurofibromatosis I as well as
in sporadic cases of glioblastoma, non-small cell lung cancers,
neuroblastoma and melanoma (Martin et al, 1990; Bollag et al, 1996;
reviewed in Bollag and McCormick, 1992; Maertens and Cichowski, 2014).

Plasma membrane-association of the SPRED proteins themselves depends on
the C-terminal SPR domain. Mutations in this region abrogate membrane localization
of the protein (King et al, 2005; Stowe et al, 2012).
Membrane association may also be promoted by interaction of the SPRED proteins
with RAS (Wakioka et al, 2001).
Interaction with NF1 is mediated by the SPRED EVH1 domain, and mutations
in this region affect both NF1 recruitment and the ability of SPRED and NF1 proteins
to negatively regulate RAS pathway activity (Stowe et al, 2012;
reviewed in McClatchey and Cichowski, 2012).
|#

;; Another Reactome example. MAB's emai of 8/24/15 13:04
(defun inactive-ras ()
  (p "Inactive p21ras:GDP is anchored to the plasma membrane by a farnesyl
residue. Insulin stimulation results in phosphorylation of IRS1/2 on
tyrosine residues. GRB2 binds the phosphotyrosines via its SH2 domain.
As IRS is phosphorylated by the insulin receptor near to the plasma
membrane, the GRB2:SOS1:IRS interaction brings SOS1 and p21 Ras into
close proximity."))

;;; The Ubiquitous Co-Reference Problem
#|
http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.0030011
;; Title
A Signaling Pathway Involving TGF-β2 and Snail in Hair Follicle Morphogenesis.
;; sentence 5
We found that transforming growth factor β2 signaling 
is necessary to transiently induce the transcription factor Snail 
and activate the Ras-mitogen-activated protein kinase (MAPK) pathway 
in the bud.
;; sentence 9
This novel signaling pathway further weaves together the web of 
different morphogens and downstream transcriptional events that 
guide hair bud formation within the developing skin.
;; sentence 32
α-Catenin also binds to the class III Lin-1, Isl-1, Mec-3 (LIM) 
protein Ajuba (a member of the zyxin family of proteins), 
which appears to function dually in both adhesion and 
in activation of the Ras-mitogen-activated protein kinase (MAPK) pathway.
;; sentence 127
If the competition between Grb-2/Sos and α-catenin for Ajuba 
is functionally relevant to the hyperproliferative state 
of a keratinocyte, then overexpression of Ajuba would be expected 
to bypass the competition and promote activation of the Ras-MAPK pathway 
in WT keratinocytes. 
;; sentence 133
These data suggested that by elevating cytosolic Ajuba levels, 
Ajuba's pre-LIM domain may associate with Grb-2/Sos in a manner 
that stimulates its nucleotide exchange activity and leads to 
activation of the Ras-MAPK pathway.
;; sentence 134
Although this pathway provides one mechanism by which Snail expression 
and proliferation may be coupled in skin epithelium, proliferative 
circuitries involving AJs are known to be complex 
and often interwoven.
;; sentence 176
Thus, although the pathway mediated by TGF-β2 signaling impacts 
the earliest step of epithelial invagination, 
it does not appear to be essential for bud morphogenesis. 
;; Discussion, P2 sentence 192
Further investigation will be required to determine whether 
the signaling pathway we have elucidated here is a theme 
with multiple variations.  |#

;;  (p *brent-story*)
(defparameter *brent-story*
"Ras is a membrane bound protein.
When inactive, it is bound to the small molecule GDP.
Upon growth factor stimulation of the cell, an exchange factor,
such as the SOS protein,
causes Ras to release GDP and Ras will now bind to GTP.
Binding to GTP causes a conformational change of the Ras protein
that puts Ras into the active state.
GTP-bound Ras binds to the Raf protein kinase.
This binding of Raf to Ras has the effect of
activating the Raf kinase
and localizing the Raf kinase to the cell membrane.
Activated Raf now phosphorylates and activates the Mek1 kinase.
The Mek1 kinase then phosphorylates the ERK kinase
on both threonine and tyrosine residues
which activate ERK kinase activity.
The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression
in part by phosphorylating the Elk1 transcription factor.
Phospho-Elk then upregulates the gene expression of target genes
such as the proto-oncogene c-fos.
The entire signaling cascade is terminated by
the intrinsic GTPase activity of Ras
which hydrolyzes the bound GTP into GTP,
thus returning Ras to the GDP bound state
where it releases bound Raf.
The GTPase activity of Ras is accelerated
by interaction with another protein called GAP.
The oncogenic Rasv12 mutant has diminished GTPase activity
and therefore stays in the active GTP bound state constitutively.
Deletion of GAP or the related NF1 genes will also enhance Ras activity
by slowing the rate of Ras-GTP hydrolysis.")



(defun russ ()
  (p "Importantly, the association between β-Trcp and β-catenin depended on
the four serine/threonine residues at the amino terminus of β-catenin,
as β-catenin (S→A), which is a mutant β-catenin with alanine substitutions
 of these serine/threonine residues (see Fig.4A),
completely lost the ability to associate with β-Trcp (Fig. 1 A and B)."))
#| Very first pass after translating the arrow as a hyphen


Unpacking #<word "substitution">
  it is an unambiguous noun
Unpacking #<word "see">
  it is ambiguous between (noun verb)
Unpacking #<word "lose">
  it is an unambiguous verb
[importantly], [ the association] between [ β-trcp and β-catenin]
[ depended] on [the four serine/threonine residues] at
[ the] amino [ terminus] of [ β-catenin],
as [ β-catenin] (s-a), which [ is][ a mutant β-catenin]
with [ alanine substitutions] of [ these serine/threonine residues]
(see fig.4a), [completely lost][ the ability] to [ associate] with [ β-trcp]

                    source-start
e132  ADVERB        1 "importantly ," 3
e102  BIO-ASSOCIATE 3 "the association" 5
e131  BETWEEN       5 "between β - trcp and β - catenin" 13
e130  DEPEND        13 "depended on the four serine / threonine residues" 21
e128  AT            21 "at the" 23
e25                 "amino"
e26 e27             "terminus" :: #<word "terminus">, PROTEIN-TERMINUS
e127  OF            25 "of β - catenin" 29
e32                 "COMMA"
e126  AS            30 "as β - catenin ( s - a ) , which is a mutant β - catenin" 47
e121  WITH          47 "with alanine substitutions" 50
e120  OF            50 "of these serine / threonine residues ( see fig . 4 a )" 63
e72                 "COMMA"
e111  LOSE          64 "completely lost" 66
e119  ABILITY       66 "the ability to associate with β - trcp ( fig . 1 a and b )" 82
                    period
                    end-of-source
|#

;;----- phrases from the 12/3/14 Darpa trainng data
;
; (p "at Lys residues 104 and 147 of K-Ras, and Lys residues 117, 147 and 170 for H-Ras.")

;; "J" for Julie

(defun j1 ()
  (p "The most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are KRAS, PIK3CA and BRAF."))
#|
[the most frequently mutated oncogenes] in [ the deadliest cancers]

[ responsible] for [ human mortality][ are][ kras, pik3ca and braf]
e35   BE   1 "the most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are kras , pik 3 ca and braf" 22
           period
5/26/15
e28   ONCOGENE      1 "the most frequently mutated oncogenes" 6
e34   IN            6 "in the deadliest cancers responsible" 11
e32   FOR           11 "for human mortality" 14
e17   BE            14 "are" 15
e24   PROTEIN       15 "kras , pik 3 ca and braf" 22
 |#

(defun j2 ()
  (p "Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part, regulated by direct binding to activated forms of the Ras proteins suggesting that dysregulation of this key step in signaling is critical for tumor formation. "))
#|  5/26/15
[importantly][ the signaling enzymes][ encoded] by [ pik3ca and braf]
[ are, in part, regulated] by [ direct binding] to [ activated][ forms]
of [ the ras proteins][ suggesting] that [ dysregulation] of [ this key step]
 in [ signaling][ is critical] for [ tumor formation]

e0    IMPORTANTLY   1 "importantly" 2
e55   ENZYME        2 "the signaling enzymes" 5
e5    ENCODE        5 "encoded" 6
e72   BY            6 "by pik 3 ca and braf" 12
e71   REGULATE+ED   12 "are , in part , regulated by direct binding" 21
e22 e23             "to" :: #<word "to">, TO
e24   BIO-ACTIVATE  22 "activated" 23
e69   FORM          23 "forms of the ras proteins" 28
e32   SUGGEST       28 "suggesting" 29
e33 e34             "that" :: #<word "that">, THAT
e67   DYSREGULATE   30 "dysregulation of this key step" 35
e65   IN            35 "in signaling" 37
e63   CRITICAL      37 "is critical" 39
e64   FOR           39 "for tumor formation" 42

|#

(defun j3 ()
  (p "Ras acts as a molecular switch that is activated upon GTP loading and deactivated upon hydrolysis of GTP to GDP."))
#|  [ras][ acts] as [ a molecular switch] that [ is activated]
upon [ gtp loading] and [ deactivated] u
pon [ hydrolysis] of [ gtp] to [ gdp]

e31   ACT                     1 "ras acts as a molecular switch" 7
e9                               "that"
e33   ACTIVATE                8 "is activated upon" 11
e30   LOAD                    11 "gtp loading" 13
e16 e17                          "and" :: and, AND
e32   DEACTIVATE              14 "deactivated upon" 16
e28   HYDROLYSIS              16 "hydrolysis of gtp to gdp" 21

5/26/15
e40   BIO-ACT       1 "ras acts" 3
e39   AS            3 "as a molecular switch that is activated upon gtp loading" 13
e16   AND           13 "and" 14
e17   DEACTIVATE    14 "deactivated" 15
e34   UPON          15 "upon hydrolysis of gtp to gdp" 21
|#

(defun j4 ()
  (p "This switch mechanism is common to a wide variety of GTP-binding proteins and is mediated by a conserved structure called the G-domain that consists of five conserved G boxes."))
#| [this switch mechanism][ is][ common] to [ a wide variety] of [ gtp-binding proteins]
   and [ is mediated] by [ a conserved structure][ called][ the g-domain][ that consists] of
   [ five conserved g boxes]
Hits new cases in the second pass, but before that we got:
e45   BE                      1 "this switch mechanism is" 5
e6 e7                            "common" :: common, MODIFIER
e51   TO                      6 "to a wide variety" 10
e47   OF                      10 "of gtp - binding proteins" 15
e21 e22                          "and" :: and, AND
e50   MEDIATE+ED              16 "is mediated by a conserved structure" 22
e48   CALL                    22 "called the g - domain" 27
e36                              "that"
e37   CONSISTS                28 "consists" 29
e46   OF                      29 "of five conserved g boxes" 34
                                period
5/26/15
e66   COMMON        1 "this switch mechanism is common to a wide variety" 10
e63   OF            10 "of gtp - binding" 14
e18   PROTEIN       14 "proteins" 15
e19   AND           15 "and" 16
e54   MEDIATE+ED    16 "is mediated" 18
e62   BY            18 "by a conserved structure" 22
e30   CAL           22 "called" 23
e57   BIO-ENTITY    23 "the g - domain" 27
e36 e37             "that" :: #<word "that">, THAT
e38   CONSIST       28 "consists" 29
e61   OF            29 "of five conserved g boxes" 34
                    period
|#

(defun j5 ()
  (p "Under physiological conditions, the rate of GDP or GTP release from the G-domain is slow."))
#|
under [ physiological conditions], [ the rate] of [
 gdp or gtp][ release] from [ the g-domain][ is slow]

e24   UNDER                   1 "under physiological conditions" 4
e4                               "COMMA"
e30   RATE-OF-PROCESS         5 "the rate of gdp or gtp release from the g - domain is slow" 19
                                 period
5/26/15
e30   UNDER         1 "under physiological conditions" 4
e5                  "COMMA"
e25   PROCESS-RATE  5 "the rate" 7
e29   OF            7 "of gdp or gtp" 11
e14   MOLECULE-RELEASE  11 "release" 12
e28   FROM          12 "from the g - domain" 17
e27   QUALITATIVE-RATE  17 "is slow" 19
 |#

(defun j6 ()
  (p "As a consequence the GDP produced by GTP hydrolysis on Ras is trapped and the bulk of cellular Ras accumulates in the GDP-bound ‘off’ state, despite the high GTP/GDP ratio in the cytosol (1–3)."))
#| [as a consequence][ the gdp][ produced] by [ gtp hydrolysis] on [ ras]
[ is trapped] and [ the bulk] of [ cellular ras][ accumulates] in
[ the gdp-bound] 'off' [ state], despite [ the high gtp/gdp ratio] in [ the cytosol]
5/26/15
e1    AS A CONSEQUENCE  1 "as a consequence" 4
e57   NUCLEOTIDE    4 "the gdp" 6
e5    PRODUCE       6 "produced" 7
e76   BY            7 "by gtp hydrolysis on ras" 12
e59   TRAP          12 "is trapped" 14
e15   AND           14 "and" 15
e61   BULK-KIND     15 "the bulk" 17
e73   OF            17 "of cellular ras" 20
e24   ACCUMULATION  20 "accumulates" 21
e72   IN            21 "in the gdp - bound" 26
e71   OFF           26 "' off ' state" 30
e36                 "COMMA"
e37   DESPITE       31 "despite" 32
e70   RATIO         32 "the high gtp / gdp ratio in the cytosol ( 1 - 3 )" 46
                    period

|#

(defun j7 ()
  (p "Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms."))
#|
[growth factors][ can turn] on [ ras] by [ activating][ guanine nucleotide
exchange factors] (gefs) or by [ inhibiting][ the gtpase activating proteins]
(gaps) or by [ both mechanisms]

    Fix comma-delimited-list to write a better edge so it will print nicely.
    Make 'both' active
e46   TURN                    1 "growth factors can turn on ras by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
e34                              "PERIOD"

5/26/15
e41   TURN-ON       1 "growth factors can turn on ras" 7
e43   BY            7 "by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
|#

(defun j8 ()
  (p "RasGEFs bind to Ras and lower the transition energy for the nucleotide exchange of the bound GDP for the more abundant cytosolic GTP, whereas RasGAPs bind to Ras and catalyze GTP hydrolysis. "))
#|  [rasgefs][ bind] to [ ras] and [ lower][ the transition] energy
for [ the nucleotide exchange] of [ the bound gdp] for
[ the more abundant cytosolic gtp], whereas [ rasgaps][ bind] to
[ ras] and [ catalyze][ gtp hydrolysis]

e63   BINDING       1 "rasgefs bind to ras" 5
e5    AND           5 "and" 6
e6    LOWER         6 "lower" 7
e44   TRANSITION    7 "the transition" 9
                    "energy"
e60   FOR           10 "for the nucleotide exchange" 14
e59   OF            14 "of the bound gdp" 18
e58   FOR           18 "for the more abundant cytosolic gtp" 24
e31                 "COMMA"
e32   WHEREAS       25 "whereas" 26
e57   BINDING       26 "rasgaps bind to ras" 30
e38   AND           30 "and" 31
e54   CATALYSIS     31 "catalyze gtp hydrolysis" 34
|#

(defun j9 ()
  (p "The most prevalent oncogenic mutations in Ras (Gly12 and Gly13 in the G1 box, and Gln61 in the G3 box) preserve the GTP bound state by inhibiting intrinsic GTPase activity and by interfering with the ability of GAPs. "))
#|  [the most prevalent oncogenic mutations] in [ ras] (gly12 and gly13 in the g1 box,
 and gln61 in the g3 box) [ preserve][ the gtp][ bound][ state]
 by [ inhibiting][ intrinsic gtpase activity] and by [ interfering] with [ the ability] of [ gaps]
5.26/15
e98   MUTATE        1 "the most prevalent oncogenic mutations in ras ( gly 12 and gly 13 in the g 1 box , and gln 61 in the g 3 box )" 29
e38   PRESERVE      29 "preserve" 30
e96   BINDING       30 "the gtp bound state by inhibiting intrinsic gtpase activity" 39
e51   AND           39 "and" 40
e91   BY            40 "by interfering" 42
e90   WITH          42 "with the ability of gaps" 47
                    period

|#
(defun j10 ()
  (p "Other less frequently observed mutations, such as those found in the G4 and G5 boxes, increase the rate of nucleotide exchange, thereby mimicking the GEFs and increasing the GTP-bound state (1–7)."))
#|  [other less frequently observed mutations], such as [ those found] in [ the g4 and g5 boxes],
[ increase][ the rate] of [ nucleotide exchange],
[ thereby mimicking][ the gefs] and [ increasing][ the gtp-bound state]
5/26/15
e54   MUTATE        1 "other less frequently observed mutations" 6
e5                  "COMMA"
e70   SUCH AS       7 "such as those found" 11
e69   IN            11 "in the g 4 and g 5 boxes" 19
e21                 "COMMA"
e68   INCREASE      20 "increase the rate of nucleotide exchange" 26
e31                 "COMMA"
e60   MIMICK        27 "thereby mimicking" 29
e61   PROTEIN       29 "the gefs" 31
e37   AND           31 "and" 32
e65   INCREASE      32 "increasing the gtp - bound state ( 1 - 7 )" 43
                    period

|#

(defun d1 () ;; "d" for Denver
  (p "Mitogen-induced signal transduction is mediated by a cascade of protein phosphorylation and dephosphorylation."))
(defun d2 ()
  (p "One of the immediate responses of mitogen stimulation is the activation of a family of protein kinases known as mitogen-activated protein kinase or extracellular signal-regulated kinase (ERK)."))
(defun d3 ()
  (p "MEK (MAP kinase or ERK kinase) is the immediate upstream activator kinase of ERK."))
(defun d4 ()
  (p "Two cDNAs, MEK1 and MEK2, were cloned and sequenced."))
(defun d5 ()
  (p "MEK1 and MEK2 encode 393 and 400 amino acid residues, respectively."))
(defun d6 ()
  (p "The human MEK1 shares 99% amino acid sequence identity with the murine MEK1 and 80% with human MEK2."))
(defun d7 ()
  (p "Both MEK1 and MEK2 were expressed in Escherichia coli and shown to be able to activate recombinant human ERK1 in vitro."))
(defun d8 ()
  (p "The purified MEK2 protein stimulated threonine and tyrosine phosphorylation on ERK1 and concomitantly activated ERK1 kinase activity more than 100-fold."))
(defun d9 ()
  (p "The recombinant MEK2 showed lower activity as an ERK activator as compared with MEK purified from tissue."))
(defun d10 ()
  (p "However, the recombinant MEK2 can be activated by serum-stimulated cell extract in vitro."))
(defun d11 ()
  (p "MEKs, in a manner similar to ERKs, are likely to consist of a family of related proteins playing critical roles in signal transduction."))


;; 8/30/14
#| 8. Growth factors can turn on Ras by activating Guanine nucleotide
Exchange Factors (GEFs) or by inhibiting the GTPase Activating
Proteins (GAPs) or by both mechanisms. |#
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms.")
;; /// substitute "activate" for "turn on" so can develop the
;; island forest parser without having to fix the problems with the
;; present verb+prep treatment first.
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors or by inhibiting the GTPase Activating Proteins or by both mechanisms.")
;; /// pull out the parentheses because something is inhibiting their interior's analysis


;; 7/9/14
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3. This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3.")
; (p "This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")


;; From 15677466
(defvar *pc* "The processing of the nfκb2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-κB. We previously demonstrated that this tightly controlled event is regulated positively by NF-κB-inducing kinase (NIK) and its downstream kinase, IκB kinase α (IKKα).
However, the precise mechanisms by which NIK and IKKα induce p100 processing remain unclear.
Here, we show that, besides activating IKKα, NIK also serves as a docking molecule recruiting IKKα to p100.
This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100.
We also show that, after being recruited into p100 complex, activated IKKα phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872).
The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the β-TrCP ubiquitin ligase and 26 S proteasome, respectively.
These results highlight the critical but different roles of NIK and IKKα in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing.
These data also provide the first evidence for explaining why overexpression of IKKα or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."
  "target paragraph for proposal")

(defun kappa-1 ()
  ;; Rewrite of *pc* without the greek letters to get around 4/19 wierdness
  (p "The processing of the nfkappab2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-kappaB."))
(defun kappa-2 ()
  (p "We previously demonstrated that this tightly controlled event is regulated positively by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha)."))
;; (delete-cfr remain-in-job ("remain"))  -- don't include *job-events* or *isr*
(defun kappa-3 ()
  (p "However, the precise mechanisms by which NIK and IKKalpha induce p100 processing remain unclear."))
(defun kappa-4 ()
  (p "Here, we show that, besides activating IKKalpha, NIK also serves as a docking molecule recruiting IKKalpha to p100."))
(defun kappa-5 ()
  (p "This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100."))
(defun kappa-6 ()
  (p "We also show that, after being recruited into p100 complex, activated IKKalpha phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872)."))
(defun kappa-7 ()
  (p "The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the beta-TrCP ubiquitin ligase and 26 S proteasome, respectively."))
(defun kappa-8 ()
  (p "These results highlight the critical but different roles of NIK and IKKalpha in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing."))
(defun kappa-9 ()
  (p "These data also provide the first evidence for explaining why overexpression of IKKalpha or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."))


(defvar *nkf2* "Processing of NF-kappaB2 precursor protein p100 to generate p52 is tightly controlled, which is important for proper function of NF-kappaB. Accordingly, constitutive processing of p100, caused by the loss of its C-terminal processing inhibitory domain due to nfkappab2 gene rearrangements, is associated with the development of various lymphomas and leukemia. In contrast to the physiological processing of p100 triggered by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha), which requires the E3 ligase, beta-transducin repeat-containing protein (beta-TrCP), and occurs only in the cytoplasm, the constitutive processing of p100 is independent of beta-TrCP but rather is regulated by the nuclear shuttling of p100. Here, we show that constitutive processing of p100 also requires IKKalpha, but not IKKbeta (IkappaB kinase beta) or IKKgamma (IkappaB kinase gamma). It seems that NIK is also dispensable for this pathogenic processing of p100. These results demonstrate a general role of IKKalpha in p100 processing under both physiological and pathogenic conditions. Additionally, we find that IKKalpha is not required for the nuclear translocation of p100. Thus, these results also indicate that p100 nuclear translocation is not sufficient for the constitutive processing of p100."
  "The entire abstact according to the abstractor, not as in the article")

