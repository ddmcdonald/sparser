;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Grok"
;;;   Module:  "init;workspaces:"
;;;  version:  March 2012

;; Initiated 10/30/12 to take over from the Fire workspace. Tweeked through
;; 3/9/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

;;  (tuned-grok)


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

;;--- For feeding into grak-pass-one, etc, which are now in
;;  analyzers/SDM&P/document-handling.lisp and take document-streams as input

(setq cl-user::location-of-text-corpora
 "Users:ddm:sift:nlp:corpus:")
;; Note the pathname is given in ancient Mac syntax. 

(def-logical-pathname "corpus;" cl-user::location-of-text-corpora)
(def-logical-pathname "bird-flu;" "corpus;bird-flu:")
(def-logical-pathname "bird-flu-2009;" "bird-flu;iraq-2006:")

(defvar bird-flu
  (define-document-stream '|Bird flu in Iraq 2006|
    :style-name 'hand-typed/no-headers ;; accurate actually!
    :directory "bird-flu-2009;"
    :unified t))
#|
 (grok-pass-one bird-flu)
 (grok-pass-two bird-flu)
 (grok-pass-three bird-flu)
|#
  
;; "die" comes in from Comlex as noun/verb ambiguous and that just confuses
;; things too much right now (3/6/13), so I'm going to cheat
(gload "disease;loader")





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
;; (word-frequency-setting)
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


;; (setq *tts-after-each-section* t)





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

;; abbrev:  ier 
;;  tts  print-treetops

;; pronoun reference:  seek-person-for-pronoun dereference-proper-noun

;; analysis-core    pts   analysis-core-return-value
;; terminate-section  => section objects
;; scan-next-segment  ==> inner loop of controller
;; do-the-last-things-in-an-analysis

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
;;  right-treetop-at  march-back-from-the-right/forest
;;  word-before

;; execute-da-trie

;; For age if it proves problematic
;;  On the definition of person in model/core/people/object.lisp - make/person-with-name 
;;    ad-hoc in file that isn't loaded: core/people/people+age  -- has cs rules
;;    and in core/time/age1.lisp  - category age interpret-number-as-years-of-age

;; edge-vector

#|

Collection/WHO problem:  collection  create-collection  string/sequence
   acronym-is-alternative-for-name

  initialize-discourse-history  
  define-city  -- dossiers/cities

relationship-to-country (doesn't work on "Iraqi girl" for some reason
 in people/names-to-people
    or  Kurdish city
 give-kind-its-name

hyphens and PNF -- trace-ns-sequences  hyphen-ca-hook
  collect-no-space-sequence-into-word

  named-object  ;; clos classes

  prime-word-from-comlex
 
time:  relative-time

  comparative  ;; "bigger"
  die  girl
  define-function-term  

  traces:  trace-edges

  infering-categories: bind-open-var

  reclaimation issues:  declare-all-existing-individuals-permanent
     index/permanent-individual

 scan-pattern-starting-pair
 check-many-many

 names:  examine-capitalized-sequence
    link-named-object-to-name-word
    cap-seq-continues-from-here?
  trace-pnf

document-set  do-document-as-stream-of-files

Heuristics:  determiner-completion-heuristic

free variable bindings:
  mark-instance-indefinite  (definite indefinite)

In progress:  
  assimilate-appositive  -- for add-subject-relation
  have

text relations:   trace-sdm&p
  make-text-relation-instance  text-relation  def-text-relation
  The cases are in grammar;rules:SDM&P:text-relations.lisp
  sdm/analyze-segment
  note-text-relations-in-segment  note-what-the-head-is
  collect-relations-from-articles (needs sort, thresholds, calls to realize)
  edge-over-segment  text-relation-contents
  reify-text-relation
  bind-category-of-instance

  binding-hook: bind-variable/expr when-binding-hook  with-bindings

  allow-invisible-markup  setup-context-for-this-run

schema on form rules:  def-form-rule/expr

Mumble:  parameter-arg-list-from-dtn

|#

;; loading  load-the-grammar  categorize-and-form-name  the-Master-loader










