;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 1992-1999,2010-2018 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "logicals"
;;;   Module:  "init;loaders;"
;;;  version:  August 2018

;; 4/21/92 added new,  5/10 broke apart CA/HA,  7/18 promoted all the
;; directories under "names;" up to "core;",  7/23 added tools;time
;; and model;sl:jv:,  9/17 added "places;US States:",  10/2 added
;; "core;amounts",  10/7 swapped Sparser-source for CTI-code,
;; 10/19 added traversal-routines;  11/28 broke psp;finish into
;; complete and referent, 12/2 moved individuals from dossiers to
;; objects;model, 12/28 added in additional definitions to fit new
;; loading scheme, 1/16 added object;words:lookup, 2/9 pushed the
;; grammar configurations down. 2/10 added init;lisp.  5/9 added
;; chart;stack.  6/18 added rules;context.  7/13 added tools;cons-
;; resource. 9/4 changed "do edges" to "kinds of edges" for clarity
;; of function  ... 2/13/93 revised the top to take different descriptions
;; of the root directory not grounded all the way down as logicals.
;; 7/8 added DA and do-DA
;; 8/23 moved init; down under s;   9/21 added adjuncts; and below.
;; 9/24 broke out articles from other sources;  9/28 handled hassle with
;; the form of *source-root*.  12/7 added connection to the corpus
;; 1/16/94 revised terms in interface.  3/30 put in corpus-data;
;; 4/24 added public-grammar; and special dossier locations for those
;; modules (to be specialized to a different location when spawning a
;; version, but here just pointing to normal dossier location)
;; 7/25 added [verb-dossier;]   8/3 reverted public-grammar to point
;; to the real grammar directory with a comment about where the public is.
;; 3/16/95 changing all the individual grammar files to have their own
;; logical so they can be easily converted to public grammar.
;; 23/18/95 added a couple of missing cases for the grammar.
;; 3/31 marked a number of cases 'public-grammar' and added 'public-dossiers;'
;; 4/1 refined that to breakout the subdirectories of [grammar]
;; 5/5 added da-rules    6/13 changed how the location of the corpus is done
;; 9/21 added scan-level patterns.  12/20 added ern.  6/25/96 added edges in the
;; grammar files. 7/21 added *nih*.
;; 10/11/97 Reworked the treatment of public grammar -- see gload.
;; 3/22/98 added lattice-points. 9/12 added psi and annotation. 12/13/99 added
;; core:kinds. 2/9/07 Added *SDM&P*. 7/16 added ambush.  8/29/07 added MSWindows
;; in the initial special cases. 6/09 added checkpoint. 8/27/09 added poirot.
;; 8/15/10 added one-offs under words. 11/12/10 removed poirot, added mumble-
;; interface. 7/19/11 added mil; for sl;military. 8/31/11 added syntax-quant;
;; 12/15/11 added hurricanes. 11/30/13 *waypoints*. 6/4/14 NIH -> biology
;; 10/6/15 added blocks. 12/3/15 added mid-level.
;; 12/22/15 support Common Lisp logical pathnames.

(in-package :sparser)

;;;------------------------------
;;; initialize logical pathnames
;;;------------------------------

(defvar *source-root*
  (merge-pathnames
   (make-pathname :directory '(:relative "s"))
   *sparser-code-directory*))

(defvar *fasl-root*
  (merge-pathnames
   (make-pathname
    :directory `(:relative "f"
                 #+asdf3 ,(uiop:implementation-identifier)
                 #-asdf3 ,(substitute #\- #\Space (lisp-implementation-type))))
   *sparser-code-directory*))

(setf (logical-pathname-translations "sparser")
      `(("s;**;*.*.*" ,(**/* *source-root*))
        ("f;**;*.*.*" ,(**/* *fasl-root*))))

(def-logical-pathname
  (**/* "sparser:source;" :type *lisp-type*)
  (**/* *source-root* :type *lisp-type*))

(def-logical-pathname
  (**/* "sparser:source;" :type *fasl-type*)
  (**/* *fasl-root* :type *fasl-type*))


(def-logical-pathname
    (**/* "sparser:source;" :type "json")
    (**/* *source-root* :type "json"))

(def-logical-pathname
    (**/* "sparser:source;" :type "tsv")
    (**/* *source-root* :type "tsv"))

;; an intermediate fasl form
#+allegro
(def-logical-pathname
  (**/* "sparser:source;" :type "001")
  (**/* *fasl-root* :type "001"))

;;;------------------------------------------
;;; Sparser initialization logical pathnames
;;;------------------------------------------

(def-logical-pathname "init;"         "source;init;")
(def-logical-pathname "images;"       "init;images;")
(def-logical-pathname "lisp;"         "init;lisp;")
(def-logical-pathname "loaders;"      "init;loaders;")
(def-logical-pathname "config;"       "init;config;")
(def-logical-pathname "workspace;"    "init;workspace;")
(def-logical-pathname "workspaces;"   "init;workspaces;")
(def-logical-pathname "grammar-configurations;" "config;grammars;")

(defvar cl-user::location-of-text-corpora nil
  "User-specified location of external corpora.")

(when cl-user::location-of-text-corpora
  (def-logical-pathname "corpus;" cl-user::location-of-text-corpora))

;;;------------------------
;;; all the standard cases
;;;------------------------

(def-logical-pathname "objects;"      "source;objects;")
(def-logical-pathname "chart;"        "objects;chart;")
(def-logical-pathname "word-obj;"     "chart;words;")
(def-logical-pathname "lookup-words;" "word-obj;lookup;")
(def-logical-pathname "cat;"          "chart;categories;")
(def-logical-pathname "positions;"    "chart;positions;")
(def-logical-pathname "edges;"        "chart;edges;")
(def-logical-pathname "ev;"           "chart;edge-vectors;")
(def-logical-pathname "bracket;"      "chart;brackets;")
(def-logical-pathname "stack;"        "chart;stack;")

(def-logical-pathname "rule-objs;"  "objects;rules;")
(def-logical-pathname "rule-links;" "rule-objs;rule-links;")
(def-logical-pathname "cfr;"        "rule-objs;cfr;")
(def-logical-pathname "csr;"        "rule-objs;csr;")
(def-logical-pathname "pattern-objects;"   "rule-objs;scan-patterns;")

(def-logical-pathname "model-objs;"      "objects;model;")
(def-logical-pathname "categories;"      "model-objs;categories;")
(def-logical-pathname "lattice-points;"  "model-objs;lattice-points;")
(def-logical-pathname "individuals;"     "model-objs;individuals;")
(def-logical-pathname "psi;"             "model-objs;psi;")
(def-logical-pathname "variables;"       "model-objs;variables;")
(def-logical-pathname "bindings;"        "model-objs;bindings;")
(def-logical-pathname "tf;"              "model-objs;tree-families;")
(def-logical-pathname "old-individuals;" "model-objs;old-individuals;")

(def-logical-pathname "traces;"     "objects;traces;")
(def-logical-pathname "doc;"        "objects;doc;")

(def-logical-pathname "situation-objs;" "objects;situation;")

(def-logical-pathname "analyzers;"   "source;analyzers;")
(def-logical-pathname "chars;"       "analyzers;char-level;")
(def-logical-pathname "tokens;"      "analyzers;tokenizer;")
(def-logical-pathname "run-FSAs;"    "analyzers;FSA;")
(def-logical-pathname "psp;"         "analyzers;psp;")
(def-logical-pathname "init chart;"  "psp;init;")
(def-logical-pathname "fill chart;"  "psp;fill-chart;")
(def-logical-pathname "scan;"        "psp;scan;")
(def-logical-pathname "assess;"      "psp;assess;")
(def-logical-pathname "check;"       "psp;check;")
(def-logical-pathname "march;"       "psp;march;")
(def-logical-pathname "threading;"   "psp;threading;")
(def-logical-pathname "complete;"    "psp;complete;")
(def-logical-pathname "referent;"    "psp;referent;")
(def-logical-pathname "annotation;"  "psp;annotation;")
(def-logical-pathname "kinds of edges;"    "psp;edges;")
(def-logical-pathname "scan-patterns;"     "psp;patterns;")
(def-logical-pathname "context;"     "analyzers;context;")
(def-logical-pathname "sect;"        "analyzers;sectionizing;")
(def-logical-pathname "do doc;"      "analyzers;doc;")
(def-logical-pathname "do HA;"       "analyzers;HA;")
(def-logical-pathname "do DM&P;"     "analyzers;DM&P;")
(def-logical-pathname "do SDM&P;"    "analyzers;SDM&P;")
(def-logical-pathname "forest;"      "analyzers;forest;")
(def-logical-pathname "traversal-routines;"   "analyzers;traversal;")
(def-logical-pathname "do CA;"       "analyzers;CA;")
(def-logical-pathname "replace;"     "do CA;replace;")
(def-logical-pathname "DA;"          "analyzers;DA;")

(def-logical-pathname "drivers;"         "source;drivers;")
(def-logical-pathname "init-drivers;"    "drivers;inits;")
(def-logical-pathname "session-inits;"   "init-drivers;sessions;")
(def-logical-pathname "source-drivers;"  "drivers;sources;")
(def-logical-pathname "sink-drivers;"    "drivers;sinks;")
(def-logical-pathname "articles;"        "drivers;articles;")
(def-logical-pathname "chart-drivers;"   "drivers;chart;")
(def-logical-pathname "psp-drivers;"     "chart-drivers;psp;")
(def-logical-pathname "psp-HA-drivers;"  "chart-drivers;psp-HA;")
(def-logical-pathname "new;"             "chart-drivers;new;")
(def-logical-pathname "all-edges;"       "chart-drivers;all-edges;")
(def-logical-pathname "forest-drivers;"  "drivers;forest;")
(def-logical-pathname "action-drivers;"  "drivers;actions;")
(def-logical-pathname "timing;"          "drivers;timing;")
(def-logical-pathname "do DA;"           "drivers;DA;")

(def-logical-pathname "forms;"         "objects;forms;")

(def-logical-pathname "grammar;"       "source;grammar;")

(def-logical-pathname "actions;"       "grammar;actions;")
(def-logical-pathname "rules;"         "grammar;rules;")

(def-logical-pathname "grammar edge types;"   "rules;edges;")

(def-logical-pathname "fsa;"            "rules;FSAs;")
(def-logical-pathname "newlines;"       "rules;FSAs;newlines;")

(def-logical-pathname "required-words;" "rules;words;")
(def-logical-pathname "words;"          "rules;words;")
(def-logical-pathname "one-offs;"       "words;one-offs;")
(def-logical-pathname "basic-words;"    "words;basics;")

(def-logical-pathname "tree-families;" "rules;tree-families;")
(def-logical-pathname "ca;"            "rules;CA;")
(def-logical-pathname "ha;"            "rules;HA;")
(def-logical-pathname "da-rules;"      "rules;DA;")
(def-logical-pathname "DM&P;"          "rules;DM&P;")
(def-logical-pathname "SDM&P;"         "rules;SDM&P;")

(def-logical-pathname "syntax;"         "rules;syntax;")
(def-logical-pathname "the-categories;" "rules;syntax;")

(def-logical-pathname "syntax-morph;"  "rules;syntax;")
(def-logical-pathname "syntax-vg;"     "rules;syntax;")
(def-logical-pathname "syntax-art;"    "rules;syntax;")
(def-logical-pathname "syntax-conj;"   "rules;syntax;")
(def-logical-pathname "syntax-rel;"    "rules;syntax;")
(def-logical-pathname "syntax-poss;"   "rules;syntax;")
(def-logical-pathname "syntax-comp;"   "rules;syntax;")
(def-logical-pathname "syntax-quant;"  "rules;syntax;")

(def-logical-pathname "brackets;"          "rules;brackets;")
(def-logical-pathname "required-brackets;" "rules;brackets;")

(def-logical-pathname "para;"          "rules;paragraphs;")
(def-logical-pathname "sect-rules;"    "rules;sectionizing;")
(def-logical-pathname "SGML;"          "rules;SGML;")
(def-logical-pathname "context-rules;" "rules;context;")
(def-logical-pathname "sources;"       "rules;sources;")
(def-logical-pathname "traversal;"     "rules;traversal;")

(def-logical-pathname "gl;"           "grammar;gl;")
(def-logical-pathname "gl-form;"      "gl;form;")
(def-logical-pathname "gl-entries;"   "gl;entries;")

(def-logical-pathname "sit-rules;"    "rules;situation;")

(def-logical-pathname "model;"        "grammar;model;")
(def-logical-pathname "model-forms;"  "objects;model;forms;")
(def-logical-pathname "core;"         "model;core;")

(def-logical-pathname "cat-prefs;"    "model;core;")
(def-logical-pathname "ad-tableau;"   "model;core;")

(def-logical-pathname "kinds;"        "core;kinds;")
(def-logical-pathname "mid-level;"    "core;mid-level;")
(def-logical-pathname "numbers;"      "core;numbers;")
(def-logical-pathname "amounts;"      "core;amounts;")
(def-logical-pathname "qualities;"    "core;qualities;")
(def-logical-pathname "time;"         "core;time;")
(def-logical-pathname "money;"        "core;money;")
(def-logical-pathname "finance;"      "core;finance;")
(def-logical-pathname "collections;"  "core;collections;")
(def-logical-pathname "names;"        "core;names;")
(def-logical-pathname "names-model;"  "core;names;")
(def-logical-pathname "names-fsa;"    "core;names;fsa;")
(def-logical-pathname "people;"       "core;people;")
(def-logical-pathname "companies;"    "core;companies;")
(def-logical-pathname "subsid;"       "companies;subsid;")
(def-logical-pathname "inc;"          "companies;inc;")
(def-logical-pathname "coc;"          "companies;coc;")
(def-logical-pathname "titles;"       "core;titles;")
(def-logical-pathname "resp;"         "titles;resp;")
(def-logical-pathname "places;"       "core;places;")
(def-logical-pathname "cities;"       "places;cities;")
(def-logical-pathname "countries;"    "places;countries;")
(def-logical-pathname "geo;"          "places;geo;")
(def-logical-pathname "US states;"    "places;US states;")
(def-logical-pathname "adjuncts;"     "core;adjuncts;")
(def-logical-pathname "approx;"       "adjuncts;approx;")
(def-logical-pathname "frequency;"    "adjuncts;frequency;")
(def-logical-pathname "sequence;"     "adjuncts;sequence;")
(def-logical-pathname "pronouns;"     "core;pronouns;")

(def-logical-pathname "sl;"           "model;sl;")
(def-logical-pathname "reports;"      "sl;reports;")
(def-logical-pathname "jv;"           "sl;JV;")
(def-logical-pathname "pct;"          "sl;PCT;")
(def-logical-pathname "ern;"          "sl;ERN;")
(def-logical-pathname "disease;"      "sl;disease;")
(def-logical-pathname "bio;"          "sl;biology;")
(def-logical-pathname "bio-not-loaded;"          "sl;biology-not-loaded;")
(def-logical-pathname "score-stats;"          "sl;score-stats;")
(def-logical-pathname "hurricanes;"   "sl;hurricanes;")
(def-logical-pathname "blocks;"       "sl;blocks-world;")
(def-logical-pathname "biocuration;"  "sl;biocuration;")
(def-logical-pathname "music;"        "sl;music;")

(def-logical-pathname "mideast;"      "sl;middle-east;")
(def-logical-pathname "banking;"      "sl;banking;")
(def-logical-pathname "isr;"          "sl;isr;")
(def-logical-pathname "waypoints;"    "sl;waypoints;")

(def-logical-pathname "Who's News;"   "sl;Who's News;")
(def-logical-pathname "acts;"         "Who's News;acts;")
(def-logical-pathname "je;"           "Who's News;job-events;")

(def-logical-pathname "ambush;"       "sl;ambush;")
(def-logical-pathname "ckpt;"         "sl;checkpoint;")
(def-logical-pathname "mil;"          "sl;military;")

(def-logical-pathname "dossiers;"        "model;dossiers;")
(def-logical-pathname "known cities;"    "dossiers;cities;")
(def-logical-pathname "known countries;" "dossiers;countries;")
(def-logical-pathname "known states;"    "dossiers;states;")

(def-logical-pathname "gr-tests;"       "grammar;tests;")
(def-logical-pathname "citations;"      "gr-tests;citations;cases;")
(def-logical-pathname "citation-code;"  "gr-tests;citations;code;")

(def-logical-pathname "interface;"         "source;interface;")
(def-logical-pathname "C&L;"               "interface;C&L;")
(def-logical-pathname "AssetNet;"          "interface;AssetNet;")
(def-logical-pathname "file ops;"          "interface;files;")
(def-logical-pathname "workbench;"         "interface;workbench;")
(def-logical-pathname "menus;"             "interface;menus;")
(def-logical-pathname "records;"           "interface;records;")
(def-logical-pathname "grammar-interface;" "interface;grammar;")
(def-logical-pathname "corpus-data;"       "interface;corpus;")
(def-logical-pathname "mumble-interface;"  "interface;mumble;")

(def-logical-pathname "tools;"        "source;tools;")
(def-logical-pathname "basic-tools;"  "tools;basics;")
(def-logical-pathname "measuring;"    "tools;timing;")
(def-logical-pathname "kons;"         "tools;cons-resource;")

(def-logical-pathname "kraql;"        "objects;model;kraql;")
