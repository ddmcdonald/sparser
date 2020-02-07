;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2011-2019 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "switches"
;;;   Module:  "drivers;inits:"
;;;  Version:  February 2019

;; 1.1 (2/6/92 v2.2) changed the allowed values for unknown-words
;;     (2/7) Added *switch-setting* and *track-salient-objects*
;; 2.0 (9/2 v2.3) renamed the top-edges chart protocol
;; 2.1 (11/28) started fleshing out options for BBN and checking that everything
;;      is spelled out
;; 2.2 (2/26/93) flushed a reference to *version-of-assess-position* and
;;      *edge-protocol*
;; 2.3 (4/6/93) added *edge-vector-type*, 4/7 tweeked the wording of Switch-settings
;;     (4/9) added newline interpretations, 4/20 refined next-terminal choices
;; 2.4 (5/11) added Debris-analysis-setting
;; 2.5 (6/30) added call to grammar-switch-settings in Switch-settings
;;     (7/8) added *do-debris-analysis*
;; 2.6 (8/2) moved edges over morph to DA rather than toplevel
;; 2.7 (9/14) tweeked a value for toplevel-only
;; 2.8 (12/13) added dispatch-off-capitalization-data, changed top-only to use trivial
;;      newline fsa.
;; 2.9 (3/15/94) adjusted top-level to allow duplication of dotted-rules
;; 2.10 (4/24) adjusted it to separate parsing strategy from use of heuristics
;;      (4/26) tweeked that a bit.
;; 2.11 (7/11) added DM&P setting
;; 2.12 (7/22) adjusted settings so top-edges-setting/ddm would negate stronger ones
;; 2.13 (7/25) added flags for ..-affixes
;; 2.14 (9/28) added flags for forest level and capitalization protocol
;;      (10/19) extended that
;; 2.15 (1/5/95) added *current-analysis-mode* and its handler.  1/9 added flag
;;       for introducing brackets from unknown words.
;;      (2/14) changed default to *current-analysis-mode* so Preferences menu
;;       would come up in :no-dm&p
;;      (2/27) added *count-input-lines*
;; 2.16 (3/13) changed Top-edges to also do word morphology
;;      (3/31) added Turnoff-standard-extras
;;      (5/7) added *do-debris-analysis* to Standard-extras
;;      (5/26) tweeked Update-analysis-mode
;; 2.17 (9/6) tweeked Update-analysis-mode again
;;      (10/25) changed name of the dotted-rule dup. flag
;; 2.18 (8/17/97) Remodularized to pull together the common parts between all-edges
;;       and top-edges. Started a top-edges variant for bbn.
;;      (6/22/07) Added setting for Answer. (10/2) added fire-setting and
;;       ambush-setting and modified top-edges-setting/ddm to turn them off.
;;      (4/09) added checkpoint-ops-setting. (8/31/09) added poirot-interface-setting.
;;      (10/8) Added listing of per-run-init-forms to switch-settings.
;;      (2/20/10) Added just-bracketing-setting after fixing the word-frequency-setting.
;;      2/22 pulled *version-of-capitalization-dispatch* back in for just-bracketing
;;      because it's exposed when not doing PNF. 
;; 2.19 (3/12/10) Extended just-bracketing-setting to introduce brackets and edges
;;      from unknown words. Turns them off in top-edges-setting/ddm. (4/20/10) Fixed
;;      some spill over into word-frequency-setting where nothing heuristic should
;;      run. (2/20/11) Folded *make-edges-over-new-digit-sequences* into standard ddm
;;      settings. 
;;      (10/30/12) Setting up for Grok. 1/21/13 Turned on *do-strong-domain-modeling* in it
;; 2.20 (4/30/13) Converted Grok experiments into tuned-grok seeing
;;      (7/17/13) added strider-setting. (8/19/13) Added display setting and other odd
;;       things to it to esure they took effect. (9/16/13) stubbed c3-setting
;;      (9/18/13) Changed grok to enable all the after-segment options. Rely on
;;       the passes to tune them. 10/2/13 Integrated sentence handling into Strider
;; 2.21 (10/21/13) Moved the old contents of fire into Grok and then made grok the
;;       equivalent of Strider so we can use that going forward as the default
;;       that operations are built on.
;; 2.22 (1/22/14) Added (turn-off-c3) to all the bigger sets. 1/29/14 refined 
;;       fire-setting so we cover the segments. 3/3/14 added bio-setting. 
;;       3/18/14 tweak to the c3 setting. 5/7/14 Completion actions were still
;;       running in just-bracketing setting. 5/19/14 Tuned bio-setting.
;; 2.23 (7/24/14) Converted direct setting of *forest-level-protocol* to 
;;       calling what-to-do-at-the-forest-level. 8/30/14 added in more
;;       of these parameters to bio-setting. 
;; 2.24 (10/29/14) Took the plunge and moved bio-setting over to the new way
;;       of doing thigns. Former settings preserved as old-bio-setting.
;;       11/7/14 debugged it. 
;; 3/10/2015 Make bio-setting set *edges-from-referent-categories* to NIL
;;   result is a faster system with (slightly) more accurate results.
;; 4/18/15 Fanout from flag used in DM&P and checked in bind-variable/expr
;; 6/28/2015 Tunr off *profligate-creation-of-individuals* in set-bio
;; 10/7/15 put in a stub for blocks-world-setting. 11/14/15 revised in in
;;   efort to make it work

(in-package :sparser)


(defvar *switch-setting* nil
  "Set by one of the switch-setting routines. Purely for the
   benefit of the user when debugging.")

(defvar *current-analysis-mode* :no-dm&p
  "A coarser description of the switch setting that groups many
   alternatives together")


(defun switch-settings (&optional full? (stream *standard-output*))
  (declare (special *treat-single-Capitalized-words-as-names*
                    *pnf-routine* *break-policy* *description-lattice*
                    *allow-pure-syntax-rules* *character-translation-protocol*
                    *keep-number-sequence-raw*  *def-word-definition*))
  (format stream "~&~%Sparser switch settings:")
  (format stream " ~A" *switch-setting*)
  (format stream "~%                       script used: ~a"
          script)
  (format stream "~%              Chart-level protocol: ~A"
          *kind-of-chart-processing-to-do*)
  (format stream "~&               use syntactic rules: ~a"
          *allow-pure-syntax-rules*)
  (format stream "~&       use the Description Lattice: ~a"
          *description-lattice*)
  (format stream "~%                     unknown words: ~A"
          *unknown-word-policy*)
  (format stream "~%                        use COMLEX: ~a"
          (eq *def-word-definition* :comlex))
  (format stream "~%             break function policy: ~a"
          *break-policy*)
  (format stream "~%       capitalization FSA dispatch: ~A"
          *version-of-capitalization-dispatch*)
  (format stream "~%                       PNF routine: ~A"
          *pnf-routine*)
  (format stream "~%treat single cap'd words as names?: ~A"
	  *treat-single-Capitalized-words-as-names*)
  (format stream "~%    edges over new digit sequences? ~A"
          *make-edges-over-new-digit-sequences*)
  (format stream "~%        brackets for unknown words? ~A"
          *introduce-brackets-for-unknown-words-from-their-suffixes*)
  (format stream "~%               do the forest level? ~A"
          *do-forest-level*)
  (format stream "~%       segment/forest transition is ~A"
          *segment-scan/forest-level-transition-protocol*)
  (format stream "~%          protocol at forest level? ~A"
          *forest-level-protocol*)
  (format stream "~%                do debris analysis? ~A"
          *do-debris-analysis*)
  (format stream "~%     do heuristic segment analysis? ~A"
          *do-heuristic-segment-analysis*)
  (format stream "~%            do conceptual analysis? ~A"
          *do-conceptual-analysis*)
  (format stream "~% do domain modeling and populating? ~A"
          *do-domain-modeling-and-population*)
  (format stream "~%                       do new DM&P? ~A"
	  *new-dm&p*)
  (format stream "~%         do simple domain modeling? ~A"
	  *do-strong-domain-modeling*)
  (format stream "~%    do general actions on treetops? ~A"
          *do-general-actions-on-treetops*)
  (format stream "~%           collect salient objects? ~A"
          *track-salient-objects*)
  (format stream "~%      include property-based edges? ~A"
          *make-edges-for-unknown-words-from-their-properties*)

  (format stream "~%               Length of the chart: ~A"
          (length *the-chart*))
  (format stream "~%       Length of the edge resource: ~A"
          (length *all-edges*))
  ;(when *load-the-grammar*
  ;  (grammar-switch-settings stream))
  (when full?
    (format stream "~%               type of edge-vector: ~A"
            *edge-vector-type*)
    (format stream "~%                     next-terminal: ~A"
            *definition-of-next-terminal*)
    (format stream "~%            character translations: ~A"
            *character-translation-protocol*)
    (format stream "~% *break-on-meaningless-characters*: ~A"
            *break-on-meaningless-characters*)
    (format stream "~%     is a newline word whitespace?: ~A"
            (not *newline-is-a-word*))
    (format stream "~%             protocol for newlines: ~A"
            *newline-fsa-in-use*)
    (format stream "~%                          Complete: ~A"
            *version-of-complete*)
    (format stream "~%   are source lines being counted?: ~A"
          *count-input-lines*)
    (format stream "~%        keep number sequences raw?: ~A"
            *keep-number-sequence-raw*)
    (format stream "~%       believe the text is speech?: ~A"
            *speech*)

    (format stream "~% Per-run initialization forms:")
    (list-per-run-init-forms))
  (terpri stream))


;;;------------------------------------------------
;;; Setting combinations for various functionality
;;;------------------------------------------------

;;---- Parsing options

(defun uncontroversial-settings ()
  ;; This abstracts the settings that are shared between top-edges
  ;; and all-edges.  It (obviously) doesn't provide a value for
  ;; everything, so it shouldn't stand by itself unless you're
  ;; certain the default values fit your situation. 
  (establish-character-translation-protocol :no-changes)
  (setq *make-edges-for-unknown-words-from-their-properties* t)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (use-return-newline-tokens-fsa)
  (establish-version-of-capitalization-dispatch :no-op)
  (establish-version-of-complete :ca/ha)
  (setq *count-input-lines* (not *nothing-Mac-specific*)))


(defun use-unknown-words ()
  (setq *make-edges-for-unknown-words-from-their-properties* t)
  (setq *make-edges-for-unknown-words-from-their-suffixes* t)
  (setq *introduce-brackets-for-unknown-words-from-their-suffixes* t))

(defun ignore-unknown-words ()
  (setq *make-edges-for-unknown-words-from-their-properties* nil)
  (setq *make-edges-for-unknown-words-from-their-suffixes* nil)
  (setq *introduce-brackets-for-unknown-words-from-their-suffixes* nil))

(defun include-comlex ()
  (declare (special *comlex-word-lists-loaded* *comlex-words-primed*))
  (setq *incorporate-generic-lexicon* t)
  (what-to-do-with-unknown-words :check-for-primed)  
  (establish-version-of-def-word :comlex)
  (unless *comlex-word-lists-loaded*
    (load-comlex))
  (unless *comlex-words-primed*
    (prime-comlex)))

(defun ignore-comlex ()
  ;; Assumes we started in a configuration that included
  ;; comlex, so its words have already been primed.
  ;; This makes sure they aren't accessed.
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology))


(defun standard-extras ()  ;; n.b. doesn't stand by itself
  (declare (special *no-segment-level-operations*))
  (setq *do-forest-level* t) ;; <-- needs a protocol assignment
  (setq *do-heuristic-segment-analysis* *ha*)
  (setq *do-conceptual-analysis* *ca*)
  (setq *do-debris-analysis* *da*)
  (setq *do-completion-actions* t)
  (setq *no-segment-level-operations* nil)
  (setq *count-input-lines* t))

(defun turnoff-standard-extras ()
  (declare (special *no-segment-level-operations*))
  (setq *do-forest-level* nil)
  (setq *do-heuristic-segment-analysis* nil)
  (setq *do-conceptual-analysis* nil)
  (setq *do-debris-analysis* nil)
  (setq *no-segment-level-operations* t)
  (setq *count-input-lines* nil))


;;--- how to do pronouns

(defun use-post-analysis-mentions-for-pronouns ()
  (setq *constrain-pronouns-using-mentions* t
        *ignore-personal-pronouns* t)
  (setq *use-discourse-mentions* t
        *interpret-in-context* t))


;;--- What do we do with a segment after we've delimited
;;    it and parsed it.

(defun segment-analysis-settings ()  
  (setq *after-action-on-segments* 'sdm/analyze-segment)
  (setq *do-strong-domain-modeling* t
        *new-segment-coverage* :full  ;; vs :trivial
        *reify-implicit-individuals* t
        *note-text-relations* t)
  (setq *profligate-creation-of-individuals* t))

(defun turn-off-segment-analysis-settings ()
  (setq *after-action-on-segments* 'normal-segment-finished-options)
  ;; That really enough. But in detail...
  (setq *do-strong-domain-modeling* nil
        *reify-implicit-individuals* nil
        *note-text-relations* nil
        *do-domain-modeling-and-population* nil))

;;--- All edges vs just top-edges

(defun all-edges-setting ()
  ;; n.b. hasn't been tested since ~1996
  (what-to-do-with-unknown-words :capitalization-&-digits)
  (establish-type-of-edge-vector-to-use :kcons-list)
  (establish-version-of-assess-edge-label :all-edges)
  (establish-kind-of-chart-processing-to-do :all-edges)
  (setq *permit-rules-with-duplicate-rhs* t)
  (setq *dotted-rules-can-duplicate-regular-rules* nil)
  (setq *do-general-actions-on-treetops* nil)
  (setq *switch-setting* :all-edges))

(defun top-edges-setting ()
  (establish-type-of-edge-vector-to-use :vector)  
  (establish-version-of-assess-edge-label :treetops)
  (setq *permit-rules-with-duplicate-rhs* nil)
  (setq *dotted-rules-can-duplicate-regular-rules* t)
  (setq *do-general-actions-on-treetops* t))



(defun sublanguage-settings ()
  (declare (special *treat-single-Capitalized-words-as-names*))
  (ignore-unknown-words)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  ;;(designate-sentence-container :simple)
  (setq *ignore-capitalization* nil)
  (setq *treat-single-Capitalized-words-as-names* nil)
  (setq *make-edges-over-new-digit-sequences* t)
  (when *proper-names* ;; e.g. not in cwc
    (establish-pnf-routine :scan-classify-record)))


;;--- parsing protocols

(defun incremental-settings ()
  (establish-kind-of-chart-processing-to-do :new-toplevel-protocol)
  (what-to-do-at-the-forest-level :parse-forest-and-do-treetops)
  (setq *segment-scan/forest-level-transition-protocol*
        :move-when-segment-can-never-extend-rightwards)
  (setq *check-forms* nil))

(defun parsing-protocol-for-documents ()
  (what-to-do-at-the-forest-level :new-forest-protocol)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  (setq *sweep-sentence-treetops* t
        *grammar-and-model-based-parsing* t
        *sweep-for-patterns* t
        *sweep-for-early-information* t
        *sweep-for-conjunctions* t
        *sweep-for-parentheses* t
        *chunk-sentence-into-phrases* t
        *big-mechanism-ngs* t
        *parse-chunk-interior-online* t
        *parse-chunked-treetop-forest* t
        *sweep-sentence-treetops* t
        *island-driving* t)
  (setq *edges-from-referent-categories* nil
        *allow-pure-syntax-rules* t
        *check-forms* t) ;; see multiply-edges
  (whack-a-rule t))

;;(defun turn-off-parsing-protocol-for-documents ()
;; Strictly speaking, all we need to do it change the kind of
;; chart parsing to a different one. Is there some other leakage?

;;;----------------
;;; Specific cases
;;;----------------

(defun use-default-settings ()
  "What we use with an unqualified asdf load of Sparser
   by using the default script."
  (revert-to-regular-break)
  (uncontroversial-settings)
  (top-edges-setting)
  (standard-extras)
  (display-bracketing)
  (ignore-comlex)
  (sublanguage-settings)
  (incremental-settings))
  

(defun top-edges-setting/ddm ()
  "Setting for the 'full grammar' ERN script"
  (use-default-settings)
  (setq *use-segment-edges-as-segment-defaults* nil)
  ;; Governs whether Trivially-span-current-segment does so
  (setq *switch-setting* :top-edges-setting/ddm
        *current-analysis-mode* :no-dm&p))


(defun grok-setting ()
  "Similar to answer and fire, but with annotations and ..."
  (use-default-settings)
  ;; except for
  (use-unknown-words)
  ;; plus
  (setq *do-unanalyzed-hyphenated-sequences* t)
  (include-comlex)
  (segment-analysis-settings)
  (setq *do-conceptual-analysis* nil) ;; probably need finer resolution
  (setq *allow-pure-syntax-rules* t)
  (setq *switch-setting* :grok))


(defun tuned-grok ()
  "Simplifications to Grok while we work things out"
  (grok-setting)
  ;; except for
  (setq *do-unanalyzed-hyphenated-sequences* nil) ;; would block "14-year-old" => age
  (setq *uniformly-scan-all-no-space-token-sequences* nil) ;; bad interaction w/ PNF
  (setq *load-ad-hoc-rules* t)
  (setq *switch-setting* :tuned-grok))


(defun fire-setting ()
  "Goes with the 'fire' configuration. Intended as eventual
   replacement for all general settings, particularly for 
   Strider-like applications."
  (declare (special *treat-single-capitalized-words-as-names*
                    *arabic-names*))
  (tuned-grok)
  ;; from strider
  (setq *arabic-names* t) ;; British too

  (setq *treat-single-capitalized-words-as-names* t)

  (setq *ignore-literal-edges* nil) ;; default, but need when switching
  (period-hook-on)
  (setq *check-forms* nil) ;; turn off validity check in multiply-edges
  
  (setq *allow-pure-syntax-rules* nil ;; turn these on selectively in
        *edges-from-referent-categories* nil) ;; dynamic contexts

  (setq *after-action-on-segments* 'sdm/analyze-segment)
  (setq *note-text-relations* nil) ;; 3/6/16 overly complicated just now
  ;;(designate-sentence-container :complex) ;;// overkill - separate doc vs sentence
  (setq *do-strong-domain-modeling* t)
  (setq *new-segment-coverage* :trivial)

  (setq *switch-setting* :fire))


(defun bio-setting ()
  "Used in the 'biology' configuration/script"
  (declare (special *treat-single-capitalized-words-as-names*
                    *break-on-new-bracket-situations*))
  (revert-to-error-break) ;; also the loader default
  ;; from (use-default-settings) with the obvious change
  ;; to take new words
  (uncontroversial-settings)
  (top-edges-setting)
  (standard-extras)
  (include-comlex)
  
  ;; cherry-pick, vary from sublangage-settings
  (use-unknown-words)
  (setq *make-edges-over-new-digit-sequences* t)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed)
  ;;(designate-sentence-container :complex)
  (setq *treat-single-Capitalized-words-as-names* t)
  
  ;; (grok-setting)
  (setq *new-dm&p* t)
  (setq *do-unanalyzed-hyphenated-sequences* t)
  
  ;;(tuned-grok)
  (setq *break-on-new-bracket-situations* nil)
  (setq *do-unanalyzed-hyphenated-sequences* nil) ;; would block "14-year-old" => age
  (setq *uniformly-scan-all-no-space-token-sequences* nil) ;; bad PNF interation
  (setq *track-incidence-count-on-bindings* nil) ;; see bind-variable/expr
  (display-bracketing)

  (parsing-protocol-for-documents)

  (setq *allow-form-conjunction-heuristic* t)
  ;; (setq *use-subtypes* t) plurals created a snapshot regression
  (use-post-analysis-mentions-for-pronouns)

  (period-hook-on) ;; make sure we notice periods

  (turn-off-segment-analysis-settings) ;; except for ...
  (setq *new-segment-coverage* :trivial) ;; vs. :full or :none
  ;; Specify where we start (needed as switch settings change)
  (do-strong-domain-modeling)

  ;;(designate-paragraph-container :biology)

  (let ((gmod (grammar-module-named '*biology*)))
    (assert gmod () "The biology grammar module is not available")
    (unmarked-category-makes-permanent-individuals gmod))
  (setq *switch-setting* :biology))


(defun blocks-world-setting ()
  "What we get with the block-world script, aka CwC"
  (declare (special *collect-subcat-info* *force-modifiers*))
  (revert-to-error-break)
  (uncontroversial-settings)
  (top-edges-setting)
  (ignore-comlex)
  (setq *use-subtypes* t)
  (use-post-analysis-mentions-for-pronouns)
  (sublanguage-settings) ;; except
  (setq *ignore-capitalization* t)
  ;; The proper name facility (PNF) is not included in the blocks world
  ;; so there is only a stub for it, which behaves quite differently
  ;; from the real one (duh), leading to obscure error. This keeps
  ;; us from ever invoking PNF within the new-toplevel-protocol
 
  ;; Experimenting with different choices of parsing protocol.
  ;; Eventually it will be a new one that's incremental and
  ;; tightly tied to the situation.
  ;;(establish-kind-of-chart-processing-to-do :incremental)
  ;;(establish-kind-of-chart-processing-to-do :c3-protocol)
  ;; But until then ...
  (parsing-protocol-for-documents)

  ;; Somewhat ad-hoc things to get around error that should
  ;; be fixed or intrusions of the biology ontology that isn't included
  ;;(setq *force-modifiers* t) ;; if we don't have a variable use 'modifier'
  (setq *collect-subcat-info* nil) ;; which gets an error there
  (setq *interpret-in-context* nil) ;;/// look at other cases
  ;; and sort out what pronoun policy to use
  (setq *collect-model* nil) ;; likely to hit tacit biology assumptions

  ;;--------- these guys have to be systematized.
  (period-hook-on)
  (designate-sentence-container :complex) ;; vs. :situation
  (setq *recognize-sections-within-articles* t) ;; otherwise no sentences

  (turn-off-debugging-flags)
  (setq *switch-setting* :blocks-world))




(defun c3-setting ()
  "Goes with c3 script and configuration. Probably merges into
   the fully incremental setting when that's ready."
  ;; Start by turning everthing off
  (word-frequency-setting) ;; gets most of them
  (uncontroversial-settings)
  (establish-type-of-edge-vector-to-use :vector)
  (establish-version-of-assess-edge-label :treetops)
  (what-to-do-with-unknown-words :ignore) ;; though better to throw an error
  (setq *make-edges-for-unknown-words-from-their-properties* nil
        *use-subtypes* t)
  (establish-kind-of-chart-processing-to-do :c3-protocol)
  (designate-sentence-container :situation)
  (setq *recognize-sections-within-articles* t) ;; otherwise no sentences
  (setq *description-lattice* nil) ;; leave permanence up in the air
  (setq *c3* t) ;; already on if loaded as c3, this is for changing
  (setq *switch-setting* :c3))

(defun turn-off-c3 ()
  (when (or (eq *switch-setting* :c3)
            *c3*)
    (setq *c3* nil ;; turn off the flag
          *use-subtypes* nil)
    (designate-sentence-container :complex))) ;; only other option




(defun neo-fire-setting ()
  "Adapting ideas from R3 document parsing and C3"
  (declare (special *treat-single-capitalized-words-as-names*
                    *pnf-scan-respects-segment-boundaries*
                    *arabic-names*))
  (revert-to-error-break)
  (uncontroversial-settings)
  (top-edges-setting)
  (standard-extras)
  
  ;;(parsing-protocol-for-documents) which is ...
  (what-to-do-at-the-forest-level :new-forest-protocol)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  
  ;; in scan-terminals-loop
  (setq *sweep-for-word-level-fsas* t
        *sweep-for-terminal-edges* t )
  (setq *grammar-and-model-based-parsing* t
        *do-early-rules-sweep* t
        *sweep-for-patterns* t
        *sweep-for-early-information* t ;; questions
        *sweep-for-conjunctions* t
        *sweep-for-parentheses* t

        *ignore-literal-edges* nil ;; default, but need when switching
        
        *chunk-sentence-into-phrases* t
        ;;  *big-mechanism-ngs* t  /// check details
        *parse-chunk-interior-online* t
        
        *sweep-sentence-treetops* t

        *parse-chunked-treetop-forest* t
        *sweep-sentence-treetops* t
        *island-driving* t
        )
  (setq *edges-from-referent-categories* nil
        *allow-pure-syntax-rules* t
        *check-forms* t) ;; controls validity check in multiply-edges
  (whack-a-rule t)

  (use-unknown-words)
  (include-comlex)
  (setq *make-edges-over-new-digit-sequences* t)
  (what-to-do-with-unknown-words
   ;; :capitalization-digits-&-morphology/or-primed
   ;; -- too strong. Does a setup-common-noun on all otherwise unknown words.
   ;; :capitalization-digits-&-morphology -- doesn't check Comlex
   :check-for-primed) ;; checks Comlex

  (setq *edge-for-unknown-words* t)
  ;; It's T by default. Used by assign-morph-brackets-to-unknown-word
  ;; to control whether we make categories for the words
  ;; it gets a POS analysis for. 
  
  ;; R3 sweeper doesn't introduce boundaries so no point
  ;; in expecting them
  (setq *pnf-scan-respects-segment-boundaries* nil)
  (setq *ignore-capitalization* nil)
  (setq *treat-single-capitalized-words-as-names* t)
  (unless *proper-names* (error "Proper name module not loaded"))
  (establish-pnf-routine :scan-classify-record)
  (setq *arabic-names* t) ;; British too
  
  (setq *use-subtypes* t) ;; e.g. plurals, refining types of individuals

  ;; variation on segment-analysis-settings
  (setq *after-action-on-segments* 'sdm/analyze-segment)
  (setq *do-strong-domain-modeling* t)
  (setq *new-segment-coverage* :trivial ; full's analyze-segment is not ready
        *reify-implicit-individuals* nil ; needed in any Grok revival
        *require-known-words-in-order-to-cover-a-segment* nil)
  (setq *note-text-relations* t)
  ;; (setq *profligate-creation-of-individuals* t) ; for Grok

  (designate-sentence-container :complex)
  (designate-paragraph-container :texture)
  
  (setq *recognize-sections-within-articles* t) ;; otherwise no sentences
 
  (setq *switch-setting* :neo-fire))



;;--- Measuring word frequencies

(defun word-frequency-setting ()
  "Turned on by hand. No corresponding configuration"
  (turn-off-c3)
  (ignore-comlex)
  (establish-character-translation-protocol :no-changes)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (setq *make-edges-for-unknown-words-from-their-properties* t
        *do-forest-level* nil
        *do-conceptual-analysis* nil
        *do-heuristic-boundary-detection* nil
	*do-heuristic-segment-analysis* nil
	*do-domain-modeling-and-population* nil
	*do-strong-domain-modeling* nil
        *recognize-sections-within-articles* nil
        *newline-delimits-paragraphs* nil
        *do-completion-actions* nil
        *after-action-on-segments* 'normal-segment-finished-options)
  (period-hook-off)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (establish-kind-of-chart-processing-to-do :just-do-terminals)
  (establish-version-of-look-at-terminal :record-word-frequency)
  (establish-version-of-complete :ca/ha)
  (setq *count-input-lines* nil)
  (establish-word-frequency-classification
   ;;:standard 'standard-wf-classification)
   :ignore-capitalization 'wf-classification/ignore-caps)
  (setq *switch-setting* :word-frequency))

(defun word-frequency-setting-caps ()
  "Turned on by hand. No corresponding configuration"
  (turn-off-c3)
  (ignore-comlex)
  (establish-character-translation-protocol :no-changes)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (setq *make-edges-for-unknown-words-from-their-properties* t
        *do-forest-level* nil
        *do-conceptual-analysis* nil
        *do-heuristic-boundary-detection* nil
	*do-heuristic-segment-analysis* nil
	*do-domain-modeling-and-population* nil
	*do-strong-domain-modeling* nil
        *recognize-sections-within-articles* nil
        *newline-delimits-paragraphs* nil
        *do-completion-actions* nil
        *after-action-on-segments* 'normal-segment-finished-options)
  (period-hook-off)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (establish-kind-of-chart-processing-to-do :just-do-terminals)
  (establish-version-of-look-at-terminal :record-word-frequency)
  (establish-version-of-complete :ca/ha)
  (setq *count-input-lines* nil)
  (establish-word-frequency-classification
   :standard 'wf-classification/ignore-caps/known
  ;;:Ignore-capitalization 'wf-classification/ignore-caps
  )
  (setq *switch-setting* :word-frequency))


(defun dictionary/morphology-frequency-counts ()
  (declare (special *include-function-words-in-frequency-counts*
                    *stem-words-for-frequency-counts*))
  (setq *smart-frequency-count* t)
  (establish-word-frequency-classification
   :standard 'wf-classification/ignore-caps/known)
  (setq *include-function-words-in-frequency-counts* t)
  (setq *stem-words-for-frequency-counts* nil))

(defun just-bracketing-setting ()
  "Goes with the 'no-grammar' option"
  (declare (special category::number *no-segment-level-operations*
                    *the-category-of-digit-sequences*))
  (word-frequency-setting) ;; to turn off fire setting et al.
  (ignore-comlex)
  ;; from top-edges
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (establish-type-of-edge-vector-to-use :vector)
  (setq *do-general-actions-on-treetops* t)
  (setq *permit-rules-with-duplicate-rhs* nil)
  (setq *dotted-rules-can-duplicate-regular-rules* t)
  (setq *ignore-capitalization* t) ;; turns off PNF
  (establish-version-of-capitalization-dispatch :no-op) ;; exposed when not doing PNF
  (establish-version-of-assess-edge-label :treetops) ;; vs. all-edges
  (setq *the-category-of-digit-sequences* category::number)
  (use-return-newline-tokens-fsa) ;; it's returned as a regular whitespace char.
  (establish-kind-of-chart-processing-to-do :new-toplevel-protocol)
  (setq *no-segment-level-operations* t)
  (use-unknown-words)
  (setq *switch-setting* :just-bracketing))

(defun just-bracketing-with-comlex-setting ()
  (just-bracketing-setting)
  (include-comlex)
  (setq *switch-setting* :just-bracketing-with-comlex))



(defun debris-analysis-setting ()
  "Used in settings for some old tests"
  (top-edges-setting)
  (standard-extras)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (setq *make-edges-for-unknown-words-from-their-suffixes* t)
  (setq *use-segment-edges-as-segment-defaults* t)
  (what-to-do-at-the-forest-level :dm&p-forest-level)
  (setq *do-debris-analysis* t)
  (setq *switch-setting* :debris-analysis))

(defun dm&p-setting ()
  "Used for the 'just-dm&p' configuration/script"
  (declare (special *dm&p-forest-protocol* *cap-seq-edge-data-routine*))
  (debris-analysis-setting)
  (use-unknown-words)
  (what-to-do-at-the-forest-level :dm&p-forest-level)
  (setq *dm&p-forest-protocol* 'parse-forest-and-do-treetops)
  (setq *segment-scan/forest-level-transition-protocol*
        :move-only-at-significant-boundary)
  (setq *do-domain-modeling-and-population* t)
  (setq *track-incidence-count-on-bindings* t)
  (setq *ignore-capitalization* nil)
  (establish-pnf-routine :scan/ignore-boundaries)
  (setq *cap-seq-edge-data-routine* 'dm&p-cap-seq-data)
  (setq *switch-setting* :dm&p
        *current-analysis-mode* :dm&p))


;;--- Older, unused switch sets, no reason to assume they're consistent


(defun strider-setting ()
  (declare (special *arabic-names*))
  (blocks-world-setting)
  ;; except
  (include-comlex)
  (setq *ignore-capitalization* nil)
  ;; Note in earlier version says PNF is interferring with polywords
  ;; and set this to T. But that turns off proper name recognition.

  (setq *description-lattice* nil) ;; use base means of indexing
  (setq *use-subtypes* nil) ;; plurals as collections needs more thought
  (setq *sweep-for-patterns* nil) ;; most patterns are for biology
  
  ;; from (tuned-grok)
  (setq *do-unanalyzed-hyphenated-sequences* nil) ;; would block "14-year-old" => age
  (setq *uniformly-scan-all-no-space-token-sequences* nil) ;; bad PNF interation
  (setq *load-ad-hoc-rules* t)

  ;; plus
  (setq *arabic-names* t)
  (setq *allow-da-to-look-under-edges* nil)
  ;;   /// arc-matches-tt? needs to adjust the next tt
  
  (setq *peek-rightward* nil) ;; see drivers/chart/psp/tuck-right.lisp
  ;; Should be t, but that exposes a stub in march-peeking-rightward
  ;; that has to be dealt with first.

  (setq *switch-setting* :strider))


(defun ambush-setting ()
  (declare (special *keep-number-sequence-raw* *speech*))
  (fire-setting)
  (setq *keep-number-sequence-raw* t) ;; call signs
  (setq *speech* t)
  (setq *switch-setting* :ambush))

(defun answer-setting ()
  ;;(DM&P-setting)
  ;; 2/7/07 DM&P-setting is creating a lot of small nit-picking bugs and muddying
  ;; the waters by burying the new vocabulary under generic 'terms' and
  ;; 'segments'. Need to find some middle ground, possibly based on the
  ;; newer notion of 'kind' in model/core.
  ;;   Going to try working outward from old standby.
  (use-default-settings)
  (segment-analysis-settings)
  (use-unknown-words)
  (setq *uniformly-scan-all-no-space-token-sequences* t)
  (setq *switch-setting* :answer
        *current-analysis-mode* :no-dm&p))
;; N.b. *do-strong-domain-modeling* will pre-empt doing
;; *do-domain-modeling-and-population* when we do the dispatch
;; in segment-finished

(defun checkpoint-ops-setting ()
  (declare (special *keep-number-sequence-raw* *speech*))
  (top-edges-setting)
  ;; maybe (setq *do-forest-level* nil) 
  (what-to-do-at-the-forest-level :parse-forest-and-do-treetops) ;; otherwise
  (setq *keep-number-sequence-raw* t) ;; for call signs
  (setq *speech* t)
  (setq *switch-setting* :checkpoint-ops))

(defun poirot-interface-setting ()
  (top-edges-setting)
  (what-to-do-at-the-forest-level :parse-forest-and-do-treetops)
;  (establish-pnf-routine :scan-classify-record) ;; for real names
  ;; There are capitalized letter sequences such as "MOB"
  (establish-pnf-routine :scan/ignore-boundaries)
  (setq *switch-setting* :poirot-interface
        *current-analysis-mode* :no-dm&p))



(defun top-edges-setting/AssetNet ()
  (top-edges-setting)
  (what-to-do-with-unknown-words :ignore)
  (setq *ignore-capitalization* t)
  (setq *do-forest-level* nil)
  (setq *do-heuristic-segment-analysis* nil)
  (setq *actions-on-treetops* nil)
  (setq *do-conceptual-analysis* nil)
  (setq *do-general-actions-on-treetops* nil)
  (setq *track-salient-objects* nil)
  (setq *switch-setting* :top-edges/AssetNet
        *current-analysis-mode* :no-dm&p))



;;--- BBN  (segmentation only -- experimenting with top vs all -edges

(defun standard-bbn-settings ()
  ;; These are mostly overrides to what's set in top/all -edges
  (uncontroversial-settings)
  (setq *ignore-capitalization* t)
  (setq *do-forest-level* nil)
  (setq *do-debris-analysis* nil)
  (setq *do-heuristic-segment-analysis* nil)
  (setq *do-conceptual-analysis* nil)
  (setq *do-general-actions-on-treetops* nil)
  (setq *track-salient-objects* nil)
  (what-to-do-with-unknown-words :ignore)
  (setq *make-edges-for-unknown-words-from-their-properties* nil))


(defun all-edges-setting/bbn ()
  (standard-bbn-settings)
  (all-edges-setting)
  (setq *switch-setting* :all-edges/bbn
        *current-analysis-mode* :no-dm&p))

(defun segmenter-settings/bbn ()
  (standard-bbn-settings)
  (top-edges-setting)
  (setq *switch-setting* :top-edges/bbn
        *current-analysis-mode* :no-dm&p))

(defun cfg-setting ()
  (setq *ignore-parentheses* t)
  (setq *timezones-off* t)
  (setq *cfg-flag* t))



  
;;;---------------------------------------------
;;; Switching modes from the Preferences dialog
;;;---------------------------------------------

(defun update-analysis-mode (new-mode)
  ;; called from Check-wigets-and-close-pref-dialog as part of
  ;; sorting out the 'analysis alternatives'
  (ecase *switch-setting*  ;; the current one
    ((or :top-edges/with-extras-and-negatives :top-edges)
     (ecase new-mode
       (:no-dm&p
        (setq *use-segment-edges-as-segment-defaults* nil))
       (:span-segments
        (setq *use-segment-edges-as-segment-defaults* t))
       (:dm&P
        (DM&P-setting)
        ;; but since we're running over regular articles rather
        ;; than dm&p'ing a whole document explicitly, we use
        ;; the conventional PNF routine
        (establish-pnf-routine :scan-classify-record))))

    (:dm&p
     (ecase new-mode
       (:no-dm&p
        (top-edges-setting/ddm)
        (setq *use-segment-edges-as-segment-defaults* nil))
       (:span-segments
        (top-edges-setting/ddm)
        (setq *use-segment-edges-as-segment-defaults* t))
       (:dm&P))))

  (setq *current-analysis-mode* new-mode))

#|(ecase new-mode
  (:no-dm&p)
  (:span-segments)
  (:dm&P))|#
