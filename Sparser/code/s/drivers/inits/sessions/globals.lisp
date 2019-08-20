;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997,2011-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "drivers;inits:sessions:"
;;;  Version:  July 2019

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
;; forest level protocol. 10/29/14 added more flags to control its lower levels.
;; 4/26/15 added *reading-populated-document*. 12/1/15 Pulling is scattered
;; parameter definitions and setting them to nil. 

(in-package :sparser)

;;;---------------------------------------
;;;  parameters for what rules are formed
;;;---------------------------------------

(defparameter *reduced-form-rules* t
  "turn this on to reduce the number of form rules 
   produced for adjectives and other function terms")

(defparameter *head-rules-already-created* nil
  "Dynamically bound in define-function-term and read in
   make-rules-for-rdata to avoid duplicate unary rules. 
   Avoids assembly of redundant rules.")




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

(defparameter *dbg-print* nil
  "Guards ad-hoc debugging statements, i.e. temporary info that
   won't be converted to traces.")

(defparameter *debug-segment-handling* nil
  "Guards errors and breaks within the segment handling code that traps
   new cases or violations of standing assumptions.")

(defparameter *display-article-name* t
  "Looked for during runs over document streams.  If the flag is
   on, the name of the article will be printed to *standard-output*
   at the start of the scan.")

(defparameter *copy-text-to-walking-window* t
  "Flag controlling whether the text of the article appears in a
   article window.")

(defparameter *print-forest-after-doing-forest* nil
  "Gates the printing in new-forest-driver")

(defparameter *tts-after-each-section* nil
  "Gates displaying the chart after each section.
   Referenced in begin-new-paragraph")


;;;-----------------------------------------------
;;; parameters controlling whether trap new cases
;;;-----------------------------------------------

(defparameter *break-on-pattern-outside-coverage?* nil
  "The grammar/model of some phenomena is known to have 'edges',
   this is used to control whether we stop and look at them")


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

(defvar *comlex-word-lists-loaded* nil
  "Provides a flag to gate operations that reference these lists.
   Set by load-comlex")

;;;----------
;;; analysis
;;;----------

(defparameter *ignore-capitalization* nil
  "A parameter to be used in document styles that controls what
   value *capitalization-is-uninformative* should have in runs of
   documents with that style. In an incremental scan it gates
   whether or not we call PNF to identify proper names.")

(defparameter *pnf-routine* nil
  "Records the keyword that was passed to establish-pnf-routine to
   determine which variation is the runtime definition of the
   function pnf. Can stand as a proxie for whether there has been
   a call to that function.")

(defparameter *do-forest-level* t
  "Set as part of the switch settings, read by Move-to-forest-level
   as a gate on that whole phase of the analysis")

(defparameter *forest-level-protocol* nil
  "Must be the a keyword naming the protocol and recognized
   in what-to-do-at-the-forest-level where the do-forest-level 
   function is set. Set as part of the switch settings.")

#|(defparameter *sweep-for-terminals* t
  "Checked in sentence-sweep-loop when reading from a document
   to determine whether we run scan-words-loop to populate the
   edges of the chart, do polywords, and run fsas.") |#

(defparameter *sweep-for-sentences* nil
  "Alternative to parsing that is applied to large texts where
   we identify what new vocabularly the text may have and optionally
   chop it into sentences saved to a file.")

(defparameter *scanning-epistemic-features* nil
  "State flag that is up when that activity is underway.
   See read-epistemic-features.")

(defparameter *sentence-making-sweep* nil
  "Flag that is up when we are making that sweep through a
   document to drive or inhibit the right set of activities.")

(defparameter *sweep-for-polywords* t
  "Flag read within scan-terminals-loop that determines
   whether or not we look for polywords. Would not make
   sense for this to be nil unless doing a very low level
   word-frequency run or something similar.")

(defparameter *sweep-for-word-level-fsas* t
  "Flag read within scan-terminals-loop that determines
   whether or not we execute fsas such as the scan
   for digit sequences.")

(defparameter *word-level-completion-sweep* t
  "Flag read in scan-terminals-loop to control whether to run
   word-level-completion-sweep, which passes unspanned words through
   the completion hook to trigger any associated actions. Applies
   particularly to quotation marks, but also conjunctions and
   parentheses.")

(defparameter *sweep-for-terminal-edges* t
  "Flag read within scan-terminals-loop that determines
   whether or not we introduce edges over the individual
   words in the scaop of the terminals loop that
   aren't already covered by an edge.")

(defparameter *smart-frequency-count* nil
  "Flag checked in scan-terminals-and-do-core that controls whether
   we stop the analysis at that point and just update the frequency
   of various words (terminal under edges). Lets us appreciate
   polywords and such rather than just orthographic words")

(defparameter *grammar-and-model-based-parsing* nil
  "Wrapped around all of the parsing calls in sentence-processing-core
   to allow them to be turned off when all you want is to apply
   the lowest level of operations (polywords, numbers, fsas, 
   complete, terminal edges) as done by scan-terminals-loop.")

(defparameter *do-early-rules-sweep* t
  "Run semantic rules on NS pairs before running pattarns and conjunctions.")

(defparameter *sweep-for-patterns* nil
  "Checked in sentence-sweep-loop to determine whether we continue
   the analysis after the terminals of a sentence have been entered
   into the chart. Setting this to nil and turning on the traces for
   unknown words is a good way to identify the unknown words in a
   new corpus.")

(defparameter *sweep-for-early-information* nil
  "Run a pass across primarily the early part of a sentence
   to look for things like a preposed auxiliary or WH word
   that's indicative of questions. Presumes that the terminal
   edges have been introduced into the chart.")

(defparameter *sweep-for-conjunctions* nil
  "Checked in sentence-processing-core after pattern-sweep has
   introduced terminal edges into the chart. Looks for conjunctions
   that were marked in the pattern-sweek and considers applying them.")

(defparameter *sweep-for-parentheses* nil
  "Checked in sentence-processing-core to control whether or not
   to sweep through the sentence with the goal of running completion
   operations on the 'close' instances of paired punctuation.
   This can then trigger after actions on the content that
   was spanned.")

(defparameter *chunk-sentence-into-phrases* nil
  "Controls whether we proceed to chunk the sentence after we 
   have used sentence-sweep-loop to form its terminal edges.")

(defparameter *parse-chunk-interior-online* nil
  "Gates the option to parse the interior of a chunk
   just after the chunk is created. Referenced in
   identify-chunks")

(defparameter *big-mechanism-ngs* nil
  "use new interpreter for interior of NGs (only called for 
   NGs without a spanning edge)")

(defparameter *whack-a-rule* nil
  "In the multi-pass control structure this controls the
   use of the rule-cycle that tries all applicable rules  
   from the right to the left.")

(defun whack-a-rule (&optional (yes? t))
  (setq *whack-a-rule* yes?))

(defparameter *allow-form-conjunction-heuristic* nil
  "A switch to determine whether we allow two edges to conjoin 
  based on having the same form category. This is overly
  agressive when running inline (in after-actions of PTS)
  but valuable when there's more perspective in which cases
  it will be shallow bound.")

(defparameter *parse-chunked-treetop-forest* nil
  "Dependent on chunking, gates the option to go on and
   complete the analysis by doing the forest level.
   This is also dependent on new-forest-protocol? 
   returning non-nil")

(defparameter *sweep-sentence-treetops* nil
  "Goes with the new-forest-driver (8/14) and must be on for 
   anything to happen. Gates the treetop sweep to determine
   the layout.")

(defparameter *island-driving* nil
  "The set that follows the sweep in the new forest protocol.
   Won't be seen if sweep flag is down. Gates the actual
   parsing of treetops.")

(defparameter *return-after-doing-forest-level* nil
  "Governs whether the forest driver should make a call into the
   scanning level when it's finished or simply return. The call
   is appropriate when running incrementally, the return is for
   the alternative where all the earlier operations were done 
   an entire sentences at a time. Compare to the equivalent
   parameter *return-after-doing-segment* usef for PTS. Probably
   should merge them.")


(defparameter *reading-populated-document* nil
  "Master parameter that differentiates reading from a character
   stream and assembling a document from starting with a populated
   document reading from it.")

(defparameter *pre-read-all-sentences* nil
  "Will typically go with reading from a populated document.
   Signals the low level sweep to scan all of the text of all 
   of the text is some range of sentences and populate the
   corresponding sentence objects.")

(defparameter *readout-relations* t
  "Gates whether to export or display the relations that were
   found in the sentence.")

(defparameter *scan-for-unsaturated-individuals* nil
  "Gates a process that runs after all of the analysis is finished
   that looks for individuals that are missing a logically
   necessary variable and tries to fill them in.")

(defparameter *do-anaphora* t
  "Generally speaking, we always want to lookup the referents of
   pronouns, definite NPs, and the like. However when we are
   working on single sentences that have been lifted out of a
   paragraph the pronouns in them are unlikely to have referents
   and we just get silly errors. In such cases, dynamically
   binding this flag to nil will block looking for referents
   when we're in successive-sweeps mode.")

(defparameter *do-discourse-relations* nil
  "Controls whether we try to establish discourse relations between 
   successive sentences.")

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

(defparameter *delay-generalization-of-verb-edge-form* t
  "Normally, in SDM&P the form of the spanning edge is generalized
   early so that by the time we reach the segment-finished hook
   we have already converted, e.g., a verb+past to a vg. 
   This flag blocks that action under the assumption that
   it will happen instead as one of the actions on the hook after
   the original form has been read out for its tense/aspect information.")

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


(defparameter *do-heuristic-boundary-detection* nil
  "Set as part of the switch settings, read within Do-treetops")

(defparameter *do-completion-actions* t
  "Set as part of the switch settings, read within Complete.")

(defparameter *check-action-triggers-during-completion* t
  "Flag examined during completion to determine whether the
   hook for external actions, Check-for-triggered-action,
   should be called on the label of the just completed item.")

(defparameter *track-salient-objects* nil
  "Flag examined in routines like Report-and-stash-salient-object/job-event")

(defparameter *actions-on-treetops* t
  "Flag examined in Do-treetop-triggers. Controls whether conceptual
   analysis or generic actions are done on treetops.")

(defparameter *use-subtypes* t ;; this is a TEST
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

(defparameter *interpret-in-context* nil
  "If applicable (not called in every parsing protocol), adds a
   post sentence analysis sweep over the treetops to identify intended
   meeanings from literal referents.")

(defparameter *use-discourse-mentions* nil
  "This parameter turns on the discourse-mention mechanism")

(defparameter *constrain-pronouns-using-mentions* nil
  "Compute pronoun referents on basis of mentions. See pronoun case of
   interpret-in-context.")

(defparameter *ignore-personal-pronouns* t
  "Ignore situational deictics like 'I' or 'we' or 'you'.")

;;;---------
;;; readout
;;;---------

(defparameter *collect-model* t
  "In the post-analysis-operations function used in the successive 
   sweeps, and particularly when we're reading documents, this
   controls whether we collect entities and relations from the
   treetops of the analysis.")

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
