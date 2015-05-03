;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddm-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  April 2015

;; Initiated 10/9/14 for personalized settings and recording what I'm doing -- ddm.

(in-package :sparser)

(defvar *r3-trunk* nil
  "String identifing the location of the trunk on 
  your machine, including a final slash")

; (ddm-load-article-2)
(defun ddm-load-article-2 ()
  (cwd "/Users/ddm/ws/R3/r3/trunk/code/")
  (load "load.lisp")
  (let* ((fn (intern (symbol-name '#:make-sparser-doc-structure)
                     (find-package :r3)))
         (doc-elements
          (funcall fn 3847091 :dir "/Users/ddm/ws/R3/r3/trunk/darpa/January5-TestMaterials"))
         (article (car doc-elements)))
    (setq *sweep-for-terminals* nil)
    (setq *article* article)
    (read-from-document *article*)
    (setq *sweep-for-terminals* t)))
; (read-from-document *article*)

; (r3::make-sparser-doc-structure 1079799)
; (read-from-document 1079799)
; (r3::make-sparser-doc-structure 537887 :dir darpa/January5-TestMaterials")
; (r3::make-sparser-doc-structure 3847091 :dir "/Users/ddm/ws/R3/r3/trunk/darpa/January5-TestMaterials")


; (defvar script :biology)  ;; For customizing what gets loaded
; (load "/Users/ddm/sparser/load-nlp.lisp")

; (noun "C-RAF:B-RAF" :super heterodimer)

; (trace-parse-edges) ;; extend into march-back-from-the-right/segment
; meta-. parse-at-the-segment-level

; (create-reactome-kb) ;; makes the Krisp model
; (ddm-ed "grammar/model/sl/biology/reactome/RAF_MEK_ERK_simple.lisp")
; (d (reactome-entity    "BiochemicalReaction13" "Complex21"


;; *do-anaphora* = t  
;; (setq *scan-for-unsaturated-individuals* t)
; (figure-7)  (cells-defNP)  (p *brent-story*)

; dec #34 -- "an event"

(defun ddm-standard () ;;    (ddm-standard)
  (setup-bio) ;; load the bio model etc.
  (setq *r3-trunk* "/Users/ddm/ws/R3/r3/trunk/")
  ;; (load-nxml-converter)
  (trace-lexicon-unpacking) (trace-morphology)
  (setq *check-forms* t) ;; allow rule filtering by schema patern
  (setq *report-form-check-blocks* nil)
  (setq *readout-relations* t)
;  (setq *trace-instance-recording* t
;        *scan-for-unsaturated-individuals* t)
;  (setq *scan-for-unsaturated-individuals* t)
;  (setq *debug-anaphora* t)  
;  (setq *do-anaphora* nil)  (setq *debug-pronouns* t)
  ;(setq *work-on-ns-patterns* t) 
;  (trace-parse-edges) (trace-rule-source) (trace-island-driving)
  ;(incorporate-obo-terms
  ; "/Users/ddm/ws/R3/r3/trunk/code/obo-terms.lisp")
  (ddm-load-corpora)
  (ddm-load "interface/R3-eval/dec14-output.lisp")
  ;; (test-dec)  (dtst nil t) (reset-dectest)
  ;; (test-overnight)
  (test-jan))

(defun ddm-bio ()
  (ddm-ed "grammar/model/sl/biology/mechanics.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  (ddm-ed "grammar/model/sl/biology/proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/amino-acids.lisp")
  (ddm-ed "grammar/model/sl/biology/terms1.lisp")
  (ddm-ed "grammar/model/sl/biology/drugs.lisp")
  (ddm-ed "grammar/model/sl/biology/phenomena.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs1.lisp")
  (ddm-ed "grammar/model/sl/biology/switches.lisp")
  (ddm-ed "grammar/model/sl/biology/rules.lisp"))
;;  molecules and NGkappB not loaded
;; cf. model/sl/NIH/site.lisp

(defun ddm-new-parsing-ws ()
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "drivers/chart/psp/multi-scan.lisp")
  (ddm-ed "drivers/chart/psp/chunker1.lisp")
  (ddm-ed "drivers/chart/psp/pts5.lisp")
  (ddm-ed "drivers/chart/psp/march-seg5.lisp")
  (ddm-ed "analyzers/SDM&P/scan1.lisp")
  (ddm-ed "drivers/forest/new-forest-protocol.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "analyzers/psp/check/multiply7.lisp")
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
  (ddm-ed "objects/traces/psp1.lisp")
  (ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "analyzers/psp/patterns/traces.lisp")
  (ddm-ed "objects/traces/scan-patterns.lisp")
  (ddm-ed "objects/traces/treetops.lisp"))

(defun ddm-maybe-spurious-rule-dupb ()
  (ddm-ed "objects/rules/cfr/multiplier3.lisp")
  (ddm-ed "objects/rules/cfr/construct1.lisp")
  (ddm-ed "objects/rules/cfr/duplicates.lisp")
  (ddm-ed "objects/rules/cfr/define5.lisp"))
; i/r/s-make-the-rule
  
(defun ddm-pending-notes ()
  (sparser-doc-ed "notes/note on bio control structure.lisp")
  (sparser-doc-ed "notes/note on anaphora.lisp")
  (sparser-doc-ed "notes/note on simpler shortcuts.lisp")
  (sparser-doc-ed "notes/note on traces.lisp")
  (sparser-doc-ed "notes/note on edges.lisp"))


;; local anaphora, getting categories right
; sentence-sweep-loop  decode-realization-parameter-list

;; Are we making the right references in the history?
;    decode-category-parameter-list decode-index-field

;; Sentence sweep (dies on 2d wrap)
;   sentence-sweep  extract-string-from-char-buffers 
;   *length-of-character-input-buffer*  -- goosed to 50k

; (setq *work-on-ns-patterns* t)


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

(defun ddm-no-spaces ()
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "drivers/chart/psp/multi-scan.lisp")
  (ddm-ed "analyzers/psp/patterns/uniform-scan1.lisp") ;; driver
  (ddm-ed "analyzers/psp/patterns/pattern-gophers.lisp")
  (ddm-ed "analyzers/psp/patterns/patterns.lisp")
  (ddm-ed "analyzers/psp/patterns/character-specialists.lisp")
  (ddm-ed "grammar/rules/DA/nospace-categories.lisp")
  (ddm-ed "grammar/rules/SDM&P/create-categories.lisp")
  (ddm-ed "grammar/rules/syntax/categories.lisp"))



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
  (ddm-ed "grammar/rules/tree-families/shortcut-master1.lisp")
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
  (ddm-ed "init/Lisp/lload.lisp")
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
  (ddm-ed "grammar/rules/tree-families/shortcut-master1.lisp")
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
  (ddm-ed "grammar/rules/syntax/articles.lisp")
  (ddm-ed "grammar/rules/words/pronouns.lisp")
  (ddm-ed "objects/traces/pronouns.lisp")
  (ddm-ed "objects/traces/discourse.lisp"))

(defun ddm-polyword-conundrum ()
  (ddm-ed "objects/rules/cfr/dotted5.lisp")
  (ddm-ed "objects/rules/cfr/knit-in3.lisp")
  (ddm-ed "objects/rules/cfr/polywords1.lisp")
  (ddm-ed "objects/chart/words/polyword-form1.lisp")
  (ddm-ed "analyzers/psp/assess/terminal-edges2.lisp"))

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
)


(defun ddm-regression-jig ()
  (ddm-ed "objects/doc/sentence-corpora.lisp")
  (ddm-ed "grammar/tests/citations/code/treetop-records.lisp"))
#|  4/18/15  -- comparing to January
? (compare-to-snapshot 'dec-test)
Better: (57 56 55 54 53 50 49 48 46 45 42 41 39 35 34 28 26 25 24 23 22 18 17 13 12 11 10 9 8 7 6 3 2)
Worse: (52 51 29 14)
? (compare-to-snapshot 'dry-run)
Better: (42 39 38 36 34 30 29 25 23 21 19 18 16 15 14 10 9 8 7 5 4 3)
Worse: (28 13 6 2 1)

|#
(defun ddm-load-corpora ()
  (ddm-load "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/January Dry Run passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/erk-translocation.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/aspp2-whole.lisp")
  (ddm-load "interface/R3-eval/overnight-sents.lisp"))

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
  (ddm-ed "objects/chart/edge-vectors/object2.lisp")
  (ddm-ed "objects/chart/edge-vectors/vectors2.lisp") ;; has knit routine
  (ddm-ed "objects/chart/edges/object3.lisp")
  (ddm-ed "objects/chart/positions/positions1.lisp"))


(defun ddm-vg-elevation ()
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  (ddm-ed "analyzers/SDM&P/scan1.lisp")
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
  (ddm-ed "init/workspaces/flags.lisp")
  (ddm-ed "init/versions/v4.0/workspace/abbreviations.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))
; (ed "/Users/ddm/ws/Sparser local/workspaces/fire.lisp")


;;------- working with OBOs

;;--- 1st generate the output file
; (load "/Users/ddm/ws/R3/r3/trunk/code/obo2lisp/obo2lisp.lisp")
; (transcribe-obo-file "/Users/ddm/ws/R3/trunk/ontologies/pro-test-file.obo")
(defun translate-obos ()  ;; (translate-obos)
 (cl-user::translate-obo-files 
  '("/Users/ddm/ws/R3/trunk/ontologies/bfo.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/ro.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/go-plus.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/pro.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/chebi.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/cl.obo")
;"/Users/ddm/ws/R3/trunk/ontologies/"
  "~/ws/R3/rs/trunk/corpus/obo-terms.lisp"))

(defun cl-user::translate-obo-files (in-files out-file)
  (declare (ignore in-files out-file))
  (error "load the real one -- this just quiets the compiler"))

;;--- 2d work over the result
; (ddm-ed "grammar/rules/words/one-offs/obo-reader.lisp")
; (read-obo-term-file "/Users/ddm/ws/R3/ws/obo-terms.lisp")

; (load "/Users/ddm/ws/R3/r3/trunk/code/bel-interpreter/load.lisp")

#|
wget --output-document=${PMCID}.nxml 'http://www.pubmedcentral.nih.gov/oai/oai.cgi?verb=GetRecord\&identifier=oai:pubmedcentral.nih.gov:${PMCID}&metadataPrefix=pmc'

wget --output-document=3537887.nxml 'http://www.pubmedcentral.nih.gov/oai/oai.cgi?verb=GetRecord\&identifier=oai:pubmedcentral.nih.gov:${PMCID}&metadataPrefix=pmc'

3847091
|#

;;;------------------
;;;  Hard filenames
;;;------------------

;;--- Peter Clark's string function utilities
; (ed "/Users/ddm/ws/Vulcan/HaloEval/haloevaldata/scripts/logparser/km/strings.lisp")
; (bel::read-model )

(defun ddm-corpus-location (in-list out-file)
  (declare (ignore in-list out-file))
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))

(defun ddm-ed (string)
  #-sbcl
  (ed (concatenate 'string
                   "~/sparser/Sparser/code/s/"
                   string))
  #+sbcl
  (print `(**** cant call ed from SBCL yet)))

(defun ddm-load (string)
  (load (concatenate 'string
                     "~/sparser/Sparser/code/s/"
                     string)))

(defun sparser-doc-ed (string)
  (let ((load-string
         (concatenate
          'string
          (namestring cl-user::*nlp-home*) ;; e.g. #P"/Users/ddm/sparser/"
          "Sparser/documentation/"
          string)))
    (ed load-string)))



