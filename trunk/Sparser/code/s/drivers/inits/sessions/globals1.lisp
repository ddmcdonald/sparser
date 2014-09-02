;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997,2011-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "drivers;inits:sessions:"
;;;  Version:  August 2014

;;;  Flags and the code to initialize them, as pertain to the state
;;;  of an entire session with the analyzer.

;; 11/1/91 Added *do-completion-actions*
;; 11/25 Added *do-heuristic-segment-analysis*
;; 12/30 Added *track-salient-objects*, but it's in progress. Added
;;     *actions-on-treetops*.
;; 3/29/92  Added *copy-text-to-walking-window*
;; 7/8/93 v2.3 added *do-debris-analysis*
;; 3/28/94 added *do-domain-modeling-and-population*
;; 7/25 added *make-edges-for-unknown-words-from-their-suffixes*
;; 9/28 added gate and protocol flag for forest-level
;; 1/9/95 added a gate on introducing brackets from morph of unknown words
;; 8/17/97 moved up *ignore-capitalization* from PNF.
;; 10/31/06 added *annotate-realizations*. 2/9/07 added *do-strong-domain-modeling*
;; 7/2 added *new-dm&p*. 8/6 added *infer-rewriting-form-rules*  9/18/09 added
;; *use-subtypes*. 10/8 added *what-to-do-on-errors*.
;; 2/20/11 added *make-edges-over-new-digit-sequences*. 4/8/11 added
;; *convert-eft-form-categories-to-form-rules*. Added *do-unanalyzed-hyphenated-
;; sequences* 11/5/12. Added *accumulate-content-across-documents* 2/18/13
;; 3/8/13 added *break-on-multiple-single-term-completions*.
;; 3/9/13 added *note-text-relations*. Moved over *initialize-with-each-unit
;; -of-analysis* 3/1413. 7/1/13 added *reify-implicit-individuals* and similar
;; in-file flages from Grok work. Added *dbg-print*. 4/24/14 updated definition
;; of *forest-level-protocol*. 8/30/14 added flags to enable the new
;; forest level protocol. 

(in-package :sparser)


;;;-----------------------------------------
;;;  global parameters controlling display
;;;-----------------------------------------

(export '(*display-word-stream*
          ))

(defparameter *display-word-stream*  t
  "Acts as a flag to control whether the characters of the text under
   analysis are to be displayed as they are processed.  The flag
   is looked for within Next-token, and the display is done
   #<word> by #<word>.")

(defparameter *dbg-print* t
  "Guards ad-hoc debugging statements, i.e. temporary info that
   won't be converted to traces.")


(defparameter *display-article-name* t
  "Looked for during runs over document streams.  If the flag is
   on, the name of the article will be printed to *standard-output*
   at the start of the scan.")


(defparameter *copy-text-to-walking-window* t
  "Flag controlling whether the text of the article appears in a
   article window.")


;;;----------------------------------------------------------------------
;;; parameters controlling what segments of the analysis engine are done
;;;----------------------------------------------------------------------

;;;-------
;;; words
;;;-------

(defparameter *do-polywords-at-the-level-of-the-chart* t
  "Read by Do-any-chart-level-FSA.  Set to Nil by Establish-version-
   of-next-terminal-to-use when that version is :single-level-polywords.
   The default is T.")

(defparameter *unknown-word-policy* :make-new-word/analyze-properties)

(defparameter *do-properties-of-new-words* t
  "Checked in Make-new-word/analyze-properties, controlling whether any
   properties are calculated, e.g. morphological analysis, capitalization,
   lengths, etc.")

(defparameter *look-for-lowercase-equivalent-words* nil
  "Checked in Make-new-word/analyze-properties. Gates a routine that
   downcases and capitalizes capitalized or fullcase unknown words to
   see if there is already definition for them.")

(defparameter *make-edges-for-unknown-words-from-their-properties* nil
  "Set as part of the switch settings, read within Specific-assessed-
   actions.")

(defparameter *make-edges-over-new-digit-sequences* t
  "Intended to deliberately override the effects of the previous switch
   which probably had broader impact early on but now only effects
   numbers that aren't explictly defined, e.g. 62.")

(defparameter *make-edges-for-unknown-words-from-their-suffixes* nil
  "Set as part of the switch settings.
   Read within Consider-morphology-based-edges.")

(defparameter *introduce-brackets-for-unknown-words-from-their-suffixes* nil
  "Set as part of the switch settings.
   Read within make-word/all-properties to gate actions by Introduce-
   morph-brackets-from-unknown-word.")

;;;----------
;;; analysis
;;;----------

(defparameter *ignore-capitalization* nil
  "A parameter to be used in document styles that controls what
   value *capitalization-is-uninformative* should have in runs of
   documents with that style.")

(defparameter *do-forest-level* t
  "Set as part of the switch settings, read by Move-to-forest-level
   as a gate on that whole phase of the analysis")

(defparameter *forest-level-protocol* nil
  "Must be the a keyword naming the protocol and recognized
   in what-to-do-at-the-forest-level where the do-forest-level 
   function is set. Set as part of the switch settings.")

(defparameter *sweep-sentence-treetops* nil
  "Goes with the new-forest-driver (8/14) and must be on for 
   anything to happen. Gates the treetop sweep to determine
   the layout.")

(defparameter *island-driving* nil
  "The set that follows the sweep in the new forest protocol.
   Won't be seen if sweep flag is down. Gates the actual
   parsing of treetops.")

(defparameter *do-debris-analysis* nil
  "Set as part of the switch settings, read within HA code and in
   special DA drivers")

(defparameter *do-heuristic-segment-analysis* nil
  "Set as part of the switch settings, read within the Treetop
   manager code.")

(defparameter *do-conceptual-analysis* nil
  "Set as part of the switch settings, read within Do-treetops")

(defparameter *do-general-actions-on-treetops* nil
  "Set as part of the switch settings, read within Do-treetops")

(unless (boundp '*do-domain-modeling-and-population*)
  (defparameter *do-domain-modeling-and-population* nil
    "Set as part of the switch settings, read within Segment-finished."))

(unless (boundp '*do-unanalyzed-hyphenated-sequences*)
  (defparameter *do-unanalyzed-hyphenated-sequences* nil
    "Read in the hyphen-routine to govern whether we do this."))

(unless (boundp '*do-strong-domain-modeling*)
  (defparameter *do-strong-domain-modeling* nil
    "Set as part of the switch settings, read in Segment-finished"))

(defparameter *new-segment-coverage* :none
  "Flag to specify what sort of simpler d&p operation to do
   if any (default).")

(unless (boundp '*note-text-relations*)
  (defparameter *note-text-relations* nil
    "A switch read in segment-finished. Controls whether we collect
     purely textual relationship such as head, subject-verb, etc."))

(unless (boundp '*reify-implicit-individuals*)
  (defparameter *reify-implicit-individuals* t
    "Read in segment-finished. Looks for criteria to replace
     category segment heads with the corresponding individuals."))

(defparameter *profligate-creation-of-individuals* nil
  "This flag says that when we encounter a category as 
  the referent of a head edge we should replace it with
  the corresponding individual. Also see reify-implicit-
  individuals-in-segment, which has the same mission just
  with more explicit cases, which has proved tedious to debug.")


(defparameter *edge-for-unknown-words* t
  "This switch dictates whether or not we create a category,
   referent, and single-term rule for a word when it is unpacked.
   See unpack-primed-word and its subroutines.")



(unless (boundp '*new-dm&p*)
  (defparameter *new-dm&p* nil
    "Set as part of the switch settings, read within Segment-finished.
     Replaces/refines the activity that's gated by previous two switches."))

(unless (boundp '*infer-rewriting-form-rules*)
  (defparameter *infer-rewriting-form-rules* nil
    "Set in switch settings, read in i/r/s-make-the-rule. Governs whether
     additional form rules should be created by looking at the categories
     used in the cases of an ETS and making assumptions. These rules impose
     new categories over the referent of the form constituent."))

(unless (boundp '*convert-eft-form-categories-to-form-rules*)
  (defparameter *convert-eft-form-categories-to-form-rules* nil
    "If true, i/r/s-make-the-rule checks the rhs of the rule for any form
 categories, and if there are makes a form rule instead of the normal cfr."))


;; obsolete?? 11/25
(defparameter *do-heuristic-boundary-detection* nil
  "Set as part of the switch settings, read within Do-treetops")

(defparameter *do-completion-actions* t
  "Set as part of the switch settings, read within Complete.")

;; obsolete?? 11/1
(defparameter *check-action-triggers-during-completion* t
  "Flag examined during completion to determine whether the
   hook for external actions, Check-for-triggered-action,
   should be called on the label of the just completed item.")

(defparameter *track-salient-objects* nil
  "Flag examined in routines like Report-and-stash-salient-object/job-event")

(defparameter *actions-on-treetops* t
  "Flag examined in Do-treetop-triggers. Controls whether conceptual
   analysis or generic actions are done on treetops.")

(defparameter *use-subtypes* nil
  "Flag read in dispatch-on-unary-ref-actions and similar places to govern
   the use of mixin categories that induce subtypes of the head category.
   Right now (9/09) it's not clear what the operational story should be
   about them. Setting the flag to nil lets us write sublangauge-style
   rules so they are in place when we do want themm.")

(defparameter *accumulate-content-across-documents* nil
  "Controls whether we forget all the individuals the analysis created
   when we start the next document, or accumlate them. Read in
   per-article-initializations, presently bound to T by the doc-stream
   driver do-document-as-stream-of-files but could potentiallygo on all
   of them.")

(defparameter *initialize-with-each-unit-of-analysis* t
  "Read in analysis-core to gate the call to per-article-initializations")

(defparameter *ignore-parentheses* nil
  "Flag examined prior to setting hooks for mark-open-paren and
   span-parentheses. Setting the flag to t prevents default parsing of
   parenthetical expressions.")

(defparameter *timezones-off* nil
  "Flag examined prior to setting hooks for mark-open-paren and
   span-parentheses. Setting the flag to t prevents default parsing of
   parenthetical expressions.")

(defparameter *cfg-flag* nil
  "For debugging.")

(defparameter *break-on-multiple-single-term-completions* nil
  "Read in check routines to look at or ignore the cases when more
   than on edge over a terminal has a rule that extends it.")


;;;---------
;;; readout
;;;---------

(defparameter *display-salient-objects* t
  "Flag controlling whether after an article is analyzed its accumulated
   list of salient objects is displayed to *standard-output*")


(defparameter *vet-records* nil
  "Flag gating the checking of the records for the salient objects found
   during analysis.  When on, a record has to be approved by a reviewer
   before it can be written.")

(defparameter *accept-all-records* nil
  "Flag checked within the record vetting process that passes through
   all records that meet the established defaults, rather then having
   a person interveen.")


(defparameter *write-db-records-for-salient-objects* nil
  "Flag controlling whether after an article is analyzed its accumulated
   list of salient objects is dumped out into a file for exporting to
   a database.")

(defparameter *time-chart-level* t
  "A flag read in Chart-based-analysis.  When set, the elapsed time of
   the analysis is recorded in the global *time-in-chart-level-analysis*")

(defparameter *what-to-do-on-errors* :break
  "Controls what alternative function, if any, the core function break,
   error, and cerror are set to. Legal vallues are :error, which is the
   usual behavior; :punt, which causes a throw to the top of the analysis
   routine; and :skip-ahead, which move the position in the chart forward
   a heuristic number of words and tries to resume normal processing.
   See /tools/basics/no-breaks.lisp")