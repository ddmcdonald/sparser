;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Grok"
;;;   Module:  "init;workspaces:"
;;;  version:  March 2012

;; Initiated 10/30/12 to take over from the Fire workspace. Tweeked through
;; 3/9/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

;; Too many duplicated rules. Open objects/rules/cfr/duplicates and set the
;; break flag to t. Improve the trap to look up the file that holds the
;; older version of the rule.  
;;  Do it in the file to catch them during the load, or here while developing
; (setq *break-on-illegal-duplicate-rules* t)

#|
-- For searching with grep.
cd sparser/Sparser/code/s/
grep XX **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
|#


(in-package :sparser)

;;;------------------------------------
;;; setting control/display parameters
;;;------------------------------------

(setq *annotate-realizations* nil) ;; Will be t, but not ready yet

;;-- Default display setup. Interleave the segment markers with
;; the running text.
(setq *display-word-stream* nil)
(setq *readout-segments-inline-with-text* t)
(setq *record-bracketing-progress* t)

;;-- For Comlex shakeout
(trace-lexicon-unpacking)
;; (just-bracketing-setting) -- largely supplanted by Grok since we want some rules
;; (grok-setting)  -- for meta-.

;; (setq  *forest-level-protocol* 'parse-forest-and-do-treetops/referents-too)
;; (setq  *forest-level-protocol* 'parse-forest-and-do-treetops)

;;--- Alternative post-parsing segment handlers
;  (do-normal-segment-finished-options)  ;; built-in default
;  (do-strong-domain-modeling)
;  (do-reify-implicit-individuals-in-segment)
;  (do-note-text-relations-in-segment)

; (setq *break-on-new-name-converter-cases* t) 

;; (setq *new-segment-coverage* t)   ;; to debug strong-domain-modeling, add cases

;;----- Flags that we want on if we're momentarily by-passing some hard cases

(defun ddm-setup () ;; 2/13/13 for finding odd bugs. New things turned off
  (setq *annotate-realizations* nil)
  (setq *break-on-new-bracket-situations* t)
  (setq *do-unanalyzed-hyphenated-sequences* nil) ;; would block "14-year-old" => age
  (setq *uniformly-scan-all-no-space-token-sequences* nil)
;;  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops/referents-too)
  (setq *new-segment-coverage* :none) ;; defange sdm/analyze-segment
  (setq *do-strong-domain-modeling* nil) ;; completely turn it off
;;  (do-note-text-relations-in-segment)
;;  (setq *note-text-relations* t)
  )

;; N.b. will hang on "N." if UN isn't predefined
(defun grok-pass-one ()
  "Just pull in the vocabulary all at once"
  ;;(setq  *forest-level-protocol* 'parse-forest-and-do-treetops)
  ;; No supra-segment parsing for this pass
  (setq *do-forest-level* nil)
  (setq *new-segment-coverage* :none)
  (setq *do-heuristic-segment-analysis* nil)
  (do-normal-segment-finished-options)
  (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu))

(defun grok-pass-two ()
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops)
  ;;  (setq *do-forest-level* t)
  (setq *allow-pure-syntax-rules* nil)
  (setq *new-segment-coverage* :none)
  (setq *do-heuristic-segment-analysis* t)
  (setq *note-text-relations* t)
  (do-note-text-relations-in-segment)
  (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu)
  (collect-relations-from-articles)
  ;; analysis and reification goes here. See the merged contents on (doc-set)
  ;; and other code in that file
  )

;; (setq *tts-after-each-section* t)

(defun grok-pass-three-setup ()
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops) ;; semantic rules burned in
  (setq *do-forest-level* t)
  (setq *allow-pure-syntax-rules* t)
  (setq *new-segment-coverage* :trivial)
  (setq *do-heuristic-segment-analysis* t)
  (setq *note-text-relations* nil) ;; don't overwrite the merged contents on (doc-set)
  ;; The relations noted on this pass will be straight off bindings
  (do-note-text-relations-in-segment)
  (do-strong-domain-modeling)
  (setq *profligate-creation-of-individuals* t)
  (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu)
  ;;  -- 1st look at some reification
  )



(defun syn-test (&optional (text *iraqi-girl*))
  (setq *forest-level-protocol* 'parse-forest-and-do-treetops)
  (setq *do-forest-level* t)
  (setq *allow-pure-syntax-rules* t)
  (setq *new-segment-coverage* :trivial) ;; which version of strong DM
  (setq *do-heuristic-segment-analysis* t) ;; one at a time won't hurt what's in (doc-set)
  ;; ?? (setq *note-text-relations* nil)
  (do-strong-domain-modeling)
  (setq *profligate-creation-of-individuals* t)
  (p text))


;; If nil, this flag turns off all the errors about new cases for bracketsing and
;; has them return plausible defaults. Useful if looking for weirder errors.
;;   (setq *break-on-new-bracket-situations* nil)

(setq *verbose-document-stream* t)

;;;------------------------------------------------------------
;;; Work arounds -- problems that ultimately need dealing with
;;;------------------------------------------------------------

;; "die" comes in from Comlex as noun/verb ambiguous and that just confuses
;; things too much right now (3/6/13), so I'm going to cheat
(gload "disease;loader")

;;   (setq *uniformly-scan-all-no-space-token-sequences* t)
;; That is causing problems right now (2/11/13), so committing a horrible thing instead
(reify-spelled-name 
 (list (word-named "H") (word-named "5") (word-named "N") (word-named "1")))

;;/// 3/22/13 this drops "U.N." on the floor -- and the form is ugly
;;  see core/company/object1.lisp
;;  Today (4/10) this blew up because of hitting new spot in add-permanent-individual
;;   and it needs debugging
;(define-with-all-instances-permanent
;  (define-company '("United" "Nations") :aliases '(("U.N.")) :takes-the t))

;; Comlex doesn't have "burnt"
(setup-verb (resolve/make "burnt") nil)


;;;------------------
;;; testing routines
;;;------------------

;;  (tb-segmentation-tester "/Users/ddm/sift/nlp/Grok/corpus/treebank/500s.txt")
;;  or 50s, 20000s
;;  (treebank-smoke-test "/Users/ddm/sift/nlp/Grok/corpus/treebank-sentence-strings.txt")

;;--------- Cases for debugging segmentation, bracket calculations

;; (p "Boeing Co. said the U.S. government has suspended the sale")
;; (f "/Users/ddm/Sparser/Sparser/code/s/drivers/timing/Bankruptcy/Eastern/just-body.lisp")

;; (p *iraqi-girl*)
;; (p "in Iraq. H5N1 has killed at least 91 people,")

;; (grok-pass-three-setup)
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/1 Aljazeera_Jan-18.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/2 ABCNews_Jan-30.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/3 Yahoo-India_Jan-30.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/4 bbc_Jan-31.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/5 bbc_Feb-3.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/6 Newsfactor_Feb-16.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/7 bbc_March-3.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/8 bbc_March-24.txt")

;; (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu) 

;; These are in dm&p in the workspaces file under init. They're stray medium size
;; articles lifted from the news
;; (fire)
;; (medtronic)

;; (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")
;;   N.b. hard pathname. Need soft one. Perhaps via asdf, certainly via a pointer
;;    off load-truename

;; (p "in the region and the World Health Organisation (WHO) will send a team of experts there on Wednesday")
;;   will get to establish-referent-of-pn and we make a named-object
;;
;; (p "the World Health Organization (WHO)")
;;  This article has all the pieces:
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/4 bbc_Jan-31.txt")


#|
 (mumble::say i)
 mumble::has-realization?
 (setq *try-without-annotation* t)
 mumble::realize
 mumble::convert-to-derivation-tree

 mumble::realize-dtn
 mumble::general-np-bundle-driver
|#


;;;--------
;;; Traces
;;;--------

;; *trace-set-status*

(defun trace-segmentation ()
  (trace-brackets)
  (trace-segment-completion)
  (trace-segments)
  (trace-network)
  (trace-network-flow)
  (trace-status-history))

;; (trace-forest-edges) ;; like trace-edges but over treetops

;; (trace-pnf)  ;; when proper names / capitalized sequences are implicated

;; (no-Sparser-traces)  ;; turn the traces off

;; (brackets-on <string for a word>)  ;; usually always lowercase
;; (brackets-on <number of a position>)


;; (trace-fsas)
;; (trace-jfp-sections)

;; ;; objects/traces/psp1
;; (trace-network) ;; for low-level scan
;; (trace-network-flow) ;; lower, e.g. bracket introduction and changes
;; (trace-brackets)

;; (trace-pnf)
;; (trace-segments)
;; (trace-treetops)
;; (trace-sdm&p)
;; (trace-ns-sequences)
;; (trace-edges) ;; = *parse-edges* + (trace-edge-creation) + (trace-edge-check)
;; (trace-treetops)
;; (trace-scan-patterns)

;; (trace-conjunction)
;; (trace-parentheses)

;; (trace-psi)
;; (trace-psi-construction)
;; (trace-referent-creation)
;; (trace-bind-open-var)



;; (no-traces)
(defun no-traces ()
  (untrace-fsas)
  (untrace-pnf)
  ;(untrace-jfp-sections)
  (untrace-network)
  (untrace-network-flow)
  (untrace-status-history)
  (untrace-brackets)
  (untrace-segments)
  (untrace-segment-completion)
  (untrace-treetops)
  (untrace-edges)
  (untrace-edge-multiplication)
  (untrace-treetops)
  (unTrace-forest-edges)
  (untrace-scan-patterns)
  (untrace-sdm&p)
  (untrace-ns-sequences)
  (untrace-conjunction)
  (untrace-parentheses)
  (untrace-psi)
  (untrace-psi-construction)
  (untrace-referent-creation)
  (untrace-bind-open-var)
  (setq *readout-segments* nil)
  (setq *trace-edge-creation* nil)
  (setq *trace-paired-punctuation* nil)
  (setq *trace-completion-hook* nil))


;;; for meta-.

;; pronoun reference:  seek-person-for-pronoun

;; analysis-core
;; terminate-section  => section objects
;; scan-next-segment  ==> inner loop of controller

;; Tokenizer level:   scan-next-position  add-terminal-to-chart  next-terminal 
;;  next-token (= run-token-fsa )


;; treetops: move-to-forest-level (protocol dispatch)
;;   parse-forest-and-do-treetops (standard protocol)
;;   When it wants to punt with nothing to do:  consider-debris-analysis
;;   driver: PPTT
;;   first call (recursive?) try-parsing-tt in drivers/chart/psp/march-forest
;; do-treetop -> do-conceptual-analysis-off-new-treetop 
;;               do-generic-actions-off-treetop
;; do-treetop-triggers is inside consider-debris-analysis 
;;    and called if *do-debris-analysis* is nil 

;; For age if it proves problematic
;;  On the definition of person in model/core/people/object.lisp - make/person-with-name 
;;    ad-hoc in file that isn't loaded: core/people/people+age  -- has cs rules
;;    and in core/time/age1.lisp  - category age interpret-number-as-years-of-age

;; edge-vector

#|
  initialize-discourse-history  
  define-city  -- dossiers/cities

relationship-to-country (doesn't work on "Iraqi girl" for some reason
 in people/names-to-people
    or  Kurdish city

  named-object  ;; clos classes

  prime-word-from-comlex
 
time:  relative-time

  comparative  ;; "bigger"
  die  girl
  define-function-term  

  traces:  trace-edges

  infering-categories: bind-open-var

  reclaimation issues:  declare-all-existing-individuals-permanent

 scan-pattern-starting-pair
 check-many-many

 names:  examine-capitalized-sequence
    link-named-object-to-name-word
    cap-seq-continues-from-here?
  trace-pnf

document-set

Heuristics:  determiner-completion-heuristic

free variable bindings:
  mark-instance-indefinite  (definite indefinite)

In progress:  
  assimilate-appositive  -- for add-subject-relation

text relations:  
  make-text-relation-instance

  collect-relations-from-articles (needs sort, thresholds, calls to realize)

|#

;; loading  load-the-grammar  categorize-and-form-name










