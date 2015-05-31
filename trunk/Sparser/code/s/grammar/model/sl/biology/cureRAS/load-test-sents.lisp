(in-package :sparser) 
(defparameter *load-test-sents*
  '(
    (p  "In their progression from the basal to upper  differentiated layers of the epidermis, keratinocytes undergo significant structural changes, including establishment of close intercellular contacts.") ;; 1
    (p  "An important  but so far unexplored question is how these early structural events are related to the biochemical pathways  that trigger differentiation.") ;; 2
    (p  "We show here that β-catenin, γ-catenin/plakoglobin, and p120-Cas are all significantly tyrosine phosphorylated in primary mouse keratinocytes induced to differentiate by calcium, with a  time course similar to that of cell junction formation.") ;; 3
    (p  "Together with these changes, there is an increased association of α-catenin and p120-Cas with E-cadherin,  which is prevented by tyrosine kinase inhibition.") ;; 4
    (p  "Treatment of E-cadherin complexes with tyrosine-specific  phosphatase reveals that the strength of α-catenin association is directly dependent on tyrosine phosphorylation.") ;; 5
    (p  "In parallel with the biochemical effects, tyrosine  kinase inhibition suppresses formation of cell adhesive  structures, and causes a significant reduction in adhesive strength of differentiating keratinocytes.") ;; 6
    (p  "The Fyn  tyrosine kinase colocalizes with E-cadherin at the cell  membrane in calcium-treated keratinocytes.") ;; 7
    (p  "Consistent  with an involvement of this kinase, fyn -deficient keratinocytes have strongly decreased tyrosine phosphorylation levels of β- and γ-catenins and p120-Cas, and structural and functional abnormalities in cell adhesion  similar to those caused by tyrosine kinase inhibitors.") ;; 8
    (p  "Whereas skin of fyn −/− mice appears normal, skin of  mice with a disruption in both the fyn and src genes  shows intrinsically reduced tyrosine phosphorylation of  β-catenin, strongly decreased p120-Cas levels, and important structural changes consistent with impaired keratinocyte cell adhesion.") ;; 9
    (p  "Thus, unlike what has been  proposed for oncogene-transformed or mitogenically  stimulated cells, in differentiating keratinocytes tyrosine phosphorylation plays a positive role in control  of cell adhesion, and this regulatory function appears to  be important both in vitro and in vivo.") ;; 10
    (p  "A s keratinocytes progress from the basal proliferating  layer of the epidermis to the immediately adjacent  differentiating layer (spinous layer) they lose contact with the extracellular matrix and undergo significant  structural changes, such as establishment of close intercellular contacts, desmosome formation and rearrangements  of the actin/cytokeratin network.") ;; 11
    (p  "An important but so far  unexplored question is how these early structural events  are related to the biochemical pathways which trigger differentiation.") ;; 12
    (p  "Cell–cell contacts among neighboring keratinocytes are  mediated mainly by adherens junctions and desmosomes.") ;; 13
    (p  "Adherens junctions contain “classical” cadherins, whereas  desmosomes are composed of specialized cadherins, such  as desmoglein(s) and desmocollin(s).") ;; 14
    (p  "Each type of junction is linked via several cytoplasmic proteins to different  elements of the cytoskeleton.") ;; 15
    (p  "Adherens junctions are associated with the actin cytoskeleton and have been shown to  be important for the establishment of cell adhesion and  polarization, while desmosomes interact with keratin filaments and impart mechanical strength to the epithelium  ( xref ).") ;; 16
    (p  "Adherens junctions in epithelial cells depend on the homophilic, calcium-dependent binding of the extracellular  domain of transmembrane cadherins ( xref , xref ).") ;; 17
    (p  "The cytoplasmic domain of E-cadherin forms a complex  with β-, γ-, and α-catenins, and this association is essential  for the establishment of proper cell adhesion ( xref ; xref ; xref ). β- and γ-catenins share a similar structure (65%  identity) ( xref ), including a 42–amino acid  motif repeated 12 or 13 times, originally described in the Drosophila segment polarity gene product Armadillo ( xref ). β- and γ-catenins bind directly to  E-cadherin in a mutually exclusive fashion ( xref ; xref ).") ;; 18
    (p  "They also form a complex with α-catenin, a cytoplasmic protein similar to vinculin, which in turn is connected, either directly or indirectly,  to the actin network ( xref ; xref ).") ;; 19
    (p  "Besides adherens junctions, γ-catenin/plakoglobin  is also found in desmosomes, in association with desmosomal cadherins and is thought to modulate their function  ( xref ; xref ).") ;; 20
    (p  "Another  catenin, p120-Cas, originally described as a putative substrate of the activated Src tyrosine kinase ( xref , xref ; xref ), has been shown to complex directly with E-cadherin ( xref , xref ; xref ).") ;; 21
    (p  "In normal cells only a small proportion of p120-Cas is associated with cadherins ( xref ), but in specific circumstances, such as  upon ras transformation, this catenin displays increased affinity for E-cadherin ( xref ).") ;; 22
    (p  "Interestingly,  p120-Cas lacks the ability to bind α-catenin ( xref ), suggesting that p120-Cas/cadherin complexes are disconnected from the actin cytoskeleton and  thus may account, at least partially, for the poor adhesive  phenotype of Ras -transformed cells.") ;; 23
    (p  "Elevation of Ca 2+ concentrations in epithelial cell cultures induces the rapid translocation of cadherins to cell– cell borders and consequent adherens junction and desmosome formation ( xref ; xref ).") ;; 24
    (p  "These changes are accompanied by a reorganization of the  cytoskeleton, polarization and, in keratinocyte cultures,  stratification.") ;; 25
    (p  "Establishment of adherens junctions has  been shown to play a primary role in these processes.") ;; 26
    (p  "In  particular, inhibition of adherens junction formation by  anti–E-cadherin antibodies ( xref ; xref ) or by expression of dominant negative  cadherin mutants ( xref ), suppresses all later  steps, such as desmosome formation, polarization, and  stratification.") ;; 27
    (p  "Whereas calcium can trigger initial formation of cadherin-mediated cell adhesion, a second, temperature-dependent step is required for the strengthening of  these interactions ( xref ).") ;; 28
    (p  "In addition, for  stratification to occur, cell contacts need to remain fluid,  as movement of cells within a tri-dimensional structure requires continual disruption and reorganization of intercellular junctions, without loss of adhesive strength ( xref ; xref ).") ;; 29
    (p  "The mechanisms that control  the strength of cell adhesion and modulate its dynamic  state are still poorly understood.") ;; 30
    (p  "Increased tyrosine phosphorylation of β- and γ-catenin  (plakoglobin) and p120-Cas has been previously correlated with the decrease of cell adhesion which occurs upon  neoplastic transformation ( xref ; xref ; xref ; xref ; xref ) or mitogenic growth factor stimulation  ( xref ; xref ; xref ; xref ; for review see xref ).") ;; 31
    (p  "However, in no cases was catenin tyrosine phosphorylation shown to be causally linked to decreased cell adhesion.") ;; 32
    (p  "In fact, additional evidence indicates that loosening of  cell contacts in src -transformed cells cannot be explained by  tyrosine phosphorylation of β-catenin, but is likely resulting from tyrosine phosphorylation of other junctional proteins such as ZO-1, ezrin/radixin/moesin, or some other unidentified proteins ( xref ).") ;; 33
    (p  "The small Rho/ Rac GTPases have also been implicated in control of cell  adhesion.") ;; 34
    (p  "Interestingly, these molecules appear to play a  negative suppressive function in MDCK cells ( xref ), but a positive one in keratinocytes ( xref ), suggesting that control of cell adhesion may differ  significantly among epithelial cells of different types.") ;; 35
    (p  "Unlike what may occur in oncogene-transformed or mitogenically stimulated cells, we report here that in differentiating keratinocytes, tyrosine phosphorylation plays a  positive role in the strengthening of cell adhesion.") ;; 36
    (p  "At least  two distinct tyrosine kinase activities are induced in the keratinocyte differentiation process ( xref ).") ;; 37
    (p  "One  of these activities is specifically increased by calcium and a  number of other divalent cations from the outside of the  cell, suggesting that an extracellular cation-sensor mechanism is involved.") ;; 38
    (p  "Induction of this kinase activity occurs  within minutes of calcium exposure ( xref ),  and correlates with the rapid tyrosine phosphorylation of a  ras-GAP associated p62 protein ( xref , xref ),  which may be similar, but probably not identical ( xref ), to the p62-Dok adaptor protein ( xref ; xref ).") ;; 39
    (p  "The second tyrosine  kinase activity, identified as Fyn, increases only at relatively late times of exposure of keratinocytes to calcium  (within 1–6 h) ( xref ).") ;; 40
    (p  "In close parallel with  Fyn kinase activation, calcium treatment triggers tyrosine  phosphorylation of cortactin, a protein which colocalizes  with subcortical actin at sites of cell movement. A significant role of Fyn in keratinocyte differentiation is indicated  by the fact that this process is altered in keratinocytes with  a disruption of the fyn gene ( xref ).") ;; 41
    (p  "Immunoblotting of keratinocyte cell extracts with anti-phosphotyrosine antibodies indicates that p62 and cortactin are only two of a wider group of proteins which are tyrosine phosphorylated in calcium-induced keratinocyte  differentiation ( xref ; xref ;  our unpublished observations).") ;; 42
    (p  "We show here that β-,  γ-catenin (plakoglobin), and p120-Cas become all strongly  tyrosine phosphorylated at early times of calcium-induced  keratinocyte differentiation, and that these modifications  are linked to an increased association of α-catenin and  p120-Cas with E-cadherin.") ;; 43
    (p  "Both biochemical and genetic  evidence indicates that tyrosine phosphorylation plays a  fundamental role in the changes in cell adhesion associated  with keratinocyte differentiation, and that the activity of  Fyn and related kinases is involved, both in vitro and in vivo.") ;; 44
    (p  "As mentioned in the introduction, very little is known about  control of cell adhesion in differentiating epithelia.") ;; 45
    (p  "We  tested whether there is a specific interconnection between  induction of tyrosine phosphorylation and the changes in  cell adhesion that occur during calcium-induced keratinocyte  differentiation.") ;; 46
    (p  "In an initial set of studies, we examined the  cellular localization pattern of total tyrosine phosphorylated  proteins in growing versus differentiating keratinocytes.") ;; 47
    (p  "In  parallel with our previous biochemical data, immunofluorescence analysis with anti-phosphotyrosine antibodies revealed a substantial increase of tyrosine phosphorylation  signal in the differentiating cells, as early as 2 h after calcium exposure.") ;; 48
    (p  "More significantly, calcium treatment resulted in a striking localization of the tyrosine phosphorylation signal at sites of cell–cell contact (not shown).") ;; 49
    (p  "To  test whether β-catenin, an essential adherens junction  component, shows an increased localization at tyrosine  phosphorylation sites, we focused on the detergent-insoluble submembranous cytoskeleton.") ;; 50
    (p  "Keratinocytes under  growing versus differentiating conditions were pre-extracted  with a 0.2% Triton X-100 buffer before fixation in 2%  paraformaldehyde.") ;; 51
    (p  "Cells were then double stained with  anti-phosphotyrosine and anti–β-catenin antibodies, and  analyzed by confocal microscopy.") ;; 52
    (p  "As shown in Fig. xref ( top  panels ), calcium treatment (9 h) resulted in a significant increase of tyrosine-phosphorylated proteins as well as  β-catenin associated with the detergent-resistant, membrane–cytoskeleton compartment.") ;; 53
    (p  "The pattern of staining  of anti-phosphotyrosine and anti–β-catenin antibodies was  almost totally overlapping in the calcium-treated cells.") ;; 54
    (p  "To determine whether tyrosine phosphorylation levels  of specific adherens junction components are directly increased with differentiation, extracts from keratinocytes  under basal growing conditions and at various times after  calcium exposure were immunoprecipitated with anti– E-cadherin antibodies, followed by immunoblotting with  anti-phosphotyrosine antibodies.") ;; 55
    (p  "As shown in Fig. xref  A ( left  panel ), two tyrosine phosphorylated bands of ∼85 and 92 kD  were detected in the anti–E-cadherin immunoprecipitates  of keratinocytes under basal low calcium conditions.") ;; 56
    (p  "Tyrosine phosphorylation of these bands was strongly increased by 9 h of calcium treatment and persisted at elevated levels for 24 h.") ;; 57
    (p  "These bands comigrate and are likely  to correspond to β- and γ-catenin, as judged by reprobing  of the same immunoblot with antibodies specific against  these proteins (Fig. xref  A , right panels ).") ;; 58
    (p  "Immunoprecipitation  of keratinocyte cell extracts with antibodies against β- and  γ-catenins followed by anti-phosphotyrosine immunoblotting, confirmed that tyrosine phosphorylation of β- and  γ-catenins is directly increased in the differentiating keratinocytes (Fig. xref  B ).") ;; 59
    (p  "No direct tyrosine phosphorylation of E-cadherin itself  nor of α-catenin could be detected in the anti–E-cadherin  immunoprecipitates.") ;; 60
    (p  "However, even if not directly tyrosine  phosphorylated, the amount of α-catenin found in association with E-cadherin was significantly increased by 9 h of  calcium treatment, whereas the amounts of β- and γ-catenins  associated with E-cadherin remained constant (Fig. xref  A , right panels ).") ;; 61
    (p  "Immunoblotting of total keratinocyte cell extracts indicated that the total amounts of α-catenin, as well  as β- and γ-catenins and E-cadherin, remained constant up  to 48 h of calcium treatment (data not shown).") ;; 62
    (p  "Besides adherens junctions, γ-catenin/plakoglobin is  also found in desmosomes, and is thought to modulate  their function ( xref ; xref ). γ-Catenin associated with desmosomal cadherins  may also be increasingly tyrosine phosphorylated in response to calcium.") ;; 63
    (p  "To test this possibility, keratinocyte cell  extracts were immunoprecipitated with anti–desmoglein 3  antibodies, followed by immunoblotting with anti-phosphotyrosine antibodies. A single specific band of ∼85 kD  was detected, which became strongly tyrosine phosphorylated by 9 h of calcium treatment (Fig. xref  C ).") ;; 64
    (p  "This band is  likely to correspond to γ-catenin, as judged by reprobing  of the same immunoblot with antibodies against this protein.") ;; 65
    (p  "As in E-cadherin complexes, the amount of desmoglein-associated γ-catenin did not appear to vary significantly over time (Fig. xref  C ).") ;; 66
    (p  "Tyrosine phosphorylation of  plakophilin 1, another key desmosomal protein that shares  structural homology with β- and γ-catenins ( xref ), was analyzed by direct immunoprecipitation with  anti–plakophilin 1 antibodies followed by anti-phosphotyrosine immunoblotting.") ;; 67
    (p  "Plakophilin 1 was found to be weakly  tyrosine phosphorylated in keratinocytes under low calcium  conditions, and tyrosine phosphorylation of this protein (at  least that recoverable from the detergent-soluble fraction)  did not increase with differentiation (data not shown).") ;; 68
    (p  "Previous reports showed that elevation of Ca 2+ concentrations in epithelial cell cultures induces the rapid translocation of cadherins to cell–cell borders and consequent cell  junction formation ( xref ; xref ).") ;; 69
    (p  "The precise time course of these events is likely to vary as  a function of cells and culture conditions.") ;; 70
    (p  "It was important  to determine whether the timing of adherens junction and  desmosome formation in our primary mouse keratinocyte  cultures parallels that of increased tyrosine phosphorylation.") ;; 71
    (p  "Accordingly, cells were analyzed at various times after calcium treatment by immunofluorescence with antibodies against either E-cadherin or plakophilin.") ;; 72
    (p  "Extraction  with 0.2% Triton X-100 buffer before fixation ensured detection of these proteins only when assembled into insoluble cell membrane structures.") ;; 73
    (p  "As shown in Fig. xref , by 2 h of  calcium treatment E-cadherin and plakophilin showed only  an incomplete recruitment into membrane–cytoskeleton  structures, whereas by 9 h a very strong signal for these proteins was detected at sites of close intercellular junctions.") ;; 74
    (p  "Thus, in mouse primary keratinocytes induced to differentiate by calcium, there is an increased tyrosine phosphorylation of proteins at sites of cell–cell adhesion, and this is  associated with a specific increase in tyrosine phosphorylation levels of β- and γ-catenins.") ;; 75
    (p  "In contrast, α-catenin is  not directly tyrosine phosphorylated, but its association  with E-cadherin increases, with a time course that parallels  that of β- and γ-catenin tyrosine phosphorylation, as well  as that of cell junction formation.") ;; 76
    (p  "p120-Cas, another catenin originally described as a substrate of activated Src ( xref , xref ; xref ), can also form a direct complex with E-cadherin  at adherens junctions ( xref ; xref ).") ;; 77
    (p  "However, in normal cells, only a small fraction  of p120-Cas is associated with cadherins, and this fraction  varies with various cell types ( xref ; xref ).") ;; 78
    (p  "To determine whether in differentiating  keratinocytes p120-Cas shows an increased localization at  tyrosine phosphorylation sites in the submembranous cytoskeleton, we performed the same type of immunofluorescence analysis described above for β-catenin: cells either  kept in low calcium medium or switched to high calcium for  9 h were pre-extracted with 0.2% Triton X-100 buffer before  fixation, and were double stained with antibodies against  phosphotyrosine and p120-Cas.") ;; 79
    (p  "Cells were then analyzed by  confocal microscopy.") ;; 80
    (p  "Like β-catenin, in calcium-treated  keratinocytes p120-Cas was also recruited into the detergent-insoluble cortical cytoskeleton, and it colocalized with  phosphotyrosine at cell–cell borders (Fig. xref , bottom panels ).") ;; 81
    (p  "To assess whether tyrosine phosphorylation of p120-Cas  is intrinsically increased with differentiation, extracts from  keratinocytes under low versus high calcium conditions  were immunoprecipitated with an mAb that recognizes all  known isoforms of the p120-Cas proteins ( xref ), and the immunocomplexes were analyzed by  anti-phosphotyrosine immunoblotting.") ;; 82
    (p  "As shown in Fig. xref  D ,  there was a progressive increase of tyrosine phosphorylation of all four p120-Cas isoforms, which was detectable already by 10 min of calcium exposure, and then became  very pronounced by 9 h.") ;; 83!! CAN'T DEREFERENCE ANONYMOUS VARIABLE #<anonymous-variable TIME> AGAINST CATEGORY #<there-exists 6183>, GIVING UP
    (p  "Tyrosine phosphorylation of  p120-Cas remained elevated at least until 24 h.") ;; 84
    (p  "Reprobing  of the same blot with anti-p120 antibodies showed that expression of the two larger isoforms of p120-Cas was only  slightly increased by 24 h of calcium treatment, whereas levels of the smaller forms did not vary significantly over time.") ;; 85
    (p  "As reported for other cells ( xref ), increased tyrosine phosphorylation of p120-Cas may correlate with a higher affinity of these proteins for cadherin– catenin complexes.") ;; 86
    (p  "No p120-Cas/E-cadherin association  could be detected in E-cadherin immunoprecipitates performed under standard stringency conditions (not shown).") ;; 87
    (p  "However, p120/E-cadherin complexes may have been disrupted by the detergent concentrations used for those experiments.") ;; 88
    (p  "We reexamined this question by performing  anti–E-cadherin immunoprecipitations under milder stringency conditions (lysis in 0.2% Triton X-100 buffer).") ;; 89
    (p  "Immunoprecipitates from keratinocytes in low calcium medium versus cells treated with calcium for 9 h, were  separated by SDS-PAGE, blotted, and then sequentially  probed with antibodies against phosphotyrosine, p120-Cas, β- and γ-catenins, and E-cadherin (Fig. xref  E ).") ;; 90
    (p  "Under  these conditions, association of all p120-Cas isoforms with  E-cadherin was easily detected, and this association was  strongly increased in the calcium-treated cells, whereas  that of β- and γ-catenins remained mostly unaffected.") ;; 91
    (p  "At  least four major tyrosine-phosphorylated bands were detectable in the E-cadherin immunoprecipitate from keratinocytes under low calcium conditions, and tyrosine phosphorylation of these bands was strongly increased upon  calcium treatment (Fig. xref  E ).") ;; 92
    (p  "These bands comigrate and  are likely to correspond to the p120-Cas and β- and  γ-catenins discussed above.") ;; 93
    (p  "In addition, a fifth tyrosine  phosphorylated protein of heavier molecular weight was  detectable in the anti-phosphotyrosine immunoblot, which  appeared only in the calcium-treated sample and whose  identity remains to be assessed.") ;; 94
    (p  "Thus, calcium treatment of mouse primary keratinocytes  induces strong tyrosine phosphorylation of p120-Cas proteins, and this increased phosphorylation correlates with  an increased association of all four p120-Cas isoforms with  E-cadherin.") ;; 95
    (p  "The results of the previous sections showed that exposure  of keratinocytes to high extracellular calcium concentrations has two important consequences: it induces tyrosine  phosphorylation of β- and γ-catenins and p120-Cas proteins, and at the same time, triggers an increased association of α-catenin and p120-Cas with E-cadherin.") ;; 96
    (p  "An important question is whether the two events are connected.") ;; 97
    (p  "The isoflavone Genistein inhibits specific tyrosine phosphorylation events associated with calcium-induced keratinocyte differentiation ( xref ).") ;; 98
    (p  "Tyrphostins  represent a class of structurally unrelated tyrosine kinase  inhibitors which block EGF-dependent mitogenicity and  revert the transformed phenotype of v-src –transformed  cells ( xref ).") ;; 99
    (p  "We initially tested whether treatment of keratinocytes with either Genistein or Tyrphostin  23 could block induction of tyrosine phosphorylation of β-  and γ-catenins and p120-Cas in response to calcium, and  whether, in turn, association of α-catenin and p120-Cas  with E-cadherin was affected.") ;; 100
    (p  "Primary keratinocytes were  pretreated for 2 h with Genistein or Tyrphostin 23, or  DMSO solvent alone, and then cells were incubated for  additional 9 h under either low or high calcium conditions.") ;; 101
    (p  "Cell lysates in 0.5% NP-40 lysis buffer were immunoprecipitated with anti–E-cadherin antibodies and immunoblotted, sequentially, with antibodies against phosphotyrosine, α-, β-, and γ-catenins, and E-cadherin.") ;; 102
    (p  "As shown in  Fig. xref  A , Genistein treatment had only limited effects on  basal tyrosine phosphorylation levels of E-cadherin–associated β- and γ-catenins, while it blocked almost completely tyrosine phosphorylation of these molecules in  response to calcium.") ;; 103
    (p  "Tyrphostin treatment had more pronounced inhibitory effects on tyrosine phosphorylation of  β- and γ-catenins, both under basal conditions and after  calcium exposure.") ;; 104
    (p  "In parallel with these effects, both tyrosine kinase inhibitors blocked the increased association  of α-catenin with E-cadherin, which normally occurs in  calcium-treated cells (see Fig. xref  A , top right panel ).") ;; 105
    (p  "This effect was specific for the calcium-induced association, as  neither inhibitor affected the basal level of α-catenin associated with E-cadherin in cells under low calcium conditions.") ;; 106
    (p  "To test whether tyrosine phosphorylation is also required  for the increased association of p120-Cas with E-cadherin,  keratinocytes in low versus high calcium conditions ± tyrosine kinase inhibitors, were lysed under mild detergent  conditions (0.2% Triton X-100).") ;; 107
    (p  "Extracts were immunoprecipitated with anti–E-cadherin antibodies and immunoblotted, sequentially, with antibodies against phosphotyrosine, p120-Cas, β- and γ-catenins, and E-cadherin.") ;; 108
    (p  "As  shown in Fig. xref  B , both inhibitors reduced the basal tyrosine phosphorylation levels of p120-Cas, and blocked  any further increase in response to calcium.") ;; 109
    (p  "Genistein  treatment had little or no effect on the amount of p120-Cas associated with E-cadherin in cells under basal conditions, while it totally prevented the increased association  induced by calcium (Fig. xref  B , top right panel ).") ;; 110
    (p  "Tyrphostin  treatment caused a reduction of p120-Cas associated with  E-cadherin already in keratinocytes in low calcium medium, and prevented any further increase in cells exposed  to calcium.") ;; 111
    (p  "We have previously shown that tyrosine kinase inhibitors disrupt several aspects of keratinocyte differentiation  ( xref ), and it is still possible that their suppressive effects on α-catenin and p120-Cas association  with E-cadherin complexes are not directly resulting from  inhibition of tyrosine phosphorylation.") ;; 112
    (p  "To test whether tyrosine phosphorylation of E-cadherin complexes can directly affect α-catenin association, keratinocyte extracts  were immunoprecipitated with anti–E-cadherin antibodies, and the immunoprecipitates were treated with a tyrosine-specific phosphatase ± tyrosine phosphatase inhibitors.") ;; 113
    (p  "Preliminary experiments, which included untreated  controls, showed that dephosphorylation of β- and γ-catenins  by the Yersinia tyrosine phosphatase was totally blocked  by the inhibitors at the chosen concentrations (not shown).") ;; 114
    (p  "Immunocomplexes were washed under higher stringency  conditions than in the previous experiments using LiCl,  which has been shown to affect charge-based interactions  of stable protein–protein complexes ( xref ).") ;; 115
    (p  "Samples were then analyzed by SDS-PAGE and sequential  immunoblotting with antibodies against phosphotyrosine,  α-catenin, β- and γ-catenins, and E-cadherin.") ;; 116
    (p  "Tyrosine  phosphorylation of β- and γ-catenins was totally abrogated by phosphatase treatment in the absence of the inhibitor, whereas it remained unaffected in its presence  (Fig. xref ). α-Catenin was readily detected in the complexes  treated with phosphatase plus inhibitor, and higher levels  of this catenin were found in the complexes derived from  calcium-treated versus untreated keratinocytes.") ;; 117
    (p  "By contrast, under the same washing conditions, no α-catenin was  left in the complexes treated with phosphatase without inhibitor (Fig. xref  A ).") ;; 118
    (p  "Levels of β- and γ-catenins were also  slightly reduced in these samples, suggesting that tyrosine  phosphorylation may also stabilize association of these  proteins with E-cadherin, even if to a lesser extent than  α-catenin (Fig. xref  A ).") ;; 119
    (p  "To eliminate this variable, a second  independent experiment was performed, where the E-cadherin immunoprecipitated samples were normalized for  amounts of β- and γ-catenin levels before immunoblot  analysis.") ;; 120
    (p  "Even under these conditions, the amount of α-catenin associated with the E-cadherin complexes was found  to be markedly reduced after tyrosine phosphatase treatment (Fig. xref  B ).") ;; 121
    (p  "Thus, the increased association of α-catenin and p120-Cas with E-cadherin, which occurs in calcium-treated keratinocytes, is blocked by tyrosine kinase inhibition and  the strength of α-catenin association is directly dependent  on tyrosine phosphorylation of E-cadherin–associated proteins.") ;; 122
    (p  "To assess whether the biochemical alterations induced by  tyrosine kinase inhibition were associated with altered cell  junction formation, keratinocytes were examined by transmission electron microscopy at 9 h after calcium treatment, at a time when tyrosine phosphorylation of β- and  γ-catenins and p120-Cas is highly induced, and close cell– cell contacts are formed.") ;; 123
    (p  "Efficient cell–cell junction and  formation was observed in control cells, with cell borders  being brought into close juxtaposition (Fig. xref  A , left ; and  data not shown).") ;; 124
    (p  "By contrast, in Genistein-treated cells,  only very few and incompletely formed cell junctions were  detected.") ;; 125
    (p  "Cell borders remained quite distant from each  other and were connected by protrusions of neighboring  cells in the form of pseudopod-like structures which met  without forming any kind of organized adhesive structure  (Fig. xref  A , center ).") ;; 126
    (p  "As previously reported ( xref ), calcium-induced reorganization of the actin/keratin  cytoskeleton was also prevented.") ;; 127
    (p  "Tyrphostin treatment  also resulted in suppression of cell junctions, but in this  case no pseudopod formation of neighboring cells was detected (Fig. xref  A , right ).") ;; 128
    (p  "Widespread suppression of membrane detergent-insoluble structures containing E-cadherin  and plakophilin was confirmed by immunofluorescence  analysis of control and tyrosine kinase inhibitor-treated  cells with the corresponding antibodies (Fig. xref ).") ;; 129
    (p  "Interestingly, incomplete cell adhesion and membrane protrusions  similar to those of control keratinocytes at 2 h of calcium  treatment were observed.") ;; 130
    (p  "The biochemical and structural alterations of cell junction formation that result from tyrosine kinase inhibition  may be associated with some significant functional defects.") ;; 131
    (p  "To explore this possibility, we developed a new functional  assay for cohesiveness of cell adhesion.") ;; 132
    (p  "Dispase is a protease that degrades preferentially molecules such as type  IV collagen and fibronectin, which function as important  attachment sites for keratinocytes to the underlying substratum ( xref ).") ;; 133
    (p  "Dispase treatment is routinely  used for skin grafting assays, to detach confluent cultures  of well-differentiated keratinocytes as intact sheets of  cells.") ;; 134
    (p  "We reasoned that a lack of cohesive strength may be  revealed under these conditions, when keratinocytes lose  attachment to their support and are connected to each  other only through direct intercellular contacts.") ;; 135
    (p  "Treatment  of primary keratinocyte cultures in low calcium medium  with dispase caused detachment of cells as single cell suspension, consistent with the fact that keratinocytes under  these conditions are only very loosely connected with each  other.") ;; 136
    (p  "Conversely, keratinocyte cultures switched to high  calcium medium for either 9 or 24 h were much more resistant to dispase treatment and eventually (after 25–30 min)  detached from the dish as confluent sheet of cells (Fig. xref  A ).") ;; 137
    (p  "Genistein-treated cultures switched to high calcium  conditions behaved differently from the controls.") ;; 138
    (p  "Already  by 5 min of dispase treatment when control cells were still  unaffected, the Genistein-treated keratinocytes started to  detach, not as a sheet of cells, but in a localized fashion,  generating the appearance of “holes” in the confluent  monolayers (Fig. xref  A ).") ;; 139
    (p  "Curiously, one or two cells were selectively left at the center of these holes, the nature of  which remains to be assessed. A similar pattern of cell detachment was also observed with Tyrphostin-treated keratinocytes (data not shown).") ;; 140
    (p  "Quantification was achieved by counting the number of  single cells released by mechanical disruption after a 35-min dispase treatment, normalized for the total number of  cells recovered after subsequent treatment of the same  samples with trypsin (Fig. xref ).") ;; 141
    (p  "This assay confirmed at the  functional level our immunofluorescence findings (Fig. xref )  that, in primary mouse keratinocytes cultured under our  conditions, cell–cell adhesion is only marginally increased  by 2 h of calcium treatment, whereas it is firmly established by 9 h and beyond (Fig. xref  A ).") ;; 142
    (p  "Genistein and Typhostin treatment caused a >50% reduction in strength of  cell adhesion (Fig. xref  B ).") ;; 143
    (p  "PP1 is a recently developed inhibitor of tyrosine kinases of the Src family ( xref ).") ;; 144
    (p  "Concomitant treatment of keratinocytes with calcium and PP1 caused a drastic inhibition of β- and γ-catenin tyrosine phosphorylation (not shown) and, at the same  time, a reduction in strength of cell adhesion comparable  to that induced by the other tyrosine kinase inhibitors  (Fig. xref  B ), together with the same pattern of cell detachment (not shown).") ;; 145
    (p  "Thus, block of tyrosine phosphorylation has important  structural and functional consequences on calcium-induced  cell adhesion.") ;; 146
    (p  "Formation of normal cell junctions is prevented, and cohesive strength of confluent keratinocyte  cultures, as revealed by a novel dispase-based assay, is significantly reduced.") ;; 147
    (p  "Previous work with mitogenically stimulated or oncogene-transformed cells established a correlation between increased tyrosine phosphorylation of β- and γ-catenins and  p120-Cas and decreased rather than increased strength of  cell adhesion ( xref ; xref ; xref ).") ;; 148
    (p  "However, more recent evidence  has suggested that tyrosine phosphorylation of β-catenin  in src -transformed cells cannot be directly responsible for  loosening of cell adhesion, and tyrosine phosphorylation  of some other proteins must be involved ( xref ).") ;; 149
    (p  "It was of interest to determine whether this conclusion applies also to keratinocytes.") ;; 150
    (p  "Accordingly, primary  mouse keratinocytes were infected with a recombinant adenovirus expressing an activated Src kinase, or a green fluorescent protein vector control.") ;; 151
    (p  "At 24 h after infection,  part of the cultures were switched to high calcium medium, and incubation was continued for additional 24 h.") ;; 152
    (p  "The dispase assay described above was used to evaluate  the strength of cell adhesion of control versus src -transformed keratinocytes, at 24 h after calcium treatment.") ;; 153
    (p  "As  reported for other cells, expression of the Src kinase resulted in a marked disruption of cell adhesion (Fig. xref  C ).") ;; 154
    (p  "Parallel cultures were analyzed for E-cadherin complex  formation by immunoprecipitation with anti–E-cadherin  antibodies and sequential immunoblotting with antibodies  against phosphotyrosine, α-, β-, and γ-catenins and E-cadherin. β- and γ-catenins were very highly tyrosine phosphorylated in the Src-expressing keratinocytes, whereas  their relative amounts remained unchanged (Fig. xref ).") ;; 155
    (p  "Importantly, similar levels of α-catenin were found in the  E-cadherin complexes from Src expressing versus control  keratinocytes, and calcium treatment caused a similar increase of α-catenin association in the two types of cells  (Fig. xref ).") ;; 156
    (p  "At least two other prominent tyrosine phosphorylated bands were evident in the src -transformed keratinocytes, which were not detected in the control (more  bands were evident after prolonged exposure of the autoradiograph).") ;; 157
    (p  "One of these bands comigrates and is likely  to correspond to E-cadherin.") ;; 158
    (p  "The other, with a size of ∼60  kD, was found in Src-expressing keratinocytes after calcium treatment (Fig. xref ).") ;; 159
    (p  "Reprobing of the same immunoblot with anti-Src antibodies revealed that this latter protein comigrates and is likely to correspond to constitutively  active Src itself, which increasingly associates with E-cadherin complexes in a calcium-dependent manner.") ;; 160
    (p  "Thus, suppression of cell adhesion in src -transformed  keratinocytes is not because of disruption of E-cadherin/ α-catenin complexes, but correlates with tyrosine phosphorylation of additional proteins not phosphorylated in  response to calcium, including E-cadherin itself.") ;; 161
    (p  "An important question raised by the above results is which  kinase(s) are responsible for tyrosine phosphorylation of  specific catenins in calcium-induced keratinocyte differentiation.") ;; 162
    (p  "In our previous work, we demonstrated that at  least two distinct tyrosine kinases are activated in calcium-induced keratinocyte differentiation, one of which corresponds to Fyn, a specific Src family member ( xref ).") ;; 163
    (p  "An intriguing possibility was that Fyn may be at  least partially responsible for tyrosine phosphorylation of  β- and γ-catenins and p120-Cas in differentiating keratinocytes.") ;; 164
    (p  "Consistent with this possibility, immunofluorescence analysis of detergent-extracted keratinocytes showed  that the after calcium treatment the Fyn kinase colocalizes  with E-cadherin at sites of cell adhesion (Fig. xref ).") ;; 165
    (p  "The tyrosine phosphorylation state of E-cadherin–associated molecules was analyzed in primary keratinocytes  derived from mice with a disruption of the fyn gene versus  genetically matched wild-type controls.") ;; 166
    (p  "Cells were either  kept in low calcium medium or exposed to high calcium  concentrations for various amounts of time.") ;; 167
    (p  "Cell extracts  were immunoprecipitated with antibodies against E-cadherin or p120-Cas, followed by immunoblotting with anti-phosphotyrosine antibodies (Fig. xref  A , top panels ).") ;; 168
    (p  "The  same immunoprecipitates were then blotted with antibodies  against β- and γ-catenins and p120-Cas, to verify amounts  of the respective proteins (Fig. xref  A , bottom panels ).") ;; 169
    (p  "Tyrosine phosphorylation of all three catenins was found to  be reduced in fyn -deficient keratinocytes already under  basal conditions.") ;; 170
    (p  "In response to calcium, tyrosine phosphorylation of β- and γ-catenin increased in fyn -deficient  cells, but to a much lesser extent than in the wild-type controls.") ;; 171
    (p  "Tyrosine phosphorylation of p120-Cas was also  strongly reduced in the fyn -deficient cells, with phosphorylation of the high molecular weight isoforms remaining  close to undetectable even in cells under high calcium conditions.") ;; 172
    (p  "The decreased levels of catenin tyrosine phosphorylation appear to be specific for cells lacking the Fyn kinase, as they were not observed in cells with a disruption  of the related yes or src kinase genes (Fig. xref  A ; data not  shown).") ;; 173
    (p  "This reduction of tyrosine phosphorylation in fyn -deficient keratinocytes may have structural and/or functional  consequences similar to those caused by tyrosine kinase  inhibition.") ;; 174
    (p  "In fact, relative to wild-type controls, electron  microscopy of fyn -deficient keratinocytes treated with calcium showed a drastic reduction in cell junction formation  (Fig. xref  B ).") ;; 175
    (p  "Cell–cell borders remained widely separated  and were connected by pseudopod-like protrusions remarkably similar to those observed with Genistein-treated  cells. A functional impairment in cell adhesion was also revealed by the dispase assay with wild type and fyn knockout cultures tested at 9 h of calcium treatment (Fig. xref  B ).") ;; 176
    (p  "Under these conditions, the fyn -deficient keratinocytes  detached in an uneven fashion, similar to that was observed with tyrosine kinase inhibitor–treated cells.") ;; 177
    (p  "Thus, in cultured keratinocytes, basal and calcium-induced  tyrosine phosphorylation of β- and γ-catenin and p120-Cas  is partially dependent on the Fyn kinase.") ;; 178
    (p  "Lack of this kinase has important structural and functional consequences  that share substantial similarities with those induced by tyrosine kinase inhibitors.") ;; 179
    (p  "Unlike the significant alterations found in fyn -deficient  keratinocytes in culture, the epidermis of fyn knockout  mice shows a partial reduction of differentiation marker  expression ( xref ) but looks otherwise normal.") ;; 180
    (p  "One possible explanation for this discrepancy between the in vitro and in vivo situations could be the capability of other Src family members to compensate for Fyn  function in the intact epidermis.") ;; 181
    (p  "We investigated this possibility as it relates to E-cadherin function, by analyzing  the skin of mice with a concomitant disruption of the fyn / yes and fyn / src genes in comparison with that of wild-type  and single knockout littermates.") ;; 182
    (p  "More than 90% of mice  with double fyn / src, and ∼70% of mice with fyn / yes homozygous mutations die soon after birth ( xref ), thus limiting our analysis to newborn animals.") ;; 183
    (p  "Direct biochemical analysis of keratinocytes in the skin  is complicated by the presence of other cell types.") ;; 184
    (p  "However, we took advantage of the fact that E-cadherin is preferentially expressed in keratinocytes, to directly immunoprecipitate this protein from total skin extracts and evaluate  the in vivo tyrosine phosphorylation pattern of E-cadherin  associated proteins by anti-phosphotyrosine immunoblotting.") ;; 185
    (p  "In an initial set of experiments, we compared E-cadherin complexes derived from wild-type newborn skin versus cultured keratinocytes at 9 h of calcium treatment.") ;; 186
    (p  "Immunoprecipitates were normalized for the same amounts  of E-cadherin protein and immunoblotted sequentially  with antibodies against phosphotyrosine and β- and γ-catenin.") ;; 187
    (p  "Interestingly, the skin-derived E-cadherin complexes  contained a single prominent tyrosine phosphorylated  band as opposed to the two bands present in the complexes from cultured keratinocytes (Fig. xref  B , left panel ).") ;; 188
    (p  "This different tyrosine phosphorylation pattern reflected  the fact that similar amounts of β-catenin were found to be  associated with E-cadherin both in vitro and in vivo.") ;; 189
    (p  "By  contrast, the association of γ-catenin/plakoglobin with E-cadherin is markedly reduced in vivo, possibly because of a  preferential association of this catenin with desmosomal  cadherins in the skin (Fig. xref  B , right panel ).") ;; 190
    (p  "When the skin of single and double knockout mutant  mice was analyzed, similar amounts of E-cadherin–associated β-catenin were found in all cases (Fig. xref  C , bottom  panel ).") ;; 191
    (p  "Tyrosine phosphorylation levels of this catenin  were essentially the same in wild-type mice and mice with  single fyn , yes , or src mutations.") ;; 192
    (p  "By contrast, a very drastic  reduction of β-catenin tyrosine phosphorylation was observed in mice with a concomitant disruption of the fyn and src genes, and, to a lesser extent, in fyn / yes mutants  (Fig. xref  C , top panel ).") ;; 193
    (p  "As discussed above, association of p120-Cas with E-cadherin cannot be detected by coimmunoprecipitation under  standard stringency conditions.") ;; 194
    (p  "For a direct analysis of this  catenin, total skin extracts were immunoprecipitated with  anti–p120-Cas antibodies.") ;; 195
    (p  "Immunoblotting with anti-phosphotyrosine antibodies revealed that levels of tyrosine  phosphorylated p120-Cas were essentially normal in the  skin of single yes knockout mice and were slightly reduced  in the skins of mice with a single fyn or src mutations.") ;; 196
    (p  "By  contrast, tyrosine phosphorylation of all forms of p120-Cas  was strikingly reduced in the skin of double fyn / src mutants. A significant but lesser reduction was also observed  in the skin of fyn / yes knockouts (Fig. xref  D , top panel ).") ;; 197
    (p  "Surprisingly, however, in contrast to the intrinsically decreased tyrosine phosphorylation of β-catenin in the presence of constant protein, p120-Cas protein levels, and not  only their tyrosine phosphorylation state, were drastically  reduced in the double knockouts.") ;; 198
    (p  "This was revealed by immunoblotting with anti–p120-Cas antibodies of the p120-Cas immunoprecipitates (Fig. xref  D , bottom panel ), as well  as by immunoblotting of total skin extracts (data not shown).") ;; 199
    (p  "We tested whether the striking biochemical alterations  found in the skins of double fyn / src -deficient mice were associated with defects in keratinocyte cell adhesion detectable at the histological and/or ultra structural level.") ;; 200
    (p  "Newborn mouse epidermis is composed of multiple stratified  layers.") ;; 201
    (p  "In contrast to normal skin, a separation of overlying layers was observed occasionally in histological sections of double fyn / src mutant skins (data not shown).") ;; 202
    (p  "Much more widespread and significant alterations were  revealed by electron microscopy (Fig. xref ), with cells at the  border between spinosum and granular layers appearing  as the most affected.") ;; 203
    (p  "Similar numbers of well-formed desmosomes were present in the epidermis of wild-type and fyn / src mutant epidermis.") ;; 204
    (p  "However, the tracts of cell membranes between desmosomal junctions, corresponding to  sites of adherens junction formation, were usually closely  juxtaposed in wild-type skin (Fig. xref  A ).") ;; 205
    (p  "By contrast, the  interdesmosomal spaces were often widely separated in  the double knockouts (Fig. xref  B ), generating the appearance of a series of arches or fenestrations between neighboring cells (Fig. xref  C ).") ;; 206
    (p  "In parallel with their lesser biochemical alterations,  skins of double fyn / yes mutant mice showed none of the  ultra structural abnormalities in keratinocyte cell adhesion  found in the fyn / src knockouts.") ;; 207
    (p  "However, subtler alterations may also exist in the epidermis of these mice as indicated by their reduced number of layers (data not shown).") ;; 208
    (p  "Thus, unlike the significant alterations found in culture,  keratinocyte cell adhesion in the epidermis of fyn deficient  mice appears essentially normal.") ;; 209
    (p  "This is likely due to a  functional compensation of Fyn with related kinases.") ;; 210
    (p  "In  fact, in the skin of mice with a double fyn / src knockout  mutation, tyrosine phosphorylation of β-catenin is intrinsically reduced, p120-Cas is strongly downmodulated, and  interdesmosomal spaces are largely increased.") ;; 211
    (p  "We have previously demonstrated that induction of tyrosine phosphorylation is required for keratinocyte differentiation to occur, and that at least two distinct tyrosine kinases are involved, one of which was identified as Fyn.") ;; 212
    (p  "However, only two proteins of ill-defined function were  found to be tyrosine phosphorylated in this process, ras -GAP–associated p62 and cortactin, and the specific physiological function(s) of tyrosine kinase activation in keratinocyte differentiation remained to be established.") ;; 213
    (p  "Also,  the significance of tyrosine phosphorylation for keratinocyte differentiation control in vivo was not assessed.") ;; 214
    (p  "We  show here that induction of tyrosine phosphorylation is involved in at least one key aspect of keratinocyte differentiation, i.e., control of cell adhesion, both in cultured cells  and in the intact skin.") ;; 215
    (p  "E-cadherin–mediated adherens junctions provide a primary determinant of increased cell–cell adhesion in keratinocytes ( xref ; xref ; xref ).") ;; 216
    (p  "We have found here that three E-cadherin–associated proteins, β- and γ-catenins and p120-Cas,  are directly tyrosine phosphorylated at the onset of calcium-induced keratinocyte differentiation, in parallel with  establishment of close intercellular contacts and the beginning of stratification.") ;; 217
    (p  "Consistent with the coordinate control  of adherens junction and desmosome formation ( xref ; xref ), Desmoglein-associated  γ-catenin also appears to be increasingly tyrosine phosphorylated in response to calcium.") ;; 218
    (p  "We have found that tyrosine phosphorylation of β- and γ-catenins does not affect  their association with E-cadherin.") ;; 219
    (p  "In contrast, α-catenin,  which is not itself tyrosine phosphorylated, becomes increasingly associated with E-cadherin/catenin complexes,  with a time course that parallels that of β- and γ-catenin  tyrosine phosphorylation.") ;; 220
    (p  "The increased association of  α-catenin with E-cadherin complexes is blocked by tyrosine kinase inhibition, and the strength of α-catenin association depends directly on tyrosine phosphorylation of  E-cadherin complexes. α-Catenin provides a direct bridge  between cadherin–catenin complexes and the actin cytoskeleton ( xref ).") ;; 221
    (p  "Thus, our findings provide  the first evidence that tyrosine phosphorylation can determine the extent of α-catenin association with E-cadherin  complexes, and provide an attractive explanation for the fact  that in differentiating keratinocytes increased β- and γ-catenin tyrosine phosphorylation is associated with an increased  strength of cell adhesion.") ;; 222
    (p  "Control of adherens junction and  desmosome formation is intimately connected ( xref ; xref ; xref ).") ;; 223
    (p  "Our data indicate that desmosomes may also be controlled  by tyrosine phosphorylation, either directly (for instance,  by γ-catenin tyrosine phosphorylation) or indirectly (through  modulation of adherens junction formation).") ;; 224
    (p  "In mitogenically stimulated or oncogene-transformed  cells, increased tyrosine phosphorylation of β- and γ-catenins has been correlated with a decrease of cell adhesion  ( xref ; xref ; xref ; xref ; xref ; xref ; xref ).") ;; 225
    (p  "However, additional evidence indicates that loosening of cell contacts in  Src-transformed cells cannot be explained by tyrosine  phosphorylation of β-catenin, but is likely resulting from  tyrosine phosphorylation of some other proteins (Taketa  et al., 1995). A similar conclusion is likely to apply to our  cells.") ;; 226
    (p  "In fact, in keratinocytes expressing a constitutively  active Src kinase, the highly increased tyrosine phosphorylation of β- and γ-catenins does not alter their stoichiometry  in E-cadherin complexes, nor the basal or calcium-induced  α-catenin association.") ;; 227
    (p  "Given the relatively low tyrosine  phosphorylation levels of β-catenin in normal calcium-treated  keratinocytes, only a tentative tyrosine phosphopeptide  map could be obtained.") ;; 228
    (p  "These results are consistent with  the possibility raised by our other findings that ( a ) the residues required for basal α-catenin association are already  tyrosine phosphorylated in keratinocytes under low calcium conditions and ( b ) the new residues required for calcium-induced association are not tyrosine phosphorylated  by the constitutively active Src kinase.") ;; 229
    (p  "However, the additional possibility should be considered that any positive  effects of tyrosine phosphorylation of E-cadherin–associated proteins by Src may be counteracted by tyrosine  phosphorylation of other proteins.") ;; 230
    (p  "In fact, we have found  that src -transformed keratinocytes still respond to calcium  but phosphorylate additional proteins, including E-cadherin itself, in an aberrant manner.") ;; 231
    (p  "In addition, constitutively active Src itself was also found to associate with  E-cadherin complexes in a calcium-dependent manner.") ;; 232
    (p  "Thus, by analogy with the results of xref ,  tyrosine phosphorylation of proteins other than β- and  γ-catenins would seem likely to contribute to suppression  of keratinocyte cell adhesion.") ;; 233
    (p  "Besides its role in cadherin-mediated cell adhesion, β-catenin can play a second independent function in signaling  pathways connected with development and cell fate determination (for review see xref ; xref ). A fraction of β-catenin has been reported to localize to the nucleus and to influence, through association  with transcription factors such as LEF-1 or Tcf4, gene expression ( xref ; xref ; xref ).") ;; 234
    (p  "Mice with a disruption ( xref ) or inappropriate expression ( xref ) of  the LEF gene exhibit a significantly altered skin phenotype.") ;; 235
    (p  "Future studies will have to address whether even in  keratinocytes β-catenin is involved in complex functions  other than cell adhesion, and whether the extent of this involvement can be controlled by tyrosine phosphorylation.") ;; 236
    (p  "The other catenin that is found to be directly tyrosine  phosphorylated in differentiating keratinocytes is p120-Cas.") ;; 237
    (p  "Four isoforms of p120-Cas have been described,  which differ for the presence or the absence of two alternatively spliced sequences ( xref ).") ;; 238
    (p  "All  four isoforms are expressed in cultured keratinocytes and  become increasingly tyrosine phosphorylated in response  to calcium, with kinetics similar to those of β- and γ-catenins.") ;; 239
    (p  "However, whereas the stoichiometry of β- or γ-catenin  in E-cadherin complexes is unaffected by calcium treatment,  p120-Cas displays an increased association with E-cadherin.") ;; 240
    (p  "The association of p120-Cas is likely to be more unstable than that of β- or γ-catenin, as it could only be detected by immunoprecipitation under mild stringency.") ;; 241
    (p  "As  with α-catenin association, inhibition of tyrosine phosphorylation suppressed the increased association of p120-Cas  with E-cadherin.") ;; 242
    (p  "This situation in differentiating keratinocytes may be similar to that reported for ras -transformed  breast epithelial cells, where tyrosine phosphorylation of p120  was correlated with increased association with E-cadherin  ( xref ).") ;; 243
    (p  "p120-Cas binds to E-cadherin in close proximity to the  binding site for β- and γ-catenins ( xref ; xref ).") ;; 244
    (p  "However, unlike these latter  molecules, p120-Cas does not bind to α-catenin and thus  may function by blocking the interactions of E-cadherin  with this latter protein and, indirectly, with the cytoskeleton ( xref ).") ;; 245
    (p  "An attractive working  hypothesis is that tyrosine phosphorylation could play two  complementary functions in the changes in cell adhesion  connected with keratinocyte differentiation.") ;; 246
    (p  "Tyrosine phosphorylation of β- and γ-catenins, by promoting α-catenin  association, would enable cadherin–catenin complexes to  become more firmly connected to the actin cytoskeleton,  thus enhancing the strength of cell adhesion.") ;; 247
    (p  "By concomitantly increasing E-cadherin/p120-Cas complex formation,  tyrosine phosphorylation of these latter molecules would  ensure fluidity of cell adhesion, thus allowing stratification.") ;; 248
    (p  "Besides the biochemical data, this hypothesis would  be consistent with the functional and structural analysis  discussed below.") ;; 249
    (p  "Previously used assays of cell adhesion depend on dissociation of cells followed by measurement of their reassociation in suspension and/or after centrifugation ( xref ; xref ).") ;; 250
    (p  "The dispase assay that we have  developed provides a useful alternative, in that it allows to  evaluate epithelial cells as confluent layers, without any  previous disruption of already formed cell contacts, and  taking into account the cohesive strength of both adherens  junction and desmosome formation.") ;; 251
    (p  "Using this approach,  we have found that the cohesiveness of keratinocyte cell  adhesion induced by calcium is significantly lessened by  tyrosine kinase inhibition, and this is associated with a  strongly reduced number of well-formed cell junctions.") ;; 252
    (p  "Similar alterations were observed with confluent cultures  of fyn -deficient keratinocytes, in which calcium-induced  tyrosine phosphorylation was strongly decreased, even if  not totally suppressed (as discussed further below).") ;; 253
    (p  "In  both Genistein-treated and fyn -deficient keratinocytes, a  distinguishing feature that accompanies the scarcity of intercellular junctions and separation of cell–cell borders, is  the formation of pseudopod-like extensions, which may  correspond to abortive attempts of cells to establish stable  junctions with each other.") ;; 254
    (p  "Interestingly, adherens junction  formation has been recently reported to depend on a second signaling pathway involving the rho and rac GTPases,  which control actin/cytoskeleton organization and cell motility ( xref ).") ;; 255
    (p  "Thus, it is tempting to suggest  that efficient adherens junctions formation involves at least  two complementary, and possibly sequential, steps.") ;; 256
    (p  "Active  movement at the cell membrane, leading to bridging protrusions from neighboring cells, would occur in a rho - and rac -dependent fashion, whereas establishment of fully assembled adherens junctions would be under tyrosine phosphorylation control.") ;; 257
    (p  "Besides increased strength, fluidity of cell contacts is an  important element in keratinocyte differentiation, allowing these cells to stratify ( xref ; xref ).") ;; 258
    (p  "Evidence for tyrosine phosphorylation being involved in  dynamic control of cell adhesion is provided by the strongly  reduced stratification of keratinocytes treated with tyrosine  kinase inhibitors ( xref ) or deficient for the  Fyn kinase after calcium exposure ( xref ).") ;; 259
    (p  "Whether or not rho - and rac -dependent pathways are also  involved in the stratification process is obviously a relevant question that remains to be assessed.") ;; 260
    (p  "A final issue raised by our results is which kinase(s) are  responsible for tyrosine phosphorylation of β- and γ-catenins  and p120-Cas in differentiating keratinocytes. A specific  involvement of the Fyn kinase is indicated by the fact that  tyrosine phosphorylation of these catenins is significantly  reduced in cultured keratinocytes with a disruption of the fyn but not yes or src kinase genes.") ;; 261
    (p  "This fact is consistent  with our previous findings that the Fyn kinase is specifically activated in differentiating keratinocytes in culture,  and that a number of differentiation parameters are selectively altered in the fyn -deficient cells ( xref ).") ;; 262
    (p  "However, Fyn is not the only kinase to be involved, as a  lower level of basal and calcium-induced tyrosine phosphorylation of these catenins is still observed in the fyn - deficient keratinocytes.") ;; 263
    (p  "We previously showed that a  second independent tyrosine kinase is activated in calcium- induced keratinocyte differentiation ( xref ),  and it is possible that Fyn and the other calcium-induced  kinase cooperate in control of catenin function by phosphorylation.") ;; 264
    (p  "In addition, other Src family members are  likely to contribute to catenin tyrosine phosphorylation in  keratinocytes.") ;; 265
    (p  "In fact, we have found that functional compensation of Src family members clearly occurs in vivo, as  tyrosine phosphorylation levels of β-catenin are essentially normal in the skin of newborn mice with a single fyn knockout mutation, whereas they are significantly decreased in the skin of mice with a concomitant disruption  of fyn and src genes.") ;; 266
    (p  "Interestingly, in these same mice, protein levels of p120-Cas, and not simply its tyrosine phosphorylation, are drastically reduced.") ;; 267
    (p  "This points to a so far  unexplored control of catenin function by src -related kinases, which may be consistent with the already reported  upregulation of p120-Cas expression in src -transformed  cells ( xref ).") ;; 268
    (p  "In parallel with the biochemical findings, the skin of the  double fyn / src mutants showed striking ultra structural abnormalities, with widely disrupted interdesmosomal spaces  at sites where adherens junctions are usually found.") ;; 269
    (p  "By  contrast, density and structure of desmosomes were essentially normal.") ;; 270
    (p  "In vitro, our data are consistent with the previous demonstration that impaired adherens junction formation affects desmosome assembly as well ( xref ; xref ; xref ).") ;; 271
    (p  "In vivo,  the results with the fyn / src mutant skin suggest that control of adherens junctions and desmosome formation are  at least partially independent.") ;; 272
    (p  "This possibility would also  be consistent with the strikingly different composition of  E-cadherin complexes in the in vitro versus in vivo situation, where the ratio of β- to γ-catenin appears to be markedly increased.") ;; 273
    (p  "The skin of mice with a concomitant disruption of the fyn and yes genes showed none of the alterations in cell  adhesion found in the skin of fyn / src mutants, indicating  that the Src and Yes kinases can compensate for lack of  Fyn to a different extent.") ;; 274
    (p  "In fact, in the fyn / yes knockout  skin tyrosine phosphorylation of β-catenin and expression  of p120-Cas were found to be decreased, but to a significantly lesser extent than in the fyn / src mutants.") ;; 275
    (p  "In addition, other more selective biochemical defects may occur  in the fyn / src knockout epidermis, which could contribute  to its striking reduction in cell adhesion.") ;; 276
    (p  "Taken together, our results indicate that tyrosine phosphorylation, and Fyn-related kinases in particular, play an  essential function in one critical aspect of keratinocyte differentiation, i.e., control of cell adhesion.") ;; 277
    (p  "This regulatory  function is important not only in vitro but also in vivo.") ;; 278
    (p  "More generally, our findings support the notion that in  partially redundant regulatory systems, such as that of Src  family kinases, the biochemical response of cells in tissues  is much more plastic than in culture, so that a combined in  vitro/in vivo approach is necessary to dissect the function  of any individual component.") ;; 279
    (p  "Gab1 is a docking protein that recruits phosphatidylinositol-3 kinase (PI-3 kinase) and other effector proteins in response to the activation of many receptor tyrosine kinases (RTKs).") ;; 280
    (p  "As the autophosphorylation sites on EGF-receptor (EGFR) do not include canonical PI-3 kinase binding sites, it is thought that EGF stimulation of PI-3 kinase and its downstream effector Akt is mediated by an indirect mechanism.") ;; 281
    (p  "We used fibroblasts isolated from Gab1-/- mouse embryos to explore the mechanism of EGF stimulation of the PI-3 kinase/Akt anti-apoptotic cell signaling pathway.") ;; 282
    (p  "We demonstrate that Gab1 is essential for EGF stimulation of PI-3 kinase and Akt in these cells and that these responses are mediated by complex formation between p85, the regulatory subunit of PI-3 kinase, and three canonical tyrosine phosphorylation sites on Gab1.") ;; 283
    (p  "Furthermore, complex formation between Gab1 and the protein tyrosine phosphatase Shp2 negatively regulates Gab1 mediated PI-3 kinase and Akt activation following EGF-receptor stimulation.") ;; 284
    (p  "We also demonstrate that tyrosine phosphorylation of ErbB3 may lead to recruitment and activation of PI-3 kinase and Akt in Gab1-/- MEFs.") ;; 285
    (p  "The primary mechanism of EGF-induced stimulation of the PI-3 kinase/Akt anti-apoptotic pathway occurs via the docking protein Gab1.") ;; 286
    (p  "However, in cells expressing ErbB3, EGF and neuroregulin can stimulate PI-3 kinase and Akt activation in a Gab1-dependent or Gab1-independent manner.") ;; 287
    (p  "Ligand stimulation of the epidermal growth factor receptor (EGFR) and the three other members of the EGFR family of receptor tyrosine kinases (ErbB2, ErbB3 and ErbB4) results in tyrosine autophosphorylation, recruitment of signaling proteins, and activation of distinct complement of signaling pathways that regulate a great variety of cellular responses [ xref , xref ].") ;; 288
    (p  "One of the signaling pathways that is activated by the EGFR is the phosphatidylinositol-3 kinase (PI-3 kinase)/Akt anti-apoptic signaling pathway [ xref ].") ;; 289
    (p  "The PI-3 kinase holoenzyme consists of a regulatory subunit (p85) and a catalytic p110 subunit.") ;; 290
    (p  "The regulatory subunit contains two SH2 domains that bind specifically to pYXXM motifs in a variety of cellular proteins, including receptor tyrosine kinases such as the PDGF (platelet-derived growth factor) receptor, and c-kit and docking proteins such as IRS (insulin receptor substrate) 1, IRS2 and Gab1.") ;; 291
    (p  "Although the cytoplasmic domain of the EGFR does not contain any canonical p85 binding motifs, EGF stimulation leads to PI-3 kinase activation by an indirect mechanism.") ;; 292
    (p  "It has been proposed that the PI-3 kinase is activated in response to EGF stimulation as a consequence of formation of EGFR/ErbB3 heterodimers [ xref ].") ;; 293
    (p  "Unlike EGFR, the cytoplasmic region of ErbB3 contains at least six pYXXM motifs [ xref , xref ].") ;; 294
    (p  "Indeed, EGF stimulation of cells co-expressing the EGFR and ErbB3 results in recruitment and activation of PI-3 kinase by tyrosine phosphorylated ErbB3 [ xref ].") ;; 295
    (p  "EGF stimulation of PI-3 kinase may also be mediated by the docking protein Gab1 (Grb2-associated binder-1).") ;; 296
    (p  "EGF stimulation leads to tyrosine phosphorylation of Gab1 enabling recruitment and activation of PI-3 kinase by the three canonical pYXXM motifs on Gab1 [ xref ].") ;; 297
    (p  "Gab1 was originally identified as a Grb2 binding protein, and was shown to be tyrosine phosphorylated in response to treatment with a variety of growth factors [ xref - xref ].") ;; 298
    (p  "Gab1 contains a number of tyrosine residues that could serve as potential binding sites for the SH2 domain containing proteins Grb2, PI-3 kinase, and the protein tyrosine phosphatase Shp2 [ xref ].") ;; 299
    (p  "While there have been reports that Gab1 binds directly to the EGFR via an 83-amino acid stretch termed the Met-binding-domain or MBD [ xref ], the majority of Gab1 is believed to be indirectly associated with the EGFR via the adaptor protein Grb2, which binds to a proline rich region on Gab1 via its C-terminal SH3 domain [ xref - xref ].") ;; 300
    (p  "Cells over-expressing a mutant Gab1 protein containing tyrosine to phenylalanine mutations at the three p85 binding sites have been shown to be defective in EGF-induced JNK activation, and treatment of cells over-expressing wild type Gab1 with PI-3 kinase inhibitors interferes with MAPK signaling in response to EGF treatment, thus revealing a link between Gab1 and PI-3 kinase in EGF-induced mitogenic signaling [ xref , xref ].") ;; 301
    (p  "Furthermore, the PI-3 kinase product phosphatidylinositol (3,4,5) triphosphate (PIP3) has been shown to bind to the pleckstrin homology (PH) domain of Gab1 resulting in membrane-association of Gab1, suggesting a positive feedback loop in which PI-3 kinase acts as both an upstream regulator and a downstream effector of Gab1 signaling via the EGFR [ xref ].") ;; 302
    (p  "Gab1 thus acts as a docking protein facilitating the recruitment of a multi-protein signaling complex including the EGFR, p85 and Shp2 in response to EGF treatment.") ;; 303
    (p  "Although the role of the Shp2 protein in the control of EGFR/Gab1 interactions is not well understood, several studies have suggested that Gab1-associated Shp2 may influence EGF-induced PI-3 kinase signaling.") ;; 304
    (p  "Previous work has shown that Gab1 is not a global substrate of Shp2, as complex formation between Gab1 and Shp2 does not reduce the total EGF-induced tyrosine phosphorylation levels of Gab1 [ xref ].") ;; 305
    (p  "However there have been several reports suggesting that Shp2 may specifically de-phosphorylate the tyrosine phosphorylation sites on Gab1 that bind to p85, thus terminating recruitment of PI-3 kinase and EGF-induced activation of the PI-3 kinase pathway [ xref - xref ].") ;; 306
    (p  "It has been shown that cells devoid of Shp2 show an increase in PI-3 kinase activity, as well as elevated and sustained levels of Akt activation in response to EGF treatment [ xref ].") ;; 307
    (p  "It was reported that treatment of cells with PI-3 kinase inhibitors or with the phosphatidylinositol (3,4,5) triphosphate (PIP3) phosphatase PTEN interferes with the association between Gab1 and Shp2 in response to EGF treatment, suggesting PI-3 kinase may be required for Shp2 recruitment of Gab1 following EGF stimulation [ xref ].") ;; 308
    (p  "However, the mechanism for this postulated recruitment is unknown.") ;; 309
    (p  "In the experiments presented here we utilized fibroblasts isolated from Gab1-/- mouse embryos in order to examine the role of Gab1 in EGF-mediated activation of the PI-3 kinase/Akt cell survival pathway.") ;; 310
    (p  "We also address the question of whether ErbB3 recruitment of PI-3 kinase is dependent on or independent of Gab1.") ;; 311
    (p  "Our results demonstrate a clear requirement for Gab1 in recruitment and activation of PI-3 kinase in response to EGF stimulation.") ;; 312
    (p  "Additionally, we show that while Shp2 does not mediate global dephosphorylation of Gab1, it does appear to negatively regulate the EGF-induced activation of PI-3 kinase through an undefined mechanism.") ;; 313
    (p  "Finally we demonstrate that ErbB3 is capable of recruiting PI-3 kinase in the absence of Gab1, but Gab1 functions as the major mediator of PI-3 kinase activation in response to EGF stimulation.") ;; 314
    (p  "Previous studies have suggested that ErbB3 and Gab1 can function as links between EGFR and PI-3 kinase.") ;; 315
    (p  "In this report we use MEFs derived from Gab1 -/- embryos [ xref ] to explore the contribution of Gab1 and ErbB3 to EGF stimulation of PI-3 kinase and Akt in these cells.") ;; 316
    (p  "MEFs derived from Gab1-/- or wild type (WT) embryos were stimulated with EGF and assayed for Gab1 tyrosine phosphorylation, for activation of PI-3 kinase and for Akt stimulation.") ;; 317
    (p  "As shown in Figure xref , the endogenous Gab1 present in WT MEFs is tyrosine phosphorylated in response to EGF treatment.") ;; 318
    (p  "As shown in Figure xref , Gab1 -/- MEFs displayed very low levels of EGF-induced PI-3 kinase activity relative to cells expressing Gab1.") ;; 319
    (p  "We did observe an approximate 2-fold increase in this low-level basal PI-3 kinase activity in Gab1 -/- MEFs, which represents a Gab1-independent signaling pathway.") ;; 320
    (p  "Gab1 -/- and WT MEFs were additionally stimulated with EGF and the activation of Akt was analyzed by immunoblotting with antibodies which recognize specifically the activated form of Akt.") ;; 321
    (p  "As shown in Figure xref (top and middle panels), Gab1 -/- cells display no activation of Akt in response to EGF, while WT MEFs show EGF-stimulated Akt activation within two minutes of EGF treatment.") ;; 322
    (p  "The cDNA encoding the wild type murine Gab1 sequence was cloned into a retroviral vector, and the virus was used to infect Gab1 -/- MEFs.") ;; 323
    (p  "Stable cell lines were selected for co-transduction of a puromycin resistance gene and pools of selected cells were used for further analysis.") ;; 324
    (p  "As shown in Figure xref , the ectopic Gab1 protein was expressed at slightly lower levels in the Gab1 -/- MEFs relative to endogenous Gab1 expression seen in the wild type MEFs.") ;; 325
    (p  "Quantitation by densitometry reveals Gab1 expression in wild type MEFs to be 1.4-fold higher than ectopic Gab1 expression in Gab1 -/- MEFs.") ;; 326
    (p  "Treatment with EGF induced tyrosine phosphorylation of the exogenous Gab1 protein expressed in the Gab1 -/- MEFs at levels similar to endogenous Gab1 in wild type MEFs.") ;; 327
    (p  "As shown in Figure xref , expression of exogenous Gab1 in the Gab1 -/- MEFs results in Gab1-associated PI-3 kinase activity that is augmented following EGF treatment.") ;; 328
    (p  "The low level of EGF-induced PI-3 kinase activity observed in the Gab1 -/- cells may be due to signaling via an alternate, Gab1-independent mechanism.") ;; 329
    (p  "These cells were additionally treated with EGF over a period of time and the activation of Akt was assayed by immunoblotting with antibodies specific for the Ser473 phosphorylated form of Akt.") ;; 330
    (p  "The experiment presented in Fig xref shows that ectopic expression of Gab1 in the Gab1 deficient cells rescues EGF-induced Akt activation to levels similar to those observed in EGF-treated wild type MEFs.") ;; 331
    (p  "Taken together, these results demonstrate that Gab1 is required for EGF-stimulation of PI-3 kinase and Akt.") ;; 332
    (p  "The cDNA encoding a mutant Gab1 protein, containing tyrosine to phenylalanine point mutations at the three binding sites for the p85 regulatory subunit of PI-3 kinase (Y446F/Y472F/Y589F) (Gab1 F446/472/589 ), was cloned into a retroviral vector and used to generate pools of stable MEF cell lines as described above.") ;; 333
    (p  "We first assayed the cells for Gab1 expression, and for the ability of the mutant Gab1 F446/472/589 protein to become tyrosine phosphorylated in response to EGF treatment.") ;; 334
    (p  "As shown in Figure xref , both wild type Gab1 and Gab1 F446/472/589 undergo tyrosine phosphorylation in response to EGF treatment (upper left panel).") ;; 335
    (p  "Quantitation of multiple experiments by densitometry reproducibly demonstrates that Gab1 F446/472/589 is tyrosine phosphorylated following EGF treatment to similar levels when normalized for Gab1 expression levels.") ;; 336
    (p  "We next subjected lysates from unstimulated or EGF stimulated cells to immunoprecipitation with anti-Gab1 antibodies followed by immunoblotting with anti-p85 antibodies.") ;; 337
    (p  "As has been demonstrated previously [ xref ], wild type Gab1 readily coimmunoprecipitated p85 following EGF treatment, while the Gab1 F446/472/589 mutant protein failed to show an association with p85, confirming that the Gab1 F446/472/589 protein is deficient in p85 binding.") ;; 338
    (p  "Similar levels of Gab1 expression in these cells were confirmed by reprobing the Gab1 phosphotyrosine blot with anti-Gab1 antibodies (Figure xref , bottom left panel).") ;; 339
    (p  "Additionally, total cell lysates of all Gab1 expressing cell lines described in this study were subjected to anti-Gab1 immunoblotting, providing independent evidence for similar levels of Gab1 expression across all cell lines (Figure xref , right panel).") ;; 340
    (p  "Because the substrates of Shp2 are for the most part unknown, we were additionally interested in examining the state of EGFR tyrosine phosphorylation following treatment with EGF in order to determine if the failure of Gab1 to bind p85, and potentially recruit Shp2, would influence levels of EGFR autophosphorylation.") ;; 341
    (p  "However, stimulation with EGF for varying time intervals revealed no significant differences in the levels of autophosphorylation of EGFR in cells expressing wild type Gab1 versus the Gab1 F446/472/589 mutant (Figure xref ). A linear representation of the EGF-induced EGFR tyrosine phosphorylation following normalization for EGFR expression levels is shown in Figure xref (bottom).") ;; 342
    (p  "These results are consistent with our finding that p85 binding to Gab1 does not influence the recruitment of Shp2 to the Gab1 signaling complex, and are inconsistent with the conclusion that Gab1 mediates a PI-3 kinase-dependent recruitment of Shp2 [ xref ].") ;; 343
    (p  "We next explored the role of Gab1 in EGF-induced activation of the PI-3 kinase/Akt cell survival pathway utilizing the Gab1 F446/472/589 expressing cells.") ;; 344
    (p  "We first assayed the Gab1-associated PI-3 kinase activity directly through a PI-3 kinase assay.") ;; 345
    (p  "As shown in Figure xref , immunoprecipitation of wild type Gab1 following EGF treatment brings down associated PI-3 kinase activity.") ;; 346
    (p  "However immunoprecipitation of Gab1 F446/472/589 is not associated with significant levels of PI-3 kinase in the presence or absence of EGF stimulation.") ;; 347
    (p  "In order to assay the effects of EGF stimulation on signaling downstream of PI-3 kinase, Gab1 -/- MEFs expressing no Gab1, wild type Gab1 or Gab1 F446/472/589 were treated with EGF over varying times and cell lysates were immunoblotted for serine-phosphorylated Akt.") ;; 348
    (p  "Mutation of the p85 binding sites on Gab1 essentially eliminated all EGF-induced Akt activation relative to cells expressing wild type Gab1 (Figure xref ).") ;; 349
    (p  "The binding of p85 is absolutely required for Gab1-mediated activation of PI-3 kinase and Akt following EGF treatment [ xref ].") ;; 350
    (p  "Previous work has indicated that treatment of cells with PI-3 kinase inhibitors reduces levels of EGF-induced complex formation between Gab1 and the protein tyrosine phosphatase Shp2 [ xref ].") ;; 351
    (p  "This finding suggests a role for Gab1 in the PI-3 kinase-dependent recruitment of Shp2 following EGF stimulation.") ;; 352
    (p  "We have examined the possibility that mutation of the p85 binding sites on Gab1, which prevents PI-3 kinase activation, altered EGF-induced recruitment of Shp2 as compared to the recruitment of Shp2 by wild type Gab1.") ;; 353
    (p  "For this purpose, lysates from unstimulated or EGF-stimulated cells were subjected to immunoprecipitation with anti-Gab1 antibodies following immunoblotting with anti-Shp2 antibodies.") ;; 354
    (p  "The experiment presented in Fig xref shows that mutation of the p85 binding sites on Gab1 did not affect recruitment of Shp2 by Gab1 following EGF stimulation (Figure xref , fourth panel from the top).") ;; 355
    (p  "As has been previously observed [ xref ], we noted a low level of basal association between Shp2 and both Gab1 and Gab1 F446/472/589 , which may be due to incomplete growth factor starvation prior to EGF stimulation in these experiments.") ;; 356
    (p  "To assess the role of the protein tyrosine phosphatase Shp2 in Gab1-mediated signaling induced by EGF, two Gab1 mutants were generated and expressed in pools of Gab1 -/- MEFs.") ;; 357
    (p  "The first contained tyrosine to phenylalanine point mutations at the two binding sites for the Shp2 protein tyrosine phosphatase (Y627F/Y659F) (designated Gab1 F627/659 ) and the second contained mutations at the Shp2 binding sites as well as at the three PI-3 kinase binding sites described above (designated Gab1 F446/472/589/627/659 ).") ;; 358
    (p  "We first assayed the ability of the mutant Gab1 proteins to become tyrosine phosphorylated in response to EGF.") ;; 359
    (p  "As shown in Figure xref (top panel) both wild type Gab1 protein and the Gab1 F627/659 protein readily undergo tyrosine phosphorylation when stimulated with EGF.") ;; 360
    (p  "Quantitation following densitometry indicates that Gab1 F627/659 is reproducibly tyrosine phosphorylated to levels approximately 1.5-fold higher than Gab1.") ;; 361
    (p  "This result suggests that Gab1 may be a substrate of Shp2, and that blocking Shp2 binding thereby increases EGF-induced Gab1 tyrosine phosphorylation.") ;; 362
    (p  "The Gab1 F446/472/589/627/659 mutant reproducibly displayed lower levels of tyrosine phosphorylation following treatment with EGF suggesting that these five tyrosines are the main phosphorylation sites on Gab1.") ;; 363
    (p  "Immunoprecipitation of cell lysates with anti-Gab1 antibodies followed by immunoblotting with anti-Shp2 antibodies demonstrates that wild type Gab1 forms a complex with Shp2 following EGF treatment, while the Gab1 F627/659 mutant proteins fail to show an association with Shp2 thus confirming that phosphorylation of Tyr627 and 659 is required for Shp2 binding (Fig xref ).") ;; 364
    (p  "The basal interaction we observed between Gab1 and Shp2 in the absence of EGF stimulation (Figure xref ) is absent in the Gab1 F627/659 mutant, even following prolonged exposures of the western blot.") ;; 365
    (p  "We did not detect a change in the tyrosine phosphorylation of EGFR in cells expressing Gab1 proteins that are deficient in recruitment of Shp2.") ;; 366
    (p  "The experiment presented in Fig xref shows cells stimulated with EGF over varying periods of time and cell extracts assayed for levels of EGFR tyrosine autophosphorylation.") ;; 367
    (p  "As has been previously reported [ xref , xref , xref ], recruitment of Shp2 by Gab1 does not alter the magnitude or kinetics of tyrosine autophosphorylation of EGFR (Figure xref , left panels).") ;; 368
    (p  "Levels of EGFR autophosphorylation are represented linearly following quantitation by densitometry and normalization for protein expression levels (Figure xref , bottom).") ;; 369
    (p  "Previous work with Shp2 -/- cells demonstrated an elevated and sustained activation of PI-3 kinase and Akt in response to EGF treatment, and it was proposed that Shp2 may act to dephosphorylate Gab1 at one or both of the p85 binding sites [ xref ].") ;; 370
    (p  "We utilized the Gab1 proteins deficient in Shp2 binding to assay more directly the role of the Shp2-Gab1 complex in mediating activation of PI-3 kinase and Akt in response to EGF stimulation.") ;; 371
    (p  "As shown in Figure xref , immunoprecipitation of Gab1 F627/659 brings down 1.6-fold higher basal levels of PI-3 kinase activity relative to wild type Gab1 as assayed by PIP3 production.") ;; 372
    (p  "Importantly, Gab1 mutants defective for Shp2 binding show approximately 2-fold higher Gab1-associated PI-3 kinase activity in response to EGF treatment.") ;; 373
    (p  "Consistent with these findings, previous studies have demonstrated that cells transiently over-expressing Gab1 F627/659 bound more p85 [ xref ].") ;; 374
    (p  "In both Gab1 and Gab1 F627/659 expressing cells the Gab1-associated PI-3 kinase activity is augmented by EGF treatment.") ;; 375
    (p  "As expected, the additional mutation of the p85 binding sites eliminates Gab1-associated PI-3 kinase activity.") ;; 376
    (p  "In order to assay the effects of EGF stimulation on signaling downstream of PI-3 kinase, cells were treated with EGF for varying periods of time and cell lysates were assayed for Akt activation by immunoblotting with P-Ser473 Akt antibodies.") ;; 377
    (p  "Interestingly, cells expressing the Gab1 F627/659 protein reproducibly showed activation of Akt with significantly sustained kinetics relative to cells expressing wild type Gab1 (Figure xref , left panels).") ;; 378
    (p  "As expected, the additional mutation of the p85 binding sites (Gab1 F446/472/589/627/659 ) limited Akt activation to levels similar to those observed in the Gab1 -/- cells, confirming the requirement for PI-3 kinase association with Gab1 to induce EGF-mediated activation of the Akt pathway.") ;; 379
    (p  "Taken together, these results suggest a role for Shp2 in negatively regulating the EGF induced activation of the PI-3 kinase pathway via Gab1, possibly by dephosphorylating Gab1 at p85 binding sites.") ;; 380
    (p  "As described above, PI-3 kinase is recruited to the EGFR via the adaptor protein Gab1.") ;; 381
    (p  "The results presented here demonstrate that Gab1 is required for EGF-induced activation of the PI-3 kinase pathway via the EGFR, presumably because this receptor does not contain binding sites for the p85 regulatory subunit of PI-3 kinase.") ;; 382
    (p  "The catalytically inactive ErbB3 receptor, however, contains at least six binding sites for p85 [ xref ], and thus may bypass the requirement for Gab1 in response to EGF by heterodimerizing with the catalytically active EGFR.") ;; 383
    (p  "In order to test this hypothesis, retroviral vectors were used to introduce either the Gab1 or ErbB3 genes into Gab1 -/- MEFs that endogenously express the EGFR but not ErbB3, and pools of stable cell lines were selected for further analysis.") ;; 384
    (p  "We first assayed the ability of the endogenous EGFR to be tyrosine autophosphorylated in response to EGF, as well as the ability of the exogenous ErbB3 receptor to be tyrosine phosphorylated in response to stimulation with either EGF or neuregulin (NRG).") ;; 385
    (p  "The experiment presented in Fig xref shows that all cell lines exhibit EGFR autophosphorylation in response to EGF treatment (Figure xref , upper left panel), while only cells expressing the ectopically introduced ErbB3 protein show ErbB3 tyrosine phosphorylation in response to EGF stimulation.") ;; 386
    (p  "Interestingly, ErbB3 reproducibly shows constitutive low-level tyrosine phosphorylation that is augmented only 1.3-fold in response to EGF treatment.") ;; 387
    (p  "Cells expressing ErbB3 show tyrosine phosphorylation in response to treatment with NRG (Figure xref , upper and middle right panels).") ;; 388
    (p  "Expression of EGFR and ErbB3 in the appropriate cell lines was confirmed by immunoblotting with antibodies specific for EGFR and ErbB3, respectively (Figure xref , lower panels).") ;; 389
    (p  "The apparent decrease in EGFR expression in cells co-expressing EGFR and ErbB3 following EGF treatment was not observed in repetitions of this experiment, and is likely due to a stripping anomaly.") ;; 390
    (p  "Additionally, we demonstrated that Gab1 -/- MEFs that express wild type Gab1 display Gab1 tyrosine phosphorylation in response to EGF treatment, while Gab1 -/- control cells or those expressing ErbB3 do not show Gab1 phosphorylation (Figure xref , upper panel).") ;; 391
    (p  "In order to test the ability of ErbB3 to rescue the EGF-induced activation of the PI-3 kinase/Akt signaling pathway in Gab1 -/- MEFs, we first assayed these cells for EGF-induced PI-3 kinase activity.") ;; 392
    (p  "Cells were either left unstimulated or were stimulated with EGF and cell lysates were immunoprecipitated with anti-phosphotyrosine antibody.") ;; 393
    (p  "Phosphotyrosine-associated PI-3 kinase activity was then assayed by analysis of PIP3 production.") ;; 394
    (p  "As shown in Figure xref , both cells expressing wild type Gab1 and ErbB3 show PI-3 kinase activity, while Gab1 -/- cells do not.") ;; 395
    (p  "Interestingly, EGF induces PI-3 kinase activity to a greater degree in cells expressing Gab1 relative to cells expressing ErbB3.") ;; 396
    (p  "In order to assay the effects of EGF stimulation on signaling downstream of PI-3 kinase, cells were treated with EGF over varying periods of time and assayed for the presence of Ser473-phosphorylated Akt.") ;; 397
    (p  "Treatment of cells expressing either wild type Gab1 or ErbB3 with EGF induced rapid activation of Akt, although cells expressing wild type Gab1 reproducibly displaed higher levels of phosphorylated Akt with significantly sustained kinetics relative to Gab1 -/- cells expressing ErbB3 (Figure xref , left panels).") ;; 398
    (p  "Equal loading and expression levels of Akt were confirmed by immunoblotting (Figure xref , right panels).") ;; 399
    (p  "Cells expressing ErbB3 displayed activation of Akt in response to treatment with NRG at levels similar to or greater than that seen in Gab1-expressing cells following EGF treatment, with activation reproducibly observed at longer time points (Figure xref , left panels).") ;; 400
    (p  "Again, equal loading and expression levels of Akt were confirmed by immunoblotting (Figure xref , right panels).") ;; 401
    (p  "The phosphorylation of AKT in cells expressing Gab1, which shows modest enhancement following treatment with NRG, may be attributed to alternate signaling pathways including those mediated by ErbB2 and ErbB4.") ;; 402
    (p  "Involvement of these receptors was not explored in this study.") ;; 403
    (p  "Taken together, these results demonstrate that ErbB3 can partially compensate for Gab1 deficiency in EGF-induced activation of the PI-3 kinase/Akt signaling pathway, although Gab1-mediated activation appears to be more robust, and likely represents the primary mechanism by which EGF stimulates PI-3 kinase and Akt.") ;; 404
    (p  "While ErbB3 is relatively ineffective at mediating EGF-stimulation of PI-3 kinase activation, it is an efficient mediator of PI-3 kinase stimulation in response to NRG stimulation.") ;; 405
    (p  "Thus, EGF and NRG can stimulate PI-3 kinase activation in normal and transfected cells by means of Gab1 and ErbB3, respectively.") ;; 406
    (p  "The results presented here demonstrate an absolute requirement for Gab1 in EGF-induced activation of the PI-3 kinase/Akt signaling pathway.") ;; 407
    (p  "Using this approach we demonstrated a strict requirement for association between Gab1 and p85 in EGF-induced PI-3 kinase activation, suggesting that Gab1 indeed provides an essential link between the EGFR and PI-3 kinase.") ;; 408
    (p  "Additionally, p85 binding does not play a significant role in Shp2 recruitment to the EGFR-Gab1 signaling complex, in contrast to previous studies [ xref ].") ;; 409
    (p  "We further demonstrated that the Gab1-Shp2 complex is responsible for the negative regulation of the strength and duration of PI-3 kinase/Akt signaling in response to EGF previously observed in Shp2 -/- cells. ErbB3 expression can bypass the requirement for Gab1 in EGFR signaling and can partially rescue EGF-induced activation of the PI-3 kinase/Akt cell survival pathway.") ;; 410
    (p  "This alternate pathway to PI-3 kinase activation may provide cells with a means of controlling either the strength or duration of PI-3 kinase signaling through differential expression of Gab1 and ErbB3, since the ErbB3-mediated response appears to be weaker.") ;; 411
    (p  "Thus Gab1 plays an essential role in bringing together a multi-protein signaling complex in response to EGF that modulates a critical aspect of cellular survival.") ;; 412
    (p  "BL carried on the initial biochemical experiments before leaving the laboratory.") ;; 413
    (p  "DM continued this study and carried out the biochemical studies, the PI-3 kinase assays, and drafted the manuscript.") ;; 414
    (p  "IL participated in the PI-3 kinase assays.") ;; 415
    (p  "JS initiated and supervised the project.") ;; 416
    (p  "All authors read and approved the final manuscript.") ;; 417
    (p  "Activating mutations in FGFR3 tyrosine kinase cause several forms of human skeletal dysplasia.") ;; 418
    (p  "Although the mechanisms of FGFR3 action in cartilage are not completely understood, it is believed that the STAT1 transcription factor plays a central role in pathogenic FGFR3 signaling.") ;; 419
    (p  "Here, we analyzed STAT1 activation by the N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 mutants associated with skeletal dysplasias.") ;; 420
    (p  "In a cell-free kinase assay, only K650M and K650E-FGFR3 caused activatory STAT1(Y701) phosphorylation.") ;; 421
    (p  "Similarly, in RCS chondrocytes, HeLa, and 293T cellular environments, only K650M and K650E-FGFR3 caused strong STAT1 activation.") ;; 422
    (p  "Other FGFR3 mutants caused weak (HeLa) or no activation (293T and RCS).") ;; 423
    (p  "This contrasted with ERK MAP kinase activation, which was strongly induced by all six mutants and correlated with the inhibition of proliferation in RCS chondrocytes.") ;; 424
    (p  "Thus the ability to activate STAT1 appears restricted to the K650M and K650E-FGFR3 mutants, which however account for only a small minority of the FGFR3-related skeletal dysplasia cases.") ;; 425
    (p  "Other pathways such as ERK should therefore be considered as central to pathological FGFR3 signaling in cartilage.") ;; 426
    (p  "Activating mutations in FGFR3 receptor tyrosine kinase result in several forms of skeletal dysplasia.") ;; 427
    (p  "These range from the mild short-limbed dwarfism hypochondroplasia (HCH), to the most common genetic form of dwarfism achondroplasia (ACH), to severe achondroplasia with acanthosis nigricans and mental retardation (SADDAN), and to neonatal lethal thanatophoric dysplasia (TD) xref .") ;; 428
    (p  "Despite recent progress in characterization of the mechanisms of FGFR3 signaling in cartilage, many aspects of this signaling remain unclear.") ;; 429
    (p  "At present, the FGFR3-mediated activation of STAT1 is believed to be a prominent mechanism of pathological FGFR3 signaling in cartilage [for reviews see references 2–4].") ;; 430
    (p  "Several lines of evidence support this paradigm.") ;; 431
    (p  "First, the expression of FGFR3 harboring the highly activating TD-associated K650M or K650E mutations leads to activatory STAT1(Y701) phosphorylation in cells.") ;; 432
    (p  "This is evidenced in 293T embryonal kidney cells, PC12 pheochromocytoma cells, HeLa cervical cancer cells, and RCS chondrocytes xref – xref .") ;; 433
    (p  "This activation is accompanied with induction of differentiation in PC12 cells xref , or with STAT1 nuclear accumulation, increased levels of the p21 Waf1 inhibitor of the cell cycle, and inhibition of proliferation in 293T cells xref .") ;; 434
    (p  "Second, STAT1 accumulates and shows nuclear localization in the cartilage of TD-affected human fetuses as well as in mice carrying the K644E-FGFR3 mutation (homologous to human K650E) xref , xref .") ;; 435
    (p  "Finally, two experimental studies show that the loss of STAT1 partially rescues the growth-inhibitory action of FGF signaling in chondrocytes xref , xref , both suggesting the role of STAT1 in the growth-inhibitory FGFR3 action in cartilage.") ;; 436
    (p  "In contrast to the STAT1 hypothesis, several studies have demonstrated that ERK and p38 MAP kinases but not STAT1 are important for FGFR3-mediated growth inhibition of chondrocytes both in vitro and in vivo  xref , xref – xref .") ;; 437
    (p  "The majority of evidence supporting the role of STAT1 in FGFR3 signaling in cartilage was obtained using the K650M or K650E mutants, which account for only a small subset of FGFR3-related skeletal dysplasia cases xref .") ;; 438
    (p  "In addition, FGFR3 mutations only exaggerate the normal physiological function of FGFR3, which serves as a negative regulator of cartilage growth xref , xref .") ;; 439
    (p  "No activation of STAT1 was found by wild-type FGFR3 in several studies xref – xref , xref , xref , suggesting that STAT1 might not be the major intermediate in the FGFR3 signaling in cartilage.") ;; 440
    (p  "To answer this question, we compared six FGFR3 mutants, which together account for the majority of the known skeletal dysplasia cases, for their activation of STAT1 and ERK MAP kinase, and their effects on chondrocyte growth.") ;; 441
    (p  "Although the expression of K650E-FGFR3 induces activatory STAT1(Y701) phosphorylation in cells xref , xref , the mechanism by which FGFR3 achieves this effect was not known until recently.") ;; 442
    (p  "Previously, we showed that K650E-FGFR3 interacts with STAT1 in cells and phosphorylates STAT1(Y701) in a cell-free kinase assay, thus serving as a STAT1 tyrosine kinase xref .") ;; 443
    (p  "Here, we used the FGFR3 kinase assay to compare the ability of six different FGFR3 mutants associated with a range of skeletal dysplasia phenotypes to activate STAT1.") ;; 444
    (p  "Vectors carrying the wild-type FGFR3 as well as the N540K (HCH), G380R (ACH), R248C, Y373C, K650E (TD) and K650M (SADDAN and TD) mutants were expressed in CHO cells.") ;; 445
    (p  "Transfected cells were stimulated with FGF2 and FGFR3 was purified by immunoprecipitation 48 hours later.") ;; 446
    (p  "Subsequently, the FGFR3 immunocomplexes were subjected to a kinase assay with recombinant STAT1 as a substrate.") ;; 447
    (p  "In this experiment, only the K650M and K650E mutants induced activatory phosphorylation of STAT1(Y701); the other mutants as well as wild-type FGFR3 caused no detectable phosphorylation ( xref ).") ;; 448
    (p  "The lack of STAT1 phosphorylation by the HCH and ACH mutants N540K and G380R as well as by the TD mutants R248C and Y373C might be explained by the lower levels of their activity when compared to K650E and K650M-FGFR3, although we do not favor this hypothesis.") ;; 449
    (p  "First, even the wild-type FGFR3 showed strong activity against its known substrate FRS2 under the same experimental conditions xref .") ;; 450
    (p  "Second, R248C and Y373C are strongly activating mutants and cause TD similar to K650M and K650E, yet they did not phosphorylate STAT1 in a kinase assay ( xref ).") ;; 451
    (p  "As the kinase assay is a simple, cell-free system where both kinase and substrate are in excess and there are no other proteins in the reaction, it might not entirely reflect in vivo situation.") ;; 452
    (p  "It is possible that N540K, G380R, R248C and Y373C mutants still activate STAT1 in cells, despite the lack of this capacity in a kinase assay ( xref ).") ;; 453
    (p  "For instance, other interacting proteins that facilitate FGFR3-mediated STAT1 activation could exist in cells.") ;; 454
    (p  "In addition, the lack of STAT1 phosphorylation by strongly in vivo activating TD mutations R248C and Y373C may stem from the fact that they affect the extracellular part of FGFR3 and activate FGFR3 by facilitating its dimerization xref .") ;; 455
    (p  "Although we activated FGFR3 in CHO cells by exogenous FGF2 addition, it is unlikely that FGFR3 was immunoprecipitated in a form identical to intact cell membrane-associated FGF2/FGFR3 complexes.") ;; 456
    (p  "In contrast, K650M and K650E mutations affect the intracellular part of FGFR3 and activate FGFR3 via conformational changes that activate the kinase domain, which are normally initiated by ligand binding and autophosphorylation xref .") ;; 457
    (p  "It is likely that this process is less sensitive to the potential artifacts introduced by the methods used, i.e. to the FGFR3 purification and kinase assay conditions.") ;; 458
    (p  "Therefore, we hypothesized that the N540K, G380R, R248C and Y373C mutants might somehow phosphorylate STAT1(Y701) in cells similar to K650M and K650E.") ;; 459
    (p  "FGFR3 mutants were expressed in three different cellular environments (HeLa, 293T and RCS cells) and transfectants analyzed for STAT1(Y701) phosphorylation. HeLa and 293T cell lines were chosen since they were used previously to study the K650M or K650E-FGFR3-mediated STAT1 activation xref , xref , xref , xref , xref ; RCS chondrocytes were used since this cell line represents an established in vitro model for FGFR3 signaling in cartilage xref , xref , xref , xref , xref – xref .") ;; 460
    (p  "Cells were transfected with N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 mutants and analyzed for activatory STAT1(Y701) phosphorylation 48 hours later. xref shows that only the K650M and K650E mutants activated STAT1 in 293T and RCS cells, identically to the kinase assay data ( xref ).") ;; 461
    (p  "This phenotype was not affected by FGF2 treatment (20 ng/ml; 15 minutes).") ;; 462
    (p  "In contrast, we found a weak STAT1(Y701) activation in HeLa cells transfected with wild-type FGFR3 as well as with the G380R, R248C and Y373C mutants ( xref ).") ;; 463
    (p  "Although much lower than the activation induced by K650M or K650E mutants, it appeared to be dependent on the transgenic FGFR3-activity, since we found no STAT1(Y701) activation in cells transfected by the kinase-inactive K508M-FGFR3 mutant.") ;; 464
    (p  "In cells transfected with FGFR3 mutants, we also monitored the recruitment of the ERK MAP kinase pathway, which is activated by FGFR3 signaling in cartilage in addition to STAT1 and regulates aberrant chondrocyte proliferation and/or differentiation in FGFR3-related skeletal dysplasias xref , xref , xref .") ;; 465
    (p  "In 293T and RCS cells, all six FGFR3 mutants induced activatory ERK(T202/Y204) phosphorylation ( xref ).") ;; 466
    (p  "The activation of ERK by FGFR3 mutants could not be determined in HeLa cells due to high levels of endogenous active ERK in this cell line (data not shown).") ;; 467
    (p  "When compared to untreated cells, the levels of ERK activation are much higher in cells treated with FGF2 in all transfectants ( xref ).") ;; 468
    (p  "This is likely a result of FGF2-mediated activation of endogenous FGFR2/4 or FGFR3, expressed in 293T (data not shown) or RCS cells xref .") ;; 469
    (p  "In summary, xref shows that ERK MAP kinase is activated by virtually all tested FGFR3 mutants in cells, including the weakly activating HCH and ACH mutants N540K and G380R, respectively.") ;; 470
    (p  "In contrast, STAT1 activation was restricted only to the K650M and K650E mutants in 293T and RCS cells.") ;; 471
    (p  "Our data are in agreement with others xref , xref , xref , who found no STAT1(Y701) phosphorylation by wild-type FGFR3 compared to K650M or K650E-FGFR3.") ;; 472
    (p  "In HeLa cells however, we found slight STAT1(Y701) phosphorylation induced by wild-type FGFR3 as well as G380R, R248C and Y373C mutants, similar to Legeai-Mallet et al . xref , Plowright et al . xref and Ronchetti et al . xref , who found STAT1 activation in cells expressing R248C or Y373C-FGFR3.") ;; 473
    (p  "As determined by densitometry, the activation of STAT1 by wild-type FGFR3 in HeLa cells was ∼5.5-fold lower than in K650M ( xref ), similar to Harada et al. xref or Su et al. xref , who found the wild-type FGFR3 activating STAT1 to the levels 4.8-fold or 20-fold lower than K650M.") ;; 474
    (p  "Taken together, we found that wild-type FGFR3 as well as G380R, R248C and Y373C mutants may activate STAT1 depending on the cellular environment, although this activation is significantly lower when compared to K650M or K650E-FGFR3 ( xref ).") ;; 475
    (p  "How is this activation achieved? In the case of K650M and K650E mutants, the majority of STAT1 activation in cells is likely a result of direct phosphorylation and may result from intracellular activation xref .") ;; 476
    (p  "For wild-type FGFR3 or G380R, R248C and Y373C mutants the direct FGFR3-mediated phosphorylation can not be ruled-out despite the lack of such activity in a kinase assay ( xref ).") ;; 477
    (p  "We speculate, however, that FGFR3 may facilitate STAT1 activation by its canonical pathways such as cytokine-JAK signaling xref .") ;; 478
    (p  "Recently, we showed that STAT1 interacts with wild-type FGFR3 in cells and this interaction appears independent of FGFR3 activity since it is observed also for the K508M kinase-inactive mutant xref .") ;; 479
    (p  "Thus the binding to transmembrane FGFR3 may recruit STAT1 to the membrane such that STAT1 is activated by JAK kinases.") ;; 480
    (p  "RCS chondrocytes represent the best characterized in vitro model to FGFR3-related skeletal dysplasia to date xref , xref , xref , xref – xref .") ;; 481
    (p  "RCS chondrocytes express wild-type FGFR3 and respond to its activation, via exogenously added FGF, by a potent growth arrest similar to the chondrocyte growth inhibition observed in cartilage of patients suffering from FGFR3-related skeletal dysplasias xref , xref , xref .") ;; 482
    (p  "We used RCS chondrocytes to evaluate the effect of FGFR3 mutants on cell proliferation in the context of STAT1 and ERK activation.") ;; 483
    (p  "As expected, 48 hour-long expression of N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 led to STAT1 activation only in case of K650M and K650E mutants in contrast to ERK activation, which was observed for all six mutants ( xref ).") ;; 484
    (p  "For the growth arrest assay, RCS chondrocytes were transfected in 24-well plates, grown for 72 hours and counted. xref shows that all six FGFR3 mutants caused significant growth arrest when compared to cells transfected with wild-type FGFR3, kinase-inactive K508M mutant or empty vector, suggesting each has this capacity.") ;; 485
    (p  "To control for variance created by differential transgene expression within one experiment, we repeated the experiment shown in xref five times.") ;; 486
    (p  "Again, all six mutants inhibited the growth of RCS chondrocytes with Y373C, K650M and K650E-FGFR3 being the strongest inhibitors ( xref ).") ;; 487
    (p  "When compared with cells tranfected with empty vector or with the kinase-inactive K508M mutant, the wild-type FGFR3 also inhibited RCS growth ( xref ).") ;; 488
    (p  "It is likely that ectopic expression of wild-type FGFR3 leads to its activation and subsequent RCS growth arrest, similar to that described for B9 cells xref .") ;; 489
    (p  "Our study compares six different FGFR3 mutants associated with skeletal dysplasias for their activation of the STAT1 and ERK MAP kinase pathways.") ;; 490
    (p  "According to our previous study compiling the clinical data of 591 patients, the N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 mutants used here account for 92.9% of cases xref .") ;; 491
    (p  "Therefore, by clinical prevalence criteria, the mutants studied represent a majority of known FGFR3-related dysplasia cases.") ;; 492
    (p  "Our results demonstrate that activation of STAT1 is limited mostly to the K650M and K650E-FGFR3 in the experimental settings used here ( xref – xref  xref ).") ;; 493
    (p  "Although it is possible that the other tested mutants also activate STAT1, this activity is undetectable or much lower when compared to K650M and K650E-FGFR3 ( xref ).") ;; 494
    (p  "In fact, we show that wild-type, N540K, G380R, R248C and Y373C-FGFR3 activate STAT1 poorly despite the experimental conditions used here, i.e. kinase reaction where both FGFR3 and STAT1 are used in excess as well as in vitro cell experiments with overexpressed FGFR3.") ;; 495
    (p  "We thus conclude that, among the FGFR3 mutants associated with skeletal dysplasia, only K650M and K650E possess an unique substrate specificity towards STAT1, possibly through intracellular signaling mechanisms xref .") ;; 496
    (p  "Taken together, we demonstrate that only K650M and K650E-FGFR3 mutants represent the only significant activators of STAT1 among the mutants studied here ( xref – xref  xref ).") ;; 497
    (p  "As K650M and K650E mutations account only for a minority of the FGFR3-related dysplasia cases (4.9%) xref , activation of STAT1 does not cause the disease in majority of the cases ( xref ).") ;; 498
    (p  "Other pathways should therefore be considered as prominent in the pathological FGFR3 signaling in skeletal dysplasias.") ;; 499
    (p  "This may be ERK MAP kinase pathway, which is a candidate for the FGFR3-mediated chondrocyte growth arrest xref , xref , xref , is more or less uniformly induced by N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 mutants used here ( xref , xref ), and activation of this pathway largely replicates the skeletal phenotype of FGFR3 mutations xref , xref .") ;; 500
    (p  "In addition to STAT1, STAT5 was also found activated by FGFR3 mutants in cartilage in vivo  xref , xref .") ;; 501
    (p  "We therefore tested the ability of N540K, G380R, R248C, Y373C, K650E and K650M-FGFR3 mutants to activate STAT5 in RCS chondrocytes.") ;; 502
    (p  "Cells were transfected with N540K, G380R, R248C, Y373C, K650M and K650E-FGFR3 mutants and analyzed for activatory STAT5(Y694) phosphorylation 24 hours later. xref shows that only the K650M and K650E mutants caused significant STAT5(Y694) phosphorylation in RCS chondrocytes.") ;; 503
    (p  "This phenotype was obtained with two different P-STAT5(Y694) antibodies thus ruling-out the cross-reactivity with STAT1.") ;; 504
    (p  "Identical results were obtained with HeLa and 293T cells (not shown).") ;; 505
    (p  "Our data thus suggest that signaling of FGFR3 mutants towards STAT5 is similar to STAT1, i.e. only the K650M and K650E-FGFR3 are significant activators of STAT5.") ;; 506
    (p  "Oncogenic mutations in the serine/threonine kinase B-RAF are found in 50–70% of malignant melanomas xref .") ;; 507
    (p  "Pre-clinical studies have demonstrated that the B-RAF V600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma xref – xref —an observation that has been validated by the success of RAF and MEK inhibitors in clinical trials xref – xref .") ;; 508
    (p  "However, clinical responses to targeted anticancer therapeutics are frequently confounded by de novo or acquired resistance xref – xref .") ;; 509
    (p  "Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies xref .") ;; 510
    (p  "Here, we expressed ~600 kinase and kinase-related open reading frames (ORFs) in parallel to functionally interrogate resistance to a selective RAF kinase inhibitor.") ;; 511
    (p  "We identified MAP3K8 (COT/TPL2) as a MAPK pathway agonist that drives resistance to RAF inhibition in B-RAF V600E cell lines.") ;; 512
    (p  "COT activates ERK primarily through MEK-dependent mechanisms that do not require RAF signaling.") ;; 513
    (p  "Moreover, COT expression is associated with de novo resistance in B-RAF V600E cultured cell lines and acquired resistance in melanoma cells and tissue obtained from relapsing patients following treatment with MEK or RAF inhibition.") ;; 514
    (p  "We further identify combinatorial MAPK pathway inhibition or targeting of COT kinase activity as possible therapeutic strategies for reducing MAPK pathway activation in this setting.") ;; 515
    (p  "Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies.") ;; 516
    (p  "To identify kinases capable of circumventing RAF inhibition, we assembled and stably expressed 597 sequence-validated kinase ORF clones representing ~75% of annotated kinases (Center for Cancer Systems Biology (CCSB)/Broad Institute Kinase ORF Collection) in A375, a B-RAF V600E malignant melanoma cell line that is sensitive to the RAF kinase inhibitor PLX4720 xref ( xref , xref ).") ;; 517
    (p  "ORF-expressing cells treated with 1 µM PLX4720 were screened for viability relative to untreated cells and normalized to an assay-specific positive control, MEK1 S218/222D (MEK1 DD ) xref ( xref ).") ;; 518
    (p  "Nine ORFs conferred resistance at levels exceeding two standard deviations from the mean ( xref and xref ) and were selected for follow-up analysis ( xref ).") ;; 519
    (p  "Three of nine candidate ORFs were receptor tyrosine kinases, underscoring the potential of this class of kinases to engage resistance pathways.") ;; 520
    (p  "Resistance effects were validated and prioritized across a multi-point PLX4720 drug concentration scale in the B-RAF V600E cell lines A375 and SKMEL28.") ;; 521
    (p  "The Ser/Thr MAP kinase kinase kinases (MAP3Ks) MAP3K8 (COT/Tpl2) and RAF1 (C-RAF) emerged as top candidates from both cell lines; these ORFs shifted the PLX4720 GI 50 by 10-600 fold without affecting viability ( xref ).") ;; 522
    (p  "Both COT and C-RAF reduced sensitivity to PLX4720 in multiple B-RAF V600E cell lines ( xref ) confirming the ability of these kinases to mediate resistance to RAF inhibition.") ;; 523
    (p  "Next, we tested whether overexpression of these genes was sufficient to activate the MAPK pathway.") ;; 524
    (p  "At baseline, COT expression increased ERK phosphorylation in a manner comparable to MEK1 DD , consistent with MAP kinase pathway activation ( xref and xref ).") ;; 525
    (p  "Overexpression of wild-type COT or C-RAF resulted in constitutive phosphorylation of ERK and MEK in the presence of PLX4720, whereas kinase-dead derivatives had no effect ( xref , xref ).") ;; 526
    (p  "Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling.") ;; 527
    (p  "Notably, of the nine candidate ORFs from our initial screen, a subset (3) did not show persistent ERK/MEK phosphorylation following RAF inhibition, suggesting MAPK pathway-independent alteration of drug sensitivity ( xref ).") ;; 528
    (p  "Several groups have shown that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition xref – xref .") ;; 529
    (p  "In A375 cells, endogenous C-RAF: B-RAF heterodimers were measurable and inducible following treatment with PLX4720 ( xref ).") ;; 530
    (p  "However, endogenous C-RAF phosphorylation at S338—an event required for C-RAF activation—remained low ( xref ).") ;; 531
    (p  "In contrast, ectopically expressed C-RAF was phosphorylated on S338 ( xref ) and its PLX4720 resistance phenotype was associated with sustained MEK/ERK activation ( xref , xref ).") ;; 532
    (p  "Moreover, ectopic expression of a high-activity C-RAF truncation mutant (C-RAF(W22) was more effective than wild-type C-RAF in mediating PLX4720 resistance and ERK activation ( xref ), further indicating that elevated C-RAF activity may direct resistance to this agent.") ;; 533
    (p  "Consistent with this model, oncogenic alleles of NRAS and KRAS conferred PLX4720 resistance in A375 cells ( xref ) and yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment ( xref ).") ;; 534
    (p  "Thus, although genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend to show mutual exclusivity with B-RAF V600E mutation, such co-occurring events xref , xref might be favored in the context of acquired resistance to B-RAF inhibition.") ;; 535
    (p  "To investigate the role of COT in melanoma, we first determined its expression in human melanocytes.") ;; 536
    (p  "We found that primary immortalized melanocytes (B-RAF wild-type) expressed COT ( xref ), although ectopic B-RAF V600E expression reduced COT mRNA levels ( xref ) and rendered COT protein undetectable ( xref ).") ;; 537
    (p  "Conversely, whereas ectopically expressed COT was only weakly detectable in A375 cells ( xref ), shRNA-mediated depletion of endogenous B-RAF V600E caused an increase in COT protein levels that correlated with the extent of B-RAF knockdown ( xref ).") ;; 538
    (p  "Moreover, treatment of COT-expressing A375 cells with PLX4720 led to a dose-dependent increase in COT protein ( xref ) without affecting ectopic COT mRNA levels ( xref ).") ;; 539
    (p  "Thus, oncogenic B-RAF may antagonize COT expression largely through altered protein stability ( xref , and xref ), and B-RAF inhibition may potentiate the outgrowth of COT-expressing cells during the course of treatment.") ;; 540
    (p  "Notably, neither C-RAF nor B-RAF alone or in combination was required for ERK phosphorylation in the context of COT expression, even in the presence of PLX4720 ( xref and xref ), suggesting that COT expression is sufficient to induce MAP kinase pathway activation in a RAF-independent manner.") ;; 541
    (p  "We predicted that cell lines expressing elevated COT in a B-RAF V600E background should exhibit de novo resistance to PLX4720 treatment.") ;; 542
    (p  "To identify such instances, we screened a panel of cell lines for evidence of MAP3K8 /COT copy number gains coincident with the B-RAF V600E mutation.") ;; 543
    (p  "Of 534 cell lines that had undergone copy number analysis and mutation profiling, 38 cell lines (7.1%) contained the B-RAF V600E mutation.") ;; 544
    (p  "Within this subgroup, two cell lines—OUMS-23 (colon cancer) and RPMI-7951 (melanoma)—also showed evidence of chromosomal copy gains spanning the MAP3K8 /COT locus ( xref , xref ) and robust COT protein expression ( xref , xref ).") ;; 545
    (p  "We also screened a panel of melanoma short-term cultures for COT protein expression.") ;; 546
    (p  "Only one of these lines expressed COT: M307, a short-term culture derived from a B-RAF V600E tumor that developed resistance to allosteric MEK inhibition following initial disease stabilization xref ( xref ).") ;; 547
    (p  "All three cell lines were refractory to PLX4720 treatment, exhibiting GI 50 values in the range of 8–10 µM ( xref ) and showing sustained ERK phosphorylation in the context of B-RAF inhibition ( xref ).") ;; 548
    (p  "OUMS-23 and RPMI-7951 are MAPK pathway inhibitor-naïve cell lines, implying that COT may confer de novo resistance to RAF inhibition (a phenomenon observed in ~10% of B-RAF V600E melanomas xref ).") ;; 549
    (p  "Next, we examined COT expression in the context of resistance to the clinical RAF inhibitor PLX4032 by obtaining biopsy material from 3 patients with metastatic, B-RAF V600E melanoma.") ;; 550
    (p  "Each case consisted of frozen, lesion-matched biopsy material obtained prior to and during treatment (“pre-treatment” and “on-treatment”; xref , xref ); additionally, one sample contained two independent biopsy specimens from the same relapsing tumor site (“post-relapse”; xref ).") ;; 551
    (p  "Consistent with the experimental models presented above, quantitative real-time RT-PCR (qRT/PCR) analysis revealed increased COT mRNA expression concurrent with PLX4032 treatment in 2 of 3 cases.") ;; 552
    (p  "COT mRNA levels were further increased in a relapsing specimen relative to its pre-treatment and on-treatment counterparts ( xref , Patient #1).") ;; 553
    (p  "An additional, unmatched relapsed malignant melanoma biopsy showed elevated COT mRNA expression comparable to levels observed in RAF inhibitor-resistant, COT-amplified cell lines ( xref ).") ;; 554
    (p  "This specimen also exhibited robust MAPK pathway activation and elevated expression of B-RAF, C-RAF and COT relative to matched normal skin or B-RAF V600E cell lines ( xref ).") ;; 555
    (p  "Sequencing studies of this tumor revealed no additional mutations in BRAF, NRAS or KRAS (data not shown).") ;; 556
    (p  "These analyses provided clinical evidence that COT-dependent mechanisms may be operant in at least some PLX4032-resistant malignant melanomas.") ;; 557
    (p  "To determine if COT might actively regulate MEK/ERK phosphorylation in B-RAF V600E cells that harbor naturally elevated COT expression, we introduced shRNA constructs targeting COT into RPMI-7951 cells.") ;; 558
    (p  "Depletion of COT suppressed RPMI-7951 viability ( xref ) and decreased ERK phosphorylation ( xref ), implying that targeting COT kinase activity might suppress MEK/ERK phosphorylation in cancer cells with COT overexpression or amplification.") ;; 559
    (p  "Treatment of RPMI-7951 cells with a small molecule COT kinase inhibitor xref – xref resulted in dose-dependent suppression of MEK and ERK phosphorylation, providing additional evidence that COT contributes to MEK/ERK activation in these cells ( xref ).") ;; 560
    (p  "We then considered whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF.") ;; 561
    (p  "Here, we queried the OUMS-23 and RPMI-7951 cell lines for sensitivity to the MEK1/2 inhibitor CI-1040.") ;; 562
    (p  "Interestingly, both cell lines were refractory to MEK inhibition ( xref ) and displayed sustained ERK phosphorylation even at 1 µM CI-1040 ( xref ).") ;; 563
    (p  "Ectopic COT expression in A375 and SKMEL28 cells also conferred decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244, suggesting that COT expression alone was sufficient to induce this phenotype ( xref , xref ).") ;; 564
    (p  "Similar to results observed with pharmacological MEK inhibitors, MEK1/2 knockdown only modestly suppressed COT–mediated ERK phosphorylation in A375 cells ( xref ).") ;; 565
    (p  "In accordance with prior observations xref , these data raised the possibility that COT may activate ERK through MEK-independent and MEK-dependent mechanisms.") ;; 566
    (p  "To test this hypothesis directly, we performed an in vitro kinase assay using recombinant COT and ERK1.") ;; 567
    (p  "Indeed, recombinant COT induced pThr202/Tyr204 phosphorylation of ERK1 in vitro ( xref ) suggesting that in certain contexts, COT expression may potentiate ERK activation in a MEK-independent manner.") ;; 568
    (p  "In experimental models, the use of RAF and MEK inhibitors in combination can override resistance to single-agents xref .") ;; 569
    (p  "We therefore reasoned that combined RAF/MEK inhibition might circumvent COT-driven resistance.") ;; 570
    (p  "In the setting of ectopic COT expression, exposure to AZD6244 or CI-1040 in combination with PLX470 (1 µM each) reduced cell growth and pERK expression more effectively than did single-agent PLX4720, even at concentrations of 10 µM ( xref and xref ).") ;; 571
    (p  "These data underscore the importance of this pathway in B-RAF V600E tumor cells and support earlier findings xref that dual B-RAF/MEK inhibition may help circumvent resistance to RAF inhibitors.") ;; 572
    (p  "B-RAF mutations are found in ~8% of all cancers and at high frequencies in malignant melanoma, colon and thyroid cancers xref .") ;; 573
    (p  "The clinical promise of selective RAF inhibitors has widespread ramifications for patient treatment, yet single agent targeted therapy is almost invariably followed by relapse due to acquired drug resistance.") ;; 574
    (p  "Our results suggest that ORF-based, systematic functional screening may offer a powerful means to identify clinically relevant resistance mechanisms that also specify novel treatment strategies.") ;; 575
    (p  "In particular, resistance to RAF inhibition can be achieved by multiple MAP3K-dependent mechanisms of MEK/ERK reactivation but might be intercepted through combined therapeutic modalities for MAPK pathway inhibition (e.g., RAF/MEK or RAF/COT combinations).") ;; 576
    (p  "Future systematic drug resistance studies may be expanded to a genome scale that encompasses many compounds, thereby enabling comprehensive identification of both therapy-specific resistance genes and drug targets of novel therapeutics.") ;; 577
    (p  "Targeted inhibition of protein kinases is now acknowledged as an effective approach for cancer therapy.") ;; 578
    (p  "However, targeted therapies probably have limited success because cancer cells have alternate pathways for survival and proliferation thereby avoiding inhibition.") ;; 579
    (p  "We tested the hypothesis that combination of targeted agents would be more effective than single agents in arresting melanoma cell proliferation.") ;; 580
    (p  "We evaluated whether BAY43-9006, an inhibitor of the B-Raf kinase, and rapamycin, an inhibitor of the mTOR kinase, would inhibit serum-stimulated proliferation of human melanoma cell lines, either alone or in combination.") ;; 581
    (p  "Proliferation was measured by quantitating melanoma cell numbers with a luciferase for ATP.") ;; 582
    (p  "Phosphorylation of proteins downstream of targeted kinase(s) was assayed by immunoblots.") ;; 583
    (p  "Statistical significance was determined with the Student-T test.") ;; 584
    (p  "Isobologram analysis was performed to distinguish additive versus synergistic effects of combinations of drugs.") ;; 585
    (p  "Serum-stimulated proliferation of multiple human melanoma cell lines was inhibited by BAY43-9006 and by rapamycin.") ;; 586
    (p  "Melanoma cells containing the B-Raf mutation V599E were more sensitive than cells with wild-type B-raf to 10 nM doses of both BAY43-9006 and rapamycin.") ;; 587
    (p  "Regardless of B-Raf mutational status, the combination of low dose rapamycin and BAY43-9006 synergistically inhibited melanoma cell proliferation.") ;; 588
    (p  "As expected, rapamycin inhibited the phosphorylation of mTOR substrates, p70S6K and 4EBP1, and BAY43-9006 inhibited phosphorylation of ERK, which is dependent on B-Raf activity.") ;; 589
    (p  "We also observed unexpected rapamycin inhibition of the phosphorylation of ERK, as well as BAY43-9006 inhibition of the phosphorylation of mTOR substrates, p70S6K and 4EBP1.") ;; 590
    (p  "There was synergistic inhibition of melanoma cell proliferation by the combination of rapamycin and BAY 43-9006, and unexpected inhibition of two signaling pathways by agents thought to target only one of those pathways.") ;; 591
    (p  "These results indicate that combinations of inhibitors of mTOR and of the B-raf signaling pathways may be more effective as a treatment for melanoma than use of either agent alone.") ;; 592
    (p  "In human cancers, mutant oncogenes are frequently associated with disease progression [ xref ].") ;; 593
    (p  "Thus, there is a need for development of effective therapies that can slow progression of solid tumors by blocking the action of those oncogenes.") ;; 594
    (p  "Cancer therapy has undergone a paradigm shift based on the therapeutic effectiveness of imatinib mesylate (Gleevec).") ;; 595
    (p  "This drug was designed as a specific inhibitor of the BCR-ABL oncogene protein tyrosine kinase, known to be responsible for chronic myeloid leukemia (CML) cells [ xref ].") ;; 596
    (p  "The therapeutic effectiveness of Gleevec and relative absence of detrimental side-effects has made it a model for the development of an array of new therapeutic agents targeted to inhibit signal transduction enzymes, especially protein kinases.") ;; 597
    (p  "The recent discovery that 60–70% of human melanomas have activating mutations in B-Raf (with 80% of these mutations caused by a single substitution V599E) make this protein kinase an especially promising target for inhibition [ xref , xref ].") ;; 598
    (p  "Indeed, lead compounds have been produced and tested, and currently are working their way through clinical trials.") ;; 599
    (p  "One example is BAY43-9006 (aka: sorafenib, N -(3-trifluoromethyl-4-chlorophenyl)- N '-(4-(2-methylcarbamoyl pyridin-4-yl)oxyphenyl)urea), an investigational compound, currently in phase II and III clinical trials, designed to inhibit both B-Raf and C-Raf kinases [ xref , xref ]. B-Raf is a component of a cell signaling pathway which includes the upstream activator of Raf, called Ras, and the direct substrate of Raf, called MEK1/2 and the MEK substrate ERK1/2 [ xref ]. B-Raf phosphorylates MEK1 and MEK2 on Ser217 and Ser221, which activates it to dual phosphorylate ERKs, at Thr202/Tyr204 for human ERK1 and Thr185/Tyr187 for human ERK2 [ xref , xref ].") ;; 600
    (p  "Mutations in RAF which cause constitutive activation of Raf kinase are thought to promote events leading to carcinogenesis.") ;; 601
    (p  "Pre-clinical and early phase I studies have suggested that BAY 43-9006 may be of therapeutic value not only in human tumors containing ras gene mutations, but also in tumors over-expressing growth factor receptors that activate the Ras/ERK pathway [ xref ].") ;; 602
    (p  "However, these studies have not addressed the effects of BAY 43-9006 in combination with any other kinase inhibitors.") ;; 603
    (p  "Another molecular pathway commonly mutated (30–60%) in melanomas involves loss of the PTEN tumor suppressor gene, which can lead to constitutive activation of the mTOR kinase signaling pathway [ xref - xref ].") ;; 604
    (p  "Inhibition of mTOR kinase is feasible with the macrolide natural product rapamycin (aka: sirolimus, RAPA, Rapamune, AY-22989, and NSC-226080).") ;; 605
    (p  "Rapamycin is an FDA-approved agent used as immunosuppressive therapy post organ transplant [ xref , xref ].") ;; 606
    (p  "More recent clinical application of rapamycin has been with coated stents to suppress the neo-intima formation during restenosis in response to balloon angioplasty [ xref ].") ;; 607
    (p  "The action of rapamycin is understood to involve binding to the receptor protein FKBP12; this drug-protein complex binds to the mTOR protein kinase and interferes with phosphorylation of two well-recognized downstream targets, p70S6K (p70 ribosomal S6 kinase) and 4EBP1 (aka: 4E binding protein 1, eukaryotic translation initiation factor 4E binding protein, and PHAS-1) [ xref ].") ;; 608
    (p  "An appreciation of the potent inhibition of cell growth and protein synthesis, as well as cell cycle arrest, imposed by rapamycin led to testing of its derivatives, in particular CCI-779, as cytostatic agents, especially for various cancers refractory to other forms of cancer chemotherapy [ xref - xref ].") ;; 609
    (p  "Pharmacokinetic analysis revealed that CCI-779 was progressively converted into rapamycin, its main metabolite, beginning as early as 15 minutes after infusion of the drug [ xref ], therefore, we used rapamycin in our studies.") ;; 610
    (p  "Our interest is in combining targeted agents for these pathways in an effort to determine if such treatments will be effective in the treatment of melanoma.") ;; 611
    (p  "We hypothesized that the combination of multiple targeted therapeutic agents would result in enhanced inhibition of melanoma cell proliferation compared to either drug alone, because of synergy between effects on two pathways.") ;; 612
    (p  "Here we show that serum-stimulated melanoma cell proliferation is inhibited by either rapamycin or BAY43-9006, with B-Raf V599E mutants showing an increased sensitivity to each drug at 10 nM compared to melanoma cells with wild-type B-Raf.") ;; 613
    (p  "Each of these drugs inhibited the serum-stimulated phosphorylation of known Raf and mTOR substrates.") ;; 614
    (p  "What was unexpected was that each of the drugs inhibited phosphorylation in both the Raf and mTOR pathways, suggesting there was interdependence or cross-talk between these pathways in melanoma cells.") ;; 615
    (p  "Furthermore, the combination of rapamycin with BAY43-9006 was synergistic compared to either drug alone at inhibiting proliferation of wild-type B-Raf and V599E mutant B-Raf melanoma cell lines.") ;; 616
    (p  "For analysis of proteins in Figure xref and xref , VMM5A, VMM18, and VMM39 melanoma cells were plated in Petri dishes and incubated for 24 hours in either RPMI medium plus 5% FBS or 0.5% FBS.") ;; 617
    (p  "After 24 hours, the cells were harvested and lysed as described for analysis of proteins in Figures xref and xref .") ;; 618
    (p  "For analysis of the proteins in Figures xref and xref , VMM18 melanoma cells were plated in petri dishes, treated with drugs or not for one hour, washed, and incubated overnight in RPMI medium plus 5% FBS.") ;; 619
    (p  "The next day, cells were rinsed with room temperature PBS, frozen by placing the dish on a mixture of acetone and dry ice.") ;; 620
    (p  "Cells were lysed in one ml of ice-cold 5% trichloroacetic acid for 10 minutes, scraped from the dish using a Costar cell lifter and the slurry was transferred to a 1.5-ml microcentrifuge tube and centrifuged for 10 minutes at 10,000 × g .") ;; 621
    (p  "The supernatant was discarded, and the pellet was washed twice with cold acetone to extract away the trichloroacetic acid and the proteins resuspended in resolubilization buffer (20 mM Tris, 23 mM glycine, 1 mM EDTA, and 10 mM β-glycerophosphate).") ;; 622
    (p  "Protein yields were determined by BCA analysis.") ;; 623
    (p  "Proteins were resuspended in SDS-containing sample buffer, heated for 10 min at 100°C, and 10 ng/lane was resolved by SDS-PAGE and transferred to Immobilon-P (Millipore).") ;; 624
    (p  "Membranes were blocked in 1% BSA in 50 mM Tris-Cl (pH 7.5), 0.9% NaCl, 0.05% Tween 20, and 0.01% antifoam A.") ;; 625
    (p  "Membranes were probed with antibodies listed below.") ;; 626
    (p  "Proteins were detected with Pierce SuperSignal West Pico Chemiluminescent substrate (#34080) as recommended by the manufacturer and used to expose to Kodak BioMax film.") ;; 627
    (p  "Films exposed within the linear response range were scanned and used for densitometry analysis by Image Quant 5.2.") ;; 628
    (p  "Anti-p70S6 Kinase, clone SB20 Antibody (Catalog # 05-781, used at 1:8000) was purchased from Upstate. 4E-BP1 Antibody (Catalog #9452, used at 1:500) was purchased from Cell Signaling.") ;; 629
    (p  "GAPDH Antibody (Catalog # MAB374, used at 1:500) was purchased from Chemicon International.") ;; 630
    (p  "Anti-phospho MAP Kinase (ERK1/2), clone 12D4 antibody (Catalog # 05-481, used at 1:500) was purchased from Upstate.") ;; 631
    (p  "Anti-MAP Kinase 2/ERK2 antibody (Catalog #06-333, used at 1:500) was also purchased from Upstate.") ;; 632
    (p  "Phospho-MEK1/2 (Ser217/221) Antibody (Catalog#2354S, used at 1:1000) was purchased from Cell Signaling.") ;; 633
    (p  "Anti-Mouse IgG, peroxidase-linked species-specific whole antibody from sheep, secondary antibody (Catalog #NA931, used at 1:5000) was purchased from Amersham Biosciences.") ;; 634
    (p  "Anti-rabbit IgG, peroxidase-linked species-specific whole secondary antibody from donkey (Catalog # NA934, used at 1:5000) was also purchased from Amersham Biosciences.") ;; 635
    (p  "To assess whether a combination dose of rapamycin and BAY43-9006 is synergistic or simply additive, a focused isobologram method was used as described previously [ xref ].") ;; 636
    (p  "An IC70 was selected, and these doses of each drug alone were plotted as the ordinate and abscissa in a Cartesian log-log plot.") ;; 637
    (p  "The straight line connecting these IC70 values is the locus of points (dose pairs) that produce a simply additive combination.") ;; 638
    (p  "In an isobologram, the IC70 dose pairs for two drugs together which fall on the line indicate an additive effect.") ;; 639
    (p  "Points above this line indicate antagonism, and points below the line indicate synergism.") ;; 640
    (p  "All of the research involving human subjects was approved by the University of Virginia's IRB (Human Investigation Committee) in accordance with assurances filed with and approved by the Department of Health and Human Services.") ;; 641
    (p  "Informed consent was obtained from all of the study participants.") ;; 642
    (p  "We examined the serum-dependent proliferation of various human melanoma cell lines.") ;; 643
    (p  "Figure xref is a growth curve for the VMM18 cell line, which is representative of the growth curves generated for each of the cell lines from a collection of human melanomas (Table xref ).") ;; 644
    (p  "Cell proliferation was determined by the number of cells at 0, 4, 8, 16, 24, 48, and 72 hours, quantitated using the Cell Titer 96 Aqueous (Promega Corporation, Madison, WI) assay which measures reduction of MTS (a novel tetrazolium compound).") ;; 645
    (p  "These human melanoma cell lines proliferated even in limiting serum (0.5%).") ;; 646
    (p  "However, all showed higher rates of proliferation ~ 2-fold in the presence of 5% serum.") ;; 647
    (p  "We could detect activation of the mTOR and ERK signaling pathways in proliferating melanoma cells.") ;; 648
    (p  "Shown in Figure xref is a Western blot detecting the phosphorylation of the mTOR substrate, 4EBP1, from 3 different melanoma cell lines grown in the presence of either 5% or 0.5% serum.") ;; 649
    (p  "The phosphorylation of 4EBP1 has previously been demonstrated to retard migration in SDS-PAGE [ xref ], seen as the upper band in the doublet in the even numbered lanes (Figure xref ).") ;; 650
    (p  "Shown in Figure xref is a Western blot detecting both the dual phosphorylated (activated) form of ERK, as well as total ERK protein in three different melanoma cell lines grown in 5% or 0.5% serum.") ;; 651
    (p  "The quantitation of the relative phosphorylation of ERK relative to total ERK is shown between the blots, demonstrating about a two-fold increase in phosphorylation.") ;; 652
    (p  "The phosphorylation of ERK paralleled the relative increase in proliferation for each of these cell lines.") ;; 653
    (p  "We examined the serum-dependent proliferation of multiple human melanoma cell lines and the effects of inhibition of B-Raf by BAY43-9006 and of mTOR by rapamycin.") ;; 654
    (p  "Melanoma cell lines were tested for proliferation after treatment with a single dose of BAY43-9006 or rapamycin using Cell Titer-Glo (Promega Corporation, Madison, WI), a luminescence-based ATP cell viability assay.") ;; 655
    (p  "Cells were exposed to different doses of either drug for one hour.") ;; 656
    (p  "Then, the media was changed and the cells were cultured for two days in the presence of serum.") ;; 657
    (p  "We found that micromolar concentrations were cytotoxic, because cell numbers decreased after two days, whereas nanomolar concentrations were growth inhibitory.") ;; 658
    (p  "Melanoma cells showed dose-dependent inhibition with 0.01 nM to 100 nM of BAY43-9006 (Figure xref ), or rapamycin (Figure xref ).") ;; 659
    (p  "Proliferation of the cells was inhibited in either 5% or 0.5% serum.") ;; 660
    (p  "Among the melanoma cell lines, there was a significant difference in the amount of inhibition at 10 nM BAY43-9006 or rapamycin.") ;; 661
    (p  "We observed that melanoma cell lines that contain the V599E mutation in B-Raf (VMM5A and VMM18) were more sensitive to BAY43-9006 and to rapamycin, compared to cell lines with wild-type B-Raf (VMM39).") ;; 662
    (p  "This difference in growth inhibition was observed in two additional cell lines, one wild-type (DM122) and one V599E (VMM12).") ;; 663
    (p  "Therefore, nanomolar concentrations of either BAY43-9006 or rapamycin inhibit the proliferation of melanoma cells, whether or not they have mutated B-Raf.") ;; 664
    (p  "Melanoma cell proliferation was inhibited by either BAY43-9006 or rapamycin over the 0.01 – 100 nM concentration range. A combination of the two drugs was markedly more effective than either drug alone at inhibiting serum-stimulated melanoma cell proliferation.") ;; 665
    (p  "For example, 0.01 nM of each drug together was more effective at inhibiting melanoma cell proliferation than 1 nM of either drug alone.") ;; 666
    (p  "To assess synergism versus additivity quantitatively, we used a focused isobologram method (Figure xref ).") ;; 667
    (p  "Treatment of three melanoma cell lines (VMM39, VMM5A, and VMM18) with rapamycin alone induced a 70% growth inhibition (IC70) from approximately 10 nM (VMM39) to 2 nM (VMM5A and VMM18).") ;; 668
    (p  "These were plotted on the ordinate.") ;; 669
    (p  "The IC70 concentration for BAY43-9006 alone was in the range of approximately 5 to 10 nM, in different cell lines, and these were plotted on the abscissa.") ;; 670
    (p  "Compared to the single agents, the IC70 for the dose pairs (rapamycin and BAY43-9006 together) falls below the line, for each of these melanoma cell lines, indicating that the combination is synergistic (Figure xref ).") ;; 671
    (p  "Furthermore, VMM18, which contains the V599E substitution, was more sensitive to the combination treatment than melanoma cell lines with wild-type B-Raf, consistent with the enhanced sensitivity at the 10 nM dose of each agent (Figure xref above).") ;; 672
    (p  "However, all melanoma cell lines tested displayed synergistic inhibition of proliferation, indicating that these drugs were more effective in combination than alone.") ;; 673
    (p  "Melanoma cells were treated with rapamycin and BAY 43-9006, either singly or in combination, for one hour, and protein phosphorylation was examined by Western blot analysis 24 hours later.") ;; 674
    (p  "Rapamycin is an inhibitor of mTOR kinase and reduces phosphorylation of its substrates, p70S6K and 4EBP1 [ xref ].") ;; 675
    (p  "BAY 43-9006 is a chemical inhibitor of B-Raf kinase and reduces phosphorylation of MEK and ERK [ xref , xref ].") ;; 676
    (p  "VMM18 melanoma cells grown in the presence of 5% serum had enhanced phosphorylation of p70S6K and 4EBP1 (Figure xref , lane 2) relative to cells grown in the absence of serum (Figure xref , PBS, lane 1).") ;; 677
    (p  "The phosphorylation of p70S6K and 4EBP1 retards migration in SDS-PAGE.") ;; 678
    (p  "Antibodies to these proteins were used to show all the protein and therefore enable evaluation of the fraction phosphorylated under different conditions.") ;; 679
    (p  "Treatment of VMM18 melanoma cells with a 10 nM dose of rapamycin inhibited the serum-stimulated phosphorylation of p70S6K and 4EBP1 (Figure xref , lane 3).") ;; 680
    (p  "Parallel treatment of VMM18 melanoma cells with a 10 nM dose of BAY43-9006 unexpectedly inhibited serum-stimulated phosphorylation of p70S6K and 4EBP1 (Figure xref , lane 4).") ;; 681
    (p  "There is not a well-documented requirement of Raf-MEK-ERK activity for the phosphorylation of mTOR substrates p70S6K and 4EBP1.") ;; 682
    (p  "Combination treatment with a 10 nM dose of rapamycin plus a 10 nM dose of BAY43-9006 blocked phosphorylation of p70S6K and 4EBP1 as effectively as either drug alone (Figure xref , lane 5).") ;; 683
    (p  "Thus, even though cell proliferation was suppressed more effectively by this combination of drugs, this was not reflected in a detectable further decrease in phosphorylation of the mTOR target proteins p70S6K and 4EBP1.") ;; 684
    (p  "As an additional control, we treated VMM18 melanoma cells with U0126, a MEK inhibitor, which blocked serum-stimulated phosphorylation of both p70S6K and 4EBP1 (Figure xref , lane 6).") ;; 685
    (p  "This result showed that MEK/ERK activities contribute to phosphorylation of p70S6K and 4EBP1.") ;; 686
    (p  "We noted that total 4EBP1 in cells treated with a combination of rapamycin plus BAY43-9006, or with U0126, was lower relative to untreated cells or cells treated with either rapamycin or BAY43-9006 alone.") ;; 687
    (p  "Equal recovery of other proteins from the cells was demonstrated by immunoblotting both for p70S6K and for GAPDH, used as a loading control.") ;; 688
    (p  "We do not understand the basis for the reduced recovery of 4EBP1, but it did not seem to depend simply on the phosphorylation state because phosphorylation was blocked with the single drug treatments, without change in the level of the 4EBP1 protein.") ;; 689
    (p  "In VMM18 melanoma cells, the dual phosphorylation (Tyr/Thr) of ERK was 9-fold higher in cells grown in 5% serum relative to cells grown in the absence of serum (Figure xref , lanes 2 versus 1).") ;; 690
    (p  "There also was an increased level in the dual phosphorylation (Ser217/221) of MEK (not shown).") ;; 691
    (p  "Treatment of VMM18 melanoma cells with a 10 nM dose of BAY 43-9006 produced a 75% decrease in the dual phosphorylation of ERK (Figure xref , lane 4) and reduced the phosphorylation of MEK below detection levels (not shown).") ;; 692
    (p  "These results were consistent with the inhibition of B-Raf by BAY43-9006.") ;; 693
    (p  "On the other hand, when VMM18 melanoma cells were treated with a 10 nM dose of rapamycin, the dual phosphorylation of ERK was reduced by about half (Figure xref , lane 3).") ;; 694
    (p  "Our interpretation of this result is that mTOR activity is required to maintain the phosphorylation of ERK in melanoma cells.") ;; 695
    (p  "Combination treatment of a 10 nM dose of rapamycin plus a 10 nM dose of BAY 43-9006 reduced the phosphorylation of ERK to a level even below that seen in cells grown in the absence of serum (Figure xref , lane 5).") ;; 696
    (p  "This inhibition of ERK phosphorylation by combination of rapamycin and BAY43-9006 was as effective as inhibition of MEK by the U0126 compound (Figure xref , compare lanes 5 and 6).") ;; 697
    (p  "New cancer treatments involve directly targeting enzymes essential for the growth and proliferation of cancer cells.") ;; 698
    (p  "The mTOR pathway regulates cell growth, and the Raf/MEK/ERK pathway is critical for cell proliferation.") ;; 699
    (p  "Activating mutations in B-Raf have been found in 60–70% of human melanomas, making B-Raf a potential target for small molecule inhibitors as therapy [ xref , xref , xref , xref ].") ;; 700
    (p  "Indeed, new drugs such as BAY43-9006 have been developed as selective inhibitors of B-Raf and are currently in Phase II clinical trials [ xref ].") ;; 701
    (p  "Inhibition of mTOR by rapamycin has been standard treatment for immunosuppression following organ transplant [ xref ], and the rapamycin derivative CCI-779 is now being clinically tested as a cancer chemotherapy [ xref - xref ].") ;; 702
    (p  "Thus, B-Raf and mTOR are acknowledged targets for anti-proliferative therapy [ xref ].") ;; 703
    (p  "Current knowledge suggests that B-Raf and mTOR protein kinases operate in separate signaling pathways.") ;; 704
    (p  "The B-Raf kinase is activated by GTP-Ras in response to growth factors and phosphorylates MEK, which in turn activates ERK to phosphorylate downstream targets such as kinases and transcription factors that promote cell division [ xref ].") ;; 705
    (p  "The mTOR kinase responds to both nutrient and growth factor signals to activate p70S6K and 4EBP1 to increase protein translation as part of a cell growth response [ xref ].") ;; 706
    (p  "Increase in cell growth (size) is a pre-requisite for cell proliferation.") ;; 707
    (p  "Because the B-Raf and mTOR pathways are thought to operate in parallel, we hypothesized that combined inhibition of these kinases would be effective in blocking cell growth and cell proliferation.") ;; 708
    (p  "Though our results with multiple melanoma cell lines support that hypothesis, they also gave some unexpected results.") ;; 709
    (p  "Human tumors deficient in PTEN have activated Akt, and are especially sensitive to mTOR inhibitors [ xref ].") ;; 710
    (p  "However, pharmacogenomic profiling indicates that melanomas are not, in general, PTEN deficient and therefore would be unresponsive to mTOR inhibitors.") ;; 711
    (p  "Results from a phase II trial using CCI-779 alone showed only one response among 33 observed patients [ xref ].") ;; 712
    (p  "These data suggest that CCI-779 is not sufficiently active in melanoma as a single agent.") ;; 713
    (p  "However, our data show that melanoma cell proliferation is effectively inhibited in vitro by low doses of rapamycin.") ;; 714
    (p  "Together, these findings argue against use of CCI-779 as a single agent, but support investigation of mTOR inhibitors as part of combination therapy for treatment of patients with malignant melanoma.") ;; 715
    (p  "With regards to B-Raf, recent structural studies have shown that BAY43-9006 interacts with an inactive conformation of B-Raf [ xref ].") ;; 716
    (p  "In biochemical assays, the kinase activity of V599E B-Raf is less sensitive to inhibition by BAY43-9006 than wild-type B-Raf, suggesting that melanomas with the B-Raf V599E mutation might be resistant to the effects of this drug [ xref ].") ;; 717
    (p  "However, in the present study, proliferation of the human melanoma cells was inhibited by BAY43-9006, and at a dose of 10 nM, the cells that contained mutated B-Raf V599E were more sensitive than cells with wild-type B-Raf.") ;; 718
    (p  "In clinical studies with BAY43-9006 plus chemotherapy, objective tumor regressions were more common in patients who had wild-type B-raf [ xref ].") ;; 719
    (p  "The findings of the current report support continued investigation of BAY43-9006 for treatment of patients with melanoma, and suggest that clinical effects observed may be due to some effects that are independent of B-raf kinase activity.") ;; 720
    (p  "We found that multiple human melanoma cell lines proliferated in culture at different relative rates in the absence of serum and that the addition of serum to the medium doubled the rate of proliferation.") ;; 721
    (p  "Thus, we could use the consistent serum response to compare cell growth and proliferation with a variety of melanoma cell lines.") ;; 722
    (p  "At concentrations in the nanomolar range, we observed dose-dependent inhibition of cell proliferation by either rapamycin or BAY43-9006.") ;; 723
    (p  "In every cell line examined, combination of BAY43-9006 and rapamycin produced synergistic inhibition of cell proliferation compared to either drug alone.") ;; 724
    (p  "This suggests that administration of a combination of an mTOR inhibitor (rapamycin or CCI-779) and BAY43-9006 could be an especially effective approach to therapy of melanoma.") ;; 725
    (p  "Our results indicate that rapamycin and BAY43-9006 inhibit their cognate targets in melanoma cells (mTOR and B-Raf respectively), as well as downstream effectors thought to be in other pathways, providing evidence for cellular cross-talk between the different signaling pathways studied.") ;; 726
    (p  "Specifically, we found that BAY43-9006 inhibited serum-stimulated phosphorylation of p70S6K and 4EBP1, and rapamycin blocked serum-stimulated phosphorylation of ERK.") ;; 727
    (p  "Previously published results have suggested interdependence between mTOR and Raf-MEK-ERK signaling [ xref - xref ].") ;; 728
    (p  "In vascular smooth muscle cells under hyperglycemic conditions (25 mM versus 5 mM glucose), inhibition of PI3K with LY294002 or inhibition of mTOR by rapamycin reduced the level of ERK Tyr-phosphorylation [ xref ].") ;; 729
    (p  "In cardiomyocytes, PKC-dependent activation of mTOR and p70S6K was inhibited by U0126, implicating a requirement for MEK [ xref ].") ;; 730
    (p  "Rapamycin inhibited the FGF-2 induced proliferation of two different small cell lung cancer lines (SCLC), whereas PD098059 inhibited one and not the other [ xref ].") ;; 731
    (p  "Combination of rapamycin and PD098059 was not tested.") ;; 732
    (p  "In proximal tubular epithelial cells, insulin-activated phosphorylation of 4EBP1 could be inhibited by PD098059, suggesting a requirement for MAPK [ xref ].") ;; 733
    (p  "Another report shows that following hypertonic stress, HEK 293 cells show increase in protein synthesis, and simultaneous inhibition of both mTOR and ERK was required to prevent de novo translation [ xref ].") ;; 734
    (p  "Since there appears to be cross-talk between mTOR and Raf-MEK-ERK pathways, it might be expected that combination therapy with rapamycin and BAY43-9006 might simply be additive.") ;; 735
    (p  "To our knowledge, the effects of combining inhibitors of these two pathways on proliferation of melanoma cells had not previously been examined.") ;; 736
    (p  "However, studies are in development for such combination therapies in human clinical trials, sponsored by the Clinical Trials Evaluation Program (CTEP) of the NIH.") ;; 737
    (p  "In the present study, we found that the combination of inhibitors synergistic for inhibition of melanoma cell proliferation.") ;; 738
    (p  "Cancer cells may be dependent on particular oncogenes for cell growth, which renders them sensitive to drugs that inhibit these protein targets.") ;; 739
    (p  "Under these circumstances, single chemical inhibitors are efficacious, such as Gleevec inhibition of BCR-ABL in CML [ xref ].") ;; 740
    (p  "However, in a number of different cancers, single drug targeted therapy is only effective in about half of the patients [ xref ].") ;; 741
    (p  "These cancer cells utilize either alternate pathways or compensatory mechanisms to evade inhibition.") ;; 742
    (p  "Under these circumstances, combination therapy that inhibits different pathways may be especially effective.") ;; 743
    (p  "Our results show synergistic inhibition of cell proliferation with drugs against different pathways.") ;; 744
    (p  "Further, we exposed effects on pathways not thought to be targeted by agents currently used in the clinic.") ;; 745
    (p  "Because a combination of rapamycin and BAY43-9006 is more effective at inhibiting melanoma cell proliferation than either drug alone, further studies of this combination in animal models and clinical trials deserve to be examined.") ;; 746
    (p  "The author(s) declare that they have no competing interests.") ;; 747
    (p  "We studied the effect of nickel ions on platelet function because hypernickelemia has been found in patients with acute myocardial infarction.") ;; 748
    (p  "We previously demonstrated that nickel can activate an intracellular pathway leading to cytoskeleton reorganization consequent to tyrosine phosphorylation of p60(src) in human platelets independently of integrin alpha-IIb-beta(3).") ;; 749
    (p  "Moreover, in von Willebrand factor-stimulated platelets, the tyrosine phosphorylation of pp60(c-src) is closely associated with the activation of phosphatidylinositol 3-kinase (PIK), and two adhesion receptors, glycoprotein (Gp)Ib and GpIIb/IIIa(alpha-IIb-beta(3)), are involved.") ;; 750
    (p  "In our study, 1 and 5 mM nickel in the presence of fibrinogen induced platelet aggregation (independently of protein kinase C activation) and secretion.") ;; 751
    (p  "The pretreatment with a PIK inhibitor, wortmannin, strongly decreased nickel-induced platelet aggregation.") ;; 752
    (p  "Platelet treatment with mocarhagin, a cobra venom metalloproteinase that cleaves GpIba, significantly reduced aggregation induced by 5 mM without affecting the response to other agonists such as adenosine diphosphate (ADP).") ;; 753
    (p  "Moreover, nickel caused PIK translocation to the cytoskeleton.") ;; 754
    (p  "Taken together, these observations suggest a partial involvement of both integrins alpha-IIb-beta(3) and GpIb-V-IX complex in Ni(2+)-induced platelet activation.") ;; 755
    (p  "The two BRCT domains (BRCT1 and BRCT2) of XRCC1 mediate a network of protein–protein interactions with several key factors of the DNA single-strand breaks (SSBs) and base damage repair pathways.") ;; 756
    (p  "BRCT1 is required for the immediate poly(ADP–ribose)-dependent recruitment of XRCC1 to DNA breaks and is essential for survival after DNA damage.") ;; 757
    (p  "To better understand the biological role of XRCC1 in the processing of DNA ends, a search for the BRCT1 domain-associated proteins was performed by mass spectrometry of GST-BRCT1 pulled-down proteins from HeLa cell extracts.") ;; 758
    (p  "Here, we report that the double-strand break (DSB) repair heterotrimeric complex DNA-PK interacts with the BRCT1 domain of XRCC1 and phosphorylates this domain at serine 371 after ionizing irradiation.") ;; 759
    (p  "This caused XRCC1 dimer dissociation.") ;; 760
    (p  "The XRCC1 R399Q variant allele did not affect this phosphorylation.") ;; 761
    (p  "We also show that XRCC1 strongly stimulates the phosphorylation of p53-Ser15 by DNA-PK.") ;; 762
    (p  "The pseudo phosphorylated S371D mutant was a much weaker stimulator of DNA-PK activity whereas the non-phosphorylable mutant S371L endowed with a DNA-PK stimulating capacity failed to fully rescue the DSB repair defect of XRCC1-deficient EM9 rodent cells.") ;; 763
    (p  "The functional association between XRCC1 and DNA-PK in response to IR provides the first evidence for their involvement in a common DSB repair pathway.") ;; 764
    (p  "DNA damage must be repaired to avoid genomic instability and loss of information content that can lead to cancer ( xref , xref ).") ;; 765
    (p  "Responding to single- and double-strand breaks requires coordinated events including detection and signaling of the DNA breaks and the sequential recruitment of repair enzymes.") ;; 766
    (p  "XRCC1 (X-ray cross complementing factor 1) is a molecular scaffold protein that coordinates the assembly of repair complexes at damaged sites ( xref – xref ).") ;; 767
    (p  "XRCC1 interacts with enzymatic components including the 7,8-dihydro 8-oxo-guanine glycosylase (OGG1) ( xref ), APE1-endonuclease ( xref ), the polynucleotide kinase (PNK) which processes DNA termini ( xref ) and DNA polymerase β (pol β) ( xref ).") ;; 768
    (p  "XRCC1 localizes to sites of replication foci and interacts directly with PCNA that links XRCC1 to the progression of DNA replication ( xref ).") ;; 769
    (p  "Interestingly, it was shown that XRCC1 is phosphorylated by the CK2 kinase and that the phosphorylation sites reside within the linker region between the two BRCTs.") ;; 770
    (p  "CK2 phosphorylation of XRCC1 stimulates binding to either PNK ( xref ) or aprataxin ( xref – xref ), in two preformed complexes ( xref ).") ;; 771
    (p  "XRCC1 encompasses two BRCT motifs with independent and important roles ( xref , xref ).") ;; 772
    (p  "The BRCT1 domain is the most evolutionarily conserved and is required for survival after methylation damage but its precise function is not fully understood at present.") ;; 773
    (p  "It interacts with PARP-1 and PARP-2 and limits their poly(ADP–ribosyl)ating activities ( xref , xref ).") ;; 774
    (p  "The BRCT1 contains a binding site for poly(ADP–ribose) (PAR) ( xref ).") ;; 775
    (p  "As a consequence, in response to the activation of PARP-1 by single-strand breaks (SSBs), XRCC1 is recruited within seconds to the sites of chromosomal DNA strand breakage by its BRCT1 domain ( xref – xref ).") ;; 776
    (p  "The BRCT2 domain of XRCC1 binds to and stabilizes DNA ligase III (Lig III) ( xref , xref ).") ;; 777
    (p  "Based on studies with chinese hamster ovary cells lacking functional XRCC1 expressing different XRCC1 mutants, Caldecott and co-workers proposed that SSBs repair occurred via two different XRCC1-dependent pathways [reviewed in ( xref ) and references therein].") ;; 778
    (p  "The most rapid pathway, by which SSBs induced by alkylating agents are rejoined in <3 h, appears to operate throughout the cell cycle.") ;; 779
    (p  "It requires the functional interaction between the BRCT2 domain and Lig III.") ;; 780
    (p  "However, disruption of the BRCT2 does not greatly sensitize cells to alkylating agents and it has been suggested that cells possess a second XRCC1-dependent pathway that operates specifically in S/G2.") ;; 781
    (p  "The BRCT2 domain and Lig III are dispensable in this later pathway but the BRCT1 domain is a critical determinant.") ;; 782
    (p  "Therefore, we thought to identify novel BRCT1 binding proteins that could be involved in this pathway.") ;; 783
    (p  "DNA-PK belongs to the phosphatidylinositol 3-kinase-related kinase (PI3-KK) superfamily, all of them displaying double-strand breaks (DSBs)-stimulated kinase activity.") ;; 784
    (p  "DNA-PK is a nuclear serine/threonine kinase composed of a Ku70/80 heterodimer, which displays high affinity for DNA termini regardless of sequence context.") ;; 785
    (p  "Subsequently, the Ku70/80 heterodimer recruits the catalytic subunit (DNA-PKcs) resulting in kinase activity.") ;; 786
    (p  "Once bound to the DSB, the DNA-PK holoenzyme facilitates the recruitment of the heterodimer XRCC4/DNA ligase IV ( xref , xref ), which helps to complete the non-homologous end joining (NHEJ) pathway.") ;; 787
    (p  "Defect in any of these proteins leads to severe radiosensitivity, DSBs repair deficiency and immunodeficiency.") ;; 788
    (p  "Additional factors are required for NHEJ: PNK that participates in the phosphorylation of 5′ ends ( xref ) and the complex Mre11, Rad 50, Nbs1 (MRN) which plays a key role in aligning DNA ends in a synaptic complex ( xref ).") ;; 789
    (p  "In the present work, we report a novel interaction between XRCC1 and DNA-PK mediated by the BRCT1 domain whose phosphorylation at serine 371 is stimulated in response to ionizing radiation (IR) and regulates the dimer/monomer transition of XRCC1.") ;; 790
    (p  "Reciprocally, XRCC1 stimulates the kinase activity of DNA-PK on serine 15 of p53 in vitro .") ;; 791
    (p  "Finally, the non-phosphorylable XRCC1 mutant S371L expressed in XRCC1-deficient rodent cells (EM9) failed to fully rescue the DSB repair defect spontaneously present or induced by a low dose of IR.") ;; 792
    (p  "These results provide insight into an unexpected interplay between XRCC1 and the heterotrimeric complex DNA-PK that contributes to the resolution of DSB perhaps when a replication fork encounters a SSB.") ;; 793
    (p  "The evolutionarily conserved BRCT1 domain of XRCC1 derives from an ancestral motif found in rad4/cut5 in Schizosaccharomyces pombe ( xref ).") ;; 794
    (p  "This domain is essential for cell survival after MNU treatment ( xref ) and was previously shown to interact with PARP-1 and PARP-2, two enzymes involved in genome maintenance ( xref , xref ).") ;; 795
    (p  "To identify potential members of the multicomponent DNA repair complex, the BRCT1 domain (amino acids 282–428) was overproduced in bacteria in fusion with GST (GST XRCC1 282–428), purified on glutathione beads and incubated with nuclear extracts of HeLa cells.") ;; 796
    (p  "Pulled-down interacting proteins were separated by 10% SDS–PAGE.") ;; 797
    (p  "Multiple bands in the region of 30–300 kDa were observed, isolated from the gel and analyzed by proteolytic peptide sequencing.") ;; 798
    (p  "Among these, PARP-1 was identified as expected ( xref ).") ;; 799
    (p  "Interestingly, the catalytic subunit of DNA-PK was identified by the presence of six different peptide fragments covering most of this molecule as seen in xref .") ;; 800
    (p  "To confirm whether XRCC1 and DNA-PK coexist in a common complex, we carried out co-immunoprecipitation experiments in HeLa nuclear extracts.") ;; 801
    (p  "As shown in xref , XRCC1 was co-immunoprecipitated with anti-DNA-PKcs, anti-Ku80 and anti-Ku70 antibodies but not with unrelated control anti-Myc or anti-MMP 9 antibodies (reverse immunoprecipitations are shown in xref ).") ;; 802
    (p  "We next tested for a direct physical association between XRCC1 and DNA-PKcs and/or the heterodimer Ku70/Ku80 by Far-western analysis ( xref ).") ;; 803
    (p  "Highly purified DNA-PKcs, Ku70/Ku80 heterodimer and the two documented XRCC1 binding partners LigIII and DNA polβ were dot-blotted onto nitrocellulose along with the control proteins GST and BSA.") ;; 804
    (p  "The nitrocellulose filter was incubated with purified XRCC1 and immunostained with an anti-XRCC1 antibody.") ;; 805
    (p  "As expected, purified LigIII and DNA polβ retained binding to XRCC1 but not the negative controls GST and BSA.") ;; 806
    (p  "Interestingly, both DNA-PKcs and the heterodimer Ku70/Ku80 were immunostained with the anti-XRCC1 antibody thus confirming a direct association between XRCC1 and these proteins.") ;; 807
    (p  "Five overlapping XRCC1 fragments spanning the entire XRCC1 protein ( xref ) fused to the GST protein were transiently expressed in HeLa cells, purified on glutathione–Sepharose beads and analyzed by western blotting with an anti-GST antibody to assess the expression level of the recombinant proteins ( xref ).") ;; 808
    (p  "They were subsequently analyzed by western blotting with anti-DNA-PKcs, anti-Ku80 and anti-Ku70 antibodies.") ;; 809
    (p  "We found that the three subunits of DNA-PK co-purified only with BRCT1 containing XRCC1-fusion proteins ( xref ) confirming that XRCC1 and DNA-PK are present in a complex.") ;; 810
    (p  "XRCC1 (314–428) encompassing the BRCT1 domain was identified as the minimal region interacting with DNA-PK.") ;; 811
    (p  "In contrast, no co-purification of ATM was observed ( xref ).") ;; 812
    (p  "Then, we questioned whether the BRCT1 domain could be phosphorylated by DNA-PK in vitro .") ;; 813
    (p  "The same truncated fragments of XRCC1 in fusion with GST were used to perform a kinase assay using [γ- 32 P]ATP.") ;; 814
    (p  "The proteins were separated on SDS–PAGE and labeled proteins were autoradiographied.") ;; 815
    (p  "Interestingly, only the truncated mutants containing the BRCT1 domain (amino acid 314–428) fused to the GST were found highly phosphorylated indicating that they are substrate for the co-purifying DNA-PK ( xref ).") ;; 816
    (p  "In this experiment, the C-terminal peptide of XRCC1 (427–633) bearing the CK2 phosphorylation sites was not found phosphorylated.") ;; 817
    (p  "To determine whether XRCC1 is phosphorylated in vivo , exponentially growing HeLa cells were exposed or mock-exposed to 10 Gy of IR and the phosphorylation of XRCC1 was monitored, after immunoprecipitation, by 32 P orthophosphate incorporation.") ;; 818
    (p  "In non-irradiated cells, immunoprecipitated XRCC1 was found phosphorylated most likely reflecting the constitutive phosphorylation by CK2 ( xref , xref , xref ).") ;; 819
    (p  "Interestingly, a significant stimulation of 32 P orthophosphate incorporation into XRCC1 was observed after IR ( xref ).") ;; 820
    (p  "Addition of wortmannin, a PI3 kinase-like kinase inhibitor ( xref ), decreased the phosphorylation of XRCC1 to the level observed in non irradiated cells, indicating that as expected, a kinase belonging to the PI3-KK family phosphorylates XRCC1 in response to IR.") ;; 821
    (p  "To confirm that XRCC1 BRCT1 domain is phosphorylated in vivo after DNA damage, HeLa cells expressing GST-XRCC1(170–428), which contains the NLS and the BRCT1 motif but not the CK2 phosphorylation sites, were either mock-irradiated or treated with 10 Gy IR.") ;; 822
    (p  "The phosphorylation of GST-XRCC1(170–428) was monitored by in vivo  32 P orthophosphate incorporation ( xref , top).") ;; 823
    (p  "Protein expressions were assessed on the same blot by Western blotting with an anti-GST antibody ( xref , bottom). A robust stimulation of 32 P orthophosphate incorporation was detected after irradiation, indicating that GST-XRCC1 (170–428) is phosphorylated in vivo after IR.") ;; 824
    (p  "To examine whether an other kinase can be associated with and phosphorylates the BRCT1 domain, GST-XRCC1(170–428) was expressed in either DNA-PKcs +/+ or DNA-PKcs −/− mouse embryonic fibroblasts (MEFs) ( xref ), purified by GST pull-down and used as substrates for the co-purified kinase.") ;; 825
    (p  "As shown in xref , GST-XRCC1(170–428) was highly phosphorylated when expressed in DNA-PKcs +/+ MEFs but was phosphorylated to background level when expressed in DNA-PKcs −/− MEFs, demonstrating that indeed DNA-PKcs catalyzes the phosphorylation of XRCC1 BRCT1 and that no other kinase co-purified with this BRCT1 containing truncated protein.") ;; 826
    (p  "To further identify the kinase responsible for XRCC1 phosphorylation, kinase assays were performed in the presence of specific PI3-KK inhibitors following pull down of GST-XRCC1(170–428) in COS-1 cells.") ;; 827
    (p  "As shown in xref , the use of 10 µM of the PI3-KK inhibitor wortmannin or 0.1 to 1 µM of the specific DNA-PK inhibitor NU7741 abolished the phosphorylation of GST-XRCC1 (170–428).") ;; 828
    (p  "On the opposite, the use of 10 µM of caffeine or 0.1 µM of the specific ATM inhibitor KU-55933 barely affected the reaction, thus confirming DNA-PK as the major kinase involved in the phosphorylation of XRCC1 at its BRCT1 domain.") ;; 829
    (p  "DNA-PK phosphorylates serines or threonines in a (Ser/Thr)-Gln motif.") ;; 830
    (p  "Analysis of the human XRCC1 sequence reveals the presence of four (Ser/Thr)-Gln motifs, but only one within the BRCT1 domain.") ;; 831
    (p  "Serine 371 lies in the C-terminal end of the XRCC1 BRCT1.") ;; 832
    (p  "To ascertain that the predicted Ser 371 was the phosphorylation site, we generated the point mutant XRCC1 S371L and expressed either the wt or the mutant form of XRCC1 in COS-1 cells.") ;; 833
    (p  "Immunoprecipitated XRCC1 and XRCC1 S371L were used as substrate in a kinase assay. xref reveals that wt XRCC1 is phosphorylated by the co-immunoprecipitated DNA-PK and the addition of 1 µM wortmannin in the reaction mixture almost abolished XRCC1 phosphorylation.") ;; 834
    (p  "In clear contrast, XRCC1 S371L was phosphorylated to background level as compared with wt XRCC1.") ;; 835
    (p  "Addition of wortmannin was ineffective on the residual phosphorylation of the mutated protein, thus suggesting that the residual phosphorylation of XRCC1 S371L is most likely DNA-PK-independent as previously observed in xref .") ;; 836
    (p  "To rule out the possibility that XRCC1 S371L was not phosphorylated because this mutation affects the interaction of XRCC1 with DNA-PK, the membrane used for the detection of XRCC1 was assayed for the presence of DNA-PK heterotrimer.") ;; 837
    (p  "As shown in xref , the same amount of the DNA-PK heterotrimer co-immunoprecipitated with either wt or S371L XRCC1, indicating that the phosphorylation status of Ser371 does not impact on the binding of XRCC1 to DNA-PK.") ;; 838
    (p  "It was recently shown that XRCC1 can form dimers at high concentration ( xref , xref ).") ;; 839
    (p  "As BRCT domains are protein–protein interaction modules, we reasoned that XRCC1 BRCT1 or BRCT2 domain might be directly involved in XRCC1 dimerization.") ;; 840
    (p  "To explore this possibility, we examined the ability of Flag-XRCC1 to interact with GST-XRCC1 truncated proteins expressed in HeLa cells.") ;; 841
    (p  "Cell extracts expressing Flag-XRCC1 were mixed with cell extracts expressing GST-fused truncated versions of XRCC1.") ;; 842
    (p  "GST-fused proteins were subsequently trapped on glutathione–Sepharose beads, and co-purifying Flag-tagged XRCC1 was assessed by western blot analysis with an anti-Flag antibody.") ;; 843
    (p  "As shown in xref , co-purification of Flag-XRCC1 was efficient only with GST-XRCC1 polypeptides containing the BRCT1 domain, but not with the GST fusion containing the BRCT2 domain (427–633).") ;; 844
    (p  "As the former can be phosphorylated by DNA-PK, we wondered whether the dimerization of XRCC1 depends on the phosphorylated status of XRCC1 Ser 371.") ;; 845
    (p  "Pulled-down GST-XRCC1 (170–428) protein was phosphorylated in vitro by the co-associated DNA-PK in the presence of ATP, or dephosphorylated with λ phosphatase (λPPase).") ;; 846
    (p  "Then, these bead-associated proteins were mixed to cell extracts containing Flag-XRCC1 and after centrifugation the co-association of Flag-XRCC1 was assessed by western blotting. xref shows that the phosphorylated form of XRCC1 retains small amount of Flag-XRCC1.") ;; 847
    (p  "In clear contrast, Flag-XRCC1 largely co-purified with dephosphorylated XRCC1.") ;; 848
    (p  "Similar experiments were conducted with the non-phosphorylable GST-XRCC1(170–428) S371L mutant and the GST-XRCC1(170–428) S371D mutant that mimics a constitutively phosphorylated form of XRCC1.") ;; 849
    (p  "Flag-XRCC1 associated preferentially with the non-phosphorylable form of XRCC1 ( xref ).") ;; 850
    (p  "These results indicate that hypo-phosphorylation favors XRCC1 dimerization or higher-order multimerization.") ;; 851
    (p  "Conversely, phosphorylation at Ser 371 causes XRCC1 dimer dissociation into monomer.") ;; 852
    (p  "PARP-1 and PARP-2, which are known to form homo and heterodimers, are partners of XRCC1 BRCT1.") ;; 853
    (p  "Therefore, we questioned whether XRCC1 dimerization was mediated by PARP-1 or PARP-2 dimer.") ;; 854
    (p  "To determine this, GST-XRCC1 (282–428) was expressed in E.coli , purified to homogeneity and dot-blotted onto nitrocellulose along with the control proteins GST, BSA and Polβ.") ;; 855
    (p  "The nitrocellulose filter was incubated with purified XRCC1 and immunostained with antibodies raised against the C-terminal part of XRCC1 which do not recognize the BRCT1 domain.") ;; 856
    (p  "As shown in xref , the BRCT1 domain retained binding to full-length XRCC1 as well as Polβ, indicating a direct association mediated by the BRCT1 domain between the two polypeptides.") ;; 857
    (p  "No interaction was observed with the negative controls GST and BSA.") ;; 858
    (p  "It has been shown that XRCC1 interacts with and stimulates PNK, DNA Ligase III and APE1 activities ( xref , xref , xref ).") ;; 859
    (p  "In contrast, XRCC1 negatively regulates PARP-1 and PARP-2 enzymatic activities ( xref , xref ).") ;; 860
    (p  "We therefore examined whether XRCC1 might affect the enzymatic activity of DNA-PK.") ;; 861
    (p  "An in vitro DNA-PK assay was set up with purified DNA-PK, a recombinant peptide encompassing the serine 15 of p53 fused to GST as substrate and increasing amounts of recombinant XRCC1.") ;; 862
    (p  "We examined the Ser-15 phosphorylation status of p53 by immunoblotting using an anti-p53 phospho-Ser-15 specific antibody.") ;; 863
    (p  "In the absence of DNA-PK no phosphorylation of p53 peptide on Ser15 was observed ( xref ).") ;; 864
    (p  "Addition of increasing amounts of recombinant human XRCC1 to the reaction strongly stimulated DNA-PK-dependent p53-Ser 15 phosphorylation.") ;; 865
    (p  "Heat-inactivated XRCC1 was not able to stimulate DNA-PK activity (data not shown).") ;; 866
    (p  "Since XRCC1 BRCT1 was found as the interacting domain with DNA-PK, the possibility that this domain alone stimulates DNA-PK activity was investigated.") ;; 867
    (p  "Bacterially purified GST-XRCC1 BRCT1 (282–428), the mutated versions S371L and S371D as well as the GST-XRCC1 BRCT2 (527–633) were used in the in vitro kinase assay.") ;; 868
    (p  "The addition to the reaction mixture of GST-XRCC1 BRCT1 and the mutant S371L strongly stimulated DNA-PK activity in vitro ( xref ), whereas the addition of GST-XRCC1 (282–428) S371D only slightly stimulated the reaction.") ;; 869
    (p  "The addition of GST-XRCC1 (427–633) comprising the BRCT2 domain had no stimulatory effect at all.") ;; 870
    (p  "These results indicate that the BRCT1 domain is endowed with the capacity to stimulate DNA-PK activity, depending on the Ser 371 status ( xref ).") ;; 871
    (p  "Taken together, these data indicate that XRCC1 strongly stimulates DNA-PK activity and that this stimulatory effect is weakened in the mutant S371D that mimics a phosphorylated status of the BRCT1 domain.") ;; 872
    (p  "To directly investigate the biological significance of XRCC1 phosphorylation at Serine 371 in relation of rejoining DSBs, we took advantage of γ-H2AX foci analysis as a sensitive monitor of DSBs formation and repair ( xref , xref ).") ;; 873
    (p  "In the absence of DNA damage, we found that the ‘spontaneous’ level of γ-H2AX foci was higher in XRCC1 -deficient EM9 cells than in wt AA8 ( xref ) ( t -test, P < 0.001) in agreement with ( xref ).") ;; 874
    (p  "We further investigated the biological significance of XRCC1 phosphorylation at S371 in relation to DSBs occurrence and repair in vivo in EM9 cells corrected for either wt or S371L-mutant XRCC1 ( xref and C).") ;; 875
    (p  "Interestingly, in the absence of DNA damage, the expression of either XRCC1 or XRCC1 S371L in EM9 cells decreased substantially the average number of γ-H2AX foci per nucleus.") ;; 876
    (p  "However, the number of foci in cells restored with the non-phosphorylable XRCC1 was significantly higher compared with that restored with wt XRCC1 ( t -test P < 0.001).") ;; 877
    (p  "Following 1 Gy IR, γ-H2AX foci increased substantially in all cell lines.") ;; 878
    (p  "Interestingly, the defect was substantially corrected in EM9 cells expressing wt XRCC1.") ;; 879
    (p  "In contrast, the S371L XRCC1 mutant that disrupts the DNA-PK phosphorylation site failed to rescue completely the DSB repair defect of EM9 cells ( xref and C).") ;; 880
    (p  "Together, these results provide compelling evidence that phosphorylation of XRCC1 at Serine 371 is important for rejoining of DSBs in response to DNA damage caused by IR.") ;; 881
    (p  "Using a combination of IP, reverse IP and GST pull-down analysis, in this work we provide evidence of a physical and functional association of XRCC1 with the heterotrimeric complex DNA-PK.") ;; 882
    (p  "In vivo metabolic labeling showed that XRCC1 is constitutively phosphorylated and that it is further hyper-phosphorylated following IR.") ;; 883
    (p  "Both the use of specific PI3-KK inhibitors and DNA-PKcs −/− MEFs confirmed that DNA-PK is the major kinase involved in the phosphorylation of the BRCT1 domain at Ser 371.") ;; 884
    (p  "It has been suggested that an altered DNA repair activity of XRCC1 R399Q polymorphism may contribute to susceptibility to carcinogenesis.") ;; 885
    (p  "However, EM9 cells expressing wt or XRCC1 R399Q failed to reveal any difference in the sensitivity to MMS and in SSB repair ( xref ).") ;; 886
    (p  "Therefore, because the mutation of R399 could have an impact on the structure around S371 and consequently on the BRCT1 phosphorylation, the R399Q mutant was tested for its ability to be phosphorylated by DNA-PK in vitro .") ;; 887
    (p  "We found that XRCC1 R399Q is associated with and can be phosphorylated on S371 by DNA-PK similarly to wt XRCC1 (data not shown), thus ruling out a disturbing effect of this polymorphism on BRCT1 phosphorylation.") ;; 888
    (p  "It has been previously reported that XRCC1 is multiply phosphorylated by CK2 ( xref , xref , xref ).") ;; 889
    (p  "The CK2 phosphorylation sites were mapped on a cluster of serine/threonine located in the linker between the two BRCT domains ( xref , xref ).") ;; 890
    (p  "XRCC1 phosphorylation by CK2 promotes interaction with PNK ( xref ).") ;; 891
    (p  "PNK was previously shown to stimulate both DNA kinase and DNA phosphatase activities at DNA breaks ( xref ), therefore stimulating DNA repair.") ;; 892
    (p  "CK2 phosphorylation of XRCC1 also regulates binding of Aprataxin, the protein mutated in ataxia-oculomotor apraxia 1 (AOA1) ( xref , xref ), to the same region of XRCC1 competitively ( xref ).") ;; 893
    (p  "Thus, XRCC1 binds to PNK or Aprataxin in a mutually exclusive manner.") ;; 894
    (p  "In this work, no protein kinase activity was found associated with the C-terminus of XRCC1 (XRCC1 428–633) encompassing the CK2 phosphorylation sites suggesting that CK2 does not co-purify with this domain under the conditions we have used.") ;; 895
    (p  "Independent and important roles have been ascribed to each XRCC1 BRCT domain ( xref , xref ).") ;; 896
    (p  "The BRCT1 domain is the most evolutionarily conserved and is required for survival after methylation damage but its precise function is not fully understood at present.") ;; 897
    (p  "It mediates the interaction with PARP-1 ( xref ) and PARP-2 ( xref ) and contains a binding site for poly(ADP–ribose) ( xref ).") ;; 898
    (p  "In response to DNA damage-induced SSBs, XRCC1 is recruited within seconds to the sites of chromosomal DNA strand breakage by its BRCT1 domain ( xref – xref ).") ;; 899
    (p  "We found that Ser 371 phosphorylation is not involved in this process since XRCC1 S371L can still be recruited to DNA damage sites (data not shown).") ;; 900
    (p  "In contrast to two recent reports showing that XRCC1 dimerizes via its BRCT2 domain ( xref , xref ), we showed here by GST-pull down assay and Far-western blotting that the BRCT1 (but not the BRCT2) domain is the interface for homodimerization or formation of higher order multimer complex.") ;; 901
    (p  "We also show that BRCT1 phosphorylation on Ser 371 controls XRCC1 dimer-monomer transition that reflects a major structural change of XRCC1 after BRCT1 phosphorylation.") ;; 902
    (p  "The DSBs repair delay observed with the ectopic expression of the non-phosphorylable mutant S371L emphasizes the importance of the phosphorylation of XRCC1 and hence its conversion to a monomeric form, in the resolution of IR-induced DSBs.") ;; 903
    (p  "Interestingly, in the crystal structure of tandem BRCT repeats like 53BP1 or BRCA1 ( xref , xref ), the position equivalent to Ser 371 in XRCC1 corresponds to a residue localized in helix 2 that contributes to the inter-BRCT repeat interface, thus inviting to the speculation that phosphorylation of this position might strongly perturb BRCT-BRCT interaction thus preventing dimerization.") ;; 904
    (p  "The interaction between DNA-PK and XRCC1 not only triggers the phosphorylation of the BRCT1 domain but also enhances the phosphorylation of p53-Ser 15.") ;; 905
    (p  "Interestingly, the pseudo phosphorylated mutant S371D did not form dimers of XRCC1 and was impaired in this stimulatory function.") ;; 906
    (p  "Phosphorylation of p53-Ser15 is known to play a role in the functional interactions with early complexes of Rad51-dependent recombination and in DNA damage signaling ( xref , xref ).") ;; 907
    (p  "It is thus tempting to speculate that after a SSB-induced replication fork stalling XRCC1 as an early responder may channel repair into the NHEJ.") ;; 908
    (p  "Recent reports suggest a contribution of PARP-1, XRCC1 ( xref ) and DNA ligase III ( xref ) in backup pathways of double-strand end-joining.") ;; 909
    (p  "Whether specific factors involved in DSBs repair interact with phosphorylated XRCC1 awaits further investigation.") ;; 910
    (p  "Somatic mutations in the kinase domain of the epidermal growth factor receptor tyrosine kinase gene EGFR are common in lung adenocarcinoma.") ;; 911
    (p  "The presence of mutations correlates with tumor sensitivity to the EGFR inhibitors erlotinib and gefitinib, but the transforming potential of specific mutations and their relationship to drug sensitivity have not been described.") ;; 912
    (p  "Here, we demonstrate that EGFR active site mutants are oncogenic.") ;; 913
    (p  "Mutant EGFR can transform both fibroblasts and lung epithelial cells in the absence of exogenous epidermal growth factor, as evidenced by anchorage-independent growth, focus formation, and tumor formation in immunocompromised mice.") ;; 914
    (p  "Transformation is associated with constitutive autophosphorylation of EGFR, Shc phosphorylation, and STAT pathway activation.") ;; 915
    (p  "Whereas transformation by most EGFR mutants confers on cells sensitivity to erlotinib and gefitinib, transformation by an exon 20 insertion makes cells resistant to these inhibitors but more sensitive to the irreversible inhibitor CL-387,785.") ;; 916
    (p  "Oncogenic transformation of cells by different EGFR mutants causes differential sensitivity to gefitinib and erlotinib.") ;; 917
    (p  "Treatment of lung cancers harboring EGFR exon 20 insertions may therefore require the development of alternative kinase inhibition strategies.") ;; 918
    (p  "Different EGFR mutations are associated with lung cancer.") ;; 919
    (p  "All of the classes can transform fibroblasts and lung epithelial cells, most are sensitive to erlotinib and gefininib, but exon 20 mutations are only sensitive to an irreversible EGFR inhibitor.") ;; 920
    (p  "The human epidermal growth factor receptor gene product (EGFR), a member of the ErbB family of receptor tyrosine kinases, is an integral component of signaling in epithelial cell proliferation.") ;; 921
    (p  "Stimulation of the receptor with EGF or other cognate ligands induces receptor dimerization and autophosphorylation, providing docking sites for SH2-containing adaptor proteins that mediate the activation of intracellular signaling pathways [ xref – xref ].") ;; 922
    (p  "Consistent with a role in proliferative signaling, the oncogenic potential of EGFR variants with deletions in the extracellular domain, including the v-erbB oncogene of avian erythroblastosis virus and the vIII mutant found in human cancers, transforms vertebrate cells in the absence of exogenous EGF [ xref – xref ].") ;; 923
    (p  "In contrast, overexpression of the wild-type EGFR gene can transform NIH-3T3 cells only upon EGF addition [ xref ].") ;; 924
    (p  "Kinase activity is required for ligand-independent transformation by both types of EGFR extracellular domain deletion mutant [ xref , xref ].") ;; 925
    (p  "A series of novel EGFR kinase domain mutations observed in human lung adenocarcinomas has recently been described [ xref – xref ].") ;; 926
    (p  "These mutations arise in four exons: substitutions for G719 in the nucleotide-binding loop of exon 18, in-frame deletions within exon 19, in-frame insertions within exon 20, and substitutions for L858 or L861 in the activation loop in exon 21.") ;; 927
    (p  "Tumors from patients with clinical responses to the EGFR inhibitors gefitinib or erlotinib have been shown to contain EGFR deletion mutations or substitution mutations [ xref , xref , xref , xref ], but no exon 20 insertion mutations have been reported in this group of clinical responders.") ;; 928
    (p  "Although exon 20 mutations were not widely reported at first, recently five large-scale studies that sequenced EGFR exons 18 through 21 reported a total of 18 exon 20 insertions out of 350 EGFR mutations identified in 1,108 non-small-cell lung cancers [ xref – xref ].") ;; 929
    (p  "Patients who responded to gefitinib and subsequently relapsed were found to have T790M secondary mutations, also in exon 20 [ xref , xref ].") ;; 930
    (p  "Although gefitinib treatment and small interfering RNA experiments suggest that cells expressing mutant EGFR are dependent on EGFR function for survival [ xref , xref , xref ], the direct transforming potential of the mutations observed in lung adenocarcinoma has not been described.") ;; 931
    (p  "Here, we assess the ability of these EGFR kinase domain mutations to constitutively activate EGFR signaling and contribute to tumorigenesis in model cell culture systems.") ;; 932
    (p  "To assess the oncogenic potential of EGFR kinase domain mutants, tumor-derived mutations were introduced into the wild-type human EGFR cDNA by site-directed mutagenesis.") ;; 933
    (p  "The resulting wild-type and mutant EGFR cDNAs were then cloned into the pBabe-Puro retroviral vector and transferred into NIH-3T3 cells by retroviral infection.") ;; 934
    (p  "We initially examined two representative substitution mutations: G719S, observed in exon 18, and L858R, observed in exon 21 ( xref ).") ;; 935
    (p  "The L858R and G719S mutants were able to transform NIH-3T3 cells to anchorage independence in the absence of exogenous EGF, as assayed by colony formation in soft agar ( xref A, top photographs).") ;; 936
    (p  "In contrast, as previously described [ xref ], wild-type EGFR transformed only upon EGF addition ( xref A, bottom photographs).") ;; 937
    (p  "The kinase-dead D837A mutant [ xref ], included as a negative control, failed to induce colony formation in the presence or absence of EGF.") ;; 938
    (p  "EGFR expression levels were approximately equal for each pooled stably-transfected cell population ( xref B).") ;; 939
    (p  "Clonal cell lines derived from the pooled stably-transfected cells expressing the mutant EGFR exhibited profound morphological alterations characterized by a fusiform, refractile phenotype (unpublished data).") ;; 940
    (p  "Levels of L858R EGFR expression necessary to achieve transformation in this model cell culture system were no higher than expression levels observed in the human lung adenocarcinoma cell line H3255 bearing the L858R mutation ( xref C).") ;; 941
    (p  "Transformation of NIH-3T3 cells by L858R or G719S EGFR was further assessed in two independent assays.") ;; 942
    (p  "Expression of the EGFR point mutants in NIH-3T3 cells caused loss of contact inhibition, resulting in focus formation on an unselected monolayer, whereas the wild-type and D837A kinase-inactive controls did not ( xref ).") ;; 943
    (p  "In addition, injection of clonal, transformed NIH-3T3 fibroblasts expressing L858R and G719S EGFR into immunocompromised mice led to the formation of tumors ( xref ).") ;; 944
    (p  "No tumor formation was observed upon injection of cells infected with vector, wild-type, and kinase-dead controls.") ;; 945
    (p  "Representative exon 19 deletion and exon 20 insertion mutations of EGFR were then assessed for transforming activity.") ;; 946
    (p  "Mutants L747_E749del, A750P [ xref ] and D770_N771insNPG (K.") ;; 947
    (p  "Naoki and M. M., unpublished data) were introduced into NIH-3T3 cells by retrovirus-mediated gene transfer as described above.") ;; 948
    (p  "Cells expressing the EGFR deletion and insertion mutants formed colonies in soft agar with a higher efficiency than that of cells expressing the missense mutants, comparable to the colony formation efficiency of cells expressing polyoma middle T antigen ( xref D).") ;; 949
    (p  "Expression of the deletion mutant was comparable to that of L858R EGFR, whereas expression of the insertion mutant was lower, as reflected in the EGFR expression levels of the clonal cell lines ( xref A and unpublished data).") ;; 950
    (p  "Cells expressing the L747_E749del A750P and D770_N771insNPG EGFR mutants also exhibited a greater degree of loss of contact inhibition than was observed in cells expressing the L858R or G719S EGFR mutants in a primary focus formation assay (unpublished data).") ;; 951
    (p  "To determine the ability of mutant EGFR to transform a more physiologically relevant cell type, retroviruses expressing the L858R and G719S mutant forms of EGFR were introduced into hTBE cells expressing the SV40 early region T antigens and the human telomerase catalytic subunit hTERT [ xref ].") ;; 952
    (p  "We previously showed that such cells are fully transformed by the additional expression of oncogenic alleles of H- or K-RAS [ xref ].") ;; 953
    (p  "Similarly, the expression of L858R and G719S mutant EGFR genes conferred enhanced anchorage-independent growth upon such hTBE cells, with colony numbers approximately 15-fold above the background level of microscopic colonies observed in hTBE cells expressing wild-type EGFR or a control vector ( xref E).") ;; 954
    (p  "The representative deletion and insertion mutants, L747_E749del A750P and D770_N771insNPG, formed colonies in soft agar with even greater efficiency, with the caveat that the deletion mutant is expressed at higher levels than the other mutants in this assay ( xref F).") ;; 955
    (p  "Similar to hTBE cells expressing H-RAS V12, expression of these EGFR mutants did not increase the rate of cell proliferation in defined medium (unpublished data).") ;; 956
    (p  "Multiple tumor-derived mutants of EGFR therefore contribute to oncogenic transformation as shown by three different assays: anchorage-independent cell growth, focus formation, and in vivo tumor formation.") ;; 957
    (p  "To determine whether transformation by mutant EGFR is associated with constitutive receptor activation in the absence of exogenous EGF, tyrosine autophosphorylation in the C-terminal tail of EGFR was examined by immunoblotting of cell lysates.") ;; 958
    (p  "Constitutive tyrosine phosphorylation of the mutant EGFR molecules was observed at several C-terminal sites, including Y845, Y1068, and Y1173 ( xref A).") ;; 959
    (p  "High-level phosphorylation of the insertion mutant at Y1045, the docking site for the Cbl E3 ubiquitin ligase [ xref ], is correlated with decreased abundance of this protein ( xref A), but whether the differential protein levels are a result of Cbl activity has not been confirmed.") ;; 960
    (p  "The constitutive increase in EGFR activity appears to be ligand-independent, as a combination of neutralizing antibodies against EGF, TGFα, and EGFR failed to inhibit elevated basal levels of L858R autophosphorylation ( xref B).") ;; 961
    (p  "However, tyrosine phosphorylation on the EGFR mutants could be further increased by EGF stimulation ( xref B), suggesting that the mutant EGFRs exhibit both ligand-independent and ligand-dependent activation, similar to that observed upon EGF stimulation of the L858R mutant H3255 lung adenocarcinoma cell line [ xref ].") ;; 962
    (p  "Ligand-independent activation of EGFR with lung cancer-derived kinase domain mutations has not been observed by other groups working with transient transfection systems [ xref , xref ].") ;; 963
    (p  "We too have failed to detect constitutive elevation of mutant receptor autophosphorylation when transiently expressed in NIH-3T3 and HeLa cells (unpublished data).") ;; 964
    (p  "The reason for this phenotypic difference remains unclear.") ;; 965
    (p  "We next asked whether constitutive activation of mutant EGFR is associated with alterations in downstream signaling pathways.") ;; 966
    (p  "Because Y1173, a docking site for the adaptor protein Shc [ xref ], is constitutively phosphorylated on mutant EGFR ( xref A), we analyzed Shc-EGFR complex formation in cells expressing wild-type and mutant EGFR.") ;; 967
    (p  "Coimmunoprecipitation studies revealed a low level of constitutive Shc binding to the L858R EGFR, further augmented by EGF stimulation ( xref A), whereas Shc complexed with the wild-type EGFR only upon EGF stimulation.") ;; 968
    (p  "Immunoblotting of whole cell lysates with an antibody specific for tyrosine-phosphorylated Shc revealed constitutive phosphorylation on Shc in cells expressing the L858R EGFR, consistent with the known phosphorylation of EGFR-bound Shc [ xref ]; in contrast, in cells expressing wild-type EGFR, Shc was phosphorylated only in response to EGF stimulation ( xref B).") ;; 969
    (p  "Similar to the situation with receptor autophosphorylation, constitutive phosphorylation of Shc in mutant EGFR-expressing cells has not been observed in transient expression systems [ xref ].") ;; 970
    (p  "Consistent with previous reports on L858R mutant EGFR [ xref ], STAT signaling pathways are constitutively activated in the transformed NIH-3T3 cells.") ;; 971
    (p  "Immunoblotting with antibodies specific for phosphorylated Y705, the tyrosine responsible for STAT3 dimerization [ xref ], revealed constitutive phosphorylation in cells expressing the lung cancer-derived mutant EGFR but not wild-type EGFR ( xref C).") ;; 972
    (p  "Increased STAT3-dependent gene expression in cells expressing the mutant EGFRs was confirmed in a reporter assay ( xref D) using a STAT-dependent luciferase construct [ xref ].") ;; 973
    (p  "Constitutive phosphorylation of mutant EGFR on Y1068 (see xref A), the binding site for the phosphatidylinositol 3-kinase interacting protein Gab1 [ xref ], indicated that signaling pathways downstream of phosphatidylinositol 3-kinase might be constitutively activated as well.") ;; 974
    (p  "One such pathway is controlled by the serine/threonine kinase Akt, which is involved in promotion of cell survival.") ;; 975
    (p  "Western blotting with anti-phospho-Akt confirmed that Akt is constitutively activated in cells expressing the mutant EGFR ( xref E).") ;; 976
    (p  "We therefore conclude that at least a subset of physiological EGFR signaling pathways is activated by stable expression of mutant EGFR .") ;; 977
    (p  "Given the association between the presence of activating EGFR mutations and clinical responses to gefitinib or erlotinib in lung adenocarcinoma patients [ xref , xref , xref , xref ], we assessed the ability of these EGFR inhibitors to inhibit anchorage-independent growth of clonal NIH-3T3 cell lines expressing wild-type or mutant EGFR .") ;; 978
    (p  "Consistent with the increased sensitivity to gefitinib and erlotinib of patient tumors harboring the missense mutations or exon 19 deletions, anchorage-independent growth of cells expressing L858R, G719S, or L747_E749del A750P was inhibited by 100 nM erlotinib ( xref A and xref B) or gefitinib ( xref B and unpublished data), although the G719S mutant may be somewhat more resistant to gefitinib ( xref A and unpublished data), consistent with other in vitro studies [ xref ].") ;; 979
    (p  "In contrast, 1 μM erlotinib ( xref A) or gefitinib (unpublished data) did not inhibit anchorage-independent growth of EGF-treated cells overexpressing the wild-type EGFR .") ;; 980
    (p  "Transformation by the D770_N771insNPG EGFR mutant was remarkably insensitive to gefitinib and erlotinib, as inhibition of colony growth in soft agar required exposure to 100-fold higher concentrations (>1 μM) of these agents than was required to inhibit colony formation by cells expressing the EGFR missense mutants or deletion mutant ( xref A).") ;; 981
    (p  "In fact, no significant inhibition of anchorage-independent growth of cells expressing D770_N771insNPG EGFR was observed at 3 μM gefitinib or erlotinib ( xref B).") ;; 982
    (p  "Consistent with this result, all three lung adenocarcinoma patients with known exon 20 insertion mutants of EGFR have failed to show a clinical response to treatment and have instead achieved only stable disease with erlotinib alone ( n = 1; L.") ;; 983
    (p  "Sequist and T.") ;; 984
    (p  "Lynch, personal communication), or in combination with chemotherapy ( n = 2; D.") ;; 985
    (p  "Eberhard and K.") ;; 986
    (p  "Hillan, personal communication).") ;; 987
    (p  "These results suggest that cancers harboring distinct activating kinase domain mutations of EGFR may exhibit a differential sensitivity to specific EGFR inhibitors.") ;; 988
    (p  "Interestingly, the irreversible EGFR inhibitor CL-387,785 [ xref ] is more effective than gefitinib or erlotinib for inhibition of colony formation by cells expressing the exon 20 insertion mutant ( xref C).") ;; 989
    (p  "Calculated IC50 values for gefitinib, erlotinib, and CL-387,785 against D770_N771insNPG were 2.6 μM, 2.5 μM, and 0.2 μM, respectively.") ;; 990
    (p  "CL-387,785 had an even greater effect on colony formation by cells expressing L858R EGFR, completely inhibiting transformation at 0.003 μM (unpublished data).") ;; 991
    (p  "These effects are also observed upon assessment of receptor autophosphorylation ( xref ).") ;; 992
    (p  "Although the inhibitory concentrations do not exactly correlate with the results of the colony formation assay, probably due to the difference in duration of the assays, the trends are the same.") ;; 993
    (p  "Insertion mutant autophosphorylation is less sensitive to inhibition by gefitinib than that of L858R, but CL-387,785 is more effective than gefitinib at inhibiting insertion mutant (and L858R) autophosphorylation.") ;; 994
    (p  "Treatment with the EGFR inhibitors gefitinib and erlotinib has led to dramatic responses in many lung cancer patients, predominantly for those cancers in which EGFR mutations can be detected.") ;; 995
    (p  "However, there has been a subset of lung cancer patients with these mutations who do not respond to the EGFR inhibitors in current clinical use.") ;; 996
    (p  "By demonstrating that lung-cancer derived kinase domain mutants of EGFR are constitutively activated and that they can transform cultured mammalian cells, we have provided an in vitro system with which to study EGFR-dependent oncogenesis in a genetically homogeneous background.") ;; 997
    (p  "Although the anchorage-independent growth assay measures only one of many phenotypes of transformation and does not, for example, recapitulate tumor microenvironment or account for the influence of the immune system on tumor formation, this system will be useful for dissecting inhibitor response and downstream signaling pathways, particularly for those mutants not found in existing cancer-derived cell lines.") ;; 998
    (p  "Using the NIH-3T3 transformation system, we have found that transformation by an exon 20 insertion mutant is resistant to inhibition by gefitinib and erlotinib.") ;; 999
    (p  "Strikingly, transformation by this EGFR exon 20 insertion mutant is more sensitive to treatment with an irreversible inhibitor, CL-387,785.") ;; 1000
    (p  "This compound was previously found to be active against EGFR containing the exon 20 point mutation T790M, associated with resistance to gefitinib and erlotinib [ xref ].") ;; 1001
    (p  "These results indicate a need for the use of novel EGFR inhibitors in primary treatment of lung cancers harboring the exon 20 insertion mutations.") ;; 1002
    (p  "Furthermore, the distinct inhibitor sensitivity of various EGFR mutants argues that therapies may need to be targeted against specific mutant forms of a protein, whereas generalized inhibition of a particular oncogenic target may not be sufficient.") ;; 1003
    (p  "The intersectin 1 (ITSN1) scaffold stimulates Ras activation on endocytic vesicles without activating classic Ras effectors.") ;; 1004
    (p  "The identification of Class II phosphatidylinositol 3-kinase beta, PI3KC2β, as an ITSN1 target on vesicles and the presence of a Ras binding domain (RBD) in PI3KC2β suggests a role for Ras in PI3KC2β activation.") ;; 1005
    (p  "Here, we demonstrate that nucleotide-free Ras negatively regulates PI3KC2β activity.") ;; 1006
    (p  "PI3KC2β preferentially interacts in vivo with dominant-negative (DN) Ras, which possesses a low affinity for nucleotides.") ;; 1007
    (p  "PI3KC2β interaction with DN Ras is disrupted by switch 1 domain mutations in Ras as well as RBD mutations in PI3KC2β.") ;; 1008
    (p  "Using purified proteins, we demonstrate that the PI3KC2β-RBD directly binds nucleotide-free Ras in vitro and that this interaction is not disrupted by nucleotide addition.") ;; 1009
    (p  "Finally, nucleotide-free Ras but not GTP-loaded Ras inhibits PI3KC2β lipid kinase activity in vitro .") ;; 1010
    (p  "Our findings indicate that PI3KC2β interacts with and is regulated by nucleotide-free Ras.") ;; 1011
    (p  "These data suggest a novel role for nucleotide-free Ras in cell signaling in which PI3KC2β stabilizes nucleotide-free Ras and that interaction of Ras and PI3KC2β mutually inhibit one another.") ;; 1012
    (p  "Ras is a monomeric G-protein that cycles between GDP- and GTP-bound states xref .") ;; 1013
    (p  "The nucleotide state of Ras is tightly regulated in vivo by two classes of proteins: guanine nucleotide exchange factors (GEFs) and GTPase activating proteins (GAPs). GEFs facilitate the release of bound nucleotide from Ras to produce nucleotide-free Ras which preferentially binds GTP due to the higher cellular concentrations of GTP over GDP thereby leading to Ras activation.") ;; 1014
    (p  "In contrast, GAPs enhance the intrinsic GTPase activity of Ras to facilitate the hydrolysis of GTP to GDP resulting in Ras inactivation.") ;; 1015
    (p  "Mutations in the Ras genes (H-, K-, and N-Ras) are found in approximately 30% of human tumors xref .") ;; 1016
    (p  "These mutations typically impair the GTPase activity leading to elevated RasGTP levels and aberrant cell growth due to the chronic engagement of Ras effectors.") ;; 1017
    (p  "RasGTP has been considered to be the only biologically active form of Ras, although accumulating evidence lends support to the contrary xref , xref , xref , xref .") ;; 1018
    (p  "Over-expression of wild-type Ras, which is thought to be predominantly GDP-bound due to its intrinsic GTPase activity, exerts a suppressive effect on oncogenic transformation by constitutively activated Ras alleles xref , xref , xref , xref .") ;; 1019
    (p  "In a chemical carcinogenesis model for lung tumorigenesis, mice hemizygous for K-Ras deletion develop 4–5 times more lung tumors than wild-type mice suggesting that the wild-type allele plays a protective role xref . A number of human tumors exhibit loss of heterozygosity of K-Ras further supporting the notion that wild-type Ras functions as a tumor suppressor xref , xref , xref .") ;; 1020
    (p  "However, these studies do not distinguish whether the suppressive effect of wild-type Ras is due to higher levels of RasGDP or potentially nucleotide-free Ras.") ;; 1021
    (p  "Indeed, a similar oncosuppressive effect is seen with dominant-negative Ras, Ras17N, which exerts its inhibitory effect by competing for GEFs due to its low affinity for nucleotides (compared to wild-type Ras) and therefore longer lifetime in the nucleotide-free state xref .") ;; 1022
    (p  "However, the oncosuppressive effect of Ras17N on Ras-mediated transformation is independent of its interaction with exchange factors suggesting a potential role for nucleotide-free Ras in cellular signaling xref , xref , xref .") ;; 1023
    (p  "The above findings lead to the question of whether Ras proteins play a role in signaling independent of nucleotide binding.") ;; 1024
    (p  "Indeed, our studies on intersectin1 (ITSN1) provide and example of such a role. ITSNs are multi-domain scaffolding proteins that regulate multiple biochemical pathways in addition to playing a central role in endocytosis xref .") ;; 1025
    (p  "There are two ITSN genes, ITSN1 and ITSN2, each coding for a short (S) and long (L) isoform xref .") ;; 1026
    (p  "The short isoform contains two Eps15 homology (EH) domains, followed by a coiled-coiled (CC) domain, and five Src homology 3 (SH3) domains xref , xref , xref , xref .") ;; 1027
    (p  "The longer isoform contains an additional Dbl homology (DH) domain, pleckstrin homology (PH) domain, and C2 domain xref .") ;; 1028
    (p  "ITSN1 was initially discovered as a regulator of endocytosis, but recent studies have uncovered a role for this adaptor in intracellular signaling pathways including kinase activation, receptor tyrosine kinase regulation, and compartmentalized-specific Ras activation xref , xref , xref , xref , xref , xref , xref .") ;; 1029
    (p  "We previously reported that ITSN1-S stimulates H-Ras (hereafter referred to as Ras) activation on intracellular vesicles xref .") ;; 1030
    (p  "However, the target of this ITSN1-Ras pathway was unclear.") ;; 1031
    (p  "The role of ITSN1 in Ras and PI3KC2β regulation combined with the presence of a putative RBD on PI3KC2β lead to the hypothesis that Ras is involved in ITSN1 regulation of PI3KC2β activation.") ;; 1032
    (p  "Indeed, our results reveal a unique role for nucleotide-free Ras in negatively regulating PI3KC2β activity suggesting a potential broader role for this form of Ras than previously recognized.") ;; 1033
    (p  "Co-localization of PI3KC2β to ITSN1-positive vesicles xref coupled with ITSN1 activation of Ras on similar vesicles xref and the presence of a putative RBD on PI3KC2β xref prompted us to examine whether PI3KC2β was a target of the ITSN1-Ras pathway.") ;; 1034
    (p  "Although a previous report suggested that PI3KC2β and Ras do not interact in vitro  xref , we sought to determine whether PI3KC2β interacted with Ras in cells using bimolecular fluorescence complementation (BiFC) xref , xref .") ;; 1035
    (p  "We observed significant interaction between PI3KC2β and Ras on a perinuclear population vesicles ( xref ).") ;; 1036
    (p  "The BiFC complex of Ras and PI3KC2β co-localized with CFP-ITSN1 ( xref ) suggesting that all three molecules are indeed in a trimolecular complex.") ;; 1037
    (p  "This pattern of fluorescence was reminiscent of the localization of ITSN1-Ras as visualized by FRET xref and ITSN1-PI3KC2β as visualized by co-localization and BiFC xref .") ;; 1038
    (p  "Ras interaction with PI3KC2β required the RBD as deletion of this region significantly reduced the BiFC signal ( xref ).") ;; 1039
    (p  "Although mutation of the PRD does not significantly reduce Ras-PI3KC2β interaction, ITSN1 association with PI3KC2β is abolished xref .") ;; 1040
    (p  "Interestingly, deletion of the RBD also reduces ITSN1 interaction with PI3KC2β suggesting that Ras is important for ITSN1-PI3KC2β association (data not shown).") ;; 1041
    (p  "PI3K activity is necessary for ITSN1 activation of AKT and for regulation of an ITSN1 survival pathway in neuronal cells xref .") ;; 1042
    (p  "Given the co-localization of ITSN1, Ras, and PI3KC2β, we tested the importance of Ras in ITSN1 activation of AKT.") ;; 1043
    (p  "Expression of dominant-negative Ras (Ras17N) inhibited ITSN1 activation of AKT ( xref ).") ;; 1044
    (p  "Since Ras17N acts as a dominant-negative by sequestering Ras GEFs and preventing nucleotide dissociation from endogenous Ras xref , we tested whether this inhibition of AKT activation was due entirely to inhibition of Ras interaction with exchange factors.") ;; 1045
    (p  "Mutation of Asp 69 to Asn (69N) disrupts interaction of Ras with GEFs such as Sos and RasGRF xref .") ;; 1046
    (p  "Expression of Ras17N/69N inhibits ITSN1 activation of AKT suggesting that inhibition of this pathway is independent of blocking Ras activation by GEFs ( xref ).") ;; 1047
    (p  "The presence of an RBD on PI3KC2β and the co-localization of Ras with PI3KC2β suggest that PI3KC2β is a bona fide Ras effector.") ;; 1048
    (p  "Surprisingly, constitutively activated Ras, Ras61L, exhibited little interaction with PI3KC2β ( xref ).") ;; 1049
    (p  "Similar results were observed with Ras12V ( xref ).") ;; 1050
    (p  "In contrast, Ras17N interacted most strongly with PI3KC2β followed by RasWT ( xref ).") ;; 1051
    (p  "The interaction between Ras17N and PI3KC2β was not dependent on exchange factors since this interaction with Ras17N/69N was only moderately reduced when compared to interaction with Ras17N ( xref ).") ;; 1052
    (p  "In contrast, ITSN1 interaction with Ras17N was dramatically reduced by the 69N mutation consistent with the finding that ITSN1 interacts with Ras through binding Ras GEFs ( xref ) xref .") ;; 1053
    (p  "Mutation of the ITSN1-binding site in PI3KC2β did not significantly affect Ras-PI3KC2β interaction ( xref ) further supporting the conclusion that exchange factor binding (through ITSN1) is not necessary for Ras-PI3KC2β interaction.") ;; 1054
    (p  "However, deletion of the RBD dramatically reduced Ras-PI3KC2β interaction ( xref ).") ;; 1055
    (p  "While Ras17N is reported to bind GDP in cells xref , in vitro studies indicate that Ras17N binds nucleotides with a ∼30-fold reduced affinity compared to wild-type Ras suggesting that it exists in the nucleotide-free state for extended periods in vivo  xref .") ;; 1056
    (p  "Thus, the interaction between PI3KC2β and Ras17N raises the possibility that the PI3KC2β-RBD interacts with either RasGDP or nucleotide-free Ras.") ;; 1057
    (p  "To determine the nucleotide dependence for Ras-PI3KC2β binding, we examined the interaction of Ras and PI3KC2β in vitro using purified proteins.") ;; 1058
    (p  "Bacterially expressed and purified Ras (aa 1–166) was loaded with nucleotide (GDP or GTPγS) and tested for interaction with GST, GST-Raf-RBD (aa 1–148), or GST-PI3KC2β-RBD (aa 368–463).") ;; 1059
    (p  "As expected, GST-Raf-RBD bound preferentially to RasGTPγS xref .") ;; 1060
    (p  "In contrast, neither GST-PI3KC2β-RBD or GST interacted with nucleotide-bound Ras ( xref ), consistent with prior findings from Waterfield and colleagues xref .") ;; 1061
    (p  "To determine if the PI3KC2β-RBD interacts with nucleotide-free Ras, we generated nucleotide-free Ras in vitro (see Materials and Methods).") ;; 1062
    (p  "GST-PI3KC2β-RBD directly bound nucleotide-free Ras, while little binding was observed between GST-Raf-RBD or GST alone ( xref ).") ;; 1063
    (p  "Addition of nucleotide (either GDP or GTPγS) to the binding reaction prior to incubation at 30°C inhibited interaction of Ras and GST-PI3KC2β-RBD.") ;; 1064
    (p  "Addition of GTPγS to the GST-Raf-RBD binding reaction, however, induced Ras-Raf interaction ( xref ).") ;; 1065
    (p  "These results indicate that under these experimental conditions, nucleotide-free Ras is generated and in the presence of nucleotide, Ras becomes nucleotide loaded.") ;; 1066
    (p  "Next, we examined whether nucleotide could compete off Ras once bound to the PI3KC2β-RBD, a function previously observed with the Ras GEF, CDC25 xref .") ;; 1067
    (p  "Addition of 1 mM nucleotide, either GTP or GDP, was not sufficient to disrupt the complex of Ras-PI3KC2β-RBD ( xref ).") ;; 1068
    (p  "These results suggest that PI3KC2β directly interacts with nucleotide-free Ras, conceivably stabilizing this nucleotide-free intermediate.") ;; 1069
    (p  "Ras17N inhibits PI3K-dependent ITSN1 activation of AKT ( xref ), suggesting that nucleotide-free Ras may negatively regulate PI3KC2β activity.") ;; 1070
    (p  "To determine the effect of nucleotide-free Ras on PI3KC2β activity, in vitro PI3KC2β activity was measured in the presence of nucleotide-free or GTP-loaded Ras ( xref ).") ;; 1071
    (p  "Treatment with LY294002 (10 uM) inhibits in vitro PI3KC2β activity as expected.") ;; 1072
    (p  "Interestingly, addition of nucleotide-free Ras, but not RasGTPγS, dose dependently inhibits PI3KC2β activity.") ;; 1073
    (p  "Effectors of activated Ras bind the switch 1 region of Ras (aa 25–45), also termed the effector domain.") ;; 1074
    (p  "Point mutations (Thr35Ser, Glu37Gly, and Tyr40Cys) in this region of activated Ras (Ras12V) differentially disrupt the interaction with specific effectors ( xref ) xref .") ;; 1075
    (p  "We examined whether these mutations in the context of Ras17N/69N disrupted binding to PI3KC2β.") ;; 1076
    (p  "Ras17N/69N was chosen over Ras17N to avoid any potential complications from Ras interaction with exchange factors.") ;; 1077
    (p  "Mutation of Thr35 and Glu37 of Ras17N/69N decreased PI3KC2β binding whereas Tyr40 mutation had no appreciable effect ( xref ).") ;; 1078
    (p  "These mutations in the context of activated Ras (Ras12V) have a similar effect on interaction with Class I PI3Ks xref suggesting that PI3KC2β interacts with the same region of Ras as Class I PI3Ks but only when Ras is nucleotide-free.") ;; 1079
    (p  "Conversely, specific mutations in the RBD of Class I PI3Ks (Thr208 of PI3K-C1α) block Ras binding both in vitro and in vivo  xref , xref .") ;; 1080
    (p  "Although the RBD of PI3KC2β shares only 18% identity with PI3K-C1α ΔRBD, mutation of the analogous Thr in PI3KC2β to Asp (Thr392 to Asp) resulted in a significant decrease in Ras binding ( xref ).") ;; 1081
    (p  "Furthermore, based on homology modeling of the PI3KC2β RBD onto the structure of the PI3K-C1γ RBD, Lys379 of the PI3KC2β-RBD may also influence interaction with Ras.") ;; 1082
    (p  "Indeed, mutation of Lys379 to Ala in the PI3KC2β-RBD resulted in significant impairment in Ras binding ( xref ).") ;; 1083
    (p  "These results indicate that the PI3KC2β-RBD utilizes a similar molecular surface as Class 1 PI3K RBD in the recognition of the switch 1 region of Ras.") ;; 1084
    (p  "However, PI3KC2β binding is specific to nucleotide-free Ras and must be mediated by distinct structural differences.") ;; 1085
    (p  "Our results predict that the RBD of Raf, but not PI3KC2β, would block Ras-dependent signaling.") ;; 1086
    (p  "Indeed, expression of the Raf-RBD dramatically decreased Elk-1-dependent transcription by >80% whereas PI3KC2β-RBD expressing cells were not inhibited ( xref ) further supporting the model that the PI3KC2β-RBD does not interact with Ras-GTP.") ;; 1087
    (p  "To determine whether the PI3KC2β-RBD is active in binding targets in vivo , we tested the ability of the PI3KC2β-RBD to block the inhibitory activity of Ras17N ( xref ).") ;; 1088
    (p  "The transforming activity of oncogenic Src (SrcY527F) was reversed in the presence of Ras17N consistent with the requirement for Ras in Src-mediated transformation xref , xref .") ;; 1089
    (p  "Expression of PI3KC2β-RBD dose-dependently blocked Ras17N inhibition of Src transformation consistent with the binding of nucleotide-free Ras by PI3KC2β-RBD ( xref ).") ;; 1090
    (p  "In contrast, expression of the Raf-RBD did not affect Ras17N inhibition of Src transformation.") ;; 1091
    (p  "However, like Ras17N, expression of only the Raf-RBD with oncogenic Src inhibited transformation consistent with the role of active Ras in Src transformation xref , xref and with the ability of this RBD to bind and inhibit activated Ras.") ;; 1092
    (p  "In contrast, expression of the PI3KC2β-RBD alone did not inhibit Src transformation consistent with its inability to bind RasGTP ( xref ).") ;; 1093
    (p  "Ras, like all GTPases, cycles between an inactive GDP-bound state and an active GTP-bound state.") ;; 1094
    (p  "The transition from the inactive to active state requires formation of nucleotide-free Ras through the action of exchange factors.") ;; 1095
    (p  "This state is considered to be a short-lived transition state intermediate in vivo  xref based on the relatively high GTP: GDP ratio in vivo  xref , the ability of GTP to dissociate the GEF-Ras complex in vitro  xref , and the assumption that there are no proteins in vivo that might stabilize nucleotide-free Ras and prevent GTP loading.") ;; 1096
    (p  "However, our results provide the first direct evidence for a protein that may stabilize nucleotide-free Ras in vivo .") ;; 1097
    (p  "We demonstrate that the RBD of PI3KC2β binds nucleotide-free Ras in vitro ( xref ).") ;; 1098
    (p  "In contrast to the GEF-Ras complex, which is disrupted by addition of guanine nucleotides, the PI3KC2β RBD-Ras complex is stable even in the presence of high concentrations of GTP or GDP.") ;; 1099
    (p  "These data suggest that PI3KC2β binding to nucleotide-free Ras in vivo may prevent loading of nucleotides onto Ras.") ;; 1100
    (p  "Although current methods do not allow for detection of nucleotide-free GTPases in vivo , our BiFC results provide additional support for our model.") ;; 1101
    (p  "PI3KC2β preferentially interacts with Ras17N, which has a 30-fold lower affinity for nucleotide compared to wild type Ras and therefore should exist for longer periods in the nucleotide-free state.") ;; 1102
    (p  "As a result, BiFC traps this form of Ras resulting in greater fluorescence complementation for Ras17N (and Ras17N/69N) compared to wild type or constitutively activated Ras (61L or 12V).") ;; 1103
    (p  "Our findings also reveal a biochemical role for nucleotide-free Ras in regulating cell signaling.") ;; 1104
    (p  "Addition of nucleotide-free Ras to PI3KC2β inhibited its in vitro lipid kinase activity compared to addition of RasGTPγS.") ;; 1105
    (p  "This result is consistent with our observations that ITSN1 activation of AKT is blocked by expression of Ras17N and Ras17N/69N, which is impaired in GEF binding ( xref ), and dependent on PI3K activity xref .") ;; 1106
    (p  "Thus, PI3KC2β represents the first identified biochemical target of nucleotide-free Ras.") ;; 1107
    (p  "Our results challenge the long held assumption that nucleotide-free Ras is a short-lived intermediate in vivo in the generation of RasGTP xref .") ;; 1108
    (p  "However, proof of the presence of nucleotide-free Ras bound to PI3KC2β, or potentially other targets, in vivo still awaits formal demonstration.") ;; 1109
    (p  "Based on these observations, we propose that once nucleotide-free Ras is generated through GEF-stimulated nucleotide release, PI3KC2β binding, perhaps in conjunction with additional factors, displaces the GEF and stabilizes nucleotide-free Ras ( xref ).") ;; 1110
    (p  "This interaction has two potential consequences: inhibition of GTP loading on Ras bound to PI3KC2β and inhibition of PI3KC2β activity.") ;; 1111
    (p  "Such a mechanism might allow for the transport of nucleotide-free Ras to distal cellular compartments where PI3KC2β dissociates from Ras upon some trigger, e.g., ITSN1 binding to PI3KC2β.") ;; 1112
    (p  "The dissociation of nucleotide-free Ras from PI3KC2β would then lead to immediate GTP loading, i.e., Ras activation, as well as derepression of PI3KC2β.") ;; 1113
    (p  "Indeed, the PI3KC2β-RBD-Ras complex is refractory to dissociation by high nucleotide concentrations ( xref ) suggesting that additional factors are necessary for this dissociation.") ;; 1114
    (p  "Since ITSN1 activates both Ras and PI3KC2β xref , xref , we propose that ITSN1 represents one such factor.") ;; 1115
    (p  "Furthermore, RasGTP could then couple to specific Ras effectors at these sites leading to compartmentalized activation of these targets.") ;; 1116
    (p  "While there are clear examples for compartmentalized activation of Ras at intracellular sites by specific GEFs xref , our model suggests a GEF-independent activation of Ras at such intracellular sites.") ;; 1117
    (p  "Such a mechanism would decouple GEF localization from GTPase activation while allowing for integration of multiple signaling pathways.") ;; 1118
    (p  "Our results also suggest an added level of complexity to Ras signaling and transformation.") ;; 1119
    (p  "Most efforts at understanding Ras-mediated transformation have centered on identifying those targets that bind RasGTP.") ;; 1120
    (p  "However, our data raise the possibility that there is a class of proteins, such as PI3KC2β, that bind nucleotide-free Ras and are negatively regulated by this interaction.") ;; 1121
    (p  "Indeed, wild type Ras antagonized Ras-mediated transformation, consistent with this possibility xref , xref , xref , xref .") ;; 1122
    (p  "Oncogenic activation of Ras would lead to loss of this negative regulation resulting in activation of these targets.") ;; 1123
    (p  "Such targets may contribute to Ras-induced transformation without binding activated Ras.") ;; 1124
    (p  "Indeed, we have recently implicated PI3KC2β in neuroblastoma tumorigenesis xref .") ;; 1125
    (p  "It has been long accepted that Class I PI3Ks are effectors of Ras-GTP.") ;; 1126
    (p  "However, our data demonstrates for the first time a role for Ras in Class II PI3K regulation.") ;; 1127
    (p  "Point mutations in the effector region of Ras that disrupt Class I PI3K binding also disrupt Class II PI3K binding.") ;; 1128
    (p  "In addition, concomitant point mutations in the RBDs of Class I and Class II PI3Ks disrupt Ras association ( xref ).") ;; 1129
    (p  "Taken together these data suggest that Class I and Class II PI3Ks associate with the same region of Ras, but that this association is mediated by distinct structural differences in the PI3Ks as well as Ras-GTP vs nucleotide-free Ras.") ;; 1130
    (p  "In addition to PI3Ks, many other proteins have been identified that contain RBDs or Ras-Association (RA) domains xref .") ;; 1131
    (p  "Although, these domains have little sequence homology, they adopt a similar ubiquitin-fold structure xref .") ;; 1132
    (p  "Interestingly, a group of these domains including Myr5, Tiam-1, Rain, and PLCε do not bind nucleotide-loaded Ras raising the question of whether additional RBDs may share a similar activity in binding nucleotide-free Ras xref , xref , xref .") ;; 1133
    (p  "In addition, Class II PI3K alpha (PI3KC2α) also contains an RBD that is 53% similar to PI3KC2β-RBD warranting further investigation into the Ras-binding properties of this PI3K isoform.") ;; 1134
    (p  "While RasGDP and RasGTP are thought of as the predominant forms of Ras involved in cell signaling, our findings raise the possibility that nucleotide-free Ras may also function in regulating cellular signaling in vivo .") ;; 1135
    (p  "Our results demonstrate that in vitro , nucleotide-free Ras binds PI3KC2β and that this complex is refractory to dissociation by guanine nucleotides.") ;; 1136
    (p  "Furthermore, nucleotide-free Ras inhibits the lipid kinase activity of PI3KC2β suggesting that nucleotide-free Ras plays a negative regulatory role in signaling.") ;; 1137
    (p  "Our findings suggest a novel model for compartmentalized signaling in which PI3KC2β results in the redistribution of nucleotide-free Ras to intracellular vesicles leading to localized Ras activation and engagement of specific Ras effectors resulting compartmentalized activation of these targets.") ;; 1138
    (p  "While our studies have been limited to H-Ras, both N- and K-Ras isoforms exhibit compartmentalized signaling activity as well xref , xref , xref suggesting that the nucleotide-free forms of these Ras isoforms may also play an active role in regulating signaling.") ;; 1139
    (p  "Our results raise the further possibility that nf-forms of other Ras-related GTPases may play an unappreciated role in cell signaling.") ;; 1140
    (p  "Due to the broad role of Ras in cell growth, development, and oncogenesis, our findings suggest that the role of nucleotide-free Ras in cell signaling warrants further examination.") ;; 1141
    (p  "In response to stress conditions, many mammalian mRNAs accumulate in stress granules (SGs) together with numerous RNA-binding proteins that control mRNA turnover and translation.") ;; 1142
    (p  "However, the signaling cascades that modulate the presence of ribonucleoprotein (RNP) complexes in SGs are poorly understood.") ;; 1143
    (p  "Here, we investigated the localization of human antigen R (HuR), an mRNA-stabilizing RNA-binding protein, in SGs following exposure to the stress agent arsenite.") ;; 1144
    (p  "Unexpectedly, the mobilization of HuR to SGs was prevented through the activation of Janus kinase 3 (JAK3) by the vitamin K3 analog menadione.") ;; 1145
    (p  "JAK3 phosphorylated HuR at tyrosine 200, in turn inhibiting HuR localization in SGs, reducing HuR interaction with targets SIRT1 and VHL mRNAs, and accelerating target mRNA decay.") ;; 1146
    (p  "Our findings indicate that HuR is tyrosine-phosphorylated by JAK3, and link this modification to HuR subcytoplasmic localization and to the fate of HuR target mRNAs.") ;; 1147
    (p  "Following transcription, RNA-binding proteins (RBPs) regulate post-transcriptional steps of gene expression, including pre-mRNA splicing, and mRNA transport, storage, stability and translation ( xref , xref ).") ;; 1148
    (p  "Although some RBPs have general housekeeping functions on mRNAs [e.g. bind the mRNA 5′ cap or poly(A) tail], other specialized RBPs form ribonucleoprotein (RNP) interactions with discrete subsets of mRNAs which share specific sequence elements, and affect their post-transcriptional fate ( xref ).") ;; 1149
    (p  "The latter group includes RBPs such as human antigen R (HuR), AU-binding factor 1 (AUF1), nucleolin and T-cell intracellular antigen (TIA)-1 and TIA-1-related (TIAR) proteins, which associate with subsets of target mRNAs and modulate their stability and/or translation rates ( xref , xref ).") ;; 1150
    (p  "Specialized RBPs are directly involved in changing the patterns of expressed proteins in response to stress conditions, and such stress-response functions often require RBP post-translational modification (as reviewed in xref ).") ;; 1151
    (p  "HuR has three RNA-recognition motifs (RRMs) through which it binds to a large collection of protein-coding and noncoding RNAs.") ;; 1152
    (p  "Although it can interact with pre-mRNA intron sequences and has been linked to regulated splicing ( xref ), HuR is best known for stabilizing and modulating the translation of mature mRNAs with which it associates via the 3′-untranslated region (UTR), typically at U-rich sites ( xref , xref ).") ;; 1153
    (p  "Through binding to subsets of mRNAs encoding proliferative, stress-response and cell survival proteins, HuR has been implicated in cellular processes, such as cell division, survival, senescence and the stress-response, and with pathologies such as cancer ( xref , xref ).") ;; 1154
    (p  "HuR function is regulated at the levels of protein abundance, localization and post-translational modification. HuR levels are reduced by specific microRNAs (e.g. miR-519 and miR-125), by ubiquitination in response to mild heat shock and by caspase-mediated cleavage in response to severe stress (reviewed in xref ). HuR is predominantly localized in the nucleus, but its effects on mRNA stability and translation are linked to its transport to the cytoplasm, which requires the HuR nucleocytoplasmic shuttling domain (HNS) and transport proteins such as transportins 1 and 2, the chromosome region maintenance 1 and importin-1α ( xref ).") ;; 1155
    (p  "The transport of HuR across the nuclear envelope is influenced by kinases including the cell cycle-dependent kinase (Cdk)1, AMP-activated protein kinase (AMPK), protein kinase (PK)C and the mitogen-activated protein kinase p38 ( xref ).") ;; 1156
    (p  "The interaction of HuR with target transcripts is modulated through phosphorylation of serine and threonine residues by several kinases; phosphorylation by checkpoint kinase (Chk)2 generally reduced HuR interaction with mRNAs ( xref , xref ), whereas phosphorylation by activated p38 and PKC generally promoted HuR binding to mRNAs ( xref , xref , xref ).") ;; 1157
    (p  "Besides altering the ratio of cytoplasmic-to-nuclear HuR and the interaction of HuR with target mRNAs, a number of stress agents (e.g. heat shock, irradiation with ultraviolet light and treatment with hydrogen peroxide) can also enhance the aggregation of HuR in cytoplasmic RNP foci named stress granules (SGs) ( xref , xref ). SGs assemble in response to cell-damaging conditions to halt the translation of housekeeping mRNAs and to selectively allow stress-response and repair proteins to be translated ( xref ).") ;; 1158
    (p  "Besides HuR, SGs also contain numerous other RBPs, such as poly(A)-binding protein (PABP), staufen, tristetraprolin, TIA-1, TIAR, RasGAP-associated endoribonuclease (G3BP), fragile X mental retardation syndrome, survival of motor neuron and cytoplasmic polyadenylation element binding proteins ( xref ). SGs are dynamic RNP structures that assemble rapidly when the cell encounters stress and disassemble in a timely manner after the stress discontinues. SGs are believed to be the sites of mRNA ‘triage’ where decisions are made on the stability of individual mRNAs while the global cellular translation is halted.") ;; 1159
    (p  "Despite the key role of HuR in the cellular stress-response, the mechanisms that control HuR localization in SGs and their possible impact on expression of HuR target stress-response mRNAs are unknown.") ;; 1160
    (p  "Here, we report that in human cervical carcinoma cells, the arsenite-triggered accumulation of HuR in SGs is accompanied by increased HuR binding to target transcripts SIRT1 and VHL mRNAs and by stabilization of these mRNAs.") ;; 1161
    (p  "Unexpectedly, the accumulation of HuR in SGs was blocked by treatment with menadione, a drug that activated the tyrosine kinase Janus kinase 3 (JAK3).") ;; 1162
    (p  "JAK3 phosphorylated three HuR tyrosine residues in vitro ; mutagenesis to prevent HuR phosphorylation specifically at Y200 restored HuR accumulation in SGs, preserved HuR binding to SIRT1 and VHL mRNAs and rescued their stability.") ;; 1163
    (p  "These studies link HuR presence in SGs with the fate of target mRNAs, and highlight a novel function of tyrosine kinase JAK3 as regulator of HuR function.") ;; 1164
    (p  "HuR is normally a nuclear protein, as seen in HeLa cells ( xref A, control), but it can translocate to the cytoplasm on stress.") ;; 1165
    (p  "In response to specific stress conditions, such as arsenite treatment, HuR was further mobilized to cytoplasmic SGs ( xref A).") ;; 1166
    (p  "While performing experiments to test the presence of HuR in SGs after stress, we made the serendipitous discovery that 15 μM menadione (a chemotherapeutic agent that causes oxidative damage) enhanced HuR presence in the cytoplasm, but did not trigger HuR-positive SGs.") ;; 1167
    (p  "Unexpectedly, menadione also prevented SG formation following exposure to 250 μM arsenite ( xref A,).") ;; 1168
    (p  "The combined treatment with arsenite and menadione caused oxidative damage, as assessed by monitoring fluorescence after incubation with dihydrocalcein, an indicator of reactive oxygen species ().") ;; 1169
    (p  "Although treatment with arsenite and menadione did not elicit immediate signs of apoptotic cell death by 4 h after treatment (and), some cell loss and evidence of apoptosis were detectable by 24 h following treatment (and).") ;; 1170
    (p  "The formation of SGs appeared to be generally suppressed under these conditions, as other markers used to visualize SGs [e.g. G3BP and TIA-1 ( xref B)] similarly failed to aggregate in SGs.") ;; 1171
    (p  "However, we could not exclude the possibility that SGs might have been visualized by testing for other SG markers, that SG formation was delayed or that SGs were too small for detection.") ;; 1172
    (p  "Arsenite treatment blocked translation globally ( xref ); however, despite impairing SG formation, menadione did not rescue the translationally inhibited state, as evidenced by the fact that polysomes remained globally suppressed, eIF2α was still phosphorylated and HuR remained bound to PABP ().") ;; 1173
    (p  "To test whether menadione prevented the recruitment of HuR to SGs that formed in an eIF2α-dependent or -independent manner, we studied the effect of 50 nM pateamine A, a drug that induces SG formation independently of eIF2α phosphorylation ( xref ).") ;; 1174
    (p  "As shown ( xref C), pateamine A-triggered SGs were not blocked by menadione treatment, suggesting that menadione blocked the recruitment of HuR to SGs triggered by eIF2α phosphorylation.") ;; 1175
    (p  "To investigate the mechanisms underlying the dynamics of HuR assembly in SGs, we screened a library of kinase inhibitors (described in xref ) for restoration of HuR-positive SGs.") ;; 1176
    (p  "Among the compounds in the library, only the JAK3 inhibitor ZM 449829 was capable of reversing the effect of menadione and restoring SGs in cells treated concomitantly with arsenite and menadione ( xref A andB).") ;; 1177
    (p  "Because inhibitors are not totally specific, we also tested whether reducing JAK3 levels [achieved by using small interfering (si)RNAs] influenced SG formation after arsenite and menadione treatments.") ;; 1178
    (p  "As shown in xref C, 48 h after transfecting JAK3 siRNA in HeLa cells, JAK3 abundance was substantially lower.") ;; 1179
    (p  "Importantly, in these cells, menadione treatment no longer blocked arsenite-triggered HuR-containing SGs, whereas in control (Ctrl) siRNA-transfected cells, menadione continued to block the formation of arsenite-triggered SGs ( xref D).") ;; 1180
    (p  "In contrast, another stress-activated kinase that can phosphorylate HuR, Chk2, was not found to be implicated in the effects of arsenite and/or menadione ().") ;; 1181
    (p  "The finding that JAK3 silencing mirrored the effect of inhibiting JAK3 lends further support to the notion that activation of JAK3 by menadione prevents the assembly of HuR-containing SGs.") ;; 1182
    (p  "The rescue of HuR-positive SGs in HeLa cells after inhibiting JAK3, a tyrosine kinase, raised the intriguing possibility that tyrosine phosphorylation might affect HuR localization in response to arsenite treatment.") ;; 1183
    (p  "Even though HuR has not been previously reported to be a tyrosine-phosphorylated protein, we examined whether phosphotyrosine (pY)-HuR was detected in HeLa cells treated with arsenite, with menadione or with both compounds.") ;; 1184
    (p  "As shown in xref A, IP of HuR from HeLa cells followed by WB analysis of phosphotyrosine residues using an anti-pY antibody revealed positive pY-HuR signals in menadione-treated cells.") ;; 1185
    (p  "To gain further evidence that JAK3 might directly phosphorylate HuR, lysates from HeLa cells that had been treated with arsenite and/or menadione were used to immunoprecipitate JAK3 and recombinant purified MBP-HuR was used as substrate in an in vitro kinase assay.") ;; 1186
    (p  "This analysis revealed that MBP-HuR was preferentially phosphorylated by JAK3 prepared by IP from menadione-treated cells and further showed that menadione treatment triggered the phosphorylation of JAK3 at residue Y980 ( xref B).") ;; 1187
    (p  "In addition, IP followed by WB analysis revealed that pY-HuR levels were strongly suppressed in HeLa cells treated with the JAK3 inhibitor ZM 449829 and in HeLa cells in which JAK3 levels were lowered by silencing ( xref C).") ;; 1188
    (p  "Together, these results indicate that the menadione-activated JAK3 phosphorylates HuR at one or several tyrosines and that this modification is linked to the loss of HuR-positive SGs.") ;; 1189
    (p  "To identify the tyrosine residues of HuR that were phosphorylated by JAK3, we performed an in vitro kinase assay using recombinant purified JAK3 kinase (Millipore) and MBP-HuR purified from E. coli ( xref D).") ;; 1190
    (p  "Mass spectrometry analysis (Materials and Methods) of the phosphorylated HuR revealed three tyrosines phosphorylated by JAK3: two residing in the RNA-recognition motif 1 (RRM1), Y63 and Y68, and one residing within the hinge region (Y200) surrounding the HNS ( xref E).") ;; 1191
    (p  "To investigate the possible impact of these modifications on HuR function, we changed the tyrosines into phenylalanines by site-directed mutagenesis (Y200F, Y68F and Y63F) and expressed the respective point mutants as Flag-HuR proteins from plasmids pFlag-HuR[wild-type (WT)], pFlag-HuR(Y63F), pFlag-HuR(Y68F) and pFlag-HuR(Y200F).") ;; 1192
    (p  "Transfection of each plasmid followed by menadione treatment revealed that Flag-HuR(WT) and Flag-HuR(Y63F) were still tyrosine phosphorylated, but Flag-HuR(Y68F) and Flag-HuR(Y200F) were not ( xref A), suggesting that menadione elicited phosphorylation of HuR at Y68 and Y200 in vivo .") ;; 1193
    (p  "It was interesting to note that Y68F and Y200F each completely inhibited phosphorylation, suggesting that perhaps phosphorylation of one of these two tyrosine residues facilitates or is required for phosphorylation of the other tyrosine residue.") ;; 1194
    (p  "The basal and menadione-triggered tyrosine phosphorylation of Flag-HuR(WT), Flag-HuR(Y63F), Flag-HuR(Y68F) and Flag-HuR(Y200F) are shown ( xref B).") ;; 1195
    (p  "Immunofluorescent detection of the Flag tag in cells transfected with these expression plasmids showed that all three Flag-tagged HuR proteins localized to SGs on arsenite treatment ( xref C).") ;; 1196
    (p  "Interestingly, however, when cells were treated with both arsenite + menadione, Flag-HuR(WT) and Flag-HuR(Y68F) did not localize in visible SGs, whereas Flag-HuR(Y200F) mutant did ( xref C).") ;; 1197
    (p  "The SG marker TIA-1 colocalized with HuR(Y200F) in SGs of cells treated with arsenite + menadione, supporting the notion that the HuR foci seen under these conditions were bona fide SGs ().") ;; 1198
    (p  "Technical limitations associated with the ability to detect endogenous and ectopic proteins in this experiment precluded a more definitive analysis of SGs (kinetics of assembly/disassembly, size and number) forming in the presence of WT and Y200F mutant HuR.") ;; 1199
    (p  "Thus, the extent to which menadione inhibited the recruitment of HuR to SGs or more broadly impaired SG formation could not be determined.") ;; 1200
    (p  "However, our results did show that menadione induces the phosphorylation of HuR by JAK3 on tyrosine residues and that phosphorylation at HuR Y200 specifically impacts on HuR subcellular localization.") ;; 1201
    (p  "Because phosphorylation of HuR by other kinases affects HuR binding to target mRNAs, as explained above, we investigated whether phosphorylation by JAK3 influenced HuR binding to target mRNAs.") ;; 1202
    (p  "For this, we focused on two well-established HuR target transcripts with abundant expression in HeLa cells, SIRT1 and VHL mRNAs ( xref , xref ), encoding the protein deacetylase sirtuin 1 (Sirt1) and the tumor suppressor protein von Hippel-Lindau, respectively.") ;; 1203
    (p  "We studied the interaction of HuR with these mRNAs by RIP (ribonucleoprotein immunoprecipitation) analysis of endogenous HuR using an anti-HuR antibody; the efficiency of IP of the endogenous HuR protein was assessed ().") ;; 1204
    (p  "After isolation of the RNA present in HuR RNP complexes, the levels of specific mRNAs were measured by RT followed by real-time quantitative (q)PCR analysis.") ;; 1205
    (p  "As shown ( xref A and B), endogenous HuR displayed robust binding to these mRNAs in the absence of additional treatments (‘Control’ group), but the concentration of these complexes increased strongly after arsenite treatment [and increased even further at higher doses,)].") ;; 1206
    (p  "Following the addition of menadione, with or without arsenite, this heightened interaction was lost and HuR binding to SIRT1 and VHL mRNAs returned to the levels seen in the ‘Control’ group.") ;; 1207
    (p  "To examine whether HuR phosphorylation at Y200 was involved in these interactions, we transfected plasmids pFlag-HuR(WT), pFlag-HuR(Y68F) and pFlag-HuR(Y200F) and tested the binding of the tagged HuR with SIRT1 mRNA ( left ) and VHL mRNA ( right ) again by RIP analysis, but by using anti-Flag antibody.") ;; 1208
    (p  "The efficiency of IP of the Flag-tagged proteins was also monitored ().") ;; 1209
    (p  "Interestingly, although proteins Flag-HuR(WT) and Flag-HuR(Y68F) showed the same pattern of binding as the endogenous HuR, Flag-HuR(Y200F) binding to the mRNAs was no longer repressed after menadione treatment ( xref C andD).") ;; 1210
    (p  "These results suggest that HuR phosphorylation at Y200 not only prevented HuR localization in SGs, but it also reduced binding of HuR with target SIRT1 and VHL mRNAs.") ;; 1211
    (p  "Because HuR is known to stabilize SIRT1 and VHL mRNAs ( xref , xref ), we examined the effect of HuR tyrosine phosphorylation on the stability of these target mRNAs.") ;; 1212
    (p  "We measured their half-lives by quantifying the rate of decay after transcription was inhibited through the addition of actinomycin D (‘Materials and Methods’ section).") ;; 1213
    (p  "Arsenite treatment, which enhanced HuR binding to these mRNAs, also increased their half-lives (by about twofold; xref A).") ;; 1214
    (p  "Menadione alone did not change the stability of target mRNAs, but cells in the menadione + arsenite treatment group showed lower stability for both mRNAs relative to the arsenite alone group ( xref A).") ;; 1215
    (p  "By contrast, the stability of a control stable transcript, GAPDH mRNA, encoding a housekeeping protein, was not influenced by the above-mentioned treatments, demonstrating that not all mRNAs decreased rapidly in the presence of actinomycin D, and only select labile mRNAs displayed reduced stability ( xref A, bottom).") ;; 1216
    (p  "The levels of a control short-lived mRNA ( MYC mRNA, encoding the proto-oncogene c-Myc) showed reduced half-life in the absence of arsenite ( xref A, bottom).") ;; 1217
    (p  "These results support the view that HuR binding increases the half-lives of SIRT1 and VHL mRNAs.") ;; 1218
    (p  "Given the documented levels of HuR association with SIRT1 and VHL mRNAs ( xref ) and the SIRT1 and VHL mRNA half-lives ( xref A), we investigated the influence of non-phosphorylatable HuR Y200F mutant on the abundance of these mRNAs.") ;; 1219
    (p  "When Flag-HuR(WT) was expressed in HeLa cells, the levels of SIRT1 and VHL mRNAs rose after treatment with arsenite, but this increase was lost if cells were co-treated with menadione ( xref B).") ;; 1220
    (p  "In contrast, when Flag-HuR(Y200F) was expressed, the arsenite-elicited increase in SIRT1 mRNA and VHL mRNA levels was refractory to menadione treatment, and the mRNAs remained significantly elevated ( xref B).") ;; 1221
    (p  "In sum, these results indicate that HuR tyrosine phosphorylation at Y200, which excludes HuR from SGs, also promotes the dissociation of HuR from target transcripts ( SIRT1 mRNA and VHL mRNA), or perhaps mobilizes HuR- SIRT1 mRNA and HuR- VHL mRNA complexes away from SGs, accelerating their degradation ( xref ).") ;; 1222
    (p  "We have reported that tyrosine phosphorylation of HuR reduces its interaction with target mRNAs, leading to lower mRNA stability.") ;; 1223
    (p  "The phosphorylation at a tyrosine was unexpected, as earlier work had only identified HuR as the substrate of serine and threonine phosphorylation by PKC, Chk2, p38 and Cdk1 [reviewed in ( xref )].") ;; 1224
    (p  "In contrast to the earlier phosphorylation events, HuR tyrosine phosphorylation is found to influence mRNA fate linked to the absence of HuR in SGs.") ;; 1225
    (p  "JAK3, identified here as a kinase responsible for the tyrosine phosphorylation of HuR, is best known in immune cells, where it is activated following exposure to cytokines ( xref ).") ;; 1226
    (p  "However, JAK3 is also expressed in HeLa cells and its inhibition by ZM 449829 lowers pY-HuR levels.") ;; 1227
    (p  "As identified by mass spec analysis, JAK3 phosphorylates three HuR residues (Y63, Y68, Y200), but it remains possible that other tyrosine kinases besides JAK3 can also phosphorylate HuR at tyrosines, although no such kinases have been identified to date.") ;; 1228
    (p  "Because the ubiquitous HuR is abundant in immune cells, it will be interesting to test whether tyrosine phosphorylation of HuR at Y200 influences the response of immune cells to cytokines.") ;; 1229
    (p  "Treatment with arsenite or menadione for 45 min caused oxidative stress, and this effect was enhanced by joint treatment with both chemicals ().") ;; 1230
    (p  "Nonetheless, by 4 h after the drugs were removed from the culture medium, assessments of cell numbers and annexin V-positive cells revealed little or no toxicity (,and).") ;; 1231
    (p  "By 24 h after removing the drugs, cells treated with arsenite did not exhibit much toxicity, as measured by modest cell loss and the absence of annexin V-positive cells (and); however, simultaneous addition of menadione to arsenite-treated cells did prove toxic, as evidenced by the enhanced cell loss and the high percentage of annexin V-positive cells (and).") ;; 1232
    (p  "These results indicate that SGs are a component of the stress-response program triggered by arsenite, which ultimately the cells survived.") ;; 1233
    (p  "The concomitant treatment with menadione modified this stress-response program (in part by antagonizing the formation of HuR-positive SGs) and potentiated the toxicity of arsenite.") ;; 1234
    (p  "It is plausible that the chemotherapeutic actions of menadione ( xref ) are linked to the cytotoxicity caused by menadione, as it interferes with the cellular response to stress conditions.") ;; 1235
    (p  "It was somewhat surprising to discover that HuR binding to SIRT1 and VHL mRNAs was influenced by phosphorylation at Y200 ( xref ), as this residue lies within the shuttling domain of HuR (the HNS) and not within one of the three RRMs.") ;; 1236
    (p  "For example, previous reports had shown that phosphorylation at RRMs (S88 in RRM1, T118 in RRM2, S100 between RRM1 and RRM2 and S318 in RRM3) affected HuR binding to numerous mRNAs ( xref ), while phosphorylation in the HNS region (S202, S221, S242), generally altered HuR the relative abundance of HuR in the nucleus compared with the cytoplasm ( xref ).") ;; 1237
    (p  "The finding that phosphorylation near the shuttling domain affects HuR binding suggests that pY200 could change the conformation of the RRMs in ways that lower their binding affinity for RNA.") ;; 1238
    (p  "Alternatively, Y200 phosphorylation could mobilize HuR to areas of the cell that have reduced concentration of HuR target transcripts, and thus binding is reduced because mRNAs are unavailable.") ;; 1239
    (p  "Distinguishing between these possibilities awaits further study.") ;; 1240
    (p  "The finding that the non-phosphorylatable HuR(Y200F) is found in SGs after arsenite + menadione, whereas the phosphorylatable counterpart, HuR(WT), is not, suggests that phosphorylation at Y200 actively excludes HuR from SGs.") ;; 1241
    (p  "Although the molecular mediators of HuR exclusion from SGs are not identified in our experiments, we have evidence that menadione may block the assembly of other SG components, including TIA-1, G3BP and eIF3b ( xref B;; data not shown).") ;; 1242
    (p  "In fact, it is possible that JAK3 may block the assembly of multiple SG components, perhaps by phosphorylating them in a coordinated manner.") ;; 1243
    (p  "In this regard, JAK3 was capable of phosphorylating TIA-1 in vitro ().") ;; 1244
    (p  "Therefore, it remains formally possible that in cells that form SGs, HuR is mobilized to SGs because the mRNAs that HuR associates with are actively recruited to, or ‘pulled to’, SGs.") ;; 1245
    (p  "It is unknown at present whether JAK3 impairs the binding of HuR to mRNAs and for this reason, HuR is not mobilized to SGs, or instead JAK3 inhibits the mobilization of HuR to SGs and this in turn affects HuR binding to mRNAs locally enriched in SGs.") ;; 1246
    (p  "Both possibilities agree with the notion that SGs are sites of mRNA reassortment and ‘triage’ ( xref ), where mRNA-binding factors form different RNPs to accomplish molecular decisions on mRNA turnover and translational status.") ;; 1247
    (p  "The discovery that treatment with arsenite, a strong oxidant, increased HuR binding to SIRT1 and VHL mRNAs was also against our expectation ( xref A and B;), as other stress agents (e.g. ionizing radiation and the oxidant hydrogen peroxide) instead triggered the dissociation of HuR from bound mRNAs ( xref ).") ;; 1248
    (p  "As dissociation of mRNAs was linked to the phosphorylation of HuR by Chk2, it is possible that arsenite inhibits Chk2 activity, while menadione reverses this inhibition in HeLa cells.") ;; 1249
    (p  "Of course, arsenite and/or menadione could also affect the phosphorylation of HuR by other kinases (p38, PKC), which influence HuR–mRNA interactions.") ;; 1250
    (p  "Studies are underway to investigate these possibilities, particularly given earlier reports documenting an increase in HuR binding to some mRNAs in response to certain stresses [e.g.") ;; 1251
    (p  "HIF1A mRNA after hypoxia, MKP1 mRNA after hydrogen peroxide treatment ( xref , xref )].") ;; 1252
    (p  "In sum, our findings add to a growing body of evidence that underscores the complex regulation of HuR by phosphorylation, and the impact of this modification on HuR localization, HuR binding to mRNAs and the fate of HuR target transcripts.") ;; 1253
    (p  "are available at NAR Online.") ;; 1254
    (p  "Funding for open access charge: National Institute on Aging-Intramural Research Program , National Institutes of Health .") ;; 1255
    (p  " Conflict of interest statement .") ;; 1256
    (p  "None declared.") ;; 1257
    ))
