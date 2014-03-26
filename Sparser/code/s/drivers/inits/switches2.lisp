;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "switches"
;;;   Module:  "drivers;inits:"
;;;  Version:  2.22 March 2014

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
;;       3/18/14 tweak to the c3 setting.

(in-package :sparser)


(defvar *switch-setting* nil
  "Set by one of the switch-setting routines. Purely for the
   benefit of the user when debugging.")

(defvar *current-analysis-mode* :no-dm&p
  "A coarser description of the switch setting that groups many
   alternatives together")


(defun switch-settings ( &optional (stream *standard-output*) )
  (format stream "~&~%Sparser switch settings:")
  (format stream " ~A" *switch-setting*)
  (format stream "~%            character translations: ~A"
          *character-translation-protocol*)
  (format stream "~% *break-on-meaningless-characters*: ~A"
          *break-on-meaningless-characters*)
  (format stream "~%                     unknown words: ~A"
          *unknown-word-policy*)
  (format stream "~%             protocol for newlines: ~A"
          *newline-fsa-in-use*)
  (format stream "~%     is a newline word whitespace?: ~A"
          (not *newline-is-a-word*))
  (format stream "~%   are source lines being counted?: ~A"
          *count-input-lines*)
  (format stream "~%                     next-terminal: ~A"
          *definition-of-next-terminal*)
  (format stream "~%       capitalization FSA dispatch: ~A"
          *version-of-capitalization-dispatch*)
  (format stream "~%                       PNF routine: ~A"
          *pnf-routine*)
  (format stream "~%treat single cap'd words as names?: ~A"
	  *treat-single-Capitalized-words-as-names*)
  (format stream "~%        keep number sequences raw?: ~A"
	  *keep-number-sequence-raw*)
  (format stream "~%       believe the text is speech?: ~A"
	  *speech*)
  (format stream "~%               type of edge-vector: ~A"
          *edge-vector-type*)
  (format stream "~%              Chart-level protocol: ~A"
          *kind-of-chart-processing-to-do*)
  (format stream "~%                          Complete: ~A"
          *version-of-complete*)
  (format stream "~%      include property-based edges? ~A"
          *make-edges-for-unknown-words-from-their-properties*)
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
  (format stream "~%         do strong domain modeling? ~A"
	  *do-strong-domain-modeling*)
  (format stream "~%    do general actions on treetops? ~A"
          *do-general-actions-on-treetops*)
  (format stream "~%           collect salient objects? ~A"
          *track-salient-objects*)
  (format stream "~%               Length of the chart: ~A"
          (length *the-chart*))
  (format stream "~%       Length of the edge resource: ~A"
          (length *all-edges*))
  ;(when *load-the-grammar*
  ;  (grammar-switch-settings stream))
  (format stream "~% Per-run initialization forms:")
  (list-per-run-init-forms)
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
  (setq *polyword-routine* :multiple-completions)
  (setq *count-input-lines* (not *nothing-Mac-specific*)))


(defun use-unknown-words ()
  (setq *make-edges-for-unknown-words-from-their-properties* t)
  (setq  *introduce-brackets-for-unknown-words-from-their-suffixes* t))

(defun ignore-unknown-words ()
  (setq *make-edges-for-unknown-words-from-their-properties* nil)
  (setq *introduce-brackets-for-unknown-words-from-their-suffixes* nil))


(defun all-edges-setting ()
  ;; n.b. hasn't been tested since ~1996
  (uncontroversial-settings)
  (what-to-do-with-unknown-words :capitalization-&-digits)
  (establish-type-of-edge-vector-to-use :kcons-list)
  (establish-version-of-assess-edge-label :all-edges)
  (establish-kind-of-chart-processing-to-do :all-edges)
  (setq *permit-rules-with-duplicate-rhs* t)
  (setq *dotted-rules-can-duplicate-regular-rules* nil)
  (setq *do-general-actions-on-treetops* nil)
  (setq *switch-setting* :all-edges))

(defun top-edges-setting ()
  (uncontroversial-settings)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (establish-type-of-edge-vector-to-use :vector)  
  (establish-version-of-assess-edge-label :treetops)
  (establish-kind-of-chart-processing-to-do :new-toplevel-protocol)
  (setq *permit-rules-with-duplicate-rhs* nil)
  (setq *dotted-rules-can-duplicate-regular-rules* t)
  (setq *do-general-actions-on-treetops* t)
  (setq *switch-setting* :top-edges))


(defun standard-extras ()  ;; n.b. doesn't stand by itself
  (setq *do-forest-level* t) ;; <-- needs a protocol assignment
  (setq *do-heuristic-segment-analysis* *ha*)
  (setq *do-conceptual-analysis* *ca*)
  (setq *do-debris-analysis* *da*)
  (setq *count-input-lines* t))

(defun turnoff-standard-extras ()
  (setq *do-forest-level* nil) ;; <-- needs a protocol assignment
  (setq *do-heuristic-segment-analysis* nil)
  (setq *do-conceptual-analysis* nil)
  (setq *do-conceptual-analysis* nil)
  (setq *count-input-lines* nil))

(defun include-comlex ()
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


;;---- Specific cases

(defun answer-setting ()
  ;;(DM&P-setting)
  ;; 2/7/07 DM&P-setting is creating a lot of small nit-picking bugs and muddying
  ;; the waters by burying the new vocabulary under generic 'terms' and
  ;; 'segments'. Need to find some middle ground, possibly based on the
  ;; newer notion of 'kind' in model/core.
  ;;   Going to try working outward from old standby.
  (top-edges-setting/ddm)
  (setq *do-strong-domain-modeling* t)
  (setq *introduce-brackets-for-unknown-words-from-their-suffixes* t)
  (setq *make-edges-for-unknown-words-from-their-suffixes* t)
  (setq *uniformly-scan-all-no-space-token-sequences* t)
  (setq *debug-treetops* nil)
  (setq *annotate-realizations* nil)
  (setq *switch-setting* :answer
        *current-analysis-mode* :no-dm&p))

;; N.b. *do-strong-domain-modeling* will pre-empt doing
;; *do-domain-modeling-and-population* when we do the dispatch
;; in segment-finished

(defun top-edges-setting/ddm ()
  (turn-off-c3)
  (top-edges-setting)
  (standard-extras)
  ;; this setting can be called as a way to negate the effects
  ;; of other settings such as DM&P to get back to a state
  ;; where the sublanguage-based extraction is setup for. As a
  ;; result we have to set a lot more items than if we were
  ;; starting from scratch and hadn't already run any of the
  ;; more specific settings
  (setq *use-segment-edges-as-segment-defaults* nil)
  (ignore-unknown-words)
  (setq *make-edges-over-new-digit-sequences* t)
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops)
  (setq *segment-scan/forest-level-transition-protocol*
        :move-when-segment-can-never-extend-rightwards)
  (setq *do-debris-analysis* nil)
  (setq *do-domain-modeling-and-population* nil)
  (setq *new-dm&p* nil)
  (setq *do-strong-domain-modeling* nil)
  (setq *ignore-capitalization* nil)
  (setq *treat-single-Capitalized-words-as-names* nil)
  (setq *keep-number-sequence-raw* nil)
  (setq *speech* nil)
  (establish-pnf-routine :scan-classify-record)
  (setq *switch-setting* :top-edges/with-extras-and-negatives
        *current-analysis-mode* :no-dm&p))

(defun grok-setting ()
  "Similar to answer and fire, but with annotations and ..."
  (top-edges-setting/ddm)
  (setq *new-dm&p* t)
  (setq *do-strong-domain-modeling* t)
  (setq *do-unanalyzed-hyphenated-sequences* t)
  (use-unknown-words)
  (setq *treat-single-Capitalized-words-as-names* t)
  (setq *annotate-realizations* nil)
  (setq *do-conceptual-analysis* nil) ;; probably need finer resolution
  (setq *switch-setting* :fire)
  ;; that was the former fire-setting parts above here

  (setq *annotate-realizations* t)
  (include-comlex)
  (setq *do-strong-domain-modeling* t
        *new-segment-coverage* :trivial
        *reify-implicit-individuals* t
        *note-text-relations* t)
  (setq *new-segment-coverage* :full)
  (setq *profligate-creation-of-individuals* t)
  (setq *allow-pure-syntax-rules* t)
  (turn-off-interfering-rules :grok)
  (setq *switch-setting* :grok))

(defun tuned-grok ()
  "Simplifications to Grok while we work things out"
  (turn-off-c3)
  (grok-setting)
  (progn ;; these are temporary overrides while we debug bracketing
    (setq *annotate-realizations* nil)
    (setq *new-dm&p* nil)) ;; these two from (former) fire-setting
  (setq *break-on-new-bracket-situations* t)
  (setq *do-unanalyzed-hyphenated-sequences* nil) ;; would block "14-year-old" => age
  (setq *uniformly-scan-all-no-space-token-sequences* nil) ;; bad PNF interation
  (display-bracketing)
  (setq *switch-setting* :tuned-grok))

(defun strider-setting ()
  (declare (special *tts-after-each-section*))
  (turn-off-c3)
  (tuned-grok)
  (setq *do-debris-analysis* t)
  (setq *arabic-names* t)
  (setq *do-domain-modeling-and-population* t) ;; ignores null referents
  ;;   Need to adapt the segment-level switches and do this better
  (setq *allow-da-to-look-under-edges* nil)
  ;;   /// arc-matches-tt? needs to adjust the next tt
  (period-hook-on)
  (designate-sentence-container :simple)
  ;; misc. display settings
  (setq *tts-after-each-section* t)
  (setq *dbg-print* nil)
  (turn-off-debugging-flags)
  (setq *switch-setting* :strider))

(defun fire-setting ()
  ;; Now (10/21/13) the setting we get when we 
  (strider-setting)
  (setq *new-segment-coverage* :trivial)
  (setq *after-action-on-segments* 'sdm/analyze-segment)
  ;; Have to set after-action explicitly to be sure it takes
  ;;  when switching modes a lot. 
  (setq *switch-setting* :fire))

(defun bio-setting ()
  (turn-off-c3)
  (tuned-grok)
  (ignore-comlex)
  (period-hook-off)
  (setq *uniformly-scan-all-no-space-token-sequences* t)
   (setq *switch-setting* :biology))


;;--- C3, and now for something completely different
(defun c3-setting ()
  "Start by turning everthing off"
  (word-frequency-setting) ;; gets most of them
  (what-to-do-with-unknown-words :ignore) ;; though better to throw an error
  (setq *make-edges-for-unknown-words-from-their-properties* nil
        )
  (establish-kind-of-chart-processing-to-do :c3-protocol)
  (designate-sentence-container :situation)
  (setq *recognize-sections-within-articles* t) ;; otherwise no sentences
  (setq *c3* t) ;; already on if loaded as c3, this is for changing
  (setq *switch-setting* :c3))

(defun turn-off-c3 ()
  (when (or (eq *switch-setting* :c3)
            *c3*)
    (setq *c3* nil) ;; turn off the flag
    (designate-sentence-container :simple))) ;; only other option



;;--- Measuring word frequencies

(defun word-frequency-setting ()
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
        *after-action-on-segments* 'normal-segment-finished-options)
  (period-hook-off)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (establish-kind-of-chart-processing-to-do :just-do-terminals)
  (establish-version-of-look-at-terminal :record-word-frequency)
  (establish-version-of-complete :ca/ha)
  (setq *count-input-lines* nil)
  (establish-word-frequency-classification
   ;; :standard 'standard-wf-classification)
   :ignore-capitalization 'wf-classification/ignore-caps)
  (setq *switch-setting* :word-frequency))

(defun just-bracketing-setting ()
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
  (setq *annotate-realizations* nil)
  (setq  *the-category-of-digit-sequences* category::number)
  (use-return-newline-tokens-fsa) ;; it's returned as a regular whitespace char.
  (establish-kind-of-chart-processing-to-do :new-toplevel-protocol)
  (use-unknown-words)
  (setq *switch-setting* :just-bracketing))

(defun just-bracketing-with-comlex-setting ()
  (just-bracketing-setting)
  (comlex-mode)
  (setq *switch-setting* :just-bracketing-with-comlex))



;;--- Older, unused switch sets, no reason to assume they're consistent

(defun ambush-setting ()
  (fire-setting)
  (setq *keep-number-sequence-raw* t)
  (setq *speech* t)
  (setq *switch-setting* :ambush))

(defun checkpoint-ops-setting ()
  (top-edges-setting)
  ;; maybe (setq *do-forest-level* nil) 
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops) ;; otherwise
  (setq *annotate-realizations* nil)
  ;;(setq *keep-number-sequence-raw* t) ??
  (setq *speech* t)
  (setq *switch-setting* :checkpoint-ops))

(defun poirot-interface-setting ()
  (top-edges-setting)
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops)
  (setq *annotate-realizations* nil)
  (setq *speech* nil)
;  (establish-pnf-routine :scan-classify-record) ;; for real names
  ;; There are capitalized letter sequences such as "MOB"
  (establish-pnf-routine :scan/ignore-boundaries)
  (setq *switch-setting* :poirot-interface
        *current-analysis-mode* :no-dm&p))

(defun debris-analysis-setting ()
  (top-edges-setting)
  (standard-extras)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
  (setq *make-edges-for-unknown-words-from-their-suffixes* t)
  (setq *use-segment-edges-as-segment-defaults* t)
  (setq *forest-level-protocol* 'DA-forest-level)
  (setq *do-debris-analysis* t)
  (setq *switch-setting* :debris-analysis))


(defun dm&p-setting ()
  (debris-analysis-setting)
  (use-unknown-words)
  (setq *forest-level-protocol* 'dm&p-forest-level)
  (setq *dm&p-forest-protocol* 'parse-forest-and-do-treetops)
  (setq *segment-scan/forest-level-transition-protocol*
        :move-only-at-significant-boundary)
  (setq *do-domain-modeling-and-population* t)
  (setq *ignore-capitalization* nil)
  (establish-pnf-routine :scan/ignore-boundaries)
  (setq *cap-seq-edge-data-routine* 'dm&p-cap-seq-data)
  (setq *switch-setting* :dm&p
        *current-analysis-mode* :dm&p))


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
  (all-edges-setting)
  (standard-bbn-settings)
  (setq *switch-setting* :all-edges/bbn
        *current-analysis-mode* :no-dm&p))

(defun segmenter-settings/bbn ()
  (top-edges-setting)
  (standard-bbn-settings)
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
