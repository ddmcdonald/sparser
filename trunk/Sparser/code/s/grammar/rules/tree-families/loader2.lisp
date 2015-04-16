;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.3 January 20145

;; initiated 8/5/92 v2.3, added NP & morphology 8/31, added [that comp] 10/22/93
;; 10/7/94 added [group of type],  10/14 added [of genitive]
;; 0.1 (10/20) renamed mod+np-head to [pre-head np modifiers]
;; 0.2 (10/26) merged the 'of' etf in to one file: [of]
;;     (4/95) added [ditransitive]  (5/2) added [verbs taking pps]
;;     (5/28) added [indirect obj pattern]   (6/14) added [np adjuncts]
;;      and [prepositonal phrases]   (8/28) added [adjective phrases]
;;     (10/18) added [copula patterns]  (12/26) added [vp]
;; 1.0 (12/6/97)  bumped the whole loader to accomodate conditioned loading
;;      of lattice points. Incremented postprocessing
;;     (9/27/99) added [dates]. (10/2) added [names].
;; 1.1 (10/10) renamed [names] to be [single words], reflecting a change in
;;      strategy seen in simultaneously bumping [morphology] to '1'.
;;     (2/24/01) Added a [compounds]. (3/11/05) Added adverbs.
;;     (3/27/09) Added [shortcuts]. (7/23/09) Added interjections.
;; 1.2 (10/5/09) Added [correspondences]. 8/4/11 Added vp-adjuncts
;;     (12/26/13) Moved vp's after clauses so "be" is defined.
;;     (2/6/14) Added [families]. [abbreviation].
;; 1.3 (9/14/14) added [shortcut-mechanics] and [shortcut-master] as probably
;;      replacement for the February scheme. 9/21/14 pulling [shortcut-expansion]
;;      out of shortcut-master. 12/11/14 Bumping families and short-
;;      master to 1. 1/5/15 Bumping [shortcuts] to 1. 

(in-package :sparser)

(gload "tree-families;single words")
(gload "tree-families;morphology1")
(gload "tree-families;postprocessing1")

(gload "tree-families;NP")
(gload "tree-families;np adjuncts")
(gload "tree-families;pre-head np modifiers")
(gload "tree-families;of")
(gload "tree-families;dates")
(gload "tree-families;season-year")
(gload "tree-families;anchor")

(gload "tree-families;transitive")
(gload "tree-families;ditransitive")
(gload "tree-families;indirect obj pattern")
(gload "tree-families;verbs taking pps")
(gload "tree-families;copula patterns")
(gload "tree-families;that comp")

(gload "tree-families;vp")
(gload "tree-families;vp-adjuncts")

(gload "tree-families;compounds")

(gload "tree-families;prepositional phrases")
(gload "tree-families;adjective phrases")
(gload "tree-families;adverbs")

(gload "tree-families;interjections")

(gload "tree-families;abbreviation")
(gload "tree-families;families1")
(gload "tree-families;shortcut-mechanics")
(gload "tree-families;shortcut-expansion")
(gload "tree-families;shortcut-master2")
(gload "tree-families;shortcuts1")

