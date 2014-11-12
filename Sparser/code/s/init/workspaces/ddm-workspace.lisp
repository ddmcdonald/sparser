;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddm-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/9/14 for personalized settings and recording what 
;; I'm doing -- ddm.

(in-package :sparser)

; (defvar script :biology)  ;; For customizing what gets loaded
; (load "/Users/ddm/sparser/load-nlp.lisp")
(defun ddm-standard () ;; (ddm-standard)
  (setup-bio) ;; load the bio model etc.
  ;; (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
  (setq *note-text-relations* nil)
  ;;(bf-off)
  (trace-lexicon-unpacking) (trace-morphology)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  (setq *parse-chunk-interior-online* t)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed))

;; 10/27/14  J3
(defun setup-j3 ()
  (bf-on)
  (trace-island-driving))

; (trace-paragraphs) ;; for sentences and periods
; (trace-edges) ;; edge over period as a literal?

; (trace-island-driving)  (untrace-island-driving) 
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


(defun load-ddm-ws ()
  (ddm-ed "init/workspaces/reference-points.lisp")
  (ddm-ed "init/workspaces/traces.lisp")
  (ddm-ed "init/workspaces/flags.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))
; (load "/Users/ddm/ws/Sparser local/workspaces/fire.lisp")

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
  (ddm-ed "grammar/rules/DM&P/period-hook.lisp")
  (ddm-ed "objects/traces/psp1.lisp")
  (ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "objects/traces/treetops.lisp"))

(defun ddm-no-spaces ()
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "analyzers/psp/patterns/uniform-scan.lisp")
  (ddm-ed "analyzers/psp/patterns/character-specialists.lisp")
  (ddm-ed "grammar/rules/DA/nospace-categories.lisp")
  (ddm-ed "grammar/rules/SD&P/create-categories.lisp")
  (ddm-ed "grammar/rules/syntax/categories.lisp"))

(defun ddm-bio ()
  (ddm-ed "grammar/model/sl/biology/mechanics.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  (ddm-ed "grammar/model/sl/biology/proteins.lisp")
  (ddm-ed "grammar/model/sl/biology/amino-acids.lisp")
  (ddm-ed "grammar/model/sl/biology/terms.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs.lisp"))
;;  molecules and NGkappB not loaded

;; Set up actions associated with binding
; (ddm-ed "objects/model/bindings/hooks.lisp")

;; Clean up the display at the end of the load, document the globals
; (ddm-ed "interface/grammar/postprocessing.lisp")

;; Walk the model and such
; (ddm-ed "interface/grammar/printing.lisp")


(defun ddm-tree-families ()
  (ddm-ed "objects/model/tree-families/rdata1.lisp")
  (ddm-ed "objects/model/tree-families/driver2.lisp")
  (ddm-ed "objects/model/tree-families/subrs3.lisp")
  (ddm-ed "grammar/rules/tree-families/np-adjuncts.lisp"))



; (ddm-ed "grammar/model/dossiers/modifiers.lisp")


; (ddm-ed "grammar/rules/DA/sentence-fragments.lisp")
; (ddm-ed "grammar/rules/syntax/syntax-functions.lisp")
; (ddm-ed "grammar/rules/syntax/prepositions.lisp")
; (ddm-ed "grammar/rules/syntax/subject-relatives.lisp")
; (ddm-ed "grammar/rules/syntax/conjunction8.lisp")
; (ddm-ed "objects/chart/edge-vectors/tuck.lisp)
; (ddm-ed "objects/chart/edge-vectors/peek.lisp)

;; 10/14,19/14
(defun ddm-word-lookup ()
  (ddm-ed "objects/chart/words/lookup/new-words4.lisp")
  (ddm-ed "grammar/rules/syntax/affix-rules1.lisp")
  (ddm-ed "grammar/rules/brackets/comlex-unpacking.lisp")
  (ddm-ed "grammar/rules/words/one-offs/comlex-def-forms.lisp")
  (ddm-ed "objects/traces/tokenizer.lisp"))


(defun ddm-shortcuts ()
  (ddm-ed "grammar/rules/tree-families/shortcut-master.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-expansion.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcut-mechanics.lisp")
  (ddm-ed "grammar/rules/tree-families/shortcuts.lisp")
  (ddm-ed "grammar/rules/tree-families/families.lisp"))

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
  (ddm-ed "grammar/model/core/kinds/processes.lisp"))



; (load "/Users/ddm/ws/R3/trunk/code/obo2lisp/obo2lisp.lisp")
; (transcribe-obo-file "/Users/ddm/ws/R3/trunk/ontologies/pro-test-file.obo")
(defun translate-obos ()  ;; (translate-obos)
 (cl-user::translate-obo-files 
  '("/Users/ddm/ws/R3/trunk/ontologies/ro.obo") 
  "~/ws/R3/ws/obo-terms.lisp"))

;;--- Other hard filenames

(defun ddm-corpus-location ()
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))

(defun ddm-ed (string)
  (ed (concatenate 'string
                   "~/sparser/Sparser/code/s/"
                   string)))



