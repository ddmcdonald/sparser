(in-package :sparser)

(defparameter *non-comlex-new-words*
    '("aa" "aac" "aauaggagaucaagaguuu" "aax" "abcam" "aberrantly" "abi" "abimed"
 "abl" "ablated" "ablation" "abnova" "abscission" "absorbance" "acceptor"
 "accquired" "accustain" "acetone" "acetonitrile" "acetyl" "acetylcholine"
 "acetyltransferase" "aceview" "achroplan" "acidophilic" "acini" "ack" "acl"
 "acritical" "acrylamide" "actinomycin" "actomyosin" "acucugcaagccuuaca"
 "adaptin" "addgene" "additively" "adeno" "adenocarcinoma" "adenomatous"
 "adenosylmethionine" "adenoviral" "adenovirus" "adenylyl" "adgfp" "adh"
 "adherens" "adipocyte" "adipogenesis" "adjuvant" "administered" "adneg"
 "adrenocortical" "adrenocorticotrophic" "adriamycin" "adsorbed" "adsorption"
 "adtre" "afm" "african" "ag" "aga" "agaaggagcugcuggaaaa" "agacggctccc"
 "agammaglobulinemia" "agar" "agarose" "agcgcaggc" "agenesis"
 "aggauaggaucuggaucau" "agilent" "aguirre" "agy" "ahr" "ahrc" "aic" "aicar"
 "aj" "ajs" "al" "alamar" "aldehyde" "aldoketo" "aldrich" "alexa" "alexafluor"
 "alexis" "algorithm" "ali" "aliquot" "aliquoted" "aliquots" "alk" "allendale"
 "allowed" "allstars" "altered" "amanchy" "amara" "amaxa" "ambion" "amercham"
 "american" "amersham" "amershan" "ames" "amgen" "aminoacid"
 "aminoethylcarbazole" "amlvdsfspeasgaveenlhddthk" "ammonium" "ampho"
 "amphotericin" "ampicillin" "amplitaq" "amsterdam" "amv" "amylose" "anaheim"
 "anaphase" "anaplastic" "anchored" "anchoring" "anderson" "andover" "angeles"
 "angiogenesis" "angiogenic" "anion" "anionic" "ann" "anova" "antagonise"
 "anticentrosome" "antifade" "antigen" "antigens" "antigoat" "antiinflammatory"
 "antimouse" "antiphospho" "antiphosphotyrosine" "antiretroviral" "antitumor"
 "antivitronectin" "aortic" "aotf" "ap" "apaf" "apical" "aplasia" "apoptag"
 "apoptogenic" "apoptosome" "aprotinin" "aq" "aqua" "ar" "arizona" "arnt"
 "arrieumerlou" "arsenate" "arsenicosis" "arsenite" "ascites" "asgaveen"
 "ashland" "asian" "aspartic" "asymptomatic" "atc" "atcc"
 "atggccgtcatggcgccccg" "atggtccagctagtttatagg" "atlanta" "augacgccac" "austin"
 "autoactivating" "autoactivation" "autodephosphorylation" "autoimmune"
 "autoinhibition" "autoradiography" "autosampler" "avi" "axillary" "axiophot"
 "axiovert" "axiovision" "axon" "axonal" "axxora" "az" "azide" "b" "babco"
 "bacterially" "baculovirus" "bae" "baec" "baltimore" "bamhi" "bandpass"
 "bandshift" "bandwidths" "bandwith" "bangladesh" "bannockburn" "barbara"
 "barnes" "bas" "basally" "basel" "basf" "basolateral" "basophilic"
 "bcrmediated" "bd" "beckman" "becton" "bedford" "behavioral" "behringwerke"
 "belkin" "bengal" "benzamidine" "bern" "bernard" "bert" "bertani" "berthold"
 "bestatin" "betaine" "bethesda" "beverly" "bhk" "bhlh" "bhmt" "biacore"
 "biallelic" "bicinchoninic" "bicistronic" "bifunctional" "billerica" "binning"
 "bio" "bioanalyzer" "bioconductor" "biogenex" "bioinformatic" "bioinformatics"
 "biolabs" "biologic" "biologicals" "biomarker" "biomarkers" "biomax"
 "biomethylation" "biomol" "biophysics" "biopsies" "biorad" "bioreagents"
 "bioresearch" "bioresources" "biosoftware" "biosource" "biosynthetic"
 "biosystems" "biotech" "biotin" "biotinated" "biotinylated" "biovision"
 "biowhittaker" "bioworks" "biphasic" "bipolar" "birmingham" "bis"
 "bisphosphate" "bistris" "bjab" "blasticidin" "bluescript" "bluescriptii"
 "boehringer" "bonferroni" "bos" "bosc" "bose" "boston" "boyden" "bp" "bpe"
 "bradford" "braunschweig" "brdu" "brij" "brl" "broader" "bromophenol"
 "brompton" "bronchoalveolar" "bsa" "bstxi" "btk" "buchler" "buffered"
 "burkitt" "burlington" "burridge" "bv" "c" "ca" "caack" "caagagagcugaagacuau"
 "caagtggatggcaattgagtcc" "caagtggtgggtctc" "caax" "cac"
 "cacguguggccuguucuucua" "cack" "cacl" "calbichem" "calbiochem" "calcineurin"
 "calibur" "california" "calu" "camarillo" "cambridge" "camki" "camkkα"
 "camkkβ" "camon" "canada" "cand" "cantley" "carbamidomethyl" "carboxy"
 "carboxyethyl" "carboxyl" "carboxylase" "carboxymethylation"
 "carboxymethylcellulose" "carcinogenesis" "carcinogenic" "carcinogenicity"
 "cardine" "cardiomyocyte" "carl" "carlsbad" "carolina" "carolyn" "carpinteria"
 "cas" "casanova" "casΔsd" "casΔsrc" "catagtcgacctagaatctataaaatgcatgtg"
 "catalysed" "catalytically" "catalzyed" "catc" "caucasian"
 "cauugccaaggucagcgau" "caveolae" "cayla" "cbp" "cbs" "cbywt" "ccc" "ccd"
 "ccgaagcggaaactttac" "ccl" "cd" "cdc" "cdk" "cdki" "cdks" "cdnas" "cecile"
 "celsius" "cem" "centered" "centipoise" "centrifugated" "centrifugation"
 "centrifuged" "centriole" "centrosomal" "centrosome" "cerevisae" "cfm" "cfp"
 "channing" "chaperone" "characterised" "chcl" "chd" "chemicon" "chemidoc"
 "chemiluminescence" "chemiluminescent" "chemiluminesence" "chemokinesis"
 "chemokinetic" "chemotactic" "chemotherapeutic" "cheshire" "chi" "chinese"
 "chomczynski" "chorioallantoic" "choroidal" "chosen" "chou" "chroma"
 "chromatids" "chromatograph" "chromatography" "chromogenic" "chung" "chx" "ci"
 "ciap" "circuitry" "circumferential" "cisplatinum" "ck" "cl" "clai" "clarita"
 "clb" "clk" "cloned" "clontech" "clustalw" "clustered" "clustering" "cma"
 "cmv" "cn" "cnbr" "coactivator" "cocarcinogenic" "cocultured" "codec" "codon"
 "cofactor" "cofractionates" "coimmuoprecipitated" "coli" "colin"
 "colocalization" "colocalize" "colorado" "colorectal" "colorimetric"
 "colormetrically" "colunms" "combiner" "comigrated" "commissure" "comodulate"
 "comodulates" "comodulation" "compaction" "compartmentalization" "compix"
 "complexed" "comutagenic" "confirmatory" "confluency" "confocal"
 "conformational" "considering" "contralateral" "cooh" "coolsnap" "coomassie"
 "coprecipitated" "coprecipitation" "copurification" "copurifying" "corbett"
 "coreceptor" "corepressor" "corp" "corticosteroids" "costa" "costar"
 "costimulator" "cotransfected" "cotransfection" "counterstained" "covance"
 "covariance" "covered" "coverslip" "coverslips" "cowden" "cpm" "cribiform"
 "crk" "crkii" "crl" "crna" "crosslinking" "cruz" "crystallographic" "cs" "csa"
 "ctcgcctatgtgagcggtggaggc" "ctctacctctgtgaagggcgcgaatg" "ctgf" "ctn"
 "cucuccugauguagcacuuaa" "cugacucagaacguggacc" "cultureware" "curated" "curie"
 "curvilinear" "cutaneous" "cuvette" "cy" "cyanine" "cyclase" "cycler"
 "cyclina" "cyp" "cystadenocarcinoma" "cystathionine" "cyt" "cytochalasin"
 "cytofluorometric" "cytohesin" "cytokeratin" "cytokinesis" "cytomegalovirus"
 "cytometer" "cytometric" "cytoprotective" "cytoscape" "cytoskeletal"
 "cytospun" "cytotoxicity" "d" "da" "dack" "dako" "dallas" "dana" "danvers"
 "dapi" "darmstadt" "dataset" "datasets" "daudi" "dbest" "dbl" "dc" "dcfhda"
 "dcis" "dda" "deacetylase" "deacetylated" "deacetylation" "deae" "deamidation"
 "deca" "decondensation" "deconvoluted" "deconvolution" "decrement"
 "deformation" "degranulation" "deisenhofen" "delimited" "delivered"
 "delocalization" "deltar" "denaturation" "dendrite" "dendritic" "denmark"
 "densitometer" "densitometric" "densitometry" "denver" "deoxycholate"
 "deoxycholic" "deoxyglucose" "deoxylcholate" "deoxynucleotidyl"
 "deoxyribonucleotidyl" "deoxythymidines" "deparaffinization" "dependently"
 "depolarization" "deposited" "deprotected" "dermal" "dermatosis" "desaturase"
 "desiderate" "desmosomes" "desorption" "destabilization" "destained"
 "desynchronization" "detectability" "detectably" "detoxication" "deutsche"
 "dewaxed" "dex" "dfhcc" "dh" "dharmacon" "diacetate" "dialysed" "dialyzed"
 "diaminobenzidine" "dianova" "diapedesis" "dichroic" "dickinson" "diego"
 "diethylstilbestrol" "differed" "diffusible" "diffusively" "difluoride"
 "digitial" "digitonin" "dimeric" "dimethylarsinic" "dimnf" "dionex" "diphenyl"
 "diphenylene" "diphospho" "diphosphorylated" "diploid" "directionally"
 "disaggregated" "disaggregation" "discovered" "dismutase" "disordered"
 "dispase" "distal" "disulfide" "dithiocarbamate" "div" "dlg" "dme" "dmem"
 "dmi" "dmil" "dmirbe" "dmso" "dn" "doc" "dodecyl" "dok" "dormancy" "dounce"
 "downloaded" "downmodulated" "doxycycline" "dpty" "drawn" "drhodamine"
 "driven" "drugable" "dsred" "dt" "dtdt" "dtt" "dually" "ductal" "dulbecco"
 "duluth" "dumaz" "duncan" "dundee" "duplexes" "dura" "dutp" "dy" "dyn"
 "dysfunction" "dysplasia" "dαm" "e" "ebioscience" "ebm" "ecacc" "ecadcd" "ecc"
 "ecfp" "ecl" "ecm" "ecoa" "ecori" "ecorv" "ecs" "ed" "edema" "edemagenic"
 "edp" "edta" "ee" "eed" "eev" "egdy" "eggenstein" "egm" "egta" "electrics"
 "electro" "electroblotted" "electrophoresis" "electrophoretic"
 "electrophoretically" "electroporated" "electroporation" "electrospray"
 "electrostatically" "electrotransferred" "elicited" "elisa" "elmer" "elmo"
 "eluate" "eluates" "elwd" "em" "embryogenesis" "embryoid" "emd" "emphasise"
 "encephalomyocarditis" "encountered" "endocytic" "endocytosed" "endocytosis"
 "endogeneous" "endogenously" "endomembranes" "endometrial" "endoperoxide"
 "endoproteolytic" "endoreplication" "endowed" "endpoints" "endy" "england"
 "enhancer" "entered" "entering" "entrez" "eosin" "ephb" "ephrina"
 "epidemiologic" "epifluorescence" "epifluorescent" "epithelia" "epithelioid"
 "epithelium" "epool" "eppendorf" "eppendorff" "epsilon" "epson" "equilibrated"
 "equimolar" "equivalant" "erag" "erbb" "ernst" "erythroblastosis"
 "erythroleukemic" "escherichia" "esi" "estrogen" "estrogenic" "esv" "et"
 "etoh" "etrsrh" "etrsrhssypagtee" "eugene" "eukaryotes" "eukaryotic"
 "eurogentec" "europe" "ex" "excitation" "excitations" "excitatory" "exemplar"
 "exhibited" "exogenous" "exogenously" "extranuclear" "f" "facs" "facscalibur"
 "facstar" "fallopian" "famos" "farber" "farmingdale" "farnesyl" "favoring"
 "fbs" "fdc" "feminization" "feminized" "fentomole" "fentomoles" "fetoprotein"
 "fg" "fgf" "fgfr" "fi" "fibrillar" "fibroblastic" "fibroblastoid"
 "fibronection" "fibrosarcoma" "filamentous" "filtered" "finetek" "finland"
 "finnigan" "fitc" "fitzgerald" "flattened" "flattening" "flavonoids" "florida"
 "flowchart" "flowjo" "floxed" "fluar" "fluo" "fluor" "fluorescein"
 "fluoroblok" "fluorochrome" "fluorometer" "fluoromount" "fluorophore"
 "fluoroscan" "fluoroskan" "fluotar" "fn" "focally" "focused" "fodrin"
 "follicles" "follicular" "followup" "forelimb" "formazan" "formol" "foxo"
 "fqpseeqqqtedelqdk" "fr" "fractionated" "fractionation" "framingham" "france"
 "francisco" "fremont" "freund" "frnkΔfat" "fromatcc" "frozen" "frs" "ftrf"
 "fugene" "fujix" "fukuda" "fullerton" "fungal" "fura" "fusiform" "fx" "fy"
 "fyndependent" "für" "g" "ga" "gaacaacgguggagauuuu" "gaacagaucugaugaauga"
 "gaaccatcagagtgcctgtctcgcttcc" "gaagagacuuuccucauug" "gagacc" "gaithersburg"
 "galactosidase" "galtase" "gatekeeper"
 "gattgtcgacctagaatctagtaaatgcatggctatcaaatgtgtcc" "gbm" "gcagggtcgtcaatgctc"
 "gcc" "gccgagcactatcctctg" "gct" "gdc" "ge" "gefininib" "gelatinized"
 "gelation" "geml" "genbank" "geneband" "genejuice" "genepattern" "genepharma"
 "generanylgeranyl" "genesilencer" "genetools" "genome" "genomewide" "genomics"
 "genotypes" "genway" "geo" "geranylgeranyl" "german" "germany" "germinal"
 "germline" "gestational" "gg" "gga" "ggacagcgaaggcaagaga"
 "ggagggaguuugcaaaguu" "ggaggtttcc" "ggc" "ggccctgatagtccctttgccaacctgggcgcc"
 "ggg" "gggagccgtcttcccagccctcaggaatctctgggtgcccc"
 "ggggcacccagagattcctgagggctggga" "gggrnyyycc" "ggucgacagugguguguau"
 "ggugaagaagggcguccaa" "ggugacgccuucagcauga" "ghiso" "gibco" "gilson" "gl"
 "glioma" "gliomagenesis" "globin" "glucoside" "glutamatergic" "glutamic"
 "glutaraldehyde" "glutathione" "glycerin" "glycerol" "glycerophosphate"
 "glycolysis" "glycosylphosphatidylinositol" "gmbh" "gmenta" "graf"
 "granulocyte" "graphed" "graphpad" "graphpadprism" "grb" "grd" "gre" "greater"
 "greatest" "gres" "griot" "gsh" "gsk" "gtaaatgcatgtgaaattctacc"
 "gtcgtgaaggttggagtcaag" "gtgacatccatgtgaaaat" "gtn" "gts"
 "gttagcatatacactatcatttgc" "guanosine" "guizhou" "gy" "gycoblue" "gygi"
 "gynecologic" "h" "ha" "haematoxylin" "haenszeltest" "hahn" "hamamatsu"
 "hamburg" "hampton" "haploinsufficient" "haplotype" "haptotactic" "harder"
 "harefield" "harvard" "hbec" "hbecs" "hcl" "hco" "hcx" "hdac" "hddpir"
 "hddthk" "headgroup" "heidelberg" "helf" "helix" "helsinki" "hemacytometer"
 "hemagglutinin" "hematogenous" "hematopoiesis" "hematoxylin" "heo"
 "heparinized" "hepatocarcinogenesis" "hepatocarcinogenic" "hepatocellular"
 "hepatocyte" "hepatomegaly" "hepes" "hephb" "heptafluorobutyric" "hercules"
 "heregulin" "herndon" "hetero" "heterodimeric" "heterodimerisation"
 "heterogeneity" "heterokaryons" "heterologous" "heterotrimeric" "hexamers"
 "hfba" "hff" "hgfr" "hif" "hifive" "hillsborough" "hindiii" "hiperfect"
 "hippocampal" "hispeed" "histo" "histogel" "histological" "histology"
 "histotype" "hla" "hlmvec" "hmec" "hmve" "hmvec" "hntg" "hoc" "hodgkin"
 "hoechst" "holographic" "homeostasis" "homer" "homocysteine" "homodimeric"
 "homogenizer" "homolog" "homologous" "homotypic" "homozygous" "hopkins"
 "howard" "hpaec" "hpb" "hpo" "hq" "hr" "hras" "hrluc" "hrmec" "hrmecs" "htb"
 "htbe" "hts" "hughes" "husar" "huve" "huvec" "huynh" "hv" "hybond"
 "hybridization" "hybridomas" "hyclone" "hydrochloride" "hydrocortisone"
 "hydrolytic" "hydrolyzable" "hydroxyethylcellulose" "hydroxylase"
 "hydroxylation" "hydroxysteroid" "hydroxysuccinimide" "hypermutation"
 "hyperproliferative" "hypertrophy" "hypervariable" "hypodysplasia"
 "hypomethylation" "hypoploid" "hypotonic" "hysterotomy" "hz" "ia" "iacuc"
 "icecold" "icn" "icq" "icr" "idc" "identifier" "identifiers" "ie" "ief" "ifns"
 "ig" "igepal" "igf" "igm" "igov" "igrov" "ihc" "ii" "iii" "il" "ilic"
 "illinois" "imac" "imagej" "imagequant" "imantinib" "imgenex" "imidazole"
 "immobilion" "immobilon" "immortalise" "immunex" "immunfluorescent" "immuno"
 "immunoadsorbed" "immunoaffinity" "immunobloting" "immunoblotts"
 "immunochemicals" "immunocomplex" "immunocomplexes" "immunocompromised"
 "immunocytochemical" "immunocytochemistry" "immunodeficiency"
 "immunodeficient" "immunodetection" "immunofluorescent" "immunofluoresence"
 "immunogen" "immunogenic" "immunoglobulin" "immunohistochemical"
 "immunohistochemistry" "immunological" "immunologically" "immunologicals"
 "immunomagnetic" "immunoprecipiates" "immunoprecipitants" "immunopurified"
 "immunoreactive" "immunoreactivity" "immunoreceptor" "immunoresearch"
 "immunosorbent" "immunostaining" "immunotech" "imovie" "impedance"
 "improvision" "imunofluoresence" "inc" "india" "indianapolis"
 "indistinguishably" "indofine" "infectants" "inherited" "initiators"
 "innogenetics" "innotech" "ins" "institut" "integrators" "interactome"
 "intercellular" "intercentriolar" "interchain" "interfacial" "interferin"
 "intergen" "intermembrane" "interpreted" "intracellularly" "intracytoplasmic"
 "intraepithelial" "intraluminal" "intramuscular" "intriguingly" "intron"
 "invariant" "invasiveness" "invitrogen" "invitrogene" "iodixanol"
 "iodoacetamide" "iodonium" "ionomycin" "ionophore" "iowa" "ipa" "iplab"
 "ipswich" "iptg" "irb" "irccs" "ires" "irradiation" "irvine" "isehara"
 "isobaric" "isoelectric" "isogenic" "isoprenyl" "isoprenylcysteine"
 "isopropyl" "isotachophoretic" "isothiocyanate" "isotopengeraete" "isotopic"
 "isotype" "israel" "italy" "itam" "iv" "ivl" "ix" "j" "jackson" "jak" "jakob"
 "james" "jenoptik" "jerusalem" "jetpei" "jetsi" "jmd" "johns" "jolia" "jolla"
 "jose" "jrt" "jun" "junctional" "juxtacrine" "juxtanuclear" "k" "kappa"
 "karolinska" "kcl" "kdia" "keith" "keller" "kentucky" "ketamine" "kettering"
 "kidlington" "kimmon" "kinome" "kirkland" "klenow" "klentaq" "klh" "klode"
 "knn" "kodak" "koh" "koretzky" "kpc" "kpni" "kramer" "kruskal" "kt" "ktkk"
 "kv" "kwon" "ky" "kymographs" "kymography" "kyoto" "l" "labsystems" "laemmli"
 "laevis" "lafayette" "lai" "lakewood" "lambda" "lamellipodial" "larger"
 "largest" "laserscan" "lasersharp" "lausen" "lavage" "lazzaro" "lb" "lcc"
 "lcq" "lds" "leandro" "leica" "leitz" "lentiviral" "lentivirus" "lentiviruses"
 "leopold" "leptomycin" "leukemic" "leupeptin" "lexington" "libitum" "licor"
 "ligase" "limk" "lindau" "lineages" "lipofectamine" "lipogenesis" "lipogenic"
 "littleton" "liu" "lmna" "lnmm" "lns" "lobular" "localisation" "localised"
 "logan" "longpass" "lonza" "lorton" "louis" "lovastatin" "ltq" "ltr" "luc"
 "luciferase" "luminescence" "luminometer" "luminoskan" "luria" "lution" "lwd"
 "lyase" "lymphoblastic" "lymphoblasts" "lymphocyte" "lymphokine" "lymphokines"
 "lymphoma" "lymphomas" "lymphoproliferative" "lymphotropic" "lyophilized"
 "lysis" "lysophosphatidic" "lysosome" "lysosomes" "lzrs" "mabs" "macara"
 "macro" "macroglobulin" "macromolecular" "macular" "macvector" "madison"
 "maeda" "magnegst" "mahajan" "maltose" "mammary" "manassas" "manhasset" "mann"
 "mannheim" "mapkand" "marburg" "marienfeld" "markup" "marshall" "mary"
 "maryland" "masatoshi" "massachusetts" "masson" "mastermix" "mathworks"
 "matlab" "max" "mayer" "mayo" "mbf" "mc" "mcbain" "mccoy" "mcf" "mcgill"
 "mcmaster" "md" "mda" "mdah" "mdbk" "mechanosensory" "mechanotransduction"
 "mecn" "medullary" "mef" "meier" "meir" "melanogaster" "melles" "mellitus"
 "melville" "mercaptoethanol" "merck" "mergentheim" "mesa" "mesenchymal"
 "mesenchyme" "meshwork" "mesoderm" "metabolising" "metabolite" "metabolize"
 "metamorph" "metanephric" "metaphase" "metastases" "metastasis"
 "metastasizing" "methylarsonous" "methylene" "methylthiotetrazole" "mg" "mgcl"
 "mhz" "michelle" "michigan" "michrom" "microarray" "microcentrifuge"
 "microcirculation" "microcolumns" "microdomain" "microdomains"
 "microelectrodes" "microenvironment" "microfilament" "microfuge" "micrograms"
 "microimaging" "microinjected" "microinjection" "microliters" "micromax"
 "micropapillary" "microplate" "microsoft" "microsystems" "microtome"
 "microtubule" "microvascular" "midbody" "midi" "midline" "midpiece" "midzone"
 "migminduced" "mikroorganismen" "milford" "milipore" "millipore" "minneapolis"
 "minnesota" "mirrored" "mirus" "misfolded" "mislocalization" "mislocalized"
 "missense" "mississauga" "missouri" "mit" "mitochondrion" "mitogenesis"
 "mitosis" "mitotic" "mj" "mmol" "mmp" "mncl" "modulator" "moduli" "modulus"
 "moi" "molecularly" "moloney" "molybdate" "monitored" "monoclonals" "monocyte"
 "monocytic" "monolayer" "mononuclear" "mononucleated" "montreal"
 "morphogenesis" "morphogenetic" "morphologic" "mot" "motile" "mov" "mpeg"
 "mpins" "mpnst" "mqeatpsaqatnetqmcyasldhsvk" "mr" "mrc" "mrck" "mrlb" "mtt"
 "mu" "mubras" "multi" "multiadaptor" "multifaceted" "multifactorial"
 "multiforme" "multifunctional" "multiimage" "multilayers" "multimeric"
 "multimode" "multimolecular" "multinucleate" "multinucleated" "multiphor"
 "multiprobe" "multiprotein" "multitasking" "multivalent" "multivesicular"
 "mulv" "murine" "mutagene" "mutational" "mw" "myc" "myelocytic"
 "myelomonocytary" "mylk" "myoblast" "myoblastic" "myocyte" "myoepithelial"
 "myofiber" "myofibers" "myogenesis" "myogenic" "myopathy" "myosin" "myr"
 "myrakt" "myristilation" "myristoyl" "myristoylation" "männedorf" "n" "na"
 "naaso" "naf" "nahco" "nakatpase" "nanjing" "nanoelectrospray" "nanoflow"
 "nanogram" "nanoparticle" "naphthoflavone" "napo" "narrowed" "nasba" "natick"
 "navanadate" "navo" "ncbi" "nci" "ncoi" "nearest" "neb" "necrosis"
 "neomarkers" "neomycin" "neonatal" "neoplasia" "neovascularization" "nes"
 "netherlands" "netphos" "networkin" "neu" "neurite" "neuroblastoma"
 "neuroendocrine" "neuronal" "neurotransmitter" "neurotrophic" "nf" "nfat" "ng"
 "ngt" "ni" "nicotinic" "nih" "niiro" "nikon" "ninhydrin" "ninta" "nishizumi"
 "nitrilotriaceticacid" "nitrocellulose" "nj" "nk" "nkrf" "nls" "nlss" "nmda"
 "nmmlck" "nn" "nocht" "nonaggregated" "nonapoptotic" "noncanonical"
 "noncoding" "nonconventional" "nondenaturing" "nonessential" "nonfat"
 "nonfocused" "nongenotoxic" "nonhematopoietic" "nonhuman" "nonidet"
 "noninfected" "nonionic" "nonisotopic" "nonkinase" "nonlymphoid"
 "nonmigrating" "nonmuscle" "nonneuronal" "nonnormalized" "nonphosphorylated"
 "nonphysiological" "nonreceptor" "nonreducing" "nonregulated" "nonselective"
 "nonspecific" "nonstimulated" "nontargeting" "nontransfected" "nontreated"
 "nontumorigenic" "nontumorous" "nonvesicular" "noonan" "normoxic" "nort"
 "norway" "norwegian" "noti" "novabiochem" "novagen" "novascan" "novex" "novus"
 "np" "nr" "nrg" "nsclc" "nt" "nta" "nuak" "nuclease" "nucleates" "nucleation"
 "nucleo" "nucleofector" "nucleoli" "nucleoskeletal" "nunc" "nupage" "nutacon"
 "ny" "o" "octylamine" "od" "ogawa" "oh" "okadaic" "oligo" "oligoduplexes"
 "oligofectamine" "oligomeric" "oligonucleotide" "oligopyrimidine" "olympus"
 "omniscript" "oncogenesis" "ontario" "opened" "openlab" "oppositely" "opti"
 "optimem" "optimised" "optimized" "optiprep" "orbigen" "orbitrap" "orca"
 "organelle" "organelles" "organon" "orthovanadate" "oslo" "osmotic" "outputs"
 "ovar" "ovarian" "overillumination" "overrepresented" "oxazepam" "oxidase"
 "oxidative" "oxygenase" "p" "paa" "pae" "pairwise" "pak" "palmitoyl"
 "palmitoylation" "palo" "panacetylated" "pancaspase" "panin" "panvera"
 "papillae" "papillary" "papilloma" "paracellular" "paracrine"
 "paraformaldehyde" "paraformaldheyde" "parenchyma" "paris" "parp" "passaged"
 "pathfinding" "pathobiology" "pathogenesis" "pathogenic" "pathophysiologic"
 "pathophysiological" "patrick" "pbabe" "pbd" "pblcpcs" "pbls" "pbluescript"
 "pbmcs" "pbr" "pbs" "pbst" "pca" "pcefl" "pci" "pcite" "pcl" "pcm" "pcrii"
 "pd" "pdbu" "pdgfrβ" "pdnr" "pdsred" "pdtc" "pe" "pebg" "pecfp" "pef" "pegfp"
 "peifer" "pelleted" "pennsylvania" "penstrep" "pepstatin" "perbio"
 "perchloric" "percoll" "perhaps" "pericentriolar" "perinatal" "perinuclear"
 "peritoneal" "peritoneum" "perkin" "perkinelmer" "perl" "permeabilised"
 "permeabilization" "permeabilized" "perseptive" "pete" "peterson" "peyfp"
 "pfa" "pflag" "pfu" "pgad" "pgem" "pgex" "ph" "pha" "phagemid" "phagocytic"
 "phagocytosis" "phalloidin" "phalloidine" "pharmacia" "pharmacodynamic"
 "pharmatech" "pharmingen" "phenformin" "phenotypic" "phenylmethlsulfonyl"
 "phenylmethylphosphate" "phenylmethylsulfonyl" "philadelphia" "phophorylation"
 "phophotyrosine" "phorbol" "phoshorylated" "phosida" "phosphatidic"
 "phosphine" "phospho" "phosphoacceptor" "phosphoakt" "phosphoamino"
 "phosphoerk" "phosphohistone" "phosphomapk" "phosphopeptide"
 "phosphoproteomic" "phosphoproteomics" "phosphor" "phosphoramidon"
 "phosphorylable" "phosphosite" "phosphospecific" "photodetector"
 "photomultiplier" "photonics" "photoshop" "phr" "phrl" "phycoerythrin" "pic"
 "pico" "picofrit" "picower" "pid" "pikk" "pikks" "pim" "pipet" "piscataway"
 "pittsburgh" "pix" "pixel" "pjnk" "pkbα" "pkcγ" "placental" "planck"
 "planfluor" "plasmodia" "plastek" "platelet" "pleckstrin" "pleiotropic" "plk"
 "plogos" "plove" "plugin" "pluripotent" "plys" "pm" "pme" "pml" "pmol" "pmole"
 "pmscv" "pmsf" "pmx" "pns" "po" "polya" "polyacrylamide" "polybasic"
 "polybrene" "polyclonals" "polyethylenimine" "polyglutyr" "polyglutyrp"
 "polymerase" "polymerization" "polymerized" "polymorphisms" "polymount"
 "polyoma" "polyploid" "polyploidy" "polyplus" "polyposis" "polysciences"
 "polyvalent" "polyvinylidene" "ponceau" "poorer" "poros" "pos" "posited"
 "positivity" "postanaphase" "postfixation" "postnatal" "postnuclear"
 "postranslationally" "postsynaptic" "posttransfection" "posttranslational"
 "potentiometer" "potentiometric" "powerblot" "ppm" "pppppv" "pppppvdytedee"
 "pqcxip" "pqe" "pre" "preadipocyte" "preapoptosis" "preapoptotic" "precleared"
 "precolumn" "precoupled" "preformed" "prehybridized" "preimmune"
 "preincubated" "preincubation" "preloaded" "prelocalized" "premarked"
 "premitochondrial" "premixed" "prenyl" "prenylated" "prenylation" "preplate"
 "prestimulation" "preston" "pretreated" "pretreatment" "prewarmed"
 "primerbank" "princeton" "prlr" "probasin" "procaspase" "processive" "progres"
 "prokaryotic" "promega" "promonocytic" "propidium" "prostatic" "proteasome"
 "proteolysis" "proteolytically" "proteome" "proteomic" "proteomics" "protomer"
 "protooncogene" "proven" "proximal" "ps" "pseudochallenged" "pseudopodia"
 "pseudotyped" "psm" "psrα" "pssrα" "psuper" "ptata" "ptdinsp" "ptepy" "ptgpy"
 "ptgs" "ptms" "ptnt" "ptyr" "pulldown" "pulser" "puro" "puromycin" "pvdf" "px"
 "py" "pyed" "pyeei" "pyrazolpyrimidine" "pyridine" "pyrophosphate"
 "pyrophosphoate" "pyrrolidine" "pΔfat" "q" "qc" "qiagen" "qiaquick" "qik"
 "qpcr" "qq" "qrt" "qsk" "qstar" "qt" "quadrupole" "quantification" "quantione"
 "quantitated" "quantitation" "quantitect" "quickchange" "quicktime"
 "quikchange" "quinazoylacrylamide" "r" "rab" "racql" "rad" "radiolabeled"
 "rafcaax" "rala" "ramos" "rapamcyin" "rasband" "rasgrp" "rasgtpase"
 "ratcheting" "ratiometric" "ravid" "raytest" "reactivation" "reactivity"
 "readdition" "readout" "reasoned" "reattachment" "reblotted" "recirculation"
 "recognised" "recombinase" "recovered" "redox" "reductase" "reemergence"
 "reexpression" "refed" "referenced" "refractile" "regenerative" "rehydrated"
 "rehydration" "reintroduction" "rel" "relocalization" "relocalized" "rendered"
 "renewed" "renilla" "rensselaer" "replated" "replating" "replicate"
 "replication" "reprecipitated" "reprecipitation" "reprobed" "reproducibility"
 "reproducibly" "resgen" "resistibility" "resolver" "resuspended"
 "resuspension" "reticulocyte" "retrotranscripted" "retroviral" "retrovirus"
 "retroviruses" "revertant" "rex" "reynolds" "rho" "rhoa" "rhogaps" "rhogdi"
 "rhou" "riboside" "ribosomal" "richmond" "ripa" "rksasls" "rlb" "rn" "rnaimax"
 "rneasy" "roche" "rochester" "rockford" "rocki" "rockii" "rockville" "rome"
 "roper" "rosetta" "rosetting" "roskilde" "rpm" "rpmi" "rprgqrd"
 "rrardkalsggkrketlv" "rsf" "rsk" "rsxpsxp" "rt" "rtc" "rtg" "rtpgrpl" "rtta"
 "ruediger" "rwpe" "rxxxpsxp" "sacchi" "safestain" "sagi" "sahrm" "sakura"
 "salk" "sam" "sammlung" "san" "santa" "santacruz" "saponin" "sarcoma" "sarhm"
 "sc" "scansite" "scattering" "scd" "schurmann" "schwannoma" "schwartz" "sciex"
 "scissors" "scita" "sck" "scorable" "scripps" "sds" "se" "seattle" "sebolt"
 "secretory" "sectioned" "sedimentation" "sedimented" "selecto" "sem"
 "semiquantitative" "sepharose" "sepharosetm" "sequencer" "sequest"
 "sequestering" "sequist" "sera" "seropositive" "serotec" "serotonin"
 "sevenless" "sfk" "sh" "shan" "shb" "shimogyo" "shorter" "shugosin" "si"
 "siahr" "siarnt" "sicontrol" "sigfp" "signalchem" "sik" "silac" "silico"
 "simplyblue" "sinai" "siport" "siquest" "siscx" "siv" "skeletal" "skewed"
 "sloan" "slower" "slpi" "slpl" "smai" "smallest" "snabi" "snf" "snk" "snp"
 "snrk" "soc" "soe" "soleus" "solubilization" "solubilize" "solublized" "soma"
 "somatodendritic" "sonicated" "sonication" "soriano" "sostfx" "spafas"
 "spallanzani" "spatio" "spearman" "spectrafluor" "spectramax" "spectrometer"
 "spectrometric" "spectrophotometric" "sphingosine" "splenic" "splenocytes"
 "spss" "sqaveeni" "sqaveenl" "squamous" "ssh" "stagetips" "stanford" "statins"
 "steatosis" "stef" "stepone" "stereoisomer" "steric" "stimulator"
 "stimulatory" "sto" "stockholm" "stoichiometric" "stratagene" "streptavidin"
 "sts" "subcellular" "subclasses" "subcloned" "subconfluent" "subcutaneously"
 "subfamilies" "subfamily" "submicromolar" "subpopulation" "subtractive"
 "subtrate" "subtype" "subunit" "sucrose" "sulfate" "sulfotransferase"
 "sulfoxide" "sult" "sunnyvale" "superfamily" "superinfection" "supernatant"
 "superoxide" "superscript" "supersignal" "suppl" "supraphysiological"
 "suramin" "sutter" "sutton" "sv" "sweden" "swiss" "swissprot" "switzerland"
 "sybr" "syf" "synapse" "synaptic" "syncytia" "syncytial" "syncytium"
 "synergism" "synergistic" "synergistically" "syngene" "synovial" "synthase"
 "sypagte" "systemic" "systemically" "syyweie" "tabletop" "taichung" "taipei"
 "taiwan" "takara" "takeichi" "taken" "talin" "tapering" "targetplus"
 "tartrate" "tbs" "tbst" "tccagtagggatgccagc" "tcep" "tcga" "tcid" "tcn"
 "tcrstimulated" "te" "tebu" "tecan" "teco" "tedee" "tek" "tekan" "teknika"
 "telangiectasia" "teleangiectasia" "telomerase" "telophase" "temecula"
 "temsirolimus" "ter" "terminator" "ternary" "teruel" "tester" "tet" "tethered"
 "tetraacetic" "tetracycline" "tetradecanoyl" "tetrazolium" "texas" "tfa" "tga"
 "tgaaggtcggagtcaacggatttggt" "tgggcgcctggtcaccagggctgctt"
 "tgtctcacagagcgagaaggtgtcagg" "thapsigargin" "thawed" "thekras" "theophylline"
 "thermo" "thermocycler" "thermofinnigan" "thermolab" "theta" "thiazol"
 "thioesterase" "thiogalactoside" "thresholded" "thrombin" "thymocyte"
 "thymocytes" "thymosin" "thymus" "tiam" "timeframe" "tina" "tio" "titer"
 "titertek" "titrated" "titration" "titres" "tk" "tkb" "tlc" "tma" "tne" "tnt"
 "tocris" "tof" "tokai" "tokyo" "toludine" "toluidine" "tonsillar" "topflash"
 "topographic" "toronto" "toxicant" "toxicogenomics" "tpip" "tpte" "trans"
 "transactivator" "transam" "transcriptase" "transcriptome" "transducer"
 "transendothelial" "transfectant" "transfection" "transferase" "transgenic"
 "transglutaminase" "translational" "translationally" "translocater"
 "translocator" "transplacental" "transrepression" "transrepressor" "transwell"
 "trevigen" "tri" "trichlorotrifluoroethane" "trichostatin" "trichrome"
 "tricine" "triethylamine" "trifectin" "triggered" "trimeric" "trimolecular"
 "trioxide" "triphosphatase" "triphosphate" "tris" "trishcl" "trisphosphate"
 "tritc" "triton" "trizol" "tropenmedizin" "trypsinisation" "trypsinised"
 "tryptic" "tsai" "ttc" "ttg" "ttgase"
 "ttttcagctgctaggctctagtaaatgcatgtgaaattctacc"
 "ttttcagctgctaggctctagtaaatgcatgtgaaattctaccaaagagtttg" "tty" "tu" "tubule"
 "tubulogenesis" "tucson" "tukey" "tumorigenicity" "tumorous" "tumourigenesis"
 "tumourigenic" "tumourigenicity" "tunel" "tween" "tx" "ty" "tyrode"
 "uaaaugagcagcuguacaa" "ubi" "ubiquitously" "uim" "uk" "ultracentrifugation"
 "unabsorbed" "unavailability" "unc" "uncharacterized" "uncompressed"
 "uncovered" "und" "undergoes" "undergone" "underlayers" "undernutrition"
 "underrepresent" "underrepresented" "undertaken" "undetectable" "unicellular"
 "uninfected" "unliganded" "unpaired" "unpublised" "unreacted" "unseparated"
 "untagged" "untransfected" "uploaded" "uppsala" "urbana" "urdpase" "urea"
 "ureteric" "urokinase" "usa" "usf" "ut" "utero" "uu" "uuggcugggacacugacau" "v"
 "va" "vad" "valencia" "vanadate" "vasoconstrictors" "vdsfspe" "vec"
 "vectashield" "veeco" "venin" "viabilities" "videomicroscopy" "viewplates"
 "viii" "vin" "viratrak" "viremia" "virginia" "vitro" "vitrogen" "vivo" "vo"
 "vogelstein" "vol" "volocity" "vortexed" "vpvpppvpprrr" "w" "wa" "wallis"
 "waltham" "washings" "washington" "watertown" "wayne" "weakened" "wetzlar"
 "whilst" "whitney" "wi" "widefield" "widening" "wiesbaden" "wilhelm" "willco"
 "wisconsin" "withdrawn" "wk" "wnt" "woburn" "wondered" "worcester"
 "worthington" "written" "wrobel" "wst" "wt" "wuxi" "wwox" "www" "wyeth" "x"
 "xbai" "xcell" "xenobiotic" "xenografts" "xhoi" "xi" "xid" "xl" "xnl" "xp"
 "xpress" "xrs" "xxl" "xxm" "xylazine" "y" "yaape" "yale" "yenl" "yf" "yfp"
 "yh" "ylates" "ylvv" "ymc" "yokogawa" "york" "yoshitomi" "ypydvpdyas" "ytt"
 "yu" "yvnv" "yxn" "yxxl" "yxxm" "z" "zeiss" "zeocin" "zmp" "zn" "zo" "zs"
 "zvad" "Δph" "Δyy" "ΔΔc" "ΔΨ" "α" "αdh" "β" "γ" "γatp" "δ" "ε" "ζ" "η" "ηg"
      "κ" "λ" "μ" "μf" "μg" "μl" "π" "ρ" "σ" "τ" "ψcre" "ω"))

(defparameter *comlex-new-words*
  '("abolished" "abolition" "absent" "absolute" "absorption" "abundance"
 "abundantly" "academy" "accelerate" "accepted" "access" "accessibility"
 "accession" "accessory" "accommodate" "accompanied" "accomplished"
 "accordance" "according" "account" "accountable" "accuracy" "acetate" "acetic"
 "achievable" "achieve" "acid" "acids" "actively" "actual" "acute" "ad"
 "adaptable" "adapted" "adapter" "adapters" "adaptor" "adaptors" "address"
 "adherent" "adipose" "adjoining" "adjudged" "adjusted" "administration"
 "adobe" "adopted" "adrenal" "adult" "adulthood" "advantage" "advantages"
 "adversely" "aetiology" "age" "aggregated" "aggregation" "aggressive"
 "agitation" "agree" "agreement" "agrees" "aided" "aids" "aim" "air" "airflow"
 "airway" "alarming" "alcoholic" "aligned" "alignment" "alive" "alkylated"
 "alleviate" "alleviation" "alongside" "alpha" "alternating" "alto"
 "altogether" "alveolar" "ambiguities" "ambiguity" "amino" "amplitude"
 "analogue" "analogues" "analogy" "analyst" "analytical" "analyzer" "anchorage"
 "anesthesia" "angle" "annealing" "annotated" "annotation" "annotations"
 "answer" "antagonism" "antagonist" "antagonistic" "antagonistically"
 "antagonize" "anterior" "antibiotic" "antibiotics" "anticipate" "anvil"
 "anymore" "apart" "apparatus" "appearance" "applicable" "appreciable"
 "approval" "approved" "approximated" "aqueous" "arbitrary" "arbor"
 "architecture" "archive" "area" "argon" "argue" "argues" "arise" "ark" "arks"
 "armadillo" "armpit" "aromatic" "arranged" "arrangement" "array" "arrest"
 "arrests" "arrowhead" "arrowheads" "arsenic" "artefact" "artery" "ascent"
 "ascertain" "ascorbic" "ascribed" "asked" "aspirated" "aspiration" "assayed"
 "assigned" "assignment" "assisted" "assure" "aster" "asthma" "atlas"
 "atmosphere" "atomic" "atrophy" "attached" "attachment" "attained" "attempted"
 "attenuation" "attractive" "attributable" "atypical" "augmentation"
 "augmented" "author" "authors" "automated" "automatically" "automation"
 "autonomous" "autopsy" "availability" "available" "avenue" "avenues" "average"
 "avoid" "axis" "back" "background" "backgrounds" "backside" "bacterial" "bad"
 "bait" "balance" "ball" "balls" "barrier" "basement" "basic" "batch" "batches"
 "bath" "bathed" "bay" "bead" "beads" "beam" "beams" "bear" "bearing" "began"
 "begin" "behave" "behaviour" "believe" "belly" "belong" "benefit" "beta"
 "bicarbonate" "bid" "bile" "binary" "biochemical" "biologist" "biologists"
 "biology" "bioscience" "biosciences" "bioscope" "biotechnology" "birth"
 "bladder" "bleed" "blinded" "blockade" "blood" "bloom" "blot" "blotto"
 "blunting" "board" "bodies" "body" "boiled" "bone" "booster" "border"
 "borders" "borne" "boulder" "bourne" "bovine" "bowel" "box" "boxes" "bracket"
 "branched" "breakage" "breeding" "brevity" "bridge" "brief" "bright"
 "brightly" "brightness" "brilliant" "bring" "bromide" "bronchial" "brook"
 "brought" "bud" "buffer" "build" "bulk" "bundle" "bundles" "buoyant" "burning"
 "bypass" "cable" "cables" "cadmium" "caffeine" "caged" "calculated"
 "calculation" "calculations" "calf" "calibrated" "camera" "candidate"
 "candidates" "cantilever" "cantilevers" "cap" "capacity" "capillary"
 "captured" "carbon" "cardiac" "cardiovascular" "care" "careful" "carried"
 "carrier" "case" "cases" "cast" "cat" "catch" "categories" "category" "caveat"
 "cavity" "center" "centralized" "cerebral" "cervical" "chain" "chamber"
 "chameleon" "channel" "channels" "chapel" "chaps" "character" "characteristic"
 "characteristics" "charcoal" "charged" "chase" "check" "chemical" "chemicals"
 "chemistry" "chick" "chicken" "chilled" "chimera" "china" "chip" "chloride"
 "chloroform" "choice" "choices" "choose" "chose" "chromosome" "church"
 "circled" "circular" "circulating" "circumscribe" "circumscribes"
 "circumstance" "circumstances" "circumvent" "cirrhosis" "city" "claimed"
 "clarification" "clarify" "classic" "classical" "classically" "classification"
 "classified" "cleaned" "clearance" "cleared" "cleavage" "cleaved" "cleft"
 "clinic" "clockwise" "closure" "clue" "coal" "coalesced" "coated" "cocktail"
 "cocoa" "coefficient" "cohesion" "cohort" "coiled" "coincide" "coincides"
 "cold" "collaborate" "collaboration" "collapsed" "colleague" "colleagues"
 "collected" "college" "collision" "colonies" "colony" "column" "combat"
 "combination" "combined" "come" "comes" "comet" "commercial" "committee"
 "communicating" "communication" "compacted" "companies" "company"
 "compartment" "compatible" "compensatory" "compete" "competent" "competition"
 "competitive" "competitively" "compilation" "compiled" "complement"
 "completion" "complexity" "compliance" "complicated" "complimentary"
 "composed" "composition" "compound" "comprehensive" "compress" "comprise"
 "computation" "computational" "compute" "computer" "computerized" "computes"
 "conceivable" "conceive" "concentrated" "concept" "concerning" "concerted"
 "conclude" "conclusion" "concomitant" "concordance" "concordant" "concrete"
 "concur" "concurrent" "concurrently" "condensation" "condensed" "conditional"
 "conducive" "conducted" "confidence" "confined" "confirmation" "confirmed"
 "conflicting" "confluence" "conforming" "conjugated" "conjugation"
 "conjunction" "connecting" "connection" "connective" "consecutive"
 "consecutively" "consensus" "consent" "consequent" "considerable" "consisting"
 "consolidation" "conspicuously" "constant" "constants" "constituent"
 "constraint" "constraints" "construction" "consult" "consume" "consumption"
 "contact" "containment" "contaminant" "contaminated" "contamination"
 "contemporaneous" "contention" "contextual" "continually" "continuity"
 "contracted" "contractile" "contraction" "contradicting" "contradictory"
 "contrary" "controversial" "converge" "converse" "convey" "conveys" "cooled"
 "cooperative" "coordinated" "coordinately" "coordination" "copy" "corbel"
 "core" "corollary" "corporation" "correct" "correction" "correctly"
 "correlate" "correlates" "correlation" "correlative" "corroborating" "cortex"
 "cortical" "cortisone" "cotton" "counted" "counter" "counteracting"
 "counterpart" "counterparts" "coupled" "course" "cover" "coverage" "criteria"
 "criterion" "cross" "crosstalk" "crowded" "crude" "crystal" "crystallography"
 "cue" "cues" "cumulative" "cumulatively" "cure" "curve" "custom" "cut"
 "cutoff" "cylinder" "cylinders" "cyst" "cysts" "damage" "dark" "darling"
 "database" "daughter" "deadly" "debatable" "debilitating" "debris" "decade"
 "decades" "decay" "decided" "decline" "declines" "deep" "default" "defaults"
 "defined" "definition" "definitively" "degeneration" "degree" "dehydrated"
 "delineated" "delineation" "delivery" "demand" "demise" "denatured" "denoting"
 "dense" "density" "dependant" "dependence" "depicted" "deployment"
 "depolymerization" "deposit" "deposits" "depressed" "deprive" "deprived"
 "deregulated" "deregulation" "desalted" "descent" "designated" "designed"
 "desired" "destabilizing" "destruction" "destructive" "detached" "detergent"
 "detergents" "determinant" "determinants" "developmental" "deviation"
 "deviations" "device" "devoid" "diabetes" "diagnosed" "diagnostic"
 "diagnostics" "diagonal" "dialysis" "diameter" "dichotomy" "dictate" "diet"
 "differ" "differentiate" "differs" "diffusely" "diffusion" "digital" "diluted"
 "dilution" "dimension" "dimethyl" "diminished" "diminution" "dioxide" "dioxin"
 "dire" "directional" "disabling" "disappearance" "disappeared" "disc"
 "discarded" "discontinuities" "discontinuity" "discontinuous" "discover"
 "discovery" "discrepancies" "discrepancy" "discriminate" "discussion" "dish"
 "dishes" "disk" "disks" "dismal" "dismantling" "disorganized" "disparate"
 "disparities" "disparity" "dispensable" "dispensed" "dispersed" "dispersion"
 "disprove" "dissolved" "distance" "distilled" "distorted" "distress"
 "distributed" "distribution" "disturb" "disturbance" "disturbances" "disuse"
 "diverge" "divergence" "divergent" "diverges" "diversified" "diversity"
 "docking" "documented" "dog" "dogma" "dogs" "dominantly" "donated" "donkey"
 "donor" "dorsal" "dose" "dot" "doublet" "doubly" "doubt" "doubts" "downward"
 "dramatic" "drank" "drastic" "dried" "drill" "drink" "drinking" "driver"
 "dual" "duct" "ducts" "due" "dummy" "duplex" "duplicate" "duplication"
 "durable" "dye" "dystrophy" "eagle" "easy" "eclipse" "edge" "edges"
 "effectiveness" "efficiency" "efflux" "effort" "egg" "elaboration" "elastic"
 "elasticity" "electrical" "electrode" "electrodes" "electrostatic" "elegant"
 "element" "elicit" "elongated" "elsewhere" "emanating" "embedded" "embryo"
 "emerge" "emergence" "emerges" "emission" "emitted" "emphasis" "emphasized"
 "employing" "empty" "emulsified" "enable" "enables" "enclosing" "encompassing"
 "encounter" "end" "endemic" "energy" "engaged" "engagement" "engineered"
 "enlarged" "enlargement" "enriched" "enrichment" "ensuing" "ensure" "enteric"
 "entity" "envelope" "environment" "envisioned" "equal" "equality" "equalized"
 "equation" "equations" "equipment" "equipped" "erratic" "error"
 "erythropoietin" "essential" "ester" "estimate" "estimation" "ethical"
 "ethics" "ethylene" "evaluated" "evaluation" "evaporation" "evident" "evoke"
 "evokes" "evolution" "evolutionary" "evolved" "exacerbated" "exact" "excel"
 "excellent" "exception" "exceptions" "excess" "excised" "excluded" "exclusion"
 "excursion" "excursions" "exempt" "exemption" "exerted" "exit" "expanded"
 "expansion" "expectation" "expectations" "exploit" "exploration"
 "explorations" "explore" "exponentially" "exported" "exposed" "exposition"
 "exposure" "exquisitely" "extended" "extension" "extensions" "external"
 "extra" "extracted" "extraction" "fa" "face" "facet" "facets" "facility"
 "fade" "failure" "faint" "falcon" "fall" "far" "fashion" "fat" "fatty"
 "favorably" "fed" "fee" "feedback" "feel" "fell" "female" "femur" "femurs"
 "fermenting" "fertilized" "fetal" "fiber" "fibers" "fibrosis" "field" "fields"
 "filament" "filaments" "file" "files" "film" "filter" "filters" "filtrate"
 "filtration" "final" "fine" "finger" "firefly" "firstly" "fish" "fisher" "fit"
 "fixation" "fixative" "fixed" "flag" "flanking" "fleshy" "flexibility"
 "flexible" "flight" "flow" "fluid" "fluorescent" "fluoride" "flushed" "flux"
 "fly" "focal" "focus" "foetal" "force" "formal" "formaldehyde" "formalin"
 "format" "former" "formic" "formula" "formulated" "forth" "foster" "founded"
 "founder" "founders" "fourfold" "fox" "fragmented" "framework" "frequency"
 "fresh" "freshly" "fused" "fusion" "future" "gained" "gamma" "ganglia"
 "ganglion" "gap" "gaps" "gastric" "gated" "gauge" "gay" "gelatin" "gelatine"
 "gelled" "gender" "generalized" "generous" "genetics" "gentle" "gestation"
 "get" "giant" "gift" "gifts" "glacial" "gland" "glands" "glass" "glassware"
 "glutamate" "glycol" "go" "goal" "goat" "gold" "governed" "grade" "gradient"
 "gradients" "grand" "granule" "granules" "grape" "grapes" "grew" "grind"
 "grip" "groove" "ground" "grouped" "grove" "grow" "guardian" "guidance"
 "guide" "guideline" "guidelines" "guinea" "hairless" "hairpin" "hall"
 "hallmark" "hallmarks" "halogen" "halve" "halves" "ham" "hamster" "hamsters"
 "hand" "hanging" "happen" "happens" "harbouring" "harvested" "head" "healing"
 "health" "healthcare" "healthy" "heart" "heated" "hebrew" "height" "heights"
 "helium" "help" "helper" "hepatitis" "hereafter" "herein" "hertz"
 "hierarchical" "hierarchy" "highlight" "hill" "hind" "hindrance" "hinge"
 "hold" "holds" "hole" "hollow" "home" "homo" "homogeneity" "homogeneous"
 "homogenized" "horse" "horseradish" "hose" "hospital" "host" "housed"
 "humanely" "humanized" "humid" "humidified" "humidity" "hybrid" "hybridized"
 "hybrids" "hydrocarbon" "hydrogen" "hydrophilic" "hypo" "hypothetical" "ice"
 "id" "idea" "ideal" "identically" "identifiable" "identity" "illicit"
 "illuminated" "illumination" "imaging" "imbedded" "immersion" "immobile"
 "immobilized" "immortalized" "immunity" "immunization" "immunizing"
 "immunology" "impeded" "impinge" "implanted" "implemented" "implies" "imply"
 "imported" "inability" "inaccessible" "incidence" "included" "inclusion"
 "incompetent" "inconsequential" "inconsistent" "increment" "incubated"
 "incubator" "incur" "incurs" "indentation" "independence" "index" "indicative"
 "indicator" "indirect" "indispensability" "indispensable" "indistinguishable"
 "industries" "industry" "inefficient" "inefficiently" "inert" "infected"
 "infection" "infectious" "inference" "inferred" "infiltration" "inflammation"
 "influx" "information" "infrared" "infrastructure" "infrequent" "infused"
 "ingenuity" "inherent" "injected" "injection" "injured" "injury" "inoculated"
 "inorganic" "input" "insect" "inset" "insoluble" "inspection" "instance"
 "instances" "institute" "institutional" "instructed" "instruction"
 "instructions" "instrument" "insulin" "integrate" "integrates" "integration"
 "integrity" "intense" "intensity" "intensive" "intensively" "inter"
 "interactive" "interest" "interface" "intermediary" "intermediate"
 "intermittent" "internal" "international" "interplay" "interpretation"
 "interrupted" "interruption" "interval" "intervals" "intervene" "intervention"
 "intestine" "intimate" "intravenous" "intricate" "introduced" "introduction"
 "invade" "invasion" "invasive" "inventory" "inversely" "inverted"
 "investigator" "investigators" "invoked" "involvement" "ion" "ionization"
 "ionizing" "irradiating" "irregular" "irrelevant" "irrespective"
 "irreversibility" "island" "isolation" "isotope" "jack" "jacks" "japan"
 "joined" "judge" "junction" "junctions" "juxtaposed" "kill" "killer" "kills"
 "kindly" "kip" "kit" "knit" "knock" "la" "lab" "label" "labeled"
 "laboratories" "laboratory" "labs" "lake" "lamb" "lambs" "lamp" "lane" "lanes"
 "language" "lapse" "laser" "lasted" "late" "lateral" "latter" "layer"
 "leaderless" "leaflet" "leave" "leaves" "lee" "legend" "lens" "leopard"
 "lesion" "lesions" "libraries" "library" "lid" "lie" "lies" "life" "light"
 "likewise" "limb" "limitation" "lineage" "liquid" "list" "literature" "lived"
 "loaded" "lobe" "locale" "located" "location" "lock" "locomotion" "locus"
 "log" "logo" "logos" "looked" "loose" "lying" "lymph" "lynch" "ma" "machine"
 "machinery" "machines" "made" "maestro" "magic" "magnesium" "magnification"
 "magnitude" "main" "majority" "make" "makes" "male" "malfunction"
 "malignancies" "malignancy" "mammal" "mammals" "man" "manifestation"
 "manifested" "manipulating" "manipulation" "manipulations" "mantel" "manual"
 "manually" "manufacture" "manufacturer" "manuscript" "mapped" "margin"
 "marked" "marker" "marrow" "mascot" "masked" "massive" "mast" "master" "match"
 "material" "materials" "maternal" "matrix" "matter" "maturation" "matured"
 "maximize" "maximum" "mechanical" "mechanics" "median" "mediator" "mediators"
 "medicine" "memorial" "memory" "men" "merged" "messenger" "metabolism" "metal"
 "methanol" "methodology" "methyl" "mi" "micro" "micron" "microscopic"
 "microscopically" "middle" "migratory" "mild" "milk" "milligram" "milliliter"
 "millions" "mimetic" "mimic" "mimicked" "mimics" "minced" "mini" "minimal"
 "minimize" "minimum" "minor" "mirror" "mirrors" "miscalled" "miscarriage"
 "miscarriages" "misinterpretation" "missing" "mission" "mix" "mixed" "mixer"
 "mixture" "mixtures" "mo" "mobile" "mobilization" "mock" "modeled" "modelling"
 "moderate" "modest" "modifier" "modifiers" "modular" "modulation" "module"
 "moiety" "moist" "molar" "monitor" "monkey" "monkeys" "monochrome"
 "monoclonal" "mop" "mops" "morphology" "mother" "motif" "motion" "motivated"
 "motor" "motorized" "mounted" "movement" "movements" "movie" "movies" "moving"
 "multiplicity" "multiplied" "muscle" "muscular" "naive" "nature"
 "necessitating" "needle" "negative" "negatively" "negatives" "neglected"
 "neighbor" "neighbors" "neighbour" "nerve" "nervous" "nested" "net" "network"
 "networks" "neural" "neutral" "neutralizing" "newborn" "nick" "nickel"
 "nitrogen" "noble" "node" "nomenclature" "nonetheless" "nonsmoker"
 "nonsmokers" "normality" "normalization" "normalized" "north" "northern"
 "noted" "noteworthy" "noticed" "notion" "nuclei" "nucleic" "nucleus" "nude"
 "numeral" "numerical" "nutrient" "nutrients" "obesity" "objective"
 "objectives" "obligate" "obscuring" "obstructive" "obviate" "occasion"
 "occasional" "occasions" "occupied" "odd" "odyssey" "offer" "office"
 "offspring" "ohm" "ohms" "oil" "old" "omega" "omission" "omitted" "online"
 "onset" "ontology" "onwards" "opener" "opportunity" "opposed" "opposite"
 "optics" "optimal" "orbital" "orchestrated" "order" "ordinal" "ordinarily"
 "organic" "organization" "organizer" "organizing" "orthopedic" "outgrowth"
 "outlined" "output" "outstanding" "ovary" "oven" "overall" "overhang"
 "overhangs" "overlaid" "overlay" "overnight" "overproduction" "oviduct"
 "owing" "oxidation" "oxidized" "oxygen" "ozone" "pacific" "packaging" "packed"
 "page" "paint" "pair" "pairs" "pan" "panther" "paper" "par" "paraffin"
 "paragraph" "parameter" "parameters" "parental" "parentheses" "parenthesis"
 "partial" "participant" "participation" "particle" "particles" "partition"
 "passage" "passing" "pathogen" "pathological" "pathologist" "pathology"
 "pathway" "pattern" "paving" "peaked" "pellet" "penetrate" "penetrates"
 "penicillin" "people" "percent" "percentage" "perfect" "perimeter"
 "peripheral" "periphery" "permanent" "permeability" "permeable" "permit"
 "peroxide" "peroxides" "persisted" "persistence" "personal" "perturb"
 "perturbation" "perturbations" "peter" "pharmaceutical" "phase" "phenol"
 "phenomenon" "phoenix" "phosphate" "photo" "photographed" "photographically"
 "photos" "physiology" "pi" "picked" "picric" "picture" "pictures" "piece"
 "pierce" "pig" "piglet" "piglets" "pilot" "pink" "pinpointing" "pipe" "pipes"
 "pipette" "pivotal" "placenta" "placid" "plan" "plant" "plaque" "plaques"
 "plastic" "plasticity" "plated" "platform" "plausible" "play" "played"
 "player" "players" "plays" "plethora" "plot" "plots" "plug" "pocket" "point"
 "polarity" "polarization" "polarized" "pollutant" "polluted" "poly"
 "polyethylene" "polygonal" "polymer" "pooled" "popularity" "porcine" "pore"
 "port" "portal" "portion" "positioned" "positively" "possess" "possesses"
 "post" "postulate" "potassium" "potential" "powdered" "power" "powered"
 "precast" "precedence" "precedented" "precipitated" "precipitation" "precise"
 "precision" "precluded" "precoated" "precursor" "predictor" "predisposition"
 "predominant" "predominate" "predominates" "preference" "preferential"
 "preferred" "pregnancy" "pregnant" "preliminary" "premature" "premier"
 "premiere" "prenatal" "preparation" "prepared" "pressure" "pretty" "prevail"
 "prevails" "price" "primer" "primers" "primitive" "principal" "principally"
 "principle" "prism" "private" "probable" "problem" "procedure" "procedures"
 "proceed" "proceeds" "processed" "procured" "produced" "producer" "product"
 "production" "profile" "profound" "prognosis" "prognostic" "program"
 "programmed" "progress" "progression" "progressive" "project" "projection"
 "projections" "prominence" "prominently" "promiscuous" "promising" "promoter"
 "promotion" "prompted" "prone" "pronounced" "properties" "property"
 "proportional" "proportionally" "protean" "protocol" "prototype" "protrusion"
 "provider" "provoked" "proximity" "pseudo" "public" "publication"
 "publications" "published" "pull" "pulmonary" "pulse" "pump" "pumps"
 "puncture" "purchased" "pure" "purity" "purple" "purpose" "puzzle" "pyramidal"
 "quadruplicate" "qualified" "qualitative" "quantify" "quantitative" "quantity"
 "quark" "quenched" "quick" "quiescence" "quotient" "rabbit" "rabbits" "race"
 "racial" "radiation" "radioisotope" "radish" "radium" "raft" "rafts" "ranked"
 "rap" "rat" "rats" "ray" "reactivated" "reader" "ready" "reagent" "reagents"
 "real" "rear" "rearranged" "rearrangement" "reason" "reasonable"
 "recapitulate" "receive" "receives" "recognition" "recognized"
 "recommendation" "recommendations" "recommended" "reconcilable" "reconcile"
 "recorded" "recovery" "recurrence" "recurrent" "recycling" "redistribute"
 "redistributes" "redistribution" "redundancy" "redwood" "reentry" "reference"
 "referred" "reflected" "regard" "regardless" "regenerating" "regeneration"
 "regimen" "regression" "relating" "relationship" "relaying" "relevance"
 "relevant" "reliable" "reliant" "relocation" "remainder" "remark" "remarks"
 "reminiscent" "remodel" "remodeling" "render" "renewal" "reorganization"
 "repair" "repeat" "repeatedly" "repercussion" "repercussions" "replaced"
 "replacement" "replica" "reporter" "representative" "representatives"
 "repressive" "reproducible" "reproduction" "reproductive" "reprogram"
 "reprogramming" "request" "rescued" "research" "researcher" "researchers"
 "reseeded" "resembling" "reside" "resides" "residual" "resin" "resins"
 "resolution" "resolved" "resonance" "resource" "respect" "respective"
 "respiratory" "rested" "restoration" "restore" "restricting" "restriction"
 "restrictions" "resultant" "ret" "retarded" "retract" "retraction" "retracts"
 "retrieval" "retrieved" "retrospectively" "reversal" "reversals" "reverse"
 "review" "revised" "rigidity" "rigorous" "rim" "ring" "rinsed" "rise" "risk"
 "robot" "robust" "rock" "rocking" "rodent" "rodents" "roller" "room" "rose"
 "rotating" "rotation" "rotor" "rounded" "routed" "row" "rubber" "ruffle"
 "ruffles" "rule" "run" "rush" "sabotage" "sac" "sacrificed" "sad" "saint"
 "saline" "salmon" "salt" "sandwich" "satellite" "saturated" "saved" "scanned"
 "scanner" "scarcity" "scatter" "scavenger" "scenario" "schematic" "school"
 "science" "scientific" "scored" "scrambled" "scraped" "scraper" "scratch"
 "script" "sealed" "seamless" "searched" "sec" "secondary" "secondly"
 "secretary" "secreted" "secretion" "section" "sections" "seeded" "seek"
 "segment" "segments" "segregate" "segregation" "selectivity" "self" "sense"
 "sensitized" "sensor" "sentence" "separable" "separated" "separation" "sepsis"
 "sequential" "sequentially" "sequestered" "sequestration" "serial" "serially"
 "series" "serous" "severity" "shake" "sham" "shanghai" "shank" "shanks"
 "shape" "share" "sharp" "shear" "sheath" "shed" "sheds" "sheep" "sheet"
 "shell" "shield" "shields" "shifted" "shock" "shutter" "shuttling" "side"
 "signature" "signed" "signifies" "signify" "silencer" "silencing" "silica"
 "simplicity" "simplified" "simultaneous" "sin" "singular" "sink" "sit" "sits"
 "situated" "situation" "sizable" "skew" "skimmed" "skin" "slide" "slides"
 "slight" "slip" "slips" "slug" "slurry" "smart" "smoker" "smokers" "smooth"
 "smoothly" "snail" "snap" "snip" "snips" "soak" "sodium" "soft" "software"
 "sole" "solidified" "soluble" "solution" "sometimes" "son" "sophisticated"
 "sorting" "sought" "source" "sources" "south" "southern" "southwestern"
 "soybean" "space" "spaces" "spanning" "special" "specificity" "specifies"
 "specify" "specimen" "spectral" "spectrum" "speculate" "speculative" "speed"
 "sperm" "spherical" "spheroid" "spiked" "spin" "spindle" "spine" "spines"
 "spleen" "splice" "split" "spot" "spotted" "spray" "spreading" "spreadsheet"
 "sprouting" "spun" "sputum" "square" "squelch" "stability" "stacking" "stage"
 "stained" "stand" "standard" "standardization" "standards" "stands" "stated"
 "statement" "static" "statistical" "statistics" "status" "steady" "stem"
 "stems" "sterile" "sterling" "steroid" "stillbirth" "stillbirths" "stock"
 "stony" "stopped" "storage" "stored" "strain" "stranded" "stratified" "streak"
 "streptomycin" "stress" "stretch" "strict" "striking" "string" "stringency"
 "stringent" "strings" "stripped" "stroke" "strokes" "strong" "structure"
 "student" "sty" "sub" "subdivided" "subdivision" "subgroup" "submitted"
 "subsequent" "substantiate" "substituted" "substitution" "substratum" "subtle"
 "subtracting" "subtraction" "suffering" "suffice" "suffices" "suite"
 "sulphate" "sum" "summation" "supplemental" "supplemented" "supplied" "supply"
 "supposed" "suppressive" "surgery" "surgically" "surprising" "surrogate"
 "surrounding" "survey" "survive" "survived" "susceptibilities"
 "susceptibility" "suspected" "suspended" "suspension" "swab" "swell" "swing"
 "symbol" "symmetric" "synchronization" "syndrome" "synergy" "synthesis"
 "synthesized" "syringe" "systematically" "tab" "tablet" "tablets" "tabulated"
 "tail" "tailor" "take" "takes" "talk" "tandem" "tannic" "technique"
 "techniques" "technologies" "technology" "temperature" "template" "temporal"
 "tempting" "tens" "tertiary" "testis" "text" "theme" "theories" "theory"
 "therapies" "therapy" "thereof" "thermal" "thick" "thin" "thirdly" "threefold"
 "thrice" "tied" "tight" "tightness" "timed" "tip" "tolerance" "tolerated"
 "tonsil" "tonsils" "tony" "took" "tool" "topic" "total" "touch" "touchdown"
 "toxic" "toxicity" "toxin" "trace" "traces" "trachea" "tracking" "tract"
 "trading" "traditional" "traffic" "trafficking" "transcript" "transit"
 "transmission" "transmit" "transplanted" "transported" "trauma" "trefoil"
 "trend" "trends" "triangle" "triangles" "tried" "tripartite" "triple"
 "triplicate" "troy" "tube" "tubular" "tuft" "tufts" "tumour" "tune" "tuning"
 "turn" "twice" "twist" "twofold" "type" "typical" "ultimate" "ultraviolet"
 "umbilical" "unaffected" "unaltered" "unambiguous" "unambiguously"
 "unappreciated" "unattached" "unavailable" "unbiased" "uncouple" "undefined"
 "underestimated" "underlining" "underscoring" "underwent" "undifferentiated"
 "undistinguishable" "uneven" "unexplored" "unexposed" "unfolded"
 "unidentified" "unifying" "unique" "unit" "united" "units" "universal"
 "university" "unlabeled" "unloading" "unmask" "unpublished" "unravel"
 "unrecognized" "unrelated" "unselected" "unspecific" "unstructured"
 "untreated" "unusual" "unveiled" "upright" "upside" "upstate" "uptake"
 "upward" "urinary" "usefulness" "user" "uterine" "uterus" "utility"
 "utilization" "utilized" "valid" "valve" "vanish" "variability" "variance"
 "varying" "vascular" "vehicle" "vein" "velocities" "velocity" "vendor"
 "venous" "versatility" "version" "versions" "vertebrate" "vesicle" "vesicles"
 "vesicular" "vessel" "vessels" "viability" "vice" "vicinity" "video" "viewed"
 "vim" "violet" "viral" "virtually" "virtue" "virus" "visible" "vision"
 "visualization" "visualize" "vital" "voltage" "volume" "vortex" "wan" "wanted"
 "ware" "warm" "washed" "washout" "wasp" "water" "watt" "watts" "wave"
 "wavelength" "wavelengths" "weak" "wealth" "weaned" "web" "weight" "well"
 "wells" "went" "west" "western" "wetted" "wheel" "whenever" "whereby"
 "wherein" "wherever" "whole" "wholly" "wild" "wind" "window" "wished"
 "withdrawal" "witnessed" "woman" "women" "worker" "workers" "workstation"
 "worldwide" "worthwhile" "worthy" "wound" "wounds" "writing" "yeast" "young"
    "zinc"))

(defparameter *non-comlex-new-words-counts*
  '(("e" 17958) ("n" 17937) ("o" 17809) ("r" 17802) ("d" 17329) ("l" 17195)
 ("c" 17177) ("h" 16676) ("f" 16104) ("p" 15991) ("y" 14243) ("ed" 14065)
 ("g" 13810) ("w" 13635) ("te" 13403) ("b" 13321) ("v" 11650) ("nt" 11433)
 ("se" 10343) ("tio" 10282) ("si" 10115) ("x" 9998) ("al" 9627) ("ng" 9082)
 ("ar" 7496) ("ha" 7188) ("ca" 6300) ("iv" 6201) ("na" 5836) ("k" 5640)
 ("wi" 5630) ("pre" 5409) ("ex" 5294) ("pe" 5248) ("ge" 5157) ("et" 4942)
 ("ph" 4904) ("ig" 4700) ("ni" 4573) ("po" 4513) ("wa" 4422) ("ty" 4386)
 ("ia" 4278) ("ter" 4260) ("ci" 4235) ("va" 3970) ("fi" 3944) ("ut" 3890)
 ("il" 3719) ("mu" 3650) ("xp" 3474) ("em" 3396) ("ie" 3279) ("phospho" 3091)
 ("tu" 2990) ("phosphor" 2778) ("sh" 2768) ("xpress" 2703) ("rt" 2645)
 ("cl" 2633) ("od" 2425) ("ee" 2353) ("trans" 2267) ("sc" 2122) ("ins" 2065)
 ("da" 2052) ("ap" 2047) ("fr" 2041) ("z" 2039) ("ali" 1983) ("inc" 1928)
 ("q" 1872) ("ag" 1866) ("ga" 1702) ("cy" 1539) ("esi" 1428) ("nes" 1397)
 ("nta" 1365) ("und" 1316) ("hr" 1304) ("ck" 1276) ("cyt" 1206) ("tri" 1156)
 ("abl" 1106) ("pos" 1061) ("sult" 1044) ("unc" 1027) ("gl" 1010) ("gg" 1004)
 ("dy" 979) ("nf" 938) ("mot" 907) ("dh" 897) ("β" 894) ("adh" 887) ("soc" 863)
 ("vo" 850) ("rel" 787) ("j" 771) ("pha" 760) ("rn" 736) ("lysis" 728)
 ("immuno" 725) ("ps" 718) ("xi" 696) ("μ" 606) ("abi" 604) ("α" 581)
 ("ny" 565) ("vitro" 535) ("nk" 519) ("vol" 511) ("bas" 488) ("sam" 481)
 ("kt" 476) ("tween" 464) ("wt" 441) ("γ" 425) ("nn" 419) ("ix" 406) ("ζ" 400)
 ("gre" 397) ("gy" 354) ("rex" 351) ("sts" 349) ("pid" 346) ("ack" 344)
 ("aga" 340) ("bio" 328) ("sto" 327) ("ann" 320) ("rad" 309) ("mit" 304)
 ("icr" 301) ("nci" 283) ("myc" 282) ("eed" 280) ("vec" 272) ("fy" 270)
 ("multi" 269) ("nucleo" 269) ("siv" 256) ("fluo" 254) ("fluor" 254) ("μg" 244)
 ("mary" 243) ("pic" 241) ("vivo" 237) ("nr" 235) ("cas" 231) ("epithelia" 223)
 ("np" 222) ("rab" 219) ("chi" 216) ("transfection" 214) ("subunit" 211)
 ("nj" 197) ("arsenite" 178) ("pm" 178) ("igm" 176) ("cs" 174) ("py" 174)
 ("vin" 173) ("luc" 172) ("neu" 167) ("aj" 159) ("mann" 158) ("skeletal" 154)
 ("suppl" 151) ("div" 146) ("rome" 140) ("ngt" 139) ("pme" 134) ("κ" 134)
 ("thermo" 132) ("vitrogen" 132) ("jun" 131) ("ovar" 124) ("gres" 121)
 ("mov" 120) ("ovarian" 119) ("ipa" 118) ("biologic" 117) ("progres" 116)
 ("lution" 113) ("syncytia" 112) ("avi" 110) ("μl" 108) ("doc" 99) ("agar" 98)
 ("cytoskeletal" 97) ("phr" 95) ("hoc" 90) ("xid" 90) ("angiogenesis" 89)
 ("ylates" 88) ("oligo" 87) ("paris" 87) ("electro" 86) ("homolog" 85)
 ("altered" 83) ("lb" 83) ("glycerol" 80) ("ubi" 77) ("dc" 75) ("ief" 75)
 ("vanadate" 75) ("lymphocyte" 74) ("centrosome" 72) ("dyn" 72) ("cloned" 71)
 ("hetero" 71) ("supernatant" 67) ("ε" 66) ("antigen" 65)
 ("oligonucleotide" 65) ("subcellular" 65) ("adeno" 64) ("soma" 64)
 ("tubule" 64) ("agenesis" 62) ("driven" 61) ("mesenchymal" 60) ("roper" 60)
 ("tne" 60) ("neuronal" 59) ("resuspended" 58) ("uk" 58) ("myogenic" 57)
 ("sem" 57) ("glutathione" 55) ("aldehyde" 54) ("covered" 54)
 ("dependently" 54) ("mg" 54) ("aa" 53) ("acetyl" 53) ("estrogen" 53)
 ("ires" 53) ("prenyl" 53) ("agarose" 52) ("cand" 52) ("lai" 52) ("sequest" 52)
 ("polybasic" 51) ("cem" 50) ("dn" 50) ("greater" 50) ("hif" 50)
 ("mutagene" 50) ("alk" 49) ("carcinogenesis" 49) ("proteomic" 49)
 ("retroviral" 49) ("zo" 49) ("max" 48) ("morphologic" 48) ("oh" 48)
 ("centrifugation" 47) ("hts" 47) ("ii" 47) ("atc" 46) ("macro" 46)
 ("triggered" 46) ("coverslip" 45) ("exhibited" 45) ("exogenous" 45)
 ("adenocarcinoma" 44) ("allowed" 44) ("chroma" 44) ("dex" 44) ("distal" 44)
 ("tk" 44) ("myoblast" 43) ("oxidase" 43) ("polymerization" 43)
 ("phenformin" 42) ("phosphopeptide" 42) ("thymocyte" 42) ("centriole" 41)
 ("colocalize" 41) ("conformational" 41) ("metastasis" 41) ("az" 40)
 ("luciferase" 40) ("moduli" 40) ("transferase" 40) ("genome" 39)
 ("thymocytes" 38) ("electrophoresis" 37) ("adherens" 36) ("colocalization" 36)
 ("lamellipodial" 36) ("lds" 36) ("placental" 36) ("taken" 36)
 ("coverslips" 35) ("erag" 35) ("puro" 35) ("tet" 35) ("tma" 35) ("histo" 34)
 ("microtubule" 34) ("permeabilized" 34) ("transplacental" 34) ("murine" 33)
 ("noti" 33) ("transwell" 33) ("aprotinin" 32) ("cotransfected" 32)
 ("focused" 32) ("ky" 32) ("mammary" 32) ("nitrocellulose" 32) ("sera" 32)
 ("translational" 32) ("utero" 32) ("confocal" 31) ("ecl" 31)
 ("luminescence" 31) ("opti" 31) ("rho" 31) ("sepharose" 31) ("tina" 31)
 ("angiogenic" 30) ("leupeptin" 30) ("ltr" 30) ("pete" 30) ("phalloidin" 30)
 ("bv" 29) ("centrifuged" 29) ("dermal" 29) ("paraformaldehyde" 29)
 ("trimeric" 29) ("autoradiography" 28) ("intercentriolar" 28)
 ("orthovanadate" 28) ("syncytium" 28) ("transfectant" 28)
 ("chemiluminescence" 26) ("drawn" 26) ("syncytial" 26) ("transrepression" 26)
 ("biotin" 25) ("carboxy" 25) ("dataset" 25) ("phenotypic" 25) ("recovered" 25)
 ("acrylamide" 24) ("corp" 24) ("degranulation" 24) ("disulfide" 24)
 ("monolayer" 24) ("myr" 24) ("quantitation" 24) ("soleus" 24) ("coli" 23)
 ("larger" 23) ("midi" 23) ("retrovirus" 23) ("anchoring" 22)
 ("carcinogenic" 22) ("coprecipitation" 22) ("deoxyglucose" 22) ("ecc" 22)
 ("frozen" 22) ("iii" 22) ("ilic" 22) ("transcriptase" 22) ("buffered" 21)
 ("cac" 21) ("chromatograph" 21) ("dura" 21) ("fractionation" 21) ("rpm" 21)
 ("subcloned" 21) ("aliquot" 20) ("biotinylated" 20) ("chromatography" 20)
 ("dendritic" 20) ("duplexes" 20) ("dysplasia" 20) ("globin" 20)
 ("interferin" 20) ("ligase" 20) ("midbody" 20) ("myogenesis" 20)
 ("discovered" 19) ("phosphoproteomic" 19) ("polymerase" 19) ("proteomics" 19)
 ("puromycin" 19) ("steric" 19) ("synergistic" 19) ("vad" 19) ("aq" 18)
 ("compaction" 18) ("coreceptor" 18) ("cotransfection" 18) ("densitometry" 18)
 ("dimeric" 18) ("enhancer" 18) ("hepatocarcinogenesis" 18) ("ionophore" 18)
 ("modulator" 18) ("perhaps" 18) ("pipet" 18) ("proteasome" 18) ("synaptic" 18)
 ("withdrawn" 18) ("η" 18) ("clustering" 17) ("datasets" 17) ("lentiviral" 17)
 ("microarray" 17) ("mitosis" 17) ("polya" 17) ("acetone" 16)
 ("catalytically" 16) ("cd" 16) ("centrosomal" 16) ("coactivator" 16)
 ("immunocomplex" 16) ("liu" 16) ("monitored" 16) ("myosin" 16)
 ("myristoyl" 16) ("nonreceptor" 16) ("nontransfected" 16) ("nontumorous" 16)
 ("platelet" 16) ("polyacrylamide" 16) ("sonicated" 16) ("thrombin" 16)
 ("tumorous" 16) ("algorithm" 15) ("biomarker" 15) ("hybridization" 15)
 ("lymphoma" 15) ("naf" 15) ("oxidative" 15) ("relocalization" 15)
 ("sequestering" 15) ("tubulogenesis" 15) ("undetectable" 15)
 ("bacterially" 14) ("coprecipitated" 14) ("dually" 14) ("dysfunction" 14)
 ("elicited" 14) ("endowed" 14) ("graphed" 14) ("hypotonic" 14) ("isotype" 14)
 ("mercaptoethanol" 14) ("moi" 14) ("napo" 14) ("polyvinylidene" 14) ("ppm" 14)
 ("preincubated" 14) ("proximal" 14) ("pulldown" 14) ("stimulator" 14)
 ("tryptic" 14) ("ubiquitously" 14) ("aberrantly" 13) ("anaphase" 13)
 ("axon" 13) ("basel" 13) ("bos" 13) ("chosen" 13) ("dmi" 13)
 ("intercellular" 13) ("irradiation" 13) ("missense" 13) ("mmol" 13)
 ("pretreatment" 13) ("streptavidin" 13) ("tek" 13) ("telomerase" 13) ("δ" 13)
 ("antiphospho" 12) ("bp" 12) ("embryoid" 12) ("fractionated" 12)
 ("galactosidase" 12) ("immunocomplexes" 12) ("microinjection" 12)
 ("pathogenesis" 12) ("propidium" 12) ("quantification" 12) ("replication" 12)
 ("subconfluent" 12) ("telophase" 12) ("thymus" 12) ("undergoes" 12) ("wk" 12)
 ("basophilic" 11) ("biomarkers" 11) ("cytokinesis" 11) ("electrophoretic" 11)
 ("endogenously" 11) ("entered" 11) ("eukaryotic" 11) ("glycerophosphate" 11)
 ("hippocampal" 11) ("microinjected" 11) ("multinucleate" 11) ("mutational" 11)
 ("pretreated" 11) ("proteome" 11) ("reactivity" 11) ("reasoned" 11)
 ("retroviruses" 11) ("absorbance" 10) ("adipocyte" 10) ("aliquots" 10)
 ("ames" 10) ("antiphosphotyrosine" 10) ("axonal" 10) ("bd" 10)
 ("circumferential" 10) ("comodulate" 10) ("deca" 10) ("desmosomes" 10)
 ("difluoride" 10) ("dispase" 10) ("edema" 10) ("epithelium" 10)
 ("fibroblastoid" 10) ("fluorescein" 10) ("fx" 10) ("headgroup" 10)
 ("hepatocyte" 10) ("homeostasis" 10) ("imidazole" 10) ("intracytoplasmic" 10)
 ("ionomycin" 10) ("kinome" 10) ("modulus" 10) ("multinucleated" 10)
 ("nonphosphorylated" 10) ("nonreducing" 10) ("oncogenesis" 10)
 ("palmitoyl" 10) ("phosphorylable" 10) ("phosphospecific" 10)
 ("pleiotropic" 10) ("positivity" 10) ("posttranslational" 10)
 ("prenylated" 10) ("prenylation" 10) ("rsk" 10) ("sucrose" 10) ("tester" 10)
 ("untransfected" 10) ("adenovirus" 9) ("anchored" 9) ("antigens" 9)
 ("centered" 9) ("cytokeratin" 9) ("electrospray" 9) ("endometrial" 9)
 ("graf" 9) ("hematoxylin" 9) ("heregulin" 9) ("heterotrimeric" 9)
 ("homologous" 9) ("lentivirus" 9) ("microenvironment" 9) ("myoblastic" 9)
 ("reproducibly" 9) ("spectrometer" 9) ("stimulatory" 9) ("transducer" 9)
 ("tris" 9) ("anova" 8) ("antiinflammatory" 8) ("carboxyl" 8) ("cdc" 8)
 ("cdk" 8) ("chemiluminescent" 8) ("clustered" 8) ("cocultured" 8) ("codon" 8)
 ("comodulates" 8) ("complexed" 8) ("cutaneous" 8) ("deacetylation" 8)
 ("depolarization" 8) ("electroporation" 8) ("endocytosis" 8)
 ("endomembranes" 8) ("excitation" 8) ("farnesyl" 8) ("feminization" 8)
 ("genomewide" 8) ("glioma" 8) ("glutamic" 8) ("hemagglutinin" 8)
 ("hepatocarcinogenic" 8) ("identifier" 8) ("immunocompromised" 8)
 ("immunofluorescent" 8) ("intracellularly" 8) ("isotopic" 8)
 ("lymphoblasts" 8) ("mc" 8) ("microdomain" 8) ("motile" 8) ("multimeric" 8)
 ("multimolecular" 8) ("myelocytic" 8) ("myofiber" 8) ("naphthoflavone" 8)
 ("neurite" 8) ("nonessential" 8) ("nontargeting" 8) ("palmitoylation" 8)
 ("pelleted" 8) ("pepstatin" 8) ("perl" 8) ("phenylmethylsulfonyl" 8) ("pix" 8)
 ("pleckstrin" 8) ("precleared" 8) ("preformed" 8) ("preloaded" 8)
 ("reprecipitation" 8) ("sarcoma" 8) ("solubilize" 8) ("submicromolar" 8)
 ("synthase" 8) ("systemic" 8) ("ultracentrifugation" 8) ("undertaken" 8)
 ("ureteric" 8) ("whilst" 8) ("xenografts" 8) ("ΔΨ" 8) ("τ" 8) ("confluency" 7)
 ("counterstained" 7) ("deacetylase" 7) ("eosin" 7) ("epifluorescence" 7)
 ("glutamatergic" 7) ("helix" 7) ("heo" 7) ("junctional" 7) ("microvascular" 7)
 ("mirrored" 7) ("mitotic" 7) ("myocyte" 7) ("myopathy" 7) ("neuroblastoma" 7)
 ("phosphoproteomics" 7) ("postanaphase" 7) ("quantitated" 7) ("rendered" 7)
 ("slower" 7) ("subtype" 7) ("superfamily" 7) ("synergistically" 7) ("theta" 7)
 ("tonsillar" 7) ("uncovered" 7) ("λ" 7) ("ablation" 6) ("abscission" 6)
 ("acini" 6) ("adaptin" 6) ("adsorbed" 6) ("aic" 6) ("aminoacid" 6)
 ("amylose" 6) ("antivitronectin" 6) ("aortic" 6) ("baculovirus" 6)
 ("basolateral" 6) ("bicistronic" 6) ("bioinformatic" 6) ("biphasic" 6)
 ("bis" 6) ("bromophenol" 6) ("chd" 6) ("comodulation" 6) ("cuvette" 6)
 ("cytometer" 6) ("decrement" 6) ("delivered" 6) ("delocalization" 6)
 ("deoxycholate" 6) ("deoxyribonucleotidyl" 6) ("diphospho" 6) ("dok" 6)
 ("dt" 6) ("endocytic" 6) ("estrogenic" 6) ("favoring" 6) ("fetoprotein" 6)
 ("genotypes" 6) ("glucoside" 6) ("gmenta" 6) ("greatest" 6)
 ("hepatocellular" 6) ("heterodimeric" 6) ("heterologous" 6) ("homocysteine" 6)
 ("hypomethylation" 6) ("immunoglobulin" 6) ("intermembrane" 6) ("isoprenyl" 6)
 ("kv" 6) ("lentiviruses" 6) ("lymphokine" 6) ("lymphotropic" 6)
 ("lyophilized" 6) ("metaphase" 6) ("microdomains" 6) ("myofibers" 6)
 ("nanoelectrospray" 6) ("nearest" 6) ("nondenaturing" 6) ("nuclease" 6)
 ("organelle" 6) ("pathobiology" 6) ("phorbol" 6) ("pixel" 6) ("pmol" 6)
 ("polybrene" 6) ("postsynaptic" 6) ("posttransfection" 6)
 ("premitochondrial" 6) ("reductase" 6) ("reexpression" 6) ("sevenless" 6)
 ("stoichiometric" 6) ("superoxide" 6) ("ternary" 6) ("tof" 6) ("toxicant" 6)
 ("triphosphate" 6) ("trisphosphate" 6) ("venin" 6) ("bisphosphate" 5)
 ("broader" 5) ("cardiomyocyte" 5) ("chorioallantoic" 5) ("cyclase" 5)
 ("deacetylated" 5) ("denaturation" 5) ("diaminobenzidine" 5) ("egm" 5)
 ("exogenously" 5) ("homogenizer" 5) ("homozygous" 5) ("immunocytochemistry" 5)
 ("immunogen" 5) ("immunohistochemistry" 5) ("isogenic" 5) ("lysosome" 5)
 ("metabolite" 5) ("midpiece" 5) ("neoplasia" 5) ("pathogenic" 5)
 ("perinuclear" 5) ("phosphosite" 5) ("polyploid" 5) ("sphingosine" 5)
 ("synapse" 5) ("translationally" 5) ("trimolecular" 5) ("usa" 5)
 ("weakened" 5) ("written" 5) ("acceptor" 4) ("acetyltransferase" 4)
 ("actinomycin" 4) ("actomyosin" 4) ("additively" 4) ("adenomatous" 4)
 ("adenylyl" 4) ("adjuvant" 4) ("agammaglobulinemia" 4) ("alamar" 4)
 ("alexa" 4) ("aliquoted" 4) ("antiretroviral" 4) ("ascites" 4) ("asian" 4)
 ("aspartic" 4) ("asymptomatic" 4) ("autoimmune" 4) ("bandpass" 4)
 ("bandshift" 4) ("bandwidths" 4) ("betaine" 4) ("bicinchoninic" 4)
 ("bioinformatics" 4) ("blasticidin" 4) ("chemokinetic" 4)
 ("chemotherapeutic" 4) ("choroidal" 4) ("circuitry" 4) ("clai" 4)
 ("cofactor" 4) ("compartmentalization" 4) ("considering" 4) ("corepressor" 4)
 ("corticosteroids" 4) ("covariance" 4) ("crystallographic" 4) ("ctn" 4)
 ("cyanine" 4) ("cycler" 4) ("cystadenocarcinoma" 4) ("cytomegalovirus" 4)
 ("cytoprotective" 4) ("densitometric" 4) ("destabilization" 4)
 ("detectably" 4) ("dichroic" 4) ("diffusively" 4) ("diphenyl" 4)
 ("diphosphorylated" 4) ("dismutase" 4) ("ductal" 4) ("edemagenic" 4)
 ("electroporated" 4) ("eluate" 4) ("embryogenesis" 4)
 ("encephalomyocarditis" 4) ("encountered" 4) ("endpoints" 4) ("epithelioid" 4)
 ("epsilon" 4) ("equilibrated" 4) ("equimolar" 4) ("europe" 4) ("excitatory" 4)
 ("fibrosarcoma" 4) ("filtered" 4) ("flattened" 4) ("fluorometer" 4)
 ("formazan" 4) ("genomics" 4) ("geranylgeranyl" 4) ("germinal" 4) ("gga" 4)
 ("glycolysis" 4) ("heterodimerisation" 4) ("hexamers" 4) ("histological" 4)
 ("homotypic" 4) ("hydroxylation" 4) ("identifiers" 4) ("immunofluoresence" 4)
 ("immunological" 4) ("immunoreceptor" 4) ("interfacial" 4) ("invasiveness" 4)
 ("isoelectric" 4) ("isothiocyanate" 4) ("kappa" 4) ("kymographs" 4)
 ("largest" 4) ("leptomycin" 4) ("leukemic" 4) ("lineages" 4) ("lovastatin" 4)
 ("luminometer" 4) ("lymphokines" 4) ("lymphoproliferative" 4)
 ("macromolecular" 4) ("macular" 4) ("melanogaster" 4) ("methylene" 4)
 ("microfilament" 4) ("midline" 4) ("mislocalization" 4) ("mitogenesis" 4)
 ("monocyte" 4) ("monocytic" 4) ("mononucleated" 4) ("multiforme" 4)
 ("multifunctional" 4) ("multiprotein" 4) ("multitasking" 4) ("neomycin" 4)
 ("neovascularization" 4) ("neurotransmitter" 4) ("nfat" 4) ("nonapoptotic" 4)
 ("nonfat" 4) ("nonionic" 4) ("nonspecific" 4) ("nonstimulated" 4)
 ("normoxic" 4) ("okadaic" 4) ("oligoduplexes" 4) ("opened" 4) ("optimized" 4)
 ("organelles" 4) ("overrepresented" 4) ("oxygenase" 4) ("pairwise" 4)
 ("papillary" 4) ("paracellular" 4) ("pathophysiologic" 4) ("pericentriolar" 4)
 ("peritoneal" 4) ("pharmacodynamic" 4) ("polyclonals" 4)
 ("polyethylenimine" 4) ("polyposis" 4) ("polyvalent" 4) ("posited" 4)
 ("postnuclear" 4) ("preadipocyte" 4) ("preapoptotic" 4) ("preimmune" 4)
 ("preincubation" 4) ("prewarmed" 4) ("proteolysis" 4) ("protomer" 4)
 ("proven" 4) ("pyrophosphate" 4) ("quadrupole" 4) ("radiolabeled" 4)
 ("redox" 4) ("regenerative" 4) ("relocalized" 4) ("replated" 4) ("reprobed" 4)
 ("ripa" 4) ("san" 4) ("saponin" 4) ("scattering" 4) ("shan" 4) ("shorter" 4)
 ("smallest" 4) ("soe" 4) ("sonication" 4) ("squamous" 4) ("subcutaneously" 4)
 ("subfamily" 4) ("subpopulation" 4) ("sulfate" 4) ("suramin" 4)
 ("synergism" 4) ("talin" 4) ("teleangiectasia" 4) ("terminator" 4)
 ("tetracycline" 4) ("thawed" 4) ("thioesterase" 4) ("titer" 4) ("titrated" 4)
 ("topographic" 4) ("transendothelial" 4) ("transgenic" 4) ("transrepressor" 4)
 ("trichrome" 4) ("trioxide" 4) ("triton" 4) ("trypsinised" 4)
 ("tumourigenic" 4) ("uim" 4) ("undergone" 4) ("underrepresent" 4)
 ("unpaired" 4) ("untagged" 4) ("urokinase" 4) ("viii" 4) ("zeocin" 4)
 ("acetonitrile" 3) ("agy" 3) ("ammonium" 3) ("anion" 3) ("antitumor" 3)
 ("autoactivating" 3) ("bose" 3) ("calcineurin" 3) ("calibur" 3)
 ("colorectal" 3) ("coomassie" 3) ("cytotoxicity" 3) ("downmodulated" 3)
 ("eev" 3) ("endocytosed" 3) ("erythroblastosis" 3) ("fusiform" 3)
 ("gatekeeper" 3) ("gefininib" 3) ("haploinsufficient" 3)
 ("immunodeficiency" 3) ("immunosorbent" 3) ("intraepithelial" 3) ("itam" 3)
 ("lymphomas" 3) ("lysosomes" 3) ("microcentrifuge" 3) ("nanoflow" 3)
 ("neonatal" 3) ("nucleoli" 3) ("phosphatidic" 3) ("polyoma" 3) ("prostatic" 3)
 ("reactivation" 3) ("refractile" 3) ("replicate" 3) ("ribosomal" 3)
 ("sectioned" 3) ("spectrometric" 3) ("tetrazolium" 3) ("transactivator" 3)
 ("transcriptome" 3) ("tty" 3) ("urea" 3) ("wondered" 3) ("www" 3) ("aac" 2)
 ("ablated" 2) ("acetylcholine" 2) ("acl" 2) ("adenosylmethionine" 2)
 ("adenoviral" 2) ("adipogenesis" 2) ("administered" 2) ("adrenocortical" 2)
 ("adrenocorticotrophic" 2) ("adriamycin" 2) ("adsorption" 2) ("aldoketo" 2)
 ("aminoethylcarbazole" 2) ("ampho" 2) ("amphotericin" 2) ("ampicillin" 2)
 ("anaplastic" 2) ("antagonise" 2) ("anticentrosome" 2) ("antifade" 2)
 ("antigoat" 2) ("antimouse" 2) ("apical" 2) ("aplasia" 2) ("apoptogenic" 2)
 ("apoptosome" 2) ("aqua" 2) ("arsenate" 2) ("arsenicosis" 2)
 ("autoactivation" 2) ("autodephosphorylation" 2) ("autosampler" 2)
 ("axillary" 2) ("axiovert" 2) ("azide" 2) ("bandwith" 2) ("basally" 2)
 ("behavioral" 2) ("benzamidine" 2) ("biallelic" 2) ("bifunctional" 2)
 ("binning" 2) ("biomethylation" 2) ("biopsies" 2) ("biosynthetic" 2)
 ("bipolar" 2) ("bronchoalveolar" 2) ("carboxylase" 2) ("carboxymethylation" 2)
 ("carboxymethylcellulose" 2) ("carcinogenicity" 2) ("catalysed" 2) ("catc" 2)
 ("caveolae" 2) ("centipoise" 2) ("centrifugated" 2) ("cerevisae" 2)
 ("chaperone" 2) ("characterised" 2) ("chemiluminesence" 2) ("chemokinesis" 2)
 ("chemotactic" 2) ("chromatids" 2) ("chromogenic" 2) ("chung" 2)
 ("cisplatinum" 2) ("cocarcinogenic" 2) ("codec" 2) ("cofractionates" 2)
 ("coimmuoprecipitated" 2) ("colorimetric" 2) ("colormetrically" 2)
 ("colunms" 2) ("combiner" 2) ("comigrated" 2) ("commissure" 2)
 ("comutagenic" 2) ("copurification" 2) ("copurifying" 2) ("costimulator" 2)
 ("cpm" 2) ("crosslinking" 2) ("cruz" 2) ("curated" 2) ("curvilinear" 2)
 ("cystathionine" 2) ("cytochalasin" 2) ("cytofluorometric" 2) ("cytohesin" 2)
 ("cytometric" 2) ("cytospun" 2) ("decondensation" 2) ("deconvoluted" 2)
 ("deconvolution" 2) ("deformation" 2) ("delimited" 2) ("dendrite" 2)
 ("densitometer" 2) ("deoxycholic" 2) ("deoxylcholate" 2)
 ("deoxynucleotidyl" 2) ("deoxythymidines" 2) ("deparaffinization" 2)
 ("deposited" 2) ("deprotected" 2) ("dermatosis" 2) ("desaturase" 2)
 ("desiderate" 2) ("desorption" 2) ("destained" 2) ("desynchronization" 2)
 ("detoxication" 2) ("diacetate" 2) ("dialysed" 2) ("dialyzed" 2)
 ("diapedesis" 2) ("diethylstilbestrol" 2) ("diffusible" 2) ("digitial" 2)
 ("dimethylarsinic" 2) ("diphenylene" 2) ("diploid" 2) ("directionally" 2)
 ("disaggregated" 2) ("disaggregation" 2) ("disordered" 2)
 ("dithiocarbamate" 2) ("dodecyl" 2) ("dormancy" 2) ("downloaded" 2)
 ("drugable" 2) ("ecoa" 2) ("electroblotted" 2) ("electrophoretically" 2)
 ("electrostatically" 2) ("electrotransferred" 2) ("eluates" 2) ("emphasise" 2)
 ("endogeneous" 2) ("endoperoxide" 2) ("endoproteolytic" 2)
 ("endoreplication" 2) ("entering" 2) ("epifluorescent" 2) ("equivalant" 2)
 ("erythroleukemic" 2) ("eukaryotes" 2) ("excitations" 2) ("exemplar" 2)
 ("extranuclear" 2) ("fallopian" 2) ("feminized" 2) ("fentomole" 2)
 ("fentomoles" 2) ("fibrillar" 2) ("fibroblastic" 2) ("fibronection" 2)
 ("filamentous" 2) ("flattening" 2) ("flavonoids" 2) ("floxed" 2)
 ("fluorochrome" 2) ("fluorophore" 2) ("fn" 2) ("fodrin" 2) ("follicles" 2)
 ("follicular" 2) ("followup" 2) ("forelimb" 2) ("formol" 2) ("fungal" 2)
 ("für" 2) ("gct" 2) ("gelatinized" 2) ("gelation" 2) ("generanylgeranyl" 2)
 ("geo" 2) ("germline" 2) ("gestational" 2) ("gilson" 2) ("gliomagenesis" 2)
 ("glutaraldehyde" 2) ("glycerin" 2) ("glycosylphosphatidylinositol" 2)
 ("granulocyte" 2) ("guanosine" 2) ("gynecologic" 2) ("haplotype" 2)
 ("haptotactic" 2) ("harder" 2) ("harvard" 2) ("hemacytometer" 2)
 ("hematogenous" 2) ("hematopoiesis" 2) ("heparinized" 2) ("hepatomegaly" 2)
 ("heptafluorobutyric" 2) ("heterogeneity" 2) ("heterokaryons" 2)
 ("histogel" 2) ("histology" 2) ("histotype" 2) ("hla" 2) ("holographic" 2)
 ("homodimeric" 2) ("hybridomas" 2) ("hydrocortisone" 2) ("hydrolyzable" 2)
 ("hydroxyethylcellulose" 2) ("hydroxylase" 2) ("hydroxysteroid" 2)
 ("hydroxysuccinimide" 2) ("hypermutation" 2) ("hyperproliferative" 2)
 ("hypertrophy" 2) ("hypervariable" 2) ("hypodysplasia" 2) ("hypoploid" 2)
 ("hysterotomy" 2) ("icecold" 2) ("imantinib" 2) ("immortalise" 2)
 ("immunfluorescent" 2) ("immunoaffinity" 2) ("immunoblotts" 2)
 ("immunocytochemical" 2) ("immunodeficient" 2) ("immunodetection" 2)
 ("immunohistochemical" 2) ("immunologically" 2) ("immunomagnetic" 2)
 ("immunoprecipiates" 2) ("immunoprecipitants" 2) ("immunopurified" 2)
 ("immunoreactive" 2) ("immunoreactivity" 2) ("immunostaining" 2)
 ("impedance" 2) ("indistinguishably" 2) ("infectants" 2) ("inherited" 2)
 ("initiators" 2) ("institut" 2) ("integrators" 2) ("interchain" 2)
 ("interpreted" 2) ("intron" 2) ("invariant" 2) ("iodixanol" 2) ("iodonium" 2)
 ("isobaric" 2) ("isoprenylcysteine" 2) ("isopropyl" 2) ("isotachophoretic" 2)
 ("juxtacrine" 2) ("juxtanuclear" 2) ("ketamine" 2) ("laevis" 2) ("lavage" 2)
 ("libitum" 2) ("lipogenesis" 2) ("lipogenic" 2) ("lobular" 2)
 ("localisation" 2) ("localised" 2) ("longpass" 2) ("lyase" 2)
 ("lymphoblastic" 2) ("lysophosphatidic" 2) ("macroglobulin" 2) ("maltose" 2)
 ("markup" 2) ("mastermix" 2) ("md" 2) ("mechanosensory" 2)
 ("mechanotransduction" 2) ("medullary" 2) ("mef" 2) ("mellitus" 2)
 ("mesenchyme" 2) ("meshwork" 2) ("mesoderm" 2) ("metabolising" 2)
 ("metabolize" 2) ("metanephric" 2) ("metastases" 2) ("metastasizing" 2)
 ("methylarsonous" 2) ("methylthiotetrazole" 2) ("microcirculation" 2)
 ("microcolumns" 2) ("microelectrodes" 2) ("microfuge" 2) ("micrograms" 2)
 ("microliters" 2) ("microplate" 2) ("midzone" 2) ("misfolded" 2)
 ("mislocalized" 2) ("mitochondrion" 2) ("molecularly" 2) ("molybdate" 2)
 ("monoclonals" 2) ("mononuclear" 2) ("morphogenesis" 2) ("morphogenetic" 2)
 ("multiadaptor" 2) ("multifaceted" 2) ("multifactorial" 2) ("multilayers" 2)
 ("multimode" 2) ("multivalent" 2) ("multivesicular" 2) ("myelomonocytary" 2)
 ("myristilation" 2) ("myristoylation" 2) ("nanogram" 2) ("narrowed" 2)
 ("neb" 2) ("necrosis" 2) ("neuroendocrine" 2) ("neurotrophic" 2)
 ("nicotinic" 2) ("ninhydrin" 2) ("nitrilotriaceticacid" 2) ("nonaggregated" 2)
 ("noncanonical" 2) ("noncoding" 2) ("nonconventional" 2) ("nonfocused" 2)
 ("nongenotoxic" 2) ("nonhematopoietic" 2) ("nonhuman" 2) ("noninfected" 2)
 ("nonisotopic" 2) ("nonkinase" 2) ("nonlymphoid" 2) ("nonmuscle" 2)
 ("nonneuronal" 2) ("nonnormalized" 2) ("nonphysiological" 2)
 ("nonregulated" 2) ("nonselective" 2) ("nontreated" 2) ("nontumorigenic" 2)
 ("nonvesicular" 2) ("nucleates" 2) ("nucleation" 2) ("octylamine" 2)
 ("ogawa" 2) ("oligomeric" 2) ("oligopyrimidine" 2) ("oppositely" 2)
 ("optimised" 2) ("optiprep" 2) ("osmotic" 2) ("outputs" 2)
 ("overillumination" 2) ("oxazepam" 2) ("panacetylated" 2) ("pancaspase" 2)
 ("panin" 2) ("papilloma" 2) ("paracrine" 2) ("paraformaldheyde" 2)
 ("parenchyma" 2) ("passaged" 2) ("pathfinding" 2) ("pathophysiological" 2)
 ("perchloric" 2) ("peritoneum" 2) ("permeabilised" 2) ("permeabilization" 2)
 ("phagocytic" 2) ("phagocytosis" 2) ("phalloidine" 2)
 ("phenylmethlsulfonyl" 2) ("phenylmethylphosphate" 2) ("phophotyrosine" 2)
 ("phoshorylated" 2) ("phosphoacceptor" 2) ("phosphoamino" 2)
 ("phosphoramidon" 2) ("photodetector" 2) ("photomultiplier" 2)
 ("phycoerythrin" 2) ("plasmodia" 2) ("plugin" 2) ("pluripotent" 2) ("pmole" 2)
 ("polymerized" 2) ("polymorphisms" 2) ("poorer" 2) ("postfixation" 2)
 ("postnatal" 2) ("postranslationally" 2) ("potentiometer" 2)
 ("potentiometric" 2) ("preapoptosis" 2) ("precolumn" 2) ("precoupled" 2)
 ("prehybridized" 2) ("prelocalized" 2) ("premarked" 2) ("premixed" 2)
 ("preplate" 2) ("prestimulation" 2) ("procaspase" 2) ("processive" 2)
 ("prokaryotic" 2) ("proteolytically" 2) ("protooncogene" 2)
 ("pseudochallenged" 2) ("pseudopodia" 2) ("pseudotyped" 2)
 ("pyrazolpyrimidine" 2) ("pyridine" 2) ("pyrophosphoate" 2) ("pyrrolidine" 2)
 ("quinazoylacrylamide" 2) ("rala" 2) ("rapamcyin" 2) ("ratcheting" 2)
 ("ratiometric" 2) ("raytest" 2) ("readdition" 2) ("readout" 2)
 ("reattachment" 2) ("reblotted" 2) ("recirculation" 2) ("recognised" 2)
 ("recombinase" 2) ("reemergence" 2) ("refed" 2) ("referenced" 2)
 ("rehydration" 2) ("reintroduction" 2) ("renewed" 2) ("replating" 2)
 ("reprecipitated" 2) ("reproducibility" 2) ("resistibility" 2)
 ("resuspension" 2) ("retrotranscripted" 2) ("revertant" 2) ("riboside" 2)
 ("rocki" 2) ("rosetting" 2) ("scissors" 2) ("scorable" 2) ("secretory" 2)
 ("sedimented" 2) ("semiquantitative" 2) ("sequencer" 2) ("seropositive" 2)
 ("serotonin" 2) ("silico" 2) ("skewed" 2) ("solublized" 2)
 ("somatodendritic" 2) ("spectrophotometric" 2) ("splenic" 2) ("splenocytes" 2)
 ("statins" 2) ("steatosis" 2) ("stereoisomer" 2) ("subclasses" 2)
 ("subfamilies" 2) ("subtractive" 2) ("subtrate" 2) ("sulfotransferase" 2)
 ("sulfoxide" 2) ("superinfection" 2) ("supraphysiological" 2) ("synovial" 2)
 ("systemically" 2) ("tabletop" 2) ("tapering" 2) ("tartrate" 2)
 ("telangiectasia" 2) ("tethered" 2) ("tetraacetic" 2) ("tetradecanoyl" 2)
 ("tga" 2) ("thapsigargin" 2) ("theophylline" 2) ("thermocycler" 2)
 ("thiazol" 2) ("thiogalactoside" 2) ("thresholded" 2) ("thymosin" 2)
 ("timeframe" 2) ("titration" 2) ("titres" 2) ("toludine" 2) ("toluidine" 2)
 ("toxicogenomics" 2) ("transglutaminase" 2) ("translocater" 2)
 ("translocator" 2) ("trichlorotrifluoroethane" 2) ("trichostatin" 2)
 ("tricine" 2) ("triethylamine" 2) ("triphosphatase" 2) ("trypsinisation" 2)
 ("ttc" 2) ("tumorigenicity" 2) ("tumourigenesis" 2) ("tumourigenicity" 2)
 ("unabsorbed" 2) ("uncharacterized" 2) ("uncompressed" 2) ("underlayers" 2)
 ("undernutrition" 2) ("underrepresented" 2) ("unicellular" 2) ("uninfected" 2)
 ("unseparated" 2) ("uploaded" 2) ("urdpase" 2) ("vasoconstrictors" 2)
 ("viabilities" 2) ("videomicroscopy" 2) ("viremia" 2) ("vortexed" 2)
 ("washings" 2) ("widefield" 2) ("widening" 2) ("xcell" 2) ("xenobiotic" 2)
 ("xylazine" 2) ("yf" 2) ("yh" 2) ("ηg" 2) ("π" 2) ("σ" 2) ("ω" 2)
 ("accquired" 1) ("acidophilic" 1) ("anionic" 1) ("bert" 1)
 ("carbamidomethyl" 1) ("carboxyethyl" 1) ("catalzyed" 1) ("chinese" 1)
 ("cribiform" 1) ("deamidation" 1) ("detectability" 1) ("dewaxed" 1)
 ("differed" 1) ("etoh" 1) ("flowchart" 1) ("gsh" 1) ("haematoxylin" 1)
 ("hydrochloride" 1) ("hydrolytic" 1) ("immunobloting" 1) ("immunogenic" 1)
 ("interactome" 1) ("intraluminal" 1) ("iodoacetamide" 1) ("kymography" 1)
 ("micropapillary" 1) ("microtome" 1) ("myoepithelial" 1) ("ncbi" 1) ("nih" 1)
 ("nucleoskeletal" 1) ("papillae" 1) ("phophorylation" 1) ("phosphine" 1)
 ("polyploidy" 1) ("rehydrated" 1) ("smai" 1) ("solubilization" 1) ("spatio" 1)
 ("unavailability" 1) ("unpublised" 1) ("uu" 1) ("ρ" 1)
 ("aauaggagaucaagaguuu" 0) ("aax" 0) ("abcam" 0) ("abimed" 0) ("abnova" 0)
 ("accustain" 0) ("aceview" 0) ("achroplan" 0) ("acritical" 0)
 ("acucugcaagccuuaca" 0) ("addgene" 0) ("adgfp" 0) ("adneg" 0) ("adtre" 0)
 ("afm" 0) ("african" 0) ("agaaggagcugcuggaaaa" 0) ("agacggctccc" 0)
 ("agcgcaggc" 0) ("aggauaggaucuggaucau" 0) ("agilent" 0) ("aguirre" 0)
 ("ahr" 0) ("ahrc" 0) ("aicar" 0) ("ajs" 0) ("aldrich" 0) ("alexafluor" 0)
 ("alexis" 0) ("allendale" 0) ("allstars" 0) ("amanchy" 0) ("amara" 0)
 ("amaxa" 0) ("ambion" 0) ("amercham" 0) ("american" 0) ("amersham" 0)
 ("amershan" 0) ("amgen" 0) ("amlvdsfspeasgaveenlhddthk" 0) ("amplitaq" 0)
 ("amsterdam" 0) ("amv" 0) ("anaheim" 0) ("anderson" 0) ("andover" 0)
 ("angeles" 0) ("aotf" 0) ("apaf" 0) ("apoptag" 0) ("arizona" 0) ("arnt" 0)
 ("arrieumerlou" 0) ("asgaveen" 0) ("ashland" 0) ("atcc" 0)
 ("atggccgtcatggcgccccg" 0) ("atggtccagctagtttatagg" 0) ("atlanta" 0)
 ("augacgccac" 0) ("austin" 0) ("autoinhibition" 0) ("axiophot" 0)
 ("axiovision" 0) ("axxora" 0) ("babco" 0) ("bae" 0) ("baec" 0) ("baltimore" 0)
 ("bamhi" 0) ("bangladesh" 0) ("bannockburn" 0) ("barbara" 0) ("barnes" 0)
 ("basf" 0) ("bcrmediated" 0) ("beckman" 0) ("becton" 0) ("bedford" 0)
 ("behringwerke" 0) ("belkin" 0) ("bengal" 0) ("bern" 0) ("bernard" 0)
 ("bertani" 0) ("berthold" 0) ("bestatin" 0) ("bethesda" 0) ("beverly" 0)
 ("bhk" 0) ("bhlh" 0) ("bhmt" 0) ("biacore" 0) ("billerica" 0)
 ("bioanalyzer" 0) ("bioconductor" 0) ("biogenex" 0) ("biolabs" 0)
 ("biologicals" 0) ("biomax" 0) ("biomol" 0) ("biophysics" 0) ("biorad" 0)
 ("bioreagents" 0) ("bioresearch" 0) ("bioresources" 0) ("biosoftware" 0)
 ("biosource" 0) ("biosystems" 0) ("biotech" 0) ("biotinated" 0)
 ("biovision" 0) ("biowhittaker" 0) ("bioworks" 0) ("birmingham" 0)
 ("bistris" 0) ("bjab" 0) ("bluescript" 0) ("bluescriptii" 0) ("boehringer" 0)
 ("bonferroni" 0) ("bosc" 0) ("boston" 0) ("boyden" 0) ("bpe" 0) ("bradford" 0)
 ("braunschweig" 0) ("brdu" 0) ("brij" 0) ("brl" 0) ("brompton" 0) ("bsa" 0)
 ("bstxi" 0) ("btk" 0) ("buchler" 0) ("burkitt" 0) ("burlington" 0)
 ("burridge" 0) ("caack" 0) ("caagagagcugaagacuau" 0)
 ("caagtggatggcaattgagtcc" 0) ("caagtggtgggtctc" 0) ("caax" 0)
 ("cacguguggccuguucuucua" 0) ("cack" 0) ("cacl" 0) ("calbichem" 0)
 ("calbiochem" 0) ("california" 0) ("calu" 0) ("camarillo" 0) ("cambridge" 0)
 ("camki" 0) ("camkkα" 0) ("camkkβ" 0) ("camon" 0) ("canada" 0) ("cantley" 0)
 ("cardine" 0) ("carl" 0) ("carlsbad" 0) ("carolina" 0) ("carolyn" 0)
 ("carpinteria" 0) ("casanova" 0) ("casΔsd" 0) ("casΔsrc" 0)
 ("catagtcgacctagaatctataaaatgcatgtg" 0) ("caucasian" 0)
 ("cauugccaaggucagcgau" 0) ("cayla" 0) ("cbp" 0) ("cbs" 0) ("cbywt" 0)
 ("ccc" 0) ("ccd" 0) ("ccgaagcggaaactttac" 0) ("ccl" 0) ("cdki" 0) ("cdks" 0)
 ("cdnas" 0) ("cecile" 0) ("celsius" 0) ("cfm" 0) ("cfp" 0) ("channing" 0)
 ("chcl" 0) ("chemicon" 0) ("chemidoc" 0) ("cheshire" 0) ("chomczynski" 0)
 ("chou" 0) ("chx" 0) ("ciap" 0) ("clarita" 0) ("clb" 0) ("clk" 0)
 ("clontech" 0) ("clustalw" 0) ("cma" 0) ("cmv" 0) ("cn" 0) ("cnbr" 0)
 ("colin" 0) ("colorado" 0) ("compix" 0) ("confirmatory" 0) ("contralateral" 0)
 ("cooh" 0) ("coolsnap" 0) ("corbett" 0) ("costa" 0) ("costar" 0) ("covance" 0)
 ("cowden" 0) ("crk" 0) ("crkii" 0) ("crl" 0) ("crna" 0) ("csa" 0)
 ("ctcgcctatgtgagcggtggaggc" 0) ("ctctacctctgtgaagggcgcgaatg" 0) ("ctgf" 0)
 ("cucuccugauguagcacuuaa" 0) ("cugacucagaacguggacc" 0) ("cultureware" 0)
 ("curie" 0) ("cyclina" 0) ("cyp" 0) ("cytoscape" 0) ("dack" 0) ("dako" 0)
 ("dallas" 0) ("dana" 0) ("danvers" 0) ("dapi" 0) ("darmstadt" 0) ("daudi" 0)
 ("dbest" 0) ("dbl" 0) ("dcfhda" 0) ("dcis" 0) ("dda" 0) ("deae" 0)
 ("deisenhofen" 0) ("deltar" 0) ("denmark" 0) ("denver" 0) ("deutsche" 0)
 ("dfhcc" 0) ("dharmacon" 0) ("dianova" 0) ("dickinson" 0) ("diego" 0)
 ("digitonin" 0) ("dimnf" 0) ("dionex" 0) ("dlg" 0) ("dme" 0) ("dmem" 0)
 ("dmil" 0) ("dmirbe" 0) ("dmso" 0) ("dounce" 0) ("doxycycline" 0) ("dpty" 0)
 ("drhodamine" 0) ("dsred" 0) ("dtdt" 0) ("dtt" 0) ("dulbecco" 0) ("duluth" 0)
 ("dumaz" 0) ("duncan" 0) ("dundee" 0) ("dutp" 0) ("dαm" 0) ("ebioscience" 0)
 ("ebm" 0) ("ecacc" 0) ("ecadcd" 0) ("ecfp" 0) ("ecm" 0) ("ecori" 0)
 ("ecorv" 0) ("ecs" 0) ("edp" 0) ("edta" 0) ("egdy" 0) ("eggenstein" 0)
 ("egta" 0) ("electrics" 0) ("elisa" 0) ("elmer" 0) ("elmo" 0) ("elwd" 0)
 ("emd" 0) ("endy" 0) ("england" 0) ("entrez" 0) ("ephb" 0) ("ephrina" 0)
 ("epidemiologic" 0) ("epool" 0) ("eppendorf" 0) ("eppendorff" 0) ("epson" 0)
 ("erbb" 0) ("ernst" 0) ("escherichia" 0) ("esv" 0) ("etrsrh" 0)
 ("etrsrhssypagtee" 0) ("eugene" 0) ("eurogentec" 0) ("facs" 0)
 ("facscalibur" 0) ("facstar" 0) ("famos" 0) ("farber" 0) ("farmingdale" 0)
 ("fbs" 0) ("fdc" 0) ("fg" 0) ("fgf" 0) ("fgfr" 0) ("finetek" 0) ("finland" 0)
 ("finnigan" 0) ("fitc" 0) ("fitzgerald" 0) ("florida" 0) ("flowjo" 0)
 ("fluar" 0) ("fluoroblok" 0) ("fluoromount" 0) ("fluoroscan" 0)
 ("fluoroskan" 0) ("fluotar" 0) ("focally" 0) ("foxo" 0)
 ("fqpseeqqqtedelqdk" 0) ("framingham" 0) ("france" 0) ("francisco" 0)
 ("fremont" 0) ("freund" 0) ("frnkΔfat" 0) ("fromatcc" 0) ("frs" 0) ("ftrf" 0)
 ("fugene" 0) ("fujix" 0) ("fukuda" 0) ("fullerton" 0) ("fura" 0)
 ("fyndependent" 0) ("gaacaacgguggagauuuu" 0) ("gaacagaucugaugaauga" 0)
 ("gaaccatcagagtgcctgtctcgcttcc" 0) ("gaagagacuuuccucauug" 0) ("gagacc" 0)
 ("gaithersburg" 0) ("galtase" 0)
 ("gattgtcgacctagaatctagtaaatgcatggctatcaaatgtgtcc" 0) ("gbm" 0)
 ("gcagggtcgtcaatgctc" 0) ("gcc" 0) ("gccgagcactatcctctg" 0) ("gdc" 0)
 ("geml" 0) ("genbank" 0) ("geneband" 0) ("genejuice" 0) ("genepattern" 0)
 ("genepharma" 0) ("genesilencer" 0) ("genetools" 0) ("genway" 0) ("german" 0)
 ("germany" 0) ("ggacagcgaaggcaagaga" 0) ("ggagggaguuugcaaaguu" 0)
 ("ggaggtttcc" 0) ("ggc" 0) ("ggccctgatagtccctttgccaacctgggcgcc" 0) ("ggg" 0)
 ("gggagccgtcttcccagccctcaggaatctctgggtgcccc" 0)
 ("ggggcacccagagattcctgagggctggga" 0) ("gggrnyyycc" 0)
 ("ggucgacagugguguguau" 0) ("ggugaagaagggcguccaa" 0) ("ggugacgccuucagcauga" 0)
 ("ghiso" 0) ("gibco" 0) ("gmbh" 0) ("graphpad" 0) ("graphpadprism" 0)
 ("grb" 0) ("grd" 0) ("griot" 0) ("gsk" 0) ("gtaaatgcatgtgaaattctacc" 0)
 ("gtcgtgaaggttggagtcaag" 0) ("gtgacatccatgtgaaaat" 0) ("gtn" 0) ("gts" 0)
 ("gttagcatatacactatcatttgc" 0) ("guizhou" 0) ("gycoblue" 0) ("gygi" 0)
 ("haenszeltest" 0) ("hahn" 0) ("hamamatsu" 0) ("hamburg" 0) ("hampton" 0)
 ("harefield" 0) ("hbec" 0) ("hbecs" 0) ("hcl" 0) ("hco" 0) ("hcx" 0)
 ("hdac" 0) ("hddpir" 0) ("hddthk" 0) ("heidelberg" 0) ("helf" 0)
 ("helsinki" 0) ("hepes" 0) ("hephb" 0) ("hercules" 0) ("herndon" 0) ("hfba" 0)
 ("hff" 0) ("hgfr" 0) ("hifive" 0) ("hillsborough" 0) ("hindiii" 0)
 ("hiperfect" 0) ("hispeed" 0) ("hlmvec" 0) ("hmec" 0) ("hmve" 0) ("hmvec" 0)
 ("hntg" 0) ("hodgkin" 0) ("hoechst" 0) ("homer" 0) ("hopkins" 0) ("howard" 0)
 ("hpaec" 0) ("hpb" 0) ("hpo" 0) ("hq" 0) ("hras" 0) ("hrluc" 0) ("hrmec" 0)
 ("hrmecs" 0) ("htb" 0) ("htbe" 0) ("hughes" 0) ("husar" 0) ("huve" 0)
 ("huvec" 0) ("huynh" 0) ("hv" 0) ("hybond" 0) ("hyclone" 0) ("hz" 0)
 ("iacuc" 0) ("icn" 0) ("icq" 0) ("idc" 0) ("ifns" 0) ("igepal" 0) ("igf" 0)
 ("igov" 0) ("igrov" 0) ("ihc" 0) ("illinois" 0) ("imac" 0) ("imagej" 0)
 ("imagequant" 0) ("imgenex" 0) ("immobilion" 0) ("immobilon" 0) ("immunex" 0)
 ("immunoadsorbed" 0) ("immunochemicals" 0) ("immunologicals" 0)
 ("immunoresearch" 0) ("immunotech" 0) ("imovie" 0) ("improvision" 0)
 ("imunofluoresence" 0) ("india" 0) ("indianapolis" 0) ("indofine" 0)
 ("innogenetics" 0) ("innotech" 0) ("intergen" 0) ("intramuscular" 0)
 ("intriguingly" 0) ("invitrogen" 0) ("invitrogene" 0) ("iowa" 0) ("iplab" 0)
 ("ipswich" 0) ("iptg" 0) ("irb" 0) ("irccs" 0) ("irvine" 0) ("isehara" 0)
 ("isotopengeraete" 0) ("israel" 0) ("italy" 0) ("ivl" 0) ("jackson" 0)
 ("jak" 0) ("jakob" 0) ("james" 0) ("jenoptik" 0) ("jerusalem" 0) ("jetpei" 0)
 ("jetsi" 0) ("jmd" 0) ("johns" 0) ("jolia" 0) ("jolla" 0) ("jose" 0) ("jrt" 0)
 ("karolinska" 0) ("kcl" 0) ("kdia" 0) ("keith" 0) ("keller" 0) ("kentucky" 0)
 ("kettering" 0) ("kidlington" 0) ("kimmon" 0) ("kirkland" 0) ("klenow" 0)
 ("klentaq" 0) ("klh" 0) ("klode" 0) ("knn" 0) ("kodak" 0) ("koh" 0)
 ("koretzky" 0) ("kpc" 0) ("kpni" 0) ("kramer" 0) ("kruskal" 0) ("ktkk" 0)
 ("kwon" 0) ("kyoto" 0) ("labsystems" 0) ("laemmli" 0) ("lafayette" 0)
 ("lakewood" 0) ("lambda" 0) ("laserscan" 0) ("lasersharp" 0) ("lausen" 0)
 ("lazzaro" 0) ("lcc" 0) ("lcq" 0) ("leandro" 0) ("leica" 0) ("leitz" 0)
 ("leopold" 0) ("lexington" 0) ("licor" 0) ("limk" 0) ("lindau" 0)
 ("lipofectamine" 0) ("littleton" 0) ("lmna" 0) ("lnmm" 0) ("lns" 0)
 ("logan" 0) ("lonza" 0) ("lorton" 0) ("louis" 0) ("ltq" 0) ("luminoskan" 0)
 ("luria" 0) ("lwd" 0) ("lzrs" 0) ("mabs" 0) ("macara" 0) ("macvector" 0)
 ("madison" 0) ("maeda" 0) ("magnegst" 0) ("mahajan" 0) ("manassas" 0)
 ("manhasset" 0) ("mannheim" 0) ("mapkand" 0) ("marburg" 0) ("marienfeld" 0)
 ("marshall" 0) ("maryland" 0) ("masatoshi" 0) ("massachusetts" 0) ("masson" 0)
 ("mathworks" 0) ("matlab" 0) ("mayer" 0) ("mayo" 0) ("mbf" 0) ("mcbain" 0)
 ("mccoy" 0) ("mcf" 0) ("mcgill" 0) ("mcmaster" 0) ("mda" 0) ("mdah" 0)
 ("mdbk" 0) ("mecn" 0) ("meier" 0) ("meir" 0) ("melles" 0) ("melville" 0)
 ("merck" 0) ("mergentheim" 0) ("mesa" 0) ("metamorph" 0) ("mgcl" 0) ("mhz" 0)
 ("michelle" 0) ("michigan" 0) ("michrom" 0) ("microimaging" 0) ("micromax" 0)
 ("microsoft" 0) ("microsystems" 0) ("migminduced" 0) ("mikroorganismen" 0)
 ("milford" 0) ("milipore" 0) ("millipore" 0) ("minneapolis" 0) ("minnesota" 0)
 ("mirus" 0) ("mississauga" 0) ("missouri" 0) ("mj" 0) ("mmp" 0) ("mncl" 0)
 ("moloney" 0) ("montreal" 0) ("mpeg" 0) ("mpins" 0) ("mpnst" 0)
 ("mqeatpsaqatnetqmcyasldhsvk" 0) ("mr" 0) ("mrc" 0) ("mrck" 0) ("mrlb" 0)
 ("mtt" 0) ("mubras" 0) ("multiimage" 0) ("multiphor" 0) ("multiprobe" 0)
 ("mulv" 0) ("mw" 0) ("mylk" 0) ("myrakt" 0) ("männedorf" 0) ("naaso" 0)
 ("nahco" 0) ("nakatpase" 0) ("nanjing" 0) ("nanoparticle" 0) ("nasba" 0)
 ("natick" 0) ("navanadate" 0) ("navo" 0) ("ncoi" 0) ("neomarkers" 0)
 ("netherlands" 0) ("netphos" 0) ("networkin" 0) ("niiro" 0) ("nikon" 0)
 ("ninta" 0) ("nishizumi" 0) ("nkrf" 0) ("nls" 0) ("nlss" 0) ("nmda" 0)
 ("nmmlck" 0) ("nocht" 0) ("nonidet" 0) ("nonmigrating" 0) ("noonan" 0)
 ("nort" 0) ("norway" 0) ("norwegian" 0) ("novabiochem" 0) ("novagen" 0)
 ("novascan" 0) ("novex" 0) ("novus" 0) ("nrg" 0) ("nsclc" 0) ("nuak" 0)
 ("nucleofector" 0) ("nunc" 0) ("nupage" 0) ("nutacon" 0) ("oligofectamine" 0)
 ("olympus" 0) ("omniscript" 0) ("ontario" 0) ("openlab" 0) ("optimem" 0)
 ("orbigen" 0) ("orbitrap" 0) ("orca" 0) ("organon" 0) ("oslo" 0) ("paa" 0)
 ("pae" 0) ("pak" 0) ("palo" 0) ("panvera" 0) ("parp" 0) ("patrick" 0)
 ("pbabe" 0) ("pbd" 0) ("pblcpcs" 0) ("pbls" 0) ("pbluescript" 0) ("pbmcs" 0)
 ("pbr" 0) ("pbs" 0) ("pbst" 0) ("pca" 0) ("pcefl" 0) ("pci" 0) ("pcite" 0)
 ("pcl" 0) ("pcm" 0) ("pcrii" 0) ("pd" 0) ("pdbu" 0) ("pdgfrβ" 0) ("pdnr" 0)
 ("pdsred" 0) ("pdtc" 0) ("pebg" 0) ("pecfp" 0) ("pef" 0) ("pegfp" 0)
 ("peifer" 0) ("pennsylvania" 0) ("penstrep" 0) ("perbio" 0) ("percoll" 0)
 ("perinatal" 0) ("perkin" 0) ("perkinelmer" 0) ("perseptive" 0) ("peterson" 0)
 ("peyfp" 0) ("pfa" 0) ("pflag" 0) ("pfu" 0) ("pgad" 0) ("pgem" 0) ("pgex" 0)
 ("phagemid" 0) ("pharmacia" 0) ("pharmatech" 0) ("pharmingen" 0)
 ("philadelphia" 0) ("phosida" 0) ("phosphoakt" 0) ("phosphoerk" 0)
 ("phosphohistone" 0) ("phosphomapk" 0) ("photonics" 0) ("photoshop" 0)
 ("phrl" 0) ("pico" 0) ("picofrit" 0) ("picower" 0) ("pikk" 0) ("pikks" 0)
 ("pim" 0) ("piscataway" 0) ("pittsburgh" 0) ("pjnk" 0) ("pkbα" 0) ("pkcγ" 0)
 ("planck" 0) ("planfluor" 0) ("plastek" 0) ("plk" 0) ("plogos" 0) ("plove" 0)
 ("plys" 0) ("pml" 0) ("pmscv" 0) ("pmsf" 0) ("pmx" 0) ("pns" 0)
 ("polyglutyr" 0) ("polyglutyrp" 0) ("polymount" 0) ("polyplus" 0)
 ("polysciences" 0) ("ponceau" 0) ("poros" 0) ("powerblot" 0) ("pppppv" 0)
 ("pppppvdytedee" 0) ("pqcxip" 0) ("pqe" 0) ("preston" 0) ("primerbank" 0)
 ("princeton" 0) ("prlr" 0) ("probasin" 0) ("promega" 0) ("promonocytic" 0)
 ("psm" 0) ("psrα" 0) ("pssrα" 0) ("psuper" 0) ("ptata" 0) ("ptdinsp" 0)
 ("ptepy" 0) ("ptgpy" 0) ("ptgs" 0) ("ptms" 0) ("ptnt" 0) ("ptyr" 0)
 ("pulser" 0) ("pvdf" 0) ("px" 0) ("pyed" 0) ("pyeei" 0) ("pΔfat" 0) ("qc" 0)
 ("qiagen" 0) ("qiaquick" 0) ("qik" 0) ("qpcr" 0) ("qq" 0) ("qrt" 0) ("qsk" 0)
 ("qstar" 0) ("qt" 0) ("quantione" 0) ("quantitect" 0) ("quickchange" 0)
 ("quicktime" 0) ("quikchange" 0) ("racql" 0) ("rafcaax" 0) ("ramos" 0)
 ("rasband" 0) ("rasgrp" 0) ("rasgtpase" 0) ("ravid" 0) ("renilla" 0)
 ("rensselaer" 0) ("resgen" 0) ("resolver" 0) ("reticulocyte" 0) ("reynolds" 0)
 ("rhoa" 0) ("rhogaps" 0) ("rhogdi" 0) ("rhou" 0) ("richmond" 0) ("rksasls" 0)
 ("rlb" 0) ("rnaimax" 0) ("rneasy" 0) ("roche" 0) ("rochester" 0)
 ("rockford" 0) ("rockii" 0) ("rockville" 0) ("rosetta" 0) ("roskilde" 0)
 ("rpmi" 0) ("rprgqrd" 0) ("rrardkalsggkrketlv" 0) ("rsf" 0) ("rsxpsxp" 0)
 ("rtc" 0) ("rtg" 0) ("rtpgrpl" 0) ("rtta" 0) ("ruediger" 0) ("rwpe" 0)
 ("rxxxpsxp" 0) ("sacchi" 0) ("safestain" 0) ("sagi" 0) ("sahrm" 0)
 ("sakura" 0) ("salk" 0) ("sammlung" 0) ("santa" 0) ("santacruz" 0) ("sarhm" 0)
 ("scansite" 0) ("scd" 0) ("schurmann" 0) ("schwannoma" 0) ("schwartz" 0)
 ("sciex" 0) ("scita" 0) ("sck" 0) ("scripps" 0) ("sds" 0) ("seattle" 0)
 ("sebolt" 0) ("sedimentation" 0) ("selecto" 0) ("sepharosetm" 0) ("sequist" 0)
 ("serotec" 0) ("sfk" 0) ("shb" 0) ("shimogyo" 0) ("shugosin" 0) ("siahr" 0)
 ("siarnt" 0) ("sicontrol" 0) ("sigfp" 0) ("signalchem" 0) ("sik" 0)
 ("silac" 0) ("simplyblue" 0) ("sinai" 0) ("siport" 0) ("siquest" 0)
 ("siscx" 0) ("sloan" 0) ("slpi" 0) ("slpl" 0) ("snabi" 0) ("snf" 0) ("snk" 0)
 ("snp" 0) ("snrk" 0) ("soriano" 0) ("sostfx" 0) ("spafas" 0) ("spallanzani" 0)
 ("spearman" 0) ("spectrafluor" 0) ("spectramax" 0) ("spss" 0) ("sqaveeni" 0)
 ("sqaveenl" 0) ("ssh" 0) ("stagetips" 0) ("stanford" 0) ("stef" 0)
 ("stepone" 0) ("stockholm" 0) ("stratagene" 0) ("sunnyvale" 0)
 ("superscript" 0) ("supersignal" 0) ("sutter" 0) ("sutton" 0) ("sv" 0)
 ("sweden" 0) ("swiss" 0) ("swissprot" 0) ("switzerland" 0) ("sybr" 0)
 ("syf" 0) ("syngene" 0) ("sypagte" 0) ("syyweie" 0) ("taichung" 0)
 ("taipei" 0) ("taiwan" 0) ("takara" 0) ("takeichi" 0) ("targetplus" 0)
 ("tbs" 0) ("tbst" 0) ("tccagtagggatgccagc" 0) ("tcep" 0) ("tcga" 0) ("tcid" 0)
 ("tcn" 0) ("tcrstimulated" 0) ("tebu" 0) ("tecan" 0) ("teco" 0) ("tedee" 0)
 ("tekan" 0) ("teknika" 0) ("temecula" 0) ("temsirolimus" 0) ("teruel" 0)
 ("texas" 0) ("tfa" 0) ("tgaaggtcggagtcaacggatttggt" 0)
 ("tgggcgcctggtcaccagggctgctt" 0) ("tgtctcacagagcgagaaggtgtcagg" 0)
 ("thekras" 0) ("thermofinnigan" 0) ("thermolab" 0) ("tiam" 0) ("titertek" 0)
 ("tkb" 0) ("tlc" 0) ("tnt" 0) ("tocris" 0) ("tokai" 0) ("tokyo" 0)
 ("topflash" 0) ("toronto" 0) ("tpip" 0) ("tpte" 0) ("transam" 0)
 ("trevigen" 0) ("trifectin" 0) ("trishcl" 0) ("tritc" 0) ("trizol" 0)
 ("tropenmedizin" 0) ("tsai" 0) ("ttg" 0) ("ttgase" 0)
 ("ttttcagctgctaggctctagtaaatgcatgtgaaattctacc" 0)
 ("ttttcagctgctaggctctagtaaatgcatgtgaaattctaccaaagagtttg" 0) ("tucson" 0)
 ("tukey" 0) ("tunel" 0) ("tx" 0) ("tyrode" 0) ("uaaaugagcagcuguacaa" 0)
 ("unliganded" 0) ("unreacted" 0) ("uppsala" 0) ("urbana" 0) ("usf" 0)
 ("uuggcugggacacugacau" 0) ("valencia" 0) ("vdsfspe" 0) ("vectashield" 0)
 ("veeco" 0) ("viewplates" 0) ("viratrak" 0) ("virginia" 0) ("vogelstein" 0)
 ("volocity" 0) ("vpvpppvpprrr" 0) ("wallis" 0) ("waltham" 0) ("washington" 0)
 ("watertown" 0) ("wayne" 0) ("wetzlar" 0) ("whitney" 0) ("wiesbaden" 0)
 ("wilhelm" 0) ("willco" 0) ("wisconsin" 0) ("wnt" 0) ("woburn" 0)
 ("worcester" 0) ("worthington" 0) ("wrobel" 0) ("wst" 0) ("wuxi" 0) ("wwox" 0)
 ("wyeth" 0) ("xbai" 0) ("xhoi" 0) ("xl" 0) ("xnl" 0) ("xrs" 0) ("xxl" 0)
 ("xxm" 0) ("yaape" 0) ("yale" 0) ("yenl" 0) ("yfp" 0) ("ylvv" 0) ("ymc" 0)
 ("yokogawa" 0) ("york" 0) ("yoshitomi" 0) ("ypydvpdyas" 0) ("ytt" 0) ("yu" 0)
 ("yvnv" 0) ("yxn" 0) ("yxxl" 0) ("yxxm" 0) ("zeiss" 0) ("zmp" 0) ("zn" 0)
 ("zs" 0) ("zvad" 0) ("Δph" 0) ("Δyy" 0) ("ΔΔc" 0) ("αdh" 0) ("γatp" 0)
 ("μf" 0) ("ψcre" 0))

  )


(defparameter *comlex-new-words-counts*
  '(("ion" 11501) ("la" 8663) ("ma" 5850) ("mi" 4755) ("mo" 4584) ("id" 3862)
 ("ad" 3430) ("sin" 3289) ("rat" 3073) ("late" 2682) ("men" 2172) ("cat" 2028)
 ("pi" 1705) ("end" 1676) ("sit" 1515) ("par" 1488) ("inter" 1333) ("fa" 1242)
 ("sub" 1196) ("main" 1108) ("port" 1024) ("man" 988) ("age" 944)
 ("pathway" 827) ("rim" 811) ("type" 792) ("get" 791) ("differ" 785)
 ("log" 743) ("tab" 705) ("format" 687) ("ring" 602) ("duct" 551) ("row" 541)
 ("shed" 520) ("grow" 499) ("blot" 498) ("wild" 496) ("dire" 469) ("rap" 468)
 ("due" 467) ("ice" 456) ("go" 426) ("script" 414) ("well" 410) ("bodies" 372)
 ("transcript" 370) ("acid" 366) ("body" 366) ("buffer" 360) ("old" 358)
 ("life" 344) ("poly" 327) ("stem" 321) ("hypo" 312) ("ester" 305) ("play" 303)
 ("lab" 302) ("motif" 301) ("incubated" 298) ("owing" 297) ("ret" 290)
 ("amino" 283) ("precipitation" 279) ("micro" 277) ("race" 277) ("trace" 273)
 ("nucleus" 264) ("sec" 262) ("thin" 255) ("tail" 254) ("gated" 253)
 ("tip" 251) ("son" 250) ("negative" 245) ("extra" 241) ("unit" 241)
 ("location" 240) ("arsenic" 232) ("dog" 226) ("ark" 218) ("pan" 218)
 ("potential" 213) ("strong" 213) ("lock" 211) ("stained" 205) ("tract" 195)
 ("respect" 193) ("washed" 192) ("net" 190) ("hose" 189) ("published" 189)
 ("precipitated" 183) ("total" 182) ("side" 173) ("respective" 172)
 ("homo" 166) ("knock" 166) ("unpublished" 166) ("lie" 165) ("soft" 163)
 ("tens" 163) ("focal" 159) ("adaptor" 157) ("fusion" 157) ("city" 152)
 ("face" 152) ("essential" 151) ("rose" 150) ("exposure" 148) ("product" 148)
 ("lymph" 147) ("cross" 146) ("cap" 145) ("lane" 143) ("bead" 142) ("dot" 142)
 ("acids" 140) ("cover" 139) ("invasion" 138) ("character" 137) ("mini" 137)
 ("beads" 133) ("dual" 133) ("subsequent" 133) ("point" 132) ("air" 131)
 ("rabbit" 130) ("label" 129) ("muscle" 129) ("fine" 128) ("junction" 127)
 ("ware" 127) ("barrier" 126) ("structure" 126) ("confirmed" 125) ("light" 125)
 ("sum" 123) ("chemical" 121) ("technology" 120) ("matrix" 119)
 ("software" 119) ("plays" 118) ("silencing" 118) ("stand" 118)
 ("according" 116) ("coupled" 116) ("progress" 116) ("contact" 115)
 ("pair" 115) ("stems" 115) ("embryo" 114) ("lid" 113) ("units" 113)
 ("combination" 112) ("chase" 111) ("purchased" 111) ("ham" 107)
 ("available" 106) ("supplemented" 106) ("case" 105) ("marker" 105)
 ("core" 104) ("exposed" 102) ("mix" 102) ("progression" 102) ("topic" 102)
 ("phosphate" 99) ("plated" 96) ("correlate" 95) ("viral" 95) ("virus" 95)
 ("temperature" 94) ("labeled" 93) ("stability" 93) ("mast" 92) ("dish" 91)
 ("junctions" 91) ("manufacture" 91) ("phase" 91) ("post" 91) ("text" 91)
 ("come" 90) ("copy" 90) ("reverse" 89) ("dose" 88) ("production" 88)
 ("manufacturer" 87) ("conjugated" 86) ("prepared" 86) ("secondary" 86)
 ("stress" 86) ("fixed" 85) ("infected" 84) ("overnight" 84) ("room" 83)
 ("biochemical" 82) ("basic" 81) ("kit" 81) ("clinic" 78) ("played" 78)
 ("substitution" 78) ("back" 77) ("distribution" 77) ("tube" 75) ("turn" 75)
 ("anchorage" 74) ("fit" 74) ("spreading" 74) ("damage" 73) ("final" 72)
 ("partial" 72) ("suspended" 72) ("defined" 71) ("focus" 70) ("formal" 70)
 ("order" 70) ("pull" 70) ("equal" 69) ("hall" 69) ("quantitative" 69)
 ("disc" 68) ("sac" 67) ("sodium" 67) ("polymer" 66) ("produced" 66)
 ("classic" 65) ("colony" 65) ("interest" 65) ("marked" 65) ("monoclonal" 64)
 ("nuclei" 64) ("seeded" 64) ("colonies" 63) ("area" 62) ("protocol" 62)
 ("assayed" 61) ("made" 61) ("run" 61) ("separated" 61) ("classical" 60)
 ("lanes" 60) ("located" 60) ("reagent" 60) ("take" 59) ("hole" 58)
 ("indirect" 58) ("morphology" 58) ("primer" 58) ("ray" 58) ("review" 58)
 ("science" 58) ("coated" 57) ("cold" 57) ("network" 57) ("plastic" 57)
 ("reference" 57) ("self" 57) ("tumour" 57) ("chain" 56) ("dimension" 56)
 ("goat" 56) ("injection" 56) ("oil" 56) ("pattern" 56) ("status" 56)
 ("vascular" 56) ("carried" 55) ("gift" 55) ("methyl" 55) ("slip" 55)
 ("comes" 54) ("environment" 54) ("fly" 54) ("layer" 54) ("regard" 54)
 ("specificity" 54) ("transit" 54) ("weak" 54) ("collected" 53)
 ("fluorescent" 53) ("negatively" 53) ("portion" 53) ("calculated" 52)
 ("candidate" 52) ("hybrid" 52) ("organization" 52) ("skin" 52) ("version" 52)
 ("volume" 52) ("agree" 51) ("grade" 51) ("ground" 51) ("intensity" 51)
 ("lying" 51) ("normalized" 51) ("restore" 51) ("standard" 51) ("strict" 51)
 ("bovine" 50) ("conclusion" 50) ("dramatic" 50) ("peripheral" 50) ("sham" 50)
 ("soluble" 50) ("stage" 50) ("valid" 50) ("whole" 50) ("counted" 49)
 ("evident" 49) ("preparation" 49) ("surrounding" 49) ("tight" 49) ("west" 49)
 ("western" 49) ("pore" 48) ("subgroup" 48) ("twice" 48) ("cyst" 47)
 ("formaldehyde" 47) ("loaded" 47) ("address" 46) ("mixture" 46)
 ("parental" 46) ("percent" 46) ("program" 46) ("sole" 46) ("uncouple" 46)
 ("water" 46) ("cut" 45) ("infection" 45) ("pellet" 45) ("promoter" 45)
 ("slips" 45) ("agreement" 44) ("arbor" 44) ("database" 44) ("dishes" 44)
 ("introduced" 44) ("modulation" 44) ("penicillin" 44) ("percentage" 44)
 ("slight" 44) ("solution" 44) ("streptomycin" 44) ("combined" 43)
 ("extension" 43) ("fetal" 43) ("file" 43) ("hold" 43) ("included" 43)
 ("ready" 43) ("signed" 43) ("swell" 43) ("viability" 43) ("cue" 42)
 ("density" 42) ("fiber" 42) ("harvested" 42) ("instruction" 42) ("organic" 42)
 ("passage" 42) ("predominant" 42) ("suppressive" 42) ("tandem" 42)
 ("consensus" 41) ("edge" 41) ("glutamate" 41) ("lies" 41) ("noted" 41)
 ("recognized" 41) ("toxic" 41) ("correlation" 40) ("cortical" 40)
 ("degree" 40) ("field" 40) ("mixed" 40) ("omega" 40) ("placenta" 40)
 ("statistical" 40) ("talk" 40) ("therapy" 40) ("array" 39) ("background" 39)
 ("enriched" 39) ("node" 39) ("primers" 39) ("relevant" 39) ("repeat" 39)
 ("visualize" 39) ("diluted" 38) ("docking" 38) ("instructions" 38)
 ("mammal" 38) ("match" 38) ("possess" 38) ("processed" 38) ("rise" 38)
 ("achieve" 37) ("counter" 37) ("efficiency" 37) ("explore" 37) ("internal" 37)
 ("material" 37) ("precise" 37) ("properties" 37) ("section" 37)
 ("characteristic" 36) ("engagement" 36) ("highlight" 36) ("majority" 36)
 ("permeability" 36) ("real" 36) ("static" 36) ("striking" 36)
 ("triplicate" 36) ("weight" 36) ("axis" 35) ("box" 35) ("bridge" 35)
 ("typical" 35) ("unique" 35) ("balance" 34) ("dilution" 34) ("discover" 34)
 ("empty" 34) ("fibers" 34) ("glass" 34) ("lapse" 34) ("migratory" 34)
 ("reason" 34) ("average" 33) ("brief" 33) ("plan" 33) ("preferential" 33)
 ("rear" 33) ("regeneration" 33) ("series" 33) ("arrangement" 32) ("aster" 32)
 ("cases" 32) ("chamber" 32) ("compartment" 32) ("far" 32) ("inorganic" 32)
 ("intermediate" 32) ("latter" 32) ("nature" 32) ("overall" 32) ("raft" 32)
 ("share" 32) ("untreated" 32) ("account" 31) ("camera" 31) ("center" 31)
 ("fat" 31) ("fused" 31) ("invasive" 31) ("motion" 31) ("protrusion" 31)
 ("resolved" 31) ("speculate" 31) ("stored" 31) ("cocktail" 30) ("column" 30)
 ("compete" 30) ("fluoride" 30) ("involvement" 30) ("mediator" 30)
 ("movement" 30) ("sense" 30) ("suspension" 30) ("alpha" 29) ("flux" 29)
 ("information" 29) ("male" 29) ("minimal" 29) ("radiation" 29)
 ("rearrangement" 29) ("robust" 29) ("supplemental" 29) ("template" 29)
 ("beta" 28) ("chimera" 28) ("compound" 28) ("designed" 28) ("ducts" 28)
 ("element" 28) ("emerge" 28) ("laser" 28) ("profile" 28) ("pronounced" 28)
 ("referred" 28) ("remodel" 28) ("ruffle" 28) ("sequential" 28)
 ("synthesis" 28) ("absent" 27) ("crystal" 27) ("distributed" 27) ("force" 27)
 ("mission" 27) ("mounted" 27) ("access" 26) ("adult" 26) ("argue" 26)
 ("conclude" 26) ("depicted" 26) ("dioxin" 26) ("duplex" 26) ("evaluated" 26)
 ("extracted" 26) ("flow" 26) ("mapped" 26) ("photo" 26) ("remodeling" 26)
 ("repair" 26) ("reporter" 26) ("ruffles" 26) ("sections" 26) ("slide" 26)
 ("whereby" 26) ("capacity" 25) ("competitive" 25) ("consequent" 25)
 ("documented" 25) ("exit" 25) ("fashion" 25) ("gradient" 25) ("injected" 25)
 ("objective" 25) ("replaced" 25) ("simultaneous" 25) ("blood" 24)
 ("competition" 24) ("concomitant" 24) ("correlates" 24) ("determinant" 24)
 ("drink" 24) ("drinking" 24) ("fresh" 24) ("health" 24) ("horse" 24)
 ("idea" 24) ("injury" 24) ("methanol" 24) ("periphery" 24) ("pulmonary" 24)
 ("reagents" 24) ("reorganization" 24) ("slides" 24) ("special" 24) ("spot" 24)
 ("traffic" 24) ("vision" 24) ("withdrawal" 24) ("abolished" 23)
 ("conducted" 23) ("enrichment" 23) ("entity" 23) ("exact" 23) ("head" 23)
 ("mimic" 23) ("rescued" 23) ("split" 23) ("wells" 23) ("attachment" 22)
 ("bacterial" 22) ("bad" 22) ("bear" 22) ("detergent" 22) ("distance" 22)
 ("elastic" 22) ("equipped" 22) ("future" 22) ("hydrogen" 22) ("identity" 22)
 ("logo" 22) ("mock" 22) ("monitor" 22) ("mother" 22) ("paper" 22)
 ("pooled" 22) ("quick" 22) ("radish" 22) ("saline" 22) ("scrambled" 22)
 ("source" 22) ("therapies" 22) ("toxicity" 22) ("utilized" 22) ("variance" 22)
 ("vehicle" 22) ("wan" 22) ("yeast" 22) ("antagonist" 21) ("birth" 21)
 ("care" 21) ("chromosome" 21) ("dependence" 21) ("dominantly" 21) ("donor" 21)
 ("filter" 21) ("hand" 21) ("imaging" 21) ("imply" 21) ("loose" 21) ("make" 21)
 ("notion" 21) ("pairs" 21) ("procedure" 21) ("rule" 21) ("surprising" 21)
 ("viewed" 21) ("bearing" 20) ("composed" 20) ("consisting" 20) ("correct" 20)
 ("gland" 20) ("healthy" 20) ("immobilized" 20) ("library" 20) ("list" 20)
 ("manuscript" 20) ("maximum" 20) ("merged" 20) ("relationship" 20)
 ("render" 20) ("shape" 20) ("sought" 20) ("spun" 20) ("arrest" 19)
 ("believe" 19) ("dispensable" 19) ("elicit" 19) ("extraction" 19)
 ("fields" 19) ("integrity" 19) ("minor" 19) ("module" 19) ("molar" 19)
 ("pathogen" 19) ("phenomenon" 19) ("possesses" 19) ("prognosis" 19)
 ("replica" 19) ("shuttling" 19) ("situation" 19) ("splice" 19) ("stopped" 19)
 ("video" 19) ("accompanied" 18) ("acetic" 18) ("actual" 18) ("biology" 18)
 ("boiled" 18) ("captured" 18) ("cleared" 18) ("commercial" 18)
 ("complement" 18) ("contraction" 18) ("curve" 18) ("effort" 18)
 ("elsewhere" 18) ("freshly" 18) ("hind" 18) ("horseradish" 18) ("insulin" 18)
 ("machine" 18) ("middle" 18) ("mobilization" 18) ("networks" 18) ("pipe" 18)
 ("preferred" 18) ("rafts" 18) ("redistribute" 18) ("redistribution" 18)
 ("relevance" 18) ("representative" 18) ("resin" 18) ("separation" 18)
 ("stranded" 18) ("trafficking" 18) ("triple" 18) ("abundance" 17)
 ("antagonize" 17) ("appearance" 17) ("avoid" 17) ("charged" 17)
 ("chemistry" 17) ("condensation" 17) ("constant" 17) ("interface" 17)
 ("nick" 17) ("passing" 17) ("profound" 17) ("pseudo" 17) ("recognition" 17)
 ("recycling" 17) ("regardless" 17) ("retract" 17) ("rinsed" 17) ("spin" 17)
 ("unidentified" 17) ("adaptors" 16) ("aggregation" 16) ("asked" 16)
 ("calf" 16) ("characteristics" 16) ("chick" 16) ("communication" 16)
 ("diameter" 16) ("ensure" 16) ("index" 16) ("inverted" 16) ("machinery" 16)
 ("mediators" 16) ("milk" 16) ("modest" 16) ("opposite" 16) ("optimal" 16)
 ("research" 16) ("steady" 16) ("wound" 16) ("availability" 15) ("chose" 15)
 ("circumstance" 15) ("circumstances" 15) ("colleague" 15) ("colleagues" 15)
 ("enable" 15) ("fee" 15) ("fixation" 15) ("hereafter" 15) ("immortalized" 15)
 ("indicative" 15) ("inflammation" 15) ("influx" 15) ("interpretation" 15)
 ("isolation" 15) ("leave" 15) ("limitation" 15) ("liquid" 15) ("looked" 15)
 ("naive" 15) ("parameter" 15) ("parameters" 15) ("peroxide" 15) ("purpose" 15)
 ("reside" 15) ("scanned" 15) ("smooth" 15) ("synthesized" 15) ("ultimate" 15)
 ("unaffected" 15) ("vesicle" 15) ("adherent" 14) ("aim" 14) ("alveolar" 14)
 ("antibiotic" 14) ("belong" 14) ("bone" 14) ("bring" 14) ("cable" 14)
 ("competent" 14) ("comprise" 14) ("contaminant" 14) ("contrary" 14) ("dye" 14)
 ("elasticity" 14) ("embedded" 14) ("estimate" 14) ("exception" 14)
 ("files" 14) ("gelatin" 14) ("gestation" 14) ("home" 14) ("homogenized" 14)
 ("host" 14) ("incidence" 14) ("instance" 14) ("integrate" 14) ("invade" 14)
 ("marrow" 14) ("mechanical" 14) ("minimum" 14) ("movements" 14) ("nude" 14)
 ("pivotal" 14) ("plot" 14) ("public" 14) ("reasonable" 14) ("recorded" 14)
 ("scored" 14) ("selectivity" 14) ("sharp" 14) ("smoker" 14) ("smokers" 14)
 ("transmit" 14) ("vesicles" 14) ("went" 14) ("accepted" 13) ("accordance" 13)
 ("acute" 13) ("assigned" 13) ("carbon" 13) ("compute" 13) ("diminished" 13)
 ("encompassing" 13) ("evolution" 13) ("excised" 13) ("excluded" 13)
 ("failure" 13) ("feedback" 13) ("filament" 13) ("frequency" 13) ("gamma" 13)
 ("helium" 13) ("ionizing" 13) ("lee" 13) ("memory" 13) ("moderate" 13)
 ("pocket" 13) ("polarization" 13) ("preference" 13) ("residual" 13)
 ("retraction" 13) ("risk" 13) ("scenario" 13) ("survive" 13) ("tonsil" 13)
 ("transmission" 13) ("violet" 13) ("accelerate" 12) ("adapter" 12)
 ("annotated" 12) ("antibiotics" 12) ("approved" 12) ("attached" 12)
 ("augmented" 12) ("border" 12) ("cooperative" 12) ("coordinated" 12)
 ("course" 12) ("differentiate" 12) ("digital" 12) ("discovery" 12)
 ("dissolved" 12) ("encounter" 12) ("energy" 12) ("error" 12) ("excess" 12)
 ("exclusion" 12) ("gifts" 12) ("humid" 12) ("implies" 12) ("incubator" 12)
 ("indispensable" 12) ("inferred" 12) ("input" 12) ("literature" 12)
 ("master" 12) ("nonsmoker" 12) ("nonsmokers" 12) ("offspring" 12)
 ("outgrowth" 12) ("packaging" 12) ("packed" 12) ("pig" 12) ("principal" 12)
 ("procedures" 12) ("purity" 12) ("relating" 12) ("rodent" 12) ("salt" 12)
 ("substantiate" 12) ("twofold" 12) ("versions" 12) ("vesicular" 12)
 ("vice" 12) ("vim" 12) ("assisted" 11) ("begin" 11) ("borders" 11)
 ("check" 11) ("complicated" 11) ("composition" 11) ("concur" 11)
 ("connection" 11) ("drastic" 11) ("elongated" 11) ("exported" 11)
 ("filters" 11) ("granule" 11) ("guidance" 11) ("healing" 11) ("isotope" 11)
 ("neutral" 11) ("occasion" 11) ("oxygen" 11) ("paraffin" 11) ("persisted" 11)
 ("positively" 11) ("power" 11) ("promotion" 11) ("quantify" 11) ("rabbits" 11)
 ("reminiscent" 11) ("sequestration" 11) ("signature" 11) ("spray" 11)
 ("stretch" 11) ("string" 11) ("tool" 11) ("varying" 11) ("accomplished" 10)
 ("arise" 10) ("assignment" 10) ("bath" 10) ("bright" 10) ("cervical" 10)
 ("clarify" 10) ("compacted" 10) ("compatible" 10) ("concept" 10)
 ("confined" 10) ("conflicting" 10) ("confluence" 10) ("corporation" 10)
 ("crosstalk" 10) ("dictate" 10) ("diffusely" 10) ("driver" 10) ("emission" 10)
 ("engaged" 10) ("excursion" 10) ("fibrosis" 10) ("glycol" 10) ("guide" 10)
 ("help" 10) ("indistinguishable" 10) ("intense" 10) ("interplay" 10)
 ("judge" 10) ("kindly" 10) ("lateral" 10) ("legend" 10) ("lens" 10)
 ("lived" 10) ("materials" 10) ("metabolism" 10) ("moiety" 10) ("motor" 10)
 ("noteworthy" 10) ("perimeter" 10) ("permit" 10) ("photographed" 10)
 ("plasticity" 10) ("preliminary" 10) ("project" 10) ("proximity" 10)
 ("recovery" 10) ("remark" 10) ("separable" 10) ("sequentially" 10)
 ("sequestered" 10) ("speed" 10) ("stripped" 10) ("takes" 10) ("tempting" 10)
 ("threefold" 10) ("vessel" 10) ("worthy" 10) ("actively" 9) ("argues" 9)
 ("attractive" 9) ("chemicals" 9) ("completion" 9) ("counterpart" 9)
 ("criteria" 9) ("designated" 9) ("diabetes" 9) ("donkey" 9) ("extended" 9)
 ("granules" 9) ("introduction" 9) ("laboratory" 9) ("manual" 9) ("metal" 9)
 ("mild" 9) ("mirror" 9) ("neighbor" 9) ("occasional" 9) ("opposed" 9)
 ("permanent" 9) ("personal" 9) ("perturb" 9) ("plant" 9) ("polarity" 9)
 ("recapitulate" 9) ("resides" 9) ("sheep" 9) ("space" 9) ("stringency" 9)
 ("syndrome" 9) ("temporal" 9) ("unmask" 9) ("acetate" 8) ("adjusted" 8)
 ("advantage" 8) ("alignment" 8) ("anticipate" 8) ("author" 8) ("autopsy" 8)
 ("binary" 8) ("bladder" 8) ("bud" 8) ("bundle" 8) ("bypass" 8) ("capillary" 8)
 ("chicken" 8) ("classified" 8) ("cleavage" 8) ("cohort" 8) ("connecting" 8)
 ("consecutive" 8) ("converse" 8) ("convey" 8) ("counterparts" 8) ("cysts" 8)
 ("decided" 8) ("degeneration" 8) ("delivery" 8) ("dense" 8) ("detergents" 8)
 ("determinants" 8) ("developmental" 8) ("deviation" 8) ("donated" 8)
 ("easy" 8) ("effectiveness" 8) ("emanating" 8) ("equalized" 8) ("ethylene" 8)
 ("excursions" 8) ("fall" 8) ("fed" 8) ("gap" 8) ("goal" 8) ("heart" 8)
 ("hindrance" 8) ("holds" 8) ("hybridized" 8) ("hydrocarbon" 8) ("inability" 8)
 ("independence" 8) ("insoluble" 8) ("investigator" 8) ("investigators" 8)
 ("kill" 8) ("makes" 8) ("mammals" 8) ("manipulation" 8) ("maturation" 8)
 ("mimics" 8) ("mixtures" 8) ("monkey" 8) ("movie" 8) ("phenol" 8)
 ("platform" 8) ("plausible" 8) ("positioned" 8) ("primitive" 8) ("proceed" 8)
 ("qualitative" 8) ("rats" 8) ("reader" 8) ("recurrence" 8) ("redundancy" 8)
 ("relocation" 8) ("repressive" 8) ("rotating" 8) ("scatter" 8) ("schematic" 8)
 ("scraped" 8) ("snap" 8) ("spanning" 8) ("spectrum" 8) ("steroid" 8)
 ("strain" 8) ("streak" 8) ("substituted" 8) ("tablet" 8) ("technique" 8)
 ("techniques" 8) ("touch" 8) ("tracking" 8) ("unaltered" 8) ("unrelated" 8)
 ("venous" 8) ("vessels" 8) ("wanted" 8) ("women" 8) ("administration" 7)
 ("authors" 7) ("automated" 7) ("bile" 7) ("bronchial" 7) ("categories" 7)
 ("channel" 7) ("circumvent" 7) ("coal" 7) ("coincide" 7) ("compensatory" 7)
 ("consent" 7) ("custom" 7) ("dark" 7) ("device" 7) ("diverge" 7)
 ("envelope" 7) ("female" 7) ("filaments" 7) ("film" 7) ("fluid" 7)
 ("formalin" 7) ("hanging" 7) ("herein" 7) ("interval" 7) ("microscopic" 7)
 ("mop" 7) ("moving" 7) ("nickel" 7) ("offer" 7) ("ovary" 7) ("pathological" 7)
 ("piece" 7) ("postulate" 7) ("pregnant" 7) ("progressive" 7) ("projection" 7)
 ("projections" 7) ("prompted" 7) ("sensor" 7) ("shifted" 7) ("shock" 7)
 ("sometimes" 7) ("suffering" 7) ("tubular" 7) ("unravel" 7) ("absolute" 6)
 ("accession" 6) ("accessory" 6) ("adapters" 6) ("adrenal" 6) ("adulthood" 6)
 ("aggregated" 6) ("alleviation" 6) ("annealing" 6) ("apparatus" 6)
 ("architecture" 6) ("asthma" 6) ("atomic" 6) ("basement" 6) ("cables" 6)
 ("cantilever" 6) ("cast" 6) ("centralized" 6) ("channels" 6) ("chip" 6)
 ("chloroform" 6) ("circumscribe" 6) ("clearance" 6) ("cleaved" 6)
 ("collaborate" 6) ("concentrated" 6) ("conjunction" 6) ("considerable" 6)
 ("consolidation" 6) ("consumption" 6) ("contractile" 6) ("converge" 6)
 ("cortex" 6) ("cues" 6) ("cure" 6) ("daughter" 6) ("decline" 6) ("deprive" 6)
 ("desalted" 6) ("diagnosed" 6) ("differs" 6) ("diffusion" 6) ("dimethyl" 6)
 ("diversity" 6) ("doubt" 6) ("dried" 6) ("edges" 6) ("electrostatic" 6)
 ("enables" 6) ("engineered" 6) ("evoke" 6) ("exacerbated" 6) ("exerted" 6)
 ("exponentially" 6) ("fourfold" 6) ("gauge" 6) ("grouped" 6) ("guideline" 6)
 ("guidelines" 6) ("guinea" 6) ("hierarchy" 6) ("hinge" 6) ("humanely" 6)
 ("humidity" 6) ("immersion" 6) ("immunizing" 6) ("infrared" 6)
 ("instructed" 6) ("interrupted" 6) ("labs" 6) ("lineage" 6) ("locus" 6)
 ("magnification" 6) ("maternal" 6) ("messenger" 6) ("milliliter" 6)
 ("minimize" 6) ("missing" 6) ("motorized" 6) ("multiplicity" 6) ("needle" 6)
 ("nervous" 6) ("occupied" 6) ("opportunity" 6) ("oven" 6) ("oxidation" 6)
 ("particle" 6) ("perturbation" 6) ("premature" 6) ("problem" 6) ("provider" 6)
 ("publication" 6) ("pump" 6) ("pumps" 6) ("pure" 6) ("purple" 6)
 ("quotient" 6) ("reactivated" 6) ("relaying" 6) ("repeatedly" 6)
 ("reprogram" 6) ("resultant" 6) ("rodents" 6) ("saturated" 6) ("scanner" 6)
 ("scavenger" 6) ("searched" 6) ("secreted" 6) ("sensitized" 6) ("shear" 6)
 ("sheet" 6) ("sorting" 6) ("sources" 6) ("spine" 6) ("spleen" 6) ("sputum" 6)
 ("subtraction" 6) ("tablets" 6) ("tonsils" 6) ("tony" 6) ("took" 6)
 ("touchdown" 6) ("trachea" 6) ("trend" 6) ("unlabeled" 6) ("unstructured" 6)
 ("unusual" 6) ("wave" 6) ("wheel" 6) ("wished" 6) ("apart" 5) ("aqueous" 5)
 ("arks" 5) ("ascertain" 5) ("attenuation" 5) ("caffeine" 5) ("caveat" 5)
 ("chloride" 5) ("complexity" 5) ("comprehensive" 5) ("concurrent" 5)
 ("definitively" 5) ("demand" 5) ("destruction" 5) ("deviations" 5)
 ("discriminate" 5) ("distilled" 5) ("disturb" 5) ("duplication" 5) ("egg" 5)
 ("electrical" 5) ("emphasized" 5) ("evaluation" 5) ("formula" 5) ("hamster" 5)
 ("heated" 5) ("homogeneous" 5) ("indicator" 5) ("inefficient" 5)
 ("integration" 5) ("intervals" 5) ("irrespective" 5) ("lesion" 5)
 ("magnitude" 5) ("malignancies" 5) ("manually" 5) ("margin" 5) ("newborn" 5)
 ("onset" 5) ("output" 5) ("plots" 5) ("ranked" 5) ("recommended" 5)
 ("reflected" 5) ("retrieval" 5) ("secretion" 5) ("segment" 5) ("serial" 5)
 ("shield" 5) ("slurry" 5) ("spaces" 5) ("stroke" 5) ("strokes" 5)
 ("substratum" 5) ("subtle" 5) ("susceptibility" 5) ("synchronization" 5)
 ("testis" 5) ("ultraviolet" 5) ("underscoring" 5) ("unexplored" 5)
 ("uptake" 5) ("user" 5) ("vertebrate" 5) ("virtually" 5) ("voltage" 5)
 ("abolition" 4) ("adopted" 4) ("agitation" 4) ("aided" 4) ("aligned" 4)
 ("alongside" 4) ("alto" 4) ("amplitude" 4) ("analogue" 4) ("analytical" 4)
 ("angle" 4) ("applicable" 4) ("arbitrary" 4) ("armadillo" 4) ("arrowhead" 4)
 ("arrowheads" 4) ("artery" 4) ("ascent" 4) ("atmosphere" 4) ("atrophy" 4)
 ("attempted" 4) ("augmentation" 4) ("automatically" 4) ("ball" 4) ("began" 4)
 ("behave" 4) ("bleed" 4) ("branched" 4) ("breakage" 4) ("brightness" 4)
 ("brilliant" 4) ("build" 4) ("cadmium" 4) ("cardiovascular" 4) ("careful" 4)
 ("category" 4) ("cerebral" 4) ("charcoal" 4) ("choice" 4) ("circulating" 4)
 ("circumscribes" 4) ("claimed" 4) ("classically" 4) ("closure" 4) ("clue" 4)
 ("coefficient" 4) ("compress" 4) ("computer" 4) ("computes" 4)
 ("concerning" 4) ("concerted" 4) ("concordance" 4) ("condensed" 4)
 ("confidence" 4) ("confirmation" 4) ("connective" 4) ("conspicuously" 4)
 ("constants" 4) ("controversial" 4) ("coordinately" 4) ("coordination" 4)
 ("corollary" 4) ("correction" 4) ("correctly" 4) ("cortisone" 4) ("cotton" 4)
 ("crude" 4) ("crystallography" 4) ("cutoff" 4) ("decade" 4) ("decades" 4)
 ("decay" 4) ("declines" 4) ("deep" 4) ("delineated" 4) ("demise" 4)
 ("deposit" 4) ("deprived" 4) ("deregulation" 4) ("descent" 4)
 ("destabilizing" 4) ("detached" 4) ("devoid" 4) ("diet" 4) ("directional" 4)
 ("disappearance" 4) ("disappeared" 4) ("discrepancies" 4) ("dorsal" 4)
 ("duplicate" 4) ("electrode" 4) ("electrodes" 4) ("emerges" 4) ("emphasis" 4)
 ("emulsified" 4) ("ensuing" 4) ("enteric" 4) ("envisioned" 4) ("erratic" 4)
 ("expansion" 4) ("exploration" 4) ("explorations" 4) ("external" 4)
 ("facet" 4) ("fade" 4) ("filtration" 4) ("firefly" 4) ("fish" 4) ("flag" 4)
 ("flanking" 4) ("flight" 4) ("flushed" 4) ("founded" 4) ("fragmented" 4)
 ("ganglia" 4) ("gaps" 4) ("gender" 4) ("gentle" 4) ("glacial" 4) ("gold" 4)
 ("grew" 4) ("hallmark" 4) ("helper" 4) ("hepatitis" 4) ("humidified" 4)
 ("hypothetical" 4) ("ideal" 4) ("illicit" 4) ("illumination" 4) ("impeded" 4)
 ("implanted" 4) ("imported" 4) ("inclusion" 4) ("inert" 4) ("injured" 4)
 ("insect" 4) ("intensive" 4) ("interactive" 4) ("interruption" 4)
 ("intravenous" 4) ("intricate" 4) ("ionization" 4) ("irregular" 4)
 ("lesions" 4) ("malignancy" 4) ("manipulations" 4) ("microscopically" 4)
 ("mimetic" 4) ("mimicked" 4) ("mobile" 4) ("monkeys" 4) ("motivated" 4)
 ("movies" 4) ("multiplied" 4) ("muscular" 4) ("neighbour" 4) ("nerve" 4)
 ("neural" 4) ("nitrogen" 4) ("normality" 4) ("normalization" 4) ("noticed" 4)
 ("obstructive" 4) ("obviate" 4) ("omitted" 4) ("online" 4) ("optics" 4)
 ("organizing" 4) ("overhang" 4) ("overhangs" 4) ("overlaid" 4) ("perfect" 4)
 ("persistence" 4) ("picture" 4) ("plethora" 4) ("plug" 4) ("polarized" 4)
 ("porcine" 4) ("potassium" 4) ("powered" 4) ("precast" 4) ("prevail" 4)
 ("principle" 4) ("proceeds" 4) ("programmed" 4) ("proportional" 4) ("pulse" 4)
 ("puzzle" 4) ("quadruplicate" 4) ("receive" 4) ("recommendation" 4)
 ("recommendations" 4) ("redistributes" 4) ("regenerating" 4) ("replacement" 4)
 ("reproducible" 4) ("reprogramming" 4) ("request" 4) ("researcher" 4)
 ("researchers" 4) ("resolution" 4) ("respiratory" 4) ("restriction" 4)
 ("retarded" 4) ("rotation" 4) ("rotor" 4) ("rounded" 4) ("satellite" 4)
 ("saved" 4) ("segregation" 4) ("serially" 4) ("serous" 4) ("severity" 4)
 ("shake" 4) ("sheath" 4) ("sink" 4) ("sits" 4) ("skew" 4) ("skimmed" 4)
 ("soak" 4) ("specimen" 4) ("spectral" 4) ("sperm" 4) ("spines" 4)
 ("spotted" 4) ("square" 4) ("squelch" 4) ("stacking" 4) ("stock" 4)
 ("student" 4) ("submitted" 4) ("subtracting" 4) ("supply" 4) ("surgery" 4)
 ("survey" 4) ("swab" 4) ("syringe" 4) ("thereof" 4) ("thermal" 4) ("thick" 4)
 ("traces" 4) ("trefoil" 4) ("tried" 4) ("tripartite" 4) ("tuning" 4)
 ("umbilical" 4) ("unambiguous" 4) ("unbiased" 4) ("underwent" 4)
 ("unrecognized" 4) ("urinary" 4) ("utility" 4) ("vital" 4) ("vortex" 4)
 ("warm" 4) ("witnessed" 4) ("workstation" 4) ("worthwhile" 4) ("wounds" 4)
 ("accommodate" 3) ("analogy" 3) ("antagonism" 3) ("antagonistic" 3)
 ("appreciable" 3) ("approval" 3) ("arranged" 3) ("ascribed" 3) ("brought" 3)
 ("candidates" 3) ("carrier" 3) ("coiled" 3) ("competitively" 3)
 ("computation" 3) ("conjugation" 3) ("dehydrated" 3) ("discarded" 3)
 ("discrepancy" 3) ("divergence" 3) ("doublet" 3) ("dummy" 3) ("emergence" 3)
 ("expanded" 3) ("expectation" 3) ("extensions" 3) ("fertilized" 3)
 ("fixative" 3) ("former" 3) ("formic" 3) ("gastric" 3) ("generalized" 3)
 ("height" 3) ("hierarchical" 3) ("identically" 3) ("inconsistent" 3)
 ("inference" 3) ("instances" 3) ("intimate" 3) ("joined" 3) ("juxtaposed" 3)
 ("leaves" 3) ("likewise" 3) ("limb" 3) ("median" 3) ("neutralizing" 3)
 ("nutrient" 3) ("obesity" 3) ("participant" 3) ("precluded" 3) ("promising" 3)
 ("regression" 3) ("resonance" 3) ("rested" 3) ("restoration" 3) ("rock" 3)
 ("sacrificed" 3) ("scarcity" 3) ("sentence" 3) ("standards" 3) ("stated" 3)
 ("storage" 3) ("survived" 3) ("symmetric" 3) ("synergy" 3) ("trends" 3)
 ("unappreciated" 3) ("unavailable" 3) ("undefined" 3) ("uneven" 3)
 ("unselected" 3) ("vanish" 3) ("visible" 3) ("worker" 3) ("workers" 3)
 ("absorption" 2) ("abundantly" 2) ("accessibility" 2) ("accuracy" 2)
 ("achievable" 2) ("adapted" 2) ("adipose" 2) ("adjoining" 2) ("adjudged" 2)
 ("advantages" 2) ("adversely" 2) ("aetiology" 2) ("aggressive" 2) ("agrees" 2)
 ("airflow" 2) ("airway" 2) ("alarming" 2) ("alcoholic" 2) ("alive" 2)
 ("alleviate" 2) ("alternating" 2) ("altogether" 2) ("ambiguities" 2)
 ("analogues" 2) ("analyzer" 2) ("anesthesia" 2) ("answer" 2)
 ("antagonistically" 2) ("anterior" 2) ("anvil" 2) ("approximated" 2)
 ("argon" 2) ("armpit" 2) ("aromatic" 2) ("arrests" 2) ("artefact" 2)
 ("ascorbic" 2) ("aspirated" 2) ("aspiration" 2) ("assure" 2) ("attained" 2)
 ("attributable" 2) ("atypical" 2) ("automation" 2) ("autonomous" 2)
 ("avenue" 2) ("avenues" 2) ("backgrounds" 2) ("backside" 2) ("bait" 2)
 ("balls" 2) ("bathed" 2) ("beam" 2) ("beams" 2) ("behaviour" 2) ("belly" 2)
 ("benefit" 2) ("biologist" 2) ("biologists" 2) ("blunting" 2) ("booster" 2)
 ("borne" 2) ("bowel" 2) ("boxes" 2) ("bracket" 2) ("brevity" 2) ("brightly" 2)
 ("bromide" 2) ("bulk" 2) ("bundles" 2) ("buoyant" 2) ("burning" 2) ("caged" 2)
 ("calculation" 2) ("calculations" 2) ("calibrated" 2) ("cantilevers" 2)
 ("cardiac" 2) ("catch" 2) ("cavity" 2) ("choices" 2) ("circled" 2)
 ("circular" 2) ("cirrhosis" 2) ("clarification" 2) ("cleaned" 2) ("cleft" 2)
 ("clockwise" 2) ("cohesion" 2) ("coincides" 2) ("collaboration" 2)
 ("collapsed" 2) ("combat" 2) ("comet" 2) ("committee" 2) ("communicating" 2)
 ("companies" 2) ("company" 2) ("compilation" 2) ("compiled" 2)
 ("computational" 2) ("computerized" 2) ("conceivable" 2) ("conceive" 2)
 ("concordant" 2) ("concrete" 2) ("conditional" 2) ("conducive" 2)
 ("conforming" 2) ("consecutively" 2) ("constituent" 2) ("constraint" 2)
 ("constraints" 2) ("consult" 2) ("consume" 2) ("containment" 2)
 ("contaminated" 2) ("contamination" 2) ("contemporaneous" 2) ("contention" 2)
 ("continually" 2) ("continuity" 2) ("contracted" 2) ("contradicting" 2)
 ("contradictory" 2) ("conveys" 2) ("cooled" 2) ("correlative" 2)
 ("corroborating" 2) ("counteracting" 2) ("coverage" 2) ("criterion" 2)
 ("cumulative" 2) ("cylinder" 2) ("cylinders" 2) ("deadly" 2) ("debatable" 2)
 ("debilitating" 2) ("debris" 2) ("default" 2) ("defaults" 2) ("definition" 2)
 ("delineation" 2) ("denatured" 2) ("denoting" 2) ("dependant" 2)
 ("deployment" 2) ("depolymerization" 2) ("deposits" 2) ("depressed" 2)
 ("desired" 2) ("destructive" 2) ("diagonal" 2) ("dialysis" 2) ("dichotomy" 2)
 ("diminution" 2) ("dioxide" 2) ("disabling" 2) ("discontinuities" 2)
 ("discontinuous" 2) ("disk" 2) ("disks" 2) ("dismal" 2) ("dismantling" 2)
 ("disorganized" 2) ("disparate" 2) ("disparities" 2) ("dispensed" 2)
 ("dispersed" 2) ("dispersion" 2) ("disprove" 2) ("distorted" 2) ("distress" 2)
 ("disturbance" 2) ("disturbances" 2) ("disuse" 2) ("divergent" 2)
 ("diverges" 2) ("dogma" 2) ("dogs" 2) ("doubts" 2) ("downward" 2) ("drank" 2)
 ("drill" 2) ("durable" 2) ("dystrophy" 2) ("efflux" 2) ("elaboration" 2)
 ("emitted" 2) ("employing" 2) ("enclosing" 2) ("endemic" 2) ("enlarged" 2)
 ("enlargement" 2) ("erythropoietin" 2) ("ethical" 2) ("evaporation" 2)
 ("evokes" 2) ("evolved" 2) ("excel" 2) ("excellent" 2) ("expectations" 2)
 ("exploit" 2) ("exposition" 2) ("exquisitely" 2) ("facets" 2) ("facility" 2)
 ("faint" 2) ("fatty" 2) ("favorably" 2) ("feel" 2) ("fell" 2) ("femur" 2)
 ("femurs" 2) ("fermenting" 2) ("filtrate" 2) ("finger" 2) ("fleshy" 2)
 ("flexibility" 2) ("foetal" 2) ("forth" 2) ("fox" 2) ("framework" 2)
 ("gained" 2) ("gelatine" 2) ("gelled" 2) ("generous" 2) ("genetics" 2)
 ("glands" 2) ("governed" 2) ("gradients" 2) ("grape" 2) ("grapes" 2)
 ("groove" 2) ("guardian" 2) ("hairless" 2) ("hairpin" 2) ("hallmarks" 2)
 ("halogen" 2) ("halve" 2) ("halves" 2) ("hamsters" 2) ("happen" 2)
 ("happens" 2) ("harbouring" 2) ("hill" 2) ("hollow" 2) ("homogeneity" 2)
 ("housed" 2) ("humanized" 2) ("hybrids" 2) ("hydrophilic" 2) ("illuminated" 2)
 ("immobile" 2) ("immunity" 2) ("immunization" 2) ("impinge" 2)
 ("implemented" 2) ("inaccessible" 2) ("incompetent" 2) ("inconsequential" 2)
 ("increment" 2) ("incur" 2) ("incurs" 2) ("indentation" 2)
 ("indispensability" 2) ("infectious" 2) ("infiltration" 2)
 ("infrastructure" 2) ("infrequent" 2) ("infused" 2) ("ingenuity" 2)
 ("inherent" 2) ("inoculated" 2) ("inset" 2) ("institutional" 2)
 ("instrument" 2) ("integrates" 2) ("intensively" 2) ("intermediary" 2)
 ("intermittent" 2) ("intervene" 2) ("intervention" 2) ("intestine" 2)
 ("inventory" 2) ("inversely" 2) ("invoked" 2) ("irradiating" 2)
 ("irrelevant" 2) ("irreversibility" 2) ("killer" 2) ("kills" 2) ("knit" 2)
 ("lamb" 2) ("lambs" 2) ("lamp" 2) ("language" 2) ("lasted" 2) ("leaderless" 2)
 ("leaflet" 2) ("libraries" 2) ("lobe" 2) ("locale" 2) ("locomotion" 2)
 ("logos" 2) ("machines" 2) ("maestro" 2) ("magnesium" 2) ("malfunction" 2)
 ("manifestation" 2) ("manifested" 2) ("manipulating" 2) ("massive" 2)
 ("matter" 2) ("matured" 2) ("maximize" 2) ("mechanics" 2) ("methodology" 2)
 ("micron" 2) ("milligram" 2) ("millions" 2) ("minced" 2) ("mirrors" 2)
 ("miscalled" 2) ("miscarriage" 2) ("miscarriages" 2) ("misinterpretation" 2)
 ("mixer" 2) ("modeled" 2) ("modelling" 2) ("modifier" 2) ("modifiers" 2)
 ("modular" 2) ("moist" 2) ("necessitating" 2) ("negatives" 2) ("neglected" 2)
 ("neighbors" 2) ("nested" 2) ("nomenclature" 2) ("numeral" 2) ("nutrients" 2)
 ("objectives" 2) ("obligate" 2) ("obscuring" 2) ("occasions" 2) ("office" 2)
 ("ohm" 2) ("ohms" 2) ("omission" 2) ("onwards" 2) ("opener" 2) ("orbital" 2)
 ("orchestrated" 2) ("ordinarily" 2) ("organizer" 2) ("orthopedic" 2)
 ("outlined" 2) ("outstanding" 2) ("overproduction" 2) ("oviduct" 2)
 ("oxidized" 2) ("ozone" 2) ("paragraph" 2) ("parentheses" 2)
 ("participation" 2) ("particles" 2) ("partition" 2) ("pathologist" 2)
 ("pathology" 2) ("paving" 2) ("peaked" 2) ("penetrate" 2) ("penetrates" 2)
 ("people" 2) ("permeable" 2) ("peroxides" 2) ("perturbations" 2)
 ("photographically" 2) ("physiology" 2) ("picked" 2) ("picric" 2)
 ("pictures" 2) ("piglet" 2) ("piglets" 2) ("pilot" 2) ("pink" 2)
 ("pinpointing" 2) ("pipette" 2) ("plaque" 2) ("plaques" 2) ("player" 2)
 ("players" 2) ("pollutant" 2) ("polluted" 2) ("polyethylene" 2)
 ("popularity" 2) ("portal" 2) ("powdered" 2) ("precedence" 2)
 ("precedented" 2) ("precoated" 2) ("predictor" 2) ("predisposition" 2)
 ("predominate" 2) ("predominates" 2) ("pregnancy" 2) ("prenatal" 2)
 ("pressure" 2) ("prevails" 2) ("principally" 2) ("prism" 2) ("private" 2)
 ("probable" 2) ("procured" 2) ("producer" 2) ("prognostic" 2) ("prominence" 2)
 ("prominently" 2) ("promiscuous" 2) ("prone" 2) ("proportionally" 2)
 ("prototype" 2) ("provoked" 2) ("publications" 2) ("puncture" 2)
 ("pyramidal" 2) ("qualified" 2) ("quantity" 2) ("quenched" 2) ("quiescence" 2)
 ("racial" 2) ("radioisotope" 2) ("rearranged" 2) ("receives" 2)
 ("reconcilable" 2) ("reconcile" 2) ("recurrent" 2) ("reentry" 2) ("regimen" 2)
 ("reliable" 2) ("remainder" 2) ("renewal" 2) ("repercussion" 2)
 ("repercussions" 2) ("representatives" 2) ("reproduction" 2)
 ("reproductive" 2) ("reseeded" 2) ("resembling" 2) ("resins" 2) ("resource" 2)
 ("restricting" 2) ("restrictions" 2) ("retracts" 2) ("retrieved" 2)
 ("retrospectively" 2) ("reversal" 2) ("reversals" 2) ("revised" 2)
 ("rigidity" 2) ("rigorous" 2) ("robot" 2) ("rocking" 2) ("roller" 2)
 ("routed" 2) ("sabotage" 2) ("salmon" 2) ("sandwich" 2) ("scientific" 2)
 ("scratch" 2) ("seamless" 2) ("secretary" 2) ("segments" 2) ("segregate" 2)
 ("sepsis" 2) ("sheds" 2) ("shell" 2) ("shields" 2) ("shutter" 2)
 ("signifies" 2) ("silica" 2) ("simplicity" 2) ("simplified" 2) ("singular" 2)
 ("situated" 2) ("sizable" 2) ("smoothly" 2) ("solidified" 2)
 ("sophisticated" 2) ("soybean" 2) ("specifies" 2) ("speculative" 2)
 ("spherical" 2) ("spheroid" 2) ("spiked" 2) ("spindle" 2) ("sprouting" 2)
 ("standardization" 2) ("stands" 2) ("sterile" 2) ("stillbirth" 2)
 ("stillbirths" 2) ("stratified" 2) ("strings" 2) ("subdivided" 2)
 ("subdivision" 2) ("suffice" 2) ("suffices" 2) ("sulphate" 2) ("summation" 2)
 ("supplied" 2) ("supposed" 2) ("surrogate" 2) ("susceptibilities" 2)
 ("suspected" 2) ("swing" 2) ("symbol" 2) ("systematically" 2) ("tabulated" 2)
 ("tannic" 2) ("tertiary" 2) ("theme" 2) ("theories" 2) ("theory" 2) ("tied" 2)
 ("tightness" 2) ("timed" 2) ("tolerated" 2) ("toxin" 2) ("traditional" 2)
 ("transported" 2) ("trauma" 2) ("triangle" 2) ("triangles" 2) ("tune" 2)
 ("unambiguously" 2) ("unattached" 2) ("underestimated" 2) ("underlining" 2)
 ("undifferentiated" 2) ("unexposed" 2) ("unfolded" 2) ("unifying" 2)
 ("unloading" 2) ("unspecific" 2) ("unveiled" 2) ("upright" 2) ("upside" 2)
 ("upward" 2) ("uterine" 2) ("uterus" 2) ("utilization" 2) ("valve" 2)
 ("variability" 2) ("vein" 2) ("velocities" 2) ("vendor" 2) ("versatility" 2)
 ("vicinity" 2) ("virtue" 2) ("visualization" 2) ("washout" 2) ("wavelength" 2)
 ("wavelengths" 2) ("wealth" 2) ("weaned" 2) ("web" 2) ("wetted" 2)
 ("wherein" 2) ("wherever" 2) ("wholly" 2) ("wind" 2) ("window" 2)
 ("worldwide" 2) ("young" 2) ("zinc" 2) ("accountable" 1) ("adaptable" 1)
 ("alkylated" 1) ("annotation" 1) ("annotations" 1) ("anymore" 1)
 ("bicarbonate" 1) ("blinded" 1) ("breeding" 1) ("chilled" 1) ("coalesced" 1)
 ("collision" 1) ("concurrently" 1) ("construction" 1) ("contextual" 1)
 ("crowded" 1) ("deregulated" 1) ("discussion" 1) ("doubly" 1) ("equation" 1)
 ("equations" 1) ("exempt" 1) ("exemption" 1) ("flexible" 1) ("formulated" 1)
 ("founder" 1) ("founders" 1) ("giant" 1) ("identifiable" 1) ("imbedded" 1)
 ("inefficiently" 1) ("inspection" 1) ("masked" 1) ("nucleic" 1) ("odd" 1)
 ("ordinal" 1) ("polygonal" 1) ("precursor" 1) ("pretty" 1) ("reliant" 1)
 ("rubber" 1) ("scraper" 1) ("sealed" 1) ("snip" 1) ("snips" 1) ("specify" 1)
 ("spreadsheet" 1) ("statement" 1) ("statistics" 1) ("sty" 1) ("surgically" 1)
 ("thrice" 1) ("tolerance" 1) ("transplanted" 1) ("tuft" 1) ("tufts" 1)
 ("undistinguishable" 1) ("universal" 1) ("usefulness" 1) ("writing" 1)
 ("academy" 0) ("adobe" 0) ("aids" 0) ("ambiguity" 0) ("analyst" 0)
 ("archive" 0) ("atlas" 0) ("batch" 0) ("batches" 0) ("bay" 0) ("bid" 0)
 ("bioscience" 0) ("biosciences" 0) ("bioscope" 0) ("biotechnology" 0)
 ("blockade" 0) ("bloom" 0) ("blotto" 0) ("board" 0) ("boulder" 0) ("bourne" 0)
 ("brook" 0) ("chameleon" 0) ("chapel" 0) ("chaps" 0) ("china" 0) ("choose" 0)
 ("church" 0) ("classification" 0) ("cocoa" 0) ("college" 0) ("compliance" 0)
 ("complimentary" 0) ("corbel" 0) ("cumulatively" 0) ("darling" 0)
 ("diagnostic" 0) ("diagnostics" 0) ("discontinuity" 0) ("disparity" 0)
 ("diversified" 0) ("eagle" 0) ("eclipse" 0) ("elegant" 0) ("equality" 0)
 ("equipment" 0) ("estimation" 0) ("ethics" 0) ("evolutionary" 0)
 ("exceptions" 0) ("falcon" 0) ("firstly" 0) ("fisher" 0) ("foster" 0)
 ("ganglion" 0) ("gay" 0) ("glassware" 0) ("grand" 0) ("grind" 0) ("grip" 0)
 ("grove" 0) ("healthcare" 0) ("hebrew" 0) ("heights" 0) ("hertz" 0)
 ("hospital" 0) ("immunology" 0) ("industries" 0) ("industry" 0)
 ("institute" 0) ("international" 0) ("island" 0) ("jack" 0) ("jacks" 0)
 ("japan" 0) ("kip" 0) ("laboratories" 0) ("lake" 0) ("leopard" 0) ("lynch" 0)
 ("magic" 0) ("mantel" 0) ("mascot" 0) ("medicine" 0) ("memorial" 0)
 ("monochrome" 0) ("mops" 0) ("noble" 0) ("nonetheless" 0) ("north" 0)
 ("northern" 0) ("numerical" 0) ("odyssey" 0) ("ontology" 0) ("overlay" 0)
 ("pacific" 0) ("page" 0) ("paint" 0) ("panther" 0) ("parenthesis" 0)
 ("peter" 0) ("pharmaceutical" 0) ("phoenix" 0) ("photos" 0) ("pierce" 0)
 ("pipes" 0) ("placid" 0) ("precision" 0) ("premier" 0) ("premiere" 0)
 ("price" 0) ("property" 0) ("protean" 0) ("quark" 0) ("radium" 0)
 ("redwood" 0) ("remarks" 0) ("rush" 0) ("sad" 0) ("saint" 0) ("school" 0)
 ("secondly" 0) ("seek" 0) ("shanghai" 0) ("shank" 0) ("shanks" 0)
 ("signify" 0) ("silencer" 0) ("slug" 0) ("smart" 0) ("snail" 0) ("south" 0)
 ("southern" 0) ("southwestern" 0) ("sterling" 0) ("stony" 0) ("stringent" 0)
 ("suite" 0) ("tailor" 0) ("technologies" 0) ("thirdly" 0) ("trading" 0)
 ("troy" 0) ("twist" 0) ("united" 0) ("university" 0) ("upstate" 0)
 ("velocity" 0) ("wasp" 0) ("watt" 0) ("watts" 0) ("whenever" 0) ("woman" 0))

  )
