;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2000,2010-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "grammar"
;;;    Module:  "init;versions:v<>:loaders:"
;;;   version:  June 2014

;; broken out from loaders;master-loader 4/19/94. Added Whos-news-post-dossiers-loader
;;  4/29 added [words;whitespace assignments].  5/25 consolidated the
;;  adjuncts.  6/17 gated the call to the 2d loader for Who's News.
;;  7/13 uncommented loading of pronouns 7/22 put them under their own gate
;;  so they'd show up in the right place in the grammar menu.  8/10 reordered
;;  resource initializations now that they use kconses.  9/18 moved [analyzers;dm&p:
;;  measure] to the last point in the load so that all the categories will be
;;  defined before it loads.  10/12 move pct in from whos-news.  10/24 put a gate
;;  on the call to [syntax;loader] because none of those modules are showing up
;;  in the menu.  1/5/95 gated the HA loader, put in [newlines:loader].
;;  1/26 added *specific-sources*.  2/28 put gate around collections.
;;  3/18 reviewed all the calls to be sure they were via logicals.
;;  3/31 revised the gate on pronouns.   5/5 added *da* case.    7/13 revised
;;  the gate on core;pronoun.  11/9 ordered tree-families after syntax
;;  11/10 took it back.  12/20 broke out part of the loading of numbers, and
;;  added financials. 12/26 renamed financials to ern -- financials is empty as
;;  a core module. 1/13/96 gave financials back some content.  6/4 amended the
;;  gate for delayed loading.  6/5 added an additional gate around the 2d-stage
;;  loader for titles.  6/17 added edge types.  6/25 added some gates for copy-file
;;  and moved in some files that weren't within the grammar directory tree.
;; 7/21 added *nih*. 8/16/97 added gates for no model. 10/11 coverted over to gload.
;; 12/6 conditionalized loading of tree-families on *lattice-points*. 7/12/98 included
;; *ern* into the conditionalization. 12/13/99 added *kinds*. 3/18/00 conditionally
;; bumped the company loader to 2 for *lattice-points*. 3/21 ditto collections.
;; 5/1 moved collections and proper-names after tree families. 6/14 moved collections
;; after numbers to get the right category for 'number'. Moved companies after collections
;; and also numbers-part-2. 9/6 conditionalized finance and amounts to *lattice-points*
;; 2/9/07 Added *SDM&P*. 7/27 moved collections ahead of amounts and numbers.
;; 10/5/09 Moved in [tree-families;correspondences] because it has to be after most
;; if not all of the grammar has been loaded. 6/19/10 added Porter-stemmer.
;; 11/12/10 Removed *poirot* since that code's being revamped and redistributed
;; and we don't have rights to its source anyway. Added mumble-interface next to
;; correspondences. 7/10/11 Added hook for the generic lexicon with call to setup-
;; comlex. 7/19 added *generic-military*. 8/1 uncommented loading of (very minimal)
;; upper-model so general categories are available earlier. 8/25 Moved collections
;; up just after the upper-model because they had followed location which depended
;; on them to formulate plurals. 9/16 Broke words loader into two parts: loader1
;; and loader-part-2. 9/29 moved 32d part later. 12/16/11 added hurricanes.
;; 12/3/12 Removed bracket files to their own loader. 3/18/13 added 2d-loader
;; for kinds.  Also bumped title loader to 3.  7/1/13 Added a post-loader for adjunct
;; rules. 12/2/13 waypoints. 1/29/14 Removing the *c3* guards to see if everything
;; will load compatibly. 3/28/14 converted loading kinds;upper-model to kinds;1st-loader
;; so that file could be broken into more useful pieces. 4/16/14 moved it just below
;; collections so plural realizations would work. 5/25/14 added a call to make temporal
;; sequences among the final operations after dossiers are loaded. 6/1/14 added
;; more temporal bits that late. 


(in-package :sparser)


(when (or *load-the-grammar*  ;; keeps a version like BBN from seeing the
                              ;; undefined functions in here

          *delayed-loading-of-the-grammar* )  ;; but let two-stage images see it

(defun load-the-grammar ()
  ;; Depending on the value of *load-the-grammar* this routine will
  ;; either be run now as part of launching Everything, or will be
  ;; omitted and then run (perhaps) after the image has been
  ;; launched

  (unless (or *just-note-changed-files*
              *copy-file*)
    (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
    (initialize-cons-resource)
    (when *include-model-facilities*
      (initialize-individuals-resource)
      (establish-binding-resource)))

  (load-grammar-specific-edge-types)
  
  (gload "fsa;loader - model1")

  (gate-grammar *standard-syntactic-categories*
    (gload "the-categories;categories"))

  (gate-grammar *brackets*
    ;; the bracket definitions reference syntactic categories
    (gload "brackets;loader"))

  (gload "words;loader1")
    ;; the function words make reference to bracket types
  (gload "words;whitespace assignments")

  (gate-grammar *tree-families*
    ;; This should come after any of the modules whose categories
    ;; it references
    (if *lattice-points*
      (gload "tree-families;loader1")
      (gload "tree-families;loader")))

  (gate-grammar *collections*
    ;; sequence-of-numbers requires sequence. Collections had been after
    ;; the loading of amounts
    (if *lattice-points*
      (gload "collections;loader1")
      (gload "collections;loader")))

  (gload "kinds;1st-loader") ;; defines individual and such 

  (gate-grammar *kinds*
    (gload "kinds;loader"))

  (gate-grammar *proper-names*
    (gload "names;loader2")
    (setq *try-character-type-fsas* t))

  (gate-grammar *standard-adjuncts*
    (gload "adjuncts;loader"))

  (gate-grammar *qualities*
    (gload "qualities;loader"))

  (gate-grammar *syntax*
     ;; be & have (etc) reference tree-families
    (gload "syntax;loader3"))

  (gload "words;loader-part2")

  (gate-grammar *paired-punctuation*
    (gload "traversal;loader"))
  
  (gate-grammar *location*
    (gload "places;loader1"))

  (gate-grammar *digits-fsa*
    (gload "numbers;fsa digits6"))

  (gate-grammar *numbers*
    (gload "numbers;loader2"))

  (gate-grammar *amounts*
    (if *lattice-points*
      (gload "amounts;loader1")
      (gload "amounts;loader")))

  (gate-grammar *numbers*
    (unless *lattice-points*
      ;; this is just a definition for 'fractions' with conflicts with the
      ;; current treatment of "first quarter"
      (gload "numbers;loader 2d part")))

  (gate-grammar *people*
    (gload "people;loader2"))

  (gate-grammar *companies*
    (if *lattice-points*
      (gload "companies;loader2")
      (gload "companies;loader1")))

  (gate-grammar *time*  ;; needs find/ordinal
    (gload "core;time:loader1"))

  (gate-grammar *titles* ;; needs calculated-time
    (gload "titles;loader2"))

  (gate-grammar *money*
    (if *lattice-points*
      (gload "money;loader1")
      (gload "money;loader")))

  (gate-grammar *finance*
    (if *lattice-points*
      (gload "finance;loader1")
      (gload "finance;loader")))

  (gate-grammar *pronoun-objects*
    (gload "pronouns;loader2"))


  (gate-grammar *paragraph-detection*
    ;; n.b. paragraphs;words requires spaces to be defined
    (gload "para;loader")
    (gload "newlines;loader"))


  (gate-grammar *reports*
    (gload "reports;loader"))

  (gate-grammar *pct*
    (gload "pct;loader"))

  (gate-grammar *whos-news*
    (gload "Who's News;loader1"))

  (gate-grammar *ern*
    (if *lattice-points*
      (gload "ern;loader1")
      (gload "ern;loader")))

  (gate-grammar *nih*
    (gload "nih;loader"))

  (gate-grammar *ambush*
    (gload "ambush;loader"))

  (gate-grammar *checkpoint-ops*
    (gload "ckpt;loader"))

  (gate-grammar *generic-military*
    (gload "mil;loader"))

  (gate-grammar *disease*
    (gload "disease;loader"))

  (gate-grammar *hurricanes*
    (gload "hurricanes;loader"))

  (gate-grammar *middle-east*
    (gload "mideast;loader"))

  (gate-grammar *Banking*
    (gload "banking;loader"))

  (gate-grammar *ISR*
    (gload "isr;loader"))

  ;(gate-grammar *c3*
    (gload "sit-rules;loader") ;)

  (gate-grammar *waypoints*
    (gload "waypoints;loader"))


#| irrelevant until GL comes back up
  (gate-grammar *load-Tipster-grammar-into-image*
    (gate-grammar *gl*
      (gload "gl form;loader"))
    (gload "model;sl:JV:loader1")) |#

  (gate-grammar *ca*
    (gload "ca;loader2"))

  (gate-grammar *ha*
    (gload "ha;loader1"))

  (gate-grammar *da*
    (gload "da-rules;loader"))

  (gate-grammar *DM&P*
    (gload "DM&P;loader"))

  (gate-grammar *SDM&P*
    (gload "SDM&P;loader"))

  (gate-grammar *context-variables*
    (gload "context-rules;loader"))

  (gate-grammar *sgml*
    (gload "SGML;categories")
    (gload "SGML;loader"))

  #| [loader1] is 1991 hacks for avoiding wsj headers, [loader2]
      is empty from a never-completed revision
  (gate-grammar *recognize-sections-within-articles*
    (gload "sect-rules;loader2"))  |#

  (gate-grammar *specific-sources*
    (gload "sources;loader"))


  ;;--------------------------------------------------------------
  ;; These have to go last because they will refer to categories
  ;; defined by the rest of the grammar -- they don't introduce
  ;; any new categories

  (when (find-package :mumble)
    (gate-grammar *tree-families*     
       (gload "tree-families;correspondences"))
    (gate-grammar *tree-families* *reversable*
       (gload "mumble-interface;loader")))

  (gate-grammar *proper-names*
    (gload "names;loader-2d2"))

  (gate-grammar *titles*
    (gate-grammar *pct*
      (titles-2d-stage-loader)))

  (gate-grammar *kinds*
    (gload "kinds;2d-loader"))

  (gate-grammar *standard-adjuncts*
    (gload "adjuncts;rules"))

  (gload "cat-prefs;category preferences")

  (unless *nothing-Mac-specific*
    (gload "ad-tableau;autodef tableau"))

  (when *DM&P*
    (gload "DM&P;measure"))

  (gload "words;frequency")
  (gload "words;Porter-stemmer")
  (gload "one-offs;loader")

  (when *load-dossiers-into-image*
    (gload "dossiers;loader")
    (gate-grammar *whos-news*
     (whos-news-post-dossiers-loader)))

  (when *time*
    (late-time-files)
    (make-temporal-sequences))

  (when *incorporate-generic-lexicon*
    (prime-comlex))

  (gate-grammar *testing*
    (gate-grammar *miscellaneous*
      (gload "grammar;tests:loader"))
    (gate-grammar *citations*
      (gload "citations;loader")))

  
  (when *external-grammar-files*
    (load *external-grammar-files*))
  (when *external-grammar-dossier-files*
    (load *external-grammar-dossier-files*))


  (unless (or *just-note-changed-files*
              *copy-file*)
    (postprocess-grammar-indexes))

  )) ;; end of Load-the-grammar and the gate in front of it

