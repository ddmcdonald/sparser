;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "reference-points"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/9/14 as a place to collect the names of functions
;; for use by meta-. 

(in-package :sparser)

#|
loading:  load-the-grammar  the-Master-loader

;;--- New schemes motivated by R3

initiate-successive-sweeps  scan-terminals-loop

collect-no-space-sequence-into-word  nospace-hyphen-specialist

initiate-R3-entity-pass


;;--- Older, no particular order

The main line:  
  analysis-core  inititate-top-edges-protocol  pts  PPTT


tts  print-treetops  right-treetop-at/edge

pronoun reference:  seek-person-for-pronoun dereference-proper-noun

Document structure: chart-region  document-region
  has-parent  has-children 
  ordered  indexed
  has-content-model
     
analysis-core-return-value
terminate-section  => section objects
scan-next-segment  ==> inner loop of controller
do-the-last-things-in-an-analysis

Segment level operations:  reify-implicit-individuals-in-segment
  sdm/analyze-segment  just-cover-segment  edge-over-segment

Tokenizer level:   scan-next-position  add-terminal-to-chart  next-terminal 
   next-token (= run-token-fsa )


Treetops: move-to-forest-level (protocol dispatch)
   parse-forest-and-do-treetops (standard protocol)
   When it wants to punt with nothing to do:  consider-debris-analysis
   driver: PPTT
   first call (recursive?) try-parsing-tt in drivers/chart/psp/march-forest
 do-treetop -> do-conceptual-analysis-off-new-treetop 
               do-generic-actions-off-treetop
 do-treetop-triggers is inside consider-debris-analysis 
    and called if *do-debris-analysis* is nil 
  right-treetop-at  march-back-from-the-right/forest
  word-before

execute-da-trie

For age if it proves problematic
  On the definition of person in model/core/people/object.lisp - make/person-with-name 
    ad-hoc in file that isn't loaded: core/people/people+age  -- has cs rules
    and in core/time/age1.lisp  - category age interpret-number-as-years-of-age


Fixing segmentation:  brackets-on  adjudicate-new-open-bracket
  bracket-ends-the-segment?


Collection/WHO problem:  collection  create-collection  string/sequence
   acronym-is-alternative-for-name

  initialize-discourse-history  
  define-city  -- dossiers/cities

relationship-to-country 
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
