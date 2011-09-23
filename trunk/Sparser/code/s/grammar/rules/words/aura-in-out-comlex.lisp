
;; 8/2/10
sparser> (intersect-aura-words-with-comlex)
1098 in comlex, 1341 not in comlex (2,439 words in total)

---- in comlex ----

sparser> *aura-in-comlex*

(setq *aura-in-comlex* ;; 1,098
      '(\. |:| ability absence absorb abuse accommodate account accumulate
 accumulation accuracy achieve acid acquire across act action activity
 actually adaptation add addition address advantage adversely affect
 again against aid alcohol align alike allow almost already also
 alternate alternative altogether ambiguity amount anchor animal
 announcement apart apparatus appear appearance appendage application
 appropriate approximately area arise arrangement array arrest aspect
 assemble assembly assortment attach attachment attack attract
 attribute average avoid away backbone bacterium band barbiturate
 barrier base basis beam bearing become begin beginning behavior
 believe benefit best billion billions bind biology biotechnology block
 blood bloodstream blue body bond bound boundary box brain bread break
 breakdown bridge bring broad bubble buckle bud build building calcium
 calculate cancer cap carbohydrate carbon carrier carry case cat cause
 cavity cell cellulose center central centrifuge chain chance change
 chapter characteristic charge chemical chemically chemotherapy
 chloride chlorophyll choreography chromosome circular class classic
 clear clearly cleavage click closely closer cluster coalesce
 coalescence code coil coin collect collection color combination
 combine come command common communicate companion comparison
 compartment compartmentalize complete completely completion complex
 complexity component composition concentration concept condense
 conformation congregation conjunction consequence conservative
 consider consist constantly construct contact contain contemporary
 context continually continue continuity continuously contraction
 contrast contribute contribution control conventionally convert convey
 convoy cooperate cope copy core correct correction correctly counter
 course cover create crick cross crossing cure cut cutting cycle damage
 dark daughter dead deal death decode decrease defect defend
 degradation degrade delete densely depart depend deposit describe
 description designate destroy destruction detail determine development
 devise diagnosis diagram diameter dictionary differ difference
 differential differentiate differently diffuse digest digestion
 dimension dioxide direct direction directly discuss discussion disease
 dismantle disorder disparity disposal distinguish diversity divide
 division dog double downstream dozen draw drawing drive drug due
 duplicate duplication during dynamic early earth easy eat effect
 effectively effectiveness eight either elaborate elaborately electron
 elegantly elongate elongation elsewhere embark end endanger energy
 enlarge enough enter entirety entry envelope environment enzyme equal
 equally equipment equivalent error especially essential essentially
 evade ever evidence evolution evolve exact exactly examine example
 except excess exchange excise excision exclusively exhibit exit expect
 experiment explain export expression exterior external extract extrude
 eye face facilitate fact factor factory familiarize family far fashion
 fate father feature fertilization fifty fig figure fill filling final
 find finding firefly firmly first fission fitting five fix flash flip
 flow fluid fluorescence flush focus fold follow following food fork
 form formation formula forth fortunately found four fragment frame
 framework franklin free frequent frog fully function fundamental
 fundamentally furrow further fuse fusion future gag gap gene general
 generally generate generation genetically germ get giant gibberish
 give glow glucose go going greatly green groove group grow growth
 guess guide gymnastics half happen health heavy help hence high highly
 history hold holding hormone hour human hundreds hybrid hydrogen
 hypothesis idea identification image imagine immortal impact
 importance impose impulse include incorporate incorporation
 incorrectly increase indeed independent independently individual
 induce information inheritance initial initiate initiation insertion
 inspiration instance insulin interact interaction interfere interior
 intermediate introduce investment involve ironically isotope issue job
 join keep kernel key kind kinship know lab laboratory labyrinth lack
 ladder lagging language lapse large laser late layer lead leader
 leading leakage learn least leave length lengthen lens let letter
 level library life light lighter like limit line links lip liquid
 literally little liver living local location locus logic logistics
 long look loosely low lower lung machine machinery magenta main mainly
 maintain maintenance major make making man mandatory manifest manner
 map mark markedly marking mass material matrix matter mature meaning
 means meanwhile mechanics mechanism mediate medical medium meiosis
 member membrane mere message messenger metabolism method micrometer
 microscope microscopy middle midway might migration million mind
 miniature minute mixture mm mobile model modern modify mold molecule
 monomer moreover mother motor move movement multiple muscle mystery
 narrow national native natural naturally nature near nearly necessary
 need negative neither nerve net network neutral nevertheless newborn
 newly newt nitrogen nor normal normally note notice now nucleus number
 object occasionally occur offspring old once one onion onto open
 opening opposite orange order ordering orderly organism organization
 organize orientation origin originally otherwise outcome over overall
 overlap ovum own oxygen pair pancreas paper parent part partially
 participate participation particular particularly partition partly
 pass passage passive per perform perimeter person phase phosphate
 photosynthesis physically pi pigment pinch place placement plane plant
 plasma plastic plate player plural point poker polarity pole poly
 polymer population pore position positive possible potassium potential
 practice preparation presence present presumably prevent primary prime
 primer priming principle print prior pro problem proceeds process
 produce product production productivity program progress progressive
 proliferation promote promoter proofread properly proportion
 proportionately protect protection protein provide provided providing
 publication pump put question quickly radiation railroad rapidly rat
 rate rather ratio reaction read reading ready really rearrangement
 recall receive recognition recognize reconstruct recycle red reduction
 redundancy reel reexamine refer refuse region regulation relate
 relationship relative relatively release remain remainder remind
 reminder remove repair repeat repetition replace replica repository
 represent reproduce reproduction require requisite research researcher
 resemble reservoir reshuffle respect respectively respiration response
 rest restriction result reveal review ring rise role root rough
 roughly round run sac safely sake same sap saw scenario scheme
 scientist scratch second secrete secretion section sedation sedative
 see seem segment selection self separate separates separation sequence
 series serve service serving set sewing sex sexually shall shallow
 shape share shipping short shorten shortening show showing side sign
 signal significance simple simplicity simplification simply
 simultaneously single singular sister site six size skin slightly
 small smooth solely solution somehow sometimes somewhat source space
 span special specialize species specific specifically specificity
 specify speed speeding sperm spindle spontaneously square stabilize
 stack stage stain standard starch start starter state statement step
 steroid stop storage store strand stretch structurally structure stud
 study subsequently substance substitute substrate success suddenly
 suffice sufficiently sugar summarize summary sunlight support sure
 surface surprise surprisingly surroundings survival survive suspect
 sustain symbol symbolize synthesis synthesize system table tadpole tag
 tail take target team technology template ten tend tenth term terminal
 termination test text theme theory therefore thick thickness thin
 think third thoroughly though thousand thousands three throughout
 tightly time tissue tobacco today together tolerance topic total tour
 toward track trade trail trailer transcribe transcript transcription
 transfer transform transit translate translation transport travel
 trend trigger trillion triplet true truly tube tug turn twice two type
 typically ultimately ultra undergo understand uniform union unit
 universality unknown unlike unusually unwind upon upper upside
 upstream use variability variant variation variety version vesicle
 vessel via vicinity view violet virtually vocabulary volume wake walk
 wall war warehousing waste water wave way week well whereas white
 whole woman wonder word work wrong yellow yet zipper zone))


---- not in comlex ----

;; Looks to be a mixture of biological terms and non-lemma forms
;; so could cull this further with a more refined stemming routine

sparser> *aura-not-in-comlex*
(|| || || aaa aauaaa abbreviated absorbing acc accompanies according
 accounts accumulated achieved acidic acids actin activating active
 activities acts actual added adding additions adds adenine adjacent
 adjoining adjusts adrenal advancing afflicted ag agents agt algae
 aligning allows altered alternates amino aminoacyl amoebas amounts
 amyloplasts amylose analogous anaphase ancestors ancestral anchored
 animals antibiotics anticodon antiparallel appears applications
 applies applying aqueous arbitrary archaea arises arising arranged
 arrangements arrived arrows artificial assembled assembles assembling
 assigned assisting associated assort assortments astronomical ate
 atoms atp attached attaches attaching aua aug autodigestion autophagic
 autophagy available averaging b backbones backstitching bacteria
 bacterial barbiturates based bases basic became becomes becoming began
 begins belonging bigger bilayer binary binding binds biochemical
 biological biologists biosynthetic bonded bonds books born bounded
 boxes breaks bridges brings broken brothers brought bubbles budded
 budding buds built c called cancerous cancers captured carbohydrates
 carbons carboxyl carried carries carrying cases catabolic catalyze
 catalyzed catalyzes catalyzing caused causes causing ccc ccg celled
 cells cellular centrifuging centrioles centromere centromeres
 centrosome centrosomes certain cga chains challenged changes changing
 channels chaperone chapters characters checked chemicals chiasma
 chiasmata chinese chips chloroplast chloroplasts chromatids chromatin
 chromoplasts chromosomal chromosomes circumstances cis cisterna
 cisternae cisternal classes cleaved cleotides codes coding codon
 codons coiled coins coli colleagues colored colorless colors
 combinations combining comes commences compared compares compartmental
 compartments complementary completed completes completing components
 composed compounds comprising concentrated concepts concerned
 condensed condenses conditions confined confluent conformations
 connected consecutive consequences conserved considered considering
 consisting consists conspicuous constitutes constituting contained
 containing contains contents continued continues continuing continuous
 continuum contractile contributes controlling convenient converted
 convoluted copes copied copies copying corrected correcting correlated
 correlates corresponding corresponds coupled covalent covalently
 covered cracked cracking cristae crossover crucial cubed cubic
 cultured customary cutaway cuts cycles cylinders cytokinesis
 cytokinessis cytoplasm cytoplasmic cytoskeleton cytosol cytosolic
 damaged darwin deciphered decoded deepens deleted delineated denoted
 densities deoxyribonucleic deoxyribose departments depends
 depolymerizing deposited derived described describes designated
 destinations destined destroying destroys detailed details detects
 determined determines determining detoxification detoxify developments
 develops devised diagrams diameters diatoms died differences different
 differing differs difficult digesting digestive dimensional dimer
 dimers dinoflagellates diploid directed directions directs disabled
 disappears disassemble discerned disclosed discovered discoveries
 discussed discusses diseases disorders dispatched dispatches
 dispersive dissolved distinct distinguished distinguishing distributes
 distributing disulfide diverse divided divides dividing divisions dna
 docking domains doses drawings drawn drawstrings drives drugs dual
 duplicated dynamics e easier edd eggs elegant eliminated elongated
 elongates elongating embedded embryos emerges emissions emphasized
 enables enabling enclosed encloses encoded encountered ended
 endomembrane endomembranes endoplasmic ends engaged english engorged
 engulfed engulfing engulfs enhances enlarges enormous entering enters
 entire envelopes environments enzymatic enzymatically enzymes equipped
 er eroded errors escaped escherichia eu eukaryote eukaryotes
 eukaryotic events evident evolutionary evolved evolves examined
 examines examining examples exceptions excessive exchanges excised
 exciting exergonic existing expands expendable experimental
 experiments exposing expressed expressing extending extends extensive
 extracellular extracted extracting facilitates factories factors
 faithful fats favorable favored features fertilized fibers fibrous
 figures filaments filled films fingers finished finishes finishing
 fits fixed flagellum flattened fledged flowers flows folded folds
 followed follows forks formed formidable forming forms fragments
 freckles freeing freshwater fruits fuels full functional functioning
 functions fungi fused fuses fusing g gaa gamete gametes gave
 generalized generates generations genes genetic genome genomes
 geometric getting ggc ggg given gives glands glutamic glycogen
 glycoprotein glycoproteins golgi governed governing grana granules
 granum great greater greek gregor grouped groupings groups growing
 grows gt gtp guanosine h halving hands haploid happens harmful heads
 hec helical helicase helix helpless helps hereditary heritable higher
 holds homologous homologue homologues hooks hormones hours houses hues
 humans hydrolysis hydrolytic hydrolyze hydrolyzes hydrophilic
 hydrophobic hydroxyl hypersensitive hypotheses hypothesize
 hypothetical i identical identified ignored ii iii illustrates
 impaired important imported inaccurate inactivated inactive inadequate
 includes including incoming incompatible incorporated incorporates
 incorporating increases indicated indigestible individuals infoldings
 ingested ingests inherited inherits initiated initiates initiator
 inner inorganic insects inserted inserting institutes instructions
 intact integral intended interactions interconnected interdigitate
 interested interiors intermembrane internal interphase intracellular
 intricate intriguing intriguingly invaders involved involves ionic
 ions japanese joined joining joins karyon keeps kinds kinetochore
 kinetochores known kytos lacking lacks lamina languages larger largest
 latin leads leaks learned leaves leaving led lengthening lengths
 letters ligase ligates limitations limiting limits linear lined lines
 linguistic linked linking lipid lipids locales located locations loci
 locomotives longer looking looks loses lost lumen lysosomal lysosome
 lysosomes macromolecules macrophages made maintains makes
 manifestations manufactures manufacturing marks marshall materials
 maternal mating matthew meant measuring mechanisms meiotic members
 membranes membranous mendel mentioned meselson messages met metabolic
 metabolized metaphase methionine micro microfilaments micrograph
 micrographs microscopes microscopic microtubule microtubules mid
 minimal mismatch mismatched missing mitochondria mitochondrial
 mitochondrion mitosis mitotic mixed models modifications modified
 molecular molecules monitoring monitors monomers moved movements moves
 moving mrna multicellular murky mutations mycoplasmas myosin n named
 names nearest needed neighboring nestles netlike new nirenberg
 nitrogenous nm noncellulose noncoding nondividing nonequivalent
 nonidentical nonkinetochore nonmembranous nonoverlapping nonsister nu
 nuclear nuclease nuclei nucleic nucleo nucleoid nucleoli nucleolus
 nucleoside nucleotide nucleotides numbered numbers nutrients o
 observed occupies occurred occurring occurs oga oils okazaki older
 oligosaccharide oligosaccharides ones opens operating organelle
 organelles organic organisms organized organizing organs orientations
 oriented originating origins outer ovaries overlapping overview
 overviews p packaged packages packaging pages paired pairing pairs
 panoramic paramecium parental parents particles partitioned parts
 passes paternal pathways pectins peels peptide perforated performing
 performs perhaps peroxisome peroxisomes perpetuating pervading petals
 ph phagein phagocytosis phe phenobarbital phenotypic phenylalanine
 phosphates phospholipid phospholipids photographic photosynthetic
 physical pieces pigmentosum pigments pinched pinches pita places
 plants plasmodesmata plastid plastids poisonous poisons poles poleward
 pollinating polymerase polymerases polymerization polymers
 polynucleotide polypeptide polypeptides polyphenylalanine
 polyribosomes polysaccharide polysaccharides pompe pores portions
 positioned positioning positions possibilities posttranslational
 postulated pp practical pre preceded preceding precise precursors
 predators predicted predicts preexisting preparations prepares
 presented prevailed pries primase primed primers processes processing
 produced produces producing products programmed programs progresses
 progressing prokaryote prokaryotes prokaryotic proline prometaphase
 prominent proofreading proofreads prophase proportional proposed
 protects proteins protists provides published pulling pumping pumps
 purposes pyrophosphate quaternary radioactive rails random rare rates
 rays reached reaches reactive reacts reads realized received receives
 receiving recent recognized recognizes recombinant recycles reduced
 reduces referred referring refines reflecting regions regulates
 related relates relationships released releases remained remaining
 remains remarkable reminiscent removes renews repairing repairs
 repeated repetitions replaced replaces replicate replicated replicates
 replicating replication represented representing represents
 reproducing reproductive required requirements requires researchers
 resembles reserves responsible restoring resulting results resumes
 reticulum returned reuse revealed reveals reviews ribose ribosomal
 ribosome ribosomes ribozyme rich rigid rna roamed roles roots rounds
 rrna ruled rules rungs runs rushes sachs sacs said schematic
 scientists secondary secreted secretory sections seeds seems seen
 segments segregated selective semiautonomous semiconservative
 semifluid sending sent separated separating sequences serine serves
 sets settling sexual shaped shapes shared shipped ships shortened
 shorter shortest shown shows signals similar similarities simpler
 simplest simplified simultaneous sisters sites sits situated sized
 slides smallest solar soluble solutes solves somatic sorting sorts
 sources spaces spared specialized specified specifies spends spindles
 spontaneous spotlighted squared stacked stacks stages stahl stained
 stands started starting starts stated static stationary steps stepwise
 steroids stimulated stockpiled stopped stops stored stores strains
 stranded strands stretched strings stroma structural structures strung
 studded studies subjected subphases subsequent substitutes substrates
 subunit subunits successive sufficient sugars suggested suggests
 suited summarizes supplies supported supports surfaces surprising
 surrounding surrounds suspended symbols synapsis synaptonemal synonyms
 synthesized synthesizes synthesizing systems tags tails taken takes
 targets tata tay teams techniques tells telo telomerase telomere
 telomeres telomeric telophase tem templates terminates terminator
 terms tertiary tested testes testing tet tetrad themes things threaded
 thylakoid thylakoids thymine times tiny tissues tonoplast topics
 tossing traces tracks traditional trails traits trans transcribed
 transcribes transcribing transcripts transduction transferred
 transformers transforming transitional translated translates
 translating translations translocates translocation transmitted
 transmitting transplanted transplanting transporting traveled triggers
 triphosphate triphosphates triplets trna trp trucks tryptophan ttaggg
 tubers tubes tubules tubulin tumors twins types typical u uaa uag uca
 uga ugg ultraviolet uncorrected undamaged undergone underscored
 unicellular unidirectionally unique units universal unmasked unpaired
 unpalatable unstable untested untwist untwisted untwists unusual
 uracil usable used useful uses ushers using usual uuu vacant vacuolar
 vacuole vacuoles variations varies various verified versatile versions
 vertebrates vesicles viewing viruses visible visual vulnerable walls
 wastes watson ways webbed words works wrapped written wry x xeroderma
 y years yielding yields zygote)
