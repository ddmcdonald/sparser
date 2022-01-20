;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2003,2010-2022 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "master-loader"
;;;   module:  "init;loaders;"
;;;  Version:   January 2022

;; 4/21  added loading of chart-drivers;new:loader
;; 4/25  split fsas into basics and model
;; 7/15  tweeked the separation of the grammar
;; 8/8  (v1.9) bumped init-drivers to 5.
;; 9/15 (v1.9) Added guarded calls for joint ventures and
;;      the AssetNet interface
;;      -- and bumped the loader for syntax; to 1 to protect the old
;;      conjunction routine.
;; 9/17 (v1.9) bumped pronouns; loader to 1
;; 10/2 (v1.9) added loading of core;amounts
;; 10/19 (v2.0) added traversal-routines
;; 10/21 bumped [rule links:object] to 2. 10/22 added objects;labels.
;; 10/23 added SGML;loader
;; 10/30 moved the abbreviations to workspace
;; 10/31 sharpened tokenizer driving
;; 11/4  added the workspace files
;; 11/28 broke psp;finish into complete and referent
;; 12/2 moved individuals from dossiers to objects;model
;; 2/6/92 bumped drivers;inits to 6.
;; 2/9 switched how assetnet was gated to just *assetnet*
;; 3/19 added corpus;
;; (5/15 v2.2) bumped sgml to 1
;; 5/21 pulled words:basics:sections from the load as irrelevant
;; (7/13 v2.3) added the cons resource under tools.  Bumped drivers;inits loader
;;   to 7.  Bumped [do CA] to 1, [pronouns] -> 2, [rules;CA] -> 1, 
;;   [complete] to 1
;; ...
;; (5/11/93) bumped analysers;forest:loader to 1, bumped drivers;chart:psp:
;;   loader to 5
;; (6/2) rearranged the order of some files in the grammar
;; (6/4) added "model:core:category-preferences"
;; (7/16) repackaged things like Plist-for into objects;chart:generics
;; (8/16) gated the definition of Load-the-grammar so that a parser-only
;;  version wouldn't see function calls that weren't going to be defined
;;  Also moved files around to minimize temporarily undef. funs.
;; (8/18) divided the traces loader
;; (8/24) edited workspace calls so they could be compiled
;; (9/10) moved the workspace from init to individual versions so they
;;  could be easily specialized.
;; (9/13) added an explicit call to initialize-cons-resource,
;; (9/21) added the adjuncts at the top of the core grammar
;; (9/27) moved [traversal] up to drivers;chart and a direct call rather than
;;  being part of psp
;; (12/7) added loading of the Sparser-drivers in [corpus;]
;; (12/27) added [grammar:rules:sources:loader] and moved the orthography
;;  parts of gr. to the end, deleted an extra loading of sect. code. Added
;;  [drivers;articles], which was apparently missing before this.
;; (1/14/94) moved traces;online hook from  traces;ops-loader to drivers
;; (1/17) added [autodef tableau]. (3/5) shielded gmod-menu creation from 
;; the backup routine, changed the corpus loader to use Namelist-to-string
;; rather than the Mac-specific version
;; (3/28) moved [FSAs:loader - model1] back inside Load-the-grammar, added
;; loading of analyzers & grammar;rules DM&P.  3/30 reflected shift in position
;; of the corpus sparser-drivers to interface.  4/1 bumped names loader to 2
;; 4/13 put a gate on the tree families.  4/19 broke out load-the-grammar to
;; its own file. Added a dummy function here for meta-point
;; 5/27 added gated loading of interface for Apple.  8/93 moved a few loadpoints
;; around to settle conflicts; bumped session-inits;setup to 3
;; 10/31 added DA in objects and drivers.  12/12 added *sun* check at the end
;; with the applications.  3/16/95 tweeking some logicals to provide for
;; public grammar.  9/22 switched the order of interface; workbench and 
;; grammar since a grammar file refers to an autodef.  10/3 added loaders for
;; scan-level-patterns  12/1 added [line count]   6/5/96 added gate for delayed
;; loading of the grammar. 8/17/97 added gate on citations.  10/11/97 converted
;; grammar calls over to gload.  11/29 added parameterizations on *lattice-point*
;; 2/26/98 Added it to referent. 9/12 added annotation within psi.
;; 4/29/00 bumped check to loader1 for composite referents. 4/27/03 added loader
;; for objects;export.
;; 1/6-7/07 Moved the scope of *nothing-Mac-specific* up to cover most of the
;; workbench because Allegro doesn't recognize MCL's character macro for points.
;; 2/9/07 Added *SDM&P* 4/8/09 Added alternative load in drivers;DA when the
;; *da* module isn't included.  8/27 Added objects/import/. 9/23/11 Removed it
;; since it no longer does any work. Also removed load of basic-tests workspace
;; because it's too confusing. 1/29/14 Removing the *c3* guards to see if everything
;; will load compatibly. 5/19/15 bumped [fsa;polywords] to 5.  10/26/15 moved
;; *external-testing-files* ahead of other two forms in the testing section
;; so it can override parameter values if it needs to. 12/1/15 Cleaned up now
;; meaningless alternative load files on the value of *lattice-points*. Removed
;; the commented out C3 gates. 1/14/16 Added pre- and post-load hooks. Moved in
;; the upper model just before the loading of document objects because there
;; are now category definitions there that are properly linked to it.

(in-package :sparser)

(defun the-master-loader ()) ;; for meta-point

(lload "timing;calculation")
(start-timer '*time-to-load-everything*)

;;;----------------
;;; pre-load hooks
;;;----------------

(map nil #'funcall *pre-load-hooks*) ;; includes (script)

;;;--------------------
;;; extensions to Lisp
;;;--------------------

(lload "tools;basics;loader")
(lload "kons;loader")

(lload "objects;traces;ops-loader")

;;;---------
;;; objects
;;;---------

(lload "chart;units-labels;loader")
(lload "chart;words;loader")
(lload "rule objs;rule-links;object")
(lload "lookup words;loader")
  ;; includes fsas for [morphology] and [capitalization]
(lload "chart;categories;loader")
(lload "chart;positions;loader")
(lload "chart;edges;loader")
(lload "chart;edge-vectors;loader")
(lload "rule objs;cfr;loader")
(lload "rule objs;csr;loader")
(lload "rule objs;rule-links;generic")
(lload "pattern-objects;loader")
(lload "chart;brackets;loader")
(lload "chart;stack;loader")

(lload "objects;forms;loader")
(lload "objects;chart;generics;loader")

(lload "objects;model;loader") ;; defines Krisp

(gate-grammar *standard-syntactic-categories*
 ;; moved here to allow categories in kinds
 ;; to have realization data
 (gload "syntax;subcategorization"))

(lload "objects;situation;loader")

(when *da*
  (lload "objects;rules;DA;loader"))

(lload "objects;export;loader")

;; No usable content so flushed the directory 9/22/11
;;(lload "objects;import;loader")

(when *external-object-files*
  (load *external-object-files*))


;;;-----------
;;; analyzers
;;;-----------

(lload "init-drivers;loader")
(lload "action-drivers;loader")
  ;; positioning this here lets analyzer routines setup init-actions and
  ;; completion-actions

(gload "required-words;required")
(lload "chars;loader")

(gload "required-words;spaces")
(lload "tokens;loader")
  ;; the tokenizer code mentions the source starts and end words
  ;; and all the predefined spaces

(lload "run FSAs;loader")
(lload "fill chart;loader")
(lload "init chart;loader")
(gate-grammar *polywords*
  (gload "FSA;polywords"))
(lload "scan;loader")
(lload "assess;loader")
(lload "check;loader")
(lload "analyzers;psp;threading;loader")
;; (lload "march;loader") directory & load-file empty so flushed 9/22/11
(lload "complete;loader")
(lload "referent;loader")
(lload "kinds of edges;loader") ;; use with-referent-edges macro

(lload "analyzers;psp;terminate")
(lload "forest;loader")
(lload "traversal-routines;loader")
(lload "scan-patterns;loader")

(when *brackets*
  (lload "do ha;loader"))

;;(when *heuristics*
;;  These are just enabling fns. they aren't heuristics
(lload "do ca;loader")

(when *DM&P*
  (lload "analyzers;DM&P;loader"))

(when *SDM&P* ; includes notes
  (lload "analyzers;SDM&P;loader"))

(lload "objects;doc;loader") ;; refers to discourse-mention class in CA
   ;; and to the note classes in SDM&P

(lload "spot;loader") ; word-spotting depends on note classes in SDM&P

(when (and *orthographic-structure*
           *include-model-facilities*)
  (lload "analyzers;context;loader"))

(when *recognize-sections-within-articles*
  (lload "sect;loader"))

(when *da*
  (lload "analyzers;da;loader"))

(lload "session-inits;setup")

(when *external-analyzer-files*
  (load *external-analyzer-files*))


;;;-------------------------------
;;; required parts of the grammar
;;;-------------------------------

(gate-grammar *punctuation*
  (gload "required-words;punctuation"))
  (lload "tokens;alphabet")

(gate-grammar *brackets*
  (gload "required-brackets;required"))

(defparameter *try-character-type-fsas* nil)



(unless *load-the-grammar*
  ;; by default leave the character-type -driven fsas off.
  ;; Routines in the grammar will turn this flag on if
  ;; the requisite routines are being loaded
  (setq *try-character-type-fsas* nil)
  
  ;; by default make newline characters look like whitespace
  (defparameter *newline-is-a-word* nil)
  (use-return-newline-tokens-fsa))
  
(gate-grammar *miscellaneous*  ;; a daughter of testing
  (gload "gr-tests;parsing")
  (lload "timing;loader")) ;; quiet macro before drivers

;;;---------
;;; drivers
;;;---------

(lload "source-drivers;loader")
(lload "traces;online hook")
(lload "articles;loader")
(lload "sink-drivers;loader")
(lload "drivers;tokens;loader")
(lload "chart-drivers;loader")
(lload "chart-drivers;psp;loader")
(lload "chart-drivers;traversal")
(lload "chart-drivers;all-edges;loader")
(lload "forest-drivers;loader")

(gload "sit-rules;compose")

(if *da*
  (lload "drivers;DA;loader")
  (lload "drivers;DA;driver")) ;; the dispatch with the switch check

(lload "init-drivers;switches")
 ;; goes after all the other drivers because it references their flags

(lload "objects;traces;cases-loader")
  ;; goes down here rather than with the rest of objects because it
  ;; references zillions of functions.  The "ops" loader is at the
  ;; start of the loading so the macros are defined before they're used.

(when *external-driver-files*
  (load *external-driver-files*))

;;;-----------
;;; interface
;;;-----------

(lload "file ops;loader")
(lload "workbench;loader")
(lload "grammar-interface;loader")
(unless *nothing-Mac-specific*
  (lload "menus;loader"))

(when (find-package :mumble)
  (gate-grammar *reversable*
     (gload "mumble-interface;loader")))

(when *external-interface-files*
  (load *external-interface-files*))


;;;------------------
;;; testing & timing
;;;------------------

(when *external-testing-files*
  (load *external-testing-files*))

(gate-grammar *miscellaneous* ;; a daughter of testing
  (lload "measuring;distance between brackets")
  (lload "measuring;line count")
  (lload "gr-tests;analysis-quality")

  ;; logically it's a interface option
  (lload "tools;jsonify"))


(gate-grammar *citations*
  (lload "citation-code;loader"))

(lload "workspace;abbreviations") ; load early to help debug issues in grammar loading
(lload "workspace;traces")
(lload "workspace;switch settings")


;;;-----------
;;;  grammar
;;;-----------

(when *load-the-grammar*
  ;; (populate-functions-for-profiling) ;; (sp-profile:report) to see profile
  ;; (prime-sparser-profiler)
  (lload "loaders;grammar")
  (load-the-grammar))

(when *connect-to-the-corpus*
  ;; Load the set of logicals that define articles in the corpus.
  (lload "corpus-data;loader"))

(when *external-workspace-files*
  (load *external-workspace-files*))

(unless *nothing-Mac-specific*
  (launch-sparser-menus))

;;;-----------------
;;; post-load hooks
;;;-----------------

(map nil #'funcall *post-load-hooks*)
