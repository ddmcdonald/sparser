;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddm-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  November 2014

;; Initiated 10/9/14 for personalized settings and recording what 
;; I'm doing -- ddm.

(in-package :sparser)

; (defvar script :biology)  ;; For customizing what gets loaded
; (load "/Users/ddm/sparser/load-nlp.lisp")
; (setq *break-on-illegal-duplicate-rules* t)

(defun ddm-standard () ;;    (ddm-standard)
  (setup-bio) ;; load the bio model etc.
  ;; (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
  (setq *note-text-relations* nil)
  ;;(bf-off)  (bio-setting)
  (trace-lexicon-unpacking) (trace-morphology))
  ;;(trace-terminals-sweep) ;; for hacking the sweep rebuilding
  ;; (trace-chunker)
  ;; (setq *chunk-sentence-into-phrases* nil) ;; ditto 
  ;;( trace-island-driving)

;; 10/27/14  J3
(defun setup-j3 ()
  (bf-on)
  (trace-island-driving))

; (trace-paragraphs) ;; for sentences and periods
; (trace-edges) ;; edge over period as a literal?

; (trace-island-driving)  (untrace-island-driving) 
; (trace-treetops-sweep)
; (progn (trace-chunker) (trace-segments))
; (trace-terminals-sweep) ;; pw, etc.
; (progn (untrace-chunker) (untrace-segments) (untrace-terminals-sweep)  (untrace-island-driving))

; (setq *do-islands-2d-pass* nil)
; exploded-tree-family-named

; (bio-setting)
; (f "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")
; (f "/Users/ddm/sift/nlp/corpus/biology/Denver_9-4-14.txt")

;; 11/6/14 -- collect-no-space-sequence-into-word  
;  (p "For example, SHOC2/Sur-8 bridges Ras and Raf")


(defun ddm-bio ()
  (ddm-ed "grammar/model/sl/biology/mechanics.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  (ddm-ed "grammar/model/sl/biology/proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/amino-acids.lisp")
  (ddm-ed "grammar/model/sl/biology/terms.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs.lisp"))
;;  molecules and NGkappB not loaded

(defun ddm-new-parsing-ws ()
  (ddm-ed "drivers/forest/new-forest-protocol.lisp")
  (ddm-ed "drivers/forest/island-driving.lisp")
  (ddm-ed "drivers/forest/pass1.lisp")
  (ddm-ed "drivers/forest/pass2.lisp")
  (ddm-ed "drivers/forest/forest-gophers.lisp")
  (ddm-ed "drivers/forest/parsing-containers.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "drivers/chart/psp/pts5.lisp")
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  (ddm-ed "drivers/chart/psp/chunker.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "grammar/rules/DM&P/period-hook.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "grammar/rules/syntax/syntactic-rules.lisp")
  (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
  (ddm-ed "grammar/rules/DM&P/period-hook.lisp")
  (ddm-ed "objects/traces/psp1.lisp")
  (ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "objects/traces/scan-patterns.lisp")
  (ddm-ed "objects/traces/treetops.lisp"))

(defun ddm-no-spaces ()
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "analyzers/psp/patterns/uniform-scan1.lisp")
  (ddm-ed "analyzers/psp/patterns/character-specialists.lisp")
  (ddm-ed "grammar/rules/DA/nospace-categories.lisp")
  (ddm-ed "grammar/rules/SD&P/create-categories.lisp")
  (ddm-ed "grammar/rules/syntax/categories.lisp"))

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


(defun ddm-tree-families ()
  (ddm-ed "grammar/rules/tree-families/of.lisp")
  (ddm-ed "grammar/rules/tree-families/np-adjuncts.lisp")
  (ddm-ed "grammar/rules/tree-families/vp-adjuncts.lisp")
  (ddm-ed "grammar/rules/tree-families/verbs-taking-pps.lisp")
  (ddm-ed "grammar/rules/tree-families/that-comp.lisp")
  (ddm-ed "grammar/rules/tree-families/transitive.lisp"))


(defun ddm-grammar ()
  (ddm-ed "grammar/model/dossiers/modifiers.lisp")
 (ddm-ed "grammar/rules/DA/sentence-fragments.lisp")
 (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
 (ddm-ed "grammar/rules/syntax/prepositions.lisp")
 (ddm-ed "grammar/rules/syntax/subject-relatives.lisp")
 (ddm-ed "grammar/rules/syntax/conjunction8.lisp"))

; (ddm-ed "objects/chart/edge-vectors/tuck.lisp)
;(ddm-ed "objects/chart/edge-vectors/peek.lisp)


(defun ddm-shortcuts ()
  (ddm-ed "grammar/rules/tree-families/shortcut-master.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-expansion.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-mechanics.lisp")
  (ddm-ed "grammar/rules/tree-families/families.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcuts.lisp")
  (ddm-ed "grammar/rules/tree-families/families.lisp")
  (ddm-ed "grammar/rules/syntax/subcategorization.lisp"))


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

; (ddm-ed "objects/doc/object1.lisp")  -- document structure
; (ddm-ed "tools/basics/resource.lisp)  -- auto recycling
; (ddm-ed "objects/doc/classes.lisp") -- what is this doing ????


(defun ddm-vg-elevation ()
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  (ddm-ed "analyzers/SDM&P/scan1.lisp")
  (ddm-ed "grammar/rules/SDM&P/create-categories.lisp"))

; uniform-scan
;(ddm-ed "analysers/psp/patterns/uniform-scan.lisp")
;(ddm-ed "analysers/psp/patterns/traces.lisp")

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

(defun ddm-original-forest ()
  (ddm-ed "drivers/chart/psp/PPTT8.lisp")
  (ddm-ed "drivers/chart/psp/trigger5.lisp")
  (ddm-ed "drivers/forest/trap2.lisp"))


(defun load-ddm-ws ()
  (ddm-ed "init/workspaces/reference-points.lisp")
  (ddm-ed "init/workspaces/traces.lisp")
  (ddm-ed "init/workspaces/flags.lisp")
  (ddm-ed "init/versions/v4.0/workspace/abbreviations.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))
; (ed "/Users/ddm/ws/Sparser local/workspaces/fire.lisp")


;;------- working with OBOs

;;--- 1st generate the output file
; (load "/Users/ddm/ws/R3/trunk/code/obo2lisp/obo2lisp.lisp")
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
  "~/ws/R3/ws/obo-terms.lisp"))

(defun cl-user::translate-obo-files ()
  (error "load the real one -- this just quiets the compiler"))

;;--- 2d work over the result
; (ddm-ed "grammar/rules/words/one-offs/obo-reader.lisp")
; (read-obo-term-file "/Users/ddm/ws/R3/ws/obo-terms.lisp")


;;;------------------
;;;  Hard filenames
;;;------------------

;;--- Peter Clark's string function utilities
(ed "/Users/ddm/ws/Vulcan/HaloEval/haloevaldata/scripts/logparser/km/strings.lisp")

(defun ddm-corpus-location (in-list out-file)
  (declare (ignore in-list out-file))
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))

(defun ddm-ed (string)
  (ed (concatenate 'string
                   "~/sparser/Sparser/code/s/"
                   string)))



