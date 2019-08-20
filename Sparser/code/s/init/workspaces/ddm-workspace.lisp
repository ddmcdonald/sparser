;;; -*- Mode:LISP; Syntax:Common-Lisp -*-
;;; copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddm-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  August 2019

;; Initiated 10/9/14 for personalized settings and recording what I'm doing -- ddm.

(in-package :sparser)

;;;---------------------------------------------------------
;;; shells for tailoring  what's done when analysing a file
;;;---------------------------------------------------------

(defun drive-file-reader (file &key (arabic? t) echo)
  "Standard doctored setup for reading a file. The idea is that
   we wrap different parsing setups around this uniform driver"

  ;; Setup the right actions in the content methods
  (let ((*apply-document-after-actions* t) ; run after-action method
        (*run-aggregation-after-action* nil)) ; but not the bio one
    (declare (special *apply-document-after-actions*
                      *run-aggregation-after-action*))
    ;; basics for analyze-text-from-file
    (let ((*arabic-names* arabic?)
          (*prescan-character-input-buffer* t)
          (*paragraphs-from-orthography* t))
      (declare (special *arabic-names*
                        *prescan-character-input-buffer*
                        *paragraphs-from-orthography*))
      (analyze-text-from-file file :echo echo))))


(defun just-sentence-stats (file)
  "Minimal -- collect sentence count, word-count, ratio"
  (let ((*grammar-and-model-based-parsing* nil) ; sentence-processing-core
        (*sweep-for-word-level-fsas* nil) ; scan-terminals-loop
        (*word-level-completion-sweep* nil)
        (*sweep-for-terminal-edges* nil)
        (*pnf-routine* nil)) ; referenced in scan-sentences-and-pws-to-eos
    (declare (special *grammar-and-model-based-parsing*
                      *sweep-for-word-level-fsas*
                      *word-level-completion-sweep*
                      *sweep-for-terminal-edges*
                      *pnf-routine*))
    (drive-file-reader file :arabic? t)))

(defun just-chunks (file)
  "Let the analysis run up through the moment when we're about to apply
   the wack-a-mole procedure to parse the chunks. Particularly includes
   the call to the layout classifier that sweep over the chunks."
  (let ((*island-driving* nil)
        (*sweep-sentence-treetops* t))
    (declare (special *island-driving*
                      *sweep-sentence-treetops*))
    (drive-file-reader file)))


;;--- target files

(defun eastern ()
  (string-append "/Users/ddm/Sparser/Sparser/code/s"
                 "/drivers/timing/Bankruptcy/Eastern/just-body.lisp"))








;;;-----------
;;; originals
;;;-----------

;; modeled on call in r3::run-localization
(defun run-aspp2 (&rest args 
                  &key (quiet t) (sweep t) (epi t) 
                       (read t) (skip-errors t))
  (apply #'run-an-article :id "3847091" :corpus :jan15 args))


(defun ddm-standard ()  ;;    (ddm-standard)
  (trace-lexicon-unpacking) (trace-morphology)
  (setq *check-forms* t) ;; allow rule filtering by schema patern
  (setq *report-form-check-blocks* nil)
  (setq *debug-pronouns* nil)
  (revert-to-regular-break)
;  (setq *work-on-ns-patterns* t)
  (setq *apply-document-after-actions* t)
;  (trace-parse-edges) (trace-rule-source) 
;  (trace-scan-patterns) (trace-network) (trace-terminals-sweep)
;  (trace-island-driving)
  ;; (ddm-workset)
;  (ddm-ws-ed "NoSpace hassles.lisp")
;  (ddm-no-spaces)
;  (ddm-doc-methods)
;; (ddm-read-from-documents)
;; (load-ddm-ws)
;; (ddm-polyword-conundrum)
;  (ddm-ed "init/versions/v4.0/workspace/abbreviations.lisp")
  (ddm-ed "init/workspaces/ddm-workspace.lisp")
  (setq *diagnose-consp-referents* t)
  ;;     (setq *show-section-printouts* t)
  ;; (test-dec)  (dtst nil t) (reset-dectest)
  ;;(test-overnight) (test-erk) (test-aspp2)
  ;;(test-jan) = dry-run   (retest)
  ;; (hashtable-to-alist 
  ;;(test-load-test)
)

#| 
 (asdf:load-system :r3)
 (asdf:load-system :clic/bw)   (asdf:load-system :sparser/blocks-world)
 (asdf:load-system :sparser/c3)
 (asdf:load-system :sparser/fire)
 (ed "Users/ddm/sift/nlp/Sparser/workspaces/fire.lisp")
 (load "Users/ddm/sparser/Sparser/code/s/grammar/model/sl/blocks-world.loader")


  (establish-kind-of-chart-processing-to-do :new-toplevel-protocol)
  initiate-incremental-CwC-protocol  (establish-kind-of-chart-processing-to-do :incremental)
  initiate-c3-protocol  (establish-kind-of-chart-processing-to-do :c3-protocol)

 (r3::break-in-articles) (r3::do-june-no-cards :start 1 :n 15)

 (loop for c in *referential-categories* when (null (super-categories-of c)) collect c)
 workout-the-relationships-among-the-categories

 collection-of-type/dh string/ordinal first-item-of-sequence
 make-months-sequence spread-sequence-across-ordinals  today
 
 classify-&-record-span  <<< good entry point into middle of PNF

 one-hyphen-ns-patterns  resolve-tailing-stranded-hyphen  nospace-hyphen-specialist

 period-hook  start-sentence
 extract-characters-between-positions

 (p "of the two radioactive peaks.")
 determiner-noun  parsing-status  post-analysis-operations
 make-sentence-container  handle-any-anaphora  mark-instance-indefinite
 sentence-content  records-of-delayed-actions  define-determiner determiner?

 duplication-check establish-multiplier <== abstract to common core

 decode-realization-parameter-list  mumble::setup-verb-from-rdata

 mumble::realize-dtn  mumble::discourse-unit-bundle-driver
 mumble::clear-derivation-tree-data  mumble::in-focus?
 mumble::build-phrase  mumble::current-subject  mumble::process-negate-accessory
 mumble::plan-reference-to-category ;; blocks-world/specialists

(say (negate (present-tense (i-know-of-p (drug-targeting-kras)))))
;; Contractions
 mumble::morphologically-specialize-&-say-it
 mumble::send-to-output-stream  mumble::process-word-stream-actions
 mumble::general-np-bundle-driver  mumble::start-next-turn
 mumble::sexp-reader
 mumble::
 mumble::
 mumble::

 *build-mumble-equivalents*  setup-rdata  apply-mumble-rdata
 mumble::setup-verb-from-rdata  mumble::apply-function-data
 mumble::*mappings-for-category-linked-phrase*
 mumble::link-to-underlying-object mumble::remove-subject
   mumble::dtn-bundle-driver
   mumble::has-name
   mumble::sexp-reader
 mumble-phrase  add-etf-mapping  realize-using-name-binding
 realization-for-triple  get-lexicalized-phrase

 initiate-incremental-CwC-protocol initiate-c3-protocol
 indexical-for-state -- grammar/rules/situation/rules.lisp:(defun indexical-for-state (state)
 blocks-world-module-choices  (gload "sit-rules;rules")
 update-situation-state

 make-word/all-properties/or-primed  setup-unknown-word-BigMech-default
 find-word  resolve-ns-pattern
 (setq *work-on-ns-patterns* t) (trace-ns-sequences) (trace-scan-patterns)
 collect-no-space-segment-into-word
 (trace-lexicon-unpacking) (trace-morphology)

 deal-with-unhandled-unknown-words-at
 (trace-morphology) (trace-fsas) (trace-terminals-sweep)


 find-word  recover-acronym-if-necessary  "GEF" in proteins
 handle-unknown-word-as-bio-entity  add-terminal-to-chart
 initiate-successive-sweeps  make-word/all-properties/or-primed 
 initialize-tokenizer-state  
 reify-ns-name-as-bio-entity  ns-pattern-dispatch

 starts-occasional-polyword polyword-check initiates-polyword1  do-polyword-fsa
 
 define-knockout
 digit-FSA 

 decode-for-find-&-index  prepare-category-operations
 find/individual/key/hash  apply-mumble-rdata

 define-cfr/resolved  define-determiner  define-wh-pronoun construct-cfr 

 setup-lexicalized-trees record-reference sexp-reader
 c3-location location car-manufacturer can-change-location

 (r3::run-article-batch :corpus :localization :card-p nil)
 *run-aggregation-after-action*

 "In KNRK-PAR2 and hBRIE cells, PAR2 agonists caused a marked 
  redistribution in the elution profiles that resulted 
  in the coelution of pERK, raf-1, β-arrestin, and PAR2 
  in the same fractions, with partition coefficients (σ) 
   of 0.34 for KNRK-PAR2 cells 
   and 0.31–0.34 for hBRIE cells."
 (trace-network) (trace-edges) (trace-digits-fsa)
 install-terminal-edges continue-digit-sequence-after-period 

 individual-for-ref  get-realization-scheme
 record-any-determiner  maybe-copy-individual

 fill-compatible-slot 
   analyze-pp indexical-for-state mark-instance-indefinite
   define-determiner

 get-dli

 --- "one"   quantify define-quantifier
 define-movement-verb


|#


;; (compare-to-snapshots)
;; *default-snapshot-corpora* = (overnight dec-test dry-run aspp2 erk)
;;   (compare-to-snapshot 'overnight)
;; (ddm-load-article-2)  (find-corpus-sents "")




#| ---------  Pending or recent tasks
 
sdm-span-segment assumes it's spanning an np. It should
  instead use the max projection of the category of the head

"thus"  interpret-subordinator

Siting composition other method calls
  referent-from-rule

Are restrictions working?
  decode-category-parameter-list  handle-variable-restrictions

Fold mixins into "daughter" inheritance sweep
   compute-daughter-relationships  display-categories-below

convert-bio-entity-to-protein

Subcategorization inheritance // non-use of bound preps "act as"
   subcategorize-for-slot  fom-subcategorization
   decode-realization-parameter-list

Grand cleanup -- flush bio-entity-scan or move
    reify-bio-entity

Rebuild pass2 on DA patterns
  run-island-checks-pass-two  look-for-length-three-patterns
  (ddm-ws-ed "DA data.lisp")

Sentence treetop count is always zero
  identify-relations  post-analysis-operations

Inherit instantiates information
   *instantiate-inherits*  look-for-parent-instantiates-information
   decode-category-parameter-list add-subsuming-object-to-discourse-history
   (setq *trace-instance-recording* t)
   (trace-pronouns) (trace-history)

Test the unsaturation code
   sweep-for-unsaturated-individuals 
   (setq *scan-for-unsaturated-individuals* t)

(ddm-ws-ed "pronoun hacking.lisp")
 handle-any-anaphora  find-best-recent  post-analysis-operations
 condition-anaphor-edge  (there-are-pronouns)
 trace-discourse-structure  trace-pronouns
 (setq *trace-instance-recording* t)

Revise the discourse history structure
 dereference-DefNP  complete-edge/hugin
 add-subsuming-object-to-discourse-history


;; Save out clean copies of sentence runs
  with-total-quiet


(ddm-ws-ed "NoSpace hassles.lisp")
(ddm-no-spaces) (trace-ns-sequences) (trace-fsas);;pw's
(setq *work-on-ns-patterns* t)   setup-verb

(p "RAS-ASSP.") -- bio-entity => protein
make-protein-pair/convert-bio-entity convert-bio-entity-to-protein

assess-parenthesized-content pts span-parentheses 
do-paired-punctuation-interior parse-chunk-interior

(p "BLAST sequence similarity searching 
indicated that the Bam32 SH2 domain is most highly related (30–37% identity) 
to those of the adaptor protein Nck, PLCγ1, PI3K p85 subunit, and the 
protein tyrosine phosphatases SHP-1 and SHP-2.")
;; No edges at all over "SHP", so the lookup has to handle it.

 ;; In case something goes south with the new 'unknown word' handler
 (ddm-ed "analyzers/tokenizer/lookup2.lisp")
   (trace-morphology)
  find-word  make-word/all-properties/or-primed  

;; auto-expansion of "ablate"
  (p "Also, Chk2 −/− DT40 avian B lymphoma cells in which Chk2 was genetically 
ablated by gene targeting ( xref ) exhibited decreased prometaphase accumulation 
in the presence of nocodazole, but not taxol, compared with controls ( xref ).")
|#
; (test-range-of-June-articles from n)   (current-string)
; (revert-to-regular-break)  (revert-to-error-break)
; (sentence-string (previous (sentence)))

; "co-ordinate" => coordinate
;  compose-salient-hyphenated-literals  resolve-hyphen-between-two-words
;  nospace-hyphen-specialist


#|  (p "RICTOR knockdown increased the number of apoptotic MCF7 cells
on β1 integrin ligands up to 2-fold after 24 h in serum-free conditions.
β1 integrin-stimulation induced phosphorylation of both AKT1 and AKT2
but markedly preferred AKT2.")
  Doesn't see the sentence start because that's a lowecase beta
  and as a result the process of the actual second sentence is
  messed up -- no-space and chunking are absent. Why I don't know.
      period-marks-sentence-end?
|#

;; !!! Semtree isn't walking down to report all the
;; content in e.g. (p "Ras bound to GTP binds to BRAF.")
;  post-analysis-operations  collect-model

; comlex-entry

; c3-grammar-module-choices
; location c3-location located-in

; Make seg printer context sensitive: print-words-between-segments
;; Would have timing. Needs debugging
; (load-and-run-june-article-number 12)

#|   (setq *work-on-ns-patterns* t)
   
 (d (rule-set-for (word-named "")))
 (setq *show-section-printouts* t)
 (setq *trace-instance-recording* t)
 ;; (p "Phosphorylation of MEK1 at Ser218 and Ser222 activates it.")
 (p "BRAF bound to Ras transphosphorylates itself at Thr598.")
 resolve-stranded-hyphen (mono-, -tagged)

;=== Finish routines in 
; (p "in EphB1-induced ERK activation.")

;; GFP becomes the head
(p "We have used a mouse embryo fibroblast ERK1-knock-out 
cell line expressing green fluorescent protein (GFP)-tagged ERK1 
to probe the spatio-temporal regulation of ERK1.")
 setup-acronym-for-bio-entity  acronym-is-alternative-for-name
 assess-parenthesized-content
 hide-parenthesis-edge-at-pos span-parentheses
 referent-of-parentheticial-expression

(p "We previously reported that oncogenic RAS requires CRAF 
but not BRAF to activate MEK (Dumaz et al., 2006) 
and consistent with this, BRAF is inactive 
in NRAS mutant cells (Figure 1E).")
|#
;  (p "c-Raf/ MAPK-mediated [6].")

; r3/trunk/corpus/Walter-July-articles
#|  From PMC4007333
"Atorvastatin inhibited endothelial cell apoptosis induced 
by 1 mmol/L Hcy in a dose-dependent manner and the maximal 
inhibitory effect was reached at 100 μmol/L. 
Atorvastatin (10 μmol/L) significantly suppressed 
Hcy (1 mmol/L for 30 min) induced ROS accumulation (3.17±0.33 
vs 4.34±0.31, P <0.05). 
Atorvastatin (10 μmol/L) also antagonized Hcy (1 mmol/L for 30 min) 
induced activation of NADPH oxidase (2.57±0.49 vs 3.33±0.6, P <0.05). 
Furthermore, atorvastatin inhibited Hcy-induced phosphorylation of 
p38 MAPK (1.7±0.1 vs 2.22±0.25, P <0.05), 
similar effects occurred with DPI, NAC and SB203580."

 (trace-pronouns)  
 (trace-discourse-structure)
 (setq *trace-instance-recording* t)

In article 2  "c-termini"
|#



;; (setq *show-section-printouts* t)
;; (show-parse-performance X)

#| (setq article *article*)
(setq a *)  
(setq results (third (children a)))
(setq s (third (children results)))
(setq p1 (second (children *)) p2 (third (children *)))
(setq string (content-string p2)) |#



(defun ddm-corpus-location (in-list out-file)
  (declare (ignore in-list out-file))
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))

(defun m-ed (string)
  #-:sbcl (ed (concatenate 'string
                "~/sparser/Mumble/" string))
  #+:sbcl  (print `(**** can't call ed from SBCL yet)))

(defun ddm-ed (string)
  #-:sbcl
  (ed (concatenate 'string 
                   "~/sparser/Sparser/code/s/" string))
  #+:sbcl
  (print `(**** can't call ed from SBCL yet)))

(defun ddm-load (string)
  (load (concatenate 'string 
                     "~/sparser/Sparser/code/s/" string)))

(defun sparser-doc-ed (string)
  (ed (concatenate 'string "~/sparser/Sparser/documentation/" string)))

(defun draft-doc-ed (string)
  (ed (concatenate 'string
        "~/nlp/Sparser/documentation/notes-in-preparation/"
        string)))

(defun ddm-r3-notes (string)
  (ed (concatenate 'string
        "~/ws/R3/r3/trunk/notes/" string)))

(defun ddm-ws-ed (string)
  (ed (concatenate 'string
                   "~/ws/Sparser local/ws/" string)))



(defun ddm-load-blocks-world ()
  (ddm-load "grammar/model/sl/blocks-world/vocabulary.lisp")
  (ddm-load "grammar/model/sl/blocks-world/experiments.lisp"))

(defun ddm-relevant-mumble ()
  (ddm-ed "grammar/model/sl/blocks-world/experiments.lisp")
  (m-ed "loader.lisp")
  (m-ed "grammar/transformations.lisp")
  (m-ed "derivation-trees/make.lisp")
  (m-ed "grammar/phrases.lisp")
  (m-ed "grammar/attachment-points.lisp")
  (m-ed "grammar/labels.lisp")
  (m-ed "grammar/characteristics.lisp")
  (m-ed "interface/bundles/bundle-drivers.lisp")
  (m-ed "interface/bundles/operators-over-specifications.lisp")
  (m-ed "interface/bundles/accessory-processing.lisp")
  (m-ed "interface/derivations/discourse-reference.lisp")
  (ddm-ed "interface/mumble/rspec-gophers.lisp"))

(defun ddm-configurations ()
  (ddm-ed "init/versions/v4.0/config/grammars/c3-configuration.lisp")
  (ddm-ed "init/versions/v4.0/config/grammars/full-grammar.lisp")
  (ddm-ed "init/versions/v4.0/config/grammars/bio-grammar.lisp"))

(defun ddm-no-spaces ()
  (ddm-ed "analyzers/psp/patterns/loader.lisp")
  (ddm-ed "analyzers/psp/patterns/traces.lisp")
  (ddm-ed "analyzers/psp/patterns/patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/edge-patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/slash-patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/hyphen-patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/colon-patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/protein-patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/hyphen-subrs.lisp")
  (ddm-ed "analyzers/psp/patterns/edge-gophers.lisp")
  (ddm-ed "analyzers/psp/patterns/pattern-resolvers.lisp")
  (ddm-ed "analyzers/psp/patterns/scan-gophers.lisp")
  (ddm-ed "analyzers/psp/patterns/charaterize-words.lisp")
  (ddm-ed "analyzers/psp/patterns/uniform-scan.lisp") ;; driver
  (ddm-ed "analyzers/psp/patterns/character-specialists.lisp")
  (ddm-ed "analyzers/psp/patterns/pattern-gophers.lisp")
  (ddm-ed "drivers/chart/psp/multi-scan.lisp")
  (ddm-ed "analyzers/psp/patterns/pattern-gophers.lisp")
  ;;
  (ddm-ed "grammar/rules/DA/nospace-categories.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp"))
(defun ddm-workset ()
  (ddm-ed "tools/basics/clos-classes.lisp")
  (ddm-ed "objects/doc/content-methods.lisp")
  (ddm-ed "objects/doc/content.lisp")
  (ddm-ed "drivers/sources/document.lisp")
  (ddm-ed "analyzers/psp/edges/lattice-operations.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp"))


(defun ddm-debug-ns () ; (ddm-debug-ns)
  (trace-ns-sequences)
  ;; (trace-scan-patterns)
  ;; (trace-terminals-sweep)
  ;; (trace-terminals-loop)
  ;; (trace-fsas)
  (setq *work-on-ns-patterns* t))
(defun ddm-debug-ns-off () ; (ddm-debug-ns-off)
  (untrace-ns-sequences)
  ;; (untrace-scan-patterns)
  ;; (untrace-terminals-sweep)
  ;; (untrace-terminals-loop)
  ;; (untrace-fsas)
  (setq *work-on-ns-patterns* nil))


(defun ddm-issue-records ()
  (ddm-ws-ed "figure-7.lisp")
  (ddm-ws-ed "discourse and surface strings.lisp")
  (ddm-ws-ed "DA data.lisp")
  (ddm-ws-ed "prounoun hacking.lisp")
  (ddm-ws-ed "Parsing ASPP2.lisp")
  (ddm-ws-ed "PW digit-fsa hassle.lisp")
  (ddm-ws-ed "Weird stuff 6-6-15.lisp")
  (ddm-ws-ed "20 articles error.lisp")
  (ddm-ws-ed "NoSpace hassles.lisp")
  (ddm-ws-ed "mUbRas issues March 2015.lisp")
  (ddm-ws-ed "Doc str hassles.lisp")
  (ddm-ws-ed "polyword hassles.lisp")
  (draft-doc-ed "navigating the no-space code.lisp")
  (ddm-r3-notes "ERK nuclear transport tasks.lisp")
  (ddm-r3-notes "Playing with Will's sentences.lisp"))
      
; (noun "C-RAF:B-RAF" :super heterodimer)
; (trace-parse-edges) ;; extend into march-back-from-the-right/segment
; meta-. parse-at-the-segment-level

; (create-reactome-kb) ;; makes the Krisp model
; (ddm-ed "grammar/model/sl/biology/reactome/RAF_MEK_ERK_simple.lisp")
; (d (reactome-entity    "BiochemicalReaction13" "Complex21"

;; (setq *scan-for-unsaturated-individuals* t)
; (figure-7)  (cells-defNP)  (p *brent-story*)
; dec #34 -- "an event"

;; mine and remove (ddm-ed "drivers/chart/psp/bio-entity-scan.lisp")
(defun ddm-bio ()
  (ddm-ed "grammar/model/sl/biology/mechanics.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  (ddm-ed "grammar/model/sl/biology/new-RAS2-proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/amino-acids.lisp")
  (ddm-ed "grammar/model/sl/biology/terms.lisp")
  (ddm-ed "grammar/model/sl/biology/drugs.lisp")
  (ddm-ed "grammar/model/sl/biology/rhetoric.lisp")
  (ddm-ed "grammar/model/sl/biology/doc-structure.lisp")
  (ddm-ed "grammar/model/sl/biology/switches.lisp")
  (ddm-ed "grammar/model/sl/biology/rules.lisp")
  (ddm-ed "grammar/model/sl/biology/parse-biopax.lisp") ;; +R3
  (ddm-ed "grammar/model/sl/biology/find-extension.lisp") ;; +R3
  (ddm-ed "grammar/model/sl/biology/new-words.lisp")
  (ddm-ed "grammar/model/sl/biology/UCD-proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/protein-families.lisp")
  (ddm-ed "grammar/model/sl/biology/phenomena.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs.lisp")
  (ddm-ed "grammar/model/sl/biology/methods.lisp")
  (ddm-ed "grammar/model/sl/biology/examples.lisp")
  (ddm-ed "grammar/model/sl/biology/new-word-list.lisp"))
;;  molecules and NGkappB not loaded
;; cf. model/sl/NIH/site.lisp

(defun ddm-timing ()
  (ddm-ed "drivers/timing/calculation.lisp")
  (ddm-ed "drivers/timing/cases.lisp")
  (ddm-ed "drivers/chart/select2.lisp")) ;; example

(defun ddm-think-about-methods ()
  (ddm-ed "objects/model/categories/clos-backing.lisp"))

(defun ddm-doc-methods ()
  (ddm-ed "objects/doc/content-methods.lisp")
  (ddm-ed "objects/doc/content.lisp")
  (ddm-ed "objects/doc/object1.lisp")
  (ddm-ed "drivers/sources/document.lisp")
  (ddm-ed "interface/grammar/sweep.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol1.lisp")
  )

(defun ddm-fix-parentheses ()
  (ddm-ed "model/core/names/parens-after-name.lisp")
)

(defun ddm-itype-p-of-what ()
  (ddm-ed "objects/model/lattice-points/operations1.lisp")
)

;; longer, shorter, big:  def-attribution

;; Fix capitalization of chunking (online and afterwards)
; display-bracketing
  
;; Why is the right position of a number sometimes nil?
;  digit-FSA  make-edge-over-digit-sequence

(defun ddm-alphabet ()
  (ddm-ed "analyzers/tokenizer/alphabet.lisp")
  (ddm-ed "grammar/rules/words/punctuation1.lisp")
  (ddm-ed "grammar/rules/words/punctuation-constants.lisp")
  (ddm-ed "objects/chart/words/punctuation.lisp")
  (ddm-ed "analyzers/psp/patterns/scan-gophers.lisp"))

(defun ddm-rhetoric ()
  (ddm-ed "grammar/model/sl/biology/rhetoric.lisp")
  (ddm-ed "objects/doc/rhetoric.lisp")
  (ddm-ed "drivers/sources/document.lisp"))
  ; post-analysis-operations

(defun ddm-new-info ()
  (ddm-ed "objects/doc/rhetoric.lisp") ;; for classes and methods
  (ddm-ed "grammar/model/sl/biology/rhetoric.lisp") ;; for data
  (ddm-ed "objects/doc/content.lisp") ;; basics for 'containers'
  (ddm-ed "objects/doc/content-methods.lisp") ;; container classes & methods, e.g. after-action
  (ddm-ed "objects/doc/object1.lisp") ;; the classes that define article structure
  (ddm-ed "drivers/sources/document.lisp") ;; the methods that operate on article structure and organize reading
  (ddm-ed "init/workspaces/Biology-workspace.lisp") ;; Illustrates the pipeline
  (ddm-ed "drivers/chart/psp/no-brackets-protocol1.lisp") ;; master driver for reading a sentence: see post-analysis-operations
  (ddm-ed "driver/action/object.lisp") ;; define-completion-action
  (ddm-ed "driver/actions/trigger2.lisp") ;; action checker
  (ddm-ed "driver/actions/hook1.lisp") ;; carry out
  (ddm-ed "analyzers/psp/complete/complete-HA3.lisp") ;; site of action
  (ddm-ed "objects/traces/completion.lisp"))
  

(defun ddm-new-parsing-ws ()
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "drivers/chart/psp/multi-scan.lisp")
  (ddm-ed "drivers/chart/psp/chunker.lisp")
  (ddm-ed "drivers/chart/psp/pts.lisp")
  (ddm-ed "drivers/chart/psp/march-seg.lisp")
  (ddm-ed "analyzers/SDM&P/scan1.lisp")
  (ddm-ed "drivers/forest/new-forest-protocol.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "analyzers/psp/check/multiply.lisp")
  (ddm-ed "drivers/forest/island-driving.lisp")
  (ddm-ed "drivers/forest/pass1.lisp")
  (ddm-ed "drivers/forest/pass2.lisp")
  (ddm-ed "drivers/forest/forest-gophers.lisp")
  (ddm-ed "drivers/forest/parsing-containers.lisp")
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "grammar/rules/DM&P/period-hook.lisp")
  (ddm-ed "grammar/rules/syntax/syntactic-rules.lisp")
  (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
  (ddm-ed "objects/traces/psp.lisp")
  (ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "analyzers/psp/patterns/traces.lisp")
  (ddm-ed "objects/traces/scan-patterns.lisp")
  (ddm-ed "objects/traces/treetops.lisp"))


(defun ddm-polyword-conundrum ()
  (ddm-ed "objects/chart/words/polywords4.lisp")
  (ddm-ed "objects/chart/words/polyword-form2.lisp")
  (ddm-ed "objects/rules/cfr/polywords2.lisp")
  (ddm-ed "analyzers/FSA/words3.lisp") ;; coordinate w/ FSAs
  (ddm-ed "drivers/chart/psp/multi-scan.lisp")
  (ddm-ed "grammar/rules/FSAs/polywords5.lisp")
  (ddm-ed "objects/traces/FSA1.lisp"))

(defun ddm-maybe-spurious-rule-dupb ()
  (ddm-ed "objects/rules/cfr/multiplier3.lisp")
  (ddm-ed "objects/rules/cfr/construct1.lisp")
  (ddm-ed "objects/rules/cfr/duplicates.lisp")
  (ddm-ed "objects/rules/cfr/define5.lisp"))
; i/r/s-make-the-rule
  
(defun ddm-pending-notes ()
  (sparser-doc-ed "notes/note on anaphora.lisp")
  (sparser-doc-ed "notes/note on bio control structure.lisp")
  (sparser-doc-ed "notes/note on edges.lisp")
  (sparser-doc-ed "notes/note on switches.lisp")
  (sparser-doc-ed "notes/note on simpler shortcuts.lisp")
  (sparser-doc-ed "notes/note on traces.lisp")
  (sparser-doc-ed "notes/Note on what happens when Sparser loads.lisp")
  (draft-doc-ed "Notes for polywords.lisp")
)


;; local anaphora, getting categories right
; sentence-sweep-loop  decode-realization-parameter-list

;; Are we making the right references in the history?
;    decode-category-parameter-list decode-index-field

;; Sentence sweep (dies on 2d wrap)
;   sentence-sweep  extract-string-from-char-buffers 
;   *length-of-character-input-buffer*  -- goosed to 50k -- now goosed further to 200000


; (setq *work-on-ns-patterns* t)


(defun ddm-read-from-documents ()
  (ddm-ed "objects/doc/object1.lisp")
  (ddm-ed "objects/doc/content-methods.lisp")
  (ddm-ed "drivers/sources/document.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol1.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))

(defun ddm-note-doc-structure ()
  (ddm-ed "grammar/model/sl/biology/doc-structure.lisp")
  (ddm-ed "analyzers/SD&P/note-text-relations.lisp")
  (ddm-ed "analyzers/SD&P/text-relations.lisp")
  (ddm-ed "analyzers/SD&P/text-relation-class.lisp")
  (ddm-ed "objects/doc/content.lisp")
  (ddm-ed "drivers/forest/parsing-containers.lisp")
  (ddm-ed "object/doc/doc-stream.lisp")
  (ddm-ed "objects/doc/object1.lisp")  ;; document structure
  (ddm-ed "tools/basics/resource.lisp")  ;; auto recycling
  (ddm-ed "objects/doc/classes.lisp"))


(defun ddm-tense-neg ()
  (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
  (ddm-ed "grammar/rules/syntax/tense.lisp")
  (ddm-ed "grammar/rules/syntax/be.lisp")
  (ddm-ed "grammar/rules/syntax/have.lisp")  
  (ddm-ed "grammar/rules/syntax/modals.lisp")
  (ddm-ed "grammar/model/core/kinds/processes.lisp"))

(defun ddm-better-be+adj ()
  (ddm-ed "grammar/rules/tree-families/vp.lisp")
  (ddm-ed "grammar/rules/tree-families/copula-patterns.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs1.lisp"))

(defun ddm-write-additional-realization ()
  (ddm-ed "grammar/rules/tree-families/shortcut-master2.lisp")
  (ddm-ed "objects/model/tree-families/rdata1.lisp"))

(defun ddm-trap-new-words-write-sentence ()
  (ddm-ed "interface/grammar/sweep.lisp")
  (ddm-ed "analyzers/char-level/display1.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp"))

(defun ddm-generalize-test ()
  (ddm-ed "tools/basics/test-functions.lisp")
  (ddm-ed "analyzers/forst/treetops.lisp")
  (ddm-ed "drivers/chart/psp/no-bracket-protocol.lisp"))

(defun ddm-simpler-compiling ()
  (ed "/Users/ddm/sparser/README")
  (ed "/Users/ddm/sparser/load-nlp.lisp")
  (ddm-ed "init/everything.lisp")
  (ddm-ed "init/lisp/lload.lisp")
  (ddm-ed "init/scripts/compile-everything.lisp"))

;; Is this ordered right, walking through the edges?
; (ddm-ed "analyzers/psp/check/one-many1.lisp)

; (trace-paragraphs) ;; for sentences and periods
; (trace-edges) ;; edge over period as a literal?
; (trace-island-driving)  (untrace-island-driving) 
; (progn (trace-chunker) (trace-segments))
; (trace-terminals-sweep) ;; pw, etc.
; (progn (untrace-chunker) (untrace-segments) (untrace-terminals-sweep)  (untrace-island-driving))

; exploded-tree-family-named

(defun ddm-binding () ;; reclaim when on permanent individuals?
  (ddm-ed "objects/model/bindings/structure.lisp")
  (ddm-ed "objects/model/bindings/object2.lisp")
  (ddm-ed "objects/model/bindings/alloc1.lisp")
  (ddm-ed "objects/model/bindings/make2.lisp")
  (ddm-ed "objects/model/bindings/hooks.lisp")
  (ddm-ed "objects/model/bindings/resource.lisp"))


; uniform-scandal
;(ddm-ed "analysers/psp/patterns/traces.lisp")

;; Is there a version of supertype checking that
;; doesn't use the cache ???
; itypep  indiv-typep  category-inherits-type?
; super-categories-of1

;; Set up actions associated with binding
; (ddm-ed "objects/model/bindings/hooks.lisp")

;; Clean up the display at the end of the load, document the globals
; (ddm-ed "interface/grammar/postprocessing.lisp")

;; Walk the model and such
; (ddm-ed "interface/grammar/printing.lisp")

;  (ddm-ed "objects/model/tree-families/rdata1.lisp")

;  (ddm-ed "objects/model/tree-families/driver2.lisp")
;; Works on the rdata of category definitions to instantiate the schema
;; of the ETFs in their mappings to make rules. 
;;    make-rules-for-rdata  instantiate-rule-schema 

;  (ddm-ed "objects/model/tree-families/subrs3.lisp")


(defun ddm-shortcuts ()
  (ddm-ed "grammar/rules/tree-families/shortcut-master2.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-expansion.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-mechanics.lisp")
  (ddm-ed "grammar/rules/tree-families/families1.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcuts1.lisp")
  (ddm-ed "grammar/rules/tree-families/families.lisp")
  (ddm-ed "grammar/rules/syntax/subcategorization.lisp"))
; (ddm-ed "grammar/model/core/qualities/attribute.lisp")
; (ddm-ed "grammar/model/sl/waypoints/attributes.lisp") ; ex.


(defun ddm-tree-families ()
  (ddm-ed "grammar/rules/tree-families/of.lisp")
  (ddm-ed "grammar/rules/tree-families/np-adjuncts.lisp")
  (ddm-ed "grammar/rules/tree-families/vp-adjuncts.lisp")
  (ddm-ed "grammar/rules/tree-families/verbs-taking-pps.lisp")
  (ddm-ed "grammar/rules/tree-families/that-comp.lisp")
  (ddm-ed "grammar/rules/tree-families/transitive.lisp"))


(defun ddm-grammar ()
  (ddm-ed "init/versons/v4.0/loaders/grammar.lisp")
  (ddm-ed "grammar/rules/tree-families/morphology1.lisp") ;; word rules
  (ddm-ed "grammar/rules/syntax/categories.lisp") ;; and morph tables
  (ddm-ed "grammar/rules/syntax/articles.lisp")
  (ddm-ed "grammar/rules/syntax/be.lisp")
  (ddm-ed "grammar/rules/syntax/prepositions.lisp")
  (ddm-ed "grammar/model/dossiers/modifiers.lisp")
  (ddm-ed "grammar/rules/DA/sentence-fragments.lisp")
  (ddm-ed "grammar/rules/syntax/syntactic-rules.lisp")
  (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
  (ddm-ed "grammar/rules/syntax/subject-relatives.lisp")
  (ddm-ed "grammar/rules/syntax/conjunction8.lisp")
  (ddm-ed "grammar/rules/syntax/possessive.lisp"))

; (ddm-ed "objects/chart/edge-vectors/tuck.lisp")
; (ddm-ed "objects/chart/edge-vectors/peek.lisp")

(defun ddm-anaphora ()  ;;doc -- note on anaphora
  (ddm-ed "analyzers/CA/anaphora3.lisp")
  (ddm-ed "grammar/rules/CA/defNP2.lisp")
  (ddm-ed "grammar/rules/situation/text-structure.lisp")
  (ddm-ed "grammar/model/core/pronouns/object1.lisp")
  (ddm-ed "grammar/model/core/pronouns/cases1.lisp")
  (ddm-ed "grammar/model/core/pronouns/ref4.lisp")
  (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
  (ddm-ed "grammar/rules/syntax/articles.lisp")
  (ddm-ed "grammar/rules/words/pronouns.lisp")
  (ddm-ed "objects/traces/pronouns.lisp")
  (ddm-ed "objects/traces/discourse.lisp"))
; (trace-pronouns)  (trace-discourse-structure)

(defun ddm-method-mess ()
  (ddm-ed "objects/model/categories/clos-backing.lisp")
  (ddm-ed "analyzers/psp/referent/ref-method.lisp")
  (ddm-ed "grammar/rules/tree-families/adverbs.lisp")
  (ddm-ed "grammar/rules/tree-families/adjective-phrases.lisp")
  (ddm-ed "grammar/rules/syntax/adjectives.lisp")
  (ddm-ed "grammar/rules/situation/rules.lisp"))
  

;; promulgate being able to abort edges and form-form
;; updates to all edge creators
(defun ddm-edge-makers ()
  (ddm-ed "analyzers/psp/edges/binary-explicit-all-keys2.lisp")
  (ddm-ed "analyzers/psp/edges/binary-explicit2.lisp")
  (ddm-ed "analyzers/psp/edges/binary1.lisp")
  (ddm-ed "analyzers/psp/edges/cs2.lisp")
  (ddm-ed "analyzers/psp/edges/initial-new1.lisp")
  (ddm-ed "analyzers/psp/edges/looking-under.lisp")
  (ddm-ed "analyzers/psp/edges/long-scan1.lisp")
  (ddm-ed "analyzers/psp/edges/polyw1.lisp")
  (ddm-ed "analyzers/psp/edges/single-new2.lisp")
  (ddm-ed "analyzers/psp/edges/unary-driver3.lisp")
  (ddm-ed "analyzers/psp/edges/unkown.lisp"))


(defun ddm-regression-jig ()
  (ddm-ed "tests/citation/code/sentence-corpora.lisp")
  ;;(ddm-ed "grammar/tests/citations/code/treetop-records.lisp") now in r3/code/grammar-testing
  )
#|  4/18/15  -- comparing to January
? (compare-to-snapshot 'dec-test)
Better: (57 56 55 54 53 50 49 48 46 45 42 41 39 35 34 28 26 25 24 23 22 18 17 13 12 11 10 9 8 7 6 3 2)
Worse: (52 51 29 14)
? (compare-to-snapshot 'dry-run)
Better: (42 39 38 36 34 30 29 25 23 21 19 18 16 15 14 10 9 8 7 5 4 3)
Worse: (28 13 6 2 1)

|#
#+ignore ;; obsolete -- all in r3
(defun ddm-load-corpora ()
  (ddm-load "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/January Dry Run passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/erk-translocation.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/aspp2-whole.lisp")
  (ddm-load "interface/R3-eval/overnight-sents.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/load-test-sents.lisp"))

#+ignore ;; obsolete -- all in r3
(defun ddm-ed-corpora ()
  (ddm-ed "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/January Dry Run passages.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/erk-translocation.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/aspp2-whole.lisp")
  (ddm-ed "interface/R3-eval/overnight-sents.lisp"))

;;--- 1/6/14
; The short cut realization handler, decode-realization-parameter-list
; does the wrong thing (redundant thing) when there are multiple etf.
; It only has to apply the word rules once, and then apply the rule
; schema for each of the etf.  That will call for refactoring the
; downstream applier:  apply-rdata-mappings

; (bio-setting)  //// needs many more switches set. 
; (f "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")
; (f "/Users/ddm/sift/nlp/corpus/biology/Denver_9-4-14.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/August test cases/processed/PMC3437993.testcase.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/August test cases/processed/PMC3515079.testcase.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/August test cases/processed/PMC3651738.testcase.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/Dec14-TestMaterials/DeepTest/training-passages.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/all passages combinded.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 1.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 2.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 3.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/paper2 passage 1.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/paper2 passage 2.txt")
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/paper2 passage 3.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/January5-TestMaterials/test-passages.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/darpa/January22-TestMaterials/passage.txt")
; (f "/Users/ddm/ws/R3/r3/trunk/corpus/fontana-good-for-kappa.txt")

; #13 (p "BRAF is inactive in NRAS mutant cells.")
; #13 (p "NRAS or CRAF depletion by RNA interference.")


#| 10/9/14 noun brackets are being added to word::single-quote
(ddm-ed "grammar/rules/words/punctation-bracketing.lisp")
(br-off)
(brackets-on (punctuation-named #\'))
(assign-bracket single-quote ].phrase) 
  but these will interact with the
  use of ' in possessives and contractions
  adjudicate-after-scan-pattern-has-succeeded (trace-ns-sequences)
(p "in the ‘off’ state") 
|#

(defun ddm-edge-mechanics ()
  (ddm-ed "objects/chart/edge-vectors/object.lisp")
  (ddm-ed "objects/chart/edge-vectors/vectors.lisp") ;; has knit routine
  (ddm-ed "objects/chart/edges/object.lisp")
  (ddm-ed "objects/chart/positions/positions.lisp"))


(defun ddm-vg-elevation ()
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  (ddm-ed "analyzers/SDM&P/scan.lisp")
  (ddm-ed "grammar/rules/SDM&P/create-categories.lisp"))

(defun ddm-subtyping ()
  (ddm-ed "objects/model/lattice-points/specialize.lisp")
  (ddm-ed "objects/model/lattice-points/structure1.lisp")
  (ddm-ed "objects/model/categories/structure.lisp"))

(defun ddm-ontology ()
  (ddm-ed "grammar/model/core/kinds/upper-model.lisp") ;; top & misc.
  (ddm-ed "grammar/model/core/kinds/processes.lisp")
  (ddm-ed "grammar/model/core/kinds/things.lisp"))

(defun ddm-location ()
  (ddm-ed "grammar/model/core/places/moving.lisp")
  (ddm-ed "grammar/model/core/places/paths.lisp") ;; on-path marker cat.
  (ddm-ed "grammar/model/core/places/configurations.lisp")
  (ddm-ed "grammar/model/core/places/rules2.lisp") ;; in-country commented out
  (ddm-ed "grammar/model/core/places/direction-rules.lisp")) ;; "the" literal



;; 10/14,19/14
(defun ddm-word-lookup ()
  (ddm-ed "objects/chart/words/lookup/new-words4.lisp")
  (ddm-ed "grammar/rules/syntax/affix-rules1.lisp")
  (ddm-ed "grammar/rules/brackets/comlex-unpacking.lisp")
  (ddm-ed "grammar/rules/words/one-offs/comlex-def-forms.lisp")
  (ddm-ed "objects/traces/tokenizer.lisp"))


; 1st  (list-da-actions) ;; from Grok era to hack titles and odd things
(defun ddm-da-files ()
  (ddm-ed "objects/rules/DA/object.lisp") ;; da-rule-named
  (ddm-ed "objects/rules/DA/define.lisp") ;; define-da-rule
  (ddm-ed "objects/rules/DA/decode-patterns.lisp")
  (ddm-ed "analyzers/DA/index.lisp") ;; (trie-for-1st-item tt)
  (ddm-ed "drivers/DA/setup-action.lisp")
  (ddm-ed "drivers/DA/action-globals.lisp")
  (ddm-ed "drivers/DA/fsa-globals.lisp")
  (ddm-ed "drivers/DA/dispatch1.lisp") ;; standalone-da-action
  (ddm-ed "drivers/DA/driver1.lisp")
  (ddm-ed "drivers/DA/fsa.lisp")
  (ddm-ed "grammar/rules/DA/aux+morph.lisp")
  (ddm-ed "grammar/model/core/titles/of-titles.lisp"))

; 2d   (list-ca-actions) ;; very old heuristic searches
(defun ddm-ca-actions ()
  (ddm-ed "grammar/rules/CA/stranded-VP1.lisp")
  (ddm-ed "drivers/forest/CA/CA4.lisp")
  (ddm-ed "analyzers/CA/actions.lisp")
  (ddm-ed "analyzers/CA/search2.lisp")
  (ddm-ed "analyzers/CA/scanners1.lisp"));; (comma-just-to-its-left edge)

; 3d   (list-generic-treetop-actions) ;; for stranded "of", "and", hyphen
(defun ddm-generic-tt-actions ()
  (ddm-ed "drivers/forest/actions1.lisp"))

(defun ddm-patterns ()
  (ddm-ed "objects/rules/scan-patterns/start.lisp") ;; empty
  (ddm-ed "objects/rules/scan-patterns/forms.lisp")
  (ddm-ed "objects/rules/scan-patterns/pattern-elements.lisp")
  (ddm-ed "objects/rules/scan-patterns/transitions.lisp")
  (ddm-ed "objects/rules/scan-patterns/patterns.lisp")
  (ddm-ed "objects/rules/scan-patterns/states.lisp")
  (ddm-ed "analyzers/psp/patterns/take-transitions.lisp")
  (ddm-ed "analyzers/psp/patterns/follow-out.lisp")
  (ddm-ed "analyzers/psp/patterns/accept.lisp")
  (ddm-ed "analyzers/psp/patterns/driver.lisp")
  (ddm-ed "analyzers/psp/patterns/initiate-pattern-scan.lisp")
  (ddm-ed "analyzers/psp/patterns/accept.lisp")
  (ddm-ed "analyzers/psp/patterns/traces.lisp"))


(defun ddm-original-forest ()
  (ddm-ed "drivers/chart/psp/PPTT8.lisp")
  (ddm-ed "drivers/chart/psp/trigger5.lisp")
  (ddm-ed "drivers/forest/trap2.lisp"))

(defun ddm-character-level ()
  (ddm-ed "analyzers/char-level/testing1.lisp")
  (ddm-ed "analyzers/char-level/state2.lisp")
  (ddm-ed "analyzers/char-level/setup-file3.lisp"))


(defun load-ddm-ws ()
  (ddm-ed "init/workspaces/reference-points.lisp")
  (ddm-ed "init/workspaces/traces.lisp")
  

  (ddm-ed "init/versions/v4.0/workspace/abbreviations.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))
; (ed "/Users/ddm/ws/Sparser local/workspaces/fire.lisp")


;;;------------------

;;--- Peter Clark's string function utilities
; (ed "/Users/ddm/ws/Vulcan/HaloEval/haloevaldata/scripts/logparser/km/strings.lisp")
; (bel::read-model )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;--- 2d work over the result
; (ddm-ed "grammar/rules/words/one-offs/obo-reader.lisp")
; (read-obo-term-file "/Users/ddm/ws/R3/ws/obo-terms.lisp")

; (load "/Users/ddm/ws/R3/r3/trunk/code/bel-interpreter/load.lisp")

#|
wget --output-document=${PMCID}.nxml 'http://www.pubmedcentral.nih.gov/oai/oai.cgi?verb=GetRecord\&identifier=oai:pubmedcentral.nih.gov:${PMCID}&metadataPrefix=pmc'

wget --output-document=3537887.nxml 'http://www.pubmedcentral.nih.gov/oai/oai.cgi?verb=GetRecord\&identifier=oai:pubmedcentral.nih.gov:${PMCID}&metadataPrefix=pmc'

3847091
|#

#| 10/16/15
? (compare-to-snapshots)

overnight 
Better: (8 6)
Worse: (16)
((1 . 5) (2 . 1) (3 . 11) (4 . 1) (5 . 1) (6 . 3) (7 . 5) 
(8 . 2) (9 . 6) (10 . 12) (11 . 7) (12 . 1) (13 . 3) (14 . 3) 
(15 . 9) (16 . 3) (17 . 6) (18 . 10) (19 . 5) (20 . 4)) 

dec-test 
Better: (48 46 45 24 23 22 20 18 14)
Worse: (44)
((1 . 1) (2 . 7) (3 . 4) (4 . 1) (5 . 2) (6 . 6) (7 . 1) 
(8 . 1) (9 . 3) (10 . 1) (11 . 1) (12 . 1) (13 . 3) (14 . 7) 
(15 . 2) (16 . 1) (17 . 4) (18 . 13) (19 . 12) (20 . 14) 
(21 . 1) (22 . 9) (23 . 13) (24 . 13) (25 . 3) (26 . 3) 
(27 . 4) (28 . 3) (29 . 10) (30 . 1) (31 . 1) (32 . 8) (33 . 5) 
(34 . 6) (35 . 4) (36 . 14) (37 . 9) (38 . 13) (39 . 3) (40 . 4) 
(41 . 5) (42 . 4) (43 . 6) (44 . 5) (45 . 2) (46 . 4) (47 . 1) 
(48 . 3) (49 . 3) (50 . 1) (51 . 1) (52 . 9) (53 . 1) (54 . 1) 
(55 . 9) (56 . 1) (57 . 9)) 

dry-run 
Better: (32 31 27 26 7 6 3 2)
Worse: nil
((1 . 1) (2 . 1) (3 . 2) (4 . 1) (5 . 3) (6 . 7) (7 . 5) 
(8 . 10) (9 . 6) (10 . 5) (11 . 6) (12 . 4) (13 . 8) (14 . 8) 
(15 . 1) (16 . 6) (17 . 1) (18 . 5) (19 . 4) (20 . 9) (21 . 1) 
(22 . 11) (23 . 1) (24 . 5) (25 . 1) (26 . 2) (27 . 2) (28 . 4) 
(29 . 1) (30 . 4) (31 . 2) (32 . 1) (33 . 4) (34 . 10) (35 . 4) 
(36 . 13) (37 . 1) (38 . 4) (39 . 1) (40 . 5) (41 . 10) (42 . 6)) 

aspp2 
*** "V12" is likely to be a protein, because of conjunction with "RASK_HUMAN"
Better: (77 73 60 55 54 53 52 38 33 28 8 7 3 2)
Worse: (21)
((1 . 1) (2 . 2) (3 . 2) (4 . 4) (5 . 1) (6 . 4) (7 . 2) (8 . 1) 
(9 . 4) (10 . 13) (11 . 6) (12 . 2) (13 . 4) (14 . 13) (15 . 1) 
(16 . 7) (17 . 1) (18 . 3) (19 . 3) (20 . 9) (21 . 3) (22 . 6) 
(23 . 10) (24 . 5) (25 . 4) (26 . 1) (27 . 4) (28 . 10) (29 . 5) 
(30 . 5) (31 . 3) (32 . 4) (33 . 5) (34 . 3) (35 . 1) (36 . 5) 
(37 . 9) (38 . 4) (39 . 2) (40 . 5) (41 . 9) (42 . 7) (43 . 4) 
(44 . 7) (45 . 5) (46 . 2) (47 . 16) (48 . 5) (49 . 1) (50 . 3) 
(51 . 4) (52 . 2) (53 . 9) (54 . 3) (55 . 3) (56 . 6) (57 . 2) 
(58 . 7) (59 . 1) (60 . 2) (61 . 2) (62 . 4) (63 . 3) (64 . 2) 
(65 . 10) (66 . 4) (67 . 1) (68 . 5) (69 . 10) (70 . 6) (71 . 10) 
(72 . 3) (73 . 5) (74 . 4) (75 . 7) (76 . 12) (77 . 5) (78 . 7) 
(79 . 8) (80 . 10) (81 . 10) (82 . 1) (83 . 8) (84 . 3) (85 . 5) 
(86 . 1) (87 . 5) (88 . 2) (89 . 3) (90 . 1)) 

erk 
Better: (7 4 3 1)
Worse: (9)
((1 . 1) (2 . 1) (3 . 1) (4 . 2) (5 . 9) (6 . 1) (7 . 12) (8 . 6) 
(9 . 8) (10 . 10) (11 . 3)) 

|#



; (setq *permit-extra-open-parens* t)
;? (f "/Users/ddm/ws/Sparser local/corpus/LarryHunterBioBook/BeingAlive.textsource")


; (word-frequency-setting)
; (setq *stem-words-for-frequency-counts* nil)
; (initialize-word-frequency-data)
; (f "/Users/ddm/sift/nlp/corpus/biology/hallmarks.txt")
;; Added fair number of characters to analyzers/tokenizer/alphabet.lisp
;; 2,902 unique words in 23,973 words
#|
took 74,471 microseconds (0.074471 seconds) to run.
      2,917 microseconds (0.002917 seconds, 3.92%) of which was spent in GC.
During that period, and with 8 available CPU cores,
     79,797 microseconds (0.079797 seconds) were spent in user mode
      1,607 microseconds (0.001607 seconds) were spent in system mode
 2,284,960 bytes of memory allocated.

|#

;; 2/6/14
; (setq *uniformly-scan-all-no-space-token-sequences* t)
;   polyword referents for HBP1 or D1 made done by reify-spelled-name
;   called from reify-ns-name-and-make-edge
; Referent is a category cons'd on the fly -- doesn't feel right
; (p "HBP1 is a repressor of the cyclin D1 gene and inhibits the Wnt signaling pathway. The inhibition of Wnt signaling and growth requires a common domain of HBP1. The apparent mechanism is an inhibition of TCF/LEF DNA binding through physical interaction with HBP1")

; (f "/Users/ddm/sift/nlp/corpus/biology/cholera.txt")

;  8/11/14 Sweep through everything and scoop up all the bio-entities
; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)


